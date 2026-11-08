# Independent referee analysis: stable AdS3 contact resonances

## Verdict and scope

**The all-index resonance theorem is established under the stated fixed-AdS3, fast-falloff, real-scalar, first-order contact assumptions.** The unique collision dimensions, their strict increase and asymptotics, the nonzero physical resonant coupling, and genuine square-root branches all survive this independent analysis. Larger resonance clusters do not invalidate the conclusion. **An exactly two-dimensional cluster for every index, and therefore equality of the full splitting coefficient with the displayed edge for every index, remain unproved.**

The principal claims checked are [§4.3:230–274](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/AdS3_Independent_Investigation.md#L230-L274>) and [Appendix D:1367–1888](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/AdS3_Independent_Investigation.md#L1367-L1888>). No source files were modified. No repository implementation, prior audit package, or stored result was run or imported. This review does **not** independently re-audit the finite septic/Galois claim or the finite cluster enumeration through n=8.

I first derived the ground/excited pair-channel sum, additive slopes, collision equation, root uniqueness mechanism and leading mass scale before opening the candidate text. I then read the requested locations and checked the remaining projected-coupling and regular-frame arguments. The calculations below use Δ>1, unit AdS radius, c_k=1/[8π(2Δ+2k−1)], and W/c0. The asymptotic variable N tends to infinity at fixed bidegree (P,Q), with N≥P+Q. The limit n→∞ for the exceptional dimensions is a separate limit; no uniform-in-n spectral remainder is asserted.

## 1. Independent channel derivation

Use the chiral polynomial norm d_p=p!/(Δ)_p. The chiral pair primary (x1−x2)^k has norm

    h_k = k! (2Δ+k−1)_k / (Δ)_k².

Projection of the normalized ordered ground/excited tensor |0,p⟩ onto pair channel k gives probability

    w_pk = binom(p,k)(Δ)_p /
           [(2Δ+k−1)_k (2Δ+2k)_(p−k)],       0≤k≤p.

One obtains this by raising the pair primary p−k times: its extreme coefficient is (−1)^k(Δ+k)_(p−k), and its descendant norm is h_k (p−k)!(2Δ+2k)_(p−k) before dividing by the corresponding raising normalization. The probabilities sum to one.

Only equal left/right pair channels survive the specified contact multiplier. Exchange has sign (−1)^(k+k)=+1 in every such channel. Therefore the **normalized symmetrized** ground/excited expectation, for (p,q)≠(0,0), is

    g_pq = 2 Σ_k [(2Δ−1)/(2Δ+2k−1)] w_pk w_qk.

The factor two is essential. It is not the physical ground/ground value, which is one.

This sum has an independent exact evaluation using the terminating very-well-poised Dougall 5F4 identity. With a=2Δ−1 and w_p0=(Δ)_p/(2Δ)_p, the summand ratio is

    g_pq/(2 w_p0 w_q0)
      = Σ_k [(a+2k)/a]
        (a)_k² (−p)_k(−q)_k /
        [(k!)² (2Δ+p)_k(2Δ+q)_k].

Dougall's terminating identity gives

    Σ_k ... = (2Δ)_q (p+1)_q / [q!(2Δ+p)_q].

Consequently

    g_pq = 2 binom(p+q,p)(Δ)_p(Δ)_q/(2Δ)_(p+q)
         = 2 binom(p+q,p) B(Δ+p,Δ+q)/B(Δ,Δ).

This independently reproduces [Theorem 2:1582–1615](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/AdS3_Independent_Investigation.md#L1582-L1615>) without assuming the candidate's weighted-Jacobi lemma. Checks include g_10=1, g_20=(Δ+1)/(2Δ+1), g_11=2Δ/(2Δ+1), g_pq(1)=2/(p+q+1), and g_n,n(∞)=2 binom(2n,n)/4^n.

## 2. Physical leading operator and the primary frame

For a normalized occupation with r excited particles, the ground/ground and ground/excited diagonal terms are

    binom(N−r,2) + (N−r) Σ_A n_A g_A.

After subtraction of binom(N,2), its N coefficient is

    σ = Σ_A n_A(g_A−1).

The nonnegative separately conserved chiral degrees forbid two ground particles from producing an excitation. A vertex with both an incoming and an outgoing ground leg is diagonal in the excited label. One-ground-leg off-diagonal vertices scale as √N; all-excited vertices scale as O(1). Thus in normalized full-shell occupations

    [W/c0 − binom(N,2)]/N = H0 + t H1 + O(t²),  t=N^(−1/2),

with diagonal H0 and H1 changing excitation number by exactly one.

The metric specified in the question gives a degree-r creation monomial norm proportional to t^(2r)[1+O(t²)]. Multiplying the centered primary column of minimal excitation count r by signed t^(−r) gives an analytic frame whose limiting vector is exactly its unique dipole-free normalized occupation. All other terms have greater excitation count. The order-t corrections contain a dipole, so distinct limiting primary columns are orthogonal to them. Hence the primary Gram matrix is I+O(t²); analytic orthonormalization changes no H1 matrix element. This validates [1621–1631](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/AdS3_Independent_Investigation.md#L1621-L1631>).

**A useful simplification, stronger against frame ambiguities:** for a resonant pair of limiting columns u_i(0),u_j(0), H0u_i(0)=σu_i(0), H0u_j(0)=σu_j(0). In *any* analytic orthonormal primary frame, the first-order frame terms are

    ⟨u_i'(0),H0u_j(0)⟩ + ⟨u_i(0),H0u_j'(0)⟩
      = σ (d/dt)⟨u_i(t),u_j(t)⟩|_0 = 0.

Thus the resonant compression of H1 is invariant even without the stronger dipole-orthogonality observation. Equivalently a regular frame change adds [H0,X], whose equal-eigenvalue compression vanishes. This directly excludes a hidden cancellation caused merely by primary-frame choice.

## 3. Unique collision dimensions, strict increase, and asymptotics

Put

    g_n = 2(1/2)_n(Δ)_n/[n!(Δ+1/2)_n].

The collision of c_nn and c_11 c_(n−1,n−1), n≥2, is equivalent to

    F_n(Δ) = (2Δ+1)(g_(n−1)−g_n) = 1,
    F_n(Δ) = [(2Δ+1)(Δ+2n−1)/(n(2Δ+2n−1))] g_(n−1).

Every factor (Δ+j)/(Δ+j+1/2) in g_(n−1) is strictly increasing. For a=2n−1 the remaining factor has derivative

    d/dΔ [(2Δ+1)(Δ+a)/(2Δ+a)]
      = [4Δ²+4aΔ+2a²−a]/(2Δ+a)² > 0.

Moreover F_n(1)=12/(4n²−1)<1 and F_n(Δ)→∞ at fixed n as Δ→∞. There is exactly one root Δ_n>1. The ratio F_(n+1)/F_n is less than one, because its denominator minus numerator is

    3Δ²+(8n−1)Δ+8n²−2 > 0.

Therefore Δ_(n+1)>Δ_n. These are precisely the arguments at [1675–1720](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/AdS3_Independent_Investigation.md#L1675-L1720>), independently recovered and checked.

A short explicit supplement proves unboundedness without waiting for the asymptotic theorem: at fixed Δ,

    g_(n−1) ~ [2Γ(Δ+1/2)/(√π Γ(Δ))]/n,
    F_n(Δ) = O(n^(−2)) → 0.

Thus the roots escape every bounded Δ interval. Here “unique” means the unique root of this particular collision equation. It does not claim that there are no other resonant monomials at that dimension, nor that this list contains all exceptional dimensions of all blocks.

For Δ=c n^(3/2), uniformly on compact positive c intervals,

    g_(n−1) = 2/√(πn) [1−n/(2Δ)+O(n^(−1))],
    (2Δ+1)(Δ+2n−1)/(2Δ+2n−1)
      = Δ+n−(n−1)(2n−1)/(2Δ+2n−1).

The leading estimate first traps the root at Δ_n/n^(3/2)→√π/2; applying the uniform correction at that root yields

    Δ_n = (√π/2)n^(3/2) − n/2 + O(√n).

The bootstrap in [1786–1823](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/AdS3_Independent_Investigation.md#L1786-L1823>) is valid and does not presuppose the root's scale. Since m²=Δ(Δ−2), this is also an infinite strictly increasing sequence of physical mass-squared values, with

    m_n² = (π/4)n³ − (√π/2)n^(5/2) + O(n²).

## 4. A nonzero physical edge, not just an affine Jordan entry

For radial labels write P_j(y)=P_j^(0,Δ−1)(1−2y), w(y)=(1−y)^(2Δ−2). The exact identity is

    ∫_0^1 w P_n P_(n−1) P_1 dy
      = [n/(2n−1)] ∫_0^1 w P_n² dy > 0.

The candidate's Jacobi recurrence derivation at [1722–1751](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/AdS3_Independent_Investigation.md#L1722-L1751>) is sound. A fresh rational-function check with n and β=Δ−1 as unrestricted indeterminates makes the recurrence residual exactly zero. Direct finite polynomial/Beta checks of the underlying unequal-index identity also pass.

Because radial modes have common normalization 1/√(2π), the distinct-outgoing-label one-ground-leg coefficient is n g_n/(2n−1). At n=2, the two outgoing modes coincide: the ordered-vertex multiplicity is halved and the Fock creation factor is √2, leaving an extra factor 1/√2. Thus the normalized full-shell entry is exactly

    ⟨(n−1,n−1),(1,1)|W/c0|(n,n)⟩
      = b_n(Δ) √(N−1),
    b_n(Δ) = n g_n(Δ)/[(2n−1)√(1+1_(n=2))] > 0.

No factor from w_n is missing. The diagonal-radial mode normalization and the creation-coordinate weight ratio agree with the conversion at [1753–1767](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/AdS3_Independent_Investigation.md#L1753-L1767>). By the frame argument above, b_n is the physical resonant H1 entry after primary reduction.

## 5. Why larger clusters still force actual √N branches

Let E be the H0 eigenspace of the common slope σ_n at Δ_n, and K=E H1 E. Excitation-number parity preserves E and anticommutes with H1. In parity-ordered orthonormal coordinates,

    K = [ 0  C ; C†  0 ].

Hence its nonzero eigenvalues are ± the singular values of C. Since one entry of C has magnitude b_n, ||C||≥b_n. Equivalently the Rayleigh quotients of (e_i±e_j)/√2 are ±b_n, and the parity symmetry pairs the extremal eigenvalues. This is the exact minmax argument; no two-state truncation or assumed isolation is involved.

Analytic Hermitian perturbation theory then gives actual branches

    ρ_±(N) = binom(N,2)+σ_n N ± b√N+O(1),
    b = ||C|| ≥ b_n > 0.

Thus [1769–1771](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/AdS3_Independent_Investigation.md#L1769-L1771>) remains valid for arbitrary finite cluster dimension. An affine-coordinate Jordan form alone would not establish it, but the candidate does not make that mistake.

A simple three-state illustration explains the necessary inequality: K with edges b and c from one parity vertex to two opposite-parity vertices has eigenvalues 0, ±√(b²+c²). A known nonzero edge forces splitting, but neither forces every branch to split nor identifies the full extremal coefficient with that edge.

## 6. Theorem versus remaining claims

- **Proved:** the exact ground/excited g_pq, all fixed-block leading slopes, existence/uniqueness of every Δ_n, strict increase and divergence, the two-term Δ_n asymptotic, the explicit positive projected edge, and at least one genuine ±√N pair with b≥b_n.
- **Proved edge asymptotic only:** b_n~1/√(πn) and c0(Δ_n)b_n~1/(8π²n²). The source correctly distinguishes this from the largest coefficient in a possibly larger cluster at [1825–1831](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/AdS3_Independent_Investigation.md#L1825-L1831>).
- **Finite evidence reported by the source, not re-enumerated here:** exactly two colliding monomials for n=2,…,8. Its appropriate finite scope appears at [1865–1872](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/AdS3_Independent_Investigation.md#L1865-L1872>) and [§4.3:274](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/AdS3_Independent_Investigation.md#L274>).
- **Unproved all-index statement:** the cluster always has dimension two, hence b=b_n for every n. It is explicitly labeled conjectural, not silently used in the theorem.
- **Not claimed or proved:** exhaustive classification of all resonant dimensions, simultaneous large-n/large-N error control, or a controlled finite-coupling large-particle-number interacting theory.

## 7. Fresh computational checks and limitations

The first, pre-reading exact exploration evaluated the independently derived channel expression for n=1,…,6. It identified the closed g_n formula and found the roots Δ_2≈1.302775637732, Δ_3≈3.102940861549, Δ_4≈5.279487217992, Δ_5≈7.778240120788, Δ_6≈10.564735649768. Those finite values were not used as a proof of uniqueness.

After reading, one selective SageMath 10.9 call checked:

1. The all-index adjacent-Jacobi triple recurrence as an exact rational identity: residual 0.
2. The uniqueness derivative and the monotonic-in-n polynomial identity: both residual 0.
3. Twelve direct unequal-index Jacobi/Beta integrations, including noninteger β: 12/12 exact agreements.
4. Six independent channel-sum versus beta-binomial comparisons, including asymmetric labels (3,1), (2,4), (5,3): 6/6 exact agreements.

The reproducible fresh calculation is recorded in [resonance_contact_fresh_checks.py](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/submission-referee-20261021.gu7ZA5/resonance_contact_fresh_checks.py>). These tests support the analytic derivations; finite tests alone do not prove the general formulas. No broad package rerun or old74audit was performed. This delegated independent review could not launch a further child reviewer because the session delegation depth was exhausted.
