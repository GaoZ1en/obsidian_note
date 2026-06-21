---
title: "Lecture 7: DDF operators and the covariant physical spectrum"
date: 2026-04-16
summary: "Definition, derivation, and uses of the DDF operators in bosonic string theory. These operators generate the full physical spectrum covariantly, commute with the Virasoro constraints, and reproduce the light-cone Hilbert space."
---

the DDF operators, introduced by Del Giudice, Di Vecchia and Fubini, provide a covariant way to construct the physical Hilbert space of the bosonic string. they are important because they preserve the Virasoro constraints automatically, satisfy the same algebra as the transverse light-cone oscillators, and make the no-ghost theorem much more concrete.

the conceptual problem is the following. in covariant quantization we use the oscillators $\alpha_{-n}^{\mu}$, so Lorentz covariance is manifest, but the naive Fock space contains time-like and longitudinal excitations with negative norm. in light-cone gauge this problem disappears because only the transverse oscillators $\alpha_{-n}^{i}$ remain, but then covariance is hidden. the DDF construction combines the advantages of both descriptions: it is written covariantly, but it generates only physical states.

## holomorphic setup

for the open bosonic string it is convenient to work in the holomorphic description after the doubling trick. the basic operator product expansions are

$$\begin{align}
X^{\mu}(z)X^{\nu}(w) & \sim -\frac{\alpha'}{2}\eta^{\mu\nu}\ln (z-w) \\
\partial X^{\mu}(z)\partial X^{\nu}(w) & \sim -\frac{\alpha'}{2}\frac{\eta^{\mu\nu}}{(z-w)^{2}}
\end{align}$$

and the matter stress tensor is

$$\begin{align}
T(z) & = -\frac{1}{\alpha'}:\partial X^{\mu}\partial X_{\mu}:
\end{align}$$

the Virasoro generators are defined by

$$\begin{align}
L_{m} & = \oint \frac{\mathrm{d}z}{2\pi i} z^{m+1}T(z)
\end{align}$$

so if an operator $\mathcal{O}(z)$ is a primary of weight one, then its contour integral commutes with all $L_{m}$:

$$\begin{align}
\left[L_{m},\oint \frac{\mathrm{d}z}{2\pi i}\mathcal{O}(z)\right] & = 0
\end{align}$$

this simple observation is the core of the DDF construction.

## definition of the DDF operators

choose a fixed null vector $k^{\mu}$ and transverse polarization vectors $\zeta_{i}^{\mu}$ satisfying

$$\begin{align}
k^{2} & = 0 \\
\zeta_{i}\cdot k & = 0 \\
\zeta_{i}\cdot \zeta_{j} & = \delta_{ij}
\end{align}$$

where $i=1,\dots,D-2$. define

$$\begin{align}
\mathcal{J}_{n}^{i}(z) & = \sqrt{\frac{2}{\alpha'}}\, \zeta_{i}\cdot \partial X(z)\, e^{in k\cdot X(z)}
\end{align}$$

and its contour integral

$$\begin{align}
A_{n}^{i} & = \oint \frac{\mathrm{d}z}{2\pi i}\mathcal{J}_{n}^{i}(z)
\end{align}$$

these are the DDF operators. the factor $e^{in k\cdot X}$ shifts the target-space momentum by $nk^{\mu}$, so the operator $A_{n}^{i}$ does not just excite the string level, it also changes the spacetime momentum.

to obtain integer moding, one starts from a physical ground state $\ket{p}$ with

$$\begin{align}
(L_{0}-1)\ket{p} & = 0 \\
\alpha' p^{2} & = 1
\end{align}$$

and chooses the null vector $k^{\mu}$ such that

$$\begin{align}
2\alpha' p\cdot k & = 1
\end{align}$$

then the contour integral is single-valued on states built from $\ket{p}$.

## conformal weight of the DDF current

the first important step is to show that $\mathcal{J}_{n}^{i}(z)$ has conformal weight one.

using the standard OPE, the exponential field satisfies

$$\begin{align}
T(z)e^{in k\cdot X(w)} \sim \frac{h_{n}}{(z-w)^{2}}e^{in k\cdot X(w)} + \frac{1}{z-w}\partial e^{in k\cdot X(w)}
\end{align}$$

with

$$\begin{align}
h_{n} & \propto \alpha' (nk)^{2}
\end{align}$$

since $k^{2}=0$, we get

$$\begin{align}
h_{n} & = 0
\end{align}$$

so $e^{in k\cdot X}$ is weight zero. meanwhile $\partial X^{\mu}$ is a weight-one field:

$$\begin{align}
T(z)\partial X^{\mu}(w) \sim \frac{\partial X^{\mu}(w)}{(z-w)^{2}} + \frac{\partial^{2}X^{\mu}(w)}{z-w}
\end{align}$$

therefore the product $\mathcal{J}_{n}^{i}(z)$ should have weight one. one can check this directly:

$$\begin{align}
T(z)\mathcal{J}_{n}^{i}(w) & \sim \frac{\mathcal{J}_{n}^{i}(w)}{(z-w)^{2}} + \frac{\partial \mathcal{J}_{n}^{i}(w)}{z-w}
\end{align}$$

and there is no extra singular contribution from contracting $\partial X$ with the exponential, because

$$\begin{align}
\partial X^{\mu}(z)e^{in k\cdot X(w)} & \sim -i\frac{\alpha'}{2}\frac{n k^{\mu}}{z-w}e^{in k\cdot X(w)}
\end{align}$$

while $\zeta_{i}\cdot k=0$. thus the dangerous term vanishes after contraction with $\zeta_{i\mu}$.

so $\mathcal{J}_{n}^{i}$ is indeed a weight-one current.

## commutation with the Virasoro generators

once $\mathcal{J}_{n}^{i}$ is known to be weight one, the contour integral $A_{n}^{i}$ commutes with the Virasoro generators. explicitly,

$$\begin{align}
[L_{m},A_{n}^{i}] & = \left[\oint \frac{\mathrm{d}z}{2\pi i}z^{m+1}T(z), \oint \frac{\mathrm{d}w}{2\pi i}\mathcal{J}_{n}^{i}(w)\right]
\end{align}$$

using the OPE above, the inner commutator gives a total derivative:

$$\begin{align}
[L_{m},\mathcal{J}_{n}^{i}(w)] & = \partial \left(w^{m+1}\mathcal{J}_{n}^{i}(w)\right)
\end{align}$$

hence

$$\begin{align}
[L_{m},A_{n}^{i}] & = \oint \frac{\mathrm{d}w}{2\pi i}\partial \left(w^{m+1}\mathcal{J}_{n}^{i}(w)\right) = 0
\end{align}$$

therefore, if $\ket{\psi}$ is physical, namely

$$\begin{align}
L_{m}\ket{\psi} & = 0, \qquad m>0
\end{align}$$

then

$$\begin{align}
L_{m}A_{-n}^{i}\ket{\psi} & = A_{-n}^{i}L_{m}\ket{\psi} = 0, \qquad m>0
\end{align}$$

so the DDF operators map physical states to physical states.

this already shows why they are better than the naive oscillators $\alpha_{-n}^{\mu}$. the latter do not commute with the constraints, whereas the DDF operators do.

## action on the momentum

because of the exponential factor, $A_{n}^{i}$ changes the spacetime momentum. if $\ket{p}$ is a momentum eigenstate, then

$$\begin{align}
A_{n}^{i}\ket{p} \propto \ket{p+n k}
\end{align}$$

in the usual physical construction one applies the creation operators $A_{-n}^{i}$ with $n>0$, so the final momentum of a level-$N$ state is

$$\begin{align}
P^{\mu} & = p^{\mu} - Nk^{\mu}
\end{align}$$

where

$$\begin{align}
N & = \sum_{a} n_{a}
\end{align}$$

for a state of the form

$$\begin{align}
A_{-n_{1}}^{i_{1}}A_{-n_{2}}^{i_{2}}\cdots A_{-n_{r}}^{i_{r}}\ket{p}
\end{align}$$

## derivation of the DDF algebra

the next key result is that the DDF operators satisfy the same oscillator algebra as the transverse light-cone modes.

consider the product

$$\begin{align}
\mathcal{J}_{m}^{i}(z)\mathcal{J}_{n}^{j}(w)
\end{align}$$

the singular terms can only come from the contraction of the two $\partial X$ factors, because

$$\begin{align}
\zeta_{i}\cdot \partial X(z)\, e^{in k\cdot X(w)} & \sim -i\frac{\alpha'}{2}\frac{n\, \zeta_{i}\cdot k}{z-w}e^{in k\cdot X(w)} = 0
\end{align}$$

and

$$\begin{align}
e^{im k\cdot X(z)}e^{in k\cdot X(w)}
\end{align}$$

has no singular prefactor because $k^{2}=0$.

thus

$$\begin{align}
\mathcal{J}_{m}^{i}(z)\mathcal{J}_{n}^{j}(w) & \sim \frac{2}{\alpha'}\left(-\frac{\alpha'}{2}\frac{\delta^{ij}}{(z-w)^{2}}\right)e^{i(m+n)k\cdot X(w)} \\
& = -\frac{\delta^{ij}}{(z-w)^{2}}e^{i(m+n)k\cdot X(w)}
\end{align}$$

to extract the commutator we integrate $z$ around $w$ and then integrate $w$. the double pole gives a derivative:

$$\begin{align}
[A_{m}^{i},A_{n}^{j}] & = -\delta^{ij}\oint \frac{\mathrm{d}w}{2\pi i}\partial \left(e^{i(m+n)k\cdot X(w)}\right)
+ \text{zero-mode contribution}
\end{align}$$

on a state with the normalization $2\alpha' p\cdot k=1$, the zero-mode part turns this into the standard Heisenberg algebra,

$$\begin{align}
[A_{m}^{i},A_{n}^{j}] & = m\delta^{ij}\delta_{m+n,0}
\end{align}$$

the precise numerical coefficient depends on the normalization chosen for $A_{n}^{i}$, but with the convention above it matches exactly the transverse light-cone oscillator algebra.

similarly, for the closed string one obtains two commuting copies,

$$\begin{align}
[A_{m}^{i},A_{n}^{j}] & = m\delta^{ij}\delta_{m+n,0} \\
[\tilde{A}_{m}^{i},\tilde{A}_{n}^{j}] & = m\delta^{ij}\delta_{m+n,0} \\
[A_{m}^{i},\tilde{A}_{n}^{j}] & = 0
\end{align}$$

this is the structural reason why the DDF states reproduce the light-cone spectrum.

## physical states built from DDF operators

starting from the physical tachyonic ground state $\ket{p}$, define

$$\begin{align}
\ket{\{n_{a},i_{a}\};p} & = A_{-n_{1}}^{i_{1}}A_{-n_{2}}^{i_{2}}\cdots A_{-n_{r}}^{i_{r}}\ket{p}
\end{align}$$

with each $n_{a}>0$. because $[L_{m},A_{-n}^{i}]=0$, these states automatically satisfy the nonzero-mode Virasoro constraints.

the level is

$$\begin{align}
N & = \sum_{a=1}^{r} n_{a}
\end{align}$$

and the momentum is shifted to

$$\begin{align}
P^{\mu} & = p^{\mu} - Nk^{\mu}
\end{align}$$

then

$$\begin{align}
P^{2} & = (p-Nk)^{2} \\
& = p^{2} - 2N p\cdot k + N^{2}k^{2} \\
& = \frac{1}{\alpha'} - \frac{N}{\alpha'} \\
& = \frac{1-N}{\alpha'}
\end{align}$$

where we used

$$\begin{align}
p^{2} & = \frac{1}{\alpha'} \\
2\alpha' p\cdot k & = 1 \\
k^{2} & = 0
\end{align}$$

therefore

$$\begin{align}
M^{2} & = -P^{2} = \frac{N-1}{\alpha'}
\end{align}$$

which is exactly the open bosonic string mass formula.

in particular:

$$\begin{align}
N=0 & : \quad M^{2}=-\frac{1}{\alpha'} \qquad \text{tachyon} \\
N=1 & : \quad M^{2}=0 \qquad \text{massless vector} \\
N=2 & : \quad M^{2}=\frac{1}{\alpha'} \qquad \text{first massive level}
\end{align}$$

so the DDF construction reproduces the usual physical spectrum directly.

## comparison with light-cone oscillators

in light-cone gauge the physical Hilbert space is generated by

$$\begin{align}
\alpha_{-n}^{i}\ket{0;p}
\end{align}$$

with the algebra

$$\begin{align}
[\alpha_{m}^{i},\alpha_{n}^{j}] & = m\delta^{ij}\delta_{m+n,0}
\end{align}$$

the DDF operators obey the same algebra and generate the same multiplicities at every level. therefore one obtains an isomorphism

$$\begin{align}
\alpha_{-n_{1}}^{i_{1}}\cdots \alpha_{-n_{r}}^{i_{r}}\ket{0;p}
\longleftrightarrow
A_{-n_{1}}^{i_{1}}\cdots A_{-n_{r}}^{i_{r}}\ket{p}
\end{align}$$

the left-hand side is the light-cone description, and the right-hand side is the covariant DDF description of the same physical state.

this makes the no-ghost theorem plausible in a very explicit way: the physical covariant spectrum is generated by $D-2$ independent oscillators only, so its inner product is positive definite.

## first few examples

at level one, the state

$$\begin{align}
A_{-1}^{i}\ket{p}
\end{align}$$

is massless and corresponds to the transverse vector state. in covariant language it is the physical part of the state $\zeta_{\mu}\alpha_{-1}^{\mu}\ket{0;P}$ with $\zeta\cdot P=0$, modulo null states.

at level two, one has states such as

$$\begin{align}
A_{-2}^{i}\ket{p}, \qquad A_{-1}^{i}A_{-1}^{j}\ket{p}
\end{align}$$

and these generate the full positive-norm spectrum at the first massive level.

the important point is that one never has to insert time-like oscillators $\alpha_{-n}^{0}$ or longitudinal combinations by hand. all such unphysical pieces are already excluded by construction.

## relation to vertex operators

the DDF current

$$\begin{align}
\mathcal{J}_{n}^{i}(z) & = \sqrt{\frac{2}{\alpha'}}\, \zeta_{i}\cdot \partial X(z)\, e^{in k\cdot X(z)}
\end{align}$$

is essentially an integrated physical vertex operator. this is why it preserves the Virasoro constraints: it is built from a conformal weight-one insertion, exactly as required for a physical integrated vertex operator in string theory.

from this viewpoint, DDF operators are a bridge between three descriptions:

1. covariant oscillator quantization
1. light-cone quantization
1. physical vertex operators in the worldsheet CFT

## closed-string generalization

for the closed bosonic string one introduces left- and right-moving DDF operators separately:

$$\begin{align}
A_{n}^{i} & = \oint \frac{\mathrm{d}z}{2\pi i}\sqrt{\frac{2}{\alpha'}}\, \zeta_{i}\cdot \partial X_{L}(z)e^{in k\cdot X_{L}(z)} \\
\tilde{A}_{n}^{i} & = \oint \frac{\mathrm{d}\bar{z}}{2\pi i}\sqrt{\frac{2}{\alpha'}}\, \zeta_{i}\cdot \bar{\partial}X_{R}(\bar{z})e^{in k\cdot X_{R}(\bar{z})}
\end{align}$$

physical states are then built as

$$\begin{align}
A_{-n_{1}}^{i_{1}}\cdots A_{-n_{r}}^{i_{r}}
\tilde{A}_{-\tilde{n}_{1}}^{j_{1}}\cdots \tilde{A}_{-\tilde{n}_{s}}^{j_{s}}\ket{p}
\end{align}$$

with

$$\begin{align}
N_{L} & = \sum_{a} n_{a} \\
N_{R} & = \sum_{b} \tilde{n}_{b}
\end{align}$$

and the level-matching condition

$$\begin{align}
N_{L} & = N_{R}
\end{align}$$

the mass formula becomes

$$\begin{align}
M^{2} & = \frac{4}{\alpha'}(N_{L}-1) = \frac{4}{\alpha'}(N_{R}-1)
\end{align}$$

again this is exactly the light-cone result.

## use in the no-ghost theorem

the no-ghost theorem states that in the critical bosonic string, the covariantly quantized physical Hilbert space has no negative-norm states. one way to understand this theorem is:

1. every DDF state is physical because it commutes with the Virasoro constraints.
1. DDF states are generated by $D-2$ transverse oscillators and therefore have positive norm.
1. in the critical theory, every physical state can be represented by a DDF state up to null states.

thus the full physical spectrum is isomorphic to the transverse light-cone spectrum. the DDF construction is not merely a convenient basis; it is one of the cleanest constructive realizations of the no-ghost theorem.

## brief remark for superstrings

in superstring theory there are fermionic analogues of the DDF operators built from weight-$1/2$ worldsheet fields and their integrated superconformal descendants. the logic is the same: one constructs operators that commute with the super-Virasoro constraints and generate the physical spectrum without introducing unphysical polarizations. for the present lecture, however, the bosonic construction already contains the essential idea.

## summary

the DDF operators are special contour-integrated worldsheet operators built from a null vector $k^{\mu}$ and transverse polarizations $\zeta_{i}^{\mu}$. their main properties are

1. $\mathcal{J}_{n}^{i}$ has conformal weight one.
1. $A_{n}^{i}$ commutes with the Virasoro generators.
1. $A_{n}^{i}$ maps physical states to physical states.
1. the algebra of $A_{n}^{i}$ is the same as that of the transverse light-cone oscillators.
1. DDF states reproduce the full physical mass spectrum.

therefore the DDF construction provides a covariant basis of the ghost-free Hilbert space and explains concretely why covariant and light-cone quantization describe the same physical content.
