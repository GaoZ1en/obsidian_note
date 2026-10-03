Clear[b,a,w,m,r,z,cx,az,bc,gc];
rp=1+b;rm=1-b;de=(r-rp)(r-rm);a2=1-b^2;
sg=(2 w rp-a m)/(2b);be=-1+2 I w+I sg;ga=-I sg;
hp=(r^2+a2-4rp)/de;kp=-a/de;
gtt=-(r^2+a2)^2/de+a2(1-cx);
gtphi=-2a r/de;
newtt=Factor[gtt+hp^2 de];
newtp=Factor[gtphi+hp kp de];
checks=<|
"hyperboloidal_horizon_exponent"->Simplify[ga+I w rp/b-I m a/(2b)],
"hyperboloidal_inner_factor_exponent"->Simplify[be-I w(2+rp/b)+I m a/(2b)+1],
"regular_inverse_metric_tt"->Simplify[newtt-(-8rp(r+rp)/(r-rm)+a2(1-cx))],
"regular_inverse_metric_tphi"->Simplify[newtp+a(r+rp+2)/(r-rm)],
"Tricomi_power_matching"->Simplify[(2gc+z+az)+(2bc-z-1)+1-(2gc+2bc+az)]
|>;checks
