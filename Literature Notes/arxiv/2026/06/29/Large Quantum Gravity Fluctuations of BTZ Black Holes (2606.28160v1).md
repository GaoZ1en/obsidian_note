---
paper id: 2606.28160v1
title: Large Quantum Gravity Fluctuations of BTZ Black Holes
authors:
  - Ben Freivogel
  - Upamanyu Moitra
publication date: 2026-06-26T14:56:52
abstract: |-
  The paper computes a quantum width for BTZ black holes in perturbative AdS3 gravity. The horizon fluctuation can be expressed through Banados boundary data and holographic stress-tensor correlators. The resulting width is parametrically larger than the three-dimensional Planck scale and has a logarithmic dependence on the ultraviolet resolution of the measurement.
comments: "29 pages, 6 figures"
url: https://arxiv.org/abs/2606.28160v1
summary: "BTZ horizon fluctuations are reduced to boundary stress-tensor correlators in Banados coordinates."
tags: []
---

Back to [[2026_06_29_overview]].

# BTZ Thermodynamic Starting Point

The setup is pure AdS3 gravity with action

$$\begin{align}
I=\frac{1}{16\pi G_N}\int d^3x\sqrt{-g} \left(R+\frac{2}{L_{\rm AdS}^2}\right)+I_{\rm GHY}+I_{\rm ct}.
\end{align}$$

The nonrotating BTZ metric is written as

$$\begin{align}
ds^2=-f(r)dt^2+\frac{dr^2}{f(r)}+r^2d\phi^2, \qquad f(r)=\frac{r^2-r_0^2}{L_{\rm AdS}^2}.
\end{align}$$

The thermodynamic parameters are

$$\begin{align}
r_0=\sqrt{8G_NML_{\rm AdS}^2}, \qquad T=\frac{r_0}{2\pi L_{\rm AdS}^2}, \qquad S=\frac{\pi r_0}{2G_N}.
\end{align}$$

The paper uses these thermodynamic fluctuations as the first indication that horizon-radius fluctuations can be larger than a naive Planck scale.

# Canonical Horizon-Radius Fluctuations

In the canonical ensemble the mass fluctuation gives

$$\begin{align}
\frac{\Delta M}{M}=\frac{2}{\sqrt S}.
\end{align}$$

Since $r_0^2\propto M$, this implies a horizon-radius variance

$$\begin{align}
(\Delta r_0)^2=\frac{2}{\pi}G_N r_0.
\end{align}$$

The associated local width scale is then estimated as

$$\begin{align}
w_q^2=\frac{\Delta r_0}{\pi T}, \qquad w_q^{\rm cell}\sim (G_NL_{\rm AdS}^3)^{1/4}.
\end{align}$$

This thermodynamic estimate is not the final derivation; it motivates the more precise holographic calculation in which the fluctuation is measured by boundary stress-tensor correlations.

# Banados Perturbations and Holographic Stress Tensor

The exact local solution space is written in Banados form,

$$\begin{align}
ds^2=\frac{L_{\rm AdS}^2dz^2}{z^2} -\left(\frac{L_{\rm AdS}^2}{z^2}+z^2\ell_+(x^+)\ell_-(x^-)\right)dx^+dx^- +\ell_+(x^+)(dx^+)^2+\ell_-(x^-)(dx^-)^2 .
\end{align}$$

Perturbations of $\ell_\pm$ are boundary gravitons. The holographic stress tensor relation used in the paper is

$$\begin{align}
T_{\pm\pm}=\frac{\ell_\pm}{8\pi G_NL_{\rm AdS}}.
\end{align}$$

Thus the bulk horizon fluctuation is reduced to a boundary stress-tensor problem. This is the main technical reason the paper is useful for AdS3 quantization notes.

# Stress-Tensor Correlator to Affine Fluctuation

The chiral CFT stress-tensor Wightman function is written as

$$\begin{align}
S_+(x)=\frac{c}{2}\left(\frac{\pi}{\beta}\right)^4 \operatorname{csch}^4\left(\frac{\pi x}{\beta}\right),
\end{align}$$

and in momentum space as

$$\begin{align}
S_+(k)=\frac{\pi c}{6} \frac{k\left(k^2+(2\pi/\beta)^2\right)} {1-e^{-k\beta}}.
\end{align}$$

The paper then expresses the affine displacement of the BTZ horizon in terms of these stress-tensor modes. The important chain is:

$$\begin{align}
\ell_\pm\quad\longrightarrow\quad T_{\pm\pm} \quad\longrightarrow\quad \langle T_{\pm\pm}T_{\pm\pm}\rangle \quad\longrightarrow\quad \langle\Delta\lambda\Delta\lambda\rangle \quad\longrightarrow\quad w_q .
\end{align}$$

# Smeared Width and Compact Horizon Modes

After smearing over a time resolution $\sigma$, the width obeys source formulas of the form

$$\begin{align}
\left\langle (w_q^2(f_G))^2\right\rangle =32\pi^2G_NL_{\rm AdS}^3|\log(\sigma T)|, \qquad \sigma T\ll1,
\end{align}$$

and

$$\begin{align}
\left\langle (w_q^2(f_G))^2\right\rangle =\frac{8\sqrt\pi\,G_NL_{\rm AdS}^3}{\sigma T}, \qquad \sigma T\gg1.
\end{align}$$

For the compact horizon, the mode correlator is written as

$$\begin{align}
\left\langle \Delta\lambda_m(t)\Delta\lambda_n(t') \right\rangle =32\pi^4G_NL_{\rm AdS}^3T^2\delta_{m+n,0} \left[\cdots \widetilde S_m\cdots\right],
\end{align}$$

with

$$\begin{align}
\widetilde S_m= \frac{m}{\left(m^2+4\pi^2L_{\rm AdS}^2T^2\right) \left(1-e^{-m/(L_{\rm AdS}T)}\right)}.
\end{align}$$

These formulas are the part worth preserving: they show exactly where the logarithmic UV dependence and finite-size mode structure enter.

# Use in AdS3 Quantization Notes

The paper is a useful AdS3 companion to horizon-fluctuation discussions because it turns a bulk horizon observable into a boundary-stress-tensor correlator. It is not primarily a charge paper, but it is relevant to the user's AdS3 quantization project because the variables are Banados data and the Brown-Henneaux stress tensor.

The paper should be read after the more general horizon-width paper if the active question is the operational meaning of the width, and before it if the active question is specifically AdS3 or BTZ.

# Verification Boundary

This note is source-derived from the official TeX source. I did not independently rederive the CFT stress-tensor Fourier transform, the compact-mode correlator, or the smearing integrals. The formulas here should be treated as a technical map for later checking, especially the exact denominator convention in $\widetilde S_m$ and the normalization of the Banados stress tensor.
