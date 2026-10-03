ClearAll["Global`*"];

gg=r+I a z;gb=r-I a z;sig=gg gb;
cp=gg/gb^2 cf[r];
d1[f_]:=D[f,r]+(2/gb-1/gg)f;
d2[f_]:=D[f,r]+(6/gb-1/gg)f;
cgeneral=gg/gb^2(c0+c1/gb^3);
bres=1/(sig gb^2);ares=1/sig;
<|"C_reduced_equation"->Factor[d2[d1[cp]]/(gg/gb^2)],"C_kernel_residual"->Factor[d2[d1[cgeneral]]],"B_kernel_residual"->Factor[D[bres,r]+(2r/sig+2/gb)bres],"A_kernel_residual"->Factor[D[ares,r]+2r/sig ares]|>
