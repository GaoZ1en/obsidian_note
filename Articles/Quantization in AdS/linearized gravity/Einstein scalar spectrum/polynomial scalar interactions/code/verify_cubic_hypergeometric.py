#!/usr/bin/env sage -python
"""Independent radial-polynomial comparisons and exact non-even-Delta blocks."""
import argparse,hashlib,json,time,warnings
from pathlib import Path
import sympy as sp
from sage.all import QQ,prod,matrix
from contact_blocks import radial_moment,energy_basis,gram_diagonal,lowering_matrix,factorial
from cubic_effective import cubic_tree_matrix
from cubic_hypergeometric import (symq,source_terms,radial_hyper_sum,radial_polygamma_sum,
                                 exact_cubic_matrix,exact_quartic_coefficient)

checks=[]
def check(label,value):
    if value is not True and value is not False:raise TypeError(label)
    checks.append({'label':label,'passed':value})
    if not value:raise AssertionError(label)


def run():
    cases=[(((0,0),(0,0)),0),(((1,0),(0,1)),0),
           (((1,1),(2,0)),2),(((2,1),(1,0)),0)]
    for d in (QQ(3)/2,QQ(7)/3,QQ(3),QQ(5)/2,QQ(2),QQ(4)):
        for labels,ell in cases:
            for n in range(6):
                moment=QQ.zero()
                for k,coef in source_terms(d,labels,ell):
                    a=3*d/2-1+k;b=1-d/2-k
                    beta=factorial(ell)/prod(a+j for j in range(ell+1))
                    moment+=coef*beta*prod(ell+1+j for j in range(n))*prod(b+j for j in range(n))/(factorial(n)*prod(a+ell+1+j for j in range(n)))
                original=radial_moment(d,tuple(sorted(labels+((n+ell,n),))))
                check(f'Jacobi_moment_D{d}_{labels}_l{ell}_n{n}',moment==original)
    zero=((0,0),(0,0))
    s=radial_polygamma_sum(QQ(3),zero,zero,0,QQ(6))
    check('independent_exact_D3_infinite_series',sp.expand(s-(4725*sp.pi**2-32768)/491520)==0)
    t=radial_polygamma_sum(QQ(3)/2,zero,zero,0,QQ(3))
    check('independent_exact_D3half_infinite_series',sp.expand(t-(-76+72*sp.Catalan+9*sp.pi**2)/192)==0)
    blocks=[]
    for d,E,J in [(QQ(3)/2,3,0),(QQ(3)/2,4,1),(QQ(3)/2,5,0),
                   (QQ(3),6,0),(QQ(3),8,0),(QQ(3),9,0),(QQ(5)/2,7,0)]:
        bas=energy_basis(d,QQ(E),J);A=exact_cubic_matrix(d,bas,True)
        G=sp.diag(*(symq(g) for g in gram_diagonal(d,bas)))
        check(f'closed_Gram_D{d}_E{E}_J{J}',(G*A-A.T*G).applyfunc(sp.expand)==sp.zeros(len(bas)))
        for side in (0,1):
            low=energy_basis(d,QQ(E-1),J+(-1 if side==0 else 1));B=exact_cubic_matrix(d,low,True)
            L=sp.Matrix(lowering_matrix(d,bas,low,side).rows())
            if not low:L=sp.zeros(0,len(bas))
            check(f'closed_Ward_D{d}_E{E}_J{J}_side{side}',(L*A-B*L).applyfunc(sp.expand)==sp.zeros(len(low),len(bas)))
        if d==QQ(3)/2 and E==3:
            check('full_ground_binding_D3half',sp.expand(A[0,0]-sp.pi+sp.Rational(58,15))==0)
        blocks.append({'Delta':str(d),'E':E,'J':J,'basis':bas,
                       'matrix':[[str(A[i,j]) for j in range(A.cols)] for i in range(A.rows)],
                       'charpoly':str(sp.factor(A.charpoly().as_expr()))})
    raw=sp.simplify(exact_quartic_coefficient(QQ(3),((0,0),)*3,((3,3),),False,True))
    check('D3_infinite_1to3_without_imposed_selection',raw==0)
    d=QQ(2);bas=energy_basis(d,QQ(6),0)
    check('even_engine_agreement',exact_cubic_matrix(d,bas)==sp.Matrix(cubic_tree_matrix(d,bas).rows()))
    numerical=[]
    for d,E,J in [(QQ(3)/2,5,0),(QQ(3),8,0)]:
        bas=energy_basis(d,QQ(E),J);H=exact_cubic_matrix(d,bas);C=exact_cubic_matrix(d,bas,True)
        errors=[abs(sp.N(H[i,j]-C[i,j],35)) for i in range(H.rows) for j in range(H.cols)]
        passed=all(e<sp.Rational(1,10**30) for e in errors)
        if not passed:raise AssertionError('hypergeometric/polygamma comparison')
        numerical.append({'type':'hypergeometric_vs_polygamma','Delta':str(d),'E':E,'max_error':str(max(errors)),'tolerance':'1e-30'})
    d=QQ(7)/3;E=2*d+2;bas=energy_basis(d,E,0)
    H=exact_cubic_matrix(d,bas);partial=cubic_tree_matrix(d,bas,40)
    errors=[abs(sp.N(H[i,j]-symq(partial[i,j]),30)) for i in range(H.rows) for j in range(H.cols)]
    if not all(e<sp.Rational(1,10**10) for e in errors):raise AssertionError('partial-sum convergence comparison')
    numerical.append({'type':'hypergeometric_vs_radial_partial_sum','Delta':str(d),'E':str(E),
                      'radial_cutoff':40,'max_error':str(max(errors)),'tolerance':'1e-10',
                      'scope':'Finite numerical comparison, not a certified truncation bound.'})
    return {'passed':True,'exact_checks':checks,'exact_count':len(checks),'numerical_checks':numerical,
            'closed_complete_blocks':blocks,'scale':'lambda3^2/(8*pi)',
            'normalization':'B basis, invariant gap fixed, vacuum zero, no finite quartic'}


if __name__=='__main__':
    p=argparse.ArgumentParser();p.add_argument('--output',required=True);args=p.parse_args()
    out=Path(args.output)
    if out.exists():raise FileExistsError(str(out))
    start=time.monotonic()
    with warnings.catch_warnings(record=True) as diagnostics:
        result=run()
    result['diagnostic_warnings']=sorted(set(str(w.message) for w in diagnostics))
    result['seconds']=time.monotonic()-start
    result['source_sha256']={name:hashlib.sha256(Path(__file__).with_name(name).read_bytes()).hexdigest()
                            for name in ('cubic_hypergeometric.py','verify_cubic_hypergeometric.py')}
    out.parent.mkdir(parents=True,exist_ok=True);out.write_text(json.dumps(result,indent=2)+'\n')
    print(json.dumps({'passed':True,'exact_checks':result['exact_count'],'numerical_checks':len(result['numerical_checks']),
                      'seconds':result['seconds'],'diagnostic_warnings':result['diagnostic_warnings'],'output':str(out)}))
