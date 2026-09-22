---
paper id: 2602.03663v2
title: "Dirac Observables for Gowdy Cosmologies regular at the Big Bang"
authors:
  - "Niedermaier, Max"
  - "Jafari, Mahdi Sedighi"
publication date: 2026-02-03
abstract: |-
  Gowdy cosmologies are exact, spatially inhomogeneous solutions of the vacuum Einstein equations which describe nonlinear gravitational waves coalescing at the Big Bang singularity. With toroidal spatial sections they provenly have the Asymptotic Velocity Domination property, in that close to the Big Bang dynamical spatial gradients fade out and the dynamics is governed by a Carroll-type gravity theory. Here we construct an infinite set of Dirac observables for Gowdy cosmologies, valid off-shell, strongly, and without gauge fixing. These observables stay regular at the Big Bang and can be matched to much simpler Dirac observables of the Carroll-type gravity theory. Conversely, in an adapted foliation there is a systematic anti-Newtonian expansion (in inverse powers of the reduced Newton constant) of the full Dirac observables whose leading terms are the Carroll ones. In particular, this provides an off-shell generalization of the Asymptotic Velocity Domination property.
comments: "v2: 73 pp.; exposition improved; material on the monodromy matrix added; to appear in SIGMA"
url: https://arxiv.org/abs/2602.03663v2
summary: "Reconstructs off-shell Gowdy and VD observables; independently falsifies the ordered-to-ordinary exponential step in the general toroidal proof."
tags: []
---

# Entry point: off-shell observables versus a singular metric

This paper is useful because it tries to make integrable-system conserved quantities into **strong Dirac observables before imposing Einstein's equations**. Its second question is whether those observables have a regular velocity-dominated (VD) limit when the Gowdy metric itself becomes singular. These are separate claims. Neither regular currents nor a regular observable limit extend the spacetime through the Big Bang.

**Verdict:** the local current algebra, VD geodesics and undressed VD periodic observables have independently checked components. The general noncommuting toroidal renormalized transport argument is **not established by the printed proof**: Appendix B.6 replaces an ordered exponential by an ordinary exponential, and a smooth off-shell counterexample below fails that equality. Results depending on that step are retained as conditional source claims.

Source: [version 2](https://arxiv.org/abs/2602.03663v2), 73 PDF pages; full TeX, text and section structure inspected. Today's context: [[2026_09_22_overview]].

# Complete structure and reading route

Printed page numbers:

- §1 Introduction, 2: strong off-shell observables and anti-Newtonian expansion.
- §2 Two spacelike Killing reduction, 5; §2.1 Hamiltonian action and gauges, 7; §2.2 linear system without gauge fixing, 12; §2.3 on-shell conserved quantities, 16.
- §3 Strong off-shell Dirac observables, 18; §3.1 spatial topology $\mathbb R\times T^2$, 19; §3.2 $T^3$, 28.
- §4 VD Gowdy, 33; §4.1 action and gauges, 33; §4.2 VD observables, 35; §4.3 anti-Newtonian expansion, 39; §4.4 on-shell asymptotically velocity-dominated (AVD) behavior, 43.
- §5 Conclusions, 47.
- Appendix A reduction and VD limit, 49; A.1 reduced Lagrangian symmetries, 51; A.2 scaling limit, 52.
- Appendix B toroidal renormalization, 55; B.1 transport, 55; B.2 $SL(2)$ orbits and projectors, 61; B.3 projected current and gauge invariance, 63.
- Appendix C off-shell monodromy, 67; references, 70–72.

**How to read:** first reconstruct §2 and the noncompact §3.1; then inspect B.6 before relying on §3.2. Read §4.1–2 separately from the dressed toroidal claim: the undressed periodic VD construction does not require that transport. Finally compare the kinematical expansion in §4.3 with actual solution asymptotics in §4.4. Appendices A/B/C respectively supply scaling, a problematic convergence argument, and a limitation of monodromy.

# Canonical reduction and the data that must survive

The block reduction assumes two commuting spacelike Killing directions and the Gowdy block form
$$
g=\gamma_{\mu\nu}dx^\mu dx^\nu+\rho M_{ab}dy^ady^b,
\qquad \gamma=e^{\widetilde\sigma}[-n^2dt^2+(dx+sdt)^2],
$$
$$
M={1\over\Delta}\begin{pmatrix}\Delta^2+\psi^2&\psi\\\psi&1\end{pmatrix},
\quad\Delta>0,\quad\rho>0,\quad\det M=1,
\quad\sigma=\widetilde\sigma+\tfrac12\log\rho.
$$
$n$ is a lapse antidensity, not the ADM lapse $e^{\widetilde\sigma/2}n$. The four canonical pairs are $(\Delta,\pi_\Delta),(\psi,\pi_\psi),(\rho,\pi_\rho),(\sigma,\pi_\sigma)$; momenta have density weight one. Keep $e_0=\partial_t-\mathcal L_s$, including the appropriate density action.

With source coupling $\lambda>0$ the constraint densities are
$$
H_0=-\lambda\pi_\sigma\pi_\rho-{\rho'\sigma'-2\rho''\over\lambda}
 +{\lambda\Delta^2\over2\rho}(\pi_\Delta^2+\pi_\psi^2)
 +{\rho\over2\lambda\Delta^2}[(\Delta')^2+(\psi')^2],
$$
$$
H_1=\pi_\rho\rho'+\pi_\sigma\sigma'-2\pi_\sigma'
       +\pi_\psi\psi'+\pi_\Delta\Delta'.
$$
The second derivative and density terms matter for gauge transformations. In particular
$$
\delta\rho=-\lambda\epsilon\pi_\sigma+\epsilon^1\rho',\qquad
\delta\pi_\sigma=-\lambda^{-1}(\epsilon\rho')'+(\epsilon^1\pi_\sigma)'.
$$
Define the nonlocal potential $\widetilde\rho'=-\pi_\sigma$, retaining its reference constant. Locally its variation is
$\delta\widetilde\rho=-\epsilon^1\pi_\sigma+\epsilon\rho'/\lambda$.
On the circle its zero mode $\pi_0^\sigma=\int_0^{2\pi}\pi_\sigma dx$ cannot be gauged away by declaring $\widetilde\rho$ periodic.

# Local linear system: why time conservation is not enough

Write
$$
J_0=\begin{pmatrix}
\Delta\pi_\Delta+\psi\pi_\psi&(\Delta^2-\psi^2)\pi_\psi-2\psi\Delta\pi_\Delta\\
\pi_\psi&-\Delta\pi_\Delta-\psi\pi_\psi
\end{pmatrix},
$$
$$
J_1={n\rho\over\lambda\Delta^2}
\begin{pmatrix}
\psi\psi'+\Delta\Delta'&(\Delta^2-\psi^2)\psi'-2\psi\Delta\Delta'\\
\psi'&-\psi\psi'-\Delta\Delta'
\end{pmatrix}.
$$
$J_0^2=\Delta^2(\pi_\Delta^2+\pi_\psi^2)I$ and $J_0^T=M^{-1}J_0M$. These are $M$-selfadjoint real matrices, not generally Euclidean symmetric matrices. $Q=\int J_0dx$ generates a global $SL(2)$ symmetry; it is not another gauge constraint.

Let $z=\theta+\widetilde\rho$, $S=(\lambda^2z^2-\rho^2)^{1/2}$, $\operatorname{Im}\theta\ne0$, and choose a consistent branch. The plus branch is
$$
L_1={\lambda\over2S}\left({\lambda z\over\rho n}J_1-J_0\right)
       -{\lambda J_1\over2\rho n},\qquad
L_0={\lambda\over2S}\left({\lambda zn\over\rho}J_0-J_1\right)
       -{\lambda nJ_0\over2\rho}.
$$
The source also uses the minus sign on the first term. The full spatial/time linear system is compatible on shell. The off-shell construction instead keeps only the right transport equation $\partial_xU=UL_1$ and proves the canonical gauge identity
$$
\delta L_1=\partial_xC+[L_1,C],\qquad
C={\epsilon\over n}L_0+\epsilon^1L_1.
$$
It implies $\delta T(x,y)=T(x,y)C(x)-C(y)T(x,y)$; this endpoint term, rather than flatness alone, determines whether an integrated observable is Dirac.

Differentiate in spectral parameter:
$$
K_0=2\partial_\theta L_1={\lambda^2\over S^3}
 (\lambda zJ_0-\rho J_1/n),\qquad
K_1=2\partial_\theta L_0={\lambda^2\over S^3}
 (\lambda zJ_1-\rho nJ_0).
$$
If the endpoint prescription actually yields $\delta U=UC$, the dressed currents $\mathcal J_\mu=UK_\mu U^{-1}$ obey
$$
\delta\mathcal J_0=\partial_x[\epsilon\mathcal J_1/n+\epsilon^1\mathcal J_0].
$$
This is the mechanism for a strong smeared constraint bracket. It remains necessary to justify endpoint limits, convergence and the allowed descriptors.

# Noncompact construction and the limits of monodromy

For $\mathbb R\times T^2$, §3.1 assumes decay sufficient for $U(x)=T(x,-\infty)$ and $\int\mathcal J_0dx$. The stated integrable-current estimates use $J_\mu=O(|x|^{-1-\delta})$ and a finite potential limit; spectral denominators and coefficients also need control. Compactly supported small-gauge descriptors remove the incoming $C$ term. Allowing the lapse as an improper descriptor requires its own boundary decay.

The resulting candidates are $\mathcal O^T=U(+\infty)$ and $\mathcal O=\int\mathcal J_0dx$. Ordered $1/\theta$ expansions preserve nested products: for example $L_{1,1}=-J_0/2$ and
$L_{1,2}=(\rho J_1/(\lambda n)+2\widetilde\rho J_0)/4$.
Their coefficients are not ordinary powers of integrated currents. Under $M(\pm\infty)=I$ the plus/minus solutions satisfy the source transpose relation, leaving the putative mixed monodromy trivial. Nontrivial asymptotic $M_\pm$ change that normalization. Neither infinitely many expressions nor spectral dependence proves independence, completeness or a reduced-phase-space coordinate system.

# Toroidal obstruction: the zero mode changes the problem

On $T^3$,
$$
\widetilde\rho(x+2\pi)=\widetilde\rho(x)-\pi_0^\sigma,\qquad
L_\mu(x+2\pi;\theta)=L_\mu(x;\theta-\pi_0^\sigma).
$$
Thus a one-period transport trace does not cancel its endpoint gauge terms at fixed $\theta$. For $\pi_0^\sigma\ne0$, the source proposes logarithmically renormalized incoming transport with
$$
\kappa_L(\theta)=\sum_{l=1}^L{1\over\theta+l\pi_0^\sigma},\quad
\partial_xT_L=T_LL_1,\quad T_L(-2\pi L)=e^{Q\kappa_L/2}.
$$
The logarithmic asymptotics of $\kappa_L$ follow from a digamma difference. Appendix B first subtracts the leading integrated $J_0$ tail. That subtraction is valid for an **ordinary integral**. The next equality B.6 asserts the renormalized past transport equals $e^{R_L}$ with $R_L$ that ordinary remainder integral. It discards both path ordering and counterterm BCH contributions.

## Failed: a smooth off-shell witness to B.6

Take the appendix normalization $\lambda=n=1$ and periodic canonical data
$$
\rho=\tfrac14,\quad\Delta=1,\quad\psi=0,\quad
\pi_\Delta=1,\quad\pi_\psi=\sin x,\quad\pi_\sigma={1\over2\pi}.
$$
Then $M=I$, $J_1=0$, $\pi_0^\sigma=1$, $\widetilde\rho=-x/(2\pi)$ and $J_0=A+\sin xB$, with $A=\mathrm{diag}(1,-1)$ and $B_{12}=B_{21}=1$. Set $\theta=2+i$, plus branch and $L=1$. This stays away from the branch singularity. Since the theorem is explicitly off shell, imposing $H_0=H_1=0$ is not required for this test.

The defining ODE B.17 gives
$$
T_1(0)=e^{\pi A/(3+i)}\,\mathcal P_R\exp\!\int_{-2\pi}^0
 {-A-\sin x B\over2\sqrt{(2+i-x/(2\pi))^2-1/16}}\,dx.
$$
B.6 instead gives the ordinary exponential of the sum of that integral and $\pi A/(3+i)$. Mathematica integration returns Frobenius difference **1.1929419041**. Independent Sage/SciPy DOP853 runs with tolerances $10^{-10}$ and $10^{-12}$ give **1.1929419037** and **1.19294190368**. The latter determinant differs from one by less than $8\times10^{-14}$; traceless transport is preserved. The discrepancy is not numerical roundoff.

This disproves the printed finite-$L$ equality. It does **not** by itself prove that every possible renormalized limit fails; an interaction-picture/ordered asymptotic construction would require a new argument. The claimed existence, quasi-periodicity and descendant gauge-invariance results must not be accepted from B.6 as written. PDF physical p.57, printed p.56, was visually checked to exclude an extraction artifact.

# What the orbit projection would establish conditionally

Assuming a correctly constructed $U$, set $q^2=\operatorname{tr}Q^2/2$. Boost, null and rotation sectors have different adjoint growth. For $q>0$, $P_\pm=(I\pm Q/q)/2$ project onto eigenspaces, and the full boundary gauge term scales as $L^{q/|\pi_0^\sigma|-1}$. Its vanishing needs $q<|\pi_0^\sigma|$. Rotation is bounded; a null orbit gives logarithmic factors.

The source contracts with nilpotent $\nu_\pm=P_\pm aP_\mp$ to annihilate the dangerous commutator before taking the trace, and then periodizes $\operatorname{tr}(\nu\mathcal J_0)$. This explains the intended relaxation of the boost bound. It still needs the existence and transformation law of $U$, convergence of the period sum and interchange with integration/gauge variation. Algebraic projectors need not be Hermitian orthogonal projectors. B.45's statement about the commutant of a nilpotent matrix needs restriction to traceless matrices; the identity also commutes in the full matrix algebra.

Appendix C additionally shows why one cannot transfer the noncompact two-ended monodromy prescription blindly to the torus: branch and zero-mode conditions at opposite ends conflict. These are topology and domain questions, not merely choices of notation.

# VD theory: a useful construction independent of the failed step

The VD limit removes spatial-gradient terms from $H_0$ but retains the spatial diffeomorphism constraint $H_1$:
$$
H_0^{\rm vd}=-\lambda\pi_\sigma\pi_\rho+
 {\lambda\Delta^2\over2\rho}(\pi_\Delta^2+\pi_\psi^2).
$$
Here $\delta_{\rm vd}J_0=\partial_x(\epsilon^1J_0)$ and $\delta_{\rm vd}\widetilde\rho=\epsilon^1\widetilde\rho'$. Therefore $J_0/(\theta+\widetilde\rho)^m$ transforms as a spatial density without a temporal-gauge term. On the line it supplies undressed observables under the appropriate decay. On the circle, $m\ge2$ gives an absolutely convergent periodization. For $m=2$,
$$
\sum_{l\in\mathbb Z}{1\over(z+l\pi_0^\sigma)^2}
 ={\pi^2\over(\pi_0^\sigma)^2}\csc^2{\pi z\over\pi_0^\sigma}.
$$
Higher sums follow by $(-1)^{m-2}\partial_\theta^{m-2}/(m-1)!$. These undressed VD expressions do not need Appendix B's ordinary-exponential substitution. Dressed VD observables use $U_{\rm vd}'=-U_{\rm vd}J_0/(2z)$ and inherit the noncommuting toroidal renormalization issue.

# Anti-Newtonian expansion: kinematics before dynamics

Appendix A scales $n\mapsto\ell^{-1}n$, $\lambda\mapsto\ell^3\lambda$, $\rho\mapsto\ell^2\rho$, $\sigma\mapsto\sigma+3\log\ell$, $\pi_\rho\mapsto\ell^{-2}\pi_\rho$, leaving the other canonical pairs fixed. It preserves the canonical pairing and gives $S=S_{\rm vd}-\ell^{-2}V$. The spectral expansion requires a uniform gap between $|\theta+\widetilde\rho|$ and $|\rho/\lambda|$; it is not convergence on the entire phase space.

On the branch with $\sqrt{z^2}\!=z$, $L_{1,0}=-J_0/(2z)$ and $K_{0,0}=J_0/z^2$. Writing $U=\sum\ell^{-2j}U_{2j}$ yields
$$
\partial_xU_{2j}-U_{2j}L_{1,0}
 =\sum_{k<j}U_{2k}L_{1,2j-2k}.
$$
Variation of constants determines the higher coefficients only after specifying the endpoint data. The current correction contains both $U_0K_{0,2}U_0^{-1}$ and $[U_2U_0^{-1},\mathcal J_{0,0}]$. Higher coefficients are not separately VD Dirac observables: their gauge identities mix with brackets involving $V$. This is an off-shell expansion of expressions; an AVD theorem about Einstein solutions needs additional estimates.

# On-shell AVD and what is regular at the Big Bang

In adapted variables $\rho=t=e^\tau$ and $\widetilde\rho=\zeta$, the VD hyperbolic-target geodesics are
$$
\Delta={a\over e^{v\tau}+b^2e^{-v\tau}},\qquad
\psi={ab\over b^2+e^{2v\tau}}+c,
\quad a>0,\quad v>0.
$$
The functions $a,b,c,v$ depend on $\zeta$. They satisfy
$$
\partial_\tau(\Delta_\tau/\Delta)+(\psi_\tau/\Delta)^2=0,
\quad\partial_\tau(\psi_\tau/\Delta^2)=0,
\quad{\Delta_\tau^2+\psi_\tau^2\over\Delta^2}=v^2.
$$
Consequently the normalized VD current is time independent and has $J_0^2=v^2I$, although $M$ becomes singular. Periodicity of the remaining metric function imposes a global integral constraint on asymptotic data; local geodesics alone do not solve that constraint.

The full equations in $P=-\log\Delta$, $Q_{\rm Gowdy}=\psi$ retain spatial terms multiplied by $e^{2\tau}$ and target factors $e^{2P}$. For nonzero spatial asymptotic derivatives the familiar low-velocity range $0<v<1$ controls their decay; spikes require separate treatment. A pointwise velocity bound does not automatically imply the global boost bound on $\int J_0$: these matrices are not generally symmetric in a fixed Euclidean inner product. Matching a conserved full observable to its VD limit also requires exchanging the limit and integral. The source does not establish completeness, the full observable Poisson algebra, quantum AVD behavior or extension of the singular geometry.

# Verification ledger and reusable conclusion

**Source-derived:** all main sections and appendices reconstructed in the order above; local gauge and convergence theorems are source claims unless a narrower independent check is identified.

**Checked:** Mathematica gives zero for $\det M-1$, the matrix residual $J_0^2-\Delta^2(\pi_\Delta^2+\pi_\psi^2)I$, and $J_0^T-M^{-1}J_0M$. Both spectral derivatives $2\partial_\theta L_\mu-K_{1-\mu}$ vanish. The regular-branch small-$\rho$ expansion has leading $-J_0/(2z)$; with $J_1=\rho j_1$, the next coefficient is $(-nJ_0+zj_1)/(4nz^3)$. The normalized bilateral sum evaluates to $\csc^2z$. All three VD geodesic residuals above vanish symbolically for real parameters with $a,v>0$.

**Failed:** Appendix B.6's finite transport equality fails the smooth noncommuting test, independently in Mathematica and Sage/SciPy. This is an obstruction to the printed general toroidal proof, not an established nonexistence theorem. A first Mathematica attempt used an unsuitable function-list setup and stopped near the initial point; its extrapolated output was discarded. The explicit four-function rerun succeeded and agreed with the independent solver.

**Blocked:** no retrieval blocker remains. Repairing the general ordered renormalization theorem is a new research task, not something the valid ordinary-integral estimate supplies.

**Not independently verified:** the complete functional Poisson calculation with the nonlocal reference prescription; global transport convergence after repair; all period-sum interchanges; functional independence/completeness; global AVD existence; quantum claims. No numerical solution of Einstein's equations was used.

**Verified:** local matrix identities, spectral differentiation, normalized periodic sum, VD ODEs, and a finite transport counterexample. **Assumptions:** positive target coordinates, specified branch/domain and topology, smooth periodic off-shell data for the counterexample, right-ordered transport. **Not verified:** a general $T^3$ Dirac-observable theorem.

For action-first phase-space work, the reusable lesson is concrete: keep the constraint-generated endpoint transformation, zero-mode shift and noncommuting transport together. A local Lax construction cannot by itself supply the global gauge-invariant observable.
