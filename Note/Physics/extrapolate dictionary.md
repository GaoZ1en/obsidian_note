---
title: Extrapolate Dictionary
date: 2026-04-25
summary: "Derivation notes for the extrapolate dictionary, including scalar fields, Maxwell fields, and linearized gravity in EAdS."
---

# Extrapolate Dictionary

## Scalar field

This section gives the scalar-field calculation in the pre-boundary extrapolate convention. The result is the standard scalar primary two-point function with conformal dimension

$$\begin{align}
\Delta_+=\frac{d}{2}+\nu,
\qquad
\nu=\sqrt{\frac{d^2}{4}+m^2}.
\end{align}$$

The AdS radius is set to $L=1$.

### Setup

Work in Euclidean AdS$_{d+1}$ with

$$\begin{align}
ds^2=\frac{1}{z^2}\left(dz^2+\delta_{ij}dx^idx^j\right),
\qquad
\sqrt g=z^{-d-1}.
\end{align}$$

Take the Euclidean action

$$\begin{align}
S_E[\phi,j]
=
\frac{1}{2}\int_M\epsilon_M
\left(\nabla_\mu\phi\nabla^\mu\phi+m^2\phi^2\right)
-\int_M\epsilon_M Jc\Omega^{-\Delta}\phi.
\end{align}$$

The source is localized on the pre-boundary surface $z=z_0$:

$$\begin{align}
J(x,z)=j(x)z_0^{d+1}\delta(z-z_0).
\end{align}$$

For a scalar field the pre-boundary operator is

$$\begin{align}
O(x,z_0)=c\,\Omega(z_0)^{-\Delta}\phi(x,z_0)
=c\,z_0^{-\Delta}\phi(x,z_0).
\end{align}$$

### Equation of motion

Varying the action gives

$$\begin{align}
(\nabla^2-m^2)\phi
=
-Jc\Omega^{-\Delta}.
\end{align}$$

In Poincare coordinates,

$$\begin{align}
\left[
z^2\partial_z^2+(1-d)z\partial_z
+z^2\delta^{ij}\partial_i\partial_j
-m^2
\right]\phi(x,z)
=-Jc\Omega^{-\Delta}.
\end{align}$$

After Fourier transformation,

$$\begin{align}
\phi(x,z)
=
\int\frac{d^d k}{(2\pi)^d}e^{ik\cdot x}\phi(k,z),
\qquad
k=\sqrt{\delta^{ij}k_ik_j},
\end{align}$$

the homogeneous radial equation is

$$\begin{align}
\left[
z^2\partial_z^2+(1-d)z\partial_z-z^2k^2-m^2
\right]\phi(k,z)=0.
\end{align}$$

The independent radial solutions are

$$\begin{align}
u_1(k,z)=z^{d/2}I_\nu(kz),
\qquad
u_2(k,z)=z^{d/2}K_\nu(kz),
\end{align}$$

where

$$\begin{align}
\nu=\sqrt{\frac{d^2}{4}+m^2}.
\end{align}$$

The Breitenlohner-Freedman bound is

$$\begin{align}
m^2\ge -\frac{d^2}{4},
\end{align}$$

so that $\nu$ is real.

### Bulk Green function

The scalar Green function is defined by

$$\begin{align}
\left[
z^2\partial_z^2+(1-d)z\partial_z-z^2k^2-m^2
\right]G(k;z,z_1)
=
-z_1^{d+1}\delta(z-z_1).
\end{align}$$

With regularity in the interior and the standard boundary condition near $z=0$,

$$\begin{align}
G(k;z,z_1)
=
(z_>z_<)^{d/2}K_\nu(kz_>)I_\nu(kz_<),
\end{align}$$

where

$$\begin{align}
z_>=\max(z,z_1),
\qquad
z_<=\min(z,z_1).
\end{align}$$

The classical field sourced at $z=z_0$ is therefore

$$\begin{align}
\phi(k,z)
=
c\,z_0^{-\Delta}G(k;z,z_0)j(k).
\end{align}$$

### On-shell generating function

Using the equation of motion, the source-dependent part of the on-shell action is obtained as follows.

The source term has the schematic form $-\int_M\epsilon_M J c z^{-\Delta}\phi$. With

$$\begin{align}
J(k,z)=j(k)z_0^{d+1}\delta(z-z_0),
\end{align}$$

the volume factor $\sqrt g=z^{-d-1}$ cancels $z_0^{d+1}$ at the support of the delta function, so

$$\begin{align}
\int_M\epsilon_M J c z^{-\Delta}\phi
=
\int\frac{d^d k}{(2\pi)^d}
j(k)c z_0^{-\Delta}\phi(-k,z_0).
\end{align}$$

For a quadratic Euclidean action $S_E=\frac{1}{2}\phi K\phi-J_{\mathrm{eff}}\phi$, the classical solution obeys $K\phi_{\mathrm{cl}}=J_{\mathrm{eff}}$ and

$$\begin{align}
S_{E,\mathrm{cl}}
=
-\frac{1}{2}J_{\mathrm{eff}}K^{-1}J_{\mathrm{eff}}.
\end{align}$$

Therefore $\ln Z=-S_{E,\mathrm{cl}}$ gives

$$\begin{align}
\ln Z[j]\simeq -S_{E,\mathrm{cl}}[j]
=
\frac{1}{2}\int\frac{d^d k}{(2\pi)^d}
j(k)
\left[
c^2z_0^{-2\Delta}G(k;z_0,z_0)
\right]
j(-k)
+\text{contact terms}.
\end{align}$$

At coincident radial position,

$$\begin{align}
G(k;z_0,z_0)
=
z_0^dK_\nu(kz_0)I_\nu(kz_0).
\end{align}$$

Thus the kernel is

$$\begin{align}
c^2z_0^{d-2\Delta}K_\nu(kz_0)I_\nu(kz_0).
\end{align}$$

For standard quantization,

$$\begin{align}
\Delta=\Delta_+=\frac{d}{2}+\nu.
\end{align}$$

When $\nu\notin\mathbb Z$,

$$\begin{align}
K_\nu(x)I_\nu(x)
=
\frac{1}{2\nu}
+\text{local powers of }x^2
+
\frac{\Gamma(-\nu)}{2\Gamma(\nu+1)}
\left(\frac{x}{2}\right)^{2\nu}
+O(x^{2\nu+2}).
\end{align}$$

The first terms give divergent or finite contact terms. Here "contact terms" means terms analytic in $k^2$. Their Fourier transforms are derivatives of delta functions supported at coincident boundary points. They are removed, or shifted by finite local counterterms, in the holographic renormalization scheme. The nonanalytic term proportional to $k^{2\nu}$ is the scheme-independent part for non-integer $\nu$.

The finite nonlocal term is

$$\begin{align}
\langle O(k)O(-k)\rangle_{\mathrm{nonlocal}}
=
c^2
\frac{\Gamma(-\nu)}{2\Gamma(\nu+1)}
\left(\frac{k}{2}\right)^{2\nu}.
\end{align}$$

With the convenient normalization

$$\begin{align}
c=\sqrt{2\nu},
\end{align}$$

this becomes

$$\begin{align}
\langle O(k)O(-k)\rangle_{\mathrm{nonlocal}}
=
\frac{\Gamma(-\nu)}{\Gamma(\nu)}
\left(\frac{k}{2}\right)^{2\nu}.
\end{align}$$

Fourier transforming gives

$$\begin{align}
\langle O(x)O(0)\rangle
=
\frac{C_{\Delta_+}}{|x|^{2\Delta_+}},
\end{align}$$

where

$$\begin{align}
C_{\Delta}
=
\frac{1}{\pi^{d/2}}
\frac{\Gamma(\Delta)}{\Gamma(\Delta-d/2)}.
\end{align}$$

### Integer $\nu$ and logarithmic terms

When $\nu=n\in\mathbb N$, the nonlocal part is obtained from the logarithmic branch of $K_n$:

$$\begin{align}
\langle O(k)O(-k)\rangle_{\mathrm{nonlocal}}
\propto
k^{2n}\log k.
\end{align}$$

More explicitly, after removing local counterterms,

$$\begin{align}
\langle O(k)O(-k)\rangle_{\mathrm{nonlocal}}
=
\frac{2(-1)^{n+1}}{n\Gamma(n)^2}
\left(\frac{k}{2}\right)^{2n}\log k
\end{align}$$

This formula is the finite logarithmic remainder obtained by analytic continuation from non-integer $\nu$. The pole in $\Gamma(-\nu)$ multiplies a local $k^{2n}$ term and is absorbed by counterterms; the scale-dependent remainder is $k^{2n}\log k$. In position space the renormalized distribution is still the conformal two-point function

$$\begin{align}
\langle O(x)O(0)\rangle
=
\frac{C_{\Delta_+}}{|x|^{2\Delta_+}}.
\end{align}$$

### Alternate quantization

For

$$\begin{align}
0<\nu<1,
\end{align}$$

both near-boundary branches are compatible with the usual unitarity window, and one may choose alternate quantization with

$$\begin{align}
\Delta_-=\frac{d}{2}-\nu.
\end{align}$$

This is not obtained by simply keeping the same standard-quantization source convention. It corresponds to exchanging which coefficient in the near-boundary expansion is treated as the source, or equivalently to a Legendre transform of the standard generating functional.

The near-boundary expansion has the schematic form

$$\begin{align}
\phi(k,z)
=
z^{\Delta_-}\alpha(k)
+z^{\Delta_+}\beta(k)
+\cdots.
\end{align}$$

Standard quantization treats $\alpha$ as the source and $\beta$ as the response. Alternate quantization treats $\beta$ as the source and gives an operator of dimension $\Delta_-$.

Equivalently, after subtracting local terms, the alternate-quantization quadratic kernel is the inverse of the standard one, up to the sign convention of the Legendre transform:

$$\begin{align}
\mathcal G_-(k)
\simeq
-\mathcal G_+(k)^{-1}.
\end{align}$$

For the normalization $c=\sqrt{2\nu}$ used above,

$$\begin{align}
\mathcal G_+(k)
=
\frac{\Gamma(-\nu)}{\Gamma(\nu)}
\left(\frac{k}{2}\right)^{2\nu},
\qquad
\mathcal G_-(k)
\propto
\frac{\Gamma(\nu)}{\Gamma(-\nu)}
\left(\frac{k}{2}\right)^{-2\nu}.
\end{align}$$

The power $k^{-2\nu}$ Fourier transforms to a position-space two-point function with dimension $\Delta_-=d/2-\nu$.

### Interaction vertex

For a weak scalar interaction

$$\begin{align}
S_{\mathrm{int}}
=
\frac{\lambda}{n!}\int_M\epsilon_M\phi^n,
\end{align}$$

the first correction to the generating functional is the contact Witten diagram

$$\begin{align}
\ln Z[j]\big|_{O(\lambda)}
=
-\frac{\lambda}{n!}
\int_0^\infty\frac{dz}{z^{d+1}}
\int\prod_{a=1}^n\frac{d^d k_a}{(2\pi)^d}
(2\pi)^d\delta^{(d)}\left(\sum_{a=1}^n k_a\right)
\prod_{a=1}^n K_{\Delta_+}(k_a,z;z_0)j(k_a),
\end{align}$$

where

$$\begin{align}
K_{\Delta_+}(k,z;z_0)
=
c\,z_0^{-\Delta_+}G(k;z,z_0).
\end{align}$$

Taking $z_0\to0$ gives the usual bulk-to-boundary propagator representation of the scalar $n$-point contact diagram. Higher orders in $\lambda$ insert additional bulk vertices connected by the bulk-bulk propagator $G(k;z,z_1)$.

### Holographic rule for scalar fields

For standard scalar quantization:

1. Use the pre-boundary field

$$\begin{align}
\widetilde\phi(x,z_0)=c\,z_0^{-\Delta_+}\phi(x,z_0),
   \qquad
   \Delta_+=\frac{d}{2}+\sqrt{\frac{d^2}{4}+m^2}.
\end{align}$$

1. Use the bulk propagator

$$\begin{align}
\langle\phi(k,z_1)\phi(-k,z_2)\rangle
   =
   (z_>z_<)^{d/2}
   K_{\Delta_+-d/2}(kz_>)
   I_{\Delta_+-d/2}(kz_<).
\end{align}$$

1. After discarding contact terms and taking $z_0\to0$,

$$\begin{align}
\langle\widetilde\phi(x)\widetilde\phi(0)\rangle
   =
   \langle O(x)O(0)\rangle
   =
   \frac{C_{\Delta_+}}{|x|^{2\Delta_+}}.
\end{align}$$

## Electromagnetic field

This section gives the complete Maxwell calculation in the same pre-boundary extrapolate convention. The main point is that the direct vector coupling computes the standard conserved-current two-point function, while a field-strength coupling computes a different operator.

### Direct coupling to $A_i$

Work in Euclidean AdS$_{d+1}$ with

$$\begin{align}
ds^2=\frac{1}{z^2}\left(dz^2+\delta_{ij}dx^idx^j\right),
\qquad i,j=1,\ldots,d.
\end{align}$$

Take the Maxwell action with a source localized on $z=z_0$:

$$\begin{align}
S_E[A,j]
=
\frac{1}{4g_{d+1}^2}\int_M\epsilon_M F_{\mu\nu}F^{\mu\nu}
-\int_M\epsilon_M J^i c\Omega^{1-\Delta}A_i,
\end{align}$$

where

$$\begin{align}
J^i(x,z)=j^i(x)z_0^{d+1}\delta(z-z_0).
\end{align}$$

The physical transverse sector can be described in radial gauge:

$$\begin{align}
A_z=0,
\qquad
\partial_iA_i=0.
\end{align}$$

The Maxwell equation for tangent components is

$$\begin{align}
\nabla_\mu F^{\mu i}
=
g_{d+1}^2J^i c\Omega^{1-\Delta}.
\end{align}$$

Away from the source hypersurface, this becomes

$$\begin{align}
z^2\partial_z^2A_i+(3-d)z\partial_zA_i
+z^2\delta^{mn}\partial_m\partial_nA_i=0.
\end{align}$$

After Fourier transformation,

$$\begin{align}
A_i(x,z)=\int\frac{d^d k}{(2\pi)^d}e^{ik\cdot x}A_i(k,z),
\qquad
k=\sqrt{\delta^{ij}k_ik_j},
\end{align}$$

the radial equation is

$$\begin{align}
\left[
z^2\partial_z^2+(3-d)z\partial_z-z^2k^2
\right]A_i(k,z)=0.
\end{align}$$

Its independent radial solutions are

$$\begin{align}
u_1(k,z)=z^{d/2-1}I_{d/2-1}(kz),
\qquad
u_2(k,z)=z^{d/2-1}K_{d/2-1}(kz).
\end{align}$$

The $K$ branch is regular in the interior $z\to\infty$.

### Transverse source and propagator

Gauge invariance implies that only the transverse part of the source is physical. In momentum space,

$$\begin{align}
j_i(k)\quad\mapsto\quad \pi_{ij}(k)j_j(k),
\qquad
\pi_{ij}(k)=\delta_{ij}-\frac{k_ik_j}{k^2}.
\end{align}$$

Equivalently, one may choose a transverse representative satisfying

$$\begin{align}
k_ij_i(k)=0.
\end{align}$$

The Green function in the transverse sector is

$$\begin{align}
\left[
z^{d+1}\partial_z\left(z^{3-d}\partial_z\right)-z^4k^2
\right]
G_T(k;z,z_1)
=-z_1^{d+1}\delta(z-z_1),
\end{align}$$

with

$$\begin{align}
G_T(k;z,z_1)
=(z_>z_<)^{d/2-1}
K_{d/2-1}(kz_>)I_{d/2-1}(kz_<).
\end{align}$$

Thus

$$\begin{align}
\langle A_i(k,z)A_j(-k,z_1)\rangle
=
g_{d+1}^2\pi_{ij}(k)G_T(k;z,z_1).
\end{align}$$

This is the vector analogue of the scalar bulk propagator, with the scalar kernel replaced by the Maxwell radial kernel and multiplied by the transverse projector.

### Pre-boundary operator and on-shell action

For a covariant vector field, the extrapolated field has Weyl factor

$$\begin{align}
O_i(x,z_0)=c\,\Omega(z_0)^{1-\Delta}A_i(x,z_0).
\end{align}$$

The conserved-current dimension is

$$\begin{align}
\Delta_J=d-1.
\end{align}$$

Since $\Omega=z$, the pre-boundary current operator is

$$\begin{align}
O_i(x,z_0)=c\,z_0^{2-d}A_i(x,z_0).
\end{align}$$

The classical solution induced by the source is

$$\begin{align}
A_i(k,z)
=
g_{d+1}^2c\,z_0^{2-d}
\pi_{ij}(k)G_T(k;z,z_0)j_j(k).
\end{align}$$

Substituting into the on-shell action gives the quadratic generating functional

$$\begin{align}
\ln Z[j]
=
\frac{1}{2}\int\frac{d^d k}{(2\pi)^d}
j_i(k)
\left[
c^2g_{d+1}^2z_0^{4-2d}
\pi_{ij}(k)G_T(k;z_0,z_0)
\right]
j_j(-k)
+\text{contact terms}.
\end{align}$$

Since

$$\begin{align}
G_T(k;z_0,z_0)
=
z_0^{d-2}K_\nu(kz_0)I_\nu(kz_0),
\qquad
\nu=\frac{d}{2}-1,
\end{align}$$

the kernel entering $\ln Z[j]$ is

$$\begin{align}
c^2g_{d+1}^2z_0^{2-d}
K_\nu(kz_0)I_\nu(kz_0)\pi_{ij}(k).
\end{align}$$

### Odd-dimensional boundary

When $\nu\notin\mathbb Z$, equivalently when $d$ is odd,

$$\begin{align}
K_\nu(x)I_\nu(x)
=
\text{local powers of }x^2
+
\frac{\Gamma(-\nu)}{2\Gamma(\nu+1)}
\left(\frac{x}{2}\right)^{2\nu}
+O(x^{2\nu+2}).
\end{align}$$

The local powers are contact terms after Fourier transformation. The finite nonlocal kernel is

$$\begin{align}
\langle J_i(k)J_j(-k)\rangle_{\mathrm{nonlocal}}
=
C_J^{(k)}\pi_{ij}(k)k^{d-2},
\end{align}$$

where

$$\begin{align}
C_J^{(k)}
=
c^2g_{d+1}^2
\frac{\Gamma(1-d/2)}{2\Gamma(d/2)}
2^{2-d}
\end{align}$$

up to the sign convention used for $S_E$ and $\ln Z$.

Fourier transforming gives the conformal current two-point function

$$\begin{align}
\langle J_i(x)J_j(0)\rangle
=
C_J\frac{I_{ij}(x)}{|x|^{2(d-1)}},
\qquad
I_{ij}(x)=\delta_{ij}-2\frac{x_ix_j}{x^2}.
\end{align}$$

Here $C_J$ is the position-space normalization corresponding to $C_J^{(k)}$. With the Fourier convention used here,

$$\begin{align}
\int\frac{d^d k}{(2\pi)^d}
e^{ik\cdot x}
\pi_{ij}(k)k^{d-2}
=
\mathcal A_J
\frac{I_{ij}(x)}{|x|^{2(d-1)}},
\end{align}$$

where analytic continuation gives

$$\begin{align}
\mathcal A_J
=
\frac{2^{d-2}(d-1)\Gamma(d-2)}
{\pi^{d/2}\Gamma(1-d/2)}.
\end{align}$$

Thus $C_J=C_J^{(k)}\mathcal A_J$, namely

$$\begin{align}
C_J
=
c^2g_{d+1}^2
\frac{(d-1)\Gamma(d-2)}
{2\pi^{d/2}\Gamma(d/2)},
\end{align}$$

up to the same overall sign convention in the Euclidean source term.

### Even-dimensional boundary

When $d$ is even, $\nu=d/2-1$ is an integer. The nonlocal branch of $K_\nu$ becomes logarithmic:

$$\begin{align}
K_\nu(x)I_\nu(x)
=
\text{local terms}
+
(-1)^{\nu+1}\frac{1}{\Gamma(\nu+1)^2}
\left(\frac{x}{2}\right)^{2\nu}\log x
+\cdots.
\end{align}$$

Since $\log(kz_0)=\log z_0+\log k$, the $\log z_0$ term is local in momentum space and is absorbed by a logarithmic counterterm. After removing local counterterms, the momentum-space correlator is

$$\begin{align}
\langle J_i(k)J_j(-k)\rangle_{\mathrm{nonlocal}}
\propto
\pi_{ij}(k)k^{d-2}\log k.
\end{align}$$

This is the standard holographic result in even boundary dimension. For example, in $d=4$,

$$\begin{align}
\langle J_i(k)J_j(-k)\rangle_{\mathrm{nonlocal}}
\propto
\pi_{ij}(k)k^2\log k.
\end{align}$$

The position-space answer is still fixed by conformal symmetry:

$$\begin{align}
\langle J_i(x)J_j(0)\rangle
=
C_J\frac{I_{ij}(x)}{|x|^{2(d-1)}}.
\end{align}$$

The logarithm is a momentum-space feature of the renormalized distribution.

### The special case $d=2$

For $d=2$ one has $\nu=0$ and

$$\begin{align}
K_0(kz)I_0(kz)
=
-\log z-\log\frac{k}{2}-\gamma+O(z^2\log z).
\end{align}$$

The normalization choice $c=\sqrt{d-2}$ is not meaningful in this case. The Maxwell field in AdS$_3$ requires a separate logarithmic renormalization. The nonlocal kernel is logarithmic rather than zero:

$$\begin{align}
\langle J_i(k)J_j(-k)\rangle_{\mathrm{nonlocal}}
\propto
\pi_{ij}(k)\log k.
\end{align}$$

### Field-strength coupling

One can instead couple the source to a field-strength operator

$$\begin{align}
O_i^{(\xi)}(x,z)
=
c\,\Omega^{1-\Delta}F_{ij}(x,z)\xi^j(x),
\end{align}$$

where $\xi^j$ is a fixed tangent vector field. This coupling enters the equation of motion through the antisymmetric combination

$$\begin{align}
J_{ij}=j_i\xi_j-j_j\xi_i.
\end{align}$$

Therefore the source is not constrained in the same way as the direct $j^iA_i$ coupling. However, this construction computes the correlator of $F_{ij}\xi^j$, not the ordinary conserved current sourced by $A_i$.

The two-point function is obtained by differentiating the vector propagator:

$$\begin{align}
\langle O_i^{(\xi)}(k_1)O_j^{(\xi)}(k_2)\rangle
=
\int\frac{d^d q}{(2\pi)^d}
\Xi_{ij}(k_1,k_2;q;\xi)
\left[
c^2g_{d+1}^2z_0^{2-d}
K_\nu(qz_0)I_\nu(qz_0)
\right],
\end{align}$$

where $\Xi_{ij}$ contains the two derivative factors from $F_{ij}$ and the two factors of $\xi$. If $\xi$ is not constant, the result is not diagonal in momentum space because the background $\xi(x)$ breaks translation invariance.

If $\xi$ is constant, the schematic tensor structure reduces to

$$\begin{align}
\langle O_i^{(\xi)}(k)O_j^{(\xi)}(-k)\rangle
\propto
\left(k_i\delta_m{}^a-k_m\delta_i{}^a\right)
\left(k_j\delta_n{}^b-k_n\delta_j{}^b\right)
\xi_a\xi_b\,\pi_{mn}(k)\,\mathcal K(k),
\end{align}$$

where

$$
\mathcal K(k)
\sim
\begin{cases}
k^{d-2}, & d \text{ odd},\\
k^{d-2}\log k, & d \text{ even}.
\end{cases}
$$

The derivative factors give an additional two powers of momentum relative to the direct current correlator. Thus this operator has a different tensor structure and scaling behavior from the standard conserved current.

For example, take a frame with $k=(K,0,\ldots,0)$ and decompose a constant $\xi$ into longitudinal and transverse parts. The transverse projector is $\pi_{mn}=\mathrm{diag}(0,1,\ldots,1)$ in this frame, and the tensor above reduces to a component proportional to

$$\begin{align}
K^2\xi_\perp^2\,\delta_i{}^1\delta_j{}^1\,\mathcal K(K).
\end{align}$$

This is not proportional to the conserved-current tensor $I_{ij}(x)$ after Fourier transformation; it is the two-point function of the projected field strength operator.

### Holographic rule for Maxwell fields

For the direct vector extrapolate dictionary:

1. Use the pre-boundary field

$$\begin{align}
\widetilde A_i(x,z_0)=c\,z_0^{2-d}A_i(x,z_0).
\end{align}$$

1. Use the transverse bulk propagator

$$\begin{align}
\langle A_i(k,z_1)A_j(-k,z_2)\rangle
   =
   g_{d+1}^2\pi_{ij}(k)
   (z_>z_<)^{d/2-1}
   K_{d/2-1}(kz_>)I_{d/2-1}(kz_<).
\end{align}$$

1. The boundary operator has dimension

$$\begin{align}
\Delta_J=d-1.
\end{align}$$

1. After discarding contact terms and taking $z_0\to0$,

$$\begin{align}
\langle \widetilde A_i(x)\widetilde A_j(0)\rangle
   =
   \langle J_i(x)J_j(0)\rangle
   =
   C_J\frac{I_{ij}(x)}{|x|^{2(d-1)}}.
\end{align}$$

For the field-strength coupling, replace $\widetilde A_i$ by $c\Omega^{1-\Delta}F_{ij}\xi^j$ and differentiate the transverse propagator. The result is not the same as the direct conserved-current correlator.

## Linearized gravity

This section completes the linear-gravity part of `note.pdf`. The gravity section in the PDF starts from the Einstein-Hilbert action, but the subsequent calculation reuses Maxwell variables such as $A_i$ and $F_{\mu\nu}$. The correct linearized-gravity calculation should instead use a metric perturbation and its transverse-traceless propagator.

### Setup

Work in Euclidean AdS$_{d+1}$ with Poincare metric

$$\begin{align}
ds^2 = \bar g_{\mu\nu} dx^\mu dx^\nu
= \frac{1}{z^2}\left(dz^2+\delta_{ij}dx^i dx^j\right),
\qquad i,j=1,\ldots,d.
\end{align}$$

Set the AdS radius to $L=1$. The bulk action is

$$\begin{align}
S_E
= -\frac{1}{16\pi G_N}\int_M \epsilon_M (R-2\Lambda)
-\frac{1}{8\pi G_N}\int_{\partial M}\epsilon_{\partial M}K
-\frac{1}{2}\int_M \epsilon_M J^{ij} O_{ij},
\end{align}$$

with

$$\begin{align}
\Lambda=-\frac{d(d-1)}{2}.
\end{align}$$

The linearized field is introduced by

$$\begin{align}
g_{\mu\nu}=\bar g_{\mu\nu}+h_{\mu\nu}.
\end{align}$$

Use Fefferman-Graham gauge and transverse-traceless gauge:

$$\begin{align}
h_{z\mu}=0,\qquad
\partial^i H_{ij}=0,\qquad
H^i{}_i=0,
\end{align}$$

where the mixed boundary fluctuation is

$$\begin{align}
H_{ij}=z^2 h_{ij}.
\end{align}$$

The source is localized on the pre-boundary surface $z=z_0$:

$$\begin{align}
J^{ij}(x,z)=j^{ij}(x)z_0^{d+1}\delta(z-z_0),
\end{align}$$

and it must be transverse-traceless if we only source the TT graviton sector:

$$\begin{align}
k_i j^{ij}(k)=0,\qquad \delta_{ij}j^{ij}(k)=0.
\end{align}$$

For a rank-two covariant field, the extrapolate-dictionary operator has the Weyl factor

$$\begin{align}
O_{ij}(x,z_0)=c\,\Omega(z_0)^{2-\Delta}h_{ij}(x,z_0).
\end{align}$$

Since $h_{ij}=z^{-2}H_{ij}$ and $\Omega=z$, the stress-tensor choice $\Delta=d$ gives

$$\begin{align}
O_{ij}(x,z_0)=c\,z_0^{-d}H_{ij}(x,z_0).
\end{align}$$

Thus the induced boundary operator is

$$\begin{align}
T_{ij}(x)=\lim_{z_0\to0}c\,z_0^{-d}H_{ij}(x,z_0).
\end{align}$$

### Linearized equation of motion

In the TT sector, the linearized Einstein equation around EAdS reduces to the massless scalar radial equation for each polarization of $H_{ij}$:

$$\begin{align}
\left[
z^{d+1}\partial_z\left(z^{1-d}\partial_z\right)
+z^2\delta^{mn}\partial_m\partial_n
\right]H_{ij}=0.
\end{align}$$

After Fourier transformation,

$$\begin{align}
H_{ij}(x,z)=\int\frac{d^d k}{(2\pi)^d}e^{ik\cdot x}H_{ij}(k,z),
\qquad
k=\sqrt{\delta^{ij}k_i k_j},
\end{align}$$

the equation becomes

$$\begin{align}
\left[
z^2\partial_z^2+(1-d)z\partial_z-z^2k^2
\right]H_{ij}(k,z)=0.
\end{align}$$

The basis of radial solutions is

$$\begin{align}
u_1(k,z)=z^{d/2}I_{d/2}(kz),
\qquad
u_2(k,z)=z^{d/2}K_{d/2}(kz).
\end{align}$$

The mode $u_2$ is regular in the interior $z\to\infty$, while $u_1$ is the regular branch near the boundary for the Green-function construction.

### TT projector

Define the transverse projector

$$\begin{align}
\pi_{ij}(k)=\delta_{ij}-\frac{k_i k_j}{k^2}.
\end{align}$$

The transverse-traceless spin-two projector is

$$\begin{align}
\Pi_{ij,kl}(k)
=\frac{1}{2}\left(\pi_{ik}\pi_{jl}+\pi_{il}\pi_{jk}\right)
-\frac{1}{d-1}\pi_{ij}\pi_{kl}.
\end{align}$$

It satisfies

$$\begin{align}
k^i\Pi_{ij,kl}=0,\qquad
\delta^{ij}\Pi_{ij,kl}=0,
\qquad
\Pi_{ij}{}^{mn}\Pi_{mn,kl}=\Pi_{ij,kl}.
\end{align}$$

### Bulk two-point function

The Schwinger-Dyson equation for the TT propagator has the form

$$\begin{align}
\left[
z^{d+1}\partial_z\left(z^{1-d}\partial_z\right)-z^2k^2
\right]
\langle H_{ij}(k,z)H_{kl}(-k,z_1)\rangle
=-\mathcal N_g^{-1}z_1^{d+1}\delta(z-z_1)\Pi_{ij,kl}(k),
\end{align}$$

where $\mathcal N_g$ is the quadratic-action normalization. With the convention

$$\begin{align}
S_E^{(2)}
=\frac{1}{64\pi G_N}\int dz\frac{d^d k}{(2\pi)^d}
z^{1-d}
\left[
\partial_z H_{ij}(k,z)\partial_z H_{ij}(-k,z)
+k^2H_{ij}(k,z)H_{ij}(-k,z)
\right],
\end{align}$$

one has

$$\begin{align}
\mathcal N_g=\frac{1}{32\pi G_N}.
\end{align}$$

The factor of two comes from writing the quadratic action in the canonical form

$$\begin{align}
S_E^{(2)}
=
\frac{1}{2}\mathcal N_g
\int dz\frac{d^d k}{(2\pi)^d}
z^{1-d}
\left[
\partial_z H_{ij}(k,z)\partial_z H_{ij}(-k,z)
+k^2H_{ij}(k,z)H_{ij}(-k,z)
\right].
\end{align}$$

Varying this action gives the Sturm-Liouville operator

$$\begin{align}
\mathcal N_g
\left[
z^{d+1}\partial_z\left(z^{1-d}\partial_z\right)
-z^2k^2
\right],
\end{align}$$

so the inverse propagator carries the normalization $\mathcal N_g$ and the Green function carries $\mathcal N_g^{-1}=32\pi G_N$.

The TT bulk propagator is therefore

$$\begin{align}
\langle H_{ij}(k,z_1)H_{kl}(-k,z_2)\rangle
=32\pi G_N\,
\Pi_{ij,kl}(k)
(z_>z_<)^{d/2}K_{d/2}(kz_>)I_{d/2}(kz_<),
\end{align}$$

where

$$\begin{align}
z_>=\max(z_1,z_2),
\qquad
z_<=\min(z_1,z_2).
\end{align}$$

This is the direct spin-two analogue of the massless scalar propagator, with the scalar kernel multiplied by the TT projector.

### Generating function

The localized source produces the classical field

$$\begin{align}
H_{ij}(k,z)
=c\,z_0^{-d}
j^{kl}(k)
\langle H_{kl}(k,z_0)H_{ij}(-k,z)\rangle.
\end{align}$$

At the saddle point,

$$\begin{align}
\ln Z[j]\simeq -S_{E,\mathrm{cl}}[j].
\end{align}$$

The part quadratic in the source is

$$\begin{align}
\ln Z[j]
=\frac{1}{2}\int\frac{d^d k}{(2\pi)^d}
j^{ij}(k)
\left[
c^2 z_0^{-2d}
\langle H_{ij}(k,z_0)H_{kl}(-k,z_0)\rangle
\right]
j^{kl}(-k)
+\text{contact terms}.
\end{align}$$

Using the propagator at coincident radial position,

$$\begin{align}
\langle H_{ij}(k,z_0)H_{kl}(-k,z_0)\rangle
=32\pi G_N\,\Pi_{ij,kl}(k)\,
z_0^dK_{d/2}(kz_0)I_{d/2}(kz_0),
\end{align}$$

the small-$z_0$ expansion has two types of terms:

- divergent local terms, which are contact terms removed by holographic counterterms;
- a finite nonlocal term proportional to $k^d$ for odd $d$, or $k^d\log k$ for even $d$.

For odd $d$,

$$\begin{align}
z_0^dK_{d/2}(kz_0)I_{d/2}(kz_0)
=\text{contact terms}
+z_0^{2d}
\frac{1}{d}
\frac{\Gamma(-d/2)}{\Gamma(d/2)}
\left(\frac{k}{2}\right)^d
+O(z_0^{2d+2}).
\end{align}$$

Therefore

$$\begin{align}
\ln Z[j]
=\frac{1}{2}\int\frac{d^d k}{(2\pi)^d}
j^{ij}(k)
\left[
\mathcal C_g
\Pi_{ij,kl}(k)
\left(\frac{k}{2}\right)^d
\right]
j^{kl}(-k)
+\text{contact terms},
\end{align}$$

with

$$\begin{align}
\mathcal C_g
=32\pi G_N c^2
\frac{1}{d}
\frac{\Gamma(-d/2)}{\Gamma(d/2)}.
\end{align}$$

The extrapolate factors exactly cancel the radial powers in the nonlocal term:

$$\begin{align}
z_0^{-2d}\cdot z_0^d\cdot z_0^d=z_0^0.
\end{align}$$

For even $d$, replace the nonlocal factor by the logarithmic continuation

$$\begin{align}
\frac{\Gamma(-d/2)}{\Gamma(d/2)}
\left(\frac{k}{2}\right)^d
\quad\longrightarrow\quad
\frac{2(-1)^{d/2+1}}{(d/2)\Gamma(d/2)^2}
\left(\frac{k}{2}\right)^d\log k.
\end{align}$$

### Boundary stress-tensor two-point function

By definition,

$$\begin{align}
\langle T_{ij}(k)T_{kl}(-k)\rangle
=
\left.
\frac{\delta^2\ln Z[j]}
{\delta j^{ij}(k)\delta j^{kl}(-k)}
\right|_{j=0}.
\end{align}$$

Thus in momentum space,

$$\begin{align}
\langle T_{ij}(k)T_{kl}(-k)\rangle
=
\mathcal C_g
\Pi_{ij,kl}(k)
\left(\frac{k}{2}\right)^d
\end{align}$$

for odd $d$, up to contact terms. For even $d$, the nonlocal part is instead proportional to

$$\begin{align}
\Pi_{ij,kl}(k)k^d\log k.
\end{align}$$

In position space the correlator is fixed by conformal symmetry:

$$\begin{align}
\langle T_{ij}(x)T_{kl}(0)\rangle
=
C_T
\frac{\mathcal I_{ij,kl}(x)}{|x|^{2d}},
\end{align}$$

where

$$\begin{align}
I_{ij}(x)=\delta_{ij}-2\frac{x_i x_j}{x^2},
\end{align}$$

and

$$\begin{align}
\mathcal I_{ij,kl}(x)
=
\frac{1}{2}
\left[
I_{ik}(x)I_{jl}(x)+I_{il}(x)I_{jk}(x)
\right]
-\frac{1}{d}\delta_{ij}\delta_{kl}.
\end{align}$$

The overall coefficient $C_T$ is fixed by the normalization of the Einstein-Hilbert action and by the convention for the source coupling. With the standard holographic stress-tensor convention

$$\begin{align}
\delta W[g_{(0)}]
=\frac{1}{2}\int d^d x\sqrt{g_{(0)}}\,
\langle T^{ij}\rangle\delta g_{(0)ij},
\end{align}$$

Einstein gravity gives

$$\begin{align}
C_T
=
\frac{d+1}{d-1}
\frac{\Gamma(d+1)}{\pi^{d/2}\Gamma(d/2)}
\frac{L^{d-1}}{8\pi G_N}.
\end{align}$$

In the pre-boundary extrapolate convention above, this same coefficient is obtained by choosing $c$ so that the finite nonlocal part of the kernel matches the standard stress-tensor normalization. Equivalently, the momentum-space coefficient

$$\begin{align}
\mathcal C_g\left(\frac{k}{2}\right)^d
\end{align}$$

is first Fourier transformed together with the TT projector to the conformal tensor structure $\mathcal I_{ij,kl}(x)/|x|^{2d}$; the remaining scalar coefficient is then identified with $C_T$. This note keeps $c$ explicit until that final matching.

### Holographic rule for linear gravity

For the TT sector of linearized gravity:

1. The physical pre-boundary field is

$$\begin{align}
\widetilde H_{ij}(x,z_0)=c\,z_0^{-d}H_{ij}(x,z_0).
\end{align}$$

1. The bulk TT field propagates as

$$\begin{align}
\langle H_{ij}(k,z_1)H_{kl}(-k,z_2)\rangle
   =
   32\pi G_N
   \Pi_{ij,kl}(k)
   (z_>z_<)^{d/2}
   K_{d/2}(kz_>)I_{d/2}(kz_<).
\end{align}$$

1. The boundary operator has dimension

$$\begin{align}
\Delta_T=d.
\end{align}$$

1. After discarding local counterterms and taking $z_0\to0$,

$$\begin{align}
\langle \widetilde H_{ij}(x)\widetilde H_{kl}(0)\rangle
   =
   \langle T_{ij}(x)T_{kl}(0)\rangle
   =
   C_T\frac{\mathcal I_{ij,kl}(x)}{|x|^{2d}}.
\end{align}$$

### What was missing in the PDF

The gravity derivation should not use the Maxwell projector alone. The necessary replacements are:

- replace $A_i$ by the TT metric variable $H_{ij}=z^2h_{ij}$;
- replace the vector transverse projector $\pi_{ij}$ by the spin-two TT projector $\Pi_{ij,kl}$;
- use $\Delta=d$, not $\Delta=d-1$;
- obtain the boundary correlator of $T_{ij}$, not of a vector operator;
- keep track of the Einstein-Hilbert normalization, which fixes $C_T$ through $G_N$.

## Vector-field checks and corrections

This section records the corrected reading of the Maxwell parts of `note.pdf`. The radial equation and the transverse propagator in the direct Maxwell coupling are essentially correct, but several conclusions about boundary dimensions, logarithmic terms, and the second Maxwell coupling need to be sharpened.

### Direct Maxwell coupling

Start from the Euclidean Maxwell action with a pre-boundary source,

$$\begin{align}
S_E[A,j]
=
\frac{1}{4g_{d+1}^2}\int_M \epsilon_M F_{\mu\nu}F^{\mu\nu}
-\int_M\epsilon_M J^i c\Omega^{1-\Delta}A_i.
\end{align}$$

In Poincare coordinates,

$$\begin{align}
ds^2=\frac{1}{z^2}(dz^2+\delta_{ij}dx^idx^j).
\end{align}$$

Use radial gauge and transverse gauge for the physical sector:

$$\begin{align}
A_z=0,\qquad \partial_iA_i=0.
\end{align}$$

Then the tangent components obey

$$\begin{align}
z^2\partial_z^2A_i+(3-d)z\partial_zA_i-z^2k^2A_i=0.
\end{align}$$

The correct radial basis is

$$\begin{align}
u_1(k,z)=z^{d/2-1}I_{d/2-1}(kz),
\qquad
u_2(k,z)=z^{d/2-1}K_{d/2-1}(kz).
\end{align}$$

The transverse projector is

$$\begin{align}
\pi_{ij}(k)=\delta_{ij}-\frac{k_i k_j}{k^2}.
\end{align}$$

With the Maxwell normalization above, the transverse bulk propagator is

$$\begin{align}
\langle A_i(k,z_1)A_j(-k,z_2)\rangle
=
g_{d+1}^2\,
\pi_{ij}(k)
(z_>z_<)^{d/2-1}
K_{d/2-1}(kz_>)I_{d/2-1}(kz_<).
\end{align}$$

The PDF's propagator has the same kernel, effectively in the convention $g_{d+1}^2=1$.

### Near-boundary behavior

The coincident radial kernel is

$$\begin{align}
G_T(k;z_0,z_0)
=
z_0^{d-2}K_{\nu}(kz_0)I_{\nu}(kz_0),
\qquad
\nu=\frac{d}{2}-1.
\end{align}$$

For non-integer $\nu$,

$$\begin{align}
G_T(k;z_0,z_0)
=
\text{local terms}
+
z_0^{2d-4}
\frac{1}{d-2}
\frac{\Gamma(1-d/2)}{\Gamma(d/2-1)}
\left(\frac{k}{2}\right)^{d-2}
+O(z_0^{2d-2}).
\end{align}$$

The extrapolated vector operator has dimension

$$\begin{align}
\Delta_J=d-1,
\end{align}$$

so

$$\begin{align}
O_i(x,z_0)=c\,z_0^{2-d}A_i(x,z_0).
\end{align}$$

Choosing $c$ to absorb the leading normalization gives the nonlocal part

$$\begin{align}
\langle J_i(k)J_j(-k)\rangle_{\mathrm{nonlocal}}
\propto
\pi_{ij}(k)k^{d-2}.
\end{align}$$

In position space this is the standard conserved-current two-point function:

$$\begin{align}
\langle J_i(x)J_j(0)\rangle
=
C_J\frac{I_{ij}(x)}{|x|^{2(d-1)}},
\qquad
I_{ij}(x)=\delta_{ij}-2\frac{x_ix_j}{x^2}.
\end{align}$$

Thus the vector result is not zero outside odd $d$. Odd $d$ is only the simplest case because the nonlocal term is a pure power in momentum space.

### Even-dimensional and logarithmic cases

When $\nu=d/2-1$ is an integer, the nonlocal term appears through the logarithmic branch of $K_\nu$:

$$\begin{align}
\langle J_i(k)J_j(-k)\rangle_{\mathrm{nonlocal}}
\propto
\pi_{ij}(k)k^{d-2}\log k.
\end{align}$$

This is the expected result in even boundary dimension. For example, in AdS$_5$/CFT$_4$ one obtains

$$\begin{align}
\langle J_i(k)J_j(-k)\rangle_{\mathrm{nonlocal}}
\propto
\pi_{ij}(k)k^2\log k.
\end{align}$$

The case $d=2$ is also special. Since $\nu=0$,

$$\begin{align}
K_0(kz)I_0(kz)
=-\log z-\log\frac{k}{2}-\gamma+O(z^2\log z).
\end{align}$$

The formula $c=\sqrt{d-2}$ degenerates at $d=2$, so the $d=2$ case must be renormalized separately. It should not be interpreted as a vanishing correlator.

### Source conservation

The PDF states the source restriction as

$$\begin{align}
\partial_i j^i=0.
\end{align}$$

This is correct if the source is required to live entirely in the transverse representative compatible with the gauge choice. Conceptually, the stronger statement is:

$$\begin{align}
j_i \quad\longrightarrow\quad \pi_{ij}j_j.
\end{align}$$

The longitudinal part of $j_i$ is pure gauge in the direct $J^iA_i$ coupling and does not affect the gauge-invariant generating functional. Therefore the physical current-current correlator is transverse:

$$\begin{align}
k^i\langle J_i(k)J_j(-k)\rangle=0.
\end{align}$$

For $d\ge3$, the coefficient called $b_1$ in the PDF should be fixed by the boundary condition. The $u_2$ branch contains the non-normalizable near-boundary piece, while the extrapolated field $z^{2-d}A_i$ should have a finite boundary limit after counterterms. Setting $b_1=0$ is therefore a boundary-condition choice, not an arbitrary simplification.

### Field-strength coupling

The second Maxwell construction in the PDF couples the source to

$$\begin{align}
O_i=c\Omega^{1-\Delta}F_{ij}\xi^j.
\end{align}$$

This is not the same operator as the direct vector operator $A_i$. It is a field-strength operator contracted with an external tangent vector $\xi^j$. The equation of motion contains the antisymmetric combination

$$\begin{align}
J_{ij}=j_i\xi_j-j_j\xi_i,
\end{align}$$

so the source does not need to satisfy the same conservation condition as in the direct $J^iA_i$ coupling. However, the resulting two-point function is not the ordinary conserved-current two-point function.

For a general $\xi(x)$, translation invariance is not diagonal in momentum space; the correlator contains a convolution:

$$\begin{align}
\langle O_i(k_1)O_j(k_2)\rangle
=
\int\frac{d^d q}{(2\pi)^d}
\Xi_{ij}(k_1,k_2;q;\xi)
G_T(q;z_0,z_0),
\end{align}$$

where $\Xi_{ij}$ contains two powers of the internal momentum and two factors of $\xi$. Even when $\xi$ is constant, the tensor structure is schematically

$$\begin{align}
\langle O_i(k)O_j(-k)\rangle
\propto
\left(k_i\delta_m{}^a-k_m\delta_i{}^a\right)
\left(k_j\delta_n{}^b-k_n\delta_j{}^b\right)
\xi_a\xi_b\,
\pi_{mn}(k)k^{d-2}.
\end{align}$$

This has additional momentum factors compared with the direct current correlator. Therefore the conclusion

$$\begin{align}
\langle O_i(x)O_j(0)\rangle
\propto
\frac{I_{ij}(x)}{|x|^{2(d-1)}}
\end{align}$$

cannot be reused for the field-strength coupling without an additional argument. The safe statement is that the second Maxwell construction computes the correlator of $F_{ij}\xi^j$, not the standard conserved current sourced by $A_i$.
