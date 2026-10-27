---
paper id: 2610.16271v1
title: Regular-Zero Drinfeld-Sokolov Charges in Doubled Four-Dimensional Chern-Simons Theory
authors:
- Zeng, Wentao
- He, Yifan
- Wu, Xian
publication date: '2026-10-12'
abstract: We study classical local conserved charges obtained after finite-defect reduction of doubled four-dimensional Chern--Simons
  theory. At a finite simple zero, the inhomogeneous derivative term in the affine gauge transformation induced by the twist
  function vanishes, so the residue evaluations of the two Gaudin currents transform by the ordinary adjoint action. For each
  simple ideal, we use the Evans-compatible invariant tensors of the principal Drinfeld--Sokolov hierarchy as external algebraic
  input, construct local circle integrals, and treat the same-zero, distinct-zero, and mixed sectors separately, proving pairwise
  Poisson commutativity. Under the explicit assumptions of Stedman's simple-pole/simple-zero boundary Hamiltonian, the periodic
  trivial-monodromy sector, and boundary weights independent of phase-space variables, the reduced Hamiltonian decomposes
  term by term into finite-pole, infinity, finite-zero, and residual first-class-constraint contributions, which yields conservation
  of the constructed charges. We distinguish the finite-defect reduced space, the extended space carrying the residual constraint,
  and the physical quotient. The result is a conditional existence statement for a classical local Abelian Poisson subalgebra;
  we make no claim of functional independence, maximality, or Liouville completeness. Extensions to higher-order zeros and
  nontrivial monodromy sectors are outside the scope of this work.
comments: 25 pages, no figures
url: https://arxiv.org/abs/2610.16271v1
summary: At simple twist zeros affine residual gauge transformations become adjoint; Evans-compatible invariant polynomials
  descend to a commuting physical subalgebra under a specified boundary Hamiltonian.
tags: []
---

# Regular-Zero Drinfeld–Sokolov Charges in Doubled Four-Dimensional Chern–Simons Theory

Under the paper's explicit reduced-bracket, simple-zero, periodicity and boundary-Hamiltonian assumptions, regular-zero evaluation gives local charges that strongly commute with the residual constraint and mutually Poisson-commute. Conservation is strong for external multipliers and weak for field-dependent gauge fixing. This is a conditional construction of an Abelian subalgebra of the physical Poisson algebra, not a proof of functional independence, maximality or Liouville completeness.

The direct use here is a worked example of three separate questions: which expressions descend through constraints, which of those commute, and which remain conserved after specifying boundary dynamics. It does not construct a Virasoro algebra. Reason codes: `T1-charge`, `T1-symplectic`, `T1-boundary`, `T2-model`, `T3-math`.

## Complete source map and reading route

The PDF has 25 pages. Its dense proof and four appendices are organised here as a single master note.

| Sections | Purpose and dependency |
|---|---|
| 1 | Main conditional statement and three distinct claims. |
| 2.1–2.2 | Lie-algebra splitting, periodic sector, reduced brackets and residual constraint. External input from the doubled 4dCS reduction. |
| 3 | Same affine residual gauge action in two sectors despite opposite Poisson signs. |
| 4 | Finite simple zeros turn the affine transformation into an ordinary adjoint action. |
| 5.1 | Local densities and strong physicality. |
| 5.2 | Same-zero bracket; ultralocal cancellation and non-ultralocal Evans condition. |
| 5.3 | DS–Evans tensors supplied as external algebraic input, one simple ideal at a time. |
| 6.1–6.2 | Distinct zeros and mixed sectors, completing the pairwise bracket proof. |
| 7.1 | Four-term Hamiltonian and normalisation ledger. |
| 7.2–7.5 | Finite-pole, infinity, zero and residual-constraint terms handled separately. |
| 7.6 | Conditional conservation theorem. |
| 8.1–8.4 | Explicit functionals, countable labels, quotient algebra and scope. |
| 9 | Conclusion; higher jets, monodromy, quantum theory left open. |
| A | Index form of invariant-tensor and Evans identities. |
| B/B.1 | $A$-type determinant generating formula and low-degree expansions. |
| C | Two-pole $\mathfrak{sl}_2$ nonzero witness. |
| D | Detailed invariant-gradient proof and ultralocal contraction, including singular elements. |

Read §§2–4 → §5.2/Appendix D → §6 → §7 for the logical chain. Appendix B is the quickest computational entry; §5.3 is the external theorem boundary. Appendix A is an index reference. Section 8 must be read before translating “infinitely many labels” into any independence claim.

## Dictionary and reduced Poisson data

$G,H$ are connected complex semisimple groups, $H\subset G$, and
$$
\mathfrak g=\mathfrak h\oplus\mathfrak f,\quad
[\mathfrak h,\mathfrak f]\subset\mathfrak f,\quad
\langle\mathfrak h,\mathfrak f\rangle=0.
$$
The fixed invariant bilinear form is nondegenerate. No symmetric-space condition $[\mathfrak f,\mathfrak f]\subset\mathfrak h$ is imposed. Gradients use this complex bilinear form, without complex conjugation. $C_{12}=T_a\otimes T^a$ is the split Casimir. Space is $S_R^1=\mathbb R/(2\pi R\mathbb Z)$ with smooth strictly periodic fields and gauge parameters in the assumed trivial-monodromy sector.

At finite simple poles $q\in P_N$, the fields are $\Gamma_q(x)\in\mathfrak g$ and $\gamma_q(x)\in G$. The external levels and spectral data are fixed:
$$
\varphi(z)=\sum_q\frac{k_q}{z-q},\quad \omega=\varphi(z)dz,
\qquad c_q=\frac{k_q}{2\pi}.
$$
Writing $\delta'_{xy}=\partial_x\delta(x-y)$, the input brackets are
$$
\{\Gamma_{q1}(x),\Gamma_{p2}(y)\}=\delta_{qp}
\left([C^{\mathfrak g}_{12},\Gamma_{q1}]\delta_{xy}-c_qC^{\mathfrak g}_{12}\delta'_{xy}\right),
$$
$$
\{\Gamma_{q1}(x),\gamma_{p2}(y)\}=\delta_{qp}\gamma_{q2}C^{\mathfrak g}_{12}\delta_{xy}.
$$
Define the composite current and its projection
$$
\Lambda_q=\gamma_q\Gamma_q\gamma_q^{-1}-c_q\gamma_q'\gamma_q^{-1},\qquad
\Delta_q=\Lambda_q^{\mathfrak h}.
$$
Then $\{\Gamma_q,\Delta_p\}=0$, while
$$
\{\Delta_{q1},\Delta_{p2}\}=\delta_{qp}
\left(-[C^{\mathfrak h}_{12},\Delta_{q1}]\delta_{xy}+c_qC^{\mathfrak h}_{12}\delta'_{xy}\right).
$$
The two current sectors have opposite signs. Their central terms cancel in
$$
C_\infty(x)=\sum_q(\Gamma_q^{\mathfrak h}-\Delta_q),\qquad
C_\infty[\mu]=\int\langle\mu,C_\infty\rangle dx,
$$
so $\{C_{\infty1},C_{\infty2}\}=[C^{\mathfrak h}_{12},C_{\infty1}]\delta_{xy}$ is first class.

Keep the reduction levels separate: finite-defect constraints have already been imposed strongly; the extended Poisson algebra still carries $C_\infty$; the physical algebra is
$$
\mathcal A_{\rm phys}=N(\mathcal I_\infty)/\mathcal I_\infty,
\quad N(\mathcal I_\infty)=\{F:\{F,\mathcal I_\infty\}\subset\mathcal I_\infty\}.
$$
This is an algebra quotient. It should not be silently treated as a smooth symplectic manifold with all singular reduction questions resolved.

## Simple-zero evaluation and physicality

Set $\Gamma(z)=\sum_q\Gamma_q/(z-q)$, $\Delta(z)=\sum_q\Delta_q/(z-q)$ and $\mathcal L_x^{(g,h)}=2\pi(\Gamma,\Delta)/\varphi$. Smearing the current brackets gives
$$
\{C_\infty[\mu],\Gamma(z)\}=\frac{\varphi(z)}{2\pi}\mu'+[\Gamma(z),\mu],
\quad
\{C_\infty[\mu],\Delta(z)\}=\frac{\varphi(z)}{2\pi}\mu'+[\Delta(z),\mu].
$$
In the second equation, the minus in $C_\infty$ and the opposite current bracket sign cancel. Thus both Lax matrices transform as connections.

At a finite zero $\zeta\notin P_N$ with $d_\zeta=\varphi'(\zeta)\ne0$, define
$$
j_\zeta^{(g)}=\mathop{\rm res}_{z=\zeta}\mathcal L_x^{(g)}dz
=\frac{2\pi}{d_\zeta}\Gamma(\zeta),\quad
j_\zeta^{(h)}=\frac{2\pi}{d_\zeta}\Delta(\zeta).
$$
The zero removes the affine term, while simplicity makes the residue normalisation finite. These are logically distinct uses of the assumptions. Now $\delta_\mu j=[j,\mu]$. For any adjoint-invariant polynomial $P$,
$$
Q_{\zeta,P}^{(s)}=\int_{S_R^1}P(j_\zeta^{(s)}(x))dx,
\qquad \{C_\infty[\mu],P(j(x))\}=0
$$
pointwise and strongly. $G$-invariance implies the needed $H$-invariance in the first sector. The second sector is local in $\Gamma_q,\gamma_q,\gamma_q^{-1},\gamma_q'$; local means the density uses fields and a finite jet at one $x$.

For an invariant on a simple ideal, “extend by zero” is interpreted as composing with the projection onto that ideal: $P(X)=P_I(X_I)$. It does not mean a discontinuous piecewise polynomial.

## Same-zero brackets: invariance is insufficient

Let $J=\Gamma(\zeta)$ and $\widetilde J=-\partial_z\Gamma|_\zeta$. The pole sum gives
$$
\{J_1,J_2\}=[C_{12},\widetilde J_1]\delta_{xy}
+\frac{d_\zeta}{2\pi}C_{12}\delta'_{xy},
$$
with the overall opposite sign in the $h$ sector. After $j=2\pi J/d_\zeta$, $\widetilde j=2\pi\widetilde J/d_\zeta$, both coefficients have magnitude $2\pi/d_\zeta$. In particular $\widetilde j$ need not equal $j$; this is not a closed affine algebra on $j$ alone.

For $A=\nabla P(j)$, $B=\nabla R(j)$, the ultralocal charge bracket is proportional to $\int\langle[A,B],\widetilde j\rangle dx$. Appendix D supplies the necessary stronger invariant-theory argument:
$$
[X,\nabla P(X)]=0,\quad
D(\nabla P)_X([\xi,X])=[\xi,\nabla P(X)].
$$
Choose $\xi=\nabla R(X)$ at fixed $X$. The left-hand side vanishes, hence $[\nabla R(X),\nabla P(X)]=0$, including nilpotent and singular $X$. Merely saying “both lie in the centralizer” would be insufficient because that centralizer can be nonabelian.

The remaining bracket is
$$
\{Q_P,Q_R\}_{\delta'}=\beta\int\langle\nabla P(j),\partial_x\nabla R(j)\rangle dx.
$$
For homogeneous degrees $m,n$, this is $\beta mn(n-1)\int S_{i_1\cdots i_{N-1}|c}j^{i_1}\cdots j^{i_{N-1}}j'^c dx$, $N=m+n-2$. The Evans identity says that after symmetrising the undifferentiated indices, $S$ is fully symmetric including $c$. Equivalently, the polynomial one-form
$$
\alpha_{P,R}=\langle\nabla P(X),d\nabla R(X)\rangle
$$
is closed. Homogeneity makes it exact, with primitive proportional to the corresponding degree-$N$ symmetric polynomial; periodicity removes the integral of its derivative. Necessity is asserted on the unrestricted formal current algebra, where every smooth closed curve in current space can be tested. It need not be necessary on a restricted image of the actual reduced fields.

**Checked illustration.** On the $\mathfrak{sl}_3$ Cartan $X=\operatorname{diag}(x,y,-x-y)$, the trace metric is $G=\left(\begin{smallmatrix}2&1\\1&2\end{smallmatrix}\right)$. Use $\alpha_c=\partial_aP\,(G^{-1})^{ab}\partial_b\partial_cR$. Sage gives zero curl for all six pairs among the DS polynomials of degrees $2,3,5,6$ below. In contrast, raw $P=J_3$, $R=J_4$ gives
$$
\partial_x\alpha_y-\partial_y\alpha_x=24(x-y)(x+2y)(2x+y),
$$
which is nonzero generically. Both are invariant polynomials, but that does not make their same-zero circle integrals commute. This is a finite algebraic check on the Cartan, not an independent proof of the all-Lie-algebra Evans theorem.

## DS input, distinct zeros and the mixed sectors

For a simple ideal with exponents $m_a$ and Coxeter number $h$, the principal DS–Evans input provides compatible invariant tensors of degree
$$
d_{a,r}=m_a+rh+1,\qquad r\ge0.
$$
Only the highest derivative-free part of the DS Hamiltonian density is used. The paper does not identify the full derivative-containing DS hierarchy with the local residue density. Repeated exponents retain the principal Heisenberg label. The extension of Cartan compatibility to the full algebra is external Evans/Chevalley input; finite tests do not replace it.

For distinct $\zeta,\eta$, partial fractions give
$$
\{\Gamma_1(z),\Gamma_2(w)\}=
\left[C_{12},\frac{\Gamma_1(z)-\Gamma_1(w)}{w-z}\right]\delta_{xy}
-\frac1{2\pi}\frac{\varphi(z)-\varphi(w)}{w-z}C_{12}\delta'_{xy}.
$$
At two zeros the central term vanishes. Contraction of the rest is proportional to
$\langle[A,B],\Gamma(\zeta)-\Gamma(\eta)\rangle$, which is zero because each gradient commutes with its own current. No $[A,B]=0$ assertion for different currents and no Evans condition are needed here. In the mixed case $\{\Gamma(z),\Delta(w)\}=0$ identically. Thus the three proofs have different inputs: Evans at one zero, ordinary invariance at distinct zeros, and strong sector commutativity for mixed charges.

## Four-term Hamiltonian and the conservation proof

Assume every $k_q\ne0$, $K=\sum_qk_q\ne0$, and all weights below are external constants independent of fields. Set $S=\sum_q\Gamma_q$, $A_0=2\pi S/K$ and $k_\infty=-K$. The adopted boundary Hamiltonian is
$$
H_{\rm red}=H_{\rm fin}+H_\infty+H_Z-C_\infty[a],
$$
$$
H_{\rm fin}=\sum_q\frac{\pi\epsilon_q}{k_q}\int\langle\Lambda_q^{\mathfrak f},\Lambda_q^{\mathfrak f}\rangle dx,
\quad H_\infty=-\frac{\pi\epsilon_\infty}{K}\int\langle S^{\mathfrak f},S^{\mathfrak f}\rangle dx,
$$
$$
H_Z=\sum_\zeta\frac{d_\zeta}{4\pi}\int
\left(\alpha_\zeta\langle j_\zeta^{(g)},j_\zeta^{(g)}\rangle
-\beta_\zeta\langle j_\zeta^{(h)},j_\zeta^{(h)}\rangle\right)dx.
$$
The normalisation follows from $\operatorname{res}_{\zeta}\langle\Gamma(z),\Gamma(z)\rangle dz/\varphi(z)=\langle\Gamma(\zeta),\Gamma(\zeta)\rangle/d_\zeta$. With $\widehat Q=\tfrac12\int\langle j,j\rangle dx$, $H_Z=\sum d_\zeta(\alpha_\zeta\widehat Q^{(g)}-\beta_\zeta\widehat Q^{(h)})/(2\pi)$.

The four cancellations are:

1. $\Gamma_q[\xi]$ generates $\delta\gamma_q=\gamma_q\xi$, $\delta\Gamma_q=[\Gamma_q,\xi]+c_q\xi'$. Hence $\delta(\gamma\Gamma\gamma^{-1})=c_q\gamma\xi'\gamma^{-1}$ and $\delta(\gamma'\gamma^{-1})=\gamma\xi'\gamma^{-1}$ cancel in $\Lambda$. Thus $\{\Gamma,\Lambda\}=0$. The $\Delta$ action on $\Lambda^{\mathfrak f}$ is adjoint because the affine term is $\mathfrak h$-valued, so its quadratic norm is invariant. Both current sectors commute with $H_{\rm fin}$, although $\gamma_q$ need not be static.
2. $H_\infty$ acts by $\{\Gamma(z),H_\infty\}=[\Gamma(z),\epsilon_\infty A_0^{\mathfrak f}]+\varphi(z)\partial_x(\epsilon_\infty A_0^{\mathfrak f})/(2\pi)$. At a zero only an adjoint action remains, killed by invariant polynomials. $\Delta$ commutes because $H_\infty$ only uses $\Gamma$.
3. $H_Z$ is a finite linear combination of degree-two members already in the commuting family, ideal by ideal. Field-dependent weights would add $\{Q,\alpha\}\widehat Q$ terms and are excluded.
4. For external $a$, strong physicality gives $\{Q,C_\infty[a]\}=0$. For $a=a[\Phi]$, the extra term is $\int\langle\{Q,a\},C_\infty\rangle dx$, which vanishes only weakly.

This reconstructs §7's conditional theorem. The identification with Stedman's original unreduced boundary Hamiltonian is cited input, not independently rederived here from a four-dimensional variational principle.

## Explicit determinant family and a nonzero witness

For $\mathfrak{sl}_N$, define $X_\zeta=2\pi\Gamma(\zeta)=d_\zeta j_\zeta$, $J_k=\operatorname{Tr}X_\zeta^k$, $D(u)=\det(1-uX_\zeta)$ and $p_n=(n-1)/N$. Then
$$
\widehat K_n=-\frac n{p_n}[D(u)^{p_n}]_{u^n},\quad
n\ge2,\quad n-1\not\equiv0\pmod N.
$$
The current differs by a fixed scalar from the residue normalisation; degree-$n$ charges acquire $d_\zeta^n$. Since $J_1=0$,
$$
D(u)^{p_n}=\exp\left[-p_n\sum_{k\ge2}\frac{u^kJ_k}{k}\right].
$$
Mathematica independently reproduces
$$
\widehat K_2=J_2,\quad\widehat K_3=J_3,\quad
\widehat K_4=J_4-\frac3{2N}J_2^2,
$$
$$
\widehat K_5=J_5-\frac{10}{3N}J_2J_3,
\quad\widehat K_6=J_6-\frac5{3N}J_3^2-\frac{15}{4N}J_2J_4+\frac{25}{8N^2}J_2^3.
$$
If $n-1=rN$, $D(u)^r$ has degree $n-1$, so that coefficient vanishes. For $\mathfrak{sl}_2$ the allowed degrees are even; for $\mathfrak{sl}_3$ they are $2,3,5,6,8,9,\ldots$. Sage also verifies $J_4-\tfrac12J_2^2=0$ for the $\mathfrak{sl}_3$ diagonal representative.

Appendix C takes $\mathfrak g=\mathfrak h=\mathfrak{sl}_2$, two poles, $\gamma_q=1$, $\Gamma_{q_1}=X$, $\Gamma_{q_2}=0$. Then $\Delta_q=\Gamma_q$ and $C_\infty=0$. For $k_1k_2(k_1+k_2)\ne0$,
$$
\zeta=\frac{k_1q_2+k_2q_1}{k_1+k_2},\qquad
\varphi'(\zeta)=\frac{k_1+k_2}{(\zeta-q_1)(\zeta-q_2)}.
$$
The quadratic charge is $Q_2=\pi R\langle j,j\rangle$, nonzero if $\langle X,X\rangle\ne0$. In the concrete choice $q_1=0,q_2=1,k_1=k_2=1$, $X=\operatorname{diag}(1,-1)$ with trace pairing, $\zeta=1/2$, $\varphi'=-8$, $j=-\pi X/2$, and $Q_2=\pi^3R/2$.

The condition $j\not\equiv0$ alone is not sufficient for nonzero invariant charges: a nonzero nilpotent $\mathfrak{sl}_2$ current has $\operatorname{Tr}j^2=0$ and all these polynomial densities vanish. Appendix C correctly imposes the stronger nonisotropic witness condition. Read the shorter nonvanishing language in §8.2/Conclusion in that restricted sense. Distinct polynomial degrees and countable labels do not prove independence of integrated charges.

## Local translation into CPS and regional observable questions

The useful reusable data are the explicit residual constraint ideal, a strong invariant representative of each observable, and the quotient map. The equality $\{Q,C[\mu]\}=0$ for external $\mu$ implies membership in the normalizer even for field-dependent smearing, by Leibniz and the remaining constraint factor. Products of the classes generate an Abelian subalgebra, but a product of two circle integrals need not itself be one local integral.

For a spatial interval, the Evans step leaves an endpoint primitive instead of zero. Thus this paper's periodic construction supplies a candidate bulk density and a calculable boundary obstruction; it does not automatically supply endpoint boundary conditions, edge variables or an interval gluing theorem. The absence of affine gauge variation at a spectral zero is also different from the vanishing of physical edge charges at a spatial boundary.

## Verification ledger

| Target | Evidence |
|---|---|
| Pole partial fractions and two-pole zero/derivative | Mathematica exact residuals zero. |
| Residue-current central coefficient and $H_Z$ normalisation | Mathematica exact factors reduce to $2\pi/d_\zeta$ and $\pi/d_\zeta$. |
| Determinant expansions through degree six | Mathematica reproduces (B.4)–(B.5). |
| Evans closedness for six $\mathfrak{sl}_3$ Cartan pairs | Sage polynomial curls zero; raw $J_3,J_4$ gives explicit nonzero control above. |
| Invariant gradients and nilpotent boundary | Sage $\mathfrak{sl}_2$ symbolic matrix commutator zero; nonzero nilpotent square zero. General proof reconstructed from equivariance. |
| Full all-type Evans theorem; original 4dCS reduction | Source-derived/external input, not established by these finite checks. |

**Verified:** The exact reduced algebraic targets in the ledger, and the explicit proof steps showing which assumptions remove each term. Full PDF text and TeX were available; rendered p. 9 confirmed (5.5)–(5.10), signs and the tensor-symmetrisation placement.

**Assumptions:** Complex semisimple algebras and nondegenerate invariant form; reductive orthogonal embedding; simple finite poles and regular finite simple zeros; fixed spectral data; $k_q,K\ne0$ for §7; strict periodicity and the stated monodromy sector; DS–Evans existence input; field-independent boundary weights; external gauge multiplier for strong conservation.

**Blocked:** No unresolved retrieval/computation blocker. The first Sage run tried to factor the zero polynomial and raised `ArithmeticError: factorization of 0 is not defined`; handling zero before factorisation made the same checks complete successfully.

**Not verified:** A new derivation of the finite-defect phase space from 4dCS, all-simple-type Evans compatibility, global smoothness of the quotient, nontrivial monodromy, higher-order poles/zeros, independence/maximality/completeness, quantisation or interval edge completion. The nilpotent counterexample forbids upgrading a merely nonzero residue current into a nonzero polynomial hierarchy.

Official source: [arXiv:2610.16271v1](https://arxiv.org/abs/2610.16271v1). Retrieval and computation artifacts remain outside the vault. Daily placement: [[2026_10_14_overview]].
