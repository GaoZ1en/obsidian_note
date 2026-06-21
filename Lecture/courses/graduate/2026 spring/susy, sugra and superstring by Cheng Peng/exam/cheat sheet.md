---
title: Superstring Exam Cheat Sheet
date: 2026-06-01
summary: "Compact open-book reference for the Cheng Peng superstring exam, covering worldsheet setup, spectra, compactification, T-duality, CFT/OPE technology, bosonization, ghost systems, and high-frequency formulas."
---

# Core setup

## Worldsheet coordinates and conventions

$$\begin{align}
\sigma^{\pm}=\tau\pm \sigma,\qquad \partial_{\pm}=\frac{1}{2}(\partial_{\tau}\pm \partial_{\sigma}).
\end{align}$$

For open strings,

$$\begin{align}
0\leq \sigma \leq \pi.
\end{align}$$

For closed strings,

$$\begin{align}
\sigma \sim \sigma+2\pi.
\end{align}$$

String tension:

$$\begin{align}
T=\frac{1}{2\pi\alpha'}.
\end{align}$$

## Polyakov action and constraints

Bosonic string in flat target space:

$$\begin{align}
S=-\frac{1}{4\pi\alpha'}\int d^{2}\sigma \sqrt{-g}\, g^{ab}\partial_{a}X^{\mu}\partial_{b}X_{\mu}.
\end{align}$$

In conformal gauge,

$$\begin{align}
(\partial_{\tau}^{2}-\partial_{\sigma}^{2})X^{\mu}=0,
\end{align}$$

and the Virasoro constraints are

$$\begin{align}
T_{++}=\frac{1}{\alpha'}\partial_{+}X^{\mu}\partial_{+}X_{\mu}=0,
\qquad
T_{--}=\frac{1}{\alpha'}\partial_{-}X^{\mu}\partial_{-}X_{\mu}=0.
\end{align}$$

Light-cone coordinates:

$$\begin{align}
X^{\pm}=\frac{1}{\sqrt{2}}(X^{0}\pm X^{D-1}).
\end{align}$$

In light-cone gauge,

$$\begin{align}
X^{+}=x^{+}+2\alpha' p^{+}\tau,
\end{align}$$

and the constraints solve $X^{-}$ in terms of the transverse fields $X^{i}$.

## Canonical brackets and oscillator algebras

Canonical bracket:

$$\begin{align}
[X^{i}(\tau,\sigma),\Pi^{j}(\tau,\sigma')]=i\delta^{ij}\delta(\sigma-\sigma').
\end{align}$$

Open/closed bosonic oscillators:

$$\begin{align}
[\alpha_{m}^{\mu},\alpha_{n}^{\nu}]=m\eta^{\mu\nu}\delta_{m+n,0},
\end{align}$$

$$\begin{align}
[\tilde{\alpha}_{m}^{\mu},\tilde{\alpha}_{n}^{\nu}]=m\eta^{\mu\nu}\delta_{m+n,0},
\qquad
[\alpha_{m}^{\mu},\tilde{\alpha}_{n}^{\nu}]=0.
\end{align}$$

RNS fermions:

$$\begin{align}
\{b_{r}^{i},b_{s}^{j}\}=\delta^{ij}\delta_{r+s,0},
\qquad r,s\in \mathbb{Z}+\frac{1}{2}
\end{align}$$

in the NS sector, and

$$\begin{align}
\{d_{m}^{i},d_{n}^{j}\}=\delta^{ij}\delta_{m+n,0},
\qquad m,n\in \mathbb{Z}
\end{align}$$

in the R sector.

R zero modes satisfy

$$\begin{align}
\{d_{0}^{i},d_{0}^{j}\}=\delta^{ij},
\end{align}$$

so the Ramond ground state is a spinor of $SO(8)$.

## Virasoro generators and physical states

Matter stress tensor for free bosons:

$$\begin{align}
T(z)=-\frac{1}{\alpha'}:\partial X^{\mu}\partial X_{\mu}:.
\end{align}$$

Virasoro modes:

$$\begin{align}
L_{m}=\oint \frac{dz}{2\pi i} z^{m+1}T(z).
\end{align}$$

Bosonic open string physical state conditions:

$$\begin{align}
L_{n}\ket{\mathrm{phys}}=0\quad (n>0),
\qquad
(L_{0}-1)\ket{\mathrm{phys}}=0.
\end{align}$$

Bosonic closed string physical state conditions:

$$\begin{align}
L_{n}\ket{\mathrm{phys}}=\tilde{L}_{n}\ket{\mathrm{phys}}=0\quad (n>0),
\end{align}$$

$$\begin{align}
(L_{0}-1)\ket{\mathrm{phys}}=(\tilde{L}_{0}-1)\ket{\mathrm{phys}}=0,
\qquad
L_{0}=\tilde{L}_{0}.
\end{align}$$

RNS open-string mass formula:

$$\begin{align}
M^{2}=\frac{1}{\alpha'}(N-a),
\qquad
a_{\mathrm{NS}}=\frac{1}{2},
\qquad
a_{\mathrm{R}}=0.
\end{align}$$

RNS closed-string mass formula:

$$\begin{align}
M^{2}=\frac{4}{\alpha'}(N_{L}-a_{L})=\frac{4}{\alpha'}(N_{R}-a_{R}),
\qquad
N_{L}-a_{L}=N_{R}-a_{R}.
\end{align}$$

## RNS action, worldsheet supersymmetry, and supercurrent

Flat-space RNS action in conformal gauge:

$$\begin{align}
S_{\mathrm{RNS}}
=-\frac{1}{4\pi\alpha'}\int d^{2}\sigma
\left(
\partial_{a}X^{\mu}\partial^{a}X_{\mu}
-i\bar{\psi}^{\mu}\rho^{a}\partial_{a}\psi_{\mu}
\right).
\end{align}$$

In light-cone form this becomes

$$\begin{align}
S_{\mathrm{RNS}}
=-\frac{1}{2\pi\alpha'}\int d^{2}\sigma
\left(
\partial_{+}X^{\mu}\partial_{-}X_{\mu}
-i\psi_{+}^{\mu}\partial_{-}\psi_{+\mu}
-i\psi_{-}^{\mu}\partial_{+}\psi_{-\mu}
\right).
\end{align}$$

Worldsheet supersymmetry transformations:

$$\begin{align}
\delta X^{\mu}=i\bar{\varepsilon}\psi^{\mu},
\qquad
\delta \psi^{\mu}=\rho^{a}\partial_{a}X^{\mu}\varepsilon.
\end{align}$$

Equivalently in chiral components,

$$\begin{align}
\delta X^{\mu}=i(\varepsilon_{+}\psi_{-}^{\mu}-\varepsilon_{-}\psi_{+}^{\mu}),
\end{align}$$

$$\begin{align}
\delta \psi_{+}^{\mu}=-\partial_{+}X^{\mu}\varepsilon_{-},
\qquad
\delta \psi_{-}^{\mu}=\partial_{-}X^{\mu}\varepsilon_{+}.
\end{align}$$

Stress tensor and supercurrent:

$$\begin{align}
T_{++}=\frac{1}{\alpha'}\partial_{+}X^{\mu}\partial_{+}X_{\mu}
+\frac{i}{2\alpha'}\psi_{+}^{\mu}\partial_{+}\psi_{+\mu},
\end{align}$$

$$\begin{align}
T_{--}=\frac{1}{\alpha'}\partial_{-}X^{\mu}\partial_{-}X_{\mu}
+\frac{i}{2\alpha'}\psi_{-}^{\mu}\partial_{-}\psi_{-\mu},
\end{align}$$

$$\begin{align}
G_{+}\propto \psi_{+}^{\mu}\partial_{+}X_{\mu},
\qquad
G_{-}\propto \psi_{-}^{\mu}\partial_{-}X_{\mu}.
\end{align}$$

In conformal gauge the physical constraints are

$$\begin{align}
T_{\pm\pm}=0,
\qquad
G_{\pm}=0.
\end{align}$$

# Mode expansions and boundary conditions

## Open string NN

$$\begin{align}
X^{\mu}(\tau,\sigma)=x^{\mu}+2\alpha' p^{\mu}\tau
+i\sqrt{2\alpha'}\sum_{n\neq 0}\frac{\alpha_{n}^{\mu}}{n}e^{-in\tau}\cos(n\sigma).
\end{align}$$

## Open string DD

If

$$\begin{align}
X^{i}(\tau,0)=y_{0}^{i},
\qquad
X^{i}(\tau,\pi)=y_{\pi}^{i},
\end{align}$$

then

$$\begin{align}
X^{i}(\tau,\sigma)=y_{0}^{i}+\frac{y_{\pi}^{i}-y_{0}^{i}}{\pi}\sigma
+i\sqrt{2\alpha'}\sum_{n\neq 0}\frac{\alpha_{n}^{i}}{n}e^{-in\tau}\sin(n\sigma).
\end{align}$$

No momentum zero mode appears in this direction.

## Open string ND and DN

For ND:

$$\begin{align}
\partial_{\sigma}X^{i}(\tau,0)=0,
\qquad
X^{i}(\tau,\pi)=y^{i},
\end{align}$$

so

$$\begin{align}
X^{i}(\tau,\sigma)=y^{i}
+i\sqrt{2\alpha'}\sum_{r\in \mathbb{Z}+\frac{1}{2}}\frac{\alpha_{r}^{i}}{r}e^{-ir\tau}\cos(r\sigma).
\end{align}$$

For DN:

$$\begin{align}
X^{i}(\tau,\sigma)=y^{i}
+i\sqrt{2\alpha'}\sum_{r\in \mathbb{Z}+\frac{1}{2}}\frac{\alpha_{r}^{i}}{r}e^{-ir\tau}\sin(r\sigma).
\end{align}$$

The key fact is: ND or DN gives half-integer modes.

## Closed bosonic string

$$\begin{align}
X^{\mu}(z,\bar{z})=x^{\mu}
-i\frac{\alpha'}{2}p^{\mu}\ln(z\bar{z})
+i\sqrt{\frac{\alpha'}{2}}\sum_{n\neq 0}\frac{\alpha_{n}^{\mu}}{n}z^{-n}
+i\sqrt{\frac{\alpha'}{2}}\sum_{n\neq 0}\frac{\tilde{\alpha}_{n}^{\mu}}{n}\bar{z}^{-n}.
\end{align}$$

## RNS fermion mode expansions

For a closed string, the fermions split into left and right movers.

NS boundary condition:

$$\begin{align}
\psi^{\mu}(\sigma+2\pi)=-\psi^{\mu}(\sigma).
\end{align}$$

Therefore the modes are half-integer:

$$\begin{align}
\psi_{+}^{\mu}(x^{+})=\sum_{r\in \mathbb{Z}+\frac{1}{2}} b_{r}^{\mu}e^{-irx^{+}},
\qquad
\psi_{-}^{\mu}(x^{-})=\sum_{r\in \mathbb{Z}+\frac{1}{2}} \tilde{b}_{r}^{\mu}e^{-irx^{-}}.
\end{align}$$

R boundary condition:

$$\begin{align}
\psi^{\mu}(\sigma+2\pi)=\psi^{\mu}(\sigma).
\end{align}$$

Therefore the modes are integer:

$$\begin{align}
\psi_{+}^{\mu}(x^{+})=\sum_{n\in \mathbb{Z}} d_{n}^{\mu}e^{-inx^{+}},
\qquad
\psi_{-}^{\mu}(x^{-})=\sum_{n\in \mathbb{Z}} \tilde{d}_{n}^{\mu}e^{-inx^{-}}.
\end{align}$$

For the open string one has the same distinction:

- NS: half-integer fermion modes,
- R: integer fermion modes.

## Zero-point energies

The bosonic zero-point contribution is

$$\begin{align}
\sum_{n=1}^{\infty} n=-\frac{1}{12}
\end{align}$$

under zeta regularization.

For one real NS fermion,

$$\begin{align}
\sum_{r=\frac{1}{2}}^{\infty} r=\frac{1}{24}.
\end{align}$$

In light-cone gauge there are $8$ transverse bosons and $8$ transverse fermions, so

$$\begin{align}
E_{0,\mathrm{NS}}
=-8\cdot \frac{1}{24}-8\cdot \frac{1}{48}
=-\frac{1}{2}.
\end{align}$$

Therefore the NS intercept is

$$\begin{align}
a_{\mathrm{NS}}=-E_{0,\mathrm{NS}}=\frac{1}{2}.
\end{align}$$

In the R sector the bosonic and fermionic zero-point energies cancel:

$$\begin{align}
E_{0,\mathrm{R}}=0,
\qquad
a_{\mathrm{R}}=0.
\end{align}$$

This is the practical reason why

$$\begin{align}
M^{2}_{\mathrm{open}}=\frac{1}{\alpha'}(N-\tfrac{1}{2})
\end{align}$$

in NS, but

$$\begin{align}
M^{2}_{\mathrm{open}}=\frac{1}{\alpha'}N
\end{align}$$

in R before imposing the GSO projection.

# String spectra and little groups

## Little groups

- Massive particle in $D$ dimensions: little group $SO(D-1)$.
- Massless particle in $D$ dimensions: little group $SO(D-2)$.
- Open bosonic string in $D=26$: transverse little group is $SO(24)$; massive little group is $SO(25)$.
- Superstring in $D=10$: massless little group is $SO(8)$.

## Bosonic open string in $D=26$

Mass formula:

$$\begin{align}
M^{2}=\frac{1}{\alpha'}(N-1).
\end{align}$$

Low levels:

1. $N=0$:

$$\begin{align}
\ket{0;k},
\qquad
M^{2}=-\frac{1}{\alpha'}.
\end{align}$$

This is the tachyon, a scalar of $SO(25)$.

1. $N=1$:

$$\begin{align}
\alpha_{-1}^{i}\ket{0;k},
\qquad
M^{2}=0.
\end{align}$$

This is a massless vector of $SO(24)$ with $24$ polarizations.

1. $N=2$:

$$\begin{align}
\alpha_{-2}^{i}\ket{0;k},
\qquad
\alpha_{-1}^{i}\alpha_{-1}^{j}\ket{0;k},
\qquad
M^{2}=\frac{1}{\alpha'}.
\end{align}$$

The total degeneracy is

$$\begin{align}
24+\frac{24\cdot 25}{2}=324,
\end{align}$$

which matches the symmetric traceless rank-2 tensor of $SO(25)$:

$$\begin{align}
\frac{25\cdot 26}{2}-1=324.
\end{align}$$

## Bosonic closed string in $D=26$

Mass formula:

$$\begin{align}
M^{2}=\frac{4}{\alpha'}(N_{L}-1)=\frac{4}{\alpha'}(N_{R}-1),
\qquad
N_{L}=N_{R}.
\end{align}$$

Low levels:

1. $N_{L}=N_{R}=0$:

$$\begin{align}
M^{2}=-\frac{4}{\alpha'}.
\end{align}$$

Closed-string tachyon.

1. $N_{L}=N_{R}=1$:

$$\begin{align}
\alpha_{-1}^{i}\tilde{\alpha}_{-1}^{j}\ket{0;k}.
\end{align}$$

This decomposes as

$$\begin{align}
24\otimes 24
=
\text{symmetric traceless}
\oplus
\text{antisymmetric}
\oplus
\text{trace}.
\end{align}$$

These give the graviton, Kalb-Ramond field, and dilaton.

## Open superstring in $D=10$

NS sector first surviving state after GSO:

$$\begin{align}
b_{-1/2}^{i}\ket{0;k}_{\mathrm{NS}},
\qquad
M^{2}=0,
\end{align}$$

which transforms as $8_{v}$.

R sector ground state:

$$\begin{align}
\ket{s;k}_{\mathrm{R}},
\qquad
M^{2}=0,
\end{align}$$

which transforms as $8_{s}$ or $8_{c}$ depending on chirality.

## GSO projection

Operationally:

- in the NS sector, project out the tachyon and keep states with the chosen worldsheet fermion parity,
- in the R sector, keep one chirality of the Ramond ground state.

For the open superstring:

- NS sector:

$$\begin{align}
(-1)^{F_{\mathrm{NS}}}=+1
\end{align}$$

keeps the states with an odd number of NS fermionic creation operators, so the first surviving state is

$$\begin{align}
b_{-1/2}^{i}\ket{0;k}_{\mathrm{NS}}.
\end{align}$$

- R sector:

$$\begin{align}
(-1)^{F_{\mathrm{R}}}=\pm 1
\end{align}$$

selects one chirality, so only $8_{s}$ or only $8_{c}$ survives.

Closed strings are obtained by applying the GSO projection independently on the left and right sectors:

| theory | left R chirality | right R chirality |
|---|---|---|
| Type IIA | $8_{s}$ | $8_{c}$ |
| Type IIB | $8_{s}$ | $8_{s}$ |

Useful memory rule:

- Type IIA: opposite Ramond chiralities,
- Type IIB: same Ramond chirality.

## Type IIA and Type IIB closed superstrings

Massless NS-NS sector:

$$\begin{align}
8_{v}\otimes 8_{v}=35\oplus 28\oplus 1.
\end{align}$$

This gives

$$\begin{align}
g_{\mu\nu},\qquad B_{\mu\nu},\qquad \Phi.
\end{align}$$

Mixed sectors:

- NS-R has left NS vector oscillator and right R spinor ground state:

$$\begin{align}
b_{-1/2}^{i}\ket{0;k}_{\mathrm{NS}}
\otimes
\ket{\tilde{s};k}_{\mathrm{R}}.
\end{align}$$

- R-NS has left R spinor ground state and right NS vector oscillator:

$$\begin{align}
\ket{s;k}_{\mathrm{R}}
\otimes
\tilde{b}_{-1/2}^{i}\ket{0;k}_{\mathrm{NS}}.
\end{align}$$

For Type IIA,

$$\begin{align}
\mathrm{NS\text{-}R}:\quad 8_{v}\otimes 8_{c}=8_{s}\oplus 56_{s},
\end{align}$$

$$\begin{align}
\mathrm{R\text{-}NS}:\quad 8_{s}\otimes 8_{v}=8_{c}\oplus 56_{c}.
\end{align}$$

For Type IIB,

$$\begin{align}
\mathrm{NS\text{-}R}:\quad 8_{v}\otimes 8_{s}=8_{c}\oplus 56_{c},
\end{align}$$

$$\begin{align}
\mathrm{R\text{-}NS}:\quad 8_{s}\otimes 8_{v}=8_{c}\oplus 56_{c}.
\end{align}$$

The $56$ pieces are gravitini and the $8$ pieces are dilatini. Type IIA has opposite mixed-sector chiralities, while Type IIB has the same mixed-sector chirality.

R-R sectors:

- Type IIA:

$$\begin{align}
8_{s}\otimes 8_{c}=8_{v}\oplus 56,
\end{align}$$

corresponding to odd-form potentials $C_{1},C_{3}$.

- Type IIB:

$$\begin{align}
8_{s}\otimes 8_{s}=1\oplus 28\oplus 35_{+},
\end{align}$$

corresponding to even-form potentials $C_{0},C_{2},C_{4}^{+}$.

Chirality rule:

- Type IIA: left and right Ramond sectors have opposite chirality.
- Type IIB: left and right Ramond sectors have the same chirality.

## SO(8) representation products

The three basic triality-related representations are

$$\begin{align}
8_{v},
\qquad
8_{s},
\qquad
8_{c}.
\end{align}$$

The most useful tensor products are

$$\begin{align}
8_{v}\otimes 8_{v}=35\oplus 28\oplus 1,
\end{align}$$

$$\begin{align}
8_{s}\otimes 8_{c}=8_{v}\oplus 56,
\end{align}$$

$$\begin{align}
8_{s}\otimes 8_{s}=1\oplus 28\oplus 35_{+},
\end{align}$$

$$\begin{align}
8_{c}\otimes 8_{c}=1\oplus 28\oplus 35_{-},
\end{align}$$

$$\begin{align}
8_{v}\otimes 8_{s}=8_{c}\oplus 56_{c},
\qquad
8_{v}\otimes 8_{c}=8_{s}\oplus 56_{s}.
\end{align}$$

How to use this table in exams:

- $8_{v}\otimes 8_{v}$ gives NS-NS states,
- $8_{s}\otimes 8_{c}$ or $8_{s}\otimes 8_{s}$ gives the RR sector,
- $8_{v}\otimes 8_{s}$ and $8_{s}\otimes 8_{v}$ give NS-R and R-NS states.

## Type I and heterotic strings

Type I:

- Closed sector is the $\Omega$-projection of Type IIB.
- Open sector adds Chan-Paton factors.
- Gauge group is $SO(32)$.
- Massless open NS state:

$$\begin{align}
\lambda^{a}b_{-1/2}^{i}\ket{0;k}_{\mathrm{NS}}
\end{align}$$

gives the gauge boson.

Heterotic:

- Right mover: superstring.
- Left mover: bosonic string plus 16 internal coordinates.
- Gauge groups: $SO(32)$ or $E_{8}\times E_{8}$.

Mass formulas:

$$\begin{align}
\frac{\alpha'}{4}M^{2}=N_{R}-a_{R},
\end{align}$$

$$\begin{align}
\frac{\alpha'}{4}M^{2}=N_{L}+\frac{1}{2}p_{L}^{2}-1,
\end{align}$$

with

$$\begin{align}
N_{R}-a_{R}=N_{L}+\frac{1}{2}p_{L}^{2}-1.
\end{align}$$

# Compactification and T-duality

## Closed string on a circle

For one compact coordinate,

$$\begin{align}
X\sim X+2\pi R,
\qquad
n,w\in \mathbb{Z}.
\end{align}$$

Momentum along the circle is quantized as

$$\begin{align}
p=\frac{n}{R}.
\end{align}$$

A closed string may wind as

$$\begin{align}
X(\tau,\sigma+2\pi)=X(\tau,\sigma)+2\pi wR.
\end{align}$$

A useful zero-mode form is

$$\begin{align}
X(\tau,\sigma)=x+\frac{\alpha'}{2}p_{L}(\tau+\sigma)
+\frac{\alpha'}{2}p_{R}(\tau-\sigma)+\text{oscillators},
\end{align}$$

with

$$\begin{align}
p_{L}=\frac{n}{R}+\frac{wR}{\alpha'},
\qquad
p_{R}=\frac{n}{R}-\frac{wR}{\alpha'}.
\end{align}$$

The compact zero-mode contribution satisfies

$$\begin{align}
\frac{1}{2}(p_{L}^{2}+p_{R}^{2})
=\frac{n^{2}}{R^{2}}+\frac{w^{2}R^{2}}{\alpha'^{2}},
\end{align}$$

and

$$\begin{align}
p_{L}^{2}-p_{R}^{2}=\frac{4nw}{\alpha'}.
\end{align}$$

## Compactified closed-string spectrum

For the compact bosonic closed string,

$$\begin{align}
M^{2}=p_{L}^{2}+\frac{4}{\alpha'}(N_{L}-1)
=p_{R}^{2}+\frac{4}{\alpha'}(N_{R}-1).
\end{align}$$

With the left/right convention above this gives

$$\begin{align}
N_{R}-N_{L}=nw.
\end{align}$$

If the opposite convention for $\sigma$ is used, the sign of the displayed level-matching relation is reversed.

For Type II superstrings, replace the bosonic intercepts by the appropriate RNS intercepts:

$$\begin{align}
M^{2}=p_{L}^{2}+\frac{4}{\alpha'}(N_{L}-a_{L})
=p_{R}^{2}+\frac{4}{\alpha'}(N_{R}-a_{R}).
\end{align}$$

## T-duality on a circle

The spectrum is invariant under

$$\begin{align}
R\longleftrightarrow \frac{\alpha'}{R},
\qquad
n\longleftrightarrow w.
\end{align}$$

Equivalently,

$$\begin{align}
p_{L}\to p_{L},
\qquad
p_{R}\to -p_{R}.
\end{align}$$

At the coordinate level this is implemented by flipping one chiral part:

$$\begin{align}
X_{L}\to X_{L},
\qquad
X_{R}\to -X_{R}.
\end{align}$$

The self-dual radius is

$$\begin{align}
R=\sqrt{\alpha'}.
\end{align}$$

For the bosonic closed string, extra states become massless at this radius and enhance

$$\begin{align}
U(1)_{L}\times U(1)_{R}
\to
SU(2)_{L}\times SU(2)_{R}.
\end{align}$$

Exam memory rule:

- momentum modes are light when $R$ is large,
- winding modes are light when $R$ is small,
- T-duality exchanges the two descriptions.

## Open-string T-duality and D-branes

For an open string, T-duality along a spatial direction exchanges boundary conditions:

$$\begin{align}
\partial_{\sigma}X=0
\quad\Longleftrightarrow\quad
\partial_{\tau}\tilde X=0.
\end{align}$$

Thus

- Neumann in $X$ becomes Dirichlet in $\tilde X$,
- Dirichlet in $X$ becomes Neumann in $\tilde X$.

If an open string has Neumann directions

$$\begin{align}
X^{0},X^{1},\dots,X^{p}
\end{align}$$

and Dirichlet directions transverse to them, its endpoint lies on a D$p$-brane.

For a string stretched between two parallel branes separated by distance $L$, the classical stretching contribution shifts the open-string mass formula by

$$\begin{align}
M^{2}=\frac{L^{2}}{(2\pi\alpha')^{2}}+\frac{1}{\alpha'}(N-a).
\end{align}$$

When $N$ coincident D-branes are present, Chan-Paton labels give a $U(N)$ gauge theory on the brane worldvolume. Strings stretched between separated branes become massive, giving the Higgsed phase.

## Type II chirality under T-duality

T-duality flips one right-moving spacetime chirality because it acts as

$$\begin{align}
X_{R}\to -X_{R}
\end{align}$$

on the dualized direction. Therefore

$$\begin{align}
\text{Type IIA on }S^{1}_{R}
\quad\longleftrightarrow\quad
\text{Type IIB on }S^{1}_{\alpha'/R}.
\end{align}$$

Useful memory rule:

- T-duality along one circle exchanges Type IIA and Type IIB,
- T-duality along an even number of circles preserves the Type IIA/IIB label.

# CFT toolkit

## Primary fields and descendants

A primary field of weights $(h,\bar{h})$ transforms as

$$\begin{align}
\delta \mathcal{O}
=-(\varepsilon\partial+h\partial\varepsilon+\bar{\varepsilon}\bar{\partial}+\bar{h}\bar{\partial}\bar{\varepsilon})\mathcal{O}.
\end{align}$$

Equivalent finite form:

$$\begin{align}
\mathcal{O}'(z',\bar{z}')
=\left(\frac{\partial z'}{\partial z}\right)^{-h}
\left(\frac{\partial \bar{z}'}{\partial \bar{z}}\right)^{-\bar{h}}
\mathcal{O}(z,\bar{z}).
\end{align}$$

Descendants are obtained by acting with $L_{-n}$ on primaries. For example, $\partial X$ is primary of weight $1$, but $\partial^{n}X$ for $n>1$ is a descendant, not a primary.

## OPE and mode expansions

Holomorphic Laurent expansion:

$$\begin{align}
\phi(z)=\sum_{n}\phi_{n}z^{-n-h}.
\end{align}$$

Mode extraction:

$$\begin{align}
\phi_{n}=\oint \frac{dz}{2\pi i} z^{n+h-1}\phi(z).
\end{align}$$

If

$$\begin{align}
A(z)B(w)\sim \sum_{k\geq 1}\frac{C_{k}(w)}{(z-w)^{k}},
\end{align}$$

then the singular part determines the mode algebra. In practice:

- double pole gives the coefficient of the central or canonical term,
- single pole gives the action of one mode on the other.

For a primary field of weight $h$,

$$\begin{align}
T(z)\mathcal{O}(w)\sim \frac{h\,\mathcal{O}(w)}{(z-w)^{2}}+\frac{\partial \mathcal{O}(w)}{z-w}.
\end{align}$$

Exam template:

1. Compute all Wick contractions between $T(z)$ and the ingredients in $\mathcal{O}(w)$.
1. Expand the leftover fields around $w$.
1. Read off the coefficient of $(z-w)^{-2}$ as the conformal weight.
1. Read off the coefficient of $(z-w)^{-1}$ as the derivative term.

## From OPEs to mode algebras

For fields of weights $h_{A}$ and $h_{B}$,

$$\begin{align}
A_{m}=\oint \frac{dz}{2\pi i}z^{m+h_{A}-1}A(z),
\qquad
B_{n}=\oint \frac{dw}{2\pi i}w^{n+h_{B}-1}B(w).
\end{align}$$

The graded commutator is computed by nesting the $z$ contour around $w$:

$$\begin{align}
[A_{m},B_{n}]_{\mathrm{gr}}
=
\oint \frac{dw}{2\pi i}w^{n+h_{B}-1}
\oint_{w}\frac{dz}{2\pi i}z^{m+h_{A}-1}A(z)B(w).
\end{align}$$

Use the ordinary commutator for bosonic modes and the anticommutator when both modes are fermionic.

If

$$\begin{align}
A(z)B(w)\sim \sum_{k\geq 1}\frac{C_{k}(w)}{(z-w)^{k}},
\end{align}$$

expand

$$\begin{align}
z^{m+h_{A}-1}
=
\sum_{j\geq 0}
\binom{m+h_{A}-1}{j}
w^{m+h_{A}-1-j}(z-w)^{j}.
\end{align}$$

Only the term with $j=k-1$ survives the $z$ residue. Therefore

$$\begin{align}
[A_{m},B_{n}]_{\mathrm{gr}}
=
\sum_{k\geq 1}
\binom{m+h_{A}-1}{k-1}
(C_{k})_{m+n}.
\end{align}$$

For a derivative field,

$$\begin{align}
(\partial \phi)_{q}=-(q+h)\phi_{q}
\end{align}$$

when

$$\begin{align}
\phi(z)=\sum_{q}\phi_{q}z^{-q-h}.
\end{align}$$

Primary-field example:

$$\begin{align}
T(z)\phi(w)\sim \frac{h\phi(w)}{(z-w)^{2}}+\frac{\partial \phi(w)}{z-w}
\end{align}$$

gives

$$\begin{align}
[L_{m},\phi_{n}]
=h(m+1)\phi_{m+n}-(m+n+h)\phi_{m+n}
=((h-1)m-n)\phi_{m+n}.
\end{align}$$

Virasoro example:

$$\begin{align}
T(z)T(w)\sim
\frac{c/2}{(z-w)^{4}}
+\frac{2T(w)}{(z-w)^{2}}
+\frac{\partial T(w)}{z-w}
\end{align}$$

gives

$$\begin{align}
[L_{m},L_{n}]_{\mathrm{central}}
=\frac{c}{2}\binom{m+1}{3}\delta_{m+n,0}
=\frac{c}{12}m(m^{2}-1)\delta_{m+n,0},
\end{align}$$

and

$$\begin{align}
2(m+1)L_{m+n}-(m+n+2)L_{m+n}
=(m-n)L_{m+n}.
\end{align}$$

Thus

$$\begin{align}
[L_{m},L_{n}]
=(m-n)L_{m+n}
+\frac{c}{12}m(m^{2}-1)\delta_{m+n,0}.
\end{align}$$

Supercurrent examples:

$$\begin{align}
T(z)G(w)\sim
\frac{\frac{3}{2}G(w)}{(z-w)^{2}}
+\frac{\partial G(w)}{z-w}
\end{align}$$

implies

$$\begin{align}
[L_{m},G_{r}]
=\frac{3}{2}(m+1)G_{m+r}
-\left(m+r+\frac{3}{2}\right)G_{m+r}
=\left(\frac{m}{2}-r\right)G_{m+r}.
\end{align}$$

If

$$\begin{align}
G(z)G(w)\sim
\frac{2c/3}{(z-w)^{3}}
+\frac{2T(w)}{z-w},
\end{align}$$

then

$$\begin{align}
\{G_{r},G_{s}\}
=2L_{r+s}
+\frac{2c}{3}\binom{r+\frac{1}{2}}{2}\delta_{r+s,0}
=2L_{r+s}
+\frac{c}{3}\left(r^{2}-\frac{1}{4}\right)\delta_{r+s,0}.
\end{align}$$

Current algebra template:

$$\begin{align}
J^{a}(z)J^{b}(w)
\sim
\frac{k\kappa^{ab}}{(z-w)^{2}}
+\frac{i f^{ab}{}_{c}J^{c}(w)}{z-w}
\end{align}$$

gives, for weight-one currents,

$$\begin{align}
[J_{m}^{a},J_{n}^{b}]
=km\kappa^{ab}\delta_{m+n,0}
+i f^{ab}{}_{c}J_{m+n}^{c}.
\end{align}$$

## Open-string CFT formulation

After Wick rotation, the open-string worldsheet can be represented by the upper half-plane

$$\begin{align}
\Sigma=\{z\in \mathbb{C}\mid \operatorname{Im}z\geq 0\},
\qquad
\partial\Sigma=\mathbb{R}.
\end{align}$$

Conformal boundary conditions require no momentum flow through the boundary:

$$\begin{align}
T(z)=\bar{T}(\bar{z})
\qquad
z=\bar{z}.
\end{align}$$

For the RNS theory the supercurrent also obeys

$$\begin{align}
G(z)=\eta\,\bar{G}(\bar{z}),
\qquad
\eta=\pm 1,
\end{align}$$

on each boundary component. The open string therefore has one copy of the Virasoro or super-Virasoro algebra after imposing the boundary gluing condition.

For target-space bosons, Neumann and Dirichlet conditions become

$$\begin{align}
\partial X^{a}=\bar{\partial}X^{a}
\qquad
\text{on NN directions},
\end{align}$$

$$\begin{align}
\partial X^{i}=-\bar{\partial}X^{i}
\qquad
\text{on DD directions}.
\end{align}$$

Equivalently, introduce the reflection matrix

$$
D^{\mu}{}_{\nu}
=
\begin{cases}
+\delta^{\mu}{}_{\nu}, & \text{Neumann direction},\\
-\delta^{\mu}{}_{\nu}, & \text{Dirichlet direction},
\end{cases}
$$

and use the doubling trick:

$$
\partial X_{\mathrm{dbl}}^{\mu}(z)
=
\begin{cases}
\partial X^{\mu}(z), & \operatorname{Im}z>0,\\
D^{\mu}{}_{\nu}\bar{\partial}X^{\nu}(\bar{z}), & \operatorname{Im}z<0.
\end{cases}
$$

Then all boundary correlators can be computed as chiral correlators on the full plane. In NN directions,

$$\begin{align}
X^{a}(x)X^{b}(y)\sim -2\alpha'\eta^{ab}\ln|x-y|,
\end{align}$$

so a boundary exponential has weight

$$\begin{align}
h\big(:e^{ik\cdot X(x)}:\big)=\alpha' k^{2}.
\end{align}$$

Boundary vertex operators are integrated over the real boundary:

$$\begin{align}
\int_{\partial\Sigma} dx\, \mathcal{V}(x),
\end{align}$$

and conformal invariance requires

$$\begin{align}
h(\mathcal{V})=1.
\end{align}$$

The corresponding unintegrated bosonic-string vertex is

$$\begin{align}
U(x)=c(x)\mathcal{V}(x),
\end{align}$$

because the boundary ghost $c$ has weight $-1$.

Important open bosonic-string vertices:

$$\begin{align}
\mathcal{V}_{T}(x)=:e^{ik\cdot X(x)}:,
\qquad
h=\alpha' k^{2},
\end{align}$$

$$\begin{align}
\mathcal{V}_{A}(x)=\zeta_{\mu}\partial_{t}X^{\mu}(x)e^{ik\cdot X(x)},
\qquad
h=1+\alpha' k^{2}.
\end{align}$$

Thus

$$\begin{align}
h(\mathcal{V}_{T})=1
\quad\Longrightarrow\quad
M^{2}=-\frac{1}{\alpha'},
\end{align}$$

while

$$\begin{align}
h(\mathcal{V}_{A})=1
\quad\Longrightarrow\quad
k^{2}=0,
\end{align}$$

together with

$$\begin{align}
k\cdot \zeta=0,
\qquad
\zeta_{\mu}\sim \zeta_{\mu}+\lambda k_{\mu}.
\end{align}$$

For open RNS fermions at the two endpoints,

$$\begin{align}
\psi_{+}^{\mu}(\tau,0)=\eta_{0}D^{\mu}{}_{\nu}\psi_{-}^{\nu}(\tau,0),
\qquad
\psi_{+}^{\mu}(\tau,\pi)=\eta_{\pi}D^{\mu}{}_{\nu}\psi_{-}^{\nu}(\tau,\pi).
\end{align}$$

The product of the endpoint signs determines the sector:

$$\begin{align}
\eta_{0}\eta_{\pi}=-1
\quad\Longrightarrow\quad
\mathrm{NS},
\qquad
\eta_{0}\eta_{\pi}=+1
\quad\Longrightarrow\quad
\mathrm{R}.
\end{align}$$

For the open superstring, the massless NS gauge-boson vertex in the $(-1)$ picture is

$$\begin{align}
\mathcal{V}_{A}^{(-1)}(x)
=
\lambda^{A}e^{-\varphi}\zeta_{\mu}\psi^{\mu}e^{ik\cdot X}(x),
\end{align}$$

with

$$\begin{align}
h(e^{-\varphi})=\frac{1}{2},
\qquad
h(\psi^{\mu})=\frac{1}{2},
\qquad
h(e^{ik\cdot X})=\alpha' k^{2}.
\end{align}$$

Therefore

$$\begin{align}
h(\mathcal{V}_{A}^{(-1)})=1
\quad\Longleftrightarrow\quad
k^{2}=0.
\end{align}$$

The unintegrated vertex is

$$\begin{align}
U_{A}^{(-1)}(x)=c\,\mathcal{V}_{A}^{(-1)}(x).
\end{align}$$

Chan-Paton factors attach matrix labels to boundary vertices:

$$\begin{align}
\mathcal{V}_{ij}(x)=(\lambda^{A})_{ij}\mathcal{V}_{A}(x),
\end{align}$$

and disk amplitudes are color ordered along the boundary, with factors such as

$$\begin{align}
\operatorname{Tr}(\lambda^{A_{1}}\lambda^{A_{2}}\cdots \lambda^{A_{n}}).
\end{align}$$

The residual conformal group of the disk or upper half-plane is $PSL(2,\mathbb{R})$, so three boundary insertion points may be fixed in tree-level open-string amplitudes.

## Free boson

$$\begin{align}
X^{\mu}(z)X^{\nu}(w)\sim -\frac{\alpha'}{2}\eta^{\mu\nu}\ln(z-w),
\end{align}$$

$$\begin{align}
\partial X^{\mu}(z)\partial X^{\nu}(w)\sim -\frac{\alpha'}{2}\frac{\eta^{\mu\nu}}{(z-w)^{2}}.
\end{align}$$

Stress tensor:

$$\begin{align}
T(z)=-\frac{1}{\alpha'}:\partial X^{\mu}\partial X_{\mu}:.
\end{align}$$

Then

$$\begin{align}
T(z)\partial X^{\mu}(w)\sim \frac{\partial X^{\mu}(w)}{(z-w)^{2}}+\frac{\partial^{2}X^{\mu}(w)}{z-w}.
\end{align}$$

And

$$\begin{align}
T(z)T(w)\sim \frac{D/2}{(z-w)^{4}}+\frac{2T(w)}{(z-w)^{2}}+\frac{\partial T(w)}{z-w}.
\end{align}$$

So a free boson contributes

$$\begin{align}
c=1
\end{align}$$

per real scalar.

**Normal-ordering shortcut**:

$$\begin{align}
:AB:(z)\, C(w)
\sim
(A(z)C(w))_{\mathrm{sing}}\, B(z)
+(B(z)C(w))_{\mathrm{sing}}\, A(z).
\end{align}$$

For two normal-ordered bilinears, include both single and double contractions.

## Vertex operators

For the free boson,

$$\begin{align}
:e^{ik\cdot X(z)}:
\end{align}$$

has conformal weight

$$\begin{align}
h=\frac{\alpha' k^{2}}{4}
\end{align}$$

in the holomorphic closed-string normalization.

Open-string boundary vertex:

$$\begin{align}
V_{k}(x)=:e^{ik\cdot X(x)}:
\end{align}$$

has boundary weight

$$\begin{align}
h=\alpha' k^{2}.
\end{align}$$

Useful physical-state checks:

- open-string tachyon: $h=1 \Rightarrow M^{2}=-1/\alpha'$,
- open-string vector: $V_{\zeta,k}=\zeta\cdot \partial X\, e^{ik\cdot X}$ and $h=1 \Rightarrow k^{2}=0$,
- closed-string graviton-type vertex:

$$\begin{align}
\epsilon_{\mu\nu}\partial X^{\mu}\bar{\partial}X^{\nu}e^{ik\cdot X},
\end{align}$$

with $(h,\bar{h})=(1,1)\Rightarrow k^{2}=0$.

Further physical-state conditions:

- open vector:

$$\begin{align}
k\cdot \zeta=0,
\qquad
\zeta_{\mu}\sim \zeta_{\mu}+\lambda k_{\mu}.
\end{align}$$

- closed tensor:

$$\begin{align}
k^{\mu}\epsilon_{\mu\nu}=0,
\qquad
k^{\nu}\epsilon_{\mu\nu}=0.
\end{align}$$

Then decompose

$$\begin{align}
\epsilon_{\mu\nu}
=
\epsilon_{(\mu\nu)}^{\mathrm{traceless}}
+\epsilon_{[\mu\nu]}
+\frac{1}{D}\eta_{\mu\nu}\epsilon^{\rho}{}_{\rho}
\end{align}$$

into graviton, Kalb-Ramond field, and dilaton.

## State-operator correspondence

Local operator at the origin creates a state:

$$\begin{align}
\mathcal{O}(0)\ket{0}\longleftrightarrow \ket{\mathcal{O}}.
\end{align}$$

In radial quantization:

$$\begin{align}
L_{0}=\text{dilatation operator}.
\end{align}$$

## Virasoro algebra

$$\begin{align}
[L_{m},L_{n}]=(m-n)L_{m+n}+\frac{c}{12}m(m^{2}-1)\delta_{m+n,0}.
\end{align}$$

For the bosonic matter system,

$$\begin{align}
c=D.
\end{align}$$

For bosonic string BRST consistency,

$$\begin{align}
c_{\mathrm{matter}}+c_{bc}=0
\quad\Longrightarrow\quad
D-26=0.
\end{align}$$

## Super-Virasoro algebra and constraints

For the RNS theory the modes are

$$\begin{align}
T(z)=\sum_{n} L_{n} z^{-n-2}.
\end{align}$$

In the NS sector the supercurrent has half-integer modes:

$$\begin{align}
G(z)=\sum_{r\in \mathbb{Z}+\frac{1}{2}} G_{r} z^{-r-\frac{3}{2}}.
\end{align}$$

In the R sector the modes are integer:

$$\begin{align}
F(z)=\sum_{n\in \mathbb{Z}} F_{n} z^{-n-\frac{3}{2}}.
\end{align}$$

The super-Virasoro algebra is

$$\begin{align}
[L_{m},L_{n}]=(m-n)L_{m+n}+\frac{c}{12}m(m^{2}-1)\delta_{m+n,0},
\end{align}$$

$$\begin{align}
[L_{m},G_{r}]=\left(\frac{m}{2}-r\right)G_{m+r},
\end{align}$$

$$\begin{align}
\{G_{r},G_{s}\}=2L_{r+s}+\frac{c}{3}\left(r^{2}-\frac{1}{4}\right)\delta_{r+s,0}
\end{align}$$

in the NS sector, and

$$\begin{align}
[L_{m},F_{n}]=\left(\frac{m}{2}-n\right)F_{m+n},
\end{align}$$

$$\begin{align}
\{F_{m},F_{n}\}=2L_{m+n}+\frac{c}{3}(m^{2}-1)\delta_{m+n,0}
\end{align}$$

in the R sector.

Physical-state conditions:

- NS:

$$\begin{align}
L_{n}\ket{\mathrm{phys}}=0,\qquad G_{r}\ket{\mathrm{phys}}=0
\end{align}$$

for

$$\begin{align}
n>0,\qquad r>0,
\end{align}$$

and

$$\begin{align}
(L_{0}-\tfrac{1}{2})\ket{\mathrm{phys}}=0
\end{align}$$

before GSO normalization is translated into the mass formula.

- R:

$$\begin{align}
L_{n}\ket{\mathrm{phys}}=0,\qquad F_{n}\ket{\mathrm{phys}}=0
\end{align}$$

for

$$\begin{align}
n>0,
\end{align}$$

and

$$\begin{align}
L_{0}\ket{\mathrm{phys}}=0.
\end{align}$$

Low-level consequences:

- NS massless state

$$\begin{align}
\zeta_{i}b_{-1/2}^{i}\ket{0;k}_{\mathrm{NS}}
\end{align}$$

obeys the transverse polarization condition and gives a vector.

- R ground state

$$\begin{align}
\ket{s;k}_{\mathrm{R}}
\end{align}$$

obeys the zero-mode constraint

$$\begin{align}
F_{0}\ket{s;k}_{\mathrm{R}}=0,
\end{align}$$

which becomes the spacetime massless Dirac equation.

# Free fermions and bosonization

## Free chiral fermions

For a complex chiral fermion,

$$\begin{align}
\psi(z)\bar{\psi}(w)\sim \frac{1}{z-w},
\end{align}$$

$$\begin{align}
\psi(z)\psi(w)\sim 0,
\qquad
\bar{\psi}(z)\bar{\psi}(w)\sim 0.
\end{align}$$

The stress tensor is

$$\begin{align}
T(z)=-\frac{1}{2}:\psi\partial\bar{\psi}:+\frac{1}{2}:\partial\psi\,\bar{\psi}:,
\end{align}$$

and each real free fermion contributes

$$\begin{align}
c=\frac{1}{2}.
\end{align}$$

For a complex fermion,

$$\begin{align}
c=1.
\end{align}$$

## Bosonization dictionary

Introduce a chiral boson $H$ with

$$\begin{align}
H(z)H(w)\sim -\ln(z-w).
\end{align}$$

Then

$$\begin{align}
e^{aH(z)}e^{bH(w)}\sim (z-w)^{-ab}e^{(a+b)H(w)}.
\end{align}$$

The standard bosonization of a complex fermion is

$$\begin{align}
\psi=e^{iH},
\qquad
\bar{\psi}=e^{-iH}.
\end{align}$$

Reason:

$$\begin{align}
\psi(z)\bar{\psi}(w)\sim (z-w)^{-i(-i)}=(z-w)^{-1},
\end{align}$$

while

$$\begin{align}
\psi(z)\psi(w)\sim (z-w)^{-i^{2}}=(z-w)^{1},
\end{align}$$

which is regular.

More generally, the exam-style answer is

$$\begin{align}
a=\pm i,
\qquad
b=\mp i.
\end{align}$$

Weight formula for bosonized vertex operators:

$$\begin{align}
h\big(e^{aH}\big)=-\frac{a^{2}}{2}.
\end{align}$$

So

$$\begin{align}
h(e^{\pm iH})=\frac{1}{2},
\end{align}$$

which matches the conformal weight of a chiral fermion.

# Ghost systems

## Fermionic $bc$ ghosts

For reparametrization ghosts:

$$\begin{align}
b(z)c(w)\sim \frac{1}{z-w}.
\end{align}$$

If the conformal weights are

$$\begin{align}
h_{b}=\lambda,
\qquad
h_{c}=1-\lambda,
\end{align}$$

then the stress tensor is

$$\begin{align}
T=(1-\lambda):(\partial b)c:-\lambda:b\partial c:.
\end{align}$$

For anticommuting $bc$ ghosts, the central charge is

$$\begin{align}
c_{bc}=1-3(2\lambda-1)^{2}.
\end{align}$$

For bosonic string reparametrization ghosts, $\lambda=2$, so

$$\begin{align}
c_{bc}=-26.
\end{align}$$

Mode expansions:

$$\begin{align}
b(z)=\sum_{n} b_{n} z^{-n-\lambda},
\qquad
c(z)=\sum_{n} c_{n} z^{-n-(1-\lambda)}.
\end{align}$$

Mode algebra:

$$\begin{align}
\{b_{m},c_{n}\}=\delta_{m+n,0}.
\end{align}$$

## Bosonic $\beta\gamma$ ghosts

For a commuting $\beta\gamma$ system,

$$\begin{align}
\beta(z)\gamma(w)\sim -\frac{1}{z-w},
\end{align}$$

and

$$\begin{align}
\beta(z)\beta(w)\sim 0,
\qquad
\gamma(z)\gamma(w)\sim 0.
\end{align}$$

Stress tensor:

$$\begin{align}
T=(1-\lambda)(\partial\beta\,\gamma)-\lambda(\beta\,\partial\gamma).
\end{align}$$

OPEs with the fields:

$$\begin{align}
T(z)\beta(w)\sim \frac{\lambda\,\beta(w)}{(z-w)^{2}}+\frac{\partial\beta(w)}{z-w},
\end{align}$$

$$\begin{align}
T(z)\gamma(w)\sim \frac{(1-\lambda)\gamma(w)}{(z-w)^{2}}+\frac{\partial\gamma(w)}{z-w}.
\end{align}$$

Therefore,

$$\begin{align}
h_{\beta}=\lambda,
\qquad
h_{\gamma}=1-\lambda.
\end{align}$$

Central charge:

$$\begin{align}
c_{\beta\gamma}=2-12\lambda(1-\lambda)=12\lambda^{2}-12\lambda+2.
\end{align}$$

For the superconformal ghost system, $\lambda=3/2$, so

$$\begin{align}
c_{\beta\gamma}=11.
\end{align}$$

Mode expansions:

$$\begin{align}
\beta(z)=\sum_{r}\beta_{r} z^{-r-\lambda},
\qquad
\gamma(z)=\sum_{r}\gamma_{r} z^{-r-(1-\lambda)}.
\end{align}$$

Mode algebra:

$$\begin{align}
[\beta_{r},\gamma_{s}]=-\delta_{r+s,0},
\end{align}$$

$$\begin{align}
[\beta_{r},\beta_{s}]=0,
\qquad
[\gamma_{r},\gamma_{s}]=0.
\end{align}$$

Exam template for ghost computations:

1. Start from the defining OPE.
1. Insert the stress tensor.
1. Keep all single contractions to get $T(z)\beta(w)$ or $T(z)\gamma(w)$.
1. Keep both single and double contractions to get $T(z)T(w)$.
1. Read the quartic pole as $c/2$.

# DDF operators

Choose a null vector $k^{\mu}$ and transverse polarizations $\zeta_{i}^{\mu}$:

$$\begin{align}
k^{2}=0,
\qquad
\zeta_{i}\cdot k=0,
\qquad
\zeta_{i}\cdot \zeta_{j}=\delta_{ij}.
\end{align}$$

Define

$$\begin{align}
\mathcal{J}_{n}^{i}(z)=\sqrt{\frac{2}{\alpha'}}\,\zeta_{i}\cdot \partial X(z)e^{ink\cdot X(z)},
\end{align}$$

$$\begin{align}
A_{n}^{i}=\oint \frac{dz}{2\pi i}\mathcal{J}_{n}^{i}(z).
\end{align}$$

Key facts:

1. $\mathcal{J}_{n}^{i}$ has weight $1$.
1. $[L_{m},A_{n}^{i}]=0$.
1. The DDF algebra is

$$\begin{align}
[A_{m}^{i},A_{n}^{j}]=m\delta^{ij}\delta_{m+n,0}.
\end{align}$$

1. DDF states reproduce the light-cone physical spectrum.

# High-frequency brane formulas

## Dp-brane auxiliary metric trick

Induced metric:

$$\begin{align}
\gamma_{ab}=\partial_{a}X^{\mu}\partial_{b}X^{\nu}\eta_{\mu\nu}.
\end{align}$$

Nambu-Goto action:

$$\begin{align}
S_{\mathrm{NG}}^{(p)}=-T_{p}\int d^{p+1}\sigma \sqrt{-\det \gamma}.
\end{align}$$

Polyakov-type action:

$$\begin{align}
S_{p}^{(p)}=-D_{p}\int d^{p+1}\sigma \sqrt{-g}(g^{ab}\gamma_{ab}+C_{p}).
\end{align}$$

The classical equivalence requires

$$\begin{align}
C_{p}=-(p-1),
\qquad
D_{p}=\frac{T_{p}}{2}.
\end{align}$$

On shell,

$$\begin{align}
g_{ab}=\gamma_{ab}.
\end{align}$$

# AdS3 and WZW formulas

## AdS3 as an $SL(2,\mathbb{R})$ group manifold

Write

$$
g=
\begin{pmatrix}
X_{-1}+X_{1} & X_{0}-X_{2}\\
-X_{0}-X_{2} & X_{-1}-X_{1}
\end{pmatrix}\in SL(2,\mathbb{R}).
$$

Then

$$\begin{align}
\det g=1
\quad\Longrightarrow\quad
X_{-1}^{2}+X_{0}^{2}-X_{1}^{2}-X_{2}^{2}=1.
\end{align}$$

Standard intrinsic coordinates:

$$\begin{align}
X_{-1}=\cosh\rho\cos t,
\qquad
X_{0}=\cosh\rho\sin t,
\end{align}$$

$$\begin{align}
X_{1}=\sinh\rho\cos\phi,
\qquad
X_{2}=\sinh\rho\sin\phi.
\end{align}$$

## $SL(2,\mathbb{R})$ WZW model

Action:

$$\begin{align}
S=\frac{k}{16\pi}\int_{\Sigma} d^{2}\xi\, \operatorname{Tr}(\partial^{a}g^{-1}\partial_{a}g)
-\frac{ik}{24\pi}\int_{B} d^{3}y\, \epsilon_{\alpha\beta\gamma}
g^{-1}\partial^{\alpha}g\, g^{-1}\partial^{\beta}g\, g^{-1}\partial^{\gamma}g.
\end{align}$$

Chiral currents:

$$\begin{align}
J_{L,+}=\frac{k}{2\pi}\partial_{+}g\, g^{-1},
\qquad
J_{R,-}=\frac{k}{2\pi}g^{-1}\partial_{-}g.
\end{align}$$

Equations of motion:

$$\begin{align}
\partial_{-}(\partial_{+}g\,g^{-1})=0,
\qquad
\partial_{+}(g^{-1}\partial_{-}g)=0.
\end{align}$$

General solution:

$$\begin{align}
g(x^{+},x^{-})=g_{+}(x^{+})g_{-}(x^{-}).
\end{align}$$

Energy-momentum tensor:

$$\begin{align}
T_{++}=\frac{k}{8\pi}\operatorname{Tr}\big[(g^{-1}\partial_{+}g)^{2}\big]
=\frac{\pi}{2k}\operatorname{Tr}(J_{L,+}^{2}),
\end{align}$$

$$\begin{align}
T_{--}=\frac{k}{8\pi}\operatorname{Tr}\big[(g^{-1}\partial_{-}g)^{2}\big]
=\frac{\pi}{2k}\operatorname{Tr}(J_{R,-}^{2}).
\end{align}$$

## Spectral flow

If

$$\begin{align}
h=h_{+}(x^{+})h_{-}(x^{-})
\end{align}$$

is a solution, then

$$\begin{align}
g_{+}=e^{i\frac{w_{R}x^{+}\sigma_{2}}{2}}h_{+}(x^{+}),
\qquad
g_{-}=h_{-}(x^{-})e^{i\frac{w_{L}x^{-}\sigma_{2}}{2}}
\end{align}$$

gives another solution

$$\begin{align}
g=g_{+}g_{-}.
\end{align}$$

For closed strings one needs

$$\begin{align}
w_{L}=w_{R}=w\in \mathbb{Z}.
\end{align}$$

The induced spacetime transformation is

$$\begin{align}
t\to t+\frac{w_{L}+w_{R}}{2}\tau-\frac{w_{L}-w_{R}}{2}\sigma,
\end{align}$$

$$\begin{align}
\phi\to \phi+\frac{w_{L}+w_{R}}{2}\sigma-\frac{w_{L}-w_{R}}{2}\tau.
\end{align}$$

Long-string solution generated from the spacelike geodesic:

$$\begin{align}
t(\tau,\sigma)=w\tau,
\qquad
\phi(\tau,\sigma)=w\sigma,
\qquad
\rho(\tau,\sigma)=\tau.
\end{align}$$

# Quick exam checklist

1. Check which little group is relevant before counting polarizations.
1. For mode expansions, solve the wave equation first and impose boundary conditions second.
1. For CFT questions, compute $T(z)\mathcal{O}(w)$ first to read off the conformal weight.
1. For center charge questions, compute the quartic pole in $T(z)T(w)$.
1. For bosonization, use

$$\begin{align}
e^{aH(z)}e^{bH(w)}\sim (z-w)^{-ab}e^{(a+b)H(w)}.
\end{align}$$

1. For ghost systems, remember:

$$\begin{align}
c_{bc}=1-3(2\lambda-1)^{2},
\qquad
c_{\beta\gamma}=2-12\lambda(1-\lambda).
\end{align}$$

1. For superstrings, separate NS, R, NS-NS, NS-R, R-NS, and R-R sectors before decomposing representations.
