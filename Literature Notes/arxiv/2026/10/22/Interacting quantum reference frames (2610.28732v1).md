---
paper id: 2610.28732v1
title: Interacting quantum reference frames
authors:
  - Leonardo Chataignier
  - Alexander R. H. Smith
publication date: 2026-10-20T18:00
abstract: |-
  Gauge fixing by a positive operator measure yields isometric conditional reductions and unitary changes between admissible interacting quantum reference frames. The paper applies the construction to clocks and three-particle spatial frames.
comments: "19 pages, 3 figures"
url: https://arxiv.org/abs/2610.28732v1
summary: "Operator-valued gauge-fixing measures preserve interacting relational inner products, with explicit domain, Jacobian and measurement restrictions."
tags: []
---

# Interacting quantum reference frames

**Correct under precise conditions:** a positive, well-defined gauge-fixing measure makes each reduction an isometry from the physical Hilbert space onto its conditional image. The composition of two such reductions is then unitary between those images even for a gauge representation that entangles frame and system. Existence, domains and invertibility of that measure are substantive assumptions. This theorem does not establish a globally admissible frame for every interaction.

The concrete use for regional observables is the distinction between a kinematical tensor factor, a gauge-invariant physical space, and a conditional image. A change of relational description need not preserve the original kinematical factorization, while it must preserve the physical inner product. The operator inserted in that inner product is the main reusable object.

## How to read the paper and its complete section tree

This 19-page paper uses monograph-style organization here because its theorem chain depends on three technical appendices.

| Source | Role in the argument |
|---|---|
| I Introduction | Frames as gauge choices; interactions mean a gauge action that need not factorize. |
| II.A Kinematical and physical spaces | Group averaging and the physical inner product. |
| II.B Quantum reference frames | Coherent orientation states and the distinct groups $G$ and $G_R$. |
| II.C Gauge fixing and conditional states | Positive twirl, inverse measure, reduction and reconstruction; Theorem 1. |
| II.D Changing frames | Unitary change of conditional image; Theorem 2 and transformation of effects. |
| III Relational Dirac observables | Conditional probabilities, gauge-invariant lifts and the algebra map; Theorems 3–4. |
| IV.A Temporal frames | Exact time-evolution map and relational generator. |
| IV.A.1 Time-nonlocal equation | Recovery when the measure is time independent. |
| IV.A.2 Weak interactions | Measure expansion, corrected kernel and norm conservation through first order. |
| IV.A.3 Two-time probabilities | Projective transition amplitudes and the measurement interpretation. |
| IV.B Spatial frames | Three-particle momentum constraint and coupling-dependent entanglement. |
| V Conclusion | Gauge-fixing failures, instruments, perspective-neutral comparison, crossed products and non-unimodular extensions remain open. |
| Appendix A | Conditional image embeds isometrically in the kinematical system Hilbert space. |
| Appendix B | Differentiate the reduction to obtain the generator; printed factors of $i$ require correction. |
| Appendix C | Compute the spatial measure and transformation kernel; an absolute Jacobian is required. |

Essential: II.C–D and III, then Appendix A. For clock applications use IV.A together with Appendix B, preserving the corrections below. IV.B and Appendix C supply a calculable test of the measure. The interpretive discussion and prospective Type III/Type II connection are not established consequences of the finite-model calculations.

## Group averaging, coherent frames and operator domains

Set $\hbar=1$. Let $G$ be locally compact and unimodular, $U(g)$ a unitary representation on $\mathcal H_{\rm kin}$, and $dg$ its fixed Haar measure. For compact groups normalize Haar volume to one when identifying group averaging with an orthogonal projector. For noncompact groups use a test space $\Phi\subset\mathcal H_{\rm kin}\subset\Phi^*$ and a rigging map; do not treat the formal average as a bounded projector by default. Write
$$
P=\int_Gdg\,U(g),\qquad |\Psi\rangle=P|\psi\rangle,\qquad
\langle\Psi_1|\Psi_2\rangle_{\rm phys}=\langle\psi_1|P|\psi_2\rangle_{\rm kin}.
$$
The construction selects the trivial representation, $U(g)\Psi=\Psi$. Removing a phase is a choice of constraint sector, not a proof that a nonzero invariant sector always exists. Positivity, convergence and completion of the rigging-map form must hold in the model at hand.

Choose $\mathcal H_{\rm kin}=\mathcal H_R\otimes\mathcal H_S$ and coherent frame states $|r\rangle=U_R(r)|r_0\rangle$, $r\in G_R$, with $\int_{G_R}dr\,|r\rangle\langle r|=I_R$ in the relevant weak sense. $E_R(r)=|r\rangle\langle r|$ is an orientation POVM density; it need not be a normalizable state or bounded effect at an individual point. The frame group $G_R$ need not equal the gauge group $G$. The interacting case is $U(g)\ne V_R(g)\otimes V_S(g)$ across the chosen partition.

Define the twirl and the measure,
$$
\mathcal G[X]=\int_Gdg\,U(g)XU(g)^\dagger,\quad
T_R(r)=\mathcal G[E_R(r)\otimes I_S],\quad
\Delta_R(r)=T_R(r)^{-1},\quad D_R(r)=\Delta_R(r)^{1/2}.
$$
The source assumes $T_R(r)$ is well defined and invertible. Strict positivity without a uniform lower bound does not imply a bounded inverse; when unbounded, common invariant domains for $T_R$, $D_R$, $P$ and their compositions are required. The identity below is therefore an operator/form identity only where all products are defined. A kernel obstructs global reduction; restricting to support gives a sector construction that must be specified separately.

## Gauge-fixing identity and the reduction theorem

Because $T_R$ commutes with $U(g)$, so does $D_R$ by functional calculus. Hence
$$
\Xi_R(r)=D_R(r)(E_R(r)\otimes I_S)D_R(r),\qquad
\mathcal G[\Xi_R(r)]=D_RT_RD_R=I.
$$
This is the operator counterpart of a Faddeev–Popov resolution of the identity. The source's (8)–(12) then imply
$$
\langle\Psi_1|\Psi_2\rangle_{\rm phys}
=\langle\Psi_1|\Xi_R(r)|\Psi_2\rangle_{\rm kin}.
$$
To see the step, insert $I=\mathcal G[\Xi_R]$ between a kinematical precursor $\psi_1$ and an invariant $\Psi_2$; move $U(g)^\dagger$ through the invariant state and use the Haar inversion property to average the first bra. This is where unimodularity and the admissible integral manipulations enter.

The generalized reduction is
$$
\mathcal R_R(r)=(\langle r|\otimes I_S)D_R(r),\qquad
|\psi_S(r)\rangle=\mathcal R_R(r)|\Psi\rangle.
$$
Its image $\mathcal H_{S|R}(r)$ inherits the ordinary system inner product, since
$$
\langle\mathcal R\Psi_1|\mathcal R\Psi_2\rangle_S
=\langle\Psi_1|\Xi_R|\Psi_2\rangle_{\rm kin}
=\langle\Psi_1|\Psi_2\rangle_{\rm phys}.
$$
The inverse on the image is
$$
\mathcal R_R^{-1}(r)=P D_R(r)(|r\rangle\otimes I_S).
$$
Indeed $\mathcal R^{-1}\mathcal R\Psi=P\Xi_R\Psi=\mathcal G[\Xi_R]\Psi=\Psi$. Conversely $\mathcal R\mathcal R^{-1}=I$ on the image, not generally on all of $\mathcal H_S$. Appendix A expands the image in an orthonormal system basis and reproduces the same norm identity; once the isometry is defined on a complete physical Hilbert space, its image is closed. This last completion/domain requirement matters for distributional coherent states.

The conditional norm is independent of $r$. For two admissible frames,
$$
U_{\widetilde R\leftarrow R}(\tilde r,r)
=\widetilde{\mathcal R}(\tilde r)\mathcal R^{-1}(r),\qquad
U^\dagger=\mathcal R(r)\widetilde{\mathcal R}^{-1}(\tilde r).
$$
The inverse identities give $U^\dagger U=I_{S|R}$ and $UU^\dagger=I_{\tilde S|\tilde R}$. This is unitarity between conditional images. It does not assert a unitary map between arbitrary kinematical subsystem spaces of different dimensions. The images can depend on orientation; treating time derivatives as operators on one fixed Hilbert space requires a common identification and suitable differentiability.

## A finite interacting model that checks the full reduction chain

This is an independent check, not an example quoted from the paper. Take $G=\mathbb Z_2$ with normalized average and
$$
U=\frac35Z\otimes I+\frac45X\otimes X,\qquad U^2=I,
$$
where $X,Z$ are Pauli matrices. Its operator Schmidt rank is two, so it is not a tensor-product representation. An orthonormal basis of the invariant space is
$$
v_0=\frac{2|00\rangle+|11\rangle}{\sqrt5},\qquad
v_1=\frac{2|01\rangle+|10\rangle}{\sqrt5}.
$$
Use the frame orientations $|0\rangle,|1\rangle$, exchanged by $X_R$. If $P=(I+U)/2$, the positive square roots of the two measures are
$$
D_0=\frac{\sqrt5}{2}P+\sqrt5(I-P),\qquad
D_1=\sqrt5P+\frac{\sqrt5}{2}(I-P).
$$
The twirl of $E_0\otimes I$ has spectrum $\{4/5,4/5,1/5,1/5\}$. In the basis $v_0,v_1$, corrected reduction matrices are $R_0=I_2$, $R_1=X$; their change of frame is exactly unitary. The unweighted reductions instead induce metrics $(4/5)I_2$ and $(1/5)I_2$. Thus simply dropping $D_r$ changes the norm with frame orientation.

Mathematica checked the twirled identity resolution, both reductions, inverse/composition and a noncommuting observable product with exact zero residuals. Sage independently checked the $\mathbb Z_2$ representation, physical rank, operator Schmidt rank and positivity. Replacing $U$ by $Z\otimes I$ makes the same orientation twirl singular, with spectrum $\{1,1,0,0\}$: the inverse assumption has content.

This example also corrects an overstatement after source (21): a physical state need not be entangled across $R|S$. Here $(v_0+v_1)/\sqrt2=[(2|0\rangle+|1\rangle)/\sqrt5]\otimes|+\rangle$ is invariant and separable despite the nonfactorizing group action. The reconstruction integral permits entanglement; it does not force it for every state.

## Relational Dirac observables and the algebra map

For a bounded operator $A$ on the conditional image, define
$$
F_A(r)=\mathcal R^{-1}(r)A\mathcal R(r).
$$
For effects $E_S(a)$ this gives
$$
P(a\text{ when }r)=\langle\psi_S(r)|E_S(a)|\psi_S(r)\rangle
=\langle\Psi|F_{E_S(a)}(r)|\Psi\rangle_{\rm phys}.
$$
On the physical space the lift equals the twirled expression
$$
F_{E_S(a)}(r)=\mathcal G[D_R(r)(E_R(r)\otimes E_S(a))D_R(r)]\big|_{\mathcal H_{\rm phys}}.
$$
When the image is proper, an operator on it must be appropriately extended or compressed before using the kinematical tensor-product notation. The invariant-space equality is the claim needed for physical predictions; it is not a general equality of the one-sided average and the twirl on all of $\mathcal H_{\rm kin}$.

Inserting $\mathcal R\mathcal R^{-1}=I$ proves $F_{AB}=F_AF_B$, linearity, and $F_{A^\dagger}=F_A^\dagger$. Thus the bounded operator algebra is transported by a unitary isomorphism. The set of effects itself is not an algebra closed under multiplication; effects inherit positivity and normalization from the operator-algebra map. Unbounded observable products require a common domain.

Frame changes must transform both the state and the effect: $\tilde E=UE_SU^\dagger$. Their physical lifts then agree. The printed source (28) uses $E_{\tilde S}$ on both sides; the right side must use $E_S$ for the typed map between different conditional spaces. Likewise the classical analogy (33) needs the transformed $f[A^\varepsilon]$ inside the gauge average if it is to produce a gauge-invariant extension; holding $f[A]$ outside an identity resolution returns the original, generally noninvariant functional. These notation issues are not used in the reduction proof above.

## Temporal frames: generator, nonlocal kernel and weak coupling

Let $G$ be one-dimensional with $U(g)=e^{-igH}$ and
$$
H=H_C\otimes I+I\otimes H_S+H_{\rm int},\qquad H\Psi=0.
$$
Clock orientations satisfy $|t\rangle=e^{-itH_C}|t_0\rangle$. The reduction-defined propagator is $U_{S|C}(t_2,t_1)=\mathcal R(t_2)\mathcal R^{-1}(t_1)$. To differentiate, use
$$
i\partial_t\langle t|=-\langle t|H_C,\qquad [D(t),H]=0,
$$
and $HD(t)\Psi=0$. Therefore
$$
i\partial_t\psi_S(t)=H_S\psi_S(t)
+\langle t|H_{\rm int}D(t)\Psi\rangle
+i\langle t|\dot D(t)\Psi\rangle.
$$
Reconstructing $\Psi$ from $\psi_S(t)$ gives source (45), with tensor identities suppressed,
$$
H_{S|C}(t)=H_S+\int_Gdg\,\langle t|
[H_{\rm int}\Delta(t)+i\dot D(t)D(t)]U(g)|t\rangle.
$$
Hence $i\partial_{t_2}U_{S|C}=H_{S|C}(t_2)U_{S|C}$ and, on an appropriate common domain, the time-ordered exponential follows. Appendix B (B2) prints $\partial_{t_2}U=H_{S|C}U$ and omits the associated factors of $i$ in its intermediate steps. That displayed chain is **Failed as printed**: even $U=e^{-iE(t_2-t_1)}$ contradicts it. The corrected equation above agrees with the main text (46) and (B3)–(B4). The relation replacing $-H_C$ by $H_S+H_{\rm int}$ also holds only on the physical averaged argument, not as an unrestricted kinematical operator identity.

If $\Delta$ is independent of $t$, insert clock completeness into $\langle t|H_{\rm int}D\Psi\rangle$ to obtain
$$
i\partial_t\psi_S(t)=H_S\psi_S(t)+\int_{G_C}dt'\,
\langle t|H_{\rm int}|t'\rangle\psi_S(t').
$$
This uses the corrected conditional state. Applying the same equation to the bare state $\langle t|\Psi\rangle$ for a general time-dependent measure does not preserve the physical norm.

For $H_{\rm int}=\lambda\bar H_{\rm int}$ and $G=G_C$, suppose a regulated twirl has a controlled expansion $T(t)=I+\lambda B(t)+O(\lambda^2)$. Then
$$
\Delta=I-\lambda B+\lambda^2B^2+\cdots,\quad
D=I-\frac\lambda2B+\frac{3\lambda^2}{8}B^2+\cdots,\quad
\dot D D=\frac12\dot\Delta+O(\lambda^2).
$$
Mathematica verifies these ordered matrix expansions for a generic symmetric $2\times2$ $B(t)$ with noncommuting $B$ and $\dot B$. The first-order equation becomes the source's (56)–(57),
$$
i\partial_t\psi_S(t)=H_S\psi_S(t)+\lambda\int dt'\langle t|K(t)|t'\rangle\psi_S(t')+O(\lambda^2),
$$
$$
K(t)=\bar H_{\rm int}+\frac12\int_Gdg\,U_0(g)
[\bar H_{\rm int},E_C(t)\otimes I]U_0(g)^\dagger.
$$
The correction need not be Hermitian as a bare kinematical kernel. On physical solutions its anti-Hermitian contribution cancels the norm variation from the unweighted interaction, leaving $\partial_t\langle\phi_S|\psi_S\rangle=O(\lambda^2)$. The general group-integral perturbation remains Source-derived; exchanging a noncompact group average with a small-$\lambda$ expansion needs convergence control. Small numerical $\lambda$ alone is not a uniform bound for an unbounded interaction.

For a direct exact clock check, take an ideal canonical clock with $H_C=P_T$, $[T,P_T]=i$, and $H_{\rm int}=\lambda P_T\otimes H_S$. Put $v=I+\lambda H_S$ and restrict initially to a spectral band $v\geq\varepsilon I>0$. Then $\Delta=v$ and
$$
H_{S|C}=v^{-1}H_S=H_S-\lambda H_S^2+O(\lambda^2).
$$
This follows directly from $(-iv\partial_t+H_S)\Psi(t)=0$; multiplication by the constant $\sqrt v$ gives the corrected norm. Mathematica checked the exact constraint, Hermiticity and first-order expansion for $H_S=\begin{pmatrix}2&1\\1&3\end{pmatrix}$. On negative-speed sectors the positive measure is $|v|$, while $v=0$ is a clock failure. The gravitationally motivated source example has $\lambda=-G/(c^4d)$; its physical approximation and spectral validity are source assumptions, not verified by this finite check.

## Two-time probabilities require a measurement operation

Source (61) writes $\langle F_AF_BF_A\rangle/\langle F_A\rangle$ after introducing general effects. This is correct for a projective first measurement with the specified Lüders update, provided the denominator is nonzero. It is not normalized for a general POVM: with $F_A=I/2$ and summed final effect $F_B=I$, the expression is $1/2$, not one. Mathematica reproduces this exact counterexample.

For a Lüders instrument with an arbitrary effect, use $\langle\sqrt{F_A}F_B\sqrt{F_A}\rangle/\langle F_A\rangle$; a different instrument can give different sequential statistics despite the same single-time POVM. For rank-one projectors the source's valid specialization (62) is
$$
P(b,t_2\mid a,t_1)=|\langle b|U_{S|C}(t_2,t_1)|a\rangle|^2.
$$
The reduction identities reproduce this result. The broader claim that the measurement problem disappears is an interpretation, not an additional theorem established by the transition formula; a sequential measurement rule has already entered.

## Spatial frames and the absolute Jacobian

Take three particles with $\mathcal H_i=L^2(\mathbb R)$ and
$$
C=P_A+P_B+P_C+\lambda(P_AP_B+P_BP_C+P_AP_C),\qquad U(g)=e^{-igC}.
$$
Position orientations are $|x\rangle=(2\pi)^{-1/2}\int dp\,e^{-ixp}|p\rangle$. The $A$-frame gauge orbit moves its position with speed $v_A=1+\lambda(p_B+p_C)$. Thus changing variables from $g$ to $x+gv_A$ in a positive Haar integral gives
$$
T_A=I_A\otimes|1+\lambda(P_B+P_C)|^{-1},\qquad
\Delta_A^{1/2}=\sqrt{|1+\lambda(P_B+P_C)|},
$$
and similarly for $B$. These are multiplication operators with domains; at $v_A=0$ the chosen clock/rod does not slice the orbit. Source (C4)–(C6) and main-text (65) omit the absolute value without restricting the momentum support. They are **Failed globally as printed**: at $\lambda=1,p_B=-2,p_C=0$ the claimed positive twirl is $-1$. A restriction to positive speeds, or the absolute-value expression, repairs this step. The source's Gaussian packets have full momentum support and do not obey a strict positive-speed restriction.

Solve $C=0$ for $p_B$ using $a=p_A,c=p_C$:
$$
f(a,c)=\tilde p=-\frac{a+c+\lambda ac}{1+\lambda(a+c)},\quad
D(a,c)=1+\lambda(a+c),\quad Q(c)=1+\lambda c+\lambda^2c^2.
$$
Direct algebra gives
$$
\partial_a f=-\frac{Q(c)}{D(a,c)^2},\quad
D(a,c)[1+\lambda(f(a,c)+c)]=Q(c),\quad
Q=(\lambda c+1/2)^2+3/4>0.
$$
All three identities were checked exactly. Combining the positive square roots with the delta-function Jacobian yields
$$
(U_{A\to B}(y,x)\psi)(a,c)=
\frac{\sqrt{Q(c)}}{|D(a,c)|}\,e^{-ixa+iyf(a,c)}\psi(f(a,c),c).
$$
The amplitude is precisely $\sqrt{|\partial_a f|}$. Hence the norm is preserved by a change of variables on the nonsingular branches. For fixed $c$, the fractional-linear map exchanges the two intervals separated by its pole and covers the line up to one point. A global $L^2$ statement can be understood almost everywhere, whereas the intermediate twirl/inverse products still need domains. Do not discard the singular locus before specifying this distinction.

The final source kernel (68)/(C12) agrees with this positive-Jacobian result despite the missing absolute values in its earlier measure. Its penultimate line also drops a factor $\lambda$ in one square root; the final expression restores the correct polynomial. No additional phase from multiplying principal square roots of two negative numbers should be imported: the required roots are those of the positive absolute-value operators.

For the source's superposed Gaussian,
$$
\phi(p)=\frac{\sqrt\sigma}{\pi^{1/4}}e^{-\sigma^2p^2/2},\qquad
\psi_B(p)=N(e^{-ipz_1}+e^{-ipz_2})\phi(p),\quad
N=[2+2e^{-(z_1-z_2)^2/(4\sigma^2)}]^{-1/2},
$$
substitution into the kernel gives its transformed state. The $a,c$ dependence generally entangles the two remaining particles. In the simple $\lambda=0,z_1=z_2=0,\sigma=1,x=y=0$ limit, $\psi(a,c)=\pi^{-1/2}e^{-[(a+c)^2+c^2]/2}$ gives
$$
\rho_C(c,c')=\pi^{-1/2}e^{[-3c^2+2cc'-3c'^2]/4},\quad
\operatorname{tr}\rho_C=1,\quad\operatorname{tr}\rho_C^2=1/\sqrt2.
$$
Mathematica performed the Gaussian integrations exactly.

The asserted independence of purity from both orientations after (69) needs care. The $x$ phase is local on $A$, but the $y$ phase $e^{iyf(a,c)}$ is generally not a product of local phases: $\partial_a\partial_cf$ is nonzero for generic $\lambda$. A finite, explicitly regulated check with $a,c\in[-2,2]$, $\lambda=1/5$, $\sigma=1$, $z_1=z_2=0$, and renormalization after this fixed square restriction gives:

| Midpoint grid | retained norm before normalization | purity at $y=0$ | purity at $y=2$ |
|---|---:|---:|---:|
| $80\times80$ | 0.92403985 | 0.74381009 | 0.72121232 |
| $160\times160$ | 0.92402408 | 0.74381913 | 0.72122156 |

Here $D\geq1/5$, so no pole is crossed. This is a **Checked finite-cutoff orientation dependence**, not a reconstruction of the source's unregulated Figure 3. It invalidates an unqualified local-phase argument for $y$ independence. More generally, for a positive real initial amplitude the second derivative of purity at $y=0$ is minus an integral of a positive weight times $[f(a,c)-f(a',c)+f(a',c')-f(a,c')]^2$, provided differentiation under the integral is justified. The source supplies no such justification for orientation independence. Its full coupling curve and large-$\lambda$ limit are left Not independently verified.

## Regulator order and relation to regional observables

For noncompact averaging keep a group regulator, for example $P_\eta=\int_{\mathbb R}dg\,e^{-\eta g^2}U(g)$ with $\eta>0$, until its distributional limit is evaluated on test states. For a finite support test also keep momentum bounds $|p_i|\leq\Lambda$ and an excluded-speed bound $|v_R|\geq\varepsilon>0$. The finite regulated average is not exactly gauge invariant, so the exact reduction identities refer to a justified rigging-map limit, not an arbitrary finite-$\eta$ replacement. Establish the identity on admissible test vectors before removing support restrictions; exchanging $\eta\to0$, $\Lambda\to\infty$, $\varepsilon\to0$ or the weak-coupling expansion is not proved here. The purity table instead keeps its stated finite square cutoff and varies only quadrature resolution.

For CPS/sewing applications, $\mathcal R^{-1}A\mathcal R$ is a concrete relational observable once the physical inner product is independently known. The construction does not derive that inner product from a classical boundary action, prove factorization of regional Hilbert spaces, or identify the gravitational corner algebra. The proposed relation to crossed products and a Type III-to-Type II transition in §V is future work. Non-unimodular groups require modular weights and lie outside the theorem used here.

## Equation ledger and evidence boundary

| Source chain | Evidence and dependency |
|---|---|
| (5)–(12), physical product and positive gauge-fixing resolution | Source-derived general rigging-map construction; independently exact in the finite interacting model. |
| (17)–(27), reductions and unitary frame change | Checked algebraic proof conditional on domains/invertibility; exact finite matrices and Sage group/positivity check. |
| (29)–(38), relational effects and homomorphism | Checked conjugation proof on conditional images; exact noncommuting finite example. Do not extend unrestrictedly to kinematical operators. |
| (44)–(46), Appendix B | Corrected derivative reconstructed; exact free-phase and interacting ideal-clock checks. (B2) is Failed as printed. |
| (49)–(60), time-nonlocal and weak-coupling formulas | Source-derived group-integral chain; exact noncommuting inverse/root expansion and commuting-clock limit Checked. General convergence is not supplied. |
| (61)–(62), sequential probabilities | Failed for arbitrary effects; exact $I/2$ counterexample. Correct under the stated projective/instrument restriction. |
| (63)–(69), Appendix C | Absolute Jacobian and fractional-linear kernel Checked symbolically; measure without absolute values Failed on negative-speed support. |
| Gaussian entanglement | Checked exact zero-coupling purity and finite-cutoff orientation dependence; full Figure 3 not reproduced. |
| Global admissibility, noncompact domains, Gribov sectors | Blocked by missing model-specific rigging-map/domain and support prescriptions; no general theorem asserted beyond them. |

**Verified:** exact Mathematica matrix, derivative, Jacobian and Gaussian computations; Sage finite-group and positivity check; the stated finite-grid purity test. Full TeX and all three appendices read. PDF pages 4, 7, 10, 11, 15, 16 and 17 visually confirmed the central identities and the reported printed defects. The PDF text extractor emitted a font-type mismatch warning; rendered formulas were readable.

**Assumptions:** positive invertible twirl on an admissible domain, unimodular group, fixed Haar normalization, coherent-state completeness, trivial constraint sector, bounded effects or common operator domains, appropriate differentiability for temporal evolution, and the explicitly retained regulators/support conditions.

**Not verified:** arbitrary noncompact interacting models, uniform weak-coupling expansion, the unregulated purity curve and its asymptotics, general measurement instruments, gravitational regional sewing or crossed-product type change. Source defects have been isolated rather than used as premises; the valid isometry theorem is retained with its precise hypotheses.
