"""Exact SU(N) holomorphic trace Gram matrices, derived by Wick graphs.

Each contraction uses delta_i^l delta_k^j - delta_i^j delta_k^l/N.
Every Wick pairing and every traceless-projector term is enumerated.
No formula for the answer is used to construct the Gram matrix.
"""
from collections import defaultdict
from itertools import combinations, permutations
from pathlib import Path
import json
import sympy as S

N=S.symbols('N',positive=True,integer=True)
residuals={}


def check(name,value):
    value=S.factor(value)
    residuals[name]=str(value)
    assert value==0,(name,value)


def trace_permutation(parts):
    out=[]; start=0
    for length in parts:
        out.extend(list(range(start+1,start+length))+[start])
        start+=length
    return tuple(out)


def gram_entry(left,right):
    n=sum(left)
    assert n==sum(right)
    a,b=trace_permutation(left),trace_permutation(right)
    coeff=defaultdict(int)
    for pairing in permutations(range(n)):
        for mask in range(1<<n):
            parent=list(range(2*n))
            def root(x):
                while parent[x]!=x:
                    parent[x]=parent[parent[x]];x=parent[x]
                return x
            def union(x,y):
                x,y=root(x),root(y)
                if x!=y:parent[x]=y
            for i,j in enumerate(pairing):
                if (mask>>i)&1:
                    union(i,a[i]);union(n+j,n+b[j])
                else:
                    union(i,n+b[j]);union(a[i],n+j)
            cycles=len({root(i) for i in range(2*n)})
            traces=mask.bit_count()
            coeff[cycles-traces]+=(-1)**traces
    return S.factor(sum(c*N**power for power,c in coeff.items()))


def gram(basis):
    out=S.zeros(len(basis))
    for i,left in enumerate(basis):
        for j in range(i,len(basis)):
            out[i,j]=out[j,i]=gram_entry(left,basis[j])
    return out


basis4=[(4,),(2,2)]
G4=gram(basis4)
check('degree2_norm',gram_entry((2,),(2,))-2*(N**2-1))
check('degree3_norm',gram_entry((3,),(3,))-3*(N**2-1)*(N**2-4)/N)
check('degree4_single_trace',G4[0,0]-4*(N**2-1)*(N**4-6*N**2+18)/N**2)
check('degree4_double_trace',G4[1,1]-8*(N**4-1))
check('degree4_mixed',G4[0,1]-8*(N**2-1)*(2*N**2-3)/N)
mix=S.factor(G4[0,1]/G4[1,1])
norm=S.factor(G4[0,0]-G4[0,1]**2/G4[1,1])
check('orthogonal_combination_norm',norm-4*(N**2-1)*(N**2-4)*(N**2-9)/(N**2+1))
check('orthogonal_mixed_inner_product',G4[0,1]-mix*G4[1,1])

# Degree six is an independent larger block, not used to fit degree four.
basis6=[(6,),(4,2),(3,3),(2,2,2)]
G6=gram(basis6)

# A second, differential-operator route to every p_2 tower norm.
# In d=N^2-1 Gaussian coordinates, p_2=sum z_A^2 and its adjoint is
# the holomorphic Laplacian. This route contains no index-loop graph.
rho,d,m=S.symbols('rho d m',positive=True)
radial=S.diff(rho**m,rho,2)*4*rho+2*d*S.diff(rho**m,rho)
check('radial_laplacian_all_degrees',S.simplify(
    radial-4*m*(m+d/2-1)*rho**(m-1)))
check('p2_tower_degree4',G4[1,1]-4**2*S.factorial(2)*S.rf((N**2-1)/2,2))
check('p2_tower_degree6',G6[3,3]-4**3*S.factorial(3)*S.rf((N**2-1)/2,3))

ranks={}
principal_minors={}
for rank in range(2,8):
    matrix=G6.subs(N,rank)
    ranks[str(rank)]=int(matrix.rank())
    expected={2:1,3:2,4:3,5:3,6:4,7:4}[rank]
    check(f'degree6_rank_N{rank}',ranks[str(rank)]-expected)
    values=[]
    for size in range(1,5):
        for subset in combinations(range(4),size):
            value=S.factor(matrix.extract(subset,subset).det())
            assert value>=0,(rank,subset,value)
            values.append(str(value))
    principal_minors[str(rank)]=values

# Matrix-polynomial identities, checked without a Wick expectation.
for rank in (2,3):
    entries=S.symbols(f'z0:{rank*rank-1}')
    Z=S.zeros(rank)
    for index,z in enumerate(entries):
        i,j=divmod(index,rank)
        Z[i,j]=z
    Z[rank-1,rank-1]=-sum(Z[i,i] for i in range(rank-1))
    check(f'cayley_hamilton_degree4_N{rank}',S.trace(Z**4)-S.trace(Z**2)**2/2)

# The degree-six relations implied by finite-N trace identities.
for rank,relation in [
    (2,S.Matrix([1,0,0,-S.Rational(1,4)])),
    (2,S.Matrix([0,1,0,-S.Rational(1,2)])),
    (2,S.Matrix([0,0,1,0])),
    (3,S.Matrix([1,0,-S.Rational(1,3),-S.Rational(1,4)])),
    (3,S.Matrix([0,1,0,-S.Rational(1,2)])),
]:
    value=G6.subs(N,rank)*relation
    check(f'null_relation_N{rank}_{str(list(relation))}',sum(x*x for x in value))

def serialize(matrix):
    return [[str(S.factor(matrix[i,j])) for j in range(matrix.cols)]
            for i in range(matrix.rows)]

result={
    'sympy_version':S.__version__,
    'exact_zero_count':len(residuals),
    'residuals':residuals,
    'gram_degree4':serialize(G4),
    'orthogonal_mixing_coefficient':str(mix),
    'orthogonal_norm':str(norm),
    'gram_degree6':serialize(G6),
    'degree6_ranks':ranks,
    'degree6_principal_minors':principal_minors,
    'scope':'Exact Gaussian SU(N) holomorphic sector. Extension of protected '
            'two/three-point data to interacting SYM uses its nonrenormalization theorem. '
            'No finite-radius bulk or full-CFT positivity theorem is inferred.',
}
path=Path(__file__).with_name('finite_n_bps_checks_results.json')
path.write_text(json.dumps(result,indent=2)+'\n')
print(json.dumps({k:v for k,v in result.items() if k!='degree6_principal_minors'},indent=2))
