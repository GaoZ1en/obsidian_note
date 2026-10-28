"""Independent physical-polynomial audit of compact Racah state lifting.

This verification expands only the explicitly listed small test cases.
It constructs CG polynomials and their six-permutation Bose average, uses
the original product Bargmann norm, and checks the full differential
pair-Casimir Hamiltonian. No recoupling formula enters that reference
wavefunction/inner-product construction.
"""
from functools import lru_cache
from pathlib import Path
import json
import time
import sympy as s

from racah_states import racah_state_matrices, compact_states
from verify_nonchiral import full_primary_reference
from baseline_states import physical_gram

z=s.symbols('z1:4')
PERMUTATIONS=((0,1,2),(1,0,2),(0,2,1),(2,1,0),(1,2,0),(2,0,1))


def zero(matrix):
    return all(t == 0 or s.simplify(t) == 0 for t in matrix)


@lru_cache(None)
def norm_weight(delta, powers):
    return s.prod(s.factorial(n)/s.rf(delta,n) for n in powers)


@lru_cache(None)
def physical_cg(delta,J,k):
    q=J-k
    B=(z[0]-z[1])**k
    F=s.S.Zero
    for r in range(q+1):
        F+=(-1)**r*s.binomial(q,r)*B*z[2]**(q-r)
        if r < q:
            B=s.expand(sum(z[i]**2*s.diff(B,z[i])+delta*z[i]*B
                           for i in (0,1))/(2*delta+2*k+r))
    F=s.expand(F)
    assert s.expand(sum(s.diff(F,zi) for zi in z)) == 0
    terms=dict(s.Poly(F,*z).terms())
    norm=s.cancel(sum(c*c*norm_weight(delta,key) for key,c in terms.items()))
    expected=(s.factorial(k)*s.rf(2*delta+k-1,k)/s.rf(delta,k)**2
              *s.factorial(q)*s.rf(3*delta+J+k-1,q)
              /(s.rf(2*delta+2*k,q)*s.rf(delta,q)))
    assert s.cancel(norm-expected) == 0
    return terms,norm


def bose_product(delta,P,Q,k,l):
    left,nl=physical_cg(delta,P,k)
    right,nr=physical_cg(delta,Q,l)
    out={}
    for a,ca in left.items():
        for b,cb in right.items():
            for perm in PERMUTATIONS:
                key=tuple(a[j] for j in perm)+tuple(b[j] for j in perm)
                out[key]=out.get(key,s.S.Zero)+ca*cb/6
    out={key:s.cancel(value) for key,value in out.items() if value != 0}
    return out,nl*nr


def check(delta,P,Q):
    started=time.perf_counter()
    data=racah_state_matrices(delta,P,Q,verify=True)
    n=data['M'].rows
    raw=[]
    scales=[]
    for index,(k,l) in enumerate(data['labels']):
        terms,norm=bose_product(delta,P,Q,k,l)
        raw.append(terms)
        scales.append(s.sqrt(data['weights'][index]/norm))
    true_gram=s.zeros(n)
    for i in range(n):
        for j in range(i,n):
            entry=sum(ci*raw[j].get(key,0)*norm_weight(delta,key)
                      for key,ci in raw[i].items())
            entry=s.simplify(entry*scales[i]*scales[j])
            true_gram[i,j]=true_gram[j,i]=entry
    assert zero(true_gram-data['bose_rescaled_gram'])
    true_image_gram=data['state_coefficients'].T*true_gram*data['state_coefficients']
    assert zero(true_image_gram-data['gram'])
    # Set z3=w3=0 to express true primary polynomials in the independent
    # translation-primary coordinates x=z1-z3,y=z2-z3,u=w1-w3,v=w2-w3.
    vectors=s.zeros((P+1)*(Q+1),n)
    for col,terms in enumerate(raw):
        for key,value in terms.items():
            if key[2] == 0 and key[5] == 0:
                row=key[0]*(Q+1)+key[3]
                vectors[row,col]+=value*scales[col]
    reference=full_primary_reference(delta,P,Q,matrices=True)
    if reference['dimension']:
        B=reference['basis']
        pivots=list(B.T.rref()[1])
        coordinates=B[pivots,:].inv()*vectors[pivots,:]
        assert zero(B*coordinates-vectors)
        image_coordinates=coordinates*data['state_coefficients']
        A=reference['matrix']-data['baseline']*s.eye(B.cols)
        assert zero(A*image_coordinates-image_coordinates*data['H'])
        # Independent physical-primary Gram gives an orthogonal image
        # projector, including the test case with a nonzero baseline space.
        full_gram=B.T*s.kronecker_product(physical_gram(delta,P),
                                         physical_gram(delta,Q))*B
        assert zero(image_coordinates.T*full_gram*image_coordinates-data['gram'])
        projector=(image_coordinates*data['gram'].inv()
                   *image_coordinates.T*full_gram)
        assert zero(projector*projector-projector)
        assert zero(projector.T*full_gram-full_gram*projector)
        assert zero((s.eye(B.cols)-projector)*A)
        assert s.simplify(s.trace(projector)) == data['rank']
    else:
        assert zero(vectors)
        assert data['rank'] == 0
    result=compact_states(delta,P,Q,verify=True)
    record={
        'Delta':str(delta),'P':P,'Q':Q,
        'primary_dimension':reference['dimension'],
        'auxiliary_dimension':n,'positive_rank':data['rank'],
        'baseline_multiplicity':result['baseline_multiplicity'],
        'CG_norm_residual':'exact zero',
        'direct_Bose_pair_Gram_residual':'exact zero',
        'direct_image_Gram_residual':'exact zero',
        'full_Hamiltonian_action_residual':'exact zero',
        'physical_image_projector_idempotence_residual':'exact zero',
        'physical_image_projector_adjoint_residual':'exact zero',
        'baseline_complement_action_residual':'exact zero',
        'seconds':round(time.perf_counter()-started,3),
    }
    print(json.dumps(record),flush=True)
    return record


def main():
    cases=[(s.Integer(2),0,0),(s.Integer(2),1,0),
           (s.Integer(2),3,1),(s.Integer(2),4,2),
           (s.Rational(3,2),4,2),(s.Rational(7,3),3,2),
           (s.Integer(2),13,1)]
    records=[check(*case) for case in cases]
    output={
        'method':__doc__,'exact_cases':len(records),'results':records,
        'shared_dynamical_input':(
            'The established Einstein two-body kernel is shared; CG polynomials, '
            'their physical norms, Bose averaging, and the differential pair-Casimir '
            'manybody action are constructed without Racah compression.'),
    }
    Path(__file__).with_name('racah_state_verification.json').write_text(
        json.dumps(output,indent=2)+'\n')


if __name__=='__main__':
    main()
