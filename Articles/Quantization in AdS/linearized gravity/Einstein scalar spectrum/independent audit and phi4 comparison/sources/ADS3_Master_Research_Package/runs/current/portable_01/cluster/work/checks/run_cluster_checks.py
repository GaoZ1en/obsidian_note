#!/usr/bin/env python3
"""Fail-closed runner for the chapter's finite, symbolic, and numerical checks."""
from __future__ import annotations
import copy
import hashlib
import importlib.metadata
import json
import os
from pathlib import Path
import subprocess
import sys
import time
from datetime import datetime, timezone
from decimal import Decimal
from fractions import Fraction
if sys.flags.optimize:
    raise SystemExit("Refusing to run with optimized Python: assertions would be disabled.")
HERE=Path(__file__).resolve().parent
RUNS=HERE.parent/"runs"
RUNS.mkdir(exist_ok=True)
def require(condition,message):
    if not condition:
        raise ValueError(message)
def validate(name,d):
    require(isinstance(d,dict) and bool(d),f"{name}: empty/nonobject payload")
    if name=="independent_cluster_certificate":
        rows=d["independent_CG_checks"]
        require(len(rows)==171,"Expected 171 exact CG cases")
        require({r["R"] for r in rows}=={2,5,9,15},"Wrong CG degree coverage")
        require(all(0<=Fraction(r["overlap_squared"])<=1 for r in rows),"CG squared overlap outside [0,1]")
        mob=d["mobius_checks"]
        require([(r["N"],r["all_graph_component_partitions"],r["passed"]) for r in mob]==[(2,2,True),(3,5,True),(4,15,True),(5,52,True),(6,203,True),(7,877,True)],"Incomplete Mobius coverage")
        ex=d["exchange_multiplicity_checks"]
        require(len(ex)==30,"Expected 30 exchange sectors")
        require(all(2*r["even_rank"]==r["ordered_K"]+r["trace_T"] and 2*r["odd_rank"]==r["ordered_K"]-r["trace_T"] for r in ex),"Exchange rank identity")
    elif name=="cg_endpoint_checks":
        rows=d["direct_polynomial_CG_checks"]
        require(len(rows)==6 and all(r["match"] is True for r in rows),"Direct CG mismatch/incomplete")
        rows=d["large_endpoint_asymptotic_checks"]
        require(len(rows)==3,"Expected three endpoint asymptotic cases")
        for r in rows:
            errs=[abs(Decimal(x)-1) for x in r["ratios"]]
            require(len(errs)==3 and errs[2]<errs[1]<errs[0] and errs[2]<Decimal("0.0003"),"Endpoint asymptotic ratio test")
    elif name=="fourbody_nullity_checks":
        require(d["z3_identity"] is True and d["tail_identity"] is True,"Nullity/tail identity false")
        require(int(d["remainder_numerator_x_degree"])==15,"Remainder degree not 15")
        rows=d["transient_degree_checks"]
        require(rows==[[q,15+3*q,15+3*q] for q in range(9)],"Transient coverage mismatch")
        expected={"0,-1":9,"0,1":7,"1,-1":29,"1,1":27,"2,-1":68,"2,1":64,"3,-1":129,"3,1":125,"6,-1":532,"6,1":522}
        require(d["nullity_even_odd_Q0_Q2"]==expected,"Nullity values mismatch")
    elif name=="fredholm_formula_check":
        require(d["u0_gamma_rational_identity_both_parities"] is True,"Chiral rational identity false")
        rows=d["finite_minimum_checks"]
        require([r["t"] for r in rows]==list(range(2,129)),"Minimum cutoff coverage incomplete")
        require(all(r["bound_pass"] is True and r["exception"]==(r["t"]==9) for r in rows),"Minimum case failed")
        tail=d["independent_uniform_tail"]
        require(tail["T"]==129 and tail["above_7_over_200"] is True,"Uniform tail missing")
        require(Fraction(tail["Gershgorin_norm_bound"])==Fraction(18595,2397824)<Fraction(1,100),"Tail bound mismatch")
        require(Fraction(tail["A_lower_bound"])==Fraction(116,875)>Fraction(7,200),"Tail spectral lower bound")
    elif name=="convention_certificates":
        require(d["all_checks_pass"] is True,"Convention overall flag false")
        rows=d["oriented_baseline_checks"]
        require(len(rows)==60 and all(r["baseline_state_included"] is True for r in rows),"Orientation check incomplete")
        require(all((Fraction(r["shift"])>0 if r["p"]<r["q"] else Fraction(r["shift"])==0) for r in rows),"Orientation shift wrong")
        rows=d["twisted_exchange_checks"]
        require(len(rows)==30 and any(r["negative_twist_entries"]>0 for r in rows),"Twist test incomplete or vacuous")
        require(all(2*r["even_rank"]==r["ordered_dimension"]+r["trace"] and 2*r["odd_rank"]==r["ordered_dimension"]-r["trace"] for r in rows),"Twisted rank wrong")
        rows=d["finite_minimum_checks"]
        require([r["t"] for r in rows]==list(range(2,129)) and all(r["passed"] is True for r in rows),"Fraction minimum certificate incomplete")
        require(sum(r["t9_below_threshold"] for r in rows)==1,"t=9 comparison absent")
    elif name=="nonchiral_rational_identity":
        rows=d["rational_identities"]
        require(len(rows)==2 and {r["eta"] for r in rows}=={-1,1},"Both nonchiral parities required")
        require(all(r["all_index_rational_identity"] is True and r["numerator_C_degree"]==r["denominator_C_degree"]==10 and len(r["numerator_coefficients_descending_C"])==11 for r in rows),"Nonchiral rational identity incomplete")
        require(d["prefix_pass"] is True and d["prefix"]==["25/31","8875/7843","1413125/1388211"],"Nonchiral prefix mismatch")
    elif name=="nonchiral_gamma_value":
        require(d["all_checks_pass"] is True and d["working_precision"]==80,"Gamma evaluation failed")
        require((d["Delta"],d["Q"],d["s"],d["epsilon"])==(2,1,20,1),"Wrong Gamma specialization")
        rows=d["tails"]
        require(len(rows)==4 and {(r["u"],r["eta"]) for r in rows}=={(0,1),(0,-1),(1,1),(1,-1)},"Gamma tail missing")
        require(all(r["real_positive"] is True and Decimal(r["scaled_root_residual"])<Decimal("1e-70") for r in rows),"Gamma root/phase check failed")
        require(Decimal(d["absolute_difference_from_retained_decimal"])<Decimal("1e-58"),"Gamma retained-value mismatch")
    else:
        raise ValueError("Unknown checker")
programs=[
 ("independent_cluster_certificate","independent_cluster_certificate.json"),
 ("cg_endpoint_checks","cg_endpoint_results.json"),
 ("fourbody_nullity_checks","independent_results.json"),
 ("fredholm_formula_check","fredholm_formula_results.json"),
 ("convention_certificates","convention_results.json"),
 ("nonchiral_rational_identity","nonchiral_rational_results.json"),
 ("nonchiral_gamma_value","nonchiral_gamma_results.json")]
manifest={"started_utc":datetime.now(timezone.utc).isoformat(),"python_executable":sys.executable,
          "python_version":sys.version.split()[0],"optimization_level":sys.flags.optimize,
          "dependencies":{p:importlib.metadata.version(p) for p in ("sympy","mpmath")},
          "program_count_expected":len(programs),"runs":[],"all_checks_pass":False,
          "scope":"Local symbolic/finite interface checks and one high-precision numerical specialization; infinite theorems are proved in cluster_appendices.md.",
          "prior_environment_attempts":[{"environment":"default Python","scripts":["fourbody_nullity_checks","fredholm_formula_check","cg_endpoint_checks"],"status":"failed before checking","reason":"ModuleNotFoundError: sympy"},{"environment":"CODEX_PRIMARY_RUNTIME_PYTHON","scripts":["fourbody_nullity_checks","fredholm_formula_check","cg_endpoint_checks"],"status":"failed before checking","reason":"ModuleNotFoundError: sympy"}]}
env=os.environ.copy()
env["PYTHONOPTIMIZE"]="0"
env["PYTHONDONTWRITEBYTECODE"]="1"
for name,output_name in programs:
    source=HERE/(name+".py");output=HERE/output_name
    output.unlink(missing_ok=True)
    start=time.monotonic()
    done=subprocess.run([sys.executable,"-B",str(source)],cwd=HERE,env=env,capture_output=True,text=True,timeout=180)
    log=RUNS/(name+".log")
    log.write_text(done.stdout+("\nSTDERR:\n"+done.stderr if done.stderr else ""))
    row={"checker":name,"elapsed_seconds":round(time.monotonic()-start,3),"returncode":done.returncode,
         "source_sha256":hashlib.sha256(source.read_bytes()).hexdigest(),"log":log.name,"semantic_pass":False}
    manifest["runs"].append(row)
    try:
        require(done.returncode==0,f"{name}: nonzero subprocess exit")
        require(output.is_file(),f"{name}: expected output absent")
        data=json.loads(output.read_text())
        validate(name,data)
        # Every validator must reject an empty or missing-data payload.
        for bad in ({}, {"unrelated":True}):
            try:validate(name,bad)
            except (ValueError,KeyError,TypeError):pass
            else:raise ValueError(f"{name}: fail-closed self-test accepted incomplete payload")
        row.update({"semantic_pass":True,"empty_payload_rejected":True,
                    "output":output.name,"output_sha256":hashlib.sha256(output.read_bytes()).hexdigest()})
    except Exception as exc:
        row["error"]=str(exc)
        (RUNS/"cluster_run_manifest.json").write_text(json.dumps(manifest,indent=2))
        raise
manifest["all_checks_pass"]=len(manifest["runs"])==len(programs) and all(r["semantic_pass"] for r in manifest["runs"])
manifest["finished_utc"]=datetime.now(timezone.utc).isoformat()
(RUNS/"cluster_run_manifest.json").write_text(json.dumps(manifest,indent=2))
print(json.dumps({"programs":len(programs),"all_checks_pass":manifest["all_checks_pass"],"manifest":str(RUNS/"cluster_run_manifest.json")}))
