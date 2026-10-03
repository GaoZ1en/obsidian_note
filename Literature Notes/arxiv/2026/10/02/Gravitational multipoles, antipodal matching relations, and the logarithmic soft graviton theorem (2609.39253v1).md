---
paper id: 2609.39253v1
title: Gravitational multipoles, antipodal matching relations, and the logarithmic soft graviton theorem
authors:
  - Geoffrey Compère
  - Dima Fontaine
  - Wen-Bin Liu
  - Kevin Nguyen
publication date: 2026-09-30T08:17
abstract: |-
  We derive the classical logarithmic soft graviton theorem for the scattering of massive particles in four-dimensional asymptotically flat spacetime using a position-space analysis of the Weyl tensor. Starting from the Iyer-Damour multipole solution in harmonic gauge, we obtain an infinite tower of antipodal matching relations across spatial infinity for all five Newman-Penrose Weyl scalars, at linear order in $G$ and for the leading matter-induced logarithms at order $G^2$. We connect the relation relevant to the logarithmic soft theorem to the radiative-gauge formulation of Boschetti-Campiglia and Compère-Robert. We then compute the required asymptotic fields directly from scattering data, including matter contributions and nonlinear effects responsible for graviton drag. Combining these results with the Newman-Penrose evolution equations yields position-space proofs of the classical leading and logarithmic soft graviton theorems, independently confirming the frequency-space derivation of the latter originally performed by Laddha and Sen.
comments: "65 pages, 1 figure"
url: https://arxiv.org/abs/2609.39253v1
summary: "An explicit Weyl-data matching and flux benchmark separating the linear multipole tower, matter logarithms, and the nonlinear drag needed for the classical logarithmic soft theorem."
tags: []
---

# From matched Weyl data to the classical logarithmic soft factor

The main usable result is a position-space derivation of the classical $O(G^2)$ logarithmic soft factor, including its **matter-trajectory** and **graviton-drag** terms. It gives a concrete test of how corner matching, radiative flux and subleading boundary data fit together. Its infinite antipodal tower is established at $O(G)$ and for the matter-induced leading logarithms at $O(G^2)$. Only the particular logarithmic relation used in the soft theorem is connected here to the full nonlinear radiative matching law. The full nonlinear tower remains open.

Source: [official v1](https://arxiv.org/abs/2609.39253v1); full PDF and TeX inspected. This reconstruction is **Source-derived** except for explicitly identified independent checks. Reasons: `T1-charge; T1-symmetry; T1-boundary; T2-celestial-carrollian`.

## How to read this long paper

| Source tree; printed pages | Purpose and dependency |
| --- | --- |
| 1, 2–3 | Why the position-space derivation should not assume the frequency-space soft factor. |
| 2, 3–5 | Metric, sphere orientation, democratic NP tetrad, spin-weight derivatives and signed scattering momenta. Essential. |
| 3.1–3.2, 5–7 | Harmonic post-Minkowskian hierarchy and STF multipole solution. |
| 3.3, 7–10 | Linear vacuum electric-magnetic duality; current moments from mass moments. |
| 3.4, 10–12 | Polynomial early-time moments and the entire linear antipodal hierarchy. |
| 3.5, 12–13 | Leading matter logarithms inherit selected linear matching coefficients. |
| 3.6, 13–17 | Coordinate and tetrad shifts connect one logarithmic matching to the nonlinear radiative law. Essential scope boundary. |
| 4.1, 17–19 | Massive worldlines, logarithmic deviation, retarded Liénard–Wiechert field and quadratic source. |
| 4.2.1–4.2.2, 19–23 | Incoming/outgoing matter Weyl coefficients and explicit matching. |
| 4.3, 23–30 | Collinear retarded integral, universal drag tail, radial propagation of logarithms and absence of the relevant spatial logarithm. Essential. |
| 4.4, 30–32 | Harmonic-to-radiative metric transformation and peeling violation. |
| 5.1, 33–36 | NP evolution, leading memory, energy flux and the electric-sector inversion. |
| 5.2, 36–39 | Logarithmic flux, soft differential identities and trivial kernel on smooth sphere tensors. Essential. |
| 6, 39–40 | Nonlinear hierarchy, harmonic expansion and quantum extensions remain open. |
| A.1–A.3, 40–52 | Mass/current projections, closed kernels and matter falloffs. Technical reference. |
| B.1–B.3, 52–58 | Leading, matter-log and drag differential identities; conservation removes their remainders. |
| C.1–C.2, 58–62 | Which metric tails contribute to $\Psi_1$; explicit drag coefficient. |
| References | Prior nonlinear matching and asymptotic trajectory inputs. |

Read 2 → 4.1–4.3 → 5 for the mechanism, then 3.6 to see precisely which matching theorem is being used. Read 3.4–3.5 with A for the broader tower. B and C are necessary calculation references, not optional evidence for the final coefficient. All these clusters are reconstructed below.

# Fields, conventions and the perturbative hierarchy

Use signature $(-+++)$, $\epsilon_{0123}=1$, $x^i=rn^i$, $u=t-r$, $v=t+r$. On the unit sphere, $\gamma_{AB}=\operatorname{diag}(1,\sin^2\theta)$, $\epsilon^{\theta\phi}=1/\sin\theta$, $e_A^i=\partial_A n^i$, and

$$
D_Ae_B^i=-\gamma_{AB}n^i,\qquad
\gamma^{AB}e_A^ie_B^j=\delta^{ij}-n^in^j.
$$

The antipodal map $\Upsilon:(\theta,\phi)\mapsto(\pi-\theta,\phi+\pi)$ preserves $\gamma$ but reverses $\epsilon$. One-form pullback includes its Jacobian; it is not just substitution $n\mapsto-n$. With $\theta^A=(1,-i/\sin\theta)$, $\Upsilon^*\theta^A=-\bar\theta^A$.

The background tetrad is

$$
l^\mu=\frac{q^\mu}{\sqrt2},\quad n_{\rm NP}^\mu=\frac{\tilde q^\mu}{\sqrt2},\quad
m^\mu=\frac1{\sqrt2}(0,\theta^Ae_A^i),\qquad
q=(1,\vec n),\quad\tilde q=(1,-\vec n).
$$

Thus $l\cdot n_{\rm NP}=-1$, $m\cdot\bar m=1$. The paper denotes both the spatial unit vector and a tetrad leg by $n$; the subscript here prevents confusion. Weyl scalars are

$$
(\Psi_0,\Psi_1,\Psi_2,\Psi_3,\Psi_4)
=-(C_{lmlm},C_{lnlm},C_{lm\bar mn},C_{ln\bar mn},C_{n\bar mn\bar m}).
$$

Their spin weights are $2-I$. For spin weight $s$,

$$
\eth F_s=(\theta^A\partial_A-s\cot\theta)F_s,\qquad
\bar\eth F_s=(\bar\theta^A\partial_A+s\cot\theta)F_s.
$$

Relative to the asymmetric tetrad often used in the charge literature, the source gives $\Psi_I^*=2^{1-I/2}\Psi_I$ and $\eth^*=\eth/\sqrt2$. These factors matter in every flux coefficient.

Massive velocities are future directed, $v_a^2=-1$; signed momenta are $p_a=\eta_am_av_a$, with $\eta_a=+1$ outgoing and $-1$ incoming. Consequently

$$
\sum_{a\in\pm}p_a=0,\qquad P=\sum_{a\in\mathrm{out}}p_a=-\sum_{a\in\mathrm{in}}p_a.
$$

$q\cdot v_a<0$ for every direction. Incoming $p_a$ is past directed; do not separately insert an additional incoming minus sign into formulas already summed over signed $p_a$.

Start from Einstein gravity coupled to worldline matter and define the gothic deviation $\mathfrak h^{\mu\nu}=\sqrt{-g}g^{\mu\nu}-\eta^{\mu\nu}$. In harmonic gauge $\partial_\mu\mathfrak h^{\mu\nu}=0$,

$$
\square\mathfrak h^{\mu\nu}=16\pi G|g|T^{\mu\nu}+\Lambda^{\mu\nu},\qquad
\mathfrak h=G\mathfrak h_{(1)}+G^2\mathfrak h_{(2)}+\cdots.
$$

At the first two orders,

$$
\square\mathfrak h_{(1)}=16\pi T_{(0)},\qquad
\square\mathfrak h_{(2)}=16\pi(T_{(1)}+\mathfrak h_{(1)}T_{(0)})+N[\mathfrak h_{(1)}].
$$

The second-order solution is split into a matter part and a quadratic gravitational part. This split is useful for solving equations but the matter part alone does not satisfy the complete second-order harmonic condition. The source's $N$ contains $-\mathfrak h^{\rho\sigma}_{(1)}\partial_\rho\partial_\sigma\mathfrak h_{(1)}^{\mu\nu}$ and products of first derivatives; their different roles in the tail integral are kept below.

The source works with field equations rather than constructing a new boundary action or symplectic potential. No new CPS integrability claim follows just from this hierarchy.

# Multipoles, duality and the matching tower

## Canonical harmonic multipoles

For retarded vacuum fields with no incoming radiation, the mass/current STF moments give

$$
\mathfrak h^{00}=-4\sum_{\ell\ge0}\frac{(-1)^\ell}{\ell!}\partial_L\frac{M_L(u)}r,
$$
$$
\mathfrak h^{0j}=4\sum_{\ell\ge1}\frac{(-1)^\ell}{\ell!}
\left[\partial_{L-1}\frac{\dot M_{jL-1}}r+
\frac\ell{\ell+1}\partial_{pL-1}\frac{\epsilon_{jpq}S_{qL-1}}r\right],
$$
$$
\mathfrak h^{jk}=-4\sum_{\ell\ge2}\frac{(-1)^\ell}{\ell!}
\left[\partial_{L-2}\frac{\ddot M_{jkL-2}}r+
\frac{2\ell}{\ell+1}\partial_{pL-2}\frac{\epsilon_{pq(j}\dot S_{k)qL-2}}r\right].
$$

Here the moments already carry their perturbative $G$ dependence, unlike the separately indexed $\mathfrak h_{(i)}$. Lowest moments obey $\dot M=0$, $\ddot M_i=0$, $\dot S_i=0$ at linear order. At the next order these become flux balances. Appendix A expands Cartesian derivatives using

$$
\partial_L\frac{M_L(u)}r=(-1)^\ell n_L
\sum_{k=0}^{\ell}\frac{(\ell+k)!}{2^kk!(\ell-k)!}
\frac{M_L^{(\ell-k)}(u)}{r^{k+1}}.
$$

The coefficient $a_{k\ell}$ is defined to vanish outside $0\le k\le\ell$. STF contraction removes trace terms in this identity.

Let $E_{ij}=C_{0i0j}$, $B_{ij}=\tfrac12\epsilon_i{}^{pq}C_{0jpq}$ and $\mathcal W=E+iB$. Then

$$
\Psi_0=-m^im^j\mathcal W_{ij},\quad
\Psi_1=\frac1{\sqrt2}m^in^j\mathcal W_{ij},\quad
\Psi_2=-\frac12n^in^j\mathcal W_{ij},
$$
$$
\Psi_3=-\frac1{\sqrt2}\bar m^in^j\mathcal W_{ij},\qquad
\Psi_4=-\bar m^i\bar m^j\mathcal W_{ij}.
$$

Linear vacuum duality is encoded by $\mathcal M_L=M_L-i[2\ell/(\ell+1)]S_L$ and $\mathcal M_L\mapsto-i\mathcal M_L$. It is a solution-generating relation, with NUT charge excluded at $\ell=0$; it is neither a nonlinear symmetry nor a symmetry of the full chosen parameter space. Appendix A.2 directly computes current moments and recovers the factor $-2i\ell/(\ell+1)$ multiplying the mass kernel.

## The radial kernels and the finite coordinate sum

Write $H_I=\Theta_{I-2}$ and $s=|I-2|$. STF harmonic projection yields

$$
\langle(\Psi_I^{[n]})_{(s)},\widehat n_L^{(s)}\rangle
=\frac{C_\ell^{(s)}}{\ell!}\mathcal M_L^{(\ell-n+1+H_I)}R_I(n,\ell),
$$

where the radial order is $r^{-n-2+H_I}$ and

$$
C_\ell^{(0)}=\frac{4\pi\ell!}{(2\ell+1)!!},\quad
C_\ell^{(1)}=(\ell+1)C_\ell^{(0)},\quad
C_\ell^{(2)}=\frac{\ell+2}{2}C_\ell^{(1)}.
$$

The five kernels are

$$
R_0=\frac{(\ell+n-1)!}{2^n(n-3)!(\ell-n+1)!},\qquad
R_1=\frac{(\ell+2)(\ell+n-1)!}{2^n(n-2)!(\ell-n+1)!},
$$
$$
R_2=\frac{(\ell+1)(\ell+2)(\ell+n-2)!}{2^{n-1}(n-2)!(\ell-n+2)!},
$$
$$
R_3=-\frac{\ell(\ell+1)(\ell+2)(\ell+n-2)!}{2^{n-1}(n-1)!(\ell-n+2)!},\qquad
R_4=\frac{\ell(\ell-1)(\ell+1)(\ell+2)(\ell+n-2)!}{2^{n-1}n!(\ell-n+2)!}.
$$

Their domains are respectively $(\ell\ge2,3\le n\le\ell+1)$, $(\ell\ge1,2\le n\le\ell+1)$, $(\ell\ge0,2\le n\le\ell+2)$, $(\ell\ge1,1\le n\le\ell+2)$ and $(\ell\ge2,0\le n\le\ell+2)$; outside these they are zero **after the lowest-moment conservation conditions are applied**. Thus the apparent low radial orders cancel and linear peeling is recovered.

No news near spatial infinity gives polynomial early-time moments $M_L,S_L=\sum_{k=0}^{\ell}(M_{L,k},S_{L,k})u^k+O(G^2)$. If

$$
\Psi_I=\sum_{n\ge0}\sum_{k=0}^n
\frac{u^{n-k}}{r^{n+2-H_I}}\Psi_I^{[n,k]},
$$

changing $u=v-2r$ produces

$$
\Psi_I^{[n,k]}\big|_{\mathscr I^-_+}
=\sum_{j\ge0}(-2)^j\binom{n+j-k}{j}
\Psi_I^{[n+j,k]}\big|_{\mathscr I^+_-}.
$$

Each fixed multipole truncates this sum. Combining it with harmonic parity gives, for dyad-stripped tensor/vector components,

$$
\Psi_0^{[n,k]}\big|_+=(-1)^{n+1}\Upsilon^*\Psi_4^{[n+1,k+1]}\big|_-,\qquad
\Psi_1^{[n,k]}\big|_+=(-1)^n\Upsilon^*\Psi_3^{[n+1,k+1]}\big|_-,
$$
$$
\Psi_2^{[n,k]}\big|_+=(-1)^n\Upsilon^*\Psi_2^{[n,k]}\big|_-.
$$

The reversed $0/4$ and $1/3$ relations hold too; $+$ here means $\mathscr I^+_-$, and $-$ means $\mathscr I^-_+$. Recontracting with dyads introduces the antipodal dyad signs. **Checked, finite:** 798 kernel sum identities for $2\le\ell\le20$, $0\le n\le\ell+2$ passed exactly in Sage. The infinite-tower proof remains the source's harmonic argument.

Appendix A.3 translates the moments into corner falloffs: $\Psi_0\sim r^{-5}[G,O(u^2)+G^2O(u\log|u|)]$, $\Psi_1\sim r^{-4}[G,O(u)+G^2O(\log|u|)]$, $\Psi_2\sim r^{-3}[G,O(1)+G^2O(u^{-1})]$, and radiative $\Psi_3,\Psi_4$ start at $G^2r^{-2}u^{-2}$ and $G^2r^{-1}u^{-3}$ in this corner regime. These are matter-sector expansions, not full global falloffs.

## What the logarithmic tower does and does not prove

Long-range acceleration motivates $G^2M_{L,\ell-1}^{\log}u^{\ell-1}\log|u|$ for $\ell\ge1$. Differentiation leaves the same factorial kernel as the polynomial calculation at $k=2+H_I$. Moreover $\log|v-2r|=\log r+\log2+O(v/r)$ near past null infinity. Therefore leading matter $\log|u|$ coefficients at the future corner match radial $\log r$ coefficients at the past corner, with the same $0/4$, $1/3$ and $2/2$ parity factors.

Quadratic gravitational sources have not been included in this deduction. The general $O(G^2)$ tower is consequently provisional. The particular relation needed later is

$$
(\Psi_1^{[2,\log]})_A\big|_{\mathscr I^+_-}
=\Upsilon^*(\Psi_3^{[3,\log]})_A\big|_{\mathscr I^-_+}.
$$

Section 3.6 connects this one relation to the known nonlinear radiative matching under a polyhomogeneous Bondi expansion and $N_{AB}=O(u^{-2})$. It does not prove polyhomogeneity from arbitrary Cauchy data.

# Scattering data produce the Weyl coefficients

For massive worldlines,

$$
T^{\mu\nu}=\sum_a\frac{m_a}{\sqrt{-g}}\int ds_a\,
\dot X_a^\mu\dot X_a^\nu\delta^{(4)}(x-X_a),\qquad
X_a=y_a+v_as_a+Gc_a\log|s_a|+\cdots,
$$

$$
c_a^\mu=\eta_a\sum_{\substack{b\ne a\\\eta_b=\eta_a}}
\frac{m_b\{v_a^\mu-v_b^\mu[2(v_a\cdot v_b)^3-3(v_a\cdot v_b)]\}}
{[(v_a\cdot v_b)^2-1]^{3/2}}.
$$

The sum involves asymptotically separated bodies in the same incoming or outgoing set. Coincident velocities, bound asymptotic systems and massless hard particles are outside this formula's domain. $c_a$ is the coefficient before the explicit $G$ in the trajectory. The divergent angular momentum coefficient is $J^a_{\mu\nu}=c^a_\mu p^a_\nu-c^a_\nu p^a_\mu$, not an impact-parameter angular momentum. Pair exchange gives $\sum_aJ^a=0$: the self-$v_a$ term wedges to zero and the $a,b$ cross terms cancel. This pairwise cancellation was independently checked algebraically.

The retarded Green function is $G_{\rm ret}=-\Theta(t-t')\delta((x-x')^2)/(2\pi)$. Define

$$
\rho_a^2=[v_a\cdot(x-y_a)]^2+(x-y_a)^2,\quad
Z_a^\mu=(x-y_a)^\mu+v_a^\mu v_a\cdot(x-y_a),\quad
\Pi_a^{\mu\nu}=\eta^{\mu\nu}+v_a^\mu v_a^\nu.
$$

Then $v_a\cdot Z_a=0$, $Z_a^2=\rho_a^2$, and

$$
\mathfrak h_{(1)}^{\mu\nu}=-\sum_a\frac{4m_av_a^\mu v_a^\nu}{\rho_a},\qquad
\mathfrak h_{(2),m}^{\mu\nu}=\sum_a4m_av_a^\mu v_a^\nu c_a^\lambda
\partial_\lambda\frac{\log|s_{a,\rm ret}|}{\rho_a}+\text{non-log}.
$$

At $\mathscr I^-_+$, $s_{a,\rm ret}=2r(\tilde q\cdot v_a)+O(1)$, whereas at future null infinity it is $-u/(q\cdot v_a)+O(1)$. This is the origin of the different logarithmic branches. At the future early corner only incoming trajectories are used; at the future late corner only outgoing trajectories determine the local matter term.

At a fixed perturbative order, trace reverse by $h_{\mu\nu}=-\mathfrak h_{\mu\nu}+\eta_{\mu\nu}\mathfrak h/2$. Quadratic algebraic terms in the gothic-to-metric map and the quadratic Weyl tensor have no logarithm for the relevant linear input, so they cannot generate the selected $G^2$ log coefficient. This argument does not permit dropping them from the complete second-order curvature.

The linear vacuum curvature is

$$
C_{\mu\nu\rho\sigma}^{\rm lin}
=\tfrac12(\partial_\rho\partial_\nu h_{\mu\sigma}
+\partial_\sigma\partial_\mu h_{\nu\rho}
-\partial_\rho\partial_\mu h_{\nu\sigma}
-\partial_\sigma\partial_\nu h_{\mu\rho}).
$$

The source uses this in the vacuum/log sector; arbitrary sourced metrics require Ricci subtraction. xAct independently gives zero for its pure-gauge variation $h_{\mu\nu}=2\partial_{(\mu}\xi_{\nu)}$.

The Coulomb coefficients are

$$
\Psi_2\big|_{\mathscr I^+_\mp}=-\frac G{r^3}\sum_{a\in\mathrm{in/out}}
\frac{m_a}{(q\cdot v_a)^3}+O(r^{-4}),\qquad
\Psi_2\big|_{\mathscr I^-_+}=-\frac G{r^3}\sum_{a\in\mathrm{in}}
\frac{m_a}{(\tilde q\cdot v_a)^3}+O(r^{-4}).
$$

For $W_A(c,v;q)=e_A^\mu(c_\mu v_\nu-v_\mu c_\nu)q^\nu$, the matter logarithms are

$$
(\Psi_1^{[2,\log]})_{A,m}\big|_{\mathscr I^+_\mp}
=-\frac32G^2\sum_{a\in\mathrm{in/out}}\frac{m_aW_A(c_a,v_a;q)}{(q\cdot v_a)^4},
$$
$$
(\Psi_3^{[3,\log]})_{A,m}\big|_{\mathscr I^-_+}
=+\frac32G^2\sum_{a\in\mathrm{in}}\frac{m_aW_A(c_a,v_a;\tilde q)}{(\tilde q\cdot v_a)^4}.
$$

In the second formula $e_A=\partial_Aq$ is retained, as in the source. Its antipodal pullback changes sign while $\tilde q\mapsto q$, reproducing the matching. No incoming radiation excludes the relevant $\log v$ branch; the future early matter coefficient has no $\log r$ branch.

**Checked:** explicit Cartesian Hessians with $v=(\sqrt{1+w^2},0,0,w)$, arbitrary observation angle and arbitrary $c^\mu$ reproduce both the Coulomb $\Psi_2$ and future matter-log $\Psi_1$ formulas with zero residual. Spatial rotation covers a general single timelike velocity. The log check differentiates $(c\cdot Z)/\rho^3$; derivatives hitting the logarithm do not contribute to its coefficient.

# Graviton drag is a retarded collinear tail

A local outgoing Liénard–Wiechert field misses part of the late retarded light cone, which crosses the scattering region. Represent the leading waveform by a transition function $\mathcal F(u/L)$ between the incoming and outgoing sums, with $\mathcal F(-\infty)=0$, $\mathcal F(+\infty)=1$, and $z\mathcal F'(z)\to0$. Smooth compact support of $\mathcal F'$ is a sufficient version of the decay assumptions used for the region expansions.

Momentum conservation reduces the leading term from $-\mathfrak h_{(1)}\partial\partial\mathfrak h_{(1)}$ to

$$
N^{\mu\nu}\supset-\frac{16}{r^2L^2}\mathcal F''(u/L)\mathcal A^{\mu\nu}(\vec n),\qquad
\mathcal A^{\mu\nu}=(P\cdot q)\sum_{a\in\pm}\frac{p_a^\mu p_a^\nu}{q\cdot p_a}.
$$

Radial integration over the retarded cone leaves a kernel $[(u-u')+r(1-n\cdot n')]^{-1}$. Expanding in $1/r$ before integrating angles loses the collinear region. Split $\mathcal A(n')=\mathcal A(n)+[\mathcal A(n')-\mathcal A(n)]$ first. The singular part integrates exactly:

$$
\int\frac{d\Omega'}{\delta+r(1-n\cdot n')}
=\frac{2\pi}r\log\frac{\delta+2r}{\delta},\qquad\delta=u-u'>0.
$$

The difference is locally integrable and its leading time integral vanishes. For the retained part, $\int du'\mathcal F''(u'/L)=0$ and $\int du'\,u'\mathcal F''(u'/L)=-L^2$. Therefore

$$
\mathfrak h_{(2),g}^{\mu\nu}\big|_{\mathscr I^+_+}
\supset-\frac8{ru}\mathcal A^{\mu\nu}.
$$

Both the angular integral and the moments were independently checked, with the latter also evaluated for $\mathcal F=(1+\tanh z)/2$. The integration-by-parts argument shows profile independence under the decay assumptions; the explicit profile is a check, not the proof of universality.

The remaining leading quadratic source terms are proportional to $q^\mu q^\nu$ in the collinear part and have no angular radiative projection. The source also argues that the $r'^{-3}$ contribution has an observation-angle-independent Cartesian coefficient and gives no logarithmic Weyl contribution in the subsequent derivative hierarchy. These exclusion statements depend on the retarded region analysis and are retained as Source-derived; this note did not recompute the entire quadratic source integral.

## Propagating the tail into the logarithmic Weyl coefficient

For a scalar component,

$$
\square\frac{F(u,n)}{r^k}
=\frac{2(k-1)\partial_uF}{r^{k+1}}
+\frac{[\Delta_{S^2}+k(k-1)]F}{r^{k+2}}.
$$

Hence a $-8\mathcal A/(ru)$ tail generates the homogeneous tower

$$
-\frac{8\mathcal A}{ru}
+\frac{4\log u}{r^2}\Delta\mathcal A
-\frac{u(\log u-1)}{r^3}(\Delta+2)\Delta\mathcal A
+\frac{u^2(\log u-3/2)}{12r^4}(\Delta+6)(\Delta+2)\Delta\mathcal A.
$$

The local Coulombic source contributes polynomial time terms, not these logarithms. The wave identity and all three displayed recursion residuals were independently checked. A useful angular reduction, also checked for $k=1,\ldots,5$, is

$$
\Delta(q\cdot v)^{-k}=-\frac{k(k-1)}{(q\cdot v)^k}
-\frac{2k^2v^0}{(q\cdot v)^{k+1}}
-\frac{k(k+1)}{(q\cdot v)^{k+2}},\qquad v^2=-1.
$$

Appendix C treats the covariant metric tower as $A/(ru)+B\log u/r^2+C\,u(\log u-1)/r^3+D\,u^2(\log u-3/2)/r^4$. The coefficient of $\log u/r^4$ in $\Psi_1$ is

$$
\theta^A\left[\frac34(D_AB_{00}+n^iD_AB_{0i}+2e_A^iB_{0i})
+\frac14(3e_A^iC_{0i}+2n^iD_AC_{0i}+D_AC_{00}
+3n^ie_A^jC_{ij}+n^in^jD_AC_{ij})\right].
$$

The $D$ tail cancels in this projection. This cancellation was checked for an arbitrary symmetric coefficient tensor in a rotated observation frame. Substituting the trace-reversed tail coefficients gives

$$
(\Psi_1^{[2,\log]})_{A,g}\big|_{\mathscr I^+_+}
=3G^2\sum_{a\in\pm}\frac{m_a^4}{(q\cdot p_a)^4}
e_A^\mu(P_\mu p^a_\nu-P_\nu p^a_\mu)q^\nu.
$$

The cancellation of the separate $B,C$ expressions to this antisymmetric form was independently reproduced. Their long intermediate terms contain $v^0$ and $P\cdot v$; neither survives the final result.

At the spatial corner, the gravitational source is homogeneous of degree $-4$ after offsets are omitted at the relevant order. Split the radial integral into bounded, intermediate and $r'\sim r$ regions. The candidate $\log r/r^2$ coefficient is proportional to

$$
\int d\Omega'\left[\xi N(\xi,n')+\tfrac12(\xi^2-1)\partial_\xi N(\xi,n')\right]_{\xi=n\cdot n'}.
$$

Since $N(-\xi,-n')=N(\xi,n')$, this integrand is odd under $n'\mapsto-n'$. The source extends the parity argument to the other terms capable of generating $\log r/r^4$ in $\Psi_1$, concluding that this branch vanishes at $\mathscr I^+_-$ through $G^2$. It is a selected-coefficient result; it does not exclude every logarithm in every component or gauge.

# Coordinate and tetrad changes complete one matching relation

Harmonic $u$ does not follow the physical null cones. The logarithmic part of the outgoing radiative transformation is

$$
U=u+2G(q\cdot P)\log(r/b),\quad
R=r-2Gn^iP_i\log(r/b),\quad
X^A=x^A-\frac{2G}r e_i^AP^i\log(r/b),
$$

or $X^\mu=x^\mu-2GP^\mu\log(r/b)+\cdots$. At second order, $\mathcal L_{\xi_{(1)}}h_{(1)}$ adds relevant radial logarithms; the relevant $\mathcal L_{\xi_{(1)}}^2\eta$ part is pure gauge. Linear gauge invariance does not let one discard the Lie derivative of the nonzero first-order metric.

There is also a tetrad rotation with $a=-G\log(R/b)\theta^AD_A(q\cdot P)/R$:

$$
\Psi_1^{\rm rad}=\Psi_1^{\rm harm}-\bar a\Psi_0^{\rm harm}+3a\Psi_2^{\rm harm},\qquad
\Psi_3^{\rm rad}=\Psi_3^{\rm harm}-3\bar a\Psi_2^{\rm harm}+a\Psi_4^{\rm harm}.
$$

Only the $\Psi_2$ terms contribute at the selected $G^2\log R/R^4$ order at the respective corners. The time shift also acts on the existing $u/r^4$ or $v/r^4$ term. Combining the two produces the $[3D^B(q\cdot P)+(q\cdot P)D^B]\mathcal M_{AB}^{(0)}$ completion of the radiative matching law. After these shifts, and using absence of the two unwanted branches, the law reduces to the simple harmonic $\Psi_1/\Psi_3$ logarithmic matching above. The source thereby justifies it including the relevant nonlinear $G^2$ effects, assuming the cited polyhomogeneous nonlinear matching theorem. An uncorrected harmonic relation beyond this order has not been established.

# NP evolution reconstructs the two soft factors

Let $\Psi_1^0$ denote the $r^{-4}$ coefficient, $\Psi_2^0$ the $r^{-3}$ coefficient, and $\Psi_3^0,\Psi_4^0$ the radiative $r^{-2},r^{-1}$ coefficients. In the democratic normalization,

$$
\partial_u\Psi_1^0=\tfrac12\eth\Psi_2^0-\sigma_2\Psi_3^0,
\qquad
\partial_u\Psi_2^0=\tfrac12\eth\Psi_3^0-\tfrac12\sigma_2\Psi_4^0,
$$

$$
\sigma_2=-\tfrac14C_{AB}\theta^A\theta^B,\quad
\Psi_3^0=\tfrac12\bar\theta^AD^BN_{AB},\quad
\Psi_4^0=\tfrac12\bar\theta^A\bar\theta^B\partial_uN_{AB}.
$$

## Leading memory and its kernel

Define $\mathcal J_{AB}^{(-1)}=\int du\,N_{AB}$. Integrating the $\Psi_2$ equation, using vanishing endpoint news and absence of net magnetic memory, gives

$$
\Psi_{2,-}^0=-\tfrac14D^AD^B\mathcal J_{AB}^{(-1)}
+\int du\,T_{uu}^{g}+\Psi_{2,+}^0,
\qquad T_{uu}^{g}=\tfrac18N_{AB}N^{AB}.
$$

The massive-hard-particle specialization used for the displayed soft factor omits the hard gravitational flux. Merely saying that the material bodies are massive does not force all emitted gravitational energy to vanish; a calculation retaining that channel must retain the flux term. At the leading perturbative order it is higher order than the linear memory under the usual counting.

Use antipodal Coulomb matching and the massive coefficients to obtain

$$
D^AD^B\mathcal J_{AB}^{(-1)}=-4G\sum_{a\in\pm}\frac{m_a^4}{(q\cdot p_a)^3}.
$$

With $\varepsilon_{AB}^{\mu\nu}=e_{\langle A}^\mu e_{B\rangle}^\nu$, Appendix B first establishes the one-particle identity

$$
D^AD^B\frac{\varepsilon_{AB}^{\mu\nu}p_\mu p_\nu}{q\cdot p}
=\frac{m^4}{(q\cdot p)^3}+q\cdot p-2\tilde q\cdot p.
$$

The last two terms disappear only after $\sum p=0$. The double divergence has a magnetic tensor kernel, so inversion requires the no-magnetic-memory assumption. The candidate is electric because it equals $D_{\langle A}D_{B\rangle}[(q\cdot p)\log|q\cdot p|]$. Thus

$$
\mathcal J_{AB}^{(-1)}=-4G\sum_{a\in\pm}\frac{\varepsilon_{AB}^{\mu\nu}p^a_\mu p^a_\nu}{q\cdot p_a}.
$$

## Logarithmic flux, differential identities and inversion

For $N_{AB}=u^{-2}C_{AB}^{(1)}|_\pm+o(u^{-2})$, define

$$
\mathcal J_{AB}^{(\log)}=\int du\,\partial_u(u^2N_{AB})
=C_{AB}^{(1)}|_+-C_{AB}^{(1)}|_-.
$$

This $C^{(1)}$ is the **news-tail coefficient**; a shear written as $C^{(0)}+C^{\rm shear}_1/u$ has the opposite coefficient. Extract the log coefficient through $-\lim u^2\partial_u^2\Psi_1^0$ and use both NP equations. Nonlinear endpoint products vanish under the stated tail falloffs. The result is

$$
\mathcal D_A{}^{BC}\mathcal J_{BC}^{(\log)}
=8\Upsilon^*(\Psi_3^{[3,\log]})_A|_-
-8(\Psi_1^{[2,\log]})_A|_+,
$$

$$
\mathcal D_A{}^{BC}=D_AD^BD^C-\epsilon_A{}^E\epsilon^{CD}D_ED_DD^B.
$$

Substitution of matter and drag yields

$$
\mathcal D_A{}^{BC}\mathcal J_{BC}^{(\log)}
=12G^2\sum_a\frac{m_a^4 e_A^\mu J^a_{\mu\nu}q^\nu}{(q\cdot p_a)^4}
-24G^2\sum_a\frac{m_a^4e_A^\mu(P_\mu p^a_\nu-P_\nu p^a_\mu)q^\nu}{(q\cdot p_a)^4}.
$$

Appendix B's identities are

$$
\mathcal D_A{}^{BC}\sum_a\frac{\varepsilon_{BC}^{\mu\nu}p^a_\mu J^a_{\nu\rho}q^\rho}{q\cdot p_a}
=-3\sum_a\frac{m_a^4e_A^\mu J^a_{\mu\nu}q^\nu}{(q\cdot p_a)^4},
$$
$$
\mathcal D_A{}^{BC}\left[(q\cdot P)\sum_a\frac{\varepsilon_{BC}^{\mu\nu}p^a_\mu p^a_\nu}{q\cdot p_a}\right]
=3\sum_a\frac{m_a^4e_A^\mu(P_\mu p^a_\nu-P_\nu p^a_\mu)q^\nu}{(q\cdot p_a)^4}.
$$

The first one-particle identity contains the additional $3e_A^\mu J_{\mu\nu}\tilde q^\nu$, removed by $\sum J=0$. The second has remainders linear in $p$, removed by $\sum p=0$. These are essential hypotheses, not optional simplifications. **Checked:** an xCoba sphere setup plus explicit Christoffel covariant derivatives reproduces the leading one-particle identity and both components of the matter identity for arbitrary timelike $p$ aligned with the polar axis and arbitrary $c$. The drag check follows from writing its tensor as the polynomial $p_{\langle A}P_{B\rangle}$ minus the matter tensor with $c=P$; the polynomial and remaining one-particle terms vanish in the signed sum. Rotation and linearity supply general directions.

Unlike double divergence alone, $\mathcal D$ has no kernel on **smooth global STF tensors on $S^2$**. For $V_A=D^BT_{AB}$, $E=D^AV_A$, $B=\epsilon^{AB}D_AV_B$, its action is $D_AE+\epsilon_A{}^BD_BB$. Vanishing implies $\Delta E=\Delta B=0$. Their averages vanish because they are divergence/curl, hence $E=B=0$. Since $H^1(S^2)=0$, $V=0$. Finally the electric/magnetic tensor harmonics satisfy

$$
D^BD_{\langle A}D_{B\rangle}Y_{\ell m}=-\tfrac12(\ell-1)(\ell+2)D_AY_{\ell m},
$$
$$
D^B(\epsilon_{C(A}D_{B)}D^CY_{\ell m})=\tfrac12(\ell-1)(\ell+2)\epsilon_A{}^CD_CY_{\ell m}.
$$

For $\ell\ge2$ neither coefficient vanishes. Their underlying arbitrary-function identities were independently checked with the unit-sphere connection. The smoothness/topology argument supplies the infinite-dimensional conclusion; it is not inferred from a finite harmonic scan. Singular punctured-sphere data or massless collinear limits require a new domain analysis.

The resulting classical logarithmic soft theorem is

$$
\boxed{\mathcal J_{AB}^{(\log)}
=-4G^2\sum_{a\in\pm}\frac{\varepsilon_{AB}^{\mu\nu}p^a_\mu J^a_{\nu\rho}q^\rho}{q\cdot p_a}
-8G^2(q\cdot P)\sum_{a\in\pm}\frac{\varepsilon_{AB}^{\mu\nu}p^a_\mu p^a_\nu}{q\cdot p_a}.}
$$

The second term is the drag contribution. The calculation is classical with retarded propagators; it does not reproduce the additional quantum terms obtained with Feynman propagators.

# Local translation into charge and regional matching work

The reusable hierarchy is: **specified asymptotic solution class → matched corner Weyl coefficient → integrated NP balance → invertible angular equation**. A matching relation is not itself a proof of charge integrability, nor is an infinite list of Weyl coefficients a constructed nonlinear charge algebra. To use these data in CPS, one still needs the symplectic current, boundary counterterms, treatment of logarithmic divergences and allowed variations. The source explicitly leaves the extension of higher-spin charges to tails and peeling violation open.

There are two useful distinctions for a regional construction. First, the spatial corner $\mathscr I^+_-\leftrightarrow\mathscr I^-_+$ is different from the future late corner carrying the drag term. Second, harmonic coordinate simplicity does not remove the tetrad and time shifts when comparing with Bondi fluxes. Transport of tensor components, orientation and the operator domain must be tracked together. This provides a stringent asymptotic benchmark, not a ready-made finite-timelike-boundary sewing theorem.

## Equation ledger and verification record

| Chain | Independent evidence | Remaining boundary |
| --- | --- | --- |
| STF derivatives → five kernels → antipodal sum | Sage exact comparisons of 1,543 raw/kernel coefficients and 798 finite matching sums | Four raw differences multiply $\dot M,\ddot M$ or $\ddot M_i$ and vanish by the stipulated conservation laws; all-order derivation remains Source-derived |
| Liénard–Wiechert field → Coulomb and matter-log Weyl data | Cartesian symbolic contractions give zero residual for arbitrary boost parameter, angle and $c^\mu$ | Full worldline dynamics and global error bounds not independently derived |
| Pairwise trajectory deviation → $\sum J=0$ | Antisymmetric pair residual is a zero $4\times4$ matrix | Requires distinct asymptotic velocities and the displayed pairwise formula |
| Retarded collinear integral → $1/(ru)$ tail | Exact angular integral and transition moments reproduced | Complete quadratic-source exclusion argument Source-derived |
| Wave equation → logarithmic tower → drag projection | Wave/tower residuals zero; five angular reductions zero; $D$-tail cancellation and $B+C$ simplification zero | Global interchange of expansions and integrals not a CAS theorem |
| Pure gauge metric → zero linear curvature | xAct PD residual zero | Does not remove second-order $\mathcal L_\xi h_{(1)}$ |
| Sphere differential operators → two soft factors | xCoba curvature $R=2$; leading and matter identities checked with remainder terms; electric/magnetic divergence identities zero | Complete theorem additionally uses smoothness, conservation, matching and tail hypotheses |

**Verified:** the explicit symbolic/component and finite checks described above, using Mathematica, xAct/xCoba and Sage 10.9. The kernel scan used $\ell\le20$ and radial indices through $\ell+4$, including out-of-range zeros. Initial raw discrepancies at $(I,n,\ell)=(2,0,0),(2,1,0),(2,0,1),(3,0,1)$ multiply $M^{(2)},M^{(1)},M_i^{(3)},M_i^{(3)}$ respectively. Applying $\dot M=0,\ddot M_i=0$ resolves them; treating unconstrained low moments as a counterexample would be incorrect.

**Assumptions:** four-dimensional asymptotically flat massive scattering; future-directed unit velocities and signed momenta; no incoming radiation; linear no-news neighborhood of spatial infinity; the specified perturbative/polyhomogeneous expansions; regular global sphere data; boundary decay needed by integrations; no NUT mode; no additional hard null flux in the displayed massive-only leading formula.

**Not verified:** the cited nonperturbative matching theorem from first principles; all-order polyhomogeneity, the full nonlinear antipodal tower, quantum soft terms, or any nonlinear CPS charge algebra. These limitations are preserved after the full technical reconstruction. **Failed:** no irreparable source contradiction found in the checks performed. **Blocked:** no unrecovered retrieval or computation blocker for this note. An initial xAct flat-metric setup returned `MakeRule::error`; reformulating the gauge check directly with commuting `PD` produced zero. This was a setup repair, not evidence against the identity.

**Source and file audit:** official PDF/source retrieval succeeded; a PDF font warning was handled by TeX reading and rendered-page inspection. Physical PDF pages 39 and 44 (printed 38 and 43) were visually checked for the soft-factor signs, kernel argument, and multipole projection formulas. Frontmatter, evidence labels, delimiters, whitespace and Pandoc parsing were checked before advancing to medium sketches. No PDF attachment, older-note edit or commit was made.
