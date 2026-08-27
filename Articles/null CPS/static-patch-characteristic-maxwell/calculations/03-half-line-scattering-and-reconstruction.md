# Exact Half-Line Scattering and Past-Horizon Reconstruction

## 1. Direct verdict

For every $j\geq1$, both Maxwell polarizations are governed by the unique Friedrichs/self-adjoint half-line operator

$$
H_j=-\partial_\rho^2+\frac{j(j+1)}{\sinh^2\rho}
\quad\text{on }L^2(0,\infty).
\tag{1.1}
$$

Its spectrum is purely absolutely continuous and equal to $[0,\infty)$; it has no negative eigenvalue, no positive $L^2$ eigenvalue, no finite-energy zero mode, and no regular zero-energy resonance. The exact regular solution with unit incoming horizon amplitude has

$$
\boxed{
S_j(\omega)
=-\prod_{n=1}^{j}\frac{n-i\omega}{n+i\omega}
=-\frac{\Gamma(j+1-i\omega)\Gamma(1+i\omega)}
{\Gamma(1-i\omega)\Gamma(j+1+i\omega)}.}
\tag{1.2}
$$

For real $\omega$, $|S_j(\omega)|=1$. Past-horizon data in the independently defined spectral class reconstruct a unique center-regular bulk solution, and future-horizon restriction multiplies every $(P,j,m,\omega)$ coefficient by $S_j(\omega)$. This proves T1 on the smooth spectral core and on the infrared-controlled CPS completion of `00`.

The result is a restriction/reconstruction theorem derived after the action and constraint analysis. Stationary modes are used as the spectral resolution of the proved half-line operator, not as a substitute for the CPS construction.

## 2. Operator domain and center endpoint

Start from the positive quadratic form

$$
q_j[\psi]
=\int_0^\infty d\rho\left(
|\psi'|^2+j(j+1)\operatorname{csch}^2\rho\,|\psi|^2
\right),
\tag{2.1}
$$

initially on $C_c^\infty(0,\infty)$. Its closure defines the Friedrichs realization of $H_j$.

Near the center,

$$
\frac{j(j+1)}{\sinh^2\rho}
=\frac{j(j+1)}{\rho^2}+O(1).
\tag{2.2}
$$

The two local branches of $H_j\psi=\omega^2\psi$ are

$$
\psi_{\rm reg}=O(\rho^{j+1}),
\qquad
\psi_{\rm sing}=O(\rho^{-j}).
\tag{2.3}
$$

Since $j(j+1)\geq2>3/4$, $\rho=0$ is limit point. Infinity is also limit point because the potential is real, locally integrable away from zero, and exponentially decaying there. Hence no boundary parameter is available: the closure is the unique self-adjoint realization compatible with smooth-center regularity.

Status: `proved` by the Weyl limit-point criterion.

## 3. Positivity, spectrum, and zero energy

Equation (2.1) gives $H_j\geq0$, so negative bound states are impossible. Since

$$
j(j+1)\operatorname{csch}^2\rho=O(e^{-2\rho}),
\tag{3.1}
$$

the potential is short range at infinity. It is a relatively compact perturbation of the free Dirichlet half-line operator away from the fixed singular endpoint, so

$$
\sigma_{\rm ess}(H_j)=[0,\infty).
\tag{3.2}
$$

Standard one-dimensional short-range asymptotics imply that a positive-energy solution is a nondecaying combination of $e^{\pm i\omega\rho}$; therefore no positive-energy $L^2$ eigenfunction exists. Section 5 constructs a complete delta-normalized generalized eigenbasis, ruling out singular-continuous spectrum. Thus

$$
\boxed{
\sigma(H_j)=\sigma_{\rm ac}(H_j)=[0,\infty),
\qquad
\sigma_{\rm pp}(H_j)=\varnothing.}
\tag{3.3}
$$

If a form-domain vector satisfied $H_j\psi=0$, then

$$
0=\langle\psi,H_j\psi\rangle=q_j[\psi]
\tag{3.4}
$$

would force both $\psi'=0$ and $j(j+1)\operatorname{csch}^2\rho\,\psi=0$ almost everywhere, hence $\psi=0$. More explicitly, the regular zero-energy solution generated in section 4 behaves as

$$
z_j(\rho)\sim C_j\rho^{j+1}\quad(\rho\to0),
\qquad
z_j(\rho)\sim j!\,\rho+O(1)\quad(\rho\to\infty),
\tag{3.5}
$$

and is not $L^2$ or finite energy. The second zero-energy solution is bounded at infinity but has the singular $\rho^{-j}$ center branch. There is therefore no regular bounded zero resonance.

This does not remove $\omega\to0$ radiative sequences. It removes an actual zero-frequency eigenvector. Their distinction is part of T4/`08`.

## 4. Darboux/shape-invariance ladder

Define

$$
\mathcal A_j=\partial_\rho+j\coth\rho,
\qquad
\mathcal A_j^\dagger=-\partial_\rho+j\coth\rho.
\tag{4.1}
$$

Here $H_0=-\partial_\rho^2$ denotes the Friedrichs/Dirichlet free half-line operator. The following identities first hold on the common core $C_c^\infty(0,\infty)$ and then determine the corresponding closed-operator intertwiners.

Direct multiplication gives

$$
\boxed{
\mathcal A_j^\dagger\mathcal A_j=H_j+j^2,
\qquad
\mathcal A_j\mathcal A_j^\dagger=H_{j-1}+j^2.}
\tag{4.2}
$$

Consequently

$$
H_j\mathcal A_j^\dagger
=\mathcal A_j^\dagger H_{j-1}.
\tag{4.3}
$$

Let

$$
\mathcal L_j
:=\mathcal A_j^\dagger\mathcal A_{j-1}^\dagger
\cdots\mathcal A_1^\dagger.
\tag{4.4}
$$

Applying $\mathcal L_j$ to a free half-line solution produces an $H_j$ solution. In particular,

$$
\mathcal L_j\sin(\omega\rho)=O(\rho^{j+1})
\tag{4.5}
$$

at the center. Repeated use of (4.2) also gives the norm multiplier

$$
\prod_{n=1}^j(\omega^2+n^2).
\tag{4.6}
$$

## 5. Exact regular modes and normalization

The delta-normalized regular generalized eigenfunction is

$$
\boxed{
\phi_{\omega j}(\rho)
=\sqrt{\frac2\pi}\,
\frac{\mathcal L_j\sin(\omega\rho)}
{\sqrt{\prod_{n=1}^j(\omega^2+n^2)}},
\qquad\omega>0.}
\tag{5.1}
$$

It obeys

$$
H_j\phi_{\omega j}=\omega^2\phi_{\omega j},
\qquad
\int_0^\infty d\rho\,
\phi_{\omega j}(\rho)\phi_{\omega'j}(\rho)
=\delta(\omega-\omega').
\tag{5.2}
$$

The normalization follows by starting from

$$
\sqrt{\frac2\pi}\sin(\omega\rho)
\tag{5.3}
$$

for the free Dirichlet half-line transform and moving the ladder operators between generalized modes. Equation (4.2) contributes $\omega^2+n^2$ at the $n$-th step. The same intertwining constructs the inverse transform on a dense core, so (5.1) is complete rather than merely orthogonal.

More explicitly, on the spectral subspace of $H_{j-1}$ define

$$
T_j:=\mathcal A_j^\dagger(H_{j-1}+j^2)^{-1/2}.
\tag{5.3a}
$$

The second factorization in (4.2) gives $T_j^\dagger T_j=1$. The orthogonal complement of its range is $\ker T_j^\dagger=\ker\mathcal A_j$. But

$$
\mathcal A_j\psi=0
\quad\Longrightarrow\quad
\psi=C\sinh^{-j}\rho,
\tag{5.3b}
$$

which is not in $L^2(0,\infty)$ at the center for $j\geq1$. Hence $T_j$ is onto as well as isometric. Iterating $T_1,\ldots,T_j$ transports the complete free Dirichlet spectral resolution to (5.1), with no missing finite-dimensional sector.

For scattering, choose instead

$$
\boxed{
\chi_{\omega j}(\rho)
=-\frac{2i}{\prod_{n=1}^j(n+i\omega)}
\mathcal L_j\sin(\omega\rho).}
\tag{5.4}
$$

Then

$$
g_{\omega j}(\rho):=\frac{\chi_{\omega j}(\rho)}{\sqrt{2\pi}}
\tag{5.5}
$$

differs from (5.1) only by an $\omega$-dependent phase and has the same delta normalization.

## 6. Exact scattering phase

At large $\rho$, $\coth\rho\to1$, and

$$
\mathcal L_j e^{+i\omega\rho}
\sim\prod_{n=1}^j(n-i\omega)e^{+i\omega\rho},
\tag{6.1}
$$

$$
\mathcal L_j e^{-i\omega\rho}
\sim\prod_{n=1}^j(n+i\omega)e^{-i\omega\rho}.
\tag{6.2}
$$

Substituting into (5.4),

$$
\boxed{
\chi_{\omega j}(\rho)
\sim e^{-i\omega\rho}
+S_j(\omega)e^{+i\omega\rho},}
\tag{6.3}
$$

where $S_j$ is (1.2). The Gamma form follows from

$$
\prod_{n=1}^j(n\mp i\omega)
=\frac{\Gamma(j+1\mp i\omega)}{\Gamma(1\mp i\omega)}.
\tag{6.4}
$$

For real $\omega$, numerator and denominator in every factor are complex conjugates, hence

$$
\boxed{|S_j(\omega)|=1,\qquad S_j(0)=-1.}
\tag{6.5}
$$

The zero-frequency value in (6.5) is a limit of the radiative phase. It is not an additional zero mode.

## 7. Restriction and reconstruction

### 7.1 Spectral bulk solution

For one real master sector, let $c(\omega)\in C_c^\infty(0,\infty)$. Define

$$
\boxed{
\Psi(\tau,\rho)
=\int_0^\infty d\omega\left[
c(\omega)e^{-i\omega\tau}g_{\omega j}(\rho)
+\overline{c(\omega)}e^{i\omega\tau}\overline{g_{\omega j}(\rho)}
\right].}
\tag{7.1}
$$

The angularly weighted sum specified in `00` converges smoothly on compact subsets. Equation (4.5) gives center regularity.

### 7.2 Past and future horizon profiles

Taking the wave-packet limit $\rho\to\infty$ with $v=\tau+\rho$ fixed gives the incoming profile

$$
\boxed{
f_-(v)=\frac1{\sqrt{2\pi}}
\int_0^\infty d\omega\left[
c(\omega)e^{-i\omega v}
+\overline{c(\omega)}e^{i\omega v}
\right].}
\tag{7.2}
$$

Taking $\rho\to\infty$ with $u=\tau-\rho$ fixed gives

$$
\boxed{
f_+(u)=\frac1{\sqrt{2\pi}}
\int_0^\infty d\omega\left[
S_j(\omega)c(\omega)e^{-i\omega u}
+\overline{S_j(\omega)c(\omega)}e^{i\omega u}
\right].}
\tag{7.3}
$$

The limits are wave-packet/distributional limits; an individual stationary generalized eigenfunction is not asserted to converge pointwise at a horizon endpoint.

### 7.3 Independent horizon data space

Define $\mathcal X_{\mathcal H^-}^{\mathrm{comp,core}}$ independently as follows. Expand a real horizon one-form in exact/coexact harmonics,

$$
r_A(v,x)=\sum_{j\geq1,m}
\left(r^E_{jm}(v)\mathbb E_A^{jm}
+r^B_{jm}(v)\mathbb B_A^{jm}\right),
\tag{7.4}
$$

and require its positive-frequency coefficients to have the form

$$
r^{E,+}_{jm}(\omega)=i\omega c^E_{jm}(\omega),
\qquad
r^{B,+}_{jm}(\omega)=-i\omega c^B_{jm}(\omega),
\tag{7.5}
$$

for coefficient families satisfying the spectral and angular conditions (5.2)--(5.3) of `00`. Complete the transported fields $\mathcal E,F_{AB}$ using (5.1)--(5.2) of `01` and the master cut dictionary (6.3) there. No $j=0$ flux is allowed.

Because the support is separated from $\omega=0$, (7.5) has the unique inverse

$$
c^E_{jm}=\frac{r^{E,+}_{jm}}{i\omega},
\qquad
c^B_{jm}=-\frac{r^{B,+}_{jm}}{i\omega}.
\tag{7.6}
$$

Thus (7.4)--(7.6) characterize the target without referring to $\operatorname{Ran}(R_-)$.

### Theorem 7.1 — T1 on the scattering core

For every angular weight and both polarizations, past-horizon restriction

$$
R_-:\mathcal P_{\mathrm{bulk}}^{\rm core}
\longrightarrow
\mathcal X_{\mathcal H^-}^{\mathrm{comp,core}}
\tag{7.7}
$$

is a bijection. Its inverse is (7.6), followed by (7.1) and the Maxwell dictionary (8.2)--(8.3) of `02`.

#### Proof

Project $F_{vA}$ onto the exact/coexact vector harmonics. Equation (9.1) of `02` gives (7.5), so restriction maps into the declared target. Since $\omega>0$ on the support, (7.6) reconstructs a unique coefficient family. Equations (5.1) and (7.1) then give a unique Friedrichs-domain, center-regular bulk master solution, and `02` reconstructs a unique Maxwell field strength. This proves surjectivity.

If the past radiative field vanishes, (7.5) gives $c^E=c^B=0$. There is no $j=0$ sector by `02`, and section 3 excludes a finite-energy zero mode. Hence $F=0$. At potential level, two representatives with the same $F$ differ by an exact one-form on $B^3$; on the zero-endpoint core that direction is proper gauge. This proves injectivity. Continuity in every core seminorm follows because multiplication/division by $\omega$ is bounded on each compact $K\Subset(0,\infty)$, the generalized transform is unitary, and the angular multiplier losses are polynomial and absorbed by neighboring weights. $\square$

### 7.4 CPS completion

The core theorem extends by density to the completion

$$
2\sum_{P,j,m}(1+\lambda_j)^s
\int_0^\infty(\omega+\omega^2)|c^P_{jm}|^2d\omega<\infty.
\tag{7.8}
$$

In radiative variables, the corresponding norm is

$$
\boxed{
\|r\|_{\mathcal X,s}^2
=2\sum_{P,j,m}(1+\lambda_j)^s
\int_0^\infty d\omega\,
\left(1+\frac1\omega\right)|r^{P,+}_{jm}(\omega)|^2.}
\tag{7.9}
$$

Equations (7.5)--(7.6) are isometries between (7.8) and (7.9), up to the displayed convention-dependent factor (2). Therefore T1 is also `proved` on this infrared-controlled completion.

In this Hilbert completion, the transported $\mathcal E$ and $F_{AB}$ are the weak antiderivatives fixed by the same spectral coefficients. A pointwise value at $B$ is not part of the completed datum unless a separate trace hypothesis is imposed. Thus the completed T1 statement does not silently reintroduce corner values that are discontinuous in (7.9).

The larger norm containing only $\omega^2|c|^2$ is the static finite-energy space. T1 as a set-theoretic energy transform still has a spectral meaning there, but the characteristic symplectic form and endpoint traces are not continuous in that norm. Calculation `08` therefore classifies the universal energy-only point-trace statement `T1-max` as `false`, not merely unproved. After adjoining the independent trace topology of `08`, the identification of its maximal smooth-center bulk range (`T1-trace`) remains `conditional`.

## 8. Energy and reduced symplectic scattering

Delta normalization gives

$$
\boxed{
H_{\partial_\tau}[\Psi]
=2\int_0^\infty d\omega\,\omega^2|c(\omega)|^2
=\int_{-\infty}^{\infty}dv\,|\partial_vf_-(v)|^2.}
\tag{8.1}
$$

The same identity holds on $\mathcal H^+$ because $|S_j|=1$.

For two real profiles, define the reduced characteristic form

$$
\Omega_-(f_1,f_2)
=\int_{-\infty}^{\infty}dv\,
\left(f_1\partial_vf_2-f_2\partial_vf_1\right).
\tag{8.2}
$$

Using (7.2),

$$
\boxed{
\Omega_-(f_1,f_2)
=4\int_0^\infty d\omega\,\omega\,
\operatorname{Im}\left(\overline{c_1(\omega)}c_2(\omega)\right).}
\tag{8.3}
$$

Multiplication by $S_j$ preserves (8.3), so

$$
\Omega_+(\mathscr Sf_1,\mathscr Sf_2)=\Omega_-(f_1,f_2)
\tag{8.4}
$$

for the reduced master form. Here $\Omega_+$ is the positive outgoing
scattering form; `04` proves that it equals minus the future-generator
presentation pullback of the raw Maxwell current. Equation (8.4) establishes
the modewise spectral precursor. The full raw-Maxwell normalization,
electric-parent cut term, proper-gauge kernel, and density extension are proved
independently in `04`, Theorem 9.1.

## 9. Endpoint and memory boundary

For core coefficients, $f_\pm$ are Schwartz functions of static null time. Their limits vanish as $u,v\to\pm\infty$, so no core memory or independent cut constant is present. This is a policy of the first theorem, not a theorem that every finite-energy source-free static-patch solution has zero half-horizon endpoint difference.

A profile with nonzero endpoint difference typically has $c(\omega)\sim\omega^{-1}$ near zero. It can have finite energy because $\omega^2|c|^2$ is integrable, while failing the CPS condition $\omega|c|^2\in L^1$. Such configurations are precisely why finite energy, finite symplectic norm, pointwise corner data, large gauge, and memory must not be conflated.

The 2025 cosmological-horizon memory result reviewed in `../literature/literature-comparison.md` proves vanishing memory for the relevant global source-free local-observable solutions on a complete cosmological horizon. It does not by itself identify the endpoint-completed CPS of a single static-patch horizon half or prove the direct-null/stretched-horizon reduction comparison.

## 10. Regression and numerical thresholds

`../scripts/scattering_phase_checks.py` uses the exact Darboux polynomials and independently evaluates:

| check | observed maximum error | threshold |
|---|---:|---:|
| product phase versus complex Gamma phase | $7.90\times10^{-14}$ | $2\times10^{-12}$ |
| unit modulus | $6.67\times10^{-16}$ | $5\times10^{-15}$ |
| Schrödinger residual | $6.26\times10^{-12}$ | $10^{-11}$ |
| unit incoming amplitude | $1.60\times10^{-11}$ | $2\times10^{-10}$ |
| outgoing amplitude versus $S_j$ | $1.60\times10^{-11}$ | $2\times10^{-10}$ |
| normalized Jost Wronskian | $1.61\times10^{-12}$ | $2\times10^{-10}$ |
| Wronskian constancy | $1.62\times10^{-12}$ | $2\times10^{-10}$ |
| wave-packet bulk/asymptotic reconstruction | $5.33\times10^{-8}$ | $2\times10^{-7}$ |
| bulk energy versus horizon flux | $1.68\times10^{-16}$ | $2\times10^{-6}$ |
| spectral symplectic scattering | (0) at printed precision | $2\times10^{-13}$ |

The tested samples include $j=1,2,3$, several frequencies, and three wave packets. These checks have status `checked symbolically` only where exact algebra is used and otherwise support the stated numerical thresholds. The operator-domain and reconstruction theorems are supplied by sections 2--8, not inferred from the finite sample.

## 11. Novelty boundary

The existence of a free massless all-spin de Sitter horizon S-matrix, a radiative horizon symplectic form, and hard-frequency horizon data is known. The scalar static-patch scattering-phase viewpoint is also known. Therefore the following novelty claims are `false`:

- “this is the first free Maxwell static-patch horizon S-matrix”;
- “this is the first horizon symplectic quantization of the photon in de Sitter”;
- “the finite product (1.2) alone is a publishable novelty.”

The only viable article-level contribution would be the combined action-first constraint/corner completion, precise half-horizon function spaces and proper-gauge quotient, full Lee--Wald isomorphism, Peierls equality, and endpoint/topology classification. Calculations `04`, `06`, and `08` now close those links on scoped CPS/trace spaces. The publication novelty gate is `false`; the maximal bulk-compatible range inside the separately topologized trace space remains `conditional`.
