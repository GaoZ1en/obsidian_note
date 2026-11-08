"""Finite regressions for the global repair audit.

These checks are witnesses only. They do not prove compact-support
cohomology, causal convexity/global hyperbolicity, Green uniqueness, a
continuum uniform-boundedness theorem, or the universal Weyl C*-norm result.
"""

from __future__ import annotations

import cmath
import math
from fractions import Fraction as F


def require(label: str, condition: bool, detail: str = "") -> None:
    suffix = f" ({detail})" if detail else ""
    print(f"{label}: {condition}{suffix}")
    if not condition:
        raise AssertionError(label)


def radiative_projection_checks() -> None:
    # Finite harmonic coefficient order: ell=0, ell=1, ell=2.
    test = [F(7), F(-3), F(5)]
    projected = [F(0), test[1], test[2]]
    ell_zero = [F(11), F(0), F(0)]
    require("radiative projection removes the finite ell=0 direction",
            projected[0] == 0 and projected[1:] == test[1:])
    require("a pure fixed-sector ell=0 test is in the projection kernel",
            [F(0), ell_zero[1], ell_zero[2]] == [F(0)] * 3)

    # A finite adjoint witness: the second projected direction is killed.
    # This models an additional master-adjoint kernel inside the on-shell
    # annihilator; it is not a continuum quotient proof.
    master_adjoint = [[F(1), F(0)], [F(0), F(0)]]
    projected_rad = [test[1], test[2]]
    image = [sum(row[j] * projected_rad[j] for j in range(2))
             for row in master_adjoint]
    kernel_witness = [F(0), F(1)]
    kernel_image = [sum(row[j] * kernel_witness[j] for j in range(2))
                    for row in master_adjoint]
    require("finite master-adjoint image retains a radiative direction",
            image[0] == test[1])
    require("finite master-adjoint kernel lies in the annihilator witness",
            kernel_image == [F(0), F(0)])


def causal_monotonicity_checks() -> None:
    # Sample future causal base increments have du,dv >= 0 and
    # 2 du dv >= R^2 |dtheta|^2 with R=1.
    increments = [(0.2, 0.4, 0.2), (0.1, 0.3, 0.1), (0.25, 0.15, 0.15)]
    require("sampled future causal increments have monotone u and v",
            all(du >= 0 and dv >= 0 and 2 * du * dv >= dtheta * dtheta
                for du, dv, dtheta in increments))

    u, v = 0.1, 0.08
    rectangle_points = [(u, v)]
    for du, dv, _ in increments:
        u += du
        v += dv
        rectangle_points.append((u, v))
    require("sampled causal path remains in its endpoint rectangle",
            all(rectangle_points[0][0] <= x <= rectangle_points[-1][0]
                and rectangle_points[0][1] <= y <= rectangle_points[-1][1]
                for x, y in rectangle_points))

    u_scale, v_scale = 2.0, 2.5
    affine = [x / u_scale + y / v_scale for x, y in rectangle_points]
    require("sampled triangle affine coordinate is monotone",
            all(a <= b for a, b in zip(affine, affine[1:])))
    require("sampled path with interior endpoint stays in the triangle",
            affine[-1] < 1 and all(value < 1 for value in affine))


def ambiguity_bound_check() -> None:
    # B is the standard skew block with Euclidean operator norm one.
    x = [0.4, -0.7]
    y = [1.1, 0.2]
    bx = [-x[1], x[0]]
    by = [-y[1], y[0]]
    pairing = lambda left, right: sum(a * b for a, b in zip(left, right))
    c_xy = pairing(x, by) - pairing(y, bx)
    norm = lambda vector: math.sqrt(pairing(vector, vector))
    bound = 2 * norm(x) * norm(y)
    require("finite trace bilinear obeys the uniform operator-norm bound",
            abs(c_xy) <= bound + 1e-14,
            f"value={abs(c_xy):.6g}, bound={bound:.6g}")


def reanchoring_checks() -> None:
    s = F(5)
    g1, g2, g3 = F(7), F(3), F(1)
    f1, f2, f3 = F(-2), F(4), F(9)

    c_plus_21 = (g2 - g1) / s
    c_plus_32 = (g3 - g2) / s
    c_plus_31 = (g3 - g1) / s
    c_minus_21 = (f1 - f2) / s
    c_minus_32 = (f2 - f3) / s
    c_minus_31 = (f1 - f3) / s
    require("plus-sheet re-anchoring shifts satisfy the cocycle",
            c_plus_31 == c_plus_32 + c_plus_21)
    require("minus-sheet re-anchoring shifts satisfy the cocycle",
            c_minus_31 == c_minus_32 + c_minus_21)

    # Check alpha^(T2)| + c_21 = alpha^(T1) at a sample generator value.
    g_v, f_u = F(13), F(-5)
    alpha_plus_t2 = (g_v - g2) / s
    alpha_plus_t1 = (g_v - g1) / s
    alpha_minus_t2 = (f2 - f_u) / s
    alpha_minus_t1 = (f1 - f_u) / s
    require("plus-sheet restriction becomes the T1 section after re-anchoring",
            alpha_plus_t2 + c_plus_21 == alpha_plus_t1)
    require("minus-sheet restriction becomes the T1 section after re-anchoring",
            alpha_minus_t2 + c_minus_21 == alpha_minus_t1)


def finite_weyl_witness() -> None:
    # Even finite clock algebra: Z^(N/2) has eigenvalues +/-1, so its
    # distance from the identity is two. This is a finite witness only, not
    # the universal Weyl C*-spectrum theorem.
    order = 8
    root = cmath.exp(2j * math.pi / order)
    eigenvalues = [root ** ((order // 2) * j) for j in range(order)]
    distance = max(abs(value - 1) for value in eigenvalues)
    require("finite Weyl clock witness has norm distance two",
            abs(distance - 2.0) < 1e-12,
            f"distance={distance:.12g}")


def main() -> None:
    radiative_projection_checks()
    causal_monotonicity_checks()
    ambiguity_bound_check()
    reanchoring_checks()
    finite_weyl_witness()
    print("ALL GLOBAL REPAIR REGRESSIONS PASSED")


if __name__ == "__main__":
    main()
