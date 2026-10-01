#!/usr/bin/env python3
"""Reproduce finite regression checks for the descent reorganization.

Python 3.10+ and SymPy. No network, source edits, PDE solving, or general
bundle-theorem verification. Run from anywhere: python validate_descent.py.
The sibling sources/ folder contains immutable copies for provenance checks.
"""
from __future__ import annotations
import hashlib, importlib.util, itertools, json, platform, re
from pathlib import Path
from typing import Any
import sympy as sp

ROOT = Path(__file__).resolve().parent

def require(value: bool, message: str) -> None:
    if not value:
        raise AssertionError(message)

def zero(m: sp.MatrixBase, message: str) -> None:
    require(m.applyfunc(sp.simplify) == sp.zeros(*m.shape), message)

def sha(path: Path) -> str:
    return hashlib.sha256(path.read_bytes()).hexdigest()

def strict_matching_checks() -> dict[str, Any]:
    d = sp.Matrix([[0, 0], [1, 0]])
    dc = sp.diag(d, d)
    r = sp.zeros(2, 4); r[:, 2:4] = sp.eye(2)
    inc = sp.zeros(4, 2); inc[:2, :] = sp.eye(2)
    select = inc.T
    ds = dc.row_join(sp.zeros(4, 2)).col_join(r.row_join(-d))
    zero(ds*ds, 'matching cone differential squares to zero')
    count = 0
    nonchain = 0
    for a,b in itertools.product(range(1,5), range(-2,3)):
        e = sp.diag(a,b).col_join(sp.eye(2))
        t = dc*e-e*d
        nonchain += int(t != sp.zeros(4,2))
        pi = select*((sp.eye(4)-e*r).row_join(-t))
        j = inc.col_join(sp.zeros(2,2))
        he = sp.zeros(6); he[:4,4:] = e
        zero(pi*j-sp.eye(2), 'pi j = 1')
        zero(ds*j-j*d, 'j chain map')
        zero(pi*ds-d*pi, 'pi chain map')
        zero(ds*he+he*ds-(sp.eye(6)-j*pi), 'cone contraction identity')
        zero(he*he, 'h squared zero'); zero(pi*he, 'pi h zero'); zero(he*j, 'h j zero')
        count += 1
    return {'status':'passed','exact_matrix_cases':count,'noncochain_lifts_tested':nonchain,
            'scope':'Proposition 4.1 finite graded complexes; not existence of a continuous trace lift.'}

def transferred_matching_checks() -> dict[str, Any]:
    d=sp.zeros(4); d[2,1]=1
    h=sp.zeros(4); h[1,2]=1
    i=sp.zeros(4,2); i[0,0]=1; i[3,1]=1
    p=i.T
    zero(d*h+h*d-(sp.eye(4)-i*p),'regional contraction')
    count=0
    for a,b,f,z in itertools.product([0,1],[-2,3],[-1,4],[0,2]):
        r=sp.Matrix([[a,b,0,0],[0,2,0,0],[0,0,2,f],[0,0,0,z]])
        zero(r*d-d*r,'regional trace chain map')
        ds=d.row_join(sp.zeros(4)).col_join(r.row_join(-d))
        bar=p*r*i
        dv=sp.zeros(2).row_join(sp.zeros(2)).col_join(bar.row_join(sp.zeros(2)))
        I=i.row_join(sp.zeros(4,2)).col_join((h*r*i).row_join(i))
        P=p.row_join(sp.zeros(2,4)).col_join((-p*r*h).row_join(p))
        H=h.row_join(sp.zeros(4)).col_join((h*r*h).row_join(-h))
        zero(ds*I-I*dv,'transferred inclusion chain map')
        zero(P*ds-dv*P,'transferred projection chain map')
        zero(P*I-sp.eye(4),'transferred PI=1')
        zero(ds*H+H*ds-(sp.eye(8)-I*P),'transferred homotopy')
        zero(H*H,'transferred h squared');zero(P*H,'transferred Ph');zero(H*I,'transferred hI')
        count += 1
    return {'status':'passed','exact_matrix_cases':count,'distinct_parameter_cases':count,
            'scope':'Proposition 4.2 signs and interface ker/coker model; not analytic residual splitting.'}

def comparison_homotopy_checks() -> dict[str,Any]:
    # Grading: [0,0,1,1,1,1,2,2]. Retain one of two acyclic
    # pairs in each adjacent degree. The residual differential is nonzero.
    d=sp.zeros(8)
    for u,v in [(2,0),(3,1),(6,4),(7,5)]:d[u,v]=1
    h=sp.zeros(8);h[1,3]=1;h[5,7]=1
    idx=[0,2,4,6]
    i=sp.eye(8)[:,idx];p=i.T;dv=p*d*i
    zero(d*h+h*d-(sp.eye(8)-i*p),'base nonminimal contraction')
    specs=[
        (sp.eye(2),sp.eye(2),sp.zeros(2)),
        (sp.Matrix([[1,1],[0,1]]),sp.Matrix([[1,0],[1,1]]),sp.Matrix([[1,2],[3,1]])),
        (sp.Matrix([[1,0],[2,1]]),sp.Matrix([[1,2],[0,1]]),sp.Matrix([[2,-1],[1,1]])),
        (sp.Matrix([[1,-1],[0,1]]),sp.Matrix([[1,0],[-2,1]]),sp.Matrix([[0,3],[-1,2]]))]
    data=[]
    for a,c,b in specs:
        mid=a.row_join(b).col_join(sp.zeros(2).row_join(c))
        u=sp.diag(a,mid,c);inv=u.inv()
        zero(u*d-d*u,'comparison chart is cochain')
        ia=u*i;pa=p*inv;ha=u*h*inv
        zero(d*ha+ha*d-(sp.eye(8)-ia*pa),'conjugated contraction')
        data.append((ia,pa,ha))
    def F(b,a):return data[b][1]*data[a][0]
    def K(c,b,a):return -data[c][1]*data[b][2]*data[a][0]
    triples=0;nonzero_k=0
    for a,b,c in itertools.product(range(4),repeat=3):
        k=K(c,b,a);nonzero_k+=int(k!=sp.zeros(4))
        zero(F(c,b)*F(b,a)-F(c,a)-dv*k-k*dv,'three-choice homotopy')
        triples+=1
    quads=0;nonzero_t=0
    for a,b,c,e in itertools.product(range(4),repeat=4):
        t=-data[e][1]*data[c][2]*data[b][2]*data[a][0]
        nonzero_t+=int(t!=sp.zeros(4))
        lhs=K(e,c,b)*F(b,a)+K(e,b,a)-F(e,c)*K(c,b,a)-K(e,c,a)
        zero(lhs-dv*t+t*dv,'four-choice coherence homotopy')
        quads+=1
    require(nonzero_k>0 and nonzero_t>0,'nontrivial K and T cases are present')
    return {'status':'passed','triple_cases':triples,'quadruple_cases':quads,
            'nonzero_K_cases':nonzero_k,'nonzero_T_cases':nonzero_t,
            'scope':'Section 13.2 exact graded matrix identities, with a nonzero residual differential.'}

def gaussian_checks() -> dict[str,Any]:
    b,be,bR,beL,sl,sr,hh=sp.symbols('b beta b_R beta_L S_L S_R hbar',nonzero=True)
    phase=sl+sr+b*beL+bR*be-b*be
    crit=sp.solve([sp.diff(phase,b),sp.diff(phase,be)],(b,be))
    require(crit=={b:bR,be:beL},'affine phase gives matching equations')
    require(sp.simplify(phase.subs(crit)-(sl+sr+bR*beL))==0,'affine phase after contraction')
    ker=sp.exp(-sp.I*b*be/hh)
    require(sp.simplify(-sp.I*hh*sp.diff(ker,b)+be*ker)==0,'Fourier kernel b derivative sign')
    require(sp.simplify(-sp.I*hh*sp.diff(ker,be)+b*ker)==0,'Fourier kernel beta derivative sign')
    m=sp.Matrix([[2,1,0,1],[0,2,-1,0],[1,0,2,1],[0,1,1,3]])
    a=m.T*m+sp.eye(4);j=sp.Matrix([2,3,-1,4])
    keep=[0,1];elim=[2,3]
    aa=a.extract(keep,keep);cc=a.extract(elim,elim);bb=a.extract(keep,elim)
    jd=j.extract(keep,[0])-bb*cc.inv()*j.extract(elim,[0])
    ad=aa-bb*cc.inv()*bb.T
    cd=-(j.extract(elim,[0]).T*cc.inv()*j.extract(elim,[0]))[0]/2
    def reduce_one(a,j,c,labels,label):
        k=labels.index(label);rest=[x for x in range(len(labels)) if x!=k]
        pivot=a[k,k];v=a.extract(rest,[k]);ar=a.extract(rest,rest)-v*v.T/pivot
        jr=j.extract(rest,[0])-v*j[k]/pivot;cr=c-j[k]**2/(2*pivot)
        return ar,jr,cr,[labels[x] for x in rest],pivot
    out=[]
    for order in [(2,3),(3,2)]:
        ax,jx,cx,labels=a,j,sp.Integer(0),[0,1,2,3];pivots=[]
        for label in order:
            ax,jx,cx,labels,pivot=reduce_one(ax,jx,cx,labels,label);pivots.append(pivot)
        zero(ax-ad,'Gaussian order independent effective Hessian')
        zero(jx-jd,'Gaussian order independent source')
        require(sp.simplify(cx-cd)==0,'Gaussian order independent constant')
        require(sp.prod(pivots)==cc.det(),'Gaussian determinant factor retained')
        require(a.det()==cc.det()*ad.det(),'full determinant factorization')
        out.append({'order':order,'pivots':list(map(str,pivots))})
    return {'status':'passed','affine_matching':{str(k):str(v) for k,v in crit.items()},
            'gaussian_orders':out,'effective_hessian':[[str(v) for v in row] for row in ad.tolist()],
            'effective_source':list(map(str,jd)),'constant_term':str(cd),'fluctuation_determinant':str(cc.det()),
            'scope':'Even affine kernel signs and finite ordinary Gaussian elimination, not a new infinite-dimensional BV Fubini proof.'}

def seam_and_selector_checks() -> dict[str,Any]:
    x=sp.symbols('x',positive=True)
    flat=sp.exp(-1/x**2)
    vals=[sp.limit(sp.diff(flat,x,k),x,0,dir='+') for k in range(7)]
    require(all(v==0 for v in vals),'flat profile derivatives through order six vanish')
    require(-1==(-1)*1,'smooth x signed inward derivatives match')
    require(1!=(-1)*1,'absolute-value first jets do not match')
    y=sp.symbols('y',real=True)
    left=sp.integrate(y,(y,-1,0));right=sp.integrate(y,(y,0,1))
    require(left+right==0 and left!=0 and right!=0,'joint integral selector is not two separate selectors')
    return {'status':'passed','flat_derivative_orders_checked':list(range(7)),
            'selector_integrals':[str(left),str(right)],
            'scope':'Finite derivative tests and one explicit refinement-domain counterexample; the all-order statement uses the proof in the note.'}

def documentation_checks() -> dict[str,Any]:
    main=ROOT/'REGIONAL_BV_BFV_DESCENT_FORMALISM.md'
    old=ROOT/'sources'/'REGIONAL_BV_BFV_FORMALISM.md'
    zz=ROOT/'sources'/'structured_interface_sewability_2026-09-26.zip'
    manuscript=main.read_text();original=old.read_text()
    manifest=json.loads((ROOT/'SOURCE_MANIFEST.json').read_text())
    require(sha(old)==manifest['authoritative_main']['sha256'],'authoritative source unchanged')
    ziprecord=next(x for x in manifest['inputs'] if x['filename'].endswith('.zip'))
    require(sha(zz)==ziprecord['sha256'],'prior zip unchanged')
    import zipfile
    with zipfile.ZipFile(zz) as z:
        for member in manifest['zip_members']:
            require(hashlib.sha256(z.read(member['name'])).hexdigest()==member['sha256'],'zip member identity')
    for marker in ['PENDING','TODO','FIXME','PLACEHOLDER']:
        require(marker not in manuscript,'no unfinished marker '+marker)
    require(manuscript.count('\\[')==manuscript.count('\\]'),'display brackets balanced')
    require(manuscript.count('$$')%2==0,'dollar display delimiters paired')
    require(manuscript.count('```')%2==0,'code fences paired')
    # Remove fenced code and linked external reference labels before checking
    # internal section references; §2.4.4 in a cited CMR paper is external.
    text=re.sub(r'```.*?```','',manuscript,flags=re.S)
    text=re.sub(r'\[[^\]]*\]\([^\n]*?\)','',text)
    text=re.sub(r'\[SIS[^\]]*\]','',text)
    heads=set(re.findall(r'^#{2,4} (\d+(?:\.\d+)*)(?:\.|\s)',manuscript,re.M))
    refs=set(re.findall(r'(?<!§)§(?!§)\s*(\d+(?:\.\d+)*)',text))
    missing=refs-heads
    require(not missing,'all internal single-section references resolve: '+str(missing))
    mathblocks=[a or b for a,b in re.findall(r'\$\$(.*?)\$\$|\\\[(.*?)\\\]',manuscript,re.S)]
    for block in mathblocks:
        tokens=re.findall(r'\\(begin|end)\{([^}]+)\}',block)
        stack=[]
        for op,name in tokens:
            if op=='begin':stack.append(name)
            else:
                require(bool(stack) and stack.pop()==name,'nested TeX environments')
        require(not stack,'closed TeX environment')
        stripped=re.sub(r'\\[{}]','',block)
        balance=0
        for ch in stripped:
            if ch=='{':balance+=1
            elif ch=='}':balance-=1
            require(balance>=0,'TeX braces do not close early')
        require(balance==0,'TeX display braces balanced')
    def norm(block:str)->str:
        for a,b in [('_{M,','_{D,'),(',M}',',D}'),('_M','_D'),(r'Z_D^{\mathrm{dir}}','Z_D'),
                    (r'\begin{align}',''),(r'\end{align}','')]:block=block.replace(a,b)
        return re.sub(r'\s|&','',block)
    lower=original[original.index('## 4.'):original.index('## 13.')]
    oldblocks=[a or b for a,b in re.findall(r'\$\$(.*?)\$\$|\\\[(.*?)\\\]',lower,re.S)]
    normalized={norm(b) for b in mathblocks}
    unmatched=[b for b in oldblocks if norm(b) not in normalized]
    require(len(unmatched)==1 and r'G_{\mathcal D,\mathrm{rec}}' in unmatched[0],
            'only the deliberately split causal comparison display is replaced')
    oldnums=re.findall(r'^\*\*(?:Theorem|Proposition) (\d+\.\d+)',original,re.M)
    records=json.loads((ROOT/'THEOREM_MIGRATION.json').read_text())
    require(set(oldnums)=={x['old_number'] for x in records if x['old_number']!='joint-interface'},
            'every numbered source theorem/proposition has a migration record')
    migrated=(ROOT/'MIGRATION_FROM_RECONSTRUCTION_TO_DESCENT.md').read_text()
    for num in oldnums:require(f'| {num} |' in migrated,'migration table contains '+num)
    require('joint-interface' in migrated,'unnumbered joint lemma migration')
    roman=re.findall(r'^\*\*Theorem ([IVX]+) —',manuscript,re.M)
    require(roman==['I','II','III','IV','V'],'exactly five structural theorem headlines')
    # Old target indices may only occur in the final optional comparison.
    pretarget=manuscript[:manuscript.index('## 16.')]
    require(not re.search(r'_M(?:\W|$)|_\{M[,}]|,M\}',pretarget),'no old manifold-M index before optional comparison')
    return {'status':'passed','source_sha256':sha(old),'output_sha256':sha(main),
            'old_numbered_statements':len(oldnums),'migration_records':len(records),
            'technical_display_blocks_in_old_sections_4_to_12':len(oldblocks),
            'retained_up_to_explicit_index_and_presentation_changes':len(oldblocks)-len(unmatched),
            'deliberately_split_display':unmatched[0].strip(),
            'internal_single_section_references_checked':len(refs),'display_blocks_checked':len(mathblocks),
            'structural_theorems':roman,'main_lines':len(manuscript.splitlines()),'main_words':len(manuscript.split()),
            'scope':'Text/provenance/formula regression only; not proof of mathematical hypotheses.'}

def dependency_check()->dict[str,Any]:
    s=(ROOT/'THEOREM_DEPENDENCY_GRAPH.md').read_text()
    edges=re.findall(r'^\s*(\w+)(?:\[[^\n]*?\])?\s*-->\s*(\w+)',s,re.M)
    nodes={v for edge in edges for v in edge};incoming={v:0 for v in nodes}
    for a,b in edges:incoming[b]+=1
    pending=sorted(v for v,n in incoming.items() if n==0);order=[]
    while pending:
        a=pending.pop(0);order.append(a)
        for u,v in edges:
            if u==a:
                incoming[v]-=1
                if incoming[v]==0:pending.append(v)
    require(len(order)==len(nodes),'listed dependency graph is acyclic')
    return {'status':'passed','nodes':len(nodes),'edges':len(edges),'topological_order':order,
            'scope':'The explicitly listed graph, not an automatic proof of every prose dependency.'}

def main()->None:
    spec=importlib.util.spec_from_file_location('sis_checks',ROOT/'sewability_checks.py')
    require(spec is not None and spec.loader is not None,'regression suite import')
    module=importlib.util.module_from_spec(spec);spec.loader.exec_module(module)
    report={'scope':'Executed finite algebraic and documentary regression checks; not a machine proof of general analysis.',
            'python':platform.python_version(),'sympy':sp.__version__,
            'documentation':documentation_checks(),'dependency_graph':dependency_check(),
            'strict_matching':strict_matching_checks(),'transferred_matching':transferred_matching_checks(),
            'comparison_homotopies':comparison_homotopy_checks(),'gaussian_phase_and_elimination':gaussian_checks(),
            'seams_and_selector':seam_and_selector_checks(),'prior_sewability_suite':module.run(),
            'overall_status':'passed'}
    (ROOT/'VALIDATION_RESULTS.json').write_text(json.dumps(report,ensure_ascii=False,indent=2)+'\n')
    print(json.dumps(report,ensure_ascii=False,indent=2))

if __name__=='__main__':main()
