(* Run one case in a fresh kernel. Cases: constraints, ground, resonance, mixing.
   Set verificationCase before Get. The constraints case requires xAct/xCoba.
   Every entry of result is a residual expected to vanish. *)
caseName=If[ValueQ[verificationCase],verificationCase,"ground"];
Switch[caseName,
"constraints",
Needs["xAct`xTensor`"];Needs["xAct`xTras`"];Needs["xAct`xCoba`"];
DefManifold[M3,3,{a,b,c,d,e,f}];
DefChart[ch,M3,{0,1,2},{tt[],rr[],ang[]}];
DefMetric[-1,met[-a,-b],CD];DefScalarFunction[FF];DefScalarFunction[DD];
MetricInBasis[met,-ch,DiagonalMatrix[{-FF[tt[],rr[]]Exp[-2DD[tt[],rr[]]],1/FF[tt[],rr[]],rr[]^2}]];
MetricCompute[met,ch,All];
gm=DiagonalMatrix[{-FF[tt[],rr[]]Exp[-2DD[tt[],rr[]]],1/FF[tt[],rr[]],rr[]^2}];
ee=Table[ToValues[RicciCD[{i,-ch},{j,-ch}]]-gm[[i+1,j+1]]ToValues[RicciScalarCD[]]/2-gm[[i+1,j+1]],{i,0,2},{j,0,2}];
ee=ee/.{FF[tt[],rr[]]->fv,DD[tt[],rr[]]->dv,Derivative[0,1][FF][tt[],rr[]]->fr,Derivative[1,0][FF][tt[],rr[]]->ft,Derivative[0,1][DD][tt[],rr[]]->dr,rr[]->r};
gmat=DiagonalMatrix[{-fv Exp[-2dv],1/fv,r^2}];
grad={fv Exp[-dv]pv,rv,0};
stress=Outer[Times,grad,grad]-gmat(grad.Inverse[gmat].grad+m2 phv^2)/2;
rules={fr->2r-k2 r/2(fv(pv^2+rv^2)+m2 phv^2),dr->-k2 r/2(pv^2+rv^2),ft->-k2 r fv^2 Exp[-dv]pv rv};
res=FullSimplify[({ee[[1,1]],ee[[1,2]],ee[[2,2]]}-k2/2{stress[[1,1]],stress[[1,2]],stress[[2,2]]})/.rules];
result=<|"Exact Einstein tt,tr,rr constraints"->res|>;
,
"ground",
Clear[r,s,del,b,bc];$Assumptions=del>1&&r>0;
u[x_]:=(1+x^2)^(-del/2)/Sqrt[2Pi];
ph[x_]:=u[x](b+bc);
xx[x_]:=del^2 u[x]^2/(1+x^2)^2 (x^2(b+bc)^2-(b-bc)^2);
src[x_]:=Expand[x/2((1+x^2)xx[x]+del(del-2)ph[x]^2)];
mass[r_]=FullSimplify[Integrate[src[s],{s,0,r},Assumptions->del>1&&r>0]];
massExpected=del/(4Pi)(2b bc(1-(1+r^2)^(1-del))-r^2(1+r^2)^(-del)(b^2+bc^2));
quart=FullSimplify[Coefficient[Coefficient[Expand[-Pi r xx[r] mass[r]],b,2],bc,2]];
coef=FullSimplify[Integrate[quart,{r,0,Infinity},Assumptions->del>1]];
target=del^2(7+2del-8del^2)/(16Pi(4del^2-1));
ff=1+r^2;pt=-I del u[r](b-bc);pr=D[ph[r],r];
stressTT=(pt^2+ff^2 pr^2+ff del(del-2)ph[r]^2)/2;
stressRR=(pr^2+pt^2/ff^2-del(del-2)ph[r]^2/ff)/2;
lapse=del/(8Pi)ff^-del(b+bc)^2-del^2/(4Pi(del+1))ff^(-del-1)(b^2+bc^2);
responseAction=-2Pi r/4((mass[r]+2ff lapse)*stressTT/ff^2+mass[r]*stressRR);
actionCoeff=FullSimplify[Integrate[Coefficient[Coefficient[Expand[responseAction],b,2],bc,2],{r,0,Infinity},Assumptions->del>1]];
seedTT=del/(4Pi);seedRR=del/(4Pi ff^2)(1-ff^(1-del));
pairTT=(del^2 u[r]^2+ff^2 D[u[r],r]^2+ff del(del-2)u[r]^2)/2;
pairRR=(D[u[r],r]^2+del^2 u[r]^2/ff^2-del(del-2)u[r]^2/ff)/2;
staticCoeff=FullSimplify[Integrate[-2Pi r(seedTT pairTT/ff^2+seedRR ff^2 pairRR),{r,0,Infinity},Assumptions->del>1]];
result=<|"Integrated mass response"->FullSimplify[mass[r]-massExpected],
"Canonical quartic coefficient"->FullSimplify[coef-target],
"Independent on-shell action coefficient"->FullSimplify[actionCoeff-target],
"Ground KG normalization"->FullSimplify[4Pi del Integrate[r/ff u[r]^2,{r,0,Infinity},Assumptions->del>1]-1],
"Binding coefficient at Delta=2"->FullSimplify[(32Pi target/.del->2)+56/5],
"Sign-change root"->FullSimplify[(7+2del-8del^2)/.del->(1+Sqrt[57])/8],
"Two-boson matrix factor"->D[z^2,{z,2}]-2,
"Mass renormalization coefficient"->FullSimplify[Coefficient[Expand[(del+ep dd)(del+ep dd-2)-del(del-2)],ep]-2(del-1)dd],
"Static mixed-frequency contribution"->FullSimplify[staticCoeff+del^2(del-1)/(4Pi(2del-1))],
"Same-sign contribution"->FullSimplify[target-staticCoeff+del^2(2del-3)/(16Pi(4del^2-1))]|>;
,
"resonance",
Clear[r,del,amp,z];ff=1+r^2;
ph=amp ff^(-del/2)Cos[z];
mu=amp^2 del/4(1-ff^(1-del)-r^2 ff^-del Cos[2z]);
nu=amp^2 del/4 ff^-del Cos[z]^2-amp^2 del^2/(4(del+1))ff^(-del-1)Cos[2z];
rhs=(mu/ff^2+2nu/ff)del^2 D[ph,{z,2}]+(del D[nu,z]/ff+del D[mu,z]/ff^2)del D[ph,z]+mu D[ph,{r,2}]+(D[mu,r]+mu/r+ff D[nu,r])D[ph,r];
fund=FullSimplify[Integrate[TrigExpand[rhs Cos[z]],{z,0,2Pi}]/Pi,Assumptions->r>0&&del>1];
dw=FullSimplify[Integrate[r ff^(-del/2)fund,{r,0,Infinity},Assumptions->del>1]/amp];
target=del^2(7+2del-8del^2)/(16(4del^2-1));
(* Direct first-order Legendre transform, including a velocity-dependent interaction. *)
lag[v_]:=aa v^2/2-vv+ep (cc v^4+dd v^2+ee);
vel=pp/aa-ep(4cc(pp/aa)^3+2dd pp/aa)/aa;
ham=Normal[Series[pp vel-lag[vel],{ep,0,1}]];
result=<|"Scalar resonant frequency shift"->FullSimplify[dw/amp^2-target],
"Projection denominator"->FullSimplify[2del Integrate[r/ff ff^-del,{r,0,Infinity},Assumptions->del>1]-1],
"Canonical amplitude and frequency"->FullSimplify[2(target/Pi)(Pi amp^2/2)-target amp^2],
"Velocity interaction Legendre cancellation"->FullSimplify[Coefficient[ham,ep]+cc(pp/aa)^4+dd(pp/aa)^2+ee]|>;
,
"mixing",
Clear[x,del,b0,c0,b1,c1];$Assumptions=del>1&&0<x<1;
ph=x^(del/2)/Sqrt[2Pi]((b0+c0)+(del-(del+1)x)(b1+c1));
pp=-I x^(del/2+1)/Sqrt[2Pi](del(b0-c0)+(del+2)(del-(del+1)x)(b1-c1));
xx=Expand[4(1-x)x^3 D[ph,x]^2+pp^2];
src=Expand[(xx/x+del(del-2)ph^2)/(4x^2)];
terms[ex_]:=If[Head[Expand[ex]]===Plus,List@@Expand[ex],{Expand[ex]}];
primitive[ex_]:=Total[Function[term,With[{power=Exponent[term,x]},Cancel[term/x^power] x^(power+1)/(power+1)]]/@terms[ex]];
pr=primitive[src];mu=Expand[(pr/.x->1)-pr];
integrand=FullSimplify[Coefficient[Coefficient[Coefficient[Coefficient[Expand[-Pi xx mu/(2x^2)],b0,1],c0,1],b1,1],c1,1]];
diag=FullSimplify[Integrate[integrand,{x,0,1},Assumptions->del>1]];
diagExpected=-del^2(-17+7del+26del^2+8del^3)/(4Pi(2del-1)(2del+1)(2del+3));
g0=del^2(7+2del-8del^2)/(8Pi(4del^2-1));
g1=-del^2(47+46del+8del^2)/(8Pi(2del+1)(2del+3));
ground=z00^2/Sqrt[2];
raiseP[expr_]:=Sqrt[del](z10 D[expr,z00]+z11 D[expr,z01]);
raiseM[expr_]:=Sqrt[del](z01 D[expr,z00]+z11 D[expr,z10]);
lowerP[expr_]:=Sqrt[del](z00 D[expr,z10]+z01 D[expr,z11]);
lowerM[expr_]:=Sqrt[del](z00 D[expr,z01]+z10 D[expr,z11]);
prim=(z00 z11-z10 z01)/Sqrt[2];
mat={{g0+g1,g0-g1},{g0-g1,g0+g1}}/2;
result=<|"Mass primitive derivative"->FullSimplify[D[mu,x]+src],
"Mass centre condition"->FullSimplify[mu/.x->1],
"Radial product-state diagonal"->FullSimplify[diag-diagExpected],
"First radial-primary energy"->FullSimplify[2diag-g0-g1],
"Global descendant vector"->FullSimplify[raiseP[raiseM[ground]]-Sqrt[2]del(z00 z11+z10 z01)],
"Primary lowering equations"->FullSimplify[{lowerP[prim],lowerM[prim]}],
"Two eigenvectors"->FullSimplify[{mat.{1,1}-g0{1,1},mat.{1,-1}-g1{1,-1}}],
"First radial primary at Delta=2"->FullSimplify[(16Pi g1/.del->2)+1368/35]|>;
,
_,Print["Unknown verificationCase: ",caseName];Exit[2]
];
Print[result];
If[!AllTrue[Flatten[Values[result]],SameQ[#,0]&],Exit[1]];
result
