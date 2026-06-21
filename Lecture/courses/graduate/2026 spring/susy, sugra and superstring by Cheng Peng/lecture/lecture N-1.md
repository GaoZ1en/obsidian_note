---
title: "Lecture N-1: Canonical construction of the five superstring theories"
date: 2026-05-28
summary: "Light-cone RNS quantization of the five ten-dimensional superstring theories, with GS comparison, GSO projections, modular consistency, Hilbert spaces, and low-lying spectra."
---

# Lecture N-1: Canonical construction of the five superstring theories

the goal of this note is to construct the five consistent ten-dimensional superstring theories from the light-cone canonical Hilbert space. the main construction uses the RNS formalism because it makes the NS/R sectors, GSO projection, Type II chirality choices, Type I orientifold projection, and heterotic internal lattice construction transparent. the Green-Schwarz formalism will be compared at the end.

the five theories are:

- Type IIA
- Type IIB
- Type I
- heterotic $SO(32)$
- heterotic $E_{8}\times E_{8}$

## Setup and conventions

we work in flat ten-dimensional target space with mostly plus metric. the string tension is

$$\begin{align}
T & = \frac{1}{2\pi\alpha'} .
\end{align}$$

the target-space light-cone coordinates are

$$\begin{align}
X^{\pm} & = \frac{1}{\sqrt{2}}\left(X^{0}\pm X^{9}\right),
\end{align}$$

and the transverse indices are

$$\begin{align}
i,j & =1,\dots,8 .
\end{align}$$

for open strings we take

$$\begin{align}
0\leq \sigma \leq \pi ,
\end{align}$$

while for closed strings

$$\begin{align}
\sigma & \sim \sigma+2\pi .
\end{align}$$

in light-cone gauge one fixes

$$\begin{align}
X^{+} & = x^{+}+2\alpha' p^{+}\tau
\end{align}$$

up to a harmless convention-dependent normalization. the constraints then solve $X^{-}$ in terms of the transverse fields. hence the physical oscillator Hilbert space is built only from the eight transverse bosons $X^{i}$ and the transverse worldsheet fermions.

## RNS superstring in light-cone gauge

before gauge fixing, the flat-space RNS action in conformal gauge has the schematic form

$$\begin{align}
S_{\mathrm{RNS}} & = -\frac{1}{4\pi\alpha'}\int \mathrm{d}^{2}\sigma \left( \partial_{a}X^{\mu}\partial^{a}X_{\mu} - i \bar{\psi}^{\mu}\rho^{a}\partial_{a}\psi_{\mu} \right).
\end{align}$$

before imposing light-cone gauge, this theory has:

- worldsheet diffeomorphism symmetry
- Weyl symmetry
- local worldsheet supersymmetry
- target-space Poincare symmetry

the corresponding constraints are the stress-tensor and supercurrent constraints,

$$\begin{align}
T_{\pm\pm} & =0, \\
G_{\pm} & =0 .
\end{align}$$

covariantly these become the Virasoro and super-Virasoro constraints. in light-cone gauge they are solved explicitly: only the transverse oscillators remain as independent quantum degrees of freedom.

the light-cone RNS action reduces to

$$\begin{align}
S_{\mathrm{LC}} & = \frac{1}{4\pi\alpha'}\int \mathrm{d}^{2}\sigma \left( \partial_{a}X^{i}\partial^{a}X^{i} + i\psi_{+}^{i}\partial_{-}\psi_{+}^{i} + i\psi_{-}^{i}\partial_{+}\psi_{-}^{i} \right).
\end{align}$$

the target-space Poincare charges are still present, although not all of them are manifest. the transverse momentum and angular momentum are directly

$$\begin{align}
P^{i} & = \frac{1}{2\pi\alpha'}\int \mathrm{d}\sigma\,\partial_{\tau}X^{i}, \\
J^{ij} & = \frac{1}{2\pi\alpha'}\int \mathrm{d}\sigma \left(X^{i}\partial_{\tau}X^{j}-X^{j}\partial_{\tau}X^{i}\right) +\text{fermions}.
\end{align}$$

the Lorentz generators involving $-$ are more complicated because $X^{-}$ is composite. quantum consistency of these generators is one way to see the critical dimension $D=10$.

## Canonical quantization

the transverse bosons have the oscillator algebra

$$\begin{align}
[\alpha_{m}^{i},\alpha_{n}^{j}] & = m\delta^{ij}\delta_{m+n,0}.
\end{align}$$

for closed strings there are two commuting copies,

$$\begin{align}
[\alpha_{m}^{i},\alpha_{n}^{j}] & = m\delta^{ij}\delta_{m+n,0}, \\
[\tilde{\alpha}_{m}^{i},\tilde{\alpha}_{n}^{j}] & = m\delta^{ij}\delta_{m+n,0}, \\
[\alpha_{m}^{i},\tilde{\alpha}_{n}^{j}] & =0 .
\end{align}$$

the worldsheet fermions have two possible boundary conditions around the spatial circle.

in the NS sector, fermions are anti-periodic:

$$\begin{align}
\psi^{i}(\sigma+2\pi) & = -\psi^{i}(\sigma),
\end{align}$$

so their modes are half-integer,

$$\begin{align}
r & \in \mathbb{Z}+\frac{1}{2}, \\
\{b_{r}^{i},b_{s}^{j}\} & = \delta^{ij}\delta_{r+s,0}.
\end{align}$$

in the R sector, fermions are periodic:

$$\begin{align}
\psi^{i}(\sigma+2\pi) & = \psi^{i}(\sigma),
\end{align}$$

so their modes are integer,

$$\begin{align}
m & \in \mathbb{Z}, \\
\{d_{m}^{i},d_{n}^{j}\} & = \delta^{ij}\delta_{m+n,0}.
\end{align}$$

the R zero modes satisfy

$$\begin{align}
\{d_{0}^{i},d_{0}^{j}\} & = \delta^{ij}.
\end{align}$$

therefore they generate the Clifford algebra of $SO(8)$. the R ground state is not a scalar: it is a spacetime spinor under the transverse little group.

for one open-string sector the level operator is

$$\begin{align}
N_{\mathrm{NS}} & = \sum_{n=1}^{\infty}\alpha_{-n}^{i}\alpha_{n}^{i} +\sum_{r>0}r\, b_{-r}^{i}b_{r}^{i}, \\
N_{\mathrm{R}} & = \sum_{n=1}^{\infty}\alpha_{-n}^{i}\alpha_{n}^{i} +\sum_{m=1}^{\infty}m\, d_{-m}^{i}d_{m}^{i}.
\end{align}$$

the light-cone normal-ordering constants are

$$\begin{align}
a_{\mathrm{NS}} & = \frac{1}{2}, \\
a_{\mathrm{R}} & =0 .
\end{align}$$

the open-string mass formula is

$$\begin{align}
M^{2} & = \frac{1}{\alpha'}(N-a).
\end{align}$$

for closed strings there are left- and right-moving levels, and

$$\begin{align}
M^{2} & = \frac{4}{\alpha'}(N_{L}-a_{L}) = \frac{4}{\alpha'}(N_{R}-a_{R}),
\end{align}$$

with level matching

$$\begin{align}
N_{L}-a_{L} & = N_{R}-a_{R}.
\end{align}$$

the physical Fock space is generated by negative modes acting on the NS or R ground states. schematically,

$$\begin{align}
\alpha_{-n_{1}}^{i_{1}}\cdots \alpha_{-n_{a}}^{i_{a}}
b_{-r_{1}}^{j_{1}}\cdots b_{-r_{b}}^{j_{b}}
\ket{0;k}_{\mathrm{NS}}
\end{align}$$

in the NS sector, and

$$\begin{align}
\alpha_{-n_{1}}^{i_{1}}\cdots \alpha_{-n_{a}}^{i_{a}}
d_{-m_{1}}^{j_{1}}\cdots d_{-m_{b}}^{j_{b}}
\ket{s;k}_{\mathrm{R}}
\end{align}$$

in the R sector.

## GSO projection and spacetime supersymmetry

without a projection, the NS ground state has

$$\begin{align}
N_{\mathrm{NS}} & =0, \\
M^{2} & = -\frac{1}{2\alpha'}
\end{align}$$

for an open string, and is tachyonic. the GSO projection removes this state and keeps a definite worldsheet fermion parity. in the open superstring one keeps the NS states with one, three, five, and so on fermionic excitations:

$$\begin{align}
(-1)^{F_{\mathrm{NS}}} & = +1
\end{align}$$

up to convention. the first surviving NS state is

$$\begin{align}
b_{-1/2}^{i}\ket{0;k}_{\mathrm{NS}},
\end{align}$$

which is massless and transforms as the $SO(8)$ vector $8_{v}$.

in the R sector the zero modes produce spinors. the GSO projection keeps one chirality,

$$\begin{align}
8_{s} \qquad \text{or} \qquad
8_{c}.
\end{align}$$

here $SO(8)$ triality gives three eight-dimensional representations:

$$\begin{align}
8_{v},\qquad 8_{s},\qquad 8_{c}.
\end{align}$$

in spacetime terms, the NS sector supplies bosons and the R sector supplies fermions. after the GSO projection their degeneracies match level by level, giving spacetime supersymmetry.

## Type II closed superstrings

Type II strings are closed oriented superstrings. their Hilbert space is

$$\begin{align}
\mathcal{H}_{\mathrm{II}} & = \left(\mathcal{H}_{\mathrm{NS}}\oplus \mathcal{H}_{\mathrm{R}}\right)_{L} \otimes \left(\mathcal{H}_{\mathrm{NS}}\oplus \mathcal{H}_{\mathrm{R}}\right)_{R},
\end{align}$$

subject to level matching.

the two Type II theories differ only by the relative chirality of the left- and right-moving R ground states:

- Type IIA keeps opposite chiralities, for example $8_{s,L}\otimes 8_{c,R}$.
- Type IIB keeps the same chirality, for example $8_{s,L}\otimes 8_{s,R}$.

the massless NS-NS sector is

$$\begin{align}
b_{-1/2}^{i}\tilde{b}_{-1/2}^{j}
\ket{0;k}_{\mathrm{NS}\text{-}\mathrm{NS}} .
\end{align}$$

as spacetime fields it decomposes into

$$\begin{align}
g_{\mu\nu},\qquad B_{\mu\nu},\qquad \Phi .
\end{align}$$

the R-R sector is the product of two spinors. the chirality choice determines which differential-form potentials appear:

- Type IIA has odd-form R-R potentials, usually written as $C_{1}$ and $C_{3}$ in ten-dimensional supergravity.
- Type IIB has even-form R-R potentials, $C_{0}$, $C_{2}$, and a self-dual $C_{4}^{+}$.

the mixed sectors NS-R and R-NS give the gravitini and dilatini. Type IIA is non-chiral in ten dimensions because the two gravitini have opposite chirality. Type IIB is chiral because they have the same chirality.

the first massive level is obtained by raising one side to the next GSO-allowed level and imposing level matching. for example, the left-moving first massive NS building blocks are

$$\begin{align}
\alpha_{-1}^{i}b_{-1/2}^{j}\ket{0;k}_{\mathrm{NS}}, \qquad
b_{-3/2}^{i}\ket{0;k}_{\mathrm{NS}}, \qquad
b_{-1/2}^{i}b_{-1/2}^{j}b_{-1/2}^{k}\ket{0;k}_{\mathrm{NS}}.
\end{align}$$

R-sector first massive states are built from

$$\begin{align}
\alpha_{-1}^{i}\ket{s;k}_{\mathrm{R}}, \qquad
d_{-1}^{i}\ket{s;k}_{\mathrm{R}}.
\end{align}$$

closed-string first massive states are tensor products of the corresponding left- and right-moving building blocks with equal value of $N-a$ on both sides. the full massive little-group decomposition is lengthy, so the useful canonical description is the oscillator construction together with the GSO and level-matching rules.

## Type I superstring

Type I string theory is obtained from Type IIB by the unoriented projection generated by worldsheet parity

$$\begin{align}
\Omega:\quad \sigma & \mapsto 2\pi-\sigma .
\end{align}$$

the closed-string sector is the $\Omega$-invariant part of Type IIB. the projection removes the NS-NS two-form and keeps the ten-dimensional $N=1$ supergravity multiplet. in common conventions the surviving two-form is an R-R two-form. the massless closed fields are therefore

$$\begin{align}
g_{\mu\nu},\qquad \Phi,\qquad C_{2}
\end{align}$$

together with their fermionic superpartners.

consistency also requires open strings. their endpoints carry Chan-Paton labels,

$$\begin{align}
\ket{k;i,j}, \qquad i,j=1,\dots,N .
\end{align}$$

the unoriented projection restricts the Chan-Paton algebra. anomaly cancellation fixes

$$\begin{align}
N & =32,
\end{align}$$

and the gauge group is

$$\begin{align}
SO(32).
\end{align}$$

the massless open-string NS state is

$$\begin{align}
\lambda^{a} b_{-1/2}^{i}\ket{0;k}_{\mathrm{NS}},
\end{align}$$

where $\lambda^{a}$ is an $SO(32)$ Chan-Paton generator. this gives the gauge boson. the R-sector ground state gives the gaugino. together they form ten-dimensional $N=1$ super Yang-Mills coupled to $N=1$ supergravity.

the first massive open-string level is generated by states such as

$$\begin{align}
\lambda^{a}\alpha_{-1}^{i}b_{-1/2}^{j}\ket{0;k}_{\mathrm{NS}}, \qquad
\lambda^{a}b_{-3/2}^{i}\ket{0;k}_{\mathrm{NS}}, \qquad
\lambda^{a}d_{-1}^{i}\ket{s;k}_{\mathrm{R}}.
\end{align}$$

the closed-string massive levels are the Type IIB closed-string massive levels projected to their $\Omega$-even parts. hence Type I is not an independent new oscillator construction; it is an orientifold projection plus the necessary open-string Chan-Paton sector.

## Heterotic strings

heterotic strings combine a right-moving superstring with a left-moving bosonic string. in light-cone language the right-moving side is the same RNS system as above, while the left-moving side has bosonic degrees of freedom with intercept

$$\begin{align}
a_{L} & =1 .
\end{align}$$

to make the central charges work, the left-moving bosonic string contains sixteen additional compact internal coordinates. their momenta live on an even self-dual sixteen-dimensional lattice,

$$\begin{align}
\Gamma_{16}.
\end{align}$$

there are exactly two choices relevant for ten-dimensional supersymmetric heterotic strings:

$$\begin{align}
\Gamma_{16}^{SO(32)}, \qquad
\Gamma_{8}^{E_{8}}\oplus \Gamma_{8}^{E_{8}}.
\end{align}$$

the mass formulas can be written as

$$\begin{align}
\frac{\alpha'}{4}M^{2} & = N_{R}-a_{R}, \\
\frac{\alpha'}{4}M^{2} & = N_{L}+\frac{1}{2}p_{L}^{2}-1,
\end{align}$$

with level matching

$$\begin{align}
N_{R}-a_{R} & = N_{L}+\frac{1}{2}p_{L}^{2}-1 .
\end{align}$$

here $a_{R}=1/2$ in the right-moving NS sector and $a_{R}=0$ in the right-moving R sector.

the right-moving GSO projection removes the tachyon and produces ten-dimensional $N=1$ spacetime supersymmetry. the left-moving lattice determines the gauge group:

- $\Gamma_{16}^{SO(32)}$ gives heterotic $SO(32)$.
- $\Gamma_{8}^{E_{8}}\oplus \Gamma_{8}^{E_{8}}$ gives heterotic $E_{8}\times E_{8}$.

the massless gravitational sector comes from

$$\begin{align}
\tilde{b}_{-1/2}^{i}\alpha_{-1}^{j}\ket{0;k}_{R,\mathrm{NS}}\otimes \ket{p_{L}=0}_{L}.
\end{align}$$

it gives

$$\begin{align}
g_{\mu\nu},\qquad B_{\mu\nu},\qquad \Phi
\end{align}$$

and their fermionic superpartners.

the gauge bosons come from left-moving internal momenta with

$$\begin{align}
p_{L}^{2} & =2,\qquad N_{L}=0,
\end{align}$$

tensored with the right-moving massless NS excitation. these roots generate either $SO(32)$ or $E_{8}\times E_{8}$. there are also Cartan gauge bosons from left-moving internal oscillators.

the first massive heterotic states are constrained by the same level-matching equation. examples are obtained by increasing the right-moving level using

$$\begin{align}
\tilde{\alpha}_{-1}^{i}\tilde{b}_{-1/2}^{j}, \qquad
\tilde{b}_{-3/2}^{i}, \qquad
\tilde{d}_{-1}^{i}
\end{align}$$

and increasing the left-moving side by ordinary bosonic oscillators, internal oscillators, or lattice vectors with larger $p_{L}^{2}$. the important point is that the massive spectrum is not a simple tensor square of two superstring sectors: the two chiral halves are different theories.

## Green-Schwarz light-cone comparison

in the Green-Schwarz formalism spacetime supersymmetry is built in from the start. after fixing light-cone gauge and kappa symmetry, the physical fields are again eight transverse bosons and eight physical worldsheet fermions. schematically,

$$\begin{align}
S_{\mathrm{GS,LC}} & = \frac{1}{4\pi\alpha'}\int \mathrm{d}^{2}\sigma \left( \partial_{a}X^{i}\partial^{a}X^{i} + i S^{a}\partial_{+}S^{a} + i \tilde{S}^{a}\partial_{-}\tilde{S}^{a} \right),
\end{align}$$

where $S^{a}$ and $\tilde{S}^{a}$ are $SO(8)$ spinors. Type IIA and Type IIB are again distinguished by the relative chirality of these two spinors.

| feature | RNS light-cone | GS light-cone |
|---|---|---|
| manifest symmetry | worldsheet supersymmetry before gauge fixing | spacetime supersymmetry |
| physical fields | $X^{i}$, NS/R fermion modes | $X^{i}$, $SO(8)$ spinor fermions |
| GSO projection | explicit and central | not the main language |
| Ramond sector | built from fermion zero-mode Clifford algebra | spacetime spinors are fundamental |
| Type II chirality | choice of left/right R chiralities | choice of left/right GS spinor chiralities |
| Type I and heterotic | very convenient | less direct |

the two formalisms give the same physical light-cone spectrum. for classifying all five ten-dimensional superstring theories, however, RNS is usually the more economical canonical construction.

## Modular transformations and one-loop consistency

the light-cone canonical construction tells us what the Hilbert space looks like. the stronger consistency condition comes from summing the same theory over worldsheet geometries. for oriented closed strings, the first nontrivial check is the torus one-loop vacuum amplitude.

a torus can be written as

$$\begin{align}
z & \sim z+1, \qquad
z \sim z+\tau,
\end{align}$$

where $\tau$ is the complex structure modulus with $\operatorname{Im}\tau>0$. different choices of the homology basis of the torus describe the same geometry, so the theory must be invariant under

$$\begin{align}
T:\quad \tau & \mapsto \tau+1, \\
S:\quad \tau & \mapsto -\frac{1}{\tau}.
\end{align}$$

these two transformations generate

$$\begin{align}
SL(2,\mathbb{Z}) .
\end{align}$$

physically, $T$ shifts one cycle by the other, while $S$ exchanges the two cycles. therefore modular invariance means that the torus amplitude must not depend on which cycle we call space and which cycle we call Euclidean time.

in operator language the oriented closed-string one-loop amplitude has the schematic form

$$\begin{align}
Z(\tau,\bar{\tau}) & = \mathrm{Tr}_{\mathcal{H}_{\mathrm{closed}}} \left( q^{L_{0}-c/24}
\bar{q}^{\tilde{L}_{0}-\tilde{c}/24} \right), \qquad
q=e^{2\pi i\tau}.
\end{align}$$

under $T$, this trace is sensitive to

$$\begin{align}
L_{0}-\tilde{L}_{0}.
\end{align}$$

thus $T$ invariance requires level matching:

$$\begin{align}
L_{0}-\tilde{L}_{0} & \in \mathbb{Z}.
\end{align}$$

under $S$, the high-energy and low-energy channels are exchanged. this is the more restrictive condition: it relates the density of states, the zero-point energies, and the allowed spin structures.

for RNS fermions on the torus, one must choose boundary conditions around both cycles. write a spin structure as

$$\begin{align}
\left[\begin{array}{c}
a \\
b
\end{array}\right], \qquad
a,b\in \{0,1\},
\end{align}$$

where $a$ and $b$ record periodic or anti-periodic boundary conditions around the two cycles. modular transformations mix these spin structures:

$$\begin{align}
T:\quad \left[\begin{array}{c}
a \\
b
\end{array}\right] & \mapsto \left[\begin{array}{c}
a \\
a+b
\end{array}\right], \\
S:\quad \left[\begin{array}{c}
a \\
b
\end{array}\right] & \mapsto \left[\begin{array}{c}
b \\
a
\end{array}\right].
\end{align}$$

therefore a single spin structure is not modular invariant. the GSO projection is equivalently a choice of phases in the sum over spin structures such that the total partition function transforms into itself. this is the one-loop path-integral version of the operator statement that we project onto a consistent NS/R Hilbert space.

for Type II strings the modular-invariant choice is made independently in the left- and right-moving RNS sectors, but with a correlated chirality choice:

- Type IIA uses opposite left/right Ramond chiralities.
- Type IIB uses the same left/right Ramond chirality.

both choices are modular invariant. the difference is not visible as a failure of one-loop consistency; it is the spacetime chirality and R-R spectrum that distinguishes them.

for heterotic strings the right-moving superstring side is modular consistent by the same RNS GSO mechanism. the left-moving bosonic side contains the internal lattice contribution

$$\begin{align}
\Theta_{\Gamma}(\tau) & = \sum_{p\in \Gamma} q^{p^{2}/2}.
\end{align}$$

$T$ invariance requires

$$\begin{align}
p^{2} & \in 2\mathbb{Z},
\end{align}$$

so the lattice must be even. $S$ invariance exchanges the lattice with its dual. hence one needs

$$\begin{align}
\Gamma & = \Gamma^{*},
\end{align}$$

so the lattice must also be self-dual. in sixteen dimensions the two even self-dual Euclidean lattices are precisely

$$\begin{align}
\Gamma_{16}^{SO(32)}, \qquad
\Gamma_{8}^{E_{8}}\oplus \Gamma_{8}^{E_{8}}.
\end{align}$$

this is the modular-invariance origin of the two heterotic gauge groups.

Type I is slightly different because it is unoriented and includes open strings. instead of only the torus, its one-loop vacuum diagrams include the Klein bottle, annulus, and Mobius strip. the consistency condition is that these amplitudes admit a sensible closed-string channel interpretation and that the massless tadpoles cancel. this is the worldsheet origin of the requirement

$$\begin{align}
SO(32)
\end{align}$$

for the Chan-Paton gauge group of Type I string theory.

so the conceptual role of modular transformations is:

- $T$ checks integrality and level matching.
- $S$ checks open-closed or high-low channel consistency.
- the modular mixing of spin structures forces a GSO-summed theory rather than an arbitrary NS/R sector.
- heterotic modular invariance forces an even self-dual internal lattice.
- Type I one-loop consistency fixes the Chan-Paton group by tadpole cancellation.

## Summary table

| theory | orientation and sectors | gauge group | supersymmetry | chirality | R-R fields | massless bosons |
|---|---|---|---|---|---|---|
| Type IIA | oriented closed | none | $N=(1,1)$ in ten dimensions | non-chiral | $C_{1},C_{3}$ | $g_{\mu\nu},B_{\mu\nu},\Phi$ plus R-R fields |
| Type IIB | oriented closed | none | $N=(2,0)$ in ten dimensions | chiral | $C_{0},C_{2},C_{4}^{+}$ | $g_{\mu\nu},B_{\mu\nu},\Phi$ plus R-R fields |
| Type I | unoriented closed plus open | $SO(32)$ | $N=1$ | chiral | projected Type IIB R-R sector, including $C_{2}$ | $g_{\mu\nu},\Phi,C_{2}$ plus open-string gauge bosons |
| heterotic $SO(32)$ | closed, right RNS plus left bosonic lattice | $SO(32)$ | $N=1$ | chiral | none | $g_{\mu\nu},B_{\mu\nu},\Phi$ plus gauge bosons |
| heterotic $E_{8}\times E_{8}$ | closed, right RNS plus left bosonic lattice | $E_{8}\times E_{8}$ | $N=1$ | chiral | none | $g_{\mu\nu},B_{\mu\nu},\Phi$ plus gauge bosons |

## Useful checks

the construction should satisfy several consistency checks.

first, the critical dimension is

$$\begin{align}
D & =10 .
\end{align}$$

in light-cone quantization this is required by closure of the Lorentz algebra. in covariant RNS language it is equivalent to cancellation of the superconformal anomaly after including ghosts.

second, the tachyon is absent. the naive NS ground state is tachyonic, but it is removed by the GSO projection in all five supersymmetric theories.

third, closed strings require level matching:

$$\begin{align}
N_{L}-a_{L} & = N_{R}-a_{R}.
\end{align}$$

for heterotic strings this becomes

$$\begin{align}
N_{R}-a_{R} & = N_{L}+\frac{1}{2}p_{L}^{2}-1.
\end{align}$$

fourth, the two appearances of $SO(32)$ have different origins. Type I $SO(32)$ comes from Chan-Paton factors and orientifold consistency. heterotic $SO(32)$ comes from an even self-dual internal lattice.

fifth, the torus partition function of an oriented closed string must be invariant under the modular transformations $T:\tau\mapsto \tau+1$ and $S:\tau\mapsto -1/\tau$. this packages level matching, the GSO sum over spin structures, and the heterotic even self-dual lattice condition into one worldsheet consistency requirement.

finally, the physical oscillator counting is always transverse. the basic light-cone little group is $SO(8)$, and the building blocks are $8_{v}$ from the NS massless oscillator and $8_{s}$ or $8_{c}$ from the R zero modes. spacetime covariance is recovered after assembling these transverse states into ten-dimensional supermultiplets.
