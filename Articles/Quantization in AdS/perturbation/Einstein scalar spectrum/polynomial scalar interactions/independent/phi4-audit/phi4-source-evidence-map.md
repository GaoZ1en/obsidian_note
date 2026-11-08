# Fixed-background polynomial scalar project: authoritative φ⁴ source/evidence map

## Result and provenance

**The current φ⁴ corpus supplies a sound, explicitly normalized fixed-background AdS₃ first-order baseline, a complete finite-block algorithm, several all-label kernel/rank theorems, and genuine nonzero spectral families. It does not establish a general polynomial theory, higher-order particle-number conservation, or a uniform perturbative large-label limit.**

This audit inspected the current working-tree sources rather than relying on an old research summary. No pre-existing material was modified. New files are confined to this audit directory.

- Repository HEAD: `670abb1bb4b644a162278415ef94dde09cdeb016`.
- The repository globally is dirty; in particular the applicable [root AGENTS][root-rules] is modified. Its current working-tree instructions and the [AdS AGENTS][ads-rules] were read and followed. The [free quantization conventions][formalism-free] and [AdS perturbative endpoint][formalism-ads] were also read.
- **All tracked files under the authoritative φ⁴ audit directory are clean against this HEAD.** Targeted status reports only untracked `.venv/` and `sources/` directories. Thus the copied archive is not version-identified by HEAD alone; do not silently treat its Einstein content as the new project's authority.
- SHA-256 values for seven central notes, seven scripts, and five results are recorded in [the fresh certificate:77–107][new-result-provenance]. Current radial source, finite-N engine, certifier, and old 978-check result hashes exactly match the retained finite-N certificate metadata.
- Fresh execution: **19 exact symbolic checks passed**, using a new self-contained [reproducer][new-script], with no imports of any existing research engine or stored interaction matrices. This is independent implementation, not a blinded review: candidate formulas had already been read. Existing genuinely fresh reviews are identified separately below. No further subreviewer could be started at this delegation depth.

### Which source is current?

[README:108–118][readme-update] explicitly supersedes first-round status, without rewriting old records. In particular, the old statement that every nonbalanced three-body rank remains conjectural is obsolete: the whole adjacent band `|P−Q|=1` is now proved. [Structural comparison:585–615][structure-old-gap] preserves that old open-question wording; read it together with the later [further-structures result][further-head].

| Question | Authoritative entry and evidence role |
|---|---|
| Action, Wick prescription, modes, all-index number-changing zero, pair multiplier | [φ⁴ spectrum][spectrum]: independent bulk derivation and finite comparator, not an Einstein multiplier transplant. |
| Any specified finite N, P, Q: explicit entries, full shell, primaries, exact roots and states | [Arbitrary-N spectrum][nbody] and the [finite-N engine][nbody-code]. The theorem is finite constructibility; 602 blocks are implementation certification, not an enumeration of every block. |
| Exact chiral kernel; nonchiral common-kernel characterization; balanced three-body rank; fixed-N high-level rank/trace bounds | [Structural comparison][structure], with [fresh structural review][structure-review]. |
| Adjacent three-body rank; all-N balanced upper edge; fixed-index three-body upper-edge limits | [Further structures][further], with the independently derived [adjacent/edge review][adjacent-review]. |
| Explicit symbolic-N nonzero families; physical √N splitting; S₇ obstruction | [Stable spectra and resonances][stable], with an independent pair-Casimir [stable reconstruction:347–427][stable-review-phi4]. |
| Stable chiral minimum, positive-defect low algebra, precise reusable/nonreusable structures | [Universality and limits:49–153][universality]. This invokes an audited abstract pair-kernel theorem; it is not merely a low-degree fit and is not a fresh standalone proof of every imported abstract theorem. |

## 1. Exact physical and mode conventions

The baseline is a **real probe scalar on fixed global AdS₃**, with no dynamical metric, no gravitational constraints, and no Brown–Henneaux oscillators. The universal-cover time and boundary clock are fixed:

\[
L=1,\qquad ds^2=-(1+r^2)dt^2+\frac{dr^2}{1+r^2}+r^2d\theta^2,
\quad t\in\mathbb R,\quad\theta\sim\theta+2\pi,
\]
\[
S=-\frac12\int\sqrt{-g}\bigl[(\partial\phi)^2+\Delta(\Delta-2)\phi^2\bigr]
-\frac{\lambda}{4!}\int\sqrt{-g}\,\phi^4,
\qquad\Delta>1.
\]

Boundary conditions are center regularity and source-free fast falloff `φ=O(r^−Δ)`, including differentiated falloffs. There is no alternative quantization, finite boundary multitrace coupling, or coupling-dependent clock change. Source: [spectrum:34–82][spectrum-conventions].

Let `f=1+r²`, `x=f⁻¹`, `y=1−x`, `n=min(p,q)`, `j=p−q`, `a=|j|`. The **actual phase convention**, including radial signs, is

\[
u_{pq}=\frac1{\sqrt{2\pi}}
\sqrt{\frac{(\Delta+n)_a}{(n+1)_a}}
 e^{-i(\Delta+p+q)t+ij\theta}
 x^{\Delta/2}(1-x)^{a/2}P_n^{(\Delta-1,a)}(1-2x).
\]

Equivalently, the y-Jacobi convention has the factor `(-1)^n`:

\[
u_{pq}=\frac{(-1)^n}{\sqrt{2\pi}}
\sqrt{\frac{n!\Gamma(n+a+\Delta)}{(n+a)!\Gamma(n+\Delta)}}
 e^{-i(\Delta+p+q)t+ij\theta}
 y^{a/2}(1-y)^{\Delta/2}P_n^{(a,\Delta-1)}(1-2y).
\]

These are the same mode, not modes requiring an additional oscillator rephasing. In particular `u_nn(0,0)=(-1)^n/√(2π)` and `u_00=e^−iΔt f^−Δ/2/√(2π)`. Source: [spectrum:84–148][spectrum-modes]. The underlying PDF was not re-read in this audit; the current note's explicit mode formula was used and its first radial/azimuthal modes checked independently below.

The normalizations that must survive any polynomial generalization are

\[
(u,v)_{KG}=i\int\frac{r\,dr}{f}d\theta
 (u^*\partial_tv-v\partial_tu^*),\quad
\phi=\sum_{p,q}(a_{pq}u_{pq}+a^\dagger_{pq}u^*_{pq}),
\quad[a_{pq},a^\dagger_{p'q'}]=\delta_{pp'}\delta_{qq'}.
\]

The interaction Hamiltonian uses **r dr dθ**, not the KG measure `r dr dθ/f`. The symplectic convention is `Ω=iΣδa†∧δa`, `{a†,a}=i`, `[O₁,O₂]=i{O₁,O₂}`.

The subtraction is fixed by the AdS-invariant free vacuum of the same Δ:

\[
:\phi^4:_\Delta=\phi^4-6G_\epsilon\phi^2+3G_\epsilon^2,
\quad\mathcal V=\frac1{24}\int r\,dr\,d\theta:\phi^4:_\Delta.
\]

Thus the vacuum energy and one-particle gap have zero first-order shift, with no leftover arbitrary finite mass shift. The corresponding Hamiltonian counterterms are `δm²=−λGε/2`, `δEvac=+λGε²/8`. Source: [spectrum:150–187][spectrum-wick]. A general polynomial project must state its own normal-ordering/counterterm prescription; this is not merely an optional basis convention.

Energy and coefficient conventions:

\[
E=N\Delta+P+Q+\lambda\kappa+o(\lambda),\qquad
c_n=\frac1{8\pi(2\Delta+2n-1)},\quad c_0=\frac1{8\pi(2\Delta-1)}.
\]

`K`, `𝒦`, or contact `W` in these notes means the **coefficient of λ**. Most finite/stable code returns `K/c₀`; the older code calls its report unit `gamma0=λc₀`. By contrast one structural polynomial uses `8πW`, and the upper-edge numerical table uses `16πW`. These report units must not be silently mixed. With L restored, `λ=λ_phys L` and physical energy is `E/L`; the physical pair shift is `λ_phys/[8π(2Δ+2n−1)]`. Sources: [spectrum:749–801][spectrum-units], [further:354–366][further-table].

## 2. What is proved about the first-order operator?

### Resonance and particle number

The secular projector is the long-time average on finite external-state matrix elements, equivalently `P_E𝒱P_E`; it is **not** a global-AdS in/out S-matrix. Do not substitute a `2π` time average at arbitrary noninteger Δ.

For one incoming mode A and three outgoing modes, simultaneous energy and spin conservation require

\[
p_A=\Delta+\sum_i p_i,\qquad q_A=\Delta+\sum_iq_i.
\]

Only integer Δ can resonate. At those points the Jacobi integral pairs the degree `n_A` Jacobi polynomial with a polynomial of degree at most `n_A−1`, hence vanishes for **all indices**. The `0↔4` channel cannot resonate. This proves `[K,N]=0` for all Δ>1 at **first order only**. Source: [spectrum:189–270][spectrum-resonance]. It must not be transferred to an arbitrary polynomial without a new argument.

### Pair coincidence and all pair coefficients

The normalized one-sided primary CG coefficient is

\[
C_p^{(k)}=(-1)^p
\sqrt{\frac{\binom{k}{p}(\Delta)_k^2}
{(\Delta)_p(\Delta)_{k-p}(2\Delta+k-1)_k}}.
\]

The Bose primary is `2^−1/2 Σ C_p^(k)C_q^(ℓ) a†_pq a†_(k−p,ℓ−q)|0⟩`; it is unit-normalized when `k+ℓ` is even and identically zero otherwise. Its labelled coincidence wavefunction satisfies the **all-index** identity

\[
\Psi_{k\ell}(t,r,\theta)
=\delta_{k\ell}\frac{(-1)^k}{2\pi}
 e^{-i(2\Delta+2k)t}f^{-\Delta-k}.
\]

The proof uses intertwining of diagonal restriction, the two scalar lowering equations, and the center value; it is not an inference from low-k checks. Together with the factor `1/2` in the normalized pair expectation, this gives

\[
\langle P_{k\ell}|K|P_{k\ell}\rangle
=\frac12\int r\,dr\,d\theta|\Psi_{k\ell}|^2
=\delta_{k\ell}c_k.
\]

The projected first-order Ward identity proves that this is the coefficient on the **whole pair module**, not only its primary. Scalar-primary spin-zero support therefore does not mean that every nonzero-angular-momentum descendant has zero shift. Sources: [spectrum:282–326][spectrum-ward], [spectrum:328–464][spectrum-pair].

Normal-ordered quartic Fock lift is then unique in the already-proved number-preserving class:

\[
K_N=\sum_{i<j}\sum_{n\ge0}c_n\Pi_{ij}^{(n,n)},\qquad
0\le K_N\le\binom N2c_0I.
\]

This is an interacting sum of generally **noncommuting overlapping-pair projectors**, not a diagonalization or an integrability proof. Source: [spectrum:466–569][spectrum-finite], [spectrum:693–733][spectrum-kernel].

## 3. Finite block construction that can actually be reused

The correct space is `Sym^N(D⁺_(Δ/2)⊗D⁺_(Δ/2))`, with simultaneous particle exchange in both chiralities. Separately Bose-symmetrizing left and right gives the wrong space.

Use occupation labels satisfying `Σn=N`, `Σp n=P`, `Σq n=Q`. Set

\[
w_p=\frac{(\Delta)_p}{p!},\qquad
|\mathbf n\rangle_B=\prod_{pq}\left(\frac{a^\dagger_{pq}}{\sqrt{w_pw_q}}\right)^{n_{pq}}|0\rangle,
\quad G_{\mathbf n\mathbf n}=\prod_{pq}\frac{n_{pq}!}{(w_pw_q)^{n_{pq}}}.
\]

In this rational, nonorthonormal basis, lowering coefficients are `p n_pq`, `q n_pq`; raising coefficients are `(p+Δ)n_pq`, `(q+Δ)n_pq`. The associated creation/annihilation coordinates are not physical adjoints of each other; G implements the physical adjoint.

For four modes, `ν_I=min(p_I,q_I)`, `μ_I=max(p_I,q_I)`, `ℓ_I=|p_I−q_I|`. Under pair bidegree conservation, let `s=Σℓ_I/2` and `∏P_νI^(ℓI,Δ−1)(1−2y)=Σ_h b_h y^h`. The exact integral is

\[
I_{AB;CD}=\sum_h b_h\frac{(s+h)!}{(2\Delta-1)_{s+h+1}}.
\]

With unordered pairs `A≤B`, `C≤D`, the transfer coefficient of `K/c₀` is

\[
t_{AB;CD}=\frac{2(2\Delta-1)(-1)^{\sum_I\nu_I}}
{(1+\delta_{AB})(1+\delta_{CD})}
\frac{w_{\mu_A}w_{\mu_B}}{w_{\nu_C}w_{\nu_D}}I_{AB;CD}.
\]

Multiply it by `n_C(n_D−δ_CD)` for its occupation action. This already includes `4!`, Wick, unordered-pair, and repeated-mode factors. Ground-ground gives `t=1/2`, hence the condensate coefficient `C(N,2)c₀`. Source: [arbitrary-N:61–193][nbody-vertices].

The algorithm is:

1. Enumerate the finite occupation shell.
2. Form both lowering matrices and their common kernel columns X.
3. Construct K either by direct overlaps or pair-projector lift; retain physical G.
4. Compute `G_P=XᵀGX`, `KX=XK_P`, and check `G_PK_P=K_PᵀG_P`. Solve the generalized Hermitian problem, or its equivalent rational-coordinate matrix.
5. At rational Δ, factor the exact characteristic polynomial over Q. Isolating intervals plus `Q(α)` kernels specify complete individual eigenspaces, including multiplicities; radical formulas are unnecessary.
6. Reconstruct descendants. Their norm multiplier is
   ` (P−p)!(NΔ+2p)_(P−p) (Q−q)!(NΔ+2q)_(Q−q) `.
   The full-shell characteristic polynomial is the product of all primary characteristic polynomials with `p≤P,q≤Q`.

Sources: [arbitrary-N:195–336][nbody-spectral], [engine:120–218][engine-matrix], [engine:248–337][engine-eigen]. Public APIs are listed in [arbitrary-N:536–549][nbody-api]. The current production engine reuses only the older direct radial-integral and weight functions; it does not import the archived gravity engine.

**Notation trap:** in the finite-spectrum notes `d_N(P,Q)` denotes full-shell dimension, whereas in structural notes the corresponding `d_N` or `D_N` often denotes primary dimension. The identity is `m_N(P,Q)=D_N(P,Q)−D_N(P−1,Q)−D_N(P,Q−1)+D_N(P−1,Q−1)` for N≥1, with the vacuum separate. Do not merge these symbols without their definitions.

## 4. Kernel, coincidence, and nonchiral rank: exact status

### General characterization, not a general explicit mixed-kernel basis

Strictly positive coefficients imply

\[
\ker K_N=\bigcap_{i<j,n}\ker\Pi_{ij}^{(n,n)}.
\]

For a Bose primary, a **single pair** determines the kernel and rank: if `Q₁₂=Σ_nΠ₁₂^(n,n)`, then `ker(K|physical)=ker(Q₁₂|physical)` and the ranks agree. The single-pair projector need not itself preserve the Bose space. Multiplying its image dimension by the number of pairs is unnecessary. Source: [structure:241–268][structure-one-pair].

A directly reusable consequence of the normal-ordered integral is that on one fixed finite `(N,E,J)` shell,

\[
\langle\psi,K\psi\rangle
=\frac14\int r\,dr\,d\theta\,
\|[\phi^+(0,r,\theta)]^2|\psi\rangle\|^2,
\qquad\phi^+=\sum a_Iu_I.
\]

Thus the kernel is equivalent to vanishing of the physical pair-annihilation/coincidence amplitude on that shell. **This is not the same as setting both Bargmann differences `z_i−z_j=w_i−w_j=0`: the latter only detects the `(0,0)` relative channel, whereas contact penalizes every `(n,n)` channel.** The general mixed kernel is characterized by projectors/coincidence, but has not been classified by one Vandermonde ideal or a complete explicit polynomial basis.

### Proven rank and kernel results

| Domain | Result | Evidence level and decisive mechanism |
|---|---|---|
| Any finite N, chiral Q=0 | `ker K = V_N(z)^2 × C[e₂,…,e_N]_(P−N(N−1))`; kernel Hilbert series `t^(N(N−1))/∏_(r=2)^N(1−t^r)` | All-index theorem: pair k=0 restriction, Bose even vanishing, prime divisibility. First chiral zero at P=N(N−1). [Proof:67–97][structure-chiral]. |
| N=3, arbitrary P,Q | `rank K≤min(P,Q)+1` | All-index bound from one-dimensional one-sided pair-channel multiplicities. |
| N=3, balanced P=Q≥1 | `rank K=P`, `dim ker=m₃(P,P)−P`; P=0 instead has rank 1 | All-index/all-Δ theorem, not generic-Δ only. Tensor–Hom twirling and irreducibly tridiagonal pair Casimirs show the unique relation is `C₁₂−s_P/3`. [Proof:270–344][structure-balanced]. |
| N=3, adjacent `(Q+1,Q)` | `rank K=Q`, `m₃=((Q+1)(Q+2)−2·1_(3|Q))/6` | All-index/all-Δ theorem. Projected local raising provides the unique rectangular twirling relation; band and endpoint arguments exclude every additional relation. Q=0 is empty; first nonzero kernel is `(5,4)`. [Proof:83–214][further-adjacent]. |
| N=3, absolute degree difference ≥2 | Candidate rank `min(m₃(P,Q),min(P,Q)+1)` | Still a conjecture, supported by exact rational finite scans. No proof excluding exceptional Δ-dependent extra rank loss. |
| Fixed N≥3, balanced P→∞ | rank `Θ_N(P^(2N−5))`, primary dimension `Θ_N(P^(2N−4))`, exact zero fraction `1−Θ_N(1/P)` | General theorem using stabilizer-invariant pair image and nonnegative trace squares. Not uniform in N. [Proof:346–432][structure-allN]. |

For three bodies,

\[
m_3(P,Q)=\frac{(P+1)(Q+1)+3\epsilon_P\epsilon_Q+2\chi_P\chi_Q}{6},
\quad\epsilon_P=\mathbf1_{2\mid P},\quad\chi_P=(1,-1,0)_{P\bmod3}.
\]

Every left-right odd balanced three-body primary is a zero mode, but it does **not** exhaust the kernel: at P=6 the kernel is exactly `2 odd + 1 even`, and extra even kernels persist at every P≥6. The theorem counts the full kernel without providing an explicit basis for every even kernel.

For N≥4 the odd-state implication is false. Spectator multiplicities allow odd states inside an equal-channel image. There is an explicit all-Δ collision counterexample, and the nonzero odd `(3,3)` spectral family below strengthens it to an actual eigenstate. Sources: [structure:198–239][structure-parity], [structure:515–556][structure-counterexamples].

Useful finite balanced bounds, with `T=C(N,2)` and

\[
R_N(P)=\sum_{n=0}^P\dim[(\operatorname{Sym}^n\mathrm{perm}_{N-2})^{\otimes2}]^{S_{N-2}},
\]

are `ceil(R_N(P)/T)≤rank K≤min(m_N(P,P),R_N(P))`. The lower trace proof uses matching real left/right spaces. **Do not transfer its lower bound to P≠Q**: the independent review provides a positive-weight `(2,1)` counterexample where the corresponding lower trace bound fails. See [adjacent review:226–246][adjacent-trace-warning].

## 5. Explicit nonzero spectral families

All entries below are `ρ=κ/c₀` and are coefficients, not full interacting energies. Sources: [stable:74–122][stable-families].

| Primary bidegree | Physical range | Exact ρ |
|---|---|---|
| (0,0) | N≥0 | `C(N,2)` |
| (1,1) | N≥2 | `C(N,2)−N/(2Δ+1)` |
| (2,0) | N≥2 | `C(N,2)−(NΔ+1)/(2Δ+1)` |
| (2,1) | N≥3 | `C(N,2)−[(Δ+2)N+2]/[2(2Δ+1)]` |
| (3,0) | N≥3 | `C(N,2)−3(NΔ+2)/[2(2Δ+1)]` |
| (3,1) | N≥4 | Two branches: `C(N,2)−[(2Δ²+4Δ+3)N−3]/D₂`, and `C(N,2)−[(Δ+1)N+3]/(2Δ+1)`; `D₂=(2Δ+1)(2Δ+3)`. |
| (3,3), left-right odd | N≥4 | `C(N,2)−(Δ+1)[(4Δ+3)N+6]/D₂` |

Reflected bidegrees have the same spectrum. The odd `(3,3)` state is the creation polynomial `c₀₂c₃₁−c₂₀c₁₃`; its support only needs four excited particles even though the entire stable `(3,3)` basis needs N≥6. At Δ=2 it gives `12/7,167/35,309/35,698/35` for N=4,5,6,8. These are nonzero and rule out extending three-body odd protection.

There is also an **all-degree stable chiral lowest-primary family**, for N≥P≥2:

\[
\kappa_*(N,P)=c_0\left[\binom N2-
\frac{P(N\Delta+P-1)}{2(2\Delta+1)}\right].
\]

Its proof uses the nonnegative affine-Casimir defects `r₀=r₂=0`, `r_k=c₀(k−2)(k+2Δ+1)/[2(2Δ+1)]>0` for even k≥4 and the abstract positive-defect theorem. It is **not valid for P>N**; the source gives an immediate negative-value counterexample to that extrapolation. The stable leading low algebra is `C[c₂,c₃]`, and its first effective coefficient has a Gegenbauer-type form, with

\[
\varepsilon_{\phi^4}=\frac{27c_0(\Delta+3)(\Delta+4)}{(2\Delta+1)(17\Delta+43)}.
\]

These are structures of a particular positive pair sequence, not uniquely gravitational phenomena and not general integrability. Source: [universality:69–131][universality-chiral].

A useful minimal mixing benchmark is N=3, Δ=2, `(P,Q)=(2,2)`: two primary eigenvalues are `(89±√2881)/70` in c₀ units. Its full physical Gram and nonsymmetric coordinate matrix are printed in [spectrum:655–691][spectrum-benchmark].

## 6. Stable N and high-level limits: distinguish their quantifiers

### Fixed excitation, N→∞

At fixed P,Q and `N≥max(1,P+Q)`, the creation-algebra primary coordinates stabilize. The exact quartic pair operator is

\[
K_N/c_0=\binom N2I+NA(\Delta)+B(\Delta).
\]

This follows from literal ground-ground / ground-excited / excited-excited pair counting, not interpolation in N. The physical Gram contains `(N)_↓r^−1` and becomes singular in these coordinates. Finite-N selfadjointness is retained; the coordinate leading matrix need not be Euclidean-Hermitian. Products of centered generators are **creation-algebra products**, not pointwise products of fixed-N wavefunctions. Sources: [stable:40–72][stable-construction], [universality:49–67][universality-affine].

The complete `(2,2)` symbolic A,B matrices are given in [stable:124–185][stable-resonance] and independently reconstructed by pair-Casimir interpolation. At

\[
\Delta_c=(\sqrt{13}-1)/2,
\]

the actual characteristic polynomial, not merely a Jordan diagnosis, yields

\[
\rho_\pm=\binom N2-\frac{2N}{\sqrt{13}}
\pm\frac{3\sqrt2}{13+2\sqrt{13}}\sqrt N
-\frac{\Delta_c+2}{13+2\sqrt{13}}+O(N^{-1/2}).
\]

For detuning `Δ=Δc+u/√N`, the centered √N-scaled branches converge to

\[
\pm\sqrt{\beta^2+\frac{u^2}{4(\sqrt{13}+2)^2}},
\qquad\beta=\frac{3\sqrt2}{13+2\sqrt{13}},
\]

locally uniformly for bounded u. This is a genuine coefficient asymptotic in a fixed excitation block, not a finite-N non-Hermitian exceptional point or control of the full theory at fixed λ. Source: [stable:187–206][stable-detuning].

One physical even block, N=8, Δ=2, `(3,3)`, has degree-seven characteristic factor with Galois group S₇. Irreducibility modulo 11 and square-free `(2,5)` splitting modulo 107 give a rigorous certificate; another reviewer found a transposition directly modulo 19. This excludes a universal radical formula, **not** Bethe-type descriptions or all meanings of integrability. Source: [stable:208–231][stable-galois].

### Fixed N≥3, balanced excitation P→∞

**Every rank, zero-fraction, positive-only empirical law, and fixed-index limit in this subsection refers to the balanced primary space `𝒫_(N;P,P)`, not the complete occupation shell.** The complete `(P,Q)` shell contains descendants of all lower primary bidegrees `(p,q)`, so its multiplicities accumulate by the characteristic-polynomial product in [arbitrary-N:298–336][nbody-spectral]. These asymptotic statements cannot be relabelled as full-shell statements without that extra summation.

A decisive distinction: the ground-condensate descendant is present in every full `(P,Q)` shell, so the **full-shell maximum is exactly `C(N,2)c₀`**, not merely bounded above by it. In particular for N=3 the full-shell largest coefficient remains `3c₀`, whereas the balanced-primary largest coefficient tends to `c₀`. The nontrivial trial lower bound and the compact matched-channel limit below concern primaries. A shell fixed only by total excitation must also sum over its angular-momentum sectors.

For the actual `c_k∼1/(16πk)`, not a control model with `c_k=1`:

- Exact zeros occupy fraction `1−Θ_N(1/P)`.
- Even after deleting exact zeros, the positive-only empirical measure converges to `δ₀`.
- The mean positive eigenvalue is `Θ_(N,Δ)(log P/P)`. This is not a typical scale, a sharp leading coefficient, a minimum positive eigenvalue, or a rescaled spectral law.
- A uniform positive gap above the exact kernel is therefore impossible along these balanced towers; the **rate of gap closure and sharp minimum remain open**.

Sources: [structure:434–475][structure-soft]. The first two points concern different objects and must not be conflated.

The upper edge simultaneously stays nonzero:

\[
\binom{N-1}{2}c_0\le\lambda_{\max}(K_{N;P,P})\le\binom N2c_0
\quad(N\ge3,\ P\ge0).
\]

Thus the normalized maximum tends to 1 as N→∞ **uniformly for arbitrary P=P(N)**. This finite bound does not make the zero fraction or whole spectral measure uniform in a joint limit. Source: [further:216–264][further-edge].

For N=3 and fixed eigenvalue index j≥1, ordering positive eigenvalues decreasingly gives

\[
e_j(P)\longrightarrow c_{j-1}.
\]

The proof passes to the matched-channel compression

\[
H_P=C_P^{1/2}(I+2(R_P\circ R_P))C_P^{1/2},\quad
C_P=\operatorname{diag}(c_0,\ldots,c_P).
\]

Its nonzero spectrum is the physical spectrum. Fixed Racah corners obey `R_kl=O(P^−Δ)` and `R_00=(-1)^P(Δ)_P/(2Δ)_P`. Compact-tail control gives norm convergence of this **auxiliary channel-space operator** to `diag(c₀,c₁,…)`. It is not a claimed common natural embedding of the changing physical primary spaces, nor a relative approximation for j growing with P. Source: [further:266–352][further-limit], independently [adjacent review:248–355][review-limit]. The limit is `c_(j−1)`, not `3c_(j−1)`.

## 7. Fresh independent crucial-formula check in this audit

The new [reproducer][new-script] starts only from the elementary modes

\[
F_0=(1-y)^{\Delta/2}/\sqrt{2\pi},\quad
 e_{00}=F_0,\quad e_{11}=F_0[(\Delta+1)y-1],
\quad e_{10,01}=F_0\sqrt{\Delta y}\,e^{\pm i\theta}.
\]

It computes Beta moments as exact rational functions of Δ, includes the actual interaction measure, and contracts oscillators literally. In the unnormalized full-shell basis

\[
A=(a^\dagger_{00})^{N-1}a^\dagger_{11}|0\rangle,\quad
B=(a^\dagger_{00})^{N-2}a^\dagger_{10}a^\dagger_{01}|0\rangle,
\]

it derives, for every integer N≥2 and Δ>1,

\[
\boxed{K/c_0=\binom N2I-
\frac1{2\Delta+1}
\begin{pmatrix}N-1&-1\\-(N-1)&1\end{pmatrix},
\qquad G\propto\operatorname{diag}(N-1,1).}
\]

Both lowerings kill `A−B`, with eigenvalue `C(N,2)−N/(2Δ+1)`. The ground descendant is `A+(N−1)B`, with eigenvalue `C(N,2)`. This checks a reusable all-N formula without the existing pair multiplier or finite-N engine as computational input.

The same run verifies:

- absolute `C_0000=2c₀`, and the nontrivial transition overlap `C_(00,11;10,01)=c₀/(2Δ+1)`;
- KG norms of the three elementary radial types;
- pair `(1,1)` coincidence `e₀₀e₁₁−e₁₀e₀₁=−(1−y)F₀²`, giving `c₁/c₀=(2Δ−1)/(2Δ+1)` with the correct Bose factor;
- the minimal Δ=2 resonant `22→00+00+00` Jacobi integral equals zero, while the nonresonant all-ground control is `1/3`, not zero;
- exact Gram selfadjointness, eigenvectors, trace, and determinant.

All 19 explicit checks pass in Sage 10.9/Python 3.14.3. See [fresh result:1–76][new-result]. The symbolic all-N block identity is more than a finite-N fit; the single number-changing example is only a finite regression check and does **not** replace the all-index Jacobi proof in the source.

## 8. Retained evidence versus what was rerun

| Retained source/result | What it establishes and what it does not |
|---|---|
| [Direct/representation checker][old-check-code] → [978-check record][old-check-result] | 75 complete two-body blocks and 48 complete three-body blocks at Δ=3/2,2,7/3, plus phases, norms, coincidences and number-changing checks. Direct Jacobi–Beta and pair-projector routes are separate implementations. This audit inspected and hash-checked it; did not rerun all 978. |
| [Finite-N certifier][nbody-cert-code] → [602-block certificate:1–68][nbody-cert] | 8579 passed, zero failures; main range N=2…8, P+Q≤6 at three masses; 9 balanced degree-eight and 5 chiral degree-eight extensions. Maximum shell/primary dimensions 105/24. Includes 168 old direct-matrix regressions and 114 stored-polynomial regressions, not new independent physics proofs. |
| [Contact structure implementation][contact-code] → [contact result][contact-result] | Exact rank scans: 273 mixed records and 75 balanced records with overlapping ranges, plus all-Δ small-block minors and direct-coordinate comparisons. These support/debug the implementation; general rank claims rest on analytic proofs. |
| [Rectangular/edge implementation][contact2-code] → [rectangular result][contact2-result] | Symbolic-Δ selected adjacent sectors, band/norm identities, cluster trial states, and illustrative numerical upper-edge tables. Finite examples are not the convergence proof. |
| [Independent adjacent result][adjacent-result], [independent edge result][edge-result] | Alternative analytic proofs plus exact finite certificates: adjacent q=0…8 symbolic bands, 44 rational rank examples, 63 norm checks; edge five symbolic and 27 rational Racah sectors, actual compression factor and counterexample to nonbalanced lower-trace transfer. These are retained fresh-review evidence, not a new blind review by this audit. |
| [Stable-N implementation][stable-code] → [166-check final certificate][stable-cert] | Nine symbolic low blocks, physical Gram identities, 48 full-shell/Gram crosschecks, Newton/Sylvester checks, odd support and spectrum. Use this final certificate rather than earlier incomplete crosscheck snapshots. |
| [Independent stable φ⁴ matrix certificate][stable-independent-result] and [independent S₇ arithmetic][galois-independent-result] | Pair-Casimir rather than direct radial reconstruction of the `(2,2)` pencil and √N split; separate finite-field arithmetic. Arithmetic alone does not establish physical block identification. |

Repeat execution, shared radial routines, and independent derivations are three different evidence levels; their counts should not be added into one total.

## 9. What to import into the general polynomial project—and what must be redone

**Reusable immediately:** the fixed-background free theory and phase convention; KG/Fock normalization; simultaneous-Bose counting; lowering-kernel primary extraction; physical Gram discipline; exact algebraic spectral resolution; descendant norm factors after the relevant Ward commutator has been proved; direct Jacobi/Beta integration as an implementation pattern; provenance/hash practices.

**Requires a new interaction-dependent derivation:** every polynomial vertex's coupling factorial and Wick subtraction; all resonant number-changing channels (and exceptional masses); the number of particles in each interaction term; the corresponding multi-particle coincidence map and multiplier/multiplicity structure; positivity; kernel ideals, ranks and asymptotics. The current engine is hardcoded to two annihilated/two created legs and cannot be used unchanged for a φ⁶ or mixed-degree polynomial.

For a candidate degree-m interaction, start from its complete normal-ordered vertex and secular energy/spin constraints, not from a preset fixed-N pair Hamiltonian. A number-preserving higher-body term has its own occupation falling-factorials and stable-N polynomial dependence; quartic `C(N,2)+NA+B` and the equal-*pair*-label rank theorem are not automatic templates for it. Signed mixtures can invalidate the positive-sum common-kernel argument even if each pure term has a useful kernel.

**Substantive remaining φ⁴ gaps:** exact N=3 ranks for `|P−Q|≥2`; explicit full mixed-kernel bases and sharp finite-rank coefficients for N≥4; sharp minimum positive eigenvalue and rescaled positive spectral laws; classification of general mixed stable resonances; higher-order lifting of first-order zeros and number-changing terms; continuum selfadjoint/UV construction and actual differentiable spectral branches; uniform control when N, P, Q or Δ vary with λ. Coefficient limits at Δ→1⁺ do not define the BF/log boundary domain. None of these should be filled by importing a gravity residual kernel or by expanding a finite scan.

[root-rules]: </Users/koishi/Documents/Note/AGENTS.md>
[ads-rules]: </Users/koishi/Documents/Note/Articles/Quantization in AdS/AGENTS.md>
[formalism-free]: </Users/koishi/Documents/Note/Articles/Quantization in AdS/perturbation/formalism.md#L54-L145>
[formalism-ads]: </Users/koishi/Documents/Note/Articles/Quantization in AdS/perturbation/formalism.md#L229-L282>
[readme-update]: </Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/independent audit and phi4 comparison/README.md#L108-L118>
[spectrum]: </Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/independent audit and phi4 comparison/phi4 spectrum.md>
[spectrum-conventions]: </Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/independent audit and phi4 comparison/phi4 spectrum.md#L34-L82>
[spectrum-modes]: </Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/independent audit and phi4 comparison/phi4 spectrum.md#L84-L148>
[spectrum-wick]: </Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/independent audit and phi4 comparison/phi4 spectrum.md#L150-L187>
[spectrum-resonance]: </Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/independent audit and phi4 comparison/phi4 spectrum.md#L189-L270>
[spectrum-ward]: </Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/independent audit and phi4 comparison/phi4 spectrum.md#L282-L326>
[spectrum-pair]: </Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/independent audit and phi4 comparison/phi4 spectrum.md#L328-L464>
[spectrum-finite]: </Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/independent audit and phi4 comparison/phi4 spectrum.md#L466-L569>
[spectrum-kernel]: </Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/independent audit and phi4 comparison/phi4 spectrum.md#L693-L733>
[spectrum-units]: </Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/independent audit and phi4 comparison/phi4 spectrum.md#L749-L801>
[spectrum-benchmark]: </Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/independent audit and phi4 comparison/phi4 spectrum.md#L655-L691>
[nbody]: </Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/independent audit and phi4 comparison/phi4 arbitrary N spectrum.md>
[nbody-vertices]: </Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/independent audit and phi4 comparison/phi4 arbitrary N spectrum.md#L61-L193>
[nbody-spectral]: </Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/independent audit and phi4 comparison/phi4 arbitrary N spectrum.md#L195-L336>
[nbody-api]: </Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/independent audit and phi4 comparison/phi4 arbitrary N spectrum.md#L536-L549>
[nbody-code]: </Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/independent audit and phi4 comparison/scripts/phi4_nbody_spectrum.py>
[engine-matrix]: </Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/independent audit and phi4 comparison/scripts/phi4_nbody_spectrum.py#L120-L218>
[engine-eigen]: </Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/independent audit and phi4 comparison/scripts/phi4_nbody_spectrum.py#L248-L337>
[nbody-cert-code]: </Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/independent audit and phi4 comparison/scripts/phi4_nbody_certify.py>
[nbody-cert]: </Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/independent audit and phi4 comparison/results/phi4_nbody_certification.json#L1-L68>
[old-check-code]: </Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/independent audit and phi4 comparison/scripts/phi4_checks.py>
[old-check-result]: </Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/independent audit and phi4 comparison/results/phi4_checks.json>
[structure]: </Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/independent audit and phi4 comparison/structural comparison.md>
[structure-review]: </Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/independent audit and phi4 comparison/reviews/fresh contact structure review.md>
[structure-old-gap]: </Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/independent audit and phi4 comparison/structural comparison.md#L585-L615>
[structure-chiral]: </Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/independent audit and phi4 comparison/structural comparison.md#L67-L97>
[structure-parity]: </Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/independent audit and phi4 comparison/structural comparison.md#L198-L239>
[structure-one-pair]: </Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/independent audit and phi4 comparison/structural comparison.md#L241-L268>
[structure-balanced]: </Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/independent audit and phi4 comparison/structural comparison.md#L270-L344>
[structure-allN]: </Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/independent audit and phi4 comparison/structural comparison.md#L346-L432>
[structure-soft]: </Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/independent audit and phi4 comparison/structural comparison.md#L434-L475>
[structure-counterexamples]: </Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/independent audit and phi4 comparison/structural comparison.md#L515-L556>
[contact-code]: </Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/independent audit and phi4 comparison/scripts/contact_structure.py>
[contact-result]: </Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/independent audit and phi4 comparison/results/contact_structure.json>
[further]: </Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/independent audit and phi4 comparison/phi4 further structures.md>
[further-head]: </Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/independent audit and phi4 comparison/phi4 further structures.md#L13-L32>
[further-adjacent]: </Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/independent audit and phi4 comparison/phi4 further structures.md#L83-L214>
[further-edge]: </Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/independent audit and phi4 comparison/phi4 further structures.md#L216-L264>
[further-limit]: </Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/independent audit and phi4 comparison/phi4 further structures.md#L266-L352>
[further-table]: </Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/independent audit and phi4 comparison/phi4 further structures.md#L354-L366>
[adjacent-review]: </Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/independent audit and phi4 comparison/reviews/adjacent contact independent review.md>
[adjacent-trace-warning]: </Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/independent audit and phi4 comparison/reviews/adjacent contact independent review.md#L226-L246>
[review-limit]: </Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/independent audit and phi4 comparison/reviews/adjacent contact independent review.md#L248-L355>
[contact2-code]: </Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/independent audit and phi4 comparison/scripts/contact2_rectangular.py>
[contact2-result]: </Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/independent audit and phi4 comparison/results/contact2_rectangular.json>
[adjacent-result]: </Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/independent audit and phi4 comparison/results/review_contact2_adjacent_exact.json>
[edge-result]: </Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/independent audit and phi4 comparison/results/review_contact2_edge_exact.json>
[stable]: </Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/independent audit and phi4 comparison/phi4 stable spectra and resonances.md>
[stable-construction]: </Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/independent audit and phi4 comparison/phi4 stable spectra and resonances.md#L40-L72>
[stable-families]: </Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/independent audit and phi4 comparison/phi4 stable spectra and resonances.md#L74-L122>
[stable-resonance]: </Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/independent audit and phi4 comparison/phi4 stable spectra and resonances.md#L124-L185>
[stable-detuning]: </Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/independent audit and phi4 comparison/phi4 stable spectra and resonances.md#L187-L206>
[stable-galois]: </Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/independent audit and phi4 comparison/phi4 stable spectra and resonances.md#L208-L231>
[stable-review-phi4]: </Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/independent audit and phi4 comparison/exact stable full proof audit.md#L347-L427>
[stable-code]: </Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/independent audit and phi4 comparison/scripts/phi4_stable_pencils.py>
[stable-cert]: </Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/independent audit and phi4 comparison/results/phi4_stable_certification_02.json>
[stable-independent-result]: </Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/independent audit and phi4 comparison/results/audit2_stable_phi4_22.json>
[galois-independent-result]: </Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/independent audit and phi4 comparison/results/audit2_stable_phi4_galois7.json>
[universality]: </Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/independent audit and phi4 comparison/universality and limits.md#L49-L153>
[universality-affine]: </Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/independent audit and phi4 comparison/universality and limits.md#L49-L67>
[universality-chiral]: </Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/independent audit and phi4 comparison/universality and limits.md#L69-L131>
[new-script]: </Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/polynomial scalar interactions/independent/phi4-audit/reusable_formula_check.py>
[new-result]: </Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/polynomial scalar interactions/independent/phi4-audit/reusable_formula_check.json#L1-L76>
[new-result-provenance]: </Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/polynomial scalar interactions/independent/phi4-audit/reusable_formula_check.json#L77-L107>
