#!/usr/bin/env python3
"""Archived exact finite-cutoff kill test for the reduced Brown--Henneaux H_0.

This script reuses the signed-mode CPS forms and the direct-coordinate radial
Moser map from ``cps_one_loop_next_order_checks.py``.  It does not insert a
quantum central charge.  The global-AdS stabilizer generator acts exactly by

    X_0 z_k = i k z_k,

because left multiplication by exp(s xi_0) is converted into conjugation by
the vacuum stabilizer on the fixed-generator exponential chart.
"""

from __future__ import annotations

import argparse

import sympy as sp

from cps_one_loop_next_order_checks import CutoffCalculation


I = sp.I


def is_zero_expression(expression: sp.Expr) -> bool:
    return sp.expand(expression) == 0


def is_zero_matrix(matrix: sp.Matrix) -> bool:
    return all(is_zero_expression(entry) for entry in matrix)


def homogeneous_hamiltonian(
    calculation: CutoffCalculation,
    omega: sp.Matrix,
    x0: sp.Matrix,
    radial_weight: int,
) -> tuple[sp.Expr, sp.Matrix]:
    """Integrate dH=-i_X Omega by the radial homotopy formula."""
    variables = [calculation.z[mode] for mode in calculation.modes]
    gradient = -omega.T * x0
    hamiltonian = sp.expand(
        sum(variable * gradient[index] for index, variable in enumerate(variables))
        / radial_weight
    )
    residual = sp.Matrix(
        [
            sp.expand(sp.diff(hamiltonian, variable) - gradient[index])
            for index, variable in enumerate(variables)
        ]
    )
    return hamiltonian, residual


def equivariance_residual(
    calculation: CutoffCalculation, vector: sp.Matrix
) -> sp.Matrix:
    """Check [X_0,Y]=0 componentwise for X_0 z_k=i k z_k."""
    variables = [calculation.z[mode] for mode in calculation.modes]
    return sp.Matrix(
        [
            sp.expand(
                sum(
                    I * mode * calculation.z[mode] * sp.diff(vector[row], variable)
                    for mode, variable in zip(calculation.modes, variables)
                )
                - I * target * vector[row]
            )
            for row, target in enumerate(calculation.modes)
        ]
    )


def run(cutoff: int) -> dict[str, object]:
    calculation = CutoffCalculation(cutoff)
    data = calculation.darboux_data()
    variables = [calculation.z[mode] for mode in calculation.modes]

    x0 = sp.Matrix(
        [I * mode * calculation.z[mode] for mode in calculation.modes]
    )

    h00, h00_residual = homogeneous_hamiltonian(
        calculation, data["omega0"], x0, 2
    )
    h01, h01_residual = homogeneous_hamiltonian(
        calculation, data["omega1"], x0, 3
    )
    h02, h02_residual = homogeneous_hamiltonian(
        calculation, data["omega2"], x0, 4
    )

    y1 = data["y1"]
    y2 = data["y2"]
    grad00 = sp.Matrix([sp.diff(h00, variable) for variable in variables])
    grad01 = sp.Matrix([sp.diff(h01, variable) for variable in variables])
    hess00 = sp.hessian(h00, variables)

    h0d_cubic = sp.expand(h01 + (grad00.T * y1)[0])
    h0d_quartic = sp.expand(
        h02
        + (grad01.T * y1)[0]
        + (grad00.T * y2)[0]
        + sp.Rational(1, 2) * (y1.T * hess00 * y1)[0]
    )

    expected_quadratic = sp.expand(
        sum(
            mode
            * (2 * sp.pi * mode * (mode**2 - 1))
            * calculation.z[-mode]
            * calculation.z[mode]
            for mode in range(2, cutoff + 1)
        )
    )

    expected_cubic = sp.Integer(0)
    for first in calculation.modes:
        for second in calculation.modes:
            third = -first - second
            if third not in calculation.z:
                continue
            expected_cubic += (
                -I
                * sp.Rational(1, 6)
                * calculation.z[first]
                * calculation.z[second]
                * calculation.z[third]
                * (2 * sp.pi * first * (first**2 - 1))
                * third
                * (second - third)
            )
    expected_cubic = sp.expand(expected_cubic)

    return {
        "cutoff": cutoff,
        "H00_matches_sum_N_N_aDag_a": is_zero_expression(h00 - expected_quadratic),
        "H00_hamiltonian_residual_zero": is_zero_matrix(h00_residual),
        "H01_matches_existing_p0_charge": is_zero_expression(
            h01 - expected_cubic
        ),
        "H01_hamiltonian_residual_zero": is_zero_matrix(h01_residual),
        "H02_hamiltonian_residual_zero": is_zero_matrix(h02_residual),
        "Y1_U1_equivariant": is_zero_matrix(
            equivariance_residual(calculation, y1)
        ),
        "Y2_U1_equivariant": is_zero_matrix(
            equivariance_residual(calculation, y2)
        ),
        "H0_D_cubic_zero": is_zero_expression(h0d_cubic),
        "H0_D_quartic_zero": is_zero_expression(h0d_quartic),
        "first_darboux_residual_zero": is_zero_matrix(data["first_residual"]),
        "second_darboux_residual_zero": is_zero_matrix(data["second_residual"]),
    }


def main() -> None:
    parser = argparse.ArgumentParser()
    parser.add_argument("--cutoffs", type=int, nargs="+", default=[4, 5, 6, 7, 8])
    args = parser.parse_args()
    for cutoff in args.cutoffs:
        print(run(cutoff))


if __name__ == "__main__":
    main()
