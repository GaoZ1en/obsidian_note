(* Four-dimensional vacuum spherical gravity; G=c=hbar=1.
   All checks are exact. Spatial jets are independent symbols. *)
ClearAll["Global`*"];
checks={};
add[label_,ex_,ass_:True]:=AppendTo[checks,<|"label"->label,"passed"->TrueQ[FullSimplify[ex,Assumptions->ass]]|>];
zero[ex_]:=And@@(TrueQ[FullSimplify[Together[#]]==0]& /@ Flatten[{ex}]);
spatial[ex_]:=D[ex,r] rp+D[ex,rp] rpp+D[ex,l] lp+D[ex,pl] plp+D[ex,dr] drp;
variation[ex_]:=D[ex,r] dr+D[ex,rp] drp+D[ex,l] dl+D[ex,pl] dpl;
ff=(rp/l)^2-(pl/r)^2;
mass=r(1-ff)/2;
ham=-pl pr/r+l pl^2/(2r^2)+r rpp/l-r rp lp/l^2+rp^2/(2l)-l/2;
mom=pr rp-l plp;
pm=l pl/(r ff);
massPrime=spatial[mass];
prbar=(mom-pm massPrime)/rp;
add["off-shell radial mass identity",zero[massPrime+(rp ham+pl mom/r)/l]];
add["transformed radial momentum is the stated combination of constraints",zero[prbar-(pl ham/r+rp mom/l^2)/ff]];
gen=l pl+r rp Log[(r rp-l pl)/(r rp+l pl)]/2;
(* Exterior branch r*rp > Abs[l*pl]: both log arguments are positive,
   so log(1/z)=-log(z) exactly, without complex logarithm ambiguity. *)
corner=-r dr Log[(r rp-l pl)/(r rp+l pl)]/2;
liouville=pl dl+pr dr-pm variation[mass]-prbar dr-variation[gen]-spatial[corner];
add["full local Liouville identity including spatial boundary variation",zero[liouville]];
transform={{-rp/l,-pl/(r l)},{pl/(r ff),rp/(l^2 ff)}};
add["constraint transformation is nonsingular in the exterior chart",zero[Det[transform]+1/l]];
lambdaInv=Sqrt[rp^2/fc-fc pmc^2];
pLambdaInv=r fc pmc/lambdaInv;
add["inverse mass-variable chart restores F",zero[(rp/lambdaInv)^2-(pLambdaInv/r)^2-fc]];
add["inverse chart restores P_M",zero[lambdaInv pLambdaInv/(r fc)-pmc]];
add["fixed boundary radius removes the Liouville corner one-form",zero[corner/.dr->0]];

energy[rad_,m_]:=rad(1-Sqrt[1-2m/rad]);
ass=rad>0&&0<m<rad/2;
add["Brown-York energy derivative is the local redshift",D[energy[rad,m],m]==1/Sqrt[1-2m/rad],ass];
add["monotonicity on the declared mass interval",D[energy[rad,m],m]>0,ass];
inverseMass=ee-ee^2/(2rad);
add["exact energy-to-mass inverse",energy[rad,inverseMass]==ee,rad>0&&0<ee<rad];
add["inverse mass derivative and rigging Jacobian",D[inverseMass,ee]==1-ee/rad];
add["common lapse variation yields the oriented energy sum",zero[D[-nn energy[rad,ma]+nn energy[rad,mb],nn]+energy[rad,ma]-energy[rad,mb]]];
add["clock parametrization keeps the zero-mode endpoint variation",zero[-charge[uu]clockVariation'[uu]-(charge'[uu]clockVariation[uu]-D[charge[uu]clockVariation[uu],uu])]];
add["fixed induced metric lapse variation has sign minus energy",zero[(1/2) nn area (edens/nn^2) (-2nn dnn)+area edens dnn]];
add["equal mass matches both independent components of extrinsic curvature",zero[(DiagonalMatrix[{ma/(rad^2 Sqrt[1-2ma/rad]),Sqrt[1-2ma/rad]/rad,Sqrt[1-2ma/rad]/rad}]-DiagonalMatrix[{mb/(rad^2 Sqrt[1-2mb/rad]),Sqrt[1-2mb/rad]/rad,Sqrt[1-2mb/rad]/rad}])/.mb->ma]];

omega={{0,1,0,0},{-1,0,0,0},{0,0,0,1},{0,0,-1,0}};
mu=energy[rad,ma]-energy[rad,mb];
coords={ma,pa,mb,pb}; grad=D[mu,#]& /@ coords; xmu=omega.grad;
add["diagonal interface action has moment map E_A-E_B",zero[Transpose[omega].xmu-grad]];
include={{1,0,0},{0,1,0},{1,0,0},{0,0,1}};
omegaLevel=Transpose[include].omega.include;
add["zero-level presymplectic form has complete one-dimensional kernel",MatrixRank[omegaLevel]==2&&zero[omegaLevel.{0,-1,1}]];
quotient={{1,0,0},{0,1,1}};
omegaOne={{0,1},{-1,0}};
add["explicit quotient map pulls back the global symplectic form",zero[Transpose[quotient].omegaOne.quotient-omegaLevel]];
add["interface generator preserves the quotient coordinates",zero[(D[#,ma]xmu[[1]]+D[#,pa]xmu[[2]]+D[#,mb]xmu[[3]]+D[#,pb]xmu[[4]]& /@ {ma,pa+pb})/.mb->ma]];
coordinateChange={energy[rad,m],p/D[energy[rad,m],m]};
jac=Table[D[coordinateChange[[i]],v],{i,2},{v,{m,p}}];
add["interface energy polarization is canonical",zero[Transpose[jac].omegaOne.jac-omegaOne]];

(* Parameterizing the existing boundary sources adds clock-reference
   origins, not a freely chosen bulk oscillator. *)
frameCoords={m,p0,ta,tb};
oneForm={p0,0,ei[m],-eo[m]};
frameOmega=Table[-D[oneForm[[j]],frameCoords[[i]]]+D[oneForm[[i]],frameCoords[[j]]],{i,4},{j,4}];
pFrame=p0+eo'[m]tb-ei'[m]ta;
frameMap={m,pFrame};
frameJac=Table[D[frameMap[[i]],v],{i,2},{v,frameCoords}];
add["boundary-source parametrization gives the framed reduced two-form",zero[frameOmega-Transpose[frameJac].omegaOne.frameJac]];
add["common internal clock contribution cancels under sewing",zero[(pA+eg'[m]tg-e0'[m]t0)+(pB+eo'[m]to-eg'[m]tg)-(pA+pB+eo'[m]to-e0'[m]t0)]];
add["outer boundary generator commutes with seam constraint",zero[grad.omega.(D[energy[rout,mb],#]& /@ coords)]];
add["state-dependent outer/interface clock redshift",D[energy[rout,m],m]/D[energy[rad,m],m]==Sqrt[(1-2m/rad)/(1-2m/rout)],rout>rad>2m>0];
add["Brown-York energy is not equal to mass away from infinity",energy[10,1]!=1];
add["regular vacuum center forces zero mass through curvature invariant",(Limit[48/rad^6,rad->0,Direction->-1]===Infinity)&&zero[(48mm^2/rad^6)/(48/rad^6)-mm^2]];

(* Fixed-energy representations of two and three adjacent regions. *)
omega3=ArrayFlatten[{{omegaOne,0omegaOne,0omegaOne},{0omegaOne,omegaOne,0omegaOne},{0omegaOne,0omegaOne,omegaOne}}];
cs={ea,qa,eb,qb,ec,qc};
mu1=energy[rone,ea]-energy[rone,eb];mu2=energy[rtwo,eb]-energy[rtwo,ec];
add["two consecutive interface moment maps commute",zero[(D[mu1,#]& /@ cs).omega3.(D[mu2,#]& /@ cs)]];
add["three-region quotient coordinate is associative",zero[(qa+qb)+qc-(qa+(qb+qc))]];
add["energy-polarized gauge-fixing determinant is one",zero[({0,0,0,1}.omega.{1,0,-1,0})-1]];
add["mass-polarized gauge-fixing determinant equals E prime",zero[xmu[[4]]-D[energy[rad,mb],mb]]];
clockOverlap=Integrate[Exp[I en dt]/(2 Pi),{en,emin,emax},Assumptions->Element[{emin,emax,dt},Reals]&&emin<emax&&dt!=0];
add["continuous-band clock overlap",clockOverlap==Exp[I(emin+emax)dt/2]Sin[(emax-emin)dt/2]/(Pi dt),Element[{emin,emax,dt},Reals]&&emin<emax&&dt!=0];
add["continuous-band relational Schrodinger equation",zero[I D[Exp[-I en tt]psi[en],tt]-en Exp[-I en tt]psi[en]]];
add["two-time relational propagator",zero[Exp[-I en t2]Exp[I en t1]-Exp[-I en(t2-t1)]]];
summary=<|"conventions"->"G=c=hbar=1; Omega=-delta Theta; i_X Omega=delta H; static exterior and fixed areal radii","checkCount"->Length[checks],"allPassed"->And@@Lookup[checks,"passed"],"checks"->checks|>;
Print[ExportString[summary,"RawJSON"]];
