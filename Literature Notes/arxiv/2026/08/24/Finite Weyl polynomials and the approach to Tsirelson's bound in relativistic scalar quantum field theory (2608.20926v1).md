---
paper id: 2608.20926v1
title: Finite Weyl polynomials and the approach to Tsirelson's bound in relativistic scalar quantum field theory
authors:
  - J. G. A. Caribé
  - M. S. Guimaraes
  - I. Roditi
  - S. P. Sorella
publication date: 2026-08-21T17:42
abstract: |-
  The authors construct bounded Hermitian Bell--CHSH settings as finite polynomials in Weyl operators for the massive free scalar field in 1+1 dimensions. Odd harmonics give exact local anticommutation, complementary-wedge modular packets give closed finite-band inner products, and normalized Fejér approximants approach the Tsirelson value without any finite polynomial attaining it.
comments: "22 pages"
url: https://arxiv.org/abs/2608.20926v1
summary: "A concrete finite-Weyl, complementary-Rindler-wedge construction that separates exact local algebra from the singular modular-concentration limit."
tags: []
---

# Verdict and relevance

**Direct verdict.** Correct under the paper's stated free massive scalar, Fock-vacuum, one-particle modular conventions. The finite Weyl algebra, finite-band Gram matrix, six-Weyl violation, Fejér sequence, and quoted numerical values are independently reproduced below. The passage from the abstract boost-spectral vectors to compactly supported spacetime smearings remains theorem-dependent and was not independently reproved.

Reason codes: `T1-boundary`, `T1-symplectic`, `T2-spectral`.

This is unusually close to the vault's scalar-gluing problem because it uses the massive scalar in (1+1) dimensions and complementary Rindler wedges. Its actual lesson is narrower than a gluing theorem: it constructs bounded observables inside the global Fock representation using modular localization. It does **not** factor the global Hilbert space into sharp left/right Fock factors, reconstruct the field from characteristic data, or give a regional canonical sewing map.

# Source map

1. Section I states the finite-polynomial goal and separates one-quadrature Gaussian settings from genuinely noncommuting local Weyl sums.
2. Section II fixes the CCR/Bell conventions, proves the contraction version of Tsirelson's bound, and gives the common-Gaussian-measure obstruction for four final one-quadrature settings.
3. Section III turns odd trigonometric harmonics into exactly anticommuting Weyl polynomials and introduces the six-Weyl and normalized Fejér families.
4. Section IV constructs right/left wedge one-particle vectors from a compact boost-frequency packet and derives their exact finite-band Gram data.
5. Section V evaluates the CHSH correlator as a finite double sum, proves the ordered limit to $2\sqrt2$, and gives the six-Weyl and degree-511 examples.
6. Appendix A derives every finite-band inner product from the boost-spectral support decomposition.
7. Appendix B derives the modular zero-frequency asymptotics and the stable positive-square identity.
8. Appendix C proves the Fejér norm and coefficient-weight statements and checks the six-Weyl polynomial.
9. Appendix D records the degree-511 coefficients and the cancellation-safe evaluation formula.
10. Appendix E gives Abel--Poisson approximants as an alternative odd-harmonic regularization.

# CCR and Bell conventions

The one-particle inner product is linear in its second entry, with

$$
\Delta_{PJ}(h,k)=2\,\operatorname{Im}\langle h|k\rangle,
\qquad [\varphi(h),\varphi(k)]=i\Delta_{PJ}(h,k).
$$

The Weyl convention is

$$
W(h)=e^{i\varphi(h)},\qquad
W(h)W(k)=e^{-\frac{i}{2}\Delta_{PJ}(h,k)}W(h+k),
$$

and the vacuum characteristic functional is

$$
\langle0|W(h)|0\rangle=e^{-\|h\|^2/2}.
$$

For commuting Alice/Bob algebras, Hermitian contractions (A,A',B,B'), and

$$
\mathcal C=(A+A')B+(A-A')B',
$$

the paper uses Cauchy--Schwarz plus the parallelogram identity to obtain

$$
|\omega(\mathcal C)|
\leq \sqrt{\omega(A^2+A'^2)}
\sqrt{2\omega(B^2+B'^2)}
\leq 2\sqrt2.
$$

This form applies to contractions and does not require $A^2=A'^2=B^2=B'^2=1$.

# Why individual quadratures remain classical for CHSH

For a centered quasifree state

$$
\omega(W(h))=e^{-\mu(h,h)/2},
$$

take four final settings $F(\varphi(f)),F'(\varphi(f')),G(\varphi(g)),G'(\varphi(g'))$, with every cross-wedge Pauli--Jordan pairing zero. The real covariance matrix

$$
\Gamma_{\alpha\beta}=\mu(h_\alpha,h_\beta),
\qquad (h_1,h_2,h_3,h_4)=(f,f',g,g')
$$

defines one positive Gaussian measure on $\mathbb R^4$. Each of the four cross-region correlators is a marginal expectation of this same measure, so the CHSH value is at most $2$. Same-side noncommutativity is not being represented as a joint quantum measurement; only the four compatible Alice--Bob contexts are reproduced.

The finite-Weyl construction escapes this restriction because Bob's final settings combine two noncommuting axes and are not functions of one quadrature.

# Odd harmonics and exact anticommutation

Let

$$
p(x)=\sum_{m\in M}c_m\cos(mx),
\qquad M\subset\{1,3,5,\ldots\},
\qquad \|p\|_\infty\leq1,
$$

and define

$$
S_p(h)=p\!\left(\alpha\varphi(h)\right),
\qquad \alpha=\sqrt{\frac\pi2}.
$$

If $\Delta_{PJ}(h,k)=2$, then $U=W(\alpha h)$ and $V=W(\alpha k)$ obey

$$
UV=e^{-i\alpha^2\Delta_{PJ}(h,k)}VU=-VU.
$$

Every pair $(U^m,V^n)$ with odd $(m,n)$, including negative powers from the cosine expansion, anticommutes. Therefore

$$
\{S_p(h),S_p(k)\}=0.
$$

The spectral theorem gives $\|S_p(h)\|\leq1$. Consequently, for anticommuting Hermitian contractions $S,T$,

$$
B=\frac{S+T}{\sqrt2},\qquad B'=\frac{S-T}{\sqrt2}
$$

remain contractions because $B^2=B'^2=(S^2+T^2)/2\leq1$.

The economical polynomial is

$$
p_{\rm six}(x)=\frac65\cos x-\frac3{10}\cos3x+\frac1{10}\cos5x.
$$

It gives six Weyl operators per axis observable.

# Complementary-wedge modular vectors

For the right/left wedges

$$
W_R=\{(t,x):x>|t|\},\qquad
W_L=\{(t,x):-x>|t|\},
$$

the paper uses the Bisognano--Wichmann normalization

$$
\delta=e^{-2\pi K},\qquad jKj=-K,
\qquad s=j\delta^{1/2},\qquad s^\dagger=j\delta^{-1/2}.
$$

In boost-frequency space $K\psi(\omega)=\omega\psi(\omega)$. The normalized seed packet is

$$
h_d(\omega)=\frac1{\sqrt{2d}}\,
\chi_{[\omega_0-d,\,\omega_0+d]}(\omega),
\qquad 0<d<\omega_0.
$$

Compact boost-frequency support puts the seed in every modular domain, but it is not itself wedge-local. Localization is imposed by $1+s$ and $1+s^\dagger$.

Define

$$
\lambda^2=e^{-2\pi\omega_0},\qquad
S_d=\frac{\sinh(2\pi d)}{2\pi d},\qquad
\mu_+=\lambda^2S_d,
\qquad \mu_-=\lambda^{-2}S_d.
$$

Then

$$
\begin{aligned}
f&=(1-\mu_+)^{-1/2}(1+s)\Psi_d,
&f'&=(1-\mu_+)^{-1/2}(1+s)i\Psi_d,\\
g&=(\mu_--1)^{-1/2}(1+s^\dagger)\Psi_d,
&g'&=-(\mu_--1)^{-1/2}(1+s^\dagger)i\Psi_d.
\end{aligned}
$$

The complete Gram data are

$$
\begin{aligned}
\|f\|^2=\|f'\|^2&=\nu_A=\frac{1+\mu_+}{1-\mu_+},
&\langle f|f'\rangle&=i,\\
\|g\|^2=\|g'\|^2&=\nu_B=\frac{1+\mu_-}{\mu_--1},
&\langle g|g'\rangle&=i,\\
\langle f|g\rangle&=\kappa,
&\langle f'|g'\rangle&=-\kappa,\\
\langle f|g'\rangle&=0,
&\langle f'|g\rangle&=0,
\end{aligned}
$$

with

$$
\kappa=\frac2{\sqrt{(1-\mu_+)(\mu_--1)}}.
$$

The within-wedge imaginary parts give the exact symplectic normalization; all cross-wedge products are real.

# Finite CHSH sum and ordered limit

Alice takes $(S_p(f),S_p(f'))$, while Bob takes the normalized sum and difference of $(S_p(g),S_p(g'))$. The CHSH operator reduces to

$$
\mathcal C=\sqrt2\bigl[S_p(f)S_p(g)+S_p(f')S_p(g')\bigr].
$$

The vacuum correlator is the finite double sum

$$
\begin{aligned}
E_p(\lambda,d)
=\frac12\sum_{m,n\in M}c_mc_n\bigg[&
e^{-\frac{\alpha^2}{2}(m^2\nu_A+n^2\nu_B+2mn\kappa)}\\
&+e^{-\frac{\alpha^2}{2}(m^2\nu_A+n^2\nu_B-2mn\kappa)}\bigg],
\end{aligned}
$$

and

$$
\langle\mathcal C\rangle=2\sqrt2\,E_p(\lambda,d).
$$

Set $x=2\pi\omega_0$, $d=r\omega_0$, $0<r<1$, and let $x\downarrow0$. With $u=1-\mu_+$ and $v=\mu_--1$, the cancellation-sensitive exponent has the exact stable form

$$
m^2\nu_A+n^2\nu_B-2mn\kappa
=2\left(\frac m{\sqrt u}-\frac n{\sqrt v}\right)^2+n^2-m^2.
$$

It tends to zero for $m=n$, diverges for $m\neq n$, and the positive-cross-term exponent always diverges. Hence, for every fixed polynomial,

$$
\lim_{\substack{\omega_0\downarrow0\\d=r\omega_0}}
\langle\mathcal C\rangle
=\sqrt2\sum_{m\in M}c_m^2.
$$

For the normalized Fejér approximants $p_L$, $\|p_L\|_\infty=1$ and

$$
\sum_{k=0}^{L-1}c_{k,L}^2<2,
\qquad
\sum_{k=0}^{L-1}c_{k,L}^2\longrightarrow2.
$$

Thus the ordered modular-concentration and degree limits approach $2\sqrt2$, but no finite continuous odd-harmonic polynomial attains the supremum. The convergence is in vacuum mean square, not operator norm.

# Independent checks

## Checked

- Mathematica maximization gives $\|p_{\rm six}\|_\infty=1$.
- Direct evaluation gives $2.1488540073400457$ at $(\lambda,d)=(0.99,0.001)$ and $2.1749324921826378$ at $(0.999,10^{-4})$, matching the manuscript.
- Reconstructing the normalized Fejér coefficients and the exact finite double sum gives (2.2911615070131765), (2.4886420495020146), (2.5808459642825175), and (2.668935401331259) for (L=5,10,16,32) at ((0.999,10^{-4})), matching Table I.
- For $L=256$, $(\lambda,d)=(0.99999,10^{-6})$, the exact sum gives $2.8002741385494852$; the fixed-polynomial spectral limit gives $2.8017677455206161$.
- Mathematica reduces the residual of the stable exponent identity to exactly zero for (u,v>0).
- The small-(x) expansion of the diagonal exponent is

  $$
  \nu_A+\nu_B-2\kappa
  =\frac{(3+r^2)^2}{18}x+O(x^2)
  =2\left(\frac12+\frac{r^2}{6}\right)^2x+O(x^2),
  $$

  matching Appendix B.
- The PDF was rendered at the central formula and Fejér-appendix pages; equations, labels, and the coefficient bounds are visually consistent with the TeX source.

## Source-derived

- The identification of the fixed-point spaces of $s$ and $s^\dagger$ with the right/left wedge standard subspaces uses Bisognano--Wichmann and modular-localization theorems.
- The statement that compactly supported spacetime smearings are dense in the wedge standard subspace and preserve a strict violation after symplectic renormalization uses cited one-particle localization results plus strong continuity of the Weyl representation.
- The type-$\mathrm{III}_1$ interpretation of the modular zero-frequency limit uses the Summers--Werner framework.

## Blocked

- No independent proof of the Bisognano--Wichmann theorem, wedge duality, or the cited density theorem was attempted; these are imported functional-analytic inputs.
- The authors provide no explicit compactly supported spacetime test functions or convergence rate from such functions to the boost-spectral packet, so the operational localization approximation cannot be numerically replayed from the submission.

## Not independently verified

- The general measurement-scheme claim for every local observable and the type-$\mathrm{III}_1$ characterization were checked only at the level of the manuscript's cited source chain, not reproved.

# Translation to the vault's gluing language

1. The vectors (f,f') and (g,g') are one-particle directions in the **connected global representation**. They are not independent regional oscillators and do not define a sharp product-Fock factorization.
2. The parameter $d>0$ regulates boost frequency, not the spatial cut. Every finite $d$ gives a normalizable packet; the large Bell value requires $\omega_0,d\to0$ with diverging one-particle norms.
3. “Finite Weyl polynomial” means finite harmonic support of each bounded observable. It does not make the underlying field theory, modular subspace, or regional phase space finite-dimensional.
4. Complementary-wedge commutativity is a local-algebra statement. It does not supply characteristic Goursat data, a corner compatibility condition, or the dynamical response map needed for causal-complement gluing.
5. The common-Gaussian obstruction is useful for the continuum-limit program: restricting all final observables to functions of single quadratures can erase Bell nonclassicality even though the quasifree state retains cross-region covariance. Noncommuting Weyl directions are essential data.

# Reading recommendation

Read Sections III--V and Appendices A--B first. Appendix C is the reusable finite-polynomial lemma. For the current Rindler/gluing project, the most important boundary is the distinction between an exact global modular-localization construction and an actual regional canonical composition theorem.
