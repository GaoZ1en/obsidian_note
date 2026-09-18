#!/usr/bin/env python3
"""Build the combined Markdown and the distributable ZIP from this directory."""
from __future__ import annotations
import hashlib
import json
import re
import zipfile
from collections import Counter
from pathlib import Path

ROOT=Path(__file__).resolve().parents[1]

def sha(path:Path)->str:
    return hashlib.sha256(path.read_bytes()).hexdigest()

notes=sorted((ROOT/'notes').glob('*.md'))
assert len(notes)==12, f'Expected 12 notes, got {len(notes)}'
report=json.loads((ROOT/'results/checks.json').read_text())
assert report['failed']==0, 'Refusing to package a failing test run'

# These checks detect malformed deliverables, not invalid proofs.
refs=(ROOT/'REFERENCES.md').read_text()
issues=[]
for path in notes:
    text=path.read_text()
    for op,cl in [(r'\[',r'\]'),(r'\(',r'\)')]:
        if text.count(op)!=text.count(cl):issues.append(f'{path.name}: unmatched {op}/{cl}')
    for match in re.finditer(r'\[(R\d+(?:[–-]R?\d+)?(?:,R?\d+)*|U\d+(?:,U?\d+)*)\]',text):
        label=match.group(1)
        # Single and comma labels, plus compact en-dash ranges.
        tokens=re.findall(r'[RU]\d+',label)
        for token in tokens:
            if f'[{token}]' not in refs:issues.append(f'{path.name}: unknown reference {token}')
    if '\x00' in text:issues.append(f'{path.name}: NUL byte')
assert not issues, '\n'.join(issues)

combined=['# Principal-bundle gauge theory 的区域 observable algebra 与可再开放粘合\n',
          '> 独立重写稿 · 2026-09-14 · 与分篇文件内容一致\n',
          '精确范围、采用输入与未构造目标见第 00、10 篇；引用表位于末尾。\n']
for path in notes:
    combined.append(f'\n---\n\n<!-- source: notes/{path.name} -->\n\n'+path.read_text())
combined.append('\n---\n\n'+refs)
(ROOT/'COMPLETE_NOTES.md').write_text('\n'.join(combined))

health={
    'notes':len(notes),'test_total':report['total'],'tests_passed':report['passed'],
    'test_types':dict(Counter(x['kind'] for x in report['checks'])),
    'markdown_math_delimiters':'balanced',
    'reference_labels':'checked',
    'combined_bytes':(ROOT/'COMPLETE_NOTES.md').stat().st_size,
    'combined_chinese_characters':len(re.findall(r'[\u4e00-\u9fff]',(ROOT/'COMPLETE_NOTES.md').read_text())),
    'warning':'Packaging checks are not mathematical peer review.'}
(ROOT/'results/build_checks.json').write_text(json.dumps(health,ensure_ascii=False,indent=2))
files=[p for p in ROOT.rglob('*') if p.is_file() and '__pycache__' not in p.parts and p.name!='file_manifest.json']
manifest={str(p.relative_to(ROOT)):{'sha256':sha(p),'bytes':p.stat().st_size} for p in sorted(files)}
(ROOT/'provenance/file_manifest.json').write_text(json.dumps(manifest,ensure_ascii=False,indent=2))
zip_path=ROOT.parent/(ROOT.name+'.zip')
with zipfile.ZipFile(zip_path,'w',zipfile.ZIP_DEFLATED,compresslevel=9) as z:
    for p in sorted(ROOT.rglob('*')):
        if p.is_file() and '__pycache__' not in p.parts:
            z.write(p,Path(ROOT.name)/p.relative_to(ROOT))
with zipfile.ZipFile(zip_path) as z:
    assert z.testzip() is None
print(json.dumps({**health,'zip':str(zip_path),'zip_sha256':sha(zip_path),'zip_bytes':zip_path.stat().st_size},ensure_ascii=False,indent=2))
