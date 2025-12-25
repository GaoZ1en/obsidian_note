---
paper id: 1909.08775v3
title: "Anomaly Inflow and the $η$-Invariant"
authors: Edward Witten, Kazuya Yonekura
publication date: 2019-09-19T02:07:08Z
abstract: "Perturbative fermion anomalies in spacetime dimension $d$ have a well-known relation to Chern-Simons functions in dimension $D=d+1$. This relationship is manifested in a beautiful way in 'anomaly inflow' from the bulk of a system to its boundary. Along with perturbative anomalies, fermions also have global or nonperturbative anomalies, which can be incorporated by using the $η$-invariant of Atiyah, Patodi, and Singer instead of the Chern-Simons function. Here we give a nonperturbative description of anomaly inflow, involving the $η$-invariant. This formula has been expected in the past based on the Dai-Freed theorem, but has not been fully justified. It leads to a general description of perturbative and nonperturbative fermion anomalies in $d$ dimensions in terms of an $η$-invariant in $D$ dimensions. This $η$-invariant is a cobordism invariant whenever perturbative anomalies cancel."
comments: "60 pages. To appear in the proceedings of the Shoucheng Zhang Memorial Workshop. v2: minor improvements and references added. v3: minor corrections"
pdf: "[[Attachments/Assets/Anomaly Inflow and the $η$-Invariant (1909.08775v3).pdf]]"
url: https://arxiv.org/abs/1909.08775v3
tags: []
---

# a precise formula for anomaly inflow

we consider massive fermions on a manifold $\displaystyle{Y}$ with boundary $\displaystyle{W}$. the dimension of $\displaystyle{W}$ is $\displaystyle{d}$, while $\displaystyle{Y}$'s dimension is $\displaystyle{d+1}$. we denote the massive Dirac fermion $\displaystyle{\Psi}$, which means the components are all charged under a global or gauge symmetry. for symplicity, we choose the symmetry to be $\displaystyle{\mathrm{U}(1)}$

we assume only that $\displaystyle{Y}$ is endowed with a spin structure so that a suitable action for $\displaystyle{\Psi}$ exists

$$\begin{align}
S & =-\int _{Y} \mathrm{d}^{D}x\sqrt{ g }\bar{\Psi}(D\!\!\!/_{Y}+m)\Psi
\end{align}$$

the Dirac operator $\displaystyle{D\!\!\!/_{Y}}$ is defined in the usual way

$$\begin{align}
D\!\!\!_{Y} & =\gamma ^{\mu}D_{\mu} \\
\left\{\gamma _{\mu},\gamma _{\nu}\right\} & =2g_{\mu \nu}
\end{align}$$

on a manifold without, the operator $\displaystyle{\mathcal{D}_{Y}=iD\!\!\!/_{Y}}$ is self-adjoint. now suppose that the manifold $\displaystyle{Y}$ has boundary $\displaystyle{W=\partial Y}$, with metric near the boundary of the form

$$\begin{align}
\mathrm{d}s_{Y}^{2} & =\mathrm{d}\tau ^{2}+\mathrm{d}s^{2}_{W}
\end{align}$$

where $\displaystyle{\mathrm{d}s^{2}_{W}}$ is the metric on $\displaystyle{W}$, where $\displaystyle{\tau}$ parameterized the normal direction. we normalize $\displaystyle{\tau}$ to vanish long $\displaystyle{W}$ and to be negative away from $\displaystyle{W}$. we assume this product description is valib at least in a range $\displaystyle{(-\varepsilon,0]}$. 

we impose on $\displaystyle{\Psi}$ the following local boundary condition

$$\begin{align}
\mathbf{L}:(1-\gamma ^{\tau})\Psi|_{\tau=0} & =0
\end{align}$$

a boundary condition on the Euclidean Dirac operator is self-adjoint if, wih this boundary condition, $\displaystyle{iD\!\!\! /_{Y}}$ is self-adjoint on a manifold with boundary. the $\displaystyle{\mathbf{L}}$ boundary condition is not self-adjoint, which will lead to chiral, anomalous modes on the boundary, which is the main point of this paper. the action can be written near the boundary as

$$\begin{align}
S & =-\int _{Y} \mathrm{d}^{D}x\sqrt{ g }\bar{\Psi}\gamma ^{\tau}\left(\partial _{\tau}+\mathcal{D}_{W}+\gamma ^{\tau}m\right)\Psi
\end{align}$$

where

$$\begin{align}
\mathcal{D}_{W} & =\sum _{\mu\neq \tau}\gamma ^{\tau}\gamma ^{\mu}D_{\mu}
\end{align}$$

is a self-adjoint Dirac operator on the boundary $\displaystyle{W}$. notice that $\displaystyle{\gamma ^{\tau}}$ and $\displaystyle{\mathcal{D}_{W}}$ anticommute with each other. 

---

if $\displaystyle{d}$ is even, the operator $\displaystyle{\gamma ^{\tau}}$ measures chirality on $\displaystyle{W}$. and we will call $\displaystyle{\gamma ^{\tau}}$ a chirality operator in any sense, though for odd $\displaystyle{d}$ this is not the standard terminology.

---

the interesting case is $\displaystyle{m< 0}$. in this case, the Dirac equation $\displaystyle{(D\!\!\! /+m)\Psi=0}$ has a mode localized near the boundary and given by

$$\begin{align}
\Psi & =\chi(x)e^{|m|\tau} \\
 & (1-\gamma ^{\tau})\chi=0,\mathcal{D}_{W}\chi=0
\end{align}$$

where $\displaystyle{\chi}$ is a fermion field on $\displaystyle{W}$. since it vanishes exponentially for $\displaystyle{\tau\ll 0}$ (deep in the bulk of $\displaystyle{Y}$), this mode is localized near the boundary. since $\displaystyle{\mathcal{D}_{W}\chi=0}$, it propagates along $\displaystyle{W}$ as a massless fermion. finally, as it obeys $\displaystyle{\gamma ^{\tau}\chi=\chi}$, it is chiral fermion along $\displaystyle{W}$. for $\displaystyle{|m|>0}$, there is no such boundary-localized mode.

to quantize the fermion field $\displaystyle{\Psi}$, we choose the Pauli-Villars regulator. we take the Pauli-Villars regulator field to have a positive mass parameter, since we do not want the regulator field to have a low energy mode progagating along the boundary, which would be quite unphysical.

now we want to compute the partition function 

