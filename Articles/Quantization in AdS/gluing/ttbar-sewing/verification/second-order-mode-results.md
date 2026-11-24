# Exploratory second-order mode-cutoff checks

NumPy 2.3.5, double precision; c=1/2.
Dimensionless coupling g=8*pi*lambda/L², Hphysical=(2*pi/L)H.
The INNER-PAIR symmetric gamma=c/24 frame is used here, NOT the whole-composite determinant-midpoint finite part. The latter adds Dmix/4: local TT vertex 7/32 instead of -1/32; effective vertex 109/96 instead of 85/96. Both local vertices and the commutator frame map are checked by finite CAR matrices.
The power counterterms are regulator moments derived from the Virasoro commutator, not fitted state energies.
M is transfer cutoff; chiral level cutoff K=M+2 buffers the level-two external tests.
epsilon=0.7; finite epsilon is NOT the undeformed local continuum limit.
Code SHA256: `8f110663fc266eeb01719f0d35b94194251154191a8ffec32295a1d1fde264a1`.

| sector | external state | M | full matrix dimension | iterated W1 | direct W2 | total E2 | universal E2 target | predicted regulator remainder |
|---|---|---:|---:|---:|---:|---:|---:|---:|
| vacuum | primary | 2 | 25 | -0.00385307756159 | 0.00384403531622 | -9.04224537037e-06 | -9.04224537037e-06 | 0 |
| vacuum | chiral-T | 2 | 25 | -0.131004637094 | 0.102402933954 | -0.0286017031403 | -0.0403736255787 | 0.0117719224384 |
| vacuum | primary | 3 | 49 | -0.0242624822704 | 0.024253440025 | -9.04224537037e-06 | -9.04224537037e-06 | 0 |
| vacuum | chiral-T | 3 | 49 | -0.396326898309 | 0.367725195168 | -0.0286017031403 | -0.0403736255787 | 0.0117719224384 |
| vacuum | primary | 4 | 100 | -0.0717703436964 | 0.071761301451 | -9.04224537038e-06 | -9.04224537037e-06 | 0 |
| vacuum | chiral-T | 4 | 100 | -0.747885072861 | 0.719283369721 | -0.0286017031403 | -0.0403736255787 | 0.0117719224384 |
| epsilon | primary | 2 | 36 | -0.560391934384 | 0.670408933806 | 0.110016999421 | 0.110016999421 | 0 |
| epsilon | primary | 3 | 64 | -0.886942409726 | 0.996959409147 | 0.110016999421 | 0.110016999421 | 0 |
| epsilon | primary | 4 | 121 | -1.20809555297 | 1.31811255239 | 0.110016999421 | 0.110016999421 | 0 |
| sigma | primary | 2 | 49 | -0.0192918829322 | 0.0193642208952 | 7.2337962963e-05 | 7.2337962963e-05 | 0 |
| sigma | primary | 3 | 100 | -0.0578784137099 | 0.0579507516728 | 7.2337962963e-05 | 7.2337962963e-05 | 0 |
| sigma | primary | 4 | 196 | -0.126289734163 | 0.126362072126 | 7.2337962963e-05 | 7.2337962963e-05 | 0 |

Vacuum to normalized level-(2,2) low-effective-Hamiltonian vertex (phase fixed by CAR creation state):
| M | local W2 | iterated high-state kernel | power CT | redundant logarithmic CT | total effective vertex |
|---:|---:|---:|---:|---:|---:|
| 2 | -0.03125 | 0 | 0.536556282504 | 0.309941892881 | 0.815248175385 |
| 3 | -0.03125 | -0.328795951922 | 0.720240924883 | 0.33035129759 | 0.690546270551 |
| 4 | -0.03125 | -0.535441174599 | 0.841861050134 | 0.337952555418 | 0.613122430953 |

Independent exact-matrix ground-branch diagonalization vs the second-order prediction:
| sector | g | exact finite matrix | quadratic prediction | residual |
|---|---:|---:|---:|---:|
| epsilon | 0.002 | 0.95787463775139 | 0.95787457201244 | 6.5738950505434e-08 |
| epsilon | 0.001 | 0.95810385089065 | 0.95810384265589 | 8.2347612062605e-09 |
| epsilon | 0.0005 | 0.95821856152078 | 0.95821856049036 | 1.0304209707712e-09 |
| sigma | 0.002 | 0.083329863462532 | 0.083329861400463 | 2.0620688906403e-09 |
| sigma | 0.001 | 0.08333159755295 | 0.08333159729456 | 2.5838975403758e-10 |
| sigma | 0.0005 | 0.0833324653282 | 0.083332465295862 | 3.2338007271981e-11 |

All fixed-left/right-level blocks through level four, including degenerate descendant blocks:
| sector | epsilon | full dimension | blocks | largest degeneracy | matrix residual vs universal E2 plus derived regulator remainder |
|---|---:|---:|---:|---:|---:|
| vacuum | 0 | 324 | 16 | 4 | 1.43854258594e-13 |
| vacuum | 0.7 | 324 | 16 | 4 | 4.275997638e-14 |
| epsilon | 0 | 400 | 25 | 4 | 1.3254637253e-13 |
| epsilon | 0.7 | 400 | 25 | 4 | 5.68445030464e-14 |
| sigma | 0 | 625 | 25 | 4 | 1.14272355409e-13 |
| sigma | 0.7 | 625 | 25 | 4 | 5.69314308559e-14 |

Smooth Abel off-diagonal limit, M chosen so epsilon*M>=40. Target 85/96 for the INNER-PAIR symmetric gamma=c/24 frame and the two-state Loewdin convention (whole-composite determinant FP instead gives 109/96):
| epsilon | M | bare high-state loop | plus power CT and local W2 | also logarithmic CT |
|---:|---:|---:|---:|---:|
| 0.4 | 100 | -3.01451128589 | 0.0795699428275 | 0.634386408622 |
| 0.2 | 200 | -12.5677304341 | -0.0988972328365 | 0.754988667649 |
| 0.1 | 400 | -50.3248003258 | -0.35602950072 | 0.820054729802 |
| 0.05 | 800 | -200.626022491 | -0.657267283461 | 0.853046771068 |
| 0.025 | 1600 | -800.950021013 | -0.9812697112 | 0.869406995091 |

Counterexample: the same spectrum-matching CTs with a sharp transfer endpoint leave a linear off-diagonal artifact (~M/2):
| sharp M | effective vertex after power and log CT |
|---:|---:|
| 4 | 3.03125 |
| 8 | 4.95238095238 |
| 16 | 8.91770833333 |
| 32 | 16.9012936828 |
| 64 | 32.8932911706 |

Source O=H0 must rotate with the redundant second-order Hamiltonian counterterm. Ground-to-first-P0-excited transition magnitudes:
| g | base transition | corrected-source discrepancy | Hamiltonian-only discrepancy |
|---:|---:|---:|---:|
| 0.02 | 0.00232306608528 | 2.35926071138e-06 | 0.000126346243962 |
| 0.01 | 0.0012023253693 | 3.0151865766e-07 | 3.12965653705e-05 |
| 0.005 | 0.00061104497474 | 3.78885402589e-08 | 7.78649643452e-06 |

All finite matrix/commutator assertions passed.
These data do not establish the local Ward completion or regulator-independent off-diagonal physics.
The full R module here is the irreducible sigma Virasoro module, not an unprojected doubled fermionic Ramond space.
