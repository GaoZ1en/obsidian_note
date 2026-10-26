(* Independent round21 Euclidean TT stress / two finite BF insertions.
   New verification artifact; does not edit source notes.
   Run: wolframscript -file half_bps_stress_mixed_checks.wl
   Conventions: Fourier e^(-ik.x), p+k1+k2=0, d=4, m^2 ell^2=-4.
   gamma is actual relative metric, NOT canonically normalized h.
   S_TT=ell^3/(8 kappa^2) Integral z^-3 (partial gamma)^2.
   T_TT=2 ell^3 gamma_(4)/kappa^2, CT=10 N^2/Pi^4.
   <gamma That>'=2 H_p Pi_TT/Sqrt[CT].
   <That_TT Ua Ub>'=4 Pi^2/Sqrt[CT] Pi_TT.k1.k1 J_ab.
   J_ab=Integral z H_p F_a(q,z) F_b(r,z).
   H_p=(p z)^2 K2(p z)/2, F_a=I0(q min(a,z)) K0(q max(a,z)).
   Positive sign: exponent vertex +ell^3/2 gamma_ij partial_i phi partial_j phi;
   two Wick contractions cancel 1/2, Fourier minus cancels Pi.k1.k2=-Pi.k1.k1.

   Uniform independent-radius expansion at fixed p,q,r>0:
   J_ab=(1+(q^2 a^2+r^2 b^2)/4) J_00
        -(a^2 L_r(R)+b^2 L_q(R)+R^2)/4 + O(R^4 (1+Log[R]^2)),
   R=max(a,b), L_k(x)=-Log[k x/2]-EulerGamma.
   Proof of UNIFORMITY in min(a,b)/R: for z<=R<R0 and any 0<a<=R,
   |F_a(k,z)-L_k(max(a,z))| <= C R^2 (1+|Log[z]|),
   |F_a|+|L_k(max(a,z))| <= C (1+|Log[z]|).
   These follow directly from I0(t)=1+O(t^2),
   K0(t)=L(t)+O(t^2(1+|Log[t]|)), since z<=max(a,z)<=R.
   Also |I0(ka)K0(kz)-L_k(z)|<=C R^2(1+|Log[z]|),
   |H_p(z)-1|<=C z^2. For z>R the integrand factors EXACTLY
   as I0(qa)I0(rb) times its boundary integrand. Subtract this exact
   exterior factor globally, then approximate only the cap z<=R.
   Product errors <=C R^2(1+|Log[z]|)^2 integrate with z dz to
   <=C R^4(1+Log[R]^2). Constants are independent of a/b.
   Expanding the exterior I0 factors adds O(R^4) J00.
   Cap terms are semilocal before TT projection. TT projection itself
   is nonlocal; full Ward/trace contacts and arbitrary-Schwartz
   extensions are NOT established by these tests.
*)
ClearAll["Global`*"];
outputPath=FileNameJoin[{DirectoryName[$InputFileName],"half_bps_stress_mixed_checks_results.txt"}];
report=Block[{$Messages={},$MessageList={}},Module[
 {h,up,dn,lq,lr,cap,tt,k1,k2,pvec,pi,projected,j0,j,approx,
  numeric50,numeric65,ratioRows,skewRows,exactChecks,result,rad,small,val,err},
 h[p_,z_]:=(p z)^2 BesselK[2,p z]/2;
 up=z^2 BesselI[2,p z];dn=z^2 BesselK[2,p z];
 lq[x_]:=-Log[q x/2]-EulerGamma;
 lr[x_]:=-Log[r x/2]-EulerGamma;
 cap=Integrate[z(lq[a]lr[b]-lq[z]lr[z]),{z,0,a},Assumptions->0<a<b&&q>0&&r>0]+
     Integrate[z(lq[z]lr[b]-lq[z]lr[z]),{z,a,b},Assumptions->0<a<b&&q>0&&r>0];
 pvec={0,0,0,1};k1={Sqrt[3]/2,0,0,-1/2};k2=-pvec-k1;
 pi=IdentityMatrix[4]-Outer[Times,pvec,pvec];
 tt=Table[(pi[[i,k]]pi[[j,l]]+pi[[i,l]]pi[[j,k]])/2-pi[[i,j]]pi[[k,l]]/3,{i,4},{j,4},{k,4},{l,4}];
 projected=Table[Sum[tt[[i,j,k,l]] k1[[k]] k1[[l]],{k,4},{l,4}],{i,4},{j,4}];
 exactChecks=<|
 "RegularDirichletODE"->FullSimplify[D[h[p,z],{z,2}]-3 D[h[p,z],z]/z-p^2 h[p,z],Assumptions->p>0&&z>0],
 "WronskianPlusZCubed"->FullSimplify[up D[dn,z]-D[up,z]dn+z^3,Assumptions->p>0&&z>0],
 "MixedCovarianceResidual"->FullSimplify[Limit[8 z^2 v^(-2) BesselI[2,p v] BesselK[2,p z],v->0,Direction->"FromAbove"]-2 h[p,z],Assumptions->p>0&&z>0],
 "CapResidual_aLessThanB"->FullSimplify[cap+(a^2 lr[b]+b^2 lq[b]+b^2)/4,Assumptions->0<a<b&&q>0&&r>0],
 "MomentumConservation"->Simplify[pvec+k1+k2],
 "FourierSignResidual"->Simplify[projected+Table[Sum[tt[[i,j,k,l]]k1[[k]]k2[[l]],{k,4},{l,4}],{i,4},{j,4}]],
 "TTTrace"->Tr[projected],"TTTransverse"->Simplify[pvec.projected]|>;
 j0=NIntegrate[z^3 BesselK[2,z] BesselK[0,z]^2/2,{z,0,1,Infinity},WorkingPrecision->65,AccuracyGoal->45,PrecisionGoal->45];
 (* Integrate each Bessel branch explicitly, scaling the smallest interval.
    This avoids missed tiny intervals in extreme radius-ratio tests. *)
 j[aa_,bb_,prec_:50]:=Module[{mn=Min[aa,bb],mx=Max[aa,bb],first,middle,last},
 first=mn^2 BesselK[0,mn]BesselK[0,mx] NIntegrate[t h[1,mn t]BesselI[0,mn t]^2,{t,0,1},WorkingPrecision->prec,AccuracyGoal->prec-20,PrecisionGoal->prec-20,MaxRecursion->40];
 middle=If[mn==mx,0,mx^2 BesselI[0,mn]BesselK[0,mx] NIntegrate[t h[1,mx t]BesselK[0,mx t]BesselI[0,mx t],{t,mn/mx,1},WorkingPrecision->prec,AccuracyGoal->prec-20,PrecisionGoal->prec-20,MaxRecursion->60]];
 last=BesselI[0,mn]BesselI[0,mx] NIntegrate[z h[1,z]BesselK[0,z]^2,{z,mx,1,Infinity},WorkingPrecision->prec,AccuracyGoal->prec-20,PrecisionGoal->prec-20,MaxRecursion->40];
 first+middle+last];
 approx[aa_,bb_]:=Module[{rr=Max[aa,bb],ll},ll=-Log[rr/2]-EulerGamma;
 j0(1+(aa^2+bb^2)/4)-(aa^2 ll+bb^2 ll+rr^2)/4];
 numeric50=j[1/5,3/10,50];numeric65=j[1/5,3/10,65];
 ratioRows=Flatten[Table[rad=rr;small=rat rr;val=j[small,rad];err=val-approx[small,rad];
 <|"R"->rad,"minOverMax"->rat,"J"->val,"Leading"->approx[small,rad],"Remainder"->err,"ScaledRemainder"->err/(rad^4(1+Log[rad]^2))|>,
 {rr,{1/10,1/20,1/40}},{rat,{1,1/10,1/10000}}],1];
 skewRows=Table[rad=rr;small=Exp[-1/rr];val=j[small,rad];err=val-approx[small,rad];
 <|"R"->rad,"min"->small,"J"->val,"Remainder"->err,"ScaledRemainder"->err/(rad^4(1+Log[rad]^2))|>,{rr,{1/10,1/20,1/40}}];
 result=<|"Scope"->"Nonzero Euclidean momenta, TT tree only; fixed p,q,r uniform independent-radius asymptotic. No full Ward/trace-contact claim.",
 "ExactResiduals"->exactChecks,"HSeries"->Series[h[p,z],{z,0,4}],
 "BoundaryJ000_at_pqr111"->N[j0,35],
 "FiniteExample"-><|"pqr"->{1,1,1},"ab"->{1/5,3/10},"J50"->N[numeric50,35],"J65"->N[numeric65,35],"PrecisionDifference"->N[numeric50-numeric65,10],"PiK1K1"->projected,"N_T11UaUb"->N[2Pi^4/Sqrt[10]numeric65,30]|>,
 "RatioGrid"->N[ratioRows,25],"ExponentiallySkewRadii"->N[skewRows,25],
 "Messages"->(ToString[#,InputForm]&/@$MessageList)|>;
 result]];
Export[outputPath,ToString[report,InputForm,PageWidth->110],"Text"];
Print["Saved: ",outputPath];
Print["Exact residuals: ",report["ExactResiduals"]];
Print["Finite example: ",report["FiniteExample"]];
Print["Messages: ",report["Messages"]];
report
