---
paper id: 2607.12103v1
title: "Liouville strings in AdS$_3$: the worldsheet story"
authors:
  - Gaston Giribet
  - Pedro Schmied
publication date: 2026-07-13T19:23:32
abstract: |-
  Strings on AdS3 with NS--NS flux are reformulated as a spacelike Liouville theory coupled to a timelike background-charge field and a free U(1), perturbed by a non-normalizable marginal operator. The operator lies in the spectral-flow sector omega=2 up to convention and controls winding-number violation. Integrating out the free fields reduces amplitudes to Liouville correlators with degenerate insertions, reproducing the WZW--Liouville correspondence and its tree- and one-loop consequences.
comments: "28 pages"
url: https://arxiv.org/abs/2607.12103v1
summary: "A worldsheet dictionary from AdS3 spectral flow to Liouville momenta, degenerate insertions, winding selection rules, and a deep-bulk marginal deformation."
tags: []
---

Back to [[2026_07_15_overview]].

This paper is useful for AdS$_3$ quantization and spectral bookkeeping. Its “boundary” language is radial/worldsheet language; it does not define CPS boundary data, a presymplectic current, or a surface charge.

# Liouville--timelike--$U(1)$ realization of $SL(2,\mathbb R)_k$

The free part uses a spacelike field $\phi_+$, a timelike field $\phi_-$, and a free boson $X$:

$$\begin{align}
\mathcal L_0 =(\partial\phi_+)^2+\sqrt2Q_+R\phi_+ -(\partial\phi_-)^2+\sqrt2Q_-R\phi_- +(\partial X)^2. \tag{2.1}
\end{align}$$

The parameters are

$$\begin{align}
b=\frac{1}{\sqrt{k-2}},\qquad Q_+=b+\frac1b,\qquad Q_-=\sqrt k. \tag{2.2}
\end{align}$$

The total central charge is

$$\begin{align}
c =3+\frac{6}{k-2} =\frac{3k}{k-2}, \tag{2.4--2.5}
\end{align}$$

matching the bosonic $SL(2,\mathbb R)_k$ WZW model.

The interacting theory is

$$\begin{align}
\mathcal L_I =2\pi e^{\sqrt2b\phi_+} -2\pi\lambda e^{-\phi_+/(\sqrt2b)-\sqrt{k/2}\phi_-}. \tag{2.6}
\end{align}$$

It is summarized as

$$\begin{align}
\text{Liouville} \times i\mathbb R_{Q_-} \otimes U(1)
\tag{2.7}
\end{align}$$

deformed by

$$\begin{align}
\mathcal O =e^{-\phi_+/(\sqrt2b)-\sqrt{k/2}\phi_-}. \tag{2.8}
\end{align}$$

The ordinary Liouville wall and $\mathcal O$ have opposite radial behavior. The former grows toward the asymptotic Liouville direction; the latter probes the deep-bulk region.

# Vertex operators and spectral-flow dictionary

A generic vertex is represented by

$$\begin{align}
V^\omega_{j,m,\bar m} =N_{j,m,\bar m} e^{\sqrt2\alpha_+\phi_+ +\sqrt2\alpha_-\phi_- +\sqrt2pX}, \tag{2.9}
\end{align}$$

with

$$\begin{align}
\alpha_+=b\left(j+\frac{k}{2}\right), \qquad \alpha_-=\frac{\sqrt k}{2}-\frac{m}{\sqrt k}, \qquad p=\frac{m}{\sqrt k}+\frac{\sqrt k\,\omega}{2}. \tag{2.10}
\end{align}$$

Its conformal weight is

$$\begin{align}
\Delta_{j,m,\omega} =-\frac{j(j+1)}{k-2} -m\omega-\frac{k}{4}\omega^2. \tag{2.13}
\end{align}$$

This is the core translation table:

| WZW/string datum | Free-field datum |
|---|---|
| spin $j$ | Liouville momentum $\alpha_+$ |
| $J_0^3$ eigenvalue $m$ | timelike momentum $\alpha_-$ and $U(1)$ momentum $p$ |
| spectral flow $\omega$ | shift of $p$ by $\sqrt{k}\omega/2$ |
| winding violation | number of insertions of the marginal deformation |

# Integrating out the free fields

The $X$ zero mode imposes momentum conservation, while the timelike zero mode ties the total spectral flow to the number $\ell$ of deformation insertions:

$$\begin{align}
\sum_i(m_i-\bar m_i)=0,\qquad \sum_i\omega_i=\ell-n+2. \tag{3.6}
\end{align}$$

After the $X$ and $\phi_-$ sectors are integrated out, the remaining path integral is a spacelike Liouville correlator with $\ell$ degenerate insertions

$$\begin{align}
V_{-1/(2b)}^{L}.
\end{align}$$

The number of degenerate fields therefore keeps track of the WZW winding-number violation.

The source uses zeros of the DOZZ structure constants to truncate the formal sum. Its main correspondence can be written schematically as

$$\begin{align}
\left\langle\prod_iV_{j_i,m_i,\bar m_i}^{\omega_i}\right\rangle =\frac{c_k^2}{2\pi^3b}
\sum_{w=0}^{n-2} \delta\!\left(\sum_i\omega_i+w\right) \left\langle \prod_i\Phi_{j_i,m_i,\bar m_i}^{\omega_i} \right\rangle_{\rm WZW}^{(w)}. \tag{after 3.16}
\end{align}$$

The precise normalization $c_k$, the Liouville reflection conventions, and the treatment of the degenerate insertions must be kept together when this formula is reused.

# KPZ scaling and the string coupling

The Liouville cosmological constant $\mu$, deformation strength $\lambda$, and string coupling obey

$$\begin{align}
\lambda\sim\mu^{-1/(2b^2)}, \tag{4.2}
\end{align}$$

$$\begin{align}
\mu\sim g_s^{-2}. \tag{4.7}
\end{align}$$

The sphere correlators reproduce the AdS$_3$ string amplitudes with the winding-selection rule above. The torus extension carries the same dictionary into a one-loop kernel, making the paper potentially useful for spectral-flow-resolved partition functions.

# The deep-bulk marginal operator

In the WZW labels, the deformation has

$$\begin{align}
j=1-k,\qquad m=\bar m=k,\qquad \omega=-2, \tag{5.5}
\end{align}$$

and satisfies

$$\begin{align}
\Delta=\bar\Delta=1,\qquad m+\frac{k}{2}\omega=0. \tag{5.6--5.7}
\end{align}$$

Thus it is:

- exactly marginal on the worldsheet;
- non-normalizable in the spacetime radial interpretation;
- of zero spacetime energy;
- the operator that controls winding-number violation.

The abstract describes the same sector as $\omega=2$; the sign is a spectral-flow convention. A local use must fix the sign convention before comparing formulas.

# Spectral-flow dual descriptions

Section 5 also relates the $\omega=-2$ representative to $\omega=-1$ and to the conventional spectral-flow operator. The practical lesson is that the same deformation can look like:

- a deep-bulk exponential in the Liouville--timelike variables;
- a flowed WZW vertex;
- a winding-violation insertion in amplitudes.

This three-way identification is more useful than the broad statement that the theories are “equivalent”: it tells which insertion changes the selection rule and how many degenerate Liouville operators appear.

# Long strings and the symmetric-orbifold comparison

Appendix A improves the spacetime stress tensor in BRST cohomology and recovers the long-string central charge approaching

$$\begin{align}
c_{\rm spacetime}\simeq6k
\end{align}$$

at large $k$. Appendix B compares the worldsheet marginal operator with a twist-two deformation of a symmetric-orbifold description.

The resemblance is limited:

- both descriptions contain a Liouville-type factor and a dressed non-normalizable deformation;
- their background charges and Hilbert-space interpretations differ;
- the worldsheet operator tracks spectral flow/winding directly, while the spacetime orbifold operator changes cycle structure.

# Transfer to AdS$_3$ quantization notes

| Paper formula | Potential use |
|---|---|
| (2.10) | translate $(j,m,\omega)$ into free-field momenta |
| (2.13) | check physical-state dimensions in each flow sector |
| (3.6) | enforce winding/spectral-flow selection rules |
| degenerate $V^L_{-1/(2b)}$ insertions | organize WZW amplitudes through Liouville correlators |
| (4.2), (4.7) | track worldsheet couplings and genus scaling |
| (5.5)--(5.7) | identify the exact marginal deep-bulk operator |

The paper does not provide variational boundary conditions, a symplectic form, or a charge algebra. Its direct use is worldsheet/spectral, not CPS.

# Verification boundary

- The central-charge algebra, vertex dictionary, winding-selection rule, and marginal-operator labels were followed from the official HTML source.
- The DOZZ zero mechanism, the complete WZW--Liouville normalization, the sphere-amplitude equality, and the torus kernel were not independently reproduced.
- Appendix A equations (A.9)--(A.10) in the official HTML write $b=1/(k-2)$, whereas the main text and (A.8) require $b=1/\sqrt{k-2}$. This is recorded as a source inconsistency; the note uses the main-text convention and does not count the appendix chain as verified.
- “Boundary” in the paper is a radial/worldsheet interpretation. No Tier-1 boundary/CPS claim is inferred from that terminology.
