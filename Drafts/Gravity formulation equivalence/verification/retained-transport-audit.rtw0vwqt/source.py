"""Static evidence audit for the retained BV canonical-transport stage.
No mathematical kernel is run. Every invocation makes a new output directory.
"""
from pathlib import Path
import json, hashlib, re, tempfile

BASE=Path(__file__).resolve().parent.parent
A=BASE/'reviews/canonical-stationary-independent-20261031-dRFsPy'
B=BASE/'reviews/nonlinear-map-path-independent-20261031.WhijVYou'
C=BASE/'reviews/analytic-hinfty-bv-20261031.J0xtad'
BA=B/'note19-supplied-audit.RQWvHW'
P=BASE/'verification/retained-bv-canonical-parent.imkct9s5'
NOTE=BASE/'19 Retained BV canonical transport on complete AdS.md'
OUT=Path(tempfile.mkdtemp(prefix='retained-transport-audit.',dir=BASE/'verification'))
checks=[]; details={}
def sha(p): return hashlib.sha256(p.read_bytes()).hexdigest()
def load(p): return json.loads(p.read_text())
def check(label,condition,detail=None):
    checks.append({'label':label,'passed':bool(condition)})
    if detail is not None: details[label]=detail

# Existing link targets and range bounds, not historical sentence identity.
docs=[NOTE,BASE/'README.md',BASE/'00 Research report.md',BASE/'04 Comparison and open problems.md',BASE/'verification/README.md',BASE/'reviews/Independent reviews.md',P/'README.md',A/'proof.md',A/'inputs_and_diagnostics.md',A/'supplied-text-audit-note19-20261031.md',B/'derivation.md',B/'evidence_log.md',BA/'audit.md',BA/'supplement.md',C/'REPORT.md',C/'EVIDENCE.md']
link_count=0; failures=[]
for doc in docs:
    text=doc.read_text()
    for dest in re.findall(r'\]\(<([^>]+)>\)',text):
        if dest.startswith(('https://','http://','mailto:')): continue
        link_count+=1
        path,sep,anchor=dest.partition('#')
        target=Path(path)
        if not target.is_absolute(): target=Path('/Users/koishi/Documents/Note')/target
        if not target.exists(): failures.append([str(doc),dest,'missing']); continue
        if sep and re.fullmatch(r'L\d+(?:-L?\d+)?',anchor):
            numbers=[int(n) for n in re.findall(r'\d+',anchor)]
            if not target.is_file() or max(numbers)>len(target.read_text().splitlines()) or min(numbers)<1:
                failures.append([str(doc),dest,'range'])
check('local links and line bounds',not failures,{'documents':len(docs),'links':link_count,'failures':failures})

# Frozen artifacts and original byte copies.
hash_records=[]
def verify_file(path,expected):
    actual=sha(path)
    hash_records.append({'path':str(path),'expected':expected,'actual':actual,'passed':actual==expected})
for rec in load(A/'freeze_manifest.json')['deliverables']:
    verify_file(Path(rec['path']),rec['sha256'])
for rec in load(C/'FINAL-FREEZE.json')['records']:
    verify_file(C/rec['file'],rec['sha256'])
for folder,name in [(B,'SHA256SUMS.initial'),(BA,'SHA256SUMS.audit')]:
    for line in (folder/name).read_text().splitlines():
        digest,rel=line.split(None,1)
        verify_file(folder/rel,digest)
for rec in load(P/'copy-manifest.json'):
    verify_file(P/rec['file'],rec['sha256'])
check('all frozen deliverable hashes',all(r['passed'] for r in hash_records),{'count':len(hash_records),'records':hash_records})
copy_records=[]
for rec in load(P/'copy-manifest.json'):
    copy_records.append({'copy':rec['file'],'same_bytes':(P/rec['file']).read_bytes()==Path(rec['source']).read_bytes()})
copy_records += [
 {'copy':'working mathematical source','same_bytes':(P/'source.py').read_bytes()==(BASE/'verification/retained_bv_canonical_jet_checks.py').read_bytes()},
 {'copy':'input note16 unchanged','same_bytes':(C/'source16.md').read_bytes()==(BASE/'16 Nonlinear BV map and finite density transport.md').read_bytes()},
 {'copy':'input note18 unchanged','same_bytes':(C/'source18.md').read_bytes()==(BASE/'18 Complete AdS BV contraction and tree transfer.md').read_bytes()},
 {'copy':'supplied snapshot identity','same_bytes':sha(BA/'supplied-note19-snapshot.md')=='c8b23c76b1e7526b4cf4c284f01778ac9a8d5fbdfd9baafbb6fd75903ff034f9'},
 {'copy':'supplied snapshot v2 identity','same_bytes':sha(BA/'supplied-note19-snapshot-v2.md')=='d3c280cabfb70cfab0f1a6d862839fc73bcbc8bb36b05e53f934d7eadfa257a0'}]
check('source and actual-return byte identities',all(r['same_bytes'] for r in copy_records),copy_records)

result_specs=[(P/'result.json',18),(P/'initial-success-result.json',15),(A/'sage_actual_output.json',217),(A/'bitmask_actual_output.json',212),(A/'inverse_actual_output.json',185),(B/'results.json',127),(BA/'audit_results.json',8)]
counts=[]
for file,expected in result_specs:
    obj=load(file); cs=obj['checks']
    counts.append({'path':str(file),'actual':len(cs),'expected':expected,'passed':len(cs)==expected and obj['all_passed'] is True and all(c['passed'] is True for c in cs)})
check('seven successful result label counts',all(c['passed'] for c in counts),counts)

# Read the server's structured payload, not a fabricated diagnostic summary.
envelope_specs=[(P/'actual-server-return.json',0),(P/'initial-success-tool-envelope.json',0),(A/'sage_kernel_transport.json',0),(A/'bitmask_kernel_transport.json',6),(A/'inverse_kernel_transport.json',0),(B/'successful_tool_return.json',1),(BA/'successful_tool_return.json',0)]
envelopes=[]
for file,expected_warnings in envelope_specs:
    obj=load(file)
    d=obj['received']['value']['structuredContent']
    good=d['ok'] is True and d['error'] is None and not obj.get('upstreamTruncated',False)
    good=good and all(not d.get(k,False) for k in ['truncated','stdoutTruncated','stderrTruncated','warningsTruncated'])
    good=good and d['stderr']=='' and d['transportStderr']==[] and len(d['warnings'])==expected_warnings
    for field in ['result','stdout','stderr']:
        if field+'Sha256' in d:
            good=good and hashlib.sha256(d[field].encode()).hexdigest()==d[field+'Sha256']
    for warning in d['warnings']:
        good=good and not warning['truncated'] and hashlib.sha256(warning['message'].encode()).hexdigest()==warning['sha256']
    good=good and hashlib.sha256(obj['arguments']['code'].encode()).hexdigest()==d['codeSha256']
    envelopes.append({'path':str(file),'passed':good,'warning_count':len(d['warnings']),'warnings':d['warnings'],'elapsed_ms':d['elapsedMs'],'stdout':d['stdout']})
check('actual success diagnostics and string hashes',all(e['passed'] for e in envelopes),envelopes)

# Coverage requires explicit nonzero expressions, not just a zero residual label.
nonzero=[]
for file in [A/'sage_actual_output.json',A/'bitmask_actual_output.json']:
    outputs={o['label']:o['value'] for o in load(file)['outputs']}
    nonzero.append(outputs['UV bracket on graph']!='0' and outputs['naive projection defect']!='0')
b=load(B/'results.json'); ba=load(BA/'audit_results.json')
nonzero.extend([b['term_counts']['cubic_bridge']==126,b['term_counts']['quartic_G4S2']==456,ba['Gamma13_numerator_terms']==348,ba['Gamma2_numerator_terms']==348,all(c.get('nonzero_terms',1)>0 for c in ba['checks'])])
check('sensitive nonzero UV and gravitational coverage',all(nonzero))

text=NOTE.read_text()
delimiters={s:text.count(s) for s in ['\\[','\\]','\\(','\\)']}
check('synthesis delimiters and explicit scope',delimiters['\\[']==delimiters['\\]'] and delimiters['\\(']==delimiters['\\)'] and all(s in text for s in ['continuous homogeneous graded polynomials','not an assertion of Hilbert-tensor','same-radius','coefficient of \\(t\\)','not a solution of every UV equation','even ghost-antifield slots symmetric']),delimiters)

result={'all_passed':all(c['passed'] for c in checks),'checks':checks,'details':details,'synthesis_sha256':sha(NOTE),'source_sha256':sha(Path(__file__)),'scope':'static archive, exact-copy, diagnostic and declared-coverage checks; no mathematical kernel rerun, no certification of historical line-anchor sentence identities'}
(OUT/'result.json').write_text(json.dumps(result,indent=2)+'\n')
(OUT/'source.py').write_bytes(Path(__file__).read_bytes())
summary={k:v for k,v in result.items() if k!='details'}
summary['link_count']=link_count; summary['hash_count']=len(hash_records); summary['output']=str(OUT)
(OUT/'summary.json').write_text(json.dumps(summary,indent=2)+'\n')
print(json.dumps(summary,indent=2))
if not result['all_passed']: raise AssertionError('Static evidence audit failed; inspect saved result.')
