
sch[z_] := D[z,{x,3}]/D[z,x]-3/2 (D[z,{x,2}]/D[z,x])^2;
bf=c al^2/24 f'[x]^2-c/12 sch[f[x]];
uu=al f[x]+Log[f'[x]];
duv=al v[x]+v'[x]/f'[x]; duw=al w[x]+w'[x]/f'[x];
omf=c al^2/24(v'[x] w[x]-w'[x] v[x])-c/24((v'[x]/f'[x]) D[w'[x]/f'[x],x]-(w'[x]/f'[x]) D[v'[x]/f'[x],x]);
omu=-c/24(duv D[duw,x]-duw D[duv,x]);
yp=Exp[al f[x]/2]/Sqrt[f'[x]];
ym=Exp[-al f[x]/2]/Sqrt[f'[x]];
delta= D[(bf/.f->Function[z,f[z]+t v[z]]),t]/.t->0;
eps=v[x]/f'[x];
g1=Exp[I m x];g2=Exp[-I m x];
results=<|
"Miura_stress"->FullSimplify[bf-(c/24 D[uu,x]^2-c/12 D[uu,{x,2}])],
"Darboux_twoform_up_to_periodic_derivative"->FullSimplify[omu-omf+c al/24 D[(v[x] w'[x]-w[x] v'[x])/f'[x],x]],
"coadjoint_tangent"->FullSimplify[delta-(eps D[bf,x]+2 D[eps,x] bf-c/12 D[eps,{x,3}])],
"Hill_plus"->FullSimplify[D[yp,{x,2}]-6 bf yp/c,Assumptions->f'[x]>0],
"Hill_minus"->FullSimplify[D[ym,{x,2}]-6 bf ym/c,Assumptions->f'[x]>0],
"Hill_Wronskian"->FullSimplify[yp D[ym,x]-D[yp,x]ym+al,Assumptions->f'[x]>0],
"constant_orbit_Fourier_pair"->FullSimplify[(omf/.{f->Function[z,z],v->Function[z,Exp[I m z]],w->Function[z,Exp[-I m z]]})-I c m(m^2+al^2)/12],
"Darboux_Fourier_sign"->FullSimplify[-c/24(g1 D[g2,x]-g2 D[g1,x])-I c m/12],
"Virasoro_cocycle_Jacobi"->Expand[(m-n)(m+n)^3+(n-k)(n+k)^3+(k-m)(k+m)^3/.k->-m-n],
"Schwarzian_exponential"->FullSimplify[sch[Exp[al f[x]]]-sch[f[x]]+al^2 f'[x]^2/2]
|>;
{results,And@@(#===0&/@Values[results])}
