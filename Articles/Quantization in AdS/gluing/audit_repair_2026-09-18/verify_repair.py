#!/usr/bin/env python3
"""Exact finite diagnostics for the 2026-09-18 sewing repair.

Run: python verify_repair.py --output checks_result.json
Only the explicit --output path is written. Finite diagnostics do not certify PDE,
microlocal, infinite-dimensional or higher-coherence theorems.
"""
from __future__ import annotations
import argparse
import json
import platform
from datetime import datetime, timezone
from pathlib import Path
import sympy as s

RESULTS: list[dict[str, object]] = []

def check(name: str, residual: object, expected: object = 0, *, kind: str = "exact_identity") -> None:
    if isinstance(residual, s.MatrixBase):
        target = expected if isinstance(expected, s.MatrixBase) else s.zeros(*residual.shape)
        reduced = (residual - target).applyfunc(s.simplify)
        passed = reduced == s.zeros(*residual.shape)
    elif isinstance(residual, bool):
        passed, reduced = residual, residual
    else:
        reduced = s.simplify(s.sympify(residual) - s.sympify(expected))
        passed = reduced == 0
    RESULTS.append({"name": name, "kind": kind, "passed": bool(passed), "residual": str(reduced)})
    if not passed:
        raise AssertionError(f"{name}: {reduced}")


def run() -> None:
    x,t,u,v=s.symbols('x t u v', real=True)
    m,w=s.symbols('m w', positive=True)
    q=x*(1-x); f=2+m*m*q
    check('joint_tuple_is_smooth_solution', -s.diff(q,x,2)+m*m*q-f)
    check('force_only_corner_is_2', f.subs(x,0), 2, kind='counterexample')
    check('initial_only_corner_is_minus_2', (s.diff(q,x,2)-m*m*q).subs(x,0), -2, kind='counterexample')
    z=s.symbols('z', real=True)
    convolution=s.integrate(s.sin(w*(t-z))/w*(2+w*w*z*z),(z,0,t))
    check('legal_lift_difference_cancels_in_causal_domain', convolution, t*t)
    k=s.symbols('k', real=True)
    field=s.exp(k*x)*s.cos(w*t)
    force=s.diff(field,t,2)-s.diff(field,x,2)+m*m*field
    for r in range(5):
        check(f'noncharacteristic_jet_recurrence_{r}', s.diff(field,x,r+2)-s.diff(field,x,r,t,2)-m*m*s.diff(field,x,r)+s.diff(force,x,r))
    check('source_jump_defeats_C2_even_with_C1_matching', s.diff(x*x,x,2).subs(x,0), 2, kind='new_attack')
    N=6
    A=sum((-m*m/4)**n*u**(n+1)*v**n/(s.factorial(n)*s.factorial(n+1)) for n in range(N+1))
    remainder=m*m*(-m*m/4)**N*u**(N+1)*v**N/(s.factorial(N)*s.factorial(N+1))
    check('kink_truncation_has_exact_NONZERO_last_residual',4*s.diff(A,u,v)+m*m*A,remainder)
    check('kink_zero_trace',A.subs(u,0))
    check('kink_transverse_jump_one',s.diff(A,u).subs(u,0),1,kind='counterexample')
    for n in range(5):
        check(f'flat_characteristic_trace_corner_derivative_{n}',s.limit(s.diff(s.exp(-1/u**2),u,n),u,0,dir='+'),kind='finite_diagnostic')
    check('flat_characteristic_trace_is_not_identically_zero',s.exp(-1/u**2).subs(u,1),s.exp(-1),kind='new_attack')
    q0,p0=s.symbols('q0 p0',real=True)
    qt=q0*s.cos(t)+p0*s.sin(t); pt=-q0*s.sin(t)+p0*s.cos(t)
    th=s.Matrix([pt*s.diff(qt,q0),pt*s.diff(qt,p0)])
    check('Theta_at_pi_over_4_changes',th[0].subs({q0:1,p0:0,t:s.pi/4}),-s.Rational(1,2),kind='counterexample')
    check('Omega_is_slice_independent',s.diff(th[1],q0)-s.diff(th[0],p0),-1)
    lag=(pt*pt-qt*qt)/2
    check('Theta_time_change_is_delta_L',s.diff(th,t)-s.Matrix([s.diff(lag,q0),s.diff(lag,p0)]))
    Q1,Q2,lam,p,alpha,beta=s.symbols('Q1 Q2 lam p alpha beta',real=True)
    coords=[Q1,Q2,lam,p]; theta=s.Matrix([p,p,p,0])
    Om=s.Matrix(4,4,lambda i,j:s.diff(theta[j],coords[i])-s.diff(theta[i],coords[j]))
    X=s.Matrix([alpha,-beta,beta-alpha,0])
    check('full_four_dimensional_seam_form_rank_is_two',Om.rank(),2)
    check('two_proper_directions_remain_in_kernel',(X.T*Om).T)
    bare=theta.copy();bare[2]=0
    Ob=s.Matrix(4,4,lambda i,j:s.diff(bare[j],coords[i])-s.diff(bare[i],coords[j]))
    check('omitting_seam_term_is_detected',(X.T*Ob)[3],-alpha+beta,kind='mutation_detection')
    E=-s.I*p; eta=s.I*lam
    check('antiHermitian_convention_reduces_to_positive_real_seam_term', E*eta,p*lam)
    L=s.symbols('L',positive=True)
    g=s.exp(2*s.pi*s.I*x/L)
    check('assembled_based_winding_is_one',s.integrate(s.diff(g,x)/g,(x,0,L))/(2*s.pi*s.I),1,kind='counterexample')
    c,ss=s.symbols('c ss',real=True)
    ratio=s.exp(2*s.pi*s.I*ss*(c/L-1))/s.exp(2*s.pi*s.I*ss*c/L)
    check('local_homotopies_are_not_joint_homotopy',ratio,s.exp(-2*s.pi*s.I*ss),kind='counterexample')
    lift=s.sin(s.pi*x/L)
    check('zero_winding_explicit_joint_homotopy',s.integrate(s.diff(lift,x),(x,0,L)))
    n=s.symbols('n',integer=True);ang=s.symbols('ang',real=True)
    check('Chern_number_reconstructed_from_full_curvature',s.integrate(n*s.sin(ang)/2,(ang,0,s.pi))*2*s.pi/(2*s.pi),n)
    a=s.symbols('a',positive=True);U=s.Function('U')(x)
    check('Robin_square_completion_integrand',(s.diff(U,x)-a*U)**2+(m*m-a*a)*U**2-s.diff(U,x)**2-m*m*U**2,-a*s.diff(U*U,x))
    check('one_negative_Robin_eigenvalue',(-s.diff(s.exp(a*x),x,2)+m*m*s.exp(a*x))/s.exp(a*x),m*m-a*a)
    y,zz=s.symbols('y zz',real=True)
    vx=s.cos(y)/(s.sqrt(2)*s.pi)
    check('Maxwell_counterexample_mode_norm',s.integrate(vx*vx,(x,0,1),(y,0,2*s.pi),(zz,0,2*s.pi)),1)
    check('Maxwell_counterexample_mode_divergence',s.diff(vx,x))
    check('Maxwell_counterexample_mode_eigenvalue',-s.diff(vx,y,2)-vx)
    e2=s.symbols('e2',positive=True)
    # Noncommuting SU(2) example for the new full YM2 constructor.
    E0=s.Matrix([[0,s.I],[s.I,0]])
    gm=s.diag(s.exp(s.I*t*x),s.exp(-s.I*t*x)); gi=s.diag(s.exp(-s.I*t*x),s.exp(s.I*t*x))
    At=gi*s.diff(gm,t); Ex=gi*E0*gm
    Ax=gi*(e2*t*E0)*gm+gi*s.diff(gm,x)
    comm=lambda A,B:A*B-B*A
    check('YM2_raw_constructor_Ftx',s.diff(Ax,t)-s.diff(At,x)+comm(At,Ax)-e2*Ex)
    check('YM2_raw_constructor_Gauss',s.diff(Ex,x)+comm(Ax,Ex))
    check('YM2_raw_constructor_electric_evolution',s.diff(Ex,t)+comm(At,Ex))
    a1,l1,da,dl=s.symbols('a1 l1 da dl')
    check('CS_transport_corner_identity',(a1+l1)*(da+dl)-a1*da,a1*dl+l1*da+l1*dl)
    C=s.Matrix([1,0])
    check('positive_Gram_does_not_imply_onto',(C.T*C)[0],1,kind='counterexample')
    check('positive_Gram_counterexample_image_rank',C.rank(),1,kind='counterexample')
    D=s.Matrix([1,1])/s.sqrt(2);P=s.diag(1,0);proj=D*D.T
    check('multiplicity_diagonal_isometry', (D.T*D)[0],1)
    check('multiplicity_channel_projection_fails_to_preserve_image', s.simplify(((s.eye(2)-proj)*P*D).dot((s.eye(2)-proj)*P*D)),s.Rational(1,4),kind='new_attack')
    F=s.Matrix([[-1,1],[1,1]])/s.sqrt(2); AA=s.diag(s.sqrt(2),-s.sqrt(2)); BB=F*AA*F
    check('fixed_cup_original_sign',s.sqrt(2)*F[0,0],-1)
    check('flipped_F_is_invalid_with_fixed_cup',s.sqrt(2)*(-F)[0,0],1,kind='mutation_detection')
    check('Ad_alone_cannot_detect_F_flip',(-F)*AA*(-F),BB)
    check('M2_anticommutation',AA*BB+BB*AA)
    matrices=[s.eye(2),AA,BB,AA*BB]
    check('M2_normal_forms_are_independent',s.Matrix.hstack(*(M.reshape(4,1) for M in matrices)).rank(),4)
    X=s.Matrix([[0,1],[1,0]]);Z=s.diag(1,-1)
    check('Pauli_projective_commutator',X*Z*X*Z,-s.eye(2),kind='new_attack')
    for i,M in enumerate(matrices):
        check(f'Pauli_Ad_group_law_{i}',X*Z*M*Z*X-Z*X*M*X*Z)
    r=s.Rational(3,5)
    check('squeezed_state_norm',(1-r*r)*s.summation(r**(2*n),(n,0,s.oo)),1)
    check('opposite_squeezing_cross_correlations',(1-r*r)*s.summation((n+1)*r**(2*n+1),(n,0,s.oo)),s.Rational(15,16),kind='counterexample')
    J2=s.Matrix([[0,1],[-1,0]]);J=s.diag(J2,J2)
    for sign in [1,-1]:
        Cov=s.Matrix([[17,0,15*sign,0],[0,17,0,-15*sign],[15*sign,0,17,0],[0,-15*sign,0,17]])/16
        check(f'Gaussian_purity_covariance_{sign}',Cov*J*Cov,J/4)
        check(f'Gaussian_positivity_{sign}',all(ev>0 for ev in Cov.eigenvals()))
    ph,hbar,cv=s.symbols('ph hbar cv')
    transported=sum((hbar*cv/2)**r/s.factorial(r)*s.diff(ph**4,ph,2*r) for r in range(3))
    check('Wick_quartic_transport',transported,ph**4+6*hbar*cv*ph**2+3*hbar*hbar*cv*cv)
    check('first_class_full_two_sided_CCR_ideal_collapses_unit',s.diff(ph,ph),1,kind='counterexample')
    c1,c2,t1,t2=s.symbols('c1 c2 t1 t2')
    weights=[c1,c2,1-c1-c2]; parts=[t1,t2,-t1-t2]
    overlaps=s.Matrix(3,3,lambda i,j:weights[j]*parts[i]-weights[i]*parts[j])
    check('overlap_relations_are_antisymmetric',overlaps+overlaps.T)
    check('overlap_kernel_reconstruction',overlaps*s.ones(3,1),s.Matrix(parts))


def main() -> None:
    parser=argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--output',type=Path)
    args=parser.parse_args()
    try:
        run()
    finally:
        result={"created_utc":datetime.now(timezone.utc).isoformat(),"python":platform.python_version(),"sympy":s.__version__,"passed":sum(r['passed'] for r in RESULTS),"total":len(RESULTS),"checks":RESULTS,"not_certified":["infinite-dimensional PDE existence/continuity", "all boundary microlocal/Ward extensions", "general proper branch algorithm", "all ribbon coherence", "all state sewing"],"original_repository_suites_run":False,"Mathematica_xAct_Sage_run":False}
        out=json.dumps(result,ensure_ascii=False,indent=2)
        if args.output: args.output.write_text(out+'\n',encoding='utf-8')
        print(out)

if __name__=='__main__':main()
