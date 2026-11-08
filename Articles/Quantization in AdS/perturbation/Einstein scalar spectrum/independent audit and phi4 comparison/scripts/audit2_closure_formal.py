"""New checks for PHY05/PHY14 formal-claim audit; no one-body or closure rerun.
Execute as unpreparsed Python in a fresh Sage kernel.
"""
import json
from pathlib import Path
import sympy as s
OUT=Path('/Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/independent audit and phi4 comparison')
checks={}; values={}
def zero(name,expr):
    r=s.factor(s.cancel(expr))
    checks[name]=(r==0)
    if r!=0: values[name+'_residual']=str(r)

# 1. Off-shell four-gradient local source identity, signature (-++).
eta=s.diag(-1,1,1)
a,b,c,d,mu=s.symbols('a b c d mu')
Av=s.Matrix(s.symbols('A0:3')); Bv=s.Matrix(s.symbols('B0:3'))
Cv=s.Matrix(s.symbols('C0:3')); Dv=s.Matrix(s.symbols('D0:3'))
def dot(U,V): return (U.T*eta*V)[0]
def stress(uv,U,V): return (U*V.T+V*U.T)/2-eta*(dot(U,V)+mu*uv)/2
def contract(T,U): return sum(eta[i,i]*eta[j,j]*T[i,j]*U[i,j] for i in range(3) for j in range(3))
T1=stress(a*c,Av,Cv); T2=stress(b*d,Bv,Dv)
K=contract(T1,T2)-sum(eta[i,i]*T1[i,i] for i in range(3))*sum(eta[i,i]*T2[i,i] for i in range(3))
dF=a*Bv+b*Av; dFt=c*Dv+d*Cv
J=a*Bv-b*Av; Jt=c*Dv-d*Cv
dJ=2*(Av*Bv.T-Bv*Av.T); dJt=2*(Cv*Dv.T-Dv*Cv.T)
Ksource=dot(Av,Bv)*dot(Cv,Dv)/2-contract(dJ,dJt)/16-mu*(dot(dF,dFt)+dot(J,Jt))/4-3*mu**2*a*b*c*d/2
zero('C2_offshell_local_source_decomposition',K-Ksource)

# 2. All-coefficient crossed Casimir identity, no finite Taylor fitting.
h,D,q=s.symbols('h Delta q')
MU=D*(D-2)
r1=q*(2*h+q-1)/(h+q-1)**2
r2=q*(q-1)*(2*h+q-2)*(2*h+q-1)/((h+q-2)**2*(h+q-1)**2)
rdown=(h-1)**2*(2*h+q-2)*(2*h+q-1)/((h+q-1)**2*(2*h-2)*(2*h-1))
rup=2*h*(2*h+1)*q*(q-1)/(h*h*(h+q-1)**2)
mid=(MU-h*(h-1))/2
up=h*h*(D+h-1)**2/(4*(2*h-1)*(2*h+1))
lhs=(h+q-D)**2+(-2*(h+q-1)**2+2*D*(h+q-1)-D)*r1+(h+q-2)**2*r2
rhs=(D-h)**2*rdown+mid*r1+up*rup
zero('C14_arbitrary_coefficient_q_ge2',lhs-rhs)
zero('C14_endpoint_q0',(h-D)**2-(D-h)**2)
b1=h/2; b1down=(h-1)/2
zero('C14_endpoint_q1',(h+1-D)**2*b1+(-2*h*h+2*D*h-D)-(D-h)**2*b1down-mid)

# 3. All-parameter three-band recurrence solution and annihilation norms.
n=s.symbols('n')
def HH(v): return D+v
def CC(v): return HH(v)*(HH(v)-1)
def aa(v): return (v+1)*(D+v)*(2*D+v-1)/(2*(2*D+2*v-1))
def cc(v): return v*(D+v-1)*(2*D+v-2)/(2*(2*D+2*v-1))
def uu(v): return 4*MU-8*CC(v)
def diag(v): return uu(v)*(2*HH(v)-2)/(2*HH(v)-1)
zero('L_C_identity',aa(n)*(CC(n+1)-CC(n))+cc(n)*(CC(n-1)-CC(n))-(2*CC(n)-MU))
zero('crossed_zero_source_region',aa(n)*(uu(n+1)-uu(n))+cc(n)*(uu(n-1)-uu(n))-2*uu(n))
Sdiag=4*(CC(n)-MU)*(2*CC(n)+MU)/(2*HH(n)-1)
Sadj=4*HH(n)*(n+1)*(2*D+n-1)*(2*HH(n)**2-MU)/((2*HH(n)-1)*(2*HH(n)+1))
zero('crossed_diagonal_all_n',2*(aa(n)*(uu(n)-diag(n))+cc(n)*(uu(n-1)-diag(n)))-2*diag(n)-Sdiag)
zero('crossed_adjacent_all_n',cc(n+1)*(diag(n)-uu(n))+aa(n)*(diag(n+1)-uu(n))+cc(n)*(uu(n-1)-uu(n))-2*uu(n)-Sadj)
C=h*(h-1)
spin0_from_norm=-8*s.pi*(C+MU)**2/(2*(4*C-3))/(2*s.pi*(2*h-1))
spin0_claim=-2*(C+MU)**2/((2*h-3)*(2*h-1)*(2*h+1))
zero('spin0_annihilation_from_source_norm',spin0_from_norm-spin0_claim)
A2sq=h*(h+1)*(n+1)*(n+2)*(2*D+n-1)*(2*D+n)/(8*s.pi**2*(2*h-1)*(2*h+1))
spin2_from_norm=8*s.pi*A2sq*(4*s.pi/(2*h+3))/(4*h*(h+1))
spin2_claim=(n+1)*(n+2)*(2*D+n-1)*(2*D+n)/((2*h-1)*(2*h+1)*(2*h+3))
zero('spin2_annihilation_from_source_norm',spin2_from_norm-spin2_claim)
ratio=(D*(D-1)+MU)/(2*(4*D*(D-1)-3))
zero('removable_scalar_source_ratio',ratio-D/(2*(2*D+1)))
values['scalar_source_ratio_at_Delta_3_over_2']=str((D/(2*(2*D+1))).subs(D,s.Rational(3,2)))

# 4. Independent component derivation of the off-shell gauge obstruction.
t,r,theta=s.symbols('t r theta',real=True)
coords=[t,r,theta]; f=1+r*r
g=s.diag(-f,1/f,r*r); gi=s.diag(-1/f,f,1/(r*r))
Gamma={}
for upi in range(3):
    for i in range(3):
        for j in range(3):
            Gamma[upi,i,j]=s.simplify(sum(gi[upi,k]*(s.diff(g[k,j],coords[i])+s.diff(g[k,i],coords[j])-s.diff(g[i,j],coords[k]))/2 for k in range(3)))
At=s.Function('A')(t); ar=s.Function('z')(t,r)
qt=s.zeros(3); qt[0,2]=qt[2,0]=At*r**4/f**2
tr=sum(gi[i,i]*qt[i,i] for i in range(3))
def Dtensor(i,j,k):
    return s.diff(qt[j,k],coords[i])-sum(Gamma[l,i,j]*qt[l,k]+Gamma[l,i,k]*qt[j,l] for l in range(3))
Ctheta=sum(gi[i,i]*Dtensor(i,i,2) for i in range(3))-s.diff(tr,theta)/2
zero('off_shell_field_Ctheta',Ctheta+s.diff(At,t)*r**4/f**3)
xi=[s.Integer(0),s.Integer(0),ar]
Dxi={(i,j):s.diff(xi[j],coords[i])-sum(Gamma[l,i,j]*xi[l] for l in range(3)) for i in range(3) for j in range(3)}
Qtheta=sum(gi[i,i]*(s.diff(Dxi[i,2],coords[i])-sum(Gamma[l,i,i]*Dxi[l,2]+Gamma[l,i,2]*Dxi[i,l] for l in range(3))) for i in range(3))-2*ar
wanted=f*s.diff(ar,r,2)+(r-1/r)*s.diff(ar,r)-s.diff(ar,t,2)/f-4*ar
zero('off_shell_angular_average_Q_operator',Qtheta-wanted)
power=s.symbols('power')
lead=r*r*s.diff(r**(-power),r,2)+r*s.diff(r**(-power),r)-4*r**(-power)
zero('tangential_indicial_polynomial',s.powsimp(lead-(power**2-4)*r**(-power),force=True))
Acoef=s.symbols('Aprime')
az=-Acoef*r**(-2)*s.log(r)/4
zero('forced_log_leading_source',r*r*s.diff(az,r,2)+r*s.diff(az,r)-4*az-Acoef*r**(-2))
zero('forced_log_metric_falloff',s.diff(az,r)-2*az/r-(Acoef*r**(-3)*s.log(r)-Acoef*r**(-3)/4))
golden=(1+s.sqrt(5))/2
zero('exceptional_trace_indicial_root',(2*golden)*(2*golden-2)-4)
zero('exceptional_trace_nonzero_source',-golden*(2*golden-3)-(s.sqrt(5)-3)/2)
checks['exceptional_trace_source_is_nonzero']=((-golden*(2*golden-3)).equals(0) is False)

values['checks']=checks;values['all_checks_pass']=all(checks.values())
values['scope']='New source/Casimir/recurrence and gauge-obstruction checks only; PHY09-12 audited analytically, no closure18 or onebody rerun.'
path=OUT/'results/audit2_closure_formal.json'
path.write_text(json.dumps(values,indent=2),encoding='utf-8')
print(json.dumps({'checks':checks,'all_checks_pass':values['all_checks_pass'],'output':str(path)},indent=2))
