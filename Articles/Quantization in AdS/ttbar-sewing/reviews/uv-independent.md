# Independent UV and continuum-sewing audit of TTbar-deformed Ising

## Result and scope

For the **diagonal bosonic Ising Hilbert space**, retaining all undeformed states and multiplicities, and using exactly

\[
E_\lambda(L)=\frac{L}{2\lambda}\left(\sqrt{1+\frac{4\lambda E_0}{L}+\frac{4\lambda^2P^2}{L^2}}-1\right),\qquad
E_0=\frac{2\pi}{L}\left(h+\bar h-\frac{c}{12}\right),\quad
P=\frac{2\pi}{L}(h-\bar h),\quad c=\frac12,
\]

with the principal square root continuously connected to the CFT at fixed state:

1. **Positive coupling:** the entire spectrum is real and semibounded exactly when
   \[
   L\ge \ell_*:=\sqrt{\frac{2\pi c\lambda}{3}}=\sqrt{\frac{\pi\lambda}{3}}.
   \]
   Equality is spectrally allowed but is a square-root branch point, not a smooth point of the vacuum flow.
2. **Negative coupling:** the vacuum branch remains real for every positive circumference, but infinitely many balanced states become complex. Worse, infinitely many *real* chiral vacuum descendants have energies tending to minus infinity. Keeping only real levels does not repair the supplied branch.
3. **Exact heat-trace threshold for positive coupling and admissible circumference:**
   \[
   \boxed{\operatorname{Tr}e^{-\beta H_\lambda}<\infty\quad\Longleftrightarrow\quad \beta\ge\beta_H,\qquad \beta_H=\ell_* .}
   \]
   **The endpoint is included.** The first energy moment diverges there. A statement that the Ising partition sum itself necessarily diverges at the Hagedorn point is too strong.
4. **The old CFT all-positive-time trace theorem does not survive.** Bounded cylinder evolution survives for all positive times, but trace class, Hilbert–Schmidt class, and absolute complete-history expansions have different collar conditions. In particular, a trace-class product is not automatically an absolutely summable expansion over all intermediate energy eigenvectors.
5. The spectrum and its multiplicities determine thermal traces, **not** local correlators, operator/state flow, or a continuum sewing theory on arbitrary surfaces.

These are statements about the stated spectral continuation and the named Hilbert space. They are not a construction of a nonperturbative local TTbar theory. No candidate manuscript or future main construction was inspected for this independent review.

## 1. Objects, units, and the two signs

Take a spatial circle of physical circumference \(L>0\), Euclidean proper time \(\beta\), and coupling \([\lambda]=\text{length}^2\). Set the speed of light to one, so \([E]=[P]=\text{length}^{-1}\). The Ising state space is

\[
\mathcal H=\bigoplus_{i\in\{0,\epsilon,\sigma\}}\mathcal V_i\otimes\overline{\mathcal V_i},\qquad
h_i\in\left\{0,\frac12,\frac1{16}\right\}.
\]

A state at descendant levels \(n,m\ge0\) has \(h=h_i+n\), \(\bar h=h_i+m\), multiplicity \(a_i(n)a_i(m)\), and integer spin \(j=n-m\). This is the modular-invariant bosonic Ising theory, not a single unprojected Majorana spin structure.

Squaring the defining expression gives the useful inverse relation

\[
E_0=E_\lambda+\frac{\lambda}{L}(E_\lambda^2-P^2),
\qquad
E_\lambda=\sqrt{P^2+\frac{L}{\lambda}E_0+\frac{L^2}{4\lambda^2}}-\frac{L}{2\lambda}\quad(\lambda>0).
\]

The small-coupling expansion is

\[
E_\lambda=E_0+\frac{\lambda}{L}(P^2-E_0^2)
+\frac{2\lambda^2E_0}{L^2}(E_0^2-P^2)+O(\lambda^3).
\]

At fixed conformal labels the spectrum satisfies

\[
\partial_\lambda E_\lambda=E_\lambda\,\partial_L E_\lambda+\frac{P^2}{L},
\qquad P=\frac{2\pi j}{L}.
\]

The derivative \(\partial_L\) here acts also on the \(L\)-dependence of the quantized momentum. Both the inverse relation and this Burgers equation were checked symbolically.

### 1.1 Positive sign: vacuum controls full-spectrum reality

The undeformed vacuum has \(E_{0,\mathrm{vac}}=-\pi c/(6L)\), \(P=0\), so its discriminant is

\[
R_\mathrm{vac}=1-\frac{2\pi c\lambda}{3L^2}.
\]

Every state has \(E_0\ge E_{0,\mathrm{vac}}\), and \(P^2\ge0\). Therefore for \(\lambda>0\), \(R\ge R_\mathrm{vac}\), proving necessity and sufficiency of \(L\ge\ell_*\) for all-state reality. Monotonicity of the square root also proves that the CFT vacuum remains the ground state:

\[
E_{\lambda,\mathrm{vac}}(L)=\frac{L}{2\lambda}\left(\sqrt{1-\ell_*^2/L^2}-1\right).
\]

At fixed \(L\), the allowed positive coupling is \(\lambda\le3L^2/(2\pi c)=3L^2/\pi\). At equality the vacuum energy is finite, \(-L/(2\lambda)\), but its derivatives in \(L\) or \(\lambda\) are singular. Any argument requiring a differentiable stress-tensor flow should stay at \(L>\ell_*\), even though the diagonal spectral operator still exists at equality.

### 1.2 Negative sign: complex balanced towers and real negative-energy runaway

Write \(\lambda=-a\), \(a>0\). Statewise reality is equivalent to

\[
R=1-\frac{4aE_0}{L}+\frac{4a^2P^2}{L^2}\ge0
\quad\Longleftrightarrow\quad
E_0\le\frac{L}{4a}+\frac{aP^2}{L}.
\]

There are arbitrarily high states with \(n=m\) and hence \(P=0\), violating this condition. Thus no nonzero negative coupling gives a real full Ising spectrum.

The vacuum continuation itself is real for every \(L>0\):

\[
E_{-a,\mathrm{vac}}=\frac{L}{2a}\left(1-\sqrt{1+\frac{2\pi ca}{3L^2}}\right).
\]

It must not be called the ground state of the retained real spectrum. In the vacuum module take \(m=0\), left level \(n\to\infty\); nonzero descendants exist for all sufficiently large \(n\). Then

\[
P=\frac{2\pi n}{L},\qquad E_0=P-\frac{\pi c}{6L},\qquad
R=\left(1-\frac{2aP}{L}\right)^2+\frac{2\pi ca}{3L^2}>0.
\]

On precisely the supplied branch,

\[
E_{-a}=\frac{L}{2a}(1-\sqrt R)=-P+\frac{L}{a}+O(P^{-1})\longrightarrow-\infty.
\]

This family stays real along the negative real coupling axis; it is not an artificial branch reached after crossing a complex interval. Its individual heat-trace terms grow without bound for every \(\beta>0\). Discarding complex levels alone therefore leaves no bounded Euclidean heat semigroup. A further cutoff or a different completion would be an additional theory, not the all-state formula above.

## 2. Spin-controlled proof of the heat-trace threshold

A total Cardy estimate by itself is insufficient: the energy contains \(P^2\), and highly chiral states do not undergo the same square-root compression as balanced states. The proof below keeps the two descendant levels separate.

### 2.1 Exact Ising products

Define

\[
F(q)=\prod_{r\ge1}(1+q^r)=\sum_{N\ge0}p_{\mathrm d}(N)q^N,
\qquad
G(q)=\prod_{r\ge0}(1+q^{2r+1})=\sum_{N\ge0}p_{\mathrm{do}}(N)q^N.
\]

The Ramond spin character and the even/odd Neveu–Schwarz projections give exactly

\[
a_\sigma(n)=p_{\mathrm d}(n),\qquad
a_0(n)=p_{\mathrm{do}}(2n),\qquad
a_\epsilon(n)=p_{\mathrm{do}}(2n+1).
\]

For example, the NS product uses energies \(r+1/2\); replacing \(q^{1/2}\) by a new variable gives distinct odd parts, and the parity of their sum is the fermion-number parity. This explains both projections without an assumption about spin distribution.

### 2.2 Elementary coefficient bound; no unproved use of total Cardy

For \(W=\mathbb N_{>0}\) or the positive odd integers, write

\[
F_W(q)=\prod_{w\in W}(1+q^w),\qquad b_W(N)=[q^N]F_W(q).
\]

Euler–Maclaurin applied to \(f(x)=\log(1+e^{-x})\), whose integral is \(\pi^2/12\), gives as \(s\downarrow0\)

\[
F_W(e^{-s})=C_W e^{K_W/s}(1+O(s)),
\]

with

\[
(K_{\mathbb N},C_{\mathbb N})=(\pi^2/12,2^{-1/2}),\qquad
(K_{\mathrm{odd}},C_{\mathrm{odd}})=(\pi^2/24,1).
\]

The second identity also follows by dividing \(F(e^{-s})\) by \(F(e^{-2s})\).

Here is a direct proof of the polynomial factor needed at the Hagedorn endpoint. Introduce independent Bernoulli variables \(X_w\) with

\[
\Pr(X_w=1)=p_w=(1+e^{sw})^{-1},\qquad S=\sum_{w\in W}wX_w.
\]

Then the exact Boltzmann identity is

\[
b_W(N)=e^{sN}F_W(e^{-s})\Pr(S=N).
\]

The characteristic function obeys

\[
|\mathbb E e^{i\theta S}|\le
\exp\left[-2\sum_{w\in W}p_w(1-p_w)\sin^2(w\theta/2)\right].
\]

On a block of weights \(w\asymp s^{-1}\), \(p_w(1-p_w)\) is uniformly bounded below. Put \(M=\lfloor1/s\rfloor\). For either consecutive integers or consecutive odd integers in such a block, elementary finite geometric-sum estimates give constants \(\gamma,c,C>0\), independent of \(M\), such that

\[
\begin{aligned}
\sum\sin^2(w\theta/2)&\ge cM^3\theta^2, &&|\theta|\le\gamma/M,\\
\sum\sin^2(w\theta/2)&\ge cM, &&\gamma/M\le|\theta|\le\pi.
\end{aligned}
\]

For clarity about the lattice subtlety: near zero the first inequality is \(\sin u\asymp u\) and \(\sum w^2\asymp M^3\). Away from zero, write the sine-square sum as half the block length minus half a geometric sum. Outside \(O(M^{-1})\) neighborhoods of a geometric-sum resonance its modulus is bounded by \(1/|\sin(\theta/2)|\), or \(1/|\sin\theta|\) for odd weights. The intermediate scaled neighborhoods are controlled by the positive continuous integrals of \(\sin^2(vx/2)\) on a fixed interval of \(v\). For odd weights the possible extra geometric resonance at \(\theta=\pi\) is **not** a characteristic-function peak: there \(\sin^2(w\theta/2)=1\); near it the corresponding integral is of \(\cos^2(vx/2)\), again uniformly positive on compact scaled intervals. This supplies the second inequality there as well.

Fourier inversion consequently yields

\[
\Pr(S=N)\le\frac1{2\pi}\int_{-\pi}^{\pi}|\mathbb E e^{i\theta S}|\,d\theta
\le Cs^{3/2}.
\]

Choose \(s=\sqrt{K_W/N}\). After enlarging a constant to cover small \(N\),

\[
\boxed{b_W(N)\le C(N+1)^{-3/4}e^{2\sqrt{K_WN}}.}
\]

Therefore all three Ising modules satisfy the uniform bound

\[
\boxed{a_i(n)\le C(n+1)^{-3/4}e^{A\sqrt n},\qquad A=\pi/\sqrt3.}
\]

The harmless shift \(2n+1\) in the energy character is absorbed into the constant. This bound, not a merely logarithmic Cardy statement, is what proves endpoint convergence below.

For later refinements one can also obtain the exact asymptotic from the same argument, without importing a local central-limit theorem as an unsupported black box. Differentiating the Euler–Maclaurin expansion gives

\[
\mathbb ES=K_W/s^2+O(1),\qquad \operatorname{Var}S=2K_W/s^3+O(1).
\]

The sum of absolute third cumulant bounds is \(O(s^{-4})\). At \(\theta=s^{3/2}u\), the centered characteristic function thus tends to \(e^{-K_Wu^2}\), with error \(O(s^{1/2}|u|^3)\) for fixed \(u\). The modulus bounds just proved provide an integrable Gaussian majorant in the central region and an exponentially small remainder outside it. Fourier inversion and dominated convergence give

\[
\Pr(S=N)\sim\frac{s^{3/2}}{2\sqrt{\pi K_W}},\quad s=\sqrt{K_W/N},
\]

hence

\[
b_W(N)\sim \frac{C_WK_W^{1/4}}{2\sqrt\pi}\,N^{-3/4}e^{2\sqrt{K_WN}}.
\]

In particular,

\[
a_i(n)\sim C_i n^{-3/4}e^{A\sqrt n},\quad
C_0=C_\epsilon=\frac1{4\sqrt2\,3^{1/4}},\qquad C_\sigma=\frac1{4\,3^{1/4}}.
\]

The main trace theorem does not require this last lower asymptotic: the proved upper bound and the product-growth argument in Section 2.4 suffice.

### 2.3 Endpoint upper bound with the momentum sum retained

Set \(N=n+m\), \(j=n-m\). In sector \(i\), the exact energy is

\[
E_{i,N,j}=\sqrt{\alpha N+B_i+d j^2}-\frac{L}{2\lambda},\quad
\alpha=\frac{2\pi}{\lambda},\quad d=\frac{4\pi^2}{L^2},\quad
B_i=\alpha\left(2h_i-\frac{c}{12}\right)+\frac{L^2}{4\lambda^2}.
\]

The allowed \(j\)'s have the parity of \(N\). The entropy exponent obeys

\[
A(\sqrt n+\sqrt m)\le A\sqrt{2N}
=\beta_H\sqrt{\alpha N},\qquad
\beta_H^2=\frac{2\pi c\lambda}{3}=\frac{\pi\lambda}{3}.
\]

For \(|j|\le\sqrt N\), both \(n,m\asymp N\), and the coefficient bound together with the difference-of-square-roots formula gives

\[
a_i(n)a_i(m)e^{-\beta_HE_{i,N,j}}
\le C N^{-3/2}\exp[-c j^2/\sqrt N].
\]

Thus the sum over this central momentum window is at most

\[
CN^{-3/2}\sum_{j\in\mathbb Z}e^{-c j^2/\sqrt N}\le CN^{-5/4}.
\]

For \(\sqrt N<|j|\le N/2\), the energy increment above \(\sqrt{\alpha N}\) is bounded below by a positive constant times \(|j|\), up to a harmless bounded correction. The resulting sum is exponentially small in \(\sqrt N\). In the remaining edge region \(|j|>N/2\), the energy is at least a positive constant times \(N\), whereas the logarithm of the multiplicity is only \(O(\sqrt N)\). Its contribution is also summable. Finitely many small shells do not matter.

Therefore

\[
\sum_{i,n,m}a_i(n)a_i(m)e^{-\beta_HE_{i,n,m}}<\infty.
\]

For \(\beta>\beta_H\), shift the ground energy to zero and use monotonicity. This proves the entire convergence half, including the endpoint, with an explicit momentum bound.

### 2.4 Subcritical divergence from a genuine zero-momentum subsector

A proof below the threshold must exhibit sufficiently many low-momentum states rather than assign the full Cardy degeneracy to \(P=0\).

Already \(a_\sigma(n)=p_{\mathrm d}(n)\) is enough. The product asymptotic \(\log F(e^{-s})\sim K/s\), \(K=\pi^2/12\), implies that for every \(\varepsilon>0\) there are infinitely many \(n\) with

\[
a_\sigma(n)\ge e^{(2\sqrt K-\varepsilon)\sqrt n}.
\]

Otherwise an eventual bound with the strictly smaller exponent would imply

\[
F(e^{-s})\le \text{polynomial}(s^{-1})\,
\exp\left[\frac{(2\sqrt K-\varepsilon)^2}{4s}\right],
\]

contradicting its exact leading \(K/s\) exponent. This argument uses only positivity and a one-dimensional Laplace maximum.

Pair equal left and right levels \(n=m\) in that sector. These are actual \(P=0\) states, with multiplicity \(a_\sigma(n)^2\), and

\[
E_{\sigma,n,n}=2\sqrt{\pi n/\lambda}+O(1).
\]

For any \(\beta<\beta_H\), choose \(\varepsilon\) small enough. Along the subsequence just exhibited,

\[
a_\sigma(n)^2e^{-\beta E_{\sigma,n,n}}\longrightarrow\infty.
\]

The heat series cannot converge. This proves the divergent half without relying on the optional exact coefficient asymptotic.

### 2.5 Refinement: spin width, the finite endpoint, and divergent moments

The full coefficient asymptotic derived above sharpens the endpoint estimate to an equivalent. At \(\beta=\beta_H\), the thermally selected spins are

\[
|j|\asymp N^{1/4},
\]

not the \(N^{3/4}\) width selected by seed degeneracies alone. Indeed

\[
\beta_HE_{i,N,j}
=\beta_H\sqrt{\alpha N}-\frac{\beta_HL}{2\lambda}
+\kappa\frac{j^2}{\sqrt N}+o(1),\qquad
\kappa=\frac{\beta_Hd}{2\sqrt\alpha}
=\frac{2\sqrt c\,\lambda\pi^2}{\sqrt3 L^2}.
\]

Meanwhile the entropy loss from imbalance is \(O(j^2/N^{3/2})\), negligible on this much narrower window. Summing the Gaussian on the correct parity sublattice yields

\[
W_N:=\sum_{i,n+m=N}a_i(n)a_i(m)e^{-\beta_HE_{i,n,m}}
\sim D N^{-5/4},
\]

where for Ising

\[
D=e^{\beta_HL/(2\lambda)}\frac{\sqrt2}{8\sqrt3}\sqrt{\frac\pi\kappa}>0.
\]

The tail bounds in Section 2.3 justify discarding the complement of the scaling window. In a smoothed energy-density notation this is

\[
\rho(E)\asymp E^{-3/2}e^{\beta_HE}.
\]

The shell equivalent, rather than a pointwise density for a discrete spectrum, is the precise statement being used. Consequently, with \(K=H_\lambda-E_{\lambda,\mathrm{vac}}\ge0\),

\[
\operatorname{Tr}(1+K)^r e^{-\beta_HK}<\infty
\quad\Longleftrightarrow\quad r<\frac12
\qquad(r\ge0).
\]

In particular the endpoint partition function is finite but its first temperature derivative is not finite. An analytic thermal continuation can have a square-root singularity with a finite value.

For the elementary tail integral, putting \(\delta=\beta-\beta_H>0\) and \(E_*>0\),

\[
\int_{E_*}^{\infty}E^{-3/2}e^{-\delta E}\,dE
=\delta^{1/2}\Gamma\!\left(-\frac12,\delta E_*\right)
\longrightarrow\frac{2}{\sqrt{E_*}}.
\]

**Source correction actually checked:** Datta–Jiang, JHEP 08 (2018) 106, PDF page 14 / printed page 13, correctly displays the \(E^{-3/2}\) prefactor in (4.7), but its displayed incomplete-gamma evaluation in (4.8), with powers \(-5/2\) and parameter \(5/2\), is not the integral written on its left. The corrected identity above was checked by Mathematica. The page was rendered and visually inspected; this is not an OCR guess. No numerical threshold constant from that paper is imported without reconciling its length/energy conventions.

## 3. What positive collars can and cannot guarantee

All times in this section are physical Euclidean lengths for a cylinder with metric \(d\tau^2+dx^2\), \(x\sim x+L\). Let \(K=H_\lambda-E_{\lambda,\mathrm{vac}}\), \(T_t=e^{-tK}\). A scalar vacuum-energy shift does not affect any threshold.

### 3.1 Exact operator-ideal conditions

For \(L\ge\beta_H\), \(K\) is the nonnegative diagonal self-adjoint operator on its natural square-summable domain. Its eigenvalues go to infinity. Thus:

| Requested object | Exact spectral collar condition |
|---|---|
| Bounded cylinder map \(T_t\) | Every \(t\ge0\); contraction after the ground shift |
| Compact cylinder map | Every \(t>0\) |
| Schatten \(\mathcal S_p\), \(1\le p<\infty\) | \(pt\ge\beta_H\) |
| Hilbert–Schmidt cylinder / Hilbert tensor vector | \(t\ge\beta_H/2\) |
| Trace-class cylinder closure | \(t\ge\beta_H\) |

The endpoint inclusions are special information established above. For a dimensionless annular coordinate \(q=e^{-2\pi t/L}\), the same conditions must first be converted using \(t=-(L/2\pi)\log|q|\). A dimensionless collar width and physical proper time are not interchangeable.

### 3.2 Trace-class products: total damping is sufficient and sharp

Let \(A_1,\ldots,A_m\) be bounded operators and \(t_i>0\), with total \(T=\sum_i t_i\). If \(T\ge\beta_H\), put \(p_i=T/t_i\). Then \(\sum_i1/p_i=1\), and

\[
\|T_{t_i}\|_{p_i}=\bigl(\operatorname{Tr}e^{-TK}\bigr)^{1/p_i}.
\]

Schatten Hölder gives

\[
\left\|T_{t_1}A_1\cdots T_{t_m}A_m\right\|_1
\le\left(\prod_i\|A_i\|\right)\operatorname{Tr}e^{-TK}<\infty.
\]

This condition is sharp as a *universal sufficient condition for trace-class products*: choosing every \(A_i=1\) reduces the assertion to the exact heat-trace threshold. It also gives trace-norm convergence when each heat factor is replaced by its finite spectral truncation. This is a well-defined cutoff limit of the operator product.

**It does not prove absolute summability over every individual intermediate energy eigenvector.** Trace-norm convergence of grouped finite-rank contractions and arbitrary termwise Fubini are distinct assertions.

### 3.3 Complete fine-entry history sums: stronger conditions and a counterexample

For \(m\ge2\), the complete absolute sum is

\[
\sum_{a_1,\ldots,a_m}
\prod_{i=1}^{m}e^{-t_iK_{a_i}}\,
\left|(A_i)_{a_i a_{i+1}}\right|,
\qquad a_{m+1}=a_1.
\]

A simple sufficient certificate is **each** \(2t_i\ge\beta_H\). Define the nonnegative-entry matrix

\[
(B_i)_{ab}=e^{-t_iK_a}|(A_i)_{ab}|.
\]

It is Hilbert–Schmidt and satisfies

\[
\|B_i\|_2^2
=\sum_a e^{-2t_iK_a}\sum_b|(A_i)_{ab}|^2
\le\|A_i\|^2\operatorname{Tr}e^{-2t_iK}.
\]

For finite cutoffs, the nonnegative complete history sum is the trace of the product of the compressed \(B_i\)'s, bounded by the product of their Hilbert–Schmidt norms. For \(m>2\), use the first two factors in Schatten Hölder and the remaining factors as bounded operators, with operator norm bounded by Hilbert–Schmidt norm. Monotone convergence of the nonnegative sums gives

\[
\boxed{\text{absolute complete-history sum}\le
\prod_i\|A_i\|\prod_i\sqrt{\operatorname{Tr}e^{-2t_iK}}<\infty.}
\]

For \(m=1\), the universal condition is instead \(t_1\ge\beta_H\), directly from the diagonal trace bound.

Here is an explicit obstruction to replacing this certificate by total damping alone. The exact zero-momentum \(\sigma\)-sector subspace at left/right levels \(n,n\) has dimension

\[
d_n=a_\sigma(n)^2\sim C_\sigma^2n^{-3/2}e^{2A\sqrt n},\qquad
\frac{\log d_n}{E_{\sigma,n,n}}\longrightarrow\beta_H.
\]

On each such subspace choose a unitary discrete Fourier matrix \(F_{d_n}\), whose entries all have modulus \(d_n^{-1/2}\). Define each \(A_i\) by the direct sum of these unitaries, and act as the identity on the orthogonal complement. They are bounded unitaries commuting with the Hamiltonian. The absolute fine-entry cycle sum inside this block is

\[
d_n^m d_n^{-m/2}e^{-T K_n}=d_n^{m/2}e^{-T K_n}.
\]

It diverges exponentially along the blocks whenever \(T<m\beta_H/2\). For \(m\ge3\), one can simultaneously have

\[
\beta_H\le T<m\beta_H/2:
\]

the operator product is trace class, but its complete energy-basis history expansion is not absolutely summable. This counterexample already uses operators that preserve the energy blocks; no violent high-to-low energy mixing is needed.

For **equal collars** \(t_i=t\), \(m\ge2\), the sufficient and counterexample bounds match: \(t\ge\beta_H/2\) is the sharp universal threshold for absolute complete-history summability for bounded insertions. For arbitrary unequal collars, the individual half-threshold certificate is sufficient, not asserted necessary; no sharp general asymmetric characterization is claimed here.

### 3.4 What fails in transferring a CFT sewing theorem

In undeformed Ising, the fermion products directly give \(\operatorname{Tr}e^{-tK_0}<\infty\) for every \(t>0\), with all polynomial energy moments finite. This is why an arbitrarily small positive CFT collar can provide nuclear or Hilbert–Schmidt damping in many sewing arguments. At fixed \(\lambda>0\), that input is false.

Nevertheless \(T_tT_s=T_{t+s}\) remains an exact bounded-operator identity for all nonnegative times. Arbitrary Hilbert-space matrix elements of a bounded cylinder map are not obstructed simply because its trace diverges. What fails is automatic promotion to a trace-class cobordism category, or to complete absolute histories, at arbitrarily small collars.

For unbounded local fields or surface vertices, the bounded-insertion statements above do not suffice. Their matrix-element growth, relative energy bounds, renormalization, and domains must be specified separately. At the critical trace collar even \(\operatorname{Tr}Ke^{-\beta_HK}\) diverges. A strictly positive margin beyond the relevant threshold safely absorbs *polynomial* energy weights, once suitable operator bounds have independently been proved; it cannot absorb an unspecified exponential growth rate by fiat.

Likewise every circular slice that is assigned the full spectral Hilbert space must have \(L\ge\ell_*\), or strictly greater if smooth flow is needed. One cannot use CFT Weyl invariance to shrink or rescale circles freely: the dimensionful deformation breaks that shortcut. None of these cylinder estimates constructs renormalized pair-of-pants maps, a metric-dependent arbitrary-surface path integral, or higher-genus continuum sewing.

## 4. Why energy levels do not fix correlators

For a Hermitian operator \(O\), choose the translation convention \(O(\tau,x)=e^{\tau H-ixP}O(0,0)e^{-\tau H+ixP}\), with vacuum momentum zero. Its Euclidean vacuum two-point function has the spectral resolution

\[
\langle\Omega_\lambda|O(\tau,x)O(0,0)|\Omega_\lambda\rangle
=\sum_n e^{-\tau(E_n-E_\Omega)+iP_nx}
|\langle\Omega_\lambda|O(0,0)|n,\lambda\rangle|^2.
\]

Knowing all \(E_n,P_n\) and multiplicities supplies the exponentials, not their weights. On the same Hilbert space and same Hamiltonian, the bounded operators \(|0\rangle\langle1|+|1\rangle\langle0|\) and \(|0\rangle\langle2|+|2\rangle\langle0|\) can have equally normalized vacuum-created states but distinct decay exponents.

More relevantly, for any smooth unitary \(U_\lambda\) with \(U_0=1\), \([U_\lambda,P]=0\),

\[
H_\lambda^{(U)}=U_\lambda f_\lambda(H_0,P)U_\lambda^\dagger
\]

has exactly the required energy and momentum spectrum. Keeping a named seed operator fixed generally changes its matrix elements and its correlators. This family is an underdetermination counterexample to *spectral reconstruction*, not a claim that every such \(U_\lambda\) solves the TTbar Hamiltonian flow.

Differentiating the eigenvalue equation, in a nondegenerate sector and phase gauge \(\langle n|\partial_\lambda n\rangle=0\), gives

\[
\partial_\lambda E_n=\langle n|\partial_\lambda H|n\rangle,
\qquad
\partial_\lambda|n\rangle=
\sum_{m\ne n}|m\rangle\frac{\langle m|\partial_\lambda H|n\rangle}{E_n-E_m}.
\]

Energy flow knows the diagonal entries; state flow needs off-diagonal entries. Degenerate subspaces require projector flow plus a choice of unitary connection inside them. Correlators additionally require a prescription for the flow and renormalization of the inserted operator itself.

### Hamiltonian/operator-flow literature: what it does establish

[Kruthoff–Parrikar, arXiv:2006.03054v2](https://arxiv.org/abs/2006.03054v2), sections 2.1–2.2 and 3.2, separates the Hamiltonian flow into a commutator term and a zero-mode term. The first rotates eigenstates without changing eigenvalues. Its regulated state-unitary construction needs a real complete basis; the paper explicitly discusses complex-energy difficulties. Its plane dressed-operator results do not automatically extend to ordinary local cylinder operators: on the cylinder the zero-mode contribution remains, and the dressed-operator prescription is described as provisional. These points were checked against PDF pages 8, 10–11, and 26–27.

**Convention mapping:** writing their coupling as \(g\), their spectrum (2.17) is

\[
E_g^{\mathrm{KP}}=\frac{L}{4g}\left(1-\sqrt{1-\frac{8gE_0}{L}+\frac{16g^2P^2}{L^2}}\right).
\]

It equals the spectrum in this review for \(g=-\lambda/2\), a mapping checked symbolically. Hence their signs must not be imported by calling both parameters “lambda”. Their identity \(\partial_gH=i[H,\mathcal X]+\mathcal Y\) becomes \(\partial_\lambda H=-\tfrac12(i[H,\mathcal X]+\mathcal Y)\), with all operators evaluated at \(g=-\lambda/2\).

[Cardy, arXiv:1907.03394v2](https://arxiv.org/abs/1907.03394v2), studies regulated operator-flow equations and nonlocal field renormalization, including the flow of correlators, currents, and the stress tensor. Its HTML introduction and equations (1.1)–(1.6) were read. This is substantive evidence that operator prescription and UV renormalization are extra data, not a proof here of a Hilbert-space, nonperturbative cylinder sewing theorem. No formula depending on Cardy's coupling normalization is imported into the threshold calculation.

## 5. Useful extensions and counterexamples to overgeneralization

### 5.1 Integrability is not the key hypothesis for spectral Burgers flow

The factorization mechanism uses stress-tensor conservation, translation-invariant energy/momentum eigenstates, and the definition of the composite deformation. It is not intrinsically a factorized-scattering argument. [Zamolodchikov, hep-th/0401146v1](https://arxiv.org/abs/hep-th/0401146v1), sections 1–2, states the nonintegrability point and spells out local symmetry, global translation/clustering, and short-distance assumptions. [Smirnov–Zamolodchikov, arXiv:1608.05499v2](https://arxiv.org/abs/1608.05499v2), distinguishes the special solvability of the stress-tensor deformation from the integrability of the seed. These HTML sections/abstracts were fetched; no PDF equation in them was used as visually verified evidence.

For a general seed at zero momentum, the Burgers characteristic relation is

\[
E_\lambda(L)=E_0(R),\qquad L=R-\lambda E_0(R).
\]

A vacuum branch point occurs when

\[
1-\lambda E_0'(R)=0.
\]

If \(E_0(R)=-\pi c_{\mathrm{UV}}/(6R)\) exactly, minimizing \(L=R+\lambda\pi c_{\mathrm{UV}}/(6R)\) reproduces \(\ell_*\). For a nonconformal or nonintegrable massive seed this square-root formula is generally not exact; its full vacuum equation of state matters. A UV CFT asymptotic controls the small-coupling/small-branch-radius limit, not automatically the threshold at arbitrary coupling. [Cavaglià et al., arXiv:1608.05534v2](https://arxiv.org/abs/1608.05534v2), section 4.1, equations (4.14)–(4.19), provides this characteristic/branch-point route; PDF page 10 / printed page 9 was visually checked.

A thermal-plus-magnetic perturbation of Ising is a natural nonintegrable seed to test this route, but neither its exact deformed spectrum nor its continuum sewing limit was computed here. Nonintegrability does not remove the need for a regulator, stress-tensor composite prescription, or operator bounds.

### 5.2 “Irrelevant” alone does not imply a Hagedorn collar obstruction

A simple contrasting **Lorentz-breaking** deformation on Majorana Fock sectors replaces the one-particle energies by

\[
\omega_g(k)=|k|+g|k|^3,\qquad g>0,\quad[g]=\text{length}^2,
\]

with a chosen finite normal-ordering constant and standard NS/R momenta. This corresponds to adding higher spatial derivatives, not higher time derivatives. For each fixed sector,

\[
\log Z_g(t)\le C+2\sum_{k>0}e^{-t\omega_g(k)}<\infty
\quad\text{for every }t>0.
\]

Finite spin-sector sums and parity projections preserve finiteness. Thus a higher-spatial-derivative irrelevant deformation can retain all-positive-time trace class. This is a directly defined spectral/Fock comparison, not a Lorentz-invariant TTbar replacement or a proof of its arbitrary-surface sewing. Its purpose is to identify the actual mechanism: square-root compression combined with state degeneracy, not the adjective “irrelevant”.

Higher conserved-current scalar deformations discussed by Smirnov–Zamolodchikov are another possible comparison class, but their UV density must be calculated separately. A naive \(J\bar T\) example is not intrinsic to the plain Ising model, which has no continuous holomorphic weight-one current.

## 6. Sources, evidence, and checks actually performed

### Preserved authoritative PDF evidence

- [Kruthoff–Parrikar PDF, arXiv:2006.03054v2](</Users/koishi/Documents/Note/Articles/Quantization in AdS/ttbar-sewing/sources/uv-independent/kruthoff-parrikar-2006.03054v2.pdf>): downloaded from the explicit v2 arXiv PDF URL; title page records 24 November 2020. In this 49-page file PDF/printed page numbers agree at the cited locations. Visually inspected [page 8](</Users/koishi/Documents/Note/Articles/Quantization in AdS/ttbar-sewing/sources/uv-independent/state-p8.png>) for (2.9)–(2.11), [page 10](</Users/koishi/Documents/Note/Articles/Quantization in AdS/ttbar-sewing/sources/uv-independent/state-p10.png>) for (2.17)–(2.20) and the complex-spectrum caveat, [page 11](</Users/koishi/Documents/Note/Articles/Quantization in AdS/ttbar-sewing/sources/uv-independent/state-p11.png>) for the formal unitary, [page 26](</Users/koishi/Documents/Note/Articles/Quantization in AdS/ttbar-sewing/sources/uv-independent/state-p26.png>) for the cylinder spectral correlator, and [page 27](</Users/koishi/Documents/Note/Articles/Quantization in AdS/ttbar-sewing/sources/uv-independent/state-p27.png>) for provisional dressing and its caveat.
- [Cavaglià et al. PDF, arXiv:1608.05534v2](</Users/koishi/Documents/Note/Articles/Quantization in AdS/ttbar-sewing/sources/uv-independent/cavaglia-et-al-1608.05534v2.pdf>): downloaded from the explicit v2 arXiv PDF URL. Visually inspected [PDF page 10 / printed page 9](</Users/koishi/Documents/Note/Articles/Quantization in AdS/ttbar-sewing/sources/uv-independent/cavaglia-p10.png>) for branch-point conditions and the pure-CFT threshold.
- [Datta–Jiang published PDF, JHEP 08 (2018) 106](</Users/koishi/Documents/Note/Articles/Quantization in AdS/ttbar-sewing/sources/uv-independent/datta-jiang-JHEP08-2018-106.pdf>): downloaded from [INSPIRE's publication file](https://inspirehep.net/files/e97de3ebd5fb4a2c1a603b1a28113d9d), identified by title/author/DOI on the first page; associated [arXiv record 1806.07426](https://arxiv.org/abs/1806.07426). Visually inspected [PDF page 6 / printed page 5](</Users/koishi/Documents/Note/Articles/Quantization in AdS/ttbar-sewing/sources/uv-independent/density-p6.png>) for its spectral normalization, and [PDF page 14 / printed page 13](</Users/koishi/Documents/Note/Articles/Quantization in AdS/ttbar-sewing/sources/uv-independent/density-p14.png>) for (4.7) and the algebraically incorrect incomplete-gamma evaluation in (4.8).

PDF text extraction was used for navigation; the listed pages were actually rendered and read as images. No source's “Hagedorn” wording was treated as a substitute for the convergence proof.

### Analytic verification

- Full-state positive-sign reality: vacuum discriminant plus monotonicity.
- Negative sign: explicit real chiral runaway, and independent complex balanced tower.
- Heat trace: elementary product/Fourier coefficient upper bound, genuine zero-spin lower subsequence, and explicit spin-window summation.
- Endpoint refinement: local Fourier saddle with a proved Gaussian domination bound; no assumption that total Cardy degeneracy sits at zero momentum.
- Collar classes: exact Schatten identities; Hölder only for operator products; separate Hilbert–Schmidt certificate and Fourier-block counterexample for complete absolute histories.
- Spectral underdetermination: explicit same-spectrum/different-matrix-element construction.

### CAS and finite numerical checks

Mathematica returned zero residuals, with an empty final message list, for the inverse spectral relation, the Burgers PDE with quantized momentum, and the Kruthoff–Parrikar coupling map. It returned the stated closed expressions for the positive vacuum discriminant and the negative chiral completion term. It also verified the equality of the entropy/Hagedorn exponents and the corrected incomplete-gamma tail identity, and evaluated the momentum Gaussian coefficient. Initial exploratory input mistakes were corrected before these checks were accepted.

The reproducible [finite-coefficient check script](</Users/koishi/Documents/Note/Articles/Quantization in AdS/ttbar-sewing/sources/uv-independent/uv-numerics.py>) uses exact integer dynamic programming for distinct and distinct-odd partitions through descendant level 4000. Its [numerical report](</Users/koishi/Documents/Note/Articles/Quantization in AdS/ttbar-sewing/sources/uv-independent/uv-numerics.md>) records:

- the ratios to the three predicted coefficient asymptotics approach one;
- for \(\lambda=1,L=2\), \(\beta_H=1.0233267079\), the predicted \(N^{5/4}W_N\) limit is \(D=0.3546234087\), while the exact-coefficient finite shell at \(N=4000\) gives \(0.3509823685\);
- the real negative-sign chiral energies satisfy \(E/P\to-1\), already \(-0.9996816934\) at level 2000.

These are numerical support, not proofs of convergence. The analytical arguments above establish the threshold independently of finite truncation.

### Assumptions and not verified

**Assumptions:** the stated diagonal Ising Hilbert space and its exact character products; unchanged state multiplicities under the proposed spectral flow; the supplied principal-branch spectrum; bounded insertions where explicitly named; ordinary positive Hilbert-space trace, not a graded trace or an analytically continued partition function.

**Not verified / not claimed:** an all-orders nonperturbative continuum Hamiltonian density realizing these spectral data; a local renormalized operator algebra with the requisite bounds; continuum pair-of-pants vertices or arbitrary-surface sewing; a proof that a lattice regulator converges at fixed nonzero coupling; sharp asymmetric-collar criteria for complete histories; exact nonintegrable-seed thresholds at arbitrary coupling; all normalization choices in every cited paper. No independent sub-subagent was available at this delegation depth; the main audit is independent of the parent construction, and the complete-history distinction was additionally cross-checked in discussion with the parent.

Only this new review and its source/check evidence were saved by this reviewer. No existing research prose or main candidate was modified.
