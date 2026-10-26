# Arbitrary joint radial and spacetime cutoff removal

## The theorem

Let $\mathcal G_B(p,q,\Omega)$ be the **complete three-insertion causal TT
corner** in equation (5) of
[the first reconstruction report](half_bps_stress_completion.md), with the
same smooth radial vertex factor $\beta_B(u)=\beta(u/B)$ in all three
terms. Here $\beta=1$ near zero, $\beta$ is compactly supported and
$|\beta|\le1$. Let $\chi\in C_c^\infty(\mathbb R^4)$ be real with
$\chi(0)=1$, and $\chi_R(X)=\chi(X/R)$.

**Joint-limit theorem.** For every path $B\to\infty$, $R\to\infty$,
with no restriction on $B/R$,

\[
\boxed{
\widehat\chi_R(\Omega)\mathcal G_B(p,q,\Omega)
\longrightarrow(2\pi)^4\delta^4(\Omega)
W^{\mathrm{CFT}}(p,q)
\quad\text{strongly in }\mathcal S'(\mathbb R^{12}).}
\tag{J1}
\]

The same joint removal holds for the complete finite-radius coefficient,
uniformly for $0\le z\le Z$, $0\le w\le W$. Its two external radii can
also tend independently to zero. The source radial layers are first
defined and sharpened in the original source-functional prescription.

The observable remains the explicitly defined causal TT projection of
the full anchored response. The **full Brown–York stress** theorem in
[the Ward report](half_bps_stress_full_ward_limit.md) retains its stated
iterated radial-then-spacetime order: its additional finite-$B$ Ward forces
are not part of $\mathcal G_B$. Nor does (J1) compare unrelated cutoffs
on separate diagrams or arbitrary frequency substitutions.

## 1. What is new in the proof

The earlier proof constructed $\mathcal G=\lim_B\mathcal G_B$ in the
full twelve-dimensional distribution space and then its adiabatic trace.
That joint-space convergence alone does not justify multiplying by the
narrowing $\widehat\chi_R$. The missing information was a trace bound
uniform in $B$ on the annuli outside the already controlled null cores.

The new ingredients are proved at the original finite-cutoff integral:

| Geometry | New uniform statement | Detailed proof |
|---|---|---|
| Timelike transfer, positive masses | Exact same-sign Hankel cancellation; the remaining phases have a mass gap | [Local cutoff estimates](half_bps_stress_joint_cutoff_local.md), §§2–3 |
| Massive zero transfer | Hard-mass integration gives a uniform Lipschitz injection trace; no differentiation of an unraised continuity bound | [Massive proof](half_bps_stress_joint_massive.md) |
| Hard collinear null rays | Uniform normalized annular bounds, combined with the earlier finite-$B$ core | §3 below |
| Soft stress or scalar leg | A gapped radial bound controls the part outside the finite mass band; the cone measure survives | [Soft proof](half_bps_stress_joint_soft.md) |
| Common origin and large momenta | The original degree-zero causal family is uniformly tempered in $B$ | §5 below |

An explicit quantitative fast-path estimate is also available. If
$\operatorname{supp}\chi\subset\{|X|_E\le L_\chi\}$ and
$\beta=1$ on $[0,b_0]$, then on the corner

\[
|\langle(\mathcal G_B-\mathcal G)\widehat\chi_R,\Psi\rangle|
\le C_M B^{-M}P_M(\Psi),\qquad
b_0B\ge2L_\chi R.
\tag{J2}
\]

The full retarded output kernel is supported at $|X|_E\ge u$.
Convolution with the compact position-space switch therefore sees only a
Schwartz tail on $u\ge b_0B$. This proves (J2) uniformly in $R$, including
all null strata. At bounded external radii, the sufficient condition is
$b_0B\ge4L_\chi R$ and $b_0B\ge2\max(Z,W,1)$.
The proof of the unrestricted theorem below does not impose this condition.

## 2. Fixed normalized patches

On a compact patch where the map from external momenta to the three
radial squared masses is a submersion, use those masses as coordinates.
The canonical mass family is uniformly bounded in a fixed distribution
seminorm for every $B>0$. The coarea Jacobian, tensor, cutoffs and tests
depend smoothly on a small injection. Differentiating the latter smooth
factors gives a cutoff-uniform injection modulus. The strong radial mass
limit is uniform on the resulting bounded test families. This covers
regular nonzero-Gram patches, including simple null faces where the mass
map remains a submersion.

On a strictly timelike physical collinear patch the mass map degenerates,
but the full radial integrand has a stronger exact property. For past
middle momentum it contains

\[
J_0(bu)[Y_2(au)J_0(cu)+J_2(au)Y_0(cu)]
=J_0(bu)\frac{H_2^{(1)}(au)H_0^{(1)}(cu)
                  -H_2^{(2)}(au)H_0^{(2)}(cu)}{2i}.
\tag{J3}
\]

Only phases $\pm(a+c)\pm b$ remain. At stationarity $a\ge b+c$,
so $a+c-b\ge2c$. The future-middle sector has the analogous gap
$b+c-a\ge2c$. The cancellation holds before integrating over $u$,
with the same $\beta_B$ in both terms. All fixed derivatives of the
cutoff error decay faster than every power of $B$ on a positive-mass
compact patch. A separate graph would have an uncanceled $B^{5/2}$
collinear contribution.

At massive zero transfer put $M=p-\Omega=q-r$ and take its smooth rest
frame. For $s(M)=m^2$ bounded away from zero, write
$r=\rho(H,\mathbf V)$ on a normalized Euclidean annulus. The exact
numerator is

\[
\mathcal N=a^4\Pi(p)(r-\Omega)r
=O\big(\rho(\rho+|\Omega|)\big),\qquad a^2=s(p).
\tag{J4}
\]

The massive proof pairs the unraised hard mass first. With the actual
$d^4r$ measure included, it gives

\[
|A_{\rho,B}(\Omega)|\le C\rho^2(\rho+|\Omega|)P(\Psi),
\quad
|\partial_\Omega A_{\rho,B}(\Omega)|
\le C(\rho^2+|\Omega|\rho)P_1(\Psi),
\tag{J5}
\]

and

\[
|A_{\rho,B}-A_{\rho,\infty}|
\le C_M\rho^2(\rho+|\Omega|)(1+B\rho)^{-M}P_M(\Psi).
\tag{J6}
\]

The logarithm of the soft retarded mass is integrated in its actual
mass variable. No pointwise bound at that null mass is assumed. Summing
the annuli gives a cutoff-uniform Lipschitz trace and a radial error
$O(B^{-3}+|\Omega|B^{-2})$ on this massive external patch.

Thus every fixed normalized patch used in the subsequent gluing has both
a uniform trace bound and convergence for arbitrary joint $B,R\to\infty$.

## 3. Hard nonzero collinear-null rays

Set $\epsilon=R^{-1}$. The exact coordinate and parameter analysis in
[the partial-injection proof](half_bps_stress_partial_injection.md),
§§6–8, retains the three plus/transverse injection components as parameters.
Its central core obeys

\[
|\langle\widehat\chi_R\mathcal G_B^{\mathrm{core}},\Psi\rangle|
\le C\epsilon^2P(\Psi),\qquad\text{uniformly for every }B>0.
\tag{J7}
\]

On an external-normal annulus of squared scale $\rho>\epsilon$, use
angular cells of diameter $\sqrt\rho$ and a **fixed** boost in each
cell. The number of cells is $O(\rho^{-1})$, each cell has external
volume $\rho^4$, and the largest tensor factor is $\rho^{-1}$.
Their net factor is $\rho^2$; the radial cutoff in the normalized
kernel is $B\sqrt\rho$.

The normalized compact set is covered by the fixed patches of §2. Their
new uniform bounds therefore give

\[
|\langle\widehat\chi_R\mathcal G_B^{(\rho)},\Psi\rangle|
   +|\langle W^{(\rho)},\Psi|_{\Omega=0}\rangle|
\le C\rho^2P(\Psi).
\tag{J8}
\]

The remote normalized-injection part is estimated by the fixed finite
distribution order and an arbitrarily high Schwartz tail of
$\widehat\chi$. The construction is exactly the parameter-preserving
one in that proof; it does not differentiate a narrowing transverse
profile. Its constants are now independent of $B$.

For each fixed $\rho>0$, $B\sqrt\rho\to\infty$ and
$\epsilon/\rho\to0$, so the annulus converges by §2. To pass to all
annuli, choose a fixed $\delta>0$. The sum of (J8) over $\rho\le\delta$
is $O(\delta^2)$ uniformly in $B,R$. The finitely many annuli above
$\delta$ converge jointly. First take the joint limit, then
$\delta\downarrow0$, and use (J7). This proves joint convergence near
the hard common-null ray without requiring a rate for $B(R)$.

## 4. Soft external endpoints

The free soft cone must be integrated with its actual measure. In the
lightfront charts of the two endpoint reports,

\[
k^+=A,\quad k^-=H,\quad k_\perp=\sqrt{AH}\,v,\quad |v|\le1,
\qquad d^4k=\tfrac12AH\,dA\,dH\,d^2v.
\tag{J9}
\]

Here the other external leg is hard and $0\le A\le A_0$.
The prior two-mass estimates are uniform in the radial cutoff on an
explicitly localized mass band. They did not justify discarding the
complement at finite $B$ merely because its **uncut** kernel vanishes.

[The new soft proof](half_bps_stress_joint_soft.md) supplies this
complement. If the hard squared mass is $\sigma\gg H+|\Omega|$,
the complete same-sign Hankel phases have a gap comparable to
$\sqrt\sigma$. Small free masses are treated by spherical averages:
$J_0$ is the two-dimensional circle average, and
$8J_2(v)/v^2$ is the six-dimensional sphere average. Their small-mass
limits therefore cost no inverse soft mass. The radial seed is bounded
by $C\sigma^{-3}$ for all $B>0$. Including the exact tensor gives an
integrable hard-mass bound $C/\sigma$ (with an additional harmless
soft factor in the soft-stress chart).

In a transfer-null band the soft retarded factor is split at
$u\sqrt{|t|}=1$. The small-argument logarithm and the large-argument
Hankel or $K_0$ symbol give at most
$C(1+|\log|t/\sigma||)$ after the hard nonstationary radial pairing.
This logarithm is integrated over the hard mass, with a uniformly
nonzero Jacobian. It is not used as a pointwise null estimate.

Consequently the **whole** $H\asymp\rho$ annulus, including its
finite-$B$ mass-band leakage, has the summable bound

\[
C A\rho^2(1+|\log\rho|)P(\Psi)
\tag{J10}
\]

after the genuine profile pairing. Far-injection shells use the original
finite-$B$ two-mass estimate inside their mass band and the new gapped
bound outside it. Schwartz decay in $|\Omega|/\epsilon$ controls their
sum. No soft variable is differentiated, so the factor $A$ survives.

The central $H\le C\epsilon$ region, including the omitted mass-band
complement, is bounded by

\[
C A\epsilon^2(1+|\log\epsilon|)P(\Psi).
\tag{J11}
\]

For each fixed $\rho>0$ the soft leg has nonzero energy, so a compact
cover by the already established hard-leg/regular patches proves joint
convergence there. The sum of (J10) over $\rho\le\delta$ tends to zero
as $\delta\downarrow0$, uniformly in $B,R$ and after integrating $A$.
The same dominated-annulus argument as in §3, with (J11), proves joint
convergence through both zero-momentum endpoints.

## 5. Common origin and global strong topology

The canonical causal construction gives

\[
\mathcal G_B(\lambda p,\lambda q,\lambda\Omega)
 =\mathcal G_{\lambda B}(p,q,\Omega),
\tag{J12}
\]

and a common finite-order tempered bound for all $B>0$.
At $|(p,q)|\lesssim\epsilon$, simultaneous scaling of all twelve
momenta gives a core $O(\epsilon^8)$: twelve measure powers minus the
four profile powers, with degree zero for the kernel. The rescaled
external variables are localized to a fixed compact set; the unchanged
Schwartz profile controls the rescaled output/injection tails. Thus no
Schwartz seminorm is taken on $\Psi(\epsilon\,\cdot)$ alone on an
unbounded external domain, and no spurious negative power of $\epsilon$
is introduced. The canonical distribution bound controls these combined
tests uniformly in $\epsilon B$.

On ordinary external-momentum shells of size $\rho\ge\epsilon$, the
normalized switch scale is $\epsilon/\rho$ and the radial scale is
$\rho B$. The normalized external shell excludes the simultaneous
origin, so §§2–4 supply a uniform trace bound. The external measure
contributes $\rho^8$. These bounds sum at $\rho\downarrow0$, and each
fixed shell converges jointly. At large $\rho$, sufficiently high
Schwartz weights absorb the fixed finite derivative order and all
polynomial coordinate factors. This proves (J1) globally.

All estimates use fixed finite seminorms, uniformly on bounded Schwartz
test sets. Alternatively, equicontinuity and convergence on compactly
supported tests, with the displayed uniform tails, give convergence on
all Schwartz tests; the Montel property then makes it strong.

The common limit is the independently identified CFT three-shell
Wightman distribution. To identify it, choose a single linear path
$B=cR$ satisfying the sufficient condition in (J2). The fast-path bound
and the already established adiabatic limit of $\mathcal G$ identify
this path's limit with $W^{\mathrm{CFT}}$; uniqueness of the joint limit
then identifies every path. This last identification does not assume that two arbitrary
extensions agreeing off the null set must coincide: the actual finite
cutoff family has now been controlled on that set.

## 6. Finite external radii and the physical boundary of the theorem

The exact complete-kernel decomposition in
[the global transfer report](half_bps_stress_global_transfer.md), §5,
uses the corner only where the Bessel multipliers have uniform polynomial
bounds. Its compact Volterra remainders stop depending on $B$ once
$B>\max(Z,W)$. Its high-spacelike pieces use the complete positive Green
kernel; their radial tails are exponentially small in $B/\max(Z,W)$,
uniformly in $R\ge1$. Thus the only earlier order restriction was the
corner trace. Replacing that input by (J1) proves the bounded-radii
joint statement. The already proved independent-radius boundary error
then permits $z,w\to0$ along the same arbitrary path.

If the profile only obeys $\chi(0)=1$ and is not a plateau, the smooth
remainder terms use an ordinary approximate-identity estimate
$O(R^{-1})$ in a fixed finite seminorm. Only plateau profiles have all
nonzero moments of $\widehat\chi$ equal to zero and hence the earlier
arbitrary-power remainder rate. The limit and bounded-radius uniformity
used here require the former estimate, not the stronger rate; see
[the profile comparison](half_bps_stress_regulator_identification.md), §1.1.

This theorem is about a common vertex regulator and one specified
first-order observable. In particular:

- the full-stress Ward forces at finite $B$ have their own removal problem;
- independent regulators for separated singular diagrams need not preserve
  the Hankel cancellation;
- denominator-only Abel prescriptions are not changed into action
  switches by this theorem;
- no interacting Hilbert-domain or nonlinear CPS limit follows from
  strong convergence of this coefficient distribution.

The companion local, massive and soft notes give the analytic estimates.
The executed symbolic and numerical checks verify their exact coordinate
identities, tensor weights and Hankel cancellations; they do not replace
the annular proofs or the topology arguments above.
