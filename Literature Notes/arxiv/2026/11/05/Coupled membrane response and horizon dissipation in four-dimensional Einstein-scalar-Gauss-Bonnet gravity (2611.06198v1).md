---
paper id: 2611.06198v1
title: Coupled membrane response and horizon dissipation in four-dimensional Einstein-scalar-Gauss-Bonnet gravity
authors:
  - Yan-Heng Jin
  - Wen-Biao Han
publication date: 2026-11-04T09:13:58
abstract: |-
  The Dirichlet boundary variation of four-dimensional Einstein-scalar-Gauss-Bonnet gravity defines coupled metric and scalar membrane responses. Their constrained quadratic work gives horizon absorption and a stationary-cut Wald entropy balance. Static-family data and outgoing monopole radiation then determine a conditional leading slow-mode rate near a simple turning point.
comments: "Downloaded v1: 22 pages, including two technical appendices and references"
url: https://arxiv.org/abs/2611.06198v1
summary: "Action-to-response-to-entropy reconstruction retaining the stretched-horizon regulator, scalar-induced expansion and finite-cut endpoint terms."
tags: []
---

# Result and Scope

On the GR-connected, regular, nonextremal spherical-background branch, the source obtains positive constrained quadratic absorption with shear weight $\mathcal A$ and scalar weight $\Delta_H$. Its relation to Wald entropy is a stationary-endpoint physical-process balance. Between arbitrary cuts, entropy-rate and temporal-storage differences remain. The slow turning-point rate additionally assumes a single adiabatic mode, fixed asymptotic scalar source and outgoing radiation.

Reason codes: T1-boundary; T1-charge; T1-Wald-CPS; T2-model. Immediate use: an explicit Dirichlet boundary functional gives both canonical source responses, so scalar work cannot be omitted when comparing regional membrane energy and horizon entropy. The paper does not establish a general local second law, a complete regional CPS quotient, or equality with canonical energy for arbitrary perturbations.

# Source Tree and Reading Route

The entire 22-page pinned PDF and 103,615-byte TeX were inspected. This dense article is treated in monograph mode despite its page count.

| Cluster / full section tree | Construction and dependency |
|---|---|
| 1 Introduction | Defines the coupled-response question and states branch/order restrictions. |
| 2 Membrane paradigm; 2.1 Exterior description | EsGB action, field equations and curvature conventions. |
| 2.2 Boundary variation and membrane sources | Dirichlet completion, interior-to-exterior normal and two momenta. |
| 2.3 Static spherical backgrounds and horizon limit | Regular branch, Gaussian null gauge, lapse regulator and variation order. |
| 2.4 Linear membrane response and interpretation | Five response components; shear/bulk viscosities are only part of the response. |
| 2.5 Surface balances and horizon constraints | Boundary Ward identity, null/Codazzi projections and teleological constraint. |
| 3 Horizon absorption; 3.1 Transport and equilibrium entropy | Intrinsic entropy extension and canonical-density equilibrium subtraction. |
| 3.2 Coupled work | Mixed expansion-scalar work, storage and positive constrained absorption. |
| 3.3 Entropy between cuts | Cut integration before null limit; entropy-rate/storage endpoints. |
| 4 Slow dynamics; 4.1 Static family and effective potential | Fixed-$S_W$ first law and scalar-source Legendre transform. |
| 4.2 Absorption and outgoing radiation | Two friction channels and quantitative slow-limit bounds. |
| 4.3 Evolution and growth/decay rate | Conditional leading rate and its sign change at a simple turning point. |
| 5 Discussion | Nonspherical, rotating and direct radial-evolution tests remain future work. |
| A Boundary variations; A.1 Momenta/signs; A.2 Observer variations; A.3 Background data; A.4 Scalar variation/finite balances; A.5 Linear responses/balances | Generalized-delta contractions, observer-frame variations, regulator scaling and matching to bulk equations. |
| B Membrane energy; B.1 Integrated energy/entropy rate; B.2 Spherical entropy balance | Cancellation of dangerous density/flux terms and independent spherical null-equation route. |

Essential route: 2.1–2.3 → 2.4–2.5 → 3.1–3.3. Technical reference: all of A and B. Read 4 only after imposing its extra low-frequency and static-family assumptions. References and acknowledgment do not provide independent evidence for the calculations.

# Action, Normal Conventions and Canonical Sources

Use signature $(-+++)$ and $R^\mu{}_{\nu\rho\sigma}=\partial_\rho\Gamma^\mu_{\sigma\nu}-\partial_\sigma\Gamma^\mu_{\rho\nu}+\cdots$. Spacetime, three-dimensional boundary and two-dimensional cut indices are respectively Greek, $a,b$, and $A,B$.

$$\begin{align}
S_{bulk}=\frac1{16\pi G}\int\sqrt{-g}\,[R-2(\nabla\phi)^2+\alpha f(\phi)\mathcal G], \qquad \mathcal G=R_{\mu\nu\rho\sigma}^2-4R_{\mu\nu}^2+R^2.
\end{align}$$

$\phi,f$ are dimensionless, $[\alpha]=L^2$. The source field equations are

$$\begin{align}
E_{\mu\nu}=G_{\mu\nu}-2\nabla_\mu\phi\nabla_\nu\phi +g_{\mu\nu}(\nabla\phi)^2+4\alpha P_{\mu\rho\nu\sigma}\nabla^\rho\nabla^\sigma f=0, \qquad 4\Box\phi+\alpha f_{,\phi}\mathcal G=0,
\end{align}$$

where $P$ is the divergence-free double-dual curvature combination given in 2.1. In particular,

$$\begin{align}
P_{\mu\nu\rho\sigma}=R_{\mu\nu\rho\sigma} +g_{\mu\sigma}R_{\nu\rho}-g_{\mu\rho}R_{\nu\sigma} -g_{\nu\sigma}R_{\mu\rho}+g_{\nu\rho}R_{\mu\sigma} +\frac R2(g_{\mu\rho}g_{\nu\sigma}-g_{\mu\sigma}g_{\nu\rho}).
\end{align}$$

The unit spacelike $n$ points out of the omitted interior, toward the exterior; it is opposite to the exterior region's inner-boundary outward normal. Set $h=g-nn$, $K_{ab}=h_a{}^\mu h_b{}^\nu\nabla_\mu n_\nu$. The Dirichlet action adds

$$\begin{align}
\frac1{8\pi G}\int_{\partial M}\sqrt{-h}\, [K+2\alpha f(J-2\widehat G^{ab}K_{ab})], \quad J=\frac{3K\operatorname{tr}K^2-2\operatorname{tr}K^3-K^3}{3}.
\end{align}$$

Joints and other boundaries are fixed. Replacing a regular on-shell interior defines

$$\begin{align}
\delta S_{mem}=-\delta S_{D,out}\big|_\Sigma =\int_\Sigma\sqrt{-h}\left(-\frac12t_{ab}\delta h^{ab}+j_\phi\delta\phi\right).
\end{align}$$

For $H_{ab}=D_aD_bf$, $H=h^{ab}H_{ab}$ and $W_{ab}=\widehat G_{ab}+K_a{}^cK_{cb}-KK_{ab}+\tfrac12(K^2-K_{cd}K^{cd})h_{ab}$,

$$\begin{align}
8\pi Gt_{ab}=Kh_{ab}-K_{ab}-4\alpha\{h_{ab}(KH-K^{cd}H_{cd})-K_{ab}H-KH_{ab} +2K_{c(a}H_{b)}{}^c+(nf)W_{ab}\},
\end{align}$$

$$\begin{align}
4\pi Gj_\phi=-n\phi+\alpha f_{,\phi}(J-2\widehat G^{ab}K_{ab}).
\end{align}$$

All terms reverse sign under $n\to-n$. A constant shift of $f$ leaves the metric response unchanged in four dimensions; the absolute Wald entropy still shifts topologically.

Appendix A obtains these formulas from rank-three generalized deltas. **Checked:** xTensor canonical contraction gives zero for the $\delta^{acd}_{bij}K^i{}_cH^j{}_d$ polynomial identity and its $H=K$ specialization. The full variation of the four-dimensional Dirichlet action was not independently recomputed. Direct scalar integration by parts fixes the factor $-4n\phi$ and hence the normalization $1/(4\pi G)$.

# Regular Spherical Background and the Regulator

The background is

$$\begin{align}
ds_0^2=-e^{2\delta(r)}N(r)dt^2+\frac{dr^2}{N(r)}+r^2d\Omega_2^2, \qquad \phi=\phi(r),
\end{align}$$

with $N\to1$, $\delta\to0$, $\phi\to\phi_\infty$ at infinity and $N'_H>0$. The source's horizon equations are

$$\begin{align}
(r_H+2\alpha f_{,\phi,H}\phi'_H)N'_H=1, \qquad \phi'_H=-\frac{3\alpha f_{,\phi,H}N'_H}{r_H^2}.
\end{align}$$

On the GR-connected root,

$$\begin{align}
\Delta_H=\sqrt{1-24\alpha^2f_{,\phi,H}^2/r_H^4}>0, \quad \phi'_H=-\frac{6\alpha f_{,\phi,H}}{r_H^3(1+\Delta_H)}, \quad \mathcal A=r_HN'_H=\frac2{1+\Delta_H}, \quad \kappa=\frac12e^{\delta_H}N'_H.
\end{align}$$

Thus $0<\Delta_H\le1$ and $1\le\mathcal A<2$. **Checked:** the quadratic-root regularity relations and $\mathcal A=1-2\alpha N'_Hf_{,\phi,H}\phi'_H$ reduce to zero exactly after imposing the discriminant relation. Existence of a global regular exterior is an additional assumption.

Gaussian null coordinates track the perturbed horizon:

$$\begin{align}
ds^2=2dv\,d\varrho-2\kappa\varrho\,dv^2+2\varrho\beta_A dv\,dx^A +q_{AB}(v,\varrho,x)dx^Adx^B+O(\varrho^2).
\end{align}$$

The generator is $\ell=\partial_v$ with fixed nonaffinity $\kappa$ and asymptotic Killing-time normalization. Write $q=q^{(0)}+\lambda\chi+\cdots$, $\phi=\phi_H+\lambda\psi+\cdots$, $F=f_{,\phi,H}\psi$. The coefficient $X^{(2)}$ is $\tfrac12\partial_\lambda^2X|_0$, not the second derivative itself.

$$\begin{align}
B_{AB}=\tfrac12\dot\chi_{AB},\quad \theta=q_{(0)}^{AB}B_{AB},\quad \sigma_{AB}=B_{AB}-\tfrac12\theta q^{(0)}_{AB},\quad V_A=\mathcal D^BB_{AB}-\mathcal D_A\theta,\quad m_A=\tfrac12\delta\beta_A.
\end{align}$$

Also $\mathcal R_0=2/r_H^2$, $c_H=e^{-\delta_H}/r_H$, $d_H=e^{-\delta_H}f_{,\phi,H}\phi'_H$, $\kappa c_H=\mathcal A/(2r_H^2)$, $\mathcal A=1-4\alpha\kappa d_H$.

Keep $\varepsilon=\sqrt{2\kappa\varrho}>0$ until the amplitude coefficients and observer projections are formed. For example

$$\begin{align}
nf=\varepsilon d_H+\lambda\dot F/\varepsilon+O(\varepsilon^3)+\lambda O(\varepsilon)+O(\lambda^2).
\end{align}$$

The background term times a singular first variation can survive. Density, spatial stress and scalar response carry one redshift factor; momentum $-t_{uA}$ carries none. The observer also varies: $\delta u^A=O(\varepsilon)$ multiplies $t_{AB}^{(0)}=O(1/\varepsilon)$. Dropping either contribution before variation changes the finite response.

# Linear Responses, Ward Identity and the Constrained Expansion

The equilibrium values are $\rho_H=0$, $p_H=\kappa/(8\pi G)$ and $j_H=\alpha\kappa f_{,\phi,H}\mathcal R_0/(4\pi G)$. The five linear responses in 2.4 are

$$\begin{aligned}
8\pi G\delta\rho_H&=-\theta-2\alpha\mathcal R_0\dot F,\\
8\pi G\delta p_H&=\tfrac12\mathcal A\theta+2\alpha d_H\dot\theta -2\alpha\kappa\mathcal D^2F+4\alpha c_H(\ddot F-\kappa\dot F),\\
8\pi G\delta\tau_{AB}&=-\mathcal A\sigma_{AB}-4\alpha d_H\dot\sigma_{AB} +4\alpha\kappa(\mathcal D_A\mathcal D_BF)_{TF},\\
8\pi G\delta\mathcal P_A&=m_A-4\alpha c_H\mathcal D_A\dot F+4\alpha d_HV_A,\\
4\pi G\delta j_H&=-\dot\psi+\alpha\kappa(f_{,\phi,H}\delta\mathcal R+f_{,\phi\phi,H}\mathcal R_0\psi) +2\alpha c_Hf_{,\phi,H}(\dot\theta-\kappa\theta).
\end{aligned}$$

Here $\delta\mathcal R=\mathcal D_A\mathcal D_B\chi^{AB}-\mathcal D^2\chi-\mathcal R_0\chi/2$. Pressure extraction includes the inverse-metric variation, which cancels the trace of the equilibrium $\kappa\chi_{AB}$ term. The constitutive first-rate coefficients are $\eta=\mathcal A/(16\pi G)$ and $\zeta=-\mathcal A/(16\pi G)$; they do not exhaust the mixed/second-generator-derivative response.

Tangential diffeomorphisms of the boundary functional give $D_at^a{}_b=j_\phi D_b\phi$. For cut-normal observers this yields

$$\begin{align}
u(\rho)+(\rho+p)\Theta+\mathcal D_a\mathcal Q^a+2a_a\mathcal Q^a +\Pi^{ab}\varsigma_{ab}=-j_\phi u(\phi).
\end{align}$$

The redshifted linear energy and spatial balances reduce to

$$\begin{align}
(\partial_v-\kappa)(\theta+2\alpha\mathcal R_0\dot F)=0, \qquad \dot m_A-\mathcal AV_A-4\alpha\kappa c_H\mathcal D_A\dot F=0.
\end{align}$$

The Hessian divergence uses $\mathcal D^B(\mathcal D_A\mathcal D_BF-q_{AB}^{(0)}\mathcal D^2F)=\mathcal R_0\mathcal D_AF/2$. XCoba independently reproduces the round-sphere curvature $2/r_H^2$. Full angular observer-projection matching remains Source-derived.

Future stationarity excludes the homogeneous $e^{\kappa v}$ mode, hence

$$\begin{align}
\theta=-2\alpha\mathcal R_0 f_{,\phi,H}\dot\psi.
\end{align}$$

A slow exponential mode with $s\ne\kappa$ satisfies the same linear constraint without needing future decay of that mode. This does not justify imposing future stationarity on an arbitrarily growing nonlinear history.

# Equilibrium Subtraction, Work and Positive Absorption

Choose the explicit intrinsic extension

$$\begin{align}
S_{intr}=\frac1{4G}\int\sqrt q\,[1+2\alpha f\mathcal R],\qquad I_{eq}=T_0S_{intr},\qquad T_0=\kappa/(2\pi).
\end{align}$$

For a round stationary cut, $S_W=\pi r_H^2/G+4\pi\alpha f_H/G$. On a closed two-dimensional cut, variation of $\int\sqrt q f\mathcal R$ gives Hessian metric terms plus $f_{,\phi}\mathcal R\delta\phi$; its Einstein-tensor term vanishes in two dimensions. The equilibrium responses are

$$\begin{align}
s_{eq,AB}=\frac\kappa{8\pi G}[q_{AB}+4\alpha(\mathcal D_A\mathcal D_Bf-q_{AB}\mathcal D^2f)], \qquad j_{eq}=\frac{\alpha\kappa}{4\pi G}f_{,\phi}\mathcal R.
\end{align}$$

Subtract canonical densities $\sqrt q\,s^{AB}/2$ and $\sqrt q\,j$, including the varying measure. Subtracting raw component functions would miss the curvature/area cancellation. For $s_W\ne0$, $\eta/s_W=\mathcal A/[4\pi(1+4\alpha f_H/r_H^2)]$; $f\mapsto f+C$ changes this absolute ratio although fixed-topology entropy differences and transport do not change.

The remaining response work is source (42)–(43):

$$\begin{align}
\delta p_{neq}\theta+\delta\tau_{neq}^{AB}\sigma_{AB}+\delta j_{neq}\dot\psi =\frac{\mathcal A\theta^2/2-\mathcal A\sigma^2-2\dot\psi^2 -8\alpha\kappa c_Hf_{,\phi,H}\theta\dot\psi}{8\pi G} +\partial_v\mathcal K_2,
\end{align}$$

$$\begin{align}
\mathcal K_2=\frac{\alpha d_H\theta^2-2\alpha d_H\sigma^2 +4\alpha c_Hf_{,\phi,H}\theta\dot\psi}{8\pi G}.
\end{align}$$

**Checked:** Mathematica independently contracts the three nonequilibrium response expressions with their rates. Product rules reproduce the displayed work and storage exactly, including the negative shear-storage sign. After imposing the linear horizon constraint and branch identities, the residual against

$$\begin{align}
-\mathcal P_2+\partial_v\mathcal K_2,\qquad \mathcal P_2=\frac{\mathcal A}{8\pi G}\sigma^2+\frac{\Delta_H}{4\pi G}\dot\psi^2
\end{align}$$

is zero. In particular $1-12\alpha^2f_{,\phi,H}^2\mathcal A/r_H^4=\Delta_H$. Scalar absorption is not just $-\delta j\dot\psi$; expansion work changes its coefficient. The unconstrained quadratic form need not be positive.

# Regulated Density, Entropy Rate and Endpoint Terms

At nonzero lapse $\mathcal N$, integrate over a closed cut first. The flux and acceleration combine exactly into $\mathcal D_A(\mathcal N^2\mathcal Q^A)$, whose cut integral vanishes. Put $\mathcal E_{mem}=\int\sqrt q\mathcal N\rho$. The remaining work balance contains a lapse-gradient term and the three work contractions. Appendix B.1 evaluates the density using shifted rates $\overline{\mathcal B}=\dot q/2-\mathcal L_wq/2$:

$$\begin{aligned}
\mathcal N\rho={}&-\frac1{8\pi G}\left[\bar\vartheta+2\alpha\mathcal R\overline{\dot f} +4\alpha(\overline{\mathcal B}^{AB}\mathcal D_A\mathcal D_Bf-\bar\vartheta\mathcal D^2f)\right]\\
&-\frac{\alpha\overline{\dot f}}{2\pi G\mathcal N^2}
(\bar\vartheta^2-\overline{\mathcal B}_{AB}\overline{\mathcal B}^{AB})+O(\mathcal N^2).
\end{aligned}$$

Each rate is $O(\lambda)$, so the pole is $O(\lambda^3/\mathcal N^2)$ and contributes no coefficient at orders 0, 1 or 2 **when extracted at fixed nonzero lapse**. This is not a uniform finite-amplitude null-limit estimate. In fixed-nonaffinity gauge the lapse-gradient factor is $O(\mathcal N^2)$ and its bounded quadratic density coefficients vanish in the limit.

Two integrations by parts give

$$\begin{align}
\dot S_{intr}=\frac1{4G}\int\sqrt q\,[\vartheta+2\alpha\mathcal R\dot f +4\alpha(\mathcal B^{AB}\mathcal D_A\mathcal D_Bf-\vartheta\mathcal D^2f)].
\end{align}$$

Comparing density coefficients gives $\lim\mathcal E_{mem}^{(n)}=-\dot S_{intr}^{(n)}/(2\pi)$ for $n\le2$. **Checked:** the second-order determinant/area expansion is reproduced symbolically; the entropy includes $q^{(2)},\psi^{(2)}$ as well as first-order squares. The full nonspherical density cancellation above remains Source-derived.

Combining equilibrium work, residual work and density gives

$$\begin{align}
(\partial_v-\kappa)\dot S_{intr}^{(2)}=-2\pi\int dA_0\mathcal P_2+2\pi\dot K_2, \qquad K_2=\int dA_0\mathcal K_2,
\end{align}$$

$$\begin{align}
T_0[S_{intr}^{(2)}]_i^f=\int_i^f dv\int dA_0\mathcal P_2 +\frac1{2\pi}[\dot S_{intr}^{(2)}]_i^f-[K_2]_i^f.
\end{align}$$

**Checked:** the integration signs and $2\pi$ factors. Only when the endpoint rates/storage vanish does this become $T_0\Delta S_W^{(2)}=\int dv\,dA_0\mathcal P_2\ge0$. No pointwise arbitrary-cut entropy-increase theorem follows from this integrated statement.

# Appendix B.2: Independent Spherical Null-Equation Route

For $ds^2=-\mathsf F(v,\varrho)dv^2+2dv\,d\varrho+r(v,\varrho)^2d\Omega_2^2$, impose $\mathsf F(v,0)=0$ and $\partial_\varrho\mathsf F(v,0)=2\kappa$. The exact horizon null equation is

$$\begin{align}
[r-4\alpha(\dot r f_{,\varrho}+r_{,\varrho}\dot f)](\ddot r-\kappa\dot r) +2\alpha(1-2\dot r r_{,\varrho})(\ddot f-\kappa\dot f)+r^2\dot\phi^2=0.
\end{align}$$

**Checked:** xCoba generated the curvature of this general two-function metric. It returns $R_{vv}=2(\kappa\dot r-\ddot r)/r$ and

$$\begin{align}
P_{v\rho v\sigma}\nabla^\rho\nabla^\sigma f =\frac{2(\dot r f_{,\varrho}+r_{,\varrho}\dot f)(\ddot r-\kappa\dot r) -(1-2\dot r r_{,\varrho})(\ddot f-\kappa\dot f)}{r^2}.
\end{align}$$

Combining with the scalar stress in $E_{vv}=0$ reproduces the source null equation, without using the membrane response. This check is spherical; it is not a four-dimensional general angular perturbation check.

With $W=r^2+4\alpha f$, the first-order constraint is $\dot W^{(1)}=0$. Substitute $\dot r^{(1)}=-2\alpha f_{,\phi,H}\dot\psi/r_H$ into the expanded exact equation. **Checked:** Mathematica reproduces

$$\begin{align}
(\partial_v-\kappa)\dot W^{(2)}=-2r_H^2\Delta_H\dot\psi^2 +\frac{32\alpha^2f_{,\phi,H}^2}{r_H^2}(\alpha d_H-r_H^2c_H)\dot\psi\ddot\psi,
\end{align}$$

and $K_2=8\alpha^2f_{,\phi,H}^2(\alpha d_H-r_H^2c_H)\dot\psi^2/(Gr_H^2)$. Multiplication by $\pi/G$ matches the spherical entropy equation exactly.

# Fixed-Source Slow Dynamics Near a Turning Point

Take a static family at fixed $S_W,\alpha$, parametrized by $\Phi=\phi|_H$, with $N=1-2GM/r+\cdots$, $\phi=\phi_\infty+Q/r+\cdots$. The first law is $dM=T\,dS_W-Q\,d\phi_\infty/G$. For $Q_{,\Phi}\ne0$ the fixed-source potential is

$$\begin{align}
E_{eff}(\Phi;\phi_{ext})=M(\Phi)+[\phi_\infty(\Phi)-\phi_{ext}]Q(\Phi)/G.
\end{align}$$

Its first derivative is $Q_{,\Phi}(\phi_\infty-\phi_{ext})/G$ and its equilibrium curvature is $Q_{,\Phi}\phi_{\infty,\Phi}/G$. **Checked:** both derivatives with the first-law substitution. Treating $M(\Phi)$ alone as the potential would describe different external sources.

For a spherical slow mode,

$$\begin{align}
P_H=\frac{r_H^2\Delta_H}{G}\dot\Phi^2,\qquad P_\infty=\frac{Q_{,\Phi}^2}{G}\dot\Phi^2,
\end{align}$$

where outgoing $\phi=\phi_{ext}+Q(t_{ext}-r_*)/r+\cdots$ and the $-2(\nabla\phi)^2$ normalization fix the monopole factor. Neglecting kinetic/storage corrections gives

$$\begin{align}
(r_H^2\Delta_H+Q_{,\Phi}^2)\dot\Phi =-Q_{,\Phi}(\phi_\infty-\phi_{ext}),\qquad s=-\frac{Q_{,\Phi}\phi_{\infty,\Phi}}{r_H^2\Delta_H+Q_{,\Phi}^2}.
\end{align}$$

The denominator is positive on the regular branch. At a simple turning point $\phi_{\infty,\Phi}=0$, $\phi_{\infty,\Phi\Phi}\ne0$, the leading rate vanishes and changes sign if $Q_{,\Phi}\ne0$ remains regular.

Required hierarchy: $|s|\ll\kappa$, $|s|r_H\ll1$, all faster modes relaxed, no incoming radiation, a matched quasi-static exterior profile. In addition the storage/absorption ratio is

$$\begin{align}
\frac{(1-\Delta_H)(5-\Delta_H)}{6\Delta_H}\frac{|s|}{\kappa}\ll1.
\end{align}$$

**Checked:** this coefficient follows from differentiating the spherical $K_2$ for a real exponential mode. Merely taking $|s|/\kappa\ll1$ is insufficient uniformly as $\Delta_H\to0$.

# Reusable Objects and Verification Boundary

For the vault's regional variation convention, keep the interior-to-exterior normal and the inverse-metric coefficient $-t_{ab}/2$ together. The reusable objects are the paired boundary momenta, their common diffeomorphism Ward identity, the intrinsic entropy functional and the constrained absorption/storage decomposition. The membrane replaces a regular interior on shell; that is not an independently posed arbitrary regional IBVP. Closed cuts and fixed joints remove spatial/joint terms here; artificial faces with open corners require additional terms.

- **Verified:** generalized-delta boundary contraction; spherical curvature; regular-branch algebra; work/storage contraction and discriminant simplification; second-order area expansion; finite-cut integration signs; general spherical null curvature contraction and its quadratic entropy reduction; fixed-source derivatives and storage hierarchy.
- **Assumptions:** regular nonextremal spherical background; GR-connected $\Delta_H>0$ branch with a global asymptotically flat exterior; fixed nonaffinity/time normalization; closed cuts and fixed joints; coefficient extraction at nonzero lapse before the null limit; future stationarity or $s\ne\kappa$ for the linear rate constraint; the extra slow-mode assumptions stated above.
- **Source-derived:** full Dirichlet-action tensor variation, general angular observer-response calculation, nonspherical density/flux cancellation through quadratic order and matched adiabatic exterior argument. Their technical chains are reconstructed above; they are not globally certified by the spherical checks.
- **Failed:** no source contradiction established by the accepted checks. Early local CAS expressions had replacement-rule precedence errors; explicit parentheses produced zero derivative residuals. An initial xCoba component substitution left unevaluated basis objects; specifying components before basis conversion resolved it. These were check-setup errors, not source failures.
- **Blocked:** a numerical growth-rate comparison needs a specified $f(\phi)$, an actual regular fixed-entropy static family and an independently solved radial eigenproblem/evolution. Those data are not supplied as an evaluated example here; no numerical rate is claimed.
- **Not verified:** global event-horizon existence, complete nonspherical perturbative membrane matching, arbitrary-cut local positivity, extremal/rotating generalization and uniform control of the $\lambda^3/\mathcal N^2$ remainder at finite amplitude.

Sources: [pinned abstract](https://arxiv.org/abs/2611.06198v1), [PDF](https://arxiv.org/pdf/2611.06198v1), [TeX](https://arxiv.org/src/2611.06198v1). Extracted text supplied navigation; rendered pp. 9–10 and 19–20 confirmed work/storage signs, regulator orders and the spherical null equation. All source/CAS artifacts remain outside the vault. Overview: [[2026_11_05_overview]].
