# A new continuum limit for the three-body recoupling Markov matrix

This supplement is mathematically independent of the new rank proof.
It explains the observed mass-independent numbers in the unweighted
channel Gram operator. Its convergence is **strong operator convergence**,
not operator-norm convergence; it does not by itself prove a uniform
positive spectral gap for the finite matrices.

Fix \(\Delta>1\). Let \(R_P\) be the real orthogonal recoupling matrix
between pair \(12\) and pair \(23\), in physical orthonormal pair bases,
and put \(M_P=R_P\circ R_P\). Thus \(M_P\) is a symmetric doubly
stochastic \((P+1)\)-dimensional matrix.

**Theorem 2 (strong continuum limit).** Embed \(\ell^2\{0,\ldots,P\}\)
isometrically in \(L^2(0,1;dx)\) by taking the \(j\)-th basis vector to
\(\sqrt{P+1}\) times the indicator of
\([j/(P+1),(j+1)/(P+1))\). Call this isometry \(V_P\). Then
\[
V_PM_PV_P^*\longrightarrow K\quad\hbox{strongly},
\]
where
\[
\boxed{(Kf)(x)=\frac2\pi\int_0^{\sqrt{1-x^2}}
\frac{f(y)}{\sqrt{1-x^2-y^2}}\,dy.}
\tag{C1}
\]
The operator is self-adjoint, Markov, and compact. Its complete
orthogonal eigenbasis consists of the even Legendre polynomials restricted
to \([0,1]\), and
\[
\boxed{KP_{2n}(x)=\mu_nP_{2n}(x),\qquad
\mu_n=(-1)^n\frac{\binom{2n}{n}}{4^n}=P_{2n}(0).}
\tag{C2}
\]
The limit is independent of \(\Delta\).

## Proof

Write \(A_P=\operatorname{diag}(\lambda_k)\),
\(\lambda_k=(\Delta+k)(\Delta+k-1)\), and
\(B_P=R_PA_PR_P^*\). The diagonal and off-diagonal entries of this
orthonormal Jacobi matrix are
\[
b_{P,k}=\frac{s_P-\lambda_k}{2},\qquad
a_{P,k}=-(k+1)(P-k-1+\Delta)\sqrt{g_{P,k}/g_{P,k+1}},
\]
where
\[
\frac{g_{P,k+1}}{g_{P,k}}=
\frac{4(k+1)[4(\Delta+k)^2-1]}{2\Delta+k-1}
\frac{P+\Delta-k-1}{(P-k)(P+3\Delta+k-1)(P+2\Delta+k)}.
\]
For \(k/P\to x\in(0,1)\), direct division by \(P^2\) gives
\[
\frac{b_{P,k}}{P^2}\to\frac{1-x^2}{2},\qquad
\frac{a_{P,k}}{P^2}\to-\frac{1-x^2}{4}.
\tag{C3}
\]
The convergence also holds at every fixed finite displacement of \(k\).

For each fixed nonnegative integer \(m\), spectral decomposition gives
the exact identity
\[
\sum_{\ell=0}^P(M_P)_{k\ell}
\left(\frac{\lambda_\ell}{P^2}\right)^m
=\left[\left(\frac{B_P}{P^2}\right)^m\right]_{kk}.
\tag{C4}
\]
Only paths within distance \(m\) of \(k\) occur on the right. Applying
(C3) therefore makes the right side tend to the diagonal element of the
constant-coefficient bilateral Jacobi operator with diagonal
\(b=(1-x^2)/2\) and off-diagonal \(a=-(1-x^2)/4\). Its Fourier symbol is
\(b+2a\cos\theta=(1-x^2)\sin^2(\theta/2)\), and hence
\[
\lim\left[\left(\frac{B_P}{P^2}\right)^m\right]_{kk}
=(1-x^2)^m\frac1{2\pi}\int_0^{2\pi}\sin^{2m}(\theta/2)\,d\theta
=(1-x^2)^m\frac{\binom{2m}{m}}{4^m}.
\tag{C5}
\]
Uniformly in \(\ell\), replacing \((\lambda_\ell/P^2)^m\) by
\((\ell/P)^{2m}\) costs \(O_{m,\Delta}(P^{-1})\). Replacing point
samples by the interval averages used by \(V_P^*\) has the same bound.
The row action is uniformly bounded, because the matrices are stochastic
and the sampled polynomials are bounded. Thus dominated convergence gives
convergence in \(L^2(0,1)\) on every test polynomial \(f(y)=y^{2m}\).

Substitution \(y=\sqrt{1-x^2}\sin\theta\) in (C1) shows that \(K\) has
exactly the same moments (C5). Its kernel is symmetric and has each row
integral equal to one; therefore \(K\) is a self-adjoint contraction on
\(L^2\). Polynomials in \(y^2\) are dense in \(C[0,1]\), hence in
\(L^2(0,1)\). The uniform contraction bounds and convergence on this dense
set prove strong operator convergence.

For the spectral statement, the moment formula shows that \(K\) preserves
each polynomial space \(\operatorname{span}\{1,x^2,\ldots,x^{2n}\}\).
Self-adjointness then makes its one-dimensional orthogonal difference
an eigenspace. This difference is spanned by \(P_{2n}(x)\), since the
even Legendre polynomials are orthogonal on \([0,1]\). The coefficient
of \(x^{2n}\) in \(Kx^{2n}\) is
\((-1)^n\binom{2n}{n}/4^n\), which proves (C2). These eigenvalues tend
to zero, and the even Legendre polynomials form a complete orthogonal
basis, so \(K\) is compact. ∎

## Exact implications and remaining limitation

Every fixed \(\mu_n\ne0\) is approached by some eigenvalue of \(M_P\):
the projected polynomial \(V_P^*P_{2n}\), normalized in the discrete
space, is an approximate eigenvector. This assertion is stronger than
an observed sequence of numerical fits, but weaker than convergence of
the ordered spectrum. Strong convergence allows spurious finite-matrix
eigenvalues in the limit; excluding them would require an additional
collective-compactness or operator-norm argument.

In particular, \(K\) has the exact null direction \(P_2\) for \(I+2K\).
Away from it, the spectral bottom of \(I+2K\) is
\(1+2\mu_3=3/8\). This suggests a route to a positive lower bound of
order \(1/P\) for contact, but does not prove that bound for the finite
matrices.

The stronger finite inequality \(\lambda_2^{\uparrow}(M_P)\ge-5/16\)
is false. At \(P=4,\Delta=2\), an independent exact construction gives
\[
\det(xI-M_4)=
\frac{(x-1)(2x+1)(43218x^3-2107x^2-6841x-610)}{86436}.
\]
For the monic cubic factor, its value at \(-1/2\) is \(-99/1372\),
while its value at \(-5/16\) is \(715/9834496\). It therefore has a
root strictly between these two values. A rational isolating interval is
\((-8419/26903,-2450/7829)\), approximately \(-0.312939077\).

## Suggested contact continuum form

The physical weight satisfies \(P(8\pi c_k)\to1/(2x)\) for \(k/P\to x>0\).
This singles out the candidate quadratic form
\[
q[f]=\left\langle(2x)^{-1/2}f,
(I+2K)(2x)^{-1/2}f\right\rangle,
\qquad
\mathcal D(q)=\{f\in L^2(0,1):x^{-1/2}f\in L^2(0,1)\}.
\]
Its multiplication weight is unbounded at \(x=0\), so a domain argument
is necessary. The form itself does have a rigorous closed realization,
as proved next. Its proposed role as the limit of the finite contact
matrices remains unproved.

**Theorem 3 (closed weighted form and continuum gap).** The form \(q\)
on the stated domain is densely defined, nonnegative, and closed. It
therefore defines a unique nonnegative self-adjoint operator \(\mathcal H\),
whose expression
\(\mathcal H=(2x)^{-1/2}(I+2K)(2x)^{-1/2}\) is interpreted in the
quadratic-form sense. Its kernel and gap satisfy
\[
\boxed{\ker\mathcal H=\operatorname{span}\{\sqrt{2x}P_2(x)\},
\qquad
\mathcal H\big|_{(\ker\mathcal H)^\perp}\ge\frac3{16}I.}
\tag{C6}
\]

**Proof.** Put \(A=(2x)^{-1/2}\), \(B=I+2K\), and choose the normalized
\(e=\sqrt5P_2\). By the explicit spectrum (C2),
\[
\ker B=\mathbb Ce,\qquad
B\ge\beta(I-|e\rangle\langle e|),\quad\beta=3/8,
\qquad\|B\|=3.
\]
For \(f\in\mathcal D(A)\), write \(g=Af=v+ce\), with \(v\perp e\).
Then \(q[f]\ge\beta\|v\|^2\). The inverse
\(A^{-1}=\sqrt{2x}\) is bounded with norm \(\sqrt2\), and
\(\|A^{-1}e\|^2=5/4\). Since \(f=A^{-1}v+cA^{-1}e\),
\[
|c|\|A^{-1}e\|\le\|f\|+\sqrt2\|v\|.
\]
It follows, for example, that
\[
\|Af\|^2\le\frac85\|f\|^2+\frac{56}5q[f],
\qquad q[f]\le3\|Af\|^2.
\tag{C7}
\]
Thus the form norm is equivalent to the graph norm of the closed
multiplication operator \(A\). This proves closedness; density follows
from compactly supported test functions. The representation theorem for
closed nonnegative forms supplies \(\mathcal H\). The kernel is exactly
\(\mathbb C A^{-1}e\).

For the gap, let \(f\perp A^{-1}e\) and set \(X=A^{-2}=2x\),
\(\xi=\langle e,Xe\rangle>0\). Orthogonality is
\(\langle g,Xe\rangle=0\), which fixes the scalar \(c\). Eliminating
it gives the Schur-complement identity
\[
\|f\|^2=
\left\langle v,
\left(X-\frac{X|e\rangle\langle e|X}{\xi}\right)v\right\rangle
\le2\|v\|^2.
\]
Therefore \(q[f]\ge\beta\|v\|^2\ge(3/16)\|f\|^2\), proving
(C6). ∎

This is a theorem about the continuum form only. It supplies no uniform
finite-\(P\) gap and does not establish convergence of finite-matrix
spectra to \(\mathcal H\). Neither strong convergence of \(M_P\) alone
nor the fixed-index compactly weighted limit in the source settles those
questions. Uniform endpoint control and absence of spectral pollution
remain necessary. No exact value of the lowest positive eigenvalue or
finite-contact limiting constant is claimed.

For reproducible numerical exploration, use the normalized basis
\(\varphi_n(x)=\sqrt{4n+1}P_{2n}(x)\). With
\(g=(2x)^{-1/2}f\), the candidate form's finite Galerkin problem is the
generalized matrix problem
\[
\operatorname{diag}(1+2\mu_n)g=\varepsilon\,\mathsf Xg,
\qquad \mathsf X_{nm}=2\int_0^1x\varphi_n(x)\varphi_m(x)\,dx.
\]
For positive eigenvalues the \(n=1\) equation is
\((\mathsf Xg)_1=0\), so that component is eliminated by the Schur
complement of \(\mathsf X_{11}\). Gauss–Legendre quadrature with
\(2L+4\) nodes integrates these polynomial entries exactly in exact
arithmetic when \(0\le n,m\le L\). The implementation uses double
precision, so its values remain numerical evidence.

| Largest basis label \(L\) | First positive | Second | Third | Fourth |
|---:|---:|---:|---:|---:|
| 16 | 0.27758685 | 0.36352553 | 0.40624483 | 0.43157772 |
| 32 | 0.27758593 | 0.36352398 | 0.40624187 | 0.43156621 |
| 64 | 0.27758583 | 0.36352384 | 0.40624171 | 0.43156600 |
| 128 | 0.27758582 | 0.36352383 | 0.40624169 | 0.43156598 |

The finite \(P\) contact data and this separate continuum calculation are
both in `contact_gap_evidence.json`, generated by
`contact_gap_evidence.py`. Agreement supports the proposed scaling
operator but is not a substitute for spectral convergence.
