---
paper id: 2610.15737v1
title: Higher Dressing and Shift-Invariance in 4D Topological BF Theory
authors:
- François, J.
- Ravera, L.
publication date: 2026/10/11
abstract: A characteristic feature of topological field theories is the absence of local propagating degrees of freedom. In four-dimensional BF theory with cosmological term, we make this feature manifest by exactly reducing the finite non-Abelian shift symmetry. We do so by identifying a higher dressing field, a 1-form compensating the shift, allowing to build from first principles the composite shift-invariant field $\boldsymbol{B}=B-\lambda^{-1}F$. In terms of this dressed field, the dynamics becomes algebraic and sets $\boldsymbol{B}=0$, directly exposing the absence of local propagating degrees of freedom. This provides the first explicit instance of the higher-form Dressing Field Method.
comments: 5 pages
url: https://arxiv.org/abs/2610.15737v1
summary: Finite BF shift reduction leaves an algebraic bulk variable, but its printed cocycle identity requires a corner exact term and global characteristic data must be retained.
tags: []
---

# Higher Dressing, the BF Bulk Quotient, and Its Boundary Remainder

## Result and Direct Use

For the four-dimensional action

$$\begin{align}
L(A,B)=\operatorname{Tr}\left(B\wedge F-\frac{\lambda}{2}B\wedge B\right),\qquad F=dA+A\wedge A,\quad\lambda\ne0,
\end{align}$$

the finite shift-invariant variable is

$$\begin{align}
\boldsymbol B=B-\lambda^{-1}F.
\end{align}$$

The local shift quotient has algebraic equation $\boldsymbol B=0$. This is a particularly explicit test of eliminating a gauge redundancy before discussing regional observables. It does **not** eliminate possible boundary degrees of freedom or prove that the globally defined bare and reduced actions have the same de Rham class.

The finite transformation and bulk reduction pass independent graded-form checks. The printed three-form identity (24) needs an exact correction:

$$\begin{align}
b(u;A)^\eta=b(u;A)-b(\eta;A)+\frac12d\operatorname{Tr}(A\wedge\eta).
\end{align}$$

Its exterior derivative vanishes, so the four-form Lagrangian identity survives. This distinction matters precisely when the three-dimensional boundary itself has corners.

## Source Map and Conventions

Source: [arXiv:2610.15737v1](https://arxiv.org/abs/2610.15737v1), five PDF pages. The versioned PDF and TeX were inspected throughout; formulas (6)–(27) were visually checked on PDF pages 2–3, with the final algebraic equation and qualifications read on page 4.

| Source | Role in the argument | Dependency |
|---|---|---|
| I, p. 1 | Motivates relational variables and higher dressing; specifies nonzero cosmological coupling | Distinguish this parameter from a physical gravitational cosmological constant |
| II, p. 2, (1)–(5) | Ordinary dressing, residual group, additive higher-form version | Field-dependent dressing is not merely an arbitrary fixed gauge parameter |
| III, pp. 2–3, (6)–(15) | Finite non-Abelian shift, semidirect product, action and equations | Exact finite curvature transformation and Bianchi identity |
| IV.A, p. 3, (16)–(20) | Constructs $u=-A/\lambda$, $A^u=0$, $B^u=\boldsymbol B$ | Work locally in a trivialization; retain residual ordinary gauge covariance |
| IV.B, pp. 3–4, (21)–(27) | Algebraic reduced action and Chern–Simons subtraction | Equality of local four-forms; global and corner qualifications below |
| V, p. 4 | Local bulk DOF statement; boundary/global and quantum-anomaly directions | These extensions are proposed, not established here |
| pp. 4–5 | Acknowledgments, declarations and references | No technical appendix |

$M$ is an oriented four-manifold; the source starts from a principal $H$-bundle $P\to M$. Its Lie algebra carries a nondegenerate invariant symmetric bilinear pairing denoted $\operatorname{Tr}$. Locally $A$ is a Lie-algebra-valued one-form, while $B$ is an adjoint-valued two-form. Matrix multiplication is implicit in wedge products. The graded bracket is

$$\begin{align}
[X,Y]=X\wedge Y-(-1)^{pq}Y\wedge X,\qquad D_AX=dX+[A,X],
\end{align}$$

for form degrees $p,q$. Thus $[A,\eta]=A\eta+\eta A$ for one-forms, and $\eta\eta=\tfrac12[\eta,\eta]$ need not vanish. Under the trace, cyclic permutation has the corresponding Koszul sign. No metric or Hodge star is used. $\lambda$ is constant and nonzero; the $\lambda=0$ theory cannot be reached by substituting into this dressing.

No boundary condition or boundary polarization is fixed in the source. Its local expressions written as forms on $M$ require care on nontrivial bundles: a connection potential $A$ is not itself a globally defined adjoint one-form, whereas differences of connections are.

## Ordinary and Higher Dressing — II

For a right gauge action $\phi\mapsto\phi^\gamma$, a $K$-dressing obeys

$$\begin{align}
u[\phi^\kappa]=\kappa^{-1}u[\phi],\qquad \phi^u=\phi^{u[\phi]}.
\end{align}$$

Then $(\phi^u)^\kappa=\phi^u$. For a connection and matter representation this gives $A^u=u^{-1}Au+u^{-1}du$ and $\psi^u=\rho(u)^{-1}\psi$. If $K$ is normal, one must still determine the transformation under the quotient rather than assuming all gauge freedom disappears.

For an additive shift action $T_\eta$, the analogous property is

$$\begin{align}
u[T_\eta\phi]=u[\phi]-\eta,\qquad T_{u[T_\eta\phi]}T_\eta\phi=T_{u[\phi]}\phi.
\end{align}$$

The BF realization is nonlinear on the pair $(A,B)$ even though its independent shift parameter adds. In particular, the induced two-form change of $B$ depends on the connection and contains a quadratic term. Treating both field increments as unrelated constant translations would miss that structure.

The relational interpretation and claimed scope of the general Dressing Field Method are **Source-derived**. The concrete algebra below is what is checked here; it does not prove the method's broader interpretation or novelty claims.

## Finite Shift Action, Composition and Invariant Field — III

Ordinary gauge transformations act as

$$\begin{align}
A^\gamma=\gamma^{-1}A\gamma+\gamma^{-1}d\gamma,\quad B^\gamma=\gamma^{-1}B\gamma,\quad F^\gamma=\gamma^{-1}F\gamma.
\end{align}$$

The independent shift is a one-form $\eta$ and acts by

$$\begin{align}
A^\eta=A+\lambda\eta,\quad F^\eta=F+\lambda D_A\eta+\lambda^2\eta^2,\quad B^\eta=B+D_A\eta+\lambda\eta^2.\tag{7}
\end{align}$$

The curvature formula follows by expanding $d(A+\lambda\eta)+(A+\lambda\eta)^2$. It immediately yields $(B-\lambda^{-1}F)^\eta=\boldsymbol B$.

After a second shift $\zeta$,

$$\begin{align}
D_{A+\lambda\eta}\zeta=D_A\zeta+\lambda(\eta\zeta+\zeta\eta),
\end{align}$$

so the mixed terms are exactly those in $\lambda(\eta+\zeta)^2$. Consequently $T_\zeta T_\eta=T_{\eta+\zeta}$, despite the non-Abelian matrix products. This finite composition, not just a linearized cancellation, was checked.

The shift parameters transform by conjugation under $H$. In the source's right-action convention,

$$\begin{align}
(\gamma_1,\eta_1)*(\gamma_2,\eta_2) =(\gamma_1\gamma_2,\eta_2+\gamma_2^{-1}\eta_1\gamma_2).
\end{align}$$

Its infinitesimal action and bracket are

$$\begin{align}
\delta_{\alpha,\zeta}A=D_A\alpha+\lambda\zeta,\qquad \delta_{\alpha,\zeta}B=[B,\alpha]+D_A\zeta,
\end{align}$$

$$\begin{align}
[(\alpha_1,\zeta_1),(\alpha_2,\zeta_2)] =([\alpha_1,\alpha_2],[\zeta_1,\alpha_2]-[\zeta_2,\alpha_1]).
\end{align}$$

The notation “non-Abelian shift” refers to the non-Abelian field algebra, not to a noncommutative composition of the independent additive shift parameters.

## Action, Transgression and Dependent Equations — III

Completing the square gives the useful organizing identity

$$\begin{align}
L=-\frac\lambda2\operatorname{Tr}(\boldsymbol B^2) +\frac1{2\lambda}\operatorname{Tr}(F^2).\tag{A}
\end{align}$$

Because the first term is strictly shift-invariant, the finite change of $L$ is a Chern–Weil transgression:

$$\begin{align}
L(A^\eta,B^\eta)-L(A,B)=d b(\eta;A),
\end{align}$$

$$\begin{align}
b(\eta;A)=\operatorname{Tr}\left(\eta F+\frac\lambda2\eta D_A\eta +\frac{\lambda^2}{3}\eta^3\right).\tag{13}
\end{align}$$

The independent noncommutative graded expansion verifies all coefficients. The action is invariant on a closed manifold for a globally defined shift transgression, or under boundary conditions making the boundary integral vanish; in a general region it is only quasi-invariant.

With $\delta$ an ordinary commuting variation, a convention that fixes the surface sign is

$$\begin{align}
\delta L=\operatorname{Tr}\{\delta B\wedge(F-\lambda B) +\delta A\wedge D_AB\}+d\theta,\qquad \theta=\operatorname{Tr}(B\wedge\delta A).
\end{align}$$

Thus the equations are $F-\lambda B=0$ and $D_AB=0$. The Bianchi identity makes the latter a consequence of the former. Off shell the second expression is not separately invariant:

$$\begin{align}
D_{A^\eta}B^\eta=D_AB+[\eta,\lambda B-F].\tag{15}
\end{align}$$

The equation set is invariant because its additional term vanishes when the first equation holds. This avoids upgrading on-shell invariance to an off-shell identity for $D_AB$.

## One-Form Dressing and Residual Ordinary Gauge Transformations — IV.A

The local choice

$$\begin{align}
u[A]=-\lambda^{-1}A,\qquad u[A^\eta]=u[A]-\eta
\end{align}$$

produces

$$\begin{align}
A^u=A+\lambda u=0,\qquad B^u=B+D_Au+\lambda u^2=B-\lambda^{-1}F.
\end{align}$$

The coefficient two in $D_AA=dA+2A^2$ is essential. In particular $F^u=0$ is a kinematic identity after dressing, not the original equation $F=0$; the bare curvature need not vanish.

The ordinary transformation of the dressing is inhomogeneous:

$$\begin{align}
u[A^\gamma]=\gamma^{-1}u[A]\gamma-\lambda^{-1}\gamma^{-1}d\gamma.
\end{align}$$

It cancels the connection inhomogeneity, giving $(A^u)^\gamma=0$ and $(B^u)^\gamma=\gamma^{-1}\boldsymbol B\gamma$. The zero dressed one-form is not an ordinary connection with its old transformation law. There remains an adjoint action on $\boldsymbol B$.

In the local field-space coordinates $(A,\boldsymbol B)$, shifts move $A$ arbitrarily while fixing $\boldsymbol B$. On the fixed local bundle chart and for unrestricted shift parameters, the fiber at fixed $\boldsymbol B$ is a shift orbit. Restrictions at a physical boundary change which shifts may be quotiented.

## Algebraic Action and the Exact Correction to (24) — IV.B

Substitution into the source Lagrangian gives

$$\begin{align}
L^u=-\frac\lambda2\operatorname{Tr}(\boldsymbol B^2),\qquad b(u;A)=-\frac1{2\lambda}\operatorname{Tr}\left(A F-\frac13A^3\right) =-\frac1{2\lambda}\operatorname{CS}(A).
\end{align}$$

Here $\operatorname{CS}(A)=\operatorname{Tr}(A\,dA+\tfrac23A^3)$, with $d\operatorname{CS}=\operatorname{Tr}F^2$. Locally $L^u=L+d b(u;A)$, agreeing with (A).

Taking $\boldsymbol B$ as the independent reduced variable gives

$$\begin{align}
\delta L^u=-\lambda\operatorname{Tr}(\delta\boldsymbol B\wedge\boldsymbol B), \qquad \boldsymbol B=0.
\end{align}$$

Nondegeneracy of the invariant pairing and unrestricted bulk variations are the needed hypotheses. The extra dressed equation $d\boldsymbol B=0$ in (26) is a redundant consequence; it is not another propagating equation. In the bare variables the algebraic equation is precisely $F-\lambda B=0$.

For the explicit three-form representative printed in (23), direct expansion instead gives

$$
\begin{aligned}
&b(u[A^\eta];A^\eta)-b(u[A];A)+b(\eta;A)\\
&\hspace{1cm}=\frac12\operatorname{Tr}(dA\wedge\eta-A\wedge d\eta)
=\frac12d\operatorname{Tr}(A\wedge\eta).
\end{aligned}\tag{B}
$$

**Failed:** (24) as a strict local three-form equality. **Checked:** the corrected identity (B), and the exterior derivative of its residual equals zero. Even the Abelian example $A=x\,dy$, $\eta=dz$ gives residual $\tfrac12dx\wedge dy\wedge dz$, so it cannot be removed by trace cyclicity alone. On a closed three-dimensional boundary, with globally defined $\operatorname{Tr}(A\eta)$, its integral vanishes. If the boundary has a corner, its integral is a corner term and must be tracked. Strict cocycle language must therefore specify the representative or pass to forms modulo exact terms.

## Global Bundles and Regional CPS Translation — Local Extension of the Source

The same-de-Rham-class assertion preceding (22) is only justified locally, or globally when the relevant characteristic class vanishes with an appropriate global primitive. Indeed,

$$\begin{align}
[L^u]-[L]=-\frac1{2\lambda}[\operatorname{Tr}F^2].
\end{align}$$

On a closed four-manifold with a bundle having nonzero integrated characteristic form, Stokes' theorem forbids a global exact difference. The local potential $u=-A/\lambda$ also does not patch as an adjoint shift parameter. These observations qualify the global formulation without invalidating the local algebraic bulk quotient.

A fixed reference connection $A_0$ clarifies the issue. The tensorial difference $A-A_0$ allows the globally admissible shift dressing $u=-(A-A_0)/\lambda$ when $A_0$ is held fixed under shifts. It sends

$$\begin{align}
A\longmapsto A_0,\qquad B\longmapsto\boldsymbol B+\lambda^{-1}F_0,
\end{align}$$

with dressed Lagrangian

$$\begin{align}
-\frac\lambda2\operatorname{Tr}(\boldsymbol B^2) +\frac1{2\lambda}\operatorname{Tr}(F_0^2).
\end{align}$$

The characteristic contribution is retained as fixed reference data; the difference of the two characteristic forms has a global transgression. This is a local-to-global clarification, not a construction supplied by the paper, and no global quantum measure or bundle sum is inferred.

For the convention $\omega(\delta_1,\delta_2)=\delta_1\theta(\delta_2)-\delta_2\theta(\delta_1)$, the bare current is

$$\begin{align}
\omega=\operatorname{Tr}(\delta_1B\wedge\delta_2A-\delta_2B\wedge\delta_1A).
\end{align}$$

On a solution and for tangent variations, $\delta B=\lambda^{-1}D_A\delta A$, hence

$$\begin{align}
\omega\approx\lambda^{-1}d\operatorname{Tr}(\delta_1A\wedge\delta_2A),\qquad \Omega_\Sigma\approx\lambda^{-1}\int_{\partial\Sigma} \operatorname{Tr}(\delta_1A\wedge\delta_2A).\tag{C}
\end{align}$$

The non-Abelian identity follows by the graded Leibniz rule and trace invariance and was independently checked. It explains why an algebraic bulk reduction does not authorize throwing away a region's symplectic corner data. The reduced action in independent $\boldsymbol B$ variables has no derivative potential. Reconciling it with the bare representative requires the boundary/corner improvement and a decision about admissible boundary shifts; it is not an automatic equality of regional phase spaces.

For an actual sewing calculation one must still specify: boundary polarization, allowed shift and ordinary gauge parameters, reference connection or trivialization, corner orientation and improvement, and which transformations carry charges rather than being quotiented. None of these choices is fixed by $\boldsymbol B=0$ alone.

## Discussion, Verification Ledger and Limitations

The source's global topological sector and boundary DOF are explicitly left for future work in V. Its suggestion of higher Bardeen–Wess–Zumino and Green–Schwarz-like quantum anomaly cancellation is **Source-derived and not independently verified**; the classical $d$-exact change is not a quantum anomaly calculation.

| Target, in source order | Evidence | Result/boundary |
|---|---|---|
| (7)–(11), curvature, finite additive composition, $\boldsymbol B$ | **Checked** | Exact noncommutative graded-form residuals vanish |
| (12)–(15), square completion, finite transgression, variation, Bianchi, transformed $D_AB$ | **Checked** | Exact coefficients/signs; second equation invariant only modulo first |
| (16)–(20), dressing and residual transformation | **Checked** local algebra; ordinary covariance follows by substitution | Local chart or specified reference connection; no global gauge section assumed |
| (21)–(23), reduced action and Chern–Simons subtraction | **Checked** | Local exact difference; global cohomology qualification required |
| (24) | **Failed** as printed | Residual $\tfrac12d\operatorname{Tr}(A\eta)$; corrected residual zero |
| (25)–(27), algebraic dynamics | **Checked** by direct variation | $\lambda\ne0$ and nondegenerate pairing; no boundary condition inferred |
| Regional extension (C) | **Checked** | Non-Abelian graded trace and independent Abelian xAct components |
| V, quantum/higher-gauge applications | **Source-derived** | No quantum proof or boundary completion |

**Verified:** Mathematica's free associative graded-word calculation implements only the exterior Leibniz rule, $d^2=0$ and graded cyclicity under the invariant trace. Eighteen labelled residuals/self-checks were evaluated; the sole nonzero intended source residual is (24), and its corrected version vanishes. This is symbolic algebra, not a numerical matrix sample. Independent xAct component expressions reproduce the Abelian defect and give zero for the corrected identity and CPS corner exactness. Inputs sufficient to repeat the decisive test are $F=dA+A^2$, $A'=A+\lambda\eta$, $B'=B+D_A\eta+\lambda\eta^2$ and the displayed $b,\operatorname{CS}$; compare $-\operatorname{CS}(A')/(2\lambda)+\operatorname{CS}(A)/(2\lambda)+b$ with $d\operatorname{Tr}(A\eta)/2$.

**Assumptions:** oriented smooth four-manifold, constant nonzero $\lambda$, invariant nondegenerate pairing, classical smooth fields, local trivialization for $u=-A/\lambda$, and tangent on-shell variations for (C). Exact boundary integrals are dropped only on closed boundaries with globally defined primitives and suitable regularity.

**Not verified:** a boundary-complete reduced action/phase space, finite surface-charge algebra, global bundle-sector quantization, measure/Jacobian effects, quantum anomaly cancellation, or the singular $\lambda=0$ limit. “No local propagating bulk modes” is the scope of the algebraic reduction, not “no global or boundary physics.”

**Blocked:** no remaining source or computation blocker for the local targets. Initial xTerior loading hit `Diff::argtu`/protected-symbol errors; the independent check was completed using xTensor components. Two temporary Wolfram bracket errors were corrected before accepting the final output. PDF extraction's font-type warning was resolved for the relevant equations by TeX and rendered-page inspection. Source and computational artifacts stay outside the vault.
