# Compact BTZ Brick-Wall Benchmark

## Status

This file fixes the compact regulator geometry and records the xAct-verified background and perturbative calculations. It calibrates orientations, surface gravity, the bulk Noether area term, and the distinction between an artificial timelike-wall generator and a limiting horizon corner. It also selects a two-sector regulator strategy: a source-retaining fixed-boost family for area variations and a collar-Dirichlet Brown--Henneaux family for canonical-energy fluctuations. For the latter family it evaluates a selected $m=1$ mode's sampled Einstein residuals, outer charge, and quadratic canonical energy. The conditional extension to general fixed-embedding data is H36 of `formula verification ledger.md`; universal phase-space existence and moving-edge data remain open.

## 1. Background and regulator

Use the non-rotating BTZ exterior in Gaussian radial distance,

$$
\mathrm ds^2
=-r_+^2\sinh^2\rho\,\mathrm dt^2
+\mathrm d\rho^2
+r_+^2\cosh^2\rho\,\mathrm d\phi^2,
\qquad
\phi\sim\phi+2\pi.
\tag{1.1}
$$

This is related to the standard radius by $r=r_+\cosh\rho$. The bifurcation circle is at $\rho=0$. At finite cutoff take

$$
M_{\epsilon,R}
=\{t_i\leq t\leq t_f,\ \epsilon\leq\rho\leq\rho_R\}.
\tag{1.2}
$$

Its hypersurface pieces are

$$
\Sigma_i,
\qquad
\Sigma_f,
\qquad
\Gamma_R=\{\rho=\rho_R\},
\qquad
\mathcal H_\epsilon=\{\rho=\epsilon\}.
$$

There are exactly four codimension-two joins,

$$
C_{R,i},\quad C_{R,f},\quad C_{\epsilon,i},\quad C_{\epsilon,f}.
$$

All are compact circles. There are no interval anchors or anchor strips.

## 2. Normals and induced orientations

Choose spacetime coordinate orientation

$$
\epsilon_M
=r_+^2\sinh\rho\cosh\rho\,
\mathrm dt\wedge\mathrm d\rho\wedge\mathrm d\phi.
$$

The future Cauchy normal and the outward timelike-wall normals are

$$
\tau
=\frac{1}{r_+\sinh\rho}\,\partial_t,
\qquad
n_R=+\partial_\rho,
\qquad
n_\epsilon=-\partial_\rho.
\tag{2.1}
$$

They obey

$$
\tau^2=-1,
\qquad
n_R^2=n_\epsilon^2=1,
\qquad
\tau\mathbin{\cdot}n_R
=\tau\mathbin{\cdot}n_\epsilon=0.
\tag{2.2}
$$

Consequently every background join is orthogonal. For variations preserving $\tau\cdot n_a=0$, there is no boost-angle variation.

On a $t={\rm const}$ slice,

$$
\epsilon_\Sigma=\iota_\tau\epsilon_M
=r_+\cosh\rho\,\mathrm d\rho\wedge\mathrm d\phi.
$$

Contracting with the outward cut normals gives

| cut | outward normal in $\Sigma$ | induced one-form orientation |
|---|---|---|
| $C_R$ | $+\partial_\rho$ | $+\mathrm d\phi$ |
| $C_\epsilon$ | $-\partial_\rho$ | $-\mathrm d\phi$ |

Thus, when both circles are parameterized with increasing $\phi$,

$$
\partial\Sigma=C_R\sqcup(-C_\epsilon).
\tag{2.3}
$$

The remaining induced form orientations are

| hypersurface | outward normal | induced form |
|---|---|---|
| $\Sigma_f$ | $+\tau$ | $+r_+\cosh\rho\,\mathrm d\rho\wedge\mathrm d\phi$ |
| $\Sigma_i$ | $-\tau$ | $-r_+\cosh\rho\,\mathrm d\rho\wedge\mathrm d\phi$ |
| $\Gamma_R$ | $+\partial_\rho$ | $-r_+^2\sinh\rho\cosh\rho\,\mathrm dt\wedge\mathrm d\phi$ |
| $\mathcal H_\epsilon$ | $-\partial_\rho$ | $+r_+^2\sinh\rho\cosh\rho\,\mathrm dt\wedge\mathrm d\phi$ |

The component action uses the positive density $\sqrt{-\gamma}\,\mathrm dt\mathrm d\phi$ together with the declared outward normal; the form table is used to audit Stokes signs.

## 3. Background wall geometry

For $n_R=+\partial_\rho$ and $n_\epsilon=-\partial_\rho$, xAct gives

$$
K_R=\coth\rho+\tanh\rho=2\coth(2\rho),
$$

$$
K_\epsilon=-\coth\rho-\tanh\rho=-2\coth(2\rho).
\tag{3.1}
$$

The wall and cut densities are

$$
\sqrt{-\gamma}=r_+^2\sinh\rho\cosh\rho,
\qquad
\sqrt q=r_+\cosh\rho.
\tag{3.2}
$$

For the minimal inner GHY candidate $c_\epsilon=0$,

$$
\sqrt{-\gamma}\,K_\epsilon
=-r_+^2\cosh(2\rho),
$$

so

$$
\lim_{\epsilon\to0^+}
\sqrt{-\gamma}\,K_\epsilon=-r_+^2.
\tag{3.3}
$$

Finiteness of (3.3) does not by itself prove differentiability or zero symplectic flux.

## 4. Killing normalization and area charge

The stationary Killing field $\partial_t$ has surface gravity $r_+$. The modular-normalized field is

$$
\xi_{\rm mod}=\frac{2\pi}{r_+}\,\partial_t.
\tag{4.1}
$$

The xAct check gives

$$
-\frac12\nabla_\mu\xi_\nu\nabla^\mu\xi^\nu
=r_+^2\cosh^2\rho
\xrightarrow{\rho\to0}r_+^2
$$

for $\xi=\partial_t$, and

$$
-\frac12\nabla_\mu\xi_{{\rm mod}\,\nu}
\nabla^\mu\xi_{\rm mod}^{\nu}
=4\pi^2\cosh^2\rho
\xrightarrow{\rho\to0}(2\pi)^2.
\tag{4.2}
$$

Using the project Noether tensor

$$
Q_\xi^{\mu\nu}
=\frac{1}{2\kappa_{\mathrm p}^2}
(\nabla^\mu\xi^\nu-\nabla^\nu\xi^\mu),
$$

the inner cut with the outward-from-the-retained-region normal gives

$$
\int_{C_\epsilon}^{\rm out}
\sqrt q\,\tau_\mu n_{\epsilon\nu}Q_{\xi_{\rm mod}}^{\mu\nu}
=-\frac{4\pi^2r_+}{\kappa_{\mathrm p}^2}\cosh^2\epsilon.
\tag{4.3}
$$

Since

$$
A_\gamma=2\pi r_+,
\qquad
\frac{A_\gamma}{4G}
=\frac{4\pi^2r_+}{\kappa_{\mathrm p}^2},
$$

equation (4.3) implies

$$
\boxed{
-\lim_{\epsilon\to0^+}
\int_{C_\epsilon}^{\rm out}
\sqrt q\,\tau_\mu n_{\epsilon\nu}Q_{\xi_{\rm mod}}^{\mu\nu}
=\frac{A_\gamma}{4G}.
}
\tag{4.4}
$$

The explicit minus converts the outward-inner cut orientation to the horizon term in the outer-minus-inner charge law.

## 5. The artificial wall generator is not the horizon corner

Applying the full finite-wall matching formula with $c_\epsilon=0$ gives

$$
H_{\xi_{\rm mod},\epsilon}^{\rm BY}
=\frac{4\pi^2r_+}{\kappa_{\mathrm p}^2}\sinh^2\epsilon,
$$

and therefore

$$
\boxed{
\lim_{\epsilon\to0^+}
H_{\xi_{\rm mod},\epsilon}^{\rm BY}=0.
}
\tag{5.1}
$$

Equations (4.4) and (5.1) are not contradictory. The first is the limiting bulk Noether corner with the orientation used in the charge law. The second includes the inner GHY boundary descent $\mu_{\xi,\epsilon}-X_\xi\cdot C_\epsilon$, which cancels the area-sized bulk term in the complete timelike-wall generator.

Therefore the following statement is incorrect:

> The full inner Brown--York charge of the stretched horizon tends to $A/(4G)$.

The statement supported by the current check is instead:

> The inner GHY wall can regulate the variational problem, but the horizon area term is the oppositely oriented bulk Noether corner that remains in the charge identity after the artificial wall is removed. One must separately prove that the wall correction to the symplectic form has the required zero-flux or vanishing limit.

This is now the main Phase 1 derivation target.

### 5.1 What Appendix B.3 of 2501 actually establishes

The visually checked formulas on PDF pages 76--77 (printed pages 74--75) impose a brick wall at $\delta\rho=\epsilon$, add GHY, and take

$$
h_{\delta\rho\mu}|_{\delta\rho=\epsilon}=0.
\tag{5.2}
$$

Their symplectic boundary one-form is proportional to

$$
c^\nu=h_{\mu\alpha}n^\alpha q^{\mu\nu},
$$

so (5.2) sets it to zero. The direct project translation is

$$
C_\epsilon^\mu[\delta g]
=-\frac{1}{2\kappa_{\mathrm p}^2}
\gamma^{\mu\nu}n^\rho\delta g_{\nu\rho}=0,
\qquad
\delta C_\epsilon=0.
\tag{5.3}
$$

This is a useful conditional result: in Gaussian radial gauge, with all allowed tangent variations preserving the condition, the explicit $-\delta C_\epsilon$ term in the integrated symplectic form vanishes.

However, (5.2) is a condition on the normal components of the perturbation, not the standard Dirichlet condition $\delta\gamma_{ij}=0$ on the induced metric. The finite-action identity still contains

$$
-\frac12\int_{\mathcal H_\epsilon}
\sqrt{-\gamma}\,\mathcal T_\epsilon^{ij}\delta\gamma_{ij}.
\tag{5.4}
$$

Taking another field-space variation shows that the remaining wall flux is proportional to

$$
-\frac12\delta\!\left(\sqrt{-\gamma}\,
\mathcal T_\epsilon^{ij}\right)
\wedge\delta\gamma_{ij}.
\tag{5.5}
$$

Therefore radial gauge alone establishes neither differentiability of the inner action, vanishing of its Brown--York source term, nor zero flux. The project must state separately whether it fixes $\gamma_{ij}$, fixes its conjugate momentum, imposes a Lagrangian mixed relation, retains (5.4) as source work, varies the wall embedding, or uses a different horizon ensemble.

The same appendix derives AdS-Rindler mode falloffs and then **expects** a similar result for general stationary horizons under a uniform decay condition $|h_{\mu\rho}|<\rho^\alpha$, $\alpha>0$. That generalization is presented there as an expectation, not a theorem; for BTZ it must be checked on the selected perturbation family.

### 5.2 Finite-cutoff endpoint joints in radial gauge

The Harlow--Wu endpoint potential and a Hayward joint action belong to two different variational problems. In the time-evolution problem inherited from `../article/`, the inner endpoint one-form is

$$
C_\epsilon^\mu[\delta g]
=-\frac{1}{2\kappa_{\mathrm p}^2}
\gamma^{\mu\nu}n_\epsilon^\rho\delta g_{\nu\rho}.
\tag{5.6}
$$

If spacelike GHY terms are additionally placed on $\Sigma_i$ and $\Sigma_f$, the fully Dirichlet action instead also contains a boost joint of the form

$$
S_{J_\epsilon}
=\frac{\sigma_J}{\kappa_{\mathrm p}^2}
\int_{J_\epsilon}\sqrt q\,\eta_\epsilon,
\qquad
\sinh\eta_\epsilon=n_\epsilon\mathbin{\cdot}\tau.
\tag{5.7}
$$

The orientation sign $\sigma_J$ is unnecessary for the compact orthogonal conclusion. Indeed, consider the most general tangentially deformed Gaussian-radial wall metric

$$
\mathrm ds^2=\mathrm d\rho^2
+g_{tt}\mathrm dt^2
+2g_{t\phi}\mathrm dt\mathrm d\phi
+g_{\phi\phi}\mathrm d\phi^2.
\tag{5.8}
$$

Block diagonality implies $g^{\rho t}=g^{\rho\phi}=0$. The normalized normal to a fixed-$t$ slice therefore has no radial component, so at every finite wall

$$
n_\epsilon\mathbin{\cdot}\tau=0,
\qquad
\eta_\epsilon=0,
\qquad
\delta\eta_\epsilon=\delta^2\eta_\epsilon=0.
\tag{5.9}
$$

The same radial condition gives $C_\epsilon=\delta C_\epsilon=0$. These facts hold for arbitrary tangential perturbations and do not yet impose Dirichlet data. The parameter variation in Section 6 is the explicit counterexample: it obeys radial gauge but has nonzero Brown--York source work.

For the collar family (7.8), the stronger statement $h=k=0$ on a full neighborhood also sets the induced-metric variation and every normal jet entering the GHY variation to zero. Hence, for every $\epsilon<\rho_0$,

$$
\boxed{
\delta S_{\mathcal H_\epsilon}
=C_\epsilon
=\delta C_\epsilon
=\mathcal B_\epsilon
=\omega_\epsilon^{\rm pullback}
=S_{J_\epsilon}
=\delta S_{J_\epsilon}
=\delta^2S_{J_\epsilon}=0.
}
\tag{5.10}
$$

This is an exact finite-cutoff statement for the fluctuation sector. It implies that the brick-wall limit of every **field-dependent** inner GHY/Harlow--Wu/endpoint-joint correction is zero. The fixed-surface area and inner Noether perturbative coefficients are also zero because the perturbation vanishes in the same collar. The background area normalization remains (4.4): it is the oppositely oriented bulk Noether corner, not the complete Brown--York generator of the artificial wall.

There is no contradiction with the fused corner in (7.3). That comparison functional describes removal of the timelike wall, after which the endpoint normals have a finite relative boost $s$; it is not one of the orthogonal wall--slice joins in (5.7).

## 6. Parameter variation is not fixed-wall Dirichlet

At fixed $(t,\rho,\phi)$, varying $r_+$ changes the induced wall metric by

$$
\partial_{r_+}\gamma_{tt}
=-2r_+\sinh^2\rho,
\qquad
\partial_{r_+}\gamma_{\phi\phi}
=2r_+\cosh^2\rho.
\tag{6.1}
$$

In particular, the circle metric still varies at $\rho=0$. Hence a BTZ parameter variation is not an allowed variation in a phase space with fixed inner induced metric. It may be used for the geometric normalization (4.4), but a first-law calculation must do one of the following:

1. retain the inner Brown--York source term;
2. vary the wall embedding and include its displacement data;
3. choose different horizon boundary data, such as a mixed ensemble fixing the appropriate intensive variable;
4. use the parameter variation only as an auxiliary family, not as a tangent vector to the zero-flux Dirichlet phase space.

The quadratic canonical-energy benchmark must use a perturbation compatible with the phase space selected after this fork is resolved.

## 7. Selected two-sector regulator strategy

No single finite-wall boundary condition contains both the unrestricted BTZ parameter variation and a zero-flux Dirichlet fluctuation. The compact benchmark therefore keeps two logically distinct sectors.

### 7.1 Area sector: fixed boost and retained source work

Let

$$
\xi_s=\frac{s}{r_+}\partial_t=\partial_\lambda,
$$

where $s$ is held fixed while $r_+$ varies. In the unit flow coordinate $\lambda$, the wall metric is

$$
\left.\mathrm ds^2\right|_{\mathcal H_\epsilon}
=-s^2\sinh^2\epsilon\,\mathrm d\lambda^2
+r_+^2\cosh^2\epsilon\,\mathrm d\phi^2.
\tag{7.1}
$$

Thus the intensive boost datum is fixed, but the transverse circle metric and its Brown--York source work are retained. Per unit $\lambda$ interval, the xAct calculation gives

$$
\mathcal B_\epsilon[\partial_{r_+}]
=-\frac{2\pi s}{\kappa_{\mathrm p}^2}\cosh^2\epsilon.
\tag{7.2}
$$

Define the comparison functional associated with fusing the stretched wall to a boost corner,

$$
I_{\mathrm{fuse},\epsilon}
=\frac{sA_\epsilon}{\kappa_{\mathrm p}^2},
\qquad
A_\epsilon=2\pi r_+\cosh\epsilon.
\tag{7.3}
$$

This is not an additional finite-$\epsilon$ slice--slice joint in the brick-wall action: the timelike wall still separates the endpoint slices. It records the corner functional to which the wall variational data must transgress when the regulator is removed. Its variation obeys

$$
\partial_{r_+}I_{\mathrm{fuse},\epsilon}
=\frac{2\pi s}{\kappa_{\mathrm p}^2}\cosh\epsilon,
$$

and therefore

$$
\boxed{
\mathcal B_\epsilon[\partial_{r_+}]
+\partial_{r_+}I_{\mathrm{fuse},\epsilon}
=-\frac{2\pi s}{\kappa_{\mathrm p}^2}
\cosh\epsilon(\cosh\epsilon-1)
\xrightarrow{\epsilon\to0}0.
}
\tag{7.4}
$$

The cancellation is a regulator-removal statement, not an exact finite-wall differentiability statement; the residual is $O(\epsilon^2)$. The limiting corner is

$$
I_\gamma
=\frac{sA_\gamma}{\kappa_{\mathrm p}^2}
=\frac{s}{2\pi}\frac{A_\gamma}{4G}.
\tag{7.5}
$$

Independently, the outward-inner bulk Noether integral is

$$
\int_{C_\epsilon}^{\rm out}
\sqrt q\,\tau_\mu n_{\epsilon\nu}Q_{\xi_s}^{\mu\nu}
=-\frac{2\pi s r_+}{\kappa_{\mathrm p}^2}\cosh^2\epsilon
\xrightarrow{\epsilon\to0}
-\frac{sA_\gamma}{\kappa_{\mathrm p}^2}.
\tag{7.6}
$$

Hence the oppositely oriented horizon term agrees with (7.5). Equations (7.4)--(7.6) provide the first explicit, one-parameter BTZ realization of the wall-to-corner regulator removal. They do not yet prove the same transgression for arbitrary perturbations.

### 7.2 Fluctuation sector: collar-Dirichlet representative

Let $u=t+\phi$, $f(u)=\cos(mu)$, and choose the chiral asymptotic vector

$$
\zeta_{\rm BH}
=\left[
\frac f2+\frac{f''}{2r_+^2}(\coth\rho-1)
\right]\partial_t
-\frac{f'}2\partial_\rho
+\left[
\frac f2-\frac{f''}{2r_+^2}(1-\tanh\rho)
\right]\partial_\phi.
\tag{7.7}
$$

Choose a smooth step $\chi(\rho)$ with

$$
\chi=0\quad(\rho\leq\rho_0),
\qquad
\chi=1\quad(\rho\geq2\rho_0),
$$

and define

$$
\zeta=\chi\zeta_{\rm BH},
\qquad
h=\mathcal L_\zeta G,
\qquad
k=\frac12\mathcal L_\zeta^2G.
\tag{7.8}
$$

For a brick wall with $\epsilon<\rho_0$, one has identically in a full horizon collar

$$
\zeta=0,
\qquad
h=0,
\qquad
k=0.
\tag{7.9}
$$

Thus the finite wall satisfies fixed induced metric, radial gauge, $C_\epsilon=0$, vanishing Brown--York source work, vanishing wall symplectic flux, and unperturbed orthogonal endpoint joins. In the outer region the cutoff vector exactly restores $\zeta_{\rm BH}$. The uncut representative obeys

$$
h_{\rho\rho}=h_{t\rho}=h_{\rho\phi}=0,
$$

and its leading tangential $e^{2\rho}$ ratios vanish, while

$$
\lim_{\rho\to\infty}h_{tt}
=\lim_{\rho\to\infty}h_{t\phi}
=\lim_{\rho\to\infty}h_{\phi\phi}
=-\frac m2(r_+^2+m^2)\sin[m(t+\phi)].
\tag{7.10}
$$

The family is therefore nontrivial at the asymptotic boundary while being exactly Dirichlet at the inner regulator. Since

$$
g(\alpha)=\Phi_\alpha^*G
=G+\alpha h+\alpha^2k+O(\alpha^3),
$$

diffeomorphism covariance implies

$$
\mathcal E^{(1)}[h]=0,
\qquad
\mathcal E^{(1)}[k]+\mathcal E^{(2)}[h,h]=0.
\tag{7.11}
$$

Equation (7.11) is first an exact covariance consequence. An independent local-jet component engine then expands

$$
\mathcal E_{\mu\nu}(g)
=R_{\mu\nu}-\frac12Rg_{\mu\nu}-g_{\mu\nu}
=a\,\mathcal E^{(1)}_{\mu\nu}[h]
+a^2\!\left(
\mathcal E^{(1)}_{\mu\nu}[k]
+\mathcal E^{(2)}_{\mu\nu}[h,h]
\right)+O(a^3).
$$

For $r_+=2$, $\rho_0=\log2/2$, and the two transition-region points

$$
(t,\phi,\rho)
=\left(0,\frac\pi4,\frac{3\rho_0}{2}\right),
\qquad
\left(\frac\pi7,\frac\pi{11},\frac{7\rho_0}{4}\right),
$$

it evaluates the metric jets through second coordinate derivatives at 100-digit precision. The background connection agrees with xCoba, and the maximum component norms of $\mathcal E^{(1)}[h]$, the complete $a^2$ coefficient, and the separately assembled $\mathcal E^{(1)}[k]+\mathcal E^{(2)}[h,h]$ are below $10^{-70}$. The script passes $8/8$ tests; a fresh dedicated xAct residual verifier independently classifies all seven tensor residuals as zero after the declared $10^{-70}$ chop.

This is a high-precision sampled component check of the selected collar mode, not a global symbolic proof for arbitrary $r_+$ or a characterization of the general horizon phase space.

### 7.3 Renormalized outer charge of the $m=1$ collar mode

In the asymptotic region $\chi=1$, expand the outer Brown--York integrand using the same counterterm and coefficient convention as `../article/`,

$$
-\int_0^{2\pi}\!\mathrm d\phi\,
\sqrt q\,\tau^a\xi_{\rm mod}^b
B_{ab}
=\mathcal Q_0+\alpha\mathcal Q_1+\alpha^2\mathcal Q_2+O(\alpha^3),
\tag{7.12}
$$

where

$$
B_{ab}=K_{ab}-K\gamma_{ab}+\gamma_{ab},
\qquad
\xi_{\rm mod}=\frac{2\pi}{r_+}\partial_t.
$$

For $m=1$, the renormalized density limits are

$$
q_1(u)
=-\frac{\pi(r_+^2+1)}{r_+}\sin u,
\tag{7.13}
$$

$$
q_2(u)
=\frac{\pi(r_+^2+1)}{4r_+}
\left(1-3\cos2u\right),
\qquad
u=t+\phi.
\tag{7.14}
$$

Therefore

$$
\boxed{
\mathcal Q_1=0,
\qquad
\mathcal Q_2
=\frac{\pi^2(r_+^2+1)}{2r_+}>0.
}
\tag{7.15}
$$

The script computes $B_{ab}$ without its overall $1/\kappa_{\mathrm p}^2$. With $\alpha=\kappa_{\mathrm p}a$, (7.15) is precisely the unit-amplitude finite $a^2$ coefficient $H_{\xi_{\rm mod},T}^{[0]}$ in the project's perturbative normalization.

Keeping independent markers on $h$ and $k$ gives the Brown--York coefficient split

$$
\boxed{
\mathcal Q_2^{(k)}
=\frac{\pi^2(r_+^2+1)}{2r_+},
\qquad
\mathcal Q_2^{(h^2)}=0.
}
\tag{7.16}
$$

Thus the nonlinear boundary stress of this exact solution family is carried entirely by the $k$ backreaction in this representation.

At second order the uncut representative has $k_{\rho i}=O(e^{-4\rho})$. Raising its tangential index gives an $O(e^{-6\rho})$ radial shift, so the omitted shift correction to $K_{ij}$ vanishes in the renormalized charge limit. The script verifies the finite $e^{4\rho}k_{\rho i}$ limits explicitly.

Because $h=k=0$ in the inner collar, all fixed-surface inner charge and area coefficients vanish for this particular family. Equation (7.15) is therefore the correct nonzero outer datum for the compact quadratic test. Equation (7.16) does **not** say that canonical energy vanishes: $\mathcal E^{(1)}[k]$ is nonzero by itself and is fixed by $\mathcal E^{(1)}[k]+\mathcal E^{(2)}[h,h]=0$. The CPS conversion and its factor of two are carried out next.

### 7.4 CPS current split and canonical-energy normalization

The exact Einstein--Hilbert Noether cut provides the project tensors through

$$
\left.
\frac{1}{2\kappa_{\mathrm p}^2}
\frac{\sqrt{-g}}{\sqrt{-G}}
(\nabla^\mu\xi^\nu-\nabla^\nu\xi^\mu)
\right|_{\rm sub}
=\frac1{\kappa_{\mathrm p}}S_\xi^{\mu\nu}[h]
+S_{\xi,h}^{[0],\mu\nu}[h]
+S_\xi^{\mu\nu}[k]+O(\kappa_{\mathrm p}).
\tag{7.17}
$$

All cut integrals in this subsection include the background contraction $\sqrt{q^{(0)}}\tau_\mu^{(0)}n_\nu^{(0)}$ and the induced outer-minus-inner orientation. With that shorthand, independent scaling of $h$ and $k$ in the cut gives

$$
\int_{C_\infty}S_{\xi,h}^{[0]}[h]=0,
\qquad
\int_{C_\infty}S_\xi[k]
=\frac{\pi^2(r_+^2+1)}{2r_+}.
\tag{7.18}
$$

The renormalized outer Harlow--Wu/GHY descent is zero pointwise for this mode, so the Einstein--Hilbert cut in (7.18) already equals the Brown--York coefficient (7.15). At the inner cut every term is identically zero because the fields vanish in a full collar.

Before using the second-order equation, the separate $k$-sector surface tensor is

$$
S_{\xi,k}^{[0],\mu\nu}[k]
=\xi^{[\mu}
\left(\nabla_\rho k^{\nu]\rho}-\nabla^{\nu]}k\right).
\tag{7.19}
$$

The direct component calculation gives

$$
\int_{C_\infty}S_{\xi,k}^{[0]}[k]=0.
\tag{7.20}
$$

Using the inherited off-shell linear identity

$$
\xi_\nu\mathcal E^{(1),\mu\nu}[k]
+\nabla_\nu S_{\xi,k}^{[0],\mu\nu}[k]
=\nabla_\nu S_\xi^{\mu\nu}[k]
\tag{7.21}
$$

and the second-order solution equation

$$
T_h^{\mu\nu}
=-\mathcal E^{(2),\mu\nu}[h,h]
=\mathcal E^{(1),\mu\nu}[k],
$$

one obtains

$$
\begin{aligned}
H_{\xi,h}^{[0]}
&=\int_\Sigma\mathrm d^2x\sqrt{\sigma^{(0)}}
\tau_\mu^{(0)}\xi_\nu T_h^{\mu\nu}
+\int_{\partial\Sigma}S_{\xi,h}^{[0]}[h]\\
&=\int_{C_\infty}
\left(S_\xi[k]-S_{\xi,k}^{[0]}[k]
+S_{\xi,h}^{[0]}[h]\right)\\
&=\frac{\pi^2(r_+^2+1)}{2r_+}.
\end{aligned}
\tag{7.22}
$$

This is the unit-amplitude $a^2$ Taylor coefficient of the pure-$h$ finite current for

$$
g(a)=G+a\kappa_{\mathrm p}h
+a^2\kappa_{\mathrm p}^2k+O(a^3).
$$

The canonical energy is the second variation, not the Taylor coefficient:

$$
E_{\mathrm{can,p}}[\kappa_{\mathrm p}h]
:=\Omega_{\mathrm p}
[G;\kappa_{\mathrm p}h,
\mathcal L_{\xi_{\rm mod}}(\kappa_{\mathrm p}h)]
=\left.\frac{\mathrm d^2}{\mathrm da^2}
H_{\xi_{\rm mod},T}[g(a)]\right|_{a=0}.
\tag{7.23}
$$

There is no inner area variation or boundary flux for the collar family, hence

$$
\boxed{
E_{\mathrm{can,p}}[\kappa_{\mathrm p}h]
=2H_{\xi,h}^{[0]}
=\frac{\pi^2(r_+^2+1)}{r_+}>0.
}
\tag{7.24}
$$

Equation (7.24) closes the compact mode's canonical-energy normalization. It uses the second-order equation only in the passage from (7.21) to (7.22); the Noether-cut and boundary-descent decompositions (7.17)--(7.20) are coefficient identities evaluated independently.

As an independent check, vary the form-valued project potential

$$
\vartheta_{\rm EH}^{\mu}[b]
=-\frac{1}{2\kappa_{\mathrm p}^2}
\left(G^{\mu\alpha}\nabla^\nu b_{\alpha\nu}
-G^{\alpha\beta}\nabla^\mu b_{\alpha\beta}\right)
\tag{7.25}
$$

directly. The vector variation alone is insufficient: the volume-form variation contributes

$$
\omega_{\mathrm p}^{\mu}[h_1,h_2]
=\delta_{h_1}\vartheta^\mu[h_2]
-\delta_{h_2}\vartheta^\mu[h_1]
+\frac12h_1\vartheta^\mu[h_2]
-\frac12h_2\vartheta^\mu[h_1],
\tag{7.26}
$$

where $h_i=G^{\mu\nu}(h_i)_{\mu\nu}$. Omitting the last two terms produces a cutoff-dependent false result and fails the regression test.

For $h_1=h$ and $h_2=\mathcal L_{\xi_{\rm mod}}h$, integrate (7.26) using the $C^5$ collar profile

$$
\chi_{\rho_0}(\rho)
=\begin{cases}
0,&\rho\leq\rho_0,\\
P(\rho/\rho_0-1),&\rho_0<\rho<2\rho_0,\\
1,&\rho\geq2\rho_0,
\end{cases}
\tag{7.27}
$$

$$
P(x)=462x^6-1980x^7+3465x^8-3080x^9+1386x^{10}-252x^{11}.
$$

Let $\mathcal D(\rho;\chi,\chi',\chi'')$ be the angle-integrated radial density obtained from (7.26). It contains only $\chi\chi'$, $\chi\chi''$, $(\chi')^2$, and $\chi'\chi''$. Define

$$
B(\rho)
:=\frac{\partial^2\mathcal D}
{\partial\chi\,\partial\chi''},
\qquad
C(\rho)
:=\frac12\frac{\partial^2\mathcal D}
{\partial\chi'\,\partial\chi''},
\tag{7.28}
$$

and

$$
A(\rho)
:=\frac12\left(
\frac{\partial^2\mathcal D}
{\partial\chi\,\partial\chi'}-B'(\rho)
\right).
$$

The symbolic calculation verifies

$$
A(\rho)=\frac{\pi^2(r_+^2+1)}{r_+},
\tag{7.29}
$$

$$
\boxed{
\mathcal D
=\frac{\mathrm d}{\mathrm d\rho}
\left[
A\chi^2+B\chi\chi'+C(\chi')^2
\right].
}
\tag{7.30}
$$

Every smooth collar profile with constant inner and outer jets obeys

$$
(\chi,\chi')_{\rm inner}=(0,0),
\qquad
(\chi,\chi')_{\rm outer}=(1,0).
$$

Hence (7.30) proves analytically that

$$
\int_\Sigma\omega_{\mathrm p}
=\frac{\pi^2(r_+^2+1)}{r_+}
\tag{7.31}
$$

independently of the transition profile. As supplemental numerical checks, fifty-digit integrations for $r_+=2,3$ and both $\rho_0=\log2/2,\log2$ reproduce (7.31) to better than $10^{-25}$.

## 8. Verification

Machine-verified: $R_{\mu\nu}+2g_{\mu\nu}=0$; $\mathcal L_{\partial_t}g=0$; normal normalizations and orthogonality; equations (3.1)--(3.3), (4.2)--(4.4), (5.1), (5.6)--(5.10), (6.1), (7.2), (7.4), (7.6), the component statements (7.9)--(7.11), the outer charge equations (7.13)--(7.16), the CPS surface/current coefficients (7.18), (7.20), and (7.22), and the exact primitive identities (7.29)--(7.30). Numerically verified at fifty-digit working precision: (7.31) for two $r_+$ values and two collar radii.

Visually confirmed from the source PDF: the brick-wall condition, symplectic boundary one-form, radial-gauge implication, mode falloffs, and the explicitly conjectural general-stationary-horizon extension in Appendix B.3 of 2501.08308v2.

Tool: xAct/xCoba through `btz_brick_wall_check.wl`, `btz_inner_wall_joint_check.wl`, `btz_collar_mode_check.wl`, `btz_collar_einstein_check.wl`, `btz_outer_charge_check.wl`, and `btz_canonical_energy_check.wl`, each run in a fresh kernel. The inner-wall/joint script passes $15/15$ standalone tests, and a separate `xact_verify_residuals` run classifies all $15$ scalar component residuals as zero.

Assumptions: $r_+>0$, $\rho>0$, unit AdS radius, signature $(-,+,+)$, $\phi\sim\phi+2\pi$, and $\kappa_{\mathrm p}^2=8\pi G$.

Not verified in this benchmark alone: a general finite-$\epsilon$ differentiable source-retaining action beyond the one-dimensional area family. The moving-joint pair, general AdS$_3$ area/displacement split, and arbitrary-gauge cocycle are derived in the later project notes and verification entries H28, H37, and H40.
