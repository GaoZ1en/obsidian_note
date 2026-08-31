DefManifold[SS,2,{a,b,c,d,e,f,g,h}];
DefMetric[1,qq[-a,-b],DD];
DefTensor[HH[-a,-b],SS,Symmetric[{-a,-b}]];
DefTensor[tt[-a],SS]; DefTensor[vv[a],SS];
DefTensor[UU[-a,-b],SS,Symmetric[{-a,-b}]];
DefTensor[ww[-a],SS];
DefTensor[hhp[-a,-b],SS,Symmetric[{-a,-b}]];
DefMetricPerturbation[qq,dq,eps];
connection[a_,b_,c_]:=DD[a][HH[b,c]]+DD[b][HH[a,c]]-DD[c][HH[a,b]];
(* coordinate connection variation, then subtract the frame deformation *)
checks={
 "V65 connection torsion symmetry"->(connection[-a,-b,c]-connection[-b,-a,c]),
 "V65 differentiated metric compatibility"->(2DD[-a][HH[-b,-c]]-qq[-c,d]connection[-a,-b,-d]-qq[-b,d]connection[-a,-c,-d]),
 "V65 covector frame cancellation"->(-connection[-a,-b,c]tt[-c]+DD[-a][HH[-b,c]]tt[-c]-(DD[c][HH[-a,-b]]-DD[-b][HH[-a,c]])tt[-c]),
 "V65 vector frame cancellation"->(connection[-a,-c,b]vv[c]-DD[-a][HH[b,-c]]vv[c]+(DD[b][HH[-a,-c]]-DD[-c][HH[-a,b]])vv[c]),
 "V65 symmetric tensor two index terms"->(-connection[-a,-b,d]UU[-d,-c]-connection[-a,-c,d]UU[-b,-d]+DD[-a][HH[-b,d]]UU[-d,-c]+DD[-a][HH[-c,d]]UU[-b,-d]-(DD[d][HH[-a,-b]]-DD[-b][HH[-a,d]])UU[-d,-c]-(DD[d][HH[-a,-c]]-DD[-c][HH[-a,d]])UU[-b,-d]),
 "V65 lapse correction"->((ww[-a]HH[-b,c]+ww[-b]HH[-a,c]-ww[c]HH[-a,-b])tt[-c]-ww[-a]HH[-b,c]tt[-c]-(ww[-b]HH[-a,c]-ww[c]HH[-a,-b])tt[-c])
};
checks/.Rule[label_,expr_]:>Rule[label,ToCanonical[ContractMetric[ToCanonical[expr]]]]
