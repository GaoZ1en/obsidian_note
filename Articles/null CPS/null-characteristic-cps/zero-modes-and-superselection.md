# Zero Modes, Flux Sectors and Superselection

## 1. Direct Verdict

On \(\mathbb R^{1,1}\times S^2_R\), the \(\ell=0\) Maxwell sector has no local radiative oscillator. It consists of:

- a classically continuous electric flux \(Q_E\), constant on \(\mathbb R^{1,1}\);
- a magnetic Chern integer \(n\in\mathbb Z\), fixed as a bundle label;
- optional boundary/frame coordinates only if an extended endpoint phase space is deliberately chosen.

Neither \(Q_E\) nor \(n\) belongs in the \(\ell\geq1\) Fock tower.

## 2. Normalized \(\ell=0\) Harmonic

Let

$$
\mathcal A_S=4\pi R^2,
\qquad
Y_{00}=\mathcal A_S^{-1/2}.
$$

There is no \(\ell=0\) exact or coexact vector harmonic because \(dY_{00}=0\). The only potential coefficient is a two-dimensional gauge field

$$
A_a=a_a(t,z)Y_{00}.
$$

Its field strength is

$$
F_{tz}=e_0(t,z)Y_{00}.
$$

The two-dimensional Maxwell equations imply

$$
\partial_te_0=\partial_ze_0=0.
\tag{2.1}
$$

The electric flux through the sphere is

$$
Q_E:=\int_{S^2}F_{tz}\,dS
=\sqrt{\mathcal A_S}\,e_0.
\tag{2.2}
$$

Its energy density along \(z\) is

$$
\mathcal H_E^{(0)}=\frac{Q_E^2}{2\mathcal A_S}.
\tag{2.3}
$$

Thus a nonzero constant \(Q_E\) has infinite total energy on the noncompact global \(z\)-line. It is allowed as a fixed background/superselection sector or in a finite longitudinal regulator, but it is not a vector in the radiative finite-energy one-particle space.

## 3. Magnetic Chern Sector

For a fixed principal \(U(1)\) bundle,

$$
n=\frac1{2\pi}\int_{S^2}F\in\mathbb Z.
\tag{3.1}
$$

The harmonic magnetic curvature is

$$
F^{(0)}_B=\frac{2\pi n}{\mathcal A_S}\operatorname{vol}_{S^2}.
\tag{3.2}
$$

Equivalently, its normalized harmonic coefficient is

$$
b_0=\frac{2\pi n}{\sqrt{\mathcal A_S}}.
$$

Within one fixed \(n\),

$$
\delta n=0.
\tag{3.3}
$$

The Chern class is a discrete superselection label, not a continuous phase-space tangent or a creation operator. Summing over bundles is a different theory/prescription and is not performed in the benchmark.

## 4. Main Fixed-Flux Quantization

The main radiative Fock construction fixes

$$
(Q_E,n).
$$

Therefore

$$
\delta Q_E=0,
\qquad
\delta n=0,
$$

and the \(\ell=0\) tangent two-form vanishes. The quantum space in that sector is one superselection fiber,

$$
\mathcal H_{Q_E,n}=\mathcal H_{\mathrm{rad}}.
\tag{4.1}
$$

This is the clean policy for the first Fock theorem. It avoids double counting the pointwise \(\ell\geq1\) corner electric density, which already belongs to \(\Phi^E_{\ell m}(0,0)\).

## 5. Direct Integral Without a Frame Operator

If different classical electric sectors are admitted but no conjugate frame observable is added, the algebra has a central flux label and representations decompose as

$$
\mathcal H_n
=\int_{\mathbb R}^{\oplus}d\mu(Q_E)\,
\mathcal H_{Q_E,n}.
\tag{5.1}
$$

The measure \(d\mu\) is representation input. Equation (5.1) combines superselection sectors; it does not turn \(Q_E\) into an oscillator.

## 6. Optional Extended Frame--Flux Pair

If the two null sheets are assigned independent endpoint frames and diagonal gauge is reduced as in `02-corner-gauge-reduction.md`, the \(\ell=0\) projection of the extended pair is

$$
\Omega_0=\delta Q_E\wedge\delta\lambda_0
\tag{6.1}
$$

up to the normalization relating \(Q_E\) to the constant harmonic coefficient. This pair exists only when:

- electric flux is allowed to vary;
- the relative frame is retained rather than set to zero by one bulk trivialization;
- all outer endpoint terms are retained or fixed consistently.

There are two inequivalent quantum policies:

### Universal-cover frame

If \(\lambda_0\in\mathbb R\), use

$$
\mathcal H_0=L^2(\mathbb R,d\lambda_0),
\qquad
\widehat Q_E=-i\frac{\partial}{\partial\lambda_0}
\tag{6.2}
$$

in units where (6.1) has coefficient one. The spectrum is continuous.

### Compact \(U(1)\) frame

If large gauge transformations identify

$$
\lambda_0\sim\lambda_0+2\pi,
$$

use

$$
\mathcal H_0=L^2(U(1),d\lambda_0),
\qquad
\widehat Q_E=-i\frac{\partial}{\partial\lambda_0}.
\tag{6.3}
$$

The normalized flux spectrum is then integral, possibly shifted by a theta angle. This compactness/normalization is an additional large-gauge and charge-unit input; it is not derived by the local Lee--Wald calculation alone.

In either policy the full global space, when the extension is chosen, is

$$
\mathcal H_{\mathrm{ext},n}
=\mathcal H_0\otimes\mathcal H_{\mathrm{rad}}.
\tag{6.4}
$$

Equation (6.4) is a decomposition between a decoupled global zero mode and the radiative harmonic tower in this linear benchmark. It is not a claim of spatial or sheetwise Hilbert-space factorization.

## 7. Why Only the \(\ell=0\) Pair Is Separate

For \(\ell\geq1\),

$$
E_{0,\ell m}=-\sqrt{\lambda_\ell}\Phi^E_{\ell m}(0,0).
$$

The same stationary coefficients that determine the bulk electric mode determine this corner value. A separate pair \((E_{0,\ell m},\lambda_{\ell m})\) would enlarge the phase space beyond one smooth bulk connection and double count unless a genuinely extended boundary theory were explicitly intended.

The first paper therefore uses:

$$
\boxed{
\text{fixed }(Q_E,n)
+\text{ radiative Fock space for }\ell\geq1.}
$$

The optional (6.1) representation is reported separately and is not included in statements of radiative mode completeness.

## 8. Status

**Proved:** absence of local \(\ell=0\) Maxwell oscillators, constancy of electric flux, discreteness of magnetic Chern class, and decoupling from the radiative action.

**Conditional on endpoint/large-gauge policy:** whether \(\lambda_0\) is retained and whether its configuration space is \(\mathbb R\) or \(U(1)\).

**False:** treating magnetic Chern labels as tangent modes, or adding \(E_{0,\ell m}\) as independent oscillators for \(\ell\geq1\).
