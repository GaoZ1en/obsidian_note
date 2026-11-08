(* Independent finite-radius boundary stress Ward/contact checks.
   Euclidean d=4, p+k1+k2=0, q=|k1|, r=|k2|.
   Canonical lines psi_i=A r_i, A^2=2 Pi^2/ell^3,
   r1=u^2 F_a(q,u), r2=u^2 F_b(r,u).
   M_ij=2 delta C_ab/delta g0_ij, before division by Sqrt[C_T].
   This file is a new independent check; no previous report is modified. *)
ClearAll["Global`*"];
report = Block[{$Messages = {}, $MessageList = {}}, Module[
 {u, qs, rs, c, v, w, vp, wp, vpp, wpp, d1, d2, ps,
  btrace, pbp, flux, integrand, deriv, rules, symbolic,
  kval1, kval2, pval, qval, rval, aval, bval, ff, df, rr, dr,
  tensor, scalarIntegrand, weylIntegrand, ints, bulkD, bulkT,
  kk, bfD, bfT, cov, ca, cb, wardD, wardT, numeric,
  pp, dv, pt, projector, completion, projectorChecks},
 qs=Unique["q2"]; rs=Unique["r2"]; c=Unique["dot"];
 d1=-(qs+c); d2=-(rs+c); ps=qs+rs+2c;
 btrace=-4vp wp+(2c+16/u^2)v w;
 pbp=-2d1 d2 v w-ps(vp wp-c v w-4v w/u^2);
 integrand=(btrace-u^2 pbp/2)/u^3;
 flux=-(vp wp+c v w+4v w/u^2)/u^2-(d2 vp w+d1 v wp)/(2u);
 deriv[expr_]:=D[expr,u]+D[expr,v]vp+D[expr,w]wp+D[expr,vp]vpp+D[expr,wp]wpp;
 rules={vpp->3vp/u+(qs-4/u^2)v,wpp->3wp/u+(rs-4/u^2)w};
 symbolic=<|
  "DiffeoPrimitiveK1"->Simplify[(deriv[v wp/u^3]/.rules)-(vp wp+(rs-4/u^2)v w)/u^3],
  "DiffeoPrimitiveK2"->Simplify[(deriv[vp w/u^3]/.rules)-(vp wp+(qs-4/u^2)v w)/u^3],
  "WeylPrimitive"->Simplify[(deriv[flux]/.rules)-integrand],
  "UVFlux"->Limit[flux/.{v->u^2 aa,w->u^2 bb,vp->2u aa,wp->2u bb},u->0],
  "WeylJumpA"->Simplify[(flux/.{vp->vp-u})-flux-(wp/u+d2 w/2)],
  "WeylJumpB"->Simplify[(flux/.{wp->wp-u})-flux-(vp/u+d1 v/2)]|>;
 kval1={1,0,0,0}; kval2={-1/5,4/5,0,0}; pval=-kval1-kval2;
 qval=Sqrt[kval1.kval1]; rval=Sqrt[kval2.kval2]; aval=2/5; bval=7/10;
 ff[z_?NumericQ,k_,s_]:=BesselI[0,k Min[z,s]]BesselK[0,k Max[z,s]];
 df[z_?NumericQ,k_,s_]:=If[z<s,k BesselI[1,k z]BesselK[0,k s],-k BesselI[0,k s]BesselK[1,k z]];
 rr[z_?NumericQ,k_,s_]:=z^2 ff[z,k,s];
 dr[z_?NumericQ,k_,s_]:=2z ff[z,k,s]+z^2 df[z,k,s];
 tensor[z_?NumericQ]:=-(Outer[Times,kval1,kval2]+Outer[Times,kval2,kval1])rr[z,qval,aval]rr[z,rval,bval]-IdentityMatrix[4](dr[z,qval,aval]dr[z,rval,bval]-(kval1.kval2)rr[z,qval,aval]rr[z,rval,bval]-4rr[z,qval,aval]rr[z,rval,bval]/z^2);
 scalarIntegrand[z_?NumericQ,i_,j_]:=tensor[z][[i,j]]/z^3;
 weylIntegrand[z_?NumericQ]:=(pval.tensor[z].pval)/z;
 ints=Table[NIntegrate[scalarIntegrand[z,i,j],{z,0,aval,bval,Infinity},WorkingPrecision->40,AccuracyGoal->26,PrecisionGoal->26],{i,4},{j,4}];
 kk=BesselK[0,qval aval]BesselK[0,rval bval];
 bulkD=2Pi^2 pval.ints; bfD=-4Pi^2 pval kk;
 bulkT=2Pi^2(Tr[ints]-NIntegrate[weylIntegrand[z],{z,0,aval,bval,Infinity},WorkingPrecision->40,AccuracyGoal->26,PrecisionGoal->26]/2);
 bfT=-16Pi^2 kk;
 cov[k_]:=2Pi^2 BesselI[0,k aval]BesselK[0,k bval];
 ca[k_]:=2Pi^2 k BesselI[1,k aval]BesselK[0,k bval];
 cb[k_]:=-2Pi^2 k BesselI[0,k aval]BesselK[1,k bval];
 wardD=kval2 cov[rval]+kval1 cov[qval];
 wardT=-(2+aval^2(pval.kval2)/2)cov[rval]-aval ca[rval]-(2+bval^2(pval.kval1)/2)cov[qval]-bval cb[qval];
 numeric=<|"k1"->kval1,"k2"->kval2,"a"->aval,"b"->bval,
  "BulkD"->N[bulkD,22],"BFD"->N[bfD,22],"CompletedD"->N[bulkD+bfD,22],"WardD"->N[wardD,22],
  "BulkTrace"->N[bulkT,22],"BFTrace"->N[bfT,22],"CompletedTrace"->N[bulkT+bfT,22],"WardTrace"->N[wardT,22],
  "DResidual"->N[bulkD+bfD-wardD,8],"TraceResidual"->N[bulkT+bfT-wardT,8],
  "DPass1e-24"->TrueQ[Max[Abs[N[bulkD+bfD-wardD,30]]]<10^-24],
  "TracePass1e-24"->TrueQ[Abs[N[bulkT+bfT-wardT,30]]<10^-24]|>;
 pp={p1,p2,p3,p4};dv={d01,d02,d03,d04};
 projector=IdentityMatrix[4]-Outer[Times,pp,pp]/(pp.pp);
 completion=(Outer[Times,pp,dv]+Outer[Times,dv,pp])/(pp.pp)-Outer[Times,pp,pp](pp.dv)/(pp.pp)^2+projector(pt-(pp.dv)/(pp.pp))/3;
 projectorChecks=<|"Divergence"->Simplify[pp.completion-dv],"Trace"->Simplify[Tr[completion]-pt]|>;
 <|"Symbolic"->symbolic,"Numerical"->numeric,"Projector"->projectorChecks,"Messages"->(ToString[#,InputForm]& /@ $MessageList)|>
]];
report
