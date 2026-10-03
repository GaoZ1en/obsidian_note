
ClearAll["Global\`*"];
de=r(r-2);
p1=-13r^10 w^6-34I r^9 w^5+r^8(35+269I w)w^4+r^7(131I w+99)I w^3+r^6(865w^2-949I w+44)w^2+r^5(1249w^2+530I w-35)I w+r^4(-53w^2-196I w+557)I w+r^3(2144w^2-1540I w+120)+r^2(-1380w^2+930I w-564)+r(816+408I w)-168I w-336;
p2=32I r^8 w^5-78r^7 w^4-r^6(424I w+130)I w^3+r^5(154+582I w)w^2+r^4(-968w^2+1227I w+42)I w-r^3(2320I w+300)I w+r^2(-936w^2+1291I w+48)-r(192+2352I w)+1152I w+192;
p3=19r^8 w^4+50I r^7 w^3-r^6(86+143I w)w^2-r^5(339I w+91)I w+r^4(-339w^2+538I w+42)-r^3(306+945I w)+r^2(810+447I w)-912r+360;
rh=I w+(-3+4I w)/r+(-2-2I w)/(r-2);
xp=2/r^2;
coeff={r^2 p1+r^2 de p2 rh+de^2 p3 rh^2,r^2 de p2 xp+2de^2 p3 rh xp,de^2 p3 xp^2};
ff=Map[Factor[(#/(r^7(r-2)^6))/.r->2/(1-x)]&,coeff];
leading=Map[Limit[x^6#,x->0]&,ff];
ffs=ff;
sp=2;q=0;b=1;sep=0;
b0=(b-2I w-2I b w+I q)/b-sp;
b1=2I(2w+2b^2 w+b(2I+4w)-q)/b;
b2=-I(2w+b(3I+6w)-q)/b+sp;
c0=-1+15w^2+b^2 w^2+2b w(I+4w)+(I+4w)(2w-q)/b-2w(-2I+q)-sep-sp;
c1=-(I+4w)(2w+b(I+2w)-q)/b+sp(1-4I w);
aa={1,-c0/b0};Do[AppendTo[aa,(-(-2n(n-1)+b1 n+c0)aa[[n+1]]-((n-1)(n-2)+b2(n-1)+c1)aa[[n]])/((n+1)(n+b0))],{n,1,5}];
pol=Sum[aa[[n+1]]x^n,{n,0,6}];

num=Expand[x^5(ff[[1]]pol^2+ff[[2]]pol D[pol,x]+ff[[3]]D[pol,x]^2)];
res=Table[Factor[Coefficient[num,x,k]],{k,0,4}];
<|"negative_laurent_coefficients_generic_omega"->res,"rational_source_F_coefficients"->ff|>

