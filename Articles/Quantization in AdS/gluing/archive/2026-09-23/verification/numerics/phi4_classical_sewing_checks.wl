ClearAll["Global`*"];
checks=<||>; record[name_,expr_]:=AssociateTo[checks,name->TrueQ[expr]];
tr[e_]:=Expand[Sum[Coefficient[Expand[e],lam,k]lam^k,{k,0,2}]];

(* Regional action, positive outward derivative Pi, and the force. *)
lag=(ft^2-fy^2-mm^2 ff^2)/2-lam hh ff^4/24;
record["canonical momentum",D[lag,ft]===ft];
record["outward action coefficient is minus Pi",D[lag,fy]===-fy];
record["quartic force normalization",Expand[-D[lag,ff]-mm^2 ff-lam hh ff^3/6]===0];
record["linearized potential",Expand[D[mm^2 ff+lam hh ff^3/6,ff]-mm^2-lam hh ff^2/2]===0];
cube=Expand[(f0+lam f1+lam^2 f2)^3];
record["first two nonlinear source coefficients",{Coefficient[cube,lam,0],Coefficient[cube,lam,1]}==={f0^3,3 f0^2 f1}];
record["second field coefficient has positive one twelfth",-1/2*(-1/6)===1/12];
record["linear response background through lambda squared",
 tr[lam hh (f0+lam f1+lam^2 f2)^2/2]===lam hh f0^2/2+lam^2 hh f0 f1];

(* Free regional kernels and the actual mismatch section. *)
clean[e_]:=FullSimplify[TrigToExp[e]]===0;
g[len_,x_,y_]:=Sinh[kap x] Sinh[kap(len-y)]/(kap Sinh[kap len]);
hl[x_]:=Sinh[kap x]/Sinh[kap al];
hr[x_]:=Sinh[kap(al+be-x)]/Sinh[kap be];
d1=kap Coth[kap al]; d2=kap Coth[kap be]; kk=1/(d1+d2);
record["released left block",clean[g[al,xx,yy]+hl[xx]kk hl[yy]-g[al+be,xx,yy]]];
record["released right block",clean[g[be,al+be-yy,al+be-xx]+hr[xx]kk hr[yy]-g[al+be,xx,yy]]];
record["released crossing block",clean[hl[xx]kk hr[yy]-g[al+be,xx,yy]]];
record["released history inverse",clean[kk-g[al+be,al,al]]];
lift1=hl[xx]kk(d2 cc+pp); lift2=hr[xx]kk(-d1 cc+pp);
record["mismatch section value",clean[(lift1/.xx->al)-(lift2/.xx->al)-cc]];
record["mismatch section oriented derivative",clean[(D[lift1,xx]/.xx->al)-(D[lift2,xx]/.xx->al)-pp]];
record["crossing outward derivatives",clean[(D[g[al,xx,yy]+hl[xx]kk hl[yy],yy]/.yy->al)-(D[hl[xx]kk hr[yy],yy]/.yy->al)]];

(* Exact ordered-word inverse: no commutativity of time-response operators. *)
mul[a_,b_]:=Flatten[Table[{x[[1]] y[[1]],Join[x[[2]],y[[2]]]},{x,a},{y,b}],1];
norm[a_]:=Select[({Total[#[[All,1]]],#[[1,2]]}& /@ GatherBy[a,Last]),First[#]=!=0&];
invTerms={{1,{gg}},{-lam,{gg,aa,gg}},{lam^2,{gg,aa,gg,aa,gg}},{-lam^2,{gg,bb,gg}}};
facTerms={{1,{}},{lam,{gg,aa}},{lam^2,{gg,bb}}};
wordResidual=norm[Join[({tr[#[[1]]],#[[2]]}& /@ mul[facTerms,invTerms]),{{-1,{gg}}}]];
record["noncommuting causal response inverse through second order",wordResidual==={}];
invH={{1,{hh0}},{-lam,{gg,aa,hh0}},{lam^2,{gg,aa,gg,aa,hh0}},{-lam^2,{gg,bb,hh0}}};
record["noncommuting history response inverse through second order",
 norm[Join[({tr[#[[1]]],#[[2]]}& /@ mul[facTerms,invH]),{{-1,{hh0}}}]]==={}];

(* Both bracket slots and the {Phi1,Phi1} contribution. *)
vrs={fx,fy,fz,fu};
ep[i_,j_]:=Which[i<j,es[i,j],i>j,-es[j,i],True,0];
pbe[f_,g_]:=Expand[Sum[D[f,vrs[[i]]]ep[i,j]D[g,vrs[[j]]],{i,4},{j,4}]];
ax=-rxz hz fz^3/6; ay=-ryu hu fu^3/6;
bx=rxz hz rzu hu fz^2 fu^3/12; by=ryz hz rzu hu fz^2 fu^3/12;
bOne=-rxz hz fz^2 ep[3,2]/2-ryu hu fu^2 ep[1,4]/2;
bTwo=hz hu rzu/12 (rxz(2 fz fu^3 ep[3,2]+3 fz^2 fu^2 ep[4,2])+
 ryz(2 fz fu^3 ep[1,3]+3 fz^2 fu^2 ep[1,4]))+
 hz hu rxz ryu fz^2 fu^2 ep[3,4]/4;
record["first field Poisson coefficient",Expand[pbe[ax,fy]+pbe[fx,ay]-bOne]===0];
record["complete second field Poisson coefficient",Expand[pbe[bx,fy]+pbe[fx,by]+pbe[ax,ay]-bTwo]===0];
record["mixed first order term cannot be dropped",pbe[ax,ay]=!=0];

(* Independent finite canonical diagnostic for the ordered Lie series. *)
pb[f_,g_]:=Expand[D[f,q]D[g,p]-D[f,p]D[g,q]];
vv[s_]:=(q+s p)^4/24;
rOne[f_]:=Integrate[pb[f,vv[ss]],{ss,0,tt}];
rTwo[f_]:=Integrate[Integrate[pb[pb[f,vv[ss]],vv[uu]],{uu,0,ss}],{ss,0,tt}];
evolve[f_]:=tr[f+lam rOne[f]+lam^2 rTwo[f]];
tf=evolve[q]; tg=evolve[p];
record["ordered Lie evolution preserves the canonical bracket",tr[pb[tf,tg]-1]===0];
record["ordered Lie evolution preserves polynomial multiplication",
 tr[evolve[q p]-tf tg]===0];
field=evolve[q+tt p]; momentum=evolve[p];
record["finite time field equation first derivative",tr[D[field,tt]-momentum]===0];
record["finite time quartic force through lambda squared",tr[D[momentum,tt]+lam field^3/6]===0];
record["constant coupling total energy through lambda squared",
 tr[evolve[p^2/2+lam vv[tt]]-p^2/2-lam q^4/24]===0];

(* Actual local classical balance, with h time independent. *)
potential=mm^2 phi[t,x]^2/2+lam h[x] phi[t,x]^4/24+ez;
ee=(D[phi[t,x],t]^2+D[phi[t,x],x]^2)/2+potential;
jj=-D[phi[t,x],t]D[phi[t,x],x];
pressure=(D[phi[t,x],t]^2+D[phi[t,x],x]^2)/2-potential;
eq=Derivative[2,0][phi][t,x]->Derivative[0,2][phi][t,x]-mm^2 phi[t,x]-lam h[x] phi[t,x]^3/6;
record["continuum local energy conservation",Expand[(D[ee,t]+D[jj,x])/.eq]===0];
record["continuum momentum work with spatial coupling gradient",
 Expand[(D[jj,t]+D[pressure,x]+lam h'[x] phi[t,x]^4/24)/.eq]===0];
record["opposite outward powers",Expand[qdot pi1+qdot pi2/.pi2->-pi1]===0];

result=<|"allChecksPassed"->And@@Values[checks],"checkCount"->Length[checks],"checks"->checks,
 "scope"->"Exact free regional response, right inverse, noncommuting response series, first/second field-bracket coefficients, local classical energy identities; a finite canonical diagnostic checks time ordering. Formal kernel/image and global comparison are proved in the note, not inferred from the finite diagnostic."|>;
Export[FileNameJoin[{DirectoryName[$InputFileName],"phi4_classical_sewing_results.json"}],result,"RawJSON"];
result
