# Global Closure Audit

## Verdict

**The core classical and B1 manuscript chain is closed under the following
precise conditions:** product background $\mathbb R^{1,1}\times S^2_R$,
trivial $U(1)$ bundle, $Q_E=n=0$, radiative $\ell\geq1$ tower, intrinsic
graph-fixed-point field-strength energy space, and the displayed dense
generator domains.

G-A, G-C--G-G are `proved`. G-B is `proved` on the fixed-asymptotic-frame
Schwartz potential core and `conditional` for an energy-completed potential
quotient. This conditional corollary does not block the primary field-strength
or B1 chain.

## Global theorem table

| ID | Verdict | Decisive evidence | Remaining boundary |
|---|---|---|---|
| G-A | `proved` | explicit intrinsic fixed-point target; literal Maxwell/master inverse; both restriction composites | zero modes/topology excluded |
| G-B | `proved` on Schwartz core; `conditional` at energy potential completion | massive smooth tails, fixed two-ended frames, $H^1_{\rm dR}(M)=0$ | potential Sobolev/asymptotic trace topology |
| G-C | `proved` | exact finite Stokes identity, $L^2$ massive tails, direct-sum dominated convergence, Maxwell pullback | uncontrolled Lee--Wald boundary representatives excluded |
| G-D | `proved` | spectral anti-Hermitian generators, separate time/space graph domains and tail limits, explicit Hamiltonians | charged infinity and $\ell=0$ excluded |
| G-E1 | `proved` | Green identity and Maxwell differential lift of the master Peierls kernel | compact gauge-invariant smearings |
| G-E2 | `proved` | L-F symplectic composition and complete interface trace | sharp endpoints/memory conditional |
| G-F-Weyl | `proved` | Weyl functor applied to G-C/L-F | no Hilbert factorization |
| G-F-dyn | `proved` | G-D symplectic groups induce Weyl automorphisms | no implementability claim |
| G-G | `proved` on global fixed-point subspace | literal restriction/gluing square and symplectic exhaustion | finite restriction is not onto all local data |

## Hamiltonian sign and domain audit

With $\iota_{\delta_X}\Omega=-\delta H_X$ and active translations,

$$
H_t=\sum\int\omega|a|^2,
\qquad
P_z=H_{\partial_z}=-\sum\int k|a|^2.
$$

$A_t=-i\omega$ is defined on the $\omega^3$ energy graph and $A_z=ik$ on
the $\omega k^2$ graph. The spatial tail proof is performed on its own domain;
it is not inferred by relabelling the time estimate. Rotations use the angular
generator graph. The algebra closes and the moment maps vanish at the zero
field, so there is no corner central term.

## Function-space audit

The target is not defined by transporting the bulk norm. Per harmonic and
polarization it is the graph-closed fixed-point space of the explicit
two-sheet transform $S_\mu T_\mu$. The Maxwell norm is computed after the
literal integral dictionary from $(r,p;E_0,b^0)$. Arbitrary matched
$H^1\oplus H^1$ data are not admitted.

The global primary theorem is on gauge-invariant field strengths. The
fixed-frame potential quotient is secondary. This avoids manufacturing an
onto theorem by choosing a target topology through $R_\infty$.

## Regression boundary

`global_horizon_exhaustion_checks.py` checks Schwartz packet tail decay,
finite-to-global symplectic convergence, deterministic finite spectral Hamiltonian matrices
and signs, generator algebra, the full-Maxwell/corner dictionary, and Weyl
functor independence from L-H-trans. It does not prove the $L^2$ tail theorem,
closed analysis/synthesis, dominated angular summation, or the potential
quotient.

## Manuscript-readiness verdict

**Correct under the precise conditions above: the project is ready for a
manuscript whose main claims are the Layer-L composition theorem and Layer-G
global characteristic/B1 theorem.**

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
