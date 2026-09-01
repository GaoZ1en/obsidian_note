# 12 - Stage 4.5: extended curvature and Hodge subsidiary audit

## 0. Direct verdict and new stop line

**Corrected and proved at the algebraic/principal level:** the six omitted
second-Cartan components; the distinct source and physical Weyl extractors;
the full rank-six injection
$d_{\rm src}-d_{\rm phys}=J\mathcal C_{\rm copy}$; the
$18+6=24$ extended-curvature decomposition; the irreducible
sixteen-dimensional Bianchi bundle; its exact incidence/Hodge isomorphism;
the full $16\times16$ row map and all four copy-principal matrices; and the
complete frozen $24\times24$ and $40\times40$ subsidiary symbols.

**Negative result:** neither proposed first-order formulation admits the
required positive symmetrizer.  The curvature-only $24\times24$ system has
an invertible timelike matrix, but its normalized radial matrix has a
nontrivial Jordan block.  In the ordering fixed below,
$$
 \det A_t=2,
 \qquad
 \chi_{A_t^{-1}A_r}(\lambda)
 = (\lambda-1)^{12}(\lambda+1)^{12},
 \tag{0.1}
$$
while the $-1$ eigenspace has dimension ten rather than twelve.  Hence it
cannot be self-adjoint for any positive definite inner product.  The mixed
$40\times40$ formulation has sixteen identically zero derivative columns,
one for every independent $\mathcal B$ component, and its timelike matrix
has rank only twenty-four.

Therefore the first-order Hodge-Dirac route is **false in this formulation**.
Part G.4 is triggered.  The selected pivot is a quantitative,
fixed-reference Cabet build-up/comparison theorem, not a forced
symmetrizer.  No variable-coefficient subsidiary theorem, no
$\ell_{\rm sub}$, and no nonlinear or linearized Einstein identification
are claimed here.  Moving-cut reset, nonlinear $C^1$, finite-grid
continuation and quantization remain gated.  Both $P_{\rm cell}^k$ and
$P_{\rm rect}^{s,r}$ remain conditional.

The exact machine construction is
`scripts/stage45_extended_curvature_hodge_checks.py`.  It generates every
entry of the matrices below and, with `--dump-full`, prints the full
$24\times16$, four $24\times24$, and four $40\times40$ matrices.  V80--V92
are regressions only; the rank/Jordan argument in Section 9 is the analytic
obstruction.

## 1. Conventions and first-principles counts

Use the project null frame
$$
 g_{11}=g_{22}=1,\qquad g_{34}=g_{43}=-2,\qquad
 \epsilon_{12}=1,
 \tag{1.1}
$$
and the internal-pair ordering
$$
 \Lambda^2_{\rm int}=(12,13,14,23,24,34),qquad
 \mathcal P=(12,13,23),\quad \mathcal Q=(14,24,34).
 \tag{1.2}
$$
A metric connection curvature is an
$\Lambda^2T^*\otimes\mathfrak{so}(1,3)$-valued field, hence has
$6\cdot6=36$ raw components.  The reduced connection equations set three
base-pair rows for each internal pair:
$$
 \begin{array}{c|c|c}
 \text{internal bundle}&\text{main base pairs}&\text{complementary base pairs}\hline
 \mathcal P&(13,23,34)&(14,24,12)\\
 \mathcal Q&(14,24,34)&(13,23,12).
 \end{array}
 \tag{1.3}
$$
Thus there are $3\cdot6=18$ main and eighteen complementary curvature
rows.  The main rows of the physical residual are not all zero off the
copy diagonal; they form the rank-six image of $J$ below.  The independent
extended curvature residual therefore has
$$
 18\ \text{complementary rows}+6\ \text{copy rows}=24
 \tag{1.4}
$$
components.

For the other blocks,
$$
 \dim\mathcal B=4\cdot6-4-4=16,\qquad
 \dim\mathcal C_{\rm copy}=2+2+1+1=6,
 \tag{1.5}
$$
where the two subtracted four-dimensional spaces are the cyclic and trace
constraints.  Finally,
$$
 \dim\big(\Lambda^3T^*\otimes\mathfrak{so}(1,3)\big)
 ={4\choose3}\,6=24.
 \tag{1.6}
$$
This is the complete second-Cartan equation count.  The Stage-4.4 phrase
``eighteen Cartan equations plus sixteen source rows close forty
unknowns'' is withdrawn.

## 2. The omitted six Cartan components

For an internal pair $I$, write
$$
 (D\mathcal K)_{ijk}^{I}\big|_{\rm pr}
 =e_i\mathcal K_{jk}^{I}+e_j\mathcal K_{ki}^{I}
  +e_k\mathcal K_{ij}^{I}.
 \tag{2.1}
$$
For each $I\in\mathcal P$, the omitted row is
$$
 \boxed{
 (D\mathcal K)_{124}^{I}\big|_{\rm pr}
 =e_1\mathcal K_{24}^{I}
  +e_2\mathcal K_{41}^{I}
  +e_4\mathcal K_{12}^{I}.}
 \tag{2.2}
$$
These are the three rows
$$
 (124;12),\qquad(124;13),\qquad(124;23).
 \tag{2.3}
$$
For each $I\in\mathcal Q$, the omitted row is
$$
 \boxed{
 (D\mathcal K)_{123}^{I}\big|_{\rm pr}
 =e_1\mathcal K_{23}^{I}
  +e_2\mathcal K_{31}^{I}
  +e_3\mathcal K_{12}^{I}.}
 \tag{2.4}
$$
These are
$$
 (123;14),\qquad(123;24),\qquad(123;34).
 \tag{2.5}
$$
Relative to the double-null allocation, (2.2) transports the same
$\mathcal P$ tangential component in the opposite null direction from the
chosen $e_3$ evolution, and (2.4) does the analogous thing for
$\mathcal Q$.  They are therefore cross-characteristic Cartan constraints.
They are not purely spatial constraints for
$$
 t=\xi+\eta,\qquad r=\eta-\xi,qquad
 e_3=\partial_t-\partial_r,\quad
 e_4=\partial_t+\partial_r
 \tag{2.6}
$$
at the Minkowski freeze: both contain a $\partial_t$ derivative.  This is
why retaining all twenty-four rows can make a square spacelike-time
system.

At principal order, exterior differentiation once more gives, for every
internal pair,
$$
 e_1E_{234}-e_2E_{134}+e_3E_{124}-e_4E_{123}=0,qquad
 E_{ijk}:=(D\mathcal K)_{ijk}.
 \tag{2.7}
$$
Thus an eighteen-row characteristic subsystem would propagate the three
$\mathcal P$ constraints along $e_3$ and the three $\mathcal Q$
constraints along $e_4$, with curvature/connection commutators as
homogeneous lower-order terms.  V91 checks all six principal identities.
The formulation actually tested below instead retains all twenty-four
rows simultaneously.

## 3. Source and physical Weyl extractors

The printed variables are
$$
 (\alpha,\underline\alpha;
  \beta,\mathring\beta;
  \underline\beta,\mathring{\underline\beta};
  \rho,\mathring\rho;\sigma,\mathring\sigma).
 \tag{3.1}
$$
The connection rows use
$$
 d_{\rm src}(F)
 =d(\alpha,\underline\alpha,
     \mathring\beta,\mathring{\underline\beta},
     \mathring\rho,\mathring\sigma),
 \tag{3.2}
$$
because 09.(1.4) defines their extractor by $d_R(PF)$.  The physical
copy-diagonal extractor is
$$
 d_{\rm phys}(F)
 =d(\alpha,\underline\alpha,
     \beta,\underline\beta,\rho,\sigma).
 \tag{3.3}
$$
Put
$$
 C=(C_{\beta1},C_{\beta2},C_{\underline\beta1},
    C_{\underline\beta2},C_\rho,C_\sigma)^T
 \tag{3.4}
$$
with $C_\beta=\mathring\beta-\beta$, etc.  The source Appendix A.13
component identities give the algebraic injection $J$ below.  Only nonzero
entries are listed; pair antisymmetry and pair exchange supply their
partners:
$$
\begin{array}{c|l@{\qquad}c|l}
12|12&-C_\rho&12|13&C_{\underline\beta2}\\
12|14&-C_{\beta2}&12|23&-C_{\underline\beta1}\\
12|24&C_{\beta1}&12|34&2C_\sigma\\
13|12&C_{\underline\beta2}&13|14&-C_\rho\\
13|24&C_\sigma&13|34&2C_{\underline\beta1}\\
14|12&-C_{\beta2}&14|13&-C_\rho\\
14|23&-C_\sigma&14|34&2C_{\beta1}\\
23|12&-C_{\underline\beta1}&23|14&-C_\sigma\\
23|24&-C_\rho&23|34&2C_{\underline\beta2}\\
24|12&C_{\beta1}&24|13&C_\sigma\\
24|23&-C_\rho&24|34&2C_{\beta2}\\
34|12&2C_\sigma&34|13&2C_{\underline\beta1}\\
34|14&2C_{\beta1}&34|23&2C_{\underline\beta2}\\
34|24&2C_{\beta2}&34|34&4C_\rho.
\end{array}
\tag{3.5}
$$
Here $ij|kl$ denotes $(JC)_{ij,kl}$.  Consequently
$$
 \boxed{d_{\rm src}-d_{\rm phys}=JC.}
 \tag{3.6}
$$
V86 constructs both sides independently from A.13, compares every one of
the thirty-six pair-pair components, finds $\operatorname{rank}J=6$, and
also finds rank six after restriction to the eighteen main rows.  This is
not a count-only identification.

Define
$$
 \mathcal K_{\rm src}:=R(\Gamma)-d_{\rm src},\qquad
 \widehat{\mathcal K}:=R(\Gamma)-d_{\rm phys}.
 \tag{3.7}
$$
Then algebraically
$$
 \boxed{\widehat{\mathcal K}=\mathcal K_{\rm src}+JC.}
 \tag{3.8}
$$
On the reduced main connection-equation surface,
$\mathcal K_{\rm src}$ has only its eighteen complementary components,
while the main part of $\widehat{\mathcal K}$ is $J_{\rm main}C$.  The
map
$$
 Q:(\mathcal K_{{\rm src},{\rm con}},C)\longmapsto
 \widehat{\mathcal K}
 \tag{3.9}
$$
is the $36\times24$ matrix which inserts the eighteen complementary
entries and then adds $JC$ in all thirty-six rows.  V87 verifies
$\operatorname{rank}Q=24$ and the main-row identity directly.

## 4. The sixteen-dimensional Bianchi bundle and Hodge incidence

Define the physical divergence residual
$$
 \mathcal B_{jkl}:=\nabla^i(d_{\rm phys})_{ijkl}.
 \tag{4.1}
$$
It obeys
$$
 \mathcal B_{jkl}=-\mathcal B_{jlk},\qquad
 \mathcal B_{jkl}+\mathcal B_{klj}+\mathcal B_{ljk}=0,
 \qquad
 g^{jk}\mathcal B_{jkl}=0.
 \tag{4.2}
$$
The cyclic constraints have four independent components and the traces
have four; their joint rank is eight in the raw
$T^*\otimes\Lambda^2T^*$ space.  Hence (4.2) defines the trace-free
Young $(2,1)$ bundle of dimension sixteen.  V82 verifies the rank and all
eight identities from the A.13 Weyl tensor; V92 independently verifies the
Weyl symmetries and trace with xAct.

Use the concrete tensor-component basis
$$
\begin{split}
 \mathbf B={}&(
 B_{112},B_{113},B_{114},B_{123},B_{124},B_{134},
 B_{212},B_{213},B_{214},B_{223},B_{224},B_{234},\\
 &B_{313},B_{323},B_{414},B_{424})^T.
\end{split}
\tag{4.3}
$$
Every other raw component is recovered uniquely from (4.2).

Let $A_B$ be the exact $16\times40$ jet matrix of (4.3), using the jet
ordering
$$
 e_1F_{10},e_2F_{10},e_3F_{10},e_4F_{10},\quad
 F_{10}=(\underline\alpha_{11},\underline\alpha_{12},
 \underline\beta_1,\underline\beta_2,\rho,\sigma,
 \beta_1,\beta_2,\alpha_{11},\alpha_{12}).
 \tag{4.4}
$$
Let $R_B$ be the exact right inverse obtained from the sixteen pivot jet
columns printed by the script, so $A_BR_B=I_{16}$.  If $A_D$ is the
$24\times40$ matrix of
$$
 3\nabla_{[i}(d_{\rm phys})_{jk]lm}
 \tag{4.5}
$$
in triple-major/internal-pair-minor order, define
$$
 \boxed{H_B:=A_D R_B.}
 \tag{4.6}
$$
V82 proves $\ker A_B=\ker A_D$, so (4.6) is independent of the chosen
right inverse on the Bianchi image and satisfies
$$
 A_D=H_BA_B.
 \tag{4.7}
$$
The generated $24\times16$ matrix has rank sixteen.  Selecting its sixteen
pivot rows gives an explicit left inverse $L_B$ with
$L_BH_B=I_{16}$.  Thus $H_B$ is an isomorphism from the bundle (4.2) to
the sixteen-dimensional allowed subbundle of
$\Lambda^3T^*\otimes\Lambda^2T^*$.  The full matrix is generated and
printed by the saved script's `--dump-full` option; no unconstrained
24-component $B$ is ever introduced.

## 5. Exact row map and all sixteen copy-principal rows

Order the real source rows by
$$
\begin{split}
 \mathbf E=(&A.36a_{11},A.36a_{12},A.36b_1,A.36b_2;
 A.37a_1,A.37a_2,A.37b,A.37c;\\
 &A.38a,A.38b,A.38c_1,A.38c_2;
 A.39a_1,A.39a_2,A.39b_{11},A.39b_{12})^T.
\end{split}
\tag{5.1}
$$
On the physical diagonal, $\mathbf E=S\mathbf B$, with
$$
\scriptsize
S=\begin{pmatrix}
0&1&0&0&0&0&0&0&0&-1&0&0&0&0&0&0\\
0&0&0&1&0&0&0&1&0&0&0&0&0&0&0&0\\
0&0&0&0&0&0&0&0&0&0&0&0&1&0&0&0\\
0&0&0&0&0&0&0&0&0&0&0&0&0&1&0&0\\
0&0&0&0&0&\frac12&-1&0&0&0&0&0&0&0&0&0\\
1&0&0&0&0&0&0&0&0&0&0&\frac12&0&0&0&0\\
0&0&0&-1&0&0&0&1&0&0&0&0&0&0&0&0\\
0&-1&0&0&0&0&0&0&0&-1&0&0&0&0&0&0\\
0&0&-1&0&0&0&0&0&0&0&-1&0&0&0&0&0\\
0&0&0&0&1&0&0&0&-1&0&0&0&0&0&0&0\\
0&0&0&0&0&\frac12&1&0&0&0&0&0&0&0&0&0\\
-1&0&0&0&0&0&0&0&0&0&0&\frac12&0&0&0&0\\
0&0&0&0&0&0&0&0&0&0&0&0&0&0&-1&0\\
0&0&0&0&0&0&0&0&0&0&0&0&0&0&0&-1\\
0&0&1&0&0&0&0&0&0&0&-1&0&0&0&0&0\\
0&0&0&0&1&0&0&0&1&0&0&0&0&0&0&0
\end{pmatrix},
\qquad \det S=-16.
\tag{5.2}
$$

The full conjugation 09.(1.4) is essential.  In the printed convention,
A.36 differentiates the copied $\underline\beta$ block, A.37 the physical
$(\underline\beta,\rho,\sigma)$ block, A.38 the copied
$(\rho,\sigma,\beta)$ block, and A.39 the physical $(\beta,\alpha)$
block.  Consequently
$$
 \boxed{
 S\mathbf B+A_C^iD_i^0C+M_C C=0,}
 \tag{5.3}
$$
with the following complete covariant principal expansion:
$$
\begin{array}{c|l}
A.36a_{11}&(S\mathbf B)_1+D_1C_{\underline\beta1}-D_2C_{\underline\beta2}\\
A.36a_{12}&(S\mathbf B)_2+D_2C_{\underline\beta1}+D_1C_{\underline\beta2}\\
A.36b_1&(S\mathbf B)_3+D_3C_{\underline\beta1}\\
A.36b_2&(S\mathbf B)_4+D_3C_{\underline\beta2}\\
A.37a_1&(S\mathbf B)_5\\
A.37a_2&(S\mathbf B)_6\\
A.37b&(S\mathbf B)_7\\
A.37c&(S\mathbf B)_8\\
A.38a&(S\mathbf B)_9+D_4C_\rho-D_1C_{\beta1}-D_2C_{\beta2}\\
A.38b&(S\mathbf B)_{10}+D_4C_\sigma-D_2C_{\beta1}+D_1C_{\beta2}\\
A.38c_1&(S\mathbf B)_{11}+D_3C_{\beta1}-D_1C_\rho-D_2C_\sigma\\
A.38c_2&(S\mathbf B)_{12}+D_3C_{\beta2}-D_2C_\rho+D_1C_\sigma\\
A.39a_1&(S\mathbf B)_{13}\\
A.39a_2&(S\mathbf B)_{14}\\
A.39b_{11}&(S\mathbf B)_{15}\\
A.39b_{12}&(S\mathbf B)_{16}.
\end{array}
\tag{5.4}
$$
With column order (3.4), the four exact $16\times6$ frame matrices are
$$
\scriptsize
A_C^1=\begin{pmatrix}
0&0&1&0&0&0\\0&0&0&1&0&0\\0&0&0&0&0&0\\0&0&0&0&0&0\\
0&0&0&0&0&0\\0&0&0&0&0&0\\0&0&0&0&0&0\\0&0&0&0&0&0\\
-1&0&0&0&0&0\\0&1&0&0&0&0\\0&0&0&0&-1&0\\0&0&0&0&0&1\\
0&0&0&0&0&0\\0&0&0&0&0&0\\0&0&0&0&0&0\\0&0&0&0&0&0
\end{pmatrix},
\quad
A_C^2=\begin{pmatrix}
0&0&0&-1&0&0\\0&0&1&0&0&0\\0&0&0&0&0&0\\0&0&0&0&0&0\\
0&0&0&0&0&0\\0&0&0&0&0&0\\0&0&0&0&0&0\\0&0&0&0&0&0\\
0&-1&0&0&0&0\\-1&0&0&0&0&0\\0&0&0&0&0&-1\\0&0&0&0&-1&0\\
0&0&0&0&0&0\\0&0&0&0&0&0\\0&0&0&0&0&0\\0&0&0&0&0&0
\end{pmatrix},
\tag{5.5}
$$
$$
\scriptsize
A_C^3=\begin{pmatrix}
0&0&0&0&0&0\\0&0&0&0&0&0\\0&0&1&0&0&0\\0&0&0&1&0&0\\
0&0&0&0&0&0\\0&0&0&0&0&0\\0&0&0&0&0&0\\0&0&0&0&0&0\\
0&0&0&0&0&0\\0&0&0&0&0&0\\1&0&0&0&0&0\\0&1&0&0&0&0\\
0&0&0&0&0&0\\0&0&0&0&0&0\\0&0&0&0&0&0\\0&0&0&0&0&0
\end{pmatrix},
\quad
A_C^4=\begin{pmatrix}
0&0&0&0&0&0\\0&0&0&0&0&0\\0&0&0&0&0&0\\0&0&0&0&0&0\\
0&0&0&0&0&0\\0&0&0&0&0&0\\0&0&0&0&0&0\\0&0&0&0&0&0\\
0&0&0&0&1&0\\0&0&0&0&0&1\\0&0&0&0&0&0\\0&0&0&0&0&0\\
0&0&0&0&0&0\\0&0&0&0&0&0\\0&0&0&0&0&0\\0&0&0&0&0&0
\end{pmatrix}.
\tag{5.6}
$$

For completeness, in the bulk source gauge
$$
 \xi=\underline\xi=0,\quad \eta=\zeta,\quad
 \underline\zeta=-\zeta,\quad
 \omega=\underline\upsilon=0,\quad
 \upsilon=\nu,\quad\underline\omega=-\nu,
 \tag{5.7}
$$
the algebraic part of $M_C$ is, row block by row block,
$$
\begin{array}{c|l}
A.36a&3(\widehat H C_\rho-{}^\star\widehat H C_\sigma)
 +(4t-\zeta)\widehat\otimes C_{\underline\beta}\\
A.36b&(2\operatorname{tr}H-2\nu)C_{\underline\beta}\\
A.37a&-2\widehat H\cdot C_\beta\\
A.37b,A.37c&0\\
A.38a&\frac32\operatorname{tr}X C_\rho-(\zeta+2t)\cdot C_\beta\\
A.38b&\frac32\operatorname{tr}X C_\sigma+(\zeta+2t)\cdot{}^\star C_\beta\\
A.38c&(\operatorname{tr}H+2\nu)C_\beta
 -2\widehat X\cdot C_{\underline\beta}
 -3(\zeta C_\rho+{}^\star\zeta C_\sigma)\\
A.39a&0\\
A.39b&3(\widehat X C_\rho+{}^\star\widehat X C_\sigma)
 -5\zeta\widehat\otimes C_\beta.
\end{array}
\tag{5.8}
$$
The tensor lines mean their two vector or STF components.  For the
fixed-reference formulation, (5.8) is augmented by
$A_C^iC_i^{\rm copy}$ from
$\nabla_i=D_i^0+C_i^{\rm copy}$.  This is the concrete $M_C$; it contains
no derivative of a field outside $(\mathbf B,C)$.  V85 checks the entire
principal placement, including the zero A.37/A.39 copy-derivative rows.

## 6. All twenty-four Cartan equations

For the physical extractor, the exact second Cartan identity is
$$
 D\widehat{\mathcal K}
 =-H_B\mathbf B+3\mathcal T\mathbin{\lrcorner}d_{\rm phys}.
 \tag{6.1}
$$
All torsion, connection-action and fixed-reference terms in (6.1) are
lower order and homogeneous in the enlarged residual ideal.  The principal
rows are
$$
 E^iD_i^0\widehat{\mathcal K}+H_B\mathbf B=0,
 \tag{6.2}
$$
where $E^i$ are the complete exterior-derivative incidence matrices in the
ordering
$$
 (123;12,13,14,23,24,34),
 (124;12,13,14,23,24,34),
 (134;12,13,14,23,24,34),
 (234;12,13,14,23,24,34).
 \tag{6.3}
$$
V88 generates all $24\cdot36$ incidence entries.  Rows (2.3) and (2.5)
are retained; none is discarded as an unnamed constraint.

## 7. Square formulations

### 7.1 Curvature-only F1

Solve (5.3) algebraically for the sixteen Bianchi coordinates:
$$
 \mathbf B=-S^{-1}A_C^iD_i^0C+\text{l.o.t.}
 \tag{7.1}
$$
and insert $\widehat{\mathcal K}=QU$, with
$$
 U=(\mathcal K_{{\rm src},{\rm con}},C)\in\mathbb R^{24}.
 \tag{7.2}
$$
If $P_C:\mathbb R^{24}\to\mathbb R^6$ selects the last six entries, the
complete principal matrices are
$$
 \boxed{
 A_{\rm F1}^i=E^iQ-H_BS^{-1}A_C^iP_C,\qquad i=1,2,3,4.}
 \tag{7.3}
$$
This is a genuine square $24\times24$ first-order principal system.  The
second term does **not** cancel $E^iJC$, because the conjugated source
operator copies the A.36/A.38 blocks but not the A.37/A.39 blocks.  Treating
all sixteen rows as $D d_{\rm src}=0$ is false off the copy diagonal.

### 7.2 Mixed F2

For
$$
 U_{\rm F2}=(\mathcal K_{{\rm src},{\rm con}},\mathbf B,C)
 \in\mathbb R^{40},
 \tag{7.4}
$$
the twenty-four Cartan rows plus sixteen source rows are algebraically
square.  But $\mathbf B$ occurs without a derivative in both blocks.
Every $A_{\rm F2}^i$ therefore has sixteen zero $\mathbf B$ columns.
This is a differential-algebraic system, not a symmetric-hyperbolic
forty-component evolution system.  F1 is the cleaner candidate and is the
one subjected to the full symbol test.

## 8. Complete frozen symbol

At the regular Minkowski freeze set
$$
 e_1=\partial_1,\quad e_2=\partial_2,\quad
 e_3=\partial_\xi,\quad e_4=\partial_\eta,
 \tag{8.1}
$$
and for the covector $(\tau,\varrho,k_1,k_2)$ use
$$
 p_1=k_1,\quad p_2=k_2,\quad
 p_3=\tau-\varrho,\quad p_4=\tau+\varrho.
 \tag{8.2}
$$
The full symbol is
$$
 P_{\rm F1}(\tau,\varrho,k)
 =k_1A^1+k_2A^2+(\tau-\varrho)A^3
  +(\tau+\varrho)A^4.
 \tag{8.3}
$$
The saved SymPy regression constructs all 576 entries of each $A^i$ from
A.13, A.36--A.39 and exterior incidence; no representative blocks are
substituted.  Its fixed unknown and row orderings are (7.2) and (6.3).
The optional full dump also emits all 6400 entries of each mixed matrix.

For spacelike time,
$$
 A_t=A^3+A^4,\qquad A_r=-A^3+A^4,\qquad \det A_t=2.
 \tag{8.4}
$$
Thus the repaired F1 system is square and time-solvable at the frozen
background.  This is stronger than the Stage-4.4 underdetermined proposal,
but it is not yet hyperbolicity.

## 9. Symmetrizer obstruction

Normalize by $A_t$ and set
$$
 V_r=A_t^{-1}A_r.
 \tag{9.1}
$$
The exact rational matrix calculation gives (0.1) and
$$
 \dim\ker(V_r-I)=12,\qquad
 \dim\ker(V_r+I)=10,
 \tag{9.2}
$$
together with
$$
 (V_r-I)(V_r+I)^2=0,\qquad V_r^2\ne I.
 \tag{9.3}
$$
Hence there are two nontrivial generalized eigenvectors at speed $-1$.
Suppose a positive definite symmetrizer existed.  After time
normalization it would give a positive definite $H$ with $HV_r$ symmetric,
so $V_r$ would be self-adjoint in the $H$ inner product.  Every such
operator is diagonalizable over $\mathbb R$, contradicting (9.2)--(9.3).
Therefore
$$
 \boxed{
 \nexists H_{\rm sub}>0:\quad
 H_{\rm sub}A_t^{-1}A^i\ \text{is symmetric for all }i.}
 \tag{9.4}
$$
This obstruction is invariant under invertible row operations and changes
of unknown basis, because they leave the normalized symbol unchanged up to
similarity.  In particular there is no exact flux statement of the form
$$
 H_{\rm sub}A^\xi\ge0,\qquad
 H_{\rm sub}A^\eta\ge0,\qquad
 H_{\rm sub}(A^\xi+A^\eta)>0
 \tag{9.5}
$$
for F1.  F2 fails even earlier: its timelike principal matrix has a
sixteen-dimensional kernel from the $B$ columns.  Since failure already
occurs at Minkowski, no smooth positive symmetrizer can extend to a regular
coefficient neighborhood containing that background.

## 10. G.4 pivot and analytic gates

The next route is the quantitative Cabet build-up/comparison argument:

1. construct a genuine vacuum development near the corner from the
   completed geometric initial data;
2. put it in exactly the same fixed frame, copy convention and source
   gauge as the reduced solution;
3. apply the finite-regularity characteristic uniqueness estimate for the
   **main reduced system** on spacelike $\xi+\eta$ slices;
4. propagate equality through a common regular cell with explicit bundle,
   density, coefficient and derivative margins.

This is a new theorem obligation, not a consequence of the frozen
regression and not yet proved here.  A second-order wave residual system
remains an alternative, but is not mixed into the selected comparison
route.

Because (9.4) stops the first-order route, Parts H and I are not entered:

- no fixed-reference subsidiary energy estimate is asserted;
- $\ell_{\rm sub}$ is unassigned;
- the incoming projector for a proved bulk subsidiary symbol is not yet
  available, although Stage 4.3 still supplies the appropriate zero
  tangential/corner residual data;
- reduced solution $\Rightarrow$ vacuum Einstein is not proved;
- completed tangent $\Rightarrow$ linearized Einstein is not proved;
- tangent surjectivity and the full tangent-space scope of
  $\Omega_{\rm char}^{\rm intr}$ remain conditional.

## 11. Required Stage-4.5 verdicts

1. **Six omitted components:** (2.3) and (2.5).  They are retained in the
   full twenty-four-row spacelike-time system; (2.7) also gives their
   homogeneous principal propagation identities if one uses the
   eighteen-row characteristic subsystem.
2. **$d_{\rm src}-d_{\rm phys}=JC$:** explicitly proved component by
   component in (3.5)--(3.6), with full rank-six machine comparison.
3. **Bianchi bundle/Hodge map:** explicitly fixed by (4.2)--(4.7);
   dimension sixteen, $\operatorname{rank}H_B=16$, with a generated left
   inverse.
4. **All sixteen source rows:** expanded in (5.4), with the complete
   $A_C^i$ in (5.5)--(5.6) and $M_C$ in (5.8).
5. **Square formulation:** F1 is a complete $24\times24$ principal system.
   F2 is algebraically $40\times40$ but differential-algebraic.
6. **Frozen symbol:** fully constructed for general
   $(\tau,\varrho,k_A)$ in (8.3); all matrices are generated exactly.
7. **Positive symmetrizer:** **does not exist** for F1 because of the two
   radial Jordan directions; F2 has sixteen zero derivative columns.  No
   positive complementary-flux statement is available.
8. **Variable-coefficient finite regularity:** not proved;
   $\ell_{\rm sub}$ is unassigned.  The selected pivot is comparison.
9. **Reduced $\Rightarrow$ Einstein:** not proved.
10. **Completed tangent $\Rightarrow$ linearized Einstein:** not proved;
    tangent surjectivity is also not proved.
11. **Later gates:** $P_{\rm cell}^k$ and
    $P_{\rm rect}^{s,r}$ remain conditional.  No reset, nonlinear $C^1$,
    finite grid or quantization is attempted.

**Verified:** exact counts; six missing rows; all A.13 copy components;
$J$ ranks; Bianchi bundle constraints; $H_B$, $S$, all $A_C^i$; all
twenty-four Cartan rows; the full F1/F2 frozen matrices; timelike ranks;
the radial Jordan obstruction; three independent xAct bundle identities.

**Assumptions:** four-dimensional vacuum, (1.1), orientation
$\epsilon_{12}=1$, metric-antisymmetric connection type, A.13 Weyl type,
full conjugation 09.(1.4), regular constant frame at the frozen test, and
the fixed row/unknown orderings above.

**Not verified:** a second-order wave system; the quantitative comparison
theorem; any variable-coefficient bulk uniqueness/loss; nonlinear or
linearized Einstein identification; tangent surjectivity; reset;
$P_{\rm cell}^k$; $P_{\rm rect}^{s,r}$; or any quantum statement.
