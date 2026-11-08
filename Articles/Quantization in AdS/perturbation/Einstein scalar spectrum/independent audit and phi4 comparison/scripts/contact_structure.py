#!/usr/bin/env sage
"""Fresh exact N=3 contact-projector audit; no archived-engine imports.

Run with SageMath 10.9:
  sage --nodotsage contact_structure.py --output ../results/contact_structure.json
The primary coordinates are u=z1-z2,v=z1+z2-2z3.  All matrix
entries and ranks are exact. Physical contact coefficients are
c_k=1/[8*pi*(2*Delta+2*k-1)]; c_k=1 is used ONLY for kernel tests.
"""
from sage.all import (
    QQ, ZZ, PolynomialRing, FractionField, matrix, vector,
    identity_matrix, diagonal_matrix, binomial, prod, factorial,
)
import argparse
import json
import hashlib
from sage.env import SAGE_VERSION
from pathlib import Path


_CHIRAL_CACHE = {}


def characters(P):
    return P + 1, int(P % 2 == 0), (1, -1, 0)[P % 3]


def multiplicities(P):
    e, t, c = characters(P)
    return ((e + 3*t + 2*c)//6, (e - 3*t + 2*c)//6, (e-c)//3)


def physical_dimension(P, Q):
    return sum(a*b for a, b in zip(multiplicities(P), multiplicities(Q)))


def chiral_data(P, delta):
    """Pair eigenvectors A; transposition (23) on monomials T and on eigenvectors S."""
    key = (int(P), str(delta))
    if key in _CHIRAL_CACHE:
        return _CHIRAL_CACHE[key]
    field = delta.parent()
    A = matrix(field, P+1, P+1)
    for k in range(P+1):
        A[k,k] = 1
        ck = (delta+k)*(delta+k-1)
        for a in range(k+2, P+1, 2):
            A[a,k] = A[a-2,k]*(P-a+2)*(P-a+1)/((delta+a)*(delta+a-1)-ck)
    T = matrix(field, P+1, P+1)
    # (23): u -> (u+v)/2, v -> (3u-v)/2.
    for b in range(P+1):
        for a in range(P+1):
            T[a,b] = sum(binomial(b,j)*binomial(P-b,a-j)*3**(a-j)*(-1)**(P-b-a+j)
                         for j in range(max(0,a-(P-b)), min(a,b)+1))/field(2)**P
    S = A.inverse()*T*A
    assert T*T == identity_matrix(field,P+1)
    J = diagonal_matrix(field,[(-1)**k for k in range(P+1)])
    assert (J*T)**3 == identity_matrix(field,P+1)
    _CHIRAL_CACHE[key] = (A,T,S)
    return A,T,S


def pair_reynolds_matrix(P,Q,delta):
    """Equal-channel compression E*Pi_Bose*E, in unnormalized orthogonal pair basis.

    The coordinates are biorthogonal rather than Euclidean adjoints.
    Its rank is the rank of Pi_Bose E by positivity of the physical metric.
    """
    A,T,S = chiral_data(P,delta)
    B,U,R = chiral_data(Q,delta)
    m = min(P,Q)
    return matrix(delta.parent(),m+1,m+1,
                  lambda j,k: ((1 if j==k else 0)+2*S[j,k]*R[j,k])/3)


def full_reynolds_columns(P,Q,delta):
    """Independent large-coordinate check of the small compressed rank."""
    A,T,S = chiral_data(P,delta)
    B,U,R = chiral_data(Q,delta)
    TA=T*A; UB=U*B; m=min(P,Q)
    rows=[(a,b) for a in range(P+1) for b in range(Q+1) if (a+b)%2==0]
    return matrix(delta.parent(),len(rows),m+1,
                  lambda j,k: (A[rows[j][0],k]*B[rows[j][1],k]
                               +2*TA[rows[j][0],k]*UB[rows[j][1],k])/3)


def record(P,Q,delta,full_check=False):
    K=pair_reynolds_matrix(P,Q,delta)
    rank=int(K.rank()); dimension=physical_dimension(P,Q)
    out={"Delta":str(delta),"P":P,"Q":Q,"dimension":dimension,
         "rank":rank,"kernel":dimension-rank,"rank_upper_bound":min(P,Q)+1}
    assert rank<=min(dimension,min(P,Q)+1)
    if P==Q:
        mult=multiplicities(P)
        odd=sum(m*(m-1)//2 for m in mult)
        even=sum(m*(m+1)//2 for m in mult)
        trace=K.trace()
        lower=(P+3)//3  # ceil((P+1)/3), since R_3(P)=P+1.
        out.update(multiplicities=list(mult),odd_kernel=odd,
                   even_dimension=even,even_kernel=even-rank,
                   compressed_projection_trace=str(trace),
                   stabilizer_rank_lower_bound=lower)
        assert even-rank>=0 and trace>=QQ(P+1)/3 and rank>=lower
        assert rank==(P if P>=1 else 1)
        out['balanced_rank_theorem_verified_on_block']=True
    if full_check:
        fullrank=int(full_reynolds_columns(P,Q,delta).rank())
        assert fullrank==rank
        out["full_coordinate_rank_check"]=fullrank
    return out


def to_strings(M):
    return [[str(x) for x in row] for row in M.rows()]


def certificate_44():
    R=PolynomialRing(QQ,names=('u','v','s','t')); u,v,s,t=R.gens()
    X=[(v+3*u)/6,(v-3*u)/6,-v/3]
    Y=[(t+3*s)/6,(t-3*s)/6,-t/3]
    def p(a,b): return sum(X[i]**a*Y[i]**b for i in range(3))
    B=[p(2,0)**2*p(0,2)**2,p(2,0)*p(0,2)*p(1,1)**2,p(1,1)**4,
       p(2,0)*p(1,2)**2,p(0,2)*p(2,1)**2]
    mons=[u**a*v**(4-a)*s**b*t**(4-b) for a in range(5) for b in range(5)]
    J=matrix(QQ,[[b.monomial_coefficient(m) for b in B] for m in mons])
    A,_,_=chiral_data(4,QQ(2))
    D=(A.inverse().tensor_product(A.inverse())*J).matrix_from_rows([6*k for k in range(5)])
    scales=[7776,648,5400,294,214326]
    scaled=diagonal_matrix(QQ,scales)*D
    assert J.rank()==5 and D.rank()==4
    assert D.right_kernel().basis()[0]==vector(QQ,[0,0,0,1,-1])
    assert scaled[:4,:4].det()==30240
    # Symbolic all-Delta minor, independently rebuilt from the recurrence.
    F=FractionField(PolynomialRing(QQ,'d')); d=F.gen()
    Ad,_,_=chiral_data(4,d)
    Dd=(Ad.inverse().tensor_product(Ad.inverse())*J.change_ring(F)).matrix_from_rows([6*k for k in range(5)])
    minor=Dd[:4,:4].det()
    expected=d*(d+2)/(6**10*(2*d+1)*(2*d+3))
    assert minor==expected and Dd.column(3)==Dd.column(4)
    return {"basis_dimension":5,"rank":4,"kernel_coordinates":[0,0,0,1,-1],
            "row_scales":scales,"scaled_diagonal_map":to_strings(scaled),
            "first_minor":str(scaled[:4,:4].det()),
            "all_Delta_minor":str(minor.factor()),
            "all_Delta_minor_formula":"Delta*(Delta+2)/(6^10*(2*Delta+1)*(2*Delta+3))"}


def certificate_66():
    """All-Delta exact rank-six witness; every displayed factor is positive for Delta>0."""
    F=FractionField(PolynomialRing(QQ,'d')); d=F.gen()
    K=pair_reynolds_matrix(6,6,d)
    minor=K[:6,:6].det()
    q=281*d**6+4215*d**5+25699*d**4+81365*d**3+140600*d**2+125000*d+44280
    expected=(25*d*(d+1)*(d+4)*(d+5)*(d+2)**2*(d+3)**2
              *(3*d+7)*(3*d+8)*(3*d+10)**2*q
              /(2048*(2*d+5)**6*(2*d+3)**4*(2*d+7)**4*(2*d+1)**2*(2*d+9)**2))
    assert minor==expected and K.det()==0
    assert all(c>0 for c in q.numerator().coefficients())
    return {"P":6,"Q":6,"dimension":9,"rank_all_Delta_gt_1":6,
            "odd_kernel":2,"even_kernel":1,
            "principal_minor_indices":list(range(6)),
            "principal_minor_factored":str(minor.factor()),
            "positive_polynomial":str(q),
            "determinant_identically_zero":True,
            "minor_equals_positive_product":True}


def direct_certificate_44():
    """Six-variable differential projectors, independently from recoupling compression."""
    R=PolynomialRing(QQ,names=('z1','z2','z3','w1','w2','w3'))
    z=list(R.gens()[:3]);w=list(R.gens()[3:]);delta=QQ(2)
    X=[x-sum(z)/3 for x in z];Y=[y-sum(w)/3 for y in w]
    def p(a,b):return sum(X[i]**a*Y[i]**b for i in range(3))
    B=[p(2,0)**2*p(0,2)**2,p(2,0)*p(0,2)*p(1,1)**2,p(1,1)**4,
       p(2,0)*p(1,2)**2,p(0,2)*p(2,1)**2]
    psi=B[3]-B[4]
    def C(f,V,i,j):
        d=V[i]-V[j]
        return -d**2*f.derivative(V[i]).derivative(V[j])+delta*d*(f.derivative(V[i])-f.derivative(V[j]))+delta*(delta-1)*f
    cs=[(delta+k)*(delta+k-1) for k in range(5)]
    def projector(f,V,i,j,k):
        for l in range(5):
            if l!=k:f=(C(f,V,i,j)-cs[l]*f)/(cs[k]-cs[l])
        return R(f)
    pairs=[(0,1),(0,2),(1,2)]
    def pair_action(f,i,j,physical_scaled=False):
        return sum(projector(projector(f,z,i,j,k),w,i,j,k)/(2*delta+2*k-1 if physical_scaled else 1)
                   for k in range(5))
    def action(f,physical_scaled=False):return sum(pair_action(f,i,j,physical_scaled) for i,j in pairs)
    mons=sorted(set(m for b in B for m in b.monomials()),key=str)
    BM=matrix(QQ,[[b.monomial_coefficient(m) for b in B]for m in mons])
    def operator_matrix(physical_scaled):
        images=[action(b,physical_scaled) for b in B]
        return matrix(QQ,[BM.solve_right(vector(QQ,[f.monomial_coefficient(m) for m in mons]))for f in images]).transpose()
    Wunit=operator_matrix(False); Wscaled=operator_matrix(True)
    def inner(f,g):
        fd=f.dict();gd=g.dict()
        return sum(c*gd.get(e,0)/prod(a+1 for a in e) for e,c in fd.items())
    G=matrix(QQ,[[inner(a,b) for b in B]for a in B])
    tests={"all_15_equal_channel_projections_zero":all(projector(projector(psi,z,i,j,k),w,i,j,k)==0 for i,j in pairs for k in range(5)),
           "left_primary":sum(psi.derivative(x) for x in z)==0,
           "right_primary":sum(psi.derivative(y) for y in w)==0,
           "factorization":psi==2*matrix(R,[[1,1,1],X,Y]).det()*prod(X[i]*Y[i]-X[j]*Y[j] for i,j in pairs),
           "positive_Gram":all(G[:i,:i].det()>0 for i in range(1,6)),
           "self_adjoint_unit":G*Wunit==Wunit.transpose()*G,
           "self_adjoint_physical":G*Wscaled==Wscaled.transpose()*G,
           "rank_unit":Wunit.rank()==4,"rank_physical":Wscaled.rank()==4}
    assert all(tests.values())
    return {"checks":{k:bool(v) for k,v in tests.items()},"psi_norm_squared":str(inner(psi,psi)),
            "unit_weight_W_matrix":to_strings(Wunit),"unit_weight_charpoly":str(Wunit.charpoly().factor()),
            "physical_scaled_operator_definition":"Wscaled = 8*pi*W_phi4; H=H0+lambda*W_phi4+O(lambda^2)",
            "physical_scaled_W_matrix":to_strings(Wscaled),"physical_scaled_charpoly":str(Wscaled.charpoly().factor()),
            "Gram_matrix":to_strings(G)}


def balanced_tridiagonal_certificate(P=6):
    """Targeted symbolic check of the all-P analytic proof's band identities."""
    F=FractionField(PolynomialRing(QQ,'d'));d=F.gen()
    _,_,S=chiral_data(P,d)
    lam=[(d+k)*(d+k-1) for k in range(P+1)]
    A=diagonal_matrix(F,lam);J=diagonal_matrix(F,[(-1)**k for k in range(P+1)])
    # S implements (23), so S A S=C13; conjugate by (12) to obtain C23.
    C=S*A*S;B=J*C*J
    # Replace v by 2u and normalize F_k=r^k*u^(P-k)+O(r^(k+2)).
    D=diagonal_matrix(F,[F(2)**(P-k) for k in range(P+1)])
    B=D*B*D.inverse();C=D*C*D.inverse()
    s=P*(P+3*d-1)+3*d*(d-1)
    assert A+B+C==s*identity_matrix(F,P+1)
    assert all(B[i,j]==0 for i in range(P+1) for j in range(P+1) if abs(i-j)>1)
    assert all(B[k-1,k]==-k*(P-k+d) for k in range(1,P+1))
    checks=[]
    for degree in range(2,P+1):
        power=B**degree+C**degree
        distance=degree if degree%2==0 else degree-1
        for i in range(P-distance+1):
            off=prod(B[j,j+1] for j in range(i,i+distance))
            expected=2*off if degree%2==0 else off*sum(s-lam[j] for j in range(i,i+degree))
            assert power[i,i+distance]==expected
            checks.append([degree,i])
    return {'P':P,'Delta':'symbolic d','Casimir_sum_verified':True,
            'irreducible_tridiagonal_lower_coefficient':'-k*(P-k+d)',
            'lower_coefficients_verified':True,'band_identity_checks':checks,
            'scope':'Finite symbolic regression of identities; all-P proof is analytic in structural comparison.md section 5.2.'}


def spectator_counterexample():
    """N=4 exchange-odd primary whose equal-k=0 projection cannot vanish."""
    R=PolynomialRing(QQ,names=('z1','z2','z3','z4','w1','w2','w3','w4'))
    z=list(R.gens()[:4]);w=list(R.gens()[4:])
    X=[x-sum(z)/4 for x in z];Y=[y-sum(w)/4 for y in w]
    def p(a,b):return sum(X[i]**a*Y[i]**b for i in range(4))
    psi=p(2,0)*p(1,3)-p(0,2)*p(3,1)
    parity=psi(*(w+z))==-psi
    primary=all(sum(psi.derivative(x) for x in V)==0 for V in (z,w))
    symmetric=True
    for i in range(3):
        zz=list(z);ww=list(w);zz[i],zz[i+1]=zz[i+1],zz[i];ww[i],ww[i+1]=ww[i+1],ww[i]
        symmetric=symmetric and psi(*(zz+ww))==psi
    collision=psi(1,1,0,-2,0,0,1,-1)
    assert parity and primary and symmetric and collision==-4
    # Multiplicity consistency of the associated-graded pair-Casimir decomposition.
    multiplicity_checks=[]
    for N in range(3,8):
        for P in range(13):
            dims=[binomial(P-k+N-3,N-3) for k in range(P+1)]
            assert sum(dims)==binomial(P+N-2,N-2)
            multiplicity_checks.append([N,P,int(sum(dims))])
    return {"N":4,"P":3,"Q":3,"polynomial":"p20*p13-p02*p31",
            "global_LR_odd":bool(parity),"primary":bool(primary),"S4_invariant":bool(symmetric),
            "left_collision_point":[1,1,0,-2],"right_collision_point":[0,0,1,-1],
            "value":str(collision),
            "conclusion":"P12,0^L P12,0^R psi is nonzero for every Delta>1",
            "pair_multiplicity_dimension_checks":multiplicity_checks}


def main(argv=None):
    parser=argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--output',type=Path,required=True)
    parser.add_argument('--grid-max',type=int,default=12)
    parser.add_argument('--balanced-max',type=int,default=24)
    args=parser.parse_args(argv)
    deltas=[QQ(3)/2,QQ(2),QQ(7)/3]
    result={"provenance":{"Sage_version":SAGE_VERSION,"script":str(Path(__file__).resolve()),
                           "script_sha256":hashlib.sha256(Path(__file__).read_bytes()).hexdigest(),
                           "archived_engine_imports":False},
            "conventions":{"N":3,"field":"QQ exact","Delta_values":[str(d) for d in deltas],
             "primary_coordinates":"u=z1-z2, v=z1+z2-2z3",
             "pair_eigenvalue":"(Delta+k)*(Delta+k-1)",
             "physical_pair_coefficient":"1/[8*pi*(2*Delta+2*k-1)]",
             "positivity":"All c_k>0; ranks/kernel independent of magnitudes."},
            "certificate_44":certificate_44(),"certificate_66":certificate_66(),
            "direct_certificate_44":direct_certificate_44(),
            "spectator_counterexample":spectator_counterexample(),
            "balanced_tridiagonal_certificate":balanced_tridiagonal_certificate(),
            "grid":[],"balanced":[]}
    for delta in deltas:
        print('exact grid Delta=',delta,flush=True)
        for P in range(args.grid_max+1):
            for Q in range(P+1):
                result['grid'].append(record(P,Q,delta,full_check=(P<=6 or (P,Q) in [(8,8),(10,4),(12,6)])))
        for P in range(args.balanced_max+1):
            result['balanced'].append(record(P,P,delta))
    result['rank_dependencies_on_sampled_Delta']=[]
    for P in range(args.grid_max+1):
        for Q in range(P+1):
            rr=[r['rank'] for r in result['grid'] if r['P']==P and r['Q']==Q]
            if len(set(rr))>1:result['rank_dependencies_on_sampled_Delta'].append([P,Q,rr])
    result['finite_mixed_rank_conjecture_mismatches']=[]
    for row in result['grid']:
        P=row['P'];Q=row['Q']
        if P<=Q:
            continue
        prediction=min(row['dimension'],Q+1-int(P-Q==1))
        if prediction!=row['rank']:
            result['finite_mixed_rank_conjecture_mismatches'].append(row)
    result['mixed_conjecture_not_theorem']='For P>Q: rank=min(d3(P,Q),Q+1-1_{P-Q=1}).'
    result['balanced_rank_theorem']='For N=3, all Delta>1, P=Q>=1: rank=P; rank(0,0)=1. Proof: irreducible-tridiagonal Casimir and polynomial band argument, structural comparison.md section 5.2.'
    # Mixed-block conjecture is not promoted by this scan. Balanced theorem has an all-index analytic proof.
    args.output.write_text(json.dumps(result,ensure_ascii=False,indent=2)+'\n',encoding='utf-8')
    print(json.dumps({"output":str(args.output),"grid_blocks":len(result['grid']),
                      "balanced_blocks":len(result['balanced']),
                      "rank_variations":result['rank_dependencies_on_sampled_Delta']},ensure_ascii=False),flush=True)
    return result


if __name__=='__main__':
    main()
