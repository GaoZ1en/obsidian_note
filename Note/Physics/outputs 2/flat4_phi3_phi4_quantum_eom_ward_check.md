# 4d flat \(\phi^3/\phi^4\): quantum EOM, Schwinger-Dyson, and Ward checks

日期：2026-07-09

## 0. Direct verdict

The CPS-pAQFT formalism remains consistent after a stronger check, but it must be stated with renormalized composite fields.

The correct interacting field equation is not a naive equation for bare pointwise products. It is a renormalized operator identity:

\[
K R_V(\phi)
=
R_V\!\left(
\frac{g_3}{2}\phi^2+\frac{g_4}{3!}\phi^3
\right)
+\text{local counterterm insertions},
\]

where

\[
K=\Box-m^2
\]

in the sign convention used in the previous notes. If the Action Ward Identity and field-equation normalization are imposed, there is no anomaly for this scalar model; the remaining local terms are ordinary renormalization counterterms, not symmetry anomalies.

This check clarifies the role of CPS:

1. \(\Omega^{-1}=E\) fixes the causal commutator and retarded response kernel.
2. \(E_R\) is the propagator that appears in the classical \(\hbar^0\) Moller map.
3. \(H\) and \(\Delta_F\) add state/time-ordering data and produce loops.
4. Renormalized \(T\)-products define composite fields such as \(\phi^2,\phi^3,T^{\mu\nu}\).
5. Ward identities test whether those renormalized composites are compatible with the CPS-generated symmetries.

## 1. Setup and sign convention

Use the same model as in `flat4_phi3_phi4_paqft_check.md`:

\[
S=S_0+V,
\]

\[
S_0=\int d^4x
\left[
-\frac12\partial_\mu\phi\partial^\mu\phi
-\frac12m^2\phi^2
\right],
\]

\[
V=-\int d^4x\,\chi(x)
\left[
\frac{g_3}{3!}\phi^3+\frac{g_4}{4!}\phi^4
\right].
\]

In the interaction region \(\chi=1\), the classical EOM is

\[
K\phi
=\frac{g_3}{2}\phi^2+\frac{g_4}{3!}\phi^3,
\qquad
K:=\Box-m^2.
\]

The free CPS data give

\[
\Omega_0^{-1}=E=E_R-E_A,
\]

and hence

\[
[\Phi(f),\Phi(g)]=i\hbar E(f,g).
\]

## 2. Quantum EOM as a pAQFT identity

The interacting observable is

\[
R_V(F)
=\frac{\hbar}{i}
\left.
\frac{d}{d\lambda}
\left[
S(V)^{-1}_{\star}\star S(V+\lambda F)
\right]\right|_{\lambda=0}.
\]

The renormalized quantum field equation should be formulated as

\[
R_V\!\left(
\left\langle \frac{\delta S_0}{\delta\phi},f\right\rangle
+\left\langle \frac{\delta V}{\delta\phi},f\right\rangle
\right)=0
\]

modulo local counterterms and cutoff-breaking terms. With the above \(V\),

\[
\frac{\delta V}{\delta\phi}
=-\chi
\left[
\frac{g_3}{2}\phi^2+\frac{g_4}{3!}\phi^3
\right],
\]

so for \(\chi=1\) the formal local equation is

\[
K R_V(\phi)
=
R_V\!\left(
\frac{g_3}{2}\phi^2+\frac{g_4}{3!}\phi^3
\right)
\]

after choosing a renormalization prescription satisfying the Action Ward Identity. Without that prescription, the right-hand side can differ by local composite-field counterterms.

## 3. Classical limit check

At \(\hbar^0\),

\[
R_V(\phi(x))=\phi_{\rm ret}(x)+O(\hbar),
\]

and

\[
K\phi_{\rm ret}
=\frac{g_3}{2}\phi_{\rm ret}^2+\frac{g_4}{3!}\phi_{\rm ret}^3.
\]

Expanding to first order:

\[
\phi_{\rm ret}(x)
=\phi_0(x)
+\int d^4z\,E_R(x,z)\chi(z)
\left[
\frac{g_3}{2}\phi_0(z)^2
+\frac{g_4}{3!}\phi_0(z)^3
\right]
+O(g^2).
\]

Applying \(K_x\) gives

\[
K_x\phi_{\rm ret}(x)
=
\chi(x)
\left[
\frac{g_3}{2}\phi_0(x)^2
+\frac{g_4}{3!}\phi_0(x)^3
\right]
+O(g^2),
\]

because

\[
K_xE_R(x,z)=\delta(x-z).
\]

This confirms that the classical tree layer is exactly the \(\hbar^0\) part of the quantum EOM.

## 4. Two-point Schwinger-Dyson check

Let

\[
G_2(x,y)=\omega\!\left(T\,R_V(\phi(x))R_V(\phi(y))\right)
\]

in a chosen state \(\omega\). Formally, the Schwinger-Dyson equation is

\[
K_xG_2(x,y)
=i\hbar\delta^{(4)}(x-y)
+\omega\!\left(
T\,R_V\!\left[
\frac{g_3}{2}\phi(x)^2
+\frac{g_4}{3!}\phi(x)^3
\right]
R_V(\phi(y))
\right)
+\text{ct}.
\]

The first term is fixed by the free CPS commutator and the normalization of the Feynman propagator:

\[
K_x\Delta_F(x-y)=i\delta^{(4)}(x-y)
\]

in the convention of the previous scattering check. The interaction terms generate the usual self-energy expansion.

## 5. One-loop content of the Schwinger-Dyson equation

### 5.1 \(\phi^4\) tadpole in the two-point function

At first order in \(g_4\), the two-point function receives

\[
G_2^{(1),\phi^4}(x,y)
\sim
(-ig_4)\frac12
\int d^4z\,
\Delta_F(x-z)\Delta_F(z-y)\Delta_F(z,z).
\]

Applying \(K_x\) gives

\[
K_xG_2^{(1),\phi^4}(x,y)
\sim
g_4\,\frac{\hbar}{2}
\Delta_F(x,x)\Delta_F(x-y)
\]

up to the global \(i\)-convention of \(\Delta_F\). This is exactly the contraction inside

\[
R_V\!\left(\frac{g_4}{3!}\phi(x)^3\right)
\]

when one of the three fields contracts with the external \(\phi(y)\) and the remaining two contract at \(x\).

Thus the tadpole is not an extra classical source. It is a renormalization of the composite field \(\phi^3\), equivalently a mass counterterm contribution.

### 5.2 \(\phi^3\) bubble

At second order in \(g_3\), the two-point function contains

\[
G_2^{(2),\phi^3}(x,y)
\sim
\frac{(-ig_3)^2}{2}
\int d^4z\,d^4w\,
\Delta_F(x-z)\Delta_F(y-w)\Delta_F(z,w)^2.
\]

This gives the standard one-loop bubble self-energy

\[
\Sigma_{\phi^3}^{(1)}(p)
\sim
\frac{g_3^2}{2}
\int\frac{d^4\ell}{(2\pi)^4}
\frac{i}{\ell^2-m^2+i\epsilon}
\frac{i}{(p-\ell)^2-m^2+i\epsilon}
\]

in mostly-minus momentum convention. Again, this term belongs to renormalized time-ordered products and counterterms, not to the classical rooted-tree map.

## 6. Counterterm layer

To keep the quantum EOM finite, include local counterterms:

\[
V_{\rm ct}
=-\int d^4x
\left[
\frac{\delta Z}{2}\partial_\mu\phi\partial^\mu\phi
+\frac{\delta m^2}{2}\phi^2
+\frac{\delta g_3}{3!}\phi^3
+\frac{\delta g_4}{4!}\phi^4
+\delta\Lambda
\right].
\]

Then the renormalized EOM reads schematically

\[
(K+\delta Z\,\Box-\delta m^2)R_V(\phi)
=
R_V\!\left[
\frac{g_3+\delta g_3}{2}\phi^2
+\frac{g_4+\delta g_4}{3!}\phi^3
\right]
\]

with all composite products understood as renormalized Wick/local fields.

This is the first place where “complete formalism” must go beyond the classical CPS tree note: the right side is not a bare product, and the left side may contain wavefunction/mass counterterms.

## 7. Translation Ward identity with switching

Classically, for constant translation vector \(\xi^\mu\),

\[
\delta_\xi\phi=\xi^\mu\partial_\mu\phi
\]

and CPS gives the charge variation

\[
\delta P_\xi=\iota_{X_\xi}\Omega.
\]

With compact support switching,

\[
V_\chi=-\int d^4x\,\chi(x)\mathcal L_{\rm int}(x),
\]

translation symmetry is explicitly broken:

\[
\delta_\xi V_\chi
=-\int d^4x\,(\xi^\mu\partial_\mu\chi)\mathcal L_{\rm int}
\]

up to total derivatives. Therefore the quantum Ward identity is not

\[
\partial_\mu T^{\mu\nu}_{V,\chi}=0
\]

but rather

\[
\partial_\mu T^{\mu\nu}_{V,\chi}
=-(\partial^\nu\chi)\mathcal L_{\rm int,V}
+\text{contact terms}
+\text{counterterms}.
\]

In the adiabatic limit \(\chi\to1\), if it exists,

\[
\partial_\mu T^{\mu\nu}_{V}=0
\]

up to anomalies. For scalar \(\phi^3/\phi^4\) in flat spacetime, there is no translation anomaly; any remaining local terms are removable by stress-tensor counterterms/improvements.

## 8. What this check adds to the formalism

This check adds a stricter requirement:

> A usable CPS-pAQFT formalism must formulate interacting equations and charges in terms of renormalized local fields, not bare products.

The correct ladder is now:

\[
\Omega
\Rightarrow E
\Rightarrow \star_H
\Rightarrow T_n^{\rm ren}
\Rightarrow R_V(F)
\Rightarrow
\text{renormalized EOM and Ward identities}.
\]

The old ladder stopped too early if it ended at \(R_V(F)\). For actual quantum perturbation theory, we must also specify:

1. which composite fields are renormalized;
2. which counterterms are allowed;
3. which Ward identities constrain the finite renormalization freedom;
4. whether any anomaly obstructs the Ward identity.

## 9. Consequence for AdS/CPS

For AdS or finite-boundary CPS, the same logic becomes sharper:

1. Boundary conditions define \(\Omega\) and \(E\).
2. Admissible Hadamard functions must respect boundary conditions.
3. \(T_n^{\rm ren}\) must be extendable with boundary-compatible counterterms.
4. Boundary stress tensor and bulk stress tensor require simultaneous renormalization.
5. Ward identities may acquire boundary terms, flux terms, or anomalies.

Thus, for AdS, the next nontrivial check should not only compute a tree-level resonant Hamiltonian. It should also ask whether the chosen boundary condition admits compatible \(T_n^{\rm ren}\) and whether the stress tensor Ward identity closes after boundary counterterms.

## 10. Status after this check

The 4d scalar program is now consistent at three levels:

1. **Classical tree level:** \(R_V(\phi)|_{\hbar^0}\) matches the retarded tree solution.
2. **Scattering level:** \(S(V)\) gives the standard \(\phi^3/\phi^4\) tree amplitude.
3. **Quantum EOM level:** loops and self-energies arise from \(T_n^{\rm ren}\), and the EOM is a renormalized Schwinger-Dyson identity.

Remaining gaps:

1. formulate BV-BRST version for gauge/gravity;
2. give a fully renormalized stress tensor construction;
3. test a genuine anomaly example;
4. build boundary-compatible AdS \(T_n\) examples.

## 11. References

- K. Fredenhagen and K. Rejzner, *Perturbative algebraic quantum field theory*, arXiv:1208.1428, https://arxiv.org/abs/1208.1428
- M. Duetsch and K. Fredenhagen, *Causal perturbation theory in terms of retarded products, and a proof of the Action Ward Identity*, Rev. Math. Phys. 16 (2004) 1291-1348, https://doi.org/10.1142/S0129055X04002266
- R. Brunetti, M. Duetsch and K. Fredenhagen, *Perturbative algebraic quantum field theory and the renormalization groups*, Adv. Theor. Math. Phys. 13 (2009) 1541-1599, https://projecteuclid.org/journals/advances-in-theoretical-and-mathematical-physics/volume-13/issue-5/Perturbative-algebraic-quantum-field-theory-and-the-renormalization-groups/atmp/1282054101
