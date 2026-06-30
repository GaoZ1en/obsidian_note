#!/usr/bin/env python3
"""Create a portable ZIP archive of this Obsidian vault.

The default archive is meant for moving the vault to a machine without Git:
it includes text notes, source/configuration files, `.obsidian/`, and `.codex/`,
while leaving large binary assets and build/cache output out of the archive.
"""

from __future__ import annotations

import argparse
import json
import os
import sys
import zipfile
from collections import Counter
from dataclasses import dataclass
from datetime import datetime
from pathlib import Path, PurePosixPath


SCRIPT_PATH = Path(__file__).resolve()
DEFAULT_ARCHIVE_PREFIX = "Note-vault"

FORCED_DIRS = {
    ".codex",
    ".obsidian",
}

HARD_EXCLUDED_DIRS = {
    ".cache",
    ".git",
    ".mypy_cache",
    ".pytest_cache",
    ".ruff_cache",
    ".venv",
    "__pycache__",
    "node_modules",
}

TEXT_SUFFIXES = {
    ".bib",
    ".bash",
    ".cfg",
    ".cjs",
    ".conf",
    ".css",
    ".csv",
    ".env",
    ".fish",
    ".gitignore",
    ".gitattributes",
    ".html",
    ".ini",
    ".js",
    ".json",
    ".jsonc",
    ".latex",
    ".lock",
    ".lua",
    ".m",
    ".md",
    ".mjs",
    ".plist",
    ".py",
    ".sh",
    ".svg",
    ".tex",
    ".toml",
    ".ts",
    ".tsx",
    ".txt",
    ".wl",
    ".xml",
    ".yaml",
    ".yml",
    ".zsh",
}

TEXT_FILENAMES = {
    ".env",
    ".gitattributes",
    ".gitignore",
    "AGENTS",
    "CLAUDE",
    "LICENSE",
    "Makefile",
    "README",
}

BINARY_ASSET_SUFFIXES = {
    ".avif",
    ".bmp",
    ".dmg",
    ".doc",
    ".docx",
    ".gif",
    ".heic",
    ".jpeg",
    ".jpg",
    ".mov",
    ".mp3",
    ".mp4",
    ".nb",
    ".npz",
    ".numbers",
    ".pages",
    ".pdf",
    ".png",
    ".ppt",
    ".pptx",
    ".tar",
    ".tiff",
    ".webp",
    ".xls",
    ".xlsx",
    ".zip",
}

GENERATED_SUFFIXES = {
    ".aux",
    ".fdb_latexmk",
    ".fls",
    ".log",
    ".nav",
    ".out",
    ".pyc",
    ".snm",
    ".synctex.gz",
    ".toc",
}

GENERATED_FILENAMES = {
    "main.js",
    "main.js.map",
    "styles.css.map",
}

NOISE_FILENAMES = {
    ".DS_Store",
}

ATTACHMENT_DIRS = {
    "Attachments",
    "Literature Notes/articles",
}


@dataclass(frozen=True)
class EntryDecision:
    include: bool
    reason: str


def repo_root() -> Path:
    return SCRIPT_PATH.parent.parent.resolve()


def relative_posix(path: Path, root: Path) -> str:
    return path.relative_to(root).as_posix()


def path_parts(rel_path: str) -> tuple[str, ...]:
    return PurePosixPath(rel_path).parts


def has_generated_suffix(rel_path: str) -> bool:
    lower = rel_path.lower()
    return any(lower.endswith(suffix) for suffix in GENERATED_SUFFIXES)


def is_in_named_dir(rel_path: str, names: set[str]) -> bool:
    return any(part in names for part in path_parts(rel_path))


def is_in_attachment_dir(rel_path: str) -> bool:
    return any(rel_path == name or rel_path.startswith(f"{name}/") for name in ATTACHMENT_DIRS)


def is_in_forced_dir(rel_path: str) -> bool:
    return any(rel_path == name or rel_path.startswith(f"{name}/") for name in FORCED_DIRS)


def is_text_path(path: Path) -> bool:
    name = path.name
    suffixes = "".join(path.suffixes).lower()
    suffix = path.suffix.lower()
    if name in TEXT_FILENAMES or suffix in TEXT_SUFFIXES or suffixes in TEXT_SUFFIXES:
        return True
    if suffix:
        return False

    try:
        chunk = path.read_bytes()[:4096]
    except OSError:
        return False
    if b"\0" in chunk:
        return False
    try:
        chunk.decode("utf-8")
    except UnicodeDecodeError:
        return False
    return True


def decide_file(
    path: Path,
    root: Path,
    output_path: Path,
    include_binary_assets: bool,
    include_all: bool,
) -> EntryDecision:
    rel_path = relative_posix(path, root)
    name = path.name
    suffix = path.suffix.lower()

    if path.resolve() == output_path.resolve():
        return EntryDecision(False, "output archive")
    if is_in_named_dir(rel_path, HARD_EXCLUDED_DIRS):
        return EntryDecision(False, "hard-excluded directory")
    if name in NOISE_FILENAMES:
        return EntryDecision(False, "noise file")

    if is_in_forced_dir(rel_path):
        return EntryDecision(True, "forced config directory")

    if name in GENERATED_FILENAMES or has_generated_suffix(rel_path):
        return EntryDecision(False, "generated file")

    if include_all:
        return EntryDecision(True, "include-all")

    if include_binary_assets and (is_in_attachment_dir(rel_path) or suffix in BINARY_ASSET_SUFFIXES):
        return EntryDecision(True, "binary asset")

    if is_in_attachment_dir(rel_path):
        return EntryDecision(False, "attachment directory")
    if suffix in BINARY_ASSET_SUFFIXES:
        return EntryDecision(False, "binary asset")

    if is_text_path(path):
        return EntryDecision(True, "text/config file")
    return EntryDecision(False, "unknown binary or unsupported file")


def iter_files(root: Path) -> list[Path]:
    files: list[Path] = []
    for current_root, dirnames, filenames in os.walk(root):
        current = Path(current_root)
        rel_current = "." if current == root else relative_posix(current, root)

        kept_dirs = []
        for dirname in sorted(dirnames):
            rel_dir = dirname if rel_current == "." else f"{rel_current}/{dirname}"
            if is_in_named_dir(rel_dir, HARD_EXCLUDED_DIRS):
                continue
            kept_dirs.append(dirname)
        dirnames[:] = kept_dirs

        for filename in sorted(filenames):
            files.append(current / filename)
    return files


def default_output_path(root: Path) -> Path:
    stamp = datetime.now().strftime("%Y%m%d-%H%M%S")
    return root / f"{DEFAULT_ARCHIVE_PREFIX}-{stamp}.zip"


def archive_name(rel_path: str, archive_root: str) -> str:
    return f"{archive_root}/{rel_path}" if archive_root else rel_path


def write_manifest(
    archive: zipfile.ZipFile,
    archive_root: str,
    output_path: Path,
    included: list[tuple[Path, str]],
    skipped: Counter[str],
    root: Path,
) -> None:
    payload = {
        "created_at": datetime.now().astimezone().isoformat(),
        "vault_root": str(root),
        "archive": str(output_path),
        "included_files": len(included),
        "skipped_by_reason": dict(sorted(skipped.items())),
    }
    data = json.dumps(payload, indent=2, ensure_ascii=False) + "\n"
    archive.writestr(archive_name("MIGRATION_MANIFEST.json", archive_root), data)


def build_archive(
    root: Path,
    output_path: Path,
    archive_root: str,
    include_binary_assets: bool,
    include_all: bool,
    dry_run: bool,
    verbose: bool,
) -> int:
    output_path = output_path.expanduser()
    if not output_path.is_absolute():
        output_path = (root / output_path).resolve()

    included: list[tuple[Path, str]] = []
    skipped: Counter[str] = Counter()

    for path in iter_files(root):
        decision = decide_file(path, root, output_path, include_binary_assets, include_all)
        if decision.include:
            included.append((path, decision.reason))
        else:
            skipped[decision.reason] += 1

    if verbose:
        for path, reason in included:
            print(f"include [{reason}]: {relative_posix(path, root)}")
        for reason, count in sorted(skipped.items()):
            print(f"skip [{reason}]: {count}", file=sys.stderr)

    if dry_run:
        print(f"Dry run: would write {len(included)} files to {output_path}")
        if skipped:
            print("Would skip:")
            for reason, count in sorted(skipped.items()):
                print(f"- {reason}: {count}")
        return 0

    output_path.parent.mkdir(parents=True, exist_ok=True)
    with zipfile.ZipFile(output_path, "w", compression=zipfile.ZIP_DEFLATED) as archive:
        for path, _reason in included:
            rel_path = relative_posix(path, root)
            archive.write(path, archive_name(rel_path, archive_root))
        write_manifest(archive, archive_root, output_path, included, skipped, root)

    size_mb = output_path.stat().st_size / (1024 * 1024)
    print(f"Wrote {output_path}")
    print(f"Included files: {len(included)}")
    print(f"Archive size: {size_mb:.2f} MiB")
    if skipped:
        print("Skipped:")
        for reason, count in sorted(skipped.items()):
            print(f"- {reason}: {count}")
    return 0


def build_parser() -> argparse.ArgumentParser:
    parser = argparse.ArgumentParser(
        description="Package the Note vault into a portable ZIP archive."
    )
    parser.add_argument(
        "--output",
        type=Path,
        help="archive path; default: Note-vault-YYYYMMDD-HHMMSS.zip in the vault root",
    )
    parser.add_argument(
        "--archive-root",
        default="Note",
        help="top-level folder inside the ZIP; use an empty string to store files at ZIP root",
    )
    parser.add_argument(
        "--include-binary-assets",
        action="store_true",
        help="include attachments and common binary asset files such as PDFs and images",
    )
    parser.add_argument(
        "--include-all",
        action="store_true",
        help="include every file except hard-excluded directories and generated files",
    )
    parser.add_argument(
        "--dry-run",
        action="store_true",
        help="show what would be packaged without writing an archive",
    )
    parser.add_argument(
        "--verbose",
        action="store_true",
        help="print every included path",
    )
    return parser


def main(argv: list[str] | None = None) -> int:
    args = build_parser().parse_args(argv)
    root = repo_root()
    output_path = args.output or default_output_path(root)
    if args.include_all and args.include_binary_assets:
        print("warning: --include-all already includes binary assets", file=sys.stderr)
    return build_archive(
        root=root,
        output_path=output_path,
        archive_root=args.archive_root.strip("/"),
        include_binary_assets=args.include_binary_assets,
        include_all=args.include_all,
        dry_run=args.dry_run,
        verbose=args.verbose,
    )


if __name__ == "__main__":
    raise SystemExit(main())
