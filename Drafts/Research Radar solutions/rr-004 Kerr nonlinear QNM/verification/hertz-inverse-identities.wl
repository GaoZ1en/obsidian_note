ClearAll["Global`*"];

rp=1+b;rm=1-b;de=(r-rp)(r-rm);sig=(2rp om-am)/(2b);kk=(r^2+1-b^2)om-am;gd=(I kk+4(r-1))/de;
logq=I om r+(2+I sig)Log[r-rp]+(2+I(2om-sig))Log[r-rm];
lp=I om r+(-3+2I om+I sig)Log[r-rm]+(-2-I sig)Log[r-rp];
lq=I om r+(1+2I om+I sig)Log[r-rm]+(2-I sig)Log[r-rp];
lz=2I om r+(-1+4I om)Log[r-rm];
dd[f_]:=D[f,r]+D[f,j0](-zz[r]ddf[r])+D[f,j1](-j0)+D[f,j2](-2j1)+D[f,j3](-3j2);
<|"integrating_factor_log_derivative"->Factor[D[logq,r]-gd],"q_parent_prefactor_log_minus_Z"->Simplify[logq+lp-lz],"q_Delta_minus4_daughter_log_minus_Z"->Simplify[logq-4(Log[r-rp]+Log[r-rm])+lq-lz],"fourth_derivative_integral_residual"->Simplify[Nest[dd,32j3/6,4]-32zz[r]ddf[r]],"outgoing_Hertz_to_curvature_amplitude"->Simplify[32/(2I om)^4]|>

