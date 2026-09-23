ClearAll["Global`*"];

checks={};
ck[l_,e_]:=AppendTo[checks,<|"label"->l,"passed"->TrueQ[FullSimplify[e]]|>];
aa={b[x,t,s],q[x,t,s],a[x,t,s]};
bare=kk/2(aa[[1]](D[aa[[3]],t]-D[aa[[2]],s])+aa[[2]](D[aa[[1]],s]-D[aa[[3]],x])+aa[[3]](D[aa[[2]],x]-D[aa[[1]],t]));
polar=bare+kk/2 D[aa[[2]]aa[[3]],x];
vol=kk aa[[3]]D[aa[[2]],x]-kk aa[[3]]D[aa[[1]],t]+kk aa[[2]]D[aa[[1]],s];
side=kk/2(D[aa[[1]]aa[[3]],t]-D[aa[[1]]aa[[2]],s]);
ck["CS_polarized_action_retains_lateral_divergence",polar-vol==side];
f=s(1-s); g=t s^2(1-s);
w=Expand[D[f,t]D[g,s]-D[f,s]D[g,t]];
wv=Integrate[w,{t,0,1},{s,0,1}];
ck["proper_vertical_wall_corner_witness",((f/.s->0)==0)&&((f/.s->1)==0)&&((g/.s->0)==0)&&((g/.s->1)==0)&&wv==1/60];
edge=Integrate[(f D[g,s]/.t->1)-(f D[g,s]/.t->0),{s,0,1}]+Integrate[(f D[g,t]/.s->0)-(f D[g,t]/.s->1),{t,0,1}];
ck["corner_witness_Stokes_orientation",edge==wv];
ck["temporal_caps_carry_nonzero_defect",Integrate[(f D[g,s]/.t->1),{s,0,1}]==1/60&&Integrate[(f D[g,s]/.t->0),{s,0,1}]==0];
at={{a11,a12},{a21,a22}}; bs={{b11,b12},{b21,b22}};
sv={s1,s2};tv={u1,u2};rv={v1,v2};qv={q1,q2};
ww=Transpose[at].bs-Transpose[bs].at;
ph[qq_,z_]:=kk (qq-at.z/2).bs.z;
wc[z_,y_]:=-kk/2 z.ww.y;
ck["finite_pairing_Weyl_composition_phase",ph[qv,sv]+ph[qv-at.sv,tv]-ph[qv,sv+tv]==wc[sv,tv]];
ck["nonzero_corner_phase_is_not_associator",wc[sv,tv]+wc[sv+tv,rv]==wc[tv,rv]+wc[sv,tv+rv]];
ck["Weyl_unit_inverse_phase",ph[qv,sv]+ph[qv-at.sv,-sv]==0];
ck["opposite_orientation_cancels_cocycle",wc[sv,tv]+(wc[sv,tv]/.kk->-kk)==0];
sig={z1,z2};xi={y1,y2};
ck["residual_split_corner_phase",wc[sig/2+xi,sig/2-xi]==kk/2 sig.ww.xi];
ck["residual_Lagrangian_choice_detected",FullSimplify[kk/2 sig.ww.xi/.{a11->1,a12->0,a21->0,a22->1,b11->0,b12->1,b21->0,b22->0,z1->1,z2->0,y1->0,y2->1}]==kk/2];
jac={{1/2,1},{1/2,-1}};
bchange={{1/2,1/2},{1,-1}};
ck["residual_symplectic_coordinate_change",Transpose[jac].Inverse[bchange]==IdentityMatrix[2]];
ck["residual_Laplacian_split",Inverse[jac].Transpose[bchange]==IdentityMatrix[2]];
ck["Schwinger_cocycle_bulk_Stokes",D[ff[t,s]D[gg[t,s],s],t]-D[ff[t,s]D[gg[t,s],t],s]==D[ff[t,s],t]D[gg[t,s],s]-D[ff[t,s],s]D[gg[t,s],t]];
uu[z_]:=1+2z+3z^2+z^4; mean=Integrate[uu[z],{z,0,1}];
hx[z_]:=Integrate[uu[zeta],{zeta,0,z}]-z mean;
ck["axial_relative_contraction",D[hx[z],z]==uu[z]-mean&&hx[0]==0&&hx[1]==0];
ck["axial_relative_function_contraction",Integrate[D[z(1-z)(1+z^2),z],{z,0,x}]-x Integrate[D[z(1-z)(1+z^2),z],{z,0,1}]==x(1-x)(1+x^2)];

ha[z_]:=Integrate[uu[zeta],{zeta,0,z}]-Integrate[(1-zeta)uu[zeta],{zeta,0,1}];
ck["axial_absolute_contraction",D[ha[z],z]==uu[z]&&Integrate[ha[z],{z,0,1}]==0];
ck["absolute_function_projection_retains_constant",Integrate[D[1+zeta+zeta^2,zeta],{zeta,0,x}]-Integrate[(1-zeta)D[1+zeta+zeta^2,zeta],{zeta,0,1}]==1+x+x^2-Integrate[1+z+z^2,{z,0,1}]];
ck["axial_propagator_duality",((-x)+(1-(1-x))==0)&&((1-x)+(0-(1-x))==0)];

ck["composition_in_actual_piece_order",wc[sig/2-xi,sig/2+xi]==-kk/2 sig.ww.xi];
psi[qa_,qb_]:=(1+qa+qa^2 qb+qb^3) Exp[-qa^2-2 qb^2];
jointD=(D[psi[qa,qb],qa]+D[psi[qa,qb],qb])/.{qa->zz,qb->zz};
ck["opposite_face_pairing_Ward_integral",Integrate[jointD,{zz,-Infinity,Infinity}]==0];
ExportString[<|"allPassed"->And@@Lookup[checks,"passed"],"count"->Length[checks],"checks"->checks|>,"RawJSON"]
