"""Numerical support for the critical H^(3/2) Gram determinant theorem.

This is NOT a proof of a Fredholm determinant limit. The analytic input is that
V^(-1/2) U_g^* V U_g V^(-1/2)-1 is trace class. We approximate the compression
of this full Gram operator, not the Gram of a square, truncated FIO matrix.
Output modes are deliberately much more numerous than input modes.
Every execution writes a unique private output directory.
"""
from pathlib import Path
import hashlib
import json
import math
import os
import tempfile
import warnings
import numpy as np


def weights(ns):
    ns = np.asarray(ns, dtype=np.float64)
    return np.where(np.abs(ns) >= 2, np.abs(ns) * (ns * ns - 1), 1.0)


def critical_matrix(js, ks, g, gp):
    grid = len(g)
    values = np.exp(1j * g[:, None] * js[None, :]) / gp[:, None]
    coeffs = np.fft.fft(values, axis=0) / grid
    return coeffs[ks % grid, :] * np.sqrt(weights(ks)[:, None] / weights(js)[None, :])


def gram_record(label, N, g, gp, extra_output=0):
    js = np.arange(-N, N + 1)
    M = 3 * N + 24 + extra_output
    ks = np.arange(-M, M + 1)
    op = critical_matrix(js, ks, g, gp)
    gram = op.conj().T @ op
    anti = float(np.linalg.norm(gram - gram.conj().T, ord=np.inf))
    gram = (gram + gram.conj().T) / 2
    ev = np.linalg.eigvalsh(gram)
    sign, logdet = np.linalg.slogdet(gram)
    return {"map": label, "input_cutoff": N, "output_cutoff": M,
            "quadrature_points": len(g), "min_eigenvalue": float(ev[0]),
            "hermitian_residual_inf": anti,
            "slogdet_sign_real": float(sign.real),
            "slogdet_sign_imag": float(sign.imag),
            "logdet_compressed_full_gram": float(logdet),
            "det_compressed_full_gram": float(np.exp(logdet))}


def main():
    records = []
    diagnostics = []
    with warnings.catch_warnings(record=True) as caught:
        warnings.simplefilter("always")
        grid = 8192
        x = 2 * np.pi * np.arange(grid) / grid
        eps = 0.1
        g = x + eps * np.sin(2 * x)
        gp = 1 + 2 * eps * np.cos(2 * x)
        for N in [8, 16, 32, 64, 128]:
            records.append(gram_record("x+0.1sin(2x)", N, g, gp))
        refined = gram_record("x+0.1sin(2x), extra output modes", 64, g, gp, extra_output=80)
        records.append(refined)
        base64 = records[3]
        diagnostics.append({"name": "output_tail_refinement_at_N64",
                            "absolute_logdet_difference": abs(refined["logdet_compressed_full_gram"] - base64["logdet_compressed_full_gram"])})
        r = math.tanh(0.2)
        gm = x - 2 * np.angle(1 + r * np.exp(1j * x))
        pm = (1 - r * r) / np.abs(1 + r * np.exp(1j * x)) ** 2
        records.append(gram_record("PSL r=tanh(0.2)", 32, gm, pm))
        js = np.arange(2, 25)
        ks = np.arange(2, 161)
        d = critical_matrix(js, ks, gm, pm)
        quotient_residual = float(np.linalg.norm(d.conj().T @ d - np.eye(len(js)), ord=np.inf))
        diagnostics.append({"name": "PSL_positive_quotient_isometry", "input_modes": [2,24], "output_modes": [2,160], "residual_inf": quotient_residual})
        js0 = np.arange(-16, 17)
        rot = critical_matrix(js0, np.arange(-72, 73), x + 0.37, np.ones(grid))
        rotres = float(np.linalg.norm(rot.conj().T @ rot - np.eye(len(js0)), ord=np.inf))
        diagnostics.append({"name": "rotation_isometry", "residual_inf": rotres})
        warning_records = [{"category": str(w.category.__name__), "message": str(w.message)} for w in caught]
    small_N = [r for r in records if r["map"] == "x+0.1sin(2x)"]
    finite_checks = {
        "positive_finite_grams": all(r["min_eigenvalue"] > 0 for r in records),
        "observed_logdet_decreases_to_zero_on_sampled_cutoffs": all(abs(a["logdet_compressed_full_gram"]) > abs(b["logdet_compressed_full_gram"]) for a,b in zip(small_N,small_N[1:])),
        "output_tail_refinement_below_1e_minus_9": diagnostics[0]["absolute_logdet_difference"] < 1e-9,
        "PSL_quotient_residual_below_1e_minus_9": quotient_residual < 1e-9,
        "rotation_residual_below_1e_minus_9": rotres < 1e-9,
    }
    source = Path(__file__).resolve()
    report = {"numpy_version": np.__version__, "source": str(source),
              "source_sha256": hashlib.sha256(source.read_bytes()).hexdigest(),
              "scope": "finite numerical support only; not a proof of trace class or the infinite determinant limit",
              "assumptions": {"epsilon": eps, "minimum_derivative": float(gp.min()), "weights_projective_modes": 1.0, "float_type": "complex128/float64"},
              "records": records, "diagnostics": diagnostics,
              "finite_checks": finite_checks, "warnings": warning_records}
    root = Path(os.environ.get("DSH_HOME") or str(Path.home()/".dsh")) / "research-results" / "kernel-exports"
    root.mkdir(parents=True, exist_ok=True)
    outdir = Path(tempfile.mkdtemp(prefix="critical-gram.", dir=root))
    output = outdir/"results.json"
    output.write_text(json.dumps(report, indent=2)+"\n", encoding="utf8")
    print(json.dumps({"results": str(output), "finite_checks": finite_checks, "warnings": warning_records}, indent=2))
    if not all(finite_checks.values()):
        raise SystemExit(1)

if __name__ == "__main__":
    main()
