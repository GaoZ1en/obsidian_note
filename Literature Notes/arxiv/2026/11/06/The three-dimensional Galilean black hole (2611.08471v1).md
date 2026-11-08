---
paper id: 2611.08471v1
title: "The three-dimensional Galilean black hole"
authors:
  - "Luis Avilés"
  - "Oscar Fuentealba"
  - "Diego Hidalgo"
  - "Pablo Rodríguez"
publication date: 2026-11-05T18:55:51
abstract: "We report a novel solution of three-dimensional Galilean Anti-de Sitter gravity. The theory can be formulated as a topological gauge theory invariant under the doubly extended Newton-Hooke group in three dimensions. The solution possesses four conserved charges: energy, angular momentum, spin and rest mass. Interestingly, the magnitude of the spin turns out to bounded from above by the rest mass. The solution exhibits the thermal properties that define a black hole configuration in terms of its gauge theoretical description. Temperature, angular velocity and other chemical potentials are obtained from suitable regularity conditions associated with the topology of the Euclidean continuation of the solution. At zero temperature, an extreme configuration is shown to emerge provided the bound between the spin and the rest mass saturates."
comments: "7 pages, no figures"
url: https://arxiv.org/abs/2611.08471v1
summary: "A flat Newton-Hooke connection with independently checked charge variations and thermodynamics, conditional on unpublished holonomy and boundary data."
tags: []
---
# Scope and source map

**Correct under the following precise conditions:** the displayed real, non-extremal positive-root branch solves the Newton–Hooke flatness equations, and the printed entropy differentiates to the printed intensive variables. The designation “black hole” is the paper's thermal gauge-connection definition; a relativistic event horizon, an area law and a microscopic state count are not established here.

Immediate use: this is a small Chern–Simons testbed for comparing a surface-charge one-form, independent central charges and a contractible thermal cycle. It is useful for the current three-dimensional gravity and boundary-charge work before attempting a general sewing construction. Reasons: `T1-charge; T1-symmetry; T1-boundary; T2-model; T2-dS-BH-holography`. Technical placement is independent of authorship.

The letter has no numbered technical section hierarchy and no appendices. Its complete argument is:

| Source location | Content and later dependency | Evidence here |
|---|---|---|
| pp. 1–2, introductory discussion and Eq. (1) | Thermal definition; intrinsic spin versus rest mass | Source-derived scope |
| p. 2, Eqs. (2)–(16) | Doubly extended Newton–Hooke algebra, pairing, curvatures, action | Algebra and flatness checks below |
| pp. 2–3, Eqs. (17)–(20) | Newton–Cartan dual frame and degenerate metric | Explicit coframe inverse |
| p. 3, Eqs. (21)–(31) | Four-parameter solution and charges | Flatness and energy/angular-charge variations reproduced |
| pp. 3–4, Eqs. (32)–(41) | Spin bound, extremality, thermal holonomy, entropy and first law | Thermodynamic algebra checked; holonomy construction incomplete in source |
| pp. 4–5, Eqs. (42)–(45) and discussion | Claimed asymptotic algebra; relativistic parent and Cardy questions | Source-derived; boundary analysis referred to unpublished Ref. [61] |
| pp. 5–7, references and embedded technical footnotes | Orientation, negative root, removable radial constants, extremal topology | Retained below; no additional appendix |

The pinned [official v1](https://arxiv.org/abs/2611.08471v1), full seven-page PDF and complete TeX source were read. PDF pp. 3–4 were rendered and visually inspected for Eqs. (21)–(45); extracted text was used for navigation. The local reconstruction below is separate from those source statements.

# Newton–Hooke connection and invariant pairing

Take spatial indices $a,b=1,2$, $\epsilon_{12}=+1$, and raise/lower them with $\delta_{ab}$. Let $\ell>0$, $\Lambda=-\ell^{-2}$, and $k=(4G_G)^{-1}>0$. The nonrelativistic scaling is $G_N=c^{-1}G_G$, followed by $c\to\infty$; this is not a contraction of a black-hole solution supplied by the paper.

The generators are $H,J,P_a,G_a,M,S$; the last two are central. The nonzero brackets are

\[
\begin{aligned}
[J,P_a]&=\epsilon_{ab}P_b,&[J,G_a]&=\epsilon_{ab}G_b,\\
[G_a,P_b]&=-\epsilon_{ab}M,&[P_a,P_b]&=-\ell^{-2}\epsilon_{ab}S,\\
[H,P_a]&=\ell^{-2}\epsilon_{ab}G_b,&[G_a,G_b]&=-\epsilon_{ab}S,\\
[H,G_a]&=\epsilon_{ab}P_b.
\end{aligned}
\]

The symmetric pairing has only

\[
\langle J,M\rangle=\langle H,S\rangle=1,
\qquad \langle G_a,P_b\rangle=-\\delta_{ab}.
\]

**Checked:** Sage over $\mathbb Q(\ell)$, in the ordered basis $(H,J,P_1,P_2,G_1,G_2,M,S)$, gives determinant (1) for this pairing, vanishing Jacobi residuals for all $8^3=512$ triples, and vanishing pairing-invariance residuals for all 512 triples. This checks the finite-dimensional algebra exactly, not the later asymptotic realization.

Write

\[
A=\tau H+e^aP_a+\omega J+\omega^aG_a+mM+sS,
\qquad
I=\frac{k}{4\pi}\int\left\langle A\wedge dA+\frac23 A\wedge A\wedge A\right\rangle.
\]

Nondegeneracy of the pairing makes the field equations $F=dA+A\wedge A=0$. In the paper's signs,

\[
\begin{aligned}
R(H)&=d\tau,&R(J)&=d\omega,\\
R^a(P)&=de^a-\epsilon^{ab}\omega\wedge e_b+\epsilon^{ab}\omega_b\wedge\tau,\\
R^a(G)&=d\omega^a-\epsilon^{ab}\omega\wedge\omega_b
-\ell^{-2}\epsilon^{ab}\tau\wedge e_b,\\
R(M)&=dm-\epsilon_{ab}\omega^a\wedge e^b,\\
R(S)&=ds-\frac12\epsilon_{ab}\omega^a\wedge\omega^b
-\frac1{2\ell^2}\epsilon_{ab}e^a\wedge e^b.
\end{aligned}
\]

Up to boundary terms, Eq. (16) rewrites the action as

\[
I=\frac{k}{2\pi}\int\left[
 m\wedge R(J)+\tau\wedge R(S)-e^a\wedge R_a(G)
 +\ell^{-2}\epsilon_{ab}\tau\wedge e^a\wedge e^b\right].
\]

The source does not specify the full boundary action or a polarization for arbitrary boundary variations. Therefore this bulk rewriting alone does not define the regional variational problem.

# The rotating flat connection in a regular local frame

The solution uses constants $g,a,A,B$, with the paper's scalar constant $A$ distinguished from the connection $A$. Choose the positive branch

\[
\alpha=\sqrt{1-a^2/\ell^2},\qquad |a|<\ell,
\]

and initially $g>0,r>0$. A frame for Eqs. (21)–(25) is

\[
e^1=dr,\quad e^2=gr(d\phi+a\,dt/\ell),\quad
\tau=\frac g2[(1+\alpha)\ell\,dt+a\,d\phi],
\]

\[
\begin{aligned}
m&=\frac g2\left[(2-\alpha)(r^2/\ell^2+A)\ell\,dt
 +\frac{2+\alpha}{1+\alpha}(r^2/\ell^2+B)a\,d\phi\right],\\
s&=\frac g{2\ell}\left[\frac{2+\alpha}{1+\alpha}(r^2/\ell^2+B)a\,dt
 +(2-\alpha)(r^2/\ell^2+A)\ell\,d\phi\right].
\end{aligned}
\]

Then $g_{\mu\nu}dx^\mu dx^\nu=(e^1)^2+(e^2)^2$ has rank two. There is no ordinary inverse Lorentzian metric. The dual frame $(n,E_1,E_2)$ satisfies $\tau(n)=1,e^a(n)=0,\tau(E_a)=0,e^a(E_b)=\delta^a_b$; define $g^{\mu\nu}=\sum_aE_a^\mu E_a^\nu$, so $g^{\mu\nu}\tau_\nu=0$.

For a rational exact check, set

\[
u=\frac{a}{\ell(1+\alpha)},\quad
\alpha=\frac{1-u^2}{1+u^2},\quad
 a=\frac{2\ell u}{1+u^2},\quad -1<u<1.
\]

Solving $R^a(P)=R(M)=0$ in this frame gives the following **independently reconstructed** spin connections:

\[
\omega=\frac g{1+u^2}(u\,dt+d\phi),\quad
\omega^1=\frac u\ell\,dr,\quad
\omega^2=\frac{gr}{\ell}\left(dt+\frac{2u}{1+u^2}d\phi\right).
\]

**Checked:** substituting these functions before differentiating gives zero for all 24 curvature components in the coordinate two-form basis $(dt\wedge dr,dt\wedge d\phi,dr\wedge d\phi)$. The coframe determinant is

\[
\det(\tau,e^1,e^2)
=\frac{\ell g^2r(1-u^2)}{(1+u^2)^2}>0.
\]

The computed spatial inverse annihilates $\tau$. This is a local flatness/frame check on $r>0$, not a proof of the Euclidean filling or global regularity at the axis. A preliminary test differentiated symbolic connection placeholders before substituting their radial dependence; its nonzero residuals were an implementation artifact and were discarded. Only the substituted-before-derivative result is accepted.

The alternative negative square root mentioned in footnote [53] is not continuously connected to the paper's Newton–Cartan background. Extra radial central-gauge constants are stated to be removable by small gauge transformations (footnote [54]); that global gauge assertion was not separately reproduced.

# Charge one-form, normalization and independent parameters

Adopt the paper's convention

\[
\delta Q_\lambda=-\frac{k}{2\pi}\oint d\phi\,
\langle\lambda,\delta A_\phi\rangle,
\qquad \lambda_\xi=-\xi^\mu A_\mu.
\]

Use a radial regulator $r=R>0$ and a circle $\phi\sim\phi+2\pi$. At fixed $k,\ell$, the source charges are

\[
\begin{aligned}
\mathcal E&=\frac{kg^2\ell}{4}
 [(1+\alpha)(2-\alpha)A+(2+\alpha)(1-\alpha)B],\\
\mathcal J&=\frac{akg^2}{4}[(2-\alpha)A+(2+\alpha)B],\\
\mathcal M&=\frac{kg^2}{4}(1+\alpha),\qquad
\mathcal S=a\mathcal M.
\end{aligned}
\]

**Checked:** the explicit connection above yields

\[
\delta\mathcal E=k\langle A_t,\delta A_\phi\rangle,
\qquad
\delta\mathcal J=k\langle A_\phi,\delta A_\phi\rangle
\]

for each independent variation $\delta g,\delta u,\delta A,\delta B$. Every residual vanishes exactly, and every $R$-dependent term cancels before any $R\to\infty$ limit. The constants are normalized so that $a=A=B=0,g=1$ has $\mathcal E=\mathcal J=\mathcal S=0$, $\mathcal M=k/2$.

The central charges $\mathcal M,\mathcal S$ are attributed to the asymptotic analysis in unpublished Ref. [61]. Their normalized asymptotic gauge parameters are absent here. In particular, inserting constant $M$ or $S$ directly into the surface one-form must not be silently identified with those normalized generators. **Blocked:** independent reconstruction of these two charge normalizations requires the missing asymptotic parameters and boundary conditions.

For the displayed branch, $\mathcal S=a\mathcal M$ and $\mathcal M>0$ imply

\[
|\mathcal S|\leq\ell\mathcal M.
\]

This is not a universal bound on $\mathcal E,\mathcal J$ for arbitrary $A,B$. At $\alpha=0,a=\pm\ell$, direct substitution gives $\mathcal E^2=\mathcal J^2$. On the nonrotating locus the $B$ dependence drops out; the phrase “four independent charges” needs a generic rotating patch. More precisely, the Jacobian with rows $(\mathcal E,\mathcal J,\mathcal M,\mathcal S)$ and columns $(g,u,A,B)$ is

\[
\frac{\ell^3g^7k^4u(1-u^2)^2(3+u^2)(1+3u^2)}{4(1+u^2)^8},
\]

which is nonzero for $0<|u|<1$ with $k,\ell,g>0$, but zero at $u=0$. This exact local rank check does not count the global moduli of an unspecified asymptotic phase space.

# Thermal holonomy, entropy and the first law

**Source-derived:** Euclidean time has period one after the thermal potentials are included. Smoothness is imposed as

\[
\operatorname{Hol}_{\mathcal C}(A)
=\exp\!\left(\int_0^1 A_{\tilde\tau}d\tilde\tau\right)=\Gamma_C,
\]

where $\Gamma_C$ is an allowed central element of the Euclidean gauge group. The letter mentions a real form of a complex Nappi–Witten algebra, but leaves its global group, representation and explicit chemical-potential-dressed $A_{\tilde\tau}$ to Ref. [61]. It quotes

\[
S_{\rm th}=-2k\,\operatorname{Im}\langle A_{\tilde\tau},A_\phi\rangle_{\rm on\ shell}
=\pi\sqrt{2\ell k}\left[
\frac{\mathcal E-\mathcal J}{\sqrt{\ell\mathcal M-\mathcal S}}
+\frac{\mathcal E+\mathcal J}{\sqrt{\ell\mathcal M+\mathcal S}}
\right].
\]

This entropy is linear in the two energy combinations. Its physical sign still depends on $A,B$; arbitrary real integration constants are not thereby proved to describe positive-entropy thermal states.

At fixed $k,\ell$, with $\ell\mathcal M\pm\mathcal S>0$, entropy differentiation gives

\[
\begin{aligned}
\beta&=\frac{4\pi}{|g|\alpha},&
\Omega&=\frac{a}{\ell(1+\alpha)},\\
\Phi_{\mathcal M}&=\frac\ell{\alpha(1+\alpha)}
 [(2-\alpha)A+(\alpha-1)(\alpha+2)B],\\
\Phi_{\mathcal S}&=\frac{a}{\alpha(1+\alpha)\ell}
 \left[(\alpha-2)A+\frac{2+\alpha}{1+\alpha}B\right].
\end{aligned}
\]

**Checked:** Mathematica independently differentiated $S_{\rm th}(\mathcal E,\mathcal J,\mathcal M,\mathcal S)$, then substituted the charge map and the rational $u$ parametrization. The four exact residuals

\[
\left(\partial_{\mathcal E}S_{\rm th}-\beta,
-\frac{\partial_{\mathcal J}S_{\rm th}}{\partial_{\mathcal E}S_{\rm th}}-\Omega,
-\frac{\partial_{\mathcal M}S_{\rm th}}{\partial_{\mathcal E}S_{\rm th}}-\Phi_{\mathcal M},
-\frac{\partial_{\mathcal S}S_{\rm th}}{\partial_{\mathcal E}S_{\rm th}}-\Phi_{\mathcal S}\right)
\]

are $(0,0,0,0)$ for $g,k,\ell>0,-1<u<1$, with real $A,B$. Thus the stated first law

\[
\delta S_{\rm th}=\beta\delta\mathcal E-\beta\Omega\delta\mathcal J
-\beta\Phi_{\mathcal M}\delta\mathcal M-\beta\Phi_{\mathcal S}\delta\mathcal S
\]

is algebraically consistent. The $g<0$ branch requires $\sqrt{g^2}=|g|$, as retained in the source temperature. No variation of $k$ or $\ell$ is included.

At extremality $\alpha\to0$, temperature vanishes and the paper explicitly states that the thermal cycle is no longer contractible. Do not impose the same smooth solid-torus holonomy at that endpoint or infer an extremal entropy by substituting into a singular denominator without a specified limiting path.

# The claimed boundary algebra and what is reusable

The source quotes two commuting copies of the mode algebra

\[
\begin{aligned}
i\{\mathcal L_m^\pm,\mathcal L_n^\pm\}&=(m-n)\mathcal L_{m+n}^\pm,\\
i\{\mathcal L_m^\pm,\mathcal P_n^\pm\}&=(m-n)\mathcal P_{m+n}^\pm
 \pm\frac{k\ell}{2}m^3\delta_{m+n,0},\\
i\{\mathcal L_m^\pm,\mathcal Z_n^\pm\}&=(m-n)\mathcal Z_{m+n}^\pm,\\
i\{\mathcal Z_m^\pm,\mathcal Z_n^\pm\}&=(m-n)\mathcal P_{m+n}^\pm
 \pm\frac{k\ell}{2}m^3\delta_{m+n,0}.
\end{aligned}
\]

All unlisted brackets vanish. This is an infinite extension related to the three-dimensional Maxwell algebra, not a derived Brown–Henneaux pair of Virasoro algebras. Boundary falloffs, residual transformations, integrability, zero-mode identifications and the actual charge-bracket derivation are not provided in the letter. A Cardy formula and a relativistic parent geometry are explicitly future questions.

For the vault's CPS/charge language, the immediately reusable object is the finite-$R$ one-form $k_\lambda=-k\langle\lambda,\delta A_\phi\rangle d\phi/(2\pi)$, together with the exact flat connection and its parameter variations. The extra abelian sectors must remain in both the bilinear form and the thermal ensemble. A gluing exercise must first supply a boundary action/polarization, distinguish small gauge transformations from boundary generators, and specify which thermal cycle is contractible; none of those choices follows from local flatness alone.

# Verification ledger

**Verified:** exact finite Lie-algebra Jacobi/invariant-pairing tests; explicit torsion solution and all 24 flatness components; coframe invertibility and degenerate-metric annihilator; finite-$R$ energy/angular-charge variations; generic charge-map rank; spin relation, extremal energy relation and all four entropy derivatives. Mathematica/Sage outputs: `sage_run-NMlusE`, `evaluate_mathematica-Kv0QwG`, `evaluate_mathematica-fdfJrE` in the external MCP result directory. These identifiers are audit handles, not source citations.

**Assumptions:** $\epsilon_{12}=+1$, $k,\ell>0$, $g>0,r=R>0$, positive-root branch, real $A,B$, $-1<u<1$; generic charge independence additionally requires $u\neq0$. Couplings are fixed under the first law. No radial regulator was dropped in the charge check.

**Source-derived:** central-charge normalizations, entropy from Euclidean holonomy, full asymptotic mode algebra and global gauge assertions. PDF pp. 3–4 visually confirm the source formulas; machine checks have the narrower scopes listed above.

**Blocked:** explicit chemical-potential-dressed Euclidean connection, global Euclidean group/allowed center, normalized central gauge parameters, asymptotic boundary conditions and charge realization are referred to unpublished Ref. [61]. These are the exact missing inputs for reproducing the holonomy and boundary-algebra claims.

**Failed:** no source contradiction established by the completed checks. The spurious preliminary curvature residuals were corrected as a differentiation-order error in the check itself.

**Not verified:** a globally regular filling, positivity of entropy for an identified physical state space, horizon/area interpretation, microscopic degeneracy, full boundary CPS/sewing construction and extremal path limits. No source retrieval or computation-service blocker remains; the unresolved boundary is missing published input.
