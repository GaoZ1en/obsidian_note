"""Independent exact oscillator/Fock and exchange checks, Delta=2.

Run using SageMath 10.9. No project engine or candidate-result imports.
All cubic vertices are recomputed from Jacobi polynomials and exact integrals.
Units: g = integral f_00^3 = 1/(4 sqrt(2 pi)); all printed second-order
entries are divided by lambda_3^2 g^2. Mode phases have P_n(1-2x).
"""
from sage.all import QQ, AA, PolynomialRing, binomial, factorial, matrix
from itertools import product
from functools import lru_cache
from pathlib import Path

ROOT = Path('/Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/polynomial scalar interactions/independent/cubic-effective')
R = PolynomialRing(QQ, 'x')
x = R.gen()

def exact_rational(a):
    return str(QQ(a))

def calculate(cutoff):
    modes = [(p, s-p) for s in range(cutoff+1) for p in range(s+1)]
    M = len(modes)
    index = {m:i for i,m in enumerate(modes)}
    ell = [p-q for p,q in modes]
    omega = [2+p+q for p,q in modes]
    n = [min(p,q) for p,q in modes]
    L = [abs(p-q) for p,q in modes]
    norm = [AA(QQ(n[i]+L[i]+1)/QQ(n[i]+1)).sqrt() for i in range(M)]
    jac = [sum(((-x)**j)*(1-x)**(n[i]-j)*binomial(n[i]+L[i],n[i]-j)*binomial(n[i]+1,j)
               for j in range(n[i]+1)) for i in range(M)]

    @lru_cache(None)
    def radial(a,b,c):
        totalL = L[a]+L[b]+L[c]
        if totalL % 2:
            raise ValueError('Angular conservation must make radial power integral')
        poly = x**(totalL//2)*(1-x)*jac[a]*jac[b]*jac[c]
        integ = sum(QQ(v)/(j+1) for j,v in enumerate(poly.list()))
        return 2*integ*norm[a]*norm[b]*norm[c]

    def D(a,b,c):
        return radial(*sorted((a,b,c))) if ell[a]+ell[b]+ell[c] == 0 else AA(0)

    def C(a,b,c):
        return radial(*sorted((a,b,c))) if -ell[a]+ell[b]+ell[c] == 0 else AA(0)

    def occupations(inds):
        z=[0]*M
        for i in inds:
            z[i]+=1
        return tuple(z)

    zero=(0,)*M
    monomials={}
    def add(cre,ann,coef):
        if coef:
            key=(occupations(cre),occupations(ann))
            monomials[key]=monomials.get(key,AA(0))+coef

    for a,b,c in product(range(M),repeat=3):
        d=D(a,b,c)
        add((),(a,b,c),d/6)
        add((a,b,c),(),d/6)
        t=C(a,b,c)
        add((a,),(b,c),t/2)
        add((b,c),(a,),t/2)
    monomials={key:val for key,val in monomials.items() if val}
    for (cre,ann),coef in monomials.items():
        defect=sum(omega[i]*(cre[i]-ann[i]) for i in range(M))
        assert defect != 0, ('nonzero resonant cubic',cre,ann,coef)

    @lru_cache(None)
    def act(state):
        ans={}
        for (cre,ann),coef in monomials.items():
            if any(state[i]<ann[i] for i in range(M)):
                continue
            middle=[state[i]-ann[i] for i in range(M)]
            target=tuple(middle[i]+cre[i] for i in range(M))
            square=QQ(1)
            for i in range(M):
                square*=QQ(factorial(state[i]))/QQ(factorial(middle[i]))
                square*=QQ(factorial(target[i]))/QQ(factorial(middle[i]))
            ans[target]=ans.get(target,AA(0))+coef*AA(square).sqrt()
        return {key:val for key,val in ans.items() if val}

    def energy(state):
        return sum(w*z for w,z in zip(omega,state))

    def W(a,b):
        assert energy(a)==energy(b)
        va,vb=act(a),act(b)
        ans=AA(0)
        for mid in va.keys() & vb.keys():
            denominator=energy(a)-energy(mid)
            assert denominator != 0
            ans+=va[mid]*vb[mid]/denominator
        return ans

    vac=W(zero,zero)
    selfenergy={}
    for m in [(0,0),(1,1),(1,0),(0,1)]:
        state=occupations((index[m],))
        selfenergy[m]=W(state,state)-vac
    vacuum_formula=-sum(QQ(D(a,b,c)**2)/QQ(6*(omega[a]+omega[b]+omega[c]))
                        for a,b,c in product(range(M),repeat=3))
    assert vac == vacuum_formula
    for m in selfenergy:
        i=index[m]
        loop=QQ(0)
        for a,b in product(range(M),repeat=2):
            numerator=QQ(C(i,a,b)**2)
            denominator=omega[i]-omega[a]-omega[b]
            if denominator == 0:
                assert numerator == 0
            else:
                loop+=numerator/QQ(2*denominator)
            loop-=QQ(D(i,a,b)**2)/QQ(2*(omega[i]+omega[a]+omega[b]))
        assert selfenergy[m] == loop
    pairlabels=[((0,0),(1,1)),((1,0),(0,1))]
    states=[occupations(tuple(index[m] for m in pair)) for pair in pairlabels]
    raw=matrix(AA,2,2,lambda i,j:W(states[i],states[j]))
    connected=matrix(AA,2,2,lambda i,j:raw[i,j]-(vac+sum(selfenergy[m] for m in pairlabels[i]) if i==j else 0))

    def propagator(Omega,a):
        if Omega**2 == omega[a]**2:
            return None
        return QQ(2*omega[a])/QQ(Omega**2-omega[a]**2)

    def exchange(i,j,k,l):
        assert omega[i]+omega[j]==omega[k]+omega[l]
        ss=tt=uu=AA(0)
        for a in range(M):
            terms=[(C(a,i,j)*C(a,k,l),omega[i]+omega[j]),
                   (C(i,k,a)*C(l,j,a),omega[i]-omega[k]),
                   (C(i,l,a)*C(k,j,a),omega[i]-omega[l])]
            vals=[]
            for numerator,Omega in terms:
                prop=propagator(Omega,a)
                if prop is None:
                    assert numerator == 0
                    vals.append(AA(0))
                else:
                    vals.append(numerator*prop)
            ss+=vals[0];tt+=vals[1];uu+=vals[2]
        return ss,tt,uu

    channels={}
    kernel=matrix(AA,2,2)
    for i,j in product(range(2),repeat=2):
        ids=[index[m] for m in pairlabels[i]+pairlabels[j]]
        parts=exchange(*ids)
        channels[(i,j)]=parts
        kernel[i,j]=sum(parts)
    expected=matrix(QQ,[[-QQ(17)/30,QQ(4)/15],[QQ(4)/15,-QQ(17)/30]])
    assert connected==kernel==expected

    groundpair=occupations((index[(0,0)],index[(0,0)]))
    groundconn=W(groundpair,groundpair)-vac-2*selfenergy[(0,0)]
    assert groundconn == -QQ(5)/6
    ground_many={}
    for particle_count in (3,4):
        state=occupations((index[(0,0)],)*particle_count)
        connected_many=W(state,state)-vac-particle_count*selfenergy[(0,0)]
        assert connected_many == binomial(particle_count,2)*groundconn
        ground_many[str(particle_count)]=exact_rational(connected_many)

    # Exact odd-particle resonant E=6,J=0 entry: 1 mode (2,2) versus 3 ground quanta.
    one_three='not in cutoff'
    if (2,2) in index:
        one=occupations((index[(2,2)],))
        three=occupations((index[(0,0)],)*3)
        one_three=exact_rational(W(one,three))
        assert W(one,three)==0

    return {'cutoff':cutoff,'mode_count':M,'cubic_monomials':len(monomials),
            'vacuum':exact_rational(vac),
            'selfenergy':{str(m):exact_rational(v) for m,v in selfenergy.items()},
            'raw_E6_matrix':[[exact_rational(raw[i,j]) for j in range(2)] for i in range(2)],
            'connected_E6_matrix':[[exact_rational(connected[i,j]) for j in range(2)] for i in range(2)],
            'channels':{str(ij):[exact_rational(v) for v in parts] for ij,parts in channels.items()},
            'connected_E4':exact_rational(groundconn),'ground_many_particle_connected':ground_many,
            'one_to_three_E6':one_three,
            'all_assertions_passed':True}

results=[calculate(cutoff) for cutoff in (2,3,4)]
import json
text=json.dumps({'conventions':'Delta=2; entries divided by lambda_3^2 g^2; g^2=1/(32 pi); cutoff p+q<=K',
                 'results':results},indent=2)
(ROOT/'independent_delta2_results.json').write_text(text+'\n',encoding='utf-8')
print(text)
