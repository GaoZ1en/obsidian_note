ClearAll["Global`*"];

aa1=-45 h0^2 gg/(2 gb^7)+3(15gg-gb)h0 h1/gb^6+3(gb-15gg)h1^2/(2gb^5)+(3gb-42gg)h0 h2/(2gb^5)+6h0 gg h3/gb^4+3(7gg-gb)h1 h2/gb^4+3(2gb-13gg)h2^2/(8gb^3)+(gb-12gg)h1 h3/(2gb^3)-(7gg+4r)h0 h4/(8gb^3)+(11gg-gb)h2 h3/(4gb^2)+(4gg+r)h1 h4/(4gb^2)+r h0 h5/(4gb^2)-3gg h3^2/(8gb)-gg h2 h4/(2gb)-gg h1 h5/(8gb);
aa2=-3h0 h1/gb^5+3r h0 h2/gb^5+3h1^2/gb^4+3r h2^2/(2gb^3)-3(2r+gb)h1 h2/(2gb^4)-3h0 gg h3/(2gb^4)+(r+gg)h1 h3/gb^3+(3gg-gb)h0 h4/(4gb^3)-(2r+3gg)h2 h3/(4gb^2)+(gb-6gg)h1 h4/(8gb^2)+(gb-2gg)h0 h5/(8gb^2)+gg h3^2/(4gb)+7gg h2 h4/(16gb)+gg h1 h5/(4gb)+h0 gg h6/(16gb);
aa3=5(2gb-3gg)h0 h1/gb^7+(15gg-11gb)h1^2/gb^6+5(2gg-gb)h0 h2/gb^6+(23gb-34gg)h1 h2/(2gb^5)+(gb-6gg)h0 h3/(2gb^5)+3(3gg-2gb)h2^2/(2gb^4)+(15gg-8gb)h1 h3/(3gb^4)+(2r+gg)h0 h4/(6gb^4)+(16gb-29gg)h2 h3/(12gb^3)+(4gb-21gg)h1 h4/(24gb^3)-(3gb+2r)h0 h5/(24gb^3)+(3gg-4gb)h3^2/(12gb^2)+(8gg-gb)h2 h4/(24gb^2)+r h1 h5/(6gb^2)+h0 h6/(24gb);
aa4=(45gg-60gb)h1^2/(2gb^7)+(42gb-30gg)h1 h2/gb^6+9(2gg-3gb)h2^2/(2gb^5)+9(2gg-3gb)h1 h3/(2gb^5)+3(5gb-3gg)h2 h3/(2gb^4)+(5gb-3gg)h1 h4/(2gb^4)+3(gg-2gb)h3^2/(8gb^3)+(gg-2gb)h2 h4/(2gb^3)+(gg-2gb)h1 h5/(8gb^3);
hvars={h0,h1,h2,h3,h4,h5,h6};yvars={y1,y2,y3,y4};
sourceRules=CoefficientRules[Expand[({aa1,aa2,aa3,aa4}.yvars)/.{gg->2r-1/zz,gb->1/zz}],Join[hvars,yvars,{r,zz}]];
de=r(r-2);
p1=-13r^10 w^6-34I r^9 w^5+r^8(35+269I w)w^4+r^7(131I w+99)I w^3+r^6(865w^2-949I w+44)w^2+r^5(1249w^2+530I w-35)I w+r^4(-53w^2-196I w+557)I w+r^3(2144w^2-1540I w+120)+r^2(-1380w^2+930I w-564)+r(816+408I w)-168I w-336;
p2=32I r^8 w^5-78r^7 w^4-r^6(424I w+130)I w^3+r^5(154+582I w)w^2+r^4(-968w^2+1227I w+42)I w-r^3(2320I w+300)I w+r^2(-936w^2+1291I w+48)-r(192+2352I w)+1152I w+192;
p3=19r^8 w^4+50I r^7 w^3-r^6(86+143I w)w^2-r^5(339I w+91)I w+r^4(-339w^2+538I w+42)-r^3(306+945I w)+r^2(810+447I w)-912r+360;

sp=2;kk=r^2 w;pot=(kk^2-2I sp(r-1)kk)/de+4I sp w r;
pEq=3D[de,r]/de;qEq=pot/de;gd=(I kk+4(r-1))/de;
pairNext[{u_,v_}]:={Factor[D[u,r]+gd u-v qEq],Factor[u+D[v,r]+gd v-v pEq]};
pairs=NestList[pairNext,{1,0},6];
sy=Sqrt[5/(4Pi)]((1+z)/2)^2;
hy=Expand[-D[sy,z]-2sy/(1+z)];ll=Expand[-(1-z^2)D[hy,z]+(2z-2)hy];
dy=Sqrt[9/(4Pi)]Sqrt[28](1-z)(1+z)^3/16;
weights=FullSimplify[Integrate[# dy,{z,-1,1}]/Integrate[dy^2,{z,-1,1}]]&/@{(1-z^2)hy^2,sy ll};
expr=-de^6/16 ({aa1,aa2}.weights/.{gg->r,gb->r})/.Thread[hvars->(#[[1]]rv+#[[2]]rpv&/@pairs)];
ref=5/(48Sqrt[7Pi])(r^2 p1 rv^2+r^2 de p2 rv rpv+de^2 p3 rpv^2);
res=Factor/@CoefficientList[Expand[expr-ref],{rv,rpv}];
<|"angular_weights"->weights,"source_residual_coefficients"->res,"universal_terms"->Length[sourceRules]|>

