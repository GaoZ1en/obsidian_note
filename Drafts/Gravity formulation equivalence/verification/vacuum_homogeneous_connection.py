"""Exact checks for the homogeneous vacuum tangent connection.
Ordinary Sage Python, no preparsing. Frozen source; exports use a new private directory.
Conventions: [e_m,e_n]=(m-n)e_(m+n), bar(e_m)=-e_-m;
E+=span{e_j:j>=2}, w_j=j(j*j-1), Lambda_h=isotropy.
R(X,Y)=[Lambda_X,Lambda_Y]-Lambda_[X,Y].
No finite check proves global determinant-line existence.
"""
from sage.all import QQ, PolynomialRing, save
from pathlib import Path
import os, tempfile, json, hashlib
import sage.version

SOURCE = Path('/Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/verification/vacuum_homogeneous_connection.py')
R = PolynomialRing(QQ, names=('j','m','n','N'))
j,m,n,N = R.gens()
K = R.fraction_field()
def w(x): return x*(x*x-1)
def wp(k): return QQ(abs(k)*(k*k-1)) if abs(k)>=2 else QQ(0)
def lp(a,k):
    if k<2 or k+a<2: return QQ(0)
    if a>=0: return -QQ(k+2*a)*wp(k)/wp(k+a)
    return QQ(a-k)
def lc(a,k):
    if k>=2: return lp(a,k)
    if k<=-2: return -lp(-a,-k)
    return QQ(0)
def comm(a,b,k): return lc(b,k)*lc(a,k+b)-lc(a,k)*lc(b,k+a)
def curv(a,b,k): return comm(a,b,k)-QQ(a-b)*lc(a+b,k)
def diag(p,k): return curv(p,-p,k)

tests={}
details={}
exact={}
def check(label,value):
    if type(value) is not bool: raise TypeError((label,type(value)))
    tests[label]=value

# Generic polynomial Koszul simplification on the positive chart.
a_pos=K(((m-j)*w(m+j)-(m+2*j)*w(m)-(2*m+j)*w(j))/(2*w(m+j)))
a_neg=K(((m-j)*w(m+j)+(m+2*j)*w(m)-(2*m+j)*w(j))/(2*w(m+j)))
check('positive_Koszul_coefficient',a_pos == K(-(2*m+j)*w(j)/w(m+j)))
check('negative_Koszul_coefficient_in_positive_target_range',a_neg == K(m-j))

# Full nonreductive equivariance; h is not an invariant Fourier complement.
count=0
bad=[]
for a in (-1,0,1):
    for b in range(-12,13):
        for k in list(range(-30,-1))+list(range(2,31)):
            count+=1
            res=comm(a,b,k)-QQ(a-b)*lc(a+b,k)
            if res: bad.append([a,b,k,str(res)])
check('isotropy_equivariance_finite_full_signed_test',not bad)
details['equivariance_comparisons']=count

bad=[]; count=0
for a in range(-15,16):
    for b in range(-15,16):
        target=QQ(a-b) if abs(a+b)>=2 else QQ(0)
        res=lc(a,b)-lc(b,a)-target
        count+=1
        if res: bad.append([a,b,str(res)])
check('torsion_free_including_isotropy_inputs',not bad)
details['torsion_comparisons']=count

bad=[]; count=0
for a in range(-12,13):
    for k in range(2,40):
        if k+a<2: continue
        count+=1
        if lp(a,k)*wp(k+a) != lp(-a,k+a)*wp(k): bad.append([a,k])
check('Hermitian_metric_compatibility_on_positive_modes',not bad)
details['metric_comparisons']=count
check('isotropy_matches_quotient_bracket',all(lc(a,k)==(QQ(a-k) if abs(k+a)>=2 else QQ(0)) for a in (-1,0,1) for k in list(range(-20,-1))+list(range(2,21))))

bad=[]
for a in range(-8,9):
    for k in list(range(-16,-1))+list(range(2,17)):
        t=a+k
        if abs(t)<2: continue
        num=(a-k)*wp(t)-(a+2*k)*wp(a)-(2*a+k)*wp(k)
        if lc(a,k)!=num/(2*wp(t)): bad.append([a,k])
check('general_Koszul_formula_on_signed_tangent',not bad)
check('reality_conjugation',all(lc(-a,-k)==-lc(a,k) for a in range(-12,13) for k in range(2,32)))

B=K((j+2*m)**2*w(j)/w(j+m))
Bpol=j*j+m*j-2*m*m
rem=K(m*(m*m-1)*(2*j+m)*(j+2*m)/w(j+m))
check('B_polynomial_plus_exact_remainder',B==Bpol+rem)
Rtail=K((j+m)**2*w(j-m)/w(j)-B+2*m*j)
exact['diagonal_tail']=Rtail
exact['diagonal_tail_factor']=Rtail.factor()
check('diagonal_tail_decays_at_least_j_minus_two',Rtail.numerator().degree(j)-Rtail.denominator().degree(j)<=-2)
S1=m*N-m*(m-1)/2
S2=m*N*N-N*m*(m-1)+m*(m-1)*(2*m-1)/6
limit_poly=m*(N*N+N-2)-(S2+m*S1-2*m**3)
trace_limit=QQ(13)/6*m*(m*m-1)
check('exact_Faulhaber_trace_limit',limit_poly==trace_limit)
exact['trace_limit']=trace_limit
exact['positive_cutoff_error_summand']=rem

bad=[]; cutoff_examples={}; count=0
for p in range(1,11):
    for cutoff in range(p+2,65):
        direct=sum(diag(p,k) for k in range(2,cutoff+1))
        telescoped=QQ(p)*(cutoff*(cutoff+1)-2)-sum(QQ(k+2*p)**2*wp(k)/wp(k+p) for k in range(cutoff-p+1,cutoff+1))
        limit=QQ(13)/6*p*(p*p-1)
        error=sum(QQ(p*(p*p-1)*(2*k+p)*(k+2*p))/wp(k+p) for k in range(cutoff-p+1,cutoff+1))
        count+=1
        if direct!=telescoped or limit-direct!=error: bad.append([p,cutoff])
        if cutoff in (16,64): cutoff_examples[str((p,cutoff))]={'sum':str(direct),'limit':str(limit),'error':str(error)}
check('finite_diagonal_sum_and_positive_remainder_identity',not bad)
details['cutoff_comparisons']=count
details['cutoff_examples']=cutoff_examples
check('diagonal_curvature_nonnegative_finite_grid',all(diag(p,k)>=0 for p in range(1,13) for k in range(2,101)))
check('isotropy_curvature_zero',all(curv(a,b,k)==0 for a in (-1,0,1) for b in range(-12,13) for k in range(2,31)))

# Generic mixed curvature in its large-j region. No extrapolation of domains.
pos=lambda a,z: K(-(z+2*a)*w(z)/w(z+a))
neg=lambda a,z: K(-a-z)
first=neg(n,j)*pos(m,j-n)
second=pos(m,j)*neg(n,j+m)
Rmix_ge=K(first-second-(m+n)*pos(m-n,j))
Rmix_lt=K(first-second-(m+n)*(m-n-j))
exact['mixed_tail_m_ge_n']=Rmix_ge
exact['mixed_tail_m_lt_n']=Rmix_lt
mixed_degrees={label:expr.numerator().degree(j)-expr.denominator().degree(j) for label,expr in [('m_ge_n',Rmix_ge),('m_lt_n',Rmix_lt)]}
details['mixed_tail_j_degree_differences']={k:int(v) for k,v in mixed_degrees.items()}
check('mixed_tails_decay_at_least_j_minus_two',all(v<=-2 for v in mixed_degrees.values()))
check('same_type_curvature_finite_test',all(curv(a,b,k)==0 for a in range(1,9) for b in range(1,9) for k in range(2,28)))

# Isotropy invariance uniquely fixes the quotient metric recurrence.
check('metric_weight_recurrence', (j-1)*w(j+1)==(j+2)*w(j))
check('trace_polynomial_relative_cocycle', (m-n)*((m+n)**3-(m+n)) + (n-(-m-n))*(m**3-m)*(-1) + ((-m-n)-m)*(n**3-n)*(-1) == 0)

# Orthogonal L2 Grassmann comparison: a distinct connection, not this metric.
S= m*(m-1)*(14*m-13)/6
check('orthogonal_L2_crossing_sum',all(sum(QQ(r*r) for r in range(p-1,2*p-1))==S(m=p) for p in range(1,31)))
L2=lambda p: -QQ(p*(p-1)*(14*p-13))/6
check('orthogonal_L2_isotropy_failure', -L2(3)+4*L2(2)==9)
details['orthogonal_L2_values']={str(p):str(L2(p)) for p in range(1,7)}

store=Path(os.environ.get('DSH_HOME') or (Path.home()/'.dsh'))/'research-results'/'kernel-exports'
store.mkdir(parents=True,exist_ok=True,mode=0o700)
out=Path(tempfile.mkdtemp(prefix='vacuum-homogeneous-',dir=store))
source_bytes=SOURCE.read_bytes()
result={'kernel':'SageMath '+sage.version.version,'scope':'Exact coefficient, nonreductive connection, trace/tail and counterexample checks; analytic existence/global line issues separate','source':str(SOURCE),'source_sha256':hashlib.sha256(source_bytes).hexdigest(),'checks':tests,'check_count':len(tests),'all_passed':all(tests.values()),'details':details,'exact_formulas':{k:str(v) for k,v in exact.items()}}
with (out/'results.json').open('x',encoding='utf-8') as f: json.dump(result,f,ensure_ascii=False,indent=2); f.write('\n')
with (out/'executed.py').open('xb') as f: f.write(source_bytes)
save(exact,str(out/'exact.sobj'))
print(json.dumps({'result':str(out/'results.json'),'executed_source':str(out/'executed.py'),'exact':str(out/'exact.sobj'),'check_count':len(tests),'all_passed':all(tests.values())},indent=2))
