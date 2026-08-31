(* Exact two-dimensional covariant jets, not sampled metric profiles.
   DDz has the curvature antisymmetry of a covector; its symmetric
   part, DH, DX and Dz are independent. No Bianchi row is a rewrite rule. *)
ClearAll["Global`*"];
ep={{0,1},{-1,0}}; id=IdentityMatrix[2];
xx={{x11,x12},{x12,x22}}; hh={{h11,h12},{h12,h22}}; zz={z1,z2};
dx=Table[{{xxd[a,1,1],xxd[a,1,2]},{xxd[a,1,2],xxd[a,2,2]}},{a,2}];
dh=Table[{{hhd[a,1,1],hhd[a,1,2]},{hhd[a,1,2],hhd[a,2,2]}},{a,2}];
dz=Array[zzd,{2,2}];
ddz=Table[zzdd[Min[a,b],Max[a,b],c]+kg/2(id[[a,c]]zz[[b]]-id[[b,c]]zz[[a]]),{a,2},{b,2},{c,2}];
aa={{aa1,aa2},{aa2,-aa1}};
da=Table[{{aad[a,1],aad[a,2]},{aad[a,2],-aad[a,1]}},{a,2}];
vars=Join[{x11,x12,x22,h11,h12,h22,z1,z2,kg,rr,aa1,aa2},Flatten[dz]];
grad[a_]:=Join[{dx[[a,1,1]],dx[[a,1,2]],dx[[a,2,2]],dh[[a,1,1]],dh[[a,1,2]],dh[[a,2,2]],dz[[a,1]],dz[[a,2]],kgd[a],rrd[a],da[[a,1,1]],da[[a,1,2]]},Flatten[ddz[[a]]]];
dd[a_,expr_]:=Sum[D[expr,vars[[j]]]grad[a][[j]],{j,Length[vars]}];
th=Tr[hh]; tx=Tr[xx]; gauss=kg+rr+(th tx-Tr[hh.xx])/2;
sg=dz[[1,2]]-dz[[2,1]]+(xx.hh-hh.xx)[[1,2]]/2;
beta=Table[dd[b,tx]-Sum[dx[[a,a,b]],{a,2}],{b,2}]+tx zz-xx.zz;
ubeta=Table[Sum[dh[[a,a,b]],{a,2}]-dd[b,th],{b,2}]-hh.zz+th zz;
xp=dz+Transpose[dz]+2Outer[Times,zz,zz]+rr id-(hh.xx+xx.hh)/2;
zp=-ubeta-2hh.zz;
cc=Table[dh[[c,a,b]]-dh[[b,a,c]],{a,2},{b,2},{c,2}];
commDiv[ss_,ds_]:=Table[Sum[-hh[[a,c]]ds[[c,a,b]]+cc[[a,a,c]]ss[[c,b]]+cc[[a,b,c]]ss[[a,c]],{a,2},{c,2}],{b,2}];
bp=Table[dd[b,Tr[xp]]-Sum[hh[[b,c]]dd[c,tx],{c,2}]-Sum[dd[a,xp[[a,b]]],{a,2}],{b,2}]-commDiv[xx,dx]+Tr[xp]zz+tx zp-xp.zz-xx.zp;
betaResidual=Expand[bp+th beta-Table[dd[a,rr],{a,2}]-ep.Table[dd[a,sg],{a,2}]-2(xx-tx id/2).ubeta-3(rr zz+sg ep.zz)];
hp=-hh.hh-aa;
up=Table[Sum[dd[a,hp[[a,b]]],{a,2}]-dd[b,Tr[hp]]+Sum[hh[[b,c]]dd[c,th],{c,2}],{b,2}]+commDiv[hh,dh]+(Tr[hp]id-hp).zz+(th id-hh).zp;
ownResidual=up+2th ubeta+Table[Sum[da[[a,a,b]],{a,2}],{b,2}]-aa.zz;
checks={
 "V66 beta residual equals minus twice Gauss times torsion"->Expand[betaResidual+2gauss zz],
 "V66 beta Bianchi on the Gauss constraint"->Expand[betaResidual/.rr->-kg-(th tx-Tr[hh.xx])/2],
 "V67 own underbeta Bianchi"->Expand[ownResidual]
};
(* Weighted mirror, c>0 and generator-constant on N_+.
   beta'=-c underbeta, underbeta'=-beta/c, zeta'=t=-zeta-Dlog c. *)
ww={w1,w2}; tt=-zz-ww;
cof[ss_]:=Tr[ss]id-ss;
mirrorBeta=cscale(-Table[Sum[dh[[a,a,b]],{a,2}]-dd[b,th],{b,2}]+cof[hh].ww+cof[hh].tt);
mirrorU=cscale^-1(-Table[dd[b,tx]-Sum[dx[[a,a,b]],{a,2}],{b,2}]+cof[xx].ww+cof[xx].tt);
checks=Join[checks,{
 "V68 mirrored Codazzi beta"->Expand[mirrorBeta+cscale ubeta],
 "V68 mirrored Codazzi underbeta"->Expand[mirrorU+beta/cscale],
 "V68 mirrored normal curvature"->Expand[-(dz[[1,2]]-dz[[2,1]])+(hh.xx-xx.hh)[[1,2]]/2+sg],
 "V68 plus rho coefficient"->Expand[ww-tt+zz+2tt],
 "V68 plus own-vector coefficient"->Expand[2ww+tt+2zz+tt],
 "V68 plus opposite-extreme coefficient"->Expand[ww+5tt-(4tt-zz)]
}];
(* Independent connection-matrix substitution in source (5.3b). *)
rot=rot4 ep; cut={k1 ep,k2 ep};
conn=ConstantArray[0,{4,4,4}]; (* direction, output, input *)
Do[
 conn[[a,1;;2,1;;2]]=cut[[a]];
 Do[conn[[a,3,b]]=xx[[a,b]]/2;conn[[a,4,b]]=hh[[a,b]]/2;
 conn[[a,b,3]]=hh[[a,b]];conn[[a,b,4]]=xx[[a,b]],{b,2}];
 conn[[a,3,3]]=zz[[a]];conn[[a,4,4]]=-zz[[a]],{a,2}];
conn[[3,3,3]]=2nu;conn[[3,4,4]]=-2nu;
conn[[3,1;;2,4]]=2zz;conn[[3,3,1;;2]]=zz;
conn[[4,1;;2,3]]=2tt;conn[[4,4,1;;2]]=tt;
conn[[4,1;;2,1;;2]]=rot;
lower[p_,q_,i_,j_]:=Sum[(conn[[p,l,q]]-conn[[q,l,p]])conn[[l,i,j]]-conn[[p,i,l]]conn[[q,l,j]]+conn[[q,i,l]]conn[[p,l,j]],{l,4}];
checks=Join[checks,{
 "V69 source e3 undereta"->Table[Expand[(2ubeta[[a]]+lower[3,4,a,3])/2-(ubeta+hh.(zz-tt))[[a]]],{a,2}],
 "V69 duplicate e4 zeta rows agree"->Table[Expand[(-2beta[[a]]+lower[4,3,a,4])/2-(-beta[[a]]+lower[4,a,3,3])],{a,2}],
 "V69 e4 zeta equals geometric transport"->Table[Expand[-beta[[a]]+lower[4,a,3,3]-(-beta+xx.(tt-zz)-rot.zz)[[a]]],{a,2}],
 "V69 e4 nu"->Expand[(-2rr+lower[4,3,3,3])/2-(-rr+2tt.zz-zz.zz)],
 "V69 e3 rotation"->Table[Expand[2sg ep[[a,b]]+lower[3,4,a,b]-(2sg ep+2Sum[(zz-tt)[[d]]cut[[d]],{d,2}]-2nu rot+2(Outer[Times,tt,zz]-Outer[Times,zz,tt]))[[a,b]]],{a,2},{b,2}]
}];
results=checks/.Rule[label_,expr_]:>Rule[label,FullSimplify[expr]];
Scan[Print[If[And@@Thread[Flatten[{Last[#]}]==0],"PASS ","FAIL "],First[#]]&,results];
If[!And@@(And@@Thread[Flatten[{Last[#]}]==0]&/@results),Print[results];Exit[1]];
Print["REGRESSIONS ONLY: analytic initial compatibility proof is calculation 10."];
results
