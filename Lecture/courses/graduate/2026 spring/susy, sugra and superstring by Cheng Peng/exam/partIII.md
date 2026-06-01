---
title: Cambridge Part III String Theory Past Papers
date: 2026-06-01
summary: "A year-by-year exam-preparation note built from Cambridge Part III string theory papers, with each paper rewritten as a compact problem list and a worked solution skeleton, followed by the main lessons for the Cheng Peng course."
---

# How to use this note

This note is not a verbatim archive of the Cambridge papers. It is a preparation note organized as follows:

- each paper is rewritten into compact problem statements,
- each problem is followed by the standard solution route and the key formulas,
- the last section extracts the recurring Cambridge-style structures and explains what they suggest for the present course.

The right way to read it is not paper by paper only. It is better to also track the recurring chains:

1. classical worldsheet mechanics,
2. CFT and OPE technology,
3. ghosts, BRST, and anomaly cancellation,
4. vertex operators and amplitudes,
5. compactification, duality, and branes,
6. background consistency and low-energy spacetime physics.

# 2001 paper 64: String Theory

## Problem list

1. Derive the equations of motion and constraints from the Polyakov action and explain the worldsheet symmetries.
2. Analyze a particular covariant physical state of the form

$$
\left(L_{-2}+\mu L_{-1}^{2}\right)\ket{k}
$$

and determine the physical-state condition.
3. Explain the role of the No-Ghost Theorem.
4. Sketch the path-integral derivation of string scattering.
5. Compactify a closed bosonic string on a circle and identify the enhanced gauge bosons at the self-dual radius.
6. Explain how adding worldsheet fermions leads to spacetime fermions.

## Solution skeleton

### 1. Polyakov variation and constraints

Start from

$$
S_{\mathrm P}=-\frac{1}{4\pi\alpha'}\int d^{2}\sigma \sqrt{-h}\, h^{ab}\partial_{a}X^{\mu}\partial_{b}X_{\mu}.
$$

Variation with respect to $X^{\mu}$ gives

$$
\partial_{a}\left(\sqrt{-h}\, h^{ab}\partial_{b}X^{\mu}\right)=0.
$$

Variation with respect to $h^{ab}$ gives the stress tensor constraint

$$
T_{ab}=\partial_{a}X\cdot\partial_{b}X-\frac{1}{2}h_{ab}h^{cd}\partial_{c}X\cdot\partial_{d}X=0.
$$

The action is invariant under:

- worldsheet diffeomorphisms,
- Weyl rescalings,
- target-space Poincare transformations.

In conformal gauge one gets free wave equations plus the Virasoro constraints

$$
\partial_{+}\partial_{-}X^{\mu}=0,
\qquad
T_{++}=T_{--}=0.
$$

### 2. Physical state at level two

Use

$$
L_{0}\ket{\psi}=\ket{\psi},
\qquad
L_{n>0}\ket{\psi}=0.
$$

Act with $L_{1}$ and $L_{2}$ on

$$
\ket{\psi}=\left(L_{-2}+\mu L_{-1}^{2}\right)\ket{k}.
$$

Using the Virasoro algebra, $L_{1}\ket{\psi}=0$ and $L_{2}\ket{\psi}=0$ determine $\mu$ and the mass-shell condition. The point of the exercise is that null combinations appear at special momentum and are removed from the physical spectrum.

### 3. No-Ghost Theorem

The theorem states that in the critical dimension the covariant physical Hilbert space has no negative-norm states once the Virasoro constraints are imposed. In exam language:

- the naive covariant Fock space contains time-like oscillators,
- constraints eliminate the unphysical excitations,
- in $D=26$ the remaining physical space is equivalent to the positive-definite light-cone spectrum.

### 4. Path integral and scattering

Gauge-fix the Polyakov path integral to conformal gauge and divide by the conformal Killing group. Correlation functions of vertex operators produce amplitudes. For tachyons the essential ingredients are:

$$
\left\langle X^{\mu}(z,\bar z)X^{\nu}(w,\bar w)\right\rangle
=-\frac{\alpha'}{2}\eta^{\mu\nu}\ln|z-w|^{2},
$$

and therefore

$$
\left\langle \prod_{i} e^{ik_{i}\cdot X(z_{i},\bar z_{i})}\right\rangle
\propto
\prod_{i<j}|z_{ij}|^{\alpha' k_{i}\cdot k_{j}}.
$$

### 5. Circle compactification and enhanced symmetry

For one compact coordinate $X\sim X+2\pi R$,

$$
p_{L}=\frac{n}{R}+\frac{wR}{\alpha'},
\qquad
p_{R}=\frac{n}{R}-\frac{wR}{\alpha'}.
$$

The mass formula is

$$
M^{2}=p_{L}^{2}+\frac{4}{\alpha'}(N_{L}-1)
=p_{R}^{2}+\frac{4}{\alpha'}(N_{R}-1),
$$

with level matching

$$
N_{L}-N_{R}=nw.
$$

At the self-dual radius

$$
R=\sqrt{\alpha'},
$$

extra states with $(n,w)=(\pm 1,\pm 1)$ become massless and enhance the gauge symmetry from $U(1)_{L}\times U(1)_{R}$ to $SU(2)_{L}\times SU(2)_{R}$.

### 6. From worldsheet fermions to spacetime fermions

Introduce Majorana fermions $\psi^{\mu}$ on the worldsheet. The Ramond sector has integer modes and zero modes obeying a Clifford algebra, so the ground state is a spacetime spinor. This is the precise mechanism by which fermionic spacetime states appear.

# 2001 paper 66: Advanced String Theory

## Problem list

1. Explain why open-string endpoints may satisfy Neumann or Dirichlet boundary conditions and why $p+1$ Neumann directions define a D$p$-brane.
2. Explain BPS saturation and why parallel supersymmetric D$p$-branes exert no net force.
3. Relate two separated D3-branes to a Yang-Mills-Higgs description.
4. Describe the massless spectra of Type IIA and Type IIB string theory.
5. Explain the coupling of antisymmetric tensor gauge fields to extended objects.
6. Show how T-duality on a circle exchanges Type IIA and Type IIB.
7. Explain how eleven-dimensional supergravity compactified on a circle gives Type IIA supergravity and interpret Type IIA branes in eleven dimensions.

## Solution skeleton

### 1. Boundary conditions and D$p$-branes

At an open-string endpoint, the boundary term from varying $X^{\mu}$ is

$$
\delta S_{\partial\Sigma}\propto \int d\tau\, \partial_{\sigma}X_{\mu}\,\delta X^{\mu}.
$$

This vanishes either by:

- Neumann: $\partial_{\sigma}X^{\mu}=0$,
- Dirichlet: $\delta X^{\mu}=0$.

If the open string has Neumann directions $\mu=0,\dots,p$ and Dirichlet directions $i=p+1,\dots,9$, the endpoint moves on a $(p+1)$-dimensional hypersurface: a D$p$-brane.

### 2. BPS and no-force

Parallel supersymmetric D-branes preserve common supercharges. The NS-NS exchange and RR exchange cancel exactly, so the static force vanishes. Exam answer:

- tension couples to graviton/dilaton,
- RR charge couples to RR potential,
- for a BPS brane the magnitude of tension equals the RR charge,
- the attractive and repulsive channels cancel.

### 3. Two D3-branes and Higgsing

Two separated D3-branes support a $U(2)$ gauge theory before separation. Giving an expectation value to the adjoint scalar corresponding to transverse position breaks

$$
U(2)\to U(1)\times U(1),
$$

and the strings stretched between the branes become massive $W$-bosons with mass proportional to the brane separation.

### 4. Type II massless spectra

The NS-NS sector gives

$$
g_{\mu\nu},\qquad B_{\mu\nu},\qquad \Phi.
$$

The RR sector gives:

- Type IIA: odd forms $C_{1},C_{3}$,
- Type IIB: even forms $C_{0},C_{2},C_{4}^{+}$.

The mixed NS-R and R-NS sectors give gravitini and dilatini.

### 5. Extended objects and antisymmetric forms

A $(p+1)$-form potential couples naturally to a $p$-brane worldvolume:

$$
S_{\mathrm{WZ}}\sim \int_{\mathcal W_{p+1}} C_{p+1}.
$$

This is the higher-dimensional analogue of a point particle coupling $\int A_{\mu}dx^{\mu}$.

### 6. T-duality between IIA and IIB

Under T-duality on a circle,

$$
R\leftrightarrow \frac{\alpha'}{R},
\qquad
X_{R}\to -X_{R}.
$$

This flips the chirality of one worldsheet Ramond sector, so Type IIA and Type IIB are exchanged.

### 7. M-theory interpretation

Compactifying eleven-dimensional supergravity on $S^{1}$ gives ten-dimensional Type IIA supergravity. Standard identifications:

- D0-branes are Kaluza-Klein momentum modes,
- the fundamental string comes from the M2-brane wrapping the circle,
- the D2-brane comes from the unwrapped M2-brane,
- the D4-brane comes from the M5-brane wrapped on the circle,
- the NS5-brane comes from the unwrapped M5-brane.

# 2002 paper 67: String Theory

## Problem list

1. Derive the Nambu-Goto equations of motion and analyze straight rotating-string solutions.
2. Explain the role of the Virasoro algebra in covariant quantization.
3. Explain why ghost fields appear in the Polyakov path integral and outline BRST symmetry.
4. Compactify the closed bosonic string on a circle and analyze T-duality and enhanced symmetry.
5. Introduce worldsheet fermions, explain the Ramond and Neveu-Schwarz sectors, and summarize the effect of the GSO projection.

## Solution skeleton

### 1. Nambu-Goto dynamics and Regge relation

The Nambu-Goto action is

$$
S_{\mathrm{NG}}=-T\int d^{2}\sigma \sqrt{-\det\gamma_{ab}},
\qquad
\gamma_{ab}=\partial_{a}X\cdot\partial_{b}X.
$$

For a rigidly rotating open string of length $2a$ in flat space, one finds

$$
J=\alpha' M^{2},
$$

up to the usual intercept in the quantum theory. This is the classical Regge relation.

### 2. Virasoro algebra

The Virasoro generators arise from the Fourier modes of $T_{++}$ and $T_{--}$. Their algebra is

$$
[L_{m},L_{n}]=(m-n)L_{m+n}+\frac{c}{12}m(m^{2}-1)\delta_{m+n,0}.
$$

In covariant quantization:

- physical states obey $L_{n>0}\ket{\mathrm{phys}}=0$,
- $L_{0}$ gives the mass-shell condition,
- the central extension controls consistency.

### 3. Ghosts and BRST

Gauge-fixing the worldsheet metric introduces Faddeev-Popov determinants, which are represented by anticommuting $bc$ ghosts. The BRST charge packages gauge symmetry and constraints into

$$
Q_{\mathrm{BRST}}^{2}=0,
$$

and physical states are BRST cohomology classes.

### 4. Compactification and T-duality

Same formulas as in the 2001 paper. The essential exam point is the invariance of the spectrum under

$$
R\leftrightarrow \frac{\alpha'}{R},
\qquad
n\leftrightarrow w.
$$

### 5. NS, R, and GSO

Worldsheet fermions have:

- NS sector: antiperiodic, half-integer modes,
- R sector: periodic, integer modes.

The NS ground state is tachyonic before projection. GSO removes the tachyon and produces spacetime supersymmetry by pairing the surviving NS and R excitations.

# 2003 paper 50: String Theory

## Problem list

1. Explain the bosonic string action and the relation between worldsheet topology and string coupling.
2. Write the general closed-string solution and mode expansion.
3. Derive the functional-integral form of the $M$-tachyon amplitude.
4. Add worldsheet Majorana fermions and show how global worldsheet supersymmetry arises.
5. Discuss the Hagedorn growth of states and the emergence of general relativity in the low-energy limit.

## Solution skeleton

### 1. Topology and coupling

For a worldsheet of Euler character $\chi$ the dilaton coupling gives a factor

$$
g_{s}^{-\chi}.
$$

Hence:

- sphere: $g_{s}^{-2}$,
- torus: $g_{s}^{0}$,
- genus-$g$ closed surface: $g_{s}^{2g-2}$.

### 2. Closed-string solution

In conformal gauge,

$$
X^{\mu}(\tau,\sigma)=X_{L}^{\mu}(\tau+\sigma)+X_{R}^{\mu}(\tau-\sigma),
$$

with the standard left-right mode expansion. Physical states satisfy $N_{L}=N_{R}$.

### 3. Tachyon amplitude

Insert closed-string tachyon vertices

$$
V_{i}=e^{ik_{i}\cdot X(z_{i},\bar z_{i})}
$$

and use Gaussian integration of the free field to obtain the Koba-Nielsen factor

$$
\prod_{i<j}|z_{ij}|^{\alpha' k_{i}\cdot k_{j}}.
$$

### 4. Worldsheet supersymmetry

With fermions $\psi^{\mu}$ the action becomes the RNS action. The transformations

$$
\delta X^{\mu}=i\bar\varepsilon \psi^{\mu},
\qquad
\delta\psi^{\mu}=\rho^{a}\partial_{a}X^{\mu}\varepsilon
$$

leave the action invariant.

### 5. Hagedorn and low-energy gravity

The density of string states grows asymptotically as

$$
\rho(M)\sim e^{\beta_{H}M},
$$

leading to the Hagedorn temperature. At low energy, the massless closed-string sector reproduces general relativity coupled to the $B$-field and dilaton.

# 2004 paper 49: String Theory

## Problem list

1. Derive the open-string mass-shell condition from the Virasoro constraints and explain the origin of the central charge.
2. Include $B_{\mu\nu}$ and $\Phi$ in the Polyakov path integral and explain the corresponding worldsheet couplings.
3. Explain why ghosts appear in gauge fixing.
4. Explain the role of moduli, the mapping class group, and the conformal Killing group in scattering amplitudes.

## Solution skeleton

### 1. Mass shell and central charge

For the open bosonic string,

$$
(L_{0}-1)\ket{\mathrm{phys}}=0
\quad\Longrightarrow\quad
\alpha' M^{2}=N-1.
$$

The central term in the Virasoro algebra comes from normal ordering and must be canceled against the ghost contribution in the full gauge-fixed theory.

### 2. Background couplings

The sigma-model action is

$$
S=\frac{1}{4\pi\alpha'}\int d^{2}\sigma \sqrt{h}
\left[
h^{ab}G_{\mu\nu}(X)\partial_{a}X^{\mu}\partial_{b}X^{\nu}
+i\epsilon^{ab}B_{\mu\nu}(X)\partial_{a}X^{\mu}\partial_{b}X^{\nu}
+\alpha'\Phi(X)R^{(2)}
\right].
$$

Each background field becomes a coupling in the two-dimensional quantum field theory.

### 3. Ghosts

Gauge fixing the redundant metric variables produces a Jacobian. The ghost system is the local field-theory representation of this determinant.

### 4. Moduli and conformal Killing group

In a scattering amplitude one must:

- integrate over inequivalent moduli,
- divide by residual conformal Killing symmetries,
- insert the appropriate ghost factors associated with gauge fixing.

On the sphere the conformal Killing group is $SL(2,\mathbb C)$, so three insertion points may be fixed.

# Paper 54: String Theory

## Problem list

1. Compactify a closed bosonic string on a circle and derive the mode expansion.
2. Write the mode expansion for an open bosonic string with Neumann boundary conditions in $p+1$ directions and Dirichlet in the rest.
3. Explain the conformal-gauge bosonic string as a free two-dimensional field theory with constraints and analyze the first few open-string levels.
4. Add worldsheet fermions, sketch the supersymmetric extension, and compare bosonic and fermionic states at the first levels.

## Solution skeleton

### 1. Closed string on a circle

The zero-mode part is modified to include momentum and winding:

$$
X(\tau,\sigma)=x+\frac{\alpha'}{2}p_{L}(\tau+\sigma)+\frac{\alpha'}{2}p_{R}(\tau-\sigma)+\text{oscillators}.
$$

### 2. Open string with mixed NN and DD directions

Neumann directions have cosine modes and momentum zero modes. Dirichlet directions have sine modes and fixed endpoints:

$$
X^{i}(\tau,0)=y_{0}^{i},
\qquad
X^{i}(\tau,\pi)=y_{\pi}^{i}.
$$

The ground-state energy is shifted by the stretched-string classical contribution.

### 3. Free fields plus constraints

Conformal gauge gives free wave equations, but only states obeying the Virasoro constraints are physical. At the first few open-string levels:

- level $0$: tachyon,
- level $1$: massless vector,
- level $2$: first massive symmetric tensor representation after physical-state reduction.

### 4. Supersymmetric extension

Adding worldsheet fermions leads to the NS and R sectors. The tachyon is removed by the GSO projection and the first surviving bosonic and fermionic states assemble into supersymmetric multiplets.

# 2009 paper 46: String Theory

## Problem list

1. Explain the Polyakov action and its symmetries and reduce it to free scalars plus constraints in conformal gauge.
2. Define primary and quasi-primary operators in two-dimensional CFT.
3. Explain how quantizing the worldsheet theory in nontrivial background fields leads to a spacetime effective action in $D=26$.

## Solution skeleton

### 1. Polyakov to free fields

This is the standard chain:

$$
S_{\mathrm P}\to \partial_{+}\partial_{-}X^{\mu}=0,\qquad T_{++}=T_{--}=0.
$$

### 2. Primary vs quasi-primary

A holomorphic primary of weight $h$ obeys

$$
T(z)\mathcal O(w)\sim \frac{h\,\mathcal O(w)}{(z-w)^{2}}+\frac{\partial \mathcal O(w)}{z-w}.
$$

A quasi-primary transforms covariantly only under global conformal transformations, not under the full Virasoro symmetry.

### 3. Effective spacetime action

Requiring vanishing beta functions for the sigma-model couplings produces the spacetime equations of motion. To lowest order in $\alpha'$,

$$
R_{\mu\nu}-\frac{1}{4}H_{\mu\rho\sigma}H_{\nu}{}^{\rho\sigma}+2\nabla_{\mu}\nabla_{\nu}\Phi=0,
$$

plus the $B$-field and dilaton equations. These arise as Euler-Lagrange equations of the spacetime effective action

$$
\int d^{26}X \sqrt{-G}\, e^{-2\Phi}
\left(
R+4(\nabla\Phi)^{2}-\frac{1}{12}H^{2}+\cdots
\right).
$$

# 2011 paper 44: String Theory

## Problem list

1. Write the Nambu-Goto action for the closed bosonic string, relate it to the point-particle action, construct the Polyakov action, list its symmetries, and explain how one sees that the critical closed bosonic string contains gravitons.
2. Sketch the derivation of the closed-string four-tachyon amplitude from the Polyakov action and explain the physical meaning of its poles and its difference from scalar cubic QFT amplitudes.
3. Define quasi-primary and primary operators, then analyze a fermionic $bc$ system with

$$
b(z)c(w)=\frac{1}{z-w}+\cdots,
\qquad
T=:(\partial b)c:-\lambda \partial:bc:.
$$

Show that $b$ and $c$ are primary and compute their weights and central charge.
4. For a single free worldsheet fermion, write the NS and R mode expansions, derive the Virasoro generators, show that the central term has the form $C(n)=c_{3}n^{3}+c_{1}n$, and determine $c_{1}$ and $c_{3}$ in both sectors.

## Solution skeleton

### 1. From Nambu-Goto to Polyakov and to the graviton

The Nambu-Goto action is

$$
S_{\mathrm{NG}}=-T\int d^{2}\sigma \sqrt{-\det \gamma_{\alpha\beta}},
\qquad
\gamma_{\alpha\beta}=\partial_{\alpha}X\cdot \partial_{\beta}X.
$$

It generalizes the point-particle action

$$
S_{\mathrm{pp}}=-m\int ds
$$

by replacing worldline length with worldsheet area. Introducing an independent worldsheet metric $\gamma_{\alpha\beta}$ gives

$$
S_{\mathrm P}=-\frac{T}{2}\int d^{2}\sigma \sqrt{-\gamma}\,\gamma^{\alpha\beta}\partial_{\alpha}X\cdot\partial_{\beta}X.
$$

The symmetries are:

- target-space Poincare invariance,
- worldsheet diffeomorphisms,
- Weyl rescalings.

In the critical closed bosonic string, the level $(1,1)$ state

$$
\alpha_{-1}^{i}\tilde{\alpha}_{-1}^{j}\ket{0;k}
$$

decomposes into symmetric traceless, antisymmetric, and trace parts, identified as the graviton, $B$-field, and dilaton. This is the standard argument that the theory contains gravitons when $d=26$.

### 2. Four tachyons and pole structure

The reduced amplitude comes from

$$
\left\langle \prod_{i=1}^{4} e^{ik_{i}\cdot X(z_{i},\bar z_{i})}\right\rangle
\propto \prod_{i<j}|z_{ij}|^{\alpha' k_{i}\cdot k_{j}},
$$

followed by division by $SL(2,\mathbb C)$ and integration over the remaining cross-ratio. The result is the Virasoro-Shapiro amplitude

$$
A\propto g_{s}^{2}\,
\frac{\Gamma(-1-\alpha's/4)\Gamma(-1-\alpha't/4)\Gamma(-1-\alpha'u/4)}
{\Gamma(2+\alpha's/4)\Gamma(2+\alpha't/4)\Gamma(2+\alpha'u/4)}.
$$

Its poles correspond to intermediate on-shell closed-string states. Unlike scalar $\phi^{3}$ theory, the string amplitude:

- has an infinite tower of poles,
- is crossing symmetric from a single worldsheet integral,
- is exponentially softer at fixed angle and large energy.

### 3. The $bc$ system

Compute

$$
T(z)b(w),\qquad T(z)c(w)
$$

using Wick contractions. The answer is

$$
T(z)b(w)\sim \frac{\lambda\, b(w)}{(z-w)^{2}}+\frac{\partial b(w)}{z-w},
$$

$$
T(z)c(w)\sim \frac{(1-\lambda)c(w)}{(z-w)^{2}}+\frac{\partial c(w)}{z-w}.
$$

Hence

$$
h_{b}=\lambda,\qquad h_{c}=1-\lambda,
$$

and both are primary. The central charge is

$$
c_{bc}=1-3(2\lambda-1)^{2}.
$$

### 4. One free worldsheet fermion

For a left-moving Majorana fermion:

- NS sector:

$$
\psi(z)=\sum_{r\in \mathbb Z+1/2} b_{r}z^{-r-1/2},
$$

- R sector:

$$
\psi(z)=\sum_{n\in \mathbb Z} d_{n}z^{-n-1/2}.
$$

The fermion stress tensor is

$$
T(z)=-\frac{1}{2}:\psi\partial\psi:,
$$

so the Virasoro generators are quadratic in the oscillator modes. The central term in

$$
[L_{m},L_{n}]=(m-n)L_{m+n}+C(n)\delta_{m+n,0}
$$

must be odd in $n$, hence $C(n)=c_{3}n^{3}+c_{1}n$. For one real fermion the central charge is $c=\frac12$, so

$$
C(n)=\frac{1}{24}(n^{3}-n)
$$

in the NS sector after normal ordering, and the R sector differs only by the normal-ordering constant. The exam point is to connect the mode calculation with the universal Virasoro form.

# 2012 paper 51: String Theory

## Problem list

1. Starting from the closed bosonic-string action, sketch the derivation of the four-tachyon amplitude.
2. For the Polyakov-type $p$-brane action with auxiliary worldvolume metric, derive the equations of motion for $X^{a}$ and $\gamma_{\mu\nu}$, explain the special role of $p=1$, impose NN boundary conditions for the open string, derive the operator Virasoro constraints, and compute the Virasoro commutator including the central term.
3. For the RNS action in orthonormal gauge, explain Majorana and chirality, show that positive chirality is right-moving and negative chirality left-moving, verify rigid worldsheet supersymmetry, and compare the number of massless bosonic and fermionic degrees of freedom in the critical theory.
4. For the bosonic string in curved spacetime, explain why quantum preservation of classical symmetries yields

$$
R_{ab}=0
$$

to leading order, and show how a spacelike Killing direction leads to a T-dual background with $g_{zz}\to V^{-1}$.

## Solution skeleton

### 1. Four closed-string tachyons

Exactly as in 2003, 2011, 2017, and 2024: use the free-field correlator, divide by $SL(2,\mathbb C)$, and integrate over the cross-ratio. The point here is that by 2012 Cambridge expects this derivation to be standard vocabulary.

### 2. The Polyakov-type $p$-brane action

The action is

$$
I=\int_{\Sigma} d^{p+1}\xi\, \sqrt{\gamma}
\left(\gamma^{\mu\nu}\partial_{\mu}X^{a}\partial_{\nu}X^{b}\eta_{ab}-(p-1)\right).
$$

Variation with respect to $X^{a}$ gives

$$
\partial_{\mu}\left(\sqrt{\gamma}\,\gamma^{\mu\nu}\partial_{\nu}X^{a}\right)=0.
$$

Variation with respect to $\gamma_{\mu\nu}$ gives an algebraic relation setting $\gamma_{\mu\nu}$ proportional to the induced metric. For $p=1$, the cosmological term vanishes and Weyl invariance appears, which is why the string is special.

For the open string with NN boundary conditions, conformal gauge gives the standard mode expansion and operator constraints

$$
L_{n}\ket{\mathrm{phys}}=0\quad (n>0),
\qquad
(L_{0}-a)\ket{\mathrm{phys}}=0.
$$

The commutator is

$$
[L_{m},L_{n}]=(m-n)L_{m+n}+\frac{D}{12}(m^{3}-m)\delta_{m+n,0}
$$

for $D$ free bosons before adding ghosts.

### 3. Worldsheet supersymmetry and state counting

Majorana means a real spinor representation on the worldsheet. Chirality means eigenvalue under $\gamma_{3}$ or, equivalently in two dimensions, separation into left- and right-moving components.

The equations of motion imply

$$
\partial_{-}\psi_{+}^{a}=0,\qquad \partial_{+}\psi_{-}^{a}=0,
$$

so one chirality is right-moving and the other left-moving. Under

$$
\delta X^{a}=i\bar\epsilon \psi^{a},
\qquad
\delta\psi^{a}=(\gamma^{\mu}\partial_{\mu}X^{a})\epsilon,
$$

the action changes by a total derivative.

In the critical light-cone theory there are $8$ transverse bosonic polarizations and $8$ transverse fermionic polarizations at the massless level, matching exactly.

### 4. Curved background and T-duality

Demanding vanishing Weyl anomaly leads at lowest order to the metric beta function

$$
\beta^{G}_{ab}\propto R_{ab}+\cdots,
$$

so conformal invariance implies $R_{ab}=0$ in the stated simplified setting.

If the metric has a Killing direction $z$ and

$$
ds^{2}=V\, dz^{2}+G_{IJ}(y)dy^{I}dy^{J},
$$

then the Buscher procedure replaces $V$ by $V^{-1}$ while keeping the transverse metric fixed. The dual metric need not remain Ricci flat because quantum equivalence also shifts the dilaton.

# 2013 paper 46: String Theory

## Problem list

1. Show the equivalence of Nambu-Goto and Polyakov for the closed bosonic string, derive the equations of motion, write the couplings to background metric, two-form, and dilaton, and explain how the dilaton zero mode produces powers of $g_{s}$.
2. Analyze an explicit rotating closed-string configuration in five-dimensional Minkowski space, compute its induced metric, verify the equations of motion, show that it is planar and circular, and compute its length and energy.
3. Work with the phase-space Nambu-Goto action: explain first-class constraints and the associated gauge transformations, derive the Fourier-mode form for the open string, impose light-cone gauge, derive the mass formula, and analyze compactification on $\mathrm{Mink}_{D-1}\times S^{1}$ at the self-dual radius.
4. Use BRST for the relativistic particle and the bosonic string, derive the Virasoro generators from the BRST charge, recover the critical dimension from nilpotency, and then analyze the open NS string in the old covariant formalism, including its physical-state conditions and the special value $a=\frac12$.

## Solution skeleton

### 1. Background fields and the dilaton zero mode

The Polyakov action in general backgrounds is

$$
S=\frac{1}{4\pi\alpha'}\int d^{2}\sigma \sqrt{h}
\left(
h^{\mu\nu}g_{mn}(X)\partial_{\mu}X^{m}\partial_{\nu}X^{n}
+ i\epsilon^{\mu\nu}b_{mn}(X)\partial_{\mu}X^{m}\partial_{\nu}X^{n}
+ \alpha' \Phi(X)R^{(2)}
\right).
$$

Splitting

$$
\Phi(X)=\Phi_{0}+\tilde\Phi(X)
$$

shows that the constant part contributes

$$
e^{-\Phi_{0}\chi}=g_{s}^{-\chi},
\qquad
g_{s}=e^{\Phi_{0}},
$$

to a worldsheet of Euler character $\chi$.

### 2. The explicit rotating closed string

For the solution

$$
X^{1}+iX^{2}=\frac12 e^{-it+i\sigma},
\qquad
X^{3}+iX^{4}=\frac12 e^{it+i\sigma},
$$

the induced metric is constant and diagonal in suitable coordinates. The proper length is time-independent, so the solution is rigid. By moving to rotating coordinates in the two orthogonal planes one sees that the string lies in a fixed two-plane and traces out a circle. Its energy exceeds $TL$ because the string carries rotational kinetic energy in addition to rest energy.

### 3. First-class constraints and light-cone quantization

The Hamiltonian constraints

$$
P^{2}+(TX')^{2}=0,
\qquad
X'\cdot P=0
$$

are first class because their Poisson brackets close on the constraints themselves. In Fourier space,

$$
L_{n}=\frac12\sum_{k}\alpha_{k}\cdot \alpha_{n-k},
$$

and in light-cone gauge the transverse oscillators satisfy

$$
[\alpha_{m}^{I},\alpha_{n}^{J}]=m\delta^{IJ}\delta_{m+n,0}.
$$

The mass formula is

$$
\mathcal M^{2}=\frac{N-a}{\alpha'}.
$$

For compactification on a circle,

$$
\mathcal M^{2}=\frac{2}{\alpha'}(N+\tilde N-2)+\left(\frac{n}{R}\right)^{2}+\left(\frac{Rw}{\alpha'}\right)^{2},
$$

with

$$
N-\tilde N=wn.
$$

At $R=\sqrt{\alpha'}$ one gets additional massless states beyond the graviton/$B$/$\Phi$ multiplet, producing gauge enhancement.

### 4. BRST and the open NS string

For the point particle, the BRST charge is

$$
Q_{\mathrm{BRST}}=c\,\phi,
$$

and $Q_{\mathrm{BRST}}^{2}=0$ enforces the mass-shell constraint. For the bosonic string,

$$
Q_{\mathrm{BRST}}
=\frac12\sum_{p,q}c_{-p}\left[\alpha_{q}\cdot\alpha_{p-q}-(p-q)c_{-q}b_{p+q}\right].
$$

Using

$$
L_{m}=\{b_{m},Q_{\mathrm{BRST}}\},
$$

one recovers matter plus ghost Virasoro operators. Nilpotency fixes the intercept and the critical dimension.

For the open NS string,

$$
L_{n}\ket{\mathrm{phys}}=0,\qquad G_{r}\ket{\mathrm{phys}}=0,\qquad (L_{0}-a)\ket{\mathrm{phys}}=0.
$$

The state

$$
A(p)\cdot b_{-1/2}\ket{0}
$$

has non-negative norm only if $a\le \frac12$, and the limiting value $a=\frac12$ is special because it produces a massless vector with gauge redundancy and is the physically correct NS intercept.

# 2014 paper 48: Advanced String Theory

## Problem list

1. Start from the superstring action with worldsheet zweibein and gravitino, and explain gauge fixing.
2. Explain how unphysical states are removed and how spacetime supersymmetry emerges.
3. Summarize the Type IIA massless spectrum and compare bosonic and fermionic state counts at the first massive level.
4. Discuss whether string theory is a plausible theory of everything.
5. For the bosonic closed string with backgrounds $g$, $B$, and $\Phi$, explain the role of the dilaton, derive or sketch the metric beta function, and state the Buscher rules.

## Solution skeleton

### 1. Gauge fixing the superstring

Gauge fixing removes:

- worldsheet diffeomorphisms,
- Weyl symmetry,
- local worldsheet supersymmetry.

The residual matter plus ghost systems must have vanishing total anomaly.

### 2. Physical states and spacetime supersymmetry

The GSO projection removes the tachyon and aligns the bosonic and fermionic state counts. In the Ramond sector the zero modes generate spacetime spinors, and the left-right pairing produces Type II spacetime supersymmetry.

### 3. Type IIA and first massive level

The massless Type IIA fields are the standard NS-NS, NS-R, R-NS, and RR states. Equality of bosonic and fermionic degeneracies at each level follows after the GSO projection.

### 4. Theory-of-everything essay

The exam answer should be balanced:

- ultraviolet softness and quantum gravity are strong points,
- uniqueness of vacuum and phenomenological predictivity remain difficult issues,
- dualities suggest a deeper unified structure.

### 5. Backgrounds and T-duality

The dilaton sets the string coupling through

$$
g_{s}=e^{\Phi_{0}}.
$$

Vanishing beta functions impose the background field equations. Buscher duality for an isometry direction exchanges metric and $B$-field components according to the standard algebraic rules.

# 2015 paper 49: String Theory

## Problem list

1. Start from the phase-space action of the closed Nambu-Goto string, derive the equations of motion and constraints, show its equivalence to the Nambu-Goto area action, analyze the explicit pulsating circular solution

$$
X^{0}=Rt,\qquad X^{1}+iX^{2}=(R\cos t)e^{i\sigma},
$$

and discuss open-string boundary conditions and their Noether charges.
2. Review massive spin-2 in light-cone language, then compare the first few open bosonic and open NS string levels in light-cone gauge, including their little-group representations.
3. Rewrite the Nambu-Goto string in Polyakov form, explain conformal gauge in both Hamiltonian and Lagrangian form, derive the closed-string FP ghost action, explain anomaly cancellation, and use the Veneziano amplitude to show the existence of a massless spin-1 open-string bound state. The paper ends with an essay prompt on old covariant quantization and the emergence of $a=1$ and $D=26$.

## Solution skeleton

### 1. Phase-space string, explicit solution, and boundary conditions

The phase-space equations are

$$
\dot X^{m}=eP^{m}+uX'^{m},
\qquad
\dot P^{m}=(eTX'^{m}+uP^{m})'.
$$

The constraints generate gauge transformations because they are first class. Eliminating $P$ returns the Nambu-Goto area action. For

$$
X^{1}+iX^{2}=(R\cos t)e^{i\sigma},
$$

the string is a circle in the $X^{1}$-$X^{2}$ plane whose radius oscillates between $0$ and $R$. The proper length is

$$
L=2\pi R|\cos t|,
$$

and the energy is constant because kinetic and tension contributions trade off during the oscillation.

For the open string, stationarity requires the endpoint term to vanish, so one may impose:

- free-end Neumann conditions,
- fixed-end Dirichlet conditions,
- mixed conditions with the endpoint restricted to a D$p$-brane.

The translation and Lorentz Noether charges are the standard

$$
\mathcal P_{m}=\int d\sigma\, P_{m},
\qquad
\mathcal J_{mn}=\int d\sigma\, (X_{m}P_{n}-X_{n}P_{m}).
$$

### 2. Massive spin 2 and string levels

A massive symmetric traceless transverse tensor in $D$ dimensions has

$$
\frac{(D-1)D}{2}-1-D=\frac{(D-2)(D+1)}{2}
$$

physical degrees of freedom, transforming as the symmetric traceless rank-2 representation of $SO(D-1)$.

For the open bosonic string, light-cone level $N=2$ gives the correct little-group content for a massive spin-2 particle. For the open NS string:

- level $N=\frac12$ gives

$$
b_{-1/2}^{I}\ket{0},
$$

a massless vector of $SO(D-2)$,

- level $N=1$ gives

$$
\alpha_{-1}^{I}\ket{0},
\qquad
b_{-1/2}^{I}b_{-1/2}^{J}\ket{0},
$$

which assemble into $SO(D-1)$ representations rather than the pure massive spin-2 representation.

### 3. Polyakov form, ghosts, and Veneziano poles

Conformal gauge leaves residual conformal reparameterizations. Faddeev-Popov gauge fixing therefore introduces the $bc$ ghost action of a weight-$(2,-1)$ anticommuting system, whose central charge is $-26$. This is precisely what cancels the $D=26$ matter anomaly.

The Veneziano amplitude

$$
A(s,t)=\frac{\Gamma(-1-s)\Gamma(-1-t)}{\Gamma(-2-s-t)}
$$

has poles at

$$
s=-1,0,1,2,\dots
$$

corresponding to the open-string tower. The residue at the massless pole signals exchange of a spin-1 state, which is the open-string gauge boson.

The essay part should explain:

- why one cannot impose all Virasoro constraints strongly,
- why absence of negative norm at level 1 gives $a\le 1$,
- why consistency at level 2 fixes $D=26$,
- why the $a=1$ old-covariant spectrum matches light-cone quantization.

# 2017 paper 306: String Theory

## Problem list

1. Quantize the open string assuming every physical transverse direction is ND, write the classical $L_{0}$ in light-cone gauge, determine the vacuum-energy shift, the first three states, and their little-group interpretation.
2. Starting from the bosonic string in a metric-dilaton background, derive the lowest-order conformal-invariance condition and the associated dilaton equation.
3. Starting from the tachyon vertex operator

$$
V=g_{s}\int d^{2}z\, e^{ip\cdot X(z)},
$$

derive the reduced four-point amplitude and discuss its analytic structure.
4. For the superstring action with Majorana fermions, verify rigid supersymmetry and explain why the superstring is a better candidate for realistic physics than the bosonic string.

## Solution skeleton

### 1. ND open strings

ND boundary conditions imply half-integer bosonic modes in each transverse direction:

$$
X^{I}\sim \sum_{r\in \mathbb Z+1/2}\frac{\alpha_{r}^{I}}{r}e^{-ir\tau}\sin r\sigma
\quad \text{or} \quad
\cos r\sigma
$$

depending on which endpoint is Neumann. In light-cone gauge the classical Virasoro zero mode is

$$
L_{0}=\frac{\alpha' p^{2}}{4}+\sum_{r>0}\alpha_{-r}\cdot \alpha_{r}.
$$

The vacuum energy is shifted because the zero-point sum now uses half-integers. With 24 transverse ND bosons,

$$
\sum_{r\in \mathbb Z+1/2} r=\frac{1}{24}
$$

gives the corresponding intercept. The first three levels are built with one, two, and three half-integer oscillators and organize into little-group representations of $SO(24)$ for massless states or $SO(25)$ for massive ones.

### 2. Metric-dilaton background

For

$$
S=-\frac{1}{4\pi\alpha'}\int d^{2}\xi \sqrt{-h}\, h^{\mu\nu}\partial_{\mu}X^{a}\partial_{\nu}X^{b}g_{ab}(X)
+\frac{1}{4\pi}\int d^{2}\xi \sqrt{-h}\,R^{(2)}\Phi(X),
$$

the lowest-order Weyl-invariance condition is

$$
R_{ab}+2\nabla_{a}\nabla_{b}\Phi=0
$$

when no $B$-field is present. Contracted Bianchi identities then imply the dilaton equation up to a constant,

$$
4(\nabla\Phi)^{2}-4\nabla^{2}\Phi-R+\text{const}=0.
$$

### 3. Four tachyons again

The derivation is standard. The important new point is the analytic structure:

- simple poles at the entire infinite tower of closed-string masses,
- full crossing symmetry,
- residues encoding exchanges of arbitrarily high spin.

This is the cleanest manifestation of dual resonance.

### 4. Rigid worldsheet supersymmetry

The Majorana condition means the worldsheet spinor can be chosen real. Under

$$
\delta X^{a}=\sqrt{\frac{\alpha'}{2}}\, i\bar\epsilon \psi^{a},
\qquad
\delta\psi^{a}=\sqrt{\frac{1}{2\alpha'}}\,\gamma^{\mu}\partial_{\mu}X^{a}\epsilon,
$$

the action varies by a boundary term. The superstring is more realistic because:

- it removes the bosonic-string tachyon after GSO projection,
- it naturally contains spacetime fermions,
- it has a ten-dimensional critical theory with supersymmetry and a massless graviton.

# 2018 paper 306: String Theory

## Problem list

1. Rewrite the open Nambu-Goto string in phase-space form and identify canonical variables and constraints.
2. Work through mode expansions and Poisson brackets.
3. Review the relativistic point particle as a simpler gauge system.
4. Explain why string theory provides a perturbative quantum theory of gravity.
5. Derive the ghost action for the closed string, determine ghost conformal dimensions, and recover the critical dimension.

## Solution skeleton

### 1. Phase-space string

Introduce canonical momentum

$$
P_{\mu}=\frac{\partial \mathcal L}{\partial \dot X^{\mu}}.
$$

The Hamiltonian is a combination of constraints, reflecting worldsheet reparameterization invariance. Fourier expansion of $X^{\mu}$ and $P_{\mu}$ gives oscillator Poisson brackets.

### 2. Point-particle analogue

The point particle teaches the same logic in one dimension lower:

- introduce an einbein,
- identify the mass-shell constraint,
- see that gauge fixing and constraints are the key structural ingredients.

### 3. Why perturbative quantum gravity

The graviton appears automatically as a massless closed-string excitation. String interactions are not point-like, so ultraviolet behavior is softened relative to local quantum field theory.

### 4. Ghost action and critical dimension

The reparameterization ghost system is a fermionic $bc$ system with weights

$$
h_{b}=2,\qquad h_{c}=-1,
$$

and central charge

$$
c_{bc}=-26.
$$

Consistency requires

$$
c_{\mathrm{matter}}+c_{bc}=0
\quad\Longrightarrow\quad
D=26.
$$

# 2019 paper 306: String Theory

## Problem list

1. Derive the $T(z)T(w)$ OPE and the conformal transformation law of the stress tensor.
2. Use the free-boson path integral and Green's function to derive a three-tachyon amplitude.
3. Define the BRST operator, explain nilpotency, and discuss the gauge-fixing fermion.
4. Derive either the oscillator algebra from the $XX$ OPE or the Virasoro generators from the stress tensor.

## Solution skeleton

### 1. Stress tensor OPE and Schwarzian term

For a free boson,

$$
T(z)T(w)\sim \frac{c/2}{(z-w)^{4}}+\frac{2T(w)}{(z-w)^{2}}+\frac{\partial T(w)}{z-w}.
$$

Under a conformal map $z\to f(z)$,

$$
T(z)=\left(f'(z)\right)^{2}T(f)+\frac{c}{12}\{f,z\},
$$

with Schwarzian derivative

$$
\{f,z\}=\frac{f'''}{f'}-\frac{3}{2}\left(\frac{f''}{f'}\right)^{2}.
$$

### 2. Three tachyons

At tree level the sphere three-point function is fixed completely by conformal symmetry after dividing by $SL(2,\mathbb C)$, so only momentum conservation remains as a nontrivial condition.

### 3. BRST

The bosonic BRST charge is

$$
Q_{\mathrm{BRST}}
=
\sum_{n} c_{-n}(L_{n}-a\delta_{n,0})
-\frac{1}{2}\sum_{m,n}(m-n):c_{-m}c_{-n}b_{m+n}:.
$$

Nilpotency requires vanishing total central charge.

### 4. Oscillator algebra from OPE

Use contour integrals applied to

$$
\partial X^{\mu}(z)\partial X^{\nu}(w)\sim -\frac{\alpha'}{2}\frac{\eta^{\mu\nu}}{(z-w)^{2}}
$$

to derive

$$
[\alpha_{m}^{\mu},\alpha_{n}^{\nu}]=m\eta^{\mu\nu}\delta_{m+n,0}.
$$

# 2021 paper 306: String Theory

## Problem list

1. Derive the classical worldsheet stress tensor by varying the action with respect to the metric, prove tracelessness, compare Nambu-Goto and Polyakov, and interpret Weyl invariance through correlation functions.
2. Derive matter and ghost central charges from OPEs, find the transformation law of the total stress tensor, and explain what happens at $D=26$.
3. Analyze closed-string tachyon vertex operators, integrated and unintegrated insertions, and derive the $n$-tachyon amplitude, with the $4$-point function as a special case.
4. Study open-string boundary conditions, then analyze a string stretched between parallel D-branes, its mode expansions, mass formula, and gauge-symmetry enhancement when the branes coincide.

## Solution skeleton

### 1. Stress tensor, tracelessness, and Weyl invariance

Variation with respect to the worldsheet metric gives

$$
T_{ab}=-\frac{4\pi}{\sqrt{-h}}\frac{\delta S}{\delta h^{ab}}
=\frac{1}{\alpha'}
\left(
\partial_{a}X\cdot\partial_{b}X-\frac{1}{2}h_{ab}h^{cd}\partial_{c}X\cdot\partial_{d}X
\right).
$$

Its trace vanishes classically:

$$
h^{ab}T_{ab}=0.
$$

Polyakov and Nambu-Goto are classically equivalent because the $h_{ab}$ equation sets $h_{ab}$ proportional to the induced metric.

The condition

$$
h^{ab}\left\langle T_{ab}\,\phi_{1}\cdots\phi_{n}\right\rangle=0
$$

expresses Weyl invariance of correlation functions. A target-space metric perturbation $\delta G_{\mu\nu}(X)$ inserts the integrated worldsheet operator

$$
\delta S\sim \int d^{2}\sigma \sqrt{h}\, h^{ab}\delta G_{\mu\nu}(X)\partial_{a}X^{\mu}\partial_{b}X^{\nu}.
$$

### 2. Central charges and $D=26$

Each free boson contributes $c=1$, so $c_{X}=D$. The reparameterization ghost system contributes

$$
c_{bc}=-26.
$$

Hence

$$
c_{\mathrm{tot}}=D-26.
$$

When $D=26$, the anomalous Schwarzian term of the total stress tensor disappears and the quantum Weyl anomaly is canceled.

### 3. Closed-string tachyon amplitudes

The unintegrated tachyon operator has ghost dressing $c\tilde c\, e^{ik\cdot X}$ and the integrated one is

$$
\int d^{2}z\, e^{ik\cdot X(z,\bar z)}.
$$

Their dimensions enforce

$$
\alpha' k^{2}=4
$$

for the bosonic closed-string tachyon. The $n$-point tree amplitude is

$$
\mathcal A_{n}
\propto
g_{s}^{n-2}
\int \frac{\prod_{i} d^{2}z_{i}}{\mathrm{vol}\, SL(2,\mathbb C)}
\prod_{i<j}|z_{ij}|^{\alpha' k_{i}\cdot k_{j}}.
$$

For $n=4$, fix three insertion points and recover the Virasoro-Shapiro amplitude, which is manifestly crossing symmetric.

### 4. D-branes and stretched open strings

For a string stretched between branes separated by transverse distance $|x_{2}-x_{1}|$, the DD directions contribute a linear classical piece. The mass formula becomes

$$
M^{2}=T^{2}|x_{2}-x_{1}|^{2}+\frac{N-1}{\alpha'}.
$$

When the branes coincide, the stretched strings become massless and enhance

$$
U(1)\times U(1)\to U(2),
$$

generalizing to $U(N)$ for $N$ coincident branes.

# 2022 paper 306: String Theory

## Problem list

1. Analyze the closed bosonic string on the cylinder.
2. Work out a $\beta\gamma$ system, including its stress tensor, conformal weights, mode algebra, and central charge.
3. Use the result in the broader logic of superstring ghost consistency.

## Solution skeleton

### 1. Cylinder quantization

Map the cylinder to the plane via

$$
z=e^{\tau+i\sigma}.
$$

The closed-string Hamiltonian on the cylinder is generated by

$$
L_{0}+\tilde L_{0}-\frac{c+\tilde c}{12}.
$$

### 2. $\beta\gamma$ system

Take commuting fields with

$$
\beta(z)\gamma(w)\sim -\frac{1}{z-w}.
$$

For weights $(\lambda,1-\lambda)$,

$$
T=(1-\lambda)(\partial\beta\,\gamma)-\lambda(\beta\,\partial\gamma),
$$

and therefore

$$
h_{\beta}=\lambda,
\qquad
h_{\gamma}=1-\lambda.
$$

The central charge is

$$
c_{\beta\gamma}=2-12\lambda(1-\lambda).
$$

For the superconformal ghost system $\lambda=\frac{3}{2}$, so

$$
c_{\beta\gamma}=11.
$$

### 3. Superstring consistency

In the RNS superstring,

$$
c_{X}=10,\qquad c_{\psi}=5,\qquad c_{bc}=-26,\qquad c_{\beta\gamma}=11,
$$

so the total central charge vanishes in ten dimensions.

# 2023 paper 306: String Theory

## Problem list

1. For the open bosonic string with Neumann boundary conditions, derive the classical mode expansion, the canonical commutators, the Lorentz Noether current and charge, and prove that the latter obey the Lorentz algebra.
2. For a single scalar with improved stress tensor

$$
T(z)=-\frac{1}{\alpha'}:\partial X\partial X:(z)-q:\partial^{2}X:(z),
$$

compute the central charge, derive the action that gives this stress tensor, and explain how this linear-dilaton theory can be used to build a bosonic string with $D<26$.
3. Define primary operators, determine the conditions on

$$
:\epsilon_{\mu\nu}\partial X^{\mu}\bar\partial X^{\nu}e^{ik\cdot X}:
$$

for it to be primary, identify the graviton and $B$-field vertex operators, and explain the modified trace operator that becomes primary only after adding a gauge piece.
4. Starting from the sigma-model action on a background with an isometry, show the classical equivalence between the original model and its first-order form with an auxiliary field $p_{\alpha}$, then integrate out $Z$ to obtain the T-dual metric and explain why Ricci flatness need not be preserved without the induced dilaton.

## Solution skeleton

### 1. Open-string Lorentz algebra

With NN boundary conditions,

$$
X^{\mu}=x^{\mu}+2\alpha' p^{\mu}\tau
+i\sqrt{2\alpha'}\sum_{n\neq 0}\frac{\alpha_{n}^{\mu}}{n}e^{-in\tau}\cos n\sigma.
$$

Covariant quantization imposes

$$
[x^{\mu},p^{\nu}]=i\eta^{\mu\nu},
\qquad
[\alpha_{m}^{\mu},\alpha_{n}^{\nu}]=m\eta^{\mu\nu}\delta_{m+n,0}.
$$

The Noether current for target-space Lorentz transformations is

$$
J_{\alpha}^{\mu\nu}
=
\frac{1}{2\pi\alpha'}
\left(
X^{\mu}\partial_{\alpha}X^{\nu}-X^{\nu}\partial_{\alpha}X^{\mu}
\right),
$$

and the charge

$$
M^{\mu\nu}=\int_{0}^{\pi}d\sigma\, J_{\tau}^{\mu\nu}
$$

splits into orbital plus oscillator pieces. The commutators above are enough to verify the Lorentz algebra directly.

### 2. Linear dilaton / background charge

For

$$
T(z)=-\frac{1}{\alpha'}:\partial X\partial X:-q\,\partial^{2}X,
$$

the $TT$ OPE gives

$$
c=1+12\alpha' q^{2}
$$

up to the sign convention encoded in the timelike/spacelike choice for $X$. This comes from the action

$$
S[X]=\frac{1}{4\pi\alpha'}\int d^{2}\sigma \sqrt g\, g^{\alpha\beta}\partial_{\alpha}X\partial_{\beta}X
+\frac{q}{4\pi}\int d^{2}\sigma \sqrt g\, X R^{(2)}.
$$

By tensoring $D$ free scalars with a linear-dilaton direction, one can tune the total matter central charge to 26 even when the number of geometric flat directions is $D<26$. String perturbation theory can become unreliable where the dilaton grows and therefore $g_{s}=e^{\Phi}$ becomes large.

### 3. Primary conditions for graviton-like vertices

For

$$
V_{\epsilon,k}=:\epsilon_{\mu\nu}\partial X^{\mu}\bar\partial X^{\nu}e^{ik\cdot X}:,
$$

the OPE with $T$ and $\bar T$ gives:

$$
k^{2}=0,
\qquad
k^{\mu}\epsilon_{\mu\nu}=0,
\qquad
k^{\nu}\epsilon_{\mu\nu}=0
$$

for $(1,1)$ primary behavior. The symmetric traceless part is the graviton, the antisymmetric part is the $B$-field, and shifts

$$
\epsilon_{\mu\nu}\sim \epsilon_{\mu\nu}+k_{\mu}\xi_{\nu}+\xi_{\mu}k_{\nu}
$$

encode the gauge redundancy.

The pure-trace operator is not primary for $k\neq 0$, but

$$
(\eta_{\mu\nu}+\xi_{\mu}k_{\nu}+k_{\mu}\xi_{\nu})
:\partial X^{\mu}\bar\partial X^{\nu}e^{ik\cdot X}:
$$

can be made primary by choosing $\xi$ so that the transversality conditions hold. This is the dilaton vertex.

### 4. First-order Buscher derivation

Start from

$$
ds^{2}=G_{ij}(y)dy^{i}dy^{j}+V(y)dz^{2}.
$$

The first-order action introduces a worldsheet one-form $p_{\alpha}$:

$$
S_{2}[Y,Z,p]
=
\frac{1}{4\pi\alpha'}\int d^{2}\sigma\, G_{ij}(Y)\partial^{\alpha}Y^{i}\partial_{\alpha}Y^{j}
+\pi\alpha' \int d^{2}\sigma\, V^{-1}(Y)p^{\alpha}p_{\alpha}
+ i\int d^{2}\sigma\, p^{\alpha}\partial_{\alpha}Z.
$$

Integrating out $p_{\alpha}$ reproduces the original sigma model. Integrating out $Z$ instead imposes

$$
\partial_{\alpha}p^{\alpha}=0,
$$

so locally

$$
p^{\alpha}=\epsilon^{\alpha\beta}\partial_{\beta}\tilde Z.
$$

Substituting back gives the dual metric

$$
d\tilde s^{2}=G_{ij}(y)dy^{i}dy^{j}+\frac{1}{V(y)}dz^{2}.
$$

The reason Ricci flatness need not survive is that exact quantum T-duality also shifts the dilaton by the one-loop determinant.

# 2024 paper 306: String Theory

## Problem list

1. Derive the genus-zero closed bosonic $4$-tachyon amplitude from the Polyakov path integral, including the $g_{s}$ dependence, the worldsheet propagator, the Koba-Nielsen factor, and the $SL(2,\mathbb C)$ invariance. Then infer the structure of the Type II massless amplitude from its poles.
2. Quantize a single free boson on the cylinder and torus, compute the torus partition function, then compactify the target on a circle and write the modified Hamiltonian, momentum, and partition function.
3. Study a boson-plus-fermion CFT: identify primary operators and weights, normal ordering, show that $\psi$ is primary, compute the central charge, analyze the supercurrent

$$
G=i\psi \partial X,
$$

derive the $GG$ OPE and the mode anticommutator, then discuss the sigma-model equations for backgrounds $G$, $B$, and $\Phi$, including the dependence among them and the meaning of $\alpha'$ corrections. Finally, study an open string ending on a D$p$-brane in a constant $B$-field and interpret the modified boundary condition.

## Solution skeleton

### 1. Sphere four-tachyon amplitude

The free-field path integral gives

$$
\left\langle \prod_{i=1}^{4} e^{ik_{i}\cdot X(z_{i},\bar z_{i})}\right\rangle
\propto
\prod_{i<j}|z_{ij}|^{\alpha' k_{i}\cdot k_{j}}.
$$

The sphere contributes

$$
g_{s}^{n-2}=g_{s}^{2}
$$

for $n=4$ closed-string insertions. Fix three points with $SL(2,\mathbb C)$ and integrate over the fourth. This gives the Virasoro-Shapiro integral.

The massless Type II amplitude has poles corresponding to exchange of massless NS-NS or RR states depending on the channel. The essential point is that the pole structure is consistent with factorization through the physical intermediate string states.

### 2. Free boson on torus and circle compactification

On the cylinder, the Hamiltonian and momentum are generated by $L_{0}+\tilde L_{0}$ and $L_{0}-\tilde L_{0}$. The torus partition function is

$$
Z(\tau,\bar\tau)=\operatorname{Tr}\left(q^{L_{0}-c/24}\bar q^{\tilde L_{0}-\tilde c/24}\right),
\qquad
q=e^{2\pi i\tau}.
$$

For a compact boson:

$$
p_{L}=\frac{n}{R}+\frac{wR}{\alpha'},
\qquad
p_{R}=\frac{n}{R}-\frac{wR}{\alpha'},
$$

and

$$
Z_{R}(\tau,\bar\tau)
=
\frac{1}{|\eta(\tau)|^{2}}
\sum_{n,w\in\mathbb Z}
q^{\frac{\alpha'}{4}p_{L}^{2}}
\bar q^{\frac{\alpha'}{4}p_{R}^{2}}.
$$

### 3. Boson, fermion, supercurrent, and background equations

For one real boson and one real fermion,

$$
c=1+\frac{1}{2}=\frac{3}{2}.
$$

The supercurrent

$$
G=i\psi\partial X
$$

has weight $3/2$. Its OPE with itself yields the stress tensor:

$$
G(z)G(w)\sim \frac{2c/3}{(z-w)^{3}}+\frac{2T(w)}{z-w}.
$$

The corresponding mode algebra is the super-Virasoro algebra.

For the background-field equations,

$$
R_{\mu\nu}-\frac{1}{4}H_{\mu\rho\sigma}H_{\nu}{}^{\rho\sigma}+2\nabla_{\mu}\nabla_{\nu}\Phi=0,
$$

$$
\nabla^{\rho}H_{\rho\mu\nu}-2(\nabla^{\rho}\Phi)H_{\rho\mu\nu}=0,
$$

$$
4(\nabla\Phi)^{2}-4\nabla^{2}\Phi-R+\frac{1}{12}H^{2}+\text{const}=0.
$$

The third follows from the first two up to an integration constant. $\alpha'$ corrections appear because the sigma model is only an effective worldsheet theory and higher-loop renormalization produces higher-derivative corrections to the target-space equations.

For an open string ending on a D$p$-brane in constant $B$,

$$
G_{\mu\nu}\partial_{\sigma}X^{\nu}+B_{\mu\nu}\partial_{\tau}X^{\nu}=0
$$

along the brane directions. The constant $B$ is interpreted as a background worldvolume flux.

# 2025 paper 306: String Theory

## Problem list

1. Start from the Polyakov action for an open bosonic string, derive the equations of motion, Virasoro constraints, and allowed boundary conditions. Prove target-space translation and Lorentz invariance and derive the Noether charges $P^{\mu}$ and $J^{\mu\nu}$. Evaluate them for the NN mode expansion. Then fix $X^{0}=A\tau$ and write a rigid rotating stretched-string solution.
2. For a free boson CFT, compute

$$
\langle \partial X(z)\partial X(w)\rangle,
$$

define the holomorphic stress tensor, explain what it means for an operator to be primary, give an example, and derive the Schwarzian transformation law of $T$.
3. Derive the tree-level $m$-tachyon closed-string amplitude from the Polyakov path integral, analyze the hard-scattering saddle-point equations, and solve the special case $m=4$.
4. State the conditions for a consistent sigma-model background on $S^{2}$, rewrite the $S^{2}$ sigma model in a complex coordinate $Z$, identify the coupling $\lambda$, expand around the North Pole, write the propagator and interaction vertex, identify the divergent diagram renormalizing the metric, and interpret the result for strings on $S^{2}\times N$.

## Solution skeleton

### 1. Polyakov open string, charges, and rotating solution

The bulk equation is

$$
\partial_{+}\partial_{-}X^{\mu}=0,
$$

and the constraints are

$$
T_{++}=0,
\qquad
T_{--}=0.
$$

The boundary variation gives either Neumann or Dirichlet conditions at each endpoint. Translation invariance gives

$$
P^{\mu}=\frac{1}{2\pi\alpha'}\int_{0}^{\pi} d\sigma\, \dot X^{\mu},
$$

and Lorentz invariance gives

$$
J^{\mu\nu}=\frac{1}{2\pi\alpha'}\int_{0}^{\pi} d\sigma\,
\left(X^{\mu}\dot X^{\nu}-X^{\nu}\dot X^{\mu}\right).
$$

For NN boundary conditions the mode expansion is

$$
X^{\mu}=x^{\mu}+2\alpha' p^{\mu}\tau
+i\sqrt{2\alpha'}\sum_{n\neq 0}\frac{\alpha_{n}^{\mu}}{n}e^{-in\tau}\cos n\sigma.
$$

Only the zero mode contributes to $P^{\mu}$:

$$
P^{\mu}=p^{\mu}.
$$

In static gauge $X^{0}=A\tau$, the standard rigid rotating solution in one plane is

$$
X^{1}=a\cos\tau\cos\sigma,
\qquad
X^{2}=a\sin\tau\cos\sigma,
$$

with the Virasoro constraint fixing $A=a$ in the standard normalization.

### 2. Free-boson stress tensor and Schwarzian derivative

The two-point function is

$$
\langle X(z)X(w)\rangle=-\frac{\alpha'}{2}\ln(z-w),
$$

so

$$
\langle \partial X(z)\partial X(w)\rangle
=-\frac{\alpha'}{2}\frac{1}{(z-w)^{2}}.
$$

The stress tensor is

$$
T(z)=-\frac{1}{\alpha'}:\partial X\partial X:.
$$

A primary operator of weight $h$ obeys

$$
T(z)\mathcal O(w)\sim \frac{h\mathcal O(w)}{(z-w)^{2}}+\frac{\partial\mathcal O(w)}{z-w}.
$$

For example, $\partial X$ is primary of weight $1$.

The stress tensor transforms as

$$
T(z)=\left(\frac{dw}{dz}\right)^{2}T(w)+\frac{c}{12}\{w,z\},
$$

so it is not a primary field.

### 3. $m$-tachyon amplitude and hard scattering

At tree level,

$$
\mathcal A_{m}\propto
g_{s}^{m-2}
\int \frac{\prod_{i} d^{2}z_{i}}{\mathrm{vol}\,SL(2,\mathbb C)}
\prod_{i<j}|z_{ij}|^{\alpha' k_{i}\cdot k_{j}}.
$$

In the hard-scattering limit, the exponent becomes large and the integral is dominated by stationary points of

$$
\sum_{i<j}\alpha' k_{i}\cdot k_{j}\ln|z_{ij}|.
$$

The saddle equations are

$$
\sum_{j\neq i}\frac{k_{i}\cdot k_{j}}{z_{i}-z_{j}}=0.
$$

For $m=4$, after fixing three points, the remaining cross-ratio saddle is determined algebraically by the Mandelstam invariants.

### 4. Sigma model on $S^{2}$

A consistent background must make the worldsheet beta functions vanish, so the target metric must solve the appropriate renormalization-group equations. Using a stereographic coordinate $Z$, the metric may be written as

$$
ds^{2}=\frac{4R^{2}\, dZd\bar Z}{(1+|Z|^{2})^{2}},
$$

which turns the sigma model into a nonlinear interacting theory with coupling

$$
\lambda\sim \frac{\alpha'}{R^{2}}.
$$

Expanding around the North Pole gives a free propagator plus quartic derivative interactions. The one-loop logarithmically divergent diagram renormalizes the metric coupling and encodes the Ricci-flow beta function. The implication for strings on $S^{2}\times N$ is that the $S^{2}$ factor is not automatically conformal: extra fields or corrections are needed to achieve a consistent background.

# Cross-paper formula bank

## Worldsheet basics

$$
S_{\mathrm P}=-\frac{1}{4\pi\alpha'}\int d^{2}\sigma \sqrt{-h}\, h^{ab}\partial_{a}X\cdot\partial_{b}X,
$$

$$
\partial_{+}\partial_{-}X^{\mu}=0,
\qquad
T_{++}=T_{--}=0.
$$

## Bosonic spectra

$$
M_{\mathrm{open}}^{2}=\frac{1}{\alpha'}(N-1),
\qquad
M_{\mathrm{closed}}^{2}=\frac{4}{\alpha'}(N_{L}-1)=\frac{4}{\alpha'}(N_{R}-1),
\qquad
N_{L}=N_{R}.
$$

## Compactification

$$
p_{L}=\frac{n}{R}+\frac{wR}{\alpha'},
\qquad
p_{R}=\frac{n}{R}-\frac{wR}{\alpha'},
\qquad
R\leftrightarrow \frac{\alpha'}{R}.
$$

## Stress tensor and OPE

$$
T(z)=-\frac{1}{\alpha'}:\partial X\partial X:,
$$

$$
T(z)T(w)\sim \frac{c/2}{(z-w)^{4}}+\frac{2T(w)}{(z-w)^{2}}+\frac{\partial T(w)}{z-w}.
$$

## Ghosts

$$
c_{bc}=-26,
\qquad
c_{\beta\gamma}=11\quad \text{for } \lambda=\frac{3}{2}.
$$

## Tree-level amplitudes

$$
\mathcal A_{n}
\propto
g_{s}^{n-2}
\int \frac{\prod_{i} d^{2}z_{i}}{\mathrm{vol}\, SL(2,\mathbb C)}
\prod_{i<j}|z_{ij}|^{\alpha' k_{i}\cdot k_{j}}.
$$

# Lessons for the Cheng Peng course

## 1. Cambridge exams test a chain, not isolated facts

The most stable structure across these papers is:

1. classical action, constraints, and boundary conditions,
2. CFT language for the same system,
3. ghost and anomaly consistency,
4. vertex operators and amplitudes,
5. spacetime interpretation.

For the present course, this means that revision should be organized by transitions between topics, not by storing disconnected formulas.

## 2. Classical string mechanics matters as much as the quantum spectrum

The Cambridge papers repeatedly ask for:

- equations of motion,
- Virasoro constraints,
- allowed boundary conditions,
- Noether charges,
- rigidly rotating or stretched-string solutions.

This is a strong warning against preparing only the oscillator spectrum.

## 3. OPE technology is expected to be operational

The papers do not treat CFT as decoration. They repeatedly expect the student to compute:

- $T(z)\mathcal O(w)$,
- $T(z)T(w)$,
- ghost central charges,
- conformal transformation laws,
- supercurrent OPEs.

So for this course, the OPE toolkit should be prepared as a calculation routine rather than a list of definitions.

## 4. Vertex operators and amplitudes are the most natural next exam-level extension

Several recent papers build directly from free fields and primaries to tree-level scattering. This is probably the single most exam-friendly extension beyond the current cheat sheet because it uses:

- free-boson correlators,
- conformal weights,
- ghost insertions,
- gauge fixing of $SL(2,\mathbb C)$.

## 5. Ghosts and BRST are part of the main line

The Part III papers treat ghosts, critical dimension, and BRST as central structure rather than side material. This suggests that if one wants to strengthen the current course notes, the most profitable addition is a compact BRST note tied directly to Virasoro and ghost systems.

## 6. Compactification and D-branes are used to test physical interpretation

When the papers move beyond flat noncompact strings, they usually do so through:

- momentum and winding on a circle,
- T-duality,
- open strings with Dirichlet boundary conditions,
- gauge enhancement from coincident branes.

This is much more exam-friendly than very advanced duality webs.

## 7. Background-field consistency is the conceptual continuation of the Weyl anomaly story

The route

$$
\text{worldsheet consistency} \to \beta\text{-functions} \to \text{spacetime equations}
$$

appears several times. This is the cleanest way to understand why string theory constrains its target-space backgrounds.

## 8. What is closest to the current course

The topics with the strongest overlap are:

1. classical Polyakov analysis and Noether charges,
2. free-boson and free-fermion CFT computations,
3. ghost systems and anomaly cancellation,
4. vertex operators and tree-level tachyon amplitudes,
5. circle compactification and T-duality.

## 9. What is probably not worth prioritizing first

For the present 40-hour course, the less urgent Part III extensions are:

- full M-theory interpretation,
- advanced BPS brane technology,
- exact curved-background models such as WZW,
- Hagedorn thermodynamics beyond the conceptual level.

They are useful for perspective, but they are not the first places where exam effort should go.
