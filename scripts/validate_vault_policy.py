#!/usr/bin/env python3
"""Read-only consistency checks for Note-vault skills, AGENTS files, and indexes."""

from __future__ import annotations

import re
import sys
from pathlib import Path

try:
    import yaml
except ImportError:  # Keep the audit usable in dependency-free Python installs.
    yaml = None


VAULT = Path(__file__).resolve().parents[1]
ROOT_AGENTS = VAULT / "AGENTS.md"
LOCAL_SKILLS = VAULT / ".codex" / "skills"
GLOBAL_SKILLS = Path.home() / ".codex" / "skills"
ADS_README = VAULT / "Articles" / "Quantization in AdS" / "README.md"


def read_text(path: Path, errors: list[str]) -> str:
    try:
        return path.read_text(encoding="utf-8")
    except (OSError, UnicodeError) as exc:
        errors.append(f"cannot read {path}: {exc}")
        return ""


def skill_name(skill_md: Path, errors: list[str]) -> str | None:
    text = read_text(skill_md, errors)
    if not text.startswith("---\n"):
        errors.append(f"missing YAML frontmatter: {skill_md}")
        return None

    parts = text.split("---", 2)
    if len(parts) < 3:
        errors.append(f"unterminated YAML frontmatter: {skill_md}")
        return None

    frontmatter = parts[1]
    if yaml is not None:
        try:
            data = yaml.safe_load(frontmatter)
        except yaml.YAMLError as exc:
            errors.append(f"invalid YAML frontmatter in {skill_md}: {exc}")
            return None
        if not isinstance(data, dict):
            errors.append(f"frontmatter is not a mapping: {skill_md}")
            return None
        name = data.get("name")
        description = data.get("description")
        if not isinstance(name, str) or not name.strip():
            errors.append(f"missing frontmatter name: {skill_md}")
            return None
        if not isinstance(description, str) or not description.strip():
            errors.append(f"missing frontmatter description: {skill_md}")
        return name.strip()

    match = re.search(r"^name:\s*(.+?)\s*$", frontmatter, re.MULTILINE)
    if not match:
        errors.append(f"missing frontmatter name: {skill_md}")
        return None

    if not re.search(r"^description:\s*\S", frontmatter, re.MULTILINE):
        errors.append(f"missing frontmatter description: {skill_md}")

    return match.group(1).strip().strip("\"'")


def local_skill_names(root_text: str, errors: list[str]) -> set[str]:
    names: set[str] = set()
    for skill_md in sorted(LOCAL_SKILLS.glob("*/SKILL.md")):
        name = skill_name(skill_md, errors)
        if name is None:
            continue
        names.add(name)
        if skill_md.parent.name != name:
            errors.append(
                f"skill directory/name mismatch: {skill_md.parent.name} != {name}"
            )

        metadata = skill_md.parent / "agents" / "openai.yaml"
        metadata_text = read_text(metadata, errors) if metadata.exists() else ""
        if not metadata.exists():
            errors.append(f"missing skill metadata: {metadata}")
        elif yaml is not None:
            try:
                metadata_data = yaml.safe_load(metadata_text)
            except yaml.YAMLError as exc:
                errors.append(f"invalid skill metadata YAML in {metadata}: {exc}")
                metadata_data = None
            interface = (
                metadata_data.get("interface")
                if isinstance(metadata_data, dict)
                else None
            )
            if not isinstance(interface, dict):
                errors.append(f"missing interface mapping in {metadata}")
            else:
                for key in ("display_name", "short_description", "default_prompt"):
                    if not isinstance(interface.get(key), str) or not interface[key].strip():
                        errors.append(f"missing {key} in {metadata}")
            policy = (
                metadata_data.get("policy")
                if isinstance(metadata_data, dict)
                else None
            )
            if not isinstance(policy, dict) or not isinstance(
                policy.get("allow_implicit_invocation"), bool
            ):
                errors.append(
                    f"missing boolean policy.allow_implicit_invocation in {metadata}"
                )
        else:
            for key in ("display_name:", "short_description:", "default_prompt:"):
                if key not in metadata_text:
                    errors.append(f"missing {key} in {metadata}")

    match = re.search(
        r"^## Local Skills\n(?P<body>.*?)(?=^## )", root_text, re.MULTILINE | re.DOTALL
    )
    if not match:
        errors.append("missing Local Skills section in root AGENTS.md")
        return names

    listed = set(
        re.findall(
            r"^- `([^`]+)` at `\.codex/skills/[^`]+/SKILL\.md`",
            match.group("body"),
            re.MULTILINE,
        )
    )
    for name in sorted(names - listed):
        errors.append(f"local skill is not listed in root AGENTS.md: {name}")
    for name in sorted(listed - names):
        errors.append(f"root AGENTS.md lists a missing local skill: {name}")
    return names


def check_global_collisions(local_names: set[str], errors: list[str]) -> None:
    global_names: dict[str, Path] = {}
    if not GLOBAL_SKILLS.exists():
        return

    for skill_md in sorted(GLOBAL_SKILLS.glob("*/SKILL.md")):
        name = skill_name(skill_md, errors)
        if name:
            global_names[name] = skill_md

    for name in sorted(local_names & global_names.keys()):
        errors.append(
            f"global/local skill name collision for {name}: {global_names[name]}"
        )


def check_agents_hierarchy(root_text: str, errors: list[str]) -> int:
    match = re.search(
        r"^## Local AGENTS Hierarchy\n(?P<body>.*)$",
        root_text,
        re.MULTILINE | re.DOTALL,
    )
    if not match:
        errors.append("missing Local AGENTS Hierarchy section in root AGENTS.md")
        return 0

    listed = set(
        re.findall(r"^- `([^`]+/AGENTS\.md)`", match.group("body"), re.MULTILINE)
    )
    for relative in sorted(listed):
        if not (VAULT / relative).is_file():
            errors.append(f"missing AGENTS hierarchy path: {relative}")

    actual: set[str] = set()
    for top_level in ("Articles", "Lecture", "Literature Notes", "Note"):
        base = VAULT / top_level
        if base.exists():
            actual.update(
                path.relative_to(VAULT).as_posix()
                for path in base.rglob("AGENTS.md")
            )

    for relative in sorted(actual - listed):
        errors.append(f"local AGENTS.md is not listed in root hierarchy: {relative}")
    for relative in sorted(listed - actual):
        errors.append(f"root hierarchy lists a non-local AGENTS.md: {relative}")
    return len(listed)


def check_ads_index(errors: list[str]) -> int:
    text = read_text(ADS_README, errors)
    match = re.search(
        r"^## Subdirectories\n(?P<body>.*?)(?=^## )",
        text,
        re.MULTILINE | re.DOTALL,
    )
    if not match:
        errors.append(f"missing Subdirectories section: {ADS_README}")
        return 0

    indexed = set(re.findall(r"`([^`\n]+/)`", match.group("body")))
    actual = {
        f"{path.name}/"
        for path in ADS_README.parent.iterdir()
        if path.is_dir() and not path.name.startswith(".")
    }

    for relative in sorted(indexed):
        if not (ADS_README.parent / relative).is_dir():
            errors.append(f"AdS README indexes a missing directory: {relative}")
    for relative in sorted(actual - indexed):
        errors.append(f"AdS README omits a directory: {relative}")
    return len(indexed)


def main() -> int:
    errors: list[str] = []
    root_text = read_text(ROOT_AGENTS, errors)
    local_names = local_skill_names(root_text, errors)
    check_global_collisions(local_names, errors)
    agents_count = check_agents_hierarchy(root_text, errors)
    indexed_count = check_ads_index(errors)

    if errors:
        print("Policy audit failed:")
        for error in errors:
            print(f"- {error}")
        return 1

    print(
        "Policy audit passed: "
        f"{len(local_names)} local skills, "
        f"{agents_count} local AGENTS paths, "
        f"{indexed_count} indexed AdS directories, "
        "and no global/local skill name collisions."
    )
    return 0


if __name__ == "__main__":
    sys.exit(main())
