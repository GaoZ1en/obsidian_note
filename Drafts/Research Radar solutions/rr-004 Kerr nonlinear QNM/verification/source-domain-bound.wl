ClearAll["Global`*"];
ass={u<0,rho>0,kap>0,aa>0,bb<0,pp>=0,Element[{u,rho,kap,aa,bb,pp},Reals]};
expo=ComplexExpand[Re[(-pp-I(aa+I bb))(1+I kap)]];
asym=FullSimplify[expo,ass];
<|"horizon_power_rate"->asym,"integral_rate_with_dr"->asym+1,"double_parent_sigma"->N[2(54482468984058323110283523536127505009/10^38-I 17969453735777360304482262150309705072/10^38),30]|>
