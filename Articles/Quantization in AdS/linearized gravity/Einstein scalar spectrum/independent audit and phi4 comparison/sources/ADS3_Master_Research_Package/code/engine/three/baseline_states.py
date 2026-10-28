"""Explicit complete all-Q three-body baseline eigenspace generators.

The variables x=z1-z3,y=z2-z3,u=w1-w3,v=w2-w3 are translation-primary
coordinates.  All displayed wavefunctions are leading free wavefunctions.
Their energy corrections, rather than an all-orders dressed state, are exact
at the requested perturbative order.
"""
from functools import lru_cache
from math import factorial
from pathlib import Path
import json
import sympy as s
from three_body_nonchiral import rf, baseline_dimension

x,y,u,v,a,b=s.symbols('x y u v a b')
V=x*y*(x-y)
E2=x*x-x*y+y*y
E3=-(x+y)*(2*x-y)*(x-2*y)/2


@lru_cache(None)
def physical_gram(delta,Q):
    d=s.sympify(delta)
    weights={(r,t):s.factorial(r)*s.factorial(t)*s.factorial(Q-r-t)
             /(rf(d,r)*rf(d,t)*rf(d,Q-r-t))
             for r in range(Q+1) for t in range(Q-r+1)}
    def entry(i,j):
        return sum((s.binomial(i,r)*s.binomial(j,r)
                    *s.binomial(Q-i,t)*s.binomial(Q-j,t)*weights[r,t]
                    for r in range(min(i,j)+1)
                    for t in range(min(Q-i,Q-j)+1)),s.S.Zero)
    return s.Matrix(Q+1,Q+1,entry)


@lru_cache(None)
def generators(delta,Q):
    """Return Q+1 independent polynomial generators before Vandermonde^4."""
    inverse=physical_gram(delta,Q).inv()
    X=a*x+b*x*(x-2*y)/3
    Y=a*y+b*y*(y-2*x)/3
    left=[s.Poly(s.expand(X**r*Y**(Q-r)),a,b) for r in range(Q+1)]
    right=s.Matrix([u**r*v**(Q-r) for r in range(Q+1)])
    out=[]
    for j in range(Q+1):
        coefficients=s.Matrix([poly.coeff_monomial(a**(Q-j)*b**j) for poly in left])
        polynomial=s.expand((coefficients.T*inverse*right)[0])
        out.append(polynomial)
    return tuple(out)


def complete_baseline_basis(delta,P,Q):
    """A factored basis, with no growing physical nullspace computation."""
    if P<Q:
        raise ValueError('Use left/right reflection first so P>=Q.')
    states=[]
    for j,F in enumerate(generators(delta,Q)):
        degree=P-12-Q-j
        if degree<0:
            continue
        for n3 in range(degree//3+1):
            if (degree-3*n3)%2:
                continue
            n2=(degree-3*n3)//2
            states.append({'generator_index':j,'e2_power':n2,'e3_power':n3,
                           'polynomial':V**4*E2**n2*E3**n3*F})
    assert len(states)==baseline_dimension(P,Q)
    return states


def primitive_polynomial(poly):
    p=s.Poly(s.expand(poly),x,y,u,v)
    p=p.clear_denoms()[1].primitive()[1]
    return p.as_expr()


def coefficient_vector(poly,P,Q):
    p=s.Poly(s.expand(poly),x,y,u,v)
    return s.Matrix([p.coeff_monomial(x**r*y**(P-r)*u**t*v**(Q-t))
                     for r in range(P+1) for t in range(Q+1)])


def verify():
    # Independent differential Casimir/permutation routines, not Racah data.
    from verify_nonchiral import differential_channel_basis,permutations
    records=[]
    for d in (s.Integer(2),s.Rational(3,2)):
        maxQ=6 if d==2 else 3
        for Q in range(maxQ+1):
            ER,IR=differential_channel_basis(d,Q)
            for j,F in enumerate(generators(d,Q)):
                P=12+Q+j
                psi=coefficient_vector(V**4*F,P,Q)
                EL,IL=differential_channel_basis(d,P)
                pair_coordinates=s.kronecker_product(IL,IR)*psi
                forbidden=[]
                for k in range(P+1):
                    for ell in range(Q+1):
                        coeff=pair_coordinates[k*(Q+1)+ell]
                        if (k+ell)%2 or k<=ell+2:
                            assert coeff==0
                            forbidden.append([k,ell])
                pl,pr=permutations(P),permutations(Q)
                for index in (0,1):
                    assert s.kronecker_product(pl[index],pr[index])*psi==psi
                records.append({'Delta':str(d),'Q':Q,'generator':j,'P':P,
                                'nonzero_wavefunction':any(t!=0 for t in psi),
                                'forbidden_pair_coefficients_exact_zero':len(forbidden),
                                'Bose_P12_residual':'0','Bose_P23_residual':'0'})
    samples=[]
    for Q,j in ((2,0),(3,0),(5,0),(6,0)):
        F=primitive_polynomial(generators(s.Integer(2),Q)[j])
        samples.append({'Delta':'2','Q':Q,'P':12+Q+j,
                        'wavefunction':'(x*y*(x-y))^4 * ('+str(F)+')',
                        'normalization':'primitive integer coefficients; not unit norm'})
    out={'verified_generators':len(records),'checks':records,
         'sample_minimal_wavefunctions':samples,
         'scope':'Full all-pair operator check follows from pair-Casimir coefficients and exact Bose symmetry. The physical two-body kernel is shared with the separate raw Einstein audit.'}
    Path(__file__).with_name('baseline_state_checks.json').write_text(
        json.dumps(out,ensure_ascii=False,indent=2)+'\n')
    print(json.dumps({'verified_generators':len(records),
                      'sample_minimal_wavefunctions':samples[:2]},indent=2))


if __name__=='__main__':
    verify()
