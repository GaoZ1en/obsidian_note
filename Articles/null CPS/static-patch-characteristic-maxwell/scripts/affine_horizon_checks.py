#!/usr/bin/env python3
"""Finite regressions for calculation 10.

Checks affine/logarithmic derivative identities on polynomial examples, the
explicit Schwartz counterexample, Mellin pole residues, the fixed-angular-
Sobolev derivative loss, and the switch-function canonical shear.  These
finite checks do not prove a Hardy/Mellin range or Goursat theorem.
"""

from __future__ import annotations

import math
import sys

import numpy as np


def trapz(values: np.ndarray, grid: np.ndarray) -> float:
    return float(np.trapezoid(values, grid))


def main() -> int:
    # r_aff(V)=r0+r1 V+r2 V^2 and mathfrak r=x r_aff(-x), x=e^{-v}.
    r0, r1, r2 = 0.7, -0.4, 0.3
    v = np.array([8.0, 10.0, 12.0, 14.0])
    x = np.exp(-v)
    # The simplified forms avoid catastrophic cancellation in the second
    # weighted derivative at large v.
    affine_0 = r0 - r1 * x + r2 * x * x
    affine_1 = r1 - 2.0 * r2 * x
    affine_2 = np.full_like(x, 2.0 * r2)
    derivative_identity_error = max(
        abs(affine_0[-1] - r0),
        abs(affine_1[-1] - r1),
        abs(affine_2[-1] - 2.0 * r2),
    )

    # f(v)=exp(-(1+v^2)^(1/4)) is Schwartz, while e^v |f'| diverges.
    counter_v = np.array([16.0, 25.0, 36.0, 49.0])
    counter_f = np.exp(-(1.0 + counter_v**2) ** 0.25)
    counter_fp = (
        -counter_v
        / (2.0 * (1.0 + counter_v**2) ** 0.75)
        * counter_f
    )
    affine_growth = np.exp(counter_v) * np.abs(counter_fp)
    counterexample_growth_ratio = float(
        np.min(affine_growth[1:] / affine_growth[:-1])
    )

    # Mellin transform of r0*x-r1*x^2+r2*x^3 has residues r0,-r1,r2.
    def mellin(s: complex) -> complex:
        return r0 / (s + 1.0) - r1 / (s + 2.0) + r2 / (s + 3.0)

    epsilon = 1.0e-7
    residues = (
        epsilon * mellin(-1.0 + epsilon),
        epsilon * mellin(-2.0 + epsilon),
        epsilon * mellin(-3.0 + epsilon),
    )
    mellin_residue_error = max(
        abs(residues[0] - r0),
        abs(residues[1] + r1),
        abs(residues[2] - r2),
    )

    # A sqrt(lambda) component is controlled at H^(s-1), not H^s.
    s = 2.5
    shifted_ratios = []
    same_order_ratios = []
    for j in range(1, 401):
        lam = j * (j + 1)
        master_weight = (1.0 + lam) ** s
        shifted_normal_weight = (1.0 + lam) ** (s - 1.0) * lam
        same_normal_weight = (1.0 + lam) ** s * lam
        shifted_ratios.append(shifted_normal_weight / master_weight)
        same_order_ratios.append(same_normal_weight / master_weight)
    angular_shift_bound_error = max(0.0, max(shifted_ratios) - 1.0)
    same_order_growth_ratio = same_order_ratios[-1] / same_order_ratios[0]

    # Switch shear: h_tilde=h+k, x_tilde=x-m k, with the shifted cut
    # coordinate recomputed from its definition.  The symplectic form is
    # invariant even though the splitting coordinates change.
    grid = np.linspace(-12.0, 12.0, 240_001)
    h = 0.5 * (1.0 + np.tanh(grid))
    hp = 0.5 / np.cosh(grid) ** 2
    k = 0.12 * grid * np.exp(-0.5 * grid * grid)
    kp = 0.12 * (1.0 - grid * grid) * np.exp(-0.5 * grid * grid)
    h_tilde = h + k
    hp_tilde = hp + kp
    x_profile = grid * np.exp(-0.7 * grid * grid)
    y_profile = (grid * grid - 0.4) * np.exp(-0.55 * grid * grid)
    xp = (1.0 - 1.4 * grid * grid) * np.exp(-0.7 * grid * grid)
    yp = (
        2.0 * grid
        - 1.1 * grid * (grid * grid - 0.4)
    ) * np.exp(-0.55 * grid * grid)
    a, memory = 0.31, -0.47
    b, other_memory = -0.22, 0.38
    f = a + memory * h + x_profile
    fp = memory * hp + xp
    g = b + other_memory * h + y_profile
    gp = other_memory * hp + yp
    omega_direct = trapz(f * gp - g * fp, grid)

    x_tilde = x_profile - memory * k
    y_tilde = y_profile - other_memory * k
    xp_tilde = xp - memory * kp
    yp_tilde = yp - other_memory * kp
    ahat_tilde = a + 2.0 * trapz(x_tilde * hp_tilde, grid)
    bhat_tilde = b + 2.0 * trapz(y_tilde * hp_tilde, grid)
    omega_zero_tilde = trapz(
        x_tilde * yp_tilde - y_tilde * xp_tilde, grid
    )
    omega_shear = (
        omega_zero_tilde
        + ahat_tilde * other_memory
        - bhat_tilde * memory
    )
    switch_shear_error = abs(omega_direct - omega_shear)

    metrics = {
        "affine weighted-derivative limits": (
            derivative_identity_error,
            2.0e-5,
        ),
        "Mellin pole residues": (mellin_residue_error, 2.0e-7),
        "shifted angular Sobolev bound": (angular_shift_bound_error, 1.0e-15),
        "switch-function canonical shear": (switch_shear_error, 3.0e-9),
    }

    print(f"Python: {sys.version.split()[0]}; NumPy: {np.__version__}")
    all_passed = True
    for label, (error, tolerance) in metrics.items():
        passed = bool(np.isfinite(error) and error < tolerance)
        all_passed &= passed
        print(
            f"{label}: error={error:.6e}, tolerance={tolerance:.1e}, "
            f"passed={passed}"
        )

    growth_passed = bool(counterexample_growth_ratio > 10.0)
    all_passed &= growth_passed
    print(
        "Schwartz/affine counterexample growth: "
        f"minimum_ratio={counterexample_growth_ratio:.6e}, required>10, "
        f"passed={growth_passed}"
    )

    loss_passed = bool(same_order_growth_ratio > 1.0e4)
    all_passed &= loss_passed
    print(
        "same-order angular loss control: "
        f"growth_ratio={same_order_growth_ratio:.6e}, required>1e4, "
        f"passed={loss_passed}"
    )

    if all_passed:
        print("ALL AFFINE-HORIZON CHECKS PASSED")
        return 0
    print("AFFINE-HORIZON CHECKS FAILED")
    return 1


if __name__ == "__main__":
    raise SystemExit(main())
