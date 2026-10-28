# 7. Fixed right degree: atomic laws and the recursive cluster spectrum

This chapter fixes the particle number $N$, the right primary degree $Q$, and the scalar dimension $\Delta>1$, and sends the left primary degree $P$ to infinity. The interaction coefficient is always extracted first on a finite block: $E=E_0+Gg+o(G)$, with $G$ Newton's constant. None of the limits below exchanges the perturbative limit with $P\to\infty$.

The physical interpretation inherits the perturbative, boundary, and sector-closure hypotheses of the finite-theory chapters. Once those finite matrices and pair coefficients are supplied, the arguments here are operator-theoretic proofs.

The finite theory supplies the diagonal-Bose primary space

$$
\mathcal P_N(P,Q)=\bigl(V_N^L(P)\otimes V_N^R(Q)\bigr)^{S_N},
\qquad W_N(P,Q)=b_N(Q)I+A_N(P,Q),
$$

where

$$
b_N(q)=-2N(N-1)\Delta^2-8q(N\Delta+q-1),\qquad A_N(P,Q)\geq0.
$$

Bose symmetry acts simultaneously on the two chiral factors. In particular, it does not mean symmetrizing them separately. If

$$
C_\ell=(\Delta+\ell)(\Delta+\ell-1),\qquad
 a_{k\ell}=\gamma_{k\ell}-4\Delta(\Delta-2)+8C_\ell,
$$

then the pair contribution to $A_N$ is the positive sum of the pair-channel projectors with coefficients $a_{k\ell}$. At fixed $Q$, its support is

$$
\mathcal B_Q=\{(k,\ell):0\leq\ell\leq Q,\ 0\leq k\leq\ell+2,
\ k+\ell\equiv0\pmod2\}.
$$

On this set $a_{k\ell}>0$; on the remaining admissible pair channels $k\geq\ell+4$, the coefficient vanishes. All assertions below inherit this finite, positive pair spectrum from the exact Einstein calculation. The purely algebraic cluster argument also admits signed, compact pair tails; the stronger atomic and accumulation conclusions use the Einstein support explicitly.

For the labelled-space proofs we use the positive extension that vanishes on odd $k+\ell$:
$$
A_N=\sum_{i<j}\sum_{(k,\ell)\in\mathcal B_Q}
a_{k\ell}\,\Pi^L_{ij,k}\Pi^R_{ij,\ell}.
$$
Here the two factors are orthogonal pair-channel projectors in the two chiral representations. Its diagonal-Bose compression is the physical residual, because every physical state has even pair parity.

A convention is essential when a lower-particle block is used as a cluster. Its residual is

$$
A_m(p,q)=W_m(p,q)-b_m(q)I
\tag{CL.1}
$$

at its **actual ordered degrees** $(p,q)$, including $p<q$. A solver that swaps the chiralities before returning a residual must restore the scalar $b_m(\min(p,q))-b_m(q)$ on every physical eigenvalue, including the multiplicity that the swapped solver called its baseline. Losing this shift changes the recursive spectral set.

## 7.1. Two complementary large-degree questions

For $N\geq4$, the empirical measure counts the $O(P^{N-3})$ nonzero residual eigenvalues after normalization by their number. It therefore records the pair atoms and suppresses a cluster family whose multiplicity is smaller by a power of $P$. The spectral set records every eigenvalue regardless of its statistical weight. Its limit is a recursive collection of lower-particle energies, and may contain infinitely many isolated values accumulating on simpler clusters. These are compatible descriptions of different observables.

### Theorem CL-01. Positive atomic law

Let $N\geq4$, $Q\geq0$, and $\Delta>1$ be fixed. Denote by $\mu^+_{N,P,Q}$ the probability measure on the strictly positive eigenvalues of $A_N(P,Q)$, with physical multiplicity. Set

$$
w_{N,Q}(\ell)=\binom{Q-\ell+N-3}{N-3},\qquad
 Z_{N,Q}=\sum_{(k,\ell)\in\mathcal B_Q}w_{N,Q}(\ell).
$$

Then

$$
W_2\!\left(\mu^+_{N,P,Q},\frac1{Z_{N,Q}}
\sum_{(k,\ell)\in\mathcal B_Q}w_{N,Q}(\ell)\delta_{a_{k\ell}}\right)
=O(P^{-1/2}).
\tag{CL.2}
$$

Coincident pair values have their weights added. The number of positive eigenvalues at distance more than $\varepsilon>0$ from the pair-atom set is $O(P^{N-4}\varepsilon^{-2})$. Constants may depend on $N,Q,\Delta$, and on $\varepsilon$ where indicated. The probability measure on the entire primary spectrum of $W_N$, including its exact kernel multiplicity, converges to $\delta_{b_N(Q)}$.

The proof uses a rectangular frame, so it does not identify the frame's auxiliary nullity with the physical kernel. If $F$ is the orthonormal distinguished-pair frame, $p_B$ the diagonal Bose projection, $D=\operatorname{diag}(a_{k\ell})$, and

$$
\binom N2 F^*p_BF=I+K,
$$

then the positive spectra of $A_N$ and $B=D^{1/2}(I+K)D^{1/2}$ agree with multiplicities.

Here the polynomial frame and its physical Gram matrix $\Gamma$ from Chapter 5 have been normalized: $F=F_{\mathrm{pol}}\Gamma^{-1/2}$. Thus $\Gamma$ is absorbed into the frame and the recoupling matrices; the auxiliary space still counts complete spectator levels. The quantitative statement is

$$
\|K\|_{\mathrm{HS}}^2+\|B-D\|_{\mathrm{HS}}^2=O(P^{N-4}).
\tag{CL.3}
$$

Overlapping pairs require the endpoint Racah estimate proved in Appendix CL.A; disjoint pairs require only descendant counting. Appendix CL.B proves the measure statement, including the removal of auxiliary zeros.

The same argument gives the positive-rank asymptotic
$$
\operatorname{rank}A_N(P,Q)=
\frac{Z_{N,Q}}{(N-2)!(N-3)!}P^{N-3}+O(P^{N-4}).
$$
This is exactly the coefficient $\rho_{N,Q}$ of Theorem EX-02. Indeed $\sum_{Q\geq0}Z_{N,Q}y^Q=(2-y^2)/[(1-y)^N(1+y)]$, which converts that theorem's identity and transposition terms into the displayed expression.

For instance, at $N=4,Q=2,\Delta=2$, the exact atom data are:

| Pair channel | Residual atom | Limiting weight |
|---|---:|---:|
| $(0,0)$ | $24/5$ | $3/13$ |
| $(2,0)$ | $8/35$ | $3/13$ |
| $(1,1)$ | $312/35$ | $2/13$ |
| $(3,1)$ | $8/21$ | $2/13$ |
| $(0,2)$ | $2808/35$ | $1/13$ |
| $(2,2)$ | $64/5$ | $1/13$ |
| $(4,2)$ | $40/77$ | $1/13$ |

The retained earlier matrix calculation (analytic source, Appendix A, §5.3) had $W_2=14.45596$ at $P=32$ and $W_2=3.00002$ at $P=512$; these finite values were not rerun here. Their slow convergence is compatible with the theorem's asymptotic rate and is a reason to keep the cluster analysis for exceptional eigenvalues.

For a complete free level, use $M_L,M_R$ for the level degrees to keep them separate from primary degrees. At fixed $M_R$, $M_L\to\infty$, the empirical measure of the entire correction spectrum converges to

$$
\sum_{q=0}^{M_R}
\frac{\binom{q+N-2}{N-2}}{\binom{M_R+N-1}{N-1}}
\delta_{b_N(q)}.
\tag{CL.4}
$$

The measure restricted to nonsaturated descendants instead converges, with the same $W_2$ rate, to the normalized sum of atoms $b_N(q)+a_{k\ell}$, $0\leq q\leq M_R$, $(k,\ell)\in\mathcal B_q$, with weights $\binom{q-\ell+N-3}{N-3}$. This is a descendant mixture, not another primary limit.

## 7.2. Compact cluster interactions and connected functional calculus

For a nonempty labelled particle set $S$, the positive discrete-series decomposition gives finite internal multiplicity spaces $V_S(p,q)=V_S^L(p)\otimes V_S^R(q)$. A local compact cluster operator is a degree-preserving family

$$
X_S\in\mathcal C_S^{\leq Q}:=
 c_0\!\bigoplus_{p\geq0,\ 0\leq q\leq Q}\operatorname{End}V_S(p,q),
\tag{CL.5}
$$

acting as the identity on the cluster's descendant representation and on the other particles. A proper-cluster operator need not be compact on the full $N$-particle primary direct sum: external relative excitations give it infinitely many copies. For a partition $\pi$ of the particle labels, $\mathcal C_\pi$ is the actual product image of its block algebras, with total internal right degree at most $Q$. Impossible degree-budget blocks are zero in this image.

### Theorem CL-02. Overlap and partition multiplication

If $S\cap T\ne\varnothing$,

$$
\mathcal C_S^{\leq Q}\mathcal C_T^{\leq Q}
\subseteq\mathcal C_{S\cup T}^{\leq Q}.
$$

For arbitrary partitions,

$$
\mathcal C_\pi\mathcal C_\tau\subseteq\mathcal C_{\pi\vee\tau}.
\tag{CL.6}
$$

For fixed left internal cutoffs on $S,T$, the product of their cutoff projections has norm $O(J^{-|S\cap T|\Delta})$ on union degree $J$. The assertion for arbitrary $c_0$ operators follows by taking the finite cutoff before the large-$J$ limit. In particular, the one-block component is compact on the fixed-$Q$ global-primary direct sum.

The exponent is controlled by the common **effective cluster**, whose lowest weight is $|S\cap T|\Delta/2+p_{S\cap T}$. Merely stating that two coupling trees become orthogonal does not supply the uniform finite-rectangle estimate needed for operator compactness. Appendix CL.C supplies it and explains why arbitrary matrices on internal multiplicity spaces cause no additional difficulty.

Let

$$
H_\pi=\sum_{S\in\pi}A_{|S|}^{(S)},\qquad
\mu(\pi,1_N)=(-1)^{|\pi|-1}(|\pi|-1)!.
$$

The superscript specifies the labelled cluster; singleton residuals vanish.

### Theorem CL-03. Connected functional calculus

For every continuous $f$ on an interval containing the spectra of all $H_\pi$,

$$
\mathfrak M_N(f):=
\sum_{\pi\in\Pi_N}\mu(\pi,1_N)f(H_\pi)
\tag{CL.7}
$$

belongs to the compact one-block component. If $f(x)=x^r$ and $0\leq r\leq N-2$, the expression is identically zero on every finite block. For $z\notin\mathbb R$, the connected resolvent

$$
\sum_\pi\mu(\pi,1_N)(z-H_\pi)^{-1}
$$

is compact. The same conclusion holds for real $z$ outside the union of the actual spectra. Its expansion at infinity first permits a nonzero term at order $z^{-N}$, built from all ordered spanning-tree words. On the labelled degree-zero vector the coefficient is

$$
(N-1)!N^{N-2}a_{00}^{N-1}.
\tag{CL.8}
$$

The proof expands **ordered** pair words, associates a graph component partition to each word, and uses finite partition-lattice Möbius inversion. No overlapping interaction factors are commuted. Polynomial approximation then gives the continuous calculus. On the physical space, internal Bose projections are inserted before using cluster spectra; the argument does not assert that functional calculus commutes with an arbitrary compression. See Appendix CL.D.

Compactness in Theorems CL-02–03 is an operator-norm tail assertion. It is not a trace-class or Schatten-class assertion. A pair tail proportional to $1/\log(k+2)$ already gives a compact connected two-body resolvent belonging to no finite Schatten class. The separate four-body trace-norm theorem below uses the actual endpoint exponent $\Delta>1$.

## 7.3. Recursive spectral sets and the parity of equal clusters

Define compact spectral sets

$$
\Sigma_{m,q}=\overline{\bigcup_{p\geq0}\sigma(A_m(p,q))},
\qquad \Sigma_{1,0}=\{0\},\quad \Sigma_{1,q}=\varnothing\ (q>0).
\tag{CL.9}
$$

Empty finite blocks contribute nothing. Repetitions are ignored in this definition. The two-body input is

$$
\Sigma_{2,q}=\{0\}\cup\{a_{kq}:(k,q)\in\mathcal B_q\}.
$$

For $N\geq2$, put

$$
\mathfrak C_{N,Q}=
\bigcup_{a=1}^{\lfloor N/2\rfloor}
\ \bigcup_{q_1+q_2\leq Q}
\bigl(\Sigma_{a,q_1}+\Sigma_{N-a,q_2}\bigr).
\tag{CL.10}
$$

All sums use the residual convention (CL.1). The unused right degree is the relative two-cluster coupling degree; it does not add a scalar energy to (CL.10).

### Theorem CL-04. Essential spectrum and Hausdorff limit

For fixed $N,Q,\Delta$,

$$
\sigma_{\mathrm{ess}}\!\left(\bigoplus_{P\geq0}A_N(P,Q)\right)
=\mathfrak C_{N,Q}.
\tag{CL.11}
$$

Along $P+Q$ even, the finite spectral sets converge in Hausdorff distance to $\mathfrak C_{N,Q}$. If $N\geq3$ is odd, this convergence holds along all sufficiently large $P$. For $N=2$, the odd total-degree physical block is empty and the even-subsequence limit is $\{0\}$.

For even $N=2m\geq4$, the precise odd-subsequence limit needs the actual internal source space. Let $\mathfrak h_{m,Q}$ be the orthogonal direct sum of all $\mathcal P_m(p,q)$, $p\geq0$, $0\leq q\leq Q$, and choose a complete eigenstate list $(\lambda_i,p_i,q_i)$ with multiplicity. Define

$$
\begin{aligned}
\mathfrak U_{2m,Q}
 &=\bigcup_{a<m}\ \bigcup_{q_1+q_2\leq Q}
 (\Sigma_{a,q_1}+\Sigma_{2m-a,q_2}),\\
\mathfrak E_{m,Q}^{+}
 &=\overline{\{\lambda_i+\lambda_j:i\leq j,\ q_i+q_j\leq Q\}},\\
\mathfrak E_{m,Q}^{-}
 &=\overline{\{\lambda_i+\lambda_j:i<j,\ q_i+q_j\leq Q\}}.
\end{aligned}
\tag{CL.12}
$$

Then along $(-1)^{P+Q}=\eta$, the Hausdorff limit is

$$
\mathfrak U_{2m,Q}\cup\mathfrak E_{m,Q}^{\eta}.
\tag{CL.13}
$$

The exterior square in the minus case acts on internal **states**, including their degrees and multiplicities, not on the set of distinct numerical eigenvalues. Two different states of the same energy are admissible in the exterior square; a single state paired with itself is not. This exchange rule comes from the Bose projection of two equal clusters and does not change the statistics of the original scalar field.

There are two parts to the proof. Connected functional calculus excludes every compact window outside the proper-cluster sum set on the whole high-$P$ block. Binary Clebsch–Gordan maps construct the converse inclusion; their finite families become isometries after Bose projection and a polar correction. For equal clusters the exact swap is a degree-twisted exchange involution. Conjugating that involution gives precisely the symmetric or exterior source in (CL.12). Compactness and a finite net upgrade the pointwise construction to Hausdorff convergence. Appendix CL.E gives the full argument.

For five particles this becomes the particularly usable formula

$$
\mathfrak C_{5,Q}=
\bigcup_{q\leq Q}\Sigma_{4,q}
\ \cup\!
\bigcup_{q_1+q_2\leq Q}(\Sigma_{3,q_1}+\Sigma_{2,q_2}).
\tag{CL.14}
$$

A countable comparison operator consists of every $A_4(p,q)$ and every $A_3(p,q_1)+\alpha I$, $\alpha\in\Sigma_{2,q_2}$, with the indicated budgets. Truncating its internal degree at $R$ approximates the limiting spectral set as $R\to\infty$. This is a target-$P$-independent spectral-set construction. It gives neither a proved effective uniform $R(\varepsilon)$ nor an operator-norm approximation by one copy of that countable operator. Collapsing the repeated two-body zero is valid for this set construction, not for a multiplicity calculation.

## 7.4. Finite accumulation depth

Write $K'$ for the set of limits of sequences of **distinct** points of a compact set $K$, and $K^{(r)}$ for its $r$-fold derived set.

### Theorem CL-05. Recursive depth bound

For the finite-support Einstein pair residual and fixed $N\geq2,Q$,

$$
\Sigma_{N,Q}^{(N-2)}\subseteq
\widehat\Sigma_2(Q):=\{0\}\cup\{a_{k\ell}:(k,\ell)\in\mathcal B_Q\},
\qquad
\Sigma_{N,Q}^{(N-1)}=\varnothing.
\tag{CL.15}
$$

Thus every $\Sigma_{N,Q}$ is compact and countable and has no nonempty perfect subset and no interval. The bound need not be attained. In particular, an eigenvalue repeated in infinitely many finite blocks is not by that repetition alone a derived-set point.

For a general self-adjoint $c_0$ pair residual, the weaker conclusions are

$$
\widehat\Sigma_N(Q)^{(N-1)}\subseteq\{0\},
\qquad \widehat\Sigma_N(Q)^{(N)}=\varnothing,
$$

where $\widehat\Sigma_N(Q)=\bigcup_{q\leq Q}\Sigma_{N,q}$. The proof is the elementary derived-set rule for finite unions and Minkowski sums, applied to Theorem CL-04; Appendix CL.F keeps the zero-rank and singleton cases explicit.

## 7.5. Exact eventual multiplicities at regular cluster values

A spectral-set theorem does not by itself count eigenvalues. To obtain exact multiplicities, define the finer-cluster threshold set

$$
\mathfrak F_{N,Q}=\bigcup_{\substack{\pi\in\Pi_N\\|\pi|\geq3}}
\ \bigcup_{\sum_{S\in\pi}q_S\leq Q}
\sum_{S\in\pi}\Sigma_{|S|,q_S}.
\tag{CL.16}
$$

A value $\lambda\in\mathfrak C_{N,Q}\setminus\mathfrak F_{N,Q}$ is called regular. This hypothesis has substantive content: it forces the binary internal source near $\lambda$ to be finite-dimensional and makes $\lambda$ isolated in $\mathfrak C_{N,Q}$.

For an unequal split $a<b$, define

$$
M_{a,b}^{Q}(\lambda)=
\sum_{\substack{q_1+q_2\leq Q\\p_1,p_2\geq0\\\alpha+\beta=\lambda}}
\operatorname{mult}_{A_a(p_1,q_1)}(\alpha)
\operatorname{mult}_{A_b(p_2,q_2)}(\beta).
\tag{CL.17}
$$

For $N=2m$, let $K_{m,Q}(\lambda)$ be the corresponding **ordered** source dimension for $m+m$, and put

$$
T_{m,Q}(\lambda)=
\sum_{\substack{p\geq0\\2q\leq Q}}
\operatorname{mult}_{A_m(p,q)}(\lambda/2),
\qquad
M_{m,m}^{Q,\eta}(\lambda)
=\frac{K_{m,Q}(\lambda)+\eta T_{m,Q}(\lambda)}2.
\tag{CL.18}
$$

These sums are finite under the regularity hypothesis.

### Theorem CL-06. Exact eventual projector rank

For every regular $\lambda$, there is $\varepsilon_0>0$ such that, for each fixed $0<\varepsilon<\varepsilon_0$, there is $P_0(\varepsilon)$ for which

$$
\operatorname{rank}\mathbf1_{(\lambda-\varepsilon,\lambda+\varepsilon)}(A_N(P,Q))
=\sum_{a<N/2}M_{a,N-a}^{Q}(\lambda)
+\mathbf1_{2\mid N}\,M_{N/2,N/2}^{Q,(-1)^{P+Q}}(\lambda)
\tag{CL.19}
$$

whenever $P\geq P_0(\varepsilon)$. All eigenvalues counted there converge to $\lambda$. There is one source for each cluster-size orbit; no factor $\binom Na$ multiplies (CL.19). An unused right degree gives the unique binary relative coupling and contributes no extra multiplicity.

The proof first excludes unbounded internal degrees by regularity, then derives an operator-norm approximation to the entire target spectral projector. The Bose-projected source maps have a joint Gram matrix $I+o(1)$; their polar isometry gives an actual finite-rank projection. Two orthogonal projections at distance less than one have the same rank. This yields an exact eventual integer, not a rank inferred from a trial subspace or from numerical near-degeneracy. The quantifiers in (CL.19) concern a fixed window; no rate for shrinking windows or individual eigenvalue series follows. Appendix CL.G gives the proof and the source-space exchange trace that produces (CL.18).

For example, when $N=3$, $\mathfrak F_{3,Q}=\{0\}$, so a positive pair atom has eventual multiplicity equal to the number of bad channel labels with that value. For $N=5,Q=0$,

$$
\mathfrak F_{5,0}=\Sigma_{3,0}\cup(\Sigma_{2,0}+\Sigma_{2,0}).
$$

At a regular value, the count is

$$
\sum_p\operatorname{mult}_{A_4(p,0)}(\lambda)
+\sum_{\alpha\in\{a_{00},a_{20}\}}\sum_p
\operatorname{mult}_{A_3(p,0)}(\lambda-\alpha).
$$

The zero two-body term is absent here because it would put the value in $\mathfrak F_{5,0}$.

## 7.6. The top chiral cluster and a limit on atomic descriptions

At $Q=0$, write

$$
a_0=a_{00}=\frac{2\Delta^2(2\Delta+5)}{(2\Delta-1)(2\Delta+1)},
\qquad
a_2=a_{20}=\frac{4\Delta}{(2\Delta+1)(2\Delta+3)}.
$$

They satisfy $0<a_2<a_0$.

### Theorem CL-07. Eventual simplicity of the largest chiral residual

For $N\geq3$, along all sufficiently large $P$, the largest eigenvalue of $A_N(P,0)$ is simple and

$$
\lambda_{\max}(A_N(P,0))
=\binom{N-1}{2}a_0+O(P^{-\Delta}).
\tag{CL.20}
$$

The source is the unique degree-zero ground state of the $(N-1)$-particle cluster, coupled to a singleton. The finite-block inequality $A_m\leq\binom m2a_0I$ has equality only at its unique degree-zero state. To use that inequality on the **closed** set $\Sigma_{m,0}$, one must also exclude a high-degree sequence tending to the endpoint. The recursive upper theorem gives this exclusion. It then places $\binom{N-1}{2}a_0$ outside the finer threshold, so Theorem CL-06 gives simplicity. Appendix CL.H proves this closure step and the rate.

More generally, every fixed finite orthonormal family of internal $(N-1)$-particle eigenstates of degrees $(p_i,q_i)$, $q_i\leq Q$, has normalized Bose-coupled images $U_P$ satisfying

$$
\|A_N(P,Q)U_P-U_P\operatorname{diag}(\lambda_i)\|
=O(P^{-\Delta}).
\tag{CL.21}
$$

The constants depend on the selected finite family. Two successive singleton insertions imply that if a positive $m$-body eigenvalue $\lambda$ is fixed, then for $N\geq m+2$ and $Q$ at least its right degree, the number of $N$-body eigenvalues in every fixed neighborhood of $\lambda$ tends to infinity. This supplies no multiplicity growth rate.

For $N\geq5,Q=0$, the inherited value $3a_0$ lies above both pair atoms and has unbounded local multiplicity. Consequently the positive residual cannot be represented as

$$
A_N^+(P,0)=D_P+K_P+E_P,
\qquad \sigma(D_P)\subseteq\{a_0,a_2\},\quad\|E_P\|\to0,
\tag{CL.22}
$$

with self-adjoint $K_P$ uniformly compact, meaning that the number of singular values of $K_P$ above each fixed positive threshold stays bounded as $P\to\infty$. This obstruction concerns a uniformly compact correction to the pair-atom description. It leaves the recursive cluster comparison of Theorem CL-04 intact.

## 7.7. Four particles: positive spectrum, nullity and Fredholm determinant

Four particles admit more information because the endpoint tail is summable in trace norm. Let $\alpha=(k,\ell)\in\mathcal B_Q$, $D=\operatorname{diag}(a_\alpha)$ on the pair-spectator frame, and $\epsilon=(-1)^{P+Q}$. The exact reduced matrix is

$$
B_{P,Q}=D^{1/2}(I+4R_1+R_0)D^{1/2},
\tag{CL.23}
$$

where $R_1$ exchanges overlapping pairs and $R_0$ exchanges the two disjoint pairs. Its positive eigenvalues are the physical positive eigenvalues of $A_4(P,Q)$.

For an ordered pair of distinct bad labels $\alpha,\beta$ with $\ell_\alpha+\ell_\beta\leq Q$, the pair-pair block has eigenvalues $0,a_\alpha+a_\beta$. For a repeated label it has the one eigenvalue $(1+\epsilon)a_\alpha$. Let $A_{3;t,u}^{\mathrm{aux}}$ be the finite three-body distinguished-pair Gram matrix, retaining its auxiliary zeros and the oriented baseline $b_3(u)$.

### Theorem CL-08. Refined positive spectral limit

At fixed $Q,\Delta>1$, along $(-1)^{P+Q}=\epsilon$, the strictly positive spectrum of $A_4(P,Q)$ converges in Hausdorff distance to

$$
\mathfrak S_Q^\epsilon=
\overline{\begin{aligned}
&\{a_\alpha:\alpha\in\mathcal B_Q\}
\ \cup\!\bigcup_{\substack{t\geq0\\u\leq Q}}
\sigma_+(A_{3;t,u}^{\mathrm{aux}})\\
&\quad\cup\{a_\alpha+a_\beta:
\ell_\alpha+\ell_\beta\leq Q,
\ \alpha\ne\beta\ \text{or}\ \epsilon=+1\}
\end{aligned}}.
\tag{CL.24}
$$

This compact set is separated from zero. At any isolated value outside the pair-atom set, the eventual multiplicity is the sum of the corresponding three-body positive multiplicities and allowed unordered pair-pair channels. Accidental numerical coincidences add. The full residual spectrum additionally has its physical zero eigenspace; the auxiliary zeros in (CL.23) are a different count.

The last distinction is necessary. For example, the auxiliary three-body block at $(t,u)=(0,1)$ has a zero column although the physical primary block is empty. The no-positive-collapse assertion in (CL.24) therefore needs an exact auxiliary nullity computation, not only positive-matrix norm convergence.

Define

$$
\mathcal A(y)=\frac{2-y^2}{(1-y)(1-y^2)},\qquad
z_3(y)=\frac{3y^4-5y^3-2y+6}{(1-y)^4(1+y+y^2)}.
$$

For every $P>15+3Q$, the exact auxiliary nullity is

$$
z_{4,P,Q}=[y^Q]\left\{
\frac{z_3(y)}{1-y}
+\frac{\mathcal A(y)^2-\epsilon\mathcal A(y^2)}{2(1-y)}
\right\}.
\tag{CL.25}
$$

For $Q=0$ it is $7$ on the even-total-degree subsequence and $9$ on the odd one; for $Q=2$ these values are $64$ and $68$. Appendix CL.J derives the generating functions, the finite transient bound, and the comparison of zero spectral projections.

### Theorem CL-09. Complex locally uniform Fredholm limit

Let $n_\alpha(P,Q)$ be the multiplicity of $a_\alpha$ in the distinguished-pair diagonal matrix and set

$$
\Omega_Q=\mathbb C\setminus\{-a_\alpha:\alpha\in\mathcal B_Q\},
\qquad
\mathcal F_{P,Q}(s)=
\frac{\det(sI+B_{P,Q})}{\prod_\alpha(s+a_\alpha)^{n_\alpha(P,Q)}}.
\tag{CL.26}
$$

Along either parity subsequence, $\mathcal F_{P,Q}$ converges locally uniformly as a holomorphic function on $\Omega_Q$ to

$$
\mathcal F_Q^\epsilon(s)=
\mathcal F_{22,Q}^\epsilon(s)
\prod_{u=0}^Q\prod_{t=0}^{\infty}
\frac{\det(sI+A_{3;t,u}^{\mathrm{aux}})}
{\prod_{\alpha:\,k_\alpha\leq t,\ \ell_\alpha\leq u}(s+a_\alpha)},
\tag{CL.27}
$$

where

$$
\mathcal F_{22,Q}^\epsilon(s)=
\prod_{\substack{\{\alpha,\beta\},\ \alpha\ne\beta\\
\ell_\alpha+\ell_\beta\leq Q}}
\frac{s(s+a_\alpha+a_\beta)}{(s+a_\alpha)(s+a_\beta)}
\prod_{\substack{\alpha\\2\ell_\alpha\leq Q}}
\frac{s+(1+\epsilon)a_\alpha}{s+a_\alpha}.
\tag{CL.28}
$$

The infinite product converges normally. On every compact $K\subset\Omega_Q$, a triple-degree cutoff $T$ has determinant error controlled by a constant times the trace-norm tail $O_K(T^{1-\Delta})$, followed by a finite-$T$ error tending to zero as $P\to\infty$. The order of these limits matters.

The proof uses the branch-free normalization $(s+D)^{-1}$, whose norm is uniformly bounded on $K$. A real-$s$ argument involving square roots would not establish this complex theorem. Local uniform convergence and Rouché's theorem give the multiplicities of isolated zeros away from the excluded atom locations. At $s=0$, (CL.25) specifies the power to remove before taking a pseudodeterminant. Logarithms require an explicitly chosen zero-free domain and branch; the theorem itself is a statement about determinants. Appendix CL.K supplies the trace-norm comparison.

## 7.8. Finite Gamma representation and a certified four-body example

### Theorem CL-10. Integer-dimension Gamma reduction

Suppose $\Delta\in\mathbb Z$, $\Delta\geq2$, with $Q$ fixed. For each right degree $u\leq Q$ and parity $\eta=(-1)^t$, the sufficiently large-$t$ determinant factor in (CL.27) is a rational function

$$
f_{u,\eta}(t;s)=
\frac{\prod_j(t-\alpha_j(s))}{\prod_j(t-\beta_j(s))},
\qquad
\#\{\alpha_j\}=\#\{\beta_j\},\quad
\sum_j\alpha_j=\sum_j\beta_j.
\tag{CL.29}
$$

After cancelling common factors, choose the first $m\geq Q+2$ of that parity. Then

$$
\prod_{n=0}^{\infty}f_{u,\eta}(m+2n;s)
=\prod_j\frac{\Gamma((m-\beta_j(s))/2)}
{\Gamma((m-\alpha_j(s))/2)}.
\tag{CL.30}
$$

Together with the finitely many omitted triple blocks and (CL.28), this is a finite Gamma representation of the limit determinant. The expression is interpreted by symmetric root multisets and analytic continuation on $\Omega_Q$ across root collisions and removable specializations. No ordering of roots or global square-root branch is part of the theorem. A conservative total root-count bound is $O(Q^4)$ for fixed integer $\Delta$. No finite Gamma formula is asserted for noninteger $\Delta$.

For $\Delta=2,Q=0$, $a_0=24/5$, $a_2=8/35$. If $C=(t+2)(t+3)$, $L=(5s+24)(35s+8)$, then for $t\geq2$

$$
\begin{aligned}
f_{0,\eta}(t;s)&=\frac{N_\eta(C;s)}{LC^2(C-2)(C-6)},\\
N_\eta(C;s)&=LC^2(C-2)(C-6)\\
&\quad+\eta\{16800sC(C^2-32C+396)
+34560C(C^2-64C+908)\}\\
&\quad-19353600(C-18).
\end{aligned}
\tag{CL.31}
$$

A quartic in $C$ therefore gives eight roots in $t$. The denominator roots are $0,-1,-2,-2,-3,-3,-4,-5$; the even and odd tails start at $2$ and $3$, respectively. The finite $t=0,1$ prefix is $(s+72/5)s/(s+24/5)^2$. Appendix CL.L derives this rational determinant and the Gamma product without taking arbitrary square roots of matrix entries.

The nonchiral integer-dimension calculation is covered by the same theorem. In the retained $\Delta=2,u=1,s=20$ specialization, the rational factor is degree ten in $C$, its denominator is

$$
49512859\,C^4(C-12)(C-6)^2(C-2)^3,
$$

and the $t=0,1,2$ prefix factors are $25/31$, $8875/7843$, and $1413125/1388211$. The even tail starts at $4$, the odd tail at $3$. The associated value was recomputed in this assembly at 80 decimal working precision:

$$
\log\mathcal F_1^+(20)
=-0.0358546286698960811729531052143874137590\ldots.
$$

Both nonchiral rational identities were also reconstructed independently for symbolic $t$. The displayed decimal is a numerical evaluation of the proved rational/Gamma mechanism, with polynomial-root residual checks; it is not an interval certificate. Appendix CL.L gives the full exact numerator coefficients and the recorded numerical scope.

### Theorem CL-11. Certified smallest positive four-body limit at $\Delta=2,Q=0$

For either total-degree parity,

$$
\lim_{P\to\infty}\lambda_{\min}^+(A_4(P,0))
=\lambda_*:=\frac{33220-4\sqrt{66856729}}{15015}
=0.03420674817\ldots.
\tag{CL.32}
$$

The value is the smaller positive eigenvalue of the three-body $t=9$ block. Its characteristic polynomial, made monic, is

$$
x^2-\frac{3654200}{825825}x+\frac{124032}{825825}.
$$

An exact rational check of the explicit two-by-two matrices for $2\leq t\leq128$ puts every other positive triple eigenvalue above $7/200$. A uniform analytic Gershgorin estimate gives, for every $t\geq129$,

$$
\|R_3(t,0)\|\leq\frac{18595}{2397824}<\frac1{100},
\qquad
\lambda_{\min}(A_{3;t,0}^{\mathrm{aux}})\geq\frac{116}{875}>
\frac7{200}.
\tag{CL.33}
$$

All pair atoms and positive pair-pair sums are larger. The exact finite certificate and the uniform tail proof are given in Appendix CL.M. Thus (CL.32) is not an extrapolation from a numerical degree cutoff. The physical correction has the additional baseline $b_4(0)=-96$.

## 7.9. Logical scope and provenance

The chain is: exact finite pair residuals and primary kernels; normalized endpoint recoupling; overlap compactness; connected functional calculus; Bose-compatible binary embeddings; recursive spectral sets; source finiteness and projector ranks. The four-body branch adds summable triple tails and exact auxiliary nullity before deriving complex Fredholm convergence and the Gamma reduction. The statements about compact cluster algebras, empirical measures, limiting sets, and exact multiplicities use different norms and counting conventions; no step identifies them.

The complete proofs appear in Appendices CL.A–CL.M. The source map records the hierarchy report and full proof appendix, its independent audit, the analytic four-body appendix and its later Fredholm audit, and the deep-structure singleton argument. The independent audit repairs incorporated here are the ordered-degree baseline (CL.1), source-space equal-cluster exchange (CL.12), source finiteness before exact rank counting, exclusion of a closure endpoint in CL-07, and the branch-free locally uniform proof in CL-09. External mathematical inputs are normalized $\mathfrak{su}(1,1)$ recoupling [@CrampeEtAl2024; @Post2015], the finite-dimensional Hoffman–Wielandt inequality [@HoffmanWielandt1953], and the trace-class determinant continuity estimate [@Bornemann2010]. The many-body semilattice and scalar-$\phi^4$ papers [@DamakGeorgescu2009; @DerkachovManashov1996] are context; they do not replace any Bose or Einstein-specific argument here.
