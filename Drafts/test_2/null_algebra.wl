(* Direct null spinor transport and vector-bilinear audit. *)
Get["/Users/koishi/Documents/Note/Drafts/test_2/null_check.wl"];
faa=1+w^2;fpp=1-w^2;fmm=2w;
run[1,1,1,faa,fpp,fmm];Dn=auditDs;
run[1,1,0,faa,fpp,fmm];Dseed=auditDs;PiSeed=auditPi;
UU=gam[[1]]+gam[[2]];
SS=IdentityMatrix[32]-UU.gp[{6,9}]/2;
mi=IdentityMatrix[11];mi[[1;;2,1;;2]]={{1/2,-1/2},{1/2,3/2}};
zzero[m_]:=AllTrue[Flatten[m],Together[#]===0&];
transport=Table[zzero[(Dn[[a]].SS-SS.Sum[mi[[j,a]]Dseed[[j]],{j,11}]).PiSeed],{a,11}];
BM=gp[{3,5,7,9,11}];CM=BM.gam[[1]];
majoranaCheck=BM.BM==IdentityMatrix[32] && And@@Table[BM.Conjugate[gam[[a]]].BM==gam[[a]],{a,11}];
chargeConjugationCheck=And@@Table[Transpose[gam[[a]]].CM==-CM.gam[[a]],{a,11}];
rotated=SS.PiSeed;
vectorTransport=Table[zzero[Sum[mi[[j,a]]Transpose[rotated].CM.gam[[a]].rotated,{a,11}]-Transpose[PiSeed].CM.gam[[j]].PiSeed],{j,11}];
run[-1,-1,1,faa,fpp,fmm];PiFour=auditPi;Dfour=auditDs;
vv=Table[Transpose[PiFour].CM.gam[[a]].PiFour,{a,11}];
nullVectorOnly=zzero[vv[[1]]+vv[[2]]] && And@@(zzero /@ vv[[3;;11]]);
nullBracketRank=MatrixRank[vv[[1]]];
sphereCasimirs={zzero[(Sum[Dfour[[a]].Dfour[[a]],{a,4,6}]/fpp^2+3 IdentityMatrix[32]/4).PiFour],zzero[(Sum[Dfour[[a]].Dfour[[a]],{a,7,9}]/fmm^2+3 IdentityMatrix[32]/4).PiFour]};
flatTranslations=And@@Table[zzero[Dfour[[a]].PiFour],{a,{10,11}}];
nullAlgebraResult=<|"Majorana real structure"->majoranaCheck,"charge conjugation"->chargeConjugationCheck,"eight-spinor transport eleven identities"->transport,"eight-spinor vector bracket transport eleven identities"->vectorTransport,"four-spinor vector current only along partial_v"->nullVectorOnly,"four-spinor odd bracket rank"->nullBracketRank,"four-spinor sphere doublet Casimirs"->sphereCasimirs,"four-spinor flat translations act trivially"->flatTranslations|>;
nullAlgebraResult
