(* All-index certificates for the analytic supplement to the OFPT note.
   No saved spectrum coefficients or finite radial blocks are loaded.
   Run: wolframscript -file <this file>. *)
ClearAll[del,n,p,r,h,j,k,s,z,mu,cc,u,v2,a,b,c,xx,yy,zz];
auditDir=DirectoryName[$InputFileName];
checks=<||>;
put[label_,expr_]:=AppendTo[checks,label->expr];
asm=del>1&&Element[{n,r},Integers]&&0<=r<=n;
v2[k_,p_]:=Binomial[k,p]Pochhammer[del,k]^2/
 (Pochhammer[del,p]Pochhammer[del,k-p]Pochhammer[2del+k-1,k]);
put["primary_normalization_all_n",FullSimplify[
 Sum[Binomial[n,p]/(Pochhammer[del,p]Pochhammer[del,n-p]),{p,0,n}]
 -Pochhammer[2del+n-1,n]/Pochhammer[del,n]^2,
 del>1&&Element[n,Integers]&&n>=0]];
rho1=(del+n)(n+1)(2del+n-1)/(2(2del+2n-1));
rho2=(del+n)(del+n+1)(n+1)(n+2)(2del+n-1)(2del+n)/
 (4(2del+2n-1)(2del+2n+1));
put["center_ratio_1_left",FullSimplify[FunctionExpand[
 v2[n+1,r]/v2[n,r](n-r+1)(del+n-r)-rho1],asm]];
put["center_ratio_1_right",FullSimplify[FunctionExpand[
 v2[n+1,r+1]/v2[n,r](r+1)(del+r)-rho1],asm]];
put["center_ratio_2",FullSimplify[FunctionExpand[
 v2[n+2,r+1]/v2[n,r](r+1)(del+r)(n-r+1)(del+n-r)-rho2],asm]];
put["scalar_primary_norm",FullSimplify[
 Integrate[r/(Pi(1+r^2)^(2h)),{r,0,Infinity},Assumptions->h>1]
 -1/(2Pi(2h-1)),h>1]];
Do[put["tensor_primary_norm_s"<>ToString[spin],FullSimplify[
 Integrate[2Pi r 2^spin (1+r^2)^(-ee-spin),{r,0,Infinity},
 Assumptions->ee>2]-Pi 2^spin/(ee+spin-1),ee>2]],{spin,{1,2}}];
mu=del(del-2);cc=h(h-1);
gs0=-2(cc+mu)^2/((2h-3)(2h-1)(2h+1));
put["annihilation_scalar",Factor[
 -8Pi (cc+mu)^2/(2(4cc-3))/(2Pi(2h-1))-gs0]];
amp2=h(h+1)(n+1)(n+2)(2del+n-1)(2del+n)/
 (8Pi^2(2h-1)(2h+1));
gs2=(n+1)(n+2)(2del+n-1)(2del+n)/((2h-1)(2h+1)(2h+3));
put["annihilation_spin_two",Factor[
 8Pi amp2 (4Pi/(2h+3))/(4h(h+1))-gs2]];
(* Ward-normalized stress logarithm and its arbitrary-level coefficient. *)
ff=(z/(1-z))^del;
ds[fun_]:=z^2((1-z)D[fun,{z,2}]-D[fun,z]);
put["free_channel_Casimir",FullSimplify[
 ds[ff]/ff-(del^2/(1-z)-del),del>1&&0<z<1]];
put["stress_log_generating_identity",FullSimplify[
 (4mu ff-8ds[ff])/ff+4del^2(1+z)/(1-z),del>1&&0<z<1]];
put["stress_block_log",FullSimplify[
 (1-z)^2 Hypergeometric2F1[2,2,4,1-z]+12+6(1+z)/(1-z)Log[z],0<z<1]];
u[n_]:=-4(del^2+2n(2del+n-1));
put["Casimir_coefficient",Factor[u[n]-(4mu-8(del+n)(del+n-1))]];
(* Crossed Casimir: arbitrary hypergeometric coefficient j, plus endpoints. *)
r1=j(2h+j-1)/(h+j-1)^2;
r2=j(j-1)(2h+j-1)(2h+j-2)/((h+j-1)^2(h+j-2)^2);
rm=(h-1)^2(2h+j-2)(2h+j-1)/((h+j-1)^2(2h-2)(2h-1));
rp=j(j-1)(2h)(2h+1)/(h^2(h+j-1)^2);
ba=(del-h)^2;bb=(mu-h(h-1))/2;
bc=h^2(del+h-1)^2/(4(2h-1)(2h+1));
put["crossed_block_arbitrary_j",Factor[(h+j-del)^2+
 r1(-2(h+j-1)(h+j-1-del)-del)+r2(h+j-2)^2-ba rm-bb r1-bc rp]];
put["crossed_block_j0",Factor[(h-del)^2-ba]];
put["crossed_block_j1",Factor[h/2(h+1-del)^2-2h(h-del)-del-ba(h-1)/2-bb]];
a[k_]:=(k+1)(del+k)(2del+k-1)/(2(2del+2k-1));
c[k_]:=k(del+k-1)(2del+k-2)/(2(2del+2k-1));
b[k_]:=-a[k]-c[k];
put["weighted_block_middle",Factor[b[k]-(mu-(del+k)(del+k-1))/2]];
put["weighted_block_upper",FullSimplify[FunctionExpand[
 (k+1)^2 (Pochhammer[del,k+1]^2/((k+1)!Pochhammer[2del+k,k+1]))/
 (Pochhammer[del,k]^2/(k!Pochhammer[2del+k-1,k]))-a[k]],
 del>1&&Element[k,Integers]&&k>=0]];
put["weighted_block_lower",Factor[
 (del+k-1)^2(2del+k-2)^2/(4(2del+2k-3)(2del+2k-1))
 /a[k-1] k^2-c[k]]];
put["radial_endpoint",c[0]];
xd[n_]:=u[n](2(del+n)-2)/(2(del+n)-1);
src0=4(cc-mu)(2cc+mu)/(2h-1)/.h->del+n;
src1=4h(n+1)(2del+n-1)(2h^2-mu)/((2h-1)(2h+1))/.h->del+n;
put["crossed_diagonal_all_n",Factor[
 2a[n]u[n]+2c[n]u[n-1]+(2b[n]-2)xd[n]-src0]];
put["crossed_adjacent_all_n",Factor[a[n+1]u[n]+c[n+1]xd[n]+
 a[n]xd[n+1]+c[n]u[n-1]+(b[n+1]+b[n]-2)u[n]-src1]];
put["crossed_arbitrary_gap_ge_2",Factor[
 (a[n+s]+b[n+s]+c[n+s])u[n]+a[n]u[n+1]+b[n]u[n]+c[n]u[n-1]-2u[n]]];
(* A homogeneous solution alone shows why the high-spin boundary condition
   cannot be replaced by recurrence residuals. *)
cas[k_]:=(del+k)(del+k-1);
hom[k_,l_]:=cas[k]+cas[l]-mu;
put["nonuniqueness_without_tail",Factor[a[k]hom[k+1,l]+b[k]hom[k,l]+
 c[k]hom[k-1,l]+a[l]hom[k,l+1]+b[l]hom[k,l]+c[l]hom[k,l-1]-2hom[k,l]]];
(* Uniqueness after prescribing every |k-l|>=3 coefficient. *)
xx[0]=x0; yy[0]=y0; xx[-1]=0; yy[-1]=0;
Do[xx[j+1]=Factor[-c[j+3]xx[j]/a[j]];
 yy[j+1]=Factor[-(c[j+2]yy[j]+(b[j+2]+b[j]-2)xx[j])/a[j]],{j,0,1}];
zz[j_]:=Factor[(a[j]yy[j]+c[j]yy[j-1])/(1-b[j])];
eq=Table[Factor[a[j+1]xx[j]+c[j]xx[j-1]+a[j]zz[j+1]+
 c[j+1]zz[j]+(b[j+1]+b[j]-2)yy[j]],{j,0,1}];
mat=Table[Factor[Coefficient[eq[[j]],v]],{j,2},{v,{y0,x0}}];
det=Factor[Det[mat]];
detExpected=960(del+1)^2(3del^5+24del^4+63del^3+68del^2+33del+6)/
 (del(2del+3)(2del+5)(3del+2)(5del+4));
put["uniqueness_determinant",Factor[det-detExpected]];
positive=TrueQ[FullSimplify[det>0,del>1]];
put["ground_channel_sum",Factor[(xd[0]+(gs0/.h->del))-
 2del^2(7+2del-8del^2)/((2del-1)(2del+1))]];
put["first_excited_channel_sum",Factor[(xd[1]+(gs0/.h->del+1))+
 2del^2(8del^2+46del+47)/((2del+1)(2del+3))]];
put["removable_scalar_limit",Limit[xd[0]+(gs0/.h->del),del->3/2]+9/2];
report=<|"engine"->$Version,"assumptions"->
 "Delta>1; integer n>=0; rational identities at arbitrary indices; continuous removable limits. High-spin inversion and branch selection are stated analytic inputs, not machine-proved here.",
 "residualCount"->Length[checks],"residuals"->Map[ToString[#,InputForm]&,checks],
 "determinantPositive"->positive,"allPassed"->(AllTrue[Values[checks],SameQ[#,0]&]&&positive)|>;
Export[FileNameJoin[{auditDir,"ofpt_all_index_results.json"}],report,"RawJSON"];
Print[KeyTake[report,{"residualCount","determinantPositive","allPassed"}]];
If[!TrueQ[report["allPassed"]],Print[Select[checks,!SameQ[#,0]&]];Exit[1]];
