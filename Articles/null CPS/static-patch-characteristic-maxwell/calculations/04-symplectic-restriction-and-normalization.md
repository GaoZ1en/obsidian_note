# Symplectic Restriction and Normalization

## 1. Direct verdict

On the smooth spectral/weighted-angular core of `00` and on its
$(\omega+\omega^2)$-weighted CPS completion,

$$
\boxed{
R_-^*\Omega_-=\Omega_{\rm bulk},
\qquad
\mathscr S^*\Omega_+=\Omega_- .}
\tag{1.1}
$$

Thus T2 is `proved` in exactly the same function-space scope as the completed
version of T1. The proof starts from the Maxwell action and its raw potential
pullback. It does not infer (1.1) merely from $|S_j|=1$.

The finite-energy norm alone does not control independent nonzero endpoint
traces, so the universal energy-only statement `T2-max` is `false`. In the
separate raw trace enlargement of `08`, the electric cut term and any charged
relative frame must be retained. Their finite symplectic pairing is proved in
`08` and matched to the DEM edge pair in `09`; extension to the maximal
smooth-center bulk-compatible trace range (`T2-trace`) remains `conditional`.

## 2. One Lee--Wald and orientation convention

The action and potential are

$$
S=-\frac12\int F\wedge *F,
\qquad
\theta[\delta A]=-\delta A\wedge *F.
\tag{2.1}
$$

We use the field-space order fixed in `01`,

$$
\boxed{
\boldsymbol\omega(\delta_1,\delta_2)
:=\delta_2\theta[\delta_1]-\delta_1\theta[\delta_2]
=\delta_2A\wedge *\delta_1F-
\delta_1A\wedge *\delta_2F.}
\tag{2.2}
$$

For a mechanical potential $p\,\delta q$, (2.2) gives
$\delta q\wedge\delta p$. This convention is the one used in the master form
(11.1) of `02` and the characteristic form (8.2) of `03`.

Let $\Sigma_{\tau_0}$ carry the future-normal presentation orientation
$d\rho\wedge\operatorname{vol}_\gamma$. Define

$$
\Omega_{\rm bulk}:=\int_{\Sigma_{\tau_0}}\boldsymbol\omega,
\qquad
\Omega_-:=\int_{\mathcal H^-}^{dV\,dS_q}\boldsymbol\omega,
\qquad
\Omega_+:=-\int_{\mathcal H^+}^{dU\,dS_q}\boldsymbol\omega.
\tag{2.3}
$$

The last minus sign is compulsory for an in/out scattering convention. A
future null sheet with future-generator presentation orientation has the
opposite orientation from the outward boundary of the future characteristic
triangle. Section 3 derives this sign before any endpoint limit.

## 3. Finite characteristic triangles and Stokes

Write

$$
u=\tau-\rho,
\qquad
v=\tau+\rho,
\qquad
d\tau\wedge d\rho=\frac12du\wedge dv.
\tag{3.1}
$$

For $T<\tau_0$, define the compact past triangle in the two-dimensional orbit
space by

$$
\mathcal D^-_{T,\tau_0}
=\{T\leq u\leq v,\ u+v\leq2\tau_0\}.
\tag{3.2}
$$

Its three faces are the finite static slice

$$
\Sigma_{\tau_0}^{R},
\qquad R=\tau_0-T,
\tag{3.3}
$$

the center segment $u=v$, and the finite ingoing null sheet

$$
\mathcal N^-_T=\{u=T,\ T\leq v\leq2\tau_0-T\}.
\tag{3.4}
$$

The outward orientation of $\mathcal N^-_T$ is $-dv$, whereas its
future-generator presentation orientation is $+dv$. Since
$d\boldsymbol\omega=0$ for two linearized Maxwell solutions, Stokes gives

$$
\int_{\Sigma_{\tau_0}^{R}}\boldsymbol\omega
-\int_{\mathcal N^-_T}^{dv}\boldsymbol\omega
+\int_{\mathrm{center}}\boldsymbol\omega=0.
\tag{3.5}
$$

Smooth-center regularity $\Psi_{jm}=O(\rho^{j+1})$, $j\geq1$, makes the center
flux zero. Hence

$$
\boxed{
\int_{\Sigma_{\tau_0}^{R}}\boldsymbol\omega
=\int_{\mathcal N^-_T}^{dv}\boldsymbol\omega.}
\tag{3.6}
$$

This is a finite-region identity. Only after (3.6) is established do we send
$T\to-\infty$, so that $R\to\infty$ and $\mathcal N^-_T$ tends to the complete
past horizon with $v\in\mathbb R$.

For completeness, when $T>\tau_0$ the future triangle is

$$
\mathcal D^+_{\tau_0,T}
=\{u\leq v\leq T,\ u+v\geq2\tau_0\}.
\tag{3.7}
$$

Both $\Sigma_{\tau_0}^{T-\tau_0}$ and
$\mathcal N^+_T=\{v=T,\ 2\tau_0-T\leq u\leq T\}$ have outward orientation
opposite to their chosen presentation orientation. Therefore

$$
\boxed{
\int_{\mathcal N^+_T}^{du}\boldsymbol\omega
=-\int_{\Sigma_{\tau_0}^{T-\tau_0}}\boldsymbol\omega.}
\tag{3.8}
$$

Equation (3.8) is the origin of the minus sign in the definition of
$\Omega_+$ in (2.3).

## 4. Constant-time Maxwell form from the unreduced action

Use a real orthonormal harmonic basis and put
$\lambda= j(j+1)$. For two tangent vectors, write

$$
\psi_i^P:=\delta_i\Psi^P,
\qquad
\eta_i:=\delta_i q_E,
\qquad i=1,2.
\tag{4.1}
$$

### 4.1 Magnetic polarization

The unreduced magnetic action has canonical potential

$$
\Theta_{\Sigma,B}
=\int_0^R d\rho\,\partial_\tau\Psi^B\,\delta\Psi^B.
\tag{4.2}
$$

Thus its Maxwell Lee--Wald form is exactly

$$
\Omega_{\Sigma,B}^{\rm Max}
=\int_0^R d\rho\,
(\psi_1^B\partial_\tau\psi_2^B
-\psi_2^B\partial_\tau\psi_1^B).
\tag{4.3}
$$

No endpoint integration by parts is used.

### 4.2 Electric polarization and the cut term

Before gauge fixing, the electric action (5.2) of `02` gives

$$
\Theta_{\Sigma,E}^{\rm Max}
=\int_0^R d\rho\,
\left(a^2e\,\delta a_\rho+X_\tau\,\delta q_E\right).
\tag{4.4}
$$

The action-derived master dictionary is

$$
a^2e=-\sqrt\lambda\,\Psi^E,
\qquad
X_\tau=-\partial_\rho\Psi^E,
\qquad
a_\rho=\frac{\partial_\rho q_E+\partial_\tau\Psi^E}{\sqrt\lambda}.
\tag{4.5}
$$

Substitution into (4.4), with no gauge choice, gives

$$
\boxed{
\Theta_{\Sigma,E}^{\rm Max}
=\int_0^R d\rho\,\partial_\tau\Psi^E\,\delta\Psi^E
-\delta\!\int_0^R d\rho\,\Psi^E\partial_\tau\Psi^E
-[\Psi^E\delta q_E]_0^R.}
\tag{4.6}
$$

The middle term is field-space exact and drops out of (2.2). The last term
does not. Consequently

$$
\boxed{
\Omega_{\Sigma,E}^{\rm Max}
=\Omega_{\Sigma,E}^{\rm master}
+[b_{12}]_0^R,
\qquad
b_{12}:=\psi_1^E\eta_2-\psi_2^E\eta_1.}
\tag{4.7}
$$

At the center $b_{12}=0$ by smoothness. At finite $R$, the upper value is
retained.

The spacetime divergence in the electric parent reduction (7.3) of `02`
shifts the potential by a field-space exact term and therefore does not alter
$\boldsymbol\omega$. Equation (4.6) identifies the additional endpoint
one-form produced when the original Stueckelberg potential variables are
expressed through the master. The raw null calculation below reproduces
exactly its field-space curl $b_{12}$.

## 5. Raw null pullback and exact master normalization

The following computation is valid first on the finite null regulators of
section 3. Let $\mathsf r(u,v)$ be the physical sphere radius. On an ingoing
sheet $u=\mathrm{const}$, the electric dictionary and an arbitrary potential
representative give

$$
\mathcal E_i=-\frac{\sqrt\lambda}{\mathsf r^2}\psi_i^E Y,
\qquad
(A_v)_i=\frac{\partial_v\eta_i+\partial_v\psi_i^E}{\sqrt\lambda}Y,
\tag{5.1}
$$

$$
(A_A)_i=\eta_i\mathbb E_A,
\qquad
(F_{vA})_i=-\partial_v\psi_i^E\mathbb E_A.
\tag{5.2}
$$

Insert (5.1)--(5.2) into the raw form (3.5) of `01`. Orthonormality gives

$$
\begin{aligned}
\mathsf r^2\big[(A_v)_1\mathcal E_2-(A_v)_2\mathcal E_1\big]
={}&-(\partial_v\eta_1+\partial_v\psi_1^E)\psi_2^E
+(\partial_v\eta_2+\partial_v\psi_2^E)\psi_1^E,\\
\mathsf r^2\big[(A_A)_1(F_v{}^A)_2-(A_A)_2(F_v{}^A)_1\big]
={}&-\eta_1\partial_v\psi_2^E
+\eta_2\partial_v\psi_1^E.
\end{aligned}
\tag{5.3}
$$

Adding the two lines yields the exact identity

$$
\boxed{
\Omega_{\mathcal N^-,E}^{\rm Max}
=\int dv\,
(\psi_1^E\partial_v\psi_2^E
-\psi_2^E\partial_v\psi_1^E)
+[b_{12}]_{v_{\rm i}}^{v_{\rm f}}.}
\tag{5.4}
$$

Thus the raw $A_v$--$\mathcal E$ term and the angular
$A_A$--$F_{vA}$ term combine into the master current plus precisely the cut
term found in (4.7). Setting $q_E=0$ is allowed as a reconstruction
representative after this identity has been derived, but was not used to
obtain it.

For the magnetic representative,

$$
(A_A)_i=\psi_i^B\mathbb B_A,
\qquad
(F_{vA})_i=\partial_v\psi_i^B\mathbb B_A,
\tag{5.5}
$$

and hence

$$
\boxed{
\Omega_{\mathcal N^-,B}^{\rm Max}
=\int dv\,
(\psi_1^B\partial_v\psi_2^B
-\psi_2^B\partial_v\psi_1^B).}
\tag{5.6}
$$

No $L$ or $\lambda$ remains: $dS_q=\mathsf r^2d\Omega$ cancels the inverse
sphere metric, the electric $\sqrt\lambda$ factors cancel between $A_v$ and
$\mathcal E$, and the vector harmonics have unit norm.

On an outgoing sheet $v=\mathrm{const}$,

$$
(A_u)_i=\frac{\partial_u\eta_i-\partial_u\psi_i^E}{\sqrt\lambda}Y,
\qquad
(F_{uA})_i=\partial_u\psi_i^E\mathbb E_A.
\tag{5.7}
$$

The minus sign multiplying the angular term in (3.6) of `01` gives

$$
\boxed{
\Omega_{\mathcal N^+,E,\mathrm{pres}}^{\rm Max}
=-\int du\,
(\psi_1^E\partial_u\psi_2^E
-\psi_2^E\partial_u\psi_1^E)
+[b_{12}]_{u_{\rm i}}^{u_{\rm f}},}
\tag{5.8}
$$

$$
\boxed{
\Omega_{\mathcal N^+,B,\mathrm{pres}}^{\rm Max}
=-\int du\,
(\psi_1^B\partial_u\psi_2^B
-\psi_2^B\partial_u\psi_1^B).}
\tag{5.9}
$$

Together with the scattering sign in (2.3), these become the same positive
master form on future data.

## 6. Endpoints, corners, and the proper-gauge kernel

### 6.1 Spectral core

For $c_{jm}^P\in C_c^\infty(K)$ with $K\Subset(0,\infty)$, the incoming and
outgoing profiles are Schwartz in $v$ and $u$. At fixed $\tau_0$, the two
asymptotic pieces also tend to zero as $\rho\to\infty$. Hence

$$
\psi_i^P\longrightarrow0
\quad\text{at every limiting endpoint of (3.6) and (3.8).}
\tag{6.1}
$$

For potential representatives whose frame coefficients have finite or
polynomially bounded traces, (6.1) implies $b_{12}\to0$. Equivalently, one may
use the optional $q_E=0$ reconstruction representative after quotienting.
Thus (4.7), (5.4), and (5.8) have no surviving cut term on the core.

The $j\geq1$ normal electric and magnetic cut curvatures are nevertheless not
discarded. On the regular bulk range they are the master cut values

$$
\mathcal E_{jm}=-\frac{\sqrt\lambda}{L^2}\Psi^E_{jm},
\qquad
\mathcal B_{jm}=-\frac{\sqrt\lambda}{L^2}\Psi^B_{jm},
\tag{6.2}
$$

transported by the constraints of `01`. The smooth-ball $j=0$ flux sectors
are absent by `02`. Therefore the horizon datum used here is
constraint/corner complete even though no independent corner oscillator is
appended on the bulk-compatible core.

### 6.2 Proper gauge is exactly the degeneracy

With the convention (2.2), a gauge tangent obeys

$$
\boldsymbol\omega(d\varepsilon,\delta A)
=-d(\varepsilon *\delta F),
\qquad
\Omega_\Sigma(d\varepsilon,\delta)
=-\int_{\partial\Sigma}\varepsilon *\delta F.
\tag{6.3}
$$

It is in the kernel for every allowed $\delta F$ exactly when the boundary
pairing in (6.3) vanishes, which is the proper-gauge criterion of `01`.
Conversely, if a tangent is in the kernel, the master formula in section 7 and
$\omega>0$ imply that every electric and magnetic coefficient vanishes. Thus
$\delta F=0$. Since $H^1(B^3)=0$, the potential tangent is $d\varepsilon$, and
(6.3) then forces it to be proper. Hence

$$
\boxed{\ker\Omega_{\rm potential}=\mathcal G_{\rm proper}.}
\tag{6.4}
$$

An endpoint transformation for which (6.3) is nonzero is charged and is not
divided out. If independent endpoint fluxes and frames are admitted, the
$b_{12}$ term must be represented explicitly. No universal edge oscillator is
deduced from the core theorem.

### 6.3 Completed space

Point evaluation is not continuous in the CPS norm of `00`. Therefore the
completed theory is defined by density from the gauge-invariant master/core
form, not by assigning fictitious values to $b_{12}$ at $B$. Calculation `08`
constructs a different raw trace topology with genuine traces, nonzero memory,
and charged relative frames, and proves its finite canonical endpoint pairing.
That construction does not prove that every trace-core vector lies in the
smooth-center bulk range; this remaining range question is `T1-trace`/`T2-trace`.

## 7. Spectral factor, angular sum, and scattering

For one real horizon profile,

$$
f(v)=\frac1{\sqrt{2\pi}}\int_0^\infty d\omega\,
\left[c(\omega)e^{-i\omega v}
+\overline{c(\omega)}e^{i\omega v}\right].
\tag{7.1}
$$

The $2\pi$ from the Fourier delta function cancels the two
$1/\sqrt{2\pi}$ factors. The two positive/negative-frequency cross terms then
give

$$
\boxed{
\int_{\mathbb R}dv\,(f_1\partial_vf_2-f_2\partial_vf_1)
=4\int_0^\infty d\omega\,\omega\,
\operatorname{Im}(\overline{c_1}c_2).}
\tag{7.2}
$$

The delta-normalized regular bulk modes of `03` give the identical formula
from (4.3) and the master part of (4.7). Summing the orthogonal exact and
coexact harmonics therefore yields

$$
\boxed{
\Omega_{\rm bulk}
=\Omega_-
=4\sum_{P=E,B}\sum_{j\geq1,m}
\int_0^\infty d\omega\,\omega\,
\operatorname{Im}
(\overline{c_{1,jm}^P}c_{2,jm}^P).}
\tag{7.3}
$$

On $\mathcal H^+$ the coefficient is $S_j(\omega)c_{jm}^P(\omega)$. Since
$|S_j|=1$ for real $\omega$,

$$
\Omega_+(\mathscr Sf_1,\mathscr Sf_2)
=\Omega_-(f_1,f_2).
\tag{7.4}
$$

This proves symplectic scattering after the raw Maxwell normalization and the
future-sheet sign have been fixed independently.

## 8. Density and continuity

Let $\|\cdot\|_{\mathrm{CPS},0}$ be (5.5) of `00`. By Cauchy--Schwarz,

$$
\begin{aligned}
|\Omega(c_1,c_2)|
&\leq4
\left(\sum_{P,j,m}\int_0^\infty\omega|c_1|^2d\omega\right)^{1/2}
\left(\sum_{P,j,m}\int_0^\infty\omega|c_2|^2d\omega\right)^{1/2}\\
&\leq2\|c_1\|_{\mathrm{CPS},0}\|c_2\|_{\mathrm{CPS},0}.
\end{aligned}
\tag{8.1}
$$

Thus the core form has a unique continuous extension to every angularly
weighted CPS completion. T1 says that $R_-$ and its inverse extend
continuously there, so the core equality extends by density. Multiplication by
$S_j$ is unitary for both the $\omega$ and $\omega^2$ weights, hence (7.4)
extends by the same argument.

Weak nondegeneracy follows directly from (7.3): if $\Omega(c,d)=0$ for every
core test family $d$, localization in $(P,j,m,\omega)$ gives $c=0$ almost
everywhere. At potential level this is precisely the quotient statement
(6.4).

## 9. Theorem T2

**Theorem 9.1.** Let $\mathcal P_{\rm bulk}^{(s)}$ and
$\mathcal X_{\mathcal H^-}^{\mathrm{comp},(s)}$ be the spaces of `00` and
`03`, with proper gauge divided out and with endpoint values understood only
where traces exist. Then $R_-$ is a continuous symplectic bijection,

$$
R_-^*\Omega_-=\Omega_{\rm bulk}.
\tag{9.1}
$$

The exact half-line scattering map
$\mathscr S=R_+R_-^{-1}$ is symplectic,

$$
\mathscr S^*\Omega_+=\Omega_-.
\tag{9.2}
$$

**Proof.** Equations (3.6), (4.7), and (5.4)--(5.6) prove the equality on every
finite past triangle, including the electric cut term. Center regularity kills
the center face. Section 6 proves the endpoint limit on the spectral core and
identifies exactly the gauge kernel. Equation (7.3) fixes all angular,
$L$, $\lambda$, and Fourier factors. Equation (8.1) extends the equality by
density. Equations (3.8), (5.8)--(5.9), and $|S_j|=1$ prove (9.2). $\square$

## 10. Regression

`../scripts/symplectic_normalization.wl` checks, for $j=1,2,3$:

1. the fixed field-space ordering against $\delta q\wedge\delta p$;
2. the electric bulk identity (4.7), including its endpoint derivative;
3. the past and future raw electric identities (5.4) and (5.8);
4. the magnetic identities (4.3), (5.6), and (5.9);
5. cancellation of $L$ and $\lambda_j$;
6. the $2\pi$ Fourier normalization and the factor $4$ in (7.2);
7. center endpoint vanishing for $j=1,2,3$.

All listed exact residuals vanish. Their status is `checked symbolically`; the
finite-region, density, and kernel arguments above carry the `proved` status.

## 11. Boundary of the result

The following are not consequences of T2:

- continuity of pointwise endpoint traces on the energy-only space;
- vanishing of every possible half-horizon memory configuration;
- quotienting charged endpoint transformations;
- existence of an independent universal edge oscillator;
- Peierls equality, a Fock representation, or a Bunch--Davies state.

Those questions are addressed, in dependency order, in `05`--`08`.
