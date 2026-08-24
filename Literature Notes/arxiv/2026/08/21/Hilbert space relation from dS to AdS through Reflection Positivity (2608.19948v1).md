---
paper id: 2608.19948v1
title: Hilbert space relation from dS to AdS through Reflection Positivity
authors:
  - Yu-ki Suzuki
publication date: 2026-08-20T12:15
abstract: |-
  For a free scalar one-particle representation on fixed de Sitter space, the paper composes the invariant de Sitter product with equatorial reflection and takes an Osterwalder--Schrader quotient. The principal-series quotient is zero, while a reflection-positive part of the complementary series reconstructs a positive-energy SO(2,d) module whose parameter range matches AdS alternative quantization.
comments: "20 pages"
url: https://arxiv.org/abs/2608.19948v1
summary: "A careful one-particle reconstruction showing when a reflected de Sitter complementary-series Hilbert product becomes an AdS positive-energy module, without analytically continuing the spacetime."
tags: []
---

## Verdict and relevance

Correct under the following precise conditions: the construction is for a free scalar on fixed dS$_{d+1}$, in a chosen one-particle unitary representation, with wavefunctions supported in one hemisphere and with the Osterwalder--Schrader quotient/completion taken after equatorial reflection. Under those conditions, the nonzero complementary-series quotient carries a positive-energy $\mathfrak{so}(2,d)$ module for the reflection-positive range. It is not a dS/AdS equivalence of geometries, interacting QFTs, Fock spaces, or quantum gravities.

This is a medium candidate under `T2-dS-BH-holography`, `T2-spectral`, and `T3-math`. Its strongest value for the vault is the clean separation among an original unitary representation, a new reflected semidefinite form, its null quotient, and the reconstructed positive-energy Hilbert space.

## Source map

- Section 1 states the one-particle result and its limitations.
- Section 2 relates Witten's dS pairing and the Bousso--Maloney--Strominger radial adjoint to equatorial reflection; stereographic projection turns it into inversion of the unit ball.
- Section 3 fixes the $SO_0(1,d+1)$ algebra, scalar principal/complementary series, boundary weights, and the local versus shadow inner products.
- Section 4 constructs the reflected form, proves the principal-series form is zero by support, invokes the Neeb--Ólafsson theorem for the complementary kernel, and defines the OS quotient.
- Section 5 identifies the reflected even/odd decomposition, the $c$-dual $\mathfrak{so}(2,d)$ real form, radial adjoints, and positive-energy semigroup.
- Section 6 maps the reflection-positive range to the Klebanov--Witten alternative-quantization window.
- Section 7 records the one-particle/global-conformal boundary.
- Appendix A derives the principal $L^2$ and complementary shadow products from the bulk Klein--Gordon form after a positive-frequency subspace is chosen.

## Original de Sitter representations

Set the dS radius to one and define

\[
\nu^2=\frac{d^2}{4}-m_{\rm dS}^2,
\qquad
\Delta_\pm=\frac d2\pm\nu.
\]

The scalar principal series has $\nu=i\mu$, $\mu>0$, and uses the local product

\[
(f,g)_\mu=\int_{S^d}d\Omega\,f^*(\Omega)g(\Omega).
\]

The open complementary series has $0<\nu<d/2$ and uses a nonlocal shadow product

\[
(f,g)_\nu
=\int_{S^d}d\Omega\,d\Omega'\,
f^*(\Omega)(1-\Omega\cdot\Omega')^{-\Delta_-}g(\Omega').
\]

Here the distribution basis has weight $\Delta_-$ and its smearing profile has the dual weight $\Delta_+=d-\Delta_-$. The paper emphasizes that these positive one-particle products already include a choice of positive-frequency subspace; the full Klein--Gordon solution space is not positive definite.

## Reflection and the two branches

Reflect the equatorial coordinate,

\[
r_0(\Omega_\perp,\boldsymbol\Omega)
=(-\Omega_\perp,\boldsymbol\Omega),
\]

and let $\theta f=f\circ r_0$. On the closure of smooth states supported in the positive hemisphere, define

\[
(u,v)_{\theta,\kappa}=(u,\theta v)_\kappa.
\]

This is not the original dS Hilbert product.

For the principal series, $u$ and $\theta v$ have disjoint support up to the measure-zero equator, so

\[
(u,v)_{\theta,\mu}=0
\]

for every pair. The entire positive-region space is null and the OS quotient is the zero Hilbert space. This is stronger than a failure of strict positivity: there are no reconstructed states in this realization.

For the complementary series, stereographic projection maps the positive hemisphere to $B_1\subset\mathbb R^d$ and the reflection to radial inversion. After absorbing conformal factors, the reflected kernel is

\[
R_\nu(x,y)
=\left(1-2x\cdot y+|x|^2|y|^2\right)^{-\Delta_-}.
\]

This is exactly the radial-quantization overlap kernel for a scalar primary of dimension $\Delta_-$. The cited Neeb--Ólafsson classification states, for $d\ge2$ within the open complementary series, that it is positive semidefinite exactly when

\[
\nu\le1
\quad\Longleftrightarrow\quad
\Delta_-\ge\frac{d-2}{2}.
\]

The paper's level-two trace descendant supplies the necessary sign test

\[
\left.\partial_x^2\partial_y^2R_\Delta(x,y)\right|_{x=y=0}
=8d\Delta\left(\Delta-\frac{d-2}{2}\right).
\]

It detects the same bound but does not by itself prove sufficiency; sufficiency comes from the cited reflection-positivity theorem.

## Null quotient and change of real form

Let $\mathcal N_\nu$ be the radical of the reflected form. The reconstructed space is

\[
\widehat{\mathcal E}_\nu
=\overline{\mathcal E_{\nu,+}/\mathcal N_\nu}^{\,\|\cdot\|_{\theta,\nu}}.
\]

Equatorial reflection defines an involution $\tau$ of $\mathfrak{so}(1,d+1)$ and a split

\[
\mathfrak g=\mathfrak h\oplus\mathfrak q,
\qquad
\tau|_{\mathfrak h}=+1,
\qquad
\tau|_{\mathfrak q}=-1.
\]

After the OS quotient, reflection-odd generators are symmetric; multiplying them by $i$ produces skew generators. The real algebra becomes

\[
\mathfrak g^c=\mathfrak h\oplus i\mathfrak q
\simeq\mathfrak{so}(2,d).
\]

In conformal generators, the resulting adjoint is

\[
D^{\dagger_{\rm OS}}=D,
\qquad
P_i^{\dagger_{\rm OS}}=K_i,
\qquad
M_{ij}^{\dagger_{\rm OS}}=-M_{ij}.
\]

Inward radial dilations preserve the unit ball and induce a self-adjoint contraction semigroup

\[
T_t=e^{-tD_{\rm OS}},
\qquad
D_{\rm OS}\ge0.
\]

The kernel state at the origin has energy $\Delta_-$, and translations generate a dense lowest-weight module. This is the representation-theoretic AdS output; the dS hyperboloid itself was never continued into AdS.

## AdS alternate-quantization window

The paper identifies spectral parameters, not masses or radii:

\[
\nu_{\rm AdS}=\nu_{\rm dS}=\nu,
\qquad
\nu_{\rm AdS}^2=\frac{d^2}{4}+m_{\rm AdS}^2.
\]

Thus $0<\nu<1$ is equivalent to

\[
-\frac{d^2}{4}<m_{\rm AdS}^2< -\frac{d^2}{4}+1,
\]

the open Klebanov--Witten alternative-quantization window. At $\nu=1$ and $d>2$, the scalar unitarity bound is saturated and the level-two trace descendant becomes null, producing a short OS-reconstructed module. This endpoint belongs to the reflection-positive semidefinite range but not to the open alternative-quantization window.

## Translation to current quantization work

The transferable lesson is a four-step claim hierarchy:

1. start from an already unitary regulated or one-particle representation;
2. introduce a distinct reflected sesquilinear form;
3. quotient its radical and complete;
4. only then identify the reconstructed real form and spectrum.

A positive or finite pairing before the quotient does not identify Hilbert spaces. Conversely, the zero principal-series OS quotient does not say that the original principal-series dS representation was nonunitary. This distinction is directly useful when separating finite-regulator canonical maps, continuum Weyl-algebra statements, and Fock-space implementability.

## Verification log

- `Source-derived`: The complete section/appendix chain, the Neeb--Ólafsson positivity classification, the OS semigroup theorem, and the representation-theoretic identification were reconstructed from the official v1 TeX source and checked against the rendered 20-page PDF.
- `Checked`: Mathematica reproduced the stereographic reflected-distance identity leading to $R_\nu(x,y)$.
- `Checked`: Mathematica differentiated the kernel explicitly for $d=2,3,4,5,6$ and obtained zero residual against $8d\Delta(\Delta-(d-2)/2)$ in every tested dimension.
- `Checked`: Algebraically, $\Delta_-=d/2-\nu$ converts the scalar unitarity inequality into $\nu\le1$, and $m_{\rm AdS}^2=\nu^2-d^2/4$ converts $0<\nu<1$ into the stated open mass window.
- `Blocked`: The necessary-and-sufficient positivity theorem and the OS semigroup reconstruction were not reproved from first principles; the note relies on the paper's precise invocation of Neeb--Ólafsson for those results.
- `Not independently verified`: Global domain/self-adjointness details of every reconstructed generator, density of the kernel-state span, the $d=2$ endpoint quotient, and any extension beyond the free one-particle/global-conformal sector.

