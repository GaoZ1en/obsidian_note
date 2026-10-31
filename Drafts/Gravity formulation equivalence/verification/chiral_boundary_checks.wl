(* Independent finite-cutoff chiral-CS / metric-GHY-counterterm algebra.
   Coordinates {t,phi,r}; wall tau=-dt wedge dphi; ell>0,r>0,
   D=r^2-a b/r^2>0. Fundamental trace, k=4 Pi gamma ell.
   No global filling or quantum claim is tested here. *)
ClearAll[ChiralBoundaryChecks];
ChiralBoundaryChecks[] := Block[{$Messages = {}, $MessageList = {}},
 Module[{ell,r,a,b,da,db,gamma,k,eta,j0,j1,j2,mm,nn,aa,bb,ee,ww,
   em,dem,metric,q,qi,area,kij,ktr,dq,bwall,lmetric,wallDifference,
   source,beta,lam,alpha,eps3,var,checks,zeroQ,mt,mx,bt,bx,dmt,dmx,dbt,dbx,
   thetaWall,lch,vlch,expected,ta,tb,dA,dB,at,ar,ap,dat,dar,dap,
   matrices,jets,csCoeff,canonicalCoeff,dP,report,s,coordinateVolume,
   boundaryVolume,bDirect,scalarForms,wedgeTr,names,nonzero={}},
  eta=DiagonalMatrix[{-1,1,1}];
  j0={{0,1},{-1,0}}/2; j1={{0,1},{1,0}}/2; j2=DiagonalMatrix[{1,-1}]/2;
  eps3[i_,j_,l_]:=Signature[{i,j,l}];
  zeroQ[x_]:=Module[{yy=(Cancel[Together[#]]& /@ Flatten[{x}])}, If[!And@@(TrueQ[#===0]& /@ yy),AppendTo[nonzero,ToString[yy,InputForm]]]; And@@(TrueQ[#===0]& /@ yy)];
  var[x_]:=D[x,a] da+D[x,b] db;
  mm={{0,a/r},{r,0}}; nn={{0,-r},{-b/r,0}};
  aa={mm,mm,j2/r}; bb={-nn,nn,-j2/r};
  ee=ell (aa-bb)/2; ww=(aa+bb)/2;
  scalarForms[conn_]:=Transpose[Table[{-2 Tr[j0.conn[[i]]],2 Tr[j1.conn[[i]]],2 Tr[j2.conn[[i]]]}, {i,3}]];
  em=scalarForms[ee]; dem=var[em]; metric=Simplify[Transpose[em].eta.em];
  q=metric[[1;;2,1;;2]]; qi=Simplify[Inverse[q]];
  area=ell^2 (r^2-a b/r^2); coordinateVolume=-ell^3 (r-a b/r^3);
  kij=r/(2 ell) D[q,r]; ktr=Simplify[Tr[qi.kij]]; dq=var[q];
  wedgeTr[x_,y_,i_,j_]:=Tr[x[[i]].y[[j]]-x[[j]].y[[i]]];
  (* Minus sign converts dt wedge dphi coefficient to tau coefficient. *)
  bwall=-gamma ell wedgeTr[aa,bb,1,2];
  bDirect=2 gamma wedgeTr[ww,ee,1,2];
  lmetric=Simplify[2 gamma (ktr-1/ell) area];
  wallDifference=Simplify[bwall-lmetric];
  source=Simplify[gamma area ((ktr-1/ell)Tr[qi.dq]-Tr[qi.kij.qi.dq])];
  beta=Simplify[dem.Inverse[em].eta]; lam=(beta-Transpose[beta])/2;
  alpha=Simplify[Table[gamma Sum[eps3[i,j,l] em[[i,mu]] lam[[j,l]],{i,3},{j,3},{l,3}],{mu,3}]];
  checks=<|
   "coframe orientation and determinant"->zeroQ[Det[em]-coordinateVolume],
   "metric radial block"->zeroQ[metric[[3]]-{0,0,ell^2/r^2}],
   "induced metric"->zeroQ[q-ell^2 {{-r^2+a+b-a b/r^2,a-b},{a-b,r^2+a+b+a b/r^2}}],
   "induced determinant"->zeroQ[Det[q]+area^2],
   "extrinsic trace"->zeroQ[ktr-2/ell (r^2+a b/r^2)/(r^2-a b/r^2)],
   "transgression wall scalar"->zeroQ[bwall-2 gamma ell (r^2+a b/r^2)],
   "direct omega-e transgression agrees"->zeroQ[bDirect-bwall],
   "GHY-counterterm wall scalar"->zeroQ[lmetric-2 gamma ell (r^2+3 a b/r^2)],
   "finite-cutoff action defect"->zeroQ[wallDifference+4 gamma ell a b/r^2],
   "metric wall source"->zeroQ[source-4 gamma ell (b da+a db)/r^2],
   "source is variation of negative defect"->zeroQ[source+var[wallDifference]],
   "corner alpha pullback zero"->zeroQ[alpha[[1;;2]]],
   "wall defect limit"->TrueQ[Limit[wallDifference,r->Infinity]===0],
   "wall source limit"->TrueQ[Limit[source,r->Infinity]===0],
   "global vacuum defect"->zeroQ[(wallDifference/.{a->-1/4,b->-1/4})+gamma ell/(4 r^2)],
   "one vanishing chirality has zero defect"->zeroQ[wallDifference/.b->0]
  |>;
  (* Generic covariant chiral wall potential, before imposing any boundary relation. *)
  mt={{ta[1],ta[2]},{ta[3],-ta[1]}}; mx={{ta[4],ta[5]},{ta[6],-ta[4]}};
  bt={{tb[1],tb[2]},{tb[3],-tb[1]}}; bx={{tb[4],tb[5]},{tb[6],-tb[4]}};
  dmt=mt/.ta->dA; dmx=mx/.ta->dA; dbt=bt/.tb->dB; dbx=bx/.tb->dB;
  thetaWall=k/(4 Pi)Tr[mt.dmx-mx.dmt-bt.dbx+bx.dbt];
  lch=k/(4 Pi)Tr[mt.mx-bt.bx-mx.mx-bx.bx];
  vlch=D[k/(4 Pi)Tr[(mt+s dmt).(mx+s dmx)-(bt+s dbt).(bx+s dbx)-(mx+s dmx).(mx+s dmx)-(bx+s dbx).(bx+s dbx)],s]/.s->0;
  expected=k/(2 Pi)Tr[(mt-mx).dmx-(bt+bx).dbx];
  AssociateTo[checks,"generic chiral wall variation"->zeroQ[thetaWall+vlch-expected]];
  AssociateTo[checks,"chiral covariant boundary density vanishes on slice"->zeroQ[lch/.Join[Thread[Table[ta[i],{i,1,3}]->Table[ta[i],{i,4,6}]],Thread[Table[tb[i],{i,1,3}]->-Table[tb[i],{i,4,6}]]]]];
  (* Exact canonical decomposition in coordinates {t,r,phi}.
     jets[[i,j]] is partial_j A_i, algebraically independent. *)
  matrices=Table[{{at[i,1],at[i,2]},{at[i,3],-at[i,1]}},{i,3}];
  jets=Table[{{dat[i,j,1],dat[i,j,2]},{dat[i,j,3],-dat[i,j,1]}},{i,3},{j,3}];
  csCoeff=Sum[eps3[i,j,l]Tr[matrices[[i]].jets[[l,j]]+(2/3)matrices[[i]].matrices[[j]].matrices[[l]]],{i,3},{j,3},{l,3}];
  canonicalCoeff=Tr[-matrices[[2]].jets[[3,1]]+matrices[[3]].jets[[2,1]]+2 matrices[[1]].(jets[[3,2]]-jets[[2,3]]+matrices[[2]].matrices[[3]]-matrices[[3]].matrices[[2]])];
  dP=Tr[-jets[[1,2]].matrices[[3]]-matrices[[1]].jets[[3,2]]+jets[[1,3]].matrices[[2]]+matrices[[1]].jets[[2,3]]];
  AssociateTo[checks,"generic canonical CS decomposition including total derivative"->zeroQ[csCoeff-canonicalCoeff-dP]];
  report=<|"KernelVersion"->System`$Version,"Checks"->checks,
   "AllPassed"->And@@Values[checks],"NonzeroResiduals"->nonzero,
   "Expressions"-><|"wallDefectTau"->ToString[wallDifference,InputForm],"metricWallSourceTau"->ToString[source,InputForm],"alphaCoordinatesTphiR"->ToString[alpha,InputForm],"covariantChiralBoundaryTau"->ToString[lch,InputForm]|>,
   "Assumptions"->{"ell>0, r>0, r^4>a b", "tau=-dt wedge dphi", "k=4 Pi gamma ell", "fixed embedding and FG adapted-frame variations", "a and b and their variations arbitrary finite real values at the wall point"},
   "Messages"->(ToString[#,InputForm]& /@ $MessageList)|>;
  report
 ]
];
ChiralBoundaryChecks[]
