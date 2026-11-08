(* Slow representatives with beta != 0, global AdS3.
   Run: wolframscript -file scalar_slow_representatives.wl
   N counts fast modes; the matrix dimension is N+1.
   No alternative frequencies are used to construct G or K.
   Output is written beside this script. *)
ClearAll["Global`*"];
outputDirectory = DirectoryName[$InputFileName];
labels = {"polynomial", "rational", "exponential", "fractional"};
kappas = <|"polynomial" -> 1, "rational" -> -2,
  "exponential" -> 1/3, "fractional" -> 3/2|>;

(* u=s H(z), z=1/(1+r^2). These are the parts before adding kappa f_0. *)
shape["polynomial", z_] := 1 + z/2;
shape["rational", z_] := 1/(1+z/2);
shape["exponential", z_] := Exp[2 z];
shape["fractional", z_] := 1+z^(3/4);
terms["polynomial", cutoff_] := {{0,1},{1,1/2}};
terms["rational", cutoff_] := Table[{j,(-1/2)^j},{j,0,cutoff}];
terms["exponential", cutoff_] := Table[{j,2^j/j!},{j,0,cutoff}];
terms["fractional", cutoff_] := {{0,1},{3/4,1}};

seedDiagonal[label_, d_, ell_] := Module[{g, energy, a, c},
  Switch[label,
    "polynomial" | "fractional",
      {a,c}=If[label=="polynomial",{1,1/2},{3/4,1}];
      g=Beta[d,ell+1]/2+c Beta[d+a,ell+1]+c^2 Beta[d+2 a,ell+1]/2;
      energy=2 c^2 a^2 Beta[d+2 a-1,ell+2],
    "rational",
      g=Beta[d,ell+1] Hypergeometric2F1[2,d,d+ell+1,-1/2]/2;
      energy=Beta[d+1,ell+2] Hypergeometric2F1[4,d+1,d+ell+3,-1/2]/2,
    "exponential",
      g=Beta[d,ell+1] Hypergeometric1F1[d,d+ell+1,4]/2;
      energy=8 Beta[d+1,ell+2] Hypergeometric1F1[d+1,d+ell+3,4]
  ];
  {g,(ell+d)^2 g+energy}
];

(* Exact moment: B(ell+n+1,a+1) (1-d-a)_n/(2 n!).
   The recurrence avoids high-degree polynomial cancellation. *)
moments[a_, d_, ell_, count_, prec_] := Module[{out},
  out=ConstantArray[0,count]; out[[1]]=N[Beta[ell+1,a+1]/2,prec];
  Do[out[[n+2]]=out[[n+1]] N[(n+1-d-a)(ell+n+1)/
      ((n+1)(ell+n+a+2)),prec],{n,0,count-2}]; out
];

matrices[label_,d_,ell_,count_,prec_:70,seriesCutoff_:160,kappa_:0] :=
 Module[{diag,gs,gf,lf,cn,ks,gg,kk,tt},
  diag=N[seedDiagonal[label,d,ell],prec];
  If[!TrueQ[Max[Abs[Im[diag]]]<10^(-prec/2)],Print["Nonreal diagonal"];Abort[]];
  diag=Re[diag];
  gs=Total[(N[#[[2]],prec] moments[#[[1]],d,ell,count,prec])& /@
    terms[label,seriesCutoff]];
  gf=N[Table[Pochhammer[n+1,ell]/
    (2 Pochhammer[2-d+n,ell](2-d+ell+2 n)),{n,0,count-1}],prec];
  lf=N[Table[(2-d+ell+2 n)^2,{n,0,count-1}],prec];
  cn=N[Table[Pochhammer[2-d,n]/n!,{n,0,count-1}],prec];
  ks=lf gs-2(1-d)cn;
  gg=DiagonalMatrix[Prepend[gf,diag[[1]]]];
  kk=DiagonalMatrix[Prepend[lf gf,diag[[2]]]];
  gg[[1,2;;]]=gs; gg[[2;;,1]]=gs;
  kk[[1,2;;]]=ks; kk[[2;;,1]]=ks;
  tt=IdentityMatrix[count+1]; tt[[2,1]]=kappa;
  {Transpose[tt].gg.tt,Transpose[tt].kk.tt}
 ];

spectrum[label_,d_,ell_,count_,prec_:70,seriesCutoff_:160,kappa_:0] :=
 Module[{g,k,vals,schur},
  {g,k}=matrices[label,d,ell,count,prec,seriesCutoff,kappa];
  schur=g[[1,1]]-Total[g[[1,2;;]]^2/Diagonal[g][[2;;]]];
  vals=Eigenvalues[{k,g}];
  If[!TrueQ[Max[Abs[Im[vals]]]<10^(-prec/2)],Print["Nonreal spectrum"];Abort[]];
  vals=Sort[Re[vals]];
  If[!TrueQ[schur>0 && Min[vals]>0],Print["Positivity failure"];Abort[]];
  <|"frequencies"->Sqrt[vals],"gramSchur"->schur|>
 ];

(* Main experiment: every actual seed has nonzero beta. *)
rows=Flatten[Table[
  data=spectrum[label,3/5,0,count,70,160,kappas[label]];
  <|"representative"->label,"N"->count,
    "frequencies"->N[Take[data["frequencies"],4],17],
    "maxError"->N[Max[Abs[Take[data["frequencies"],4]-{3/5,13/5,23/5,33/5}]],17],
    "gramSchur"->N[data["gramSchur"],17]|>,
  {label,labels},{count,{4,8,16,24,32,64,128}}],1];
Print["Main convergence rows: ",rows];

(* Higher precision and longer shape series; all four families at N=128. *)
precisionChecks=Table[
  base=spectrum[label,3/5,0,128,70,160,kappas[label]]["frequencies"];
  high=spectrum[label,3/5,0,128,90,200,kappas[label]]["frequencies"];
  <|"representative"->label,"maxLowFrequencyDifference"->
    N[Max[Abs[Take[base-high,4]]],10]|>,{label,labels}];

(* Congruence check against beta=0 coordinates, and low-mode residuals. *)
invarianceChecks=Table[
  base=spectrum[label,3/5,0,16,70,160,0]["frequencies"];
  contaminated=spectrum[label,3/5,0,16,70,160,kappas[label]]["frequencies"];
  {gg,kk}=matrices[label,3/5,0,16,70,160,kappas[label]];
  {ev,vec}=Eigensystem[{kk,gg}]; order=Ordering[ev,4];
  residual=Max[Table[Norm[kk.vec[[i]]-ev[[i]] gg.vec[[i]]]/
    ((Norm[kk,"Frobenius"]+Abs[ev[[i]]] Norm[gg,"Frobenius"]) Norm[vec[[i]]]),{i,order}]];
  <|"representative"->label,"maxAllFrequencyDifference"->N[Max[Abs[base-contaminated]],10],
    "maxLowRelativeResidual"->N[residual,10]|>,{label,labels}];

(* Independent quadrature of G_tt and K_tt-lambda_s G_tt. *)
quadratureChecks=Flatten[Table[
  hh=shape[label,z]; dh=D[hh,z];
  directG=NIntegrate[Evaluate[(1-z)^ell z^(3/5-1) hh^2/2],{z,0,1},
    WorkingPrecision->60,AccuracyGoal->38,PrecisionGoal->38];
  directE=NIntegrate[Evaluate[2(1-z)^(ell+1) z^(3/5) dh^2],{z,0,1},
    WorkingPrecision->60,AccuracyGoal->38,PrecisionGoal->38];
  exact=seedDiagonal[label,3/5,ell];
  <|"representative"->label,"ell"->ell,"maxDiagonalDifference"->
    N[Max[Abs[{directG,directE}-N[{exact[[1]],exact[[2]]-(ell+3/5)^2 exact[[1]]},60]]],10]|>,
  {label,labels},{ell,{0,3}}],1];

(* Additional masses/angular sectors; two cutoffs distinguish trends from coincidences. *)
sectorRows=Flatten[Table[
  data=spectrum[label,d,ell,count,70,160,kappas[label]];
  target=Table[d+ell+2 p,{p,0,3}];
  <|"representative"->label,"Delta"->N[d,17],"ell"->ell,"N"->count,
    "maxError"->N[Max[Abs[Take[data["frequencies"],4]-target]],17]|>,
  {d,{3/10,3/5,4/5}},{ell,{1,3}},{label,labels},{count,{32,64}}],3];

report=<|"main"->rows,"precisionChecks"->precisionChecks,
  "invarianceChecks"->invarianceChecks,"quadratureChecks"->quadratureChecks,
  "sectors"->sectorRows|>;
(* Convert only for portable JSON output; the calculation remains high precision. *)
Export[FileNameJoin[{outputDirectory,"scalar_slow_representatives_results.json"}],
  report /. x_Real :> N[x,MachinePrecision],"RawJSON"];
convergencePlot=ListLogLogPlot[
  Table[({#["N"],#["maxError"]}& /@ Select[rows,#["representative"]==label&]),
    {label,labels}],Joined->True,PlotMarkers->Automatic,
  PlotLegends->labels,Frame->True,Axes->False,
  FrameLabel->{"Number N of fast modes","Maximum error of lowest four frequencies"},
  PlotLabel->"Slow representatives: Delta = 0.6, ell = 0",ImageSize->760];
Export[FileNameJoin[{outputDirectory,"scalar_slow_representatives_convergence.svg"}],convergencePlot];
Print["Precision checks: ",precisionChecks];
Print["Invariance and residual checks: ",invarianceChecks];
Print["Quadrature checks: ",quadratureChecks];
Print["Sector checks: ",sectorRows];
