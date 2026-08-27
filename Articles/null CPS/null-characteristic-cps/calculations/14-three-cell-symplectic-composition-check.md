# Genuine Three-Cell Trace-Map Composition Regression

## 1. Analytic Theorem and Regression Boundary

Fix one massive master equation

$$
(\partial_u\partial_v+a)\Phi=0,
\qquad a>0,
$$

on three adjacent cells

$$
D_j=[j-1,j]_u\times[0,1]_v,
\qquad j=1,2,3.
\tag{1.1}
$$

The analytic theorem is:

> Sequential radiative master-cell composition is weak-symplectically
> associative on the classical matched \(H^1\) space.

Goursat uniqueness proves equality of the two sequential reconstructions, and
current conservation proves equality of the pulled-back symplectic forms.
The script is only a finite-basis regression for trace propagation,
orientation, and matrix assembly.

## 2. Independent Cell Profile Spaces and Compatibility

The regression starts with three independent spaces

$$
P_1\oplus P_2\oplus P_3\simeq\mathbb R^{18},
\qquad P_j\simeq\mathbb R^6.
\tag{2.1}
$$

Each \(P_j\) uses the local restrictions of the six real on-shell directions

$$
\cos(\alpha_ru+\beta_rv),\quad
\sin(\alpha_ru+\beta_rv),
\qquad
(\alpha_r)=(1/2,1,2),
\qquad \beta_r=1/\alpha_r.
\tag{2.2}
$$

The three coefficient vectors \(c_1,c_2,c_3\) are independent before any
matching is imposed.  For each cell, \(G_j\) is the Bessel/Riemann Goursat
reconstruction from that cell's own bottom and left profiles.  Define the
actual trace operators

$$
T_{12}:=\operatorname{Tr}_{u=1}\circ G_1,
\qquad
T_{23}:=\operatorname{Tr}_{u=2}\circ G_2.
\tag{2.3}
$$

Evaluation on six generic vertical points is injective on the chosen trace
basis.  In its coefficient coordinates, simultaneous compatibility is

$$
C\begin{pmatrix}c_1\\c_2\\c_3\end{pmatrix}=0,
\qquad
C=
\begin{pmatrix}
I&-I&0\\
0&I&-I
\end{pmatrix},
\qquad \operatorname{rank}C=12.
\tag{2.4}
$$

The script does not merely assume (2.3): it reconstructs each basis element,
takes its right trace at the six points, and compares it with the next cell's
left-profile evaluation matrix.  Both operator residuals vanish to about 32
decimal digits.

Let \(B\in GL(6,\mathbb R)\) be the displayed nontrivial upper-bidiagonal
outer coefficient map.  The compatibility kernel embedding is

$$
\boxed{
S=\begin{pmatrix}B\\B\\B\end{pmatrix}:
\mathbb R^6\longrightarrow P_1\oplus P_2\oplus P_3,}
\tag{2.5}
$$

with

$$
S\in\operatorname{Mat}_{18\times6},
\qquad \operatorname{rank}S=6,
\qquad CS=0.
\tag{2.6}
$$

Thus \(S\) is a rectangular compatibility embedding, not an invertible
\(6\times6\) change of basis masquerading as reduction.

## 3. The Two Actual Parenthesizations

The Bessel reconstruction is implemented in its integration-by-parts form,
so it accepts profile values rather than derivatives.  A reconstructed trace
can therefore be supplied as a literal function to the next cell.

The first parenthesization executes

$$
G_{(12)3}:
G_1(c_1)
\xrightarrow{\operatorname{Tr}_{\rm right}}
G_2(c_2;T_{12}c_1)
\xrightarrow{\operatorname{Tr}_{\rm right}}
G_3(c_3;T_{23}T_{12}c_1).
\tag{3.1}
$$

The second first reconstructs \(D_2\) from its own independent left profile,
feeds its reconstructed right trace into \(D_3\), and only then attaches the
already composed \(D_{23}\) solution to \(D_1\) by matching its left trace
against the reconstructed right trace of \(G_1\):

$$
G_{1(23)}:
\bigl(G_2(c_2)
\xrightarrow{\operatorname{Tr}_{\rm right}}G_3\bigr)
\xleftarrow[\rm match]{\operatorname{Tr}_{\rm right}G_1}
G_1(c_1).
\tag{3.2}
$$

The direct comparator is one width-three Bessel reconstruction from the
concatenated outer bottom profile and the outer left profile.  None of
(3.1)--(3.2) or the direct map calls an exact bulk function at an internal
edge.

On the six columns of \(S\), at sample points in all three cells, the executed
Wolfram 14.3 regression gives

$$
\boxed{G_{(12)3}S=G_{1(23)}S=G_{[0,3]}B}
\tag{3.3}
$$

to approximately 30 decimal digits.

## 4. Symplectic Pullback Without Deleting Interfaces

For an edge use

$$
\Omega^u(\Phi_1,\Phi_2)
=\int du\,(\partial_u\Phi_1\Phi_2-
\partial_u\Phi_2\Phi_1),
$$

$$
\Omega^v(\Phi_1,\Phi_2)
=\int dv\,(\partial_v\Phi_1\Phi_2-
\partial_v\Phi_2\Phi_1).
\tag{4.1}
$$

The chosen outer incoming cross decomposes into the three bottom segments and
the one genuine outer left segment.  Accordingly define the block cut form

$$
\Omega_{\rm cells}^{\rm cut}
=\operatorname{diag}
\left(
\Omega_{{\rm bottom},1}+\Omega_{{\rm left},1},
\Omega_{{\rm bottom},2},
\Omega_{{\rm bottom},3}
\right).
\tag{4.2}
$$

No interface term occurs in this selected global cut, so none is manually
subtracted.  Direct integration gives the nontrivial exact pullback identity

$$
\boxed{
S^T\Omega_{\rm cells}^{\rm cut}S
=B^T\Omega_{\rm outer,in}B.}
\tag{4.3}
$$

Separately, the script retains every edge in the full oriented boundary form

$$
\Omega_{{\rm bdry},j}
=\Omega_{{\rm bottom},j}+\Omega_{{\rm left},j}
-\Omega_{{\rm top},j}-\Omega_{{\rm right},j}.
\tag{4.4}
$$

The two embedded interface contributions are

$$
I_{12}=(-\Omega_{{\rm right},1})\oplus
(+\Omega_{{\rm left},2})\oplus0,
$$

$$
I_{23}=0\oplus(-\Omega_{{\rm right},2})\oplus
(+\Omega_{{\rm left},3}).
\tag{4.5}
$$

Both right-edge matrices have rank six, hence are nonzero.  They cancel only
after restriction to matched data:

$$
\boxed{S^TI_{12}S=0,
\qquad S^TI_{23}S=0.}
\tag{4.6}
$$

The full block-boundary pullback also equals the outer oriented boundary
form.  On shell each boundary residual vanishes by current conservation; this
zero identity is retained as an orientation regression, while the nonzero cut
identity (4.3) is the symplectic-form regression.

## 5. Exact Result and Claim Strength

The executed check returned:

- independent/product dimensions \(6\) and \(18\);
- compatibility and embedding sizes \(12\times18\) and \(18\times6\);
- compatibility ranks \(12\) and \(6\);
- reconstructed \(T_{12}\) and \(T_{23}\) residuals zero to about 32 digits;
- both internal edge ranks equal to six;
- exact zero residuals for (4.3), (4.6), cell conservation, and the outer
  boundary identity;
- both parenthesized maps and direct reconstruction equal to about 30 digits;
- final output `ALL THREE-CELL SYMPLECTIC CHECKS PASSED`.

**Proved analytically:** sequential radiative master-cell composition is
weak-symplectically associative, by Goursat uniqueness and current
conservation.

**Checked exactly/numerically on a finite basis:** the genuine reconstructed
trace operators, rectangular compatibility embedding, two actual sequential
maps, nonzero oriented interface cancellation, and symplectic cut pullback.

**Not proved here:** full charged-frame Maxwell composition, nonlinear or
non-Abelian reduction, pointwise composition on the one-particle completion,
regional tensor-product factorization, or Fock implementability.
