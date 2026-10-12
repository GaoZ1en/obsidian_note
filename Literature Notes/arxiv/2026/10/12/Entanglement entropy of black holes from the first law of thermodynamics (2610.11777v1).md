---
paper id: 2610.11777v1
title: Entanglement entropy of black holes from the first law of thermodynamics
authors:
- Diakonov, D. V.
- Zverev, Gleb S.
publication date: 2026/10/08
abstract: We compute the entanglement entropy of quantum matter in spacetimes with
  a Killing horizon entirely on-shell, by integrating the first law of thermodynamics
  along a one-parameter family of equilibrium backgrounds labelled by the Hawking
  temperature. This yields a closed expression in terms of the renormalized stress-energy
  tensor and the Killing vector, finite by construction, with no replicas and no conical
  singularities. Its covariant form agrees with the matter terms of the Bardeen--Carter--Hawking
  mass variation formula. We show in details that for static patch of de Sitter space
  and for the non-rotating BTZ black hole it reproduces the conical entropy exactly,
  contact term $Q$ included.
comments: 18 pages in retrieved PDF
url: https://arxiv.org/abs/2610.11777v1
summary: Reconstructs on-shell matter entropy variations and checks BTZ termwise;
  isolates inconsistent de Sitter effective-action coefficients and a contact-term
  normalization error.
tags: []
---

# Result and scope

The useful result is a matter-entropy **variation** obtained by integrating a local first law along a specified equilibrium family $g_{\mu\nu}(T_H)$. For the printed nonrotating BTZ stress tensor, its derivative agrees term by term with the conical answer, including the scalar contact term. This was independently checked below. The de Sitter entropy expression (45) also passes the local derivative check, but the printed effective action $W_0$ in (39) is inconsistent with (45) and $S=-W_0-W_1$. The contact normalization in (13) is inconsistent with the paper's own cone action.

Reason codes: `T1-Wald-CPS`, `T1-charge`, `T1-boundary`, `T2-dS-BH-holography`, `T2-spectral`. Immediate use: keep matter work, moving-boundary identification, Wald contact terms and the gravitational area shift distinct when comparing CPS and replica entropy. [Official v1](https://arxiv.org/abs/2610.11777v1).

# Source map and dependencies

| Section | Main calculation | Boundary retained here |
|---|---|---|
| 1 Introduction | Distinguishes thermodynamic, statistical and conical entropies; proposes covariant formula | Entropy variation does not fix the additive constant |
| 2 Off-shell approach; 2.1 TFD and replicas | Normalized density matrix, cone curvature, heat kernel and counterterms | Hilbert-space factorization assumed; no general gauge-algebra treatment |
| 3 On-shell approaches | Local first law, Tolman temperature, radial work, fixed-horizon identification | Static diagonal stress tensor and specified equilibrium family |
| 4.1 de Sitter off-shell | $W_0,W_1$ and explicit special-function entropy | Printed formulas internally inconsistent |
| 4.2 de Sitter on-shell | Bunch–Davies stress tensor and temperature integral | Entropy derivative checked; absolute normalization not fixed |
| 4.3 Thermodynamic versus statistical entropy | $W_1=-V_E\rho$, backreaction area shift | One loop; fixed subtraction prescription |
| 5.1 BTZ off-shell | Quotient heat kernel, image sum, scalar contact term, renormalization | Printed boundary-condition data; $J=0$, $\xi=1/8$ |
| 5.2 BTZ on-shell | Image stress tensor and local entropy integral | Derivative equality checked analytically per image |
| 6 Discussion | General geometries, interactions and higher loops | Open extensions; not established by two examples |

There are no technical appendices. The full main TeX was inspected. Read §3 → §5.2 → §5.1 for the most reusable chain; read §4 with the discrepancy ledger below.

# Notation, state and entropy definitions

Use Lorentzian signature $(-,+,\ldots,+)$ and static metric

$$
ds^2=-f(r)dt^2+h(r)dr^2+r^2\gamma_{ij}dx^idx^j.
$$

Let $\upsilon=\sqrt h\,r^{d-2}\sqrt\gamma$ be the proper spatial volume density, $\sqrt{-g}=\sqrt f\,\upsilon$, $\rho=-\langle T^t{}_t\rangle$, $p_r=\langle T^r{}_r\rangle$, and $T_{\rm loc}\sqrt f=T_H$. The Killing vector is denoted $\xi^\mu$ in the source; its nonminimal scalar coupling is also $\xi$. Below, a bare scalar $\xi$ always means the coupling, and a vector carries its index.

The state is an equilibrium thermal state at the geometry's own Hawking temperature. The source assumes a one-to-one local relation between the varying background parameter and $T_H$, diagonal stress, and radial volume deformation at fixed areal coordinate. No chemical potentials or independent variations of multiple background parameters enter this derivation.

For a normalized density matrix $\rho_A=e^{-\beta_H\hat H}/Z$, statistical entropy is $S^{SM}=-\operatorname{Tr}\rho_A\log\rho_A$. Write $W=-\log Z$ and cone parameter $\alpha=\beta/\beta_H$. Then

$$
S^{con}=(\alpha\partial_\alpha-1)W\big|_{\alpha=1}.
$$

For a scalar with Euclidean term $\frac12\xi R\phi^2$,

$$
R_\alpha=R+4\pi(1-\alpha)\delta_\Sigma,
\quad W_{\rm contact}=2\pi(1-\alpha)\xi\int_\Sigma\sqrt\sigma\,\langle\phi^2\rangle.
$$

Consequently,

$$
S^{con}_{matt}=S^{SM}_{matt}-Q,
\quad Q=2\pi\xi\int_\Sigma\sqrt\sigma\,\langle\phi^2\rangle,
\quad \langle\hat E\rangle-\langle\hat H\rangle=-T_HQ.
$$

**Checked correction:** Eq. (13), PDF p. 4, instead prints $Q=\beta_H\xi\int_\Sigma\langle\phi^2\rangle$. With the same surface measure and coupling as its Eq. (25) cone action, this is incorrect; the replica derivative gives $2\pi$, not a background-dependent $\beta_H$. The statement coincides only when numerically $\beta_H=2\pi$. A renormalized conical matter contribution containing this contact term must not automatically be called the ordinary von Neumann entropy of a fixed exterior algebra.

# Replica counterterms and one-loop bookkeeping

The source separates

$$
W_{tot}=W_{gr}^{bare}+W_{matt}^{div}+W_{matt}^{fin}
=W_{gr}^{ren}+W_{matt}^{fin}.
$$

The gravitational action includes $-(R-2\Lambda)/(16\pi G)+c_1R^2+c_2R_{\mu\nu}^2+c_3R_{\mu\nu\rho\sigma}^2$. The cone derivative gives

$$
S_{gr}^{con}=\frac{A}{4G_{ren}}
-8\pi c_1^{ren}\int_\Sigma R
-4\pi c_2^{ren}\int_\Sigma R_{\mu\nu}n_i^\mu n_i^\nu
-8\pi c_3^{ren}\int_\Sigma R_{\mu\nu\rho\sigma}n_i^\mu n_i^\rho n_j^\nu n_j^\sigma.
$$

The paper chooses $c_i^{ren}=0$ for its examples. This is a renormalization choice. Finite renormalized stress does not by itself remove all finite-counterterm, integration-constant, IR or global-integrability questions.

At one loop, changing the background temperature by its quantum correction changes the tree gravitational entropy at the same order, while inserting that correction into an already one-loop matter term is higher order. Thus the claimed generalized entropy is $\bar A/(4G)+S^{SM}_{matt}-Q$, with the area shift treated separately. The source does not compute full BTZ backreaction.

# Local first law and its covariant form

Entropy and energy densities $s,u$ are per coordinate volume. The assumed radial-work first law gives

$$
T_{loc}\delta s=\delta u+p_r\delta\upsilon,
\quad u=\rho\upsilon,
$$

hence

$$
T_H\delta s=\sqrt{-g}\left[\delta\rho+(\rho+p_r)\delta\log\upsilon\right].
$$

Along the chosen temperature path,

$$
S(T_H)-S(T_0)=\int_{T_0}^{T_H}\frac{dT}{T}
\int d^{d-1}x\sqrt{-g}\left[\partial_T\rho+(\rho+p_r)\partial_T\log\upsilon\right].
$$

Equivalently this is minus the integral of $\partial_TT^t{}_t+(T^t{}_t-T^r{}_r)\partial_T\log\upsilon$. The source's covariant matter expression is

$$
\delta S=\frac1{T_H}\int_\Sigma
\left[\frac12\langle T^{\mu\nu}\rangle\delta g_{\mu\nu}\,\xi^\rho dV_\rho
-\delta(\langle T^\mu{}_{\nu}\rangle\xi^\nu dV_\mu)\right].
$$

Use the source's orientation for $dV_\mu$. At fixed areal coordinate and fixed Killing normalization, direct differentiation checks the equality of the local integrands:

$$
\frac{\sqrt{fh}}2\left[-\rho\frac{\partial_Tf}{f}+p_r\frac{\partial_Th}{h}\right]
+\partial_T(\sqrt{fh}\rho)
=\sqrt{fh}\left[\partial_T\rho+\frac{\rho+p_r}{2}\frac{\partial_Th}{h}\right].
$$

To compare solutions with different horizon radii, the source identifies points using $\bar r=r/r_h$ so the horizon is fixed. Both the fields and volume form vary; one must not move a derivative through an integral with a moving endpoint without its endpoint term. Its conservation-law calculation yields the difference

$$
\int\frac{dT_H}{T_H}\partial_{T_H}\log r_h\,
\Omega_{d-2}\left[\sqrt{fh}\,r^{d-1}(\rho+p_r)\right]_{r_h}^{\infty}.
$$

This must vanish before the two integrated prescriptions are equated. For de Sitter the actual interval ends at the cosmological horizon, not spatial infinity; the relevant endpoint expression vanishes because $\rho+p_r=0$ identically. For BTZ its image stress satisfies both endpoint conditions.

The printed sentence below (36) omits the equality-to-zero symbol. Moreover, freely falling regularity generally requires the appropriate rate $(\rho+p_r)=O(f)$ near a nondegenerate horizon, not merely a vanishing pointwise value: a static-frame boost contributes a term proportional to $(\rho+p_r)/f$. The actual BTZ expression below has the needed linear factor.

# de Sitter: stress tensor, entropy derivative and backreaction

Set $H=2\pi T_H$, $r_h=H^{-1}$ and take the Bunch–Davies state in $d=4$. Define

$$
\nu^2=\frac{m^2}{H^2}+12\xi-\frac94,
\quad q=\frac{m^2}{H^2}=\nu^2+\frac94-12\xi,
\quad u=\frac12+i\nu.
$$

The printed stress tensor is $T_{\mu\nu}=-\rho g_{\mu\nu}$ with

$$
\rho=\frac{H^4}{64\pi^2}\mathcal R,
$$

$$
\mathcal R=(\nu^2+\tfrac14)q
\left[\psi(\tfrac32+i\nu)+\psi(\tfrac32-i\nu)-\log q\right]
+\nu^2(\tfrac43-12\xi)+\xi(72\xi-19)+\tfrac{16}{15}.
$$

Since $\rho+p_r=0$, the on-shell expression reduces to

$$
\frac{dS_{matt}}{dH}=\frac{8\pi^2}{3H^4}\frac{d\rho}{dH},
\qquad H\frac{d\nu}{dH}=-\frac q\nu
$$

at fixed $m,\xi$. The source chooses a lower endpoint $T=0$; convergence and subtraction at that endpoint, especially massless limits, must be checked separately. The derivative alone fixes only entropy differences.

For the Euclidean sphere $V_E=8\pi^2/(3H^4)$, Eq. (40) is

$$
W_1=\frac{(4\nu^2+1)(4\nu^2-48\xi+9)}{384}
[\log q-2\operatorname{Re}\psi(u)]
+\frac{20\nu^2(36\xi-7)+60(31-72\xi)\xi-199}{1440}.
$$

The recurrence $\psi(u+1)=\psi(u)+1/u$ gives exactly $W_1=-\mathcal R/24=-V_E\rho$ (Checked). The source's Eq. (45) can be written compactly as

$$
\begin{aligned}
S_{45}={}&\frac{\zeta'(-1)}6-\frac1{72}+\frac{\zeta'(-3)}{90}
-\frac{\nu^4}{48}-\frac{7\nu^2}{288}+6\xi^2-\frac{13\xi}6
-\frac{\zeta(3)}{8\pi^2}+\frac{2417}{11520}\\
&+\frac{60\nu^2(6\xi-1)+90\xi-19}{720}\log q
+\operatorname{Re}\mathcal P,
\end{aligned}
$$

$$
\mathcal P=2\psi^{(-4)}(u)-2i\nu\psi^{(-3)}(u)
-(\nu^2+\tfrac1{12})\psi^{(-2)}(u)
+\frac{i(4\nu^3+\nu)}{12}\log\Gamma(u)
+\frac{(4\nu^2+1)(4\nu^2-48\xi+9)}{192}\psi(u).
$$

Using conventional polygamma primitives, its derivative satisfies the displayed on-shell equation exactly for real $\nu>0$, $q>0$, real $\xi$. The simplification uses the digamma and trigamma shift identities. Analytic continuation to imaginary $\nu$ and massless endpoint limits are not included in this check.

However, the paper also states $\log Z=-W_0-(1-\alpha)W_1$, so the replica derivative requires $S=-W_0-W_1$. Direct algebra with printed Eq. (39) gives

$$
\boxed{S_{45}+W_{0,39}+W_{1,40}
=\operatorname{Re}\left[3\psi^{(-4)}(u)-3i\nu\psi^{(-3)}(u)
-(\tfrac32\nu^2+\tfrac18)\psi^{(-2)}(u)\right]
-\frac{29}{90}\zeta'(-3).}
$$

This is not zero or a temperature-independent constant. At $\nu=1,2,3$ it is approximately $-0.4647147456,-3.3444012802,-4.4657944582$. PDF pp. 10–11 confirm all of these printed coefficients; this is not an extraction error. The $W_0$ expression also fails its stated stress-trace derivative relation. A locally consistent primitive can be defined as $W_0^*=-S_{45}-W_1$, but that does not independently establish the intended determinant subtraction constant. Accordingly, do not cite the printed three formulas as a verified exact match.

For general $d$, restore $G$ in the linear backreaction:

$$
\delta H=\frac{8\pi G\rho}{(d-1)(d-2)H_0},
\quad S_{BH}=\frac{\Omega_{d-2}}{4G}H^{-(d-2)},
\quad V_E=\frac{2\pi\Omega_{d-2}}{d-1}H^{-d}.
$$

Then $\delta S_{BH}=-V_E\rho=W_1$ (Checked). If the matter effective action and entropy are consistently normalized, $\bar S_{BH}+S_{matt}^{con}=S_{BH}-W_0=\log Z_{tot}$ follows to this order. The structural cancellation survives; the inconsistent printed $W_0$ prevents treating its numerical realization as established.

# BTZ: cone image sum and contact term

Set AdS radius $l=L=1$, $J=0$, and

$$
ds^2=-(r^2-a^2)dt^2+\frac{dr^2}{r^2-a^2}+r^2d\phi^2,
\quad a=r_+=\sqrt M,\quad T_H=\frac a{2\pi},\quad A_+=2\pi a.
$$

The final comparison uses the conformal scalar coupling $\xi=1/8$, $\mu=1-6\xi=1/4$. For $x=A_+n>0$, the source's finite effective-action image term is

$$
w_n(\alpha)=-\frac1{4n}\frac{\sinh(x/\alpha)}{\sinh x}
\frac{e^{-\sqrt\mu x}}{\sinh^2(x/2\alpha)}
+(1-\alpha)\frac{\xi A_+}{\sqrt2}
\frac{\sqrt{\cosh x+1}-\sqrt{\cosh x-1}}{\sinh x}.
$$

It comes from the quotient/cone heat-kernel trace

$$
\operatorname{Tr}K=\frac{e^{-\mu s}}{(4\pi s)^{3/2}}
\left[V_\alpha+2\pi\alpha A_+c_2(\alpha)s
+2\pi A_+s\sum_{n\ge1}\frac{\tanh(x/2)}{\tanh(x/2\alpha)}
\frac{e^{-x^2/(4s)}}{\sinh^2(x/2)}\right],
\quad c_2=\frac16(\alpha^{-2}-1).
$$

Its derivation and choice of boundary condition are source-derived; the paper calls the heat kernel Neumann and imports a particular image stress/field-square prescription. The independent agreement below is for those printed formulas, not a separate derivation of every boundary-condition label.

The local divergent terms renormalize

$$
\frac1{16\pi G_3^{ren}}=\frac1{16\pi G_3}
+\frac{1/6-\xi}{(4\pi)^{3/2}\epsilon},
\qquad
\frac{\Lambda^{ren}}{8\pi G_3^{ren}}=
\frac\Lambda{8\pi G_3}-\frac1{3(4\pi)^{3/2}\epsilon^3}.
$$

The cone derivative of each finite term gives $s_n-q_n$, where

$$
s_n=\frac{e^{-\sqrt\mu x}}{2n(\cosh x-1)}
\left[1+x\coth x-\frac{x\sinh x}{\cosh x-1}\right],
\quad q_n=\xi A_+\frac{e^{-x/2}}{\sinh x}.
$$

This identity is symbolically Checked for positive $A_+,n,\mu$. In particular, $\sqrt{\cosh x+1}-\sqrt{\cosh x-1}=\sqrt2e^{-x/2}$. The total entropy in this approximation is $A_+/(4G_3^{ren})+\sum_n(s_n-q_n)$, before BTZ backreaction.

# BTZ: independently integrating the stress tensor

Let $k=f_n=\sinh(\pi an)/a$. Define the two functions appearing in the printed stress tensor:

$$
U(r)=\frac1{16\pi r^3}\left[
\frac{a^2}{2k}\left(1-(1+(kr)^{-2})^{-3/2}\right)+\frac1{k^3}\right],
$$

$$
V(r)=\frac1{16\pi r^3}\frac3{2k^3}
\frac{1-a^2/r^2}{(1+(kr)^{-2})^{5/2}}.
$$

For each image, $T^\mu{}_\nu=\operatorname{diag}(U-V,U,-2U+V)$. xAct checks tracelessness and $\nabla_\mu T^\mu{}_\nu=0$ in the BTZ metric. Also $\rho+p_r=V$, so the horizon and asymptotic boundary terms vanish.

The temperature-to-radius conversion must retain **both** factors of $2\pi$:

$$
\frac{dS_n}{da}=\frac{4\pi^2}{a}
\int_a^\infty dr\,r\left[\frac{a}{r^2-a^2}V(r)-\partial_a(U-V)\right],
$$

where $\partial_a$ holds areal $r$ fixed and includes $k(a)$. An explicit integration at fixed positive $a,k$ gives

$$
J(a,k)=\int_a^\infty dr\,r(U-V)
=\frac{(2+a^2k^2)(-ak+\sqrt{1+a^2k^2})}
{32\pi a k^3\sqrt{1+a^2k^2}},
$$

$$
B(a,k)=\int_a^\infty dr\,\frac{ar}{r^2-a^2}V
=\frac{a}{32\pi(1+a^2k^2)^{3/2}}.
$$

Leibniz differentiation gives $\int_a^\infty r\partial_aT^t{}_t\,dr=dJ/da+aT^t{}_t(a)$, hence

$$
\frac{dS_n}{da}=\frac{4\pi^2}{a}
\left[B-\frac{dJ(a,k(a))}{da}-aU(a)\right]
=\frac d{da}(s_n-q_n).
$$

Mathematica simplifies this equality to zero for arbitrary positive $a,n$. The earlier numerical checks at $a=1/3,1,2$, $n=1,2$ agree after correcting a temporary missing $2\pi$ conversion factor in the check setup. Each image vanishes at large $a$, giving a natural matching integration constant in that prescription. The singular small-$a$ limit and interchange of an infinite sum with limiting operations are not established by a termwise derivative check; the image series converges exponentially on compact positive-$a$ intervals.

# CPS translation and limitations

The covariant matter expression is a first-law one-form on a chosen family of solutions. In a CPS calculation, specify the identification of hypersurfaces, field dependence of the Killing generator, ensemble, improvements, and boundary counterterms before integrating it. A one-dimensional temperature path does not prove integrability over a multi-parameter solution space.

The conical matter entropy with nonminimal contact term is distinct from ordinary statistical entropy. A volume-integral representation alone does not prove extensivity: the integrand, state and integration domain depend on the whole geometry, and volume integrals may be boundary terms. The paper itself leaves general rotating/charged backgrounds, interactions and higher loops open. Its broad introductory claims of automatically resolving all thermodynamic renormalization problems are not demonstrated by the calculations reproduced here.

# Verification ledger

- **Checked — Mathematica:** replica contact normalization; local-work/covariant-integrand identity; $W_1=-V_E\rho$ using digamma recurrence; exact derivative of de Sitter Eq. (45) against the stress-tensor first law for real $\nu>0$, $q>0$; general-$d$ linear area shift; BTZ replica derivative and both radial integrals; exact BTZ entropy derivative per image.
- **Checked — xAct/xCoba:** BTZ $R=-6$ and the full mixed stress tensor has zero covariant divergence and trace. A preliminary component calculation fixed an index before differentiation and gave a spurious residual; retaining abstract indices through differentiation and only then taking components returns all zeros, corroborated by the radial conservation equation.
- **Failed — source Eq. (13):** $\beta_H$ contact factor conflicts with $2\pi$ obtained from its own cone action. PDF p. 4 and TeX agree on the erroneous printed factor.
- **Failed — source Eqs. (39)/(45):** the explicit nonconstant residual above disproves simultaneous use of the printed $W_0,W_1,S$ under the conventional polygamma definition. PDF pp. 10–11 confirm the coefficients. Eq. (45)'s entropy derivative passes independently; the printed $W_0$ does not.
- **Source-derived:** heat-kernel construction, renormalization prescription, boundary-condition attribution, TFD factorization, the general moving-horizon boundary formula, and the interpretation as matter entropy beyond the checked examples.
- **Blocked:** no remaining retrieval or computation-service blocker. The intended corrected $W_0$ and absolute subtraction constant are not fixed by the inconsistent printed formulas; the full generic-geometry equivalence proof is not supplied.
- **Not independently verified:** massless/imaginary-$\nu$ continuation, absolute zero-temperature entropy normalization, full BTZ backreaction, arbitrary rotation/charge, interacting higher loops and a statistical interpretation of every contact term.

Verified: the explicit local, replica, stress and termwise integration checks above. Assumptions: static equilibrium, stated thermal state, fixed scalar couplings, specified renormalization and boundary prescriptions, one-loop matter approximation. Not verified: the general claims beyond those assumptions and the inconsistent absolute de Sitter effective action.
