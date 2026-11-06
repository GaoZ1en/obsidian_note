# Independent finite-spin review: exact amplitudes, non-Markov Gibbs states, and retained histories

## Result and scope

**Finite-dimensional Euclidean amplitude sewing is exact for arbitrary finite coupling and finite inverse temperature when the full time-ordered insertion histories are retained. Static marginal gluing does not follow.** The three-qubit Hamiltonian below gives a strict counterexample at every finite positive inverse temperature, including an exact family of different global states with its same pair marginals.

This is an independent derivation from the supplied problem and conventions. No principal-agent draft or proposed conclusion was consulted. Only this review and its two exclusively named verification companions were created. The applicable instructions were read; the archival navigation requested one missing index, which was not reconstructed. No archived note or other project file was changed.

| Object called “sewing” | Precise result |
|---|---|
| Full matrix observable algebra on disjoint tensor factors | Canonical tensor-product algebra isomorphism, independent of the Hamiltonian or state. |
| Euclidean operator, endpoint amplitude, or partition function | Exact absolutely convergent Duhamel sewing from independent regional kernels plus specified crossing interactions. |
| Arbitrary global density state from overlapping pair marginals | Not unique in general, even when both marginals are those of a full-rank nearest-neighbour Gibbs state. |
| Recovery under the exact quantum Markov condition | A distinct, additional constraint; it fails strictly in the example below. |
| Reconstruction with a specified local-Gibbs prior | Unique if such a Gibbs state exists; it is the unique maximum-entropy extension of its local marginals. This is not arbitrary-state recovery or a Markov product formula. |
| Replica permutation identity | Exact finite-dimensional trace identity, independent of Markovness; it does not supply missing state data. |

Conventions: finite-dimensional complex spin Hilbert spaces, no gauge redundancy, \(\hbar=k_B=1\), self-adjoint Hamiltonians, \(0\leq\beta<\infty\), natural logarithms. Norms below are operator norms. Energy units are chosen so that the two couplings in the explicit model equal one. No infinite-volume, continuum, or uniform zero-temperature convergence is asserted.

The exact computational evidence is [finite_review_checks.sage](</Users/koishi/Documents/Note/Articles/Quantization in AdS/gluing/strongly-correlated-sewing/verification/finite_review_checks.sage>) and [finite_review_results.json](</Users/koishi/Documents/Note/Articles/Quantization in AdS/gluing/strongly-correlated-sewing/verification/finite_review_results.json>). The last section states exactly what the seven checks do and do not verify.

## 1. Algebra sewing is not a state prescription

For disjoint regions \(L,R\), independently specify \(\mathcal H_L,\mathcal H_R\) and \(\mathcal A_r=B(\mathcal H_r)\). The map

\[
\mathcal A_L\otimes\mathcal A_R\longrightarrow
B(\mathcal H_L\otimes\mathcal H_R),\qquad A\otimes B\longmapsto A\otimes B
\]

is a unital *-algebra isomorphism. Tensor products of regional matrix units form all global matrix units, proving both injectivity and surjectivity. The map is associative under the canonical associators of Hilbert tensor products. No crossing interaction is needed to establish this kinematical statement. Crossing interactions are additional dynamical input, not new generators required to complete an already full matrix algebra.

For overlapping regions \(AB\) and \(BC\), their copies of \(B\) must instead be identified in the common elementary tensor product \(\mathcal H_A\otimes\mathcal H_B\otimes\mathcal H_C\). Naive multiplication from \(B(\mathcal H_{AB})\otimes B(\mathcal H_{BC})\) is not an algebra homomorphism: its two source factors commute, whereas their images on the shared \(B\) need not commute. Algebra assembly on elementary disjoint sites and state extension from overlapping restrictions are different questions.

## 2. Exact non-Markov local Gibbs example

Let \(A,B,C\) be qubits, with the standard Pauli matrices and computational basis ordered \(000,001,\ldots,111\). Define

\[
P=Z_A\otimes X_B\otimes I_C,\qquad
Q=I_A\otimes Z_B\otimes Z_C,\qquad H=P+Q.
\]

There is no \(A\)-\(C\) interaction. Nevertheless,

\[
P^2=Q^2=I,\qquad PQ=-QP,\qquad H^2=2I.
\]

The energy eigenvalues are \(\pm\sqrt2\), each fourfold degenerate: \(H^2=2I\) fixes the possible eigenvalues, and \(\operatorname{Tr}H=0\) fixes their multiplicities. Put

\[
t=\tanh(\sqrt2\beta),\qquad a=t/\sqrt2.
\]

Then

\[
e^{-\beta H}=\cosh(\sqrt2\beta)I
-\frac{\sinh(\sqrt2\beta)}{\sqrt2}H,
\qquad Z=8\cosh(\sqrt2\beta),
\]

\[
\rho=\frac{I-a(P+Q)}8,
\qquad \operatorname{Spec}(\rho)=
\left\{\frac{1+t}8\ [4],\ \frac{1-t}8\ [4]\right\}.
\]

Partial traces give

\[
\rho_{AB}=\frac{I_{AB}-aZ_AX_B}{4},\qquad
\rho_{BC}=\frac{I_{BC}-aZ_BZ_C}{4},\qquad
\rho_B=I_B/2.
\]

Each pair marginal has eigenvalues \((1+a)/4\) and \((1-a)/4\), each twice. With \(h(p)=-p\ln p-(1-p)\ln(1-p)\),

\[
S(ABC)=\ln4+h\!\left(\frac{1+t}{2}\right),\quad
S(AB)=S(BC)=\ln2+h\!\left(\frac{1+a}{2}\right),\quad
S(B)=\ln2.
\]

Therefore

\[
I(A:C\mid B)=2h\!\left(\frac{1+t/\sqrt2}{2}\right)
-h\!\left(\frac{1+t}{2}\right)-\ln2.
\]

### Strict positivity, not merely a numerical observation

For \(|x|<1\), differentiating and integrating the geometric-series expansion of \(\operatorname{arctanh}x\) gives

\[
h\!\left(\frac{1+x}{2}\right)
=\ln2-\sum_{n\geq1}\frac{x^{2n}}{2n(2n-1)}.
\]

Consequently,

\[
\boxed{
I(A:C\mid B)=\sum_{n\geq2}
\frac{(1-2^{1-n})t^{2n}}{2n(2n-1)}>0
\quad(0<\beta<\infty).
}
\]

Every summand is positive. The first nonzero term is \(t^4/24\), hence

\[
I(A:C\mid B)=\beta^4/6+O(\beta^6).
\]

At \(\beta=0\), the state is maximally mixed and the conditional mutual information vanishes. Continuity at \(t=1\) also gives a strictly positive zero-temperature limit, but no infinite-\(\beta\) convergence statement for the later Duhamel expansion is needed.

Thus the absence of an \(A\)-\(C\) Hamiltonian term does not imply the exact Markov condition \(I(A:C\mid B)=0\). This example does not claim that every noncommuting local Gibbs Hamiltonian is non-Markov.

### Why two familiar static products fail

All overlapping operators below are embedded in \(ABC\). The naive overlap product is

\[
\rho_{AB}\rho_B^{-1}\rho_{BC}
=\frac{I-a(P+Q)+a^2PQ}{8}.
\]

Since \((PQ)^\dagger=-PQ\) and \(PQ\ne0\), this is not even Hermitian when \(\beta>0\).

The Petz channel constructed from \(\rho_{BC}\) and \(\rho_B\), applied to the specified \(\rho_{AB}\), gives

\[
\omega=2\sqrt{\rho_{BC}}(\rho_{AB}\otimes I_C)\sqrt{\rho_{BC}}
=\frac{I-aQ-a\sqrt{1-a^2}P}{8}\ne\rho.
\]

To verify the second equality, write \(\sqrt{I-aQ}=uI+vQ\). Its sandwich with \(P\) is \((u^2-v^2)P=\sqrt{1-a^2}P\), because \(PQ=-QP\). The output has the correct \(BC\) marginal, but its \(AB\) coefficient is reduced from \(a\) to \(a\sqrt{1-a^2}\).

There is a separate failure if the inputs are isolated regional Gibbs states instead of actual global marginals. For example,

\[
\frac{e^{-\beta Z_AX_B}}{\operatorname{Tr}e^{-\beta Z_AX_B}}
=\frac{I-\tanh\beta\,Z_AX_B}{4},
\]

which differs from \(\rho_{AB}\). Indeed, \(f(x)=\tanh x/x\) is strictly decreasing on \(x>0\): the positive numerator \(\tanh x-x\operatorname{sech}^2x\) has derivative \(2x\operatorname{sech}^2x\tanh x>0\). Hence \(\tanh(\sqrt2\beta)/\sqrt2<\tanh\beta\).

## 3. Same actual Gibbs marginals, different global state and entropy

Set

\[
W=Z_A\otimes I_B\otimes Z_C,\qquad
\rho_\epsilon=\rho+\epsilon W/8,
\qquad 0<|\epsilon|<1-t.
\]

Here \([W,H]=0\), \(W^2=I\), and \(\operatorname{Tr}_AW=\operatorname{Tr}_CW=0\). Therefore both pair marginals of \(\rho_\epsilon\) coincide exactly with those of \(\rho\). Its positivity and spectrum can be read from the simultaneous projectors

\[
\Pi_{q,s}=\frac14(I+qH/\sqrt2)(I+sW),\qquad q,s\in\{\pm1\}.
\]

They are mutually orthogonal projectors of rank two; the rank follows from the vanishing traces of \(H,W,HW\). They sum to \(I\), and

\[
\rho_\epsilon\Pi_{q,s}
=\frac{1-qt+s\epsilon}{8}\Pi_{q,s}.
\]

Thus \(\rho_\epsilon\) is strictly positive in the stated interval and has a different global spectrum.

The entropy difference is strictly positive without diagonalizing logarithms. Since

\[
\log\rho=-\beta H-\ln Z,\qquad
\operatorname{Tr}(\rho_\epsilon H)=\operatorname{Tr}(\rho H),
\]

one obtains

\[
\boxed{S(\rho)-S(\rho_\epsilon)=D(\rho_\epsilon\Vert\rho)>0.}
\]

The last strict inequality is the equality criterion for finite-dimensional relative entropy: equality holds only when the density matrices coincide. They do not coincide for \(\epsilon\ne0\).

A particularly short, but rank-deficient, separate example is the pure GHZ state and the classical mixture

\[
|\mathrm{GHZ}_+\rangle\langle\mathrm{GHZ}_+|,
\qquad
\tfrac12(|000\rangle\langle000|+|111\rangle\langle111|).
\]

Their \(AB\) and \(BC\) marginals agree, whereas their entropies are \(0\) and \(\ln2\). The \(\rho_\epsilon\) construction avoids both rank deficiency and changing the specified pair marginals.

### Essential caveat: local Gibbs prior and maximum-entropy uniqueness

Suppose \(\rho=e^{-K}/\operatorname{Tr}e^{-K}\) is full rank with \(K=K_{AB}+K_{BC}\). Every state \(\sigma\) with the same \(AB\) and \(BC\) marginals has \(\operatorname{Tr}\sigma K=\operatorname{Tr}\rho K\), so

\[
D(\sigma\Vert\rho)=S(\rho)-S(\sigma)\geq0.
\]

Thus \(\rho\) is the unique maximum-entropy extension of its marginals. If \(\sigma\) is also a full-rank local Gibbs state of this same support pattern, applying the argument in both directions implies \(\rho=\sigma\). No commutativity assumption is needed. At a known \(\beta>0\), that parameter may simply be absorbed into \(K\).

The states \(\rho_\epsilon\) are not counterexamples to this statement: they are arbitrary global extensions, not assumed to remain in the \(AB+BC\) Gibbs family. Their unique logarithmic Hamiltonians need not have that support pattern. Local-Gibbs uniqueness is a constrained maximum-entropy inference theorem, not a claim of efficient reconstruction, a naive product formula, or Markov recovery.

A useful strengthening is that the two pair marginals in Section 2 admit **no Markov extension at all**. If such an extension \(\sigma\) existed, then

\[
S(\sigma)=S(AB)+S(BC)-S(B)=S(\rho)+I_\rho(A:C\mid B)>S(\rho),
\]

contradicting the maximum-entropy theorem just proved.

## 4. Fresh derivation: absolutely convergent boundary-history sewing

### 4.1 Independent regional input

Specify finite-dimensional \(\mathcal H_L,\mathcal H_R\), self-adjoint internal Hamiltonians \(H_L,H_R\), and a specified finite decomposition of the crossing interaction,

\[
H_0=H_L\otimes I+I\otimes H_R,\qquad
V=\sum_{\mu=1}^{M}A_\mu\otimes B_\mu,
\qquad H=H_0+V=H^\dagger.
\]

Such a finite tensor decomposition always exists for a finite matrix. Its factors need not individually be self-adjoint; alternatively one may use Hermitian operator bases with explicit real coefficients. All coefficients are included in the stated tensor terms. The crossing interaction is extra input: the two internal Hamiltonians alone do not specify it.

Here “boundary” means the regional operator factors of the supplied crossing terms, not an assumed continuum boundary condition. For \(0<\tau_1<\cdots<\tau_n<\beta\), define the operator-valued regional kernel

\[
K_L(\boldsymbol\tau,\boldsymbol\mu)=
e^{-(\beta-\tau_n)H_L}A_{\mu_n}
e^{-(\tau_n-\tau_{n-1})H_L}\cdots
A_{\mu_1}e^{-\tau_1H_L},
\]

and define \(K_R\) with \(H_R,B_\mu\). The empty-history kernel is \(e^{-\beta H_r}\). Each kernel is defined using that region alone, the prescribed insertion alphabet, and the time interval. No global state, global spectrum, or other region's response enters this definition.

Uncontracted matrix indices give endpoint amplitudes. Tracing a regional kernel gives a closed Euclidean regional amplitude. These are not normalized states and are not defined from the global marginal.

### 4.2 Exact formula and proof

Let \(\Delta_n(\beta)=\{0<\tau_1<\cdots<\tau_n<\beta\}\). Then

\[
\boxed{
e^{-\beta H}=
\sum_{n=0}^{\infty}(-1)^n
\sum_{\mu_1,\ldots,\mu_n}
\int_{\Delta_n(\beta)}
K_L(\boldsymbol\tau,\boldsymbol\mu)\otimes
K_R(\boldsymbol\tau,\boldsymbol\mu)\,d^n\tau.
}
\]

First, differentiate \(e^{-(\beta-s)H_0}e^{-sH}\) with respect to \(s\) and integrate to obtain the exact Volterra identity

\[
e^{-\beta H}=e^{-\beta H_0}
-\int_0^\beta e^{-(\beta-s)H_0}V e^{-sH}\,ds.
\]

Iteration gives the time-ordered Duhamel series. The remainder after \(N\) insertions is bounded by

\[
e^{\beta(\|H_0\|+\|H\|)}
\frac{(\beta\|V\|)^{N+1}}{(N+1)!},
\]

which tends to zero for every finite \(\beta\). Next expand each \(V\) into the specified tensor terms and use

\[
e^{-uH_0}=e^{-uH_L}\otimes e^{-uH_R}.
\]

This factors each ordered integrand into the two independently defined kernels, proving the displayed sewing formula.

For the stronger absolute convergence statement, put

\[
E_*=\lambda_{\min}(H_L)+\lambda_{\min}(H_R),\qquad
C=\sum_\mu\|A_\mu\|\|B_\mu\|.
\]

Since the free evolution intervals in each regional kernel total \(\beta\),

\[
\|K_L\otimes K_R\|
\leq e^{-\beta E_*}
\prod_{j=1}^n\|A_{\mu_j}\|\|B_{\mu_j}\|.
\]

The simplex volume is \(\beta^n/n!\). Therefore the absolute sum of all order-\(n\) terms is bounded by

\[
e^{-\beta E_*}\frac{(\beta C)^n}{n!},
\qquad
\sum_{n\geq0}(\text{absolute order-}n\text{ norm})
\leq e^{-\beta E_*+\beta C}<\infty.
\]

This is operator-norm absolute convergence, not merely formal convergence or a small-coupling approximation. A truncation after order \(N\) has the explicit sufficient error bound

\[
\|\mathrm{error}_N\|
\leq e^{-\beta E_*+\beta C}\frac{(\beta C)^{N+1}}{(N+1)!}.
\]

The bound is not claimed sharp or computationally efficient. “Nonperturbative” here means the convergent all-orders expression equals the exact operator at arbitrary finite coupling; any fixed finite truncation is still an approximation.

Tracing gives the exact partition-function formula

\[
Z=\sum_{n\geq0}(-1)^n\sum_{\boldsymbol\mu}
\int_{\Delta_n(\beta)}
\operatorname{Tr}K_L\,\operatorname{Tr}K_R\,d^n\tau.
\]

Absolute convergence follows from \(|\operatorname{Tr}K_r|\leq d_r\|K_r\|\). Similarly every fixed endpoint amplitude follows by matrix elements. Once the whole operator is computed, \(\rho=e^{-\beta H}/Z\) is well defined because \(H\) is self-adjoint and \(Z>0\). This is recovery from Hamiltonian-plus-interface data, not recovery from two density marginals.

The tensor-product summands are generally signed and need not be positive or Hermitian individually. Consequently this expansion is not a separable-state decomposition, and it does not remove a sign problem.

## 5. Many interfaces: when iteration order is immaterial

### Statement with retained data

Take finitely many disjoint regions \(r\), self-adjoint internal Hamiltonians \(H_r\), and finitely many interfaces \(e\) with self-adjoint interactions \(V_e\), with

\[
H=\sum_r H_r+\sum_eV_e,
\qquad
V_e=\sum_\mu\bigotimes_r O_{r,e,\mu}.
\]

Inactive regional factors are identities. Pair interfaces are the special case in which each tensor term has two nontrivial factors; the same proof allows finite hyperedges. Each original interaction is assigned and counted once. Define

\[
C_e=\sum_\mu\prod_r\|O_{r,e,\mu}\|,\qquad
E_*=\sum_r\lambda_{\min}(H_r).
\]

The sewn operator is independent of the order of summing or integrating over interface histories, **provided every intermediate object retains the full jointly time-ordered mixed insertion kernels for all remaining open interfaces, with the endpoint data needed by the final target.** Equality uses the canonical Hilbert tensor-product identifications; it does not assert that interface interaction operators commute.

### Proof by shuffles and absolute convergence

For each interface choose an ordered history

\[
0<\tau_{e,1}<\cdots<\tau_{e,n_e}<\beta.
\]

The product \(\prod_e\Delta_{n_e}(\beta)\), outside a measure-zero set of coincident times, partitions into all shuffles of the interface histories that preserve each interface's own order. In each shuffle, merge all event times and keep chronological operator order on every region. This is precisely the corresponding globally ordered Duhamel integrand. There is no extra factorial when each individual interface already uses its ordered simplex. Equivalently, unordered time cubes require the factors \(1/n_e!\).

Summing labels and taking norms on this product domain gives

\[
\text{absolute contribution at }(n_e)_e
\leq e^{-\beta E_*}\prod_e\frac{(\beta C_e)^{n_e}}{n_e!}.
\]

Summing the nonnegative majorant over every \(n_e\) yields

\[
e^{-\beta E_*}\exp\!\left(\beta\sum_e C_e\right)<\infty.
\]

Thus Tonelli applies to the majorant and Fubini applies to the finite-dimensional, operator-valued absolutely integrable series. Any order of the interface sums and integrals gives the same result. Finite sums of matrix-index contractions may also be interchanged. Equal-time order can be fixed by any deterministic convention because the coincidence sets have zero measure for these bounded, nonsingular interactions. This last argument would need revision for distributional contact interactions; none occur here.

### What a composable intermediate region must retain

A sufficient intermediate object for a cluster \(C\) consists of:

1. its Hilbert space and all endpoint matrix indices needed for the requested amplitude or density operator;
2. the identities and coupling weights of all remaining external interface insertions;
3. every mixed, multi-time, time-ordered kernel involving those remaining interface alphabets, including kernels with insertions from different interfaces interlaced in time;
4. the common time interval and orientation, with every interaction counted once.

After all internal histories of a cluster have been summed, these kernels equal

\[
e^{-(\beta-\tau_m)H_C}O_m e^{-(\tau_m-\tau_{m-1})H_C}
\cdots O_1e^{-\tau_1H_C},
\]

where \(H_C\) contains the original internal Hamiltonians and precisely those interactions already internal to \(C\). This follows by summing internal histories independently in each gap between the remaining prescribed external insertions. The semigroup glues consecutive empty gaps. It also proves closure of the retained object under iterative sewing, rather than merely equality of a final scalar after the fact.

An equivalent encoding is the complete operator-valued generating functional for independent time-dependent sources on all remaining insertion alphabets; all mixed functional derivatives must remain available. For a partition-function-only target, a correspondingly complete traced generating functional can suffice. For arbitrary endpoint amplitudes or the global density matrix, discarding the relevant matrix indices is not justified.

These are sufficient data, not a claim that no model-dependent compression is possible. Algebraic symmetries or a compressed representation may encode the same information. Conversely, retaining only a scalar partition function, a single-temperature Gibbs state without its operator/interface data, only the separate response of each interface, or a finite list of low-order correlations does not in general retain all required mixed histories. A known full-rank Gibbs state at known \(\beta>0\), together with the interface operators, can of course encode the Hamiltonian up to an additive constant via its logarithm; the missing constant matters for absolute amplitudes. Such an encoding must not be confused with bare marginal input.

### Minimal warning about the word “commute”

With \(H_0=0\) and the noncommuting \(P,Q\) from Section 2,

\[
e^{-\beta(P+Q)}
=I-\beta(P+Q)+\frac{\beta^2}{2}(P^2+PQ+QP+Q^2)+O(\beta^3),
\]

whereas

\[
e^{-\beta P}e^{-\beta Q}
=I-\beta(P+Q)+\beta^2\left(\frac{P^2+Q^2}{2}+PQ\right)+O(\beta^3).
\]

Explicitly, \(e^{-\beta P}e^{-\beta Q}-e^{-\beta(P+Q)}=\beta^2[P,Q]/2+O(\beta^3)\); reversing the product reverses that commutator contribution. In this example \(PQ+QP=0\), so the exact second-order coefficient is \(I\), while the static products have \(I\pm PQ\). The shuffle proof retains both chronological possibilities. It never interchanges \(P\) and \(Q\) inside a fixed history.

Thus “iteration order is immaterial” means order of exact contraction/elimination of complete history data, not unrestricted operator multiplication, a product of regional Gibbs matrices, or finite-order truncations with incompatible cutoff prescriptions.

## 6. Replica permutation identity: exact but logically downstream

Let \(X\) be any matrix on \(\mathcal H_A\otimes\mathcal H_{\bar A}\), and let \(T_A^{(n)}\) cyclically permute the \(n\) copies of \(\mathcal H_A\), acting trivially on the complementary copies. With the convention

\[
T_A^{(n)}|a_1,\ldots,a_n\rangle=|a_n,a_1,\ldots,a_{n-1}\rangle,
\]

one has for every positive integer \(n\)

\[
\operatorname{Tr}\!\left[X^{\otimes n}T_A^{(n)}\right]
=\operatorname{Tr}_A\!\left[(\operatorname{Tr}_{\bar A}X)^n\right].
\]

The proof is the index contraction

\[
\sum_{a_1,\ldots,a_n}\sum_{b_1,\ldots,b_n}
\prod_{j=1}^nX_{a_jb_j,a_{j-1}b_j},\qquad a_0=a_n,
\]

which is exactly the trace of the power of the partial trace. Consequently, for \(X=e^{-\beta H}\),

\[
\operatorname{Tr}\rho_A^n
=\frac{\operatorname{Tr}\![(e^{-\beta H})^{\otimes n}T_A^{(n)}]}{Z^n}.
\]

No commutativity, Markov assumption, or semiclassical approximation is used. One may substitute the convergent amplitude sewing into the numerator because there are finitely many replicas and the norm bounds remain finite. This identity neither determines \(H\) from regional marginals nor licenses an unproved analytic continuation in replica number. It is an identity for specified state/operator data.

## 7. Verification record and limitations

**Verified by exact CAS:** the seven setup/check expressions in [finite_review_checks.sage](</Users/koishi/Documents/Note/Articles/Quantization in AdS/gluing/strongly-correlated-sewing/verification/finite_review_checks.sage>) were run in the exact ring \(\mathbb Q(r)[t,\epsilon]\), \(r^2=2\). The physical embedding is \(r=+\sqrt2\); the CAS identities themselves require no ordering or floating-point tolerance. They check:

1. \(H^2=2I\);
2. zero anticommutator and nonzero commutator of \(P,Q\);
3. the \(AB\) partial trace;
4. the \(BC\) partial trace;
5. preservation of both marginals by the \(\epsilon W\) perturbation;
6. idempotence and trace two of all four joint projectors;
7. their exact eigenvalue equations for \(\rho_\epsilon\).

Every result is the exact Python Boolean `True`: **7/7 passed**. The full executed setup, every check expression, and its status/value/type are preserved in [finite_review_results.json](</Users/koishi/Documents/Note/Articles/Quantization in AdS/gluing/strongly-correlated-sewing/verification/finite_review_results.json>). A host-side AST comparison verified that the saved script's setup and check expressions exactly match those in the executed rerun output.

**Version and time:** SageMath 10.9 (release 2026-05-04), Python 3.14.3. The reproducible rerun began at `2026-11-06T16:10:29.324833+00:00` and finished at `2026-11-06T16:10:29.399677+00:00`, i.e. `2026-11-07 00:10:29 +08:00`. These are kernel-recorded times. The original successful verification response contained no timestamp, and session-history storage was unavailable; no exact original-run timestamp is invented. Its response reported 3888 ms including tool overhead; this is distinct from the internal rerun timestamps.

**First interface error, repaired:** the initial call used `QQ.extension('x^2-2','r')`. Sage requires an actual polynomial, so setup raised `TypeError: polynomial (=x^2-2) must be a polynomial.` All seven initial statuses were therefore `error`, not failed mathematical checks. Replacing that expression by `U=PolynomialRing(QQ,'x'); x=U.gen(); K=QQ.extension(x**2-2,'r')` yielded the successful seven-check run. Later, the first metadata-export rerun encountered Sage-integer JSON serialization; using `json.dumps(..., default=int)` fixed only metadata serialization, with the setup and all seven checks unchanged. Both repairs are explicitly recorded in the result archive.

**Analytically proved, not part of the seven CAS checks:** strict entropy-series positivity, Petz sandwich formula, maximum-entropy uniqueness and the no-Markov-extension corollary, all-orders Duhamel convergence, the multi-interface shuffle/Fubini theorem, and the replica index identity. Finite matrix checks are not presented as machine proofs of these general theorems.

**Not claimed:** a minimal universally compressed boundary alphabet; efficient contraction at strong coupling; state recovery from marginal data without additional hypotheses; a continuum or thermodynamic limit; uniform convergence as \(\beta\to\infty\); distributional contact-interaction sewing; replica analytic continuation. The independent-delegation depth was exhausted, so this review itself has no additional fresh sub-reviewer. Its analytic proofs and exact CAS verification are the available evidence, not a claim of an unperformed second independent review.
