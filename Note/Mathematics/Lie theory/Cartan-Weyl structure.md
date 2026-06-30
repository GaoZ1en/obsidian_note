---
title: Cartan-Weyl Structure
date: 2026-07-01
summary: "Core Cartan-Weyl structures for semisimple Lie algebras: Cartan data, roots, coroots, positive roots, and highest weights."
---

# Cartan-Weyl Structure

## Structural Data

For a complex semisimple Lie algebra, the Cartan-Weyl description is organized by:

- a Cartan subalgebra $\mathfrak h$;
- simultaneous eigenspaces under $\mathfrak h$;
- the root system $\Phi$;
- a choice of positive roots $\Phi^+$;
- simple roots $\alpha_i$;
- coroots and fundamental weights;
- highest weights for finite-dimensional irreducible representations.

## Root Space Decomposition

A root vector $E_\alpha$ satisfies

$$
\begin{align}
[H,E_\alpha]=\alpha(H)E_\alpha,\qquad H\in\mathfrak h.
\end{align}
$$

The Lie algebra decomposes as

$$
\begin{align}
\mathfrak g=\mathfrak h\oplus\bigoplus_{\alpha\in\Phi}\mathfrak g_\alpha.
\end{align}
$$

For semisimple complex Lie algebras, each root space is one-dimensional.

## Coroots, Fundamental Weights, Dynkin Labels

The coroot is

$$
\begin{align}
\alpha^\vee=\frac{2\alpha}{(\alpha,\alpha)}.
\end{align}
$$

Fundamental weights are defined by

$$
\begin{align}
\langle \alpha_i^\vee,\omega_j\rangle=\delta_{ij}.
\end{align}
$$

If

$$
\begin{align}
\lambda=\sum_i a_i\omega_i,\qquad a_i\in\mathbb Z_{\ge0},
\end{align}
$$

then $(a_1,\ldots,a_r)$ is the Dynkin label of the highest weight representation $V_\lambda$.

## Cartan Matrix

One common convention is

$$
\begin{align}
A_{ij}=\langle \alpha_i^\vee,\alpha_j\rangle.
\end{align}
$$

Then simple roots are read from columns:

$$
\begin{align}
\alpha_j=\sum_i A_{ij}\omega_i.
\end{align}
$$

Some references use the transpose convention. Always check this before drawing lowering arrows in Dynkin coordinates.

## Highest Weights

Dominant integral weights label finite-dimensional irreducible representations. A highest weight $\lambda$ is usually written in fundamental weights,

$$
\begin{align}
\lambda=\sum_i m_i\omega_i,\qquad m_i\in\mathbb Z_{\ge0}.
\end{align}
$$

The remaining weights lie below $\lambda$ by sums of positive roots. Multiplicities record how many independent vectors carry the same weight.
