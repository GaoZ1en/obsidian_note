---
title: Gauge Field Theory Conventions
date: 2026-06-20
summary: "A general convention sheet for gauge groups, representations, covariant derivatives, spontaneous symmetry breaking, R_xi gauges, ghosts, renormalization, and anomaly normalization."
---

# Gauge Field Theory Conventions

This note fixes notation at the level of a general gauge theory. Examples from the Standard Model and common exam problems are included only as checks, not as the organizing principle.

## First Sign Check

Most sign errors come from mixing two conventions for the covariant derivative. Always identify the convention used in the problem before writing a transformation law or a Feynman rule.

With Hermitian generators $t^{a}$,
$$\begin{align}
[t^{a},t^{b}]&=if^{abc}t^{c},&
\mathrm{Tr}_{r}(t^{a}t^{b})&=T(r)\delta ^{ab},&
C_{2}(r)\mathbf{1}_{r}&=t^{a}t^{a}.
\end{align}$$
For the fundamental representation of $\mathrm{SU}(N)$,
$$\begin{align}
T(F)&=\dfrac{1}{2},&
C_{2}(F)&=\dfrac{N^{2}-1}{2N},&
C_{2}(G)&=N.
\end{align}$$

If
$$\begin{align}
D_{\mu}&=\partial _{\mu}-igA_{\mu},&
A_{\mu}&=A_{\mu}^{a}t^{a},
\end{align}$$
then
$$\begin{align}
\psi&\to U\psi,\\
A_{\mu}&\to UA_{\mu}U^{\dagger}+\dfrac{i}{g}U\partial _{\mu}U^{\dagger},\\
F_{\mu\nu}&=\partial _{\mu}A_{\nu}-\partial _{\nu}A_{\mu}-ig[A_{\mu},A_{\nu}],\\
F_{\mu\nu}^{a}&=\partial _{\mu}A_{\nu}^{a}-\partial _{\nu}A_{\mu}^{a}+gf^{abc}A_{\mu}^{b}A_{\nu}^{c}.
\end{align}$$
For $U=e^{i\alpha ^{a}t^{a}}$,
$$\begin{align}
\delta A_{\mu}^{a}&=\dfrac{1}{g}\partial _{\mu}\alpha ^{a}-f^{abc}\alpha ^{b}A_{\mu}^{c},&
\delta F_{\mu\nu}^{a}&=-f^{abc}\alpha ^{b}F_{\mu\nu}^{c}.
\end{align}$$

If instead
$$\begin{align}
D_{\mu}&=\partial _{\mu}+igA_{\mu},&
\psi&\to U\psi,
\end{align}$$
then the inhomogeneous term in the gauge-field transformation has the opposite sign. In Abelian notation, for $D_{\mu}=\partial _{\mu}+ieA_{\mu}$ and $\phi\to e^{i\alpha}\phi$,
$$\begin{align}
A_{\mu}&\to A_{\mu}-\dfrac{1}{e}\partial _{\mu}\alpha.
\end{align}$$

## Product Gauge Groups

For a product gauge group $G=G_{1}\times G_{2}\times\cdots$, a field in representation $r_{1}\otimes r_{2}\otimes\cdots$ has
$$\begin{align}
D_{\mu}
&=\partial _{\mu}-i\sum_{I}g_{I}A_{\mu}^{a_{I}}t_{r_{I}}^{a_{I}},
\end{align}$$
where each generator acts only on its own representation factor.

For the Standard Model,
$$\begin{align}
D_{\mu}
&=\partial _{\mu}
-ig_{s}G_{\mu}^{A}T^{A}
-igW_{\mu}^{I}\dfrac{\tau ^{I}}{2}
-ig'YB_{\mu}.
\end{align}$$
The minimal representations are
$$\begin{align}
Q_{L}&:(\mathbf{3},\mathbf{2})_{1/6},&
u_{R}&:(\mathbf{3},\mathbf{1})_{2/3},&
d_{R}&:(\mathbf{3},\mathbf{1})_{-1/3},\\
L_{L}&:(\mathbf{1},\mathbf{2})_{-1/2},&
e_{R}&:(\mathbf{1},\mathbf{1})_{-1},&
H&:(\mathbf{1},\mathbf{2})_{1/2}.
\end{align}$$
The electric charge is $Q_{\mathrm{em}}=T^{3}+Y$.

## Field Strength And Gauge Action

The Yang-Mills action in the Hermitian-generator convention is
$$\begin{align}
\mathcal{L}_{\mathrm{YM}}
&=-\dfrac{1}{4}F_{\mu\nu}^{a}F^{a,\mu\nu}
=-\dfrac{1}{2}\mathrm{Tr}(F_{\mu\nu}F^{\mu\nu})
\end{align}$$
when $\mathrm{Tr}(t^{a}t^{b})=\frac{1}{2}\delta ^{ab}$. The covariant derivative in the adjoint representation is
$$\begin{align}
(D_{\mu}X)^{a}
&=\partial _{\mu}X^{a}+gf^{abc}A_{\mu}^{b}X^{c}
\end{align}$$
for the $D_{\mu}=\partial _{\mu}-igA_{\mu}$ convention.

The Bianchi identity and equation of motion are
$$\begin{align}
D_{[\mu}F_{\nu\rho]}&=0,&
(D_{\mu}F^{\mu\nu})^{a}&=J^{a,\nu}.
\end{align}$$

## Matter Actions

For a complex scalar in representation $r$,
$$\begin{align}
\mathcal{L}_{\phi}
&=(D_{\mu}\phi)^{\dagger}D^{\mu}\phi-V(\phi),\\
D_{\mu}\phi&=\partial _{\mu}\phi+s\,igA_{\mu}^{a}t_{r}^{a}\phi,\qquad s=\pm1.
\end{align}$$
Its expanded kinetic term is
$$\begin{align}
(D_{\mu}\phi)^{\dagger}D^{\mu}\phi
&=\partial _{\mu}\phi^{\dagger}\partial ^{\mu}\phi
+s\,igA_{\mu}^{a}(\partial ^{\mu}\phi^{\dagger}t^{a}\phi-\phi^{\dagger}t^{a}\partial ^{\mu}\phi)
+g^{2}A_{\mu}^{a}A^{b,\mu}\phi^{\dagger}t^{a}t^{b}\phi.
\end{align}$$

For a real scalar multiplet $\varphi ^{i}$ with real antisymmetric generators $T^{a}$, one convenient convention is
$$\begin{align}
D_{\mu}\varphi ^{i}
&=\partial _{\mu}\varphi ^{i}+gA_{\mu}^{a}(T^{a})^{i}{}_{j}\varphi ^{j},&
\delta\varphi ^{i}
&=-\alpha ^{a}(T^{a})^{i}{}_{j}\varphi ^{j}.
\end{align}$$
The adjoint representation is the special case $(T^{a})^{b}{}_{c}=f^{bac}$.

For a Dirac fermion,
$$\begin{align}
\mathcal{L}_{\psi}
&=\bar{\psi}(i\gamma ^{\mu}D_{\mu}-m)\psi.
\end{align}$$
The gauge-fermion interaction sign follows directly from the sign in $D_{\mu}$:
$$\begin{align}
D_{\mu}=\partial _{\mu}-igA_{\mu}^{a}t^{a}
&\Rightarrow
\mathcal{L}_{\mathrm{int}}=g\bar{\psi}\gamma ^{\mu}A_{\mu}^{a}t^{a}\psi,\\
D_{\mu}=\partial _{\mu}+igA_{\mu}^{a}t^{a}
&\Rightarrow
\mathcal{L}_{\mathrm{int}}=-g\bar{\psi}\gamma ^{\mu}A_{\mu}^{a}t^{a}\psi.
\end{align}$$

## Spontaneous Symmetry Breaking

Let $v$ be the vacuum value of the scalar field. The unbroken Lie algebra is
$$\begin{align}
\mathfrak{h}
&=\{X\in\mathfrak{g}\mid Xv=0\}.
\end{align}$$
Generators not annihilating $v$ are broken. The corresponding gauge bosons become massive and the scalar fluctuations along the directions $T^{a}v$ are Goldstone modes before gauge fixing.

For a real scalar multiplet with kinetic term $\frac{1}{2}(D_{\mu}\varphi )^{T}(D^{\mu}\varphi )$, the gauge-boson mass matrix is
$$\begin{align}
(M_{A}^{2})_{ab}
&=g^{2}(T^{a}v)\cdot(T^{b}v).
\end{align}$$
For a complex scalar in representation $r$,
$$\begin{align}
(M_{A}^{2})_{ab}
&=g^{2}v^{\dagger}\{t^{a},t^{b}\}v
\end{align}$$
when the mass term is written as $\frac{1}{2}A_{\mu}^{a}(M_{A}^{2})_{ab}A^{b,\mu}$.

For the Standard Model Higgs vacuum,
$$\begin{align}
H&=\begin{pmatrix}0\\ (v+h)/\sqrt{2}\end{pmatrix},
\end{align}$$
one obtains
$$\begin{align}
m_{W}^{2}&=\dfrac{g^{2}v^{2}}{4},&
m_{Z}^{2}&=\dfrac{(g^{2}+g'^{2})v^{2}}{4},&
m_{\gamma}^{2}&=0.
\end{align}$$

## R_xi Gauge In Broken Gauge Theories

For a real scalar multiplet, expand $\varphi=v+\eta$. The scalar kinetic term contains the gauge-Goldstone mixing
$$\begin{align}
\mathcal{L}_{\mathrm{mix}}
&=gA_{\mu}^{a}(T^{a}v)\cdot\partial ^{\mu}\eta
=-g(\partial _{\mu}A^{a,\mu})(T^{a}v)\cdot\eta
\end{align}$$
up to a total derivative. A linear $R_{\xi}$ gauge can be chosen as
$$\begin{align}
f^{a}
&=\partial _{\mu}A^{a,\mu}-\xi g(T^{a}v)\cdot\eta,\\
\mathcal{L}_{\mathrm{gf}}
&=-\dfrac{1}{2\xi}f^{a}f^{a}.
\end{align}$$
This cancels $\mathcal{L}_{\mathrm{mix}}$. In a basis that diagonalizes $M_{A}^{2}$, the Goldstone and ghost masses in broken directions are
$$\begin{align}
m_{\chi ^{a}}^{2}&=\xi m_{A^{a}}^{2},&
m_{c^{a}}^{2}&=\xi m_{A^{a}}^{2}.
\end{align}$$

The Faddeev-Popov operator is defined by
$$\begin{align}
M^{ab}(x,y)
&=\dfrac{\delta f^{a}(x)}{\delta\alpha ^{b}(y)}\bigg|_{\alpha=0}.
\end{align}$$
Up to field-independent signs and normalizations, its quadratic broken-phase part is the operator that gives the ghost denominator $p^{2}-\xi m_{A}^{2}+i\epsilon$.

## Ghosts, BRST, And Counterterms

For an unbroken non-Abelian gauge theory in a covariant gauge,
$$\begin{align}
\mathcal{L}_{\mathrm{gh}}
&=\partial _{\mu}\bar{c}^{a}(D^{\mu}c)^{a}
=\partial _{\mu}\bar{c}^{a}\partial ^{\mu}c^{a}
-gf^{abc}\partial _{\mu}\bar{c}^{a}c^{b}A^{c,\mu}
\end{align}$$
in the sign convention used above.

Before writing a Feynman rule, fix:

- whether all momenta are incoming;
- which field is differentiated;
- the order of ghost and antighost fields;
- whether the object is a vertex or a counterterm insertion.

For example, the ghost-gluon vertex momentum is the momentum on the differentiated antighost line. The wave-function counterterm from
$$\begin{align}
\delta\mathcal{L}_{\mathrm{gh}}
&=\delta _{3}^{c}\partial _{\mu}\bar{c}^{a}\partial ^{\mu}c^{a}
\end{align}$$
is a two-point insertion proportional to $i\delta ^{ab}\delta _{3}^{c}p^{2}$, not a propagator.

BRST transformations package gauge fixing and ghosts. Schematically,
$$\begin{align}
sA_{\mu}^{a}&=(D_{\mu}c)^{a},&
sc^{a}&=-\dfrac{g}{2}f^{abc}c^{b}c^{c},&
s\bar{c}^{a}&=B^{a},&
sB^{a}&=0.
\end{align}$$
The nilpotency $s^{2}=0$ is the origin of the Slavnov-Taylor identities among renormalization constants.

## Renormalization And Beta Functions

The basic principle is that bare quantities do not depend on the arbitrary renormalization scale $\mu$. In dimensional regularization, write $d=4-2\epsilon$. For a gauge coupling,
$$\begin{align}
g_{0}
&=\mu ^{\epsilon}Z_{g}(g,\epsilon)g,&
\beta(g)&=\mu\dfrac{dg}{d\mu}.
\end{align}$$
Since $\mu d g_{0}/d\mu=0$,
$$\begin{align}
0
&=\epsilon+\dfrac{\beta(g)}{g}
+\beta(g)\dfrac{\partial}{\partial g}\log Z_{g}.
\end{align}$$
Hence
$$\begin{align}
\beta(g)
&=-\dfrac{\epsilon g}{1+g\partial _{g}\log Z_{g}}.
\end{align}$$
In an MS-like scheme, a one-loop result has the form
$$\begin{align}
Z_{g}
&=1-\dfrac{\beta _{0}g^{2}}{32\pi ^{2}\epsilon}+O(g^{4}).
\end{align}$$
Then
$$\begin{align}
\beta(g)
&=-\epsilon g-\dfrac{\beta _{0}}{16\pi ^{2}}g^{3}+O(g^{5}),
\end{align}$$
and in four dimensions
$$\begin{align}
\beta(g)
&=-\dfrac{\beta _{0}}{16\pi ^{2}}g^{3}+O(g^{5}).
\end{align}$$

In practice, $Z_{g}$ is often extracted from field and vertex renormalization constants. Write
$$\begin{align}
A_{0}^{a,\mu}&=Z_{3}^{1/2}A^{a,\mu},&
c_{0}^{a}&=(Z_{3}^{c})^{1/2}c^{a},&
\psi _{0}&=Z_{2}^{1/2}\psi.
\end{align}$$
Gauge invariance or BRST symmetry implies that the same $Z_{g}$ can be extracted from different vertices:
$$\begin{align}
Z_{g}
&=Z_{1}Z_{2}^{-1}Z_{3}^{-1/2}
=Z_{1}^{c}(Z_{3}^{c})^{-1}Z_{3}^{-1/2}
=Z_{1}^{3g}Z_{3}^{-3/2}.
\end{align}$$
At one loop, if $Z_i=1+\delta_i$, this means for the ghost-gluon vertex
$$\begin{align}
\delta_g
&=\delta _{1}^{c}-\delta _{3}^{c}-\dfrac{1}{2}\delta _{3}.
\end{align}$$
After reducing $\delta_g$ to
$$\begin{align}
\delta_g
&=-\dfrac{\beta _{0}g^{2}}{32\pi ^{2}\epsilon},
\end{align}$$
the beta function follows immediately.

For a non-Abelian gauge theory with $n_{f}$ Dirac fermions in representation $r$,
$$\begin{align}
\beta _{0}
&=\dfrac{11}{3}C_{2}(G)-\dfrac{4}{3}T(r)n_{f}.
\end{align}$$
For QCD with fundamental quarks,
$$\begin{align}
\beta _{0}
&=11-\dfrac{2}{3}n_{f},&
\dfrac{1}{g^{2}(\mu)}
&=\dfrac{1}{g^{2}(\mu _{0})}+\dfrac{\beta _{0}}{8\pi ^{2}}\ln\dfrac{\mu}{\mu _{0}}.
\end{align}$$

Other running quantities are obtained by the same logic. For a multiplicatively renormalized mass,
$$\begin{align}
m_{0}
&=Z_{m}m,
\end{align}$$
the bare mass is $\mu$-independent, so
$$\begin{align}
\mu\dfrac{d}{d\mu}\log m
&=-\mu\dfrac{d}{d\mu}\log Z_{m}.
\end{align}$$
In a mass-independent scheme, $Z_m$ depends on dimensionless couplings but not on $m$ itself:
$$\begin{align}
\mu\dfrac{d}{d\mu}\log m
&=-\sum_i\beta_i\dfrac{\partial}{\partial g_i}\log Z_m.
\end{align}$$
At one loop, if
$$\begin{align}
Z_m
&=1+\dfrac{a g^{2}}{\epsilon}+O(g^{4}),
\end{align}$$
then the finite four-dimensional running is
$$\begin{align}
\mu\dfrac{d}{d\mu}\log m
&=2ag^{2}+O(g^{4}).
\end{align}$$
Some books define the mass anomalous dimension with the opposite sign,
$$\begin{align}
\gamma_m
&=-\mu\dfrac{d}{d\mu}\log m.
\end{align}$$
Check this convention before comparing formulas.

For a mass-squared parameter,
$$\begin{align}
(m_{0}^{2})_i
&=(Z_{m^{2}})_{ij}(m^{2})_j,
\end{align}$$
the beta function is generally a matrix equation,
$$\begin{align}
\mu\dfrac{d}{d\mu}(m^{2})_i
&=(\gamma_{m^{2}})_{ij}(m^{2})_j.
\end{align}$$
Relevant operators can mix with other operators of the same quantum numbers. In cutoff language this is where additive scalar-mass sensitivity appears; in MS-like schemes it is encoded in the renormalization and mixing of the corresponding operators.

Fields have anomalous dimensions rather than beta functions. If
$$\begin{align}
\Phi_0
&=Z_{\Phi}^{1/2}\Phi,
\end{align}$$
then a common convention is
$$\begin{align}
\gamma_{\Phi}
&=\dfrac{1}{2}\mu\dfrac{d}{d\mu}\log Z_{\Phi}.
\end{align}$$
The Callan-Symanzik equation uses these $\gamma_{\Phi}$ factors together with the beta functions of couplings and masses.

Wilson coefficients and composite operators also run by the same bare-quantity argument. If
$$\begin{align}
\mathcal{O}_{0,i}
&=Z_{ij}\mathcal{O}_{j},
\end{align}$$
then operator mixing gives an anomalous-dimension matrix. Equivalently, coefficients multiplying these operators run with the transpose inverse matrix, so that the bare action remains $\mu$-independent.

## Topological Terms And Anomalies

The standard normalization of the Yang-Mills topological density is
$$\begin{align}
q(x)
&=\dfrac{g^{2}}{32\pi ^{2}}F_{\mu\nu}^{a}\tilde{F}^{a,\mu\nu},&
\tilde{F}^{a,\mu\nu}
&=\dfrac{1}{2}\epsilon ^{\mu\nu\rho\sigma}F_{\rho\sigma}^{a}.
\end{align}$$
The $\theta$ term is
$$\begin{align}
\mathcal{L}_{\theta}
&=\theta q(x).
\end{align}$$

For a chiral rotation of a Dirac fermion,
$$\begin{align}
\psi&\to e^{i\beta\gamma _{5}}\psi,
\end{align}$$
the fermion measure is anomalous. The induced shift of the effective $\theta$ angle depends on the representation and on the axial charge assignment; for one fundamental Dirac fermion of QCD, the usual unit normalization gives a shift proportional to $2\beta$.

For an axion coupling,
$$\begin{align}
\mathcal{L}_{aFF}
&=\dfrac{g^{2}}{32\pi ^{2}}\dfrac{a}{f_{a}}F_{\mu\nu}^{a}\tilde{F}^{a,\mu\nu},
\end{align}$$
the invariant statement is that the physical CP-violating parameter is a combination of $\theta$ and $a/f_{a}$, with the relative sign fixed by the chosen chiral rotation and anomaly convention.

## Quick Sanity Checks

- If a gauge boson mass appears without a scalar vacuum or explicit mass term, check gauge invariance.
- If $F_{\mu\nu}\to0$ at infinity, $A_{\mu}$ may still approach a pure gauge.
- If a ghost propagator contains two denominators before loop integration, rederive the FP quadratic operator.
- If a counterterm looks like a propagator, rewrite it as a 1PI insertion.
- If a beta function for QCD is positive at small $n_{f}$, the sign convention for $Z_{g}$ or $\beta(g)$ has likely been reversed.
- If a Yukawa term is claimed to be invariant under a global $\mathrm{U}(1)$, check the charge of $\bar{\psi}_{L}$, not only $\psi _{L}$.
