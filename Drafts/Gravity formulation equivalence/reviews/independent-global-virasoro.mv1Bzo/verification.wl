(* Independent global Virasoro verification. All angles have period 2 Pi.
   Application-order multiplication: F star G = G o F.
   The real central generator T has exp(2 Pi T)=1; omega=i sigma. *)
Module[{root, run, dir, exact, preview, report, text},
 root = "/Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent-global-virasoro.mv1Bzo";
 run = RunProcess[{"mktemp", "-d", FileNameJoin[{root, "cas.XXXXXX"}]}];
 If[run["ExitCode"] =!= 0, Return[run]];
 dir = StringTrim[run["StandardOutput"]];
 report = Block[{$Messages = {}, $MessageList = {}}, Module[
 {x, m, n, k, cc, vf, omegaB, omegaR, modes, hchecks, jacobi,
 aF, bF, abarF, bbarF, aG, bG, aP, bP, identity,
 f, g, h, comp, bott, mu, relative, cnum, cocycleResidual,
 deckResidual, mf, mg, mp, alphaf, betaf, alphag, betag,
 alphap, betap, mob, mobiusResidual, values, failed},
 vf[j_] := I Exp[I j x];
 omegaB[u_, v_] := cc/(24 Pi) Integrate[D[u, {x, 3}] v, {x, 0, 2 Pi}];
 omegaR[u_, v_] := cc/(24 Pi) Integrate[(D[u, {x, 3}] + D[u, x]) v, {x, 0, 2 Pi}];
 modes = Table[<|"m" -> m, "n" -> n,
   "cubicResidual" -> FullSimplify[omegaB[vf[m], vf[n]] - I cc m^3 KroneckerDelta[m+n,0]/12],
   "relativeResidual" -> FullSimplify[omegaR[vf[m], vf[n]] - I cc m (m^2-1) KroneckerDelta[m+n,0]/12]|>, {m,-4,4},{n,-4,4}];
 hchecks = Table[FullSimplify[omegaR[u, vf[n]]], {u,{1,Sin[x],Cos[x]}},{n,-5,5}];
 jacobi = Factor[((m-n)(m+n)((m+n)^2-1) + (n-k)(n+k)((n+k)^2-1) + (k-m)(k+m)((k+m)^2-1)) /. k -> -m-n];
 aP = aG aF + bG bbarF; bP = aG bF + bG abarF;
 identity = Expand[abarF aP - bbarF bP - aG (aF abarF-bF bbarF)];
 cnum = Sqrt[2];
 f = Function[{x},x+Sin[x]/5+Sin[2 x]/20];
 g = Function[{x},x+Cos[x]/7];
 h = Function[{x},x+Sin[3 x]/11];
 comp[u_,v_] := Function[{x}, Evaluate[v[u[x]]]];
 bott[u_,v_] := -cnum/(48 Pi) NIntegrate[Log[Derivative[1][v][u[x]]] Derivative[2][u][x]/Derivative[1][u][x],{x,0,2 Pi},WorkingPrecision->45,AccuracyGoal->32,PrecisionGoal->32];
 mu[u_] := NIntegrate[u[x]-x,{x,0,2 Pi},WorkingPrecision->45,AccuracyGoal->32,PrecisionGoal->32]/(2 Pi);
 relative[u_,v_] := bott[u,v] + cnum/24 (mu[u]+mu[v]-mu[comp[u,v]]);
 cocycleResidual = relative[f,g]+relative[comp[f,g],h]-relative[g,h]-relative[f,comp[g,h]];
 deckResidual = relative[Function[{x},Evaluate[f[x]+2 Pi]],g]-relative[f,g];
 alphaf = Cosh[2/5] Exp[I/5]; betaf = Sinh[2/5] Exp[7 I/10];
 alphag = Cosh[3/10] Exp[-7 I/20]; betag = Sinh[3/10] Exp[-2 I/5];
 alphap = alphag alphaf + betag Conjugate[betaf];
 betap = alphag betaf + betag Conjugate[alphaf];
 mob[a_,b_] := Function[{x},Evaluate[x+2 Arg[a]-2 Im[Log[1+Conjugate[b/a] Exp[I x]]]]];
 (* Real-variable analytic derivatives are supplied explicitly below. *)
 mf = mob[alphaf,betaf]; mg = mob[alphag,betag];
 mobiusResidual = -cnum/(48 Pi) NIntegrate[
   Log[1/Abs[Conjugate[betag] Exp[I mf[x]]+Conjugate[alphag]]^2]
   (2 Im[Conjugate[betaf/alphaf] Exp[I x]/(1+Conjugate[betaf/alphaf] Exp[I x])]),
   {x,0,2 Pi},WorkingPrecision->45,AccuracyGoal->32,PrecisionGoal->32]
   + cnum/12 (Arg[alphaf]+Arg[alphag]-Arg[alphap]);
 values = <|"ModeRange" -> {-4,4}, "AllModeResiduals" -> modes,
   "RelativeHorizontalResiduals" -> hchecks, "JacobiPolynomialResidual" -> jacobi,
   "MobiusDenominatorIdentityResidual" -> identity,
   "NumericalCocycleResidual" -> cocycleResidual,
   "NumericalDeckResidual" -> deckResidual,
   "NumericalMobiusSplittingResidual" -> mobiusResidual,
   "NumericTolerance" -> 10^-25,
   "NumericalChecksPassed" -> And@@(TrueQ[Abs[#]<10^-25]& /@ {cocycleResidual,deckResidual,mobiusResidual}),
   "RotationPhases" -> <|"cMinus26Bott" -> FullSimplify[Exp[2 Pi I (-26)/24]],
     "cMinus26RequiredFlat" -> FullSimplify[Exp[-2 Pi I (-26)/24]],
     "c13RequiredFlat" -> FullSimplify[Exp[-2 Pi I 13/24]],
     "c13AlternativeRootHolonomy" -> FullSimplify[Exp[-Pi I/12] Exp[2 Pi I 13/24]]|>|>;
 failed = !FreeQ[values,$Failed|$Aborted|_Integrate|_NIntegrate];
 <|"Results"->values,"FailedOrUnevaluated"->failed,"Messages"->(ToString[#,InputForm]& /@ $MessageList)|>
 ]];
 exact = Export[FileNameJoin[{dir,"result.wxf"}],report,"WXF"];
 text = ToString[report,InputForm,PageWidth->100];
 preview = Export[FileNameJoin[{dir,"preview.txt"}],text,"Text"];
 <|"Preview"->preview,"Exact"->exact,"FailedOrUnevaluated"->report["FailedOrUnevaluated"],"Messages"->report["Messages"],"NumericalChecksPassed"->report["Results"]["NumericalChecksPassed"]|>
]
