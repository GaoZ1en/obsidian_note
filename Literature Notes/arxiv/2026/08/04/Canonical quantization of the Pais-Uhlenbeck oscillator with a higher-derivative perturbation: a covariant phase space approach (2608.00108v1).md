---
paper id: 2608.00108v1
title: "Canonical quantization of the Pais-Uhlenbeck oscillator with a higher-derivative perturbation: a covariant phase space approach"
authors:
  - Jie-qiang Wu
  - Jinan Zhao
publication date: 2026-07-31T07:50
abstract: |-
  The paper treats the acceleration-squared term in the Pais--Uhlenbeck oscillator perturbatively, pulls the covariant symplectic form back to the resulting low-energy solution space, and quantizes that two-dimensional slow sector. The energy spectrum and unequal-time commutator agree through the displayed orders with the slow-branch expansion of the exact higher-derivative theory.
comments: "15 pages"
url: https://arxiv.org/abs/2608.00108v1
summary: "A finite-dimensional CPS benchmark for selecting and quantizing a perturbatively regular branch of a higher-derivative theory."
tags: []
---

Back to [[2026_08_04_overview]].

The transferable point is not that the exact Pais--Uhlenbeck ghost disappears. The exact nondegenerate theory still has a four-dimensional solution space and an unbounded Ostrogradsky Hamiltonian. The paper instead chooses the branch that remains regular as the higher-derivative coupling is removed, pulls the full CPS data back to that two-dimensional perturbative solution space, and quantizes the pullback.

# Higher-Derivative Oscillator and Its Exact Branches

The model is

$$\begin{align}
L=\left(\frac12\dot x^2-\frac{\omega^2}{2}x^2-\frac{\lambda}{2}\ddot x^2\right)dt, \qquad \omega>0, \qquad \lambda\omega^2\ll1. \tag{2.1}
\end{align}$$

For $\lambda>0$, the highest-derivative Hessian is nonzero. The Ostrogradsky variables are

$$\begin{align}
X_1=x, \qquad P_1=\dot x+\lambda\dddot x, \qquad X_2=\dot x, \qquad P_2=-\lambda\ddot x, \tag{3.1--3.2}
\end{align}$$

and the Legendre transform gives

$$\begin{align}
H_{\mathrm{Os}} =P_1X_2-\frac{P_2^2}{2\lambda}-\frac{X_2^2}{2} +\frac{\omega^2X_1^2}{2}. \tag{3.3}
\end{align}$$

This canonical chart is singular at $\lambda=0$, which is why the perturbative construction cannot be identified with a smooth restriction of the Ostrogradsky coordinates at that point.

The equation of motion is

$$\begin{align}
\lambda x^{(4)}+\ddot x+\omega^2x=0, \tag{3.4}
\end{align}$$

with frequencies

$$\begin{align}
f_\pm =\sqrt{\frac{1\mp\sqrt{1-4\lambda\omega^2}}{2\lambda}}. \tag{3.6}
\end{align}$$

Reality requires $1-4\lambda\omega^2\ge0$. The exact Hamiltonian separates as

$$\begin{align}
H =f_+\left(a_+^\dagger a_++\frac12\right) -f_-\left(a_-^\dagger a_-+\frac12\right). \tag{3.11}
\end{align}$$

Thus the fast branch is the negative-energy branch; it is not removed from the exact theory. The branch regular at $\lambda\to0$ has

$$\begin{align}
f_+ =\omega\left(1+\frac12\lambda\omega^2 +\frac78\lambda^2\omega^4\right)+O(\lambda^3). \tag{3.14}
\end{align}$$

The exact slow contribution to the unequal-time commutator is

$$\begin{align}
[x(t_1),x(t_2)]_{\mathrm{slow}} =-\frac{i\sin[f_+(t_1-t_2)]} {f_+\sqrt{1-4\lambda\omega^2}}. \tag{3.13, slow branch}
\end{align}$$

Its expansion through first order is

$$
\begin{aligned}
[x(t_1),x(t_2)]_{\mathrm{slow}}
={}&-\frac{i}{\omega}\left(1+\frac32\lambda\omega^2\right)
\sin[\omega(t_1-t_2)]\\
&-\frac{i}{2}\lambda\omega^2(t_1-t_2)
\cos[\omega(t_1-t_2)]+O(\lambda^2).
\end{aligned}
\tag{3.16}
$$

# CPS Data Before the Slow-Sector Pullback

Varying the higher-derivative action gives

$$\begin{align}
\delta L =-\left(\lambda x^{(4)}+\ddot x+\omega^2x\right)\delta x\,dt +d\Theta,
\end{align}$$

with

$$\begin{align}
\Theta =(\dot x+\lambda\dddot x)\delta x -\lambda\ddot x\,\delta\dot x. \tag{4.2}
\end{align}$$

Consequently,

$$\begin{align}
\Omega=\delta\Theta =(\delta\dot x+\lambda\delta\dddot x)\wedge\delta x -\lambda\delta\ddot x\wedge\delta\dot x. \tag{4.3}
\end{align}$$

For time translations, the conserved Hamiltonian is

$$\begin{align}
H_\xi =\frac12\omega^2x^2+\frac12\dot x^2 -\frac{\lambda}{2}\ddot x^2 +\lambda\dot x\dddot x. \tag{4.4}
\end{align}$$

On the full nondegenerate solution space, Appendix A identifies

$$\begin{align}
\Theta=\sum_{i=1}^{N}P_i\delta Q_i, \qquad \Omega=\sum_{i=1}^{N}\delta P_i\wedge\delta Q_i, \qquad H_{\mathrm{CPS}}=H_{\mathrm{Os}}. \tag{A.8--A.11}
\end{align}$$

This equivalence does not select the slow branch; that is a separate perturbative choice.

# Perturbative Slow Solution Space

Write

$$\begin{align}
x=x_0+\lambda x_1+\lambda^2x_2+O(\lambda^3), \qquad x_0=\frac{ae^{-i\omega t}+a^\dagger e^{i\omega t}} {\sqrt{2\omega}}. \tag{4.5--4.6}
\end{align}$$

The successive equations are

$$\begin{align}
\ddot x_1+\omega^2x_1=-x_0^{(4)}, \qquad \ddot x_2+\omega^2x_2=-x_1^{(4)}.
\end{align}$$

The homogeneous pieces are chosen so that the final coordinates $a,a^\dagger$ have the standard oscillator normalization. The paper's solutions are

$$\begin{align}
x_1 =\frac34\omega^2x_0 +\frac12\omega^2t\dot x_0, \tag{4.8}
\end{align}$$

$$\begin{align}
x_2 =\frac{61}{32}\omega^4x_0 +\frac54\omega^4t\dot x_0 -\frac18\omega^6t^2x_0. \tag{4.11}
\end{align}$$

The secular terms make this local expansion valid only within

$$\begin{align}
|t|\ll(\lambda\omega^3)^{-1}.
\end{align}$$

This is an important claim boundary: the perturbative coordinates do not give a uniform-in-time approximation to the exact slow oscillation.

# Pullback, Quantization, and Exact-Branch Agreement

Let $\iota_{\mathrm{slow}}$ denote the perturbative embedding of the two-dimensional slow solution space into the jet data of the full theory. Substitution gives

$$\begin{align}
\iota_{\mathrm{slow}}^*\Omega =-i\,\delta a\wedge\delta a^\dagger+O(\lambda^3). \tag{4.13}
\end{align}$$

Inverting this form gives

$$\begin{align}
[a,a^\dagger]=1. \tag{4.14}
\end{align}$$

The pulled-back Hamiltonian is

$$\begin{align}
\iota_{\mathrm{slow}}^*H =\omega\left(1+\frac12\lambda\omega^2 +\frac78\lambda^2\omega^4\right) \left(a^\dagger a+\frac12\right)+O(\lambda^3), \tag{4.15}
\end{align}$$

and the perturbative commutator reproduces Eq. (3.16). The agreement establishes a finite-dimensional claim:

$$\begin{align}
\text{exact slow branch} \quad\Longleftrightarrow\quad \text{CPS pullback through the displayed perturbative orders}.
\end{align}$$

It does not establish ghost freedom of the complete exact theory, a constrained reduction, or a field-theory continuum statement.

# Translation to Field-Theory and AdS Use

Mode by mode, the reusable route is

$$\begin{align}
L_{\mathrm{higher\ derivative}} \longrightarrow(\Theta,\Omega,H)_{\mathrm{full}} \longrightarrow\iota_{\mathrm{regular}}^*(\Omega,H) \longrightarrow\text{quantize the regular branch}.
\end{align}$$

For an AdS field theory, four additional ingredients would be required:

1. a boundary condition that makes the symplectic flux vanish or specifies its boundary completion;
2. a complete mode basis and an inner product compatible with the slow/fast split;
3. control of whether order reduction commutes with the boundary condition and with taking the continuum limit;
4. a statement of the achieved tier: equality of finite-mode symplectic data is weaker than equality of fields, correlators, Fock representations, or interacting theories.

The paper is therefore best used as a finite-mode CPS benchmark for order reduction, not as evidence that CPS alone resolves higher-derivative instabilities.

# Verification Note

## Checked

- **Mathematica:** higher-derivative Euler--Lagrange variation of Eq. (2.1) returned
  $-\omega^2x-\ddot x-\lambda x^{(4)}$, and its boundary coefficients returned
  $\dot x+\lambda\dddot x$ and $-\lambda\ddot x$. This reproduces Eqs. (3.4), (4.2), and (4.3).
- **Mathematica:** expansion of the exact root $f_+$ reproduced
  $\omega+\lambda\omega^3/2+7\lambda^2\omega^5/8$, Eq. (3.14).
- **Mathematica:** direct substitution of Eqs. (4.8) and (4.11) gave zero residual in both perturbative equations.
- **Mathematica:** using real solution coordinates
  $x_0=A\cos\omega t+B\sin\omega t$, the pullback of Eq. (4.3) was exactly
  $-\omega\,\delta A\wedge\delta B+O(\lambda^3)$; both the $O(\lambda)$ and $O(\lambda^2)$ corrections cancel. This is Eq. (4.13) after the paper's complex normalization.
- **Mathematica:** the pulled-back Hamiltonian at $t=0$ was

$$\begin{align}
\frac12\omega^2(A^2+B^2) \left(1+\frac12\lambda\omega^2+\frac78\lambda^2\omega^4\right),
\end{align}$$

  reproducing the frequency correction in Eq. (4.15).
- **Mathematica:** expanding the exact slow commutator gave Eq. (3.16) with identically zero residual.

## Blocked

- Appendix A's general $N$-derivative proof was inspected but not independently reconstructed for arbitrary $N$; the $N=2$ instance used in the paper is covered by the checks above.
- No field-theory or AdS extension is proved by this oscillator calculation; boundary flux, completeness, correlators, and Fock-space equivalence require separate models.

## Failed or Source Defects

- Eq. (3.10) repeats one cross commutator; one occurrence must have a different pair of operators. This typographical defect does not affect the diagonal algebra used later.
- The definition of $X_\xi$ below Eq. (4.4), and again near Appendix A, contains an undefined $y$. The displayed Hamiltonian was checked directly and does not depend on copying that definition.
- The conclusion's wording that the ghost is not removed by truncation is too strong. The exact fast branch is explicitly discarded before the perturbative solution space is constructed. The verified statement is only that the chosen slow-branch pullback reproduces the exact slow expansion.
