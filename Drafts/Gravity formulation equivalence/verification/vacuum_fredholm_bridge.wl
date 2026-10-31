(* Fresh, self-contained parent checks for the relative tangent determinant bridge.
   Every execution exports to a new private directory; no existing research file is overwritten.
   Assumptions: smooth orientation-preserving circle diffeomorphism; p0=g'>0.
   Generic graph calculations require invertible a and Schur complement S.
*)
Module[{report, tmp, dir, exact, preview, text},
 report = Block[{$Messages = {}, $MessageList = {}},
  Module[{ps, vs, dx, u, sg, ag, transformed, scalarResidual,
    mobiusResidual, linearResidual, mat, rho, dmat, a, b, c, d,
    da, db, dc, dd, z, s, dz, ds, ap, graphResidual,
    corr, gamma, connectionResidual, traceResidual, checks},
   ps={p0,p1,p2,p3,p4}; vs={v0,v1,v2,v3,v4};
   dx[expr_] := Sum[D[expr,ps[[j]]] ps[[j+1]],{j,1,4}]
                  +Sum[D[expr,vs[[j]]] p0 vs[[j+1]],{j,1,4}];
   u=v0/p0;
   sg=p2/p0-3 p1^2/(2 p0^2);
   ag=(1-2 sg)/p0^2-1;
   transformed=(Nest[dx,u,3]+dx[u])/p0^2;
   scalarResidual=Together[transformed-v3-(1+ag)v1-dx[ag]v0/(2p0)];
   mobiusResidual=Together[ag+2(sg+(p0^2-1)/2)/p0^2];
   linearResidual=Together[(D[ag/.{p0->1+t x1,p1->t x2,p2->t x3},t]/.t->0)+2(x3+x1)];
   mat=Array[g,{3,3}]; rho=Array[r,{3,3}]; dmat=mat.rho;
   a=mat[[{1},{1}]]; b=mat[[{1},{2,3}]];
   c=mat[[{2,3},{1}]]; d=mat[[{2,3},{2,3}]];
   da=dmat[[{1},{1}]]; db=dmat[[{1},{2,3}]];
   dc=dmat[[{2,3},{1}]]; dd=dmat[[{2,3},{2,3}]];
   z=c.Inverse[a]; s=d-z.b;
   dz=(dc-z.da).Inverse[a]; ds=dd-dz.b-z.db;
   ap=rho[[{2,3},{2,3}]];
   graphResidual=Map[Together,ds-s.ap+dz.b,{2}];
   corr=Array[tau,{2,2}];
   gamma=s.(ap+corr).Inverse[s]-ds.Inverse[s];
   connectionResidual=Map[Together,gamma-s.corr.Inverse[s]-dz.b.Inverse[s],{2}];
   traceResidual=Together[Tr[gamma]-Tr[corr]-Tr[dz.b.Inverse[s]]];
   checks=<|
    "third_order_pullback_residual"->scalarResidual,
    "projective_stabilizer_residual"->mobiusResidual,
    "infinitesimal_stress_residual"->linearResidual,
    "graph_frame_derivative_residual"->graphResidual,
    "graph_connection_residual"->connectionResidual,
    "finite_graph_trace_residual"->traceResidual
   |>;
   <|"KernelVersion"->$Version,
     "Assumptions"->{"p0>0", "a and Schur complement S invertible", "finite block graph checks do not certify infinite-dimensional estimates"},
     "Checks"->checks,
     "AllResidualsZero"->And@@(TrueQ[#===0]& /@ Flatten[Values[checks]]),
     "Failed"->!FreeQ[checks,$Failed|$Aborted],
     "UnevaluatedComputations"->!FreeQ[checks,_Sum|_Together|_Inverse|_D],
     "Messages"->(ToString[#,InputForm]& /@ $MessageList)|>
  ]
 ];
 tmp=Module[{home=Environment["DSH_HOME"],root},
  If[!StringQ[home]||home=="",home=FileNameJoin[{$HomeDirectory,".dsh"}]];
  root=FileNameJoin[{home,"research-results","kernel-exports"}];
  If[!DirectoryQ[root],CreateDirectory[root,CreateIntermediateDirectories->True]];
  RunProcess[{"mktemp","-d",FileNameJoin[{root,"fredholm-parent.XXXXXX"}]}]
 ];
 If[tmp["ExitCode"]=!=0,Return[tmp]];
 dir=StringTrim[tmp["StandardOutput"]];
 exact=Export[FileNameJoin[{dir,"result.wxf"}],report,"WXF"];
 text=ToString[report,InputForm,PageWidth->100];
 preview=Export[FileNameJoin[{dir,"preview.txt"}],StringRiffle[Table[StringTake[text,{i,Min[i+999,StringLength[text]]}],{i,1,StringLength[text],1000}],"\n"],"Text"];
 <|"Directory"->dir,"Preview"->preview,"Exact"->exact,
   "AllResidualsZero"->report["AllResidualsZero"],"Failed"->report["Failed"],
   "UnevaluatedComputations"->report["UnevaluatedComputations"],"Messages"->report["Messages"]|>
]
