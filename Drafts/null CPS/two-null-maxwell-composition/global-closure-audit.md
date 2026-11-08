# Global Closure Audit

## Verdict

**The theorem-draft core is closed under the following precise conditions:**
product background $\mathbb R^{1,1}\times S^2_R$, trivial $U(1)$ bundle,
$Q_E=n=0$, radiative $\ell\geq1$ tower, stationary-spectral intrinsic
graph-fixed-point field-strength energy space, the displayed dense generator
domains, and the radiative test quotient of calculation 16.

The primary field-strength/Poisson/Weyl chain is `proved`. The finite Peierls
statement is `proved` for the open causally convex regional theory and remains
`conditional` if a physical outer cut is promoted to a dynamical boundary.
G-B and potential exhaustion are `proved` on the fixed-frame Schwartz core
and `conditional` at energy-potential completion. These conditional secondary
corollaries do not block theorem drafting.

## Global theorem table

| ID | Verdict | Decisive evidence | Remaining boundary |
|---|---|---|---|
| G-A | `proved` | explicit stationary-spectral fixed-point range; literal Maxwell/master inverse; both restriction composites | zero modes/topology excluded |
| G-B | `proved` on Schwartz core; `conditional` at energy potential completion | massive smooth tails, fixed two-ended frames, $H^1_{\rm dR}(M)=0$ | potential Sobolev/asymptotic trace topology |
| G-C | `proved` | exact finite Stokes identity, $L^2$ massive tails, direct-sum dominated convergence, Maxwell pullback | fixed representative |
| G-C-amb-uniform | `proved` for $\mathscr Y_{\rm tr}^0$ | uniform $H^1$ trace estimate, uniformly bounded cut operators, density | arbitrary asymptotic/derivative-trace $Y$ conditional |
| G-D | `proved` | spectral anti-Hermitian generators, separate time/space graph domains and tail limits, explicit Hamiltonians | charged infinity and $\ell=0$ excluded |
| G-E1-rad-test | `proved` | $H_c^2(M)\simeq\mathbb R$ audit, explicit $\ell\geq1$ projection, on-shell annihilator, Maxwell/master Green lift | arbitrary compact two-forms excluded |
| G-E2a-Poisson | `proved` | L-F symplectic composition and complete interface trace | no autonomous Green claim used |
| G-E2b-finite-Peierls | `proved` on open regional theory | monotone $u,v$, causal convexity, global hyperbolicity, Green support and uniqueness | a closed/dynamical physical cut needs boundary conditions |
| G-F-Weyl | `proved` | Weyl functor applied to G-C/L-F | no Hilbert factorization |
| G-F-alg-dyn | `proved` | symplectic groups induce algebraic Weyl automorphisms | no norm-continuity inference |
| G-F-Cstar-norm-cont | `false` | universal Weyl distance is $2$ on distinct orbit points | fixed points only |
| G-F-rep-dyn | `proved` in stationary Fock/GNS | strong one-particle unitaries, stated graph domains, bosonic second quantization | not composition implementability |
| G-G-F | `proved` on global fixed-point subspace | literal field-strength restriction/gluing square and symplectic exhaustion | finite restriction is not onto all local data |
| G-G-A(reanchored) | `proved` on Schwartz core | explicit frame shifts preserve $F$, satisfy cocycle, and vanish toward the asymptotic anchor | energy-potential topology conditional |

## Hamiltonian sign and domain audit

With $\iota_{\delta_X}\Omega=-\delta H_X$ and active translations,

$$
H_t=\sum\int\omega|a|^2,
\qquad
H_{\partial_z}=-\sum\int k|a|^2.
$$

The standard passive momentum is
$P_z^{\rm std}=+\sum\int k|a|^2=H_{-\partial_z}$, not
$H_{\partial_z}$ in the active convention used here.

$A_t=-i\omega$ is defined on the $\omega^3$ energy graph and $A_z=ik$ on
the $\omega k^2$ graph. The spatial tail proof is performed on its own domain;
it is not inferred by relabelling the time estimate. Rotations use the angular
generator graph. The algebra closes and the moment maps vanish at the zero
field, so there is no corner central term.

## Function-space audit

The target is not defined by transporting the bulk norm. Per harmonic and
polarization it is the graph-closed fixed-point space of the explicit
two-sheet transform $S_\mu T_\mu$. It is stationary-spectral intrinsic: it
does not use the bulk restriction map, but it does use the product background
and mass-shell Fourier transform. The Maxwell norm is computed after the
literal integral dictionary from $(r,p;E_0,b^0)$. Arbitrary matched
$H^1\oplus H^1$ data are not admitted.

$X_\infty$ is a bifurcate characteristic surface, not an ordinary
causal-theory Cauchy hypersurface. Arbitrary matched half-ray data give a local
future-quadrant Goursat solution; only the fixed-point subspace represents a
global finite-energy solution.

The global primary theorem is on gauge-invariant field strengths. The
fixed-frame potential quotient is secondary. This avoids manufacturing an
onto theorem by choosing a target topology through $R_\infty$.

## Regression boundary

`global_horizon_exhaustion_checks.py` checks Schwartz packet tail decay,
finite-to-global symplectic convergence, deterministic finite spectral
Hamiltonian matrices and signs, generator algebra, the full-Maxwell/corner
dictionary, and Weyl functor independence from L-H-trans.
`global_repair_regressions.py` checks finite radiative projection, sampled
causal monotonicity, a finite trace-bound witness, the re-anchoring cocycle,
and a finite Weyl discontinuity witness. Neither script proves compact-support
cohomology, the $L^2$ tail theorem, Green uniqueness, closed
analysis/synthesis, continuum uniform boundedness, the universal $C^*$ norm
theorem, dominated angular summation, or the potential quotient.

## Final repair questions

### a) Is the G-E1 test quotient closed?

**Correct.** G-E1-rad-test now acts on
$\mathcal T_F^{\rm rad}=\Omega_c^2(M)/\mathcal N_F^{\rm rad}$. The
annihilator contains $\ker\Pi_{\ell\geq1}$, the master-adjoint kernel, and all
tests mapped into $K_{\lambda_\ell}C_c^\infty$. The nonzero
$H_c^2(M)\simeq\mathbb R$ class is spherical $\ell=0$ and is explicitly
removed. $E_F^{\rm rad}=\mathcal D(\oplus E_\ell)\mathcal D^\dagger$ is
well-defined on this quotient and agrees with both characteristic and bulk
Maxwell Peierls brackets.

### b) Is finite Peierls genuinely autonomous and causally convex?

**Correct under the following precise condition:** the region is the open
product rectangle or open characteristic triangle and the radiative smearing
has compact support inside it. Monotone $u,v$ prove causal convexity; compact
regional diamonds prove global hyperbolicity; support plus uniqueness prove
$G_O^\pm h=(G_M^\pm h)|_O$. If the physical outer cut is included as a
dynamical boundary, the statement is `conditional` on a specified boundary
Green problem.

### c) Does the ambiguity limit have a uniform bound?

**Correct for the restricted class $\mathscr Y_{\rm tr}^0$.** The bound
$\sup_T|C_T^Y|\leq C_Y\|x_1\|_E\|x_2\|_E$ follows from the uniform half-ray
$H^1$ point trace and $\sup_T\|B_T\|<\infty$. Core vanishing then extends by
density. Arbitrary asymptotic $Y$, derivative point traces, and energy-level
potential traces remain `conditional`. Fixed-representative G-C remains
`proved`.

### d) Is potential exhaustion only up to re-anchoring?

**Correct.** G-G-F is literal restriction. G-G-A(reanchored) uses
$r_{T_2,T_1}$, a constant-generator frame shift preserving $F$ and satisfying
the cocycle. Its asymptotic correction vanishes on the Schwartz core when the
lower cut also tends to infinity; it need not vanish if $T_1$ is fixed.

### e) What are the three Weyl-dynamics levels?

G-F-alg-dyn is `proved`; G-F-Cstar-norm-cont is `false` on nontrivial
universal Weyl orbits; G-F-rep-dyn is `proved` only in the stated stationary
Fock/GNS representation with one-particle graph domains and
$\mathcal D(d\Gamma(h_X))$. No composition-map implementability is inferred.

### f) Can the core theorem chain enter formal manuscript drafting?

**Yes.** M-theorem-draft has a closed core chain with the scopes above. This
is a readiness assessment, not a mathematical theorem status.

### g) What blockers remain?

No mathematical blocker remains for the scoped primary field-strength/B1
theorem draft. Submission remains blocked by a primary-source novelty audit
and manuscript integration of the imported read-only analytic lemmas. The
energy potential quotient, arbitrary Lee--Wald ambiguity, closed-cut boundary
theory, and endpoint/charged extensions remain mathematical conditionals but
are not part of the scoped core theorem.

## Readiness verdict

**M-theorem-draft: yes.** The project can now draft the Layer-L composition
theorem and Layer-G global characteristic/B1 theorem under the precise scopes
above.

**M-submission-ready: conditional.** Before submission, every imported
read-only sibling analytic lemma must be integrated into the manuscript body
or appendix, or replaced by a public primary-source citation. An internal
relative path is not final proof. The primary-source novelty audit must also
be completed.

Recommended main line:

1. finite double-null Maxwell composition and corner reduction;
2. complete future bifurcate horizon as the global characteristic phase space;
3. global Hamiltonians recovered only after complete-horizon exhaustion;
4. Peierls and Weyl B1 composition;
5. zero modes, topology, potential completion, and charged frames as explicit
   boundaries.

The manuscript must not claim an energy-completed potential quotient, Hilbert
tensor factorization, partial trace, Fock implementability from composition,
charged large-gauge dynamics, or an exhaustive novelty theorem. GitHub index
and Research Radar work remain deferred by user instruction.
