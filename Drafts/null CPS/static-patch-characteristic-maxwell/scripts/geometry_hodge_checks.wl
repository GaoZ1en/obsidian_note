ClearAll["Global`*"];

(* Exact component regression for the dS4 static patch and the raw Maxwell
   null pullback.  No field equation or gauge condition is imposed here. *)

zeroArrayQ[z_] := And @@ (TrueQ[FullSimplify[# == 0, assumptions]] & /@ Flatten[z]);
assumptions = L > 0 && rho > 0 && 0 < th < Pi &&
  Element[{tau, rho, th, ph, U, V}, Reals];

coords = {tau, rho, th, ph};
a = Sinh[rho];
gRho = L^2 Sech[rho]^2 DiagonalMatrix[{-1, 1, a^2, a^2 Sin[th]^2}];
gRhoInv = FullSimplify[Inverse[gRho], assumptions];

christoffel[g_, x_] := Module[{gi = Simplify[Inverse[g]], n = Length[x]},
  Table[
    FullSimplify[
      1/2 Sum[gi[[mu, sig]] (
        D[g[[sig, nu]], x[[kap]]] + D[g[[sig, kap]], x[[nu]]] -
          D[g[[nu, kap]], x[[sig]]]
      ), {sig, n}], assumptions],
    {mu, n}, {nu, n}, {kap, n}
  ]
];

ricciScalar[g_, x_] := Module[{n = Length[x], gi, ga, ric},
  gi = FullSimplify[Inverse[g], assumptions];
  ga = christoffel[g, x];
  ric = Table[
    FullSimplify[
      Sum[
        D[ga[[lam, mu, nu]], x[[lam]]] -
        D[ga[[lam, mu, lam]], x[[nu]]] +
        Sum[
          ga[[lam, lam, sig]] ga[[sig, mu, nu]] -
          ga[[lam, nu, sig]] ga[[sig, mu, lam]],
          {sig, n}
        ],
        {lam, n}
      ], assumptions],
    {mu, n}, {nu, n}
  ];
  FullSimplify[Sum[gi[[mu, nu]] ric[[mu, nu]], {mu, n}, {nu, n}], assumptions]
];

curvature = ricciScalar[gRho, coords];

(* u=tau-rho, v=tau+rho, U=exp(u), V=-exp(-v). *)
z = Exp[-2 rho];
uvProduct = -z;
radiusFromUV = L (1 + uvProduct)/(1 - uvProduct);
kruskal2Coefficient = FullSimplify[
  L^2 Sech[rho]^2/(uvProduct), assumptions
];
kruskalSphereRadius = FullSimplify[radiusFromUV, assumptions];

(* General double-null metric ds^2=-2 aa dU dV+rr^2 dOmega^2,
   oriented by dU ^ dV ^ vol_q. *)
dnCoords = {uu, vv, th, ph};
gDN = {
  {0, -aa, 0, 0},
  {-aa, 0, 0, 0},
  {0, 0, rr^2, 0},
  {0, 0, 0, rr^2 Sin[th]^2}
};
gDNInv = Simplify[Inverse[gDN]];
sqrtDN = aa rr^2 Sin[th];

fDN = {
  {0, aa ee, pth, pph},
  {-aa ee, 0, rth, rph},
  {-pth, -rth, 0, bb},
  {-pph, -rph, -bb, 0}
};

hodgeDN[m_] := Module[{mup = Simplify[gDNInv . m . gDNInv]},
  Table[
    Simplify[
      sqrtDN/2 Sum[
        LeviCivitaTensor[4][[mu, nu, al, be]] mup[[al, be]],
        {al, 4}, {be, 4}
      ],
      Assumptions -> aa > 0 && rr > 0 && 0 < th < Pi
    ],
    {mu, 4}, {nu, 4}
  ]
];

starFDN = hodgeDN[fDN];
dA = {dAU, dAV, dAth, dAph};
thetaComponent[i_, j_, k_] := Simplify[-(
  dA[[i]] starFDN[[j, k]] + dA[[j]] starFDN[[k, i]] +
    dA[[k]] starFDN[[i, j]]
)];

thetaHminus = thetaComponent[2, 3, 4];
thetaHplus = thetaComponent[1, 3, 4];
thetaHminusExpected = rr^2 Sin[th] ee dAV + Sin[th] rth dAth + rph dAph/Sin[th];
thetaHplusExpected = rr^2 Sin[th] ee dAU - Sin[th] pth dAth - pph dAph/Sin[th];

(* Field-space convention used throughout the project:
   omega(delta1,delta2)=delta2 theta[delta1]-delta1 theta[delta2].
   Apply it to the already-derived theta pullbacks. *)
omegaHminusFromTheta =
  rr^2 Sin[th] (ee2 dAV1 - ee1 dAV2) +
  Sin[th] (rth2 dAth1 - rth1 dAth2) +
  (rph2 dAph1 - rph1 dAph2)/Sin[th];
omegaHminusExpected =
  rr^2 Sin[th] (dAV1 ee2 - dAV2 ee1) +
  Sin[th] (dAth1 rth2 - dAth2 rth1) +
  (dAph1 rph2 - dAph2 rph1)/Sin[th];

omegaHplusFromTheta =
  rr^2 Sin[th] (ee2 dAU1 - ee1 dAU2) -
  Sin[th] (pth2 dAth1 - pth1 dAth2) -
  (pph2 dAph1 - pph1 dAph2)/Sin[th];
omegaHplusExpected =
  rr^2 Sin[th] (dAU1 ee2 - dAU2 ee1) -
  Sin[th] (dAth1 pth2 - dAth2 pth1) -
  (dAph1 pph2 - dAph2 pph1)/Sin[th];

(* Derive the four intrinsic transport equations from generic component
   functions on a nonexpanding round horizon.  The double-null lapse may
   depend on every coordinate; it cancels from the intrinsic equations. *)
aaF = lapse[uu, vv, th, ph];
eeF = electric[uu, vv, th, ph];
pThF = pThComp[uu, vv, th, ph];
pPhF = pPhComp[uu, vv, th, ph];
rThF = rThComp[uu, vv, th, ph];
rPhF = rPhComp[uu, vv, th, ph];
bF = magneticTwo[uu, vv, th, ph];

gTransport = gDN /. {aa -> aaF, rr -> r0};
gTransportInv = Simplify[Inverse[gTransport]];
sqrtTransport = aaF r0^2 Sin[th];
fTransport = {
  {0, aaF eeF, pThF, pPhF},
  {-aaF eeF, 0, rThF, rPhF},
  {-pThF, -rThF, 0, bF},
  {-pPhF, -rPhF, -bF, 0}
};
fTransportUp = Simplify[gTransportInv . fTransport . gTransportInv];
maxwellTransport = Table[
  FullSimplify[
    Sum[D[sqrtTransport fTransportUp[[mu, nu]], dnCoords[[mu]]], {mu, 4}]/
      sqrtTransport,
    aaF > 0 && r0 > 0 && 0 < th < Pi
  ],
  {nu, 4}
];

divR = (D[Sin[th] rThF, th] + D[rPhF/Sin[th], ph])/(r0^2 Sin[th]);
divP = (D[Sin[th] pThF, th] + D[pPhF/Sin[th], ph])/(r0^2 Sin[th]);
sheetMinusMaxwell = D[eeF, vv] + divR;
sheetPlusMaxwell = D[eeF, uu] - divP;

bianchiVThPh = FullSimplify[
  D[fTransport[[3, 4]], vv] + D[fTransport[[4, 2]], th] +
    D[fTransport[[2, 3]], ph]
];
bianchiUThPh = FullSimplify[
  D[fTransport[[3, 4]], uu] + D[fTransport[[4, 1]], th] +
    D[fTransport[[1, 3]], ph]
];
sheetMinusBianchi = D[bF, vv] - D[rPhF, th] + D[rThF, ph];
sheetPlusBianchi = D[bF, uu] - D[pPhF, th] + D[pThF, ph];

checks = {
  "static-rho metric inverse" -> zeroArrayQ[gRho . gRhoInv - IdentityMatrix[4]],
  "static-rho determinant" -> TrueQ[
    FullSimplify[Det[gRho] == -L^8 Sech[rho]^4 Tanh[rho]^4 Sin[th]^2,
      assumptions]
  ],
  "dS4 Ricci scalar" -> TrueQ[FullSimplify[curvature == 12/L^2, assumptions]],
  "r=L tanh(rho) from UV" -> TrueQ[
    FullSimplify[kruskalSphereRadius == L Tanh[rho], assumptions]
  ],
  "Kruskal two-metric coefficient" -> TrueQ[
    FullSimplify[
      kruskal2Coefficient == -4 L^2/(1 - uvProduct)^2,
      assumptions
    ]
  ],
  "Kruskal sphere coefficient" -> TrueQ[
    FullSimplify[
      kruskalSphereRadius^2 == L^2 ((1 + uvProduct)/(1 - uvProduct))^2,
      assumptions
    ]
  ],
  "double-null determinant" -> TrueQ[
    FullSimplify[Det[gDN] == -aa^2 rr^4 Sin[th]^2,
      aa > 0 && rr > 0 && 0 < th < Pi]
  ],
  "Lorentzian Hodge squared on two-forms" -> zeroArrayQ[hodgeDN[starFDN] + fDN],
  "past-horizon raw theta pullback" -> TrueQ[
    FullSimplify[thetaHminus == thetaHminusExpected,
      aa > 0 && rr > 0 && 0 < th < Pi]
  ],
  "future-horizon raw theta pullback" -> TrueQ[
    FullSimplify[thetaHplus == thetaHplusExpected,
      aa > 0 && rr > 0 && 0 < th < Pi]
  ],
  "past-horizon omega field-space order" -> TrueQ[
    FullSimplify[omegaHminusFromTheta == omegaHminusExpected,
      rr > 0 && 0 < th < Pi]
  ],
  "future-horizon omega field-space order" -> TrueQ[
    FullSimplify[omegaHplusFromTheta == omegaHplusExpected,
      rr > 0 && 0 < th < Pi]
  ],
  "past Maxwell transport equation" -> TrueQ[
    FullSimplify[aaF maxwellTransport[[1]] - sheetMinusMaxwell == 0,
      aaF > 0 && r0 > 0 && 0 < th < Pi]
  ],
  "future Maxwell transport equation" -> TrueQ[
    FullSimplify[aaF maxwellTransport[[2]] + sheetPlusMaxwell == 0,
      aaF > 0 && r0 > 0 && 0 < th < Pi]
  ],
  "past Bianchi transport equation" -> TrueQ[
    FullSimplify[bianchiVThPh - sheetMinusBianchi == 0]
  ],
  "future Bianchi transport equation" -> TrueQ[
    FullSimplify[bianchiUThPh - sheetPlusBianchi == 0]
  ]
};

Print["Wolfram version: ", $Version];
Print["Ricci scalar: ", curvature];
Scan[Print[First[#], ": ", Last[#]] &, checks];

If[And @@ (Last /@ checks),
  Print["ALL GEOMETRY/HODGE CHECKS PASSED"],
  Print["GEOMETRY/HODGE CHECKS FAILED"];
  Quit[1]
];
