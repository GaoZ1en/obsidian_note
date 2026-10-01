---
paper id: 2609.28158v2
title: Black Holes and Scalar Propagation in Three-Dimensional Einstein--Gauss--Bonnet Gravity
authors:
- Cendikiawan Suryaatmadja
publication date: '2026-09-23T14:08:47Z'
abstract: We derive an analytic black-hole family in three-dimensional scalar--tensor Einstein--Gauss--Bonnet
  gravity with positive coupling. A single implicit equation determines the static circular metric and
  a scalar linear in time. We show that these solutions exhaust regular nonextremal exteriors with the
  stated AdS boundary conditions and a fixed nonzero coefficient of time in the scalar. The coupled metric
  and scalar perturbations have one propagating degree of freedom. On one branch, its kinetic coefficient
  is positive, its equation is hyperbolic throughout the exterior, and its bulk spatial energy is positive
  for perturbations of compact support. Scalar signals can cross the metric horizon outward, so exterior
  evolution needs information from the interior. For linear perturbations with the original metric and
  scalar boundary values fixed, nonzero compact initial master displacements with zero velocity can evolve
  only until their first contact with the AdS boundary. We derive this restriction from the original metric
  and scalar equations.
comments: 17 pages; inspected v2, submitted 2026-09-24T14:35:06Z
url: https://arxiv.org/abs/2609.28158v2
summary: A concrete separation of healthy local scalar propagation, original-source boundary conditions,
  and autonomous exterior evolution.
tags: []
---

# Result and immediate use

**Correct under the following precise conditions:** the source establishes a linear boundary-contact obstruction for nonzero smooth compact initial master displacements with zero initial velocity, on its positive-kinetic branch, with the original AdS metric and scalar sources fixed and with the stated boundary regularity. This is not a theorem of nonlinear instability or inevitable singularity. The independent checks below reproduce the background equations, characteristic algebra, reconstruction determinant, potential identity and boundary reduction; they do not independently establish the complete PDE existence theorem or the original-action normalization.

Immediate use: before defining an AdS mode domain or a regional solution space, pull the master boundary condition back to the original fields. A zero master symplectic flux can miss a source constraint. Also, the metric event horizon need not be a characteristic boundary for all fields. This supplies an explicit testbed for inherited boundary data and for the distinction between exterior initial data and a self-contained exterior theory. Codes: `T1-boundary`, `T1-Wald-CPS`, `T1-charge`, `T2-spectral`, `T2-model`.

This was an **untracked replacement**, selected on current usefulness rather than to clear a backlog. The new note treats v2; no older vault note was changed.

# How to read this long paper

Although only 17 pages, the paper has a dense appendix-dependent reconstruction chain and is treated in monograph mode. The official PDF and TeX source were both read. Rendered printed pp. 5 and 8 confirm the principal tensor and the original-source/contact formulas. Text extraction was used for navigation, not as sole formula evidence.

| Complete section tree | Purpose and dependencies |
|---|---|
| §1 Introduction | Separates background classification, local propagation, and the boundary evolution problem |
| §2.1 Field equations | Defines the scalar–tensor theory and compact tensor equations |
| §2.2 Family and assumptions; §2.3 Branch selection | Static circular ansatz, source data, mixed equation and exclusion of the competing branch |
| §2.4 Global solution and horizon | Positive root, unique horizon, regular advanced coordinates and asymptotics |
| §2.5 Conserved charges | Mass variation, scalar shift current and radial balance |
| §3.1 Propagation and kinetic sign | Constraint elimination, effective principal tensor and horizon-crossing rays |
| §3.2 Circular sector; §3.3 Angular sector | Distinct master fields, optical coordinates, action weights and positive spatial form |
| §4.1 Scalar source and master boundary value | Boundary prescription pulled back from original fields; depends on Appendix B |
| §4.2 First contact | Precisely restricted linear evolution theorem; depends on Appendix C |
| §5 Discussion | Interior information, deeper-interior limitation, different boundary prescriptions and nonlinear questions |
| A.1 Circular equations | Explicit constraint reconstruction and integrability |
| A.2 Angular equations | Gauge removal, invertible reconstruction matrix, remaining equations and Fourier bounds |
| A.3 Normalization from the original action | Covariant potentials, quadratic reduction and symplectic normalization |
| B.1 Boundary action and flux; B.2 Boundary expansion | Counterterms, original scalar source, FG-to-master conversion and regularity |
| C.1 Boundary uniqueness; C.2 Contact-time proof; C.3 Energy balance | Singular radial estimate, comparison construction, finite propagation and specified incoming data |

Essential reading: §2.2–2.5, §3.1–3.3 and §4 with B.2 and C.1–C.2. A.2–A.3 and B.1 are technical references necessary before reusing the master variables or symplectic coefficients. §1 and §5 give context; neither replaces the domain assumptions.

# Scalar–tensor theory and global notation

Use signature $(-++)$, $G_N=1$, $\alpha>0$, $\ell>0$, $q>0$, and $X=\nabla_a\phi\nabla^a\phi$ (no factor $-1/2$). The action is

$$
I=\frac1{16\pi}\int d^3x\sqrt{-g}\left[R+\frac2{\ell^2}+\alpha\left(4G^{ab}\nabla_a\phi\nabla_b\phi-4X\Box\phi+2X^2\right)\right].
$$

Write $\Lambda=-\ell^{-2}$ and

$$
\Lambda_\alpha=-\ell_\alpha^{-2}
=-\frac{2/\ell^2}{\sqrt{1+4\alpha/\ell^2}+1},\qquad
\Lambda_\alpha-\alpha\Lambda_\alpha^2=\Lambda,\qquad B_\infty=1-2\alpha\Lambda_\alpha.
$$

| Symbol | Meaning and domain |
|---|---|
| $v_a,C_{ab},c$ | $v_a=\nabla_a\phi$, $C_{ab}=\nabla_a\nabla_b\phi+v_av_b-Xg_{ab}$, $c=C^a{}_a$ |
| $Q_{ab}$ | $C_{ac}C^c{}_b-cC_{ab}+\frac12g_{ab}(c^2-\operatorname{tr}C^2)$ |
| $B,D$ | $B=1+2\alpha X$; $D=(\ell^{-2}-X-\alpha X^2)/B$ |
| $A,S,y_*$ | $A=rX+q$, $S=r^2X^2+q^2$, $y_*=q/(rX)$ |
| $m,d_0$ | Integration parameter and $d_0=(m+q^2/\Lambda_\alpha)/B_\infty$ |
| $x,\tau$ | Inward-increasing scalar optical radius and time; AdS at $x=0$ |
| $U_c,\mathcal U=U_k$ | Circular and nonzero-angular-harmonic master fields; not interchangeable |
| $W_c,w$ | $1/(8\alpha Dqr)$ and $rD$; positive on the healthy branch |
| $K,\widetilde K$ | $k^2+q^2/X+r^2D$ and $k^2+q^2/X+2Dq^2r^2/S$, $k\ne0$ |
| $p_0,a_k,b_k$ | Original finite scalar source variation, metric response, and master boundary value |

The field equations and shift current are

$$
E_{ab}=BG_{ab}-(\ell^{-2}+\alpha X^2)g_{ab}+4\alpha Q_{ab}=0,
$$
$$
J^a=8\alpha\left[G^{ab}v_b+(X-\Box\phi)v^a+\tfrac12\nabla^aX\right],\quad
E_\phi=-\nabla_aJ^a,
$$
$$
\frac{E_\phi}{8\alpha}=c^2-\operatorname{tr}C^2+(Xg^{ab}-G^{ab})C_{ab}=0,\qquad
2\nabla^aE_{ab}+E_\phi\nabla_b\phi=0.
$$

The compact form is particularly useful for checking an implicit background without solving $X(r)$ in elementary functions.

# Static branch selection, implicit solution and horizon

The classification assumes a static circular $C^3$ exterior, a smooth nonextremal future horizon with finite $X$, the fixed angular period $2\pi$, fixed boundary clock, and

$$
g_{tt}=\Lambda_\alpha r^2+O(1),\quad g_{rr}=-\frac1{\Lambda_\alpha r^2}+O(r^{-4}),\quad
\phi=qt+\log(r/\ell)+\phi_0+O(r^{-2}),
$$

with the corresponding derivative control. Both $q$ and $\phi_0$, and the logarithmic coefficient, are prescribed sources. In proper radial distance $\rho$, let $a_\rho=\dot N/N$, $b_\rho=\dot r/r$, $p_\rho=\dot\psi$, $X=p_\rho^2-q^2/N^2$, and $U_*=X-b_\rho p_\rho$. The mixed metric equation, which must not be discarded by prematurely imposing a diagonal ansatz, is

$$
E_{01}=\frac{4\alpha q}{N}(p_\rho-a_\rho)U_*.
$$

On the alternative branch $U_*\ne0$, one has $p_\rho=a_\rho$, $U_*=-D$, $\dot X=2p_\rho D$, and $N^2(X+\alpha X^2-\ell^{-2})$ is a nonzero constant. Such a segment cannot end at a regular horizon with finite $X$, nor join the desired branch at a regular finite endpoint where $D=0$. The admissible exterior therefore has $U_*=0$. The remaining equations and boundary clock give the following family:

$$
\mathcal H(r,X)=r^2(X+\alpha X^2-\ell^{-2})-\frac{q^2}{X}
+2\alpha q^2\log\frac X{-\Lambda_\alpha}+m=0,
$$
$$
F=r^2X-\frac{q^2}{X},\qquad ds^2=-Fdt^2+\frac{dr^2}{F}+r^2d\theta^2,
\qquad \phi=qt+\psi(r),\quad \psi'=\frac{rX}{F}.
$$

For each $r>0$, $\mathcal H_X=B(r^2+q^2/X^2)>0$ for $X>0$, with opposite infinite limits at zero and infinity. Thus the positive root is unique. Implicit differentiation gives

$$
X'=\frac{2rX^2D}{S},\qquad F'=\frac{2r(\ell^{-2}+\alpha X^2)}B>0.
$$

At the horizon $X_h=q/r_h$,

$$
m(r_h)=\frac{r_h^2}{\ell^2}-\alpha q^2-2\alpha q^2\log\frac q{-\Lambda_\alpha r_h},\qquad
m'(r_h)=\frac{2r_h}{\ell^2}+\frac{2\alpha q^2}{r_h}>0.
$$

This parametrization spans all real $m$ and gives a unique nonextremal horizon. With $v=t+\int dr/F$ normalized by $v-t\to0$ at infinity,

$$
ds^2=-Fdv^2+2dvdr+r^2d\theta^2,\qquad
\phi=qv+\log(r/\ell)+\phi_0+\int_r^\infty\frac{q\,d\rho}{\rho(\rho X+q)}.
$$

In this chart $p=\partial_r\phi=X/(rX+q)$ and $p_h=1/(2r_h)$, so the scalar is regular. The asymptotic expansion is

$$
X=-\Lambda_\alpha-\frac{d_0}{r^2}+O(r^{-4}),\quad
F=-\Lambda_\alpha r^2-d_0+\frac{q^2}{\Lambda_\alpha}+O(r^{-2}),
$$
$$
\phi=qt+\log(r/\ell)+\phi_0-\frac{q^2}{2\Lambda_\alpha^2r^2}+O(r^{-4}).
$$

The useful branch is $d_0>0$, equivalently $0<X<-\Lambda_\alpha$ and $D>0$. At $d_0=0$, $X$ is constant, $C_{ab}=0$ and the scalar quadratic kinetic term degenerates; this is not a smoothly established healthy limit. For $d_0<0$ the asymptotic kinetic sign is wrong.

# Mass and shift-charge balance

At fixed sources, the source's covariant potentials give

$$
\delta H_{\partial_t}(r)=\frac{\delta m}{8}+\frac{\alpha q^2}{2}\delta\log X(r),\qquad
\delta M_\infty=\frac{\delta m}{8}.
$$

An additive reference mass is still a convention. The shift current obeys $J^r=0$, $rJ^t=4\alpha q(\log X)'$, hence

$$
Q_{\rm shift}[r_1,r_2]=\frac{\alpha q}{2}\log\frac{X(r_2)}{X(r_1)}.
$$

The radial Hamiltonian difference is $q\,\delta Q_{\rm shift}$. Although the metric is stationary, $\mathcal L_{\partial_t}\phi=q$; the time vector alone is not a symmetry of the full configuration. This is the reason to retain a scalar contribution in a CPS comparison. Nonzero shift current also distinguishes this family from a coordinate boost of the previously known zero-current logarithmic family.

# Coupled principal tensor and the metric-horizon mismatch

The second-derivative part of the metric perturbation equation is

$$
\delta E_{ab}=B\,\delta G_{ab}(h)+8\alpha\,\delta G_{ab}(C\pi)+\text{lower derivatives},\qquad
\widetilde h_{ab}=h_{ab}+\frac{8\alpha}{B}C_{ab}\pi.
$$

Eliminating curvature using the metric equations leaves

$$
0=B(c^2-\operatorname{tr}C^2)+(X+\alpha X^2-\ell^{-2})c
+4\alpha\left(\operatorname{tr}C^3-\tfrac32c\operatorname{tr}C^2+\tfrac12c^3\right).
$$

Its Hessian derivative after constraint elimination yields

$$
Z^{ab}=2(cg^{ab}-C^{ab})-Dg^{ab}+\frac{12\alpha}{B}Q^{ab},\qquad
I_{\rm pr}^{(2)}=-\frac{4\alpha}{16\pi}\int\sqrt{-g}\,Z^{ab}\partial_a\pi\partial_b\pi.
$$

On the background,

$$
Z^{vv}=-\frac{4Dy_*}{r^2X(1+y_*)^2(1+y_*^2)},\quad
Z^{vr}=D\frac{1-y_*}{1+y_*},\quad Z^{rr}=Dr^2X(1+y_*^2),
$$
$$
Z^{\theta\theta}=\frac D{r^2}\frac{3B_\infty^2/B^2-y_*^2}{1+y_*^2}.
$$

The radial determinant is $-D^2$. In the exterior $0<y_*\le1$, the angular coefficient is positive. A common time function $T=v-\Delta v(r)$ with

$$
(\Delta v)'=\frac1{r^2X(1+y_*)(1+y_*^2)},\qquad
Z^{ab}T_aT_b=-\frac{D(1+2y_*)}{r^2X(1+y_*)^2(1+y_*^2)}<0
$$

also has $g^{ab}T_aT_b<0$. The scalar is locally hyperbolic with positive kinetic sign on this branch at every finite exterior point. The two radial scalar characteristic velocities are

$$
\frac{dr}{dv}=\frac{r^2X(1+y_*)(1+y_*^2)}2,\qquad
\frac{dr}{dv}=-\frac{r^2X(1+y_*)(1+y_*^2)}{2y_*}.
$$

At the metric horizon they are $\pm2qr_h$, so one scalar signal travels outward across it. Exterior evolution requires interior input. The limit $D\sim d_0/r^2\to0$ at AdS must be treated separately; finite-radius hyperbolicity is not uniform boundary hyperbolicity. Further inside, the angular coefficient can vanish at $y_*^2=3B_\infty^2/B^2$; the paper does not establish healthy propagation through that region.

# Circular and angular master reductions

Define

$$
\tau=v-\int z\,dr,\quad z=\frac{X(rX-q)}{AS},\qquad
x(r)=\int_r^\infty\frac{X(\rho)}{S(\rho)}d\rho,\quad \partial_x=-\frac SX\partial_r.
$$

The exterior is $0<x<x_h$; $x$ increases inward. In circular areal advanced gauge, $h_{vv}=-(w_c+2Fn)$, $h_{vr}=n$, $h_{rr}=h_{\theta\theta}=0$. The gauge invariant $U_c=Bw_c$ has mass mode $U_c=-\delta m$. Appendix A.1 gives

$$
n_r=\lambda_cU_{c,v},\quad \pi_r=q\lambda_cU_c+aU_{c,r}-jU_{c,v},\quad
\pi_v-qn=-hU_{c,r}-aU_{c,v},
$$
$$
\lambda_c=\frac{X^2}{BA^2S},\quad a=\frac{rX-q}{8\alpha DqrA},\quad
h=\frac S{8\alpha DXqr},\quad j=\frac{X^2}{2\alpha DA^2S}.
$$

Integrability yields the master equation. Since $a/h=z$ and $hX/S=W_c$,

$$
I_c^{(2)}=\frac1{16q}\int d\tau dx\,W_c(U_{c,\tau}^2-U_{c,x}^2),\quad
W_c=\frac1{8\alpha Dqr},\quad
U_{c,\tau\tau}-W_c^{-1}(W_cU_{c,x})_x=0.
$$

For a real harmonic with $\int d\theta\,Y_k^2=1$, $k\ne0$, the angular invariant is $\mathcal U=P+ikpV/K$. Its action and equation are

$$
I_k^{(2)}=\frac\alpha{4\pi}\int d\tau dx\,w(U_{k,\tau}^2-U_{k,x}^2-\mathcal V_kU_k^2),\quad
w=rD,
$$
$$
U_{k,\tau\tau}-w^{-1}(wU_{k,x})_x+\mathcal V_kU_k=0.
$$

The useful potential representation is

$$
\widehat\nu=\frac{4\alpha Dr(Xk^2+q^2)}{BK},\quad
\widehat P=k^2\left[\frac F{r^2}+2X+\frac{4\alpha DX}B+
\frac{8\alpha D(Xk^2+q^2)}{BK}\right]>0,
$$
$$
\mathcal V_k=\widehat\nu^2+\widehat\nu_x+(\log w)_x\widehat\nu+\widehat P.
$$

Consequently

$$
\int w(U_x^2+\mathcal V_kU^2)dx
=\int w[(U_x-\widehat\nu U)^2+\widehat PU^2]dx+[w\widehat\nu U^2]_{\rm ends}.
$$

For compact support this proves a positive bulk spatial form. It does not by itself prove positivity of a complete boundary-renormalized Hamiltonian. The high-$k$ principal angular speed is $c_\theta^2=F/r^2+2X+12\alpha DX/B>0$; the remaining potential is uniformly bounded in $k$ on compact regular intervals. These bounds enter the smooth Fourier reconstruction and auxiliary comparison problem.

# Appendix A: local reconstruction and CPS normalization

The radial first-order angular system uses a different weight $w_r=rDS/X$ and

$$
\mu=\frac{Xk^2}{rS}+\frac{4\alpha DXr(Xk^2+q^2)}{BSK},\quad
\chi=\frac{X^2k^2(F-k^2)}{r^2S^2},\quad
\mathfrak b=-\frac{ikBA}{4\alpha Dr^3S}.
$$

Set $\Pi=\mathcal U_r+\mu\mathcal U+z\mathcal U_v$, $V=\Pi/\mathfrak b$, $P=\mathcal U-ikpV/K$. Its integrability gives the independently useful alternative

$$
\mathcal V_k=-\frac{S^2}{X^2}\left[\mu'+(\log w_r)'\mu-\mu^2-\chi\right].
$$

After subtracting two residual gauge directions, the four radial constraint equations determine $(W,V',\mathcal T,\mathcal C)$, where $\mathcal T=T_*'$, $\mathcal C=C_*'$ and $W=P'+(q+pk^2)\mathcal T-ikrp\mathcal C$. For temporal frequency $\sigma$ their coefficient matrix is

$$
\mathsf M=\begin{pmatrix}
h_*&0&\sigma&-ik\\
-Fh_*&a_V-ikd_V/r&k^2(F'-\sigma-F/r+k^2/r)&ik(-rF'+r\sigma+2F-k^2)\\
j_*&0&2\sigma+2K/r&-2ik\\
0&d_V&ik(r\sigma-F+k^2)&r(r\sigma+k^2)
\end{pmatrix},
$$

where $h_*=8\alpha DXqr/(BA^2)$, $j_*=8\alpha DrX/(BA)$, $a_V=2ik(\sigma+q-rD)/K$, $d_V=1+r(\sigma+q-rD)/K$. Its determinant is

$$
\det\mathsf M=\frac{16i\alpha DkS\widetilde K}{BA}\ne0.
$$

Thus zero temporal frequency is included; the inversion does not divide by $\sigma$. The source provides the undifferentiated right-hand-side rows in Appendix A.2. Once solved, no radial gauge integrals remain in the final representative:

$$
\pi=P,\quad h_{\theta\theta}=0,\quad
h_{vv}=-\frac{2ik}K(\partial_v+q-rD)V,\quad
h_{v\theta}=\left[1+\frac rK(\partial_v+q-rD)\right]V,
$$
$$
h_{rr}=-2\mathcal T,\quad h_{vr}=(F-k^2)\mathcal T+ikr\mathcal C,\quad
h_{r\theta}=-ikr\mathcal T-r^2\mathcal C.
$$

The remaining Einstein equations follow from the retained constraints and the Noether identity with nonzero coefficient $p\widetilde K/(qr)$. The scalar equation then follows as well. The source bounds reconstruction on compact radial intervals by $(1+|k|)^8$ times $H^{N+4}\oplus H^{N+3}$ initial master norms, allowing smooth Fourier sums. The determinant check alone is not an independent check of all these reconstruction equations.

Appendix A.3 fixes normalization from the original action, not by rescaling a guessed master equation. Omitting the common $1/(16\pi)$, its reusable covariant objects are

$$
P^{abcd}=\frac{1-2\alpha X}{2}(g^{ac}g^{bd}-g^{ad}g^{bc})
+\alpha(g^{ac}v^bv^d-g^{ad}v^bv^c-g^{bc}v^av^d+g^{bd}v^av^c),
$$
$$
\Theta^a=2P^{abcd}\nabla_dh_{bc}-2\nabla_dP^{abcd}h_{bc}+J^a\delta\phi
-4\alpha X\nabla^a\delta\phi+4\alpha Xv^ch^a{}_c-2\alpha Xv^ah,
$$
$$
Q_\xi^{ab}=-2P^{abcd}\nabla_c\xi_d+4\xi_d\nabla_cP^{abcd}
-4\alpha X(v^ag^{bc}-v^bg^{ac})\xi_c.
$$

The current density is the antisymmetrized variation of $\sqrt{-g}\Theta^a/(16\pi)$. Circular constraint elimination gives $1/(16q)$; angular pullback gives $\alpha/(4\pi)$ with the harmonic convention above. These precise coefficients, including endpoint terms in the pullback, remain Source-derived.

# Appendix B: original sources are stronger than regular master flux

The timelike cutoff action is

$$
I_\partial=\frac1{16\pi}\int\sqrt{-\gamma}(B_D+c_0),\quad
B_D=2K+4\alpha(K_{ij}D^i\phi D^j\phi-KY_\partial+\phi_nY_\partial+\phi_n^3/3),
$$
$$
Y_\partial=D_i\phi D^i\phi,\quad \phi_n=n^a\nabla_a\phi,\quad
c_0=-\frac2{\ell_\alpha}(1-2\alpha\Lambda_\alpha/3).
$$

Here $K$ in the boundary action is the extrinsic-curvature trace, not the harmonic denominator. The scalar momentum is

$$
\Pi_\phi=J^n-8\alpha D_i(M^{ij}D_j\phi),\qquad
M^{ij}=K^{ij}-K\gamma^{ij}+\phi_n\gamma^{ij}.
$$

For the boundary profile $f=qt+\phi_0$, the finite limit is $\sqrt{-\gamma}\Pi_\phi\to-8\alpha\Box_{(0)}f/\ell_\alpha=0$. For its variation $p_0$ the quadratic boundary variation and flux carry

$$
\delta I^{(2)}\big|_{\rm AdS}=-\frac\alpha{2\pi\ell_\alpha}\int(\Box_{(0)}p_0)\delta p_0,
$$

and the antisymmetrization of $(\Box_{(0)}p_{0,1})p_{0,2}$. Fixing $p_0=0$ kills this original-field flux. Adding a finite intrinsic scalar derivative term with coefficient $c_\partial=-4\alpha/\ell_\alpha$ cancels the scalar boundary equation if the source is allowed to vary. That is a different boundary prescription and lies outside the contact theorem.

The FG expansion controls up to four time and two radial derivatives. Its metric response satisfies a conserved, traceless boundary system, hence $(\partial_\tau^2-\Lambda_\alpha k^2)a_k=0$. Translating it to the areal advanced gauge with fixed boundary integration constants gives, with $\kappa_k=k^2+d_0-q^2/\Lambda_\alpha$,

$$
b_k=U_k(\tau,0)=p_{0,k}+\frac{-\Lambda_\alpha k^2+q\partial_\tau}{k^2\kappa_k}a_k.
$$

At fixed original source,

$$
(\partial_\tau^2-\Lambda_\alpha k^2)b_k=0,\qquad
 a_k=\frac{\kappa_k(\Lambda_\alpha k^2+q\partial_\tau)}{\Lambda_\alpha(q^2-\Lambda_\alpha k^2)}b_k.
$$

The latter inverse is valid on oscillator solutions, not as an arbitrary-function operator identity. Near AdS, $x=-1/(\Lambda_\alpha r)+O(r^{-3})$, $w=-\Lambda_\alpha d_0x[1+O(x^2)]$. The two local behaviors are regular and logarithmic; both have finite weighted norm, but the log branch has infinite unrenormalized gradient energy. Regularity gives $U_k=b_k+O(x^2)$ and $U_{k,x}=O(x)$. Those two conditions already kill the master flux for arbitrary $b_k$, whereas fixing the original source additionally requires the oscillator equation. This is the central domain distinction.

For the circular mode,

$$
W_c=\frac{c_c}{x}[1+O(x^2)],\quad c_c=-\frac1{8\alpha q\Lambda_\alpha d_0}>0,
$$
$$
U_c=u_0+x^2\left[u_2+\tfrac12u_{0,\tau\tau}\log(x/x_0)\right]+\cdots,
$$
$$
\delta\phi_{\log}=-c_cu_{0,\tau},\qquad
\partial_\tau\delta\phi_{\rm finite}=c_c(2u_2+u_{0,\tau\tau}/2).
$$

Fixing the logarithmic coefficient makes $u_0$ constant; fixing mass sets it to zero. Fixing the finite scalar source then also requires $u_2=0$ and fixes the initial scalar shift.

# Appendix C: exact contact theorem and incoming information

Take a nonzero real smooth initial displacement compactly supported in the open exterior, with zero angular mean and zero initial velocity. Require the original fixed sources and the regularity class just described; allow a choice of incoming scalar information from the interior. If $r_{\max}$ is the outermost support radius,

$$
T_{\max}=d=\int_{r_{\max}}^\infty\frac{X(\rho)}{\rho^2X(\rho)^2+q^2}d\rho,\qquad 0<d<x_h.
$$

There are solutions on every interval $0\le\tau<T<d$ and none on an interval with $T>d$ in this class. The same conclusion holds for the circular sector at fixed mass. The assertion includes initial packets flat to all orders at the support edge. It does not assert a singularity at $d$, or classify all noncompact or nonzero-velocity initial data.

The proof transforms the angular equation with $H=\sqrt{w/(-\Lambda_\alpha d_0x)}U$ into

$$
H_{xx}-H_{\tau\tau}+\frac1xH_x+Q_kH=0,
$$
$$
Q_k=-\mathcal V_k-\tfrac12\partial_x^2\log(w/x)-\frac1{2x}\partial_x\log(w/x)-\tfrac14[\partial_x\log(w/x)]^2.
$$

Even expansions in $x$ make $Q_k$ bounded. For the circular sector $H=\sqrt{xW_c/c_c}\,U_c/x^2$ gives the analogous radial equation with $3H_x/x$. These are regular radial equations in auxiliary dimensions two and four; finite bulk energy alone does not supply the required traces.

For $H_{xx}-H_{\tau\tau}+nH_x/x+QH=0$, $n>0$, consider energy on the shrinking interval $s_\pm=\tau_c\pm(T-x)$:

$$
E(x)=\frac12\int_{s_-}^{s_+}(|H_x|^2+|H_\tau|^2+\mu_0^2|H|^2)d\tau.
$$

Integration by parts yields two negative endpoint squares, the nonpositive term $-(n/x)\int|H_x|^2$, and $\operatorname{Re}\int(\mu_0^2-Q)\bar H H_x$. Hence $E'\le CE$. Vanishing boundary traces imply $E(\epsilon)\to0$; Grönwall gives vanishing in the open characteristic triangle. Zero initial velocity permits even time extension. The boundary oscillator with initially zero data forces $b_k=0$; a triangle extending beyond $d$ would then force the nonzero initial packet to vanish. The existence half uses a smooth auxiliary interior boundary problem and finite propagation before contact. Neither half can be replaced by the positive-energy algebra alone.

With specified incoming information at $x_h$, define the positive compact bulk form

$$
E_{\rm def}=\frac\alpha{4\pi}\sum_{k\ne0}\int w\left(|U_\tau|^2+|U_x-\widehat\nu U|^2+\widehat P|U|^2\right)dx,
$$

and $g_k=(U_\tau+U_x-\widehat\nu U)_h$, $o_k=(U_\tau-U_x+\widehat\nu U)_h$. The balance is

$$
E_{\rm def}(T)+\frac{\alpha w_h}{8\pi}\sum_k\int_0^T|o_k|^2d\tau
=E_{\rm def}(0)+\frac{\alpha w_h}{8\pi}\sum_k\int_0^T|g_k|^2d\tau.
$$

Two full solutions with identical exterior initial data but different interior packets can therefore yield different later exterior fields. They agree in the domain before the inward boundary can communicate with the observation point. This supplies a concrete missing input for an autonomous exterior theory, rather than a paradox about uniqueness of a fully specified hyperbolic problem.

# Equation ledger and translation to current work

The dependency chain is action and retained mixed equation → admissible static branch → implicit root and source asymptotics → coupled constraint reduction → normalized master dynamics → original-field boundary pullback → singular radial uniqueness → contact obstruction. The algebraic checks below support intermediate arrows; the existence and trace assumptions remain essential.

| Reusable object | Application and qualification |
|---|---|
| $\Theta,Q_\xi,J$ and radial $\delta H$ | CPS balance with a scalar whose time dependence is a shift symmetry; preserve common $1/(16\pi)$ and fixed-$q$ variations |
| $Z^{ab}$ and characteristic speeds | Choose artificial boundaries for the full field system rather than by the metric cone alone |
| $U_k$, $w$, $\mathcal V_k$ | A concrete singular Sturm–Liouville operator, whose physical domain must be reconstructed from original sources |
| $b_k$–$a_k$–$p_{0,k}$ map | Counterexample to identifying regular zero-flux master conditions with a fixed-source field theory |
| Incoming $g_k$ | Explicit regional input necessary for exterior evolution; it is not determined by exterior initial data |
| Finite intrinsic boundary term | Controlled change of variational prescription; any claimed repair needs a new boundary evolution analysis |

This does not yet construct a quantum Hilbert space, self-adjoint Hamiltonian, nonlinear regional algebra, or sewing map. A useful next calculation is to formulate the variable-source boundary prescription and ask whether its solution domain is preserved by time evolution, keeping the boundary symplectic contribution explicit.

# Verification and evidence boundary

**Source-derived:** the complete source map, branch-classification argument, original action and CPS potentials, master normalizations, original boundary variation, reconstructed-source map, regularity assumptions, Fourier reconstruction bounds, and full contact/existence theorem. Formula extraction was cross-checked against TeX; printed pp. 5 and 8 were visually confirmed.

**Checked — Mathematica, exact algebra:** seven background/common-time residuals vanish: $\mathcal H_X$, implicit $X'$, $F'$, $D'=-(1+2\alpha D/B)X'$, the advanced scalar derivative, $B^2+4\alpha BD=B_\infty^2$, and the scalar common-time norm. Both characteristic-polynomial residuals vanish; the radial determinant is $-D^2$. The metric common-time norm reduces to

$$
-\frac{rX^2(2q^2+qrX+r^2X^2)}{(q+rX)(q^2+r^2X^2)^2}<0.
$$

**Checked — xAct/xCoba, exact background tensors:** defined the three-dimensional advanced-coordinate metric as a `CTensor`, obtained its Einstein tensor and the scalar Hessian with the metric connection, then imposed $X'=2rX^2D/S$. The scalar-norm residual, all nine metric-equation components, scalar equation and trace formula $c=2r^2X^2D/S$ vanish identically. This is a background check, not a variation of the complete action or all linearized equations.

**Checked — Mathematica, master and boundary algebra:** the first-order radial potential equals the square-completion potential exactly; the four-by-four reconstruction determinant equals $16i\alpha DkS\widetilde K/(BA)$ without setting $\sigma\ne0$; integration-by-parts square completion has zero residual. The boundary inverse has zero polynomial remainder modulo $\partial_\tau^2-\Lambda_\alpha k^2$. Both singular radial transformations reproduce the $n=1$ and $n=3$ coefficients and bounded-potential structure for even smooth logarithmic weights.

**Assumptions:** $r,X,q,\alpha,D>0$, $k\in\mathbb Z\setminus\{0\}$ in the angular sector; all stated nonzero reconstruction denominators; $\Lambda_\alpha<0$; fixed source data; the source's differentiability and endpoint traces. Positivity deductions use these signs rather than a numerical sample.

**Not independently verified:** full off-shell derivation of $E_{ab},E_\phi,\Theta,Q$ from the action; all coupled linearized reconstruction residuals and normalization boundary terms; FG expansion to every stated order; PDE existence, uniform Fourier estimates and the global contact theorem; any nonlinear or quantum conclusion. These are clearly reconstructed source arguments, not promoted to CAS-proved theorems.

**Blocked:** none in source retrieval or the completed scoped checks. An initial boundary-inverse simplification did not reduce a rational expression under a replacement rule; polynomial remainder with the explicit oscillator relation resolved it. No failed physical residual was hidden by that correction. PDF and TeX source both returned successfully. **Failed:** none among the independent checks above.

**Verified:** the listed exact algebra and background component residuals. **Not verified:** the broader variational, perturbative and PDE claims just enumerated. Local validation checked frontmatter, evidence labels, equation delimiters, text hygiene and Pandoc parsing before advancing the daily queue.
