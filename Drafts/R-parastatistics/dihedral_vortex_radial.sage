"""Exact fixed-sector construction and optional numerical vortex BVP.

Model: Dihedral Higgs phase and finite-energy fluxes.md, full auxiliary fields.
All norms are full ordered-index tensor norms. No graph substitution in V.
Default dimensionful parameters and positive coefficients are set to 1 in a
chosen mass unit; the symmetry reduction itself is parameter-independent.
Numerical collocation is not a proof of existence or stability.
Run exact build: sage dihedral_vortex_radial.sage
"""
from sage.all import (QQ, PolynomialRing, matrix, vector, diagonal_matrix,
                      identity_matrix, save)
from itertools import product, combinations_with_replacement
from pathlib import Path
import os, tempfile, time


def build_model(parameters=None):
    p=dict(g=1,v=1,t=1,beta=1,lambdaSigma=1,MY2=1,MK2=1,
           cR=1,cC=1,cF=1,cL=1,lambdaN=1)
    if parameters:
        p.update(parameters)
    p={k:QQ(v) for k,v in p.items()}
    assert all(z>0 for z in p.values())
    I2=list(product(range(3),repeat=2))
    I4=list(product(range(3),repeat=4))
    I6=list(product(range(3),repeat=6))
    allidx={'S':I2,'T':I4,'Y':I4,'K':I4}
    def key(name,idx):
        if name in ('S','T'):
            return tuple(sorted(idx))
        if name=='Y':
            return tuple(sorted(idx[:3]))+idx[3:]
        return tuple(sorted(idx[:2]))+tuple(sorted(idx[2:]))
    def even(idx):
        return all(idx.count(i)%2==0 for i in range(3))
    bases={name:sorted({key(name,idx) for idx in indices if even(idx)})
           for name,indices in allidx.items()}
    labels=[]; lookup={}
    for name,keys in bases.items():
        for idx in keys:
            lookup[name,idx]=len(labels)
            labels.append(name.lower()+''.join(str(i+1) for i in idx))
    P=PolynomialRing(QQ,names=labels,order='degrevlex')
    q=P.gens(); n=len(q)
    phi={name:{idx:(q[lookup[name,key(name,idx)]] if even(idx) else P.zero())
               for idx in indices} for name,indices in allidx.items()}
    J=matrix(QQ,[[0,0,0],[0,0,QQ(1)/2],[0,-QQ(1)/2,0]])
    W=matrix(QQ,n,n); B=matrix(QQ,n,n)
    for name,indices in allidx.items():
        for idx in indices:
            v0=vector(QQ,[phi[name][idx].monomial_coefficient(x) for x in q])
            W+=v0.column()*v0.row()
            action=P.zero()
            for slot in range(len(idx)):
                for j in range(3):
                    other=list(idx); other[slot]=j
                    action+=J[idx[slot],j]*phi[name][tuple(other)]
            v1=vector(QQ,[action.monomial_coefficient(x) for x in q])
            B+=v1.column()*v1.row()
    S,T,Y,K=(phi[name] for name in ('S','T','Y','K'))
    v,t,beta=p['v'],p['t'],p['beta']
    sig=[S[i,i] for i in range(3)]
    Vsig=p['lambdaSigma']*(sum(x**4-v**2*x**2 for x in sig)
                                  -2*v*sig[0]*sig[1]*sig[2]+2*v**4)
    hY={idx:beta*T[idx]*sig[idx[3]] for idx in I4}
    hK={(i,j,k,l):beta*sum(T[i,j,a,b]*T[a,b,k,l] for a,b in I2)
         for i,j,k,l in I4}
    Rhat={(i,j,k,l):(Y[i,j,l,k]*sig[l]-sig[j]*Y[k,l,j,i])/beta
          for i,j,k,l in I4}
    Chat={(i,j,k,l,m,n):sum(Y[i,j,m,b]*T[b,k,l,n]-Y[i,j,n,b]*T[b,k,l,m]
                             for b in range(3))/beta for i,j,k,l,m,n in I6}
    def eps(i,j,k):
        if len({i,j,k})<3:
            return 0
        return (-1)**sum(a>b for a,b in [(i,j),(i,k),(j,k)])
    ep={i:[(a,b,eps(i,a,b)) for a,b in I2 if eps(i,a,b)] for i in range(3)}
    Adj={}
    for idx in I4:
        total=P.zero()
        for choices in product(*(ep[i] for i in idx)):
            left=tuple(c[0] for c in choices); right=tuple(c[1] for c in choices)
            sign=QQ(1)/2
            for c in choices:
                sign*=c[2]
            total+=sign*T[left]*T[right]
        Adj[idx]=total
    Fhat={(i,j,k,l):sum(K[i,j,c,d]*T[c,d,k,l] for c,d in I2)/beta
                           -5*t*t*T[i,j,k,l]+2*t*Adj[i,j,k,l] for i,j,k,l in I4}
    Lhat=sum(Y[i,j,j,i]*sig[j] for i,j in I2)/beta-4*v*v*t
    N=sum(z*z for z in T.values())-6*t*t
    norm=lambda tensor:sum((z*z for z in tensor.values()),P.zero())
    V=Vsig+p['MY2']*norm({idx:Y[idx]-hY[idx] for idx in I4})
    V+=p['MK2']*norm({idx:K[idx]-hK[idx] for idx in I4})
    V+=p['cR']*norm(Rhat)+p['cC']*norm(Chat)+p['cF']*norm(Fhat)
    V+=p['cL']*Lhat**2+p['lambdaN']*N**2
    grad=[V.derivative(x) for x in q]
    hess=matrix(P,[[x.derivative(y) for y in q] for x in grad])
    vacuum=[]
    for name,keys in bases.items():
        for idx in keys:
            lam=t*(2 if idx[0]==2 else 1)
            if name=='S':
                value=v
            elif len(set(idx))>1:
                value=0
            elif name=='T':
                value=lam
            elif name=='Y':
                value=beta*v*lam
            else:
                value=beta*lam**2
            vacuum.append(QQ(value))
    return dict(P=P,q=q,labels=labels,lookup=lookup,bases=bases,phi=phi,
                W=W,B=B,V=V,grad=grad,hess=hess,vacuum=vector(QQ,vacuum),params=p)


def exact_checks(model):
    P=model['P']; q=model['q']; W=model['W']; B=model['B']
    vacuum=model['vacuum']; sub=dict(zip(q,vacuum))
    assert [len(model['bases'][name]) for name in ('S','T','Y','K')]==[3,6,9,12]
    assert W==diagonal_matrix(QQ,W.diagonal())
    assert all(x>0 for x in W.diagonal())
    cp=(W.inverse()*B).charpoly(); x=cp.parent().gen()
    assert cp==x**15*(x-1)**12*(x-4)**3
    assert model['V'].total_degree()==4 and model['V'].subs(sub)==0
    assert all(f.subs(sub)==0 for f in model['grad'])
    Hess=matrix(QQ,model['hess'].subs(sub))
    assert Hess.is_positive_definite()
    v,t,beta=(model['params'][z] for z in ('v','t','beta'))
    assert (vacuum*B*vacuum)==5*t*t*(1+beta*beta*v*v)+17*beta*beta*t**4
    print('PASS: 30 real fixed scalars, full tensor metric, angular spectrum 0^15 1^12 4^3')
    print('PASS: independent auxiliary fields, quartic potential, exact vacuum and positive 30x30 Hessian')
    print('Polynomial monomials:',len(model['V'].dict()))
    print('Labels:',model['labels'])
    print('Tensor metric diagonal:',W.diagonal())


def export_model(model):
    store=Path(os.environ.get('DSH_HOME') or Path.home()/'.dsh')/'research-results'/'kernel-exports'
    store.mkdir(parents=True,exist_ok=True,mode=0o700)
    out=Path(tempfile.mkdtemp(prefix='dihedral-radial-',dir=store))
    save(model,str(out/'model.sobj'))
    (out/'coordinates.txt').write_text('\n'.join(
        '%d %s W=%s vacuum=%s'%(i,label,model['W'][i,i],model['vacuum'][i])
        for i,label in enumerate(model['labels']))+'\n',encoding='utf-8')
    print('Exact model archive:',out/'model.sobj')
    return out


def solve_radial(model,epsilon=1e-4,rmax=20.0,tolerance=1e-5,max_nodes=10000,previous=None):
    import numpy as np
    import sympy as sp
    from scipy.integrate import solve_bvp
    epsilon,rmax,tolerance=map(float,(epsilon,rmax,tolerance))
    max_nodes=int(max_nodes)
    start=time.time()
    n=len(model['q']); W=np.array(model['W'],dtype=float)
    B=np.array(model['B'],dtype=float); ws=np.sqrt(np.diag(W))
    eig,O=np.linalg.eigh(B/ws[:,None]/ws[None,:])
    charges=np.rint(np.sqrt(np.maximum(eig,0))).astype(int)
    assert np.max(np.abs(eig-charges**2))<1e-10
    D=charges.astype(float)**2
    S=O/ws[:,None]; Sinv=O.T*ws[None,:]
    vac=np.array(model['vacuum'],dtype=float); xvac=Sinv@vac
    g=float(model['params']['g'])
    symbols=sp.symbols(' '.join(model['labels']))
    def to_sympy(poly):
        return sp.Add(*(sp.Rational(int(c.numerator()),int(c.denominator()))*
                        sp.Mul(*(s**int(e) for s,e in zip(symbols,mon) if e))
                        for mon,c in poly.dict().items()))
    # Center the polynomial exactly before floating evaluation, avoiding
    # cancellation of large constant/linear terms in the massive far tail.
    shift=dict((x,x+z) for x,z in zip(model['q'],model['vacuum']))
    Vshift=model['V'].subs(shift)
    Gshift=[Vshift.derivative(x) for x in model['q']]
    Hshift=[z.derivative(x) for z in Gshift for x in model['q']]
    fV=sp.lambdify(symbols,to_sympy(Vshift),modules='numpy',cse=True)
    fG=sp.lambdify(symbols,[to_sympy(z) for z in Gshift],modules='numpy',cse=True)
    fH=sp.lambdify(symbols,[to_sympy(z) for z in Hshift],modules='numpy',cse=True)
    def gH(x,needH=False):
        vals=S@x-vac[:,None]; shape=x.shape[1:]
        if needH:
            raw=fH(*vals)
            h=np.stack([np.broadcast_to(z,shape) for z in raw]).reshape((n,n)+shape)
            return np.einsum('ai,abk,bj->ijk',S,h,S,optimize=True)
        raw=fG(*vals)
        return S.T@np.stack([np.broadcast_to(z,shape) for z in raw])
    def fun(r,y):
        x=y[:n]; xp=y[n:2*n]; a=y[2*n]; ap=y[2*n+1]
        out=np.empty_like(y)
        out[:n]=xp
        out[n:2*n]=-xp/r+D[:,None]*x*(1-a)**2/r**2+0.5*gH(x)
        out[2*n]=ap
        out[2*n+1]=ap/r-2*g*g*(1-a)*np.sum(D[:,None]*x*x,axis=0)
        return out
    def jac(r,y):
        x=y[:n]; a=y[2*n]
        out=np.zeros((2*n+2,2*n+2,len(r)))
        ii=np.arange(n)
        out[ii,n+ii]=1
        out[n:2*n,:n]=0.5*gH(x,True)
        out[n+ii,ii]+=D[:,None]*(1-a)**2/r**2
        out[n+ii,n+ii]=-1/r
        out[n:2*n,2*n]=-2*D[:,None]*x*(1-a)/r**2
        out[2*n,2*n+1]=1
        out[2*n+1,:n]=-4*g*g*(1-a)*D[:,None]*x
        out[2*n+1,2*n]=2*g*g*np.sum(D[:,None]*x*x,axis=0)
        out[2*n+1,2*n+1]=1/r
        return out
    ba=np.zeros((2*n+2,2*n+2)); bz=np.zeros_like(ba)
    ii=np.arange(n); ba[ii,ii]=-charges/epsilon; ba[ii,n+ii]=1
    ba[n,2*n]=-2/epsilon; ba[n,2*n+1]=1
    bz[n+1+ii,ii]=1; bz[2*n+1,2*n]=1
    def bc(ya,yb):
        return np.r_[ya[n:2*n]-charges*ya[:n]/epsilon,
                     ya[2*n+1]-2*ya[2*n]/epsilon,
                     yb[:n]-xvac,yb[2*n]-1]
    mesh=np.unique(np.r_[np.geomspace(epsilon,1,220),np.linspace(1,rmax,250)])
    if previous is not None:
        y0=previous.sol(mesh)
        beyond=mesh>previous.x[-1]
        y0[:n,beyond]=xvac[:,None]
        y0[n:2*n,beyond]=0
        y0[2*n,beyond]=1
        y0[2*n+1,beyond]=0
    else:
        p=model['params']; t=float(p['t']); v=float(p['v'])
        IF=-38*np.log(2)+3*np.log(3)+20*np.log(5)
        dd=12*float(p['cF'])*t**6*IF+32*float(p['cL'])*v**4*t*t*np.log(2)+144*float(p['lambdaN'])*t**4*np.log(2)
        scale=(g*g*dd)**(-0.25)
        f=np.exp(-scale**2/mesh**2); fp=2*scale**2*f/mesh**3
        q0=vac[:,None]*np.ones((n,len(mesh))); q0p=np.zeros_like(q0)
        for i,label in enumerate(model['labels']):
            power=0 if label.startswith('s') else (2 if label.startswith('k') else 1)
            if power:
                q0[i]*=f**power
                q0p[i]=vac[i]*power*f**(power-1)*fp
        y0=np.vstack([Sinv@q0,Sinv@q0p,1-np.exp(-mesh**2/scale**2),
                      2*mesh/scale**2*np.exp(-mesh**2/scale**2)])
    print('Compiled polynomial callbacks in %.2fs'%(time.time()-start),flush=True)
    sol=solve_bvp(fun,bc,mesh,y0,fun_jac=jac,bc_jac=lambda ya,yb:(ba,bz),
                  tol=tolerance,max_nodes=max_nodes,verbose=1)
    print('BVP status:',sol.status,sol.message,'nodes',len(sol.x),
          'max collocation residual',max(sol.rms_residuals),flush=True)
    # These are numerical diagnostics on a finite annulus, not certified existence.
    from scipy.integrate import simpson
    rr=np.unique(np.r_[np.geomspace(epsilon,1,1500),np.linspace(1,rmax,4000)])
    yy=sol.sol(rr); xx=yy[:n]; xxp=yy[n:2*n]; aa=yy[2*n]; aap=yy[2*n+1]
    qq=S@xx
    magnetic=aap*aap/(2*g*g*rr*rr)
    radial=np.sum(xxp*xxp,axis=0)
    angular=(1-aa)**2/rr**2*np.sum(D[:,None]*xx*xx,axis=0)
    pot=np.asarray(fV(*(qq-vac[:,None])),dtype=float)
    # Integrate the actual interpolated field derivatives, not auxiliary
    # first-order states, on each collocation interval by Gaussian quadrature.
    def energy_quadrature(order):
        zz,ww=np.polynomial.legendre.leggauss(order)
        mid=(sol.x[:-1]+sol.x[1:])/2; half=np.diff(sol.x)/2
        rq=(mid[None,:]+zz[:,None]*half[None,:]).ravel()
        wq=(ww[:,None]*half[None,:]).ravel()
        yq=sol.sol(rq); yp=sol.sol(rq,1)
        xq=yq[:n]; aq=yq[2*n]
        values=(yp[2*n]**2/(2*g*g*rq*rq),
                np.sum(yp[:n]**2,axis=0),
                (1-aq)**2/rq**2*np.sum(D[:,None]*xq*xq,axis=0),
                np.asarray(fV(*(S@xq-vac[:,None])),dtype=float))
        return 2*np.pi*np.array([np.sum(wq*rq*z) for z in values])
    energies=energy_quadrature(8)
    qcheck=energy_quadrature(12)
    print('Energy quadrature order8/order12 max difference:',np.max(np.abs(energies-qcheck)),flush=True)
    Hvac=np.array(model['hess'].subs(dict(zip(model['q'],model['vacuum']))),dtype=float)
    masses=np.sqrt(np.linalg.eigvalsh(0.5*S.T@Hvac@S))
    print('E magnetic, radial, angular, potential:',energies,'total',sum(energies),flush=True)
    print('Derrick residual E_mag-E_pot:',energies[0]-energies[3],flush=True)
    print('Lowest radial-sector scalar mass:',min(masses),flush=True)
    return dict(solution=sol,coordinates=S,inverse=Sinv,charges=charges,
                energies=energies,epsilon=epsilon,rmax=rmax,tolerance=tolerance,
                masses=masses,fun=fun,jac=jac,bc=bc,fV=fV,rr=rr,qq=qq)


def probe_spectrum(result,step=0.01,rmax=20.0,charge=0.0,mcore2=1.0,kappa=1.0,levels=3):
    """Piecewise-linear radial FEM for the ell=0 fundamental K-norm portal.

    Finite-box numerical Ritz values, not a validated spectral enclosure.
    Origin is regular (natural form boundary), outer endpoint is Dirichlet.
    Input result comes from solve_radial; charge is an H eigenvalue.
    """
    import numpy as np
    from scipy.sparse import diags
    from scipy.sparse.linalg import eigsh
    step,rmax,charge,mcore2,kappa=map(float,(step,rmax,charge,mcore2,kappa))
    levels=int(levels)
    n=int(round(rmax/step)); nodes=np.linspace(0,rmax,n+1); h=rmax/n
    z,w=np.polynomial.legendre.leggauss(6)
    rr=(nodes[:-1][None,:]+h*(z[:,None]+1)/2)
    ww=h*w[:,None]/2
    values=result['solution'].sol(rr.ravel())
    q=result['coordinates']@values[:30]
    kw=np.array([1,1,1,4,4,1,1,1,4,1,1,1],float)
    knorm=np.sum(kw[:,None]*q[18:]**2,axis=0).reshape(rr.shape)
    a=values[60].reshape(rr.shape)
    potential=mcore2+kappa*knorm+charge**2*a*a/(rr*rr)
    N0=(1-z[:,None])/2; N1=(1+z[:,None])/2
    mass00=np.sum(ww*rr*N0*N0,axis=0)
    mass01=np.sum(ww*rr*N0*N1,axis=0)
    mass11=np.sum(ww*rr*N1*N1,axis=0)
    v00=np.sum(ww*rr*potential*N0*N0,axis=0)
    v01=np.sum(ww*rr*potential*N0*N1,axis=0)
    v11=np.sum(ww*rr*potential*N1*N1,axis=0)
    kinetic=(nodes[1:]**2-nodes[:-1]**2)/(2*h*h)
    ad=np.zeros(n+1); md=np.zeros(n+1)
    ad[:-1]+=kinetic+v00; ad[1:]+=kinetic+v11
    md[:-1]+=mass00; md[1:]+=mass11
    A=diags([(-kinetic+v01)[:-1],ad[:-1],(-kinetic+v01)[:-1]],[-1,0,1],format='csc')
    M=diags([mass01[:-1],md[:-1],mass01[:-1]],[-1,0,1],format='csc')
    eig,vec=eigsh(A,k=levels,M=M,sigma=0,which='LM',tol=1e-12,v0=np.ones(n))
    order=np.argsort(eig); eig=eig[order]; vec=vec[:,order]
    for j in range(levels):
        if vec[0,j]<0:
            vec[:,j]*=-1
    print('Probe h=%s step=%s L=%s Ritz eigenvalues:'%(charge,h,rmax),eig,flush=True)
    return dict(eigenvalues=eig,r=nodes,eigenvectors=np.vstack([vec,np.zeros((1,levels))]),
                step=h,rmax=rmax,charge=charge,mcore2=mcore2,kappa=kappa)


if __name__=='__main__':
    model=build_model()
    exact_checks(model)
    export_model(model)
