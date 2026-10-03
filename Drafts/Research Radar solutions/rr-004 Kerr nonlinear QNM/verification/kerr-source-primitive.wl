
de=r^2-2r+a^2;gg=r+I a z;gb=r-I a z;si=Sqrt[1-z^2];sigm=gg gb;kk=(r^2+a^2)w-a mm;
hs={h0,h1,h2,h3,h4,h5,h6,h7};sj={s0,s1,s2,s3,s4};
gd=(I kk+4(r-1))/de;
dr[f_]:=D[f,r]+Sum[D[f,hs[[j+1]]](hs[[j+2]]-gd hs[[j+1]]),{j,0,6}];
dz[f_]:=D[f,z]+Sum[D[f,sj[[j+1]]]sj[[j+2]],{j,0,3}];
ld[n_,f_]:=-si dz[f]+(a w si-mm/si+n z/si)f;
nd[n_,f_]:=-de/(2sigm)(dr[f]+I n kk/de f);
delop[n_,f_]:=(-si dz[f]+n(a w si-mm/si)f)/(Sqrt[2]gg);
bet=z/(2Sqrt[2]gg si);betb=z/(2Sqrt[2]gb si);
pi0=I a si/(Sqrt[2]gb^2);pib=-I a si/(Sqrt[2]gg^2);
tau=-I a si/(Sqrt[2]sigm);taub=-tau;
mu=-de/(2sigm gb);mub=-de/(2sigm gg);
gam=mu+(r-1)/(2sigm);gamb=mub+(r-1)/(2sigm);
alphab=pib-bet;
hll=Factor[gg^2/2(ld[1,ld[2,h0 s0]]+2I a si/gg ld[2,h0 s0])];
hmm=Factor[de^2 gg^2/(4gb^2)(h2-2h1/gg)s0];
hlm=Factor[-de gg^2/(2Sqrt[2]gb)(2a^2 si z/sigm h1 s0+(h1-2r h0/sigm)ld[2,s0])];
er=Factor[-nd[1,hll]+(2gamb+mu/2-mub)hll-(delop[1,hlm]+(2bet-pib+2tau)hlm)/2];
alpha1=Factor[-(delop[1,hmm]+(-2alphab+pib+tau)hmm)/4-(nd[1,hlm]+(4gam-2gamb+mub-2mu)hlm)/4];
pi1=Factor[-(nd[1,hlm]+(-2gamb+mub)hlm)/2-tau hmm/2];
lam=Factor[de^3/(16gb^4)(sigm h3-2r h2+2h1)s0];
psi4=de^4/(32gb^4)h4 s0;
psi3=Factor[de^3/(16Sqrt[2]gb^3)(-ld[2,(h3-3h2/gb+6h1/gb^2-6h0/gb^3)s0]+3I a si/gb (h3-3h2/gb+6h1/gb^2-6h0/gb^3)s0+6I a si/gb^2(h2-4h1/gb+6h0/gb^2)s0)];
psi2=Factor[de^2/(16gb^4)(gb^2(h2-4h1/gb+6h0/gb^2)ld[1,ld[2,s0]]-4I a si gb(h2-3h1/gb+3h0/gb^2)ld[2,s0]-6a^2 si^2(h2-2h1/gb)s0)];
inside=Factor[hll nd[1,psi4]/2-er psi4-hlm nd[1,psi3]+hmm delop[1,psi3]/2+(2alpha1+4pi1)psi3-3lam psi2];
srcPrimitive=Factor[nd[2,inside]+(4mu+mub+3gam-gamb)inside];

