---
paper id: 2605.26296v3
title: Superdilations at Schwarzschild null infinity
authors:
  - Marco Refuto
publication date: 2026-05-25T19:42
abstract: |-
  The paper uses asymptotic conformal Killing horizons to propose superdilation generators at future null infinity in Schwarzschild spacetime, an extension of the BMS vector-field algebra, a nonzero Iyer--Wald surface charge, and an angle-dependent redshift interpretation. The restricted mass-family charge calculation reproduces, but the present note finds decisive problems in the Carrollian generator and compactification steps, so the flux and non-pure-gauge claims are not established.
comments: "12 pages, 0 figures. v3 improves readability and makes minor changes"
url: https://arxiv.org/abs/2605.26296v3
summary: "A high-relevance but technically unstable superdilation proposal: the Schwarzschild mass variation gives the printed surface integral, while the null generator, full asymptotic symmetry, and radiated-flux interpretation fail independent checks."
tags: []
---

[[2026_07_30_overview|Back to the 2026-07-30 arXiv overview]]

Verdict: the restricted Iyer--Wald-type integral on the one-dimensional Schwarzschild mass family is correct under the paper's surface and mass conventions. The broader statement that the paper has constructed a well-defined superdilation asymptotic symmetry with a radiated-energy flux is not proven. Several equations before and after the charge calculation fail direct xAct/Mathematica checks.

# How the argument is organized

The paper is short, but its claims depend on a long chain. The useful reading route is to separate the chain into the following objects.

| Source section | Technical role | Status in this note |
|---|---|---|
| I. Introduction, Eqs. (1)--(6) | contrasts BMS, Weyl-BMS, and asymptotic superdilations | context only |
| II. Asymptotic flatness, Eqs. (7)--(18) | fixes Bondi expansions and reviews the BMS generator/algebra | one bracket formula fails for the full BMS generator |
| III. No conformal Killing vectors, Eqs. (19)--(21) | motivates an asymptotic rather than bulk conformal symmetry | cited no-go results not re-proved |
| IV.A. Asymptotic conformal Killing horizons, Eqs. (22)--(32) | defines the conformal completion and Carrollian data | definitions recorded; later realization is faulty |
| IV.B. Asymptotic conformal Killing equation, Eqs. (33)--(43) | reduces the conformal Killing equation to component PDEs | angular-derivative and first-subleading terms are missing |
| V.A. First attempt, Eqs. (52)--(58) | finds an underdetermined candidate | source-derived only |
| V.B. Schwarzschild solution, Eqs. (59)--(64) | proposes $X$, $\xi$, and their compactified action | only the leading constant-profile $X$ survives; Eq. (64) fails |
| V.C. Algebra, Eqs. (65)--(74) | splits translations, rotations, and dilations | truncated vector brackets check; group claim does not follow from the derived subclass |
| V.D. Charge, Eqs. (75)--(85) | varies the Schwarzschild mass and integrates the surface kernel | restricted integral checks; flux interpretation does not |
| VI. BMS observers, Eqs. (86)--(94) | computes a displacement bracket and calls it a redshift | bracket checks; observable interpretation and mass suppression do not |
| VII. Conclusions | proposes dynamical, thermodynamic, and quantum extensions | these require a repaired phase-space construction |
| Appendix A.1, Eqs. (A1)--(A8) | constructs an affine null generator | the printed inaffinity and $X/r$ rescaling fail |
| Appendix A.2, Eqs. (A9)--(A20) | derives the constrained generator | the shared-profile condition comes from the failed affine generator |

# Conventions and objects that must not be conflated

| Symbol | Meaning and convention |
|---|---|
| $g_{ab}$ | physical Schwarzschild metric, signature $(-+++)$ |
| $\widetilde g_{ab}=\Omega^2g_{ab}$ | unphysical metric, with $\Omega=1/r$ |
| $(u,r,x^A)$ | retarded Eddington--Finkelstein/Bondi coordinates, $x^A=(\theta,\phi)$ |
| $(u,\Omega,x^A)$ | smooth coordinates at $\mathcal I^+$; essential for tensorial limits |
| $\gamma_{AB},D_A$ | unit-sphere metric and covariant derivative |
| $M$ | geometric Schwarzschild mass parameter in $1-2M/r$; physical ADM mass is $M/G$ if $G$ is restored |
| $X^a$ | proposed asymptotic conformal Killing field defining the ACKH |
| $\widetilde n^a$ | supposed affine null generator in the Carrollian structure |
| $\xi^a$ | proposed symmetry of $(\mathcal I^+,\widetilde h,\widetilde n)$ |
| $Y^A$ | conformal Killing field on $S^2$ |
| $f(x^A)$ | angular profile carried by the final translation and dilation terms |
| $g(x^A)$ | angular profile of $X$; later restricted to a constant |
| $c=ag$ | convenient constant coefficient after $g$ is fixed |
| $\alpha$ | first an angular dilation profile and later a constant; the source reuses the symbol |
| $h_{ab}=\delta g_{ab}$ | Grassmann-even field-space variation |
| $\bar f=\int_{S^2}d\Omega\,f$ | unnormalized sphere integral, not the average |
| $\sigma$ | used both for the affine-rescaling solution and elsewhere for a Carrollian conformal factor |

The source announces $c=G=1$ but retains $G$ in the charge formula. Any ADM normalization statement must therefore say whether $M$ is a geometric mass or a physical mass.

# Schwarzschild and the asymptotic conformal candidate

In retarded coordinates,

$$
u=t-r_*,
\qquad
\frac{dr_*}{dr}
=\left(1-\frac{2M}{r}\right)^{-1},
$$

and

$$
ds^2
=-\left(1-\frac{2M}{r}\right)du^2
-2\,du\,dr
+r^2\gamma_{AB}dx^Adx^B.
\tag{47}
$$

The source begins with

$$
X
=X^u\partial_u
+X^r\partial_r
+X^A\partial_A
$$

and imposes the conformal Killing equation asymptotically,

$$
(\mathcal L_Xg)_{ab}
\big|_{\mathcal I^+}
=\Lambda g_{ab}.
\tag{33}
$$

After setting the Bondi mass aspect to $M$ and the shear data to zero, the printed component system is

$$
2\partial_uX^u
+4\left(1+\frac{2M}{r}\right)\partial_uX^r
=\Lambda,
\tag{48}
$$

$$
\partial_uX^u+\partial_rX^r=\Lambda,
\tag{49}
$$

$$
(\mathcal L_X\gamma)_{AB}
=\left(\Lambda-\frac{2X^r}{r}\right)\gamma_{AB}.
\tag{50}
$$

The proposed solution after imposing $X^A=0$ is

$$
X
=ag(x^A)
\left(u\partial_u+r\partial_r\right)
+b\partial_u,
\qquad
\Lambda=2ag(x^A).
\tag{60}
$$

## What the exact component equations say

Direct component calculation gives, already for Schwarzschild,

$$
(\mathcal L_Xg)_{rA}
=r^2\gamma_{AB}\partial_rX^B
-\partial_AX^u,
$$

$$
(\mathcal L_Xg)_{uA}
=r^2\gamma_{AB}\partial_uX^B
-F\partial_AX^u
-\partial_AX^r,
\qquad
F=1-\frac{2M}{r}.
$$

The source's Eqs. (36)--(38) drop the angular derivatives of $X^u$ and $X^r$. Its $uu$ equation also misses the radial derivative of the metric. The exact equation obtained from
$(\mathcal L_Xg)_{uu}=\Lambda g_{uu}$ is

$$
2\partial_uX^u
+\frac{2}{F}\partial_uX^r
+\frac{2M}{r^2F}X^r
=\Lambda.
$$

Consequently, Eq. (60) with arbitrary $g(x^A)$ fails the $rA$ and $uA$ equations. Setting $g$ constant later removes these angular residuals, but the exact constant-profile result

$$
X=(cu+b)\partial_u+cr\partial_r
$$

still obeys

$$
\mathcal L_Xg-2c\,g
=-\frac{2cM}{r}\,du^2.
$$

It is therefore a leading-order asymptotic conformal Killing field, not a solution through the first subleading order advertised in Sec. IV.B.

Even the source's own reduced Eqs. (48)--(50), if taken without the omitted components, admit

$$
X^u=A(x^A)u+B(x^A),
\qquad
X^r=A(x^A)r.
$$

They do not derive the further restriction $B=b=\mathrm{const.}$.

# The Carrollian null generator is the decisive obstruction

The conformal metric in a smooth chart is

$$
d\widetilde s^2
=-\Omega^2(1-2M\Omega)du^2
+2\,du\,d\Omega
+\gamma_{AB}dx^Adx^B.
$$

For constant $g$, the candidate $X$ becomes

$$
X
=(cu+b)\partial_u
-c\Omega\partial_\Omega.
$$

On $\mathcal I^+$ its nonzero tangent is $(cu+b)\partial_u$. Its boundary inaffinity is $c$, so a nonzero affine normalization is

$$
\widetilde n
=\frac{X}{cu+b}
\longrightarrow\partial_u
\qquad
(\Omega\to0).
$$

The appendix instead prints

$$
k
=c+
\left(\frac1r-\frac{3M}{r^2}\right)(c+b),
\tag{A3}
$$

and

$$
\widetilde n
=e^{-\sigma}X
\simeq\frac Xr.
\tag{A5--A6}
$$

The independently computed $u$-component ratio is

$$
k_u
=c+
\left(\frac1r-\frac{3M}{r^2}\right)(cu+b),
$$

not Eq. (A3). Away from $\mathcal I^+$, $X^a\widetilde\nabla_aX^b$ is not proportional to $X^b$ at the retained order. More importantly,

$$
\frac Xr=\Omega X\longrightarrow0
$$

as a smooth vector field at $\mathcal I^+$. It cannot be the nonzero null generator of a Carrollian structure. The canonical generator quoted by the source,

$$
\widetilde m^a
=\widetilde g^{ab}\nabla_b\Omega
=\partial_u-\left(1-\frac{2M}{r}\right)\partial_r,
\tag{A7--A8}
$$

instead tends to $\partial_u$. Thus $X/r$ does not differ from $\widetilde m$ merely by an angle-dependent rescaling; it vanishes where $\widetilde m$ does not.

This matters downstream. The paper derives the relation between the translation and dilation profiles from

$$
\mathcal L_\xi\widetilde n
=\lambda\widetilde n.
\tag{31}
$$

Using the correct nonzero boundary generator $\widetilde n=\partial_u$, the general boundary form

$$
\xi
=\bigl(f(x^A)+u\,h(x^A)\bigr)\partial_u
+Y^A(x)\partial_A
+\text{normal extension}
$$

gives

$$
\mathcal L_\xi\widetilde n
=[\xi,\partial_u]
=-h(x^A)\partial_u,
$$

and leaves $f$ and $h$ independent. The paper's shared-profile restriction is therefore not obtained from a valid affine generator.

There is also a missing angular term in the appendix computation before $g$ is made constant. Directly,

$$
[\xi,X]^u
=agf+au\,Y[g]-b\alpha,
\qquad
[\xi,X]^r
=ar\,Y[g].
$$

For the paper's generic $g$ ansatz, the formal conditions are

$$
\lambda=\frac{Y[g]}{g}-\varepsilon\alpha,
\qquad
\alpha
=\frac abgf-\frac{Y[g]}{g}.
$$

The printed Eqs. (A16)--(A17) follow only after $Y[g]=0$, notably after the constant-$g$ restriction that the source imposes later.

# The proposed superdilation vector and the compactification test

The final vector field is

$$
\xi
=f(x^A)
\left[
\alpha\left(u\partial_u+r\partial_r\right)
+\partial_u
\right]
+Y^A(x)\partial_A.
\tag{61}
$$

In smooth compactifying coordinates,

$$
\xi^\Omega=-\alpha f\,\Omega.
$$

xAct gives

$$
\left.
(\mathcal L_\xi\widetilde g)_{\Omega A}
\right|_{\mathcal I^+}
=(1+\alpha u)\partial_Af,
$$

and

$$
\left.
(\mathcal L_\xi\widetilde g)_{AB}
\right|_{\mathcal I^+}
=(\mathcal L_Y\gamma)_{AB}.
$$

For a conformal Killing field on a two-sphere,

$$
(\mathcal L_Y\gamma)_{AB}
=(D_CY^C)\gamma_{AB}.
$$

The paper instead says that the only nonzero component is

$$
\lim_{\Omega\to0}
(\mathcal L_\xi\Omega^2g)_{AB}
=\frac12D_CY^C\,\gamma_{AB}.
\tag{64}
$$

There are two distinct failures:

1. the normal-tangent $\Omega A$ component is nonzero for nonconstant $f$;
2. the angular conformal factor is wrong by a factor of two.

The $\Omega A$ component disappears if one first keeps the singular $r$ coordinate and then sends $r\to\infty$; under $r=1/\Omega$, however, the tensor component acquires the Jacobian $\partial r/\partial\Omega=-\Omega^{-2}$ and survives. The full-tensor statement is therefore coordinate-dependent and false. Pulling the tensor back to $\mathcal I^+$ discards the $\Omega A$ component, but it does not repair the angular factor.

# Which algebra is actually computed

The source separates

$$
T(f)=f\partial_u,
\qquad
R(Y)=Y^A\partial_A,
\qquad
D(h)=h\left(u\partial_u+r\partial_r\right).
$$

For independent angular profiles, direct computation gives

$$
[T(f_1),T(f_2)]=0,
\qquad
[D(h_1),D(h_2)]=0,
$$

$$
[R(Y_1),R(Y_2)]
=R([Y_1,Y_2]),
$$

$$
[R(Y),T(f)]
=T(Y[f]),
$$

$$
[R(Y),D(h)]
=D(Y[h]),
$$

$$
[T(f),D(h)]
=T(fh).
$$

The paper's Eqs. (68)--(73) are the specialization $h=\alpha f$ of these coordinate-vector identities. If $f$ and $h$ are independent, the relations support

$$
\operatorname{Conf}(S^2)
\ltimes
\left(
C^\infty(S^2)_T
\ltimes C^\infty(S^2)_D
\right).
\tag{74}
$$

The derived vector in Eq. (61), however, fixes $h=\alpha f$. For a fixed $\alpha$ this is a diagonal one-function subclass, not two independent $C^\infty(S^2)$ modules. Moreover, $T$ and $D$ separately do not obey the appendix's fixed-$X$ centrality condition. The abstract two-function algebra may be the correct Carrollian algebra when $\widetilde n=\partial_u$, but it is not derived by the source's $X/r$ construction.

There is a second representation issue in Sec. II. The full four-dimensional BMS rotation generator contains $u$- and $r$-components. Acting on a supertranslation gives

$$
[R(Y),T(f)]
=T\left(
Y[f]-\frac12fD_AY^A
\right),
$$

whereas source Eq. (18) omits the conformal-weight term. The later pure $Y^A\partial_A$ truncation obeys $T(Y[f])$, but is not the standard four-dimensional BMS representation for general sphere conformal Killing fields.

# The restricted surface-charge calculation

The paper varies only the Schwarzschild mass:

$$
h_{uu}
=\frac{2}{r}\delta M,
\qquad
h^{rr}=h_{uu},
\qquad
h=0.
\tag{77--79}
$$

These statements check using the inverse of Eq. (47). In the source convention, the un-antisymmetrized kernel is

$$
\begin{aligned}
k_\xi^{ab}[h;g]
={}&
\xi^a\nabla_ch^{bc}
-\xi^a\nabla^bh
+\xi_c\nabla^bh^{ac}\\
&+\frac12h\nabla^b\xi^a
-h^{cb}\nabla_c\xi^a.
\end{aligned}
\tag{76}
$$

Direct covariant differentiation gives

$$
k^{ur}
=\frac{2\delta M}{r^2}
\left(\xi^u-r\partial_r\xi^u\right),
$$

$$
k^{ru}
=-\frac{2\delta M}{r^2}\xi^u.
\tag{80--81}
$$

For Eq. (61), $\partial_r\xi^u=0$, so the antisymmetric surface contraction is

$$
k^{ur}-k^{ru}
=\frac{4\delta M}{r^2}\xi^u.
$$

With $\sqrt{-g}=r^2\sin\theta$ and the paper's orientation, path integration along the one-dimensional family $M'\in[0,M]$ yields

$$
Q_\xi(u)
=\frac{M}{4\pi G}
\int_{S^2}d\Omega\,\xi^u
=\frac{M}{4\pi G}
(1+\alpha u)\bar f.
\tag{83--84}
$$

The standard antisymmetrized Einstein--Hilbert Iyer--Wald kernel gives the same $ur$ surface integrand for this perturbation and $\partial_r\xi^u=0$. That agreement is restricted: Eq. (76) is not a complete generic non-Killing kernel, and no equality has been shown for arbitrary perturbations or a radiative phase space.

The source also does not identify whether Eq. (76) is meant as the Lee--Wald, invariant/Barnich--Brandt, or an improved null-boundary representative. Their differences are invisible in this selected $ur$, $\delta M$ calculation but need not vanish on an enlarged phase space.

The path integral is exact because the selected family has one parameter and $\xi$ is taken to be independent of $M$. This is not a proof of integrability on a multidimensional solution space.

## Normalization and zero modes

For $\xi^u=1$,

$$
Q_{\partial_u}=\frac MG.
$$

This is the physical ADM mass if the $M$ in $1-2M/r$ is the geometric mass $GM_{\mathrm{ADM}}$, or if $G=1$ is imposed consistently. With $G$ retained and $M$ called the physical mass, the source's statement $Q=M$ is not correct.

Also,

$$
\bar f=0
\quad\Longrightarrow\quad
Q_\xi=0.
$$

The calculation therefore cannot establish that every superdilation mode is non-gauge. It detects only the sphere-average mode on the Schwarzschild mass family.

# Why the derivative is not a demonstrated energy flux

Differentiating Eq. (84) gives

$$
\frac{dQ_\xi}{du}
=\alpha\frac{M\bar f}{4\pi G}.
\tag{85}
$$

This algebraic derivative is correct. Its sign is $\operatorname{sgn}(\alpha\bar f)$, not the sign of $\alpha$ alone. More fundamentally, the $u$ dependence is already explicit in the generator,

$$
\xi^u=f(1+\alpha u).
$$

The paper does not derive a balance law from a presymplectic current, Wald--Zoupas flux, or Bondi news. Schwarzschild has fixed $M$ and vanishing news. Calling Eq. (85) ingoing or outgoing radiated energy is therefore unsupported.

The charge also diverges as $u\to\pm\infty$. Requiring $t$ and $r_*$ to diverge together while holding $u=t-r_*$ fixed merely selects a finite cut of $\mathcal I^+$; it does not regularize the charge at the endpoints $\mathcal I^+_\pm$.

# Observer displacement and the proposed redshift

At $\mathcal I^+$, the dilation part is

$$
\xi_D
=\alpha f(x^A)u\partial_u.
$$

For a constant displacement

$$
\zeta
=\delta u\,\partial_u
+\delta x^A\partial_A,
$$

the bracket is

$$
[\xi_D,\zeta]
=-
\left[
z(x)\delta u
+\Theta_B(u,x)\delta x^B
\right]\partial_u,
\tag{89}
$$

with

$$
z(x)=\alpha f(x),
\qquad
\Theta_B(u,x)=\alpha u\,\partial_Bf(x).
\tag{90--91}
$$

This computation checks exactly. If one defines a local density

$$
q_\alpha(u,x)
=\frac{M}{4\pi G}\alpha u f(x),
$$

then

$$
z
=\frac{4\pi G}{M}\partial_uq_\alpha,
\qquad
\Theta_B
=\frac{4\pi G}{M}\partial_Bq_\alpha.
\tag{92--94}
$$

also follows.

The calculation is a coordinate-displacement bracket. It does not compute a frequency ratio along null rays, an emitter/receiver tetrad observable, or detector response. The "angle-dependent redshift" remains an interpretation rather than a derived observable. In addition, the factors of $M$ cancel in Eqs. (92)--(94), so the source's statement that these effects are suppressed by the black-hole mass is false as written.

# Translation into the vault's covariant phase-space chain

Against

$$
S
\longrightarrow
\delta S
\longrightarrow
\theta
\longrightarrow
\omega=\delta\theta,
$$

the paper supplies only the final restricted surface-kernel step:

- $S$: Einstein--Hilbert gravity is implicit; no bulk-plus-boundary action is specified.
- $\delta S$: no variational decomposition or boundary equations are written.
- $\theta$: no symplectic potential current or ambiguity is constructed.
- $\omega$: no symplectic current, presymplectic form, kernel, or flux is computed.
- phase space: only the curve of Schwarzschild metrics parameterized by $M$ is varied.
- boundary data: there is no radiative Bondi phase space, Wald--Zoupas correction, counterterm, corner potential, or source/response split.
- charge integrability: exactness is shown only by a one-dimensional $M$ integral.
- gauge status: nonzero average-mode charge is used as a proxy; degeneracy of a presymplectic form is not tested.
- algebra: vector-field brackets are computed, not Poisson brackets of charges; no central term is derived.

The reusable result is consequently narrow:

> On the Schwarzschild mass family, the average of the explicitly time-dependent $\xi^u$ weights the ordinary mass variation.

It should not yet be imported as a superdilation Hamiltonian or balance law.

# Version history and what v3 changes

The official v3 record is dated 29 July 2026 and describes improved readability and minor changes. Direct official-source comparison shows:

- v3 expands the introduction and conclusion;
- it states the $(-+++)$ signature explicitly;
- it adds the tortoise-coordinate and retarded-time formulas;
- it replaces a speculation about constant Bondi mass with the fixed-$u$ prescription;
- it expands possible Vaidya, nonzero-news, entropy, quantum-state, and soft-hair directions;
- it does not change the Sec. V.B generator or compactified-metric calculation relative to v2.

The advertised computational correction occurred from v1 to v2. v1 printed a nonzero $rA$ limit and said Bondi gauge failed; v2 removed that component and claimed only the $AB$ term survives. In a smooth $\Omega$ chart, the corresponding $\Omega A$ term still survives. The version change therefore removes the symptom only in the singular $r$ chart; it does not repair the tensorial compactification test.

# Concrete project extensions after repair

1. Start from the standard smooth Carrollian data
   $$
   \widetilde h_{AB}=\gamma_{AB},
   \qquad
   \widetilde n=\partial_u,
   $$
   and derive the independent translation and dilation profiles before choosing a bulk extension.
2. Specify a Bondi phase space and boundary conditions that the extension preserves; include field-dependent-vector corrections if needed.
3. Derive
   $$
   S\to\delta S\to\theta\to\omega
   $$
   and a Wald--Zoupas or equivalent null-boundary prescription before interpreting $dQ/du$.
4. Test all spherical harmonics. The present mass-family calculation sees only $\ell=0$ through $\bar f$.
5. Compute a detector observable—frequency ratio, affine-energy shift, or memory functional—rather than infer redshift from a coordinate bracket.

# Verification log

## Checked

- The Schwarzschild retarded-coordinate metric, inverse metric, $h_{uu}$, $h^{rr}$, and $h=0$ were reproduced with Mathematica.
- xAct reproduced the constant-profile residual
  $$
  \mathcal L_Xg-2c\,g=-2cM\,du^2/r.
  $$
- xAct in the smooth $\Omega$ chart reproduced the nonzero $\Omega A$ term and the angular block $\mathcal L_Y\gamma$.
- For the explicit sphere conformal Killing field $Y=\sin\theta\,\partial_\theta$, xAct gives
  $$
  D_AY^A=2\cos\theta,
  \qquad
  \mathcal L_Y\gamma=2\cos\theta\,\gamma,
  $$
  with a nonzero residual against the source's one-half factor.
- The appendix inaffinity ratio, vanishing of $X/r$ at $\mathcal I^+$, and nonzero affine choice $X/(cu+b)$ were checked in smooth coordinates.
- All truncated $T/R/D$ coordinate-vector brackets were reproduced for distinct profiles.
- The mass-variation kernel, surface contraction, one-dimensional path integral, and normalization condition were reproduced with covariant derivatives.
- The observer displacement bracket and the conditional local-density identities were reproduced.
- Official v1, v2, and v3 TeX sources were directly diffed; all v3 PDF pages were rendered and visually inspected.

## Blocked

- The cited global no-go theorems for bulk conformal Killing fields were not independently re-proved.
- A repaired bulk extension of the independent Carrollian profiles was not constructed.
- No source supplies the action boundary term, $\theta$, $\omega$, radiative phase space, or Wald--Zoupas prescription needed to test Hamiltonian integrability and flux.
- The non-pure-gauge status of zero-mean modes cannot be decided on the one-dimensional Schwarzschild mass family.
- The angle-dependent redshift interpretation would require a gauge-invariant emitter/receiver calculation not present in the source.

## Failed

- Eqs. (36)--(39)/(48) omit angular-derivative and first-subleading terms of the conformal Killing equation.
- Eq. (60) with nonconstant $g$ fails the $rA$ and $uA$ equations; with constant $g$ it solves only the leading, not first-subleading, equation.
- Eq. (A3) omits the $u$ dependence of the computed inaffinity ratio.
- Eqs. (A5)--(A6) give $\widetilde n=X/r\to0$, so the field is not a nonzero null generator at $\mathcal I^+$.
- Eqs. (A16)--(A17) omit $Y[g]$ before the later constant-$g$ restriction.
- Eq. (64) misses the smooth-chart $\Omega A$ component and has the wrong two-sphere conformal factor.
- Eq. (18) omits the conformal weight in the full BMS action on supertranslations.
- Eq. (74) is not derived from the fixed-$\alpha$ shared-profile subclass of Eq. (61).
- The claim that $\xi^u=1$ gives $M$ requires the unstated convention $M=GM_{\mathrm{ADM}}$ or $G=1$.
- Eq. (85) is not shown to be radiated energy, and its sign is not determined by $\alpha$ alone.
- Holding $u$ fixed does not cure the endpoint divergence.
- The observer identities contain no black-hole-mass suppression after substitution.
