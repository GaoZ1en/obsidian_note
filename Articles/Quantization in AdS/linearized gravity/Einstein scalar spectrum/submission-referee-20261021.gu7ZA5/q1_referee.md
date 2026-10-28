# Independent Q=1 referee report

**Verdict:** Appendix A's differential normalization, exact first-strip kernel, free-module basis, Hilbert/rank series, and asymptotics are correct for every N≥2, Δ>1, and strictly positive c_k. The derivation below was completed before opening the submitted candidate. No original file was modified and no supplied script was run.

## Independent analytic derivation

Let V_N(z)=∏_{i<j}(z_i−z_j), D=N(N−1), and interpret negative-degree spaces as zero. Then

\[
\ker W_{N;P,1}=V_N(z)^2\mathcal H_{N;P-D,1},\qquad
K_N(t)=\frac{t^D(t+\cdots+t^{N-1})}{\prod_{j=2}^N(1-t^j)}.
\]

Fix a pair, write d=z_i−z_j and s=(z_i+z_j)/2. At pair degree m, its label-k descendant satisfies

\[
(J_{+,i}+J_{+,j})^{m-k}d^k
=(2\Delta+2k)_{m-k}s^{m-k}d^k+O(d^{k+2}).
\]

The diagonal coefficient is nonzero. Hence the sum of pair-label subspaces k≥r is exactly the ideal (d^r), degree by degree. Right total degree one allows only labels 0,1. Simultaneous pair parity forces left label 0 to occur only with right label 0, and left label 1 only with right label 1. Positivity therefore removes precisely both low left labels for every pair. Thus d² divides the full polynomial for each pair; unique factorization gives V_N². Dividing preserves both translation invariances and simultaneous permutation invariance.

For centered X_i,Y_i, put p_{r1}=Σ_i X_i^rY_i and e_j=e_j(X). The standard covariant module is free:

\[
\bigoplus_P\mathcal H_{N;P,1}
=\bigoplus_{r=1}^{N-1}\mathbb C[e_2,\ldots,e_N]p_{r1}.
\]

Indeed, a component of an equivariant vector is invariant under the spectator S_{N−1}, so it is a polynomial in X_i over the full symmetric invariant ring. The characteristic equation reduces its degree to N−1; the constant vector pairs to zero with Y. Independence follows by evaluating a degree≤N−1 polynomial at N distinct X_i. This proves the displayed Hilbert series and the basis V_N² p_{r1}∏_j e_j^{a_j}, with D+r+Σ_j j a_j=P.

**Empty degrees:** N=2 gives K_2(t)=t³/(1−t²): only odd P≥3, each one-dimensional; even-P physical spaces themselves vanish. For N≥3, the kernel is zero for P≤D and nonzero at every P≥D+1. Its first nonzero component is one-dimensional. No exceptional Δ>1 occurs.

## Differential maps versus ordinary jets

For the submitted R_k, define

\[
g_k=\frac{k!(2\Delta+k-1)_k}{(\Delta)_k^2},\qquad
T_k=\frac{(-1)^k}{g_k}R_k.
\]

The independently derived coefficient recurrence is

\[
b_{a+1}(a+1)(\Delta+a)+b_a(k-a)(\Delta+k-a-1)=0.
\]

It gives exactly the submitted coefficients and fused parameter 2Δ+2k. The embedding I_k(t^n)=J_{+,ij}^n d^k/(2Δ+2k)_n has norm-squared scaling g_k, and T_k I_k=1. Therefore R_k†R_k=g_kΠ_k and the submitted positive differential factorization of W is correct.

Individual higher-label annihilation is **not** a raw jet condition:

\[
T_2=\left.\left(\frac12\partial_d^2-
\frac{1}{8(2\Delta+1)}\partial_s^2\right)\right|_{d=0}.
\]

But simultaneous removal of every label 0,…,r−1 **is exactly** vanishing of all ordinary normal jets below r, equivalently d^r divisibility. There is no gap in the Q=1 inference.

## Comparison and source locators

- [§4.1:171–201](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/AdS3_Independent_Investigation.md#L171-L201>): correct summary, basis, series, and N=4 onset.
- [Appendix A:424–478](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/AdS3_Independent_Investigation.md#L424-L478>): intertwiner and adjoint normalization correct.
- [Appendix A:482–493](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/AdS3_Independent_Investigation.md#L482-L493>): second-order tangential correction correct.
- [Appendix A:502–518](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/AdS3_Independent_Investigation.md#L502-L518>): exact polynomial-subspace proof correct; no comaximality assumption is needed.
- [Appendix A:531–584](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/AdS3_Independent_Investigation.md#L531-L584>): free basis, Hilbert/rank series, leading coefficients, and N=3 exact rank 2 for P≥4 agree with the independent derivation.
- [Appendix A:590](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/AdS3_Independent_Investigation.md#L590>): gravitational comparison remains conditional on the assumed channel multiplier; gravitational dynamics was not audited.

## Checks and limits

A small fresh Sage check, with symbolic Δ, passed raising covariance for k≤4, channel selection for k,ℓ≤4 and descendant orders≤4, the second-order correction, and N=4 dimensions m(12,1)=12, m(13,1)=16. These checks support, but do not establish, the all-parameter theorem. The code and completed result are saved as [q1_checks.py](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/submission-referee-20261021.gu7ZA5/q1_checks.py>) and [q1_checks_result.md](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/submission-referee-20261021.gu7ZA5/q1_checks_result.md>); saving did not rerun them.

No Q=2 classification is claimed. Allowed (0,2),(2,0) channels invalidate the Q=1 divisibility inference; no immediate simple global advance emerged, so that exploration was stopped.
