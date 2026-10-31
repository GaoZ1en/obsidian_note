"""Exact discrete BV cutoff checks; execute with Sage's Python, no preparsing.
Creates new private exports; never overwrites an earlier run.
"""
from sage.all import QQ, ZZ, matrix, identity_matrix, zero_matrix, binomial, ExteriorAlgebra, save
from sage.version import version as sage_version
from pathlib import Path
from itertools import product
import tempfile, os, json, hashlib

checks = []
def check(label, value):
    if value is not True and value is not False:
        raise TypeError((label, type(value)))
    checks.append({'label': label, 'passed': value})

# Full six-dimensional gravitational gauge algebra [J,J]=eps J,
# [J,P]=eps P, [P,P]=-eps J. All 18 retained ghost coordinates are present.
def eps(a,b,c):
    if len({a,b,c}) < 3: return 0
    return 1 if (a,b,c) in ((0,1,2),(1,2,0),(2,0,1)) else -1

def structure(a,b):
    sa,ia=divmod(a,3); sb,ib=divmod(b,3)
    sector=(sa+sb)%2; sign=-1 if sa==sb==1 else 1
    return [(3*sector+c, sign*eps(ia,ib,c)) for c in range(3) if eps(ia,ib,c)]

special=[(1,0),(1,1),(-1,0)]
keys=special+[k for k in product(range(-1,2), range(6)) if k not in special]
E=ExteriorAlgebra(QQ, names=tuple('c%d'%i for i in range(len(keys))))
gens=E.gens(); ghost=dict(zip(keys,gens))
def bracket(u,v):
    ans={}
    for (k,a),x in u.items():
        for (l,b),y in v.items():
            for c,coef in structure(a,b):
                key=(k+l,c)
                ans[key]=ans.get(key,E.zero())+coef*x*y
    return {k:v for k,v in ans.items() if v}

def proj(d): return {k:v for k,v in d.items() if abs(k[0])<=1}
def scale(d,c): return {k:c*v for k,v in d.items() if c*v}
qc_full=scale(bracket(ghost,ghost),-QQ(1)/2)
q2_full=scale(bracket(qc_full,ghost),-1)
qc_cut=proj(qc_full)
q2_cut=proj(scale(bracket(qc_cut,ghost),-1))
check('full 18-coordinate gravitational ghost Jacobi', len(q2_full)==0)
witness=sum(coef*E.monomial(bits) for bits,coef in q2_cut[(1,1)].monomial_coefficients().items() if set(bits).issubset({0,1,2}))
check('cutoff ghost-square witness is minus c0 c1 c2', witness == -gens[0]*gens[1]*gens[2])
check('translation ghost slice has no competing term', all(not any(set(bits).issubset({0,1,2}) for bits in val.monomial_coefficients()) for (k,a),val in q2_cut.items() if a>=3))
# Leakage identity Q_N^2 c= -1/2 P[Q[c,c],c].
cc=bracket(ghost,ghost); high={k:v for k,v in cc.items() if abs(k[0])>1}
leak=proj(scale(bracket(high,ghost),-QQ(1)/2))
check('full gravitational ghost leakage identity', q2_cut == leak)

# Fourier matrices P_N cos(x)^j P_N and formal logarithms through order four.
def cos_power(N,j):
    modes=list(range(-N,N+1))
    def coeff(q):
        if abs(q)>j or (j-q)%2: return QQ(0)
        return QQ(binomial(j,(j-q)//2))/2**j
    return matrix(QQ, [[coeff(k-l) for l in modes] for k in modes])
def convolution(a,b,order):
    n=a[0].nrows()
    return [sum((a[i]*b[j-i] for i in range(j+1)),zero_matrix(QQ,n)) for j in range(order+1)]
def log_coefficients(series,order=4):
    n=series[0].nrows(); z=zero_matrix(QQ,n)
    u=[z]+series[1:order+1]
    powers=u
    result=[z for _ in range(order+1)]
    for r in range(1,order+1):
        for j in range(1,order+1):
            result[j]+=QQ((-1)**(r+1))/r*powers[j]
        powers=convolution(powers,u,order)
    return [a.trace() for a in result]

fourier=[]
for N in (1,2,3,4):
    n=2*N+1; C=[cos_power(N,j) for j in range(5)]
    A=C[1]; leakage=C[2]-A*A
    edge=zero_matrix(QQ,n); edge[0,0]=edge[n-1,n-1]=QQ(1)/4
    check('N%d canonical defect edge matrix'%N, leakage==edge)
    check('N%d one-dimensional leakage trace'%N, leakage.trace()==QQ(1)/2)
    logs={p:log_coefficients([binomial(p,j)*C[j] for j in range(5)]) for p in (-1,1,3,5)}
    # 3 odd diffeomorphism ghosts and 3 even dual ghost antifields.
    raw=[3*(logs[-1][j]-logs[1][j]) for j in range(5)]
    point=[QQ(0)]+[-6*QQ((-1)**(j+1))/j*C[j].trace() for j in range(1,5)]
    check('N%d full raw BV log-Berezinian second-order cancellation'%N, raw[2]==point[2])
    # Finite canonical type-II map + projected inverse metric chart + original
    # finite connection Gaussian; target norms independently compressed.
    density=[6*logs[-1][j]-QQ(9)/2*logs[1][j] for j in range(5)]
    target=[3*logs[-1][j]-QQ(3)/2*logs[5][j] for j in range(5)]
    ratio=[density[j]-target[j] for j in range(5)]
    check('N%d full specified body-density ratio coefficient'%N, ratio[2]==18*leakage.trace())
    check('N%d scalar family has no linear or cubic ratio'%N, ratio[1]==ratio[3]==0)
    # Original connection variable -> projected U is a finite invertible shear.
    # Hessian F^3 is not P f^3 P; compare their epsilon² coefficients.
    f3_coeff=3*A*A
    pf3_coeff=3*C[2]
    check('N%d projected auxiliary Hessian ordering defect'%N, pf3_coeff-f3_coeff==3*leakage)
    fourier.append({'N':N,'one_dim_raw_logBer':[str(x) for x in raw],
                    'one_dim_trace_point_logBer':[str(x) for x in point],
                    'one_dim_joint_log_ratio':[str(x) for x in ratio],
                    'cube_second_order_joint_coefficient':str(n*n*ratio[2])})

# General Fourier leakage count for a cubical cutoff. No continuum estimate.
count_records=[]
for N in (1,2,3):
    modes=set(product(range(-N,N+1),repeat=3)); n=2*N+1
    for q in ((1,0,0),(1,1,0),(2,-1,1),(4,0,0)):
        count=sum(tuple(k[i]+q[i] for i in range(3)) not in modes for k in modes)
        expected=n**3
        for_prod=1
        for qi in q: for_prod*=max(n-abs(qi),0)
        expected-=for_prod
        check('cube leakage count N%d q%s'%(N,q), count==expected)
        count_records.append({'N':N,'q':q,'count':count})

result={'scope':'Exact finite Fourier/Grassmann checks, not an AdS continuum QME or a proof of Wilsonian transfer.',
        'sage_version':sage_version,'all_passed':all(c['passed'] for c in checks),
        'checks':checks,'fourier_records':fourier,
        'ghost_witness':str(witness),'generic_nonzero_cutoff_ghost_components':len(q2_cut),
        'cube_counts':count_records}
store=Path(os.environ.get('DSH_HOME') or Path.home()/'.dsh')/'research-results'/'kernel-exports'
store.mkdir(parents=True,exist_ok=True,mode=0o700)
out=Path(tempfile.mkdtemp(prefix='spectral-bv-parent-',dir=store))
(out/'result.json').write_text(json.dumps(result,indent=2)+'\n',encoding='utf-8')
save({'full_q2':q2_full,'cutoff_q2':q2_cut,'leakage':leak,'witness':witness},str(out/'ghost_exact.sobj'))
source=globals().get('__file__')
if source:
    data=Path(source).read_bytes()
    (out/'executed-source.py').write_bytes(data)
    (out/'source.sha256').write_text(hashlib.sha256(data).hexdigest()+'\n',encoding='utf-8')
print(json.dumps({'result':str(out/'result.json'),'exact':str(out/'ghost_exact.sobj'),
                  'all_passed':result['all_passed'],'checks':len(checks),'witness':str(witness)},indent=2))
if not result['all_passed']: raise AssertionError('A labelled check failed; inspect preserved output')
