"""Pure validation adapter; function text is unchanged from run_cluster_checks.py.

The original runner executes at import time, so this adapter extracts only its
require() and validate() definitions. It performs no mathematical computation
and does not run subprocesses. See portable_copy_manifest.json for provenance.
"""
from decimal import Decimal
from fractions import Fraction

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
