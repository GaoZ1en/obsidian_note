(* B/D/E analytic-proof diagnostics. These finite checks do not prove the continuum claims. *)
ClearAll["SystemDummy"];
acChecks={};
acAdd[name_,res_]:=Module[{v=FullSimplify[res]},AppendTo[acChecks,{name,AllTrue[Flatten[{v}],TrueQ[#==0]&],v}]];
acP={{{0,1},{1,0}},{{0,-I},{I,0}},{{1,0},{0,-1}}};
acT=(-I/2)acP; acR=Transpose /@ acT;
acEps=Normal[LeviCivitaTensor[3]];
acAdd["E transposed coefficient action has opposite bracket",
Table[acR[[a]].acR[[b]]-acR[[b]].acR[[a]]+Sum[acEps[[a,b,c]]acR[[c]],{c,3}],{a,3},{b,3}]];
acAdd["E fundamental auxiliary Casimir",-Sum[acR[[a]].acR[[a]],{a,3}]-3IdentityMatrix[2]/4];
acQ={acW,acX,acY,acZ}; acV={acX,acY,acZ};
acU=acW IdentityMatrix[2]-I Sum[acV[[a]]acP[[a]],{a,3}];
acM=Transpose[acU];
acFields=Table[Join[{-acV[[a]]/2},(acW UnitVector[3,a]+Cross[UnitVector[3,a],acV])/2],{a,3}];
acDer[a_,f_]:=Sum[acFields[[a,b]]D[f,acQ[[b]]],{b,4}];
acAdd["E exact matrix Maurer-Cartan identity",Table[acDer[a,acM]-acM.acR[[a]],{a,3}]];
acPsi={acW+acX acY,acZ^2+I acY};
acDagger=ComplexExpand[ConjugateTranspose[acM]];
acCov=-Sum[acDer[a,acDer[a,acPsi]]+2acR[[a]].acDer[a,acPsi]+acR[[a]].acR[[a]].acPsi,{a,3}];
acConj=acDagger.(-Sum[acDer[a,acDer[a,acM.acPsi]],{a,3}]);
acSphere=Total[acQ^2]-1;
acAdd["E covariant Casimir conjugacy on polynomial spinor",
Last[PolynomialReduce[Expand[#],{acSphere},acQ]]& /@ (acConj-acCov)];
acFourier=FullSimplify[Integrate[acTheta(Pi-acTheta)Exp[-I 2acN acTheta],{acTheta,0,Pi}]/(2Pi),Assumptions->Element[acN,Integers]&&acN>=1];
acAdd["D corner trace even Fourier coefficients",acFourier+1/(4acN^2)];
acAdd["D affine root-string recurrence",acN(acK-acN+1)-(acN acK-acN(acN-1))];
acAdd["D vacuum singular norm at levels 1 through 8",
Table[Factorial[acLev+1]Product[acLev-acJ,{acJ,0,acLev}],{acLev,1,8}]];
acDesc=Table[Factorial[acLev+1]Product[3acLev-acJ,{acJ,0,acLev}](Factorial[acLev])^2,{acLev,1,8}];
AppendTo[acChecks,{"D same word nonzero on descendants at levels 1 through 8",And@@Thread[acDesc>0],acDesc}];
acGauss0=FullSimplify[Hypergeometric2F1[acD,acD,1,1]-Gamma[1-2acD]/Gamma[1-acD]^2,Assumptions->0<acD<1/2];
acGauss3=FullSimplify[Pochhammer[acD,3]/6 Hypergeometric2F1[acD+3,acD,4,1]-Gamma[acD+3]Gamma[1-2acD]/(Gamma[acD]Gamma[1-acD]Gamma[4-acD]),Assumptions->0<acD<1/2];
acAdd["B thin-line norm summation at angular modes zero and three",{acGauss0,acGauss3}];
acAsym=Limit[Gamma[acXX+acD]/Gamma[acXX+1]acXX^(1-acD),acXX->Infinity,Assumptions->acD>0];
acAdd["B binomial asymptotic fixing the exact threshold",acAsym-1];
acResult=<|"total"->Length[acChecks],"allPassed"->And@@acChecks[[All,2]],"checks"->acChecks|>;
Print[acResult];
acResult
