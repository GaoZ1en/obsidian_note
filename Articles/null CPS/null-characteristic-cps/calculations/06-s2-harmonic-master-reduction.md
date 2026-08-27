# (S^2) Harmonic and Master Reduction from the Maxwell Action

## 1. Direct Verdict and Benchmark Background

The radiative part of Maxwell theory on

$$
M=\mathbb R^{1,1}_{t,z}\times S^2_R
$$

reduces exactly, mode by mode and from the unfixed Maxwell action, to two real massive scalar master fields for every \((\ell,m)\) with \(\ell\geq1\). Their common mass is

$$
\mu_\ell^2=\lambda_\ell=\frac{\ell(\ell+1)}{R^2}.
$$

The metric and null coordinates are

$$
ds^2=-dt^2+dz^2+R^2(d\vartheta^2+\sin^2\vartheta\,d\varphi^2)
=-2\,du\,dv+q_{AB}dx^A dx^B,
$$

$$
u=\frac{t-z}{\sqrt2},\qquad v=\frac{t+z}{\sqrt2},\qquad
t=\frac{u+v}{\sqrt2},\qquad z=\frac{v-u}{\sqrt2}.
$$

This is a stationary ultrastatic product background. It is **not** \(3+1\)-dimensional Minkowski spacetime: the transverse sphere has intrinsic curvature \(R[S^2_R]=2/R^2\), and the four-dimensional product Ricci tensor is nonzero in the sphere directions. The metric is treated as a fixed background; no Einstein equation is imposed.

The round sphere is chosen because

$$
H^1(S^2)=0,
$$

so every smooth one-form splits uniquely into exact and coexact parts, with no harmonic one-form sector. This gives a complete electric/magnetic vector-harmonic basis and cleanly separates the propagating \(\ell\geq1\) tower from the \(\ell=0\) electric-flux and magnetic-Chern sectors.

Throughout this benchmark one \(U(1)\) bundle sector is fixed:

$$
n=\frac1{2\pi}\int_{S^2}F\in\mathbb Z.
$$

The discrete integer \(n\) is not a tangent vector and is never included in the oscillator expansion.

## 2. Scalar and Vector Harmonics

Choose complex scalar harmonics normalized with the physical sphere measure,

$$
\int_{S^2_R}dS\,Y_{\ell m}^*Y_{\ell'm'}
=\delta_{\ell\ell'}\delta_{mm'},
$$

and

$$
-D^2Y_{\ell m}=\lambda_\ell Y_{\ell m},
\qquad
\lambda_\ell=\frac{\ell(\ell+1)}{R^2}.
$$

For \(\ell\geq1\), define normalized exact and coexact one-form harmonics

$$
\mathbb E_A^{\ell m}:=\frac{D_A Y_{\ell m}}{\sqrt{\lambda_\ell}},
\qquad
\mathbb B_A^{\ell m}:=\frac{(\star_S dY_{\ell m})_A}{\sqrt{\lambda_\ell}}.
$$

With \(\epsilon_{AB}\) fixed by the orientation used in `01-maxwell-double-null.md`,

$$
D^A\mathbb E_A^{\ell m}=-\sqrt{\lambda_\ell}\,Y_{\ell m},
\qquad
D^A\mathbb B_A^{\ell m}=0,
$$

$$
2D_{[A}\mathbb E_{B]}^{\ell m}=0,
\qquad
2D_{[A}\mathbb B_{B]}^{\ell m}
=-\sqrt{\lambda_\ell}\,Y_{\ell m}\epsilon_{AB}.
$$

They obey

$$
\int dS\,\mathbb E_A^{\ell m*}\mathbb E^{A,\ell'm'}
=\int dS\,\mathbb B_A^{\ell m*}\mathbb B^{A,\ell'm'}
=\delta_{\ell\ell'}\delta_{mm'},
$$

and the exact/coexact cross inner product vanishes. These identities and representative \((\ell,m)\) modes are checked in `scripts/s2_master_quantization_checks.wl`.

For the action derivation it is harmless to replace the complex basis by an orthonormal real harmonic basis. The formulas below are written for one real mode; summing over a real basis, or imposing

$$
Y_{\ell,-m}=(-1)^mY_{\ell m}^*
$$

in the complex basis, gives the real Maxwell field.

## 3. Potential Decomposition Without Gauge Fixing

Let lower-case Latin indices \(a,b\in\{t,z\}\). In one \((\ell,m)\), \(\ell\geq1\), sector write

$$
A_a=a_a(t,z)Y_{\ell m},
\qquad
A_A=q_E(t,z)\,\mathbb E_A^{\ell m}
+q_B(t,z)\,\mathbb B_A^{\ell m}.
\tag{3.1}
$$

A gauge parameter \(\varepsilon=\chi(t,z)Y_{\ell m}\) acts by

$$
a_a\mapsto a_a+\partial_a\chi,
\qquad
q_E\mapsto q_E+\sqrt{\lambda_\ell}\,\chi,
\qquad
q_B\mapsto q_B.
\tag{3.2}
$$

Define the gauge-invariant fields

$$
f_{ab}:=2\partial_{[a}a_{b]},
\qquad
X_a:=\partial_aq_E-\sqrt{\lambda_\ell}\,a_a.
\tag{3.3}
$$

The field strength is

$$
F_{ab}=f_{ab}Y_{\ell m},
$$

$$
F_{aA}=X_a\mathbb E_A^{\ell m}
+(\partial_aq_B)\mathbb B_A^{\ell m},
$$

$$
F_{AB}=-\sqrt{\lambda_\ell}\,q_B Y_{\ell m}\epsilon_{AB}.
\tag{3.4}
$$

The definitions imply the electric-sector Bianchi identity

$$
\partial_tX_z-\partial_zX_t+\sqrt{\lambda_\ell}\,e=0,
\qquad e:=f_{tz}.
\tag{3.5}
$$

No gauge has been chosen in (3.1)--(3.5).

## 4. Reduction of the Maxwell Action

Start from the original action

$$
S[A]=-\frac12\int_MF\wedge *F
=-\frac14\int_Md^4x\sqrt{-g}\,F_{\mu\nu}F^{\mu\nu}.
\tag{4.1}
$$

Orthogonality of the harmonics gives, for each real \((\ell,m)\) with \(\ell\geq1\),

$$
S_{\ell m}=S^E_{\ell m}+S^B_{\ell m},
\tag{4.2}
$$

$$
S^E_{\ell m}
=\int dtdz\left(-\frac14f_{ab}f^{ab}-\frac12X_aX^a\right),
\tag{4.3}
$$

$$
S^B_{\ell m}
=-\frac12\int dtdz\left(\partial_aq_B\partial^aq_B
+\lambda_\ell q_B^2\right).
\tag{4.4}
$$

Equation (4.3) is a gauge-invariant two-dimensional Stückelberg/Proca system. Equation (4.4) is already a scalar master action.

### 4.1 Magnetic master

Set

$$
\Phi^B_{\ell m}:=q_B.
\tag{4.5}
$$

Then

$$
S^B_{\ell m}
=-\frac12\int dtdz\left(
\partial_a\Phi^B_{\ell m}\partial^a\Phi^B_{\ell m}
+\lambda_\ell(\Phi^B_{\ell m})^2
\right).
\tag{4.6}
$$

### 4.2 Electric master by a gauge-invariant parent action

In \((t,z)\) components, (4.3) is

$$
S^E_{\ell m}=\int dtdz\left(\frac12e^2-\frac12X_aX^a\right).
$$

Impose (3.5) with a scalar multiplier \(\Phi^E_{\ell m}\):

$$
S^{E,\mathrm{par}}_{\ell m}
=\int dtdz\left[
\frac12e^2-\frac12X_aX^a
+\Phi^E_{\ell m}
(\partial_tX_z-\partial_zX_t+\sqrt{\lambda_\ell}\,e)
\right].
\tag{4.7}
$$

Eliminating \(e,X_t,X_z\) gives

$$
e=-\sqrt{\lambda_\ell}\,\Phi^E_{\ell m},
\qquad
X_t=-\partial_z\Phi^E_{\ell m},
\qquad
X_z=-\partial_t\Phi^E_{\ell m}.
\tag{4.8}
$$

Substitution yields the canonical scalar action plus the displayed spacetime divergence,

$$
S^{E,\mathrm{par}}_{\ell m}\big|_{e,X}
=-\frac12\int dtdz\left[
\partial_a\Phi^E_{\ell m}\partial^a\Phi^E_{\ell m}
+\lambda_\ell(\Phi^E_{\ell m})^2
\right]
$$

$$
\hspace{2cm}
+\int dtdz\left[
\partial_z(\Phi^E\partial_z\Phi^E)
-\partial_t(\Phi^E\partial_t\Phi^E)
\right].
\tag{4.9}
$$

The divergence in (4.9) is retained in endpoint bookkeeping. It changes the symplectic potential by endpoint terms but does not change the bulk symplectic current. Section 8 below checks the characteristic two-form directly in Maxwell variables, so no claim rests on silently discarding (4.9).

Combining the two polarizations,

$$
\boxed{
S_{\mathrm{rad}}
=-\frac12\sum_{P=E,B}\sum_{\ell\geq1,m}
\int dtdz\left[
\partial_a\Phi^P_{\ell m}\partial^a\Phi^P_{\ell m}
+\lambda_\ell(\Phi^P_{\ell m})^2
\right].}
\tag{4.10}
$$

The reality condition is understood in the complex harmonic basis.

## 5. Master Equations and Exact Field-Strength Map

Both polarizations obey

$$
(\partial_t^2-\partial_z^2+\lambda_\ell)\Phi^P_{\ell m}=0.
\tag{5.1}
$$

Since

$$
\partial_t^2-\partial_z^2=2\partial_u\partial_v,
$$

the characteristic equation is

$$
\boxed{(2\partial_u\partial_v+\lambda_\ell)\Phi^P_{\ell m}=0.}
\tag{5.2}
$$

The coefficient and sign in (5.2) follow from (4.1); they were not assumed from the Maxwell equations.

For the electric sector, (4.8) becomes

$$
F_{uv}^{E}=-\sqrt{\lambda_\ell}\,\Phi^E Y_{\ell m},
$$

$$
F_{uA}^{E}=(\partial_u\Phi^E)\mathbb E_A^{\ell m},
\qquad
F_{vA}^{E}=-(\partial_v\Phi^E)\mathbb E_A^{\ell m},
\qquad
F_{AB}^{E}=0.
\tag{5.3}
$$

For the magnetic sector,

$$
F_{uv}^{B}=0,
$$

$$
F_{uA}^{B}=(\partial_u\Phi^B)\mathbb B_A^{\ell m},
\qquad
F_{vA}^{B}=(\partial_v\Phi^B)\mathbb B_A^{\ell m},
$$

$$
F_{AB}^{B}=-\sqrt{\lambda_\ell}\,\Phi^B Y_{\ell m}\epsilon_{AB}.
\tag{5.4}
$$

Equations (5.3)--(5.4) solve all Maxwell and Bianchi equations exactly if and only if the masters solve (5.2).

At potential level, the electric master determines the gauge-invariant \(e,X_a\) through (4.8). A representative is obtained only after choosing \(q_E\):

$$
a_a=\frac{\partial_aq_E-X_a}{\sqrt{\lambda_\ell}}.
\tag{5.5}
$$

For example, the optional representative \(q_E=0\) gives

$$
a_t=\frac{\partial_z\Phi^E}{\sqrt{\lambda_\ell}},
\qquad
a_z=\frac{\partial_t\Phi^E}{\sqrt{\lambda_\ell}}.
\tag{5.6}
$$

This gauge is used only to display one inverse map; the action reduction itself was gauge invariant. The magnetic representative is \(A_A=\Phi^B\mathbb B_A\), \(A_a=0\).

## 6. Completeness for \(\ell\geq1\)

The Hodge decomposition on \(S^2\) gives

$$
\Omega^1(S^2)=d\Omega^0(S^2)\oplus\star_Sd\Omega^0(S^2),
$$

with the constants removed from both derivatives and no harmonic-one-form summand. Consequently:

1. every smooth \(A_A\) fluctuation in a fixed bundle sector has the expansion (3.1);
2. the exact coefficient combines with \(A_a\) into the gauge-invariant electric master;
3. the coexact coefficient is the magnetic master;
4. the two masters account for exactly two physical Maxwell polarizations for every \(\ell\geq1\);
5. no third radiative or harmonic-one-form oscillator exists on \(S^2\).

This proves harmonic-sector completeness on the smooth core. Hilbert completion is performed after the stationary mode normalization in `08-symplectic-mode-normalization.md`.

## 7. Endpoint and Sector Policy

The main quantization policy is:

1. fix the magnetic Chern class \(n\);
2. fix the \(\ell=0\) electric flux \(Q_E\) when constructing the radiative Fock representation;
3. use one smooth bulk connection/trivialization for the \(\ell\geq1\) radiative sector, so \(\lambda_{\mathrm{rel}}\) is not added as an independent oscillator;
4. on a finite characteristic cross retain the two outer endpoint terms;
5. compare with the global stationary theory only after taking the two half-rays to infinity in the finite-energy/no-null-infinity-flux completion.

At finite cutoff the characteristic form is a regional symplectic form and global plane waves have sinc, not Dirac-delta, normalization. In the infinite endpoint limit, each \(\ell\geq1\) master is massive and the two sheet contributions combine to the global stationary normalization. No finite diamond is assigned an independent vacuum.

Alternative policies are not silently identified with this one:

- fixing all pointwise corner electric density would remove legitimate \(\ell\geq1\) master corner values and is not the radiative Fock policy;
- retaining independent sheet frames gives the extended pair discussed in `02-corner-gauge-reduction.md`, but only its genuine zero-mode part may be quantized separately without double counting the masters;
- imposing reflecting data at finite outer cuts produces a different discrete spectrum and breaks the unrestricted \(\partial_t\) plane-wave comparison.

## 8. Direct Characteristic Symplectic Cross-Check

For a magnetic master, substitute (5.4) and \(A_A=\Phi^B\mathbb B_A\) into (7.3) of `01-maxwell-double-null.md`. For an electric master, substitute (5.3) and the representative (5.6). In both cases one obtains

$$
\Omega_{N_+}^P(\Phi_1,\Phi_2)
=\int dv\left(
\partial_v\Phi_1^P\,\Phi_2^P
-\partial_v\Phi_2^P\,\Phi_1^P
\right),
\tag{8.1}
$$

$$
\Omega_{N_-}^P(\Phi_1,\Phi_2)
=\int du\left(
\partial_u\Phi_1^P\,\Phi_2^P
-\partial_u\Phi_2^P\,\Phi_1^P
\right).
\tag{8.2}
$$

Thus the action-derived master map is symplectic on the complete cross, including the electric sector where the flux term \(\delta E\wedge\delta A_{u,v}\) carries the result. There is no extra \(\ell\geq1\) corner oscillator.

## 9. Status

**Proved:** the fixed-background action reduction, the two master equations, the exact field-strength/potential quotient map, and smooth \(\ell\geq1\) harmonic completeness.

**Checked independently:** representative vector-harmonic identities, parent-action elimination including its divergence, the master Maxwell map, and the null coefficient/sign.

**Separated rather than absorbed:** the \(\ell=0\) electric and magnetic sectors, treated in `zero-modes-and-superselection.md`.

**Not claimed here:** a global Einstein--Maxwell background, a sum over Chern classes, or a tensor-product factorization across the two null sheets.
