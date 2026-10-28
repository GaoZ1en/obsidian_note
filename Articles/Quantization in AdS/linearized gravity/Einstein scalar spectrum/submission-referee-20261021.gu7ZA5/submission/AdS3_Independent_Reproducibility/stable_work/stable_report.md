# Independent contact-spectrum audit and an infinite family of physical resonances

Research snapshot: `GaoZ1en/obsidian_note`, commit `670abb1bb4b644a162278415ef94dde09cdeb016` (21 October 2026).

This contribution independently checks the scalar contact interaction's stable `(2,2)` block and its seven-dimensional Galois example, then proves new general results about its large-particle-number leading operator. No repository implementation, saved matrix, or previous output is imported by the accompanying calculations. The finite integral and occupation construction is reimplemented from the normalized free modes and the normal-ordered interaction. “New” below means obtained in this investigation and not found in the repository materials reviewed; no priority claim is made.

## 1. Scope and conventions

Take a real scalar on unit-radius global AdS3, with `m^2=Delta(Delta-2)`, `Delta>1`, regular center, source-free fast boundary falloff, fixed boundary time, and the vacuum Wick subtraction specified in the project. The interaction is `-lambda phi^4/4!`. Write

\[
 E=E_0+\lambda\varepsilon+o(\lambda),\qquad
 c_0=\frac1{8\pi(2\Delta-1)},\qquad
 \widehat K_N=\mathcal K_N/c_0.
\]

Everything below concerns the first-order coefficient operator. A statement as `N` tends to infinity at fixed excitation labels is not a statement about a controlled full interacting theory at fixed nonzero coupling.

For mode `A=(p,q)`, put `nu=min(p,q)`, `mu=max(p,q)`, `ell=|p-q|`, and `w_p=(Delta)_p/p!`. The radial positive-frequency mode is

\[
 e_{pq}(y)=\frac{(-1)^\nu}{\sqrt{2\pi}}
 \sqrt{\frac{w_\mu}{w_\nu}}
 y^{\ell/2}(1-y)^{\Delta/2}
 P_\nu^{(\ell,\Delta-1)}(1-2y),\qquad
 y=\frac{r^2}{1+r^2}.
\]

These conventions are in `phi4 arbitrary N spectrum.md`, §2.2, equations (2.3)–(2.6). For the audits, I obtain every vertex from the polynomial integral, then act with the actual occupation factors and solve the two lowering kernels.

## 2. Consequential existing claims independently verified

### 2.1 The full `(2,2)` affine pencil and the first square-root splitting

**Verified.** `phi4 stable spectra and resonances.md`, §3, lines 124–185, gives the correct symbolic matrices in the centered primary basis `(c22,c20 c02,c11^2)`. The new calculation constructs the nine-dimensional full occupation shell over `Q(N,Delta)`, constructs those three vectors, and checks the full intertwining identity `K_shell X=X K_primary` before reading off the matrices. This is stronger than fitting a few eigenvalues or comparing two characteristic polynomials.

With `D=(2Delta+1)(2Delta+3)`, the result is

\[
 A=\frac1D
 \begin{pmatrix}
 -\Delta^2-5\Delta-3&0&0\\
 -\Delta^2-\Delta+3&-2\Delta(2\Delta+3)&0\\
 2\Delta^2&0&-2(2\Delta+3)
 \end{pmatrix},
\]

\[
 B=\frac1D
 \begin{pmatrix}
 \Delta^2-\Delta-3&-\Delta^2-\Delta+3&(\Delta+1)^2\\
 5\Delta^2+5\Delta-3&3\Delta^2-3\Delta-9&(\Delta+1)^2\\
 -2\Delta^2+4\Delta+12&2\Delta^2&-2\Delta^2-2\Delta+2
 \end{pmatrix}.
\]

At `Delta_2=(sqrt(13)-1)/2`, direct expansion of the reconstructed characteristic polynomial, with `N=T^2` and

\[
 \rho=\binom N2-\frac{2N}{\sqrt{13}}+zT+b,
\]

gives

\[
 z^2=\frac{18}{(13+2\sqrt{13})^2},\qquad
 b=-\frac{\Delta_2+2}{13+2\sqrt{13}}.
\]

The two leading `z` roots are simple. The ordinary analytic implicit-function theorem then proves the claimed local convergent expansions in `1/T`, including the stated `O(N^{-1/2})` remainder after the constant. A Jordan form of `A` alone would not prove this; the nonzero reverse coupling is actually present in the reconstructed operator.

### 2.2 The seven-dimensional `S7` block

**Verified, including its physical origin.** At `N=8`, `Delta=2`, `(P,Q)=(3,3)`, the independent radial calculation constructs the 31-dimensional full shell, computes the eight-dimensional common lowering kernel, and implements the actual left-right mode permutation. The even eigenspace has dimension seven; the odd eigenspace has eigenvalue `698/35`. The even characteristic polynomial is precisely the integer polynomial printed in `phi4 stable spectra and resonances.md`, §5, lines 208–231:

\[
\begin{aligned}
f(z)={}&157565625z^7-23205665000z^6+1462586814500z^5
-51138014520600z^4\\
&+1071221655190400z^3-13443822361820960z^2
+93593295299197440z-278827127932310784.
\end{aligned}
\]

Here is a compact exact arithmetic certificate, independently computed from that rebuilt matrix. Its monic reduction modulo 11 is

\[
 q=z^7+4z^6-3z^5-5z^4+4z^3-4z^2+4z-3.
\]

Repeated modular squaring gives `z^(11^7)-z=0 mod q`, and the polynomial Euclidean algorithm gives `gcd(q,z^11-z)=1`. Since seven is prime, the finite-field irreducibility criterion proves that `q` is irreducible. Thus the rational Galois group acts transitively on seven roots and is primitive.

Modulo 19 the polynomial, up to the unit `-7`, is

\[
 (z+1)(z+4)(z+8)(z-9)(z-8)(z^2+8z+2).
\]

All factors are distinct; the quadratic discriminant is `18`, a nonsquare modulo 19. The Frobenius permutation is a single transposition. The normal subgroup generated by its conjugates is generated by edges in a graph on seven vertices. Connected components are blocks for the primitive group, so this nontrivial graph is connected. Its edge transpositions generate all of `S7`. Hence `Gal(f/Q)=S7`.

The physical implication is exactly the one stated in the source: a uniform radical formula for every finite block is impossible. This is not a nonintegrability theorem, and the repository correctly does not call it one.

### 2.3 The half-integer analyticity statement is already in the source

`exact stable full proof audit.md`, §1.2, already gives the signed `t=N^{-1/2}` normalization, a regular analytic primary frame, and the Rellich argument. I checked its hypotheses independently. It must be reported as a verified existing result, not as a new result of this investigation.

The new theorem below uses that mechanism but supplies an explicit interaction-dependent leading operator, infinitely many uniquely located active resonances, and their asymptotic distribution in mass. Those are substantially stronger than observing one low-dimensional exceptional mass.

## 3. A weighted Jacobi-product identity

### Lemma 1 — exact integral

Let `alpha>-1`, `beta>-1/2`, and `m,n` be nonnegative integers. Define

\[
 I_{nm}^{\alpha,\beta}=
 \int_0^1 y^\alpha(1-y)^{2\beta}
 P_n^{(\alpha,\beta)}(1-2y)
 P_m^{(\alpha,\beta)}(1-2y)\,dy.
\]

Then

\[
\boxed{
 I_{nm}^{\alpha,\beta}=
 \frac{\Gamma(\alpha+n+m+1)\Gamma(2\beta+1)}
 {n!m!\Gamma(\alpha+n+m+2\beta+2)}
 (\beta+m-n+1)_n(\beta+n-m+1)_m.}
\tag{3.1}
\]

Use rising factorials, rather than separate Gamma quotients, when a parameter happens to be an integer at which intermediate Gamma functions have poles.

**Proof.** The Rodrigues formula in this coordinate is

\[
 P_n^{(\alpha,\beta)}(1-2y)
 =\frac{y^{-\alpha}(1-y)^{-\beta}}{n!}
 \frac{d^n}{dy^n}\big[y^{n+\alpha}(1-y)^{n+\beta}\big].
\]

Termwise differentiation of the finite Jacobi expansion gives

\[
 \frac{d^n}{dy^n}\big[(1-y)^\beta P_m^{(\alpha,\beta)}(1-2y)\big]
 =(-1)^n(\beta+m-n+1)_n(1-y)^{\beta-n}
 P_m^{(\alpha+n,\beta-n)}(1-2y).
\]

Insert Rodrigues and integrate by parts `n` times. Every boundary term vanishes: at zero the relevant power is at least `alpha+1`; at one the combined power is `2beta+1`. The result is

\[
 I_{nm}^{\alpha,\beta}=
 \frac{(\beta+m-n+1)_n}{n!}
 \int_0^1y^{\alpha+n}(1-y)^{2\beta}
 P_m^{(\alpha+n,\beta-n)}(1-2y)\,dy.
\]

Expand the remaining polynomial as

\[
 P_m^{(\alpha+n,\beta-n)}(1-2y)
 =\frac{(\alpha+n+1)_m}{m!}
 {}_2F_1(-m,m+\alpha+\beta+1;\alpha+n+1;y).
\]

The Beta integral cancels the lower parameter `alpha+n+1`. The resulting terminating Vandermonde identity is

\[
 {}_2F_1(-m,m+\alpha+\beta+1;\alpha+n+2\beta+2;1)
 =\frac{(n+\beta+1-m)_m}{(\alpha+n+2\beta+2)_m}.
\]

Multiplying the Gamma and factorial factors proves (3.1). Every series here terminates; there is no exchange of an infinite sum with an integral. Exceptional intermediate parameter values follow by continuity, or directly from the finite-polynomial expressions. ∎

The diagonal specialization is particularly simple:

\[
 I_{nn}^{\ell,\Delta-1}
 =\frac{(2n+\ell)!(\Delta)_n^2}
 {(n!)^2(2\Delta-1)(2\Delta)_{2n+\ell}}.
\tag{3.2}
\]

## 4. The leading contact operator is governed by a beta-binomial law

### Theorem 2 — ground-excited interaction and all leading slopes

For `A=(p,q) !=(0,0)`, let `g_pq` be the expectation of `Khat_2` in the normalized two-particle occupation with one ground particle and one particle in mode `A`. Then

\[
\boxed{g_{pq}(\Delta)=
 2\binom{p+q}{p}\frac{(\Delta)_p(\Delta)_q}{(2\Delta)_{p+q}}.}
\tag{4.1}
\]

At fixed `P+Q`, twice the symmetric beta-binomial probability mass function occurs. The formula is not to be interpreted as the physical ground-ground value: that value is one, whereas formal substitution `(p,q)=(0,0)` in (4.1) gives two because the two-particle Bose normalization changes.

For every stable primary monomial

\[
 C=\prod_{|A|\ge2}c_A^{n_A},\qquad
 \sum_Ap_A n_A=P,\quad\sum_Aq_A n_A=Q,
\]

the corresponding diagonal leading slope in a regular physical large-`N` frame is

\[
\boxed{\sigma_C=\sum_A n_A\,[g_A(\Delta)-1].}
\tag{4.2}
\]

Thus the entire multiset of leading slopes of the stable primary block is given by (4.2), including multiplicities, without diagonalizing an affine-coordinate Jordan matrix.

**Proof of (4.1).** The coefficient of the normalized occupation with distinct modes is `lambda int r dr dtheta |e_0|^2 |e_A|^2`: four ordered pair terms cancel the factor `1/4` in the number-preserving interaction. Therefore

\[
 g_{pq}=2(2\Delta-1)\frac{w_\mu}{w_\nu}
 I_{\nu\nu}^{\ell,\Delta-1}.
\]

Use (3.2), `p+q=2nu+ell`, and `w_k=(Delta)_k/k!`. The factors simplify directly to (4.1).

**Proof of (4.2) and the primary-frame issue.** In a normalized full-shell occupation with `r` excited particles, the ground-ground contribution is `binom(N-r,2)`, the ground-excited diagonal contribution is `(N-r) sum_A n_A g_A`, and excited-excited interactions are `O(1)`. Hence the coefficient of `N`, after subtracting `binom(N,2)`, is `sum n_A(g_A-1)`.

Energy and angular momentum preserve the two nonnegative mode degrees separately. An interaction involving one incoming and one outgoing ground particle therefore leaves the nonzero mode unchanged. Every off-diagonal matrix element is either `O(1)` (all four legs excited) or `O(sqrt(N))` (one ground leg). A pair of ground particles cannot become excited. This proves that the leading full-shell matrix is diagonal in the occupation basis.

A centered primary monomial has exactly one term of minimal excited-particle count: `prod a_A^(n_A)`. Every other term contains at least one dipole variable `a10` or `a01`. If its minimal count is `r0`, multiply its physical column by the signed factor `t^(-r0)`, `t=N^(-1/2)`, and then divide by the positive limiting norm of that scaled column. Explicitly, the required constant divisor is `sqrt(g_s0)`, where `g_s0=prod_A n_A!/(w_pA w_qA)^(n_A)` is the positive monomial norm factor of the minimal occupation. The resulting analytic vector has value at zero equal to that single normalized occupation with no dipoles. Distinct centered monomials have distinct such occupations. Their limiting Gram matrix is therefore the identity. Their first column corrections contain a dipole and are orthogonal to all limiting columns, so the Gram matrix is `I+O(t^2)`. Analytic Gram orthonormalization, likewise `I+O(t^2)`, gives a regular primary frame. Its zeroth-order matrix is exactly the restriction of the diagonal occupation matrix to modes with total degree at least two. This proves (4.2).

In fact the first-order correction to every such column contains a dipole and is orthogonal to the whole limiting primary subspace. Consequently the first coefficient `H1` in

\[
 H(t)=\frac{\widehat K_N-\binom N2}{N}
 =H_0+tH_1+t^2H_2+\cdots
\tag{4.3}
\]

is simply the physical one-ground-leg transition matrix restricted to the dipole-free occupation states. No unknown primary-frame correction can cancel the resonance coefficient calculated below. ∎

### Corollary: a concrete resonance graph

For each leading slope `sigma`, use as vertices the centered primary monomials with that slope. Join two vertices when one excitation `alpha` is replaced by two excitations `beta,gamma`, each of total degree at least two, with `alpha=beta+gamma` and a nonzero contact integral. The restricted matrix `E_sigma H1 E_sigma` is a weighted adjacency matrix on this graph, with the usual occupation factors. It is bipartite under the parity of the number of excited particles. A nonzero edge proves nonzero `sqrt(N)` splittings; a repeated leading slope without an edge does not.

This graph is useful even when more than two states resonate. Its nonzero spectral values come in pairs `+b,-b`, and the spectral radius is at least the absolute value of any individual edge entry.

## 5. Infinitely many actual square-root resonances

Set

\[
 g_n(\Delta)=g_{n,n}(\Delta)
 =\frac{2(1/2)_n(\Delta)_n}{n!(\Delta+1/2)_n},\qquad n\ge1.
\tag{5.1}
\]

For each integer `n>=2`, compare the leading occupations of `c_nn` and `c_(n-1,n-1)c_11`. Their slopes are `g_n-1` and `g_(n-1)+g_1-2`. Since `g_1=1-1/(2Delta+1)`, they coincide exactly when

\[
 g_n-g_{n-1}+\frac1{2\Delta+1}=0.
\tag{5.2}
\]

### Theorem 3 — unique mass, active coupling, and true spectral splitting

For every `n>=2`, equation (5.2) has exactly one solution `Delta_n>1`. These masses are strictly increasing and unbounded. At `Delta=Delta_n`, in the stable `(P,Q)=(n,n)` primary block, at least two actual eigenvalue branches satisfy

\[
\boxed{\rho_\pm(N)=\binom N2+\sigma_n N\pm b\sqrt N+O(1),
 \qquad \sigma_n=g_n(\Delta_n)-1,\quad b\ge b_n>0,}
\tag{5.3}
\]

where the explicit nonzero edge is

\[
\boxed{b_n=\frac{n\,g_n(\Delta_n)}{(2n-1)\sqrt{1+\mathbf1_{n=2}}}.}
\tag{5.4}
\]

The primary dimension and the other resonant states may grow with `n`; (5.3) does not assume that the resonant cluster is two-dimensional. The branches in the statement can be selected as those associated with the largest positive and negative eigenvalues of its first resonance matrix.

**Proof of existence and uniqueness.** From (5.1),

\[
 \frac{g_n}{g_{n-1}}=
 \frac{(2n-1)(\Delta+n-1)}{n(2\Delta+2n-1)}.
\]

Thus (5.2) is equivalent to `F_n(Delta)=1`, with

\[
 F_n(\Delta)=
 \frac{(2\Delta+1)(\Delta+2n-1)}{n(2\Delta+2n-1)}g_{n-1}(\Delta).
\tag{5.5}
\]

Each factor `(Delta+j)/(Delta+j+1/2)` in `g_(n-1)` is positive and strictly increasing for `Delta>0`. Put `a=2n-1`; the remaining positive factor has derivative

\[
 \frac{d}{d\Delta}\frac{(2\Delta+1)(\Delta+a)}{2\Delta+a}
 =\frac{4\Delta^2+4a\Delta+2a^2-a}{(2\Delta+a)^2}>0.
\]

Therefore `F_n` is strictly increasing. At the algebraic boundary value `Delta=1`,

\[
 g_{n-1}(1)=\frac2{2n-1},\qquad
 F_n(1)=\frac{12}{4n^2-1}<1.
\]

As `Delta` tends to infinity, `g_(n-1)` tends to the positive number `2(1/2)_(n-1)/(n-1)!`, while the remaining factor grows like `Delta/n`. Thus `F_n` tends to infinity. The intermediate value theorem and strict monotonicity prove existence and uniqueness.

Moreover

\[
 \frac{F_{n+1}}{F_n}=
 \frac{(2n-1)(\Delta+n-1)(\Delta+2n+1)}
 {(n+1)(2\Delta+2n+1)(\Delta+2n-1)}<1,
\]

because denominator minus numerator is

\[
 3\Delta^2+(8n-1)\Delta+8n^2-2>0.
\]

It follows that `Delta_(n+1)>Delta_n`.

**Proof of the active matrix element.** Write `P_j(y)=P_j^(0,Delta-1)(1-2y)` and `w(y)=(1-y)^(2Delta-2)`. The exact adjacent triple identity is

\[
 \int_0^1w P_nP_{n-1}P_1\,dy
 =\frac n{2n-1}\int_0^1w P_n^2\,dy.
\tag{5.6}
\]

Here is an explicit all-index verification using Lemma 1. Put `beta=Delta-1`. The ordinary Jacobi recurrence `xP_(n-1)=aP_n+bP_(n-1)+cP_(n-2)` has

\[
 a=\frac{2n(n+\beta)}{(2n+\beta-1)(2n+\beta)},\quad
 b=\frac{\beta^2}{(2n+\beta-2)(2n+\beta)},\quad
 c=\frac{2(n-1)(n+\beta-1)}{(2n+\beta-2)(2n+\beta-1)}.
\]

Also `P_1(x)=((beta+2)x-beta)/2`. By (3.1),

\[
 \frac{I_{n,n-1}}{I_{nn}}
 =\frac{(2n+2\beta+1)\beta}{2(n+\beta)(\beta+1)},
\]

\[
 \frac{I_{n,n-2}}{I_{nn}}
 =\frac{(n-1)(2n+2\beta+1)\beta(\beta-1)}
 {(2n-1)(n+\beta-1)(\beta+1)(\beta+2)}.
\]

Substitution into the recurrence reduces its right-hand side to exactly `n/(2n-1)`, proving (5.6). The rational simplification was additionally checked symbolically with `n,beta` unrestricted symbols; it is not an inference from a finite list.

In the unnormalized creation coordinates, the coefficient taking one ground plus `(n,n)` to `(1,1)` plus `(n-1,n-1)` is therefore

\[
 T_n=\frac{n^2\Delta\,g_n}
 {(2n-1)(\Delta+n-1)(1+\mathbf1_{n=2})}>0.
\]

The ratio of the physical creation weights is `w_n/(w_(n-1)w_1)=(Delta+n-1)/(nDelta)`. Creation of two identical excitations at `n=2` contributes the Bose factor `sqrt(2)`. Thus the normalized Fock matrix element is

\[
 \langle(n-1,n-1),(1,1)|\widehat K_N|(n,n)\rangle
 =b_n(\Delta)\sqrt{N-1},
\]

with `b_n(Delta)=n g_n(Delta)/[(2n-1)sqrt(1+1_(n=2))]`. Dividing by `N` gives the nonzero `t H1` entry in (4.3). The primary-frame argument after Theorem 2 shows that this entry survives primary reduction.

At the resonance, compress `H1` to the `H0` eigenspace of slope `sigma_n`. This is a real symmetric matrix with a nonzero entry of magnitude `b_n`. Excitation-number parity anticommutes with it. Its spectrum therefore has a pair `+b,-b`, with `b>=b_n`. Degenerate Hermitian perturbation theory gives `sigma_n +/- bt+O(t^2)` for two eigenvalues of `H(t)`. Multiplication by `N=t^(-2)` proves (5.3). ∎

For `n=2`, the relevant resonance space is two-dimensional, so `b=b_2`; (5.4) reduces to the previously verified coefficient `3sqrt(2)/(13+2sqrt(13))`. For larger `n`, no assertion that `b=b_n` is needed.

## 6. Asymptotic distribution of the exceptional masses

### Theorem 4 — mass and coupling asymptotics

\[
\boxed{\Delta_n=\frac{\sqrt\pi}{2}n^{3/2}-\frac n2+O(\sqrt n),}
\qquad
\boxed{b_n\sim\frac1{\sqrt{\pi n}}.}
\tag{6.1}
\]

The first formula concerns the uniquely defined masses (5.5); it does not exchange a growing-excitation limit with the fixed-block large-`N` spectral expansion.

**Proof.** For `Delta=c n^(3/2)` with `c` in a fixed compact subinterval of `(0,infinity)`,

\[
 \frac{2(1/2)_{n-1}}{(n-1)!}=\frac2{\sqrt{\pi n}}[1+O(n^{-1})],
\]

by the elementary central-binomial/Stirling estimate. For the second factor in `g_(n-1)`, write its logarithm as

\[
 \sum_{j=0}^{n-2}\log\frac{\Delta+j}{\Delta+j+1/2}
 =-\frac n{2\Delta}+O(n^{-1}).
\]

The error is uniform in that interval of `c`: expansion of the logarithm and comparison of `sum 1/(Delta+j)` with `(n-1)/Delta` bound it by a constant times `n^2/Delta^2+1/Delta+n/Delta^2`. Consequently

\[
 g_{n-1}(\Delta)=\frac2{\sqrt{\pi n}}
 \left[1-\frac n{2\Delta}+O(n^{-1})\right].
\tag{6.2}
\]

Initially just retaining the leading term gives `F_n(c n^(3/2))->2c/sqrt(pi)` uniformly on compact `c` intervals. Monotonicity traps the unique root between any two constants straddling `sqrt(pi)/2`; thus `Delta_n/n^(3/2)->sqrt(pi)/2`, and (6.2) applies uniformly at the root.

The exact division identity

\[
 \frac{(2\Delta+1)(\Delta+2n-1)}{2\Delta+2n-1}
 =\Delta+n-\frac{(n-1)(2n-1)}{2\Delta+2n-1}
\]

has last term `O(sqrt(n))` in this range. Combining with (6.2),

\[
 F_n(\Delta)=\frac2{\sqrt\pi\,n^{3/2}}
 [\Delta+n/2+O(\sqrt n)].
\]

Setting `F_n(Delta_n)=1` proves the first statement in (6.1). The same product estimate with index `n` gives `g_n(Delta_n)~2/sqrt(pi n)`; substitution into (5.4) proves the second. ∎

Multiplying the explicit edge by the physical contact scale gives

\[
 c_0(\Delta_n)b_n\sim\frac1{8\pi^2n^2}.
\]

This is a statement about the explicit nonzero resonance entry. The full resonance cluster may have a larger largest splitting coefficient.

The first masses, computed from the unique monotone scalar equation, are

| n | Delta_n |
|---:|---:|
| 2 | 1.302775637732 |
| 3 | 3.102940861549 |
| 4 | 5.279487217992 |
| 5 | 7.778240120788 |
| 6 | 10.564735649768 |
| 7 | 13.614118981497 |
| 8 | 16.907254691273 |

Exact polynomial isolating intervals for `n=2,...,8` are stored separately. These decimals illustrate the proved theorem; they do not establish uniqueness or the asymptotic.

## 7. A further generic consequence and a practical research direction

Equation (4.1) also makes generic linearizability of the contact leading derivation particularly transparent. At the algebraic limit `Delta=1`,

\[
 g_{pq}(1)-1=-\frac{p+q-1}{p+q+1}.
\]

For any genuine decomposition of a generator into two or more generators of total degrees at least two, the associated homological divisor is nonzero there. For two degrees `a,b>=2`,

\[
 \frac{a-1}{a+1}+\frac{b-1}{b+1}-\frac{a+b-1}{a+b+1}>0;
\]

its minimum is at `a=b=2` and equals `1/15`, since its derivative in either positive real variable is positive. Iteration gives the multi-generator case. Thus no such rational divisor vanishes identically in `Delta`. In each fixed bidegree there are only finitely many exceptional masses, and away from them triangular homological elimination constructs polynomial eigen-generators. This is the contact analogue of the generic leading linearization discussed for gravity; it concerns the leading derivation, not simultaneous diagonalization of the full interacting pencil.

The new explicit mass sequence shows that exceptional masses cannot be dismissed as a single accident in `(2,2)`. A useful next task is to classify the finite resonance graphs at `Delta_n`: determine whether the cluster is always exactly two-dimensional, or find extra monomials with the same leading slope. When it is exactly two-dimensional, equations (5.3)–(5.4) give the exact leading split coefficient. The graph representation reduces that question to finite rational slope equations and contact integrals, without requiring the full finite-`N` spectrum.

This final question has additional exact finite evidence. Independently enumerate all stable centered monomials, form (4.2), and reduce their rational slope functions in the number field of the unique critical root. For every `n=2,...,8`, exactly the two stated monomials have slope `sigma_n`. The stable primary dimensions checked are respectively `3,8,26,70,204,537,1430`. Thus `b=b_n` is exactly certified in those seven blocks, while the all-`n` theorem only uses the proved lower bound. The cubic for the new `n=3` example is

\[
 \Delta_3^3+2\Delta_3^2-11\Delta_3-15=0,
 \qquad \Delta_3\in(3.102940861548,3.102940861550),
\]

and its actual normalized split coefficient is `b_3=0.2621875053518305...`. The all-degree claim that the resonant cluster always has dimension two remains a conjecture.

## 8. Reproducibility and status

Files in this contribution:

- `independent_contact.py`: independent finite Jacobi/Beta vertices, occupation action, lowering kernels, physical parity, symbolic `(2,2)` and exact `(3,3)` reconstruction.
- `independent_results.json`: those reconstructed matrices, septic, parity dimensions, factorization data, and exact real-root isolating intervals.
- `galois_certificate.py` and `galois_certificate.json`: explicit modular exponent/GCD irreducibility certificate and the mod-19 transposition.
- `verify_new_theorems.py` and `new_theorem_verification.json`: low-degree symbolic integral comparisons, all-index rational checks used in the triple-integral and monotonicity proofs, exact Newton coefficients, and high-precision illustrative critical masses.
- `resonance_explore.py` and `resonance_results.json`: exact root intervals and positive vertices through `n=8`; exploratory input to, rather than proof of, the all-index theorem.
- `resonant_cluster_counts.py` and `resonant_cluster_counts.json`: exact leading-slope number-field comparison for all centered monomials through `(8,8)`.

Only SymPy and mpmath are required. From the parent directory, run the scripts in the order `independent_contact.py`, `galois_certificate.py`, `verify_new_theorems.py`; the exploratory script is optional. No source-repository code is loaded. The selected repository results survive these independent checks; I found no error in the particular stable/contact claims audited here. The mathematically new content is Theorems 2–4 and the explicit resonance-graph interpretation, with complete proofs above.
