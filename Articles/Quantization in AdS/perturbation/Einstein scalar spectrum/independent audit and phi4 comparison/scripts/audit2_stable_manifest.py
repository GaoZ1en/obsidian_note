"""Record checked artifact versions and successful independent runs."""
import json,hashlib,subprocess,re
from pathlib import Path
OUT=Path('/Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/independent audit and phi4 comparison')
PKG=OUT/'sources/ADS3_Master_Research_Package'
pdf=Path('/Users/koishi/Desktop/todo/ADS3_Einstein_Scalar_Master_Note.pdf')
packpdf=PKG/'docs/ADS3_Einstein_Scalar_Master_Note.pdf'
def sha(p):return hashlib.sha256(p.read_bytes()).hexdigest()
txt1=subprocess.run(['pdftotext','-layout',str(pdf),'-'],check=True,stdout=subprocess.PIPE).stdout
txt2=subprocess.run(['pdftotext','-layout',str(packpdf),'-'],check=True,stdout=subprocess.PIPE).stdout
runs=[]
for stem in ['exact_checks','bivariate_checks','exact_remaining','limits_and_quintic','supplementary','cycle','phi4_22','phi4_galois7']:
    script=OUT/f'scripts/audit2_stable_{stem}.py';result=OUT/f'results/audit2_stable_{stem}.json'
    data=json.loads(result.read_text());assert data['all_passed']
    runs.append({'script':str(script),'script_sha256':sha(script),'result':str(result),'result_sha256':sha(result),'checks':len(data['checks']),'all_passed':True,'execution':'functions.mcp__sage__sage_run in a fresh Sage 10.9 kernel, exec of the complete recorded script'})
sources={str(PKG/p):sha(PKG/p) for p in ['document_source/exact_chapter.md','document_source/exact_appendices.md','document_source/finite_appendices.md','document_source/semiclassical/chapter9.md','document_source/semiclassical/chapter10.md','document_source/semiclassical/appendix_st.md','document_source/semiclassical/appendix_un.md','provenance/claim_register.json']}
manifest={'authoritative_pdf':str(pdf),'authoritative_pdf_sha256':sha(pdf),'packaged_pdf_sha256':sha(packpdf),'pdf_bytes_identical':pdf.read_bytes()==packpdf.read_bytes(),'full_layout_text_identical':txt1==txt2,'authoritative_layout_text_sha256':hashlib.sha256(txt1).hexdigest(),'packaged_layout_text_sha256':hashlib.sha256(txt2).hexdigest(),'visually_checked_pdf_pages':[72,74,78,175,179],'page_numbering':'These PDF page numbers equal printed page numbers.','runs':runs,'total_labelled_checks':sum(x['checks'] for x in runs),'sources':sources,'independence':'No manuscript engine or retained verifier was imported. The phi4 (2,2) calculation used only the requested pair sequence, without parent candidate matrices or results. The separately requested degree-seven Galois calculation used the parent-supplied polynomial, with physical identification explicitly left to the parent.','earlier_development_errors':'Sage coercion/matrix iteration/JSON serialization and reducible-polynomial API issues were corrected in these new scripts. Listed final executions completed with all assertions passing.','source_modifications':'none'}
report=OUT/'exact stable full proof audit.md';text=report.read_text()
assert all(ord(c)>=32 or c in '\n\t' for c in text)
coverage=re.findall(r'^\| ((?:EX|ST|UN)-\d\d) \|',text,re.M)
expected=[f'{family}-{i:02d}' for family,num in [('EX',9),('ST',11),('UN',7)] for i in range(1,num+1)]
assert len(coverage)==27 and sorted(coverage)==sorted(expected)
refs=dict(re.findall(r'^\[([^\]]+)\]: <([^>]+)>$',text,re.M))
for ref in re.findall(r'\]\[([^\]]+)\]',text): assert ref in refs,ref
for target in refs.values(): assert Path(target.split('#')[0]).is_file(),target
assert f"**{manifest['total_labelled_checks']} labelled assertions**" in text
path=OUT/'results/audit2_stable_manifest.json'
if path.exists(): assert json.loads(path.read_text())['sources']==sources
manifest['report']={'path':str(report),'sha256':sha(report),'claim_coverage':coverage,'all_27_ids_present':True,'all_reference_targets_exist':True,'control_characters_clean':True}
path.write_text(json.dumps(manifest,indent=2)+'\n')
print(json.dumps({'result':str(path),'text_identical':txt1==txt2,'total_checks':manifest['total_labelled_checks'],'all27_claims':True,'report_links_valid':True},indent=2))
