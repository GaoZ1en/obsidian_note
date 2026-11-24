"""Same-regulator NS Loewdin kernels for the spatial Ising Va.
New independent script; does not import or alter existing verification scripts.
No TTbar spectral target is used. NumPy only, exact free-mode embedding.
"""
from pathlib import Path
from itertools import combinations
import math
import hashlib
import numpy as np


def apply_normal(state, creators, annihilators):
    """c^dagger_(ascending creators) c_(ascending annihilators), rightmost first."""
    phase = 1
    out = state
    for j in reversed(annihilators):
        if not (out >> j) & 1:
            return None
        if (out & ((1 << j)-1)).bit_count() & 1:
            phase = -phase
        out ^= 1 << j
    for j in reversed(creators):
        if (out >> j) & 1:
            return None
        if (out & ((1 << j)-1)).bit_count() & 1:
            phase = -phase
        out |= 1 << j
    return out, phase


def mode_data(n, length=1.0):
    a = length/n
    q = (2*np.arange(n)+1)*math.pi/(2*n)
    eps = 2*np.sin(q)/a
    return a, q, eps


def quartic_terms(n, occupied_union):
    """Va's NS-normal quartic; annihilators outside union kill all inputs."""
    a, q, _ = mode_data(n)
    m = 2*n
    t = 2*np.arange(n)+1
    z = np.exp(-1j*q)
    out = []
    for nc in range(5):
        na = 4-nc
        for aa in combinations(occupied_union, na):
            asum = sum(int(t[j]) for j in aa)
            for cc in combinations(range(n), nc):
                if (asum-sum(int(t[j]) for j in cc)) % (2*m):
                    continue
                zz = [z[j] for j in cc]+[z[j].conjugate() for j in aa]
                det = 1+0j
                for i in range(4):
                    for j in range(i+1,4):
                        det *= zz[j]-zz[i]
                coeff = det/(2*m*a**3)
                if abs(coeff) > 1e-13:
                    out.append((cc,aa,coeff))
    return out


def va_columns(n, states):
    a, q, eps = mode_data(n)
    m = 2*n
    delta1 = -2j/(m*math.sin(math.pi/m))+2j/math.pi
    delta3 = -2j/(m*math.sin(3*math.pi/m))+2j/(3*math.pi)
    constant = m/(8*a**3)*(delta1**2+delta1*delta3)
    diagonal = 1j/(2*a**3)*((2*delta1+delta3)*np.sin(q)+delta1*np.sin(3*q))
    union = tuple(j for j in range(n) if any((s>>j)&1 for s in states))
    columns = [{s:constant+sum(diagonal[j] for j in range(n) if (s>>j)&1)} for s in states]
    for cc,aa,c in quartic_terms(n,union):
        for col,s in zip(columns,states):
            result = apply_normal(s,cc,aa)
            if result is not None:
                t,phase = result
                col[t] = col.get(t,0j)+phase*c
    return columns, eps


def low_states(n):
    low = (0,1,n-2,n-1)
    states = [sum(1<<low[j] for j in range(4) if (b>>j)&1)
              for b in range(16) if b.bit_count()%2 == 0]
    return low, states


def state_energy(s, eps):
    s = int(s)
    e = 0.0
    while s:
        bit = s & -s
        e += eps[bit.bit_length()-1]
        s ^= bit
    return e


def loop_kernel(n, states):
    cols,eps = va_columns(n,states)
    keys = sorted(set().union(*(c.keys() for c in cols))-set(states))
    c = np.array([[col.get(k,0j) for col in cols] for k in keys])
    ek = np.array([state_energy(k,eps) for k in keys])
    ep = np.array([state_energy(s,eps) for s in states])
    denominator = ep[None,:]-ek[:,None]
    active = np.abs(c)>1e-10
    min_gap = np.min(np.abs(denominator)[active])
    if min_gap < 1e-9:
        raise ValueError(f'P-Q degeneracy at N={n}: {min_gap}')
    safe = np.where(active,denominator,1.0)
    weighted = c/safe
    loop = (c.conj().T@weighted+weighted.conj().T@c)/2
    pva = np.array([[col.get(k,0j) for col in cols] for k in states])
    assert np.linalg.norm(loop-loop.conj().T) < 1e-6
    assert np.linalg.norm(pva-pva.conj().T) < 1e-8
    return loop,pva,min_gap,len(keys)


def stencil(p, chirality, a):
    """Unwrapped real gamma coefficients; never reduce support modulo M."""
    base = {-1:1,0:2,1:1} if chirality=='R' else {-1:-1,0:2,1:-1}
    out = {}
    for j in range(p+1):
        shift = p-2*j
        dc = (-1)**j*math.comb(p,j)/(a**p)
        if chirality=='L':
            dc *= (-1)**shift
        for k,v in base.items():
            out[k+shift] = out.get(k+shift,0.0)+dc*v/(4*math.sqrt(a))
    return out


def delta_contraction(f,g,n):
    m=2*n
    total=0j
    for i,u in f.items():
        for j,v in g.items():
            r=j-i
            if r%2:
                delta = -2j/(m*math.sin(math.pi*r/m))+2j/(math.pi*r)
                total += u*v*delta
    return total


def local_operator(n, states, field_specs):
    """L=1 sum of full-plane-Wick 2/4-field stencil products on low P."""
    a,q,_ = mode_data(n)
    # Rows are coefficients of [c^dagger_0,...,c^dagger_n-1,c_0,...,c_n-1].
    rows=[]
    real=[]
    for ch,p in field_specs:
        real.append(stencil(p,ch,a))
        filt = np.cos(q/2)**2 if ch=='R' else np.sin(q/2)**2
        sign = 1 if ch=='R' else -1
        rows.append(np.concatenate((filt*(-1j*sign*2*np.sin(q)/a)**p,
                                    filt*(1j*sign*2*np.sin(q)/a)**p)))
    rows=np.array(rows)
    size=len(rows)
    delta=np.array([[delta_contraction(f,g,n) for g in real] for f in real])
    if size==2:
        constant=delta[0,1]
        bilinear=np.array([np.linalg.det(rows[:,[j,n+j]]) for j in range(n)])
    else:
        constant=delta[0,1]*delta[2,3]-delta[0,2]*delta[1,3]+delta[0,3]*delta[1,2]
        bilinear=np.zeros(n,complex)
        for i,j,sign in ((0,1,1),(0,2,-1),(0,3,1),(1,2,1),(1,3,-1),(2,3,1)):
            rem=[k for k in range(4) if k not in (i,j)]
            for mode in range(n):
                bilinear[mode] += sign*delta[i,j]*np.linalg.det(rows[np.ix_(rem,[mode,n+mode])])
    matrix=np.diag([constant+sum(bilinear[j] for j in range(n) if (s>>j)&1) for s in states]).astype(complex)
    if size==4:
        low=tuple(j for j in range(n) if any((s>>j)&1 for s in states))
        labels=low+tuple(n+j for j in low)
        index={s:i for i,s in enumerate(states)}
        t=np.concatenate((-(2*np.arange(n)+1),2*np.arange(n)+1))
        for ll in combinations(labels,4):
            if sum(t[j] for j in ll)%(4*n):
                continue
            coeff=np.linalg.det(rows[:,ll])
            cc=tuple(j for j in ll if j<n)
            aa=tuple(j-n for j in ll if j>=n)
            for b,s in enumerate(states):
                result=apply_normal(s,cc,aa)
                if result is not None and result[0] in index:
                    matrix[index[result[0]],b] += result[1]*coeff
    return matrix


def local_basis(n,states):
    if n<8:
        raise ValueError('13-gamma-site stencil requires N>=8 in this implementation')
    k42=local_operator(n,states,[('R',0),('R',3),('L',0),('L',1)])+local_operator(n,states,[('R',0),('R',1),('L',0),('L',3)])
    k33=local_operator(n,states,[('R',0),('R',2),('L',0),('L',2)])
    q5=1j*(local_operator(n,states,[('R',0),('R',5)])-local_operator(n,states,[('L',0),('L',5)]))
    q3=1j*(local_operator(n,states,[('R',0),('R',3)])-local_operator(n,states,[('L',0),('L',3)]))
    v2=-7/(6*math.pi)*k42-47/(24*math.pi)*k33-q5/(180*math.pi**2)
    for matrix in (k42,k33,q5,q3,v2):
        assert np.linalg.norm(matrix-matrix.conj().T) < 2e-5
    return v2,q3,q5,k42,k33


def direct_gamma_check(n=8):
    """Independent CAR action, without wedge coefficients or finite-circle Wick."""
    a,q,eps=mode_data(n)
    m=2*n
    low,states=low_states(n)
    dim=1<<n
    index=np.arange(dim)
    phases=[np.array([(-1)**int((int(i)&((1<<j)-1)).bit_count()) for i in index]) for j in range(n)]
    def gamma(k,vector):
        out=np.zeros_like(vector)
        for j in range(n):
            mask=1<<j
            occupied=(index&mask)!=0
            coefficient=np.where(occupied,np.exp(1j*q[j]*k),np.exp(-1j*q[j]*k))*np.sqrt(2/m)
            out[index^mask] += (phases[j]*coefficient)[:,None]*vector
        return out
    vectors=np.zeros((dim,len(states)),complex)
    for j,t in enumerate(states):
        vectors[t,j]=1
    direct=np.zeros_like(vectors)
    for k in range(m):
        quartic=gamma(k,gamma(k+1,gamma(k+2,gamma(k+3,vectors))))
        bil1=gamma(k,gamma(k+1,vectors))
        bil3=gamma(k,gamma(k+3,vectors))
        direct += (quartic+14j/(3*math.pi)*bil1+2j/math.pi*bil3-16/(3*math.pi**2)*vectors)/(8*a**3)
    columns,_=va_columns(n,states)
    wedge=np.array([[c.get(t,0j) for c in columns] for t in range(dim)])
    column_error=float(np.max(np.abs(direct-wedge)))
    kids=np.array([k for k in range(dim) if k not in states])
    ep=np.array([state_energy(k,eps) for k in states])
    ek=np.array([state_energy(k,eps) for k in kids])
    c=direct[kids]
    denominator=ep[None,:]-ek[:,None]
    active=np.abs(c)>1e-10
    safe=np.where(active,denominator,1.0)
    weighted=c/safe
    direct_loop=(c.conj().T@weighted+weighted.conj().T@c)/2
    loop,_,_,_=loop_kernel(n,states)
    loop_error=float(np.max(np.abs(loop-direct_loop)))
    # Direct one-site plane-Wick stencils; translation projects total momentum.
    def field(f,vector):
        return sum((u*gamma(k,vector) for k,u in f.items()),np.zeros_like(vector))
    def contraction(f,g):
        return sum(u*v*(1 if j==i else (-2j/(math.pi*(j-i)) if (j-i)%2 else 0))
                   for i,u in f.items() for j,v in g.items())
    def local_direct(specs):
        fs=[stencil(p,ch,a) for ch,p in specs]
        def product(ids):
            out=vectors.copy()
            for i in reversed(ids):
                out=field(fs[i],out)
            return out
        if len(fs)==2:
            out=product((0,1))-contraction(fs[0],fs[1])*vectors
        else:
            out=product((0,1,2,3))
            cs={}
            for i,j,sign in ((0,1,-1),(0,2,1),(0,3,-1),(1,2,-1),(1,3,1),(2,3,-1)):
                cs[i,j]=contraction(fs[i],fs[j])
                rem=tuple(k for k in range(4) if k not in (i,j))
                out += sign*cs[i,j]*product(rem)
            out+=(cs[0,1]*cs[2,3]-cs[0,2]*cs[1,3]+cs[0,3]*cs[1,2])*vectors
        projected=out[states]
        momenta=[sum(2*j+1 for j in range(n) if (s>>j)&1) for s in states]
        for i in range(len(states)):
            for j in range(len(states)):
                if (momenta[i]-momenta[j])%(4*n):
                    projected[i,j]=0
        return projected
    k42=local_direct([('R',0),('R',3),('L',0),('L',1)])+local_direct([('R',0),('R',1),('L',0),('L',3)])
    k33=local_direct([('R',0),('R',2),('L',0),('L',2)])
    q5=1j*(local_direct([('R',0),('R',5)])-local_direct([('L',0),('L',5)]))
    direct_v2=-7/(6*math.pi)*k42-47/(24*math.pi)*k33-q5/(180*math.pi**2)
    mode_v2,*_=local_basis(n,states)
    local_error=float(np.max(np.abs(direct_v2-mode_v2)))
    assert column_error<2e-10
    assert loop_error<2e-8
    assert local_error<2e-5
    return column_error,loop_error,local_error


def run():
    direct_errors=direct_gamma_check()
    lines=['# Same-regulator spatial second-order low-mode kernels','',
           'Independent NumPy exact-mode computation. L=1; NS even total parity. No TTbar eigenvalue is used.',
           'P contains all even occupations of q=pi/(2N),3pi/(2N),pi-3pi/(2N),pi-pi/(2N).',
           'Loop is the Hermitian Loewdin Q=1-P sum of the original consecutive-four-gamma Va.',
           'V2loc is the supplied pairwise-inner-symmetric insertion (K33 coefficient -47/(24pi)); support offsets are NOT reduced before infinite-chain Wick subtraction.',
           'RL means occupied j=(0,N-1), namely r=1/2 at each Fermi point; TT means j=(0,1,N-2,N-1).',
           'Fock states are cdagger_j1 cdagger_j2 ... |0> with ascending j. This TT phase has Va(TT,vac)>0 and V2loc(TT,vac)->+4pi^3, opposite to the convention Va(TT,vac)=-4pi^2.',
           f'Independent direct-gamma N=8 max errors: full Va columns {direct_errors[0]:.12g}; Loewdin kernel {direct_errors[1]:.12g}; local V2 insertion {direct_errors[2]:.12g}.',
           'Code SHA256: `'+hashlib.sha256(Path(__file__).read_bytes()).hexdigest()+'`.','',
           '| N | Q states coupled to P | smallest active denominator | loop(RL)-loop(vac) | a^4 difference | B(RL)-B(vac) | loop(TT,vac) | B(TT,vac) |',
           '|---:|---:|---:|---:|---:|---:|---:|---:|']
    results=[]
    for n in (8,10,12,16,24,32,48,64):
        low,states=low_states(n)
        loop,va,gap,nq=loop_kernel(n,states)
        v2,q3,q5,k42,k33=local_basis(n,states)
        b=loop+v2
        vac=states.index(0)
        rl=states.index((1<<low[0])|(1<<low[3]))
        tt=states.index(sum(1<<j for j in low))
        diff=(loop[rl,rl]-loop[vac,vac]).real
        bd=(b[rl,rl]-b[vac,vac]).real
        row=(n,nq,gap,diff,diff/n**4,bd,loop[tt,vac].real,b[tt,vac].real)
        results.append((n,low,states,loop,va,v2,q3,q5,k42,k33))
        lines.append('| '+' | '.join(str(x) if isinstance(x,int) else f'{x:.13g}' for x in row)+' |')
        print('N',n,'computed',flush=True)
    n,low,states,loop,va,v2,q3,q5,k42,k33=results[0]
    exact_offdiag=32*math.sqrt(2*(190+88*math.sqrt(2)+math.sqrt(7738+2569*math.sqrt(2))))
    assert abs(loop[-1,0]-exact_offdiag)<2e-8
    lines += ['', '## Exact N=8 nonzero offdiagonal kernel', '',
              'The vacuum-to-TT Loewdin loop has exactly six common Q intermediate states:',
              '(1,3,4,6), (1,2,5,6), (0,3,5,6), (1,2,4,7), (0,3,4,7), (0,2,5,7).',
              'Exact root-of-unity simplification gives 32 sqrt(2 [190+88 sqrt(2)+sqrt(7738+2569 sqrt(2))]) = '+f'{exact_offdiag:.15g}'+'.',
              'The expression is strictly positive; an identity CT has exactly zero matrix element in this channel.',
              '', '## N=8 complete P matrices', '',
              'Basis order (occupied mode indices j, qj=(2j+1)pi/(2N)): '+str([tuple(j for j in low if (s>>j)&1) for s in states])+'.',
              '', 'Loop matrix (real part; imaginary parts are phase-roundoff):', '```']
    lines+=np.array2string(loop.real,precision=10,max_line_width=180).splitlines()
    lines+=['```','','Local insertion matrix:','```']
    lines+=np.array2string(v2.real,precision=10,max_line_width=180).splitlines()
    lines+=['```','','## Checks and limits','',
            'All kernels are Hermitian by explicit numerical assertion. The NS-to-plane bilinear part of Va is diagonal: no vacuum-to-two-particle channel is omitted.',
            'These numbers show a state-dependent UV kernel and a genuine offdiagonal kernel; an identity counterterm cannot remove either difference.',
            'They do not uniquely determine a full local C2,a, finite Wilson coefficients, or a renormalized continuum kernel. Power-law trends are finite numerical evidence, not a proof of asymptotics.']
    output=Path(__file__).with_name('spatial-wilson-results.md')
    output.write_text('\n'.join(lines)+'\n',encoding='utf-8')
    print('\n'.join(lines))


if __name__=='__main__':
    run()
