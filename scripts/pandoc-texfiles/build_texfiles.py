#!/usr/bin/env python3
"""Build LaTeX fragments from Markdown files using a small YAML mapping."""

from __future__ import annotations

import argparse
import re
import shlex
import subprocess
import tempfile
from pathlib import Path

try:
    import yaml
except ImportError:  # pragma: no cover - dependency failure path
    yaml = None


SCRIPT_DIR = Path(__file__).resolve().parent
DEFAULT_TEMPLATE = SCRIPT_DIR / "fragment.tex"
THIS_SCRIPT = Path(__file__).resolve()
HEADING_COMMANDS = ("section", "subsection", "subsubsection")


def load_config(path: Path) -> dict:
    if yaml is None:
        raise SystemExit("PyYAML is required to read pandoc-texfiles.yaml")
    with path.open("r", encoding="utf-8") as handle:
        data = yaml.safe_load(handle)
    if not isinstance(data, dict):
        raise SystemExit(f"{path} must contain a YAML mapping")
    return data


def require_string(mapping: dict, key: str, context: str) -> str:
    value = mapping.get(key)
    if not isinstance(value, str) or not value:
        raise SystemExit(f"{context} requires a non-empty '{key}' string")
    return value


def newest_mtime(paths: list[Path]) -> float:
    return max(path.stat().st_mtime for path in paths)


def needs_rebuild(target: Path, dependencies: list[Path], force: bool) -> bool:
    if force or not target.exists():
        return True
    return target.stat().st_mtime < newest_mtime(dependencies)


def require_mapping(value: object, context: str) -> dict:
    if not isinstance(value, dict):
        raise SystemExit(f"{context} must be a mapping")
    return value


def as_bool(mapping: dict, key: str) -> bool:
    value = mapping.get(key, False)
    if not isinstance(value, bool):
        raise SystemExit(f"postprocess.{key} must be true or false")
    return value


def brace_group_end(text: str, open_index: int) -> int:
    if open_index >= len(text) or text[open_index] != "{":
        raise ValueError("expected opening brace")
    depth = 0
    escaped = False
    for index in range(open_index, len(text)):
        char = text[index]
        if escaped:
            escaped = False
            continue
        if char == "\\":
            escaped = True
            continue
        if char == "{":
            depth += 1
        elif char == "}":
            depth -= 1
            if depth == 0:
                return index
    raise ValueError("unterminated brace group")


def split_heading(line: str) -> tuple[str, str, str, str] | None:
    stripped = line.lstrip()
    indent = line[: len(line) - len(stripped)]
    for command in HEADING_COMMANDS:
        prefix = f"\\{command}"
        if not stripped.startswith(prefix + "{"):
            continue
        group_start = len(prefix)
        try:
            group_end = brace_group_end(stripped, group_start)
        except ValueError:
            return None
        title = stripped[group_start + 1 : group_end]
        rest = stripped[group_end + 1 :]
        return indent, command, title, rest
    return None


def extract_label(rest: str) -> tuple[str | None, str]:
    if not rest.startswith(r"\label{"):
        return None, rest
    try:
        group_end = brace_group_end(rest, len(r"\label"))
    except ValueError:
        return None, rest
    return rest[len(r"\label{") : group_end], rest[group_end + 1 :]


def texorpdfstring_title(title: str) -> str:
    prefix = r"\texorpdfstring"
    if not title.startswith(prefix + "{"):
        return title
    try:
        first_end = brace_group_end(title, len(prefix))
    except ValueError:
        return title
    return title[len(prefix) + 1 : first_end]


def convert_inline_math(text: str) -> str:
    return re.sub(r"\\\(([^\n]+?)\\\)", r"$\1$", text)


def strip_heading_prefix(title: str, postprocess: dict) -> str:
    result = title
    if as_bool(postprocess, "strip_appendix_prefix"):
        result = re.sub(r"^Appendix\s+[A-Z]:\s+", "", result)
        result = re.sub(r"^[A-Z]\.\d+(?:\.\d+)*\s+", "", result)
    if as_bool(postprocess, "strip_heading_numbers"):
        result = re.sub(r"^\d+(?:\.\d+)*\.?\s+", "", result)
    return result


def postprocess_headings(text: str, postprocess: dict) -> str:
    heading_labels = postprocess.get("heading_labels", {})
    if heading_labels:
        heading_labels = require_mapping(heading_labels, "postprocess.heading_labels")
    heading_pdf_strings = postprocess.get("heading_pdf_strings", {})
    if heading_pdf_strings:
        heading_pdf_strings = require_mapping(heading_pdf_strings, "postprocess.heading_pdf_strings")

    lines: list[str] = []
    for line in text.splitlines():
        parsed = split_heading(line)
        if parsed is None:
            lines.append(line)
            continue

        indent, command, raw_title, rest = parsed
        old_label, tail = extract_label(rest)
        tex_title = convert_inline_math(texorpdfstring_title(raw_title))
        stripped_title = strip_heading_prefix(tex_title, postprocess)
        label = (
            heading_labels.get(tex_title)
            or heading_labels.get(raw_title)
            or heading_labels.get(stripped_title)
            or old_label
        )
        pdf_title = (
            heading_pdf_strings.get(stripped_title)
            or heading_pdf_strings.get(tex_title)
            or heading_pdf_strings.get(raw_title)
        )
        title_part = (
            f"\\texorpdfstring{{{stripped_title}}}{{{pdf_title}}}"
            if pdf_title
            else stripped_title
        )
        label_part = f"\\label{{{label}}}" if label else ""
        lines.append(f"{indent}\\{command}{{{title_part}}}{label_part}{tail}")
    return "\n".join(lines) + ("\n" if text.endswith("\n") else "")


def exact_replacements(text: str, postprocess: dict, key: str) -> str:
    replacements = postprocess.get(key, {})
    if not replacements:
        return text
    replacements = require_mapping(replacements, f"postprocess.{key}")
    checked: dict[str, str] = {}
    for source in sorted(replacements, key=len, reverse=True):
        target = replacements[source]
        if not isinstance(source, str) or not source or not isinstance(target, str):
            raise SystemExit(f"postprocess.{key} keys and values must be strings")
        checked[source] = target
    pattern = re.compile("|".join(re.escape(source) for source in checked))
    return pattern.sub(lambda match: checked[match.group(0)], text)


def convert_display_math(text: str, mode: str) -> str:
    if mode == "preserve":
        return text
    if mode != "align":
        raise SystemExit("postprocess.display_math must be 'preserve' or 'align'")

    lines = text.splitlines()
    output: list[str] = []
    index = 0
    while index < len(lines):
        line = lines[index]
        stripped = line.strip()
        one_line = re.fullmatch(r"\\\[(.*)\\\]", stripped)
        if one_line:
            output.extend([r"\begin{align}", one_line.group(1).strip(), r"\end{align}"])
            index += 1
            continue
        if stripped == r"\[":
            collected: list[str] = []
            index += 1
            while index < len(lines) and lines[index].strip() != r"\]":
                collected.append(lines[index])
                index += 1
            if index < len(lines) and lines[index].strip() == r"\]":
                output.append(r"\begin{align}")
                output.extend(collected)
                output.append(r"\end{align}")
                index += 1
                continue
            output.append(line)
            output.extend(collected)
            continue
        output.append(line)
        index += 1
    return "\n".join(output) + ("\n" if text.endswith("\n") else "")


def compact_blank_lines(text: str) -> str:
    return re.sub(r"\n{3,}", "\n\n", text)


def apply_postprocess(text: str, postprocess: dict) -> str:
    if not postprocess:
        return text
    postprocess = require_mapping(postprocess, "postprocess")
    result = postprocess_headings(text, postprocess)
    result = exact_replacements(result, postprocess, "reference_replacements")
    result = exact_replacements(result, postprocess, "text_replacements")
    inline_math = postprocess.get("inline_math", "preserve")
    if inline_math == "dollar":
        result = convert_inline_math(result)
    elif inline_math != "preserve":
        raise SystemExit("postprocess.inline_math must be 'preserve' or 'dollar'")
    result = convert_display_math(result, postprocess.get("display_math", "preserve"))
    if as_bool(postprocess, "compact_blank_lines"):
        result = compact_blank_lines(result)
    return result


def pandoc_command(
    pandoc: dict,
    source: Path,
    target: Path,
    template: Path,
) -> list[str]:
    executable = pandoc.get("executable", "pandoc")
    if not isinstance(executable, str) or not executable:
        raise SystemExit("pandoc.executable must be a non-empty string when set")

    command = [
        executable,
        f"--from={require_string(pandoc, 'from', 'pandoc')}",
        f"--to={require_string(pandoc, 'to', 'pandoc')}",
        f"--wrap={require_string(pandoc, 'wrap', 'pandoc')}",
        f"--template={template}",
        "--output",
        str(target),
        str(source),
    ]

    extra_args = pandoc.get("extra_args", [])
    if extra_args:
        if not isinstance(extra_args, list) or not all(isinstance(arg, str) for arg in extra_args):
            raise SystemExit("pandoc.extra_args must be a list of strings")
        command[1:1] = extra_args

    return command


def resolve_template(pandoc: dict, base_dir: Path) -> Path:
    configured = pandoc.get("template")
    if configured is None:
        return DEFAULT_TEMPLATE
    if not isinstance(configured, str) or not configured:
        raise SystemExit("pandoc.template must be a non-empty string when set")
    template = Path(configured)
    if not template.is_absolute():
        template = base_dir / template
    return template


def main() -> int:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--config", default="pandoc-texfiles.yaml", help="project mapping file")
    parser.add_argument("--dry-run", action="store_true", help="print pandoc commands without writing files")
    parser.add_argument("--force", action="store_true", help="rebuild every mapped fragment")
    args = parser.parse_args()

    config_path = Path(args.config).resolve()
    base_dir = config_path.parent
    config = load_config(config_path)

    pandoc = config.get("pandoc", {})
    if not isinstance(pandoc, dict):
        raise SystemExit("pandoc must be a mapping")
    template = resolve_template(pandoc, base_dir).resolve()
    if not template.exists():
        raise SystemExit(f"template not found: {template}")

    fragments = config.get("fragments")
    if not isinstance(fragments, list) or not fragments:
        raise SystemExit("fragments must be a non-empty list")

    commands_run = 0
    for index, fragment in enumerate(fragments, start=1):
        if not isinstance(fragment, dict):
            raise SystemExit(f"fragments[{index}] must be a mapping")
        source = base_dir / require_string(fragment, "source", f"fragments[{index}]")
        target = base_dir / require_string(fragment, "target", f"fragments[{index}]")
        if not source.exists():
            raise SystemExit(f"source not found: {source}")

        dependencies = [source, config_path, template, THIS_SCRIPT]
        command = pandoc_command(pandoc, source, target, template)
        if not needs_rebuild(target, dependencies, args.force):
            if args.dry_run:
                print(f"# up to date: {target.relative_to(base_dir)}")
            continue

        commands_run += 1
        if args.dry_run:
            print(shlex.join(command))
            continue

        postprocess = config.get("postprocess", {})
        target.parent.mkdir(parents=True, exist_ok=True)
        if postprocess:
            with tempfile.NamedTemporaryFile(
                "w",
                suffix=".tex",
                dir=target.parent,
                delete=False,
                encoding="utf-8",
            ) as handle:
                temp_path = Path(handle.name)
            temp_command = pandoc_command(pandoc, source, temp_path, template)
            try:
                subprocess.run(temp_command, check=True)
                converted = temp_path.read_text(encoding="utf-8")
                target.write_text(apply_postprocess(converted, postprocess), encoding="utf-8")
            finally:
                temp_path.unlink(missing_ok=True)
        else:
            subprocess.run(command, check=True)

    if not args.dry_run:
        print(f"pandoc-texfiles: {commands_run} fragment(s) rebuilt")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
