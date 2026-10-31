"""Static spectral-BV evidence audit. No mathematical kernel is executed."""
from pathlib import Path
import re, json, hashlib, tempfile

ROOT=Path('/Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence')
PARENT=ROOT/'verification/spectral-bv-parent.w1iz7yst'
A=ROOT/'reviews/independent-spectral-second-order-20261031-GVgawC'
B=ROOT/'reviews/spectral-independent-20261031.sSj8f4'
DOCS=[ROOT/x for x in ('README.md','00 Research report.md','04 Comparison and open problems.md',
    '17 Spectral BV compression and master-equation obstruction.md','verification/README.md','reviews/Independent reviews.md')]
DOCS += [PARENT/'README.md',A/'report.frozen-independent.md',A/'supplied-text-audit.md',
    B/'FREEZE.md',B/'derivation.md',B/'connection_action_addendum.md',B/'supplied_note17_audit.md',B/'lorentz-fiber-api-diagnostic.md']
checks=[]; details={}
def digest(p):return hashlib.sha256(p.read_bytes()).hexdigest()
def record(label,passed,data):
    checks.append({'label':label,'passed':bool(passed)}); details[label]=data

errors=[]; occurrences=0
for doc in DOCS:
    text=doc.read_text()
    for dest in re.findall(r'\]\(<([^>]+)>\)',text):
        if re.match(r'https?://',dest):continue
        target,sep,anchor=dest.partition('#')
        path=Path(target) if target.startswith('/') else doc.parent/target
        occurrences+=1
        if not path.exists():errors.append({'document':str(doc),'target':dest,'error':'missing'})
        if anchor.startswith('L') and path.is_file():
            match=re.fullmatch(r'L(\d+)(?:-L?(\d+))?',anchor)
            if not match:errors.append({'document':str(doc),'target':dest,'error':'line syntax'});continue
            lo=int(match[1]);hi=int(match[2] or lo);count=len(path.read_text().splitlines())
            if not 1<=lo<=hi<=count:errors.append({'document':str(doc),'target':dest,'error':'line bounds','lines':count})
record('local links and line bounds',not errors,{'documents':len(DOCS),'local_link_occurrences':occurrences,'errors':errors})

expected=[]
for line in (A/'frozen-sha256.txt').read_text().splitlines():
    h,name=line.split('  ',1);expected.append((A/name,h))
for h,name in re.findall(r'^([0-9a-f]{64})  ([^\n]+)$',(B/'FREEZE.md').read_text(),re.M):
    expected.append((B/name,h))
manifest=json.loads((PARENT/'copy-manifest.json').read_text())
expected += [(Path(e['copy']),e['sha256']) for e in manifest]
expected.append((ROOT/'verification/spectral_bv_compression_checks.py','5cbbffe20bd5812ad5b0955c9ad88d0e68572fe6a74e2c50c23a602e99c69a76'))
mismatch=[{'path':str(p),'expected':h,'actual':digest(p)} for p,h in expected if digest(p)!=h]
record('frozen hashes and working parent source',not mismatch,{'checked':len(expected),'mismatches':mismatch})
byte_copies=[{'copy':e['copy'],'passed':Path(e['source']).read_bytes()==Path(e['copy']).read_bytes()} for e in manifest]
byte_copies.append({'copy':str(A/'actual-server-return.json'),'passed':(A/'actual-server-return.json').read_bytes()==Path('/Users/koishi/.dsh/research-results/session-8b689b102fbe/a2e07ee2fa5c-research-result.json').read_bytes()})
record('byte copies without kernel reruns',all(e['passed'] for e in byte_copies),byte_copies)

result_paths=[(PARENT/'result.json',40),(A/'actual-results.json',26),(B/'sage-result.json',25),
    (B/'connection-action-result.json',18),(B/'lorentz-fiber-N2-result.json',8)]
result_details=[]
for path,count in result_paths:
    obj=json.loads(path.read_text());fields=obj['checks']
    flags=[x['passed'] for x in fields] if isinstance(fields,list) else list(fields.values())
    result_details.append({'path':str(path),'labels':len(flags),'expected':count,
                           'passed':len(flags)==count and all(x is True for x in flags)})
w=(B/'wolfram-result.txt').read_text();wchecks=w.split('"Checks" -> <|',1)[1].split('"CheckCount"',1)[0]
wp=(wchecks.count('-> True')==78 and '-> False' not in wchecks and
    '"AllChecksTrue" -> True' in w and '"Messages" -> {}' in w)
result_details.append({'path':str(B/'wolfram-result.txt'),'labels':wchecks.count('-> True'),'expected':78,'passed':wp})
record('actual exact and interval result labels',all(e['passed'] for e in result_details),result_details)

raw_paths=[PARENT/'actual-server-return.json',A/'actual-server-return.json',B/'sage-tool-return.json',
           B/'connection-action-tool-return.json',B/'lorentz-fiber-N2-tool-return.json']
raw_details=[]
for path in raw_paths:
    envelope=json.loads(path.read_text());d=envelope['received']['value']['structuredContent']
    good=(envelope['upstreamTruncated'] is False and d['ok'] is True and d['error'] is None
          and d['stderr']=='' and d['transportStderr']==[] and d['warnings']==[]
          and all(d[k] is False for k in ('truncated','stdoutTruncated','stderrTruncated','warningsTruncated')))
    raw_details.append({'path':str(path),'passed':good,'elapsedMs':d['elapsedMs']})
record('successful Sage return diagnostics',all(e['passed'] for e in raw_details),raw_details)

main=ROOT/'17 Spectral BV compression and master-equation obstruction.md';text=main.read_text()
tags=re.findall(r'\\tag\{([^}]+)\}',text)
math_ok=(text.count('\\[')==text.count('\\]') and text.count('\\(')==text.count('\\)')
    and len(tags)==len(set(tags)) and not [c for c in text if ord(c)<32 and c not in '\n\r\t'])
scope_fragments=['b\\in\\operatorname{ran}P_N','not the hyperbolic AdS saddle',
 'fixed-derivative-order','g^*=\\xi^*=\\xi=0','Q_0h+hQ_0=1-P',
 'an order-\\(\\hbar\\) counterterm cannot repair it','Physical actions retain the original unnormalized spacetime integral']
missing=[x for x in scope_fragments if x not in text]
record('main displays and critical scope',math_ok and not missing,{'display_pairs':text.count('\\['),
    'inline_pairs':text.count('\\('),'tags':tags,'lines':len(text.splitlines()),'missing_scope_fragments':missing})

result={'scope':'Static archive/link/diagnostic audit only; no math kernel, external URL test or historical anchor sentence check.',
        'all_passed':all(c['passed'] for c in checks),'checks':checks,'details':details,
        'snapshot':[{'path':str(p),'sha256':digest(p)} for p in DOCS]}
out=Path(tempfile.mkdtemp(prefix='spectral-bv-audit.',dir=ROOT/'verification'))
(out/'result.json').write_text(json.dumps(result,indent=2)+'\n')
print(json.dumps({'output':str(out/'result.json'),'all_passed':result['all_passed'],
                  'checks':checks,'documents':len(DOCS),'links':occurrences},indent=2))
if not result['all_passed']:raise SystemExit(1)
