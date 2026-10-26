(* Reproducible Euclidean AdS5 Einstein/tangential-Hessian checks.
   Run: wolframscript -file ads5-hessian-checks.wl
   Or: Get["/absolute/path/ads5-hessian-checks.wl"] in xAct core kernel.
   No project files or outputs are written by this script.

   Conventions: E_mn=R_mn-1/2 g_mn R-6 g_mn/ell^2;
   ds^2=ell^2/z^2[dz^2+(delta_ij+2 kap lambda q_ij)dx^i dx^j].
   S_E=-1/(2 kap^2) integral sqrt(g)(R+12/ell^2),
   S_GHY=-1/kap^2 integral sqrt(h) K_outward.
   S2 is the lambda^2 coefficient, so d^2 S/dlambda^2=2 S2.
   t=Tr[q], d_i=partial_j q_ij. Define
   F=(q'_ij)^2-(t')^2+(partial_k q_ij)^2-2 d_i d_i
       +2 d_i partial_i t-(partial_i t)^2.
   S2_EH+GHY=ell^3/2 integral z^-3 F
       +3 ell^3 integral d^4x [z^-4(t^2/2-Tr[q.q])]_epsilon^L,
   modulo tangential divergences. Tangent variation =ell^3 z^-3 K_ij.
   Symmetric independent off-diagonal variables have multiplicity two.

   Scope: arbitrary ten radial functions, one arbitrary Fourier momentum
   rotated into x4; no TT or trace constraint. Separate action check uses
   arbitrary ten functions of z,x4. Tangential SO(4) covariance and Fourier
   linearity extend the linear operator to general tangential dependence.
   ADM scalar endpoint and intrinsic EH quadratic density are checked.
   Counterterm logarithmic/finite boundary Hessians, corners, IR boundary
   conditions, constraint reduction, and functional domains are NOT checked.
   Bulk scalar/longitudinal modes are not assumed to obey constraints.
   Mathematica component geometry is used inside an xAct-loaded kernel;
   this is not a second independent CAS implementation.
   Diagnostics are retained in Messages; no Quiet or $Messages suppression.
*)
Needs["xAct`xTensor`"];
Needs["xAct`xPert`"];
Needs["xAct`xTras`"];

Module[{report},
 report = Block[{$MessageList = {}},
  Module[{geometry, variationADM, intrinsic, boundary, passed},
   geometry = Module[
    {z,x1,x2,x3,x4,ell,k,kap,q,coords,n,wave,qq,tt,h,g0,hh,gi0,gi1,
     gam0,gam1,r0,r1,scal0,scal1,e1,dd,lap,divd,targetij,targetzz,
     targetzi,residuals},
    coords={z,x1,x2,x3,x4}; n=5; wave=Exp[I k x4];
    qq=Table[q[Min[i,j],Max[i,j]][z] wave,{i,4},{j,4}]; tt=Tr[qq];
    h=ArrayFlatten[{{{{0}},ConstantArray[0,{1,4}]},
       {ConstantArray[0,{4,1}],2 kap qq}}];
    g0=ell^2/z^2 IdentityMatrix[5]; hh=ell^2/z^2 h;
    gi0=z^2/ell^2 IdentityMatrix[5]; gi1=-gi0.hh.gi0;
    gam0=Table[Sum[gi0[[a,d]](D[g0[[d,c]],coords[[b]]]+
       D[g0[[d,b]],coords[[c]]]-D[g0[[b,c]],coords[[d]]]),{d,n}]/2,
       {a,n},{b,n},{c,n}];
    gam1=Table[Expand[Sum[
       gi1[[a,d]](D[g0[[d,c]],coords[[b]]]+D[g0[[d,b]],coords[[c]]]-D[g0[[b,c]],coords[[d]]])+
       gi0[[a,d]](D[hh[[d,c]],coords[[b]]]+D[hh[[d,b]],coords[[c]]]-D[hh[[b,c]],coords[[d]]]),
       {d,n}]/2],{a,n},{b,n},{c,n}];
    r0=Table[Sum[D[gam0[[a,b,c]],coords[[a]]]-D[gam0[[a,b,a]],coords[[c]]]+
       Sum[gam0[[a,a,d]]gam0[[d,b,c]]-gam0[[a,c,d]]gam0[[d,b,a]],{d,n}],{a,n}],{b,n},{c,n}];
    r1=Table[Expand[Sum[D[gam1[[a,b,c]],coords[[a]]]-D[gam1[[a,b,a]],coords[[c]]]+
       Sum[gam1[[a,a,d]]gam0[[d,b,c]]+gam0[[a,a,d]]gam1[[d,b,c]]-
       gam1[[a,c,d]]gam0[[d,b,a]]-gam0[[a,c,d]]gam1[[d,b,a]],{d,n}],{a,n}]],{b,n},{c,n}];
    scal0=Tr[gi0.r0]; scal1=Expand[Tr[gi1.r0+gi0.r1]];
    e1=Map[FullSimplify,r1-(hh scal0+g0 scal1)/2-6 hh/ell^2,{2}];
    dd=Table[Sum[D[qq[[i,j]],coords[[j+1]]],{j,4}],{i,4}];
    lap[f_]:=Sum[D[f,coords[[j+1]],coords[[j+1]]],{j,4}];
    divd=Sum[D[dd[[j]],coords[[j+1]]],{j,4}];
    targetij=Table[kap(-D[qq[[i,j]],{z,2}]+3 D[qq[[i,j]],z]/z-lap[qq[[i,j]]]+
       D[dd[[j]],coords[[i+1]]]+D[dd[[i]],coords[[j+1]]]-D[tt,coords[[i+1]],coords[[j+1]]]+
       KroneckerDelta[i,j](D[tt,{z,2}]-3 D[tt,z]/z+lap[tt]-divd)),{i,4},{j,4}];
    targetzz=kap(lap[tt]-divd-3 D[tt,z]/z);
    targetzi=kap Table[D[dd[[i]],z]-D[tt,z,coords[[i+1]]],{i,4}];
    residuals=Join[Flatten[e1[[2;;5,2;;5]]-targetij],
       {e1[[1,1]]-targetzz},e1[[1,2;;5]]-targetzi];
    <|"BackgroundRicciResidual"->Simplify[r0+4 g0/ell^2],
      "BackgroundScalarResidual"->Simplify[scal0+20/ell^2],
      "LinearizedEinsteinResiduals21"->(FullSimplify/@residuals)|>
   ];

   variationADM = Module[
    {z,x,ell,kap,u,pairs,qa,mat,t,dz,dx,div,tp,lag,euler,target,res,
     sq1,sq2,atr1,atr2,atrsquare2,a2trace2,admrad2,predicted},
    pairs=Flatten[Table[{i,j},{i,4},{j,i,4}],1];
    qa=Table[u[a][z,x],{a,10}];
    mat=Table[qa[[First@FirstPosition[pairs,Sort[{i,j}]]]],{i,4},{j,4}];
    t=Tr[mat]; dz=D[mat,z]; dx=D[mat,x]; div=dx[[All,4]]; tp=D[t,x];
    lag=ell^3/(2 z^3)(Tr[dz.dz]-D[t,z]^2+Tr[dx.dx]-2 div.div+2 div[[4]]tp-tp^2);
    euler=Table[Expand[D[lag,qa[[a]]]-D[D[lag,D[qa[[a]],z]],z]-
       D[D[lag,D[qa[[a]],x]],x]],{a,10}];
    target=Table[-D[mat[[i,j]],{z,2}]+3 D[mat[[i,j]],z]/z-D[mat[[i,j]],{x,2}]+
       KroneckerDelta[i,4]D[div[[j]],x]+KroneckerDelta[j,4]D[div[[i]],x]-
       KroneckerDelta[i,4]KroneckerDelta[j,4]D[t,{x,2}]+
       KroneckerDelta[i,j](D[t,{z,2}]-3 D[t,z]/z+D[t,{x,2}]-D[div[[4]],x]),{i,4},{j,4}];
    res=Table[With[{i=pairs[[a,1]],j=pairs[[a,2]]},
       FullSimplify[euler[[a]]-ell^3/z^3 If[i==j,1,2]target[[i,j]]]],{a,10}];
    (* Exact ADM density before removing its scalar radial derivative:
       -ell^3/(2 kap^2) z^-5 sqrt(gamma) [24-3z Tr[A]
          +z^2/4((Tr[A])^2-Tr[A.A])+z^2 R[gamma]], A=gamma^-1 gamma'.
       The following are its lambda-expansion coefficients. *)
    sq1=kap t; sq2=kap^2(t^2/2-Tr[mat.mat]);
    atr1=2 kap D[t,z]; atr2=-4 kap^2 Tr[mat.dz];
    atrsquare2=4 kap^2 D[t,z]^2; a2trace2=4 kap^2 Tr[dz.dz];
    admrad2=-ell^3/(2 kap^2 z^5)(24 sq2-3 z(atr2+sq1 atr1)+z^2/4(atrsquare2-a2trace2));
    predicted=ell^3/(2 z^3)(Tr[dz.dz]-D[t,z]^2)+D[3 ell^3/z^4(t^2/2-Tr[mat.mat]),z];
    <|"IndependentSymmetricActionVariationResiduals10"->res,
      "ADMScalarBoundaryDecompositionResidual"->FullSimplify[admrad2-predicted]|>
   ];

   intrinsic = Module[
    {x,kap,u,f,z,pairs,qa,qq,tt,der,gg1,gg2,r1,r2,den2,qx,dd,fsp,diff,flux,conf},
    pairs=Flatten[Table[{i,j},{i,4},{j,i,4}],1]; qa=Table[u[a][x],{a,10}];
    qq=Table[qa[[First@FirstPosition[pairs,Sort[{i,j}]]]],{i,4},{j,4}]; tt=Tr[qq];
    der[expr_,i_]:=If[i==4,D[expr,x],0];
    gg1=Table[kap(der[qq[[a,c]],b]+der[qq[[a,b]],c]-der[qq[[b,c]],a]),{a,4},{b,4},{c,4}];
    gg2=Table[Expand[-2 kap Sum[qq[[a,d]]gg1[[d,b,c]],{d,4}]],{a,4},{b,4},{c,4}];
    r1=Table[Sum[der[gg1[[a,b,c]],a]-der[gg1[[a,b,a]],c],{a,4}],{b,4},{c,4}];
    r2=Table[Expand[Sum[der[gg2[[a,b,c]],a]-der[gg2[[a,b,a]],c]+
       Sum[gg1[[a,a,d]]gg1[[d,b,c]]-gg1[[a,c,d]]gg1[[d,b,a]],{d,4}],{a,4}]],{b,4},{c,4}];
    den2=Expand[Tr[r2]-2 kap Tr[qq.r1]+kap tt Tr[r1]];
    qx=D[qq,x]; dd=qx[[All,4]];
    fsp=Tr[qx.qx]-2 dd.dd+2 dd[[4]]D[tt,x]-D[tt,x]^2;
    diff=Expand[den2+kap^2 fsp];
    (* Extract an explicit flux from coefficients of second derivatives. *)
    flux=Expand[Sum[D[diff,D[qa[[a]],{x,2}]]D[qa[[a]],x],{a,10}]];
    conf=f[z] IdentityMatrix[4];
    <|"IntrinsicEHQuadraticModuloExplicitDivergenceResidual"->Simplify[diff-D[flux,x]],
      "ConformalRadialKineticResidual"->Simplify[Tr[D[conf,z].D[conf,z]]-D[Tr[conf],z]^2+12 f'[z]^2],
      "ConformalSpatialKineticResidual"->Simplify[Tr[conf.conf]-2 conf[[All,4]].conf[[All,4]]+
         2 conf[[4,4]]Tr[conf]-Tr[conf]^2+6 f[z]^2]|>
   ];
   (* Boundary-only Bianchi argument and finite pure-gauge surface form. *)
   boundary=Module[{z,x1,x2,x3,x4,ell,p,s,b,coords,g,gi,gam,sm,div,target,amp,tail},
    coords={z,x1,x2,x3,x4};g=ell^2/z^2 IdentityMatrix[5];gi=z^2/ell^2 IdentityMatrix[5];
    gam=Table[Sum[gi[[a,d]](D[g[[d,c]],coords[[bb]]]+D[g[[d,bb]],coords[[c]]]-D[g[[bb,c]],coords[[d]]]),{d,5}]/2,{a,5},{bb,5},{c,5}];
    sm=ConstantArray[0,{5,5}];sm[[1,1]]=s[z]Exp[I p x4];
    Do[sm[[1,i+1]]=sm[[i+1,1]]=b[i][z]Exp[I p x4],{i,4}];
    div=Table[FullSimplify[Sum[gi[[mu,mu]](D[sm[[mu,nu]],coords[[mu]]]-Sum[gam[[rho,mu,mu]]sm[[rho,nu]]+gam[[rho,mu,nu]]sm[[mu,rho]],{rho,5}]),{mu,5}]],{nu,5}];
    target=z^2/ell^2 Exp[I p x4]Join[{s'[z]-2s[z]/z+I p b[4][z]},Table[b[i]'[z]-3b[i][z]/z,{i,4}]];
    tail=amp z^2 DiagonalMatrix[{0,0,0,1}];
    <|"ResidualBianchiComponents"->Simplify[div-target],
      "PolynomialTailSurfaceForm"->Simplify[3ell^3 z^-4(Tr[tail]^2/2-Tr[tail.tail])+3ell^3 amp^2/2]|>
   ];
   passed=And@@(TrueQ[#===0]& /@ Flatten[Join[Values[geometry],Values[variationADM],Values[intrinsic],Values[boundary]]]);
   <|"AllResidualsExactlyZero"->passed,"Geometry"->geometry,
     "ActionAndADM"->variationADM,"IntrinsicEHAndTraceChecks"->intrinsic,"BoundaryBianchiAndTail"->boundary,
     "Messages"->(ToString[#,InputForm]& /@ $MessageList),
     "Scope"->"10 arbitrary components; no TT restriction. Fourier geometry, local action variation, radial ADM endpoint and intrinsic EH checks. Log/finite counterterms and boundary-domain/constraint reduction excluded."|>
  ]
 ];
 Print[ToString[report,InputForm,PageWidth->120]];
 report
]
