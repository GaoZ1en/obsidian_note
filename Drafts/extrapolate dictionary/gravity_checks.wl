(* Run in a fresh xAct core kernel (xTensor, xPert, xTras loaded).
   Get returns the complete association; no mathematical note is overwritten.
   AdS4 EH prefactor 1/(2 kappa^2), kappa^2=8 Pi G.
   Abstract curvature is varied BEFORE the flat specialization. *)
ClearAll["Global`*"];
DefManifold[MM,4,{aa,bb,cc,dd,ee,ff,ii,jj}];
DefMetric[1,gg[-aa,-bb],CD]; DefMetricPerturbation[gg,hh,eps];
DefTensor[vv[-aa],MM]; DefTensor[phi[],MM]; DefTensor[kk[-aa],MM];
flatRules={RiemannCD[__]->0,RicciCD[__]->0,RicciScalarCD[]->0,WeylCD[__]->0};
linW=ToCanonical[ContractMetric[ExpandPerturbation[
 Perturbation[WeylCD[-aa,-bb,-cc,-dd]]]/.flatRules]];
planeNormalize[ex_]:=ToCanonical[ContractMetric[
 ToCanonical[ContractMetric[ex]]//.HoldPattern[CD[u_][arg_]]:>I kk[u]arg]];
abstractChecks=<|
 "ConformalPlaneWave"->planeNormalize[linW/.hh[LI[1],u_,v_]:>2 phi[] gg[u,v]],
 "GaugePlaneWave"->planeNormalize[linW/.hh[LI[1],u_,v_]:>(CD[u][vv[v]]+CD[v][vv[u]])],
 "TracePlaneWave"->planeNormalize[gg[aa,cc]linW]|>;
report=Block[{$Messages={},$MessageList={}},Module[
 {mat,matp,tr,km,det2,adm,admTarget,fp,modeChecks,glo,ghi,hlo,hhi,
  gpLo,gpHi,offLo,offHi,jump,contacts,radial,vec,ksq,del,proj,tt,ps,ist,poly,
  polyTarget,projectorChecks,sourceMat,sourceST,sourceCheck,coord,r2,inv,
  qop,pop,positionChecks,wmat,dh,riem,ric,scal,weyl,wTarget,div,
  generalWeylCheck,cosTests,euclTests,wall,ft,exactCount},
 mat={{u+t,d,v1},{d,u-t,v2},{v1,v2,v}};
 matp={{up+tp,dp,v1p},{dp,up-tp,v2p},{v1p,v2p,vp}};
 tr=Tr[mat];km=-IdentityMatrix[3]+z/2(e matp-e^2 mat.matp);
 det2=1+e tr/2+e^2(tr^2/8-Tr[mat.mat]/4);
 adm=Coefficient[Expand[det2(Tr[km]^2-Tr[km.km]+6)],e,2];
 admTarget=3 tr^2/2-3Tr[mat.mat]-z tr Tr[matp]+2z Tr[mat.matp]+
 z^2/4(Tr[matp]^2-Tr[matp.matp]);
 fp=k^2(Tr[mat.mat]-tr^2)-2k^2 Sum[mat[[3,j]]^2,{j,3}]+2k^2 mat[[3,3]]tr;
 modeChecks=<|"ADMQuadraticDensity"->Expand[adm-admTarget],
 "RadialModeAction"->Expand[Tr[matp.matp]-Tr[matp]^2-
 2(tp^2+dp^2+v1p^2+v2p^2-up^2-2up vp)],
 "TangentialModeAction"->Expand[fp-2k^2(t^2+d^2-u^2)]|>;
 glo=z^3/3; ghi=w^3/3;
 hlo=z^3 w^2/6-z^5/30; hhi=w^3 z^2/6-w^5/30;
 gpLo=(k z Cosh[k z]-Sinh[k z])(1+k w)Exp[-k w]/k^3;
 gpHi=(k w Cosh[k w]-Sinh[k w])(1+k z)Exp[-k z]/k^3;
 jump[lo_,hi_,n_]:=FullSimplify[(D[hi,{z,n}]-D[lo,{z,n}])/.z->w,
 Assumptions->k>0&&w>0];
 offLo=D[gpLo,{w,2}]+k^2 gpLo;offHi=D[gpHi,{w,2}]+k^2 gpHi;
 contacts=<|"G0FirstJump"->jump[glo,ghi,1]+w^2,
 "GkFirstJump"->jump[gpLo,gpHi,1]+w^2,
 "GkOffOperatorJump"->jump[offLo,offHi,0]-2w,
 "GkOffOperatorDerivativeJump"->jump[offLo,offHi,1]+2k^2 w^2,
 "JContinuityThroughSecond"->Table[jump[hlo,hhi,n],{n,0,2}],
 "JThirdJump"->jump[hlo,hhi,3]-w^2,
 "TTSeparatedKernel"->FullSimplify[D[offLo,{z,2}]+k^2 offLo-
 4k^3 z w Cosh[k z]Exp[-k w]],
 "ScalarSeparatedCancellation"->Expand[D[hlo,{z,2},{w,2}]-D[glo,{z,2}]-D[glo,{w,2}]],
 "G0JResolvent"->Simplify[-D[z^-2 D[hlo,z],z]-z^-2 glo]|>;
 radial=<|"LorentzWeylFormFactor"->FullSimplify[
 (D[z^(3/2)BesselJ[3/2,q z],{z,2}]-q^2 z^(3/2)BesselJ[3/2,q z])/(6z)-
 Sqrt[2/Pi]q^(3/2)Cos[q z]/3,Assumptions->q>0&&z>0],
 "EuclideanIFormFactor"->FullSimplify[
 (D[z^(3/2)BesselI[3/2,k z],{z,2}]+k^2 z^(3/2)BesselI[3/2,k z])/(6z)-
 Sqrt[2/Pi]k^(3/2)Cosh[k z]/3,Assumptions->k>0&&z>0],
 "EuclideanKFormFactor"->FullSimplify[
 (D[z^(3/2)BesselK[3/2,k z],{z,2}]+k^2 z^(3/2)BesselK[3/2,k z])/(6z)-
 Sqrt[Pi/2]k^(3/2)Exp[-k z]/3,Assumptions->k>0&&z>0],
 "MetricModeODE"->Simplify[D[Sin[q z]-q z Cos[q z],{z,2}]-
 2/z D[Sin[q z]-q z Cos[q z],z]+q^2(Sin[q z]-q z Cos[q z])]|>;
 vec={k1,k2,k3};ksq=vec.vec;del=IdentityMatrix[3];proj=del-Outer[Times,vec,vec]/ksq;
 ist=Table[(del[[i,l]]del[[j,m]]+del[[i,m]]del[[j,l]])/2-
 del[[i,j]]del[[l,m]]/3,{i,3},{j,3},{l,3},{m,3}];
 tt=Table[(proj[[i,l]]proj[[j,m]]+proj[[i,m]]proj[[j,l]]-
 proj[[i,j]]proj[[l,m]])/2,{i,3},{j,3},{l,3},{m,3}];
 ps=Table[3/2(vec[[i]]vec[[j]]/ksq-del[[i,j]]/3)
 (vec[[l]]vec[[m]]/ksq-del[[l,m]]/3),{i,3},{j,3},{l,3},{m,3}];
 poly=ksq(ps-3tt);
 polyTarget=Table[-3ksq(del[[i,l]]del[[j,m]]+del[[i,m]]del[[j,l]])/2+
 5ksq del[[i,j]]del[[l,m]]/3+3/2(del[[i,l]]vec[[j]]vec[[m]]+
 del[[i,m]]vec[[j]]vec[[l]]+del[[j,l]]vec[[i]]vec[[m]]+
 del[[j,m]]vec[[i]]vec[[l]])-2(del[[i,j]]vec[[l]]vec[[m]]+
 del[[l,m]]vec[[i]]vec[[j]]),{i,3},{j,3},{l,3},{m,3}];
 projectorChecks=<|"LocalContactPolynomial"->(Factor/@Flatten[poly-polyTarget]),
 "Trace"->Flatten[Table[Factor[Sum[tt[[i,i,l,m]],{i,3}]],{l,3},{m,3}]],
 "Divergence"->Flatten[Table[Factor[Sum[vec[[i]]tt[[i,j,l,m]],{i,3}]],{j,3},{l,3},{m,3}]],
 "Rank"->Factor[Sum[tt[[i,j,i,j]],{i,3},{j,3}]-2]|>;
 sourceMat={{f11,f12,f13},{f12,f22,f23},{f13,f23,f33}};
 sourceST=sourceMat-Tr[sourceMat]del/3;
 sourceCheck=Factor[Sum[sourceST[[i,j]]polyTarget[[i,j,l,m]]sourceST[[l,m]],
 {i,3},{j,3},{l,3},{m,3}]+3ksq Tr[sourceST.sourceST]-6(vec.sourceST).(vec.sourceST)];
 (* General radial-gauge Weyl, calculated from the linearized Riemann definition. *)
 wmat=Array[0&,{4,4}];
 wmat[[2;;4,2;;4]]={{a1[z],a4[z],a5[z]},{a4[z],a2[z],a6[z]},{a5[z],a6[z],a3[z]}};
 dh[n_,ex_]:=If[n==1,D[ex,z],I vec[[n-1]]ex];
 riem=Table[(dh[c,dh[b,wmat[[a,d]]]]+dh[d,dh[a,wmat[[b,c]]]]-
 dh[d,dh[b,wmat[[a,c]]]]-dh[c,dh[a,wmat[[b,d]]]])/2,
 {a,4},{b,4},{c,4},{d,4}];
 ric=Table[Sum[riem[[a,b,a,d]],{a,4}],{b,4},{d,4}];scal=Tr[ric];
 weyl=Table[riem[[1,i+1,1,j+1]]-(ric[[i+1,j+1]]+del[[i,j]]ric[[1,1]])/2+
 del[[i,j]]scal/6,{i,3},{j,3}];
 div=I vec.wmat[[2;;4,2;;4]];
 wTarget=Table[-D[wmat[[i+1,j+1]],{z,2}]/4-ksq wmat[[i+1,j+1]]/4-
 (I vec[[i]]div[[j]]+I vec[[j]]div[[i]]+vec[[i]]vec[[j]]Tr[wmat])/4+
 del[[i,j]](D[Tr[wmat],{z,2}]/12+I vec.div/6+ksq Tr[wmat]/6),{i,3},{j,3}];
 generalWeylCheck=Simplify[weyl-wTarget];
 coord={x1,x2,x3};r2=coord.coord;inv=del-2Outer[Times,coord,coord]/r2;
 qop[i_,j_,ex_]:=del[[i,j]]Sum[D[ex,{coord[[a]],2}],{a,3}]-D[ex,coord[[i]],coord[[j]]];
 pop[i_,j_,l_,m_,ex_]:=(qop[i,l,qop[j,m,ex]]+qop[i,m,qop[j,l,ex]]-
 qop[i,j,qop[l,m,ex]])/2;
 positionChecks=Flatten[Table[Factor[pop[i,j,l,m,1/r2]-48/r2^3(
 (inv[[i,l]]inv[[j,m]]+inv[[i,m]]inv[[j,l]])/2-del[[i,j]]del[[l,m]]/3)],
 {i,3},{j,3},{l,3},{m,3}]];
 wall=FullSimplify[(D[(1+k z)Exp[-k z],z]/z+k^2(1+k z)Exp[-k z])/(2z)-
 k^3(1+k z)Exp[-k z]/(2(1+k z))];
 ft=Integrate[Pi ZZ^4/(2(uu+ZZ^2)^5),{uu,0,Infinity},Assumptions->ZZ>0]-Pi/(8ZZ^4);
 cosTests=Table[<|"x"->xx,"Bound"->TrueQ[N[Abs[Cos[xx]-1]-xx^2/2,40]<=0]|>,
 {xx,{1/100,1/10,1/2,1,2,4,10,100}}];
 euclTests=Flatten[Table[<|"x"->xx,"Ratio"->rr,"Bound"->TrueQ[
 N[1-Cosh[rr xx]Exp[-xx]-xx,40]<=0]|>,{xx,{1/10000,1/100,1,10,100}},
 {rr,{1/1000,1/2,1}}]];
 <|"Conventions"->"EH 1/(2 kappa^2); AdS4; coordinate Weyl T=-z C_zizj/kappa^2; full radial-gauge constraints",
 "AbstractFlatWeyl"->abstractChecks,"ADMAndModeAction"->modeChecks,
 "GeneralRadialWeyl"->generalWeylCheck,"ContactJumpChecks"->contacts,
 "RadialFormFactors"->radial,"ProjectorChecks"->projectorChecks,
 "LocalSourceCounterterm"->sourceCheck,"PositionTensorIdentity81"->positionChecks,
 "FiniteWallResponse"->wall,"PositionFourierNormalization"->ft,
 "RadialContactDivision"->Simplify[((-2D[test[z]/z,z]-w D[test[z]/z,{z,2}])/.z->w)+test''[w]],
 "TTContactPositivity"->Factor[rr^2-3k^2+4k^4/(rr^2+k^2)-(rr^2-k^2)^2/(rr^2+k^2)],
 "CosineBounds"->cosTests,"EuclideanRemainderBounds"->euclTests,
 "Messages"->(ToString[#,InputForm]& /@ $MessageList)|>
 ]];
report
