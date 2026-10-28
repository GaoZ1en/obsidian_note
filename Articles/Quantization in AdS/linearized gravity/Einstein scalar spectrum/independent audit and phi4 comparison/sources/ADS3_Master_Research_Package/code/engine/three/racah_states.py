"""Compact physical states and projectors for every three-scalar primary block.

No polynomial of degree max(P,Q) is expanded. The matrix size and all Racah
summation indices are bounded by min(P,Q). For fixed integer Delta, the
matrix construction has no product, factorial, or loop of length max(P,Q).

The returned JSON describes actual coupled-primary wavefunctions by an
explicit Clebsch-Gordan recurrence, fixes their phases and physical norms,
and supplies the positive image matrix and its physical Gram matrix.
"""
from pathlib import Path
import argparse
import json
import sympy as s

from three_body_nonchiral import (
    baseline_dimension, compressed_matrix, primary_dimension, racah_weight,
)


def _serial_matrix(matrix):
    return [[str(matrix[i,j]) for j in range(matrix.cols)]
            for i in range(matrix.rows)]


def _zero(matrix):
    return all(entry == 0 or s.cancel(entry) == 0 for entry in matrix)


def racah_state_matrices(delta, P, Q, verify=False):
    """Return exact SymPy matrices; compact_states is the JSON-facing API.

    S has columns u_alpha=Pi_B(f_Pk tensor f_Ql), each f orthonormal.
    D=diag(v), Omega=diag(omega), U=sqrt(Omega), B=3 S^dagger S.
    M=U^(-1) B U D. L=S D U intertwines the physical positive remainder A:
    A L=L M, and L^dagger L=D Omega M/3.
    """
    if any(not isinstance(j,(int,s.Integer)) or j < 0 for j in (P,Q)):
        raise ValueError('P and Q must be nonnegative integers.')
    P,Q=max(int(P),int(Q)),min(int(P),int(Q))
    d=s.sympify(delta)
    M,labels,potentials,baseline=compressed_matrix(d,P,Q)
    n=M.rows
    rank=primary_dimension(P,Q)-baseline_dimension(P,Q)
    if not 0 <= rank <= n:
        raise ArithmeticError('The exact kernel theorem gave an invalid rank.')
    weights=[s.cancel(racah_weight(d,P,k)*racah_weight(d,Q,l))
             for k,l in labels]
    D=s.diag(*potentials)
    Omega=s.diag(*weights)
    # g_alpha=sqrt(omega_alpha) u_alpha, so L=g D.
    bose_rescaled_gram=s.Matrix(n,n,lambda i,j:
        s.cancel(weights[i]*M[i,j]/(3*potentials[j])))
    lift_gram=s.Matrix(n,n,lambda i,j:
        s.cancel(potentials[i]*weights[i]*M[i,j]/3))
    if rank == n:
        # The proved all-index rank removes an unnecessary large-rational rref.
        E=s.eye(n)
        H=M
        gram=lift_gram
        columns=None
        pivot_rows=None
        embedding_convention='The auxiliary matrix has full rank; E is the identity.'
    elif rank == 0:
        E=s.zeros(n,0)
        H=s.zeros(0)
        gram=s.zeros(0)
        columns=[]
        pivot_rows=[]
        embedding_convention='There are no positive-shift physical states.'
    else:
        columns=list(M.rref()[1])
        if len(columns) != rank:
            raise ArithmeticError('Matrix rank disagrees with the complete kernel theorem.')
        E=M[:,columns]
        pivot_rows=list(E.T.rref()[1])
        square=E[pivot_rows,:]
        H=square.inv()*(M*E)[pivot_rows,:]
        H=H.applyfunc(s.cancel)
        gram=(E.T*lift_gram*E).applyfunc(s.cancel)
        embedding_convention='E consists of the listed independent columns of M.'
    if not _zero(gram-gram.T):
        raise ArithmeticError('The physical Gram matrix is not symmetric.')
    if verify:
        if not _zero(M*E-E*H):
            raise ArithmeticError('The image embedding does not intertwine M and H.')
        if not _zero(H.T*gram-gram*H):
            raise ArithmeticError('The positive image matrix is not metric self-adjoint.')
        if not _zero(lift_gram-D*bose_rescaled_gram*D):
            raise ArithmeticError('The independently written Gram scaling identities differ.')
    return {
        'Delta':d,'P':P,'Q':Q,'M':M,'D':D,'Omega':Omega,
        'labels':labels,'potentials':potentials,'weights':weights,
        'baseline':baseline,'rank':rank,'E':E,'H':H,'gram':gram,
        'bose_rescaled_gram':bose_rescaled_gram,'lift_gram':lift_gram,
        'state_coefficients':D*E,'image_columns':columns,
        'pivot_rows':pivot_rows,'embedding_convention':embedding_convention,
        'verified':bool(verify),
    }


def _coupled_primary_definition():
    """Complete finite state definition, kept symbolic in the large degree J."""
    return {
        'parameters':'For f_{J,k}, put q=J-k, a=2*Delta+2*k, b=Delta.',
        'pair_orientation':'Pair (1,2) has lowest polynomial (z1-z2)^k.',
        'single_site_raising_operator':'L_{-1}^{(i)}=z_i^2*d/dz_i+Delta*z_i.',
        'pair_descendant_recurrence':(
            'B_0=(z1-z2)^k; '
            'B_{r+1}=(L_{-1}^{(1)}+L_{-1}^{(2)})B_r/(a+r).'),
        'unnormalized_coupled_primary':(
            'F_{J,k}=sum_{r=0}^{q} (-1)^r*binomial(q,r)*B_r*z3^(q-r).'),
        'physical_norm_squared':(
            'N_{J,k}=[k!*(2*Delta+k-1)_k/(Delta)_k^2]'
            '*[q!*(a+b+q-1)_q/((a)_q*(b)_q)].'),
        'norm_recurrence_optional':(
            'N_pair=k!*(2*Delta+k-1)_k/(Delta)_k^2; n_0=1; '
            'n_{q+1}/n_q=(q+1)*(a+b+2*q)*(a+b+2*q-1)'
            '/((a+b+q-1)*(a+q)*(b+q)); N_{k+q,k}=N_pair*n_q.'),
        'orthonormal_primary':'f_{J,k}=F_{J,k}/sqrt(N_{J,k}), with the positive real square root.',
        'phase':(
            'The coefficient of z3^(J-k) in F_{J,k} is exactly (z1-z2)^k. '
            'This phase gives R_J(k,r)=(-1)^J*(Delta)_J/(2*Delta)_J'
            '*sqrt(w_Jk*w_Jr)*Racah_J(k,r).'),
        'Pochhammer':'(a)_n=a*(a+1)*...*(a+n-1), and (a)_0=1.',
        'physical_inner_product':(
            '<z1^a1*z2^a2*z3^a3,z1^b1*z2^b2*z3^b3>'
            '=product_i delta_{ai,bi}*ai!/(Delta)_{ai}; '
            'the left/right inner products multiply.'),
        'Bose_projection':(
            'u_{k,l}=[1+P13^L*P13^R+P23^L*P23^R]'
            '(f_{P,k}(z)*f_{Q,l}(w))/3. '
            'Pij swaps coordinates i,j in the specified chirality. '
            'This equals the six-permutation orthogonal Bose average because k+l is even.'),
        'rescaled_Bose_pair_vector':'g_alpha=sqrt(omega_alpha)*u_alpha.',
        'large_degree_policy':(
            'The recurrence and norm are exact definitions; this program does not '
            'iterate to J, evaluate J!, or expand these high-degree polynomials.'),
    }


def _baseline_family(delta, P, Q):
    """Give every baseline basis label in O(Q) records, even for enormous P."""
    multiplicity=baseline_dimension(P,Q)
    if not multiplicity:
        return {'multiplicity':0,'families':[]}
    from baseline_states import physical_gram
    inverse=physical_gram(delta,Q).inv()
    families=[]
    for j in range(Q+1):
        residual=P-12-Q-j
        if residual < 0:
            continue
        first=residual%2
        max_t=(residual//3-first)//2
        if max_t < 0:
            continue
        families.append({
            'generator_index':j,
            'parameter_t_min':0,'parameter_t_max':max_t,
            'e3_power':f'{first}+2*t',
            'e2_power':f'({residual}-3*({first}+2*t))/2',
            'number_of_states':max_t+1,
        })
    if sum(item['number_of_states'] for item in families) != multiplicity:
        raise ArithmeticError('Compact baseline family count disagrees with its Hilbert series.')
    return {
        'multiplicity':multiplicity,
        'coordinates':'x=z1-z3, y=z2-z3, u=w1-w3, v=w2-w3.',
        'Vandermonde':'V=x*y*(x-y).',
        'invariant_e2':'e2=x^2-x*y+y^2.',
        'invariant_e3':'e3=-(x+y)*(2*x-y)*(x-2*y)/2.',
        'right_monomials':[f'u^{r}*v^{Q-r}' for r in range(Q+1)],
        'right_primary_gram_inverse':_serial_matrix(inverse),
        'kernel':(
            'K_Q(X,Y;u,v)=sum_{r,s=0}^Q X^r*Y^(Q-r)'
            '*right_primary_gram_inverse[r][s]*u^s*v^(Q-s).'),
        'frame_substitution':(
            'X=a*x+b*x*(x-2*y)/3; Y=a*y+b*y*(y-2*x)/3.'),
        'generator_definition':'F_j=[a^(Q-j)*b^j] K_Q(X,Y;u,v).',
        'state_definition':'V^4*e2^(e2_power)*e3^(e3_power)*F_j.',
        'families':families,
        'normalization':(
            'These are independent polynomial states, not individually normalized; '
            'use the supplied physical monomial inner product if unit vectors are needed. '
            'Their entire span is orthogonal to the positive image.'),
    }


def compact_states(delta, P, Q, verify=False, include_characteristic_polynomial=True,
                   include_baseline_family=True):
    """JSON-serializable exact states, metric and image Hamiltonian.

    The physical image columns Phi_j=sum_alpha g_alpha*(D E)_{alpha,j}
    span all positive-shift states. If H y=lambda y, Phi y is the physical
    eigenstate, with norm squared y^dagger physical_gram y.
    """
    original=[int(P),int(Q)]
    data=racah_state_matrices(delta,P,Q,verify=verify)
    d,P,Q=data['Delta'],data['P'],data['Q']
    n=data['M'].rows
    rank=data['rank']
    state_definition=_coupled_primary_definition()
    state_definition.update({
        'basis_order':'The rows alpha follow channels; image column j follows image_embedding columns.',
        'positive_image_basis':(
            'Phi_j=sum_alpha g_alpha*image_state_coefficients[alpha][j]. '
            'Here image_state_coefficients=D*E and g_alpha is defined above.'),
        'image_state_coefficients':_serial_matrix(data['state_coefficients']),
        'coordinate_matrix_for_positive_shift':_serial_matrix(data['H']),
        'physical_gram':_serial_matrix(data['gram']),
        'eigenstate_rule':(
            'For each positive root lambda, solve (coordinate_matrix_for_positive_shift'
            '-lambda*I)y=0. The state is sum_j Phi_j*y_j, normalized by '
            'sqrt(y^dagger*physical_gram*y). Use Gram orthogonalization within repeated eigenspaces.'),
    })
    report={
        'backend':'three-body compact Racah states',
        'Delta':str(d),'primary_bidegree':original,'calculation_bidegree':[P,Q],
        'polynomial_state_chiralities_must_be_exchanged_back':original != [P,Q],
        'energy_convention':'E=3*Delta+P+Q+G*(baseline+lambda)+o(G).',
        'physical_primary_dimension':primary_dimension(P,Q),
        'baseline_G_coefficient':str(data['baseline']),
        'baseline_multiplicity':baseline_dimension(P,Q),
        'auxiliary_dimension':n,'positive_rank':rank,
        'discarded_auxiliary_zeros':n-rank,
        'channels':[list(t) for t in data['labels']],
        'positive_pair_residuals':[str(v) for v in data['potentials']],
        'omega_diagonal':[str(v) for v in data['weights']],
        'rational_compressed_matrix':_serial_matrix(data['M']),
        'image_embedding':_serial_matrix(data['E']),
        'image_embedding_convention':data['embedding_convention'],
        'independent_auxiliary_image_columns':data['image_columns'],
        'image_coordinate_pivot_rows':data['pivot_rows'],
        'positive_image_matrix':_serial_matrix(data['H']),
        'physical_gram':_serial_matrix(data['gram']),
        'rescaled_Bose_pair_gram':_serial_matrix(data['bose_rescaled_gram']),
        'auxiliary_lift_gram':_serial_matrix(data['lift_gram']),
        'state_construction':state_definition,
        'projector_lift':{
            'notation':'Phi denotes the physical positive image basis columns; G=physical_gram; H=positive_image_matrix.',
            'positive_image_projector':'Pi_positive=Phi*G^(-1)*Phi^dagger.',
            'baseline_projector':'Pi_baseline=I_physical-Pi_positive.',
            'eigenvalue_projector':(
                'Let q(t) be the square-free characteristic polynomial of H. '
                'For a root lambda, let p_lambda(t)=[q(t)/(t-lambda)]/q_prime(lambda). '
                'Then Pi_lambda=Phi*p_lambda(H)*G^(-1)*Phi^dagger.'),
            'zero_rank_rule':'If positive_rank=0, Pi_positive=0 and Pi_baseline=I_physical.',
        },
        'exact_matrix_identities_verified':data['verified'],
        'complexity':(
            'All matrices have dimension at most floor((min(P,Q)+4)^2/4)-2. '
            'Only bounded-index Racah sums are used. For fixed integer Delta, '
            'the number of multiplicative factors does not grow with max(P,Q); '
            'integer bit lengths still grow. Baseline states are encoded as indexed families.'),
    }
    if include_characteristic_polynomial:
        x=s.Symbol('x')
        polynomial=data['H'].charpoly(x)
        report['positive_shift_polynomial']=str(polynomial.as_expr())
        report['positive_shift_coefficients_descending']=[str(c) for c in polynomial.all_coeffs()]
    if include_baseline_family:
        report['baseline_state_family']=_baseline_family(d,P,Q)
    if not d.is_number:
        report['specialization_rule']=(
            'Generic symbolic image pivots may vanish at special Delta. '
            'Specialize Delta>1 and recompute the image basis and projectors there.')
    return report


def main():
    parser=argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--delta',default='2')
    parser.add_argument('--left',type=int,required=True)
    parser.add_argument('--right',type=int,required=True)
    parser.add_argument('--verify',action='store_true')
    parser.add_argument('--output')
    args=parser.parse_args()
    result=compact_states(s.Rational(args.delta),args.left,args.right,verify=args.verify)
    payload=json.dumps(result,ensure_ascii=False,indent=2)+'\n'
    if args.output:
        Path(args.output).write_text(payload)
    else:
        print(payload,end='')


if __name__=='__main__':
    main()
