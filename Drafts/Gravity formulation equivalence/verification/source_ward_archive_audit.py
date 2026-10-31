#!/usr/bin/env python3
"""Static provenance/link audit for the source-Ward stage; no CAS is rerun.
Every invocation creates a fresh private output directory.
"""
from pathlib import Path
from datetime import datetime
from zoneinfo import ZoneInfo
import hashlib
import json
import re
import tempfile

ROOT = Path('/Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence')
ARCHIVE = ROOT / 'verification/source-ward-parent.RhLegw'
VOL = ROOT / 'reviews/renvol-independent-20261031.elaEpR'
DOM = ROOT / 'reviews/independent-functional-analysis-20261031-0434-c71d'
WARD = ROOT / 'reviews/source-response-independent-20261031T043445-9B4EFBFF'
MAIN = ROOT / '13 Source-dependent thermal AdS one-loop Ward comparison.md'
DOCUMENTS = [
    ROOT / '00 Research report.md', ROOT / '04 Comparison and open problems.md', MAIN,
    ROOT / 'reviews/Independent reviews.md', ROOT / 'sources/Source evidence.md',
    ROOT / 'verification/README.md', ARCHIVE / 'README.md',
    VOL / 'REPORT.md', VOL / 'SUPPLIED_TEXT_AUDIT.md',
    DOM / 'report.md', DOM / 'source-evidence.md', DOM / 'supplied-text-audit-13-sections1-3.md',
    WARD / 'source-response-derivation.md', WARD / 'evidence-index.md',
    WARD / 'supplied-text-audit-sections-6-7-20261031T050128.md',
]

def sha(path):
    return hashlib.sha256(path.read_bytes()).hexdigest()

rows = []

def check(label, value, detail=None):
    assert type(value) is bool
    item = {'label': label, 'passed': value}
    if detail is not None:
        item['detail'] = detail
    rows.append(item)

link_re = re.compile(r'\]\(<([^>\n]+)>\)')
line_re = re.compile(r'L(\d+)(?:-L?(\d+))?\Z')
link_count = 0
broken = []
for doc in DOCUMENTS:
    text = doc.read_text(encoding='utf-8')
    for match in link_re.finditer(text):
        target = match.group(1)
        if re.match(r'^[a-zA-Z][a-zA-Z0-9+.-]*://', target):
            continue
        path_part, sep, fragment = target.partition('#')
        path = Path(path_part)
        if not path.is_absolute():
            path = doc.parent / path
        path = path.resolve()
        link_count += 1
        if not path.exists():
            broken.append({'document': str(doc), 'target': target, 'error': 'missing'})
            continue
        anchor = line_re.fullmatch(fragment) if sep else None
        if anchor and path.is_file():
            lo = int(anchor.group(1)); hi = int(anchor.group(2) or lo)
            count = len(path.read_text(encoding='utf-8').splitlines())
            if not (1 <= lo <= hi <= count):
                broken.append({'document': str(doc), 'target': target,
                               'error': 'line range', 'line_count': count})
check('local links and numerical line bounds', not broken,
      {'documents': len(DOCUMENTS), 'links': link_count, 'broken': broken,
       'limitation': 'Historical anchors are checked for bounds, not unchanged sentence identity.'})

expected = {
    ARCHIVE/'run01-source.wl': 'e3ee522ec5e5b7361a4009ff6a86bcfce18b440d6a0b567ad0a337803785e58d',
    ARCHIVE/'run02-source.wl': '7151a0996f022e7094fc9b1dcc4b4474cf0b652afa0c5c541f35c5c8e3c2fd31',
    ARCHIVE/'run01-result.wxf': '7622b64211c632090b1158189852ccec4fba112bec9837f2775147e987325dd8',
    ARCHIVE/'run02-result.wxf': '46b5bd7a113cc7e7b5254586009b76460d8facb7b39f5afe144bf08abf8dcbfa',
    DOM/'checks-v1.wl': '431644dddb3f76b582bc83681abd309315b96be48be468a611c79515c2e4057d',
    DOM/'checks-v2.wl': '3af934f06e4be021dd7fba0b69571b64e54df0f0ffd9a1abc48e5721cebc1b7b',
    DOM/'supplied-source-13-audit-snapshot.md': '2b2cc2c05dc31c67491d446a67c99e879ec7f88f713fc1ee673d6e89d38ed0d5',
    VOL/'supplied-synthesis-snapshot-20261031.md': 'db85d9305a31691ced1d4079d9e551667fa8cb368ab6c7430825e059aa17d7fd',
    DOM/'dgg-0911.5085v2-fetched.txt': 'e8587a07bf7968b498a57ee950f1fdffb59ab5aedf708041b64e4b751c8267ae',
    DOM/'mueller-pfaff-1108.2454-fetched.txt': '65c512d793a96b91a94f259e2d5e48796b29a9f036a631f59183386317836798',
}
hashes = [{'path': str(p), 'expected': value, 'actual': sha(p)} for p,value in expected.items()]
check('ten frozen hashes match recorded values', all(x['expected']==x['actual'] for x in hashes), hashes)

private = Path('/Users/koishi/.dsh/research-results')
pairs = [
    (ARCHIVE/'run01-preview.txt', private/'kernel-exports/source-ward-parent.Q4iqM5/preview.txt'),
    (ARCHIVE/'run01-result.wxf', private/'kernel-exports/source-ward-parent.Q4iqM5/result.wxf'),
    (ARCHIVE/'run02-preview.txt', private/'kernel-exports/source-ward-parent.wQLjJM/preview.txt'),
    (ARCHIVE/'run02-result.wxf', private/'kernel-exports/source-ward-parent.wQLjJM/result.wxf'),
    (ARCHIVE/'run01-server-raw.json', private/'session-3605db0fcd2b/bb7d4695a29c-research-result.json'),
    (ARCHIVE/'run02-server-raw.json', private/'session-3605db0fcd2b/e920e0a37ab2-research-result.json'),
]
copies = [{'copy':str(a), 'original':str(b), 'byte_equal':a.read_bytes()==b.read_bytes()} for a,b in pairs]
check('six exported/raw copies are byte identical', all(x['byte_equal'] for x in copies), copies)
a = (ARCHIVE/'run01-source.wl').read_text(encoding='utf-8')
b = (ARCHIVE/'run02-source.wl').read_text(encoding='utf-8')
old = '"KernelVersion"->$Version,'
new = '"KernelVersion"->System`$Version,'
check('run02 changes only the version accessor', a.count(old)==1 and a.replace(old,new,1)==b)
check('current runnable source equals frozen run02',
      (ROOT/'verification/vacuum_source_ward_bridge.wl').read_bytes()==(ARCHIVE/'run02-source.wl').read_bytes())

raw_details = []
for name in ['run01-server-raw.json','run02-server-raw.json']:
    data = json.loads((ARCHIVE/name).read_text(encoding='utf-8'))
    value = data['received']['value']['structuredContent']
    raw_details.append({'file': name, 'ok': value['ok'], 'profile':value['profile'],
        'truncated':value['truncated'], 'upstreamTruncated':data['upstreamTruncated'],
        'messages':value['messages'], 'loadErrors':value['loadErrors'],
        'loadMessages':value['loadMessages'], 'transportStderr':value['transportStderr'],
        'recorded_AllResidualsZero_True':'"AllResidualsZero" -> True' in value['result'],
        'exact_submitted_code':data['arguments']['code']})
check('actual parent server envelopes retain successful untruncated diagnostics',
      all(x['ok'] is True and x['profile']=='components' and not x['truncated']
          and not x['upstreamTruncated'] and not x['messages'] and not x['loadErrors']
          and not x['loadMessages'] and not x['transportStderr']
          and x['recorded_AllResidualsZero_True'] for x in raw_details), raw_details)

sage = json.loads((WARD/'raw-checks.json').read_text(encoding='utf-8'))
check('archived Sage labels and retained cutoff counterexample',
      len(sage['checks'])==20 and all(x['passed'] is True for x in sage['checks'])
      and sage['all_passed'] is True and len(sage['tables']['time_integral_checks'])==60
      and sage['tables']['finite_cutoff_boundary_residual']['1']=='-262*q^9',
      {'scope':'Checks recorded outputs, not a rerun or independent mathematical proof.'})
text = MAIN.read_text(encoding='utf-8')
check('main display delimiters and aligned environments balance',
      text.count('\\[')==text.count('\\]')
      and text.count('\\begin{aligned}')==text.count('\\end{aligned}'))

out = Path(tempfile.mkdtemp(prefix='source-ward-audit.', dir=ROOT/'verification'))
report = {'scope':'Static archive/link audit only; no mathematical kernel executed.',
          'time':datetime.now(ZoneInfo('Asia/Shanghai')).isoformat(),
          'checks':rows, 'all_passed':all(x['passed'] for x in rows),
          'document_snapshots':[{'path':str(p),'sha256':sha(p)} for p in DOCUMENTS]}
(out/'result.json').write_text(json.dumps(report,indent=2,ensure_ascii=False)+'\n',encoding='utf-8')
print(json.dumps({'result':str(out/'result.json'),'all_passed':report['all_passed'],
                  'checks':len(rows),'documents':len(DOCUMENTS),'links':link_count},indent=2))
raise SystemExit(0 if report['all_passed'] else 1)
