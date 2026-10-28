"""Semantic acceptance rules for the complete portable reproduction.

These rules check required task inventories and the actual JSON payloads. They
do not infer success from a subprocess exit code or an overall status flag.
The original suite validators remain the primary checks of their calculations.
"""
from __future__ import annotations

from copy import deepcopy
from decimal import Decimal
from fractions import Fraction as F
import importlib.util
from pathlib import Path

from cluster_payload_validation import validate as validate_cluster_payload


GROUPS = ["hierarchy", "finite", "physics", "cluster", "semiclassical"]
PHYSICS_FILES = ["physics_run.json", "ancillary_run.json"]
CLUSTER_TASKS = [
    ("independent_cluster_certificate", "independent_cluster_certificate.json"),
    ("cg_endpoint_checks", "cg_endpoint_results.json"),
    ("fourbody_nullity_checks", "independent_results.json"),
    ("fredholm_formula_check", "fredholm_formula_results.json"),
    ("convention_certificates", "convention_results.json"),
    ("nonchiral_rational_identity", "nonchiral_rational_results.json"),
    ("nonchiral_gamma_value", "nonchiral_gamma_results.json"),
]
SEMICLASSICAL_FILES = {
    "stable_symbolic": ["stable/symbolic_jet_results.json"],
    "stable_rational": ["stable/independent_stable_results.json"],
    "stable_jordan": ["stable/independent_jordan_results.json"],
    "master_symbolic": ["independent_symbolic_checks.json"],
    "universality_symbolic": [
        "universality/independent_casimir_audit.json",
        "universality/generic_symbolic_certificate.json",
    ],
    "soft_exact": ["soft/independent_soft_certificate.json"],
}
FINITE_FILES = [
    "finite_regressions.json",
    "primary_N3_P2_Q2.json", "compiled_N3_P2_Q2.json",
    "primary_N4_P2_Q2.json", "compiled_N4_P2_Q2.json",
    "shell_Delta2_E10_J0.json", "saturated_N3_P12_Q0.json",
    "compact_N3_P12_Q0.json",
]


def require(condition, message):
    if not condition:
        raise ValueError(message)


def object_payload(data, name):
    require(isinstance(data, dict) and bool(data), f"{name}: empty/nonobject payload")


def exact_inventory(actual, expected, name):
    require(len(actual) == len(expected) and set(actual) == set(expected),
            f"{name}: missing, duplicate, or unexpected task/payload")


def pair_coefficient(delta, n, spin):
    """Rational source-domain formula, independently reapplied to K4 outputs."""
    d = F(delta)
    h = d+n
    c = h*(h-1)
    mu = d*(d-2)
    u = 4*mu-8*c
    if spin == 0:
        if n == 0:
            return -4*d*d+2*d*d*(2*d+5)/((2*d-1)*(2*d+1))
        return u*(2*h-2)/(2*h-1)-2*(c+mu)**2/((2*h-3)*(2*h-1)*(2*h+1))
    if spin == 2:
        return u+F((n+1)*(n+2))*(2*d+n-1)*(2*d+n)/((2*h-1)*(2*h+1)*(2*h+3))
    require(spin >= 4 and spin % 2 == 0, "Unphysical pair spin")
    return u


def validate_physics(payloads):
    exact_inventory(payloads, PHYSICS_FILES, "Physics outputs")
    data = payloads["physics_run.json"]
    object_payload(data, "Physics")
    expected = {
        "all_parameter_crossed_recurrence": 4,
        "positive_defect_and_exceptional_mass": 3,
        "oriented_baseline": 1,
        "independent_KG_norms": 27,
        "independent_canonical_ground_J_integrals": 12,
        "rerun_direct_canonical_K4_all_channels": 64,
    }
    require(data.get("status") == "passed" and data.get("passed_checks") == 111,
            "Physics result status/count")
    require(data["environment"].get("optimization") == 0, "Physics optimization")
    rows = data["tests"]
    exact_inventory([r["name"] for r in rows], expected, "Physics tests")
    for row in rows:
        require(row.get("status") == "passed" and row.get("checks") == expected[row["name"]],
                "Physics test count/status: "+row["name"])
    tests = {r["name"]: r for r in rows}
    quadratures = tests["independent_canonical_ground_J_integrals"]["rows"]
    exact_inventory([(r["Delta"], r["J"]) for r in quadratures],
                    [(d, j) for d in ["5/4", "3/2", "7/3", "3"] for j in [0, 1, 4]],
                    "Canonical quadratures")
    for row in quadratures:
        err = Decimal(row["absolute_error"])
        require(err.is_finite() and 0 <= err < Decimal("1e-40"), "Quadrature residual")
        require(Decimal(row["value"]).is_finite(), "Nonfinite quadrature value")
    k4 = tests["rerun_direct_canonical_K4_all_channels"]
    require(k4["maximum_circular_level"] == 6, "Direct K4 cutoff changed")
    masses = k4["masses"]
    exact_inventory([r["Delta"] for r in masses], ["1001/1000", "3/2", "2", "7/3"],
                    "Direct K4 masses")
    channels = {(a, t-a) for t in range(7) for a in range(t, -1, -2)}
    require(len(channels) == 16, "Internal channel inventory")
    for mass in masses:
        require(mass["status"] == "passed" and mass["primary_count"] == 16,
                "Incomplete canonical mass")
        exact_inventory([(r["n"], r["s"]) for r in mass["coefficients"]], channels,
                        "Direct K4 pair channels")
        for row in mass["coefficients"]:
            require(F(row["g"]) == pair_coefficient(mass["Delta"], row["n"], row["s"]),
                    "Direct K4 coefficient disagrees with the declared formula")

    ancillary = payloads["ancillary_run.json"]
    object_payload(ancillary, "Ancillary")
    counts = {
        "inherited_exact_physics_audit": 5,
        "hypergeometric_Casimir_general_coefficient": 1,
        "dynamic_oscillator_pair_coefficient": 2,
        "general_unitary_minus_naive_Weyl_kinetic_operator": 2,
    }
    require(ancillary.get("status") == "passed" and ancillary.get("total_checks") == 10,
            "Ancillary status/count")
    rows = ancillary["tests"]
    exact_inventory([r["name"] for r in rows], counts, "Ancillary tests")
    for row in rows:
        require(row["status"] == "passed" and row["checks"] == counts[row["name"]],
                "Ancillary test count/status")
    inherited = next(r for r in rows if r["name"] == "inherited_exact_physics_audit")
    require(inherited["returncode"] == 0, "Inherited audit return code")
    expected_stdout = {
        "cubic_identity_residual": "0",
        "quartic_gravity_zero": "-8*B**3*b*beta*omega - 8*B**2*b**2*beta**2*omega - 8*B**2*b**2*omega - 8*B*b**3*beta*omega",
        "H3_A_b4": "-16*beta*omega",
        "H3_C_B4": "16*beta*omega",
        "degenerate_BCH_resolvent_residual": "Matrix([[0, 0], [0, 0]])",
    }
    require(inherited["stdout"] == expected_stdout, "Inherited physics payload changed")
    return {"physics_checks": 111, "ancillary_checks": 10,
            "canonical_channels": 64, "independent_quadratures": 12}


def validate_finite(payloads):
    exact_inventory(payloads, FINITE_FILES, "Finite output files")
    data = payloads["finite_regressions.json"]
    object_payload(data, "Finite report")
    require(data.get("status") == "passed", "Finite status")
    expected_tests = [
        ("pair normalization and removable point", None),
        ("mixed primary", 3), ("mixed primary", 4),
        ("complete shell and exact root merging", None),
        ("actual Vandermonde-fourth-power state and complete residual", None),
        ("critical algebraic mass full block", None),
        ("compact output and large-index counting", None),
    ]
    rows = data["checks"]
    require([(r["test"], r.get("N")) for r in rows] == expected_tests,
            "Finite task order/count")
    require(all(r.get("status") == "passed" for r in rows), "Finite task status")
    coefficients = {
        3: (["1", "6896/35", "1484288/175"], ["1", "-4304/35", "447488/175"], "-160", 2),
        4: (["1", "15576/35", "78091392/1225", "125343737856/42875"],
            ["1", "-9624/35", "28094592/1225", "-24285394944/42875"], "-240", 3),
    }
    for n, (full, positive, baseline, dim) in coefficients.items():
        direct = payloads[f"primary_N{n}_P2_Q2.json"]
        compiled = payloads[f"compiled_N{n}_P2_Q2.json"]
        for item in [direct, compiled]:
            require((item["Delta"], item["N"], item["P"], item["Q"],
                     item["primary_dimension"], item["positive_rank"]) == ("2", n, 2, 2, dim, dim),
                    "Finite mixed dimensions/parameters")
        require(direct["remaining_g_spectrum"]["coefficients_descending"] == full,
                "Direct characteristic polynomial")
        require(direct["positive_shift_coefficients_descending"] == positive and
                compiled["positive_shift_coefficients"] == positive, "Recoupled characteristic polynomial")
        require(direct["baseline_g"] == compiled["baseline"] == baseline and
                direct["baseline_multiplicity"] == compiled["baseline_multiplicity"] == 0,
                "Mixed baseline/kernel")
        require(len(direct["remaining_g_spectrum"]["square_free_factors"]) > 0,
                "Missing exact square-free decomposition")
    shell = payloads["shell_Delta2_E10_J0.json"]
    require((shell["Delta"], shell["E0"], shell["spin"],
             shell["complete_scalar_shell_dimension"]) == ("2", "10", 0, 20), "Complete shell")
    require([(b["N"], b["P"], b["Q"], b["complete_level_dimension"])
             for b in shell["particle_number_blocks"]] ==
            [(1, 4, 4, 1), (2, 3, 3, 8), (3, 2, 2, 8), (4, 1, 1, 2), (5, 0, 0, 1)],
            "Complete shell particle-number inventory")
    saturated = payloads["saturated_N3_P12_Q0.json"]
    require(saturated["kernel"]["multiplicity"] == 1 and saturated["kernel"]["g"] == "-48",
            "Saturated kernel")
    require(len(saturated["kernel"]["basis"]) == 1 and
            saturated["full_primary"]["primary_dimension"] == 3, "Saturated/full-state dimensions")
    critical = rows[5]
    require((critical["physical_dimension"], critical["square_free_degree"])
            == (2, 1), "Critical algebraic specialization")
    matrix = critical["matrix"]
    require(len(matrix) == 2 and all(len(r) == 2 for r in matrix) and
            matrix[0][1] == matrix[1][0] == "0" and matrix[0][0] == matrix[1][1],
            "Critical complete scalar matrix")
    compact = payloads["compact_N3_P12_Q0.json"]
    require("shifted_coefficients_descending" not in compact, "Dense zero factor returned")
    factor = compact["shifted_characteristic_factorization"]
    require(factor["zero_root_multiplicity"] == 1 and
            len(factor["nonzero_coefficients_descending"]) == 3 and
            compact["physical_baseline_multiplicity"] == 1 and compact["positive_rank"] == 2,
            "Compact zero factor")
    large = rows[6]
    require((large["P"], large["Q"], large["physical_dimension"], large["physical_kernel"],
             large["positive_rank"]) == (10**9, 6, 1166666668, 1166666645, 23), "Large-index exact counts")
    return {"regression_tasks": 7, "mixed_primary_dimensions": [2, 3],
            "complete_shell_dimension": 20, "large_index_positive_rank": 23}


def validate_cluster(payloads):
    exact_inventory(payloads, [p for _, p in CLUSTER_TASKS], "Cluster outputs")
    for name, path in CLUSTER_TASKS:
        validate_cluster_payload(name, payloads[path])
    return {"required_tasks": [n for n, _ in CLUSTER_TASKS],
            "exact_CG_cases": 171, "finite_minimum_cases": 127,
            "Gamma_evaluation_digits": 80}


def load_semiclassical_validator(source_root: Path):
    spec = importlib.util.spec_from_file_location(
        "ads3_portable_semiclassical_validation", source_root/"run_local_checks.py")
    require(spec is not None and spec.loader is not None, "Cannot load semiclassical validator")
    module = importlib.util.module_from_spec(spec)
    spec.loader.exec_module(module)
    exact_inventory(module.TASKS, SEMICLASSICAL_FILES, "Semiclassical source tasks")
    require(module.EXPECTED_OUTPUTS == SEMICLASSICAL_FILES, "Semiclassical source outputs")
    return module


def validate_semiclassical(payloads, module):
    expected = [p for paths in SEMICLASSICAL_FILES.values() for p in paths]
    exact_inventory(payloads, expected, "Semiclassical outputs")
    # The imported original runner has a main guard. Override only its JSON
    # accessor so its existing validators inspect the supplied fresh payloads.
    old_payload = module.payload
    try:
        module.payload = lambda relative: payloads[relative]
        return {name: validator() for name, (_, validator) in module.TASKS.items()}
    finally:
        module.payload = old_payload


def validate_summary(data):
    object_payload(data, "Portable summary")
    require(data.get("schema") == "ADS3-portable-reproduction-v1", "Portable schema")
    require(data.get("status") == "passed" and data.get("optimization") == 0,
            "Portable status/optimization")
    rows = data["groups"]
    require([r["name"] for r in rows] == GROUPS, "Portable required group inventory")
    for row in rows:
        require(row.get("status") == "passed" and row.get("returncode") == 0 and
                isinstance(row.get("validated_semantics"), dict) and row["validated_semantics"] and
                isinstance(row.get("artifacts"), list) and row["artifacts"],
                "Portable incomplete group: "+str(row.get("name")))
    require(data.get("protected_sources_unchanged") is True, "Protected source mutation")
    return {"status": "passed", "required_groups": GROUPS, "group_count": 5}


def mutation_checks(payload_sets, validators, summary):
    """Exercise rejection of missing files, invalid tasks and false summaries."""
    rows = []

    def rejects(label, validator, payload):
        try:
            validator(payload)
        except (ValueError, RuntimeError, KeyError, TypeError, IndexError, ArithmeticError):
            rows.append({"case": label, "rejected": True})
        else:
            raise ValueError("Incomplete/invalid payload accepted: "+label)

    for group in ["finite", "physics", "cluster", "semiclassical"]:
        source = payload_sets[group]
        validator = validators[group]
        rejects(group+":empty_result_set", validator, {})
        for name in source:
            missing = dict(source)
            del missing[name]
            rejects(group+":missing:"+name, validator, missing)
            malformed = dict(source)
            malformed[name] = {"status": "passed"}
            rejects(group+":empty_task_payload:"+name, validator, malformed)
    bad = deepcopy(payload_sets["physics"])
    k4 = next(r for r in bad["physics_run.json"]["tests"]
              if r["name"] == "rerun_direct_canonical_K4_all_channels")
    k4["masses"][0]["coefficients"][0]["g"] = "0"
    rejects("physics:corrupt_canonical_coefficient", validators["physics"], bad)
    bad = deepcopy(payload_sets["finite"])
    bad["primary_N3_P2_Q2.json"]["remaining_g_spectrum"]["coefficients_descending"][1] = "0"
    rejects("finite:changed_characteristic_polynomial", validators["finite"], bad)
    bad = deepcopy(payload_sets["cluster"])
    bad["nonchiral_rational_results.json"]["rational_identities"][0]["all_index_rational_identity"] = False
    rejects("cluster:false_rational_identity", validators["cluster"], bad)
    bad = deepcopy(payload_sets["semiclassical"])
    bad["soft/independent_soft_certificate.json"]["spectral_certificates"][0]["rows"][0]["inertia_positive_negative_zero"][2] = 0
    rejects("semiclassical:wrong_auxiliary_nullity", validators["semiclassical"], bad)
    bad = deepcopy(summary)
    bad["groups"].pop()
    rejects("summary:missing_required_group", validate_summary, bad)
    bad = deepcopy(summary)
    bad["groups"][0]["status"] = "skipped"
    rejects("summary:skipped_group", validate_summary, bad)
    bad = deepcopy(summary)
    bad["groups"][0]["returncode"] = 1
    rejects("summary:failed_subprocess", validate_summary, bad)
    bad = deepcopy(summary)
    bad["protected_sources_unchanged"] = False
    rejects("summary:source_mutation", validate_summary, bad)
    return {"status": "passed", "cases": rows, "rejected_cases": len(rows),
            "scope": "Portable schema/semantic rejection tests; the mandatory hierarchy suite also runs its own nine payload mutations."}
