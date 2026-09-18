#!/usr/bin/env python3
"""Update only the two generated reading copies from their revised source notes.

Default is a dry run. Requires a Git checkout containing --base; no network,
no manifests/archives/history rewrites. Validates the changed source blocks;
it does not certify unchanged material elsewhere in the reading copies.
"""
from __future__ import annotations
import argparse
import posixpath
import re
import subprocess
from pathlib import Path
from urllib.parse import urlsplit, urlunsplit

BASE = '6940ab5243b7d8f74bcfc2f2cf0138eeed50b240'
ROOT_PATH = Path('Articles/Quantization in AdS/gluing')
PACKAGES = {'finite_cut_sewing':'COMPLETE_NOTE.md',
            'principal_bundle_sewing_v2':'COMPLETE_NOTES.md'}


def reading_copy_links(text: str, source: str, target: str) -> str:
    """Rebase the inline Markdown links used by these notes, including images."""
    pattern = re.compile(r'(!?\[[^\]\n]*\]\()(<[^>\n]+>|[^\s()]+)((?:\s+"[^"\n]*")?\))')

    def replace(match: re.Match[str]) -> str:
        destination = match[2]
        bracketed = destination.startswith('<')
        url = destination[1:-1] if bracketed else destination
        parts = urlsplit(url)
        if parts.scheme or parts.netloc or not parts.path or parts.path.startswith('/'):
            return match[0]
        resolved = posixpath.normpath(posixpath.join(posixpath.dirname(source), parts.path))
        relative = posixpath.relpath(resolved, posixpath.dirname(target))
        rebased = urlunsplit(('', '', relative, parts.query, parts.fragment))
        if bracketed:
            rebased = f'<{rebased}>'
        return match[1] + rebased + match[3]

    return pattern.sub(replace, text)


def sync_text(snapshot: str, changes: list[tuple[str, str, str]]) -> tuple[str, int]:
    result, count = snapshot, 0
    for name, old, new in changes:
        old, new = old.strip(), new.strip()
        if old == new:
            continue
        # An append-only update contains the old block. Do not append it again.
        if (result.count(new) == 1
                and (result.count(old) == 0 or old in new)
                and old not in result.replace(new, '', 1)):
            continue
        if result.count(old) != 1:
            raise ValueError(f'{name}: expected one exact old source block, found {result.count(old)}')
        # A shorter new block may occur inside old; that is a legitimate deletion.
        # An additional new block outside old is an ambiguous duplicate snapshot.
        if new in result.replace(old, '', 1):
            raise ValueError(f'{name}: both old and new source blocks occur')
        result = result.replace(old, new, 1)
        count += 1
    return result, count


def plan_package(root: Path, package: str, base: str) -> tuple[Path, str, int]:
    folder = ROOT_PATH/package
    target_relative = folder/PACKAGES[package]
    target = root/target_relative
    original = target.read_text(encoding='utf-8')
    changes = []
    notes = sorted((root/folder/'notes').glob('[0-9][0-9]_*.md'))
    if not notes:
        raise ValueError(f'No source notes in {folder}')
    for note in notes:
        relative = note.relative_to(root).as_posix()
        old = subprocess.check_output(['git','show',f'{base}:{relative}'], cwd=root).decode('utf-8')
        new = note.read_text(encoding='utf-8')
        if old.strip() == new.strip():
            continue
        old_rebased = reading_copy_links(old, relative, target_relative.as_posix())
        if old.strip() not in original and old_rebased.strip() in original:
            old = old_rebased
        new = reading_copy_links(new, relative, target_relative.as_posix())
        changes.append((relative, old, new))
    updated, count = sync_text(original, changes)
    return target, updated, count


def main() -> None:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--base', default=BASE)
    parser.add_argument('--package', choices=sorted(PACKAGES), action='append')
    parser.add_argument('--write', action='store_true')
    args = parser.parse_args()
    root = Path(subprocess.check_output(['git','rev-parse','--show-toplevel'], text=True).strip())
    plans = [plan_package(root, package, args.base) for package in args.package or PACKAGES]
    # Validate every selected package before writing either one.
    for target, updated, count in plans:
        if args.write and count:
            target.write_text(updated, encoding='utf-8')
        print(f'{"updated" if args.write else "would update"}: {target.relative_to(root)}: {count} blocks')


if __name__ == '__main__':
    main()
