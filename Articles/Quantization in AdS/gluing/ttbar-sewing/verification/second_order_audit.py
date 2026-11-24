"""Static audit of the new second-order research artifacts, not a physics proof.
Run with the bundled Python; emits only its own Markdown result.
"""
from pathlib import Path
import ast
import hashlib
import re

ROOT = Path(__file__).resolve().parent.parent
MD = [
    'README.md', 'second-order-local-flow.md', 'verification/evidence.md',
    'reviews/local-second-order-independent.md',
    'reviews/counterterm-second-order-independent.md',
    'reviews/fermion-second-order-independent.md',
    'reviews/spatial-loop-second-order-independent.md',
    'reviews/spatial-wilson-second-order.md',
    'reviews/ward-source-second-order.md',
    'reviews/ward-contact-audit.md',
    'verification/second-order-mode-results.md',
    'verification/second-order-symbolic-results.md',
    'verification/second-order-spatial-results.md',
    'verification/spatial-loop-uv-results.md',
    'verification/spatial-wilson-results.md',
]
CODE = [
    'verification/second_order_mode_checks.py',
    'verification/second_order_symbolic_checks.wl',
    'verification/second_order_spatial_checks.wl',
    'verification/spatial_loop_uv_checks.py',
    'verification/spatial_wilson_checks.py',
    'verification/ward_source_checks.sage',
    'verification/ward_contact_audit.py',
    'verification/ward_contact_audit.wl',
    'verification/second_order_audit.py',
]
LINK = re.compile(r'\[[^\]]*\]\(<([^>]+)>\)')
HASH = re.compile(r'Code SHA256: `([0-9a-f]{64})`')


def main():
    issues = []
    links = 0
    for name in MD:
        path = ROOT / name
        if not path.is_file():
            issues.append('Missing Markdown: ' + name)
            continue
        text = path.read_text(encoding='utf-8')
        if any(ord(c) < 32 and c not in '\n\r\t' for c in text):
            issues.append('Unexpected control character: ' + name)
        for target in LINK.findall(text):
            if target.startswith(('https://', 'http://', 'mailto:')):
                continue
            raw, _, anchor = target.partition('#')
            destination = Path(raw) if raw.startswith('/') else path.parent / raw
            if not destination.is_file():
                issues.append('Broken local file link: ' + name + ' -> ' + target)
            elif re.fullmatch(r'L\d+(?:-L\d+)?', anchor):
                last = int(anchor.rsplit('L', 1)[-1])
                if last > len(destination.read_text(encoding='utf-8').splitlines()):
                    issues.append('Line anchor beyond EOF: ' + name + ' -> ' + target)
            links += 1
    rows = []
    for name in CODE:
        path = ROOT / name
        if not path.is_file():
            issues.append('Missing code: ' + name)
            continue
        data = path.read_bytes()
        text = data.decode('utf-8')
        if path.suffix in ('.py', '.sage'):
            ast.parse(text, filename=str(path))
        rows.append((name, hashlib.sha256(data).hexdigest()))
    for source, result in [
        ('second_order_mode_checks.py', 'second-order-mode-results.md'),
        ('spatial_loop_uv_checks.py', 'spatial-loop-uv-results.md'),
        ('spatial_wilson_checks.py', 'spatial-wilson-results.md'),
    ]:
        code = ROOT / 'verification' / source
        report = ROOT / 'verification' / result
        recorded = HASH.search(report.read_text(encoding='utf-8'))
        current = hashlib.sha256(code.read_bytes()).hexdigest()
        if recorded is None or recorded.group(1) != current:
            issues.append('Code/result hash mismatch: ' + source)
    lines = ['# Second-order artifact audit', '',
             'Static checks only: file/link existence, UTF-8/control characters, Python-compatible syntax, and recorded code hashes.', '',
             f'Checked {len(MD)} Markdown files, {len(CODE)} code files, and {links} local links.', '',
             '## Current code hashes', '', '| Code | SHA256 |', '|---|---|']
    for name, digest in rows:
        lines.append(f'| [{Path(name).name}](<{ROOT / name}>) | `{digest}` |')
    lines += ['', '## Outcome', '']
    lines += ['- ' + issue for issue in issues] if issues else ['All static checks passed.']
    lines += ['', 'This audit does not prove the Ward identity, Jacobi identity, convergence, or the physics of the counterterms. The nonlinear Jacobi failure is a recorded mathematical result, not an expected static-audit failure.', '']
    output = ROOT / 'verification' / 'second-order-audit-results.md'
    output.write_text('\n'.join(lines), encoding='utf-8')
    print('\n'.join(lines))
    assert not issues, issues


if __name__ == '__main__':
    main()
