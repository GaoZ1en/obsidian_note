# A genuine relative Fredholm determinant connection for the smooth LC connection

## Result

**The construction works over the smooth Fréchet manifold `Diff+(S1)/PSL2`, with Hilbert-completed fibers but smooth base parameters.** It does not require the homogeneous group operators to be norm continuous. The key facts are:

1. The intrinsic LC connection minus the ambient quotient projection connection is **smoothly trace class**, not merely Hilbert–Schmidt. Its nonsmoothing part has pseudodifferential order `−2`.
2. In admissible Grassmann frames, the LC connection itself has trace-class connection matrices. Applying the ordinary Fredholm determinant functor therefore produces a **genuine induced determinant connection**, including transitions and parallel transport; this is stronger than constructing an unrelated line with equal curvature.
3. At the critical full Sobolev norm of order `3/2`, the intrinsic metric and the reference quotient metric differ by a positive determinant-class operator. An exact Schwarzian identity proves this.
4. On the prescribed conventions, for the **quotient determinant**, dual to the relative tautological determinant,
   \[
   F_{\det}(e_m,e_n)
     =\frac{13}{6}(m^3-m)\,\delta_{m+n,0}.
   \]
   The dual line has the opposite sign.

The connection, determinant metric, trace identity, and curvature calculation below are smooth statements. Identifying them as a holomorphic/Chern construction requires the sharply stated complex-chart hypothesis in §10.

## 1. Scope, conventions, and independence

The input is the already-established smooth, `H`-equivariant, metric LC connection specified in the question. Its existence, metricity, and homogeneous transformation law are assumed, not reproved here.

Use the normalized ambient scalar product `∫dx/(2π)`, so the Fourier vectors `e_j=i exp(ijx) ∂x` have unit scalar coefficient norm. Set
\[
D=-i\partial_x,\qquad W=D^3-D,\qquad w_j=j(j^2-1).
\]
The group product is application order, `g⋆h=h∘g`, and
\[
U_gv=(v\circ g)/g',\qquad U_{g\star h}=U_gU_h.
\]
The infinitesimal representation is
\[
A_m e_j=(m-j)e_{m+j},\qquad A_X=\operatorname{ad}X,
\]
and `θ=g^{-1}dg` is the left Maurer–Cartan form for the application-order group, represented by `A_θ=U_g^{-1}dU_g`. Thus `dU_g=U_g A_θ` on smooth vectors.

Let
\[
\mathcal H_- =\overline{\operatorname{span}}\{e_j:j\leq1\},\qquad
\mathcal H_+=\overline{\operatorname{span}}\{e_j:j\geq2\},
\]
with projections `P_-`, `P_+`. The notation uses either `L2` or the full Sobolev completion below; the same Fourier splitting is orthogonal in both. Write
\[
W_g=U_g\mathcal H_-,\quad Q_g=\mathcal H/W_g,
\quad \Pi_g=\text{orthogonal projection onto }W_g,
\quad R_g=1-\Pi_g.
\]
The intrinsic smooth bundle is identified with `Q_g` by `[v]↦[U_gv]`. This is legitimate because **the actual subspace** `\mathcal H_-` is `H`-stable. It does not assert that `\mathcal H_+` is `H`-stable.

The base remains the smooth Fréchet quotient throughout. No result below asserts a smooth Hilbert Lie group of `H^(3/2)` diffeomorphisms, or a connection bounded bilinearly in an `H^(3/2)` norm on base tangent directions.

No parent report or other review file was opened. The main coefficient, trace-class difference, Schwarzian identity, and cyclicity estimates were derived before a later unsolicited collaborative parent message. That message suggested the block simplification in §6; it is explicitly treated as a checked collaboration, not as independent corroboration. All files created for this investigation are confined to this review directory; no existing note was edited.

## 2. The Grassmann map is smoothly smoothing although the group action is not norm smooth

For smooth `g`, the off-diagonal blocks of `U_g` relative to `\mathcal H_-⊕\mathcal H_+` are smoothing, smoothly in `g`.

Indeed, their Fourier matrix entries have the form
\[
\frac1{2\pi}\int_0^{2\pi}
  \frac{\exp(i(n g(x)-k x))}{g'(x)}\,dx.
\]
For opposite high-frequency signs the phase derivative is bounded below by a positive multiple of `|n|+|k|`. Repeated integration by parts gives arbitrary joint decay. The finitely many modes affected by the cut at `1` have the same smoothing conclusion. Differentiating with respect to smooth parameters adds polynomial frequency factors, absorbed by further integrations by parts. Bounds are locally uniform when `g'` is bounded away from zero and finitely many `C^r` seminorms are bounded.

Consequently
\[
U_gP_-U_g^{-1}-P_-\in\Psi^{-\infty}
\]
smoothly. Orthogonalizing this idempotent gives
\[
\Pi_g-P_-\in\Psi^{-\infty}
\]
smoothly. One may perform the orthogonalization with the usual bounded positive inverse; its nonconstant part remains smoothing. This proves, rather than assumes, that `g↦W_g` is a smooth map into the smoothing Grassmannian. It is constant on right `H`-cosets.

The component has index zero: it contains `W_e=\mathcal H_-`, and `Diff+(S1)` is connected. Hence locally one can choose admissible quotient frames
\[
F_\alpha:\mathcal H_+\longrightarrow R_g\mathcal H,
\qquad F_\alpha-\iota_+\in\Psi^{-\infty},
\]
allowing fixed finite-rank adjustments when a single graph chart is unavailable. These frames, unlike `U_g`-frames, are norm smooth on every fixed Sobolev completion.

## 3. The connection difference: the decisive order `−2` cancellation

On smooth vectors, the ambient quotient projection connection is
\[
\nabla^Q[s]=[d(R_gs)].
\]
In the homogeneous smooth frame `[U_gv]`, define
\[
A_\theta^+=P_+A_\theta P_+,
\qquad
B_g=P_+U_g^{-1}(d\Pi_g)U_gP_+.
\]
Direct differentiation gives
\[
\Gamma_Q^{\rm hom}=A_\theta^+-B_g.
\]
The term `B_g` is smoothly smoothing. This term cannot be discarded away from the identity; the positive complement is not `H`-stable and the ambient metric is not `G`-invariant.

Write `T_X=Λ_X-A_X^+`. From the supplied LC coefficients,
\[
T_m=0\quad(m\leq1),
\]
and for `m≥2`,
\[
\boxed{\quad
T_m e_j=-\frac{w_m(2j+m)}{w_{j+m}}e_{j+m},\qquad j\geq2.
\quad}                                                    \tag{3.1}
\]
The algebra behind this cancellation is
\[
(j-m)w_{j+m}-(j+2m)w_j=-w_m(2j+m).
\]
Thus
\[
\boxed{\quad \Delta:=\nabla^{LC}-\nabla^Q
        =T_\theta+B_g\quad}                              \tag{3.2}
\]
in homogeneous smooth frames.

For an explicit order statement, let
\[
a_X(x)=\sum_{m\geq2}w_m x_m e^{imx},\qquad X=\sum_mx_me_m.
\]
On the positive space,
\[
T_X=-W_+^{-1}P_+(M_{a_X}D+DM_{a_X})P_+.
\]
It is a smooth family of operators of order `−2`. For the critical intrinsic normalization `f_j=e_j/\sqrt{w_j}`, its shifted singular values are
\[
\frac{|w_m|(2j+m)}{\sqrt{w_jw_{j+m}}}.
\]
Since `w_j` is uniformly comparable to `j^3` for `j≥2`,
\[
\|T_m\|_1\leq C|w_m|\sum_{j\geq2}j^{-2}.
\]
Rapid Fourier decay of smooth `X` therefore gives absolutely convergent trace-norm sums, including parameter derivatives. The same conclusion holds in `L2` and in any fixed Sobolev norm. In particular,
\[
\operatorname{Tr}T_X=0,\qquad
\operatorname{Tr}\Delta=\operatorname{Tr}B_g.              \tag{3.3}
\]
The zero trace follows from the strictly positive shifts, not from a regularized trace.

### Why this remains smooth in genuine Hilbert charts

A first-order scalar differential operator satisfies
\[
[A_X^+,T]\in\Psi^{-2}\quad\text{if }T\in\Psi^{-2};
\]
the apparent order `−1` leading product cancels in the commutator. Cross-polarization errors are smoothing. Iterated commutators have the same order.

This yields a direct trace-norm argument without assuming a norm-smooth group action. The operators `U_g` and their inverses are locally bounded and strongly continuous on each fixed Sobolev space. Conjugation of a fixed trace-class operator is trace-norm continuous, by finite-rank approximation. On smooth vectors,
\[
\frac{d}{dt}(U_tTU_t^{-1})
   =U_t[A_{\theta_t},T]U_t^{-1}.
\]
The right side is trace-norm continuous and trace class, so integration on the dense smooth domain proves the identity in trace norm. Iteration gives smoothness; the required seminorm bounds follow from the order `−2` commutator estimates. The same argument applies to the quotient maps and their smoothing corrections.

Therefore (3.2) is a smoothly trace-class tensor in admissible Grassmann frames as well as in the smooth homogeneous identification. This is the analytic step needed to pass from a formal homogeneous calculation to an actual Hilbert-fiber bundle connection.

## 4. Tracing the covariant derivative: valid, but not by naïve cyclicity

It is generally **false** that the two products `A_X^+T_Y` and `T_YA_X^+` are trace class. They have order `−1` in dimension one. Nonetheless
\[
[A_X^+,T_Y]\in\Psi^{-2},\qquad
\operatorname{Tr}[A_X^+,T_Y]=0.                           \tag{4.1}
\]
Here is a direct mode proof of the nontrivial trace assertion.

For fixed modes, only `X=e_{-r}`, `Y=e_r`, `r≥2`, can produce a diagonal. Write
\[
t_r(j)=-\frac{w_r(2j+r)}{w_{j+r}},\qquad
q_r(j)=-(j+2r)t_r(j).
\]
For the cutoff `P_N` onto modes `2,…,N`,
\[
\operatorname{Tr}\big(P_N[A_{-r}^+,T_r]P_N\big)
  =\sum_{j=N-r+1}^{N}q_r(j),
\]
when `N` is sufficiently large. But
\[
q_r(j)=\frac{2w_r}{j}+\frac{r^2-r^4}{j^2}+O(j^{-3}),
\]
so this tail tends to zero. For modes with nonzero total shift the trace is zero directly. The trace-norm commutator bounds grow only polynomially in the mode labels; rapid smearing allows the sums and trace to be interchanged. This proves (4.1) for smooth smearings.

Products involving `B_g` are smoothing even after a first-order generator is applied; their ordinary trace cyclicity is valid. Trace cyclicity for products of two trace-class corrections is also ordinary trace cyclicity. It follows that
\[
\boxed{\quad
\operatorname{Tr}(d^{\nabla^Q}\Delta)=d\operatorname{Tr}\Delta,
\qquad
\operatorname{Tr}(\Delta\wedge\Delta)=0.
\quad}                                                   \tag{4.2}
\]
One must not replace this proof by writing `Tr(AT)=Tr(TA)`: those individual traces need not exist.

Equivalently, after passage to admissible Hilbert frames every connection coefficient used in the determinant construction is bounded and trace class, and the corresponding curvature calculation uses ordinary trace cyclicity. This bounded-frame argument and the explicit homogeneous cutoff check agree.

## 5. The actual determinant line and induced connection

The relative tautological determinant is the determinant line of the index-zero Fredholm map
\[
P_-:W_g\longrightarrow\mathcal H_-.
\]
Use the convention
\[
\operatorname{Det}(P_-|W_g)
  =\det\ker(P_-|W_g)\otimes\det\operatorname{coker}(P_-|W_g)^*.
\]
The desired line is its dual,
\[
\mathcal L=\operatorname{Det}(Q_g,\mathcal H_+)
          =\operatorname{Det}(W_g,\mathcal H_-)^{-1}.
\]
This is a relative Fredholm determinant line, not a hypothetical infinite exterior power.

For two admissible quotient frames, write
\[
F_\beta=F_\alpha t_{\alpha\beta},\qquad
 t_{\alpha\beta}=1+K_{\alpha\beta},\quad K_{\alpha\beta}\in\mathcal S_1.
\]
The determinant transition is
\[
\ell_\beta=\det_F(t_{\alpha\beta})\ell_\alpha.
\]
Let `Γ_Q,α` be the ambient quotient connection in that frame. It is smoothing because the frame and the projector vary by smoothing operators. Section 3 gives
\[
\Gamma_{LC,\alpha}=\Gamma_{Q,\alpha}+\Delta_\alpha\in\mathcal S_1
\]
smoothly. Define
\[
\boxed{\quad
\alpha_{LC,\alpha}=\operatorname{Tr}\Gamma_{LC,\alpha}
  =\alpha_{Q,\alpha}+\operatorname{Tr}\Delta_\alpha.
\quad}                                                   \tag{5.1}
\]
The ordinary determinant differentiation identity gives
\[
\alpha_{LC,\beta}
 =\alpha_{LC,\alpha}+d\log\det_F(t_{\alpha\beta}),
\]
so these are genuine connection forms on `\mathcal L`.

This is an induced determinant connection also at the level of parallel transport: along a curve in one chart, the equation `P'=-Γ_LC P` has `P-1∈\mathcal S_1`, and
\[
\det_F P(t)=\exp\left[-\int_0^t\operatorname{Tr}\Gamma_{LC}\right].
\]
The chart transitions are the same Fredholm determinants. Thus the construction is not justified merely by curvature matching.

Its curvature is
\[
F_{\mathcal L}
 =F_{\det Q}+d\operatorname{Tr}\Delta
 =\operatorname{Tr}R^{LC}.                               \tag{5.2}
\]
All terms are ordinary trace-class traces.

The construction is independent of choosing `L2` or a fixed Sobolev completion: the admissible changes are smoothing, and the finite-dimensional kernels/cokernels are smooth. The critical completion is needed for the intrinsic determinant **metric**, not for existence of the determinant **connection**.

## 6. Explicit graph formulas

Write the blocks in the order `\mathcal H_-⊕\mathcal H_+`:
\[
U_g=\begin{pmatrix}a&b\\c&d\end{pmatrix}.
\]
On a chart where `a` is invertible, set
\[
Z=ca^{-1},\qquad q_Z(v_-,v_+)=v_+-Zv_-,\qquad S=d-Zb.
\]
Then `W_g` is the graph of `Z`, and `S=q_ZU_g|_{\mathcal H_+}` converts the homogeneous frame to the quotient graph coordinate. Both `b` and `Z` are smoothing; `S` is a bounded invertible Toeplitz Fourier-integral operator plus smoothing. No determinant of `S` is taken.

For the chosen reference Hilbert scalar product, put `K=1+ZZ^*`. The minimal-norm lift is
\[
s_Z(v)=(-Z^*K^{-1}v,K^{-1}v).
\]
Thus
\[
\Gamma_Q^{\rm graph}=-(dZ)Z^*K^{-1},\qquad
\alpha_Q=-\operatorname{Tr}((dZ)Z^*K^{-1}).                \tag{6.1}
\]
This is precisely the negative of the tautological determinant connection, as required for the quotient determinant.

A direct block differentiation gives
\[
dZ=S(A_\theta)_{+-}a^{-1},\qquad
 dS=SA_\theta^+-(dZ)b.
\]
Consequently
\[
\boxed{\quad
\Gamma_{LC}^{\rm graph}
  =ST_\theta S^{-1}+(dZ)bS^{-1},\qquad
\alpha_{LC}=\operatorname{Tr}((dZ)bS^{-1}).
\quad}                                                   \tag{6.2}
\]
The first matrix term has order `−2` and zero trace; the second is smoothly smoothing. Formula (6.2) is the block simplification suggested in the later collaborative message and checked here directly from `dU=UA_θ`.

The explicit correction to the quotient determinant connection is therefore
\[
\boxed{\quad
\beta:=\alpha_{LC}-\alpha_Q
  =\operatorname{Tr}\!\left((dZ)
      [bS^{-1}+Z^*(1+ZZ^*)^{-1}]\right)
  =\operatorname{Tr}B_g.
\quad}                                                   \tag{6.3}
\]
Admissible graph charts around other reference subspaces give the same transition rule as §5.

### Descent and the non-`H`-stable complement

For a change of local lift `g↦gh`, the **quotient** transition is
\[
\rho_h=P_+U_h|_{\mathcal H_+},
\]
not an action preserving the chosen positive subspace inside the ambient space. The homogeneous connection forms transform on the common smooth domain with the inhomogeneous term `\rho_h^{-1}d\rho_h`; the difference transforms by conjugation. Therefore `Tr Δ` is basic. This uses the given genuine `H`-equivariance of the LC connection and the actual quotient connection.

Neither `\det_F\rho_h` nor `\operatorname{Tr}(\rho_h^{-1}d\rho_h)` is required or generally defined. In particular, it would be incorrect to infer descent from an `H`-stable positive complement.

## 7. Independent trace and cocycle coefficient

With `R(X,Y)=[∇_X,∇_Y]−∇_[X,Y]`, homogeneity gives
\[
R_{m,-m}=[\Lambda_m,\Lambda_{-m}]-2m\Lambda_0.
\]
For `m≥1`, its diagonal coefficient on `e_j` is
\[
\mathbf1_{j\geq m+2}\frac{(j+m)^2w_{j-m}}{w_j}
 -\frac{(j+2m)^2w_j}{w_{j+m}}+2mj.
\]
Define
\[
a_m(j)=\frac{(j+2m)^2w_j}{w_{j+m}}
       =j^2+mj-2m^2+\frac{2w_m}{j}+O(j^{-2}).
\]
The exact cutoff sum telescopes:
\[
\sum_{j=2}^N R_{m,-m}(j)
 =mN(N+1)-2m-\sum_{j=N-m+1}^Na_m(j).
\]
The polynomial part of the tail is
\[
\sum_{r=0}^{m-1}[(N-r)^2+m(N-r)-2m^2]
 =mN(N+1)-\frac{13m^3-m}{6}.
\]
The remaining tail tends to zero, proving
\[
\boxed{\operatorname{Tr}R_{m,-m}=\frac{13}{6}(m^3-m).}     \tag{7.1}
\]
The `m=1` value is zero, as required by the actual isotropy.

There is a second finite-rank derivation, which also checks the quotient-determinant sign. At the identity, let
\[
C_m=P_+A_mP_-,\qquad L_{-m}=P_-A_{-m}P_+.
\]
The curvature of (6.2) has trace
\[
-\operatorname{Tr}(C_mL_{-m})
 =\sum_{j=2-m}^{1}(m-j)(j+2m)
 =\frac{13}{6}(m^3-m).                                   \tag{7.2}
\]
For `m=2` the two summands are `8+5=13`.

For comparison, the uncorrected `L2` quotient projection curvature is
\[
-\operatorname{Tr}(C_mC_m^*)
 =-\sum_{j=2-m}^{1}(m-j)^2
 =-\frac{m(m-1)(14m-13)}6.
\]
It is emphatically not the LC determinant curvature. At the identity its correction is
\[
(d\beta)(e_m,e_{-m})=\frac92m^2(m-1),
\]
whose addition gives (7.1). This is an explicit check that the construction did not silently identify the two connections.

Nonzero total Fourier shift has zero trace, giving the cocycle stated at the beginning. Its Jacobi identity was checked exactly. If a central term is written as `(c/12)(m^3−m)`, this coefficient corresponds to `c=26`; this last label depends on using exactly that convention.

With the supplied real metric and `J`, define `Ω(X,Y)=g(JX,Y)`. Then
\[
\Omega(e_m,e_{-m})=-iw_m,\qquad
F_{\mathcal L}=i\frac{13}{6}\Omega.
\]
For example, if the Ricci-form convention is `ρ=i Tr R^{1,0}`, it gives `ρ=−(13/6)Ω`. No alternative curvature or determinant-dual sign is being silently used.

## 8. The critical Sobolev determinant metric

Let
\[
V e_j=v_je_j,\quad
v_j=|j|(j^2-1)\ (|j|\geq2),\qquad v_{-1}=v_0=v_1=1.
\]
This defines the full positive Sobolev scalar product of order `3/2`. On the positive quotient at the identity it agrees exactly with `h_w`.

### Exact Schwarzian transformation

For `φ=g^{-1}`, define
\[
k_g=S(\phi)+\tfrac12(\phi'^2-1),\qquad
S(\phi)=\frac{\phi'''}{\phi'}-\frac32\left(\frac{\phi''}{\phi'}\right)^2.
\]
Here the adjoint is the ambient `L2` adjoint. Direct differentiation proves the exact differential-operator identity
\[
\boxed{\quad U_g^*WU_g-W=-(M_{k_g}D+DM_{k_g}).\quad}       \tag{8.1}
\]
For clarity, writing `p=g'`, the same statement in the variable `y=g(x)` is
\[
U_g^*WU_g-W=i(b\partial_y+\tfrac12b'),\qquad
b=\left[\frac{1-2S(g)}{g'^2}\right]\circ g^{-1}-1=2k_g.
\]
The full differentiation, including the zeroth-order term, was checked symbolically. For a real infinitesimal vector field `f`, `k_{g_t}=−t(f'''+f')+O(t^2)`, giving the positive-frequency defect
\[
(VA_m-A_{-m}^*V)_{j+m,j}
 =(m-j)w_{j+m}+(j+2m)w_j=w_m(2j+m)
\]
when both indices are at least `2`.

Since
\[
V=\operatorname{sgn}(D)W+P_{\{|j|\leq1\}}
\]
and `[sgn(D),U_g]` is smoothly smoothing, (8.1) implies
\[
U_g^*VU_g-V\in\Psi^1
\]
smoothly, not merely order `2` or `3`. Thus
\[
\boxed{\quad
\mathcal J_g:=V^{-1/2}U_g^*VU_gV^{-1/2}=1+K_g,
\qquad K_g\in\Psi^{-2}\subset\mathcal S_1,
\quad}                                                   \tag{8.2}
\]
smoothly in trace norm. This is the decisive critical-weight cancellation.

### Quotient metric as a Schur complement

Relative to the normalized splitting `\mathcal H_-⊕\mathcal H_+`, write the blocks of `\mathcal J_g` as `\mathcal J_{--}`, etc. The reference quotient Gram operator in the homogeneous positive coordinate is
\[
J_g=\mathcal J_{++}
 -\mathcal J_{+-}\mathcal J_{--}^{-1}\mathcal J_{-+}.
\]
It is positive, boundedly invertible, and
\[
J_g-1\in\mathcal S_1
\]
smoothly. The intrinsic Gram operator in the same normalized coordinate is exactly `1`. Therefore
\[
H_Q^{-1}H_I\sim J_g^{-1}=1+\mathcal S_1.                  \tag{8.3}
\]
Conjugation into an admissible frame is smoothly trace class by §3. This also proves that the intrinsic metric extends to a smooth Hilbert-fiber metric in the actual quotient Hilbert atlas.

The intrinsic determinant metric is consequently well defined:
\[
\boxed{\quad
\|\ell\|_I^2=\|\ell\|_Q^2\det_F(J_g)^{-1}.
\quad}                                                   \tag{8.4}
\]
Under `g↦gh`, `J_g` transforms by conjugation with the given `h_w`-unitary quotient representation. Its Fredholm determinant is unchanged. Hence the scalar factor descends to `M`; no determinant of the isotropy operator is needed.

Since the LC connection is metric on the smooth dense subbundle, its bounded extension and the induced determinant connection are compatible with this determinant metric.

## 9. Precise failures of tempting shortcuts

1. **Norm-smooth homogeneous Hilbert frames fail.** For rotations `r_t(x)=x+t`,
   \[
   U_{r_t}e_j=e^{ijt}e_j.
   \]
   Along `t_N=π/N→0`, the operator norm of `U_{r_{t_N}}−1` is exactly `2`, in `L2` and in the weighted norm. The same obstruction occurs in the quotient isotropy representation. Thus the homogeneous Hilbert atlas cannot simply be declared norm smooth.

2. **The positive complement is not `H`-stable.** Already
   \[
   A_{-1}e_2=-3e_1\in\mathcal H_-.
   \]
   The correct action is the quotient representation. Treating the positive subspace as an invariant ambient subspace loses the smoothing correction `B_g`.

3. **The intrinsic metric is not determinant class relative to the `L2` quotient metric.** At the identity the ratio is `diag(w_j)`, an unbounded operator, not `1+\mathcal S_1`. The `L2` reference still constructs the connection, but not that intrinsic determinant metric by a direct Fredholm determinant ratio.

4. **The critical exponent matters.** For a reference norm of order `s`, the principal symbol of the normalized full Gram operator is
   \[
   (g'\circ g^{-1})^{2s-3}.
   \]
   If `s≠3/2` and, for example, `g(x)=x+\varepsilon\sin(2x)` with `0<|\varepsilon|<1/2`, this is nonconstant. The Gram defect is then generically order zero and not compact, so the corresponding almost-unitary determinant-class assertion fails. At `s=3/2`, (8.1) supplies the further cancellation down to order `−2`.

5. **Unbounded cyclicity cannot be asserted term by term.** In §4 the individual diagonal products behave as a nonzero constant divided by `j`; their traces diverge even though the commutator is trace class and has zero trace. The cutoff-tail argument is indispensable if one works in homogeneous frames.

These failures do not obstruct the admissible-frame construction.

## 10. What is established, and the remaining complex-chart hypothesis

Established from the stated smooth LC input and the estimates above:

- a smooth relative Fredholm determinant line on the smooth quotient;
- an actual determinant connection induced from the LC connection, with determinant-class local parallel transport;
- the transition and correction formulas (5.1), (6.2), and (6.3);
- legitimacy of tracing the covariant derivative, including the necessary unbounded-frame estimate;
- the curvature coefficient `13/6` with the stated signs and normalization;
- a genuine intrinsic determinant metric at the critical full Sobolev weight.

For the complex distribution, `A_m` preserves `\mathcal H_-` for every `m≤1`. Hence `dZ` vanishes on the corresponding `(0,1)` directions, and `T_m=0` there. Thus the connection in graph coordinates has zero `(0,1)` correction, consistent with the canonical quotient `∂̄` operator. The positive-positive connection brackets also satisfy the required zero-curvature identity exactly.

**Missing hypothesis for an unconditional Chern identification:** a genuine smooth complex Fréchet atlas on `M` with the stated `T^(1,0)`, together with the corresponding holomorphic bundle interpretation of the Grassmann quotient map/`∂̄` operator. Formal involutivity by itself is not being substituted for an infinite-dimensional complex-chart theorem. Under that hypothesis, the quotient projection connection is the reference Chern connection, the LC connection is the intrinsic Chern connection, and
\[
\beta=-\partial\log\det_F J_g
\]
with the line-metric convention of (8.4). The smooth connection and determinant metric constructed above do not depend on resolving this complex-atlas issue.

No completion of the base to a critical Sobolev diffeomorphism group has been analyzed. No claim of an honest determinant character of the entire isotropy representation, or an unextended `G` action on the determinant line, is required or made.

## 11. Exact checks and retained diagnostics

Two fresh Wolfram kernels were used through the configured Mathematica tool. Both reported version `14.3.0 for Mac OS X ARM (64-bit)`. The saved reports include the complete returned expressions, `Failed -> False`, `UnevaluatedSumOrLimit -> False`, and `Messages -> {}`. No messages were suppressed and then omitted from the report.

- [First complete source](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/relative-fredholm-independent.txN5Fm/exact_checks.wl>)
- [First complete readable output](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/relative-fredholm-independent.txN5Fm/exact_checks.txt>)
- [First exact WXF output](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/relative-fredholm-independent.txN5Fm/exact_checks.wxf>)
- [Second complete source](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/relative-fredholm-independent.txN5Fm/geometric_checks.wl>)
- [Second complete readable output](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/relative-fredholm-independent.txN5Fm/geometric_checks.txt>)
- [Second exact WXF output](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/relative-fredholm-independent.txN5Fm/geometric_checks.wxf>)

The first batch checks six exact residuals: the LC/ambient cancellation, critical metric cancellation, finite cross-block trace, positive connection bracket, Schwarzian zeroth-order coefficient, and telescoping tail polynomial. All six are exactly zero. It also retains exact finite-cutoff curvature checks for `m=1,…,8`, including their exact rational values and zero telescoping residuals. Those finite cutoffs are not substituted for the analytic infinite-tail argument.

The second batch checks the full differential-operator Schwarzian transformation, the Virasoro cocycle Jacobi identity, the `L2` connection correction, the `m=1` isotropy defect, and the cyclicity boundary asymptotics. Exact checks include `R_(2,-2)e_2=(22/5)e_2` and total trace `13`.

These CAS checks verify algebra, not the trace-ideal analysis or the missing complex-chart theorem. The latter limitations are not hidden by the successful exact computations. An additional fresh subreviewer was unavailable at the delegated depth; this report itself is the independent focused review for the parent investigation.
