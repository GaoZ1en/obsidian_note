#!/usr/bin/env python3
"""Reproducible finite-chain ground-state checks, no sewing hypothesis.

Run from the strongly-correlated-sewing directory:
  OPENBLAS_NUM_THREADS=1 OMP_NUM_THREADS=1 VECLIB_MAXIMUM_THREADS=1 \
    /usr/local/bin/sage --nodotsage -python verification/spin_chain_checks.py

Only spin_chain_results.json is generated. No package installation is required.
The production data use PBC; OBC is implemented and checked at N=4, not fitted.
Natural logarithms, lattice spacing a=1, hbar=1, and g=1 throughout.
"""
import os
for _key in ("OPENBLAS_NUM_THREADS", "OMP_NUM_THREADS", "VECLIB_MAXIMUM_THREADS"):
    os.environ.setdefault(_key, "1")
import datetime
import hashlib
import json
import platform
import sys
import time
from pathlib import Path

import numpy as np
import scipy
import scipy.linalg as la
import scipy.sparse as sp
from scipy.sparse.linalg import eigsh
import sage.version

SEED = 20261106
TOL = 2e-12
HERE = Path(__file__).resolve().parent
OUT = HERE / "spin_chain_results.json"


def bonds(N, bc):
    if N < 3 or bc not in ("PBC", "OBC"):
        raise ValueError("Use N>=3 and PBC/OBC; avoids N=2 doubled-bond ambiguity")
    return [(j, j + 1) for j in range(N - 1)] + ([(N - 1, 0)] if bc == "PBC" else [])


def sparse_hamiltonian(model, N, bc="PBC", g=1.0):
    """Digit-basis construction, distinct from the tensor-product check below.

    Ising: -sum ZZ - g sum X (Pauli matrices).
    Potts3: -sum(ZZdag+h.c.) - g sum(X+Xdag), ZX=omega XZ.
    The computational basis has site 0 as the most significant base-q digit.
    """
    q = 2 if model == "ising" else 3
    if model not in ("ising", "potts3"):
        raise ValueError(model)
    dim = q ** N
    idx = np.arange(dim, dtype=np.int64)
    powers = q ** np.arange(N - 1, -1, -1, dtype=np.int64)
    digits = (idx[:, None] // powers[None, :]) % q
    diag = np.zeros(dim)
    for j, k in bonds(N, bc):
        if model == "ising":
            diag -= (1 - 2 * digits[:, j]) * (1 - 2 * digits[:, k])
        else:
            # -2 cos(2*pi*(s_j-s_k)/3): exactly -2 for equal, +1 otherwise.
            diag += np.where(digits[:, j] == digits[:, k], -2.0, 1.0)
    rows, cols, values = [idx], [idx], [diag]
    for j, power in enumerate(powers):
        shifts = (1,) if model == "ising" else (1, -1)
        for shift in shifts:
            target = idx + (((digits[:, j] + shift) % q) - digits[:, j]) * power
            rows.append(target)
            cols.append(idx)
            values.append(np.full(dim, -g))
    H = sp.coo_matrix((np.concatenate(values),
                       (np.concatenate(rows), np.concatenate(cols))),
                      shape=(dim, dim)).tocsr()
    H.sum_duplicates()
    return H


def clock(q):
    omega = np.exp(2j * np.pi / q)
    Z = np.diag(omega ** np.arange(q))
    X = np.roll(np.eye(q), 1, axis=0)  # X|s> = |s+1 mod q>
    return Z, X, omega


def tensor_operator(N, q, operators):
    result = np.array([[1.0 + 0j]])
    for j in range(N):
        result = np.kron(result, operators.get(j, np.eye(q)))
    return result


def dense_hamiltonian(model, N, bc, g=1.0):
    q = 2 if model == "ising" else 3
    Z, X, _ = clock(q)
    H = np.zeros((q ** N, q ** N), dtype=complex)
    for j, k in bonds(N, bc):
        term = tensor_operator(N, q, {j: Z, k: Z.conj().T})
        H -= term if model == "ising" else term + term.conj().T
    for j in range(N):
        term = tensor_operator(N, q, {j: X})
        H -= g * (term if model == "ising" else term + term.conj().T)
    return H


def entropies(psi, q, N, sites):
    sites = list(sites)
    if len(set(sites)) != len(sites) or any(s < 0 or s >= N for s in sites):
        raise ValueError("Invalid subsystem")
    rest = [s for s in range(N) if s not in sites]
    matrix = psi.reshape((q,) * N).transpose(sites + rest).reshape(q ** len(sites), -1)
    singular = la.svdvals(matrix, check_finite=False)
    p_raw = singular ** 2
    trace_error = abs(float(p_raw.sum()) - 1.0)
    p = p_raw / p_raw.sum()
    positive = p[p > 0.0]  # No Schmidt-value truncation threshold.
    purity = float(p @ p)
    return {"S1": float(-np.sum(positive * np.log(positive))),
            "S2": float(-np.log(purity)), "purity": purity,
            "schmidt_trace_error": trace_error,
            "smallest_schmidt_probability": float(p.min())}


def cmi(psi, q, N, a, b, c, label):
    """I(A:C|B), A=[0,a), B=[a,a+b), C=[a+b,a+b+c)."""
    if a + b + c > N:
        raise ValueError("Partition too large")
    ranges = {"AB": range(a + b), "BC": range(a, a + b + c),
              "B": range(a, a + b), "ABC": range(a + b + c)}
    S = {key: entropies(psi, q, N, sites)["S1"] for key, sites in ranges.items()}
    return {"label": label, "a": a, "b": b, "c": c, "d": N-a-b-c,
            "S1": S, "I_A_C_given_B": S["AB"] + S["BC"] - S["B"] - S["ABC"]}


def linear_fit(x, y, renyi_n):
    x, y = np.asarray(x), np.asarray(y)
    slope, intercept = np.linalg.lstsq(np.column_stack([x, np.ones(len(x))]), y, rcond=None)[0]
    residual = y - slope * x - intercept
    alpha_per_c = (1 + 1 / renyi_n) / 6  # PBC interval, n=1 continuous limit.
    return {"slope": float(slope), "intercept": float(intercept),
            "c_effective": float(slope / alpha_per_c),
            "rms_fit_residual": float(np.sqrt(np.mean(residual ** 2))),
            "max_abs_fit_residual": float(np.max(np.abs(residual))),
            "num_points": len(x),
            "warning": "Deterministic finite-size fit; residual is not a continuum error bar."}


def construction_checks():
    checks = []
    for q in (2, 3):
        Z, X, omega = clock(q)
        checks.append({"label": f"clock_q{q}_ZX_relation",
                       "frobenius_error": float(la.norm(Z @ X - omega * X @ Z))})
    for model in ("ising", "potts3"):
        for bc in ("OBC", "PBC"):
            H = sparse_hamiltonian(model, 4, bc)
            Hd = dense_hamiltonian(model, 4, bc)
            dense_evals, dense_vecs = la.eigh(Hd)
            ed = dense_evals[0]
            es = eigsh(H, k=1, which="SA", v0=np.ones(H.shape[0]), tol=TOL)[0][0]
            error = float(la.norm(H.toarray() - Hd))
            checks.append({"label": f"{model}_N4_{bc}_independent_construction",
                           "matrix_frobenius_error": error,
                           "sparse_dense_energy_error": float(abs(es-ed))})
            assert error < 1e-12 and abs(es-ed) < 1e-10
            q = 2 if model == "ising" else 3
            phi = dense_vecs[:, 0]
            tensor = phi.reshape((q,) * 4)
            # Trace sites 0 and 3 by explicit tensor contraction, independent of SVD.
            rho = np.einsum("abcd,aefd->bcef", tensor, tensor.conj()).reshape(q*q, q*q)
            p = la.eigvalsh(rho)
            p = p[p > 0]
            p /= p.sum()
            entropy = entropies(phi, q, 4, [1, 2])
            s1_error = abs(entropy["S1"] + float(np.sum(p * np.log(p))))
            s2_error = abs(entropy["S2"] + float(np.log(np.trace(rho @ rho).real)))
            complement_error = abs(entropy["S1"] - entropies(phi, q, 4, [0, 3])["S1"])
            checks.append({"label": f"{model}_N4_{bc}_SVD_vs_partial_trace",
                           "S1_absolute_error": s1_error, "S2_absolute_error": s2_error,
                           "pure_complement_S1_error": complement_error})
            assert max(s1_error, s2_error, complement_error) < 1e-12
    # For q=2 both hermitian-conjugate sums double the Ising Hamiltonian.
    N, q = 4, 2
    Z, X, _ = clock(q)
    Hclock2 = np.zeros((q**N, q**N), complex)
    for j, k in bonds(N, "PBC"):
        t = tensor_operator(N, q, {j: Z, k: Z.conj().T})
        Hclock2 -= t + t.conj().T
    for j in range(N):
        t = tensor_operator(N, q, {j: X})
        Hclock2 -= t + t.conj().T
    error = float(la.norm(Hclock2 - 2 * dense_hamiltonian("ising", N, "PBC")))
    checks.append({"label": "q2_clock_equals_twice_Ising_at_same_g", "frobenius_error": error})
    assert error < 1e-12
    return checks


def ground_check(model, N):
    start = time.perf_counter()
    q = 2 if model == "ising" else 3
    H = sparse_hamiltonian(model, N)
    rng = np.random.default_rng(SEED + 100 * q + N)
    E, vecs = eigsh(H, k=1, which="SA", tol=TOL, ncv=40,
                   maxiter=10000, v0=rng.standard_normal(q ** N))
    psi = vecs[:, 0]
    psi /= la.norm(psi)
    if psi.sum() < 0:
        psi *= -1
    E0 = float(psi @ (H @ psi))
    residual = float(la.norm(H @ psi - E0 * psi))
    assert residual < 1e-8, (model, N, residual)
    intervals = []
    for ell in range(1, N // 2 + 1):
        ent = entropies(psi, q, N, range(ell))
        intervals.append({"ell": ell, "chord_length": float(N / np.pi * np.sin(np.pi * ell / N)), **ent})
    tensor = psi.reshape((q,) * N)
    translated = tensor.transpose(list(range(1, N)) + [0]).reshape(-1)
    shifted = tensor
    for axis in range(N):
        shifted = np.roll(shifted, 1, axis=axis)
    fit = {}
    for ell_min in (1, 2, 3):
        selected = [row for row in intervals if row["ell"] >= ell_min]
        if len(selected) < 2:
            continue
        for n in (1, 2):
            fit[f"n{n}_ell_min{ell_min}"] = linear_fit(
                np.log([r["chord_length"] for r in selected]),
                [r[f"S{n}"] for r in selected], n)
    a = N // 3
    part = N // 4
    cmis = [cmi(psi, q, N, a, a, N-2*a, "full_ABC_pure_partition"),
            cmi(psi, q, N, part, part, part, "proper_ABC_with_complement_D")]
    for item in cmis:
        assert item["I_A_C_given_B"] >= -1e-10
    result = {"model": model, "q": q, "N": N, "dimension": q**N, "bc": "PBC", "g": 1.0,
              "hamiltonian_nnz": H.nnz, "E0": E0, "E0_per_site": E0/N,
              "residual_2norm": residual, "relative_residual": residual / max(1, abs(E0)),
              "normalization_error": float(abs(psi @ psi - 1)),
              "hermiticity_sparse_norm": float(sp.linalg.norm(H-H.T)),
              "translation_state_residual": float(la.norm(translated-psi)),
              "global_clock_shift_state_residual": float(la.norm(shifted.reshape(-1)-psi)),
              "minimum_real_wavefunction_component": float(psi.min()),
              "interval_entropies": intervals, "CMI": cmis, "cft_interval_fits": fit,
              "runtime_seconds": time.perf_counter()-start}
    if model == "ising":
        exact = float(-2 / np.sin(np.pi / (2*N)))
        result["analytic_PBC_even_N_E0"] = exact
        result["analytic_energy_abs_error"] = abs(E0-exact)
        assert abs(E0-exact) < 1e-9
    return result


def save(data):
    OUT.write_text(json.dumps(data, indent=2, ensure_ascii=False, allow_nan=False) + "\n", encoding="utf-8")


def main():
    begin = time.perf_counter()
    data = {"status": "running", "timestamp_utc": datetime.datetime.now(datetime.timezone.utc).isoformat(),
            "versions": {"sage": sage.version.version, "python": sys.version,
                         "numpy": np.__version__, "scipy": scipy.__version__,
                         "platform": platform.platform(), "executable": sys.executable},
            "script_sha256": hashlib.sha256(Path(__file__).read_bytes()).hexdigest(),
            "command": "OPENBLAS_NUM_THREADS=1 OMP_NUM_THREADS=1 VECLIB_MAXIMUM_THREADS=1 /usr/local/bin/sage --nodotsage -python verification/spin_chain_checks.py",
            "settings": {"eigsh_tol": TOL, "eigsh_ncv": 40, "eigsh_maxiter": 10000,
                         "base_seed": SEED, "arithmetic": "float64 real sparse; complex128 dense checks",
                         "entropy_log": "natural", "boundary_conditions_production": "PBC",
                         "thread_environment": {k: os.environ[k] for k in ("OPENBLAS_NUM_THREADS", "OMP_NUM_THREADS", "VECLIB_MAXIMUM_THREADS")}},
            "conventions": {
                "Ising": "H=-sum_j Z_j Z_{j+1} - g sum_j X_j, Pauli, g=1",
                "Potts3": "H=-sum_j (Z_j Zdag_{j+1}+h.c.) - g sum_j(X_j+Xdag_j), g=1",
                "clock": "Z|s>=exp(2*pi*i*s/q)|s>; X|s>=|s+1 mod q>; ZX=omega XZ",
                "PBC": "N bonds, including (N-1,0); site labels 0..N-1",
                "OBC": "N-1 bonds, no (N-1,0); checked at N=4 only",
                "normalization": "q=2 clock expression is 2*Ising, not Ising; the location g=1 is unchanged but energy and thermal beta units differ",
                "PBC_CFT": "S_n=(c/6)(1+1/n)*log[(N/pi)*sin(pi*ell/N)]+s_n+finite-size corrections",
                "OBC_boundary_CFT": "S_n=(c/12)(1+1/n)*log[(2*N/pi)*sin(pi*ell/N)]+boundary constant+corrections; interval must touch a physical end",
                "CFT_expected_c": {"ising": 0.5, "potts3": 0.8},
                "CMI": "von Neumann I(A:C|B)=S(AB)+S(BC)-S(B)-S(ABC); marginals computed separately by Schmidt SVD, no translation invariance assumption",
                "limits": "Finite matrices only: no continuum limit, sewing theorem, or Markov property is assumed or established."},
            "construction_checks": construction_checks(), "ground_states": []}
    save(data)
    for model, sizes in (("ising", (8, 10, 12, 14)), ("potts3", (6, 8, 10))):
        for N in sizes:
            result = ground_check(model, N)
            data["ground_states"].append(result)
            save(data)
            print(json.dumps({"model": model, "N": N, "E0": result["E0"],
                              "residual": result["residual_2norm"],
                              "half_S1": result["interval_entropies"][-1]["S1"],
                              "half_S2": result["interval_entropies"][-1]["S2"],
                              "CMI_full": result["CMI"][0]["I_A_C_given_B"],
                              "CMI_proper": result["CMI"][1]["I_A_C_given_B"],
                              "seconds": result["runtime_seconds"]}), flush=True)
    data["half_chain_cross_size_fits"] = {}
    for model in ("ising", "potts3"):
        selected = [r for r in data["ground_states"] if r["model"] == model]
        for n in (1, 2):
            fit = linear_fit(np.log([r["N"]/np.pi for r in selected]),
                             [r["interval_entropies"][-1][f"S{n}"] for r in selected], n)
            fit["sizes"] = [r["N"] for r in selected]
            data["half_chain_cross_size_fits"][f"{model}_n{n}"] = fit
    data["total_runtime_seconds"] = time.perf_counter()-begin
    data["status"] = "complete"
    save(data)
    print("COMPLETE", str(OUT), "seconds", data["total_runtime_seconds"], flush=True)


if __name__ == "__main__":
    main()
