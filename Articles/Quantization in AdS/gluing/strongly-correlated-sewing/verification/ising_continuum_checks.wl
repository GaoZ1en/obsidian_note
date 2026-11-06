(* Finite even-N PBC Ising and fixed-circumference spectral scaling.
   H_N=-sum ZZ-sum X, Htilde=(v N/(2 L))(H_N+4N/Pi I).
   No spatial entanglement convergence is inferred. *)
ClearAll["Global`*"];
Module[{v=1,l=1,beta=7/20,ns,rsector,eps,ens,er,zfinite,zlimit,qq,prod,rows,id,x,z,op,h,direct,checks,circleCMI},
 eps[n_,r_]:=(2v n/l)Sin[Pi r/n];
 ens[n_]:=(v n/(2l))(-2Csc[Pi/(2n)]+4n/Pi);
 er[n_]:=(v n/(2l))(-2Cot[Pi/(2n)]+4n/Pi);
 zfinite[n_]:=N[
   Exp[-beta ens[n]]/2 (Product[(1+Exp[-beta eps[n,j-1/2]])^2,{j,1,n/2}]+Product[(1-Exp[-beta eps[n,j-1/2]])^2,{j,1,n/2}])+
   Exp[-beta er[n]](1+Exp[-beta eps[n,n/2]])Product[(1+Exp[-beta eps[n,j]])^2,{j,1,n/2-1}],50];
 qq=N[Exp[-2Pi beta v/l],80];
 zlimit=qq^(-1/24)/2 (Product[(1+qq^(j-1/2))^2,{j,1,100}]+Product[(1-qq^(j-1/2))^2,{j,1,100}])+qq^(1/12)Product[(1+qq^j)^2,{j,1,100}];
 id=IdentityMatrix[2];x={{0,1},{1,0}};z=DiagonalMatrix[{1,-1}];
 op[n_,rules_]:=KroneckerProduct@@Table[Replace[j,Append[rules,_Integer->id]],{j,1,n}];
 checks=Table[h=-Sum[op[n,{j->x}],{j,1,n}]-Sum[op[n,{j->z,(Mod[j,n]+1)->z}],{j,1,n}];
  direct=Total[Exp[-beta(v n/(2l))(Eigenvalues[N[h,50]]+4n/Pi)]];
  <|"N"->n,"dense_vs_product_residual"->N[Abs[direct-zfinite[n]],MachinePrecision]|>,{n,{4,6,8}}];
 rows=Table[<|"N"->n,"NS_renormalized_vacuum"->N[ens[n],20],"R_NS_gap"->N[er[n]-ens[n],20],
  "partition"->N[zfinite[n],20],"difference_from_CFT"->N[zfinite[n]-zlimit,20]|>,{n,{8,16,32,64,128}}];
 circleCMI[c_,aa_,bb_,cc_,length_]:=N[c/3 Log[Sin[Pi(aa+bb)/length]Sin[Pi(bb+cc)/length]/(Sin[Pi bb/length]Sin[Pi(aa+bb+cc)/length])],20];
 isingReport=<|"kernel_version"->$Version,"beta"->ToString[beta,InputForm],"v"->v,"L"->l,
 "finite_product_checks"->checks,"spectral_scaling"->rows,"CFT_partition"->N[zlimit,30],
 "lim_NS_vacuum"->N[-Pi v/(12l),20],"lim_R_NS_gap"->N[Pi v/(4l),20],
 "CFT_CMI_comparisons"-><|"Ising_3_3_3_L14"->circleCMI[1/2,3,3,3,14],"Potts_2_2_2_L10"->circleCMI[4/5,2,2,2,10]|>,
 "qualification"->"Dense finite-product checks are numerical; trace convergence has an analytic dominating product proof. CMI numbers are CFT predictions, not exact finite-lattice values."|>;
 Print[ExportString[isingReport,"RawJSON"]];isingReport
]
