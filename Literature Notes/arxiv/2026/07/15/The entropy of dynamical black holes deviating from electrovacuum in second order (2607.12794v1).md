---
paper id: 2607.12794v1
title: "The entropy of dynamical black holes deviating from electrovacuum in second order"
authors:
  - Wen-Tao Fu
  - Ming-Fei Ji
  - Yu-Sen Zhou
  - Li-Ming Cao
publication date: 2026-07-14T14:11:28
abstract: |-
  The paper studies second-order perturbations of a stationary four-dimensional Einstein--Maxwell black hole with a bifurcate Killing horizon. It constructs the nearby apparent horizon in Gaussian null coordinates, introduces a constraint-subtracted and boundary-improved canonical energy, and relates its flux balance to a corrected horizon Noether entropy. Under the null energy condition, compactness, and late-time stationarity, the entropy equals one quarter of the apparent-horizon area through second order.
comments: "revtex4, 15 pages, no figure"
url: https://arxiv.org/abs/2607.12794v1
summary: "A direct null-boundary CPS reconstruction in which external-matter constraints, electromagnetic flux, endpoint improvements, and a varying horizon generator combine into a second-order apparent-horizon area law."
tags: []
---

Back to [[2026_07_15_overview]].

This is today's closest match to the gravitational-energy project. Its useful object is not merely the final area law, but the off-shell order of operations

$$\begin{align}
\text{second-variation CPS identity} \longrightarrow \bm\omega' \longrightarrow \mathcal E' \longrightarrow \bm S=\frac{2\pi}{\kappa_3} (\bm Q_\xi-\xi\cdot\bm B_{\mathcal H^+}).
\end{align}$$

The paper is asymptotically flat and four-dimensional from its CPS section onward. An AdS use therefore requires replacing future null infinity by a renormalized timelike boundary, not simply changing the background metric.

# Source structure and reading map

| Source part | Role in the argument | Main equations |
|---|---|---|
| I. Introduction | Poses the dynamical-entropy problem and states the conditional second-order theorem | main assumptions |
| II. Black Hole Geometry and Apparent Horizon | Fixes affine GNC, perturbative horizon gauge, marginally trapped tube, and its area | (1)--(10) |
| III. Modified Canonical Energy | Keeps EOM and constraints explicit, defines the closed current, and computes horizon and null-infinity fluxes | (11)--(27) |
| IV. Dynamical Black Hole Entropy | Absorbs endpoint terms, defines the corrected entropy, and imposes NEC plus late-time stationarity | (28)--(39) |
| V. Conclusion | Records the entropy ambiguity and the limits of the area theorem | discussion |
| Appendix A | Studies residual affine reparametrizations of GNC | (40)--(48) |
| Appendix B.1 | Expands the gravitational and Maxwell symplectic currents | (49)--(66) |
| Appendix B.2 | Constructs exact forms that absorb boundary endpoint terms | (67)--(85) |
| Appendix C.1 | Derives the entropy balance law with varying $\xi$ and $\kappa_3$ | (86)--(98) |

The source does not rederive every link. In particular, the full geometry behind (10), the pure-gravity horizon current, the Raychaudhuri/shear reduction, and the passage (96) to (97) are imported from arXiv:2606.16757.

# Stationary electrovacuum horizon in affine Gaussian null coordinates

## Bifurcate horizon and boost generator

With coordinates $(u,v,x^i)$, the future horizon is $\mathcal H^+:u=0$, the past horizon is $\mathcal H^-:v=0$, and the bifurcation surface is $\mathcal B:u=v=0$. The metric is

$$\begin{align}
ds^2=-2\,du\,dv-u^2\alpha\,dv^2 -2u\beta_i\,dv\,dx^i+\gamma_{ij}\,dx^i dx^j . \tag{1}
\end{align}$$

The null vectors are

$$\begin{align}
k^a=(\partial_v)^a,\qquad l^a=(\partial_u)^a,\qquad k\cdot l=-1,
\end{align}$$

with lowered forms

$$\begin{align}
k_a=-(du)_a-u^2\alpha(dv)_a-u\beta_i(dx^i)_a, \qquad l_a=-(dv)_a . \tag{2}
\end{align}$$

On $\mathcal H^+$, $k_a=-(du)_a$. The background Killing generator is

$$\begin{align}
\xi^a=\kappa(vk^a-ul^a), \tag{3}
\end{align}$$

where $\kappa$ is surface gravity. Stationarity means that the GNC coefficients depend on $u,v$ through the boost-invariant product $uv$.

## Perturbative horizon gauge

The one-parameter family is expanded as

$$\begin{align}
g_{ab}(s)=g_{ab}+s\,\delta g_{ab} +\frac{s^2}{2}\delta^2g_{ab}+O(s^3). \tag{4}
\end{align}$$

The coordinates and null vectors are fixed through second order:

$$\begin{align}
\delta^m k^a=\delta^m l^a=0,\qquad k^a\delta^m g_{ab}\big|_{\mathcal H^+}=0,\qquad l^a\delta^m g_{ab}=0,\qquad m=1,2. \tag{5--6}
\end{align}$$

This gauge keeps the perturbed event horizon at $u=0$. It does not freeze the horizon generator: ordinary $\delta$ later includes $\delta\xi$ and $\delta\kappa_3$, whereas $\delta_\phi$ varies only $\phi=(g,A)$ at fixed $\xi$.

## Residual affine reparametrizations

The constant transformation

$$\begin{align}
u=a\widetilde u,\qquad v=\frac{\widetilde v}{a}, \qquad x^i=g^i(\widetilde x) \tag{41}
\end{align}$$

preserves the GNC form. Its coefficients transform tensorially:

$$\begin{align}
\widetilde\alpha=\alpha,\qquad \widetilde\beta_i=\frac{\partial g^j}{\partial\widetilde x^i}\beta_j, \qquad \widetilde\gamma_{ij} =\frac{\partial g^k}{\partial\widetilde x^i} \frac{\partial g^l}{\partial\widetilde x^j}\gamma_{kl}. \tag{43--45}
\end{align}$$

Appendix A also allows an $x$-dependent affine rescaling. The authors explicitly say that covariance of the full area expression (10) under that more general freedom is expected but not directly checked.

# The marginally trapped tube near the event horizon

## Displacement and first-order marginality

The apparent-horizon tube $\mathcal A$ is written as

$$\begin{align}
u=U(s;v,x) =s\,\delta U+\frac{s^2}{2}\delta^2U+O(s^3). \tag{7}
\end{align}$$

Let $\mathcal T(v)$ be its fixed-$v$ cross section and $\mathcal C(v)$ the corresponding event-horizon cross section. If

$$\begin{align}
\partial_v dA_\epsilon=\theta_vdA_\epsilon,\qquad \partial_u dA_\epsilon=\theta_udA_\epsilon,\qquad \theta_u(0,v,x)=-v\mu(x),\quad\mu>0,
\end{align}$$

then the first-order marginality equation is

$$\begin{align}
\delta\theta_v =\mu\,\delta U -D\!\left(D\delta U+\beta\,\delta U\right). \tag{8}
\end{align}$$

Indices in (8)--(10) are compressed in the source and contracted with $\gamma_{ij}$. The second-order marginality equation (9) is explicitly called schematic; it contains $\delta^2U$, $\delta\theta_u$, $\delta\gamma$, $\delta\beta$, and $(D\delta U)^2$ and is used to remove $\delta^2U$ from the area.

## Apparent-horizon area through second order

After Taylor expanding the induced area from $u=0$ to $u=U$ and integrating transverse total derivatives on a compact cross section, the source obtains

$$
\begin{aligned}
\delta^2A_{\mathcal T}(v)
={}&\delta^2\int_{\mathcal C}dA_\epsilon(1-v\theta_v)\\
&+\int_{\mathcal C}dA_\epsilon
\left\{
\left(1+\frac{\lambda v}{\theta_u}\right)
(\theta_u\delta U)^2\right.\\
&\hspace{3.3cm}\left.
-v\left[
(D\delta U)^2\theta_u
+D(D\delta U+\beta\delta U)
\gamma^{ab}\delta\gamma_{ab}
\right]\right\},
\end{aligned}
\tag{10}
$$

where $\lambda=\alpha+\beta^2$. Equation (10) isolates the exact obstruction to identifying the entropy-like event-horizon functional with the apparent-horizon area: the obstruction is carried by $\delta U$ and its transverse derivatives.

# Off-shell canonical energy with external matter

## Einstein--Maxwell data and conventions

From Section III onward, the dynamical fields are $\phi=(g,A)$ in four dimensions, with $F=dA$. The Maxwell stress tensor and total null stress are

$$\begin{align}
T^{EM}_{ab} =\frac{1}{4\pi G}\left( F_{ac}F_b{}^c-\frac14g_{ab}F_{cd}F^{cd} \right), \qquad T'_{ab}=T_{ab}+T^{EM}_{ab}. \tag{56}
\end{align}$$

Here $T_{ab}$ denotes external matter. The source assumes source-free Maxwell equations in its Maxwell appendix; independently charged external matter is therefore not covered by the displayed proof.

## Constraint-subtracted symplectic current

On the stationary background, the fixed-$\xi$ second-variation identity is

$$
\begin{aligned}
\bm\omega(\phi;\delta\phi,\mathcal L_\xi\delta\phi)
={}&\xi\cdot[\delta\bm E(\phi)\,\delta\phi]
+\xi\cdot[\bm E(\phi)\,\delta^2\phi]
+\xi^a\delta^2\bm C_a(\phi)\\
&+d\left[
\delta_\phi^2\bm Q_\xi(\phi)
-\xi\cdot\delta\bm\Theta(\phi,\delta\phi)
\right].
\end{aligned}
\tag{11}
$$

The off-shell-first step is to subtract, rather than silently set to zero, the EOM and constraint pieces:

$$
\begin{aligned}
\bm\omega'
={}&\bm\omega
-\xi\cdot[\delta\bm E\,\delta\phi]
-\xi\cdot[\bm E\,\delta^2\phi]
-\xi^a\delta^2\bm C_a .
\end{aligned}
\tag{13}
$$

Consequently $\bm\omega'$ is the closed representative that enters

$$\begin{align}
\mathcal E[\Sigma(t)] =\int_{\Sigma(t)}\bm\omega', \qquad \mathcal E[\Sigma_2]-\mathcal E[\Sigma_1] =-\int_{\mathcal H^+_{12}}\bm\omega' -\int_{\mathcal I^+_{12}}\widehat{\bm\omega}' . \tag{14--15}
\end{align}$$

This is more precise than calling $\mathcal E$ “the symplectic form”: one slot of the current is specifically $\mathcal L_\xi\delta\phi$, and the constraint subtraction is part of the definition.

## Horizon and null-infinity fluxes

On $\mathcal H^+$, the Maxwell part has the form

$$
\begin{aligned}
\int_{\mathcal H^+_{12}}\bm\omega^{EM}
={}&-\frac{1}{4\pi G}\Delta\int_{\mathcal C}
\bm\epsilon^{(2)}(\xi\cdot\nabla v)
k_a\delta A_b\delta F^{ab}\\
&+\int_{\mathcal H^+_{12}}\bm\epsilon^{(3)}
(\xi\cdot\nabla v)\,
k^ak^b\delta^2T^{EM}_{ab}.
\end{aligned}
\tag{18}
$$

The first line is an endpoint functional; the second is the electromagnetic radiation flux. The gravitational current similarly separates into a shear/expansion bulk term and a cross-section endpoint term. The external-matter constraint supplies the $T_{kk}$ contribution, so the combined horizon flux depends on $T'_{kk}$.

At future null infinity, with $\widehat g_{ab}=\Omega^2g_{ab}$ and $\delta\Omega=0$, the gravitational bulk term is weighted by

$$\begin{align}
\delta\widehat N^{ab}\delta\widehat N_{ab},
\end{align}$$

and the Maxwell bulk term by

$$\begin{align}
\widehat n^a\widehat n^b\delta^2\widehat T^{EM}_{ab}.
\end{align}$$

Equations (23)--(24) again contain endpoint terms. The sign of the final monotonicity statement assumes the future orientation and positive weights

$$\begin{align}
\xi\cdot\nabla v=\kappa v\ge0,\qquad \widehat\xi\cdot\widehat\nabla\widehat u>0.
\end{align}$$

# Boundary-improved canonical energy

The horizon and null-infinity endpoint pieces are absorbed into exact forms. The improved local currents are

$$\begin{align}
\bm e_\Phi =\bm\omega' +d\left[ \xi\cdot\delta\bm\Theta -\xi\cdot\delta^2\bm B_{\mathcal H^+} \right], \tag{29}
\end{align}$$

$$\begin{align}
\widehat{\bm e}_\Phi =\widehat{\bm\omega}' +d\left[ \widehat\xi\cdot\delta\widehat{\bm\Theta} -\widehat\xi\cdot\delta^2\widehat{\bm B}_{\mathcal I^+} \right]. \tag{30}
\end{align}$$

They define the boundary-improved energy through

$$\begin{align}
\mathcal E'[\Sigma_2]-\mathcal E'[\Sigma_1] =-\int_{\mathcal H^+_{12}}\bm e_\Phi -\int_{\mathcal I^+_{12}}\widehat{\bm e}_\Phi. \tag{31}
\end{align}$$

The improvement is a choice of representative that removes endpoint leakage from the flux law. It should be compared with the vault's boundary/corner completion of the presymplectic potential, but it is a null-boundary construction and is not identical to an AdS timelike counterterm or Hayward corner term.

# Dynamical entropy as a corrected horizon Noether charge

## Corrected charge and Maxwell horizon gauge

The entropy two-form is

$$\begin{align}
\bm S =\frac{2\pi}{\kappa_3} \left(\bm Q_\xi-\xi\cdot\bm B_{\mathcal H^+}\right). \tag{32}
\end{align}$$

On the horizon,

$$\begin{align}
\bm Q_\xi =\frac{\kappa_3}{8\pi G}\bm\epsilon^{(2)} -\frac{1}{8\pi G}\bm\epsilon^{(4)}_{ab} F^{ab}\xi^cA_c, \tag{33}
\end{align}$$

and

$$\begin{align}
\bm B_{\mathcal H^+} =\frac{1}{8\pi G}\bm\epsilon^{(3)}\theta_v. \tag{34}
\end{align}$$

The gauge condition

$$\begin{align}
k^a\delta^mA_a\big|_{\mathcal H^+}=0,\qquad m=0,1,2, \tag{52}
\end{align}$$

makes the electromagnetic Noether term irrelevant to the displayed entropy variation. Maxwell fields still affect the law through their flux. The choice $\delta^2\bm B_{\mathcal H^+}^{EM}=0$ is a representative choice, not a uniqueness theorem for second-order entropy.

## Varying the generator

The background has $\kappa_3=\kappa$, but the perturbation varies both the generator and its normalization:

$$\begin{align}
\delta\xi^a\big|_{\mathcal H^+} =\delta h\,k^a,\qquad \delta h(v,x) =\int_0^v\delta\kappa_2(v',x)\,dv'. \tag{91}
\end{align}$$

The source does not give a complete definition of $\kappa_2$. Also, its scalar $\delta h$ must not be confused with the vault's metric perturbation $h_{\mu\nu}$.

The second variation of the corrected entropy is

$$\begin{align}
\delta^2S =\frac{1}{4G}\delta^2 \int_{\mathcal C}dA_\epsilon(1-v\theta_v) +\frac{1}{2G\kappa} \int_{\mathcal C}dA_\epsilon (v\delta\kappa_3-\delta h)\delta\theta_v. \tag{36}
\end{align}$$

The second term is the explicit location of generator-normalization and foliation dependence.

# From the Raychaudhuri reduction to the area law

For a smooth two-sided family satisfying the total NEC, together with late-time stationarity, the source invokes its previous analysis to obtain

$$\begin{align}
\delta T'_{ab}k^ak^b=0,\qquad \delta\theta_v=0. \tag{37}
\end{align}$$

On a compact cross section, equation (8), $\mu>0$, and the appropriate drift-elliptic uniqueness argument then give $\delta U=0$. Substituting

$$\begin{align}
\delta\theta_v=0,\qquad\delta U=0
\end{align}$$

into (36) and (10) leaves the same event-horizon functional on both sides:

$$\begin{align}
\boxed{ \delta^2S=\frac{1}{4G}\delta^2A_{\mathcal T}(v)
}.
\tag{39}
\end{align}$$

The improved energy law simultaneously reduces to a sum of negative flux norms: horizon shear, total second-order null stress, Bondi news, and electromagnetic radiation. With the stated orientations and NEC, $\Delta\mathcal E'\le0$ and the corresponding entropy difference is non-negative.

Without NEC, neither $\delta\theta_v$ nor $\delta U$ must vanish. The extra terms in (10) and (36) remain, so the area law is not automatic. A compensating choice of $\delta\xi$ can be made, but the paper emphasizes that it is not unique.

# Translation to the AdS gravitational-energy project

| Source object | Local counterpart | Necessary qualification |
|---|---|---|
| $\bm\Theta,\bm\omega$ | bulk presymplectic potential/current | same CPS layer, but here on null boundaries |
| $\bm Q_\xi$ | local Noether superpotentials | not by itself the renormalized Hamiltonian $H_\xi$ |
| $\bm C_a$ | EOM/constraint remainder | must be retained before any on-shell reduction |
| $\bm\omega'$ | constraint-subtracted canonical-energy current | not identical to the unmodified $\omega$ |
| $\bm B_{\mathcal H^+},\widehat{\bm B}_{\mathcal I^+}$ | boundary/corner improvements | null-boundary representatives, not AdS counterterms |
| $\bm S=\frac{2\pi}{\kappa_3}(Q-\xi\cdot B)$ | corrected horizon charge | entropy charge, not asymptotic energy |
| $\Delta\mathcal E'=-$ flux | bulk--boundary energy matching | evolution between slices rather than coefficientwise equality on one slice |
| $\mathcal I^+$ | AdS timelike boundary $\Gamma$ | replace Bondi falloffs by fixed sources, counterterms, corners, and vanishing/controlled symplectic flux |

Three notation collisions must be corrected before reusing formulas:

- the paper's $\kappa$ is surface gravity; the vault often uses $\kappa^2=8\pi G$;
- the paper's $\delta h$ is a scalar coefficient in $\delta\xi^a$;
- the paper's $\sigma_{ab}$ is horizon shear, not a Cauchy-slice metric.

The most concrete extension is to repeat the sequence (11), (13), (29)--(32) with the renormalized AdS action and its timelike-boundary/corner completion. The correct test is whether the AdS representative produces a flux-free Hamiltonian in the fixed-source sector while retaining the off-shell constraint terms until the final step.

# Verification log

## Checked

- **GNC lowering and normalization, (1)--(2).** Mathematica constructed the $(u,v,x)$ metric block and obtained zero residuals for $g_{ab}k^b-k_a$, $g_{ab}l^b-l_a$, and $k\cdot l+1$.
- **Constant residual GNC rescaling, (41)--(45).** Direct substitution of $u=a\widetilde u$, $v=\widetilde v/a$, and the transverse Jacobian into (1) gave an identically zero line-element residual.
- **Maxwell stress coefficient in (55)--(57).** For fixed null $k$, the horizon gauge, and background $F_{ac}k^a\propto k_c$, Mathematica expanded the smooth field family and reproduced

$$\begin{align}
\delta^2T^{EM}_{kk} =\frac{1}{2\pi G} k^ak^b\delta F_a{}^c\delta F_{bc}.
\end{align}$$

  xAct independently reduced the antisymmetric contractions $k^ak^b\delta F_{ab}$ and the exchange residual to zero.
- **Quotient variation, (93).** With $\bm B_{\mathcal H^+}=0$ on the stationary background, Mathematica reproduced

$$\begin{align}
\delta^2\frac{\xi\cdot B}{\kappa_3} =\frac{\xi\cdot\delta^2B}{\kappa} +\frac{2\,\delta\xi\cdot\delta B}{\kappa} -\frac{2\,\delta\kappa_3}{\kappa^2}\xi\cdot\delta B.
\end{align}$$

- **Final coefficients, (97)--(98).** Dividing the balance law by $\kappa/(2\pi)$ gives exactly $1/(4G)$ for the area term and $1/(2G\kappa)$ for the generator correction.

## Blocked

- Equations (8)--(10) were not independently reconstructed because (9) is not index-complete and the derivation of (10) is imported from arXiv:2606.16757. The general $x$-dependent residual-GNC covariance of (10) is also left unproved by the source.
- The full tensor derivation of the CPS identity (11), $d\bm\omega'=0$, and the Einstein--Maxwell constraint normalization requires the source's xCPS definitions and was not reproduced from the HTML alone.
- The pure-gravity horizon current, the Bondi conformal completion, Maxwell pullback identities, and every exact-form cancellation in (67)--(85) were source-derived only.
- The Noether charge (88)--(89), the global regularity of the Maxwell horizon gauge, and the representative choice $\delta^2B^{EM}=0$ were not independently derived.
- The Raychaudhuri/shear chain (96)--(97), the implication from NEC and late-time stationarity to (37), and the drift-elliptic uniqueness step require the previous paper and were not independently reproduced.

## Failed

- No independently computed residual failed.
- Source completeness does fail at two precise points: equation (9) is intentionally schematic, and $\kappa_2$ is not fully defined. Downstream statements depending on their detailed form remain under **Blocked**, not **Checked**.
