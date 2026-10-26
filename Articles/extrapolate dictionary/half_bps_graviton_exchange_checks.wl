(* AdS5 neutral Einstein-scalar exchange. Self-contained Wolfram checks.
   q is defined by delta g_ij=2 kappa ell^2/z^2 q_ij.
   The script exports evidence only to a new private directory. *)
Begin["AdS5ExchangeChecks`"];
ClearAll["AdS5ExchangeChecks`*"];
report = Block[{$MessageList = {}}, Module[
 {id=IdentityMatrix[4],kv={0,0,0,k},basis,op,num,om,nm,tt,pp,ll,pv,
  lo,hi,g0,jj,gdl,jdl,gnl,jnl,exact,pol,k1,k2,k3,k4,pt,pr,proj,
  av,bv,dv,ev,ba,bb,contract,target,tetra,radialNumerics,base,samples,
  cross,checks,nc,kap,ell,col},
 basis=Join[Table[DiagonalMatrix[UnitVector[4,i]],{i,4}],
   Flatten[Table[If[i<j,{(Outer[Times,UnitVector[4,i],UnitVector[4,j]]+
     Outer[Times,UnitVector[4,j],UnitVector[4,i]])/Sqrt[2]},{}],{i,4},{j,4}],2]];
 op[h_]:=(w^2+k^2)h-Outer[Times,kv,kv.h]-Outer[Times,h.kv,kv]+
   Outer[Times,kv,kv]Tr[h]+id(kv.h.kv-(w^2+k^2)Tr[h]);
 tt=id+Outer[Times,kv,kv]/w^2;
 num[h_]:=(tt.h.tt-tt Tr[tt.h]/3)/(w^2+k^2);
 om=Table[Tr[basis[[i]].op[basis[[j]]]],{i,10},{j,10}];
 nm=Table[Tr[basis[[i]].num[basis[[j]]]],{i,10},{j,10}];
 g0=lo^4/4; jj=lo^4 hi^2/16-lo^6/48;
 gdl=g0-lo^4 hi^4/(4 cut^4);
 jdl=jj-lo^4 hi^4/(12 cut^2)+lo^4 hi^4(lo^2+hi^2)/(48cut^4);
 gnl=g0; jnl=jj-lo^4 hi^4/(32cut^2);
 exact=<|
 "TenComponentInverse"->Simplify[om.nm-IdentityMatrix[10]],
 "BesselEigenEquation"->FullSimplify[-D[z^2 BesselJ[2,w z],{z,2}]+3D[z^2 BesselJ[2,w z],z]/z-w^2 z^2 BesselJ[2,w z]],
 "GreenJump"->FullSimplify[-z^-3(z^2 BesselI[2,k z]D[z^2 BesselK[2,k z],z]-z^2 BesselK[2,k z]D[z^2 BesselI[2,k z],z])-1,Assumptions->k>0&&z>0],
 "JConvolution"->FullSimplify[Integrate[t^5/16,{t,0,lo}]+Integrate[lo^4 t/16,{t,lo,hi}]+Integrate[lo^4 hi^4/(16t^3),{t,hi,Infinity}]-jj,Assumptions->hi>lo>0],
 "JInverse"->Simplify[{-D[jj,{lo,2}]+3D[jj,lo]/lo-g0,-D[jj,{hi,2}]+3D[jj,hi]/hi-g0}],
 "DirichletJInverse"->Simplify[{-D[jdl,{lo,2}]+3D[jdl,lo]/lo-gdl,-D[jdl,{hi,2}]+3D[jdl,hi]/hi-gdl}],
 "DirichletEndpoint"->Simplify[{gdl,jdl}/.hi->cut],
 "NeumannEndpoint"->Simplify[D[{gnl,jnl},hi]/.hi->cut],
 "FiniteCutoffLimit"->Simplify[Limit[{gdl,jdl,gnl,jnl},cut->Infinity]-{g0,jj,g0,jj}],
 "ExchangeNormalization"->Simplify[(kap^2 ell^3(2Pi^2/(nc ell^2))^4)/.{nc->Sqrt[2Pi^2/ell],kap->2Pi ell^(3/2)/col}]-16Pi^6/col^2,
 "BFStressCancellation"->Expand[(2z f+z^2 fp)(2z g+z^2 gp)-4z^2 f g-z^4 fp gp-2z^3(fp g+f gp)],
 "SingleVertexMoment"->Integrate[z^5 BesselK[0,z]^2,{z,0,Infinity}]-16/15,
 "I0RemainderCoefficient"->Table[1/(4^n(n!)^2)-1/(64*4^(n-2)((n-2)!)^2),{n,2,6}]
 |>;
 (* The last group is a nonpositivity check, not a zero residual. *)
 checks=Last[Values[exact]]; exact=KeyDrop[exact,"I0RemainderCoefficient"];
 k1={1,1,1,0}/Sqrt[3];k2={1,-1,-1,0}/Sqrt[3];
 k3={-1,1,-1,0}/Sqrt[3];k4={-1,-1,1,0}/Sqrt[3];
 pt=k1+k2;pr=Outer[Times,pt,pt]/(pt.pt);proj=id-pr;
 ba=-(Outer[Times,k1,k2]+Outer[Times,k2,k1])av-id dv;
 bb=-(Outer[Times,k3,k4]+Outer[Times,k4,k3])bv-id ev;
 contract=gg(Tr[ba.proj.bb.proj]-Tr[ba.proj]Tr[bb.proj]/3)+
   rr(2Tr[ba.proj.bb.pr]-(Tr[ba.proj]Tr[bb.pr]+Tr[ba.pr]Tr[bb.proj])/3+
      2Tr[ba.pr]Tr[bb.pr]/3)+(8/9)ss Tr[ba.pr]Tr[bb.pr];
 target=-(16/27)gg av bv+rr(8av bv/9+2(av ev+dv bv)/9-4dv ev/3)+
   (8/9)ss(-2av/3-dv)(-2bv/3-ev);
 AssociateTo[exact,{"TetrahedralContraction"->Simplify[contract-target],
   "TetrahedralMomentum"->Simplify[{Total[{k1,k2,k3,k4}],k1.k1-1,k1.k2+1/3,pt.pt-4/3}]}];
 radialNumerics[rad_,wp_,ag_,end_,start_]:=Module[
 {x,fs,aa,dd,bl,p=2/Sqrt[3],vars,eq,ranges,initial,sol,vals,rhs,low,high,branch},
 vars=Array[y,9];initial=ConstantArray[0,9];
 ranges=If[rad==0,{{start,end,0}},{{start,rad,1},{rad,end,2}}];
 Do[{low,high,branch}=rrange;
  fs=Switch[branch,0,BesselK[0,x],1,BesselI[0,x]BesselK[0,rad],2,BesselI[0,rad]BesselK[0,x]];
  aa=x^4 fs^2;
  dd=Expand[(2x fs+x^2 D[fs,x])^2+x^4 fs^2/3-4x^2 fs^2];bl=-2aa/3-dd;
  rhs={x aa,x dd,x bl,x^3 bl,aa BesselI[2,p x]/x,x^3 fs^4,
   2aa BesselK[2,p x]y[5][x]/x,
   (8aa y[1][x]/9+2(dd y[1][x]+aa y[2][x])/9-4dd y[2][x]/3)/(2x^3),
   16bl(x^2 y[3][x]/16-y[4][x]/48)/(9x^3)};
  eq=Join[Thread[Through[(Derivative[1]/@vars)[x]]==rhs],Thread[Through[vars[low]]==initial]];
  sol=NDSolveValue[eq,vars,{x,N[low,wp],N[high,wp]},WorkingPrecision->wp,
    AccuracyGoal->ag,PrecisionGoal->ag,MaxSteps->Infinity,
    Method->{"ExplicitRungeKutta","DifferenceOrder"->8}];
  If[!MatchQ[sol,{__InterpolatingFunction}] || Min[Last[First[#["Domain"]]]&/@sol]<N[high,wp],Return[$Failed]];
  (* Restore the working-precision container at the interval join; numerical
     accuracy remains controlled by ag, not by the displayed precision. *)
  initial=SetPrecision[Through[sol[N[high,wp]]],wp],{rrange,ranges}];
 vals=initial;
 <|"Radius"->rad,"ContactRadial"->vals[[6]],"TTpair"->-16vals[[7]]/27,
  "ConstraintG0pair"->vals[[8]],"ConstraintJpair"->vals[[9]],
  "Pair"->(-16vals[[7]]/27+vals[[8]]+vals[[9]]),
  "FullScaled"->32vals[[6]]/3+3(-16vals[[7]]/27+vals[[8]]+vals[[9]])|>];
 base=radialNumerics[0,35,18,40,10^-10];
 samples=Table[Module[{r=radialNumerics[a,35,18,40,10^-10]},
   Join[r,<|"FullDifferenceOverRadiusSquared"->(r["FullScaled"]-base["FullScaled"])/a^2,
     "FullRemainderAfterQuadraticBias"->r["FullScaled"]-(1+a^2)base["FullScaled"]|>]],
   {a,{1/20,1/100,1/500}}];
 cross=radialNumerics[0,45,24,50,10^-12];
 <|"ExactResiduals"->exact,"AllExactResidualsZero"->And@@(TrueQ[#==0]&/@Flatten[Values[exact]]),
 "I0CoefficientInequalities"->(TrueQ[#<=0]&/@checks),
 "BoundaryTetrahedron"->base,"EqualRadiusTetrahedronSamples"->samples,
 "HigherPrecisionBoundary"->cross,
 "BoundaryStabilityDifference"->(cross["FullScaled"]-base["FullScaled"]),
 "NumericalScope"->"ODE quadrature with explicit slice splits; higher precision and larger integration range cross-check, not interval-certified error bounds.",
 "Messages"->(ToString[#,InputForm]&/@$MessageList)|>
 ]];
finalResult=Module[{home=Environment["DSH_HOME"],root,tmp,dir},
 If[!StringQ[home]||home=="",home=FileNameJoin[{$HomeDirectory,".dsh"}]];
 root=FileNameJoin[{home,"research-results","kernel-exports"}];
 If[!DirectoryQ[root],CreateDirectory[root,CreateIntermediateDirectories->True]];
 tmp=RunProcess[{"mktemp","-d",FileNameJoin[{root,"wolfram.XXXXXX"}]}];
 If[tmp["ExitCode"]!=0,Return[tmp]];dir=StringTrim[tmp["StandardOutput"]];
 Export[FileNameJoin[{dir,"result.wxf"}],report,"WXF"];
 Export[FileNameJoin[{dir,"preview.txt"}],ToString[report,InputForm,PageWidth->100],"Text"];
 <|"Directory"->dir,"AllExactResidualsZero"->report["AllExactResidualsZero"],"Messages"->report["Messages"]|>];
End[];
AdS5ExchangeChecks`finalResult
