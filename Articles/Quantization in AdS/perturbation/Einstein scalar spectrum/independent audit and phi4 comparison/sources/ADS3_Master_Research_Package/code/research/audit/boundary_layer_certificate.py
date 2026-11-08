#!/usr/bin/env python3
"""Independent exact constants/count audit of the N=3 joint boundary theorem.

No spectrum evaluator is imported and no microscopic eigenvalues are computed.
The inequalities for all indices are proved in N3_JOINT_BOUNDARY_LAYER.md;
this script independently checks the finite-group data and algebraic constants.
"""
from __future__ import annotations

import argparse
import itertools
import json
from fractions import Fraction
from functools import lru_cache
from pathlib import Path


def permutation_sign(p):
    return (-1) ** sum(p[i] > p[j] for i in range(3) for j in range(i + 1, 3))


def signed_rotation_data():
    rotations = []
    for p in itertools.permutations(range(3)):
        for s in itertools.product((-1, 1), repeat=3):
            determinant = permutation_sign(p) * s[0] * s[1] * s[2]
            trace_g = sum(s[i] for i in range(3) if p[i] == i)
            trace_r = determinant * trace_g
            central = p == (0, 1, 2) and len(set(s)) == 1
            sin_squared_half_angle = Fraction(3 - trace_r, 4)
            assert (trace_r == 3) == central
            if not central:
                assert sin_squared_half_angle >= Fraction(1, 2)
            rotations.append((central, trace_r, sin_squared_half_angle))
    counts = {str(t): sum(t == row[1] for row in rotations) for t in (-1, 0, 1, 3)}
    central_product_count = 0
    product_group_count = 0
    for p in itertools.permutations(range(3)):
        for left in itertools.product((-1, 1), repeat=3):
            for right in itertools.product((-1, 1), repeat=3):
                product_group_count += 1
                central_product_count += int(
                    p == (0, 1, 2) and len(set(left)) == len(set(right)) == 1
                )
    assert product_group_count == 384
    assert central_product_count == 4
    centered_trace_constant = Fraction(380, 384) * 150
    assert centered_trace_constant < 160
    return {
        "signed_permutations": len(rotations),
        "corrected_SO3_trace_counts": counts,
        "smallest_noncentral_sin_squared_half_angle": "1/2",
        "two_chiral_Bose_sign_group_order": product_group_count,
        "central_elements_acting_as_identity": central_product_count,
        "centered_trace_bound_before_rounding": str(centered_trace_constant),
        "rounded_trace_constant": 160,
    }


def primary_dimension(p, q):
    eps = lambda n: int(n % 2 == 0)
    cyc = lambda n: (1, -1, 0)[n % 3]
    numerator = (p + 1) * (q + 1) + 3 * eps(p) * eps(q) + 2 * cyc(p) * cyc(q)
    assert numerator % 6 == 0
    return numerator // 6


def kernel_count(p, q):
    margin = p - q - 12
    return sum((margin - 3 * b) // 2 + 1 for b in range(margin // 3 + 1))


@lru_cache(None)
def binary_primary_coefficient(n):
    """Coefficient of x^n in 1/((1-x^2)(1-x^3))."""
    return sum((n - 3 * b) % 2 == 0 for b in range(n // 3 + 1))


def general_hilbert_kernel_count(p, q):
    """Full two-variable Hilbert coefficient, before the r>=1/2 reduction."""
    return sum(binary_primary_coefficient(p - 12 - q - j) for j in range(q + 1))


def counts_certificate(cutoff):
    checked = 0
    largest_ratio = Fraction(0)
    largest_example = None
    for p in range(1, cutoff + 1):
        for q in range(max(1, (p + 1) // 2), p + 1):
            dim = primary_dimension(p, q)
            assert 6 * dim >= p * q
            full_dim = (4 * p + 1) * (4 * q + 1)
            ratio = Fraction(full_dim, dim)
            assert ratio <= 150
            if ratio > largest_ratio:
                largest_ratio, largest_example = ratio, [p, q]
            kappa = kernel_count(p, q)
            assert kappa == general_hilbert_kernel_count(p, q)
            assert 12 * kappa <= (p - q) ** 2
            assert Fraction(kappa, dim) <= Fraction((p - q) ** 2, 2 * p * q)
            checked += 1
    return {
        "cutoff_P": cutoff,
        "all_Q_from_ceiling_P_over_2_to_P": True,
        "exact_cases_checked": checked,
        "dimension_lower_bound": "d_(P,Q) >= P*Q/6",
        "largest_observed_full_to_Bose_dimension_ratio": str(largest_ratio),
        "ratio_example_P_Q": largest_example,
        "exact_kernel_bound": "kappa/d <= (P-Q)^2/(2*P*Q)",
        "full_two_variable_Hilbert_coefficient_matches_reduced_count": True,
    }


def rational_constants():
    delta_per_mu = Fraction(1, 12)
    tau_per_mu = Fraction(1, 8)
    frame_error_per_mu = Fraction(160, 1280)
    retained_mu_fraction = 1 - 3 * delta_per_mu - frame_error_per_mu - tau_per_mu
    assert retained_mu_fraction == Fraction(1, 2)
    finite_exponent_per_P_mu2 = delta_per_mu ** 2 / 16
    asymptotic_exponent = finite_exponent_per_P_mu2 / 2
    finite_prefactor = Fraction(4 * 3, 1) / tau_per_mu
    assert finite_exponent_per_P_mu2 == Fraction(1, 2304)
    assert asymptotic_exponent == Fraction(1, 4608)
    assert finite_prefactor == 96
    mu_asymptotic_rational = Fraction(3, 2)
    count_asymptotic_rational = mu_asymptotic_rational / 6 / 2
    exponent_asymptotic_rational = mu_asymptotic_rational ** 2 * asymptotic_exponent
    assert count_asymptotic_rational == Fraction(1, 8)
    assert exponent_asymptotic_rational == Fraction(1, 2048)
    return {
        "retained_strictly_positive_count_fraction_of_mu_d": str(retained_mu_fraction),
        "finite_energy_prefactor_coefficient": str(finite_prefactor),
        "finite_energy_exponent_per_P_mu_squared": str(finite_exponent_per_P_mu2),
        "asymptotic_energy_exponent_per_P_mu_squared": str(asymptotic_exponent),
        "power_boundary_count_coefficient_without_c_beta_pi": str(count_asymptotic_rational),
        "power_boundary_exponent_coefficient_without_c_beta_pi": str(exponent_asymptotic_rational),
        "independent_micro_eigenvalue_calculations": 0,
        "claimed_range_beta": "0 < beta <= 1/4 (sufficient, not claimed optimal)",
    }


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--cutoff", type=int, default=160)
    parser.add_argument("--output", type=Path, default=Path(__file__).with_suffix(".json"))
    args = parser.parse_args()
    assert args.cutoff >= 1
    result = {
        "status": "passed",
        "scope": "exact independent finite constants and count audit; not a replacement for the uniform proof",
        "old_spectrum_modules_imported": False,
        "microscopic_eigenvalues_computed": False,
        "group": signed_rotation_data(),
        "counts": counts_certificate(args.cutoff),
        "constants": rational_constants(),
    }
    args.output.parent.mkdir(parents=True, exist_ok=True)
    args.output.write_text(json.dumps(result, indent=2, ensure_ascii=False) + "\n", encoding="utf-8")
    print(json.dumps(result, indent=2, ensure_ascii=False))


if __name__ == "__main__":
    main()
