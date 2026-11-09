---
paper id: 2607.28543v1
title: Soft charges and zero modes at null boundaries
authors:
  - Dušan Đorđević
  - Olivera Miskovic
  - Antonia Montecinos
  - Tatjana Vukašinac
publication date: 2026-07-30T17:12
abstract: |-
  Null hypersurfaces can possess global zero modes of their canonical constraint operator in addition to ordinary residual gauge transformations. The paper argues that such modes generate quasilocal boundary shifts and Regge--Teitelboim edge observables at null infinity or finite null boundaries. It derives a generic kernel-and-charge construction, applies it to scalar, Maxwell, Maxwell--Pontryagin, and Yang--Mills systems, and finds an Abelian residual shift algebra without a central extension under fixed leading boundary data.
comments: 'To appear in Proceedings of Science for the Conference School "Foundations of General-Relativistic Gauge Field Theory" held at Politecnico di Torino, Italy, in March 2026'
url: https://arxiv.org/abs/2607.28543v1
summary: "A compact null-canonical construction in which radial zero modes of the primary-constraint operator become quasilocal boundary charges; its isolated shift sector is Abelian, but the paper does not construct the full gauge algebra or an explicit flux law."
tags: []
---

[[2026_07_31_overview|Back to the 2026-07-31 arXiv overview]]

# The Light-Front Zero Mode

The paper studies a null hypersurface

$$\begin{align}
\Xi=\{u=\mathrm{const}\}, \qquad x^i=(r,\varphi^A), \qquad \partial\Xi=\{r=r_0\}.
\end{align}$$

Because $\Xi$ is characteristic, its primary constraints can be second class pointwise while their bracket matrix, treated as an integral operator with radial boundary conditions, has a nontrivial kernel. The free data of that kernel are functions on the codimension-two boundary $\partial\Xi$; their radial dependence is fixed.

This is the paper's crucial distinction. The zero mode is not an arbitrary bulk gauge parameter. It is a boundary-parametrized shift tangent to the null slice. After Regge--Teitelboim improvement it produces a quasilocal boundary observable.

# Source Structure Map

- **Section 1:** motivates characteristic zero modes, distinguishes them from bulk gauge transformations, and previews quasilocal charges at null infinity and horizons.
- **Section 2:** gives the abstract constraint-kernel construction, multiplier ambiguity, residual generator, and possible improved charge algebra.
- **Section 3:** specializes to Bondi null slices; derives a local radial kernel equation; tabulates scalar, Maxwell--Pontryagin, three-dimensional Maxwell, and Yang--Mills examples; constructs the boundary charge; and evaluates its reduced bracket.
- **Section 4:** discusses two null patches, matching, finite horizons, and a schematic flux-balance law.
- **Appendices:** none.

# Constraint Operator and Boundary Embedding

Let $\chi_\alpha(x)\approx0$, $\alpha=1,\ldots,k$, be the relevant primary constraints. Their Poisson brackets define the antisymmetric integral kernel

$$\begin{align}
\{\chi_\alpha(x),\chi_\beta(x')\} =\Omega_{\alpha\beta}(x,x'). \tag{1}
\end{align}$$

The residual kernel is assumed to factor through an embedding

$$\begin{align}
v^\alpha(x) =\int_{\partial\Xi} P^\alpha{}_I(x,\varphi')V^I(\varphi'), \tag{2}
\end{align}$$

where $V^I$ is arbitrary boundary data and

$$\begin{align}
\int_\Xi d^dx'\, \Omega_{\alpha\beta}(x,x') P^\beta{}_I(x',\varphi) =0. \tag{4}
\end{align}$$

Consequently, the pullback of the constraint matrix to the residual sector vanishes:

$$\begin{align}
\Omega_{IJ}(\varphi,\varphi') = \int_{\Xi\times\Xi} P^\alpha{}_I P^\beta{}_J \Omega_{\alpha\beta} =0. \tag{5}
\end{align}$$

Here $\Omega_{\alpha\beta}$ is the constraint-bracket matrix, not the covariant presymplectic current.

# Multiplier Ambiguity and the Residual Generator

For

$$\begin{align}
H=\int_\Xi \left( \mathcal H_0+\lambda^\alpha\chi_\alpha \right), \tag{6}
\end{align}$$

constraint preservation gives

$$\begin{align}
\Omega_{\alpha\beta}\lambda^\beta=J_\alpha, \qquad J_\alpha=\int_\Xi\{\mathcal H_0,\chi_\alpha\}. \tag{7--8}
\end{align}$$

The general solution is

$$\begin{align}
\lambda^\alpha =\bar\lambda^\alpha[J] + \int_{\partial\Xi} P^\alpha{}_I\Lambda^I. \tag{10}
\end{align}$$

Thus the multiplier ambiguity is arbitrary only on the angular boundary. For a field-independent boundary parameter $\varepsilon^I(\varphi)$, define

$$\begin{align}
\eta^\alpha=P^\alpha{}_I\varepsilon^I
\end{align}$$

and the bulk generator

$$\begin{align}
G[\varepsilon] =\int_\Xi\chi_\alpha\eta^\alpha. \tag{11}
\end{align}$$

Ignoring radial boundary terms,

$$\begin{align}
\{G[\varepsilon_1],G[\varepsilon_2]\} \approx \int_{\Xi\times\Xi} \eta_1^\alpha \Omega_{\alpha\beta} \eta_2^\beta =0. \tag{12}
\end{align}$$

The weak equality is important when $P$ is field-dependent.

# Regge--Teitelboim Completion

The bulk generator is generally not differentiable. Add a boundary term:

$$\begin{align}
G_Q[\varepsilon] =G[\varepsilon]+Q[\varepsilon]. \tag{13}
\end{align}$$

At this abstract stage the improved algebra may have the form

$$\begin{align}
\{G_Q[\varepsilon_1],G_Q[\varepsilon_2]\} =G_Q\!\left[\left[\varepsilon_1,\varepsilon_2\right]\right] +C[\varepsilon_1,\varepsilon_2]. \tag{14}
\end{align}$$

The later example calculation finds both the structure term and central term to vanish in the isolated residual shift sector. Equation (14) is therefore a possibility allowed before reduction, not evidence for a nontrivial extension.

# Bondi Null Slicing and the Local Radial Equation

The background metric is

$$\begin{align}
ds^2 =-du^2-2\epsilon\,du\,dr +r^2\gamma_{AB}d\varphi^Ad\varphi^B, \tag{15}
\end{align}$$

with $\epsilon=+1$ for a retarded patch and $\epsilon=-1$ for an advanced patch.

For constraints

$$\begin{align}
\chi_\alpha =\pi_\alpha+f_\alpha(\Psi) \approx0, \tag{16}
\end{align}$$

the constraint matrix is the functional curl

$$\begin{align}
\Omega_{\alpha\beta} = \frac{\delta f_\alpha}{\delta\psi^\beta} - \frac{\delta f_\beta}{\delta\psi^\alpha}. \tag{17}
\end{align}$$

Locality gives

$$\begin{align}
\Omega_{\alpha\beta}(x,x') =\widehat{\mathcal L}_{\alpha\beta} \delta^{(d)}(x-x'). \tag{18}
\end{align}$$

Assuming angular locality,

$$\begin{align}
P^\alpha{}_I(x,\varphi') =U^\alpha{}_I(r,\varphi) \delta^{(d-1)}(\varphi-\varphi'), \tag{20}
\end{align}$$

the kernel equation becomes the radial problem

$$\begin{align}
\widehat{\mathcal L}_{\alpha\beta} U^\beta{}_I=0. \tag{21}
\end{align}$$

The residual transformation is

$$\begin{align}
\delta_\varepsilon\psi^\alpha =U^\alpha{}_I\varepsilon^I. \tag{24}
\end{align}$$

# Four Radial Kernels

The examples instantiate the same mechanism with different radial weights.

## Four-Dimensional Scalar

For the shifted field $\phi$,

$$\begin{align}
\widehat{\mathcal L} =-2\epsilon\sqrt\gamma\, \partial_r(r\,\cdot), \qquad U=r^{-1}.
\end{align}$$

The boundary coefficient entering the charge is

$$\begin{align}
\bar k^r=\epsilon r^2\sqrt\gamma.
\end{align}$$

## Four-Dimensional Maxwell--Pontryagin

For the angular potential $A_A$,

$$\begin{align}
\widehat{\mathcal L}^{AB} =-\frac{2\epsilon}{e^2} \sqrt\gamma\,\gamma^{AB}\partial_r, \qquad U^A{}_B=\delta^A{}_B.
\end{align}$$

The boundary tensor is

$$\begin{align}
\bar k^{r\,AB} =\epsilon\sqrt\gamma\,\sigma^{AB},
\end{align}$$

where

$$\begin{align}
\sigma^{AB} =\frac1{e^2}\gamma^{AB} - \frac{\epsilon\theta}{e^2\sqrt\gamma} \epsilon^{AB}. \tag{25}
\end{align}$$

The antisymmetric Pontryagin part enters the boundary observable but drops from the symmetric radial constraint operator. Pure Maxwell is the $\theta=0$ specialization.

## Three-Dimensional Maxwell

For $A_\varphi$,

$$\begin{align}
\widehat{\mathcal L} =-\frac{2\epsilon}{e^2\sqrt r} \partial_r(r^{-1/2}\,\cdot), \qquad U=\sqrt r,
\end{align}$$

with $\bar k^r=\epsilon/e^2$.

## Four-Dimensional Yang--Mills

The kernel is covariantly constant:

$$\begin{align}
\mathcal D_rU=0, \qquad U(\infty)=1. \tag{26}
\end{align}$$

With the paper's convention,

$$\begin{align}
U(r,\varphi) =\mathcal P\exp \left( \int_r^\infty dr'\,A_r(r',\varphi) \right), \tag{27}
\end{align}$$

and an adjoint zero mode is

$$\begin{align}
v_A(x)=U(x)V_A(\varphi)U^{-1}(x). \tag{28}
\end{align}$$

Although $U$ is field-dependent through $A_r$, the displayed residual shift acts on $A_A$. Hence $\delta_\varepsilon U=0$ in this restricted example. This does not establish a general field-dependent-parameter bracket.

# Boundary Integrability and the Quasilocal Observable

Write

$$\begin{align}
f_\alpha =k_\alpha-k^i_{\alpha\Lambda} \partial_i\Psi^\Lambda. \tag{29}
\end{align}$$

Variation of the bulk generator has the radial obstruction

$$\begin{align}
\delta G =\text{regular} - \int_{\partial\Xi} k^r_{\alpha\beta} \eta^\alpha\delta\psi^\beta. \tag{30}
\end{align}$$

Therefore

$$\begin{align}
\delta Q = \int_{\partial\Xi} k^r_{\alpha\beta} \eta^\alpha\delta\psi^\beta. \tag{31}
\end{align}$$

The paper imposes fixed leading data

$$\begin{align}
k^r_{\alpha\beta}\to\bar k^r_{\alpha\beta}, \qquad U^\alpha{}_I\to\bar U^\alpha{}_I, \qquad \delta\bar k^r=\delta\bar U=0. \tag{32--33}
\end{align}$$

Then the charge is integrable:

$$\begin{align}
\boxed{ Q[\varepsilon] = \int_{\partial\Xi} \bar k^r_{\alpha\beta} \bar U^\alpha{}_I \varepsilon^I \psi^\beta.
}
\tag{34}
\end{align}$$

This is a codimension-two, quasilocal, boundary-linear observable. Finiteness and preservation of the boundary data require falloffs that the paper does not work out, except for a brief Yang--Mills condition.

# Tangent Lift and the Abelian Reduced Algebra

The canonical field-space two-form is

$$\begin{align}
\omega_\Xi =\int_\Xi \delta\Pi_\Lambda\wedge\delta\Psi^\Lambda.
\end{align}$$

A reduced vector field has the form

$$\begin{align}
X_\varepsilon =\int_\Xi \left( \delta_\varepsilon\psi^\alpha \frac{\delta}{\delta\psi^\alpha} + \delta_\varepsilon\pi_\alpha \frac{\delta}{\delta\pi_\alpha} \right). \tag{35}
\end{align}$$

Because $\chi_\alpha=\pi_\alpha+f_\alpha$, tangency requires

$$\begin{align}
\boxed{ \delta_\varepsilon\pi_\alpha(x) =- \int_\Xi d^dx'\, \frac{\delta f_\alpha(x)} {\delta\psi^\beta(x')} \eta^\beta(x').
}
\end{align}$$

The source prints a plus sign in Eq. (36). That sign gives $\delta_\varepsilon\chi_\alpha=2\,\delta f_\alpha[\eta]$ and is generically incompatible with the stated tangency condition.

With the corrected lift, the double contraction is, up to the displayed bracket convention,

$$\begin{align}
\{Q[\varepsilon_1],Q[\varepsilon_2]\}^* = \int_{\Xi\times\Xi} \eta_1^\alpha \Omega_{\alpha\beta} \eta_2^\beta. \tag{38--39}
\end{align}$$

Since both profiles are kernel vectors,

$$\begin{align}
\boxed{ \{Q[\varepsilon_1],Q[\varepsilon_2]\}^*=0.
}
\tag{40}
\end{align}$$

Thus the isolated residual shifts form an Abelian algebra without a central extension. The full gauge algebra, Gauss constraints, and mixed brackets are outside the paper's scope.

# Null Infinity, Finite Horizons, and Matching

Each retarded or advanced patch carries its own quasilocal $Q[\varepsilon]$. A global conservation statement needs matching:

- at null infinity, the source invokes the usual antipodal matching;
- at a finite horizon, it proposes endpoint matching determined by the horizon geometry.

Within one patch the paper writes only the schematic balance law

$$\begin{align}
Q[\varepsilon]\big|_{u_2} - Q[\varepsilon]\big|_{u_1} = \int_{u_1}^{u_2} du\,\mathcal F[\varepsilon](u), \qquad \mathcal F=\dot Q. \tag{41}
\end{align}$$

No theory-specific flux, news variable, Ward identity, or soft theorem is derived. The BTZ discussion identifies the horizon as a possible finite null boundary but does not compute a BTZ kernel or charge.

# Translation to Local CPS and Edge-Mode Language

The source starts after a null canonical decomposition. It does not derive

$$\begin{align}
S\longrightarrow\delta S =E\cdot\delta\Phi+d\theta, \qquad \omega=\delta\theta.
\end{align}$$

The closest canonical dictionary is

$$\begin{align}
\Theta_\Xi =\int_\Xi\Pi_\Lambda\delta\Psi^\Lambda, \qquad \omega_\Xi=\delta\Theta_\Xi.
\end{align}$$

The RT one-form $\delta Q$ cancels the radial corner obstruction in $\delta G$. The resulting $Q$ is therefore a Hamiltonian corner observable in the reduced null-canonical theory.

This is weaker than an extended edge-mode construction:

- no independent boundary field is added;
- no edge symplectic pair is exhibited;
- no covariant presymplectic current or null endpoint term is derived;
- no full solution-space mode basis $X_I$ is specified.

The paper establishes a quasilocal boundary observable associated with a residual kernel. Calling it a complete edge-mode sector would exceed the evidence.

# Verification Log

## Checked

- **PDF rendering:** visually confirmed Figure 1, Tables 1--2, and Eqs. (1)--(41), including the printed sign in Eq. (36).
- **Mathematica:** reproduced the scalar kernel
  $\partial_r(r\,r^{-1})=0$.
- **Mathematica:** reproduced the Maxwell--Pontryagin constant radial kernel.
- **Mathematica:** reproduced the three-dimensional Maxwell kernel
  $\partial_r(r^{-1/2}\sqrt r)=0$ for $r>0$.
- **Noncommutative product rule:** with
  $\partial_rU=-A_rU$ and
  $\partial_rU^{-1}=U^{-1}A_r$,
  reproduced
  $\mathcal D_r(UVU^{-1})=0$.
- **Algebraic tangency check:** for a generic functional derivative matrix
  $F_{\alpha\beta}=\delta f_\alpha/\delta\psi^\beta$,
  the printed plus sign in Eq. (36) gives
  $\delta\chi=2F\eta$, while the corrected minus sign gives
  $\delta\chi=0$.
- **Reduced bracket:** with the corrected tangent lift, the double contraction is proportional to
  $\eta_1^\alpha\Omega_{\alpha\beta}\eta_2^\beta$ and therefore vanishes on the residual kernel.

## Blocked

- The underlying actions, Legendre transforms, and complete primary/secondary constraint sets for the four examples are not displayed; the tabulated operators cannot be rederived from this source alone.
- The radial function spaces and boundary conditions that make the constraints pointwise second class but globally singular are not specified.
- Factorization through $P$ and angular locality are assumptions.
- Charge falloffs, finiteness, and preservation of the fixed leading data are not derived.
- General field-dependent residual brackets, the Gauss sector, and mixed charge brackets are absent.
- Null-patch matching, a horizon matching map, and the flux $\mathcal F$ are schematic.
- No covariant null CPS, radiative source/response split, news, or soft-theorem Ward identity is constructed.

## Failed

- **Equation (36):** incorrect as printed under the paper's own definitions. For
  $\chi_\alpha=\pi_\alpha+f_\alpha$ and
  $\delta_\varepsilon\chi_\alpha=0$, the momentum variation must have a minus sign. The corrected sign preserves the final zero bracket but changes the intermediate Hamiltonian-vector-field formula.
