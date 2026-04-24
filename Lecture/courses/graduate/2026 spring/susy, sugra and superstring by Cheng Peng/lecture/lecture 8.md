---
title: "Lecture 8: Critical bosonic string spectrum"
date: 2026-04-23
summary: "Discussion of the critical bosonic string spectrum, including CFT quantization of open and closed strings, the role of the critical dimension, mass formulas, low-lying states, transverse oscillator counting, and the distinction between ghost-freeness and tachyon instability."
---

the previous lecture introduced the DDF construction as a covariant way to build the physical Hilbert space from transverse oscillators. the next question is what this construction tells us about the actual spectrum of the critical bosonic string.

## critical dimension

the word critical refers to the fact that the quantum worldsheet theory is conformally consistent only in the critical dimension

$$\begin{align}
D & = 26
\end{align}$$

for the bosonic string. equivalently, the matter central charge cancels the ghost central charge,

$$\begin{align}
c_{X} + c_{bc} & = D - 26 = 0
\end{align}$$

and the Lorentz algebra closes without an anomaly in light-cone quantization. in this dimension the physical state conditions are compatible with a positive-norm transverse Hilbert space after quotienting by null states.

## closed strings as a two-dimensional CFT

in conformal gauge, the closed bosonic string is described by a two-dimensional CFT of free scalar fields $X^{\mu}(z,\bar{z})$. on the Euclidean worldsheet one maps the cylinder to the complex plane by

$$\begin{align}
z & = e^{\tau+i\sigma} \\
\bar{z} & = e^{\tau-i\sigma}
\end{align}$$

so worldsheet time evolution becomes radial evolution on the plane. the closed-string Hilbert space is then the CFT Hilbert space obtained by quantizing on a circle around the origin.

the closed-string coordinate splits into left- and right-moving parts,

$$\begin{align}
X^{\mu}(z,\bar{z}) & = X_{L}^{\mu}(z) + X_{R}^{\mu}(\bar{z})
\end{align}$$

with oscillator expansions

$$\begin{align}
X^{\mu}(z,\bar{z})
& =
x^{\mu}
- i\frac{\alpha'}{2}p^{\mu}\ln(z\bar{z}) \\
&\quad
+ i\sqrt{\frac{\alpha'}{2}}\sum_{n\neq 0}\frac{\alpha_{n}^{\mu}}{n}z^{-n}
+ i\sqrt{\frac{\alpha'}{2}}\sum_{n\neq 0}\frac{\tilde{\alpha}_{n}^{\mu}}{n}\bar{z}^{-n}.
\end{align}$$

the holomorphic and antiholomorphic OPEs are independent:

$$\begin{align}
X_{L}^{\mu}(z)X_{L}^{\nu}(w)
& \sim -\frac{\alpha'}{2}\eta^{\mu\nu}\ln(z-w) \\
X_{R}^{\mu}(\bar{z})X_{R}^{\nu}(\bar{w})
& \sim -\frac{\alpha'}{2}\eta^{\mu\nu}\ln(\bar{z}-\bar{w}) \\
X_{L}^{\mu}(z)X_{R}^{\nu}(\bar{w})
& \sim 0.
\end{align}$$

correspondingly there are two commuting oscillator algebras,

$$\begin{align}
[\alpha_{m}^{\mu},\alpha_{n}^{\nu}]
& = m\eta^{\mu\nu}\delta_{m+n,0} \\
[\tilde{\alpha}_{m}^{\mu},\tilde{\alpha}_{n}^{\nu}]
& = m\eta^{\mu\nu}\delta_{m+n,0} \\
[\alpha_{m}^{\mu},\tilde{\alpha}_{n}^{\nu}]
& = 0.
\end{align}$$

this left-right factorization is the main CFT input behind closed-string quantization.

## radial quantization and states

in radial quantization, a local operator inserted at the origin creates a state:

$$\begin{align}
\mathcal{O}(0,0)\ket{0} & \longleftrightarrow \ket{\mathcal{O}}.
\end{align}$$

for example, the closed-string tachyon vertex operator is

$$\begin{align}
V_{k}(z,\bar{z}) & = :e^{ik\cdot X(z,\bar{z})}:
\end{align}$$

and has conformal weights

$$\begin{align}
h & = \frac{\alpha' k^{2}}{4} \\
\tilde{h} & = \frac{\alpha' k^{2}}{4}.
\end{align}$$

more general oscillator states are obtained by multiplying the exponential by derivatives of $X$:

$$\begin{align}
\mathcal{O}(z,\bar{z})
& =
\partial^{r_{1}}X^{\mu_{1}}\cdots \partial^{r_{a}}X^{\mu_{a}}
\bar{\partial}^{s_{1}}X^{\nu_{1}}\cdots \bar{\partial}^{s_{b}}X^{\nu_{b}}
e^{ik\cdot X(z,\bar{z})}.
\end{align}$$

the derivative factors raise the left and right conformal weights by

$$\begin{align}
N_{L} & = \sum_{a} r_{a} \\
N_{R} & = \sum_{b} s_{b}.
\end{align}$$

thus the CFT data of the operator directly encodes the spacetime mass level.

## Virasoro constraints in CFT language

the stress tensors are

$$\begin{align}
T(z) & = -\frac{1}{\alpha'}:\partial X^{\mu}\partial X_{\mu}: \\
\tilde{T}(\bar{z}) & = -\frac{1}{\alpha'}:\bar{\partial}X^{\mu}\bar{\partial}X_{\mu}:.
\end{align}$$

their Laurent modes define two Virasoro algebras,

$$\begin{align}
L_{m} & = \oint \frac{\mathrm{d}z}{2\pi i} z^{m+1}T(z) \\
\tilde{L}_{m} & = \oint \frac{\mathrm{d}\bar{z}}{2\pi i} \bar{z}^{m+1}\tilde{T}(\bar{z}).
\end{align}$$

for a momentum eigenstate, the zero modes are

$$\begin{align}
L_{0} & = \frac{\alpha' p^{2}}{4}+N_{L} \\
\tilde{L}_{0} & = \frac{\alpha' p^{2}}{4}+N_{R}.
\end{align}$$

the closed-string physical state conditions become

$$\begin{align}
(L_{0}-1)\ket{\psi} & = 0 \\
(\tilde{L}_{0}-1)\ket{\psi} & = 0 \\
L_{m}\ket{\psi}=\tilde{L}_{m}\ket{\psi} & = 0,\qquad m>0.
\end{align}$$

subtracting the two zero-mode conditions gives level matching:

$$\begin{align}
N_{L}-N_{R} & = 0.
\end{align}$$

adding either condition gives the closed-string mass formula

$$\begin{align}
M^{2} & = -p^{2}
= \frac{4}{\alpha'}(N_{L}-1)
= \frac{4}{\alpha'}(N_{R}-1).
\end{align}$$

## vertex operators as physical states

in the CFT formulation, an integrated closed-string vertex operator has the form

$$\begin{align}
\int \mathrm{d}^{2}z\, V(z,\bar{z}).
\end{align}$$

worldsheet conformal invariance requires the matter part $V$ to have weights

$$\begin{align}
(h,\tilde{h}) & = (1,1).
\end{align}$$

this is the operator-state version of the physical state conditions. for the tachyon,

$$\begin{align}
\frac{\alpha' k^{2}}{4} & = 1
\end{align}$$

so

$$\begin{align}
M^{2} & = -k^{2}=-\frac{4}{\alpha'}.
\end{align}$$

for the first excited closed-string state, the vertex operator is

$$\begin{align}
V_{\epsilon,k}(z,\bar{z})
& =
\epsilon_{\mu\nu}:\partial X^{\mu}\bar{\partial}X^{\nu}e^{ik\cdot X}:
\end{align}$$

and the weight condition gives

$$\begin{align}
1+\frac{\alpha' k^{2}}{4} & = 1
\end{align}$$

therefore $k^{2}=0$, so this state is massless. the Virasoro constraints further impose the transversality conditions

$$\begin{align}
k^{\mu}\epsilon_{\mu\nu} & = 0 \\
k^{\nu}\epsilon_{\mu\nu} & = 0,
\end{align}$$

with gauge redundancies corresponding to null states. decomposing $\epsilon_{\mu\nu}$ into symmetric traceless, antisymmetric, and trace parts gives the graviton, Kalb-Ramond field, and dilaton.

## open strings as a boundary CFT

the open string is described not by an ordinary CFT on a closed Riemann surface, but by a boundary CFT. the worldsheet has a boundary, and the boundary condition relates the holomorphic and antiholomorphic fields.

for a free open string with Neumann boundary conditions,

$$\begin{align}
\partial_{\sigma}X^{\mu}\big|_{\partial\Sigma} & = 0.
\end{align}$$

on the upper half-plane this becomes, along the real boundary,

$$\begin{align}
\partial X^{\mu}(z) & = \bar{\partial}X^{\mu}(\bar{z}), \qquad z=\bar{z}.
\end{align}$$

therefore the left- and right-moving sectors are not independent. by the doubling trick, one extends the holomorphic field to the lower half-plane and works with a single chiral field. this is why open strings have only one copy of the oscillator algebra,

$$\begin{align}
[\alpha_{m}^{\mu},\alpha_{n}^{\nu}]
& = m\eta^{\mu\nu}\delta_{m+n,0},
\end{align}$$

rather than independent $\alpha_{n}^{\mu}$ and $\tilde{\alpha}_{n}^{\mu}$ modes.

in strip coordinates, the Neumann open-string mode expansion is

$$\begin{align}
X^{\mu}(\tau,\sigma)
& =
x^{\mu}
+ 2\alpha' p^{\mu}\tau
+ i\sqrt{2\alpha'}\sum_{n\neq 0}\frac{\alpha_{n}^{\mu}}{n}
e^{-in\tau}\cos(n\sigma),
\end{align}$$

with $0\leq \sigma\leq \pi$. the factor $\cos(n\sigma)$ reflects the boundary condition at the two endpoints.

## open-string vertex operators

in the CFT language, open-string vertex operators live on the boundary of the worldsheet. an integrated open-string vertex has the form

$$\begin{align}
\int_{\partial\Sigma}\mathrm{d}x\, V(x).
\end{align}$$

since the integration is one-dimensional, the matter boundary operator must have conformal weight

$$\begin{align}
h & = 1.
\end{align}$$

the open-string tachyon vertex is

$$\begin{align}
V_{k}(x) & = :e^{ik\cdot X(x)}:
\end{align}$$

and the boundary conformal weight is

$$\begin{align}
h & = \alpha' k^{2}.
\end{align}$$

the condition $h=1$ gives

$$\begin{align}
\alpha' k^{2} & = 1,
\end{align}$$

or

$$\begin{align}
M^{2} & = -k^{2}=-\frac{1}{\alpha'}.
\end{align}$$

the first excited open-string vertex is

$$\begin{align}
V_{\zeta,k}(x)
& =
\zeta_{\mu}:\partial X^{\mu}e^{ik\cdot X}:(x).
\end{align}$$

its weight is

$$\begin{align}
h & = 1+\alpha' k^{2},
\end{align}$$

so the physical condition $h=1$ implies $k^{2}=0$. the remaining Virasoro constraint imposes transversality,

$$\begin{align}
k\cdot \zeta & = 0,
\end{align}$$

with the gauge redundancy

$$\begin{align}
\zeta_{\mu} & \sim \zeta_{\mu}+k_{\mu}.
\end{align}$$

this is the CFT origin of the massless gauge boson in the open-string spectrum.

## difference between open and closed strings

the most important distinction is that closed strings have two independent chiral sectors, while open strings have a boundary that identifies the two sectors.

for closed strings:

1. the worldsheet has no boundary.
2. the Hilbert space factorizes into left and right sectors.
3. physical states carry two levels, $N_{L}$ and $N_{R}$.
4. level matching $N_{L}=N_{R}$ is required by single-valuedness and closed-string periodicity.
5. vertex operators are bulk operators with weights $(h,\tilde{h})=(1,1)$.

for open strings:

1. the worldsheet has a boundary.
2. boundary conditions relate left and right movers.
3. there is only one oscillator level $N$.
4. vertex operators are boundary operators with weight $h=1$.
5. massless spin-one states appear naturally, and Chan-Paton factors can turn them into gauge bosons.

this difference explains why the lowest massless closed-string excitation is a rank-two tensor,

$$\begin{align}
\alpha_{-1}^{i}\tilde{\alpha}_{-1}^{j}\ket{k},
\end{align}$$

while the lowest massless open-string excitation is a vector,

$$\begin{align}
\alpha_{-1}^{i}\ket{k}.
\end{align}$$

schematically,

$$\begin{align}
\text{closed string}
& \sim
\text{left mover}\otimes \text{right mover}, \\
\text{open string}
& \sim
\text{one boundary chiral sector}.
\end{align}$$

this is also why gravity appears universally in the closed-string spectrum, whereas gauge fields appear naturally in the open-string spectrum.

## open-string spectrum

for the open string, the physical state conditions are

$$\begin{align}
(L_{0}-1)\ket{\psi} & = 0 \\
L_{m}\ket{\psi} & = 0, \qquad m>0
\end{align}$$

and the normal-ordering constant is

$$\begin{align}
a_{\text{open}} & = 1
\end{align}$$

therefore the mass formula is

$$\begin{align}
M^{2} & = \frac{1}{\alpha'}(N-1)
\end{align}$$

with the level number

$$\begin{align}
N & = \sum_{n=1}^{\infty} n\, N_{n}
\end{align}$$

where $N_{n}$ counts transverse oscillator excitations at mode number $n$. in the critical theory there are

$$\begin{align}
D-2 & = 24
\end{align}$$

independent transverse oscillators. hence the degeneracies are generated by

$$\begin{align}
Z_{\text{open}}(q) & = q^{-1}\prod_{n=1}^{\infty}\frac{1}{(1-q^{n})^{24}}
\end{align}$$

where the factor $q^{-1}$ records the open-string intercept.

the first few open-string levels are:

1. $N=0$: the tachyon, with $M^{2}=-1/\alpha'$.
2. $N=1$: the massless vector, represented by $A_{-1}^{i}\ket{p}$, with $24$ physical polarizations.
3. $N=2$: the first massive level, generated by $A_{-2}^{i}\ket{p}$ and $A_{-1}^{i}A_{-1}^{j}\ket{p}$.

although the DDF basis displays only the transverse $SO(24)$ oscillators, the massive levels reorganize into representations of the massive little group $SO(25)$. for example, at $N=2$ the number of states is

$$\begin{align}
24 + \frac{24\cdot 25}{2} & = 324
\end{align}$$

which is the dimension of the symmetric traceless rank-two representation of $SO(25)$:

$$\begin{align}
\frac{25\cdot 26}{2}-1 & = 324
\end{align}$$

this is one way to see how the apparently non-covariant light-cone counting still gives covariant massive particle representations.

## closed-string spectrum

for the closed string, the physical state conditions are imposed separately on left- and right-movers:

$$\begin{align}
(L_{0}-1)\ket{\psi} & = 0 \\
(\tilde{L}_{0}-1)\ket{\psi} & = 0 \\
L_{m}\ket{\psi}=\tilde{L}_{m}\ket{\psi} & = 0, \qquad m>0
\end{align}$$

the level-matching condition is

$$\begin{align}
N_{L} & = N_{R}
\end{align}$$

and the mass formula is

$$\begin{align}
M^{2} & = \frac{4}{\alpha'}(N_{L}-1)
       = \frac{4}{\alpha'}(N_{R}-1)
\end{align}$$

the first few closed-string levels are:

1. $N_{L}=N_{R}=0$: the closed-string tachyon, with $M^{2}=-4/\alpha'$.
2. $N_{L}=N_{R}=1$: the massless tensor states $A_{-1}^{i}\tilde{A}_{-1}^{j}\ket{p}$.
3. higher matched levels: massive towers built by independent left- and right-moving transverse oscillators.

at the massless level, the tensor product of left and right transverse vectors decomposes into

$$\begin{align}
24\otimes 24
& =
\left(\text{symmetric traceless}\right)
\oplus
\left(\text{antisymmetric}\right)
\oplus
\left(\text{trace}\right)
\end{align}$$

which gives the graviton, the Kalb-Ramond two-form, and the dilaton. this is the first place where closed strings naturally contain a spin-two field.

## physical interpretation

the critical bosonic spectrum has two logically separate features:

1. it is ghost-free after imposing the constraints and quotienting null states.
2. it is not tachyon-free, because both the open and closed spectra still contain negative mass-squared ground states.

so criticality means quantum consistency of the conformal and Lorentz symmetries, not spacetime stability. removing the tachyon requires extra structure, such as spacetime supersymmetry in superstring theory.
