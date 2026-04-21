---
paper id: 2604.07334v1
title: "The BEF Symplectic Form: A Lagrangian Perspective"
authors:
  - Mohd Ali
  - Georg Stettinger
publication date: 2026-04-08T17:49
abstract: |-
  In 2025, Bernardes, Erler and Firat proposed a novel, elegant expression for the symplectic form on phase space applicable to non-local theories. We show that this BEF symplectic structure can be derived directly from an $L_\infty$-Lagrangian by following the covariant phase space approach. Moreover, we establish a precise relation between the BEF symplectic structure and the Barnich--Brandt symplectic form for general finite-derivative theories. In particular, we prove that for theories with second-order equations of motion, the BEF symplectic structure coincides with the Barnich--Brandt construction, thereby explaining the emergence of the canonical corner term in general relativity within the BEF approach.
    We further argue that the BEF symplectic structure naturally encodes information about generic corner terms and some information about boundary conditions. In addition, we develop a general expression for the Hamiltonian in theories in $L_\infty$-form and present several explicit examples illustrating the construction.
comments: 35 pages
pdf: "[[Attachments/Assets/The BEF Symplectic Form A Lagrangian Perspective (2604.07334v1).pdf]]"
url: https://arxiv.org/abs/2604.07334v1
tags: []
---

in a word, $\displaystyle{L_{\infty}}$ algebra is somewhat a generalization of Lie algebra, which is used to describe higher gauge structures.

## $\displaystyle{L_{\infty}}$ field theory and CPS formalism

(here we have assume that the spatial manifold is compact, and we ignore the boundary contributions for simplicity)

the $\displaystyle{L_{\infty}}$ approach to a field theory is based on a classical action of the form

$$\begin{align}
S & =-\sum ^{\infty}_{n=1} \frac{1}{(n+1)!} \omega(\phi,L_{n}(\phi,\dots,\phi))
\end{align}$$

here $\displaystyle{\phi \in \mathcal{H}}$ is the dynamical field of the theory, $\displaystyle{\mathcal{H}}$ is a graded vector space. the BV inner product $\displaystyle{\omega:\mathcal{H}^{\otimes 2}\to \mathcal{H}^{0}}$ is a nondegenerate bilinear form with

$$\begin{align}
\omega(A,B) & =-(-1)^{|A||B|}\omega(B,A)
\end{align}$$

and carries grade $\displaystyle{-1}$. the $\displaystyle{L_{n}:\mathcal{H}^{\otimes n}\to \mathcal{H}}$ are the multilinear maps that carries grade $\displaystyle{+1}$ and are graded symmetric

$$\begin{align}
L_{n}(\dots,A,B, \dots) & =(-1)^{|A||B|}L_{n}(\dots,B,A, \dots)
\end{align}$$

and satisfy the homotopy Jacobi identities

$$\begin{align}
\sum ^{n}_{i=1} \sum _{\sigma \in \mathrm{Sh}(i,n-i)} \epsilon (\sigma;A_{1},\dots,A_{n}) L_{n-i+1}(L_{i}(A_{\sigma(1)},\dots,A_{\sigma(i)}),A_{\sigma(i+1)},\dots,A_{\sigma(n)}) & =0
\end{align}$$

take a vatiation of the action, we have

$$\begin{align}
\sum ^{\infty}_{n=1} \frac{1}{n!}L_{n}(\phi,\dots \phi) & =0
\end{align}$$

the pre-phase space $\displaystyle{\widetilde{\mathcal{P}}}$ is the space of field configurations $\displaystyle{\phi}$ that satisfy the eoms and specific boundary conditions. infinitesimal gauge transformation takes the form

$$\begin{align}
\phi & \to \phi+\delta _{\phi}\Lambda \\
\delta _{\phi}\Lambda & \equiv \sum ^{\infty}_{n=0} \frac{1}{n!}L_{n+1}(\phi, \dots,\phi,\Lambda)
\end{align}$$

we have

$$\begin{align}
\omega(\delta_{\phi}A,B)+(-1)^{|A|}\omega(A,\delta_{\phi}B) & =0
\end{align}$$

and for $\displaystyle{\phi \in \tilde{\mathcal{P}}}$, the operator $\displaystyle{\delta _{\phi}}$ is nilpotent, i.e. $\displaystyle{\delta _{\phi}^{2}=0}$. we introduce a vector field on the pre-phase space $\displaystyle{\tilde{\mathcal{P}}}$ as

$$\begin{align}
X_{\Lambda} & =\int \mathrm{d}\mu \delta _{\phi}\Lambda \frac{\delta}{\delta \phi}
\end{align}$$

the BEF symplectic form is defined as

$$\begin{align}
\Omega & =\frac{1}{2}\omega(\delta \phi,[\delta_{\phi},\sigma]\delta \phi)
\end{align}$$

where $\displaystyle{\sigma:\mathcal{H}\to \mathcal{H}}$ is a degree $\displaystyle{0}$ operator that satisfies

$$\begin{align}
\lim_{ t \to -\infty } \sigma=0, & \lim_{ t \to \infty } \sigma=1 \\
\omega(\sigma A,B) & =\omega(A,\sigma B)
\end{align}$$

the $\displaystyle{\sigma}$ operator play a role as time, and does not depend on the locality of the theory. the BEF symplectic form satisfies the following consistency conditions

- variational closed, $\displaystyle{\delta \Omega=0}$
- gauge equivalent configurations are degenerate directions of $\displaystyle{\Omega}$, i.e. $\displaystyle{X_{\Lambda}\cdot \Omega=0}$. and vice versa
- gauge invariant, $\displaystyle{\mathcal{L}_{X_{\Lambda}}\Omega=0}$

## derivation of the BEF symplectic form

we consider a $\displaystyle{\sigma}$-modified action

$$\begin{align}
S_{\sigma} & =-\sum ^{\infty}_{n=1} \frac{1}{(n+1)!}\omega(\sigma \phi,L_{n}(\phi,\dots,\phi)) 
\end{align}$$

take a variation of the action

$$\begin{align}
\delta S_{\sigma} & =\sum ^{\infty}_{n=1} \frac{1}{(n+1)!} [\omega(\sigma \delta \phi,L_{n}(\phi,\dots,\phi))+\omega(\sigma \phi,\delta L_{n}(\phi,\dots,\phi))] \\
 & =\sum ^{\infty}_{n=1} \frac{1}{(n+1)!}\omega(\sigma \delta \phi,L_{n}(\phi ,\dots,\phi)-n\omega(\sigma \phi,L_{n}(\phi,\dots,\delta \phi))) \\
 & =\sum ^{\infty}_{n=1} \frac{1}{(n+1)!}\omega(\sigma \delta \phi,L_{n}(\phi,\dots,\phi))+\sum ^{\infty}_{n=1} \frac{n}{(n+1)!}\omega(L_{n}(\sigma \phi,\dots,\phi),\delta \phi)+\theta_{\sigma}|_{\Sigma _{f}}-\theta_{\sigma}|_{\Sigma _{i}} \\
 & =\sum ^{\infty}_{n=1} \frac{1}{(n+1)!}\omega(\sigma \delta \phi,L_{n}(\phi,\dots,\phi))+\sum ^{\infty}_{n=1} \frac{n}{(n+1)!}\omega(\delta \phi,L_{n}(\sigma \phi,\dots,\phi))+\theta_{\sigma}|_{\Sigma _{f}}-\theta_{\sigma}|_{\Sigma _{i}} \\
 & =\sum ^{\infty}_{n=1} \frac{1}{n!} \omega(\sigma \delta \phi,L_{n}(\phi,\dots,\phi))+\sum ^{\infty}_{n=1} \frac{n}{(n+1)!}\omega(\delta \phi,[L_{n}(\phi,\dots,\phi,\cdot),\sigma]\phi)+\theta_{\sigma}|_{\Sigma _{f}}-\theta_{\sigma}|_{\Sigma _{i}} \\
 & =\omega(\sigma \delta \phi,E[\phi])+\sum ^{\infty}_{n=1} \frac{n}{(n+1)!}\omega(\delta \phi,[L_{n}(\phi,\dots,\phi,\cdot),\sigma]\phi)+\theta_{\sigma}|_{\Sigma _{f}}-\theta_{\sigma}|_{\Sigma _{i}}
\end{align}$$

where $\displaystyle{E[\phi]}$ is the equation of motion operator defined as

$$\begin{align}
E[\phi] & =\sum ^{\infty}_{n=1} \frac{1}{n!}L_{n}(\phi,\dots,\phi)
\end{align}$$

then take a second variation of the action, we have

$$\begin{align}
0=\omega(\sigma \delta \phi,\delta E[\phi])+\sum ^{\infty}_{n=1} \frac{n}{(n+1)!}\omega\left(\delta \phi,\delta\left\{[L_{n}(\phi,\dots,\phi,\cdot),\sigma]\phi\right\}\right)+\delta\theta_{\sigma}|_{\Sigma _{f}}-\delta\theta_{\sigma}|_{\Sigma _{i}}
\end{align}$$

in which

$$\begin{align}
\omega(\delta \phi,\delta\left\{[L_{n}(\phi,\dots,\phi,\cdot),\sigma]\phi\right\}) & =\omega(\delta \phi,\delta(L_{n}(\phi,\dots,\phi,\sigma \phi)-\sigma L_{n}(\phi,\dots,\phi))) \\
 & =-(n-1)\omega(\delta \phi,L_{n}(\phi,\dots,\delta \phi,\sigma \phi))+\omega(\delta \phi,L_{n}(\phi,\dots,\phi,\sigma \delta \phi)) \\
 & -n\omega(\delta \phi,\sigma L_{n}(\phi,\dots,\phi,\delta \phi)) \\
 & =-(n-1)\omega(L_{n}(\delta \phi,\phi,\dots,\phi,\delta \phi),\sigma \phi)-\frac{n+1}{2}\omega(\delta \phi,[L_{n}(\phi,\dots,\phi,\cdot),\sigma]\delta \phi) \\
 & +\frac{n-1}{2}(\omega(L_{n}(\delta \phi,\phi,\dots,\phi),\sigma \delta \phi)+\omega(\delta \phi,\sigma L_{n}(\phi,\dots,\phi,\delta \phi))) \\
 & =-\frac{n+1}{2}\omega(\delta \phi,[L_{n}(\phi,\dots,\phi,\cdot),\sigma]\delta \phi) \\
 & =-\frac{n+1}{2}\omega(\delta \phi,[\delta_{\phi},\sigma]\delta \phi)
\end{align}$$

where we have used $\displaystyle{L_{n}(\delta \phi,\dots,\delta \phi)=0}$. we therefore obtain

$$\begin{align}
0 & = \omega(\sigma \delta \phi,\delta E[\phi])-\frac{1}{2}\omega(\delta \phi,[\delta_{\phi},\sigma]\delta \phi)+\delta\theta_{\sigma}|_{\Sigma _{f}}-\delta\theta_{\sigma}|_{\Sigma _{i}} \\
 & \approx -\frac{1}{2}\omega(\delta \phi,[\delta_{\phi},\sigma]\delta \phi)+\delta\theta_{\sigma}|_{\Sigma _{f}}-\delta\theta_{\sigma}|_{\Sigma _{i}}
\end{align}$$

where the first term is exactly the BEF symplectic form...