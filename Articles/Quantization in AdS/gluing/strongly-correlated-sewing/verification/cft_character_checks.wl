(* Minimal-model torus checks, not a lattice scaling-limit proof.
   Natural logarithms. Unit circle modulus tau=i. Exact M(5,6) S,T algebra.
   The character cutoff comparisons are numerical diagnostics, not interval bounds. *)
ClearAll["Global`*"];
Module[{p=5, pp=6, labels, c, hs, smat, tmat, md, zero, ch, vals, za, zd, eta, qq, records, checks},
 c=1-6/(p pp); labels=Flatten[Table[{r,s},{r,1,2},{s,1,5}],1];
 hs=((pp #[[1]]-p #[[2]])^2-(pp-p)^2)/(4p pp)& /@ labels;
 smat=Table[With[{r=labels[[i,1]],s=labels[[i,2]],rp=labels[[j,1]],sp=labels[[j,2]]},
  Sqrt[8/(p pp)](-1)^(1+s rp+r sp)Sin[Pi pp r rp/p]Sin[Pi p s sp/pp]],{i,10},{j,10}];
 tmat=DiagonalMatrix[Exp[2Pi I(hs-c/24)]];
 md=ConstantArray[0,{10,10}];
 Do[Do[md[[i,j]]=1,{i,block},{j,block}],{block,{{1,5},{6,10}}}];
 md[[3,3]]=2;md[[8,8]]=2;
 zero=ConstantArray[0,{10,10}];
 checks=<|"S_squared_identity"->TrueQ[FullSimplify[smat.smat]==IdentityMatrix[10]],
 "D4_commutes_S"->TrueQ[FullSimplify[md.smat-smat.md]==zero],
 "D4_commutes_T"->TrueQ[FullSimplify[md.tmat-tmat.md]==zero],
 "D4_unique_vacuum"->TrueQ[md[[1,1]]==1],
 "D4_not_A_diagonal"->TrueQ[md!=IdentityMatrix[10]]|>;
 qq=N[Exp[-2Pi],80];
 ch[r_,s_,kcut_,mcut_]:=Sum[qq^((2p pp k+pp r-p s)^2/(4p pp))-qq^((2p pp k+pp r+p s)^2/(4p pp)),{k,-kcut,kcut}]/
  (qq^(1/24)Product[1-qq^m,{m,1,mcut}]);
 records=Table[vals=ch[#[[1]],#[[2]],cut[[1]],cut[[2]]]& /@ labels;
  za=Conjugate[vals].vals;zd=Conjugate[vals].md.vals;
  <|"theta_cut"->cut[[1]],"eta_cut"->cut[[2]],"Z_A_at_i"->N[za,30],"Z_Potts_at_i"->N[zd,30],
    "difference"->N[za-zd,30]|>,{cut,{{3,40},{5,80}}}];
 cftReport=<|"kernel_version"->$Version,"p"->p,"p_prime"->pp,"central_charge"->ToString[c,InputForm],
 "labels"->labels,"weights"->(ToString[#,InputForm]& /@ hs),"exact_checks"->checks,"torus_values"->records,
 "status"->"Finite exact modular-algebra checks and numerical character sums; not all-genus sewing or continuum-limit proof"|>;
 Print[ExportString[cftReport,"RawJSON"]];cftReport
]
