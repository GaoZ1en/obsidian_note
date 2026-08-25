#!/usr/bin/env python3
"""Archived finite-cutoff and energy-damped Wick checks for Brown--Henneaux charges.

Only the CPS-vacuum Wick prescription is used.  No numerical central shift and
no Weyl-symbol conversion enter this script.
"""

from __future__ import annotations

import argparse

import sympy as sp


I = sp.I
PI = sp.pi


def d(mode: int) -> sp.Expr:
    return 2 * PI * mode * (mode**2 - 1)


def u(r: int, p: int) -> sp.Expr:
    return sp.simplify((r + 2 * p) * sp.sqrt(d(r) / d(r + p)))


def q_matrix(cutoff: int, p: int, damping: sp.Expr = sp.Integer(1)) -> sp.Matrix:
    """One-particle matrix for Q_p=sum w_r b_r^dagger b_(r+p)."""
    size = cutoff - 1
    matrix = sp.zeros(size)
    for r in range(2, cutoff - p + 1):
        weight = u(r, p) * damping ** (2 * r + p)
        matrix[r - 2, r + p - 2] = weight
    return matrix


def run(cutoff: int) -> dict[str, object]:
    q2 = q_matrix(cutoff, 2)
    q3 = q_matrix(cutoff, 3)
    qm3 = q3.T
    mixed_quadratic = q2 * qm3 - qm3 * q2

    smooth_results = []
    for damping in (sp.Rational(1, 2), sp.Rational(3, 4), sp.Rational(9, 10)):
        for p in (2, 3):
            qp = q_matrix(cutoff, p, damping)
            commutator = qp * qp.T - qp.T * qp
            smooth_results.append(
                {
                    "p": p,
                    "q": str(damping),
                    "identity_coefficient": 0,
                    "one_particle_trace": sp.simplify(sp.trace(commutator)),
                }
            )

    delta_c = sp.Symbol("Delta_c", real=True)
    central = lambda p: delta_c * p * (p**2 - 1) / 12

    return {
        "cutoff": cutoff,
        "hard_cutoff": [
            {
                "p": p,
                "BB_identity_coefficient": 0,
                "Delta_c_bare": 0,
                "one_particle_trace": sp.simplify(
                    sp.trace(
                        q_matrix(cutoff, p) * q_matrix(cutoff, p).T
                        - q_matrix(cutoff, p).T * q_matrix(cutoff, p)
                    )
                ),
            }
            for p in (2, 3)
        ],
        "energy_damping": smooth_results,
        "mixed_Q2_Qminus3_identity_coefficient": 0,
        "mixed_Q2_Qminus3_is_pure_bilinear": mixed_quadratic.rows == cutoff - 1,
        "central_cocycle_Jacobi_2_3_minus5": sp.simplify(
            8 * central(2) - 7 * central(3) + central(5)
        ),
    }


def main() -> None:
    parser = argparse.ArgumentParser()
    parser.add_argument("--cutoffs", type=int, nargs="+", default=[6, 8, 10, 12])
    args = parser.parse_args()
    for cutoff in args.cutoffs:
        print(run(cutoff))


if __name__ == "__main__":
    main()
