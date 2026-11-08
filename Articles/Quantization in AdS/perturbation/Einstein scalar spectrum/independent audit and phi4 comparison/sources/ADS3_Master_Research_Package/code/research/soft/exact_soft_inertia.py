#!/usr/bin/env python3
"""Certify strictly positive Einstein soft levels by exact rational inertia.

The three-particle Racah formula is evaluated using python-flint rationals.
A rational symmetric pencil is congruent to H-epsilon*I; exact elimination
counts eigenvalues below epsilon without numerical eigensolvers or root
rounding.  Auxiliary Gram zeros and physical logarithmic-kernel zeros are
kept separate.  This is a finite certificate, not a proof of an asymptotic
rate; the accompanying all-N proof supplies the latter.
"""

from __future__ import annotations

import argparse
from functools import lru_cache
from hashlib import sha256
import importlib.util
import json
from math import gcd
import os
from pathlib import Path
import sys
import time

os.environ["PYTHONDONTWRITEBYTECODE"] = "1"
os.environ["OPENBLAS_NUM_THREADS"] = "1"
sys.dont_write_bytecode = True

from flint import fmpq, fmpz

HERE = Path(__file__).resolve().parent


def find_root() -> Path:
    for parent in (HERE, *HERE.parents):
        if (parent / "engine" / "three").is_dir():
            return parent
    return HERE.parent.parent


def rational(value: str) -> fmpq:
    parts = value.split("/")
    if len(parts) == 1:
        return fmpq(int(parts[0]))
    if len(parts) == 2:
        return fmpq(int(parts[0]), int(parts[1]))
    raise ValueError("Use an integer or a/b exact rational.")


def sign(value) -> int:
    return (value > 0) - (value < 0)


def hash_matrix(matrix) -> str:
    digest = sha256()
    for row in matrix:
        digest.update((",".join(map(str, row)) + "\n").encode())
    return digest.hexdigest()


def primary_dimension(P: int, Q: int) -> int:
    cyc = (1, -1, 0)
    numerator = ((P + 1) * (Q + 1)
                 + 3 * int(P % 2 == 0 and Q % 2 == 0)
                 + 2 * cyc[P % 3] * cyc[Q % 3])
    assert numerator % 6 == 0
    return numerator // 6


def kernel_dimension(P: int, Q: int) -> int:
    # Direct lattice enumeration of the proven generator degrees; avoids
    # a rank threshold and is independent of the old dimension helper.
    return sum(1 for j in range(Q + 1)
               for b in range(max(0, (P - 12 - Q - j) // 3 + 1))
               for a in range(max(0, (P - 12 - Q - j - 3 * b) // 2 + 1))
               if 2 * a + 3 * b == P - 12 - Q - j)


def pair_residual(d: fmpq, k: int, ell: int) -> fmpq:
    assert (k + ell) % 2 == 0
    n, spin = min(k, ell), abs(k - ell)
    h = d + n
    c, mu = h * (h - 1), d * (d - 2)
    casimir_difference = 8 * ((d + ell) * (d + ell - 1) - c)
    if spin >= 4:
        return casimir_difference
    if spin == 2:
        return (casimir_difference
                + (n + 1) * (n + 2) * (2 * d + n - 1) * (2 * d + n)
                / ((2 * h - 1) * (2 * h + 1) * (2 * h + 3)))
    if n == 0:
        return 2 * d * d * (2 * d + 5) / ((2 * d - 1) * (2 * d + 1))
    u = 4 * mu - 8 * c
    return -u / (2 * h - 1) - 2 * (c + mu) ** 2 / ((2 * h - 3) * (2 * h - 1) * (2 * h + 1))


def racah_data(d: fmpq, J: int, max_k: int) -> tuple[list[fmpq], list[list[fmpq]]]:
    a = fmpq((-1) ** J)
    for t in range(J):
        a *= (d + t) / (2 * d + t)
    weights = [fmpq(1)]
    for k in range(max_k):
        weights.append(weights[-1]
                       * (J + 3 * d - 1 + k) * (-J + k) * (2 * d - 1 + k)
                       / ((1 - d - J + k) * (2 * d + J + k) * (k + 1))
                       * (2 * d + 2 * k + 1) / (2 * d + 2 * k - 1))
    assert all(w > 0 for w in weights)
    polys = [[fmpq(0) for _ in range(max_k + 1)] for _ in range(max_k + 1)]
    for k in range(max_k + 1):
        for ell in range(k, max_k + 1):
            term = total = fmpq(1)
            for t in range(min(k, ell)):
                term *= ((-k + t) * (k + 2 * d - 1 + t) * (-ell + t) * (ell + 2 * d - 1 + t)
                         / ((d + t) * (-J + t) * (J + 3 * d - 1 + t) * (t + 1)))
                total += term
            polys[k][ell] = polys[ell][k] = total
    recoupling = [[a * weights[ell] * polys[k][ell] for ell in range(max_k + 1)]
                  for k in range(max_k + 1)]
    return weights, recoupling


def rational_gram(d: fmpq, P: int, Q: int):
    labels = [(k, ell) for ell in range(Q + 1)
              for k in range(min(P, ell + 2) + 1) if (k + ell) % 2 == 0]
    left_weights, left = racah_data(d, P, max(k for k, _ in labels))
    right_weights, right = racah_data(d, Q, Q)
    weights = [left_weights[k] * right_weights[ell] for k, ell in labels]
    potentials = [pair_residual(d, k, ell) for k, ell in labels]
    assert all(a > 0 for a in potentials)
    gram = [[fmpq(i == j) + 2 * left[k][r] * right[ell][t]
             for j, (r, t) in enumerate(labels)] for i, (k, ell) in enumerate(labels)]
    symmetric = [[weights[i] * gram[i][j] for j in range(len(labels))]
                 for i in range(len(labels))]
    assert all(symmetric[i][j] == symmetric[j][i]
               for i in range(len(labels)) for j in range(i))
    return labels, potentials, weights, gram, symmetric


def exact_inertia(matrix: list[list[fmpq]]) -> dict:
    """Symmetric rational Gaussian congruence; includes all-zero diagonals.

    At every nonzero diagonal pivot, Sylvester inertia is one pivot sign plus
    the Schur complement inertia.  If all remaining diagonals vanish but an
    off-diagonal entry does not, the unimodular shear e_i <- e_i+e_j creates
    diagonal 2*A_ij.  Hence no nonsingularity assumption is made.
    """
    A = [[fmpq(a) for a in row] for row in matrix]
    n = len(A)
    positive = negative = zero = 0
    swaps = shears = 0
    pivot_signs = []
    pivot_digest = sha256()
    largest_pivot_bits = 0
    for k in range(n):
        pivot_row = next((i for i in range(k, n) if A[i][i] != 0), None)
        if pivot_row is None:
            pair = next(((i, j) for i in range(k, n) for j in range(i + 1, n)
                         if A[i][j] != 0), None)
            if pair is None:
                zero = n - k
                break
            i, j = pair
            # Do row then column, retaining the exact diagonal contribution.
            for t in range(k, n):
                A[i][t] += A[j][t]
            for t in range(k, n):
                A[t][i] += A[t][j]
            assert A[i][i] != 0
            pivot_row = i
            shears += 1
        if pivot_row != k:
            A[k], A[pivot_row] = A[pivot_row], A[k]
            for row in A:
                row[k], row[pivot_row] = row[pivot_row], row[k]
            swaps += 1
        pivot = A[k][k]
        pivot_sign = sign(pivot)
        positive += int(pivot_sign > 0)
        negative += int(pivot_sign < 0)
        pivot_signs.append(pivot_sign)
        pivot_digest.update((str(pivot) + "\n").encode())
        largest_pivot_bits = max(largest_pivot_bits,
                                 int(abs(pivot.numerator)).bit_length(),
                                 int(pivot.denominator).bit_length())
        for i in range(k + 1, n):
            factor = A[i][k] / pivot
            if factor == 0:
                continue
            for j in range(i, n):
                A[i][j] -= factor * A[k][j]
                A[j][i] = A[i][j]
    assert positive + negative + zero == n
    return {"positive": positive, "negative": negative, "zero": zero,
            "pivot_signs": pivot_signs, "pivot_values_sha256": pivot_digest.hexdigest(),
            "largest_pivot_integer_bits": largest_pivot_bits,
            "symmetric_swaps": swaps, "unimodular_shears": shears}


def elimination_selfcheck() -> dict:
    # These genuinely exercise zero diagonal, shear, rank deficiency and
    # indefinite pivots; a diagonal-only selftest would miss the edge cases.
    tests = [([[0, 1], [1, 0]], (1, 1, 0)),
             ([[1, 2], [2, 4]], (1, 0, 1)),
             ([[0, 0, 0], [0, -2, 1], [0, 1, 3]], (1, 1, 1)),
             ([[0, 1, 2], [1, 0, 3], [2, 3, 0]], (1, 2, 0))]
    rows = []
    for matrix, expected in tests:
        result = exact_inertia([[fmpq(x) for x in row] for row in matrix])
        assert (result["positive"], result["negative"], result["zero"]) == expected
        rows.append({"matrix": matrix, "inertia": list(expected)})
    return {"status": "passed", "tests": rows}


def reference_crosscheck(path: Path, d: fmpq) -> dict:
    if not path.is_file():
        return {"status": "not_available", "path": str(path),
                "note": "Certificate construction itself has no dependency on this optional retained reference."}
    spec = importlib.util.spec_from_file_location("ads3_retained_three_reference", path)
    module = importlib.util.module_from_spec(spec)
    assert spec.loader is not None
    spec.loader.exec_module(module)
    import sympy as s
    P, Q = 8, 4
    labels, potentials, weights, gram, symmetric = rational_gram(d, P, Q)
    old, old_labels, old_potentials, _ = module.compressed_matrix(s.Rational(str(d)), P, Q)
    assert labels == old_labels
    assert [s.Rational(str(a)) for a in potentials] == old_potentials
    for i in range(len(labels)):
        for j in range(len(labels)):
            assert s.Rational(str(gram[i][j] * potentials[j])) == old[i, j]
    return {"status": "passed", "path": str(path), "source_sha256": sha256(path.read_bytes()).hexdigest(),
            "P": P, "Q": Q, "exact_matrix_entries_compared": len(labels) ** 2,
            "purpose": "Cross-check independent rational recurrence arithmetic against the retained exact engine."}


def main() -> None:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--delta", default="2")
    parser.add_argument("--left", type=int, default=32)
    parser.add_argument("--right", type=int, default=16)
    parser.add_argument("--thresholds", default="1/6000,1/5000", help="Comma-separated positive exact rationals.")
    parser.add_argument("--reference-engine", type=Path,
                        default=find_root() / "engine/three/three_body_nonchiral.py")
    parser.add_argument("--output", type=Path, default=HERE / "exact_soft_inertia_certificate.json")
    args = parser.parse_args()
    started = time.perf_counter()
    d = rational(args.delta)
    P, Q = args.left, args.right
    if d <= 1 or P < Q or Q < 0:
        parser.error("Require Delta>1 and P>=Q>=0.")
    thresholds = [rational(v) for v in args.thresholds.split(",") if v]
    if not thresholds or any(v <= 0 for v in thresholds):
        parser.error("All thresholds must be strictly positive.")
    selfcheck = elimination_selfcheck()
    crosscheck = reference_crosscheck(args.reference_engine, d)
    labels, potentials, weights, gram, symmetric = rational_gram(d, P, Q)
    dimension, kernel = primary_dimension(P, Q), kernel_dimension(P, Q)
    expected_rank = dimension - kernel
    auxiliary_zeros = len(labels) - expected_rank
    assert auxiliary_zeros >= 0
    print(json.dumps({"stage": "matrix_built", "P": P, "Q": Q, "auxiliary_dimension": len(labels),
                      "physical_dimension": dimension, "physical_kernel": kernel,
                      "elapsed_seconds": round(time.perf_counter() - started, 4)}), flush=True)
    rows = []
    for epsilon in [fmpq(0), *thresholds]:
        local_start = time.perf_counter()
        pencil = [row.copy() for row in symmetric]
        for i in range(len(labels)):
            pencil[i][i] -= epsilon * weights[i] / potentials[i]
        inertia = exact_inertia(pencil)
        if epsilon == 0:
            assert inertia["negative"] == 0
            assert inertia["zero"] == auxiliary_zeros
            assert inertia["positive"] == expected_rank
            positive_below = 0
        else:
            positive_below = inertia["negative"] - auxiliary_zeros
            assert 0 <= positive_below <= expected_rank
        row = {"threshold": str(epsilon), "inertia": inertia,
               "strictly_positive_eigenvalues_below_threshold": positive_below,
               "strictly_positive_eigenvalues_equal_threshold": inertia["zero"] if epsilon > 0 else 0,
               "pencil_sha256": hash_matrix(pencil),
               "elapsed_seconds": round(time.perf_counter() - local_start, 6)}
        rows.append(row)
        print(json.dumps({"stage": "inertia", "threshold": str(epsilon),
                          "inertia": [inertia[k] for k in ("positive", "negative", "zero")],
                          "strict_positive_below": positive_below,
                          "elapsed_seconds": row["elapsed_seconds"]}), flush=True)
    report = {
        "schema": "ADS3-exact-soft-inertia-v1", "status": "passed", "Delta": str(d), "P": P, "Q": Q,
        "physical_dimension": dimension, "physical_exact_kernel": kernel,
        "physical_positive_rank": expected_rank, "auxiliary_dimension": len(labels),
        "auxiliary_zeros_discarded": auxiliary_zeros,
        "symmetric_pencil": "S(eps)=diag(w) G-eps diag(w/a)",
        "congruence_identity": "S(eps)=diag(sqrt(w/a)) (H-eps I) diag(sqrt(w/a))",
        "orthonormal_positive_gram": "H=diag(sqrt(a)) diag(sqrt(w)) G diag(1/sqrt(w)) diag(sqrt(a))",
        "method": "Exact rational Sylvester inertia; no floating eigensolver and no tolerance-based zero removal.",
        "mathematical_input": "The established exact N=3 Racah/Gram formula and complete logarithmic-kernel classification.",
        "scope": "Finite eigenvalue counts only; asymptotic exponential scale is proved separately.",
        "source_sha256": sha256(Path(__file__).read_bytes()).hexdigest(),
        "elimination_selfcheck": selfcheck, "retained_engine_crosscheck": crosscheck,
        "labels": [list(label) for label in labels], "weights": list(map(str, weights)),
        "positive_pair_potentials": list(map(str, potentials)),
        "symmetric_gram_sha256": hash_matrix(symmetric),
        "threshold_certificates": rows,
        "elapsed_seconds": round(time.perf_counter() - started, 6),
    }
    args.output.parent.mkdir(parents=True, exist_ok=True)
    args.output.write_text(json.dumps(report, indent=2) + "\n")
    print(json.dumps({"status": "passed", "output": str(args.output),
                      "elapsed_seconds": report["elapsed_seconds"]}), flush=True)


if __name__ == "__main__":
    main()
