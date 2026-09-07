(* Exact finite witnesses for the 2026-09-07 corner audit supplement.
   These do not prove the energy-space Green identity or distribution descent. *)
ClearAll["Global`*"];
$Assumptions = lx > 0 && ly > 0 && tf > ti &&
  Element[{lx, ly, ti, tf, a, b, c, m}, Reals];
checks = <||>;
zero[label_, expr_] := (checks[label] = TrueQ[FullSimplify[expr] == 0]);
space[f_] := Integrate[Expand[f], {x, 0, lx}, {y, 0, ly}];
timed[f_] := Integrate[Expand[f], {t, ti, tf}];
endpoint[f_] := (f /. t -> tf) - (f /. t -> ti);
form[f_, h_, mass2_] := space[D[f,x] D[h,x] + D[f,y] D[h,y] + mass2 f h];
weak[f_, h_, mass2_] := timed[space[D[f,t] D[h,t]] - form[f,h,mass2]];
endterm[f_, h_] := endpoint[space[D[f,t] h]];
eta = a + b t + c t^2;
zero["massless endpoint witness raw", weak[t, eta, 0] - lx ly endpoint[eta]];
zero["massless endpoint correction", weak[t, eta, 0] - endterm[t, eta]];
checks["raw response is nonzero for unequal endpoints"] =
  TrueQ[FullSimplify[weak[t, t, 0] > 0]];
phi = t x;
psi = eta (1 + x + 2 y + x y);
zero["manufactured field solves KG", D[phi,{t,2}] - D[phi,{x,2}] - D[phi,{y,2}]];
outward = timed[Integrate[t ((psi /. x -> 0) - (psi /. x -> lx)), {y,0,ly}]];
zero["nonzero outward response sign", weak[phi,psi,0] - endterm[phi,psi] - outward];
checks["outward response witness is nonzero"] =
  TrueQ[FullSimplify[outward /. {a->1,b->0,c->0,ti->0,tf->1,lx->1,ly->1}] != 0];
w = (a + b t) x (lx-x) y (ly-y);
checks["lift difference has zero trace"] =
  And @@ (TrueQ[FullSimplify[#] == 0]& /@ {w /. x->0,w /. x->lx,w /. y->0,w /. y->ly});
zero["zero-trace temporal Green identity",weak[phi,w,0] - endterm[phi,w]];
zero["endpoint-separated lift independence",
 (weak[phi,psi+w,0]-endterm[phi,psi+w])-(weak[phi,psi,0]-endterm[phi,psi])];
massphi=Cos[m t];
zero["massive temporal Green integrand",
 space[D[massphi,t] D[eta,t]]-form[massphi,eta,m^2]-
 D[space[D[massphi,t] eta],t]];
lambdaComponents={0,a};
zero["semibasic vertical contraction",lambdaComponents.{1,0}];
zero["mixed initial-history exterior derivative",
 D[lambdaComponents[[2]],a]-D[lambdaComponents[[1]],q]-1];
(* S^{-1}: the new-order anti-time-ordered coefficient is affine in T_k. *)
tc={tc1,tc2,tc3,tc4,tc5,tc6};
sSeries=1+Sum[I^j tc[[j]] eps^j/j!,{j,1,6}];
sInverse=Normal[Series[1/sSeries,{eps,0,6}]];
anti=Table[Expand[k! Coefficient[sInverse,eps,k]/(-I)^k],{k,1,6}];
checks["unitarity highest-order coefficient and lower-order remainder"] =
 And@@Table[
   TrueQ[Coefficient[anti[[k]],tc[[k]]]==(-1)^(k+1)] &&
   And@@Table[FreeQ[Expand[anti[[k]]-(-1)^(k+1)tc[[k]]],tc[[j]]],{j,k,6}],
   {k,1,6}];
Print[ExportString[<|"scope"->"finite exact algebraic witnesses only",
 "count"->Length[checks],"allPassed"->And@@Values[checks],"checks"->checks|>,"RawJSON"]];
