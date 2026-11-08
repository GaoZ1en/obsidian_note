(* Independent local and endpoint audit; no imported outputs. *)
ClearAll["Global`*"];
out="/Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/independent audit and phi4 comparison/results/onebody_local_audit.json";
checks=<||>;$Assumptions=d>1&&b>0&&y>1&&tau>0&&nn>0&&ss>0;
add[n_,r_]:=Module[{z=FullSimplify[r,$Assumptions]},AssociateTo[checks,n-><|"zero"->TrueQ[z===0],"residual"->ToString[z,InputForm]|>]];
mu=d(d-2);ff=y^2-1;
fund=Exp[-2(d-1)ArcSinh[b y]]/(8Pi*b*y*Sqrt[1+b^2*y^2]);
add["finite_time_covariance_ODE",(1+b^2*y^2)*D[fund,{y,2}]+(5b^2*y+2/y)*D[fund,y]-4mu*b^2*fund];
cchi=((1+b^2)*F''[y]+b^2*F'[y]/y)/(4b^2);
cr=(b^2*ff*F''[y]+(b^2*ff-1)*F'[y]/y)/(4b^2);
ctheta=-F'[y]/(4b^2*y);
rho=(cchi+cr+ctheta+mu*F[y])/2;
pr=(cchi+cr-ctheta-mu*F[y])/2;pt=(cchi-cr+ctheta-mu*F[y])/2;
add["pressure_trace",pr+pt-cchi+mu*F[y]];
f2=(4mu*b^2*F[y]-(5b^2*y+2/y)*F'[y])/(1+b^2*y^2);
f3=D[f2,y]/.F''[y]->f2;
add["stress_radial_conservation",(D[pr,y]+(rho+pr)/y+y/ff*(pr-pt))/.{F'''[y]->f3,F''[y]->f2}];
lag=nn*ss*((1+eps*zz)*vel^2/nn^2-(1+eps*zz)*grad-mu*phi^2)/2;
velrule=First[Solve[pp==D[lag,vel],vel]];
ham=Simplify[(pp*vel-lag)/.velrule];
add["fixed_momentum_Legendre",(D[ham,eps]/.eps->0)-nn*ss*zz*(-pp^2/ss^2+grad)/2];
add["kinetic_counterterm_sign",((D[ham,eps]/.eps->0)/.{zz->-4gg/(nn*tau),pp->ss*chi})-2gg*ss*(chi^2-grad)/tau];
(* Two independent metric variations of -T.delta g/2. *)
lin=-nn*ss*((rho/nn^2)*(-2nn*dn)+(pr+pt)*2psi)/2;
add["tadpole_lapse",D[lin,dn]-ss*rho];
add["tadpole_conformal",D[lin,psi]+nn*ss*(pr+pt)];
r2=-(3y^2-1)/(y*ff)*R'[y]+(jj^2/ff^2+mu/ff-om^2/(y^2*ff))*R[y];
kin=4*(om^2/y^2*R[y]^2-ff*R'[y]^2-jj^2/ff*R[y]^2)-(4mu+2+2/y^2)*R[y]^2;
primitive=-4ff*R[y]*R'[y]-2*(y-1/y)*R[y]^2;
add["all_mode_kinetic_IBP_identity",(kin-D[primitive,y])/.R''[y]->r2];
(* Exact counterexamples to omitting a prescription condition, not to Appendix B. *)
c00=16/15;c10=16/21;
unmatched=3*c10-2*c00;
finiteClock=-(c10-c00)/4;
add["unmatched_external_leg_gap_remainder",unmatched-16/105];
add["finite_clock_term_gap_remainder",finiteClock-8/105];
add["Hartree_ground_only_subtraction",(-mu/3*((d-1)*(d+ell)+mu)+mu/3*((d-1)*d+mu))+mu*(d-1)*ell/3];
(* phi=A*y^-d, delta phi=B*y^-d: exact scalar boundary variation coefficient. *)
boundary=-4gg*d*aa*bb*(y^2-1)*y^(-2d-1)/tau;
add["radial_cutoff_first",Limit[boundary,y->Infinity,Assumptions->d>1&&tau>0]];
(* Along y=tau^(-1/(2d-1)) it has nonzero finite limit. Write powers explicitly. *)
add["nonuniform_joint_radial_endpoint",Limit[-4gg*d*aa*bb*(1-tau^(2/(2d-1))),tau->0,Direction->"FromAbove",Assumptions->d>1]+4gg*d*aa*bb];
report=<|"scope"->"Finite-time covariance and both tadpole sources; fixed-momentum kinetic insertion; all-mode IBP; explicit failures if common leg weights / fixed subtraction / radial-first order are omitted.","count"->Length[checks],"allPassed"->AllTrue[Values[checks],TrueQ[#["zero"]]&],"checks"->checks,"counterexamples"-><|"Delta2_external_01_unmatched_legs_after_ground_gap"->"16G/105","Delta2_external_01_add_finite_Z=Gc/y_after_ground_gap"->"8Gc/105; violates restored global Ward condition and is excluded by declared prescription","Hartree_ground_only"->"-G*mu*(Delta-1)*(2n+|j|)/3","joint_radial_time_boundary"->"-4G*Delta*A*B on y=tau^(-1/(2Delta-1)); radial-first prescribed order gives zero"|>,"messages"->(ToString[#,InputForm]&/@$MessageList)|>;
Export[out,report,"RawJSON"];
<|"path"->out,"count"->Length[checks],"allPassed"->report["allPassed"],"messages"->report["messages"]|>
