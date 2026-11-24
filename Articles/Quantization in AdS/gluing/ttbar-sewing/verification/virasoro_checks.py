"""Finite conformal-level Ising checks; NumPy only, no generated JSON.
Run using the workspace-discovered Python. The tensor product here is chiral,
NOT spatial. c=1/2, hbar=v=L=1; lambda has length squared.
The chiral CAR basis retains all NS occupation states with L0 <= K.
This is the projected first-order Hamiltonian, not an all-orders TTbar model.
"""
from pathlib import Path
import hashlib
import math
import numpy as np


def act_psi(state, twice_r):
    """psi_r, with r>0 annihilating; negative r creates."""
    j = (abs(twice_r) - 1) // 2
    occupied = (state >> j) & 1
    if (twice_r > 0 and not occupied) or (twice_r < 0 and occupied):
        return None
    sign = -1 if (state & ((1 << j) - 1)).bit_count() % 2 else 1
    return state ^ (1 << j), sign


def chiral(K):
    M = K + 1
    levels = {s: sum((2*j+1)/2 for j in range(M) if (s >> j) & 1)
              for s in range(1 << M)}
    basis = sorted((s for s in levels if levels[s] <= K), key=lambda s: (levels[s], s))
    ix = {s: i for i, s in enumerate(basis)}
    rr = [z for j in range(M) for z in (2*j+1, -2*j-1)]
    matrices = {}
    for n in range(-K, K+1):
        if n == 0:
            matrices[n] = np.diag([levels[s] for s in basis])
            continue
        mat = np.zeros((len(basis), len(basis)))
        for r2 in rr:
            s2 = 2*n + r2
            if s2 not in rr:
                continue
            coefficient = (r2+n)/4  # (r+n/2)/2
            for col, s in enumerate(basis):
                step1 = act_psi(s, s2)
                if step1 is None:
                    continue
                step2 = act_psi(step1[0], -r2)
                if step2 is not None and step2[0] in ix:
                    mat[ix[step2[0]], col] += coefficient*step1[1]*step2[1]
        matrices[n] = mat
    return basis, matrices


def run():
    rows = []
    assert np.__version__
    c = 0.5
    for K in (2, 3, 4, 5, 6):
        basis, l = chiral(K)
        # Vacuum Virasoro module: even occupation per chirality.
        keep = [j for j,s in enumerate(basis) if s.bit_count() % 2 == 0]
        l = {n: a[np.ix_(keep, keep)] for n,a in l.items()}
        d = len(keep)
        eye = np.eye(d)
        h0 = 2*np.pi*(np.kron(l[0],eye)+np.kron(eye,l[0])-c/12*np.eye(d*d))
        v = -16*np.pi**2*np.kron(l[0]-c/24*eye,l[0]-c/24*eye)
        for n in range(1,K+1):
            v -= 16*np.pi**2*np.kron(l[n],l[n])
            v -= 16*np.pi**2*np.kron(l[-n],l[-n])
        assert np.linalg.norm(v-v.T) < 1e-10
        assert max(np.linalg.norm(l[n].T-l[-n]) for n in l) < 1e-12
        vac = np.zeros(d*d); vac[0] = 1
        target_norms = [c/12*n*(n*n-1) for n in range(2,K+1)]
        norm_error = max(abs(np.dot(l[-n][:,0],l[-n][:,0])-cn)
                         for n,cn in zip(range(2,K+1),target_norms))
        energies0 = np.diag(h0)
        response = np.zeros_like(vac)
        response[1:] = -v[1:,0]/(energies0[1:]-energies0[0])
        chi = float(response@response)
        chi_formula = 16*np.pi**2*sum((c/12*n*(n*n-1))**2/n**2 for n in range(2,K+1))
        e2 = float(v[0,1:]@response[1:])
        e2_formula = -64*np.pi**3*sum((c/12*n*(n*n-1))**2/n for n in range(2,K+1))
        observable = np.kron(l[2],l[2])
        derivative = float(vac@observable@response+response@observable@vac)
        delta = 2e-7  # centered finite-difference test of an independently diagonalized H
        results = []
        for lam in (-delta,delta):
            ev, vv = np.linalg.eigh(h0+lam*v)
            ground = vv[:,0]
            results.append((float(ev[0]),float(ground@observable@ground)))
        numeric_derivative = (results[1][1]-results[0][1])/(2*delta)
        slope = (results[1][0]-results[0][0])/(2*delta)
        expected_slope = -np.pi**2*c*c/36
        rows.append((K,d,norm_error,chi,chi_formula,e2,e2_formula,derivative,numeric_derivative,slope,expected_slope))
        assert norm_error < 1e-12
        assert abs(chi-chi_formula) < 1e-8
        assert abs(e2-e2_formula) < 1e-7
        assert abs(derivative-np.pi/8) < 1e-12
        assert abs(numeric_derivative-np.pi/8) < 2e-5
        assert abs(slope-expected_slope) < 2e-6
    text = ['# Finite conformal-level checks', '',
            'Executed NumPy '+np.__version__+'. Double precision. L=v=hbar=1, c=1/2.',
            'Code SHA256: `'+hashlib.sha256(Path(__file__).read_bytes()).hexdigest()+'`.', '',
            'Chiral even modules only (vacuum block); not the complete bosonic Ising Hilbert space.',
            'All assertions passed. No spatial entanglement claim is made.', '',
            '| K | chiral dimension | vacuum Virasoro norm error | chi (matrix) | chi (formula) | E2 from V1 (matrix) | E2 (formula) | d<L2 barL2>/dlambda | centered ED derivative | vacuum ED slope | exact first-order slope |',
            '|---:|---:|---:|---:|---:|---:|---:|---:|---:|---:|---:|']
    for row in rows:
        text.append('| '+' | '.join(str(x) if isinstance(x,int) else f'{x:.12g}' for x in row)+' |')
    text.extend(['', 'The large negative E2 is the bare second-order OFPT term from V1 alone.',
                 'It is NOT the exact TTbar spectral coefficient; V2 and a renormalization prescription are missing.',
                 'The finite cutoff is removed neither in the ED nor in the finite-difference test.'])
    target = Path(__file__).with_name('virasoro-results.md')
    target.write_text('\n'.join(text)+'\n',encoding='utf-8')
    print('\n'.join(text))

if __name__ == '__main__':
    run()
