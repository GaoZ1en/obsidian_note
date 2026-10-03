Clear[b,q,om,r,x,sep];
rp=1+b; rm=1-b; dd=2b; aa2=1-b^2;
sg=(2 om rp-q)/dd;
be=-1+2 I om+I sg; ga=-I sg;
del=(r-rp)(r-rm); kk=(r^2+aa2)om-q;
pot=kk^2/del-aa2 om^2+2 q om-sep;
rho=I om+be/(r-rm)+ga/(r-rp);
xp=dd/(r-rm)^2;
coefA=Factor[del xp^2/.r->(rp-rm x)/(1-x)];
coefB=Factor[(2 del rho xp+del D[xp,r]+D[del,r]xp)/.r->(rp-rm x)/(1-x)];
coefC=Factor[(del(rho^2+D[rho,r])+D[del,r]rho+pot)/.r->(rp-rm x)/(1-x)];
<|"second_derivative"->Collect[coefA,x,Simplify],"first_derivative"->Collect[coefB,x,Simplify],"zeroth_order"->Collect[coefC,x,Simplify]|>
