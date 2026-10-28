# Differential collision maps and an exact nonchiral kernel for every particle number

## 1. Definitions

Fix an integer \(N\ge2\) and a real \(\Delta>1\). Write
\[
U_{N,P}=\ker\Bigl(\sum_i\partial_{z_i}\Bigr)\cap\mathbb C[z_1,\ldots,z_N]_P,
\qquad \mathcal H_{N;P,Q}=(U_{N,P}\otimes U_{N,Q})^{S_N}.
\]
The product Hilbert inner product makes different monomials orthogonal and gives
\[
\left\|\prod_i z_i^{p_i}w_i^{q_i}\right\|^2
=\prod_i\frac{p_i!q_i!}{(\Delta)_{p_i}(\Delta)_{q_i}}.
\]
The contact coefficient operator is
\[
W=\sum_{i<j}\sum_{k\ge0}c_k\Pi_{ij}^{(k,k)},\qquad
c_k=\frac1{8\pi(2\Delta+2k-1)}.
\tag{J1}
\]
The kernel results below also hold if the \(c_k\) are replaced by arbitrary strictly positive numbers. Only finitely many \(k\) occur in any fixed bidegree.

The polynomial realization of one chiral factor uses
\[
J_-=\partial_z,\quad J_0=z\partial_z+\Delta/2,\quad
J_+=z^2\partial_z+\Delta z.
\]
For a pair, the irreducible label \(k\) has lowest polynomial \((z_i-z_j)^k\) and lowest weight \(\Delta+k\).

## 2. An explicit differential factorization

For one chirality define the pair fusion operator
\[
\mathcal R_{ij,k}f(t,z_{\mathrm{spect}})=
\left.
\sum_{a=0}^k
\frac{(-1)^a\binom{k}{a}}{(\Delta)_a(\Delta)_{k-a}}
\partial_{z_i}^{a}\partial_{z_j}^{k-a}f
\right|_{z_i=z_j=t}.
\tag{J2}
\]
The fused variable has inner-product parameter \(2\Delta+2k\), meaning
\(\|t^n\|^2=n!/(2\Delta+2k)_n\); spectator parameters remain \(\Delta\).
These are normalized versions of the classical Rankin–Cohen differential intertwiners. Their use as intertwiners of holomorphic discrete-series tensor products is established representation theory, rather than a novelty claim; see Kobayashi and Pevzner, *Rankin–Cohen brackets in Representation Theory*, arXiv:2601.15750, §1.2. The factorization and applications here are derived directly in the project's conventions.

**Proposition J1.** Set
\[
g_k=\frac{k!(2\Delta+k-1)_k}{(\Delta)_k^2}>0.
\]
Then, on the polynomial tensor product,
\[
\mathcal R_{ij,k}^{\dagger}\mathcal R_{ij,k}=g_kP_{ij,k}.
\tag{J3}
\]
Consequently, with 
\(\mathcal S_{ij,k}=\mathcal R^L_{ij,k}\mathcal R^R_{ij,k}\),
\[
\boxed{W=\sum_{i<j}\sum_k\frac{c_k}{g_k^2}
\mathcal S_{ij,k}^{\dagger}\mathcal S_{ij,k}.}
\tag{J4}
\]
All adjoints use the specified input and fused-output Hilbert metrics. In particular,
\[
\boxed{\ker W|_{\mathcal H_{N;P,Q}}
=\{f\in\mathcal H_{N;P,Q}:\mathcal S_{12,k}f=0
\text{ for every }0\le k\le\min(P,Q)\}.}
\tag{J5}
\]

**Proof.** Commutation with total \(J_-\) and \(J_0\) follows directly from differentiation and restriction. If the coefficient of \(\partial_i^a\partial_j^{k-a}\) is denoted \(b_a\), commutation with total \(J_+\) reduces to
\[
b_{a+1}(a+1)(\Delta+a)+b_a(k-a)(\Delta+k-a-1)=0.
\]
The coefficients in \(J2\) satisfy this recurrence. Thus \(\mathcal R_k\) intertwines the pair representation with the fused representation of parameter \(2\Delta+2k\). Pair Casimir eigenvalues \((\Delta+\ell)(\Delta+\ell-1)\) are distinct, so it vanishes on every irreducible label \(\ell\ne k\).

On the lowest polynomial,
\[
\mathcal R_k(z_i-z_j)^k
=(-1)^kk!\sum_{a=0}^k\frac{\binom{k}{a}}{(\Delta)_a(\Delta)_{k-a}}
=(-1)^kg_k,
\]
where the last finite Vandermonde sum also evaluates the norm
\(\|(z_i-z_j)^k\|^2=g_k\). Its \(n\)-th pair-raising descendant has squared norm
\(g_kn!(2\Delta+2k)_n\). The image is
\((-1)^kg_k(2\Delta+2k)_nt^n\), whose squared norm is
\(g_k^2n!(2\Delta+2k)_n\). Their ratio is \(g_k\), proving \(J3\) on every descendant, hence everywhere. Tensoring the two chiral identities gives \(J4\). Positivity gives the common kernel over all pairs. Since \(f\) is Bose invariant and all pairs are permutation conjugate, one pair suffices in \(J5\). ∎

This formula gives a local differential presentation of the collision constraints. It avoids constructing spectral projectors or importing a Racah engine. The constraints still include every equal-label jet: ordinary restriction to the double diagonal tests only \(k=0\), and cannot replace \(J5\). For example \((z_1-z_2)^2(w_1-w_2)^2\) vanishes on that diagonal but has the nonzero two-body coefficient \(c_2\).

For clarity, in \(u=z_i-z_j\), \(s=(z_i+z_j)/2\), the first three operators are
\[
\mathcal R_0f=f|_{u=0},\qquad
\mathcal R_1f=-\frac2\Delta\partial_uf|_{u=0},
\]
\[
\mathcal R_2f=
\left.\frac{4(2\Delta+1)\partial_u^2-\partial_s^2}
{2\Delta^2(\Delta+1)}f\right|_{u=0}.
\tag{J6}
\]
The tangential derivative in \(\mathcal R_2\) explains why higher nonchiral kernels should not automatically be treated as ordinary vanishing ideals.

## 3. Complete kernel in the first nonchiral strip

Let
\[
V_N(z)=\prod_{i<j}(z_i-z_j),\qquad D_N=N(N-1).
\]

**Theorem J2.** For every \(N\ge2\), \(P\ge0\), and \(\Delta>1\),
\[
\boxed{\ker W_{N;P,1}=V_N(z)^2\mathcal H_{N;P-D_N,1}.}
\tag{J7}
\]
The right side is zero when \(P-D_N<0\). The analogous formula holds with left and right exchanged. The kernel in this strip is independent of the mass parameter as a polynomial subspace.

**Proof.** Fix a pair \(ij\). On right total degree one, the only pair labels are \(k_R=0,1\). On the Bose subspace, simultaneous pair exchange acts trivially; a component with labels \(k_L,k_R\) can therefore occur only when \(k_L+k_R\) is even. Consequently a left label zero can occur only with right label zero, and a left label one only with right label one. Contact annihilation removes both these equal-label sectors. It is therefore equivalent to the absence of all left labels \(0,1\).

The filtration by powers of \(z_i-z_j\) is invariant under pair raising. Every label-\(k\) descendant is divisible by \((z_i-z_j)^k\). At each fixed degree the triangular decomposition, or equivalently the distinct Casimir eigenvalues on the associated graded spaces, proves
\[
f\text{ contains only labels }k_L\ge2
\quad\Longleftrightarrow\quad(z_i-z_j)^2\mid f.
\]
Thus the contact kernel requires precisely this divisibility for every pair. The linear factors \(z_i-z_j\) are nonassociate primes in the polynomial ring, so unique factorization gives \(V_N(z)^2\mid f\). This argument does not require pair-collision ideals to be comaximal. Conversely that divisibility removes every forbidden pair channel when \(Q=1\).

The divisor is itself translation invariant and Bose symmetric. If \(f=V_N^2h\), then translation invariance of \(f\) implies that of \(h\), because the polynomial ring has no zero divisors. Bose invariance of \(h\) follows similarly. Degrees give precisely \(J7\). ∎

The parity step is essential. The same argument does not extend unchanged to \(Q=2\): the allowed sectors \((k_L,k_R)=(0,2)\) and \((2,0)\) prevent the inference that every kernel element is divisible by \(V_N^2\).

## 4. Explicit basis and exact rank counting

Put
\[
X_i=z_i-\frac1N\sum_jz_j,\qquad Y_i=w_i-\frac1N\sum_jw_j,
\quad p_{r1}=\sum_iX_i^rY_i,
\]
and write \(e_j=e_j(X_1,\ldots,X_N)\).

**Proposition J3.** The first-strip primary space is a free module
\[
\bigoplus_{P\ge0}\mathcal H_{N;P,1}
=\bigoplus_{r=1}^{N-1}\mathbb C[e_2,\ldots,e_N]p_{r1}.
\tag{J8}
\]
In particular, a complete explicit kernel basis at degree \(P\) consists of
\[
\boxed{V_N^2p_{r1}\prod_{j=2}^Ne_j^{a_j},\qquad
1\le r\le N-1,\quad a_j\ge0,\quad
D_N+r+\sum_{j=2}^Nja_j=P.}
\tag{J9}
\]

**Proof.** A polynomial linear in \(Y\) corresponds to a permutation-equivariant polynomial vector \(F_i(X)\), modulo addition of the same polynomial to every component because \(\sum_iY_i=0\). Its first component is invariant under the spectator group \(S_{N-1}\). That invariant ring is generated over \(A=\mathbb C[e_2,\ldots,e_N]\) by \(X_1\): the elementary symmetric functions of the other coordinates are recursively expressed using the full elementary functions and \(X_1\). The monic characteristic identity 
\(\prod_i(t-X_i)=0\) at \(t=X_1\) reduces powers to \(0,\ldots,N-1\). Equivariance then expresses the vector as a sum of \(A\)-multiples of \((X_i^r)_i\). The \(r=0\) vector pairs to zero with \(Y\), proving spanning in \(J8\).

For independence, suppose 
\(\sum_{r=1}^{N-1}A_r(e)\sum_iX_i^rY_i=0\).
On the dense set of distinct \(X_i\), the degree-at-most-\(N-1\) polynomial 
\(h(t)=\sum_rA_r(e)t^r\) takes the same value at all \(N\) points \(X_i\). Hence it is constant and all \(A_r=0\). Polynomiality extends this identity everywhere. This proves freeness, and Theorem J2 then gives \(J9\). ∎

Let \(m_N(P,1)=\dim\mathcal H_{N;P,1}\). The exact generating functions are
\[
\boxed{\sum_{P\ge0}m_N(P,1)t^P
=\frac{t+t^2+\cdots+t^{N-1}}{\prod_{j=2}^N(1-t^j)},}
\tag{J10}
\]
\[
\boxed{\sum_{P\ge0}\dim\ker W_{N;P,1}\,t^P
=\frac{t^{D_N}(t+\cdots+t^{N-1})}{\prod_{j=2}^N(1-t^j)},}
\tag{J11}
\]
\[
\boxed{\sum_{P\ge0}\operatorname{rank}W_{N;P,1}\,t^P
=\frac{(1-t^{D_N})(t+\cdots+t^{N-1})}{\prod_{j=2}^N(1-t^j)}.}
\tag{J12}
\]
The first nonzero kernel is one-dimensional at \(P=D_N+1\), generated by \(V_N^2p_{11}\). For four particles this is the explicit state at \((P,Q)=(13,1)\); the physical primary dimension is 16 and the contact rank is 15. At \((12,1)\) the dimension and rank are both 12.

For each fixed \(N\ge3\), expansion of the rational generating functions at \(t=1\), with lower-order contributions from other roots of unity, gives
\[
m_N(P,1)=\frac{N-1}{N!(N-2)!}P^{N-2}+O_N(P^{N-3}),
\]
\[
\operatorname{rank}W_{N;P,1}
=\frac{N-1}{(N-2)!(N-3)!}P^{N-3}+O_N(P^{N-4}),
\tag{J13}
\]
where for \(N=3\) the rank is exactly 2 for all \(P\ge4\). Thus
\[
\boxed{\frac{\dim\ker W_{N;P,1}}{m_N(P,1)}
=1-\frac{N(N-1)(N-2)}P+O_N(P^{-2}).}
\tag{J14}
\]
Unlike the existing balanced-block estimate, this result includes the exact leading coefficient in a genuinely nonchiral strip and a complete explicit kernel basis.

## 5. Comparison with the gravitational residual

The source's Einstein residual excludes the even-parity pair channels \(k_L\le k_R+2\). For \(Q=1\), these remove all left labels \(0,1,2,3\), yielding the corresponding \(V_N^4\) divisibility and a degree shift \(2D_N\). This comparison is conditional on that gravitational pair multiplier. The contact theorem itself uses no gravitational dynamics.

The common polynomial covariant ring in \(J8\) is kinematic. The exponent of the Vandermonde, and therefore the onset and exact dimension of the zero space, record which pair channels the dynamics excludes. The normalized nonzero eigenvalues require the actual \(c_k\) and the Hilbert metrics, not merely these ideal conditions.

## 6. Reproducible checks

`contact_jets.py` was written from the differential formulas above and imports no repository calculation. It verifies 133 symbolic identities at variable \(\Delta\), applying \(\mathcal R_k\) to lowest-pair polynomials and their raising descendants. It also computes exact collision-map ranks in 33 first-strip blocks at \(\Delta=3/2,2,7/3\), including the first four-particle kernel at \((13,1)\), using the explicit invariant basis \(J8\). These are checks of the proofs, not replacements for them. Results and exact counting tables are stored in `contact_jets_results.json`.

The standard Rankin–Cohen operators and free invariant-covariant module are not new mathematical constructions. The differential normalization, their direct contact-factorization use, and the all-\(N\) first-nonchiral-strip classification are the extensions relative to the inspected research materials; no literature-priority claim is made.
