(* Run with wolframscript -file in a fresh kernel. Writes its labelled JSON report beside this script. *)
ClearAll[del,n,h,mu,cc,u,g0,g2,g,x,a,b,c];
u[n_]:=-4(del^2+2n(2del+n-1));
g0[n_]:=With[{h=del+n,mu=del(del-2)},u[n]+2(15(h(h-1))^2-(12+10mu)h(h-1)-mu^2+6mu)/((2h-3)(2h-1)(2h+1))];
g2[n_]:=With[{h=del+n},u[n]+(n+1)(n+2)(2del+n-1)(2del+n)/((2h-1)(2h+1)(2h+3))];
g[n_,s_]:=Switch[s,0,g0[n],2,g2[n],_,u[n]];
auditDir=DirectoryName[$InputFileName];
data=Get[FileNameJoin[{auditDir,"gravity_scalar_primary_spectrum_data.wl"}]];
checks=Association[Table["saved_"<>ToString[row["n"]]<>"_"<>ToString[row["spin"]]->Factor[row["gammaOverG"]-g[row["n"],row["spin"]]],{row,data["primaryShifts"]}]];
AppendTo[checks,"channel_sum"->Factor[g0[n]-(u[n](2(del+n)-2)/(2(del+n)-1)-2(((del+n)(del+n-1))+del(del-2))^2/((2(del+n)-3)(2(del+n)-1)(2(del+n)+1)))]];
AppendTo[checks,"removable_limit"->(Limit[g0[0],del->3/2]+9/2)];
AppendTo[checks,"gauge_exception_finite"->FullSimplify[(g0[0]/.del->(1+Sqrt[5])/2)+1+11Sqrt[5]/5]];
AppendTo[checks,"annihilation_norm"->FullSimplify[Integrate[r/(Pi(1+r^2)^(2h)),{r,0,Infinity},Assumptions->h>1]-1/(2Pi(2h-1)),Assumptions->h>1]];
a[k_]:=(k+1)(del+k)(2del+k-1)/(2(2del+2k-1));
c[k_]:=k(del+k-1)(2del+k-2)/(2(2del+2k-1));
b[k_]:=-a[k]-c[k];
AppendTo[checks,"bulk_crossed_recurrence"->Factor[a[n]u[n+1]+b[n]u[n]+c[n]u[n-1]-2u[n]]];
xdiag[n_]:=u[n](2(del+n)-2)/(2(del+n)-1);
source0=Factor[2a[n]u[n]+2c[n]u[n-1]+(2b[n]-2)xdiag[n]];
source1=Factor[a[n+1]u[n]+c[n+1]xdiag[n]+a[n]xdiag[n+1]+c[n]u[n-1]+(b[n+1]+b[n]-2)u[n]];
source2=Factor[a[n+2]u[n]+c[n+2]u[n]+a[n]u[n+1]+c[n]u[n-1]+(b[n+2]+b[n]-2)u[n]];
AppendTo[checks,"spin_two_source_zero"->source2];
(* Homogeneous difference, symmetric under exchange of the chiral labels,
   vanishing for |k-l| >= 3. No large-n bound is used. *)
Clear[xx,yy,zz];xx[0]=x0;yy[0]=y0;yy[-1]=0;xx[-1]=0;
Do[xx[j+1]=Factor[-c[j+3]xx[j]/a[j]];
 yy[j+1]=Factor[-(c[j+2]yy[j]+(b[j+2]+b[j]-2)xx[j])/a[j]],{j,0,1}];
zz[j_]:=Factor[(a[j]yy[j]+c[j]yy[j-1])/(1-b[j])];
eq=Table[Factor[a[j+1]xx[j]+c[j]xx[j-1]+a[j]zz[j+1]+c[j+1]zz[j]+(b[j+1]+b[j]-2)yy[j]],{j,0,1}];
mat=Table[Factor[Coefficient[eq[[j]],v]],{j,2},{v,{y0,x0}}];
det=Factor[Det[mat]];
claimed=960(del+1)^2(3del^5+24del^4+63del^3+68del^2+33del+6)/(del(2del+3)(2del+5)(3del+2)(5del+4));

AppendTo[checks,"uniqueness_determinant"->Factor[det-claimed]];
AppendTo[checks,"contact_diagonal_source"->Factor[source0-With[{h=del+n,mu=del(del-2)},4(h(h-1)-mu)(2h(h-1)+mu)/(2h-1)]]];
AppendTo[checks,"contact_adjacent_source"->Factor[source1-With[{h=del+n,mu=del(del-2)},4h(n+1)(2del+n-1)(2h^2-mu)/((2h-1)(2h+1))]]];
AppendTo[checks,"zero_level_endpoint"->c[0]];
(* Independent Mathematica verification of the arbitrary hypergeometric
   coefficient identity printed in Appendix B of the imported draft. *)
r1=j(2h+j-1)/(h+j-1)^2;
r2=j(j-1)(2h+j-1)(2h+j-2)/((h+j-1)^2(h+j-2)^2);
rm=(h-1)^2(2h+j-2)(2h+j-1)/((h+j-1)^2(2h-2)(2h-1));
rp=j(j-1)(2h)(2h+1)/(h^2(h+j-1)^2);
ba=(del-h)^2;bb=(del(del-2)-h(h-1))/2;
bc=h^2(del+h-1)^2/(4(2h-1)(2h+1));
AppendTo[checks,"block_arbitrary_j"->Factor[(h+j-del)^2+r1(-2(h+j-1)(h+j-1-del)-del)+r2(h+j-2)^2-ba rm-bb r1-bc rp]];
AppendTo[checks,"block_j0"->Factor[(h-del)^2-ba]];
AppendTo[checks,"block_j1"->Factor[h/2(h+1-del)^2-2h(h-del)-del-ba(h-1)/2-bb]];
AppendTo[checks,"noncircular_AB_target_Delta2"->Factor[((g0[0]-g0[1])/2/.del->2)-488/35]];
AppendTo[checks,"noncircular_BB_target_Delta2"->Factor[((g0[0]+g0[1])/2/.del->2)+176/7]];
positive=TrueQ[FullSimplify[det>0,Assumptions->del>1]];
report=<|"engine"->$Version,"assumptions"->"Delta>1; n>=0 integer; generic rational identities with stated continuous limits", "residualCount"->Length[checks],"residuals"->Map[ToString[#,InputForm]&,checks],"determinantPositive"->positive,"allPassed"->(AllTrue[Values[checks],SameQ[#,0]&]&&positive),"determinant"->ToString[det,InputForm],"matrixColumnOrder"->{"Y0","X0"},"source0"->ToString[source0,InputForm],"source1"->ToString[source1,InputForm]|>;
Export[FileNameJoin[{auditDir,"closed_form_spectrum_audit_results.json"}],report,"RawJSON"];
Print[KeyTake[report,{"residualCount","determinantPositive","allPassed"}]];
If[!TrueQ[report["allPassed"]],Exit[1]];
