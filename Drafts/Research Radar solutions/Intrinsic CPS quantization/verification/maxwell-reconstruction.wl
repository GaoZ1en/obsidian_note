ClearAll["Global`*"];

e=D[a1[t,x],t]-D[a0[t,x],x];
lag=e^2/(2gc^2);
var=Expand[Coefficient[Expand[(lag/.{a1->Function[{tt,xx},a1[tt,xx]+eps h1[tt,xx]],a0->Function[{tt,xx},a0[tt,xx]+eps h0[tt,xx]]})],eps,1]];
ee0=D[e,x]/gc^2;ee1=-D[e,t]/gc^2;
boundary=D[e h1[t,x]/gc^2,t]-D[e h0[t,x]/gc^2,x];
eul=Simplify[var-ee0 h0[t,x]-ee1 h1[t,x]-boundary];
gauge=Expand[(e/.{a1->Function[{tt,xx},a1[tt,xx]+D[alpha[tt,xx],xx]],a0->Function[{tt,xx},a0[tt,xx]+D[alpha[tt,xx],tt]]})-e];
poisson[f_,g_]:=D[f,th]D[g,pp]-D[f,pp]D[g,th];
<|"Maxwell_Euler_Lagrange_residual"->eul,"gauge_invariance_F"->gauge,"brackets_c_p"->poisson[Cos[th],pp],"brackets_s_p"->poisson[Sin[th],pp],"circle_relation_tangent"->Simplify[poisson[Cos[th]^2+Sin[th]^2,pp]],"holonomy_velocity"->poisson[th,Pi gc^2 pp^2],"energy_velocity"->poisson[pp,Pi gc^2 pp^2]|>

