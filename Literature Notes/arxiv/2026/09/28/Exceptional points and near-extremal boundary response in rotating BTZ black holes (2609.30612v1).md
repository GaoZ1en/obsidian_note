---
paper id: 2609.30612v1
title: "Exceptional points and near-extremal boundary response in rotating BTZ black holes"
authors:
  - "Long, Sheng"
  - "Shi, Yu"
  - "Xia, Zhongwu"
  - "Gong, Huajie"
  - "Cao, Zhoujian"
  - "Tan, Qin"
  - "Pan, Qiyuan"
publication date: 2026-09-24T22:55
abstract: |-
  We investigate whether the coalescence of long-lived quasinormal modes enhances the boundary response of rotating BTZ black holes. Using exact scalar solutions with mixed Robin boundary conditions and the retarded boundary correlator, we compare frequency-domain resonances and time-domain signals at fixed source and operator normalizations. An exceptional point (EP) can be crossed by varying the spin alone in a suitably selected fixed theory. Along a distinct near-extremal path that tracks the co-rotating EP surface by tuning the scalar mass and boundary coupling, a taller, narrower resonance coexists with a weaker but longer-lasting double-pole impulse response. The frequency-domain enhancement persists away from the EP and is therefore not unique to mode coalescence. Thus, the EP determines the double-pole structure and Jordan relaxation, but does not by itself determine the response strength, which also depends on the physical path and excitation protocol.
comments: "none stated"
url: https://arxiv.org/abs/2609.30612v1
summary: "Exact Robin-to-FG normalization separates BTZ exceptional-point poles from path- and drive-dependent response amplitudes; local roots and scaling ingredients are independently checked."
tags: []
---

# Exceptional points with a specified boundary source

The reusable result is a separation of three objects: a double zero of the Robin characteristic, a double pole in a specified FG source-response channel, and the response to a specified pulse. They are related, but their magnitudes are not interchangeable. In the source's near-extremal path, the boundary susceptibility grows while the complete double-pole impulse becomes smaller and longer lived. This path changes the scalar mass and the boundary coupling; a separate, critically selected fixed-theory path crosses an EP by changing the spin alone.

Relevance: `T1-boundary`, `T2-spectral`, `T2-dS-BH-holography`. The immediate use is an exact AdS3 example for keeping the boundary condition, physical source, pole residues, and mode spectrum in the same calculation. An EP does not furnish an interacting symmetry or a universal amplification theorem.

## Source map and reading guide

Source: [2609.30612v1](https://arxiv.org/abs/2609.30612v1), official PDF and TeX including the supplemental section files. This master note uses monograph mode for the main article plus its substantial supplement. Page references below are printed page numbers, not PDF indices.

| Source cluster | Purpose and dependencies |
|---|---|
| §1, pp. 1–3 | QNM excitation, non-Hermitian degeneracies, Robin conditions; background for the question, not an amplitude argument |
| §2.1, pp. 3–4 | Exact radial solution, connection coefficients, Robin and FG dictionaries |
| §2.2, p. 5 | Strict double zero, noncancellation, geometric defect; uses uniqueness of the ingoing solution |
| §3.1, pp. 5–6 | Co-/counter-rotating EP surfaces and thermal comparison |
| §3.2, p. 7 | Spin variation at fixed mass and FG coupling; selected transverse crossing |
| §4.1, p. 8 | Source normalization, Laurent coefficients, causal pole kernel |
| §4.2, pp. 9–11 | Singular near-extremal scaling and shrinking frequency measure |
| §4.3, pp. 11–12 | Detuned and fixed-FG-coupling controls |
| §4.4, pp. 12–14 | Full-frequency convolution for a finite smooth drive |
| §5, pp. 14–16 | Fixed-regulator energy norm, finite-matrix resolvent, Jordan scaling |
| §6, p. 16 | Scope: path and protocol dependence; no continuum-pseudospectrum claim |
| Supplement S1, pp. 1–3 | Hypergeometric connection, strict diagnostics, numerical conventions |
| S2.1, pp. 3–5 | Chiral surfaces and fixed-theory path audits |
| S2.2, pp. 5–6 | Real-parameter loops, profile exchange, distinction from complex-coupling loops |
| S2.3, pp. 6–14 | Higher-family search, endpoint pairing, continuation and unresolved tracks |
| S3.1, pp. 14–15 | Laurent and two-simple-pole limits |
| S3.2, pp. 15–16 | Limiting characteristic and its nonsingular real Jacobian |
| S3.3, pp. 16–19 | Smooth source, Fourier quadrature, duration and fixed-duration controls |
| S4.1, pp. 19–21 | Hyperboloidal PDE, energy including Robin term, SBP matrices |
| S4.2, pp. 21–23 | Bordered finite-matrix EP equations and Jordan-chain audits |
| S4.3, pp. 23–24 | Scalar backward error versus energy-resolvent diagnostics |

**How to read this long paper.** Essential: §2, §3.2, §4.1–4.3 and S3.2, in that order. Technical reference: S1, S3.1/S3.3 and S4 for reproducing response or discretization. Optional background after this chain: §1 and the survey of higher branches and loops in S2.2–S2.3. These latter sections are recorded here but their searches are not completeness proofs.

## Radial problem and global notation

The geometry and Fourier convention are

$$
\begin{aligned}
ds^2&=-f\,dt^2+f^{-1}dr^2+r^2(d\phi+N^\phi dt)^2,\\
f&=\frac{(r^2-r_+^2)(r^2-r_-^2)}{L^2r^2},
&N^\phi&=-\frac{r_+r_-}{Lr^2},\\
\Phi&=e^{-i\omega t+im\phi}R(r),
&\mu^2L^2&=\nu^2-1,\qquad 0<\nu<1.
\end{aligned}
$$

This is a linear probe scalar with an ingoing future-horizon condition. The open BF window is essential for the two normalizable boundary falloffs. The mass-window endpoints, extremality itself, and resonant Frobenius exceptions require separate analysis.

| Symbol | Meaning and held-fixed distinctions |
|---|---|
| $a=r_-/r_+$ | Spin, $0\leq a<1$ |
| $q=mL/r_+$, $w=\omega L^2/r_+$ | Dimensionless angular and temporal frequencies; $q\geq0$ |
| $h_\pm=(1\pm\nu)/2$ | Half of the two boundary exponents |
| $z=(r^2-r_+^2)/(r^2-r_-^2)$ | Horizon $z=0$, boundary $z=1$ |
| $x_{\rm co}=(w-q)/[2(1-a)]$ | Co-rotating hypergeometric frequency |
| $x_{\rm ctr}=(w+q)/[2(1+a)]$ | Counter-rotating frequency |
| $A,B,\mathcal H=B+gA$ | Reciprocal-gamma connection factors and entire characteristic |
| $C_-,C_+$ | Coefficients of $(1-z)^{h_-},(1-z)^{h_+}$ |
| $\alpha_{\rm FG},\beta_{\rm FG}$ | Coefficients of the corresponding powers of $1/r$ |
| $g,\kappa_{\rm FG},Z_{\rm FG}$ | Spectral Robin parameter, physical coupling and conversion factor; $g=-\kappa_{\rm FG}Z_{\rm FG}$ |
| $\widehat t=r_+t/L^2$, $\epsilon=1-a$ | Dimensionless time and near-extremal parameter |
| $\zeta=(w-q)/\epsilon$, $T=\epsilon\widehat t$ | Scaled complex frequency and relaxation time |

The two chiral scales are $T_{\rm co,ctr}=(r_+\mp r_-)/(2\pi L^2)$. They are not two independent Hawking temperatures: $T_H=2T_{\rm co}T_{\rm ctr}/(T_{\rm co}+T_{\rm ctr})$, and $\Omega_H=r_-/(Lr_+)$.

The separated equation is

$$
\frac1r\partial_r(rf\partial_rR)
+\left[\frac{(\omega+mN^\phi)^2}{f}-\frac{m^2}{r^2}-\mu^2\right]R=0.
$$

Write

$$
R_{\rm in}=z^{-i(w-aq)/[2(1-a^2)]}(1-z)^{h_-}
{}_2F_1(a_H,b_H;c_H;z),
$$

where $a_H=h_--ix_{\rm ctr}$, $b_H=h_--ix_{\rm co}$, and $c_H=1-i(w-aq)/(1-a^2)$. Substitution yields the hypergeometric equation. Since $c_H-a_H-b_H=\nu$, its continuation to $z=1$ gives

$$
\begin{aligned}
A(w)&=\frac1{\Gamma(h_+-ix_{\rm co})\Gamma(h_+-ix_{\rm ctr})},\\
B(w)&=\frac1{\Gamma(h_--ix_{\rm co})\Gamma(h_--ix_{\rm ctr})},\\
C_-&=\Gamma(c_H)\Gamma(\nu)A,
&C_+&=\Gamma(c_H)\Gamma(-\nu)B.
\end{aligned}
$$

**Checked:** Mathematica substitution into the radial ODE, using $L=r_+=1$, returned zero for both nontrivial hypergeometric coefficient residuals; all three connection-index identities also returned zero. This checks the ODE reduction and the gamma arguments, not a general tensor-curvature identity.

## From the boundary condition to a strict exceptional point

The source uses $\cos\xi\,C_--\sin\xi\,C_+=0$ and

$$
g=-\frac{\Gamma(\nu)}{\Gamma(-\nu)}\cot\xi>0,
\qquad \mathcal H(w;g,\nu,a,q)=B(w)+gA(w).
$$

The common $\Gamma(c_H)$ has been removed. At ordinary, nonresonant points this gives a convenient entire characteristic; the removal does not justify ignoring exceptional ingoing-index singularities. The $g=0$ and $g\to\infty$ endpoint towers are

$$
w_{n,s}^{(\mp)}=\sigma_s q-i(1-\sigma_s a)(1\mp\nu+2n),
\quad n\geq0,\quad \sigma_{\rm co}=1,\quad\sigma_{\rm ctr}=-1.
$$

They label Neumann and Dirichlet limits. At finite $g$ the spectrum solves the coupled equation $B+gA=0$, not two independently imposed chiral quantizations.

A strict second-order EP requires

$$
\mathcal H=\partial_w\mathcal H=0,
\qquad\partial_w^2\mathcal H\ne0,
\qquad A\ne0.
$$

Together with a one-dimensional ingoing solution space, this makes algebraic multiplicity two but geometric multiplicity one. The generalized radial mode obeys $P\psi_1=-(\partial_wP)\psi_0$. Taylor expansion at fixed other parameters gives

$$
\delta w=\pm\sqrt{-\frac{2A}{\mathcal H''}\delta g}+O(\delta g).
$$

The source audits a real $(g,\nu)$ loop with radii $0.002$ and $0.0005$: one loop exchanges the two modes, two restore them. Interior profile normalization distinguishes this from a mere relabelling of roots. It is not a calculation of a Berry phase. Complex-$g$ loops in the supplement are auxiliary analytic diagnostics, not real boundary theories.

The higher-family search at $(a,q)=(0.6,0.5)$ used 124 seeds and a finite window $-10<\operatorname{Im}w<0$, finding 13 roots across different $(g,\nu)$ theories: 11 co- and two counter-rotating. Eleven endpoint pairings were resolved, two remained unresolved. **Source-derived:** these counts, continuations and completeness limitations; they are not independently rerun here.

## FG coupling and a fixed-theory crossing

Put $D=r_+^2(1-a^2)$. Since $1-z\sim D/r^2$,

$$
\alpha_{\rm FG}=D^{h_-}C_-,\qquad
\beta_{\rm FG}=D^{h_+}C_+.
$$

With source $J_\kappa=\beta_{\rm FG}-\kappa_{\rm FG}\alpha_{\rm FG}$,

$$
\kappa_{\rm FG}=-D^\nu\frac{\Gamma(-\nu)}{\Gamma(\nu)}g,
\qquad Z_{\rm FG}=D^{-\nu}\frac{\Gamma(\nu)}{\Gamma(-\nu)}.
$$

Thus holding $g$ fixed generally changes the physical boundary theory when $a$ changes. The source's selected fixed-theory trajectory fixes $m=L=\mu_R=1$, $r_+=2$, $\nu=0.6673385700873228$ and $\kappa_{\rm FG}=3.1886930911762534$, while varying $a$. It crosses an EP at $a=0.6$. This is a tuned example, not a claim that an arbitrary one-parameter spin path hits an EP.

**Checked:** a fresh 40-digit Mathematica solution of the four real equations $(\Re\mathcal H,\Im\mathcal H,\Re\mathcal H',\Im\mathcal H')=0$ gives

$$
\begin{aligned}
w_*&=0.800446144090487-0.714082558501476i,\\
g_*&=0.572689365204922,\qquad
\nu_*=0.667338570087323,\\
\kappa_*&=3.188693091176253.
\end{aligned}
$$

The residuals vanish to more than 35 working digits, while $|\mathcal H''|=2.31394745$ and $|A|=0.36304995$ are nonzero. This confirms the characteristic double root and conversion to the specified coupling. The source's fitted fixed-theory square-root exponent $0.4998615628$ remains Source-derived.

## Laurent coefficients and causal relaxation

Use the alternate-quantization response $\langle O_-\rangle=-2\nu\alpha_{\rm FG}$, zero contact polynomial, and fixed finite source/operator units. Then

$$
G^R_{\kappa,\rm FG}=Z_{\rm FG}\widetilde G_g^R,
\qquad\widetilde G_g^R=-2\nu\frac{A}{\mathcal H}.
$$

At the double root,

$$
\begin{aligned}
\widetilde G_g^R&=\frac{\widetilde R_2}{(w-w_*)^2}
+\frac{\widetilde R_1}{w-w_*}+O(1),\\
\widetilde R_2&=-\frac{4\nu A}{\mathcal H''},\\
\widetilde R_1&=-4\nu\left(\frac{A'}{\mathcal H''}
-\frac{A\mathcal H'''}{3(\mathcal H'')^2}\right),
\qquad R_j^{\rm FG}=Z_{\rm FG}\widetilde R_j.
\end{aligned}
$$

The numerator condition excludes cancellation of this second-order pole in this particular channel. With $K(\widehat t)=\int dw\,e^{-iw\widehat t}G^R/(2\pi)$, lower-half-plane closure gives

$$
K_{\rm pole}(\widehat t)
=-i\bigl(R_1^{\rm FG}-iR_2^{\rm FG}\widehat t\bigr)
e^{-iw_*\widehat t}\Theta(\widehat t).
$$

The physical-time kernel is $(r_+/L^2)K(r_+t/L^2)$. Both terms belong to the double-pole contribution; dropping the simple Laurent term does not give the full pole kernel. The Jordan term alone peaks at $\widehat t=1/(-\operatorname{Im}w_*)$, with magnitude $|R_2|/[e(-\operatorname{Im}w_*)]$.

**Checked:** a symbolic Laurent expansion reproduces both coefficients, including the $1/3$ factor. The causal double-pole residue is $-\widehat t e^{-iw_*\widehat t}$ with these Fourier signs. At the checked finite-spin EP, $(R_1^{\rm FG},R_2^{\rm FG})=(-0.178620641540+0.158932956692i,-0.0562890985953+0.0498937059115i)$.

## Near extremality: the shrinking measure matters

Follow the co-rotating critical surface, varying both $\nu$ and $g$, and set $w=q+\epsilon\zeta$. Then $x_{\rm co}=\zeta/2$, while $x_{\rm ctr}\to q/2$. The limiting factors are

$$
A_0=\frac1{\Gamma(h_+-i\zeta/2)\Gamma(h_+-iq/2)},
\qquad B_0=A_0|_{\nu\mapsto-\nu},
\qquad\mathcal H_0=B_0+gA_0.
$$

Solving $\mathcal H_0=\partial_\zeta\mathcal H_0=0$ at $q=0.5$ gives

$$
\begin{aligned}
\zeta_0&=0.786691072413211-1.894048482449527i,\\
g_0&=0.324395562752348,
\qquad\nu_0=0.785662413504241.
\end{aligned}
$$

**Checked:** an independent 40-digit solve reproduces these values with residuals below $10^{-35}$, $|\mathcal H_{0,\zeta\zeta}|=0.180052079674$, and $|A_0|=0.432081505800$. The real four-equation Jacobian has determinant $0.0102481397430$ and smallest singular value $0.0946839608369$. This supports the local implicit-function continuation, not a global branch classification.

Consequently $w_*=q+\epsilon\zeta_0+O(\epsilon^2)$, $g=g_0+O(\epsilon)$ and $\nu=\nu_0+O(\epsilon)$. The mass variation inside a power produces logarithmic corrections:

$$
\begin{aligned}
Z_{\rm FG}&=\epsilon^{-\nu_0}(2r_+^2)^{-\nu_0}
\frac{\Gamma(\nu_0)}{\Gamma(-\nu_0)}
[1+O(\epsilon\log\epsilon)],\\
G^R(q+\epsilon x)&=\epsilon^{-\nu_0}
[\mathcal F(x)+O(\epsilon\log\epsilon)],\\
\kappa_{\rm EP}&\sim K_0\epsilon^{\nu_0},
\qquad K_0=7.64350066449\quad(r_+=2).
\end{aligned}
$$

The real-frequency expansion is on a compact regular scaled interval. For a smooth cutoff $\chi$ supported there, changing integration variable gives

$$
K_\chi(\widehat t)=\epsilon^{1-\nu_0}e^{-iq\widehat t}
\int\frac{dx}{2\pi}\chi(x)\mathcal F(x)e^{-ixT}
+o(\epsilon^{1-\nu_0}),\qquad T=\epsilon\widehat t.
$$

Height grows like $\epsilon^{-\nu_0}$; width shrinks like $\epsilon$; the band-limited impulse decreases like $\epsilon^{1-\nu_0}$. This does not establish the asymptotics of the unfiltered full-frequency kernel. Independently, $\partial_w=\epsilon^{-1}\partial_\zeta$ in the Laurent formulas gives $R_1^{\rm FG}=O(\epsilon^{1-\nu_0})$, $R_2^{\rm FG}=O(\epsilon^{2-\nu_0})$. Both contribute at order $\epsilon^{1-\nu_0}$ when $\widehat t=O(\epsilon^{-1})$.

The detuned control $g=1.2g_{\rm EP}$ retains the same susceptibility power but splits the double pole. The source's limiting simple roots are approximately $0.414942-1.750076i$ and $1.386448-2.421084i$. The distinct control with fixed nonzero $\kappa_*$ and fixed $\nu_0$ obeys

$$
G^R=\frac{2\nu_0}{\kappa_*}
\left[1-\frac{B/A}{\kappa_* Z_{\rm FG}}\right]^{-1}
\longrightarrow\frac{2\nu_0}{\kappa_*}
$$

on a regular scaled window. **Checked:** the exact algebraic identity preceding the limit has zero Mathematica residual. Neither control implies a uniform limit across zeros of $A$ or all frequencies.

## A common finite drive is a different comparison

The source specifies $j(\widehat t)=j_0s(\widehat t/\tau_d)e^{-iw_d\widehat t}$, $w_d=q+\epsilon x_d$, $x_d=1.414858$, and $\eta=\epsilon\tau_d$. Let $h(v)=0$ for $v\leq0$, $h(v)=1$ for $v\geq1$, and

$$
h(v)=\frac{e^{-1/v}}{e^{-1/v}+e^{-1/(1-v)}}\quad(0<v<1),
\qquad s(u)=h(u/0.2)h((1-u)/0.2).
$$

Its support is $[0,1]$ with a plateau on $[0.2,0.8]$. The source norm is $\|j\|_2^2=|j_0|^2\tau_d C_s^2$, where **Checked** numerical integration gives $C_s^2=0.762282101109341$. This norm is not automatically an injected energy.

With $\widehat s(k)=\int du\,s(u)e^{iku}$, the exact full-frequency convolution becomes

$$
\frac{o(\widehat t)}{j_0}=\eta e^{-iq\widehat t}
\int\frac{dx}{2\pi}e^{-ixT}G^R(q+\epsilon x)
\widehat s[\eta(x-x_d)].
$$

Fixed $\eta$ means duration increases as extremality is approached. It does not keep the source norm or duration fixed. The source compares A: EP, B: $1.2g_{\rm EP}$ at the same mass, C: $\kappa_{\rm FG}=1$. Its 30-response dataset covers $\epsilon=0.03,0.01,0.003$ and $\eta=0.1,1,10$, plus a bridge at $(0.01,1/3)$. The EP/non-EP peak ratio is about $1.02$–$1.20$, not an unbounded EP-only enhancement.

For the fixed-duration slice $\tau_d=100/3$, the reported A/B/C peak triplets are $(4.7945,4.7066,1.6634)$ at $\epsilon=0.003$, $(4.1575,3.9684,1.7266)$ at $0.01$, and $(3.0864,2.7958,1.8832)$ at $0.03$. **Source-derived:** these full-convolution values and convergence audits. A finite set of drives is not a theorem for arbitrary pulses.

## Regulated energy operator and the resolvent diagnostic

S4 fixes a separate bulk norm and regulator. In $L=1$ units use $\varphi=\phi-\Omega_Ht$, $dx/dr=f^{-1}$, $\beta=N^\phi+\Omega_H$, and $\Phi=r^{-1/2}\psi(t,x)e^{im\varphi}$. Then

$$
-(\partial_t-im\beta)^2\psi+\partial_x^2\psi-V\psi=0,
\qquad V=f\left[\mu^2+\frac{m^2}{r^2}+\frac{f'}{2r}-\frac{f}{4r^2}\right].
$$

For $\tau=t+h(x)$, $B_h=h'(x)$, $U=V-m^2\beta^2$,

$$
(1-B_h^2)\psi_{\tau\tau}
-(2B_h\partial_x+\partial_xB_h+2im\beta)\psi_\tau
-\psi_{xx}+U\psi=0.
$$

The regulated energy includes its boundary term:

$$
E=\frac12\int^{x_c}\!dx\,
[(1-B_h^2)|\pi|^2+|\psi_x|^2+U|\psi|^2]
-\frac{\alpha_R}{2}|\psi(x_c)|^2,
\quad\psi_x(x_c)=\alpha_R\psi(x_c).
$$

The outer slice has $B_h(x_c)=0$, so the real Robin term cancels the outer energy flux. The gyroscopic term contributes no real energy production. Positivity must still be checked for the chosen parameters; a displayed quadratic expression alone does not prove it.

Set $s=r_+/r=s_c^u$, $J=-ds/du=|\log s_c|s$, $\chi=-dx/ds=r_+/(s^2f)$, $B_h=1-u$. With $p_\pm=1/2\pm\nu$ and $\rho_R=(1-a^2)^\nu\cot\xi$, the asymptotic cutoff prescription is

$$
\alpha_R=-\frac1{\chi_c}
\frac{p_-+p_+\rho_Rs_c^{2\nu}}
{s_c(1+\rho_Rs_c^{2\nu})}.
$$

It is frequency independent but is an asymptotic boundary prescription at finite cutoff, not the exact finite-radius continuation of the full solution. A Legendre–Gauss–Lobatto derivative $D_u$ and quadrature $W$ satisfy $WD_u+D_u^TW=e_Ne_N^T-e_0e_0^T$. The source constructs

$$
\begin{aligned}
M&=W\operatorname{diag}[J\chi(1-B_h^2)],\\
C&=W(B_hD_u+D_uB_h)+2imW\operatorname{diag}(J\chi\beta),\\
K&=D_u^TW\operatorname{diag}[(J\chi)^{-1}]D_u
+W\operatorname{diag}(J\chi U)-\alpha_Re_Ne_N^T,\\
M\ddot\psi-C\dot\psi+K\psi&=0,\qquad
\mathcal L=i\begin{pmatrix}0&I\\-M^{-1}K&M^{-1}C\end{pmatrix},\\
G_E&=\tfrac12\operatorname{diag}(K,M)=F^\dagger F.
\end{aligned}
$$

Horizon entries require analytic endpoint limits. In this fixed energy norm,

$$
\widehat{\mathcal L}_E=\frac{L^2}{r_+}
(F\mathcal LF^{-1}+m\Omega_HI),
\qquad\|(wI-\widehat{\mathcal L}_E)^{-1}\|_2
=\frac1{s_{\min}(wI-\widehat{\mathcal L}_E)}.
$$

The reciprocal singular value concerns all bulk vectors in that norm, not the particular FG source-response channel. Changing $s_c$ also changes $B_h(s)=1-\log s/\log s_c$; thus it changes the foliation and norm, obstructing an unqualified continuum-limit comparison.

The bordered characteristic solves $[\mathcal L_N-\lambda I,b;c^T,0](x,f)^T=(0,1)^T$. Differentiating gives the same bordered matrix acting on $(x_\lambda,f_\lambda)^T$ with right-hand side $(x,0)^T$. A finite EP requires $f=f_\lambda=0$, $f_{\lambda\lambda}\ne0$, supplemented by left/right chain and self-orthogonality tests.

**Source-derived:** the production $s_c=0.002,N=44$ EP is $(g,\nu,w)=(0.573486526975,0.670710720184,0.799710482596-0.717374446694i)$; the energy Gram matrix has condition number $9.21\times10^{10}$ and minimum eigenvalue $1.57\times10^{-6}$. The reported tiny positive energy-balance eigenvalue is a finite-precision diagnostic, not an exact stability proof. A split pair can resemble a double pole above its splitting scale and become linear below it.

**Checked, model scope only:** for the canonical $2\times2$ Jordan block the squared smallest singular value at real displacement $r$ is $(1+2r^2-\sqrt{1+4r^2})/2=r^4+O(r^6)$, hence $s_{\min}\sim r^2$. This independently checks the diagnostic mechanism; it does not reproduce the paper's discretized BTZ matrix. The scalar backward error $|\mathcal H|/\sqrt{|B|^2+|gA|^2}$ is another, inequivalent diagnostic.

## Equation ledger, dependencies and use in the vault

| Chain | Reusable object | Conditions / boundary of the result |
|---|---|---|
| (2.1)–(2.6) | Exact ingoing mode and $A,B$ | Open BF window; nonextremal horizon; Fourier signs fixed |
| Robin data → FG data | $g=-\kappa Z$, physical source | Fixed renormalization units; no spin-dependent finite rescaling |
| (2.11) → (4.2) | Strict EP and two Laurent coefficients | Double zero, unique ingoing space, numerator nonzero |
| (4.3)–(4.4) | Causal pole contribution | Includes both Laurent terms; not all frequencies |
| S3.2 → §4.2 | Local EP surface and scaled susceptibility | Nonsingular real Jacobian; compact regular frequency window |
| (4.8) | Band-limited impulse | Includes $dw=\epsilon dx$; not an unfiltered-kernel theorem |
| §4.3–4.4 | Fixed-theory and fixed-drive controls | Different paths/protocols answer different questions |
| S4 → (5.2) | Energy-norm finite resolvent | Regulator, domain and Gram matrix held fixed |

For AdS quantization, import the exact Robin determinant and its source numerator together. To translate to a different response convention, first change $J_\kappa$, the operator normalization and contact terms; then recompute residues. Pole positions alone are insufficient. For regional/CPS work, the real Robin domain and its energy boundary term are useful concrete inputs, but this article does not construct a regional symplectic reduction, interface measure or sewing theorem. The finite energy resolvent cannot be substituted for a boundary two-point function.

## Verification and remaining boundaries

**Verified:** Mathematica radial-to-hypergeometric residuals and connection indices; finite-spin double root and FG coupling; limiting double root and nonsingular real Jacobian; Laurent coefficients and inverse-Fourier sign; fixed-$\kappa$ algebra; compact-source norm; canonical Jordan singular-value mechanism. The checks above give equations, assumptions and numerical tolerances sufficient to reproduce their scope.

**Assumptions:** linear scalar probe, $0<\nu<1$, $a<1$, $q=0.5$ for numerical roots, ingoing future horizon, real Robin family, source/operator units and contact prescription as stated; limiting expansion only on regular compact scaled windows. The symbolic ODE check used real $w$ for simplification and extends meromorphically away from the stated singular cases.

**Source-derived:** full main/supplement reconstruction, branch-search counts, topology/profile transport audits, production finite-drive quadratures, discrete BTZ matrices and their convergence tables. Official PDF pages 4, 9, 11 and 15 were rendered and inspected to confirm the geometry, Laurent/Fourier formulas, scaling figure and drive/resolvent distinction; text and TeX supplied the remaining technical navigation.

**Blocked:** the official source archive's README refers to `code/README.md`, `code/environment.yml` and numerical data, but the retrieved archive contains no `code/` directory; its only file under a `data/` directory is `anc/data/rotating_btz_endpoint_pairing_table.tex`. Thus the advertised production implementation and saved numerical datasets could not be audited or rerun exactly. The analytic source was available, so this is not a source-access block on completing the note or on the independent checks above.

**Failed:** no contradiction was found in the specific analytic and numerical targets checked here. This is not verification of every plot, branch or discretization claim.

**Not verified:** exhaustive EP classification, all higher-family endpoint tracks, full finite-drive quadrature suite, finite BTZ Jordan-chain/energy-matrix production audits, a fixed-norm continuum pseudospectrum, or a universal full-impulse enhancement/suppression theorem. These are not inferred from the local checks.
