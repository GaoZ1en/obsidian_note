---
paper id: 2607.28543v1
title: "Soft charges and zero modes at null boundaries (2607.28543v1) — Harlow–Wu CPS rewrite"
authors:
  - Dušan Đorđević
  - Olivera Miskovic
  - Antonia Montecinos
  - Tatjana Vukašinac
publication date: 2026-07-30T17:12
url: https://arxiv.org/abs/2607.28543v1
summary: "Companion rewrite of 2607.28543 in the Harlow--Wu covariant-phase-space language used in Articles/Thesis/Bachelor. The constraint-kernel zero modes are read as first-class (null) directions of the presymplectic form pulled back to the constraint surface: large gauge carrying boundary data, not the compactly supported pure gauge removed by the quotient. The Regge--Teitelboim charge is read as the HW Noether charge with a corner-improved symplectic potential; the four model kernels and charges are tabulated in HW form. The Eq. (36) sign defect is repaired by the HW Hamilton equation."
tags: []
---

Back to [[2026_07_31_overview]] and [[Soft charges and zero modes at null boundaries (2607.28543v1)]].

This companion file rewrites the constraint-algebra construction of 2607.28543 in the **Harlow–Wu (HW) covariant phase space formalism** as used in the bachelor thesis (`Articles/Thesis/Bachelor/section 2 covariant phase space formalism and Noether theorem.md`). The source note is **not modified**. Equation tags `(S n)` refer to the source paper; `(HW n)` to the thesis section 2; `(R n)` to this rewrite.

# Why a rewrite is useful

The source paper works in a **null canonical (Hamiltonian constraint) language**: primary constraints $\chi_\alpha$, a bracket matrix $\Omega_{\alpha\beta}$, and radial kernel modes $U$. The thesis works in the **HW covariant language**: boundary Lagrangian $\ell$, corner term $C$, presymplectic potential

$$\begin{align}
\theta=\int_\Sigma(\Theta-\delta\ell-\mathrm dC),
\end{align}
\tag{HW 2.24}$$

presymplectic form $\omega=\delta\theta$, and Noether charge

$$\begin{align}
H_\lambda=X_\lambda\cdot\theta-\alpha_\lambda,
\end{align}
\tag{HW 2.28}$$

with the Hamilton equation

$$\begin{align}
X_\lambda\cdot\omega\big|_{\tilde{\mathcal P}}=-\delta H_\lambda\big|_{\tilde{\mathcal P}}.
\end{align}
\tag{HW 2.31}$$

The rewrite translates each object, and it exposes two things the source leaves implicit:

1. the zero modes are **first-class (null) directions of $\omega$ pulled back to the constraint surface** — equivalently kernel directions of the constraint-bracket matrix $\Omega$. They are *large* gauge (boundary-parametrized, so not removed by the quotient $\tilde{\mathcal P}/\tilde G$), not compactly supported pure gauge; their Abelian algebra follows from first-classness, not from being quotiented;
2. the printed sign defect in the source Eq. (36) is **fixed by the HW Hamilton equation** $X\cdot\omega=-\delta H$ — the corrected minus sign is not a convention choice but a consistency requirement.

# Notation dictionary (source → HW)

| Source paper | HW thesis counterpart | Meaning |
|---|---|---|
| null hypersurface $\Xi=\{u=\mathrm{const}\}$ | Cauchy slice $\Sigma$ | where the presymplectic form is evaluated |
| codim-2 boundary $\partial\Xi=\{r=r_0\}$ | corner $\partial\Sigma$ | where the Noether charge lives |
| primary constraints $\chi_\alpha\approx0$ | constraints defining $\tilde{\mathcal P}\subset\mathcal C$ | the constraint surface |
| bracket matrix $\Omega_{\alpha\beta}(x,x')$ | pullback of $\omega$ to $\tilde{\mathcal P}$ | its kernel = first-class (null) directions |
| residual kernel $v^\alpha=P^\alpha{}_I V^I$ | null directions of $\omega|_{\tilde{\mathcal P}}$ | boundary-parametrized large gauge / soft zero modes |
| bulk generator $G[\varepsilon]=\int_\Xi\chi_\alpha\eta^\alpha$ | Hamiltonian vector field $X_\varepsilon$ | generator of the residual shift |
| RT boundary term $Q[\varepsilon]$ | $-\delta\ell-\mathrm dC$ corner improvement | makes $\delta G$ integrable |
| improved charge $G_Q=G+Q$ | HW Noether charge $H_\varepsilon=X_\varepsilon\cdot\theta-\alpha_\varepsilon$ | the observable |
| tangent lift $\delta_\varepsilon\pi_\alpha=-\int\frac{\delta f_\alpha}{\delta\psi^\beta}\eta^\beta$ | $X_\varepsilon\cdot\omega=-\delta H_\varepsilon$ | fixes the sign (source Eq. 36 is wrong) |
| $\{Q[\varepsilon_1],Q[\varepsilon_2]\}^*=0$ | charges of first-class (soft) directions commute | Abelian, no central term |

# The rewrite step by step

## 1. Presymplectic structure on the null slice

On $\Xi$ with fields $\Psi^\Lambda$ and conjugate momenta $\Pi_\Lambda$, the canonical field-space two-form is

$$\begin{align}
\omega_\Xi=\int_\Xi\delta\Pi_\Lambda\wedge\delta\Psi^\Lambda.
\end{align}
\tag{S 35}$$

In HW form this is the presymplectic potential

$$\begin{align}
\Theta_\Xi=\int_\Xi\Pi_\Lambda\,\delta\Psi^\Lambda,
\qquad
\omega_\Xi=\delta\Theta_\Xi,
\end{align}
\tag{R1}$$

the exact analogue of $\theta=\int_\Sigma(\Theta-\delta\ell-\mathrm dC)$ with $\ell=C=0$ at the abstract stage. The constraints $\chi_\alpha=\pi_\alpha+f_\alpha(\Psi)\approx0$ select the presymplectic (not symplectic) reduction.

## 2. Zero modes as first-class (null) directions

The constraint bracket matrix

$$\begin{align}
\{\chi_\alpha(x),\chi_\beta(x')\}=\Omega_{\alpha\beta}(x,x')
\end{align}
\tag{S 1}$$

is the pullback of $\omega_\Xi$ to the constraint surface (in canonical coordinates the two coincide up to the $f$-dependent shift). A residual vector

$$\begin{align}
v^\alpha(x)=\int_{\partial\Xi}P^\alpha{}_I(x,\varphi')V^I(\varphi'),
\qquad
\int_\Xi\Omega_{\alpha\beta}P^\beta{}_I=0
\end{align}
\tag{S 2,4}$$

is therefore a **first-class (null) direction**: $X_v$ is tangent to $\tilde{\mathcal P}$ and annihilates the pullback of $\omega_\Xi$ to the constraint surface, $\omega_\Xi(X_v,\cdot)|_{\tilde{\mathcal P}}=0$ — equivalently $\Omega v=0$. Under angular locality,

$$\begin{align}
P^\alpha{}_I(x,\varphi')=U^\alpha{}_I(r,\varphi)\delta^{(d-1)}(\varphi-\varphi'),
\qquad
\widehat{\mathcal L}_{\alpha\beta}U^\beta{}_I=0,
\end{align}
\tag{S 20–21}$$

the kernel equation is a radial ODE for $U$. The residual shift is $\delta_\varepsilon\psi^\alpha=U^\alpha{}_I\varepsilon^I$.

**HW reading.** Only the *compactly supported* first-class directions are pure gauge in the strict sense: the quotient $\tilde{\mathcal P}/\tilde G$ (thesis Eq. HW 2.8 discussion) removes them and they carry no charge. The zero modes here are the *large* ones — their smearing data live on $\partial\Xi$, so they survive the quotient and become the soft charges $Q[\varepsilon]$ once Section 3 makes them integrable. Removing exactly the small directions is what turns the presymplectic form into a symplectic one on the physical phase space; the large directions are precisely the charges that survive.

## 3. RT completion is the HW corner improvement

The bulk generator $G[\varepsilon]=\int_\Xi\chi_\alpha\eta^\alpha$ is not differentiable: its variation has the radial obstruction

$$\begin{align}
\delta G=\text{regular}-\int_{\partial\Xi}k^r_{\alpha\beta}\eta^\alpha\delta\psi^\beta.
\end{align}
\tag{S 30}$$

Adding

$$\begin{align}
\delta Q=\int_{\partial\Xi}k^r_{\alpha\beta}\eta^\alpha\delta\psi^\beta
\end{align}
\tag{S 31}$$

cancels it. This is the HW move $(\Theta+\delta\ell)|_\Gamma=\mathrm dC$ in disguise: the boundary term $\delta Q$ plays the role of $-\delta\ell-\mathrm dC$, converting the bare presymplectic potential into an integrable one. Under fixed leading data $\delta\bar k^r=\delta\bar U=0$, the charge is

$$\begin{align}
\boxed{\;Q[\varepsilon]=\int_{\partial\Xi}\bar k^r_{\alpha\beta}\bar U^\alpha{}_I\varepsilon^I\psi^\beta\;}.
\end{align}
\tag{S 34, R2}$$

## 4. The tangent-lift sign is fixed by the HW Hamilton equation

Tangency $\delta_\varepsilon\chi_\alpha=0$ with $\chi_\alpha=\pi_\alpha+f_\alpha$ requires

$$\begin{align}
\boxed{\;\delta_\varepsilon\pi_\alpha(x)=-\int_\Xi\mathrm d^dx'\,\frac{\delta f_\alpha(x)}{\delta\psi^\beta(x')}\eta^\beta(x')\;}.
\end{align}
\tag{R3}$$

The source prints a plus sign (its Eq. 36); that gives $\delta_\varepsilon\chi_\alpha=2\,\delta f_\alpha[\eta]$, incompatible with tangency. **HW fixes the sign**: with the corrected lift, the double contraction reproduces $X_\varepsilon\cdot\omega_\Xi=-\delta H_\varepsilon$ on the constraint surface, the thesis's Hamilton equation (HW 2.31). The plus sign would violate it.

## 5. Abelian reduced algebra

With both profiles in the kernel,

$$\begin{align}
\{Q[\varepsilon_1],Q[\varepsilon_2]\}^*=\int_{\Xi\times\Xi}\eta_1^\alpha\Omega_{\alpha\beta}\eta_2^\beta=0.
\end{align}
\tag{S 38–40, R4}$$

**HW reading.** Commutators of the soft charges vanish because the underlying directions are first-class: null directions of $\omega|_{\tilde{\mathcal P}}$ cannot source a central extension. This is not the vanishing of quotiented pure gauge — each $Q[\varepsilon]$ is a genuine boundary-parametrized charge — but the commutativity of the soft sector. The residual shift algebra is Abelian by construction, not by a model-specific miracle.

# The four models in HW form

For each model: fields, symplectic potential, constraint, radial kernel, boundary charge. All kernels are solutions of $\widehat{\mathcal L}U=0$.

## 1. Four-dimensional scalar

- Fields: $\phi$; momentum $\pi_\phi$; constraint $\chi=\pi_\phi+f(\phi)\approx0$.
- Radial operator and kernel:

$$\begin{align}
\widehat{\mathcal L}=-2\epsilon\sqrt\gamma\,\partial_r(r\,\cdot),
\qquad
U=r^{-1},
\qquad
\bar k^r=\epsilon r^2\sqrt\gamma.
\end{align}
\tag{S scalar}$$

- Residual shift: $\delta_\varepsilon\phi=r^{-1}\varepsilon(\varphi^A)$ — a boundary-parametrized, radially decaying shift.
- HW charge (codim-2, quasilocal, boundary-linear):

$$\begin{align}
Q[\varepsilon]=\int_{\partial\Xi}\epsilon\,r\sqrt\gamma\,\varepsilon\,\phi,
\end{align}
\tag{R5}$$

i.e. $\epsilon\,r_0\sqrt\gamma\,\varepsilon(\varphi)\,\phi(r_0,\varphi)$ at $\partial\Xi=\{r=r_0\}$. The $r^{-1}$ falloff of the kernel is what makes the charge finite against $\bar k^r\sim r^2$.

## 2. Four-dimensional Maxwell–Pontryagin

- Fields: angular potential $A_A$; constraint matrix is vector-valued with

$$\begin{align}
\widehat{\mathcal L}^{AB}=-\frac{2\epsilon}{e^2}\sqrt\gamma\,\gamma^{AB}\partial_r,
\qquad
U^A{}_B=\delta^A{}_B,
\end{align}
\tag{S MP}$$

so the kernel is the **constant** boundary transformation $\delta_\varepsilon A_A=\varepsilon_A(\varphi)$.

- The boundary tensor

$$\begin{align}
\bar k^{r\,AB}=\epsilon\sqrt\gamma\,\sigma^{AB},
\qquad
\sigma^{AB}=\frac{1}{e^2}\gamma^{AB}-\frac{\epsilon\theta}{e^2\sqrt\gamma}\epsilon^{AB}
\end{align}
\tag{S 25}$$

decomposes into a **symmetric** Maxwell part ($\gamma^{AB}/e^2$) and an **antisymmetric** Pontryagin/Chern–Simons part ($\propto\epsilon^{AB}$). The radial constraint operator sees only the symmetric part (it is built from $\gamma^{AB}$); the CS part enters only the boundary observable:

$$\begin{align}
Q[\varepsilon]=\int_{\partial\Xi}\epsilon\sqrt\gamma\left(\frac{1}{e^2}\gamma^{AB}-\frac{\epsilon\theta}{e^2\sqrt\gamma}\epsilon^{AB}\right)\varepsilon_AA_B.
\end{align}
\tag{R6}$$

**HW remark.** This is a clean example of the general principle that the corner-improved charge is sensitive to terms invisible in the bulk constraint dynamics. Pure Maxwell is the $\theta=0$ specialization.

## 3. Three-dimensional Maxwell

- Field: $A_\varphi$; kernel is a radial square root:

$$\begin{align}
\widehat{\mathcal L}=-\frac{2\epsilon}{e^2\sqrt r}\partial_r(r^{-1/2}\,\cdot),
\qquad
U=\sqrt r,
\qquad
\bar k^r=\frac{\epsilon}{e^2}.
\end{align}
\tag{S 3d}$$

- Residual shift: $\delta_\varepsilon A_\varphi=\sqrt r\,\varepsilon$; the charge

$$\begin{align}
Q[\varepsilon]=\int_{\partial\Xi}\frac{\epsilon}{e^2}\sqrt r\,\varepsilon\,A_\varphi
\end{align}
\tag{R7}$$

is constant-weight in $r$ ($\bar k^r$ independent of $r$), the 3d special case.

## 4. Four-dimensional Yang–Mills

- The kernel is **covariantly constant**:

$$\begin{align}
\mathcal D_rU=0,
\qquad
U(\infty)=\mathbb 1,
\qquad
U(r,\varphi)=\mathcal P\exp\left(\int_r^\infty\mathrm dr'\,A_r(r',\varphi)\right),
\end{align}
\tag{S 26–27}$$

and the adjoint zero mode is

$$\begin{align}
v_A(x)=U(x)V_A(\varphi)U^{-1}(x).
\end{align}
\tag{S 28}$$

- **Field-dependence subtlety.** $U$ depends on the configuration through $A_r$. The displayed residual shift acts on $A_A$ with $\delta_\varepsilon U=0$ in the restricted example (the paper does not establish the general field-dependent-parameter bracket). In HW terms this means: the charge is a function on configuration space built from a parallel-transported probe $V_A(\varphi)$; a general variation $\delta A_r$ would move $U$, and the integrability of $Q[\varepsilon]$ under such variations is exactly the question the paper leaves open.

# Comparison with the thesis AdS$_3$ charge

The thesis's boundary charge (its Eq. HW 3.2.68)

$$\begin{align}
H_\xi=\frac{1}{8\pi G}\int_{\partial\Sigma}g^{(0)ab}(K_{bc}-K\gamma_{bc}+\gamma_{bc})\xi^{(0)c}\,\varepsilon^{(0)}_{aa_1}\mathrm dx^{a_1}
\end{align}$$

arises from the same machinery: a corner-improved Noether charge whose variation $\delta Q$ cancels the boundary obstruction $\delta G$. The structural difference:

| Thesis AdS$_3$ | Source paper 2607.28543 |
|---|---|
| asymptotic Killing/boundary diffeo parameter $\xi^{(0)a}$ | residual kernel profile $\varepsilon^I(\varphi)$ |
| field-independent boundary parameter | boundary-parametrized zero mode (kernel of $\Omega$) |
| charge algebra: Virasoro with central extension | charge algebra: Abelian, no central term |
| corner term from $\ell,C$ of the AdS action | RT term $Q$ from the null-canonical obstruction |

The Abelianness in the source is not a small-$c$ limit: it is the statement that kernel directions carry no central charge, in contrast to the diffeomorphism sector of AdS$_3$.

# What the rewrite adds beyond the source

1. **Conceptual unification.** Zero modes = first-class (null) directions of $\omega|_{\tilde{\mathcal P}}$ carrying boundary data (large gauge, surviving the quotient); RT charge = HW Noether charge with corner improvement; Abelian algebra = commutativity of soft charges, following from first-classness rather than from being quotiented. The three features of the paper are one fact about $\omega|_{\tilde{\mathcal P}}$ and its first-class directions.
2. **The sign fix is derived, not patched.** The HW Hamilton equation $X\cdot\omega=-\delta H$ selects the minus sign in the tangent lift (R3). The source's Eq. (36) plus sign violates it.
3. **Model dictionary in HW language.** Each of the four models is now a triplet (symplectic potential, radial kernel ODE, corner charge), ready to be compared with the CPS notes' conventions.

# Verification log

## Checked (Mathematica)

- **Kernel equations (S 21):** $\partial_r(r\cdot r^{-1})=0$ (scalar); constant kernel for Maxwell–Pontryagin; $\partial_r(r^{-1/2}\cdot\sqrt r)=0$ for $r>0$ (3d Maxwell). Zero residual each.
- **YM covariant constancy:** with $\partial_rU=-A_rU$ and $\partial_rU^{-1}=U^{-1}A_r$ (2×2 symbolic matrices), the adjoint zero mode satisfies $\mathcal D_r(UVU^{-1})=0$ with the covariant-derivative convention $\mathcal D_rv=\partial_rv+[A_r,v]$; also verified $\partial_r(UVU^{-1})=[UVU^{-1},A_r]$.
- **RT integrability (S 34):** with fixed leading data, $\delta Q$ is linear in $\psi$, so $\delta^2Q=0$.
- **Tangent lift (S 36 / R3):** plus sign gives $\delta\chi=2F\eta\ne0$; minus sign gives $\delta\chi=0$.
- **Reduced bracket (S 40):** $\eta_1^\alpha\Omega_{\alpha\beta}\eta_2^\beta=0$ on the kernel (both profiles in $\ker\Omega$).
- **Maxwell–Pontryagin $\sigma$ decomposition:** symmetric part $\gamma^{AB}/e^2$; antisymmetric CS part $\propto\epsilon^{AB}$; radial operator uses only $\gamma^{AB}$.
- **Charge densities:** scalar $\epsilon r\sqrt\gamma\,\varepsilon\phi$; 3d Maxwell $\epsilon\sqrt r\,\varepsilon A_\varphi/e^2$; MP symmetric + CS parts as in (R6).

## Assumptions

- Canonical null-slice coordinates on $\Xi$; angular locality of the kernel (S 20); fixed leading boundary data $\delta\bar k^r=\delta\bar U=0$ for integrability; the paper's sign conventions for $U(\infty)=\mathbb 1$ and $\mathcal P\exp$ ordering.

## Not verified

- The underlying actions and full primary/secondary constraint sets of the four models (not displayed in the source; the tabulated operators cannot be rederived from the source alone).
- Charge falloffs and finiteness at $\partial\Xi$; the general field-dependent residual bracket ($\delta_\varepsilon U\ne0$ sector); the Gauss constraint sector and mixed brackets.
- The schematic flux-balance law (S 41) and null-patch matching are not derived here.
- No xAct check: the decisive objects are canonical brackets and radial ODE kernels, not tensor identities; no Sage check needed (no representation-theory content in the four Abelian examples).

# Open problems and project extensions

1. **Field-dependent kernel bracket.** For Yang–Mills, determine $\{Q[\varepsilon_1],Q[\varepsilon_2]\}$ when $\delta_\varepsilon U\ne0$ — the exact analogue of the field-dependent-generator problem in the CPS notes ($k_\xi=\delta Q_\xi-i_\xi\Theta$ with $\delta\xi\ne0$).
2. **Corner term of $\Theta_\Xi$.** Reproduce (S 30–31) from $\delta\Theta_\Xi$ with the explicit corner reduction, matching the thesis's $\ell,C$ bookkeeping.
3. **Gauss sector.** Add the Gauss constraints and compute the mixed brackets $\{Q[\varepsilon],\mathcal G[\lambda]\}$; the paper leaves them out, and they determine whether the Abelian sector survives the full reduction.
4. **Null vs timelike comparison.** Compare $Q[\varepsilon]$ with the thesis AdS$_3$ charge (HW 3.2.68) on a null slicing of AdS$_3$ to expose the central-term mechanism.
