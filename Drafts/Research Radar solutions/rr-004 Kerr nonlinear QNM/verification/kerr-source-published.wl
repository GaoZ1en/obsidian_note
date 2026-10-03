
aa1=-45 h0^2 gg/(2 gb^7)+3(15gg-gb)h0 h1/gb^6+3(gb-15gg)h1^2/(2gb^5)+(3gb-42gg)h0 h2/(2gb^5)+6h0 gg h3/gb^4+3(7gg-gb)h1 h2/gb^4+3(2gb-13gg)h2^2/(8gb^3)+(gb-12gg)h1 h3/(2gb^3)-(7gg+4r)h0 h4/(8gb^3)+(11gg-gb)h2 h3/(4gb^2)+(4gg+r)h1 h4/(4gb^2)+r h0 h5/(4gb^2)-3gg h3^2/(8gb)-gg h2 h4/(2gb)-gg h1 h5/(8gb);
aa2=-3h0 h1/gb^5+3r h0 h2/gb^5+3h1^2/gb^4+3r h2^2/(2gb^3)-3(2r+gb)h1 h2/(2gb^4)-3h0 gg h3/(2gb^4)+(r+gg)h1 h3/gb^3+(3gg-gb)h0 h4/(4gb^3)-(2r+3gg)h2 h3/(4gb^2)+(gb-6gg)h1 h4/(8gb^2)+(gb-2gg)h0 h5/(8gb^2)+gg h3^2/(4gb)+7gg h2 h4/(16gb)+gg h1 h5/(4gb)+h0 gg h6/(16gb);
aa3=5(2gb-3gg)h0 h1/gb^7+(15gg-11gb)h1^2/gb^6+5(2gg-gb)h0 h2/gb^6+(23gb-34gg)h1 h2/(2gb^5)+(gb-6gg)h0 h3/(2gb^5)+3(3gg-2gb)h2^2/(2gb^4)+(15gg-8gb)h1 h3/(3gb^4)+(2r+gg)h0 h4/(6gb^4)+(16gb-29gg)h2 h3/(12gb^3)+(4gb-21gg)h1 h4/(24gb^3)-(3gb+2r)h0 h5/(24gb^3)+(3gg-4gb)h3^2/(12gb^2)+(8gg-gb)h2 h4/(24gb^2)+r h1 h5/(6gb^2)+h0 h6/(24gb);
aa4=(45gg-60gb)h1^2/(2gb^7)+(42gb-30gg)h1 h2/gb^6+9(2gg-3gb)h2^2/(2gb^5)+9(2gg-3gb)h1 h3/(2gb^5)+3(5gb-3gg)h2 h3/(2gb^4)+(5gb-3gg)h1 h4/(2gb^4)+3(gg-2gb)h3^2/(8gb^3)+(gg-2gb)h2 h4/(2gb^3)+(gg-2gb)h1 h5/(8gb^3);
hvars={h0,h1,h2,h3,h4,h5,h6};yvars={y1,y2,y3,y4};
sourceRules=CoefficientRules[Expand[({aa1,aa2,aa3,aa4}.yvars)/.{gg->2r-1/zz,gb->1/zz}],Join[hvars,yvars,{r,zz}]];

