#!/usr/bin/env python3
"""Independent E=4,J=0 mixed-entry check from preserved canonical chart.

No candidate audit script/result is imported. Contact profiles are reconstructed
from ADM sources; all radial cubic moments are checked against an analytically
derived Chu--Vandermonde formula. The infinite spectral sum is evaluated from
its exact partial fractions, not a finite cutoff extrapolation.
"""
from __future__ import annotations
import argparse
import json
from pathlib import Path
import sympy as s

y=s.Symbol('y',positive=True)
x=s.Symbol('x',positive=True)
n=s.Symbol('n',integer=True,nonnegative=True)
a=s.Symbol('a',positive=True)
pi=s.pi
checks={}

def zero(label,e):
    e=s.factor(s.cancel(s.expand_log(s.simplify(e),force=True)))
    if e!=0:raise RuntimeError(label+': '+str(e))
    checks[label]=True

def integral(e):
    primitive=s.integrate(s.cancel(e),y,risch=True)
    if primitive.has(s.Integral):raise RuntimeError('Unevaluated integral')
    upper=s.limit(primitive,y,s.oo)
    lower=s.limit(primitive,y,1,dir='+')
    if upper.is_finite is not True or lower.is_finite is not True:raise RuntimeError('Invalid endpoint')
    return s.factor(s.expand_log(upper-lower,force=True))

def polynomial_integral(e):
    p=s.Poly(s.cancel(e),x)
    return s.factor(sum(c/s.Integer(m[0]+1) for m,c in p.terms()))

def main():
    ap=argparse.ArgumentParser();ap.add_argument('--output',required=True);args=ap.parse_args()
    F=y*y-1
    N=1/s.sqrt(48*pi)
    pm=(y-1)*(y+2)/(y+1)
    hm=6/(y+1)**2
    R=1/(s.sqrt(2*pi)*y**2)
    chi=-2*s.I/(s.sqrt(2*pi)*y**3)
    rho=s.factor((chi**2+F*s.diff(R,y)**2)/2)
    uphi=-1/(20*pi*y**4)
    M=s.Rational(2,15)-1/(3*y**3)+1/(5*y**5)
    Aphi=s.I*M/(pi*F)
    tau2=-8*N**2*hm**2
    utau=-(y+3)/(12*pi*(y+1)**3)
    L0=lambda u:-F*s.diff(u,y,2)-2*y*s.diff(u,y)+2*u
    zero('scalar_constraint',L0(uphi)-rho/2)
    zero('momentum_constraint',s.diff(Aphi,y)+2*y*Aphi/F-chi*s.diff(R,y)/2)
    zero('graviton_pair_constraint',L0(utau)-tau2/2)
    zero('scalar_b2_boundary_charge',s.limit(y*y*uphi,y,s.oo))
    scalar_center=s.cancel(Aphi/F)
    scalar_center_limit=s.limit(scalar_center,y,1)
    if scalar_center_limit.is_finite is not True:raise RuntimeError('Cartesian scalar-pair momentum regularity')
    checks['Cartesian_scalar_pair_momentum_regular']=True
    endpoints={'uphi_at_center':s.limit(uphi,y,1),'Aphi_over_r2_at_center':scalar_center_limit,'utau_at_center':s.limit(utau,y,1),'y2_utau_at_infinity':s.limit(y*y*utau,y,s.oo)}
    if not all(v.is_finite is True for v in endpoints.values()):raise RuntimeError('Nonfinite endpoint')
    pp_density=s.factor(2*pi*y*(-utau*chi**2-8*uphi*utau-2*uphi*tau2))
    # Both orders: eta'_+=eta'_-=2N, and tau_A^creation=-i N hm.
    ep_density=s.factor(-32*pi*s.I*N**2*pm*hm*Aphi)
    vY=s.factor(F*(y*s.diff(pm,y)-pm))
    Aweight=s.factor(vY*s.diff(pm,y)+4*y*pm**2/F)
    Bweight=s.factor(pm*(F*s.diff(vY,y)-y*vY))
    ex_density=s.factor(2*pi*N**2*(Aweight*rho-Bweight*s.diff(R,y)**2))
    pp,ep,ex=map(integral,[pp_density,ep_density,ex_density])
    total=s.factor(s.expand(pp+ep+ex))
    zero('complete_raw_mixed_entry',total)
    total_density=s.factor(pp_density+ep_density+ex_density)
    primitive=s.integrate(total_density,y,risch=True)
    zero('total_density_primitive',s.diff(primitive,y)-total_density)
    zero('primitive_center',s.limit(primitive,y,1))
    zero('primitive_infinity',s.limit(primitive,y,s.oo))
    # General Jacobi moment: J_s=1/2 integral_0^1 v^((s-3)/2) P_n^(1,2)(1-2v)dv.
    # Derived by two elementary integrations of a terminating 2F1 followed by Vandermonde.
    general_moment=((a-1)*s.rf(2-a,n+2)/s.rf(a-1,n+2)+(-1)**n*((n+2)**2-(a-1)))/((n+2)*(n+3))
    Inorm=s.sqrt((n+3)/(n+1))
    Ip=9*Inorm*(n+1)/((n+2)*(n+3)*(2*n+3)*(2*n+5)*(2*n+7))
    Im=9*Inorm/((n+2)*(2*n+1)*(2*n+3)*(2*n+5))
    term=s.factor(8*N**2*(2*n+4)*Ip*Im)
    rational_term=27/(pi*(n+2)*(2*n+1)*(2*n+3)**2*(2*n+5)**2*(2*n+7))
    zero('all_n_exchange_term',term-rational_term)
    rows=[]
    for k in range(13):
        P=s.jacobi(k,1,2,1-2*x*x)
        # x=1/y makes every moment a polynomial integral.
        J={power:polynomial_integral(x**(power-2)*P) for power in (5,6,7,8)}
        for power,value in J.items():
            analytic=s.simplify(general_moment.subs({n:k,a:s.Rational(power-1,2)})/2)
            zero(f'Jacobi_moment_n{k}_s{power}',value-analytic)
        I={}
        for eps in (-1,1):
            w=2*k+4
            I[eps]=s.factor(s.sqrt(s.Rational(k+3,k+1))*((6-eps*w)*J[5]-6*J[6]+(-6+3*eps*w)*J[7]+(6-2*eps*w)*J[8]))
        zero(f'Iplus_n{k}',I[1]-Ip.subs(n,k))
        zero(f'Iminus_n{k}',I[-1]-Im.subs(n,k))
        rows.append({'n':k,'Iplus':str(I[1]),'Iminus':str(I[-1]),'raw_exchange_summand':str(term.subs(n,k))})
    # Exact convergent partial fractions, with the harmonic coefficient cancellation retained.
    pf=-3/(pi*(n+2))+3/(64*pi*(2*n+1))-27/(16*pi*(2*n+3)**2)+189/(64*pi*(2*n+3))+27/(16*pi*(2*n+5)**2)+189/(64*pi*(2*n+5))+3/(64*pi*(2*n+7))
    zero('spectral_partial_fractions',term-pf)
    harmonic=(3*s.digamma(2)-s.Rational(3,128)*s.digamma(s.Rational(1,2))-s.Rational(189,128)*s.digamma(s.Rational(3,2))-s.Rational(189,128)*s.digamma(s.Rational(5,2))-s.Rational(3,128)*s.digamma(s.Rational(7,2)))/pi
    # The squared-denominator difference telescopes to -3/(16pi).
    spectral_sum=s.factor(s.expand_log(s.expand_func(harmonic-3/(16*pi)),force=True))
    zero('exact_spectral_sum_equals_local_bracket',spectral_sum-ex)
    tail0=s.factor(s.expand_log(spectral_sum-term.subs(n,0),force=True))
    partial20=sum(term.subs(n,k) for k in range(21))
    output={'status':'passed','method':'independent ADM sources, edge cotangent lift, local doublecommutator and all-index radial spectral sum','sympy':s.__version__,'raw_coefficient_convention':'coefficient of kappa^2 a2+dagger a2-dagger b00^2; matrix/G=16*pi*sqrt(2)*raw','raw_coefficients':{key:str(v) for key,v in [('p2phi2',pp),('eta_p_phi2',ep),('eta2phi2',s.S.Zero),('mixed_cubic',ex),('total',total)]},'g_matrix_coefficients':{key:str(s.expand(16*pi*s.sqrt(2)*v)) for key,v in [('p2phi2',pp),('eta_p_phi2',ep),('mixed_cubic',ex),('total',total)]},'profiles':{'rho_b2':str(rho),'uphi_b2':str(uphi),'Aphi_b2':str(Aphi),'tau_pair':str(tau2),'utau_pair':str(utau)},'endpoint_values':{key:str(v) for key,v in endpoints.items()},'total_integrand':str(total_density),'total_primitive':str(s.factor(primitive)),'Jacobi_moment_all_index':str(general_moment),'Iplus_all_n':str(Ip),'Iminus_all_n':str(Im),'spectral_summand_all_n':str(term),'spectral_sum':str(spectral_sum),'n0_term':str(term.subs(n,0)),'positive_tail_after_n0':str(tail0),'partial20_error':str(s.N(spectral_sum-partial20,30)),'finite_moment_crosschecks':rows,'checks':checks,'scope':'connected classical four-external-leg mixed entry only; no all-sector closure theorem or quantum one-body Ward repair is inferred'}
    out=Path(args.output)
    if out.exists():raise RuntimeError('Refusing overwrite')
    out.write_text(json.dumps(output,indent=2)+'\n')
    print(json.dumps({key:output[key] for key in ['status','raw_coefficients','spectral_summand_all_n','spectral_sum','n0_term','positive_tail_after_n0','partial20_error']},indent=2))

if __name__=='__main__':main()
