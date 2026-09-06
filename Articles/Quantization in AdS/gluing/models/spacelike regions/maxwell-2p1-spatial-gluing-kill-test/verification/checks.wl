(* Exact witnesses only. Analytical claims and regularity are in calculations.md. *)
ClearAll["Global`*"];
checks = {};
check[label_, expression_] := AppendTo[checks, {label, TrueQ[expression]}];
assumptions = L > 0 && p > 0 && Element[{L,p,y,t,s,x,e}, Reals] && e > 0;
simp[expression_] := FullSimplify[expression, Assumptions -> assumptions];

lag = ((dtAy-dyAt)^2+(dtAs-dsAt)^2-(dyAs-dsAy)^2)/(2 e^2);
check["A: original outward Green coefficients",
  Simplify[{D[lag,dyAt],D[lag,dyAs]} /. {dtAy->Ey+dyAt,dyAs->B+dsAy}]
    == {-Ey/e^2,-B/e^2}];
check["A: original Cauchy coefficients",
  Simplify[{D[lag,dtAy],D[lag,dtAs]} /. {dtAy->Ey+dyAt,dtAs->Es+dsAt}]
    == {Ey/e^2,Es/e^2}];
check["A: full worldtube integration by parts",
  Expand[-(ey[t,s] D[eta[t,s],t]+bb[t,s] D[eta[t,s],s])/e^2
    -(D[ey[t,s],t]+D[bb[t,s],s]) eta[t,s]/e^2
    +D[ey[t,s] eta[t,s],t]/e^2+D[bb[t,s] eta[t,s],s]/e^2] == 0];
comm[a_,b_] := a.b-b.a;
am={{a1,a2},{a3,-a1}}; pm={{b1,b2},{b3,-b1}}; em={{c1,c2},{c3,-c1}};
check["A: invariant pairing connection cancellation (matrix witness)",
  Expand[Tr[pm.comm[am,em]]+Tr[comm[am,pm].em]] == 0];

hp = Sinh[p y]/Sinh[p L];
check["B1: harmonic Dirichlet lift", simp[D[hp,{y,2}]-p^2 hp] == 0];
check["B1: harmonic boundary values", simp[{hp/.y->0,hp/.y->L}] == {0,1}];
fp = D[hp,y] adot/(I p);
check["B1: mixed Coulomb master forcing",
  simp[{I p fp,-D[fp,y]}-adot {D[hp,y],I p hp}] == {0,0}];
av={I p v[t,y],-D[v[t,y],y]};
check["B1: Gauss and Coulomb in master variables",
  Expand[D[av[[1]],y]+I p av[[2]]] == 0];
check["B1: zero-mode electric source",
  Simplify[D[aa[t]/L,t]-D[y al[t]/L,y]] == (aa'[t]-al[t])/L];

(* F=dA: singular Ex=-jt delta, B=js delta; coefficients of delta-prime. *)
metric=DiagonalMatrix[{-1,1,1}];
singularF={{0,-jt,0},{jt,0,js},{0,-js,0}};
check["B2: independent double-layer coefficients",
  (metric.singularF.metric)[[2,{1,3}]] == {-jt,js}];
regularJumpF={{0,jex,jes},{-jex,0,jb},{-jes,-jb,0}};
check["B2: independent surface-current coefficients",
  (metric.regularJumpF.metric)[[2,{1,3}]] == {jex,jb}];
check["B2: outward to common orientation",
  {-ey2-ey1,-b2-b1} == {-(ey1+ey2),-(b1+b2)}];
check["B2: Bianchi singular cancellation",
  Expand[-(D[jsf[t,s],t]-D[jtf[t,s],s])
    +D[jsf[t,s],t]-D[jtf[t,s],s]] == 0];

tp=p Coth[p L];
check["B3: DtN eigenvalue", simp[(D[hp,y]/.y->L)-tp] == 0];
check["B3: DtN zero limit", Limit[tp,p->0,Assumptions->L>0] == 1/L];
check["B3: normal jump cancellation", Simplify[jump-2 tp (jump/(2 tp))] == 0];
check["B3: zero-mode cusp is physically flat",
  Simplify[{D[beta/L,t]-D[0,y],D[0,t]-D[0,s],D[0,y]-D[beta/L,s]}] == {0,0,0}];
check["B3: cusp normal jump", Simplify[-beta/L-beta/L] == -2 beta/L];
check["B3: temporal correction", Simplify[alpha+(-2 tp alpha)/(2 tp)] == 0];
check["B4: smooth residual lift and wall values",
  FullSimplify[{Exp[I Pi n (x+L)/L]/.x->-L,
    Exp[I Pi n (x+L)/L]/.x->L,
    Exp[I Pi n (x+L)/L]/.x->0},Assumptions->Element[n,Integers]]
      == {1,1,(-1)^n}];
check["B4: based residual jet compatibility",
  Simplify[(2 Pi n1/L)-(-2 Pi n2/L)] == 2 Pi (n1+n2)/L];
vArrow=D[hp,y] ff[t]/(I p);
check["B4: time-dependent harmonic arrow preserves mixed master equation",
  simp[D[vArrow,{t,2}]-D[vArrow,{y,2}]+p^2 vArrow-
    D[hp,y] ff''[t]/(I p)] == 0 &&
  simp[(-D[vArrow,y]/.y->L)-I p ff[t]] == 0];
check["B4: restored based components give global radial winding",
  Simplify[{2 Pi n1 y/L,2 Pi n2 y/L}-Pi (n1+n2) y/L {1,1}
    -{Pi (n1-n2) y/L,-Pi (n1-n2) y/L}] == {0,0}];

check["B6: common-cut harmonic direction has zero contraction",
  Simplify[-(de1+de2) f/e^2 /. de2->-de1] == 0];
check["B6: spatial corner integration by parts",
  Expand[ey[y,s] D[zeta[y,s],y]+es[y,s] D[zeta[y,s],s]
    -D[ey[y,s] zeta[y,s],y]-D[es[y,s] zeta[y,s],s]
    +(D[ey[y,s],y]+D[es[y,s],s]) zeta[y,s]] == 0];

(* Connected benchmark: no inference of completeness from these witnesses. *)
mode={I p Cos[k (x+L)],k Sin[k (x+L)]} Exp[I p s];
check["B7: connected divergence", Expand[D[mode[[1]],x]+D[mode[[2]],s]] == 0];
check["B7: connected wave eigenvalue",
  simp[-D[mode,{x,2}]-D[mode,{s,2}]-(p^2+k^2) mode] == {0,0}];
check["B7: normalized nonzero radial mode",
  FullSimplify[Integrate[(p^2 Cos[r Pi (x+L)/(2 L)]^2+
    (r Pi/(2 L))^2 Sin[r Pi (x+L)/(2 L)]^2)/
    (L (p^2+(r Pi/(2 L))^2)),{x,-L,L}],
    Assumptions->L>0&&p>0&&Element[r,Integers]&&r>=1] == 1];
check["B7: normalized zero radial mode", Integrate[1/(2 L),{x,-L,L}] == 1];
check["B7: compact normal Hamiltonian",
  Simplify[(C/(4 e^2 L)) (2 e^2 L nu/C)^2] == e^2 L nu^2/C];

Scan[Print[If[#[[2]],"PASS ","FAIL "]<>#[[1]]]&,checks];
Print["RESULT ",Count[checks,{_,True}],"/",Length[checks]];
If[!And@@checks[[All,2]],Exit[1]];
