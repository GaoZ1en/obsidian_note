---
title: Scalar TTbar calculation check
date: 2026-05-21
summary: "Checks the calculations and typographical issues in scalar TTbar.pdf, with emphasis on normalization consistency, first-order conserved currents, Poisson brackets, and the symplectic form."
---

# Scalar TTbar Calculation Check

Source checked: `scalar TTbar.pdf`.

## Executive summary

Most of the first-order algebra in Sections 3 and 4 is internally consistent once the convention

$$\begin{align}
x^\pm=t\pm x,\qquad \partial_\pm=\frac{1}{2}(\partial_t\pm\partial_x),\qquad
a=\partial_+\phi,\qquad b=\partial_-\phi,\qquad L_0=\frac{1}{2}ab
\end{align}$$

is imposed. The main problems are not in the later first-order manipulations, but in normalization consistency and presentation:

- Section 2 uses two incompatible normalizations for $L_0$ and $F$.
- The sign convention for the conserved charge density is stated ambiguously.
- Several displayed equations contain duplicated left-hand sides or small LaTeX/typographical errors.
- Eq. (4.51) has a serious typo: $\pi_0$ should contain $\dot\phi$, not $\phi$.

## Calculation checks

### Section 1: $T\bar T$ flow for $L_\lambda(L_0)$

The stress tensor derivation is correct under the stated convention

$$\begin{align}
\delta S_\lambda=\frac{1}{2}\int d^2x\sqrt{-g}\,T^{(\lambda)}_{\mu\nu}\delta g^{\mu\nu}.
\end{align}$$

The resulting tensor is

$$\begin{align}
T^{(\lambda)}_{\mu\nu} =\frac{\partial L_\lambda}{\partial L_0}\partial_\mu\phi\partial_\nu\phi-g_{\mu\nu}L_\lambda .
\end{align}$$

The determinant identity also checks out:

$$\begin{align}
\det T^{(\lambda)} =L_\lambda^2-2L_0L_\lambda\frac{\partial L_\lambda}{\partial L_0}.
\end{align}$$

For

$$\begin{align}
L_\lambda=\frac{\sqrt{1+4\lambda L_0}-1}{2\lambda},
\end{align}$$

Mathematica gives

$$\begin{align}
\frac{\partial L_\lambda}{\partial\lambda} -\left( L_\lambda^2-2L_0L_\lambda\frac{\partial L_\lambda}{\partial L_0} \right)=0,
\end{align}$$

and

$$\begin{align}
L_\lambda=L_0-\lambda L_0^2+2\lambda^2L_0^3+O(\lambda^3).
\end{align}$$

So the flow equation and the expansion in Section 1 are correct, up to the usual overall sign convention for defining the $T\bar T$ flow.

### Section 2: conserved currents and normalization issue

This section has the main consistency problem.

Early in Section 2 the PDF states

$$\begin{align}
L_0=\partial_+\phi\,\partial_-\phi,\qquad
F=\sqrt{1+4\lambda\partial_+\phi\partial_-\phi}.
\end{align}$$

Later it switches to

$$\begin{align}
L_0=\frac{1}{2}\partial_+\phi\,\partial_-\phi,\qquad
F=\sqrt{1+2\lambda\partial_+\phi\partial_-\phi}.
\end{align}$$

Sections 3 and 4 consistently use the second convention,

$$\begin{align}
L_0=\frac{1}{2}ab,\qquad F=\sqrt{1+4\lambda L_0}=\sqrt{1+2\lambda ab}.
\end{align}$$

Therefore Section 2 should be revised to use this convention throughout. In particular, Eq. (2.10) and Eq. (2.11) are inconsistent with Eq. (2.17), Eq. (2.18), and the rest of the note.

The conservation-law discussion is mathematically fine, but the charge-density sign should be stated once and kept fixed. From

$$\begin{align}
\partial_-J_{+,n}^{(\lambda)}=\partial_+\Theta_{+,n}^{(\lambda)}
\end{align}$$

and $\partial_\pm=\frac{1}{2}(\partial_t\pm\partial_x)$, one obtains

$$\begin{align}
\partial_t(J_{+,n}^{(\lambda)}-\Theta_{+,n}^{(\lambda)}) =\partial_x(J_{+,n}^{(\lambda)}+\Theta_{+,n}^{(\lambda)}).
\end{align}$$

Thus $q=J-\Theta$ is conserved with flux $j=-(J+\Theta)$. The statement that one may equivalently use $J+\Theta$ as the density is not correct without changing the defining conservation equation or chirality convention.

### Section 3.1: first-order deformed currents

With

$$\begin{align}
F^{-1}=1-2\lambda L_0+O(\lambda^2),
\end{align}$$

the first-order equation of motion becomes

$$\begin{align}
\partial_+\partial_-\phi =\lambda\left[\partial_+(L_0b)+\partial_-(L_0a)\right]+O(\lambda^2).
\end{align}$$

Using the leading-order chiral equations inside the order-$\lambda$ terms,

$$\begin{align}
\partial_-a=O(\lambda),\qquad \partial_+b=O(\lambda),
\end{align}$$

one finds

$$\begin{align}
\partial_-a^n =\frac{n\lambda}{2}a^{n-1}b^2\partial_+a +\frac{n\lambda}{2}a^{n+1}\partial_-b +O(\lambda^2).
\end{align}$$

The proposed correction

$$\begin{align}
J_{+,n}^{(1)}=-na^nL_0=-\frac{n}{2}a^{n+1}b
\end{align}$$

cancels the second term, and the remaining term is

$$\begin{align}
\frac{n}{2}a^{n-1}b^2\partial_+a =\partial_+\left(\frac{1}{2}a^nb^2\right)
\end{align}$$

to leading order. Therefore

$$\begin{align}
\Theta_{+,n}^{(1)}=\frac{1}{2}a^nb^2
\end{align}$$

is correct. The minus-sector formula follows by exchanging $a\leftrightarrow b$.

### Section 3.2: first-order charges

Given the density choice $q=J-\Theta$, the first-order plus-sector charge is

$$\begin{align}
Q_{+,n}^{(\lambda)} =\int dx\left[ a^n-\frac{n\lambda}{2}a^{n+1}b-\frac{\lambda}{2}a^nb^2 \right]+O(\lambda^2),
\end{align}$$

and the minus-sector charge is

$$\begin{align}
Q_{-,n}^{(\lambda)} =\int dx\left[ b^n-\frac{n\lambda}{2}ab^{n+1}-\frac{\lambda}{2}a^2b^n \right]+O(\lambda^2).
\end{align}$$

These formulas are correct with the conventions of Sections 3 and 4.

### Section 3.3: conservation check

The conservation proof is correct modulo the flux-sign convention noted above:

$$\begin{align}
\partial_t(J-\Theta)=\partial_x(J+\Theta)
\end{align}$$

implies

$$\begin{align}
\frac{d}{dt}\int dx\,(J-\Theta)=0
\end{align}$$

under periodic boundary conditions or fast falloff. The text should avoid writing this as the standard form $\partial_tq+\partial_xj=0$ unless it defines $j=-(J+\Theta)$.

### Section 3.4: commutativity

The bracket computation checks out, provided $p$ is the deformed canonical momentum and the first-order inversion is used consistently.

With

$$\begin{align}
p=\pi_\lambda,\qquad s=\phi',\qquad
A=2p+\frac{1}{2}s,\qquad B=2p-\frac{1}{2}s,
\end{align}$$

the brackets are

$$\begin{align}
\{A(x),A(y)\}=2\partial_x\delta(x-y),\qquad
\{B(x),B(y)\}=-2\partial_x\delta(x-y),\qquad
\{A(x),B(y)\}=0.
\end{align}$$

The first-order inversion gives

$$\begin{align}
a=A+\lambda C+O(\lambda^2),\qquad
b=B+\lambda C+O(\lambda^2),
\end{align}$$

where

$$\begin{align}
C=\frac{1}{2}p(16p^2-s^2)=\frac{1}{2}AB(A+B).
\end{align}$$

Substituting into the charge densities gives

$$\begin{align}
q_{+,n}^{(\lambda)} =A^n+\lambda\frac{n-1}{2}A^nB^2+O(\lambda^2),
\end{align}$$

and

$$\begin{align}
q_{-,n}^{(\lambda)} =B^n+\lambda\frac{n-1}{2}A^2B^n+O(\lambda^2).
\end{align}$$

The plus, minus, and mixed brackets reduce to total derivatives. The key first-order identities are

$$\begin{align}
\{Q_{+,m}^{(1)},Q_{+,n}^{(0)}\} +\{Q_{+,m}^{(0)},Q_{+,n}^{(1)}\} =mn(n-1)\int dx\,\partial_x(A^{m+n-2}B^2),
\end{align}$$

$$\begin{align}
\{Q_{-,m}^{(1)},Q_{-,n}^{(0)}\} +\{Q_{-,m}^{(0)},Q_{-,n}^{(1)}\} =-mn(n-1)\int dx\,\partial_x(A^2B^{m+n-2}),
\end{align}$$

and

$$\begin{align}
\{Q_{+,m}^{(0)},Q_{-,n}^{(1)}\} +\{Q_{+,m}^{(1)},Q_{-,n}^{(0)}\} =2(n-1)\int dx\,\partial_x(A^mB^n).
\end{align}$$

Thus the conclusion

$$\begin{align}
\{Q_{\sigma,m}^{(\lambda)},Q_{\rho,n}^{(\lambda)}\}=O(\lambda^2)
\end{align}$$

is correct at first order.

### Section 4: symplectic structure

The variation of the first-order action is correct:

$$\begin{align}
L_\lambda=L_0-\lambda L_0^2+O(\lambda^2),
\end{align}$$

and

$$\begin{align}
\delta L_\lambda =\frac{b}{2F}\partial_+\delta\phi+\frac{a}{2F}\partial_-\delta\phi.
\end{align}$$

The symplectic potential components

$$\begin{align}
\theta_\lambda^+=\frac{b}{2F}\delta\phi,\qquad
\theta_\lambda^-=\frac{a}{2F}\delta\phi
\end{align}$$

are also correct.

For equal time,

$$\begin{align}
\theta_\lambda^t =\frac{1}{2}(\theta_\lambda^++\theta_\lambda^-) =\frac{\dot\phi}{4F}\delta\phi.
\end{align}$$

Therefore

$$\begin{align}
\pi_\lambda=\frac{\partial L_\lambda}{\partial\dot\phi} =\frac{\dot\phi}{4F},
\end{align}$$

and

$$\begin{align}
\Omega_\lambda=\int dx\,\delta\pi_\lambda\wedge\delta\phi.
\end{align}$$

The first-order expansion is

$$\begin{align}
\pi_\lambda =\frac{1}{4}\dot\phi-\frac{\lambda}{16}\dot\phi(\dot\phi^2-\phi'^2)+O(\lambda^2).
\end{align}$$

Hence

$$\begin{align}
\Omega_1 =-\frac{1}{16}\int dx\,\delta\left[(\dot\phi^2-\phi'^2)\dot\phi\right]\wedge\delta\phi,
\end{align}$$

and

$$\begin{align}
\delta\left[(\dot\phi^2-\phi'^2)\dot\phi\right] =(3\dot\phi^2-\phi'^2)\delta\dot\phi-2\dot\phi\phi'\delta\phi'.
\end{align}$$

Thus Eq. (4.60)--Eq. (4.63) are correct. Eq. (4.51), however, has a typo and should read

$$\begin{align}
\pi_0=\frac{1}{4}\dot\phi,\qquad
\pi_1=-\frac{1}{2}L_0\dot\phi.
\end{align}$$

## Typo and presentation list

- The title and body alternate between `TTbar`, `T Tbar`, and $T\bar T$. Use one notation consistently, preferably $T\bar T$ in prose and LaTeX.
- Section 1 contains line-break artifacts in the PDF text, such as `correspond-ing`; check the source for discretionary hyphenation artifacts.
- Eq. (1.18) and Eq. (1.19) should end with punctuation.
- Eq. (2.10)--Eq. (2.18): inconsistent normalization of $L_0$ and $F$; this is a mathematical issue, not just a typo.
- Around Eq. (2.33)--Eq. (2.35): the statement that either $J-\Theta$ or $J+\Theta$ may be used as the conserved density is misleading.
- Section title `To First-Order` should be changed to something like `First-Order Analysis`.
- Eq. (3.22) repeats the left-hand side: `J = J = ...`.
- Eq. (3.23) repeats the left-hand side: `Theta = Theta = ...`.
- Eq. (3.24) has an extra comma before the second displayed equality.
- Eq. (3.39) is a sentence fragment: `The symplectic form, ...`.
- Section 4 says `In this chapter`; since this is an article section, use `In this section`.
- Section 4 contains a line-break artifact in `symplec-tic`.
- Eq. (4.51) should be corrected from the garbled `\pi_0=\frac14\phi, \pi \dot 1=...` to

$$\begin{align}
\pi_0=\frac14\dot\phi,\qquad \pi_1=-\frac12L_0\dot\phi.
\end{align}$$

## Recommended fixes before using the draft

1. Choose one light-cone normalization and apply it from Section 2 onward:

$$\begin{align}
L_0=\frac{1}{2}\partial_+\phi\,\partial_-\phi,\qquad
   F=\sqrt{1+2\lambda\partial_+\phi\,\partial_-\phi}.
\end{align}$$

1. Remove the duplicate undeformed-current discussion in Section 2 or merge it into one consistent derivation.
1. Define the conserved density as $q=J-\Theta$ and the flux as $j=-(J+\Theta)$.
1. Fix the duplicated left-hand sides in Eq. (3.22), Eq. (3.23), and Eq. (3.24).
1. Fix Eq. (4.51), since the missing dot on $\phi$ changes the canonical momentum.
