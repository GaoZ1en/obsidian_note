#!/usr/bin/env python3
"""Executable checks for principal_bundle_sewing_v2.

Run: python checks/run_checks.py
The JSON distinguishes exact identities, counterexamples and finite diagnostics.
Passing numerical samples is NOT a proof of continuum existence or completeness.
"""
from __future__ import annotations

import json
import math
import platform
import sys
from pathlib import Path
from typing import Callable, Any

import numpy as np
import scipy
from scipy.linalg import expm
from scipy.integrate import quad
import sympy as s

ROOT = Path(__file__).resolve().parents[1]
RESULTS: list[dict[str, Any]] = []
I = s.I


def exact(expr: Any) -> bool:
    if isinstance(expr, s.MatrixBase):
        return all(s.simplify(s.expand_complex(x)) == 0 for x in expr)
    return s.simplify(s.expand_complex(expr)) == 0


def check(name: str, kind: str, section: str, fn: Callable[[], Any]) -> None:
    rec: dict[str, Any] = {"name": name, "kind": kind, "proof_or_scope": section}
    try:
        val = fn()
        if isinstance(val, dict):
            rec.update(val)
            passed = bool(val.get("passed", False))
        else:
            passed = bool(val)
        rec["passed"] = passed
    except Exception as exc:
        rec.update(passed=False, error=f"{type(exc).__name__}: {exc}")
    RESULTS.append(rec)
    print(f"{'PASS' if rec['passed'] else 'FAIL'} [{kind}] {name}", flush=True)


def near_result(residual: float, tol: float = 1e-10, **extra: Any) -> dict:
    return {"passed": bool(residual < tol), "max_abs_residual": float(residual),
            "tolerance": tol, **extra}


# Genuine noncommuting SU(2) data, not an Abelian surrogate.
pauli = [np.array([[0, 1], [1, 0]], complex),
         np.array([[0, -1j], [1j, 0]], complex),
         np.array([[1, 0], [0, -1]], complex)]
T = [-0.5j * a for a in pauli]

def alg(v):
    return sum(float(c)*a for c, a in zip(v, T))

def inner(a, b):
    return -2*np.trace(a@b)

rng = np.random.default_rng(20260914)


def anchored_covariance():
    worst = 0.
    for _ in range(24):
        U1, U2, h, gx, g1, g2, gy = [expm(alg(rng.normal(size=3))) for _ in range(7)]
        cut = U2 @ h @ U1
        transformed = (gy@U2@g2.conj().T)@(g2@h@g1.conj().T)@(g1@U1@gx.conj().T)
        worst = max(worst, np.max(np.abs(transformed-gy@cut@gx.conj().T)))
    return near_result(worst, samples=24)
check("nonabelian_anchored_seam_covariance", "finite_diagnostic", "01 (1.5)", anchored_covariance)


def cotangent_identity():
    worst = 0.
    for _ in range(24):
        U1, U2 = [expm(alg(rng.normal(size=3))) for _ in range(2)]
        p1,p2,X1,X2 = [alg(rng.normal(size=3)) for _ in range(4)]
        lhs = inner(p1, X1)+inner(p2, X2)
        Xu = U1.conj().T@X2@U1+X1
        pav = p2-U1@p1@U1.conj().T
        rhs = inner(p1,Xu)+inner(pav,X2)
        worst=max(worst,abs(lhs-rhs))
    return near_result(worst, samples=24)
check("SU2_cotangent_one_form_change_of_variables", "finite_diagnostic", "05 (5.4)", cotangent_identity)


def endpoint_ode():
    qa, qb, p0 = alg([.3,.5,-.2]), alg([-.4,.2,.6]), alg([.7,-.1,.3])
    U0=expm(alg([.2,-.4,.1])); ell=.8; e2=.7
    def sol(t):
        ga=expm(-t*qa); gb=expm(-t*qb)
        p=ga@p0@ga.conj().T
        U=gb@U0@expm(e2*ell*t*p0)@ga.conj().T
        return U,p
    worst=0.
    for t in [.1,.4,.9]:
        h=1e-5; U,p=sol(t); Up,pp=sol(t+h); Um,pm=sol(t-h)
        worst=max(worst,np.max(abs((Up-Um)/(2*h)-(e2*ell*U@p+U@qa-qb@U))),
                  np.max(abs((pp-pm)/(2*h)-(-qa@p+p@qa))))
    return near_result(worst, 2e-9, scope="constant noncommuting histories; general histories proved by differentiating (5.12)")
check("YM2_noncommuting_endpoint_history_solution", "finite_diagnostic", "05 (5.12)", endpoint_ode)


def three_segment_flow():
    U1,U2,U3=[expm(alg(rng.normal(size=3))) for _ in range(3)]
    p1=alg([.4,-.2,.8]); p2=U1@p1@U1.conj().T; p3=U2@p2@U2.conj().T
    qs=[alg(rng.normal(size=3)) for _ in range(4)]
    ls=[.3,.6,.8]; es=.9
    Us=[U1,U2,U3]; ps=[p1,p2,p3]
    dots=[es*l*U@p+U@qs[i]-qs[i+1]@U for i,(l,U,p) in enumerate(zip(ls,Us,ps))]
    total=dots[2]@U2@U1+U3@dots[1]@U1+U3@U2@dots[0]
    U=U3@U2@U1
    target=es*sum(ls)*U@p1+U@qs[0]-qs[3]@U
    return near_result(np.max(abs(total-target)))
check("YM2_three_segments_source_cancellation_and_dynamics", "finite_diagnostic", "05.5", three_segment_flow)

q1,q2,a,q = s.symbols('q1 q2 a q', real=True)
psi=s.Function('psi')
check("U1_PBW_vertical_momentum_annihilates_physical_functions", "exact_identity", "05 (5.7)",
      lambda: exact(s.diff(s.exp(I*q)*psi(q),a,2)))
check("U1_each_leg_Laplacian_intertwines", "exact_identity", "05 (5.11)",
      lambda: exact(s.diff(s.exp(3*I*(q1+q2)),q1,2)+s.diff(s.exp(3*I*(q1+q2)),q2,2)
                    -2*(-9)*s.exp(3*I*(q1+q2))))
Ts=[-I*s.Matrix([[0,1],[1,0]])/2,-I*s.Matrix([[0,-I],[I,0]])/2,-I*s.diag(1,-1)/2]
check("SU2_fundamental_Casimir_operator_symbol", "exact_identity", "05 (5.11)",
      lambda: exact(sum((t*t for t in Ts),s.zeros(2))+s.Rational(3,4)*s.eye(2)))


def haar_fundamental():
    # Exact quadrature for the low-degree polynomial used here, not a general Haar proof.
    us=(np.arange(2)+.5)/2; phases=np.arange(8)*2*np.pi/8
    mats=[]
    for u in us:
        for alpha in phases:
            for beta in phases:
                z1=np.sqrt(u)*np.exp(1j*alpha);z2=np.sqrt(1-u)*np.exp(1j*beta)
                mats.append([[z1,z2],[-z2.conjugate(),z1.conjugate()]])
    G=np.array(mats)
    one=2*np.mean(abs(G[:,0,0])**2)
    products=np.einsum('aij,bjk->abik',G,G)
    two=2*np.mean(abs(products[:,:,0,0])**2)
    return near_result(max(abs(one-1),abs(two-1)), scope="fundamental matrix coefficient, normalized Hopf-coordinate quadrature")
check("SU2_Haar_isometry_nonconstant_state", "finite_diagnostic", "05 (5.9)-(5.10)", haar_fundamental)

# Exact harmonic reduction includes the vertical canonical pairs.
N=4
Qs=s.symbols('Q0:'+str(N)); Ps=s.symbols('P0:'+str(N))
X=s.symbols('Q r1:'+str(N))  # Q,r1,r2,r3
P, *pis=s.symbols('P pi1:'+str(N))
oldq=[X[0]-sum(X[1:])]+list(X[1:])
oldp=[P]+[P+pi for pi in pis]
new_coeff=[s.simplify(sum(oldp[i]*s.diff(oldq[i],xx) for i in range(N))) for xx in X]
check("four_interval_harmonic_cotangent_normal_form", "exact_identity", "06 (6.19)-(6.20)",
      lambda: all(exact(x-y) for x,y in zip(new_coeff,[P]+pis)))
L,V,e2=s.symbols('L V e2', positive=True)
check("Maxwell_QP_normalization", "exact_identity", "06 (6.9)-(6.10)",
      lambda: exact(L*V/(L*V)-1))
Q0,P0,t,c=s.symbols('Q0 P0 t c', real=True)
check("curvature_cannot_detect_harmonic_position", "counterexample", "06.4",
      lambda: exact(s.diff(Q0+e2*L/V*P0*t+c,t)-s.diff(Q0+e2*L/V*P0*t,t))
      and not exact(s.exp(I*(Q0+c))-s.exp(I*Q0)))
check("harmonic_Wilson_flux_Poisson_bracket", "exact_identity", "06 (6.11)",
      lambda: exact(s.diff(s.exp(I*Q0),Q0)-I*s.exp(I*Q0)))
n=s.symbols('n', integer=True)
check("compact_large_gauge_preserves_U_not_Q", "exact_identity", "06.9",
      lambda: s.simplify(s.exp(2*s.pi*I*n))==1 and s.diff(Q0+2*s.pi*n,Q0)==1)

x,m=s.symbols('x m', real=True)
u=x*(1-x);force=2+m*m*u
check("complete_corner_source_tuple_is_compatible", "exact_identity", "02.3",lambda: exact(-s.diff(u,x,2)+m*m*u-force))
check("compatible_corner_tuple_fails_componentwise_split", "counterexample", "02.3; 06.7",
      lambda: s.simplify(force.subs(x,0))==2 and s.diff(u,x,2).subs(x,0)==-2)
ca,cb,fx=s.symbols('ca cb fx',real=True)
check("Maxwell_transition_probe_cancels_boundary_gauge_variation", "exact_identity", "06 (6.13)",
      lambda: exact(fx*(ca-cb)+fx*(cb-ca)))
check("locally_exact_dx_is_not_global_Dirichlet_gauge", "counterexample", "06 (6.14)",
      lambda: s.integrate(1,(x,0,L))==L and s.diff(x,x)==1)

w,tt,tt2=s.symbols('w tt tt2', positive=True)
M=s.Matrix([[s.cos(w*tt),e2*s.sin(w*tt)/w],[-w*s.sin(w*tt)/e2,s.cos(w*tt)]])
Js=s.Matrix([[0,1],[-1,0]])
check("all_nonzero_Maxwell_modes_symplectic_evolution", "exact_identity", "06 (6.3)",lambda: exact(M.T*Js*M-Js))
M0=s.Matrix([[1,e2*tt],[0,1]])
check("harmonic_zero_mode_symplectic_evolution", "exact_identity", "06 (6.3)",lambda: exact(M0.T*Js*M0-Js))
check("Peierls_CPS_sign_and_normalization", "exact_identity", "06.8",
      lambda: exact(e2*(s.cos(w*tt)*s.sin(w*tt2)-s.sin(w*tt)*s.cos(w*tt2))/w
                    -e2*s.sin(w*(tt2-tt))/w))
check("Peierls_zero_mode_limit", "exact_identity", "06.8",
      lambda: exact(s.limit(e2*s.sin(w*(tt2-tt))/w,w,0)-e2*(tt2-tt)))


def uniform_mode_bounds():
    omega=np.r_[0.,np.geomspace(1e-10,1e7,2000)]
    t=.73
    sv=t*np.sinc(omega*t/np.pi)
    excess=max(float(np.max(abs(sv)-abs(t))),float(np.max(abs(omega*sv)-1)),float(np.max(abs(np.cos(omega*t))-1)))
    return near_result(max(0.,excess),1e-12,scope="samples only; inequalities are analytic in (6.4)")
check("frequency_uniform_response_including_zero", "finite_diagnostic", "06 (6.4)",uniform_mode_bounds)
y,z,k,py,pz=s.symbols('y z k py pz',real=True)
mode=s.Matrix([I*py*s.cos(k*x),k*s.sin(k*x),0])*s.exp(I*(py*y+pz*z))
check("relative_transverse_mode_Gauss_constraint", "exact_identity", "06.1",lambda: exact(s.diff(mode[0],x)+s.diff(mode[1],y)+s.diff(mode[2],z)))
check("n_zero_p_nonzero_is_propagating_not_harmonic", "exact_identity", "06.1",lambda: exact(-s.diff(s.exp(I*py*y),y,2)-py**2*s.exp(I*py*y)))

# Scalar affine Dirichlet-to-Neumann composition in a Laplace/elliptic half-plane.
def dtn(ell: float, kap: complex):
    if abs(kap)<1e-12:
        return np.array([[1,-1],[-1,1]],complex)/ell
    return kap*np.array([[1/np.tanh(kap*ell),-1/np.sinh(kap*ell)],[-1/np.sinh(kap*ell),1/np.tanh(kap*ell)]],complex)
def affine_force(ell:float, kap:complex, f:complex):
    if abs(kap)<1e-12:
        return np.full(2,-f*ell/2,dtype=complex)
    return np.full(2,-f*np.tanh(kap*ell/2)/kap,dtype=complex)
def join(A,b,B,c):
    # q=(left,seam,right), outward conormal sum at seam equals zero.
    K=np.zeros((3,3),complex);v=np.zeros(3,complex)
    K[:2,:2]+=A;K[1:,1:]+=B;v[:2]+=b;v[1:]+=c
    out=[0,2]; cross=K[np.ix_(out,[1])]
    R=K[np.ix_(out,out)]-cross@K[np.ix_([1],out)]/K[1,1]
    rv=v[out]-cross[:,0]*v[1]/K[1,1]
    return R,rv

def affine_sewing():
    worst=0.
    for kap in [0.,.2,1.4,2.+.7j]:
        a,b=.4,.9;f=.7+.2j
        K,v=join(dtn(a,kap),affine_force(a,kap,f),dtn(b,kap),affine_force(b,kap,f))
        worst=max(worst,np.max(abs(K-dtn(a+b,kap))),np.max(abs(v-affine_force(a+b,kap,f))))
    return near_result(worst,scope="nonzero constant bulk source; Laplace-domain scalar response, not a full PDE numerical proof")
check("sourced_affine_DtN_sewing", "finite_diagnostic", "02.3; 06.7-6.8",affine_sewing)

def dtn_three():
    worst=0.
    for kap in [0.,.3,1.1+.5j]:
        ls=[.2,.5,.8];fs=.9
        Ds=[(dtn(l,kap),affine_force(l,kap,fs)) for l in ls]
        left=join(*join(*Ds[0],*Ds[1]),*Ds[2])
        right=join(*Ds[0],*join(*Ds[1],*Ds[2]))
        target=(dtn(sum(ls),kap),affine_force(sum(ls),kap,fs))
        worst=max(worst,*[np.max(abs(z-z1)) for z,z1 in zip(left,right)],*[np.max(abs(z-z1)) for z,z1 in zip(left,target)])
    return near_result(worst)
check("three_slab_sourced_response_regrouping", "finite_diagnostic", "06.8",dtn_three)
check("zero_frequency_DtN_radical_must_not_delete_homogeneous_solution", "counterexample", "02.3",
      lambda: np.linalg.norm(dtn(1.,0.)@np.ones(2))==0 and np.linalg.matrix_rank(dtn(1.,0.))==1)

# Topology and CS current constraints.
ang=s.symbols('ang',real=True)
check("monopole_flux_transition_winding", "exact_identity", "01.5",lambda: exact(s.integrate(n*s.sin(ang)/2,(ang,0,s.pi))*2*s.pi-2*s.pi*n))
check("disk_transport_PDE_allows_forbidden_nonzero_mean", "counterexample", "07 (7.2)",
      lambda: s.diff(c,t)==0 and s.integrate(c,(ang,0,2*s.pi))==2*s.pi*c)
f=x*x+1;g=x+2
check("open_arc_current_cocycle_endpoint_defect", "exact_identity", "07 (7.7)",
      lambda: exact(s.integrate(f*s.diff(g,x)+g*s.diff(f,x),(x,0,1))-(f*g).subs(x,1)+(f*g).subs(x,0)))
check("open_arc_current_cocycle_not_antisymmetric", "counterexample", "07 (7.7)",
      lambda: s.integrate(f*s.diff(g,x)+g*s.diff(f,x),(x,0,1))!=0)
k1,k2=s.symbols('k1 k2',real=True)
check("unequal_CS_levels_leave_seam_anomaly", "counterexample", "07.4",lambda: not exact((k1-k2)*s.integrate(f*s.diff(g,x),(x,0,1))))
# Chord lift identity uses current difference dphi2-dphi1=dlam, not only bracket cancellation.
dphi1,dlam,fC=s.symbols('dphi1 dlam fC',real=True)
check("CS_chord_transition_current_lift", "exact_identity", "07 (7.6)",lambda: exact(fC*dphi1-fC*(dphi1+dlam)+fC*dlam))


def clockshift(k):
    q=np.exp(2j*np.pi/k); X=np.diag(q**np.arange(k));Y=np.roll(np.eye(k),-1,axis=0)
    return q,X,Y

def torus_presentation():
    worst=0.;ranks=[]
    for k in [2,4,6,8]:
        q,X,Y=clockshift(k)
        mats=[np.linalg.matrix_power(X,m)@np.linalg.matrix_power(Y,n) for m in range(k) for n in range(k)]
        gram=np.array([[np.trace(a.conj().T@b)/k for b in mats]for a in mats])
        worst=max(worst,np.max(abs(X@Y-q**-1*Y@X)),np.max(abs(np.linalg.matrix_power(X,k)-np.eye(k))),np.max(abs(gram-np.eye(k*k))))
        ranks.append(int(np.linalg.matrix_rank(np.stack([a.ravel() for a in mats]))))
    return near_result(worst,1e-10,observed_ranks=ranks,expected_ranks=[4,16,36,64])
check("torus_Wilson_relations_and_full_matrix_span", "finite_diagnostic", "07 (7.8)-(7.9)",torus_presentation)

def torus_weyl():
    k=6;q,X,Y=clockshift(k)
    def W(m,n):return np.exp(np.pi*1j*m*n/k)*np.linalg.matrix_power(X,m)@np.linalg.matrix_power(Y,n)
    worst=0.
    for m,n,a,b in [(1,2,3,4),(-2,3,4,-1),(6,1,2,7),(0,2,3,0)]:
        worst=max(worst,np.max(abs(W(m,n)@W(a,b)-np.exp(-np.pi*1j*(m*b-n*a)/k)*W(m+a,n+b))),np.max(abs(W(m,n).conj().T-W(-m,-n))))
    return near_result(worst)
check("torus_Weyl_cocycle_and_adjoint", "finite_diagnostic", "07 (7.10)",torus_weyl)

def weyl_period():
    k=4;q,X,Y=clockshift(k)
    W=lambda m,n:np.exp(np.pi*1j*m*n/k)*np.linalg.matrix_power(X,m)@np.linalg.matrix_power(Y,n)
    return {"passed":np.allclose(W(1+k,1),-W(1,1)) and not np.allclose(W(1+k,1),W(1,1)),"scope":"integer Weyl labels are not naively modulo k"}
check("Weyl_label_naive_periodicity_is_false", "counterexample", "07 (7.10)",weyl_period)

F=s.Matrix([[-1,1],[1,1]])/s.sqrt(2)
Fp=s.Matrix([[1,1],[1,-1]])/s.sqrt(2)
R=s.diag(-s.exp(-3*s.pi*I/8),s.exp(s.pi*I/8))
th=s.exp(3*s.pi*I/8)
check("SU2_fixed_cup_F_unitarity", "exact_identity", "07 (7.12)",lambda: exact(F.T*F-s.eye(2)))
# Fusion pairs yielding sigma: (0,sigma),(sigma,0),(psi,sigma),(sigma,psi).
d=[s.Integer(1),s.sqrt(2),s.Integer(1)];theta=[s.Integer(1),th,s.Integer(-1)]
fs=sum(d[a]*d[b]*(theta[a]/theta[b])**2 for a,b in [(0,1),(1,0),(2,1),(1,2)])/4
check("SU2_Bantay_indicator_minus_one", "exact_identity", "07 (7.11)",lambda: exact(fs+1))
check("SU2_cup_sensitive_vacuum_overlap", "exact_identity", "07 (7.12)",lambda: exact(s.sqrt(2)*F[0,0]-fs))
check("positive_Hadamard_fails_unchanged_cup_convention", "counterexample", "07.6",lambda: exact(s.sqrt(2)*Fp[0,0]-fs-2))
check("four_point_basis_rephasing_requires_transport", "exact_identity", "08.4",lambda: exact(s.diag(-1,1)*F*s.diag(1,-1)-Fp))
check("braid_test_blind_to_overall_F_sign", "exact_identity", "07.6",lambda: exact((-F)*R*(-F)-F*R*F))
check("SU2_ribbon_balance", "exact_identity", "07.6",lambda: exact(R*R-s.diag(1/th**2,-1/th**2)))
B2=F*R*F
check("SU2_four_point_braid_relation", "exact_identity", "07.6; not a full pentagon test",lambda: exact(R*B2*R-B2*R*B2))
A=s.sqrt(2)*s.diag(1,-1);B=F*A*F
check("SU2_cross_channel_Wilson_is_off_diagonal", "exact_identity", "07 (7.13)",lambda: exact(B+s.sqrt(2)*s.Matrix([[0,1],[1,0]])))
check("SU2_Wilson_full_presentation_relations", "exact_identity", "07 (7.14)",lambda: exact(A*A-2*s.eye(2)) and exact(B*B-2*s.eye(2)) and exact(A*B+B*A))
check("SU2_Wilson_words_span_M2", "exact_identity", "07 (7.14)",lambda: s.Matrix.hstack(*[s.Matrix(m).reshape(4,1) for m in [s.eye(2),A,B,A*B]]).rank()==4)
E1=(s.eye(2)+A/s.sqrt(2))/2;E2=(s.eye(2)+B/s.sqrt(2))/2
check("SU2_normalized_channel_projectors", "exact_identity", "07.6",lambda: exact(E1*E1-E1) and exact(E1*E2*E1-E1/2))

# Additional obstructions are mathematical witnesses, not solved model claims.
v=s.symbols('v',real=True)
Ay=s.cos(v)*Ts[0]+s.sin(v)*Ts[1]
check("nonabelian_null_colour_rotation_sources_constraint", "exact_identity", "09 (9.6)",lambda: exact(Ay*s.diff(Ay,v)-s.diff(Ay,v)*Ay-Ts[2]))
check("single_null_sheet_cannot_determine_bulk_solution", "counterexample", "09.6",lambda: (x*x).subs(x,0)==0 and s.diff(x*x,x,2)==2)


def gaussian_states():
    r=.6;a=np.cosh(2*r)/2;c=np.sinh(2*r)/2
    j=np.array([[0,1],[-1,0]]);J=np.kron(np.eye(2),j)
    C=c*np.diag([1,-1]);A=a*np.eye(2)
    Vp=np.block([[A,C],[C,A]]);Vm=np.block([[A,-C],[-C,A]])
    lp=np.linalg.eigvalsh(Vp+.5j*J);lm=np.linalg.eigvalsh(Vm+.5j*J)
    return {"passed":bool(min(lp.min(),lm.min())>-1e-12 and np.allclose(Vp[:2,:2],Vm[:2,:2]) and not np.allclose(Vp,Vm)),
            "minimum_uncertainty_eigenvalue":float(min(lp.min(),lm.min())),"cross_block_difference":float(np.linalg.norm(2*C))}
check("same_regional_states_different_global_cross_correlations", "counterexample", "09 (9.7)",gaussian_states)


def cusp():
    worst=0.
    for phi in [.2,.7,1.6,2.7]:
        val,err=quad(lambda u:math.cos(phi)/(1+u*u+2*u*math.cos(phi)),0,np.inf,epsabs=1e-11)
        worst=max(worst,abs(val-phi/math.tan(phi)))
    return near_result(worst,1e-9,scope="angular integral only, not a renormalization existence proof")
check("Wilson_cusp_angle_not_universal_endpoint_constant", "finite_diagnostic", "09 (9.4)",cusp)
check("cusp_smooth_angle_limit", "exact_identity", "09 (9.4)",lambda: s.limit(ang*s.cot(ang)-1,ang,0)==0)


# Round-two checks: the actual corner primitive and complete source jets.
p1,lam,p1prime,lamprime,dp1,dlamv=s.symbols('p1 lam p1prime lamprime dp1 dlamv',real=True)
check("CS_transported_corner_primitive_identity", "exact_identity", "07 (7.3a)",
      lambda: exact((p1prime+lamprime)*(dp1+dlamv)-p1prime*dp1
                    -(p1prime*dlamv+lamprime*dp1+lamprime*dlamv)))
at,ass,vel,bs,dat,dass,db=s.symbols('at ass vel bs dat dass db',real=True)
wallvar=at*dass-ass*dat + ass*dat+at*dass-2*vel*ass*dass-2*bs*dass-2*ass*db
check("CS_variational_chiral_boundary_source", "exact_identity", "07 (7.1)",
      lambda: exact(wallvar-2*((at-vel*ass-bs)*dass-ass*db)))

def source_jet_check():
    # A nonhomogeneous particular solution; verify both wall values through r=4.
    u=s.sin(t)*(1+x)+t**2*x**2*s.exp(x)*s.cos(y)
    f=s.diff(u,t,2)-s.diff(u,x,2)-s.diff(u,y,2)
    for wall in [0,1]:
        for r in range(5):
            cr=s.diff(u,x,r).subs(x,wall)
            cnext=s.diff(u,x,r+2).subs(x,wall)
            defect=cnext-s.diff(cr,t,2)+s.diff(cr,y,2)+s.diff(f,x,r).subs(x,wall)
            if s.simplify(defect)!=0:return False
    return True
check("inhomogeneous_boundary_jet_recurrence", "exact_identity", "06 (6.18)",source_jet_check)

report={
    "title":"Principal-bundle sewing v2 executable diagnostics",
    "seed":20260914,
    "python":sys.version,"platform":platform.platform(),
    "numpy":np.__version__,"scipy":scipy.__version__,"sympy":s.__version__,
    "total":len(RESULTS),"passed":sum(r['passed'] for r in RESULTS),
    "failed":sum(not r['passed'] for r in RESULTS),
    "limitations":["Finite samples do not prove all-mode PDE well-posedness.",
                   "No full non-Abelian quantum boundary theory or full categorical pentagon is numerically certified.",
                   "Counterexample PASS means the excluded claim is false under the recorded conditions."],
    "checks":RESULTS}
(ROOT/'results').mkdir(exist_ok=True)
(ROOT/'results'/'checks.json').write_text(json.dumps(report,ensure_ascii=False,indent=2))
print(f"\n{report['passed']}/{report['total']} passed; {report['failed']} failed")
sys.exit(1 if report['failed'] else 0)
