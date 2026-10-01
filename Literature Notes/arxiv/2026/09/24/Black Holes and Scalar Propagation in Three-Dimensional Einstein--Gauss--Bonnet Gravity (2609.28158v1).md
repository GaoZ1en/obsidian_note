---
paper id: 2609.28158v1
title: "Black Holes and Scalar Propagation in Three-Dimensional Einstein--Gauss--Bonnet Gravity"
authors:
  - Cendikiawan Suryaatmadja
publication date: 2026-09-23T14:08:47Z
abstract: |-
  We derive an analytic black-hole family in three-dimensional scalar--tensor Einstein--Gauss--Bonnet gravity with positive coupling. A single implicit equation determines the static circular metric and a scalar linear in time. We show that these solutions exhaust regular nonextremal exteriors with the stated AdS boundary conditions and a fixed nonzero coefficient of time in the scalar. The coupled metric and scalar perturbations have one propagating degree of freedom. On one branch, its kinetic coefficient is positive, its equation is hyperbolic throughout the exterior, and its bulk spatial energy is positive for perturbations of compact support. Scalar signals can cross the metric horizon outward, so exterior evolution needs information from the interior. For linear perturbations with the original metric and scalar boundary values fixed, nonzero compact initial master displacements with zero velocity can evolve only until their first contact with the AdS boundary. We derive this restriction from the original metric and scalar equations.
comments: "17 pages, 0 figures"
url: https://arxiv.org/abs/2609.28158v1
summary: "An explicit AdS3 coupled system where positive bulk master energy and zero master flux do not ensure evolution with the original fixed sources; the metric horizon also admits incoming scalar information."
tags: []
---

# Why this is immediately useful

This gives a concrete boundary-value test for AdS quantization and regional evolution. A healthy bulk master equation has regular, zero-flux solutions at AdS, yet fixing the **original** metric and scalar sources imposes an additional equation on the master boundary trace. For compact initial displacement and zero initial velocity, the paper proves that fixed-source evolution cannot continue beyond first optical contact with AdS. Separately, the metric horizon is not an outflow boundary for the coupled scalar: exterior evolution needs interior information.

The reusable objects are the original covariant symplectic potential, the regular reconstruction map, the source-to-master map and the boundary energy balance. This is not a probe-scalar spectrum on an otherwise fixed black hole. Reason codes: `T1-boundary`, `T1-Wald-CPS`, `T1-charge`, `T2-spectral`, `T2-model`.

This note treats **v1**, the version in the official September 24 issue. OAI metadata also records v2 at 24 September 14:35 UTC, after the target announcement cutoff. That later revision was not downloaded or analyzed.

# Source tree and reading guide

Although only 17 pages, this is a dense formula-chain paper with three essential appendices, so this note uses monograph-mode coverage. Sources are the official versioned PDF and `main.tex`; no ancillary numerical dataset is provided.

| Source | Purpose, main objects and dependency |
|---|---|
| §1 Introduction | Scalar–tensor action, signature, couplings and Einstein branch. |
| §2.1 Field equations | $C_{ab},Q_{ab},J^a$ and diffeomorphism identity. |
| §2.2 Family and assumptions | Implicit $H(r,X)=0$, fixed sources and classification domain. |
| §2.3 Branch selection | Proper-distance equations rule out the alternate factor and branch joining. |
| §2.4 Global solution | Unique positive root, single horizon, EF regularity and asymptotics. |
| §2.5 Conserved charges | Radially varying time-translation surface variation and shift-current balance. |
| §3.1 Propagation | Metric–scalar demixing, principal tensor and causal cones. |
| §3.2 Circular sector | $U_c$, optical coordinate and positive weighted wave action. |
| §3.3 Angular sector | $U_k$, potential and spatial square completion. |
| §4 AdS sources; §4.1 Source/master map; §4.2 First contact | Original boundary data constrain the master trace; precise contact theorem. |
| §5 Discussion | Positive bulk energy versus full stability; interior and nonlinear limits. |
| Appendix A.1 Circular equations | Recover $n,\pi$ and obtain the master equation by integrability. |
| Appendix A.2 Angular equations | Residual gauge removal, four-by-four solve, local field reconstruction, zero-frequency regularity and Fourier bounds. |
| Appendix A.3 Original-action normalization | $P^{abcd},\Theta^a,Q_\xi^{ab}$; symplectic current fixes both master action coefficients. |
| Appendix B.1 Boundary action and flux | Horndeski boundary term, counterterm, scalar momentum and original symplectic flux. |
| Appendix B.2 Boundary expansion | Fefferman–Graham responses, coordinate conversion and master regularity. |
| Appendix C.1 Boundary uniqueness | Sideways energy estimate for a singular radial equation. |
| Appendix C.2 Contact proof | Auxiliary inner problem, finite propagation, even extension and contradiction. |
| Appendix C.3 Interior information | Incoming/outgoing combinations, energy balance and unaffected region. |

**How to read this dense paper.** Read §§2.2, 3 and 4 for the construction, then B.2 and C for the boundary obstruction. A.1–A.3 are essential when importing a master variable into the vault's CPS conventions. The classification proof in §2.3 and the full boundary variation in B.1 are technical reference; neither may be replaced by assuming the gauge-fixed ansatz in the original variation. Historical discussion and references are background.

# Action, covariant equations and conventions

Use signature $(-++)$, $G_N=1$, $\alpha>0$, bare $\Lambda=-\ell^{-2}$, angular period $2\pi$, and
$$
I=\frac1{16\pi}\int\sqrt{-g}\left[R+\frac2{\ell^2}
+\alpha\{4G^{ab}\nabla_a\phi\nabla_b\phi-4X\Box\phi+2X^2\}\right]d^3x,
\qquad X=(\nabla\phi)^2.
$$
There is no $-1/2$ in $X$. On the Einstein branch,
$$
\Lambda_\alpha-\alpha\Lambda_\alpha^2=-\ell^{-2},\quad
\Lambda_\alpha<0,\quad \ell_\alpha^{-2}=-\Lambda_\alpha,\quad
B_\infty=1-2\alpha\Lambda_\alpha=\sqrt{1+4\alpha/\ell^2}.
$$
Define $v_a=\nabla_a\phi$, $C_{ab}=\nabla_a\nabla_b\phi+v_av_b-Xg_{ab}$, $c=C^a{}_a$, $B=1+2\alpha X$ and
$$
Q_{ab}=C_{ac}C^c{}_b-cC_{ab}+\tfrac12g_{ab}(c^2-C_{cd}C^{cd}).
$$
The source's covariant equations, varied before choosing coordinates, are
$$
E_{ab}=BG_{ab}-(\ell^{-2}+\alpha X^2)g_{ab}+4\alpha Q_{ab}=0,
$$
$$
J^a=8\alpha\left[G^{ab}v_b+(X-\Box\phi)v^a+\tfrac12\nabla^aX\right],
\quad E_\phi=-\nabla_aJ^a,
$$
$$
\frac{E_\phi}{8\alpha}=c^2-C_{ab}C^{ab}+(Xg^{ab}-G^{ab})C_{ab}=0,
\qquad 2\nabla^aE_{ab}+E_\phi\nabla_b\phi=0.
$$
The compact metric and scalar equations were independently checked on the full background family below. Their unrestricted derivation from the action is source-derived; on-shell substitution is not a substitute for that variational derivation.

# The implicit family and the classification argument

Fix $q>0$, $\phi_0$, $\alpha,\ell$, boundary time normalization and angular period. For each real $m$, solve
$$
H(r,X)=r^2(X+\alpha X^2-\ell^{-2})-\frac{q^2}{X}
+2\alpha q^2\log\frac{X}{-\Lambda_\alpha}+m=0.
$$
Then
$$
F=r^2X-\frac{q^2}{X},\quad ds^2=-Fdt^2+\frac{dr^2}{F}+r^2d\theta^2,
\quad \phi=qt+\psi(r),\quad \psi'=\frac{rX}{F}.
$$
Classification is only within a connected static circular exterior with this time-linear scalar ansatz, positive lapse and circumference, $C^3$ finite-radius fields, a smooth nonextremal future horizon with finite $X$, and twice-differentiable AdS falloffs
$$
g_{tt}=\Lambda_\alpha r^2+O(1),\quad
 g_{rr}=-\frac1{\Lambda_\alpha r^2}+O(r^{-4}),\quad
\phi=qt+\log(r/\ell)+\phi_0+O(r^{-2}).
$$
It is not a general Birkhoff theorem.

The proof retains the lapse and off-diagonal equations. In proper distance $\rho$, write $ds^2=-N^2dt^2+d\rho^2+r^2d\theta^2$, $a_\rho=\dot N/N$, $b_\rho=\dot r/r$, $p_\rho=\dot\psi$, and $U_*=X-b_\rho p_\rho$. The mixed equation gives $(p_\rho-a_\rho)U_*=0$, while the radial equation gives $Ba_\rho b_\rho=\ell^{-2}+\alpha X^2>0$. Positivity at infinity and future-horizon regularity fix $B,a_\rho,b_\rho,p_\rho>0$.

On an interval with $U_*\ne0$, the other factor sets $p_\rho=a_\rho$ and $N^2(X+\alpha X^2-\ell^{-2})$ becomes a nonzero constant. It cannot end at a regular point where $U_*=0$, and it cannot reach the horizon with finite $X$ and $N\to0$. Hence $U_*=0$ everywhere. This excludes finite-radius branch joining. It also gives monotone circumference and a constant radial lapse, fixed by the boundary time normalization.

Put
$$
D=\frac{\ell^{-2}-X-\alpha X^2}{B},\qquad S=r^2X^2+q^2.
$$
The remaining radial system is
$$
BF'=2r(\ell^{-2}+\alpha X^2),\qquad
X'=\frac{2rX^2D}{S},\qquad
D'=-\left(1+\frac{2\alpha D}{B}\right)X'.
$$
Direct differentiation verifies $dH/dr=0$ and
$$
H_X=B\left(r^2+\frac{q^2}{X^2}\right)>0.
$$
Together with $H\to-\infty$ at $X\to0^+$ and $H\to+\infty$ at $X\to\infty$, this proves a unique positive analytic root at every $r>0$. At the horizon $X_h=q/r_h$,
$$
m(r_h)=\ell^{-2}r_h^2-\alpha q^2-2\alpha q^2\log\frac{q}{-\Lambda_\alpha r_h},
\qquad m'(r_h)=2\ell^{-2}r_h+\frac{2\alpha q^2}{r_h}>0.
$$
This function covers all real $m$; $F'>0$ gives one nonextremal metric horizon.

In advanced EF time, normalized by $v-t\to0$ at infinity,
$$
\phi=qv+\log(r/\ell)+\phi_0+
\int_r^\infty\frac{q\,d\rho}{\rho[\rho X(\rho)+q]},\qquad
\partial_r\phi\big|_v=\frac{X}{rX+q}.
$$
At the horizon this is $1/(2r_h)$, so the apparent static-coordinate singularity is absent. The component check gives $C^\theta{}_{\theta}=0$, $c=2r^2X^2D/S$ and zero residual in all metric and scalar equations.

Define $d_0=(m+q^2/\Lambda_\alpha)/B_\infty$. Then
$$
X=-\Lambda_\alpha-\frac{d_0}{r^2}+O(r^{-4}),\quad
F=-\Lambda_\alpha r^2-d_0+\frac{q^2}{\Lambda_\alpha}+O(r^{-2}),
$$
$$
\phi=qt+\log(r/\ell)+\phi_0-\frac{q^2}{2\Lambda_\alpha^2r^2}+O(r^{-4}).
$$
The healthy branch is $d_0>0$, equivalently $0<X<-\Lambda_\alpha$ and $D>0$. At $d_0=0$, the scalar quadratic action degenerates; the nonlinear scalar equation survives, so the source identifies strong coupling. For $d_0<0$, the asymptotic kinetic sign is reversed.

# Covariant charge and the shift-current balance

Appendix A.3 supplies, omitting a common $1/(16\pi)$,
$$
P^{abcd}=\frac{1-2\alpha X}{2}(g^{ac}g^{bd}-g^{ad}g^{bc})
+\alpha(g^{ac}v^bv^d-g^{ad}v^bv^c-g^{bc}v^av^d+g^{bd}v^av^c),
$$
$$
\Theta^a=2P^{abcd}\nabla_dh_{bc}-2\nabla_dP^{abcd}h_{bc}
+J^a\pi-4\alpha X\nabla^a\pi+4\alpha Xv^ch^a{}_c-2\alpha Xv^ah,
$$
$$
Q^{ab}_\xi=-2P^{abcd}\nabla_c\xi_d+4\xi_d\nabla_cP^{abcd}
-4\alpha X(v^ag^{bc}-v^bg^{ac})\xi_c.
$$
Here $h_{ab}=\delta g_{ab}$, $h=g^{ab}h_{ab}$, $\pi=\delta\phi$, and the symplectic current uses the variation of $\sqrt{-g}\Theta^a$, not just $\Theta^a$.

For fixed $q,\phi_0,\alpha,\ell$, the mass-direction surface variation is
$$
\delta H_{\partial_t}(r)=\frac{\delta m}{8}+\frac{\alpha q^2}{2}\delta\log X(r),
\qquad \delta M_\infty=\frac{\delta m}{8}.
$$
Using $\delta X=-\delta m/H_X$, the explicit EF component evaluation of these potentials reproduces this expression, with the circle orientation for which BTZ has $\delta M=\delta m/8$. The additive reference energy is boundary-prescription dependent.

The shift current satisfies
$$
J^r=0,\qquad rJ^t=4\alpha q(\log X)',\qquad
Q_{\rm shift}[r_1,r_2]=\frac{\alpha q}{2}\log\frac{X(r_2)}{X(r_1)}.
$$
Although the metric is stationary, $\mathcal L_{\partial_t}\phi=q$. Time translation alone is not an exact symmetry of both fields. Thus the radial difference in $\delta H_{\partial_t}$ is $q\delta Q_{\rm shift}$; it must not be silently treated as a conserved same-surface Hamiltonian charge. This is a direct CPS use case for retaining matter symmetry data when comparing surfaces.

# Coupled characteristic cones

The principal metric equation is $\delta E_{ab}=B\delta G_{ab}(h)+8\alpha\delta G_{ab}(C\pi)+\cdots$. The algebraic replacement $\widetilde h_{ab}=h_{ab}+8\alpha C_{ab}\pi/B$ removes the two-derivative mixing. Eliminating curvature from the scalar equation and differentiating its Hessian dependence gives
$$
Z^{ab}=2(cg^{ab}-C^{ab})-Dg^{ab}+\frac{12\alpha}{B}Q^{ab},\qquad
I^{(2)}_{\rm pr}=-\frac{4\alpha}{16\pi}\int\sqrt{-g}\,Z^{ab}\partial_a\pi\partial_b\pi.
$$
$I^{(2)}$ denotes the coefficient of the squared perturbation parameter. With $y_*=q/(rX)$,
$$
Z^{vv}=-\frac{4Dy_*}{r^2X(1+y_*)^2(1+y_*^2)},\quad
Z^{vr}=D\frac{1-y_*}{1+y_*},\quad Z^{rr}=Dr^2X(1+y_*^2),
$$
$$
Z^{\theta\theta}=\frac{D}{r^2}\frac{3B_\infty^2/B^2-y_*^2}{1+y_*^2}.
$$
All components were reproduced from the covariant expression. On the exterior $0<y_*\le1$ and $D>0$, the angular coefficient is positive. The common time function $T=v-\Delta v(r)$, with
$$
\Delta v'=\frac1{r^2X(1+y_*)(1+y_*^2)},
$$
has negative norm for both $g^{ab}$ and $Z^{ab}$; the scalar norm is $-D(1+2y_*)/[r^2X(1+y_*)^2(1+y_*^2)]$.

The radial scalar rays obey
$$
\frac{dr}{dv}=\frac{r^2X(1+y_*)(1+y_*^2)}2,
\qquad
\frac{dr}{dv}=-\frac{r^2X(1+y_*)(1+y_*^2)}{2y_*}.
$$
At the metric horizon these are $\pm2qr_h$: one ray travels into the exterior. Horizon regularity cannot replace incoming scalar data. Farther inside, $y_*^2=3B_\infty^2/B^2$ marks a degeneracy of angular propagation, beyond the analyzed domain.

# Optical coordinates and circular reconstruction

Use $A=rX+q$, $p=X/A$, and
$$
\tau=v-\int^r z(\rho)d\rho,\quad z=\frac{X(rX-q)}{AS},\qquad
x(r)=\int_r^\infty\frac{X(\rho)}{\rho^2X(\rho)^2+q^2}d\rho.
$$
$x=0$ is AdS and $x$ increases inward; $dx/dr=-X/S$. The integration constant makes $\tau-t\to0$ at infinity. Constant-$\tau$ surfaces are scalar-spacelike; use $T$ above when a common metric/scalar spacelike surface is required.

In the circular parity-even sector, choose $h_{\theta\theta}=h_{rr}=0$, $h_{vv}=-(w_c+2Fn)$ and $h_{vr}=n$. The gauge-invariant $U_c=B w_c$ becomes $-\delta m$ for a mass variation. Define
$$
\lambda_c=\frac{X^2}{BA^2S},\quad
\mathsf a=\frac{rX-q}{8\alpha DqrA},\quad
\mathsf h=\frac{S}{8\alpha DXqr},\quad
\mathsf j=\frac{X^2}{2\alpha DA^2S}.
$$
The reconstruction is
$$
n_r=\lambda_cU_{c,v},\quad
\pi_r=q\lambda_cU_c+\mathsf aU_{c,r}-\mathsf jU_{c,v},\quad
\pi_v-qn=-\mathsf hU_{c,r}-\mathsf aU_{c,v}.
$$
Commuting the derivatives of $\pi$ yields Eq.(44); the optical transformation, with $\mathsf a/\mathsf h=z$ and $\mathsf hX/S=W_c$, gives
$$
I_c^{(2)}=\frac1{16q}\int W_c(U_{c,\tau}^2-U_{c,x}^2)d\tau dx,
\quad W_c=\frac1{8\alpha Dqr},\quad
U_{c,\tau\tau}-W_c^{-1}(W_cU_{c,x})_x=0.
$$
The normalization is fixed in A.3 by the original current, not freely chosen after obtaining the equation. The angular-momentum perturbation is outside this parity sector.

# Angular reconstruction and positive spatial form

For $e^{ik\theta}$, integer $k\ne0$, define
$$
K=k^2+q^2/X+r^2D,\quad \mathfrak b=-\frac{ikBA}{4\alpha Dr^3S},\quad
\mathfrak w=\frac{rDS}{X},\quad w=rD,
$$
$$
\mu=\frac{Xk^2}{rS}+\frac{4\alpha DXr(Xk^2+q^2)}{BSK},\quad
\chi=\frac{X^2k^2(F-k^2)}{r^2S^2}.
$$
The gauge-invariant amplitudes obey
$$
\mathcal U=P+\frac{ikp}{K}V,\quad\Pi=\mathfrak bV,
\quad\mathcal U_r=-\mu\mathcal U-z\mathcal U_v+\Pi,
$$
$$
\Pi_r=\chi\mathcal U+\frac{X^2}{S^2}\mathcal U_{vv}
+[\mu-(\log\mathfrak w)']\Pi-z\Pi_v.
$$
Eliminating $\Pi$ gives, for $U(\tau,x)=\mathcal U(v,r)$,
$$
U_{\tau\tau}-w^{-1}(wU_x)_x+\mathcal V_kU=0,\quad
\mathcal V_k=-\frac{S^2}{X^2}[\mu'+(\log\mathfrak w)'\mu-\mu^2-\chi],
$$
$$
I_k^{(2)}=\frac\alpha{4\pi}\int w(U_\tau^2-U_x^2-\mathcal V_kU^2)d\tau dx.
$$
The real angular harmonic has squared integral one. The weight $\mathfrak w$ belongs to $r$, while $w$ belongs to $x$.

To understand the map back to physical fields, A.2 first removes two residual coordinate transformations in areal advanced gauge. Their $(b,L)$ determinant is $2k^2BK$, so this step is regular. With $\sigma=\partial_v$ acting on amplitudes, define
$$
a_V=\frac{2ik(\sigma+q-rD)}K,\qquad d_V=1+\frac{r(\sigma+q-rD)}K,
\quad h_*=\frac{8\alpha DXqr}{BA^2},\quad j_*=\frac{8\alpha DrX}{BA}.
$$
The four equations solve for $(W,V',\mathcal T,\mathcal C)$ using
$$
\mathsf M=\begin{pmatrix}
h_*&0&\sigma&-ik\\
-Fh_*&a_V-ikd_V/r&k^2(F'-\sigma-F/r+k^2/r)&ik(-rF'+r\sigma+2F-k^2)\\
j_*&0&2\sigma+2K/r&-2ik\\
0&d_V&ik(r\sigma-F+k^2)&r(r\sigma+k^2)
\end{pmatrix}.
$$
Its right side is $-(J_1,J_2,J_3,J_4)^T(P,V)$ from Eq.(53), containing the undifferentiated original constraint equations. Its determinant simplifies to
$$
\det\mathsf M=\frac{16i\alpha DkS\widetilde K}{BA},\qquad
\widetilde K=k^2+q^2/X+2Dq^2r^2/S>0.
$$
This avoids division by $F$ or temporal frequency. Then $V=(\mathcal U_r+\mu\mathcal U+z\mathcal U_v)/\mathfrak b$, $P=\mathcal U-ikpV/K$, and
$$
\pi=P,\quad h_{vv}=-a_VV,\quad h_{v\theta}=d_VV,\quad h_{\theta\theta}=0,
$$
$$
h_{rr}=-2\mathcal T,\quad
h_{vr}=(F-k^2)\mathcal T+ikr\mathcal C,\quad
h_{r\theta}=-ikr\mathcal T-r^2\mathcal C.
$$
The apparent radial integrals from residual gauge parameters cancel after subtracting the full Lie derivative. The constraints give $\delta E_{rr}=\delta E_{vr}=\delta E_{r\theta}=0$; the Bianchi identity and the nonzero factor $p\widetilde K/(qr)$ remove the remaining metric components, then $q\ne0$ removes the scalar equation. This is why the reconstruction includes zero temporal frequency. The source bounds the reconstructed Sobolev norms by $(1+|k|)^8$ times master norms with at most four extra radial derivatives, sufficient for smooth Fourier sums; this estimate remains source-derived.

For spatial positivity, put
$$
\widehat\nu=\frac{4\alpha Dr(Xk^2+q^2)}{BK},\quad
\widehat P_k=k^2\left[\frac F{r^2}+2X+\frac{4\alpha DX}{B}
+\frac{8\alpha D(Xk^2+q^2)}{BK}\right]>0.
$$
Then $\mathcal V_k=\widehat\nu^2+\widehat\nu_x+(\log w)_x\widehat\nu+\widehat P_k$, and
$$
\int w(|U_x|^2+\mathcal V_k|U|^2)dx
=\int w(|U_x-\widehat\nu U|^2+\widehat P_k|U|^2)dx
+[w\widehat\nu|U|^2]_{\rm endpoints}.
$$
This is positive for compact radial support, not automatically for arbitrary boundary values. The characteristic angular coefficient is
$$
c_\theta^2=F/r^2+2X+12\alpha DX/B>0.
$$
Using $B^2+4\alpha BD=B_\infty^2$, it agrees with $Z^{ab}$. The remainder after $c_\theta^2k^2$ has uniformly bounded radial derivatives for $|k|\ge1$ on the stated exterior interval; that functional estimate is part of the source's Fourier construction.

# The original boundary action and the source-to-master map

The outward spacelike normal defines $K_{ij}=\mathcal L_n\gamma_{ij}/2$, $\phi_n=n^a\nabla_a\phi$ and $Y_\partial=\gamma^{ij}D_i\phi D_j\phi$. Appendix B.1 uses
$$
I_\partial=\frac1{16\pi}\int\sqrt{-\gamma}(B_D+c_0),\quad
B_D=2K+4\alpha[K_{ij}D^i\phi D^j\phi-KY_\partial+\phi_nY_\partial+\phi_n^3/3],
$$
$$
c_0=-\frac2{\ell_\alpha}\left(1-\frac{2\alpha\Lambda_\alpha}{3}\right).
$$
No optional finite term is included. With $M^{ij}=K^{ij}-K\gamma^{ij}+\phi_n\gamma^{ij}$,
$$
\Pi_\phi=J_n-8\alpha D_i(M^{ij}D_j\phi),
$$
and the completed variation contains $P^{ij}\delta\gamma_{ij}+\sqrt{-\gamma}\Pi_\phi\pi/(16\pi)+\partial_iC_D^i$. The corner density is
$$
16\pi C_D^i=\sqrt{-\gamma}[2\alpha\phi_n(v^jh_j{}^i-v^ih)+8\alpha M^{ij}v_j\pi].
$$
For the specified Fefferman–Graham expansions, $C_D^i$ and its antisymmetrized variation vanish at infinity. Normal derivatives cancel only after varying before imposing Gaussian normal gauge.

Write $s=t/\ell_\alpha$, $g_{(0)}=-ds^2+d\theta^2$ and $\phi=\eta+f+b_{(2)}z_{\rm FG}+\cdots$. The finite momentum is
$$
\lim\sqrt{-\gamma}\Pi_\phi=-\frac{8\alpha}{\ell_\alpha}\Box_{(0)}f,
\qquad\Box_{(0)}=-\partial_s^2+\partial_\theta^2.
$$
For $f=qt+\phi_0$ it vanishes. The original quadratic scalar boundary variation is $-\alpha(2\pi\ell_\alpha)^{-1}\int(\Box_{(0)}p_0)\delta p_0$, so the antisymmetrized flux vanishes when the scalar and metric sources are fixed. An intrinsic finite term with coefficient $c_\partial=-4\alpha/\ell_\alpha$, while allowing $p_0$ to vary, cancels this scalar boundary equation and defines a different problem.

For $k\ne0$, the finite metric response has equal diagonal entries $a_k$ and an off-diagonal response $j_{(0)}$ satisfying the trace/divergence constraints. In particular,
$$
(\partial_t^2-\Lambda_\alpha k^2)a_k=0,\qquad
p_1=\frac{\partial_t^2-3\Lambda_\alpha k^2-4q\partial_t}{4\Lambda_\alpha^2}p_0+\frac{a_k}{2}.
$$
Converting from Fefferman–Graham to areal advanced gauge and then to the invariant master gives, with $\kappa=k^2+d_0-q^2/\Lambda_\alpha$,
$$
b_k=U_k(\tau,0)=p_{0,k}+\frac{-\Lambda_\alpha k^2+q\partial_\tau}{k^2\kappa}a_k.
$$
Consequently fixed $p_{0,k}=0$ implies
$$
(\partial_\tau^2-\Lambda_\alpha k^2)b_k=0,\qquad
a_k=\frac{\kappa(\Lambda_\alpha k^2+q\partial_\tau)}{\Lambda_\alpha(q^2-\Lambda_\alpha k^2)}b_k.
$$
The inverse was checked modulo the oscillator equation. Fixing the original scalar source is **not** the same condition as freely allowing every regular master trace, nor does it generally set that trace to zero.

At infinity $x=-1/(\Lambda_\alpha r)+O(r^{-3})$ and $w=-\Lambda_\alpha d_0x[1+O(x^2)]$. Both constant and logarithmic angular radial branches lie in $L^2(wdx)$, but only the regular branch has finite unrenormalized gradient energy. The required regularity is $U=b_k+O(x^2)$ and $U_x=O(x)$ plus the oscillator equation. The source requires $C^4$ coefficients and specified radial/time derivative bounds, not just finite energy.

For the circular sector,
$$
W_c=\frac{c_c}{x}[1+O(x^2)],\quad c_c=-\frac1{8\alpha q\Lambda_\alpha d_0}>0,
$$
$$
U_c=u_0+x^2\left[u_2+\tfrac12u_{0,\tau\tau}\log(x/x_0)\right]+\cdots,
$$
$$
\delta\phi_{\log}=-c_cu_{0,\tau},\qquad
\partial_\tau\delta\phi_{\rm finite}=c_c(2u_2+\tfrac12u_{0,\tau\tau}).
$$
Fixed logarithmic coefficient makes $u_0$ constant; fixed mass sets it to zero. Fixed finite source then requires $u_2=0$ and fixes the initial scalar shift. A zero master flux does not impose this last condition by itself.

# First contact, uniqueness and incoming interior data

Let the initial master displacement be smooth, real, nonzero and compactly supported in the open exterior, with zero initial velocity. In the angular statement it has zero angular mean; the circular statement is separate and fixes mass. Define
$$
d=x(r_{\max})\in(0,x_h),\qquad x_h=x(r_h).
$$
The source proves $T_{\max}=d$ as a supremum: solutions exist on every interval of length $T<d$, and no fixed-source solution with the stated regularity exists for $T>d$. It does not assert nonlinear blow-up at $d$ or settle existence on a closed interval ending exactly there.

The upper-bound mechanism is worth retaining. Set $H=\sqrt{w/(-\Lambda_\alpha d_0x)}U$ for angular modes. The equation becomes
$$
H_{xx}-H_{\tau\tau}+\frac nxH_x+Q(x)H=0,\qquad n=1,
$$
with bounded $Q$. For the circular problem, $H=\sqrt{xW_c/c_c}\,U_c/x^2$ gives $n=3$. The regular branches are smooth radial equations in auxiliary dimensions two and four. The angular transformed potential is
$$
Q=-\mathcal V_k-\tfrac12\partial_x^2\log(w/x)
-\tfrac1{2x}\partial_x\log(w/x)-\tfrac14[\partial_x\log(w/x)]^2.
$$
For a time interval where $H(\tau,0)=H_x(\tau,0)=0$, integrate the sideways energy over the shrinking time interval $[\tau_c-(T-x),\tau_c+(T-x)]$. Endpoint squares and $-(n/x)\int|H_x|^2$ are nonpositive; the bounded potential gives $E'(x)\le CE(x)$. Boundary regularity gives $E(\epsilon)\to0$, so Gronwall implies vanishing inside the corresponding triangle.

Compact initial support makes the boundary oscillator's initial value and velocity zero, hence $b_k=0$ as long as sources stay fixed. Zero initial velocity permits even extension through $\tau=0$. If a solution persisted beyond $d$, the triangle uniqueness result would force the initial data to vanish on a larger interval than their support distance allows, a contradiction. Smoothness to every order at the support edge does not evade this argument.

For the lower bound, the paper extends the background slightly inside the metric horizon, where the relevant spatial coefficients remain positive, and uses an auxiliary Dirichlet inner boundary. A self-adjoint comparison wave operator on the regularized radial disk constructs a smooth solution; radial finite propagation ensures it vanishes near AdS for $\tau<d$. Reconstruction then preserves all original sources there. The auxiliary boundary is an existence construction, not part of the asserted physical boundary prescription.

For prescribed inner information, the angular deformed energy uses $w(|U_\tau|^2+|U_x-\widehat\nu U|^2+\widehat P_k|U|^2)$. At $x_h$, put
$$
g_k=(U_{k,\tau}+U_{k,x}-\widehat\nu U_k)_h,\quad
o_k=(U_{k,\tau}-U_{k,x}+\widehat\nu U_k)_h.
$$
Then
$$
E_{\rm def}(T)+\frac{\alpha w_h}{8\pi}\sum_k\int_0^T|o_k|^2d\tau
=E_{\rm def}(0)+\frac{\alpha w_h}{8\pi}\sum_k\int_0^T|g_k|^2d\tau.
$$
It gives uniqueness and continuous dependence **when a solution obeying the original sources exists**. Equal exterior initial data with different interior input agree only in $\tau+x<x_h$. The circular balance similarly has $g_c=U_{c,\tau}+U_{c,x}$, $o_c=U_{c,\tau}-U_{c,x}$ and coefficient $W_{c,h}/(32q)$. These are bulk master norms, not the full canonical energy including all boundaries.

# Verification ledger and reuse limits

**Checked — background and charge, xAct-enabled component calculations.** Christoffel symbols, Ricci tensor, scalar Hessian, $C,Q,J$ and $Z$ were constructed in EF coordinates with total radial derivative $\partial_r+X'\partial_X$. All nine metric-equation components, the scalar equation, $X=(\nabla\phi)^2$, $J^r$, $rJ^v-4\alpha qX'/X$ and all components of the claimed principal tensor gave zero residual. The source's $P,\Theta,Q_\xi$ were evaluated for the mass variation, reproducing Eq.(20) including the finite-radius term. This checks the given covariant equations and potentials on this family; it is not an unrestricted action variation.

**Checked — algebra and master construction, Mathematica.** The implicit first integral, $H_X$, $F'$ and $D'$ identities; gauge-fixing and reconstruction determinants; circular optical mixed/kinetic/weight identities; angular potential versus square completion; principal-speed split; both characteristic slopes and the common time norms all gave zero residual. The source-to-master boundary oscillator inverse and the angular radial conjugation were reproduced. The displayed Fefferman–Graham coefficient substitutions cancel the trace response, $b_{(2)}$ and tangential-gradient terms in $J_n$, leaving the stated $\Box_{(0)}f$ term. These are exact algebraic checks, not numerical evolution.

**Checked — scoped linearized reconstruction.** Starting from Eq.(53)'s constraint rows, the four-by-four system was solved, the metric and scalar reconstructed, and the metric equations independently linearized by varying the connection, Ricci tensor and $C,Q$. For $\alpha=\ell=q=1$, $k=1$, temporal exponent $\sigma=2$, all nine residuals vanish as rational functions of $r,X$ after the master first-order equations are used. The zero-frequency case $\sigma=0$ also gives zero residual at $r=3,X=1/2$, with first-order compatibility zero. These tests include the static mode but do not establish arbitrary parameters, all harmonics or the full normalization theorem. The scalar linearized equation follows on this background from the stated diffeomorphism identity and $q\ne0$; it was not separately varied in this test.

**Source-derived.** General metric/scalar demixing from the unrestricted action; full all-mode reconstruction proof and Sobolev bounds; original-current normalization of the master actions; complete boundary cancellation; classification and contact-time existence proofs. The contact theorem was reconstructed through its boundary oscillator, sideways-energy and finite-propagation steps; no independent PDE existence proof or evolution simulation is claimed. PDF pp.5, 12 and 15 were visually inspected for principal coefficients, covariant potentials and the singular radial transformation.

**Failed.** No contradiction was found within the checks above. Intermediate hand-entered square-completion code omitted the derivative of a symbolic product; rerunning with $\partial_x(w\nu)=w_x\nu+w\nu_x$ returned zero. This was a test-entry correction, not a source defect.

**Blocked.** No retrieval or tool blocker remains for v1. A complete nonlinear/global evolution claim is not available: the source does not analyze the deeper interior angular degeneracy or give nonlinear existence. The full original-action boundary variation and arbitrary-mode symplectic normalization were not independently reproduced and remain explicitly source-derived, rather than labeled computationally blocked.

**Assumptions.** $\alpha,\ell,q>0$; the $d_0>0$ branch; stated static ansatz and regular future horizon; fixed conformal metric, logarithmic scalar coefficient and finite scalar profile; no optional finite term; precise boundary derivative bounds; compact initial master displacement and zero velocity for the contact statement; specified incoming inner data for uniqueness. Denominators $B,A,S,K,\widetilde K,D$ are nonzero on the finite-radius domain used.

**Not independently verified.** The global classification under every allowed regularity case; all angular harmonics and parameters; original-action normalization without the source formulas; general boundary counterterm uniqueness; long-term or nonlinear stability; evolution through the interior characteristic degeneracy; an alternative boundary prescription admitting a unitary spectral quantization. The concrete next use is to compare original allowed variations against a proposed master-field domain before defining an AdS mode basis or regional observable algebra.
