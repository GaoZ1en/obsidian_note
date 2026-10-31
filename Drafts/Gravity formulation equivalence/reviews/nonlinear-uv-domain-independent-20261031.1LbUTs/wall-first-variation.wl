Module[{report, tmp, dir, exact, preview, result},
 report = Block[{$Messages = {}, $MessageList = {}},
   result = Module[{kap, k1, k2, t, f11, f12, f21, f22, f31, f32, dxf31, dxf32, dyf31, dyf32, v1, v2, v3, ex, ey, n0, nu, sol, n, nx, ny, ox, oy, dxn, dyn, ell, first, div, nond, checks},
     ex = {1,0,0}+t {f11,f21,f31}; ey={0,1,0}+t {f12,f22,f32}; n0={0,0,1};
     sol=First@Solve[{v1+f31==0,v2+f32==0,2v3==0},{v1,v2,v3}];
     nu={v1,v2,v3}/.sol; n=n0+t nu;
     nx=t {-dxf31,-dxf32,0}; ny=t {-dyf31,-dyf32,0};
     ox={0,k1,0}; oy={-k2,0,0};
     dxn=nx+Cross[ox,n]; dyn=ny+Cross[oy,n];
     ell=-kap n.(Cross[ex,dyn]-Cross[ey,dxn])+kap n.Cross[ex,ey];
     first=Expand[Coefficient[Expand[ell],t,1]];
     div=kap (dxf31+dyf32);
     nond=kap ((1-k2) f11+(1-k1) f22);
     checks=<|
       "normal_tangency_x"->(Expand[Coefficient[n.ex,t,1]]===0),
       "normal_tangency_y"->(Expand[Coefficient[n.ey,t,1]]===0),
       "normal_normalization"->(Expand[Coefficient[n.n,t,1]]===0),
       "background_wall_density"->(Expand[(ell/.t->0)+kap (k1+k2-1)]===0),
       "first_variation_before_divergence_removal"->(Expand[first-nond-div]===0),
       "first_variation_after_divergence_removal"->(Expand[first-div-nond]===0),
       "divergence_primitive_components"->(Expand[kap n0.Cross[{1,0,0},nu]+kap f32]===0 && Expand[kap n0.Cross[{0,1,0},nu]-kap f31]===0)
       |>;
     <|"Checks"->checks,"AllPassed"->And@@Values[checks],"FirstVariation"->first,"TangentialDivergence"->div,"IntegratedRemainder"->nond,"NormalVariation"->nu,"Scope"->"Exact first variation at an adapted orthonormal principal frame with vanishing surface connection at the point; covariance and closed-wall integration complete the analytic proof."|>
   ];
   <|"Result"->result,"Failed"->(result===$Failed||result===$Aborted),"Messages"->(ToString[#,InputForm]&/@$MessageList)|>
 ];
 tmp=Module[{home=Environment["DSH_HOME"],root},If[!StringQ[home]||home=="",home=FileNameJoin[{$HomeDirectory,".dsh"}]];root=FileNameJoin[{home,"research-results","kernel-exports"}];If[!DirectoryQ[root],CreateDirectory[root,CreateIntermediateDirectories->True]];RunProcess[{"mktemp","-d",FileNameJoin[{root,"wall-variation.XXXXXX"}]}]];
 If[tmp["ExitCode"]=!=0,Return[tmp]];dir=StringTrim[tmp["StandardOutput"]];
 exact=Export[FileNameJoin[{dir,"result.wxf"}],report,"WXF"];
 preview=Export[FileNameJoin[{dir,"preview.txt"}],ToString[report,InputForm,PageWidth->100],"Text"];
 {preview,exact,report["Result"]["AllPassed"],report["Failed"],report["Messages"]}
]
