# Finite-$N$ protected states, exact mixing and a common operator domain

## Result and scope

There is a positive Hilbert space and a common invariant polynomial domain
for the **single-complex-scalar holomorphic half-BPS sector** at every
integer $N\ge2$. The construction includes the exact $SU(N)$ trace
relations, all degrees and all multi-traces. It is considerably stronger
than treating the large-$N$ single traces as independent oscillators.
It remains smaller than the full $20'$ multiplet, the full SYM local
operator algebra, and a finite-radius interacting bulk algebra.

The construction is Gaussian as a calculation of protected data. Its
identification with interacting SYM protected states uses the independent
half-BPS non-renormalization theorem, with operator mixing interpreted as
parallel transport on the conformal manifold. It is not a derivation of
unprotected SYM or nonperturbative IIB gravity.

**Verified:** independent Wick enumeration with the traceless propagator;
degree-four mixing and null relations; the complete degree-six Gram
matrix; its ranks at $N=2,\ldots,7$; all principal minors at those $N$;
direct $2\times2$ and $3\times3$ Cayley–Hamilton examples; a separate
all-degree radial-Laplacian calculation of the $p_2$ tower. Twenty-three exact
zero residuals are recorded in [the checks](checks/dictionary_extensions/finite_n_bps_checks.py)
and [their actual output](checks/dictionary_extensions/finite_n_bps_checks_results.json).

**Assumptions:** unit Gaussian scalar normalization after removing the
spacetime two-point factor; a fixed complex scalar polarization; integer
$N\ge2$; use of the established non-renormalization theorem for the
interacting interpretation.

**Not verified:** unprotected products, generic-polarization mixed local
operators, full interacting Wightman positivity, bulk operator domains,
or an all-orders bulk/SYM isometry.

## 1. Exact positive space for $SU(N)$

Choose Hermitian traceless generators $T^A$, $A=1,\ldots,N^2-1$, with
$\operatorname{tr}(T^AT^B)=\delta^{AB}$. Let

\[
Z=z_AT^A,\qquad
d\mu(z)=\pi^{-(N^2-1)}e^{-\sum_A|z_A|^2}
                  \prod_A d^2z_A.
\tag{N1}
\]

The two-index contraction is then

\[
\langle Z^i{}_j\,(Z^\dagger)^k{}_\ell\rangle
 =\delta^i{}_{\ell}\delta^k{}_j
      -\frac1N\delta^i{}_j\delta^k{}_{\ell}.
\tag{N2}
\]

The subtraction is essential. The diagonal $U(N)$ Schur-polynomial norm
formula cannot simply be reused as the $SU(N)$ inner product. See
[de Mello Koch–Gwyn, §3](https://arxiv.org/html/hep-th/0410236v2) and
[Brown, §§3–4](https://arxiv.org/html/hep-th/0703202v2) for the distinction.

Let $\mathcal H_N$ be the closure, in holomorphic Bargmann space for (N1),
of the $SU(N)$-invariant polynomials. Equivalently, start from formal
multi-trace expressions and quotient their zero-norm polynomial identities
before completing. Positivity follows directly from

\[
\langle f,f\rangle_N=\int|f(Z)|^2d\mu(Z)\ge0.
\tag{N3}
\]

A polynomial has zero norm precisely when it is identically zero on the
traceless matrix space: Gaussian measure has full support, and a nonzero
polynomial is nonzero on an open set. Thus no artificial negative- or
zero-norm states survive the quotient.

Set $p_k=\operatorname{tr}Z^k$. The invariant polynomial ring is

\[
\mathcal D_N=\mathbb C[p_2,\ldots,p_N],\qquad
\sum_{n\ge0}\dim\mathcal D_{N,n}\,q^n
               =\prod_{k=2}^{N}(1-q^k)^{-1}.
\tag{N4}
\]

To see (N4), diagonalizable complex matrices form a dense open set. An
invariant polynomial restricts to a symmetric polynomial in the
eigenvalues, with their sum zero. The elementary symmetric functions of
degrees $2,\ldots,N$ are algebraically independent, and Newton identities
replace them by $p_2,\ldots,p_N$. Equality on the dense set gives equality
on all matrices. Compact-group invariance and holomorphicity imply
invariance under the complexified conjugation action. Hence higher traces
are polynomials in these generators, with no further generator relations.

## 2. Common invariant operator domain

For an invariant polynomial $f(z)=\sum_\alpha f_\alpha z^\alpha$ define

\[
M_f\psi=f\psi,\qquad
D_f\psi=\sum_\alpha\overline{f_\alpha}\,
                        \partial_z^\alpha\psi,
\qquad \psi\in\mathcal D_N.
\tag{N5}
\]

Gaussian integration by parts gives

\[
\langle M_f\psi,\varphi\rangle_N
       =\langle\psi,D_f\varphi\rangle_N.
\tag{N6}
\]

Both operators preserve the invariant polynomial space: multiplication is
invariant, and the adjoint differential operator is invariant under the
unitary conjugation representation. They map finite-degree polynomials to
finite-degree polynomials. Their algebraic products therefore have the
**same dense invariant domain** $\mathcal D_N$. Equation (N6) provides a
densely defined adjoint for each, so each is closable. It does not assert
that every symmetric polynomial expression is essentially self-adjoint.

For every polynomial word $A$ in these raising and lowering operators,

\[
\langle1,A^\sharp A1\rangle_N=\|A1\|_N^2\ge0.
\tag{N7}
\]

This is an actual positive representation, rather than a truncation of a
Gram matrix at a fixed order in $1/N$.

The degree operator

\[
E=\sum_Az_A\partial_{z_A},\qquad
\mathcal H_N=\widehat\bigoplus_{n\ge0}\mathcal D_{N,n},
\tag{N8}
\]

has a positive self-adjoint closure, with domain
$\{\psi:\sum_n n^2\|\psi_n\|^2<\infty\}$. Finite-degree polynomials are
a core. This is the protected radial-quantization energy; no claim about
unprotected or finite-radius bulk time evolution is made.

There is also a useful larger common domain,

\[
\mathcal D_N^\infty=\bigcap_{r\ge0}\operatorname{Dom}(1+E)^r.
\tag{N8a}
\]

If $f$ is homogeneous of degree $k\ge1$, creation/annihilation estimates on
degree $n$ give

\[
\|M_f\psi_n\|\le C_f(n+k)^{k/2}\|\psi_n\|,\qquad
\|D_f\psi_n\|\le C_fn^{k/2}\|\psi_n\|.
\tag{N8b}
\]

Indeed each coordinate creation step has norm at most $\sqrt{n+1}$ and
each annihilation step at most $\sqrt n$; expand $f$ into its finitely many
monomials and multiply these bounds. Restricting to the invariant subspace
does not increase the norm. Equation (N8b), with the degree shift $\pm k$,
shows that every operator in (N5), and every finite word in them, acts
continuously on the Fréchet space $\mathcal D_N^\infty$. The spectral
truncations $\sum_{n\le L}\psi_n$ converge in every such graph norm. Thus
these actions agree with the restrictions of the closures of the
polynomial-domain operators to $\mathcal D_N^\infty$. Constant $f$ is
the immediate bounded case.
Protected time evolution $e^{-itE}$ also preserves this common domain.

An explicit all-degree subsector provides a second check of the metric.
In the generator coordinates of (N1), $p_2=\sum_Az_A^2$. With
$d=N^2-1$,

\[
[D_{p_2},M_{p_2}]=4E+2d,\qquad
D_{p_2}p_2^m=4m(m+d/2-1)p_2^{m-1},\qquad
\|p_2^m\|^2=4^m m!\,(d/2)_m.
\tag{N8c}
\]

The last identity follows recursively from (N6). At $m=2,3$ it agrees
with the independently enumerated degree-four and degree-six Wick blocks.
At $N=2$ it describes the entire invariant holomorphic state space,
since $p_2$ is then its only generator.

## 3. Exact degree-four mixing

Direct contractions of (N2), with basis $(p_4,p_2^2)$, give

\[
G_4=\begin{pmatrix}
\displaystyle\frac{4(N^2-1)(N^4-6N^2+18)}{N^2}&
\displaystyle\frac{8(N^2-1)(2N^2-3)}{N}\\[4pt]
\displaystyle\frac{8(N^2-1)(2N^2-3)}{N}&
8(N^4-1)
\end{pmatrix}.
\tag{N9}
\]

The component orthogonal to the double trace is

\[
\mathcal O_4^\perp=p_4-
 \frac{2N^2-3}{N(N^2+1)}p_2^2,
\qquad
\|\mathcal O_4^\perp\|^2=
\frac{4(N^2-1)(N^2-4)(N^2-9)}{N^2+1}.
\tag{N10}
\]

At $N=2$ and $N=3$, this is exactly zero and the coefficient is $1/2$:

\[
\operatorname{tr}Z^4=\tfrac12(\operatorname{tr}Z^2)^2.
\tag{N11}
\]

For $N=2$, Cayley–Hamilton gives $Z^2=p_2\mathbf1/2$.
For $N=3$, it gives
$Z^3-p_2Z/2-p_3\mathbf1/3=0$; multiplying by $Z$ and tracing proves
(N11). Thus the zero norm is a matrix identity, not a loss of positivity.
For $N\ge4$, (N10) is strictly positive.

This supplies a concrete obstruction to an unchanged finite-$N$ extension
of a large-$N$ Fock dictionary that treats $p_4$ and $p_2^2$ as independent.
Such a map has a nontrivial kernel at $N=2,3$. A valid finite-$N$ dictionary
must respect the quotient and mixing before asserting an isometry.

## 4. Independent degree-six enumeration

The verification code enumerates every Wick pairing and, independently for
each contracted pair, the two terms in (N2). A union-find count evaluates
the resulting index loops. No Gram formula or character identity is used
to build the matrix. For the degree-six basis

\[
(p_6,\ p_4p_2,\ p_3^2,\ p_2^3),
\tag{N12}
\]

the exact ranks are

| $N$ | 2 | 3 | 4 | 5 | 6 | 7 |
|---|---:|---:|---:|---:|---:|---:|
| Rank of $G_6$ | 1 | 2 | 3 | 3 | 4 | 4 |

They equal the coefficients of $q^6$ in (N4). For example,

\[
\begin{array}{ll}
N=2:&p_6=p_2^3/4,\quad p_4p_2=p_2^3/2,\quad p_3^2=0,\\
N=3:&p_6=p_2^3/4+p_3^2/3,\quad p_4p_2=p_2^3/2.
\end{array}
\tag{N13}
\]

The code verifies that these vectors are in the exact Gram kernel. It also
checks every principal minor for $N=2,\ldots,7$. Those finite checks are
evidence for the combinatorial implementation; the general positivity
proof is (N3), not a numerical extrapolation. The complete symbolic matrix
is retained in the machine-readable result.

## 5. Interacting interpretation and its precise boundary

The independent non-renormalization theorem for half-BPS two-/three-point
and extremal data permits transport of this protected state metric and
chiral multiplication along the SYM conformal manifold. Its correct
statement is covariant constancy in an operator bundle: degenerate
operators can mix. See
[Baggio–de Boer–Papadodimas, §§2, 5 and 6](https://arxiv.org/html/1203.1036v2).
We use the protected chiral product, not an unsubtracted coincident product
of arbitrary local fields. The theorem does not eliminate source-contact
scheme choices for distributional correlators.

Consequently (N1)–(N8) give a common positive domain for the protected
holomorphic algebra, with exact finite-$N$ state counting and mixing.
The identification with interacting SYM is conditional on that external
non-renormalization result and the chosen transport of the protected basis.
No protected theorem identifies generic four-point functions with the
Gaussian integral: their dynamical part is precisely where the
supergravity and string corrections enter.

This distinction matters for a proposed all-IIB completion. A positive
protected algebra is genuine progress, but it neither constructs the
full interacting Lorentzian algebra nor proves that every reconstructed
bulk field preserves its domain. Those are separate statements about
unprotected states, coincident products, gauge/BRST completion and all
orders of the bulk dynamics.

## Executable verification links

- [finite_n_bps_checks.py](checks/dictionary_extensions/finite_n_bps_checks.py) and [actual output](checks/dictionary_extensions/finite_n_bps_checks_results.json).

The [execution manifest and evidence guide](checks/dictionary_extensions/README.md) distinguish exact identities, numerical samples, and the analytic proofs above.
