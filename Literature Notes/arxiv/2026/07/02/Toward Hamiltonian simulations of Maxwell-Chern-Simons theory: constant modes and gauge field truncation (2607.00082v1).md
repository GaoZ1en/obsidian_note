---
paper id: 2607.00082v1
title: "Toward Hamiltonian simulations of Maxwell-Chern-Simons theory: constant modes and gauge field truncation"
authors:
  - Andrea Bulgarelli
  - Maria Cristina Diamantini
  - Nico Dichter
  - Lena Funcke
  - Tobias Hartung
  - Karl Jansen
  - Enrique Rico Ortega
  - Simran Singh
  - Lorenzo Spera
publication date: 2026-06-30T18:01:35
abstract: |-
  The paper studies the constant-mode sector of compact Maxwell-Chern-Simons theory on a spatial torus as an analytically controlled benchmark for Hamiltonian simulations. The continuum flat-sector Hamiltonian is mapped to a Landau problem on the zero-mode torus with magnetic-translation algebra and k-fold topological degeneracy. A finite-dimensional discretization maps the problem to a generalized Harper-Hofstadter model with twisted boundary conditions, and the authors analyze the arithmetic conditions under which the lattice model reproduces the continuum topological degeneracy.
comments: "1+43 pages, 13 figures"
url: https://arxiv.org/abs/2607.00082v1
summary: "A compact MCS flat-sector benchmark that preserves magnetic-translation/topological-degeneracy data under finite-dimensional Hamiltonian truncation."
tags: []
---

# Constant modes of Maxwell-Chern-Simons theory as a finite Hamiltonian benchmark

Back to [[2026_07_02_overview]].

This is a medium-priority technical note. The paper is not directly about covariant phase space or boundary charges, but it is a useful model paper for Maxwell-Chern-Simons quantization, compact zero modes, magnetic translations, and finite-dimensional truncations that preserve global topological data.

## Flat sector and continuum Hamiltonian

The theory is compact $U(1)$ Maxwell-Chern-Simons theory in $2+1$ dimensions on a spatial torus. The field is restricted to the harmonic sector

$$\begin{align}
A_i(t,x)\to a_i(t),\qquad i=1,2,
\end{align}$$

where $a_i$ are holonomies around the two non-contractible cycles. The zero-mode Hamiltonian is

$$\begin{align}
H=\frac{Se^2}{2}\left[
\left(p_1-\frac{k}{4\pi}a_2\right)^2
+\left(p_2+\frac{k}{4\pi}a_1\right)^2
\right].
\end{align}$$

The same expression follows from compact QED in the flat sector,

$$\begin{align}
H=\frac{S}{2e^2}(E_1^2+E_2^2),
\end{align}$$

with the Chern-Simons shift

$$\begin{align}
\frac{E_i}{e^2}=p_i-\frac{k}{4\pi}\epsilon_{ij}a_j.
\end{align}$$

Thus

$$\begin{align}
[E_1,E_2]=-i\frac{e^4k}{2\pi S},
\qquad
[\tilde E_1,\tilde E_2]=-i\frac{k}{2\pi S},
\qquad
\tilde E_i=\frac{E_i}{e^2}.
\end{align}$$

Introducing

$$\begin{align}
a=\frac{\tilde E_2+i\tilde E_1}{\sqrt{k/(\pi S)}},\qquad
a^\dagger=\frac{\tilde E_2-i\tilde E_1}{\sqrt{k/(\pi S)}},
\end{align}$$

one obtains $[a,a^\dagger]=1$ and

$$\begin{align}
H=\frac{e^2k}{2\pi}\left(a^\dagger a+\frac12\right),\qquad
E_n=\frac{e^2k}{2\pi}\left(n+\frac12\right).
\end{align}$$

The oscillator algebra gives Landau levels, but not their degeneracy. The guiding-center operators are

$$\begin{align}
R_1=\tilde E_2-\frac{k}{2\pi}a_1,\qquad
R_2=\tilde E_1+\frac{k}{2\pi}a_2,
\end{align}$$

with $[R_i,H]=0$ and

$$\begin{align}
[R_1,R_2]=-\frac{ik}{2\pi S}.
\end{align}$$

The magnetic translations

$$\begin{align}
U=\exp\left(i\frac{2\pi\sqrt S}{k}R_1\right),\qquad
V=\exp\left(i\frac{2\pi\sqrt S}{k}R_2\right)
\end{align}$$

obey

$$\begin{align}
UV=e^{2\pi i/k}VU.
\end{align}$$

This Weyl algebra has a $k$-dimensional irreducible representation, so each Landau level has the expected $k$-fold topological degeneracy.

## Zero-mode torus and effective magnetic bundle

The compact variables obey

$$\begin{align}
a_i\sim a_i+2\pi.
\end{align}$$

In symmetric gauge,

$$\begin{align}
\widetilde A_1=-\frac{k}{4\pi}a_2,\qquad
\widetilde A_2=\frac{k}{4\pi}a_1,
\end{align}$$

so that

$$\begin{align}
B_{\mathrm{eff}}
=\partial_{a_1}\widetilde A_2-\partial_{a_2}\widetilde A_1
=\frac{k}{2\pi}.
\end{align}$$

The total flux through the zero-mode torus is

$$\begin{align}
\Phi=\int_{T^2}da_1\,da_2\,B_{\mathrm{eff}}=2\pi k,
\end{align}$$

which enforces $k\in\mathbb Z$ under large gauge transformations.

## Finite-dimensional truncation and Harper-Hofstadter form

The finite truncation discretizes the compact zero-mode torus by

$$\begin{align}
a_1=\frac{2\pi}{N_x}x,\qquad
a_2=\frac{2\pi}{N_y}y,\qquad
x=0,\ldots,N_x-1,\quad y=0,\ldots,N_y-1.
\end{align}$$

The finite Hilbert space has dimension $N_xN_y$, with flux per plaquette

$$\begin{align}
\alpha=\frac{k}{N_xN_y}.
\end{align}$$

The key distinction from the usual Hofstadter problem is that the total flux $2\pi k$ is fixed by the Chern-Simons level, while the plaquette flux changes with the truncation. The continuum regime is $k<N_xN_y$ and $\alpha\ll1$.

Using Landau gauge,

$$\begin{align}
\widetilde A_x=0,\qquad
\widetilde A_y=B a_1=\frac{k}{N_x}x,
\end{align}$$

the link operators are

$$\begin{align}
U_y(x,y)=\exp(2\pi i\alpha x),\qquad
U_x(x,y)=1.
\end{align}$$

The lattice Hamiltonian is the covariant finite-difference Laplacian on this magnetic bundle. In the equal-spacing case it becomes a Hofstadter-type tight-binding model, with twisted boundary conditions required by the nontrivial bundle.

## Magnetic translations and arithmetic obstruction

The lattice magnetic translations are

$$\begin{align}
T_x|x,y\rangle=e^{-2\pi i\alpha y}|x+1,y\rangle,\qquad
T_y|x,y\rangle=|x,y+1\rangle,
\end{align}$$

and obey

$$\begin{align}
T_xT_y=e^{2\pi i\alpha}T_yT_x.
\end{align}$$

On a torus one would like

$$\begin{align}
(T_x)^{N_x}=1,\qquad (T_y)^{N_y}=1.
\end{align}$$

But these are obstructed for nonzero $k$. From the projective algebra,

$$\begin{align}
(T_x)^{N_x}T_y=e^{2\pi i k/N_y}T_y(T_x)^{N_x},
\end{align}$$

so $(T_x)^{N_x}=1$ would require $N_y\mid k$. Similarly, $(T_y)^{N_y}=1$ would require $N_x\mid k$. Generic finite truncations cannot realize the fundamental translations globally.

The surviving exact subgroup is arithmetic. If

$$\begin{align}
g_y=\gcd(k,N_y),\qquad m_y=\frac{N_y}{g_y},
\end{align}$$

then

$$\begin{align}
\left((T_x)^{N_x}\right)^{m_y}=1,
\end{align}$$

and similarly for $x\leftrightarrow y$. This is the finite-dimensional trace of the magnetic bundle's nontrivial topology. The paper stresses that finite spectral clusters should not be confused with the continuum $k$-fold topological degeneracy.

In the commensurate regime $k\mid N_x$ and $k\mid N_y$, reduced translations can be chosen so that the finite model realizes the continuum magnetic-translation algebra exactly. This is the case where the finite truncation produces exact $k$-fold multiplets rather than only continuum-limit quasi-degeneracies. Away from this regime, the arithmetic orbit structure is still informative, but exact finite-size degeneracy should not be identified with the continuum topological degeneracy.

## Why this is useful locally

- Maxwell-Chern-Simons testbed: the paper isolates the flat sector where topological degeneracy can be compared cleanly between continuum and finite truncation.
- Quantization convention: the Chern-Simons level $k$ enters as magnetic flux through the zero-mode torus, not merely as a local mass parameter.
- Boundary/global data: the degeneracy is controlled by magnetic translations and large gauge transformations. This is useful for checking any local Maxwell-Chern-Simons note where local mode quantization risks missing global sectors.
- Numerical truncation warning: finite-dimensional clusters depend on arithmetic properties of $(N_x,N_y,k)$; they are not automatically physical topological degeneracies.

## Verification boundary

Source-derived: the Hamiltonian, Landau-level spectrum, magnetic-translation algebra, and arithmetic obstruction were checked against the official arXiv TeX source.

Checked algebraically by inspection: substituting $E_i/e^2=p_i-(k/4\pi)\epsilon_{ij}a_j$ into $H=S(E_1^2+E_2^2)/(2e^2)$ reproduces the displayed flat-sector Hamiltonian, and the relation $(T_x)^{N_x}T_y=e^{2\pi ik/N_y}T_y(T_x)^{N_x}$ follows directly from $T_xT_y=e^{2\pi i\alpha}T_yT_x$ with $\alpha=k/(N_xN_y)$.

Not independently verified: the numerical spectra, convergence plots, chiral-symmetry proof in the finite model, and appendix-level boundary commutator checks were not reproduced in this run.
