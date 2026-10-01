#!/usr/bin/env python3
"""Finite algebraic checks for STRUCTURED_INTERFACE_SEWABILITY.md.

Python 3.10+; standard library only. No network, symbolic prover, PDE solver,
external packages, or changes to source research documents.

These tests check examples and finite identities, not the general smooth
bundle/descent theorems. Run: python sewability_checks.py --output checks.json
"""
from __future__ import annotations

import argparse
import itertools
import json
import platform
import random
from pathlib import Path
from typing import Any

Perm = tuple[int, ...]


def require(condition: bool, message: str) -> None:
    if not condition:
        raise RuntimeError(f"Check failed: {message}")


def compose(p: Perm, q: Perm) -> Perm:
    """p q means p after q."""
    require(len(p) == len(q), "permutation sizes agree")
    return tuple(p[q[i]] for i in range(len(p)))


def product(*ps: Perm) -> Perm:
    require(bool(ps), "nonempty permutation product")
    result = tuple(range(len(ps[0])))
    for p in ps:
        result = compose(result, p)
    return result


def inverse(p: Perm) -> Perm:
    out = [0] * len(p)
    for i, value in enumerate(p):
        out[value] = i
    return tuple(out)


def permutation_checks(trials: int = 2048) -> dict[str, Any]:
    rng = random.Random(20260926)
    group = list(itertools.permutations(range(4)))
    identity = tuple(range(4))
    for _ in range(trials):
        frames = [rng.choice(group) for _ in range(4)]
        h = [rng.choice(group) for _ in range(4)]
        gr = {(i, j): product(inverse(frames[i]), frames[j])
              for i in range(4) for j in range(4)}
        gl = {(i, j): product(h[i], gr[i, j], inverse(h[j]))
              for i in range(4) for j in range(4)}
        for i, j, k in itertools.product(range(4), repeat=3):
            require(product(gl[i, j], gl[j, k]) == gl[i, k],
                    "transported Cech cocycle")
        require(all(gl[i, i] == identity for i in range(4)), "identity transitions")

        # Arbitrary pairwise transitions need not satisfy any triple cocycle.
        d: dict[tuple[int, int], Perm] = {}
        for i in range(4):
            d[i, i] = identity
            for j in range(i + 1, 4):
                d[i, j] = rng.choice(group)
                d[j, i] = inverse(d[i, j])

        def defect(table: dict[tuple[int, int], Perm], i: int, j: int, k: int) -> Perm:
            return product(table[i, j], table[j, k], inverse(table[i, k]))

        left = product(defect(d, 0, 1, 2), defect(d, 0, 2, 3))
        right = product(d[0, 1], defect(d, 1, 2, 3), inverse(d[0, 1]),
                        defect(d, 0, 1, 3))
        require(left == right, "non-Abelian four-overlap defect identity")

        u = [rng.choice(group) for _ in range(4)]
        dp = {(i, j): product(u[i], d[i, j], inverse(u[j]))
              for i in range(4) for j in range(4)}
        for i, j, k in itertools.permutations(range(4), 3):
            require(defect(dp, i, j, k) == product(u[i], defect(d, i, j, k), inverse(u[i])),
                    "defect conjugation under object gauge")
    return {"group": "S4", "deterministic_seed": 20260926,
            "trials": trials, "status": "passed",
            "checks": ["Cech transport", "non-Abelian defect identity", "gauge conjugation"]}


def spin_checks() -> dict[str, Any]:
    data = set(itertools.product((-1, 1), repeat=2))
    remaining = set(data)
    orbits = []
    while remaining:
        eps = min(remaining)
        orbit = {(left * eps[0] * right, left * eps[1] * right)
                 for left, right in itertools.product((-1, 1), repeat=2)}
        require(len({a * b for a, b in orbit}) == 1, "spin product invariant")
        orbits.append(sorted(orbit))
        remaining -= orbit
    require(len(orbits) == 2, "two simultaneous-regional-action spin orbits")
    return {"orbits": orbits, "orbit_count": len(orbits), "status": "passed"}


def torus_checks() -> dict[str, Any]:
    bases = [((1, 8), (0, 1)), ((4, 7), (1, 2))]
    records = []
    for v, u in bases:
        det = v[0] * u[1] - v[1] * u[0]
        length_sq = sum(z * z for z in v)
        dot = sum(x * y for x, y in zip(v, u))
        u_length_sq = sum(z * z for z in u)
        gram_det = length_sq * u_length_sq - dot * dot
        require(det == 1, "unimodular square-lattice basis")
        require(length_sq == 65, "same cylinder circumference squared")
        require(gram_det == 1, "same torus area squared")
        records.append({"v": v, "u": u, "det": det, "v_length_squared": length_sq,
                        "dot": dot, "gram_determinant": gram_det})

    v1, v2 = bases[0][0], bases[1][0]
    # Complete O(2,Z): an integral unit column has one entry ±1 and one 0.
    images = {tuple(signs[i] * v1[permutation[i]] for i in range(2))
              for permutation in ((0, 1), (1, 0))
              for signs in itertools.product((-1, 1), repeat=2)}
    require(len(images) == 8, "all square-lattice orthogonal images enumerated")
    require(v2 not in images and tuple(-x for x in v2) not in images,
            "no cut-direction-preserving square-torus isometry")
    require(8 % 65 not in {18 % 65, (-18) % 65}, "twists distinct modulo sign and period")
    return {"bases": records, "O2Z_images_of_v1": sorted(images),
            "cut_direction_equivalence": False, "status": "passed"}


def sign_and_corner_checks() -> dict[str, Any]:
    def inward_match(left: tuple[int, ...], right: tuple[int, ...]) -> bool:
        return len(left) == len(right) and all(
            l == (-1) ** k * r for k, (l, r) in enumerate(zip(left, right)))

    smooth_linear = inward_match((0, -1), (0, 1))
    cusp = inward_match((0, 1), (0, 1))
    require(smooth_linear, "global x passes the signed-normal test")
    require(not cusp, "absolute-value cusp fails first-jet matching")
    corner_product = 1
    for lift in (1, 1, 1, -1):
        corner_product *= lift
    require(corner_product == -1, "four-quadrant corner has a nonidentity defect")
    return {"smooth_linear_passes": smooth_linear, "cusp_passes": cusp,
            "corner_defect": corner_product, "status": "passed"}


def run() -> dict[str, Any]:
    results = {"note_date": "2026-09-26", "python_version": platform.python_version(),
               "scope": "Finite identities/examples only; not a machine proof of theorems.",
               "permutations": permutation_checks(), "spin": spin_checks(),
               "flat_tori": torus_checks(), "signs_and_corner": sign_and_corner_checks()}
    results["overall_status"] = "passed"
    return results


def main() -> None:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--output", type=Path, help="Write the JSON report to this path.")
    args = parser.parse_args()
    report = json.dumps(run(), ensure_ascii=False, indent=2)
    if args.output:
        args.output.parent.mkdir(parents=True, exist_ok=True)
        args.output.write_text(report + "\n", encoding="utf-8")
    print(report)


if __name__ == "__main__":
    main()
