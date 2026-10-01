---
paper id: 2609.36764v1
title: "Dirichlet gravitons in AdS4 and LΛw1+∞ wedge algebra"
authors:
  - Hare Krishna
publication date: 2026-09-29T05:38
abstract: |-
  We derive the AdS deformation of the flat-space soft-graviton algebra with Dirichlet boundary conditions. Starting from the AdS$_4$ spinor-helicity representation, we Mellin-transform linearized graviton solutions and construct the AdS wedge, including its Laurent completion. The Dirichlet boundary condition pairs opposite helicities, while AdS covariance fixes their relative normalization. Assuming linear closure and normalizing the global modes to reproduce the geometric AdS isometries, covariance and the Jacobi identities uniquely determine the soft-mode bracket. The result is the wedge of $\mathcal L_\Lambda w_{1+\infty}$, where $\Lambda=-\ell^{-2}$. This provides a bulk derivation of the cosmological-constant deformation that incorporates the AdS boundary condition, without relying on collinear splitting functions or a self-dual truncation.
comments: "15 pages+appendices; PDF 32 pages including cover and references"
url: https://arxiv.org/abs/2609.36764v1
summary: "Dirichlet helicity reflection and a conditional formal soft algebra, with exact Jacobi checks and explicit CPS realization boundaries."
tags: []
---

# Dirichlet pairing before the soft bracket

**Correct under precise conditions:** the displayed bracket defines a Lie algebra of formal Laurent modes. Its uniqueness uses the specified wedge, AdS-equivariant continuation, linear closure, absence of central/nonlinear terms, and the ten-mode global seed. The source does not construct a nonlinear Hamiltonian charge algebra on the standard Dirichlet gravitational phase space. Its immediate use here is to separate helicity reflection and source fixing from the additional problem of realizing an algebra by gravitational observables.

## How to read this long paper

The abstract-page comment says “15 pages+appendices”; the PDF has 32 pages including the cover and references, and 28 pages of main argument plus technical appendices. Treat it in monograph mode.

| Source cluster | Content and dependency | Reading role |
| --- | --- | --- |
| §1 | Relation to flat soft algebras, AdS light-ray algebras and flux-allowing gravitational constructions; explicit linear scope | Essential scope |
| §§2.1–2.3 | Spinor-helicity operators, projective variables and Mellin weights | Essential definitions |
| §3.1 and unnumbered normalization/Laurent parts | Contour modes, finite polynomial normalization, assumed continuation and wedge lattice | Essential assumption |
| §§4.1–4.2 | Electric/magnetic boundary data, opposite-helicity intertwiner, transvection recurrence and global seed | Essential boundary construction |
| §§5.1–5.3 | Two output levels, lowering recurrences, uniqueness and auxiliary Poisson proof | Essential algebra |
| A.1–A.3 | Spinor conventions, global differential operators, Lorentzian versus split reality, light-ray normalization | Technical reference |
| B | Derivation of both transvection channels from scale multiplication and differentiation | Technical reference |
| C; C.1; C.2 | Metric potential, regulated Mellin inversion, FG reconstruction, contour electric profiles and phase choice | Essential check of metric interpretation |
| D | Tree-level Dirichlet correlator soft identities and infrared Mellin poles | Optional motivation; does not prove nonlinear closure |

## Spinor scale, field weights and coefficient weights

Use physical Lorentzian AdS with

$$\Lambda_{\rm Ein}=-3/\ell^2,\qquad \Lambda=-1/\ell^2\ne0.$$

Complexify the spinors: dotted and undotted variables, and $z,\bar z$, are independent until a real slice is imposed. The bar on $\bar w$ denotes opposite helicity, not complex conjugation. With $\epsilon^{12}=1$, $\epsilon_{12}=-1$, the spinor representation contains

$$\mathcal P_{\alpha\dot\alpha}=\lambda_\alpha\bar\lambda_{\dot\alpha}+\Lambda\partial_{\lambda^\alpha}\partial_{\bar\lambda^{\dot\alpha}},\qquad H_{\bar r,r}=-\tfrac12\mathcal P_{\alpha\dot\alpha}.$$

Indices $1,2$ correspond to $r=-1/2,+1/2$. Set $\lambda=a(1,z)$, $\bar\lambda=b(1,\bar z)$, $\omega=ab$, $\rho=a/b$. Helicity $\sigma=\pm2$ means $\rho\partial_\rho\Psi_\sigma=-\sigma\Psi_\sigma$. The Euler identity underlying the weights is

$$\int_0^\infty d\omega\,\omega^{\Delta-1}\omega\partial_\omega\Psi=[\omega^\Delta\Psi]_0^\infty-\Delta\widetilde\Psi.$$

Discard the endpoint only in a convergence domain or with a declared continuation prescription. Then $h=(\Delta+\sigma)/2$, $\bar h=(\Delta-\sigma)/2$. This $\Delta$ is spinor homogeneity, **not** a CFT$_3$ dimension or global-AdS energy.

At $\sigma=2$, $\Delta=4-2p$, the generating field has weights $(\bar h,h)=(1-p,3-p)$ and expands as

$$\mathcal H^{p,+}(z,\bar z)=\sum_{\bar m,m}\bar z^{p-1-\bar m}z^{p-3-m}\frac{w^p_{\bar m,m}}{N_{p,\bar m}},$$

$$w^p_{\bar m,m}=N_{p,\bar m}\oint\frac{dz\,d\bar z}{(2\pi i)^2}z^{m+2-p}\bar z^{\bar m-p}\mathcal H^{p,+}.$$

For the finite barred polynomial module, $p\ge1$, $1-p\le\bar m\le p-1$,

$$N_{p,\bar m}=(-1)^{p-1-\bar m}\Gamma(p+\bar m)\Gamma(p-\bar m).$$

The active bulk action is the negative of the action on labels. Coefficient extraction gives

$$[\bar L_k,w^p_{\bar m,m}]=[k(p-1)-\bar m]w^p_{\bar m+k,m},\quad [L_k,w^p_{\bar m,m}]=[k(2-p)-m]w^p_{\bar m,m+k}.$$

Thus normalized coefficient weights are $(p,3-p)$, distinct from the generating-field weights. The extension to all $p\in\tfrac12\mathbb Z$ is an **assumption about equivariant modes**, not permission to evaluate the finite-module Gamma normalization at its poles. The full lattice obeys $p\pm m,p\pm\bar m\in\mathbb Z$. The wedge has

$$a=\bar m+p-1\ge0,\qquad c=m-p+2\ge0.$$

For $p<1$, barred raising never terminates. For finite modules it terminates at $\bar m=p-1$; a completed module needs its own continuation prescription. A boundary ANEC Fourier mode is used to motivate a normalized lowest state at every $p$; this is not a bulk Hilbert-space completeness proof.

## Boundary sources and the helicity intertwiner

On a flat boundary patch, use FG gauge and TT data:

$$ds^2=\ell^2r^{-2}[dr^2+(\eta_{ij}+\gamma_{ij})dy^idy^j],\quad \gamma''-2r^{-1}\gamma'+\Box\gamma=0,$$

$$\gamma=s+\tfrac12r^2\Box s+r^3t+O(r^4),\quad \mathcal E=-\tfrac32t,\quad \mathcal B=-\mathscr C[s],\quad \mathscr C[s]_{ij}=-\tfrac12\epsilon_i{}^{kl}\partial_k\Box s_{lj}.$$

Here $s=\delta g_{(0)}$ is the source and $t$ the response; Newton's-constant normalization is absent from these geometric data. Source-free Dirichlet means $s=0$. It implies $\mathcal B=0$, but the converse requires fixing the Cotton kernel (boundary diffeomorphisms, conformal representative and possible global zero modes).

With $\star^2=-1$ and $C^{(\pm)}=(C\mp i\star C)/2$, $\mathcal B^{(\pm)}=\pm i\mathcal E^{(\pm)}$. Hence reflection pairs equal electric data. The opposite-helicity coefficient module has weights $(3-q,q)$; equality of the Casimir differences,

$$4p-6=6-4q,$$

requires $q=3-p$. Lowering to the wedge corner fixes the intertwiner coefficient to depend only on $p$. The transvection matrix is

$$[H_{\bar r,r},w^p_{\bar m,m}]=A_pw^{p-1/2}_{\bar m+\bar r,m+r}-\Lambda B_pw^{p+1/2}_{\bar m+\bar r,m+r},$$

$$A_p=\bar r(p-1)-\bar m/2,\qquad B_p=r(p-2)+m/2.$$

Appendix B derives the first channel from multiplication by $\omega q_r\bar q_{\bar r}$ and the second from two raised-index spinor derivatives. The normalization ratios cancel the extra barred derivative factor; both channels are necessary. In the opposite family the channels exchange, so equivariance gives

$$\rho_{p-1/2}=\Lambda\rho_p,\qquad\rho_{p+1/2}=\Lambda^{-1}\rho_p,\qquad\rho_{3/2}=1.$$

Therefore

$$W^p_{\bar m,m}=w^p_{\bar m,m}+\Lambda^{3-2p}\bar w^{3-p}_{\bar m,m}.$$

This particular basis is singular as $\Lambda\to0$ at some levels. A smooth flat limit needs a separate rescaling; it does not follow by dropping $\Lambda$ everywhere in the pairing.

## Metric realization and the contour prescription

Appendix C uses stereographic $G=1-x^2/(4\ell^2)$, $g=G^{-2}\eta$ and local-frame Weyl spinors

$$C^{(+)}_{\dot\alpha\dot\beta\dot\gamma\dot\delta}=-\tfrac12\bar\lambda_{\dot\alpha}\bar\lambda_{\dot\beta}\bar\lambda_{\dot\gamma}\bar\lambda_{\dot\delta}G^3e^{ik\cdot x},$$

with the dotted/undotted exchange for the other chirality. Its metric potential (C.10) uses a reference spinor $\mu$, $\mathfrak a=-2k\cdot x$, $\mathfrak b=-2x^2$, and the two structures

$$-\left(G-\frac{i\mathfrak b}{2\ell^2\mathfrak a}\right)\frac{\mu_\alpha\mu_\beta\bar\lambda_{\dot\alpha}\bar\lambda_{\dot\beta}}{\langle\mu\lambda\rangle^2}e^{ikx}$$

and

$$-\frac{ie^{ikx}}{2\ell^2\mathfrak a}\frac{\mu_\alpha\mu_\beta(\lambda^\gamma x_{\gamma\dot\alpha}\bar\lambda_{\dot\beta}+\lambda^\gamma x_{\gamma\dot\beta}\bar\lambda_{\dot\alpha})}{\langle\mu\lambda\rangle^3}\langle\mu x\lambda].$$

These are frame components, not coordinate components. The construction is local, away from reference-spinor/gauge singularities. The source imports the spinor curvature operator from its reference [37]; that full potential-to-curvature calculation was not independently reproduced here.

Scaling both momentum spinors by $\sqrt\omega$ gives $h=e^{i\omega Qx}(H^{(0)}+\omega^{-1}H^{(-1)})$. For $Z_\epsilon=\epsilon-iQx$, $\epsilon>0$, initially $\Re\Delta>1$,

$$\widetilde h_{\Delta,\epsilon}=\frac{\Gamma(\Delta)}{Z_\epsilon^\Delta}H^{(0)}+\frac{\Gamma(\Delta-1)}{Z_\epsilon^{\Delta-1}}H^{(-1)}.$$

Mellin inversion uses a vertical contour $\Re\Delta>1$; choosing a discrete soft lattice is a different operation and is not an inversion theorem. In the TT sector,

$$\gamma(r)=s+\tfrac12r^2\Box s-\int_0^r\frac{r^2-u^2}{u}E(u)\,du,$$

so $s=-\mathscr C^{-1}\mathcal B$ only on a specified invertible sector.

At the boundary point $x_*=(0,0,0,2\ell)$, the adapted normal maps $(1,\bar z)$ to $(\bar z,1)$. The electric kernels have factors $\Gamma(6-2p)\bar z^{4-j}/[i\ell(z\bar z-1)]^{6-2p}$ and $\Gamma(2p)z^j/[i\ell(z\bar z-1)]^{2p}$. Product contours satisfy $R_zR_{\bar z}>1$ so that the angular pole is included. This is part of the definition, not an arbitrary small-contour choice.

The source's residue formula (C.48) gives selection $j=2+\bar m-m$ and

$$\mathcal E^p_+=N_{p,\bar m}(i\ell)^{2p-6}\frac{\Gamma(m-p+3)}{\Gamma(m+p-2)},\quad \mathcal E^{3-p}_{-,\mathrm{exch}}=N_{3-p,m}(i\ell)^{-2p}\frac{\Gamma(\bar m+p)}{\Gamma(\bar m+1-p)}.$$

Ratios are continued before imposing discrete weights. The phase convention is $\bar w=-w_-|_{\mathrm{exch}}$, a uniform sign, and yields $\mathcal E_+(w^p)=\Lambda^{3-2p}\mathcal E_-(\bar w^{3-p})$. With the Cotton-kernel source fixed separately, $s[W]=0$ and $t_D=-4\mathcal E_+/3$.

A useful boundary of this argument: direct substitution of all ten global seed labels into (C.50) gives **zero electric profile at this evaluation point**. Thus a nonzero ratio continued off the lattice does not establish nonzero electric data for every discrete seed. This is not a proof that every such mode vanishes globally; the transported contour, residual gauge data and completion need separate treatment. It does preclude using this pointwise formula as proof of a faithful bulk phase-space representation.

## Two-channel bootstrap and the Jacobi proof

The ten seed identifications are $\bar L_k=W^2_{k,0}$, $L_k=\Lambda^{-1}W^1_{0,k}$, $H_{\bar r,r}=W^{3/2}_{\bar r,r}$. They impose the geometric AdS action as input. No Poisson bracket of two metric perturbations has yet been derived.

For $V^p_{a,c}=W^p_{1-p+a,p-2+c}$, lowering nilpotence bounds the output level by $p+q-2\le s\le p+q-1$. The lattice makes these the only two choices. Lowering covariance and antisymmetry then reduce the coefficients to

$$[V^p_{a,c},V^q_{b,d}]=(\alpha_{p,q}a-\alpha_{q,p}b)V^{p+q-2}_{a+b-1,c+d}+(\beta_{p,q}c-\beta_{q,p}d)V^{p+q-1}_{a+b,c+d-1}.$$

The $H_{-1/2,-1/2}$ Jacobi identity gives $\alpha_{p,q}=\alpha_{p-1/2,q}$ and $\beta_{p,q}=\beta_{p+1/2,q}$; the connected half-integer lattice and global seed fix $\alpha=q-1$, $\beta=-\Lambda(q-2)$. This is where the completion and $\Lambda\ne0$ enter uniqueness.

The result (5.29) is

$$[W^p_{\bar m,m},W^q_{\bar n,n}]=[\bar m(q-1)-\bar n(p-1)]W^{p+q-2}_{\bar m+\bar n,m+n}-\Lambda[m(q-2)-n(p-2)]W^{p+q-1}_{\bar m+\bar n,m+n}.$$

Map the formal basis injectively to Laurent monomials

$$\Phi(W^p_{\bar m,m})=x_1^{p-1+\bar m}x_2^{p-1-\bar m}y_1^{2-p+m}y_2^{2-p-m}.$$

All have total degree two. The constant Poisson tensor $\tfrac12\partial_{x_1}\wedge\partial_{x_2}+\tfrac\Lambda2\partial_{y_1}\wedge\partial_{y_2}$ reproduces the two coefficients. Its Jacobi identity and formal injectivity prove Jacobi. Negative wedge output distance occurs only when both corresponding input distances vanish, and then its coefficient vanishes. This proves algebraic wedge closure, with no assertion about normalizability or gravitational charge integrability.

Appendix A distinguishes $\mathfrak{so}(3,1)$ reality, exchanging the two complex $\mathfrak{sl}_2$ factors, from independently real factors giving $\mathfrak{so}(2,2)$. The ambient stabilizers of a timelike and a spacelike direction are not conjugate by a real AdS isometry. Appendix D adds motivation: a tree-level Dirichlet correlator expansion $F_{n+1}(\varpi)=(S^{(0)}+\varpi S^{(1)})F_n+O(\varpi^2)$ gives IR Mellin residues at $\delta=0,-1$, modulo local contact terms. It does not establish the complete soft tower from a nonlinear Ward identity.

## Equation ledger and translation to the vault

| Source object | Reusable result | Required boundary |
| --- | --- | --- |
| (2.16)–(2.23), C.1 | Regulated homogeneity transform and different coefficient weights | Homogeneity is not global energy |
| §3, (4.17) | Completed wedge and helicity reflection | Equivariant continuation is assumed |
| (C.24)–(C.33) | Source/response reconstruction from electric/magnetic Weyl | TT patch, Cotton kernel fixed |
| (5.29)–(5.36) | Exact formal Lie bracket and wedge closure | Linear, centerless, formal basis |
| A | Real-form and generator normalizations | Impose Lorentzian reality separately |
| D | Two soft Mellin residues | Tree level, contact-term convention |

The dependency chain is spinor representation → regulated Mellin family → Laurent continuation → electric intertwiner → global-seed-normalized bracket → algebraic Jacobi. The independent chain needed for the vault is action and renormalized potential → allowed solutions and gauge quotient → Hamiltonian generators → Poisson algebra. The source does not fill this second chain. In particular, no map to the vault's smooth-centre $\mathcal V(3,2)/\mathcal V(4,1)$ normal modes, no symplectic norms and no artificial-interface sewing prescription are supplied.

## Verification log

**Verified:** independent Mathematica coefficient identities and regulated Mellin integral; exact symbolic Sage Jacobi; xAct component electric-Weyl check; finite residue checks. PDF printed pages 15, 26 and 27 were visually checked after an extraction font warning; full official TeX and PDF were read for the section reconstruction.

**Assumptions:** $\ell>0$, $\Lambda\ne0$; complexified labels; vanishing/regulated Mellin endpoints; fixed contour and continuation; TT boundary patch and explicitly fixed Cotton kernel; centerless linear formal algebra.

| Label | Executed check and result |
| --- | --- |
| Checked | Mathematica expanded the two monomial Poisson coefficients minus (5.29): `{0,0}` for symbolic labels. |
| Checked | Sage polynomial ring in nine mode labels and $\Lambda$ evaluated the three arbitrary-label Jacobi channels: `[0,0,0]`; no finite-rank inference needed. |
| Checked | Mathematica evaluated the Gamma-regulated Mellin integral for $\Re\Delta>1$, $\Re Z>0$ and recovered the two terms above. |
| Checked | The Casimir-difference residual is $4(p+q-3)$; transvection normalization ratios give `{0,0}`. |
| Checked | xAct/xCoba, conformal metric `diag(1,-1,1+eps h(r)exp(ikt),1-eps h(r)exp(ikt))`, computed the linearized $C_{xrxr}$ as $e^{ikt}(k^2h-h'')/4$, residual zero against (C.23). This is one Fourier TT polarization, not the complete reference-spinor potential. |
| Checked | FG series cancels through order $r$ and gives $\lim E/r=-3t/2$; polarization identities in D give three zero residuals. |
| Checked | Direct residues for pole orders 1–5 and monomial powers 0–6: 35 zero residuals against (C.48). Ten global seeds substituted into (C.50) give ten zeros at $x_*$. |
| Source-derived | Full spinor potential-to-Weyl chain, meromorphic electric-profile matching for the completed modules and contour transport. |
| Blocked | A faithful, normalizable CPS charge realization cannot be checked from this source: its nonlinear Hamiltonians, symplectic domain and integrability prescription are not constructed. This is the paper's stated scope boundary, not a tool outage. |
| Failed | No contradiction in the formal bracket checks. No blanket claim of nonzero electric data for every seed is used. |

**Not verified:** global bulk continuation, gauge quotient/injectivity, full potential-to-curvature conversion, non-linear charges, quantum central terms and a smooth flat limit of this basis. No source retrieval or computation service remained blocked.
