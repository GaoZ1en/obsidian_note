#!/usr/bin/env python3
"""Read-only source audit for the original ads2_rindler_gluing.zip project.

Usage:
    python3 ads2_rindler_finite_zn_source_audit.py /path/to/ads2_rindler_gluing.zip

The audit deliberately does not infer a canonical null-to-finite map.  It
checks what Z and N mean, which Hamiltonian is projected, and where the
rank-one link appears in the original source and logs.
"""

from __future__ import annotations

import argparse
import ast
from fractions import Fraction
from pathlib import Path
import re
import zipfile


REQUIRED_MEMBERS = {
    "ads2_rindler_gluing/ads2_rindler_spectrum.py",
    "ads2_rindler_gluing/ads2_rindler_massive_spectrum.py",
    "ads2_rindler_gluing/numerical_log.md",
    "ads2_rindler_gluing/massive_numerical_log.md",
}


def function_source(source: str, name: str) -> str:
    tree = ast.parse(source)
    for node in tree.body:
        if isinstance(node, (ast.FunctionDef, ast.AsyncFunctionDef)) and node.name == name:
            segment = ast.get_source_segment(source, node)
            if segment is None:
                raise AssertionError(f"could not recover source for {name}")
            return segment
    raise AssertionError(f"function {name} is missing")


def exact_rank(matrix: list[list[Fraction]]) -> int:
    work = [row[:] for row in matrix]
    rows = len(work)
    cols = len(work[0]) if rows else 0
    rank = 0
    for col in range(cols):
        pivot = next((row for row in range(rank, rows) if work[row][col] != 0), None)
        if pivot is None:
            continue
        work[rank], work[pivot] = work[pivot], work[rank]
        scale = work[rank][col]
        work[rank] = [value / scale for value in work[rank]]
        for row in range(rows):
            if row != rank and work[row][col] != 0:
                factor = work[row][col]
                work[row] = [
                    work[row][j] - factor * work[rank][j] for j in range(cols)
                ]
        rank += 1
        if rank == rows:
            break
    return rank


def audit(archive_path: Path) -> dict[str, bool]:
    with zipfile.ZipFile(archive_path) as archive:
        names = set(archive.namelist())
        missing = REQUIRED_MEMBERS - names
        if missing:
            raise AssertionError(f"missing archive members: {sorted(missing)}")
        texts = {
            name: archive.read(name).decode("utf-8") for name in REQUIRED_MEMBERS
        }

    massless = texts["ads2_rindler_gluing/ads2_rindler_spectrum.py"]
    massive = texts["ads2_rindler_gluing/ads2_rindler_massive_spectrum.py"]
    massless_log = texts["ads2_rindler_gluing/numerical_log.md"]
    massive_log = texts["ads2_rindler_gluing/massive_numerical_log.md"]
    massless_matrix = function_source(massless, "global_energy_matrices")
    massive_matrix = function_source(massive, "global_energy_matrices")
    massless_log_flat = " ".join(massless_log.split())
    massive_log_flat = " ".join(massive_log.split())

    sample_boundary_vector = [Fraction(1), Fraction(-2), Fraction(3), Fraction(-4)]
    sample_outer_product = [
        [left * right for right in sample_boundary_vector]
        for left in sample_boundary_vector
    ]

    checks = {
        "archive_members": REQUIRED_MEMBERS <= set(texts),
        "Z_is_wall_position": (
            "0 < z < Z" in massless
            and "near-horizon wall" in massless
            and "wall_position" in massless_matrix
        ),
        "wall_is_neumann": (
            "auxiliary Neumann condition" in massless
            and "u_p'(Z) = 0" in massive
        ),
        "N_is_retained_mode_count": (
            "first N modes" in massless
            and "mode_count" in massless_matrix
            and "default=[64]" in massless.replace(" ", "")
        ),
        "massive_benchmark_Z10_N64": bool(
            re.search(
                r"\$m=1\$,\s*\$Z=10\$,\s*and\s*\$N=64\$",
                massive_log_flat,
            )
        ),
        "global_noether_energy_is_input": (
            "projects the Noether" in massless
            and "global_kinetic_matrix" in massive_matrix
            and "global_exterior_stiffness" in massive_matrix
        ),
        "rank_one_link_definition": (
            "np.outer(boundary_values, boundary_values)" in massless_matrix
            and "np.outer(" in massive_matrix
            and "boundary_values" in massive_matrix
            and exact_rank(sample_outer_product) == 1
        ),
        "projected_variable_is_wall_value": (
            "phi_R(Z) - phi_L(Z)" in massless
            and "boundary_values" in massless_matrix
            and "central_half_width" in massless_matrix
        ),
        "Z_and_N_control_distinct_errors": (
            "finite-$Z$ error" in massless_log
            and "ultraviolet" in massless_log
            and "wall must instead be moved" in massive_log
        ),
        "state_and_correlator_not_constructed": (
            "does not construct the thermofield-double state" in massless_log_flat
            and "does not construct a thermofield-double state" in massive_log_flat
        ),
    }
    return checks


def main() -> None:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("archive", type=Path)
    args = parser.parse_args()
    if not args.archive.is_file():
        parser.error(f"archive does not exist: {args.archive}")

    checks = audit(args.archive)
    for name, passed in checks.items():
        print(f"{name}: {passed}")
    if not all(checks.values()):
        raise SystemExit("ChecksFailed")
    print("AllChecksPassed")


if __name__ == "__main__":
    main()
