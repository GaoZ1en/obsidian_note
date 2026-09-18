#!/usr/bin/env python3
"""Update only the two generated reading copies from their revised source notes.

Default is a dry run. Requires a Git checkout containing --base; no network,
no manifests/archives/history rewrites. Refuses an unexpected reading copy.
"""
from __future__ import annotations
import argparse
import subprocess
from pathlib import Path

BASE = '6940ab5243b7d8f74bcfc2f2cf0138eeed50b240'
ROOT_PATH = Path('Articles/Quantization in AdS/gluing')
PACKAGES = {'finite_cut_sewing':'COMPLETE_NOTE.md',
            'principal_bundle_sewing_v2':'COMPLETE_NOTES.md'}


def sync_text(snapshot: str, changes: list[tuple[str, str, str]]) -> tuple[str, int]:
    result, count = snapshot, 0
    for name, old, new in changes:
        old, new = old.strip(), new.strip()
        if old == new:
            continue
        if result.count(new) == 1 and result.count(old) == 0:
            continue
        if result.count(old) != 1:
            raise ValueError(f'{name}: expected one exact old source block, found {result.count(old)}')
        result = result.replace(old, new, 1)
        count += 1
    return result, count


def main() -> None:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--base', default=BASE)
    parser.add_argument('--package', choices=sorted(PACKAGES), action='append')
    parser.add_argument('--write', action='store_true')
    args = parser.parse_args()
    root = Path(subprocess.check_output(['git','rev-parse','--show-toplevel'], text=True).strip())
    plans = []
    for package in args.package or PACKAGES:
        folder = ROOT_PATH/package
        target = root/folder/PACKAGES[package]
        changes = []
        for note in sorted((root/folder/'notes').glob('[0-9][0-9]_*.md')):
            relative = note.relative_to(root).as_posix()
            old = subprocess.check_output(['git','show',f'{args.base}:{relative}'], cwd=root).decode('utf-8')
            changes.append((relative, old, note.read_text(encoding='utf-8')))
        if not changes:
            raise ValueError(f'No source notes in {folder}')
        original = target.read_text(encoding='utf-8')
        updated, count = sync_text(original, changes)
        plans.append((target, updated, count))
    # Validate every selected package before writing either one.
    for target, updated, count in plans:
        if args.write and count:
            target.write_text(updated, encoding='utf-8')
        print(f'{"updated" if args.write else "would update"}: {target.relative_to(root)}: {count} blocks')


if __name__ == '__main__':
    main()
