# 4d flat \(\phi^3/\phi^4\): stress tensor, CPS charge, and translation Ward check

日期：2026-07-09

## 0. Direct verdict

This note verifies the free CPS translation generator and instantiates the switched local Ward and balance-law structure. It does not by itself construct a global interacting charge. Throughout the note $\hbar=1$.

1. The classical CPS relation

$$\begin{align}
\delta P_\xi=\iota_{X_\xi}\Omega
\end{align}$$

   becomes the quantum commutator generator

$$\begin{align}
\delta_\xi A=i[P_\xi,A]_\star
\end{align}$$

   in the free algebra.
2. In the interacting theory, the charge/current must be renormalized:

$$\begin{align}
T_{V,\chi}^{\mu\nu}=R_{V_\chi}(T_\chi^{\mu\nu})+T_{\rm ct}^{\mu\nu}.
\end{align}$$

3. With a switching function \(\chi\), translation Ward identity includes explicit breaking:

$$\begin{align}
\partial_\mu T_{V,\chi}^{\mu\nu} =-(\partial^\nu\chi)\mathcal L_{\rm int,V}.
\end{align}$$

   This is an on-shell local identity after counterterms have been absorbed into the renormalized fields. Contact terms appear only after insertion into time-ordered products.
4. There is no local translation-anomaly obstruction in the flat scalar model. A global interacting generator additionally requires a controlled adiabatic/infrared limit, a finite or smeared surface integral, an operator domain, and vanishing spatial flux.

This check makes the CPS role sharper: \(\Omega\) is not decorative. It is the object whose inverse gives \(E\), and \(E\) is exactly what makes the charge commutator generate translations.

## 1. Classical free CPS charge

Take the free scalar action

$$\begin{align}
S_0=\int d^4x\, \left[ -\frac12\partial_\mu\phi\partial^\mu\phi -\frac12m^2\phi^2 \right]
\end{align}$$

with signature \((-+++)\). The free symplectic form is

$$\begin{align}
\Omega_0 =\int_{\Sigma_t}d^3\mathbf x\, \delta\dot\phi\wedge\delta\phi.
\end{align}$$

For a constant translation vector \(\xi^\mu\),

$$\begin{align}
X_\xi\phi=\mathcal L_\xi\phi=\xi^\mu\partial_\mu\phi.
\end{align}$$

The stress tensor can be taken as

$$\begin{align}
T_0^{\mu\nu} =\partial^\mu\phi\,\partial^\nu\phi +\eta^{\mu\nu}\mathcal L_0,
\end{align}$$

where

$$\begin{align}
\mathcal L_0 =-\frac12\partial_\rho\phi\partial^\rho\phi -\frac12m^2\phi^2.
\end{align}$$

The associated charge is

$$\begin{align}
P_\xi =\int_{\Sigma_t}d\Sigma_\mu\,T_0^{\mu\nu}\xi_\nu.
\end{align}$$

The CPS identity is

$$\begin{align}
\delta P_\xi =\iota_{X_\xi}\Omega_0.
\end{align}$$

Equivalently, for any functional \(F\),

$$\begin{align}
\{P_\xi,F\}_{\rm P}=X_\xi F.
\end{align}$$

This is the classical bridge from CPS to symmetry generators.

## 2. Free quantum algebra check

CPS gives the causal propagator

$$\begin{align}
E=\Omega_0^{-1}
\end{align}$$

and the free commutator

$$\begin{align}
[\Phi(f),\Phi(g)]_{\star} =iE(f,g).
\end{align}$$

Let the renormalized free charge be the normal-ordered operator

$$\begin{align}
P_\xi^{(0)} =\int_{\Sigma_t}d\Sigma_\mu\, :T_0^{\mu\nu}:\,\xi_\nu.
\end{align}$$

Then

$$\begin{align}
i
[P_\xi^{(0)},\phi(x)]_\star =\xi^\mu\partial_\mu\phi(x).
\end{align}$$

For smeared fields,

$$\begin{align}
\Phi(f)=\int d^4x\,f(x)\phi(x),
\end{align}$$

this becomes

$$\begin{align}
i[P_\xi^{(0)},\Phi(f)]_\star =-\Phi(\partial_\mu(\xi^\mu f)).
\end{align}$$

For constant \(\xi\),

$$\begin{align}
i[P_\xi^{(0)},\Phi(f)]_\star =-\Phi(\xi^\mu\partial_\mu f).
\end{align}$$

This is exactly the active transformation of the field under spacetime translations after smearing by a test function.

Thus the free charge test verifies:

$$\begin{align}
\delta P_\xi=\iota_{X_\xi}\Omega \quad\Longrightarrow\quad \delta_\xi A=i[P_\xi,A]_\star.
\end{align}$$

## 3. Interacting stress tensor

For

$$\begin{align}
V_\chi=-\int d^4x\,\chi(x) \left[ \frac{g_3}{3!}\phi^3+\frac{g_4}{4!}\phi^4 \right],
\end{align}$$

the classical interacting stress tensor is

$$\begin{align}
T_{\chi}^{\mu\nu} =\partial^\mu\phi\,\partial^\nu\phi +\eta^{\mu\nu} \left[ \mathcal L_0-\chi\mathcal L_{\rm int} \right],
\end{align}$$

where

$$\begin{align}
\mathcal L_{\rm int} =\frac{g_3}{3!}\phi^3+\frac{g_4}{4!}\phi^4.
\end{align}$$

Quantum mechanically, this must be replaced by a renormalized local field:

$$\begin{align}
T_{V,\chi}^{\mu\nu} =R_{V_\chi}(T_{\chi}^{\mu\nu})+T_{\rm ct}^{\mu\nu}.
\end{align}$$

The counterterm/improvement sector can include local terms such as

$$\begin{align}
\eta^{\mu\nu}\delta\Lambda,\qquad \delta Z\,\partial^\mu\phi\partial^\nu\phi,\qquad \eta^{\mu\nu}\delta m^2\phi^2,
\end{align}$$

and, if coupling to a background metric is used, curvature/improvement terms before taking the flat limit. In flat scalar theory these are ordinary renormalization freedoms, not anomalies.

## 4. Translation Ward identity with switching

Since

$$\begin{align}
\delta_\xi\chi=\xi^\mu\partial_\mu\chi,
\end{align}$$

the switched interaction is not translation invariant:

$$\begin{align}
\delta_\xi V_\chi =-\int d^4x\,(\xi^\mu\partial_\mu\chi)\mathcal L_{\rm int}
\end{align}$$

up to total derivatives. After a Ward-preserving renormalization has been chosen, the on-shell local identity is

$$\begin{align}
\partial_\mu T_{V,\chi}^{\mu\nu} =-(\partial^\nu\chi)\mathcal L_{\rm int,V}.
\end{align}$$

For insertions $R_V(F_i)$, the corresponding time-ordered local Ward identity has the schematic form

$$\begin{align}
\partial_\mu^x \left\langle
T\,T_{V,\chi}^{\mu\nu}(x)
\prod_i R_V(F_i) \right\rangle = -\left\langle T\,(\partial^\nu\chi)\mathcal L_{\rm int,V}(x) \prod_i R_V(F_i) \right\rangle
\end{align}$$

$$\begin{align}
\quad -i
\sum_i\delta(x-x_i)
\partial_{x_i}^{\nu} \left\langle
T\prod_i R_V(F_i) \right\rangle .
\end{align}$$

The contact terms are not optional; they are exactly how the stress tensor insertion generates translations of other insertions.

For a spacetime region $\mathcal R$ bounded by Cauchy surfaces $\Sigma_1$, $\Sigma_2$, and a spatial or timelike boundary $\mathcal T$, the actual integrated statement without operator insertions is

$$\begin{align}
P_V^\nu[\Sigma_2]-P_V^\nu[\Sigma_1]
+\int_{\mathcal T}d\Sigma_\mu\,T_{V,\chi}^{\mu\nu}
=-\int_{\mathcal R}d^4x\,(\partial^\nu\chi)\mathcal L_{\rm int,V},
\qquad
P_V^\nu[\Sigma]=\int_\Sigma d\Sigma_\mu\,T_{V,\chi}^{\mu\nu}.
\end{align}$$

With time-ordered insertions, integrating the contact terms adds the translations of the insertions inside $\mathcal R$.

In the adiabatic limit \(\chi\to1\), if the limit exists, the explicit breaking term vanishes:

$$\begin{align}
\partial_\mu T_{V}^{\mu\nu}=0
\end{align}$$

as an on-shell local identity. For the scalar $\phi^3/\phi^4$ model in flat spacetime, the Ward normalization can be chosen with

$$\begin{align}
\mathcal A_{\rm translation}^{\nu}=0.
\end{align}$$

## 5. Charge commutator in the interacting theory

Assume that the $\chi\to1$ adiabatic limit exists, the surface integral is finite or has a controlled compactly smeared limit, its operator domain is specified, the infrared behavior is controlled, and the flux through spatial infinity vanishes. Only under these conditions define the renormalized interacting charge on a Cauchy surface:

$$\begin{align}
P_{\xi,V}^{\rm ren} =\int_{\Sigma_t}d\Sigma_\mu\, T_{V}^{\mu\nu}\xi_\nu.
\end{align}$$

Under the same conditions, translation symmetry gives

$$\begin{align}
i
[P_{\xi,V}^{\rm ren},R_V(F)]_\star =R_V(\delta_\xi F)
\end{align}$$

for local observables in the charge domain, with the usual support/contact qualification. Equivalently, the conditional generator statement is

$$\begin{align}
\delta_\xi R_V(F)-i[P_{\xi,V}^{\rm ren},R_V(F)]_\star=\mathcal A_\xi(F),
\end{align}$$

and for flat scalar translation symmetry,

$$\begin{align}
\mathcal A_\xi(F)=0.
\end{align}$$

If any existence, domain, infrared, or flux condition fails, this equation has not defined a global generator; one must use the compactly smeared local current and the balance law instead.

## 6. Why this is a CPS check, not just ordinary QFT

The same Ward identity can be written in ordinary perturbation theory, but CPS determines the canonical input:

1. \(\Omega\) identifies the correct phase space and boundary conditions.
2. \(\Omega^{-1}=E\) fixes the commutator part of the free quantum algebra.
3. The charge variation \(\delta P_\xi=\iota_{X_\xi}\Omega\) fixes the normalization and sign of \(P_\xi\).
4. The quantum commutator test

$$\begin{align}
i[P_\xi,\phi]=\mathcal L_\xi\phi
\end{align}$$

   is the quantized form of the CPS Hamiltonian relation.
5. Boundary flux or presymplectic degeneracy would change the charge before any Feynman diagram is drawn.

Thus CPS is not adding a new Feynman vertex; it fixes the algebraic and charge-theoretic substrate on which perturbation theory is built.

## 7. What this check adds to the formalism

The main formalism should include the following requirement:

> For each continuous symmetry, construct the renormalized local current and check its local Ward identity and balance law. Claim an integrated generator only after proving charge integrability, finiteness or smearing, operator-domain control, the required adiabatic/infrared limit, and vanishing boundary flux.

For translations in flat $\phi^3/\phi^4$, this note verifies the free generator and records the switched local Ward/balance structure. The interacting global charge remains conditional on the assumptions in Section 5.

## 8. Status after this check

The flat scalar model now checks four layers:

1. The formal tree sector of $R_V$ gives the classical retarded solution.
2. \(S(V)\) gives the standard tree-level scattering amplitude.
3. \(T_n^{\rm ren}\) gives loop corrections and Schwinger-Dyson equations.
4. $T_{V,\chi}^{\mu\nu}$ has the expected switched local Ward and balance structure with no local translation anomaly; $P_{\xi,V}^{\rm ren}$ implements translations only under the stated global-existence conditions.

Remaining in-scope checks:

1. internal continuous symmetries with composite currents;
2. AdS scalar boundary stress tensors and boundary-compatible renormalized products;
3. explicit interacting charge existence in a model with controlled infrared and flux behavior.

Gauge theory, BV-BRST, and gravity are outside the present scope.

## 9. Verification status

Verified:

1. The free generator signs follow directly from the stated CPS/CCR convention.
2. Mathematica checked that the divergence of the displayed switched stress tensor reduces on shell to

$$\begin{align}
\partial_\mu T_{V,\chi}^{\mu\nu}=-(\partial^\nu\chi)\mathcal L_{\rm int,V};
\end{align}$$

the algebraic residual vanishes after substituting the switched scalar EOM.
3. The balance law is the spacetime integral of this local identity with the orientations fixed by the displayed equation.

Assumptions:

1. A Ward-preserving stress-tensor renormalization has been chosen.
2. The global generator formula additionally assumes the adiabatic, infrared, finiteness/domain, and flux conditions listed in Section 5.

Not verified:

1. An explicit construction of all finite stress-tensor counterterms was not performed.
2. Existence of the interacting global momentum operator was not proved.

## 10. References

- K. Fredenhagen and K. Rejzner, *Perturbative algebraic quantum field theory*, arXiv:1208.1428, https://arxiv.org/abs/1208.1428
- M. Duetsch and K. Fredenhagen, *Causal perturbation theory in terms of retarded products, and a proof of the Action Ward Identity*, Rev. Math. Phys. 16 (2004) 1291-1348, https://doi.org/10.1142/S0129055X04002266
- R. Brunetti, M. Duetsch and K. Fredenhagen, *Perturbative algebraic quantum field theory and the renormalization groups*, Adv. Theor. Math. Phys. 13 (2009) 1541-1599, https://projecteuclid.org/journals/advances-in-theoretical-and-mathematical-physics/volume-13/issue-5/Perturbative-algebraic-quantum-field-theory-and-the-renormalization-groups/atmp/1282054101
