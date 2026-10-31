(* Source-dependent metric Ward bridge. Fresh xAct components kernel required.
   Component and scalar algebra are distinct checks; no infinite-dimensional
   determinant/domain theorem is inferred from these finite residuals. *)
report = Block[{$DefInfoQ = False, $Messages = {}, $MessageList = {}},
 Module[{u, v, met, conn, scalarR, eps, muv, gij, gijInv, coords, christ,
   stress, div, trace, linear, resp, respb, h, hb, cc, n, nu, pp, rr,
   wardResponse, canonicalKernel, contact, sig, grad2, curvature, cut,
   epsilon, volumeFinite, lambda, beta, amp, spatial, mode,
   modulus, ell, ell1, ell2, susc, checks, result},
  DefManifold[WardSurface, 2, {ia, ib, ic, id}];
  DefChart[wardchart, WardSurface, {0, 1}, {wu[], wv[]}];
  DefScalarFunction[wardMu];
  DefConstantSymbol[wardEps];
  met = CTensor[{{0, 1/2}, {1/2, wardEps wardMu[wu[], wv[]]}},
                {-wardchart, -wardchart}];
  SetCMetric[met, wardchart, SignatureOfMetric -> {1, 1, 0}];
  conn = CovDOfMetric[met];
  scalarR = Simplify[RicciScalar[conn][] /. {wu[] -> u, wv[] -> v}];
  (* u=w,v=bar w are independent analytic coordinates; the null-coordinate
     matrix is the complexification of a Euclidean Beltrami perturbation. *)
  eps = wardEps;
  muv = wardMu[u, v];
  coords = {u, v};
  gij = {{0, 1/2}, {1/2, eps muv}};
  gijInv = Inverse[gij];
  christ = Table[Sum[gijInv[[i,l]] (D[gij[[l,k]],coords[[j]]] +
       D[gij[[l,j]],coords[[k]]] - D[gij[[j,k]],coords[[l]]])/2,
       {l,2}], {i,2}, {j,2}, {k,2}];
  (* F=log Z, delta F=1/2 int sqrt(g) S^ij delta g_ij;
     chiral T=-2pi S_ww; delta F/delta mu=-T/pi. *)
  stress = {{-(h+eps resp[u,v])/(2 Pi),
       -eps muv h/(2 Pi)+eps cc D[muv,{u,2}]/(24 Pi)},
      {-eps muv h/(2 Pi)+eps cc D[muv,{u,2}]/(24 Pi),
       -(hb+eps respb[u,v])/(2 Pi)}};
  div = Table[Sum[gijInv[[i,k]] (D[stress[[i,j]],coords[[k]]] -
      Sum[christ[[l,k,i]] stress[[l,j]]+christ[[l,k,j]] stress[[i,l]],{l,2}]),
      {i,2},{k,2}], {j,2}];
  trace = Sum[gijInv[[i,j]] stress[[i,j]],{i,2},{j,2}];
  linear[expr_] := Simplify[Coefficient[Expand[expr],eps,1]];
  pp = (I nu-n)/2; rr = (I nu+n)/2;
  wardResponse = (2 h pp+cc pp^3/12)/rr;
  canonicalKernel = (2 n h+cc n^3/12)/(n+I nu);
  contact = h+cc (rr^2-3 rr pp+3 pp^2)/24;
  (* Geodesic defining function: log(rhohat/rho)=sig-rho^2 grad2/4+...;
     solve rhohat=epsilon for the old rho through cubic order. *)
  cut = epsilon Exp[-sig] (1+epsilon^2 Exp[-2 sig] grad2/4);
  volumeFinite = Limit[1/(2 cut^2)-Exp[2 sig]/(2 epsilon^2),
      epsilon -> 0, Assumptions -> Element[{sig,grad2},Reals]] - curvature sig/4;
  (* Constant Beltrami source, beta_eff=beta(1+mu)/(1-mu).
     ell'(beta)=-h; ell''(beta)=Var(H)=susc. *)
  modulus = beta (1+amp)/(1-amp);
  checks = <|
    "xCoba_scalar_curvature_linear" ->
       Simplify[linear[scalarR]-4 D[muv,{u,2}]],
    "source_trace_anomaly" ->
       Simplify[linear[trace]-cc linear[scalarR]/(24 Pi)],
    "source_conservation_Ward" ->
       Simplify[linear[div[[1]]] +
        (D[resp[u,v],v]-2 h D[muv,u]-cc D[muv,{u,3}]/12)/Pi],
    "covariant_vs_canonical_contact" -> Together[wardResponse+2 canonicalKernel-2 contact],
    "nonzero_temporal_zero_spatial_contact" -> Together[(wardResponse-2 contact)/.n->0],
    "vacuum_kernel_PSL_factor" -> Factor[(2 n h+cc n^3/12)/.h->-cc/24]-cc n(n^2-1)/12,
    "geodesic_cutoff_inverse" ->
       Simplify[Coefficient[Normal[Series[Exp[sig] cut (1-cut^2 grad2/4)-epsilon,
                    {epsilon,0,3}]],epsilon,3]],
    "renormalized_volume_Weyl_finite_part" ->
       Simplify[volumeFinite+(grad2+curvature sig)/4],
    "density_to_anomaly_normalization" -> Simplify[-lambda/4-(-6 Pi lambda)/(24 Pi)],
    "constant_Beltrami_linear_modulus" -> Simplify[(D[modulus,amp]/.amp->0)-2 beta],
    "constant_Beltrami_Hessian" ->
       Simplify[(-h (D[modulus,{amp,2}]/.amp->0)+
          susc (D[modulus,amp]/.amp->0)^2)-(4 beta^2 susc-4 beta h)],
    "constant_Beltrami_stress_response" ->
       Simplify[-(4 beta^2 susc-4 beta h)/(2 beta)-(2 h-2 beta susc)],
    "sinusoidal_Weyl_source_integral" ->
       FullSimplify[Integrate[(D[amp Cos[mode spatial],spatial])^2,
           {spatial,0,2 Pi},Assumptions->Element[mode,Integers]&&mode>=1] -
          Pi amp^2 mode^2,Assumptions->Element[mode,Integers]&&mode>=1]
    |>;
  result = <|"KernelVersion"->$Version,
    "Conventions"->"ell=1; F=log Z; deltaF=1/2 int S^ij deltag_ij; T=-2pi S_ww; w=t+ix; c symbolic",
    "Assumptions"->{"Beltrami directions complexified at a positive Euclidean metric",
       "nonzero Fourier denominators", "epsilon>0; sigma real", "mode integer>=1"},
    "ScalarCurvature"->scalarR, "Checks"->checks,
    "AllResidualsZero"->And@@(TrueQ[Simplify[#]==0]& /@ Values[checks]),
    "WardResponse"->wardResponse,"CanonicalKernel"->canonicalKernel,
    "ContactPolynomial"->contact,
    "VolumeWeylFinitePart"->volumeFinite|>;
  <|"Result"->result,"Failed"->!FreeQ[result,$Failed|$Aborted],
    "UnevaluatedComputations"->!FreeQ[result,_Integrate|_Limit|_RicciScalar],
    "Messages"->(ToString[#,InputForm]& /@ $MessageList)|>
 ]
];
Module[{home, root, tmp, dir},
 home=Environment["DSH_HOME"];
 If[!StringQ[home]||home=="",home=FileNameJoin[{$HomeDirectory,".dsh"}]];
 root=FileNameJoin[{home,"research-results","kernel-exports"}];
 If[!DirectoryQ[root],CreateDirectory[root,CreateIntermediateDirectories->True]];
 tmp=RunProcess[{"mktemp","-d",FileNameJoin[{root,"source-ward-parent.XXXXXX"}]}];
 If[tmp["ExitCode"]=!=0,Return[tmp]];
 dir=StringTrim[tmp["StandardOutput"]];
 Export[FileNameJoin[{dir,"result.wxf"}],report,"WXF"];
 Export[FileNameJoin[{dir,"preview.txt"}],ToString[report,InputForm,PageWidth->100],"Text"];
 <|"OutputDirectory"->dir,"Checks"->report["Result"]["Checks"],
   "AllResidualsZero"->report["Result"]["AllResidualsZero"],
   "Failed"->report["Failed"],"UnevaluatedComputations"->report["UnevaluatedComputations"],
   "Messages"->report["Messages"]|>
]
