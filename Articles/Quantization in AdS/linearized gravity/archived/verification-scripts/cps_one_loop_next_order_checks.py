#!/usr/bin/env python3
"""Archived exact finite-cutoff checks for the next-order Brown--Henneaux CPS note.

Run with, for example:

    sage -python cps_one_loop_next_order_checks.py --cutoff 8

The script uses SymPy from the local Sage runtime. It constructs the pulled-back
forms, the radial-homotopy coordinate map, the cubic Darboux charges, and the
Weyl-to-normal linear contractions without inserting a quantum central charge.
"""

from __future__ import annotations

import argparse
from functools import lru_cache

import sympy as sp


I = sp.I
PI = sp.pi


def d(mode: int) -> sp.Expr:
    """D_mode = 2 pi mode (mode^2 - 1), extended to signed modes."""
    return 2 * PI * mode * (mode * mode - 1)


def bracket_coefficient(left: int, right: int) -> sp.Expr:
    """Coefficient in [xi_left, xi_right] = coefficient xi_(left+right)."""
    return -I * (left - right)


class CutoffCalculation:
    def __init__(self, cutoff: int):
        if cutoff < 3:
            raise ValueError("cutoff must be at least 3")
        self.cutoff = cutoff
        self.modes = tuple(range(-cutoff, -1)) + tuple(range(2, cutoff + 1))
        self.position = {mode: index for index, mode in enumerate(self.modes)}
        self.z = {mode: sp.Symbol(f"z_{mode:+d}") for mode in self.modes}

    def base_pairing(self, left: int, right: int) -> sp.Expr:
        if left + right != 0:
            return sp.Integer(0)
        return I * d(left)

    @lru_cache(maxsize=None)
    def omega0_entry(self, left: int, right: int) -> sp.Expr:
        return self.base_pairing(left, right)

    @lru_cache(maxsize=None)
    def omega1_entry(self, left: int, right: int) -> sp.Expr:
        source = -left - right
        if source not in self.z:
            return sp.Integer(0)
        first = (
            bracket_coefficient(source, left)
            * self.base_pairing(source + left, right)
        )
        second = (
            bracket_coefficient(source, right)
            * self.base_pairing(left, source + right)
        )
        return sp.expand(-sp.Rational(1, 2) * self.z[source] * (first + second))

    @lru_cache(maxsize=None)
    def omega2_entry(self, left: int, right: int) -> sp.Expr:
        result = sp.Integer(0)
        for first_source in self.modes:
            second_source = -left - right - first_source
            if second_source not in self.z:
                continue

            nested_left = (
                bracket_coefficient(second_source, left)
                * bracket_coefficient(first_source, second_source + left)
                * self.base_pairing(first_source + second_source + left, right)
            )
            nested_right = (
                bracket_coefficient(second_source, right)
                * bracket_coefficient(first_source, second_source + right)
                * self.base_pairing(left, first_source + second_source + right)
            )
            split = (
                bracket_coefficient(first_source, left)
                * bracket_coefficient(second_source, right)
                * self.base_pairing(first_source + left, second_source + right)
            )
            result += self.z[first_source] * self.z[second_source] * (
                sp.Rational(1, 6) * nested_left
                + sp.Rational(1, 6) * nested_right
                + sp.Rational(1, 4) * split
            )
        return sp.expand(result)

    def matrix(self, entry) -> sp.Matrix:
        return sp.Matrix(
            [[entry(left, right) for right in self.modes] for left in self.modes]
        )

    def radial_primitive(self, form: sp.Matrix, weight: int) -> sp.Matrix:
        # (i_E Omega)_j = sum_i E^i Omega_(i,j).
        return sp.Matrix(
            [
                sp.expand(
                    sum(
                        self.z[self.modes[i]] * form[i, j]
                        for i in range(len(self.modes))
                    )
                    / weight
                )
                for j in range(len(self.modes))
            ]
        )

    def solve_vector(self, primitive: sp.Matrix) -> sp.Matrix:
        # i_Y Omega_0 = -alpha is equivalent to Omega_0 Y = alpha.
        answer = sp.zeros(len(self.modes), 1)
        for i, mode in enumerate(self.modes):
            opposite = self.position[-mode]
            answer[opposite] = sp.expand(primitive[i] / (I * d(mode)))
        return answer

    def darboux_data(self):
        omega0 = self.matrix(self.omega0_entry)
        omega1 = self.matrix(self.omega1_entry)
        omega2 = self.matrix(self.omega2_entry)

        alpha1 = self.radial_primitive(omega1, 3)
        y1 = self.solve_vector(alpha1)
        variables = [self.z[mode] for mode in self.modes]
        jacobian1 = y1.jacobian(variables)
        first_residual = (
            omega1 + jacobian1.T * omega0 + omega0 * jacobian1
        ).applyfunc(sp.simplify)

        directional_omega1 = omega1.applyfunc(
            lambda expression: sp.expand(
                sum(
                    y1[i] * sp.diff(expression, self.z[mode])
                    for i, mode in enumerate(self.modes)
                )
            )
        )
        second_source = (
            omega2
            + directional_omega1
            + jacobian1.T * omega1
            + omega1 * jacobian1
            + jacobian1.T * omega0 * jacobian1
        ).applyfunc(sp.expand)

        alpha2 = self.radial_primitive(second_source, 4)
        y2 = self.solve_vector(alpha2)
        jacobian2 = y2.jacobian(variables)
        second_residual = (
            second_source + jacobian2.T * omega0 + omega0 * jacobian2
        ).applyfunc(sp.simplify)

        return {
            "omega0": omega0,
            "omega1": omega1,
            "omega2": omega2,
            "y1": y1,
            "y2": y2,
            "first_residual": first_residual,
            "second_residual": second_residual,
        }

    def charge_coefficients(self, charge_mode: int):
        if -charge_mode not in self.z:
            raise ValueError("charge mode must lie inside the cutoff")

        linear = -I * d(charge_mode) * self.z[-charge_mode]
        quadratic = sp.Integer(0)
        for left in self.modes:
            right = -charge_mode - left
            if right not in self.z:
                continue
            quadratic += (
                -sp.Rational(1, 2)
                * self.z[left]
                * self.z[right]
                * (right - charge_mode)
                * d(left)
            )

        cubic = sp.Integer(0)
        for first in self.modes:
            for second in self.modes:
                third = -charge_mode - first - second
                if third not in self.z:
                    continue
                cubic += (
                    -I
                    * sp.Rational(1, 6)
                    * self.z[first]
                    * self.z[second]
                    * self.z[third]
                    * d(first)
                    * (third - charge_mode)
                    * (second - third - charge_mode)
                )
        return sp.expand(linear), sp.expand(quadratic), sp.expand(cubic)

    def symmetry_coefficients(self, charge_mode: int):
        leading = sp.zeros(len(self.modes), 1)
        zeroth = sp.zeros(len(self.modes), 1)
        first = sp.zeros(len(self.modes), 1)
        for row, target in enumerate(self.modes):
            leading[row] = int(target == charge_mode)
            shifted = target - charge_mode
            if shifted in self.z:
                zeroth[row] = (
                    -I
                    * sp.Rational(1, 2)
                    * (2 * charge_mode - target)
                    * self.z[shifted]
                )

            first_term = sp.Integer(0)
            for left in self.modes:
                right = target - charge_mode - left
                if right not in self.z:
                    continue
                first_term += (
                    -sp.Rational(1, 12)
                    * self.z[left]
                    * self.z[right]
                    * (right - charge_mode)
                    * (left - right - charge_mode)
                )

            compensator = sp.Integer(0)
            for low_mode in (-1, 0, 1):
                first_coordinate = low_mode - charge_mode
                second_coordinate = target - low_mode
                if first_coordinate not in self.z or second_coordinate not in self.z:
                    continue
                compensator += (
                    sp.Rational(1, 4)
                    * self.z[first_coordinate]
                    * self.z[second_coordinate]
                    * (2 * charge_mode - low_mode)
                    * (target - 2 * low_mode)
                )
            first[row] = sp.expand(first_term + compensator)
        return leading, zeroth, first

    def hamiltonian_residual(self, charge_mode: int, data) -> sp.Matrix:
        _, _, cubic = self.charge_coefficients(charge_mode)
        leading, zeroth, first = self.symmetry_coefficients(charge_mode)
        variables = [self.z[mode] for mode in self.modes]
        gradient = sp.Matrix([sp.diff(cubic, variable) for variable in variables])

        # (i_X Omega)_j = sum_i X^i Omega_(i,j) = (Omega^T X)_j.
        residual = (
            data["omega0"].T * first
            + data["omega1"].T * zeroth
            + data["omega2"].T * leading
            + gradient
        )
        return residual.applyfunc(sp.simplify)

    def cubic_darboux_charge(self, charge_mode: int, data) -> sp.Expr:
        linear, quadratic, cubic = self.charge_coefficients(charge_mode)
        variables = [self.z[mode] for mode in self.modes]
        y1 = data["y1"]
        y2 = data["y2"]
        correction1 = sum(
            sp.diff(quadratic, variable) * y1[i]
            for i, variable in enumerate(variables)
        )
        correction2 = sum(
            sp.diff(linear, variable) * y2[i]
            for i, variable in enumerate(variables)
        )
        return sp.expand(cubic + correction1 + correction2)

    def weyl_linear_symbol(self, cubic_charge: sp.Expr) -> sp.Expr:
        result = sp.Integer(0)
        for mode in range(2, self.cutoff + 1):
            result += (
                sp.Rational(1, 2)
                / d(mode)
                * sp.diff(cubic_charge, self.z[-mode], self.z[mode])
            )
        return sp.simplify(sp.expand(result))

    @staticmethod
    def matrix_is_zero(matrix: sp.Matrix) -> bool:
        return all(entry == 0 for entry in matrix)

    def closure_nonzero_count(self, form: sp.Matrix) -> int:
        variables = [self.z[mode] for mode in self.modes]
        count = 0
        for first in range(len(self.modes)):
            for second in range(first + 1, len(self.modes)):
                for third in range(second + 1, len(self.modes)):
                    residual = sp.simplify(
                        sp.diff(form[second, third], variables[first])
                        + sp.diff(form[third, first], variables[second])
                        + sp.diff(form[first, second], variables[third])
                    )
                    count += residual != 0
        return count


def main() -> None:
    parser = argparse.ArgumentParser()
    parser.add_argument("--cutoff", type=int, default=8)
    args = parser.parse_args()

    calculation = CutoffCalculation(args.cutoff)
    data = calculation.darboux_data()
    print(
        {
            "cutoff": args.cutoff,
            "first_darboux_residual_zero": calculation.matrix_is_zero(
                data["first_residual"]
            ),
            "second_darboux_residual_zero": calculation.matrix_is_zero(
                data["second_residual"]
            ),
            "omega1_closure_nonzero_count": calculation.closure_nonzero_count(
                data["omega1"]
            ),
            "omega2_closure_nonzero_count": calculation.closure_nonzero_count(
                data["omega2"]
            ),
        }
    )

    for charge_mode in (-3, -2, 2, 3):
        if abs(charge_mode) > args.cutoff:
            continue
        residual = calculation.hamiltonian_residual(charge_mode, data)
        interior_substitution = {
            calculation.z[mode]: 0
            for mode in calculation.modes
            if abs(mode) > args.cutoff - abs(charge_mode)
        }
        interior_residual = residual.subs(interior_substitution).applyfunc(sp.simplify)
        print(
            {
                "p": charge_mode,
                "full_cutoff_residual_zero": calculation.matrix_is_zero(residual),
                "interior_residual_zero": calculation.matrix_is_zero(interior_residual),
                "cutoff_edge_nonzero_components": sum(
                    entry != 0 for entry in residual
                ),
            }
        )

    central_diagnostics = {}
    for charge_mode in (2, 3, 5):
        if charge_mode > args.cutoff:
            continue
        cubic = calculation.cubic_darboux_charge(charge_mode, data)
        linear = calculation.weyl_linear_symbol(cubic)
        coefficient = sp.expand(linear).coeff(calculation.z[-charge_mode])
        delta_c = sp.simplify(
            -24 * sp.im(coefficient) / (charge_mode * (charge_mode**2 - 1))
        )
        central_diagnostics[charge_mode] = sp.simplify(-2 * sp.im(coefficient))
        print(
            {
                "p": charge_mode,
                "weyl_linear_symbol": linear,
                "s_p": coefficient,
                "delta_c_diagnostic": delta_c,
            }
        )

    if all(mode in central_diagnostics for mode in (2, 3, 5)):
        print(
            {
                "jacobi_2_3_minus5_identity_residual": sp.simplify(
                    8 * central_diagnostics[2]
                    - 7 * central_diagnostics[3]
                    + central_diagnostics[5]
                )
            }
        )


if __name__ == "__main__":
    main()
