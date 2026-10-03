ClearAll["Global`*"];

ss=1-z^2;sig=r^2+a^2 z^2;
g={{-(1-2r/sig),1,0,-2a r ss/sig},{1,0,0,-a ss},{0,0,sig/ss,0},{-2a r ss/sig,-a ss,0,(r^2+a^2+2a^2 r ss/sig)ss}};
jac={{1,0,0,-I a},{0,0,1,0},{0,0,0,1},{0,1,0,-I/ss}};
ng=Map[Factor,Transpose[jac].g.jac,{2}];
nc={1,0,0,-a ss};mc={-I a ss,0,-sig,I(r^2+a^2)ss};
<|"adapted_metric_YY"->ng[[3;;4,3;;4]],"adapted_metric_XY"->ng[[1;;2,3;;4]],"cross_determinant"->Factor[Det[ng[[1;;2,3;;4]]]],"adapted_null_covectors"->{nc.jac,mc.jac}//Simplify|>

