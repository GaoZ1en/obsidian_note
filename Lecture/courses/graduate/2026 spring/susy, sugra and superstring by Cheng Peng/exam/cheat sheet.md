---
title: Superstring Exam Cheat Sheet
date: 2026-06-01
summary: "Compact open-book reference for the Cheng Peng superstring exam, covering worldsheet setup, spectra, CFT/OPE technology, bosonization, ghost systems, and high-frequency formulas."
---

# Core setup

## Worldsheet coordinates and conventions

$$
\sigma^{\pm}=\tau\pm \sigma,\qquad \partial_{\pm}=\frac{1}{2}(\partial_{\tau}\pm \partial_{\sigma}).
$$

For open strings,

$$
0\leq \sigma \leq \pi.
$$

For closed strings,

$$
\sigma \sim \sigma+2\pi.
$$

String tension:

$$
T=\frac{1}{2\pi\alpha'}.
$$

## Polyakov action and constraints

Bosonic string in flat target space:

$$
S=-\frac{1}{4\pi\alpha'}\int d^{2}\sigma \sqrt{-g}\, g^{ab}\partial_{a}X^{\mu}\partial_{b}X_{\mu}.
$$

In conformal gauge,

$$
(\partial_{\tau}^{2}-\partial_{\sigma}^{2})X^{\mu}=0,
$$

and the Virasoro constraints are

$$
T_{++}=\frac{1}{\alpha'}\partial_{+}X^{\mu}\partial_{+}X_{\mu}=0,
\qquad
T_{--}=\frac{1}{\alpha'}\partial_{-}X^{\mu}\partial_{-}X_{\mu}=0.
$$

Light-cone coordinates:

$$
X^{\pm}=\frac{1}{\sqrt{2}}(X^{0}\pm X^{D-1}).
$$

In light-cone gauge,

$$
X^{+}=x^{+}+2\alpha' p^{+}\tau,
$$

and the constraints solve $X^{-}$ in terms of the transverse fields $X^{i}$.

## Canonical brackets and oscillator algebras

Canonical bracket:

$$
[X^{i}(\tau,\sigma),\Pi^{j}(\tau,\sigma')]=i\delta^{ij}\delta(\sigma-\sigma').
$$

Open/closed bosonic oscillators:

$$
[\alpha_{m}^{\mu},\alpha_{n}^{\nu}]=m\eta^{\mu\nu}\delta_{m+n,0},
$$

$$
[\tilde{\alpha}_{m}^{\mu},\tilde{\alpha}_{n}^{\nu}]=m\eta^{\mu\nu}\delta_{m+n,0},
\qquad
[\alpha_{m}^{\mu},\tilde{\alpha}_{n}^{\nu}]=0.
$$

RNS fermions:

$$
\{b_{r}^{i},b_{s}^{j}\}=\delta^{ij}\delta_{r+s,0},
\qquad r,s\in \mathbb{Z}+\frac{1}{2}
$$

in the NS sector, and

$$
\{d_{m}^{i},d_{n}^{j}\}=\delta^{ij}\delta_{m+n,0},
\qquad m,n\in \mathbb{Z}
$$

in the R sector.

R zero modes satisfy

$$
\{d_{0}^{i},d_{0}^{j}\}=\delta^{ij},
$$

so the Ramond ground state is a spinor of $SO(8)$.

## Virasoro generators and physical states

Matter stress tensor for free bosons:

$$
T(z)=-\frac{1}{\alpha'}:\partial X^{\mu}\partial X_{\mu}:.
$$

Virasoro modes:

$$
L_{m}=\oint \frac{dz}{2\pi i} z^{m+1}T(z).
$$

Bosonic open string physical state conditions:

$$
L_{n}\ket{\mathrm{phys}}=0\quad (n>0),
\qquad
(L_{0}-1)\ket{\mathrm{phys}}=0.
$$

Bosonic closed string physical state conditions:

$$
L_{n}\ket{\mathrm{phys}}=\tilde{L}_{n}\ket{\mathrm{phys}}=0\quad (n>0),
$$

$$
(L_{0}-1)\ket{\mathrm{phys}}=(\tilde{L}_{0}-1)\ket{\mathrm{phys}}=0,
\qquad
L_{0}=\tilde{L}_{0}.
$$

RNS open-string mass formula:

$$
M^{2}=\frac{1}{\alpha'}(N-a),
\qquad
a_{\mathrm{NS}}=\frac{1}{2},
\qquad
a_{\mathrm{R}}=0.
$$

RNS closed-string mass formula:

$$
M^{2}=\frac{4}{\alpha'}(N_{L}-a_{L})=\frac{4}{\alpha'}(N_{R}-a_{R}),
\qquad
N_{L}-a_{L}=N_{R}-a_{R}.
$$

## RNS action, worldsheet supersymmetry, and supercurrent

Flat-space RNS action in conformal gauge:

$$
S_{\mathrm{RNS}}
=-\frac{1}{4\pi\alpha'}\int d^{2}\sigma
\left(
\partial_{a}X^{\mu}\partial^{a}X_{\mu}
-i\bar{\psi}^{\mu}\rho^{a}\partial_{a}\psi_{\mu}
\right).
$$

In light-cone form this becomes

$$
S_{\mathrm{RNS}}
=-\frac{1}{2\pi\alpha'}\int d^{2}\sigma
\left(
\partial_{+}X^{\mu}\partial_{-}X_{\mu}
-i\psi_{+}^{\mu}\partial_{-}\psi_{+\mu}
-i\psi_{-}^{\mu}\partial_{+}\psi_{-\mu}
\right).
$$

Worldsheet supersymmetry transformations:

$$
\delta X^{\mu}=i\bar{\varepsilon}\psi^{\mu},
\qquad
\delta \psi^{\mu}=\rho^{a}\partial_{a}X^{\mu}\varepsilon.
$$

Equivalently in chiral components,

$$
\delta X^{\mu}=i(\varepsilon_{+}\psi_{-}^{\mu}-\varepsilon_{-}\psi_{+}^{\mu}),
$$

$$
\delta \psi_{+}^{\mu}=-\partial_{+}X^{\mu}\varepsilon_{-},
\qquad
\delta \psi_{-}^{\mu}=\partial_{-}X^{\mu}\varepsilon_{+}.
$$

Stress tensor and supercurrent:

$$
T_{++}=\frac{1}{\alpha'}\partial_{+}X^{\mu}\partial_{+}X_{\mu}
+\frac{i}{2\alpha'}\psi_{+}^{\mu}\partial_{+}\psi_{+\mu},
$$

$$
T_{--}=\frac{1}{\alpha'}\partial_{-}X^{\mu}\partial_{-}X_{\mu}
+\frac{i}{2\alpha'}\psi_{-}^{\mu}\partial_{-}\psi_{-\mu},
$$

$$
G_{+}\propto \psi_{+}^{\mu}\partial_{+}X_{\mu},
\qquad
G_{-}\propto \psi_{-}^{\mu}\partial_{-}X_{\mu}.
$$

In conformal gauge the physical constraints are

$$
T_{\pm\pm}=0,
\qquad
G_{\pm}=0.
$$

# Mode expansions and boundary conditions

## Open string NN

$$
X^{\mu}(\tau,\sigma)=x^{\mu}+2\alpha' p^{\mu}\tau
+i\sqrt{2\alpha'}\sum_{n\neq 0}\frac{\alpha_{n}^{\mu}}{n}e^{-in\tau}\cos(n\sigma).
$$

## Open string DD

If

$$
X^{i}(\tau,0)=y_{0}^{i},
\qquad
X^{i}(\tau,\pi)=y_{\pi}^{i},
$$

then

$$
X^{i}(\tau,\sigma)=y_{0}^{i}+\frac{y_{\pi}^{i}-y_{0}^{i}}{\pi}\sigma
+i\sqrt{2\alpha'}\sum_{n\neq 0}\frac{\alpha_{n}^{i}}{n}e^{-in\tau}\sin(n\sigma).
$$

No momentum zero mode appears in this direction.

## Open string ND and DN

For ND:

$$
\partial_{\sigma}X^{i}(\tau,0)=0,
\qquad
X^{i}(\tau,\pi)=y^{i},
$$

so

$$
X^{i}(\tau,\sigma)=y^{i}
+i\sqrt{2\alpha'}\sum_{r\in \mathbb{Z}+\frac{1}{2}}\frac{\alpha_{r}^{i}}{r}e^{-ir\tau}\cos(r\sigma).
$$

For DN:

$$
X^{i}(\tau,\sigma)=y^{i}
+i\sqrt{2\alpha'}\sum_{r\in \mathbb{Z}+\frac{1}{2}}\frac{\alpha_{r}^{i}}{r}e^{-ir\tau}\sin(r\sigma).
$$

The key fact is: ND or DN gives half-integer modes.

## Closed bosonic string

$$
X^{\mu}(z,\bar{z})=x^{\mu}
-i\frac{\alpha'}{2}p^{\mu}\ln(z\bar{z})
+i\sqrt{\frac{\alpha'}{2}}\sum_{n\neq 0}\frac{\alpha_{n}^{\mu}}{n}z^{-n}
+i\sqrt{\frac{\alpha'}{2}}\sum_{n\neq 0}\frac{\tilde{\alpha}_{n}^{\mu}}{n}\bar{z}^{-n}.
$$

## RNS fermion mode expansions

For a closed string, the fermions split into left and right movers.

NS boundary condition:

$$
\psi^{\mu}(\sigma+2\pi)=-\psi^{\mu}(\sigma).
$$

Therefore the modes are half-integer:

$$
\psi_{+}^{\mu}(x^{+})=\sum_{r\in \mathbb{Z}+\frac{1}{2}} b_{r}^{\mu}e^{-irx^{+}},
\qquad
\psi_{-}^{\mu}(x^{-})=\sum_{r\in \mathbb{Z}+\frac{1}{2}} \tilde{b}_{r}^{\mu}e^{-irx^{-}}.
$$

R boundary condition:

$$
\psi^{\mu}(\sigma+2\pi)=\psi^{\mu}(\sigma).
$$

Therefore the modes are integer:

$$
\psi_{+}^{\mu}(x^{+})=\sum_{n\in \mathbb{Z}} d_{n}^{\mu}e^{-inx^{+}},
\qquad
\psi_{-}^{\mu}(x^{-})=\sum_{n\in \mathbb{Z}} \tilde{d}_{n}^{\mu}e^{-inx^{-}}.
$$

For the open string one has the same distinction:

- NS: half-integer fermion modes,
- R: integer fermion modes.

## Zero-point energies

The bosonic zero-point contribution is

$$
\sum_{n=1}^{\infty} n=-\frac{1}{12}
$$

under zeta regularization.

For one real NS fermion,

$$
\sum_{r=\frac{1}{2}}^{\infty} r=\frac{1}{24}.
$$

In light-cone gauge there are $8$ transverse bosons and $8$ transverse fermions, so

$$
E_{0,\mathrm{NS}}
=-8\cdot \frac{1}{24}-8\cdot \frac{1}{48}
=-\frac{1}{2}.
$$

Therefore the NS intercept is

$$
a_{\mathrm{NS}}=-E_{0,\mathrm{NS}}=\frac{1}{2}.
$$

In the R sector the bosonic and fermionic zero-point energies cancel:

$$
E_{0,\mathrm{R}}=0,
\qquad
a_{\mathrm{R}}=0.
$$

This is the practical reason why

$$
M^{2}_{\mathrm{open}}=\frac{1}{\alpha'}(N-\tfrac{1}{2})
$$

in NS, but

$$
M^{2}_{\mathrm{open}}=\frac{1}{\alpha'}N
$$

in R before imposing the GSO projection.

# String spectra and little groups

## Little groups

- Massive particle in $D$ dimensions: little group $SO(D-1)$.
- Massless particle in $D$ dimensions: little group $SO(D-2)$.
- Open bosonic string in $D=26$: transverse little group is $SO(24)$; massive little group is $SO(25)$.
- Superstring in $D=10$: massless little group is $SO(8)$.

## Bosonic open string in $D=26$

Mass formula:

$$
M^{2}=\frac{1}{\alpha'}(N-1).
$$

Low levels:

1. $N=0$:

$$
\ket{0;k},
\qquad
M^{2}=-\frac{1}{\alpha'}.
$$

This is the tachyon, a scalar of $SO(25)$.

2. $N=1$:

$$
\alpha_{-1}^{i}\ket{0;k},
\qquad
M^{2}=0.
$$

This is a massless vector of $SO(24)$ with $24$ polarizations.

3. $N=2$:

$$
\alpha_{-2}^{i}\ket{0;k},
\qquad
\alpha_{-1}^{i}\alpha_{-1}^{j}\ket{0;k},
\qquad
M^{2}=\frac{1}{\alpha'}.
$$

The total degeneracy is

$$
24+\frac{24\cdot 25}{2}=324,
$$

which matches the symmetric traceless rank-2 tensor of $SO(25)$:

$$
\frac{25\cdot 26}{2}-1=324.
$$

## Bosonic closed string in $D=26$

Mass formula:

$$
M^{2}=\frac{4}{\alpha'}(N_{L}-1)=\frac{4}{\alpha'}(N_{R}-1),
\qquad
N_{L}=N_{R}.
$$

Low levels:

1. $N_{L}=N_{R}=0$:

$$
M^{2}=-\frac{4}{\alpha'}.
$$

Closed-string tachyon.

2. $N_{L}=N_{R}=1$:

$$
\alpha_{-1}^{i}\tilde{\alpha}_{-1}^{j}\ket{0;k}.
$$

This decomposes as

$$
24\otimes 24
=
\text{symmetric traceless}
\oplus
\text{antisymmetric}
\oplus
\text{trace}.
$$

These give the graviton, Kalb-Ramond field, and dilaton.

## Open superstring in $D=10$

NS sector first surviving state after GSO:

$$
b_{-1/2}^{i}\ket{0;k}_{\mathrm{NS}},
\qquad
M^{2}=0,
$$

which transforms as $8_{v}$.

R sector ground state:

$$
\ket{s;k}_{\mathrm{R}},
\qquad
M^{2}=0,
$$

which transforms as $8_{s}$ or $8_{c}$ depending on chirality.

## GSO projection

Operationally:

- in the NS sector, project out the tachyon and keep states with the chosen worldsheet fermion parity,
- in the R sector, keep one chirality of the Ramond ground state.

For the open superstring:

- NS sector:

$$
(-1)^{F_{\mathrm{NS}}}=+1
$$

keeps the states with an odd number of NS fermionic creation operators, so the first surviving state is

$$
b_{-1/2}^{i}\ket{0;k}_{\mathrm{NS}}.
$$

- R sector:

$$
(-1)^{F_{\mathrm{R}}}=\pm 1
$$

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

$$
8_{v}\otimes 8_{v}=35\oplus 28\oplus 1.
$$

This gives

$$
g_{\mu\nu},\qquad B_{\mu\nu},\qquad \Phi.
$$

Mixed sectors:

- NS-R and R-NS give gravitini and dilatini.

R-R sectors:

- Type IIA:

$$
8_{s}\otimes 8_{c}=8_{v}\oplus 56,
$$

corresponding to odd-form potentials $C_{1},C_{3}$.

- Type IIB:

$$
8_{s}\otimes 8_{s}=1\oplus 28\oplus 35_{+},
$$

corresponding to even-form potentials $C_{0},C_{2},C_{4}^{+}$.

Chirality rule:

- Type IIA: left and right Ramond sectors have opposite chirality.
- Type IIB: left and right Ramond sectors have the same chirality.

## SO(8) representation products

The three basic triality-related representations are

$$
8_{v},
\qquad
8_{s},
\qquad
8_{c}.
$$

The most useful tensor products are

$$
8_{v}\otimes 8_{v}=35\oplus 28\oplus 1,
$$

$$
8_{s}\otimes 8_{c}=8_{v}\oplus 56,
$$

$$
8_{s}\otimes 8_{s}=1\oplus 28\oplus 35_{+},
$$

$$
8_{c}\otimes 8_{c}=1\oplus 28\oplus 35_{-},
$$

$$
8_{v}\otimes 8_{s}=8_{c}\oplus 56_{c},
\qquad
8_{v}\otimes 8_{c}=8_{s}\oplus 56_{s}.
$$

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

$$
\lambda^{a}b_{-1/2}^{i}\ket{0;k}_{\mathrm{NS}}
$$

gives the gauge boson.

Heterotic:

- Right mover: superstring.
- Left mover: bosonic string plus 16 internal coordinates.
- Gauge groups: $SO(32)$ or $E_{8}\times E_{8}$.

Mass formulas:

$$
\frac{\alpha'}{4}M^{2}=N_{R}-a_{R},
$$

$$
\frac{\alpha'}{4}M^{2}=N_{L}+\frac{1}{2}p_{L}^{2}-1,
$$

with

$$
N_{R}-a_{R}=N_{L}+\frac{1}{2}p_{L}^{2}-1.
$$

# CFT toolkit

## Primary fields and descendants

A primary field of weights $(h,\bar{h})$ transforms as

$$
\delta \mathcal{O}
=-(\varepsilon\partial+h\partial\varepsilon+\bar{\varepsilon}\bar{\partial}+\bar{h}\bar{\partial}\bar{\varepsilon})\mathcal{O}.
$$

Equivalent finite form:

$$
\mathcal{O}'(z',\bar{z}')
=\left(\frac{\partial z'}{\partial z}\right)^{-h}
\left(\frac{\partial \bar{z}'}{\partial \bar{z}}\right)^{-\bar{h}}
\mathcal{O}(z,\bar{z}).
$$

Descendants are obtained by acting with $L_{-n}$ on primaries. For example, $\partial X$ is primary of weight $1$, but $\partial^{n}X$ for $n>1$ is a descendant, not a primary.

## OPE and mode expansions

Holomorphic Laurent expansion:

$$
\phi(z)=\sum_{n}\phi_{n}z^{-n-h}.
$$

Mode extraction:

$$
\phi_{n}=\oint \frac{dz}{2\pi i} z^{n+h-1}\phi(z).
$$

If

$$
A(z)B(w)\sim \sum_{k\geq 1}\frac{C_{k}(w)}{(z-w)^{k}},
$$

then the singular part determines the mode algebra. In practice:

- double pole gives the coefficient of the central or canonical term,
- single pole gives the action of one mode on the other.

For a primary field of weight $h$,

$$
T(z)\mathcal{O}(w)\sim \frac{h\,\mathcal{O}(w)}{(z-w)^{2}}+\frac{\partial \mathcal{O}(w)}{z-w}.
$$

Exam template:

1. Compute all Wick contractions between $T(z)$ and the ingredients in $\mathcal{O}(w)$.
2. Expand the leftover fields around $w$.
3. Read off the coefficient of $(z-w)^{-2}$ as the conformal weight.
4. Read off the coefficient of $(z-w)^{-1}$ as the derivative term.

## Free boson

$$
X^{\mu}(z)X^{\nu}(w)\sim -\frac{\alpha'}{2}\eta^{\mu\nu}\ln(z-w),
$$

$$
\partial X^{\mu}(z)\partial X^{\nu}(w)\sim -\frac{\alpha'}{2}\frac{\eta^{\mu\nu}}{(z-w)^{2}}.
$$

Stress tensor:

$$
T(z)=-\frac{1}{\alpha'}:\partial X^{\mu}\partial X_{\mu}:.
$$

Then

$$
T(z)\partial X^{\mu}(w)\sim \frac{\partial X^{\mu}(w)}{(z-w)^{2}}+\frac{\partial^{2}X^{\mu}(w)}{z-w}.
$$

And

$$
T(z)T(w)\sim \frac{D/2}{(z-w)^{4}}+\frac{2T(w)}{(z-w)^{2}}+\frac{\partial T(w)}{z-w}.
$$

So a free boson contributes

$$
c=1
$$

per real scalar.

**Normal-ordering shortcut**:

$$
:AB:(z)\, C(w)
\sim
(A(z)C(w))_{\mathrm{sing}}\, B(z)
+(B(z)C(w))_{\mathrm{sing}}\, A(z).
$$

For two normal-ordered bilinears, include both single and double contractions.

## Vertex operators

For the free boson,

$$
:e^{ik\cdot X(z)}:
$$

has conformal weight

$$
h=\frac{\alpha' k^{2}}{4}
$$

in the holomorphic closed-string normalization.

Open-string boundary vertex:

$$
V_{k}(x)=:e^{ik\cdot X(x)}:
$$

has boundary weight

$$
h=\alpha' k^{2}.
$$

Useful physical-state checks:

- open-string tachyon: $h=1 \Rightarrow M^{2}=-1/\alpha'$,
- open-string vector: $V_{\zeta,k}=\zeta\cdot \partial X\, e^{ik\cdot X}$ and $h=1 \Rightarrow k^{2}=0$,
- closed-string graviton-type vertex:

$$
\epsilon_{\mu\nu}\partial X^{\mu}\bar{\partial}X^{\nu}e^{ik\cdot X},
$$

with $(h,\bar{h})=(1,1)\Rightarrow k^{2}=0$.

Further physical-state conditions:

- open vector:

$$
k\cdot \zeta=0,
\qquad
\zeta_{\mu}\sim \zeta_{\mu}+\lambda k_{\mu}.
$$

- closed tensor:

$$
k^{\mu}\epsilon_{\mu\nu}=0,
\qquad
k^{\nu}\epsilon_{\mu\nu}=0.
$$

Then decompose

$$
\epsilon_{\mu\nu}
=
\epsilon_{(\mu\nu)}^{\mathrm{traceless}}
+\epsilon_{[\mu\nu]}
+\frac{1}{D}\eta_{\mu\nu}\epsilon^{\rho}{}_{\rho}
$$

into graviton, Kalb-Ramond field, and dilaton.

## State-operator correspondence

Local operator at the origin creates a state:

$$
\mathcal{O}(0)\ket{0}\longleftrightarrow \ket{\mathcal{O}}.
$$

In radial quantization:

$$
L_{0}=\text{dilatation operator}.
$$

## Virasoro algebra

$$
[L_{m},L_{n}]=(m-n)L_{m+n}+\frac{c}{12}m(m^{2}-1)\delta_{m+n,0}.
$$

For the bosonic matter system,

$$
c=D.
$$

For bosonic string BRST consistency,

$$
c_{\mathrm{matter}}+c_{bc}=0
\quad\Longrightarrow\quad
D-26=0.
$$

## Super-Virasoro algebra and constraints

For the RNS theory the modes are

$$
T(z)=\sum_{n} L_{n} z^{-n-2}.
$$

In the NS sector the supercurrent has half-integer modes:

$$
G(z)=\sum_{r\in \mathbb{Z}+\frac{1}{2}} G_{r} z^{-r-\frac{3}{2}}.
$$

In the R sector the modes are integer:

$$
F(z)=\sum_{n\in \mathbb{Z}} F_{n} z^{-n-\frac{3}{2}}.
$$

The super-Virasoro algebra is

$$
[L_{m},L_{n}]=(m-n)L_{m+n}+\frac{c}{12}m(m^{2}-1)\delta_{m+n,0},
$$

$$
[L_{m},G_{r}]=\left(\frac{m}{2}-r\right)G_{m+r},
$$

$$
\{G_{r},G_{s}\}=2L_{r+s}+\frac{c}{3}\left(r^{2}-\frac{1}{4}\right)\delta_{r+s,0}
$$

in the NS sector, and

$$
[L_{m},F_{n}]=\left(\frac{m}{2}-n\right)F_{m+n},
$$

$$
\{F_{m},F_{n}\}=2L_{m+n}+\frac{c}{3}(m^{2}-1)\delta_{m+n,0}
$$

in the R sector.

Physical-state conditions:

- NS:

$$
L_{n}\ket{\mathrm{phys}}=0,\qquad G_{r}\ket{\mathrm{phys}}=0
$$

for

$$
n>0,\qquad r>0,
$$

and

$$
(L_{0}-\tfrac{1}{2})\ket{\mathrm{phys}}=0
$$

before GSO normalization is translated into the mass formula.

- R:

$$
L_{n}\ket{\mathrm{phys}}=0,\qquad F_{n}\ket{\mathrm{phys}}=0
$$

for

$$
n>0,
$$

and

$$
L_{0}\ket{\mathrm{phys}}=0.
$$

Low-level consequences:

- NS massless state

$$
\zeta_{i}b_{-1/2}^{i}\ket{0;k}_{\mathrm{NS}}
$$

obeys the transverse polarization condition and gives a vector.

- R ground state

$$
\ket{s;k}_{\mathrm{R}}
$$

obeys the zero-mode constraint

$$
F_{0}\ket{s;k}_{\mathrm{R}}=0,
$$

which becomes the spacetime massless Dirac equation.

# Free fermions and bosonization

## Free chiral fermions

For a complex chiral fermion,

$$
\psi(z)\bar{\psi}(w)\sim \frac{1}{z-w},
$$

$$
\psi(z)\psi(w)\sim 0,
\qquad
\bar{\psi}(z)\bar{\psi}(w)\sim 0.
$$

The stress tensor is

$$
T(z)=-\frac{1}{2}:\psi\partial\bar{\psi}:+\frac{1}{2}:\partial\psi\,\bar{\psi}:,
$$

and each real free fermion contributes

$$
c=\frac{1}{2}.
$$

For a complex fermion,

$$
c=1.
$$

## Bosonization dictionary

Introduce a chiral boson $H$ with

$$
H(z)H(w)\sim -\ln(z-w).
$$

Then

$$
e^{aH(z)}e^{bH(w)}\sim (z-w)^{-ab}e^{(a+b)H(w)}.
$$

The standard bosonization of a complex fermion is

$$
\psi=e^{iH},
\qquad
\bar{\psi}=e^{-iH}.
$$

Reason:

$$
\psi(z)\bar{\psi}(w)\sim (z-w)^{-i(-i)}=(z-w)^{-1},
$$

while

$$
\psi(z)\psi(w)\sim (z-w)^{-i^{2}}=(z-w)^{1},
$$

which is regular.

More generally, the exam-style answer is

$$
a=\pm i,
\qquad
b=\mp i.
$$

Weight formula for bosonized vertex operators:

$$
h\big(e^{aH}\big)=-\frac{a^{2}}{2}.
$$

So

$$
h(e^{\pm iH})=\frac{1}{2},
$$

which matches the conformal weight of a chiral fermion.

# Ghost systems

## Fermionic $bc$ ghosts

For reparametrization ghosts:

$$
b(z)c(w)\sim \frac{1}{z-w}.
$$

If the conformal weights are

$$
h_{b}=\lambda,
\qquad
h_{c}=1-\lambda,
$$

then the stress tensor is

$$
T=(1-\lambda):(\partial b)c:-\lambda:b\partial c:.
$$

For anticommuting $bc$ ghosts, the central charge is

$$
c_{bc}=1-3(2\lambda-1)^{2}.
$$

For bosonic string reparametrization ghosts, $\lambda=2$, so

$$
c_{bc}=-26.
$$

Mode expansions:

$$
b(z)=\sum_{n} b_{n} z^{-n-\lambda},
\qquad
c(z)=\sum_{n} c_{n} z^{-n-(1-\lambda)}.
$$

Mode algebra:

$$
\{b_{m},c_{n}\}=\delta_{m+n,0}.
$$

## Bosonic $\beta\gamma$ ghosts

For a commuting $\beta\gamma$ system,

$$
\beta(z)\gamma(w)\sim -\frac{1}{z-w},
$$

and

$$
\beta(z)\beta(w)\sim 0,
\qquad
\gamma(z)\gamma(w)\sim 0.
$$

Stress tensor:

$$
T=(1-\lambda)(\partial\beta\,\gamma)-\lambda(\beta\,\partial\gamma).
$$

OPEs with the fields:

$$
T(z)\beta(w)\sim \frac{\lambda\,\beta(w)}{(z-w)^{2}}+\frac{\partial\beta(w)}{z-w},
$$

$$
T(z)\gamma(w)\sim \frac{(1-\lambda)\gamma(w)}{(z-w)^{2}}+\frac{\partial\gamma(w)}{z-w}.
$$

Therefore,

$$
h_{\beta}=\lambda,
\qquad
h_{\gamma}=1-\lambda.
$$

Central charge:

$$
c_{\beta\gamma}=2-12\lambda(1-\lambda)=12\lambda^{2}-12\lambda+2.
$$

For the superconformal ghost system, $\lambda=3/2$, so

$$
c_{\beta\gamma}=11.
$$

Mode expansions:

$$
\beta(z)=\sum_{r}\beta_{r} z^{-r-\lambda},
\qquad
\gamma(z)=\sum_{r}\gamma_{r} z^{-r-(1-\lambda)}.
$$

Mode algebra:

$$
[\beta_{r},\gamma_{s}]=-\delta_{r+s,0},
$$

$$
[\beta_{r},\beta_{s}]=0,
\qquad
[\gamma_{r},\gamma_{s}]=0.
$$

Exam template for ghost computations:

1. Start from the defining OPE.
2. Insert the stress tensor.
3. Keep all single contractions to get $T(z)\beta(w)$ or $T(z)\gamma(w)$.
4. Keep both single and double contractions to get $T(z)T(w)$.
5. Read the quartic pole as $c/2$.

# DDF operators

Choose a null vector $k^{\mu}$ and transverse polarizations $\zeta_{i}^{\mu}$:

$$
k^{2}=0,
\qquad
\zeta_{i}\cdot k=0,
\qquad
\zeta_{i}\cdot \zeta_{j}=\delta_{ij}.
$$

Define

$$
\mathcal{J}_{n}^{i}(z)=\sqrt{\frac{2}{\alpha'}}\,\zeta_{i}\cdot \partial X(z)e^{ink\cdot X(z)},
$$

$$
A_{n}^{i}=\oint \frac{dz}{2\pi i}\mathcal{J}_{n}^{i}(z).
$$

Key facts:

1. $\mathcal{J}_{n}^{i}$ has weight $1$.
2. $[L_{m},A_{n}^{i}]=0$.
3. The DDF algebra is

$$
[A_{m}^{i},A_{n}^{j}]=m\delta^{ij}\delta_{m+n,0}.
$$

4. DDF states reproduce the light-cone physical spectrum.

# High-frequency brane formulas

## Dp-brane auxiliary metric trick

Induced metric:

$$
\gamma_{ab}=\partial_{a}X^{\mu}\partial_{b}X^{\nu}\eta_{\mu\nu}.
$$

Nambu-Goto action:

$$
S_{\mathrm{NG}}^{(p)}=-T_{p}\int d^{p+1}\sigma \sqrt{-\det \gamma}.
$$

Polyakov-type action:

$$
S_{p}^{(p)}=-D_{p}\int d^{p+1}\sigma \sqrt{-g}(g^{ab}\gamma_{ab}+C_{p}).
$$

The classical equivalence requires

$$
C_{p}=-(p-1),
\qquad
D_{p}=\frac{T_{p}}{2}.
$$

On shell,

$$
g_{ab}=\gamma_{ab}.
$$

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

$$
\det g=1
\quad\Longrightarrow\quad
X_{-1}^{2}+X_{0}^{2}-X_{1}^{2}-X_{2}^{2}=1.
$$

Standard intrinsic coordinates:

$$
X_{-1}=\cosh\rho\cos t,
\qquad
X_{0}=\cosh\rho\sin t,
$$

$$
X_{1}=\sinh\rho\cos\phi,
\qquad
X_{2}=\sinh\rho\sin\phi.
$$

## $SL(2,\mathbb{R})$ WZW model

Action:

$$
S=\frac{k}{16\pi}\int_{\Sigma} d^{2}\xi\, \operatorname{Tr}(\partial^{a}g^{-1}\partial_{a}g)
-\frac{ik}{24\pi}\int_{B} d^{3}y\, \epsilon_{\alpha\beta\gamma}
g^{-1}\partial^{\alpha}g\, g^{-1}\partial^{\beta}g\, g^{-1}\partial^{\gamma}g.
$$

Chiral currents:

$$
J_{L,+}=\frac{k}{2\pi}\partial_{+}g\, g^{-1},
\qquad
J_{R,-}=\frac{k}{2\pi}g^{-1}\partial_{-}g.
$$

Equations of motion:

$$
\partial_{-}(\partial_{+}g\,g^{-1})=0,
\qquad
\partial_{+}(g^{-1}\partial_{-}g)=0.
$$

General solution:

$$
g(x^{+},x^{-})=g_{+}(x^{+})g_{-}(x^{-}).
$$

Energy-momentum tensor:

$$
T_{++}=\frac{k}{8\pi}\operatorname{Tr}\big[(g^{-1}\partial_{+}g)^{2}\big]
=\frac{\pi}{2k}\operatorname{Tr}(J_{L,+}^{2}),
$$

$$
T_{--}=\frac{k}{8\pi}\operatorname{Tr}\big[(g^{-1}\partial_{-}g)^{2}\big]
=\frac{\pi}{2k}\operatorname{Tr}(J_{R,-}^{2}).
$$

## Spectral flow

If

$$
h=h_{+}(x^{+})h_{-}(x^{-})
$$

is a solution, then

$$
g_{+}=e^{i\frac{w_{R}x^{+}\sigma_{2}}{2}}h_{+}(x^{+}),
\qquad
g_{-}=h_{-}(x^{-})e^{i\frac{w_{L}x^{-}\sigma_{2}}{2}}
$$

gives another solution

$$
g=g_{+}g_{-}.
$$

For closed strings one needs

$$
w_{L}=w_{R}=w\in \mathbb{Z}.
$$

The induced spacetime transformation is

$$
t\to t+\frac{w_{L}+w_{R}}{2}\tau-\frac{w_{L}-w_{R}}{2}\sigma,
$$

$$
\phi\to \phi+\frac{w_{L}+w_{R}}{2}\sigma-\frac{w_{L}-w_{R}}{2}\tau.
$$

Long-string solution generated from the spacelike geodesic:

$$
t(\tau,\sigma)=w\tau,
\qquad
\phi(\tau,\sigma)=w\sigma,
\qquad
\rho(\tau,\sigma)=\tau.
$$

# Quick exam checklist

1. Check which little group is relevant before counting polarizations.
2. For mode expansions, solve the wave equation first and impose boundary conditions second.
3. For CFT questions, compute $T(z)\mathcal{O}(w)$ first to read off the conformal weight.
4. For center charge questions, compute the quartic pole in $T(z)T(w)$.
5. For bosonization, use

$$
e^{aH(z)}e^{bH(w)}\sim (z-w)^{-ab}e^{(a+b)H(w)}.
$$

6. For ghost systems, remember:

$$
c_{bc}=1-3(2\lambda-1)^{2},
\qquad
c_{\beta\gamma}=2-12\lambda(1-\lambda).
$$

7. For superstrings, separate NS, R, NS-NS, NS-R, R-NS, and R-R sectors before decomposing representations.
