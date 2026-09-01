(* Exact diagnostics for Section 10; not proofs of relation completeness or regularity. *)
ClearAll["Global`*"];
checks={};
check[label_,expr_]:=AppendTo[checks,{label,TrueQ[FullSimplify[expr]]}];

check["T1: Coulomb boundary constraint is history-action covariant",
 (u-fss)+dsq+fss==u+dsq];
check["T2: electric normal trace is history-action invariant",
 D[r[t]+tf[t],t]-(ww[t]+D[tf[t],t])==D[r[t],t]-ww[t]];
check["T3: electric tangential trace is history-action invariant",
 D[q[t,s]+D[f[t,s],s],t]-D[al[t,s]+D[f[t,s],t],s]
 ==D[q[t,s],t]-D[al[t,s],s]];
check["T4: magnetic trace is history-action invariant",
 (vv+tds)-(dsr+tds)==vv-dsr];

check["T5: Hamilton-Jacobi interface one-form cancels",
 (-(ey1+ey2) dal/e2-(bb1+bb2) dq/e2/.{ey2->-ey1,bb2->-bb1})==0];
check["T6: symplectic interface flux cancels",
 (-(dey1+dey2) Wedge[dal1,dal2]/e2
 -(db1+db2) Wedge[dq1,dq2]/e2/.{dey2->-dey1,db2->-db1})==0];

check["T7: local stress-energy work identity modulo circle derivative",
 (b (qdot-dsa)-(b qdot-a eydot-dsba)/.{eydot->-dsb,dsba->a dsb+b dsa})==0];
check["T8: polarization Hamiltonian has pure port power",
 (b qdot-a eydot)+(adot ey+a eydot)==b qdot+ey adot];
check["T9: matched polarization Hamiltonians give connected zero-mode energy",
 (e2 L nu^2/(2 C)+al nu)+(e2 L (-nu)^2/(2 C)+al (-nu))
 ==e2 L nu^2/C];

check["T10: restoration removes the normal jump", j-2 tt (j/(2 tt))==0];
check["T11: restoration removes the temporal history", al+(-al)==0];
check["T12: common zero-mode cut action retains the Wilson coordinate",
 (a1+ff)-(a2+ff)==a1-a2];
check["T13: boundary-polarized regional energy cut-frame shift",
 ((hraw+(al+fdot) ey/e2)-(hraw+al ey/e2))==ey fdot/e2];
check["T14: matched cut-frame energy shifts cancel",
 ((ey1+ey2) fdot/e2/.ey2->-ey1)==0];

Scan[Print[If[#[[2]],"PASS ","FAIL "]<>#[[1]]]&,checks];
Print["RESULT ",Count[checks,{_,True}],"/",Length[checks]];
If[!And@@checks[[All,2]],Exit[1]];
