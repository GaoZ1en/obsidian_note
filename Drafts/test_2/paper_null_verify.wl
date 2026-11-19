(* Independent dense-matrix verification of the displayed analytic proof.
   Uses only this file; no previous checker or private data is loaded.
   a=1+w^2,b=1-w^2,c=2w covers positive radii up to scale.
   t is the unrestricted null amplitude. Labels 0..10 in the paper.
*)
ClearAll["Global`*"];
id=IdentityMatrix[32];i2=IdentityMatrix[2];
pauliX={{0,1},{1,0}};pauliY={{0,-I},{I,0}};pauliZ={{1,0},{0,-1}};
g=Flatten[Table[Table[KroneckerProduct@@Table[If[j<k,pauliZ,If[j==k,p,i2]],{j,5}],{p,{pauliX,pauliY}}],{k,5}],1];
AppendTo[g,KroneckerProduct@@ConstantArray[pauliZ,5]];g[[1]]=I g[[1]];
G[ii__Integer]:=Dot@@g[[{ii}+1]];G[]:=id;
eta=Join[{-1},ConstantArray[1,10]];zero=0 id;
a=1+w^2;b=1-w^2;c=2w;
aa=G[0,1,2];bb=G[3,4,5];cc=G[6,7,8];xx=G[9];yy=G[10];uu=G[0]+G[1];ell=G[0,1];nn=uu.G[5,8];
hh=a aa+b bb+c cc;tt=a id-b aa.bb-c aa.cc;
pp=tt.(id+ell);p0=tt.(id+xx);p4=pp.(id-xx);
jj=(id-t nn).xx;ss=id-t nn/2;
zq[m_]:=And@@(Expand[#]===0& /@Flatten[m]);
make[sp_,sm_]:=Module[{str,flux,omega,slash,ds,rr,tri,r,k,i,j},
 str=ConstantArray[0,{11,11,11}];flux=<||>;
 Do[str[[1,j,3]]=-a(1+t^2);str[[1,3,j]]=-str[[1,j,3]];
 str[[2,j,3]]=-a(1-t^2);str[[2,3,j]]=-str[[2,j,3]],{j,{1,2}}];
 Do[tri=entry[[1]];r=entry[[2]];
 Do[If[DuplicateFreeQ[{i,j,k}],str[[i,j,k]]=r Signature[{i,j,k}]],{i,tri},{j,tri},{k,tri}],
 {entry,{{{4,5,6},2b sp},{{7,8,9},2c sm}}}];
 flux=<|{1,2,3,10}->2a,{4,5,6,10}->2b,{7,8,9,10}->2c|>;
 Do[AssociateTo[flux,{{k,3,6,9}->(-2a t),{k,4,5,9}->(-2b sp t),{k,6,7,8}->(2c sm t)}],{k,{1,2}}];
 omega=Table[(eta[[i]]str[[i,k,j]]-eta[[k]]str[[k,j,i]]+eta[[j]]str[[j,i,k]])/2,{k,11},{i,11},{j,11}];
 slash=Total[KeyValueMap[#2 (Dot@@g[[#1]])&,flux]];
 ds=Table[Sum[omega[[k,i,j]]g[[i]].g[[j]]/2,{i,11},{j,i+1,11}]+eta[[k]]g[[k]].slash/12-
 Total[KeyValueMap[If[MemberQ[#1,k],#2(-1)^(First[FirstPosition[#1,k]]-1)(Dot@@g[[DeleteCases[#1,k]]])/4,zero]&,flux]],{k,11}];
 rr[i_,j_]:=ds[[i+1]].ds[[j+1]]-ds[[j+1]].ds[[i+1]]-Sum[str[[k,i+1,j+1]]ds[[k]],{k,11}];
 {ds,Table[rr@@ij,{ij,{{5,10},{9,10},{0,2},{0,9},{0,10}}}]}];
report=Table[Module[{ds,rr,d,checks,ms,sp=sg[[1]],sm=sg[[2]]},
 {ds,rr}=make[sp,sm];d=b^2(1-sp)+c^2(1-sm);
 checks=<|"U R5y factor"->zq[uu.rr[[1]]+b uu.yy.G[5].bb.hh/18],
 "Rxy null annihilator"->zq[rr[[2]].(id+ell)],
 "Rxy PH factor"->zq[rr[[2]].tt-t d uu.G[5,8,10].tt/6]|>;
 If[sp==1&&sm==1,
 AssociateTo[checks,{"R5y factor"->zq[rr[[1]]+b yy.G[5].bb.hh/18],
 "R02 PH factor"->zq[rr[[3]].tt-a^2 t G[2,5,8].(id+2ell).(id+t nn).(id-jj).tt/2]}];
 ms=Join[{a(G[0]-G[1]).G[2]/2,a(G[0]-G[1]).G[2]/2,-a ell},
 Table[-b G[i].bb,{i,3,5}],Table[-c G[i].cc,{i,6,8}],{zero,zero}];
 AssociateTo[checks,"eight-dimensional connection table"->And@@Table[zq[ds[[i]].ss.p0-ss.ms[[i]].p0],{i,11}]]];
 If[sp==-1&&sm==-1,
 AssociateTo[checks,"R0x null-seed factor"->zq[rr[[4]].pp-a^2 t G[5,8].(id+xx).pp/3]];
 ms=Join[{zero,zero,zero},Table[b G[i].bb,{i,3,5}],Table[c G[i].cc,{i,6,8}],{zero,zero}];
 AssociateTo[checks,"four-dimensional connection table"->And@@Table[zq[(ds[[i]]-ms[[i]]).p4],{i,11}]]];
 If[sp!=sm,AssociateTo[checks,"mixed invertible obstruction"->zq[hh.G[5,8,10].rr[[5]].pp+(sp-sm)a b c t xx.yy.pp/3]]];
 <|"branch"->{sp,sm},"checks"->checks|>],{sg,{{1,1},{-1,-1},{1,-1},{-1,1}}}];
bm=G[2,4,6,8,10];
<|"volume minus identity"->zq[G@@Range[0,10]+id],
 "Majorana involution"->zq[bm.Conjugate[bm]-id],
 "Majorana Clifford compatibility"->And@@Table[zq[bm.Conjugate[g[[i]]]-g[[i]].bm],{i,11}],
 "branches"->report|>
