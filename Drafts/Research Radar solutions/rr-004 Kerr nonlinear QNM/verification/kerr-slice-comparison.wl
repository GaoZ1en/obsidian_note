Clear[M,a,r,th,om,mm,h,k,dd,ww,ff,ss,AA,ep];
del=r^2-2 M r+a^2; sig=r^2+a^2 Cos[th]^2;
g={{-(1-2 M r/sig),0,0,-2 M a r Sin[th]^2/sig},{0,sig/del,0,0},{0,0,sig,0},{-2 M a r Sin[th]^2/sig,0,0,(r^2+a^2+2 M a^2 r Sin[th]^2/sig)Sin[th]^2}};
gi=Simplify[Inverse[g]];
bt=-I sig Sin[th] (2 om gi[[1,1]]-2 mm gi[[1,4]]);
expect=2 I Sin[th] (((r^2+a^2)^2 om-2 M a r mm)/del-a^2 om Sin[th]^2);
vp=D[(((r^2+a^2)om-a mm)^2/del-a^2 om^2+2 a mm om-AA[om]),om];
angular=2 I (((r^2+a^2)^2 om-2 M a r mm)/del-a^2 om(1-ss));
azimuth=Simplify[Exp[-I om (ep+h)+I mm (ff+k)]/Exp[-I om ep+I mm ff]];
Ader=-2 a^2 om ss;
<|"Kerr_inverse_pairing_density"->Simplify[bt-expect],
"Kerr_metric_determinant"->Simplify[Det[g]+sig^2 Sin[th]^2],
"angular_reduction_to_frequency_derivative"->Simplify[angular-I (vp/.AA'[om]->Ader)],
"hyperboloidal_mode_factor"->Simplify[azimuth-Exp[-I om h+I mm k]],
"offdiagonal_endpoint_identity"->Simplify[Exp[I dd h[r]](ww'[r]/(I dd)+h'[r]ww[r])-ww'[r]/(I dd)-D[(Exp[I dd h[r]]-1)ww[r]/(I dd),r]]
|>
