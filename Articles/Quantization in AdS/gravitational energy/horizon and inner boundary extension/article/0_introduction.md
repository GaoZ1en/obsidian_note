## Introduction

Covariant phase space (CPS) turns a spacetime symmetry into a Hamiltonian on the space of solutions.  In gravity this construction is inseparable from the variational problem: boundary Lagrangians, corner potentials, boundary conditions, and the choice of gauge quotient all enter the integrated symplectic form.  This is particularly important for a partial Cauchy surface whose boundary contains both an asymptotic cut and a horizon or extremal surface.  A diffeomorphism that is pure gauge on a complete Cauchy surface can act nontrivially at the new inner boundary, while a formal integration by parts can move finite information between the bulk current, the horizon cut, and the endpoint potential.

The finite-action formulation of CPS makes these issues explicit \cite{Harlow:2019yfa}.  Rather than adding a surface charge after constructing a bulk symplectic current, one starts from a differentiable action with all timelike-boundary and corner terms retained.  The integrated pre-symplectic potential is then read from the complete first variation, and a diffeomorphism generator is defined by the off-shell identity

$$\begin{align}
H_\xi=X_\xi\mathbin{\cdot}\theta-\alpha_\xi .
\end{align}$$

For asymptotically AdS$_3$ gravity without an inner boundary, this prescription gives coefficientwise agreement between the perturbative CPS charge and the background-subtracted Brown--York charge through quadratic order in the first-order graviton \cite{Chen:2026bulkboundary,Gao:2026graviton}.  The purpose of this paper is to extend that same prescription to a partial Cauchy surface

$$\begin{align}
\partial\Sigma=C_\infty\sqcup(-\gamma),
\end{align}$$

where $C_\infty$ is an asymptotic cut and $\gamma$ is a compact bifurcation surface or an anchored Ryu--Takayanagi (RT) geodesic.  We work in vacuum Einstein gravity with unit AdS radius, Brown--Henneaux boundary conditions \cite{Brown:1986nw}, and an exact background Killing field $\xi$ whose bifurcation surface is $\gamma$.  The metric is expanded as

$$\begin{align}
g_{\mu\nu}
=G_{\mu\nu}+\kappa_{\rm p}h_{\mu\nu}
+\kappa_{\rm p}^{2}k_{\mu\nu}+O(\kappa_{\rm p}^{3}),
\qquad \kappa_{\rm p}^{2}=8\pi G .
\end{align}$$

The main result is a classical, second-order subregion identity on the complete linear Brown--Henneaux metric tangent space.  For either chirality, let $f\in H^\sigma(S^1)$ label a Brown--Henneaux generator and quotient by the three background $\mathfrak{sl}(2,\mathbb R)$ Killing directions.  For $\sigma>5/2$ we prove

$$\begin{align}
\delta^2H_\xi^\infty
&=\frac{s_\xi}{2\pi}\,
\delta^2\!\left(\frac{A[g,\gamma]}{4G}\right)
+E_{{\rm can,p}}(P_{\rm HW}h) \label{eq:intro-main-hw}\\
&=\frac{s_\xi}{2\pi}\,
\delta^2\!\left(\frac{A[g,\gamma]}{4G}\right)
+E_{{\rm can,p}}[h]
+\int_\gamma\Upsilon_{\rm p}[h,V[h]] .
\end{align}$$

Here $s_\xi$ is fixed by $\nabla_\mu\xi_\nu=s_\xi\epsilon_{\mu\nu}$ on $\gamma$, $P_{\rm HW}$ is the field-dependent extremal/Hollands--Wald section, and $\Upsilon_{\rm p}$ is the finite-action horizon cocycle associated with that section.  The two lines are equivalent: the first evaluates canonical energy in a fixed-surface extremal representative, while the second keeps an arbitrary representative and restores section independence with the corner term.  The cocycle $\Upsilon_{\rm p}$ is not separately a gauge-invariant observable, and it depends on the section and ambient extension used to represent the displacement.  Only the completed combination is independent of an admissible proper section change.  Our symplectic-current convention is the negative of that used in Ref. \cite{ColinEllerin:2025gravitons}, so $\omega_{\rm p}=-\omega_{\rm CELP}$ and $\Upsilon_{\rm p}=-\Upsilon_{\rm CELP}$; the completed energy is the same physical quadratic form.

Several ingredients are needed for (\ref{eq:intro-main-hw}).  First, we regulate the inner boundary by a timelike brick wall and derive the outer-minus-inner Hamiltonian identity from a single finite action.  The constraints are removed by the equations of motion, whereas source and regulator flux are removed only by the declared boundary polarization and uniform limit.  Second, we distinguish a Harlow--Wu endpoint one-form from a Hayward joint action; they belong to different variational data and cannot be identified.  Third, we introduce a moving embedding $X$ and pull back the complete action.  For a relabelling $w$ tangent to the enlarged boundary-source data, $(\mathcal L_wg,-w)$ is an exact null direction of the extended presymplectic form.  On the source-fixed physical phase space we quotient only the proper subalgebra: transformations that preserve the asymptotic sources and frame and carry no asymptotic charge.  Brown--Henneaux large diffeomorphisms are not in this quotient.  The pullback constructs an extended presymplectic geometry; existence of a differentiable Hamiltonian polarization is an additional problem \cite{Donnelly:2016auv,Speranza:2017guc}.  We prove such a polarization for a stationary compact family, while the AdS-Rindler construction instead retains the finite-regulator source data and proves that the complete flux vanishes in the linked limit.  Fourth, an explicit linked regulator controls the wall, joint, outer-cutoff, and anchor-transition terms in the AdS-Rindler wedge.

The regulator theorem is an open class rather than a single numerical path.  Writing $L=M^\alpha$, $y=\tanh(\epsilon/2)=\tfrac12M^{-\beta}$, and $R=M^\gamma$, all proved monomial bounds are compatible with $\alpha>7/2$, $\beta>0$, and $\gamma>2\alpha+3$.  The present exact finite-wall kernel closes that region on the proved linked slice $\beta=\alpha$; a two-parameter wall majorant for independent $\beta$ is not claimed.  Any two schedules in the proved class, and any two tapers separately obeying the same uniform kernel bounds, give the same limiting form.

We also include a genuinely propagating higher-dimensional diagnostic.  A transverse-traceless wave in a $D\geq4$ local Rindler collar has vanishing Harlow--Wu and orthogonal-joint terms, and its GHY/Brown--York symplectic flux is $O(\epsilon)$ on a compact boost-time slab.  The same wall limit is a generally nonzero null-horizon flux when the slab endpoints scale so as to reach separated horizon cuts.  Thus extremal/HW gauge and regularity do not by themselves select a finite-wall polarization or prove the absence of a horizon Hamiltonian for general radiative evolution.  This diagnostic is not a $d>2$ extension of the AdS$_3$ theorem.

The endpoint problem has a simple geometric resolution.  A Brown--Henneaux generator is defined only modulo the global AdS Killing vectors.  On a symmetric interval $A=(-a,a)$, $0<a<\pi/2$, the representative

$$\begin{align}
P_{\rm PSL}f
=f-\frac{f(a)+f(-a)}{2\cos a}\cos\phi
-\frac{f(a)-f(-a)}{2\sin a}\sin\phi \label{eq:intro-psl}
\end{align}$$

vanishes at both anchors but produces exactly the same metric perturbation.  It is therefore a reducibility section, not a projection onto a smaller physical sector.  This removes the apparent unprojected anchor pole without adding a charged boundary frame.

Finally, the completed quadratic form admits a manifestly positive expression.  Map $A$ to the half-line, write its logarithmic coordinate as $s$, put $f_0=P_{\rm PSL}f$, and divide by the interval modular weight $w_A$.  With $F_f=f_0/w_A$,

$$\begin{align}
E_{{\rm can,p}}[h[f]]
=\frac1{8G}\int_{\mathbb R}
\left[(F_f')^2+(F_f'')^2\right]\,\mathrm ds .
\end{align}$$

Its kernel is exactly $\mathfrak{sl}(2,\mathbb R)$, so it is strictly positive on the metric tangent quotient.  The separated canonical-energy-plus-corner chart requires $\sigma>5/2$ because it contains pointwise second-derivative data at the anchors.  The combined positive form has a unique continuous closure to the endpoint-fixed $H^2$ section, has no continuous extension to $H^r$ for $r<2$, and is not coercive in the ordinary $H^2$ norm.

The result is deliberately classical and linearized.  It is an action-derived AdS$_3$ calibration of the classical subregion charge relation discussed in Ref. \cite{ColinEllerin:2025gravitons}, but it does not construct a von Neumann algebra, a modular crossed product, graviton entropy, or quantum JLMS.  It also does not assert a universal nonlinear polarization for arbitrary wavy horizons or a theorem for propagating gravitons in $d>2$.

The paper is organized as follows.  Section \ref{sec:finite-action-cps} constructs the regulated variational problem and its integrated symplectic structure.  Section \ref{sec:horizon-identity} derives the horizon area identity and arbitrary-gauge completion.  Section \ref{sec:moving-boundary} gives the action-derived moving-embedding phase space.  Section \ref{sec:benchmarks} presents compact BTZ and AdS-Rindler benchmarks.  Section \ref{sec:brown-henneaux-theorem} proves the full Brown--Henneaux quotient theorem and slice covariance.  Section \ref{sec:positivity} derives positivity and the optimal ordinary Sobolev threshold.  Technical variations, area expansions, and regulator estimates are collected in Appendices \ref{app:finite-action-details}--\ref{app:regulator-estimates}; Appendix \ref{app:checks} records conventions and checks, and Appendix \ref{app:higher-dimensional-rindler} gives the separate radiative diagnostic.
