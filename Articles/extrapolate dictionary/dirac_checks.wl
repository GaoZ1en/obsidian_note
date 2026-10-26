(* Free Dirac in EAdS4, canonical unsymmetrized action, 0<M<1/2.
   Evaluate with Get["dirac_checks.wl"]; the last expression is the full report.
   No file is overwritten. Numerical residuals are not proofs of the bounds. *)
ClearAll["Global`*"];
report = Block[{$Messages = {}, $MessageList = {}}, Module[
 {gz, gt, pp, pm, id, mom, qmat, kval, mass, orders, hh, gg, left, right,
  pts, residuals, jumps, exact, beta, aa, ft, euclideanSamples, besselTests,
  alpha, pmat, clifford, boundarySamples, wallChecks},
 id = IdentityMatrix[4]; gz = KroneckerProduct[PauliMatrix[3], IdentityMatrix[2]];
 gt = Table[KroneckerProduct[PauliMatrix[1], PauliMatrix[j]], {j,3}];
 pp=(id+gz)/2; pm=(id-gz)/2;
 mom={4/5,-3/10,6/5}; qmat=mom.gt; kval=Sqrt[mom.mom]; mass=1/5;
 orders[1]={mass+1/2,mass-1/2}; orders[-1]={-mass-1/2,1/2-mass};
 hh[branch_, side_] := -Sqrt[z w] Sum[
   If[j==1,pp,pm] If[side==1,
    BesselI[orders[branch][[j]],kval z] BesselK[orders[branch][[j]],kval w],
    BesselK[orders[branch][[j]],kval z] BesselI[orders[branch][[j]],kval w]], {j,2}];
 gg[branch_,side_] := gz.D[hh[branch,side],z]+(I qmat+mass/z id).hh[branch,side];
 pts[1]={z->1/3,w->5/4}; pts[2]={z->2,w->5/4};
 residuals=Flatten[Table[
   left=gz.D[gg[b,s],z]+(I qmat-mass/z id).gg[b,s];
   right=-D[gg[b,s],w].gz+gg[b,s].(I qmat-mass/w id);
   {<|"Branch"->b,"Side"->s,"LeftMaxAbs"->Max[Abs[Flatten[N[left/.N[pts[s],60],40]]]],
     "RightMaxAbs"->Max[Abs[Flatten[N[right/.N[pts[s],60],40]]]]|>}, {b,{1,-1}},{s,2}]];
 jumps=Table[<|"Branch"->b,"JumpMaxAbs"->Max[Abs[Flatten[N[
   (gg[b,2]-gg[b,1]-gz)/.N[{z->5/4,w->5/4},60],40]]]]|>, {b,{1,-1}}];
 aa[t_]:=2^(-2 t) Gamma[1/2-t]/Gamma[1/2+t];
 exact=<|
 "FactorizationPlus"->Simplify[(m+1/2)^2-1/4-m(m+1)],
 "FactorizationMinus"->Simplify[(m-1/2)^2-1/4-m(m-1)],
 "LegendreCoefficient"->FullSimplify[aa[m] aa[-m]-1],
 "FourierCoefficient"->FullSimplify[
  aa[t] (2+2 t) Gamma[1+t]/(4^(1/2-t) Pi^(3/2) Gamma[1/2-t])-
  Gamma[2+t]/(Pi^(3/2) Gamma[1/2+t]),Assumptions->-1/2<t<1/2],
 "SpectralCoefficient"->FullSimplify[2 aa[t] Cos[Pi t]-
  Pi 2^(1-2 t)/Gamma[1/2+t]^2,Assumptions->-1/2<t<1/2],
 "BesselDerivative"->FullSimplify[D[x^beta BesselJ[-beta,x],x]+
  x^beta BesselJ[1-beta,x],Assumptions->0<beta<1&&x>0],
 "MasslessKernel"->FullSimplify[Sqrt[z w] BesselI[-1/2,k z] BesselK[-1/2,k w]-
  (Exp[-k(w-z)]+Exp[-k(w+z)])/(2 k),Assumptions->0<z<w&&k>0]
 |>;
 alpha=Table[-I gt[[j]].gt[[1]],{j,{2,3}}];
 pmat=omega id+px alpha[[1]]+py alpha[[2]];
 clifford=<|"AlphaSquares"->Table[Simplify[alpha[[j]].alpha[[j]]-id],{j,2}],
 "AlphaAnticommutator"->Simplify[alpha[[1]].alpha[[2]]+alpha[[2]].alpha[[1]]],
 "ProjectedEigenPolynomial"->Table[Simplify[Det[
  (pmat-lambda id)[[inds,inds]]]-(omega-lambda)^2+px^2+py^2],
  {inds,{{1,2},{3,4}}}]|>;
 besselTests=Flatten[Table[With[{a=2^b/Gamma[1-b]},
  <|"Beta"->b,"x"->xx,"BoundPassed"->TrueQ[
   N[Abs[xx^b BesselJ[-b,xx]-a]-a xx^2/(4(1-b)),50]<=0]|>],
  {b,{1/4,3/4,9/10}},{xx,{1/100,1/2,1,3,10,100}}]];
 euclideanSamples=Table[<|"Beta"->b,"MaximumSampledRatio"->Max[Flatten[Table[
  N[Abs[(r yy^2)^b BesselI[-b,r yy] BesselK[b,yy]-
    2^(2b-1) Gamma[b]/Gamma[1-b]]/yy^(2b),40],
  {r,{1/10000,1/10,1}},{yy,{1/1000000,1/100,1,10,100}}]]]|>,
  {b,{1/4,3/4,9/10}}];
 boundarySamples=Flatten[Table[With[{b=1/2-sign mass,zz=pair[[1]],ww=pair[[2]]},
  <|"Branch"->sign,"z"->zz,"w"->ww,"RelativeError"->N[Abs[
    ((zz ww)^b BesselI[-b,kval Min[zz,ww]] BesselK[b,kval Max[zz,ww]])/
    (aa[sign mass] kval^(-2 b))-1],30]|>],
  {sign,{1,-1}},{pair,{{1/100,1/100},{1/10000,1/100},{1/1000000,1/1000000}}}]];
 wallChecks=Table[<|"Mass"->mm,"WallWronskianResidual"->N[
  x (BesselI[mm-1/2,x] BesselK[mm+1/2,x]+
  BesselI[mm+1/2,x] BesselK[mm-1/2,x])-1/.x->N[7/10,60],40]|>,{mm,{1/5,2/5}}];
 <|"Conventions"->"AdS4; D=slashD-m; Omega=z/ell; canonical complex Dirac; 0<M<1/2",
 "ExactResiduals"->exact,"MatrixInverseResiduals"->residuals,"JumpResiduals"->jumps,
 "PositiveNumeratorChecks"->clifford,"GlobalBesselBoundSamples"->besselTests,
 "EuclideanBoundSamples"->euclideanSamples,"BoundaryLimitSamples"->boundarySamples,
 "FiniteWallIdentity"->wallChecks,"Messages"->(ToString[#,InputForm]& /@ $MessageList)|>
 ]];
report
