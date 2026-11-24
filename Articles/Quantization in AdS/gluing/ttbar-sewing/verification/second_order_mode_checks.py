"""Second-order TTbar mode-cutoff experiment, NOT a continuum existence claim.
Dimensionless H=H0+g W1+g² W2, g=8*pi*lambda/L²; Hphysical=(2*pi/L)H.
Chiral c=1/2; physical bosonic sectors 0, epsilon, sigma, irreducible CAR realizations.
W2 uses the INNER-PAIR symmetric representative, gamma=c/24.
The full-composite determinant-midpoint FP is W2+Dmix/4, not the same FP;
fixed operators/sources must be transported when changing representatives.
This exploratory script never modifies first-stage files and emits Markdown only.
"""
from pathlib import Path
import math
import hashlib
import numpy as np

C=0.5


def psi(s,r2,ramond=False):
    if r2==0:
        assert ramond
        return s,(-1 if s.bit_count()%2 else 1)/math.sqrt(2)
    j=abs(r2)//2-1 if ramond else (abs(r2)-1)//2
    occupied=(s>>j)&1
    if (r2>0 and not occupied) or (r2<0 and occupied): return None
    sign=-1 if (s&((1<<j)-1)).bit_count()%2 else 1
    return s^(1<<j),sign


def module(sector,K):
    ramond=sector=='sigma'
    h={'vacuum':0.0,'epsilon':0.5,'sigma':1/16}[sector]
    M=K+2
    positive=[2*(j+1) if ramond else 2*j+1 for j in range(M)]
    energy=lambda s:sum(r/2 for j,r in enumerate(positive) if (s>>j)&1)
    basis=[]
    for s in range(1<<M):
        lev=energy(s)+(h if ramond else 0)
        if lev>h+K+1e-10:continue
        if not ramond and s.bit_count()%2!=(sector=='epsilon'):continue
        basis.append(s)
    basis.sort(key=lambda s:(energy(s),s))
    index={s:j for j,s in enumerate(basis)}
    levels=np.array([energy(s)+(h if ramond else 0) for s in basis])
    rr=positive+[-r for r in positive]+([0] if ramond else [])
    mats={}
    for n in range(-K,K+1):
        if n==0: mats[n]=np.diag(levels);continue
        a=np.zeros((len(basis),len(basis)))
        for r in rr:
            if r+2*n not in rr:continue
            coef=(r+n)/4
            for col,s in enumerate(basis):
                t=psi(s,r+2*n,ramond)
                if t is None:continue
                u=psi(t[0],-r,ramond)
                if u is not None and u[0] in index:a[index[u[0]],col]+=coef*t[1]*u[1]
        mats[n]=a
    ident=np.eye(len(basis))
    mats[0]=mats[0]-C/24*ident
    assert max(np.linalg.norm(mats[n].T-mats[-n]) for n in mats)<1e-11
    for n in range(1,K+1):
        expected=2*n*h+C/12*n*(n*n-1)
        assert abs(np.dot(mats[-n][:,0],mats[-n][:,0])-expected)<1e-9
    return basis,levels,mats


def symmetric_square(A,n):
    """Finite-part of T(w+e/2)T(w-e/2), subtract c/(2e4)+2T/e².
    Energy-normal ordered mode sum; intermediate projections harmless here
    because the rightmost positive mode lowers the level.
    """
    out=np.zeros_like(A[0])
    for m in A:
        if n-m not in A:continue
        out+=A[m]@A[n-m] if m<=0 else A[n-m]@A[m]
    out+=(-n*n/4+n/2-1/6)*A[n]
    if n==0:out+=C/1440*np.eye(len(out))
    return out


def operators(sector,M,eps,gamma=None,buffer=2):
    if gamma is None:gamma=C/24
    K=M+buffer # buffered intermediate states for the chosen external levels
    basis,levels,A=module(sector,K)
    d=len(basis);eye=np.eye(d);eye2=np.eye(d*d)
    H0=np.kron(A[0],eye)+np.kron(eye,A[0])
    F=np.zeros_like(H0);D=np.zeros_like(H0);R=np.zeros_like(H0);W1=np.zeros_like(H0)
    W2=np.zeros_like(H0)
    Q={n:symmetric_square(A,n) for n in range(-M,M+1)}
    assert max(np.linalg.norm(Q[n].T-Q[-n]) for n in Q)<1e-10
    for n in range(-M,M+1):
        X=np.kron(A[n],A[n])
        F+=X;D+=n*n*X;R+=n*X
        W1-=math.exp(-eps*abs(n)/2)*X
        W2+=0.5*(np.kron(Q[n],A[n])+np.kron(A[n],Q[n]))
    J=A[0]/60-C/3024*eye
    for n in range(1,K+1):J+=2*n*n*(A[-n]@A[n])
    W2+=C/48*(np.kron(J,eye)+np.kron(eye,J))+gamma*D
    moments={p:sum(n**p*math.exp(-eps*n) for n in range(1,M+1)) for p in (1,3,5,-1)}
    ct_power=2*(moments[1]+1/12)*F+C/12*(moments[3]-1/120)*H0+C*C/288*(moments[5]+1/252)*eye2
    ct_log=0.5*moments[-1]*D
    assert np.linalg.norm(R.T+R)<1e-10
    assert np.linalg.norm(R@H0-H0@R-2*D)<1e-9
    return levels,A,H0,W1,W2,ct_power,ct_log,R,D


def mix_element(W,E,a,b,excluded):
    out=0.0
    for k in range(len(E)):
        if k in excluded:continue
        da=E[a]-E[k];db=E[b]-E[k]
        if abs(da)<1e-10 or abs(db)<1e-10:
            assert abs(W[a,k]*W[k,b])<1e-10
            continue
        out+=0.5*W[a,k]*W[k,b]*(1/da+1/db)
    return float(out)


def run():
    rows=[];offrows=[];edrows=[]
    for sector in ('vacuum','epsilon','sigma'):
        for M in (2,3,4):
            eps=0.7
            levels,A,H0,W1,Wloc,CT,logCT,R,D=operators(sector,M,eps)
            W2=Wloc+CT+logCT
            E=np.diag(H0);d=len(levels)
            for label,idx in [('primary',0)]+([('chiral-T',next(j for j,e in enumerate(levels) if abs(e-2)<1e-12)*d)] if sector=='vacuum' else []):
                a=levels[idx//d]-C/24;b=levels[idx%d]-C/24
                mixing=mix_element(W1,E,idx,idx,{idx})
                e2=W2[idx,idx]+mixing
                target=0.5*a*b*(a+b)
                regulator_remainder=(1-math.exp(-2*eps))/64 if label=='chiral-T' else 0.0
                assert abs(e2-target-regulator_remainder)<1e-8
                rows.append((sector,label,M,len(E),mixing,float(W2[idx,idx]),e2,target,regulator_remainder))
            if sector=='vacuum':
                cm=C/2;m=2
                j=next(j for j,e in enumerate(levels) if abs(e-2)<1e-12)
                idx=j*d+j
                # Phase of the normalized CAR level-two state is fixed independently below.
                pair=np.kron(A[-2][:,0],A[-2][:,0])/cm
                assert abs(np.linalg.norm(pair)-1)<1e-12
                phase=pair[idx]
                loop=phase*mix_element(W1,E,idx,0,{0,idx})
                loc=phase*Wloc[idx,0]
                total=phase*W2[idx,0]+loop
                predicted_loop=-cm/4*sum((2*n-m)**2*(1/n+1/(n-m))*math.exp(-eps*(n-m/2)) for n in range(m+1,M+1))
                assert abs(loop-predicted_loop)<1e-10
                expected_loc=cm*(-(C+2)/12+4*C/24)
                assert abs(loc-expected_loc)<1e-11
                # Association order: full-composite determinant FP adds Dmix/4.
                assert abs(phase*D[idx,0]-1)<1e-11
                assert abs(loc+phase*D[idx,0]/4-7/32)<1e-11
                offrows.append((M,loc,loop,float(phase*CT[idx,0]),float(phase*logCT[idx,0]),total))
                # A source/operator counterterm is fixed by the same local unitary frame.
                O=np.zeros_like(H0);O[0,idx]=O[idx,0]=1
                generator=0.25*sum(math.exp(-eps*n)/n for n in range(1,M+1))*R
                O2=generator@O-O@generator
                assert np.linalg.norm(O2-O2.T)<1e-10
            if M==2 and sector in ('epsilon','sigma'):
                # Ground branch in each irreducible bosonic sector. No spectrum used to construct matrices.
                target=0.5*E[0]/2*E[0]/2*E[0] # a=b=E0/2
                for g in (0.002,0.001,0.0005):
                    actual=np.linalg.eigvalsh(H0+g*W1+g*g*W2)[0]
                    quadratic=E[0]+g*W1[0,0]+g*g*target
                    edrows.append((sector,g,float(actual),float(quadratic),float(actual-quadratic)))
    # Full degenerate blocks, not just primary diagonal entries.
    blockrows=[]
    for sector in ('vacuum','epsilon','sigma'):
        for eps in (0.0,0.7):
            M=4
            levels,A,H0,W1,Wloc,CT,logCT,R,D=operators(sector,M,eps,buffer=4)
            W2=Wloc+CT+logCT;E=np.diag(H0);d=len(levels);eye=np.eye(d)
            ground_h={'vacuum':0.,'epsilon':.5,'sigma':1/16}[sector]
            deltaS=np.zeros_like(A[0]);deltaS2=np.zeros_like(A[0])
            for n in range(1,max(A)+1):
                weight=math.exp(-eps*n) if n<=M else 0.0
                nn=A[-n]@A[n]
                deltaS+=(1-weight)*nn;deltaS2+=n*n*(1-weight)*nn
            rem=np.kron(A[0],deltaS)+np.kron(deltaS,A[0])+C/24*(np.kron(deltaS2,eye)+np.kron(eye,deltaS2))
            maximal=0.0;blocks=0;largest=0
            for left in range(5):
                for right in range(5):
                    ids=[i*d+j for i,l in enumerate(levels) for j,r in enumerate(levels)
                         if abs(l-ground_h-left)<1e-10 and abs(r-ground_h-right)<1e-10]
                    if not ids:continue
                    blocks+=1;largest=max(largest,len(ids))
                    aa=ground_h+left-C/24;bb=ground_h+right-C/24
                    expected=.5*aa*bb*(aa+bb)*np.eye(len(ids))+rem[np.ix_(ids,ids)]
                    actual=W2[np.ix_(ids,ids)].copy()
                    gaps=E[ids[0]]-E
                    allowed=np.abs(gaps)>1e-10
                    actual+=(W1[np.ix_(ids,np.flatnonzero(allowed))]/gaps[allowed])@W1[np.ix_(np.flatnonzero(allowed),ids)]
                    maximal=max(maximal,float(np.linalg.norm(actual-expected,2)))
            assert maximal<1e-8
            blockrows.append((sector,eps,len(E),blocks,largest,maximal))
    # A smooth double-vertex Abel regulator removes the spurious sharp endpoint term.
    smoothrows=[];hardrows=[]
    cm=C/2;local=-1/32
    for eps in (.4,.2,.1,.05,.025):
        M=math.ceil(40/eps)
        loop=-cm/4*sum((2*n-2)**2*(1/n+1/(n-2))*math.exp(-eps*(n-1)) for n in range(3,M+1))
        power=2*cm*(sum(n*math.exp(-eps*n) for n in range(1,M+1))+1/12)
        logarithm=.5*sum(math.exp(-eps*n)/n for n in range(1,M+1)) # <TT|D|0>=1
        smoothrows.append((eps,M,loop,local+loop+power,local+loop+power+logarithm))
    for M in (4,8,16,32,64):
        loop=-cm/4*sum((2*n-2)**2*(1/n+1/(n-2)) for n in range(3,M+1))
        power=2*cm*(sum(range(1,M+1))+1/12)
        logarithm=.5*sum(1/n for n in range(1,M+1))
        hardrows.append((M,local+loop+power+logarithm))
    # Operator/source CT required by the same local g² unitary frame as the redundant H CT.
    levels,A,H0,W1,Wloc,CT,logCT,R,D=operators('vacuum',2,.7)
    d=len(levels)
    ids=[i*d+j for i in range(d) for j in range(d) if abs(levels[i]-levels[j])<1e-10]
    H0=H0[np.ix_(ids,ids)];W1=W1[np.ix_(ids,ids)]
    Wbase=(Wloc+CT)[np.ix_(ids,ids)];logCT=logCT[np.ix_(ids,ids)]
    generator=.25*sum(math.exp(-.7*n)/n for n in (1,2))*R[np.ix_(ids,ids)]
    source=H0.copy();source_ct=generator@source-source@generator
    assert np.linalg.norm(source_ct-logCT)<1e-10
    sourcerows=[]
    for g in (.02,.01,.005):
        eb,ub=np.linalg.eigh(H0+g*W1+g*g*Wbase)
        er,ur=np.linalg.eigh(H0+g*W1+g*g*(Wbase+logCT))
        original=abs(ub[:,0]@source@ub[:,1])
        corrected=abs(ur[:,0]@(source+g*g*source_ct)@ur[:,1])
        uncorrected=abs(ur[:,0]@source@ur[:,1])
        sourcerows.append((g,original,abs(corrected-original),abs(uncorrected-original)))
    text=['# Exploratory second-order mode-cutoff checks','',
          'NumPy '+np.__version__+', double precision; c=1/2.',
          'Dimensionless coupling g=8*pi*lambda/L², Hphysical=(2*pi/L)H.',
          'The INNER-PAIR symmetric gamma=c/24 frame is used here, NOT the whole-composite determinant-midpoint finite part. The latter adds Dmix/4: local TT vertex 7/32 instead of -1/32; effective vertex 109/96 instead of 85/96. Both local vertices and the commutator frame map are checked by finite CAR matrices.',
          'The power counterterms are regulator moments derived from the Virasoro commutator, not fitted state energies.',
          'M is transfer cutoff; chiral level cutoff K=M+2 buffers the level-two external tests.',
          'epsilon=0.7; finite epsilon is NOT the undeformed local continuum limit.',
          'Code SHA256: `'+hashlib.sha256(Path(__file__).read_bytes()).hexdigest()+'`.','',
          '| sector | external state | M | full matrix dimension | iterated W1 | direct W2 | total E2 | universal E2 target | predicted regulator remainder |',
          '|---|---|---:|---:|---:|---:|---:|---:|---:|']
    for row in rows:text.append('| '+' | '.join(v if isinstance(v,str) else f'{v:.12g}' for v in row)+' |')
    text+=['','Vacuum to normalized level-(2,2) low-effective-Hamiltonian vertex (phase fixed by CAR creation state):',
           '| M | local W2 | iterated high-state kernel | power CT | redundant logarithmic CT | total effective vertex |',
           '|---:|---:|---:|---:|---:|---:|']
    for row in offrows:text.append('| '+' | '.join(f'{v:.12g}' for v in row)+' |')
    text+=['','Independent exact-matrix ground-branch diagonalization vs the second-order prediction:',
           '| sector | g | exact finite matrix | quadratic prediction | residual |',
           '|---|---:|---:|---:|---:|']
    for row in edrows:text.append('| '+' | '.join(v if isinstance(v,str) else f'{v:.14g}' for v in row)+' |')
    text+=['','All fixed-left/right-level blocks through level four, including degenerate descendant blocks:',
           '| sector | epsilon | full dimension | blocks | largest degeneracy | matrix residual vs universal E2 plus derived regulator remainder |',
           '|---|---:|---:|---:|---:|---:|']
    for row in blockrows:text.append('| '+' | '.join(v if isinstance(v,str) else f'{v:.12g}' for v in row)+' |')
    text+=['','Smooth Abel off-diagonal limit, M chosen so epsilon*M>=40. Target 85/96 for the INNER-PAIR symmetric gamma=c/24 frame and the two-state Loewdin convention (whole-composite determinant FP instead gives 109/96):',
           '| epsilon | M | bare high-state loop | plus power CT and local W2 | also logarithmic CT |',
           '|---:|---:|---:|---:|---:|']
    for row in smoothrows:text.append('| '+' | '.join(f'{v:.12g}' for v in row)+' |')
    text+=['','Counterexample: the same spectrum-matching CTs with a sharp transfer endpoint leave a linear off-diagonal artifact (~M/2):',
           '| sharp M | effective vertex after power and log CT |','|---:|---:|']
    for row in hardrows:text.append('| '+' | '.join(f'{v:.12g}' for v in row)+' |')
    text+=['','Source O=H0 must rotate with the redundant second-order Hamiltonian counterterm. Ground-to-first-P0-excited transition magnitudes:',
           '| g | base transition | corrected-source discrepancy | Hamiltonian-only discrepancy |',
           '|---:|---:|---:|---:|']
    for row in sourcerows:text.append('| '+' | '.join(f'{v:.12g}' for v in row)+' |')
    text+=['','All finite matrix/commutator assertions passed.',
           'These data do not establish the local Ward completion or regulator-independent off-diagonal physics.',
           'The full R module here is the irreducible sigma Virasoro module, not an unprojected doubled fermionic Ramond space.']
    out='\n'.join(text)+'\n'
    Path(__file__).with_name('second-order-mode-results.md').write_text(out,encoding='utf-8')
    print(out)

if __name__=='__main__':run()
