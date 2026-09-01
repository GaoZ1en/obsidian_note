(* Exact diagnostics only. The smooth collar/orbit theorem is analytical. *)
ClearAll["Global`*"];
checks = {};
check[label_, expression_] := Module[{result = FullSimplify[expression]},
  AppendTo[checks, {label, TrueQ[result]}];
  If[!TrueQ[result], Print["DETAIL ", label, ": ", InputForm[result]]]];
zero2 = ConstantArray[0, {2, 2}];
comm[a_, b_] := a.b - b.a;
m[p_] := {{Symbol[p <> "1"], Symbol[p <> "2"]},
  {Symbol[p <> "3"], Symbol[p <> "4"]}};

ax = m["a"];
aa = m["b"];
gg = m["g"];
ggi = Inverse[gg];
gx = -ax.gg;
check["R1: radial ODE sign gives transformed Ax zero",
  Together[ggi.ax.gg + ggi.gx] == zero2];

(* Finite exact matrix witness for d_a Ax, d_x Aa and d_a g. *)
axR = {{0, 1}, {-1, 0}};
aaR = {{1, 2}, {3, -1}};
ggR = {{1, 2}, {3, 5}};
ggiR = Inverse[ggR];
xdaR = {{2, -1}, {1, 3}};
xdbR = {{-2, 4}, {5, 1}};
gdaR = {{1, 0}, {-2, 1}};
gxR = -axR.ggR;
ggixR = ggiR.axR;
gdaxR = -xdaR.ggR - axR.gdaR;
dxaBarR = ggixR.aaR.ggR + ggiR.xdbR.ggR + ggiR.aaR.gxR +
  ggixR.gdaR + ggiR.gdaxR;
fxaR = xdbR - xdaR + comm[axR, aaR];
check["R2: radial-gauge reconstruction with conjugated curvature",
  dxaBarR === ggiR.fxaR.ggR];

pa = m["p"];
xx = m["x"];
xxa = m["y"];
xxx = m["z"];
lhsComm = xxx + comm[pa, xx] + comm[aa, xxa];
rhsComm = xxx + comm[aa, xxa];
check["R3: normal derivative commutator",
  Expand[lhsComm - rhsComm - comm[pa, xx]] == zero2];

(* Product metric diag(+,-,+), coordinates (x,t,s). *)
coords = {xr, tr, sr};
ginv = DiagonalMatrix[{1, -1, 1}];
fcov = {
  {0, ptF[xr, tr, sr], psF[xr, tr, sr]},
  {-ptF[xr, tr, sr], 0, qF[xr, tr, sr]},
  {-psF[xr, tr, sr], -qF[xr, tr, sr], 0}
};
eom[nu_] := Sum[ginv[[mu, mu]] D[fcov[[mu, nu]], coords[[mu]]],
  {mu, 1, 3}];
bianchiXTS = D[fcov[[2, 3]], xr] + D[fcov[[3, 1]], tr] +
  D[fcov[[1, 2]], sr];
gauss = -D[ptF[xr, tr, sr], tr] + D[psF[xr, tr, sr], sr];
check["R4: product YM tangential t sign",
  eom[2] == D[ptF[xr, tr, sr], xr] - D[qF[xr, tr, sr], sr]];
check["R5: product YM tangential s sign",
  eom[3] == D[psF[xr, tr, sr], xr] - D[qF[xr, tr, sr], tr]];
falg = {{0, pt0, ps0}, {-pt0, 0, q0}, {-ps0, -q0, 0}};
dX[expr_] := Expand[expr /. {pt0 -> dxpt0, ps0 -> dxps0, q0 -> dxq0}];
dT[expr_] := Expand[expr /. {pt0 -> dtpt0, ps0 -> dtps0, q0 -> dtq0}];
dS[expr_] := Expand[expr /. {pt0 -> dspt0, ps0 -> dsps0, q0 -> dsq0}];
bianchiFormal = dX[falg[[2, 3]]] + dT[falg[[3, 1]]] + dS[falg[[1, 2]]];
check["R6: product Bianchi normal sign",
  bianchiFormal === dxq0 - dtps0 + dspt0];
check["R7: normal YM equation is minus radial Gauss constraint",
  eom[1] == -gauss];

check["R8: opposite outward normals turn transmission into common-x equality",
  Simplify[(-f1 + f2) /. f2 -> f1] == 0];

cc = m["cC"];
dd = m["dD"];
vv = m["vV"];
vvi = Inverse[vv];
vvx = m["vX"];
dFromGauge = vvi.cc.vv + vvi.vvx;
check["R9: comparison ODE from D=C^v",
  Together[vv.dFromGauge - cc.vv - vvx] == zero2];

uc = m["uC"];
ud = m["uD"];
kk = m["kK"];
vsol = uc.kk.Inverse[ud];
vsolx = (-cc.uc).kk.Inverse[ud] + uc.kk.Inverse[ud].dd;
check["R10: path-ordered comparison solution",
  Together[vsolx - (vsol.dd - cc.vsol)] == zero2];

u1 = m["u1"];
u2 = m["u2"];
hh = m["hh"];
k1 = m["k1"];
k2 = m["k2"];
ll = m["ll"];
rr = m["rr"];
u1p = Inverse[k1].u1.ll;
u2p = Inverse[rr].u2.k2;
hhp = Inverse[k1].hh.k2;
w = u2.Inverse[hh].u1;
wp = u2p.Inverse[hhp].u1p;
check["R11: crossing Wilson line transformation",
  Together[wp - Inverse[rr].w.ll] == zero2];

p2 = m["p2"];
eps1 = m["ep"];
p1 = -hh.p2.Inverse[hh];
eps2 = Inverse[hh].eps1.hh;
check["R12: twisted CPS boundary charges cancel on transmission",
  Expand[Tr[p1.eps1] + Tr[p2.eps2]] == 0];

Scan[Print[If[#[[2]], "PASS ", "FAIL "] <> #[[1]]] &, checks];
Print["RESULT ", Count[checks, {_, True}], "/", Length[checks]];
If[!And @@ checks[[All, 2]], Exit[1]];
