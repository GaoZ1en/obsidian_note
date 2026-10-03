Clear[t,x,e,lam,phi,aa,bb,m];
cov[v_,a_,b_]:=(-D[v,{t,2}]-D[v,{x,2}]+2 I e(a D[v,t]+b D[v,x])+I e(D[a,t]+D[b,x])v+e^2(a^2+b^2)v+m^2 v);
phase=Exp[I e lam[t,x]];
FullSimplify[cov[phase phi[t,x],aa[t,x]+D[lam[t,x],t],bb[t,x]+D[lam[t,x],x]]-phase cov[phi[t,x],aa[t,x],bb[t,x]]]
