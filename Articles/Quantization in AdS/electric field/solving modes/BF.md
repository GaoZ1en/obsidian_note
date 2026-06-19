---
title: BF
date: 2026-05-21
summary: "Field-strength first-order formulation of Maxwell theory in AdS3, with a Lagrange multiplier imposing the Bianchi identity and yielding the dual scalar phase space."
---

# CPS formalism

The goal is to describe the bulk dof sector directly in terms of the gauge-invariant field strength. Let $F$ be an independent two-form. We impose the Bianchi identity with a scalar Lagrange multiplier $\lambda$:

$$\begin{align}
S[F,\lambda]&=\int_M\left(-\frac{1}{2}F\wedge *F+\lambda\,\mathrm{d}F\right).
\end{align}$$

In this note the spatial-boundary and corner contributions in the symplectic potential is set to zero.

The variation of the action is

$$\begin{align}
\delta S & =\int _{M}-\delta F\wedge \star F+\delta \lambda \mathrm{d}F+\lambda \mathrm{d}\delta F \\
 & =\int _{M}(\delta \lambda \mathrm{d}F-(\star F+\mathrm{d}\lambda)\wedge \delta F)+\int _{\Sigma _{f}-\Sigma _{i}}\lambda \delta F
\end{align}$$

Therefore the equations of motion are

$$\begin{align}
\mathrm{d}F&=0,\\
*F+\mathrm{d}\lambda&=0\iff F=\star \mathrm{d}\lambda \\
\implies \mathrm{d}\star \mathrm{d}\lambda & =0 \iff \nabla ^{2}\lambda=0
\end{align}$$

Thus the first-order field-strength formulation is locally equivalent to a massless scalar. the symplectic form is given by

$$\begin{align}
\omega & =\int _{\Sigma}\delta \lambda \wedge \delta F \\
 & \approx \int _{\Sigma}\delta \lambda \wedge \star \mathrm{d}\delta \lambda
\end{align}$$

# Normal modes

Take

$$\begin{align}
\lambda_{n,m}&=N_{n,m}e^{-i\omega_{n,m}t}e^{im\phi}r^{|m|}(1+r^2)^{-(|m|+2)/2}P_n^{(1,|m|)}\left(\frac{r^2-1}{r^2+1}\right),
\end{align}$$

where

$$\begin{align}
\omega_{n,m}&=2n+2+|m|,&n&=0,1,2,\ldots,&m&\in\mathbb{Z}.
\end{align}$$

These are the regular normalizable massless-scalar modes in global AdS3. these modes are normalized by the symplectic form as

$$\begin{align}
\omega[\lambda,\lambda ^{*}]=-i \\
\implies N_{n,m} & =\sqrt{ \frac{n+|m|+1}{2\pi(n+1)} }
\end{align}$$
