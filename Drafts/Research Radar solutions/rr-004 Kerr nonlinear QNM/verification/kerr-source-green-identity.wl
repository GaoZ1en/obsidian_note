ClearAll["Global`*"];

de=r^2-2r+a^2;
ww=(u[r]v'[r]-v[r]u'[r])/de;
eqs={u''[r]->(D[de,r]u'[r]-pot[r]u[r])/de,v''[r]->(D[de,r]v'[r]-pot[r]v[r])/de};
wrCheck=Factor[D[ww,r]/.eqs];
yy=(v[r]aa[r]+u[r]bb[r])/wc;
ar=u[r]q[r]/de^2;br=-v[r]q[r]/de^2;
rep={aa''[r]->D[ar,r],bb''[r]->D[br,r],aa'[r]->ar,bb'[r]->br};
res=Factor[(de D[yy,{r,2}]-D[de,r]D[yy,r]+pot[r]yy)/.rep/.eqs/.wc->ww];
Get["/Users/koishi/Documents/Note/Drafts/Research Radar solutions/rr-004 Kerr nonlinear QNM/verification/kerr-source-corrected.wl"];
asympt=Table[Limit[ai/.Thread[hvars->Table[(2I w)^j hh,{j,0,6}]]/.{gg->r+I a z,gb->r-I a z},r->Infinity],{ai,{aa1,aa2,aa3,aa4}}];
<|"weighted_Wronskian_derivative"->wrCheck,"Green_solution_EOM_minus_Q"->Factor[res-q[r]],"leading_A1_A2_A3_A4"->asympt|>

