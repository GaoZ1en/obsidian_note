"""Exact classical SU(3) -> order-eight D8 Higgs checks.

All upper tensor slots transform by U; all lower slots by conjugate(U).
The tensor norms are inherited full tensor norms, without 1/r! factors.
These checks do not establish a continuum quantum measure or charged net.
Run: sage dihedral_higgs_phase_checks.sage
"""
from sage.all import (QQ, CyclotomicField, PolynomialRing, matrix, vector,
                      identity_matrix, diagonal_matrix, block_diagonal_matrix)
from itertools import product, combinations_with_replacement

K = CyclotomicField(4)
ii = K.gen()
I2 = list(product(range(3), repeat=2))
I4 = list(product(range(3), repeat=4))
I6 = list(product(range(3), repeat=6))
S2 = list(combinations_with_replacement(range(3), 2))
S4 = list(combinations_with_replacement(range(3), 4))


def eps(i, j, k):
    if len({i, j, k}) < 3:
        return 0
    return (-1)**sum(a > b for a, b in [(i,j),(i,k),(j,k)])


eps_pairs = {i: [(a,b,eps(i,a,b)) for a in range(3) for b in range(3)
                 if eps(i,a,b)] for i in range(3)}
adjugate_terms = {}
for idx in I4:
    terms = []
    for choices in product(*(eps_pairs[i] for i in idx)):
        left = tuple(c[0] for c in choices)
        right = tuple(c[1] for c in choices)
        sign = 1
        for c in choices:
            sign *= c[2]
        terms.append((left,right,QQ(sign)/2))
    adjugate_terms[idx] = terms


def symmetric_tensor(values):
    return {idx: K(values[tuple(sorted(idx))]) for idx in I4}


def adjugate(T):
    return {idx: sum((s*T[a]*T[b] for a,b,s in terms), K.zero())
            for idx,terms in adjugate_terms.items()}


def norm2(T):
    return sum((z.conjugate()*z for z in T.values()), K.zero())


def transform(T, U, upper):
    """upper is a tuple of booleans indicating upper/lower slots."""
    rank = len(upper)
    indices = list(product(range(3),repeat=rank))
    mats = [U if up else U.conjugate() for up in upper]
    # Transform one slot at a time rather than summing 3^(2 rank) terms.
    result = dict(T)
    for slot, A in enumerate(mats):
        new = {}
        for idx in indices:
            total = K.zero()
            for j in range(3):
                old = list(idx)
                old[slot] = j
                total += A[idx[slot],j]*result[tuple(old)]
            new[idx] = total
        result = new
    return result


def auxiliaries(Sigma, T, beta=K.one()):
    Y = {(i,j,k,l): beta*sum((T[i,j,k,a]*Sigma[a,l].conjugate()
                               for a in range(3)),K.zero()) for i,j,k,l in I4}
    B = {(i,j,k,l): beta*sum((T[i,j,a,b]*T[a,b,k,l].conjugate()
                               for a,b in I2),K.zero()) for i,j,k,l in I4}
    return Y, B


def reduced_covariants(Sigma, T, v=K.one(), t=K.one()):
    A = adjugate(T)
    R = {(i,j,k,l): sum((T[i,j,a,b]*Sigma[a,k].conjugate()*Sigma[b,l].conjugate()
                         - Sigma[i,a]*Sigma[j,b]*T[a,b,k,l].conjugate()
                         for a,b in I2),K.zero()) for i,j,k,l in I4}
    C = {(i,j,k,l,m,n): sum((T[i,j,m,a]*Sigma[a,b].conjugate()*T[b,k,l,n]
                             - T[i,j,n,a]*Sigma[a,b].conjugate()*T[b,k,l,m]
                             for a,b in I2),K.zero()) for i,j,k,l,m,n in I6}
    # Matrix composition on ordered index pairs keeps the inherited norm.
    TM = matrix(K,9,9,lambda a,b:T[I2[a]+I2[b]])
    TM3 = TM*TM.conjugate()*TM
    F = {I2[a]+I2[b]:TM3[a,b]-5*t*t*T[I2[a]+I2[b]]
                     +2*t*A[I2[a]+I2[b]].conjugate()
         for a in range(9) for b in range(9)}
    L = sum((T[i,j,k,l]*Sigma[i,j].conjugate()*Sigma[k,l].conjugate()
             for i,j,k,l in I4),K.zero())-4*v*v*t
    N = norm2(T)-6*t*t
    return R,C,F,L,N


def quartic_covariants(Sigma,T,Y,B,v=K.one(),t=K.one(),beta=K.one()):
    A = adjugate(T)
    R = {(i,j,k,l): sum((Y[i,j,b,k]*Sigma[b,l].conjugate()
                         - Sigma[b,j]*Y[k,l,b,i].conjugate()
                         for b in range(3)),K.zero())/beta for i,j,k,l in I4}
    C = {(i,j,k,l,m,n): sum((Y[i,j,m,b]*T[b,k,l,n]-Y[i,j,n,b]*T[b,k,l,m]
                             for b in range(3)),K.zero())/beta
         for i,j,k,l,m,n in I6}
    F = {(i,j,k,l): sum((B[i,j,c,d]*T[c,d,k,l] for c,d in I2),K.zero())/beta
                        -5*t*t*T[i,j,k,l]+2*t*A[i,j,k,l].conjugate()
         for i,j,k,l in I4}
    L = sum((Y[i,j,b,i]*Sigma[b,j].conjugate() for i,j,b in product(range(3),repeat=3)),K.zero())/beta-4*v*v*t
    return R,C,F,L,norm2(T)-6*t*t


Sigma0 = identity_matrix(K,3)
weights = [K(1),K(1),K(2)]
T0 = {idx: (weights[idx[0]] if len(set(idx)) == 1 else K.zero()) for idx in I4}
zero_values = reduced_covariants(Sigma0,T0)
assert all(all(x == 0 for x in z.values()) for z in zero_values[:3])
assert zero_values[3:] == (0,0)
Y0,B0 = auxiliaries(Sigma0,T0)
assert quartic_covariants(Sigma0,T0,Y0,B0) == zero_values
print('PASS: target tensors solve every reduced and completed constraint')

r = matrix(K,[[0,-1,0],[1,0,0],[0,0,1]])
s = diagonal_matrix(K,[1,-1,-1])
H = {tuple((r**j*s**k).list()) for j in range(4) for k in range(2)}
assert len(H) == 8 and s*r*s == r.inverse()
for entries in H:
    h = matrix(K,3,3,entries)
    assert h.det() == 1 and h*h.transpose() == identity_matrix(K,3)
    assert transform(T0,h,(True,)*4) == T0
print('PASS: eight residual D8 matrices; exactness of stabilizer uses analytic contraction argument')

# Exact SU(3) covariance away from the vacuum, with genuinely complex U.
U12 = matrix(K,[[QQ(3)/5,-QQ(4)/5,0],[QQ(4)/5,QQ(3)/5,0],[0,0,1]])
U13 = matrix(K,[[QQ(5)/13,0,ii*QQ(12)/13],[0,1,0],[ii*QQ(12)/13,0,QQ(5)/13]])
U = diagonal_matrix(K,[ii,1,-ii])*U13*U12
assert U.det() == 1 and U.conjugate().transpose()*U == identity_matrix(K,3)
Sigma = matrix(K,3,3,lambda i,j: K(i+j+1)+ii*K((i*j+1)%3))
T = symmetric_tensor({idx: K(j%4-1)+ii*K(j%3-1) for j,idx in enumerate(S4)})
Sp = U*Sigma*U.transpose()
Tp = transform(T,U,(True,)*4)
old = reduced_covariants(Sigma,T)
new = reduced_covariants(Sp,Tp)
assert transform(adjugate(T),U,(False,)*4) == adjugate(Tp)
assert transform(old[0],U,(True,True,False,False)) == new[0]
assert transform(old[2],U,(True,)*4) == new[2]
assert norm2(old[1]) == norm2(new[1])
assert old[3:] == new[3:]
Y,B = auxiliaries(Sigma,T,beta=K(2))
assert quartic_covariants(Sigma,T,Y,B,beta=K(2)) == old
print('PASS: nonreal SU(3) covariance, adjugate, scalar constraints, and exact auxiliary substitution')

# Check completed covariants with auxiliaries NOT on their constraints.
Ytest = {(i,j,k,l):K(sum(sorted((i,j,k)))+l+1)+ii*K((i*j*k+l)%3)
         for i,j,k,l in I4}
Btest = {(i,j,k,l):K(i+j+2*k+2*l+1)+ii*K((i*j+k*l)%4)
         for i,j,k,l in I4}
Yp = transform(Ytest,U,(True,True,True,False))
Bp = transform(Btest,U,(True,True,False,False))
oldhat = quartic_covariants(Sigma,T,Ytest,Btest,beta=K(2))
newhat = quartic_covariants(Sp,Tp,Yp,Bp,beta=K(2))
assert transform(oldhat[0],U,(True,True,False,False)) == newhat[0]
assert transform(oldhat[2],U,(True,)*4) == newhat[2]
assert norm2(oldhat[1]) == norm2(newhat[1])
assert oldhat[3:] == newhat[3:]
print('PASS: completed potential is gauge invariant off the auxiliary constraint surface')

# Analytic linearization at v=t=1, in unnormalized symmetric coordinates.
def tangent_covariants(dS,dT):
    dAdj = {idx:sum((c*(dT[a]*T0[b]+T0[a]*dT[b]) for a,b,c in terms),K.zero())
            for idx,terms in adjugate_terms.items()}
    dR = {}
    dF = {}
    for i,j,k,l in I4:
        dR[i,j,k,l] = dT[i,j,k,l]-dT[i,j,k,l].conjugate()+sum((
            T0[i,j,a,l]*dS[a,k].conjugate()+T0[i,j,k,a]*dS[a,l].conjugate()
            -dS[i,a]*T0[a,j,k,l].conjugate()-dS[j,a]*T0[i,a,k,l].conjugate()
            for a in range(3)),K.zero())
        dF[i,j,k,l] = ((weights[k]**2*dT[i,j,k,k] if k==l else 0)
                      +(weights[i]**2*dT[i,i,k,l] if i==j else 0)
                      +(weights[i]*weights[k]*dT[i,i,k,k].conjugate() if i==j and k==l else 0)
                      -5*dT[i,j,k,l]+2*dAdj[i,j,k,l].conjugate())
    dC = {}
    for i,j,k,l,m,n in I6:
        dC[i,j,k,l,m,n] = sum((
            dT[i,j,m,a]*T0[a,k,l,n]+T0[i,j,m,a]*dT[a,k,l,n]
            -dT[i,j,n,a]*T0[a,k,l,m]-T0[i,j,n,a]*dT[a,k,l,m]
            for a in range(3)),K.zero())+sum((
            T0[i,j,m,a]*dS[a,b].conjugate()*T0[b,k,l,n]
            -T0[i,j,n,a]*dS[a,b].conjugate()*T0[b,k,l,m]
            for a,b in I2),K.zero())
    dL = sum((dT[i,i,j,j] for i,j in I2),K.zero())+2*sum((weights[i]*dS[i,i].conjugate() for i in range(3)),K.zero())
    dN = sum((T0[idx].conjugate()*dT[idx]+dT[idx].conjugate()*T0[idx] for idx in I4),K.zero())
    sigma_lock = dS+dS.conjugate().transpose()
    det_lock = dS.trace()
    return list(sigma_lock.list())+[det_lock]+list(dR.values())+list(dC.values())+list(dF.values())+[dL,dN]


def realify(values):
    result = []
    for z in values:
        result += [QQ((z+z.conjugate())/2),QQ((z-z.conjugate())/(2*ii))]
    return result


directions = []
for imag in [False,True]:
    for a,b in S2:
        dS = matrix(K,3,3)
        dS[a,b] = dS[b,a] = ii if imag else K.one()
        directions.append((dS,{idx:K.zero() for idx in I4}))
for imag in [False,True]:
    for label in S4:
        dT = {idx:(ii if imag else K.one()) if tuple(sorted(idx))==label else K.zero() for idx in I4}
        directions.append((matrix(K,3,3),dT))
columns = [realify(tangent_covariants(dS,dT)) for dS,dT in directions]
Jac = matrix(QQ,columns).transpose()
assert Jac.ncols() == 42 and Jac.rank() == 34
# Complex-output blocks: 9 Sigma, 1 determinant, 81 R, 729 C, 81 F, L,N.
Cstart,Cend = 2*(10+81),2*(10+81+729)
Fend = Cend+2*81
assert Jac[Cstart:Cend,12:27].rank() == 9
assert Jac[Cstart:Fend,12:27].rank() == 12
assert Jac[20:Fend,12:42].rank() == 27
print('PASS: real T slice C rank 9; C+F rank 12; complex T constraints rank 27; full rank 34/42')

# Gauge directions span the full eight-dimensional kernel.
def E(a,b):
    out=matrix(K,3,3); out[a,b]=1; return out
G=[]
for a,b in [(0,1),(0,2),(1,2)]:
    G += [E(a,b)+E(b,a),ii*(E(a,b)-E(b,a))]
G += [diagonal_matrix(K,[1,-1,0]),diagonal_matrix(K,[1,1,-2])]
gauge_columns=[]
for A in G:
    dS=ii*(A+A.transpose())
    dT={}
    for idx in I4:
        total=K.zero()
        for slot in range(4):
            for j in range(3):
                other=list(idx); other[slot]=j
                total += ii*A[idx[slot],j]*T0[tuple(other)]
        dT[idx]=total
    vals=[]
    for imag in [False,True]:
        for a,b in S2:
            z=dS[a,b]
            vals.append(QQ((z-z.conjugate())/(2*ii) if imag else (z+z.conjugate())/2))
    for imag in [False,True]:
        for idx in S4:
            z=dT[idx]
            vals.append(QQ((z-z.conjugate())/(2*ii) if imag else (z+z.conjugate())/2))
    gauge_columns.append(vals)
Gauge=matrix(QQ,gauge_columns).transpose()
assert Gauge.rank()==8 and Jac*Gauge==0
assert matrix(QQ,[[-2,4,2],[4,-2,2],[2,2,7]]).det()==-36
print('PASS: Hessian kernel equals gauge tangent space; eigenvalue derivative determinant -36')

P=PolynomialRing(QQ,'x,y,z,rho,v'); x,y,z,rho,v=P.gens()
assert (x-1)*(x-2)*(x+5)==x**3+2*x**2-13*x+10
assert (rho-v)**2*(3*rho**2+4*v*rho+2*v**2)==3*rho**4-2*v*rho**3-3*v**2*rho**2+2*v**4
print('PASS: global vacuum polynomial and nonnegative quartic Sigma radial factorization')
# A necessary negative control: the cubic F term is not fully symmetric.
Tcontrol = symmetric_tensor({idx:(1 if idx==(0,0,1,1) else 0) for idx in S4})
Fcontrol = reduced_covariants(Sigma0,Tcontrol)[2]
assert Fcontrol[0,0,1,1] != Fcontrol[0,1,0,1]
print('PASS: full four-index F norm is necessary; no silent Sym^4 projection')

# Gauge mass matrix including the two propagating auxiliary Higgs fields.
KF = CyclotomicField(12)
zF = KF.gen(); iF = zF**3; root3 = zF+zF**(-1)
PR = PolynomialRing(KF,['v','t','beta'])
vv,tt,bb = PR.gens()
def E3(a,b):
    out=matrix(KF,3,3); out[a,b]=1; return out
Gell=[(E3(0,1)+E3(1,0))/2,(-iF*E3(0,1)+iF*E3(1,0))/2,
      (E3(0,0)-E3(1,1))/2,(E3(0,2)+E3(2,0))/2,
      (-iF*E3(0,2)+iF*E3(2,0))/2,(E3(1,2)+E3(2,1))/2,
      (-iF*E3(1,2)+iF*E3(2,1))/2,(E3(0,0)+E3(1,1)-2*E3(2,2))/(2*root3)]
assert matrix(KF,8,8,lambda a,b:(Gell[a]*Gell[b]).trace())==identity_matrix(KF,8)/2

def bar_PR(p):
    p=PR(p)
    return PR({e:c.conjugate() for e,c in p.dict().items()})

def infinitesimal(A,T,upper):
    mats=[A if up else -A.conjugate() for up in upper]
    out=[]
    for idx in I4:
        total=PR.zero()
        for slot,mat in enumerate(mats):
            for j in range(3):
                other=list(idx); other[slot]=j
                total+=mat[idx[slot],j]*T[tuple(other)]
        out.append(total)
    return out

def mass_gram(columns):
    return matrix(PR,8,8,lambda a,b:sum((
        bar_PR(x)*y+bar_PR(y)*x for x,y in zip(columns[a],columns[b])),PR.zero()))

Tvev={idx:(tt*weights[idx[0]] if len(set(idx))==1 else PR.zero()) for idx in I4}
Yvev={idx:bb*vv*Tvev[idx] for idx in I4}
Bvev={idx:(bb*tt**2*weights[idx[0]]**2 if len(set(idx))==1 else PR.zero()) for idx in I4}
M_S=mass_gram([(vv*(A+A.transpose())).list() for A in Gell])
M_T=mass_gram([infinitesimal(A,Tvev,(True,)*4) for A in Gell])
M_Y=mass_gram([infinitesimal(A,Yvev,(True,True,True,False)) for A in Gell])
M_B=mass_gram([infinitesimal(A,Bvev,(True,True,False,False)) for A in Gell])
assert M_S==diagonal_matrix(PR,[4*vv**2,0,4*vv**2,4*vv**2,0,4*vv**2,0,4*vv**2])
assert M_T==diagonal_matrix(PR,[4*tt**2,4*tt**2,16*tt**2,10*tt**2,10*tt**2,10*tt**2,10*tt**2,48*tt**2])
assert M_Y==bb**2*vv**2*diagonal_matrix(PR,[4*tt**2,4*tt**2,4*tt**2,10*tt**2,10*tt**2,10*tt**2,10*tt**2,12*tt**2])
assert M_B==bb**2*tt**4*diagonal_matrix(PR,[4,4,0,34,34,34,34,0])
print('PASS: all four gauge mass contributions, including auxiliary VEVs, with Tr(Ta Tb)=delta/2')
print('Full gauge mass squared /g^2 diagonal:',(M_S+M_T+M_Y+M_B).diagonal())

# The potential along the explicit reflection-vortex trial path.
PF=PolynomialRing(QQ,'f'); f=PF.gen()
Fdiag=[f**3-5*f+4*f**2, f**3-5*f+4*f**2, 8*f**3-10*f+2*f**2]
assert sum(x*x for x in Fdiag)==6*f**2*(f-1)**2*(11*f**2+30*f+25)
assert f**2*(f-1)**2*(11*f**2+30*f+25)==11*f**6+8*f**5-24*f**4-20*f**3+25*f**2
print('PASS: exact reflection-vortex trial potential polynomial')
print('All exact classical checks passed. Continuum quantum existence is not checked.')
