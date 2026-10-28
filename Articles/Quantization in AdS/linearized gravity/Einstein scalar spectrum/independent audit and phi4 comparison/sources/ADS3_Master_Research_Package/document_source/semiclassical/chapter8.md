# 8. Two large excitation degrees: Grassmannian law and the positive soft spectrum

This chapter keeps $N\geq3$ and the physical mass parameter $\Delta>1$ fixed. It studies the coefficient of $G$ in the perturbative energy, after the physical reduction in Chapters 2–4. Thus every limit below concerns the finite operator $W_N(P,Q)$. It does not assert uniformity of the original $o(G)$ remainder when an excitation degree grows. Write

\[
W_N(P,Q)=b_N(Q)I+A_N(P,Q),\qquad
b_N(Q)=-2N(N-1)\Delta^2-8Q(N\Delta+Q-1),\qquad A_N\geq0,
\]

and let $d_N(P,Q)$ and $\kappa_N(P,Q)$ be the physical dimension and exact kernel dimension. The primary space is invariant under the **diagonal** particle permutation group. Separate left and right Bose projections would change it. Throughout this chapter $P,Q\to\infty$, with $Q/P\to r\in(0,1]$, unless a different quantifier is displayed.

## 8.1 The limiting probability space and its normalization

Choose two independent Haar distributed oriented two-planes in $\mathbb R^N$. For orthonormal frames $(u,v)$ and $(u',v')$, set

\[
B_{ij}=u_iv_j-u_jv_i,\quad B'_{ij}=u'_iv'_j-u'_jv'_i,
\qquad X_{ij}=B_{ij}^2,\quad Y_{ij}=(B'_{ij})^2.
\]

The squares are frame independent, and

\[
\sum_{i<j}X_{ij}=\sum_{i<j}Y_{ij}=1.
\]

The components within $X$, and within $Y$, are correlated Plücker coordinates. Replacing them by independent scalar variables gives the wrong law. Define

\[
h_{N,r}(X,Y)=-8\sum_{i<j}\min(X_{ij},r^2Y_{ij}),\qquad
a_{N,r}(X,Y)=8\sum_{i<j}(r^2Y_{ij}-X_{ij})_+.
\]

Then $a_{N,r}=h_{N,r}+8r^2$. In the balanced case,

\[
a_{N,1}=4\sum_{i<j}|X_{ij}-Y_{ij}|.
\]

**Theorem SC-01 (Grassmannian spectral law).** For every continuous $f$ on a fixed compact interval containing the spectra,

\[
\frac{1}{d_N(P,Q)}\operatorname{Tr}f\!\left(\frac{W_N(P,Q)}{P^2}\right)
\longrightarrow \mathbb E f(h_{N,r}),
\qquad
\frac{1}{d_N(P,Q)}\operatorname{Tr}f\!\left(\frac{A_N(P,Q)}{P^2}\right)
\longrightarrow \mathbb E f(a_{N,r}).
\]

The law $\nu_{N,r}=\operatorname{Law}(a_{N,r})$ has support $[0,8r^2]$, is absolutely continuous on $(0,8r^2]$, and has no positive atom. If $r<1$, its only atom is

\[
p_N(r)=\Pr\{X_{ij}\geq r^2Y_{ij}\text{ for every }i<j\}>0
\]

at zero. If $r=1$, the entire law is absolutely continuous, including the assertion of zero mass at zero. Moreover,

\[
\min\sigma(A_N/P^2)\longrightarrow0,\qquad
\max\sigma(A_N/P^2)\longrightarrow8r^2.
\]

The dimension normalization is

\[
d_N(P,Q)\sim\frac{P^{N-2}Q^{N-2}}{N!((N-2)!)^2}.
\]

**Proof mechanism.** At the auxiliary representation parameter $1/2$, the common primary polynomials are coordinate-even harmonic tensors of degrees $2P,2Q$, and a pair Casimir is $J_{ij}^2/4-1/4$. Its normalized coherent symbol is $B_{ij}^2$, not $B_{ij}^2/4$. The exact Einstein pair formula differs from $4\Delta(\Delta-2)-8\min(C^L,C^R)$ by $O(P+Q+1)$. Fixed Casimir words can be transferred from the auxiliary parameter to the physical parameter with an $O(P^{-1}+Q^{-1})$ trace error. Polynomial approximation of the two-variable minimum is applied at each parameter in its own Hilbert metric. The true Bose projection is the signed permutation average with a common permutation on both factors; precisely four central sign pairs survive at leading order. These steps give the trace law and dimension simultaneously. The spectral edges additionally use the exact positivity and a uniform operator upper bound. They do not follow from weak convergence alone. Appendix SC-A supplies the resolution of the identity, the metric-sensitive transfer, the group estimate and the support argument. [DS, App. A; A2, App. A]

### 8.1.1 Explicit observables

The marginal $U=|B_{12}|$ has the beta density

\[
\Pr(U\in du)=(N-2)(1-u)^{N-3}\,du,\qquad0<u<1.
\]

This is a marginal statement and does not remove the Plücker correlations. Integrating two independent copies gives

\[
\lim\frac{\operatorname{Tr}W_N}{d_NP^2}
=-8r^2\,{}_2F_1(2,2-N;N+1;r).
\]

The hypergeometric expression terminates after degree $N-2$. At $r=1$,

\[
\lim\frac{\operatorname{Tr}W_N}{d_NP^2}=-\frac{4N}{2N-3},\qquad
\lim\frac{\operatorname{Tr}A_N}{d_NP^2}=\frac{12(N-2)}{2N-3}.
\]

For every fixed $s>0$, the same theorem implies

\[
\lim\frac1{d_N}\log\det(sI+A_N/P^2)
=\mathbb E\log(s+a_{N,r}).
\]

The positive regularizer is essential to this deduction. It gives neither inverse moments nor the unregularized determinant or pseudodeterminant. [DS, App. A]

## 8.2 Three distinct notions of zero

The exact kernel is algebraic. The zero atom of $\nu_{N,r}$ is a statement about the scale $P^2$. A strictly positive eigenvalue may contribute to that atom because it is small compared with $P^2$. These notions have different finite meanings and can have different limiting densities.

**Theorem SC-02 (exact kernel fraction and positive empirical law).** With the exact kernel series from Chapter 5,

\[
\sum_{P,Q\geq0}\kappa_N(P,Q)x^Py^Q
=\frac{x^{2N(N-1)}}{
\prod_{j=2}^N(1-x^j)\prod_{a=1}^{N-1}(1-yx^a)},
\]

one has $\kappa_N/d_N\to k_N(r)$, where

\[
k_N(r)=\mathbb E_{T\sim\operatorname{Dirichlet}(1,\ldots,1)}
\left(1-r\sum_{a=1}^{N-1}aT_a\right)_+^{N-2}
\]

and, equivalently,

\[
k_N(r)=\frac{((N-2)!)^2}{(2N-4)!r^{N-2}}
\sum_{a=1}^{N-1}
\frac{(-1)^{a-1}(1-ar)_+^{2N-4}}{(a-1)!(N-1-a)!}.
\]

The simplex variable $T$ here arises from counting lattice points in the kernel series; it is not a replacement for the Grassmannian probability space. If $\nu^+_{P,Q}$ is the normalized empirical law of the **strictly positive** eigenvalues of $A_N/P^2$, then

\[
\nu^+_{P,Q}\Longrightarrow
\nu^+_{N,r}:=\frac{\nu_{N,r}-k_N(r)\delta_0}{1-k_N(r)}.
\]

Its zero atom is

\[
z_N^+(r)=\frac{p_N(r)-k_N(r)}{1-k_N(r)}.
\]

In particular $p_N(r)\geq k_N(r)$, and $k_N(r)<1$ for every $r>0$.

**Proof.** The kernel coefficient is a weighted partition count followed by a sum over $N-1$ nonnegative integers of total $Q$. The weighted partition asymptotic and the simplex Riemann sum give the first formula, including at the spline transition values $r=1/a$. Repeated simplex integration gives the second. The finite identity

\[
\nu_{P,Q}=\frac{\kappa_N}{d_N}\delta_0+
\left(1-\frac{\kappa_N}{d_N}\right)\nu^+_{P,Q}
\]

then proves the weak positive law without making a continuity assertion at zero. Appendix SC-B gives the counting error and the spline calculation. [DS, Apps. A and G; A2, App. A]

### 8.2.1 A strict excess in three particles and at small ratio

For $N=3$, the squared Plücker vectors are independently distributed as $\operatorname{Dirichlet}(1/2,1/2,1/2)$. Put

\[
q_2(r)=\frac4{\pi^2}\sum_{s=0}^{\infty}
\frac{H_{s+1}^{\rm odd}\,r^{2s+2}}{(s+1)(2s+1)(2s+3)},\qquad
H_{s+1}^{\rm odd}=\sum_{j=0}^{s}\frac1{2j+1}.
\]

Then

\[
p_3(r)=1-\frac32r+3q_2(r),\qquad
k_3(r)=\frac{(1-r)^2-(1-2r)_+^2}{2r}.
\]

**Theorem SC-03 (strict positive soft density).** For every $0<r<1$, $p_3(r)>k_3(r)$. For every fixed $N\geq4$, there is an $r_N>0$ such that $p_N(r)>k_N(r)$ for $0<r<r_N$. Quantitatively,

\[
p_N(r)-k_N(r)\geq
\frac{8(N-2)(N-3)}{\pi^2N(N-1)}r^2\log(1/r)-O_N(r^2),
\]

and hence

\[
\liminf_{r\downarrow0}\frac{z_N^+(r)}{r\log(1/r)}
\geq\frac{16(N-3)}{\pi^2N^2(N-1)}.
\]

At $r=1/2$,

\[
k_3=\frac14,\quad p_3\simeq0.355012640323455,\quad
z_3^+\simeq0.140016853764606.
\]

The displayed decimals are evaluations of a convergent positive series; a tail after $s=0,\ldots,K-1$ is at most

\[
\frac4{\pi^2}\frac{r^{2K+2}}{(2K+1)(2K+3)(1-r^2)}.
\]

The endpoint volume needed later is

\[
p_3(1-\epsilon)=\frac{3}{2\pi^2}\epsilon^2\log^2(1/\epsilon)
+O\!\left(\epsilon^2\log(1/\epsilon)\right).
\]

The $N\geq4$ lower bound comes from two violations sharing a particle. Their intersection has an $r^2\log(1/r)$ term because a random two-plane can have a small projection onto that particle direction. It is proved by merging those two events before applying the union bound. A truncated inclusion–exclusion series with an uncontrolled sign would not suffice. Appendix SC-B proves these statements, including the endpoint remainder. [DS, Apps. G and I; A2, App. A; HP, App. E; A3, App. C, §6]

## 8.3 Exponentially small, strictly positive eigenvalues

The weak law establishes that positive eigenvalues can accumulate at zero after division by $P^2$. The next theorem controls an actual exponentially small window in the unscaled residual $A_N$.

Let $M=\binom N2$, $K_N=M(N-2)$, and

\[
\Omega_\delta(r)=\{|B_{ij}|-r|B'_{ij}|>\delta\text{ for all }i<j\},\qquad
p_{N,\delta}(r)=\Pr(\Omega_\delta(r)).
\]

**Theorem SC-04 (exponential window with density loss).** Fix $0<r<1$ and $\delta>0$. Along every sequence $Q/P\to r$,

\[
\liminf_{P\to\infty}\frac{
\#\{0<\lambda(A_N(P,Q))\leq e^{-\delta^2P/32}\}}
{d_N(P,Q)}
\geq\max\{0,p_{N,\delta}(r)-k_N(r)\}.
\]

Since

\[
0\leq p_N(r)-p_{N,\delta}(r)\leq K_N\delta,
\]

for every $\eta>0$, one may take

\[
c_\eta=\frac{\eta^2}{32K_N^2},\qquad
\liminf\frac{\#\{0<\lambda(A_N)\leq e^{-c_\eta P}\}}{d_N}
\geq p_N(r)-k_N(r)-\eta.
\]

This is an upper bound on the size of an extensive family of positive eigenvalues. It does not produce a common action for that family or a matching exponential lower bound. [HP, App. D; A3, App. C, §§2–4]

The proof has two separate, necessary components. First, all physical collision subspaces are carried exactly from the harmonic model by one invertible Riesz map, with polynomial condition number. Second, coherent states in $\Omega_\delta$ have exponentially small bad-channel tails. Their concentration operator yields an entire subspace with a uniform Rayleigh bound. Pointwise small Rayleigh quotients for many coherent states would not establish the required dimension, because those states are not independent. Appendix SC-C proves both components and all constants.

For example, at $N=3,r=1/2$, take $\delta=1/(6\pi^2)$. The series gives $p_3-k_3\geq1/\pi^2$, and the strip loss is $3\delta$. Consequently at least the limiting fraction $2/(3\pi^2)$ of the **positive** eigenvalues lies below

\[
\exp\!\left(-\frac{P}{1152\pi^4}\right).
\]

### 8.3.1 Every subexponential window sees the same density

**Corollary SC-05 (subexponential counting law).** Suppose $t_{P,Q}>0$,

\[
\log t_{P,Q}=o(P),\qquad t_{P,Q}/P^2\longrightarrow0.
\]

Then

\[
\frac{\#\{0<\lambda(A_N(P,Q))\leq t_{P,Q}\}}
{d_N(P,Q)-\kappa_N(P,Q)}\longrightarrow z_N^+(r).
\]

Examples include a fixed positive threshold, $P^\alpha$ with $\alpha<2$, and $e^{-P^\theta}$ with $0<\theta<1$. For two such thresholds, the fraction of eigenvalues between them tends to zero. The lower bound follows from SC-04 after fixing a density loss and then taking $P\to\infty$. For the upper bound, compare with a fixed interval $[0,\varepsilon P^2]$, use SC-02, and only then let $\varepsilon\downarrow0$. Direct substitution of a moving interval into weak convergence is invalid. [HP, App. D]

## 8.4 All ordered positive spectra at two fixed masses

The same collision flags also compare different physical masses before taking a limit. Let $\lambda_j^+(\Delta)$, $1\leq j\leq d_N-\kappa_N$, be the positive residual eigenvalues in nondecreasing order. This common number of eigenvalues follows from the mass-independent exact support, not from an approximate count.

**Theorem SC-06 (uniform logarithmic comparison).** For fixed $N\geq3$, $r\in(0,1]$ and fixed $\Delta_1,\Delta_2>1$,

\[
\sup_{1\leq j\leq d_N-\kappa_N}
\left|\frac1P\log\lambda_j^+(\Delta_1)
-\frac1P\log\lambda_j^+(\Delta_2)\right|
=O\!\left(\frac{\log P}{P}\right).
\]

The estimate is uniform over the full ordered positive spectrum. Thus, under the ordered coupling, the bounded Lipschitz distance between the empirical distributions of $-P^{-1}\log\lambda_j^+$ at two fixed masses tends to zero. If a limiting rate distribution exists, it is independent of these fixed masses. The theorem does not prove that such a distribution exists; rates escaping to $+\infty$ are not excluded. The masses are fixed independently of $P,Q$.

For precision, at the auxiliary mass $d_0=1/2$, let $B_0$ be the sum of the orthogonal projectors onto the bad collision spaces, restricted to the true Bose space. If $b=\Delta-1/2$, set

\[
m_L(\Delta)=e^{-2Nb}2^{-Nb}(L+1)^{-Nb}.
\]

For the complete ordered spectrum, including zeros,

\[
a_{\min}m_Pm_Q\,\lambda_j(B_0)
\leq\lambda_j(A_N(\Delta))
\leq\frac{a_{\max}}{m_Pm_Q}\lambda_j(B_0),
\]

with the explicit bounds

\[
a_{\min}\geq(2\Delta+3)^{-3},\qquad
a_{\max}\leq20(\Delta+Q)^2.
\]

This is an all-subspace min–max estimate obtained from squared distances and one common invertible transport. A comparison of individual channel eigenvectors, or a diagonal metric written in an ambient monomial space and then restricted without a Riesz construction, would not prove it. [HP, App. D; A3, App. C, §5]

## 8.5 A moving layer approaching exact balance in three particles

The fixed-ratio theorem cannot be used with a margin that shrinks with $P$ without a uniform trace estimate. For $N=3$ such an estimate is available. In this subsection $r=Q/P\in[1/2,1)$ is allowed to vary, and

\[
\mu(r)=p_3(r)-\frac{(1-r)^2}{2r}>0,\qquad
D=(4P+1)(4Q+1),\qquad b=\Delta-\frac12.
\]

**Theorem SC-07 (finite and asymptotic moving-layer bounds).** If

\[
\mu(r)\geq\frac{1280}{\min(P,Q)},
\]

then at least $\mu(r)d_3(P,Q)/2$ eigenvalues are strictly positive and satisfy

\[
\lambda(A_3)\leq
\frac{96D\,a_{\max}}{\mu(r)m_Pm_Q}
\exp\!\left[-\frac{P\mu(r)^2}{2304}\right],
\quad m_L=e^{-6b}2^{-3b}(L+1)^{-3b}.
\]

If $P\mu(r)^2/\log P\to\infty$, the right side is eventually bounded by

\[
\exp\!\left[-\frac{P\mu(r)^2}{4608}\right].
\]

In particular, for $1-r\sim cP^{-\beta}$, $c>0$, $0<\beta\leq1/4$, the theorem produces at least

\[
\left(\frac{c^2\beta^2}{8\pi^2}+o(1)\right)
P^{2-2\beta}\log^2P
\]

strictly positive eigenvalues satisfying

\[
\lambda(A_3)\leq
\exp\!\left[-\left(\frac{c^4\beta^4}{2048\pi^4}+o(1)\right)
P^{1-4\beta}\log^4P\right].
\]

At $\beta=1/4$, the upper bound is of the form $e^{-C\log^4P}$. The count is subextensive relative to $d_3\asymp P^2$. Neither $\beta>1/4$ nor the exactly balanced microscopic spectrum is settled by this argument.

**Proof inputs.** For every measurable moving set $\Omega$, its coherent concentration operator obeys

\[
\left|\frac{\operatorname{Tr}C_\Omega}{d_3(P,Q)}-\operatorname{vol}(\Omega)\right|
\leq\frac{160}{\min(P,Q)}.
\]

The constant is uniform over $\Omega$. It follows from the full group of $384$ signed permutation pairs and its four central terms; every noncentral cubic rotation has $\sin^2(\theta/2)\geq1/2$. An independent finite lattice bound gives

\[
\frac{\kappa_3(P,Q)}{d_3(P,Q)}\leq\frac{(P-Q)^2}{2PQ}=\frac{(1-r)^2}{2r}.
\]

The finite kernel shift $P-Q-12$ is retained in that proof. Choosing $\delta=\mu/12$ and the concentration cutoff $\tau=\mu/8$ allocates separate losses to the chamber strip, group trace error and subspace cutoff. Appendix SC-D gives these estimates and the endpoint substitution. [HP, App. E; A3, App. C, §6]

## 8.6 What an exact finite soft certificate certifies

Small floating point eigenvalues cannot distinguish a genuine positive state from an exact kernel vector. The following examples use rational congruence and inertia at $N=3,\Delta=2$. An inertia triple lists the numbers of positive, negative and zero eigenvalues of the shifted **auxiliary symmetric pencil**.

| $P,Q$ | Physical $d_3$ | Physical $\kappa_3$ | Auxiliary dimension | Auxiliary nullity at zero | Strict bracket for the least positive residual |
|---|---:|---:|---:|---:|---|
| $16,8$ | 26 | 0 | 34 | 8 | $1/5<\lambda_{\min}^+<1/3$ |
| $32,16$ | 94 | 4 | 98 | 8 | $1/6000<\lambda_{\min}^+<1/5000$ |

For the first row the triples at $0,1/5,1/3$ are $(26,0,8),(26,8,0),(25,9,0)$. For the second row those at $0,1/6000,1/5000$ are $(90,0,8),(90,8,0),(89,9,0)$. Both nonzero thresholds have zero nullity, making the brackets strict.

To explain the count, let $\Gamma_{\rm u}$ be the unsymmetrized Gram coordinate matrix in a basis with positive metric weights $w_i$, and $a_i>0$ its channel weights. The rational symmetric pencil

\[
S(\varepsilon)=\operatorname{diag}(w_i)\Gamma_{\rm u}
-\varepsilon\operatorname{diag}(w_i/a_i)
\]

is congruent to $H-\varepsilon I$, where $H$ is the positive auxiliary Gram operator. Each auxiliary zero becomes negative when $\varepsilon>0$. Therefore the number of positive physical residual eigenvalues below $\varepsilon$ is $n_-(S(\varepsilon))-\dim\ker H$. One must not subtract the physical kernel a second time. Rational $1\times1$ or $2\times2$ Schur pivots give the inertia without a tolerance. These examples are finite certificates; they do not prove an asymptotic exponential law. [HP, App. D; A3, App. E, §3]

## 8.7 Consequences and limits of the description

**Proposition SC-08 (two precise obstructions).** First, the balanced empirical law rules out approximation of $A_N/P^2$ by Hermitian matrices with a uniformly bounded number of spectral atoms, up to either rank $o(d_N)$ or normalized trace norm $o(1)$, under a common spectral bound. Indeed, a subsequential limit of a uniformly finite atomic law remains finite atomic, while SC-01 has a nonzero absolutely continuous component with full interval support. This excludes that specific compression scheme, not implicit determinant formulae or every possible spectral parametrization.

Second, for $N=3$ the piecewise analytic classical symbol on $S^2\times rS^2$,

\[
h_r(x,z)=-8\sum_{i=1}^3\min(x_i^2,z_i^2),
\quad |x|=1,\ |z|=r,
\]

has no nonconstant globally real analytic first integral that Poisson commutes with it on every strict comparison chamber. Appendix SC-E proves this by analytic continuation and a nonzero Poisson-bracket Jacobian. The energy itself is only piecewise analytic, so it does not contradict the claim. A quantum obstruction requires, in addition, an appropriate symbol and commutator correspondence for the proposed charges. This is not a general theorem of nonintegrability. [DS, Apps. A and B; A2, App. A]

The macroscopic Grassmannian law, the exact algebraic kernel and the exponential upper bounds now fit together. They still leave the actual microscopic action, a matching lower bound, the existence of a full rate distribution, zero-density exceptional scales and possible superexponential families unresolved. The moving $N=3$ layer is a proved range of validity, not an optimal transition theorem.
