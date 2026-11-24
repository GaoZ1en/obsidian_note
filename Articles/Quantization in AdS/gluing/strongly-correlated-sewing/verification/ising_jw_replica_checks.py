#!/usr/bin/env python3
"""Finite Ising/JW/replica checks; stdout only, no JSON or generated files.

Conventions: H=-sum Z_j Z_{j+1}-sum X_j, even N, P=prod X_j.
Majoranas are JW strings ending in Z,Y; i gamma_(2j) gamma_(2j+1)=X_j
in Python's zero-based Majorana indexing. Gamma_ab=i<gamma_a gamma_b>
for a!=b, Gamma_aa=0. All site lists below use zero-based indexing.

The small-system checks use full spin diagonalization and direct Majorana
monomials. Large-N tables use the exact finite-NS trigonometric covariance;
they are finite examples, not a continuum-convergence proof. The final FCS
checks review a candidate supplied by the parent agent, not a blind review.
Requires only NumPy. For reproducibility, run with OPENBLAS_NUM_THREADS=1.
"""
from itertools import combinations, product
import argparse
import numpy as np

I2 = np.eye(2, dtype=complex)
X = np.array([[0, 1], [1, 0]], dtype=complex)
Y = np.array([[0, -1j], [1j, 0]], dtype=complex)
Z = np.diag([1, -1]).astype(complex)


def tensor(xs):
    out = np.array([[1.0]], dtype=complex)
    for x in xs:
        out = np.kron(out, x)
    return out


def at(op, j, n):
    return tensor([op if k == j else I2 for k in range(n)])


def majoranas(n):
    return [tensor([X if k < j else op if k == j else I2 for k in range(n)])
            for j in range(n) for op in (Z, Y)]


def pf_recursive(a):
    """Small-matrix Pfaffian, with Pf(empty)=1."""
    a = np.asarray(a)
    n = len(a)
    if n == 0:
        return 1.0
    if n == 2:
        return a[0, 1]
    value = 0j
    for j in range(1, n):
        rest = [k for k in range(1, n) if k != j]
        value += (-1)**(j + 1) * a[0, j] * pf_recursive(a[np.ix_(rest, rest)])
    return value


def pf_elimination(a):
    """Pivoted Pfaffian; unlike sqrt(det), this retains its sign/phase."""
    a = np.array(a, dtype=complex, copy=True)
    n = len(a)
    assert n % 2 == 0
    value = 1.0 + 0j
    for k in range(0, n - 1, 2):
        j = k + 1 + int(np.argmax(abs(a[k, k + 1:])))
        if a[k, j] == 0:
            return 0j
        if j != k + 1:
            a[[k + 1, j], :] = a[[j, k + 1], :]
            a[:, [k + 1, j]] = a[:, [j, k + 1]]
            value = -value
        pivot = a[k, k + 1]
        value *= pivot
        u = a[k, k + 2:].copy()
        v = a[k + 1, k + 2:].copy()
        a[k + 2:, k + 2:] += (np.outer(v, u) - np.outer(u, v)) / pivot
    return value


def gaussian(cov, eta):
    """Clifford polynomial G(cov), trace 1; no positivity assumption."""
    m = len(cov) // 2
    out = np.eye(2**m, dtype=complex)
    for degree in range(2, len(cov) + 1, 2):
        for inds in combinations(range(len(cov)), degree):
            monomial = np.eye(2**m, dtype=complex)
            for r in inds:
                monomial = monomial @ eta[r]
            out += 1j**(degree // 2) * pf_recursive(cov[np.ix_(inds, inds)]) * monomial
    return out / 2**m


def partial_pure(v, keep, n):
    rest = [j for j in range(n) if j not in keep]
    w = v.reshape([2]*n).transpose(list(keep) + rest).reshape(2**len(keep), -1)
    return w @ w.conj().T


def partial_operator(op, keep, n):
    rest = [j for j in range(n) if j not in keep]
    order = list(keep) + rest + [j+n for j in keep] + [j+n for j in rest]
    da, dr = 2**len(keep), 2**len(rest)
    arr = op.reshape([2]*(2*n)).transpose(order).reshape(da, dr, da, dr)
    return np.einsum('arbr->ab', arr)


def midx(sites):
    return np.array([2*j+d for j in sites for d in (0, 1)], dtype=int)


def cauchy_block(rows, cols, n):
    rows, cols = np.asarray(rows), np.asarray(cols)
    return 1 / (n * np.sin(np.pi * (cols[None, :] - rows[:, None] + .5) / n))


def exact_covariance(n):
    ids = np.arange(2*n)
    diff = ids[None, :] - ids[:, None]
    cov = np.zeros((2*n, 2*n))
    odd = diff % 2 != 0
    cov[odd] = 1 / (n * np.sin(np.pi * diff[odd] / (2*n)))
    return cov


def word_moment(g, s, parity, power):
    out = 0j
    fs = (g, s)
    for r0 in product((0, 1), repeat=power-1):
        r = r0 + (sum(r0) % 2,)
        for s0 in product((0, 1), repeat=power-1):
            bits = s0 + (0,)
            word = np.eye(len(g), dtype=complex)
            for rr, ss in zip(r, bits):
                word = word @ (fs[rr] if ss == 0 else parity @ fs[rr] @ parity)
            out += (-1)**sum(rr*ss for rr, ss in zip(r, bits)) * np.trace(word)
    return 2**(1-power) * out


def check_small_spin():
    print('\nFULL SPIN ED AND DIRECT STRING INSERTION')
    cases = [(4, [1], [2], [3]), (6, [1, 2], [3], [4]),
             (8, [1, 2], [3, 4], [5, 6])]
    for n, a1, b, a2 in cases:
        xs = [at(X, j, n) for j in range(n)]
        zs = [at(Z, j, n) for j in range(n)]
        ham = -sum(xs) - sum(zs[j] @ zs[(j+1) % n] for j in range(n))
        energies, vectors = np.linalg.eigh(ham)
        state = vectors[:, 0]
        full_parity = tensor([X]*n)
        pb = tensor([X if j in b else I2 for j in range(n)])
        gam = majoranas(n)
        gvec = np.array([q @ state for q in gam])
        cov = (1j * (gvec.conj() @ gvec.T)).real
        np.fill_diagonal(cov, 0)
        a = a1 + a2
        ia, ib = midx(a), midx(b)
        ca, cb = cov[np.ix_(ia, ia)], cov[np.ix_(ib, ib)]
        cs = ca - cov[np.ix_(ia, ib)] @ np.linalg.solve(cb, cov[np.ix_(ib, ia)])
        t = pf_recursive(cb)
        eta = majoranas(len(a))
        g, s = gaussian(ca, eta), t * gaussian(cs, eta)
        gd, sd = np.zeros_like(g), np.zeros_like(g)
        for degree in range(0, len(ia)+1, 2):
            for inds in combinations(range(len(ia)), degree):
                monomial = np.eye(len(g), dtype=complex)
                for r in inds:
                    monomial = monomial @ eta[r]
                w = state.copy()
                for r in reversed(inds):
                    w = gam[ia[r]] @ w
                gd += (-1)**(degree//2) * np.vdot(state, w) * monomial / len(g)
                sd += (-1)**(degree//2) * np.vdot(state, pb @ w) * monomial / len(g)
        p1 = tensor([X if j < len(a1) else I2 for j in range(len(a))])
        gp, sp = p1 @ g @ p1, p1 @ s @ p1
        rho = partial_pure(state, a, n)
        tau = partial_operator(pb @ np.outer(state, state.conj()), a, n)
        reconstructed = (g + gp + s - sp) / 2
        tau_reconstructed = (s + sp + g - gp) / 2
        errors = np.array([np.linalg.norm(cov-exact_covariance(n)),
                           np.linalg.norm(g-gd), np.linalg.norm(s-sd),
                           np.linalg.norm(rho-reconstructed),
                           np.linalg.norm(tau-tau_reconstructed)])
        assert max(errors) < 5e-12
        assert abs(np.vdot(state, full_parity @ state)-1) < 5e-13
        assert abs(t-np.vdot(state, pb @ state)) < 5e-13
        terms = np.array([np.trace(g@g), np.trace(g@gp), np.trace(s@s), np.trace(s@sp)])
        purity_formula = (terms[0]+terms[1]+terms[2]-terms[3])/2
        assert abs(purity_formula-np.trace(rho@rho)) < 5e-13
        if n == 4:
            exact = np.array([9/16, (5+2*np.sqrt(2))/16,
                              (5+2*np.sqrt(2))/16, (1+np.sqrt(2))/8])
            assert max(abs(terms-exact)) < 5e-13
            assert abs(np.linalg.eigvalsh(s)[0]+1/8) < 5e-13
        print('N=', n, 'A1=', a1, 'B=', b, 'A2=', a2)
        print('  errors [NS covariance,G,S,rho,tau]=', [f'{err:.3e}' for err in errors])
        print('  Tr S=', np.real_if_close(t), 'S min eigenvalue=', np.linalg.eigvalsh(s)[0])
        print('  [T0,T1,T2,T3]=', np.real_if_close(terms))
        for power in (2, 3, 4):
            direct = np.trace(np.linalg.matrix_power(rho, power))
            calculated = word_moment(g, s, p1, power)
            assert abs(direct-calculated) < 5e-13
            print('  n=', power, 'moment=', np.real_if_close(direct),
                  'word residual=', abs(direct-calculated))


def check_overlap_polynomial():
    print('\nSIGNED OVERLAP PFAFFIAN')
    rng = np.random.default_rng(20261107)
    worst = 0.0
    for ell in range(1, 5):
        size = 2*ell
        a, b = rng.normal(size=(size, size)), rng.normal(size=(size, size))
        a, b = (a-a.T)/3, (b-b.T)/3
        eta = majoranas(ell)
        direct = np.trace(gaussian(a, eta) @ gaussian(b, eta))
        block = np.block([[a, np.eye(size)], [-np.eye(size), -b]])
        formula = (-1)**ell * pf_elimination(block) / 2**ell
        worst = max(worst, abs(direct-formula))
        assert abs(direct-formula) < 1e-11
        assert abs(formula**2-np.linalg.det(np.eye(size)-a@b)/4**ell) < 1e-10
    a = np.array([[0., 2.], [-2., 0.]])
    b = -a
    signed = -pf_elimination(np.block([[a, np.eye(2)], [-np.eye(2), -b]]))/2
    assert abs(signed+1.5) < 1e-14
    print('  largest random polynomial/Pfaffian residual=', worst)
    print('  indefinite one-mode overlap=', signed, '(principal square root would give +1.5)')


def check_cauchy_schur():
    print('\nEXPLICIT TRIGONOMETRIC CAUCHY SCHUR FORMULA')
    cases = [(8, [1, 2, 5, 6], [3, 4]),
             (32, [2, 3, 4, 5, 16, 17, 18, 19], [8, 9, 10, 11, 12]),
             (20, [1, 5, 13, 18], [2, 3, 8, 10])]
    for n, a, b in cases:
        a, b = np.array(a), np.array(b)
        theta = np.pi/n
        ca, cb = cauchy_block(a, a, n), cauchy_block(b, b, n)
        schur = ca-cauchy_block(a, b, n) @ np.linalg.solve(cb, cauchy_block(b, a, n))
        d = a[:, None]-b[None, :]
        u = np.prod(np.sin(theta*d)/np.sin(theta*(d-.5)), axis=1)
        v = np.prod(np.sin(theta*d)/np.sin(theta*(d+.5)), axis=1)
        error = np.linalg.norm(schur-u[:, None]*ca*v[None, :])
        num = np.prod([np.sin(theta*(b[i]-b[j]))*np.sin(theta*(b[j]-b[i]))
                       for i in range(len(b)) for j in range(i+1, len(b))])
        den = np.prod(np.sin(theta*(b[None, :]-b[:, None]+.5)))
        terr = abs(np.linalg.det(cb)-num/den/n**len(b))
        assert max(error, terr) < 5e-12
        print('  N=', n, 'Schur residual=', error, 'determinant residual=', terr)


def logoverlap(c, d):
    sign, logabs = np.linalg.slogdet(np.eye(len(c))+c@d.T)
    return sign, logabs-len(c)*np.log(2)


def scaling_tables(max_n):
    print('\nFINITE SIZE TABLES; THESE DO NOT PROVE A LIMIT')
    for geometry in ('equal_quarters', 'small_separated'):
        x = .5 if geometry == 'equal_quarters' else (np.sqrt(2)-1)**2
        target = np.array([(1-x)**.25, x**.25, 0.])
        target_r = (1-x)**(-.125)*(1+x**.25+(1-x)**.25)/2
        print('\n', geometry, 'x=', x, 'candidate ratios=', target, 'candidate R2=', target_r)
        print('N T1/T0 T2/T0 T3/T0 T0/(p1*p2) R2_spin')
        n = 16
        while n <= max_n:
            if geometry == 'equal_quarters':
                a1 = np.arange(n//8, 3*n//8)
                b = np.arange(3*n//8, 5*n//8)
                a2 = np.arange(5*n//8, 7*n//8)
            else:
                a1 = np.arange(n//8, n//4)
                b = np.arange(n//4, n//2)
                a2 = np.arange(n//2, 5*n//8)
            a = np.r_[a1, a2]
            ca, cb = cauchy_block(a, a, n), cauchy_block(b, b, n)
            cs = ca-cauchy_block(a, b, n) @ np.linalg.solve(cb, cauchy_block(b, a, n))
            st, lt = np.linalg.slogdet(cb)
            assert st == 1
            e = np.r_[-np.ones(len(a1)), np.ones(len(a2))]
            conjugate = lambda c: e[:, None]*c*e[None, :]
            values = [logoverlap(ca, ca), logoverlap(ca, conjugate(ca)),
                      logoverlap(cs, cs), logoverlap(cs, conjugate(cs))]
            signs = np.array([q[0] for q in values])
            logs = np.array([q[1] for q in values])
            logs[2:] += 2*lt
            ratios = signs[1:]/signs[0]*np.exp(logs[1:]-logs[0])
            single_log = sum(logoverlap(cauchy_block(q, q, n), cauchy_block(q, q, n))[1]
                             for q in (a1, a2))
            prefactor = signs[0]*np.exp(logs[0]-single_log)
            rspin = prefactor*(1+ratios[0]+ratios[1]-ratios[2])/2
            print(n, *(f'{q:.10f}' for q in (*ratios, prefactor, rspin)))
            n *= 2


def check_fcs_collaborative():
    print('\nCOLLABORATIVE CHECK OF THE PARENT-SUPPLIED EXACT XX FCS CANDIDATE')
    cases = [(4, [1], [2], [3]), (8, [1, 2], [3, 4], [5, 6]),
             (16, [2, 3], [4, 5, 6, 7], [8, 9])]
    for n, a1, b, a2 in cases:
        a, j = a1+a2, sorted(a1+b+a2)
        ai, bi, ji = midx(a), midx(b), midx(j)
        ids = np.arange(2*n)
        cov = exact_covariance(n)
        momentum = (2*np.arange(2*n)+1)*np.pi/(2*n)
        occupied = momentum[np.cos(momentum) > 0]
        assert len(occupied) == n
        modes = np.exp(1j*ids[:, None]*occupied[None, :])/np.sqrt(2*n)
        qxx = 2*modes@modes.conj().T-np.eye(2*n)
        gauge = np.exp(-.5j*np.pi*ids)
        q_from_gamma = gauge.conj()[:, None]*(1j*cov)*gauge[None, :]
        gauge_error = np.linalg.norm(qxx-q_from_gamma)
        assert gauge_error < 1e-11
        ca, cb = cov[np.ix_(ai, ai)], cov[np.ix_(bi, bi)]
        cs = ca-cov[np.ix_(ai, bi)] @ np.linalg.solve(cb, cov[np.ix_(bi, ai)])
        d = np.diag([-1]*2*len(a1)+[1]*2*len(a2))
        ell, t2 = len(a), np.linalg.det(cb)
        direct = np.array([np.linalg.det(np.eye(2*ell)+ca), np.linalg.det(d+ca),
                           t2*np.linalg.det(np.eye(2*ell)+cs), t2*np.linalg.det(d+cs)])/2**ell
        phase_sets = [(-.5, 0, -.5), (.5, 0, -.5), (-.5, -1, -.5), (.5, -1, -.5)]
        fcs = []
        for lambdas in phase_sets:
            phase = np.zeros(2*n)
            for region, lam in zip((a1, b, a2), lambdas):
                phase[midx(region)] = np.pi*lam
            def chi(lam):
                half = lam[ji]/2
                return np.linalg.det(np.diag(np.cos(half))
                                     +1j*np.sin(half)[:, None]*qxx[np.ix_(ji, ji)])
            value = chi(phase)
            fcs.append(value)
            phase[midx(a1)] += 2*np.pi
            assert abs(chi(phase)-value) < 1e-11
        error = max(abs(np.array(fcs)-direct))
        assert error < 1e-11
        complement = [z for z in range(n) if z not in a]
        ri = midx(complement)
        dr = np.diag([(-1 if z in b else 1) for z in complement for _ in (0, 1)])
        t1_complement = np.linalg.det(dr+cov[np.ix_(ri, ri)])/2**len(complement)
        assert abs(t1_complement-direct[2]) < 1e-11
        print('  N=', n, 'XX gauge residual=', gauge_error, 'FCS residual=', error)
        print('  [T0,T1,T2,T3]=', np.real_if_close(fcs),
              'complement identity residual=', abs(t1_complement-direct[2]))


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--max-n', type=int, default=1024)
    args = parser.parse_args()
    np.set_printoptions(precision=11, suppress=True)
    check_small_spin()
    check_overlap_polynomial()
    check_cauchy_schur()
    scaling_tables(args.max_n)
    check_fcs_collaborative()
    print('\nALL ASSERTIONS PASSED. Finite examples do not establish continuum convergence.')


if __name__ == '__main__':
    main()
