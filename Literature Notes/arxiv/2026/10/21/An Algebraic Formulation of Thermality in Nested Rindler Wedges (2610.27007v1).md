---
paper id: 2610.27007v1
title: An Algebraic Formulation of Thermality in Nested Rindler Wedges
authors:
  - "Waheed A. Dar"
  - "Prince A. Ganai"
  - "Nirmalya Kajuri"
publication date: 2026-10-19
abstract: |-
  Padmanabhan and Kolekar had demonstrated the phenomenon of recursive thermality in two dimensional free field theories where the Rindler vacuum appears thermal to an observer accelerated with respect to the Rindler observer. We study the same construction at an algebraic level for conformal field theories. At each step, a parent wedge is conformally mapped to a reference Minkowski spacetime, where a new right Rindler wedge and its left sibling are selected. We illustrate that under the Bisognano--Wichmann property, thermality holds at every generation: the state associated with a parent wedge becomes a KMS state when restricted to its right child. Further, using the modular structure of the wedge and its causal sibling, we identify the sibling algebra with the modular commutant and derive the corresponding recursive modular flow explicitly.
comments: "23-page official PDF; comments not supplied"
url: https://arxiv.org/abs/2610.27007v1
summary: "Recursive KMS transport with explicit modular weights, state distinctions and finite-cutoff normalization limits."
tags: []
---

# The state changes at each recursive Rindler step

The usable statement is precise: for a specified transported parent state $\omega_n$ on $W_n$, its restriction to $W_{n+1}$ is KMS for the transported boost $\alpha^{(n+1)}$ at $\beta_{n+1}=2\pi/g_{n+1}$. This follows from a common transport of the reference state, algebra and dynamics. It is not a statement that one fixed Minkowski vacuum is KMS for every recursive observer flow, nor does it produce a trace-class wedge density matrix.

The direct connection to the Rindler partition-function problem is the distinction between three objects: a state’s modular automorphism group, a one-sided stress-tensor charge, and a regulated Hamiltonian with a trace. The paper constructs the first and formally represents its derivation by the second. The third requires additional regulator and spectral data.

## Source map and how to read this paper

The official v1 PDF has 23 pages. The displayed date is October 21, while the submission metadata are October 19. The technical source contains an inactive `\iffalse` draft of §§6–7; that draft is excluded from the section map and equation numbering below.

| Source | Technical purpose and later dependency |
|---|---|
| §1, pp. 2–3 | States the recursive experiment and separates it from the older particle-number calculation. |
| §2.1, pp. 3–5 | Defines the framed parent, child/sibling regions, coherent algebra transport and transported vacuum. All later modular statements depend on these assumptions. |
| §2.2, pp. 5–7 | Exponential maps, iterated logarithms, horizon locations and complete flow; supplies the weights used in §5. |
| §2.3, p. 7 | Distinguishes clock normalization from geometry of the next cut. |
| §3, pp. 7–9 | Free-current covariance, analytic strip, ordering, passage to bounded Weyl operators, and proper-time qualification. |
| §4.1–4.2, pp. 10–11 | GNS unitary and the recursive BW theorem. |
| §4.3–4.4, pp. 11–12 | Parent purity, local normality, commutant, sibling and split-regulated interpretation. |
| §5.1–5.3, pp. 13–16 | One-sided generator, near-cut linearization, competing Minkowski boost and Schwarzian state diagnostic. |
| §6.1–6.2, pp. 16–19 | One-generation shift and the thermal-wedge modular flow, distinguished from the Rindler observer boost. |
| §7, p. 19 | Conclusions and possible diamond recursion; no additional proven construction. |
| Appendix A.1–A.3, pp. 19–21 | KMS strip/sign conventions, Tomita normalization and transport of modular objects. |
| Appendix B.1–B.2, p. 21 | Local conformal covariance/coherence and the independent BW/duality assumptions. |

Essential route: §2 → §4 with Appendices A–B → §5 → §6. Section 3 is the explicit free-field check of the abstract argument. The introduction and §7 provide context; the inactive TeX draft is not a second theorem.

## Coordinates, fields and representations

The background is two-dimensional Minkowski space with

$$
v=t+x,\qquad u=t-x,\qquad ds^2=-du\,dv,
\qquad g_{uv}=g_{vu}=-\frac12.
$$

The theory is a bosonic local positive-energy, diffeomorphism-covariant conformal net. For each bounded diamond $O$ with closure in a region $R$, there is a local algebra $\mathcal A(O)$; the parent quasilocal algebra is the norm closure of these algebras. Its state-dependent von Neumann closure is

$$
M_\omega(R)=\pi_\omega(\mathcal A(R))''.
$$

This distinction matters: the symbol $\mathcal A(W_n)$ does not imply that all $\omega_n$ are normal states on the same global vacuum wedge von Neumann algebra.

| Symbol | Meaning |
|---|---|
| $\chi_n:M_{\rm ref}\to W_n$ | Orientation- and time-orientation-preserving conformal chart of the whole parent. |
| $\Phi_n$ | Coherent quasilocal $*$-isomorphism induced by the chart. |
| $\omega_n=\omega_{\rm ref}\circ\Phi_n^{-1}$ | A newly transported parent vacuum. |
| $R_n=\{v_n>0,u_n<0\}$, $L_n=\{v_n<0,u_n>0\}$ | Right/left wedges in the reference plane. |
| $W_{n+1}=\chi_n(R_n)$, $D_n=\chi_n(L_n)$ | Child and its causal sibling inside $W_n$. |
| $g_k>0$ | Clock scale; the same parameter enters the subsequent framing. |
| $\Delta_{n\to n+1},J_n$ | Modular objects of the child in the parent-state GNS representation. |
| $L=-\log\Delta$ | Exact standard-form modular Liouvillean. |
| $K^R$ | One-sided stress-tensor generator of the same derivation, subject to domain/regulator qualifications. |
| $c_+,c_-$ | Chiral central charges in the stress normalization of Eq. (5.20). |

Appendix B assumes that the exponential charts can be implemented locally on compact intervals and that these implementations are coherent under inclusion. Exponentiation is not one global vacuum-preserving circle diffeomorphism. The extension to the norm-inductive-limit algebra is part of the hypothesis. The vacuum BW property is an additional input; wedge duality is needed for the geometric commutant, but not for KMS transport. Graded field nets would require twisted duality and are outside the stated bosonic formulation.

## Exponential recursion and the translated wedge geometry

At the root $W_0=M$, $\chi_0=\mathrm{id}$ and $\omega_0=\omega_M$. The elementary maps are

$$
E_k:\quad v_{k-1}=\frac{e^{g_kv_k}}{g_k},\qquad
u_{k-1}=-\frac{e^{-g_ku_k}}{g_k},\qquad
\chi_n=E_1\circ\cdots\circ E_n.
$$

For the first map,

$$
t=\frac{e^{g_1x_1}}{g_1}\sinh(g_1t_1),\qquad
x=\frac{e^{g_1x_1}}{g_1}\cosh(g_1t_1),\qquad
ds^2=e^{2g_1x_1}(-dt_1^2+dx_1^2).
$$

Thus $W_1=\{v>0,u<0\}$ and $\omega_1$ is the constructive Rindler/Fulling vacuum in the free-current example. The next reference right wedge is $v_1>0,u_1<0$, whose image is

$$
W_2=\{v>1/g_1,u<-1/g_1\},\qquad
D_1=\{0<v<1/g_1,-1/g_1<u<0\}.
$$

The sibling is the causal complement relative to the parent, not its set-theoretic remainder. Future/past regions are not included in the two spacelike wedges.

Define

$$
\Lambda_1^+(v)=\log(g_1v),\qquad
\Lambda_1^-(u)=\log(-g_1u),\qquad
\Lambda_{k+1}^{\pm}=\log\!\left(\frac{g_{k+1}}{g_k}\Lambda_k^{\pm}\right).
$$

At each step all earlier logarithm arguments must be positive. Then

$$
v_k=\frac{\Lambda_k^+}{g_k},\qquad
u_k=-\frac{\Lambda_k^-}{g_k},\qquad
\partial_v\Lambda_n^+=\frac1{v\prod_{j<n}\Lambda_j^+},\quad
\partial_u\Lambda_n^-=\frac1{u\prod_{j<n}\Lambda_j^-}.
$$

The derivative formula follows inductively from differentiating $\log[(g_{n+1}/g_n)\Lambda_n]$. No equal-scale assumption is needed. Let $F_k(y)=e^{g_ky}/g_k$ and

$$
\ell_0=0,\qquad\ell_n=(F_1\circ\cdots\circ F_n)(0).
$$

The zero of $\Lambda_n^+$ is $\ell_n$, and

$$
W_{n+1}=\{v>\ell_n,u<-\ell_n\},\qquad
D_n=\{\ell_{n-1}<v<\ell_n,-\ell_n<u<-\ell_{n-1}\}.
$$

Every child is geometrically a translated Minkowski wedge. The new feature is its state/flow pairing. Transporting the reference boost gives

$$
\zeta_{n+1}=g_{n+1}\left[
v\prod_{j=1}^{n}\Lambda_j^+\,\partial_v
-u\prod_{j=1}^{n}\Lambda_j^-\,\partial_u\right].
$$

For $n=1$, this is $g_2[v\log(g_1v)\partial_v-u\log(-g_1u)\partial_u]$. Acting on $y_n^\pm=\Lambda_n^\pm$ cancels every earlier logarithm:

$$
\zeta_{n+1}y_n^+=g_{n+1}y_n^+,\qquad
\zeta_{n+1}y_n^-=-g_{n+1}y_n^-.
$$

Consequently $y_n^\pm(s)=e^{\pm g_{n+1}s}y_n^\pm(0)$ gives the complete flow on the open child. The metric in final coordinates is

$$
ds^2=\exp\!\left(2\sum_{k=1}^{n}g_kx_k(t_n,x_n)\right)(-dt_n^2+dx_n^2).
$$

The separated-null-vector identity

$$
\mathcal L_{A(v)\partial_v+B(u)\partial_u}g
=(A'(v)+B'(u))g
$$

was checked with xAct/xCoba. For $\zeta_2$, the conformal factor is $g_2\log[-v/u]$, generally nonzero. The recursive flow is conformal, not a Minkowski isometry.

For fixed $W_n\supset W_{n+1}$, $g_{n+1}$ only rescales time. In contrast, it contributes to the location of the next child $W_{n+2}$. Changing the terminal $g_n$ at fixed earlier scales gives

$$
v_n'=\frac{g_n}{g_n'}v_n+\frac1{g_n'}\log\frac{g_n'}{g_n},\qquad
u_n'=\frac{g_n}{g_n'}u_n-\frac1{g_n'}\log\frac{g_n'}{g_n}.
$$

A reference dilation plus spatial translation leaves the conformal vacuum invariant, so this terminal-scale change leaves $\omega_n$ fixed while moving the following cut.

## The free-current calculation and its KMS strip

Use currents rather than the undifferentiated two-dimensional scalar: $\phi=\phi_+(v_1)+\phi_-(u_1)$, $j_{1,+}=\partial_{v_1}\phi_+$, $j_{1,-}=\partial_{u_1}\phi_-$. This removes the scalar zero-mode/IR ambiguity. Equivalently use neutral scalar test functions. In $\omega_R$,

$$
\omega_R(j_{1,+}(v_1)j_{1,+}(v_1'))=-\frac1{4\pi(v_1-v_1'-i0)^2},
$$

with the analogous $u_1$ expression and vanishing mixed covariance. Weight-one covariance under $f(v_2)=e^{g_2v_2}/g_2$ gives $j_{2,+}=f'j_{1,+}\circ f$. The identity

$$
\frac{f'(z)f'(z')}{[f(z)-f(z')]^2}
=\frac{g_2^2}{4\sinh^2[g_2(z-z')/2]}
$$

and its negative-exponential counterpart yield Eqs. (3.9)–(3.10):

$$
\omega_R(j_{2,\pm}(z)j_{2,\pm}(z'))
=-\frac{g_2^2}{16\pi}\operatorname{csch}^2\!\left[\frac{g_2}{2}(z-z'-i0)\right].
$$

For $O=\partial_{t_2}\phi=j_{2,+}+j_{2,-}$, put $\Delta x_2=x_2-x_2'$:

$$
C_{x_2,x_2'}(z)=-\frac{g_2^2}{16\pi}
\left\{\operatorname{csch}^2\frac{g_2(z+\Delta x_2)}2
+\operatorname{csch}^2\frac{g_2(z-\Delta x_2)}2\right\}.
$$

Its poles are $z=\mp\Delta x_2+im\beta_2$, $\beta_2=2\pi/g_2$, $m\in\mathbb Z$. There are no poles in $-\beta_2<\operatorname{Im}z<0$. At the upper boundary $z=t-i\epsilon$, $\epsilon\downarrow0$, one obtains $\omega_R(O(t,x_2)O(0,x_2'))$. At the lower boundary $z=t-i\beta_2+i\epsilon$, the shift $\sinh(w-i\pi)=-\sinh w$ restores the meromorphic function but gives the opposite $i0$ prescription, hence $\omega_R(O(0,x_2')O(t,x_2))$.

The ordering reversal, strip analyticity and stationarity are all required. Imaginary-time periodicity alone would not be a KMS proof. The $i\epsilon$ is a boundary-value prescription; a finite coordinate-independent $\epsilon$ is not transported literally through the exponential map.

For compactly supported current smearing, the quasifree CCR criterion extends this covariance to bounded Weyl observables:

$$
F_{f,h}(t)=\omega_R(\alpha_t^{(2)}(W(f))W(h)),\qquad
F_{f,h}(t-i\beta_2)=\omega_R(W(h)\alpha_t^{(2)}(W(f))).
$$

The application of that general criterion is Source-derived; the exponential identities, pole lattice and boundary-sign argument were reproduced here. A separate exact $3\times3$ Gibbs calculation with arbitrary operator entries verifies the same lower-strip convention; it does not substitute for the continuum CCR theorem.

The child coordinate time is not fixed-orbit proper time. At fixed $x_2$,

$$
x_1(t_2,x_2)=\frac{e^{g_2x_2}}{g_2}\cosh(g_2t_2),\qquad
\frac{d\tau}{dt_2}=N(t_2,x_2)=e^{g_1x_1+g_2x_2},
$$

and $\partial_{t_2}\log N=g_1e^{g_2x_2}\sinh(g_2t_2)$ is not identically zero. Thus there is no constant Tolman rescaling giving a stationary detector temperature along this fixed-$x_2$ trajectory. Detector response, switching functions and proper-time energy gaps require a separate calculation.

## Transporting BW: what is assumed and what the proof does

The reference boost has rapidity $g_{n+1}s$:

$$
B_s^{(n+1)}:(v_n,u_n)\mapsto(e^{g_{n+1}s}v_n,e^{-g_{n+1}s}u_n),\qquad
\alpha_s^{(n+1)}=\Phi_n B_s^{(n+1)}\Phi_n^{-1}.
$$

For reference analytic elements $A,B$, the transported correlation is exactly

$$
\omega_n\!\left(\alpha_z^{(n+1)}(\Phi_n(A))\Phi_n(B)\right)
=\omega_{\rm ref}(B_z^{(n+1)}(A)B).
$$

The reference BW strip therefore supplies the child strip with the same ordering and inverse temperature. Rapidity has inverse temperature $2\pi$; the coordinate time $s$ has $2\pi/g_{n+1}$. This proves Theorem 4.1 conditional on the stated net/transport/BW hypotheses. No new spectral diagonalization is hidden in this step.

The GNS map is explicit:

$$
V_n\pi_{\rm ref}(A)\Omega_{\rm ref}
=\pi_{\omega_n}(\Phi_n(A))\Omega_{\omega_n}.
$$

Its norm identity follows from
$\omega_n(\Phi_n(A)^*\Phi_n(B))=\omega_{\rm ref}(A^*B)$; surjectivity on a dense set gives a unitary. If $N$ is the reference wedge closure and $P=V_nNV_n^*$, then on the common Tomita core

$$
S_PV_nA\Omega_{\rm ref}=V_nA^*\Omega_{\rm ref}=V_nS_NA\Omega_{\rm ref}.
$$

Closing and taking the polar decomposition yields

$$
S_P=V_nS_NV_n^*,\qquad\Delta_P=V_n\Delta_NV_n^*,\qquad
J_P=V_nJ_NV_n^*.
$$

The proof transports modular objects between their appropriate Hilbert spaces. It does not apply $\Phi_n$ to an unbounded operator without a domain or assert a global unitary implementation in the original vacuum sector.

Appendix A uses $\sigma_\tau(A)=\Delta^{i\tau}A\Delta^{-i\tau}$ and future-directed physical Heisenberg evolution $\alpha_s(A)=e^{isH}Ae^{-isH}$. Their relation is

$$
\sigma_\tau=\alpha_{-2\pi\tau/g_{n+1}},\qquad
H_{\rm std}=\frac{g_{n+1}}{2\pi}(-\log\Delta).
$$

The minus sign is necessary. In a finite Gibbs model, $\rho^{i\tau}A\rho^{-i\tau}=\alpha_{-\beta\tau}(A)$, which was checked for an arbitrary matrix $A$. The paper’s upper strip for $\omega(\sigma_t(A)B)$ is consistent with the lower strip for physical $\alpha_s$; the same operator ordering is not assigned to the same time orientation.

## Pure parent, causal sibling and the split boundary

An irreducible reference vacuum representation gives a pure state of the reference quasilocal algebra. A $*$-isomorphism preserves purity, so $\omega_n$ is pure on $\mathcal A(W_n)$. Local normality follows on each compact diamond by extending the chart to a circle diffeomorphism with local implementer $U$:

$$
\omega_n(UAU^*)=\langle U\Omega_0,UAU^*U\Omega_0\rangle.
$$

Neither statement establishes global normality on the original vacuum wedge closure. The child is standard in the transported GNS representation.

Under reference wedge duality $N_R'=N_L$,

$$
M_{\omega_n}(D_n)=M_{\omega_n}(W_{n+1})',\qquad
J_nM_{\omega_n}(W_{n+1})J_n=M_{\omega_n}(D_n).
$$

Locality alone gives only inclusion. At the first nested step the reference wedge reflection $(v_1,u_1)\mapsto(-v_1,-u_1)$ transports to

$$
(v,u)\mapsto\left(\frac1{g_1^2v},\frac1{g_1^2u}\right).
$$

It is an involution and maps $v>1/g_1,u<-1/g_1$ into the finite sibling diamond. The full $J_n$ is antiunitary and can act on internal labels; the coordinate involution is only its geometric part.

For type-III algebras this is not $\mathcal H_R\otimes\mathcal H_L$ factorization. To introduce a Schmidt sum, first choose bounded diamond approximants and a nonzero collar $\delta>0$, assume the split property, and specify an intermediate type-I factor $N_{\delta,R}$. In that regulator-dependent representation one may write Schmidt weights $\lambda_\alpha(\delta,R)$ and define

$$
\lambda_\alpha=Z_{\delta,R}^{-1}e^{-\beta E_\alpha^{\rm ent}(\delta,R)}.
$$

This parametrization defines entanglement energies; it does not prove equality with physical child-time energies, preservation of the chosen factor under the geometric flow, or a finite limit as $\delta\to0$, $R\to\infty$. No such limits are taken here.

## One-sided generators and an explicit finite-cutoff charge

The reference formal charge is

$$
K^R_{\rm ref}=2\pi\int_0^\infty dv_n\,v_n T_{v_nv_n}^{\rm ref}
+2\pi\int_{-\infty}^0du_n\,(-u_n)T_{u_nu_n}^{\rm ref}.
$$

Its tensorial operator part has two stress Jacobians and one inverse measure Jacobian. Thus

$$
v_nT_{v_nv_n}^{\rm ref}dv_n
=v_n\frac{dv}{dv_n}T_{vv}dv
=v\prod_{j=1}^{n}\Lambda_j^+(v)\,T_{vv}dv.
$$

Write $w_n^+(v)=v\prod_{j\le n}\Lambda_j^+(v)$ and
$w_n^-(u)=(-u)\prod_{j\le n}\Lambda_j^-(u)$. With explicit symmetric coordinate cutoffs $R>\ell_n+\epsilon$, $\epsilon>0$, the formal expression becomes

$$
K^R_{n\to n+1}[\epsilon,R]
=2\pi\int_{\ell_n+\epsilon}^{R}dv\,w_n^+T_{vv}
+2\pi\int_{-R}^{-\ell_n-\epsilon}du\,w_n^-T_{uu}
+C_n[\epsilon,R].
$$

These coordinate cutoffs organize the charge calculation; they are not by themselves a split-factor or brick-wall prescription. The smooth continuum derivation is determined locally before endpoint limits. The Schwarzian part is a c-number and drops out of commutators, but its normalization cannot be discarded when a partition function is the intended observable.

For $n=1$, $c_+=c_-=c$, and the Minkowski-normal-ordered stress, the Fulling profile gives the independently checked finite integral

$$
\left\langle K^R_{1\to2}[\epsilon,R]-C_1[\epsilon,R]\right\rangle_{\omega_R}
=-\frac{c}{24}\left[\log^2(g_1R)-\log^2(1+g_1\epsilon)\right].
$$

To impose zero expectation of this one-sided charge requires the opposite $C_1$ in this convention. At fixed finite $R$ the lower-end limit $\epsilon\downarrow0$ exists for this state/cut; the subsequent $R\to\infty$ limit diverges as $\log^2(g_1R)$. This explicit example demonstrates why c-numbers harmless for modular derivations remain important for a thermal trace. It is not a computation of $Z_{\epsilon,R}$.

The full standard generator is $L=-\log\Delta$. A schematic split expression $L=K^R-K^L$ has a left term in the commutant, so its action on right observables agrees with $K^R$. In the continuum the stress integral is understood as a quadratic form/derivation, not automatically an operator affiliated with the right type-III algebra. The physical normalization is $(g_{n+1}/2\pi)L$, or $(g_{n+1}/2\pi)K^R$ for the corresponding one-sided derivation.

## Near-horizon agreement does not identify the global state

At $v=\ell_n$, $\Lambda_n^+=0$. The derivative formula immediately gives

$$
w_n^+(\ell_n)=0,\qquad
(w_n^+)'(\ell_n)=\left[v\prod_{j<n}\Lambda_j^+\right]_{\ell_n}
\left[(\Lambda_n^+)'\right]_{\ell_n}=1.
$$

Thus $w_n^+=v-\ell_n+O((v-\ell_n)^2)$, and the other chirality has the corresponding sign. This is an all-$n$ argument on the admissible branch, supported by exact finite-depth checks. It yields the source’s transverse linear coefficient $\kappa_{n+1}=g_{n+1}$.

The ordinary translated Minkowski boost

$$
\xi_{n+1}^{\rm iso}=g_{n+1}[(v-\ell_n)\partial_v-(u+\ell_n)\partial_u]
$$

has the same linearization but a different global profile. It is paired with $\omega_M|_{W_{n+1}}$; $\zeta_{n+1}$ is paired with $\omega_n|_{W_{n+1}}$. Equality of near-horizon slopes supplies neither global KMS equality nor equality of mode spectra.

## Schwarzian profiles retain the ancestry of the state

The convention is

$$
\langle T_{vv}\rangle_{\omega_n}=-\frac{c_+}{24\pi}\{v_n,v\},\qquad
\{f,v\}=\frac{f'''}{f'}-\frac32\left(\frac{f''}{f'}\right)^2.
$$

Since $\{\log z,z\}=1/(2z^2)$ and the Schwarzian obeys
$\{f\circ h,v\}=(h')^2\{f,h\}+\{h,v\}$, each logarithm adds a positive Schwarzian term. Therefore

$$
\langle T_{vv}\rangle_{\omega_n}
=-\frac{c_+}{48\pi}\sum_{j=1}^{n}
\frac1{[v\prod_{k<j}\Lambda_k^+(v)]^2},
$$

and the $u$ expression uses $(-u)\prod_{k<j}\Lambda_k^-(u)$ and $c_-$. At the first two levels,

$$
\langle T_{vv}\rangle_{\omega_1}=-\frac{c_+}{48\pi v^2},\qquad
\langle T_{vv}\rangle_{\omega_2}
=-\frac{c_+}{48\pi v^2}\left[1+\frac1{\log^2(g_1v)}\right].
$$

For $c_+=c_-=c$, $t=0$, the Fulling energy density is
$-c/(24\pi x^2)=-\pi c T_{\rm loc}^2/6$ with $T_{\rm loc}=1/(2\pi x)$. The new term is singular at the boundary of the parent $W_n$, namely $v=\ell_{n-1}$; older formal poles are outside its domain. One must not treat the full sum as a smooth state on all Minkowski space. The distinct profiles establish that this hierarchy is not passive relabelling of a single vacuum.

## Unwrapping a thermal parent and the second modular flow

Define the one-generation-shift state on the full reference plane by

$$
\tau_n=(\omega_{n-1}|_{\mathcal A(W_n)})\circ\Phi_n.
$$

Because $t_n$ translations become the level-$n$ boost under $E_n$, $\tau_n$ is KMS for reference translations at $\beta_n=2\pi/g_n$. This selects the geometric thermal sector obtained by the exponential map; it does not classify every thermal representation of the CFT.

For bounded $A_i\in\mathcal A(W_{n+1})$, let $A_i^{\rm ref}=\Phi_n^{-1}(A_i)$. Multiplicativity gives the exact identity

$$
\omega_{n-1}\!\left(\prod_i\alpha_{s_i}^{(n+1)}(A_i)\right)
=\tau_n\!\left(\prod_i B_{s_i}^{(n+1)}(A_i^{\rm ref})\right),
$$

with the product order unchanged. This is Theorem 6.2. It transports the entire state–algebra–observer-flow system; it is stronger than equality of a chosen occupation-number spectrum. Unbounded number operators still require mode selection, wave packets and domains.

The thermal state restricted to $R_n$ has a different modular flow. Map its region to the level-$(n-1)$ translated wedge, whose tip is $(1/g_n,-1/g_n)$. Pulling back the unit-slope boost gives

$$
\xi_{\beta_n}^{\rm th}
=\frac1{g_n}\left[(1-e^{-g_nv_n})\partial_{v_n}
+(1-e^{g_nu_n})\partial_{u_n}\right]
=\frac{\beta_n}{2\pi}\left[(1-e^{-2\pi v_n/\beta_n})\partial_{v_n}
+(1-e^{2\pi u_n/\beta_n})\partial_{u_n}\right].
$$

The two coefficients follow directly by dividing the ancestor boost coefficients by $E_n$’s Jacobian. Near the tip the vector is $v_n\partial_{v_n}-u_n\partial_{u_n}$; deep inside it tends to $(\beta_n/2\pi)\partial_{t_n}$. The Tomita parameter generates $-2\pi\xi_{\beta_n}^{\rm th}$. The ordinary observer boost remains $g_{n+1}(v_n\partial_{v_n}-u_n\partial_{u_n})$ everywhere and is not this thermal modular flow.

An independently checked free-current witness makes the distinction explicit. For the thermal chiral covariance $C(v,w)\propto\operatorname{csch}^2[g_n(v-w)/2]$, simultaneous ordinary dilation acts on the two weight-one fields as

$$
\frac{(v\partial_v+w\partial_w+2)C(v,w)}{C(v,w)}
=2-g_n(v-w)\coth\!\frac{g_n(v-w)}2.
$$

For $v>w>0$ this is not identically zero. Thus this thermal state is not even stationary under the ordinary boost; it cannot be KMS for that boost. This confirms the paper’s qualification rather than contradicting its immediate-parent theorem.

## Equation dependencies and use in the vault

| Object | Dependencies | Reusable content and boundary |
|---|---|---|
| Eqs. (2.21)–(2.33), recursive flow | Exponential charts, positive log branches | Explicit modular vector and horizon positions; only two-dimensional conformal transport. |
| Eqs. (3.9)–(3.23), current KMS | Neutral/current sector, distributional $i0$, quasifree CCR criterion | An explicit covariance and ordered analytic strip; not a detector temperature. |
| Theorem 4.1, Eq. (4.9) | Coherent $\Phi_n$ and reference BW | KMS invariance under isomorphism; no thermal trace required. |
| Eq. (4.18), sibling commutant | Standard form plus wedge duality | Exact algebraic partner; no unregulated tensor factorization. |
| Eq. (5.10), modular weights | Stress covariance and measure Jacobian | One-sided derivation, with c-number/regulator dependence retained. |
| Eqs. (5.20)–(5.25), stress profile | Chiral anomaly normalization, Schwarzian chain rule | Local state diagnostic; horizon singularity limits global normality. |
| Theorem 6.2 and Eq. (6.15) | Restrict ancestor state, unwrap with $\Phi_n$, translated BW boost | Distinguishes thermal-parent observer flow from thermal-wedge modular flow. |

For the existing AdS-Rindler work, the transferable lesson is the order of construction: specify region, algebra, state and time normalization before comparing a mode trace with a modular quantity. This paper does not establish conformal transport of a massive AdS scalar, nor does it identify a finite brick-wall trace with a cone partition function. Even in its own CFT setting, a split collar, finite box, chosen type-I factor and trace-class spectral problem are extra data. Keep these regulators separate from the distributional $i0$ used in the current calculation.

## Verification ledger and exact limitations

| Evidence | Reproduction | Scope |
|---|---|---|
| Checked | Mathematica: both chiral iterated-log derivative identities, Schwarzian sums and one-sided Jacobian weights at depths 1–4 with symbolic positive scales; all residuals zero. | Finite symbolic checks plus the displayed induction arguments; no machine proof of arbitrary conformal nets. |
| Checked | Both exponential current identities, meromorphic KMS period, exact Gibbs lower-strip and Tomita-sign identities for arbitrary $3\times3$ operator entries. | Distributional ordering was reconstructed explicitly; bounded continuum KMS still uses the quasifree/BW theorem inputs. |
| Checked | Horizon weight/slope $(0,1)$ at depths 1–4 for equal scales; arbitrary-scale slope follows analytically from $w_n\Lambda_n'=\Lambda_n$. | Fixed finite depth and admissible log branch. |
| Checked | xAct/xCoba: separated-null-vector conformal Killing residual is zero; no package-load errors or unevaluated residual. | Flat 2D metric with $g_{uv}=-1/2$. |
| Checked | Reflection involution, thermal-vector pullback, time-dependent lapse, finite-cutoff Schwarzian charge and failure of thermal-current boost stationarity. | Explicit coordinate/domain/cutoff assumptions as given above. |
| Source-derived | BW, essential wedge duality, coherent conformal-net implementation, local normality construction and the general quasifree CCR KMS criterion. | Used as theorem/hypothesis inputs, with their transport proof reconstructed rather than claimed as new independent theorems. |
| Not independently verified | Global representation classification, split property for every proposed net, unbounded-generator domains and a physical regulator preserving the complete geometric flow. | The paper does not supply a universal spectral construction for these. |

**Verified:** the explicit coordinate, covariance, sign, Schwarzian, conformal-Killing and finite-cutoff identities above; the state/flow isomorphism proof has been reconstructed with its hypotheses.

**Assumptions:** bosonic local diffeomorphism-covariant 2D CFT, positive energy, coherent chart implementation, standard reference wedge and BW; wedge duality for the sibling equality; irreducibility for parent purity; $g_k>0$ and real admissible logarithms; current/neutral scalar sector; explicit finite $\epsilon,R,\delta$ wherever a cutoff or split construction is invoked.

**Not verified:** a general physical detector response, a trace-class wedge Hamiltonian, a regulator-independent entropy or partition function, equality of split entanglement and physical energies, an AdS/massive/higher-dimensional extension, or brick-wall/cone matching.

**Failed / Blocked:** no irreparable source contradiction or source-access/computation blocker found. The first tool wrapper had a JavaScript quoting error before execution; the corrected Wolfram inputs produced the reported results. PDF text extraction emitted a font-type warning; the selected rendered pages and original TeX agree on the formulas used.

The complete PDF/TeX and Appendices A–B were inspected. PDF pages 5, 7, 8, 12, 14, 15, 17 and 18 were rendered and visually checked. All temporary sources, images and computation logs remain outside the vault. This note completes the first paper before the next queue item begins.
