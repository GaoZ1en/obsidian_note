# Expanded Formulas and Convention Audit

## Status and use

This file fixes the notation used by the horizon/inner-boundary extension. It quotes the full-theory finite-action covariant-phase-space (CPS) identities of `../article/`, extends their bookkeeping to several timelike boundary components, and records the conditional theorem, verified benchmarks, and remaining phase-space existence problems.

The baseline is the same time-evolution variational problem as `../article/`: the Cauchy surfaces are initial and final endpoints, while timelike hypersurfaces are spatial boundaries carrying boundary Lagrangians. A fully Dirichlet action on every piece of a piecewise-smooth spacetime boundary is a related but distinct variational problem. Its Hayward joint functional will not be inserted into the CPS potential by identification alone.

## 1. Inherited conventions

### 1.1 Metric, coupling, and perturbations

The signature is $(-,+,+)$, the AdS radius is one, and

$$
\kappa _{\mathrm p}^{2}=8\pi G,
\qquad
g_{\mu\nu}
=G_{\mu\nu}
+\kappa _{\mathrm p}h_{\mu\nu}
+\kappa _{\mathrm p}^{2}k_{\mu\nu}
+O(\kappa _{\mathrm p}^{3}).
$$

The future unit normal to a Cauchy surface is $\tau ^\mu$. For every timelike boundary component $\Gamma_a$, $n_a^\mu$ is the spacelike unit normal pointing **out of the retained spacetime region**. Define

$$
\sigma_{\mu\nu}=g_{\mu\nu}+\tau_\mu\tau_\nu,
\qquad
\gamma^{(a)}_{\mu\nu}=g_{\mu\nu}-n^{(a)}_\mu n^{(a)}_\nu,
$$

$$
K^{(a)}_{\mu\nu}
=\gamma^{(a)\rho}_{\mu}\gamma^{(a)\sigma}_{\nu}
\nabla_\rho n^{(a)}_\sigma,
\qquad
K_a=\gamma_{(a)}^{\mu\nu}K^{(a)}_{\mu\nu}.
$$

For an orthogonal intersection $C_a=\Sigma\cap\Gamma_a$,

$$
q^{(a)}_{\mu\nu}
=g_{\mu\nu}+\tau_\mu\tau_\nu-n^{(a)}_\mu n^{(a)}_\nu.
$$

The perturbative diffeomorphism vector field $X_\xi$ acts homogeneously because $\xi$ is an exact Killing field of the background:

$$
X_\xi\mathbin{\cdot}\delta h=\mathcal L_\xi h,
\qquad
X_\xi\mathbin{\cdot}\delta k=\mathcal L_\xi k.
$$

This is not the inhomogeneous action of a general gauge vector on the background. In particular, it cannot be used with the non-Killing extremal-gauge completion vector $v$ by the substitution $\xi\mapsto v$.

### 1.2 Bulk action and potential

The inherited bulk action and its off-shell variation are

$$
S_{\mathrm{bulk}}
=\frac{1}{2\kappa_{\mathrm p}^{2}}
\int_M\mathrm d^3x\sqrt{-g}\,(R+2)+S_{\mathrm m},
$$

$$
\delta S_{\mathrm{bulk}}
=\int_M\mathrm d^3x\sqrt{-g}
\left[
-\frac{1}{2\kappa_{\mathrm p}^{2}}
(\mathcal E^{\mu\nu}-\kappa_{\mathrm p}^{2}T^{\mu\nu})
\delta g_{\mu\nu}
+E_A\delta\Psi^A
-\nabla_\mu\vartheta^\mu
\right],
$$

$$
\vartheta^\mu_{\mathrm{EH}}[\delta g]
=-\frac{1}{2\kappa_{\mathrm p}^{2}}
\left(
g^{\mu\alpha}\nabla^\nu\delta g_{\alpha\nu}
-g^{\alpha\beta}\nabla^\mu\delta g_{\alpha\beta}
\right).
$$

The minus sign in $-\nabla_\mu\vartheta^\mu$ is part of the project convention. It is one source of the eventual sign relative to the convention used in 2501.08308v2.

## 2. Timelike boundary components

### 2.1 Boundary Lagrangians

Write a constant local subtraction as $c_a$ and set

$$
\ell_a
=\frac{1}{\kappa_{\mathrm p}^{2}}(K_a-c_a)\,\epsilon_{\Gamma_a}.
$$

For the asymptotic AdS cylinder,

$$
c_\infty=1.
$$

For a finite stretched horizon, the minimal Einstein--Dirichlet candidate is

$$
c_\epsilon=0.
$$

The second assignment is now verified for the two compact BTZ benchmark sectors, but not for a general horizon phase space. The background inner GHY density has a finite $\epsilon\to0$ limit. In the collar--Dirichlet fluctuation sector its field-dependent variation vanishes identically at every finite wall, while in the fixed-boost area sector the nonzero Brown--York source work must be retained. In particular, the asymptotic AdS subtraction is not copied to the inner wall.

### 2.2 Local boundary identity

For each timelike component, using its own outward normal, the inherited local identity generalizes algebraically to

$$
-\sqrt{-\gamma_a}\,n_{a\mu}\vartheta_{\mathrm{EH}}^\mu
+\delta\!\left[\frac{\sqrt{-\gamma_a}}{\kappa_{\mathrm p}^{2}}(K_a-c_a)\right]
=\partial_i\!\left(\sqrt{-\gamma_a}\,C_a^i\right)
-\frac12\sqrt{-\gamma_a}\,
\mathcal T_a^{ij}\delta\gamma^{(a)}_{ij},
\tag{2.1}
$$

where, in the component convention of `../article/`,

$$
C_a^\mu[\delta g]
=-\frac{1}{2\kappa_{\mathrm p}^{2}}
\gamma_{(a)}^{\mu\nu}n_a^\rho\delta g_{\nu\rho},
\tag{2.2}
$$

$$
\mathcal T_a^{\mu\nu}
=\frac{1}{\kappa_{\mathrm p}^{2}}
\left(
K_a^{\mu\nu}-K_a\gamma_a^{\mu\nu}
+c_a\gamma_a^{\mu\nu}
\right).
\tag{2.3}
$$

Equation (2.1) is local. It does not acquire an extra manually chosen sign at the inner wall: changing from an outer to an inner component changes the outward normal $n_a$, hence $K_a$ and $C_a$, before integration.

If the allowed boundary data make the last term in (2.1) vanish, integration along $\Gamma_a$ gives

$$
\left.\delta S_{\mathrm{EH}}\right|_{\Gamma_a}
+\delta S_{\Gamma_a}
=-C_{a,f}+C_{a,i},
\tag{2.4}
$$

with

$$
C_{a,t}[\delta g]
:=\int_{C_{a,t}}\mathrm dx\sqrt{q_a}\,
\tau_\mu C_a^\mu[\delta g].
\tag{2.5}
$$

The use of the same future-directed $\tau^\mu$ at the initial and final cuts is inherited from `../article/`; the relative endpoint sign is already displayed in (2.4).

### 2.3 Multi-component integrated potential

For

$$
\partial_{\mathrm{sp}}M
=\Gamma_\infty\sqcup\mathcal H_\epsilon,
$$

and no additional endpoint functional, equations (2.4) imply

$$
\boxed{
\theta_\Sigma
=\int_\Sigma\mathrm d^2x\sqrt\sigma\,
\tau_\mu\vartheta^\mu
-C_\infty-C_\epsilon
}
\tag{2.6}
$$

and

$$
\boxed{
\Omega_\Sigma
=\int_\Sigma\mathrm d^2x\sqrt\sigma\,
\tau_\mu\delta\vartheta^\mu
-\delta C_\infty-\delta C_\epsilon.
}
\tag{2.7}
$$

These formulas use the geometric convention in which both $n_\infty$ and $n_\epsilon$ point out of the retained region. If instead one writes all component expressions with a reference radial normal $n_{\mathrm{ref}}$ pointing toward increasing radius, then

$$
n_\epsilon^{\mathrm{out}}=-n_{\mathrm{ref}},
\qquad
C_\epsilon^{\mathrm{out}}=-C_\epsilon^{\mathrm{ref}},
$$

so (2.6) becomes

$$
\theta_\Sigma
=\int_\Sigma\sqrt\sigma\,\tau\mathbin{\cdot}\vartheta
-C_\infty^{\mathrm{out}}
+C_\epsilon^{\mathrm{ref}}.
\tag{2.8}
$$

Equations (2.6) and (2.8) are the same statement. Mixing the outward-normal definition of $C_\epsilon$ with the reference-normal sign in (2.8) would double count the inner minus sign.

Define the Brown--York momentum density and the boundary source one-form by

$$
\Pi_a^{ij}:=\sqrt{-\gamma_a}\,\mathcal T_a^{ij},
\qquad
\mathcal B_a:=-\frac12\Pi_a^{ij}\delta\gamma^{(a)}_{ij}.
$$

Taking one field-space exterior derivative of (2.1) gives the pulled-back boundary symplectic current

$$
\boxed{
\omega_a^{\rm pullback}
=\mathrm d(\delta C_a)
-\frac12\delta\Pi_a^{ij}\wedge\delta\gamma^{(a)}_{ij}.
}
\tag{2.9}
$$

Consequently $C_a=0$ is not by itself a zero-flux condition. Flux vanishes if the remaining Brown--York canonical-pair term vanishes, for example under fixed induced metric, fixed conjugate momentum, or a declared Lagrangian mixed boundary condition. This condition must be checked before $\Omega_\Sigma$ is treated as slice independent.

## 3. Orientation of Stokes terms

Let $s_a^\mu$ be the unit normal to $C_a$ within $\Sigma$, pointing out of the retained part of $\Sigma$. Define the induced orientation of each cut by contraction with $s_a$. Stokes' theorem then reads

$$
\int_\Sigma\mathrm d^2x\sqrt\sigma\,
\tau_\mu\nabla_\nu U^{\mu\nu}
=\sum_a\int_{C_a}^{\mathrm{ind}}
\mathrm dx\sqrt{q_a}\,
\tau_\mu s_{a\nu}U^{\mu\nu}.
\tag{3.1}
$$

For a slice bounded by an asymptotic cut and an inner cut,

$$
s_\infty=n_\infty^{\mathrm{out}},
\qquad
s_\epsilon=n_\epsilon^{\mathrm{out}}.
$$

If both circles are then parameterized with the same reference $\phi$ orientation, (3.1) becomes the familiar notation

$$
\partial\Sigma=C_\infty\sqcup(-C_\epsilon),
\qquad
\int_{\partial\Sigma}^{\mathrm{ind}}=
\int_{C_\infty}^{\mathrm{ref}}-
\int_{C_\epsilon}^{\mathrm{ref}}.
\tag{3.2}
$$

Thus “outer minus inner” is a conversion from induced orientations to a common reference orientation; it is not a second sign to place into the local boundary identity (2.1).

## 4. Diffeomorphism descent and charge

For a timelike component with subtraction $c_a$, the direct analogue of the inherited boundary descent form is

$$
\mu_{\xi,a}^{\mu}
=\frac{1}{\kappa_{\mathrm p}^{2}}
\left[
(K_a-c_a)\gamma_{(a)}^\mu{}_{\nu}\xi^\nu
-D_a^\mu(n_a\mathbin{\cdot}\xi)
\right].
\tag{4.1}
$$

When $\xi$ preserves every boundary component and its boundary conditions, the off-shell definitions remain

$$
\alpha_\xi
=\alpha_{\xi,\mathrm{bulk}}
-\sum_a\mu_{\xi,a},
\qquad
\boxed{H_\xi=X_\xi\mathbin{\cdot}\theta-\alpha_\xi.}
\tag{4.2}
$$

The exact bulk Einstein identity is

$$
X_\xi\mathbin{\cdot}\vartheta_{\mathrm{EH}}^\mu
+\frac{1}{2\kappa_{\mathrm p}^{2}}\xi^\mu(R+2)
=-\frac{1}{\kappa_{\mathrm p}^{2}}
\xi_\nu\mathcal E^{\mu\nu}
+\nabla_\nu Q_\xi^{\mu\nu},
\tag{4.3}
$$

$$
Q_\xi^{\mu\nu}
=\frac{1}{2\kappa_{\mathrm p}^{2}}
(\nabla^\mu\xi^\nu-\nabla^\nu\xi^\mu).
\tag{4.4}
$$

Applying the same local algebra as the outer-boundary calculation to each wall gives, conditional on the wall-preserving symmetry and vanishing source variation,

$$
H_{\xi,a}^{\mathrm{wall}}
=-\int_{C_a}^{\mathrm{ind}}\mathrm dx\sqrt{q_a}\,
\tau_\mu\xi_\nu\mathcal T_a^{\mu\nu}.
\tag{4.5}
$$

For two cuts, conversion to the common reference orientation makes the total surface reduction an outer-minus-inner expression. Equation (4.5) is a finite-wall Brown--York identity. It is not yet the bifurcation-surface area theorem; taking $\epsilon\to0$ can change which decomposition is finite and must be done only after the brick-wall calculation.

The preliminary BTZ calculation makes this warning concrete: the outward-inner bulk Noether integral has a finite area limit, while the complete $c_\epsilon=0$ Brown--York wall charge tends to zero. The inner GHY descent cancels the area-sized bulk term in the complete timelike-wall generator. Therefore the artificial regulator wall and the horizon corner remaining after removal of the regulator are not the same charge observable.

The multi-wall diffeomorphism descent itself follows without a new gravitational identity. For a field-independent $\xi$ tangent to every fixed wall and preserving the declared boundary data, the single-wall calculation of `../article/` applies componentwise:

$$
X_\xi\mathbin{\cdot}\delta
\left(S_{\rm bulk}+\sum_aS_{\Gamma_a}\right)
=\left.\alpha_\xi\right|_{\Sigma_f}
-\left.\alpha_\xi\right|_{\Sigma_i},
\qquad
\alpha_\xi=\alpha_{\xi,{\rm bulk}}-\sum_a\mu_{\xi,a}.
\tag{4.6}
$$

No Einstein equation or horizon gauge condition is used in (4.6). If $\xi$ changes fixed boundary sources, it is not tangent to that fixed-source phase space; the uncancelled term is the corresponding Brown--York source work rather than a Hamiltonian symmetry.

Let $\mathbb h_{\xi,a}^{\rm FA}$ denote the cut contribution obtained from the bulk Noether form together with the finite-action descent on $\Gamma_a$,

$$
\mathbb h_{\xi,a}^{\rm FA}
:=
\int_{C_a}^{\rm ind}\!\sqrt{q_a}\,
\tau_\mu s_{a\nu}Q_\xi^{\mu\nu}
+\mu_{\xi,a}-X_\xi\mathbin{\cdot}C_a.
\tag{4.7}
$$

Then the exact full-theory charge has the off-shell organization

$$
H_\xi
=H_{\xi}^{\rm constraints}
+\sum_a\mathbb h_{\xi,a}^{\rm FA},
\tag{4.8}
$$

where $H_{\xi}^{\rm constraints}$ contains the Einstein and matter Euler--Lagrange terms displayed in the inherited full-theory identity. Field-space Cartan calculus applied to (4.6) gives

$$
\boxed{
\delta H_\xi
=\Omega_\Sigma(\delta g,\mathcal L_\xi g)
}
\tag{4.9}
$$

for an allowed symmetry. With one common reference orientation, the sum in (4.8) is $\mathbb h_{\xi,\infty}^{\rm FA}-\mathbb h_{\xi,\epsilon}^{\rm FA}$. Boundary flux measures the failure of this Hamiltonian to be slice independent; it is not suppressed in deriving (4.6)--(4.9).

## 5. Joint terms: two variational problems

### 5.1 Baseline CPS time-evolution problem

In the formalism inherited from `../article/`, the Cauchy surfaces are endpoints rather than spatial boundary components with their own GHY actions. The endpoint contribution $C_a$ in (2.4) is part of the integrated CPS potential. It must not be relabelled as a Hayward action.

This is precisely the structure of the finite-region CPS construction: on each timelike component,

$$
(\Theta+\delta\ell_a)|_{\Gamma_a}
=\mathrm d C_a+\mathcal B_a,
\tag{5.0}
$$

where $\mathcal B_a$ is the boundary source one-form. Thus $C_a$ is a codimension-two **field-space one-form** obtained by descent from the timelike action. It is present even when no independent joint action has been chosen.

For orthogonal joins,

$$
n_a\mathbin{\cdot}\tau=0,
\tag{5.1}
$$

and variations restricted to preserve (5.1), the boost-angle variation is absent. Equations (2.6)--(2.7) are then the baseline to test at a compact BTZ brick wall.

Appendix B.3 of 2501.08308v2 imposes the Rindler radial condition $h_{\rho\mu}=0$. In the present notation this implies

$$
n^\rho\delta g_{\nu\rho}=0
\quad\Longrightarrow\quad
C_\epsilon^\mu[\delta g]=0
\quad\Longrightarrow\quad
\delta C_\epsilon=0.
\tag{5.2}
$$

Thus it removes the explicit inner correction in (2.7) on that restricted gauge-fixed phase space. It does **not** by itself remove the source term $\mathcal T_\epsilon^{ij}\delta\gamma_{ij}$ in (2.1) or the Brown--York flux term in (2.9). Standard fixed-induced-metric Dirichlet data, radial gauge, and zero flux are therefore separate inputs in the project formalism.

### 5.2 Fully Dirichlet piecewise-smooth action

If induced metrics are instead fixed on all non-null pieces, including initial and final spacelike hypersurfaces, the standard piecewise-smooth Dirichlet action contains spacelike GHY terms and a corner functional of the structural form

$$
S_J
=\frac{1}{\kappa_{\mathrm p}^{2}}
\sum_J\sigma_J\int_J\mathrm dx\sqrt q\,\eta_J.
\tag{5.3}
$$

Here $\eta_J$ is the Lorentzian boost angle between the adapted normals and $\sigma_J$ depends on the induced orientation and convexity of the join. Primary derivations show that this term cancels the residual joint variation under Dirichlet boundary data. We have not yet translated their $\eta_J$ and $\sigma_J$ conventions into the project convention.

For a timelike wall meeting a spacelike endpoint, fix the order of normals by

$$
\sinh\eta_J=n_a\mathbin{\cdot}\tau.
\tag{5.3a}
$$

The sign $\sigma_J$ still depends on initial/final and inner/outer orientation. This remaining translation is irrelevant for the orthogonal compact benchmark because $\eta_J=0$ there for either sign. The distinction between (5.0) and (5.3) agrees with the primary finite-region CPS derivation of [Harlow--Wu](https://arxiv.org/abs/1906.08616) and the non-null joint variation derived by [Jubb et al.](https://arxiv.org/abs/1612.00149).

The logical order for this project is therefore

$$
S_J
\longrightarrow
\delta S_J
\longrightarrow
\text{endpoint potential shift}
\longrightarrow
\text{possible corner contribution to }\Omega,
\tag{5.4}
$$

not $S_J\equiv C_J$. For fixed boundary embeddings, an integrable endpoint shift $\delta S_J$ is field-space exact and does not by itself change $\Omega$; moving joints or edge-mode extensions can change this conclusion and must be treated in an extended phase space.

### 5.3 Fixed-boost wall-to-corner transgression

The area-changing BTZ calibration uses a source-retaining family rather than fixed induced metric. Normalize the horizon flow by

$$
\xi_s=\frac{s}{r_+}\partial_t=\partial_\lambda
$$

and hold $s$ fixed. Per unit $\lambda$ interval, the finite inner-wall source evaluated on $\partial_{r_+}$ is

$$
\mathcal B_\epsilon[\partial_{r_+}]
=-\frac{2\pi s}{\kappa_{\mathrm p}^2}\cosh^2\epsilon.
\tag{5.5}
$$

The boost-corner comparison functional associated with fusing the wall during regulator removal is

$$
I_{\mathrm{fuse},\epsilon}
=\frac{sA_\epsilon}{\kappa_{\mathrm p}^2},
\qquad
A_\epsilon=2\pi r_+\cosh\epsilon.
\tag{5.6}
$$

It is not an extra finite-wall joint in the baseline action. Instead it gives the transgression identity

$$
\boxed{
\mathcal B_\epsilon[\partial_{r_+}]
+\partial_{r_+}I_{\mathrm{fuse},\epsilon}
=-\frac{2\pi s}{\kappa_{\mathrm p}^2}
\cosh\epsilon(\cosh\epsilon-1)
\xrightarrow{\epsilon\to0}0.
}
\tag{5.7}
$$

Thus the source work cancels the limiting corner variation only after removal of the regulator; the finite-$\epsilon$ residual is $O(\epsilon^2)$. The fused corner is

$$
I_\gamma
=\frac{sA_\gamma}{\kappa_{\mathrm p}^2}
=\frac{s}{2\pi}\frac{A_\gamma}{4G},
\tag{5.8}
$$

which equals the oppositely oriented limit of the bulk Noether cut. Equations (5.5)--(5.8) are machine-verified on this BTZ parameter family. Their extension to general source-retaining perturbations is the conditional transgression hypothesis (11.6); constructing a universal polarization that satisfies it remains open.

### 5.4 Collar-Dirichlet fluctuation sector

For the canonical-energy benchmark choose a smooth vector $\zeta$ that vanishes identically in a full neighborhood of the inner wall but agrees with a Brown--Henneaux asymptotic symmetry outside a compact transition region. The exact diffeomorphism family gives

$$
h=\mathcal L_\zeta G,
\qquad
k=\frac12\mathcal L_\zeta^2G.
\tag{5.9}
$$

On every wall placed inside the collar,

$$
\left.\zeta\right|_{\mathcal H_\epsilon}
=\left.h\right|_{\mathcal H_\epsilon}
=\left.k\right|_{\mathcal H_\epsilon}=0.
\tag{5.10}
$$

Consequently

$$
\delta\gamma_{ij}^{(\epsilon)}=0,
\qquad
C_\epsilon=0,
\qquad
\mathcal B_\epsilon=0,
\qquad
\omega_\epsilon^{\rm pullback}=0,
\tag{5.11}
$$

The stronger finite-cutoff statement follows directly in Gaussian radial gauge. For the most general tangentially perturbed wall metric

$$
\mathrm ds^2
=\mathrm d\rho^2
+g_{tt}\mathrm dt^2
+2g_{t\phi}\mathrm dt\mathrm d\phi
+g_{\phi\phi}\mathrm d\phi^2,
\tag{5.11a}
$$

the inverse metric also has $g^{\rho t}=g^{\rho\phi}=0$. Hence the normalized normal to a fixed-$t$ endpoint has no radial component and

$$
n_\epsilon\mathbin{\cdot}\tau=0,
\qquad
\eta_\epsilon=0,
\qquad
\delta\eta_\epsilon=\delta^2\eta_\epsilon=0.
\tag{5.11b}
$$

Moreover $\delta g_{\rho\mu}=0$ gives

$$
C_\epsilon=\delta C_\epsilon=0.
\tag{5.11c}
$$

For the collar family, $\delta\gamma_\epsilon=0$ supplies the additional input missing from radial gauge alone. Therefore, at every finite $\epsilon<\rho_0$,

$$
\boxed{
\mathcal B_\epsilon=0,
\quad
\omega_\epsilon^{\rm pullback}=0,
\quad
S_{J_\epsilon}=\delta S_{J_\epsilon}
=\delta^2S_{J_\epsilon}=0.
}
\tag{5.11d}
$$

Thus the selected compact fluctuation has no inner GHY source, no Harlow--Wu endpoint correction, no wall symplectic flux, and no endpoint-joint correction before taking the horizon limit. Its perturbative inner Noether and area coefficients also vanish because $h=k=0$ in a full collar. This is exact finite-cutoff regulator independence for the selected sector, not a theorem for general horizon data.

Equation (5.11d) does not set the fused boost corner (5.6) to zero. The latter belongs to the different operation in which the timelike wall is removed and two endpoint normals acquire a finite relative boost $s$; it is not one of the orthogonal wall--slice joins at finite $\epsilon$.

### 5.5 Outer coefficient of the compact fluctuation

Applying the inherited renormalized Brown--York formula to the $m=1$ collar mode gives

$$
q_1(t+\phi)
=-\frac{\pi(r_+^2+1)}{r_+}\sin(t+\phi),
\qquad
\int_0^{2\pi}\!\mathrm d\phi\,q_1=0,
\tag{5.12}
$$

and

$$
q_2(t+\phi)
=\frac{\pi(r_+^2+1)}{4r_+}
\left[1-3\cos2(t+\phi)\right],
\tag{5.13}
$$

$$
\boxed{
H_{\xi_{\rm mod},T}^{[0]}
=\int_0^{2\pi}\!\mathrm d\phi\,q_2
=\frac{\pi^2(r_+^2+1)}{2r_+}.
}
\tag{5.14}
$$

Independent markers on $h$ and $k$ give

$$
\left.H_{\xi_{\rm mod},T}^{[0]}\right|_{k\text{-linear}}
=\frac{\pi^2(r_+^2+1)}{2r_+},
\qquad
\left.H_{\xi_{\rm mod},T}^{[0]}\right|_{h^2}=0.
\tag{5.15}
$$

This is the full $O(\kappa_{\mathrm p}^0)$ outer Taylor coefficient for the exact family $k=\tfrac12\mathcal L_\zeta^2G$. The second equality in (5.15) is only a split of the Brown--York surface representation; it does not imply $E_{\rm can}[h]=0$. The CPS conversion and the factor relating a Taylor coefficient to a second derivative are given next.

### 5.6 Compact CPS split and canonical energy

Expanding the exact Einstein--Hilbert Noether cut independently in $h$ and $k$ gives

$$
\int_{C_\infty}S_{\xi,h}^{[0]}[h]=0,
\qquad
\int_{C_\infty}S_\xi[k]
=\frac{\pi^2(r_+^2+1)}{2r_+}.
\tag{5.16}
$$

The separate $k$-sector surface tensor and its value are

$$
S_{\xi,k}^{[0],\mu\nu}[k]
=\xi^{[\mu}
\left(\nabla_\rho k^{\nu]\rho}-\nabla^{\nu]}k\right),
\qquad
\int_{C_\infty}S_{\xi,k}^{[0]}[k]=0.
\tag{5.17}
$$

The renormalized finite-action boundary descent vanishes pointwise at the outer cut for this mode, and all inner terms vanish in the collar. Therefore the off-shell identity

$$
\xi_\nu\mathcal E^{(1),\mu\nu}[k]
+\nabla_\nu S_{\xi,k}^{[0],\mu\nu}[k]
=\nabla_\nu S_\xi^{\mu\nu}[k]
\tag{5.18}
$$

together with $T_h=\mathcal E^{(1)}[k]$ gives the pure-$h$ current coefficient

$$
H_{\xi,h}^{[0]}
=\frac{\pi^2(r_+^2+1)}{2r_+}.
\tag{5.19}
$$

For $g(a)=G+a\kappa_{\mathrm p}h+a^2\kappa_{\mathrm p}^2k+\cdots$, the project canonical energy is the second derivative,

$$
\boxed{
E_{\mathrm{can,p}}[\kappa_{\mathrm p}h]
=\left.\frac{\mathrm d^2}{\mathrm da^2}
H_{\xi_{\rm mod},T}[g(a)]\right|_{a=0}
=\frac{\pi^2(r_+^2+1)}{r_+}.
}
\tag{5.20}
$$

The factor of two between (5.19) and (5.20) is the distinction between the $a^2$ Taylor coefficient and the second variation. No area term occurs because $h=k=0$ in the inner collar.

The independent Lee--Wald calculation must vary the form-valued potential rather than only its vector coefficient. In project conventions,

$$
\omega_{\mathrm p}^{\mu}[h_1,h_2]
=\delta_{h_1}\vartheta^\mu[h_2]
-\delta_{h_2}\vartheta^\mu[h_1]
+\frac12h_1\vartheta^\mu[h_2]
-\frac12h_2\vartheta^\mu[h_1].
\tag{5.21}
$$

The last two terms are the variation of $\sqrt{-g}$; dropping them gives a spurious cutoff-dependent answer. Let $\mathcal D$ be the angle-integrated radial density. The symbolic reconstruction in `btz_canonical_energy_check.wl` gives

$$
\mathcal D
=\frac{\mathrm d}{\mathrm d\rho}
\left[
\frac{\pi^2(r_+^2+1)}{r_+}\chi^2
+B(\rho)\chi\chi'
+C(\rho)(\chi')^2
\right].
\tag{5.22}
$$

For every smooth profile with constant jets $(\chi,\chi')=(0,0)$ in the inner collar and $(1,0)$ in the outer region, (5.22) proves

$$
\int_\Sigma\omega_{\mathrm p}
[G;\kappa_{\mathrm p}h,
\mathcal L_{\xi_{\rm mod}}(\kappa_{\mathrm p}h)]
=\frac{\pi^2(r_+^2+1)}{r_+}.
\tag{5.23}
$$

Equation (5.23) independently confirms (5.20) and proves collar-cutoff independence. Fifty-digit integrations at $r_+=2,3$ and two collar radii provide an additional numerical check.

## 6. Perturbative equations and second-order current

The two gravitational equations are kept distinct:

$$
\mathcal E^{(1)}[h]=0,
\tag{6.1}
$$

$$
\mathcal E^{(1)}[k]+\mathcal E^{(2)}[h,h]=T.
\tag{6.2}
$$

The pure-$h$ finite current is retained off shell as

$$
H_{\xi,h}^{\mu}
=\xi_\nu T_h^{\mu\nu}
+\nabla_\nu S_{\xi,h}^{\mu\nu}
+\mathcal R_{\xi,h}^{\mu},
\qquad
T_h^{\mu\nu}=-\mathcal E^{(2),\mu\nu}[h,h].
\tag{6.3}
$$

No surface representative $S_{\xi,h}+S_\xi[k]$ is identified with canonical energy or with $\Upsilon$ before the area, backreaction, and surface-displacement pieces have been separated.

## 7. Map to 2501.08308v2

The paper uses

$$
\boldsymbol\omega_{2501}[g;\delta_1g,\delta_2g]
=\delta_1\boldsymbol\theta[g;\delta_2g]
-\delta_2\boldsymbol\theta[g;\delta_1g],
$$

with $\kappa_{2501}^{2}=16\pi G$. The project uses $\kappa_{\mathrm p}^{2}=8\pi G$ and the physical perturbation

$$
\delta g_{\mathrm{phys}}=\kappa_{\mathrm p}h_{\mathrm p}.
$$

For the same ordered pair of physical metric variations and the spacetime orientation used in the modular-wedge scripts, direct evaluation gives

$$
\boxed{\omega_{\mathrm p}=-\omega_{2501}.}
\tag{7.1}
$$

Accordingly, the literal project-convention arbitrary-gauge identity is defined with

$$
\boxed{\Upsilon_{\mathrm p}=-\Upsilon_{2501},}
\tag{7.2}
$$

$$
E_{\mathrm{can,p}}[h+\mathcal L_vG]
-E_{\mathrm{can,p}}[h]
=\int_\gamma\Upsilon_{\mathrm p}.
\tag{7.3}
$$

For the existing $a=\pi/4$ Brown--Henneaux benchmark,

$$
\int_{\gamma_A}\Upsilon_{\mathrm p}
=\frac{32}{105}.
\tag{7.4}
$$

The corrected 2501-oriented density and the raw project Noether density are

$$
\frac{\mathrm dH_\gamma^{\rm IW}}{\mathrm dx}
=\frac{-5+13x^2-11x^4+3x^6}{16},
\qquad
\frac{\mathrm dH_{\gamma,\rm raw}^{[0]}}{\mathrm dx}
=-\frac18(1-x^2)^2(1+x^2).
\tag{7.5}
$$

The first integrates to $-32/105$ and the second to $-16/105$; both are
regular at the anchors. The previous value and logarithmic raw tail are
withdrawn because the old real vector was not the declared real phase of the
verified complex Brown--Henneaux primary. This remains a convention
calibration and controlled benchmark, not a derivation of the inner
finite-action term.

## 8. Fixed-surface bifurcation Noether charge and area

### 8.1 Fixed embedding

Let $\gamma$ be a fixed codimension-two embedding and consider a state-amplitude family

$$
g(\lambda)=G+\lambda p+\lambda^2r+O(\lambda^3).
\tag{8.1}
$$

Assume that $\xi$ vanishes on $\gamma$ and that its background first jet is a boost of surface gravity $s$. Orient the horizon cut so that the background project Noether density is positive,

$$
H_{\xi}^{\gamma}[G]
=\frac{s}{\kappa_{\mathrm p}^2}A_\gamma[G]
=\frac{s}{2\pi}\frac{A_\gamma[G]}{4G}.
\tag{8.2}
$$

At any point of $\gamma$, choose background normal coordinates

$$
G_{\mu\nu}=\operatorname{diag}(-1,1,q),
\qquad
\xi=s\left(x^1\partial_0+x^0\partial_1\right),
\tag{8.3}
$$

where $x^2$ is tangent to the one-dimensional BTZ cut. Since $\xi|_\gamma=0$, connection terms multiplying $\xi$ vanish there. The pulled-back densities are therefore

$$
\mathcal Q_\gamma(g)
=\frac{s}{2\kappa_{\mathrm p}^2}
\sqrt{-\det g}\left(g^{11}-g^{00}\right),
\qquad
\mathcal A_\gamma(g)=\sqrt{g_{22}}.
\tag{8.4}
$$

Let

$$
k^\mu=\frac1{\sqrt2}(1,1,0),
\qquad
l^\mu=\frac1{\sqrt2}(-1,1,0),
\qquad
G_{\mu\nu}k^\mu l^\nu=1.
$$

A direct coefficient expansion of (8.4) gives the pointwise identities

$$
[\lambda^0]\left(\kappa_{\mathrm p}^2\mathcal Q_\gamma-s\mathcal A_\gamma\right)=0,
\qquad
[\lambda^1]\left(\kappa_{\mathrm p}^2\mathcal Q_\gamma-s\mathcal A_\gamma\right)=0,
\tag{8.5}
$$

$$
\boxed{
[\lambda^2]\left(\kappa_{\mathrm p}^2\mathcal Q_\gamma-s\mathcal A_\gamma\right)
=\frac{s}{2}\sqrt q\,p_{kk}p_{ll}.
}
\tag{8.6}
$$

All dependence on the second-order coefficient $r$, as well as on $p_{02}$ and $p_{12}$, cancels from the difference. For the project expansion

$$
p=\kappa_{\mathrm p}h,
\qquad
r=\kappa_{\mathrm p}^2k,
$$

the fixed-surface horizon Taylor coefficients are consequently

$$
[\lambda]H_\xi^\gamma
=\frac{s}{\kappa_{\mathrm p}}A^{\rm lin}[h,\gamma],
\tag{8.7}
$$

$$
[\lambda^2]H_\xi^\gamma
=s\left(A^{\rm lin}[k,\gamma]+A^{\rm quad}[h,\gamma]\right)
+\frac{s}{2}\int_\gamma\sqrt q\,h_{kk}h_{ll}.
\tag{8.8}
$$

Thus a Hollands--Wald normal-plane representative satisfying

$$
h_{kk}|_\gamma=h_{ll}|_\gamma=0
\tag{8.9}
$$

obeys the fixed-surface Noether/area equality through second order. Equation (8.6) is the project-coupling and Taylor-coefficient version of Appendix B.2 of 2501.08308v2; it also exposes the factor that is hidden if that paper's $\kappa^2=16\pi G$ and $\delta^2$ notation are copied literally.

This result does **not** yet include a displaced embedding $\gamma^{(1)}$, nor does it show that extremality alone implies (8.9) in the finite-action project phase space. Extending from the Hollands--Wald representative to arbitrary smooth extremal gauge requires the horizon symplectic/corner argument, and extending to arbitrary gauge requires varying the surface embedding together with the metric.

### 8.2 AdS$_3$ extremal-curve displacement

Let $u$ be arclength along the background extremal curve, $t^\mu$ its unit tangent, and $n_a^\mu$ a parallel orthonormal frame for the Lorentzian normal bundle,

$$
\eta_{ab}=G_{\mu\nu}n_a^\mu n_b^\nu
=\operatorname{diag}(-1,1).
$$

The part of the AdS$_3$ Fermi expansion relevant to the quadratic pullback is

$$
\mathrm ds^2
=\eta_{ab}\mathrm dy^a\mathrm dy^b
+\left(1+\eta_{ab}y^ay^b\right)\mathrm du^2
+O(y^3),
\tag{8.10}
$$

where the unit AdS radius has been used. For

$$
g(\lambda)=G+\lambda p+\lambda^2r+O(\lambda^3),
\qquad
y^a(u)=\lambda V^a(u)+O(\lambda^2),
\tag{8.11}
$$

background extremality removes every term linear in the second-order embedding displacement. The quadratic Taylor coefficient splits as

$$
\boxed{
[\lambda^2]A[g,\gamma]
=A^{\rm lin}[r,\gamma]
+A^{\rm quad}[p,\gamma]
+A^{\rm lin}[p,V]
+A^{\rm quad}[G,V].
}
\tag{8.12}
$$

In the parallel Fermi frame the four terms are

$$
A^{\rm lin}[r,\gamma]
=\frac12\int_\gamma\mathrm du\,r_{uu},
\qquad
A^{\rm quad}[p,\gamma]
=-\frac18\int_\gamma\mathrm du\,p_{uu}^2,
\tag{8.13}
$$

$$
A^{\rm lin}[p,V]
=\int_\gamma\mathrm du\left(
\frac12V^a\nabla_a p_{uu}
+p_{ua}D_uV^a
\right),
\tag{8.14}
$$

$$
A^{\rm quad}[G,V]
=\frac12\int_\gamma\mathrm du\left(
D_uV_aD_uV^a+V_aV^a
\right).
\tag{8.15}
$$

Define the metric source for the linearized extremality equation and the AdS$_3$ geodesic Jacobi operator by

$$
\delta_pK_a
:=\frac12\nabla_a p_{uu}-D_up_{ua},
\qquad
(JV)_a:=(-D_u^2+1)V_a.
\tag{8.16}
$$

Integration by parts gives

$$
A^{\rm lin}[p,V]
=\int_\gamma\mathrm du\,V^a\delta_pK_a
+\left[p_{ua}V^a\right]_{\partial\gamma},
\tag{8.17}
$$

$$
A^{\rm quad}[G,V]
=\frac12\int_\gamma\mathrm du\,V^a(JV)_a
+\frac12\left[V_aD_uV^a\right]_{\partial\gamma}.
\tag{8.18}
$$

The first-order displacement of the extremal curve is therefore determined by

$$
\boxed{(JV)_a+\delta_pK_a=0.}
\tag{8.19}
$$

For a closed compact BTZ bifurcation circle, the endpoint terms in (8.17)--(8.18) vanish. For an anchored AdS-Rindler geodesic they combine into

$$
\boxed{
\mathcal B_{\rm anchor}^{\mathrm{area}}
=\left[
p_{ua}V^a+\frac12V_aD_uV^a
\right]_{\partial\gamma},
}
\tag{8.20}
$$

and must be combined with the movable cutoff, strip, and joint contributions rather than discarded.

Finally, for the project gauge convention

$$
p\longmapsto p+\mathcal L_vG,
$$

a pure normal diffeomorphism obeys

$$
\delta_{\mathcal L_vG}K_a=(Jv)_a.
\tag{8.21}
$$

Hence the same geometric extremal curve is represented by

$$
\boxed{V^a\longmapsto V^a-v_\perp^a.}
\tag{8.22}
$$

Equations (8.12)--(8.22) give the explicit AdS$_3$ meaning of the two displacement terms in 2501 equation (4.34). They do not yet prove the cancellation between their gauge variation and the project canonical-energy corner form $\Upsilon_{\mathrm p}$.

## 9. Arbitrary-gauge canonical energy: finite-action organization

Let $p$ be a physical first-order metric variation and let $v$ be a field-independent gauge vector. For the background Killing field $\xi$,

$$
\mathcal L_\xi\mathcal L_vG
=\mathcal L_{[\xi,v]}G.
\tag{9.1}
$$

Bilinearity and antisymmetry of the project symplectic form then give the exact algebraic identity

$$
\boxed{
\begin{aligned}
E_{\mathrm{can,p}}[p+\mathcal L_vG]
-E_{\mathrm{can,p}}[p]
={}&\Omega_{\mathrm p}
[p+\mathcal L_vG,\mathcal L_{[\xi,v]}G]\\
&-\Omega_{\mathrm p}
[\mathcal L_\xi p,\mathcal L_vG].
\end{aligned}
}
\tag{9.2}
$$

This step uses no field equation and no assumption that $v$ or $[\xi,v]$ is Killing.

For an arbitrary vector $u$, define the **finite-action diffeomorphism descent form** $\mathbb k_{u,\mathrm p}^{\rm FA}[\delta g]$ operationally from the complete generator

$$
H_u=X_u\mathbin{\cdot}\theta-\alpha_u,
\tag{9.3}
$$

so that, after displaying the linearized constraints and flux terms,

$$
\Omega_{\Sigma,\mathrm p}[\delta g,\mathcal L_uG]
=\int_{\partial\Sigma}^{\rm ind}
\mathbb k_{u,\mathrm p}^{\rm FA}[\delta g]
+\mathcal C_u[\delta g]
+\mathcal F_u[\delta g].
\tag{9.4}
$$

Because $\theta_\Sigma$ contains $-C_\infty-C_\epsilon$, the surface form must be decomposed before the horizon limit as

$$
\mathbb k_{u,\mathrm p}^{\rm FA}
=k_{u,\mathrm p}^{\rm bulk}
+k_{u,\mathrm p}^{\rm wall}
+k_{u,\mathrm p}^{\rm joint}.
\tag{9.5}
$$

Here the labels denote their origin in the finite action; they are not independently adjustable improvements.

Substitution of (9.4) into (9.2) defines the induced-orientation completion density

$$
\boxed{
\Upsilon_{\mathrm p}^{\rm FA,ind}[p,v]
:=\mathbb k_{[\xi,v],\mathrm p}^{\rm FA}
[p+\mathcal L_vG]
-\mathbb k_{v,\mathrm p}^{\rm FA}[\mathcal L_\xi p].
}
\tag{9.6}
$$

If the two variations solve the required linearized equations, the flux is controlled, and $v$ decays sufficiently fast at the asymptotic boundary, then

$$
E_{\mathrm{can,p}}[p+\mathcal L_vG]
-E_{\mathrm{can,p}}[p]
=\int_{\gamma_\epsilon}^{\rm ind}
\Upsilon_{\mathrm p}^{\rm FA,ind}[p,v].
\tag{9.7}
$$

In a common reference orientation for which $\partial\Sigma=C_\infty\sqcup(-\gamma_\epsilon)$, the right-hand side of (9.7) acquires an explicit minus sign. This orientation conversion must not be folded into the local definition twice.

The local 2501 form is recovered only under the additional regulator statement

$$
\lim_{\epsilon\to0}
\int_{\gamma_\epsilon}^{\rm ind}
\left(
\Upsilon_{\mathrm p}^{\rm wall}
+\Upsilon_{\mathrm p}^{\rm joint}
\right)=0,
\tag{9.8}
$$

or after retaining a nonzero limit as part of the horizon edge symplectic structure. With (9.8), the already verified convention map gives

$$
\Upsilon_{\mathrm p}^{\rm bulk}
=-\Upsilon_{2501}
$$

for the same ordered physical variations and spacetime orientation. The explicit modular-wedge benchmark verifies the bulk non-Killing form, including both terms in (9.6); it does not verify (9.8). Thus (9.2)--(9.7) fix the project-internal object to compute, while the brick-wall limit remains a genuine finite-action problem.

## 10. AdS-Rindler regulator and remaining identities

Equation (4.9) and the induced-orientation decomposition already establish the structural outer-minus-inner identity

$$
\Omega_{\Sigma_A}(\delta g,\mathcal L_\xi g)
=\delta H_\xi^\infty
-\delta H_\xi^\gamma
+\text{constraints}
+\text{flux/joint terms},
\tag{10.1}
$$

for an allowed wall-preserving symmetry, with the displayed flux/joint terms retained. Its compact collar specialization is closed by (5.11d). The remaining anchored problem is to evaluate those terms rather than merely name them.

For $a=\pi/4$, write the Rindler radial coordinate as $\rho=\cosh\chi$. The exact intersection of the global cylinder $r=R$ with the brick wall $\chi=\epsilon$ is

$$
\cosh u_c(R,\epsilon)
=\frac{\sqrt{R^2+1}-\sinh\epsilon}
{\sqrt2\cosh\epsilon},
\tag{10.2}
$$

and the corresponding outer anchor strip obeys

$$
\lim_{R\to\infty}
R\left(\frac\pi4-\phi_c(R,\epsilon)\right)
=\sinh\epsilon.
\tag{10.3}
$$

The anchor-wall normals and joint density satisfy

$$
\left.n_\epsilon\mathbin{\cdot}n_R\right|_{\epsilon=0}
=-\frac1R,
\qquad
\lim_{R\to\infty}n_\epsilon\mathbin{\cdot}n_R
=-\tanh\epsilon,
\qquad
\sqrt{|q_J|}_{\tau=0}=\sinh\epsilon.
\tag{10.4}
$$

Thus the bounded background joint weight vanishes in the sequential $R\to\infty$, $\epsilon\to0$ limit. This does not establish the perturbative joint variation.

On the RT curve $x=\tanh u$. After correcting the real Brown--Henneaux phase,
the raw project density has the endpoint statement

$$
-\frac18(1-x^2)^2(1+x^2)\frac{\mathrm dx}{\mathrm du}
\xrightarrow{u\to\pm\infty}0,
\tag{10.5}
$$

and the proper-completion density also has zero $u$-tails. For
$v_L=-L^2\zeta_R/(L^2+r^2)$, the declared limit order is

$$
\lim_{L\to\infty}
\lim_{\epsilon\to0^+}
\lim_{R\to\infty},
\tag{10.6}
$$

or a correlated limit with $R/L\to\infty$ before $L\to\infty$.

For the project-normalized metric path

$$
g(\alpha)=G+\alpha h+\alpha^2k+O(\alpha^3),
\qquad
h=\mathcal L_\zeta G,
\qquad
k=\frac12\mathcal L_\zeta h,
$$

the fixed-embedding right-joint density is

$$
j_J(\alpha;R,\epsilon)
=\sqrt{|q_J(\alpha)|}\,
\arccos\!\left(
\frac{g(\alpha)^{-1}(-\mathrm d\chi,\mathrm dr)}
{\sqrt{g(\alpha)^{-1}(\mathrm d\chi,\mathrm d\chi)
g(\alpha)^{-1}(\mathrm dr,\mathrm dr)}}
\right).
\tag{10.7}
$$

Its fixed-$\epsilon$ large-$R$ Taylor coefficients are

$$
\begin{aligned}
\lim_{R\to\infty}j_J^{(1)}
={}&-\frac{2}{\sqrt{3\pi}}
\left[
\bigl(\pi-\arccos(\tanh\epsilon)\bigr)\sinh\epsilon
+\tanh^2\epsilon
\right],\\
\lim_{R\to\infty}j_J^{(2)}
={}&\frac{1}{6\pi}
\left[
4\bigl(\pi-\arccos(\tanh\epsilon)\bigr)\sinh\epsilon
+\operatorname{sech}^3\epsilon\,
\sinh(3\epsilon)\tanh\epsilon
+9\operatorname{sech}^2\epsilon\tanh^2\epsilon
\right],
\end{aligned}
\tag{10.8}
$$

so that

$$
\lim_{\epsilon\to0^+}\lim_{R\to\infty}j_J^{(1)}
=
\lim_{\epsilon\to0^+}\lim_{R\to\infty}j_J^{(2)}
=0.
\tag{10.9}
$$

The overall Dirichlet-Hayward orientation sign does not affect (10.9). The asymptotic completion density is continuous at $\phi=\pi/4$, while (10.3) implies $\phi_c\to\pi/4$; hence its integral over the outer anchor strip also vanishes. Any uniformly bounded renormalized outer density obeys the same conclusion. After the real-phase correction, the raw endpoint tail also vanishes; no constant tail cancellation is required.

For the same pure-diffeomorphism path, the extremal-surface displacement is $V=-\zeta_\perp$. In the parallel frame used in (8.13)--(8.20), the endpoint density is

$$
\begin{aligned}
b_{\mathrm{area}}(u)
={}&h_{ua}V^a+\frac12V_aD_uV^a\\
={}&\frac{\tanh u\,\operatorname{sech}^6u\,
\operatorname{sech}^3(2u)}{768\pi}
\bigl[
-696-719\cosh(2u)+304\cosh(4u)\\
&\hspace{39mm}
+449\cosh(6u)+136\cosh(8u)+10\cosh(10u)
\bigr].
\end{aligned}
\tag{10.10}
$$

Its two ends satisfy

$$
\lim_{u\to+\infty}b_{\mathrm{area}}
=\lim_{u\to-\infty}b_{\mathrm{area}}=0,
\qquad
\lim_{u\to+\infty}e^{2u}b_{\mathrm{area}}=\frac{10}{3\pi},
\qquad
\lim_{u\to-\infty}e^{-2u}b_{\mathrm{area}}=-\frac{10}{3\pi}.
\tag{10.11}
$$

The fixed-surface, cross, embedding, and total quadratic area densities likewise have no constant tails. Their coefficients after multiplication by $e^{2|u|}$ are, at either end,

$$
\left(
\frac{8}{3\pi},-\frac8\pi,\frac{4}{3\pi},-\frac4\pi
\right).
$$

Thus no explicit quadratic area sector supplies a constant tail.

The exact unexpanded article identity on each timelike component is

$$
q_{\rm BY}=q_{\rm EH}+q_\Gamma.
\tag{10.12}
$$

On $\chi=\epsilon$, choose $n=-\mathrm d\chi$, omit the asymptotic AdS
counterterm, and let $\xi=2\pi\partial_\tau$. With the common
$1/\kappa_{\rm p}^2$ removed, the explicit densities used in the numerical
regression are

$$
\begin{aligned}
q_{\rm BY}^{(2)}
&=[\alpha^2]\left[-\sqrt q\,\tau^a\xi^b
(K_{ab}-K\gamma_{ab})\right],\\
q_{\rm EH}^{(2)}
&=[\alpha^2]\left[\frac12\sqrt q\,\tau_\mu n_\nu
(\nabla^\mu\xi^\nu-\nabla^\nu\xi^\mu)\right].
\end{aligned}
\tag{10.13}
$$

For the corrected exact-diffeomorphism path above, set $z=e^{-|u|}$. The
exact pullback endpoint is

$$
h_\infty=0,
\qquad
k_\infty=0.
\tag{10.14}
$$

The corrected finite-wall endpoint calculation gives

$$
\begin{aligned}
\lim_{u\to\pm\infty}q_{\rm BY}^{(2)}&=0,\\
\lim_{u\to\pm\infty}q_{\rm EH}^{(2)}&=0,\\
\lim_{u\to\pm\infty}q_\Gamma^{(2)}&=0.
\end{aligned}
\tag{10.15}
$$

The exact pullback passes $12/12$ tests. The independent unsimplified
60-digit calculation evaluates both ends at
$\epsilon\in\{1/2,1/4,1/8,1/16\}$ and extrapolates the individual tails to
zero within $1.03\times10^{-11}$. Hence the selected brick-wall order gives

$$
\lim_{\epsilon\to0^+}\lim_{u\to\pm\infty}
(q_{\rm EH}^{(2)},q_\Gamma^{(2)},q_{\rm BY}^{(2)})=(0,0,0),
\tag{10.16}
$$

and the corrected raw RT tensor has the same zero endpoint limit. Correlated
probes $\epsilon=\lambda e^{-|u|}$ also tend to zero. The former fused-horizon
discontinuity is withdrawn. The arbitrary-perturbation implication is given
in Sec. 11; universal phase-space existence and moving embeddings remain open.

The full outer coefficient follows from the renormalized article tensor
$K_{ab}-K\gamma_{ab}+\gamma_{ab}$ on $r=R$. Its exact large-$R$ limit is

$$
q_{\infty}^{(2)}(\phi)
=-(-1+\sqrt2\cos\phi)(-1+3\cos4\phi),
\qquad
q_{\infty}^{(2)}\!\left(\pm\frac\pi4\right)=0.
\tag{10.17}
$$

The limiting-density endpoint expansion is

$$
q_{\infty}^{(2)}\!\left(\frac\pi4-\Delta\phi\right)
=-\frac{20}{3}\Delta\phi
+\frac{10}{3}\Delta\phi^2+O(\Delta\phi^3).
\tag{10.18}
$$

To retain every finite-$R$ term of the same order, define the boundary-layer
coordinate $y=R(\pi/4-\phi)$. Directly from the unexpanded finite-cutoff
Brown--York density,

$$
\lim_{R\to\infty}
R\,q_R^{(2)}\!\left(\frac\pi4-\frac yR\right)
=-\frac{20}{3}y.
\tag{10.19}
$$

Since $R(\pi/4-\phi_c)\to\sinh\epsilon$, this proves

$$
\boxed{
\lim_{R\to\infty}R^2
\int_{\phi_c(R,\epsilon)}^{\pi/4}
q_R^{(2)}(\phi)\,\mathrm d\phi
=-\frac{10}{3}\sinh^2\epsilon,
}
\tag{10.20}
$$

which vanishes after $\epsilon\to0^+$. The left strip is identical by the
reflection symmetry of (10.17).

The following dressed second-order equations are exact conditional
implications once the regulated phase-space hypotheses collected in Sec. 11
hold:

$$
\delta^2 H_\xi^{\gamma,\mathrm{dressed}}
=\frac{s}{2\pi}\delta^2\!\left(\frac{A[g,\gamma]}{4G}\right)
+\text{horizon symplectic/corner terms},
\tag{10.21}
$$

$$
\delta^2H_\xi^\infty
=\frac{s}{2\pi}\delta^2\!\left(\frac{A[g,\gamma]}{4G}\right)
+E_{\mathrm{can,p}}[h]
+\int_\gamma\Upsilon_{\mathrm p}.
\tag{10.22}
$$

The compact result shows that the inner GHY term controls the finite-cutoff variational principle while the limiting horizon area is the oppositely oriented bulk Noether corner; the full Brown--York wall generator is not substituted for it. For the corrected selected anchored mode, `AdS-Rindler anchor regulator.md` fixes the geometry and verifies that the raw, joint, area, inner-wall, and outer-strip endpoint tails vanish. The former $32/3$ target and fused-horizon diagnosis are withdrawn. The remaining arbitrary-perturbation problem is the existence and construction of boundary polarizations and extended edge data satisfying the hypotheses below, together with continuity of the complete projected-mode $\Upsilon$ form.

## 11. Regulated horizon phase space and gauge cocycle

### 11.1 Boundary polarization and regulator hypotheses

On the inner wall define

$$
\Pi_\epsilon^{ij}:=\sqrt{-\gamma_\epsilon}\,
\mathcal T_\epsilon^{ij},
\qquad
\mathcal B_\epsilon:=-\frac12\Pi_\epsilon^{ij}
\delta\gamma^{(\epsilon)}_{ij}.
\tag{11.1}
$$

The local Einstein--GHY/Harlow--Wu identity is

$$
\omega_\epsilon^{\rm pullback}
=\mathrm d(\delta C_\epsilon)
-\frac12\delta\Pi_\epsilon^{ij}\wedge
\delta\gamma^{(\epsilon)}_{ij}.
\tag{11.2}
$$

The fixed-embedding implication assumes the following independent inputs:

0. a common topology, controlled comparison maps
   $\iota_\epsilon:\mathcal P_0\to\mathcal P_\epsilon$, twice
   differentiability of the renormalized outer Hamiltonian, area,
   symplectic form, and surface descent, and convergence of their first and
   second variations under a common dominating bound;

1. a boundary density $w_\epsilon$ and a Lagrangian polarization
   $\mathscr L_\epsilon$ such that

   $$
   \left.(\mathcal B_\epsilon+\delta w_\epsilon)
   \right|_{\mathscr L_\epsilon}=\mathrm dc_\epsilon,
   \qquad
   \left.\delta\Pi_\epsilon^{ij}\wedge
   \delta\gamma^{(\epsilon)}_{ij}
   \right|_{\mathscr L_\epsilon}=0;
   \tag{11.3}
   $$

2. two-sided Kruskal smoothness and uniform radial decay strong enough that

   $$
   \int_{\gamma_\epsilon}C_\epsilon=o(1),
   \qquad
   \int_{\gamma_\epsilon}\delta C_\epsilon=o(1);
   \tag{11.4}
   $$

   with a weighted integrable version, uniform in the anchor regulator, for a
   noncompact AdS-Rindler cut;

3. fixed embeddings and vanishing finite-action wall/joint descent for the
   two pairs
   $([\xi,v],p+\mathcal L_vG)$ and $(v,\mathcal L_\xi p)$,

   $$
   \int_{\gamma_\epsilon}
   (\mathbb k_{u,\mathrm p}^{\rm wall}[\delta g]
   +\mathbb k_{u,\mathrm p}^{\rm joint}[\delta g])=o(1);
   \tag{11.5}
   $$

4. for a source-retaining family, the integrated wall source transgression

   $$
   \int_{\mathcal H_\epsilon}
   (\mathcal B_\epsilon+\delta w_\epsilon)
   +\delta I_{\rm fuse,\epsilon}=o(1);
   \tag{11.6}
   $$

5. the separate dynamics

   $$
   \mathcal E^{(1)}[h]=0,
   \qquad
   \mathcal E^{(1)}[k]+\mathcal E^{(2)}[h,h]=0;
   \tag{11.7}
   $$

6. existence, on every orbit under consideration, of
   $h^{\rm ext}=h+\mathcal L_vG$ with fixed extremal cut and
   $h^{\rm ext}_{kk}=h^{\rm ext}_{ll}=0$ on $\gamma$.

Equations (11.3) and (11.4) are not synonymous. Radial gauge can set
$C_\epsilon=0$ without making the canonical-pair wedge in (11.2) vanish.

There is also a strict obstruction to repairing a non-Lagrangian wall block
by the scalar transgression alone. If

$$
\mathcal B_\epsilon\longmapsto
\mathcal B_\epsilon+\delta w_\epsilon,
$$

then

$$
\delta(\mathcal B_\epsilon+\delta w_\epsilon)
=\delta\mathcal B_\epsilon
=-\frac12\delta\Pi_\epsilon^{ij}\wedge
\delta\gamma^{(\epsilon)}_{ij}.
\tag{11.7a}
$$

Thus $w_\epsilon$ can make the pulled-back source exact only on a submanifold
where the flux already vanishes. A nonzero pullback of (11.7a) has exactly
two possible repairs: restrict the tangent space to a Lagrangian
polarization, or add an edge potential whose field-space derivative cancels
that pullback. The projected four-mode AdS--Rindler benchmark gives a
resolved nonzero value of (11.7a) at a finite wall (H47), so the unrestricted
projected block does not satisfy (11.3). Endpoint decay, anchor projection,
and radial gauge do not alter this verdict.

For a Brown--Henneaux tangent $h=\mathcal L_\zeta G$, however, the moving
inner embedding supplies a canonical compensated lift on the wall core.
Choose an extension $\chi=-\zeta$ there and taper it to zero through an
anchor neighborhood before the outer boundary. Then on the core

$$
\Delta_XG=h+\mathcal L_\chi G=0
\quad\hbox{on the inner wall},
\qquad
\Delta_X\gamma=\Delta_X\Pi=0,
\tag{11.7b}
$$

For a compact wall, or at a joint whose incident embeddings use the same
collar extension, one also has $\Delta_Xq=\Delta_X\eta=0$. An anchored finite
wall instead shares its endpoint with the fixed outer cutoff; there the two
values of $\chi$ are incompatible at finite regulator and the transition
strip plus moving-joint terms must be kept. Since $\chi$ vanishes at
infinity, the outer Brown--Henneaux charge is unchanged. For modes $m\leq M$
and $p_L=L^2/(L^2+r^2)$, a necessary joint scaling window is

$$
M\ll L(M)^2\ll R(M)^2.
\tag{11.7c}
$$

At nonzero brick-wall cutoff the anchor distance contains an additional
$R^{-1}$ term, so a simultaneous diagonal also requires

$$
\frac{M\sinh\epsilon}{L}\longrightarrow0.
\tag{11.7d}
$$

The corrected symbolic endpoint jet gives

$$
h_m=O_\epsilon(m^3e^{-2|u|}),
\qquad
\delta\Pi_m=O_\epsilon(m^3e^{-2|u|}),
\tag{11.7e}
$$

but the leading metric and momentum matrices have zero contraction.  The
complete rational wall kernel sharpens the finite jet to

$$
\boxed{
|\mathcal F^{\rm wall}_{mn}(q,\epsilon)|
\leq C(1+m+n)^7
\left(\tanh\frac\epsilon2\,q^5+q^6\right).
}
\tag{11.7f}
$$

Here the apparent inverse power in the isolated $q^3$ momentum coefficient is
cancelled by the small-wall scaling of its metric partner.  More precisely,
each nonzero frequency coefficient starts at $q^5$, its $q^5$ coefficient is
linear in $\tanh(\epsilon/2)$, and its exact horizon restriction starts at
$q^6$.  At $r=L$, $q_L\leq C/L$, so (11.7f) integrates to
$C(1+m+n)^7(\tanh(\epsilon/2)L^{-5}+L^{-6})$. The first possible far Hayward-joint
kernel obeys the complete estimate

$$
|\mathcal F^J_{mn}(q,\epsilon)|
\leq C(1+m+n)^6\tanh\frac\epsilon2\,q^5,
\tag{11.7g}
$$

because both $\Delta_X\eta_m$ and $\Delta_X\sqrt q_m$ begin at $q^2$, their
leading antisymmetric product vanishes, and the exact mixed kernel has one
global factor $\tanh(\epsilon/2)$.  This corrects the former untested
$O(\epsilon^2)$ prose estimate. Since $p_L=O(L^2/R^2)$ at the joint,
$L/R\to0$ transfers the raw mode to the compensated lift only after the
separate outer-mismatch estimate is imposed. The projected
$r\sim L$ profile transition is proved separately by the H51 point-jet
majorant. The finite-cylinder outer Brown--York source curvature is exactly
zero and its Cauchy-corner curvature is $O((1+m+n)^6R^{-6})$; the finite-wall
anchor shift and HW-collar sectors remain independent open estimates.

Equivalently, this lift differs by the inner-supported gauge degeneracy
$(\mathcal L_{-\chi}G,\chi)$ from a fixed-embedding representative that
vanishes on the wall core. This is the finite-action bridge between the
moving section and the proper collar completion. A uniform bound on the
anchor transition is still required; this is not a claim that the original
fixed-wall projected block was Lagrangian.

### 11.2 Fixed and moving embeddings

For an embedding $X$ with
$\chi^\mu=\delta X^\mu\circ X^{-1}$,

$$
\delta(X^*g)=X^*(\delta g+\mathcal L_\chi g).
\tag{11.8}
$$

Under

$$
\delta_wg=\mathcal L_wg,
\qquad
\delta_wX=-w\circ X,
\tag{11.9}
$$

the right-hand side of (11.8) is invariant. A vector nonzero on the inner
cut is therefore a pre-symplectic degeneracy only after the embedding/edge
canonical pair is included. Without it, the same vector carries a subregion
surface charge. The proposition below directly covers the fixed-embedding
vacuum restricted branch. Equations (12.3)--(12.10) give only the moving
pullback kinematics, Brown--York wall contribution, and joint pair; the
complete moving potential still requires a direct variation of the pulled-
back full action.

### 11.3 Conditional finite-action implication

Under the common-topology input and (11.3)--(11.7), the componentwise
finite-action descent first gives the off-shell identity

$$
\delta H_{\xi,\epsilon}
=\Omega_{\Sigma,\epsilon}(\delta g,\mathcal L_\xi g),
\tag{11.10}
$$

and then, after imposing the displayed equations and converting the inner
induced orientation to a common outer reference,

$$
\Omega_{\Sigma,\epsilon}(\delta g,\mathcal L_\xi g)
=\delta H_\xi^\infty-
\delta H_\xi^{\gamma_\epsilon}
+\mathcal C_{\xi,\epsilon}.
\tag{11.11}
$$

The regulator terms vanish by (11.4)--(11.6), while the oppositely oriented
bulk Noether corner remains. In the extremal representative, H27 makes the
fixed-cut obstruction vanish. H28 then restores the geometric moving-area
terms in another representative. Thus

$$
\boxed{
\delta^2H_\xi^\infty
=\frac{s}{2\pi}\delta^2\!\left(\frac{A[g,\gamma]}{4G}\right)
+E_{\mathrm{can,p}}[h^{\rm ext}].
}
\tag{11.12}
$$

This is a vacuum conditional implication, not a proof that a suitable
regulated phase space exists for every smooth horizon perturbation. A matter
extension requires a specified matter action, symplectic current, wall data,
constraint normalization, and modular term.

### 11.4 Gauge-completion cocycle

For a first-order perturbation $p$ and field-independent $v$, set

$$
\mathfrak D_p[v]
:=\Omega_{\mathrm p}
[p+\mathcal L_vG,\mathcal L_{[\xi,v]}G]
-\Omega_{\mathrm p}[\mathcal L_\xi p,\mathcal L_vG].
\tag{11.13}
$$

Then (9.2) is equivalently

$$
\boxed{
\mathfrak D_p[v]
=E_{\mathrm{can,p}}[p+\mathcal L_vG]
-E_{\mathrm{can,p}}[p].
}
\tag{11.14}
$$

For a second vector $w$, telescoping gives the exact cocycle

$$
\boxed{
\mathfrak D_p[v]
+\mathfrak D_{p+\mathcal L_vG}[w]
=\mathfrak D_p[v+w].
}
\tag{11.15}
$$

Under (11.4)--(11.5), the finite-action descent identifies

$$
\mathfrak D_p[v]
=\int_\gamma\Upsilon_{\mathrm p}[p,v].
\tag{11.16}
$$

Choosing $v$ so that $h^{\rm ext}=h+\mathcal L_vG$ yields

$$
\boxed{
E_{\mathrm{can,p}}^{\rm GI}[h]
:=E_{\mathrm{can,p}}[h]
+\int_\gamma\Upsilon_{\mathrm p}[h,v]
=E_{\mathrm{can,p}}[h^{\rm ext}],
}
\tag{11.17}
$$

and (11.12) becomes precisely (10.22). For the same ordered variations and
spacetime orientation,

$$
\omega_{\mathrm p}=-\omega_{2501},
\qquad
\Upsilon_{\mathrm p}=-\Upsilon_{2501}.
\tag{11.18}
$$

The derivation nowhere replaces the non-Killing $v$ by the Killing vector
$\xi$.

## 12. Moving-embedding kinematics, HW data, and constrained mode space

### 12.1 Pulled-back action and kinematic potential

Define

$$
\chi^\mu:=\delta X^\mu\circ X^{-1},
\qquad
\Delta_Xg:=\delta g+\mathcal L_\chi g.
\tag{12.1}
$$

The Maurer--Cartan and gauge-contraction identities are

$$
\delta\chi^\mu=-\frac12[\chi,\chi]^\mu,
\qquad
I_{\widehat w}\chi=-w,
\qquad
I_{\widehat w}\Delta_Xg=0.
\tag{12.2}
$$

Let $M_0$ be a fixed reference region. The complete pulled-back action defines

$$
\boxed{
\Theta_{{\rm p},X}[g,X;\delta]
=\Theta_{\rm p}[X^*g;\delta(X^*g)].
}
\tag{12.3}
$$

Every moving domain, normal, GHY/counterterm density, endpoint-$C$, and joint
term must be varied as part of this pullback. Merely substituting
$\Delta_Xg$ into an already integrated fixed-domain formula is insufficient.
For the complete pullback,

$$
I_{(\mathcal L_wg,-w)}\Theta_{{\rm p},X}=0,
\qquad
I_{(\mathcal L_wg,-w)}\Omega_{{\rm p},X}=0.
\tag{12.4}
$$

### 12.2 Brown--York wall contribution and joint pair

For $\chi=\chi^ie_i+\chi_\perp n$,

$$
\Delta_X\gamma_{ij}
=\delta\gamma_{ij}+2D_{(i}\chi_{j)}+2\chi_\perp K_{ij}.
\tag{12.5}
$$

The Brown--York contribution to moving-wall work becomes

$$
\begin{aligned}
\mathcal B_X
={}&-\frac12\Pi^{ij}\Delta_X\gamma_{ij}\\
={}&-\frac12\Pi^{ij}\delta\gamma_{ij}
-D_i(\Pi^{ij}\chi_j)
+(D_i\Pi^{ij})\chi_j
-\Pi^{ij}K_{ij}\chi_\perp.
\end{aligned}
\tag{12.6}
$$

Thus

$$
P_j^{\rm wall}=D_i\Pi^i{}_j,
\qquad
P_\perp^{\rm wall}=-\Pi^{ij}K_{ij}.
\tag{12.7}
$$

The bulk equation term supplies the off-shell constraint completion. With
$\mathcal E^{\mu\nu}=R^{\mu\nu}-Rg^{\mu\nu}/2-g^{\mu\nu}$,

$$
\boxed{
\begin{aligned}
P_j^{\rm tot}
&=D_i\Pi^i{}_j
-\frac{\sqrt{-\gamma}}{\kappa_{\rm p}^2}
n_\mu\mathcal E^{\mu\nu}e_{j\nu},\\
P_\perp^{\rm tot}
&=-\Pi^{ij}K_{ij}
-\frac{\sqrt{-\gamma}}{\kappa_{\rm p}^2}
n_\mu n_\nu\mathcal E^{\mu\nu}.
\end{aligned}}
\tag{12.8}
$$

For the project outer counterterm and no inner counterterm, the timelike Gauss
relation gives

$$
P_\perp^{\rm tot}
=\frac{\sqrt{-\gamma}}{2\kappa_{\rm p}^2}
\left(R[\gamma]+K^2-K_{ij}K^{ij}+2\right)
-\mathbf 1_{\Gamma_\infty}
\frac{\sqrt{-\gamma}}{\kappa_{\rm p}^2}K.
\tag{12.9}
$$

On a vacuum solution (12.8) reduces to (12.7). The complete Cauchy-cut edge
potential is

$$
\Theta_{\Sigma,X}
=\int_\Sigma\sqrt\sigma\,\tau_\mu\vartheta^\mu[\Delta_Xg]
-\sum_JC_{\Gamma,J}[\Delta_Xg]
+\sum_J\frac{\sigma_J}{\kappa_{\rm p}^2}
\int_J\eta\,\Delta_X\sqrt q.
\tag{12.10}
$$

Thus the endpoint of the total derivative in (12.6) must be combined with
the last two terms of (12.10). A normal translation has a Hamiltonian only
when its contraction with $\delta\Theta_{\Sigma,X}$ is field-space exact on
the declared moving polarization.

For compact BTZ, direct differentiation of the complete finite-wall action
gives

$$
\frac{\partial S}{\partial\epsilon}
=-\frac{r_+^2}{\kappa_{\rm p}^2}\sinh2\epsilon,
\qquad
\frac{\partial S}{\partial\rho_R}
=-\frac{r_+^2}{\kappa_{\rm p}^2}e^{-2\rho_R},
\tag{12.11}
$$

while (12.8)--(12.9) yield

$$
P_{\perp,\epsilon}^{\rm tot}
=\frac{r_+^2}{\kappa_{\rm p}^2}\sinh2\epsilon,
\qquad
P_{\perp,R}^{\rm tot}
=-\frac{r_+^2}{\kappa_{\rm p}^2}e^{-2\rho_R}.
\tag{12.12}
$$

The inner displacement has $\chi_\perp=-\delta\epsilon$ and the outer one has
$\chi_\perp=\delta\rho_R$, proving direct agreement.

#### 12.2.1 Smooth compact moving polarization

Let $F\in\operatorname{Diff}^+(S^1)$ have degree one and put
$R(\phi)=r_+F'(\phi)$. In the fixed-boost Kruskal collar,

$$
\mathrm ds^2
=\mathrm d\rho^2-s^2\sinh^2\rho\,\mathrm d\lambda^2
+R(\phi)^2\cosh^2\rho\,\mathrm d\phi^2.
\tag{12.12a}
$$

This obeys $R_{\mu\nu}+2g_{\mu\nu}=0$ for arbitrary positive $R$. At the
inner wall,

$$
\gamma_{ij}
=\operatorname{diag}(-s^2\sinh^2\epsilon,
R^2\cosh^2\epsilon),
\qquad
\Pi^{ij}
=\frac1{\kappa_{\rm p}^2}
\operatorname{diag}\left(-\frac Rs,\frac sR\right).
\tag{12.12b}
$$

For tangents containing both $\delta R$ and a uniform
$\delta\epsilon$,

$$
\mathcal B_X
=-\delta_X\left(
\frac{sR\cosh^2\epsilon}{\kappa_{\rm p}^2}
\right),
\qquad
\delta_X\Pi^{ij}\wedge\delta_X\gamma_{ij}=0.
\tag{12.12c}
$$

Hence

$$
w_{{\rm sm},\epsilon}
=\frac12\Pi^{ij}\gamma_{ij}
+\frac{sR}{2\kappa_{\rm p}^2}
=\frac{sR\cosh^2\epsilon}{\kappa_{\rm p}^2}
\tag{12.12d}
$$

defines a finite-wall Lagrangian mixed polarization on this exact family. The
total normal momentum is

$$
P_\perp^{\rm tot}
=\frac{sR\sinh2\epsilon}{\kappa_{\rm p}^2},
\qquad
I_{(0,\partial_\epsilon)}\Omega_{{\rm p},X}=0,
\qquad
H_\perp^{\rm edge}=0.
\tag{12.12e}
$$

The matched comparison representative is

$$
I_{{\rm corner},{\rm sm},\epsilon}
=\frac{sR}{\kappa_{\rm p}^2}
\left(\cosh\epsilon-\cosh^2\epsilon\right)=O(\epsilon^2).
\tag{12.12f}
$$

Equations (12.12a)--(12.12f) realize the moving hypotheses
H0$_X$--H6$_X$ on a compact finite-dimensional nonzero smooth BTZ family.
They do not supply a universal polarization or nonuniform shape
integrability.

For

$$
I_J=\frac{\sigma_J}{\kappa_{\rm p}^2}
\int_J\sqrt q\,\eta,
\tag{12.13}
$$

the two joint polarizations are

$$
\Theta_J^{(A)}
=\frac{\sigma_J}{\kappa_{\rm p}^2}
\int_J\eta\,\Delta_X\sqrt q,
\qquad
\Theta_J^{(\eta)}
=-\frac{\sigma_J}{\kappa_{\rm p}^2}
\int_J\sqrt q\,\Delta_X\eta.
\tag{12.14}
$$

They differ by $\delta_XI_J$ and give

$$
\boxed{
\Omega_J
=\frac{\sigma_J}{\kappa_{\rm p}^2}
\int_J\Delta_X\eta\wedge\Delta_X\sqrt q.
}
\tag{12.15}
$$

### 12.3 Compact trace polarization

With

$$
w_\zeta=\frac\zeta2\Pi^{ij}\gamma_{ij},
\tag{12.16}
$$

the fused fixed-boost limit gives

$$
W_\zeta=\frac\zeta2I_{\rm fuse},
\qquad
I_{{\rm corner},\zeta}
=\left(1-\frac\zeta2\right)I_{\rm fuse}.
\tag{12.17}
$$

Hence

$$
\mathcal B[\partial_{r_+}]
+\partial_{r_+}W_\zeta
+\partial_{r_+}I_{{\rm corner},\zeta}=0.
\tag{12.18}
$$

If $I_{{\rm corner},\zeta}$ is instead held equal to $I_{\rm fuse}$, the
residual is $\pi s\zeta/\kappa_{\rm p}^2$. Equation (12.18) is an algebraic
redistribution of the fused comparison functional, not a finite-$\epsilon$
Neumann construction.

### 12.4 Extremal/HW boundary-value problem

In the parallel AdS$_3$ normal frame,

$$
\delta_hK_a
=\frac12\nabla_ah_{uu}-D_uh_{ua},
\qquad
J=-D_u^2+1.
\tag{12.19}
$$

The required boundary data are

$$
Jv_{\perp a}=-\delta_hK_a,
\qquad
\nabla_kv_k=-\frac12h_{kk},
\qquad
\nabla_lv_l=-\frac12h_{ll}.
\tag{12.20}
$$

On compact BTZ,

$$
J e^{in\phi}
=\left(1+\frac{n^2}{r_+^2}\right)e^{in\phi},
\tag{12.21}
$$

so the periodic problem has no zero mode. On the complete RT geodesic,

$$
G_J(u,u')=\frac12e^{-|u-u'|},
\qquad
v_{\perp a}(u)
=-\int\mathrm du'\,G_J(u,u')\delta_hK_a(u').
\tag{12.22}
$$

For the selected mode the ambient solution obeys

$$
v^t=O(r^{-2}),
\qquad
v^r=O(r^{-1}),
\qquad
v^\phi=O(r^{-2}).
\tag{12.23}
$$

### 12.5 Fixed-anchor mode constraint

For $a=\pi/4$ and
$f_m=A_m\cos m\phi+B_m\sin m\phi$, the fixed-anchor system is

$$
M_m
\begin{pmatrix}A_m\\B_m\end{pmatrix}=0,
\qquad
M_m=
\begin{pmatrix}
\cos(ma)&\sin(ma)\\
\cos(ma)&-\sin(ma)
\end{pmatrix}.
\tag{12.24}
$$

Its determinant is

$$
\boxed{
\det M_m=-\sin\frac{m\pi}{2}.
}
\tag{12.25}
$$

For odd $m$ and $A_m^2+B_m^2=1$,

$$
|f_m(a)|^2+|f_m(-a)|^2=1,
\qquad
\max\{|f_m(a)|,|f_m(-a)|\}\geq\frac1{\sqrt2}.
\tag{12.26}
$$

This is a per-frequency obstruction only. The counterexample

$$
\cos3\phi-\cos5\phi
$$

vanishes at both anchors. In $H^s(S^1)$ with $s>1/2$, endpoint evaluation is
continuous and

$$
\mathcal H_A^s=\ker E_+\cap\ker E_-,
\qquad E_\pm f=f(\pm\pi/4)
\tag{12.27}
$$

is a closed codimension-two subspace. A bounded projection onto it is

$$
\boxed{
P_Af=f+\frac{f(a)+f(-a)}2\cos4\phi
-\frac{f(a)-f(-a)}2\sin2\phi.
}
\tag{12.28}
$$

Thus a fixed-anchor mode-sum phase space exists, and at the H42 stage the
complete finite-action form still had to be evaluated on an adapted projected
basis.  The moving-anchor phase space and edge work in (12.10) were an
auxiliary algebraic route.  H61 later shows that they do not descend to the
metric tangent quotient; the physical full-space route is instead the
global-Killing section $P_{\rm PSL}$ of Section 14.

### 12.6 Local projected form and the proper-completion scale

For the closed unit-boundary bulk representatives (5.10) of the dedicated
mode-space note, direct symmetric bilinearization gives exact complex kernels
$B_{2501}(z_m,z_n)$ and $B_{2501}(z_m,\bar z_n)$. The mixed-chirality
polynomial has highest homogeneous pieces

$$
\begin{aligned}
\mathcal P^{(6)}_{mn}&=8m^3n^3\cos^3 2\phi,\\
\mathcal P^{(5)}_{mn}&=-4m^2n^2\cos^2 2\phi
\big[(m+n)(1+\cos2\phi)+i(n-m)\sin2\phi\big],\\
\mathcal P^{(4)}_{mn}&=-4mn\cos2\phi\Big[
(m^2+n^2)(2+\cos2\phi+\cos^22\phi)
+i(m^2-n^2)\sin2\phi\cos2\phi\Big].
\end{aligned}
\tag{12.29}
$$

These endpoint zeros, together with the exponential anchor weight, imply the
uniform unit-boundary estimate

$$
|B_{mn}^{\rm local}|\leq C(m+n)^2.
\tag{12.30}
$$

Consequently the local projected form is absolutely mode-sum convergent and
continuous on $\mathcal H_A^s$ for

$$
\boxed{s>\frac52.}
\tag{12.31}
$$

This range is sufficient and nonoptimal; it does not include the physical
$H^{3/2}$ tower without a sharper operator estimate. The exact physical
projected diagonal entries decay as $m^{-1}$ with eight-periodic coefficients
listed in the mode-space note.

The proper radial profile has a second independent scale obstruction. On the
RT curve,

$$
p_L=\frac{L^2\cos2\phi}{1+L^2\cos2\phi},
\qquad
p_L\left(\frac\pi4-\frac yN\right)
\longrightarrow\frac{2y}{2y+N/L^2}.
\tag{12.32}
$$

Thus a mode truncation $N\leq M$ can approach the local completion only along
a correlated schedule

$$
\boxed{M/L(M)^2\longrightarrow0.}
\tag{12.33}
$$

At finite nonzero $M/L^2$ the limiting anchor profile is schedule dependent;
at fixed $L$ followed by $M\to\infty$ the completion is switched off inside
the high-frequency layer.

### 12.7 Fifth-jet transition, edge completion, and diagonal limit

The twenty-one symbolic diagonal/cross finite parts have full rank in the
conservative reflected fifth-jet class and uniquely give

$$
\boxed{
\mathcal A[f]
=-\frac16\left[
\sum_{\sigma=\pm}f(\sigma a)(-f''(\sigma a)-f(\sigma a))
+f(a)f'(a)-f(-a)f'(-a)
\right],
}
\tag{12.34}
$$

with every fourth- and fifth-jet coefficient zero. Hence

$$
\boxed{
\mathcal A[P_Af,P_Ag]=0.
}
\tag{12.35}
$$

This reconstruction is not an unprojected ordinary-integral theorem. The
direct pair $(\cos3\phi,\cos4\phi)$ has

$$
B_L^{34}\big(L,\pm(a-d)\big)
=\frac{51L^4}{16\sqrt2}\frac1d+O(d^0),
\tag{12.35a}
$$

so its inner RT integral requires the finite outer anchor cutoff. The
projected problem is different and is now solved directly. With
$q=\cos2\phi$, $s=r\sqrt q$, $\lambda=L^2$, and all ambient derivatives
taken before $t=0,s=1$, every real two-symbolic-frequency sector has

$$
B_{\lambda,mn}^{AB}(q)
=\frac{\sum_{a=1}^4\lambda^a
q^{\nu_a}(1-q)\widehat N_{a,mn}^{AB}(q)}
{64\sqrt{1-q}\,(1+q)^{\rho_{AB}+(m+n)/2}
(q-1)(1+\lambda q)^4},
\tag{12.35b}
$$

where $(\nu_1,\nu_2,\nu_3,\nu_4)=(3,2,4,6)$, the three values of
$\rho_{AB}$ are $(15/2,13/2,11/2)$, and the residual frequency degree is at
most six. The centre factor $1-q$ and an endpoint/centre majorant give

$$
\boxed{
\|B_{L,mn}^{P_A}-B_{mn}^{P_A,{\rm local}}\|_{L^1(\gamma_A)}
\leq\frac{C(1+m+n)^6}{L^2}.
}
\tag{12.35c}
$$

Thus the projected transition distribution and bulk remainder are zero. This
proof does not use (12.34).  At the H51 stage a raw unprojected theorem
appeared to require the full finite-$R$ inner/outer/joint/frame sum, with
(12.34) only a candidate finite remainder.  H61 corrects that premise:
replacing $f$ by the metric-equivalent global-Killing section
$P_{\rm PSL}f$ removes the endpoint pole and puts the same metric tangent in
the endpoint-zero class of (12.35c).  Equation (12.34) remains a
representative-dependent analytic finite part, not a physical anchor term.

At finite spectral rank the artificial-boundary two-form is

$$
F_{M,\lambda}
=\frac12F_{IJ}^{(M,\lambda)}\delta a^I\wedge\delta a^J.
\tag{12.36}
$$

It is canceled on the selected cotangent edge graph by

$$
\boxed{
\Theta_{{\rm edge},M,\lambda}
=-\frac12F_{IJ}^{(M,\lambda)}a^I\delta a^J,
\qquad
\delta\Theta_{{\rm edge},M,\lambda}=-F_{M,\lambda}.
}
\tag{12.37}
$$

This is not a scalar transgression. The displayed primitive is an auxiliary
boundary-polarization choice rather than a derivation from the complete
gravitational embedding, wall, joint, or anchor action. On a
star-shaped nonlinear coefficient chart the corresponding radial primitive is

$$
\alpha_F
=\int_0^1t\,a^IF_{IJ}(ta)\,\mathrm dt\,\delta a^J,
\qquad
\delta\alpha_F=F.
\tag{12.37a}
$$

The complete action does not in general produce (12.37) for the whole
finite-regulator form. On a fully compensated graph
$(\Phi^*G,\Phi^{-1}\circ X_0)$ it implies exact cancellation of the
fixed-embedding pure-gauge curvature because $X^*g$ is constant. For the
proper taper $v_L=-p_L\zeta$ one instead has

$$
\Delta_Xg=\mathcal L_{(1-p_L)\zeta}G,
$$

and the geometric embedding/cross terms leave precisely the transition
curvature. Hence (12.37) is an additional boundary system if used to cancel
that remainder at finite regulator. Equation (12.35c) establishes its
vanishing on the projected domain. The action-derived projected theorem
should not assume (12.37).

The graph $Q^I=a^I$, $P_J=-(\alpha_F)_J$ realizes $-F$ as the pullback of
$\delta P_I\wedge\delta Q^I$. Primitives related by an exact one-form or an
edge symplectomorphism give the same curvature cancellation.

Equation (12.35c) implies the unconditional transition-block estimate

$$
\|B_{M,L}^{\rm trans}-B_M^{{\rm trans},{\rm local}}\|
\leq C_\sigma M^6/L^2.
\tag{12.37b}
$$

On the linked regulator class
$y=\tanh(\epsilon/2)=1/(2L)$, the complete fixed-section relative-action
inventory obeys

$$
\begin{aligned}
\|B_{M,\lambda}-B_M^{\rm local}\|
\leq C_\sigma\bigg[
&\frac{M^7}{L^2}+\frac{M^6}{L^2}
+M^7\left(\frac{y}{L^5}+\frac1{L^6}\right)
+M^6yR^{-5}\\
&+M^6\frac{L^2}{R^2}
+M^6\left(\frac{L^2}{R^2}+\frac{L^4}{R^2}\right)
+M^6R^{-6}\bigg].
\end{aligned}
\tag{12.38}
$$

Here the terms are respectively the complete finite-wall compensated,
transition, raw wall, raw joint, compensated outer-joint, compensated outer
corner, and raw outer-corner bounds; the outer Brown--York source curvature
is exactly zero. Whenever the displayed majorant vanishes, for Sobolev index
$\sigma>5/2$,

$$
\boxed{
\lim_{M\to\infty}
B_{M,\lambda_M}(Q_Mf,Q_Mg)
=B^{\rm local}(f,g).
}
\tag{12.39}
$$

Every diagonal family in this linked regulator class whose right side in
(12.38) vanishes has the same limit. The exact choice
$L=M^{10}$ and $R=M^{30}$ gives the conservative total rate
$O(M^{-13})$. This is a convergence and slice-covariance statement, not a
positivity statement.

### 12.8 Field-dependent HW section and final identity

Let $R:w\mapsto\mathcal L_wG$ and let $V[h]$ be the Jacobi/normal-jet
boundary-value solution on the selected proper complement. Then

$$
V R=-1,
\qquad
P_{\rm HW}=1+RV,
\qquad
P_{\rm HW}^2=P_{\rm HW}.
\tag{12.40}
$$

The anchor projection cancels the $e^{|u|}$ normal trace; the exact parity
expansion has no intermediate constant term. The first proper coefficient is
$O(m^2e^{-|u|})$ in unit-boundary normalization,
so

$$
\mathsf T_\perp:\mathcal H_A^\sigma
\longrightarrow\mathcal V_A^{\sigma-2}
\tag{12.41}
$$

is continuous. Field dependence contributes

$$
\boxed{
\delta E(P_{\rm HW}h)
=2E\left(P_{\rm HW}h,\delta h+RV[\delta h]\right),
}
\tag{12.42}
$$

so freezing $V[h]$ would omit the $RV[\delta h]$ term.

In the complete pulled-back phase space,

$$
(h,0)\sim(P_{\rm HW}h,-V[h]),
\tag{12.43}
$$

because their difference is the exact degeneracy $(RV[h],-V[h])$. The
projected transition distribution is zero by (12.35c), and the complete
fixed-section estimate (12.38), together with the exact HW collar pullback,
makes the total relative-action boundary flux vanish. Combining the
finite-action descent and geometric area identity therefore gives, for vacuum
Einstein AdS$_3$,

$$
\boxed{
\delta^2H_\xi^\infty
=\frac{s}{2\pi}\delta^2\!\left(\frac{A[g,\gamma]}{4G}\right)
+E_{\rm can,p}[h]
+\int_{\gamma_A}\Upsilon_{\rm p}[h,V[h]].
}
\tag{12.44}
$$

Here $s$ is surface gravity and $\sigma$ is the Sobolev index. Every term in
(12.44) uses second-derivative normalization. Choose the global-Killing
section $P_{\rm PSL}$ of Section 14. Since
$h[P_{\rm PSL}f]=h[f]$, the same proof gives (12.44) on the complete metric
tangent quotient
$H^\sigma(S^1)/\mathfrak{sl}(2,\mathbb R)$, $\sigma>5/2$. This is the
action-derived, slice-covariant classical subregion identity; it does not
construct a quantum JLMS map or crossed-product algebra.

## 13. Intrinsic moving-edge continuation

### 13.1 Arbitrary stationary wavy BTZ wall

For the exact collar metric

$$
\mathrm ds^2
=\mathrm d\rho^2-s^2\sinh^2\rho\,\mathrm d\lambda^2
+R(\phi)^2\cosh^2\rho\,\mathrm d\phi^2
\tag{13.1}
$$

and inner wall $\rho=E(\phi)>0$, define

$$
D=E'^2+R^2\cosh^2E,
\qquad
\vartheta=\arctan\!\left(\frac{E'}{R\cosh E}\right).
\tag{13.2}
$$

The induced metric and outward conormal are

$$
\gamma_{ij}
=\operatorname{diag}(-s^2\sinh^2E,D),
\qquad
n_\mu=\frac{R\cosh E}{\sqrt D}(0,-1,E').
\tag{13.3}
$$

The nonzero Brown--York momentum components are

$$
\begin{aligned}
\Pi^{\lambda\lambda}
&=-\frac{R}{\kappa_{\rm p}^2sD}
\left(2E'^2+R^2\cosh^2E-E''\coth E
+\frac{E'R'}R\coth E\right),\\
\Pi^{\phi\phi}
&=\frac{Rs\cosh^2E}{\kappa_{\rm p}^2D}.
\end{aligned}
\tag{13.4}
$$

Direct variation gives

$$
\boxed{
\mathcal B_X
=-\delta w_{\rm wave}
+\partial_\phi(p_E\delta E),
}
\tag{13.5}
$$

with

$$
\begin{aligned}
w_{\rm wave}
&=\frac{s}{\kappa_{\rm p}^2}
\left(R\cosh^2E+E'\cosh E\,\vartheta\right),\\
p_E&=\frac{s\cosh E}{\kappa_{\rm p}^2}\vartheta.
\end{aligned}
\tag{13.6}
$$

For periodic $R,E$,

$$
\int_{S^1}\mathcal B_X
=-\delta\int_{S^1}w_{\rm wave},
\qquad
\int_{S^1}\delta\mathcal B_X=0.
\tag{13.7}
$$

This is an exact infinite-dimensional stationary moving polarization. At
$E'=0$, equations (13.5)--(13.6) reduce to the uniform compact functional.

### 13.2 Tilted non-orthogonal joint

For the endpoint slice

$$
\lambda-q(\rho-\epsilon)=\lambda_0,
\qquad |qs\sinh\epsilon|<1,
\tag{13.8}
$$

the boost angle and joint density are

$$
\eta=-\operatorname{arctanh}(qs\sinh\epsilon),
\qquad
\sqrt q=R\cosh\epsilon.
\tag{13.9}
$$

Hence, directly from the moving Hayward variation,

$$
Q_J=\sqrt q,
\qquad
P_J=\frac{\sigma_J}{\kappa_{\rm p}^2}\eta,
\qquad
\Omega_J=\delta P_J\wedge\delta Q_J.
\tag{13.10}
$$

The explicit nonzero component is

$$
\Omega_J(\partial_q,\partial_R)
=-\frac{\sigma_Js\sinh\epsilon\cosh\epsilon}
{\kappa_{\rm p}^2(1-q^2s^2\sinh^2\epsilon)}.
\tag{13.11}
$$

Equations (13.5) and (13.10) solve the stationary nonuniform wall and the
isolated non-orthogonal joint, respectively. A single time-dependent family
combining them with the Harlow--Wu endpoint descent remains a stronger task.

## 14. PSL reducibility and the full Brown--Henneaux quotient

Let $a=\pi/4$ and

$$
q_\pm[f]=f(\pm a),
\qquad
p_\pm[f]
=\frac16\left[-f''(\pm a)-f(\pm a)\pm f'(\pm a)\right].
\tag{14.1}
$$

The representative-dependent analytic finite part reconstructed in the old
unfixed-generator chart is

$$
\boxed{
\mathcal A[f]
=-q_+[f]p_+[f]-q_-[f]p_-[f].
}
\tag{14.2}
$$

Its symmetric polarization and auxiliary cotangent realization are

$$
\mathcal A[f,g]
=-\frac12\sum_{\alpha=\pm}
\left(q_\alpha[f]p_\alpha[g]+q_\alpha[g]p_\alpha[f]\right),
\tag{14.3}
$$

$$
\Theta_{\rm anch}=\sum_{\alpha=\pm}P_\alpha\delta Q_\alpha,
\qquad
(Q_\alpha,P_\alpha)=(q_\alpha[f],p_\alpha[f]).
\tag{14.4}
$$

They are continuous for $\sigma>5/2$, but neither $q_\pm$ nor $p_\pm$
descends to the metric tangent quotient. Thus (14.2)--(14.4) do not define a
physical moving-anchor Hamiltonian.

The correct endpoint-fixing representative is

$$
\boxed{
P_{\rm PSL}f
=f-\frac{q_++q_-}{2\cos a}\cos\phi
-\frac{q_+-q_-}{2\sin a}\sin\phi.
}
\tag{14.5}
$$

It obeys

$$
(P_{\rm PSL}f)(\pm a)=0,
\qquad
P_{\rm PSL}^2=P_{\rm PSL},
\qquad
h[P_{\rm PSL}f]=h[f],
\tag{14.6}
$$

because the subtracted frequency-zero/one bulk vectors are exact global AdS
Killing fields. The residual endpoint-fixing global direction is
$w_A=(\cos\phi-\cos a)/\sin a$, and therefore

$$
H^\sigma(S^1)/\mathfrak{sl}(2,\mathbb R)
\simeq
\ker(q_+,q_-)/\operatorname{span}\{w_A\}.
\tag{14.7}
$$

The fixed-region extremal normal vector is

$$
\boxed{
V_{A,\perp}[f]=-\zeta_\perp[f]+H[q[f]],
}
\tag{14.8}
$$

with

$$
H^{(0)}=-\frac{q_+e^u+q_-e^{-u}}{\sqrt2},
\qquad
H^{(1)}=\frac{-q_+e^u+q_-e^{-u}}{\sqrt2}.
\tag{14.9}
$$

Since $JH=0$, the growing traces cancel and the first surviving term is
$O(m^2e^{-|u|})$. The homogeneous correction is exactly the normal
restriction of the global Killing subtraction (14.5). Charged $m\ge2$
Brown--Henneaux modes remain physical; no negative-Virasoro frame is used.

For the complete canonical energy, introduce

$$
U=\frac{\sin\frac{\phi+a}{2}}{\sin\frac{a-\phi}{2}},
\qquad
s=\log U,
\qquad
w_A=\frac{U}{U'},
\qquad
F_f=\frac{P_{\rm PSL}f}{w_A}.
\tag{14.10}
$$

The classical Bañados modular-charge minus RT-length Hessian is

$$
\boxed{
E_{\rm can,p}[h[f]]
=\frac1{8G}\int_{\mathbb R}
\left[(\partial_sF_f)^2+(\partial_s^2F_f)^2\right]\,\mathrm ds .
}
\tag{14.11}
$$

Its kernel is exactly $\mathfrak{sl}(2,\mathbb R)$, so it is strictly
positive on the metric quotient. The combined form is continuous on the
endpoint-fixed ordinary $H^2$ section, has no $H^r$-continuous extension for
$r<2$, and is not coercive in the ordinary $H^2$ norm. The physical spectral
projector $P_A$ remains a genuine selected charged subspace and must not be
confused with the reducibility section $P_{\rm PSL}$.

## 15. Explicit regulator schedule and time-covariant weak collar

The projected transition theorem gives the regulator-uniform estimate

$$
\|B^{(L)}_{mn}-B^{\rm local}_{mn}\|_{L^1(\gamma_A)}
\leq\frac{C(1+m+n)^6}{L^2}.
\tag{15.1}
$$

The complete raw endpoint kernels give

$$
\left|\int_{r\geq L}\mathcal F^{\rm wall}_{mn}\,\mathrm du\right|
\leq C(1+m+n)^7
\left(\frac{\tanh(\epsilon/2)}{L^5}+\frac1{L^6}\right),
$$

$$
|\mathcal F^J_{mn}(q_R,\epsilon)|
\leq C(1+m+n)^6\frac{\tanh(\epsilon/2)}{R^5}.
$$

The elementary radial estimate

$$
0\leq1-(1+R^{-2})^{-m/2}\leq\frac{m}{2R^2},
\tag{15.2}
$$

is superseded for the outer Brown--York source curvature by the exact
finite-cylinder identity

$$
\delta_m\Pi_R^{ab}h_{n,ab}
-\delta_n\Pi_R^{ab}h_{m,ab}=0.
\tag{15.2a}
$$

The same exact source calculation gives zero for the compensated tangent.
The separate raw article corner subtraction obeys

$$
|\delta C_{\Gamma_R}(h_m,h_n)|
\leq C(1+m+n)^6R^{-6}.
\tag{15.2b}
$$

For the compensated tangent the source remains zero and the exact two-scale
corner and outer-joint mismatches obey

$$
|\Delta C_{\Gamma_R}(h_m,h_n)|
\leq C(1+m+n)^6\left(\frac{L^2}{R^2}+\frac{L^4}{R^2}\right),
\tag{15.2c}
$$

$$
|\Delta\mathcal F^J_{mn}|
\leq C(1+m+n)^6\frac{L^2}{R^2}.
\tag{15.2d}
$$

The complete finite-wall compensated kernel also obeys

$$
\left|\int_{\mathcal H_\epsilon}\mathcal F^{\rm comp}_{mn}\,du\right|
\leq C(1+m+n)^7L^{-2}
\tag{15.2e}
$$

on $y=1/(2L)$. This includes the exact finite phase and $r\sim L$ layer, so
there is no independent finite-wall anchor-shift error. The explicit choice

$$
\boxed{
L=M^{10},
\qquad
\tanh\frac\epsilon2=\frac1{2M^{10}},
\qquad
\epsilon=2\operatorname{artanh}\frac1{2M^{10}},
\qquad
R=M^{30}
}
\tag{15.3}
$$

makes the transition, raw wall, raw joint, complete finite-wall compensated,
outer Brown--York source, raw outer Cauchy corner, compensated corner
mismatch, and compensated joint mismatch errors respectively

$$
O(M^{-14}),\quad O(M^{-53}),\quad O(M^{-154}),\quad
O(M^{-13}),\quad 0,\quad O(M^{-174}),\quad
O(M^{-34}+M^{-14}),\quad O(M^{-34}).
\tag{15.4}
$$

Thus the conservative total error is $O(M^{-13})$. The fused-horizon local
core separately obeys the sharper $O(M^{-14})$ estimate, but it is only one
part of the complete finite-wall kernel.

For the endpoint momentum trace,

$$
\|f\mapsto f''(a)\|_{(H^s_{\leq M})^*}^2
\asymp\sum_{m=2}^Mm^{4-2s}.
\tag{15.5}
$$

Hence the separated point-anchor completion is continuous exactly for
$s>5/2$. This threshold is sharp for that chart. It does not contradict the
$H^2$ closure of the combined form (14.11), where the point-anchor terms have
already cancelled.

For left-moving time evolution

$$
(U_tf)(\phi)=f(\phi-t),
\tag{15.6}
$$

the covariant fixed-anchor projector and traces are

$$
P_{A,t}=U_{-t}P_AU_t,
\qquad
q_{\pm,t}=q_\pm U_t,
\qquad
p_{\pm,t}=p_\pm U_t.
\tag{15.7}
$$

They obey $P_{A,t}^2=P_{A,t}$,
$q_{\pm,t}P_{A,t}=0$, and
$P_{A,t+\tau}=U_{-\tau}P_{A,t}U_\tau$. The right-moving sector has the same
form with $U_tf(\phi)=f(\phi+t)$.

Including every second normal jet used by the fixed Fermi polynomial, define
the independent coefficient collar
$\mathscr C_{\rho_0}^s=\operatorname{Ext}(\mathscr J^s)$ with the explicit
jet graph norm. It injects boundedly into
$H^{s-5}(\mathbb R_u;H^2(B_{\rho_0};N\gamma_A))$. The strong HW boundary
conditions hold in its coefficient-trace topology. More importantly, for
the complete pulled-back action,

$$
\Delta_Xg(P_{\rm HW}h,-V[h])=h.
\tag{15.8}
$$

Thus every complete bulk, wall, joint, anchor, and action-derived edge sector
on the HW tangent equals its fixed-section value at finite regulator. Changing
the off-cut extension by $W$ adds the exact degeneracy $(RW,-W)$, so collar
continuity, off-cut independence, and regulator compatibility reduce to the
fixed-section estimates rather than requiring products of weak second normal
jets. Equations (15.1)--(15.4) make the total relative-action flux vanish, so
the finite-action flux law proves that time translation is a
symplectomorphism between transported sections. Applying the transported
$P_{\rm PSL}$ section gives the same statement on the full metric quotient.
The fixed and HW sections are related by the same proper extended degeneracy.

## Sources used in this audit

- `../article/1_model.md`, `../article/2_formalism.md`, and `../article/c_full theory derivation.md` fix the project convention.
- [Covariant phase space with boundaries](https://arxiv.org/abs/1906.08616) supplies the finite-action boundary descent logic.
- [Boundary and Corner Terms in the Action for General Relativity](https://arxiv.org/abs/1612.00149) derives corner terms for piecewise non-null and null boundaries with fixed pullback metric.
- [The Gravitational Hamiltonian in the Presence of Non-Orthogonal Boundaries](https://arxiv.org/abs/gr-qc/9603050) supplies the non-orthogonal Hamiltonian comparison.
- [Local phase space and edge modes for diffeomorphism-invariant theories](https://arxiv.org/abs/1706.05061) supplies the pullback/embedding potential.
- [Gravity Edges Modes and Hayward Term](https://arxiv.org/abs/1912.01636) supplies the area--boost corner pair.
- [Relative entropy for coherent states in chiral CFT](https://arxiv.org/abs/1903.07508) supplies the independently normalized Schwarzian functional used to audit (14.11).
- [A UV-Finite Ryu--Takayanagi Relation from Relative Entropy in AdS$_3$/CFT$_2$](https://arxiv.org/abs/2606.27915) supplies an independent linear-order Bañados/Fefferman--Graham/RT normalization check; it is not used as a second-order positivity proof.
- `../modular wedge corner benchmark/README.md` and its scripts fix the project/2501 current map.
