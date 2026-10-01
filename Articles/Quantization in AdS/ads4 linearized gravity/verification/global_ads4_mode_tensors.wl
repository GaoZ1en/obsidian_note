(* Global AdS4, radius one, signature -+++, g=g0+sqrt(8 Pi G)h.
   Fresh Wolfram kernel required. Geometry is computed with xCoba;
   the linearized connection/Ricci tensors are then evaluated as arrays.
   The arbitrary spherical harmonic is y(theta) exp(i m phi).
   This checks every component for arbitrary ell,m,w modulo two ODEs. *)
Needs["xAct`xTensor`"];
Needs["xAct`xCoba`"];
Needs["xAct`xTras`"];
DefManifold[M4,4,{a,b,c,d,e,k}];
DefChart[ch,M4,{0,1,2,3},{tt[],rr[],th[],ph[]}];
met=CTensor[DiagonalMatrix[{-(1+rr[]^2),1/(1+rr[]^2),rr[]^2,rr[]^2 Sin[th[]]^2}],{-ch,-ch}];
SetCMetric[met,ch,SignatureOfMetric->{3,1,0}];
cd=CovDOfMetric[met];
MetricCompute[met,ch,All,CVSimplify->Simplify,Verbose->False];
coords={tt[],rr[],th[],ph[]};
toPlain={tt[]->t,rr[]->r,th[]->th,ph[]->ph};
toChart=Reverse /@ toPlain;
DefScalarFunction /@ {u,y};
DefConstantSymbol /@ {w,ell,mm};
f=1+r^2; lam=ell(ell+1);
phase=Exp[-I w t+I mm ph];
radialRule=u''[r]->-2r/f u'[r]-(w^2/f^2-lam/(r^2 f))u[r];
angularRule=y''[th]->-Cot[th]y'[th]-(lam-mm^2 Csc[th]^2)y[th];
reduce[expr_]:=FullSimplify[expr //. {
 Derivative[n_][u][r]/;n>=2:>D[Last[radialRule],{r,n-2}],
 Derivative[n_][y][th]/;n>=2:>D[Last[angularRule],{th,n-2}]},Assumptions->{r>0,0<th<Pi,Element[{ell,mm,w,r,th},Reals]}];
xx={t,r,th,ph};
ginv=DiagonalMatrix[{-1/f,f,1/r^2,1/(r^2 Sin[th]^2)}];
gamma=Table[ToValues[Christoffel[cd,PDch][{i,ch},{j,-ch},{k,-ch}]]/.toPlain,{i,0,3},{j,0,3},{k,0,3}];
linearRicci[hmat_]:=Module[{dh,dc,dr},
 dh=Table[D[hmat[[j,k]],xx[[i]]]-Sum[gamma[[l,i,j]]hmat[[l,k]]+gamma[[l,i,k]]hmat[[j,l]],{l,4}],{i,4},{j,4},{k,4}];
 dc=Table[Sum[ginv[[i,l]](dh[[j,l,k]]+dh[[k,l,j]]-dh[[l,j,k]])/2,{l,4}]//Simplify,{i,4},{j,4},{k,4}];
 dr=Table[Sum[D[dc[[k,i,j]],xx[[k]]]-D[dc[[k,i,k]],xx[[j]]]+Sum[gamma[[k,k,l]]dc[[l,i,j]]+dc[[k,k,l]]gamma[[l,i,j]]-gamma[[k,j,l]]dc[[l,i,k]]-dc[[k,j,l]]gamma[[l,i,k]],{l,4}],{k,4}],{i,4},{j,4}];
 Map[reduce,dr+3hmat,{2}]
];
evenTT=f u'[r]+(f lam/(2r)-r w^2)u[r];
evenTR=-I w (r u'[r]+u[r]/f);
evenK=f u'[r]+lam/(2r)u[r];
evenMatrix=phase y[th] {{evenTT,evenTR,0,0},{evenTR,evenTT/f^2,0,0},{0,0,r^2 evenK,0},{0,0,0,r^2 Sin[th]^2 evenK}};
(* epsilon_theta phi = sin(theta), so X_theta = d_phi Y/sin(theta). *)
vec={I mm y[th]/Sin[th],-Sin[th]y'[th]}/Sqrt[lam];
oddT=f D[r u[r],r]; oddR=-I w r u[r]/f;
oddMatrix=phase {{0,0,oddT vec[[1]],oddT vec[[2]]},{0,0,oddR vec[[1]],oddR vec[[2]]},{oddT vec[[1]],oddR vec[[1]],0,0},{oddT vec[[2]],oddR vec[[2]],0,0}};
maxwellResidual[avec_]:=Module[{field,upper},
 field=Table[D[avec[[j]],xx[[i]]]-D[avec[[i]],xx[[j]]],{i,4},{j,4}];
 upper=ginv.field.ginv;
 Table[reduce[Sum[D[r^2 Sin[th]upper[[i,j]],xx[[i]]],{i,4}]/(r^2 Sin[th])],{j,4}]
];
maxOdd=phase {0,0,u[r]vec[[1]],u[r]vec[[2]]};
maxEven=phase y[th]/Sqrt[lam] {f u'[r],-I w u[r]/f,0,0};
(* ADM momentum of a static slice, with K_ij=(dot q_ij-D_i N_j-D_j N_i)/(2N). *)
admEvenR=(-I w evenTT/f^2-2D[evenTR,r]-2r/f evenTR)/(2Sqrt[f]);
admEvenA=(-I w r^2 evenK-2r f evenTR)/(2Sqrt[f]);
admTrace=f admEvenR+2admEvenA/r^2;
admEvenPair=reduce[r^2/Sqrt[f] ((f^2 admEvenR-f admTrace)evenTT/f^2+2(admEvenA/r^4-admTrace/r^2)r^2 evenK)/(-I w)];
admEvenBoundary=r^3 f u'[r]^2+2r^2 u[r]u'[r]+lam r/(2f)u[r]^2;
admOddRA=(-I w oddR-D[oddT,r]+2oddT/r)/(2Sqrt[f]);
admOddPair=reduce[2Sqrt[f]admOddRA(I w r u[r]/f)/(-I w)];
evenResidual=linearRicci[evenMatrix];
oddResidual=linearRicci[oddMatrix];
maxEvenResidual=maxwellResidual[maxEven];
maxOddResidual=maxwellResidual[maxOdd];
normEvenResidual=reduce[admEvenPair-lam(lam-2)u[r]^2/(4f)-D[admEvenBoundary,r]];
normOddResidual=reduce[admOddPair-(lam-2)u[r]^2/f];
recoveryResidual=reduce[2r/lam(evenK+2f/(lam-2)(evenTT/f-r D[evenK,r]))-u[r]];
backgroundRicci=Table[ToValues[Ricci[cd][{i,-ch},{j,-ch}]]/.toPlain,{i,0,3},{j,0,3}];
backgroundResidual=FullSimplify[backgroundRicci+3DiagonalMatrix[{-f,1/f,r^2,r^2 Sin[th]^2}]];
(* The old odd TT formula maps to RW under zeta_A=-C X_A. *)
oldB=u'[r]+(r^2-2)/(r f)u[r];
oldA=I/w((3f-w^2)u[r]+3r f u'[r]);
ttGaugeResidual=FullSimplify[{oldB-u'[r]+2u[r]/r-3r/f u[r],oldA+I w u[r]-3I/w f D[r u[r],r]}];
angularX=Exp[I mm ph]vec;
angularTensor=Table[D[angularX[[j]],xx[[i+2]]]+D[angularX[[i]],xx[[j+2]]]-2Sum[gamma[[k+2,i+2,j+2]]angularX[[k]],{k,2}],{i,2},{j,2}];
oldTT=ConstantArray[0,{4,4}];
Do[oldTT[[1,i+2]]=oldTT[[i+2,1]]=Exp[-I w t]oldA angularX[[i]];
 oldTT[[2,i+2]]=oldTT[[i+2,2]]=Exp[-I w t]oldB angularX[[i]],{i,2}];
Do[oldTT[[i+2,j+2]]=Exp[-I w t]u[r]angularTensor[[i,j]],{i,2},{j,2}];
ttTrace=reduce[Tr[ginv.oldTT]];
ttDivergence=Table[reduce[Sum[ginv[[i,k]](D[oldTT[[i,j]],xx[[k]]]-Sum[gamma[[l,k,i]]oldTT[[l,j]]+gamma[[l,k,j]]oldTT[[i,l]],{l,4}]),{i,4},{k,4}]],{j,4}];
tensorResults=<|
 "backgroundRicci"->(backgroundResidual===ConstantArray[0,{4,4}]),
 "evenEinsteinAllComponents"->(evenResidual===ConstantArray[0,{4,4}]),
 "oddEinsteinAllComponents"->(oddResidual===ConstantArray[0,{4,4}]),
 "maxwellEvenAllComponents"->(maxEvenResidual===ConstantArray[0,4]),
 "maxwellOddAllComponents"->(maxOddResidual===ConstantArray[0,4]),
 "scalarADMIdentityIncludingBoundary"->(normEvenResidual===0),
 "vectorADMIdentity"->(normOddResidual===0),
 "scalarMasterRecovery"->(recoveryResidual===0),
 "oddTTtoRW"->(ttGaugeResidual==={0,0}),
 "oldOddTTTraceAndDivergence"->(ttTrace===0&&ttDivergence===ConstantArray[0,4])|>;
tensorResults=Append[tensorResults,"allPassed"->And@@Values[tensorResults]];
tensorResults
