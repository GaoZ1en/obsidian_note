"""Static evidence-bundle checks only; no mathematical theorem verification.
No JSON, no deletion/moves, no package installation. Run with discovered Python.
"""
from pathlib import Path
import hashlib
import re
import sys


def run():
    root=Path(__file__).resolve().parents[1]
    report=Path(__file__).with_name('audit-results.md')
    if not report.exists():
        report.write_text('# Audit in progress\n',encoding='utf-8')
    issues=[]
    pyfiles=sorted(root.rglob('*.py'))
    for path in pyfiles:
        compile(path.read_text(encoding='utf-8'),str(path),'exec')
    markdown=sorted(root.rglob('*.md'))
    links=0
    for path in markdown:
        text=path.read_text(encoding='utf-8')
        if re.search('[\x00-\x08\x0b\x0c\x0e-\x1f]',text):
            issues.append(f'Control character: {path}')
        for match in re.finditer(r'\]\((?:<([^>]+)>|([^\s)]+))\)',text):
            target=match.group(1) or match.group(2)
            if re.match(r'[A-Za-z][A-Za-z0-9+.-]*:',target):
                continue
            target=target.split('#',1)[0]
            if not target:
                continue
            dest=Path(target)
            if not dest.is_absolute(): dest=path.parent/dest
            links+=1
            if not dest.exists(): issues.append(f'Broken local link in {path.name}: {target}')
    hashes=[]
    for script,result in [('virasoro_checks.py','virasoro-results.md'),
                          ('spatial_sewing_checks.py','spatial-results.md')]:
        path=root/'verification'/script
        actual=hashlib.sha256(path.read_bytes()).hexdigest()
        text=(root/'verification'/result).read_text(encoding='utf-8')
        passed=actual in text and 'All assertions passed' in text
        hashes.append((script,actual,passed))
        if not passed: issues.append(f'Stale or incomplete numeric evidence: {result}')
    assert not list(root.rglob('*.json')), 'Unexpected JSON generated in the new project'
    lines=['# Static bundle audit','',
           'This audit checks file links, Python syntax, control characters and numeric code hashes; it does NOT verify mathematics.',
           f'Python: {sys.version.split()[0]}.',
           f'Python scripts compiled in memory: {len(pyfiles)}.',
           f'Markdown files scanned: {len(markdown)}; local link occurrences checked: {links}.',
           'New project JSON files: none.','',
           '| numeric script | SHA256 | matches successful saved result |',
           '|---|---|---|']
    lines += [f'| {name} | `{digest}` | {passed} |' for name,digest,passed in hashes]
    lines += ['', 'Issues: '+('none.' if not issues else str(len(issues)))]
    lines += ['- '+issue for issue in issues]
    lines += ['', 'The source notes and reviewer reports were not modified by this audit.']
    text='\n'.join(lines)+'\n'
    report.write_text(text,encoding='utf-8')
    print(text)
    if issues: raise SystemExit(1)


if __name__=='__main__':
    run()
