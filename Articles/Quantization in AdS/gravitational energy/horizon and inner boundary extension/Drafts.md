# Draft Routes and Open Choices

## Recommended default route

Use a timelike brick wall $\mathcal H_{\epsilon}$, derive its GHY/Harlow--Wu boundary potential and any joint contribution required by the selected variational problem before choosing a gauge, prove the compact bifurcate-horizon identity, and only then take the horizon limit. Apply the resulting formalism first to non-rotating BTZ and afterwards to the anchored AdS-Rindler interval.

This route keeps the action differentiable at every finite cutoff and postpones null-boundary normalization ambiguities until after the charge has been derived.

The first BTZ background check shows that the full $c_\epsilon=0$ Brown--York wall generator tends to zero, although the oppositely oriented bulk Noether corner tends to $A/(4G)$. The wall is therefore a variational/symplectic regulator, not the horizon charge itself. On the fixed-boost BTZ parameter family, its retained source work transgresses to the standard boost corner with an $O(\epsilon^2)$ residual. In the collar fluctuation sector, the inner GHY variation, Harlow--Wu endpoint form, Brown--York source, symplectic flux, and orthogonal endpoint-joint terms instead vanish exactly at every finite cutoff. `regulated horizon phase space theorem.md` organizes a conditional fixed-embedding implication under H0--H6. The moving branch now has a complete first variation and a nonzero exact compact family realizing H0$_X$--H6$_X$ with an integrable uniform normal translation. Remaining extensions are nonuniform shapes, infinite-dimensional estimates, and the original fixed-embedding existence problem.

## Boundary-condition choice

The following statements must not be conflated:

- fixing the induced metric, or another declared set of boundary data, to make the action differentiable;
- choosing a radial gauge such as $h_{\rho\mu}=0$;
- imposing two-sided Kruskal smoothness at the limiting horizon;
- requiring zero symplectic flux through the regulated inner boundary.

The first defines the variational problem, the second selects a representative, the third is a regularity condition, and the fourth is a phase-space condition. The draft must show which implications hold rather than treating them as synonyms.

In particular, $h_{\rho\mu}=0$ implies $C_\epsilon=0$ but leaves the flux $-\tfrac12\delta(\sqrt{-\gamma}\mathcal T^{ij})\wedge\delta\gamma_{ij}$ unless the boundary data define a Lagrangian subspace of the Brown--York canonical pair.

For the compact benchmark, the selected solution is deliberately two-sector:

1. **Area sector:** fix the boost normalization $s$, vary $r_+$, and retain the Brown--York source work. This calibrates the limiting area/corner term but is not a zero-flux Dirichlet phase space.
2. **Fluctuation sector:** multiply a Brown--Henneaux generator by a smooth radial cutoff that vanishes in a full horizon collar. Then $\zeta$, $h$, and $k$ vanish at the finite inner wall, so fixed induced metric, radial gauge, zero source work, zero flux, and unperturbed joins hold simultaneously while the outer perturbation remains nontrivial.

This choice resolves the finite-wall boundary-condition fork for the first compact calculation. The general fixed-embedding implication is stated under explicit common-topology and Lagrangian-polarization hypotheses. Universal existence remains unresolved; the complete moving first variation and joint pair are known, and a controlled compact family has an integrable uniform normal translation. Generic and nonuniform moving polarizations remain to be constructed.

The first explicit polarization audit sharpens this fork. In fixed-$t$ BTZ
coordinates the momentum density is
$\Pi^{ij}=\kappa_{\rm p}^{-2}\operatorname{diag}(-1,1)$, so the $r_+$ area
direction and the tested left/right chiral modes are Neumann tangents. This is
not the fixed-boost family: with a unit boost coordinate,
$\Pi^{ij}=\kappa_{\rm p}^{-2}\operatorname{diag}(-r_+/s,s/r_+)$ and the area
variation changes $\Pi$. Moreover, the trace Legendre family leaves
$\pi s\zeta/\kappa_{\rm p}^2$ after wall fusion. The recommended route is
therefore no longer to search blindly among local Robin tensors. First derive
the area/boost corner pair and transform wall and corner polarizations
together; only then test more general mixed data.

## Edge-mode fork

Two branches should remain visible until the general inner variation is known:

1. Restricted phase space: boundary conditions and near-horizon falloff make the inner symplectic term vanish.
2. Extended phase space: non-vanishing diffeomorphisms at the inner boundary carry edge charges and require an embedding/edge-mode symplectic contribution.

The restricted branch supports a conditional finite-action implication and both benchmarks. In the extended branch, the complete pullback is defined by

$$
\Theta_{{\rm p},X}=\Theta_{\rm p}[X^*g;\delta(X^*g)]
$$

and makes $(\mathcal L_wg,-w)$ a degeneracy when every moving boundary object
is retained. The direct first variation now completes the Brown--York wall
contribution to

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

The former Brown--York pieces were
$P_j^{\rm wall}=D_i\Pi^i{}_j$ and
$P_\perp^{\rm wall}=-\Pi^{ij}K_{ij}$. The joint carries
$\sigma_J\int\delta\eta\wedge\delta\sqrt q/\kappa_{\rm p}^2$. The remaining
problem is no longer the local total momentum but an integrable moving
polarization for normal surface translations. The finite-wall BTZ action
derivative verifies the local formula at both regulators; it does not prove
field-space closure for a family of nontrivial modes.

The fixed-boost Legendre residual fixes the compact normalization. The trace
wall generator tends to $\zeta I_{\rm fuse}/2$, so its matched boundary
representative is $(1-\zeta/2)I_{\rm fuse}$. This is an algebraic
redistribution of the same fused comparison functional, not a finite-wall
Neumann construction. It leaves the oppositely oriented bulk Noether/area
corner unchanged. If the boundary representative is held fixed too, the
residual is an exact obstruction for every $\zeta\ne0$.

## BTZ perturbation choice

The first benchmark should avoid solving an unnecessarily general perturbation problem. Candidate families are:

- a parameter variation within the non-rotating BTZ family, useful for area/charge normalization but with trivial radiative canonical energy;
- a smooth Brown--Henneaux boundary-graviton perturbation on BTZ, useful for the quadratic current but technically harder at the quotient horizon;
- a matter-sourced stationary perturbation, useful for the second-order constraint but requiring an additional matter boundary analysis.

Selected order: the fixed-boost parameter variation calibrates source-to-corner transgression and orientation; the collar-supported Brown--Henneaux representative then supplies the genuine quadratic test.

Qualification: the parameter variation changes the inner induced metric even at fixed Gaussian wall coordinate. It is an auxiliary normalization family unless the Brown--York source term, wall displacement, or a non-Dirichlet horizon ensemble is retained explicitly.

The collar representative avoids that conflict by being identically zero near the inner wall. Its sampled first- and second-order Einstein residuals, outer finite-action charge, CPS canonical energy, direct bulk symplectic-current integral, and analytic radial-cutoff independence are now evaluated. The conditional extension to general fixed-embedding data is H36; the remaining limitation is existence of its polarization and the moving-displacement edge phase space.

The regularity fork is now sharper. On compact BTZ the periodic Jacobi
operator has eigenvalues $1+n^2/r_+^2$, so every smooth extremality source has
a unique solution. Two explicit large-diffeomorphism representatives are
glued to nonzero smooth tangential horizon generators, avoiding both the raw
$\rho^{-2}$ divergence and the trivial collar datum. On the selected
AdS-Rindler mode, only the normal part $v_\perp=-\zeta_\perp$ is required.
It is proper at both anchors; the large radial part of $-\zeta$ is tangential
to the RT curve and may be dropped. Full Gaussian-null jets on an infinite
mode space remain a weighted-extension question rather than an obstruction
to smooth extremal gauge.

The finite-wall joint audit also fixes a recurring terminology issue. In the inherited time-evolution formalism, $C_\epsilon$ is the field-space one-form obtained from the timelike boundary descent. A Hayward boost joint is an additional scalar functional only in the fully Dirichlet piecewise-smooth action. For the radial-gauge BTZ wall both descriptions give zero endpoint-joint correction because $n_\epsilon\cdot\tau=0$ to all perturbative orders. This does not remove the finite fused boost corner created when the timelike wall itself is removed.

## Shortcuts that are not allowed

- copying the asymptotic AdS counterterm to the inner wall without a finiteness argument;
- setting the inner corner potential to zero before deriving the general variation;
- treating a gauge condition as a boundary condition;
- imposing equations of motion in the off-shell symmetry identity;
- replacing a general gauge vector by a Killing vector in the Iyer--Wald form;
- identifying the raw $S_{\xi,h}^{[0]}+S_{\xi}[k]$ surface tensor with $\Upsilon$;
- discarding the anchor pole without an explicit joint or cutoff cancellation;
- calling the classical charge identity a proof of subregion algebra reconstruction.

## Existing evidence to reuse

The modular-wedge benchmark fixes the interval geometry, modular Killing
field, corrected real Brown--Henneaux phase, proper completion family,
project/2501 current-sign map, and finite local $\Upsilon$ limit. The old raw
inner divergence came from the wrong radial phase and is withdrawn. The
fixed-embedding anchor calculation adds a negative result: the explicit
Hayward density vanishes sequentially through second order, and a bounded
outer completion density integrates to zero over the shrinking strip. The
explicit pure-diffeomorphism displacement $V=-\zeta_\perp$ also gives

$$
\left[p_{ua}V^a+\frac12V_aD_uV^a\right]_{\partial\gamma}
$$

with endpoint density decaying as $e^{-2|u|}$, so its oriented boundary value is zero. The fixed-surface, cross, embedding, and total quadratic area densities also decay as $e^{-2|u|}$.

The mode-space fork is resolved differently after the independent audit. For
a real single frequency on the $a=\pi/4$ interval, the two fixed-anchor
equations have determinant $-\sin(m\pi/2)$, and an individual odd-frequency
quadrature has an order-one endpoint lower bound. But endpoint conditions act
on the sum: $\cos3\phi-\cos5\phi$ vanishes at both endpoints. For
$H^s(S^1)$, $s>1/2$, the $t=0$ fixed-anchor space is therefore the closed
codimension-two kernel of the two continuous endpoint maps, with an explicit
bounded projection. The local $\Upsilon$ form and selected finite-action
blocks are evaluated on this adapted basis; the qualitative diagonal
completion is conditional as described below.
The verified $n=0,1$ Jacobi matrix remains a finite geometric benchmark and
is not relabeled as that complete form.

The selected-mode finite-action current has been recomputed after enforcing
the vector-level Brown--Henneaux phase. Its endpoint split is

$$
(q_{\rm BY}^{(2)},q_{\rm EH}^{(2)},q_\Gamma^{(2)})=(0,0,0).
$$

The exact endpoint pullback passes $12/12$ tests and the independent
unsimplified current passes $10/10$, with endpoint extrapolation to zero within
$1.03\times10^{-11}$. The raw density is regular, the proper project cocycle
is $32/105$, and the corrected outer strip scales as
$2\sinh^2\epsilon/R^2$. The old $32/3$ tail and fused-horizon account are
withdrawn. The projected local matrix, selected regulated data, and the
conditional diagonal proper-completion statement are recorded below.

That calculation has now separated the local and wall questions. The local
projected cut form is exact on the first four real basis vectors, its
high-frequency kernels are known, and a nonoptimal continuity theorem holds
on $\mathcal H_A^s$ for $s>5/2$. At a finite fixed wall, however, the same
four-mode block has nonzero Brown--York canonical-pair flux at generic
points. Because a scalar transgression does not change this two-form, there
is no universal $w_\epsilon$ that makes the unrestricted projected block a
polarization. The viable continuation is the compensated moving-inner-
embedding lift $\chi=-\zeta$ on the wall core, tapered to zero before
infinity. Its pulled-back core variation vanishes exactly and its outer charge
is unchanged. The far-wall endpoint jet has now been promoted to a complete
rational kernel theorem:
$|\mathcal F^{\rm wall}_{mn}|\leq
C(1+m+n)^7(\tanh(\epsilon/2)q^5+q^6)$, hence its integrated proper tail is
$C(1+m+n)^7(\tanh(\epsilon/2)L^{-5}+L^{-6})$. The complete raw far
moving-joint kernel is
$C(1+m+n)^6\tanh(\epsilon/2)q^5$, correcting the old untested
$O(\epsilon^2)$ coefficient claim. Its compensated mismatch is now proved to
be $C(1+m+n)^6L^2/R^2$. The complete finite-wall compensated source is
$C(1+m+n)^7L^{-2}$. The old $r\sim L$ rank-21 calculation
reconstructs analytic finite parts, not a universal unprojected ordinary
distribution: the direct $(\cos3\phi,\cos4\phi)$ density contains
$51L^4/(16\sqrt2d)$. The projected problem is now closed independently. A
two-symbolic-frequency point-jet factorization proves ordinary integrability
for every real sector pairing, zero endpoint distribution, no bulk remainder,
and

$$
\|B_{L,mn}^{P_A}-B_{mn}^{P_A,{\rm local}}\|_{L^1}
\leq C(1+m+n)^6/L^2.
$$

A selected finite-rank edge one-form still realizes coefficient-space
cancellation algebraically, while the complete action cancels the fully
compensated gauge core and leaves a transition form which now vanishes in the
projected regulator limit. Ordinary Fourier truncation is replaced by the
exact nested adapted projections $Q_M$. The transition sector therefore has
an unconditional diagonal limit when $M^6/L^2\to0$. The complete continuum
identity on $\mathcal H_A^s$, $s>5/2$, is now unconditional on the declared
regulator class: the old finite-wall anchor shift is absorbed by the complete
finite-wall kernel, the outer joint is controlled, and the compensated
article corner has the corrected
$C(1+m+n)^6(L^2/R^2+L^4/R^2)$ bound. H60 proves that the independent
second-jet HW coefficient collar adds no separate CPS estimate: all complete
pulled-back sectors reduce exactly to the fixed section. The complete far-wall and raw
far-joint endpoint kernels are no longer assumptions, while the complete
finite-cylinder outer Brown--York source curvature is exactly zero and its
Cauchy-corner curvature is $O((1+m+n)^6R^{-6})$. The relative-action flux
bound proves slice independence and the time-fibre symplectomorphism. The
later PSL reducibility audit changes the old moving-anchor interpretation. A
bounded $P_{\rm PSL}$ section fixes both endpoints by adding only exact
global AdS Killing fields and leaves $h$ unchanged. The point-jet theorem
then applies to the complete metric tangent quotient; no physical anchor pair
or negative-Virasoro frame is required. The raw finite-$R$ pole belongs to
the unfixed generator representative.
