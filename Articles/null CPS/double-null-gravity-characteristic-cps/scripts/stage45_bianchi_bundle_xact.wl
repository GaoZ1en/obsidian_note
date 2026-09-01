DefManifold[MM,4,{a,b,c,d,e,f,g,h}];
DefMetric[-1,gg[-a,-b],DD];

checks={
 "V92 B antisymmetry in the last pair"->
   (DD[e][WeylDD[-e,-a,-b,-c]]+
    DD[e][WeylDD[-e,-a,-c,-b]]),
 "V92 Weyl cyclic identity underlying B cyclicity"->
   ToCanonical[RiemannYoungProject[
    WeylDD[-e,-a,-b,-c]+WeylDD[-e,-b,-c,-a]+
    WeylDD[-e,-c,-a,-b]]],
 "V92 B trace"->
   gg[a,b] DD[e][WeylDD[-e,-a,-b,-c]]
};

checks/.Rule[label_,expr_]:>
 Rule[label,ToCanonical[ContractMetric[ToCanonical[expr]]]]
