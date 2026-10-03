ClearAll["Global\`*"];
rp=1+b;rm=1-b;del=(r-rp)(r-rm);asp2=1-b^2;kk=(r^2+asp2)w-q;
sig=(2w rp-q)/(2b);
be=-1-sp+2I w+I sig;ga=-sp-I sig;
rho=I w+be/(r-rm)+ga/(r-rp);xp=2b/(r-rm)^2;
pot=(kk^2-2I sp(r-1)kk)/del+4I sp w r-asp2 w^2+2q w-sep;
ca=Factor[del xp^2/.r->(rp-rm x)/(1-x)];
cb=Factor[(2del rho xp+del D[xp,r]+(sp+1)D[del,r]xp)/.r->(rp-rm x)/(1-x)];
cc=Factor[(del(rho^2+D[rho,r])+(sp+1)D[del,r]rho+pot)/.r->(rp-rm x)/(1-x)];
<|"A"->Factor[ca],"B"->Collect[Cancel[cb],x,Factor],"C"->Collect[Cancel[cc],x,Factor]|>
