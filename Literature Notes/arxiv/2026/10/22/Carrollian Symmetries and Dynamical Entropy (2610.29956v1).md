---
paper id: 2610.29956v1
title: Carrollian Symmetries and Dynamical Entropy
authors:
  - Michael Imseis
publication date: 2026-10-21T16:15:49
abstract: |-
  Carrollian geometry has recently emerged as the proper language to understand the geometry of null hypersurfaces from an intrinsic perspective. In this paper, we demonstrate that the Noether charge associated with the intrinsic conformal symmetry of Carrollian manifolds yields exactly the dynamical entropy formula recently proposed by Hollands, Wald and Zhang. This result follows directly from the requirement that the gravitational phase space induced on a finite distance null hypersurface be anomaly-free, in a covariant phase space sense. We then show that a linearized perturbation of this dynamical entropy charge, sourced by an external matter perturbation falling across the hypersurface, satisfies a physical process first law. Moreover, upon imposing the classical null energy condition, a linearized second law holds for the dynamical entropy. We then turn to a semi-classical generalization of this construction, where we argue that a notion of dynamical generalized entropy follows from considering perturbations sourced by external quantum matter. By imposing the quantum null energy condition (QNEC), we find a generalized second law for a linearized perturbation of the dynamical generalized entropy. Finally, we use our results to speculate on relations to the quantum focusing conjecture.
comments: "27 pages. Comments are welcome; downloaded PDF has 33 pages including cover and references"
url: https://arxiv.org/abs/2610.29956v1
summary: "Null-boundary boost entropy charge with explicit endpoint, stationarity and regulated QNEC conditions; two flat counterexamples isolate overstrong source inferences."
tags: []
---

# Result and scope

**Correct under precise additional conditions:** the primed null-boundary charge has aspect

$$
q'_f=\frac{\varepsilon_{\mathcal C}^{(0)}}{8\pi G_N}
(\Omega\partial_v f-f\partial_v\Omega).
$$

For a field-independent, angle-independent boost $f=cv$, $c>0$, its single-cut value is $cS_{\rm dyn}/(2\pi)$, where $S_{\rm dyn}=(1-v\partial_v)A/(4G_N)$. The finite-slab charge is a difference of cut values. The classical first law and the semiclassical linearized GSL follow on a nonexpanding, shear-free, affinely parametrized background with the stated matter/entropy inequalities. The paper's argument that its primed-stationarity condition alone supplies all these background conditions is incorrect on an open interval. Explicit counterexamples and the usable conditional derivation are given below.

The reusable object is the charge and its flux/anomaly accounting. It does not establish an unrestricted entropy law on every null hypersurface, a microscopic state count, or regulator-independent generalized entropy without a renormalization prescription.

# Source map and how to read this long paper

Source: [arXiv:2610.29956v1](https://arxiv.org/abs/2610.29956v1), official PDF and TeX `Draft.tex`. The abstract comments say 27 pages; the downloaded PDF has **33 pages**, including the cover and references. Printed page $n$ is PDF page $n+1$. There are no appendices. Some TeX labels are duplicated or empty; equation references below follow the **rendered PDF numbering**.

| Source section | Role and dependencies | Reading priority |
|---|---|---|
| 1 Introduction, printed pp. 1–5 | HWZ entropy, classical/quantum motivation, proposed Carrollian origin; higher-curvature and microscopic remarks are background | Background after the charge calculation |
| 2.1 Review of Carrollian Geometry, pp. 5–6 | $(q,\ell,k)$, horizontal projector, expansion/shear, connection and volume forms | Essential definitions |
| 2.2 Internal Rescalings, p. 7 | Compensating boost and distinction from the horizontal shift | Essential |
| 2.3 Induced Gravitational Dynamics, pp. 7–8 | Null Brown–York tensor; Raychaudhuri and Damour projections | Essential Raychaudhuri; Damour is reference material |
| 3.1 Covariant Phase Space, pp. 8–10 | Noether current, constraint and fundamental identity | Essential sign conventions |
| 3.2 Anomalies, pp. 11–12 | Boundary Lagrangian, potential anomalies and JKM choices | Essential |
| 3.3 Primed Phase Space, pp. 12–17 | Null action, removal of the spin-1 pair, connection-like transformation of $\mu$, charge and cancellation of anomalies | Main technical cluster |
| 3.4 Dynamical Entropy as Primed Corner Charge, pp. 17–19 | Two endpoints, $f''=0$, boost choice and entropy derivative | Main result; retain endpoint qualifications |
| 3.5 Physical Process First Law, pp. 19–20 | Stationarity, flux, linearized sourced constraint, first/second laws | Essential; read the counterexamples in this note alongside it |
| 4.1 The Semi-Classical Regime, pp. 21–22 | Expansion in $G_N$, matter backreaction and fluctuation restrictions | Assumptions, not a full renormalization calculation |
| 4.2 Dynamical Generalized Entropy, pp. 22–25 | Local/global QNEC, perturbed inequality, two integrations by parts, GSL | Essential conditional derivation |
| 5 Discussion, pp. 25–27 | Higher curvature, apparent/simple entropy, dressing time and quantum null geometry | Proposed extensions; not established here |
| Acknowledgments and references, pp. 27–32 | Provenance of borrowed constructions | Reference only |

The derivation runs

$$
(q,\ell,k)\longrightarrow(\sigma,\mu,\Omega)
\longrightarrow\theta^{\rm can}\longrightarrow(C,q'_f,a'_f)
\longrightarrow S_{\rm dyn}
\longrightarrow\text{conditional PPFL}
\longrightarrow\text{conditional linearized GSL}.
$$

# Ruled Carrollian geometry and the null constraint

## Notation, orientation and dimension

The preliminary geometry has a $(d+1)$-dimensional null manifold $\mathcal N$, with $d$-dimensional cuts $\mathcal C$. From source §3.3 onward $d=2$: four-dimensional Einstein gravity, three-dimensional $\mathcal N$. Use $G_N>0$, $\hbar=k_B=1$ unless restoring the regulator discussion below. The paper uses $c$ for the positive normalization of a boost, not the speed of light.

| Symbol | Definition/convention |
|---|---|
| $q_{ab}$ | Rank-$d$ positive spatial metric; $q_{ab}\ell^b=0$ |
| $\ell^a,k_a$ | Null generator and Ehresmann one-form, $k_a\ell^a=+1$ |
| $q_a{}^b$ | $\delta_a{}^b-k_a\ell^b$, horizontal projector |
| $\theta_{ab},\theta,\sigma_{ab}$ | $\theta_{ab}=\tfrac12\mathcal L_\ell q_{ab}=\theta q_{ab}/d+\sigma_{ab}$; $\sigma$ traceless |
| $\kappa$ | Inaffinity of $\ell$, $\nabla_\ell\ell=\kappa\ell$; not the surface gravity of the differently normalized $\chi=cv\ell$ |
| $\pi_a,\varphi_a$ | Hájíček form and Carrollian acceleration; horizontal |
| $\mu$ | $\kappa+(d-1)\theta/d$, hence $\kappa+\theta/2$ in four bulk dimensions |
| $\Omega$ | $\sqrt{\det q_{AB}}$ in fixed cut coordinates |
| $\varepsilon_{\mathcal C},\varepsilon_{\mathcal N}$ | $\Omega\varepsilon_{\mathcal C}^{(0)}$, $k\wedge\varepsilon_{\mathcal C}$; $i_\ell\varepsilon_{\mathcal N}=\varepsilon_{\mathcal C}$ |
| $\delta,d$ | Field-space and spacetime exterior derivatives |
| $I'_f,i_f$ | Primed field-space contraction and contraction with $f\partial_v$ in spacetime |
| $\omega^{\rm can}$ | $\delta\theta^{\rm can}$; distinct from the geometric one-form $\omega_a=\kappa k_a+\pi_a$ |

The raising prescription in source (2.4) requires $T_{ab}\ell^b=0$ on the index being raised. It cannot apply to an arbitrary nonhorizontal tensor: contracting $T_a{}^c q_{cb}$ with $\ell^b$ always gives zero. Horizontal tensors such as $q_{ab}$ and $\theta_{ab}$ meet this requirement.

**Source-derived geometry:** the Carrollian connection obeys

$$
\begin{aligned}
D_aq_{bc}&=-k_b\theta_{ac}-k_c\theta_{ab},\\
D_a\ell^b&=\theta_a{}^b+\omega_a\ell^b,\\
D_ak_b&=-\omega_ak_b-k_a(\varphi_b+\pi_b)+\bar\theta_{ab},\\
dk&=-k\wedge\varphi+\varpi,\qquad
\bar\theta_{[ab]}=-\tfrac12\varpi_{ab}.
\end{aligned}
$$

The data $(\kappa,\pi_a,\bar\theta_{(ab)})$ require embedding information. Thus “intrinsic” in the charge discussion does not mean that all connection data are determined by $(q,\ell)$ alone. The volume identity is $d\varepsilon_{\mathcal C}=\theta\varepsilon_{\mathcal N}$.

The internal rescaling $(\ell,k,q)\mapsto(e^\lambda\ell,e^{-\lambda}k,q)$ preserves the ruled structure. The horizontal shift $k\mapsto k+\zeta$, $i_\ell\zeta=0$, also preserves it; its vanishing charge is imported from earlier work, not derived anew here.

## Brown–York data and Raychaudhuri

The source takes

$$
T_a{}^b=\tau_a{}^b+\tau_a\ell^b,
\quad8\pi G_N\tau_a{}^b=\sigma_a{}^b-\mu q_a{}^b,
\quad8\pi G_N\tau_a=\pi_a-\theta k_a.
$$

The vacuum constraint is $D_bT_a{}^b=0$; matter changes it to $D_bT_a{}^b=T^{\rm mat}_{a\ell}$. The longitudinal projection gives

$$
R_{\ell\ell}=-(\mathcal L_\ell+\theta)\theta+\mu\theta-\sigma^2
=-\mathcal L_\ell\theta+\kappa\theta-\frac{\theta^2}{d}-\sigma^2.
$$

For example, contract the divergence by writing $\ell^aT_a{}^b=-\theta\ell^b/(8\pi G_N)$. The product derivative contributes $-\ell(\theta)-\theta(\theta+\kappa)$, while subtracting $(D_b\ell^a)T_a{}^b$ contributes $-\sigma^2+\mu\theta+\kappa\theta$. The inaffinity pieces cancel in this form.

The horizontal projection, source (2.20), is

$$
q_a{}^bR_{b\ell}=q_a{}^b(\mathcal L_\ell+\theta)\pi_b
+\theta\varphi_a-(\bar D_b+\varphi_b)(\mu q_a{}^b-\sigma_a{}^b).
$$

It controls the spin-1 sector, which is removed in the subsequent primed restriction; it is not used to prove the entropy laws.

Set $\ell=\partial_v$ after this restriction. Then $\theta=\Omega'/\Omega$ and

$$
C=-\Omega R_{\ell\ell}=\Omega''-\mu\Omega'+\Omega\sigma^2. \tag{3.43}
$$

This is the central constraint, valid before imposing $C=0$. In matter-sourced gravity it equals $-8\pi G_N\Omega T^{\rm mat}_{\ell\ell}$.

# Boundary action, anomalies and the primed restriction

## The CPS bookkeeping

The source convention is $\delta L=-E+d\theta$. For field-independent $\xi$, $J_\xi=I_\xi\theta-i_\xi L=C_\xi+dq_\xi$ when the Lagrangian is covariant. A boundary Lagrangian anomaly changes this to $J_\xi=C_\xi+dq_\xi+a_\xi$, where $a_\xi=\Delta_\xi\ell_{\rm bdy}$ and $\Delta_\xi=\mathfrak L_\xi-\mathcal L_\xi$. Pulling to a hypersurface tangent to $\xi$ removes $i_\xi L$ and the corresponding top-form equation-of-motion term. One obtains

$$
I_\xi\omega=-\delta(C_\xi+dq_\xi)+d i_\xi\theta
+\Delta_\xi\theta-\delta a_\xi. \tag{3.18}
$$

The source discusses $\theta\mapsto\theta+\delta Y+d\beta$ through $\theta|_{\mathcal B}=\widetilde\theta-\delta\ell_{\mathcal B}+d\vartheta$. Fixing the boundary variational problem and the chosen improved potential constrains these ambiguities. Vanishing anomalies by itself is not a proof of a unique potential among every possible covariant improvement.

## Action and canonical variables

For the orientation chosen in the paper,

$$
S=\frac1{16\pi G_N}\int_{\mathcal M}\varepsilon R
-\frac1{8\pi G_N}\int_{\mathcal N}\varepsilon_{\mathcal N}(\kappa+\theta). \tag{3.21}
$$

The canonical boundary potential is the **source-derived input**

$$
\theta^{\rm can}=\varepsilon_{\mathcal N}
\left(\tfrac12\tau^{ab}\delta q_{ab}-\tau_a\delta\ell^a\right).
$$

With $\ell=e^{-\alpha}\partial_v$ and $\delta\ell=-\delta\alpha\ell$ this becomes

$$
\theta^{\rm can}=\frac{\varepsilon_{\mathcal N}}{8\pi G_N}
\left(\tfrac12\sigma^{ab}\delta q_{ab}
-\tfrac\mu2 q^{ab}\delta q_{ab}-\theta\delta\alpha\right).
$$

A temporal diffeomorphism $f\partial_v$ gives $\mathfrak L_f\alpha=f'$, while an internal rescaling gives $\mathfrak L_\lambda\alpha=-\lambda$. Taking $\lambda_f=f'$ therefore preserves $\alpha=0$ and $\delta\ell=0$. This is a restricted/reduced phase space, not an assertion that the removed pair is physically irrelevant in every boundary problem. Dirichlet conditions before the restriction fix the full Carrollian structure.

Using $\delta\log\Omega=\tfrac12q^{ab}\delta q_{ab}$ gives

$$
\theta^{\rm can}=\frac{\varepsilon_{\mathcal N}^{(0)}}{8\pi G_N}
\left(\frac\Omega2\sigma^{ab}\delta q_{ab}-\mu\delta\Omega\right). \tag{3.37}
$$

The primed transformations in (3.38)–(3.39) are

$$
\delta'_fq_{ab}=\mathcal L_fq_{ab},\quad
\delta'_f\sigma_{ab}=(f\sigma_{ab})',\quad
\delta'_f\Omega=f\Omega',\quad
\delta'_f\mu=(f\mu)'+f''.
$$

The last expression has a connection-like inhomogeneous term. When computing density anomalies below, retain the homogeneous weights in this specified transformation law; treating $\mu$ as an ordinary scalar with transformation $f\mu'$ would change the calculation.

## Constraint-to-charge calculation and flux

The trace-free condition and $\mathcal L_fq_{ab}=2f\theta_{ab}$ imply

$$
I'_f\theta^{\rm can}=
\frac{\varepsilon_{\mathcal N}^{(0)}}{8\pi G_N}
 f(\Omega\sigma^2-\mu\Omega').
$$

Substitute $C$ and integrate the $f\Omega''$ term once:

$$
f(\Omega\sigma^2-\mu\Omega')
=fC+\partial_v(\Omega f'-f\Omega')-\Omega f''.
$$

Thus

$$
I'_f\theta^{\rm can}=\frac{\varepsilon_{\mathcal N}^{(0)}}{8\pi G_N}fC+dq'_f+a'_f,
\quad a'_f=-\frac{\varepsilon_{\mathcal N}^{(0)}}{8\pi G_N}\Omega f''.
$$

The potential anomaly is

$$
\Delta'_f\theta^{\rm can}=-\frac{\varepsilon_{\mathcal N}^{(0)}}{8\pi G_N}\delta\Omega f''
=\delta a'_f.
$$

These two terms cancel in the fundamental identity **even for general $f$**:

$$
I'_f\omega^{\rm can}=-\delta\left(
\frac{\varepsilon_{\mathcal N}^{(0)}}{8\pi G_N}fC+dq'_f\right)
+d i_f\theta^{\rm can}. \tag{3.53}
$$

Demanding that each anomaly vanish separately is an additional covariance requirement, yielding $f''=0$ if arbitrary area variations are allowed. It is stronger than merely requiring their cancellation in this identity. The corner flux $i_f\theta^{\rm can}$ remains and must be controlled before calling the cut charge a Hamiltonian.

# Entropy charge with both endpoints retained

Work first on $0<v_0<v_1<v_c$, without taking a caustic limit. For $f=f(v)$ define the **single-cut** functional

$$
Q_f(v)=\int_{\mathcal C(v)}q'_f
=\frac1{2\pi}(f' S_{\rm BH}-fS'_{\rm BH}),\qquad
S_{\rm BH}=\frac{A(v)}{4G_N}.
$$

The on-shell **slab** charge is

$$
M'_f[v_0,v_1]=Q_f(v_1)-Q_f(v_0).
$$

This distinction avoids the paper's reuse of $M'_f$ for a cut charge, an integrated constraint-plus-corner generator, and its slab variation.

For the general anomaly-free function $f=cv+b$,

$$
Q_f=\frac1{2\pi}\big[cS_{\rm BH}-(cv+b)S'_{\rm BH}\big].
$$

The additional origin/boost choice $b=0$ gives $Q_{cv}=cS_{\rm dyn}/(2\pi)$. Anomaly cancellation alone leaves $b$ undetermined. Angular independence and $c>0$ are also assumptions, not consequences of $f''=0$.

Source (3.55)–(3.56) discards the lower endpoint because its area vanishes. The necessary condition is actually

$$
\lim_{\epsilon\to0^+}
\big[f'(\epsilon)A(\epsilon)-f(\epsilon)A'(\epsilon)\big]=0.
$$

For $A=a\epsilon^p$, $p>0$, and $f=c\epsilon$, it holds. For $A=a\epsilon$ and $f=c\epsilon+b$, the lower numerator is $-ab$, despite $A\to0$. Smoothness on the open interval does not supply the missing endpoint condition. Finite cuts are sufficient for the first-law calculation and will be retained here.

The exact entropy derivative is

$$
S'_{\rm dyn}=-\frac{v}{4G_N}\int_{\mathcal C}
\varepsilon_{\mathcal C}^{(0)}\Omega''
=\frac{v}{4G_N}\int_{\mathcal C}\varepsilon_{\mathcal C}^{(0)}
\big[\Omega\sigma^2+\Omega R_{\ell\ell}-\mu\Omega'\big].
$$

For $v>0$, $\mu=0$ and $R_{\ell\ell}\ge0$ are sufficient for nondecrease. They are not necessary: the displayed combination itself can have the required sign with nonzero $\mu$.

# Stationarity: explicit failures and the repaired first law

## $\mu=0$ does not imply affine time

**Failed source inference:** the sentence immediately after (3.61), printed p. 19, claims $\mu=0\Rightarrow\kappa=0$. Since $\mu=\kappa+\theta/2$, this only follows if $\theta=0$ as well.

A flat four-dimensional metric on $v>0$ provides a geometric witness:

$$
ds^2=-2v^{-1/2}du\,dv+v(dx^2+dy^2),\quad \mathcal N:\ u=0,
\quad \ell=\partial_v.
$$

It has $\Omega=v$, $\theta=1/v$, $\sigma=0$, $\kappa=-1/(2v)$ and $\mu=0$. xAct/xCoba gives **zero for every Riemann component**. Thus this is already a vacuum counterexample; nonaffinity is not a matter effect. The finite transverse cell may be held fixed, or the transverse directions may be periodically identified for finite cut area.

## A single primed boost does not force $\mu=0$

**Failed source inference:** following (3.65), printed pp. 19–20, stationarity under $f=cv$ is said to imply $\sigma=\mu=0$. For $v>0$, $\delta'_fq=0$ does give $q'=0$, hence $\theta=\sigma=0$. But the remaining equation is

$$
0=\delta'_{cv}\mu=c(v\mu)'\quad\Longrightarrow\quad
\mu(v,x)=\frac{a(x)}v.
$$

A second flat metric realizes this loophole:

$$
ds^2=-2v^2du\,dv+dx^2+dy^2,
\qquad \Omega=1,\quad\theta=\sigma=0,\quad\mu=\kappa=2/v.
$$

Again all Riemann components vanish. All reduced dynamical variables are invariant under the stated primed boost, but for general $\delta\Omega(v)$,

$$
8\pi G_N\,i_f\theta^{\rm can}=-2c\delta\Omega\,
\varepsilon_{\mathcal C}^{(0)},\qquad
8\pi G_N\,d i_f\theta^{\rm can}=-2c\partial_v\delta\Omega\,
\varepsilon_{\mathcal N}^{(0)}.
$$

The flux need not vanish. Bounded $\mu$ at a regular extension to $v=0$ would eliminate $a(x)/v$, but the paper works on an open interval near caustics and does not impose this extension. Requiring stationarity under both translations and boosts would also force $\mu=0$. Alternatively, impose $\kappa=0$ directly as a separate background normalization.

## Conditional physical-process law

Use the stronger background conditions

$$
q'_{AB}=0,\quad \sigma=\theta=\kappa=\mu=0,
\quad R_{\ell\ell}=0,
\quad \delta\ell=0,
\quad f=cv>0.
$$

Take a first-order sourced solution, with the cut labels and generator fixed. The linearized constraint is

$$
\delta C=\delta\Omega''=-8\pi G_N\Omega_0\delta T^{\rm mat}_{\ell\ell}.
$$

At this background the potential and the contracted presymplectic form vanish in the relevant stationary direction. Equation (3.53) therefore reduces to

$$
d\delta q'_f=\varepsilon_{\mathcal N}f\delta T^{\rm mat}_{\ell\ell}.
$$

Integrating over finite cuts,

$$
\Delta\delta S_{\rm dyn}
=2\pi\int_{v_0}^{v_1}dv\,v\int_{\mathcal C}
\varepsilon_{\mathcal C}\delta T^{\rm mat}_{\ell\ell}
=\frac{2\pi}{c}\int_{\mathcal N[v_0,v_1]}
\varepsilon_{\mathcal N}\chi^a\ell^b\delta T^{\rm mat}_{ab},
\quad \chi=cv\ell. \tag{3.68}
$$

The area measure here is the background measure at linear order. If the **perturbation** obeys the NEC, the right hand side is nonnegative. There is no need to remove either endpoint. This is a linear statement; shear squared and nonlinear focusing terms re-enter at higher order. The inaffinity of $\chi$ is $c$ when $\ell$ is affine; identifying $c/(2\pi)$ with a thermodynamic temperature additionally requires an appropriate observer/state or horizon normalization. The intrinsic equation alone does not supply a KMS state.

# Semiclassical entropy at fixed regulators

## Regime and quantities that must be specified

Source §4.1 expands $g=g^{(0)}+g^{(1/2)}+g^{(1)}+O(G_N^{3/2})$, with superscripts denoting orders in $G_N$, not powers to multiply again. The background solves vacuum Einstein equations; $g^{(1/2)}$ is the free-graviton contribution, and $g^{(1)}$ is matter backreaction. The source assigns the leading shear-squared term to an effective quantum stress tensor. A separate consistent treatment is needed before interpreting this as a universal local graviton matter operator or applying a matter-QFT QNEC to it.

The small parameter is $\sqrt{\hbar G_N}/\lambda_{\rm matter}\ll1$. Stress-tensor fluctuations must be small enough for semiclassical gravity. The total expectation metric is $g^{(0)}+g^{(1)}+\cdots$; the source's displayed coherent-state expectation equal to $g^{(1)}$ is to be read as the correction, not as the whole metric. Neither coherent-state language nor small $G_N$ proves UV finiteness.

Retain a UV regulator $\epsilon_{\rm UV}>0$, a finite transverse IR region $L_\perp$ if the cut is noncompact, and finite $0<v_0<v_1<v_c$. A regulated EFT entropy is schematically

$$
S_{\rm gen}^{\epsilon_{\rm UV},L_\perp}(v)=
\frac{A^{L_\perp}(v)}{4G_{\rm bare}(\epsilon_{\rm UV})}
+S_{\rm out}^{\epsilon_{\rm UV},L_\perp}(v)
+S_{\rm local\,ct}^{\epsilon_{\rm UV},L_\perp}(v).
$$

The local terms allow the counterterms required by the chosen gravitational EFT and regulator; in four dimensions Newton's constant alone is not generally the whole renormalization problem. The source writes only $A/(4G_N)+S_{\rm vN}$ and assumes a well-defined regulator. It provides no explicit regulator, entropy counterterm calculation or limit-interchange proof. All manipulations below are at fixed compatible regulator/scheme. Only after combining counterterms and establishing convergence could one take $\epsilon_{\rm UV}\to0$, followed by an IR limit if desired. No caustic limit is required. No physical trace on a type-III algebra is asserted without this regulated construction.

## QNEC assumption and the two integrations by parts

Source (4.13) is a diagonal null shape-variation inequality at a locally nonexpanding, shear-free cut. Its replacement by a uniform-cut second derivative in (4.14) needs control of the off-diagonal shape Hessian as well; integrating only the diagonal term does not algebraically equal the full double integral. The paper then **explicitly assumes** the perturbed global inequality (4.15). Use that as the hypothesis, rather than claiming it follows from subtracting arbitrary QNECs:

$$
\int_{\mathcal C}\varepsilon_{\mathcal C}\,
\delta\langle T_{\ell\ell}\rangle
\ge\frac1{2\pi}\partial_v^2\delta S_{\rm out}.
$$

Perturbing an inequality generally requires background saturation or another independent argument to infer an inequality on its first variation. A common regulator, fixed cut deformation, suitable state class and the global perturbed inequality are all needed here.

Let the slab constraint-plus-boundary variation be

$$
\delta\mathcal M_f=-\int_{v_0}^{v_1}dv\,f
\int_{\mathcal C}\varepsilon_{\mathcal C}\delta\langle T_{\ell\ell}\rangle
+\Delta\delta Q_f.
$$

For nonnegative $f$, the assumed inequality gives

$$
2\pi\delta\mathcal M_f\le
-\int_{v_0}^{v_1}f\,\delta S_{\rm out}''dv
+\Delta(f'-f\partial_v)\delta S_{\rm BH}.
$$

The exact identity

$$
-\int_{v_0}^{v_1} fS''dv=
\big[f'S-fS'\big]_{v_0}^{v_1}
-\int_{v_0}^{v_1}f''S\,dv
$$

retains both endpoints and all regulator dependence. Consequently,

$$
2\pi\delta\mathcal M_f\le
\Delta(f'-f\partial_v)\delta S_{\rm gen}
-\int_{v_0}^{v_1}f''\delta S_{\rm out}\,dv.
$$

For $f=cv$ this becomes

$$
\Delta\delta\widetilde S_{\rm dyn}\ge\frac{2\pi}{c}\delta\mathcal M_f,
\qquad
\widetilde S_{\rm dyn}=(1-v\partial_v)S_{\rm gen}. \tag{4.18–4.19}
$$

On the stronger zero-flux background used in the preceding section, the linearized sourced first law gives $\delta\mathcal M_f=0$: the constraint integral cancels the **difference** of boundary charges. It does not set each individual perturbed cut charge to zero. The resulting conditional GSL is

$$
\Delta\delta\widetilde S_{\rm dyn}\ge0.
$$

Equivalently, at fixed regulators and within these assumptions,

$$
\partial_v\delta\widetilde S_{\rm dyn}
=v\left[2\pi\int_{\mathcal C}\varepsilon_{\mathcal C}
\delta\langle T_{\ell\ell}\rangle-\delta S_{\rm out}''\right]\ge0.
$$

This is a uniform-cut, linearized inequality. It is not the full local quantum focusing conjecture and does not prove the microscopic interpretation offered in the discussion.

# Extensions and translation to the vault

Source §5 proposes replacing the area entropy by the appropriate higher-curvature entropy, comparing to apparent-horizon/simple entropy, moving to a dressing time $V$ with $\mu=V''/V'$, and connecting the quantum Raychaudhuri algebra to microscopic entropy. These are proposals. The apparent-horizon equality cited there must keep the perturbative/horizon hypotheses of the cited work; this paper does not prove it for arbitrary dynamical cuts. The $V$ reparametrization changes the connection-like datum and does not automatically preserve the hypotheses or regulator of a QNEC.

For an action/CPS implementation, start with the boundary term and potential above, retain $i_f\theta^{\rm can}$, and compare its convention with the desired $\delta H_\xi=-I_\xi\Omega$ convention before transporting signs. The primed restriction fixes $\ell$ and removes the spin-1 pair; it is therefore not a ready-made phase space for gluing two independently fluctuating null boundaries. A gluing calculation would have to restore matching/embedding data and show what is quotiented. In AdS, the local null calculation still needs the ambient boundary conditions and normalization of the generator. It does not compute a one-particle trace, a Fock partition function or a brick-wall/cone matching relation.

| Equation ledger | Inputs | Reusable output | Evidence here |
|---|---|---|---|
| (2.6)–(2.8) | Ruled structure, horizontal tensors | Projector and expansion split | Algebra checked; general geometric definitions source-derived |
| (2.19), (3.43) | Einstein null constraint, $\ell=\partial_v$ | $C=\Omega''-\mu\Omega'+\Omega\sigma^2$ | xAct in a general diagonal Rosen family; contraction argument explicit |
| (3.21)–(3.37) | Specified null action, primed restriction | Canonical potential | Full covariant boundary variation source-derived; reduction explicit |
| (3.38)–(3.53) | Primed laws and fixed generator | Charge, anomaly and fundamental identity | Algebra checked, including a radiative diagonal sector |
| (3.55)–(3.58) | Two cuts, $f=cv$ | HWZ cut charge | Checked; lower endpoint condition required |
| (3.65)–(3.68) | Stronger affine, nonexpanding zero-flux background | Physical-process law | Conditional chain checked; weaker stationarity inference failed |
| (4.13)–(4.21) | Perturbed global QNEC, compatible regulator, zero flux | Dynamical generalized entropy/GSL | Integration and sign checked; QNEC/regulator hypotheses source-dependent |

# Verification log

**Verified:** official full source read through all five sections and discussion; no appendices. Nine rendered PDF pages (7, 13, 16–20, 24–25) visually confirm the principal geometric, potential, charge, endpoint, stationarity and QNEC equations and printed numbering. Text extraction was used for navigation; the PDF font warning did not prevent source/render comparison.

**Checked — Mathematica:** projector idempotence; the exact constraint-to-charge residual; $f''=0$ solution; arbitrary affine-$f$ charge; entropy derivative; endpoint counterexample; the ODE $\delta'_{cv}\mu=0$; the $\mu=0$ nonaffine values; finite-cut QNEC integration-by-parts identity; linearized first-law factor $2\pi$ and conditional GSL sign. All claimed identity residuals are exactly zero.

**Checked — radiative CPS sector:** use $q_{AB}=\operatorname{diag}(e^{2a},e^{2b})$, $\Omega=e^{a+b}$ and $z=a-b$. Then $\sigma^2=z'^2/2$ and $8\pi G_N\theta^{\rm can}=\Omega z'\delta z/2-\mu\delta\Omega$ per reference volume. Computing $I'_f\delta\theta^{\rm can}$ explicitly gives (3.53), and the anomaly is exactly $-f''\delta\Omega/(8\pi G_N)$. This independently includes an arbitrary diagonal shear; it is not a full two-polarization covariant boundary-variation proof.

**Checked — xAct/xCoba:** for $ds^2=-2N(v)du\,dv+A(v)^2dx^2+B(v)^2dy^2$, the computed $\kappa=N'/N$ and $R_{vv}$ give zero residuals for Raychaudhuri and the area constraint. Every Riemann component vanishes in both explicit flat counterexamples above. These witnesses are local on $v>0$; no regular extension to $v=0$ is assumed.

**Failed:** the inference $\mu=0\Rightarrow\kappa=0$ after source (3.61); the inference that single-boost primed stationarity (3.65) forces $\mu=0$ and zero flux on the declared open interval; and the inference that vanishing area alone discards the general lower endpoint in (3.55). The dependent unrestricted first-law/GSL claim is not used. Conditional laws above impose sufficient additional hypotheses.

**Assumptions:** four-dimensional Einstein gravity after §2; positive cut metric, fixed generator and cut coordinates; field-independent $f$; finite cuts and any transverse IR regulator retained; $f=cv>0$ for entropy; affine nonexpanding shear-free zero-flux background for the linear laws; linearized sourced Einstein equation; NEC on the classical perturbation or the stated perturbed global QNEC; compatible fixed quantum regulator and counterterms.

**Not verified:** the unrestricted covariant variation of the full null action including all corner data; full Damour dynamics; uniqueness under all JKM improvements; a universal QNEC for the effective graviton term; the local-to-global shape-Hessian step, regulator-independent UV limit and full QFC; microscopic entropy, general higher-curvature extension or holographic simple-entropy interpretation. These remain source-derived/conditional rather than being labeled Checked.

**Blocked:** the paper supplies no explicit UV regulator/entropy counterterm scheme or off-diagonal entropy shape Hessian for the asserted general quantum setup, so those checks cannot be instantiated from this source. There is no remaining retrieval or CAS-service blocker. Initial PDF/source timeouts recovered. An initial algebra script used Mathematica's reserved `O` symbol and returned `SeriesData`; it was discarded, renamed and rerun with exact zero residuals. A JavaScript wrapper quoting error occurred before execution and has no mathematical status.

Temporary raw source, renders, Wolfram code and structured outputs are outside the vault in `/var/folders/49/jlmgqdz54ljdnyszz4ww7sdw0000gn/T/arxiv-daily-20261022-df7ag6lg/H1`. This note changes no older note.
