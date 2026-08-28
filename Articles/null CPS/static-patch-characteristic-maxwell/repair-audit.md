# Repair Audit

Date: 2026-08-28.

## Verdict

The zero-trace logarithmic radiation-field chain is closed; the maximal
affine horizon/corner range is not.  The repaired project therefore closes a
precise static/logarithmic theory and a finite-order affine theorem, but it
does not close the completed endpoint-extended phase space.

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
| 2a | Logarithmic Schwartz decay or finite static energy was treated as sufficient for affine smoothness. | $f(v)=\exp[-(1+v^2)^{1/4}]$ is Schwartz, while $e^v|f'(v)|\to\infty$, so $F_{VA}=e^vF_{vA}$ need not even have a finite affine trace. | proved | Polynomial decay of every order is weaker than the exponential endpoint hierarchy induced by $V=-e^{-v}$. | `calculations/10`, section 4; `scripts/affine_horizon_checks.py` |
| 2b | No exact finite-order affine function-space criterion was stated. | $r^{\rm aff}$ is $C^k$ at $V=0$ iff $e^{(n+1)v}\prod_{q=1}^n(\partial_v+q)\mathfrak r$ has a finite limit for $0\leq n\leq k$; the master analogue uses $e^{nv}\prod_{q=0}^{n-1}(\partial_v+q)f$. | proved | Repeatedly applying $\partial_V=e^v\partial_v$ gives the exact weighted-derivative operators. | `calculations/10`, Theorems 3.1 and 3.2 |
| 2c | Incoming affine regularity alone was tacitly identified with smoothness through the bifurcation sphere. | For each fixed mode and order, smooth extension through $B$ requires the incoming $v\to+\infty$ hierarchy and the outgoing $u\to-\infty$ hierarchy after $c\mapsto S_jc$, together with the corner matching implied by the Kruskal master equation. | proved | In Kruskal variables, $\partial_U\partial_V\Psi+\lambda_j(1+UV)^{-2}\Psi=0$ is a regular Goursat equation at $B$. | `calculations/10`, Theorem 6.1 |
| 2d | The completed maximal affine range was declared onto by choosing a target topology. | `T1-aff` is the still-open maximal fixed-Sobolev two-ended Mellin--Hardy range problem. | conditional | A common completed topology, uniform angular estimates for the full affine hierarchy, and the global inverse estimate have not been proved. | `calculations/10`, sections 6--9; `verification/CLAIM_LEDGER.md`, `T1-aff` |
| 3 | The logarithmic Stokes result and an endpoint-extended Lee--Wald theorem were conflated. | `T2-log` is proved on the zero-trace logarithmic CPS; `T2-aff` is conditional and must fix the affine bulk range, cut topology, boundary conditions, polarization, and the representative $\theta\mapsto\theta+dY+\delta B$. | `T2-log`: proved; `T2-aff`: conditional | $dY$ changes the integrated symplectic form by a cut term; $\delta B$ has vanishing field-space curl for fixed fields but can change the variational problem and allowed boundary data. | `calculations/04`, sections 9--9.1; `08`, section 12; ledger rows `T2-log`, `T2-aff` |
| 4a | A chosen endpoint decomposition was presented as a universal bulk theorem and raw $a$ as the memory conjugate. | `T4-kin` is the fixed-switch trace-space theorem; memory $m$ is conjugate to $\widehat a=a+2\ell_h(x)$. | proved | Direct substitution in the trace symplectic form gives the canonical pair and separates the radiative complement. | `calculations/08`, sections 4 and 11 |
| 4b | Changing the switch function was not tracked. | $h\mapsto h+k$ acts by the explicit canonical shear on $(x,\widehat a,m)$; the splitting is not invariant although the symplectic trace space is. | proved | The shear follows from equality of the same trace written in the two decompositions and preserves the canonical form. | `calculations/08`, section 4.3; `scripts/affine_horizon_checks.py` |
| 4c | Every kinematic endpoint/memory datum was treated as bulk-realizable. | `T4-bulk`, the maximal smooth-center and smooth-across-$B$ realized subspace, remains open. | conditional | `T1-aff(k)` supplies a finite-order subrange but not the completed maximal range. | `calculations/08`, section 12; `10`, sections 6--9 |
| 5a | The master causal propagator was identified too quickly with the covariant Maxwell field-strength propagator. | Compact reduced master sources have compact Maxwell two-form representatives with center regularity and rapid angular control; the on-shell annihilator, compact-support topology, Lorenz Green lift, commuting diagram, and gauge independence are explicit. | proved | Modewise lifts are summed only on the compact smooth test space; $M\simeq\mathbb R^4$ removes the relevant compact-support cohomology obstruction, and the difference of gauge-fixed lifts is exact on gauge-invariant smearings. | `calculations/11`, sections 3--8 |
| 5b | Peierls equality was stated without separating compact local and sharp endpoint observables. | `T3-local` is proved on $\Omega_c^2(M)/\mathcal N_F$; `T3-sharp` remains conditional. | `T3-local`: proved; `T3-sharp`: conditional | Sharp memory/cut functionals are neither compact local smearings nor continuous on the present logarithmic CPS completion. | `calculations/06`, Theorem 8.1 and section 8.4; `11`, sections 8--9 |
| 6a | KMS was phrased as if the full abstract Weyl algebra had point-norm continuous static dynamics. | Generic nontrivial Weyl motion has norm distance two, so that full point-norm $C^*$-dynamical claim is false. | false | Distinct Weyl generators in the abstract CCR algebra are norm separated. | `calculations/05`, section 6; `07`, section 6 |
| 6b | The representation in which KMS is proved was not separated from the algebraic boundary relation. | `T5-W*` is the normal KMS theorem in the BD GNS von Neumann algebra at $\beta_t=2\pi L$; `T5-C*` is the dense analytic *-algebra boundary relation only. | proved | The BD covariance gives the strip/detailed-balance identity and normal weak-* continuous implemented dynamics in its GNS representation. | `calculations/07`, Theorem 8.1 and section 6 |
| 7 | A global potential $F=dA$ was combined with arbitrary nonzero magnetic Chern mean in the same linear tangent space. | The main project fixes the trivial, zero-Chern bundle.  Nonzero integer Chern classes require patchwise connections and transition functions and are external superselection sectors. | proved | A global one-form potential on $B^3$ gives exact $F$, hence zero magnetic flux; discrete bundle sectors are not tangent vectors at the trivial sector. | `calculations/01`, sections 1 and 5; `02`, section 14 |
| 8 | Polynomial harmonic losses were said to be absorbed without stating fixed-$s$ derivative loss. | Master $H^s$ data give normalized tangential radiation in $H^s$ but the normal electric/magnetic scalars in $H^{s-1}$; all field-strength components in $H^s$ require masters in $H^{s+1}$. | proved | The normal fields contain one factor $\sqrt{\lambda_j}$ relative to the normalized vector-harmonic radiation coefficient. | `calculations/00`, section 5.2; `02`, section 9; `03`, section 7.3; `10`, section 7 |
| 9 | The stretched-horizon reduction/null limit was boxed as a completed phase-space isomorphism differing exactly by $T^*G_B'$. | `E-DtN` and modewise finite-harmonic `E-cut` are proved; completed `E-limit` is conditional.  $T^*\mathfrak g_B'$ denotes only the linearized identity-component coefficient space. | `E-DtN`: proved; `E-cut`: proved; `E-limit`: conditional | No common ambient topology, symplectic/reduction convergence, bulk-compatible affine range, or treatment of global $U(1)$ periodicity has been supplied. | `calculations/09`, sections 4--10; ledger rows `E-DtN`, `E-cut`, `E-limit` |
| 10 | README/TODO/roadmap implied calculations `00`--`09` and their theorem chain were all closed. | All project summaries now use the split statuses recorded in the authoritative ledger; open tasks are unchecked. | proved | A repository-wide terminology/status audit found no remaining unsplit closure claim. | `README.md`; `TODO.md`; `roadmap.md`; `verification/CLAIM_LEDGER.md` |
| 11 | The project could be frozen or expanded before deciding the affine bulk range. | Continue only the `T1-aff/T4-bulk` kill test.  Freeze if it reduces to the known global-horizon smoothness theorem; retain only if a nontrivial $S_j$-dependent completed Mellin--Hardy/corner compatibility theorem survives. | conditional | The finite-order two-ended criterion is nontrivial, but maximal completion and novelty are not established. | `calculations/10`, section 9; `literature/literature-comparison.md`, sections 10--11; `roadmap.md`, publication gate |
| 12 | Finite scripts were allowed to stand in for function-space statements. | New regressions test the affine/log component identity, weighted derivatives, Mellin residues, the Schwartz counterexample, angular loss, and switch shear; analytic theorems remain separately proved or conditional. | proved | Every script and ledger row now states its finite evidentiary boundary. | `scripts/affine_horizon_checks.py`; `scripts/README.md`; `verification/CLAIM_LEDGER.md` |

## What is now genuinely closed

- the action-first Maxwell reduction, master dictionary, Friedrichs spectral
  theory, exact scattering phase, and static Fock/Hamiltonian construction;
- raw logarithmic horizon reconstruction `T1-log` and zero-trace Lee--Wald
  equality `T2-log`, with fixed-$s$ angular loss made explicit;
- the compact local Maxwell test-complex and Peierls equality `T3-local`;
- the chosen trace-space canonical theorem `T4-kin`, including the shifted
  coordinate $\widehat a$ and switch shear;
- the normal BD GNS KMS theorem `T5-W*` and dense analytic `T5-C*` relation;
- the trivial-bundle $Q_E=Q_B=0$ and no-flat-holonomy results;
- finite-$R$ DEM DtN, edge scaling, strong-resolvent radiative limit, and the
  finite-harmonic cut-form coefficient identity;
- the finite-order, modewise/rapid-angular `T1-aff(k)` criterion.

## What remains conditional

- maximal completed `T1-aff` and therefore maximal `T4-bulk`;
- endpoint-extended `T2-aff`;
- sharp endpoint/memory Peierls observables `T3-sharp`;
- completed stretched-horizon phase-space comparison `E-limit`;
- a patchwise nontrivial-bundle phase-space extension;
- the claim that the surviving affine compatibility is a publishable novelty.

## Continue or freeze

Do not open a Schwarzschild--de Sitter main project yet.  The only justified
continuation here is the narrow `T1-aff/T4-bulk` kill test.  The present
finite-order result is more than a relabeling of `T1-log` because it imposes a
two-ended $S_j$-dependent condition and corner matching.  It is not yet enough
to justify a paper.  If no completed nontrivial Mellin--Hardy range follows,
freeze the static-patch project as a calibrated closed logarithmic theory and
then pivot to Schwarzschild--de Sitter.

