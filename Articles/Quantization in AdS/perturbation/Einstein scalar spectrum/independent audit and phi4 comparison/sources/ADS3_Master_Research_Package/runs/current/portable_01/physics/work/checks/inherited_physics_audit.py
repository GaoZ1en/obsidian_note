import sympy as s,json
b,B,a,A,c,C=s.symbols('b B a A c C'); w,beta=s.symbols('omega beta',real=True)
v=[b,a,c]; vc=[B,A,C]
def pb(f,g): return s.expand(-s.I*sum(s.diff(f,x)*s.diff(g,y)-s.diff(f,y)*s.diff(g,x) for x,y in zip(v,vc)))
def cl(f,g): return s.expand(s.I*pb(f,g))
def conj(f): return s.conjugate(f).subs({s.conjugate(b):B,s.conjugate(B):b,s.conjugate(a):A,s.conjugate(A):a,s.conjugate(c):C,s.conjugate(C):c})
H0=w*b*B+4*w*(a*A+c*C); D=b*b+beta*B*b; Dc=conj(D)
Fp=4*w*D+cl(w*b*B,D); Fm=4*w*Dc+cl(w*b*B,Dc)
V=A*Fp+conj(Fp)*a+C*Fm+conj(Fm)*c
S=A*D-Dc*a+C*Dc-D*c
res=s.expand(cl(H0,S)-V)
H2=s.expand(cl(S,V)/2)
H3=s.expand(cl(S,cl(S,V))/3)
# cl=commutator-symbol; S anti-Hermitian, BCH uses [S,.] = i PB; S imaginary classical so real H retained.
# graph: b retained, a=-gD,c=-gDc. H2 vacuum evaluated is full pair shift.
result={'cubic_identity_residual':str(s.simplify(res)), 'quartic_gravity_zero':str(s.expand(H2.subs({a:0,A:0,c:0,C:0}))), 'H3_A_b4':str(H3.coeff(A,1).coeff(b,4).subs({B:0,a:0,c:0,C:0})), 'H3_C_B4':str(H3.coeff(C,1).coeff(B,4).subs({b:0,a:0,c:0,A:0}))}
# independently verify common finite-level BCH resolvent equality for a degenerate E=0 block.
E=[0,0,2,5]; Sm=s.Matrix([[0,2,3,-1],[-2,0,4,2],[-3,-4,0,6],[1,-2,-6,0]])
Hm=s.diag(*E); Vm=Hm*Sm-Sm*Hm
wm=(Sm*Vm-Vm*Sm)/2
of=s.zeros(2)
for i in range(2):
 for j in range(2): of[i,j]=sum(Vm[i,k]*Vm[k,j]/(-E[k]) for k in (2,3))
result['degenerate_BCH_resolvent_residual']=str(wm[:2,:2]-of)
print(json.dumps(result,ensure_ascii=False,indent=2))
