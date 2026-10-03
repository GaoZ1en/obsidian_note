ClearAll["Global\`*"];
num=6;edges=Join[Flatten[Table[{2 a+b+1,2 Mod[a+1,3]+b+1,(3+4 I)/5},{a,0,2},{b,0,1}],1],Table[{2 a+1,2 a+2,(5+12 I)/13},{a,0,2}]];
pp=5IdentityMatrix[num];Do[pp[[ed[[1]],ed[[2]]]]-=ed[[3]];pp[[ed[[2]],ed[[1]]]]-=Conjugate[ed[[3]]],{ed,edges}];
zz=ConstantArray[0,{num,num}];ed=First[edges];zz[[ed[[1]],ed[[2]]]]=-I ed[[3]];zz[[ed[[2]],ed[[1]]]]=I Conjugate[ed[[3]]];
lam=DiagonalMatrix[Range[num]];pg=I(lam.pp-pp.lam);pgz=I(lam.zz-zz.lam);inv=Inverse[pp];
contact=FullSimplify[Tr[inv.pgz]];bubble=FullSimplify[-Tr[inv.zz.inv.pg]];
<|"one_current_gauge_Ward"->FullSimplify[Tr[inv.pg]],"mixed_current_Ward_including_contact"->FullSimplify[contact+bubble],"contact_separately"->contact,"bubble_separately"->bubble,"omitting_contact_is_nonzero"->(bubble!=0)|>
