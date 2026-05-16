---
title: "3_algebras"
date: 2026-05-15
summary: "Separates the oscillator algebra of linearized edge modes from the Brown-Henneaux Virasoro algebra of asymptotic surface charges."
---

# Edge-mode and asymptotic-charge algebras

There are two related but distinct algebraic structures in the linearized theory. The first is the oscillator, or Kac-Moody-like, algebra obtained by evaluating the symplectic form on the large-diffeomorphism modes. The second is the Brown-Henneaux Virasoro algebra of asymptotic surface charges. They have different generators and encode different aspects of the boundary dynamics.

## Oscillator algebra from the symplectic form

The first algebra is obtained directly from the large-diffeomorphism directions in the linearized phase space. The modes of Section 2 can be written as

$$
h_{L,n}^{\mu\nu}
=\nabla^{(0)\mu}\zeta_{L,n}^{\nu}
+\nabla^{(0)\nu}\zeta_{L,n}^{\mu},\qquad
h_{R,\bar n}^{\mu\nu}
=\nabla^{(0)\mu}\zeta_{R,\bar n}^{\nu}
+\nabla^{(0)\nu}\zeta_{R,\bar n}^{\mu}.
$$

They generate vector fields on the phase space. For $n\geq1$, define

$$
\begin{align}
X_{n+1}
&=\int\mathrm{d}^3x\sqrt{-g^{(0)}}\,\sqrt{n}
\left(\nabla_\mu\zeta_{L,n,\nu}+\nabla_\nu\zeta_{L,n,\mu}\right)
\frac{\delta}{\delta h_{\mu\nu}},\\
X_{\bar n+1}
&=\int\mathrm{d}^3x\sqrt{-g^{(0)}}\,\sqrt{\bar n}
\left(\nabla_\mu\zeta_{R,\bar n,\nu}+\nabla_\nu\zeta_{R,\bar n,\mu}\right)
\frac{\delta}{\delta h_{\mu\nu}}.
\end{align}
$$

The negative labels are obtained from the complex-conjugate modes, and $X_0=0$. Let $H_k^{\mathrm{osc}}$ and $\bar H_k^{\mathrm{osc}}$ denote the Hamiltonians associated with these phase-space vector fields. Their Poisson brackets are evaluated from the symplectic form:

$$
\{H_k^{\mathrm{osc}},H_l^{\mathrm{osc}}\}
=X_k\cdot X_l\cdot\Omega.
$$

This gives

$$
\{H_k^{\mathrm{osc}},H_l^{\mathrm{osc}}\}
=-ik\delta_{k+l,0},\qquad
\{\bar H_k^{\mathrm{osc}},\bar H_l^{\mathrm{osc}}\}
=-ik\delta_{k+l,0},\qquad
\{H_k^{\mathrm{osc}},\bar H_l^{\mathrm{osc}}\}=0.
$$

Equivalently, after quantization one may write the oscillator algebra as

$$
[\alpha_k,\alpha_l]=k\,\delta_{k+l,0},\qquad
[\bar{\alpha}_k,\bar{\alpha}_l]=k\,\delta_{k+l,0},\qquad
[\alpha_k,\bar{\alpha}_l]=0.
$$

This is the linear oscillator algebra of the edge-mode phase space. It organizes the perturbative boundary-graviton variables.

## Brown-Henneaux Virasoro charges

The second algebra comes from asymptotic spacetime symmetries. Starting from the exact Killing fields $\xi_0,\xi_{\pm1}$ and $\bar\xi_0,\bar\xi_{\pm1}$, the first non-trivial asymptotic generators are fixed by the large-diffeomorphism parameters of the primary boundary gravitons. With the normalization used above,

$$
\xi_{-2}=\frac{3}{2i\sqrt{3G}}\zeta_{L,0},\qquad
\bar{\xi}_{-2}=\frac{3}{2i\sqrt{3G}}\zeta_{R,0},
$$

and $\xi_2=\xi_{-2}^*$, $\bar\xi_2=\bar\xi_{-2}^*$. Higher asymptotic generators are defined recursively by the Witt algebra:

$$
\begin{align}
\xi_{n+1}&=\frac{1}{i(n-1)}\mathcal{L}_{\xi_1}\xi_n,&
\xi_{-(n+1)}&=-\frac{1}{i(n-1)}\mathcal{L}_{\xi_{-1}}\xi_{-n},\\
\bar{\xi}_{n+1}&=\frac{1}{i(n-1)}\mathcal{L}_{\bar{\xi}_1}\bar{\xi}_n,&
\bar{\xi}_{-(n+1)}&=-\frac{1}{i(n-1)}\mathcal{L}_{\bar{\xi}_{-1}}\bar{\xi}_{-n},
\end{align}
$$

for $n\geq2$. They obey two copies of the Witt algebra asymptotically,

$$
[\xi_n,\xi_m]=-i(n-m)\xi_{n+m}+\mathcal{O}(r^{-4}),\qquad
[\bar{\xi}_n,\bar{\xi}_m]=-i(n-m)\bar{\xi}_{n+m}+\mathcal{O}(r^{-4}),
$$

with $[\xi_n,\bar{\xi}_m]=0$. The modes $\xi_0,\xi_{\pm1}$ and $\bar{\xi}_0,\bar{\xi}_{\pm1}$ are exact AdS$_3$ Killing vectors; the higher modes are genuine asymptotic symmetries.

Let $H_n$ and $\bar H_n$ be the corresponding surface charges. The charge variation is evaluated on the circle at spatial infinity,

$$
\delta H_\xi
=\int_{\partial\Sigma}\mathrm{d}x\sqrt{h^{(0)}}\,\tau_\mu n_\nu k_\xi^{\nu\mu}.
$$

Then the charge algebra follows from

$$
\{H_\xi,H_\zeta\}\simeq X_\zeta\cdot\delta H_\xi.
$$

For the Brown-Henneaux generators, the action on the perturbation is

$$
\delta_{\xi_m}h_{\mu\nu}
=\mathcal{L}_{\xi_m}g^{(0)}_{\mu\nu}
+\mathcal{L}_{\xi_m}h_{\mu\nu}.
$$

To the order needed for the finite surface bracket, the leading surface form $k_{\xi_n}^{(0)}$ is sufficient. Its inhomogeneous insertion gives

$$
\oint k_{\xi_n}^{(0)}[\mathcal{L}_{\xi_m}g^{(0)}]
=-\frac{i}{8G}n(n^2-1)\delta_{n+m,0},
$$

while its homogeneous insertion gives

$$
\oint k_{\xi_n}^{(0)}[\mathcal{L}_{\xi_m}h]
=-i(n-m)H_{n+m}.
$$

Using the Brown-Henneaux falloffs and the surface form listed in Appendix B, one obtains

$$
\begin{align}
\{H_n,H_m\}
&=-i(n-m)H_{n+m}-\frac{i}{8G}n(n^2-1)\delta_{n+m,0},\\
\{\bar H_n,\bar H_m\}
&=-i(n-m)\bar H_{n+m}-\frac{i}{8G}n(n^2-1)\delta_{n+m,0},\\
\{H_n,\bar H_m\}&=0.
\end{align}
$$

In the standard quantum convention this is the Virasoro algebra

$$
\begin{align}
[L_n,L_m]
&=(n-m)L_{n+m}+\frac{c}{12}n(n^2-1)\delta_{n+m,0},\\
[\bar L_n,\bar L_m]
&=(n-m)\bar L_{n+m}+\frac{c}{12}n(n^2-1)\delta_{n+m,0},\\
[L_n,\bar L_m]&=0,
\end{align}
$$

with Brown-Henneaux central charge

$$
c=\frac{3}{2G}.
$$

The formulas for the surface charge variation and the Noether potential used in this computation are recorded in Appendix B.

## Relation between the two algebras

The oscillator algebra in Section 3.1 is the algebra of linear coordinates on the boundary-graviton phase space. The Virasoro algebra in Section 3.2 is the algebra of asymptotic symmetry charges acting on that phase space.

The oscillator bracket is computed by inserting the explicit large-diffeomorphism modes into the symplectic form. The Virasoro bracket is computed by varying the asymptotic surface charges. The central term belongs to the surface-charge calculation, even though both structures are built from the same Brown-Henneaux boundary data.
