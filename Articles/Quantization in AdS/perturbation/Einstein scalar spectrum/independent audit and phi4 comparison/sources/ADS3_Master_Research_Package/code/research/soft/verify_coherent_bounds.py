#!/usr/bin/env python3
"""Exact audits supporting the exponential soft-spectrum theorem.

This program does not diagonalize a floating-point Hamiltonian.  It checks
the auxiliary one-slot rotation identity, a rational Chernoff certificate
for an actual coherent tensor, and all-channel symbolic Einstein weight
bounds.  The all-degree theorem is proved in EXPONENTIAL_SOFT_SPECTRUM.md;
these are finite and symbolic independent checks of its delicate interfaces.
"""

from __future__ import annotations

import argparse
from fractions import Fraction
from hashlib import sha256
import json
from math import comb
import os
from pathlib import Path
import sys
import time

os.environ["PYTHONDONTWRITEBYTECODE"] = "1"
os.environ["OPENBLAS_NUM_THREADS"] = "1"
sys.dont_write_bytecode = True

import sympy as s

HERE = Path(__file__).resolve().parent


def qstr(value: Fraction) -> str:
    return str(value.numerator) if value.denominator == 1 else str(value)


def symbolic_pair_weights() -> dict:
    # These expressions are entered directly from the Einstein two-body
    # formula, not imported from an earlier verification implementation.
    d, n, x, m = s.symbols("d n x m")
    h = d + n
    c = h * (h - 1)
    mu = d * (d - 2)
    u = 4 * mu - 8 * c
    spin_two = ((n + 1) * (n + 2) * (2 * d + n - 1) * (2 * d + n)
                / ((2 * h - 1) * (2 * h + 1) * (2 * h + 3)))
    spin_zero = s.factor(-u / (2 * h - 1) - 2 * (c + mu) ** 2
                         / ((2 * h - 3) * (2 * h - 1) * (2 * h + 1)))
    numerator, denominator = s.fraction(spin_zero)
    positive_poly = s.Poly(s.expand(numerator.subs({d: 1 + x, n: 1 + m})), x, m)
    remainder = s.Poly(positive_poly.as_expr() - 30 * (m + 1) ** 4, x, m)
    assert all(a > 0 for a in positive_poly.coeffs())
    assert all(a >= 0 for a in remainder.coeffs())
    assert s.factor(denominator - (2 * h - 3) * (2 * h - 1) * (2 * h + 1)) == 0
    limits = [s.limit(spin_two / n, n, s.oo), s.limit(spin_zero / n, n, s.oo)]
    assert limits == [s.Rational(1, 8), s.Rational(15, 4)]

    # Three denominator upper bounds used in the all-n spin-zero lower bound.
    denominator_differences = [s.expand(((2 * d + 3) * n - (2 * h + a))
                                       .subs({d: 1 + x, n: 1 + m}))
                              for a in (-3, -1, 1)]
    assert all(all(co >= 0 for co in s.Poly(p, x, m).coeffs())
               for p in denominator_differences)

    # Spin-two lower bound: numerator >= (n+1)^4 and each denominator
    # factor <= (2d+3)(n+1), for d>1 and n>=0.
    numer_two = s.fraction(s.factor(spin_two))[0]
    spin_two_remainder = s.Poly(s.expand((numer_two - (n + 1) ** 4)
                                        .subs(d, 1 + x)), x, n)
    assert all(co >= 0 for co in spin_two_remainder.coeffs())
    denom_two_differences = [s.expand(((2 * d + 3) * (n + 1) - (2 * h + a))
                                     .subs(d, 1 + x)) for a in (-1, 1, 3)]
    assert all(all(co >= 0 for co in s.Poly(p, x, n).coeffs())
               for p in denom_two_differences)

    # Finite spot checks of both universal bounds, including the removable
    # diagonal n=0 case and the opposite spin-two edge.
    rows = []
    for value_d in [s.Rational(1001, 1000), s.Rational(3, 2), s.Integer(2), s.Rational(7, 3)]:
        for Q in (0, 1, 4, 12):
            tested = 0
            for ell in range(Q + 1):
                for k in range(ell + 3):
                    if (k + ell) % 2:
                        continue
                    nn, spin = min(k, ell), abs(k - ell)
                    hh = value_d + nn
                    cc = hh * (hh - 1)
                    c_right = (value_d + ell) * (value_d + ell - 1)
                    casimir_difference = 8 * (c_right - cc)
                    if spin >= 4:
                        aa = casimir_difference
                    elif spin == 2:
                        aa = spin_two.subs({d: value_d, n: nn}) + casimir_difference
                    elif nn == 0:
                        aa = (2 * value_d ** 2 * (2 * value_d + 5)
                              / ((2 * value_d - 1) * (2 * value_d + 1)))
                    else:
                        aa = spin_zero.subs({d: value_d, n: nn})
                    aa = s.cancel(aa)
                    assert aa >= (2 * value_d + 3) ** -3
                    assert aa <= 20 * (value_d + Q) ** 2
                    tested += 1
            rows.append({"Delta": str(value_d), "Q": Q, "tested_bad_even_channels": tested})
    return {
        "status": "passed",
        "independent_formula_entry": True,
        "spin_two_linear_limit": str(limits[0]),
        "spin_zero_linear_limit": str(limits[1]),
        "spin_zero_numerator_at_d_1_x_n_1_m": str(positive_poly.as_expr()),
        "spin_zero_numerator_minus_30_n4": str(remainder.as_expr()),
        "positive_polynomial_coefficients": [str(c) for c in positive_poly.coeffs()],
        "symbolically_certified_lower_bound": "(2*Delta+3)^(-3)",
        "proved_upper_bound": "20*(Delta+Q)^2; see proof note for elementary inequalities",
        "finite_checks": rows,
    }


def rational_rotation(N: int, i: int, j: int, cos: s.Rational, sin: s.Rational) -> s.Matrix:
    assert cos * cos + sin * sin == 1
    R = s.eye(N)
    R[i, i] = R[j, j] = cos
    R[i, j], R[j, i] = -sin, sin
    return R


def coherent_slot_check(N: int) -> dict:
    rotation = s.eye(N)
    for i in range(N):
        for j in range(i + 1, N):
            rotation = rational_rotation(N, i, j, s.Rational(3, 5), s.Rational(4, 5)) * rotation
    u, v = rotation[:, 0], rotation[:, 1]
    xi = (u + s.I * v) / s.sqrt(2)
    assert (xi.T * xi)[0].expand() == 0
    assert s.simplify((s.conjugate(xi.T) * xi)[0]) == 1
    rows = []
    plucker_square_sum = s.S.Zero
    for i in range(N):
        for j in range(i + 1, N):
            generator = s.zeros(N)
            generator[i, j], generator[j, i] = -s.I, s.I
            assert generator ** 3 == generator
            B = u[i] * v[j] - u[j] * v[i]
            mean = s.simplify((s.conjugate(xi.T) * generator * xi)[0])
            assert mean == B
            probs = []
            projectors = [(generator ** 2 - generator) / 2,
                          s.eye(N) - generator ** 2,
                          (generator ** 2 + generator) / 2]
            for eigenvalue, projector in zip((-1, 0, 1), projectors):
                assert projector ** 2 == projector
                assert generator * projector == eigenvalue * projector
                p = s.simplify((s.conjugate(xi.T) * projector * xi)[0])
                assert p >= 0
                probs.append(p)
            assert sum(probs) == 1
            assert probs[2] - probs[0] == B
            plucker_square_sum += B ** 2
            if N == 3:
                assert probs == [(1 - B) ** 2 / 4, (1 - B ** 2) / 2, (1 + B) ** 2 / 4]
            rows.append({"pair": [i, j], "B": str(B), "probabilities_minus_zero_plus": list(map(str, probs))})
    assert plucker_square_sum == 1
    return {"N": N, "status": "passed", "u": list(map(str, u)), "v": list(map(str, v)), "pairs": rows}


def binomial_integer_weights(P: int, B: Fraction) -> tuple[list[int], int]:
    # Spin-2P coherent measurement J=X-2P, X~Binomial(4P,(1+B)/2).
    probability = (1 + B) / 2
    a, b = probability.numerator, probability.denominator
    trials = 4 * P
    return [comb(trials, j) * a ** j * (b - a) ** (trials - j)
            for j in range(trials + 1)], b ** trials


def exact_bad_probability(P: int, Q: int, B: Fraction, C: Fraction) -> Fraction:
    left, dl = binomial_integer_weights(P, B)
    right, dr = binomial_integer_weights(Q, C)
    # Right absolute-value tail sums make this exact computation linear in
    # P+Q after construction of the two binomial distributions.
    absolute_right = [0] * (2 * Q + 1)
    for j, weight in enumerate(right):
        absolute_right[abs(j - 2 * Q)] += weight
    tail = [0] * (2 * Q + 2)
    for j in range(2 * Q, -1, -1):
        tail[j] = tail[j + 1] + absolute_right[j]
    numerator = 0
    for j, weight in enumerate(left):
        threshold = abs(j - 2 * P) - 4
        numerator += weight * (tail[0] if threshold <= 0 else
                               tail[threshold] if threshold <= 2 * Q else 0)
    return Fraction(numerator, dl * dr)


def slot_mgf(B: Fraction, z: Fraction) -> Fraction:
    return (1 + B) ** 2 * z / 4 + (1 - B * B) / 2 + (1 - B) ** 2 / (4 * z)


def coherent_rational_tails(degrees: list[int]) -> dict:
    # Unit normals for N=3.  Every pair lies strictly in the good chamber
    # at Q/P=1/2; the minimum absolute Pluecker margin is exactly 1/6.
    left_normal = [Fraction(2, 3), Fraction(2, 3), Fraction(1, 3)]
    right_normal = [Fraction(1), Fraction(0), Fraction(0)]
    assert sum(x * x for x in left_normal) == sum(x * x for x in right_normal) == 1
    margins = [abs(a) - abs(b) / 2 for a, b in zip(left_normal, right_normal)]
    assert min(margins) == Fraction(1, 6)
    z = Fraction(4, 3)
    rows = []
    for axis, (B, C) in enumerate(zip(left_normal, right_normal)):
        # Bad support implies JL-JR<=4 or JL+JR<=4.  Applying Markov
        # to z^(-JL +/- JR) gives this exact rational exponential bound.
        rho_plus = slot_mgf(B, 1 / z) ** 2 * slot_mgf(C, z)
        rho_minus = slot_mgf(B, 1 / z) ** 2 * slot_mgf(C, 1 / z)
        assert max(rho_plus, rho_minus) < 1
        for P in degrees:
            assert P > 0 and P % 2 == 0
            Q = P // 2
            probability = exact_bad_probability(P, Q, B, C)
            bound = z ** 4 * (rho_plus ** P + rho_minus ** P)
            assert probability <= bound
            # Record the full exact rational certificate.  Decimals are
            # deliberately unnecessary to determine pass/fail.
            rows.append({"P": P, "Q": Q, "axis": axis,
                         "left_B": qstr(B), "right_B": qstr(C),
                         "exact_bad_probability": qstr(probability),
                         "rational_chernoff_bound": qstr(bound),
                         "probability_less_than_bound": True})
    return {
        "status": "passed", "N": 3, "ratio": "1/2", "margin": "1/6",
        "left_normal": list(map(qstr, left_normal)), "right_normal": list(map(qstr, right_normal)),
        "chernoff_z": qstr(z),
        "exact_exponential_bases": [
            {"axis": i,
             "rho_plus": qstr(slot_mgf(B, 1 / z) ** 2 * slot_mgf(C, z)),
             "rho_minus": qstr(slot_mgf(B, 1 / z) ** 2 * slot_mgf(C, 1 / z))}
            for i, (B, C) in enumerate(zip(left_normal, right_normal))],
        "scope": "Exact coherent-vector bad-support probabilities; not a finite spectral count.",
        "checks": rows,
    }


def symbolic_hoeffding_and_volume_constants() -> dict:
    P, delta = s.symbols("P delta", positive=True)
    assert s.simplify((P * delta / 2) ** 2 / (2 * 2 * P) - P * delta ** 2 / 16) == 0
    chosen_delta = 1 / (6 * s.pi ** 2)
    exponent = s.simplify(chosen_delta ** 2 / 32)
    full_fraction = s.simplify(1 / s.pi ** 2 - 3 * chosen_delta)
    positive_fraction = s.simplify(full_fraction / (1 - s.Rational(1, 4)))
    assert exponent == 1 / (1152 * s.pi ** 4)
    assert positive_fraction == 2 / (3 * s.pi ** 2)
    return {"status": "passed", "single_chirality_hoeffding_exponent": "P*delta^2/16",
            "theorem_after_polynomial_absorption": "P*delta^2/32",
            "N3_r_half_explicit_exponent": str(exponent),
            "N3_r_half_positive_fraction": str(positive_fraction)}


def main() -> None:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--degrees", default="16,32,64,128", help="Even P values for exact coherent probabilities.")
    parser.add_argument("--output", type=Path, default=HERE / "coherent_bounds_verification.json")
    args = parser.parse_args()
    start = time.perf_counter()
    degrees = [int(value) for value in args.degrees.split(",") if value]
    report = {
        "schema": "ADS3-soft-coherent-symbolic-v1",
        "status": "passed",
        "method": "Exact rational arithmetic and symbolic polynomial identities; no numerical spectral inference.",
        "source_sha256": sha256(Path(__file__).read_bytes()).hexdigest(),
        "pair_weight_audit": symbolic_pair_weights(),
        "coherent_slot_audits": [coherent_slot_check(N) for N in (3, 4, 5)],
        "exact_coherent_tail_audit": coherent_rational_tails(degrees),
        "constant_audit": symbolic_hoeffding_and_volume_constants(),
        "elapsed_seconds": round(time.perf_counter() - start, 6),
    }
    args.output.parent.mkdir(parents=True, exist_ok=True)
    args.output.write_text(json.dumps(report, indent=2) + "\n")
    print(json.dumps({"status": report["status"], "output": str(args.output),
                      "coherent_dimensions": [3, 4, 5], "exact_tails": 3 * len(degrees),
                      "elapsed_seconds": report["elapsed_seconds"]}))


if __name__ == "__main__":
    main()
