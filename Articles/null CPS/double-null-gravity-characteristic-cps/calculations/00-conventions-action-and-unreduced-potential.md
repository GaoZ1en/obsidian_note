# 00 — Conventions, action, and unreduced null potential

## 0. Status and separation of provenance

**Stage-0 verdict: proved within the declared gauge and representative.**  The
projector, rescaling laws, Raychaudhuri conventions, action-representative
shift, and spin-1 dictionary below follow from the displayed definitions.
The exact gluing of the two *outer* joints to unspecified non-null boundary
pieces is not fixed; their joint variables are retained rather than discarded.

**Known from literature.**  The $\kappa$ null term and logarithmic joint rules
are the Dirichlet representative of Lehner--Myers--Poisson--Sorkin (LMPS),
arXiv:1609.00207, especially their action summary (1.2)--(1.3) and null-joint
rule following it.  The alternative $\kappa+\theta$ representative is the
Parattu--Chakraborty--Majhi--Padmanabhan boundary term, arXiv:1501.01053.  The
unified endpoint bookkeeping is checked against Jubb--Samuel--Sorkin--Surya,
arXiv:1612.00149.  The canonical null potential and the distinction between
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

## 3. Normal connection, boosts, and the HF spin-1 momentum

Normalize an auxiliary null on $N_+$ by

$$
n_+^a=e^m\ell_-^a,\qquad \ell_+\!\cdot n_+=-1,
$$

and define the user's Hájíček/normal connection

$$
\omega_A:=-q_A{}^a n_{+b}\nabla_a\ell_+^b
=-e^m q_A{}^a\ell_{-b}\nabla_a\ell_+^b.
\tag{3.1}
$$

For comparison with HF set $L=\ell_+$ and $\bar L=-n_+$, so
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

The Parattu representative is

$$
I_N^{(\kappa+\theta)}
=C_G\int_N\Omega(\kappa+\theta)\,d\lambda d^2x.
\tag{4.4}
$$

Using $\partial_\lambda\Omega=\Omega\theta$,

$$
I_N^{(\kappa+\theta)}-I_N^{(\kappa)}
=C_G[\Omega]_0^L.
\tag{4.5}
$$

It is safest to shift the **signed** joint densities
$j_J:=\epsilon_Ja_J$, because the numerical $\epsilon_J$ depends on whether
the closing boundary is spacelike, timelike, or null.  With the endpoint
incidence (1.4), set

$$
j_L^{(\kappa+\theta)}=j_L^{(\kappa)}-1,
\qquad
j_0^{(\kappa+\theta)}=j_0^{(\kappa)}+1.
\tag{4.6}
$$

Then the signed joint change is $-C_G[\Omega]_0^L$, so the complete action and its
variation are unchanged.  Thus the two representatives differ only by an
endpoint canonical transformation when *both* endpoints are kept.  The
Wolfram script verifies (4.5)--(4.6) on the exact Stage-1 solution.

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
\tag{5.2}
$$

up to the already declared orientation conversion.  The $h$ variables encode
the normal/rigging choice at a cut.  At $S_0$ the two sheet terms and the
single null--null joint must be combined before replacing the result by the
relative boost $m_0$.  At $S_\pm$, $h_{\pm L}$ is fixed only after specifying
the closing boundary normal in (4.3).  These terms are therefore retained in
Stage 1.

## 6. Assumptions and non-results

**Assumptions:** smooth caustic-free segments; vacuum; fixed generator labels
and embeddings; fixed affine parameters in Stage 1; no boundary
reparametrization counterterm; common corner metric imposed once.

**Not verified here:** a unique outer closing geometry; the Damour transport;
the full spin-2 constraint pullback; nondegeneracy after all gauge quotients;
or existence of a local reduced action in the proposed data.
