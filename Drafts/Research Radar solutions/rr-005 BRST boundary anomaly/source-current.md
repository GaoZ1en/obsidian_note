# A sourced one-loop normal-current test at the reflecting wall

## Result

**For the boundary domain in [solution.md](solution.md), the one-loop matter contribution to the sourced BRST current has zero normal boundary trace, and its gauge Ward anomaly is zero.** This holds to first order in the current source, with arbitrary allowed background connection and background ghost. It extends the determinant calculation to an actual current insertion.

The zero class and its consistency are controlled. The result in this file concerns a reflecting wall with no independent electric edge charge. The [charged-boundary supplement](charged-boundary-ward.md) separately treats multi-current contacts and a finite model with nonzero endpoint charges. Neither establishes a seam-removal limit.

## 1. Current from the action

Use the Lorentzian action and all boundary conditions of the companion note. After integrating the ghost term by parts, the gauge-fixing density is
$$
\mathcal L_{\rm gf}
=b\,\partial_\mu A^\mu+\frac{\xi}{2}b^2
+\partial_\mu\bar c\,\partial^\mu c.
$$
Its BRST variation is
$$
s\mathcal L_{\rm gf}
=\partial_\mu(b\,\partial^\mu c).
$$
Define the matter current with the explicit sign convention
$$
j^\mu=ie\left[\phi^*D^\mu\phi-(D^\mu\phi)^*\phi\right],
\qquad
\frac{\delta\mathcal L_{\rm matter}}{\delta A_\mu}=-j^\mu.
$$
The Noether prescription, including subtraction of the divergence in $s\mathcal L_{\rm gf}$, gives
$$
\boxed{
J_{\rm BRST}^\mu
=-F^{\mu\nu}\partial_\nu c+b\,\partial^\mu c+c\,j^\mu.
}
$$
The Maxwell equation in this convention is
$$
E_A^\mu=\partial_\nu F^{\nu\mu}-\partial^\mu b-j^\mu=0.
$$
Therefore the off-shell identity is
$$
J_{\rm BRST}^\mu
=-\partial_\nu(F^{\mu\nu}c)
+b\,\partial^\mu c-(\partial^\mu b)c-cE_A^\mu.
$$
On shell, the first term is the corner-charge divergence and the remaining term is the quartet current.

At a physical wall,
$$
F^{na}=0,\quad \partial_nc=\partial_nb=0,\quad\phi=0.
$$
Hence $n_\mu J^\mu_{\rm BRST}=0$ classically. The matter statement uses the trace of $\phi$, not a claim that its normal derivative vanishes.

## 2. Source the matter part explicitly

Introduce an external odd one-form $\eta_\mu$ of ghost number $-1$. Place it on the left in
$$
S_\eta=S+\int d^2x\,\eta_\mu J^\mu_{\rm BRST}.
$$
The product $\eta_\mu c$ is even. At linear order in $\eta$,
$$
S_{\rm matter}[A-\eta c,\phi]
=S_{\rm matter}[A,\phi]
+\int d^2x\,\eta_\mu c\,j^\mu+O(\eta^2).
$$
Thus the one-loop sourced matter functional at zero background scalar is not an unspecified composite insertion:
$$
\boxed{
\Gamma_{1,\delta}[A,\eta,c]
=\Gamma_{1,\delta}[A-\eta c]+O(\eta^2).
}
$$
The right-hand side is the ultraviolet-regulated Dirichlet determinant with collar weight one, expanded algebraically in the external source. The collar is introduced below as a smearing of this current; it is not simultaneously inserted as a second weight in its covariance. The connection shift applies only to the scalar Hessian, so it does not change the physical Maxwell boundary domain. The heat trace at zero source is trace class; its first source derivative is defined by the Duhamel formula for the heat operator. One need not call a Grassmann-valued operator positive or self-adjoint.

With left differentiation with respect to the odd source,
$$
\left.\frac{\delta^L\Gamma_1}{\delta\eta_\mu(x)}\right|_{\eta=0}
=-c(x)\frac{\delta\Gamma_1}{\delta A_\mu(x)}.
$$
This is precisely the $c\,j^\mu$ insertion in the stated current convention.

A neutral $\eta,c$ leaves ordinary Abelian background gauge covariance intact:
$A-\eta c\mapsto A-\eta c+d\lambda$. Differentiating the regulated covariance identity proves the gauge Ward identity with this insertion. It includes the connection dependence of the current; omitting that dependence would discard seagull/contact contributions.

At linear source order the free Abelian Maxwell/ghost sector has no field-dependent one-loop current correction. Its quadratic source vertices mix the free blocks and have zero one-insertion supertrace; linear source vertices are not loops. This statement is restricted to the background and source order just specified.

## 3. Boundary trace and collar statement

For fixed ultraviolet cutoff, let $G_\delta(x,y)$ be the smoothed scalar Green kernel. Its two arguments satisfy Dirichlet conditions:
$$
G_\delta(x,y)=0
\quad\text{if either }x\text{ or }y\text{ is on a wall}.
$$
Define the normal current by gauge-covariant point splitting with the two points separated tangentially along the same wall. Each term contains a derivative in one argument and an undifferentiated Dirichlet trace in the other. It therefore vanishes before taking coincidence:
$$
j^n_\delta\big|_{\partial M}=0.
$$
Multiplying by the background ghost gives the same result for the one-loop normal BRST-current insertion. The covariant local subtractions define its renormalized boundary trace to be zero. This is a concrete boundary normalization condition compatible with the regulated identity, not an inference from absence of a bulk anomaly alone.

For a collar weight with uniformly bounded total variation, at fixed $\delta>0$ the smoothed current is continuous and has zero normal trace. Therefore
$$
\lim_{\epsilon\to0}
\int d^2x\,(\partial_n\chi_\epsilon)J^n_\delta=0.
$$
This gives a controlled iterated prescription: remove the collar at fixed ultraviolet smoothing, then perform the boundary-normalized ultraviolet subtraction. Its result is independent of the collar profile in this class.

Separately, the *anomalous Ward remainder* is identically zero at every ultraviolet cutoff, including its first source derivative, by the covariance identity. Smearing this zero distribution with any smooth collar profile still gives zero. Its limit is therefore zero for any order of cutoff removal. This exact statement about the anomaly must not be confused with an unproved interchange of limits for the full current or effective action.

In the normal-current sector the codimension-one anomaly representative and its possible corner descendant may both be chosen zero:
$$
a^1_{\partial}=0,\qquad a^2_{\rm corner}=0,
\qquad
s a^1_{\partial}+d_{\partial}a^2_{\rm corner}=0.
$$
Allowed local changes of the current normalization can shift a representative by an exact term. They do not turn this zero class into a nonzero obstruction.

## 4. Verification and boundary of the answer

**Verified:** xAct gives a zero residual for the off-shell current/improvement identity, retaining the Maxwell equation term and its sign. Mathematica gives zero for the linear source/connection-shift identity. The determinant covariance computation is saved in the companion note. The Dirichlet kernel and collar arguments above supply the analytic boundary evidence; a finite matrix alone would not prove them.

**Assumptions:** the massive scalar, zero scalar background, reflecting Maxwell/ghost and Dirichlet matter domain; first order in the current source; gauge-covariant point splitting and local subtractions; the stated iterated prescription for the current itself. Ghosts are external backgrounds for the one-loop matter insertion.

**Not verified by this linear-insertion calculation:** multiple BRST-current contact terms or a boundary algebra carrying nonzero electric charges. The later [charged-boundary supplement](charged-boundary-ward.md) supplies the one-loop source hierarchy and a finite charged algebra separately. A full continuum charge-operator construction, continuation to other boundary domains, and seam removal remain unproved. The [requirement audit](requirements-audit.md) distinguishes these stronger continuations from the original one-loop anomaly criterion.
