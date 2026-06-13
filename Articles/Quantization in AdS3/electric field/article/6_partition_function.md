---
title: "6_partition_function"
date: 2026-06-13
summary: "Computes the oscillator thermal partition function of the Maxwell theory by the canonical trace."
---

# 6. Application II: The thermal partition function

In this section, we use the canonical quantization obtained in Section 4 to compute the thermal partition function of the Maxwell theory on global AdS$_3$. We only consider the propagating oscillator sector and evaluate the result directly from the operator trace.

## 6.1 Canonical setup

We first recall the data needed for the thermal trace. The normalizable temporal-gauge modes are labelled by

$$\begin{align}
n & \in \mathbb{N}, & m & \in \mathbb{Z},
\end{align}$$

with frequency

$$\begin{align}
\omega_{nm} & =2n+2+|m|.
\end{align}$$

Since each mode carries the factor $e^{-i\omega_{nm}t}e^{im\phi}$, its angular-momentum eigenvalue is

$$\begin{align}
j_{nm} & =m.
\end{align}$$

In Section 4 we found that the normal-ordered Hamiltonian and angular momentum of the propagating sector are

$$\begin{align}
H & =\sum _{n=0}^{\infty}\sum _{m\in \mathbb{Z}}\omega _{nm}\hat{a}^{\dagger}_{nm}\hat{a}_{nm}, \\
J & =\sum _{n=0}^{\infty}\sum _{m\in \mathbb{Z}}m\,\hat{a}^{\dagger}_{nm}\hat{a}_{nm}.
\end{align}$$

Thus the oscillator Hilbert space is a tensor product of independent bosonic modes. Appendix C shows that gauge transformations with $\Lambda=O(r^{0})$ carry vanishing charge and zero symplectic pairing, so they do not contribute additional physical sectors.

## 6.2 The thermal partition function

We now compute the thermal partition function with angular potential,

$$\begin{align}
Z[\beta,\alpha] & =\mathrm{Tr}\left(e^{-\beta H+i\alpha J}\right),
\end{align}$$

where $\beta$ is the inverse temperature and $\alpha$ is the chemical potential conjugate to the angular momentum.

Because the quantum theory has been diagonalized into independent oscillators, the trace factorizes mode by mode. For one mode, with occupation number $N_{nm}\in \mathbb{N}$, we obtain

$$\begin{align}
Z_{nm}[\beta,\alpha] & =\sum _{N_{nm}=0}^{\infty}e^{-N_{nm}(\beta \omega_{nm}-i\alpha m)} \\
 & =\frac{1}{1-e^{-\beta \omega_{nm}+i\alpha m}}.
\end{align}$$

Therefore the full oscillator partition function is

$$\begin{align}
Z[\beta,\alpha] & =\prod _{n=0}^{\infty}\prod _{m\in \mathbb{Z}}\frac{1}{1-e^{-\beta(2n+2+|m|)+i\alpha m}}.
\end{align}$$

It is convenient to introduce

$$\begin{align}
q & =e^{-\beta-i\alpha}, & \bar{q} & =e^{-\beta+i\alpha}.
\end{align}$$

by introducing

$$\begin{align}
k & =n+\max(-m,0),  & \bar{k}=n+\max(m,0)
\end{align}$$

the partition function takes the compact form

$$\begin{align}
Z[\beta,\alpha] & =\prod _{h=1}^{\infty}\prod _{\bar{h}=1}^{\infty}\frac{1}{1-q^{h}\bar{q}^{\bar{h}}}.
\end{align}$$

This is the canonical thermal partition function of the propagating Maxwell oscillators.
