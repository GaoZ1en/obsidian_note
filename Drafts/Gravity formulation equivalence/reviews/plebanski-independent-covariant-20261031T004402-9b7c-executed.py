#!/usr/bin/env sage --python
"""Independent exact finite checks for Lorentzian nonchiral Plebanski.
Run in a fresh SageMath process; no parent candidate or synthesis is imported.
All computations use QQ / polynomial rings, never floating-point tolerance.
"""
from sage.all import QQ, matrix, vector, identity_matrix, zero_matrix, PolynomialRing
from itertools import combinations, permutations
from pathlib import Path
import json
import sage.version

OUT = Path('/Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/plebanski-independent-covariant-20261031T004402-9b7c-output.json')
pairs = list(combinations(range(4), 2))
triples = list(combinations(range(4), 3))
eta = [-1, 1, 1, 1]

def eps(t):
    if len(set(t)) < len(t):
        return 0
    return (-1)**sum(t[i] > t[j] for i in range(len(t)) for j in range(i+1, len(t)))

def clean(a):
    return {k:v for k,v in a.items() if v != 0}

def add(*args):
    out = {}
    for a in args:
        for k,v in a.items():
            out[k] = out.get(k, 0) + v
    return clean(out)

def scale(c, a):
    return clean({k:c*v for k,v in a.items()})

def wedge(a,b):
    out = {}
    for ka,va in a.items():
        for kb,vb in b.items():
            k = ka+kb
            if len(set(k)) == len(k):
                ks = tuple(sorted(k))
                out[ks] = out.get(ks, 0) + eps(k)*va*vb
    return clean(out)

def contract(i, a):
    out = {}
    for k,v in a.items():
        if i in k:
            j = k.index(i)
            out[k[:j]+k[j+1:]] = (-1)**j*v
    return clean(out)

def wall(a):
    return {k:v for k,v in a.items() if 3 not in k}

e = [{(i,):QQ(1)} for i in range(4)]
J = matrix(QQ, 6, 6, lambda a,b: eps(pairs[a]+pairs[b]))
G = matrix.diagonal(QQ, [eta[i]*eta[j] for i,j in pairs])
S = G*J                       # B^{IJ}=(*Sigma)^{IJ}: rows internal pairs
H = J*G                       # spacetime Hodge on basis two-forms: columns inputs
checks = {}
values = {}

def check(name, condition):
    checks[name] = bool(condition)

check('internal_star_squared_minus_identity', S*S == -identity_matrix(QQ,6))
check('Lorentz_Hodge_pairing_sign', S*J*S.transpose() == -J)
check('spacetime_Hodge_e01_equals_minus_e23', H.column(0) == vector(QQ,[0,0,0,0,0,-1]))

# Simplicity: W=B J B^T is proportional to J. At invertible B this has rank 20.
symidx = list(combinations(range(6),2)) + [(i,i) for i in range(6)]
symidx.sort()
constraint_idx = [ij for ij in symidx if ij != (0,5)]

def dconstraint(B):
    columns = []
    for a in range(6):
        for b in range(6):
            X = zero_matrix(QQ,6)
            X[a,b] = 1
            W = X*J*B.transpose()+B*J*X.transpose()
            columns.append(vector(QQ,[W[i,j]-J[i,j]*W[0,5] for i,j in constraint_idx]))
    return matrix(QQ,columns).transpose()

def dsigma(I,Jidx):
    de = [{} for _ in range(4)]
    de[I] = e[Jidx]
    return matrix(QQ,6,6,lambda a,b: add(wedge(de[pairs[a][0]],e[pairs[a][1]]),wedge(e[pairs[a][0]],de[pairs[a][1]])).get(pairs[b],0))

MT = matrix(QQ,[vector(QQ,dsigma(I,j).list()) for I in range(4) for j in range(4)]).transpose()
MG = matrix(QQ,[vector(QQ,(S*dsigma(I,j)).list()) for I in range(4) for j in range(4)]).transpose()
DT, DG = dconstraint(identity_matrix(QQ,6)), dconstraint(S)
check('topological_simplicity_rank20', DT.rank()==20)
check('gravitational_simplicity_rank20', DG.rank()==20)
check('tetrad_tangent_ranks16', MT.rank()==16 and MG.rank()==16)
check('tetrad_tangents_equal_simplicity_kernels', DT*MT==0 and DG*MG==0)
values['simplicity_ranks']={'topological':int(DT.rank()),'gravitational':int(DG.rank()),'tetrad_tangent':int(MT.rank())}

# DB=0 gives an invertible 24x24 map from torsion to D(e wedge e).
torsion_cols = []
for I in range(4):
    for p in pairs:
        T = [{} for _ in range(4)]
        T[I] = {p:QQ(1)}
        forms = [add(wedge(T[i],e[j]),scale(-1,wedge(e[i],T[j]))) for i,j in pairs]
        torsion_cols.append(vector(QQ,[a.get(t,0) for a in forms for t in triples]))
TM = matrix(QQ,torsion_cols).transpose()
check('covariant_torsion_map_rank24',TM.rank()==24)
values['torsion_map_rank']=int(TM.rank())

# Algebraic curvature space: symmetric pair matrix plus the first Bianchi identity.
RB21=[]
for i,j in symidx:
    R=zero_matrix(QQ,6)
    R[i,j]=1
    R[j,i]=1
    RB21.append(R)
Bianchi=matrix(QQ,1,21,[sum(J[i,j]*R[i,j] for i in range(6) for j in range(6)) for R in RB21])
RB=[sum((v[a]*RB21[a] for a in range(21)),zero_matrix(QQ,6)) for v in Bianchi.right_kernel().basis()]

def R4(R,i,j,k,l):
    if i==j or k==l:
        return QQ(0)
    return (1 if i<j else -1)*(1 if k<l else -1)*R[pairs.index(tuple(sorted((i,j)))),pairs.index(tuple(sorted((k,l))))]

def ricci(R):
    return matrix(QQ,4,4,lambda j,l:sum(eta[i]*R4(R,i,j,i,l) for i in range(4)))

def scalar(R):
    return 2*sum(G[a,a]*R[a,a] for a in range(6))

def epstrace(P):
    return -4*sum(J[i,j]*P[i,j] for i in range(6) for j in range(6))

def grav_constraints(R):
    P=-R*S/2
    return vector(QQ,[P[i,j]-P[j,i] for i,j in combinations(range(6),2)]+[epstrace(P)])

GC=matrix(QQ,[grav_constraints(R) for R in RB]).transpose()
RC=matrix(QQ,[vector(QQ,[ricci(R)[i,j] for i in range(4) for j in range(i,4)]) for R in RB]).transpose()
check('algebraic_Riemann_dimension20',len(RB)==20)
check('gravitational_multiplier_constraints_exactly_Ricci_zero', GC.rank()==10 and RC.rank()==10 and GC.stack(RC).rank()==10)
check('gravitational_phi_epsilon_trace_equals_scalar_R', all(epstrace(-R*S/2)==scalar(R) for R in RB))
check('topological_phi_valid_for_every_algebraic_Riemann',all((R/2).is_symmetric() and epstrace(R/2)==0 for R in RB))
values['curvature_constraint_ranks']={'gravitational_phi':int(GC.rank()),'Ricci':int(RC.rank()),'combined':int(GC.stack(RC).rank()),'vacuum_curvature_kernel':int(20-GC.rank())}

def BF_numerator(B,R):
    return 2*sum((B*J)[a,b]*R[a,b] for a in range(6) for b in range(6))

check('grav_BF_numerator_is_plus_scalar_R',all(BF_numerator(S,R)==scalar(R) for R in RB))
check('top_BF_numerator_zero_by_Bianchi',all(BF_numerator(identity_matrix(QQ,6),R)==0 for R in RB))
volT=sum(J[a,b]*(J)[a,b] for a in range(6) for b in range(6))/6
volG=sum(J[a,b]*(S*J*S.transpose())[a,b] for a in range(6) for b in range(6))/6
check('simplicity_volume_top_plus_grav_minus',volT==1 and volG==-1)

# Constant curvature lambda=1 is a full topological solution, but not vacuum Einstein.
R=G
PT=R/2
PG=-R*S/2
check('constant_curvature_top_full_F_equals_phi_B',2*PT==R)
check('constant_curvature_top_multiplier_allowed',PT.is_symmetric() and epstrace(PT)==0)
check('constant_curvature_top_not_Ricci_flat',ricci(R)==3*matrix.diagonal(QQ,eta) and scalar(R)==12)
check('constant_curvature_grav_multiplier_trace_obstructs',epstrace(PG)==12)
check('both_signs_reconstruct_F',all(2*(s*R/2)*(s*identity_matrix(QQ,6))==R and 2*(-s*R*S/2)*(s*S)==R for s in [-1,1]))
values['constant_curvature_lambda1']={'Ricci_diagonal':[str(ricci(R)[i,i]) for i in range(4)],'scalar_R':str(scalar(R)),'top_phi_epsilon_trace':str(epstrace(PT)),'grav_phi_epsilon_trace':str(epstrace(PG))}

# An unrestricted BF shift violates simplicity already at first order.
X=zero_matrix(QQ,6); X[0,0]=1
Y=zero_matrix(QQ,6); Y[0,5]=1
shiftG=(X*J*S.transpose()+S*J*X.transpose())[0,0]
shiftT=(Y*J+J*Y.transpose())[0,0]
check('BF_shift_grav_simplicity_violation_minus2',shiftG==-2)
check('BF_shift_top_simplicity_violation_plus2',shiftT==2)
values['BF_shift_delta_B01_wedge_B01']={'grav_eta01_x0dx1':str(shiftG),'top_eta01_x2dx3':str(shiftT)}

# Wall/corner at n=e_3, epsilon_Gamma=-e012. Arbitrary tetrad variations.
P=PolynomialRing(QQ,[f't{i}{j}' for i in range(4) for j in range(4)]+[f'k{i}{j}' for i in range(3) for j in range(3)])
z=P.gens()
t=matrix(P,4,4,z[:16]); K=matrix(P,3,3,z[16:])
de=[{(j,):t[i,j] for j in range(4)} for i in range(4)]
h=matrix(P,4,4,lambda i,j:eta[i]*t[i,j]+eta[j]*t[j,i])
w=[eta[i]*h[i,3] if i<3 else P(0) for i in range(4)]
dn=[t[i,3]-w[i] if i<3 else P(0) for i in range(4)]
beta=add(*(scale(eta[i],wedge(e[i],de[i])) for i in range(4)))
bv=vector(P,[beta.get(p,0) for p in pairs]); av=H*bv/2
alpha={pairs[a]:av[a] for a in range(6) if av[a]!=0}
epsGamma={(0,1,2):P(-1)}
Cg=scale(-QQ(1)/2,add(*(scale(w[i],contract(i,epsGamma)) for i in range(4))))
Ce=add(*(scale(QQ(1)/2*eps((i,j,3,l))*dn[l],wedge(e[i],e[j])) for i in range(4) for j in range(4) for l in range(4)))
check('grav_corner_Ce_equals_Cmetric_minus_alpha_all_tetrad_variations',wall(Ce)==add(Cg,scale(-1,wall(alpha))))
Dn=[{(b,):K[a,b] for b in range(3)} if a<3 else {} for a in range(4)]
ell=add(*(scale(QQ(1)/2*eps((i,j,3,l)),wedge(wedge(e[i],e[j]),Dn[l])) for i in range(4) for j in range(4) for l in range(4)))
check('grav_wall_ell_equals_plus_K_epsilonGamma',wall(ell)==scale(K.trace(),epsGamma))
values['wall_ell_e012_coefficient']=str(wall(ell).get((0,1,2),0))

# Lorentz-frame variation: corner cancels the BF Gauss surface potential.
LP=PolynomialRing(QQ,[f'l{i}{j}' for i,j in pairs]); lv=LP.gens()
lam=zero_matrix(LP,4)
for a,(i,j) in enumerate(pairs):
    lam[i,j]=lv[a]; lam[j,i]=-lv[a]
Bdown=G*S
CeL={}
for j in range(4):
    if j!=3:
        a=pairs.index(tuple(sorted((3,j))))
        Bij=scale(1 if 3<j else -1,{pairs[b]:Bdown[a,b] for b in range(6) if Bdown[a,b]!=0})
        CeL=add(CeL,scale(lam[j,3],Bij))
BL=add(*(scale(lv[a],{pairs[b]:Bdown[a,b] for b in range(6) if Bdown[a,b]!=0}) for a in range(6)))
check('grav_corner_cancels_Lorentz_BF_surface_term',wall(CeL)==scale(-1,wall(BL)))

# Universal polynomial check of the topological boundary variation, kappa=s=1.
VP=PolynomialRing(QQ,[f'd{i}{j}' for i in range(4) for j in range(4)]+[f'T{i}_{a}' for i in range(4) for a in range(6)]+[f'U{i}_{a}' for i in range(4) for a in range(6)]+[f'A{a}_{j}' for a in range(6) for j in range(4)])
v=VP.gens(); pos=0
De=[{(j,):v[4*i+j] for j in range(4)} for i in range(4)];pos=16
T=[{pairs[a]:v[pos+6*i+a] for a in range(6)} for i in range(4)];pos+=24
U=[{pairs[a]:v[pos+6*i+a] for a in range(6)} for i in range(4)];pos+=24
A=[{(j,):v[pos+4*a+j] for j in range(4)} for a in range(6)]
def Aij(i,j):
    if i==j:return {}
    return scale(1 if i<j else -1,A[pairs.index(tuple(sorted((i,j))))])
dT=[add(U[i],*(scale(eta[j],wedge(Aij(i,j),e[j])) for j in range(4))) for i in range(4)]
theta=add(*(scale(eta[i]*eta[j],wedge(wedge(e[i],e[j]),A[a])) for a,(i,j) in enumerate(pairs)))
dell=scale(QQ(1)/2,add(*(scale(eta[i],add(wedge(De[i],T[i]),wedge(e[i],dT[i]))) for i in range(4))))
dbeta=add(*(scale(eta[i],add(wedge(T[i],De[i]),scale(-1,wedge(e[i],U[i])))) for i in range(4)))
rhs=add(*(scale(eta[i],wedge(De[i],T[i])) for i in range(4)),scale(-QQ(1)/2,dbeta))
check('top_wall_theta_plus_deltaell_equals_deltae_T_minus_half_dbeta',add(theta,dell)==rhs)

# Explicit real de Sitter coframe: e0=dt, ei=exp(H*t) dxi, H nonzero.
# Its coordinate exterior derivatives are de0=0, dei=H e0 wedge ei.
CP=PolynomialRing(QQ,'Hubble'); Hub=CP.gen()
dco=[{}]+[scale(Hub,wedge(e[0],e[i])) for i in range(1,4)]
def conn(i,j):
    if i==0 and j>0:return scale(Hub,e[j])
    if j==0 and i>0:return scale(-Hub,e[i])
    return {}
def dconn(i,j):
    if i==0 and j>0:return scale(Hub,dco[j])
    if j==0 and i>0:return scale(-Hub,dco[i])
    return {}
Tds=[add(dco[i],*(scale(eta[j],wedge(conn(i,j),e[j])) for j in range(4))) for i in range(4)]
Fds=[add(dconn(i,j),*(scale(eta[k],wedge(conn(i,k),conn(k,j))) for k in range(4))) for i,j in pairs]
check('explicit_deSitter_coframe_torsion_zero',all(a=={} for a in Tds))
check('explicit_deSitter_curvature_Fij_Hubble_squared_ee',all(Fds[a]==scale(Hub**2,wedge(e[i],e[j])) for a,(i,j) in enumerate(pairs)))
values['explicit_nonEinstein_solution']='e0=dt, ei=exp(H*t)dxi; omega^{0i}=H ei, omega^{ij}=0; F^{IJ}=H^2 eI wedge eJ; Ricci=3H^2 g, H!=0'

result={'kernel':'SageMath '+sage.version.version,'arithmetic':'exact QQ and multivariate polynomial rings','conventions':{'eta':eta,'epsilon_0123':1,'epsilon_upper_0123':-1,'pair_order':pairs,'full_antisymmetric_pair_sums':True,'wall_normal':'e_3 outward spacelike','epsilon_Gamma':'-e0 wedge e1 wedge e2','kappa_for_corner_polynomial_tests':1},'checks':checks,'all_passed':all(checks.values()),'number_of_checks':len(checks),'values':values,'scope':'Finite pointwise algebra, curvature constraints, and wall/corner identities. Not a nonlinear Dirac/BV/global theorem.'}
OUT.write_text(json.dumps(result,indent=2)+'\n',encoding='utf-8')
print(json.dumps(result,indent=2))
assert result['all_passed'], 'An exact check failed; inspect the saved actual output.'
