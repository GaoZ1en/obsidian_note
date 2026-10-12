---
paper id: 2610.02964v1
title: "Ultraviolet dissipation and defect OPE in bottom-up holographic interfaces"
authors:
  - "Mianqi Wang"
publication date: 2026-10-02T08:02
abstract: "We study the radial ultraviolet dissipation quantity $c_{UV}$ defined in arXiv:2601.16888v3 and defect OPE data in bottom-up holographic interfaces. We relate $c_{UV}$ along with the defect primary spectrum and BOPE coefficients in the large defect dimension limit to the optical length $\\rho$ in the holographic bulk. In addition, we prove a new holographic bound for conformal interfaces relating entanglement entropy, energy transmission and UV dissipation: \\[ c_{LR}\\geq \\frac{2c_{\\mathrm{eff}}}{2+\\pi(c/c_{\\mathrm{UV}}-1)}. \\] This compliments the upper bound of $c_{LR}$ by $c_\\text{eff}$ proved in arXiv:2404.01515 ."
comments: ""
url: https://arxiv.org/abs/2610.02964v1
summary: "Optical length fixes fixed-descendant spectral density, BOPE residues and projected dissipation; a subleading endpoint claim needs stronger assumptions."
tags: []
---
# Optical length, response residues and projected dissipation

The reusable result is a relation between three **fixed-descendant, large-radial-level** quantities: the defect-primary density is $\rho=L/\pi$, the response residue carries $1/\rho$, and the matched system–bath projected decay rate carries the same factor. Thus $c_{UV}/c=\pi/L$ in the stated probe and coupling regime. This is not a computation of the spectral gap of the full coupled operator. The latter retains mixing between infinitely many descendant channels.

Evidence: **Source-derived** reconstruction of the complete main text and appendices; **Checked** reductions, special-function identities, normalization tests and geometric examples below. The subleading-width statement in footnote 12 requires stronger endpoint hypotheses than the paper states; its claimed generality is **Failed** by the explicit endpoint example below. The leading bounded-remainder argument does not depend on that footnote.

## Source map and how to read this long paper

Official sources: [abstract](https://arxiv.org/abs/2610.02964v1), [PDF](https://arxiv.org/pdf/2610.02964v1), [TeX](https://arxiv.org/src/2610.02964v1). Monograph mode; the master note follows the published section structure. Commented-out TeX discussions are not treated as published results.

| Section cluster | Purpose and dependencies |
|---|---|
| §1 Introduction | Defines the proposed UV interface quantity and its relation to existing transmission/entropy data. Background. |
| §2 Normal modes; §2.1 KG equation; §2.2 WKB spectrum | Essential: separates the scalar, fixes the AdS₂ branch, introduces optical length and the bounded endpoint remainder. |
| §3 System–bath response; §3.1 system response; §3.2 BTZ bath; §3.3 full double-trace equations | Essential: fixes source/response normalizations, Weyl factors, Fourier restriction and the full matrix problem. |
| §4 System response and BOPE; §4.1 pole weights; §4.2 BOPE conversion | Essential for spectral use: Wronskian norming identity, large-level residues and descendant-independent BOPE dictionary. |
| §5 Projected opening; §5.1 finite-coupling poles; §5.2 $c_{UV}$ | Essential, with a scope restriction: solves the projected large-radial-level equation, not the full matrix spectrum. |
| §6 Geometric bound; NEC, bound and saturation subsections | Independent geometric consequence; uses $L$, $A_{\min}$, $I_2$ and the NEC. |
| §7 Discussion | Open issues: full channel mixing and physical interpretation beyond the projected probe calculation. |
| Appendix A Pure AdS₃ | Technical reference: exact eigenfunctions, norms, residues and BOPE coefficients. |
| Appendix B Tauberian check | Technical reference: cumulative BOPE weight; distinguish an averaged theorem from individual-level asymptotics. |
| Appendix C Geometric proof; cap estimate and equality geometry | Technical reference: proves the sharpened integral inequality and identifies its nonsmooth limiting saturation profile. |
| Appendix D Janus; D.1 endpoint assumptions; D.2 non-BPS spectrum; D.3 charges | Tests the assumptions and identifies models outside the stated class. Includes the restricted BPS singlet comparison. |

Read §§2, 3.1, 4 and Appendix A first for the AdS spectral workflow. Read §3.3 before using §5 in a sewing problem: it shows precisely what projection discards. Read §6 with Appendix C as a separate NEC argument. Appendix D is useful for testing a candidate geometry before applying any asymptotic formula.

## Conventions and notation

The asymptotic AdS₃ radius is one on both sides, with signature $(-++)$. The background and scalar action are
$$
 ds^2=dx^2+A(x)^2\sec^2\varphi(-dt^2+d\varphi^2),\qquad
 S_\Phi=-\frac12\int\sqrt{-g}\,[g^{\mu\nu}\partial_\mu\Phi\partial_\nu\Phi+m_\Phi^2\Phi^2].
$$
Here $x\in\mathbb R$, $-\pi/2<\varphi<\pi/2$, $A>0$, and $A\sim a_-e^{-x}$, $a_+e^x$ at the two ends. The probe has no backreaction in the response calculation. Standard quantization is imposed on the system's two asymptotic ends.

| Symbol | Definition and domain |
|---|---|
| $\nu,\Delta$ | $m_\Phi^2=\nu^2-1$, $\Delta=1+\nu$; closed problem $\nu>0$. Matched massive opening below uses $0<\nu<1/2$. |
| $q_n,d_n$ | Transverse eigenvalue $q_n^2=d_n(d_n-1)$, standard AdS₂ branch $d_n=1/2+\sqrt{1/4+q_n^2}>1/2$. Low-level stability is an additional condition. |
| $n,k,j$ | Radial level $n$; fixed descendant $k$; $j$ denotes the full descendant sum. |
| $u,L,\rho$ | $u=\int_{-\infty}^x dx'/A$, $L=\int_{\mathbb R}dx/A$, $\rho=L/\pi$. |
| $\alpha^S,\beta^S$ | Source and normalizable coefficients of a system channel at the coupled face; the other face is source-free. |
| $a,b_R$ | Cylinder source/response coefficients; system one-point response is $2\nu b_R^S$. |
| $s_{\nu,k},v_{\nu,k}$ | Different Weyl-weighted source and response profiles; they are not interchangeable. |
| $h_R,\mathfrak g$ | Renormalized double-trace coupling, $\mathfrak g=4\nu^2h_R^2$. |
| $P_{\mathcal H}$ | Restriction from the bath circle to the system half-circle; its adjoint is zero extension. |
| $\mathcal R_n^S$ | Positive pole weight, with response locally $-\mathcal R_n^S/(\omega-\Omega_{n,k})$. |
| $b_n$ | BOPE coefficient for unit-normalized defect primaries. |

## 1. Closed scalar problem: separation and endpoint control (§2)

Set $\Phi=e^{-i\omega t}f(x)\chi(\varphi)$. The separated equations are
$$
 (A^2 f_x)_x+[q^2-(\nu^2-1)A^2]f=0,\qquad
 \chi_{\varphi\varphi}+[\omega^2-q^2\sec^2\varphi]\chi=0.
$$
The two parity sequences of global AdS₂ combine into
$$
 \omega_{n,k}^{\pm}=\pm(d_n+k),\qquad \Omega_{n,k}=d_n+k,\quad k=0,1,\ldots.
$$
Off shell write $\lambda_k=\omega-k$. The analytic channel profile is
$$
 \chi_k=\frac{2^{\lambda_k-1}\Gamma(\lambda_k)}{\sqrt\pi}
 \sqrt{\frac{\Gamma(k+1)}{\Gamma(k+2\lambda_k)}}
 (\cos\varphi)^{\lambda_k}C_k^{(\lambda_k)}(\sin\varphi),
 \qquad \int_{-\pi/2}^{\pi/2}\sec^2\varphi\,\chi_k^2\,d\varphi=\frac1{2\lambda_k-1}.
$$
This is a bilinear analytic continuation; on the real normal mode it is the usual positive normalization. **Checked:** the AdS₂ equation and normalization for $d=2,3,4$, $k=0,\ldots,4$, not a proof of the complete complex-frequency family.

The optical rescaling $f=A^{-1/2}\Psi$ gives
$$
 -\Psi_{uu}+V_\Delta\Psi=q^2\Psi,\qquad
 V_\Delta=(\nu^2-1)A^2+\frac{A_{uu}}{2A}-\frac{A_u^2}{4A^2}.
$$
**Checked:** symbolic Liouville residual vanishes. The derivative labels matter: these derivatives are with respect to $u$, whereas the NEC below initially uses $x$.

At either inward endpoint $y=u$ or $L-u$, impose
$$
 A(y)=y^{-1}[1+\varepsilon(y)],\quad
 \varepsilon=O(y^2),\quad \varepsilon_y=O(y),\quad \varepsilon_{yy}=O(1).
$$
Then the comparison operator has a bounded remainder,
$$
 V_\Delta=\left(\nu^2-\frac14\right)\left(\frac\pi L\right)^2
 \csc^2\frac{\pi u}{L}+W_\nu(u),\qquad W_\nu\in L^\infty(0,L).
$$
With the standard endpoint extension, the comparison spectrum and min–max estimate imply
$$
 \left|q_n^2-\left(\frac\pi L\right)^2(n+\nu+\tfrac12)^2\right|
 \leq\|W_\nu\|_\infty,
 \quad q_nL=\pi(n+\nu+\tfrac12)+O(n^{-1}),
$$
$$
 d_n=\frac12+\frac{n+\Delta-\frac12}{\rho}+O(n^{-1}).
$$
This density counts defect primaries at fixed $k$. It does not count all states of frequency $\omega$, because descendants also grow in number. The asymptotics do not establish $q_0^2>-1/4$.

## 2. Boundary response, BTZ and the full sewing equation (§3)

### System source/response split

The system's natural boundary metric is Weyl-related to the bath cylinder. For $\Delta=1+\nu$, define
$$
 s_{\nu,k}=(\cos\varphi)^{\nu-1}\chi_k,\qquad
 v_{\nu,k}=(\cos\varphi)^{-\nu-1}\chi_k,
 \quad (2\lambda_k-1)\int s_{\nu,k}v_{\nu,k}\,d\varphi=1.
$$
Thus $a_k^S=\alpha_k^S s_{\nu,k}$, $b_{k,R}^S=\beta_k^S v_{\nu,k}+$ local source terms. The variation
$$
 \delta S_S^{\rm ren}=\int 2\nu b_R^S\,\delta a^S
$$
fixes $G_R^S a^S=2\nu b_R^S$. In a noninteger scheme with vanishing local operator,
$$
 G_R^S s_{\nu,k}=\frac{2\nu\beta_k^S}{\alpha_k^S}v_{\nu,k},\qquad
 G_{R,k}^{S,\mathrm{proj}}=\frac{2\nu\beta_k^S}{\alpha_k^S}.
$$
The last expression is a pairing-defined projection, not an eigenvalue equation in a common orthonormal basis.

Endpoint Bessel matching produces the large-$q$ response
$$
 G_{R,k}^{S,\mathrm{proj}}\sim
 -\frac{2\pi}{\Gamma(\nu)^2}\left(\frac q2\right)^{2\nu}
 [\cot\Theta_{\nu,k}(\omega)+\cot(\pi\nu)],
 \qquad \Theta_{\nu,k}(\Omega_{n,k})=n\pi.
$$
Locally at large radial level, $\Theta-n\pi=L(\omega-\Omega_{n,k})+o(1)$. Integer $\nu$ requires logarithmic/contact subtraction, so this formula cannot simply be evaluated at $\nu=1$. Near a pole the norming calculation in §4 is the controlled way to extract its residue.

### Bath and alternate quantization

Use the nonrotating BTZ metric with horizon radius $r_+$, ingoing horizon behavior and Fourier label $m\in\mathbb Z$. The matched bath scalar has mass $\nu^2-1$ and alternate dimension $1-\nu$. Its exact response is
$$
 G_{R,-}^B(\omega,m)=-2\nu r_+^{-2\nu}\frac{\Gamma(\nu)}{\Gamma(-\nu)}
 \prod_{\sigma=\pm1}
 \frac{\Gamma(\frac{1-\nu}{2}-\frac{i(\omega+\sigma m)}{2r_+})}
 {\Gamma(\frac{1+\nu}{2}-\frac{i(\omega+\sigma m)}{2r_+})}.
$$
The minus sign is the alternate-quantization Legendre-transform sign: $G_{R,-}^B=-2\nu a^B/b_R^B$. **Checked:** the ingoing hypergeometric solution reduces the BTZ radial equation to zero. For timelike large frequency,
$$
 G_{R,-}^B\sim\frac{2\nu\Gamma(1+\nu)}{\Gamma(1-\nu)}
 \left(\frac2{\sqrt{\omega^2-m^2}}\right)^{2\nu}e^{i\pi\nu}.
$$
The fixed-$k$ large-radial packet is concentrated at $|m|=O(\sqrt q)$. The leading projected bath response therefore replaces $\sqrt{\omega^2-m^2}$ by $q$. Controlling the complementary Fourier tail and uniform complex continuation is part of the source's analytic argument, not established by the finite tests here.

### Full coupled mode operator and its domain

The double-trace boundary equations are
$$
 a^S=-2\nu h_RP_{\mathcal H}a^B,\qquad
 b_R^B=2\nu h_RP_{\mathcal H}^*b_R^S.
$$
In a fixed system test basis $u_\ell$ and bath Fourier basis $e_m$, define
$$
 \mathsf A_{\ell j}=\langle u_\ell,a_j^S\rangle,\quad
 \mathsf V_{\ell j}=\langle u_\ell,b_{j,R}^S\rangle,\quad
 K_{\ell m}=\langle u_\ell,e_m\rangle,
 \quad \mathsf D_{a,b}=\operatorname{diag}_m(a_m^B,b_{m,R}^B).
$$
The matrix problem is
$$
 \begin{pmatrix}\mathsf A&2\nu h_RK\mathsf D_a\\
 -2\nu h_RK^\dagger\mathsf V&\mathsf D_b\end{pmatrix}
 \binom{\boldsymbol C^S}{\boldsymbol C^B}=0.
$$
Where the required inverses exist, its Schur complement becomes
$$
 [1-h_R^2P_{\mathcal H}G_{R,-}^BP_{\mathcal H}^*G_R^S]a^S=0.
$$
At bath/system poles one must use the block equation, not an inverse that has ceased to exist.

There is also a functional-domain issue in an unrestricted descendant sum. Near $\cos\varphi=0$, $v_{\nu,j}\sim(\cos\varphi)^{\omega-j-\nu-1}$. Ordinary $L^1$ pairing needs $\operatorname{Re}(\omega-j)>\nu$, and $L^2$ needs $\operatorname{Re}(\omega-j)>\nu+1/2$. At a fixed frequency these fail for sufficiently large $j$. A regulator or continuation prescription is required for the full sum; the paper records this restriction. A finite truncation without checking that prescription is not a proof of the full QNM spectrum.

## 3. Pole weights and BOPE data (§4)

Normalize $\Psi_L$ by its left normalizable coefficient, and compare the left and right solutions at a nearby eigenvalue. Their Wronskian satisfies
$$
 \partial_u\mathcal W[\Psi_L(q_n),\Psi_R(q)]
 =[q_n^2-E_k(\omega)]\Psi_L(q_n)\Psi_R(q),\qquad
 E_k(\omega)=(\omega-k)(\omega-k-1).
$$
At the normal mode the two normalizable solutions are proportional. Integrating the identity and using the endpoint coefficients converts the derivative of the source coefficient into a positive norm,
$$
 \mathcal I_n=\int_0^L\Psi_L(u;q_n)^2du,\qquad
 \mathcal R_n^S=\frac{4\nu^2}{(2d_n-1)\mathcal I_n}.
$$
The derivative $E_k'(\Omega_{n,k})=2d_n-1$ explains both this denominator and why $k$ disappears. In the WKB interior, the endpoint-normalized wave has amplitude proportional to $q^{-\nu-1/2}$. Including the endpoint estimates gives
$$
 \mathcal I_n\sim\frac{2^{2\nu}\Gamma(\nu+1)^2L}{\pi q_n^{2\nu+1}},\qquad
 \mathcal R_n^S\sim\frac{2}{\Gamma(\nu)^2\rho}\left(\frac{q_n}{2}\right)^{2\nu}.
$$
This supplies the pole weight that a nonuniform away-from-pole approximation alone does not determine.

For a unit-normalized defect primary, descendant norms are $k!(2d_n)_k$. The cylinder spectral kernel uses
$$
 \widehat\chi_{n,k}=(\cos\varphi)^{d_n-\Delta}C_k^{(d_n)}(\sin\varphi),\qquad
 \frac{\mathcal W_{n,k}}{2(d_n+k)}=
 2^{2(d_n-\Delta)}\frac{k!\Gamma(2d_n)}{\Gamma(2d_n+k)}b_n^2.
$$
Since
$$
 \widehat\chi_{n,k}=\mathcal N_{n,k}(\cos\varphi)^{-\Delta}\chi_{n,k},\qquad
 \mathcal N_{n,k}^2=\pi2^{2-2d_n}\frac{\Gamma(2d_n+k)}{k!\Gamma(d_n)^2},
$$
the two projection integrals cancel all descendant dependence:
$$
 \mathcal R_n^S=\mathcal K_\Delta(d_n)b_n^2,\qquad
 \mathcal K_\Delta(d)=\frac{\pi2^{2-2\Delta}\Gamma(2d)}{(2d-1)\Gamma(d)^2}.
$$
**Checked:** the symbolic normalization cancellation. Stirling asymptotics then give the source's envelope
$$
 b_n^2\sim\frac{2^{3-2d_n}d_n^{2\Delta-3/2}}{\sqrt\pi\,\Gamma(\Delta-1)^2\rho}.
$$
The individual-level result uses the bulk WKB/norming information, not only a boundary Tauberian theorem.

## 4. Projected opening and its scope (§5)

For fixed $k$, uniform marginal coupling and matched masses in $0<\nu<1/2$, the leading projected equation is
$$
 1-h_R^2G_{R,k}^{S,\mathrm{proj}}G_{R,k}^{B,\mathrm{eff}}=0
 \quad\Longrightarrow\quad
 1+\mathfrak g\sin(\pi\nu)e^{i\pi\nu}
 [\cot\Theta+\cot(\pi\nu)]=0.
$$
Gamma reflection cancels the powers of $q$. Solving the remaining trigonometric equation gives
$$
 e^{2i(\Theta-n\pi)}=\frac{1+\mathfrak g}{1+\mathfrak g e^{2\pi i\nu}},\qquad
 \omega_{n,k}^{\mathrm{open,proj}}-\Omega_{n,k}
 =\frac1{2\pi i\rho}\log\frac{1+\mathfrak g}{1+\mathfrak g e^{2\pi i\nu}}+o(1).
$$
Choose the branch continuous from the selected closed pole. Its decay rate is
$$
 \gamma_\infty^{\mathrm{proj}}=\frac1{2\pi\rho}
 \log\frac{1+\mathfrak g}{|1+\mathfrak g e^{2\pi i\nu}|}>0,
$$
because $(1+\mathfrak g)^2-|1+\mathfrak g e^{2\pi i\nu}|^2=4\mathfrak g\sin^2\pi\nu$. **Checked:** the secular algebra and positivity identity. This is finite coupling in the leading projected equation; it is not a weak-coupling expansion of the full matrix problem.

Comparing with pure AdS at the same nonzero coupling, scalar normalization and subtraction prescription yields
$$
 \frac{c_{UV}}c\equiv
 \frac{\gamma_{\mathrm{int},\infty}^{\mathrm{proj}}}{\gamma_{\mathrm{AdS},\infty}^{\mathrm{proj}}}
 =\frac1\rho=\frac\pi L.
$$
For the massless $\nu=1$ case, contact logarithms must be retained and the width instead behaves as
$$
 \gamma_{n,k}^{\mathrm{proj}}\sim
 \frac{\pi h_R^2}{\rho(1+4h_R^2)^2\log^2(q_n/\mu_B)}\to0.
$$
The ratio of leading coefficients still gives $1/\rho$. It is not obtained by directly substituting $\nu=1$ in the massive formula.

### Footnote 12: the subleading claim exceeds the stated endpoint assumptions

Printed p.21, footnote 12, Eq.(5.7), asserts a $q_n^{-2}$, $k$-independent width correction using
$$
 v_{\nu,\mathrm{end}}=\lim_{y\to0^+}
 \left[V_\Delta(y)-\frac{\nu^2-1/4}{y^2}\right].
$$
The published formula and footnote were visually confirmed on PDF physical p.22. The stated endpoint bounds establish boundedness, not existence of this limit. Take, locally at either end,
$$
 A(y)=\frac1y+e\,y\sin\log y,\qquad \varepsilon=e y^2\sin\log y.
$$
For fixed small real $e$, the warp factor is positive near the endpoint and obeys all three stated estimates: $\varepsilon_y=e y(2\sin\log y+\cos\log y)$, $\varepsilon_{yy}=e(\sin\log y+3\cos\log y)$. Yet
$$
 V_\Delta-\frac{\nu^2-1/4}{y^2}
 =e\left[\cos\log y+(2\nu^2-\tfrac52)\sin\log y\right]+O(e^2y^2).
$$
**Checked:** exact symbolic reduction; the remainder divided by $e^2y^2$ is bounded near zero. The endpoint constant therefore need not exist. This local example can be smoothly continued through the interior; the spectral setup does not impose the NEC until the separate geometric-bound section.

**Failed:** Eq.(5.7) as a formula for the entire previously stated bounded-remainder class. A bounded repair is to require stronger endpoint expansions, define the endpoint constants separately when the ends differ, and rederive the subleading WKB and bath projection. Those steps were not supplied or completed here. The universal $k$-independence of that correction is **Not independently verified**. The leading $1/\rho$ result remains independent of this failure.

## 5. NEC and a relation between three interface quantities (§6, Appendix C)

Define
$$
 I_2=\int_{\mathbb R}\frac{dx}{A^2},\quad
 c_{\mathrm{eff}}=cA_{\min},\quad c_{LR}=\frac{2c}{I_2},\quad c_{UV}=\frac{\pi c}{L}.
$$
The geometric expressions for $c_{\mathrm{eff}}$ and $c_{LR}$ are source inputs from prior holographic work. For the warped Einstein background, the NEC is
$$
 1+A_x^2-AA_{xx}\geq0.
$$
Set $B(u)=1/A$, $M=\max B=1/A_{\min}$. Then
$$
 B_{uu}+B\geq0,\quad B(0)=B(L)=0,\quad B_u(0)=1,\ B_u(L)=-1,
 \quad I_2=\int_0^L B(u)du.
$$
**Checked:** coordinate transformation of the NEC. Testing against $\sin(\pi u/L)$ gives $L\geq\pi$. For the sharper area bound, measure the deficit $D=M-B$ outward from the first/last maximum. It obeys $D''\leq M-D$. On increasing components, the comparison-energy estimate gives $D'^2\leq2MD-D^2$. Integrating the resulting cap deficit yields, at each end,
$$
 \int_0^M\frac{D\,dD}{\sqrt{2MD-D^2}}=M(\pi/2-1).
$$
Thus
$$
 I_2\leq M(L-\pi+2),\qquad
 \boxed{\frac{2c_{\mathrm{eff}}}{2+\pi(c/c_{UV}-1)}\leq c_{LR}\leq c_{\mathrm{eff}}}.
$$
The right inequality is an existing holographic input; the new cap estimate supplies the left one. **Checked:** cap integral, transformed NEC and example evaluations; the complete global comparison proof is reconstructed from Appendix C, not certified by CAS.

The equality profile has $M=1$,
$$
 B(u)=\begin{cases}\sin u,&0\leq u\leq\pi/2,\\
 1,&\pi/2\leq u\leq L-\pi/2,\\
 \sin(L-u),&L-\pi/2\leq u\leq L.
 \end{cases}
$$
In $x$, it consists of a left $\cosh x$ cap, a unit throat of length $L-\pi$, and a shifted right cosh cap. The joins are $C^1$, piecewise $C^2$. For $L>\pi$ this is not a smooth exact saturator. With $8\pi G_NT_{\mu\nu}=G_{\mu\nu}-g_{\mu\nu}$,
$$
 8\pi G_NT_{xx}=\frac{1+A_x^2}{A^2}-1,\qquad
 8\pi G_NT_{ij}=(A_{xx}/A-1)g_{ij}.
$$
**Checked with xAct:** all three independent diagonal components. The caps have zero stress, the throat has positive energy density $1/(8\pi G_N)$, and continuity of $A,A_x$ excludes a delta-function thin layer. No specific matter Lagrangian realizing this stress was constructed.

## 6. Exact references and model tests (Appendices A, B, D)

### Pure AdS and cumulative BOPE weights

For $A=\cosh x=\csc u$, $L=\pi$,
$$
 V=(\nu^2-\tfrac14)\csc^2u-\tfrac14,\quad
 \Psi_n=(\sin u)^{\nu+1/2}\frac{C_n^{(\nu+1/2)}(\cos u)}{C_n^{(\nu+1/2)}(1)},
 \quad d_n=n+\Delta.
$$
Its exact norm, positive residue and BOPE coefficient are
$$
 \mathcal I_n=\frac{2^{2\nu+1}\Gamma(\nu+1)^2}{2d_n-1}
 \frac{\Gamma(n+1)}{\Gamma(n+1+2\nu)},\quad
 \mathcal R_n=\frac2{4^\nu\Gamma(\nu)^2}\frac{\Gamma(n+1+2\nu)}{\Gamma(n+1)},
$$
$$
 b_n^2=\frac{2(\Delta-1)^2}{\pi}
 \frac{(\Delta)_n^2}{n!(2\Delta+n-1)_n}.
$$
**Checked:** 12 radial-equation residuals and 12 numerical norm integrals for $\nu=1/4,1/3,1$, $n=0,1,2,3$, agreeing at 25-digit precision. The exact noninteger response is
$$
 G_{R,k}^{\mathrm{AdS,proj}}=
 -\frac{2\pi}{4^\nu\Gamma(\nu)^2}\frac{\Gamma(d+\nu)}{\Gamma(d-\nu)}
 [\cot\pi(d-\Delta)+\cot\pi\nu]+G_{\mathrm{loc}},\qquad d=\omega-k.
$$
This checks the asymptotic sign and normalization of the pole weight.

Appendix B uses weight $w(d)=2\Gamma(2d)/\Gamma(d)^2$ and the short-distance singularity to infer a cumulative asymptotic
$$
 Q(\Lambda)\sim\frac4{\pi\Delta\Gamma(\Delta-1)^2}\Lambda^{2\Delta}.
$$
The Bessel kernel normalization is
$\int_0^\infty t^{2\Delta-1}K_0(2t)dt=\Gamma(\Delta)^2/4$, **Checked** for $\operatorname{Re}\Delta>0$. The cumulative theorem alone does not separate an individual BOPE weight from the local level density.

### Janus assumptions and charge comparisons

For non-BPS Einstein–scalar Janus,
$$
 A_j^2=\frac{1+a\cosh2x}{2},\quad a=\sqrt{1-j^2},\quad0\leq j<1,
 \quad\eta=\frac{1-a}{1+a},
$$
$$
 L_j=2\sqrt{\frac2{1+a}}K(\eta),\qquad
 \rho_j=1+\frac{3j^2}{16}+\frac{105j^4}{1024}+O(j^6),\qquad
 I_2=\frac{2\operatorname{arctanh}j}{j},\quad A_{\min}=\sqrt{\frac{1+a}{2}}.
$$
Here $K$ uses the elliptic parameter, not its square root. The endpoint expansion is $A_j(y)=y^{-1}+y/6+(7-9j^2)y^3/360+O(y^5)$. Hence each fixed $j<1$ lies in the bounded-remainder class. At $j=1$, the optical interval becomes infinite; applying the finite-interval result directly at that endpoint is invalid.

**Checked:** infinite-range numerical optical integrals at $j=.2,.6,.9$ agree to 29 digits; $I_2$ agrees to better than $2\times10^{-21}$ with the stated finite-range numerical test. Ninety-nine sampled values $j=.01,\ldots,.99$ satisfy both bound margins. These are consistency tests, not a proof for the entire interval.

For the BPS massless internal singlet only, $A_{\mathrm{eff}}=\cosh x/\kappa$, $L=\pi\kappa$, and
$$
 d_n=\frac12+\sqrt{\frac14+\frac{(n+1)(n+2)}{\kappa^2}},\qquad
 \frac{c_{UV}}c=\frac{c_{\mathrm{eff}}}c=\kappa^{-1},\quad \frac{c_{LR}}c=\kappa^{-2}.
$$
Other internal modes may carry position-dependent effective masses, so the singlet reduction is not a statement about the full compactification.

Appendix D also gives an excluded smooth asymptotically AdS example $A=\cosh x-b$, $0<b<1$. Its endpoint expansion starts $y^{-1}-b/2+O(y)$, yielding
$$
 V_\Delta=\frac{\nu^2-1/4}{y^2}+\frac{b(5/4-\nu^2)}y+O(1).
$$
Generic mass therefore violates the bounded-remainder hypothesis. Smoothness in $x$ and asymptotically AdS behavior alone are insufficient. Thin-brane distributional potentials also require a different operator treatment.

## Equation ledger and derivation map

| Input | Intermediate object | Output | Boundary |
|---|---|---|---|
| Scalar action, standard system ends | Radial SL equation and AdS₂ modes | $\Omega_{n,k}=d_n+k$ | Low-level BF stability separate |
| Optical endpoint estimates | Bounded comparison remainder | $\rho=L/\pi$ | Fixed $k$, finite $L$ |
| Renormalized variation and Weyl weights | Distinct $s,v$, projected response | Correct $2\nu\beta/\alpha$ | Contact terms matter at integer $\nu$ |
| Wronskian identity | Norm $\mathcal I_n$ | Positive $\mathcal R_n$, BOPE dictionary | Endpoint normalization fixed |
| BTZ alternate response and matched coupling | Full block matrix, then scalar projection | Projected finite-coupling width | Does not solve full channel mixing |
| Same probe/coupling reference | Ratio of projected widths | $c_{UV}/c=1/\rho$ | Subtraction convention matched |
| NEC and endpoint slopes | Two cap deficits | Bound on $c_{LR}$ | Geometric class and existing upper-bound input |

## Translation to the vault's CPS and regional sewing work

The concrete reusable object is the **renormalized boundary response map**, with source $a$ paired to momentum $2\nu b_R$ by the on-shell variation. It is compatible with keeping boundary response data before eliminating a region. Double-trace sewing acts on these maps by a block operator and Schur complement. It does not by itself construct a quantum observable algebra or prove state sewing.

For an AdS mode calculation, import the Wronskian norming identity before importing a Green-function residue: it fixes the normalization and sign that a spectral-density argument cannot fix. Keep radial level and descendant level separate. For an interface response calculation, use the full block equation as the starting object, then state which projection and domain restriction is being made. No gauge reduction or corner-charge construction is supplied by this scalar model.

## Verification ledger

- **Verified:** Mathematica symbolic Liouville reduction, BTZ hypergeometric radial reduction, BOPE normalization cancellation, projected secular algebra, positivity identity, NEC coordinate change, cap integral and Bessel-kernel integral. xAct independently reproduces the three diagonal stress components.
- **Checked, finite:** 15 AdS₂ ODE/normalization cases; 12 pure-AdS radial cases plus 12 norm integrals; BTZ asymptotic relative errors at $(\nu,m,r_+)=(1/3,2,1)$, $\omega=20,40,80,160$: $2.549\times10^{-4},6.222\times10^{-5},1.546\times10^{-5},3.860\times10^{-6}$; Janus quadratures and 99 bound samples described above.
- **Failed:** footnote 12's use of a universal endpoint constant under only the stated bounded-remainder assumptions. The oscillatory endpoint example is an explicit symbolic counterexample. The leading asymptotics are not rejected by this check.
- **Source-derived:** the complete singular Sturm–Liouville estimates, endpoint WKB error bounds, Fourier-tail and complex-frequency uniform control, global NEC cap proof, Tauberian theorem and BPS compactification inputs.
- **Assumptions:** probe scalar; common unit asymptotic radius; standard system quantization; stable AdS₂ branch; finite optical length; bounded endpoint remainder; fixed descendant limit; matched alternate bath in the specified massive range; identical reference coupling and renormalization prescription.
- **Not verified:** full coupled QNM spectrum, an unprojected spectral gap, all-frequency stability, the claimed subleading $k$-independence, arbitrary internal modes, or a matter action realizing the equality geometry.
- **Blocked:** extending the full infinite descendant operator numerically without a specified regulator/domain would be ambiguous. No such spectrum is reported. There is no remaining source-access blocker for this note.

Retrieval audit: official v1 PDF and TeX returned HTTP 200. PDF font warnings did not prevent extraction; decisive projected equations and footnote were checked against TeX and rendered pages. One local render command initially used the wrong temporary basename, was corrected, and then succeeded. A finite-range optical integral initially showed an exponential tail error; rerunning on the infinite domain resolved it. No attachment was added to the vault.
