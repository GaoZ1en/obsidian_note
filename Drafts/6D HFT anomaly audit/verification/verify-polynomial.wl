ClearAll["Global`*"];
roots={r1,r2,r3};
ahatRoots=Normal[Series[Times@@((z #/2)/Sinh[z #/2]& /@ roots),{z,0,4}]];
p1r=Total[roots^2];
p2r=Total[Times@@#& /@ Subsets[roots^2,{2}]];
ahatExpected=1-z^2 p1r/24+z^4 (7p1r^2-4p2r)/5760;
ahat=1-z^2 p1/24+z^4(7p1^2-4p2)/5760;
ch=Normal[Series[Exp[z x]+Exp[-z x],{z,0,4}]];
derived=Expand[-Coefficient[Expand[ahat ch],z,4]/2];
expected=-(7p1^2-4p2)/5760+p1 x^2/48-x^4/24;
ic=-(7p1^2-4p2)/5760-p1 c2/48-c2^2/24;
it=-(7p1^2-4p2)/5760+p1 t2/96-t4/48;
gRed=Expand[ic+(7p1^2-4p2)/5760];
traceR=Expand[-7 rr2^2/(4*5760)+(rr2^2/8-rr4/4)/1440];
checks=<| "Ahat_from_roots"->(Expand[ahatRoots-ahatExpected]===0), "SU2_chern_character"->(Expand[ch-(2+z^2 x^2+z^4 x^4/12)]===0), "SMW_polynomial_from_product"->(Expand[derived-expected]===0), "Chern_trace_conversion"->(Expand[(ic/.c2->-x^2)-expected]===0), "trace_form_conversion"->(Expand[(it/.{t2->2x^2,t4->2x^4})-expected]===0), "SU2_quartic_reduction"->(Expand[2x^4-(2x^2)^2/2]===0), "flat_polynomial_nonzero"->(Expand[expected/.{p1->0,p2->0}]===-x^4/24), "gravity_effective_one_complex_singlet"->(Expand[(ic/.c2->0)+(7p1^2-4p2)/5760]===0), "irreducible_p2_coefficient"->(Coefficient[ic,p2]===1/1440), "gravity_vector_trace_conversion"->(Expand[traceR+(rr4+5rr2^2/4)/5760]===0), "Lee_Tachikawa_half_doublet_match"->(Expand[gRed+c2(c2+p1/2)/24]===0), "vectorlike_pair_cancels"->(Expand[ic+(-ic)]===0), "twelve_copies_still_local_anomalous"->(Expand[12 gRed+c2(c2+p1/2)/2]===0), "scalar_prefactor_weight"->(-6+2+3/2+1+3/2===0), "canonical_spinor_weight"->(1+3/2===5/2), "scale_invariant_metric_weight"->(2-2===0), "scale_invariant_spinor_weight"->(3/2-3/2===0) |>;
report = <|"checks"->checks,"allPassed"->And@@Values[checks],"I8_Chern"->ic,"I8_trace"->it,"I8_Cartan"->expected,"reducible_part"->gRed|>;
Print[report];
If[!TrueQ[report["allPassed"]], Exit[1]];

