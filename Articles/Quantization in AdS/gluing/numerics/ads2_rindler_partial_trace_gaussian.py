#!/usr/bin/env python3
"""Finite global-Cauchy regulators for the AdS2 Rindler partial trace.

The calculation uses only NumPy.  It constructs a cell-centred, factorizing
regulator of the global t=0 Friedrichs Hamiltonian, forms its Gaussian ground
state, traces the left lattice sites, reconstructs the finite modular
Hamiltonian by Williamson reduction, and compares fixed smooth observables
with the continuum global-mode covariance.

Conventions:
  * L = 1 and hbar = 1;
  * R = (Q_1,...,Q_N,P_1,...,P_N), [R_a,R_b] = i J_ab;
  * a = m^2 L^2 = Delta(Delta-1), with the default Delta = 2;
  * the vacuum symplectic eigenvalue is 1/2.

This is a numerical evidence script.  It does not classify the continuum
wedge algebra and it does not construct a trace-norm limit of density matrices.
"""

from __future__ import annotations

import argparse
import math
import platform
import sys
from dataclasses import dataclass

import numpy as np


L = math.pi / 2.0


def symmetrize(a: np.ndarray) -> np.ndarray:
    return 0.5 * (a + a.T)


def spd_power(a: np.ndarray, power: float, floor: float = 1.0e-15) -> np.ndarray:
    vals, vecs = np.linalg.eigh(symmetrize(a))
    if vals[0] <= -1.0e-11 * max(1.0, vals[-1]):
        raise ValueError(f"matrix is not positive: min eigenvalue {vals[0]:.6e}")
    vals = np.maximum(vals, floor * max(1.0, vals[-1]))
    return (vecs * (vals**power)) @ vecs.T


def bump(x: np.ndarray, left: float, right: float) -> np.ndarray:
    out = np.zeros_like(x, dtype=float)
    mask = (x > left) & (x < right)
    y = (x[mask] - left) * (right - x[mask])
    out[mask] = np.exp(-((right - left) ** 2) / (4.0 * y))
    return out


def normalize_grid(values: np.ndarray, weights: np.ndarray) -> np.ndarray:
    norm = math.sqrt(float(values @ (weights * values)))
    if norm == 0.0:
        raise ValueError("zero test function")
    return values / norm


def make_edges(n: int, regulator: str) -> np.ndarray:
    if n % 2:
        raise ValueError("the total site count must be even so rho=0 is a cell edge")
    u = np.linspace(-1.0, 1.0, n + 1)
    if regulator == "uniform":
        edges = L * u
    elif regulator == "tanh":
        stretch = 0.8
        edges = L * np.tanh(stretch * u) / math.tanh(stretch)
    else:
        raise ValueError(regulator)
    edges[n // 2] = 0.0
    return edges


@dataclass
class Regulator:
    name: str
    delta: float
    edges: np.ndarray
    rho: np.ndarray
    weights: np.ndarray
    mass: np.ndarray
    stiffness: np.ndarray
    canonical_operator: np.ndarray
    frequencies: np.ndarray
    xcov: np.ndarray
    pcov: np.ndarray


def build_regulator(n: int, delta: float, name: str) -> Regulator:
    edges = make_edges(n, name)
    rho = 0.5 * (edges[:-1] + edges[1:])
    weights = np.diff(edges)
    mass = np.diag(weights)
    k = np.zeros((n, n), dtype=float)

    # Dirichlet/Friedrichs endpoint pieces of the piecewise-linear energy.
    k[0, 0] += 1.0 / (rho[0] - edges[0])
    k[-1, -1] += 1.0 / (edges[-1] - rho[-1])
    for j in range(n - 1):
        coeff = 1.0 / (rho[j + 1] - rho[j])
        k[j, j] += coeff
        k[j + 1, j + 1] += coeff
        k[j, j + 1] -= coeff
        k[j + 1, j] -= coeff

    a = delta * (delta - 1.0)
    potential = a / np.cos(rho) ** 2
    k += np.diag(weights * potential)

    m_inv_sqrt = np.diag(1.0 / np.sqrt(weights))
    operator = symmetrize(m_inv_sqrt @ k @ m_inv_sqrt)
    lam, modes = np.linalg.eigh(operator)
    if lam[0] <= 0.0:
        raise ValueError(f"nonpositive Hamiltonian for {name}, N={n}: {lam[0]}")
    freq = np.sqrt(lam)
    xcov = (modes * (0.5 / freq)) @ modes.T
    pcov = (modes * (0.5 * freq)) @ modes.T
    return Regulator(name, delta, edges, rho, weights, mass, k, operator,
                     freq, symmetrize(xcov), symmetrize(pcov))


def phase_space_covariance(xcov: np.ndarray, pcov: np.ndarray) -> np.ndarray:
    z = np.zeros_like(xcov)
    return np.block([[xcov, z], [z, pcov]])


def symplectic_form(n: int) -> np.ndarray:
    eye = np.eye(n)
    zero = np.zeros((n, n))
    return np.block([[zero, eye], [-eye, zero]])


@dataclass
class Williamson:
    nu: np.ndarray
    epsilon: np.ndarray
    transform: np.ndarray
    gq: np.ndarray
    gp: np.ndarray
    covariance_reconstruction_error: float
    diagonalization_error: float
    trace_truncation_error: float


def williamson_zero_xp(x: np.ndarray, p: np.ndarray, fock_cut: int = 80) -> Williamson:
    """Williamson map W with W Gamma W^T = diag(nu,nu)."""
    xs = spd_power(x, 0.5)
    xis = spd_power(x, -0.5)
    middle = symmetrize(xs @ p @ xs)
    nu2, o = np.linalg.eigh(middle)
    nu = np.sqrt(np.maximum(nu2, 0.0))
    order = np.argsort(nu)[::-1]
    nu = nu[order]
    o = o[:, order]

    # Double precision cannot resolve exponentially small nu-1/2 at high N.
    # Clipping is used only for epsilon/G, never for the uncertainty test.
    nu_eps = np.maximum(nu, 0.5 + 5.0e-14)
    eps = np.log((nu_eps + 0.5) / (nu_eps - 0.5))
    d_sqrt = np.diag(np.sqrt(nu_eps))
    t = d_sqrt @ o.T @ xis
    t_inv = np.linalg.inv(t)
    e = np.diag(eps)
    gq = symmetrize(t.T @ e @ t)
    gp = symmetrize(t_inv @ e @ t_inv.T)

    xr = t_inv @ np.diag(nu_eps) @ t_inv.T
    pr = t.T @ np.diag(nu_eps) @ t
    rec = max(np.linalg.norm(xr - x) / np.linalg.norm(x),
              np.linalg.norm(pr - p) / np.linalg.norm(p))
    w = np.block([[t, np.zeros_like(t)], [np.zeros_like(t), t_inv.T]])
    gamma = phase_space_covariance(x, p)
    diag_target = np.diag(np.concatenate([nu_eps, nu_eps]))
    diag_err = np.linalg.norm(w @ gamma @ w.T - diag_target) / np.linalg.norm(diag_target)

    # Exact product factors have unit trace.  The reported number is the error
    # after truncating every Williamson occupation sum at n=fock_cut-1.
    ratios = np.exp(-eps)
    retained = np.prod(1.0 - ratios**fock_cut)
    trace_error = abs(1.0 - retained)
    return Williamson(nu, eps, t, gq, gp, rec, diag_err, trace_error)


def entropy_from_nu(nu: np.ndarray) -> float:
    plus = nu + 0.5
    minus = np.maximum(nu - 0.5, 0.0)
    out = plus * np.log(plus)
    mask = minus > 1.0e-15
    out[mask] -= minus[mask] * np.log(minus[mask])
    return float(np.sum(out))


def right_blocks(reg: Regulator) -> tuple[np.ndarray, np.ndarray, np.ndarray]:
    n = len(reg.rho)
    idx = np.arange(n // 2, n)
    return reg.xcov[np.ix_(idx, idx)], reg.pcov[np.ix_(idx, idx)], idx


def load_vector(reg: Regulator, values: np.ndarray) -> np.ndarray:
    # Phi(f) = sum h_j f_j q_j = (sqrt(h) f)^T Q.
    return np.sqrt(reg.weights) * values


def continuum_modes(delta: float, grid: np.ndarray, nmax: int) -> tuple[np.ndarray, np.ndarray]:
    x = np.sin(grid)
    c0 = np.ones_like(x)
    modes = []
    freqs = []
    cm1 = None
    cn = c0
    for n in range(nmax):
        if n == 0:
            cn = c0
        elif n == 1:
            cn = 2.0 * delta * x
        else:
            cnext = (2.0 * (n - 1 + delta) * x * cn
                     - (n - 2 + 2.0 * delta) * cm1) / n
            cm1, cn = cn, cnext
        if n == 0:
            cm1 = c0
        omega = delta + n
        log_norm = 0.5 * (
            (2.0 * delta - 2.0) * math.log(2.0)
            + math.lgamma(n + 1.0) + 2.0 * math.lgamma(delta)
            - math.log(math.pi) - math.lgamma(n + 2.0 * delta)
        )
        phi_spatial = math.exp(log_norm) * np.cos(grid) ** delta * cn
        modes.append(math.sqrt(2.0 * omega) * phi_spatial)
        freqs.append(omega)
    return np.asarray(freqs), np.asarray(modes)


def continuum_coefficients(delta: float, functions: list[np.ndarray], grid: np.ndarray,
                           nmax: int = 320) -> tuple[np.ndarray, np.ndarray]:
    freqs, modes = continuum_modes(delta, grid, nmax)
    coeff = np.array([[np.trapezoid(f * mode, grid) for mode in modes]
                      for f in functions])
    return freqs, coeff


def continuum_covariances(delta: float, functions: list[np.ndarray], grid: np.ndarray,
                          nmax: int = 320) -> tuple[np.ndarray, np.ndarray]:
    freq, coeff = continuum_coefficients(delta, functions, grid, nmax)
    x = (coeff * (0.5 / freq)) @ coeff.T
    p = (coeff * (0.5 * freq)) @ coeff.T
    return symmetrize(x), symmetrize(p)


def weighted_boost_matrices(reg: Regulator) -> tuple[np.ndarray, np.ndarray]:
    n = len(reg.rho)
    start = n // 2
    rho = reg.rho[start:]
    widths = reg.weights[start:]
    nr = len(rho)
    kb = np.zeros((nr, nr))

    # The horizon endpoint is natural: sin(rho)=0, so no Dirichlet term is added.
    for j in range(nr - 1):
        r0, r1 = rho[j], rho[j + 1]
        coeff = (math.cos(r0) - math.cos(r1)) / (r1 - r0) ** 2
        kb[j, j] += coeff
        kb[j + 1, j + 1] += coeff
        kb[j, j + 1] -= coeff
        kb[j + 1, j] -= coeff
    d = reg.edges[-1] - rho[-1]
    kb[-1, -1] += (math.cos(rho[-1]) - math.cos(reg.edges[-1])) / d**2
    a = reg.delta * (reg.delta - 1.0)
    w = np.sin(rho)
    kb += np.diag(widths * w * a / np.cos(rho) ** 2)

    m_inv_sqrt = np.diag(1.0 / np.sqrt(widths))
    gq = symmetrize(m_inv_sqrt @ kb @ m_inv_sqrt)
    gp = np.diag(w)
    return gq, gp


def quadratic_flow(gq: np.ndarray, gp: np.ndarray, s: float) -> np.ndarray:
    """Real symplectic flow of H=(p gp p + q gq q)/2."""
    gp_half = spd_power(gp, 0.5)
    gp_ihalf = spd_power(gp, -0.5)
    dyn = symmetrize(gp_half @ gq @ gp_half)
    lam, u = np.linalg.eigh(dyn)
    omega = np.sqrt(np.maximum(lam, 0.0))
    c = (u * np.cos(omega * s)) @ u.T
    sinc = np.ones_like(omega)
    mask = omega > 1.0e-14
    sinc[mask] = np.sin(omega[mask] * s) / omega[mask]
    ws = (u * sinc) @ u.T
    oms = (u * (omega * np.sin(omega * s))) @ u.T
    qq = gp_half @ c @ gp_ihalf
    qp = gp_half @ ws @ gp_half
    pq = -gp_ihalf @ oms @ gp_ihalf
    pp = gp_ihalf @ c @ gp_half
    return np.block([[qq, qp], [pq, pp]])


def continuum_boost_wightman(delta: float, f: np.ndarray, g: np.ndarray,
                              grid: np.ndarray, s: float, nmax: int = 360) -> complex:
    freq, modes = continuum_modes(delta, grid, nmax)
    cf = np.array([np.trapezoid(f * mode, grid) for mode in modes])
    rho_s = np.arctan(np.tan(grid) * math.cosh(s))
    t_s = np.arctan(np.sin(grid) * math.sinh(s))
    _, moved_modes = continuum_modes(delta, rho_s, nmax)
    cg = np.array([
        np.trapezoid(g * moved_modes[j] * np.exp(1j * freq[j] * t_s), grid)
        for j in range(nmax)
    ])
    return complex(np.sum(cf * cg / (2.0 * freq)))


def relative_error(value: complex, target: complex) -> float:
    return float(abs(value - target) / max(abs(target), 1.0e-15))


def run(args: argparse.Namespace) -> int:
    delta = args.delta
    fine_grid = np.linspace(-L + 1.0e-8, L - 1.0e-8, args.quad_points)
    right_grid = fine_grid[fine_grid > 0.0]

    f_rr = bump(fine_grid, 0.28, 0.78)
    g_rr = bump(fine_grid, 0.72, 1.18)
    f_lr = bump(fine_grid, -0.78, -0.28)
    wgrid = np.full_like(fine_grid, fine_grid[1] - fine_grid[0])
    f_rr = normalize_grid(f_rr, wgrid)
    g_rr = normalize_grid(g_rr, wgrid)
    f_lr = normalize_grid(f_lr, wgrid)
    cont_x, cont_p = continuum_covariances(delta, [f_rr, g_rr, f_lr], fine_grid,
                                            args.continuum_modes)

    failures: list[str] = []
    print("AdS2 Rindler finite partial-trace Gaussian audit")
    print(f"python={platform.python_version()} numpy={np.__version__} platform={platform.platform()}")
    print(f"Delta={delta:.8g} a=Delta(Delta-1)={delta*(delta-1):.8g} hbar=1 vacuum_nu=1/2")
    print(f"continuum_mode_cutoff={args.continuum_modes} quadrature_points={args.quad_points}")

    print("\nTABLE spectral_and_covariance_convergence")
    print("regulator N max_freq_err_6 min_K min_Heisenberg RR_phi_rel RR_pi_rel LR_phi_rel Weyl_rel entropy")
    records: dict[tuple[str, int], tuple[Regulator, Williamson]] = {}
    for name in ("uniform", "tanh"):
        for n in args.sizes:
            reg = build_regulator(n, delta, name)
            xr, pr, ridx = right_blocks(reg)
            will = williamson_zero_xp(xr, pr)
            records[(name, n)] = (reg, will)
            gamma = phase_space_covariance(reg.xcov, reg.pcov)
            jfull = symplectic_form(n)
            heis = float(np.linalg.eigvalsh(gamma + 0.5j * jfull)[0])
            min_k = float(np.linalg.eigvalsh(reg.canonical_operator)[0])
            freq_err = float(np.max(np.abs(reg.frequencies[:6] - (delta + np.arange(6)))))

            vals = []
            for left, right in ((0.28, 0.78), (0.72, 1.18), (-0.78, -0.28)):
                v = bump(reg.rho, left, right)
                v = normalize_grid(v, reg.weights)
                vals.append(load_vector(reg, v))
            vf, vg, vl = vals
            rr_phi = float(vf @ reg.xcov @ vg)
            rr_pi = float(vf @ reg.pcov @ vg)
            lr_phi = float(vl @ reg.xcov @ vf)
            rr_phi_err = relative_error(rr_phi, cont_x[0, 1])
            rr_pi_err = relative_error(rr_pi, cont_p[0, 1])
            lr_phi_err = relative_error(lr_phi, cont_x[2, 0])
            var_disc = float(vf @ reg.xcov @ vf + 0.04 * vg @ reg.pcov @ vg)
            var_cont = float(cont_x[0, 0] + 0.04 * cont_p[1, 1])
            weyl_err = relative_error(math.exp(-0.5 * var_disc), math.exp(-0.5 * var_cont))
            entropy = entropy_from_nu(will.nu)
            print(f"{name:7s} {n:3d} {freq_err:.3e} {min_k:.6e} {heis:.3e} "
                  f"{rr_phi_err:.3e} {rr_pi_err:.3e} {lr_phi_err:.3e} {weyl_err:.3e} {entropy:.9f}")

            if min_k <= 0.0:
                failures.append(f"{name} N={n}: Hamiltonian not positive")
            if heis < -2.0e-9:
                failures.append(f"{name} N={n}: Heisenberg violation {heis}")
            if np.min(will.nu) < 0.5 - 2.0e-9:
                failures.append(f"{name} N={n}: reduced nu below 1/2")

    print("\nTABLE finite_partial_trace_and_modular_reconstruction")
    print("regulator N min_nu max_nu diag_rel covariance_reconstruction_rel trace_error_fock80 max_epsilon")
    for name in ("uniform", "tanh"):
        for n in args.modular_sizes:
            reg = build_regulator(n, delta, name)
            xr, pr, _ = right_blocks(reg)
            will = williamson_zero_xp(xr, pr)
            print(f"{name:7s} {n:3d} {np.min(will.nu):.12f} {np.max(will.nu):.9f} "
                  f"{will.diagonalization_error:.3e} {will.covariance_reconstruction_error:.3e} "
                  f"{will.trace_truncation_error:.3e} {np.max(will.epsilon):.6e}")
            if will.diagonalization_error > 2.0e-7:
                failures.append(f"{name} N={n}: Williamson diagonalization residual")
            if will.covariance_reconstruction_error > 2.0e-7:
                failures.append(f"{name} N={n}: modular covariance reconstruction residual")

    print("\nTABLE restriction_information_loss_and_entropy_cutoff")
    print("regulator N reduced_RR_principal_residual LR_field_block_frobenius entropy doubling_slope")
    for name in ("uniform", "tanh"):
        entropy_by_n = {n: entropy_from_nu(records[(name, n)][1].nu) for n in args.sizes}
        for n in args.sizes:
            reg, will = records[(name, n)]
            xr, _, ridx = right_blocks(reg)
            lidx = np.arange(0, n // 2)
            lr_norm = float(np.linalg.norm(reg.xcov[np.ix_(lidx, ridx)]))
            principal_residual = float(np.linalg.norm(xr - reg.xcov[np.ix_(ridx, ridx)]))
            entropy = entropy_from_nu(will.nu)
            slope = ((entropy - entropy_by_n[n // 2]) / math.log(2.0)
                     if n % 2 == 0 and n // 2 in entropy_by_n else float("nan"))
            slope_text = "--" if math.isnan(slope) else f"{slope:.9f}"
            print(f"{name:7s} {n:3d} {principal_residual:.3e} {lr_norm:.6e} "
                  f"{entropy:.9f} {slope_text}")

    print("\nTABLE collar_covariance_convergence_uniform")
    print("epsilon N phi_variance_rel momentum_variance_rel weyl_rel")
    for eps in args.epsilons:
        left, right = eps, 1.22
        f_cont = bump(fine_grid, left, right)
        f_cont = normalize_grid(f_cont, wgrid)
        cx, cp = continuum_covariances(delta, [f_cont], fine_grid, args.continuum_modes)
        for n in args.sizes:
            reg, _ = records[("uniform", n)]
            f = normalize_grid(bump(reg.rho, left, right), reg.weights)
            v = load_vector(reg, f)
            xd = float(v @ reg.xcov @ v)
            pd = float(v @ reg.pcov @ v)
            vard = xd + 0.05 * pd
            varc = float(cx[0, 0] + 0.05 * cp[0, 0])
            print(f"{eps:.3f} {n:3d} {relative_error(xd,cx[0,0]):.3e} "
                  f"{relative_error(pd,cp[0,0]):.3e} "
                  f"{relative_error(math.exp(-0.5*vard),math.exp(-0.5*varc)):.3e}")

    print("\nTABLE machine_precision_modular_kernel_diagnostic_uniform")
    print("note near-pure Williamson modes are clipped here; use the Wolfram high-precision table for claims")
    print("N epsilon q_pair_rel p_pair_rel")
    for n in args.modular_sizes:
        reg = build_regulator(n, delta, "uniform")
        xr, pr, ridx = right_blocks(reg)
        will = williamson_zero_xp(xr, pr)
        bq, bp = weighted_boost_matrices(reg)
        rrho = reg.rho[ridx]
        rw = reg.weights[ridx]
        for eps in args.epsilons[:2]:
            qfun = normalize_grid(bump(rrho, eps, 1.18), rw)
            pfun = normalize_grid(bump(rrho, max(eps + 0.08, 0.22), 1.28), rw)
            qvec = np.sqrt(rw) * qfun
            pvec = np.sqrt(rw) * pfun
            q_mod = float(qvec @ will.gq @ qvec)
            q_boost = float(2.0 * math.pi * qvec @ bq @ qvec)
            p_mod = float(pvec @ will.gp @ pvec)
            p_boost = float(2.0 * math.pi * pvec @ bp @ pvec)
            print(f"{n:3d} {eps:.3f} {relative_error(q_mod,q_boost):.3e} "
                  f"{relative_error(p_mod,p_boost):.3e}")

    print("\nTABLE real_boost_flow_wightman_uniform")
    print("s N real_rel imag_abs_error")
    pos_grid = right_grid
    wf = np.full_like(pos_grid, pos_grid[1] - pos_grid[0])
    fb = normalize_grid(bump(pos_grid, 0.30, 0.66), wf)
    gb = normalize_grid(bump(pos_grid, 0.82, 1.16), wf)
    for s in args.boost_times:
        target = continuum_boost_wightman(delta, fb, gb, pos_grid, s,
                                           min(args.continuum_modes, 300))
        for n in args.sizes:
            reg, _ = records[("uniform", n)]
            xr, pr, ridx = right_blocks(reg)
            rrho = reg.rho[ridx]
            rw = reg.weights[ridx]
            f = normalize_grid(bump(rrho, 0.30, 0.66), rw)
            g = normalize_grid(bump(rrho, 0.82, 1.16), rw)
            af = np.concatenate([np.sqrt(rw) * f, np.zeros(len(ridx))])
            bg = np.concatenate([np.sqrt(rw) * g, np.zeros(len(ridx))])
            gamma_r = phase_space_covariance(xr, pr)
            jr = symplectic_form(len(ridx))
            bq, bp = weighted_boost_matrices(reg)
            flow = quadratic_flow(bq, bp, s)
            value = complex(af @ (gamma_r + 0.5j * jr) @ flow.T @ bg)
            print(f"{s:.3f} {n:3d} {relative_error(value.real,target.real):.3e} "
                  f"{abs(value.imag-target.imag):.3e}")

    print("\nSTATUS")
    print("exact_finite_checks=PASS" if not failures else "exact_finite_checks=FAIL")
    if failures:
        for item in failures:
            print(f"FAILURE: {item}")
    print("evidence_boundary=finite matrices exact to displayed residuals; continuum and regulator-independence claims are numerical/conditional")
    return 1 if failures else 0


def parse_args() -> argparse.Namespace:
    parser = argparse.ArgumentParser()
    parser.add_argument("--delta", type=float, default=2.0)
    parser.add_argument("--sizes", type=int, nargs="+", default=[32, 64, 96, 128])
    parser.add_argument("--modular-sizes", type=int, nargs="+", default=[12, 16, 20, 24])
    parser.add_argument("--epsilons", type=float, nargs="+", default=[0.12, 0.24, 0.36])
    parser.add_argument("--boost-times", type=float, nargs="+", default=[0.2, 0.5, 0.8])
    parser.add_argument("--continuum-modes", type=int, default=320)
    parser.add_argument("--quad-points", type=int, default=12001)
    return parser.parse_args()


if __name__ == "__main__":
    sys.exit(run(parse_args()))
