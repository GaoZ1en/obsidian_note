---
paper id: 2611.03970v1
title: Obstruction to local entropy laws on arbitrary black-hole cuts in five-dimensional Einstein--Gauss--Bonnet gravity
authors:
  - Cendikiawan Suryaatmadja
  - Robert B. Mann
publication date: 2026-11-02
abstract: |-
  In exact five-dimensional Einstein-Gauss-Bonnet gravity, smooth covariant local cut entropies with a specified off-shell domain cannot both match stationary entropy and be nondecreasing on every ordered pair of horizon cuts. All-cuts monotonicity forces an ultralocal entropy variation; stationary normalization and a smooth-planar large-radius reduction leave a shear-dependent obstruction at quadratic wave order. A vacuum family with a stationary future supplies the test horizons.
comments: "Official main PDF: 8 pages including End Matter; source archive includes a 20-page Supplemental Material PDF"
url: https://arxiv.org/abs/2611.03970v1
summary: "A precise all-cuts entropy obstruction, with independently reproduced local bending algebra and a source-dependent global vacuum-family construction."
tags: []
---

# Verdict and immediate use

The local shear obstruction and displayed constraint algebra pass the checks below. The full no-go theorem is not independently proved by those checks: its scope also depends on the off-shell regularity, source-tensor reduction and exact hyperbolic vacuum-family construction developed in the source and supplement.

The theorem concerns an exact entropy law for every ordered smooth cut of selected metric event horizons in five-dimensional EGB gravity, at fixed positive Gauss–Bonnet coupling. It does not rule out a law on a preferred foliation, derivative-bounded EFT cuts, entropy with extra/nonlocal data, or a law accurate only to the order retained in an effective theory.

Immediate use for boundary-charge work: matching the stationary Wald/Jacobson–Myers value does not establish an arbitrary-cut dynamical law. The off-shell domain, null-normal covariance and allowed cut derivatives are essential assumptions of an entropy functional, just as the domain and boundary completion are essential for a Hamiltonian charge.

Reason codes: T1-boundary, T1-charge, T2-dS-BH-holography.

# Full source map and reading guide

Source-derived: all main-PDF sections, End Matter, and the complete 20-page Supplemental Material were read. The supplement is supplied as PDF in the official source archive, without its own TeX. It is indispensable even though the Letter itself is short. This note therefore uses monograph depth.

| Cluster | Complete source coverage | Definitions, role and dependencies |
|---|---|---|
| Setting | Letter pp. 1–2, (1)–(4); Supplement I, pp. 1–3 | Exact theory, off-shell entropy class, cut ordering, two-scale family (V) |
| Arbitrary-cut lemma | Letter pp. 2–3, (5)–(9); End Matter “Monotonicity”; Supplement II.1–II.5, pp. 3–6 | Positivity, smoothed min/max paths, ultralocality, decreasing pair, area and bent Ricci tensor |
| Local regularity | End Matter “Local finite order”; Supplement III.1–III.3, pp. 6–9 | Product jet topology, tubular coordinates, boost/engineering weights, finite Taylor estimates |
| Entropy reduction | Letter p. 4, (13)–(14); End Matter “Large-radius reduction”; Supplement IV.1–IV.4, pp. 9–13 | Metric source tensors, area coefficient, fixed-coupling scale derivative, degree-two reduction and limit order |
| Local contradiction | Letter pp. 4–5, (15)–(18) | First-order removal of shear cross-term; second-order tracefree bending response |
| Vacuum family | Letter pp. 3, 7–8; Supplement V.1–V.8, pp. 13–20 | V.1 spherical mass; V.2 final exterior; V.3 constraints; V.4 complete slice; V.5 hyperbolic development/parameters; V.6 nonzero shear; V.7 stationary future/event horizon; V.8 scaling |
| Discussion and references | Letter p. 5 and references; Supplement p. 20 | EFT and dimension boundaries; external hyperbolicity/master-equation results not reproved here |

How to read this long paper: the essential logical chain is Supplement II → III.1/III.3 → IV → Letter (15)–(17). Then read V before accepting that the local data occur on the claimed exact event horizons. III.2 supplies the geometric jet classification; V.5/V.7 are technical references for PDE and causal assumptions. None of these essential dependencies can be replaced by the abstract.

# Theory, normals and admissible entropy class

Use signature \((-++++)\), \(G_5>0\), \(\Lambda=0\), \(\alpha_{(2)}>0\), and the branch connected to GR:

$$
I=\frac1{16\pi G_5}\int d^5x\sqrt{-g}
\left[\mathcal R+\alpha_{(2)}
(\mathcal R^2-4\mathcal R_{ab}\mathcal R^{ab}
+\mathcal R_{abcd}\mathcal R^{abcd})\right].
$$

The horizon is \(\partial J^-(\mathscr I^+)\) for one chosen asymptotically flat end, using the metric causal cone. It need not be a causal boundary for every gravitational polarization.

For a compact boundaryless \(S^3\) cut, let

$$
\ell_+=\partial_v,\quad g(\ell_+,\ell_-)=-1,\quad
\chi^\pm_{AB}=g(\nabla_{e_A}\ell_\pm,e_B),\quad
\theta_\pm=q^{AB}\chi^\pm_{AB},\quad
\nabla_{\ell_+}\ell_+=\kappa\ell_+ .
$$

Under a local boost \(\ell_\pm\to e^{\pm b}\ell_\pm\),
\(\chi^\pm\to e^{\pm b}\chi^\pm\),
\(\omega_A=-g(\ell_-,\nabla_{e_A}\ell_+)\to\omega_A+\partial_A b\),
and \(\kappa\to e^b(\kappa+\ell_+b)\).
The integrated entropy is boost invariant; its density may change by an off-shell cut divergence.

Write \(\mathcal S=4G_5 S\). The stationary normalization is

$$
\mathcal S_{\rm stat}(L)=2\pi^2(L^3+12\alpha_{(2)}L),\qquad
\mathcal S_{\rm JM}=\int_C(1+2\alpha_{(2)}R_q)d\mu_q .
$$

The allowed functional depends locally on the metric, embedded cut and horizon null direction, with no additional clock, matter or preferred normal normalization. Its density is smooth on an invariant open set of independent off-shell metric/cut jets containing:

- the flat planar Minkowski cut jet;
- all relevant stationary cuts, including bifurcation cuts;
- every cut used in the test intervals, with no cut-derivative bound.

The topology is the product topology in independent jet coordinates. All iterated directional derivatives are jointly continuous in the jet and direction arguments. This is stronger and more specific than merely being smooth along on-shell black-hole solutions. Ratios singular when curvature/extrinsic curvature vanish are excluded.

# Why all-cuts monotonicity forces an ultralocal rate

Every graph \(v=\psi(x)\) on the horizon has

$$
(q_\psi)_{AB}(x)=q_{AB}(\psi(x),x).
$$

There are no explicit slope terms because \(\ell_+\) is null and orthogonal to the horizon. Every smooth graph is spacelike, even with large slope or Hessian. A compactly supported narrow bump can fix any finite collection of derivatives while keeping \(\psi\) inside the same small horizon interval.

Define the Euler–Lagrange density relative to generator coordinates:

$$
\left.\frac d{dt}\mathcal S[\psi+tf]\right|_{t=0}
=\int\mathcal E[\mathcal S]f\,d^3x,\qquad
\mathcal E^{AB}[\mathcal S]
=\left.\frac{\partial\mathcal E[\mathcal S]}{\partial\psi_{AB}}\right|_{D\psi=0}.
$$

All ordered-cut monotonicity implies \(\mathcal E\geq0\) on every graph, by taking any localized \(f\geq0\). Define \(e(x,s)=\mathcal E|_{\psi\equiv s}\).

The stronger step is not simply “a positive expression cannot contain derivatives”. Choose constants \(c<\min\psi\leq\max\psi<d\), an even nonnegative unit-integral mollifier \(\rho_\delta\), and paths

$$
\psi_s^-=\int\rho_\delta(t)\min\{s,\psi+t\}\,dt,\qquad
\psi_s^+=\int\rho_\delta(t)\max\{s,\psi+t\}\,dt .
$$

Both paths advance monotonically. Where they agree locally with the constant graph \(s\), locality identifies their rate with \(e(x,s)\); discard all other nonnegative contributions. Their endpoints and the constant-graph identity give

$$
\int d^3x\int_c^{\psi(x)-\delta}e(x,s)ds
\leq\mathcal S[\psi]-\mathcal S[c]
\leq\int d^3x\int_c^{\psi(x)+\delta}e(x,s)ds .
$$

Smoothness/compactness squeeze both sides as \(\delta\to0\). Varying \(\psi\) afterwards proves

$$
\mathcal E[\mathcal S]=e(x,\psi(x))\geq0,\qquad
\mathcal E^{AB}[\mathcal S]=0 .
$$

No bound on derivatives of the smoothed graphs was used: positivity, rather than a uniform derivative estimate, discards the potentially large transition contributions. This is why a derivative-bounded admissible-cut class evades the argument.

# Area and intrinsic curvature respond differently to bending

Since \(\partial_v q_{AB}=2\chi^+_{AB}\),

$$
\mathcal E[A]=\sqrt q\,\theta_+,\qquad
\mathcal E\!\left[\int R_qd\mu_q\right]
=-2\sqrt q\,G_q^{AB}\chi^+_{AB}.
$$

The second identity follows by varying the intrinsic Einstein–Hilbert functional with covariant metric variation \(2f\chi^+_{AB}\); cut divergences integrate to zero.

At zero slope, vary the Hessian by \(X_{AB}\), holding position, slope and other independent graph jets fixed:

$$
\delta_X\partial_C\partial_D(q_\psi)_{AB}=2\chi^+_{AB}X_{CD}.
$$

The principal Ricci variation gives

$$
\delta_X(R_q)_{AB}
=(\chi^+X+X\chi^+)_{AB}
-\theta_+X_{AB}-(\operatorname{tr}_qX)\chi^+_{AB}.
$$

Thus stationary horizons (\(\chi^+=0\)) hide a dependence that reappears when the horizon shears. The bending tensor \(X\) is not required to be positive; it selects the initial graph. The separately chosen forward displacement still has \(f\geq0\).

# Smooth-planar reduction without a global derivative bound

## Local finite order from product-topology smoothness

For a density coefficient \(F(j)\), joint continuity of \(dF(j)[h]\) near \((j_0,0)\) bounds it on \(U\times W\). A basic product neighborhood \(W\) restricts only finitely many coordinates. If \(h\) vanishes there, \(th\in W\) for every real \(t\), so linearity forces \(dF(j)[h]=0\). Shrinking \(U\) to a basic neighborhood makes \(F\) depend on finitely many jets there.

Compactness supplies finite order near each cut; a single planar neighborhood supplies the fixed order used in the large-radius argument. This does not impose one derivative order on the whole entropy domain.

Supplement III.2 uses normal exponential coordinates \(y^\pm\), the boost-covariant forms
\(\vartheta^\pm=dy^\pm\pm\omega_Ay^\pm dx^A\), cut Riemann normal coordinates and radial normal-frame gauge. All nontrivial geometric coordinates have positive engineering degree, with
\(d\geq|\text{boost weight}|\); weight-zero coordinates begin at degree two. The only degree-one tensors are \(\chi^\pm\), whose individual boosts forbid invariant linear scalars.

## Source tensors remove density-representative ambiguity

At fixed cut, independently vary the ambient metric by \(h_{ab}\). Tangential integration by parts leaves

$$
\delta\mathcal S[h]
=\int_C\sum_{r=0}^N
\langle\Pi_r[\mathcal S],\nabla_\perp^{(r)}h\rangle d\mu_q,\qquad
T[\mathcal S]=2g_{ab}\Pi_0^{ab}[\mathcal S].
$$

Normal Taylor coefficients of \(h\) are independently variable on the off-shell domain. The source tensors are therefore unique and covariant, and unchanged by adding a cut divergence. Constant rescaling \(h=2g\) gives \(\delta\mathcal S[2g]=\int T[\mathcal S]d\mu_q\).

At the planar jet, \(\Pi_0^{ab}=c_\parallel q^{ab}+c_\perp g_\perp^{ab}\). A normal-coordinate dilation fixing a bifurcation cut forces \(c_\perp=0\); varying stationary radius fixes \(c_\parallel=1/2\), the area coefficient. A condition on the trace \(T\) alone would not fix both coefficients.

## Fixed coupling and the two-scale family

The source constructs

$$
g_{L,\varepsilon}=L^2\bar g_{\lambda,\varepsilon},\qquad
\lambda=\frac{4\alpha_{(2)}}{L^2}.
$$

Here \(\varepsilon\) is wave amplitude, not a UV cutoff. At \(\lambda=0\), the barred family is Ricci flat; every member has an exactly stationary round future. Horizon identifications are included in parameter-dependent diffeomorphisms.

At fixed physical coupling,

$$
L\partial_Lg=2g+\eta_L,\qquad
\eta_L=-2\lambda L^2\partial_\lambda\bar g,\qquad
\nabla^{(r)}\eta_L=O(L^{-r-2}).
$$

Because \(\Pi_0[\mathcal S-A]=O(L^{-1})\) and \(\Pi_{r\geq1}=O(1)\),

$$
L\partial_L(\mathcal S-A)
=\int T[\mathcal S-A]d\mu_q+O(1).
$$

The remainder estimate must hold after the graph and amplitude derivatives used in the proof. It is uniform on each fixed compact set of dimensionless graph jets, not over all arbitrarily bent cuts simultaneously.

## Degree-two scalar and stationary normalization

Smooth Taylor expansion of the source scalar, rather than of an arbitrary density representative, yields

$$
T[\mathcal S-A]
=a_1R_q+a_2\theta_+\theta_-
+a_3\chi^+_{AB}\chi^{-AB}
+a_4\mathcal R+a_5\mathcal R_{+-}+O(L^{-3}).
$$

The Gauss relation and spacetime contractions reduce the remaining curvature scalars to this list. The normal-connection curvature is antisymmetric and has no linear scalar contraction here. At a round bifurcation cut both \(\chi^\pm\) vanish, \(R_q=6/L^2\), and the spacetime Ricci terms are subleading. Comparing the order-\(L\) stationary term fixes \(a_1=2\alpha_{(2)}\).

A degree-\(d\) cut integral scales as \(L^{3-d}\). Apply the exact identity \(\mathcal E^{AB}[\mathcal S-A]=0\) to the scale equation, take one or two amplitude derivatives at fixed \(L\), divide by \(L\), then take \(L\to\infty\). The controlled \(O(1)\) remainder vanishes, and the Ricci terms vanish on the limiting family. Therefore

$$
\mathcal S_2=\int_C
(2\alpha_{(2)}R_q+a_2\theta_+\theta_-+a_3\chi^+_{AB}\chi^{-AB})d\mu_q
$$

would have to satisfy
\(\partial_\varepsilon^m\mathcal E^{AB}[\mathcal S_2]|_0=0\) for \(m=1,2\).
This is a necessary identity extracted from an exact functional, not an assumption that the original entropy contains only two derivatives.

# The first- and second-order shear contradiction

On the Ricci-flat family, the stationary future and Raychaudhuri equation imply

$$
\chi^+=\varepsilon\Sigma+O(\varepsilon^2),\qquad
\theta_+=O(\varepsilon^2),\qquad
\operatorname{tr}_{q_0}\Sigma=0,\qquad
\partial_v\theta_+-\kappa\theta_+
=-\chi^+_{AB}\chi^{+AB}.
$$

\(\Sigma\) is nonzero somewhere and vanishes on a final open interval.

The graph's transverse second fundamental form contains
\(\psi_{AB}+\kappa\psi_A\psi_B\). At first order the \(a_3\) density therefore has bending part
\(\varepsilon a_3\sqrt{q_0}\Sigma^{AB}
(\psi_{AB}+\kappa\psi_A\psi_B)\).
For a local expression \(A^{AB}(\psi)\psi_{AB}+C^{AB}(\psi)\psi_A\psi_B\), the Hessian coefficient of its Euler derivative at zero slope is \(2(\partial_vA^{AB}-C^{AB})\). Hence

$$
\partial_\varepsilon\mathcal E^{AB}[\mathcal S_2]|_0
=-2a_3\sqrt{q_0}(\kappa\Sigma-\dot\Sigma)^{AB}.
$$

If \(\dot\Sigma=\kappa\Sigma\) everywhere, its vanishing on a final interval would force it to vanish identically. Thus the necessary first-order identity sets \(a_3=0\).

The \(a_2\) term instead has

$$
\mathcal E^{AB}\!\left[a_2\int\theta_+\theta_-d\mu_q\right]X_{AB}
=-2a_2\sqrt q
(\kappa\theta_+-\dot\theta_+-\theta_+^2/2)\operatorname{tr}_qX .
$$

One can see the cancellation of anisotropic terms using
\(\partial_v(\sqrt q\,\theta_+q^{AB})
=\sqrt q[(\dot\theta_++\theta_+^2)q^{AB}-2\theta_+\chi^{+AB}]\)
and the slope-squared coefficient
\(\sqrt q\,\theta_+[(\kappa+\theta_+/2)q^{AB}-2\chi^{+AB}]\).
For \(q_0\)-tracefree \(X\), \(\operatorname{tr}_qX=O(\varepsilon)\), making this contribution \(O(\varepsilon^3)\).

The curvature term then gives (17),

$$
\frac12\partial_\varepsilon^2
\mathcal E^{AB}[\mathcal S_2]X_{AB}\big|_0
=-8\alpha_{(2)}\sqrt{q_0}
(\Sigma^2)^{\rm TF}_{AB}X^{AB}.
$$

For a real symmetric tracefree \(3\times3\) matrix,

$$
\|(\Sigma^2)^{\rm TF}\|^2
=\frac16(\operatorname{tr}\Sigma^2)^2>0
\quad(\Sigma\ne0).
$$

This follows by diagonalizing \(\Sigma\), with eigenvalues \(u,v,-u-v\). Choose \(X=(\Sigma^2)^{\rm TF}\). The necessary zero identity is contradicted. For \(\Sigma=\mathrm{diag}(1,1,-2)\), \(X=\mathrm{diag}(-1,-1,2)\) and the response is \(-48\alpha_{(2)}\sqrt{q_0}\).

The sign of this bending response is not itself the entropy difference of an ordered pair. The exact all-cuts lemma implies that a graph-dependent Euler density must be negative somewhere on some graph. A localized \(f\geq0\) there then gives an ordered decreasing pair for small positive displacement. The proof does not extend a perturbative remainder estimate to unbounded Hessians. In two cut dimensions a tracefree symmetric matrix squares to a multiple of the identity, so this particular obstruction vanishes.

# The exact vacuum family: what the supplement constructs

## Spherical background and final constraint data

Set \(\widetilde\alpha=4\alpha_{(2)}\). In round regions,

$$
F=1-(\nabla R)^2,\quad A=1-F,\quad
K=1+\widetilde\alpha F/R^2,\quad
\mu=R^2F+\tfrac12\widetilde\alpha F^2,\quad
M=\frac{3\pi\mu}{8G_5}.
$$

The GR-branch solution is

$$
F=\frac{2\mu}{R^2+\sqrt{R^4+2\widetilde\alpha\mu}}.
$$

In units of final radius one, replace \(\widetilde\alpha\) by \(\lambda\), \(\mu_{\rm out}=1+\lambda/2\). Then \(F(1)=1\), \(A'(1)=2/(1+\lambda)>0\).

On a finite Painlevé–Gullstrand collar of a final slice, prescribe

$$
\gamma=dR^2+R^2\sum_{i=1}^3\sigma_i^2,\qquad
K^i{}_j=\mathrm{diag}(P,H+\Delta,H+\Delta,H-2\Delta),
\quad\Delta=\varepsilon\Delta_0(R),
$$

with \(d\sigma_1=-2\sigma_2\wedge\sigma_3\) cyclically and \(\Delta_0\) supported strictly inside \(R=1\).
Here slice \(K_{ij}=-\tfrac12\mathcal L_{e_0}\gamma_{ij}\), distinct from the spherical scalar \(K\) above.

The exact constraints (S77) solve to

$$
P=-\frac{H^2-\Delta^2}{H+\lambda(H+\Delta)^2(H-2\Delta)},\qquad
H'=\frac{P-H}{R}
+\frac{2\lambda(H+\Delta)\Delta(\Delta'+\Delta/R)}
{1+\lambda(H^2-\Delta^2)}.
$$

At \(\Delta=0\), \(H=\sqrt F/R\), \(P=(\sqrt F)'\), and
\([R^4(H^2+\lambda H^4/2)]'=0\).
All explicit perturbation terms begin at \(O(\varepsilon^2)\); hence \(\delta H=\delta P=0\) at first order. The inside mass is allowed to differ at second order. Round regions let the collar join a complete two-ended slice without surface layers; flat \(\gamma\) is used only in the collar.

## Hyperbolic evolution and nonzero shear

Source-derived Supplement V.5 uses the full weak-coupling modified harmonic formulation, including nonsymmetric polarizations. In the invariant reduction a fully nonlinear first-order equation \(Y_t=\Phi(\lambda,t,x,Y,Y_x)\) is prolonged with \(W=Y_x\):

$$
Y_t=\Phi(\lambda,t,x,Y,W),\qquad
W_t=\Phi_WW_x+\Phi_YW+\Phi_x .
$$

The constraint \(W-Y_x\) obeys a homogeneous equation. The source invokes a smooth symmetrizer and energy estimates for finite mixed coordinate/parameter derivatives, allowing additional spatial regularity for each parameter derivative. It does not assume smoothness of the flow map at a single fixed Sobolev order.

Write the orbit metric as
\(q=R^2[e^{2\beta}(\sigma_1^2+\sigma_2^2)+e^{-4\beta}\sigma_3^2]\).
Its volume is \(R^3d\mu_{\Omega_3}\), independent of \(\beta\).
At first order only the tensor mode \(\beta_1\) changes. A positive radial multiple
\(Z=R[(R^2K)']^{1/2}\beta_1\) obeys a regular \(1+1\) wave equation.

Use regular null coordinates and a final slice \(V=V_f(U)\), \(V_f'<0\). Set
\(\tau=(U-V_f^{-1}(V))/2\), \(x=(U+V_f^{-1}(V))/2\).
The final slice is \(\tau=0\), horizon \(x=-\tau\), and
\(Z_{\tau\tau}-Z_{xx}+\widetilde V_\lambda Z=0\), with bounded potential.
Choose \(Z(0,x)=0\), \(Z_\tau(0,x)=B(x/w)\), \(B\geq0\), supported in \((1/2,1)\).

Backward time \(t=-\tau\) gives a horizon signal whose free part is
\(\frac w2\int_0^{2t/w}B(s)ds\). It vanishes for \(t<w/4\) and is positive at \(t=w\). Duhamel bounds give
\(Z_{\max}\leq w+\tfrac12c_*w^2Z_{\max}\), so for
\(c_*w^2\leq\min(1,c_B/4)\) the horizon value is at least \(c_Bw/4>0\).
This produces a shear proportional to
\(\ell_+\beta_1\,\mathrm{diag}(1,1,-2)\), nonzero earlier and zero on a final interval.

## Stationary future and metric event horizon

Choose a round \(R_c<1\) outside the perturbation support. The spherical effective inverse metrics have

$$
K G_I^{ab}=g_{\rm orb}^{ab}+\kappa_Ig_{\rm sph}^{ab},\quad
\kappa_T=3-\frac2{K^2},\quad
\kappa_V=\frac1{K^2},\quad
\kappa_S=\frac2{K^2}-1 .
$$

All are positive for \(1\leq K<\sqrt2\). On \(R=R_c\), \(A<0\), so \(G_I(dR,dR)=A/K<0\): physical future characteristics cross inward. Auxiliary gauge cones are also chosen inward. The source uses an outflow uniqueness argument to preserve an exactly stationary future exterior.

Tracing its \(R=1\) surface backward along outgoing metric-null curves identifies the tested part of the metric event horizon. Positivity of the angular metric implies every metric-causal curve projects to an orbit-space causal curve; order preservation of radial null curves separates escaping from trapped points. Smallness prevents caustics on the finite slab, and the stationary nonextremal future supplies future-complete generators.

These causal/PDE arguments were reconstructed from the source, not independently executed as a nonlinear spacetime evolution. In particular, the spherical effective-cone calculation alone does not prove full nonspherical strong hyperbolicity; the latter uses the cited formulation theorem.

# Relation to entropy charges and excluded extensions

The reusable local object is the bending derivative
\(\mathcal E^{AB}\), obtained from a covariant cut functional after all integrations by parts. It distinguishes stationary normalization from an all-cuts law, and remains insensitive to density divergences on closed cuts.

A finite region with corners would introduce boundary terms absent here. A preferred foliation or clock changes the admissible data and avoids the theorem's functional class. Likewise, a curvature-small spacetime does not impose bounds on the derivatives of an embedded cut. In EFT one normally restricts both before discarding higher-order corrections.

The source does not establish a no-go for every higher-curvature theory. Higher-dimensional Lovelock extensions require a new vacuum family and reduction; theories without the positive Gauss–Bonnet term require separate analysis. Suitable \(f(\mathcal R)\) theories can have nonlinear second laws under their stated assumptions.

# Verification log and precise residual gaps

Verified:

| Evidence | Independent check | Result / boundary |
|---|---|---|
| Checked, xCoba | Actual 3D graph metric \(q=\mathrm{diag}(1+\varepsilon u,1+\varepsilon u,1-2\varepsilon u)\), \(u=-x^2-y^2+2z^2\) | At the origin Ricci is \(\varepsilon\,\mathrm{diag}(-2,-2,-8)\); contraction with \(\chi^+=\varepsilon\,\mathrm{diag}(1,1,-2)\) gives \(-48\alpha_{(2)}\varepsilon^2\) |
| Checked, Mathematica | General diagonalizable \(\chi^+\), arbitrary symmetric \(X\): contract bent Ricci with the intrinsic Einstein tensor | Reproduces the trace terms and the surviving \(-8\alpha_{(2)}\operatorname{tr}(\Sigma^2X)\) at quadratic order |
| Checked, xCoba | Null graph in \(ds^2=2\kappa r\,dv^2-2dv\,dr+\sum_i e^{2b_iv}(dx^i)^2\) | Inaffinity is \(+\kappa\); slope-squared transverse extrinsic curvature matches \(\kappa p_Ap_B-(Bp)_Ap_B-p_A(Bp)_B+\frac12p^2B_{AB}\), with Hessian term added directly |
| Checked, variational derivation/Mathematica | Hessian coefficients of the \(a_3\) and \(a_2\) local densities | Signs and anisotropic cancellation in (15)–(16) reproduced |
| Checked, Mathematica | Eigenvalues \(u,v,-u-v\) | \(\|(\Sigma^2)^{TF}\|^2=(\operatorname{tr}\Sigma^2)^2/6\); 2D tracefree square has zero TF part |
| Checked, Mathematica | Sum of pair products plus quartic product of slice extrinsic eigenvalues; independent expansion of (S78) | Hamiltonian and momentum polynomials match (S77); substituting the displayed \(P,H'\) gives two exact zero residuals |
| Checked, Mathematica | First amplitude derivatives and round first integral | \(\partial_\varepsilon(P,H')|_0=0\); derivative of round mass integral zero |
| Checked, Mathematica | Boulware–Deser mass relation, horizon and effective coefficients | Mass residual zero; \(F(1)=1\), \(A'(1)=2/(1+\lambda)\); positivity range \(1\leq K<\sqrt2\) |
| Checked, numerical Mathematica | Constraint ODE on \(R\in[0.5,1.2]\), outer stationary data, bump on \((0.65,0.85)\), \(\lambda=0,0.02\), amplitudes 0.01, 0.02, 0.04 | Full-domain solutions; \(\delta H/\varepsilon^2\) about \(-0.022596\) at \(\lambda=0\), \(-0.01763\) at 0.02, consistent with quadratic onset. This is constraint data only, not spacetime/horizon evolution |
| Visually confirmed | Main pp. 3–4; Supplement pp. 12, 15, 18–19 | Bending/entropy equations, limit order, exact constraints, Duhamel construction and causal-cone formulas |

Assumptions: all off-shell/domain/topology hypotheses stated above; compact boundaryless cuts; fixed \(\alpha_{(2)}>0\); future stationary vacuum family with finite-order mixed derivative control; amplitude derivatives at fixed \(L\) before \(L\to\infty\); no uniform all-graphs Taylor estimate. Numerical ODE uses a chosen smooth bump and does not reproduce the source's full characteristic profile.

Not independently verified: the complete invariant-theory classification and all orders of the source-tensor Taylor bounds; the external modified-harmonic symmetrizer; full nonlinear vacuum development, gluing to the complete two-ended slice and metric event-horizon identification; the uniform parameter estimates required for every candidate entropy. The local obstruction is not an independent certification of all these existence statements.

Blocked: no retrieval or computation-service blocker remains. A numerical reproduction of the actual nonlinear horizon family would require an explicit implementation of the modified harmonic system, gauge/auxiliary metrics, complete slice and master potential beyond the formulas printed here. The source gives an existence/estimate construction, not such an implementation.

Failed: no source equation was contradicted by accepted checks. Initial local scripts used an incorrect xCoba component-index syntax and a Gaussian-null metric with inaffinity \(-\kappa\); corrected definitions gave zero residuals. An optional Python ODE attempt lacked scipy; Mathematica supplied the check. Its first symbolic Piecewise run overflowed at a bump endpoint and extrapolated; every such value was discarded. Numeric-only bump functions yielded full-domain runs without those messages.

Official sources: [abstract](https://arxiv.org/abs/2611.03970v1), [main PDF](https://arxiv.org/pdf/2611.03970v1), [source archive with Supplemental Material](https://arxiv.org/src/2611.03970v1). All PDFs, rendered pages and check artifacts remain outside the vault.
