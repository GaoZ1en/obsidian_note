# 11 - Stage 4.4: bulk Einstein subsidiary audit

## 0. Direct verdict and stop line

**Established in this calculation:** an exhaustive separation of algebraic
types from propagated zero-quantities; a complete bulk residual vector for
the fixed source operator 09.(1.4); the exact Cartan identities which make
the torsion and curvature-definition blocks homogeneous once the Bianchi
and copy blocks are included; the characteristic incidence of their incoming
zero data; and the conditional metric-reconstruction lemma.

**Not proved:** a closed symmetrizable first-order characteristic system for
the coupled curvature-definition/Bianchi/copy principal block.  In
particular no finite-regularity uniqueness estimate and no loss
$\ell_{\rm sub}$ are assigned.  Consequently a reduced solution from
$C_{\rm init}$ is still not identified with a vacuum metric in the bulk,
and neither its linearization nor the project reset is promoted.

The precise first unfinished lemma is
$$
 \boxed{P_{\rm sub}^{m}:\quad
 (\mathcal K_{\rm con},\mathcal B,\mathcal C_{\rm copy})
 \text{ has a closed symmetrizable double-null principal system}}
 \tag{0.1}
$$
with the complete 09.(1.4) copy substitution, fixed-reference terms and
positive characteristic flux.  Section 4 identifies the unresolved block.
No nonhomogeneous algebraic source survives after adjoining $\mathcal B$;
what remains unproved is the joint principal closure and its symmetrizer.
This is exactly the direct work which Cabet--Chru\'sciel--Tagne Wafo avoid on
p. 55.  It is not replaced here by their build-up comparison.

Parts F--G of Stage 4.4 are therefore gated off.  No moving-cut reset,
quadratic evolution remainder, finite grid or quantization is begun.
$P_{\rm cell}^k$ and $P_{\rm rect}^{s,r}$ remain conditional.

## 1. Source obligation and provenance

The source equations are the frame, connection-curvature and divergence
system
$$
\begin{split}
 [e_p,e_q]&=(\Gamma_p{}^l{}_q-\Gamma_q{}^l{}_p)e_l,
                                                        &&\text{(5.3a)},\\
 e_p\Gamma_q{}^i{}_j-e_q\Gamma_p{}^i{}_j
 -(\Gamma_p{}^l{}_q-\Gamma_q{}^l{}_p)\Gamma_l{}^i{}_j
 +\Gamma_p{}^i{}_l\Gamma_q{}^l{}_j
 -\Gamma_q{}^i{}_l\Gamma_p{}^l{}_j
 &=d^i{}_{jpq},                                      &&\text{(5.3b), vacuum},\\
 \nabla_i d^i{}_{jkl}&=0,                            &&\text{(5.3c)}.
\end{split}\tag{1.1}
$$
The reduced square system evolves only the rows catalogued in
`verification/SOURCE_ROW_LEDGER.md`, with A.35 copies and the complete
operator conjugation 09.(1.4).

The v2 source states that Theorem 3.9 produces fields (5.12)--(5.13), but
that a direct proof that every such field set solves Einstein would require
``a considerable amount of work''.  Its proof of Theorem 5.3 instead starts
with a pre-existing vacuum development near the corner, compares the two
reduced solutions there, and extends the equality by spacelike $u+v$ slices.
Thus the source proves its smooth neighborhood theorem by build-up, not by
a residual propagation theorem for every abstract reduced field set.

**Known from the primary source:** (1.1), the gauge (5.4)--(5.14), A.35,
A.36--A.39, their symmetric principal matrices A.41/A.43, and the p.55--56
build-up argument.

**Re-derived here:** the residual inventory and identities below.  V75--V78
are representative algebraic regressions only; they are not a proof of
(0.1).

## 2. Algebraic types versus propagated residuals

### 2.1 Exact algebraic and hard-gauge identities

The following do not require a subsidiary equation.

1. The frame inner products $g_{ij}$ are a fixed Lorentz matrix.  Once the
   coordinate frame is invertible, they define the spacetime metric through
   its dual coframe.
2. $\Gamma_{ijk}=-\Gamma_{ikj}$ is imposed by the connection variable type;
   all dependent partners are eliminated.
3. $d_{ijkl}$ is reconstructed from the six Weyl types and therefore has
   pair antisymmetry, pair exchange, the algebraic first Bianchi identity
   and zero trace exactly.
4. The coordinate form of $e_3,e_4,e_a$ and the zero connection entries in
   (5.14) are hard gauge definitions.  Positivity of $c$, invertibility of
   $E$, and injectivity of the coordinate/endpoint maps are open margins,
   not zero-quantities.
5. The actual vector fields $e_i=e_i{}^\mu\partial_\mu$ satisfy the Jacobi
   identity identically.  There is no extra coordinate-integrability
   residual beyond their torsion equations.

The frame normalization, affine/geodesic zero entries and rotation choice
should therefore not be duplicated as artificial subsidiary variables.
The relations $t=-\zeta-D\log c$, the symmetry of $X,H$, shift transport
and compatibility of the cut connection are components of the torsion or
curvature residuals below; they are not additional independent blocks.

### 2.2 Torsion and source-curvature residuals

Let the actual structure coefficients be
$$
 [e_i,e_j]=C_{ij}{}^k e_k.
$$
Define
$$
 \mathcal T_{ij}{}^k
 :=C_{ij}{}^k-(\Gamma_i{}^k{}_j-\Gamma_j{}^k{}_i).
 \tag{2.1}
$$
For exact agreement with the source connection row, define first
$$
\begin{split}
 \Xi_{ij}{}^k{}_l:={}&e_i\Gamma_j{}^k{}_l-e_j\Gamma_i{}^k{}_l
 -(\Gamma_i{}^m{}_j-\Gamma_j{}^m{}_i)\Gamma_m{}^k{}_l\\
 &+\Gamma_i{}^k{}_m\Gamma_j{}^m{}_l
 -\Gamma_j{}^k{}_m\Gamma_i{}^m{}_l-d^k{}_{lij}.
\end{split}\tag{2.2}
$$
The genuine curvature-definition residual, using the actual bracket, is
$$
 \mathcal K_{ij}{}^k{}_l
 :=R(\Gamma)_{ij}{}^k{}_l-d^k{}_{lij}
 =\Xi_{ij}{}^k{}_l-\mathcal T_{ij}{}^m\Gamma_m{}^k{}_l.
 \tag{2.3}
$$
Thus the source rows set selected $\Xi$ components to zero, while
$\mathcal T=0=\Xi$ is equivalent to torsion-free curvature definition.
Using $\mathcal K$ without the correction in (2.3) would silently assume
the result being propagated.

Because $d$ is algebraically Weyl, all vacuum Ricci, scalar trace, pair
exchange and algebraic-curvature obligations are already projections of
$\mathcal K$.  For example
$$
 R(\Gamma)_{jl}=g^{ik}\mathcal K_{ij,kl},
 \tag{2.4}
$$
with the corresponding source sign convention.  No separate Ricci or Weyl
trace variable is needed.  If $\mathcal K=0$, every one of these residuals
vanishes.

### 2.3 Differential Bianchi and copy residuals

Let $d(F)$ mean the physical ten-component Weyl extractor fixed by
09.(1.4), not an arbitrary choice of an uncircled RHS.  Define
$$
 \mathcal B_{jkl}:=\nabla^i d(F)_{ijkl},
 \tag{2.5}
$$
with its sixteen independent real components, and
$$
 \mathcal C_{\rm copy}:=
 (\mathring\beta-\beta,
  \mathring{\underline\beta}-\underline\beta,
  \mathring\rho-\rho,
  \mathring\sigma-\sigma).
 \tag{2.6}
$$
The four tensor entries in (2.6) have $2+2+1+1=6$ real components.
On the copy diagonal, A.36--A.39 are precisely the component form of
$\mathcal B=0$.  Off the diagonal they are a square system for sixteen
duplicated fields and must not be identified with (2.5) without the
derivatives of (2.6).

### 2.4 Complete independent residual vector

Use the internal-pair split
$$
 \mathcal P=\{12,13,23\},\qquad
 \mathcal Q=\{14,24,34\}.
 \tag{2.7}
$$
The reduced main equations give
$$
 \mathcal T_{3i}{}^k=0,\qquad
 \Xi_{3q}^{\mathcal P}=0\ (q=1,2,4),\qquad
 \Xi_{4q}^{\mathcal Q}=0\ (q=1,2,3).
 \tag{2.8}
$$
Consequently a complete propagated vector, without re-adjoining the
identically zero main rows, is
$$
\boxed{
 \mathcal R_{\rm bulk}=
 \big(
 \mathcal T_{4a}{}^k,\mathcal T_{12}{}^k;
 \Xi_{4a}^{\mathcal P},\Xi_{12}^{\mathcal P},
 \Xi_{3a}^{\mathcal Q},\Xi_{12}^{\mathcal Q};
 \mathcal B_{jkl};\mathcal C_{\rm copy}
 \big).}
 \tag{2.9}
$$
Here $a=1,2$ and the internal indices on $\Xi$ are those in (2.7).
The component counts are $12+18+16+6$.  The vector is complete but not
minimal: after the main equations, $\mathcal B$ is a differential
combination of $\mathcal C_{\rm copy}$, while the second Cartan identity
relates it to derivatives of $\mathcal K$.  It is retained because it is
the precise block needed to display homogeneity; it is not an unrelated
constraint.

No separate metricity, gauge, Ricci or coordinate-integrability entry is
missing, for the reasons in Sections 2.1--2.2.

## 3. Exact homogeneous identities for torsion and curvature

Let $\theta^i$ be the coframe dual to $e_i$ and
$\omega^i{}_j=\Gamma_k{}^i{}_j\theta^k$.  Set
$$
 \Theta^i=d\theta^i+\omega^i{}_j\wedge\theta^j,
 \qquad
 \mathcal T^i:=\frac12\mathcal T_{jk}{}^i\theta^j\wedge\theta^k
 =-\Theta^i,
 \qquad
 \mathcal R^i{}_j=d\omega^i{}_j+\omega^i{}_k\wedge\omega^k{}_j.
 \tag{3.1}
$$
The minus sign is forced by the project convention (2.1): the usual
connection torsion is
$\Gamma_i{}^k{}_j-\Gamma_j{}^k{}_i-C_{ij}{}^k
=-\mathcal T_{ij}{}^k$.  The two Cartan identities for the same
connection, without assuming zero torsion, are
$$
 D\Theta^i=\mathcal R^i{}_j\wedge\theta^j,\qquad
 D\mathcal R^i{}_j=0.
 \tag{3.2}
$$
Write $\mathcal R=d+\mathcal K$.  The algebraic Weyl first Bianchi
identity is $d^i{}_j\wedge\theta^j=0$.  Hence
$$
 \boxed{D\mathcal T^i=-\mathcal K^i{}_j\wedge\theta^j.}
 \tag{3.3}
$$
Because the connection is metric, it preserves the frame Hodge operator.
For a Weyl-type tensor in four dimensions, the alternated covariant
derivative is an invertible algebraic Hodge transform $\mathscr H$ of its
divergence; fix its sign by
$$
 3\nabla_{[i}d_{jk]}{}^l{}_m
 =\mathscr H(\mathcal B)_{ijk}{}^l{}_m.
 \tag{3.4}
$$
Exterior covariant differentiation also contains the torsion insertion.
Since the conventional torsion is $-\mathcal T$, the exact component
identity is
$$
 (Dd)_{ijk}{}^l{}_m
 =\mathscr H(\mathcal B)_{ijk}{}^l{}_m
  -3\mathcal T_{[ij}{}^p d_{|p|k]}{}^l{}_m.
 \tag{3.5}
$$
Therefore the second Cartan identity gives
$$
 \boxed{D\mathcal K^i{}_j=-Dd^i{}_j
       =-\mathscr H(\mathcal B)^i{}_j
        +3\mathcal T\mathbin{\lrcorner}d^i{}_j.}
 \tag{3.6}
$$
Here $(\mathcal T\mathbin{\lrcorner}d)_{ijk}
=\mathcal T_{[ij}{}^p d_{|p|k]}$; the displayed factor $3$ is outside
this normalized bracket.  Equations (3.3)--(3.6) contain no source
independent of $\mathcal R_{\rm bulk}$.  Substituting (2.3) converts them
to equations for $\Xi$ with terms linear in
$\mathcal T,D\mathcal T$ and coefficients $\Gamma,D\Gamma$.

The characteristic incidence is triangular at principal order.  Since
$\mathcal T_{3i}=0$, the $(3,4,a)$ and $(3,1,2)$ components of (3.3)
transport $\mathcal T_{4a}$ and $\mathcal T_{12}$ along $e_3$.
For internal pair $\mathcal P$, the same components of (3.6) transport
$\mathcal K_{4a}^{\mathcal P},\mathcal K_{12}^{\mathcal P}$ along
$e_3$, because the $3q$ components are main rows.  For internal pair
$\mathcal Q$, use $(4,3,a)$ and $(4,1,2)$ to transport
$\mathcal K_{3a}^{\mathcal Q},\mathcal K_{12}^{\mathcal Q}$ along
$e_4$.  All terms not displayed are lower-order residuals or the
$\mathscr H(\mathcal B)$ source; the $\mathcal T\mathbin{\lrcorner}d$
term is lower order and homogeneous.

This proves a block-triangular transport statement:
$$
 \mathcal B=0
 \quad\Longrightarrow\quad
 (\mathcal T,\mathcal K)\text{ obey homogeneous generator transports}.
 \tag{3.7}
$$
It does **not** prove $\mathcal B=0$ or copy equality.  V76--V78 check the
source-versus-geometric curvature correction and representative frozen
principal components of (3.3) and (3.6); the analytic identities are
(3.2) and (3.5).

## 4. The unresolved coupled Bianchi/copy principal block

Let $\mathfrak E_{A.36-A.39}(F)=0$ denote the sixteen source rows after
09.(1.4).  Since the diagonal system is exactly the component divergence
of $d$, there are fixed algebraic incidence matrices $S,A_C^\mu$ and a
lower-order matrix $M_C(F)$ such that, after imposing the reduced rows,
$$
 S\mathcal B+A_C^\mu(F)D_\mu^0\mathcal C_{\rm copy}
 +M_C(F,D^0F)\mathcal C_{\rm copy}=0.
 \tag{4.1}
$$
$S$ is invertible between the sixteen divergence components and the
A.36--A.39 tensor rows.  Equation (4.1) is homogeneous in the enlarged
residual ideal, but it is not an evolution equation for copies alone.

The obstruction is already visible in the flat frozen principal system.
At a slice where $\mathcal C_{\rm copy}=0$, calculation 09.(1.7) gives
$$
 \partial_t\mathcal C_\beta
 =\operatorname{div}\alpha-D\rho-{}^\star D\sigma
  -2\partial_r\beta,\qquad t=\xi+\eta,\quad r=\eta-\xi.
 \tag{4.2}
$$
The right side is a spatial/differential Bianchi residual, not a multiple
of $\mathcal C_{\rm copy}$.  Through (3.6) it is a derivative of the
curvature-definition residual.  Therefore neither a copy-only Gronwall
argument nor the initial ODE system 10.(4.8) can propagate (2.6).

To close (0.1), one must now perform all of the following in the fixed
printed convention:

1. expand all sixteen versions of (4.1), not only (4.2);
2. use the eighteen characteristic components of (3.6) to replace every
   spatial Bianchi residual by the matching derivative of $\mathcal K$;
3. assemble the joint principal matrices for
   $(\mathcal K_{\rm con},\mathcal B,\mathcal C_{\rm copy})$ and show that
   no derivative outside (2.9) remains;
4. construct a positive symmetrizer with nonnegative complementary
   $\xi$/$\eta$ fluxes.

The source's A.41/A.43 symmetrize the **field** Bianchi system.  They do
not, without the row calculation above, symmetrize this residual coupling.
No such joint matrix or symmetrizer is present in calculations 08--10 or
in the cited source.  This calculation therefore stops here rather than
writing
$$
 A_{\rm sub}^\xi\partial_\xi\mathcal R
 +A_{\rm sub}^\eta\partial_\eta\mathcal R
 +A_{\rm sub}^A D_A^0\mathcal R=M\mathcal R
 \tag{4.3}
$$
without having defined and checked its matrices.

**No nonhomogeneous lower-order obstruction has been found.**  The Cartan
identities show that all such terms belong to the ideal generated by
(2.9).  The current stop is the unproved first-order principal closure and
positive-flux statement, which is essential for finite-regularity
uniqueness.

## 5. Fixed-reference and finite-regularity boundary

If (4.3) is established, the conversion must repeat 09.2 for the residual
bundle, not reuse a moving component norm silently.  For an identification
$T_{\rm sub}$,
$$
 T_{\rm sub}\nabla_\mu T_{\rm sub}^{-1}=D_\mu^0+C_\mu^{\rm sub},
 \tag{5.1}
$$
and with symmetrizer $H_{\rm sub}$ and density $j\nu_0$ the current is
$$
 J^\mu=\mathcal R^*jH_{\rm sub}A_{\rm sub}^\mu\mathcal R.
 \tag{5.2}
$$
Its divergence contains $D^0A_{\rm sub}$, $D^0H_{\rm sub}$,
$\partial j$, and
$A_{\rm sub}C^{\rm sub}+(C^{\rm sub})^*A_{\rm sub}$, exactly as
09.(2.2)--(2.4).  They would be lower order if the regular frame,
coefficient and inverse margins are bounded.

At the residual flux level a first-order symmetric-hyperbolic system
normally has no derivative loss after the coefficients are supplied at
the required higher order.  That observation is **not** a derivation of
$\ell_{\rm sub}=0$ for the unresolved matrices.  No value of
$\ell_{\rm sub}$ is assigned in this stage.

## 6. Incoming zero residual

The correct incoming statement is characteristic, not a demand that every
transverse residual component be prescribed on both sheets.

* The $e_3$-transported $\mathcal T$ and $\mathcal P$ curvature constraints
  have data on $N_+$, where their indices are tangential to
  $(e_4,e_a)$.
* The $e_4$-transported $\mathcal Q$ curvature constraints have data on
  $N_-$, where their indices are tangential to $(e_3,e_a)$.
* The A.36--A.39 characteristic allocation supplies the complementary
  incoming Bianchi/copy fluxes on the two sheets.

The exhaustive ledger and 10.1--4 show that these incoming residuals and
all their corner values vanish.  Quantitatively, for the filled completion
$$
 \widetilde C_{\rm init}:\mathcal D^{k+6}\longrightarrow J^k,
 \tag{6.1}
$$
the first-order residual traces vanish in the corresponding
$I_{\rm sub}^{k-1}$ sense:
$$
 \boxed{\mathcal R_{\rm bulk}|_{X_{\rm in}}=0.}
 \tag{6.2}
$$
The shift from $J^k$ to a first-order $I_{\rm sub}^{k-1}$ trace is a typing
statement, not a claimed loss in a bulk energy theorem.  Zero initial data
cannot by itself imply zero in the cell until (0.1) and uniqueness close.

## 7. Conditional metric reconstruction lemma

This lemma identifies what would follow from vanishing residuals; it does
not assert that they vanish for the reduced solution.

**Lemma.**  Let the coordinate coefficients $e_i{}^\mu$ be $C^1$ and form
an invertible frame on a connected cell, let $\Gamma$ be continuous and
metric-antisymmetric, and suppose $\mathcal T=0$ distributionally.  The
dual coframe $\theta^i$ exists uniquely and
$$
 g= g_{ij}\,\theta^i\otimes\theta^j
 \tag{7.1}
$$
is the unique Lorentz metric for which the given frame has the prescribed
constant inner products.  The connection $\Gamma$ is its Levi-Civita
connection.  If in addition $\Gamma$ has one weak derivative,
$d\in L^1_{\rm loc}$ and $\mathcal K=0$, then
$R(g)=d$ distributionally; since $d$ is tracefree Weyl type,
$\operatorname{Ric}(g)=0$ distributionally.  With $C^2$ frame/$C^1$
connection regularity this is a classical vacuum metric.

**Proof.**  Invertibility gives the dual coframe and (7.1) algebraically,
so existence and uniqueness need no further Frobenius integration.
Metric antisymmetry gives $\nabla g=0$.  Equation $\mathcal T=0$ gives
zero torsion; uniqueness of the metric-compatible torsion-free connection
identifies $\Gamma$ with Levi-Civita.  Equation $\mathcal K=0$ then gives
$R(g)=d$, and contraction gives zero Ricci because the Weyl type was imposed
algebraically.  The fixed coordinate/gauge entries identify the declared
framing. $\square$

Thus the geometric reconstruction itself causes no additional derivative
loss beyond the regularity needed to interpret curvature.  Its application
is conditional on the missing propagation theorem.

## 8. Linearized residuals and tangent boundary

Differentiate the residual definitions (2.1)--(2.6).  If a nonlinear
subsidiary equation (4.3) were proved, its linearization would be
$$
 L_{\rm sub}\,\delta\mathcal R
 =M\,\delta\mathcal R+(\delta M)\mathcal R.
 \tag{8.1}
$$
On an Einstein background $\mathcal R=0$, this is homogeneous.
The differentiated initial construction 10.(4.11)--(4.12) and the ledger
give
$$
 \delta\mathcal R|_{X_{\rm in}}=0
 \tag{8.2}
$$
for every completed project tangent.

Equations (8.1)--(8.2) do **not** yet prove that the tangent residual stays
zero, because the finite-regularity uniqueness theorem for (4.3) is the
missing lemma (0.1).  Tangent surjectivity additionally requires a framed
finite-regularity gauge-slice/exhaustion theorem and is not a consequence
of residual uniqueness.  Therefore
$\Omega_{\rm char}^{\rm intr}$ retains the constructed-image/restriction
scope of calculation 07; it is not upgraded to the full framed linearized
tangent space.

## 9. Reset and nonlinear remainder gate

Since Sections 4--5 do not establish bulk Einstein identification, the
outgoing reduced fields cannot yet be used as geometric input to the
moving-cut formulas of 10.7.  The bounded map
$$
 G_{\rm reset}:I_{\rm out}^K\longrightarrow
 \mathcal D_{\rm out,project}^k
 \tag{9.1}
$$
is not attempted and no $\ell_{\rm reset}$ is assigned.  For the same
reason, the exact evolution remainder 08.(5.2) is not reopened.

## 10. Required Stage-4.4 verdicts

1. **SOURCE_ROW_LEDGER:** exhaustive for all 41 evolved source component
   rows, every hard gauge/type relation and all six A.35 copy constraints.
2. **Direct plus-sheet Bianchi:** all five direct A.36a/A.37a/A.38a--b/
   A.39a substitutions agree with the mirror formulas, including
   $D\log c$, $O_4$, lapse and raw/covariant conversion.
3. **Bulk residual:** the complete vector (2.9) is defined.  A closed
   homogeneous first-order subsidiary system is **not proved**; (3.3)--(3.6)
   close the universal torsion/curvature identities, while (0.1) remains.
4. **Finite regularity:** no well-posed bulk subsidiary theorem and no
   $\ell_{\rm sub}$ are established.
5. **Reduced solution $\Rightarrow$ vacuum metric:** not proved in the cell.
   The reconstruction lemma is conditional on $\mathcal R_{\rm bulk}=0$.
6. **Completed tangent:** incoming linearized residuals vanish, but bulk
   linearized Einstein identification and tangent surjectivity are not proved.
7. **Presymplectic scope:** not upgraded; it remains the intrinsic
   restriction/constructed-image identity.
8. **Moving-cut/project reset:** not attempted past the gate; no loss.
9. **$P_{\rm cell}^k$:** not proved and not declared $C^1$.  The exact first
   lemma is (0.1), followed by its finite-regularity energy theorem; only
   then may 10.(7.6) and 08.(5.2) be reopened.
10. **$P_{\rm rect}^{s,r}$:** conditional and unchanged.  No finite-grid
    continuation is begun.

**Verified:** source-row exhaustiveness; direct plus-sheet substitutions;
the source/geometric curvature correction and representative Cartan/Bianchi
principal identities.

**Assumptions:** four-dimensional vacuum, $g_{34}=-2$, fixed 09.(1.4)
copy convention, metric-antisymmetric connection type, Weyl algebraic type,
regular invertible frame and positive characteristic margins.

**Not verified:** the joint residual principal matrices/symmetrizer,
finite-regularity uniqueness, bulk or linearized Einstein identification,
tangent surjectivity, reset, one-cell $C^1$, rectangle continuation or any
quantum claim.
