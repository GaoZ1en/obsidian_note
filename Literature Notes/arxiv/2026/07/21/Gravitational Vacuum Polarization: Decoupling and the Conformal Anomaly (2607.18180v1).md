---
paper id: 2607.18180v1
title: "Gravitational Vacuum Polarization: Decoupling and the Conformal Anomaly"
authors:
  - Emil Mottola
publication date: 2026-07-20T17:16
abstract: |-
  The paper evaluates the one-loop stress-tensor two-point response of a massive scalar in gravity, including metric contact terms required by the conservation Ward identity. It decomposes the result into spin-zero and spin-two projectors, separates local counterterms from decoupling-renormalized nonlocal response, and derives a conformal spin-zero spectral sum rule whose massless limit carries the anomaly weight.
comments: "39 pages, 5 figures"
url: https://arxiv.org/abs/2607.18180v1
summary: "A contact-term-complete and spectrally organized vacuum-polarization calculation linking heavy-field decoupling to the conformal scalar anomaly coefficient."
tags: []
---

Back to [[2026_07_21_overview]].

The reusable lesson is methodological: a separated-point $\langle TT\rangle$ loop is not the complete metric response. Local second-variation and tadpole terms are required before the conservation Ward identity holds; only then should the answer be decomposed into spin channels, renormalized, and interpreted spectrally.

# The Contact-Term-Completed Metric Response

For a real scalar with signature $\eta_{ab}=\operatorname{diag}(-1,1,1,1)$,

$$\begin{align}
S_{\rm cl} =-\frac12\int d^4x\sqrt{-g} \left[(\nabla\phi)^2+m^2\phi^2+\xi R\phi^2\right],
\end{align}$$

$$\begin{align}
T^{ab} =\nabla^a\phi\nabla^b\phi -\frac12g^{ab}\left[(\nabla\phi)^2+m^2\phi^2\right] +\xi\left[G^{ab}+g^{ab}\Box-\nabla^a\nabla^b\right]\phi^2.
\end{align}$$

The full second metric variation of the one-loop effective action is

$$\begin{align}
\mathcal S_2^{abcd}(x,y) =i\langle T^{ab}(x)T^{cd}(y)\rangle_{\rm con} +2\left\langle \frac{\delta[\sqrt{-g}T^{ab}(x)]}{\delta g_{cd}(y)} \right\rangle_\eta.
\end{align}$$

Varying the conservation equation produces another local term involving the flat-space tadpole $K\eta^{ab}=\langle T^{ab}\rangle_\eta$. The completed polarization is

$$\begin{aligned}
F^{abcd}(x,y) ={}&\mathcal S_2^{abcd}(x,y)\\
&+K(-\eta^{ab}\eta^{cd} +\eta^{ac}\eta^{bd} +\eta^{ad}\eta^{bc})\delta^4(x-y),
\end{aligned}$$

and it satisfies the homogeneous Ward identity

$$\begin{align}
\partial_bF^{abcd}(x,y)=0.
\end{align}$$

The paper distinguishes carefully among the nonlocal graph $\Pi^{abcd}$, the second variation $\mathcal S_2^{abcd}$, and the completed $F^{abcd}$. Only the last obeys the printed real-part conservation identity.

# Five Lorentz Tensors Reduce to Two Spin Channels

In momentum space,

$$\begin{align}
F^{abcd}(k)=\sum_{j=1}^5F_j(k^2)\tau_j^{abcd}(k).
\end{align}$$

Conservation imposes

$$\begin{align}
F_1+k^2F_3=0,\qquad F_2+k^2F_4=0,\qquad F_3+2F_4+k^2F_5=0.
\end{align}$$

The five coefficients therefore contain only two independent transverse structures. Define

$$\begin{align}
\theta^{ab}=\eta^{ab}-\frac{k^ak^b}{k^2},
\end{align}$$

$$\begin{align}
P^{(S)\,abcd}=\frac13\theta^{ab}\theta^{cd},
\end{align}$$

$$\begin{align}
P^{(T)\,abcd} =\frac12(\theta^{ac}\theta^{bd}+\theta^{ad}\theta^{bc}) -\frac13\theta^{ab}\theta^{cd}.
\end{align}$$

Then

$$\begin{align}
F^{abcd}(k) =-\Sigma(k^2)P^{(S)\,abcd} -\mathrm T(k^2)P^{(T)\,abcd}.
\end{align}$$

$P^{(S)}$ is the transverse traceful scalar sector; $P^{(T)}$ is transverse and traceless. This is the spectral organization most useful for comparisons with heat-kernel and determinant calculations.

# Dimensional Poles and Local Gravitational Couplings

Using $n=4-2\epsilon$, the pole residues reduce to

$$\begin{align}
I_A=\left(\xi-\frac16\right)^2+\frac1{180},
\end{align}$$

$$\begin{align}
I_B=\frac1{30}k^4-2k^2m^2\left(\xi-\frac16\right).
\end{align}$$

The form-factor poles are

$$\begin{align}
\mathrm T|_{\rm pole} =-\frac1{16\pi^2\bar\epsilon} \left[ \frac1{60}k^4 -k^2m^2\left(\xi-\frac16\right) \right],
\end{align}$$

$$\begin{align}
\Sigma|_{\rm pole} =-\frac1{16\pi^2\bar\epsilon} \left[ 6k^4\left(\xi-\frac16\right)^2 +2k^2m^2\left(\xi-\frac16\right) \right].
\end{align}$$

At conformal coupling $\xi=1/6$, the spin-zero pole vanishes, while the spin-two $k^4$ pole remains.

The local gravitational action is taken as

$$\begin{align}
S_{\rm loc} =\frac1{16\pi G}\int\sqrt{-g}(R-2\Lambda) -\frac12\int\sqrt{-g}\left(\alpha C^2+\beta R^2\right).
\end{align}$$

The tadpole renormalizes $\Lambda$; the $k^2$ pole renormalizes $G$; the spin-two and spin-zero $k^4$ poles renormalize $\alpha$ and $\beta$, respectively.

# Decoupling-Renormalized Response

Minimal subtraction alone leaves local polynomial terms that do not vanish for a heavy field. The paper adds finite local subtractions so that the nonlocal response decouples as $m\to\infty$. One building block is

$$\begin{align}
B_R(k^2) =\int_0^1dx\,\log\frac{M^2}{m^2}(M^2)^2 -\frac16k^2m^2-\frac1{20}k^4,
\end{align}$$

$$\begin{align}
M^2=m^2+k^2x(1-x),
\end{align}$$

for which $B_R=O(k^6/m^2)$. The renormalized form factors are written

$$\begin{align}
\Sigma_R=k^4F^{(S)}(k^2/m^2), \qquad \mathrm T_R=k^4F^{(T)}(k^2/m^2),
\end{align}$$

with

$$\begin{align}
F^{(S,T)}=O(k^2/m^2)
\end{align}$$

at low momentum or large mass. The physical response couplings obey

$$\begin{align}
\alpha_R(k^2)=\alpha_R(0)+\frac12F^{(T)}, \qquad \beta_R(k^2)=\beta_R(0)+\frac1{12}F^{(S)}.
\end{align}$$

The statement that $\Lambda$ and $G$ do not “run” here refers to external-$k^2$ dependence in this two-point response scheme, not to every possible renormalization-group definition.

# Conformal Scalar and Anomaly Matching

At $\xi=1/6$,

$$\begin{align}
F^{(S)} =\frac1{16\pi^2}\frac1{90} \left[ 1-\frac{10m^2}{k^2} +\frac{60m^4}{k^4} \left(z\log\frac{z+1}{z-1}-2\right) \right],
\end{align}$$

$$\begin{align}
z=\sqrt{1+\frac{4m^2}{k^2}}.
\end{align}$$

Its two limiting values are

$$
F^{(S)}
\longrightarrow
\frac1{16\pi^2}\frac1{90}
\begin{cases}
\frac17\,k^2/m^2,&m^2\to\infty,\\
1,&m^2\to0.
\end{cases}
$$

For one conformal scalar,

$$\begin{align}
\langle T^a{}_a\rangle_R =\frac1{16\pi^2} \left[ -\frac1{360}E +\frac1{120}C^2 +\frac1{180}\Box R \right].
\end{align}$$

Tracing the spin-zero polarization gives

$$\begin{align}
\frac12\eta_{ab}F_R^{abcd}(k) =\frac1{16\pi^2}\frac1{180} k^2(k^ck^d-k^2\eta^{cd}),
\end{align}$$

which matches the first metric variation of the $\Box R$ term. The factor two between the $F^{(S)}$ limit and the anomaly coefficient is accounted for by the explicit $1/2$ in this trace relation.

The $\Box R$ coefficient is scheme dependent under a finite $R^2$ counterterm. The paper's value is fixed by the heavy-field-decoupling normalization and the absence of an independent finite UV $R^2$ deformation.

# Spectral Density and the Anomaly Sum Rule

For timelike $s=-k^2>0$,

$$\begin{align}
\rho^{(S)}(s) =\frac{\Theta(s-4m^2)}{24\pi^2} \sqrt{1-\frac{4m^2}{s}} \left[\frac{(1-6\xi)s}{2}+m^2\right]^2,
\end{align}$$

$$\begin{align}
\rho^{(T)}(s) =\frac{\Theta(s-4m^2)}{60\pi^2} \sqrt{1-\frac{4m^2}{s}} \left(\frac s4-m^2\right)^2.
\end{align}$$

The response admits

$$\begin{align}
F^{(S,T)}(k^2/m^2) =k^2\int_0^\infty \frac{\rho^{(S,T)}(s)} {s^3(s+k^2-i\epsilon)}\,ds.
\end{align}$$

At conformal coupling,

$$\begin{align}
\sigma(s)=\frac{\rho^{(S)}(s)}{s^3} =\frac{m^4}{24\pi^2s^3} \sqrt{1-\frac{4m^2}{s}}\, \Theta(s-4m^2).
\end{align}$$

Its total weight is independent of $m$:

$$\begin{align}
\boxed{ \int_0^\infty\sigma(s)\,ds =\frac1{1440\pi^2}.
}
\end{align}$$

At fixed $s>0$, $\sigma(s)\to0$ as $m\to0$, while the integral stays fixed. Distributionally,

$$\begin{align}
\sigma(s)\longrightarrow\frac1{1440\pi^2}\delta(s),
\end{align}$$

and its dispersive kernel tends to $1/(1440\pi^2k^2)$. The two-point function contains this anomaly-pole residue, but the source itself notes that the explicit four-dimensional conformal-anomaly pole first occurs in the three-point $\langle TTT\rangle$ function. The full two-point tensor should not be advertised as already containing an uncancelled physical $1/k^2$ pole.

# Transfer to Heat-Kernel and Boundary Calculations

1. Compare complete metric variations, including coincident terms, rather than nonlocal diagrams alone.
2. Separate local counterterms and scheme choices from nonlocal response before comparing a determinant or heat kernel to a character.
3. Heavy-mass decoupling supplies a physical subtraction condition that minimal subtraction alone does not.
4. Spin projectors and spectral densities distinguish the finite scalar anomaly channel from the logarithmically sensitive spin-two channel.
5. A spectral delta limit records fixed integrated weight even when the density vanishes pointwise; this is relevant whenever mode sums are exchanged with massless limits.

# Verification Note

**Checked.** Mathematica independently evaluated

$$\begin{align}
\int_{4m^2}^\infty \frac{m^4}{24\pi^2s^3} \sqrt{1-\frac{4m^2}{s}}\,ds =\frac1{1440\pi^2}
\end{align}$$

for $m>0$. It also verified transversality of $P^{(S)}$ and $P^{(T)}$ and tracelessness of $P^{(T)}$ in four dimensions.

**Source-derived.** The original five one-loop form factors, complete second variation of the improved stress tensor, counterterm variations, closed-form response functions, and fermion/2D appendices were not independently regenerated.

**Source issues.** A general-$n$ appendix line retains the four-dimensional coefficient $1/3$ where $1/(n-1)$ is required; one cross-reference points to a figure instead of the response equations; and the “Goldstone” terminology denotes an anomaly-induced collective mode rather than ordinary spontaneous symmetry breaking.
