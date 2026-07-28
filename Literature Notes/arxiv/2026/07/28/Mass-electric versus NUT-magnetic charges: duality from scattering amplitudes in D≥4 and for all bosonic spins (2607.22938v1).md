---
paper id: 2607.22938v1
title: "Mass/electric versus NUT/magnetic charges: duality from scattering amplitudes in D≥4 and for all bosonic spins"
authors:
  - Ricardo Monteiro
  - Lecheng Ren
  - Daniel Siretanu
publication date: 2026-07-24T22:39
abstract: |-
  Kerr--NUT metrics and their spin-s multi-copy fields in D≥4 are organized by the distinct roots of a rotation-deformed spheroidal radial equation. The mass/electric and equal-NUT/magnetic sectors are related in momentum space by reflecting the order of a Bessel-function scalar seed; a spin-raising operator then produces the gauge, gravity, and conjectural all-spin amplitudes. The paper reconstructs the corresponding gauge-invariant curvatures and finds no higher-dimensional analogue of the vanishing self-dual 2-to-2 amplitude special to D=4.
comments: "47 pages"
url: https://arxiv.org/abs/2607.22938v1
summary: "A technically rich solution-space duality connecting Kerr--NUT parameters, multi-Kerr-Schild fields, on-shell amplitudes, and higher-spin curvatures, with important limits on its interpretation as a charge or dynamical symmetry."
tags: []
---

[[2026_07_28_overview|Back to the 2026-07-28 arXiv overview]]

# How to read this long paper

The shortest reliable path is:

1. read Sections II.1--II.5 as the geometric dictionary between the roots \(r_{(\alpha)}^2\), the multi-Kerr-Schild monomials, and the \(M/N\) sectors;
2. read Sections III.1--III.5 for the amplitude map and the spin-raising proposal;
3. read Section IV together with Appendix C, because the finite-part ambiguity of the \(N\)-sector potentials disappears only after passing to gauge-invariant curvatures;
4. read Section V last: it sharply separates the four-dimensional self-dual integrable sector from the higher-dimensional solution-space duality.

The paper uses the word “charge” for parameters \(M,N_\alpha,Q_\alpha\) of stationary solutions and gives an ADM normalization for \(N_\alpha\). It does **not** derive these quantities as covariant-phase-space surface charges, specify boundary conditions, or construct a charge algebra. That distinction controls how this note translates the result into the vault’s charge language.

# Source structure map

- **Section I, Introduction and summary:** motivates the exact amplitude/metric map afforded by multi-Kerr-Schild solutions and states the higher-dimensional duality question.
- **Section II, Kerr--NUT solutions**
  - II.1 builds the flat-space multi-Kerr-Schild metric from the roots of the spheroidal radial equation.
  - II.2 gives the scalar, Maxwell, gravity, and spin-\(s\) multi-copy fields.
  - II.3 derives the Lorentzian reality prescriptions up to gauge or linearized diffeomorphism.
  - II.4 shows that the odd-dimensional “duality” is a parameter redundancy.
  - II.5 constructs the nontrivial even-dimensional \(M\leftrightarrow N\) map.
  - II.6 studies equal rotations, the reduced two-root “little duality,” its missing zero modes, and the partial Newman--Janis interpretation.
- **Section III, Kerr--NUT scattering amplitudes**
  - III.1 maps a stationary source and its three-point amplitude to the linearized curvature.
  - III.2 rewrites the Myers--Perry source in Bessel-function form.
  - III.3 obtains the equal-NUT/magnetic amplitudes by reflecting the Bessel order.
  - III.4 recovers the familiar \(D=4\) helicity exponentials.
  - III.5 proposes the spin-raising operator and an all-spin combinatorial formula.
- **Section IV, From amplitudes back to solutions**
  - IV.1 introduces the two towers \(\Theta_M^{(s)}\), \(\Theta_N^{(s)}\) and reconstructs de Wit--Freedman curvatures.
  - IV.2 tests the equal-rotation “little duality,” including explicit \(D=6\) antiderivative potentials.
- **Section V, Self-duality and \(2\to2\) scattering:** proves the \(D=4\) charge combinations that make the leading exchange vanish and reports the absence of such a relation in a generic \(D=6\) test.
- **Section VI, Conclusion:** summarizes the solution-space duality and lists its still-conjectural all-spin and higher-dimensional aspects.
- **Appendix A, Kerr--NUT--(A)dS:** gives the \(\Lambda\)-deformed base metric, roots, principal tensor, equal-spin limits, and the Chen--Lü coordinate dictionary. It does not extend the amplitude construction to \(\Lambda\neq0\).
- **Appendix B, Spin-\(s\) polarization sums:** constructs the symmetric transverse-traceless projector from the little-group invariants.
- **Appendix C, Convergence:** proves small-\(\xi\) convergence of every even-\(D\) \(N\)-curvature term for \(z\neq0\) and nonzero rotations, while leaving the potentials prescription-dependent.

# Fields, roots, and conventions

The spacetime dimension is parameterized by

\[
D=2m+2-\epsilon,\qquad
\epsilon=
\begin{cases}
0,&D\ \text{even},\\
1,&D\ \text{odd},
\end{cases}
\]

where \(m\) is the number of rotation planes. The flat signature is mostly plus. Cartesian coordinates are

\[
(t,x_1,y_1,\ldots,x_m,y_m,z),
\]

with \(z\) absent when \(\epsilon=1\). The rotation parameters are \(a_i\); \(M=N_0\) is the geometric mass parameter; \(N_{\alpha>0}\) are geometric NUT parameters. The latter are \(i\) times their real physical values in even-dimensional Lorentzian signature.

The radial variables \(r_{(\alpha)}\) are square roots of all roots of

\[
\sum_{i=1}^{m}\frac{x_i^2+y_i^2}{r^2+a_i^2}
+(1-\epsilon)\frac{z^2}{r^2}=1 .
\tag{II.4}
\]

The root with largest square is \(r_{(0)}>0\); the remaining roots generate NUT monomials. For generic ordered \(a_i^2\), the squared roots interlace the poles \(-a_i^2\). The central residue identity is

\[
\Phi_{(\alpha)}
=
\frac{r_{(\alpha)}^{1-\epsilon}}
{\prod_{\beta\neq\alpha}
\bigl(r_{(\alpha)}^2-r_{(\beta)}^2\bigr)} .
\tag{II.8}
\]

Useful amplitude conventions are

\[
\kappa^2=32\pi G,\qquad
u^2=-1,\qquad
k\cdot u=0,\qquad
S_{\mu\nu}=\frac{D-2}{2}\frac{J_{\mu\nu}}{M^{\rm ADM}},
\]

and, in the rest frame, \(S_{x_i y_i}=a_i\). The rotation invariant is

\[
\xi=\sqrt{(S\cdot k)^2}
=\sqrt{\sum_i a_i^2(k_{x_i}^2+k_{y_i}^2)} ,
\]

while the position-space differential operator is

\[
\chi^2=-\sum_i a_i^2
\left(\partial_{x_i}^2+\partial_{y_i}^2\right).
\]

The labels \(M\) and \(N\) below denote respectively the mass/electric root sector and the **sum of equal** NUT/magnetic root sectors. They do not mean arbitrary independent \(N_\alpha\).

# The multi-Kerr-Schild family and its copies

The exact vacuum metric is

\[
g_{\mu\nu}
=\eta_{\mu\nu}
+\sum_{\alpha=0}^{m-\epsilon}
N_\alpha\Phi_{(\alpha)}
\ell_{(\alpha)\mu}\ell_{(\alpha)\nu}.
\tag{II.2}
\]

The covectors \(\ell_{(\alpha)}\) are null, mutually orthogonal, and geodesic with respect to the flat base. Each \(\Phi_{(\alpha)}\) is a flat harmonic function away from its source. These algebraic properties allow the nonlinear Einstein equation to linearize on the Kerr-Schild monomials.

The single and zeroth copies are

\[
A_\mu=\sum_\alpha Q_\alpha\Phi_{(\alpha)}
\ell_{(\alpha)\mu},
\qquad
\phi=\sum_\alpha c_\alpha\Phi_{(\alpha)} .
\tag{II.11--II.12}
\]

The Maxwell field solves the equations on both the flat base and the full Kerr--NUT metric because

\[
\sqrt{-g}=1,\qquad
\ell_{(\alpha)}^\mu F_{\mu\nu}
\propto \ell_{(\alpha)\nu},
\]

so the curved divergence reduces to the flat one. The scalar is flat-harmonic but is not generally harmonic on the curved metric. The spin-\(s\) extension is

\[
\psi_{\mu_1\cdots\mu_s}
=\sum_\alpha C_\alpha\Phi_{(\alpha)}
\ell_{(\alpha)\mu_1}\cdots
\ell_{(\alpha)\mu_s},
\tag{II.14}
\]

which solves the flat Fronsdal equation because its trace vanishes and each NUT monomial is algebraically equivalent to the mass monomial. This statement does not supply a gauge-invariant naive covariantization on the generic Kerr--NUT background.

The physical normalization used by the paper is

\[
N_\alpha^{\rm ADM}
=\frac{(D-2)\Omega_{D-2}}{16\pi G}\,
N_\alpha
\begin{cases}
i,&D\ {\rm even},\ \alpha>0,\\
1,&\text{otherwise}.
\end{cases}
\tag{II.16}
\]

For the Maxwell and linearized metric representatives, the residual imaginary parts are gauge:

\[
d\,{\rm Im}
\bigl(Q_\alpha\Phi_{(\alpha)}
\ell_{(\alpha)}\bigr)=0,
\]

\[
R_{\mu\nu\lambda\rho}^{\rm lin}
\left[
{\rm Im}\bigl(
\Phi_{(\alpha)}\ell_{(\alpha)}
\ell_{(\alpha)}\bigr)
\right]=0 .
\tag{II.17--II.18}
\]

The source reports the gravity statement numerically for \(D=4,5,6\); it is not presented as an all-\(D\) analytic proof.

# Odd-dimensional redundancy and even-dimensional duality

For odd \(D\), the residue numerator in Eq. (II.8) is constant and partial fractions give

\[
\sum_{\alpha=0}^{m-1}\Phi_{(\alpha)}=0,
\qquad
\Phi_M+\Phi_N=0 .
\tag{II.19}
\]

The analogous Maxwell sum is closed and the linearized gravity sum is pure gauge. One coefficient can therefore be shifted away. This is a redundancy of the parametrization, not a nontrivial duality operation.

For even \(D\), define

\[
\sigma=\frac{D-5}{2}.
\]

The mass scalar resums as \(J_\sigma\), whereas the equal-NUT sum resums as \(J_{-\sigma}\):

\[
\left(\Phi_M,\Phi_N\right)
=
2^\sigma\Gamma(\sigma+1)
\frac{
\left(
J_\sigma(\chi),
i(-1)^{D/2}J_{-\sigma}(\chi)
\right)}
{\chi^\sigma}
\frac{1}{R^{D-3}} .
\tag{II.24}
\]

Thus the operative map is

\[
J_\sigma\longmapsto i(-1)^{D/2}J_{-\sigma}.
\tag{II.25}
\]

Equivalently,

\[
\Phi_M+\Phi_N=
2^\sigma\Gamma(\sigma+1)
\frac{H_\sigma^{(1)}(\chi)}{\chi^\sigma}
\frac1{R^{D-3}} .
\tag{II.26}
\]

For \(D\geq6\), negative powers of \(\chi\) make the \(N\) potential distributional or finite-part dependent. This is one reason the later curvature reconstruction is essential.

This higher-dimensional map has a deliberately limited meaning. It connects a distinguished stationary \(M\) sector to the sector in which all magnetic/NUT parameters are equal. It is not the conventional Hodge duality between a one-form and a \((D-3)\)-form, nor between a graviton and a mixed-symmetry dual graviton. The source explicitly says it is not a symmetry of the generic dynamical theory beyond \(D=4\).

# Equal rotations, lost roots, and the little duality

When \(a_i^2=a^2\) in even \(D\), only two roots remain nondegenerate:

\[
u_\pm=\frac12\left[
R^2-a^2\pm
\sqrt{(R^2-a^2)^2+4a^2z^2}
\right],
\qquad
r_{(0)}^2=u_+,\quad r_{(1)}^2=u_- .
\tag{II.30}
\]

With the branch choice

\[
r_{(1)}=-\frac{iaz}{r_{(0)}},
\]

the map is an involution. The two surviving scalars obey a one-dimensional Bessel version of Eq. (II.24),

\[
\left(\Phi_{(0)},\Phi_{(1)}\right)
=
2^\sigma\Gamma(\sigma+1)
\frac{
\left(
J_\sigma(-a\partial_z),
i(-1)^{D/2}J_{-\sigma}(-a\partial_z)
\right)}
{(-a\partial_z)^\sigma}
\frac1{R^{D-3}} .
\tag{II.35}
\]

However, \(\Phi_{(1)}\neq\Phi_N\) for \(D\geq6\). The roots that collapse to \(-a^2\) leave zero modes of \(\partial_z^{D-5}\):

\[
\sum_{\alpha=2}^{m}\Phi_{(\alpha)}
=
\frac1{(m-2)!}
\left.
\frac{d^{m-2}}{du^{m-2}}
\left(\frac{-i\sqrt{-u}}{Q(u)}\right)
\right|_{u=-a^2}.
\tag{II.39}
\]

For \(D=6\), this is \(-i/(a\rho^2)\). It cancels the nonlocalized \(\rho=0\) singular behavior of \(\Phi_{(1)}\) in the full \(\Phi_N\). Therefore the “little duality” is a convenient two-root truncation, not the full equal-NUT sector.

The Newman--Janis-like relation

\[
\Phi_{(0)}+\Phi_{(1)}
=e^{-ia\partial_z}
f^{(D)}(-a\partial_z)\frac1{R^{D-3}}
\tag{II.43}
\]

reduces to a pure complex shift only in \(D=4\). In higher even dimension the inverse-derivative polynomial \(f^{(D)}\) is indispensable.

# From stationary sources to three-point amplitudes

In de Donder gauge the stationary linearized field generated by \(T_{\mu\nu}\) is

\[
h_{\mu\nu}(x)=
\frac{\kappa^2}{2}
\int\frac{d^Dk}{(2\pi)^D}
\frac{e^{ik\cdot x}}{k^2}
\delta(k\cdot u)\,
\bar T_{\mu\nu}(k),
\quad
\bar T_{\mu\nu}
=T_{\mu\nu}-\frac{\eta_{\mu\nu}T}{D-2}.
\tag{III.1}
\]

The on-shell three-point amplitude is

\[
\mathcal A_{\rm grav}
=\frac{\kappa^2}{2}
\varepsilon^{\mu\nu}\bar T_{\mu\nu},
\tag{III.2}
\]

and its gauge-invariant position-space image is

\[
R_{\mu\nu}{}^{\lambda\rho}(x)
=
2\sum_\eta
\int\frac{d^Dk}{(2\pi)^D}
\frac{e^{ik\cdot x}}{k^2}
\delta(k\cdot u)\,
k_{[\mu}k^{[\lambda}
{\varepsilon^{(\eta)}}_{\nu]}{}^{\rho]}
\mathcal A_{\rm grav}(\varepsilon^{(\eta)},k,u).
\tag{III.4}
\]

Only the part of the source supported at \(k^2=0\) affects the exterior field. Strictly real Lorentzian three-point kinematics have no support; the on-shell interpretation therefore uses analytic continuation, while the stationary Green-function representation remains meaningful.

Introduce

\[
\mathscr D_\xi=\frac1{\xi}\frac{d}{d\xi},
\qquad
\mathscr D_\xi^n
\left(\frac{J_{\pm\rho}(\xi)}{\xi^\rho}\right)
=(\mp1)^n
\frac{J_{\pm(\rho+n)}(\xi)}
{\xi^{\rho+n}}.
\tag{III.10}
\]

The scalar mass seed is

\[
\mathcal A_{\rm scalar}^{M}
=(2\pi)^{(D+1)/2}
\frac{J_{(D-5)/2}(\xi)}
{\xi^{(D-5)/2}} .
\]

The electric spin-one amplitude follows by

\[
\mathcal A_{\rm gauge}^{M}
=
\left[
-\epsilon\cdot u
-i\,\epsilon\cdot S\cdot k\,\mathscr D_\xi
\right]
\mathcal A_{\rm scalar}^{M},
\tag{III.14}
\]

and the gravity amplitude is

\[
\begin{aligned}
\mathcal A_{\rm grav}^{M}
=\Big[
&\varepsilon_{\mu\nu}u^\mu u^\nu(1-\mathscr D_\xi)
+2i\varepsilon_{\mu\nu}u^\mu(Sk)^\nu\mathscr D_\xi\\
&-\varepsilon_{\mu\nu}(Sk)^\mu(Sk)^\nu
\mathscr D_\xi^2
\Big]\mathcal A_{\rm scalar}^{M}.
\end{aligned}
\tag{III.16}
\]

The normalization matches the ADM-normalized Myers--Perry stress tensor after the Bessel equation is used.

The equal-NUT seed is obtained by order reflection,

\[
\mathcal A_{\rm scalar}^{N}
=
\eta_D(2\pi)^{(D+1)/2}
\frac{J_{-(D-5)/2}(\xi)}
{\xi^{(D-5)/2}},
\tag{III.18}
\]

with

\[
\eta_D=
\begin{cases}
i(-1)^{D/2},&D\ {\rm even},\\
(-1)^{(D-3)/2},&D\ {\rm odd}.
\end{cases}
\]

Applying the **same** spin-one and spin-two operators to this seed is a main result. In odd dimension it simply yields \(\mathcal A^N=-\mathcal A^M\). In even dimension it realizes Eq. (II.25) at the amplitude level.

# Spin raising and the status of the all-spin formula

The de Wit--Freedman curvature is

\[
\mathcal R^{(s)}_{\mu_1\nu_1|\cdots|\mu_s\nu_s}
=2^s
\partial_{[\mu_1}\cdots\partial_{[\mu_s}
\psi_{\nu_1]\cdots\nu_s]} .
\tag{III.27}
\]

The paper defines

\[
\mathcal S_\mu
=-u_\mu-i(S\cdot k)_\mu\widehat{\mathscr D}_\xi,
\tag{III.34}
\]

where \(\widehat{\mathscr D}_\xi f(\xi)=\mathscr D_\xi f(\xi)\), but its nontrivial action on the kinematic factors is fixed by

\[
[\widehat{\mathscr D}_\xi,u_\mu]=0,
\qquad
\left[
(S\cdot k)_{(\mu}\widehat{\mathscr D}_\xi,
(S\cdot k)_{\nu)}
\right]=u_\mu u_\nu .
\tag{III.37}
\]

Then

\[
\mathcal A_{\text{spin-}s}^{X}
=
\varepsilon^{\mu_1\cdots\mu_s}
\mathcal S_{\mu_1}\cdots\mathcal S_{\mu_s}
\mathcal A_{\text{spin-}0}^{X},
\qquad X=M,N .
\tag{III.36}
\]

The explicit closed form is

\[
\begin{aligned}
\mathcal A_{\text{spin-}s}^{X}
=
\sum_{r=0}^{s}
\sum_{p=0}^{\lfloor r/2\rfloor}
&\frac{s!}{(s-r)!(r-2p)!\,2^p p!}
(-1)^{s-r}(-i)^r\\
&\times
\varepsilon\,u^{s-r+2p}(Sk)^{r-2p}
\mathscr D_\xi^{\,r-p}
\mathcal A_{\text{spin-}0}^{X}.
\end{aligned}
\tag{III.38}
\]

The source calls this a **guess**. It reproduces spin two, gives explicit spin-three and spin-four expressions, and agrees with the \(D=4\) helicity pattern through the finite spins tested. No general operator representation or all-\(s\) proof is supplied.

In \(D=4\),

\[
\mathcal A_{\text{spin-}s}^{M}(\varepsilon^\pm)
=(-1)^s2^{s-1}8\pi^2
(\epsilon^\pm\cdot u)^s
e^{\mp a\cdot k},
\]

\[
\mathcal A_{\text{spin-}s}^{N}(\varepsilon^\pm)
=\pm
\mathcal A_{\text{spin-}s}^{M}(\varepsilon^\pm).
\tag{III.43}
\]

This makes the \(M\pm N\) helicity selection manifest.

# Curvature reconstruction and the finite-part boundary

The position-space Bessel towers are

\[
\Theta_M^{(s)}
=(-\mathscr D_\chi)^s\Phi_M
=
2^\sigma\Gamma(\sigma+1)
\frac{J_{\sigma+s}(\chi)}
{\chi^{\sigma+s}}
\frac1{R^{D-3}},
\]

\[
\Theta_N^{(s)}
=(-\mathscr D_\chi)^s\Phi_N
=
(-1)^s\eta_D2^\sigma\Gamma(\sigma+1)
\frac{J_{-(\sigma+s)}(\chi)}
{\chi^{\sigma+s}}
\frac1{R^{D-3}} .
\tag{IV.1}
\]

Their spatial curvature is organized by disjoint pairings:

\[
\begin{aligned}
\mathcal R^{\text{spin-}s,X}_{I_1J_1|\cdots|I_sJ_s}
=2^s\Bigg[
\sum_{q=0}^{\lfloor s/2\rfloor}
\sum_{\mathcal P_q}
&\left(
\prod_{\{a,b\}\in\mathcal P_q}\delta_{J_aJ_b}
\right)\\
\times&
\left(
\prod_{c\notin U(\mathcal P_q)}
(S\cdot\partial)_{J_c}
\right)
\partial_{I_1}\cdots\partial_{I_s}
\Theta_X^{(s-q)}
\Bigg]_{\rm pairwise\ antisym.}.
\end{aligned}
\tag{IV.10}
\]

The source compares this expression to the direct multi-Kerr-Schild curvature numerically through spin four and \(D\leq8\), in both sectors. That finite comparison is evidence for, not a proof of, the all-spin reconstruction.

Appendix C resolves an important apparent divergence. In even \(D=2m+2\),

\[
\Theta_N^{(s)}\sim
\xi^{-(2m-3+2s)}
\]

near \(\xi=0\). For any individual curvature term, the \(k_z\) integral, transverse derivatives, and \(S\cdot k\) factors reduce the net integrand to \(\xi^{-(2m-2)}\). With the transverse measure,

\[
d^{2m}\xi\sim \xi^{2m-1}d\xi,
\qquad
\int_0 d\xi\,\xi
\]

is convergent. The conclusion requires:

- every \(a_i\neq0\);
- \(z\neq0\);
- passing to the gauge-invariant curvature.

The potentials \(\Theta_N^{(s)}\) and generic field representatives still require finite-part prescriptions. A well-defined curvature does not select a unique potential or boundary condition.

# Why four-dimensional self-duality does not extend dynamically

For two stationary sources, the leading exchange numerator is

\[
\bar{\mathcal A}_{2\to2}
=
M_1M_2 J_1^M\!\cdot J_2^M
+M_1N_2 J_1^M\!\cdot J_2^N
+N_1M_2 J_1^N\!\cdot J_2^M
+N_1N_2 J_1^N\!\cdot J_2^N .
\tag{V.4}
\]

In \(D=4\), helicity and Schouten identities imply

\[
J_1^M\!\cdot J_2^M
=-J_1^N\!\cdot J_2^N,
\qquad
J_1^M\!\cdot J_2^N
=-J_1^N\!\cdot J_2^M .
\tag{V.5}
\]

Hence self-dual or anti-self-dual choices \(M_a=\pm N_a\) make the leading exchange vanish. For even \(D>4\), four independent Bessel structures survive. The source reports a generic \(D=6\) numerical check in both gauge theory and gravity and finds no nontrivial charge relation that kills the amplitude.

The safe conclusion is therefore:

- \(M\leftrightarrow N\) is a useful duality of this stationary solution/amplitude family;
- \(M=\pm N\) still defines distinguished linear combinations;
- beyond \(D=4\), the available evidence does not make this a dynamical symmetry or an integrable interacting subsector.

# The (A)dS extension and its stopping point

Appendix A replaces the flat base by AdS and deforms

\[
\chi^2\longrightarrow
-\sum_i\frac{a_i^2}{\Xi_i}
\left(\partial_{x_i}^2+\partial_{y_i}^2\right),
\qquad
\Xi_i=1-\frac{a_i^2}{L^2}.
\]

The scalar obeys

\[
\left(\Box_{\rm AdS}
+\frac{2(D-3)}{L^2}\right)\phi=0,
\]

and the single copy continues to solve Maxwell on the AdS base and Kerr--NUT--AdS background. Root factorization, the principal tensor, and the Chen--Lü coordinate map are supplied. The momentum-space amplitude, spin-raising, and \(2\to2\) analysis at \(\Lambda\neq0\) are expressly left open.

# Translation into the vault’s CPS and charge language

| Paper object | Closest local object | What is actually established |
|---|---|---|
| \(N_\alpha^{\rm ADM}\) | asymptotic charge normalization | A normalization fixed to reproduce ADM mass for \(\alpha=0\); no surface-charge derivation for the NUT sectors |
| \(M,N,Q_{\rm el},Q_{\rm mag}\) | solution labels / source coefficients | Coefficients of stationary Kerr-Schild monomials and three-point amplitudes |
| imaginary pure-gauge representatives | degenerate gauge directions | Vanishing \(F\) or linearized Riemann is shown or checked; no presymplectic degeneracy analysis |
| order reflection \(J_\sigma\leftrightarrow J_{-\sigma}\) | solution-space duality | A map between distinguished stationary sectors, not a canonical transformation on phase space |
| finite-part \(N\)-potentials | boundary-condition / Green-function ambiguity | Curvatures are well defined under stated conditions, while potentials need an extra distributional prescription |
| three-point amplitude | linearized exterior field data | Exact for the multi-Kerr-Schild solution, but not a boundary charge or flux |
| \(2\to2\) residue | leading classical interaction | Tests dynamical consequences of the source map; it does not compute a charge bracket |

There is no Lee--Wald potential \(\theta\), presymplectic current \(\omega\), codimension-two form \(k_\xi\), integrability condition, flux law, edge mode, or charge algebra in the source. A local CPS extension would have to choose:

1. an asymptotic region and falloffs for the multi-Kerr-Schild sectors;
2. a real Lorentzian representative and treatment of Misner-string or patch data;
3. a finite-part prescription compatible with the boundary conditions;
4. a definition of the NUT/magnetic charges as Hamiltonians;
5. a test of whether the Bessel-order map preserves the presymplectic form.

Until those steps are done, `T1-charge` here means the paper directly tracks mass/NUT/electric/magnetic parameters and their ADM normalization, not that it supplies a CPS charge construction.

# Concrete project extensions

1. **CPS test of the duality map.** Linearize the Einstein and Maxwell presymplectic currents on the real Kerr--NUT representatives and ask whether the \(J_\sigma\leftrightarrow J_{-\sigma}\) map is symplectic, anti-symplectic, or neither.
2. **Boundary prescription for inverse \(\chi\).** Compare finite-part prescriptions for \(\Theta_N^{(s)}\) with the allowed source/response split in AdS. Curvature convergence alone does not fix the phase-space representative.
3. **NUT charge versus parameter.** Derive the codimension-two Hamiltonian associated with \(N_\alpha\) in a patchwise formalism and compare its normalization with Eq. (II.16).
4. **AdS amplitude analogue.** The appendix already supplies the deformed roots and Bessel operator; the missing ingredient is a harmonic/representation-theoretic replacement for the flat on-shell Fourier map.
5. **All-spin status.** Seek an operator realization of \(\widehat{\mathscr D}_\xi\) that proves the commutator and the closed combinatorial formula instead of defining it recursively.

# Verification log

## Checked

The following items were independently reproduced during this run.

- **Mathematica:** root/residue formula (II.8), nullness and mutual orthogonality of the Kerr-Schild one-forms, and \(\ell_{(\alpha)}\cdot dr_{(\beta)}=\delta_{\alpha\beta}\), numerically in \(D=4,\ldots,8\), with residuals at \(10^{-15}\) scale.
- **Mathematica:** the \(D=4\) mass root is affinely geodesic; \(\Phi_{(0)}\) is flat harmonic away from its source; \(\ell^\mu F_{\mu\nu}\propto\ell_\nu\); all Maxwell divergences vanish.
- **Mathematica:** all ten independent components of the \(D=4\) linearized Ricci tensor vanish for \(h_{\mu\nu}=\Phi\ell_\mu\ell_\nu\).
- **Mathematica:** the flat Fronsdal equations vanish for all 20 independent spin-three and all 35 independent spin-four components in the \(D=4\) test.
- **Mathematica:** the imaginary Maxwell representative is closed and all 36 pair-index components of the imaginary linearized Riemann representative vanish in the \(D=4\) even-\(N\) test.
- **Mathematica:** the odd-dimensional redundancy is pure gauge in independent finite-difference tests: Maxwell curl and linearized Riemann residuals were \(2.4\times10^{-24}\) and \(7.6\times10^{-24}\) in \(D=5\), and below \(2.1\times10^{-19}\) in \(D=7\).
- **Mathematica:** the Bessel order-shift identity, Bessel ODE, odd-\(D\) integer-order collapse, and the half-integer Hankel reductions for \(D=4,6,8\).
- **Mathematica:** equal-root sum/product and involution identities; the direct \(\Phi_{(1)}\) formula in \(D=4,6,8,10,12\); the \(D=6\) lost-root residue \(-i/(a\rho^2)\); and the \(\partial_z^{D-5}\) zero-mode property through \(D=12\).
- **Mathematica:** three high-precision \(D=6\) samples of the complex potential \(X_0=\Phi_{(0)}+\Phi_{(1)}\), and the derivative relations for the displayed \(G_1,G_2,G_3\).
- **Mathematica:** the spin-raising coefficient expansion at \(s=2,3,4\), the \(D=4\) helicity exponentiation and \(M=\pm N\) selection through \(s=12\), and the Myers--Perry stress-tensor normalization.
- **Sage:** the number \(s!/[(s-r)!(r-2p)!2^p p!]\) correctly counts the relevant choices of unpaired labels and disjoint pairs for \(s=0,\ldots,10\).
- **Mathematica:** Appendix C’s net small-\(\xi\) power is independent of \(s,q,s_z\) and yields \(\int d\xi\,\xi\); the \(k_z\)-derivative identity was checked for derivative orders \(0,\ldots,8\).
- **xAct:** in a \(D=6\) test, the transverse projector annihilates both reference null directions, has trace \(D-2=4\), and the spin-two projector is traceless.
- **Mathematica:** one generic complex on-shell \(D=6\) gauge-theory sample has rank four for the four functions in Eq. (V.4), with current-conservation residual \(4.5\times10^{-16}\); this independently supports the absence of a universal nonzero charge relation in that sample.
- **Mathematica:** the \(\Lambda\)-deformed root-coordinate and \(R^2\) identities in Appendix A were reproduced numerically for \(D=4,\ldots,8\), with residuals below \(5\times10^{-15}\).
- **Rendered PDF inspection:** the complete contents pages, the spin-three/spin-four and all-spin proposal, the \(2\to2\) rank claim, and Appendix C’s convergence assumptions were checked against the visible source layout and equation labels.

## Blocked

- The source does not provide the code, sampled parameter grids, finite-part prescription, or zero-mode choices used for its generic even-\(D\) numerical Fourier/curvature comparisons. The reported spin-\(\leq4\), \(D\leq8\) grid could therefore not be reproduced exactly.
- A general analytic proof of the all-spin operator formula is unavailable: the paper explicitly introduces the closed form as a guess and supplies no geometric realization of \(\widehat{\mathscr D}_\xi\).
- The paper’s higher-dimensional four-function independence is reported from a \(D=6\) numerical study. The independent check above is also a single generic \(D=6\) sample, not an all-kinematics or all-\(D\) proof.
- Generic \(N\)-sector potentials cannot be reconstructed uniquely without a distributional finite-part/contour prescription. This does not block the curvature results away from \(z=0\), but it blocks a unique field representative.
- Appendix C does not cover \(z=0\) or vanishing rotation parameters. No downstream claim in this note relies on convergence there.

## Failed

None of the independently attempted identities failed under the paper’s stated conventions. The limitations above are missing proofs, prescriptions, or numerical inputs, rather than detected contradictions.
