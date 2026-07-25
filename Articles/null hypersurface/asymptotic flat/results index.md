# Results index

## Purpose

This file is a compact registry，not a replacement for the proofs。Every row points to the note containing the exact domain、counterterm category、assumptions and verification boundary。

The `Type` column uses：

- `Definition`；
- `Positive`；
- `Conditional`；
- `Obstruction`。

The `Novelty` column records a working prior-art classification screened through 2026-07-25：

- `New*`：no direct prior statement was found in the audited sources；
- `New derivation*`：the physical/on-shell structure is known，but the declared action-level/category-relative derivation appears new；
- `Repackaging`：a source-supported result or standard construction reorganized for this project；
- `New target / unproved`：a potentially new claim whose proof audit is not complete。

The asterisk is essential：this is a bounded literature screen，not an exhaustive or legal proof of priority。A row may be mathematically Positive while its novelty remains revisable，and conversely an unproved target is not promoted by a novelty label。

## Prior-art anchor key

Every result row names the imported inputs actually used。`Project proof only` means that the row's mathematical conclusion is derived in the authoritative project note；it does not mean the surrounding formalism has no literature。

| Anchor | Exact imported input |
|---|---|
| P0 | Grieser，[*Basics of the b-calculus*](https://arxiv.org/abs/math/0010314)，Definition 2.3 and Remarks 2.4；Margalef-Bentabol--Villaseñor，[relative CPS](https://arxiv.org/abs/2008.01842)，relative de Rham/bicomplex and corner construction；Harlow--Wu，[CPS with boundaries](https://arxiv.org/abs/1906.08616)，boundary stationarity construction。Exact sign checks are recorded in `definitions.md` section 14。 |
| P1 | Bosma--Geiller--Majumdar--Oblak，[3D Einstein--Maxwell](https://arxiv.org/abs/2311.09156)，eqs. (2.7)--(2.13)，especially (2.9a)--(2.9b) and footnote 2 on printed PDF p. 10，where the log cap is identified as EOM-derived。 |
| P2 | DLMF [10.17.5](https://dlmf.nist.gov/10.17.E5)、[10.22.49](https://dlmf.nist.gov/10.22.E49) and [§15.8(i)](https://dlmf.nist.gov/15.8)；Baskin--Vasy--Wunsch，[radiation-field asymptotics](https://arxiv.org/abs/1212.5141)，Theorem 1.1 and Remark 1.5，printed PDF pp. 3--4。 |
| P3 | Geiller--Zwikel，[partial Bondi gauge](https://arxiv.org/abs/2205.11401)，eqs. (2.1)--(2.3)；Geiller--Laddha--Zwikel，[absence of peeling](https://arxiv.org/abs/2407.07978)，eqs. (2.1)--(2.3) and Appendix A；Mädler--Winicour，[Bondi--Sachs formalism](https://arxiv.org/abs/1609.01731)，eqs. (55)--(56)。 |
| P4 | Lehner--Myers--Poisson--Sorkin，[null-boundary action](https://arxiv.org/abs/1609.00207)，eqs. (2.66)--(2.70)、(4.1)--(4.2) and Appendix C；Campoleoni--Delfante--Francia--Heissenberg，[finite on-shell actions](https://arxiv.org/abs/2507.19310)，eqs. (18)--(25) and (33)--(34)。 |
| P5 | Freidel--Riello，[renormalized conformal infinity](https://arxiv.org/abs/2402.03097)，sections 2、5 and 7；GLZ eqs. (3.9)--(3.11)、(3.17)--(3.21) for the solution-pullback symplectic/charge comparison。 |
| P6 | Kádár--Kehrberger，[polyhomogeneous quasilinear scattering](https://arxiv.org/abs/2501.09814)，main scattering theorem and final-form corollary；the precise non-imported coupled estimates are separated in `matter coupling.md` section 9。 |
| P7 | Flanagan--Prabhu--Shehzad，[extended BMS obstruction](https://arxiv.org/abs/1910.04557)，eqs. (4.10)--(4.19) for the $\Omega^{-1}$ current and eqs. (4.21)--(4.22) plus section 4.3 for local-covariant ambiguities。 |
| P8 | Campiglia--Peraza，[generalized BMS phase space](https://arxiv.org/abs/2002.06691)，eqs. (5.18)、(5.22)--(5.23)、(5.29)--(5.34)、(3.7)、(3.25)--(3.26)、(A.20) and (B.4)--(B.6)。 |
| P9 | Barnich--Troessaert，[local superrotations](https://arxiv.org/abs/1102.4632)；Nguyen--Salzer，[superrotation effective action](https://arxiv.org/abs/2008.03321)。The exact imported action、Schwarzian and open-holonomy statements are itemized in `dynamical celestial metric.md` section 13.9。 |
| P10 | Prabhu，[Maxwell matching](https://arxiv.org/abs/1808.07863) and [gravitational supermomentum](https://arxiv.org/abs/1902.08200)；Prabhu--Shehzad，[spatial-infinity phase space](https://arxiv.org/abs/1912.04305) and [Lorentz matching](https://arxiv.org/abs/2110.04900)。The imported regularity/EOM/fluxless hypotheses are listed in `spatial infinity and endpoints.md` sections 5 and 10。 |
| P11 | GLZ eqs. (3.22)--(3.26)，printed PDF pp. 19--22，for the $1/u$ tail and logarithmic superrotation flux；McNees--Zwikel，[finite charges from corner terms](https://arxiv.org/abs/2306.16451)；Choi--Laddha--Puhm，[massive logarithmic charges](https://arxiv.org/abs/2403.13053)。 |
| P12 | Iyer--Wald，[Noether charge](https://arxiv.org/abs/gr-qc/9403028) and Wald--Zoupas，[null-boundary charges](https://arxiv.org/abs/gr-qc/9911095)。The exact project conventions and field-dependent-generator formula are fixed in `charges and Ward identities.md` sections 2--3。 |
| P13 | Cattaneo--Schiavina，[BV--BFV gravity](https://arxiv.org/abs/1509.05762)；Barnich--Brandt--Henneaux，[local BRST cohomology](https://arxiv.org/abs/hep-th/9505173)；Rejzner，[pAQFT/BV](https://arxiv.org/abs/1603.06993) and [BV quantization](https://arxiv.org/abs/2004.14272)。Exact import boundaries are in `charges and Ward identities.md` section 15.9。 |
| P14 | Ware--Saotome--Akhoury，[gravitational FK](https://arxiv.org/abs/1308.6285)；Choi--Kol--Akhoury，[BMS/FK](https://arxiv.org/abs/1708.05717)；Himwich et al.，[soft $\mathcal S$-matrix](https://arxiv.org/abs/2005.13433)；Agrawal et al.，[log-soft Ward identities](https://arxiv.org/abs/2309.11220)；Sahoo--Sen，[log-soft terms](https://arxiv.org/abs/1808.03288)。Exact imported kernels and unproved matching assumptions are listed in `charges and Ward identities.md` section 16.6。 |

## Foundation and complete pilot

| ID | Type | Novelty | Domain | Result | Authoritative location | Imported inputs | Intended use |
|---|---|---|---|---|---|---|---|
| F0 | Definition | Repackaging | Regulated asymptotic collar with fixed operation window | Separates off-shell histories、pre-phase space、reduced phase space、relative counterterms、$C^2$ renormalization and category-relative maximality without using bulk EOM | `definitions.md` sections 1--12 | P0 | Common formalism |
| M1 | Obstruction | New* | 3D Maxwell；strict intrinsic、local、gauge-invariant counterterms | The constant Coulomb $E^2\log R$ divergence cannot be removed in the strict intrinsic category | `3d Maxwell.md` Proposition 8.1 | P1 only for the on-shell comparison；project proof is off shell | Paper I no-go |
| M2 | Positive | New derivation* | 3D Maxwell；finite $u$ slab；normal-field-strength counterterms | The extended gauge-invariant scheme makes the action and its first two variations finite，including lids/corners | `3d Maxwell.md` Propositions 9.1、10.1 | P0、P1；closest overlap P4 treats an on-shell class without the 3D Coulomb-log off-shell family | Paper I central theorem |
| M3a | Positive | New derivation* | Compact positive-frequency Fourier--Bessel data | A nonempty global smooth finite-energy Maxwell class has a continuous log-free future-null expansion and injective leading-radiation map | `3d Maxwell.md` Proposition 11.1 | P2，especially DLMF 10.17.5 | Paper I nonemptiness gate |
| M3b | Conditional | New target / unproved | Conormal zero-frequency spectral data | Candidate full Hankel--Mellin image/kernel/cokernel theorem；coefficient identities are checked but the uniform pushforward and image-topology proof is open | `3d Maxwell.md` Candidate Proposition 11.2 and `Paper I proof audit.md` A5 | P2，especially DLMF 10.22.49、§15.8 and BVW Theorem 1.1 | Excluded from Paper I claims |
| M4 | Positive | New derivation* | Fixed inner data、fixed total-charge leaf and declared polarization | The full renormalized two-form has only proper-gauge kernel；the reduced Fréchet phase space、large $U(1)$ sectors and zero modes are explicitly classified | `3d Maxwell.md` Theorem 14.1 | P0；project proof only after the action theorem | Paper I corollary |

## Fixed-frame 4D radial theory

| ID | Type | Novelty | Domain | Result | Authoritative location | Imported inputs | Intended use |
|---|---|---|---|---|---|---|---|
| L1 | Positive | New derivation* | Linearized EH + GHY；fixed round $q_{AB}$；standard first-log window | The complete quadratic relative action、null lids/joints and finite $\Theta_{\mathrm{ren}}^{(2)},\Omega_{\mathrm{ren}}^{(2)}$ are obtained before imposing linearized EOM | `4d spin-2.md` sections 4.4--4.7 | P3、P4；Iyer--Wald current convention in P12 | Paper II linear bridge |
| L2 | Obstruction | New* | Leading-log shear；local finite-jet/no-edge category | The $L_R^2\delta\dot C^{(1)}\wedge\delta C^{(1)}$ class is not an endpoint descent；the no-leading-log condition is a category boundary rather than an EOM-derived off-shell falloff | `4d spin-2.md` section 4.8 | P3 for the on-shell log position；project cohomological proof | Paper II sharp boundary |
| G1 | Positive | New derivation* | Nonlinear vacuum GR；fixed round $q_{AB}$；finite $u$ slab；first-log target weights | A fixed-frame relative scheme gives finite $S_{\mathrm{ren}},\Theta_{\mathrm{ren}},\Omega_{\mathrm{ren}}$ and a locally $C^2$ truncated action without Penrose conditions、$E_{\mathrm{div}}=0$ or Einstein EOM | `4d nonlinear gravity.md` Theorems 9.4 and 11.2 | P3--P5 | Paper II main finite-order theorem |
| G2 | Positive | Repackaging / new dictionary* | G1 after imposing vacuum EOM | The divergent counterterms vanish on the displayed solution pullback，the fixed-$q$ symplectic form agrees with GLZ/Ashtekar--Streubel，and the Dirichlet/FR/GLZ roles are separated | `4d nonlinear gravity.md` Theorem 12.1 | P3、P5 | Paper II on-shell dictionary |
| G3 | Positive | New* | Every fixed radial order $N\geq3$ in the finite-normal-jet fixed-frame category | Stage 3 exhausts the divergent support；no new non-exact symplectic divergence appears at $N\to N+1$，and the renormalized functional is locally $C^2$ at each fixed $N$ | `all-order radial hierarchy.md` Theorem 8.1 | P5 radial homotopy；P3 all-order caps | Paper II principal theorem |
| G4 | Obstruction | New derivation* | Smooth/polyhomogeneous coefficient category as $N\to\infty$ | Universal convergence and Borel-$1$ summability do not follow；the current hierarchy is controlled only as an asymptotic expansion unless a strictly smaller factorial/Gevrey category is imposed | `all-order radial hierarchy.md` Theorem 9.1 | Project factorial estimate；P6 only as PDE comparison | Paper II analytic boundary |
| T1 | Positive | New derivation* | Fixed $N$；massless scalar + Maxwell；no leading radiative logs | The coupled action and presymplectic data are finite and locally $C^2$；only the scalar endpoint subtraction is new and no mixed divergent counterterm occurs | `matter coupling.md` Theorem 10.1 | P3、P6 | Paper II matter extension |
| T2 | Obstruction | Repackaging / new action-level split* | Leading-log massless radiation or massive matter at null infinity | Leading scalar/Maxwell logs reproduce the $L_R^2$ obstruction；a nonzero pure null polyhomogeneous massive hierarchy does not exist，so massive scattering data belong at $i^\pm$ | `matter coupling.md` Theorem 10.1 | P6；massive hyperboloid inputs itemized in that note sections 6 and 9 | Paper II boundary / Paper III input |

## Varying celestial geometry and enlarged symmetries

| ID | Type | Novelty | Domain | Result | Authoritative location | Imported inputs | Intended use |
|---|---|---|---|---|---|---|---|
| Q1 | Obstruction | New action-compatible formulation* | Independent $\delta q_{AB},\delta N_{AB}$；strict physical-field local-covariant category | The leading $\Omega^{-1}\delta q^{AB}\wedge\delta N_{AB}$ class admits no action-compatible local-covariant ambiguity，so no all-order scheme exists in that category | `dynamical celestial metric.md` Theorem 6.1 | P7，especially FPS eqs. (4.19)、(4.21)--(4.22) | Paper III main no-go |
| Q2 | Positive | New derivation* | Fixed-area Campiglia--Peraza sphere sector with auxiliary fields | The original-field primitive is necessarily nonlocal，while a local auxiliary-field parent action reduces exactly to the Campiglia--Peraza two-form and admits bulk trace/moment gluing | `dynamical celestial metric.md` Theorem 11.1 | P8 | Paper III nonlocal/local-parent comparison |
| Q3 | Conditional | New construction* | Finite-$u$ FR accessible space plus GLZ solution-pullback corner polarization | A cotangent-edge collar gives the bulk momentum gluing equation and a Wess--Zumino transgression cancels the leading obstruction by changing the field category | `dynamical celestial metric.md` Theorem 12.1 | P5、P7、P8 | Paper III edge completion |
| Q4 | Conditional | New synthesis* | Fixed finite puncture set and one finite radial/Laurent window | Meromorphic superrotations become canonical only after specifying puncture counterterms、inflow and defect orbit data；the direct limit closes algebraically but no unique defect theory or uniform finite counterterm list exists | `dynamical celestial metric.md` Theorem 13.1 | P9 | Deferred Paper III section |

## Corners、matching and global charges

| ID | Type | Novelty | Domain | Result | Authoritative location | Imported inputs | Intended use |
|---|---|---|---|---|---|---|---|
| C1 | Positive | New* | Real blow-up of the null--spatial corner at fixed operation window | The three-face polyhomogeneous family has a unique minimal saturated completion and a terminating incidence-relative counterterm descent with order-independent local $C^2$ limits | `spatial infinity and endpoints.md` Theorems 12.1 and 17.1 | P0、P10；corner extraction method P11 | Paper III geometric core |
| C2 | Obstruction | New derivation* | Unrestricted falloff poset | No category-independent maximal or maximum polyhomogeneous falloff family exists；maximality becomes meaningful only after choosing a discrete lattice and bounded operation window | `spatial infinity and endpoints.md` Theorems 12.1 and 17.1 | P0；project poset proof | Paper III maximality result |
| C3 | Obstruction | New derivation* | Independent $\mathscr I^+_-$ and $\mathscr I^-_+$ traces with no cross-corner coupling | Antipodal configuration matching cannot be generated by the block-diagonal local corner variation；it is a regularity condition、an added multiplier equation or a property of the global scattering map | `spatial infinity and endpoints.md` Theorem 15.1 | P10 for the positive regularity/matching theorems；project mixed-Hessian no-go | Paper III matching result |
| C4 | Obstruction | New derivation* | Generic $1/u$ tail with nonzero logarithmic superrotation coefficient | The finite superrotation charge is an affine scheme torsor；only the anomaly coefficient and RG equation are scheme independent | `spatial infinity and endpoints.md` Theorem 16.1 | P11，especially GLZ eqs. (3.22)--(3.26) | Paper III tail result |
| C5 | Conditional | New conditional construction* | Massive $H^3_\pm$ data with a specified drag one-form | Existing-field scalar counterterms cannot remove a nonzero drag two-form；a cotangent/Dollard sector is a sufficient formal completion once the missing coupled drag one-form is supplied | `spatial infinity and endpoints.md` Theorem 14.1 | P11；the missing nonlinear drag one-form is explicitly not imported as known | Paper III timelike boundary |
| S1 | Conditional | Repackaging | Fixed-round massless matched sector with Ashtekar--Hansen regularity and fluxless hypotheses | Proper transformations are degeneracies，ordinary BMS and large $U(1)$ charges/fluxes are finite，and the matched algebra is represented canonically | `charges and Ward identities.md` Theorem 13.1 | P10、P12 | Paper III classical endpoint |
| S2 | Obstruction | New synthesis* | Generic-tail generalized or extended BMS | Varying-$q$、tail normalization、puncture and massive-corner effects prevent a unique global Hamiltonian on the constructed action domain | `charges and Ward identities.md` Obstruction 13.2 | P7--P12 | Paper III synthesis |

## Quantum diagnostic layer

| ID | Type | Novelty | Domain | Result | Authoritative location | Imported inputs | Intended use |
|---|---|---|---|---|---|---|---|
| B1 | Conditional | New synthesis* | Fixed regulators、finite radial/Laurent window and fixed EFT order | If Green hyperbolicity、sewing and relative anomaly cancellation hold，the BV--BFV differential is tangent and nilpotent and preserves the matching ideals | `charges and Ward identities.md` Theorem 15.1 | P13 | Outlook / later paper |
| W1 | Conditional | Repackaging / conditional synthesis | BMS-compatible dressed sector with vanishing BV、IR、$i^0$、$i^\pm$ and puncture remainders | The zero-remainder global Ward identity follows；without those hypotheses the exact statement retains five separately supported remainders | `charges and Ward identities.md` Theorem 16.1 | P14 plus P10--P13 for the five remainders | Outlook / later paper |

## Manuscript-readiness boundary

The row-level novelty/source screen is complete as a working audit，but only Paper I presently has all five manuscript gates：

1. frozen theorem scope；
2. an acyclic proof dependency ledger；
3. a reproducible local check package；
4. an independent category/analytic audit；
5. exact imported-source anchors。

See `Paper I proof ledger.md`、`Paper I proof audit.md` and `checks/maxwell/`。Rows intended for Papers II--III retain their mathematical status from the technical notes，but their asterisked novelty labels and proof packages still require a separate manuscript-specific audit。M3b is explicitly downgraded and excluded rather than counted as ready。
