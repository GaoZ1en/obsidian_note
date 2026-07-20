---
paper id: 2607.16134v1
title: Gravitational index of the D1-D5-P black string
authors:
  - Silvia Georgescu
  - Sameer Murthy
  - Andrew Svesko
publication date: 2026-07-17T17:16
abstract: |-
  The paper constructs complex, supersymmetric, non-extremal Euclidean saddles of ten-dimensional type-IIB supergravity for the D1-D5-P index at arbitrary inverse temperature. An imaginary right angular potential implements fermion parity, the Legendre-transformed index action is temperature-independent, and a finite-temperature near-horizon limit gives an S3 fibration over complex BTZ whose action reproduces the holomorphic elliptic-genus Cardy formula.
comments: "21 pages"
url: https://arxiv.org/abs/2607.16134v1
summary: "A concrete black-hole-index saddle in which the geometry remains temperature dependent while the correctly transformed supersymmetric action loses the regulator dependence."
tags: []
---

Back to [[2026_07_20_overview]].

The transferable point is not merely that a complex saddle computes an index. The paper exhibits the complete chain

$$
\text{non-extremal D1--D5--P family}
\longrightarrow
\beta\Omega_R=-2\pi i
\longrightarrow
\text{complex BPS double scaling}
\longrightarrow
\text{ensemble-corrected index action},
$$

and then shows that the action is independent of the finite-temperature regulator even though the saddle itself is not.

# Rotating D1--D5--P data

The ten-dimensional background is type IIB on

$$
\mathbb R^{1,4}\times S_y^1\times T^4.
$$

The non-extremal family is parametrized by $r_0$, three boosts $\alpha_{1,5,n}$, and two rotations $\ell_{1,2}$. It is convenient to set

$$
s_i=\sinh\alpha_i,
\qquad
c_i=\cosh\alpha_i,
\qquad
\ell_L=\ell_1-\ell_2,
\qquad
\ell_R=\ell_1+\ell_2,
$$

and

$$
C=c_1c_5c_n,
\qquad
S=s_1s_5s_n.
$$

In the convention $G_5=\pi/4$, the three charges and angular momenta are

$$
Q_i=r_0^2s_ic_i,
$$

$$
J_L=\frac{r_0^2\ell_L}{2}(C+S),
\qquad
J_R=\frac{r_0^2\ell_R}{2}(C-S).
$$

The radial horizon polynomial is

$$
g(r)=(r^2+\ell_1^2)(r^2+\ell_2^2)-r_0^2r^2,
$$

whose two roots can be written

$$
r_\pm=\frac12\left(
\sqrt{r_0^2-\ell_L^2}
\pm
\sqrt{r_0^2-\ell_R^2}
\right).
$$

This square-root representation is especially useful after complexification; it also makes the branch choice part of the physical definition of the saddle.

# Which Euclidean action is actually computed

The exact thermodynamics obeys

$$
dM=T\,dS_{\mathrm{BH}}
+\sum_{i=1,5,n}\Phi_i\,dQ_i
+\Omega_LdJ_L+\Omega_RdJ_R.
$$

The type-IIB bulk action simplifies on shell by the dilaton equation to

$$
I_E^{\mathrm{bulk}}
=\frac{\beta r_0^2}{4}
\left(\sinh^2\alpha_5-\sinh^2\alpha_1\right).
$$

After matching the cutoff surface to a rotating uncharged flat reference, the Gibbons--Hawking--York contribution is

$$
I_E^{\mathrm{GHY}}
=\frac{\beta r_0^2}{8}
\left(\cosh2\alpha_1+3\cosh2\alpha_5\right).
$$

Their sum is

$$
\boxed{
I_E^{\mathrm{mixed}}
=\frac{\beta r_0^2}{2}\cosh2\alpha_5
=\beta(\mathcal F+\Phi_5Q_5).
}
$$

The equality is an ensemble statement. The boundary data fix

$$
\{\Omega_L,\Omega_R,\Phi_1,\Phi_n,Q_5\};
$$

$Q_5$ is magnetic and fixed automatically, whereas no Maxwell-like RR boundary term is added to fix $Q_1$. To obtain the fully grand-canonical action used for the index, one must Legendre transform:

$$
I_{\mathrm{gc}}
=I_E^{\mathrm{mixed}}-\beta\Phi_5Q_5
=\beta\mathcal F.
$$

Therefore the paper's temperature-independence statement applies to $I_{\mathrm{gc}}$, not to the raw mixed action.

# The imaginary angular potential and BPS scaling

Fermion parity is implemented by the right angular holonomy

$$
\boxed{\beta\Omega_R=-2\pi i.}
$$

For the general black string,

$$
\beta\Omega_R
=\frac{2\pi\ell_R}{\sqrt{r_0^2-\ell_R^2}}.
$$

Choosing the branch

$$
\sqrt{-\ell_R^2}=i\ell_R
$$

forces $r_0\to0$. The simultaneous charge-preserving limit is

$$
r_0\to0,
\qquad
\alpha_i\to\infty,
\qquad
k_i:=\frac{r_0e^{\alpha_i}}2=\sqrt{Q_i}quad\text{fixed},
$$

$$
\widetilde\ell_L:=\frac{\ell_L}{r_0}quad\text{fixed}.
$$

It gives

$$
M=Q_1+Q_5+Q_n,
\qquad
J_L=\widetilde\ell_L\sqrt{Q_1Q_5Q_n}.
$$

At fixed $\ell_R$, however, $J_R$ vanishes and the right inverse temperature diverges. Keeping a finite-temperature complex saddle therefore requires the additional singular scaling

$$
\ell_R\to\infty,
\qquad
\widetilde\ell_R:=r_0\ell_R\quad\text{fixed}.
$$

Let

$$
P=Q_1Q_5Q_n,
\qquad
A=\sqrt{P-J_L^2},
\qquad
Q_S=Q_1Q_5+Q_1Q_n+Q_5Q_n.
$$

Then the regulator charge and inverse temperature become

$$
J_R=\frac{\widetilde\ell_RQ_S}{4\sqrt P},
$$

$$
\beta=\frac{\pi Q_S}{2}
\left(\frac1A-\frac{i}{J_R}\right).
$$

$J_R$ would vanish in the regular extremal geometry, but here it is a complex, temperature-dependent regulator.

# Potentials and the temperature-independent index

The limiting chemical potentials are

$$
\omega_R:=\beta\Omega_R=-2\pi i,
\qquad
\omega_L:=\beta\Omega_L=\frac{2\pi J_L}{A},
$$

$$
\varphi_i:=\beta(\Phi_i-1)
=-\frac{\pi P}{Q_iA}.
$$

The grand-canonical action reduces to

$$
\boxed{
I_{\mathrm{gc}}
=\frac{\pi P}{A}
=-\frac{4\varphi_1\varphi_5\varphi_n}
{\omega_L^2-\omega_R^2}.
}
$$

All dependence on $J_R$ and $\beta$ cancels. The saddle remains complex and temperature dependent, but supersymmetry removes that regulator from the index observable.

This is the reusable mechanism:

1. choose a compact symmetry whose $2\pi$ holonomy implements $(-1)^F$;
2. impose its imaginary angular potential on a non-extremal family;
3. take a complex double scaling that holds the BPS charges and $\beta$ fixed;
4. identify the variational ensemble of the Euclidean action;
5. Legendre transform before comparing with the index.

# Finite-temperature decoupling to complex BTZ

Define the AdS$_3$/sphere radius

$$
\ell_3=(Q_1Q_5)^{1/4}.
$$

The finite-temperature decoupling limit sends

$$
\frac{R}{\ell_3},\frac{\beta}{\ell_3}\to\infty,
\qquad
\frac\beta R\ \text{fixed},
$$

with $Q_1,Q_5$ fixed and $Q_n\to0$. Equivalently,

$$
J_{L,R}\mapsto\frac{J_{L,R}}\Lambda,
\quad
Q_n\mapsto\frac{Q_n}{\Lambda^2},
\quad
\rho\mapsto\frac\rho\Lambda,
\quad
(t_E,y)\mapsto\Lambda(t_E,y).
$$

The resulting geometry is an $S^3$ fibration over a complex Euclidean BTZ quotient. Its contractible cycle is

$$
(t_E,y,\psi,\phi)
\sim
(t_E+\beta,\ y-i(\beta+\varphi_n),\ \psi-\pi,\ \phi-\pi),
$$

while $y\sim y+2\pi R$. The boundary torus moduli are

$$
\tau=\frac{2\pi R}{i\varphi_n},
\qquad
\bar\tau=\frac{2\pi R}{i(2\beta+\varphi_n)}.
$$

Both remain finite in the geometry, but the action is holomorphic:

$$
I
=\frac{\ell_3^4(\omega_L^2-\omega_R^2)}{4|\varphi_n|}
=\frac{2\pi iN_n}{\tau},
\qquad
Q_n=\frac{N_n}{R}.
$$

It is independent of $\bar\tau$ and matches the type-IIB Cardy limit of the D1--D5 elliptic genus.

# Printed normalization errors

Three local corrections are needed before reusing the formula chain.

1. Paper Eq. (3.14) is low by a factor of two. Since $C+S\sim2\sqrt P/r_0^3$,

   $$
   \beta_R\longrightarrow\frac{4\pi\sqrt P}{i\,r_0\ell_R},
   $$

   not $2\pi\sqrt P/(i r_0\ell_R)$. Paper Eq. (3.19) implicitly uses the corrected factor.

2. Paper Eq. (3.20) has an extra $2\pi$ inside the parentheses. The limit of the original entropy is

   $$
   S_{\mathrm{BH}}=2\pi(A+iJ_R),
   $$

   not $2\pi(A+2\pi iJ_R)$.

3. The explanatory sentence after Eq. (3.35) omits $\ell_3^4$:

   $$
   \varphi_n
   =-\frac{\pi\ell_3^4}
   {\sqrt{\ell_3^4Q_n-J_L^2}}.
   $$

The paper also warns that its $G_5=\pi/4$ convention suppresses $g_s^2\alpha'^4/(VR)$ in $Q_i$, and its $J_{L,R}$ are twice those of one comparison reference.

# Verification note

**Verified:** Mathematica reproduced the two horizon roots, $r_{\mathrm{ext}}^2=\ell_1\ell_2$, the charge/mass/spin scaling, the corrected factor in $\beta_R$, $\beta\Omega_R=-2\pi i$, the corrected entropy limit, all three identities $\mathcal F+\Phi_iQ_i$, the bulk-plus-GHY simplification, the potential-space action, and the Cardy equality. The formula-heavy main-text and appendix pages were also compared against rendered PDF pages.

**Assumptions:** positive boosts and charges; Lorentzian ordering before analytic continuation; the branch $\sqrt{-\ell_R^2}=i\ell_R$; $\varphi_n<0$ and $2\beta+\varphi_n>0$ in the decoupling region; the normalization in which $e^{2\pi iJ}=(-1)^F$.

**Not verified:** the complete ten-dimensional equations or Killing-spinor equations, the component derivation of the asymptotic GHY expansion, global admissibility and smoothness of the complex saddle, and the omitted decoupled RR two-form and dilaton.
