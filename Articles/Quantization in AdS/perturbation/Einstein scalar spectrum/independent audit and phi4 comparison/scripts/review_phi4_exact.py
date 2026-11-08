#!/usr/bin/env python3
"""Fresh phi4 two-particle physics review: independent exact finite checks.

No research-package or phi4-author implementation is imported. This program was
written after the reviewer's analytic derivation. Matrices come directly from
normalized global-AdS Jacobi modes and beta moments, not pair projectors.

Run with the pinned ordinary Python or with sage --nodotsage -python.
The output matrices use pi/lambda times the physical first-order energy shift.
"""
from __future__ import annotations

import argparse
import hashlib
import itertools
import json
import platform
from pathlib import Path

import sympy as sp

W = sp.Symbol("w", real=True)
X = sp.Symbol("X")  # charpoly replaces assumption-bearing generators.
D, Z = sp.symbols("D z", positive=True)
CHECKS: list[dict] = []


def record(label: str, residual) -> None:
    value = sp.simplify(residual)
    passed = value == 0
    CHECKS.append({"label": label, "passed": bool(passed), "residual": str(value)})
    if not passed:
        raise AssertionError((label, value))


def mode(p: int, q: int, delta, variable=W):
    """u_pq = e^{-iwt+ijtheta}(1-z)^(Delta/2) m_pq(sqrt(z))/sqrt(2pi)."""
    n, ell = min(p, q), abs(p - q)
    norm = sp.sqrt(sp.factorial(n) * sp.rf(delta + n, ell) / sp.factorial(n + ell))
    return sp.expand((-1) ** n * norm * variable ** ell *
                     sp.jacobi(n, ell, delta - 1, 1 - 2 * variable ** 2))


def cg(k: int, a: int, delta):
    return (-1) ** a * sp.sqrt(
        sp.binomial(k, a) * sp.rf(delta, k) ** 2 /
        (sp.rf(delta, a) * sp.rf(delta, k - a) * sp.rf(2 * delta + k - 1, k)))


def beta_moment(poly, b):
    """Integral_0^1 dz (1-z)^(b-1) poly(sqrt(z)), exactly."""
    total = sp.S.Zero
    for (power,), coeff in sp.Poly(sp.expand(poly), W).terms():
        if power % 2:
            raise AssertionError("The integrand has an unexpected odd w power")
        j = power // 2
        total += coeff * sp.factorial(j) / sp.rf(b, j + 1)
    return sp.simplify(total)


def pair_block(delta, P: int, Q: int) -> dict:
    pairs = []
    for p in range(P + 1):
        for q in range(Q + 1):
            u, v = (p, q), (P - p, Q - q)
            if u <= v:
                pairs.append((u, v))
    # <0|phi_+^2|u,v> = (1-z)^Delta/(2pi) * pair_wave.
    pair_wave = [sp.expand(2 / sp.sqrt(1 + int(u == v)) *
                           mode(*u, delta) * mode(*v, delta)) for u, v in pairs]
    matrix = sp.Matrix([[beta_moment(a * b, 2 * delta - 1) / 16
                         for b in pair_wave] for a in pair_wave])
    actual = sp.factor(matrix.charpoly(X).as_expr())
    eigs = [1 / (8 * (2 * delta + 2 * n - 1)) for n in range(min(P, Q) + 1)]
    expected = X ** (len(pairs) - len(eigs)) * sp.prod(X - e for e in eigs)
    record(f"direct_pair_block_D={delta}_P={P}_Q={Q}", actual - expected)
    return {
        "Delta": str(delta), "P": P, "Q": Q, "dimension": len(pairs),
        "basis_unordered_pairs": pairs,
        "pi_times_energy_coefficient_matrix": [[str(x) for x in row] for row in matrix.tolist()],
        "characteristic_polynomial": str(actual),
        "nonzero_eigenvalues": [str(x) for x in eigs],
        "zero_multiplicity": len(pairs) - len(eigs),
    }


def raw_jacobi(n: int, ell: int, delta: int):
    """Explicit finite binomial expansion, independent of sympy.jacobi."""
    return sp.Poly(sum(
        (-1) ** j * sp.binomial(n + ell, n - j) *
        sp.binomial(n + delta - 1, j) * W ** (2 * j) *
        (1 - W * W) ** (n - j) for j in range(n + 1)), W)


def raw_mode(p: int, q: int, delta: int):
    n, ell = min(p, q), abs(p - q)
    return sp.Poly((-1) ** n * W ** ell, W) * raw_jacobi(n, ell, delta)


def main(output: Path) -> None:
    symbolic_coincidences = {}
    for k, ell in [(0, 0), (1, 1), (2, 0), (0, 2), (2, 2), (3, 1)]:
        coincidence = sp.simplify(sum(
            cg(k, p, D) * cg(ell, q, D) * mode(p, q, D) * mode(k - p, ell - q, D)
            for p in range(k + 1) for q in range(ell + 1)))
        expected = (-1) ** k * (1 - W * W) ** k if k == ell else sp.S.Zero
        record(f"symbolic_coincidence_{k}_{ell}", coincidence - expected)
        symbolic_coincidences[f"{k},{ell}"] = str(sp.factor(coincidence))

    radial_n1 = sp.integrate((1 - Z) ** (2 * D), (Z, 0, 1)) / (8 * sp.pi)
    record("symbolic_n1_absolute_energy_coefficient", radial_n1 - 1 / (8 * sp.pi * (2 * D + 1)))

    deltas = [sp.Rational(3, 2), sp.Integer(2), sp.Rational(7, 3)]
    for delta in deltas:
        for p, q in itertools.product(range(4), repeat=2):
            record(f"KG_norm_D={delta}_p={p}_q={q}",
                   (delta + p + q) * beta_moment(mode(p, q, delta) ** 2, delta) - 1)

    blocks = [pair_block(delta, P, Q) for delta in deltas
              for P, Q in [(0, 0), (1, 1), (2, 0), (2, 2), (3, 1), (3, 3)]]

    resonance_count = 0
    children = list(itertools.product(range(3), repeat=2))
    for delta in [2, 3, 4]:
        for triple in itertools.combinations_with_replacement(children, 3):
            incoming = (delta + sum(x[0] for x in triple),
                        delta + sum(x[1] for x in triple))
            integrand = raw_mode(*incoming, delta)
            for child in triple:
                integrand *= raw_mode(*child, delta)
            integral = beta_moment(integrand.as_expr(), 2 * delta - 1)
            record(f"resonant_1_to_3_D={delta}_A={incoming}_children={triple}", integral)
            resonance_count += 1
    # A negative control: a nonresonant ground-to-three-ground spatial overlap is nonzero.
    record("nonresonant_ground_overlap_negative_control", beta_moment(sp.S.One, 3) - sp.Rational(1, 3))

    d, a, k = sp.symbols("d a k")
    casimir = lambda j: (d + j) * (d + j - 1)
    slope = -a / (2 * (2 * d + 1))
    defect = lambda j: -a - slope * (casimir(j) - casimir(0))
    v, w = defect(4), defect(6)
    Dstar = 15 * (2 * d + 7) * (d + 5) * v + (2 * d + 3) * (d + 2) * w
    epsilon = 27 * v * w * (d + 3) * (d + 4) * (2 * d + 9) / (2 * (2 * d + 5) * Dstar)
    record("UN03_defect_general_k_ge_2", defect(k) - a * (k - 2) * (k + 2 * d + 1) / (2 * (2 * d + 1)))
    record("UN03_r4", v - a * (2 * d + 5) / (2 * d + 1))
    record("UN03_r6", w - 2 * a * (2 * d + 7) / (2 * d + 1))
    record("UN04_Dstar", Dstar - a * (2 * d + 7) * (2 * d + 9) * (17 * d + 43) / (2 * d + 1))
    record("UN04_epsilon", epsilon - 27 * a * (d + 3) * (d + 4) / ((2 * d + 1) * (17 * d + 43)))

    result = {
        "scope": "Fresh independent first-order two-particle physics review; conditional UN03/04 substitution only",
        "normalization": "S_int=-lambda/4! integral sqrt(-g) phi^4; KG-normalized modes; [a,a†]=1; AdS-invariant free-vacuum Wick ordering",
        "matrix_units": "pi/lambda times the physical first-order energy shift",
        "script_sha256": hashlib.sha256(Path(__file__).read_bytes()).hexdigest(),
        "python_version": platform.python_version(), "sympy_version": sp.__version__,
        "all_passed": all(x["passed"] for x in CHECKS), "check_count": len(CHECKS),
        "symbolic_coincidences": symbolic_coincidences,
        "n1_energy_coefficient": str(radial_n1),
        "blocks": blocks, "resonance_count": resonance_count,
        "UN_substitution": {"d": "Delta", "a": "1/[8*pi*(2*d-1)]", "s": str(slope),
                            "r4": str(sp.factor(v)), "r6": str(sp.factor(w)),
                            "epsilon": str(sp.factor(epsilon))},
        "checks": CHECKS,
    }
    output.parent.mkdir(parents=True, exist_ok=True)
    output.write_text(json.dumps(result, indent=2, ensure_ascii=False) + "\n", encoding="utf-8")
    print(json.dumps({"all_passed": result["all_passed"], "check_count": len(CHECKS),
                      "resonance_count": resonance_count, "output": str(output)}, indent=2))


if __name__ == "__main__":
    parser = argparse.ArgumentParser()
    parser.add_argument("--output", type=Path, required=True)
    args = parser.parse_args()
    main(args.output.resolve())
