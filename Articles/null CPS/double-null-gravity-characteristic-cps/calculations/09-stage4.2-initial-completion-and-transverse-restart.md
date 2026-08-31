# 09 - Stage 4.2: initial completion and transverse restart

**Stage 4.3 update:** calculation 10 closes the Bianchi/initial subsidiary
gate below, constructs $C_{\rm init}$ with loss five in the free-slot
$I^k$ norm (six in the full-cross $J^k$ norm), and proves the pure-generator
loss law $2r+1$ and local reduced restart. Its Sections 7--8 give the current
reset/bulk-Einstein stop line. The Stage-4.2 status statements below are
retained as a historical record, not the current verdict. No cell/rectangle
upgrade follows.

## 0. Verdict and scope

**Proved here:** the precise full-equation copy relabelling; the
fixed-reference energy conversion; closure and quantitative estimates for
the two mixed second-fundamental-form transports; a free-slot preparation
map; and an exact-reduced-solution transverse difference estimate with loss
three under the explicit bounded-background assumptions below.

**Not proved:** the constrained initial completion $C_{\rm init}$, the
full incoming/outgoing restart class, linearized Einstein existence, or
$P_{\rm cell}^k$. The first remaining initial lemma is
$C_{\rm Bianchi}$ in Section 5. It is an identity/compatibility obligation,
not a curvature datum that may be assigned freely. $P_{\rm rect}^{s,r}$
remains conditional. No finite-grid continuation or quantization is used.

The distinction between a free-slot preparation map and a constrained
completion is essential: the former has a loss-five bound below; that is
**not** an assigned loss for the unfinished $C_{\rm init}$.

## 1. Source identification and the copy permutation

Primary source:
[Cabet--Chruściel--Tagne Wafo, arXiv:1406.3009v2](https://arxiv.org/pdf/1406.3009v2),
Sec. 2, (3.34)--(3.42), (3.66)--(3.74), Theorem 3.9,
(3.98)--(3.104), Sec. 5.1, and Appendix A.4.
The v2 PDF and its TeX source were reopened; PDF pages 52, 67 and 68
were visually checked. The source coordinates are renamed
$(u_{\rm source},v_{\rm source})=(\xi,\eta)$; on the incoming cross
$(\xi,\eta)=(v_{\rm project},u_{\rm project})$. Source sheet names
$N^\pm$ are not project sheet names.

Let $F_R$ denote the Appendix differential-row convention formerly used in
08. Let $P$ fix every frame/connection slot and $\alpha,\underline\alpha$
and exchange all four entire tensor pairs
$$
 \beta\leftrightarrow\mathring\beta,\quad
 \underline\beta\leftrightarrow\mathring{\underline\beta},\quad
 \rho\leftrightarrow\mathring\rho,\quad
 \sigma\leftrightarrow\mathring\sigma.                    \tag{1.1}
$$
Then $P^{-1}=P=P^*$ in the component norm. Put $F_P=PF_R$.
The allocation used from Stage 4.2 onward is exactly the printed
(5.12)--(5.13) allocation:
$$
\begin{split}
 \phi_P={}&(e_i,\Gamma_i{}^a{}_b,\Gamma_i{}^a{}_3;
 \alpha,\mathring{\underline\beta},\rho,\sigma,\mathring\beta),\\
 \psi_P={}&(\Gamma_i{}^a{}_4,\Gamma_i{}^3{}_3;
 \underline\beta,\mathring\sigma,\mathring\rho,\beta,\underline\alpha).
                                                               \tag{1.2}
\end{split}
$$
Dependent/zero connection components remain eliminated as in 08.(1.2).
A row-by-row dictionary, including differential directions, is
$$
\begin{array}{c|c|c}
 &e_3\text{ row in printed convention}&e_4\text{ row in printed convention}\\
 A.36&\mathring{\underline\beta}&\underline\alpha\\
 A.37&(\rho,\sigma)&\underline\beta\\
 A.38&\mathring\beta&(\mathring\rho,\mathring\sigma)\\
 A.39&\alpha&\beta
\end{array}                                                     \tag{1.3}
$$

There is a genuine notational inconsistency if one reads the printed lists
and Appendix equations literally with the same symbols. The printed lists
alone do not define a second complete nonlinear operator. In particular,
the previous assertion that an exchange of the slot lists suffices while
leaving every displayed RHS unchanged is withdrawn.

Here is the precise, unambiguous resolution. Let $(A_R,G_R)$ be the
Appendix equations with **exactly the displayed** undifferentiated copies,
plus (5.3a)--(5.3b), where the curvature extractor $d_R(F_R)$ uses the
Appendix uncircled physical fields. In the printed convention use
$$
 A_P^\alpha(F)=P A_R^\alpha(PF)P,\qquad
 G_P(F)=P G_R(PF),\qquad d_P(F)=d_R(PF).                \tag{1.4}
$$
This is a complete prescription for every row and every occurrence of a
copy, not a new freely chosen RHS. It gives
$$
 A_P^\alpha(PF_R)=P A_R^\alpha(F_R)P^{-1},\qquad
 G_P(PF_R)=P G_R(F_R).                                 \tag{1.5}
$$
Proof: $P$ is constant and commutes with differentiation; substitute
$F_R=PF_P$ in each source equation and multiply its row vector by $P$.
Frame coefficients $c,b,E$ are fixed by $P$. Algebraic connection terms
commute with this substitution, while each curvature source becomes
$d_R(PF_P)$. This also covers all connection rows, not just the four
principal Weyl blocks.

For example, the $\alpha$ RHS in A.39b contains
$-3(\widehat\chi\rho+{}^\star\widehat\chi\sigma)$ and
$(4\eta-\underline\zeta)\widehat\otimes\beta$.
In (1.2) these occurrences become respectively
$\mathring\rho,\mathring\sigma,\mathring\beta$; the differentiated
$\mathring\beta$ becomes $\beta$. Retaining the old undifferentiated
$\rho$ gives the nonzero residual
$-3\widehat\chi(\mathring\rho-\rho)$ off the copy diagonal.
Thus **global relabelling is exact; a slot-only exchange is false**.
The authorial freedom in footnote 4 of p. 67 is not used to erase that
residual. No claim is made that the mutually inconsistent literal printed
lists and literal Appendix rows already constitute one off-diagonal system.

Let
$C(F)=(\mathring\beta-\beta,\mathring{\underline\beta}-\underline\beta,
\mathring\rho-\rho,\mathring\sigma-\sigma)$. Then
$$
 C(PF)=-C(F).                                           \tag{1.6}
$$
The constraint locus and every *actually derived full subsidiary system*
are therefore transported by (1.4), with the same uniqueness properties.
This does not prove a homogeneous propagation law for $C$ alone.
Indeed, in the flat frozen principal system put $t=\xi+\eta$,
$r=\eta-\xi$. At a slice on which $C=0$,
$$
 \partial_t C_\beta
 =\operatorname{div}\alpha-D\rho-{}^\star D\sigma
   -2\partial_r\beta.                                  \tag{1.7}
$$
An arbitrary angularly varying $\alpha$ with all other fields zero makes
this nonzero. The missing Bianchi/spatial constraints matter.
Cabet p. 55 explicitly avoids proving propagation of the entire doubled
Einstein constraint system and uses comparison with existing vacuum
metrics. Equation (1.4) preserves that exact source scope.

## 2. Fixed-reference bundle, density and energy lemma

This is a conversion lemma for sections of a fixed first-order field
bundle on a **given** regular background; it does not replace the Jacobian
of a nonlinear change of dependent variables by a frame matrix.

Write the source system for a section $U$ as
$A^\alpha\nabla_\alpha U=G$. Choose a bundle identification $T$ and put
$\widehat U=TU$. Relative to a fixed reference connection $D^0$,
$$
 T\nabla_\alpha T^{-1}=D^0_\alpha+C_\alpha,\quad
 \widehat A^\alpha=TA^\alpha T^{-1},\quad
 G_0=TG-\widehat A^\alpha C_\alpha\widehat U.             \tag{2.1}
$$
In matrices, $C_\alpha=T\Gamma_\alpha T^{-1}
-(\partial_\alpha T)T^{-1}-\Gamma^0_\alpha$.
The second term is the frame-change term; the first and last give the
source/reference connection difference. If $T$ depends on a background,
its *total* derivative is used. It is zeroth order in $U$, not necessarily
algebraic in that background without using its frame equations.

Let the source inner product in this identification be $H=H^*>0$ and
$d\mu=j\,d\xi\,d\eta\,\nu_0$, $j>0$. Set
$$
 B^\alpha=jH\widehat A^\alpha=(B^\alpha)^*,\qquad
 J^\alpha=\widehat U^*B^\alpha\widehat U .
$$
The exact fixed-density identity is
$$
 \operatorname{div}_0 J
 =2\widehat U^*jH G_0+
  \widehat U^*\operatorname{div}_0(jH\widehat A)\widehat U . \tag{2.2}
$$
The latter coefficient includes, with total derivatives,
$$
 jH D^0_\alpha\widehat A^\alpha
 +j(D^0_\alpha H)\widehat A^\alpha
 +(\partial_\alpha j)H\widehat A^\alpha,                 \tag{2.3}
$$
including the reference divergence of the vector index. There are no
missing density or symmetrizer terms. If one keeps the covariant RHS $TG$
instead of $G_0$, the extra coefficient is
$$
 \operatorname{div}_0 B
 -\sum_\alpha(B^\alpha C_\alpha+C_\alpha^*B^\alpha).
                                                               \tag{2.4}
$$
Equations (2.2) and (2.4) are identical scalar identities. Compatibility
of the source connection with its metric recovers source (2.5).

In a local orthonormal null frame, A.42 gives the weight
$\frac12|T_{\rm STF}|^2$; its two independent components have Euclidean
norm. The vector/scalar blocks are also Euclidean. For the other
transport slots one may choose a fixed positive reference norm, since
their principal angular diagonal is zero. Thus the Cabet component
system permits $H=H_0$ fixed. Sec. 2 allows a smooth positive measure:
choosing $j=1$ is permitted; it is not an assertion that the physical
volume equals the reference volume. If physical volume is desired,
$\sqrt{|\det g|}\,d^4x=(2\Omega/c)\,d\xi d\eta\nu_0$ in (08.1.1),
so $j=2\Omega/c$ and its derivatives must be retained.

For global bookkeeping choose fixed local reference dyads with
$SO(2)$ transitions $R_{ij}(x)$, apply the positive metric square root on
$\xi=0$, and parallel-transport in the source $e_3$ rotation gauge.
The transitions remain $R_{ij}(x)$ because $e_3R_{ij}=0$.
Their derivatives in connection-component transformations are linear in
the frame coefficients; adjoining $(e,\Gamma)$ gives fixed linear
transition functions, or equivalently subtract a reference connection
to obtain tensorial connection differences. No global dyad is assumed.
A finite partition of unity adds only bounded reference-derivative terms.
These, and the projected cut connection in A.36--A.39, are included in
$G_0$ of 08; they cannot be omitted by changing the symbol for a derivative.

On a regular set impose eigenvalue bounds
$\mu I\le H\le\mu^{-1}I$, $\mu\le j,c\le\mu^{-1}$, bounds on
$T,T^{-1}$ and their angular derivatives through $k$, and
$W^{1,\infty}$ bounds on all coefficients used in (2.2).
For each commuted section the source and reference fluxes then satisfy
$$
 C^{-1} E_{0,k}\le E_{{\rm source},k}\le C E_{0,k}.       \tag{2.5}
$$
For zeroth order this is the eigenvalue inequality. For order $k$, expand
$D^{0,I}(TU)=T D^{0,I}U+
\sum_{0<J\le I}{I\choose J}(D^{0,J}T)D^{0,I-J}U$ and use the
Sobolev product inequality; apply the same expansion to $T^{-1}$ for
the reverse bound. These bounds depend on reference geometry and the
displayed derivatives, not solely on pointwise ellipticity.

Consequently 08.(4.1) means $\operatorname{div}_0$, with the corrected
$G_0$. In a nonorthonormal convention it is (2.2), not an unweighted
Euclidean formula. Weighted integration with
$e^{-\lambda(\xi+\eta)}$ absorbs all additional bounded zeroth-order
terms. Equations 08.(4.2)--(4.3) remain valid for (1.4), with constants
also depending on the reference-conversion bounds. They remain estimates
for already existing reduced solutions, not a data-dependent existence
or Einstein-equivalence theorem.

## 3. Elimination of the mixed curvature source

Here $X_{ab}=\chi_{ab}$, $H_{ab}=\underline\chi_{ab}$ are source
orthonormal cut components, and $D$ is the cut Levi-Civita connection.
The letter $H$ in this section is not the symmetrizer of Section 2.
Write $\vartheta=\operatorname{tr}X$, $\underline\vartheta=\operatorname{tr}H$,
and $K_q$ for Gaussian curvature in the convention
$R[q]_{1212}=K_q$. Source $\sigma$ below is Weyl curvature, never the
project shear. Use $\epsilon_{12}=1$, $g_{34}=-2$ and source
$\Gamma_{ijk}=g_{j\ell}\Gamma_i{}^\ell{}_k$.

From A.8a,
$\nabla_a e_b=D_a e_b+\frac12X_{ab}e_3+\frac12H_{ab}e_4$.
Insert this into (5.3b), antisymmetrize the derivative indices, and
contract the tangential Gauss equation. Source A.12e--f then give
$$
\begin{split}
 \rho&=-K_q-\tfrac12(\vartheta\underline\vartheta-X:H),\\
 \sigma\epsilon_{ab}
 &= (d\zeta)_{ab}+\tfrac12(X_{ac}H_b{}^c-X_{bc}H_a{}^c),\\
 d^a{}_{4,3b}&=\rho\delta^a_b+\sigma\epsilon^a{}_b .
\end{split}                                                     \tag{3.1}
$$
For the second identity, compute
$R^3{}_{3ab}=d\zeta_{ab}+
(\Gamma_a{}^3{}_c\Gamma_b{}^c{}_3-
 \Gamma_b{}^3{}_c\Gamma_a{}^c{}_3)$;
A.12c and $g^{34}=-1/2$ give $R^3{}_{3ab}=\sigma\epsilon_{ab}$.
For the last identity, use pair exchange and antisymmetry on
$d^a{}_{3b4}=-\rho\delta^a_b+\sigma\epsilon^a{}_b$.
Thus no mixed curvature component is independently prescribed.

Let $\nu=\Gamma_3{}^3{}_3/2$; metric compatibility gives
$\Gamma_3{}^4{}_4=-2\nu$. Source gauge has
$\eta=\zeta$, $\underline\zeta=-\zeta$,
$\Gamma_3{}^a{}_b=0$, and $\Gamma_4{}^i{}_4=0$.
The full unsymmetrized form of 06.(8.11), with derivative index first, is
$$
 \partial_\xi X_{ab}
 =2D_a\zeta_b+2\zeta_a\zeta_b+
   \rho\delta_{ab}-\sigma\epsilon_{ab}
   -(HX)_{ab}-2\nu X_{ab}.                             \tag{3.2}
$$
The antisymmetric part vanishes by the second equation of (3.1).
Substitute its first equation and use the two-dimensional identity
$$
 \tfrac12(HX+XH)+\tfrac12
  (\operatorname{tr}H\operatorname{tr}X-H:X)I
 =\tfrac12\operatorname{tr}H\,X+\tfrac12\operatorname{tr}X\,H .
$$
The closed equation on $N_-$, where $\nu=0$, is
$$
 \boxed{\partial_\xi X+
 \tfrac12\underline\vartheta X+\tfrac12(\operatorname{tr}X)H
 =2D_{(a}\zeta_{b)}+2\zeta_a\zeta_b-K_q\delta_{ab}.}     \tag{3.3}
$$
Here $H,q,\zeta=\omega^{(-)}$ are already supplied by $C_{\rm pre}$,
and $X_0=2e^m B^+_0$. It is linear in the three components of $X$.

On $N_+$, $e_4=c\partial_\eta$, $c=2e^m$, $b=0$.
The commutator $[e_4,e_a]$ fixes
$$
 t_a:=\underline\eta_a=-\zeta_a-D_a\log c=\omega^{(+)}_a,\qquad
 \zeta=-\omega^{(+)}-Dm .                              \tag{3.4}
$$
Since $dt=-d\zeta$, the mirrored unsymmetrized equation has curvature
$\rho\delta_{ab}+\sigma\epsilon_{ab}$ and product $-(XH)_{ab}$.
Its symmetric form is
$$
 \boxed{\not\nabla_4 H+
 \tfrac12\vartheta H+\tfrac12(\operatorname{tr}H)X
 =2D_{(a}t_{b)}+2t_at_b-K_q\delta_{ab},\quad H_0=B^-_0.} \tag{3.5}
$$
The cut rotation in $\not\nabla_4$ is retained. In an algebraic dyad on
$N_+$ it is a known antisymmetric matrix determined by $q,E$ and their
$\eta$ derivatives. It adds linear coefficient terms to (3.5).
Equations (3.3),(3.5) close **$C_{\rm mix}$**, not all initial constraints.

### 3.1 Quantitative transport, differential and remainder

Let $j\ge3$, $s\ge\max(12,j+4)$, and take a bounded positive-margin
neighborhood in 06's actual $\mathcal D^{s,\rm fr}_{\rm char}$.
Use $C_{\rm pre}$ at index $j+1$. Its proved estimate provides
$q,B$ in $\mathfrak H^{j+2}$ and $\omega,D[q]-D^0$ in
$\mathfrak H^{j+1}$. Express curvature by
$$
 R[q]^a{}_{bcd}=R[h_0]^a{}_{bcd}
 +D_c^0K^a{}_{db}-D_d^0K^a{}_{cb}
 +K^a{}_{ce}K^e{}_{db}-K^a{}_{de}K^e{}_{cb}.
$$
Here $K=D[q]-D^0$; thus $K_q$ is in $\mathfrak H^j$ and
$$
 \|\Delta K_q\|_{\mathfrak H^j}
 +\|\Delta(D\omega)\|_{\mathfrak H^j}
 \le C\|\Delta d\|_{\mathcal D^{j+4}}.                 \tag{3.6}
$$
This follows by expanding each product and
$\Delta(q^{-1})=-q_1^{-1}(\Delta q)q_2^{-1}$.
For $j\ge2$, $\|uv\|_{H^j}\le C_j\|u\|_{H^j}\|v\|_{H^j}$;
all inverse powers have the uniform positive margin.
The reference-to-transport dyad rotation solves a matrix ODE with the
same bounds, so it costs no extra angular derivative.

In either sheet trivialization write $x'=L(d)x+f(d)$ for the three
symmetric components; divide (3.5) by $c$, retaining its known rotation.
Then
$$
 \Delta x' =L_1\Delta x+\Delta L\,x_2+\Delta f,\quad
 \|\Delta x(\lambda)\|_j
 \le \|\Delta x_0\|_j+C\!\int_0^\lambda\!
  (\|\Delta x\|_j+\|\Delta L\|_j\|x_2\|_j+\|\Delta f\|_j)dt .
$$
Iteration of the integral inequality gives
$$
 \|\Delta x\|_{C H^j}\le e^{CL}
  [\|\Delta x_0\|_j+CL(\|\Delta L\|_{C H^j}
                                  +\|\Delta f\|_{C H^j})].       \tag{3.7}
$$
For the generator derivatives use the explicit recursion
$$
 \partial_\lambda^{r+1}x
 =\sum_{p=0}^r {r\choose p}
    (\partial_\lambda^p L)\partial_\lambda^{r-p}x
    +\partial_\lambda^r f,\qquad r<j.                \tag{3.8}
$$
In the $H^{j-r-1}$ norm every product is bounded by the tame product
inequality, putting the factor with fewer total derivatives in
$L^\infty$; the two-dimensional embedding and the unused regularity
in (3.6) cover the lowest orders. Induction proves
$$
 \|C_{\rm mix}(d_1)-C_{\rm mix}(d_2)\|_{\mathfrak H^j}
 \le C\|d_1-d_2\|_{\mathcal D^{j+4}} .                \tag{3.9}
$$
This conservative loss four includes the half-order corner spaces;
no optimality is asserted. Linear ODE growth permits any fixed finite
sheet length on which the input coefficient bounds hold.

For a tangent $h$, define
$$
 (Dx[h])'=L Dx[h]+DL[h]x+Df[h],\qquad Dx[h](0)=Dx_0[h]. \tag{3.10}
$$
The inverse/product differentiation rules and (3.7) bound this operator
by $C\|h\|_{\mathcal D^{j+4}}$. Differentiating again gives
$$
 (D^2x[h_1,h_2])'=LD^2x+
 DL[h_1]Dx[h_2]+DL[h_2]Dx[h_1]+D^2L[h_1,h_2]x+D^2f[h_1,h_2].
$$
Each source is in the same norm by the preceding product bounds, so
$\|D^2x[h_1,h_2]\|_{\mathfrak H^j}\le C\|h_1\|\|h_2\|$.
Taylor's integral formula supplies a quadratic remainder with the
**same conservative loss four** in a local chart of the constrained
project data. None of these estimates asserts a bulk solution exists.

## 4. Minimal incoming class and the free-slot preparation

The reduced theorem does not ask for an off-shell spacetime completion.
Define $\mathcal I_{\rm reduced}^k$ to consist of the two free functions
$$
 d_R=(\phi_P|_{\xi=0},\psi_P|_{\eta=0})\quad\text{in 08.(2.2)},      \tag{4.1}
$$
together with the requirement that the complementary source transports
(3.100)--(3.101) exist on both prescribed initial segments with their
common corner values and regular margins. For the intended Einstein map,
require in addition the tangential (5.3) constraints, geometric gauge
identities and the copy equalities. This last constrained subset, not an
arbitrary doubled solution, is the target of $C_{\rm init}$.
Restart requires the corresponding generator jets; the source norm is not
merely a flux norm. Source Theorem 3.9 uses $k>(n+9)/2$, hence integer
$k\ge7$ for $n+1=4$; this is a reduced theorem threshold, not a guessed
project/rectangle threshold.

All physical curvature formulas in this section use the on-diagonal
names; (1.4) tells which slot stores them.

| Incoming item | $N_+$ preparation | $N_-$ preparation | Origin / remaining check |
|---|---|---|---|
| $q,B^\pm,\theta_\pm,\sigma^\pm$ | own sheet | own sheet | project profile, Raychaudhuri |
| normal connection | $t=\omega^+$, $\zeta=-t-Dm$ | $\zeta=\omega^-$ | Damour / algebra |
| opposite second form | $H$ from (3.5) | $X$ from (3.3) | $C_{\rm mix}$, fixed opposite corner value |
| free frame $e_i$ | $e_3=\partial_\xi$, $e_4=c\partial_\eta$, $E[q]$ | complementary, not prescribed freely | gauge |
| free $\Gamma_i{}^a{}_b$ | intrinsic cut connection, zero 3-rotation, known 4-rotation | complementary | frame/cut geometry |
| free $\Gamma_i{}^a{}_3$ | $H$, $2t$, zero 3-acceleration | complementary | mixed transport / gauge |
| free $\Gamma_i{}^a{}_4$ | complementary | $X$, $2\zeta$, zero 4-acceleration | mixed transport / gauge |
| free $\Gamma_i{}^3{}_3$ | complementary | $(\zeta_a,0,0)$ | affine minus gauge |
| $\alpha$ | intrinsic outgoing optical curvature | complementary Bianchi transport | no independent corner constant |
| $\underline\alpha$ | complementary Bianchi transport | intrinsic incoming optical curvature | no independent corner constant |
| $\beta,\underline\beta$ | Codazzi using $X,H,\zeta$ | Codazzi using $X,H,\zeta$ | one angular derivative |
| $\rho,\sigma$ | (3.1) | (3.1) | Gauss / normal curvature |
| each duplicated Weyl field | equal physical value in free slot | equal physical value in free slot | equality for complementary solution still to prove |

More explicitly, the Codazzi contractions in the source convention are
$$
\begin{split}
 \beta_b&=D_b\vartheta-D^aX_{ab}
                       +\vartheta\zeta_b-X_{ba}\zeta^a,\\
 \underline\beta_b&=D^aH_{ab}-D_b\underline\vartheta
                       -H_{ba}\zeta^a+\underline\vartheta\zeta_b,\\
 \alpha|_{N_+}&=-\not\nabla_4X-X^2,\qquad
 \underline\alpha|_{N_-}=-\partial_\xi H-H^2 .
\end{split}                                                     \tag{4.2}
$$
For example
$d_{ab c4}=D_aX_{bc}-D_bX_{ac}+\zeta_aX_{bc}-\zeta_bX_{ac}
=-\epsilon_{ab}{}^\star\beta_c$, which fixes the sign.
The traces of the last two equations vanish by the own-sheet affine
Raychaudhuri equation. Only the prescribed conformal profile supplies its
own extreme Weyl component. The opposite extreme requires transport,
not a free curvature history.

These formulas define a **free-slot preparation**
$C_{\rm free}:\mathcal D^{s,\rm fr}_{\rm char}\to I^k$, before imposing
the as-yet-unproved complementary compatibility. Applying (3.9) at $j=k+1$
and one angular derivative in (4.2) gives, for
$s\ge\max(12,k+5)$,
$$
\begin{split}
 \|\Delta C_{\rm free}\|_{I^k}
 &\le C\|\Delta d\|_{\mathcal D^{k+5}},\\
 \|DC_{\rm free}[d]h\|_{I^k}
 &\le C\|h\|_{\mathcal D^{k+5}},\\
 \|C_{\rm free}(d+h)-C_{\rm free}(d)-DC_{\rm free}[d]h\|_{I^k}
 &\le C\|h\|_{\mathcal D^{k+5}}^2 .                    \tag{4.3}
\end{split}
$$
Every operation is an explicit algebraic map, one differentiation, or
(3.10); its second derivative was bounded in Section 3.1.
No differentiability of an Einstein evolution is used.
The norm on the right is in a local constrained-data chart; a literal
linear segment of positive unimodular tensors need not remain unimodular.

## 5. Corner matching and the first unclosed initial lemma

The common $q_0$, $X_0=2e^mB^+_0$, $H_0=B^-_0$ and
$\zeta_0=-\widehat\omega-Dm/2$ agree by construction.
Both evaluations of (3.1) and of the first two equations of (4.2)
therefore agree at the corner, including their angular derivatives
at the regularity actually available. The two extreme corner values
are fixed by their respective own-sheet profiles and are initial values
for the opposite Bianchi transports. No equality of the two shears,
expansions, or extreme Weyl components is imposed. Initial copy values
agree because the same physical component is used.

These are algebraic corner constraints, not equality of all transverse
corner jets. To upgrade $C_{\rm free}$ to $C_{\rm init}$ one must prove:

**$C_{\rm Bianchi}$:** the complementary solutions of source
(3.100)--(3.101), with the prepared free data, agree with the geometric
constraint completion, including all copies, lapse/shift/rotation
relations and the corner jets required at the chosen finite order.

The two scalar Bianchi constraints on the affine $N_-$ can now be
closed explicitly. In the physical names A.37c is
$$
 \mathcal E_{\rho,-}:=
 \partial_\xi\rho+\tfrac32\underline\vartheta\rho
 +\operatorname{div}\underline\beta
 +\tfrac12\widehat X:\underline\alpha
 +\zeta\cdot\underline\beta=0 .                         \tag{5.1}
$$
To prove it, put $T=\operatorname{tr}H$, $A=\underline\alpha$ and use
$\dot H=-H^2-A$ in the parallel cut frame, (3.2), and the exact metric
curvature variation
$\dot K_q=-TK_q+D^aD^bH_{ab}-\Delta_qT$ for
$\partial_\xi q_{AB}=2H_{AB}$. Differentiate
$\rho=-K_q-(T\operatorname{tr}X-H:X)/2$ and substitute (4.2).
The double angular derivatives cancel with
$\operatorname{div}\underline\beta$; the $D\zeta$, $DT$, $DH$ and
quadratic $\zeta$ terms cancel with that divergence and
$\zeta\cdot\underline\beta$. Since $A$ is tracefree, the remaining
expression is exactly
$$
 T(K_q+\rho)+\tfrac12\operatorname{tr}(H^2)\operatorname{tr}X
       +\tfrac12 T(H:X)-H^2:X
 =-[H^2-TH+(\det H)I]:X=0 .
$$
The last equality is the two-dimensional Cayley--Hamilton identity.
Thus (5.1) is proved, not left as a residual assumption.

A.37b on the same sheet is
$$
 \mathcal E_{\sigma,-}:=
 \partial_\xi\sigma+\tfrac32T\sigma
 +\operatorname{div}{}^\star\underline\beta
 +\tfrac12 X:{}^\star A+\zeta\cdot{}^\star\underline\beta=0 .
                                                               \tag{5.2}
$$
Here $ {}^\star A_{ab}=\epsilon_a{}^c A_{cb}$.
For completeness let
$f=\epsilon^{ab}D_a\zeta_b$ and
$c_\sigma=\epsilon^{ab}X_{ac}H_b{}^c/2$, so $\sigma=f+c_\sigma$.
Damour in coordinate one-form components reads
$\dot\zeta=-\underline\beta-H\zeta$; in the parallel frame it is
$\dot\zeta=-\underline\beta-2H\zeta$.
Using the coordinate density to differentiate the curl gives
$$
 \dot f=-Tf-\operatorname{curl}\underline\beta
             -\epsilon^{ab}(D_aH_{bc})\zeta^c
             -\epsilon^{ab}H_{bc}D_a\zeta^c .          \tag{5.3}
$$
Differentiating $c_\sigma$ with (3.2) and $\dot H=-H^2-A$ gives
$\epsilon^{ab}D_{(a}\zeta_{c)}H_b{}^c+
 \epsilon^{ab}\zeta_a\zeta_cH_b{}^c
 -3Tc_\sigma/2-\epsilon^{ab}X_{ac}A_b{}^c/2$.
The antisymmetric $D\zeta$ contraction cancels $Tf/2$.
The Codazzi identity
$\epsilon^{ab}D_aH_{bc}-\epsilon^{ab}\zeta_aH_{bc}
={}^\star\underline\beta_c$
cancels the remaining $DH$ and quadratic torsion terms. What remains
is exactly minus the last three terms in (5.2). This proves (5.2).
V63 checks the curvature variation with xPert; V64 checks the final
scalar cancellations. The written tensor/density argument supplies the
analytic proof, not the regressions alone.

The **first remaining unproved identity at the end of Stage 4.2** was the middle vector row
A.38c on $N_-$:
$$
 \boxed{\mathcal E_{\beta,-}:=
 \partial_\xi\beta+T\beta-D\rho-{}^\star D\sigma
       -2\widehat X\cdot\underline\beta
       -3(\zeta\rho+{}^\star\zeta\,\sigma)=0 .}         \tag{5.4}
$$
Calculation 10.(2.7) now proves this residual is $-2R_{\rm Gauss}\zeta$,
hence zero for the prepared data, using (4.2) and the full tensor commutator.
Calculation 10.3--4 closes its mirrored/gauge/copy companions.
The original Stage-4.2 obligation was as follows:
here $\beta$ must be the Codazzi expression (4.2). One must expand its
generator derivative, including the derivative of the cut connection and
dyad, and prove (5.4), then the remaining vector/opposite-sheet constraints,
opposite-extreme transports and all gauge/corner jets. This round does
not close that entire hierarchy. No norm estimate for a nonzero residual
can replace its vanishing, and no curvature slot is assigned freely to
force it. Thus the loss-five bound (4.3) remains a $C_{\rm free}$ theorem,
not a quantitative $C_{\rm init}$ theorem.

The unreleased gauge variables make the distinction concrete.
On $N_-$ the frame equations include
$\partial_\xi c=-2\nu c=0$,
$\partial_\xi E=-HE$,
$\partial_\xi b^A=2(\zeta-\underline\eta)^aE_a{}^A$.
The normal commutator requires
$\underline\eta=-\zeta-D\log c$.
On $N_+$ the complementary equation determines $\nu$ rather than setting
it to zero away from the corner. The 4-rotation also has a complementary
connection equation. Their source curvature contractions and all
overlapping constraint equations must agree; they are not additional
freely specifiable project fields.

For comparison only,
[MSP 2205.15267v2](https://arxiv.org/pdf/2205.15267v2),
Definition 7.5, (122)--(124), requires common metric, normal connection,
opposite second forms and Ricci compatibility;
[MSP 2301.02722](https://arxiv.org/pdf/2301.02722),
Definition 4.6, (69)--(72), gives the covariant version.
The core matching above checks the corresponding algebraic part.
It does not supply the full $Y_\pm$ or all pulled-back Ricci constraints.
Theorem 4.17 assumes those constraints; Remark 5.6 restricts the
geometric theorem to a neighborhood of the intersection.
[Luk 1107.0898](https://arxiv.org/pdf/1107.0898), Definition 1 and
(8)--(11), is an own-sheet metric/Raychaudhuri comparison, not a proof
of (5.1) in this doubled convention.

## 6. Exact transverse systems: no second null derivatives left

Use the printed-convention system (1.4), including all reference terms
from Section 2. For this section only write $p=\phi_P$, $q=\psi_P$;
this $q$ is a field vector, not $q_{AB}$. Its precise normalized form is
$$
 \partial_\xi p=g(F)-K^A(F)D^0_Aq=:U(F,D^0F),\qquad
 \partial_\eta q=h(F)-v^A(F)D^0_Aq-L^A(F)D^0_Ap=:V(F,D^0F),
                                                               \tag{6.1}
$$
where $g=G_\phi$, $h=c^{-1}G_\psi$,
$v^A=c^{-1}b^A$, $K^A=A^A_{\phi\psi}$ and
$L^A=c^{-1}A^A_{\psi\phi}$.
The zero $\phi\phi$ angular diagonal and the scalar shift on $\psi$
follow from the actual source blocks, not a generic hyperbolic ansatz.
Fixed explicit coordinate dependence is allowed in every coefficient.

For one exact solution set $z=\partial_\eta p$, $y=\partial_\xi q$.
A subscript $p$ or $q$ on a coefficient means its Fréchet derivative
in that block; a comma denotes explicit coordinate differentiation at
fixed $F$. Direct differentiation and (6.1) give
$$
 \partial_\xi z=B_z z+f_z,\qquad
 (\partial_\eta+v^AD_A^0)y=B_y y+f_y,                    \tag{6.2}
$$
where, with angular indices summed,
$$
\begin{split}
 B_z z&=g_p[z]-K_p^A[z]D_A^0q,\\
 f_z&=g_q[V]+g_{,\eta}
       -(K_q^A[V]+K_{,\eta}^A)D_A^0q-K^AD_A^0V,\\
 B_y y&=h_q[y]-L_q^A[y]D_A^0p-v_q^A[y]D_A^0q,\\
 f_y&=h_p[U]+h_{,\xi}
       -(L_p^A[U]+L_{,\xi}^A)D_A^0p-L^AD_A^0U\\
    &\hspace{12mm}-(v_p^A[U]+v_{,\xi}^A)D_A^0q .
\end{split}                                                     \tag{6.3}
$$
All highest-order terms are exposed by
$$
\begin{split}
 D_A^0U&=D_A^0g-(D_A^0K^B)D_B^0q-K^BD_A^0D_B^0q,\\
 D_A^0V&=D_A^0h-(D_A^0v^B)D_B^0q-v^BD_A^0D_B^0q\\
 &\quad -(D_A^0L^B)D_B^0p-L^BD_A^0D_B^0p .
\end{split}                                                     \tag{6.4}
$$
Derivatives of coefficients here are total angular derivatives.
$D^0$ is null-coordinate independent. Sorting $D_A^0D_B^0$ adds
only its fixed curvature. In particular the alleged unbounded
$\partial_\eta^2q$ and $\partial_\xi^2p$ have been removed, not assumed
controlled. The highest differentiated unknown in $f_z,f_y$ is $D^{0,2}F$.

For **two exact solutions**, write $W=F_1-F_2$,
$Z=z_1-z_2=\partial_\eta W_\phi$ and
$Y=y_1-y_2=\partial_\xi W_\psi$. Subtract (6.2):
$$
\begin{split}
 \partial_\xi Z&=B_{z,1}Z+\Delta B_z\,z_2+\Delta f_z,\\
 (\partial_\eta+v_1^AD_A^0)Y
 &=B_{y,1}Y+\Delta B_y\,y_2+\Delta f_y
                         -\Delta v^AD_A^0y_2 .         \tag{6.5}
\end{split}
$$
This is a difference system, not the iteration equation.
For every coefficient $a(F)$ use
$\Delta a=\int_0^1Da(F_2+tW)[W]dt$.
Consequently $\Delta f$ has exactly the highest-order types
$$
 a_1D^{0,2}W,\quad
 \Delta a\,D^{0,2}F_2,\quad
 a_1D^0W\,D^0F_i,\quad
 \Delta a\,D^0F_2D^0F_2,                              \tag{6.6}
$$
and terms with fewer derivatives; $\Delta B$ has at most $D^0W$.
The last term of (6.5) requires one angular derivative of the background
$y_2$. It is not hidden in a bounded zero-order coefficient.

Source comparison: (3.34), (3.36)--(3.42) eliminate $\partial_v\psi$
and $\nabla_B\partial_u\phi$ and use $H^{m+2}$ for $f$ at $m=k-3$.
Equations (3.66)--(3.68) do the opposite derivative and use the same
loss. Their iteration index $k$ is **not** the incoming index $\ell$
of Theorem 3.9, where $k=\ell-1$. The theorem below is an independent
exact-solution estimate under specified high background bounds; it does
not assert that source existence at incoming index $k$ supplies those
background bounds.

## 7. Proved reduced transverse difference estimate

Let $k\ge5$. Assume two classical exact reduced solutions on the same
$Q=[0,a]\times[0,b]\times S$ satisfy 08.(3.1), the conversion bounds of
Section 2, and $\|d_i\|_{I^k}\le M_I$.
Assume sufficient smoothness for the following differentiations, or use
smooth approximation with the displayed bounds. Values and interpolation
segments lie in the same regular coefficient set. Constants depend on
$k,K,M,M_I,\mu,a_0,b_0,h_0$ for $a\le a_0,b\le b_0$.
No existence width or project-data completion is inferred.

First the angular-flux estimate gives
$$
 \|W\|_{X^k}\le C\|\Delta d\|_{I^k}.                   \tag{7.1}
$$
There is a further, **equation-dependent** pointwise bound
$$
 S_{k-1}(W):=\sup_{\xi,\eta}\|W\|_{H^{k-1}}
                    \le C\|\Delta d\|_{I^k}.          \tag{7.2}
$$
To prove it, the $\phi$ difference equation is an ODE in $\xi$ whose
source consists of $W_\psi,D^0W_\psi$ and bounded multiples of
$W_\phi$. At fixed $\eta$, Gronwall and Cauchy--Schwarz give
$$
 \sup_\xi\|W_\phi(\xi,\eta)\|_{k-1}
 \le C[\|\Delta d_\phi(\eta)\|_{k-1}
                 +\sqrt a\,\|W_\psi(\cdot,\eta)\|_{L^2_\xi H^k}].
$$
For $\psi$, divide by $c$ and take the $H^{k-1}$ energy along
$\partial_\eta+v^AD_A^0$ at fixed $\xi$. Integration by parts on
closed $S$ contributes $\operatorname{div}_0v$; the source is
$W_\phi,D^0W_\phi$ and bounded multiples of $W_\psi$.
Its bound is
$$
 \sup_\eta\|W_\psi(\xi,\eta)\|_{k-1}
 \le C[\|\Delta d_\psi(\xi)\|_{k-1}
                 +\sqrt b\,\|W_\phi(\xi,\cdot)\|_{L^2_\eta H^k}].
$$
Angular coefficient commutators obey
$\|[D^{0,I},v]D^0w\|_2
 \le C(\|Dv\|_\infty\|w\|_{k-1}
       +\|v\|_{k-1}\|Dw\|_\infty)$, and $k-1\ge4$.
Fixed curvature and partition terms are bounded at lower order.
This proves (7.2). There is still no bare embedding $X^k\hookrightarrow S_{k-1}$.

Set $m=k-3\ge2$. Apply the same ODE/transport energies to the
single-solution equations (6.2) at levels $m$ and $m+1$.
Their sources require $F_i$ through angular level $m+3=k$ and
the initial first generator derivatives through $H^{m+1}$;
these are supplied by the stated background and incoming bounds.
Product estimates and Gronwall therefore give
$$
 \sup_Q(\|z_i\|_{H^{m+1}}+\|y_i\|_{H^{m+1}})\le C.    \tag{7.3}
$$
This derives the needed high transverse background bounds; it does not
assume the desired difference bound.

For (6.5), commutation by $D^{0,I}$, $|I|\le m$, gives precisely
$$
 [D^{0,I},B]Z,\quad [D^{0,I},B]Y,\quad
 [D^{0,I},v_1^A]D_A^0Y,\quad
 v_1^A[D^{0,I},D_A^0]Y,                              \tag{7.4}
$$
in addition to differentiated displayed sources. The $B$ products are
bounded by the $H^m$ algebra inequality. For the transport commutator
one can use the coefficient bound in $H^{m+2}$ to put $Dv$ and its
lower derivatives in $L^\infty$; the top term is bounded by
$\|D^mv\|_{L^\infty}\|DY\|_2$. This also covers $m=2$ without
assuming $H^2\hookrightarrow W^{1,\infty}$.
Equations (6.6), (7.3) and the product inequality give
$$
 \|\Delta B_z z_2+\Delta f_z\|_m+
 \|\Delta B_y y_2+\Delta f_y-\Delta v D^0y_2\|_m
 \le C\|W\|_{m+2}\le C\|\Delta d\|_{I^k}.              \tag{7.5}
$$
Thus, with $\varepsilon=\|\Delta d\|_{I^k}$, the commuted energies satisfy
$$
 \partial_\xi\|Z\|_m^2\le C\|Z\|_m^2+C\varepsilon^2,\qquad
 \partial_\eta\|Y\|_m^2\le C\|Y\|_m^2+C\varepsilon^2 . \tag{7.6}
$$
The initial values are exactly
$Z(0,\eta)=\partial_\eta\Delta d_\phi$ and
$Y(\xi,0)=\partial_\xi\Delta d_\psi$, bounded in $H^m$ by $I^k$.
Integrating (7.6) proves
$$
 \boxed{\sup_Q(\|Z\|_{H^{k-3}}+\|Y\|_{H^{k-3}})
       +\mathcal T_{k-3}(W)
       \le C\|d_1-d_2\|_{I^k}.}                       \tag{7.7}
$$
Here $\mathcal T_j$ has exactly the two transverse flux terms and two
generator $C^0H^j$ terms specified in 08.(6.4), with $k-1$ replaced
by $j$. This is $R_\perp^k$ with the explicit **loss $\rho=3$** in
reduced incoming perturbations. It does not assign a loss from project data
to Einstein developments. It does not claim the old level $k-1$.

### 7.1 Outgoing traces and endpoints

For a Hilbert-valued $f\in H^1([0,L];H^j(S))$, choose a point where
$\|f(s)\|^2\le L^{-1}\|f\|_{L^2}^2$ and integrate $f'$:
$$
 \|f\|_{C^0H^j}^2
 \le \frac2L\|f\|_{L^2H^j}^2+2L\|f'\|_{L^2H^j}^2.    \tag{7.8}
$$
The integral representation supplies the continuous representative and
both endpoint values. Apply this to $W_\phi(a,\eta)$ and
$W_\psi(\xi,b)$ using (7.1),(7.7). For bounds uniform as $L$ shrinks,
use the stronger pointwise estimates (7.2),(7.7), which avoid $L^{-1}$.

Thus outgoing free slots have $C^0_{\rm generator}H^{k-3}$
representatives and their first generator derivatives in
$L^2_{\rm generator}H^{k-3}$; (7.7) even bounds these derivatives
pointwise for the classical solutions under consideration.
The undifferentiated corner values obey the stronger (7.2) bound.
No continuous endpoint values of the first derivative follow from
$H^1$ of the undifferentiated field alone, and no higher corner jets
or the complete source class $\cap_{j\le k}C^jH^{k-j}$ are claimed.
Full restart still requires complementary constraints and the gauge reset.

## 8. Linearization and the C1 gate

Equations (6.2)--(6.5) can be differentiated with respect to a family
parameter. If an actual linearized reduced solution exists, the same
proof gives its $X^k$, $S_{k-1}$ and $\mathcal T_{k-3}$ a priori
bounds and uniqueness. This is not existence for every project tangent:
only $DC_{\rm free}$, not $DC_{\rm init}$, has been constructed here.

The exact remainder remains 08.(5.2). Formula (7.7) is additional
information for estimating it, but the initial remainder must belong
to the constrained incoming class, and the linearized solution must
exist in that class. Those premises are not supplied by (4.3).
The Stage-4.2 priority order therefore stops at $C_{\rm Bianchi}$;
no $C^1$ one-cell theorem, tangent surjectivity, or numeric full
project-to-cell loss is declared. Source metric build-up and a direct
finite-regularity subsidiary theorem remain distinct possible routes.

## 9. Geometric reset audit

For an existing Einstein solution the outgoing cuts give $q_{AB}$,
both normal second forms and their normal product/torsion, together
with the actual coordinate speeds and label flow.
For a generator $n=\partial_t+v^A\partial_A$ on an outgoing sheet,
$\nabla_n n=\kappa n$, solve along its label flow
$$
 \frac{dx^A}{dt}=v^A,\quad
 \frac{d\log a}{dt}=-\kappa,\quad
 \frac{d\lambda}{dt}=a^{-1},\quad \ell=a n .           \tag{9.1}
$$
With $a(0,x)=a_0(x)>0$ and $\lambda(0,x)=0$,
$$
 a=a_0\exp(-\int_0^t\kappa),\quad
 L(x)=\int_0^{t_{\rm end}(x)}a^{-1}dt .                \tag{9.2}
$$
For the actual Cabet gauge $e_4$ is already affine:
$\Gamma_4{}^i{}_4=0$. It is the coordinate-speed generator
$n_+=c^{-1}e_4$ that has $\kappa_+=-n_+\log c$.
The other generator $n_-=e_3$ has $\kappa_-=2\nu$.
It would be incorrect to treat both normalized source generators as
having an unspecified nonaffinity.

For positive rescalings $n_\pm\mapsto a_\pm n_\pm$ at a common cut,
$$
 m_{\rm new}=m_n-\log a_+-\log a_-,\qquad
 \omega^{(\pm)}_{\rm new}=\omega^{(\pm)}_n+D\log a_\pm,\qquad
 \widehat\omega_{\rm new}
 =\widehat\omega_n+\tfrac12D\log(a_+/a_-).              \tag{9.3}
$$
Label and endpoint maps are the compositions with the flow of (9.1);
they cannot be set to identities if $b\ne0$.
Reversing generators for the future-corner convention of 07 changes
the oriented parameters and both second forms coherently.

Variable $L(x)$ is produced at fixed marked cuts. One can normalize to
a fixed affine interval $L_*$ by
$\lambda_*=L_*\lambda/L(x)$, at the price of the generator-constant
rescaling $\ell_*=(L/L_*)\ell$ and the corresponding changes (9.3).
This is allowed only if the new framing policy permits that normalization;
it does not preserve all old corner normalizations simultaneously.

For *supplied* regular coefficients along a fixed label flow,
the scalar parts have quantitative bounds. For $j\ge2$, bounded
$\kappa$ in $C H^j$, positive $a_0$, and fixed lengths,
the product inequality and the integral formula give
$$
 \|\Delta a\|_{C H^j}+\|\Delta\lambda\|_{C H^j}
 \le C(\|\Delta a_0\|_{H^j}+\|\Delta\kappa\|_{C H^j}). \tag{9.4}
$$
The inverse derivative identities prove the same for $L^{-1}$ when
$L\ge\mu_L>0$. Moving label flows additionally require Sobolev composition
and inverse-flow bounds; all needed outgoing jets and a uniform
diffeomorphism margin have not been obtained from (7.7).
Thus (9.4) is not a proved full reset from $\mathcal T_{k-3}$ into
$\mathcal I_{\rm reduced}^k$, let alone the project affine class.

## 10. Verification and eight-part verdict

**Verified:** V54--V59 Wolfram regressions for mixed matrix identities,
copy permutation and the nonzero unchanged-RHS diagnostic, the
density/symmetrizer product rule, and differentiated projected systems;
V60--V63 xAct contractions/variation for Gauss, mixed Ricci, Codazzi
and Gaussian curvature; V64 Wolfram checks of the two scalar Bianchi cancellations.
The analytic proofs, assumptions and derivative bookkeeping are written
above. Regressions are not PDE or full initial-constraint proofs.

**Assumptions:** four-dimensional vacuum; compact closed oriented cuts;
positive geometric/coordinate margins; fixed source gauge and consistent
copy substitution; bounded high-order backgrounds where explicitly stated.

**Not verified:** $C_{\rm Bianchi}$ and the full constrained initial
completion, an Einstein subsidiary/existence theorem at finite
regularity, full restart/reset, project tangent surjectivity, or $C^1$.

1. **Copy system:** a slot-only swap with unchanged RHS is false.
   Calculation 08 now uses the printed allocation and the exact full
   conjugation (1.4); it is rigorously equivalent to the displayed
   Appendix system. The source's literal list/row mismatch is disclosed.
2. **Fixed-reference formulation:** yes, under the explicit bundle,
   symmetrizer, density and coefficient margins of Section 2.
3. **$C_{\rm init}$:** not yet. $C_{\rm free}$ and its differential/
   quadratic remainder have conservative loss five; no full
   $\ell_{\rm init}$ is assigned.
4. **$C_{\rm mix}$:** yes, (3.3),(3.5), with conservative loss four
   and the same loss for its differential and quadratic remainder.
5. **$R_\perp^k$:** yes for two existing reduced solutions under
   Section 7, with loss three and bounded $I^k$ backgrounds.
6. **Restart traces:** first outgoing $C^0$ traces yes; the complete
   source restart class and corner jets no.
7. **$P_{\rm cell}^k$:** not proved. The first upstream remaining
   lemma is $C_{\rm Bianchi}$, starting with residual (5.4); full
   restart, Einstein linearized existence and the remainder also remain.
8. **$P_{\rm rect}^{s,r}$:** conditional; no finite-grid argument begun.
