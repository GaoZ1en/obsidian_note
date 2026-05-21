---
title: Bulk Reconstruction
date: 2026-05-20
summary: "Research note comparing standard scalar bulk reconstruction with a possible Brown-Henneaux boundary-graviton reconstruction from the linearized-gravity mode basis."
---

# Bulk reconstruction

This note records a possible extension of the linearized-gravity project. The goal is not to polish the current draft, but to ask whether the normalized Brown-Henneaux mode basis can be used as input for a bulk-reconstruction formula.

The scalar case should be treated as the benchmark. For spin one and spin two the main new issue is gauge redundancy: a bulk field at a point is not itself a gauge-invariant observable unless a gauge choice, dressing, or relational prescription has been fixed. In pure AdS$_3$ Einstein gravity this issue is especially sharp, because there are no local propagating gravitons. The Brown-Henneaux modes are locally pure gauge but survive as boundary degrees of freedom.

## Scalar benchmark

Consider a scalar field in global AdS$_3$ with mass $\mu$ and standard quantization. In the notation of `canonical quantization with covariant phase formalism.md`, the metric is

$$
\mathrm{d}s^2=-(1+r^2)\mathrm{d}t^2+\frac{\mathrm{d}r^2}{1+r^2}+r^2\mathrm{d}\phi^2,
$$

and the conformal dimension is

$$
\Delta=1+\sqrt{1+\mu^2}.
$$

Solving the Klein-Gordon equation directly by separation of variables gives the normal modes

$$\begin{align}
\varphi_{n,m}(t,r,\phi)
&=
\mathcal N_{n,m}\,
e^{-i\omega_{n,m}t}e^{im\phi}
r^{|m|}(1+r^2)^{-(\Delta+|m|)/2}
P_n^{(\Delta-1,|m|)}
\left(\frac{r^2-1}{r^2+1}\right),\\
\omega_{n,m}&=\Delta+2n+|m|,\\
\mathcal N_{n,m}
&=
\sqrt{\frac{1}{2\pi}
\frac{(\Delta+n)_{|m|}}{(n+1)_{|m|}}},
\qquad
n\in\mathbb N,\quad m\in\mathbb Z .
\end{align}$$

The field expansion is

$$
\phi(t,r,\phi)
=\sum_{n=0}^{\infty}\sum_{m\in\mathbb Z}
\left(
a_{n,m}\varphi_{n,m}(t,r,\phi)
+a^\dagger_{n,m}\varphi^*_{n,m}(t,r,\phi)
\right),
$$

with $[a_{n,m},a^\dagger_{n',m'}]=\delta_{nn'}\delta_{mm'}$ after quantization.

Near the boundary, the radial part behaves as

$$\begin{align}
\varphi_{n,m}(t,r,\phi)
&\sim
B_{n,m}\,
r^{-\Delta}e^{-i\omega_{n,m}t}e^{im\phi},
\\
B_{n,m}
&=
\mathcal N_{n,m}
\frac{(\Delta)_n}{n!}.
\end{align}$$

The extrapolate dictionary identifies the CFT operator with the boundary limit

$$
O(t,\phi)
=\lim_{r\to\infty}c\,r^\Delta\phi(t,r,\phi).
$$

Thus the same oscillators appear in the CFT mode expansion:

$$
O(t,\phi)
=c\sum_{n,m}
\left(
B_{n,m}e^{-i\omega_{n,m}t}e^{im\phi}a_{n,m}
+B_{n,m}^*e^{i\omega_{n,m}t}e^{-im\phi}a^\dagger_{n,m}
\right).
$$

Projecting $O(t,\phi)$ onto the positive-frequency cylinder mode $e^{-i\omega_{n,m}t}e^{im\phi}$ extracts $a_{n,m}$ up to the known coefficient $cB_{n,m}$. Substituting this back into the bulk expansion gives the global mode-sum reconstruction

$$
\phi(t,r,\phi)
=
\sum_{n,m}
\left[
\frac{\varphi_{n,m}(t,r,\phi)}
{cB_{n,m}}\,
O_{n,m}
+\mathrm{h.c.}
\right],
$$

where $O_{n,m}$ denotes the corresponding positive-frequency boundary mode of $O$. Equivalently, after summing over modes, one may write

$$
\phi(t,r,\phi)
=\int\mathrm{d}t'\mathrm{d}\phi'\,
K_\Delta(t,r,\phi|t',\phi')O(t',\phi').
$$

The kernel is just the mode sum built from $\varphi_{n,m}/B_{n,m}$. This is the global-cylinder version of HKLL. No Poincare patch is required; the Poincare smearing function is only a different representation of the same inversion problem.

The relation to the highest-weight labels is also direct. Writing $u=t-\phi$ and $v=t+\phi$,

$$
e^{-i\omega_{n,m}t+im\phi}
=
e^{-i h_{n,m}u-i\bar h_{n,m}v},
\qquad
h_{n,m}=\frac{\omega_{n,m}+m}{2},
\quad
\bar h_{n,m}=\frac{\omega_{n,m}-m}{2}.
$$

For $m\ge0$, this gives

$$
h_{n,m}=\frac{\Delta}{2}+n+m,
\qquad
\bar h_{n,m}=\frac{\Delta}{2}+n,
$$

and for $m<0$ the two descendants are exchanged. This is the same spectrum as the representation-theoretic construction, but the reconstruction formula above uses the modes obtained directly from the EOM.

## What changes for spin one and spin two

For gauge fields and gravity, the bulk field is not gauge invariant. A reconstruction formula for $A_\mu$ or $h_{\mu\nu}$ therefore reconstructs a representative after a gauge choice, not an invariant local observable. The CFT data determine gauge-invariant boundary charges and correlators; the bulk representative is obtained only after choosing a dressing or fixing a convention such as radial gauge, TT gauge, or another boundary-anchored gauge.

For spin one, the dual CFT data are current modes. One expects a reconstruction formula of the schematic form

$$
A_\mu(X)=\int_{\partial\mathrm{AdS}}\mathrm{d}x'\,K_\mu(X|x')J(x')
$$

after projecting to the transverse sector and fixing residual gauge transformations. In AdS$_3$, Maxwell and Chern-Simons variants need separate treatment because boundary conditions and zero modes matter.

For spin two, the dual CFT data are stress-tensor modes. In higher-dimensional AdS, the TT sector of linearized gravity is reconstructed from the CFT stress tensor by a spin-two smearing kernel. In pure AdS$_3$ Einstein gravity, however, there is no local bulk graviton. The relevant reconstruction problem is therefore more modest and more boundary-sensitive:

- reconstruct a Brown-Henneaux boundary-graviton representative $h_{\mu\nu}$ in a chosen gauge;
- express its oscillator coefficients in terms of Virasoro modes;
- keep track of proper versus improper diffeomorphisms;
- avoid interpreting the resulting $h_{\mu\nu}(X)$ as a gauge-invariant local bulk observable.

## Using the linearized-gravity mode basis

The scalar discussion above suggests the cleanest way to formulate the gravity problem: start from the explicit normal modes in global coordinates, take their Brown-Henneaux boundary limit, identify the corresponding CFT modes, and invert the mode expansion. The current linearized-gravity draft already gives the analogue of the scalar bulk mode expansion:

$$
h_{\mu\nu}
=\sum_{n=0}^{\infty}
\left(a_{-,n}h_{-,n,\mu\nu}+a_{-,n}^\dagger h^*_{-,n,\mu\nu}\right)
+\sum_{\bar n=0}^{\infty}
\left(a_{+,\bar n}h_{+,\bar n,\mu\nu}+a_{+,\bar n}^\dagger h^*_{+,\bar n,\mu\nu}\right),
$$

with

$$
\Omega[h_{-,n},h^*_{-,m}]=-i\delta_{nm},
\qquad
\Omega[h_{+,\bar n},h^*_{+,\bar m}]=-i\delta_{\bar n\bar m}.
$$

The two physical towers have primary weights

$$
h_{-,0}:\ (2,0),
\qquad
h_{+,0}:\ (0,2),
$$

and correspond to the two Brown-Henneaux chiral sectors. Since the mode $n=0$ has boundary weight $2$, the natural CFT comparison is with Virasoro descendants generated by $L_{-m}$ and $\bar L_{-m}$ with

$$
m=n+2,
\qquad
\bar m=\bar n+2.
$$

On the CFT vacuum module,

$$
\langle 0|L_mL_{-m}|0\rangle
=\frac{c}{12}m(m^2-1),
\qquad
m\ge2,
$$

and similarly for the barred sector. Thus, up to phase conventions, a unit-normalized oscillator should be related to a Virasoro mode by

$$
a_{-,n}^\dagger
\sim
\sqrt{\frac{12}{c\,m(m^2-1)}}\,L_{-m},
\qquad
a_{-,n}
\sim
\sqrt{\frac{12}{c\,m(m^2-1)}}\,L_m,
\qquad
m=n+2,
$$

with the analogous barred formula for $a_{+,\bar n}$ and $\bar L_{\bar m}$. Using the Brown-Henneaux central charge $c=3/(2G)$, the normalization factor becomes

$$
\sqrt{\frac{12}{c\,m(m^2-1)}}
=
\sqrt{\frac{8G}{m(m^2-1)}}.
$$

This gives a concrete mode-sum version of spin-two reconstruction:

$$
\hat h_{\mu\nu}(X)
\sim
\sum_{n=0}^{\infty}
\sqrt{\frac{8G}{m(m^2-1)}}
\left[
h_{-,n,\mu\nu}(X)L_m
+h^*_{-,n,\mu\nu}(X)L_{-m}
\right]
+(\mathrm{barred}),
\qquad
m=n+2.
$$

The placement of $L_{\pm m}$ depends on the positive-frequency convention used for the mode functions, just as the scalar formula depends on whether one extracts the positive- or negative-frequency boundary mode. The invariant statement is that the CFT stress-tensor modes determine the Brown-Henneaux oscillator coefficients, and the known bulk wavefunctions $h_{\pm,n}$ propagate those coefficients into the bulk representative.

Equivalently, one can package the sum into chiral smearing kernels,

$$
\hat h_{\mu\nu}(X)
=\int \mathrm{d}u'\,K^{(L)}_{\mu\nu}(X|u')T(u')
+\int \mathrm{d}v'\,K^{(R)}_{\mu\nu}(X|v')\bar T(v'),
$$

where $u=t-\phi$ and $v=t+\phi$. The kernels are determined by summing the normalized Brown-Henneaux modes against the Fourier modes of $T$ and $\bar T$. This is the closest analogue of HKLL in the present pure-gravity setup.

## What should be checked next

1. Fix the exact phase convention relating $a_{-,n}$ to $L_{\pm(n+2)}$ and $a_{+,\bar n}$ to $\bar L_{\pm(\bar n+2)}$.

1. Verify the normalization by matching both sides of the oscillator commutator to the Virasoro vacuum two-point function.

1. For the scalar benchmark, write the explicit global smearing kernel by summing $\varphi_{n,m}/B_{n,m}$ and compare it with the standard HKLL kernel after analytic continuation or conformal mapping.

1. Write the explicit chiral kernels $K^{(L)}_{\mu\nu}$ and $K^{(R)}_{\mu\nu}$ as mode sums and check their Brown-Henneaux falloffs.

1. Decide which gauge or dressing statement should accompany the reconstruction formula. Without this, the formula reconstructs a coordinate representative rather than a gauge-invariant bulk observable.

1. Compare with the spin-one case first if the spin-two gauge issue becomes too opaque. A conserved-current reconstruction is likely to be a cleaner intermediate example than pure AdS$_3$ gravity.

The main conceptual point is that scalar HKLL reconstructs a genuine local bulk field, whereas the AdS$_3$ linearized-gravity construction reconstructs the boundary-graviton representative fixed by the Brown-Henneaux phase space and by a gauge convention. This difference is not a defect; it is the expected form of reconstruction in a theory whose physical gravitational degrees of freedom live at the boundary.
