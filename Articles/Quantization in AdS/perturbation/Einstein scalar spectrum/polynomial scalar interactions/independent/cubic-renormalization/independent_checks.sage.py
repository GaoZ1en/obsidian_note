from sage.all import QQ, PolynomialRing, factorial, prod
import json

# Exact rational Jacobi beta-moment calculation; no invariant-kernel
# decomposition is used in the raw two-particle spectral coefficients.
R = PolynomialRing(QQ, 'z')
z = R.gen()
D = QQ(2)
cache = {}

def rising(x,n):
    return prod(x+k for k in range(n))

def mode(p,q):
    key=(p,q)
    if key in cache:
        return cache[key]
    n=min(p,q); ell=abs(p-q)
    norm2=QQ(factorial(n))/factorial(n+ell)*rising(D+n,ell)
    pol=R.zero()
    for k in range(n+1):
        pol += QQ((-1)**n)*QQ(factorial(n+ell))/(factorial(n)*factorial(ell))*rising(-n,k)*rising(n+ell+D,k)/(rising(ell+1,k)*factorial(k))*z**k
    cache[key]=(ell,norm2,pol)
    return cache[key]

def vertex_square_times_pi(i,j,k):
    if i[0]-i[1] != j[0]-j[1]+k[0]-k[1]:
        return QQ.zero()
    mi,mj,mk=(mode(*v) for v in (i,j,k))
    assert (mi[0]+mj[0]+mk[0])%2 == 0
    power=(mi[0]+mj[0]+mk[0])//2
    pol=mi[2]*mj[2]*mk[2]*z**power
    b=3*D/2-2
    integral=sum(c*factorial(a)/rising(b+1,a+1) for a,c in enumerate(pol))
    return mi[1]*mj[1]*mk[1]*integral**2/8

def spectral_weight_pi(i,L):
    J=i[0]-i[1]
    if L<abs(J) or (L-J)%2:
        return QQ.zero()
    P=(L+J)//2; Q=(L-J)//2
    return sum(vertex_square_times_pi(i,(p,q),(P-p,Q-q)) for p in range(P+1) for q in range(Q+1))

out={}
weights=[]
for M in range(9):
    exact=spectral_weight_pi((0,0),2*M)
    expected=QQ(M+1)/(8*(M+2)**2)
    assert exact==expected
    weights.append({'M':M,'pi_times_weight':str(exact),'passed':True})
out['raw_ground_pair_weights']=weights

# Three additional raw-mode checks of analytic all-level pair spectral weights.
# At external (1,1), the k=0 resonant weight is exactly zero; it must NOT
# be restored by cancelling a zero against a denominator in a rational formula.
descendant_weights=[]
for k in range(9):
    for i,L,expected in (
        ((1,0),2*k+1,QQ(k+1)/(6*(k+2)*(k+3))),
        ((1,1),2*k,QQ(k*(22+34*k+9*k*k))/(40*(k+1)*(k+2)**2*(k+3))),
        ((2,0),2*k+2,QQ((k+1)*(25+8*k))/(40*(k+2)*(k+3)*(k+4)))
    ):
        exact=spectral_weight_pi(i,L)
        assert exact==expected
        descendant_weights.append({'mode':i,'k':k,'pi_times_weight':str(exact),'passed':True})
out['raw_descendant_pair_weights']=descendant_weights

cutoffs=(12,20,28)
partial=[]
for i in ((0,0),(1,0),(1,1),(2,0),(2,2)):
    omega=D+sum(i)
    value=QQ.zero()
    resonances=[]
    for L in range(max(cutoffs)-4+1):
        A=spectral_weight_pi(i,L)
        Om=2*D+L
        if Om==omega:
            assert A==0
            resonances.append({'pair_energy':str(Om),'pi_times_resonant_weight':str(A)})
        else:
            value += A/2*(1/(omega-Om)-1/(omega+Om))
        if Om in cutoffs:
            partial.append({'external_mode':i,'cutoff':int(Om),'pi_gap_over_lambda_squared':str(value),'decimal':float(value),'target':-1/32})
    out['zero_resonances_'+str(i)]=resonances
out['sharp_total_pair_energy_cutoff']=partial

# Independent one-oscillator normal-ordered cubic calculation.
# V=(g/6)[a^dagger^3+3a^dagger^2 a+3a^dagger a^2+a^3].
def E2_one_mode(N):
    # Return omega*E^(2)/g^2; exact squared Fock matrix elements.
    val=QQ.zero()
    if N>=3: val+=QQ(N*(N-1)*(N-2))/(36*3)
    if N>=2: val+=QQ(N*(N-1)**2)/4
    val-=QQ(N*N*(N+1))/4
    val-=QQ((N+1)*(N+2)*(N+3))/(36*3)
    return val
Es=[E2_one_mode(N) for N in range(4)]
assert Es[1]-Es[0]==-QQ(2)/3
assert Es[2]-2*Es[1]+Es[0]==-QQ(5)/3
out['one_oscillator_fock']={'energies':[str(v) for v in Es], 'gap':str(Es[1]-Es[0]), 'connected_pair':str(Es[2]-2*Es[1]+Es[0]), 'passed':True}

# Exact KG and slice norms of several descendants, without symmetry input.
norms=[]
for p in range(4):
    for q in range(4):
        ell,norm2,pol=mode(p,q)
        pol2=z**ell*pol**2
        kg=(D+p+q)*norm2*sum(c*factorial(a)/rising(D,a+1) for a,c in enumerate(pol2))
        sl=norm2/2*sum(c*factorial(a)/rising(D-1,a+1) for a,c in enumerate(pol2))
        assert kg==1 and sl==1/(2*(D-1))
        norms.append({'mode':[p,q],'kg':str(kg),'slice':str(sl)})
out['descendant_norms']=norms
out['all_assertions_passed']=True
print(json.dumps(out,indent=2))
