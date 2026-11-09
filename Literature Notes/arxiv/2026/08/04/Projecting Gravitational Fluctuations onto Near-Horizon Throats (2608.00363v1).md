---
paper id: 2608.00363v1
title: Projecting Gravitational Fluctuations onto Near-Horizon Throats
authors:
  - Alejandro Cabo-Bizet
  - Vasil Dimitrov
  - Dario Martelli
  - Lorenzo Ruggeri
publication date: 2026-08-01T00:24
abstract: |-
  For separated gravitational fluctuation equations of Heun type, the paper replaces the full radial problem by complementary outer and near-horizon hypergeometric problems. Projective coordinate transformations remove bulk interactions order by order, while matching fixes an energy-dependent Robin condition at the artificial interface. In near-extremal Kerr--(A)dS, a low-frequency subset reduces to the familiar Schwarzian/JT tensor and vector mode lattice.
comments: "41 pages"
url: https://arxiv.org/abs/2608.00363v1
summary: "An explicit spectral-gluing mechanism in which the excised exterior becomes a frequency-dependent Robin kernel at the throat mouth."
tags: []
---

Back to [[2026_08_04_overview]].

The reusable result is an induced-boundary-condition construction:

$$
\text{full Heun connection problem}
\longrightarrow
\begin{cases}
\text{outer hypergeometric problem},\\
\text{inner/throat hypergeometric problem},
\end{cases}
\quad
G_{\mathrm{out}}(\omega,t)=G_{\mathrm{in}}(\omega,t).
$$

The complementary region is not discarded without residue. Its connection coefficient becomes an energy-dependent Robin datum at the artificial interface. This is the spectral analogue of integrating out a region and retaining its Dirichlet-to-Neumann map.

# Heun Fluctuation Problem and Its Two Scaling Regions

The separated radial equation is put in Schrödinger form,

$$\begin{align}
\mathcal L_2\Psi =\left(\frac{d^2}{dz^2}+Q(z)\right)\Psi=0, \tag{1.1, 2.2}
\end{align}$$

with four-singularity Heun potential

$$
\begin{aligned}
Q(z)={}&
\frac{\frac14-a_0^2}{z^2}
+\frac{\frac14-a_1^2}{(z-1)^2}
+\frac{\frac14-a_t^2}{(z-t)^2}\\
&-\frac{\frac12-a_0^2-a_1^2-a_t^2+a_\infty^2+u}{z(z-1)}
+\frac{u}{z(z-t)}.
\end{aligned}
\tag{2.1, 3.2}
$$

Here $t$ is the Heun modulus and large degeneration parameter, not physical time; $u$ is the accessory parameter. The limits $t\to\infty$ and $z\to\infty$ do not commute, so two patches are required:

- **outer:** fixed $z$, with $0\le z\ll t$;
- **inner:** fixed $\zeta=z/t$, with $t^{-1}\ll\zeta<\infty$.

Their overlap is

$$\begin{align}
1\ll z\ll t, \qquad t^{-1}\ll\zeta\ll1.
\tag{2.56}
\end{align}$$

At fixed $z$, the leading outer potential is

$$\begin{align}
Q_0^{\mathrm{out}}(z) =\frac{\frac14-a_0^2}{z^2} +\frac{\frac14-a_1^2}{(z-1)^2} -\frac{\lambda^{\mathrm{out}}}{z(z-1)}, \tag{2.4}
\end{align}$$

$$\begin{align}
\lambda^{\mathrm{out}} =-a_t^2+a_\infty^2-a_0^2-a_1^2+u+\frac12. \tag{2.5}
\end{align}$$

After setting $z=t\zeta$, one instead expands

$$\begin{align}
t^2Q(t\zeta)=Q_0^{\mathrm{in}}(\zeta)+Q_{\mathrm{int}}^{\mathrm{in}}(\zeta), \tag{2.51}
\end{align}$$

with

$$\begin{align}
Q_0^{\mathrm{in}}(\zeta) =-\frac{\lambda^{\mathrm{in}}}{\zeta(\zeta-1)} +\frac{\frac14-a_t^2}{(\zeta-1)^2} +\frac{a_t^2-a_\infty^2-u}{\zeta^2}, \qquad -\lambda^{\mathrm{in}}=u. \tag{2.52}
\end{align}$$

Both leading equations are hypergeometric, but they encode different endpoints of the original Heun problem.

# Twisted Bases and Induced Robin Data

The outer hypergeometric basis is fixed at $z=0$. At the artificial endpoint $z=\infty$, the omitted inner region appears through the connection ratio

$$\begin{align}
G_\infty^{\mathrm{out}} =\frac{C_+^{(0,\infty)}}{C_-^{(0,\infty)}} =\frac{ \Gamma(2\kappa) \Gamma(-\kappa+a_0-a_1+\frac12) \Gamma(-\kappa+a_0+a_1+\frac12)
}{ \Gamma(-2\kappa)
\Gamma(\kappa+a_0-a_1+\frac12)
\Gamma(\kappa+a_0+a_1+\frac12)
}.
\tag{2.44}
\end{align}$$

Conversely, the inner solution is fixed at its physical endpoint and induces at $\zeta=0$

$$\begin{align}
G_0^{\mathrm{in}}(t) =t^{-2\kappa}\frac{C_+^{(\infty,0)}}{C_-^{(\infty,0)}}. \tag{2.67}
\end{align}$$

Global consistency is

$$\begin{align}
G_\infty^{\mathrm{out}}(t)=G_0^{\mathrm{in}}(t). \tag{2.74}
\end{align}$$

This is not a fixed local Robin constant. It depends on the spectral parameters and on $t$, and therefore acts as a nonlocal effective boundary kernel for the retained patch.

Writing the two connection ratios as $R_{\mathrm{out}}(\kappa)$ and $R_{\mathrm{in}}(\kappa)$, the leading quantization condition is

$$\begin{align}
t^{2\kappa}R_{\mathrm{out}}(\kappa)=R_{\mathrm{in}}(\kappa). \tag{2.75}
\end{align}$$

For $\operatorname{Re}\kappa<0$ and $\omega=O(t^{-1})$, the leading spectrum is selected by inner gamma-function poles,

$$\begin{align}
\pm a_\infty-\kappa+a_t+\frac12=-p, \qquad\text{or}\qquad \pm a_\infty-\kappa-a_t+\frac12=-p, \qquad p\in\mathbb Z_{\ge0}. \tag{2.78}
\end{align}$$

Exceptional coincident poles require separate analysis.

# Projective Transformations That Disconnect the Interaction

Under a change $z=F(Z)$, Schrödinger form is preserved by

$$\begin{align}
\Psi(F(Z))=\sqrt{F'(Z)}\,\psi(Z), \tag{1.12, 3.7}
\end{align}$$

and the potential transforms as a projective connection:

$$\begin{align}
\widetilde Q(Z) =F'(Z)^2Q(F(Z))+\frac12\{F,Z\}, \tag{1.14, 3.8}
\end{align}$$

$$\begin{align}
\{F,Z\} =\frac{F'''}{F'}-\frac32\left(\frac{F''}{F'}\right)^2. \tag{1.15}
\end{align}$$

The outer map is expanded as

$$\begin{align}
F^{\mathrm{out}}(Z) =Z+\frac{f_1^{\mathrm{out}}(Z)}t +\frac{f_2^{\mathrm{out}}(Z)}{t^2}+\cdots. \tag{3.6}
\end{align}$$

At order $t^{-j}$, the interaction-cancelling equation is

$$\begin{align}
\frac12(f_j^{\mathrm{out}})''' +2Q_0^{\mathrm{out}}(f_j^{\mathrm{out}})' +(Q_0^{\mathrm{out}})'f_j^{\mathrm{out}} =H_j^{\mathrm{out}}. \tag{3.12}
\end{align}$$

At first order,

$$\begin{align}
f_1^{\mathrm{out}}=A_{1,2}Z^2+A_{1,1}Z, \tag{3.21}
\end{align}$$

$$\begin{align}
A_{1,2} =\frac{-1-4a_\infty^2+4a_t^2+4\kappa^2}{2-8\kappa^2}, \qquad A_{1,1} =\frac{1+4a_\infty^2-4a_t^2-4\kappa^2}{2-8\kappa^2}. \tag{3.20}
\end{align}$$

The inner map has

$$\begin{align}
F^{\mathrm{in}}(\wp) =\wp+\frac{f_1^{\mathrm{in}}(\wp)}t+\cdots, \qquad f_1^{\mathrm{in}}=B_{1,1}\wp+B_{1,0}, \tag{3.14, 3.23}
\end{align}$$

$$\begin{align}
B_{1,1} =\frac{-1-4a_0^2+4a_1^2+4\kappa^2}{2-8\kappa^2}, \qquad B_{1,0} =\frac{1+4a_0^2-4a_1^2-4\kappa^2}{2-8\kappa^2}. \tag{3.24}
\end{align}$$

These transformations depend on mode parameters. They are Liouville/projective transformations of the separated ODE, not a single gravitational gauge diffeomorphism of the background.

# Overlap Dilation and the Corrected Spectrum

Matching the transformed coordinates gives

$$\begin{align}
Z =t\left(1+\frac{\Delta C_0}{t}+O(t^{-2})\right) (\wp+\wp_0)+\cdots. \tag{3.27}
\end{align}$$

The translation $\wp_0$ cancels from connection ratios, while the dilation corrects the induced inner Robin datum:

$$\begin{align}
G_0^{\mathrm{in}} =t^{-2\kappa} \left(1-\frac{2\kappa\Delta C_0}{t}+O(t^{-2})\right) \frac{C_+^{(\infty,0)}}{C_-^{(\infty,0)}}. \tag{3.30}
\end{align}$$

Therefore

$$\begin{align}
R_{\mathrm{out}} =t^{-2\kappa} \left(1-\frac{2\kappa\Delta C_0}{t}+O(t^{-2})\right) R_{\mathrm{in}}. \tag{3.31}
\end{align}$$

The explicit first correction is

$$\begin{align}
\Delta C_0 =-\frac12 -\frac{8(a_0-a_1)(a_0+a_1)(a_t^2-a_\infty^2)} {(1-4\kappa^2)^2}. \tag{3.39}
\end{align}$$

It agrees with the paper's leading Nekrasov--Shatashvili/Matone expression, Eq. (3.40). Resonant values $1-4\kappa^2=0$ require separate treatment.

The original wave function is recovered by the inverse transformation,

$$\begin{align}
\Psi^{\mathrm{out}}(z) =\psi^{\mathrm{out}}(z) -\frac1t\left[ f_1^{\mathrm{out}}\partial_z -\frac12(f_1^{\mathrm{out}})' \right]\psi^{\mathrm{out}}(z) +O(t^{-2}). \tag{3.41}
\end{align}$$

Hypergeometric derivative and multiplication identities then express the corrected Heun wave function as a sum of hypergeometric blocks with integer-shifted parameters.

# Kerr--(A)dS and the Schwarzian/JT Mode Sector

For a Teukolsky mode

$$\begin{align}
\Phi\sim e^{-i\omega t_L+im\phi}\Psi(z)\Theta(\theta), \tag{4.9}
\end{align}$$

the local horizon exponents are

$$\begin{align}
a_A =\frac s2+\frac{i}{2\kappa_A}(\omega-m\Omega_A), \tag{4.11}
\end{align}$$

where $t_L$ is Lorentzian time and $\kappa_A$ is the surface gravity, unrelated to the overlap exponent $\kappa$.

In the near-cold limit,

$$\begin{align}
R_h\to R_i, \qquad T_h,T_i\to0, \qquad t\to\infty, \tag{4.18--4.19}
\end{align}$$

the paper imposes the genuinely low-frequency scaling

$$\begin{align}
\omega=\widehat\omega T_h, \qquad \widehat\omega=O(1). \tag{4.20}
\end{align}$$

Within this scaling, $m\ne0$ removes the relevant $\widehat\omega$ dependence from the pole equation, so the light family studied here has

$$\begin{align}
m=0. \tag{4.23}
\end{align}$$

This does not exclude near-superradiant modes with $\omega-m\Omega_h=O(T_h)$.

For $m=0$,

$$\begin{align}
a_0,a_1\to\frac s2, \qquad a_t\to\frac s2+\frac{i\widetilde\omega}{4\pi}, \qquad a_\infty\to\frac s2-\frac{i\widetilde\omega}{4\pi}, \tag{4.24}
\end{align}$$

and

$$\begin{align}
\kappa=\pm\left(\ell+\frac12\right). \tag{4.27}
\end{align}$$

The branch relevant to Eq. (2.78) is $\kappa=-(\ell+1/2)$. The source states that the poles yield

$$\begin{align}
n=\pm(\ell+p), \qquad p=0,1,2,\ldots, \tag{4.31}
\end{align}$$

and

$$\begin{align}
\omega=-2\pi iT_hn+\text{subleading corrections}, \qquad |n|\ge|s|. \tag{4.36}
\end{align}$$

An independent substitution into the two pole equations does **not** reproduce Eq. (4.31). With Eq. (4.24), $\kappa=-(\ell+1/2)$, and $p\ge0$, the source premises give

$$\begin{align}
1+\ell+p\mp\frac{i\widetilde\omega}{2\pi}=0,
\end{align}$$

and hence

$$\begin{align}
\frac{i\widetilde\omega}{2\pi}=\pm(\ell+p+1),
\end{align}$$

not $\pm(\ell+p)$. Substitution of the printed lattice leaves residual one in both sign branches. The spectral/profile identification therefore requires an off-by-one repair somewhere among Eqs. (4.24), (4.28), (4.29), and (4.31) before Eq. (4.36) can be used.

After Wick rotation and a KMS identification, these become Matsubara modes. The inner profiles in Eq. (4.37) match the known would-be zero-mode sectors:

- $s=2$: tensor modes, excluding $n=-1,0,1$ as the $SL(2,\mathbb R)$ generators;
- $s=1$: vector modes, excluding $n=0$ as the $U(1)$ generator.

This is a spectral/profile identification. The paper does not derive the Schwarzian action, its four-dimensional coupling, the reduced gravitational presymplectic form, or the full one-loop measure.

# What Transfers to AdS Boundary Problems

The induced Robin ratio is the key reusable object:

$$\begin{align}
\text{exterior region} \longrightarrow
G_{\mathrm{throat}}(\omega,T) \longrightarrow
\text{finite-mouth AdS}_2\text{ problem}.
\end{align}$$

It resembles mixed or alternate quantization, but its frequency dependence records a whole excised spacetime region. It is therefore closer to a boundary self-energy than to a constant double-trace coupling.

For Kerr--AdS, the physical conformal boundary is not itself a Heun singularity. The paper does not directly impose the usual AdS boundary condition there, so the translation to standard/alternate quantization remains conditional.

For determinants and correlators, the gamma-function matching equation organizes discrete poles and small-temperature corrections. It does not include continuum mixing, the angular determinant, zero-mode Jacobians, or a proof that the Schwarzian-like sector dominates the complete low-temperature determinant.

# Scope of the Order-by-Order Claim

The paper explicitly constructs the first nontrivial projective maps and $\Delta C_0$, and sketches the higher-order recursion. Global existence, regularity, and the proposed truncation pattern at arbitrary order are not proved. Appendix B's displayed uniqueness argument also uses endpoint analyticity and sign conditions not manifestly identical to the later $\operatorname{Re}\kappa<0$ regime.

The achieved tier is therefore:

$$\begin{align}
\text{first-subleading analytic realization} +\text{formal recursive algorithm},
\end{align}$$

not a completed all-orders theorem or a full gravitational path-integral reduction.

# Verification Note

## Checked

- **Mathematica:** the fixed-$z$ and fixed-$\zeta$ decompositions reproduce the displayed outer and inner hypergeometric potentials identically. Their leading interactions are

$$\begin{align}
Q_{\mathrm{int}}^{\mathrm{out}}=-\frac{u}{zt}+O(t^{-2}), \qquad Q_{\mathrm{int}}^{\mathrm{in}} =\frac{a_0^2-a_1^2-u-a_\infty^2+a_t^2}{\zeta^3t}+O(t^{-2}).
\end{align}$$

- **Mathematica:** under $\Psi(F)=\sqrt{F'}\psi$, the coefficient of $\psi'$ cancels and the transformed potential is exactly $(F')^2Q(F)+\{F,Z\}/2$, with zero residual.
- **Mathematica:** substituting the printed $u_0,u_1,A_{1,2},A_{1,1}$ into the outer transformation cancels both the $t^0$ and $t^{-1}$ residuals. The correctly normalized inner transformation with $B_{1,1},B_{1,0}$ does the same.
- **Mathematica:** $\wp_0=B_{1,0}$ follows from the displayed first-order overlap data. The derivative expression in Eq. (3.40) reproduces Eq. (3.39) exactly.
- **Mathematica:** expanding $[t(1+\Delta C_0/t)]^{-2\kappa}$ gives $t^{-2\kappa}[1-2\kappa\Delta C_0/t+O(t^{-2})]$, with zero first-order residual. The sign and factor in Eqs. (3.30)--(3.31) are correct.

Assumptions: parameters are fixed as $t\to\infty$ except for the regular accessory-parameter series; $\kappa\ne\pm1/2$; $F'\ne0$ locally; a fixed branch of $\sqrt{F'}$ and of the complex power of positive large $t$ is used.

## Blocked

- Completeness and invertibility of the twisted pseudo-square-integrable basis are assumed; continuum mixing is not controlled.
- A direct finite-$t$ Heun-spectrum comparison and numerical gluing of the reconstructed inner/outer wave functions are left open by the source.
- The full derivation of $\Delta C_0$ from Eq. (3.36) cannot be reconstructed from the displayed coefficients because the second-order contributions entering $b_0,b_1$ are omitted. Only the first-order overlap and the equivalence of Eqs. (3.39)--(3.40) were checked.
- Kerr--AdS physical boundary conditions enter indirectly rather than as a displayed endpoint condition.
- No four-dimensional CPS norm, Schwarzian coupling, or complete determinant measure is supplied.

## Failed or Source Defects

- **Eqs. (4.30)--(4.31) fail their own pole equations.** The printed premises give $i\widetilde\omega/(2\pi)=\pm(\ell+p+1)$, while the source states $\pm(\ell+p)$. The printed lattice leaves residual one, so the downstream Matsubara lattice and mode exclusions cannot be treated as independently established.
- Eq. (2.80) prints the second local behavior at the $\zeta=1$ singularity with $(1+\zeta)^{1/2-a_t}$. Consistency with the local coordinate and Eq. (2.63) requires a $(1-\zeta)$ behavior with the appropriate alternate exponent.
- Appendix A duplicates $a_0$ in the first and fourth parameter slots of Eqs. (A.4--A.6); the fourth slot should carry the transformed $a_\infty$.
- Eqs. (3.14--3.15) reuse $F^{\mathrm{in}}$ for maps of both $z$ and $\zeta$, obscuring the required $t^2Q(t\zeta)$ factor.
- Eq. (3.30) contains an undefined $C_0^{(\infty,0)}$; Eqs. (2.67), (2.69), and the explicit ratio in Eq. (3.31) require $C_+^{(\infty,0)}$.
- The experimental HTML contains an unresolved equation label in Section 3; equation numbers in this note follow the PDF.
