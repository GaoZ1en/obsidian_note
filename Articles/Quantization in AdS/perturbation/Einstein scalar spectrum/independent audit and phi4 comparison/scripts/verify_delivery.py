"""Check source preservation, local links and authored deliverable fingerprints.
This does not validate mathematical theorems. It does not modify source materials.
"""
from pathlib import Path
import hashlib,json,re,zipfile,sys
from urllib.parse import unquote
ROOT=Path(__file__).resolve().parents[1]
sha=lambda p:hashlib.sha256(p.read_bytes()).hexdigest()
versions=json.loads((ROOT/'sources'/'input_versions.json').read_text())
assert sha(Path(versions['archive']))==versions['archive_sha256']
assert sha(Path(versions['supplied_pdf']))==versions['supplied_pdf_sha256']
archived=[]
with zipfile.ZipFile(versions['archive']) as z:
    for info in z.infolist():
        if info.is_dir(): continue
        rel=Path(info.filename)
        assert not rel.is_absolute() and '..' not in rel.parts
        p=ROOT/'sources'/rel
        assert p.is_file(),str(p)
        assert hashlib.sha256(z.read(info)).hexdigest()==sha(p),str(p)
        archived.append(str(rel))
notes=sorted(ROOT.glob('*.md'))+sorted((ROOT/'reviews').glob('*.md'))
link_issues=[];controls=[];links=0
for p in notes:
    text=p.read_text()
    controls += [(str(p),i,ord(c)) for i,c in enumerate(text) if ord(c)<32 and c not in '\n\t']
    for m in re.finditer(r'<(/Users/[^>]+)>',text):
        dest=m.group(1); path,_,frag=dest.partition('#'); target=Path(unquote(path)); links+=1
        if not target.exists(): link_issues.append({'from':str(p),'missing':dest});continue
        lm=re.fullmatch(r'L(\d+)(?:-L(\d+))?',frag)
        if lm and target.is_file():
            end=int(lm.group(2) or lm.group(1))
            try: n=sum(1 for _ in target.open())
            except UnicodeDecodeError: n=end
            if end>n: link_issues.append({'from':str(p),'bad_line_anchor':dest,'lines':n})
assert not controls,controls
assert not link_issues,link_issues
r=json.loads((ROOT/'results'/'package_reproduction_02'/'reproduce_all_summary.json').read_text())
assert r['status']=='passed' and all(x['status']=='passed' for x in r['groups'])
for name in ['phi4_checks.json','phi4_checks_root_rerun.json']:
    data=json.loads((ROOT/'results'/name).read_text())
    assert data['summary']['total_checks']==978
    assert data['summary']['passed']==978 and data['summary']['failed']==0
    assert all(item['passed'] is True for item in data['checks'])
paths=sorted(set(notes+list((ROOT/'scripts').glob('*'))+list((ROOT/'figures').glob('*'))))
fingerprints={str(p.relative_to(ROOT)):{'sha256':sha(p),'bytes':p.stat().st_size} for p in paths if p.is_file()}
report={'status':'passed','scope':'File integrity and links only, not a theorem checker','archive_members_unchanged':len(archived),'input_pdf_unchanged':True,'original_archive_unchanged':True,'authored_notes':len(notes),'checked_local_links':links,'link_issues':link_issues,'control_characters':controls,'package_suites_passed':[g['name'] for g in r['groups']],'fingerprints':fingerprints,'python':sys.version}
out=ROOT/'results'/'delivery_integrity.json'
if out.exists(): raise FileExistsError('Use a new filename or preserve the previous integrity snapshot: '+str(out))
out.write_text(json.dumps(report,ensure_ascii=False,indent=2)+'\n')
print(json.dumps({k:v for k,v in report.items() if k not in ('fingerprints','python')},ensure_ascii=False))
