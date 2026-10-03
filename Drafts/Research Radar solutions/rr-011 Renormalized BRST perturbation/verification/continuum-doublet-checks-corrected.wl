Clear[ph,th,g,c,p,tt,cc,bb,m,mu,eps,ss,hb,cdiv,xx,z];
kin[v_,dv_]:=-dv.dv/2-m^2 v^2/2;
grad=Array[p,4]; dth=Array[tt,4]; dc=Array[cc,4]; bvec=Array[bb,4];
l0=kin[ph,grad];
l1=grad.dth+m^2 ph th+bvec.grad-ph^4/24;
s0l1=Sum[D[l1,tt[j]]cc[j],{j,4}]+D[l1,th]c;
s1l0=Sum[D[l0,p[j]]cc[j],{j,4}]+D[l0,ph]c;
wick=Sum[(-hb cdiv/2)^j/Factorial[j]D[xx^4,{xx,2j}],{j,0,2}];
ce=(Exp[-m^2 eps^2]/eps^2-m^2 Gamma[0,m^2 eps^2])/(16 Pi^2);
density=Exp[-m^2 ss]/(16 Pi^2 ss^2);
checkHeat=FullSimplify[D[ce,eps]+2 eps(density/.ss->eps^2),Assumptions->{m>0,eps>0}];
brstWick=Expand[(D[wick/.xx->ph-g th,th]+g D[wick/.xx->ph-g th,ph])c];
<|"order_g_off_shell_BRST_compatibility"->Expand[s0l1+s1l0],
"quartic_Wick_subtractions"->Expand[wick-(xx^4-6 hb cdiv xx^2+3 hb^2 cdiv^2)],
"heat_cutoff_covariance_derivative"->checkHeat,
"local_counterterm_BRST_invariance"->brstWick,
"physical_coordinate_inverse"->Expand[(ph-g th/.ph->xx+g th)-xx],
"finite_model_angle_average"->FullSimplify[Integrate[Exp[-I z Sin[th]],{th,-Pi,Pi},Assumptions->Element[z,Reals]]/(2Pi)-BesselJ[0,z],Assumptions->Element[z,Reals]]
|>

