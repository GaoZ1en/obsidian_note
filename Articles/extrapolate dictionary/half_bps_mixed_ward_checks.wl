(* Physical unnormalized stress response. Evaluate Get in a fresh Wolfram kernel.
   Euclidean d=4, source density paired with d^4x; ell=1 for numerical examples.
   This verifies algebra and examples, not the global distribution theorem. *)
Block[{$Messages = {}, $MessageList = {}},
 Module[{p, dv, pp, pi, tt, lift, checks, ass, c0, raw, ren,
   radA, radB, toraw, toren, anomaly, momenta, k1, k2, q, r,
   hp, ff, jint, cBoundary, mat, example, examples, limits, xx, yy,
   pbh, z, sig, grad, hess, v, derv, jac, h, ds, deltaG},
 p = Array[ppv,4]; dv = Array[dv0,4]; pp=p.p;
 pi=IdentityMatrix[4]-Outer[Times,p,p]/pp;
 tt[m_]:=pi.m.pi-pi Tr[pi.m]/3;
 lift[d_,t_]:=(Outer[Times,p,d]+Outer[Times,d,p])/pp-
   Outer[Times,p,p](p.d)/pp^2+pi(t-p.d/pp)/3;
 ass=Element[Join[p,dv,{tau,cc}],Reals] && pp>0;
 checks=<|
  "LiftDivergence"->FullSimplify[p.lift[dv,tau]-dv,ass],
  "LiftTrace"->FullSimplify[Tr[lift[dv,tau]]-tau,ass],
  "LiftTTZero"->FullSimplify[tt[lift[dv,tau]],ass],
  "SchemeContact"->FullSimplify[lift[dv-cc p,tau-4cc]-lift[dv,tau]+cc IdentityMatrix[4],ass],
  "CurvatureContactDivergence"->FullSimplify[p.(2 lam pp pi),ass],
  "CurvatureContactTrace"->FullSimplify[Tr[2 lam pp pi]-6 lam pp,ass],
  "CurvatureContactTT"->FullSimplify[tt[2 lam pp pi],ass]
 |>;
 (* Source pure-Weyl FG extension: zeta^z=-z sigma, zeta^i=v^i+z² grad(sigma)/2. *)
 grad=Array[gg,4]; hess=Array[hh,{4,4}]; hess=(hess+Transpose[hess])/2;
 checks["PBHRadialComponent"]=Simplify[2 D[-z sig,z]-2(-z sig)/z];
 checks["PBHMixedComponent"]=Simplify[D[z^2 grad/2,z]-z grad];
 checks["PBHTangentWeyl"]=Simplify[z^2 hess-2 IdentityMatrix[4](-z sig)/z-(2sig IdentityMatrix[4]+z^2 hess)];
 raw[a_,b_,k_]:=2Pi^2 BesselI[0,k a] BesselK[0,k b]; (* sector 0<a<b *)
 c0[b_]:=2Pi^2 Log[b/ell];
 ren[a_,b_,k_]:=raw[a,b,k]+c0[b];
 radA[a_,b_,k_]:=2Pi^2 k a BesselI[1,k a] BesselK[0,k b];
 radB[a_,b_,k_]:=-2Pi^2 k b BesselI[0,k a] BesselK[1,k b];
 toraw=-(a D[raw[a,b,r],a]+2raw[a,b,r]+a^2 pr raw[a,b,r]/2)
         -(b D[raw[a,b,q],b]+2raw[a,b,q]+b^2 pq raw[a,b,q]/2);
 toren=-(a D[ren[a,b,r],a]+2ren[a,b,r]+a^2 pr ren[a,b,r]/2)
         -(b D[ren[a,b,q],b]+2ren[a,b,q]+b^2 pq ren[a,b,q]/2);
 anomaly=2Pi^2+c0[b](a^2 pr+b^2 pq)/2;
 checks["DensitySourceCountertermTrace"]=Simplify[toraw-4c0[b]-toren-anomaly];
 checks["ConstantWeylAnomaly"]=FullSimplify[
   (D[Exp[-4ss](-2Pi^2(Log[k ell/2]+EulerGamma)+2Pi^2 ss),ss]/.ss->0)
   -(-4(-2Pi^2(Log[k ell/2]+EulerGamma))+2Pi^2), k>0&&ell>0];
 checks["WronskianRadialC1"]=FullSimplify[
   xx BesselI[1,xx] BesselK[0,xx]-(1-xx BesselI[0,xx] BesselK[1,xx]),xx>0];
 checks["RadialScalingIdentity"]=FullSimplify[
   a D[ren[a,b,k],a]+b D[ren[a,b,k],b]-k D[ren[a,b,k],k]-2Pi^2,
   0<a<b&&k>0&&ell>0];
 limits=Map[Function[xy,With[{x=N[xy[[1]],50],y=N[xy[[2]],50]},
  {xy[[1]],xy[[2]],TrueQ[0<=y BesselI[0,x] BesselK[1,y]-x BesselI[1,x] BesselK[0,y]<=1],
   TrueQ[0<=x BesselI[1,x] BesselK[0,y]<=1],
   TrueQ[0<=1-y BesselI[0,x] BesselK[1,y]<=1]}]],
  {{1/100,1/100},{1/100,1/10},{1/10,1},{1,1},{1,3},{10,10},{1/100,100},{100,100}}];
 hp[u_?NumericQ]:=u^2 BesselK[2,u]/2;
 ff[a_?NumericQ,u_?NumericQ]:=BesselI[0,Min[a,u]]BesselK[0,Max[a,u]];
 jint[a0_,b0_]:=Module[{aa=N[a0,50],bb=N[b0,50],rr},rr=Max[aa,bb];
   NIntegrate[u hp[u]ff[aa,u]ff[bb,u],{u,0,Min[aa,bb],rr,1,Infinity},
     WorkingPrecision->50,AccuracyGoal->30,PrecisionGoal->30,MaxRecursion->40]];
 cBoundary=-2Pi^2(Log[1/2]+EulerGamma);
 example[a0_,b0_]:=Module[{a1=N[a0,50],b1=N[b0,50],cv,rv,jj,tr,dd,ttm,lm,full},
   cv=raw[a1,b1,1];rv=cv+2Pi^2 Log[b1];jj=jint[a0,b0];
   tr=-radA[a1,b1,1]-radB[a1,b1,1]-4rv+(a1^2+b1^2)cv/4;
   ttm=4Pi^2 jj DiagonalMatrix[{1/2,-1/4,-1/4,0}];
   lm=DiagonalMatrix[{(tr+rv)/3,(tr+rv)/3,(tr+rv)/3,-rv}];full=ttm+lm;
   <|"ab"->{a0,b0},"Cren"->rv,"J"->jj,"Trace"->tr,
     "PhysicalStressResponse"->full,"NtimesUnitStressResponse"->Pi^2 full/Sqrt[10],
     "TraceResidual"->Tr[full]-tr,"DivergenceResidual"->full[[4]]-{0,0,0,-rv}|>];
 examples=example@@@{{1/5,3/10},{1/50,3/100},{1/500,3/1000}};
 <|"Conventions"->"Euclidean all incoming p+k1+k2=0; response=2 delta C/delta g0, fixed density source; p=q=r=ell=1 for examples, a<b.",
  "ExactResiduals"->checks,"AllExactResidualsZero"->And@@(TrueQ[Total[Abs[Flatten[{#}]]]==0]&/@Values[checks]),
  "BesselBoundsSamples"->limits,"Examples"->examples,
  "BoundaryC"->N[cBoundary,35],"BoundaryTrace"->N[-4cBoundary+2Pi^2,35],
  "Scope"->"Tensor lift, counterterm anomaly and finite-radius examples. Continuous parameter inequalities require analytic proofs.",
  "Messages"->$MessageList|>
 ]]
