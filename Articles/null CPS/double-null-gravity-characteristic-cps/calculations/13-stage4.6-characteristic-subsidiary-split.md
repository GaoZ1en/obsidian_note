# 13 - Stage 4.6: characteristic subsidiary evolution/constraint split

## 0. Direct verdict and scope

**The prescribed local first-order 18+6 route fails at Part B.** The six
natural source rows have an invertible copy time-derivative block, but also
contain six independent Bianchi components. The other ten source rows do
not determine those six components. Eliminating all sixteen Bianchi
components leaves exactly eighteen first-order equations for twenty-four
unknowns, with six freely specifiable copy time jets. Calling the selected
source rows six additional evolution equations counts the same equations
twice.

This is an exact local elimination obstruction, not a failed numerical
search. Using all six withheld Cartan constraints to supply the missing
equations returns a row-equivalent version of F1, whose radial Jordan
obstruction was established in calculation 12. A single audit of the
constant constraint-addition family cannot repair either obstruction.

The tested direct first-order routes are exhausted **for this project and
this fixed residual/source convention**. The next selected route is
quantitative fixed-reference Cabet build-up/comparison. This does not rule
out every conceivable first-order formulation of Einstein's equations.
No Stage-4.7 first-order variants are proposed. A second-order wave
subsidiary theorem remains only an alternative; the wave compatibility
identity below does not prove such a theorem.

Everything remains classical. Bulk Einstein identification and the
linearized/tangent identification are open; no subsidiary loss is assigned.
Moving-cut reset, nonlinear $C^1$ and finite-grid continuation are deferred.
$P_{\rm cell}^k$ and $P_{\rm rect}^{s,r}$ remain conditional.

## 1. Fixed unknowns, conventions and retained lower-order terms

Continue `codex/double-null-gravity-cps` from
`cb0c55f3bb96a406c673f66967e0d84ce7b0222c`. Use exactly calculation 12's
frame, Weyl extraction, source conjugation, pair ordering and signs:

$$
g_{11}=g_{22}=1,\quad g_{34}=g_{43}=-2,\quad \epsilon_{12}=1,
\qquad e_3=\partial_\xi,\quad e_4=\partial_\eta
\tag{1.1}
$$

at the regular Minkowski freeze, with $e_A=\partial_A$.
Write $k_i$ for the following eighteen complementary **source** curvature
components in the unchanged base-pair-major order:

$$
\begin{split}
k={}&(K_{12}^{12},K_{12}^{13},K_{12}^{14},K_{12}^{23},K_{12}^{24},K_{12}^{34},
K_{13}^{14},K_{13}^{24},K_{13}^{34},\\
&K_{14}^{12},K_{14}^{13},K_{14}^{23},
K_{23}^{14},K_{23}^{24},K_{23}^{34},
K_{24}^{12},K_{24}^{13},K_{24}^{23})^T.
\end{split}
\tag{1.2}
$$

Here every $K$ means $\mathcal K_{{\rm src},{\rm con}}$, not
$\widehat{\mathcal K}$. Abbreviate the six copies by

$$
C=(b_1,b_2,u_1,u_2,c,s)^T
=(C_{\beta1},C_{\beta2},C_{\underline\beta1},
C_{\underline\beta2},C_\rho,C_\sigma)^T,
\qquad U=(k,C)^T.
\tag{1.3}
$$

The abbreviations $c,s$ in this calculation are copy residuals, not the
source lapse or a regularity index. Keep the exact map
$\widehat{\mathcal K}=QU=\mathcal K_{\rm src}+JC$ of 12.(3.5)--(3.9).
Let $E^i$ be the full exterior incidence matrices, $H=H_B$, and $S,A_C^i,M_C$
the unchanged source matrices of 12.5. The two equations before elimination
are

$$
E^iQ D_i^0U+H\mathbf B=L_K,
\qquad S\mathbf B+A_C^iD_i^0C+M_CC=0,
\tag{1.4}
$$

where all lower-order terms are retained separately by the exact definition

$$
\begin{split}
\mathcal L_Q U&:=D(QU)-E^iQ D_i^0U,\\
L_K&:=3\mathcal T\mathbin{\lrcorner}d_{\rm phys}-\mathcal L_Q U,\\
\ell&:=L_K+HS^{-1}M_CC.
\end{split}
\tag{1.5}
$$

$\mathcal L_Q$ contains the connection action, frame commutator and
fixed-reference/basis-conversion terms; it is zeroth order in $U$.
$M_C$ is the full operator displayed in 12.(5.8), including its
fixed-reference correction, not a discarded error term. Torsion occurs
algebraically in (1.5). Thus no derivative of a residual outside $U$
appears in the first-order rows below. These terms are homogeneous in the
enlarged residual ideal, not a proved closed system for $U$ alone.

Eliminating $\mathbf B$ gives the full twenty-four-row operator

$$
F^i=E^iQ-HS^{-1}A_C^iP_C,\qquad F^iD_i^0U=\ell,
\tag{1.6}
$$

where $P_CU=C$. This is precisely F1 before selecting its rows.
At the Minkowski linear freeze the lower-order terms vanish.

## 2. All eighteen selected Cartan evolution rows

Let $P_e$ select triples $123,134,234$ for
$I\in\mathcal P=(12,13,23)$ and $124,134,234$ for
$I\in\mathcal Q=(14,24,34)$. Set $F_e^i=P_eF^i$ and keep the inherited
triple-major row order. The following are **all eighteen** principal left
sides after the exact local substitution (1.6). Each row equals its own
$\ell_{ijk}^I$ from (1.5); none sets that lower-order term to zero away
from the freeze. Here $e_i$ denotes the principal derivative $D_i^0$.

| Row $(ijk;I)$ | Principal left side |
|---|---|
| $123;12$ | $e_3k_1-e_3c-e_1u_1-e_2u_2$ |
| $123;13$ | $e_3k_2$ |
| $123;23$ | $e_3k_4$ |
| $124;14$ | $e_4k_3-e_4b_2$ |
| $124;24$ | $e_4k_5+e_4b_1$ |
| $124;34$ | $e_4k_6$ |
| $134;12$ | $-e_3k_{10}+e_4u_2+e_1s+e_2c$ |
| $134;13$ | $-e_3k_{11}+e_3c+e_1u_1+e_2u_2$ |
| $134;14$ | $e_4k_7+e_1b_1-e_2b_2$ |
| $134;23$ | $-e_3k_{12}+e_3s+e_1u_2-e_2u_1$ |
| $134;24$ | $e_4k_8+e_1b_2+e_2b_1$ |
| $134;34$ | $e_4k_9+2e_4u_1+2e_1c-2e_2s$ |
| $234;12$ | $-e_3k_{16}-e_4u_1-e_1c+e_2s$ |
| $234;13$ | $-e_3k_{17}-e_3s-e_1u_2+e_2u_1$ |
| $234;14$ | $e_4k_{13}+e_1b_2+e_2b_1$ |
| $234;23$ | $-e_3k_{18}+e_3c+e_1u_1+e_2u_2$ |
| $234;24$ | $e_4k_{14}-e_1b_1+e_2b_2$ |
| $234;34$ | $e_4k_{15}+2e_4u_2+2e_1s+2e_2c$ |

Before the substitution these same selected rows are
$e_i\widehat K_{jk}^I-e_j\widehat K_{ik}^I+e_k\widehat K_{ij}^I
+(H\mathbf B)_{ijk}^I=(L_K)_{ijk}^I$.
The script generates both sets of full matrices from 12's constructors.

## 3. The six withheld Cartan constraints

Let $P_c$ select, in this order,

$$
(124;12),(124;13),(124;23),(123;14),(123;24),(123;34).
\tag{3.1}
$$

The full constraint residual is $G=P_c(F^iD_i^0U-\ell)$.
Its six principal left sides, before subtracting their respective
$\ell$ entries, are

$$
\begin{aligned}
G_1^{\rm pr}&=e_4k_1+e_1k_{16}-e_2k_{10},\\
G_2^{\rm pr}&=e_4k_2+e_4u_2+e_1k_{17}-e_2k_{11}+e_1s+e_2c,\\
G_3^{\rm pr}&=e_4k_4-e_4u_1+e_1k_{18}-e_2k_{12}-e_1c+e_2s,\\
G_4^{\rm pr}&=e_3k_3+e_1k_{13}-e_2k_7,\\
G_5^{\rm pr}&=e_3k_5+e_1k_{14}-e_2k_8,\\
G_6^{\rm pr}&=e_3k_6+2e_3s+e_1k_{15}-e_2k_9+2e_1u_2-2e_2u_1.
\end{aligned}
\tag{3.2}
$$

For the **bare** exterior rows $E_{ijk}=(d\widehat K)_{ijk}$, all six
identities

$$
e_1E_{234}^I-e_2E_{134}^I+e_3E_{124}^I-e_4E_{123}^I=0
\tag{3.3}
$$

hold at the freeze. For a covariant exterior derivative the corresponding
$D^2\widehat K=[\mathcal R,\widehat K]$ term is algebraic.
Equation (3.3) propagates a bare withheld row if all other bare rows
vanish. The actual evolution equations include $H\mathbf B$ and their
copy substitution. Their complete propagation identity is Section 7;
(3.3) alone does not prove homogeneous propagation of $G$.

## 4. Rank-revealing 6+10 source decomposition and Part-B stop

Use the exact sixteen source rows of 12.(5.1). The copy jet matrix obeys

$$
\operatorname{rank}[A_C^1\ A_C^2\ A_C^3\ A_C^4]=8,
\qquad \operatorname{rank}(A_C^3+A_C^4)=6.
\tag{4.1}
$$

The time pivots select exactly

$$
T=(A.36b_1,A.36b_2,A.38a,A.38b,A.38c_1,A.38c_2).
\tag{4.2}
$$

The complementary rows, in order, are

$$
R=(A.36a_{11},A.36a_{12},A.37a_1,A.37a_2,A.37b,A.37c,
A.39a_1,A.39a_2,A.39b_{11},A.39b_{12}).
\tag{4.3}
$$

Let $\Pi$ reorder the source rows as $(T,R)$, and define sixteen
algebraic Bianchi coordinates $z=\Pi S\mathbf B$.
Since $\det S=-16$, this is an invertible change of Bianchi basis.
The six candidate equations are, including every lower-order row,

$$
\begin{aligned}
z_1+e_3u_1+(\Pi M_CC)_1&=0,&
z_2+e_3u_2+(\Pi M_CC)_2&=0,\\
z_3+e_4c-e_1b_1-e_2b_2+(\Pi M_CC)_3&=0,&
z_4+e_4s-e_2b_1+e_1b_2+(\Pi M_CC)_4&=0,\\
z_5+e_3b_1-e_1c-e_2s+(\Pi M_CC)_5&=0,&
z_6+e_3b_2-e_2c+e_1s+(\Pi M_CC)_6&=0.
\end{aligned}
\tag{4.4}
$$

The remaining ten equations are explicitly

$$
\begin{aligned}
z_7+e_1u_1-e_2u_2+(\Pi M_CC)_7&=0,\\
z_8+e_2u_1+e_1u_2+(\Pi M_CC)_8&=0,\\
z_j+(\Pi M_CC)_j&=0,\qquad j=9,10,11,12,13,14,15,16.
\end{aligned}
\tag{4.5}
$$

Thus (4.5) solves precisely $z_7,\ldots,z_{16}$, leaving all six
$z_1,\ldots,z_6$ in (4.4) undetermined. The characteristic derivatives
in (4.4) are solvable **given these six Bianchi components**, not from $U$
and its prescribed spatial derivatives alone. Setting them to zero would
assume the bulk constraint conclusion being sought.

This conclusion does not depend on choosing the natural pivots. For any
invertible sixteen-row recombination, its Bianchi coefficient remains
invertible. Ten independent complementary rows leave a six-dimensional
Bianchi fiber. The six other independent rows have rank six on that fiber;
otherwise the full sixteen-row Bianchi matrix would have a kernel.

To include the Cartan-Hodge incidence, consider all eighteen selected
Cartan rows and all sixteen source rows at once:

$$
\begin{pmatrix}P_eE^iQ&P_eH\\ A_C^iP_C&S\end{pmatrix}
\binom{D_i^0U}{\mathbf B}.
\tag{4.6}
$$

The displayed right block is algebraic; there is only one $S\mathbf B$
term, not one per derivative. Exact block elimination by

$$
\begin{pmatrix}I_{18}&-P_eHS^{-1}\\0&I_{16}\end{pmatrix}
\tag{4.7}
$$

leaves $F_e^iD_i^0U=\ell_e$ and the sixteen equations determining
$\mathbf B=-S^{-1}(A_C^iD_i^0C+M_CC)$. The latter are identities after
substitution. Hence there are **eighteen**, not twenty-four, independent
first-order equations on $U$.

This exhausts local algebraic elimination, including using
$\operatorname{rank}(P_eH)=16$ to solve for Bianchi components from selected
Cartan rows. That maneuver consumes the same Cartan equations and cannot
increase their number. At the homogeneous constant freeze, differentiation
raises differential degree. Polynomial combinations involving derivatives
cannot produce six new degree-one equations after cancellation of their
higher-degree terms; the degree-one part is a constant row combination of
the original degree-one rows. Division by a differential polynomial or
adjoining derivative unknowns would leave the permitted route.

**Part B5 is triggered.** No independent local six-equation copy block
completes the specified eighteen equations on the specified $U$.

## 5. Full matrices and the time-rank certificate

The saved Python script constructs all entries, over $\mathbb Q$, of:

- $S$ ($16\times16$), $H$ ($24\times16$), $J$ ($36\times6$),
  $Q$ ($36\times24$), and every $A_C^i$ ($16\times6$);
- all four raw Cartan matrices $E^iQ$ and eliminated F1 matrices $F^i$
  ($24\times24$), and their $18\times24$/$6\times24$ selections;
- the $34\times40$ mixed time matrix (4.6), with exact elimination (4.7);
- the four $24\times24$ **failed-padding certificates**
  $\widehat A^i=\binom{F_e^i}{0_{6\times24}}$, showing what remains if
  one appends the six source rows after their exact Bianchi substitution.

The last matrices are not advertised as an evolution system. No valid
$A_{\rm evol}$ was obtained, so Part C's requested genuine matrix cannot be
supplied. The full certificates can be printed with `--dump-full` or saved
with `--json PATH`; `--wolfram PATH` exports the same exact data for the
independent Mathematica checks. No matrix entries or rows are omitted.

For $t=\xi+\eta$, $r=\eta-\xi$,

$$
F_{e,t}=F_e^3+F_e^4,\qquad F_{e,r}=-F_e^3+F_e^4,
\qquad \operatorname{rank}F_{e,t}=18.
\tag{5.1}
$$

In fact its first eighteen columns form an invertible matrix. Thus

$$
N=\begin{pmatrix}
-(F_{e,t}|_k)^{-1}(F_{e,t}|_C)\\ I_6
\end{pmatrix},\qquad F_{e,t}N=0
\tag{5.2}
$$

exhibits arbitrary copy time jets on the evolution shell. The script
prints every entry of $N$. The full mixed time rank is $34$ in $40$
columns, and the padded time rank is $18$, determinant zero. This is
consistent with the Part-B stop; it is not a new Part-D formulation.

There is therefore no normalized $V(n)$ for this route. Tests of its
characteristic polynomial, all-direction diagonalizability, uniform
eigenvector bounds or positive symmetrizer are **not applicable**. No
sampling is used as a substitute for a strong-hyperbolicity theorem.

## 6. One constant constraint-addition audit and the F1 comparator

Audit exactly the allowed constant family

$$
F_e^i\longmapsto F_e^i+\Lambda F_c^i,
\qquad \Lambda\in\mathbb R^{18\times6},\quad F_c^i=P_cF^i.
\tag{6.1}
$$

No parameter hunting is required: this is still eighteen equations, and
its time rank is at most eighteen for every $\Lambda$. The exact symbolic
row identity is checked for all 108 entries of $\Lambda$ simultaneously.
The lower-order right sides transform by the same row operation.

If the six constraints are appended to make the matrix square, then

$$
\binom{F_e^i+\Lambda F_c^i}{F_c^i}
=\begin{pmatrix}I&\Lambda\\0&I\end{pmatrix}
 \binom{F_e^i}{F_c^i}.
\tag{6.2}
$$

The left matrix has the explicit inverse obtained by replacing $\Lambda$
with $-\Lambda$. This square system is exactly F1 up to invertible row
operations. More generally, any twenty-four independent local algebraic
rows extracted using all twenty-four Cartan rows and all sixteen source
rows have the form $RF^i$ with $R$ invertible whenever their time matrix is
invertible. For every real spatial covector, time normalization cancels
$R$:

$$
(RF_t)^{-1}R(\rho F_r+k_1F^1+k_2F^2)
=F_t^{-1}(\rho F_r+k_1F^1+k_2F^2).
\tag{6.3}
$$

This is an analytic all-parameter identity, not a collection of sampled
directions. In particular the inherited radial result is unchanged:

$$
\det F_t=2,\quad
\chi_{V_r}(\lambda)=(\lambda-1)^{12}(\lambda+1)^{12},\quad
\dim\ker(V_r-I)=12,\quad\dim\ker(V_r+I)=10,
\tag{6.4}
$$

$$
(V_r-I)(V_r+I)^2=0,\qquad V_r^2\ne I.
\tag{6.5}
$$

There are two size-two Jordan blocks at $-1$. These inherited comparator
checks are rerun, without opening another formulation. One real radial
covector already disproves strong hyperbolicity and any positive
symmetrizer for every invertible row-equivalent square completion.
The classification is **not an evolution system** for the requested split;
**defective, not strongly hyperbolic** for its F1 square completion.

## 7. Complete constraint identity and initial-data boundary

Put $\mathfrak F_{ijk}^I=(F^iD_i^0U-\ell)_{ijk}^I$.
At the Minkowski freeze, define

$$
W=e_3e_4-e_1^2-e_2^2
=\partial_t^2-\partial_r^2-\partial_1^2-\partial_2^2.
\tag{7.1}
$$

In the internal order $(12,13,14,23,24,34)$, the **full** symbol identity is

$$
e_1\mathfrak F_{234}-e_2\mathfrak F_{134}
+e_3\mathfrak F_{124}-e_4\mathfrak F_{123}
=M W C,
\quad MC=(c,u_2,-b_2,-u_1,b_1,-2s)^T,
\quad \det M\ne0.
\tag{7.2}
$$

The $k$ columns cancel exactly; the displayed copy wave term does not.
Equation (7.2) is checked as a polynomial identity for arbitrary
$(p_1,p_2,p_3,p_4)$, not just at rational samples.
Consequently, on the eighteen-row evolution shell, all six propagation
equations in the constraint order (3.1) are

$$
\begin{aligned}
e_3G_1&=Wc,& e_3G_2&=Wu_2,& e_3G_3&=-Wu_1,\\
e_4G_4&=Wb_2,& e_4G_5&=-Wb_1,& e_4G_6&=2Ws.
\end{aligned}
\tag{7.3}
$$

They are not homogeneous transport of $G$ from the eighteen equations
alone. An explicit counterexample is
$U(t)=\tfrac12t^2v$, where $v$ has $k_1=k_{11}=k_{18}=c=1$ and all
other entries zero. It satisfies $F_e^i\partial_iU=0$, but
$G=(t,0,0,0,0,0)^T$: $G(0)=0$ and $\partial_tG_1=1$.
This is a counterexample in the proposed unconstrained residual evolution
model, not an asserted geometric reduced Einstein solution.

For an actual physical Weyl tensor, $H\mathbf B=d(d_{\rm phys})$ at
the freeze, and $dH\mathbf B=0$ is a differential compatibility identity.
Substitution of the source relation converts it to the six second-order
conditions $WC=0$. If those conditions are supplied, (7.3) becomes
homogeneous. They are not six additional first-order copy equations on
$U$. At variable coefficients one must also retain covariant commutators,
torsion terms and derivatives of (1.5); no closed enlarged first-order
constraint transport or second-order uniqueness theorem is inferred here.

The ten complementary source relations (4.5) determine Bianchi coordinates;
they do not furnish ten independent propagated constraints on $U$ after
elimination. Thus Part G2's requested complete homogeneous first-order
constraint vector has not been constructed.

Stage 4.3 does supply the correctly placed **initial tangential** data.
At the freeze $N_+=\{\xi=0\}$ has tangent directions $(1,2,4)$, so
the three $124;\mathcal P$ constraints have zero data there and would
propagate into the cell along $e_3$. Likewise
$N_-=\{\eta=0\}$ has tangent directions $(1,2,3)$, so the three
$123;\mathcal Q$ constraints have zero data there and would propagate
along $e_4$. Their common corner data and the copy equalities vanish by
10.4.1--4.2, with the stated completion regularity. This uses sheet
pullbacks, not arbitrary transverse bulk jets. Correctly placed zero
incoming data do not remove the missing bulk copy evolution/compatibility
theorem and do not prove uniqueness for (7.3) without its forcing equations.

## 8. Decision gate and required answers

1. **Local six-equation copy block?** No independent block on the specified
   $U$. Equations (4.4) solve six copy derivatives only conditional on six
   Bianchi components. The full local elimination proof is (4.6)--(5.2).
2. **Genuine 24-component evolution system?** No. Eighteen independent
   equations remain after eliminating $\mathbf B$.
3. **Invertible $A_t$?** No valid $A_{\rm evol,t}$ exists. The honest
   $24\times24$ zero-row certificate has rank eighteen; only the reinstated
   all-Cartan F1 comparator has invertible time matrix.
4. **Strong hyperbolicity for all real spatial covectors?** Not applicable
   to the underdetermined split; false for any F1 row-equivalent square
   completion, already in the radial direction.
5. **Positive symmetrizer, or at least strong hyperbolicity?** Neither is
   obtained. No positive time energy exists for a rank-eighteen time matrix;
   the F1 completion is defective and admits no positive symmetrizer.
6. **Homogeneous propagation of all six Cartan constraints?** Not from the
   eighteen-row evolution shell alone. Exact equations (7.3) retain six
   copy-wave forcings. Bare $d^2=0$ and zero incoming data are insufficient.
7. **One local constraint addition repairs the obstruction?** No. Family
   (6.1) has at most eighteen rows; its square completion (6.2) preserves
   F1's normalized symbol for every parameter and spatial covector.
8. **Continue the direct first-order program?** No, within the present
   project. F1, F2 and this specified characteristic split are exhausted.
   Select quantitative fixed-reference Cabet build-up/comparison: construct
   a geometric vacuum development from the completed cross, place it in the
   identical fixed source gauge and copy convention, and prove equality
   with the reduced solution on a common cell with explicit finite
   regularity, density and coefficient margins. This theorem remains open.
9. **Later claims?** Bulk Einstein identification, reset,
   $P_{\rm cell}^k$ and $P_{\rm rect}^{s,r}$ stay open/conditional as
   previously stated. No quantization, reset, nonlinear $C^1$ or finite-grid
   step is performed. No loss or uniqueness theorem is guessed.

**Verified:** full rational matrix generation, all eighteen equations and
six constraints, exact source 6+10 decomposition, local Schur elimination,
six free copy time jets, rank-eighteen certificate, the inherited F1 Jordan
data, the one constant constraint family, the bare exterior identity and
the full six-copy wave compatibility identity. Python/SymPy: 34/34;
independent Mathematica matrix arithmetic: 15/15. See
`verification/stage46_component_results.md` and `verification/RUN_LOG.md`.

**Assumptions:** unchanged Stage-4.5 Weyl/source convention and residual
basis; regular Minkowski principal freeze; algebraic local row/column
elimination and the specified first-order unknowns. Incoming-data statements
use the existing Stage-4.3 geometric completion, its regularity and corner
matching hypotheses.

**Not verified:** a variable-coefficient finite-regularity uniqueness
theorem, the quantitative comparison/build-up theorem, a closed wave
subsidiary system, bulk or tangent Einstein identification, tangent
surjectivity, reset, nonlinear $C^1$, $P_{\rm cell}^k$ or
$P_{\rm rect}^{s,r}$. The negative conclusion does not claim to classify
all conceivable first-order reductions.
