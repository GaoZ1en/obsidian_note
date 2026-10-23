(* Independent cubic-ground checks. Run with Get["/absolute/path/to/verify.wl"].
   The script does not read any candidate calculation. Wolfram Language 14.3.
   All exports remain alongside this newly created script. *)

ClearAll[radialOverlap, bindingTerm, bindingHypergeometric, betaPolynomial,
  directFockCheck, finiteBinding, d, z, n, nn];

radialOverlap[dd_, nn_Integer?NonNegative] :=
  (-1)^nn Pochhammer[1-dd/2, nn]/
    (2 Sqrt[2 Pi] Pochhammer[3 dd/2-1, nn+1]);

(* The resonant branch is explicitly Q-projected, only after checking
   its numerator vanishes exactly. *)
bindingTerm[dd_, nn_Integer?NonNegative] := Module[{c=radialOverlap[dd,nn]},
  If[TrueQ[dd==2 nn],
    If[TrueQ[FullSimplify[c]==0], 0, Throw["Nonzero resonant matrix element"]],
    c^2 (1/(2 (dd-2 nn))-2/(dd+2 nn)-1/(2 (3 dd+2 nn)))]];

bindingHypergeometric[dd_] :=
  ((3 dd-2)/(8 (2 dd-1))-
    HypergeometricPFQ[{1,1-dd/2,1-dd/2,dd/2},
      {3 dd/2,3 dd/2,1+dd/2},1])/(Pi dd (3 dd-2)^2);

betaPolynomial[poly_, alpha_] := Module[{pp=Expand[poly]},
  Sum[Coefficient[pp,z,j]/(alpha+j),{j,0,Exponent[pp,z]}]];

(* Five actual KG-normalized real AdS modes are retained:
   n=0,1,2, ell=0; n=0, ell=1 cosine/sine. No approximate vertex values.
   This builds all cubic normal-ordered Fock transitions directly, rather
   than invoking the connected-contraction formula under test. *)
directFockCheck[dd_] := Module[
  {km=5, omegas, triples, tensor, poly, allN, initial, raw, counts, creations,
   annihilations, middle, final, amp, grouped, transitions, sectors, resonances,
   en, deltaE, direct, predicted, sectorDifference, i,j,k,tri,cr,Nocc},
  omegas={dd,dd+2,dd+4,dd+1,dd+1};
  poly[j_] := JacobiP[j-1,0,dd-1,2z-1];
  triples=Flatten[Table[{i,j,k},{i,1,km},{j,i,km},{k,j,km}],2];
  tensor[tri_] := Module[{ang=Select[tri,#>3&], rad=Select[tri,#<=3&]},
    Which[
      Length[ang]==0,
        betaPolynomial[Times@@(poly /@ rad),3dd/2-1]/(2 Sqrt[2 Pi]),
      Length[ang]==2 && SameQ@@ang,
        dd betaPolynomial[(1-z) poly[First[rad]],3dd/2-1]/(2 Sqrt[2 Pi]),
      True,0]];
  allN=Table[
    initial=Join[{Nocc},ConstantArray[0,km-1]];
    raw={};
    Do[
      counts=Table[Count[tri,i],{i,1,km}];
      creations=Tuples[Table[Range[0,counts[[i]]],{i,1,km}]];
      Do[
        annihilations=counts-cr;
        middle=initial-annihilations;
        If[Min[middle]>=0,
          final=middle+cr;
          amp=tensor[tri] Product[
            Sqrt[Factorial[initial[[i]]] Factorial[final[[i]]]]/
              (Factorial[middle[[i]]] Factorial[cr[[i]]] Factorial[annihilations[[i]]]),
            {i,1,km}];
          AppendTo[raw,{final,amp}]],
        {cr,creations}],
      {tri,triples}];
    grouped=GatherBy[raw,First];
    transitions=({#[[1,1]],FullSimplify[Total[#[[All,2]]]]}& /@ grouped);
    sectors=ConstantArray[0,4]; resonances={};
    Do[
      deltaE=Nocc dd-trans[[1]].omegas;
      If[TrueQ[deltaE==0],
        AppendTo[resonances,trans],
        k=Total[Rest[trans[[1]]]];
        sectors[[k+1]]+=trans[[2]]^2/deltaE],
      {trans,transitions}];
    sectors=FullSimplify /@ sectors;
    <|"N"->Nocc,"E2OverLambda2"->FullSimplify[Total[sectors]],
      "ByNongroundOccupation0Through3"->sectors,
      "ProjectedZeroDenominatorStatesAndAmplitudes"->resonances|>,
    {Nocc,0,2}];
  direct=FullSimplify[allN[[3]]["E2OverLambda2"]-
    2 allN[[2]]["E2OverLambda2"]+allN[[1]]["E2OverLambda2"]];
  predicted=FullSimplify[Sum[bindingTerm[dd,nn],{nn,0,2}]];
  sectorDifference=FullSimplify[
    allN[[3]]["ByNongroundOccupation0Through3"]-
    2 allN[[2]]["ByNongroundOccupation0Through3"]+
    allN[[1]]["ByNongroundOccupation0Through3"]];
  <|"Delta"->dd,"Modes"->{"radial n=0","radial n=1","radial n=2","ell=1 cosine","ell=1 sine"},
    "IndividualShifts"->allN,"ConnectedByNongroundOccupation"->sectorDifference,
    "DirectConnected"->direct,"SingleModeSumThroughN2"->predicted,
    "Difference"->FullSimplify[direct-predicted],
    "AllProjectedAmplitudesZero"->And@@Flatten[Table[
      TrueQ[#[[2]]==0]& /@ allN[[j]]["ProjectedZeroDenominatorStatesAndAmplitudes"],{j,1,3}]],
    "ConnectedNumerical"->N[direct,25]|>];

report = Block[{$Messages={},$MessageList={}}, Module[
  {normChecks,overlapChecks,sourceIdentity,oscillatorShift,oscillatorConnected,
   b32Term,b32Exact,evenValues,numericTests,fock,nearBF,reportData},
  normChecks=Table[
    {dd,nn,FullSimplify[(dd+2nn) betaPolynomial[
      z^0 JacobiP[nn,0,dd-1,2z-1]^2,dd]]},
    {dd,{3/2,2,7/3}},{nn,0,5}];
  overlapChecks=Table[
    {dd,nn,FullSimplify[betaPolynomial[JacobiP[nn,0,dd-1,2z-1],3dd/2-1]/
      (2 Sqrt[2 Pi])-radialOverlap[dd,nn]]},
    {dd,{3/2,2,7/3,4}},{nn,0,6}];
  sourceIdentity=FullSimplify[
    4z^2 ((1-z) D[z^d,{z,2}]-D[z^d,z])+
      ((2d)^2 z-d(d-2))z^d-d(3d-2)z^d,
    Assumptions->d>1&&0<z<1];
  oscillatorShift=Expand[
    (n(n-1)^2-n^2(n+1))/4+
    (n(n-1)(n-2)-(n+1)(n+2)(n+3))/108];
  oscillatorConnected=FullSimplify[(oscillatorShift/.n->2)-
    2(oscillatorShift/.n->1)+(oscillatorShift/.n->0)];
  b32Term=FullSimplify[radialOverlap[3/2,0]^2 *
    (Pochhammer[1/4,n]/Pochhammer[9/4,n])^2 *
    (1/(2(3/2-2n))-2/(3/2+2n)-1/(2(9/2+2n))),
    Assumptions->Element[n,Integers]&&n>=0];
  b32Exact=FullSimplify[Sum[b32Term,{n,0,Infinity}]];
  evenValues=Table[{2j,FullSimplify[Sum[bindingTerm[2j,nn],{nn,0,j-1}]]},{j,1,6}];
  numericTests=Table[Module[{part,closed,sp,sex},
    part=N[Sum[bindingTerm[dd,nn],{nn,0,300}],30];
    closed=N[bindingHypergeometric[dd],30];
    sp=N[Sum[radialOverlap[dd,nn]^2 (dd+2nn)/(4dd^2-(dd+2nn)^2),{nn,0,300}],30];
    sex=N[1/(8Pi dd(3dd-2)(2dd-1)),30];
    <|"Delta"->dd,"Cutoff"->300,"BindingPartial"->part,"BindingClosed"->closed,
      "PartialMinusClosed"->part-closed,"PlusMinus2DeltaPartial"->sp,
      "PlusMinus2DeltaExact"->sex,"DifferenceInSChannel"->sp-sex|>],
    {dd,{6/5,3/2,7/3,3,7/2,9/2}}];
  fock=directFockCheck /@ {3/2,2};
  nearBF=FullSimplify[((1-7Zeta[3])/(8Pi))];
  reportData=<|"Conventions"->"Radius=1, H3=lambda3/6 integral r dr dtheta :phi^3:, KG[a,a^dagger]=1; positive-at-origin radial Jacobi phase",
    "NormChecksExpected1"->normChecks,
    "OverlapResidualsExpected0"->overlapChecks,
    "SourceDifferentialIdentityResidual"->sourceIdentity,
    "GroundOscillatorPolynomialTimesC0SquaredOverDelta"->oscillatorShift,
    "GroundOscillatorConnectedTimesC0SquaredOverDelta"->oscillatorConnected,
    "DeltaThreeHalvesTerm"->b32Term,
    "DeltaThreeHalvesExactSum"->b32Exact,
    "DeltaThreeHalvesExpectedResidual"->FullSimplify[b32Exact-(15Pi-58)/(120Pi)],
    "DeltaThreeHalvesNumerical"->N[b32Exact,35],
    "EvenDeltaExactValues"->evenValues,
    "GenericDeltaNumericalComparisons"->numericTests,
    "DirectFiniteFockChecks"->fock,
    "BFRightLimit"->nearBF,
    "Messages"->(ToString[#,InputForm]& /@ $MessageList)|>;
  reportData]];

outputDirectory=DirectoryName[$InputFileName];
outputPath=FileNameJoin[{outputDirectory,"verification-results.wl"}];
If[FileExistsQ[outputPath],
  Print["Refusing to overwrite existing results: ",outputPath];
  report,
  Export[outputPath,ToString[report,InputForm,PageWidth->100],"Text"];
  <|"ResultsPath"->outputPath,
    "Messages"->report["Messages"],
    "FockResiduals"->(#["Difference"]& /@ report["DirectFiniteFockChecks"]),
    "FockProjectedAmplitudesZero"->(#["AllProjectedAmplitudesZero"]& /@ report["DirectFiniteFockChecks"]),
    "SourceResidual"->report["SourceDifferentialIdentityResidual"],
    "DeltaThreeHalves"->report["DeltaThreeHalvesExactSum"]|>
]
