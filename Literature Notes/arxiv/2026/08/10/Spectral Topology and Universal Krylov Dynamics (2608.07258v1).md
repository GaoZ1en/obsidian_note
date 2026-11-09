---
paper id: 2608.07258v1
title: Spectral Topology and Universal Krylov Dynamics
authors:
  - Jeff Murugan
  - Hendrik J. R. Van Zyl
  - Masataka Watanabe
publication date: 2026-08-07T14:14
abstract: |-
  The paper organizes large-order Lanczos behavior by spectral tails, connected components of the support, endpoint data, and gap-closing criticality. It uses orthogonal-polynomial Riemann--Hilbert methods, tests gapped behavior in SSH chains, derives exact conformal-SYK coefficients from a Meixner--Pollaczek measure, and proposes a Painleve-II crossover at a symmetric one-cut/two-cut transition.
comments: "43+12 pages"
url: https://arxiv.org/abs/2608.07258v1
summary: "A useful but partly conjectural hierarchy connecting spectral tails and support geometry to Lanczos growth, finite-gap oscillations, and critical recurrence asymptotics."
tags: []
---

Back to [[2026_08_10_overview]].

This paper is useful as a spectral-measure and orthogonal-polynomial benchmark for the AdS quantization line. Its strongest reusable results are the exact spectral/Lanczos dictionary, Freud growth, SSH staggering, and Meixner--Pollaczek recurrence. The claimed universal one-cosine multi-cut law, complexity velocity, and general Painlevé-II transition are not established at the stated level of generality.

## Spectral Measures Turn Liouvillian Dynamics into a Jacobi Problem

Let $\mathscr H_{\rm op}$ be the positive operator Hilbert space, $|\mathcal O_0)$ a normalized cyclic seed, and

$$\begin{align}
\mathcal L=[H,\cdot], \qquad |\mathcal O(t))=e^{+i\mathcal Lt}|\mathcal O_0).
\end{align}$$

The autocorrelation and cyclic spectral measure are

$$\begin{align}
C(t)=\int_{\mathbb R}e^{i\omega t}\,d\mu(\omega), \qquad d\mu(\omega)=(\mathcal O_0|dE_{\mathcal L}(\omega)|\mathcal O_0), \tag{2.6,2.8}
\end{align}$$

so that

$$\begin{align}
\mu_k=\int\omega^k\,d\mu =(\mathcal O_0|\mathcal L^k|\mathcal O_0). \tag{2.9}
\end{align}$$

For orthonormal polynomials $p_n$,

$$\begin{align}
\omega p_n(\omega) =b_{n+1}p_{n+1}(\omega)+a_np_n(\omega)+b_np_{n-1}(\omega), \tag{2.10}
\end{align}$$

and $|\mathcal O_n)=p_n(\mathcal L)|\mathcal O_0)$. The amplitudes and Krylov complexity are

$$\begin{align}
\varphi_n(t)=\int e^{i\omega t}p_n(\omega)\,d\mu(\omega), \qquad K(t)=\sum_{n\ge0}n|\varphi_n(t)|^2. \tag{2.13,2.15}
\end{align}$$

This gives the reusable chain

$$\begin{align}
(C,\Phi,d\mu) \longrightarrow \{\mu_k\} \longrightarrow \{p_n\} \longrightarrow \{a_n,b_n\} \longrightarrow \{\varphi_n,K\}.
\end{align}$$

There is a sign error in the printed evolution equation (2.14). With $e^{+i\mathcal Lt}$ and the unphased expansion above,

$$\begin{align}
i\partial_t\varphi_n =-\left(b_{n+1}\varphi_{n+1}+a_n\varphi_n+b_n\varphi_{n-1}\right).
\end{align}$$

The source's plus sign requires an unstated time reversal or phase redefinition.

## The Fokas--Its--Kitaev Extraction of Lanczos Coefficients

The $2\times2$ Riemann--Hilbert matrix $Y_n(z)$ packages the monic polynomial $\pi_n$ and its Cauchy transform. If

$$\begin{align}
Y_n(z)=\left(I+\frac{Y_{1,n}}{z}+O(z^{-2})\right)z^{n\sigma_3},
\end{align}$$

then the Jacobi data are

$$\begin{align}
b_n=\sqrt{(Y_{1,n})_{12}(Y_{1,n})_{21}}, \qquad a_n=(Y_{1,n})_{11}-(Y_{1,n+1})_{11}. \tag{3.11--3.12}
\end{align}$$

Sections 3--4 apply the standard Deift--Zhou sequence: equilibrium problem, $g$-function, lens opening, global parametrix, endpoint parametrices, and a small-norm error problem. For a regular single interval $[A,B]$ this yields

$$\begin{align}
b_n\longrightarrow\frac{B-A}{4}, \qquad a_n\longrightarrow\frac{A+B}{2}.
\tag{4.20}
\end{align}$$

The paper quotes $O(n^{-2})$ corrections when the two endpoints have the same regularity type. A fixed hard wall and a soft equilibrium endpoint must be kept distinct: an $O(1)$ factor $(x-A)^\alpha$ alone does not turn an unconstrained soft edge into a hard edge.

## Unbounded Tails and Freud Growth

For a density with stretched-exponential tail

$$\begin{align}
\rho(\omega)\sim |\omega|^\gamma e^{-c|\omega|^\nu}, \tag{7.1}
\end{align}$$

where $\nu$ replaces the source's multiply used symbol $\beta$, the Mhaskar--Rakhmanov--Saff scale gives

$$\begin{align}
b_n\sim \left[ \frac{\Gamma(\nu/2)\Gamma(\nu/2+1)} {c\,\Gamma(\nu+1)} \right]^{1/\nu}n^{1/\nu}, \qquad \nu\ge1. \tag{7.5}
\end{align}$$

For an exponential tail $c=1/\Lambda$,

$$\begin{align}
b_n\sim\frac{\pi\Lambda}{2}n. \tag{7.6}
\end{align}$$

This is a leading asymptotic statement. Power-law factors in the density can change the constant offset and inverse-$n$ corrections without changing the leading slope.

## Two Bands, Harmonic Measure, and What Is Actually Topological

For

$$\begin{align}
E=[\omega_1^-,\omega_1^+]\cup[\omega_2^-,\omega_2^+], \qquad Q(\omega)=\prod_{j=1}^2(\omega-\omega_j^-)(\omega-\omega_j^+), \tag{5.1--5.2}
\end{align}$$

the equilibrium/harmonic measure is

$$\begin{align}
d\omega_E(\omega) =\frac{|\omega-c|}{\pi\sqrt{|Q(\omega)|}}\,d\omega, \qquad \int_{\omega_1^+}^{\omega_2^-} \frac{\omega-c}{\sqrt{|Q(\omega)|}}\,d\omega=0. \tag{5.3--5.4}
\end{align}$$

The gap retains the diagonal jump

$$
S_{n,+}=S_{n,-}
\begin{pmatrix}
e^{-2\pi in\Omega}&0\\
0&e^{2\pi in\Omega}
\end{pmatrix},
\qquad
\Omega=\int_{\omega_1^-}^{\omega_1^+}d\mu_{\rm eq}.
\tag{5.6--5.7}
$$

This forces quasiperiodic $n\Omega$ dependence in the genus-one parametrix. It does **not** generally imply the source's claimed one-harmonic formula

$$\begin{align}
b_n=\bar b+\widetilde b\cos(2\pi n\Omega+\varphi_0)+O(e^{-cn}). \tag{5.11, source claim}
\end{align}$$

The defensible general form is instead

$$\begin{align}
b_n=F_b(n\Omega+\delta)+o(1), \qquad a_n=F_a(n\Omega+\delta')+o(1),
\end{align}$$

with $F_a,F_b$ theta-functional analytic quasiperiodic functions. Higher harmonics are generally $O(1)$, not part of an exponentially small error. The genus, hence the number of independent frequencies, is topological; the numerical value of $\Omega$ varies continuously with the band edges and is geometric rather than a topological invariant.

The subsequent claim $K(t)\sim2\bar b,t+$ bounded quasiperiodic beating is also not derived from joint large-$n$, large-$t$ asymptotics. Even the constant half-line chain has a different ballistic coefficient, so $2\bar b$ is not a universal exact velocity.

## SSH Staggering and the Asymmetric Two-Band Test

For the SSH dispersion

$$\begin{align}
\varepsilon_\pm(k) =\pm\sqrt{t_1^2+t_2^2+2t_1t_2\cos k}, \tag{5.16}
\end{align}$$

the boundary spectral density is

$$\begin{align}
d\mu(\omega) =\frac{|\omega|\,d\omega} {\pi\sqrt{(\omega_{\max}^2-\omega^2)(\omega^2-\Delta^2)}}, \qquad \Delta<|\omega|<\omega_{\max}. \tag{5.18}
\end{align}$$

The asymptotic period-two Jacobi coefficients obey

$$\begin{align}
\{b_{\rm even}^{(\infty)},b_{\rm odd}^{(\infty)}\} =\{\max(t_1,t_2),\min(t_1,t_2)\}. \tag{5.21}
\end{align}$$

Adding next-nearest-neighbor hopping,

$$
H(k)=
\begin{pmatrix}
2t'\cos k&t_1+t_2e^{-ik}\\
t_1+t_2e^{ik}&2t'\cos k
\end{pmatrix},
\tag{5.22}
$$

breaks the symmetric placement of the bands. At $t_1=1$, $t_2=3/5$, $t'=3/20$, the support and harmonic data are

$$\begin{align}
E=[-1.3,-0.7]\cup[0.1,1.9], \qquad c=-0.3236788806\ldots, \qquad \Omega=0.3699769741\ldots. \tag{5.25--5.26}
\end{align}$$

This validates the band-geometry calculation. It does not validate the single-cosine truncation; that would require reconstructing sufficiently many recurrence coefficients and resolving higher Fourier harmonics.

## A Genuine Critical Merge and Its Painleve-II Local Model

The critical regime considered in Section 6 has a quadratic zero of the equilibrium density,

$$\begin{align}
\rho_{\rm eq}(\omega)\sim\kappa(\omega-\omega_c)^2. \tag{6.4}
\end{align}$$

Its local parametrix uses the Hastings--McLeod solution

$$\begin{align}
q''(s)=sq(s)+2q(s)^3, \qquad q(s)\sim\operatorname{Ai}(s)\ (s\to+\infty), \qquad q(s)\sim\sqrt{-s/2}\ (s\to-\infty). \tag{6.7--6.8}
\end{align}$$

The scaling variables are

$$\begin{align}
\zeta_n=c_1n^{1/3}u, \qquad s=c_0n^{2/3}\sigma, \qquad c_1=\left(\frac{\pi\kappa}{2}\right)^{1/3}, \qquad c_0=2^{4/3}(\pi\kappa)^{2/3}. \tag{6.11}
\end{align}$$

The source proposes

$$\begin{align}
b_n=b_\infty\left[ 1+\frac{(-1)^nd_1q(s)}{n^{1/3}}+O(n^{-2/3}) \right]. \tag{6.16}
\end{align}$$

This is only an exponent and scaling-shape statement: $d_1$ is never computed. The detailed construction is for a symmetric varying-weight quartic model; neither an asymmetric merge nor transfer to a fixed physical spectral measure is established. Section 6.4 explicitly identifies the ordinary SSH gap closing as Bessel/noncritical, so the SSH model is not a physical check of the Painleve-II crossover. Numerically,

$$\begin{align}
q_{\rm HM}(0)=0.3670615515\ldots,
\end{align}$$

not the paper's $0.3679$.

## Meixner--Pollaczek Recurrences and the Conformal SYK Example

For

$$\begin{align}
w_\lambda(\omega)=\frac1{2\pi} \left|\Gamma\left(\lambda+\frac{i\omega}{\Lambda}\right)\right|^2, \tag{7.7}
\end{align}$$

the exact recurrence is

$$\begin{align}
b_n=\frac{\Lambda}{2}\sqrt{n(n+2\lambda-1)}. \tag{7.10}
\end{align}$$

Hence

$$\begin{align}
b_n=\frac\Lambda2n +\frac{\Lambda(2\lambda-1)}4 -\frac{\Lambda(2\lambda-1)^2}{16n}+O(n^{-2}).
\end{align}$$

Applied to the conformal SYK Wightman density,

$$\begin{align}
\Phi_{\rm SYK}(\omega)\propto \left|\Gamma\left(\Delta+ \frac{i\beta_T\omega}{2\pi}\right)\right|^2, \qquad \Delta=\frac1q, \tag{7.21}
\end{align}$$

this gives

$$\begin{align}
b_n^{\rm SYK_q}=\pi T\sqrt{n\left(n+\frac2q-1\right)}. \tag{7.22}
\end{align}$$

The result is exact for the assumed conformal Wightman measure, not for full finite-coupling SYK. It extracts the operator-growth slope from an input spectral density; it does not independently derive the Lyapunov exponent.

The generalized-Hermite recurrence printed in (7.15) contains a concrete typo. For $|x|^{2\mu}e^{-x^2}$,

$$\begin{align}
\beta_{2m}=m,
\end{align}$$

not $m/2$. The next unified formula

$$\begin{align}
b_n^2=\frac n2+\mu\,\mathbf 1_{n\,\mathrm{odd}}
\end{align}$$

is correct.

## Transfer to AdS Spectral Calculations

The clean use case is

$$\begin{align}
\text{AdS two-point function} \longrightarrow \Phi(\omega) \longrightarrow d\mu(\omega) \longrightarrow \{\mu_k\} \longrightarrow \{a_n,b_n\}.
\end{align}$$

For standard versus alternative quantization, a shared exponential scale can give the same leading Lanczos slope while different power prefactors alter the offset. A Gamma-product thermal correlator is the best first benchmark: determine whether the measure is exactly Meixner--Pollaczek or a deformation, then distinguish the exact finite-$n$ recurrence, leading slope, constant offset, and $1/n$ term.

At finite cutoff a global-AdS spectrum gives a finite atomic measure and therefore $b_N=0$. That establishes a finite Jacobi-matrix identity only; the continuum or large-volume limit must be taken before importing large-$n$ recurrence asymptotics. Likewise, two discrete mode towers do not automatically define disconnected continuum bands. For a genuine multi-band density, compute the harmonic measures from the band edges before fitting recurrence oscillations.

## Source Route and Claim Tiers

Sections 2--3 construct the spectral/Jacobi/Riemann--Hilbert dictionary. Section 4 treats single-cut steepest descent and endpoints. Section 5 develops the genus-one two-cut problem and SSH/NNN examples. Section 6 treats the symmetric quartic critical model and contrasts it with the noncritical SSH closing. Section 7 covers Freud laws, classical weights, and conformal SYK. Appendix A proves the Riemann--Hilbert uniqueness statement, Appendix B records equilibrium and endpoint parametrices, and Appendix C expands the quartic critical matching.

- **Established or classical in the source:** the spectral-measure/orthogonal-polynomial dictionary, FIK extraction, Freud leading law, exact SSH staggering, and Meixner--Pollaczek recurrence.
- **Source-derived with a restricted scope:** genus-one theta-function asymptotics and the symmetric varying-weight quartic Painleve-II scaling.
- **Conjectural or overstated:** a universal single cosine, a universal $2\bar b$ complexity velocity, the unevaluated critical amplitude, and transfer to asymmetric or fixed-measure gap closings.

## Verification Log

### Checked

- Mathematica reproduced the MRS constants for exponential, Gaussian, and quartic tails and the large-$n$ Meixner--Pollaczek expansion through $O(n^{-1})$.
- Mathematica reproduced SSH staggering from $\omega_{\max}=t_1+t_2$ and $\Delta=|t_1-t_2|$.
- Mathematica reproduced the NNN band edges, $c=-0.3236788806\ldots$, and $\Omega=0.3699769741\ldots$.
- Mathematica reproduced the quartic critical parameters and the source's quartic string-equation coefficients.
- Numerical solution of Painleve II from the Airy boundary condition gave $q_{\rm HM}(0)=0.367061551548\ldots$.
- A moment check at $\mu=0$ gave $\beta_2=1$, refuting the printed $m/2$ in (7.15) and agreeing with the unified formula.

### Blocked

- The constant $d_1$ in the critical recurrence cannot be checked because the source never supplies the global matching prefactor that determines it.
- The asymmetric and fixed-measure Painleve-II transfers are not worked out in the source.
- A decisive test of the claimed one-cosine form needs a long, high-precision NNN Jacobi reconstruction and Fourier analysis beyond the paper's presented data.

### Failed

- Equation (2.14) has the wrong sign under the paper's stated $e^{+i\mathcal Lt}$ convention.
- Equation (5.11) is not the general genus-one recurrence: the theta ratio contains higher harmonics that are not exponentially small in general.
- The numerical value $q(0)\approx0.3679$ is inaccurate; the independently reproduced value is $0.3670615515\ldots$.
- Equation (7.15) has $\beta_{2m}=m/2$ where the correct coefficient is $m$.
- The general complexity velocity in Section 5 is not established; the constant half-line chain already contradicts the proposed exact coefficient $2\bar b$.
- The paper's description of $\Omega$ as topological is incorrect: only the genus/frequency count is topological, while $\Omega$ itself is support-dependent geometry.
