#!/usr/bin/env python3
"""Narrow static audit of the actual elliptic-gravity stage; no kernels run."""
from pathlib import Path
import argparse, hashlib, json, re, tempfile
from datetime import datetime
from zoneinfo import ZoneInfo
ROOT=Path('/Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence')
ARCH=ROOT/'verification/geometric-cs-elliptic-parent.9nlbbwl1'
MAIN=ROOT/'15 Elliptic gravitational CS determinant and gauge phase.md'
p=argparse.ArgumentParser()
p.add_argument('--review',type=Path,action='append',default=[])
a=p.parse_args()
docs=[MAIN,ROOT/'README.md',ROOT/'00 Research report.md',ROOT/'04 Comparison and open problems.md',ROOT/'verification/README.md',ROOT/'reviews/Independent reviews.md',ARCH/'README.md']+a.review
checks=[]
def check(label,passed,detail=None):
    assert type(passed) is bool
    checks.append(dict(label=label,passed=passed,detail=detail))
def sha(path):return hashlib.sha256(path.read_bytes()).hexdigest()
links=0;bad=[]
for doc in docs:
    for target in re.findall(r'\]\(<([^>\n]+)>\)',doc.read_text()):
        if re.match(r'^[a-zA-Z][a-zA-Z0-9+.-]*://',target):continue
        base,sep,frag=target.partition('#');path=Path(base)
        if not path.is_absolute():path=doc.parent/path
        path=path.resolve();links+=1
        if not path.exists():bad.append([str(doc),target,'missing']);continue
        bounds=re.fullmatch(r'L(\d+)(?:-L?(\d+))?',frag) if sep else None
        if bounds and path.is_file():
            lo=int(bounds[1]);hi=int(bounds[2] or lo)
            if not 1<=lo<=hi<=len(path.read_text().splitlines()):bad.append([str(doc),target,'line bounds'])
check('local link existence and numerical line bounds',not bad,dict(documents=len(docs),links=links,bad=bad))
expected={'executed-source.wl':'5e2978918c580423a2a5bec2c6a5b80db209de6e08f1f1449d5534503c505379','preview.txt':'4703789bf9bd84fb399fa16959868e563be8308b4bba5959e0e81b302326c2b5','result.wxf':'479a3ba8e609ec077ff2356920f2beda8fb00f8e312818ea4bfd25ab214f35d3','actual-server-return.json':'8b8c1b77fa4e1173f698046f3015a82b44eccf57d3da1246aa0af611861c18c6'}
hashes=[dict(file=str(ARCH/n),expected=h,actual=sha(ARCH/n)) for n,h in expected.items()]
check('four fixed archive hashes',all(x['expected']==x['actual'] for x in hashes),hashes)
manifest=json.loads((ARCH/'copy-manifest.json').read_text())
copies=[dict(source=x['source'],copy=x['copy'],byte_equal=Path(x['source']).read_bytes()==Path(x['copy']).read_bytes()) for x in manifest]
check('four archived copies retain original bytes',len(copies)==4 and all(x['byte_equal'] for x in copies),copies)
raw=json.loads((ARCH/'actual-server-return.json').read_text());v=raw['received']['value']['structuredContent']
check('actual xAct success and diagnostics',v['ok'] is True and v['profile']=='components' and not raw['upstreamTruncated'] and not v['truncated'] and not v['messages'] and not v['loadErrors'] and not v['loadMessages'] and not v['transportStderr'] and '"AllResidualsZero" -> True' in v['result'],v)
text=(ARCH/'preview.txt').read_text()
labels=[x for x in re.findall(r'"([^\"]+)" ->',text.split('"AllResidualsZero"')[0]) if x!='Residuals']
check('eighteen recorded groups and clean flags',len(labels)==18 and all(x in text for x in ['"AllResidualsZero" -> True','"Failed" -> False','"UnevaluatedComputations" -> False','"Messages" -> {}','14.3.0']),labels)
text=MAIN.read_text()
check('main display and aligned delimiters balance',text.count('\\[')==text.count('\\]') and text.count('\\begin{aligned}')==text.count('\\end{aligned}'))
check('precise phase and scope strings retained','-\\frac{i\\mu(\\mu^2+36)}{32\\pi}' in text and 'Gaussian Nielsen identity' in text and 'not a change of physical gravity' in text and 'not a hard-wall' in text,{'scope':'Static string presence, not a mathematical proof.'})
out=Path(tempfile.mkdtemp(prefix='geometric-cs-elliptic-audit.',dir=ROOT/'verification'))
result=dict(scope='Static stage audit only; no mathematical kernel or external URL fetch.',time=datetime.now(ZoneInfo('Asia/Shanghai')).isoformat(),checks=checks,all_passed=all(x['passed'] for x in checks),auditor_sha256=sha(Path(__file__)),documents=[dict(path=str(x),sha256=sha(x)) for x in docs])
with (out/'result.json').open('x') as f:json.dump(result,f,indent=2);f.write('\n')
print(json.dumps(dict(result=str(out/'result.json'),all_passed=result['all_passed'],checks=len(checks),documents=len(docs),links=links),indent=2))
raise SystemExit(0 if result['all_passed'] else 1)
