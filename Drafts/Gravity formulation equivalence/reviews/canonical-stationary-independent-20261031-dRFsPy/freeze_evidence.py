"""Validate and seal this unique review without modifying parent artifacts.
One-shot: refuses to overwrite its manifest or validation report.
"""
from pathlib import Path
from datetime import datetime
from zoneinfo import ZoneInfo
import ast, hashlib, json, re

ROOT=Path('/Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/canonical-stationary-independent-20261031-dRFsPy')
assert ROOT.is_dir() and ROOT.name=='canonical-stationary-independent-20261031-dRFsPy'
manifest=ROOT/'freeze_manifest.json'
validation=ROOT/'freeze_validation.txt'
assert not manifest.exists() and not validation.exists(), 'Frozen evidence must not be overwritten.'
files=['proof.md','inputs_and_diagnostics.md','sage_exterior_check.py','sage_actual_output.json','sage_actual_output.txt','sage_kernel_transport.json','bitmask_sympy_check.py','bitmask_actual_output.json','bitmask_actual_output.txt','bitmask_kernel_transport.json','inverse_orientation_check.py','inverse_actual_output.json','inverse_actual_output.txt','inverse_kernel_transport.json','freeze_evidence.py']
inputs=[
'/Users/koishi/Documents/Note/AGENTS.md',
'/Users/koishi/Documents/Note/.codex/skills/research-project-maintainer/SKILL.md',
'/Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/README.md',
'/Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/18 Complete AdS BV contraction and tree transfer.md',
'/Users/koishi/.dsh/profiles/desktop/node_modules/@koishi/dsh-research-preset/skills/math-computation/references/sage.md'
]
lines=[]
for stem,count,warnings in [('sage',217,0),('bitmask',212,6),('inverse',185,0)]:
    report=json.loads((ROOT/(stem+'_actual_output.json')).read_text())
    assert report['all_passed'] is True and report['count']==count
    assert len(report['checks'])==count and all(v['passed'] is True for v in report['checks'])
    assert all(v['residual']=='0' for v in report['checks'])
    envelope=json.loads((ROOT/(stem+'_kernel_transport.json')).read_text())
    result=envelope['received']['value']['structuredContent']
    assert result['ok'] is True and result['error'] is None
    assert not result['truncated'] and not result['stdoutTruncated'] and not result['stderrTruncated']
    assert len(result['warnings'])==warnings and not result['warningsTruncated']
    assert hashlib.sha256(result['stdout'].encode()).hexdigest()==result['stdoutSha256']
    lines.append(f'PASS {stem}: {count}/{count} exact residuals; transport successful and untruncated; warnings={warnings}.')
for name in files:
    path=ROOT/name
    assert path.is_file()
    if path.suffix=='.py':ast.parse(path.read_text(),filename=str(path))
    if path.suffix=='.md':
        for target in re.findall(r'\]\(<([^>]+)>\)',path.read_text()):
            target=target.split('#',1)[0]
            if '://' not in target:
                assert Path(target).is_absolute(), ('non-absolute link',name,target)
                assert Path(target).exists(), ('missing link',name,target)
lines += ['PASS every Python source parses without execution.','PASS every Markdown file link resolves to an existing absolute path.','No mathematical failure; no source or parent-note mutation during freezing.']
validation.write_text('\n'.join(lines)+'\n',encoding='utf-8')
files.append(validation.name)
def digest(path):
    data=path.read_bytes()
    return {'path':str(path),'bytes':len(data),'sha256':hashlib.sha256(data).hexdigest()}
record={'schema_version':1,'frozen_at':datetime.now(ZoneInfo('Asia/Shanghai')).isoformat(),'directory':str(ROOT),'scope':'independent stationary BV canonical-transfer proof; no parent-note edits','deliverables':[digest(ROOT/name) for name in files],'input_versions_at_freeze':[digest(Path(path)) for path in inputs],'notes':['Manifest excludes its own hash.','Two independent superalgebra implementations; inverse check reuses native Sage definitions.','Source code and actual kernel envelopes, including warnings, are frozen together.']}
manifest.write_text(json.dumps(record,indent=2)+'\n',encoding='utf-8')
print('\n'.join(lines))
print('Frozen manifest:',manifest)
