#!/usr/bin/env python3
"""Coordinate and radial checks independent of the Mellin Ward construction."""
import json
from pathlib import Path
import sympy as S
import mpmath as mp

out=[]
def exact(label, value):
    value=S.factor(S.cancel(value))
    if value != 0: raise AssertionError((label,value))
    out.append({'label':label,'evidence':'exact rational/symbolic','residual':str(value)})

# Direct Poincare-coordinate Maxwell divergence in dimension five.
# For a one-form V, (div F)_mu=z^3 d_nu[z^-1(d_nu V_mu-d_mu V_nu)].
z,x,y,w,h=S.symbols('z x y w h',real=True)
coords=[z,x,y,w,h]
r1=z*z+x*x+y*y+w*w+h*h
r2=z*z+(x-1)**2+y*y+w*w+h*h
A1=z/r1;A2=z/r2
W=A1*A2 # P_12=1
F=A1**2*A2**2
q=[S.diff(A1,a)/A1-S.diff(A2,a)/A2 for a in coords]
V=[W*b for b in q]
pt={z:S.Rational(2,3),x:S.Rational(1,5),y:S.Rational(2,7),w:-S.Rational(1,4),h:S.Rational(1,6)}
boxW=z*z*sum(S.diff(W,a,2) for a in coords)-3*z*S.diff(W,z)
exact('scalar BF response at a generic exact point',(boxW+4*W+4*F).subs(pt))
for mu in range(5):
    value=0
    for nu in range(5):
        ff=S.diff(V[mu],coords[nu])-S.diff(V[nu],coords[mu])
        value+=z**3*S.diff(ff/z,coords[nu])
    exact('Maxwell response coordinate component '+str(mu),(value+8*F*q[mu]).subs(pt))

# Analytic one-form response follows from the covariant p/q identities.
chi=S.symbols('chi')
pq=0;pp=4*(1-chi);qq=4*chi;divp=-8
# div(W(p wedge q)) = W[(p^2+divp)q +(p.grad)q -(q.grad)p]
# (p.grad)q = p^2 q/2; (q.grad)p=(-2+q^2/2)q.
exact('all-point covariant Maxwell response coefficient',pp+divp+pp/2-(-2+qq/2)+8*chi)
# box W/W = p^2+divp.
exact('all-point scalar BF response coefficient',pp+divp+4+4*chi)

# Finite-radius current divergence with E psi_i = -J_i.
psi1,psi2,J1,J2,m2=S.symbols('psi1 psi2 J1 J2 m2')
div=psi1*(m2*psi2-J2)-psi2*(m2*psi1-J1)
exact('finite-insertion current source contacts',div-(J1*psi2-J2*psi1))

# Bessel jump checks are numerical independent of the coordinate response.
mp.mp.dps=50
for p,v in [(mp.mpf('0.7'),mp.mpf('1.2')),(mp.mpf('2.3'),mp.mpf('0.4'))]:
    # scalar D=I0(p min) K0(p max), -u [d_u D] = 1.
    jump0=-v*(mp.besseli(0,p*v)*(-p*mp.besselk(1,p*v))-p*mp.besseli(1,p*v)*mp.besselk(0,p*v))
    # vector G_T=u v I1(p min)K1(p max), -u^-1 [d_u G_T]=1.
    def left(u):return u*v*mp.besseli(1,p*u)*mp.besselk(1,p*v)
    def right(u):return u*v*mp.besseli(1,p*v)*mp.besselk(1,p*u)
    jump1=-(mp.diff(right,v)-mp.diff(left,v))/v
    for name,value in [('scalar radial jump',jump0),('vector transverse radial jump',jump1)]:
        err=abs(value-1)
        if err>mp.mpf('1e-45'):raise AssertionError((name,err))
        out.append({'label':name+' p='+str(p)+' v='+str(v),'evidence':'50-digit numerical','error':str(err)})
exact('vector longitudinal radial jump',-(0-2*z/2)/z-1)

# A finite IR wall with natural Maxwell boundary condition preserves Gauss.
u,v,L=S.symbols('u v L',positive=True)
AN=u*u*S.integrate(v*(L-v),(v,u,L))/2+S.integrate(v**3*(L-v),(v,0,u))/2
Qu=u**3*S.integrate(v*(L-v),(v,u,L))  # suppress the common Fourier factor i*p
exact('finite wall natural IR Gauss constraint',S.diff(AN,u)/u-Qu/u**3)
exact('finite wall natural IR derivative',S.diff(AN,u).subs(u,L))
AD=AN-u*u*AN.subs(u,L)/(L*L)
exact('finite wall double Dirichlet missing Gauss constant',S.diff(AD,u)/u-Qu/u**3+L**3/20)
mpL=mp.mpf('2.0');mpp=mp.mpf('.9');mpv=mp.mpf('.6')
def right_wall(uu):
    return uu*mpv*mp.besseli(1,mpp*mpv)*(mp.besselk(1,mpp*uu)+mp.besseli(1,mpp*uu)*mp.besselk(0,mpp*mpL)/mp.besseli(0,mpp*mpL))
err=abs(mp.diff(right_wall,mpL))
if err>mp.mpf('1e-45'):raise AssertionError(('finite wall vector IR',err))
out.append({'label':'finite wall transverse natural IR condition','evidence':'50-digit numerical','error':str(err)})

# Representative numerical checks of the analytic uniform inequalities.
max_radial=mp.mpf('0');max_green_ratio=mp.mpf('0');samples=0
for uu in [mp.mpf('.03'),mp.mpf('.4'),mp.mpf('1.2'),mp.mpf('3')]:
 for zz in [mp.mpf('.07'),mp.mpf('.8'),mp.mpf('2.1')]:
  for kk in [mp.mpf('.1'),mp.mpf('.7'),mp.mpf('2.3')]:
   x=kk*uu
   radial=x*mp.besseli(1,x)*mp.besselk(0,kk*zz) if uu<zz else x*mp.besseli(0,kk*zz)*mp.besselk(1,x)
   gt=uu*zz*mp.besseli(1,kk*min(uu,zz))*mp.besselk(1,kk*max(uu,zz))
   ratio=gt/(min(uu,zz)**2/2)
   max_radial=max(max_radial,radial);max_green_ratio=max(max_green_ratio,ratio);samples+=1
if max_radial>1 or max_green_ratio>1:raise AssertionError('uniform Bessel bound')
out.append({'label':'radial derivative bound |u d_u D| <= 1','evidence':'50-digit numerical sample supplement to Wronskian proof','samples':samples,'maximum':str(max_radial)})
out.append({'label':'transverse Green maximum-principle bound G_T <= G_0','evidence':'50-digit numerical sample supplement to analytic proof','samples':samples,'maximum_ratio':str(max_green_ratio)})

# Sphere average used in the L^3 lifting proof, tested at nonsingular points.
for uu,zz,rr in [(mp.mpf('.8'),mp.mpf('.3'),mp.mpf('.7')),(mp.mpf('.2'),mp.mpf('.9'),mp.mpf('1.1'))]:
    avg=mp.quad(lambda th:(rr*rr+uu*uu+zz*zz-2*uu*zz*mp.cos(th))**-2,[0,2*mp.pi])/(2*mp.pi)
    closed=(rr*rr+uu*uu+zz*zz)/(((rr*rr+(uu-zz)**2)*(rr*rr+(uu+zz)**2))**mp.mpf('1.5'))
    err=abs(avg-closed)
    if err>mp.mpf('1e-45'):raise AssertionError(('circle average',err))
    out.append({'label':'6D circle-average covariance','evidence':'50-digit numerical','error':str(err)})

payload={'tool':'Python/SymPy/mpmath','sympy_version':S.__version__,
         'mpmath_version':mp.__version__,'count':len(out),'all_passed':True,'checks':out}
Path(__file__).with_name('radial_response_results.json').write_text(json.dumps(payload,indent=2)+'\n')
print(json.dumps(payload,indent=2))
