# 4d flat Dirac fermion: ABJ anomaly as a CPS-pAQFT Ward-layer check

日期：2026-07-09

## 0. Direct verdict

This check supplies a genuine anomaly example for the CPS-pAQFT program.

For a Dirac fermion in a background \(U(1)\) gauge field, the classical massless axial symmetry has current

\[
j_5^\mu=\bar\psi\gamma^\mu\gamma_5\psi.
\]

Classically,

\[
\partial_\mu j_5^\mu=0
\]

for \(m=0\). Quantum mechanically, after choosing a renormalization prescription preserving the vector gauge Ward identity, the axial Ward identity becomes

\[
\partial_\mu j_{5,\rm ren}^\mu
=
\frac{q^2}{16\pi^2}
F_{\mu\nu}\widetilde F^{\mu\nu}
\]

in the convention

\[
\widetilde F^{\mu\nu}
=\frac12\epsilon^{\mu\nu\rho\sigma}F_{\rho\sigma}.
\]

For \(m\ne0\), add the explicit breaking term:

\[
\partial_\mu j_{5,\rm ren}^\mu
=
2im\,\bar\psi\gamma_5\psi
+\frac{q^2}{16\pi^2}F_{\mu\nu}\widetilde F^{\mu\nu}.
\]

This is not a failure of CPS. CPS still gives the free graded Peierls bracket/CAR. The anomaly is a quantum obstruction in the renormalized time-ordered products and Ward identities:

\[
\mathcal A_5
=
\frac{q^2}{16\pi^2}F\widetilde F.
\]

It is exactly the kind of term that the main formalism's

\[
\delta_\lambda R_V(F)
=\frac{i}{\hbar}[Q_{\lambda,V}^{\rm ren},R_V(F)]_\star
+\mathcal A_\lambda(F)
\]

was meant to allow.

## 1. Setup

Take 4d Minkowski spacetime and a background gauge field \(A_\mu\). The Dirac action is

\[
S[\psi,\bar\psi;A]
=\int d^4x\,
\bar\psi
\left(i\gamma^\mu D_\mu-m\right)\psi,
\]

where

\[
D_\mu=\partial_\mu+iqA_\mu.
\]

The vector gauge symmetry is

\[
\psi\mapsto e^{-iq\alpha}\psi,
\qquad
\bar\psi\mapsto \bar\psi e^{iq\alpha},
\qquad
A_\mu\mapsto A_\mu+\partial_\mu\alpha.
\]

The axial transformation is

\[
\psi\mapsto e^{i\beta\gamma_5}\psi,
\qquad
\bar\psi\mapsto \bar\psi e^{i\beta\gamma_5}.
\]

For \(m=0\), this is a classical symmetry of the fermion action in a fixed background \(A\).

## 2. Graded CPS input

For fermions, the CPS structure is graded. The free Dirac operator is

\[
D\!\!\!\!/\,_A-m
\]

or, perturbatively around \(A=0\),

\[
D_0=i\gamma^\mu\partial_\mu-m.
\]

The advanced and retarded Green operators give the causal Dirac propagator

\[
S=S_R-S_A.
\]

The graded Peierls bracket yields the CAR:

\[
\{\psi(f),\bar\psi(g)\}_\star
=i\hbar\,\langle f,Sg\rangle,
\]

up to the conventional placement of gamma matrices and test spinor duals.

This is the fermionic version of the same CPS role:

\[
\Omega^{-1}=E
\quad\leadsto\quad
\text{CCR/CAR}.
\]

The anomaly does not alter this free canonical algebra. It obstructs a simultaneous implementation of all desired Ward identities in the interacting/renormalized composite-field layer.

## 3. Classical currents

The vector current is

\[
j^\mu=\bar\psi\gamma^\mu\psi.
\]

The axial current is

\[
j_5^\mu=\bar\psi\gamma^\mu\gamma_5\psi.
\]

Classically,

\[
\partial_\mu j^\mu=0
\]

and

\[
\partial_\mu j_5^\mu=2im\,\bar\psi\gamma_5\psi.
\]

For \(m=0\), the axial current is classically conserved.

In CPS language, the vector and axial charges are defined by

\[
\delta Q=\iota_X\Omega
\]

with \(X\) the corresponding field-space symmetry vector. Quantization would naively suggest both charges should generate their transformations through \(\star\)-commutators. The ABJ anomaly says this cannot be achieved for the axial symmetry while also preserving vector gauge invariance and locality.

## 4. pAQFT Ward identity and anomaly

In pAQFT, currents are renormalized local fields:

\[
j_{5,\rm ren}^\mu
=R_V(j_5^\mu)+j_{5,\rm ct}^\mu.
\]

The axial Ward identity has the form

\[
\partial_\mu j_{5,\rm ren}^\mu
=
2im\,(\bar\psi\gamma_5\psi)_{\rm ren}
+\mathcal A_5.
\]

For a Dirac fermion coupled to a background \(U(1)\) gauge field,

\[
\mathcal A_5
=
\frac{q^2}{16\pi^2}
F_{\mu\nu}\widetilde F^{\mu\nu}.
\]

Equivalently, with differential forms,

\[
\mathcal A_5\,d^4x
=
\frac{q^2}{8\pi^2}F\wedge F
\]

depending on the normalization of \(F\wedge F\) and \(\epsilon^{\mu\nu\rho\sigma}\). The component formula above is the convention used in this note.

The vector Ward identity can be preserved:

\[
\nabla_\mu j^\mu_{\rm ren}=0.
\]

The axial Ward identity cannot simultaneously be made anomaly-free by a local counterterm without spoiling the chosen vector gauge Ward identity. This is the cohomological content of the anomaly.

## 5. Triangle-diagram interpretation

Perturbatively, the anomaly appears in the one-loop triangle graph with one axial current insertion and two vector current/gauge-field insertions:

\[
\langle j_5^\mu(x)j^\nu(y)j^\rho(z)\rangle.
\]

The finite local ambiguity in regularizing this triangle can move the anomalous divergence between the axial and vector Ward identities. The physical convention is to preserve vector gauge invariance, which leaves the axial divergence:

\[
\partial_\mu j_5^\mu
=
\frac{q^2}{16\pi^2}F_{\mu\nu}\widetilde F^{\mu\nu}.
\]

This is a genuine quantum effect:

- it is not visible in the classical CPS tree map;
- it is not generated by the classical retarded solution;
- it lives in renormalized time-ordered products of composite currents.

## 6. Relation to the main CPS-pAQFT formalism

The previous scalar checks had \(\mathcal A=0\). This note provides a case with

\[
\mathcal A_5\ne0.
\]

The formalism now has a concrete interpretation of the anomaly term:

\[
\delta_5 R_V(F)
=
\frac{i}{\hbar}
[Q_{5,V}^{\rm ren},R_V(F)]_\star
+\mathcal A_5(F).
\]

More precisely, local Ward identities with an insertion of \(\partial_\mu j_5^\mu\) contain the local anomaly density \(F\widetilde F\) and contact terms acting on charged insertions. The integrated axial charge fails to be conserved in backgrounds with nonzero

\[
\int F\wedge F.
\]

## 7. Why this is still a CPS check

CPS contributes the canonical structure:

1. graded symplectic/Peierls structure;
2. causal Dirac propagator;
3. CAR algebra;
4. classical current normalization through \(\delta Q=\iota_X\Omega\).

pAQFT contributes the quantum layer:

1. Wick products for fermions;
2. renormalized time-ordered products;
3. current composite-field renormalization;
4. Ward identities;
5. anomaly as local obstruction.

Thus the anomaly example confirms the main slogan:

> CPS supplies the phase-space and algebraic substrate; quantum perturbation theory supplies interacting fields, loops, renormalized currents, and anomalies.

## 8. What this adds to the status of the program

The scalar \(U(1)\) check showed that a non-anomalous internal current can be implemented by a renormalized charge. The ABJ check shows what changes when the symmetry is anomalous:

\[
\mathcal A_\lambda=0
\quad\leadsto\quad
\text{implementable symmetry},
\]

\[
\mathcal A_\lambda\ne0
\quad\leadsto\quad
\text{quantum obstruction}.
\]

This closes the “test a genuine anomaly example” gate at the level of a background-field fermion model. It does not yet close the full dynamical gauge-theory gate, because that requires BV-BRST and the quantum master equation.

## 9. Remaining limits of this check

This note deliberately avoids dynamical gauge fields. Therefore it does not prove the full gauge-theory formalism. Still open:

1. BV-BRST phase space for dynamical gauge fields;
2. ghosts, antifields, and gauge fixing;
3. quantum master equation;
4. boundary gauge charges and edge modes;
5. gauge anomaly cancellation in a fully dynamical theory.

## 10. References

- S. L. Adler, *Axial-Vector Vertex in Spinor Electrodynamics*, Phys. Rev. 177, 2426 (1969), https://doi.org/10.1103/PhysRev.177.2426
- J. S. Bell and R. Jackiw, *A PCAC puzzle: \(\pi^0\to\gamma\gamma\) in the sigma model*, Nuovo Cim. A 60, 47 (1969), https://doi.org/10.1007/BF02823296
- K. Fujikawa, *Path-integral measure for gauge-invariant fermion theories*, Phys. Rev. Lett. 42, 1195 (1979), https://doi.org/10.1103/PhysRevLett.42.1195
- K. Fredenhagen and K. Rejzner, *Perturbative algebraic quantum field theory*, arXiv:1208.1428, https://arxiv.org/abs/1208.1428
