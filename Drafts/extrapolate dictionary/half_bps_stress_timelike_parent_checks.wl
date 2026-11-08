(* Parent checks: mass-differential bridge and finite-two-scalar timelike blocks.
 Evaluate Get in a fresh Wolfram kernel. Alpha*Q=1 in reduced examples. *)
Block[{$Messages={},$MessageList={}},Module[{checks,la,c0,ct,al,x,y,t,v,z,a,b,ta,ww,poly,integ,f2,bb,rows,cap,tt,gram},
 la[f_,a_]:=D[f,{a,2}]-D[f,a]/a;
 c0=2Pi^2;ct=10 nn^2/Pi^4;al=2Sqrt[10]/nn;
 checks=<|
 "EuclideanK2Derivative"->FullSimplify[la[BesselK[0,a u],a]-u^2 BesselK[2,a u],a>0&&u>0],
 "SquaredMassOperator"->Simplify[a^2 la[f[a^2],a]-4a^4 Derivative[2][f][a^2]],
 "SpectralRatio"->Simplify[(2Pi^3)^2/((Pi^3 a^4/160)(2Pi^3))-320/a^4],
 "AmputatedBridgeCoefficient"->FullSimplify[-(a^2/(4Pi^2 gg Sqrt[ct]))(320/a^4)+4al/(gg a^2),nn>0],
 "MetricSourceCoefficient"->FullSimplify[(4/nn^2)/al-al/10,nn>0],
 "FutureOuterStressFactor"->FullSimplify[-al/5*(320/a^4)*(Pi a^2/16)+4Pi al/a^2],
 "CubeWeight"->Integrate[(t v)^2,{t,0,1},{v,0,1}]-1/9,
 "CubeNextCoefficient"->Simplify[Integrate[(t v)^2*(a^2 t v/12+b^2 t v/4+ta^2(1-t)(1-v)/4)/4,{t,0,1},{v,0,1}]-(3a^2+9b^2+ta^2)/2304],
 "NormalizedKernelCoefficient"->Simplify[(Pi^3 a^2/(4Sqrt[5]))*(-1/4)*(dd^2/(4a^2))+Pi^3 dd^2/(64Sqrt[5])],
 "HSConstant"->Simplify[(Pi^3*16/576*Sqrt[2/15])/(48Pi^3)-Sqrt[2/15]/1728]
 |>;
 f2[x_?NumericQ]:=If[Abs[x]<10^-20,1,8BesselJ[2,x]/x^2];
 bb[a0_,b0_,t0_,z0_]:=Module[{aa=N[a0,60],bc=N[b0,60],tc=N[t0,60],zc=N[z0,60]},
 -NIntegrate[(Pi u/2)(BesselJ[0,tc u]BesselY[0,tc zc]-BesselY[0,tc u]BesselJ[0,tc zc])*u^4*f2[aa u]*BesselJ[0,bc u],
 {u,0,zc},WorkingPrecision->32,AccuracyGoal->20,PrecisionGoal->20,MaxRecursion->20]];
 rows=Table[Module[{aa=par[[1]],bc=par[[2]],tc=par[[3]],zc=par[[4]],wc=par[[5]],mid,out},
 mid=BesselJ[0,N[bc wc,32]]bb[aa,bc,tc,zc];
 out=If[aa<bc,BesselJ[0,N[tc zc,32]]bb[aa,tc,bc,wc],0];
 <|"a_b_tau_z_w"->par,"MiddleTerm"->mid,"OuterScalarTerm"->out,"FullTimelikePerAlphaQ"->mid+out,
 "AbsoluteBound"->N[(zc^6+If[aa<bc,wc^6,0])/36,22],
 "BoundPassed"->TrueQ[Abs[mid+out]<=(zc^6+If[aa<bc,wc^6,0])/36]|>],
 {par,{{3,1,1,1,1/2},{1,3,1,1,1/2},{2,1,1,1,1/2},{1,2,1,1,1/2}}}];
 gram=(as-bs-ts)^2-4bs ts;
 checks["CollinearImaginaryMatching"]=Simplify[(2ep D[gram,as]+2ek D[gram,ts])/.{as->(bm+tm)^2,bs->bm^2,ts->tm^2,ep->(bm+tm)ek/tm}];
 <|"ExactResiduals"->checks,"AllExactZero"->And@@(TrueQ[#==0]&/@Values[checks]),
 "TwoFiniteScalarExamples"->rows,"Messages"->$MessageList,
 "Scope"->"Algebraic mass bridge, two-finite-radius canonical timelike examples and necessary leading collinear regulator matching only; not a proof of full time-shift contour convergence."|>
]]
