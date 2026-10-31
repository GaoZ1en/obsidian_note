# Separately requested follow-ups: retained radial test and ghost-factor normalization

These questions were supplied by the parent after the independent CS Schatten and geometric ghost-symbol findings. They are assessed here without treating the proposed conclusions as established facts. The initial independent argument is in [independent-derivation.md](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent-stationary-hessian-20261031.lUZZWYDx/independent-derivation.md>).

## A. An explicit retained field for which the cubic-generator BV trace is undefined

### A1. Exact band support and Sobolev regularity

On \(\mathbb H^3\), take

\[
\phi_b(r)=\frac{1-\cos(br)}{r\sinh r},\qquad b>0,
\quad \phi_b(0)=\frac{b^2}{2},
\qquad w=0,\quad f=\varepsilon\phi_b e_0.
\tag{A1}
\]

The hyperbolic volume is \(4\pi\sinh^2r\,dr\) for radial integrals. Multiplication by \(\sinh r\) identifies radial scalar L2 with the Dirichlet half-line problem, up to the constant factor \(4\pi\):

\[
\sinh r\,(-\nabla^2)\phi
 =(-\partial_r^2+1)(\sinh r\,\phi).
\]

Here

\[
u_b(r)=\sinh r\,\phi_b(r)
 =\frac{1-\cos(br)}r
 =\int_0^b\sin(\lambda r)\,d\lambda.
\tag{A2}
\]

The half-line sine transform is supported in \([0,b]\). Therefore \(\phi_b\) has scalar spectral support in \([1,1+b^2]\), and belongs to the domain of every spectral power. It is smooth at the origin, since its Taylor series is even. In particular

\[
\|\phi_b\|_2^2
 =4\pi\int_0^\infty\frac{(1-\cos br)^2}{r^2}\,dr
 =2\pi^2b<\infty.
\tag{A3}
\]

The soldered identity tensor \(e_0\) is parallel for the combined Levi-Civita/internal connection. The fluctuation \(\phi e_0\) is in the spin-zero part of the physical bundle, so the actual operator in [note18:125–145](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/18 Complete AdS BV contraction and tree transfer.md#L125-L145>) gives

\[
\Delta_1(0,\phi e_0)=(0,(-\nabla^2+4)\phi\,e_0).
\]

Consequently

\[
\operatorname{supp}_{\Delta_1}f\subset[5,5+b^2].
\tag{A4}
\]

Thus **if \(\Lambda^2>5\) and \(b^2<\Lambda^2-5\), this is exactly an actual retained field, \(P_{\Lambda,1}f=f\), in \(H^\infty\)**. It is not merely a scalar-regulator surrogate or a compactly localized model.

On the other hand \(\phi_b\ge0\) and

\[
\int_{\mathbb H^3}\phi_b\,dV
 =4\pi\int_0^\infty(1-\cos br)\frac{\sinh r}{r}\,dr=+\infty.
\tag{A5}
\]

For example, a fixed positive-length subinterval in every period has \(1-\cos br\ge1\), and the corresponding positive contributions grow exponentially. Hence \(H^\infty\cap L^2\) does not imply L1, even on this actual retained band.

For sufficiently small \(\varepsilon>0\), this retained field lies in the genuine stationary neighborhood. Its stationary lift obeys \(j=x+O(\varepsilon^2)\) in every fixed Sobolev norm. At the origin,

\[
\mathsf F_j=\varepsilon\frac{b^2}{2}1+O(\varepsilon^2),\qquad
\mathsf W_j=O(\varepsilon^2).
\]

It therefore supplies the explicit actual-graph geometric noncompactness example, and the nonzero early CS principal powers, described in the independent report. No assertion that \(y=0\) is being made.

### A2. Use the actual paired ghost projector

In the fixed CS-aligned background coordinates, the cubic generator is

\[
\Gamma_3=\int\left[R\,\iota_\xi w
 +T\,\iota_\xi f+\kappa^{-1}W\wedge\iota_\xi E\right],
\qquad \xi=e_0^{-1}\zeta.
\tag{A6}
\]

The canonical pairs are \((\eta,R),(\zeta,T),(w,W),(f,E)\). Only the middle monomial \(T_a\mathsf F^a{}_b\zeta^b\) contains a conjugate pair; the first and last monomials do not. Thus the putative flat retained BV Laplacian at a physical configuration requires, up to its one overall convention-dependent sign,

\[
\operatorname{Tr}_{L^2(TM)}\!igl(P_M M_{\varepsilon\phi_b}P_M\bigr),
\qquad P_M=1_{[0,\Lambda^2]}(R_1),
\quad R_1=\nabla^*\nabla+2.
\tag{A7}
\]

This is the actual rank-three translation-ghost block of \(M=R_1\oplus R_1\). The paired three-form antifield projector is its cyclic dual; it yields exactly this trace. It is not the scalar spectral projector. With the common convention \(\Delta_{\rm BV}=\sum_A(-1)^{\epsilon(q^A)}\partial_{q^A}\partial_{p_A}\), the displayed contribution carries the odd-ghost minus sign. Its failure of finiteness does not depend on that sign.

The projector has a smooth locally trace-class kernel. Homogeneity of \(\mathbb H^3\) and covariance under the isotropy group imply

\[
\operatorname{tr}P_M(x,x)=q_\Lambda\quad\text{constant},
\qquad 0<q_\Lambda<\infty\quad(\Lambda^2>5).
\tag{A8}
\]

Positivity is established without replacing the vector regulator: for scalar \(u\), the Weitzenbock identity gives
\(R_1\nabla u=\nabla(-\nabla^2+4)u\). Scalar spectral bands just above 1 therefore provide a nonzero vector spectral band just above 5. Thus \(P_M\ne0\) for \(\Lambda^2>5\); an invariant positive projection cannot have identically zero diagonal trace unless it is zero.

Since \(\phi_b\ge0\), the extended positive trace is determined by monotone convergence/Tonelli:

\[
\boxed{\operatorname{Tr}(P_M M_{\varepsilon\phi_b}P_M)
 =\varepsilon q_\Lambda\int\phi_b\,dV=+\infty.}
\tag{A9}
\]

There is no other conjugate-pair contraction in (A6) to cancel it. **The retained flat BV Laplacian of this cubic generator is not defined as a finite ordinary trace at this actual retained configuration.**

In fact this is a sharper operator-ideal example:

\[
\|M_{\phi_b}P_M\|_2^2=q_\Lambda\|\phi_b\|_2^2<\infty,
\qquad
P_M M_{\phi_b}P_M\in\mathcal S_2\setminus\mathcal S_1.
\tag{A10}
\]

Thus even a finite spectral bandwidth and continuous polynomial tree jets do not guarantee the loop trace. This particular divergence is infrared, not a large-momentum divergence. It does not contradict the UV CS \(\det_4\) theorem, which concerns a different operator and a subtracted tail.

The exact [radial Wolfram source](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent-stationary-hessian-20261031.lUZZWYDx/followup-radial-check.wl>) and [return](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent-stationary-hessian-20261031.lUZZWYDx/followup-radial-result.txt>) have seven passing labels, no messages, and no failure. They check scalar identities, not the vector spectral projector. The latter argument is analytic and uses the actual \(R_1\).

## B. Factoring the geometric ghost principal coefficient

### B1. Exact operator normalization

At a physical body, define

\[
C_j=\begin{pmatrix}1&\mathsf W\\0&1+\mathsf F\end{pmatrix}
 =1+\mathsf T_j.
\tag{B1}
\]

This is the ghost-only geometric-to-CS parameter map. There is an exact first-order decomposition

\[
\mathcal G_g(j)=G C_j+B_j,
\tag{B2}
\]

where \(B_j\) is order zero in the ghost argument. Its coefficients involve \(j,\nabla j\) and products of these with the fixed background tensors. An equivalent, useful identity is

\[
\mathcal G_g(j)=G_{\rm CS}(j)C_j+N_j,
\qquad
N_j c=(\iota_\xi\mathcal R(j),\iota_\xi T(j)),
\tag{B3}
\]

with physical output order \((w,f)\), \(\mathcal R=R_\omega-[e,e]/2\), and torsion \(T=D_\omega e\). This sign follows from the exact ghost-only remainder in [note16:74–88](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/16 Nonlinear BV map and finite density transport.md#L74-L88>): the CS-substituted transformation equals the geometric one minus contraction with the equations of motion. In general \(N_j\ne0\): UV stationarity is not the full field equation.

For actual smooth-Sobolev bodies, \(\mathsf T_j\) and \(B_j\) have L2 and bounded coefficients, hence Lp coefficients for \(p\ge2\). Raw multiplication by \(C_j\) does not preserve the UV band. On fixed UV ghost space use instead

\[
C_R=R_0C_jR_0|_{R_0E^0}=1+R_0\mathsf T_jR_0.
\tag{B4}
\]

For \(\|\mathsf T_j\|_\infty<1\), this is bounded invertible by its Neumann series. The exact left-relative ghost operator then satisfies

\[
\begin{aligned}
L_g&=M^{-1}R_0G^\dagger\mathcal G_g(j)R_0\\
 &=C_R+M^{-1}R_0G^\dagger B_jR_0,
\end{aligned}
\tag{B5}
\]

because \(G^\dagger G=M\) and the genuine chain cutoff intertwines the operators. Therefore

\[
\boxed{L_gC_R^{-1}=1+
 M^{-1}R_0G^\dagger B_jR_0C_R^{-1}
 \in1+\mathcal S_4.}
\tag{B6}
\]

The remainder is order minus one and satisfies the same heat/Schatten estimate as in the independent report. This is an exact normalized operator statement, not merely cancellation of principal symbols.

### B2. The antighost block and the pairing matter

On the Hilbert UV polarization write the ghost bilinear as

\[
-\kappa\langle b,Q_gc\rangle,
\qquad Q_g=M^{-1/2}R_0G^\dagger\mathcal G_g(j)R_0,
\quad Q_0=M^{1/2}|_{R_0E^0}.
\]

Normalize its ghost argument by \(c=C_R^{-1}c'\), so \(Q'_g=Q_gC_R^{-1}\). The full odd Hessian is built from \(Q'_g\) and its corresponding transposed offdiagonal block. This is the precise paired meaning of normalizing the ghost and antighost-dual blocks. A literal simultaneous change \(c'=C_Rc\), \(b'=C_R^{-\dagger}b\) preserves their positive L2 contraction but is not, without further factors, the same normalization of the kinetic operator.

Both left- and right-relative orientations of the normalized odd Hessian have \(\mathcal S_4\) excess. Besides (B6), this follows from

\[
C_R^{-1}-1=-C_R^{-1}(R_0\mathsf T_jR_0),
\]

and the estimates for \(B_jM^{-1/2}\) and \(\mathsf T_jM^{-1/2}\). For example, when controlling the opposite side, split

\[
B_jR_0C_R^{-1}M^{-1/2}R_0
 =B_jM^{-1/2}R_0
 -B_jR_0C_R^{-1}R_0\mathsf T_jM^{-1/2}R_0.
\]

Each term is in \(\mathcal S_4\), with its remaining factors bounded. This avoids any unsupported use of similarity by the unbounded operator \(M^{1/2}\).

### B3. What the normalization does not prove

1. It defines a modified determinant after removing a field-dependent order-zero factor. It is **not** \(\det_4(L_g)\), since \(L_g-1\) is not compact in general.
2. On the fixed UV space the factor is \(C_R\), not the pointwise matrix \(C_j\). Alternatively, using raw \(C_j\) transports the ghost subspace itself; that is a different polarized comparison which must be specified.
3. A determinant multiplicativity theorem cannot be invoked to reconstruct a determinant of the original operator: the removed factor is outside every finite Schatten perturbation of the identity.
4. The pointwise full-BV semidensity factor suggested by the ghost map, \(\det(1+\mathsf F)^{-1}\), is a finite-dimensional density identity. It does not define its functional determinant, a spectral-cutoff Jacobian, or a measure-transport theorem. The example in §A has a divergent linear trace already on the retained band. The positive operator in (A10) admits a modified \(\det_2\), but choosing that subtraction is additional data, not an ordinary density.
5. The residual \(N_j\) in (B3) and the nonlinear antifield dependence of the exact map still matter. Ghost-only principal normalization does not replace the exact canonical map or establish the missing renormalized quantum comparison.

**Verdict on the proposed remedy:** it works as a precisely normalized, small-body \(1+\mathcal S_4\) determinant problem with the correct compressed factor and paired transpose block. It does not rescue the original fixed-reference geometric determinant and does not prove multiplicativity or functional-measure transport.
