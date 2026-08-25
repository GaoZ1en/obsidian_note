# Scheme-dependence audit of the AdS$_3$ gravity $+13$ central-charge shift

> [!archive]
> Long-form source and counterterm audit. Its active synthesis is [[Articles/Quantization in AdS/linearized gravity/one-loop central charge normalization and scheme dependence|one-loop central charge normalization and scheme dependence]].

## 1. Binary verdict

**B. The residual statement “pure AdS$_3$ Einstein gravity predicts a scheme-independent**

$$
c_{\rm phys}=\frac{3\ell}{2G}+13
$$

**with the displayed $G$ already a separately fixed physical Newton constant” is not established.**

What is established is sharper and more limited:

1. The non-zero-image graviton/ghost determinant is the scheme-independent nonlocal factor

   $$
   Z_{\rm desc}(q,\bar q)=\prod_{n=2}^{\infty}\frac{1}{|1-q^n|^2}.
   $$

2. In the analytic-continuation/zeta prescription used by Giombi--Maloney--Yin (GYM) for the identity-image heat kernel and by Cotler--Jensen (CJ) for the boundary-orbit determinant, the local vacuum factor is conventionally written as a shift

   $$
   \Delta c=13.
   $$

3. The same local factor can be moved into the coefficient of the full renormalized Einstein--Hilbert plus Gibbons--Hawking plus AdS boundary action. With the physical AdS radius held fixed,

   $$
   \frac1{G_R'}=\frac1{G_R}+\frac{2\sigma}{3\ell},
   \qquad
   \Delta c'=\Delta c-\sigma,
   $$

   leaves

   $$
   \boxed{c_{\rm phys}=\frac{3\ell}{2G_R}+\Delta c
   =\frac{3\ell}{2G_R'}+\Delta c'}
   $$

   invariant. Taking $\sigma=13$ absorbs the entire quoted shift:

   $$
   \boxed{
   \frac1{G_R'}=\frac1{G_R}+\frac{26}{3\ell},
   \qquad \Delta c'=0.}
   $$

The finite redefinition must be understood as a change of renormalized parameter and compensating local counterterm at fixed bare theory. Adding the same Einstein term while refusing to redefine the coupling would instead change the theory. The physical Virasoro central charge is not arbitrary.

**Strongest justified statement.** The CJ value $c=C+13$ is an exact result for their specified Alekseev--Shatashvili/coadjoint-orbit quantum theory with coefficient $C$ and zeta/symplectic-measure prescription. The identification of that bare orbit coefficient with $3\ell/(2G_{\rm phys})$ is not independently fixed in pure gravity. Therefore the invariant gravity statement is the renormalized $c_{\rm phys}$ and the descendant determinant, not a universal additive $13$ relative to an already physical $G$.

This verdict agrees with, but does not assume, the recent internal CPS result: the reduced theory selects a natural zero-shift reference representative and leaves one Virasoro-compatible finite quantum-moment-map parameter.

## 2. Executive separation of the three objects

| Object | Formula | Audit result |
|---|---|---|
| Nonlocal descendant determinant | $\prod_{n\geq2}|1-q^n|^{-2}$ | Fixed by the non-zero images/thermal quotient; unaffected by local finite counterterms. |
| Local UV-sensitive effective action | $a_{\rm loc}\,\operatorname{vol}_{\rm ren}(X)$ on locally AdS$_3$ | Its finite part depends on the proper-time/subtraction prescription and can be shifted by the finite Einstein counterterm with its boundary completion. |
| Renormalized Brown--Henneaux charge algebra | $[L_m,L_n]=(m-n)L_{m+n}+\frac{c_{\rm phys}}{12}m(m^2-1)\delta_{m+n,0}$ | $c_{\rm phys}$ is invariant after a renormalization condition is imposed; the split $3\ell/(2G_R)+\Delta c$ is not invariant without an independent definition of $G_R$. |

The boundary Weyl-anomaly coefficient and the asymptotic Virasoro central extension agree once the renormalized theory is fixed. A two-dimensional intrinsic counterterm cannot arbitrarily change that anomaly coefficient. The ambiguity found here is instead the split between a local bulk gravitational coupling and the loop remainder while the total anomaly/central charge is held fixed.

## 3. GYM: identity image versus nontrivial images

### 3.1 Source-derived determinant

GYM define the one-loop saddle in their Eqs. (1.4)--(1.8) and state in the footnote to Eq. (1.7) that Virasoro symmetry permits no modification except a renormalization of the coupling $k$. Their thermal quotient is $X=\mathbb H^3/\mathbb Z$ with $q=e^{2\pi i\tau}$.

The method-of-images trace is

$$
K_X(t;x,x')=\sum_{n\in\mathbb Z}K_{\mathbb H^3}(t;x,\gamma^n x').
$$

GYM Eq. (4.5) separates it into

$$
\operatorname{Tr}K_X
=\underbrace{\operatorname{vol}(X)K_{\mathbb H^3}(t;x,x)}_{n=0\text{ identity image}}
+\underbrace{\sum_{n\neq0}\int_X K_{\mathbb H^3}(t;x,\gamma^n x)}_{\text{nontrivial images}}.
$$

They say immediately after Eq. (4.5) that the first term is divergent, proportional to the volume, describes the one-loop renormalization of the cosmological constant, and can be canceled by a local counterterm. In the graviton calculation they again say below Eq. (4.22) that they omit the term proportional to $\operatorname{vol}(\mathbb H^3/\mathbb Z)$ “as before.”

The remaining graviton, vector-ghost, and scalar-Weyl-mode combination gives GYM Eqs. (4.27)--(4.29):

$$
\log Z^{1\text{-loop}}_{\rm grav}
=-\sum_{m=2}^{\infty}\log|1-q^m|^2,
$$

$$
\boxed{
Z_{\rm GYM}=|q|^{-2k}\prod_{m=2}^{\infty}\frac1{|1-q^m|^2}.}
$$

Thus the famous product is entirely the non-zero-image answer. It does not determine how the identity-image local term is split between a coupling counterterm and a finite loop remainder.

### 3.2 The local $\mathbb H^3$ graviton term

Including the traceless tensor, complex vector ghost, and trace mode, GYM Eq. (3.8) is

$$
S^{(1)}_{\rm id}
=\frac12\operatorname{vol}(\mathbb H^3)
\int_0^\infty\frac{dt}{t}\frac{1}{(4\pi t)^{3/2}}
\left[2e^{-t}(1+8t)-2e^{-4t}(1+2t)\right].
$$

Analytically continuing the Gamma functions gives

$$
\begin{aligned}
\frac{S^{(1)}_{\rm id}}{\operatorname{vol}(\mathbb H^3)}
&=\frac{1}{(4\pi)^{3/2}}
\left[\Gamma\!\left(-\frac32\right)(1-8)
+\Gamma\!\left(-\frac12\right)(8-4)\right]\\
&=\frac{1}{(4\pi)^{3/2}}
\left[-\frac{28\sqrt\pi}{3}-8\sqrt\pi\right]\\
&=\boxed{-\frac{13}{6\pi}}.
\end{aligned}
$$

This is an exact verification of the number and sign in GYM Eq. (3.8). It is a local constant-density term on an Einstein background.

### 3.3 No logarithmic running is shown here

The displayed proper-time integral has power UV divergences. Its analytic continuation produces a finite number without a renormalization scale $\mu$. In odd bulk dimension there is no closed-manifold bulk logarithmic heat-kernel coefficient at this order. Boundary holographic logarithms encode the two-dimensional Weyl anomaly, but the $-13\operatorname{vol}/(6\pi)$ identity-image term by itself is not evidence for a beta function. The relevant freedom is finite local renormalization, not logarithmic running of $G$ inferred from this calculation.

## 4. Cotler--Jensen extraction of $+13$

### 4.1 Heat-kernel reinterpretation

CJ call $C$ the **bare central charge** directly below their Eq. (1.4). In their metric/CS normalization, at $\ell=1$,

$$
C=6k=\frac{3}{2G}.
$$

Their introduction instead uses a CS level smaller by a factor of four, so it writes $C=24k$; CJ flag this convention change in the footnote to Eq. (3.16). No physical discrepancy is involved.

In Sec. 5.2 they restore $\ell=L$ and write

$$
S^{(0)}=\frac{\ell}{4\pi G}\operatorname{vol}(X),
\qquad
S^{(1)}=-\frac{13}{6\pi}\operatorname{vol}(X).
$$

Since $-\log Z=S^{(0)}-S^{(1)}$, the local factor is

$$
Z_{\rm loc}
=\exp\left[-\frac1{6\pi}
\left(\frac{3\ell}{2G}+13\right)\operatorname{vol}_{\rm ren}(X)\right].
$$

For thermal AdS$_3$, CJ Eq. (5.33) uses

$$
\operatorname{vol}_{\rm ren}(\mathbb H^3/\mathbb Z)
=-\pi^2\operatorname{Im}\tau.
$$

Therefore

$$
Z_{\rm loc}=e^{\pi c\operatorname{Im}\tau/6}
=|q|^{-c/12},
\qquad
c=\frac{3\ell}{2G}+13,
$$

which supplies $q^{-c/24}\bar q^{-c/24}$. The factor $13/24$ is the chiral vacuum-exponent shift, while $13$ is the chiral central-charge shift.

### 4.2 Oscillator/zeta derivation

For the first exceptional orbit $\operatorname{Diff}(S^1)/PSL(2,\mathbb R)$, CJ remove spatial modes $n=-1,0,1$. Their Eq. (5.20) contains

$$
\partial_\tau\log Z_{1\text{-loop}}
=-\frac{\pi i C}{12}-\pi\sum_{n=2}^{\infty}n\cot(\pi n\tau).
$$

They split the sum as in Eq. (5.21) and apply Riemann-zeta regularization:

$$
\sum_{n=2}^{\infty}n
=\zeta(-1)-1
=-\frac1{12}-1
=-\frac{13}{12}.
$$

After integration,

$$
\boxed{
Z_{\rm chiral}
=q^{-(C+13)/24}\prod_{n=2}^{\infty}\frac1{1-q^n}.}
$$

CJ's localization argument makes this result exact for that orbit path integral and measure. This is stronger than a random regulator accident inside the boundary model. It still does not make $C=3\ell/(2G_{\rm phys})$ an independently measured equality in the bulk quantum theory.

### 4.3 The two derivations are not independent measurements

Both computations fix the same local vacuum/Casimir factor while sharing the same bulk-to-boundary quantization convention:

- the heat-kernel route assigns a Gamma-function finite part to the identity image;
- the orbit route assigns a zeta value to the excluded-oscillator vacuum sum;
- both leave the nonlocal descendant product unchanged;
- CJ explicitly present Sec. 5.2 as a reinterpretation of the GYM term, not a second observable that fixes $G$.

They are a valuable consistency check of one quantization prescription, but not two independent calibrations of a residual shift relative to physical Newton coupling.

## 5. Allowed local counterterms with the Brown--Henneaux variational problem

### 5.1 Two-derivative bulk terms

Write the parity-even two-derivative bulk action as

$$
I_{\rm bulk}[g]
=\frac1{16\pi}\int_M\sqrt{|g|}\,(A R+B),
\qquad A=\frac1G,
\qquad B=\frac{2}{G\ell^2}
$$

in the sign convention of the project's Lorentzian action. Diffeomorphism invariance permits finite shifts $\delta A$ and $\delta B$. On an AdS$_3$ background,

$$
R_{\mu\nu}=-\frac2{\ell^2}g_{\mu\nu},
\qquad R=-\frac6{\ell^2}.
$$

The Einstein equation from $AR+B$ requires

$$
B=\frac{2A}{\ell^2}.
$$

Holding the physical radius $\ell$ fixed therefore does not eliminate the finite freedom; it correlates it:

$$
\boxed{\delta B=\frac{2}{\ell^2}\delta A.}
$$

The corresponding finite counterterm, including the boundary completion used by the local CPS project, is

$$
\boxed{
\delta I_{\rm fin}
=\frac{\delta A}{16\pi}
\left[
\int_M\sqrt{|g|}\left(R+\frac2{\ell^2}\right)
+2\int_{\Gamma}\sqrt{|\gamma|}\left(K-\frac1\ell\right)
\right].}
$$

Its Gibbons--Hawking term cancels the normal-derivative variation generated by $\delta R$, and its $-1/\ell$ boundary term is the same Brown--Henneaux/Dirichlet AdS counterterm scaled by the new coefficient. Hence it preserves, rather than changes, the project's allowed variations, boundary conditions, symplectic-potential corner structure, and vacuum subtraction.

The on-shell renormalized value scales with the same coefficient:

$$
\delta I_{\rm ren,on\ shell}
=\frac{\ell\,\delta A}{4\pi}\operatorname{vol}_{\rm ren}(X).
$$

Choosing

$$
\delta A=\delta\!\left(\frac1G\right)=\frac{26}{3\ell}
$$

gives

$$
\delta I_{\rm ren,on\ shell}
=\frac{13}{6\pi}\operatorname{vol}_{\rm ren}(X),
$$

exactly the local coefficient needed to absorb the CJ finite part.

### 5.2 Higher-curvature and redundant terms

Local one-loop EFT counterterms may also contain

$$
\int\sqrt{|g|}\left(
\alpha R^2+\beta R_{\mu\nu}R^{\mu\nu}
+\text{derivative terms}
\right)
$$

and their boundary completions. In three dimensions the Riemann tensor is algebraically determined by the Ricci tensor. On constant curvature,

$$
R^2=\frac{36}{\ell^4},
\qquad
R_{\mu\nu}R^{\mu\nu}=\frac{12}{\ell^4},
$$

so their on-shell values are again proportional to volume. Up to field redefinitions and terms that vanish on the Einstein equations, they are degenerate with shifts of the two lower-derivative couplings for this restricted background test. If treated as independent finite couplings away from the Einstein sector they can change additional observables or introduce extra modes; they are not needed to exhibit the present ambiguity.

### 5.3 Intrinsic boundary terms

For a two-dimensional cutoff boundary, local diffeomorphism-invariant intrinsic terms begin with

$$
\int_{\Gamma}\sqrt{|\gamma|},
\qquad
\int_{\Gamma}\sqrt{|\gamma|}\,R[\gamma].
$$

The first shifts local vacuum/contact terms and is already tied to the bulk Einstein coefficient in the standard AdS variational problem. On a closed torus, the second is Euler/topological and vanishes for the flat representative; it cannot shift the stress-tensor two-point-function central term. Extrinsic terms must be arranged with the bulk variation and are not independent arbitrary additions if the same Dirichlet/Brown--Henneaux problem is retained.

Thus a boundary counterterm alone is not the mechanism for changing $c_{\rm phys}$. The relevant allowed scheme transformation is the full bulk Einstein counterterm plus its GHY/holographic boundary completion.

## 6. Does the volume term renormalize $G$, $\Lambda$, or both?

The answer depends on parameterization, but not on physics.

With

$$
I=\frac1{16\pi G}\int\sqrt{|g|}\,(R-2\Lambda),
\qquad \Lambda=-\frac1{\ell^2},
$$

a general local volume term can be called a cosmological-constant counterterm. Alternatively, after imposing the fixed-radius condition, it can be represented as a correlated shift of $1/G$ and $\Lambda/G$. GYM say this explicitly in Sec. 1.1: the volume divergence renormalizes the cosmological constant “or alternatively” Newton's constant.

At fixed physical $\ell$ the convenient coordinate on coupling space is $A=1/G$, with $B=2A/\ell^2$. Then

$$
\delta\!\left(\frac{\Lambda}{G}\right)
=\Lambda\,\delta\!\left(\frac1G\right),
$$

so both coefficients in the Lagrangian change while the solution radius remains fixed. It is incorrect to argue that fixing $\ell$ removes all finite volume freedom.

## 7. What does $G$ mean in $c=3\ell/(2G)+13$?

### 7.1 What the original papers actually define

- GYM use $k$ as the saddle coupling and explicitly allow its renormalization. Their Eq. (4.29) contains $|q|^{-2k}$ after the local identity term has been omitted.
- CJ explicitly call $C$ in their orbit action the **bare central charge** and derive $c=C+13$. In the classical CS reduction they set $C=6k=3\ell/(2G)$.
- CJ later call the $c$ in the final character the one-loop renormalized central charge. They do not define the $G$ on the right-hand side through an additional quantum observable independent of that central charge.

Thus the formula is internally consistent as

$$
c_{\rm phys}=C_{\rm bare}+13
$$

in the CJ prescription. Replacing $C_{\rm bare}$ by $3\ell/(2G_{\rm phys})$ is an extra renormalization condition, not a conclusion of the determinant.

### 7.2 No independent pure-gravity calibration found

The searched pure-gravity observables around thermal AdS$_3$/BTZ do not separately calibrate $G_R$ at the same order:

- vacuum energy and the torus prefactor measure $c_{\rm phys}$;
- Brown--Henneaux charges and the boundary stress-tensor correlator measure $c_{\rm phys}$;
- BTZ mass, angular momentum, entropy, and thermodynamic free energy inherit the same gravitational normalization and therefore do not isolate a second number from $c_{\rm phys}$ within the pure Einstein sector;
- the descendant product has no $G$ dependence and cannot perform the calibration.

Adding matter, a separately normalized defect tension, or a UV completion could supply an operational Newton coupling, but that would be extra structure outside the audited pure-gravity theory.

### 7.3 Possible level quantization does not close the gap

CJ note near their conclusion, in their introduction-level convention, that $C=24k$ and that one might expect the $SO(2,1)$ CS level to be integral, but they explicitly call the resulting parameter-quantization issue a “loose end.” Noncompact $SL(2,\mathbb R)/SO(2,1)$ CS quantization and the allowed integration contour are subtler than compact CS. It therefore does not furnish the missing independent physical definition of $G_R$ in the cited derivation.

More generally, even compact CS level shifts are regulator-sensitive unless the complete definition (measure, framing, regulator, and large-gauge quantization condition) is fixed; Giavarini--Martin--Ruiz Ruiz exhibit local BRST-invariant regulators with shift and no shift. That compact result is only a warning about inference, not a direct proof for AdS$_3$ gravity.

## 8. Comparison with another direct CS determinant

Porrati--Yu, arXiv:1903.05100, compute the perturbative CS path integral and impose the Brown--Henneaux reduction with boundary ghosts. Their Eqs. (9.44)--(9.47) give the vacuum Virasoro character, but organize the one-loop central term as

$$
c=6k_g+3-2=6k_g+1+O(k_g^{-1}),
$$

where $+3$ is attributed to a gravitationally renormalized volume/level factor and $-2$ to the boundary $bc$ system. Crucially, below Eq. (9.27) they say they included one-loop shifts in $k$ and the Wilson-loop weight **without computing them**, and Sec. 9.3 emphasizes an analytic-continuation ambiguity.

This is not a controlled contradiction proving $1$ instead of $13$: their $k_g$ is not matched to CJ's bare $C/6$ by an independently fixed finite renormalization. It is direct evidence that the vacuum character is robust while the allocation of the local $O(1)$ term among “level,” volume, and boundary determinants requires a complete convention.

## 9. Direct Brown--Henneaux charge test

### 9.1 Action-language shift

The project's renormalized action is, restoring $\ell$,

$$
S_{\rm ren}
=\frac1{16\pi G_R}\left[
\int_M\sqrt{-g}\left(R+\frac2{\ell^2}\right)
+2\int_\Gamma\sqrt{-\gamma}\left(K-\frac1\ell\right)
\right].
$$

Its symplectic potential, Brown--York/CPS charges, and classical central term are all linear in $A_R=1/G_R$. Therefore

$$
\delta c_{\rm BH}
=\frac{3\ell}{2}\delta A_R.
$$

For

$$
\delta A_R=\frac{2\sigma}{3\ell},
$$

one gets

$$
\boxed{\delta c_{\rm BH}=\sigma.}
$$

This is a direct charge-algebra effect, not merely a shift of a number in the Euclidean partition function. Because the full boundary completion is rescaled, the same Brown--Henneaux variational problem and corner prescription remain valid.

### 9.2 Reduced quantum-moment-map language

The recent CPS notes find the allowed finite term

$$
\delta H_{p,1}^{\rm fin}
=-i\gamma_p z_{-p},
\qquad
\gamma_p=\frac{\Delta c}{24}p(p^2-1).
$$

Under the action finite renormalization above, set $\Delta c=\sigma$. Then

$$
\boxed{
\gamma_p^{(\delta G)}
=\frac{\sigma}{24}p(p^2-1),}
$$

which is exactly the Virasoro-compatible one-parameter family isolated by the reduced commutators. In particular, for the CJ representative $\sigma=13$,

$$
\gamma_2=\frac{13}{4},
\qquad
\gamma_3=13,
\qquad
\gamma_5=65.
$$

Thus the two freedoms are the same at the audited one-loop central-cocycle order:

$$
\boxed{
\text{finite Einstein/charge normalization in metric variables}
\longleftrightarrow
\text{finite quantum moment-map normalization in reduced variables}.}
$$

This is not an all-orders equality of off-shell functionals. An action rescaling also controls the full nonlinear charge functional, whereas the CPS computation has identified only the one-loop linear representative required by the central cocycle. The demonstrated equivalence is precisely at the order and in the vacuum-orbit sector relevant to $\Delta c$.

### 9.3 Why this is not an ABJ-type immutable anomaly

The Virasoro two-cocycle is cohomologically nontrivial as a central extension once its coefficient is fixed. That fact constrains the mode dependence to $p(p^2-1)$, exactly as the CPS Jacobi tests find. It does not fix the coefficient relative to an unfixed normalization of the gravitational moment map.

An ABJ-type argument would require a Ward identity and a separately normalized current/coupling that forbid the finite local redefinition. Here the finite Einstein counterterm is diffeomorphism invariant, has the required boundary completion, and preserves the Brown--Henneaux variational problem. No source inspected supplies a second observable fixing $G_R$ while leaving the charge central term to be predicted. Hence no analogous obstruction was found.

## 10. Scheme-independence test

Define a family of schemes $\mathcal S_\sigma$ by

$$
\frac1{G_R(\mathcal S_\sigma)}
=\frac1{G_R(\mathcal S_0)}+\frac{2\sigma}{3\ell},
$$

$$
\Delta c(\mathcal S_\sigma)
=\Delta c(\mathcal S_0)-\sigma.
$$

Then

$$
c_{\rm phys}
=\frac{3\ell}{2G_R(\mathcal S_\sigma)}
+\Delta c(\mathcal S_\sigma)
$$

and

$$
Z_{\rm desc}=\prod_{n=2}^{\infty}|1-q^n|^{-2}
$$

are independent of $\sigma$. The torus partition function is

$$
\boxed{
Z(\tau,\bar\tau)
=\left|q^{-c_{\rm phys}/24}
\prod_{n=2}^{\infty}(1-q^n)^{-1}\right|^2,}
$$

independent of how $c_{\rm phys}$ is split. A scheme change multiplies the determinant part and the local coupling contribution by inverse local vacuum factors; it does not alter the descendant spectrum.

### Conditions under which $+13$ would become a genuine residual prediction

One would need both:

1. an operational, scheme-independent observable defining $G_{\rm phys}$ independently of the Brown--Henneaux stress tensor/charges, vacuum energy, and BTZ thermodynamics; and
2. a proof that all allowed local bulk-plus-boundary counterterms preserving that definition and the Brown--Henneaux variational problem leave a residual $13$.

Neither condition is supplied by GYM or CJ, and no directly relevant pure-gravity source found in this audit supplies it. A UV completion with a quantized, independently specified CS level might impose such a condition, but CJ themselves leave the needed level-quantization issue unresolved.

## 11. Symbolic verification record

The exact checks were run in a fresh local Wolfram kernel.

1. Proper-time analytic continuation:

   $$
   \frac{\Gamma(-3/2)(1-8)+\Gamma(-1/2)(8-4)}{(4\pi)^{3/2}}
   =-\frac{13}{6\pi}.
   $$

2. Oscillator zeta sum:

   $$
   \zeta(-1)-1=-\frac{13}{12}.
   $$

3. Coupling-to-central-charge matching:

   $$
   \frac{3\ell}{2}\left(\frac{2\sigma}{3\ell}\right)=\sigma,
   \qquad
   \delta\!\left(\frac1G\right)_{\sigma=13}=\frac{26}{3\ell}.
   $$

4. On-shell volume coefficient:

   $$
   \frac{\ell}{4\pi}\frac{26}{3\ell}=\frac{13}{6\pi}.
   $$

5. Thermal-AdS exponent:

   $$
   -\frac{c}{6\pi}\left(-\pi^2\operatorname{Im}\tau\right)
   =\frac{\pi c}{6}\operatorname{Im}\tau,
   $$

   agreeing with $|q|^{-c/12}$ for $|q|=e^{-2\pi\operatorname{Im}\tau}$.

All identities were returned exactly, with no numerical approximation.

## 12. Final verdict and claim boundary

### Proved or directly source-verified

- GYM explicitly separate and discard/counterterm-subtract the identity-image volume term while deriving the non-zero-image descendant product.
- Their analytic continuation of the identity-image graviton heat kernel is exactly $-13\operatorname{vol}/(6\pi)$.
- CJ use the same finite part and independently reproduce the corresponding zeta vacuum exponent within their orbit quantization.
- CJ call $C$ bare; their sources do not give a separate quantum observable that identifies the displayed $G$ as an already physical Newton constant.
- A finite rescaling of the complete Einstein--Hilbert/GHY/AdS-counterterm action preserves the same variational problem and shifts the Brown--Henneaux charge normalization by an arbitrary finite $\sigma$.
- At one-loop central-cocycle order this is exactly the one-parameter moment-map freedom found by the internal CPS calculations.

### Conditional

- If the CJ orbit coefficient $C$ is held fixed as the defining bare parameter and their zeta/symplectic measure is part of the theory, then $c=C+13$ is exact for that boundary model.
- If a UV completion independently fixes $G$ or the noncompact CS level in a way that forbids the finite redefinition, a residual shift could become physical. That additional input is absent here.

### Not established

- that $+13$ is a universal residual correction relative to a separately measurable $G_{\rm phys}$ in pure AdS$_3$ Einstein gravity;
- that the local volume finite part is a logarithmic running coefficient;
- that the two $13$ calculations are independent physical measurements;
- that the internal CPS reference value $0$ is the unique physical answer rather than one finite normalization scheme.

Therefore the statement should be written as

$$
\boxed{
c_{\rm phys}=\frac{3\ell}{2G_R(\text{scheme})}
+\Delta c(\text{scheme}),
\qquad
\text{only }c_{\rm phys}\text{ is invariant}.}
$$

The CJ/GYM analytic-continuation scheme is the representative $\Delta c=13$ relative to their bare/reference coupling. The reduced CPS Wick/Liouville representative is naturally $\Delta c=0$. The current evidence does not distinguish them as different physics after the renormalized coupling and charge normalization are matched.

## Primary sources and audit references

1. S. Giombi, A. Maloney, X. Yin, “One-loop Partition Functions of 3D Gravity,” [arXiv:0804.1773](https://arxiv.org/abs/0804.1773), especially Eqs. (1.7)--(1.9), (3.8), (4.5), and (4.22)--(4.29).
2. J. Cotler, K. Jensen, “A theory of reparameterizations for AdS$_3$ gravity,” [arXiv:1808.03263](https://arxiv.org/abs/1808.03263), especially Eqs. (1.4), (3.32), (5.20)--(5.34), and the parameter-quantization discussion near the conclusion.
3. M. Porrati, C. Yu, “Kac-Moody and Virasoro Characters from the Perturbative Chern-Simons Path Integral,” [arXiv:1903.05100](https://arxiv.org/abs/1903.05100), especially Secs. 9.3--9.5 and Eqs. (9.27), (9.44)--(9.47).
4. S. de Haro, K. Skenderis, S. N. Solodukhin, “Holographic Reconstruction of Spacetime and Renormalization in the AdS/CFT Correspondence,” [arXiv:hep-th/0002230](https://arxiv.org/abs/hep-th/0002230).
5. K. Skenderis, “Lecture Notes on Holographic Renormalization,” [arXiv:hep-th/0209067](https://arxiv.org/abs/hep-th/0209067).
6. V. Chandrasekaran, É. É. Flanagan, I. Shehzad, A. J. Speranza, “A general framework for gravitational charges and holographic renormalization,” [arXiv:2111.11974](https://arxiv.org/abs/2111.11974), for the requirement that action, boundary/corner terms, symplectic flux, and charges be renormalized together.
7. G. Giavarini, C. P. Martin, F. Ruiz Ruiz, “Shift versus no-shift in local regularizations of Chern-Simons theory,” [arXiv:hep-th/9406034](https://arxiv.org/abs/hep-th/9406034), used only as a regulator-dependence warning for CS level shifts, not as a direct AdS$_3$ gravity calculation.

## Local project inputs

- [[Articles/Quantization in AdS/linearized gravity/higher perturbations of linearized gravity modes|higher perturbations of linearized gravity modes]]
- [[Articles/Quantization in AdS/linearized gravity/archived/one-loop-central-charge-audits/CPS one-loop central charge from next-order perturbation|CPS one-loop central charge from next-order perturbation]]
- [[Articles/Quantization in AdS/linearized gravity/archived/one-loop-central-charge-audits/CPS canonical quantum perturbation test of Brown-Henneaux one-loop central charge|CPS canonical quantum perturbation test of Brown-Henneaux one-loop central charge]]
- [[Articles/Quantization in AdS/linearized gravity/archived/one-loop-central-charge-audits/CPS reduced measure and Virasoro anomaly test|CPS reduced measure and Virasoro anomaly test]]
- [[Articles/Quantization in AdS/linearized gravity/archived/one-loop-central-charge-audits/internal CPS one-loop central-charge audit|internal CPS one-loop central-charge audit]]
