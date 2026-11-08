# Direct-Null versus Stretched-Horizon Reduction

## 1. Verdict

The exact finite-$R$ DEM edge DtN kernel, its Hamiltonian scaling, the
modewise cut-form identity, and the strong-resolvent radiative limit are
retained.  A full phase-space null-limit theorem is **not proved**.

At finite harmonic order, the DEM reduction has one linear electric
frame/normal-flux pair for every $j\geq1,m$; its Hamiltonian tends to zero at
the horizon, while its coefficient-level symplectic pairing remains finite.
The default zero-endpoint direct-null CPS contains no such independent pair.
This shows a mismatch of the two declared finite-harmonic coefficient models,
but it does not by itself construct a common ambient topology or prove that
reduction and the null limit commute or fail to commute as completed
phase-space operations.

The former boxed isomorphisms are therefore downgraded to a conditional
comparison.  To restore them one must define and prove a common direct system,
symplectic convergence, reduction convergence, and the bulk-compatible
`T1-aff/T2-aff` endpoint range.

The radiative bulk sector converges only in the strong-resolvent/local-energy
sense.  Its real-frequency Dirichlet-to-Neumann function has no pointwise
$R\to L$ limit because the wall produces standing-wave poles.  A limiting
absorption prescription has a limit and recovers a single ingoing/outgoing
characteristic branch.

## 2. Regulator geometry

Use physical static time $t=L\tau$ and put the timelike wall at

$$
r=R=L\tanh\rho_R<L,
\qquad
N_R:=\sqrt{1-R^2/L^2}=\operatorname{sech}\rho_R.
\tag{2.1}
$$

The metric and a constant-$t$ spatial metric are

$$
ds^2=-N^2dt^2+h_{ij}dx^idx^j,
\tag{2.2}
$$

$$
h=L^2\operatorname{sech}^2\rho\,d\rho^2
+L^2\tanh^2\rho\,d\Omega_2^2.
\tag{2.3}
$$

The proper distance from the wall to the bifurcation sphere is

$$
\boxed{
\varepsilon_R
=L\int_{\rho_R}^{\infty}\operatorname{sech}\rho\,d\rho
=2L\arctan(e^{-\rho_R})
=2Le^{-\rho_R}+O(e^{-3\rho_R}).}
\tag{2.4}
$$

The surface gravity for $\partial_t$ is $\kappa=L^{-1}$.

## 3. Finite-radius DEM phase space from the action

Retain the Maxwell action and Lee--Wald ordering of `01`.  At the timelike
wall impose the local DEM boundary condition

$$
\boxed{
A_t|_{r=R}=0,
\qquad
n^\mu F_{\mu A}|_{r=R}=0.}
\tag{3.1}
$$

The first condition fixes the temporal pullback, while the second is PMC in
the spatial directions tangent to the boundary.  It makes the action
variationally well posed while leaving the normal electric field

$$
E_\perp:=n^iE_i,
\qquad
E_i=N^{-1}F_{ti},
\tag{3.2}
$$

unfixed.  Gauge transformations preserving (3.1) have a time-independent
boundary value.  Those vanishing at $S_R^2$ are proper/small; nonconstant
boundary values are physical large transformations in the DEM theory.  The
constant mode acts trivially because the source-free Gauss constraint sets the
total electric flux to zero.

After quotienting only the small transformations, use the static
Hodge--Morrey split

$$
E_i=\widetilde E_i+N^{-1}\widehat\nabla_i\beta,
\qquad
A_i=\widetilde A_i+\widehat\nabla_i\alpha,
\tag{3.3}
$$

where

$$
\widehat\nabla_i(N^{-1}\widehat\nabla^i\beta)=0,
\qquad
N^{-1}\widehat\nabla_n\beta|_{S_R^2}=E_\perp,
\tag{3.4}
$$

and $\alpha,\beta$ have zero spherical mean.  The action-derived phase space
and Hamiltonian split as

$$
\boxed{
\Omega_R^{\rm DEM}
=\Omega_R^{\rm PMC}
+\int_{S_R^2}dS_R\,\delta\alpha\wedge\delta E_\perp,}
\tag{3.5}
$$

$$
\boxed{
H_R^{\rm DEM}=H_R^{\rm PMC}+H_R^{\rm edge},
\qquad
H_R^{\rm edge}
=\frac12\int_{S_R^2}dS_R\,E_\perp K_R^{-1}E_\perp.}
\tag{3.6}
$$

Here $K_R$ is the positive Dirichlet-to-Neumann operator for (3.4).  No
Hilbert-space factorization or partial trace is used in this comparison.

## 4. Exact DEM edge Dirichlet-to-Neumann spectrum

For $\beta=b_j(\rho)Y_{jm}$, (3.4) reduces exactly to

$$
\boxed{
\partial_\rho(\sinh^2\rho\,\partial_\rho b_j)
-\lambda_j b_j=0,
\qquad \lambda_j=j(j+1).}
\tag{4.1}
$$

Let $x=\coth\rho>1$ and let $Q_j(x)$ be the real Legendre function of the
second kind.  The center-regular solution, normalized to one at the horizon,
is

$$
\boxed{
B_j(\rho)
=-(x^2-1)Q_j'(x)
=j\big[Q_{j-1}(x)-xQ_j(x)\big],
\qquad j\geq1.}
\tag{4.2}
$$

Indeed $B_j=O(\rho^j)$ at the center, $B_j\to1$ at the horizon, and

$$
\partial_\rho B_j
=\lambda_j(x^2-1)Q_j(x).
\tag{4.3}
$$

Since the outward spatial unit normal is

$$
n^\rho=\frac{\cosh\rho_R}{L},
\tag{4.4}
$$

the exact eigenvalue of $K_R$ on the normalized $j,m$ boundary harmonic is

$$
\boxed{
K_{j,R}^{\rm edge}
=\frac{\cosh^2\rho_R}{L}
\frac{B_j'(\rho_R)}{B_j(\rho_R)}
=\frac{\lambda_j}{L}
\frac{x_R^2Q_j(x_R)}
{j[Q_{j-1}(x_R)-x_RQ_j(x_R)]}.}
\tag{4.5}
$$

It is positive for every $R>0$ and $j\geq1$.  With
$H_j^{\rm harm}=\sum_{n=1}^j n^{-1}$,

$$
Q_j(\coth\rho)=\rho-H_j^{\rm harm}+O(\rho e^{-2\rho}),
\qquad
B_j(\rho)=1+O(\rho e^{-2\rho}),
\tag{4.6}
$$

so

$$
\boxed{
K_{j,R}^{\rm edge}
=\frac{\lambda_j}{L}
\left(\rho_R-H_j^{\rm harm}
+O(\rho_Re^{-2\rho_R})\right)
=\frac{\lambda_j}{L}
\left(\log\frac{2L}{\varepsilon_R}-H_j^{\rm harm}+o(1)\right).}
\tag{4.7}
$$

The leading term is precisely
$\kappa^{-1}\log(\varepsilon_R^{-1})\Delta_{S_L^2}$ mode by mode.  The exact
formula (4.5) also fixes the finite harmonic-number term.

## 5. Edge symplectic and Hamiltonian scaling

Let

$$
\widehat Y_{jm}^{(R)}:=R^{-1}Y_{jm}
\tag{5.1}
$$

be orthonormal with respect to $dS_R=R^2d\Omega$.  Expand

$$
\alpha=\sum\alpha_{jm}^{(R)}\widehat Y_{jm}^{(R)},
\qquad
E_\perp=\sum e_{jm}^{(R)}\widehat Y_{jm}^{(R)}.
\tag{5.2}
$$

Then, with the $j=0$ mode omitted,

$$
\boxed{
\Omega_R^{\rm edge}
=\sum_{j\geq1,m}\delta\alpha_{jm}^{(R)}
\wedge\delta e_{jm}^{(R)},}
\tag{5.3}
$$

$$
\boxed{
H_R^{\rm edge}
=\frac12\sum_{j\geq1,m}
\frac{|e_{jm}^{(R)}|^2}{K_{j,R}^{\rm edge}}.}
\tag{5.4}
$$

For fixed normalized flux coefficient, the symplectic pair remains finite but

$$
H_{R,jm}^{\rm edge}
=O(\rho_R^{-1})\longrightarrow0.
\tag{5.5}
$$

Zero Hamiltonian is not a symplectic degeneracy.  The edge pair cannot be
quotiented merely because its limiting energy vanishes.

## 6. The radiative master DtN function

The DEM edge kernel is elliptic and has no frequency label.  Radiative modes
instead use the action-derived master equation.  For either polarization let

$$
\Phi_{\omega j}(\rho)=\mathcal L_j\sin(\omega\rho)
\tag{6.1}
$$

be the center-regular solution of `03`; its normalization cancels from the
dynamic Dirichlet-to-Neumann function

$$
\boxed{
D_j(\omega;\rho_R)
:=\frac{\partial_\rho\Phi_{\omega j}(\rho_R)}
{\Phi_{\omega j}(\rho_R)}.}
\tag{6.2}
$$

Using the exact scattering phase of `03`,

$$
\Phi_{\omega j}(\rho)
\propto e^{-i\omega\rho}+S_j(\omega)e^{i\omega\rho}
+O(e^{-2\rho}),
\tag{6.3}
$$

and hence

$$
\boxed{
D_j(\omega;\rho_R)
=i\omega\,
\frac{S_j(\omega)e^{2i\omega\rho_R}-1}
{S_j(\omega)e^{2i\omega\rho_R}+1}
+O(e^{-2\rho_R}).}
\tag{6.4}
$$

For real $\omega>0$, $|S_j|=1$, so (6.4) oscillates and has poles as
$\rho_R\to\infty$.  There is no pointwise real-frequency DtN limit.  For
$z=\omega+i\eta$ with $\eta>0$, however,

$$
\boxed{
\lim_{\rho_R\to\infty}D_j(z;\rho_R)=-iz,}
\tag{6.5}
$$

while the lower-half-plane limit is $+iz$.  These are the two limiting
absorption branches.  Their boundary values are the ingoing/outgoing
characteristic impedances; the finite product $S_j$ relates the two.

## 7. Polarization-dependent finite-wall conditions

The curvature part of (3.1) gives, for nonzero Fourier frequency,

$$
\boxed{
\Psi^E_{jm}(\rho_R)=0,
\qquad
\partial_\rho\Psi^B_{jm}(\rho_R)=0.}
\tag{7.1}
$$

The first follows from
$F_{\rho A}^E=-\partial_\tau\Psi^E\mathbb E_A$; the second from
$F_{\rho A}^B=\partial_\rho\Psi^B\mathbb B_A$.  The boundary gauge needed to
set $A_t=0$ does not add a curvature condition.

Thus the electric and magnetic cavity frequencies satisfy, asymptotically,

$$
2\omega\rho_R+\arg S_j(\omega)=(2n+1)\pi
\quad(E),
\tag{7.2}
$$

$$
2\omega\rho_R+\arg S_j(\omega)=2n\pi
\quad(B).
\tag{7.3}
$$

Both have density

$$
\frac{dn}{d\omega}
=\frac{\rho_R}{\pi}
+\frac1{2\pi}\frac{d}{d\omega}\arg S_j(\omega)+o(1).
\tag{7.4}
$$

On compact radial sets, the Dirichlet and Neumann truncations converge in the
strong-resolvent sense to the same Friedrichs half-line operator $H_j$.  This
follows directly from the off-real-axis Green kernels: the reflected Weyl
solution is suppressed exponentially as $\rho_R\to\infty$.  Consequently the
finite-wall discrete spectral measures converge after smearing to the
continuum measure of `03`.  Equations (7.2)--(7.4), rather than a pointwise
limit of (6.2), recover the scattering phase.

There is no edge oscillator for each $\omega$: the radiative $P,j,m,\omega$
sector and the time-independent longitudinal DEM edge sector are different
parts of the action-derived phase space.

## 8. Exact finite-mode map to the direct-null bifurcation cut

For the electric master at $r=R$,

$$
E_\perp=F_{tr}
=-\frac{\sqrt{\lambda_j}}{R^2}\Psi^E_{jm}Y_{jm}.
\tag{8.1}
$$

A boundary gauge scalar $\alpha=(q_E/\sqrt{\lambda_j})Y_{jm}$ shifts
$A_A=q_E\mathbb E_A$.  In the normalized variables of (5.2),

$$
\boxed{
\alpha_{jm}^{(R)}=\frac{R}{\sqrt{\lambda_j}}q_{E,jm},
\qquad
e_{jm}^{(R)}=-\frac{\sqrt{\lambda_j}}{R}\Psi^E_{jm}.}
\tag{8.2}
$$

Therefore

$$
\boxed{
\delta\alpha_{jm}^{(R)}\wedge\delta e_{jm}^{(R)}
=\delta\Psi^E_{jm}\wedge\delta q_{E,jm}.}
\tag{8.3}
$$

This is exactly the electric final-cut coefficient identity derived from the
unfixed action in `04`.  At every fixed finite harmonic cutoff, its
$R\to L$ coefficients match the $B$-cut pair if the past endpoint frame and
normal field are fixed.  No topology on the full tower or proof that the cut
pair belongs to the smooth bulk affine range is supplied by (8.3).  The edge
Hamiltonian in these variables is

$$
\boxed{
H_{R,jm}^{\rm edge}
=\frac{\lambda_j}{2R^2K_{j,R}^{\rm edge}}
|\Psi^E_{jm}|^2
=\frac{|\Psi^E_{jm}|^2}
{2L(\rho_R-H_j^{\rm harm})}[1+o(1)].}
\tag{8.4}
$$

The DEM pair matches only the electric potential-frame fiber.  It is not an
extra copy of either radiative polarization, magnetic memory, or a $j=0$
Coulomb mode.

## 9. Reduction versus null limit

Let $\mathcal G_0(R)$ be gauge transformations vanishing at $S_R^2$, and let
$\mathfrak g_B'$ be the **Lie algebra** of zero-mean real boundary gauge
functions.  Finite-radius DEM reduction means quotient by
$\mathcal G_0(R)$ only.  For every fixed harmonic cutoff $J<\infty$,
equations (3.5) and (5.3) give the finite-$R$ linearized coefficient
decomposition

$$
\operatorname{Coeff}_{\leq J}
\operatorname{Red}_{\mathcal G_0}\mathcal P_R^{\rm DEM}
\cong
\operatorname{Coeff}_{\leq J}\mathcal P_R^{\rm PMC}
\oplus T^*\mathfrak g_{B,\leq J}'.
\tag{9.1}
$$

This finite-radius coefficient statement is `proved`.  It is not a boxed
isomorphism of completed phase spaces.  The notation
$T^*\mathfrak g_{B,\leq J}'$ is only the linearized identity-component
description.
If the boundary frame is a global $U(1)$-valued map, its periodicity and any
large components must be handled on
$\operatorname{Map}(S^2,U(1))/U(1)$; they are not proved by (9.1).

After the strong-resolvent radiative limit and the coefficient identity
(8.2), finite harmonic truncations have the schematic coefficient behavior

$$
\operatorname{Red}_{\mathcal G_0}\mathcal P_R^{\rm DEM}
\xrightarrow[R\to L]{\rm coeff}
\mathcal P_{\rm null}^{\log}\oplus T^*\mathfrak g_B',
\qquad H_{\rm edge}\to0.
\tag{9.2}
$$

The default direct-null logarithmic model has zero endpoint traces and no
independent frame coefficient,

$$
\mathcal P_{\rm null,default}^{\log}
=\mathcal P_{\rm null}^{\log}.
\tag{9.3}
$$

At coefficient level, (9.2)--(9.3) differ by
$T^*\mathfrak g_B'$.  This is evidence for a mismatch between the two
declared endpoint policies, not a theorem comparing two completed
phase-space limits.

If instead the null limit is taken in the split trace polarization of `08`,
with the past endpoint fixed and the $B$ frame retained, then (8.3) gives only
the finite-mode cut-form identity

$$
\left.\Omega_R^{\rm edge}\right|_{j\leq J}
\longrightarrow
\left.\Omega_{B}^{\rm cut}\right|_{j\leq J}
\qquad(J<\infty).
\tag{9.4}
$$

Reducing the full boundary group at fixed moment map $E_\perp=0$ removes the
linear edge pair at every finite $R$.  That is the PMC theory, not DEM with
physical boundary transformations; equality of its completed null limit with
(9.3) still requires a common ambient construction.

### Theorem 9.1 — proved coefficient statements and conditional `E-limit`

The radiative DEM/PMC wall theories converge to the direct-null radiative
theory only after spectral smearing or limiting absorption.  The DEM edge
Hamiltonian vanishes as $1/\log(2L/\varepsilon_R)$, and (8.3) gives the exact
finite-mode cut-form identity.  These statements are `proved`.

The completed claim `E-limit`---that reduction and the null limit differ
exactly by $T^*\mathfrak g_B'$ for the default policy, or commute for the
split-$B$ policy---is `conditional`.  It requires:

1. a common ambient topology or direct system for $\mathcal P_R$;
2. convergence of the full symplectic forms, not just their coefficients;
3. convergence of the gauge actions, moment maps, and reduced spaces;
4. the bulk-compatible affine endpoint range `T1-aff/T2-aff`;
5. a decision whether the frame is linearized or genuinely periodic $U(1)$.

No Hilbert tensor factorization claim is made.

## 10. Regression

`../scripts/stretched_horizon_checks.py` verifies for $j=1,2,3$:

- the exact $Q_j$ solution and edge DtN formula;
- positivity and the harmonic-number asymptotic (4.7);
- $H_{\rm edge}=O(\rho_R^{-1})$;
- the dynamic DtN expression (6.4);
- upper-half-plane limiting absorption and the absence of a real-frequency
  pointwise limit;
- the exact coefficient map (8.2)--(8.3).

The finite samples are numerical regression only.  Strong-resolvent
convergence uses the written operator argument; no script or coefficient map
proves `E-limit`.

## 11. Literature and claim boundary

Ball--Law--Wong already proved the DEM boundary condition, the bulk/edge
symplectic and Hamiltonian split, and the leading
$K\sim\kappa^{-1}\log(\varepsilon^{-1})\Delta_{S^2}$ horizon scaling.  These
are not new claims here.  The project-specific calculation is the exact
static-$dS_4$ $Q_j$ kernel, its map to the action-derived electric cut term,
and the explicit dependence of the comparison verdict on the direct-null
endpoint policy.

| statement | status | boundary |
|---|---|---|
| real-frequency dynamic DtN has a pointwise horizon limit | `false` | section 6 |
| limiting absorption gives the characteristic impedance | `proved` | (6.5) |
| finite-wall radiative operators converge after spectral smearing | `proved` | section 7 |
| DEM edge Hamiltonian remains finite and nonzero at the horizon | `false` | sections 4--5 |
| DEM edge symplectic pair disappears when its energy vanishes | `false` | section 5 |
| finite-harmonic DEM/cut coefficient form agrees | `proved` | (8.3), (9.4) |
| default coefficient models differ by linear $T^*\mathfrak g_B'$ | `proved` | (9.1)--(9.3) |
| completed phase-space limit differs exactly by $T^*\mathfrak g_B'$ | `conditional` | missing items 1--5 after Theorem 9.1 |
| completed split-$B$ or full-reduction limit commutes | `conditional` | section 9 |
| $T^*\mathfrak g_B'$ is the global periodic $U(1)$ frame phase space | `false` | it is only the linearized identity-component model |
