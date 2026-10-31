# Independent torus source-response derivation

## Result and scope

**The nonzero-mode connected stress response is determined by the Virasoro algebra and the thermal trace. Anomaly plus the flat-torus partition function also determines the quadratic *metric* response, but only after fixing a covariant completion, the precise Ward identity, source coordinates, and contact-term scheme. The raw time-ordered correlator and the metric Hessian are not identical.**

Let the spatial circumference be `2π`, let `w=τ+ix`, and let

\[
H=L_0-\frac c{24},\qquad
Z(\beta)=\operatorname{Tr}e^{-\beta H},\qquad
h=\langle H\rangle=-\partial_\beta\log Z,
\quad V=\langle H^2\rangle_c=\partial_\beta^2\log Z.
\]

For the canonical linear source defined below, the connected kernel is

\[
\boxed{K_{kn}=\frac{2nh+\frac c{12}n^3}{n+i\omega_k}\quad(n\ne0),
\qquad K_{k0}=\beta V\,\delta_{k0},
\qquad\omega_k=\frac{2\pi k}{\beta}.} \tag{1}
\]

For a covariant metric source `ds²=dw d\bar w+μ d\bar w²`, with normalization

\[
\delta W_{\rm met}=-\frac1\pi\int d\tau\,dx\,\mathcal T\,\delta\mu,
\]

the nonconstant-mode response is instead

\[
\boxed{\delta\mathcal T_{kn}=R_{kn}\mu_{kn},\qquad
R_{kn}=\frac{2h p+\frac c{12}p^3}{r},\quad
p=\frac{i\omega_k-n}{2},\quad r=\frac{i\omega_k+n}{2}.} \tag{2}
\]

The source map is `J=-2μ` at linear order, and the precise conversion is

\[
\boxed{R_{kn}=-2K_{kn}+2P_{kn},\qquad
P_{kn}=h+\frac c{24}(r^2-3rp+3p^2)} \tag{3}
\]

for every `(k,n)≠(0,0)`. The local `P` is the net seagull/contact conversion, not an extra propagating contribution. The Teichmüller mode has to be supplied separately:

\[
\boxed{R_{00}=2h-2\beta V.} \tag{4}
\]

A single chiral vacuum representation does **not** by itself provide a non-gravitationally-anomalous, globally defined two-dimensional metric functional. Equation (2) is the comparison with an explicitly assumed nonanomalous covariant completion; the required assumptions are spelled out below. No numerical value of `c` is selected anywhere.

## 1. Input, trace, and stress conventions

The input algebra and vacuum are

\[
[L_m,L_n]=(m-n)L_{m+n}+\frac c{12}m(m^2-1)\delta_{m+n,0},
\quad L_n^\dagger=L_{-n},\quad L_n|0\rangle=0\ (n\ge-1).
\]

The Hilbert space is cyclic from the vacuum and is the unitary quotient of the vacuum descendant module, with a finite-dimensional space at each level. Null states are removed before taking the trace. In particular, the allowed values of a genuinely unitary `c` are restricted; keeping `c` symbolic does not assert existence for every real number.

The character is the character of this actual quotient, not automatically the generic Verma character. Its level multiplicities are bounded by partition numbers. Thus `Z(β)` and the polynomial-energy-weighted traces used below converge for `β>0`. The finite-level trace argument in Section 3 directly proves convergence of the particular two-insertion sums and justifies KMS here without assuming cyclicity for arbitrary unbounded operators. The source functional is needed only through second order as a smeared distribution, not as a nonperturbative operator exponential.

Define

\[
\ell_n=L_n-\frac c{24}\delta_{n0},\qquad
\mathcal T(\tau,x)=\sum_{n\in\mathbb Z}\ell_n e^{-n(\tau+ix)}.
\tag{5}
\]

This is the **cylinder** stress. It obeys

\[
\mathcal T(\tau,x)=e^{\tau H}\mathcal T(0,x)e^{-\tau H},\qquad
\frac1{2\pi}\int_0^{2\pi}dx\,\mathcal T(\tau,x)=H,
\]

and

\[
[\ell_m,\ell_n]=(m-n)\ell_{m+n}+\frac c{12}m^3\delta_{m+n,0}.
\tag{6}
\]

The plane-to-cylinder convention is `z=e^w`:

\[
\mathcal T(w)=z^2T_{\rm plane}(z)-\frac c{24},\qquad
T_{\rm plane}(z)=\sum_n L_n z^{-n-2}.
\tag{7}
\]

It follows from `\{e^w,w\}=-1/2` and the transformation term `(c/12)\{z,w\}`. Consequently

\[
u:=\langle L_0\rangle=h+\frac c{24},\qquad
A_n:=\langle[L_n,L_{-n}]\rangle
=2nh+\frac c{12}n^3
=2nu+\frac c{12}n(n^2-1).
\tag{8}
\]

The last two forms are the same formula in cylinder and unshifted-mode conventions. Keeping the `m³−m` central term while forgetting the cylinder shift is incorrect.

For the generic vacuum module without additional null states one may, but need not, use

\[
Z=q^{-c/24}\prod_{m=2}^\infty(1-q^m)^{-1},\quad
u=\sum_{m=2}^\infty\frac{m q^m}{1-q^m},\quad
V=\sum_{m=2}^\infty\frac{m^2q^m}{(1-q^m)^2},\quad q=e^{-\beta}.
\tag{9}
\]

At exceptional quotients the actual character replaces (9). Equations (1)–(8) do not change.

## 2. Canonical source and connected time ordering

Define the source functional perturbatively around `J=0` by

\[
Z_H[J]=\operatorname{Tr}\left[e^{-\beta H}
\mathsf T_\tau\exp\left(\frac1{2\pi}
\int_0^\beta d\tau\int_0^{2\pi}dx\,J(\tau,x)\mathcal T(\tau,x)\right)\right],
\qquad W_H[J]=\log Z_H[J]. \tag{10}
\]

Thus a positive, time-independent `J` enters the Hamiltonian as
`H_J=H−(1/2π)∫J T`. Smooth periodic sources and the expansion through second order suffice; no claim about a nonperturbatively bounded Hamiltonian for arbitrarily large sources is needed.

There is **no source seagull** in (10): the inserted operator has no explicit `J` dependence. Define the raw connected correlator

\[
G(\tau,x)=\langle\mathsf T_\tau\mathcal T(\tau,x)\mathcal T(0,0)\rangle-h^2.
\tag{11}
\]

Its distributional prescription is the spectral/time-order prescription: for each spatial mode use its ordinary piecewise smooth function on `0<τ<β`, periodically continue with its KMS jump, and take its Fourier integral. Add no terms supported at coincident time. Values assigned at the single endpoint do not change this distribution. The spatial sum is a distribution, since its coefficients have polynomial growth.

With `dy=dτ dx`,

\[
W_H[J]=W_H[0]+\frac h{2\pi}\int dy\,J(y)
+\frac1{2(2\pi)^2}\int dy\,dy'\,J(y)G(y-y')J(y')+O(J^3).
\tag{12}
\]

The linear response is

\[
\delta t_J(y)=\frac1{2\pi}\int dy'\,G(y-y')J(y'),
\quad t_J:=2\pi\frac{\delta W_H}{\delta J}.
\tag{13}
\]

## 3. Algebra plus KMS: the complete spectral derivation

Energy selection implies `⟨L_n⟩=0` for `n≠0`, and only pairs with total mode number zero have nonzero trace. For `n≠0`, cyclicity and `[H,L_n]=−nL_n` give

\[
\langle L_{-n}L_n\rangle=q^n\langle L_nL_{-n}\rangle.
\]

Combining this with (8),

\[
F_n:=\langle L_nL_{-n}\rangle=\frac{A_n}{1-q^n},\qquad
\langle L_n(\tau)L_{-n}\rangle=e^{-n\tau}\frac{A_n}{1-q^n}
\quad(0<\tau<\beta). \tag{14}
\]

This formula is valid for negative `n` as written. For example, if `n>0`, the `−n` contribution is `q^n A_n e^{nτ}/(1−q^n)`. The zero mode is `G_0(τ)=V`. Therefore

\[
G(\tau,x)=V+\sum_{n=1}^\infty\frac{A_n}{1-q^n}
\left[e^{-n\tau-inx}+q^n e^{n\tau+inx}\right],\qquad0<\tau<\beta.
\tag{15}
\]

This is an all-level algebraic identity, not a finite-cutoff inference. To justify it without a potentially illicit unbounded-operator cyclicity step, let `V_N` be the actual finite-dimensional level-`N` space, `d_N=dim V_N`, and for fixed positive `n` set

\[
f_N=\operatorname{Tr}_{V_N}(L_nL_{-n}),\qquad
g_N=\operatorname{Tr}_{V_N}(L_{-n}L_n).
\]

Finite-dimensional `Tr(AB)=Tr(BA)` between `V_N` and `V_{N-n}` gives `g_N=f_{N-n}` (zero if `N<n`). The commutator gives

\[
f_N-f_{N-n}=d_N\left[2nN+\frac c{12}n(n^2-1)\right].
\]

Iterating this recurrence proves that `f_N` is bounded by a polynomial in `N` times the partition number `p(N)`. Hence both weighted sums converge absolutely for `β>0`; summing the recurrence gives (14), while the trace shift gives the KMS relation. This proof works for every unitary quotient, not only for a generic PBW basis. Equation (1) subsequently shows polynomial Fourier growth, so smooth-source quadratic response is a well-defined distribution.

Use the Fourier convention

\[
J(\tau,x)=\sum_{k,n}J_{kn}e^{i\omega_k\tau-inx},\qquad
J_{kn}=\frac1{2\pi\beta}\int dy\,e^{-i\omega_k\tau+inx}J(\tau,x),
\]

\[
K_{kn}=\int_0^\beta d\tau\,e^{-i\omega_k\tau}
\frac1{2\pi}\int_0^{2\pi}dx\,e^{inx}G(\tau,x),\quad
G=\frac1\beta\sum_{k,n}K_{kn}e^{i\omega_k\tau-inx}. \tag{16}
\]

For `n≠0`, the factor `1−q^n` cancels exactly:

\[
\int_0^\beta d\tau\,e^{-(n+i\omega_k)\tau}\frac{A_n}{1-q^n}
=\frac{A_n}{n+i\omega_k},
\]

because `exp(−iω_kβ)=1`. This proves (1), including its denominator and normalization. In particular,

\[
\delta t_{J,kn}=K_{kn}J_{kn},\qquad
W_H^{(2)}[J]=\frac\beta2\sum_{k,n}J_{-k,-n}K_{kn}J_{kn}.
\tag{17}
\]

`K_{−k,−n}=K_{kn}`, as required for a Hessian. A chiral Euclidean kernel need not be real at each fixed pair `(k,n)`.

## 4. Equal-time contacts and the zero mode

Let `δ_β(τ)` and `δ_{2π}(x)` be periodic delta functions normalized to integral one. Write `δ²(y)=δ_β(τ)δ_{2π}(x)` and

\[
D:=\partial_\tau+i\partial_x=2\bar\partial,\quad
\partial=\frac12(\partial_\tau-i\partial_x),\quad
\bar\partial=\frac12(\partial_\tau+i\partial_x).
\]

Away from coincident time each summand in (15) is annihilated by `D`. The jump at `τ=0` is the equal-time commutator, so the full distribution obeys

\[
\boxed{DG=2\pi\left[2h(i\partial_x)+\frac c{12}(i\partial_x)^3\right]\delta^2(y).}
\tag{18}
\]

Equivalently, the right side is
`2π i[2h ∂_x−(c/12)∂_x³]δ²`. This fixes the canonical contact prescription. It is not yet the covariant holomorphic Ward contact.

The `(k,n)=(0,0)` component cannot be recovered by dividing (18) by `D`. For an arbitrary spatially uniform source, `H` commutes with itself, and (10) gives the exact identity

\[
W_H[J_0(\tau)]=\log Z\left(\beta-\int_0^\beta J_0(\tau)d\tau\right).
\tag{19}
\]

This proves `K_{k0}=βV δ_{k0}`. Every nonzero-frequency spatially uniform *canonical* source is invisible at quadratic order and, indeed, at all orders if its time average is zero. The constant source changes the modulus rather than being determined by the local Ward equation.

## 5. The covariant metric comparison: assumptions and derivation

### 5.1 What extra input is assumed

To compare with a nonanomalous covariant two-dimensional functional, assume:

1. A metric functional `W_met[g]=log Z[g]` exists locally near this marked torus, is diffeomorphism invariant, and has no gravitational anomaly. One possible comparison is a theory with `c_L=c_R=c` and an independent opposite-moving sector. This assumption is not supplied by a single vacuum module.
2. Define the stress tensor by
   \[
   \delta W_{\rm met}=-\frac12\int d^2y\sqrt g\,t^{ab}\delta g_{ab},
   \qquad\mathcal T=2\pi t_{ww}\quad\hbox{at flat metric}.
   \]
3. Fix the exact Weyl-anomaly scheme to
   \[
   t^a{}_a=-\frac c{24\pi}R,
   \tag{20}
   \]
   with no additional trivial-anomaly terms. Here `c` is either chiral central charge when `c_L=c_R=c`; it is not `c_L+c_R`. More generally this trace coefficient is `(c_L+c_R)/(48π)`.
4. Vary the chiral metric component in the complexified Beltrami slice
   \[
   ds^2=dw\,d\bar w+\mu(w,\bar w)d\bar w^2,
   \quad g_{ww}=0,\ g_{w\bar w}=1/2,\ g_{\bar w\bar w}=\mu.
   \tag{21}
   \]
   The other Beltrami source and conformal factor are held fixed. Treating the two sources independently is an analytic continuation of the real-metric variation. A generic real metric requires the conjugate variation too.

The real-coordinate area element of (21) is exactly `dτ dx`; its determinant in `(τ,x)` coordinates is one. Its inverse complex components are `g^{ww}=−4μ`, `g^{w\bar w}=2`, `g^{\bar w\bar w}=0`. Therefore the variation convention gives exactly

\[
\delta W_{\rm met}=-\frac1\pi\int d^2y\,\mathcal T\,\delta\mu.
\tag{22}
\]

The linear source relation to (10) is `J=−2μ`.

### 5.2 Linearized diffeomorphism and Weyl equations

An explicit coordinate calculation with the curvature convention for which
`R[e^{2σ}dw d\bar w]=−8e^{−2σ}∂\bar∂σ` gives

\[
R^{(1)}=4\partial^2\mu.
\]

Put `X:=2π\,\delta t_{w\bar w}` and `δ\mathcal T:=2π\,\delta t_{ww}`. Equation (20) gives

\[
X=h\mu-\frac c{12}\partial^2\mu. \tag{23}
\]

The `w` component of stress conservation, with the nonzero background `t_{ww}=h/(2π)`, gives

\[
\bar\partial\delta\mathcal T+\partial X-3h\partial\mu=0.
\]

Substituting (23),

\[
\boxed{\bar\partial\delta\mathcal T=2h\partial\mu+\frac c{12}\partial^3\mu.}
\tag{24}
\]

Both the `2h` term and the central term are needed. The former is not optional and is not part of the central anomaly.

An equivalent geometric derivation sets `μ=\bar∂ε`. The coordinate change `f=w+ε`, `\bar f=\bar w` is followed by the compensating Weyl factor `σ=−(∂ε)/2` to stay in the slice (21). The background tensor transforms by `2h∂ε`; the Weyl anomaly contributes `(c/12)∂³ε`. Applying `\bar∂` gives (24). The constant `μ` is precisely the obstruction to using a periodic `ε` and is a modulus, not a removable local fluctuation.

On the rectangular Euclidean torus, `r=(iω_k+n)/2` is nonzero for every nonconstant Fourier mode. Inverting (24) proves (2). This inversion uses no ultraviolet cutoff.

### 5.3 Why this is not just the raw time-ordered kernel

The operator `i∂_x=\bar∂−∂`. Dividing (18) by two and using (13) yields

\[
\bar\partial\delta t_J=
\left[h(\bar\partial-\partial)+\frac c{24}(\bar\partial-\partial)^3\right]J.
\]

Define the local differential operator

\[
P=h+\frac c{24}\left(\bar\partial^2-3\partial\bar\partial+3\partial^2\right).
\tag{25}
\]

Then

\[
\delta\mathcal T=\delta t_J-PJ,\qquad J=-2\mu,
\tag{26}
\]

has exactly the covariant Ward equation (24). In Fourier space this is (3).

At the level of the quadratic functional,

\[
W_{\rm met}^{(2)}[\mu]=W_H^{(2)}[-2\mu]-\frac1\pi\int d^2y\,\mu P\mu.
\tag{27}
\]

Equivalently, define a contact-adjusted distribution

\[
G_{\rm met}=G-2\pi P\,\delta^2(y).
\tag{28}
\]

Then the full metric Hessian is `δ²W_met/δμ(y)δμ(y')=G_met(y−y')/π²`, and

\[
\bar\partial G_{\rm met}=-\pi\left(2h\partial+\frac c{12}\partial^3\right)\delta^2(y).
\tag{29}
\]

This also follows from the covariant distributional extensions of the OPE terms, using `\bar∂(1/w)=πδ²`, `\bar∂(1/w²)=−π∂δ²`, and `\bar∂(1/w⁴)=−(π/6)∂³δ²`.

**Connected versus seagull:** the physical connected operator correlator defined by (10) is `G`, not `G_met`. In a microscopic metric path integral,

\[
W''=\langle S'S'\rangle_c-\langle S''\rangle.
\]

The second term is the action/operator seagull, and distributional renormalization of the first can move local terms between the two. Equations (25)–(28) give their required *net* conversion in the stated conventions. Without a microscopic action and regulator there is no invariant further split of `P` into a bare action seagull and an OPE-extension contact. In particular, its `h` part is state dependent and should not be described as an arbitrary state-independent covariant counterterm.

A useful diagnostic is `n=0,k≠0`: the raw connected kernel is zero, but the metric response is

\[
R_{k0}=2h+\frac c{12}\left(\frac{i\omega_k}{2}\right)^2
=2h-\frac{c\omega_k^2}{48}.
\tag{30}
\]

This is entirely local. Treating (30) as a nonzero canonical covariance of `H` would be an error.

## 6. Teichmüller mode and angular potential

For constant `μ`, use the holomorphic coordinate

\[
f=\frac{w+\mu\bar w}{1-\mu}.
\]

Its spatial period is still `2πi`. At a rectangular torus the left-moving thermal period becomes

\[
\beta_{\rm eff}=\beta\frac{1+\mu}{1-\mu}
=\beta+2\beta\mu+2\beta\mu^2+O(\mu^3).
\]

The remaining constant Weyl rescaling has no torus Euler anomaly. Thus the chiral contribution is `W_met(μ)=log Z(β_eff)` and

\[
W_{\rm met}(\mu)=W_0-2\beta h\mu
+\left(-2\beta h+2\beta^2V\right)\mu^2+O(\mu^3).
\tag{31}
\]

Equivalently,

\[
\mathcal T(\mu)=\frac{h(\beta_{\rm eff})}{(1-\mu)^2},
\quad\delta\mathcal T=(2h-2\beta V)\mu.
\]

This proves (4). The term `2h` is the geometric seagull; the term `−2βV` comes from the connected energy fluctuation and the source normalization. At zero temperature the connected energy variance vanishes, but the metric zero-mode response need not vanish: changing the spatial normalization changes the Casimir stress.

For an angular potential define

\[
b=\beta-i\theta,\quad q=e^{-b},\quad
\rho_{\beta,\theta}=Z(b)^{-1}e^{-\beta H+i\theta H},
\quad h=-\partial_b\log Z,\quad V=\partial_b^2\log Z.
\tag{32}
\]

Here the chiral momentum is taken to be `H`. Using `L0` instead only multiplies the partition function by `exp(iθc/24)` and does not change normalized insertions. For a nonchiral theory the usual angular potential couples to `H_L−H_R`.

The torus identifications are `(τ,x)∼(τ,x+2π)∼(τ+β,x−θ)`. Set `y=x+(θ/β)τ`, so both `τ` and `y` have rectangular periodicities. The mode basis is

\[
\exp\left[i\frac{2\pi k}{\beta}\tau-iny\right]
=\exp\left[i\Omega_{kn}\tau-inx\right],\qquad
\Omega_{kn}=\frac{2\pi k}{\beta}-\frac{n\theta}{\beta}.
\]

The generalization of (1) is

\[
\boxed{K_{kn}(\beta,\theta)=
\frac{2nh(b)+\frac c{12}n^3}{n+i\Omega_{kn}}
=\frac{\beta[2nh(b)+\frac c{12}n^3]}{n b+2\pi i k}
\quad(n\ne0),}
\tag{33}
\]

with `K_{k0}=βV(b)δ_{k0}`. The numerator `1−exp(−bn)` cancels in the time integral just as before. Replace `ω` by `Ω` in (2)–(3).

The constant Beltrami modulus is now

\[
b_{\rm eff}=\frac{b+\mu\bar b}{1-\mu},\qquad \bar b=\beta+i\theta,
\]

so `db_eff/dμ|0=2β` and (4) is unchanged except that `h,V` are evaluated at `b`. These analytically continued normalized traces are defined where `Re b>0` and `Z(b)≠0`; they need not be positive.

## 7. PSL subtraction and the zero-temperature check

The vacuum condition `L_{−1}|0⟩=0` removes a *vacuum descendant*. It does not set the operator `L_{−1}` to zero on the entire module. For example,

\[
L_{-1}L_{-2}|0\rangle=L_{-3}|0\rangle,
\qquad L_1L_{-1}L_{-2}|0\rangle=4L_{-2}|0\rangle.
\tag{34}
\]

For any nontrivial unitary vacuum module at finite temperature,

\[
A_1=2\langle L_0\rangle>0,
\quad\langle L_1L_{-1}\rangle=\frac{2\langle L_0\rangle}{1-q}.
\tag{35}
\]

It is therefore wrong to delete the `n=±1` stress insertions from the thermal source response. Likewise `n=0` is a physical energy/modulus response, not an automatically discarded mode. The torus has no global plane `PSL(2)` group that would justify deleting these three insertions.

At zero temperature, `h→−c/24` and `V→0`. Now, and only now,

\[
A_n\longrightarrow\frac c{12}n(n^2-1),
\]

so the raw vacuum `n=0,±1` contributions disappear automatically. For fixed positive `τ`,

\[
G_{\beta\to\infty}(w)=\frac c{12}\sum_{n=2}^\infty n(n^2-1)e^{-nw}
=\frac{c}{32\sinh^4(w/2)}
\sim\frac{c}{2w^4}.
\tag{36}
\]

This checks the central normalization against the plane OPE. In the zero-temperature continuous-frequency limit,

\[
K_n(\omega)\to\frac{c\,n(n^2-1)}{12(n+i\omega)}\quad(n\ne0).
\]

Keeping `k` fixed as `β→∞` instead sends `ω_k→0`; these are different limiting procedures. A covariant metric contact may remain even when a raw vacuum insertion vanishes, so no PSL subtraction should be performed again after (28).

## 8. Exactly when anomaly plus the flat partition function is sufficient

There are three distinct claims:

1. **Canonical connected response:** given the actual Virasoro representation, KMS trace, source (10), and its distributional prescription, `c` and the function `Z(β)` determine (1). Only its first two logarithmic derivatives are needed at the chosen torus. Anomaly alone does not determine `h` or `V`.
2. **Covariant metric response:** given an anomaly-free diffeomorphism Ward identity, the *exact* Weyl anomaly (20), the metric slice (21), and the flat partition function as a function of Teichmüller moduli, (24) fixes every nonconstant mode and the moduli derivatives fix the constant mode. No additional nonlocal quadratic freedom remains locally around a marked, nondegenerate torus. This is also the consequence of uniformization: a metric is a diffeomorphism plus a Weyl factor plus moduli; integrating the fixed anomaly and specifying the moduli function determines `W` up to an irrelevant constant/topological term.
3. **Unqualified anomaly coefficient plus a flat partition function:** insufficient to identify an arbitrary metric Hessian. Contact choices, trivial anomalies, the gravitational-anomaly scheme, and the existence of a covariant completion have not been specified.

A concrete ambiguity in claim 3 is

\[
\Delta W=\alpha\int d^2y\sqrt g\,R^2.
\tag{37}
\]

It vanishes on every flat torus and leaves the cohomologically nontrivial central-anomaly coefficient unchanged, but on (21)

\[
\Delta W^{(2)}=16\alpha\int d^2y\,(\partial^2\mu)^2,
\]

which changes the quadratic contact kernel. It also changes the Weyl Ward identity by trivial/local anomaly terms. Thus (37) is excluded by the *exact* scheme choice (20), but not by merely naming the central charge. A strictly conformal scheme with no additional dimensionful couplings is another way to exclude it.

A lone chiral sector generally has a gravitational anomaly. One must either supply an anomaly-canceling completion or specify consistent/covariant stress and Bardeen–Zumino conventions. Moreover, a vacuum character is generally not by itself a modular-invariant full CFT partition function. This calculation proves the local Ward/trace matching under the stated assumptions; it does not establish that arbitrary symbolic `c` and a vacuum character admit a globally consistent covariant CFT or a particular gravitational completion.

For a genuinely nonfactorized full theory, the requisite flat data are `W_0(b,\bar b)`, with chiral derivatives taken at fixed opposite modulus. A partition function only on the rectangular one-dimensional slice need not determine every angular/mixed response. For the stipulated single chiral trace, its holomorphic `q` dependence supplies the angular continuation wherever analytic.

## 9. Executed checks and retained evidence

The analysis was independent: only the applicable [vault rules](</Users/koishi/Documents/Note/AGENTS.md>) and math-kernel skill instructions were read. No previous project report/review or parent candidate conclusion was inspected. All authored artifacts are in this newly created directory; no parent note was edited.

- [Runnable Sage check script](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/source-response-independent-20261031T043445-9B4EFBFF/checks.py>): exact rational-function comparisons, a symbolic-`c` vacuum PBW implementation, vacuum OPE normalization, direct numerical time integrals, and constant-modulus Taylor coefficients.
- [Raw Sage results](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/source-response-independent-20261031T043445-9B4EFBFF/raw-checks.json>) and [first-run console](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/source-response-independent-20261031T043445-9B4EFBFF/console-run-01.txt>): all 20 checks passed in SageMath 10.9. Sixty numerical time integrals, including positive/negative `n` and angular shear, had maximum absolute denominator error `1.28760436902×10⁻⁷¹`. The amplitude containing `c` was factored out; no numerical `c` was inserted.
- [Runnable coordinate Ward check](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/source-response-independent-20261031T043445-9B4EFBFF/ward-check.wl>), [readable tensor output](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/source-response-independent-20261031T043445-9B4EFBFF/ward-raw.txt>), and [native tensor output](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/source-response-independent-20261031T043445-9B4EFBFF/ward-raw.wxf>): determinant, scalar curvature, trace equation, and conservation/Weyl Ward residuals all exactly zero. Executed in an xAct core kernel; the actual verification is explicit-coordinate Wolfram tensor algebra, not a separate abstract-index xAct proof.
- [Execution and failure record](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/source-response-independent-20261031T043445-9B4EFBFF/evidence-index.md>) records the original MCP raw-output locations and rerun instructions.

The finite PBW test uses levels `0…8` and modes `1…4` only as a normalization and low-level check. It retains a deliberate failed-cutoff hypothesis: at cutoff `N=8`, the naively truncated KMS sums have residual `−262q⁹` for `n=1`, and `−(7c/2+164)q⁹−(15c/2+360)q¹⁰` for `n=2`. This is expected boundary leakage, not evidence against the exact KMS identity and not a proof by cutoff.

**Verified:** all-level algebra/KMS derivation; explicit distributional and Fourier conventions; exact contact-polynomial identity; independent coordinate Ward derivation; symbolic finite-level normalization; angular denominator quadrature; zero-temperature OPE; zero/Teichmüller mode.

**Assumed:** the stated unitary positive-energy vacuum representation with finite-level core; for the metric comparison, existence of the specified locally covariant nonanomalous completion and exact anomaly scheme; perturbative smooth sources; a nondegenerate torus and a nonzero partition function. The finite-level trace recurrence directly justifies the quadratic thermal traces.

**Not established:** a global modular/covariant completion of an arbitrary chiral vacuum character; a unique microscopic connected-versus-seagull split; nonperturbative large-source existence; any equivalence to a particular bulk gravity path integral. No further independent agent could be started at this delegation depth; this report is itself the fresh independent investigation for the parent.
