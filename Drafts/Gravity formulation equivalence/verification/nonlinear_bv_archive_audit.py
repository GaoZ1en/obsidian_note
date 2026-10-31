#!/usr/bin/env python3
"""Static evidence/link audit only. Never executes a mathematical kernel."""
from pathlib import Path
import hashlib,json,re,tempfile
from urllib.parse import unquote
ROOT=Path('/Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence')
A=ROOT/'reviews/bv-independent-20261031-YAnJWA'
B=ROOT/'reviews/nonlinear-bv-independent-20261031-065603'
V=ROOT/'verification'
P=V/'nonlinear-bv-parent.x0xir72t'
D=V/'nonlinear-bv-density-parent.cx7id5vg'
main=ROOT/'16 Nonlinear BV map and finite density transport.md'
docs=[ROOT/p for p in ['README.md','00 Research report.md','04 Comparison and open problems.md','16 Nonlinear BV map and finite density transport.md','verification/README.md','reviews/Independent reviews.md','sources/Source evidence.md','sources/BV equivalence source audit.md']]
docs += [P/'README.md',D/'README.md']
docs += [A/p for p in ['derivation.md','FREEZE.md','berezinian_followup.md','BEREZINIAN_FREEZE.md','supplied_text_audit.md']]
docs += [B/p for p in ['derivation.md','heat_prescription_followup.md','kernel_return_provenance.md','typeII-berezinian-followup/exact_berezinian.md','typeII-berezinian-followup/supplied_synthesis_audit.md']]
checks=[];detail={}
def record(label,ok,info):checks.append({'label':label,'passed':bool(ok)});detail[label]=info
link_errors=[];links=0
for doc in docs:
    text=doc.read_text()
    for dest in re.findall(r'\]\(<([^>]+)>\)',text):
        if dest.startswith(('https://','http://','mailto:','#')):continue
        links+=1;name,_,anchor=unquote(dest).partition('#');target=Path(name)
        if not target.is_absolute():target=doc.parent/target
        if not target.exists():link_errors.append([str(doc),dest,'missing']);continue
        m=re.fullmatch(r'L(\d+)(?:-L(\d+))?',anchor)
        if m:
            lo=int(m[1]);hi=int(m[2] or m[1]);n=len(target.read_text().splitlines())
            if not (1<=lo<=hi<=n):link_errors.append([str(doc),dest,f'line bound {n}'])
record('local links and line bounds',not link_errors,{'documents':len(docs),'local_link_occurrences':links,'errors':link_errors})
hashes={str(V/'nonlinear_bv_cubic_bridge.py'):'681620ab1adac9ae27fc4b458191cace42ca91817d983d8c44b3ade6c63831ca',str(V/'nonlinear_bv_density_bridge.py'):'c7158d094332dfe1dad1b644ca1f789fbcff4916220778b1a05a913acdc7fa93',str(ROOT/'sources/Cattaneo-Schiavina-Selliah-1707.07764v1.pdf'):'202ac3c4e6a03e03e9b16bafe7c24b02b517c78aaf5c517237d3497a9ce17b0f'}
for freeze in [A/'FREEZE.md',A/'BEREZINIAN_FREEZE.md']:
    for path,sha in re.findall(r'\| \[[^\]]+\]\(<([^>]+)>\) \| `([0-9a-f]{64})` \|',freeze.read_text()):hashes[path]=sha
for manifest in [B/'independent_result.sha256',B/'typeII-berezinian-followup/frozen.sha256']:
    for line in manifest.read_text().splitlines():
        sha,name=line.split(maxsplit=1);hashes[str(manifest.parent/name)]=sha
bad_hashes=[p for p,sha in hashes.items() if hashlib.sha256(Path(p).read_bytes()).hexdigest()!=sha]
record('frozen source result and PDF hashes',not bad_hashes,{'checked':len(hashes),'mismatches':bad_hashes})
copies=[]
for archive in [P,D]:
    for item in json.loads((archive/'copy-manifest.json').read_text()):
        src=Path(item['source']).read_bytes();dst=Path(item['copy']).read_bytes()
        copies.append({'copy':item['copy'],'passed':src==dst and hashlib.sha256(dst).hexdigest()==item['sha256']})
record('byte copies without rerunning',all(c['passed'] for c in copies),copies)
record('parent exact result groups',all((lambda r,n:r['all_passed'] and len(r['checks'])==n and all(c['passed'] for c in r['checks']))(json.loads((p/'result.json').read_text()),n) for p,n in [(P,14),(D,8)]),{'group_counts':[14,8]})
returns=[P/'actual-server-return.json',D/'actual-server-return.json',A/'all_checks_final_output.json',A/'berezinian_followup_output.json',A/'supplied_audit_auxiliary_output.json']
returned=[]
for path in returns:
    r=json.loads(path.read_text())['received']['value']['structuredContent']
    ok=r['ok'] and r['error'] is None and not r['truncated'] and not r['stdoutTruncated'] and not r['stderrTruncated'] and not r['warningsTruncated'] and not r['stderr'] and not r['warnings'] and not r['transportStderr']
    returned.append({'path':str(path),'passed':ok,'pass_labels':r['stdout'].count(': PASS'),'elapsedMs':r['elapsedMs']})
record('actual successful Sage return diagnostics',all(r['passed'] for r in returned) and returned[2]['pass_labels']==134 and returned[3]['pass_labels']==9 and returned[4]['pass_labels']==6,returned)
text=main.read_text();record('main math displays and critical scope',text.count(r'\[')==text.count(r'\]') and text.count(r'\(')==text.count(r'\)') and all(s in text for s in ['fixed **on-shell**','right','no remaining nilpotent','not a definition of an unregularized functional determinant','continuum anomaly calculation','boundary-frame data','second-order spectral-compression/master-equation defect']),{'display_pairs':text.count(r'\['),'inline_pairs':text.count(r'\('),'lines':len(text.splitlines())})
result={'scope':'Static archive/link/diagnostic audit, not a mathematical rerun, external-URL audit or historical-anchor sentence check.','all_passed':all(c['passed'] for c in checks),'checks':checks,'details':detail,'snapshot':[{'path':str(p),'sha256':hashlib.sha256(p.read_bytes()).hexdigest()} for p in docs]}
out=Path(tempfile.mkdtemp(prefix='nonlinear-bv-audit.',dir=V))
with (out/'result.json').open('x') as f:json.dump(result,f,indent=2);f.write('\n')
print(json.dumps({'result':str(out/'result.json'),'all_passed':result['all_passed'],'checks':checks,'local_links':links,'frozen_hashes':len(hashes)},indent=2))
raise SystemExit(0 if result['all_passed'] else 1)
