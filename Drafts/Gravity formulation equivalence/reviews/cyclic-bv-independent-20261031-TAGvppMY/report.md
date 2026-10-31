# A cyclic spectral UV contraction on the complete gravitational Chern–Simons complex

## Result

**The requested contraction exists on the stated complete real Hilbert complex. The relevant positive Hodge Laplacian is exactly the common-Casimir-plus-four operator, not a different competing regulator.** Its gap is at least one. For a common spectral projection

\[
 P_\Lambda=\mathbf 1_{[0,\Lambda^2]}(\Delta),\qquad Q_\Lambda=1-P_\Lambda,
\]

one obtains the explicit bounded homotopy

\[
 \boxed{h_\Lambda=\delta\Delta^{-1}Q_\Lambda,\qquad \delta=D^\dagger.}
\]

Here the formula is derived below from the actual real connection, its actual positive Hilbert adjoint, and the given balanced gravitational augmentation. It does not treat the flat connection as unitary or assume a propagator kernel.

There is an important qualification concerning a UV gauge-fixing space:

\[
 \boxed{\operatorname{im}h_\Lambda
   =H^1\cap Q_\Lambda\operatorname{ran}\delta.}
\]

For every finite UV threshold this image is **not closed in complete graded L2**, and hence is not itself maximal isotropic there. Its L2 closure

\[
 \boxed{\mathcal L_{\rm UV}=Q_\Lambda\operatorname{ran}\delta
                    =Q_\Lambda\ker\delta}
\]

is closed and maximal isotropic. This distinction cannot be removed by calling the inverse an order-minus-one operator.

The contraction is a classical cyclic contraction of a closed differential complex. It is not by itself a finite-dimensional cutoff, a quantum BV Laplacian, a renormalized BV pushforward, or a determinant/measure comparison.

## 1. Data, conventions, and exactly what is imported

Let M be H3 or its complete quotient by a fixed loxodromic cyclic group, with curvature minus one and the marked thermal filling fixed. Let

\[
 E^p=\Lambda^pT^*M\otimes(\mathbb R^3\oplus\mathbb R^3),
 \qquad \mathscr H^p=L^2(M,E^p),\qquad
 \mathscr H=\bigoplus_{p=0}^3\mathscr H^p.
\]

The bundle metric in the positive Hilbert norm is the separate Euclidean sum on the two real factors. All adjoints denoted by a dagger refer to this positive norm. The orientation is epsilon123=1, and omega^{ab}=−epsilon^{ab}{}_c omega^c. The oriented torsion-free coframe e has A=omega+i e flat. With wedge Lie brackets,

\[
 D= D_\omega+J[e,\cdot],\qquad
 J=\begin{pmatrix}0&-1\\1&0\end{pmatrix},\qquad D^2=0.
\]

The invariant real bilinear pairing is

\[
 [u,v]_B=\int_M B(u\wedge v),\qquad
 B((w,f),(w',f'))=2a(w\cdot f'+f\cdot w'),\quad a>0,
\]

when the form degrees sum to three, and zero otherwise. Complexification below means complex-bilinear extension of this pairing; it does not change the real Hilbert-domain construction. The L2 inner product in identities representing this real pairing is the real inner product, extended bilinearly if needed, not a Hermitian inner product silently substituted for B. The positive operators and their domains can be complexified afterwards.

The permitted operator input is:

\[
 G=D_0,\quad G^\dagger G=M=R_1\oplus R_1,\quad R_1=\nabla^*\nabla+2\ge4,
\]

\[
 K=\begin{pmatrix}T&C\\C&-T\end{pmatrix},\quad
 C=*D_\omega,\quad T=*[e,\cdot],\quad
 T(Y)=I\operatorname{tr}Y-Y^T,
\]

and, on compactly supported smooth sections,

\[
 \mathscr D_0=\begin{pmatrix}K&G\\G^\dagger&0\end{pmatrix},\qquad
 \mathscr D_0^2=\operatorname{diag}(R,M),\quad
 R=R_K\oplus R_K,\quad R_K=\nabla^*\nabla+2T.
 \tag{1.1}
\]

Under the parallel spin decomposition of a vector-valued one-form,

\[
 R_K=\sum_{s=0}^2R_s\Pi_s,\qquad
 R_s=\nabla^*\nabla+4-s(s+1),
 \quad (R_0,R_1,R_2)\ge(5,4,1).
 \tag{1.2}
\]

The global gaps are imported, not reproved by a finite matrix calculation. The corresponding formulas and complete geometric setting are recorded in [note 15:106–143](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/15 Elliptic gravitational CS determinant and gauge phase.md#L106-L143>); the homogeneous Casimir normalization is [note 14:242–269](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/14 Geometric CS Gaussian map and regulator.md#L242-L269>). No parent candidate or newly developed parent calculation was read.

The spaces H^s below are geometric Sobolev spaces for the metric connection on the form/internal tensor bundles. These two fixed geometries have bounded geometry; in the cyclic case the positive translation length supplies a positive lower injectivity radius. The operators appearing in (1.2) have bounded parallel zeroth-order potentials. There is no finite radial spectral wall and no boundary condition at conformal infinity.

## 2. The actual adjoint and the cyclic signs

Define

\[
 S(w,f)=(f,w),\qquad H_p=S*:E^p\longrightarrow E^{3-p}.
\]

Since the dimension is three, star squared is +1 in every degree. Thus

\[
 H_{3-p}H_p=1,\quad H_p^\dagger=H_{3-p},\qquad
 [u_p,v_{3-p}]_B=2a(u_p,H_{3-p}v_{3-p})_{L^2}.
 \tag{2.1}
\]

These maps are global: they are equivariant under the compact SO(3) frame changes. They are not asserted to be parallel for the nonunitary flat connection D.

For clarity, in a local orthonormal frame write

\[
 D=\sum_i\varepsilon_i(\nabla_i+\Phi_i),\qquad
 \Phi_i=J\otimes L_i,\qquad (L_i)^a{}_b=\epsilon^a{}_{ib}.
\]

Both J and L_i are skew, so Phi_i is **symmetric** in the positive coefficient metric. Moreover S Phi_i S=−Phi_i. Consequently the actual positive Hilbert adjoint is

\[
 \delta=-\sum_i\iota_i\nabla_i+\sum_i\iota_i\Phi_i,
\]

not the expression obtained by pretending Phi is skew. Equivalently,

\[
 \boxed{\delta_p=(-1)^p H_{4-p}D_{3-p}H_p,\qquad p=1,2,3.}
 \tag{2.2}
\]

Here and below the subscript of H denotes its input form degree; (2.2) has input degree p and output degree p−1. The constant 2a cancels from the adjoint identity.

Invariance of B and compactly supported Stokes give

\[
 [D_pu,v]_B=(-1)^{p+1}[u,D_{2-p}v]_B,
 \qquad \deg v=2-p.
 \tag{2.3}
\]

By (2.1)–(2.2), the codifferential has the other sign:

\[
 \boxed{[\delta_pu,v]_B=(-1)^p[u,\delta_{4-p}v]_B,
 \qquad \deg v=4-p.}
 \tag{2.4}
\]

Thus using a positive Hilbert adjoint does not spoil cyclicity in this real gravitational problem. The reason is the particular involution S relating the positive coefficient metric to the invariant split pairing, not unitarity of the flat connection.

Equations (2.3)–(2.4) imply that

\[
 \Delta=D\delta+\delta D
\]

is B-self-transpose. Equivalently,

\[
 H_p\Delta_p=\Delta_{3-p}H_p.
 \tag{2.5}
\]

These identities will be extended to closed operators, rather than left as formal integration-by-parts statements.

## 3. The whole gravitational complex from the actual augmentation

On one-forms the stated kinetic operator satisfies

\[
 K=H_2D_1.
\]

It follows, with all signs fixed by (2.2), that the full differential and adjoint are

\[
\begin{array}{lll}
 D_0=G,&D_1=H_1K,&D_2=-H_0G^\dagger H_2,\\
 \delta_1=G^\dagger,&\delta_2=KH_2,&\delta_3=-H_1GH_3.
\end{array}
\tag{3.1}
\]

Also D_3=0 and delta_0=0. In particular,

\[
 \boxed{\begin{aligned}
 \Delta_0&=M, &\Delta_1&=R,\\
 \Delta_2&=H_1RH_2, &\Delta_3&=H_0MH_3.
 \end{aligned}}
 \tag{3.2}
\]

This already determines every form degree. It is not an extrapolation from just the physical transverse sector.

There is also a direct operator equivalence. For the full Hodge Dirac operator

\[
 \mathbb D=D+\delta,
\]

identify the even and odd degree spaces with the augmentation space by

\[
 U_{\rm even}(u_0,u_2)=(H_2u_2,u_0),\qquad
 U_{\rm odd}(u_1,u_3)=(u_1,-H_3u_3).
\]

Both maps are parallel Hilbert isometries. Under them, both off-diagonal blocks of mathbb D are precisely mathscr D_0:

\[
 \boxed{\mathbb D\simeq
 \begin{pmatrix}0&\mathscr D_0\\\mathscr D_0&0\end{pmatrix}.}
 \tag{3.3}
\]

The full real rank is 6+18+18+6=48. Its spin multiplicities are (4,8,4), twice the augmentation multiplicities (2,4,2). The squared operator on the whole complex is therefore the actual complete gravitational operator (3.2), with

\[
 \Delta\ge1.
 \tag{3.4}
\]

### A local check that the nonunitary potential matters

On a vector-valued one-form, the metric-connection Hodge Laplacian contributes the Weitzenboeck potential −2+T. The symmetric Phi contribution has spin eigenvalues (4,3,1), while −2+T has eigenvalues (0,−1,−3). Their sum is (4,2,−2)=2T, exactly as in (1.1). On zero-forms, the Phi contribution is +2. Discarding the symmetric connection term, or assigning it the unitary adjoint sign, misses these operators.

## 4. Complete closures and actual domains

### 4.1 The differential is a closed maximal/minimal L2 complex

Start D on compactly supported smooth forms. Since the metric is complete, there are compactly supported cutoffs chi_n approaching one with bounded gradients tending to zero. The commutator is

\[
 [D,\chi_n]=d\chi_n\wedge,
\]

independently of the nonunitary zeroth-order potential. For u with distributional Du in L2, the cutoff error tends to zero in L2; local Friedrichs smoothing then gives compactly supported smooth graph approximants. The same argument applies to delta, whose cutoff commutator is minus contraction with d chi_n. Therefore minimal and maximal realizations agree:

\[
 \boxed{\operatorname{Dom}D_p
 =\{u\in\mathscr H^p:D_pu\in\mathscr H^{p+1}
                         \text{ distributionally}\}.}
 \tag{4.1}
\]

The Hilbert adjoint is the corresponding maximal delta. Since D squared is zero distributionally, Du belongs to Dom D and D(Du)=0 whenever u is in Dom D. The same holds for delta squared, either directly from (2.2) or by adjoint duality. This is an actual closed Hilbert complex.

Cutoff graph approximation also extends (2.3), (2.4), and the H-domain correspondence to their natural paired domains. No boundary flux at infinity is silently discarded: it is controlled by the bounded bilinear L2 pairing and the cutoff commutator estimate.

### 4.2 Dirac and Laplacian domains

The complete Laplace-type operator (3.2), initially on compactly supported smooth sections, is essentially selfadjoint. One can use the complete rough-Laplacian core and its bounded symmetric parallel potential. The symmetric operator mathbb D has square (3.2). A deficiency vector would solve (Delta+1)u=0 distributionally, which is impossible for the positive complete Laplace closure. Thus mathbb D is essentially selfadjoint as well.

On the core,

\[
 \|\mathbb D u\|_2^2=\|D u\|_2^2+\|\delta u\|_2^2
 =\|\nabla u\|_2^2+(u,V u)_2,
\]

where V is bounded, with eigenvalues among 2 and (4,2,−2). This and uniform elliptic regularity on the fixed bounded-geometry manifold give

\[
 \boxed{\begin{aligned}
 \operatorname{Dom}\mathbb D
 &=\operatorname{Dom}D\cap\operatorname{Dom}\delta=H^1,\\
 \operatorname{Dom}\Delta&=H^2,\qquad
 \operatorname{Dom}\Delta^{1/2}=H^1.
 \end{aligned}}
 \tag{4.2}
\]

All direct sums over form degree are understood. Compactly supported smooth sections are cores. These are the domains of the Dirac sum and its square, **not** the domains of each individual middle differential.

The parallel involution H preserves those cores and Sobolev domains. Hence (2.5) extends to the selfadjoint realizations and their spectral resolutions.

### 4.3 Why the individual middle domains are larger than H1

The exact and coexact projections, initially evaluated through Delta inverse, are given below. Their algebra uses the strong functional-calculus intertwining proved independently in §5; that proof only needs §4.1–4.2 and does not assume this decomposition.

\[
 \mathcal E=D\delta\Delta^{-1},\qquad
 \mathcal F=\delta D\Delta^{-1}.
 \tag{4.3}
\]

They are bounded Hilbert-orthogonal projections satisfying

\[
 \mathcal E+\mathcal F=1,\quad \mathcal E\mathcal F=0,\qquad
 \operatorname{ran}\mathcal E=\operatorname{ran}D=\ker D,\quad
 \operatorname{ran}\mathcal F=\operatorname{ran}\delta=\ker\delta.
 \tag{4.4}
\]

For example, the range of mathcal E lies in ran D by the explicit factorization, and a D-closed vector has zero mathcal F part. Conversely ran D is contained in ker D. The identities use the actual inverse supplied by (3.4); in particular both differential ranges are closed and there is no L2 harmonic part.

The precise differential domains can consequently be written

\[
 \boxed{\begin{aligned}
 \operatorname{Dom}D_p
 &=\operatorname{ran}D_{p-1}\oplus
       \bigl(H^1\cap\operatorname{ran}\delta_{p+1}\bigr),\\
 \operatorname{Dom}\delta_p
 &=\bigl(H^1\cap\operatorname{ran}D_{p-1}\bigr)\oplus
       \operatorname{ran}\delta_{p+1}.
 \end{aligned}}
 \tag{4.5}
\]

At the ends, Dom D_0=H1, Dom D_3=L2, Dom delta_0=L2, and Dom delta_3=H1. At degree one,

\[
 \operatorname{Dom}D_1
 =\operatorname{ran}G\oplus(H^1\cap\ker G^\dagger),
 \tag{4.6}
\]

which is exactly the ungaugefixed kinetic domain transported by H1. In particular it contains L2 exact fields G rho that need not themselves be H1. Similarly,

\[
 \operatorname{Dom}D_2
 =H_1\bigl(\ker G^\dagger\oplus(H^1\cap\operatorname{ran}G)\bigr).
 \tag{4.7}
\]

Here the H_1 outside the parentheses is the Hodge/swap isometry, not the Sobolev space.

A useful proof of (4.5) is that the coexact part of a vector in Dom D has delta equal to zero and D in L2, so belongs to the intersection domain H1 in (4.2); its exact part is annihilated by D and may be only L2. The converse is immediate. The same reasoning with D and delta exchanged gives the second line.

## 5. Spectral projectors really commute with the closed differential

Let f be a bounded real Borel function, and put f(Delta) degreewise. It commutes with the degree projections and with mathbb D because Delta=mathbb D squared. On H1, the individual D and delta are the degree-raising and degree-lowering blocks of mathbb D. Thus

\[
 D f(\Delta)u=f(\Delta)Du,
 \qquad \delta f(\Delta)u=f(\Delta)\delta u
 \quad (u\in H^1).
\]

Approximate an arbitrary u in Dom D by compactly supported smooth vectors in the D graph norm. Since f(Delta) preserves H1 and is L2-bounded, closedness extends the first identity to Dom D and shows that f(Delta) preserves that domain. Apply the identical argument to delta. This proves the strong intertwining needed for spectral cutoffs, rather than merely citing a formal commutator on tests.

By (2.5), f(Delta) commutes with H. For the real spectral projection P_Lambda,

\[
 \boxed{[P_\Lambda u,v]_B=[u,P_\Lambda v]_B,
 \qquad P_\Lambda D\subset DP_\Lambda.}
 \tag{5.1}
\]

The pairing extends continuously to L2 by (2.1), so self-transposition is an all-L2 assertion. P and Q have B-orthogonal, nondegenerate graded ranges. On the complete noncompact spaces, a spectral band is not thereby a finite-dimensional space.

## 6. Explicit homotopy, identities, and norm

The formula in the Result is unambiguous on all of L2: Delta inverse maps L2 to H2, so h maps L2 to H1. In terms of only the supplied physical/gauge operators it is

\[
 \boxed{\begin{aligned}
 h_0&=0,\\
 h_1&=G^\dagger R^{-1}Q_1,\\
 h_2&=K R^{-1}H_2Q_2,\\
 h_3&=-H_1G M^{-1}H_3Q_3.
 \end{aligned}}
 \tag{6.1}
\]

The subscript Lambda on Q and h is suppressed. Thus the field–antifield block is the actual generalized inverse K R inverse, with the Hodge/swap identification, while the other two blocks supply the essential ghost/antighost part. On ker G dagger, K squared=R, so K R inverse is the inverse of K there. It vanishes on ran G. It is not an inverse assigned to the ungaugefixed gauge kernel.

Equivalently, as a norm-convergent operator integral,

\[
 h_\Lambda=\int_0^\infty \delta e^{-t\Delta}Q_\Lambda\,dt.
 \tag{6.2}
\]

Near t=0 the integrand norm is bounded by a constant times t to the power minus one-half, and at large t the gap gives exponential decay. Equation (6.1), or (6.2) with the explicitly specified spin operators (1.2), is an actual operator formula. No pointwise image-sum Green kernel is claimed in this report.

Strong spectral commutation and the nilpotence of delta give

\[
 \boxed{\begin{gathered}
 Dh_\Lambda+h_\Lambda D=1-P_\Lambda,\\
 h_\Lambda^2=0,\qquad P_\Lambda h_\Lambda=h_\Lambda P_\Lambda=0.
 \end{gathered}}
 \tag{6.3}
\]

The first equality holds as an equality on Dom D. More precisely,

\[
 Dh_\Lambda=\mathcal E Q_\Lambda\quad\text{on all L2},\qquad
 h_\Lambda D=\mathcal F Q_\Lambda\quad\text{on Dom D},
 \tag{6.4}
\]

and the second product has the displayed bounded extension to L2. This is the correct interpretation when D is unbounded. The other identities in (6.3) are bounded-operator identities on all L2.

The correct cyclic transpose is

\[
 \boxed{[h_\Lambda u_p,v_{4-p}]_B
              =(-1)^p[u_p,h_\Lambda v_{4-p}]_B.}
 \tag{6.5}
\]

It follows first on a core from (2.4) and the B-self-transpose commuting inverse/cutoff, then on L2 by continuity. In particular both a sign-free assertion that h is self-transpose and a degree-independent skew-transpose assertion would be wrong.

For readers using an explicit suspension convention: if s lowers degree by one and

\[
 \omega(su_p,sv_q)=(-1)^p[u_p,v_q]_B,
\]

then tilde D=−sDs inverse and tilde h=−shs inverse satisfy the same contraction identities and

\[
 \omega(\widetilde h x,y)=(-1)^{|x|}\omega(x,\widetilde h y).
\]

The unshifted formula (6.5) fixes the convention without depending on notation for BV component ghost numbers.

### Exact norm and spectral Sobolev estimates

If Q is nonzero, set

\[
 m_{\rm UV}=\inf\sigma(\Delta|_{\operatorname{ran}Q_\Lambda})
            \ge\max(1,\Lambda^2).
\]

The estimate from the quadratic form is

\[
 \|h_\Lambda\|_{2\to2}\le m_{\rm UV}^{-1/2}.
\]

In fact equality holds on the whole graded complex. To see this without assuming individual eigenvectors, use the bounded partial isometry

\[
 U=D\Delta^{-1/2},\quad U^\dagger=\delta\Delta^{-1/2},\quad
 U^\dagger U=\mathcal F,\quad UU^\dagger=\mathcal E.
 \tag{6.6}
\]

It intertwines all Delta spectral projections and unitarily identifies the coexact and exact halves. Hence their positive spectra agree, and h=U dagger Delta to the power minus one-half Q has norm m_UV to the power minus one-half. For Q=0 its norm is zero.

For the equivalent spectral Sobolev norms

\[
 \|u\|_s=\|\Delta^{s/2}u\|_2,
\]

this gives, for nonzero Q and every real s,

\[
 \boxed{\|h_\Lambda\|_{H^s_\Delta\to H^s_\Delta}
       =m_{\rm UV}^{-1/2},\qquad
 \|h_\Lambda\|_{H^s_\Delta\to H^{s+1}_\Delta}=1.}
 \tag{6.7}
\]

The corresponding geometric Sobolev estimates hold with equivalence constants independent of the UV threshold. In particular the same-order bound is at most 1/Lambda for Lambda>0, while the one-derivative gain is uniform. If the threshold is instead denoted R with P_R=1_[0,R](Delta), the same-order bound is at most R to the power minus one-half, not R inverse. The ghost blocks h1 and h3 additionally have global norm at most one-half, from M at least four.

The homotopy itself is independent of a. Converting its field block into the inverse of the physical Hessian 2aK introduces the separate factor (2a) inverse. The homotopy and a normalized Gaussian covariance should not be conflated.

## 7. The UV isotropic space: closure matters

Let

\[
 \mathscr H_{\rm UV}=Q_\Lambda\mathscr H,\qquad
 \mathcal E_{\rm UV}=Q_\Lambda\operatorname{ran}D,\qquad
 \mathcal L_{\rm UV}=Q_\Lambda\operatorname{ran}\delta.
\]

Then

\[
 \mathscr H_{\rm UV}=\mathcal E_{\rm UV}\oplus^{\perp_{L^2}}\mathcal L_{\rm UV}.
 \tag{7.1}
\]

Both summands are closed and B-isotropic: this follows from cyclicity and D squared=delta squared=0. H interchanges the two summands and commutes with Q. Therefore the B-annihilator of either summand, taken inside the UV space, equals that summand. In particular

\[
 \mathcal L_{\rm UV}^{\perp_B}=\mathcal L_{\rm UV}.
 \tag{7.2}
\]

This is a closed maximal isotropic UV subspace of the strong graded L2 pairing (and of its explicitly suspended BV version).

By contrast, h gains one derivative, so im h is contained in H1 intersect mathcal L_UV. Conversely for y in that intersection, (6.4) gives

\[
 y=h_\Lambda Dy.
\]

Hence

\[
 \operatorname{im}h_\Lambda=H^1\cap\mathcal L_{\rm UV},\qquad
 \overline{\operatorname{im}h_\Lambda}^{\,L^2}=\mathcal L_{\rm UV}.
 \tag{7.3}
\]

### An explicit spectral proof of nonclosedness

The degree-zero coexact space is the whole parameter L2 space: M invertible implies G dagger is onto, with right inverse G M inverse. The elliptic positive operator M is unbounded, as is seen by compactly supported high-frequency parameters. Fix any finite Lambda. Choose mutually disjoint bounded spectral intervals I_n lying in (Lambda squared,infinity), with lower endpoints at least 4 to the power n, and normalized

\[
 \psi_n\in\operatorname{ran}\mathbf 1_{I_n}(M),\qquad \|\psi_n\|_2=1.
\]

Unbounded spectrum supplies such intervals with nonzero spectral subspace. Each psi_n belongs to every Sobolev domain because its spectral interval has a finite upper endpoint. But

\[
 y=\sum_{n=1}^\infty2^{-n}\psi_n
\]

converges in UV parameter L2 and obeys

\[
 \|M^{1/2}y\|_2^2\ge\sum_{n=1}^\infty4^{-n}4^n=\infty.
\]

Thus y is in mathcal L_UV but not H1 and not im h. Every finite partial sum y_N is in im h1, because y_N=h1 G y_N. This proves that im h is not L2-closed for every genuine finite-threshold UV tail. Since its isotropic closure is strictly larger, it is also not maximal isotropic in L2.

On a bounded spectral window, or inside the Sobolev/smooth domain with its appropriate topology, this obstruction changes: the band-limited L2 space is already smooth, so im h equals its closed coexact half there. The result above concerns the requested complete, unbounded UV tail.

## 8. Which projector is viable, and what fails

1. **No cohomological modes need be retained.** Delta has no kernel; the minimal cohomology projector is P=0. This gives the full cyclic contraction h=delta Delta inverse. A nonzero low-energy P retains an acyclic subcomplex, not L2 cohomology.

2. **For a spectral low/high split, the canonical positive generator is Delta.** By (3.2) it is precisely the common Casimir plus four, including all spin components and dual degrees. The two descriptions are equivalent. A cutoff in the common Casimir itself must shift the threshold by four. There is no claim of uniqueness among every possible non-spectral chain projector.

3. **Unshifted rough-Laplacian cutoffs are not a substitute.** Write A0 and A1 for the rough Laplacians on parameters and fields. The exact intertwining R G=G M gives

   \[
   A_1G-GA_0=2(1-T)G.
   \tag{8.1}
   \]

   The right side is nonzero: choose a compactly supported parameter with value zero at a point but a symmetric tracefree first covariant derivative there. The j contribution vanishes at that point and T acts on that derivative by −1. Thus the commutator is four times that nonzero derivative. If all rough spectral cutoffs intertwined G, their spectral calculus would imply a vanishing differential commutator, contradicting (8.1). Some trivial or accidental cutoffs can commute, but the unshifted rough cutoff family is not a chain regulator.

4. **Physical-only or TT-only truncation is not a full BV projector.** For example a parameter rho with nonzero divergence has a nonzero trace part in D rho; deleting trace fields while retaining such ghosts violates P1G=GP0. The entire complex, including the dual E2/E3 sectors, is part of the construction.

5. **A heat multiplier is not an idempotent projector.** Replacing P by exp(−epsilon Delta) gives a useful smoothing homotopy equation, but generally violates P squared=P and Ph=hP=0. It is not the strict contraction requested here unless those side conditions are intentionally changed.

6. **The flat connection is not unitary in the chosen Hilbert metric.** The symmetric Phi_i term, the swap S in (2.2), and the resulting spin potentials are indispensable. A generic formal invocation of unitary-flat Hodge theory does not establish this result.

## 9. Verification, diagnostics, and limitations

### What was checked

The analytic proof above fixes all-degree signs, identifies the actual full complex with a doubling of the gravitational augmentation, establishes complete closures and domain distinctions, proves strong spectral commutation, and proves the contraction, norm, and isotropic-closure statements.

An independent finite exterior-algebra calculation constructs all 48-dimensional form/species/internal matrices, with formal derivative transpose t_i going to minus t_i. It checks thirteen exact residual groups, including:

- H squared=1, Phi_i symmetry, and S anticommutation;
- delta=(-1)^p H D H and both graded cyclic signs;
- the supplied K block as H D1, with formal selfadjointness;
- the zero-form and all one-form spin potentials, and their sum 2T.

The corrected run reports all thirteen checks true, Failed=False, Messages={}, Wolfram 14.3. The [readable result](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/cyclic-bv-independent-20261031-TAGvppMY/algebra-preview-corrected.txt>) and [actual server return](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/cyclic-bv-independent-20261031-TAGvppMY/kernel-corrected-return.json>) are retained. The reproducible [source](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/cyclic-bv-independent-20261031-TAGvppMY/algebra-checks.wl>) has SHA256 `8843616b57dfcc5816ca09f881bf1913e3a746eb8e519b11d310a0fb57b6df82`; full residual matrices are in [the WXF result](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/cyclic-bv-independent-20261031-TAGvppMY/algebra-results-corrected.wxf>).

The first run had a report-construction error, using AssociationMap instead of Map on residual values. It did not establish successful checks. Its [actual diagnostic return](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/cyclic-bv-independent-20261031-TAGvppMY/kernel-first-diagnostic.json>), [preview](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/cyclic-bv-independent-20261031-TAGvppMY/algebra-preview.txt>), and [full result](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/cyclic-bv-independent-20261031-TAGvppMY/algebra-results.wxf>) were preserved rather than replaced. Only the corrected run supports the machine-check claim.

### Scope and remaining limitations

- The complete spectral gaps (1.2) and gravitational augmented square (1.1) are the expressly allowed input. The CAS checks finite exterior/tensor algebra, not global spectral theory or the domain theorem.
- The proof is for the fixed complete geometries, real geometric SO(3) reduction, positive Hilbert structure, and invariant B in the question. It does not include a hard wall, conformal-boundary source transformations, arbitrary hyperbolic quotients, or a varying off-shell background. A kernel or lost spectral gap would require a different inverse/cohomology analysis.
- No pointwise propagator image sum, locality estimate at infinity, renormalized coincident kernel, nonlinear BV transfer, or quantum BV integration theorem was established here. A sharp high-energy homotopy still has the usual local order-minus-one singularity; cyclicity alone does not regulate loop contractions.
- No additional independent reviewer could be spawned inside this delegated session. This is the fresh independent derivation requested by the parent; it was frozen without reading the parent's new candidate work. The parent can compare its independently obtained local checks after this report is delivered.
- Only project files inside this unique review directory were created. The mathematical tool also retained its automatic transport archives outside the vault, and copies of its actual returns are included here. Original Articles, main reports, and other review outputs were not modified.
