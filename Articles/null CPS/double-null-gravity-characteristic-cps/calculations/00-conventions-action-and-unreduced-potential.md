# 00 — Conventions, action, and unreduced null potential

## 0. Status and separation of provenance

**Stage-0 verdict: the kinematic conventions and one unreduced action
representative are fixed.**  The projector, rescaling laws, Raychaudhuri
conventions, action-representative shift, and spin-1 dictionary below follow
from the displayed definitions.  Section 6 computes the initial cut entirely
in the HF canonical representative; it does not mix that cut split with a
separately normalized LMPS/Jubb joint split.  The exact geometry closing the
two *outer* cuts is not fixed; its signed variables are kept as finite-cell
ports rather than discarded.

**Known from literature.**  The $\kappa$ null term and logarithmic joint rules
are the Dirichlet representative of Lehner--Myers--Poisson--Sorkin (LMPS),
arXiv:1609.00207, especially their action summary (1.2)--(1.3) and null-joint
rule following it.  The alternative $\kappa+\theta$ representative is the
Parattu--Chakraborty--Majhi--Padmanabhan boundary term, arXiv:1501.01053.  The
endpoint bookkeeping may be compared with Jubb--Samuel--Sorkin--Surya,
arXiv:1612.00149 only after one canonical split is fixed.  The canonical null
potential and the distinction between
normal connection and twist use Hopfmüller--Freidel (HF), arXiv:1611.03096,
eqs. (3.31), (A3), (4.29)--(4.30), and (5.4)--(5.5).  The Carrollian momentum
interpretation is only a terminology check against
Chandrasekaran--Flanagan--Shehzad--Speranza, arXiv:2109.11567.

**Re-derived here.**  All dictionaries and total-derivative identities are
worked out below in this project's signature and notation.

## 1. Region, signature, orientations, and generators

Use signature $(-,+,+,+)$ and coordinates $(u,v,x^A)$ near the cross.  The
initial characteristic sheets are

$$
N_+=\{v=0,\ 0\leq u\leq L_+\},\qquad
N_-=\{u=0,\ 0\leq v\leq L_-\},
$$

with $S_0=\{u=v=0\}$ and outer cuts $S_+=\{u=L_+,v=0\}$,
$S_-=\{u=0,v=L_-\}$.  The generators point from $S_0$ to the outer cuts:

$$
\ell_+=\partial_u,\qquad \ell_-=\partial_v
$$

in the zero-shift chart used for the first calculation.  The general adapted
metric may be written

$$
ds^2=q_{AB}(dx^A+s_+^Adu+s_-^Adv)(dx^B+s_+^Bdu+s_-^Bdv)
-2e^{-m}du\,dv.
\tag{1.1}
$$

At $S_0$, and along the zero-shift sheets,

$$
\ell_+\!\cdot\ell_-=-e^{-m}<0.
\tag{1.2}
$$

Choose the spacetime volume form

$$
\epsilon_g=e^{-m}du\wedge dv\wedge\epsilon_q,
\qquad \epsilon_q=\Omega\,d^2x.
$$

For the rectangle $u,v\geq0$, Stokes orientation gives

$$
\operatorname{or}_{\partial M}(N_+)=+du\wedge\epsilon_q,
\qquad
\operatorname{or}_{\partial M}(N_-)=-dv\wedge\epsilon_q.
\tag{1.3}
$$

The characteristic initial-data potential is minus the past-boundary flux.
After this conversion both branches use the positive parameter measures
$du\,d^2x$ and $dv\,d^2x$.  Every formula below labelled $\Theta_X$ uses this
converted orientation.  This distinction prevents a boundary-orientation
minus sign from being mistaken for a relative sign between the two pieces of
initial data.

For a positively parametrized segment, its endpoint incidence is fixed as

$$
\partial[0,L_\pm]=S_\pm-S_0,
\qquad [F]_0^{L_\pm}=F(S_\pm)-F(S_0).
\tag{1.4}
$$

## 2. Projector and intrinsic two-geometry

Write

$$
\mu_{+-}:=\ell_+\!\cdot\ell_-=-e^{-m}.
$$

The cut projector is

$$
q_{ab}=g_{ab}-\mu_{+-}^{-1}
(\ell_{+a}\ell_{-b}+\ell_{-a}\ell_{+b})
=g_{ab}+e^m(\ell_{+a}\ell_{-b}+\ell_{-a}\ell_{+b}).
\tag{2.1}
$$

Indeed,

$$
q_{ab}\ell_+^b=\ell_{+a}-\mu_{+-}^{-1}
(\mu_{+-}\ell_{+a}+0)=0,
$$

and similarly for $\ell_-$.  On the common orthogonal two-plane it equals
$g_{ab}$, so $q_a{}^cq_c{}^b=q_a{}^b$.  A matrix realization is included in
the Wolfram check.

Decompose

$$
q_{AB}=\Omega\bar q_{AB},\qquad \det\bar q=1,
\qquad \Omega=\sqrt{\det q_{AB}}.
\tag{2.2}
$$

On either sheet define

$$
B^\pm_{AB}:=\frac12\mathcal L_{\ell_\pm}q_{AB},\qquad
\theta_\pm:=q^{AB}B^\pm_{AB}=\mathcal L_{\ell_\pm}\log\Omega,
$$

$$
\sigma^\pm_{AB}:=B^\pm_{AB}-\frac12\theta_\pm q_{AB},\qquad
\ell_\pm^b\nabla_b\ell_\pm^a=\kappa_\pm\ell_\pm^a.
\tag{2.3}
$$

The symbol $\mu_{+-}$ is used only for the cross-normal inner product.  The
spin-0 momentum is instead

$$
\Pi_{\Omega,\pm}:=\kappa_\pm+\frac12\theta_\pm.
\tag{2.4}
$$

This symbol denotes the geometric combination used by HF/CK.  Since (5.1)
contains $-\Pi_\Omega\delta\log\Omega$, the coefficient canonically
conjugate to $\Omega$ is $p_\Omega=-\Pi_\Omega$.  The latter is the
dynamical area momentum to be matched in characteristic composition; it must
not be confused with an outer logarithmic normal/boost port $b$.

## 3. Normal connection, boosts, and the HF spin-1 momentum

Normalize an auxiliary null on $N_+$ by

$$
n_+^a=e^m\ell_-^a,\qquad \ell_+\!\cdot n_+=-1,
$$

and define the $+$-branch Hájíček/normal connection

$$
\omega_A:=-q_A{}^a n_{+b}\nabla_a\ell_+^b
=-e^m q_A{}^a\ell_{-b}\nabla_a\ell_+^b.
\tag{3.1}
$$

Write this form as $\omega_A^{(+)}$.  The other branch has its own adapted
form

$$
\omega_A^{(-)}:=-e^m q_A{}^a\ell_{+b}\nabla_a\ell_-^b.
\tag{3.1a}
$$

Differentiating $\ell_+\cdot\ell_-=-e^{-m}$ directly gives

$$
\boxed{
\omega_A^{(+)}+\omega_A^{(-)}=-D_A m.}
\tag{3.1b}
$$

The shared double-null datum is therefore

$$
\widehat\omega_A
:=\frac12(\omega_A^{(+)}-\omega_A^{(-)}),
\qquad
\omega_A^{(+)}=\widehat\omega_A-\frac12D_A m,
\qquad
\omega_A^{(-)}=-\widehat\omega_A-\frac12D_A m.
\tag{3.1c}
$$

Calculation 03 derives this dictionary and its relation to Reisenberger's
twist.  A single branch-adapted $\omega_A$ must not be assigned unchanged to
both sheets.

For comparison with HF on $N_+$ set $L=\ell_+$ and $\bar L=-n_+$, so
$L\cdot\bar L=+1$, which is HF's normal-frame convention.  Their normal
connection is

$$
\omega_A^{\rm HF}=q_A{}^a\bar L^b\nabla_aL_b=\omega_A.
\tag{3.2}
$$

This equality follows from the normalized frame; it is not an identification
based on the common letter.  HF's momentum conjugate to the tangential
generator displacement $L^A$ is instead minus the boost-invariant twist
$\bar\eta_A$.  Their identity (A3), translated to the present frame, is

$$
\bar\eta_A-\omega_A=D_A\bar\alpha,
\qquad
p_A^{\rm HF}=-\bar\eta_A=-\omega_A-D_A\bar\alpha.
\tag{3.3}
$$

Here $\bar\alpha$ records the rigging/foliation boost between $L$ and the
coordinate generator.  In the fixed double-null boost gauge
$\bar\alpha=0$,

$$
p_A^{\rm HF}=-\omega_A.
\tag{3.4}
$$

Thus the spin-1 momentum agrees with $-\omega_A$ only after the normal frame
and boost gauge are fixed.

Under independent rescalings

$$
\ell_+\mapsto e^{\beta_+}\ell_+,qquad
\ell_-\mapsto e^{\beta_-}\ell_-,
$$

one has

$$
m\mapsto m-\beta_+-\beta_-,\qquad
\omega_A\mapsto\omega_A+D_A\beta_+.
\tag{3.5}
$$

The residual opposite boost $\beta_+=b$, $\beta_-=-b$ leaves $m$ invariant
and shifts $\omega_A\mapsto\omega_A+D_Ab$.  The first pass fixes this normal
frame together with generator labels/embeddings; it does not silently quotient
the corner by a boost that acts on the retained $\omega_{A0}$.

## 4. Endpoint-complete action ledger

Let

$$
C_G:=\frac1{8\pi G}.
$$

With the orientations (1.3), the action representative is

$$
I^{(\kappa)}=
\frac1{16\pi G}\int_M R\,\epsilon_g
+C_G\sum_{\alpha=\pm}\epsilon_\alpha
\int_{N_\alpha}\Omega\kappa_\alpha\,d\lambda_\alpha d^2x
+C_G\sum_J\epsilon_J\int_J\Omega a_J\,d^2x
+I_{\rm other}.
\tag{4.1}
$$

Here $\epsilon_+=+1$ and $\epsilon_-=-1$ are the literal induced boundary
orientations in (1.3).  $I_{\rm other}$ denotes the standard GHY/null term on
the boundary pieces that close the spacetime region; it is not set to zero.
The joint signs $\epsilon_J$ are the induced LMPS incidence signs of those
closing pieces.  Equivalently, after converting to the positive characteristic
orientation, every null segment uses (1.4): outer minus initial.  This is the
sign convention used in the reduction.

All three endpoint variables are retained:

$$
a_0=\log\left|\frac{\ell_+\cdot\ell_-}{2}\right|
=-m_0-\log2,
\tag{4.2}
$$

$$
a_+=\log|n_+^{\rm out}\cdot\ell_+|,
\qquad
a_-=\log|n_-^{\rm out}\cdot\ell_-|,
\tag{4.3}
$$

where $n_\pm^{\rm out}$ is the oriented unit/null normal of the boundary piece
meeting $N_\pm$.  Equations (4.2)--(4.3) are precisely where the outer
embedding and normalization polarization enters.  An additive constant in
$a_J$ is not discarded when $\Omega$ varies.

For later comparison, one LMPS logarithmic-joint convention would write

$$
I_{S_0}^{\rm LMPS}=C_G\int_{S_0}\Omega_0a_0\,d^2x.
\tag{4.4}
$$

This formula is not inserted independently into the HF cut decomposition of
section 5.  The two decompositions differ by total field-space and cut
variations.  Section 6 uses HF equations (4.29)--(4.30) consistently and only
then compares the resulting two-form with the LMPS/Reisenberger variables.

The Parattu representative is

$$
I_N^{(\kappa+\theta)}
=C_G\int_N\Omega(\kappa+\theta)\,d\lambda d^2x.
\tag{4.5}
$$

Using $\partial_\lambda\Omega=\Omega\theta$,

$$
I_N^{(\kappa+\theta)}-I_N^{(\kappa)}
=C_G[\Omega]_0^L.
\tag{4.6}
$$

It is safest to shift the **signed** joint densities
$j_J:=\epsilon_Ja_J$, because the numerical $\epsilon_J$ depends on whether
the closing boundary is spacelike, timelike, or null.  With the endpoint
incidence (1.4), set

$$
j_L^{(\kappa+\theta)}=j_L^{(\kappa)}-1,
\qquad
j_0^{(\kappa+\theta)}=j_0^{(\kappa)}+1.
\tag{4.7}
$$

Then the signed joint change is $-C_G[\Omega]_0^L$, so the complete action and its
variation are unchanged.  Thus the two representatives differ only by an
endpoint canonical transformation when *both* endpoints are kept.  The
Wolfram script verifies (4.6)--(4.7) on the exact Stage-1 solution.

## 5. Unreduced potential used for the pullback

In the fixed-label/embedding, fixed-parametrization first pass, the HF bulk
potential translated to the present variables is

$$
\Theta_{N_\pm}^{\rm bulk}
=C_G\int_{N_\pm}\Omega\left[
\frac12\widetilde\sigma_\pm^{AB}\delta\bar q^\pm_{AB}
-\bar\eta_{\pm A}\delta\ell_\pm^A
-\Pi_{\Omega,\pm}\delta\log\Omega
\right]d\lambda_\pm d^2x.
\tag{5.1}
$$

Here

$$
\widetilde\sigma_\pm^{AB}:=\Omega\sigma_\pm^{AB},
\qquad
dB_\pm=d\lambda_\pm\,dS
=\Omega\,d\lambda_\pm d^2x.
\tag{5.2}
$$

Thus $\widetilde\sigma^{AB}$ is the conformal shear tensor appearing in the HF
contraction, while the **full coefficient with respect to the bare coordinate
measure** is $\Omega\widetilde\sigma^{AB}$.  The outer $\Omega$ in (5.1) must
not be dropped.  Calculation 02 separates this tensor identity from the
density-valued potential explicitly.

Overall characteristic orientation is the positive one described after
(1.3).  In the gauge $\bar\alpha_\pm=0$, the spin-1 term is
$-\omega_{\pm A}\delta\ell_\pm^A$ and vanishes for fixed generator
embeddings, without setting $\omega_A$ itself to zero.

The action also leaves cut terms.  In HF variables, for fixed $L^A$, their
spin-0 structure is

$$
\Theta_{\partial N}^{(0)}
=\frac{C_G}{2}\left[(1+h_L)\delta\Omega_L
-(1+h_0)\delta\Omega_0\right],
\tag{5.3}
$$

up to the already declared orientation conversion.  The $h$ variables encode
the normal metric at a cut.  At $S_0$ both branches see the same $2\times2$
normal block.  The $h$-split in (5.3) and an LMPS logarithmic-joint split are
related by cut and total-field-space variations; they must not be added as
though they were independent terms.

## 6. Initial cut in the unified HF representative

HF define the logarithmic normal-volume scalar by
$e^h=\sqrt{|H|}$.  In the project metric gauge,

$$
H_{ij}=\begin{pmatrix}0&-e^{-m}\\-e^{-m}&0\end{pmatrix},
\qquad
\det H=-e^{-2m},
\qquad
\boxed{h=-m.}
\tag{6.1}
$$

There is no additive constant in this metric identity.  Constants in a
logarithmic LMPS joint belong to its separate canonical split.

For fixed generator embeddings, HF equation (4.30) gives the spin-0 cut
potential

$$
\Theta_{\partial N}^{\rm HF}
=\frac{C_G}{2}\int_{\partial N}
(1+h)\delta\Omega\,d^2x.
\tag{6.2}
$$

The initial endpoint has negative incidence on both positively parametrized
branches.  Using the one shared normal block and area,

$$
\boxed{
\begin{aligned}
\Theta_{S_0}^{\rm HF}
&=-\frac{C_G}{2}\int_{S_0}(1+h_0)\delta\Omega_0\,d^2x
-\frac{C_G}{2}\int_{S_0}(1+h_0)\delta\Omega_0\,d^2x\\
&=C_G\int_{S_0}(m_0-1)\delta\Omega_0\,d^2x.
\end{aligned}}
\tag{6.3}
$$

Its field-space curl is

$$
\boxed{
\Omega_{S_0}^{\rm HF}
=+C_G\int_{S_0}
\delta m_0\wedge\delta\Omega_0\,d^2x.}
\tag{6.4}
$$

Subtracting
$\delta[C_G\int\Omega_0(m_0-1)d^2x]$ changes (6.3) to
$-C_G\int\Omega_0\delta m_0d^2x$ and leaves (6.4) unchanged.  Thus the pair is
$(\Omega_0,m_0)$ in the convention
$\Omega=\delta p\wedge\delta q$.

The former negative sign was obtained by adding a Jubb-style endpoint
normalization split and an independently signed LMPS joint variation to the HF
cut split.  That mixed calculation is not one representative and is withdrawn.
Calculation 03 gives the area-normal transformation and the agreement with
Reisenberger.

## 7. Outer ports and the $dY$ ambiguity

At an outer cut, combine the endpoint normalization variation from the null
sheet, the corresponding variation from the closing boundary, and the signed
joint action exactly as in section 6.  Denote the resulting signed logarithmic
normal variable by $b_\pm$; it contains the $a_\pm$ of (4.3) and the incidence
sign.  The area polarization used in Stage 1 is

$$
\Theta_{S_\pm}^{\rm port}
=C_G\int_{S_\pm}b_\pm\delta\Omega_{\pm L}\,d^2x,
\qquad
\Omega_{S_\pm}^{\rm port}
=C_G\int_{S_\pm}\delta b_\pm\wedge
\delta\Omega_{\pm L}\,d^2x.
\tag{7.1}
$$

This is a retained port, not a choice of closing geometry.  The boost
polarization is obtained by subtracting
$\delta(C_G\int b_\pm\Omega_{\pm L})$, giving
$-C_G\int\Omega_{\pm L}\delta b_\pm$ and the same two-form.

For a general null-potential ambiguity

$$
\boldsymbol\theta_N\longmapsto
\boldsymbol\theta_N+d\boldsymbol Y,
$$

Stokes' theorem gives

$$
\Delta\Theta_N=\int_{S_L}\boldsymbol Y_L-
\int_{S_0}\boldsymbol Y_0.
\tag{7.2}
$$

In the spin-0 sector, take
$\boldsymbol Y=C_Gy\,\delta\Omega\,d^2x$.  Then

$$
\Delta\Omega_N=C_G\left[
\delta y_L\wedge\delta\Omega_L
-\delta y_0\wedge\delta\Omega_0\right].
\tag{7.3}
$$

On the extended phase space this is absorbed by the port canonical
transformation $b_L\mapsto b_L+y_L$ and the corresponding shift of the common
initial HF cut momentum.  If a cut is frozen or deleted without transforming
its port policy, the result is representative-dependent.  Stage 1 therefore
always states both the selected representative and the port policy.

## 8. Assumptions and non-results

**Assumptions:** smooth caustic-free segments; vacuum; fixed generator labels
and embeddings; fixed affine parameters in Stage 1; no boundary
reparametrization counterterm; common corner metric imposed once.

**Not verified here:** a unique outer closing geometry; a spin-1 reduction
with varying embeddings; nondegeneracy after all gauge quotients; or existence
of a local reduced action in the full characteristic data.  Calculation 01
now embeds the shear-free block into Damour without imposing
$\omega_A=0$, calculation 02 performs the coupled affine spin-0+2
Raychaudhuri pullback, and calculation 03 closes the corner/area/composition
dictionary.  Those later results do not remove the stated outer-port and
embedding-policy boundaries.
