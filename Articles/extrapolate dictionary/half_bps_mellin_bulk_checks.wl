(* Independent minimal-Einstein graviton exchange calculation, round20.
   All coordinates and tensors in this file use ell=1.
   No SYM correlator is an input.  No existing note is modified.
   E[g]=G[g]-6g, g=IdentityMatrix[5]/u^2.
   Scalar pair is K_2(0)=u^2/(u^2+|x|^2)^2,
   K_2(infinity)=u^2, with unnormalized external kernels.
   H=w[(a tensor b+b tensor a)/2-g/3] solves delta E[H]=B.
   Conformal covariance maps any distinct finite boundary pair to this frame.
*)
ClearAll["Global`*"];
report = Block[{$MessageList = {}},
 coords={u,x,y,z,v}; n=5;
 g=IdentityMatrix[5]/u^2; gi=u^2 IdentityMatrix[5];
 r2=x^2+y^2+z^2+v^2; w=u^2/(u^2+r2);
 aa=D[Log[u/(u^2+r2)],#]&/@coords; bb={1/u,0,0,0,0};
 sym=Outer[Times,aa,bb]+Outer[Times,bb,aa];
 hh=w(c sym+d g)+w^2(e sym+h g);
 gam=Table[(-KroneckerDelta[i,j] KroneckerDelta[k,1]-KroneckerDelta[i,k] KroneckerDelta[j,1]+KroneckerDelta[j,k] KroneckerDelta[i,1])/u,{i,n},{j,n},{k,n}];
 dg=Table[Sum[gi[[i,l]](D[hh[[l,k]],coords[[j]]]+D[hh[[l,j]],coords[[k]]]-D[hh[[j,k]],coords[[l]]])/2,{l,n}]-Sum[gi[[i,l]]hh[[l,m]]gam[[m,j,k]],{l,n},{m,n}],{i,n},{j,n},{k,n}];
 dr=Table[Sum[D[dg[[k,i,j]],coords[[k]]]-D[dg[[k,i,k]],coords[[j]]]+Sum[dg[[k,k,l]]gam[[l,i,j]]+gam[[k,k,l]]dg[[l,i,j]]-dg[[k,j,l]]gam[[l,i,k]]-gam[[k,j,l]]dg[[l,i,k]],{l,n}],{k,n}],{i,n},{j,n}];
 (* Differentiate in all five coordinates before using SO(4) covariance. *)
 line={y->0,z->0,v->0};
 dr=Simplify[dr/.line]; hl=Simplify[hh/.line];
 scalar=Simplify[Tr[gi.dr]+4Tr[gi.hl]];
 ein=Simplify[dr-g scalar/2+4hl];
 source=Simplify[(4w^2 sym+8w^3 g)/.line];
 eqs=Flatten[Table[CoefficientList[Numerator[Together[ein[[i,j]]-source[[i,j]]]],{u,x}],{i,n},{j,n}]];
 sol=Solve[Thread[eqs==0],{c,d,e,h}];
 residual=Simplify[(ein-source)/.First[sol]];
 einG=w(-3Outer[Times,aa,aa]-3Outer[Times,bb,bb]-3sym/2+(-9-6w)g);
 einS=w(-2Outer[Times,aa,aa]-2Outer[Times,bb,bb]+(8w-1)sym+(16w^2-4w-6)g);
 identityResiduals={Simplify[(ein/.{c->0,d->1,e->0,h->0})-(einG/.line)],Simplify[(ein/.{c->1,d->0,e->0,h->0})-(einS/.line)]};
 (* Tensor contraction: a_i.a_j=1-2zij; g:g=5. *)
 contraction=Expand[4((1-2z13)(1-2z24)+(1-2z14)(1-2z23))-8(1-2z34)/3+8z34(1-2z12-5/3)];
 contractedTarget=16/3-8(z13+z14+z23+z24)+16(z13 z24+z14 z23-z12 z34);
 (* D contact Mellin prefactor is pi^2 Gamma[(sum Delta-4)/2]/[2 product Gamma[Delta]]. *)
 dPref[ds_List]:=Pi^2 Gamma[(Total[ds]-4)/2]/(2Times@@(Gamma/@ds));
 dPrefs=dPref/@{{1,1,2,2},{2,1,3,2},{2,2,3,3}};
 aM=(4-s)/2;bM=(4-t)/2;cM=(4-um)/2;
 raw=((8/3-2s+4(bM^2+cM^2))/(aM-1)-4aM)/2;
 target=(s-6)/2-((t-um)^2+4/3)/(2(s-2));
 mellinResidual=FullSimplify[(raw-target)/.um->8-s-t];
 totalPolynomial=FullSimplify[((s-6)+(t-6)+(um-6))/2/.um->8-s-t];
 residue=Simplify[Limit[(s-2)(target/.um->8-s-t),s->2]];
 (* Barnes first lemma yields moments of y: 1,1/2,1/6,0,-1/30.
    Equivalently J[(y)_k]=k!/(k+1). *)
 moments={1,1/2,1/6,0,-1/30};
 barnes[p_]:=Sum[Coefficient[Expand[p],yy,k]moments[[k+1]],{k,0,4}];
 stressQ=yy^2-yy+1/3;
 lightcone=Table[(-1)^j 4barnes[stressQ Product[yy-k,{k,1,j}]/j!],{j,0,2}];
 barnesMomentResidual=Table[barnes[Expand[Pochhammer[yy,k]//FunctionExpand]]-k!/(k+1),{k,0,4}];
 normalization=FullSimplify[(kap^2/(8Pi^4 ell^3))/.kap^2->4Pi^2 ell^3/nn^2];
 <|"EinsteinAnsatzSolution"->sol,"Einstein25Residuals"->residual,
   "TwoCovariantTensorIdentityResiduals"->identityResiduals,
   "ContractionResidual"->Expand[contraction-contractedTarget],
   "DMellinPrefactors"->dPrefs,"PerChannelMellinResidual"->mellinResidual,
   "ExchangePolynomialSumInUnits1OverN2"->totalPolynomial,
   "ResidueInUnits1OverN2"->residue,
   "BarnesMomentResiduals"->barnesMomentResidual,
   "LightconeUtimesOneMinusVPowers0Through2InUnits1OverN2"->lightcone,
   "PositionSpacePrefactor"->normalization,
   "Messages"->(ToString[#,InputForm]&/@$MessageList)|>
];
Print[ToString[report,InputForm,PageWidth->110]];
