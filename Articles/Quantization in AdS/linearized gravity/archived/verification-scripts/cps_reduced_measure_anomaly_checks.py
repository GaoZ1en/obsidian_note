#!/usr/bin/env python3
"""Archived checks for the reduced CPS measure and regulated Virasoro divergence.

This script imports the signed-mode Brown--Henneaux formulas already used by
``cps_one_loop_next_order_checks.py``.  It does not insert a quantum central
charge.  The formal heat-kernel variable is q = exp(-epsilon).
"""

from __future__ import annotations

import argparse

import sympy as sp

from cps_one_loop_next_order_checks import CutoffCalculation


def is_zero(expression: sp.Expr) -> bool:
    return sp.cancel(sp.expand(expression)) == 0


def weighted_trace(matrix: sp.Matrix, weights: list[sp.Expr]) -> sp.Expr:
    return sp.expand(sum(weights[index] * matrix[index, index]
                         for index in range(matrix.rows)))


def phase_one(cutoff: int, q: sp.Symbol) -> dict[str, sp.Expr | bool]:
    calculation = CutoffCalculation(cutoff)
    data = calculation.darboux_data()
    variables = [calculation.z[mode] for mode in calculation.modes]
    omega0 = data["omega0"]
    omega1 = data["omega1"]
    omega2 = data["omega2"]
    y1 = data["y1"]
    y2 = data["y2"]
    jacobian1 = y1.jacobian(variables)
    jacobian2 = y2.jacobian(variables)
    directional_omega1 = omega1.applyfunc(
        lambda expression: sp.expand(sum(
            y1[index] * sp.diff(expression, variable)
            for index, variable in enumerate(variables)
        ))
    )
    omega2_substituted = omega2 + directional_omega1
    omega0_inverse = omega0.inv()
    p1 = omega0_inverse * omega1
    p2 = omega0_inverse * omega2_substituted

    # Coefficients of log Pf(Omega(a(b))) and log det(da/db).
    pfaffian_log_1 = sp.Rational(1, 2) * sp.trace(p1)
    pfaffian_log_2 = sp.Rational(1, 2) * sp.trace(
        p2 - sp.Rational(1, 2) * p1 * p1
    )
    jacobian_log_1 = sp.trace(jacobian1)
    jacobian_log_2 = sp.trace(
        jacobian2 - sp.Rational(1, 2) * jacobian1 * jacobian1
    )

    weights = [q ** abs(mode) for mode in calculation.modes]
    regulated_pfaffian_log_1 = sp.Rational(1, 2) * weighted_trace(p1, weights)
    regulated_pfaffian_log_2 = sp.Rational(1, 2) * weighted_trace(
        p2 - sp.Rational(1, 2) * p1 * p1, weights
    )
    regulated_jacobian_log_1 = weighted_trace(jacobian1, weights)
    regulated_jacobian_log_2 = weighted_trace(
        jacobian2 - sp.Rational(1, 2) * jacobian1 * jacobian1, weights
    )

    unregulated_1 = sp.simplify(pfaffian_log_1 + jacobian_log_1)
    unregulated_2 = sp.simplify(pfaffian_log_2 + jacobian_log_2)
    regulated_1 = sp.factor(
        regulated_pfaffian_log_1 + regulated_jacobian_log_1
    )
    regulated_2 = sp.factor(
        regulated_pfaffian_log_2 + regulated_jacobian_log_2
    )
    return {
        "darboux_order_1": all(is_zero(entry) for entry in data["first_residual"]),
        "darboux_order_2": all(is_zero(entry) for entry in data["second_residual"]),
        "log_measure_order_1": unregulated_1,
        "log_measure_order_2": unregulated_2,
        "regulated_log_measure_order_1": regulated_1,
        "regulated_log_measure_order_2": regulated_2,
        "regulated_limit_order_1": sp.simplify(regulated_1.subs(q, 1)),
        "regulated_limit_order_2": sp.simplify(regulated_2.subs(q, 1)),
    }


def darboux_symmetry_coefficients(calculation: CutoffCalculation, data: dict,
                                  mode: int) -> tuple[sp.Matrix, sp.Matrix, sp.Matrix]:
    """Transform X_mode to the direct Darboux coordinates through O(kappa)."""
    leading, zeroth, first = calculation.symmetry_coefficients(mode)
    variables = [calculation.z[target] for target in calculation.modes]
    y1 = data["y1"]
    y2 = data["y2"]
    jacobian1 = y1.jacobian(variables)
    jacobian2 = y2.jacobian(variables)
    zeroth_darboux = zeroth - jacobian1 * leading
    substitute_zeroth = zeroth.jacobian(variables) * y1
    first_darboux = (
        first
        + substitute_zeroth
        - jacobian1 * zeroth
        + (jacobian1 * jacobian1 - jacobian2) * leading
    ).applyfunc(sp.expand)
    return leading, zeroth_darboux.applyfunc(sp.expand), first_darboux


def regulated_divergence(calculation: CutoffCalculation, data: dict,
                         mode: int, q: sp.Symbol) -> sp.Expr:
    _, _, first = darboux_symmetry_coefficients(calculation, data, mode)
    return sp.factor(sum(
        q ** abs(target) * sp.diff(first[index], calculation.z[target])
        for index, target in enumerate(calculation.modes)
    ))


def phase_three(cutoff: int, q: sp.Symbol) -> dict[str, sp.Expr | bool]:
    calculation = CutoffCalculation(cutoff)
    data = calculation.darboux_data()
    divergences = {
        mode: regulated_divergence(calculation, data, mode, q)
        for mode in (-5, -3, -2, 2, 3, 5)
        if abs(mode) <= cutoff
    }
    diagonal_cocycles: dict[int, sp.Expr] = {}
    for mode in (2, 3, 5):
        if mode > cutoff:
            continue
        diagonal_cocycles[mode] = sp.factor(
            sp.diff(divergences[-mode], calculation.z[mode])
            - sp.diff(divergences[mode], calculation.z[-mode])
        )

    mixed_2_minus_3 = sp.Integer(0)
    if cutoff >= 3:
        mixed_2_minus_3 = sp.factor(
            sp.diff(divergences[-3], calculation.z[2])
            - sp.diff(divergences[2], calculation.z[-3])
        )
    high_mode_residual = None
    if cutoff >= 5:
        high_mode_residual = sp.factor(
            8 * diagonal_cocycles[2]
            - 7 * diagonal_cocycles[3]
            + diagonal_cocycles[5]
        )
    return {
        "divergences": divergences,
        "diagonal_cocycles": diagonal_cocycles,
        "mixed_2_minus_3": mixed_2_minus_3,
        "high_mode_residual": high_mode_residual,
        "epsilon_zero_cocycles": {
            mode: sp.simplify(value.subs(q, 1))
            for mode, value in diagonal_cocycles.items()
        },
    }


def main() -> None:
    parser = argparse.ArgumentParser()
    parser.add_argument("--cutoffs", type=int, nargs="+", default=[4, 5, 6])
    parser.add_argument(
        "--summary", action="store_true",
        help="print only the exact pass/fail and cocycle residuals",
    )
    arguments = parser.parse_args()
    q = sp.Symbol("q", positive=True)
    for cutoff in arguments.cutoffs:
        phase_one_result = phase_one(cutoff, q)
        phase_three_result = phase_three(cutoff, q)
        print(f"Nmax={cutoff}")
        if arguments.summary:
            print("Phase I:", {
                key: phase_one_result[key]
                for key in (
                    "darboux_order_1", "darboux_order_2",
                    "log_measure_order_1", "log_measure_order_2",
                    "regulated_limit_order_1", "regulated_limit_order_2",
                )
            })
            print("Phase III:", {
                "diagonal_cocycles": phase_three_result["diagonal_cocycles"],
                "mixed_2_minus_3": phase_three_result["mixed_2_minus_3"],
                "high_mode_residual": phase_three_result["high_mode_residual"],
            })
        else:
            print("Phase I:", phase_one_result)
            print("Phase III:", phase_three_result)


if __name__ == "__main__":
    main()
