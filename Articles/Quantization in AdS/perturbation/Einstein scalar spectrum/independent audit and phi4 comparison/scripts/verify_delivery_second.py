"""Read-only input checks and evidence/link integrity for the second review.
Does not execute validators again and is not a theorem checker.
"""
from pathlib import Path
import json,hashlib,re,zipfile,ast,urllib.parse
ROOT=Path(__file__).resolve().parents[1]
sha=lambda p:hashlib.sha256(Path(p).read_bytes()).hexdigest()
old=json.loads((ROOT/'results/delivery_integrity.json').read_text())
issues=[]
for rel,meta in old['fingerprints'].items():
    if rel=='README.md':continue
    if sha(ROOT/rel)!=meta['sha256']:issues.append(('old_snapshot_changed',rel))
pdf=Path('/Users/koishi/Desktop/todo/ADS3_Einstein_Scalar_Master_Note.pdf')
archive=Path('/Users/koishi/Downloads/ADS3_Master_Research_Package.zip')
assert sha(pdf)=='97d9ea4ee42dc0443104c71bfdd12aaea28b39528d9b56d899de9e283464b9bc'
assert sha(archive)=='1ceeade39aa34ff73660ce0cebd344b0241ac3be17830b91843ee58cc467e799'
count=0
with zipfile.ZipFile(archive) as z:
 for item in z.infolist():
    if item.is_dir():continue
    p=ROOT/'sources'/item.filename
    if not p.is_file():issues.append(('archive_member_missing',str(p)));continue
    if hashlib.sha256(z.read(item)).hexdigest()!=sha(p):issues.append(('archive_member_changed',str(p)))
    count+=1
new_notes=['cluster full proof audit.md','semiclassical full proof audit.md','phi4 arbitrary N spectrum.md','full block closure audit.md','phi4 further structures.md','reviews/adjacent contact independent review.md','reviews/full block independent review.md','exact stable full proof audit.md','phi4 stable spectra and resonances.md','finite construction proof audit.md','claim coverage second review.md','second review and new phi4 results.md']
notes=[ROOT/x for x in old['fingerprints'] if x.endswith('.md')]+[ROOT/x for x in new_notes]
files=set(notes);links=0
for p in notes:
    text=p.read_text();
    if any(ord(c)<32 and c not in '\n\r\t' for c in text):issues.append(('control_character',str(p)))
    targets=re.findall(r'\]\(<([^>]+)>\)',text)+re.findall(r'^\[[^\]]+\]:\s*<?([^\n>]+)>?\s*$',text,re.M)
    for dest in targets:
        dest=dest.strip();dest=dest[1:] if dest.startswith('<') else dest
        if dest.startswith(('http:','https:','mailto:','#')):continue
        raw,_,frag=dest.partition('#');q=Path(urllib.parse.unquote(raw));q=q if q.is_absolute() else p.parent/q
        links+=1
        if not q.exists():issues.append(('link_missing',str(p),dest));continue
        if q.is_file() and q.is_relative_to(ROOT) and not q.is_relative_to(ROOT/'sources') and not q.is_relative_to(ROOT/'.venv') and not q.is_relative_to(ROOT/'.venv_portable'):files.add(q)
        if q.suffix in ['.md','.py','.wl','.json'] and re.fullmatch(r'L\d+(-L\d+)?',frag):
            last=int(re.findall(r'\d+',frag)[-1]);length=len(q.read_text().splitlines())
            if last>length:issues.append(('line_anchor_out_of_range',str(p),dest,length))
# Validate the exact final engine identity and selected authoritative certificate schemas.
r=json.loads((ROOT/'results/phi4_nbody_certification.json').read_text())
assert r['summary']['explicit_blocks']==602 and r['summary']['exact_boolean_checks']==8579 and r['summary']['failed']==0
assert r['metadata']['engine_sha256']==sha(ROOT/'scripts/phi4_nbody_spectrum.py')
for f in ['phi4_stable_certification_02.json','phi4_resonance_crossover.json','phi4_septic_certificate.json','review_closure2_checks_02.json']:
    d=json.loads((ROOT/'results'/f).read_text());assert d['status']=='passed'
for f in ['review_contact2_adjacent_exact.json','review_contact2_edge_exact.json']:
    d=json.loads((ROOT/'results'/f).read_text());assert d['all_passed'] is True
m=json.loads((ROOT/'results/audit2_stable_manifest.json').read_text())
for run in m['runs']:
    assert run['all_passed'] is True
    assert sha(run['script'])==run['script_sha256'] and sha(run['result'])==run['result_sha256']
for p in sorted(files):
    if p.suffix=='.json':json.loads(p.read_text())
    if p.suffix=='.py':ast.parse(p.read_text(),filename=str(p))
assert count==432
report={'status':'passed' if not issues else 'issues','scope':'File, links, syntax and saved-certificate integrity only; no new theorem verification','archive_members_unchanged':count,'input_pdf_unchanged':True,'original_archive_unchanged':True,'old_snapshot_unchanged_except_intentionally_appended_README':not any(x[0]=='old_snapshot_changed' for x in issues),'authored_notes':len(notes),'checked_local_links':links,'issues':issues,'final_phi4_engine_sha256':r['metadata']['engine_sha256'],'final_phi4_blocks':602,'final_phi4_exact_checks':8579,'stable_exact_checks':166,'fingerprints':{str(p.relative_to(ROOT)):{'sha256':sha(p),'bytes':p.stat().st_size} for p in sorted(files)}}
out=ROOT/'results/delivery_integrity_02.json'
if out.exists():raise FileExistsError(out)
out.write_text(json.dumps(report,ensure_ascii=False,indent=2)+'\n')
print(json.dumps({k:v for k,v in report.items() if k!='fingerprints'},ensure_ascii=False,indent=2));print(out)
if issues:raise SystemExit(1)
