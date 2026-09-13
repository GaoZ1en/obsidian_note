# 4d flat \(\phi^3/\phi^4\): stress tensor, CPS charge, and translation Ward check

日期：2026-07-09

## 0. Direct verdict

The CPS-pAQFT program passes a more charge-sensitive flat-space check:

1. The classical CPS relation
   \[
   \delta P_\xi=\iota_{X_\xi}\Omega
   \]
   becomes the quantum commutator generator
   \[
   \delta_\xi A=\frac{i}{\hbar}[P_\xi,A]_\star
   \]
   in the free algebra.
2. In the interacting theory, the charge/current must be renormalized:
   \[
   T_{V}^{\mu\nu}=R_V(T_0^{\mu\nu}+T_{\rm int}^{\mu\nu})+T_{\rm ct}^{\mu\nu}.
   \]
3. With a switching function \(\chi\), translation Ward identity includes explicit breaking:
   \[
   \partial_\mu T_{V,\chi}^{\mu\nu}
   =-(\partial^\nu\chi)\mathcal L_{\rm int,V}
   +\text{contact terms}
   +\text{counterterms}.
   \]
4. In the adiabatic flat-space scalar model, there is no translation anomaly. The finite renormalization freedom is fixed by imposing conservation, symmetry of \(T^{\mu\nu}\), and chosen normalization conditions.

This check makes the CPS role sharper: \(\Omega\) is not decorative. It is the object whose inverse gives \(E\), and \(E\) is exactly what makes the charge commutator generate translations.

## 1. Classical free CPS charge

Take the free scalar action

\[
S_0=\int d^4x\,
\left[
-\frac12\partial_\mu\phi\partial^\mu\phi
-\frac12m^2\phi^2
\right]
\]

with signature \((-+++)\). The free symplectic form is

\[
\Omega_0
=\int_{\Sigma_t}d^3\mathbf x\,
\delta\dot\phi\wedge\delta\phi.
\]

For a constant translation vector \(\xi^\mu\),

\[
X_\xi\phi=\mathcal L_\xi\phi=\xi^\mu\partial_\mu\phi.
\]

The stress tensor can be taken as

\[
T_0^{\mu\nu}
=\partial^\mu\phi\,\partial^\nu\phi
+\eta^{\mu\nu}\mathcal L_0,
\]

where

\[
\mathcal L_0
=-\frac12\partial_\rho\phi\partial^\rho\phi
-\frac12m^2\phi^2.
\]

The associated charge is

\[
P_\xi
=\int_{\Sigma_t}d\Sigma_\mu\,T_0^{\mu\nu}\xi_\nu.
\]

The CPS identity is

\[
\delta P_\xi
=\iota_{X_\xi}\Omega_0.
\]

Equivalently, for any functional \(F\),

\[
\{P_\xi,F\}_{\rm P}=X_\xi F.
\]

This is the classical bridge from CPS to symmetry generators.

## 2. Free quantum algebra check

CPS gives the causal propagator

\[
E=\Omega_0^{-1}
\]

and the free commutator

\[
[\Phi(f),\Phi(g)]_{\star}
=i\hbar E(f,g).
\]

Let the renormalized free charge be the normal-ordered operator

\[
P_\xi^{(0)}
=\int_{\Sigma_t}d\Sigma_\mu\, :T_0^{\mu\nu}:\,\xi_\nu.
\]

Then

\[
\frac{i}{\hbar}
[P_\xi^{(0)},\phi(x)]_\star
=\xi^\mu\partial_\mu\phi(x).
\]

For smeared fields,

\[
\Phi(f)=\int d^4x\,f(x)\phi(x),
\]

this becomes

\[
\frac{i}{\hbar}[P_\xi^{(0)},\Phi(f)]_\star
=-\Phi(\partial_\mu(\xi^\mu f)).
\]

For constant \(\xi\),

\[
\frac{i}{\hbar}[P_\xi^{(0)},\Phi(f)]_\star
=-\Phi(\xi^\mu\partial_\mu f).
\]

This is exactly the active transformation of the field under spacetime translations after smearing by a test function.

Thus the free charge test verifies:

\[
\delta P_\xi=\iota_{X_\xi}\Omega
\quad\Longrightarrow\quad
\delta_\xi A=\frac{i}{\hbar}[P_\xi,A]_\star.
\]

## 3. Interacting stress tensor

For

\[
V_\chi=-\int d^4x\,\chi(x)
\left[
\frac{g_3}{3!}\phi^3+\frac{g_4}{4!}\phi^4
\right],
\]

the classical interacting stress tensor is

\[
T_{\chi}^{\mu\nu}
=\partial^\mu\phi\,\partial^\nu\phi
+\eta^{\mu\nu}
\left[
\mathcal L_0-\chi\mathcal L_{\rm int}
\right],
\]

where

\[
\mathcal L_{\rm int}
=\frac{g_3}{3!}\phi^3+\frac{g_4}{4!}\phi^4.
\]

Quantum mechanically, this must be replaced by a renormalized local field:

\[
T_{V,\chi}^{\mu\nu}
=R_V(T_{\chi}^{\mu\nu})+T_{\rm ct}^{\mu\nu}.
\]

The counterterm/improvement sector can include local terms such as

\[
\eta^{\mu\nu}\delta\Lambda,\qquad
\delta Z\,\partial^\mu\phi\partial^\nu\phi,\qquad
\eta^{\mu\nu}\delta m^2\phi^2,
\]

and, if coupling to a background metric is used, curvature/improvement terms before taking the flat limit. In flat scalar theory these are ordinary renormalization freedoms, not anomalies.

## 4. Translation Ward identity with switching

Since

\[
\delta_\xi\chi=\xi^\mu\partial_\mu\chi,
\]

the switched interaction is not translation invariant:

\[
\delta_\xi V_\chi
=-\int d^4x\,(\xi^\mu\partial_\mu\chi)\mathcal L_{\rm int}
\]

up to total derivatives. Therefore the local Ward identity is

\[
\partial_\mu T_{V,\chi}^{\mu\nu}
=-(\partial^\nu\chi)\mathcal L_{\rm int,V}
+\text{contact terms}
+\text{counterterms}.
\]

For insertions \(R_V(F_i)\), the corresponding integrated identity has the schematic form

\[
\partial_\mu^x
\left\langle
T\,T_{V,\chi}^{\mu\nu}(x)
\prod_i R_V(F_i)
\right\rangle
=
-\left\langle
T\,(\partial^\nu\chi)\mathcal L_{\rm int,V}(x)
\prod_i R_V(F_i)
\right\rangle
\]

\[
\quad
-i\hbar
\sum_i\delta(x-x_i)
\partial_{x_i}^{\nu}
\left\langle
T\prod_i R_V(F_i)
\right\rangle
+\text{ct}.
\]

The contact terms are not optional; they are exactly how the stress tensor insertion generates translations of other insertions.

In the adiabatic limit \(\chi\to1\), if the limit exists, the explicit breaking term vanishes:

\[
\partial_\mu T_{V}^{\mu\nu}=0
\]

up to contact terms and possible anomalies. For the scalar \(\phi^3/\phi^4\) model in flat spacetime:

\[
\mathcal A_{\rm translation}^{\nu}=0.
\]

## 5. Charge commutator in the interacting theory

Define the renormalized interacting charge on a Cauchy surface:

\[
P_{\xi,V}^{\rm ren}
=\int_{\Sigma_t}d\Sigma_\mu\,
T_{V}^{\mu\nu}\xi_\nu.
\]

If translation symmetry is restored after the adiabatic limit, then

\[
\frac{i}{\hbar}
[P_{\xi,V}^{\rm ren},R_V(F)]_\star
=R_V(\delta_\xi F)
\]

up to contact terms determined by the support of \(F\). More invariantly:

\[
\delta_\xi R_V(F)
=
\frac{i}{\hbar}
[P_{\xi,V}^{\rm ren},R_V(F)]_\star
\mathcal A_\xi(F),
\]

and for flat scalar translation symmetry,

\[
\mathcal A_\xi(F)=0.
\]

This is the concrete version of the generic formula in the main formalism note.

## 6. Why this is a CPS check, not just ordinary QFT

The same Ward identity can be written in ordinary perturbation theory, but CPS determines the canonical input:

1. \(\Omega\) identifies the correct phase space and boundary conditions.
2. \(\Omega^{-1}=E\) fixes the commutator part of the free quantum algebra.
3. The charge variation \(\delta P_\xi=\iota_{X_\xi}\Omega\) fixes the normalization and sign of \(P_\xi\).
4. The quantum commutator test
   \[
   \frac{i}{\hbar}[P_\xi,\phi]=\mathcal L_\xi\phi
   \]
   is the quantized form of the CPS Hamiltonian relation.
5. Boundary flux or presymplectic degeneracy would change the charge before any Feynman diagram is drawn.

Thus CPS is not adding a new Feynman vertex; it fixes the algebraic and charge-theoretic substrate on which perturbation theory is built.

## 7. What this check adds to the formalism

The main formalism should include the following requirement:

> For each continuous symmetry, do not merely state a classical current. Construct the renormalized interacting current, check its Ward identity, and verify that the integrated charge implements the symmetry through the \(\star\)-commutator.

For translations in flat \(\phi^3/\phi^4\), this requirement is satisfied after ordinary stress-tensor renormalization. For gauge theory, gravity, or boundaries, the same step is where anomalies, central extensions, or flux terms can appear.

## 8. Status after this check

The flat scalar model now checks four layers:

1. \(R_V|_{\hbar^0}\) gives the classical retarded tree solution.
2. \(S(V)\) gives the standard tree-level scattering amplitude.
3. \(T_n^{\rm ren}\) gives loop corrections and Schwinger-Dyson equations.
4. \(T_{V}^{\mu\nu}\) and \(P_{\xi,V}^{\rm ren}\) implement translations with no anomaly.

Remaining hard cases:

1. internal continuous symmetries with composite currents;
2. gauge symmetries requiring BV-BRST;
3. gravitational/diffeomorphism charges with boundary/corner terms;
4. AdS boundary stress tensor and boundary-compatible time-ordered products;
5. genuine anomaly examples.

## 9. References

- K. Fredenhagen and K. Rejzner, *Perturbative algebraic quantum field theory*, arXiv:1208.1428, https://arxiv.org/abs/1208.1428
- M. Duetsch and K. Fredenhagen, *Causal perturbation theory in terms of retarded products, and a proof of the Action Ward Identity*, Rev. Math. Phys. 16 (2004) 1291-1348, https://doi.org/10.1142/S0129055X04002266
- R. Brunetti, M. Duetsch and K. Fredenhagen, *Perturbative algebraic quantum field theory and the renormalization groups*, Adv. Theor. Math. Phys. 13 (2009) 1541-1599, https://projecteuclid.org/journals/advances-in-theoretical-and-mathematical-physics/volume-13/issue-5/Perturbative-algebraic-quantum-field-theory-and-the-renormalization-groups/atmp/1282054101
