(* Independent Gaussian-measure checks. No actual 9x9 auxiliary Hessian or its eigenvalues is assumed. *)
ClearAll["Global`*"];
report = Block[{$Messages = {}, $MessageList = {}},
  Module[{hmat, cmat, dmat, shear, full, diagonal, finite,
    toyH, toyC, toyD, toyFull, projectionFull, projectionCut,
    n, hh, dd, cc, qq, amat, finiteRatios,
    hm, rm, em, vars, jac, gram, zetaDensity, heatSeries,
    poissonSeries, poissonConstant, directIntegral, besselIntegral,
    ca, cb, cab, poleDifference, anomaly,
    massParameter, delta, alphaSquared, spectralMassSquared,
    negativeCount, etaCount, torusVolumeDifference, results},
    hmat = {{h11,h12},{h12,h22}};
    cmat = DiagonalMatrix[{c1,c2,c3}];
    dmat = {{d11,d12},{d21,d22},{d31,d32}};
    shear = ArrayFlatten[{{IdentityMatrix[2],ConstantArray[0,{2,3}]},{-dmat,IdentityMatrix[3]}}];
    diagonal = ArrayFlatten[{{hmat,ConstantArray[0,{2,3}]},{ConstantArray[0,{3,2}],cmat}}];
    full = ArrayFlatten[{{hmat+Transpose[dmat].cmat.dmat,-Transpose[dmat].cmat},{-cmat.dmat,cmat}}];
    finite = <|
      "ShearDeterminant" -> Det[shear],
      "CongruenceResidual" -> Simplify[full-Transpose[shear].diagonal.shear],
      "FullDeterminant" -> Factor[Det[full]],
      "FactorizationResidual" -> Factor[Det[full]-Det[hmat] Det[cmat]]
    |>;
    toyH = DiagonalMatrix[{7,11}]; toyC = DiagonalMatrix[{-2,3,5}];
    toyD = {{1,2},{3,-1},{2,4}};
    toyFull = ArrayFlatten[{{toyH+Transpose[toyD].toyC.toyD,-Transpose[toyD].toyC},{-toyC.toyD,toyC}}];
    projectionFull = {{1+lambda^2,0,-lambda},{0,1,0},{-lambda,0,1}};
    projectionCut = projectionFull[[{1,2},{1,2}]];
    finiteRatios = Table[
      hh=DiagonalMatrix[Table[j^2+1,{j,1,n}]];
      dd=DiagonalMatrix[Range[n]];
      qq=If[n==1,ConstantArray[0,{1,0}],IdentityMatrix[n][[All,1;;n-1]]];
      amat=If[n==1,hh+Transpose[dd].dd,
        ArrayFlatten[{{hh+Transpose[dd].dd,-Transpose[dd].qq},{-Transpose[qq].dd,IdentityMatrix[n-1]}}]];
      <|"N"->n,"ActualRatio"->Det[amat]/Det[hh],
        "PredictedRatioResidual"->Together[Det[amat]/Det[hh]-(2 n^2+1)/(n^2+1)]|>,
      {n,1,7}];
    hm={{h1,h4/Sqrt[2],h5/Sqrt[2]},{h4/Sqrt[2],h2,h6/Sqrt[2]},{h5/Sqrt[2],h6/Sqrt[2],h3}};
    rm={{0,theta3,-theta2},{-theta3,0,theta1},{theta2,-theta1,0}};
    em=hm/2+rm;
    vars={h1,h2,h3,h4,h5,h6,theta1,theta2,theta3};
    jac=Outer[D,Flatten[em],vars];
    gram=Simplify[Transpose[jac].jac];
    zetaDensity=vol/(4 Pi)^(3/2) Gamma[s-3/2]/Gamma[s] a^(3-2 s);
    heatSeries=Series[vol Exp[-a^2 u^2]/((4 Pi)^(3/2)u^3),{u,0,1}];
    poissonSeries=Assuming[a>0 && mu>0 && eps>0,
      Series[vol a^2 Exp[-mu eps] BesselK[2,a eps]/(2 Pi^2 eps),{eps,0,0}]];
    poissonConstant=FullSimplify[Coefficient[Normal[poissonSeries],eps,0],Assumptions->{a>0,mu>0}];
    directIntegral=NIntegrate[r^2 Exp[-(7/10) Sqrt[r^2+4]]/(2 Pi^2),{r,0,Infinity},
      WorkingPrecision->50,AccuracyGoal->35,PrecisionGoal->35];
    besselIntegral=N[4 BesselK[2,2 (7/10)]/(2 Pi^2 (7/10)),50];
    ca=Coefficient[Normal[Series[(1+a x)^(-s),{x,0,3}]],x,3];
    cb=Coefficient[Normal[Series[(1+b x)^(-s),{x,0,3}]],x,3];
    cab=Coefficient[Normal[Series[(1+a x)^(-s)(1+b x)^(-s),{x,0,3}]],x,3];
    poleDifference=FullSimplify[Coefficient[Normal[Series[
      cab (1/(2 s)+EulerGamma)-(ca+cb)(1/s+EulerGamma),{s,0,1}]],s,1]];
    anomaly=Factor[-poleDifference];
    massParameter=m;
    delta=(massParameter-1)/2;
    alphaSquared=(massParameter+1)^2/4;
    spectralMassSquared=a^2+alphaSquared;
    negativeCount=Factor[vol (-delta) (3 spectralMassSquared-2 delta^2)/(12 Pi^2)];
    etaCount=Factor[-2 negativeCount];
    torusVolumeDifference=-1/4 Integrate[
      (D[amplitude Cos[x],x])^2,{x,0,2 Pi},{y,0,2 Pi},Assumptions->Element[amplitude,Reals]];
    results=<|
      "KernelVersion"->$Version,
      "FiniteBlockIdentity"->finite,
      "IndefiniteToy"-><|"H"->toyH,"C_NotActualGravityAuxiliary"->toyC,"D"->toyD,
        "Hessian"->toyFull,"Determinant"->Det[toyFull],
        "NumericalEigenvalues"->N[Eigenvalues[toyFull],30],
        "PositiveNegativeZeroCounts"->Counts[Sign[Eigenvalues[toyFull]]]|>,
      "OneModeProjectionCounterexample"-><|"FullMatrix"->projectionFull,
        "FullDeterminant"->Factor[Det[projectionFull]],"CutMatrix"->projectionCut,
        "CutDeterminant"->Factor[Det[projectionCut]]|>,
      "FourierIndependentCutoff"->finiteRatios,
      "FourierLimit"->Limit[(2 n^2+1)/(n^2+1),n->Infinity],
      "EqualRankRotatedTopMode"-><|
        "Ratio"->(mSquared+n^2(1+Sin[angle]^2))/(mSquared+n^2),
        "Limit"->Limit[(mSquared+n^2(1+Sin[angle]^2))/(mSquared+n^2),n->Infinity],
        "ExampleN4MassSquared1AnglePiOver3"->FullSimplify[(1+16(1+Sin[Pi/3]^2))/17]|>,
      "CoframeCoordinateJacobian"-><|"OrderedVariables"->vars,"Jacobian"->jac,
        "GramMatrix"->gram,"AbsoluteJacobian"->Sqrt[Det[gram]],
        "FrobeniusNormResidual"->Expand[Tr[Transpose[em].em]-Tr[hm.hm]/4-2(theta1^2+theta2^2+theta3^2)]|>,
      "LaplaceHeatAndSpectralZeta"-><|"HeatSeries_uEqualsSqrtT"->heatSeries,
        "ConstantCoefficient"->Coefficient[Normal[heatSeries],u,0],
        "ZetaAtZero"->FullSimplify[Limit[zetaDensity,s->0],Assumptions->a>0],
        "ZetaPrimeAtZero"->FullSimplify[Limit[zetaDensity/s,s->0],Assumptions->a>0]|>,
      "ShiftedPoissonCounting"-><|"HeatSeries"->poissonSeries,
        "ConstantCoefficient"->poissonConstant,
        "ConstantFormulaResidual"->FullSimplify[poissonConstant-vol mu(3 a^2-2 mu^2)/(12 Pi^2)],
        "IntegralNumericalValue"->directIntegral,"BesselNumericalValue"->besselIntegral,
        "IntegralMinusBessel"->directIntegral-besselIntegral|>,
      "S3FirstOrderMultiplicativeAnomaly"-><|
        "CubicCoefficientA"->Factor[ca],"CubicCoefficientB"->Factor[cb],
        "CubicCoefficientAB"->Factor[cab],
        "ZetaDerivativeDifferenceFromUniquePole"->Factor[poleDifference],
        "LogDetAnomaly"->anomaly,"Example_a1over4_b1over2"->(anomaly/.{a->1/4,b->1/2})|>,
      "CoupledFirstOrderToySpectralPhase"-><|
        "Block"->{{m,-p},{-p,-1}},"Determinant"->Det[{{m,-p},{-p,-1}}],
        "Eigenvalues"->Eigenvalues[{{m,-p},{-p,-1}}],
        "NegativeEigenvalueCount_Zeta"->negativeCount,"EtaAtZero"->etaCount,
        "Example_m2_a1_NegativeCount"->(negativeCount/.{m->2,a->1}),
        "Example_m2_a1_Eta"->(etaCount/.{m->2,a->1})|>,
      "FlatTorusFiniteWeylVolumeVariation"->torusVolumeDifference
    |>;
    <|"Results"->results,"Failed"->(!FreeQ[results,$Failed|$Aborted]),
      "Messages"->(ToString[#,InputForm]&/@$MessageList)|>
  ]
];
root=Module[{home=Environment["DSH_HOME"]},If[!StringQ[home]||home=="",home=FileNameJoin[{$HomeDirectory,".dsh"}]];FileNameJoin[{home,"research-results","kernel-exports"}]];
If[!DirectoryQ[root],CreateDirectory[root,CreateIntermediateDirectories->True]];
tmp=RunProcess[{"mktemp","-d",FileNameJoin[{root,"wolfram.XXXXXX"}]}];
If[tmp["ExitCode"] =!= 0,Print[tmp];Abort[]];
out=StringTrim[tmp["StandardOutput"]];
exact=Export[FileNameJoin[{out,"actual-result.wxf"}],report,"WXF"];
preview=Export[FileNameJoin[{out,"actual-result.txt"}],ToString[report,InputForm,PageWidth->110],"Text"];
sourceCopy=CopyFile[$InputFileName,FileNameJoin[{out,"executed-checks.wl"}]];
{preview,exact,sourceCopy,report["Failed"],report["Messages"]}
