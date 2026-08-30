---
paper id: 2607.07785v1
title: Quantization of Gravity on Null Hypersurfaces
authors: [Luca Ciambelli, Marc S. Klinger]
publication date: 2026-07-08T18:00
abstract: "The initial value problem for general relativity on spacelike hypersurfaces is famously captured by the ADM formalism. Less well known is the Cauchy problem for general relativity on null hypersurfaces, which goes under the name of the Characteristic Initial Value Problem (CIVP). The CIVP is formulated on a pair of intersecting null hypersurfaces, encoding rich physics in the interplay between their respective initial data, and especially the gluing of these hypersurfaces at their shared codimension-two corner. In this work, we construct an operator-algebraic quantization of the CIVP. To do so, we first quantize each null hypersurface separately, using the corner symmetries as a guiding principle, and then glue them together at the joint initial cut. The resulting algebra admits an inner action of the full corner symmetry (semi)group consisting of superboosts, superrotations, and supertranslations. These are associated, respectively, with the quantization of the area, the Hájiček one-form, and the expansion along both null directions. Supertranslations do not act as algebra preserving maps, but instead are quantized to quantum channels and included into the algebra via a generalized form of the Stinespring dilation theorem. The inclusion of superboosts and superrotations implements the gravitational constraints arising from Einstein's equations at the level of the quantum algebra. By virtue of the CIVP, in its local caustic-free domain of validity, our construction yields a candidate for the on-shell algebra of a gravitational subregion subtended by a pair of null hypersurfaces."
comments: "55 pages, 16 figures"
pdf: "[[Attachments/Assets/Quantization of Gravity on Null Hypersurfaces (2607.07785v1).pdf]]"
url: https://arxiv.org/abs/2607.07785v1
tags: []
---

## Geometric Setup

Suppose two null hypersurfaces

$$\begin{align}
N_{+},N_{-}
\end{align}$$

defined in 4-dimensional spacetime, which intersect at a codimension-two corner

$$\begin{align}
S & =N_{+}\cap N_{-}
\end{align}$$

at $\displaystyle{S}$, we choose two null generators

$$\begin{align}
\ell ^{a}_{\pm}\in TN_{\pm}
\end{align}$$

and let

$$\begin{align}
\ell _{+}\cdot \ell _{-} & =\mu=e^{-m}<0
\end{align}$$

here $\displaystyle{m}$ is the boost potential.

### Cut Metric

The induced metric on the corner $\displaystyle{S}$ is given by

$$\begin{align}
q_{ab} & =g_{ab}-\mu ^{2}(\ell _{+a}\ell _{-b}+\ell _{-a}\ell _{+b})
\end{align}$$

its pullback is denoted as $\displaystyle{q_{AB}}$, and we can decompose it as

$$\begin{align}
q_{AB} & =\Omega \bar{q}_{AB}, & \det \bar{q} & =1, & \Omega & =\sqrt{ \det q }
\end{align}$$

so

$$\begin{align}
q_{AB} \xleftrightarrow{} (\Omega,\bar{q}_{AB})
\end{align}$$

### Second Fundamental Forms

Along the two null directions, we define

$$\begin{align}
\chi ^{(\pm)}_{AB} & =q^{a}_{A}q^{b}_{B}\nabla _{a}\ell _{\pm b}=\dfrac{1}{2}\mathcal{L}_{\ell _{\pm}}q_{AB}
\end{align}$$

which decomposes as

$$\begin{align}
\chi ^{(\pm)}_{AB} & =\sigma ^{(\pm)}_{AB}+\dfrac{1}{2}\theta _{\pm}q_{AB}
\end{align}$$

where

$$\begin{align}
\theta _{\pm} & =q^{AB}\chi ^{(\pm)}_{AB}, & q^{AB}\sigma ^{(\pm)}_{AB} & =0
\end{align}$$

therefore

$$\begin{align}
\theta _{\pm} & =\mathcal{L}_{\ell _{\pm}}\log \Omega \\
\sigma ^{\pm}_{AB} & =\dfrac{\Omega}{2}\mathcal{L}_{\ell _{\pm}}\bar{q}_{AB}
\end{align}$$

since $\displaystyle{\chi _{AB}^{+}}$ and $\displaystyle{\chi _{AB}^{-}}$ are derivatives of different directions, we should not impose any gluing relations at $\displaystyle{S}$.

### Normal-Bundle Connection

The normal bundle of $\displaystyle{S}$ is a $\displaystyle{\mathrm{SO}(1,1)}$ bundle. After choosing the null frame $\displaystyle{(\ell _{+},\ell _{-})}$, define

$$\begin{align}
\omega _{A}:=\mu ^{-1}\ell _{-b}D_{A}\ell ^{b}_{+}
\end{align}$$

where $\displaystyle{D_{A}}$ is the derivative along $\displaystyle{S}$.

If we keep $\displaystyle{\mu}$ invariant and take the residual boost

$$\begin{align}
\ell _{+} & \to e^{\alpha}\ell _{+}, & \ell _{-} & \to e^{-\alpha}\ell _{-}
\end{align}$$

then

$$\begin{align}
\omega _{A} & \to \omega _{A}+D_{A}\alpha
\end{align}$$

therefore $\displaystyle{\omega _{A}}$ is the $\displaystyle{\mathrm{SO}(1,1)}$ connection of the normal bundle. At the same time, we have

$$\begin{align}
\theta _{\pm} & \to e^{\pm \alpha}\theta _{\pm}, & \sigma ^{\pm}_{AB} & \to e^{\pm \alpha}\sigma ^{\pm}_{AB}
\end{align}$$

### $\displaystyle{m}$ and Clocks

If we allow independently reparameterize the two null generators

$$\begin{align}
\ell _{\pm} & \to e^{\alpha _{\pm}}\ell _{\pm}
\end{align}$$

then

$$\begin{align}
m & \to m-\alpha _{+}-\alpha _{-}
\end{align}$$

so we can gauge fix $\displaystyle{m}$ as

$$\begin{align}
m & =0, & \ell _{+}\cdot \ell _{-}=-1
\end{align}$$

and there are opposite boost that keeps $m$ invariant, namely $\alpha_+ = -\alpha_-$, which act as the residual $\mathrm{SO}(1,1)$ gauge transformations on the normal bundle.

The affinities

$$\begin{align}
\nabla _{\ell _{\pm}}\ell _{\pm} & =\kappa _{\pm}\ell _{\pm}
\end{align}$$

## Characteristic Data

A Sachs-type working chart can be written as

$$\begin{align}
N_{+}: &\bar{q}_{AB}^{+}(u,x)\text{ or } \sigma ^{+}_{AB}(u,x),\ell _{+},\kappa _{+} \\
N_{-}: &\bar{q}_{AB}^{-}(v,x)\text{ or } \sigma ^{-}_{AB}(v,x),\ell _{-},\kappa _{-} \\
S: & \Omega _{0},\theta _{\pm0},\omega _{A_{0}},m_{0}
\end{align}$$

and we should require

$$\begin{align}
\bar{q}^{+}_{AB}|_{S} & =\bar{q}^{-}_{AB}|_{S}=\bar{h}_{AB}
\end{align}$$

the Raychaudhuri equation in the 4-dim vacuum is

$$\begin{align}
\mathcal{L}_{\ell _{\pm}}\theta _{\pm} & =\kappa _{\pm}\theta _{\pm}-\dfrac{1}{2}\theta ^{2}_{\pm}-\sigma ^{\pm}_{AB}\sigma ^{AB}_{\pm}
\end{align}$$

so given

$$\begin{align}
\kappa _{\pm},\sigma ^{\pm}_{AB},\Omega _{0},\theta _{\pm 0}
\end{align}$$

we can reconstruct

$$\begin{align}
\Omega _{\pm},\theta _{\pm}
\end{align}$$

along the sheet.

### Compare with CK

CK defines the characteristic data as

$$\begin{align}
\mathfrak{i} & =\left\{h_{AB},\theta _{\pm}|_{S},\pi _{A}|_{S},m|_{S};\kappa _{\pm},\ell _{\pm},\sigma ^{\pm}_{AB}\right\}
\end{align}$$

we have the following correspondence

$$\begin{align}
h_{AB} \iff & (\Omega _{0},\bar{h}_{AB}) \\
\pi _{A} \iff & \omega _{A} \\
\sigma ^{\pm}_{AB}\iff & \bar{q}^{\pm}_{AB} & \text{after given } \ell _{\pm} \text{ and } \bar{h}_{AB}
\end{align}$$

so our charactertistic data is equivalent to CK's data. CK claims that the CIVP is well-posed, and our data reproduces the same structure.

## Gluing at the Corner

We start form two independent null hypersurace tata

$$\begin{align}
\mathcal{D}_{\pm} \text{ on }N_{\pm}
\end{align}$$

with boundary

$$\begin{align}
S_{\pm}
\end{align}$$

we will identify $\displaystyle{S_{+}}$ and $\displaystyle{S_{-}}$, and glue the two null hypersurfaces along the identified corner $S$.

Choose diffeomorphism

$$\begin{align}
\phi:S_{+}\to S_{-}
\end{align}$$

choose

$$\begin{align}
\mu & :S\to \mathbb{R}_{-}, & \mu=-e^{-m}
\end{align}$$

we have

$$\begin{align}
\ell _{+}\cdot \ell _{-}=\mu
\end{align}$$

impose

$$\begin{align}
q^{+}_{AB} & =\phi ^{*}q^{-}_{AB} \\
\iff \Omega _{+}=\phi ^{+}\Omega _{-}, & \bar{h}_{AB}^{+}=\phi ^{*}\bar{h}_{AB}^{-}
\end{align}$$

and $\displaystyle{\chi ^{\pm}_{AB}}$ remains independent.

...

Not so interesting...

## Characteristic Data

The characteristic data can be chosen as

$$\begin{align}
\mathfrak{d}_{\mathrm{char}} & =\left(\bar{q}^{+}_{AB}(u,x),\bar{q}^{-}_{AB}(v,x);\Omega _{0},\bar{h}_{AB},\theta _{\pm 0},\omega _{A 0},m_{0}; \ell _{\pm},\kappa _{\pm}\right)/\mathcal{G}
\end{align}$$

where

$$\begin{align}
\mathcal{G} & =\mathrm{Diff}(S)\ltimes \left\{\text{generator reparameterizations/normal boosts}\right\}
\end{align}$$

and the gluing/matching condition

$$\begin{align}
\bar{q}^{\pm}|_{S}=\bar{h}
\end{align}$$

## compatible boundary action on $\displaystyle{N^{\pm}}$ and $\displaystyle{S}$

---

### Classical action-polarization audit

This subsection is **purely classical**.  Its purpose is not to quantize the corner data, but to ask which variational polarization of the Einstein--Hilbert action is compatible with the double-null CIVP data used above.  Three logically distinct questions must be kept separate:

1. which term makes the off-shell Einstein--Hilbert variational problem well posed on a null boundary;
2. which variables are coordinates and which are momenta in the resulting null presymplectic potential;
3. whether the null constraints have already been solved so that only free characteristic profiles and corner integration constants remain.

The standard null-action literature answers the first two questions before the full double-null constraint reduction.  It does **not** by itself prove that the resulting action has already descended to the reduced CIVP data listed above.

#### 1. Convention ledger: the Dirichlet representative

Let the spacetime region have two null boundary pieces $N_+$ and $N_-$ meeting at $S$, with generators $\ell_+$ and $\ell_-$, and

$$
\ell_+\!\cdot\ell_-=-e^{-m}.
$$

Introduce orientation signs $\epsilon_\pm$ for the two null sheets and $\epsilon_S$ for the joint.  A common Dirichlet representative of the action is schematically

$$
\begin{aligned}
I_{\mathrm D}[M]
={}&\frac{1}{16\pi G}\int_M (R-2\Lambda)\,\epsilon
+\frac{1}{8\pi G}\sum_{\pm}\epsilon_\pm
\int_{N_\pm}\! d\lambda_\pm d^2x\,\sqrt q\,\kappa_\pm \\
&+\frac{\epsilon_S}{8\pi G}\int_S d^2x\,\sqrt q\,a_{+-}
+\text{terms on the other endpoints}.
\end{aligned}
$$

Here $\ell_\pm^a\nabla_a\ell_\pm^b=\kappa_\pm\ell_\pm^b$.  In the convention of [Lehner--Myers--Poisson--Sorkin](https://arxiv.org/abs/1609.00207),

$$
a_{+-}=\log\left|\frac{\ell_+\!\cdot\ell_-}{2}\right|
=-m-\log 2.
$$

If the factor $1/2$ is omitted from the logarithm, then $a_{+-}=-m$.  The additive constant is not automatically irrelevant when $q_{AB}$ is varied: it multiplies the area of $S$ and therefore changes the corner representative.  The overall signs are also not universal; they depend on whether a sheet is a future or past boundary, on the direction chosen for its generator, and on whether the joint is convex or concave.  Thus the displayed formula is a convention ledger, not a sign-free identity.

[Parattu--Chakraborty--Majhi--Padmanabhan](https://arxiv.org/abs/1501.01053) use the equally standard null analogue

$$
I_{N_\pm}^{(\kappa+\theta)}
=\frac{\epsilon_\pm}{8\pi G}
\int_{N_\pm}\sqrt q\,(\kappa_\pm+\theta_\pm),
$$

whereas the representative above contains only $\kappa_\pm$.  These differ by

$$
\int_{N_\pm}d\lambda_\pm d^2x\,\sqrt q\,\theta_\pm
=\int_{N_\pm}d\lambda_\pm d^2x\,\partial_{\lambda_\pm}\sqrt q
=A(S_{\mathrm f})-A(S_{\mathrm i}).
$$

**Re-derived here:** the $\theta_\pm$ term is a generator-direction total derivative, so it can be moved between a null-boundary term and its endpoint/corner terms.  Two formulas that differ by this term represent the same bulk variational problem only after all endpoint terms and their signs have been shifted consistently.  The unified treatments of [Jubb--Samuel--Sorkin--Surya](https://arxiv.org/abs/1612.00149) and [Lehner et al.](https://arxiv.org/abs/1609.00207) make precisely this corner bookkeeping explicit.

There is a second, independent convention choice.  Under a reparametrization $\ell_\pm\mapsto e^{\beta_\pm}\ell_\pm$, the $\kappa_\pm$ term and the logarithmic joints transform.  One may either regard the normalization/parameter of $\ell_\pm$ as fixed boundary structure, or add the Lehner et al. intrinsic counterterm, schematically

$$
I_{\mathrm{rep},\pm}
\sim \frac{1}{8\pi G}\int_{N_\pm}\sqrt q\,\theta_\pm
\log\!\bigl(\ell_{\mathrm{ct}}|\theta_\pm|\bigr),
$$

with the sign correlated with the orientation convention.  This restores generator-reparametrization invariance, but it is not the same issue as making the Dirichlet variation well posed.  It also changes the representative of the boundary potential.  In what follows, the cleaner choice is to regard $\ell_\pm$ and its parametrization as fixed unless stated otherwise.

#### 2. What the Dirichlet variation says are canonical pairs

For a four-dimensional null sheet, the intrinsic metric can be decomposed as

$$
q_{AB}=\Omega\,\bar q_{AB},
\qquad \det\bar q=1,
\qquad \Omega=\sqrt{\det q}.
$$

Up to orientation signs, choices of auxiliary null normal, and $\delta$-exact and sheet-exact terms, the bulk part of the null presymplectic potential obtained by [Hopfmüller--Freidel](https://arxiv.org/abs/1611.03096) has the structure

$$
\Theta_{N_\pm}^{\mathrm{bulk}}
\widehat{=}
\frac{1}{8\pi G}\int_{N_\pm}\epsilon_{N_\pm}
\left[
\frac12\widetilde\sigma_\pm^{AB}\,\delta\bar q^\pm_{AB}
-\omega_A^{(\pm)}\,\delta\ell_\pm^A
-\left(\kappa_\pm+\frac12\theta_\pm\right)\delta\log\Omega
\right].
$$

Here $\widetilde\sigma^{AB}_\pm$ denotes the appropriately densitized conformal shear.  The symbol $\widehat{=}$ is essential: the precise signs and density powers depend on conventions.  Moreover, the Hájíček/twist momentum appearing in a canonical decomposition equals the present $\omega_A$ only after the rigging, normal-frame boost, and pullback conventions have been fixed; under a boost it can shift by a gradient.

Thus the unreduced sheetwise canonical pairs are, schematically,

$$
\boxed{
(\bar q^\pm_{AB},\,\widetilde\sigma_\pm^{AB}),
\qquad
(\ell_\pm^A,\,-\omega_A^{(\pm)}),
\qquad
(\log\Omega,\,-\mu_\pm),
}
$$

with

$$
\mu_\pm:=\kappa_\pm+\frac12\theta_\pm
$$

in four spacetime dimensions.  This agrees with the single-null potential used in the present paper, whose spin-0 momentum is $\kappa+(d-1)\theta/d$ for a $d$-dimensional cut, hence $\kappa+\theta/2$ when $d=2$.  [Chandrasekaran--Flanagan--Shehzad--Speranza](https://arxiv.org/abs/2109.11567) give the same content in Carrollian variables: fixing the intrinsic null-boundary structure $(q_{ij},\ell^i)$ leaves a Brown--York-type momentum built from the null extrinsic curvature, expansion, inaffinity, and Hájíček form.

At a null--null joint, varying $\sqrt q\,a_{+-}$ gives

$$
\delta(\sqrt q\,a_{+-})
=\sqrt q\,\delta a_{+-}+a_{+-}\,\delta\sqrt q.
$$

The first term cancels the relative-normal-normalization variation supplied by the two null segments.  The residual corner potential is therefore of the form

$$
\Theta_S\widehat{=}
\frac{\epsilon_S}{8\pi G}\int_S a_{+-}\,\delta\sqrt q,
$$

so the area density and the boost angle are a corner canonical pair:

$$
\boxed{(\sqrt q,\,a_{+-})\simeq(\sqrt q,\,-m+\text{constant}).}
$$

This is also what the explicit double-null symplectic form of [Reisenberger](https://arxiv.org/abs/1211.3880) finds: its corner sector contains $\delta m\wedge\delta\rho_0$, with $\rho_0$ the area density, while the twist is paired with endpoint-label/embedding variables.  Consequently, $\omega_A$ is **not** universally conjugate to $m$ or to $q_{AB}$; its partner depends on whether tangential generator labels and corner embeddings are retained as edge variables or quotiented out.

One may exchange the corner polarization by the elementary Legendre identity

$$
a_{+-}\,\delta\sqrt q
=-\sqrt q\,\delta a_{+-}+\delta(a_{+-}\sqrt q).
$$

Adding or subtracting the last total variation switches between fixing the area density and fixing $m$ (up to the convention-dependent constant).  It is not consistent to declare both members of this canonical pair to be independently fixed Dirichlet sources merely because both occur in a list of initial phase-space data.

#### 3. Polarization A: shear profiles on $N_\pm$

Consider

$$
\left.
\begin{aligned}
N_\pm:&\quad \sigma^\pm_{AB}(\lambda_\pm,x),\ \ell_\pm,\ \kappa_\pm,\\
S:&\quad q_{AB},\ \theta_{+0},\ \theta_{-0},\ \omega_{A0},\ m_0 .
\end{aligned}
\right\}
\qquad\text{modulo the stated gauge identifications.}
$$

The $\kappa_\pm$ null-boundary term and logarithmic null--null joint remain the natural starting terms because they remove the transverse-derivative variation of the Einstein--Hilbert action.  They do not, however, make the shear itself a Dirichlet coordinate.  In the spin-2 sector the Dirichlet potential is

$$
P_I^\pm\,\delta Q_\pm^I,
$$

where $Q_\pm^I$ are local coordinates on the space of unit-determinant conformal metrics and $P_I^\pm$ is the corresponding densitized shear.  Fixing $P_I^\pm$ instead requires a boundary Legendre transform

$$
P_I^\pm\delta Q_\pm^I
=-Q_\pm^I\delta P_I^\pm+\delta(P_I^\pm Q_\pm^I),
$$

so locally one would add

$$
I_{\mathrm{Leg},\pm}^{(2)}=-\int_{N_\pm}P_I^\pm Q_\pm^I
$$

with the overall normalization and orientation inherited from $\Theta_{N_\pm}$.  A tempting covariant expression $\int\widetilde\sigma^{AB}\bar q_{AB}$ vanishes identically because the shear is tracefree.  Therefore the cited second-order null-GHY literature does **not** supply a globally defined, manifestly covariant pure-shear Legendre functional for free.  One must use a coordinate patch on conformal-metric space, a first-order formulation, or an explicitly constructed generating functional.

The spin-0 issue is more serious.  The data above give $q_{AB}$ and $\theta_{\pm0}$ only at $S$; the area profile $\Omega(\lambda_\pm,x)$ is then reconstructed by the null constraint/Raychaudhuri transport equation.  Off shell, however, the standard Einstein--Hilbert variation contains

$$
-\mu_\pm\,\delta\log\Omega
$$

all along $N_\pm$.  An equation of motion cannot be used to set this off-shell variation to zero.  Hence a local action whose boundary sources are literally “shear profile plus only corner spin-0 integration constants” requires one of the following additional constructions:

- first enlarge to a first-order null action in which $\Omega$ and the Raychaudhuri constraint have their own multiplier, and then reduce; or
- evaluate/pull back the full action and presymplectic potential to the characteristic constraint surface, carefully retaining all endpoint terms.

A spin-0 Legendre transform would instead make $\mu_\pm=\kappa_\pm+\theta_\pm/2$ the fixed sheetwise source.  That is **not** the same as fixing only $\theta_{\pm0}$ at $S$, so it does not by itself solve the CIVP matching problem.

For the spin-1 sector, no Legendre transform is needed if $\ell_\pm$ (including its tangential labeling and parametrization) is fixed.  If one wants to fix the full $\omega_A^{(\pm)}$ profile while allowing $\ell_\pm^A$ to vary, then an analogous spin-1 Legendre transform is needed.  If only $\omega_{A0}$ is supplied at $S$ and its sheetwise value is reconstructed by the Damour constraint, the same off-shell-versus-reduced distinction reappears.

At $S$, the standard joint naturally treats $q_{AB}$, hence $\sqrt q$, as the corner coordinate and $m$ as its momentum.  Switching to fixed $m$ requires the corner Legendre transform above.  The data list $(q_{AB},m)$ describes a point of corner phase space; it does not mean that a single well-posed variational principle should hold both fixed.

**Verdict for polarization A:** it is natural for solving the classical constraints in “momentum-like” shear variables, but it is the least direct local polarization of the second-order Einstein--Hilbert action.  A spin-2 boundary Legendre transform and a genuine characteristic constraint reduction remain to be constructed.

#### 4. Polarization B: conformal-metric profiles on $N_\pm$

Now take

$$
\left.
\begin{aligned}
N_\pm:&\quad \bar q^\pm_{AB}(\lambda_\pm,x),\ \ell_\pm,\ \kappa_\pm,\\
S:&\quad q_{AB},\ \theta_{+0},\ \theta_{-0},\ \omega_{A0},\ m_0 .
\end{aligned}
\right\}
$$

The spin-2 term $\widetilde\sigma_\pm^{AB}\delta\bar q^\pm_{AB}/2$ shows that this is the natural Dirichlet spin-2 polarization.  Therefore:

- the $\kappa_\pm$ null-GHY representative (or the equivalent $\kappa_\pm+\theta_\pm$ representative with shifted endpoints) is natural;
- the logarithmic joint $\sqrt q\,a_{+-}$ is natural;
- no spin-2 boundary Legendre transform is required;
- the sheetwise canonical momentum conjugate to $\bar q^\pm_{AB}$ is the densitized conformal shear.

This is also the polarization most directly comparable with Reisenberger's double-null free data, where a conformal two-metric profile lives on each branch and the area density, relative-normal boost $m$, and twist data live at the intersection.  After solving the constraints, his bulk symplectic form is expressed nonlocally in the conformal data along the generators; this is evidence that constraint reduction changes the appearance of the naïve local canonical pair even though it starts from the same spin-2 polarization.

Nevertheless, this data set is not the full induced metric on $N_\pm$.  It does not independently fix $\Omega(\lambda_\pm,x)$, $\theta_\pm(\lambda_\pm,x)$, or $\omega_A^{(\pm)}(\lambda_\pm,x)$ throughout each sheet.  Those quantities are reconstructed from $q_{AB}|_S$, $\theta_{\pm0}$, $\omega_{A0}$, the chosen $\kappa_\pm$, and the null constraints.  Consequently the standard Dirichlet action becomes an action for this reduced data only **after** its potential is pulled back to the constraint surface.  The well-posedness of the unreduced Dirichlet problem does not prove the well-posedness or completeness of that reduced pullback.

At the corner, retaining the ordinary joint means using the area polarization $(\sqrt q,-m)$.  The two expansions $\theta_{+0}$ and $\theta_{-0}$ are independent normal derivatives and are not to be equated.  They are integration constants for the two Raychaudhuri equations, not an additional canonical pair with each other.  Their precise appearance in the final double-null corner potential can be determined only after the two sheet potentials and all endpoint terms are combined.

**Verdict for polarization B:** among the three choices considered here, this is the best match to an action-first formulation of the classical CIVP.  It agrees with the natural spin-2 Dirichlet coordinate, needs no spin-2 Legendre transform, and leaves the genuinely relational datum $m$ in the standard logarithmic joint.  Its remaining nontrivial step is constraint reduction, not a change of spin-2 polarization.

#### 5. Polarization C: full induced-metric/Dirichlet null data

The null-GHY literature usually fixes the full intrinsic null-boundary geometry: equivalently, a degenerate induced metric together with its null generator/Carrollian structure.  In the present variables this amounts, after gauge choices, to fixing $q_{AB}(\lambda,x)$ and $\ell^a(\lambda,x)$ on each $N_\pm$, including both $\Omega$ and $\bar q_{AB}$, and fixing the induced $q_{AB}$ at joints.

For this polarization the standard answer is the cleanest:

$$
I_{N_\pm}=\frac{\epsilon_\pm}{8\pi G}\int_{N_\pm}\sqrt q\,\kappa_\pm,
\qquad
I_S=\frac{\epsilon_S}{8\pi G}\int_S\sqrt q\,a_{+-},
$$

or the $\kappa_\pm+\theta_\pm$ representative with the compensating endpoint shift.  No boundary Legendre transform is needed.  The variation identifies the shear/extrinsic-curvature tensor as momentum conjugate to the conformal metric, $\mu_\pm=\kappa_\pm+\theta_\pm/2$ as momentum conjugate to the area variable, and the Hájíček/twist form as momentum conjugate to the generator/Carrollian direction.  This is the local off-shell variational problem treated by Parattu et al., Hopfmüller--Freidel, Jubb et al., and Chandrasekaran et al.

Its disadvantage for the CIVP is equally precise: fixing the entire $q_{AB}(\lambda,x)$ fixes data that the reduced characteristic problem intends to reconstruct from a conformal profile and corner integration constants.  Thus it is a valid unreduced Dirichlet action, but it is not yet the reduced double-null characteristic action.  Simply restricting its boundary values after the variation is not a proof that no corner term or degeneracy is lost.

#### 6. Comparison

| characteristic choice | natural null term | natural null--null term | Legendre transform? | status relative to the CIVP |
|---|---|---|---|---|
| $\sigma^\pm_{AB}$ profiles plus $(q_{AB},\theta_{\pm0},\omega_{A0},m_0)$ at $S$ | start from $\int\sqrt q\,\kappa_\pm$ (or $\kappa_\pm+\theta_\pm$ with endpoint shift) | $\int_S\sqrt q\,a_{+-}$, with $a_{+-}=-m+\mathrm{const}$ | yes in the spin-2 sector; possibly also spin-1/corner sectors depending on what is fixed | natural constraint-solving variables, but no established local covariant pure-shear boundary action |
| $\bar q^\pm_{AB}$ profiles plus the same corner integration constants | same | same | no spin-2 transform; corner transform only if fixing $m$ rather than area | closest to the natural action polarization; still requires pullback to the characteristic constraint surface |
| full induced $q_{AB}(\lambda,x)$ and null generator on each sheet | same | same | no | standard local off-shell null Dirichlet problem, but overcomplete relative to reduced free CIVP data |

#### 7. Project-specific conclusion and open derivation

**Project-specific inference, not a theorem from the cited papers:** the most economical action polarization for the classical double-null CIVP is a mixed one:

$$
\boxed{
\text{conformal-metric Dirichlet on }N_\pm
+\text{ area Dirichlet at }S
+\text{ the logarithmic }m\text{-joint},
}
$$

with $\ell_\pm$ and their parametrizations fixed at the first pass.  The variables $\theta_{\pm0}$ and $\omega_{A0}$ should initially be regarded as characteristic integration/momentum data, not as additional Dirichlet fields along the whole sheets.  The shear description may be obtained later by a genuine boundary canonical transformation, but that transformation should not be assumed merely from the kinematical relation between $\sigma^\pm_{AB}$ and $\mathcal L_{\ell_\pm}\bar q^\pm_{AB}$.

What remains to be derived directly from Einstein--Hilbert plus null-boundary and corner terms is:

1. fix one orientation, auxiliary-normal, boost, and generator-reparametrization convention for both sheets;
2. vary the full action with both null pieces and every endpoint/joint term, retaining all $d$-exact and $\delta$-exact contributions until the two sheets are glued;
3. pull the resulting potential back to the solutions of the Raychaudhuri and Damour constraints with free data $\bar q^\pm_{AB}$ and corner constants $(q_{AB},\theta_{+0},\theta_{-0},\omega_{A0},m_0)$;
4. determine whether tangential generator labels/corner embeddings are retained as edge modes or quotiented, which decides the canonical partner of $\omega_A$;
5. compute the final glued $\Theta_X$ and $\Omega_X$, checking explicitly which sheet-endpoint terms cancel and which produce corner pairs;
6. construct, if desired, an actual generating functional for the change from $\bar q^\pm_{AB}$ to shear-based data and verify that it preserves the reduced symplectic form.

**Not proven by the current action literature:** there is not yet, from the formulas quoted above alone, a unique local action whose independent boundary sources are exactly the two shear profiles plus only $(q_{AB},\theta_{\pm0},\omega_{A0},m_0)$ at $S$; nor has the full double-null reduced symplectic form $\Omega_X$ been obtained here.  Those are the substantive calculations required before claiming equivalence between an action polarization and the classical CIVP phase space.

Primary references: [Parattu et al., arXiv:1501.01053](https://arxiv.org/abs/1501.01053); [Hopfmüller--Freidel, arXiv:1611.03096](https://arxiv.org/abs/1611.03096); [Jubb et al., arXiv:1612.00149](https://arxiv.org/abs/1612.00149); [Lehner et al., arXiv:1609.00207](https://arxiv.org/abs/1609.00207); [Chandrasekaran et al., arXiv:2109.11567](https://arxiv.org/abs/2109.11567); [Reisenberger, arXiv:1211.3880](https://arxiv.org/abs/1211.3880).
