---
paper id: 2609.29562v1
title: Holonomy Separation and Anyonic Hair in AdS$_3$
authors:
- Kumar Ghosh
publication date: '2026-08-26T17:59:19Z'
abstract: Charge conjugation pairs Einstein–Chern–Simons–Higgs solutions with identical
  gravitational fields and opposite matter flux. The paper studies fixed-filling replica
  identities, charged monodromy, BTZ cross sections and conditional BPS-core charge
  matching.
comments: 44 pages, 4 figures
url: https://arxiv.org/abs/2609.29562v1
summary: A conditional separation of gravitational and charged observables, with a
  failed complement-linking argument and explicit limits on replica, code and BTZ
  claims.
tags: []
---

# Result and immediate use

**Correct under precise conditions:** charge conjugation of an admissible Einstein–Chern–Simons–Higgs solution preserves its complete metric and gravitational connections while reversing its matter flux. Hence matched gravitational observables cannot separate the pair. The quantum replica extension additionally needs an invariant integration cycle, measure, regulator and edge-algebra prescription on one marked filling. The paper does not construct the regular nonextremal vortex-dressed BTZ branch used in its application.

**Incorrect as written:** Remark 5.1's nonzero linking construction uses a Seifert surface in the complement of the very line it is supposed to intersect. A linked meridian is not null-homologous in that complement. The corrected construction uses a surface in the full solid torus intersecting the core, or explicit relative/closure data. The conditional monodromy algebra remains useful after this correction; the depicted replica embedding does not become proved by it.

Immediate CPS/sewing use: this is a concrete test of whether retained interface observables include the matter sector, endpoint dressing and marked-filling information. Agreement of gravitational charges and even the full gravitational field is insufficient to identify the full gauge-matter configuration. Codes: `T1-boundary`, `T1-charge`, `T2-model`, `T2-dS-BH-holography`, `T3-math`.

# How to read this long paper

The complete PDF was inspected through §7 and Appendices A–D. Printed pages start two PDF pages after the cover. Printed p. 24 was rendered to verify Fig. 4 and the precise text of Remark 5.1; equations were navigated by full-text extraction.

| Sections | Technical purpose | Dependence and reading role |
|---|---|---|
| §1, pp. 1–4 | Separates exact conjugation, quantum conditions and conditional black-hole application | Scope guide |
| §2.1–2.4, pp. 5–9 | CSH action, BPS equations, charge/spin, radial solver and sum rules | Essential model data; numerical claims need independent checks |
| §3.1–3.6, pp. 9–14 | Two distinct CS connections; admissibility and dressing; classical theorem and asymptotic/entropy corollaries | Essential exact classical chain |
| §3.7–3.9, pp. 14–17 | Marked Euclidean fillings, quantum hypotheses, neutral and charged replicas | Essential conditional quantum chain |
| §4.1–4.2, pp. 18–20 | One-sided plateau and two-sided wedge transition | Exact nonrotating BTZ benchmark |
| §4.3–4.4, pp. 20–23 | BPS-core charge shifts, localization and winding envelope | Conditional diagnostic, not a solution |
| §5.1–5.4, pp. 23–27 | Normalized matter-line insertion, spin/statistics, linking contrast and limits | Essential, with the topology correction below |
| §6.1–6.4, pp. 27–31 | Modular aliasing, code compression, no-global-symmetry interpretation and access threshold | Algebraic criterion useful; interpretation needs extra input |
| §7, pp. 31–33 | Collects conclusions and open branch problem | Scope recap |
| A, p. 36 | First-order curvature and BTZ holonomy conventions | Reference |
| B.1–B.3, pp. 36–38 | Purification formulas, universal jump, conditional rotating continuation | Essential normalization ledger |
| C, pp. 38–39 | Fluctuation similarity, ghost determinants and entropy algebra | Quantum hypotheses made explicit |
| D, pp. 40–42 | Missing branch, comparison to other vortex models, horizon regularity and tails | Essential before using the black-hole picture |

Read §3 first, then §2 and §5, followed by §4 with D open. Section 6 should be read after the observable algebra and topology have been fixed.

# Model, charge conjugation and flat-space BPS core

**Source-derived.** The matter connection $A$ is Abelian and distinct from $A^{(\pm)}$, the two gravitational connections. The action is

$$
I=\frac1{16\pi G}\int\sqrt{-g}(R+2/L^2)
+\int\sqrt{-g}\bigl[(D_\mu\phi)^*D^\mu\phi-V\bigr]
+\frac\kappa4\int d^3x\,\epsilon^{\mu\nu\rho}A_\mu F_{\nu\rho},
$$

$$
D_\mu=\nabla_\mu-ieA_\mu,\qquad
V=\frac{e^4}{\kappa^2}|\phi|^2(|\phi|^2-v^2)^2.
$$

The flat vortex convention is $(+,-,-)$ and $\epsilon^{012}=+1$. The stationary BTZ line element later uses $(-,+,+)$; comparison of density components must respect that change. $G,L,e,v,\kappa$ are respectively Newton's constant, AdS radius, matter coupling, Higgs vacuum modulus and CS coefficient. The fixed sixth-order potential is the flat self-dual potential, not automatically the potential of a self-dual gravitating model.

The Gauss constraint and positive-flux Bogomolny equations are

$$
Q=\kappa\Phi,\quad (D_1+iD_2)\phi=0,\quad
B=\frac{2e^3}{\kappa^2}|\phi|^2(v^2-|\phi|^2),\quad
A_0=-\frac e\kappa(v^2-|\phi|^2).
$$

The negative branch reverses the correlated signs. Finite energy and topological boundary data give

$$
\Phi_n=\frac{2\pi n}{e},\quad E_n=2\pi v^2|n|,\quad
Q_n=\kappa\Phi_n,\quad s_n=J_n=-\frac{\kappa\Phi_n^2}{4\pi}.
$$

Charge and flux are odd; energy and spin are even. In particular $|D_0\phi|^2=V$ on the BPS branch, so the energy includes $2V$, not $V$.

Write $\phi=vg(r)e^{in\varphi}$, $A_\varphi=(n-a)/e$, $m=2e^2v^2/|\kappa|$ and $x=mr$. For $n>0$,

$$
g'=\frac{ag}{x},\quad a'=-\frac{x}{2}g^2(1-g^2),\quad
(g(0),a(0))=(0,n),\quad(g(\infty),a(\infty))=(1,0).
$$

Near the origin $g=C_nx^n+\cdots$, $a=n-C_n^2x^{2n+2}/[4(n+1)]+\cdots$. The dimensionless densities are

$$
\frac{eB}{m^2}=\operatorname{sgn}(n)\frac{g^2(1-g^2)}2,\quad
\frac{T_{00}}{m^2v^2}=2\left(\frac{ag}{x}\right)^2+\frac{g^2(1-g^2)^2}2,
$$

$$
\frac{T_{0\varphi}}{mv^2}=-\operatorname{sgn}(\kappa)ag^2(1-g^2).
$$

**Checked:** all three sum rules follow from explicit on-BPS total derivatives:

$$
\frac{xg^2(1-g^2)}2=-a',\quad
xag^2(1-g^2)=-(a^2)',\quad
x\frac{T_{00}}{m^2v^2}=-[a(1-g^2)]'.
$$

The last identity uses both first-order equations, while the first two use only the second. Integrating gives flux $2\pi n$, dimensionless energy $2\pi n$ and spin kernel $n^2$. These are on-shell identities, not an independent proof that a numerical solution exists or has the stated continuum accuracy.

An independent Mathematica shooting calculation for $n=1$ on $x\in[10^{-3},12]$, with the displayed origin expansion and $g(12)=1$, gives

$$
C_1=0.323861448806,\qquad
\int_{10^{-3}}^{12}x\frac{T_{00}}{m^2v^2}dx=0.999999895115,\qquad
a(12)=0.000329225681335.
$$

The energy agrees with its finite-endpoint derivative expression to $1.22\times10^{-12}$. This is a different finite-interval problem from the author's $[10^{-5},35]$ collocation run. It does not reproduce the published $10^{-11}$ errors for all three windings. Linearizing $g=1-\eta$ gives $\eta''+\eta'/x-\eta=0$, hence the decaying $K_0(x)$ tail and energy $e^{-2x}/x$. The source's fitted tail slopes, half-mass radii and full figures remain source-derived.

# The exact classical separation theorem

Admissibility (H1–H3) means: a solution on a fixed manifold with $V=V(|\phi|)$; an invertible triad; and complete boundary data invariant under

$$
C:(g,\phi,A)\longmapsto(g,\phi^*,-A).
$$

A fixed nonzero noninvariant gauge source invalidates comparison within the same boundary problem. $D\phi$ maps to its conjugate, $F\mapsto-F$, while $A\wedge dA$ is invariant. The stress tensor

$$
T_{\mu\nu}=(D_\mu\phi)^*D_\nu\phi+(D_\nu\phi)^*D_\mu\phi
-g_{\mu\nu}\bigl[(D_\rho\phi)^*D^\rho\phi-V\bigr]
$$

is unchanged. The scalar equation is conjugated and both sides of the CS equation $\kappa\epsilon^{\mu\nu\rho}F_{\nu\rho}/2=J^\mu$ change sign. Thus the map produces a paired solution with **the same** metric; it does not invoke uniqueness of an independently solved $-n$ boundary problem. In real components $D\phi=r+i\iota$, $C$ sends $(r,\iota)\mapsto(r,-\iota)$; an xAct contraction check gives exactly zero stress difference.

Choose the same triad and torsion-free spin connection on the same bundle and in the same frame:

$$
A^{(\pm)a}=\omega^a\pm e^a/L,\qquad k_{\rm grav}=L/(4G).
$$

Pointwise equality then gives identical path-ordered exponentials on each matched contour, whether or not the connection is flat in the sourced core. Closed traces agree in every representation; open/network amplitudes require equal endpoint states, representations, boundary frames and junction intertwiners. One may not replace these conditions by equality of holonomy conjugacy classes alone.

With Brown–Henneaux falloff, the complete Bañados functions and all their Fourier modes agree. For the stationary BTZ specialization,

$$
\operatorname{Tr}\rho_{L,R}=2\cosh\frac{\pi(r_+\mp r_-)}L,
\quad M=\frac{r_+^2+r_-^2}{8GL^2},\quad J=\frac{r_+r_-}{4GL},
$$

$$
L_\pm=\frac{(r_+\pm r_-)^2}{16GL},\qquad c=\frac{3L}{2G},\qquad S=\frac{2\pi r_+}{4G}.
$$

The equality of fields proves equality of these observables. It does not prove a global stationary matter geometry exists, or that the exact sourced geometry is BTZ at every finite radius. Leading RT/HRT lengths, EWCS, reflected entropy and holographic purification cost are equal because they use the common metric. The paper defines $E_P^{(h)}=E_W/(4G)$ and $S_R=2E_P^{(h)}$; it does not prove equality to unrestricted field-theoretic entanglement of purification.

# Marked replicas, neutral equality and charged resolution

The Euclidean gravitational connections are $A_E=\omega+ie/L$, $\bar A_E=\omega-ie/L$ with matched continuation. A marking $f$ includes the contractible torus cycle, framing, replica gluing and boundary edge-sector data. Equal boundary torus metrics alone do not fix this information.

Quantum assumptions Q1–Q4 are essential: $C$ bijects the regulated integration cycles; gauge fixing, ghosts, measure and counterterms preserve $C$; both sectors use the same gauge-invariant algebra/center/edge prescription; and any continuation away from integer replica number uses the same prescription. Then a change of variables gives

$$
Z_{q,f}[n;\mathcal J_+]=Z_{q,f}[-n;\mathcal J_+],\qquad
S_{q,f}=\frac1{1-q}\log\frac{Z_{q,f}}{Z_{1,f}^q}.
$$

Appendix C explains the one-loop version: the involution on real fluctuations pairs quadratic operators by $K_{-n}=U_CK_nU_C^{-1}$. With identical operator domains and zero-mode handling, bosonic and ghost determinants match. The same algebra automorphism pairs reduced-state spectra. Therefore the generalized-entropy functional agrees **at every candidate curve** $X$, not merely at an extremum, and its QES sets and minima coincide. A finite-dimensional determinant similarity was checked in Sage as an algebraic illustration; no functional determinant or regulator construction was computed.

For a charged twist,

$$
Z_{q,f}[n;\mu]=Z_{q,f}[-n;-\mu],\qquad
\mathcal Z_q(Q;n)=\mathcal Z_q(-Q;-n).
$$

The second relation follows by $\mu\mapsto-\mu$ in the Fourier integral; odd derivatives of $\log Z$ reverse with $n$. For a region containing the core the topological Gauss-law value is $\langle Q_A\rangle=2\pi\kappa n/e$. These statements identify an orientation-sensitive sector of the considered generating functions. Equality of uncharged spectra is not tomography of the entire state; it does not establish that arbitrary information about the pair is exhausted by charge-resolved eigenvalues.

# BTZ purification formulas and the conditional winding envelope

For complementary half-widths $\alpha$ and $\pi-\alpha$ in nonrotating BTZ, let $\alpha_c=(L/r_+)\operatorname{arsinh}1$. Equation (4.2) is $(L/2G)$ times the logarithm of $2r_c\sinh(r_+\alpha/L)/r_+$, $2r_c/r_+$, or $2r_c\sinh[r_+(\pi-\alpha)/L]/r_+$ on the three successive branches. The plateau exists if

$$
\frac{r_+}L\geq\frac2\pi\operatorname{arsinh}1.
$$

For the opposite-boundary two-sided example, $z_H=L^2/r_+$,

$$
E_P^{(h)}(T)=\frac L{4G}\operatorname{arcosh}
\left[1+\left(\cosh\frac{\pi L}{z_H}-1\right)\operatorname{sech}^2\frac T{z_H}\right],
$$

$$
\frac I2=\frac L{2G}\log\left[\sinh\frac{\pi L}{2z_H}\operatorname{sech}\frac T{z_H}\right],\qquad
T_*=z_H\operatorname{arcosh}\left(\sinh\frac{\pi L}{2z_H}\right).
$$

These are connected-branch formulas. At $T_*$ the physical leading saddle becomes disconnected and its cross section vanishes. Substituting the transition condition makes the arcosh argument exactly three. **Checked:**

$$
E_P^{(h)}(T_*^-)=\frac c3\log(1+\sqrt2),\qquad
(S_R-I)(T_*^-)=\frac c3\log(3+2\sqrt2).
$$

The numbers are cutoff and temperature independent **at fixed $c$**. The prose on printed pp. 31–32 and B.2 calls them Newton-constant independent, which is false at fixed $L$: $c=3L/(2G)$, so both scale as $G^{-1}$. This does not invalidate the formulas.

The source separately assumes a regular localized stationary Einstein-CSH branch and BPS-controlled integrated $O(G)$ shifts. For $\gamma=16\pi Gv^2$, define $\widehat M=8GM_{ADM}$, $\widehat j=8GJ_{ADM}/L$. Then

$$
\delta\widehat M=\gamma|n|,\qquad
\delta\widehat j=-\operatorname{sgn}(\kappa)\frac{\gamma n^2}{mL}.
$$

The finite-radius tail $\Delta_n(r)=|n|^{-1}\int_{mr}^{\infty}xT_{00}/(m^2v^2)\,dx$ must be small at a putative horizon. A.1 keeps the gravitational torsion and curvature equations; B.3 derives a rotating radial proper-length candidate and matches it to the factorized interval entropy. Its promotion to a covariant EWCS is an **additional assumption**:

$$
\Xi=\sinh\left(\frac\pi2\sqrt{\widehat M-|\widehat j|}\right)
\sinh\left(\frac\pi2\sqrt{\widehat M+|\widehat j|}\right)\geq1.
$$

For a nonrotating seed, $u=\gamma|n|$, $\lambda=\gamma mL$, substitute $\widehat M=\widehat M_0+u$, $|\widehat j|=u^2/\lambda$. Mathematica reproduces

$$
M_c=\frac4{\pi^2}\operatorname{arsinh}^2(1)=0.314833044295,
$$

$$
\lambda_*(0)=0.581179706027,\quad u_*=0.437906915672,\quad
|\widehat j|/\widehat M=0.753479364698.
$$

The threshold solves $\Xi=1$ and $\partial_u\Xi=0$. The algebraic extremality edge is

$$
|n|_{ext}=\frac{mL}{2}\left(1+\sqrt{1+\frac{4\widehat M_0}{\gamma mL}}\right).
$$

Substitution into $\widehat M-|\widehat j|$ gives zero. This finite continuous envelope must still intersect the integer lattice and the small-tail regime. It is not a spectrum of constructed black holes. At $\widehat M_0=0$, the source's radius estimate $R_{1/2}\simeq2|n|/m$ gives $2L$ at extremality, while $r_+/L=\sqrt{\lambda/2}$; the plotted $\lambda\leq6$ edge is not even half-core localized. D also requires regular $\chi\cdot A=A_t+\Omega_HA_\varphi$ with the scalar phase; the flat $A_0$ relation is insufficient.

# Matter monodromy, linking correction and aliasing

For a fixed marked replica, the proposed normalized insertion is

$$
\mathcal W_p^{(f)}(n)=\frac{Z_R^{(f)}[\Gamma_p,V_n]Z_R^{(f)}[0,0]}
{Z_R^{(f)}[\Gamma_p,0]Z_R^{(f)}[0,V_n]}.
$$

It removes separate one-line factors only when their framing, boundary sectors and gluing prescriptions match. Flux addition and intrinsic spin yield

$$
2\pi(s_{p+n}-s_p-s_n)=-\kappa\Phi_p\Phi_n,\quad
M_{p,n}=e^{-i\kappa\Phi_p\Phi_n}.
$$

This fusion calculation passes exactly. It includes the spin/statistics convention; a naive electric Aharonov–Bohm phase alone has the opposite sign in the cited vortex treatment. At separation $d\gg m^{-1}$, for a genuinely linked admissible contour,

$$
\mathcal W_p^{(f)}(n)=M_{p,n}^{\nu_f}[1+O(e^{-md})],\quad
\mathcal X_p^{(f)}(n)=\frac{\mathcal W_p^{(f)}(n)}{\mathcal W_p^{(f)}(-n)}
=e^{-2i\nu_f\kappa\Phi_p\Phi_n}[1+O(e^{-md})].
$$

Connectedness does not force $\nu_f\ne0$. Disconnection closes this particular doubled-cross-section protocol, not every charged observable and not the phase as an abstract property. Simultaneously reversing probe and background leaves the monodromy unchanged; the measurement is relative to a fixed probe convention. Charge and flux already distinguish the sectors without this interferometer.

**Failed, Remark 5.1 (printed p. 24).** Let the filling be $D^2\times S^1$ and the vortex its core $\{0\}\times S^1$. The complement retracts onto $T^2$. A meridian bounds a disk in the full solid torus; that disk intersects the core once. In the complement the meridian represents a nonzero infinite-order generator of $H_1\cong\mathbb Z^2$. Sage reproduced this from the cellular complex with zero boundary maps. Conversely a Seifert surface lying entirely in the complement has zero intersection with the removed core. Thus the source's simultaneous assertions of complement-null-homology and nonzero intersection cannot justify Fig. 4's $\nu_f=1$. Use a surface in the full filling, with the relevant marking and orientation, and separately establish that the actual replica contour has that linking class. This preserves the conditional phase formula but blocks its advertised topological justification as written.

Under the **additional** anyon-sector assumption $M_{p,n}=\exp(2\pi ipn/N)$ with all probes $p\in\mathbb Z_N$,

$$
\mathcal X_p=\exp(4\pi i\nu_fpn/N),\qquad
[\mathcal X_p=1\ \forall p]\Longleftrightarrow 2\nu_fn=0\pmod N.
$$

The proof is elementary: $p=1$ is necessary and sufficient. For $\nu_f=\pm1$ this is self-conjugacy, $n=-n$ mod $N$. Sage checked all $1\leq N\leq30$, all $n$ and $-3\leq\nu_f\leq3$. Equation (6.1)'s assumed phase is not by itself a derivation of the compact gauge group's charge lattice or the full anyon category. Those global data must be supplied before transferring this criterion to the continuum CSH action.

# What the code and no-global-symmetry interpretation establish

Within an assumed orthogonal sector doublet, equal diagonal values plus superselection-forbidden off-diagonal matrix elements establish the **compression**

$$
P_{\mathcal C}GP_{\mathcal C}=g_G P_{\mathcal C}
$$

for the stipulated neutral algebra. They do not by themselves show $G\mathcal C\subseteq\mathcal C$, nor furnish a complete qubit algebra across superselection sectors. For example a neutral operator can excite a state outside the selected two-dimensional span while preserving its total sector. A Hilbert-space embedding, control of leakage and an allowed algebra of logical operations remain necessary for stronger error-correction claims. Replica partition-function equality also does not independently construct all the corresponding matrix elements.

Section 6.3's argument that adding a distinguishing matter line resolves a forbidden global charge-conjugation symmetry is **not proved**. A $C$-odd observable is compatible with an ordinary global $C$ symmetry. Gauging the Abelian $U(1)$ does not automatically gauge its charge-conjugation automorphism: $U(1)$ transformations preserve $F$, whereas $C$ sends $F\mapsto-F$. One needs a specified holographic completion in which $C$ is gauged, broken, or otherwise excluded under the no-global-symmetry theorem's hypotheses. The classical paired-solution theorem and conditional probe contrast stand independently of that interpretation.

# Derivation ledger and verification boundary

| Chain | Established object | Residual assumptions |
|---|---|---|
| (2.1) → (3.5)–(3.13) | Action/stress symmetry → paired metric and connections | Admissible solution and invariant full boundary data |
| (3.13) → (3.15)–(3.28) | Identical gravitational Wilson data, asymptotic modes and geometric entropies | Matched contours/dressing; BH or BTZ scope where used |
| (3.32) → (3.33), C.1–C.6 | Replica equality, determinant pairing and QES functional equality | Fixed cycle, regulator, domains, edge algebra and continuation |
| (3.40) → (3.43) | Charged generating-function and Fourier-sector reversal | Same charge/algebra prescription |
| (4.4)–(4.6) → (4.7)–(4.8) | Nonrotating jump and Markov gap | Leading connected/disconnected saddle comparison |
| (2.7) → (5.3)–(5.7) | Conditional relative matter phase | Corrected linking data; allowed probe and topological limit |
| (4.16) → (4.20)–(4.23) | Conditional continuous envelope | Missing stationary branch, localization, rotating matching |

**Checked / Verified:** xAct scalar-stress parity (canonical contraction residual zero); Mathematica BPS derivative identities, origin coefficient, fusion phase, nonrotating jump, radial-length antiderivative, extremality relation and numerical envelope threshold; independent finite-interval $n=1$ shooting; Sage modular aliasing tests and core-complement cellular homology. The topology witness disproves the stated complement argument. Newton-constant dependence follows explicitly from $c=3L/(2G)$.

**Assumptions:** the action and sign conventions above; fixed manifold/bundles/dressing; specified invariant boundary data; one marked replica with Q1–Q4; regular/nonextremal BTZ only where expressly assumed; integer winding; separated line cores.

**Not independently verified / Not verified:** published full collocation tables/figures, $n=2,3$ numerical profiles, full coupled gravitating solutions, determinant regularization, actual replica contour topology, modular sums, holographic completion, or full quantum error correction. Failed/unsupported §5–6 arguments are not used to infer those claims.

**Blocked/recovered:** `/src/2609.29562v1` and `/e-print/2609.29562v1` returned HTTP 406; the full PDF sufficed, but advertised support scripts were not obtained. PDF extraction warned of a font-type mismatch; the relevant topology page was visually confirmed. An initial xAct scalar-function setup returned no structured payload; a self-contained kinetic-covector contraction passed. An initial Sage quotient `.rank()` call was unavailable; invariant factors `(0,0)` and infinite meridian order passed. A symbolic shooting-call evaluation error was repaired with a numeric argument guard; a quadrature precision warning was resolved by specifying a modest $10^{-10}$ target. The final reported checks have no remaining tool blocker; they do not inherit the precision claimed in the paper.

Reproducibility: use the displayed BPS ODEs with 40-digit internal precision, numeric guarded `ParametricNDSolveValue`, `FindRoot` for $g(12)=1$, and `NIntegrate` at accuracy/precision goal 10. The envelope uses `FindRoot[{Xi-1,D[Xi,u]},{{u,.438},{lambda,.581}}]`. For the topology check use the standard torus cell complex $C_2=\mathbb Z,C_1=\mathbb Z^2,C_0=\mathbb Z$ with $d_1=d_2=0$; the topological retraction is the explicit punctured-disk product argument above.

Official [version](https://arxiv.org/abs/2609.29562v1) and [PDF](https://arxiv.org/pdf/2609.29562v1). The official submission history says 26 August even though this paper appears as new in the 25 September list; both dates are retained without substituting one for the other. Queue position 2/3 completed before the next paper. Frontmatter, source map, evidence/assumption labels, direct Markdown hygiene and Pandoc parsing passed; artifacts remain outside the vault and no PDF attachment was added.
