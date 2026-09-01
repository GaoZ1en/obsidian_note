DefManifold[MM,4,{a,b,c,d,e,f,g,h}];
DefMetric[-1,gg[-a,-b],DD];
crb=CurvatureRelationsBianchi[DD];
checks={
 "V79 algebraic Riemann Bianchi"->
   RiemannYoungProject[
    Antisymmetrize[RiemannDD[-a,-b,-c,-d],{-b,-c,-d}]],
 "V79 contracted differential Bianchi"->
   ((DD[-d][RiemannDD[a,b,c,d]]+DD[a][RicciDD[b,c]]
      -DD[b][RicciDD[a,c]])/.crb),
 "V79 contracted Einstein Bianchi"->DD[a][EinsteinDD[-a,-b]]
};
checks/.Rule[label_,expr_]:>
 Rule[label,ToCanonical[ContractMetric[ToCanonical[expr]]]]
