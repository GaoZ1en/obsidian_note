---
paper id: 2611.21730v1
title: Gravity/Thermodynamics Correspondence for Generic Dynamical Spacetimes
authors:
  - Vahid Reza Shajiee
  - Mohammad Mehdi Sheikh-Jabbari
  - Vahid Taghiloo
publication date: 2026-11-16T19:00:04Z
abstract: |-
  Einstein gravity with minimally coupled matter admits null-boundary charge variations whose heat component defines a generally non-exact entropy one-form. An admissible local clock with positive non-affinity gives non-negative production under the null energy condition, even without area growth. At a stationary reference the first variation agrees with Hollands–Wald–Zhang entropy.
comments: "8+5 pages, 1 figure"
url: https://arxiv.org/abs/2611.21730v1
summary: "An explicit null-cut example separating the generator jet, charge integrability, and evolution flux; a useful test for regional CPS sewing."
tags: []
---

The reusable result is a cut one-form, not an entropy assigned to every cut. It has a positive contraction with one prescribed flow but generally nonzero field-space curl. These are different tests; a sewing prescription that uses only an area or that matches only the value of the clock on the interface misses data in this example. References below are to arXiv v1; PDF and printed pages agree (the first page is unnumbered).

## Cut geometry and the surface-charge jet (Secs. II–III, pp. 2–3)

Take a smooth null hypersurface $\mathcal N$ with fixed cut identifications in field space. The future generator $l$ and transverse null normal $n$ satisfy $l\cdot n=-1$, and $g_{\mu\nu}=-2l_{(\mu}n_{\nu)}+q_{\mu\nu}$. The cut metric $q$ is positive; $m=d-2>0$. Define $B_{AB}=q_A{}^\mu q_B{}^\nu\nabla_\mu l_\nu$, $\theta_l=q^{AB}B_{AB}$ and $N_{AB}=B_{AB}-q_{AB}\theta_l/m$. There is no twist because $l$ is hypersurface orthogonal. The area form $e=\epsilon_\Sigma$ satisfies $\mathcal L_l e=\theta_l e$ and $\delta e=(e/2)q^{AB}\delta q_{AB}$. Write $\nabla_l l=\kappa_l l$ on $\mathcal N$. Allowed linearized solutions preserve the normal covector directions, $\delta l_\mu=\delta\varphi\,l_\mu$, $\delta n_\mu=\delta\psi\,n_\mu$, not their magnitudes. Then $b=\delta(\varphi-\psi)$ and $D_\delta\theta_l=\delta\theta_l-\theta_l b[\delta]/2$. For $(l,n)\to(e^\sigma l,e^{-\sigma}n)$, $b\to b+2\delta\sigma$ and $D_\delta\theta_l$ has weight +1; $\kappa_l\to e^\sigma(\kappa_l+\mathcal L_l\sigma)$.

Use $L=(R-2\Lambda)\epsilon/(16\pi G)+L_m(g,\Psi,\nabla\Psi)$ with no explicit curvature coupling and with the matter sector retained in the Lee–Wald potential $\Theta$. On a solution and for tangent variations, $k_\xi=\delta Q_\xi-Q_{\delta\xi}-\iota_\xi\Theta$ obeys $dk_\xi=\omega(\delta,\mathcal L_\xi)$, $\omega=\delta\Theta$. The subtraction freezes the generator for the charge variation even when its extension is prescribed from the fields. This is not a condition of zero matter flux. The paper uses the standard bulk potential with its corner ambiguity set to zero.

Write $\xi=f l+Zn+\chi$ with $Z|_{\mathcal N}=0$ and $\chi$ tangent to the cuts. Define $W=-n(Z)|_{\mathcal N}$, $K=f\kappa_l+\mathcal L_l f+W$ and $J_\mu=q_\mu{}^\nu[l,n]_\nu$. Contracting $\nabla\xi$ with $2l_{[\mu}n_{\nu]}$ gives $Q_\xi^{\rm g}|_\Sigma=e(K+\chi\cdot J)/(16\pi G)$: the $Z$ term is zero as a value but its transverse derivative is not zero. In the variation, after $Q_{\delta\xi}$ has removed the variation of the generator itself, the potential subtraction removes the remaining $\delta K$ contribution, leaving the expansion, boost and strain terms of Eq. (23):

$$16\pi G\, k_\xi^{\rm g}|_\Sigma=K\delta e+\chi^\mu\delta(eJ_\mu)-fe(2D_\delta\theta_l+B^{AB}\delta q_{AB}).$$

**Component reconstruction.** For $ds^2=-2A(v)dv\,dr+rB(v)dv^2+P(v,r)dx^2+Q(v,r)dy^2$ and $\xi=f(v)\partial_v+rj(v)\partial_r$, take $l=\partial_v+rB\partial_r/(2A)$, $n=\partial_r/A$, with $A,P,Q>0$. At $r=0$, $b=\delta A/A$, $W=-j+fB/(2A)$, $\kappa_l=(A'+B/2)/A$, $\theta_l=\partial_v\ln\sqrt{PQ}$. The direct Komar contraction gives $K$; for $h_{\mu\nu}=\delta g_{\mu\nu}$ and $\Theta^r_{\rm g}\propto \nabla_\nu h^{r\nu}-\nabla^r h$, the component expression (suppressing the cut volume basis and $16\pi G$) is $\delta(\sqrt{PQ}K)-fA\sqrt{PQ}(\nabla_\nu h^{r\nu}-\nabla^r h)$. Wolfram components in the xAct kernel give exactly the displayed formula for arbitrary variations within this ansatz, and directly reproduce Raychaudhuri with nonzero shear. The general shift term and unrestricted matter term are from the paper, not from this check.

## What makes a clock admissible? (Sec. IV and App. A, pp. 4, 8–9)

Take $\zeta=fl+Zn$ with $f>0$ on the boundary. If $v$ labels cuts, put $\tau=(\mathcal L_l v)^{-1}$. From $n|_{\mathcal N}=-\tau dv$ in a compatible extension and $\mathcal L_l dv=d(\mathcal L_l v)$, the tangential projection of $\mathcal L_\zeta n=f\mathcal L_l n-df$ requires $D_A\ln f=D_A\ln\tau$. Thus $f=\tau F(v)$ on each connected cut. The normal projections give $\delta_\zeta\psi=\mathcal L_l f$ and set the first transverse derivative of $f$. Separately, require $l^\mu n^\nu\mathcal L_\zeta g_{\mu\nu}=W-\kappa_\zeta=0$, where $\kappa_\zeta=f\kappa_l+\mathcal L_l f$. This fixes $W$ rather than prescribing a new tangential condition. Hence $K=2\kappa_\zeta$ and $\delta_\zeta\varphi=-\mathcal L_l f$. Both identities for the normal metric and the derivative of $\zeta^2$ were also checked by components in the metric above.

Choose $F$ locally so that $\kappa_\zeta>0$. Since $\zeta^2=-2fZ$, $n(\zeta^2)=2f\kappa_\zeta>0$ on the boundary, and the clock is timelike just off it on the $-n$ side. $T_\zeta=\kappa_\zeta/(2\pi)$ is invariant under null-frame boosts when $f\to e^{-\sigma}f$, and is conjugate to the entropy defined below. It is not a detector temperature derived from a response function. A different $F(v)$ is a physical clock choice ($dt=dv/F$); a nonconstant rescaling must also change the transverse jet to preserve the normal metric.

## Heat and Raychaudhuri (Secs. V–VI, pp. 5–6)

With $\xi=\zeta+\chi$, set $\not\delta E=\int_\Sigma k_\xi$, $\mathbf J_\mu=eJ_\mu/(16\pi G)$, and split $B^{AB}\delta q_{AB}=N^{AB}\delta q_{AB}+2\theta_l\delta e/(me)$. The trace and $D_\delta\theta_l$ terms together with $2\kappa_\zeta\delta e$ define heat:

$$\begin{aligned}
\alpha_\zeta:=\not\delta s_\zeta&=\frac{1}{4G}\big[\delta e-\beta(e D_\delta\theta_l+\theta_l\delta e/m)\big],\qquad \beta=f/\kappa_\zeta,\\
\not\delta E&=\int_\Sigma(T_\zeta\alpha_\zeta+\chi^\mu\delta\mathbf J_\mu)-\frac{1}{16\pi G}\int_\Sigma fe N^{AB}\delta q_{AB}+\not\delta H_\xi^m.
\end{aligned}$$

This split is a choice, not a uniqueness result of CPS. On the actual flow, $\delta_\zeta e=f\theta_l e$, $\delta_\zeta\theta_l=f\mathcal L_l\theta_l$ (transport the frame as well as the metric), and $b[\delta_\zeta]=-2\mathcal L_l f$. Thus the terms proportional to $f\theta_l\mathcal L_l f/\kappa_\zeta$ cancel and

$$\alpha_\zeta[\delta_\zeta]=\frac{f^2e}{4G\kappa_\zeta}\left(\kappa_l\theta_l-\mathcal L_l\theta_l-\frac{\theta_l^2}{m}\right)=\frac{f^2e}{4G\kappa_\zeta}(N^{AB}N_{AB}+R_{ll}).$$

The last equality is the nonaffine, twist-free Raychaudhuri equation with $R_{ll}=8\pi G T_{ll}$ by the Einstein equation. Under the NEC the rate is non-negative, not necessarily positive; a contracting spherical light cone in Minkowski space has negative area rate but zero production. Along this evolution $\delta_\zeta q_{AB}=2fB_{AB}$, so the news term removes exactly the shear part of $T_\zeta\alpha_\zeta[\delta_\zeta]$ from the energy balance. The remaining geometric term is $\int f^2 e\,T_{ll}$, not the separate matter surface-charge variation. The time integral is monotone on this family of histories, not a sign statement on arbitrary variations or tangential shifts. Mathematica reproduced the split and cancellation.

## HWZ and what integrability really requires (Sec. VII; App. B, pp. 6–12)

At a nonextremal bifurcate Killing horizon use horizon-preserving identifications, fixed affine $k,v$ with $k(v)=1$, $v=0$ at bifurcation, and $\zeta_0=\kappa_0 v k$, $v>0$. Because $\theta_{k,0}=N_0=0$, the coefficient $\beta_0=v$ gives $\alpha_{\zeta,0}=(\delta e-v e_0\delta\theta_k)/(4G)$, exactly the first variation of $e(1-v\theta_k)/(4G)$. For vacuum, differentiating this density along $k$ and applying affine Raychaudhuri gives $ve[N^2-(m-1)\theta_k^2/m]/(4G)$. When additionally $\theta_1=0$, the second variation of this rate is $ve_0(N^{(1)})^2/(2G)$ as in Eq. (57); this equals twice the quadratic coefficient in the exact clock rate divided by $\kappa_0 v$. Mathematica reproduced the coefficient and the factor of two. First-order matching alone gives neither nonlinear closure nor a statement about total energy integrability.

For exact closure, set $e=a e_*$ with $\delta e_*=0$, $a>0$, and $b=2\delta\varpi$. With $X=a^{1/m}e^{-\varpi}\theta_l$ and $Y=a^{(m-1)/m}e^{\varpi}\beta$, the product rule gives $Y\delta X=\beta(a\delta\theta_l+\theta_l\delta a/m-a\theta_l\delta\varpi)$. Thus

$$\alpha_\zeta=\frac{e_*}{4G}(\delta a-Y\delta X),\qquad \delta\alpha_\zeta=-\frac{e_*}{4G}\delta Y\wedge\delta X.$$

On a regular pointwise patch with $\delta X\ne0$, closure is $Y=\mathcal F(X;x)>0$ with all coefficients at the cut point $x$ held fixed; the primitive is $e_*(a-\int^X\mathcal F)/(4G)$. On the area-only sector $\delta X=0$. The comparison density $s_{\rm int}=e(1-\beta\theta_l)/(4G)$ differs at the level of variations by $e_*X\delta Y/(4G)$, which vanishes at the stationary reference but is not zero in general. At fixed $b=0$ and fixed $\beta$, the curl is proportional to $(d-3)\delta e\wedge\delta\theta_l$ and hence vanishes in $d=3$. Mathematica checked the canonical pair, the curl and the comparison term by differentiation. This is pointwise closure: integration over $\Sigma$ can admit spatial cancellations, and global exactness also requires vanishing periods.

An algebraic $Y=\mathcal F$ does not automatically give a physical clock: $C=\tau(\beta^{-1}-\kappa_l-\mathcal L_l\ln\tau)$ must be cut-constant and equal $\partial_v\ln F$ (or be used to solve for $F$ if it has not yet been fixed). The actual flow must preserve the sector. In the area sector, substitution of the flow into $\delta X$ gives $\delta_\zeta X=a^{1/m}e^{-\varpi}(\kappa_\zeta\theta_l-f(N^2+R_{ll}))$; a preserved area sector under the NEC must have $\theta_l\ge0$. The paper's broader suggestion that no integrable surface charge will obey a second law without extra restrictions is not proved.

## Translation to the regional problem

Keep the vault's $\omega=\delta\theta$ and orient the two outward cut terms oppositely. Here $\Theta$ is the *bulk spacetime* potential; it is not the vault's boundary-improved integrated $\theta$. For a null-boundary extension of the Harlow–Wu prescription, first specify the boundary Lagrangian, corner potential and allowed variations, then translate the Lee–Wald representative used here. A small sewing test is to identify $q,l,n$ and $f$ on the interface but initially allow different $W$ on either side: Eq. (23) has a residual coefficient of $\delta e$ even after the values of the generators agree. Match the jet as well (here $W=\kappa_\zeta$), or show that the proposed boundary prescription cancels the mismatch. For the heat part, use $-e_*\delta Y\wedge\delta X/(4G)$ as a test of which proposed matching restrictions remove field-space curl; do not infer a Hamiltonian from positive contraction with the clock. The full two-region cancellation with additional corner and matter sectors is not established in this paper or by the component check.
