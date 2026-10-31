#!/usr/bin/env python3
"""Narrow static audit of the geometric-CS stage; never executes a math kernel.
Pass the separately frozen continuum supplied-text audit (and optional repair note).
Each invocation writes a new private report, leaving prior evidence unchanged.
"""
from pathlib import Path
from datetime import datetime
from zoneinfo import ZoneInfo
import argparse
import hashlib
import json
import re
import tempfile

ROOT = Path('/Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence')
PARENT = ROOT/'verification/geometric-cs-parent.l4Mmve'
PHASE = ROOT/'verification/geometric-cs-phase.r599veb9'
AUX = ROOT/'reviews/independent-first-order.0Ra5fo'
GAUGE = ROOT/'reviews/independent-gauge-dictionary-20261031-8sBlwF'
MEASURE = ROOT/'reviews/independent-gaussian-measure-20261031-lrJCHT'
HC = ROOT/'reviews/independent-mixed-order-hc-20261031-d63e5774'
PRIVATE = Path('/Users/koishi/.dsh/research-results')
MAIN = ROOT/'14 Geometric CS Gaussian map and regulator.md'
parser = argparse.ArgumentParser()
parser.add_argument('--continuum-audit', type=Path, required=True)
parser.add_argument('--repair-note', type=Path)
args = parser.parse_args()
documents = [ROOT/'README.md', ROOT/'00 Research report.md',
    ROOT/'04 Comparison and open problems.md', MAIN,
    ROOT/'verification/README.md', ROOT/'reviews/Independent reviews.md',
    ROOT/'sources/Source evidence.md', PARENT/'README.md', PHASE/'README.md',
    AUX/'report.md', AUX/'supplied-text-audit.n1b4jbut/audit.md',
    GAUGE/'report.md', GAUGE/'supplied-text-audit.md',
    MEASURE/'report.md', MEASURE/'supplied-text-audit-WkX9El/audit.md',
    HC/'report.md', HC/'source-excerpts.md', args.continuum_audit]
if args.repair_note:
    documents.append(args.repair_note)

def sha(path):
    return hashlib.sha256(path.read_bytes()).hexdigest()

checks = []
def check(label, passed, detail=None):
    assert type(passed) is bool
    checks.append({'label': label, 'passed': passed, 'detail': detail})

broken = []
link_count = 0
for doc in documents:
    text = doc.read_text(encoding='utf-8')
    for target in re.findall(r'\]\(<([^>\n]+)>\)', text):
        if re.match(r'^[a-zA-Z][a-zA-Z0-9+.-]*://', target):
            continue
        path_part, sep, fragment = target.partition('#')
        path = Path(path_part)
        if not path.is_absolute():
            path = doc.parent/path
        path = path.resolve()
        link_count += 1
        if not path.exists():
            broken.append({'document': str(doc), 'target': target, 'error': 'missing'})
            continue
        anchor = re.fullmatch(r'L(\d+)(?:-L?(\d+))?', fragment) if sep else None
        if anchor and path.is_file():
            lo = int(anchor[1]); hi = int(anchor[2] or lo)
            count = len(path.read_text(encoding='utf-8').splitlines())
            if not 1 <= lo <= hi <= count:
                broken.append({'document': str(doc), 'target': target, 'error': 'line bounds'})
check('local link targets and numerical line bounds', not broken,
      {'documents': len(documents), 'links': link_count, 'broken': broken,
       'scope': 'No external URL fetch or historical sentence-identity certification.'})

expected = {
    PARENT/'executed-source.wl': 'a5238ac0c488cca95783148948731bb04ae35a46a09fcb0d5e485d5c084fe2d1',
    PARENT/'preview.txt': '09ee864770498e13707722748629d2700c00c6bc38364d084c07b398640ddcac',
    PARENT/'result.wxf': 'dba180a8aeb467e87aa7e8fdad3fd5f4ce73fb9432268734f6f1da3d0608150e',
    PARENT/'actual-server-return.json': '12d44c4ba0208aeda9c6a2f355a7b37b5843187ffdedc57b3cd9f8e064de0161',
    PHASE/'executed-source.wl': 'a260d954d14947e0459495e9707ed13b064633e6490957dedde245d8a94f17de',
    PHASE/'preview.txt': '375313a196636a86367fef107db51072d190d3481ae08401fdefc1da51c5ae52',
    PHASE/'result.wxf': '4f7ed3c44aecf501e49ae43a171278aefe09af059129451c903c19e3dc3fe72b',
    PHASE/'actual-server-return.json': '6c1afee813b6263926e8303593edf4bdd5682f7383d76aa6241d773e33e68ab5',
}
hashes = [{'path': str(p), 'expected': h, 'actual': sha(p)} for p,h in expected.items()]
check('eight frozen hashes match recorded values', all(x['expected']==x['actual'] for x in hashes), hashes)
pairs = [(ROOT/'verification/vacuum_geometric_cs_gaussian.wl', PARENT/'executed-source.wl'),
         (ROOT/'verification/geometric_cs_phase_counterexample.wl', PHASE/'executed-source.wl'),
         (PARENT/'preview.txt', PRIVATE/'kernel-exports/geometric-cs-parent.awRvgL/preview.txt'),
         (PARENT/'result.wxf', PRIVATE/'kernel-exports/geometric-cs-parent.awRvgL/result.wxf'),
         (PHASE/'preview.txt', PRIVATE/'kernel-exports/geometric-cs-phase.BgDSjU/preview.txt'),
         (PHASE/'result.wxf', PRIVATE/'kernel-exports/geometric-cs-phase.BgDSjU/result.wxf'),
         (PHASE/'actual-server-return.json', PRIVATE/'session-3605db0fcd2b/0dc3bd5c2af3-research-result.json')]
copies = [{'left': str(a), 'right': str(b), 'byte_equal': a.read_bytes()==b.read_bytes()} for a,b in pairs]
check('seven runnable or private-export copies are byte identical', all(x['byte_equal'] for x in copies), copies)

raw = json.loads((PARENT/'actual-server-return.json').read_text())
value = raw['received']['value']['structuredContent']
check('actual parent xAct server diagnostics', value['ok'] is True
    and value['profile']=='components' and not raw['upstreamTruncated']
    and not value['truncated'] and not value['messages'] and not value['loadErrors']
    and not value['loadMessages'] and not value['transportStderr']
    and '"AllResidualsZero" -> True' in value['result'], value)
phase_raw = json.loads((PHASE/'actual-server-return.json').read_text())
phase_text = '\n'.join(x['text'] for x in phase_raw['received']['value']['content'] if x['type']=='text')
check('actual phase server result and available diagnostics', not phase_raw['upstreamTruncated']
    and 'AllResidualsZero -> True' in phase_text and 'Failed -> False' in phase_text
    and 'Messages -> {}' in phase_text,
    {'scope': 'Ordinary Mathematica envelope does not provide separate process exit/stderr.'})

preview_checks = []
for archive, count in [(PARENT,16),(PHASE,9)]:
    text = (archive/'preview.txt').read_text()
    keys = re.findall(r'"([^"]+)" ->', text.split('"AllResidualsZero"')[0])
    keys = [key for key in keys if key!='Residuals']
    good = len(keys)==count and '"AllResidualsZero" -> True' in text
    good = good and all(token in text for token in ['"Failed" -> False',
        '"UnevaluatedComputations" -> False', '"Messages" -> {}', '14.3.0'])
    preview_checks.append({'archive': str(archive), 'expected_groups': count, 'keys': keys, 'passed': good})
check('recorded sixteen and nine groups with clean final flags', all(x['passed'] for x in preview_checks), preview_checks)
text = MAIN.read_text()
check('main display delimiters and aligned environments balance',
      text.count('\\[')==text.count('\\]') and
      text.count('\\begin{aligned}')==text.count('\\end{aligned}'))
check('signed orbital and gauge-realization qualifications are retained',
      '\\qquad n\\ge1' in text and '\\mathcal O_{-n}=\\mathcal O_n' in text and
      'not being advertised as a separately selfadjoint' in text and
      'not assigned an unproved non-Hermitian spectral logarithm' in text and
      'after the spatial finite part' in text,
      {'scope': 'Static presence check only, not mathematical certification.'})
out = Path(tempfile.mkdtemp(prefix='geometric-cs-audit.', dir=ROOT/'verification'))
report = {'scope': 'Static stage archive/link audit; no mathematical kernel was run.',
    'time': datetime.now(ZoneInfo('Asia/Shanghai')).isoformat(),
    'checks': checks, 'all_passed': all(x['passed'] for x in checks),
    'auditor_sha256': sha(Path(__file__)),
    'document_snapshots': [{'path': str(p), 'sha256': sha(p)} for p in documents]}
with (out/'result.json').open('x',encoding='utf-8') as f:
    json.dump(report,f,ensure_ascii=False,indent=2); f.write('\n')
print(json.dumps({'result': str(out/'result.json'), 'all_passed': report['all_passed'],
    'checks': len(checks), 'documents': len(documents), 'links': link_count},indent=2))
raise SystemExit(0 if report['all_passed'] else 1)
