(* Spacelike t=0 sewing in the massive Dirichlet cavity.
   Causal convention P=dt^2-dx^2+m^2 and E=G^A-G^R.
   Smooth observable tests use one exact spatial eigenfunction, not a truncation.
   The 2D global quadrature has accuracy goal 12 and acceptance tolerance 1e-10. *)
ClearAll["Global`*"];
c[t_]:=Cos[w t]; ss[t_]:=Sin[w t]/w;
u[t_]:={{c[t],ss[t]},{-w^2 ss[t],c[t]}}; j={{0,1},{-1,0}};
exact=<|"cauchySewing"->FullSimplify[c[t]ss[-s]+ss[t]c[s]-ss[t-s]],"peierls"->FullSimplify[c[t]ss[s]-ss[t]c[s]+ss[t-s]],"symplectic"->FullSimplify[u[t].j.Transpose[u[t]]-j],"composition"->FullSimplify[u[a].u[b]-u[a+b]]|>;

lag=(D[ph[t,x],t]^2-D[ph[t,x],x]^2-m^2 ph[t,x]^2)/2;
vary=D[lag/.ph->Function[{t,x},ph[t,x]+eps ps[t,x]],eps]/.eps->0;
projection={{1,0,1,0},{0,1,0,1}};
sewn=Transpose[projection].j.projection;
mismatch={{1,0},{0,1},{-1,0},{0,-1}};
independent=ArrayFlatten[{{j,ConstantArray[0,{2,2}]},{ConstantArray[0,{2,2}],j}}];
checks=<|
 "actionVariation"->Simplify[vary+(D[ph[t,x],{t,2}]-D[ph[t,x],{x,2}]+m^2 ph[t,x])ps[t,x]-D[D[ph[t,x],t]ps[t,x],t]+D[D[ph[t,x],x]ps[t,x],x]],
 "cauchyEquation"->Simplify[D[c[t]q+ss[t]p,{t,2}]+w^2(c[t]q+ss[t]p)],
 "cauchyInitialData"->Simplify[u[0]-IdentityMatrix[2]],
 "fixedQFormPullback"->({{0,1}}.j.{{0},{1}}),
 "sourceQJump"->{ss[0],ss'[0]-1},
 "canonicalQQ"->(c[0]ss[0]-ss[0]c[0]),
 "canonicalQP"->Simplify[(D[c[t]ss[s]-ss[t]c[s],s]/.{t->0,s->0})-1],
 "mixedQ"->Simplify[c[t]ss[0]-ss[t]c[0]+ss[t]],
 "mixedP"->Simplify[(D[c[t]ss[s]-ss[t]c[s],s]/.s->0)-c[t]],
 "sewnMismatchKernel"->(sewn.mismatch),
 "completeModeKernelDimension"->(Length[NullSpace[sewn]]-2),
 "independentMismatchBracket"->(Transpose[mismatch].independent.mismatch-2j),
 "orthogonality"->Table[Integrate[Sin[n Pi x/2]Sin[k Pi x/2],{x,0,2}]-KroneckerDelta[n,k],{n,1,3},{k,1,3}],
 "threeCutComposition"->FullSimplify[u[a].u[b].u[d]-u[a+b+d]]
|>;
exact=Join[exact,checks];

bump[r_?NumericQ]:=If[Abs[r]<1,Exp[-1/(1-r^2)],0];
norm=NIntegrate[bump[r],{r,-1,1},WorkingPrecision->40,AccuracyGoal->30,PrecisionGoal->30];
coeff[om_,center_,width_]:=Table[NIntegrate[bump[r] If[k==1,Cos[om(center+width r)],Sin[om(center+width r)]/om],{r,-1,1},WorkingPrecision->40,AccuracyGoal->28,PrecisionGoal->28]/norm,{k,1,2}];
cases={{"first mode",1,1,2,2/5,1/10,-1/3,1/12},{"second mode",2,3/2,2,4/5,1/8,-3/5,1/10},{"long separation",3,1,2,8/5,1/12,-7/5,1/9}};
results=Table[Module[{n,mm,ll,tp,ep,tm,em,om,cp,cm,reg,glob},{n,mm,ll,tp,ep,tm,em}=Rest[row];om=Sqrt[mm^2+(n Pi/ll)^2];cp=coeff[om,tp,ep];cm=coeff[om,tm,em];reg=cp[[1]]cm[[2]]-cp[[2]]cm[[1]];glob=NIntegrate[-bump[r]bump[z]Sin[om(tp+ep r-tm-em z)]/om,{r,-1,1},{z,-1,1},WorkingPrecision->40,AccuracyGoal->12,PrecisionGoal->12]/norm^2;<|"case"->First[row],"regional"->reg,"global"->glob,"error"->Abs[reg-glob],"passed"->TrueQ[Abs[reg-glob]<10^-10]|>],{row,cases}];
allPassed=And[AllTrue[Flatten[Values[exact]],TrueQ[#==0]&],And@@Lookup[results,"passed"]];
report=<|"exactResiduals"->exact,"smoothChecks"->results,"allPassed"->allPassed|>;
Print[InputForm[report]];
If[!TrueQ[allPassed],Exit[1]];
