# String Geometry: Worldsheets, Oscillators, and a Circle

**AST-16 — DRAFT study chapter**

## Abstract

A physical string model requires a worldsheet action, gauge symmetries, boundary conditions and a quantum prescription; the geometry of a curve alone does not specify its spectrum. This chapter starts from the Polyakov and Nambu–Goto actions with one negative target-time direction, derives the closed-cylinder constraints and fixes the left/right mode convention before quantization. Standard conformal-field-theory inputs are stated explicitly where they determine the critical dimension and intercept. A compact spacelike circle then supplies momentum, winding, level matching and a completely evaluated T-dual pair. A separate positive geometric bridge explains how twistor lines and their normal bundles describe families of holomorphic curves, and evaluates a normalized classical sphere sigma model without identifying that degree calculation with a quantum string area spectrum. The controlled results are free-string and classical-geometric constructions, not a compactification or unification prescription.

## 1. A Specified Worldsheet and Action

Let $\Sigma$ be a real two-dimensional worldsheet with coordinates $\sigma^a=(\tau,\sigma)$ and Lorentzian metric $h_{ab}$ of signature $(-,+)$. The embedding fields are a map $X:\Sigma\to M_D$. Initially the target is flat with

$$\begin{align}
\eta_{\mu\nu}=\operatorname{diag}(-1,+1,\ldots,+1), \qquad \mu=0,\ldots,D-1. \tag{1.1}
\end{align}$$

There is one timelike direction, not one per complex coordinate or internal factor. A physical four-dimensional block has signature $(-,+,+,+)$; any extra target directions introduced below are explicitly spacelike.

Use $c=\hbar=1$, dimensionless worldsheet coordinates, $X^\mu$ of length dimension, and a positive length-squared parameter $\alpha'$. The tension is

$$\begin{align}
T=\frac1{2\pi\alpha'}>0. \tag{1.2}
\end{align}$$

Restoring $\hbar$ with $c=1$ gives $T=\hbar/(2\pi\alpha')$. The induced metric is $g_{ab}=\eta_{\mu\nu}\partial_aX^\mu\partial_bX^\nu$. The Polyakov action uses an independent worldsheet metric:

$$\begin{align}
S_P=-\frac T2\int_\Sigma d^2\sigma\, \sqrt{-h}\,h^{ab}g_{ab}. \tag{1.3}
\end{align}$$

The Nambu–Goto action instead uses the induced area,

$$\begin{align}
S_{NG}=-T\int_\Sigma d^2\sigma\sqrt{-\det g}. \tag{1.4}
\end{align}$$

Its classical interpretation here requires a nondegenerate timelike immersion. The Polyakov fields themselves need not be restricted to an embedded surface in every off-shell configuration.

### 1.1 Metric Variation and the Classical Equivalence

Using $\delta\sqrt{-h}=-\tfrac12\sqrt{-h}h_{ab}\delta h^{ab}$, the independent metric equation is

$$\begin{align}
C_{ab}:=g_{ab}-\frac12h_{ab}h^{cd}g_{cd}=0, \qquad h^{ab}C_{ab}=0. \tag{1.5}
\end{align}$$

The worldsheet stress tensor is $T C_{ab}$ with the convention $-2\delta S_P/(\sqrt{-h}\,\delta h^{ab})$. The trace vanishes classically in two dimensions. On the positive conformal branch $h_{ab}=e^{2\omega}g_{ab}$, compatible with the same timelike direction, the factor from $\sqrt{-h}$ cancels the inverse-metric factor and the remaining induced-metric contraction is two. Substitution gives exactly (1.4). Degenerate induced metrics and the opposite sign branch are not part of this classical elimination argument.

The action is invariant under worldsheet diffeomorphisms and under the Weyl transformation

$$\begin{align}
h_{ab}\longmapsto e^{2\rho(\sigma)}h_{ab},\qquad X^\mu\longmapsto X^\mu.
 \tag{1.6}
\end{align}$$

In two dimensions the measure scales by $e^{2\rho}$ and the inverse metric by $e^{-2\rho}$. Weyl symmetry is a gauge symmetry of this specified classical action, not an arbitrary rescaling of the target metric.

For the closed string take the Lorentzian cylinder $\mathbb R_\tau\times S^1_\sigma$ with $\sigma\sim\sigma+2\pi$, and use compactly supported time variations or fixed time-endpoint data. There is no spatial boundary term. On a separate conformally gauge-fixed open strip, integration by parts produces $-T\int d\tau\,[X'\cdot\delta X]$; Neumann conditions set the appropriate $X'$ to zero, whereas Dirichlet conditions fix the corresponding endpoint positions. These are extra boundary data. The oscillator calculation below is for the closed cylinder, not that open-strip problem.

## 2. Gauge Choice, Constraints, and Transverse Degrees of Freedom

Locally, diffeomorphisms and Weyl symmetry allow conformal gauge $h_{ab}=e^{2\omega}\operatorname{diag}(-1,1)$. We use the standard causal cylinder sector with this gauge and the stated periodicity. On higher-genus Euclidean worldsheets, global moduli remain and must not be discarded by a local gauge argument.

In conformal gauge,

$$\begin{align}
S_P=\frac T2\int d\tau d\sigma\, (\dot X\cdot\dot X-X'\cdot X'),\qquad \ddot X^\mu-X''{}^\mu=0. \tag{2.1}
\end{align}$$

The metric equation must still be imposed; gauge fixing does not erase it. It gives

$$\begin{align}
\dot X^2+X'^2=0,\qquad \dot X\cdot X'=0. \tag{2.2}
\end{align}$$

Write $\sigma^+=\tau+\sigma$, $\sigma^-=\tau-\sigma$ and $\partial_\pm=\tfrac12(\partial_\tau\pm\partial_\sigma)$. Then the same equations are

$$\begin{align}
\partial_+\partial_-X^\mu=0,\qquad (\partial_+X)^2=(\partial_-X)^2=0. \tag{2.3}
\end{align}$$

Residual conformal reparametrizations act separately on the two null worldsheet coordinates. They are not independent physical target coordinates.

A concrete physical-mode count uses target light-cone coordinates $X^\pm=(X^0\pm X^1)/\sqrt2$, with $ds^2=-2dX^+dX^-+\sum_{I=2}^{D-1}(dX^I)^2$. In a patch with $p^+>0$, choose

$$\begin{align}
X^+=x^++\alpha'p^+\tau. \tag{2.4}
\end{align}$$

There is no winding in this noncompact light-cone direction. The constraints solve the longitudinal derivatives:

$$\begin{align}
\partial_\pm X^-= \frac{\sum_I(\partial_\pm X^I)^2}{\alpha'p^+}. \tag{2.5}
\end{align}$$

Thus the independent oscillating fields are the $D-2$ transverse coordinates. The periodicity of the reconstructed longitudinal field also supplies a global level-matching condition. This is stronger than simply subtracting symbols in a coordinate list. Quantum Lorentz consistency of the light-cone construction remains an additional theorem, discussed in Section 4.

## 3. Closed-String Modes with an Explicit left/right Convention

We call the $\sigma^+$ sector **left** and the $\sigma^-$ sector **right**. Fix this naming before assigning momentum or winding signs. Write $X=X_L+X_R$, with

$$
\begin{aligned}
 X_L^\mu(\sigma^+)&=x_L^\mu+\frac{\alpha'}2p_L^\mu\sigma^+
   +i\sqrt{\frac{\alpha'}2}\sum_{m\ne0}
          \frac{\alpha_m^\mu}{m}e^{-im\sigma^+},\\
 X_R^\mu(\sigma^-)&=x_R^\mu+\frac{\alpha'}2p_R^\mu\sigma^-
   +i\sqrt{\frac{\alpha'}2}\sum_{m\ne0}
          \frac{\widetilde\alpha_m^\mu}{m}e^{-im\sigma^-}.
 \end{aligned}
 \tag{3.1}
$$

For noncompact single-valued coordinates, $p_L=p_R=p$. Compact directions can instead have the winding discussed below. The real classical field condition is

$$\begin{align}
x_L+x_R\in\mathbb R^D,\qquad p_L,p_R\in\mathbb R^D,\qquad \alpha_{-m}=(\alpha_m)^*,\quad \widetilde\alpha_{-m}=(\widetilde\alpha_m)^*. \tag{3.2}
\end{align}$$

The separate constants $x_L,x_R$ require a zero-mode convention; their sum is the position used here. Every nonzero mode satisfies the wave equation and is periodic in sigma.

The canonical momentum density and its integral are

$$\begin{align}
P_\mu(\sigma)=T\dot X_\mu,\qquad p_\mu=\int_0^{2\pi}P_\mu\,d\sigma =\frac12(p_{L\mu}+p_{R\mu}). \tag{3.3}
\end{align}$$

In particular the noncompact zero term is $\alpha' p\tau$, not $2\alpha'p\tau$ for this period convention. Changing the range of sigma changes these coefficients together.

Define the zero oscillator coefficients by $\alpha_0=\sqrt{\alpha'/2}\,p_L$ and $\widetilde\alpha_0=\sqrt{\alpha'/2}\,p_R$. Then

$$\begin{align}
\partial_+X=\sqrt{\frac{\alpha'}2}
                   \sum_{m\in\mathbb Z}\alpha_m e^{-im\sigma^+},\qquad \partial_-X=\sqrt{\frac{\alpha'}2}
                   \sum_{m\in\mathbb Z}\widetilde\alpha_m e^{-im\sigma^-}. \tag{3.4}
\end{align}$$

Squaring these Fourier series gives the classical constraint coefficients

$$\begin{align}
L_m=\frac12\sum_{r\in\mathbb Z}\alpha_{m-r}\cdot\alpha_r, \qquad \widetilde L_m=\frac12\sum_{r\in\mathbb Z} \widetilde\alpha_{m-r}\cdot\widetilde\alpha_r. \tag{3.5}
\end{align}$$

The dot uses the target Lorentz metric. Their vanishing is the classical Virasoro constraint, with convergence interpreted on smooth configurations or a suitable mode domain. Quantum ordering and the zero-mode shift are not fixed merely by writing this classical convolution.

## 4. Quantum Input, Intercept, and the Noncompact Spectrum

### 4.1 What the Critical-Dimension Statement Assumes

Covariant oscillator quantization has

$$\begin{align}
[\alpha_m^\mu,\alpha_n^\nu] =m\eta^{\mu\nu}\delta_{m+n,0},\qquad [\alpha_m^\mu,\widetilde\alpha_n^\nu]=0, \qquad (\alpha_m^\mu)^\dagger=\alpha_{-m}^\mu, \tag{4.1}
\end{align}$$

with the same algebra in the right sector. Timelike oscillators make the covariant auxiliary Fock space indefinite; they are not counted as physical positive-norm polarizations. After solving the light-cone constraints, each transverse direction instead has the positive oscillator algebra. For $m>0$, $\alpha_{-m}^I/\sqrt m$ is a creation operator, so

$$\begin{align}
N_L=\sum_{m>0,I}\alpha_{-m}^I\alpha_m^I =\sum_{m>0,I}m\,n_{mI},\qquad N_R=\sum_{m>0,I}\widetilde\alpha_{-m}^I\widetilde\alpha_m^I, \tag{4.2}
\end{align}$$

where each occupation number is a nonnegative integer.

The following are standard quantum-theory inputs, not consequences of finite mode matrices [1,2]. For free covariant bosonic coordinates, the matter Virasoro algebra has central charge $c_m=D$. Gauge fixing supplies the reparametrization $bc$ ghost system of weights $(2,-1)$ with $c_{gh}=-26$ per chirality. Thus quantum Weyl/BRST consistency of this flat critical bosonic model requires

$$\begin{align}
c_{\mathrm{tot}}=D-26=0,\qquad D=26, \qquad a_L=a_R=a=1. \tag{4.3}
\end{align}$$

The intercept is per chiral sector. The consistency of the physical-state quotient/light-cone construction is a theorem of the infinite-dimensional critical theory, not a finite determinant calculation. In covariant language the positive-mode conditions and the zero-mode intercept are accompanied by the removal of spurious/null states or a BRST construction; one does not impose every positive and negative Virasoro operator as independent annihilation conditions on an ordinary Fock vector.

The central charge counts all $D$ covariant matter coordinates. The $D-2$ transverse count is after constraint reduction; substituting it into $c_m=D$ would remove gauge directions twice. Compact free bosons still contribute one unit each to the matter central charge.

### 4.2 A Regulated Zero-Point Value Is Not an Ordinary Sum

For one transverse chiral boson the formal vacuum contribution is half the sum of positive mode frequencies. With the explicit regulator $\epsilon>0$,

$$\begin{align}
\sum_{m=1}^{\infty}m e^{-\epsilon m} =\frac{e^{-\epsilon}}{(1-e^{-\epsilon})^2} =\frac1{\epsilon^2}-\frac1{12}+O(\epsilon^2). \tag{4.4}
\end{align}$$

Subtracting the displayed divergence gives finite part $-1/12$, also the analytic-continuation value $\zeta(-1)$. The unregulated series diverges; it has not become a convergent negative sum. In the standard normal-ordering prescription this gives

$$\begin{align}
E_{0,\mathrm{chiral}}=-\frac{D-2}{24},\qquad a=\frac{D-2}{24}=1\quad(D=26). \tag{4.5}
\end{align}$$

Agreement with the critical intercept is a useful consistency check. The regulator alone is not a derivation of the ghost central charge, BRST nilpotence, Lorentz closure or the no-ghost theorem.

### 4.3 Mass and Polarization Content

In the physical transverse description the two zero-mode conditions are

$$\begin{align}
0=\frac{\alpha'}4p^2+N_L-a, \qquad 0=\frac{\alpha'}4p^2+N_R-a. \tag{4.6}
\end{align}$$

For an uncompactified target define $M_D^2=-p^2$. They imply

$$\begin{align}
N_L=N_R=N,\qquad M_D^2=\frac4{\alpha'}(N-1). \tag{4.7}
\end{align}$$

The ground state is tachyonic, $M_D^2=-4/\alpha'$. Cancellation of the conformal anomaly does not make this bosonic vacuum stable. The first excited closed level is massless. Its transverse polarizations are a rank-two tensor in $\mathbb R^{24}\otimes\mathbb R^{24}$, decomposing into symmetric traceless, antisymmetric and trace parts:

$$\begin{align}
24^2=299+276+1. \tag{4.8}
\end{align}$$

These are the graviton, antisymmetric two-form and dilaton polarizations of the uncompactified bosonic spectrum. Their existence is not a derivation of an arbitrary metric-affine connection or a Standard Model matter representation.

At fixed chiral level the oscillator multiplicities are encoded by the formal power series

$$\begin{align}
\prod_{m\geq1}(1-q^m)^{-24} =1+24q+324q^2+3200q^3+\cdots. \tag{4.9}
\end{align}$$

At level two, the 324 states are 24 single mode-two excitations plus 300 symmetric pairs of mode-one excitations. Each coefficient depends on finitely many factors, so this counting does not need a convergence claim about a numerical infinite product. Conversely, finite matrix truncations cannot realize $[a,a^\dagger]=I$ exactly: a commutator has trace zero while the identity has positive trace. Low-level counts do not prove the full oscillator or BRST theory.

## 5. A Spacelike Circle: Charges, Level Matching, and T-Duality

Compactify the transverse coordinate $y=X^{D-1}$ by $y\sim y+2\pi R$, with $R>0$. The target is now $\mathbb R^{1,D-2}\times S^1_R$; the circle is not timelike. A closed map can wind,

$$\begin{align}
y(\tau,\sigma+2\pi)=y(\tau,\sigma)+2\pi wR, \qquad w\in\mathbb Z. \tag{5.1}
\end{align}$$

Winding is a topological integer of the map. Independently, periodicity of a quantum wavefunction $e^{ipy}$ gives $p=n/R$, with $n\in\mathbb Z$. Its mean momentum is fixed by (3.3). Combining the sum and difference of the two chiral zero terms gives

$$\begin{align}
\frac{p_L+p_R}{2}=\frac nR,\qquad \pi\alpha'(p_L-p_R)=2\pi wR,
\end{align}$$

$$\begin{align}
\boxed{\quad p_L=\frac nR+\frac{wR}{\alpha'},\qquad p_R=\frac nR-\frac{wR}{\alpha'}.\quad} \tag{5.2}
\end{align}$$

These signs follow from calling the $\tau+\sigma$ sector left. They should not be imported from a convention that assigns the names the other way round.

### 5.1 Deriving Both Mass and Level Conditions

Let $M^2$ now denote minus the square of the **noncompact** momentum in the $(D-1)$-dimensional target. The compact charges are excluded from that definition. The two physical zero-mode conditions become

$$\begin{align}
0=\frac{\alpha'}4(-M^2+p_L^2)+N_L-1, \qquad 0=\frac{\alpha'}4(-M^2+p_R^2)+N_R-1. \tag{5.3}
\end{align}$$

Subtracting them, with $p_L^2-p_R^2=4nw/\alpha'$, gives

$$\begin{align}
\boxed{\quad N_R-N_L=nw.\quad} \tag{5.4}
\end{align}$$

Adding them gives

$$\begin{align}
\boxed{\quad M^2=\frac{n^2}{R^2} +\frac{w^2R^2}{\alpha'^2} +\frac2{\alpha'}(N_L+N_R-2).\quad} \tag{5.5}
\end{align}$$

Neither condition can be discarded: the averaged mass formula alone includes pairs of levels that do not solve the separate constraints.

There is a second way to see the matching sign. Fourier orthogonality in the integrated worldsheet momentum constraint gives

$$\begin{align}
\int_0^{2\pi}P_\mu X'{}^\mu\,d\sigma =\frac{\alpha'}4(p_L^2-p_R^2)+N_L-N_R =nw+N_L-N_R=0. \tag{5.6}
\end{align}$$

The noncompact zero-mode contributions cancel in the chiral difference, and the equal normal-ordering shifts cancel as well. This also ensures periodicity of the longitudinal field reconstructed in light-cone gauge.

### 5.2 The Duality Map and Its Lattice Meaning

Define

$$\begin{align}
R'=\frac{\alpha'}R,\qquad n'=w,\quad w'=n, \qquad y'_L=y_L,\quad y'_R=-y_R. \tag{5.7}
\end{align}$$

The corresponding right oscillator coefficients change sign, so their number level is unchanged. Direct substitution gives $p'_L=p_L$ and $p'_R=-p_R$. Both (5.4) and (5.5) are invariant. At the field-derivative level the same transformation gives $\partial_\tau y'=\partial_\sigma y$ and $\partial_\sigma y'=\partial_\tau y$. It exchanges momentum and winding rather than simply shrinking a point-particle configuration space.

The integer charge vector $q=(n,w)^T$ has pairing

$$
q^T\eta_{1,1}q=2nw,\qquad
 \eta_{1,1}=\begin{pmatrix}0&1\\1&0\end{pmatrix},\qquad
 \mathcal H_R=\begin{pmatrix}\alpha'/R^2&0\\0&R^2/\alpha'\end{pmatrix}.
 \tag{5.8}
$$

The charge part of $\alpha'M^2$ is $q^T\mathcal H_Rq$. The swap matrix preserves $\eta_{1,1}$ and relates $\mathcal H_R$ to the radius-transformed matrix. The lattice is even and unimodular because its norm is $2nw$ and its Gram determinant is $-1$. This indefinite **charge pairing** is not another target-time direction. The calculation supplies an explicit bijection of the specified free spectrum; a full interacting or arbitrary curved-background duality needs additional operator, measure and background data.

### 5.3 A Classical Wound Worldsheet

For nonzero winding, a simple map with no target spatial motion outside the circle is

$$\begin{align}
X^0=|w|R\tau,\qquad y=wR\sigma, \qquad X^I=\text{constant for the other spatial directions}. \tag{5.9}
\end{align}$$

Its induced metric is $w^2R^2\operatorname{diag}(-1,1)$. It solves the wave equation and both constraints, and is nondegenerate when $w\ne0$. Multiple winding counts area and length with covering multiplicity. Its classical energy is tension times length:

$$\begin{align}
E_{\mathrm{cl}}=T(2\pi|w|R)=\frac{|w|R}{\alpha'}. \tag{5.10}
\end{align}$$

For this static configuration, the same energy follows from minus the sigma-integrated Nambu–Goto Lagrangian divided by the target-time rate $dX^0/d\tau$. It is a classical result with no normal-ordering constant. The quantum winding ground-state mass from (5.5) instead includes the $-4/\alpha'$ shift; the two calculations answer different questions.

### 5.4 A Fully Evaluated Charged Quantum State

Choose the critical bosonic theory and

$$\begin{align}
R=2\sqrt{\alpha'},\qquad (n,w)=(2,1),\qquad (N_L,N_R)=(0,2). \tag{5.11}
\end{align}$$

Then $N_R-N_L=2=nw$, and

$$\begin{align}
p_L=\frac3{\sqrt{\alpha'}},\qquad p_R=-\frac1{\sqrt{\alpha'}},\qquad M^2=\frac9{\alpha'}-\frac4{\alpha'} =\frac1{\alpha'}+\frac4{\alpha'}=\frac5{\alpha'}. \tag{5.12}
\end{align}$$

The two displayed forms of the mass are the left and right constraints, not just their average. The right level-two oscillator basis consists of one mode-two excitation or a symmetric pair of mode-one excitations; its dimension is 324 at fixed charge and noncompact momentum. The left sector is its oscillator vacuum. These are free-string basis labels, not a complete finite Hilbert space of the theory.

The dual state has

$$\begin{align}
R'=\frac{\sqrt{\alpha'}}2,\qquad (n',w')=(1,2),\qquad p'_L=\frac3{\sqrt{\alpha'}},\quad p'_R=\frac1{\sqrt{\alpha'}},\quad M'^2=\frac5{\alpha'}. \tag{5.13}
\end{align}$$

The charges really exchange and the right momentum flips. This free-spectrum result does not remove the bosonic tachyon elsewhere in the spectrum, choose a vacuum, or compute interacting mass corrections.

## 6. A Positive Geometric Bridge: Holomorphic Curves and Worldsheets

A curve in an auxiliary complex space and a physical embedding into a Lorentzian target are different kinds of data, but their relation can be studied constructively. The flat incidence geometry of [AST-14](<AST-14.md#L28-L107>) provides an explicit family of curves. An additional metric and classical sigma-model action then give an evaluated geometric worldsheet example. Neither step identifies that example with the critical oscillator theory of Sections 3–5.

### 6.1 Incidence and Actual Normal Deformations

Keep the dual twistor convention of AST-14. Let $X(x)$ be its Hermitian two-by-two spacetime matrix and set $Y_{\rm tw}=X(x)^T/L_0$ with a reference length $L_0>0$. The dimensionless incidence equation is

$$
Z=\begin{pmatrix}\omega^{A'}\\\pi_A\end{pmatrix},\qquad
 \omega=iY_{\rm tw}\pi,\qquad
 L_Y=\{[iY_{\rm tw}\pi,\pi]:\pi\ne0\}\simeq\mathbb{CP}^1.
 \tag{6.1}
$$

Complexifying the four spacetime coordinates lets $Y_{\rm tw}$ be an arbitrary two-by-two complex matrix. In the chart $\pi_0\ne0$, the line is the graph

$$
w(\zeta)=iY_{\rm tw}\begin{pmatrix}1\\\zeta\end{pmatrix},\qquad
 \zeta=\pi_1/\pi_0.
 \tag{6.2}
$$

Here $w$ is a two-component fibre coordinate, not the winding integer or the compact target coordinate y. On the second chart $\widetilde\zeta=1/\zeta$, the fibre coordinate obeys $\widetilde w=\zeta^{-1}w$. Subtracting the graph identifies normal displacements with the vertical bundle, giving

$$\begin{align}
N_{L_Y/\mathbb{PT}^{\circ}}\simeq \mathcal O(1)\oplus\mathcal O(1). \tag{6.3}
\end{align}$$

A section of each summand has chart expression $a+b\zeta$, regular in the other chart after the indicated transition. Thus $\delta w=i\delta Y_{\rm tw}(1,\zeta)^T$ contains four independent complex coefficients. The standard line-bundle cohomology result gives $h^0(N)=4$ and $H^1(N)=0$. Kodaira's local deformation theorem, under its embedded compact complex-curve hypotheses, then explains the smooth local complex family; in this flat chart the family is already written explicitly. The same count is the Grassmannian chart dimension $\dim_{\mathbb C}\operatorname{Gr}(2,4)=4$.

Four complex moduli are not four real physical coordinates without reality data. The Lorentzian family here selects Hermitian $Y_{\rm tw}$, which has four real parameters. This is a real slice of the family, not a target critical-dimension calculation. For curved twistor constructions the analytic and Weyl-chirality hypotheses in AST-14 still apply; the normal-bundle count does not construct a twistor space for an arbitrary affine connection.

### 6.2 Choosing a Metric and a Classical Sigma Model

For an evaluated example, choose the line $Y_{\rm tw}=0$, so its points are $[0,\pi]$. Supply an auxiliary **positive** Hermitian norm on $\mathbb C^4$, distinct from the neutral twistor form used for Lorentzian reality. It induces a Fubini–Study metric; choose its scale so the line is a round sphere of radius $\ell>0$. In a scalar projective chart $z=u+iv$,

$$\begin{align}
ds^2=\frac{4\ell^2(du^2+dv^2)}{(1+u^2+v^2)^2},\qquad \omega_\ell=\frac{4\ell^2\,du\wedge dv}{(1+u^2+v^2)^2}, \qquad \operatorname{Scal}=\frac2{\ell^2}. \tag{6.4}
\end{align}$$

This round metric is extra positive Riemannian data. It is not a positive metric canonically invariant under the full Lorentzian conformal group.

Let the domain now be a Euclidean Riemann sphere with a chosen conformal structure, and let $f$ map it to this target line. Choose a positive classical coupling $\mathcal T$ of inverse-length-squared dimension and Euclidean action

$$\begin{align}
E[f]=\frac{\mathcal T}{2}\int_\Sigma |df|^2\,dV_\Sigma. \tag{6.5}
\end{align}$$

This functional is a dimensionless Euclidean action in the chosen units, not target-time energy. It has the sigma-model form but has not been specified as a quantum critical-string background. For an oriented orthonormal domain frame $(e_1,e_2=je_1)$ put $A=df(e_1)$ and $B=df(e_2)$. With target complex structure $J$ and $\omega_\ell(A,B)=g(JA,B)$, completing the square gives

$$\begin{align}
E[f]=\mathcal T\int_\Sigma f^*\omega_\ell +\frac{\mathcal T}{2}\int_\Sigma |A+JB|^2\,dV_\Sigma. \tag{6.6}
\end{align}$$

The identity uses $g(A,JB)=-\omega_\ell(A,B)$. A holomorphic map has $B=JA$, so the last term vanishes. This is a classical geometric energy bound, with no spacetime-supersymmetry assumption.

### 6.3 An Evaluated Degree Family and What Its Area Means

Use the holomorphic maps $f_d(z)=z^d$, for positive integers $d$, to cover the chosen target line. The pullback area density is
$4\ell^2d^2|z|^{2d-2}(1+|z|^{2d})^{-2}du\wedge dv$.
Its integral is

$$
\begin{aligned}
 A_d&=8\pi\ell^2d^2\int_0^\infty
             \frac{r^{2d-1}}{(1+r^{2d})^2}\,dr\\
    &=4\pi\ell^2d\int_0^\infty\frac{ds}{(1+s)^2}
      =4\pi\ell^2d,\qquad s=r^{2d}.
 \end{aligned}
 \tag{6.7}
$$

Consequently $E[f_d]=4\pi\mathcal T\ell^2d$. In particular the degree-one and degree-two areas are $4\pi\ell^2$ and $8\pi\ell^2$. The latter counts covering multiplicity, not a doubled image sphere. For $d>1$ these maps have branch points; the classical sigma-model energy is well defined there, but one must not apply the nondegenerate-immersion Nambu–Goto elimination at those points.

The normal-bundle calculation concerned embedded degree-one lines; this covering family is a different moduli problem. Its integer $d$ is topological, whereas the scale $\ell$ is continuous. Hence the calculation does not supply a universal quantum area operator or the oscillator mass formula (5.5). A reality condition, a target metric/action, worldsheet constraints and a quantum conformal prescription are distinguishable additional data. The two evaluated constructions show how holomorphic-curve geometry can enter a specified worldsheet model without asserting equivalence of their physical spectra.

## 7. What Changes in a Supersymmetric or Four-Dimensional Model

The free RNS extension adds target-vector-valued **worldsheet** fermions $\psi_+^\mu$ and $\psi_-^\mu$. They are spinors for the two-dimensional worldsheet transformations, not the target superspace coordinates used in [supersymmetric geometry](<AST-15.md>). On a closed circle their antiperiodic and periodic choices are the Neveu–Schwarz and Ramond sectors respectively. Their projections and mutual consistency are part of the model data. The comparison means the conventional locally supersymmetric worldsheet theory; gauge fixing its worldsheet gravitino also introduces the beta–gamma superghost system, of weights three-halves and minus one-half.

For the standard critical RNS construction, per-chirality conformal-field-theory inputs are

$$\begin{align}
c_m=D+\frac D2=\frac{3D}{2},\qquad c_{bc}=-26,\qquad c_{\beta\gamma}=11, \qquad c_{\mathrm{tot}}=\frac{3D}{2}-15. \tag{7.1}
\end{align}$$

The zero-anomaly condition therefore gives $D=10$, under the standard matter, ghost and spin-structure assumptions [3]. This comparison is not a derivation of an RNS spectrum or of spacetime supersymmetry. A GSO projection and suitable background conditions are additional choices; worldsheet supersymmetry alone is not an assertion of target-space supercharges.

The ten-dimensional Lorentzian target extends the four-dimensional negative-time metric by six positive directions. A geometric compactification ansatz might be

$$\begin{align}
M_{10}=M_{1,3}\times K_6, \tag{7.2}
\end{align}$$

with $K_6$ a positive-metric internal space, but its dimension alone does not establish a conformal background or a viable vacuum. Similarly, the bosonic circle model above leaves 25 noncompact dimensions; it is not secretly a four-dimensional critical theory. Reducing its noncompact part to four would require an appropriate internal conformal theory, not deletion of the remaining central charge.

Internal holonomy acts on tangent/spinor data. A color gauge group acts on matter charges. The repeated group name $SU(3)$ does not identify those actions. Compactification, spin/GSO data, gauge bundles, moduli, interactions and a vacuum must be chosen and analyzed before discussing a gauge spectrum, generations or masses. No such phenomenological result follows from the dimension or normal-bundle counts here.

## 8. Scope and References

The physical calculation in this chapter uses a flat metric, one constant spacelike circle, no B-field and no nonconstant dilaton. It establishes the specified free oscillator spectrum and its circle charge duality. It computes no interacting or nonperturbative mass corrections, quantum measure, string-field action or gravitational path integral. General curved sigma-model backgrounds require additional conformal-consistency conditions; no beta-function equation, alpha-prime expansion, all-order convergence statement or arbitrary metric-affine extension is assumed here.

The separate twistor-line and positive sphere calculations are classical geometric models with their own complex/reality/metric data. They do not select a critical dimension, a Standard Model embedding or an M-theory completion. Finite oscillator and lattice tests can verify the displayed algebra and examples; they cannot replace the stated conformal-field-theory, BRST, cohomology or deformation-theorem inputs.

[1] J. Polchinski, *String Theory*, Vol. I: *An Introduction to the Bosonic String*, Cambridge University Press, 1998. Classical actions, critical bosonic quantization, compactification and T-duality. The chiral labels and sigma period in this chapter are fixed explicitly rather than inherited without conversion.

[2] D. Tong, *Lectures on String Theory*, [arXiv:0908.0333](https://arxiv.org/abs/0908.0333), 2009. Introductory bosonic-string notes for the classical action, oscillator quantization, conformal fields, ghosts and compactification.

[3] J. Polchinski, *String Theory*, Vol. II: *Superstring Theory and Beyond*, Cambridge University Press, 1998. Standard RNS matter/ghost central charges, GSO choices and the additional structure of supersymmetric compactification.

[4] [AST-14: Twistor Geometry](<AST-14.md#L28-L107>) fixes the dual incidence dictionary, line normal bundle and local deformation assumptions used in Section 6. K. Kodaira, *Complex Manifolds and Deformation of Complex Structures*, Springer, 1986, is the standard deformation-theorem reference; the flat family here is also constructed directly.
