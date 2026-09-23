Needs["xAct`xTensor`"]; Needs["xAct`xTras`"];
(* Fresh xAct kernel; MC and invariant pairing are explicit inputs. *)
DefManifold[BridgeM,3,{a,b,c,d,e,f}];
DefMetric[-1,met[-a,-b],CD,{";","D"}];
DefTensor[avec[-a],BridgeM]; DefTensor[variation[-a],BridgeM];
DefManifold[PortBase,6,{aa,bb,cc,dd,ee,ff}];
DefManifold[LieBase,3,{ii,jj,ll,mm,nn,pp}];
DefTensor[alt[aa,bb,cc],PortBase,Antisymmetric[{aa,bb,cc}]];
DefTensor[str[ii,jj,ll],LieBase,Antisymmetric[{ii,jj,ll}]];
DefTensor[lc[-aa,-ii],{PortBase,LieBase}]; DefTensor[rc[-aa,-ii],{PortBase,LieBase}];
DefTensor[charge[-ii],LieBase];DefTensor[xi[-ii],LieBase];DefTensor[zeta[-ii],LieBase];
cp=alt[aa,bb,cc]str[ii,jj,ll](lc[-aa,-ii]+rc[-aa,-ii])(lc[-bb,-jj]+rc[-bb,-jj])(lc[-cc,-ll]+rc[-cc,-ll])/12;
cs=alt[aa,bb,cc]str[ii,jj,ll](lc[-aa,-ii]lc[-bb,-jj]lc[-cc,-ll]+rc[-aa,-ii]rc[-bb,-jj]rc[-cc,-ll])/12;
dc=-alt[aa,bb,cc]str[ii,jj,ll](lc[-aa,-ii]lc[-bb,-jj]rc[-cc,-ll]+lc[-aa,-ii]rc[-bb,-jj]rc[-cc,-ll])/4;
bridgeResiduals=<|
 "CS_kinetic_boundary_variation"->epsilonmet[a,b,c](variation[-a]CD[-b][avec[-c]]+avec[-a]CD[-b][variation[-c]])-2epsilonmet[a,b,c]variation[-a]CD[-b][avec[-c]]+CD[-a][epsilonmet[a,b,c]avec[-b]variation[-c]],
 "Cartan_product_correction"->cp-cs+dc,
 "Orbit_gauge_contraction"->str[ii,jj,ll]charge[-ii]xi[-jj]zeta[-ll]-str[ii,jj,ll]xi[-ii]zeta[-jj]charge[-ll]|>;
bridgeResiduals=Map[FullSimplification[][ToCanonical[ContractMetric[ToCanonical[Expand[#]]]]]&,bridgeResiduals];
Print[bridgeResiduals];
If[!And@@(SameQ[#,0]& /@ Values[bridgeResiduals]),Exit[1]];
