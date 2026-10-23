# Source evidence for the chiral coincidence ideal

This record concerns published mathematics used in the independent derivation. No parent candidate results were read before completing that derivation and its tests; a later, explicitly requested collaborative consistency review is recorded in the report. The sources below were read as arXiv HTML, including the indicated numbered statements and surrounding proofs. No PDF page or visual-PDF verification is claimed.

## 1. Feigin–Jimbo–Miwa–Mukhin

B. Feigin, M. Jimbo, T. Miwa, E. Mukhin, *A differential ideal of symmetric polynomials spanned by Jack polynomials at β=−(r−1)/(k+1)*, arXiv:math/0112127v1.

- [Source HTML](https://arxiv.org/html/math/0112127v1).
- [Section 2.2](https://arxiv.org/html/math/0112127v1#S2.SS2): equation (2.11) defines an `(s,r,n)`-admissible partition by `lambda_i-lambda_(i+s)>=r`, with `1<=i<=n-s`; partitions have at most `n` parts and are padded with zeros.
- [Section 2.3](https://arxiv.org/html/math/0112127v1#S2.SS3): equation (2.14) specializes their Jack coupling to `beta=-(r-1)/(s+1)`, assuming positive integers `s,r`, `r>=2`, and `gcd(s+1,r-1)=1`. Lemma 2.3 states that the admissible Jack polynomials have no pole at this specialization.
- [Section 3.1](https://arxiv.org/html/math/0112127v1#S3.SS1): `I_n^(s,r)` is defined as the complex-linear span of those specialized admissible Jack polynomials. Their leading monomial coefficient is one, so they are linearly independent. Theorem 3.1 additionally establishes the ideal and differential-invariance properties.
- [Section 4.1](https://arxiv.org/html/math/0112127v1#S4.SS1): equation (4.1) defines `F_n^(s)` as all symmetric polynomials vanishing when `x_1=...=x_(s+1)`. Proposition 4.1 proves inclusion of the admissible-Jack span. **Theorem 4.2 states `F_n^(s)=I_n^(s,2)`.** Its proof invokes the dimension count in Feigin–Stoyanovsky, Proposition 2.6.1′ and Theorem 2.7.1, and combines that count with Proposition 4.1.

### Hypothesis map to the contact problem

Use `k` for the number of annihilated/created particles in the bulk `phi^(2k)` vertex, not the paper's clustering index. Set

\[
 n=N,\qquad s=k-1,\qquad r=2,\qquad
 \beta=-\frac1k,\qquad\alpha=\beta^{-1}=-k.
\]

The coprimality condition is automatic: `gcd(k,1)=1`. For `k>=2`, their beta is a negative noninteger, as required in §2.3. The paper's `s+1` coincident variables are precisely the bulk contact's `k` variables. There is no maximum single-particle degree (no flux cutoff) in the contact problem, so the finite-variable polynomial theorem applies without an additional rectangular-partition restriction. The theorem is over complex symmetric polynomials; the positive Bergman scalar product supplied by `Delta>1` changes norms, not this algebraic ideal.

Therefore the kernel basis and its partition character are an **application of a published theorem**, not a newly proved Jack-basis theorem. The contact-to-coincidence reduction itself is derived independently in the accompanying report.

## 2. Ardonne–Kedem–Stone / Feigin–Stoyanovsky character

E. Ardonne, R. Kedem, M. Stone, *Filling the Bose sea: symmetric quantum Hall edge states and affine characters*, arXiv:cond-mat/0409369v1.

- [Source HTML](https://arxiv.org/html/cond-mat/0409369v1).
- [Section III.4](https://arxiv.org/html/cond-mat/0409369v1#S3.SS4): equations (33)–(36) give the fixed-particle polynomial-degree character, with cluster multiplicities `m_i`, `sum i*m_i=p`, matrix `M_ij=min(i,j)`, and boundary vector `d=(0,...,0,1,...,l)`.
- [Section IV](https://arxiv.org/html/cond-mat/0409369v1#S4) was read through its proof. It filters the coincidence ideal by cluster evaluations, identifies each associated-graded image as a fixed product of pairwise cluster differences times independent symmetric polynomials in the cluster centers, establishes surjectivity via an explicit symmetrized preimage, and derives the character in equations (75)–(77).

For our problem set their level to `s=k-1`, their particle number to `p=N`, and their highest-weight label to `l=0`. The additional origin condition then requires the same `s+1=k` variables to vanish at zero and is already implied by the contact coincidence condition; there is no extra quasihole/origin constraint. Equation (36) gives `d=0`.

Thus, with `(t)_m=prod_(j=1)^m(1-t^j)`, the character is

\[
 Z_N^{(k)}(t)=
 \sum_{\substack{m_1,\ldots,m_{k-1}\ge0\\
                 \sum_i i m_i=N}}
 \frac{t^{\sum_{i,j}\min(i,j)m_i m_j-N}}
      {\prod_{i=1}^{k-1}(t)_{m_i}}.
\]

The shift by `-N` is essential: this counts polynomial degree, not the affine module grading. For example, at pair contact (`k=2`) it gives `t^(N(N-1))/(t)_N`; at `N<k` it gives the entire symmetric-polynomial ring.

There is a min/max typographical inconsistency in the general boundary-vector discussion near equations (75)–(76) of the HTML/v1 text. It does not affect the present application: the boundary vector is read from the unambiguous equation (36), and the explicit boundary product in equation (57) is empty at `l=0`. No nonzero-`l` character is used here.

## 3. Fresh finite checks, distinct from the published proofs

The following were checked by new exact Sage calculations, not inferred merely from the sources:

1. Direct coincidence-restriction nullities versus admissible-partition counts for `k=2,3,4`, `k<=N<=8`, degrees `0<=L<=12`.
2. The fermionic character versus admissible-partition counts for `k=2,3,4`, `0<=N<=8`, `0<=L<=24`.
3. Threshold degree and uniqueness for `k=2,3,4`, `k<=N<=8`.

These finite checks corroborate the hypothesis mapping; the all-degree result rests on the published theorem and character proof, not extrapolation from the table.

Reproducible artifacts:

- [Exact test program](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/polynomial scalar interactions/independent/chiral/check_chiral_contact.py>).
- [Exact test output](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/polynomial scalar interactions/independent/chiral/exact_check_output.txt>).
