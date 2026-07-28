---
paper id: 2607.23760v1
title: The extremal Reissner-Nordström throat from non extremal near horizon expansions
authors:
  - Anirudhda Shinde
  - Mangesh Mandlik
publication date: 2026-07-26T17:13
abstract: |-
  A fixed-nonextremality near-horizon expansion of Reissner--Nordström loses the quadratic radial term needed for the AdS2 throat. A double scaling in the distance from the outer horizon and the separation of the two horizons regrades the expansion: second order suffices in ingoing Eddington--Finkelstein coordinates, while the static radial coefficient requires an all-order resummation.
comments: "23 pages"
url: https://arxiv.org/abs/2607.23760v1
summary: "A transparent example of noncommuting near-horizon and extremal limits, useful for Carrollian expansion bookkeeping."
tags: []
---

[[2026_07_28_overview|Back to the 2026-07-28 arXiv overview]]

The transferable mechanism is a regrading problem. A term that is second order in a near-horizon expansion at fixed nonextremality becomes leading when the horizon separation is scaled to zero at the same rate.

# Two small quantities in Reissner--Nordström

For

\[
ds^2=-f(r)dt^2+\frac{dr^2}{f(r)}+r^2d\Omega_2^2,
\]

\[
f(r)=\frac{(r-r_+)(r-r_-)}{r^2},
\]

introduce

\[
\delta:=r_+-r_-,
\qquad
x:=r-r_+.
\]

Then

\[
\boxed{
f(r)=\frac{x(x+\delta)}{(r_++x)^2},
\qquad
x(x+\delta)=x\delta+x^2.
}
\tag{2.8--2.9}
\]

At fixed \(\delta\) and \(x=\epsilon R\),

\[
x\delta=O(\epsilon),
\qquad
x^2=O(\epsilon^2).
\]

The ordinary nonextremal near-horizon expansion is therefore justified in discarding \(x^2\) at first order. But that ordering ceases to be uniform as \(\delta\to0\).

# First-order Eddington--Finkelstein expansion

In ingoing coordinates

\[
v=t+r^\star,
\qquad
\frac{dr^\star}{dr}=\frac1{f(r)},
\]

the metric is regular at the future horizon:

\[
ds^2=-f(r)dv^2+2dv\,dr+r^2d\Omega_2^2.
\]

With \(x=\epsilon R\), the fixed-\(\delta\) first-order expansion is

\[
\begin{aligned}
ds^2
=r_+^2d\Omega_2^2
+\epsilon\Big[
&-\frac{R\delta}{r_+^2}dv^2
+2dv\,dR\\
&+2r_+R\,d\Omega_2^2
\Big]
+O(\epsilon^2).
\end{aligned}
\tag{3.8}
\]

This has the String Carroll organization: the transverse sphere is leading and the longitudinal Rindler sector is subleading.

Now impose the near-extremal double scaling

\[
\delta=\epsilon a,
\qquad
v=\frac{V}{\epsilon},
\qquad
r_\pm=r_0\pm\frac{\epsilon a}{2}.
\tag{3.13--3.15}
\]

The first-order truncation gives

\[
ds^2_{\rm first}
=r_0^2d\Omega_2^2
+2dV\,dR
-\frac{aR}{r_0^2}dV^2.
\tag{3.20}
\]

Writing the two-dimensional part as

\[
ds_2^2=-F_1(R)dV^2+2dV\,dR,
\qquad
F_1(R)=\frac{aR}{r_0^2},
\]

its scalar curvature is

\[
\mathcal R^{(2)}=-F_1''(R)=0.
\]

Thus even the correct time blow-up leaves a Rindler sector if the expansion was truncated before the regrading.

# Why the discarded term becomes leading

Under

\[
x=\epsilon R,\qquad
\delta=\epsilon a,
\]

both pieces in the exact numerator have the same order:

\[
x\delta=\epsilon^2aR,
\qquad
x^2=\epsilon^2R^2.
\]

The missing \(R^2\) term is not a small correction in the scaled throat. It supplies the second derivative of the blackening factor and hence the negative constant curvature.

# Second order and the Lorentzian throat

Keeping the nonextremal Eddington--Finkelstein expansion through second order before scaling gives

\[
\begin{aligned}
ds^2={}&r_+^2d\Omega_2^2\\
&+\epsilon\left[
-\frac{R\delta}{r_+^2}dv^2
+2dv\,dR
+2r_+R\,d\Omega_2^2
\right]\\
&+\epsilon^2\left[
-R^2\left(
\frac1{r_+^2}-\frac{2\delta}{r_+^3}
\right)dv^2
+R^2d\Omega_2^2
\right]
+O(\epsilon^3).
\end{aligned}
\tag{3.27}
\]

After \(\delta=\epsilon a\) and \(v=V/\epsilon\), the second-order temporal term survives. The finite metric is

\[
\boxed{
ds^2
=
-\frac{R(R+a)}{r_0^2}dV^2
+2dV\,dR
+r_0^2d\Omega_2^2.
}
\tag{3.35}
\]

For

\[
F_e(R)=\frac{R(R+a)}{r_0^2},
\]

\[
\mathcal R^{(2)}
=-F_e''(R)
=-\frac{2}{r_0^2}.
\]

The longitudinal geometry is therefore locally \(AdS_2\), and the full limit is \(AdS_2\times S^2\). The parameter \(a=\delta/\epsilon\) remembers finite nonextremality inside the blown-up throat; setting \(a=0\) gives coincident scaled horizons.

Removing the Eddington--Finkelstein cross term gives

\[
ds^2
=
-\frac{R(R+a)}{r_0^2}dT^2
+\frac{r_0^2}{R(R+a)}dR^2
+r_0^2d\Omega_2^2.
\tag{3.40}
\]

With \(y=1+2R/a\), its two-dimensional factor becomes the standard AdS\(_2\) black-hole patch.

# Why static coordinates require all orders

In static coordinates, the exact scaled radial coefficient contains

\[
\epsilon\,
\frac{(r_++\epsilon R)^2}
{R(\delta+\epsilon R)}\,dR^2.
\]

At fixed \(\delta\), expanding

\[
\frac1{\delta+\epsilon R}
=
\frac1\delta
\left(
1-\frac{\epsilon R}{\delta}
+\frac{\epsilon^2R^2}{\delta^2}
-\cdots
\right)
\]

is legitimate. But after \(\delta=\epsilon a\), every term in that geometric series contributes at the same scaled order. A second-order truncation recovers the correct

\[
g_{TT}
=-\frac{R(R+a)}{r_0^2},
\]

but only

\[
g_{RR}^{(1+2)}
=
\frac{r_0^2}{aR}
-\frac{r_0^2}{a^2},
\]

whereas the throat requires

\[
\frac{r_0^2}{R(R+a)}
=
\frac{r_0^2}{aR}
\left(
1-\frac{R}{a}
+\frac{R^2}{a^2}
-\cdots
\right).
\]

The difference is coordinate-sensitive bookkeeping, not a geometric disagreement: regular ingoing coordinates expose the required throat at second order, while the singular static radial component hides it across the entire fixed-\(\delta\) series.

# Use for Carrollian and boundary expansions

The lesson is to test uniformity before exchanging:

\[
\text{near-boundary or near-horizon expansion}
\quad\text{and}\quad
\text{degeneration of background parameters}.
\]

When a coefficient such as surface gravity also tends to zero, nominal orders can mix. For null-boundary work, this is a concrete warning that the extremal limit of Carrollian data may require subleading tensors or a resummed radial gauge.

The paper does not construct a null-boundary phase space, symplectic form, or charge algebra. Its relevance is methodological: it isolates precisely which expansion coefficient restores the throat.

# Verification note

- The exact RN factorization, the fixed-\(\delta\) expansion, both scalings, and the static-coordinate resummation were checked against the full source and rendered static-coordinate pages.
- **Mathematica:** expanding
  \[
  f=\frac{\epsilon R(\epsilon R+\delta)}
  {(r_++\epsilon R)^2}
  \]
  at fixed \(\delta\), then substituting \(\delta=\epsilon a\), reproduces the loss of the \(R^2\) term; scaling the exact expression first yields \(R(R+a)/r_0^2\).
- **Mathematica:** the exact Eddington--Finkelstein double-scaling limit gives Eq. (3.35), and
  \[
  -F_e''(R)=-2/r_0^2
  \]
  exactly.
- No independent check of the paper’s broader String Carroll interpretation or its cited comparison literature was performed.
