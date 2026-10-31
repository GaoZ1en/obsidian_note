(* Standalone exact parent verification. Signature (-+++), epsilon0123=+1.
   Gamma^i=-epsilon^i_jk omega^{jk}/2, K^i=omega^{0i}, A=Gamma+gam K.
   Coordinates (tau,rho,theta,phi), tau>0,rho>0,0<theta<Pi.
   Full antisymmetric-index sums. Exports only to a fresh private directory. *)
ClearAll["Global`*"];
report = Block[{$Messages = {}, $MessageList = {}},
 Module[{x, eta, ee, ww, emb, jac, metric, wedge, exterior, torsion, curvature,
   xyz, wedge3, exterior3, eps, triad, spin, extr, conn, area, fc, target,
   v, mat, normsq, hol, specialMat, specialHol, planeMat, checks, zero,
   ass, traceFormula, selfdual, result},
  x = {tau,rho,theta,phi};
  ass = tau>0 && a>0 && rho>0 && 0<theta<Pi && Element[phi,Reals];
  eta = DiagonalMatrix[{-1,1,1,1}];
  ee = DiagonalMatrix[{1,tau,tau Sinh[rho],tau Sinh[rho] Sin[theta]}];
  emb = {tau Cosh[rho],tau Sinh[rho] Sin[theta] Cos[phi],
    tau Sinh[rho] Sin[theta] Sin[phi],tau Sinh[rho] Cos[theta]};
  jac = Table[D[emb[[i]],x[[b]]],{i,4},{b,4}];
  metric = Transpose[jac].eta.jac;
  wedge[u_,v_] := Outer[Times,u,v]-Outer[Times,v,u];
  exterior[u_] := Table[D[u[[b]],x[[c]]]-D[u[[c]],x[[b]]],{c,4},{b,4}];
  ww = ConstantArray[0,{4,4,4}];
  ww[[1,2]]={0,1,0,0}; ww[[1,3]]={0,0,Sinh[rho],0};
  ww[[1,4]]={0,0,0,Sinh[rho] Sin[theta]};
  ww[[2,3]]={0,0,-Cosh[rho],0};
  ww[[2,4]]={0,0,0,-Cosh[rho] Sin[theta]};
  ww[[3,4]]={0,0,0,-Cos[theta]};
  Do[ww[[j,i]]=-ww[[i,j]],{i,4},{j,i+1,4}];
  torsion=Table[exterior[ee[[i]]]+Sum[eta[[j,j]] wedge[ww[[i,j]],ee[[j]]],{j,4}],{i,4}];
  curvature=Table[exterior[ww[[i,j]]]+Sum[eta[[k,k]] wedge[ww[[i,k]],ww[[k,j]]],{k,4}],{i,4},{j,4}];
  xyz={rho,theta,phi};
  wedge3[u_,v_] := Outer[Times,u,v]-Outer[Times,v,u];
  exterior3[u_] := Table[D[u[[b]],xyz[[c]]]-D[u[[c]],xyz[[b]]],{c,3},{b,3}];
  eps[i_,j_,k_] := Signature[{i,j,k}];
  triad=DiagonalMatrix[{a,a Sinh[rho],a Sinh[rho] Sin[theta]}];
  spin={{0,0,Cos[theta]},{0,0,-Cosh[rho] Sin[theta]},{0,Cosh[rho],0}};
  extr=DiagonalMatrix[{1,Sinh[rho],Sinh[rho] Sin[theta]}];
  conn=spin+gam extr;
  area=Table[Sum[eps[i,j,k] wedge3[triad[[j]],triad[[k]]],{j,3},{k,3}]/2,{i,3}];
  fc=Table[exterior3[conn[[i]]]+Sum[eps[i,j,k] wedge3[conn[[j]],conn[[k]]],{j,3},{k,3}]/2,{i,3}];
  target=(1+gam^2) area/a^2;
  v={0,-Cosh[rho],gam Sinh[rho]};
  mat=Table[Sum[eps[i,j,k]v[[j]],{j,3}],{i,3},{k,3}];
  normsq=1+(1+gam^2) Sinh[rho]^2;
  hol=IdentityMatrix[3]-Sin[2Pi Sqrt[normsq]]mat/Sqrt[normsq]
    +(1-Cos[2Pi Sqrt[normsq]])mat.mat/normsq;
  traceFormula=1+2Cos[2Pi Sqrt[normsq]];
  specialMat=FullSimplify[mat/.{gam->1,rho->ArcSinh[Sqrt[5/8]]}];
  specialHol=FullSimplify[MatrixExp[-2Pi specialMat]];
  planeMat=mat/.{rho->0,gam->1};
  selfdual=Table[FullSimplify[hol/.gam->sgn I,Assumptions->ass],{sgn,{-1,1}}];
  zero[z_] := And@@(TrueQ[FullSimplify[#==0,Assumptions->ass]]& /@ Flatten[{z}]);
  checks=<|
   "Minkowski embedding gives tetrad metric"->zero[metric-Transpose[ee].eta.ee],
   "All four Cartan torsions vanish"->zero[torsion],
   "All Lorentz curvatures vanish"->zero[curvature],
   "Gamma matches Lorentz rotational projection"->zero[spin-Table[-Sum[eps[i,j,k]ww[[j+1,k+1,2;;4]],{j,3},{k,3}]/2,{i,3}]],
   "Spatial triad compatibility"->zero[Table[exterior3[triad[[i]]]+Sum[eps[i,j,k]wedge3[spin[[j]],triad[[k]]],{j,3},{k,3}],{i,3}]],
   "Extrinsic K equals triad over radius"->zero[extr-triad/a],
   "General Barbero curvature factor one plus gamma squared"->zero[fc-target],
   "Both selfdual curvatures vanish"->zero[{fc/.gam->I,fc/.gam->-I}],
   "Loop generator cubic identity"->zero[mat.mat.mat+normsq mat],
   "Rodrigues holonomy trace"->zero[Tr[hol]-traceFormula],
   "Plane loop has identity adjoint holonomy"->zero[MatrixExp[-2Pi planeMat]-IdentityMatrix[3]],
   "Exact real gamma example trace minus one"->zero[Tr[specialHol]+1],
   "Exact real gamma example is a nonidentity SO3 halfturn"->TrueQ[zero[specialHol.Transpose[specialHol]-IdentityMatrix[3]] && zero[Det[specialHol]-1] && zero[specialHol.specialHol-IdentityMatrix[3]] && !zero[specialHol-IdentityMatrix[3]]],
   "Both selfdual loop holonomies are identity"->zero[selfdual-{IdentityMatrix[3],IdentityMatrix[3]}]
  |>;
  result=<|"Checks"->checks,"Count"->Length[checks],"AllPassed"->And@@Values[checks],
    "CurvatureCoefficient"->ToString[(1+gam^2)/a^2,InputForm],
    "LoopTrace"->ToString[traceFormula,InputForm],
    "SpecialRealExample"->"gam=1, R/a=sqrt(5/8); adjoint trace=-1, versus 3 on plane",
    "SpecialHolonomy"->Map[ToString[#,InputForm]&,specialHol,{2}],
    "Messages"->(ToString[#,InputForm]& /@ $MessageList)|>;
  result
 ]];
Module[{home=Environment["DSH_HOME"],root,tmp,dir,json,wxf},
 If[!StringQ[home]||home=="",home=FileNameJoin[{$HomeDirectory,".dsh"}]];
 root=FileNameJoin[{home,"research-results","kernel-exports"}];
 If[!DirectoryQ[root],CreateDirectory[root,CreateIntermediateDirectories->True]];
 tmp=RunProcess[{"mktemp","-d",FileNameJoin[{root,"barbero-milne.XXXXXX"}]}];
 If[tmp["ExitCode"]=!=0,Return[tmp]];
 dir=StringTrim[tmp["StandardOutput"]];
 json=Export[FileNameJoin[{dir,"result.json"}],report,"RawJSON"];
 wxf=Export[FileNameJoin[{dir,"result.wxf"}],report,"WXF"];
 <|"JSON"->json,"WXF"->wxf,"Count"->report["Count"],"AllPassed"->report["AllPassed"],"Messages"->report["Messages"]|>
]
