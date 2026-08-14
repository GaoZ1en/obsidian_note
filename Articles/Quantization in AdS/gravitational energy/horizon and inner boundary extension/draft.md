# Gravitational Energy with Horizons and Inner Boundaries

## Status

This is a new derivation built from the finite-action covariant-phase-space formalism of `../article/`. The original article is not modified. Equations labelled as targets below are not established until they acquire entries in `formula verification ledger.md`.

## 1. Problem and scope

The existing construction identifies the perturbative CPS charge with the renormalized Brown--York charge for Einstein gravity about global AdS$_3$, with Brown--Henneaux boundary conditions, an exact background Killing field, and no horizon or inner boundary. We extend the same construction to a partial Cauchy surface

$$
\partial\Sigma=B_{\infty}\cup\gamma,
$$

where $B_{\infty}$ lies at the asymptotic timelike boundary and $\gamma$ is either a compact bifurcation surface or a regulated entanglement-wedge boundary.

The central question is whether all inner terms follow from a differentiable finite action and whether the resulting second-order charge separates into an area contribution and a gauge-invariant canonical-energy contribution.

## 2. Inherited finite-action CPS formalism

We keep the action normalization and perturbative expansion

$$
S_{\mathrm{bulk}}[g]
=\frac{1}{2\kappa_{\mathrm p}^{2}}
\int_M\mathrm d^3x\sqrt{-g}\,(R+2),
\qquad
\kappa_{\mathrm p}^{2}=8\pi G,
$$

$$
g_{\mu\nu}
=G_{\mu\nu}
+\kappa_{\mathrm p}h_{\mu\nu}
+\kappa_{\mathrm p}^{2}k_{\mu\nu}
+O(\kappa_{\mathrm p}^{3}).
$$

The integrated pre-symplectic potential is read from the complete action, including boundary and joint Lagrangians. A diffeomorphism generator is defined off shell by

$$
H_{\xi}=X_{\xi}\mathbin{\cdot}\theta-\alpha_{\xi}.
$$

Equations of motion and gauge conditions are imposed only after this identity has been derived.

At linear and second order we keep

$$
\mathcal E^{(1)}[h]=0
$$

separate from

$$
\mathcal E^{(1)}[k]+\mathcal E^{(2)}[h,h]=T.
$$

The finite pure-$h$ current retains the inherited off-shell split

$$
H_{\xi,h}^{\mu}
=\xi_{\nu}T_h^{\mu\nu}
+\nabla_{\nu}S_{\xi,h}^{\mu\nu}
+\mathcal R_{\xi,h}^{\mu},
\qquad
T_h^{\mu\nu}=-\mathcal E^{(2),\mu\nu}[h,h].
$$

## 3. Regulated geometry and variational principle

At finite cutoff the spacetime region has initial and final Cauchy endpoints and two timelike spatial-boundary components,

$$
\partial M
=\Sigma_f-\Sigma_i
+\Gamma_{\infty}
+\mathcal H_{\epsilon},
$$

together with every codimension-two intersection formed by these hypersurfaces. Every timelike normal points out of the retained region. With induced orientations, the boundary of a partial Cauchy surface is a sum over its components; when both cuts are written with one reference tangent orientation this becomes

$$
\partial\Sigma=C_\infty\sqcup(-C_\epsilon).
$$

The baseline uses the same time-evolution variational problem as `../article/`: Cauchy surfaces are endpoints, while $\Gamma_\infty$ and $\mathcal H_\epsilon$ carry timelike boundary Lagrangians. A fully Dirichlet piecewise-smooth action, with spacelike GHY and Hayward terms, is a distinct extension. The relation is now fixed at the level needed for the compact orthogonal benchmark: the Harlow--Wu $C_a$ is the field-space one-form in $(\Theta+\delta\ell_a)|_{\Gamma_a}=\mathrm dC_a+\mathcal B_a$, whereas a Hayward action is a field-space scalar added only in the fully Dirichlet problem. They are not identified.

### Result 3.1: componentwise finite-action variation

The inherited Einstein--GHY identity applies to each timelike component with its own outward normal. It cancels all uncontrolled normal derivatives of $\delta g$ and leaves the Brown--York source one-form $\mathcal B_a=-\tfrac12\Pi_a^{ij}\delta\gamma_{ij}^{(a)}$ plus the endpoint descent $\mathrm dC_a$. The conditional theorem below permits any declared Lagrangian source-retaining polarization; universal existence of such an ensemble remains open. The two compact sectors are controlled separately: the fixed-boost area family retains $\mathcal B_\epsilon$, while the collar fluctuation sets it to zero.

### Result 3.2: integrated pre-symplectic potential

Using outward normals on both timelike components, the baseline structural result is

$$
\theta_{\Sigma}
=\int_{\Sigma}\theta_{\mathrm{bulk}}
-C_{\Gamma_\infty}
-C_{\mathcal H_\epsilon}.
$$

If the inner expression is instead written with a reference normal pointing toward increasing radius, its displayed sign reverses. Non-orthogonal or moving joints may shift the endpoint potential or require extended corner data, but this contribution must be derived from the chosen variational problem; it is not denoted by an assumed $C_{\mathrm{joint}}$.

For compact BTZ, the first controlled regulator removal uses fixed boost normalization $s$ and retains the Brown--York source work under $r_+$ variation. The explicit result is

$$
\mathcal B_\epsilon[\partial_{r_+}]
+\partial_{r_+}\!\left(\frac{sA_\epsilon}{\kappa_{\mathrm p}^2}\right)
=-\frac{2\pi s}{\kappa_{\mathrm p}^2}
\cosh\epsilon(\cosh\epsilon-1)
\xrightarrow{\epsilon\to0}0.
$$

Here $sA_\epsilon/\kappa_{\mathrm p}^2$ is the comparison corner reached by fusing away the wall, not an extra joint added while the wall remains. Its limit is

$$
\frac{sA_\gamma}{\kappa_{\mathrm p}^2}
=\frac{s}{2\pi}\frac{A_\gamma}{4G},
$$

and equals the oppositely oriented limiting bulk Noether cut. This proves the transgression only on the stationary one-parameter family.

For the compact fluctuation sector, the finite-cutoff conclusion is stronger. Gaussian radial gauge preserves $g^{\rho t}=g^{\rho\phi}=0$, so a fixed-$t$ slice remains exactly orthogonal to the wall and

$$
n_\epsilon\mathbin{\cdot}\tau
=\eta_\epsilon
=\delta\eta_\epsilon
=\delta^2\eta_\epsilon=0.
$$

Since the collar family has $h=k=0$ in a full wall neighborhood, it also obeys

$$
\delta S_{\mathcal H_\epsilon}
=C_\epsilon
=\delta C_\epsilon
=\mathcal B_\epsilon
=\omega_\epsilon^{\rm pullback}
=S_{J_\epsilon}
=\delta S_{J_\epsilon}
=\delta^2S_{J_\epsilon}=0
$$

for every $\epsilon<\rho_0$. Thus no field-dependent inner GHY, Harlow--Wu endpoint, flux, or orthogonal-joint correction is hidden in the compact canonical-energy result.

## 4. Phase space, horizon regularity, and gauge transformations

We distinguish boundary conditions, gauge conditions, smoothness, and flux conditions. Smoothness is imposed in a two-sided coordinate system regular at the bifurcation surface. Extremal or Hollands--Wald gauge is introduced only after the subregion gauge quotient has been specified.

A diffeomorphism that vanishes at $B_{\infty}$ but not at $\gamma$ need not be a degeneracy of the subregion pre-symplectic form. The draft will determine whether the compact-horizon theorem can use a restricted zero-flux phase space or requires explicit edge variables.

On a Gaussian brick wall, radial gauge implies $C_{\mathcal H_\epsilon}=0$ because the inherited boundary potential is linear in $n^\rho\delta g_{\mu\rho}$. This is sufficient to remove the explicit $-\delta C_{\mathcal H_\epsilon}$ correction to $\Omega_\Sigma$ on the restricted gauge-fixed phase space. It is not the standard Dirichlet condition on the induced metric and does not remove the Brown--York source or symplectic-flux term. Boundary data, gauge, regularity, and zero flux remain separate assumptions.

The compact canonical-energy benchmark removes this ambiguity by choosing a Brown--Henneaux generator multiplied by a smooth cutoff that vanishes in a full horizon collar. Then $\zeta$, $h=\mathcal L_\zeta G$, and $k=\tfrac12\mathcal L_\zeta^2G$ vanish identically on the inner wall. Fixed induced metric, radial gauge, vanishing Brown--York source work, zero wall flux, and unchanged orthogonal joins therefore hold simultaneously, while the asymptotic perturbation remains nontrivial. This establishes a restricted benchmark phase space, not the general subregion gauge quotient.

## 5. Outer-minus-inner charge identity

### Result 5.1: finite-action Hamiltonian identity

For a field-independent exact background Killing field that preserves both walls and their declared boundary data, the single-wall descent of `../article/` sums componentwise:

$$
X_\xi\mathbin{\cdot}\delta
\left(S_{\rm bulk}+S_{\Gamma_\infty}+S_{\mathcal H_\epsilon}\right)
=\left.\alpha_\xi\right|_{\Sigma_f}
-\left.\alpha_\xi\right|_{\Sigma_i},
\qquad
\alpha_\xi
=\alpha_{\xi,{\rm bulk}}
-\mu_{\xi,\infty}-\mu_{\xi,\epsilon}.
$$

Therefore $H_\xi=X_\xi\cdot\theta-\alpha_\xi$ is defined before imposing field equations or horizon gauge, and field-space Cartan calculus gives

$$
\delta H_\xi
=\Omega_\Sigma(\delta g,\mathcal L_\xi g).
$$

Reducing the bulk current by Stokes and combining each cut with its own $\mu_{\xi,a}-X_\xi\cdot C_a$ gives

$$
\Omega_{\Sigma}(\delta g,\mathcal L_{\xi}g)
=\delta H_{\xi}^{\infty}
-\delta H_{\xi}^{\gamma}
+\text{constraints}
+\text{flux/joint terms},
$$

where the displayed outer-minus-inner sign is the conversion from induced cut orientations to a common reference orientation. In the collar sector the inner wall, endpoint-joint, and flux terms vanish at finite $\epsilon$, so the identity reduces exactly to the inherited outer formula for the field-dependent coefficients. In a general source-retaining or moving-joint phase space the last terms must remain; they have not been proved to vanish.

## 6. Bifurcation-surface charge and area

At a bifurcation surface,

$$
\xi|_{\gamma}=0,
\qquad
\nabla_{\mu}\xi_{\nu}|_{\gamma}
=s\,\epsilon_{\mu\nu}.
$$

Orient the horizon cut so that the background project Noether charge is

$$
H_{\xi}^{\gamma}
=\frac{s}{2\pi}\frac{A_{\gamma}}{4G}
$$

with the declared binormal and surface orientation. For a fixed embedding and

$$
g(\lambda)=G+\lambda p+\lambda^2r+O(\lambda^3),
$$

a local normal-coordinate expansion gives

$$
[\lambda]\left(\kappa_{\mathrm p}^2H_\xi^\gamma-sA_\gamma\right)=0,
$$

$$
\boxed{
[\lambda^2]\left(\kappa_{\mathrm p}^2H_\xi^\gamma-sA_\gamma\right)
=\frac{s}{2}\int_\gamma\sqrt q\,p_{kk}p_{ll}.
}
$$

The second-order metric coefficient $r$ cancels from the difference. Setting $p=\kappa_{\mathrm p}h$ and $r=\kappa_{\mathrm p}^2k$ therefore yields

$$
[\lambda^2]H_\xi^\gamma
=s\left(A^{\rm lin}[k,\gamma]+A^{\rm quad}[h,\gamma]\right)
+\frac{s}{2}\int_\gamma\sqrt q\,h_{kk}h_{ll}.
$$

In a Hollands--Wald normal-plane representative, $h_{kk}=h_{ll}=0$, so the fixed-surface charge equals the fixed-surface area through second order. The displayed obstruction is the project-convention form of the Appendix B.2 result of 2501.08308v2 and has been independently verified symbolically.

This closes only the fixed-embedding, Hollands--Wald part of the theorem. A displaced surface $\gamma^{(1)}$ adds $A^{\rm lin}[h,\gamma^{(1)}]$ and $A^{\rm quad}[G,\gamma^{(1)}]$; an arbitrary gauge also shifts canonical energy by its horizon corner completion. Those pieces must be derived before the general second-order identity is claimed.

For AdS$_3$ the displacement terms can nevertheless be made explicit. In a parallel Fermi frame along the background geodesic, let $u$ be arclength, $V^a=\gamma^{(1)a}$, and

$$
(JV)_a=(-D_u^2+1)V_a,
\qquad
\delta_hK_a=\frac12\nabla_a h_{uu}-D_uh_{ua}.
$$

Then the linearized extremality equation is

$$
(JV)_a+\delta_hK_a=0,
$$

and the two area pieces are

$$
A^{\rm lin}[h,V]
=\int_\gamma\mathrm du\left(
\frac12V^a\nabla_a h_{uu}+h_{ua}D_uV^a
\right),
$$

$$
A^{\rm quad}[G,V]
=\frac12\int_\gamma\mathrm du\left(
D_uV_aD_uV^a+V_aV^a
\right).
$$

For the closed BTZ circle, integration by parts produces no endpoint contribution. For an AdS-Rindler geodesic it leaves

$$
\left[h_{ua}V^a+\frac12V_aD_uV^a\right]_{\partial\gamma},
$$

which belongs to the anchor/cutoff analysis. Under $h\mapsto h+\mathcal L_vG$, one has $\delta_{\mathcal L_vG}K=Jv$ and $V\mapsto V-v_\perp$. Thus the surface-displacement transformation law is fixed in the project convention. Its cancellation against $\Upsilon_{\mathrm p}$ is verified in selected finite-mode benchmarks. H51 proves the projected transition limit, H59a--H59c close the remaining fixed-section regulator sectors, and H60 proves that the independent second-jet HW coefficient collar adds no separate CPS estimate because $\Delta_Xg(P_{\rm HW}h,-V[h])=h$ sector by sector. The resulting total-flux theorem makes H53 action derived and slice covariant.

## 7. Canonical energy in arbitrary gauge

Let

$$
h^{\mathrm{ext}}=h+\mathcal L_vG
$$

be an extremal-gauge representative. The target gauge-invariant project-convention quantity is

$$
E_{\mathrm{can,p}}^{\mathrm{GI}}[h]
=E_{\mathrm{can,p}}[h]
+\int_{\gamma}\Upsilon_{\mathrm p}.
$$

The convention map established by the existing modular-wedge benchmark is

$$
\omega_{\mathrm p}=-\omega_{2501},
\qquad
\Upsilon_{\mathrm p}=-\Upsilon_{2501}.
$$

The general derivation must use the unsimplified diffeomorphism charge form because $v$ is not generally Killing.

The algebraic part can be fixed before evaluating the horizon limit. For a physical first-order variation $p$,

$$
\begin{aligned}
E_{\mathrm{can,p}}[p+\mathcal L_vG]
-E_{\mathrm{can,p}}[p]
={}&\Omega_{\mathrm p}
[p+\mathcal L_vG,\mathcal L_{[\xi,v]}G]\\
&-\Omega_{\mathrm p}
[\mathcal L_\xi p,\mathcal L_vG].
\end{aligned}
$$

For an arbitrary vector $u$, let $\mathbb k^{\rm FA}_{u,\mathrm p}[\delta g]$ denote the complete surface descent obtained from the same finite-action generator $H_u=X_u\cdot\theta-\alpha_u$. It includes bulk, brick-wall, and joint pieces. The project completion is therefore

$$
\Upsilon_{\mathrm p}^{\rm FA}
=\mathbb k^{\rm FA}_{[\xi,v],\mathrm p}
[p+\mathcal L_vG]
-\mathbb k^{\rm FA}_{v,\mathrm p}[\mathcal L_\xi p],
$$

with the induced inner-cut orientation. If $v$ decays at infinity, the constraints vanish, and flux is controlled, its inner integral equals the canonical-energy difference. Reduction to the local form $\Upsilon_{\mathrm p}=-\Upsilon_{2501}$ additionally requires the brick-wall and joint contributions to vanish in the horizon limit, or else requires their nonzero limit to be retained as edge symplectic data. H46--H53 first close this question on the projected diagonal sector. The transition kernel, complete finite-wall compensated kernel, raw and compensated far-joint kernels, and outer source/corner sectors have mode-uniform bounds; the outer Brown--York source vanishes exactly. H60 reduces every complete HW-collar pullback to the fixed section, and the relative-action flux bound proves slice independence. H61 then applies the global-Killing $P_{\rm PSL}$ section, which fixes both endpoints without changing $h$, and extends the action-derived identity to the complete Brown--Henneaux metric tangent quotient. No separate charged-anchor/asymptotic-frame completion is required.

## 8. Compact BTZ benchmark

The compact benchmark uses the non-rotating BTZ bifurcation circle. The fixed-boost parameter variation calibrates surface gravity, orientation, area charge, and source-to-corner transgression. A collar-Dirichlet Brown--Henneaux perturbation supplies a nontrivial exact-diffeomorphism family without inner flux or anchor joints. For its $m=1$ mode the verified outer coefficients are

$$
H_{\xi_{\rm mod},T}^{[-1]}=0,
\qquad
H_{\xi_{\rm mod},T}^{[0]}
=\frac{\pi^2(r_+^2+1)}{2r_+}.
$$

At the Brown--York surface level, independent scaling of the two metric coefficients gives

$$
\left.H_{\xi_{\rm mod},T}^{[0]}\right|_{k\text{-linear}}
=\frac{\pi^2(r_+^2+1)}{2r_+},
\qquad
\left.H_{\xi_{\rm mod},T}^{[0]}\right|_{h^2}=0.
$$

This does not imply zero canonical energy: the exact EH cut instead gives

$$
\int S_{\xi,h}^{[0]}[h]=0,
\qquad
\int S_\xi[k]
=\frac{\pi^2(r_+^2+1)}{2r_+},
\qquad
\int S_{\xi,k}^{[0]}[k]=0.
$$

The renormalized finite-action boundary descent vanishes for this mode. Using the second-order equation only after the off-shell $k$-sector identity therefore yields

$$
H_{\xi,h}^{[0]}
=\frac{\pi^2(r_+^2+1)}{2r_+},
\qquad
\boxed{
E_{\mathrm{can,p}}[\kappa_{\mathrm p}h]
=\frac{\pi^2(r_+^2+1)}{r_+}.
}
$$

The factor of two is fixed because canonical energy is the second derivative of the Hamiltonian along $g(a)=G+a\kappa_{\mathrm p}h+a^2\kappa_{\mathrm p}^2k+\cdots$, whereas $H_{\xi,h}^{[0]}$ is its $a^2$ Taylor coefficient. This closes the charge-variation derivation for the selected compact mode.

The direct Lee--Wald calculation independently confirms the same value. Varying the form-valued project potential, including the determinant terms in $\delta(\sqrt{-g}\,\vartheta^\mu)$, gives an angle-integrated radial density of the exact form

$$
\mathcal D
=\frac{\mathrm d}{\mathrm d\rho}
\left[
\frac{\pi^2(r_+^2+1)}{r_+}\chi^2
+B(\rho)\chi\chi'
+C(\rho)(\chi')^2
\right].
$$

Constant collar jets therefore imply

$$
\int_\Sigma\omega_{\mathrm p}
[G;\kappa_{\mathrm p}h,
\mathcal L_{\xi_{\rm mod}}(\kappa_{\mathrm p}h)]
=\frac{\pi^2(r_+^2+1)}{r_+}
$$

for every smooth radial completion with $(\chi,\chi')=(0,0)$ in the inner collar and $(1,0)$ in the outer region. Fifty-digit integrations at $r_+=2,3$ for both $\rho_0=\log2/2$ and $\rho_0=\log2$ provide supplemental checks. The general fixed-embedding area/displacement identity follows conditionally from H0--H6; its moving-edge realization remains open.

The covariance input used in this conversion has also been checked independently in components. A 100-digit local-jet expansion of $\mathcal E_{\mu\nu}=R_{\mu\nu}-\tfrac12Rg_{\mu\nu}-g_{\mu\nu}$ at two nonsymmetric points inside the $C^5$ transition region gives vanishing $\mathcal E^{(1)}[h]$, vanishing complete second-order coefficient, and vanishing separately assembled $\mathcal E^{(1)}[k]+\mathcal E^{(2)}[h,h]$ to the declared $10^{-70}$ threshold. This is a sampled check at $r_+=2$, not a global symbolic theorem.

## 9. AdS-Rindler interval and anchors

Write $\rho=\cosh\chi$. At $a=\pi/4$, the AdS-Rindler collar is

$$
\mathrm ds^2
=-\sinh^2\chi\,\mathrm d\tau^2
+\mathrm d\chi^2
+\cosh^2\chi\,\mathrm du^2.
$$

The global cutoff $r=R$ intersects the brick wall $\chi=\epsilon$ at

$$
\cosh u_c(R,\epsilon)
=\frac{\sqrt{R^2+1}-\sinh\epsilon}
{\sqrt2\cosh\epsilon},
$$

and the outer anchor-strip width satisfies

$$
\lim_{R\to\infty}
R\left(\frac\pi4-\phi_c(R,\epsilon)\right)
=\sinh\epsilon.
$$

The two spacelike wall normals obey $n_\epsilon\cdot n_R\to-\tanh\epsilon$ at fixed $\epsilon$, while the anchor worldline density is $\sinh\epsilon$. Thus the bounded background joint weight vanishes after $R\to\infty$ and then $\epsilon\to0$.

The perturbative fixed-embedding question can also be closed for the explicit mode. For

$$
g(\alpha)=G+\alpha\mathcal L_\zeta G
+\frac{\alpha^2}{2}\mathcal L_\zeta^2G+O(\alpha^3),
$$

keep $\chi=\epsilon$ and $r=R$ fixed and expand the right-joint density

$$
j_J(\alpha)
=\sqrt{|q_J(\alpha)|}\,
\arccos\!\left(
\frac{g(\alpha)^{-1}(-\mathrm d\chi,\mathrm dr)}
{\sqrt{g(\alpha)^{-1}(\mathrm d\chi,\mathrm d\chi)
g(\alpha)^{-1}(\mathrm dr,\mathrm dr)}}
\right).
$$

The explicit first and second coefficients are nonzero at finite $\epsilon$, but satisfy

$$
\lim_{\epsilon\to0^+}\lim_{R\to\infty}j_J^{(1)}
=
\lim_{\epsilon\to0^+}\lim_{R\to\infty}j_J^{(2)}
=0.
$$

The overall Hayward orientation sign is irrelevant to this zero. The verified asymptotic completion density is continuous at $\phi=\pi/4$, and its integral over the shrinking strip $[\phi_c,\pi/4]$ also vanishes. Hence neither the ordinary fixed-embedding joint nor a uniformly bounded renormalized outer strip can cancel a logarithmic inner divergence. This conclusion does not cover a moving joint or an embedding-field variation.

For this pure-diffeomorphism mode the linear extremal-surface displacement is fixed by covariance, $V=-\zeta_\perp$. In a parallel orthonormal normal frame, the corresponding area endpoint density

$$
b_{\mathrm{area}}=h_{ua}V^a+\frac12V_aD_uV^a
$$

obeys

$$
b_{\mathrm{area}}(u)
=\frac{10}{3\pi}e^{-2u}+o(e^{-2u})
\quad(u\to+\infty),
\qquad
b_{\mathrm{area}}(u)
=-\frac{10}{3\pi}e^{2u}+o(e^{2u})
\quad(u\to-\infty).
$$

It therefore has zero oriented endpoint difference. The fixed-surface, cross, embedding, and total quadratic area densities also decay as $e^{-2|u|}$; their leading coefficients at either end are $8/(3\pi)$, $-8/\pi$, $4/(3\pi)$, and $-4/\pi$, respectively. Thus no explicit quadratic area term supplies a constant compensating tail.

For the proper completion $v_L=-L^2\zeta_R/(L^2+r^2)$, the outer boundary is proper only when $R/L\to\infty$. The selected prescription is

$$
\lim_{L\to\infty}
\lim_{\epsilon\to0^+}
\lim_{R\to\infty}.
$$

The finite-action current itself can be evaluated before fusing the wall. On
$\mathcal H_\epsilon$ take the inner outward normal $n=-\mathrm d\chi$, retain
GHY but no asymptotic counterterm, and use the exact article identity

$$
q_{\rm BY}=q_{\rm EH}+q_\Gamma .
$$

For the corrected selected exact-diffeomorphism path, exact global-to-Rindler
endpoint extraction with $z=e^{-|u|}$ gives instead

$$
h_\infty=0,
\qquad
k_\infty=0.
$$

The endpoint pullback passes $12/12$ exact component tests. The independent
unsimplified full-current calculation evaluates both ends and four finite
walls, passes $10/10$ tests, and extrapolates the individual tails to zero
within $1.03\times10^{-11}$. Thus already at every fixed wall

$$
\lim_{u\to\pm\infty}
(q_{\rm EH}^{(2)},q_\Gamma^{(2)},q_{\rm BY}^{(2)})=(0,0,0),
$$

and consequently in the declared brick-wall order

$$
\lim_{\epsilon\to0^+}\lim_{u\to\pm\infty}
q_{\rm EH}^{(2)}
=\lim_{\epsilon\to0^+}\lim_{u\to\pm\infty}
q_{\rm BY}^{(2)}
=\lim_{\epsilon\to0^+}\lim_{u\to\pm\infty}
q_\Gamma^{(2)}=0.
$$

Correlated probes $\epsilon=\lambda e^{-|u|}$ also approach zero. After
correcting the radial sign of the real Brown--Henneaux generator, the raw
second-order modular Noether density is also regular:

$$
-\frac18(1-x^2)^2(1+x^2).
$$

The complete outer coefficient is also available in closed form. Using the
renormalized Brown--York tensor of the original article on $r=R$ and then
taking $R\to\infty$ gives

$$
q_{\infty}^{(2)}(\phi)
=-(-1+\sqrt2\cos\phi)(-1+3\cos4\phi).
$$

This density vanishes at both interval endpoints. Since
$R(\pi/4-\phi_c)\to\sinh\epsilon$, the full finite-$R$ right-strip integral
obeys

$$
\int_{\phi_c}^{\pi/4}q_R^{(2)}\,\mathrm d\phi
=2\frac{\sinh^2\epsilon}{R^2}+o(R^{-2}),
$$

and the left strip is identical by reflection. Thus the full outer coefficient
does not hide a nonuniform constant tail.

The former nonzero finite-wall split and fused-horizon discontinuity are
withdrawn. They
were produced by a vector whose radial component had the opposite sign from
the declared real phase of the verified complex primary. A new vector-level
identity test prevents this mismatch. The proper non-Killing completion has
vanishing $u$-tails and the corrected project value $32/105$. The raw project
surface tensor integrates instead to $-16/105$; the mismatch is finite and
reflects that the raw full second-order Noether representative is not the
canonical-energy gauge cocycle. Equality with the arbitrary-gauge corner form
still follows generally only on a compatible regulator family satisfying
H0--H6; the selected-mode calculation does not construct that full phase
space.

## 10. Regulated horizon phase space and conditional dressed implication

The selected benchmarks do not by themselves define the general horizon
phase space. At finite brick-wall cutoff, introduce the Brown--York canonical
pair

$$
\Pi_\epsilon^{ij}=\sqrt{-\gamma_\epsilon}\,
\mathcal T_\epsilon^{ij},
\qquad
\mathcal B_\epsilon=-\frac12\Pi_\epsilon^{ij}
\delta\gamma^{(\epsilon)}_{ij}.
$$

The same finite-action descent used in the original article gives

$$
\omega_\epsilon^{\rm pullback}
=\mathrm d(\delta C_\epsilon)
-\frac12\delta\Pi_\epsilon^{ij}\wedge
\delta\gamma^{(\epsilon)}_{ij}.
$$

Therefore radial gauge can remove $C_\epsilon$ but does not by itself remove
the Brown--York canonical-pair flux. The restricted implication assumes a
common topology and controlled maps between the regulated phase spaces;
twice differentiability and convergence of the outer Hamiltonian, area,
symplectic form, and surface descent; a declared Lagrangian boundary
polarization; two-sided Kruskal regularity with uniform
normal falloff, vanishing wall/joint descent for the two pairs
$([\xi,v],p+\mathcal L_vG)$ and $(v,\mathcal L_\xi p)$, a
wall-to-fused-corner transgression condition, the separate first- and
second-order equations, and existence of a fixed-cut Hollands--Wald
representative. These are hypotheses H0--H6 of
`regulated horizon phase space theorem.md`, not consequences of smoothness
alone.

Under those hypotheses the inherited generator remains, off shell,

$$
\delta H_{\xi,\epsilon}
=\Omega_{\Sigma,\epsilon}(\delta g,\mathcal L_\xi g),
$$

and on shell its regulator limit gives the fixed-embedding conditional
identity

$$
\boxed{
\delta^2H_\xi^\infty
=\frac{s}{2\pi}\delta^2\!\left(\frac{A[g,\gamma]}{4G}\right)
+E_{\mathrm{can,p}}[h^{\rm ext}].
}
$$

This statement is for vacuum Einstein gravity. A matter term requires a
specified matter action, symplectic current, wall data, and normalization; it
is not represented by an undefined placeholder.

Here the area is geometric: in the extremal representative the cut is fixed,
whereas in another representative the verified Jacobi decomposition restores
the metric--displacement and quadratic embedding terms. The second-order
embedding displacement itself drops out by background extremality.

For an arbitrary first-order perturbation $p$ and a field-independent,
generally non-Killing vector $v$, define

$$
\mathfrak D_p[v]
:=\Omega_{\mathrm p}
[p+\mathcal L_vG,\mathcal L_{[\xi,v]}G]
-\Omega_{\mathrm p}[\mathcal L_\xi p,\mathcal L_vG].
$$

Bilinearity and antisymmetry imply exactly

$$
\mathfrak D_p[v]
=E_{\mathrm{can,p}}[p+\mathcal L_vG]
-E_{\mathrm{can,p}}[p],
$$

together with the cocycle relation

$$
\mathfrak D_p[v]+\mathfrak D_{p+\mathcal L_vG}[w]
=\mathfrak D_p[v+w].
$$

Finite-action descent identifies this difference with
$\int_\gamma\Upsilon_{\mathrm p}[p,v]$ only after the declared wall and joint
limits are imposed. Choosing $v$ so that
$h^{\rm ext}=h+\mathcal L_vG$ then gives

$$
\boxed{
E_{\mathrm{can,p}}^{\rm GI}[h]
=E_{\mathrm{can,p}}[h]
+\int_\gamma\Upsilon_{\mathrm p}[h,v]
=E_{\mathrm{can,p}}[h^{\rm ext}],
}
$$

and hence

$$
\boxed{
\delta^2H_\xi^\infty
=\frac{s}{2\pi}\delta^2\!\left(\frac{A[g,\gamma]}{4G}\right)
+E_{\mathrm{can,p}}[h]
+\int_\gamma\Upsilon_{\mathrm p}[h,v]
}
$$

The convention map remains
$\omega_{\mathrm p}=-\omega_{2501}$ and
$\Upsilon_{\mathrm p}=-\Upsilon_{2501}$ for the same ordered variations and
spacetime orientation. The displayed proposition applies directly to the
restricted fixed-embedding branch. The moving branch below has a complete
abstract first variation and a finite-wall BTZ check, but still requires an
integrable extended polarization before an analogous implication can be
applied.

The projected AdS--Rindler calculation now rules out one tempting choice of
that polarization. On the four-mode block generated by projected real
$m=3,5$ Brown--Henneaux modes, the finite-wall Brown--York two-form

$$
-\frac12\delta\Pi^{ij}\wedge\delta\gamma_{ij}
$$

is numerically resolved to be nonzero at generic wall points (H47). Adding
$\delta w_\epsilon$ cannot change this two-form, since
$\delta^2w_\epsilon=0$. Thus neither fixed anchors, endpoint decay, nor a
scalar wall transgression makes the unrestricted fixed-wall block
Lagrangian. Every conclusion that used H1 for that block is withdrawn; the
local projected $\Upsilon$ calculation itself is unaffected.

There is nevertheless a canonical extended-space lift of this sector. Each
Brown--Henneaux tangent has $h=\mathcal L_\zeta G$. Move the inner embedding
with $\chi=-\zeta$ on the wall core and taper $\chi$ to zero through an
anchor neighborhood before the asymptotic boundary. On the core, covariance
gives

$$
\Delta_XG=0,
\qquad
\Delta_X\gamma=\Delta_X\Pi=
\Delta_Xq=\Delta_X\eta=0
$$

and its wall flux vanishes exactly, whereas the outer Brown--Henneaux charge
is retained because $\chi|_{B_\infty}=0$. At a finite anchored regulator the
inner wall and outer cutoff share a joint, so their two required values of
$\chi$ cannot be imposed simultaneously. The taper strip and moving-joint
terms remain. For a mode cutoff $m\leq M$ and the proper profile $p_L$, the
necessary joint window is

$$
M/L(M)^2\to0,
\qquad
L(M)/R(M)\to0.
$$

Modulo the inner-supported gauge degeneracy, the wall-core lift is the
fixed-embedding proper-collar representative. The remaining analytic problem
is the uniform taper/anchor estimate, not the construction of a nonexistent
scalar $w_\epsilon$ on the original projected block.

The far-anchor part of this estimate is now controlled. At fixed positive
wall cutoff, exact symbolic-frequency endpoint jets give

$$
h_m=O_\epsilon(m^3e^{-2|u|}),
\qquad
\delta\Pi_m=O_\epsilon(m^3e^{-2|u|}).
$$

Their leading tangential matrices have zero contraction, so the wall flux has
no $e^{-4|u|}$ term.  The complete rational two-frequency calculation, with
$q=e^{-|u|}$ and $y=\tanh(\epsilon/2)$, gives

$$
\boxed{
|\mathcal F_{mn}^{\rm wall}(q,\epsilon)|
\leq C(1+m+n)^7(yq^5+q^6).
}
$$

Thus the tail beginning at $r=L$ is bounded by
$C(1+m+n)^7(yL^{-5}+L^{-6})$ and is absolutely summable for $s>15/2$, a
deliberately nonoptimal threshold stronger than the local cut condition
$s>5/2$. The $q^6$ term is the full analytic remainder missed by the earlier
finite-jet argument. For the far moving Hayward joint, exact finite-jet variation gives
$\Delta_X\eta_m,\Delta_X\sqrt q_m=O(\epsilon m^3e^{-2|u|})$, their leading
antisymmetric product vanishes.  The complete area--angle kernel corrects the
old untested $O(\epsilon^2)$ claim and proves

$$
\boxed{
|\mathcal F^J_{mn}(q,\epsilon)|
\leq C(1+m+n)^6\tanh\frac\epsilon2\,q^5.
}
$$

At $r=R$ this is $C(1+m+n)^6\tanh(\epsilon/2)R^{-5}$. Since
$p_L=O(L^2/R^2)$ at the joint, the compensated and raw joint jets agree
when $L/R\to0$. The remaining $r\sim L$ non-Killing transition has now
also been evaluated more directly. The earlier symbolic integrated values
reconstruct a reflected symmetric third-jet finite-part functional. Ten exact
quadratic finite parts alone have rank eight; two cross finite parts raise
the coefficient matrix to rank ten and uniquely give

$$
\mathcal A[f]
=-\frac16\left[
\sum_{\sigma=\pm}f(\sigma a)(-f''(\sigma a)-f(\sigma a))
+f(a)f'(a)-f(-a)f'(-a)
\right].
$$

Two unused cross finite parts are then reproduced exactly. Within the
reflected third-jet ansatz, the polarization of every monomial contains an
undifferentiated endpoint value and $\mathcal A[P_Af,P_Ag]=0$. A subsequent
derivative audit raises the conservative endpoint ansatz through fifth jets,
with 21 coefficients. Seven additional cross finite parts complete its rank.
The unique solution leaves the same three
nonzero coefficients and sets all fourth- and fifth-jet coefficients to zero;
three unused direct projected integrals are reproduced. This proves uniqueness
of the finite-part functional within the reflected fifth-jet ansatz, not a
universal unprojected endpoint distribution. The direct pair
$(\cos3\phi,\cos4\phi)$ has
$B_L\sim51L^4/(16\sqrt2d)$ and is not ordinarily integrable without the
outer anchor cutoff. The projected problem is now solved independently. In
compactified ambient coordinates $q=\cos2\phi$, $s=r\sqrt q$, the complete
two-symbolic-frequency point-jet density has endpoint valuations
$(3,2,4,6)$ in the four powers of $L^2$, a cancelling centre factor $1-q$,
and residual frequency degree at most six. Consequently

$$
\boxed{
\|B_{L,mn}^{P_A}-B_{mn}^{P_A,{\rm local}}\|_{L^1(\gamma_A)}
\leq\frac{C(1+m+n)^6}{L^2}.
}
$$

Thus the projected endpoint distribution and bulk remainder are zero, and
the adapted block converges when $M^6/L^2\to0$. This transition theorem does
not use the rank-21 finite parts. H59a--H59c subsequently prove the complete
finite-wall, outer-source, outer-corner, and outer-joint operator bounds; the
former separate finite-wall anchor shift is removed as a double count. With
H60, they close the complete diagonal $H^s$, $s>5/2$, identity on the linked
regulator class.

## 11. Moving edge phase space and constructive extensions

### 11.1 Pulled-back action and total first variation

For an embedding field $X$ with
$\chi^\mu=\delta X^\mu\circ X^{-1}$, define

$$
\Delta_Xg:=\delta g+\mathcal L_\chi g.
$$

Let $M_0$ be a fixed reference region and define the moving theory by the
complete pulled-back action $S_{{\rm p},X}[g,X]=S_{\rm p}[X^*g;M_0]$. Its
potential is

$$
\boxed{
\Theta_{{\rm p},X}[g,X;\delta]
:=\Theta_{\rm p}[X^*g;\delta(X^*g)].
}
$$

This is not shorthand for omitting the shape variation of the GHY surfaces,
normals, counterterms, Harlow--Wu endpoints, or joints. Since
$I_{\widehat w}\chi=-w$,
$(\mathcal L_wg,-w\circ X)$ is a degeneracy. Metric-only and embedding-only
transformations retain opposite surface charges. On a moving timelike wall,

$$
\mathcal B_X=-\frac12\Pi^{ij}\Delta_X\gamma_{ij}
$$

gives the Brown--York wall contribution

$$
P_j=D_i\Pi^i{}_j,
\qquad
P_\perp=-\Pi^{ij}K_{ij},
$$

to the embedding momentum, up to the displayed endpoint total derivative.
The direct bulk variation completes it off shell to

$$
P_j^{\rm tot}=D_i\Pi^i{}_j
-\frac{\sqrt{-\gamma}}{\kappa_{\rm p}^2}
n_\mu\mathcal E^{\mu\nu}e_{j\nu},
$$

$$
P_\perp^{\rm tot}=-\Pi^{ij}K_{ij}
-\frac{\sqrt{-\gamma}}{\kappa_{\rm p}^2}
n_\mu n_\nu\mathcal E^{\mu\nu}.
$$

The Harlow--Wu endpoint and Hayward terms complete the edge potential. For a
non-orthogonal joint,

$$
\Omega_J
=\frac{\sigma_J}{\kappa_{\rm p}^2}
\int_J\Delta_X\eta\wedge\Delta_X\sqrt q.
$$

Thus the canonical partner of area is the finite relative boost angle
$\eta$, not surface gravity in isolation. A direct compact BTZ calculation
checks that $P_\perp^{\rm tot}\chi_\perp$ equals the cutoff derivative of the
complete Einstein--Hilbert, GHY, and outer-counterterm action at both finite
walls. These formulas motivate the section-change interpretation of the
fixed-embedding $\Upsilon_{\rm p}$;
a globally defined generating functional for a field-dependent HW solution
remains unconstructed.

The moving branch is nonempty beyond the background. Let
$F\in\operatorname{Diff}^+(S^1)$ be generated by the two smooth compact
horizon germs, extend them by stationary proper radial bumps that vanish
before infinity, set $R(\phi)=r_+F'(\phi)$, and use the exact collar metric

$$
\mathrm ds^2
=\mathrm d\rho^2-s^2\sinh^2\rho\,\mathrm d\lambda^2
+R(\phi)^2\cosh^2\rho\,\mathrm d\phi^2.
$$

At a finite wall the mixed functional

$$
w_{{\rm sm},\epsilon}
=\frac12\Pi^{ij}\gamma_{ij}
+\frac{sR}{2\kappa_{\rm p}^2}
=\frac{sR\cosh^2\epsilon}{\kappa_{\rm p}^2}
$$

makes the complete moving source and Brown--York flux vanish identically.
Uniform normal translation is Hamiltonian with
$H_\perp^{\rm edge}=0$, and the matched comparison corner is

$$
I_{{\rm corner},{\rm sm},\epsilon}
=\frac{sR}{\kappa_{\rm p}^2}
\left(\cosh\epsilon-\cosh^2\epsilon\right)=O(\epsilon^2).
$$

This realizes the moving analogues H0$_X$--H6$_X$ on a controlled
finite-dimensional nonzero Kruskal-smooth family. It does not change the
fixed-embedding conditional status of H36 or prove integrability of
nonuniform wall shapes. The controlled family has nonzero subregion-edge data
but unchanged outer Brown--Henneaux charges. The displayed matched corner is
only the regulator-removal comparison representative; it is not added as a
second finite-wall joint beside $w_{{\rm sm},\epsilon}$.

### 11.2 Compact polarization and HW construction

The trace-Neumann wall density obeys

$$
\mathcal B+\delta\left(\frac12\Pi^{ij}\gamma_{ij}\right)
=\frac12\gamma_{ij}\delta\Pi^{ij}.
$$

At fixed BTZ time the area direction and the tested left $m=1$ and right
$m=2$ modes have $\delta\Pi^{ij}=0$. The raw chiral representatives are not
Kruskal smooth: their invariant norms diverge as $\rho^{-2}$. In the
fixed-boost family, the trace wall generator tends to
$W_\zeta=\zeta I_{\rm fuse}/2$. Therefore the matched boundary-polarization
representative is

$$
I_{{\rm corner},\zeta}
=\left(1-\frac\zeta2\right)I_{\rm fuse}.
$$

This is an algebraic redistribution of the same fused comparison functional,
not an independent finite-$\epsilon$ Neumann construction. It cancels the
wall residual without changing the separately normalized bulk Noether/area
corner. If the boundary representative is also held equal to $I_{\rm fuse}$,
every $\zeta\ne0$ is obstructed within the trace family.

The regularity problem is independently solvable. On the compact
bifurcation circle,

$$
J=-D_u^2+1,
\qquad
\operatorname{spec}J
=\left\{1+\frac{n^2}{r_+^2}:n\in\mathbb Z\right\}.
$$

There is no Jacobi zero mode. Two explicit $m=1,2$ generators are glued to
nonzero tangential Kruskal-smooth horizon vectors; their metric
perturbations have finite nonzero invariant norms, satisfy the HW conditions,
and retain the original Brown--Henneaux data at infinity.

### 11.3 Anchored extremal gauge and constrained mode space

On the complete RT geodesic,

$$
G_J(u,u')=\frac12e^{-|u-u'|}
$$

is the unique decaying Jacobi inverse. For the selected mode, the normal
solution $v_\perp=-\zeta_\perp$ has

$$
(v^t,v^r,v^\phi)
=(O(r^{-2}),O(r^{-1}),O(r^{-2}))
$$

at both anchors. The large radial part of the older choice $v=-\zeta$ is
tangential to the RT curve and is unnecessary for extremality. Smooth
extremal gauge is therefore proper and is sufficient for the
canonical-energy boundary result. A uniform full Gaussian-null extension on
an infinite weighted space remains stronger optional work.

The standard frequency basis is not adapted to the fixed-anchor domain. For a
real single-frequency boundary phase
$f_m=A_m\cos m\phi+B_m\sin m\phi$ on the $a=\pi/4$ interval,

$$
\det M_m=-\sin\frac{m\pi}{2}.
$$

Even $m$ retains one real fixed-anchor quadrature and odd $m$ retains none.
For every unit odd phase,

$$
|f_m(a)|^2+|f_m(-a)|^2=1,
$$

so at least one anchor displacement is at least $1/\sqrt2$, uniformly at high
frequency. This is only a per-frequency obstruction. Cross-frequency
cancellation gives, for example,

$$
\cos3\phi-\cos5\phi=0
\qquad\text{at}\qquad \phi=\pm\frac\pi4.
$$

Choose $H^s(S^1)$ with $s>1/2$, so both endpoint evaluations are continuous.
The $t=0$ fixed-anchor phase space is the closed codimension-two kernel

$$
\mathcal H_A^s=\ker E_+\cap\ker E_-,
\qquad E_\pm f=f(\pm\pi/4),
$$

with bounded projection

$$
P_Af=f+\frac{f(a)+f(-a)}2\cos4\phi
-\frac{f(a)-f(-a)}2\sin2\phi.
$$

Thus a fixed-anchor mode-sum phase space exists, but its complete
finite-action $\Upsilon$ must be evaluated in a projected basis. The
normalized $n=0,1$ descendants give a Hermitian positive finite Jacobi/edge
block with exact controlled tails, but it is only one geometric component and
not the complete finite-action matrix. Fixing whole anchor worldlines for all
times is a different, stronger condition and is not inferred here.

### 11.4 Intrinsic edge realization and nonuniform compact wall

The complete pullback fixes the ambient extended symplectic form and makes
$(\mathcal L_wg,-w)$ a gauge degeneracy, but it does not by itself select a
Lagrangian boundary polarization. If a finite coefficient section has closed
artificial-boundary curvature

$$
F=\frac12F_{IJ}(a)\,\delta a^I\wedge\delta a^J,
$$

the radial primitive

$$
\alpha_F
=\int_0^1t\,a^IF_{IJ}(ta)\,\mathrm dt\,\delta a^J
$$

has a cotangent realization $Q^I=a^I$, $P_J=-(\alpha_F)_J$. Its graph
contributes $-F$. For constant $F_{IJ}$ this is precisely

$$
\Theta_{\rm edge}=-\frac12F_{IJ}a^I\delta a^J.
$$

This construction classifies the local primitive up to an exact one-form and
edge symplectomorphisms. It proves existence of an abstract auxiliary H51
polarization, not its derivation from gravitational embedding, wall, joint,
or anchor variables. The complete action gives a sharper decomposition. On a
fully compensated graph $(\Phi^*G,\Phi^{-1}\circ X_0)$ the pulled-back fields
are constant, so the embedding/cross curvature cancels the fixed-embedding
pure-gauge curvature exactly. For the proper taper $v_L=-p_L\zeta$, however,
$\Delta_Xg=\mathcal L_{(1-p_L)\zeta}G$ remains in the transition region.
Consequently the geometric completion leaves the proper-transition form; it
does not reproduce the auxiliary cancellation of the entire finite-regulator
$F$. The projected theorem must prove that this remainder converges to zero.

There is also a genuinely infinite-dimensional geometric compact family. In
the exact BTZ collar, let the metric density be $R(\phi)>0$ and the stationary
inner wall be $\rho=E(\phi)>0$. Put

$$
\vartheta=\arctan\!\left(\frac{E'}{R\cosh E}\right).
$$

The exact Brown--York source satisfies

$$
\mathcal B_X
=-\delta\left\{
\frac{s}{\kappa_{\rm p}^2}
\left[R\cosh^2E+E'\cosh E\,\vartheta\right]
\right\}
+\partial_\phi\left(
\frac{s\cosh E}{\kappa_{\rm p}^2}\vartheta\,\delta E
\right).
$$

The periodic derivative integrates to zero, so this stationary smooth
$(R,E)$ family is a Lagrangian moving-wall polarization and includes arbitrary
nonuniform normal displacements. A separate tilted-slice benchmark gives

$$
\eta=-\operatorname{arctanh}(qs\sinh\epsilon),
\qquad
(Q_J,P_J)=\left(\sqrt q,
\frac{\sigma_J\eta}{\kappa_{\rm p}^2}\right),
$$

which directly realizes the non-orthogonal Hayward area--boost pair. The
combined time-dependent wavy wall, tilted endpoint, and Harlow--Wu descent
remain to be constructed.

### 11.5 Global-Killing reducibility and the full metric quotient

The old unfixed-generator calculation introduced endpoint coefficients and
oriented traces

$$
q_\pm=f(\pm a),
\qquad
p_\pm=\frac16[-f''(\pm a)-f(\pm a)\pm f'(\pm a)].
$$

The finite-part endpoint functional reconstructed within the fifth-jet ansatz
factorizes as

$$
\mathcal A[f]=-(q_+p_++q_-p_-).
$$

Its polarization is cancelled algebraically by the radial work of the
auxiliary cotangent potential $\Theta_{\rm anch}=\sum
P_\alpha\delta Q_\alpha$ on the section
$(Q_\alpha,P_\alpha)=(q_\alpha,p_\alpha)$. This finite-part algebra extends
to $H^s$ for $s>5/2$, but it is not a physical anchor Hamiltonian. The reason
is global reducibility: adding frequency-zero/one Brown--Henneaux vectors
changes $q_\pm$ while leaving $h=\mathcal L_\zeta G$ unchanged.

The correct endpoint-fixing representative is

$$
P_{\rm PSL}f
=f-\frac{q_++q_-}{2\cos a}\cos\phi
-\frac{q_+-q_-}{2\sin a}\sin\phi.
$$

The subtracted vectors are exact global AdS Killing fields, so
$h[P_{\rm PSL}f]=h[f]$. The residual endpoint-fixing global direction is the
modular weight $w_A=(\cos\phi-\cos a)/\sin a$. Hence

$$
H^s(S^1)/\mathfrak{sl}(2,\mathbb R)
\simeq
\ker(q_+,q_-)/\operatorname{span}\{w_A\}.
$$

This section removes the logarithmic endpoint Wronskian without changing the
metric perturbation and puts the full quotient in the H51/H59 endpoint-zero
class. The old $P_A$ is different: it adds charged $m\ge2$ modes and selects
a genuine physical subspace.

The unprojected extremal normal equation is also solvable by a proper vector.
The growing part of $-\zeta_\perp$ is cancelled by the Jacobi-homogeneous
correction

$$
H^{(0)}=-\frac{q_+e^u+q_-e^{-u}}{\sqrt2},
\qquad
H^{(1)}=\frac{-q_+e^u+q_-e^{-u}}{\sqrt2}.
$$

Thus $V_{A,\perp}=-\zeta_\perp+H$ starts at $O(e^{-|u|})$ at both
anchors and obeys the same two-derivative Sobolev estimate as the projected
solver.

The homogeneous functions above are precisely the normal restriction of the
global Killing vector subtracted by $P_{\rm PSL}$. Thus no physical moving-
anchor oscillator or negative-Virasoro boundary frame is required. Charged
$m\ge2$ Brown--Henneaux modes remain physical; only the background
$\mathfrak{sl}(2,\mathbb R)$ reducibility is quotiented.

### 11.6 Explicit regulators, sharp regularity, and slice covariance

The projected transition theorem proves

$$
\|B^{(L)}_{mn}-B^{\rm local}_{mn}\|_{L^1(\gamma_A)}
\leq C(1+m+n)^6L^{-2}.
$$

Together with the degree-seven wall/joint bounds, the explicit linked schedule

$$
L=M^{10},\qquad
\tanh(\epsilon/2)=\frac1{2M^{10}},\qquad
R=M^{30}
$$

makes the projected transition error $O(M^{-14})$. The complete finite-wall
compensated kernel, including finite phase and the $r\sim L$ layer, is
$O(M^{-13})$; the former separate anchor-shift term is removed as a double
count. Both raw and compensated outer Brown--York source curvatures vanish
exactly. The compensated Cauchy-corner mismatch is
$O(M^{-34}+M^{-14})$ and the compensated outer-joint mismatch is
$O(M^{-34})$. All displayed estimates are source-derived uniform bounds, so
the total fixed-section relative-action flux vanishes with conservative rate
$O(M^{-13})$.

The regularity threshold cannot be lowered to $H^{3/2}$ for the **separated
point-anchor chart**. Since $p_\pm$ contains $f''(\pm a)$, its squared block
norm is $\sum_{m\leq M}m^{4-2s}$, which is uniformly finite exactly for
$s>5/2$. The combined gauge-invariant form has a better and optimal ordinary
threshold. Map the interval to $s=\log U$ with
$U=\sin((\phi+a)/2)/\sin((a-\phi)/2)$, set $f_0=P_{\rm PSL}f$ and
$F_f=f_0/w_A$. The classical Bañados charge-minus-geodesic Hessian gives

$$
\boxed{
E_{\rm can,p}[h[f]]
=\frac1{8G}\int_{\mathbb R}
\left[(F_f')^2+(F_f'')^2\right]\,\mathrm ds .
}
$$

It is nonnegative, with kernel exactly
$\mathfrak{sl}(2,\mathbb R)$, and therefore strictly positive on the metric
quotient. It extends continuously to the endpoint-fixed ordinary $H^2$
section, not to any $H^r$ with $r<2$, and is not coercive in the $H^2$ norm.
At $H^2$ only the combined closed form is asserted; its raw canonical-energy
and $\Upsilon$ pieces need not exist separately.

A non-tautological infinite-mode representative can be placed in a
fixed-width weak Sobolev collar: include all normal jets through second order,
extend them by one fixed Fermi polynomial and bump, and use the independent
ambient space $H^{s-5}(\mathbb R_u;H^2(B_{\rho_0};N\gamma_A))$. At every
finite regulator,
$\Delta_Xg(P_{\rm HW}h,-V[h])=h$, so every pulled-back action sector equals
its fixed-section value and off-cut changes are exact gauge degeneracies. A
smooth Gaussian-null limit is not inferred from finite-Sobolev input.

Finally, for left-moving boundary evolution $U_tf(\phi)=f(\phi-t)$,

$$
P_{A,t}=U_{-t}P_AU_t,
\qquad
(q_{\pm,t},p_{\pm,t})=(q_\pm U_t,p_\pm U_t).
$$

The corresponding PSL and HW sections are transported by the same
conjugation. The family is therefore algebraically time covariant even though
a single $t=0$ endpoint section is not invariant.
The complete relative-action stratum inventory and the uniform estimates
above show that the total boundary flux vanishes, uniformly under the
unit-modulus time phases. Time translation is therefore a symplectomorphism
between fibres. It is a physical isometry, while the fixed/HW section change
inside a fibre is proper gauge.

## 12. Claim status

Verified: the corrected finite-cutoff selected-mode results; the abstract
moving pullback and action-derived constraint-completed embedding momentum;
Harlow--Wu/Hayward edge potentials; the complete wall, joint, outer-corner,
transition, and regulator estimates; compact and noncompact HW/Jacobi
benchmarks; the weak infinite-mode collar; vanishing total relative-action
flux and slice covariance; the PSL reducibility section and full
Brown--Henneaux metric quotient; the action-derived H53 identity on
$H^\sigma/\mathfrak{sl}(2,\mathbb R)$ for $\sigma>5/2$; and the positive
Bañados combined form with exact global-Killing kernel, optimal ordinary
$H^2$ continuity, failure below $H^2$, and $H^2$ noncoercivity. The old
rank-21 endpoint work remains verified only as a representative-dependent
analytic finite part.

Assumptions: vacuum Einstein gravity in three dimensions, unit AdS radius
unless restored, Brown--Henneaux asymptotics, exact background Killing fields,
the inherited perturbative normalization, the linked regulator class
$\tanh(\epsilon/2)=1/(2L)$, and H0--H6 whenever the general regulated
implication is invoked. One chiral sector is displayed and the two sectors
add orthogonally. No auxiliary cotangent sector is assumed in the theorem.

Not verified: a universal generic nonlinear horizon polarization, a combined
time-dependent nonuniform wall/tilted-joint family, a strong smooth
infinite-mode collar, or nonlinear Virasoro-orbit charts. Matter, quantum,
and nonperturbative extensions lie outside the declared scope. The maximum
claim is an action-derived, slice-covariant classical identity on the complete
Brown--Henneaux metric tangent quotient for $\sigma>5/2$, together with the
unique positive combined-form closure to its $H^2$ section.
