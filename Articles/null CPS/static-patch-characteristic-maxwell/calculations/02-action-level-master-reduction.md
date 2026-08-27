# Action-Level Electric/Magnetic Master Reduction

## 1. Direct verdict

For source-free Maxwell theory on the fixed $dS_4$ static patch, every radiative spherical sector $j\geq1$ reduces from the unfixed Maxwell action to two real gauge-invariant master fields with identical half-line actions:

$$
\boxed{
S_{\rm rad}
=\frac12\sum_{P=E,B}\sum_{j\geq1,m}
\int d\tau\,d\rho\left[
(\partial_\tau\Psi^P_{jm})^2
-(\partial_\rho\Psi^P_{jm})^2
-\frac{j(j+1)}{\sinh^2\rho}(\Psi^P_{jm})^2
\right].}
\tag{1.1}
$$

No gauge fixing is used to obtain (1.1). The electric sector is dualized through a gauge-invariant parent action; the resulting spacetime divergence is displayed rather than discarded. A $q_E=0$ potential is introduced only afterward as an optional reconstruction representative.

The vector-harmonic identities, original action reduction, parent elimination, full Maxwell/Bianchi residuals, potential reconstruction, Hodge star, and electromagnetic duality were checked with exact Mathematica arithmetic for $j=1,2,3$ in `../scripts/maxwell_master_reduction.wl`.

## 2. Conformal reduction

By four-dimensional conformal invariance, use

$$
d\widehat s^2=-d\tau^2+d\rho^2+a(\rho)^2d\Omega_2^2,
\qquad
a(\rho)=\sinh\rho.
\tag{2.1}
$$

The physical metric is $g=L^2\operatorname{sech}^2\rho\,\widehat g$. Since $*_g=*_{\widehat g}$ on two-forms,

$$
S[A]=-\frac14\int d^4x\sqrt{-\widehat g}\,
F_{\mu\nu}F^{\mu\nu}_{\widehat g}.
\tag{2.2}
$$

All harmonics below are normalized with the unit-sphere measure.

## 3. Scalar and vector spherical harmonics

Let

$$
-D^2Y_{jm}=\lambda_jY_{jm},
\qquad
\lambda_j=j(j+1),
\qquad
\int_{S^2}d\Omega\,Y_{jm}^*Y_{j'm'}
=\delta_{jj'}\delta_{mm'}.
\tag{3.1}
$$

For $j\geq1$, define

$$
\mathbb E_A^{jm}=\frac{D_AY_{jm}}{\sqrt{\lambda_j}},
\qquad
\mathbb B_A^{jm}=\frac{(\star_\gamma dY_{jm})_A}{\sqrt{\lambda_j}},
\tag{3.2}
$$

with sphere orientation chosen so that

$$
D^A\mathbb E_A^{jm}=-\sqrt{\lambda_j}Y_{jm},
\qquad
D^A\mathbb B_A^{jm}=0,
\tag{3.3}
$$

$$
2D_{[A}\mathbb E_{B]}^{jm}=0,
\qquad
2D_{[A}\mathbb B_{B]}^{jm}
=-\sqrt{\lambda_j}Y_{jm}\epsilon^\gamma_{AB}.
\tag{3.4}
$$

Exact and coexact harmonics are orthonormal and mutually orthogonal. Since $H^1(S^2)=0$, there is no harmonic one-form sector.

For derivations one may use a real orthonormal harmonic basis. In a complex basis, the usual $m\leftrightarrow-m$ reality condition is understood.

## 4. Potential decomposition and gauge invariants

Let $a,b\in\{\tau,\rho\}$. For one $j,m$ sector, write before gauge fixing

$$
A_a=a_a(\tau,\rho)Y_{jm},
\qquad
A_A=q_E(\tau,\rho)\mathbb E_A^{jm}
+q_B(\tau,\rho)\mathbb B_A^{jm}.
\tag{4.1}
$$

A gauge parameter $\varepsilon=\chi(\tau,\rho)Y_{jm}$ acts as

$$
a_a\mapsto a_a+\partial_a\chi,
\qquad
q_E\mapsto q_E+\sqrt{\lambda_j}\chi,
\qquad
q_B\mapsto q_B.
\tag{4.2}
$$

Define

$$
f_{ab}=2\partial_{[a}a_{b]},
\qquad
X_a=\partial_aq_E-\sqrt{\lambda_j}a_a.
\tag{4.3}
$$

Both are gauge invariant. The exact field-strength decomposition is

$$
F_{ab}=f_{ab}Y_{jm},
\tag{4.4}
$$

$$
F_{aA}=X_a\mathbb E_A^{jm}
+(\partial_aq_B)\mathbb B_A^{jm},
\tag{4.5}
$$

$$
F_{AB}=-\sqrt{\lambda_j}\,q_BY_{jm}\epsilon^\gamma_{AB}.
\tag{4.6}
$$

Writing $e=f_{\tau\rho}$, the electric definitions satisfy the Bianchi identity

$$
\partial_\tau X_\rho-\partial_\rho X_\tau
+\sqrt{\lambda_j}e=0.
\tag{4.7}
$$

## 5. Maxwell action before dualization

Substitute (4.4)--(4.6) into (2.2) and use harmonic orthogonality. For every real $j,m$, $j\geq1$,

$$
S_{jm}=S^E_{jm}+S^B_{jm},
\tag{5.1}
$$

$$
\boxed{
S^E_{jm}=\int d\tau\,d\rho\left[
-\frac{a^2}{4}f_{ab}f^{ab}-\frac12X_aX^a
\right]
=\int d\tau\,d\rho\left[
\frac{a^2}{2}e^2+\frac12X_\tau^2-\frac12X_\rho^2
\right],}
\tag{5.2}
$$

$$
\boxed{
S^B_{jm}=-\frac12\int d\tau\,d\rho\left[
\partial_aq_B\partial^aq_B
+\frac{\lambda_j}{a^2}q_B^2
\right].}
\tag{5.3}
$$

Equation (5.2) is a gauge-invariant two-dimensional Stückelberg system. It is not obtained by setting $q_E$, $a_\rho$, or $a_\tau$ to zero.

Status of (5.2)--(5.3): `proved` by direct substitution; representative $j=1,2,3$ component integrations are `checked symbolically`.

## 6. Magnetic master

Set

$$
\boxed{\Psi^B_{jm}:=q_B.}
\tag{6.1}
$$

Then (5.3) is already the $P=B$ term of (1.1).

## 7. Electric master from a parent action

Impose the gauge-invariant identity (4.7) with a Lagrange multiplier $\Psi^E_{jm}$:

$$
\boxed{
\begin{aligned}
S^{E,{\rm par}}_{jm}
=\int d\tau\,d\rho\bigg[&
\frac{a^2}{2}e^2+\frac12X_\tau^2-\frac12X_\rho^2\\
&+\Psi^E
(\partial_\tau X_\rho-\partial_\rho X_\tau
+\sqrt{\lambda_j}e)\bigg].
\end{aligned}}
\tag{7.1}
$$

Varying $e,X_\tau,X_\rho$ gives

$$
\boxed{
e=-\frac{\sqrt{\lambda_j}}{a^2}\Psi^E,
\qquad
X_\tau=-\partial_\rho\Psi^E,
\qquad
X_\rho=-\partial_\tau\Psi^E.}
\tag{7.2}
$$

Substitution into (7.1) gives

$$
\begin{aligned}
\mathcal L^{E,{\rm par}}\big|_{e,X}
=\;&\frac12(\partial_\tau\Psi^E)^2
-\frac12(\partial_\rho\Psi^E)^2
-\frac{\lambda_j}{2a^2}(\Psi^E)^2\\
&-\partial_\tau(\Psi^E\partial_\tau\Psi^E)
+\partial_\rho(\Psi^E\partial_\rho\Psi^E).
\end{aligned}
\tag{7.3}
$$

The second line is retained. It changes the symplectic potential by an exact field-space/spacetime boundary term but not the bulk symplectic current. Its horizon/corner contribution is part of the normalization audit in `04`.

Combining (6.1) and (7.3) proves (1.1).

## 8. Master equations and the full field-strength dictionary

Both polarizations obey

$$
\boxed{
\left(\partial_\tau^2-\partial_\rho^2
+\frac{\lambda_j}{\sinh^2\rho}\right)\Psi^P_{jm}=0.}
\tag{8.1}
$$

For the electric master,

$$
\boxed{
\begin{aligned}
F_{\tau\rho}^{E,jm}
&=-\frac{\sqrt{\lambda_j}}{\sinh^2\rho}\Psi^E_{jm}Y_{jm},\\
F_{\tau A}^{E,jm}
&=-\partial_\rho\Psi^E_{jm}\,\mathbb E_A^{jm},\\
F_{\rho A}^{E,jm}
&=-\partial_\tau\Psi^E_{jm}\,\mathbb E_A^{jm},\\
F_{AB}^{E,jm}&=0.
\end{aligned}}
\tag{8.2}
$$

For the magnetic master,

$$
\boxed{
\begin{aligned}
F_{\tau\rho}^{B,jm}&=0,\\
F_{\tau A}^{B,jm}
&=\partial_\tau\Psi^B_{jm}\,\mathbb B_A^{jm},\\
F_{\rho A}^{B,jm}
&=\partial_\rho\Psi^B_{jm}\,\mathbb B_A^{jm},\\
F_{AB}^{B,jm}
&=-\sqrt{\lambda_j}\Psi^B_{jm}Y_{jm}\epsilon^\gamma_{AB}.
\end{aligned}}
\tag{8.3}
$$

The inverse definitions are

$$
\Psi^E_{jm}
=-\frac{\sinh^2\rho}{\sqrt{\lambda_j}}
\int d\Omega\,Y_{jm}^*F_{\tau\rho},
\tag{8.4}
$$

$$
\Psi^B_{jm}
=-\frac1{2\sqrt{\lambda_j}}
\int d\Omega\,Y_{jm}^*\epsilon_\gamma^{AB}F_{AB}.
\tag{8.5}
$$

Equations (8.2)--(8.5) give $F_{\mu\nu}\leftrightarrow(\Psi^E,\Psi^B)$ without a potential gauge.

## 9. Null and horizon dictionaries

With $u=\tau-\rho, v=\tau+\rho$, the past-horizon radiative components are

$$
F_{vA}^{E,jm}=-\partial_v\Psi^E_{jm}\,\mathbb E_A^{jm},
\qquad
F_{vA}^{B,jm}=+\partial_v\Psi^B_{jm}\,\mathbb B_A^{jm}.
\tag{9.1}
$$

The future-horizon components are

$$
F_{uA}^{E,jm}=+\partial_u\Psi^E_{jm}\,\mathbb E_A^{jm},
\qquad
F_{uA}^{B,jm}=+\partial_u\Psi^B_{jm}\,\mathbb B_A^{jm}.
\tag{9.2}
$$

In the affine coordinates of `00`, the physical normal electric and magnetic scalars at either horizon are

$$
\boxed{
\mathcal E_{jm}=-\frac{\sqrt{\lambda_j}}{L^2}\Psi^E_{jm}Y_{jm},
\qquad
\mathcal B_{jm}=-\frac{\sqrt{\lambda_j}}{L^2}\Psi^B_{jm}Y_{jm}.}
\tag{9.3}
$$

Thus the $j\geq1$ corner curvatures are cut values of the two masters. They are independent integration data on a raw sheet but not independent after the regular bulk range is imposed.

## 10. Potential quotient and optional reconstruction gauge

The gauge-invariant quotient is already represented by (8.2)--(8.3). To exhibit one potential for the electric field, one may choose only at this stage

$$
q_E=0,
\qquad
A_\tau^{E,jm}=\frac{\partial_\rho\Psi^E_{jm}}{\sqrt{\lambda_j}}Y_{jm},
\qquad
A_\rho^{E,jm}=\frac{\partial_\tau\Psi^E_{jm}}{\sqrt{\lambda_j}}Y_{jm},
\qquad
A_A^{E,jm}=0.
\tag{10.1}
$$

Using (8.1), $dA$ equals (8.2). This is a reconstruction representative, not an assumption in the action reduction. The magnetic representative is simply

$$
A_A^{B,jm}=\Psi^B_{jm}\mathbb B_A^{jm},
\qquad A_a^{B,jm}=0.
\tag{10.2}
$$

If two smooth potentials on $\mathbb R_\tau\times B^3$ give the same $F$, their difference is a closed one-form. Since $H^1(B^3)=0$, it is exact. Whether that exact direction is divided out is then decided by the proper-gauge endpoint criterion (8.3) of `01`, not by the local identity alone.

## 11. Symplectic dictionary

For either reduced master, the action symplectic form on a constant-$\tau$ slice is

$$
\boxed{
\Omega_{\rm master}^{P,jm}(\delta_1,\delta_2)
=\int_0^\infty d\rho\left(
\delta_1\Psi^P\,\partial_\tau\delta_2\Psi^P
-\delta_2\Psi^P\,\partial_\tau\delta_1\Psi^P
\right).}
\tag{11.1}
$$

The magnetic dictionary pulls the Maxwell bulk current directly to (11.1). The
electric parent action gives the same bulk current; (7.3) records the exact
endpoint shift in the symplectic potential. Calculation `04`, equations
(4.6)--(5.9), retains the potential-frame cut term and proves that the complete
raw horizon restriction equals (11.1) on the declared core/CPS completion.
Thus both the modewise bulk dictionary and its T2 horizon restriction are
`proved` in that scope; the endpoint-enlarged finite-energy space remains a
separate problem.

No independent $j\geq1$ term $\delta\mathcal E_B\wedge\delta\lambda_{\rm rel}$ is appended to (11.1) on the single-frame spectral core. Such a term belongs to an explicitly endpoint-extended polarization, as explained in `01`.

## 12. Noether Hamiltonian

Static time translation gives

$$
\boxed{
H_{\partial_\tau}
=\frac12\sum_{P,j,m}\int_0^\infty d\rho\left[
(\partial_\tau\Psi^P)^2+(\partial_\rho\Psi^P)^2
+\frac{\lambda_j}{\sinh^2\rho}(\Psi^P)^2
\right].}
\tag{12.1}
$$

Since $\partial_t=L^{-1}\partial_\tau$,

$$
\boxed{H_{\partial_t}=L^{-1}H_{\partial_\tau}.}
\tag{12.2}
$$

Endpoint contributions from the electric parent transformation must be matched to the Lee--Wald representative in `04`. The positive bulk density (12.1) itself follows directly from (1.1).

## 13. Electromagnetic duality

With the spacetime orientation of `00`, the component regression gives

$$
*F_E[\Psi]=F_B[-\Psi],
\qquad
*F_B[\Psi]=F_E[\Psi],
\qquad
*^2=-1\quad\text{on two-forms}.
\tag{13.1}
$$

Thus $F\mapsto*F$ acts on the master pair as

$$
\boxed{(\Psi^E,\Psi^B)\mapsto(\Psi^B,-\Psi^E).}
\tag{13.2}
$$

Both (1.1) and (12.1) are invariant under this rotation.

## 14. The $j=0$ sector

### 14.1 Electric flux

For $j=0$, there is no vector harmonic. The action reduces to

$$
S_{j=0}^E=\frac12\int d\tau\,d\rho\,a^2e^2.
\tag{14.1}
$$

Its equations imply

$$
\partial_\rho(a^2e)=0,
\qquad
\partial_\tau(a^2e)=0,
\qquad
e=\frac{Q_E}{\sinh^2\rho}.
\tag{14.2}
$$

The energy contains

$$
\frac12\int_0d\rho\,\frac{Q_E^2}{\sinh^2\rho},
\tag{14.3}
$$

which diverges at the center unless $Q_E=0$. Smooth source-free extension through $r=0$ reaches the same conclusion by Gauss' law.

### 14.2 Magnetic flux and topology

A magnetic monopole would give a nonzero Chern number

$$
n=\frac1{2\pi}\int_{S^2}F.
\tag{14.4}
$$

But the static spatial slice is $B^3$, with

$$
H^2(B^3;\mathbb Z)=0.
\tag{14.5}
$$

A smooth (U(1)) bundle on the ball is topologically trivial, and a nonzero flux through its boundary cannot occur without a magnetic source or singularity. Its local energy would also diverge as in (14.3). Hence

$$
\boxed{Q_E=Q_B=0}
\tag{14.6}
$$

on the smooth source-free static-patch phase space. Since $H^1(B^3)=0$, there is also no flat holonomy mode. Any remaining smooth $j=0$ potential is proper gauge under the declared zero-endpoint core policy.

Status of (14.6): `proved` for smooth finite-energy source-free fields on the trivial bundle over $B^3$. This is not yet the full endpoint-memory theorem T4.

## 15. Regression statement

`maxwell_master_reduction.wl` checks, for $j=1,2,3$:

1. scalar/exact/coexact harmonic identities;
2. the unreduced electric and reduced magnetic action densities;
3. the parent-action boundary identity (7.3);
4. every Maxwell and Bianchi component after imposing (8.1);
5. the optional potential (10.1);
6. the duality map (13.1);
7. $*^2=-1$.

All residuals are exactly zero in Mathematica 14.3. This status is `checked symbolically`; the general-$j$ proof is the harmonic calculation in sections 3--13.
