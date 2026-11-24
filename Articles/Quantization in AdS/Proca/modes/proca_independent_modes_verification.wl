ClearAll["Global`*"];
proca[m2_,nn_] := Module[{mr,mp,ww,dd,vr,vp,hh,bb,kr,evr,evp},mr=Table[1/(2(i+j+2)(i+j+3)),{i,0,nn-1},{j,0,nn-1}];mp=Table[1/(2(i+j+3)(i+j+4)),{i,0,nn-1},{j,0,nn-1}];ww=Table[1/(2(i+j+2)),{i,0,nn-1},{j,0,nn-1}];dd=DiagonalMatrix[Table[-2(i+1),{i,0,nn-1}]];vr=Table[m2/(2(i+j+1)(i+j+2)),{i,0,nn-1},{j,0,nn-1}];vp=Table[2((i+1)(j+1)/(i+j+2)-((i+1)(j+2)+(i+2)(j+1))/(i+j+3)+(i+2)(j+2)/(i+j+4))+m2/(2(i+j+2)(i+j+3)),{i,0,nn-1},{j,0,nn-1}];bb=mr.dd;hh=dd.mr.dd;kr=mr-bb.Inverse[hh+m2 ww].Transpose[bb];evr=Sort[Eigenvalues[{N[vr,80],N[kr,80]}]];evp=Sort[Eigenvalues[{N[vp,80],N[mp,80]}]];{N[Sqrt[Take[evr,Min[3,nn]]],14],N[Sqrt[Take[evp,Min[3,nn]]],14]}];
checks=<||>;
check[name_,expr_]:=(AssociateTo[checks,name->TrueQ[FullSimplify[expr]]]);
mm={{a,b},{b,c}};bb={d,e};qq=h+m2 w;cc=qq-bb.Inverse[mm].bb;vv={v1,v2};pp={p1,p2};
lag=vv.mm.vv/2-z bb.vv+qq z^2/2;
ham=pp.Inverse[mm].pp/2+z bb.Inverse[mm].pp-cc z^2/2;
check["Legendre transform",Together[(pp.vv-lag-ham)/.Thread[vv->Inverse[mm].(pp+bb z)]]==0];
kk=mm-Outer[Times,bb,bb]/qq;
check["complete square",Together[lag-(vv.kk.vv/2+qq(z-bb.vv/qq)^2/2)]==0];
check["inverse kinetic",Together[Inverse[kk]-Inverse[mm]-Outer[Times,Inverse[mm].bb,Inverse[mm].bb]/cc]==ConstantArray[0,{2,2}]];
check["secondary sign",Together[-D[ham,z]-(cc z-bb.Inverse[mm].pp)]==0];

f=1+r^2;
Do[er=r/f^(i+2);ej=r/f^(j+2);ep=r^2/f^(i+2);pj=r^2/f^(j+2);wi=f^(-i-1);wj=f^(-j-1);s=i+j;
check["Proca integrals "<>ToString[{i,j}], Integrate[{r er ej,ep pj/(r f),r wi wj/f,r f er ej,f D[ep,r]D[pj,r]/r,r er D[wj,r]},{r,0,Infinity}]=={1/(2(s+2)(s+3)),1/(2(s+3)(s+4)),1/(2(s+2)),1/(2(s+1)(s+2)),2((i+1)(j+1)/(s+2)-((i+1)(j+2)+(i+2)(j+1))/(s+3)+(i+2)(j+2)/(s+4)),-(j+1)/((s+2)(s+3))}],{i,0,2},{j,0,2}];
uquart=g/(8 Pi)Integrate[r(qr^2 r^2/f^3+qp^2 r^2/f^4-z^2/f^3)^2,{r,0,Infinity}];
uexp=g(2qp^4+7qp^2 qr^2+7qr^4-14qp^2 z^2-21qr^2 z^2+42z^4)/(3360 Pi);
check["quartic spatial integral",uquart==uexp];
check["quartic Hessian",D[uexp,{z,2}]==g(36z^2-2qp^2-3qr^2)/(240Pi)];
(* Explicit evolution on the constraint surface, without solving z(q,p). *)
mu2=1;gg=1/2;uu=uexp/.g->gg;variables={qr,qp,pr,pphi,z};vel={12pr-2z,24pphi};force={-mu2 qr/4-D[uu,qr],-(4+mu2)qp/12-D[uu,qp]};jac=mu2/4-D[uu,{z,2}];zdot=(-2force[[1]]+{D[uu,z,qr],D[uu,z,qp]}.vel)/jac;
chi=mu2 z/4+2pr-D[uu,z];energy=6pr^2+12pphi^2-2z pr-mu2 z^2/8+mu2 qr^2/8+(4+mu2)qp^2/24+uu;
flow=Join[vel,force,{zdot}];
check["nonlinear constraint propagation",Together[Sum[D[chi,variables[[i]]]flow[[i]],{i,5}]]==0];
check["nonlinear energy propagation",Together[Sum[D[energy,variables[[i]]]flow[[i]],{i,5}]+chi zdot]==0];
ics={1/10,2/25,1/50,-1/100};zinitial=z/.FindRoot[(chi/.Thread[Take[variables,4]->ics])==0,{z,-4/25},WorkingPrecision->60];
sol=NDSolveValue[Join[Thread[D[Through[variables[t]],t]==(flow/.Thread[variables->Through[variables[t]]])],Thread[Through[variables[0]]==Join[ics,{zinitial}]]],variables,{t,0,20},WorkingPrecision->60,AccuracyGoal->25,PrecisionGoal->25,MaxSteps->Infinity,Method->"ExplicitRungeKutta"];
If[!And@@(#["Domain"][[1,2]]>=20& /@ sol),Print["Integration did not reach t=20"];Exit[1]];
sample=Table[{chi,energy,jac}/.Thread[variables->Through[sol[tv]]],{tv,0,20,1/20}];
report=<|"constraintMax"->Max[Abs[sample[[All,1]]]],"energyDrift"->Max[Abs[sample[[All,2]]-sample[[1,2]]]],"minConstraintJacobian"->Min[sample[[All,3]]]|>;

check["sampled constraint below 1e-10",report["constraintMax"]<10^-10];
check["sampled energy drift below 1e-10",report["energyDrift"]<10^-10];
check["sampled Jacobian positive",report["minConstraintJacobian"]>0];
(* A deliberately non-closed pair: e=r/f^2 dr, w=f^-2. *)
check["non-closed gradient residual",Integrate[r D[f^-2,r]^2,{r,0,Infinity}]-Integrate[r (r/f^2)D[f^-2,r],{r,0,Infinity}]^2/Integrate[r(r/f^2)^2,{r,0,Infinity}]==1/15];
spectrumResults=Table[<|"N"->nn,"radial_and_angular"->proca[1,nn]|>,{nn,{4,8,16,24}}];
exactMassCheck=proca[4,4];
check["mu2=4 first three frequencies",Max[Abs[Flatten[exactMassCheck-{{4,6,8},{4,6,8}}]]]<10^-12];
result=<|"allPassed"->And@@Values[checks],"checks"->checks,"mu2_1_spectrum"->spectrumResults,"mu2_4_spectrum"->exactMassCheck,"interaction"->N[report,14]|>;
Export[FileNameJoin[{DirectoryName[$InputFileName],"proca_independent_modes_results.json"}],result,"RawJSON"];
Print[result];If[!TrueQ[result["allPassed"]],Exit[1]];
