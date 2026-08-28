# Repair Audit

Date: 2026-08-28.

## Verdict

The zero-trace logarithmic radiation-field chain and
`T1-aff(k,fixed-j)` are closed; `T1-aff(k,full tower)` and the maximal affine
horizon/corner range are not.  The final kill test does not close a completed
endpoint-extended phase space or an article-level theorem, so the
static-patch lane is frozen.

This audit uses only the five project statuses

$$
\texttt{proved},\quad
\texttt{checked symbolically},\quad
\texttt{conditional},\quad
\texttt{conjectural},\quad
\texttt{false}.
$$

Passing a regression script is evidence only for the finite identities or
samples named by that script.  It is not a proof of a Sobolev, Hardy, Goursat,
Peierls, KMS, or phase-space-limit theorem.

## Claim-by-claim repair

| item | original claim or ambiguity | repaired claim | status | reason | proof or audit location |
|---|---|---|---|---|---|
| 1a | $F_{VA}$ and $F_{vA}$ were used as if they were the same horizon datum. | $r_A^{\rm aff}(V,x):=F_{VA}$ and $\mathfrak r_A(v,x):=F_{vA}=(-V)F_{VA}$, with $V=-e^{-v}$. | proved | This is the tensor-component transformation under the declared coordinate change. | `calculations/00`, section 3; `01`, sections 1 and 5; `10`, section 2 |
| 1b | The former restriction theorem was presented as a smooth affine horizon theorem. | `T1-log` is a spectral/static radiation-field theorem for $\mathfrak r_A$; it assigns no generic point trace at $B$. | proved | The inverse is the half-line spectral transform in the $(\omega+\omega^2)$ CPS topology, which controls neither $e^v\mathfrak r_A$ nor evaluation at $V=0$. | `calculations/03`, Theorem 7.1 and section 7.4; `verification/CLAIM_LEDGER.md`, `T1-log` |
| 2a | Logarithmic Schwartz decay or finite static energy was treated as sufficient for affine smoothness. | $f(v)=\exp[-(1+v^2)^{1/4}]$ is Schwartz, while $e^v\lvert f'(v)\rvert\to\infty$, so $F_{VA}=e^vF_{vA}$ need not even have a finite affine trace. | proved | Polynomial decay of every order is weaker than the exponential endpoint hierarchy induced by $V=-e^{-v}$. | `calculations/10`, section 4; `scripts/affine_horizon_checks.py` |
| 2b | No exact finite-order affine function-space criterion was stated. | $r^{\rm aff}$ is $C^k$ at $V=0$ iff $e^{(n+1)v}\prod_{q=1}^n(\partial_v+q)\mathfrak r$ has a finite limit for $0\leq n\leq k$; the master analogue uses $e^{nv}\prod_{q=0}^{n-1}(\partial_v+q)f$. | proved | Repeatedly applying $\partial_V=e^v\partial_v$ gives the exact weighted-derivative operators. | `calculations/10`, Theorem 3.1 and equation (3.7) |
| 2c | Incoming affine regularity alone was tacitly identified with smoothness through the bifurcation sphere. | For each fixed mode and order, regularity in the closed static quadrant requires the incoming $v\to+\infty$ hierarchy and the outgoing $u\to-\infty$ hierarchy after $c\mapsto S_jc$, together with corner matching.  Adjacent-quadrant extension exists but is not unique without extra characteristic data. | proved | The fixed-$j$ Kruskal equation is a regular Goursat equation; uniqueness applies only to the domain with both traces fixed. | `calculations/10`, Theorem 6.1 |
| 2d.1 | The fixed-mode Volterra proof had no separately scoped theorem status. | `T1-aff(k,fixed-j)` is the fixed-mode finite-order theorem. | proved | The regular fixed-$j$ Goursat equation and the incoming-only kernel give the two equivalent criteria. | `calculations/10`, Theorem 6.1; `calculations/12`, Theorem 4.1 |
| 2d.2 | The fixed-mode Volterra proof was promoted automatically to arbitrary rapid-angular Goursat traces. | Ordinary rapid-angular decay does not control the unrestricted full-tower Goursat solution on a fixed rectangle. | false | Positive constant traces have $I_0(cj)$ lower growth. | `calculations/12`, section 6 |
| 2d.3 | Boundary compatibility was assumed to close the physical full tower automatically. | The $S_j$-compatible `T1-aff(k,full tower)` remains open. | conditional | Exact compatibility reduces boundary Hardy-strip growth to $O(j^{2\sigma})$, but the common interior estimate is missing. | `calculations/12`, sections 5--7 |
| 2e | The outgoing affine condition was left as a condition on $S_jc$. | $S_j$ has the exact partial fractions (1.1); outgoing jets are incoming exponential moments after pole-resonance coefficients vanish, and corner matching is $f_-(+\infty)=-f_-(-\infty)$. | proved | Residues give the tail kernel, resonance logs, and moment formulae. | `calculations/12`, Theorem 4.1; `scripts/incoming_affine_kernel_checks.py` |
| 2f.1 | The Mellin forward implication was bundled with an unspecified converse. | `Mellin-nec`: affine Taylor data imply the stated meromorphic continuation, residues, and strict-substrip Hardy control. | proved | Direct transform of the Taylor terms gives the poles; the subtracted remainder gives the strip estimates. | `calculations/10`, section 5 |
| 2f.2 | No precise sufficient boundary norm was stated. | `Mellin-Sobolev-suff`: the declared $H^m$ boundary norm gives $R=e^{-\beta v}h$ with $h\in H^m$. | proved | Shifted $H^2$ Paley--Wiener inversion and Plancherel give the weighted Sobolev conclusion; $m>1/2$ gives the stated pointwise decay. | `calculations/10`, equations (5.6)--(5.13) |
| 2f.3 | One standard Hardy boundary norm was treated as an affine $C^{k,\alpha}$ converse. | `Mellin-Ckalph-suff` requires an additional compatible shifted derivative/Besov family. | conditional | The single $H^m$ boundary norm controls weighted logarithmic Sobolev regularity, not the required affine Hölder derivatives. | `calculations/10`, section 5.1 |
| 2g | The completed maximal affine range was declared onto by choosing a target topology. | Maximal `T1-aff` remains conditional and is frozen rather than closed by the candidate Hardy topology. | conditional | No common completed endpoint topology, uniform compatible interior estimate, or global inverse estimate has been proved. | `calculations/10`, sections 6--9; `12`, section 7 |
| 3a | The logarithmic Stokes result and an endpoint-extended Lee--Wald theorem were conflated. | `T2-log` is the zero-trace logarithmic CPS theorem. | proved | Stokes closure and the proper-gauge kernel hold on the declared logarithmic core and completion. | `calculations/04`, section 9; ledger row `T2-log` |
| 3b | The logarithmic result was promoted to endpoint-extended data. | `T2-aff` still requires the affine bulk range, cut topology, boundary conditions, polarization, and the representative $\theta\mapsto\theta+dY+\delta B$. | conditional | $dY$ changes the integrated symplectic form by a cut term; $\delta B$ can change the variational problem and allowed boundary data. | `calculations/04`, section 9.1; `08`, section 12; ledger row `T2-aff` |
| 4a | A chosen endpoint decomposition was presented as a universal bulk theorem and raw $a$ as the memory conjugate. | `T4-kin` is the fixed-switch logarithmic endpoint-value profile theorem; memory $m$ is conjugate to $\widehat a=a+2\ell_h(x)$. | proved | Direct substitution in the profile symplectic form gives the canonical pair and separates the radiative complement. | `calculations/08`, sections 4 and 11 |
| 4b | Changing the switch function was not tracked. | $h\mapsto h+k$ acts by the explicit canonical shear on $(x,\widehat a,m)$; the splitting is not invariant although the symplectic trace space is. | proved | The shear follows from equality of the same trace written in the two decompositions and preserves the canonical form. | `calculations/08`, section 4.3; `scripts/affine_horizon_checks.py` |
| 4c | Every kinematic endpoint/memory datum was treated as bulk-realizable. | `T4-bulk`, the maximal smooth-center and smooth-across-$B$ realized subspace, remains open. | conditional | `T1-aff(k,fixed-j)` supplies a finite-order subrange; the compatible full tower and completion remain conditional. | `calculations/08`, section 12; `10`--`12` |
| 5a | The master causal propagator was identified too quickly with the covariant Maxwell field-strength propagator. | Compact reduced sources have compact Maxwell two-form representatives with an explicit center-Cartesian solid-harmonic proof; the on-shell annihilator, cohomology, Lorenz Green lift, and commuting diagram are explicit. | proved | The polar $a^2$ factor cancels in the covariant two-form coefficient, while the regular $\rho^{j+1}$ jet makes $sY\,d\rho$ Cartesian smooth. | `calculations/11`, Lemmas 3.1--3.2 and sections 4--6 |
| 5c | Gauge independence assumed that different gauge-fixed responses already had the same curvature. | For co-closed compact $j$, $A_1^\pm=G_1^\pm j$ obeys $\delta A_1^\pm=0$ and solves every $P_\xi$; causal uniqueness gives $G_\xi^\pm j=G_1^\pm j$. | proved | Green operators commute with $\delta$ and the declared $P_\xi$ causal problem is unique. | `calculations/11`, Lemma 7.1 (`T3-gauge-uniq`) |
| 5b.1 | Peierls equality was not explicitly scoped to compact local observables. | `T3-local` holds on $\Omega_c^2(M)/\mathcal N_F$. | proved | The compact test-complex, causal Green diagram, and gauge-response lemma close the local quotient. | `calculations/06`, Theorem 8.1; `11`, section 8 |
| 5b.2 | The compact-local theorem was extended to sharp endpoint observables. | `T3-sharp` is not closed on the current CPS topology. | conditional | Sharp memory/cut functionals are neither compact local smearings nor continuous on the present logarithmic CPS completion. | `calculations/06`, section 8.4; `11`, section 9 |
| 6a | KMS was phrased as if the full abstract Weyl algebra had point-norm continuous static dynamics. | Generic nontrivial Weyl motion has norm distance two, so that full point-norm $C^*$-dynamical claim is false. | false | Distinct Weyl generators in the abstract CCR algebra are norm separated. | `calculations/05`, section 6; `07`, section 6 |
| 6b | The representation in which KMS is proved was not separated from the algebraic boundary relation. | `T5-W*` is the normal KMS theorem in the BD GNS von Neumann algebra at $\beta_t=2\pi L$; `T5-alg` is the dense analytic *-algebra boundary relation only. | proved | The BD covariance gives the strip/detailed-balance identity and normal weak-* continuous implemented dynamics in its GNS representation. | `calculations/07`, Theorem 8.1 and section 6 |
| 6c | `T1-log` was said to reconstruct a unique bulk two-point distribution from horizon data. | The global Euclidean/Hadamard state and the characteristic calculation give the same covariance on the local-observable algebra; distributional extension uses the global state input. | proved | `T1-log/T3-local` transport local observables but do not supply the missing global wavefront/extension theorem. | `calculations/07`, section 3 |
| 7 | A global potential $F=dA$ was combined with arbitrary nonzero magnetic Chern mean in the same linear tangent space. | The main project fixes the trivial, zero-Chern bundle.  Nonzero integer Chern classes require patchwise connections and transition functions and are external superselection sectors. | proved | A global one-form potential on $B^3$ gives exact $F$, hence zero magnetic flux; discrete bundle sectors are not tangent vectors at the trivial sector. | `calculations/01`, sections 1 and 5; `02`, section 14 |
| 8 | Polynomial harmonic losses were said to be absorbed without stating fixed-$s$ derivative loss. | Master $H^s$ data give normalized tangential radiation in $H^s$ but the normal electric/magnetic scalars in $H^{s-1}$; all field-strength components in $H^s$ require masters in $H^{s+1}$. | proved | The normal fields contain one factor $\sqrt{\lambda_j}$ relative to the normalized vector-harmonic radiation coefficient. | `calculations/00`, section 5.2; `02`, section 9; `03`, section 7.3; `10`, section 8 |
| 9a | The finite-$R$ stretched-horizon kernel was bundled with a completed limit. | `E-DtN` is the exact finite-$R$ kernel/positivity/asymptotic theorem. | proved | The Legendre-$Q_j$ formula and finite-$R$ operator statement are explicit. | `calculations/09`, sections 4--5; ledger row `E-DtN` |
| 9b | The finite-harmonic cut coefficient was presented as a completed phase-space isomorphism. | `E-cut` is only the normalized modewise/finite-harmonic coefficient identity. | proved | Direct coefficient comparison gives the cut form. | `calculations/09`, sections 8--9; ledger row `E-cut` |
| 9c | Reduction and the null limit were asserted to commute on completed phase spaces. | `E-limit` remains open; $T^*\mathfrak g_B'$ denotes only the linearized identity-component coefficient space. | conditional | No common ambient topology, symplectic/reduction convergence, bulk-compatible affine range, or treatment of global $U(1)$ periodicity has been supplied. | `calculations/09`, section 9; ledger row `E-limit` |
| 10 | README/TODO/roadmap implied calculations `00`--`09` and their theorem chain were all closed. | All project summaries now use the final fixed-$j$/full-tower/Mellin/gauge/KMS split and the freeze verdict. | proved | A repository-wide terminology/status audit is part of the final validation. | `README.md`; `TODO.md`; `roadmap.md`; `kill-test-audit.md`; `verification/CLAIM_LEDGER.md` |
| 11 | The project could be frozen or expanded before deciding the affine bulk range. | The kill test is complete: freeze static-patch mode work and return to two-intersecting-null-surfaces Maxwell composition; do not start SdS/Nariai from this lane. | proved | The fixed-$j$ pole/moment theorem survives, but no compatible full-tower interior theorem, analytic angular obstruction, completed phase space, or article novelty gate survives. | `kill-test-audit.md`; `calculations/12`, sections 7--8 |
| 12 | Finite scripts were allowed to stand in for function-space statements. | Regressions test the affine/log identities, partial fractions, moments/resonances, coefficient asymptotics, and finite large-$j$ stresses; analytic theorems remain separately proved or conditional. | proved | Every script and ledger row states its finite evidentiary boundary. | `scripts/affine_horizon_checks.py`; `scripts/incoming_affine_kernel_checks.py`; `scripts/README.md`; `verification/CLAIM_LEDGER.md` |

## What is now genuinely closed

- the action-first Maxwell reduction, master dictionary, Friedrichs spectral
  theory, exact scattering phase, and static Fock/Hamiltonian construction;
- raw logarithmic horizon reconstruction `T1-log` and zero-trace Lee--Wald
  equality `T2-log`, with fixed-$s$ angular loss made explicit;
- the compact local Maxwell test-complex, center-Cartesian lift,
  `T3-gauge-uniq`, and Peierls equality `T3-local`;
- the chosen logarithmic endpoint-value profile theorem `T4-kin`, including the shifted
  coordinate $\widehat a$ and switch shear;
- the normal BD GNS KMS theorem `T5-W*` and dense analytic `T5-alg` relation;
- the trivial-bundle $Q_E=Q_B=0$ and no-flat-holonomy results;
- finite-$R$ DEM DtN, edge scaling, strong-resolvent radiative limit, and the
  finite-harmonic cut-form coefficient identity;
- `Mellin-nec`, `Mellin-Sobolev-suff`, and the fixed-order modewise
  `T1-aff(k,fixed-j)` incoming-only pole/moment criterion.

## What remains conditional

- compatible `T1-aff(k,full tower)`, maximal completed `T1-aff`, and
  therefore maximal `T4-bulk`;
- `Mellin-Ckalph-suff`;
- endpoint-extended `T2-aff`;
- sharp endpoint/memory Peierls observables `T3-sharp`;
- completed stretched-horizon phase-space comparison `E-limit`;
- a patchwise nontrivial-bundle phase-space extension;
- the claim that the surviving affine compatibility is a publishable novelty.

## Continue or freeze

**Freeze.**  The fixed-$j$ pole/moment theorem is more than a relabeling of
`T1-log`, but the exact $S_j$ boundary estimate removes the pole-based evidence
for an analytic/Gevrey angular topology and leaves the compatible interior full
tower conditional.  This is not enough to justify a static-patch paper.
Preserve the directory as a calibrated logarithmic/fixed-mode reference and
return to the action-first composition of Maxwell data on two intersecting
null hypersurfaces.  Do not continue static-patch mode calculations and do
not start Schwarzschild--de Sitter or Nariai from this lane.
