---
title: "4_quantization"
date: 2026-06-10
summary: "Organizes the complete Maxwell mode basis as a Hamiltonian system, fixes the symplectic normalization, and carries out the canonical quantization."
---

# 4. Representing the Hamiltonian system with a proper set of variables

So far, we have reformulated the Maxwell theory as a Hamiltonian system in Section 2, and we have constructed a complete basis of propagating normalizable modes in Section 3. In this section, we use the known mode basis to rewrite the solution space in terms of discrete variables, reduce the symplectic form, and carry out the canonical quantization procedure.

## 4.1 The framework

We begin by summarizing the logic. Let $\{f_{N}^{\mu}(x)\}$ be a complete set of independent positive-frequency solutions in the propagating sector. A real physical solution can then be expanded as

$$\begin{align}
A^{\mu}(x)\big|_{\widetilde{\mathcal{P}}_{\mathrm{osc}}}&=\sum_{N}\left(f_{N}^{\mu}(x)a_{N}+f_{N}^{*\mu}(x)a_{N}^{*}\right).
\end{align}$$

Here $N$ is a collective index. Treating the Fourier coefficients $a_N$ and $a_N^*$ as conjugate coordinates maps the continuous solution space $\widetilde{\mathcal{P}}$ to a discrete set of variables. Substituting the mode expansion into the bilinear symplectic form reduces it to

$$
\Omega\big|_{\widetilde{\mathcal{P}}} =\sum_{N_1, N_2} \Omega[f_{N_1}, f^{*}_{N_2}]\big|_{\widetilde{\mathcal{P}}} \delta a_{N_1} \wedge \delta a^{*}_{N_2}, 
$$

where $\Omega[\cdot,\cdot]|_{\widetilde{\mathcal{P}}}$ denotes the fundamental symplectic pairing integrated over a Cauchy slice.

For the Maxwell theory on global AdS$_3$, the required basis is already known from Section 3. In the rest of this section, we use the Killing symmetries to constrain the symplectic pairing, determine the normalization, and then derive the reduced Hamiltonian system and the quantum oscillator algebra.

## 4.2 Symplectic form

We first establish a selection rule for the symplectic pairing. Consider two arbitrary modes $f_{1}$ and $f_{2}$ that are simultaneous eigenmodes of the Casimir operators and the zero-mode Killing generators:

$$\begin{align}
\mathcal{C}f_{j}&=c_{j}f_{j}, &
\bar{\mathcal{C}}f_{j}&=\bar{c}_{j}f_{j}, \\
\mathcal{L}_{\xi_{0}}f_{j}&=-ih_{j}f_{j}, &
\mathcal{L}_{\bar{\xi}_{0}}f_{j}&=-i\bar{h}_{j}f_{j},
\end{align}$$

where $j\in\{1,2\}$. Killing invariance of the symplectic form implies

$$\begin{align}
\Omega[\mathcal{L}_{\xi}A,B]&=-\Omega[A,\mathcal{L}_{\xi}B].
\end{align}$$

As a consequence, the Casimir operators are symmetric in the symplectic pairing:

$$\begin{align}
\Omega[\mathcal{C}A,B]&=\Omega[A,\mathcal{C}B], &
\Omega[\bar{\mathcal{C}}A,B]&=\Omega[A,\bar{\mathcal{C}}B].
\end{align}$$

Applying these identities to the eigenvalue equations above gives

$$\begin{align}
(c_{1}-c_{2})\Omega[f_{1},f_{2}]&=0, &
(\bar{c}_{1}-\bar{c}_{2})\Omega[f_{1},f_{2}]&=0, \\
(h_{1}+h_{2})\Omega[f_{1},f_{2}]&=0, &
(\bar{h}_{1}+\bar{h}_{2})\Omega[f_{1},f_{2}]&=0.
\end{align}$$

Therefore $\Omega[f_{1},f_{2}]$ can be non-zero only if the two modes have the same Casimir eigenvalues and opposite zero-mode weights. For the physical propagating Maxwell modes, this means that the only non-vanishing pairings are between a mode and its complex conjugate.

Evaluating the symplectic form on the explicit modes of Section 3 then gives

$$\begin{align}
\Omega[A_{nm},A_{n'm'}^{*}]&=-i\delta_{nn'}\delta_{mm'}, &
\Omega[A_{nm},A_{n'm'}]&=0.
\end{align}$$

This is the canonical normalization used already in Section 3. In particular, the overall constants in $\Psi_{nm}$, in the dual-scalar primary $\phi_{0,0}$, and in the descendant normalization are fixed by this symplectic condition.

## 4.3 Hamiltonian system

with the complete mode basis obtained in Section 3

$$\begin{align}
A^{\mu}(x) & =\sum ^{\infty}_{n=0}\sum ^{\infty}_{m=-\infty}\left(a_{nm}A^{\mu}_{nm}(x)+a^{*}_{nm}A^{\mu *}_{nm}(x)\right)
\end{align}$$

Substituting the mode expansion into the symplectic form gives the reduced symplectic structure on the oscillator variables:

$$\begin{align}
\omega\big|_{\widetilde{\mathcal{P}}}&=-i\sum_{n=0}^{\infty}\sum_{m\in\mathbb{Z}}\delta a_{nm}\wedge\delta a_{nm}^{*}.
\end{align}$$

Because this form is non-degenerate, the propagating Maxwell sector is a direct product of uncoupled oscillator pairs. The Hamiltonian vector fields are defined by

$$\begin{align}
X_{F}\cdot\Omega\big|_{\widetilde{\mathcal{P}}_{\mathrm{osc}}}&=-\delta F.
\end{align}$$

Applying this to the basic coordinates gives

$$\begin{align}
X_{a_{nm}}&=i\frac{\delta}{\delta a_{nm}^{*}}, &
X_{a_{nm}^{*}}&=-i\frac{\delta}{\delta a_{nm}}.
\end{align}$$

The Poisson brackets then take the canonical form

$$\begin{align}
\{a_{nm},a_{n'm'}^{*}\}&=-i\delta_{nn'}\delta_{mm'}.
\end{align}$$

All remaining brackets vanish. Thus the covariant phase space has been rewritten as an ordinary Hamiltonian system with discrete variables.

## 4.4 The Noether charges of the Killing symmetries

We now evaluate the Noether charges on the propagating oscillator sector. The Killing generators act diagonally on the mode labels, but for later applications it is most convenient to record directly the charges associated with time translations and rotations.

Since each temporal-gauge mode carries the factor $e^{-i\omega_{nm}t}e^{im\phi}$, one has

$$\begin{align}
\mathcal{L}_{\partial_{t}}A_{nm}^{\mu}&=-i\omega_{nm}A_{nm}^{\mu}, &
\mathcal{L}_{\partial_{\phi}}A_{nm}^{\mu}&=im\,A_{nm}^{\mu}.
\end{align}$$

Using the Noether-charge formula of Section 2,

$$\begin{align}
H_{\xi}[A]&=-\frac{1}{2}\Omega[\mathcal{L}_{\xi}A,A],
\end{align}$$

we obtain the diagonal oscillator expressions

$$\begin{align}
H&\equiv H_{\partial_{t}}=\sum_{n=0}^{\infty}\sum_{m\in\mathbb{Z}}\omega_{nm}a_{nm}^{*}a_{nm}, \\
J&\equiv H_{\partial_{\phi}}=\sum_{n=0}^{\infty}\sum_{m\in\mathbb{Z}}m\,a_{nm}^{*}a_{nm}.
\end{align}$$

These are the only Killing charges needed in the later applications. The remaining Killing generators act non-diagonally on the mode basis and therefore give bilinear expressions that mix neighboring modes.

## 4.5 Canonical quantization

The reduced Hamiltonian system now has the standard oscillator form. We quantize it by promoting the classical coefficients to operators,

$$\begin{align}
a_{nm}&\mapsto\hat{a}_{nm}, &
a_{nm}^{*}&\mapsto\hat{a}_{nm}^{\dagger},
\end{align}$$

and replacing Poisson brackets by commutators:

$$\begin{align}
[\hat{a}_{nm},\hat{a}_{n'm'}^{\dagger}]&=\delta_{nn'}\delta_{mm'}.
\end{align}$$

The Fock vacuum is defined by

$$\begin{align}
\hat{a}_{nm}\ket{0}&=0, &
n&\in\mathbb{N}, &
m&\in\mathbb{Z}.
\end{align}$$

The propagating Hilbert space is generated by repeated action of the creation operators $\hat{a}_{nm}^{\dagger}$ on $\ket{0}$. After normal ordering, the Hamiltonian and angular momentum operators are

$$\begin{align}
\hat{H}&=\sum_{n=0}^{\infty}\sum_{m\in\mathbb{Z}}\omega_{nm}\hat{a}_{nm}^{\dagger}\hat{a}_{nm}, \\
\hat{J}&=\sum_{n=0}^{\infty}\sum_{m\in\mathbb{Z}}m\,\hat{a}_{nm}^{\dagger}\hat{a}_{nm}.
\end{align}$$

Thus the propagating Maxwell sector is quantized as a collection of independent bosonic oscillators.
