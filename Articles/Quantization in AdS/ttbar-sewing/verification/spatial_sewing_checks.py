"""Explicit finite spatial Ising regulator and full crossing-history checks.
NumPy only. Pauli tensors use site 0 as the most significant bit.
H(a,lambda)=H_Ising(a)+lambda V_a is a FIRST-ORDER TTbar EFT regulator.
At finite a it is a definite self-adjoint spin Hamiltonian at any real lambda;
its all-orders dynamics must not be called the exact TTbar continuum theory.
Results are Markdown, no JSON. See the independent regulator derivations.
"""
from pathlib import Path
import hashlib
import math
import numpy as np


def pauli(n, word):
    dim = 1 << n
    cols = np.arange(dim)
    rows = cols.copy()
    val = np.ones(dim, complex)
    for j, p in word.items():
        mask = 1 << (n-1-j)
        sign = 1-2*((cols & mask) != 0).astype(int)
        if p == 'Z': val *= sign
        elif p == 'X': rows ^= mask
        elif p == 'Y': rows ^= mask; val *= 1j*sign
        else: raise ValueError(p)
    a = np.zeros((dim,dim),complex)
    a[rows,cols] = val
    return a


def terms(n, lam, length=1.0):
    a = length/n
    out = []
    for j in range(n):
        k, l = (j+1)%n, (j+2)%n
        out += [(-1/(2*a),{j:'X'}),(-1/(2*a),{j:'Z',k:'Z'}),
                (2/(math.pi*a),{})]
        v = [(-1,{j:'X',k:'X'}),(-1,{j:'Z',l:'Z'}),
             (14/(3*math.pi),{j:'X'}),(14/(3*math.pi),{j:'Z',k:'Z'}),
             (-2/math.pi,{j:'Y',k:'Y'}),(2/math.pi,{j:'Z',k:'X',l:'Z'}),
             (-32/(3*math.pi**2),{})]
        out += [(lam*c/(8*a**3),w) for c,w in v]
    return out


def build(n, rules):
    return sum((c*pauli(n,w) for c,w in rules),np.zeros((1<<n,1<<n),complex))


def spectral_exp(h, z):
    e,u = np.linalg.eigh(h)
    return (u*np.exp(z*e))@u.conj().T


def regional(n, lam):
    split = n//2
    left, right, cross = [], [], []
    allterms = terms(n,lam)
    # Identity terms divide equally between the two regions. No dynamics depends on this zero choice.
    for c,w in allterms:
        if not w:
            left.append((c/2,{})); right.append((c/2,{}))
        elif all(j<split for j in w): left.append((c,w))
        elif all(j>=split for j in w): right.append((c,{j-split:p for j,p in w.items()}))
        else: cross.append((c,w))
    hl,hr = build(split,left),build(n-split,right)
    hreg = np.kron(hl,np.eye(1<<(n-split)))+np.kron(np.eye(1<<split),hr)
    v = build(n,cross)
    h = build(n,allterms)
    return h,hl,hr,hreg,v,cross


def histories(hreg, v, z, max_history=14, time_order=100):
    """Coefficients of exp[z(Hreg+u V)] in u by all noncommuting words.
    Recursive Taylor coefficients B[k,n]=(z/k)(Hreg B[k-1,n]+V B[k-1,n-1]).
    Their sum over k is exactly the integrated n-crossing Duhamel history.
    No simultaneous/commuting-crossing assumption is used. Numerical time
    Taylor truncation is bounded independently and reported.
    """
    d = hreg.shape[0]
    prev = [np.zeros((d,d),complex) for _ in range(max_history+1)]
    prev[0] = np.eye(d,dtype=complex)
    total = [p.copy() for p in prev]
    for k in range(1,time_order+1):
        cur = []
        for n in range(max_history+1):
            q = hreg@prev[n]
            if n: q += v@prev[n-1]
            q *= z/k
            cur.append(q)
            total[n] += q
        prev = cur
    # Valid coarse tail of the ordinary Taylor expansion (n-truncation has no larger majorant).
    x = abs(z)*(np.linalg.norm(hreg,2)+np.linalg.norm(v,2))
    time_tail = math.exp(x)*x**(time_order+1)/math.factorial(time_order+1)
    return total,time_tail


def entropies(psi,nleft):
    mat = psi.reshape(1<<nleft,-1)
    p = np.linalg.svd(mat,compute_uv=False)**2
    p = p[p>1e-15]; p/=p.sum()
    return float(-p@np.log(p)),float(-np.log(p@p)),float(p@p)


def ground(h):
    ev,u = np.linalg.eigh(h)
    return ev,u[:,0]


def gamma_apply(n,m,vector):
    j=m//2
    cols=np.arange(1<<n)
    mask=1<<(n-1-j)
    sign=1-2*((cols&mask)!=0).astype(int)
    rows=cols.copy()
    for l in range(j): rows^=1<<(n-1-l)
    if m%2: rows^=mask; phase=1j*sign
    else: phase=sign
    out=np.zeros_like(vector,dtype=complex)
    out[rows]=phase*vector
    return out


def ns_mode(n,q,vector,create=True):
    factor=1 if create else -1
    return sum((np.exp(factor*1j*q*m)*gamma_apply(n,m,vector) for m in range(2*n)),
               np.zeros_like(vector,dtype=complex))/np.sqrt(4*n)


def run():
    n=6; a=1/n; eta=0.1; lam=eta*a*a
    h,hl,hr,hreg,v,cross = regional(n,lam)
    split=n//2
    direct_error = np.linalg.norm(h-hreg-v,2)
    assert direct_error < 2e-13
    assert np.linalg.norm(h-h.conj().T)<1e-12
    time=0.08; beta=0.16
    udir=spectral_exp(h,-1j*time); qdir=spectral_exp(h,-beta)
    du,time_tail_u=histories(hreg,v,-1j*time)
    dq,time_tail_q=histories(hreg,v,-beta)
    c=sum(abs(cc) for cc,_ in cross)
    histrows=[]
    us=np.zeros_like(h); qs=np.zeros_like(h)
    for order in range(15):
        us+=du[order]; qs+=dq[order]
        if order in (0,2,4,6,8,10,12,14):
            eu=np.linalg.norm(us-udir,2); eq=np.linalg.norm(qs-qdir,2)
            ub=math.exp(time*c)*(time*c)**(order+1)/math.factorial(order+1)
            # Sharp Euclidean propagator factor; all physical intervals are nonnegative.
            emin=np.linalg.eigvalsh(hl)[0]+np.linalg.eigvalsh(hr)[0]
            qb=math.exp(-beta*emin+beta*c)*(beta*c)**(order+1)/math.factorial(order+1)
            histrows.append((order,eu,eq,ub,qb))
    assert histrows[-1][1] < 1e-10 and histrows[-1][2] < 1e-9
    assert np.linalg.norm(udir.conj().T@udir-np.eye(1<<n),2)<1e-12
    ev,psi=ground(h)
    qev,qvec=np.linalg.eigh((qs+qs.conj().T)/2)
    psis=qvec[:,-1]
    corr=pauli(n,{0:'Z',2:'Z'})
    corrdir=float(np.vdot(psi,corr@psi).real)
    corrsew=float(np.vdot(psis,corr@psis).real)
    s1,s2,purity=entropies(psi,split)
    ss1,ss2,puritys=entropies(psis,split)
    fidelity=float(abs(np.vdot(psi,psis))**2)
    # Purity verified independently through explicit partial trace, i.e. swap-index contraction.
    rho=np.outer(psi,psi.conj()).reshape(1<<split,1<<(n-split),1<<split,1<<(n-split))
    rhoa=np.einsum('abcb->ac',rho)
    purity_trace=float(np.trace(rhoa@rhoa).real)
    assert abs(purity-purity_trace)<2e-14
    # Prepare an unequal-temperature product state using independent regional Hamiltonians.
    rl=spectral_exp(hl,-0.15); rl/=np.trace(rl)
    rr=spectral_exp(hr,-0.45); rr/=np.trace(rr)
    rhoinit=np.kron(rl,rr)
    rt=udir@rhoinit@udir.conj().T
    rts=us@rhoinit@us.conj().T
    hrl=np.kron(np.eye(1<<split),hr)
    hll=np.kron(hl,np.eye(1<<(n-split)))
    jr=1j*(v@hrl-hrl@v)
    jl=1j*(v@hll-hll@v)
    jv=1j*(h@v-v@h)
    erchange=float(np.trace((rt-rhoinit)@hrl).real)
    erchanges=float(np.trace((rts-rhoinit)@hrl).real)
    current=float(np.trace(rt@jr).real)
    currents=float(np.trace(rts@jr).real)
    # Reverse the temperature bias to separate directional transport from the even bond-quench response.
    rlrev=spectral_exp(hl,-0.45); rlrev/=np.trace(rlrev)
    rrrev=spectral_exp(hr,-0.15); rrrev/=np.trace(rrrev)
    rhoinitrev=np.kron(rlrev,rrrev)
    rtrev=udir@rhoinitrev@udir.conj().T
    rtsrev=us@rhoinitrev@us.conj().T
    reverse_current=float(np.trace(rtrev@jr).real)
    reverse_currents=float(np.trace(rtsrev@jr).real)
    bias_current=(current-reverse_current)/2
    bias_currents=(currents-reverse_currents)/2
    z0=pauli(n,{0:'Z'}); z2=pauli(n,{2:'Z'})
    wightman=np.exp(1j*ev[0]*time)*np.vdot(psi,z0@udir@z2@psi)
    wightmans=np.exp(1j*ev[0]*time)*np.vdot(psis,z0@us@z2@psis)
    assert abs(wightman-wightmans)<1e-10
    assert abs(bias_current-bias_currents)<1e-9
    energy_balance=abs(np.trace(rt@(jr+jl+jv)))
    dt=1e-6
    rm=spectral_exp(h,-1j*(time-dt))@rhoinit@spectral_exp(h,1j*(time-dt))
    rp=spectral_exp(h,-1j*(time+dt))@rhoinit@spectral_exp(h,1j*(time+dt))
    fd=float(np.trace((rp-rm)@hrl).real/(2*dt))
    assert abs(current-fd)<1e-7
    assert energy_balance<1e-11
    assert abs(erchange-erchanges)<1e-9 and abs(current-currents)<1e-8
    # Undeformed/deformed independent ED values show these observables are nontrivial.
    hzero=build(n,terms(n,0.0)); ev0,psi0=ground(hzero)
    basecorr=float(np.vdot(psi0,corr@psi0).real)
    base_s1,base_s2,_=entropies(psi0,split)
    # Low-volume vacuum slopes; finite N corrections are NOT fitted away.
    sloperows=[]
    for nn in (4,6,8,10):
        hz=build(nn,terms(nn,0.0))
        # Only the ground vector, but a full NumPy diagonalization keeps this dependency-free.
        ee,ps=ground(hz)
        vv=build(nn,terms(nn,1.0))-hz
        slope=float(np.vdot(ps,vv@ps).real)
        qs=[math.pi/(2*nn),3*math.pi/(2*nn),math.pi-math.pi/(2*nn),math.pi-3*math.pi/(2*nn)]
        annihilator_residual=max(np.linalg.norm(ns_mode(nn,qq,ps,create=False)) for qq in qs)
        excited=ps.copy()
        for qq in qs: excited=ns_mode(nn,qq,excited,create=True)
        excited/=np.linalg.norm(excited)
        gap=sum(2*nn*math.sin(qq) for qq in qs)
        excited_residual=np.linalg.norm(hz@excited-(ee[0]+gap)*excited)
        offdiag=abs(np.vdot(excited,vv@ps))
        vertex_ratio=np.sinc(1/(2*nn))**2*np.cos(math.pi/(2*nn))*np.cos(math.pi/nn)**2*np.cos(3*math.pi/(2*nn))
        assert abs(offdiag-4*math.pi**2*vertex_ratio)<1e-9
        assert annihilator_residual<1e-10 and excited_residual<1e-9
        sloperows.append((nn,float(ee[0]),slope,slope+math.pi**2/144,offdiag,offdiag-4*math.pi**2,excited_residual))
    lines=['# Spatial finite-cutoff Ising and history-sewing checks','',
           'NumPy '+np.__version__+'; complex128/double precision. L=v=hbar=1.',
           'Code SHA256: `'+hashlib.sha256(Path(__file__).read_bytes()).hexdigest()+'`.','',
           f'PBC N={n}, two spatial interfaces at a half-chain cut, a={a:.12g}, eta=lambda/a²={eta}, lambda={lam:.12g}.',
           'The deformed spin Hamiltonian is a first-order TTbar regulator, not an exact finite-lambda continuum construction.',
           f'Independent local-rule minus regional-plus-crossing residual: {direct_error:.5g}.',
           f'Crossing Pauli terms (with multiplicity): {len(cross)}; sum of factor norms C={c:.12g}.',
           f'Time Taylor order=100; unitary/Euclidean tail majorants={time_tail_u:.5g}/{time_tail_q:.5g}.','',
           '| retained crossing order | unitary operator error | Euclidean operator error | real-time Duhamel tail bound | Euclidean Duhamel tail bound |',
           '|---:|---:|---:|---:|---:|']
    lines += ['| '+' | '.join(str(vv) if isinstance(vv,int) else f'{vv:.12g}' for vv in row)+' |' for row in histrows]
    lines += ['',f'Ground-state extraction from sewn e^(-beta H), beta={beta} (largest eigenvector):',
              f'- Ground energy direct: {ev[0]:.15g}; sewn-vs-direct vacuum fidelity: {fidelity:.15g}.',
              '| observable | undeformed direct | deformed direct | deformed sewn |',
              '|---|---:|---:|---:|',
              f'| vacuum <Z0 Z2> | {basecorr:.12g} | {corrdir:.12g} | {corrsew:.12g} |',
              f'| spatial half-chain S1 | {base_s1:.12g} | {s1:.12g} | {ss1:.12g} |',
              f'| spatial half-chain S2 | {base_s2:.12g} | {s2:.12g} | {ss2:.12g} |',
              f'| Tr rho_A² | — | {purity:.12g} | {puritys:.12g} |',
              f'Independent explicit partial-trace purity: {purity_trace:.15g}.',
              f'Vacuum Wightman <Z0(t) Z2(0)>, t={time}: direct={wightman:.12g}, sewn={wightmans:.12g}.','',
              'Nonequilibrium product Gibbs state beta_L=0.15, beta_R=0.45, time=0.08.',
              'J_R=i[V,H_R] measures energy absorbed into the bare right-region Hamiltonian through BOTH PBC interfaces.',
              'Interaction energy is retained; J_L+J_R need not vanish separately.',
              '| observable | direct | sewn |', '|---|---:|---:|',
              f'| Delta <H_R> | {erchange:.12g} | {erchanges:.12g} |',
              f'| <J_R> (hot left, cold right) | {current:.12g} | {currents:.12g} |',
              f'| <J_R> (cold left, hot right) | {reverse_current:.12g} | {reverse_currents:.12g} |',
              f'| bias-odd directional current | {bias_current:.12g} | {bias_currents:.12g} |',
              'The bias-odd current is half the difference of the two quenches; the bias-even part includes switching on the interaction.',
              f'Centered time derivative of <H_R>: {fd:.12g}; continuity residual |<J_L+J_R+dV/dt>|={energy_balance:.5g}.','',
              'Low-mode first-order slopes and an off-diagonal matrix element (not only energies):',
              'The excited state contains the r=1/2,3/2 modes at BOTH Fermi points, i.e. the normalized level-(2,2) state.',
              'Independent continuum targets are <V>=-pi²/144 and |<2,2|V|0>|=4pi².',
              '| N | E0 after bulk subtraction | <V_a> | slope difference | off-diagonal magnitude | difference from 4pi² | excited-state eigenvector residual |',
              '|---:|---:|---:|---:|---:|---:|---:|']
    lines += ['| '+' | '.join(str(vv) if isinstance(vv,int) else f'{vv:.12g}' for vv in row)+' |' for row in sloperows]
    lines += ['', 'All assertions passed. These are finite-matrix numerical checks, not rigorous floating-point intervals.',
              'The sewing theorem is analytic; numerical histories validate an independently assembled global matrix.',
              'No fixed-physical-lambda a->0, spatial-entropy continuum limit, or all-orders TTbar equality is asserted.']
    text='\n'.join(lines)+'\n'
    Path(__file__).with_name('spatial-results.md').write_text(text,encoding='utf-8')
    print(text)

if __name__=='__main__':
    run()
