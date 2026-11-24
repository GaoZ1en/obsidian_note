"""Actual consecutive-four-Majorana spatial-regulator second-order vacuum loop.

Independent from mode-cutoff counterterms. Physical periodic spin chain, NS
(even spin parity) vacuum, even N, L=1 unless explicitly restored in formulas.
NumPy only. Emits Markdown only; never touches existing project sources.
"""
from pathlib import Path
import hashlib
import math
import time
import numpy as np


ROOT = Path(__file__).resolve().parent


def loop_sum(n):
    """Exact finite-NS momentum sum, evaluated in double precision.

    q_j=(2j+1)pi/(2N), 0<=j<N, j1+j2+j3+j4=2N-2.
    Return S_N, kappa_N=S_N/[4(2N)^3], number of intermediate states,
    and vacuum variance divided by a^-6 (L=1 only for reported energies).
    """
    q = (2*np.arange(n)+1)*math.pi/(2*n)
    sn = np.sin(q)
    total = 2*n-2
    s = 0.0
    norm = 0.0
    count = 0
    for i in range(n-3):
        for j in range(i+1, n-2):
            low = max(j+1, total-i-j-(n-1))
            high = min(n-2, (total-i-j-1)//2)
            if low > high:
                continue
            k = np.arange(low, high+1)
            l = total-i-j-k
            d2 = 4096.0*(np.sin((q[j]-q[i])/2)
                 *np.sin((q[k]-q[i])/2)*np.sin((q[l]-q[i])/2)
                 *np.sin((q[k]-q[j])/2)*np.sin((q[l]-q[j])/2)
                 *np.sin((q[l]-q[k])/2))**2
            s += float(np.sum(d2/(sn[i]+sn[j]+sn[k]+sn[l])))
            norm += float(np.sum(d2))
            count += len(k)
    m = 2*n
    return s, s/(4*m**3), count, norm/(4*m*m)


def bulk_quadrature(order):
    """Gauss-Legendre evaluation of the derived three-dimensional integral.

    kappa=1/[6(2pi)^3] int_0^(pi/2)du int_0^u dv int_0^u dw
          |Delta(e^-iq)|^2 / [2 sin(u)(cos(v)+cos(w))],
    with q=(u+v,u-v,pi-u+w,pi-u-w).
    """
    x, wt = np.polynomial.legendre.leggauss(order)
    t, weights = (x+1)/2, wt/2
    uvals = t*math.pi/2
    uw = weights*math.pi/2
    ww = weights[:, None]*weights[None, :]
    answer = 0.0
    for u, weight in zip(uvals, uw):
        v = (u*t)[:, None]
        w = (u*t)[None, :]
        z = math.cos(2*u)
        b = (z+np.cos(v+w))*(z+np.cos(v-w))
        delta2 = 256*np.sin(v)**2*np.sin(w)**2*b*b
        f = delta2/(2*math.sin(u)*(np.cos(v)+np.cos(w)))
        answer += weight*u*u*float(np.sum(ww*f))
    return answer/(6*(2*math.pi)**3)


def pauli(n, word):
    """Direct physical-spin Pauli matrix, site 0 the least-significant bit."""
    dim = 1 << n
    col = np.arange(dim)
    row = col.copy()
    values = np.ones(dim, complex)
    for site, letter in word.items():
        occupied = (col >> site) & 1
        z = 1-2*occupied
        if letter == 'X':
            row ^= 1 << site
        elif letter == 'Y':
            row ^= 1 << site
            values *= 1j*z
        elif letter == 'Z':
            values *= z
        else:
            raise ValueError(letter)
    result = np.zeros((dim, dim), complex)
    result[row, col] = values
    return result


def spin_matrices(n):
    a = 1/n
    ident = np.eye(1 << n)
    h = (2*n/(math.pi*a))*ident.astype(complex)
    v = (-32*n/(3*math.pi**2))*ident.astype(complex)
    for j in range(n):
        k, l = (j+1) % n, (j+2) % n
        h -= (pauli(n, {j: 'X'})+pauli(n, {j: 'Z', k: 'Z'}))/(2*a)
        v += -pauli(n, {j: 'X', k: 'X'})-pauli(n, {j: 'Z', l: 'Z'})
        v += 14/(3*math.pi)*(pauli(n, {j: 'X'})+pauli(n, {j: 'Z', k: 'Z'}))
        v += 2/math.pi*(-pauli(n, {j: 'Y', k: 'Y'})
                         +pauli(n, {j: 'Z', k: 'X', l: 'Z'}))
    return h, v/(8*a**3)


def delta_g(n, r):
    return 1/(n*math.sin(math.pi*r/(2*n)))-2/(math.pi*r)


def circle_vacuum_slope(n):
    a = 1/n
    d1, d3 = delta_g(n, 1), delta_g(n, 3)
    return -(2*n)/(8*a**3)*(d1*d1+d1*d3)


def ed_check(n):
    h, v = spin_matrices(n)
    energies, states = np.linalg.eigh(h)
    vacuum = states[:, 0]
    amps = states.conj().T@(v@vacuum)
    ed = float(np.sum(np.abs(amps[1:])**2/(energies[0]-energies[1:])))
    variance = float(np.sum(np.abs(amps[1:])**2))
    s, kappa, count, norm = loop_sum(n)
    formula = -kappa*n**6
    var_formula = norm*n**6
    v00 = float(amps[0].real)
    errors = [abs(ed-formula), abs(variance-var_formula),
              abs(v00-circle_vacuum_slope(n))]
    assert errors[0] < 5e-10*max(1, abs(ed))
    assert errors[1] < 5e-10*max(1, variance)
    assert errors[2] < 5e-10
    # The physical PBC ground is in spin parity +1 (NS).
    parity = pauli(n, {j: 'X' for j in range(n)})
    parity_error = np.linalg.norm(parity@vacuum-vacuum)
    assert parity_error < 2e-11
    return n, ed, formula, errors[0], errors[1], errors[2], parity_error


def determinant_and_two_leg_check(n=6):
    h, v = spin_matrices(n)
    energies, states = np.linalg.eigh(h)
    vacuum = states[:, 0]
    gamma = []
    for j in range(n):
        prefix = {k: 'X' for k in range(j)}
        gamma.append(pauli(n, prefix | {j: 'Z'}))
        gamma.append(pauli(n, prefix | {j: 'Y'}))
    q = (2*np.arange(n)+1)*math.pi/(2*n)
    creators = [sum((np.exp(1j*qq*r)*g for r, g in enumerate(gamma)),
                    np.zeros_like(h))/math.sqrt(4*n) for qq in q]
    annihilation = max(np.linalg.norm(c.conj().T@vacuum) for c in creators)
    assert annihilation < 1e-11
    max_two = 0.0
    max_four_error = 0.0
    max_gap_error = 0.0
    for i in range(n):
        for j in range(i+1, n):
            two = creators[i]@creators[j]@vacuum
            max_two = max(max_two, abs(np.vdot(two, v@vacuum)))
            for k in range(j+1, n):
                for l in range(k+1, n):
                    labels = [i, j, k, l]
                    four = creators[i]@creators[j]@creators[k]@creators[l]@vacuum
                    actual = np.vdot(four, v@vacuum)
                    det = np.linalg.det(np.exp(-1j*np.arange(4)[:, None]*q[labels][None, :]))
                    expected = det*n**3/(4*n) if sum(labels) == 2*n-2 else 0.0
                    max_four_error = max(max_four_error, abs(actual-expected))
                    gap = sum(2*n*math.sin(q[t]) for t in labels)
                    max_gap_error = max(max_gap_error,
                        np.linalg.norm(h@four-(energies[0]+gap)*four))
    assert max_two < 1e-10
    assert max_four_error < 1e-10
    assert max_gap_error < 1e-10
    return annihilation, max_two, max_four_error, max_gap_error


def main():
    start = time.monotonic()
    ed_rows = [ed_check(n) for n in (4, 6, 8)]
    mode_checks = determinant_and_two_leg_check()
    finite_rows = []
    for n in (4, 6, 8, 12, 16, 24, 32, 48, 64, 96, 128, 192, 256, 384, 512):
        s, kappa, count, norm = loop_sum(n)
        finite_rows.append((n, count, kappa, -kappa*n**6))
    quad_rows = [(n, bulk_quadrature(n)) for n in (16, 24, 32, 48, 64, 96, 128, 192)]
    exact_n4 = (2-math.sqrt(2))**2.5/512
    assert abs(finite_rows[0][2]-exact_n4) < 1e-17
    assert abs(quad_rows[-1][1]-quad_rows[-2][1]) < 1e-13
    lines = ['# Actual spatial-loop UV checks', '',
             'Independent NumPy implementation of the specified PBC spin Hamiltonian and consecutive-four-Majorana interaction. No mode-cutoff counterterm is used.', '',
             'L=1; double precision. The coefficient E2 is defined by E=E0+lambda E1+lambda² E2+... (no factorial).', '',
             'Code SHA256: `'+hashlib.sha256(Path(__file__).read_bytes()).hexdigest()+'`.', '',
             '## Finite-spin ED against the derived four-particle loop', '',
             '| N | ED E2mix | momentum E2mix | absolute residual | variance residual | plane-Wick vacuum-slope residual | NS parity residual |',
             '|---:|---:|---:|---:|---:|---:|---:|']
    for r in ed_rows:
        lines.append('| '+' | '.join(str(x) if k == 0 else f'{x:.14g}' for k, x in enumerate(r))+' |')
    lines += ['', 'At N=6: annihilator residual, largest two-creation vertex, largest full complex four-creation determinant residual, and free four-particle eigenstate residual:', '',
              '`'+', '.join(f'{x:.14g}' for x in mode_checks)+'`.', '',
              '## Exact finite-NS sum, numerically evaluated', '',
              'kappa_N=-a^6 E2mix/L=S_N/[4(2N)^3], with S_N the derived restricted four-mode sum.', '',
              '| N | four-particle intermediate states | kappa_N | E2mix (L=1) |',
              '|---:|---:|---:|---:|']
    for n, count, kappa, e2 in finite_rows:
        lines.append(f'| {n} | {count} | {kappa:.16g} | {e2:.16g} |')
    lines += ['', 'N=4 exact result: kappa_4=(2-sqrt(2))^(5/2)/512, E2mix=-8(2-sqrt(2))^(5/2).', '',
              '## Direct bulk-momentum integral', '',
              '| Gauss order per dimension | kappa integral |', '|---:|---:|']
    for n, value in quad_rows:
        lines.append(f'| {n} | {value:.17g} |')
    lines += ['', 'The integral is derived before numerical evaluation. Convergence of deterministic quadrature is numerical evidence, not a certified error bound or a closed-form analytic evaluation.', '',
              f'Elapsed time: {time.monotonic()-start:.3f} s.', '']
    output = ROOT/'spatial-loop-uv-results.md'
    if output.exists():
        raise FileExistsError('Refusing to overwrite an existing result: '+str(output))
    output.write_text('\n'.join(lines))
    print('\n'.join(lines))


if __name__ == '__main__':
    main()
