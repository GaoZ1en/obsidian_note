# Switched scalar radial equations: a quantitative Volterra theorem and a hidden-trace counterexample

## 1. Results

There are two distinct positive results and one obstruction.

1. A distribution-valued, finite-radius Volterra estimate controls the **combined** coefficient without estimating its separated Gram-singular radial pieces. For a complex-frequency middle response, the required data are the complete boundary trace and one additional weighted middle trace. Convergence of the complete trace alone does not exclude a switching defect.
2. For a literal compact spacetime switch, retaining its transferred momentum makes the boundary subtraction exact. The boundary-subtracted coefficient has an all-null, local momentum-distribution adiabatic limit with arbitrarily high inverse-switch-scale rates. No physical boundary trace is supplied or assumed by this result.
3. There is a concrete logfree counterexample: cancellation of divergent middle and outer boundary traces can leave a nonzero radial defect and a zero complete boundary trace. In actual time-dependent fields the same mechanism produces a secular time term. This is a counterexample to a radial inference, not evidence that the prescribed physical retarded source realizes those artificial traces.

The conventions and source normalization are those of [the Wightman calculation](</Users/koishi/Documents/Note/Articles/extrapolate dictionary/half_bps_stress_wightman.md>) and [the regulator report](</Users/koishi/Documents/Note/Articles/extrapolate dictionary/half_bps_stress_regulators.md>). No existing project file was changed.

## 2. Exact switch equation and derivative vertex

Use signature $\eta=(-,+,+,+)$, covariant momenta $q_i=(-q^0,\mathbf q)$, and plane waves $e^{iq_i x^i}=e^{-iq^0t+i\mathbf q\cdot\mathbf x}$. Put

$$
\mathcal L=\partial_z^2+z^{-1}\partial_z+\Box_x,
\qquad D_s=\partial_z^2+z^{-1}\partial_z+s,
\qquad h_s(z)=\sum_{n\ge0}\frac{(-sz^2/4)^n}{(n!)^2}.
$$

The last definition is entire in $s$ and avoids square-root branch choices. The normal logfree branch has finite boundary trace and vanishing $z\partial_z$ flux.

For a switched cubic coupling, the first scalar correction obeys

$$
\mathcal L U_1^\chi=\partial_i(\chi\gamma_0^{ij}\partial_jU_0).
\tag{1}
$$

If $\partial_i\gamma_0^{ij}=0$ and $\chi=e^{\epsilon t}$, then

$$
\mathcal L U_1^\chi
=\chi\bigl(\gamma_0^{ij}\partial_i\partial_jU_0
+\epsilon\gamma_0^{0j}\partial_jU_0\bigr).
\tag{2}
$$

For the middle contraction, the free metric has momentum $-p$ and the free scalar has momentum $q$. The output is $r=q-p$. Write the contracted profiles as $\Gamma_z^{ij}(p,q)$, including free spectral densities and scalar radial mode. Then

$$
F_z=-\Gamma_z^{ij}q_iq_j,
\qquad V_z=i\Gamma_z^{0j}q_j.
\tag{3}
$$

Thus the derivative switch vertex is **linear** in $\epsilon$; it is not obtained by shifting both factors of $q$ in $F$.

For

$$
U_1^\chi(z,x)=e^{\epsilon t}e^{ir_i x^i}A_\epsilon(z;p,q),
\quad s=s(r),\quad
s_\epsilon=(r^0+i\epsilon)^2-|\mathbf r|^2,
\quad \delta s=s_\epsilon-s=2i\epsilon r^0-\epsilon^2,
$$

the exact stationary-amplitude equation is

$$
\boxed{D_{s_\epsilon}A_\epsilon=F+\epsilon V,
\qquad D_s A_\epsilon-F=\epsilon V-\delta s\,A_\epsilon.}
\tag{4}
$$

The first equation is equally the radial identity for the retarded complex-frequency resolvent. The actual field obeys (2), not the second equation of (4): differentiating the output factor $e^{\epsilon t}$ supplies precisely $\delta s$. A denominator-only Abel family and a fully switched field must therefore be distinguished.

For the unamputated stress coefficient, $\Gamma$ contains

$$
\alpha z^4 f_2(az)J_0(bz)\frac{\pi^6}{80}a^4\Pi(p),
\qquad f_2(v)=8J_2(v)/v^2.
$$

The tensor $a^4\Pi(p)$ is polynomial in $p$; $f_2$ and $J_0$ are entire in the squared masses. Consequently on compact joint momentum sets, including the null boundaries,

$$
\|F_z\|+\|V_z\|\le C_K z^4,
\qquad 0\le z\le Z.
\tag{5}
$$

The cone indicators are fixed locally bounded densities. No lower mass bound is needed for (5).

## 3. A distribution-valued Volterra estimate

### 3.1 Functional setting

Localize momentum distributions with a fixed smooth compact cutoff. On a bounded open neighborhood $\Omega$ of their support, use a finite-order distribution norm dual to the $C^m$ norm of compactly supported tests. Denote this norm by $\|\cdot\|_E$. Smooth momentum multipliers act boundedly; choose $L\ge0$ such that multiplication by $s$, and by all $s_\epsilon$ under consideration, has operator norm at most $L$.

This is a local theorem in $\mathcal D'$; it does not assert that spacelike Bessel multipliers act on arbitrary global tempered distributions. Distributional convergence of compactly supported data can be converted to convergence in such a norm after increasing the test differentiability order: uniform finite order follows from uniform boundedness, and one additional derivative supplies the compact test-class embedding.

Define

$$
(Kf)(z)=\int_0^z u\log(z/u)f(u)\,du,
\qquad
V_s f=\sum_{n=0}^\infty(-s)^n K^{n+1}f.
\tag{6}
$$

Integrals are Bochner integrals in $E$; the same estimates extend to radial vector measures by their total variation. The sufficient source norm is

$$
\|f\|_{\mathcal Y_Z}
=\int_0^Z u\log(Z/u)\|f(u)\|_E\,du<\infty.
\tag{7}
$$

At $u=Z$ the weight vanishes; the statement concerns the field on $[0,Z]$, not a derivative trace at the upper endpoint. Interior derivative estimates follow by first choosing a larger upper radius. Near $u=0$, (7) is the important logarithmic moment.

### 3.2 Estimate and proof

The kernel of $K^{n+1}$ obeys

$$
0\le K^{n+1}(z,u)
\le u\log(z/u)\frac{(z^2/4)^n}{(n!)^2}.
\tag{8}
$$

Indeed, for the induction step bound $\log(v/u)\le\log(z/u)$ and use

$$
\int_0^z v^{2n+1}\log(z/v)\,dv
=\frac{z^{2n+2}}{(2n+2)^2}.
$$

It follows that the series converges and

$$
\boxed{
\|V_s f(z)\|_E
\le I_0(z\sqrt L)
\int_0^z u\log(z/u)\|f(u)\|_E\,du.}
\tag{9}
$$

For $\|f(u)\|_E\le M u^\beta$, $\beta>-2$, the useful explicit consequence is

$$
\boxed{\|V_s f(z)\|_E
\le \frac{M z^{\beta+2}}{(\beta+2)^2}I_0(z\sqrt L).}
\tag{10}
$$

Also $\|h_s(z)A\|_E\le I_0(z\sqrt L)\|A\|_E$. The series can be differentiated on positive-radius compact intervals and gives

$$
D_sV_sf=f,\qquad (V_sf)(0)=0,
\qquad \lim_{z\downarrow0}z\partial_zV_sf=0.
$$

For the flux assertion use a slightly smaller radius than $Z$: $z\partial_zKf=\int_0^z uf(u)du$, and (7) controls this integral near zero. Uniqueness among logfree solutions with specified finite trace follows either from the integral equation $U=A+Kf-sKU$ or from the normal/logarithmic fundamental pair. The estimate, unlike uniqueness alone, controls perturbations and limit interchange.

Two useful exact comparison identities are

$$
V_{s'}-V_s=-V_s(s'-s)V_{s'},
\qquad h_{s'}-h_s=-V_s[(s'-s)h_{s'}].
\tag{11}
$$

Thus on $[0,Z]$ the solution map is locally Lipschitz in the multiplier $s$, in the boundary trace, and in the norm (7). In particular, bounded traces, source convergence in (7), and $s_\epsilon\to s$ in multiplier norm force uniform finite-radius convergence and make the single-response defect in (4) vanish in $\mathcal D'$.

### 3.3 Sharp source condition

For nonnegative scalar sources at $s=0$, the logarithmic moment (7) is exactly the condition that the zero-boundary solution be finite at $Z$. In the power-law class the threshold $\beta>-2$ is therefore sharp. Source convergence only in $\mathcal D'((0,Z))$ is insufficient, even with zero boundary traces.

For example choose $\varphi\in C_c^\infty((1,2))$, $\varphi\ge0$, $\int v\varphi(v)dv=1$, and

$$
f_\epsilon(u)=\frac{\varphi(u/\epsilon)}{\epsilon^2\log(1/\epsilon)}.
$$

Then $f_\epsilon\to0$ on every positive-radius compact set, but, for $z>2\epsilon$,

$$
(Kf_\epsilon)(z)
=1+\frac{\log z-\int v\varphi(v)\log v\,dv}{\log(1/\epsilon)}
\longrightarrow1.
\tag{12}
$$

Every individual solution has zero boundary trace. Lack of uniform integrability in the logarithmic source moment produces a boundary layer. The physical free stress–scalar source (5) does not have this pathology.

## 4. The complete Abel coefficient needs one more trace

At one finite middle scalar radius, let the stationary sum be

$$
W_\epsilon(z)=A_\epsilon(z)+h_s(z)O_\epsilon,
\quad a_\epsilon=A_\epsilon(0),
\quad B_\epsilon=a_\epsilon+O_\epsilon,
\quad C_\epsilon=\delta s\,a_\epsilon.
$$

Here $O_\epsilon$ combines all outer-insertion boundary amplitudes. Their middle field is free, hence their radial multiplier is $h_s$, not $h_{s_\epsilon}$. No independent value of the complete physical boundary trace $B_\epsilon$ has been assumed.

The exact combined identities are

$$
\boxed{\begin{aligned}
W_\epsilon
&=h_s B_\epsilon+V_{s_\epsilon}(F+\epsilon V)
-V_s(h_{s_\epsilon}C_\epsilon),\\
D_sW_\epsilon-F
&=\epsilon V-h_{s_\epsilon}C_\epsilon
-\delta s\,V_{s_\epsilon}(F+\epsilon V).
\end{aligned}}
\tag{13}
$$

In particular, the defect involves the middle response, not the total $W_\epsilon$. From (9)–(11), for sources bounded as in (5),

$$
\boxed{\begin{aligned}
\sup_{z\le Z}\|W_\epsilon(z)-h_s(z)B-V_sF(z)\|_E
&\le C_{K,Z,m}\bigl(\|B_\epsilon-B\|_E+\|C_\epsilon\|_E+\epsilon\bigr),\\
\sup_{z\le Z}\|D_sW_\epsilon(z)-F(z)\|_E
&\le C_{K,Z,m}\bigl(\|C_\epsilon\|_E+\epsilon\bigr).
\end{aligned}}
\tag{14}
$$

The constants in (14) include fixed compact-source bounds. Hence **complete trace convergence plus $\delta s\,a_\epsilon\to0$** suffices for finite-radius convergence and defect removal. A stronger easily stated sufficient condition is boundedness of the middle trace in a fixed distribution norm. Formula (13) isolates the genuinely missing input instead of silently setting the physical boundary trace to a desired CFT answer.

If instead $C_\epsilon\to C\ne0$, the limiting extra term is

$$
-V_s(h_sC)=\partial_s h_s\,C,
\qquad D_s(\partial_s h_s\,C)=-h_sC.
\tag{15}
$$

This anomalous term is itself logfree and has zero finite boundary trace.

### Counterexample, including all-null support

Take any nonzero compactly supported momentum distribution $C$, with support in $p,q\in\overline V_+$ and $r^0$ bounded away from zero. Set

$$
a_\epsilon=\frac C{\delta s},\qquad
O_\epsilon=-a_\epsilon,\qquad F=V=0.
$$

Then $A_\epsilon=h_{s_\epsilon}a_\epsilon$ solves the homogeneous shifted radial equation, while $B_\epsilon=0$ exactly. Nevertheless,

$$
W_\epsilon=\frac{h_{s_\epsilon}-h_s}{\delta s}C
\longrightarrow \partial_s h_s\,C\ne0.
\tag{16}
$$

One can choose $C$ supported on $p=\ell$, $q=\zeta\ell$ with $\ell$ future null, $\zeta>0$, and $\zeta\ne1$. Then $s=0$ on its support. For a measure-valued $C$ (no normal derivatives of delta functions), (16) becomes

$$
W_\epsilon\longrightarrow-\frac{z^2}{4}C,
\qquad D_0W=-C.
\tag{17}
$$

A tensor measure weighted by $\ell_i\ell_j$ is transverse and traceless there. The example shows that spectral support, algebraic TT conditions, normal logfree behavior, and the complete boundary trace do not by themselves remove the defect. It does not satisfy the additional claim that a fixed zero source produces a nonzero retarded response; that claim was never imposed, and the physical retarded prescription must determine $a_\epsilon$ separately.

For actual output factors at different insertions, the same example has the limit

$$
e^{\epsilon t_2}h_{s_\epsilon}\frac C{\delta s}
-e^{\epsilon t_1}h_s\frac C{\delta s}
\longrightarrow
\partial_s h_s C+\frac{t_2-t_1}{2ir^0}h_sC.
\tag{18}
$$

The common Fourier phase is understood. Acting on it with the middle spacetime operator, the secular term supplies $+h_sC$ and cancels (15). Thus a finite stationary-amplitude limit need not be the stationary limit of the actual switched field. Globally, $\epsilon a_\epsilon\to0$ is stronger than $\delta s\,a_\epsilon\to0$ near $r^0=0$ and also excludes this first-order output-factor mechanism.

## 5. A literal compact switch gives a stronger boundary-subtracted result

This section independently checks a route proposed by the parent researcher after the preceding Abel analysis. It keeps the switch momentum rather than dividing away an output exponential.

Let $\chi\in C_c^\infty(\mathbb R^4)$ equal one near zero, $\chi_R(X)=\chi(X/R)$, and let the switch be independent of the radial coordinate. Use

$$
\xi=x_1-x_2,\quad \upsilon=x_3-x_2,\quad X=x_2,
\qquad
\exp\{ip_i\xi^i-iq_i\upsilon^i+i\Omega_iX^i\}.
$$

At fixed $x_1,x_3$, the middle derivative is

$$
\partial_{x_2}= -\partial_\xi-\partial_\upsilon+\partial_X,
\qquad r=\Omega+q-p.
\tag{19}
$$

With $d\nu(\Omega)=d^4\Omega/(2\pi)^4$, choose $\chi(X)=\int d\nu(\Omega)e^{i\Omega_iX^i}\widehat\chi(\Omega)$. The exact middle source is

$$
\boxed{
F_{\chi_R,ij}(u;p,q,\Omega)
=-\frac{\alpha\pi^6}{80}\widehat\chi_R(\Omega)
\mathbf1_{\overline V_+}(p)\mathbf1_{\overline V_+}(q)
\,u^4 f_2(au)J_0(bu)
\,a^4\Pi_{ij,kl}(p)q^k(q+\Omega)^l.}
\tag{20}
$$

The mixed $q,\Omega$ term is exactly the derivative-switch vertex: transversality removes $p$ from $r=\Omega+q-p$, but it does not remove $\Omega$. The coefficient $\pi^6/80$ is $\rho_{\widehat T}\rho_O/a^4$.

Explicitly, for $x=-p^2$, $v=q$, $w=q+\Omega$, with symmetrization of weight $1/2$, the mixed numerator is the polynomial

$$
\begin{aligned}
N_{ij}(p;v,w)
={}&x^2v_{(i}w_{j)}
+x\big[(p\cdot v)p_{(i}w_{j)}+(p\cdot w)p_{(i}v_{j)}\big]\\
&+\frac{2(p\cdot v)(p\cdot w)-x(v\cdot w)}3p_ip_j
-\frac{x^2(v\cdot w)+x(p\cdot v)(p\cdot w)}3\eta_{ij}.
\end{aligned}
$$

It equals $x^2\Pi_{ij,kl}v^kw^l$ for $x>0$, and extends polynomially to $x=0$. Its divergence and trace vanish identically with $p^2=-x$. This makes the all-null regularity of the source manifest before taking the switching limit.

First impose a smooth compact radial vertex cutoff. At this stage, assume the usual tree retarded distributions and their normal logfree boundary traces exist. Every outer insertion is homogeneous in the middle scalar variable. Therefore

$$
\boxed{
W_{\chi_R}(z)-h_{s(r)}(z)W_{\chi_R}(0)
=V_{s(r)}F_{\chi_R}(z).}
\tag{21}
$$

This identity is insensitive to the radial cutoff once that cutoff equals one on $[0,z]$. It consequently defines a cutoff-independent boundary-subtracted coefficient even when the un-subtracted horizon limit or physical boundary trace has not yet been established. It respects radial mollification before the thin-layer limit; it does not introduce a radial wall action.

Crucially, the finite-switch subtraction uses $h_{s(\Omega+q-p)}$, not $h_{s(q-p)}$. Subtracting the latter would leave a boundary-trace-dependent error which cannot be discarded before estimating the trace.

### Quantitative local adiabatic theorem

For every compact momentum test support $K\subset\mathbb R^{12}$, finite $Z$, and integer $N\ge1$, there is $C_{K,N,Z}$ such that

$$
\boxed{\begin{aligned}
&\left|\left\langle
V_{s(\Omega+q-p)}F_{\chi_R}(z)
-(2\pi)^4\delta^4(\Omega)V_{s(q-p)}F(z),\Phi
\right\rangle\right|\\
&\hspace{1cm}\le
C_{K,N,Z}|\alpha|\,z^6 R^{-N}
\max_{|\beta|\le N}\|\partial_\Omega^\beta\Phi\|_\infty,
\qquad 0\le z\le Z,\quad R\ge1.
\end{aligned}}
\tag{22}
$$

The pairing uses $d\nu(p)d\nu(q)d\nu(\Omega)$. Constants absorb these fixed measure factors. The stationary source $F$ is (20) with $\Omega=0$ and with $\widehat\chi_R$ omitted. A free right-scalar factor at fixed radius can be included without changing the argument.

**Proof.** Write $\widehat\chi_R(\Omega)=R^4\widehat\chi(R\Omega)$. All its nonzero moments vanish, since every nonzero derivative of $\chi$ vanishes at the origin. After integrating the compactly supported $p,q$ variables, the remaining test amplitude is a smooth compactly supported function $g_z(\Omega)$. The entire-in-$s$ Volterra kernel and its finitely many $\Omega$ derivatives are bounded on the relevant compact set by

$$
C_{K,N,Z}\,u\log(z/u).
$$

The polynomial unamputated numerator and (20) consequently give

$$
\|\partial_\Omega^{\le N}g_z\|_\infty
\le C_{K,N,Z}|\alpha|\,z^6
\|\partial_\Omega^{\le N}\Phi\|_\infty,
\qquad \int_0^z u^5\log(z/u)du=z^6/36.
$$

Taylor-expand $g_z(\omega/R)$ to order $N-1$. The constant moment gives $g_z(0)$ and all other polynomial terms vanish. The remainder is bounded by $R^{-N}\|\partial^{\le N}g_z\|_\infty$ times a finite absolute $N$th moment of the Schwartz function $\widehat\chi$. This proves (22). The cone indicators do not depend on $\Omega$, so their null boundaries require no differentiation and cause no loss of this estimate.

This is an all-null local $\mathcal D'$ statement with a superalgebraic rate for each fixed compact test class. It is not a global $\mathcal S'$ multiplier statement.

There is also a direct weak-defect estimate. Write $\mathcal B_R=V_{s(r)}F_{\chi_R}$, $s_0=s(q-p)$, and split $F_{\chi_R}=\widehat\chi_R(F+F_{\rm vertex}(\Omega))$, where $F_{\rm vertex}$ is linear in $\Omega$. Then exactly

$$
D_{s_0}\mathcal B_R-\widehat\chi_R F
=\widehat\chi_R F_{\rm vertex}(\Omega)
-[s(q-p+\Omega)-s(q-p)]\mathcal B_R.
$$

Both right-hand terms have zero delta-limit because their smooth multipliers vanish at $\Omega=0$. The same Taylor proof bounds them by $C_{K,N,Z}|\alpha|(z^4+z^6)R^{-N}$ on compact tests. Thus the weak radial defect vanishes quantitatively, rather than only by an appeal to uniqueness.

Most importantly, (22) establishes only the boundary-subtracted physical construction: convergence and identification of $W_{\chi_R}(0)$ remain independent questions. The last defect estimate cannot automatically be extended to the un-subtracted homogeneous term without control of that trace.

## 6. Verification and unresolved input

**Analytically verified:** the derivative-switch vertex, exact conjugation and radial defect, the factorial Volterra bound, its source threshold and boundary-layer counterexample, the combined-trace identity, the hidden-trace counterexample, and the compact-switch momentum bookkeeping and rate estimate.

**CAS verified:** $s_\epsilon-s=2i\epsilon r^0-\epsilon^2$; the time-conjugation identity; the $D_sh_s=0$ series and differentiated identity $D_s\partial_sh_s=-h_s$ through order $z^{10}$; $\partial_sh_s|_{s=0}=-z^2/4$; and the power-source inverse. All checked residuals vanished and no Wolfram messages occurred. The finite series check is a check, not the proof of the analytic series identities. Actual output: [kernel report](</Users/koishi/.dsh/research-results/session-4283a6c1ea95/b109ac95c2ac-research-result.json>). The mixed TT polynomial and radial $z^6/36$ moment were also checked exactly: [polynomial report](</Users/koishi/.dsh/research-results/session-4283a6c1ea95/26104cdd3740-research-result.json>). Its first trace simplification used an insufficient replacement rule for higher powers; the trace and divergence both reduce to zero with the explicit mass-shell assumption: [completed trace check](</Users/koishi/.dsh/research-results/session-4283a6c1ea95/7c78cf239738-research-result.json>).

**Independent review:** this note is the independent delegated analysis supplied to the parent researcher. No further fresh subagent was available at this delegation depth. Section 5 independently verifies the parent's proposed full-switch argument; it is not presented as an independent invention of that route.

**Not established:** the complete physical switched boundary trace; its adiabatic limit and identification with the desired ordered CFT boundary coefficient; the global horizon limit of each un-subtracted diagram; arbitrary-switch equivalence; or an all-null Abel-to-invariant-finite-part theorem. The compact-switch theorem advances the radial part without assuming any of these missing statements.
