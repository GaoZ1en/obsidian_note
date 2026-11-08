(* Independent transcription and rational audit of Appendix B.7.
   No supplied scripts or reports are evaluated. Fresh kernel required. *)
ClearAll["Global`*"];
out="/Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/independent audit and phi4 comparison/results/onebody_allindex_audit.json";
checks=<||>;
add[name_,expr_]:=Module[{r=TimeConstrained[Cancel[Together[expr]],180,$Aborted]},AssociateTo[checks,name-><|"zero"->TrueQ[r===0],"residual"->ToString[r,InputForm]|>]];
mu=d(d-2);ff=y^2-1;calD=w^2+d(d+1);
pr=-(3y^2-1)/(y ff);qr=a^2/ff^2+mu/ff-w^2/(y^2 ff);
ss=y^-d(mu rr[y]/4-d ff rr'[y]/(4y));
radRules={rr''[y]->pr rr'[y]+qr rr[y],uu''[y]->(-2y uu'[y]+(2+a^2/ff)uu[y]-ss)/ff};
zz[t_]:=d(d-2)(d+1)t-(2+d^2)w-(d-1)t w^2+w^3;
al[t_]:=-((d^2-w^2)zz[t]+a^2(2d-1)((2d+1)w+t(d+1-2w^2)))/(a(a^2-1)(2d-1)calD);
ga[t_]:=1-t(2d+1)w/calD;
fs[t_]:=-t d w/(4calD);
sr[t_]:=mu/4-t d w/(4y^2);sd=-d ff/(4y);
gone[t_]:=d/(4(a^2-1)(2d-1)calD)*(a^2(2d-1)((d+1)t+w)+d(d+1)(d^2-3d+1)t+d(-1+d-d^2)w-(d^2-1)t w^2+(d+1)w^3);
gtwo[t_]:=d/(4a(a^2-1)(2d-1)calD)*(d zz[t]+a^2(w(w^2+d^2+3d-1)+t((1-d)w^2-d^3+2d^2+2d-1)));
gfun[t_]:=gone[t]+y gtwo[t];
fFun[t_]:=d(-t+al[t](y+a))/(4y)-D[gfun[t],y]+(d/y-pr-(2y+a)/ff)gfun[t];
Do[
 us=ga[t]uu[y]+y^-d fs[t]rr[y];
 res=Expand[-D[ff D[us,y],y]+(2+a^2/ff)us-y^-d(sr[t]rr[y]+sd rr'[y])]/.radRules;
 add["scalar_response_t"<>ToString[t],res/y^-d];
 ts=al[t]((y^2+a y+a^2-1)uu[y]/ff-(y+a)uu'[y])+y^-d(fFun[t]rr[y]+gfun[t]rr'[y]);
 res=Expand[D[ts,y]+(2y+a)ts/ff+d/(4y^(d+1))*(t rr'[y]-(w/y+t a/ff)rr[y])]/.radRules;
 add["momentum_response_t"<>ToString[t],res/y^-d];
,{t,{-1,1}}];
(* Conserved Green current and its explicit endpoint coefficient. *)
current=ff^2*((y^2-a^2)uu'[y]^2-2y uu[y]uu'[y])+(ff^2+a^2 ff+a^2(a^2-1))*uu[y]^2;
add["Green_current_all_indices",(D[current,y]/.uu''[y]->(-2y uu'[y]+(2+a^2/ff)uu[y]-src)/ff)-(2y ff src uu[y]-2ff(y^2-a^2)src uu'[y])];
add["fast_endpoint_current",Limit[current/.{uu[y]->ee/(6y^2),uu'[y]->-ee/(3y^3)},y->Infinity]-ee^2/4];
(* All-index boundary/homogeneous cancellation, equations B.50-B.51. *)
jd=(w^2-d^2)/(a(2d-1));jdp=(a(2d+1)-(2d-1)jd)/(w^2-(d+1)^2);
ee=d(a^2-1)calD/(2(w^2-(d+1)^2));
eta=16/(a^2-1)*Sum[al[t]^2+4(w+t d)/a al[t]ga[t]+2ga[t]^2,{t,{-1,1}}];
xbd=Sum[-4d al[t]ee*((w-t(d-1))jd+2a(w-t d)+(w-t(d+1))jdp)+4al[t]^2 ee^2-8ga[t]^2 ee^2,{t,{-1,1}}]/(a^2-1);
add["assembled_endpoint_cancellation_B51",xbd+eta ee^2/4];
bet[t_]:=8a al[t]/(a^2-1);
k1=Sum[32mu d ga[t]-bet[t]*((mu+3-d)t d+d(d-3)w),{t,{-1,1}}];
km1=Sum[16ga[t]*(a^2 d-2mu d+(2-d)t d w-d w^2)-bet[t]*((1-mu-d+2a^2 d)t d+d(3-2a^2-2d)w-t d w^2),{t,{-1,1}}];
km3=Sum[16ga[t]w*((d+2)t d+d w)-bet[t]w*(d(d+2)+t d w),{t,{-1,1}}];
l0=Sum[-16ga[t]*(mu+d^2)+bet[t]*((d-2)t d+d w),{t,{-1,1}}];
lm2=Sum[16ga[t]*(d(d+2)+t d w)-bet[t]*((d+2)t d+d w),{t,{-1,1}}];
bp[p_]:=2-mu-p(p-1);cp[p_]:=w^2+p(p+1);dp[p_]:=2p+1;
f1=d/2*(a^2(2d^2-6d+3)+2d^2-7d+w^2+6);fm1=d/2*(a^4-a^2(2mu+w^2)-w^2);fm3=d a^2 w^2/2;
g0=-d(d-1)(a^2+1/2);gm2=a^2 d(d+2)/2;
mat={{1,0,0,-d,0,d/2},{cp[d-3],bp[d-1],0,(2d-3)(a^2-w^2-mu),(2d-1)mu,f1},{0,cp[d-1],bp[d+1],(2d-1)w^2,(2d+1)(a^2-w^2-mu),fm1},{0,0,cp[d+1],0,(2d+3)w^2,fm3},{0,dp[d-1],0,cp[d-1],bp[d+1],g0},{0,0,dp[d+1],0,cp[d+1],gm2}};
det=Factor[Det[mat]];
add["six_coefficient_determinant_B48",det-a^2(a^2-1)^2*d*(2d-3)*(2d-1)*(w^2-(d+2)^2)*(w^2+d(d+1))/2];
vec=Cancel[Together[#]]&/@{0,k1,km1,km3,l0,lm2};
sol=TimeConstrained[Cancel[Together[#]]&/@LinearSolve[mat,vec],180,$Aborted];
If[sol=!=$Aborted,
 add["eta_matches_six_coefficient_solution",sol[[6]]-eta];
 Do[add["six_coefficient_row_"<>ToString[i],mat[[i]].sol-vec[[i]]],{i,6}];
 (* The purely local weight, before Jacobi integration. *)
 fa[t_,sg_]:=If[sg==1,fFun[t],fFun[t]/.a->-a];
 gf[t_,sg_]:=If[sg==1,gfun[t],gfun[t]/.a->-a];
 as[sg_]:=4d ff*(y^2-2sg a y+1)/(a^2-1);
 br[t_,sg_]:=-w/y^2-sg t a/(ff y);bd[t_]:=t/y;
 v20=Sum[-64d ff fs[t]sr[t]/y+32*(d t w/y+mu y)fs[t]+Sum[as[sg]fa[t,sg]br[t,sg],{sg,{-1,1}}],{t,{-1,1}}];
 v11=Sum[64ff fs[t]*(sr[t]-d sd/y)+Sum[as[sg]*(fa[t,sg]bd[t]+gf[t,sg]br[t,sg]),{sg,{-1,1}}],{t,{-1,1}}];
 v02=Sum[64ff fs[t]sd+Sum[as[sg]gf[t,sg]bd[t],{sg,{-1,1}}],{t,{-1,1}}];
 nd[f_]:=D[f,y]-2d f/y;
 vv=Cancel[Together[(v20-nd[v11]/2+v02/ff*(w^2/y^2-a^2/ff-mu)+nd[nd[v02]-2y*v02/ff-v02/y]/2)/y]];
 tj[j_]:=d/8*v^j*((j+d-1)*v-j);
 uk[k_]:=d/8*v^k*(-k*(3d+2k-4)+(a^2-d+2d^2-4k+7d k+4k^2-w^2)*v-(2(d+k)^2-w^2)*v^2);
 ww=Cancel[Together[(vv/.y->1/Sqrt[v])/2+(sol[[1]]tj[0]+sol[[2]]tj[1]+sol[[3]]tj[2]+sol[[4]]uk[0]+sol[[5]]uk[1])/v]];
 add["weight_has_degree_two",ww-Sum[Coefficient[ww,v,j]*v^j,{j,0,2}]];
 d0=d^2-w^2;
 m1=(2d-1)*(d0+a^2)/(2d*d0);
 m2=(2d-1)*((2d+1)*(d0+a^2)^2+4d(d+1)*d0+4d*(2d+1)*a^2)/(4d*(d+1)*d0*((d+1)^2-w^2));
 pd=(d-1)w^4-2d(d^2-d-1)w^2+d^3(d-2)(d+1)-(2d-1)a^2*(w^2+d(d+1));
 add["local_Jacobi_contraction_B55",Coefficient[ww,v,0]+Coefficient[ww,v,1]*m1+Coefficient[ww,v,2]*m2+4d*pd/((w^2-d^2)*(w^2-(d+1)^2))];
,
 AssociateTo[checks,"six_coefficient_solve"-><|"zero"->False,"residual"->"$Aborted: 180s"|>]];
report=<|"scope"->"Fresh symbolic rational checks of B.37-B.55; generic a,d,w. Exceptional a=0,1 require the separate center-limit argument and are not certified by division here.","count"->Length[checks],"allPassed"->AllTrue[Values[checks],TrueQ[#["zero"]]&],"checks"->checks,"messages"->(ToString[#,InputForm]&/@$MessageList)|>;
Export[out,report,"RawJSON"];
<|"path"->out,"count"->report["count"],"allPassed"->report["allPassed"],"messages"->report["messages"]|>
