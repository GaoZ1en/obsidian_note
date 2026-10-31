# Independent calculation: Barbero holonomy and hypersurface dependence

**Date:** 2026-10-31. **Status:** analytic derivation with exact component/matrix checks. This calculation was performed without reading another agent's or the parent research reports, and without auditing external papers.

## 1. Result

**For real \(\gamma\ne0\), the standard \(A_\gamma=\Gamma+\gamma K\) does not, on all spacelike hypersurfaces, arise as the restriction of one hypersurface-independent spacetime \(SO(3)\) connection, even up to ordinary single-valued gauge transformations.** The corresponding assertion for its \(SU(2)\) lift fails as well.

For the specified *same spacetime circle*, with \(s=R/a>0\), the adjoint traces are

\[
\boxed{\operatorname{Tr}_{3}H_{\mathrm{plane}}=3,\qquad
\operatorname{Tr}_{3}H_{\mathrm{hyp}}=
1+2\cos\!\left(2\pi\sqrt{1+(1+\gamma^2)s^2}\right).}
\tag{1}
\]

The disagreement is generic, not universal for each individual circle. There are discrete radii at which the hyperboloid holonomy is accidentally the identity in \(SO(3)\). For every fixed real \(\gamma\), choosing

\[
\frac Ra=\frac{\sqrt5}{2\sqrt{1+\gamma^2}}
\]

gives hyperboloid trace \(-1\), versus plane trace \(3\), so the all-hypersurfaces claim is decisively excluded.

For \(\gamma=\pm i\), the appropriate group is complex \(SO(3,\mathbb C)\), or its spin cover \(SL(2,\mathbb C)\), not real \(SU(2)\). Both holonomies are the identity. These are the two chiral projections of the Lorentz spacetime connection; the projection is a Lie-algebra homomorphism precisely when \(\gamma^2=-1\).

This result is **not** a failure of canonical equivalence with general relativity. It also does **not** exclude a connection depending on an additional timelike normal, or a connection on an enlarged base whose points are \((x,n)\).

## 2. Conventions and the two embeddings

Use signature \(\eta_{IJ}=\operatorname{diag}(-1,1,1,1)\), spatial orientation \(\epsilon_{123}=+1\), and the torsion equation

\[
de^I+\omega^I{}_J\wedge e^J=0,\qquad
\omega^{IJ}=-\omega^{JI},\qquad
\omega^I{}_J=\omega^{IK}\eta_{KJ}.
\]

The future unit normal is \(u=E_0\). The extrinsic-curvature sign and the connection conventions are

\[
K_{ab}=q_a{}^\mu q_b{}^\nu\nabla_\mu u_\nu,
\qquad K^i=\omega^{0i},\qquad
\Gamma^i=-\frac12\epsilon^i{}_{jk}\omega^{jk}.
\tag{2}
\]

In particular \(\omega^i{}_0=\omega^{0i}\), and on a time-gauge hypersurface \(K_{ab}=K_a^i e_{bi}\). There is no minus-sign conversion hidden in the definition of \(K\).

Choose the adjoint generators explicitly as

\[
(J_i)^j{}_k=-\epsilon_{ijk},\qquad
[J_i,J_j]=\epsilon_{ij}{}^kJ_k.
\]

For \(A=A^iJ_i\), use

\[
F=dA+A\wedge A,
\qquad
F^i=dA^i+\tfrac12\epsilon^i{}_{jk}A^j\wedge A^k.
\]

Parallel transport obeys \(\dot V+A(\dot C)V=0\), so \(H=\mathcal P\exp(-\int_C A)\). Reversing this holonomy sign convention changes the matrix to its inverse but not any trace reported here. The parameter \(\gamma\) is dimensionless; \(a,R,t,r,\tau\) have dimensions of length.

Write

\[
T=\sqrt{a^2+R^2},\qquad
C(\phi)=(T,R\cos\phi,R\sin\phi,0),\quad 0\le\phi\le2\pi.
\]

The first hypersurface is \(\Sigma_0=\{t=T\}\), with \(u_0=\partial_t\). The second is

\[
\Sigma_a=\{t^2-r^2=a^2,\ t>0\},\qquad
u_a=\frac1a(t\partial_t+x\partial_x+y\partial_y+z\partial_z).
\]

Thus \(u_a\) is future pointing, and \(C\) lies in both hypersurfaces. Each hypersurface is diffeomorphic to \(\mathbb R^3\), and \(C\) bounds a smooth disk in each. Coordinate singularities of spherical frames are not singularities of the geometry or of the connections.

## 3. Torsionless connections and curvatures

### 3.1 Constant-time plane

In spherical coordinates on Minkowski space choose

\[
e^0=dt,\quad e^1=dr,\quad e^2=r\,d\theta,\quad e^3=r\sin\theta\,d\phi.
\]

Solving the torsion equation gives

\[
\omega^{0i}=0,\qquad
\omega^{12}=-d\theta,\quad
\omega^{13}=-\sin\theta\,d\phi,\quad
\omega^{23}=-\cos\theta\,d\phi.
\tag{3}
\]

The omitted upper-index components follow by antisymmetry. Therefore

\[
K^i=0,\qquad
(\Gamma^1,\Gamma^2,\Gamma^3)
=(\cos\theta\,d\phi,-\sin\theta\,d\phi,d\theta).
\tag{4}
\]

The four-dimensional Lorentz curvature, the intrinsic three-dimensional curvature, and \(F(A_\gamma)\) all vanish. For example,

\[
F^1_\Gamma=d(\cos\theta\,d\phi)
+(-\sin\theta\,d\phi)\wedge d\theta=0,
\]

and the remaining two components vanish similarly. The nonzero spherical coefficients are a frame effect; in a global Cartesian triad, \(\Gamma=K=A_\gamma=0\).

### 3.2 Hyperboloid

Use Milne coordinates in the interior of the future light cone:

\[
t=\tau\cosh\rho,\quad r=\tau\sinh\rho,
\]

\[
ds^2=-d\tau^2+\tau^2\left[d\rho^2+\sinh^2\rho(d\theta^2+\sin^2\theta\,d\phi^2)\right].
\]

Choose the time-gauge coframe

\[
e^0=d\tau,\quad e^1=\tau\,d\rho,\quad
e^2=\tau\sinh\rho\,d\theta,\quad
e^3=\tau\sinh\rho\sin\theta\,d\phi.
\tag{5}
\]

For instance,

\[
\begin{aligned}
de^1&=\tau^{-1}e^0\wedge e^1,\\
de^2&=\tau^{-1}e^0\wedge e^2+
\frac{\coth\rho}{\tau}e^1\wedge e^2,\\
de^3&=\tau^{-1}e^0\wedge e^3+
\frac{\coth\rho}{\tau}e^1\wedge e^3+
\frac{\cot\theta}{\tau\sinh\rho}e^2\wedge e^3.
\end{aligned}
\]

The unique metric-compatible torsionless connection is

\[
\begin{aligned}
\omega^{01}&=d\rho,&
\omega^{02}&=\sinh\rho\,d\theta,&
\omega^{03}&=\sinh\rho\sin\theta\,d\phi,\\
\omega^{12}&=-\cosh\rho\,d\theta,&
\omega^{13}&=-\cosh\rho\sin\theta\,d\phi,&
\omega^{23}&=-\cos\theta\,d\phi.
\end{aligned}
\tag{6}
\]

The full Lorentz curvature \(R^I{}_J=d\omega^I{}_J+\omega^I{}_K\wedge\omega^K{}_J\) vanishes, as it must in Minkowski space.

On \(\tau=a\), equations (2) and (6) give

\[
K^i=\frac{e^i}{a},\qquad K_{ab}=\frac1a q_{ab},\qquad K^a{}_a=\frac3a,
\tag{7}
\]

\[
(\Gamma^1,\Gamma^2,\Gamma^3)
=(\cos\theta\,d\phi,-\cosh\rho\sin\theta\,d\phi,\cosh\rho\,d\theta).
\tag{8}
\]

An independent coordinate check is \(u_\mu=(-1,0,0,0)\) in Milne coordinates, giving
\(K_{ab}=\Gamma^\tau{}_{ab}=\tfrac12\partial_\tau q_{ab}=q_{ab}/\tau\). This fixes the requested positive extrinsic-curvature convention.

The intrinsic curvature and the rotational curvature have opposite signs under the chosen dualization:

\[
{}^{(3)}R^{ij}=-\frac1{a^2}e^i\wedge e^j,
\qquad
F_\Gamma^i=-\frac12\epsilon^i{}_{jk}{}^{(3)}R^{jk}
=\frac1{2a^2}\epsilon^i{}_{jk}e^j\wedge e^k.
\tag{9}
\]

Also \(D_\Gamma K^i=0\). Hence

\[
\boxed{F^i(A_\gamma)=F_\Gamma^i+\gamma D_\Gamma K^i+
\frac{\gamma^2}{2}\epsilon^i{}_{jk}K^j\wedge K^k
=\frac{1+\gamma^2}{2a^2}\epsilon^i{}_{jk}e^j\wedge e^k.}
\tag{10}
\]

Explicitly, the connection and its curvature are

\[
\begin{aligned}
A^1&=\gamma\,d\rho+\cos\theta\,d\phi,\\
A^2&=\gamma\sinh\rho\,d\theta-\cosh\rho\sin\theta\,d\phi,\\
A^3&=\cosh\rho\,d\theta+\gamma\sinh\rho\sin\theta\,d\phi,
\end{aligned}
\tag{11}
\]

\[
\begin{aligned}
F^1&=(1+\gamma^2)\sinh^2\rho\sin\theta\,d\theta\wedge d\phi,\\
F^2&=(1+\gamma^2)\sinh\rho\sin\theta\,d\phi\wedge d\rho,\\
F^3&=(1+\gamma^2)\sinh\rho\,d\rho\wedge d\theta.
\end{aligned}
\tag{12}
\]

In particular, the real Barbero curvature is not the Lorentz curvature: the latter is zero here. This is not a violation of flatness of spacetime.

## 4. Exact adjoint holonomy

On the plane, \(C\) has \(r=R,\theta=\pi/2\), so

\[
A|_C=-J_2\,d\phi,
\qquad H_{\mathrm{plane}}=\exp(2\pi J_2)=\mathbf1_3.
\tag{13}
\]

On the hyperboloid,

\[
\tau=a,\qquad \rho=\rho_0=\operatorname{arsinh}(R/a),\qquad\theta=\pi/2.
\]

Put

\[
s=\sinh\rho_0=R/a,\qquad c=\cosh\rho_0=\sqrt{1+s^2},
\qquad M=-cJ_2+\gamma sJ_3.
\]

Then \(A|_C=M\,d\phi\) is constant, and no path ordering remains:

\[
H_{\mathrm{hyp}}=\exp(-2\pi M).
\]

Since \(M\) is the cross-product matrix of \(v=(0,-c,\gamma s)\),

\[
\lambda^2=v\cdot v=c^2+\gamma^2s^2=1+(1+\gamma^2)s^2,
\]

\[
M^3=-\lambda^2M,\qquad \operatorname{Tr}M=0,\qquad
\operatorname{Tr}M^2=-2\lambda^2.
\]

The Rodrigues formula therefore yields

\[
H_{\mathrm{hyp}}=\mathbf1_3-
\frac{\sin(2\pi\lambda)}{\lambda}M+
\frac{1-\cos(2\pi\lambda)}{\lambda^2}M^2,
\tag{14}
\]

and taking its trace proves (1). For real \(\gamma\), take \(\lambda>0\). For complex \(\gamma\), the expression extends analytically in \(\lambda^2\); no square-root branch affects the trace. Only \(\lambda=1\) is needed for \(\gamma=\pm i\).

For these chiral values, \(c^2-s^2=1\) implies \(\lambda=1\), and (14) gives the *full matrix* \(H=\mathbf1_3\). Equality of traces alone would be a weaker result for complex groups; it is not the basis of the conclusion here.

The small-circle check is

\[
\operatorname{Tr}_3H_{\mathrm{hyp}}
=3-\pi^2(1+\gamma^2)^2(R/a)^4
+\frac{\pi^2}{2}(1+\gamma^2)^3(R/a)^6+O((R/a)^8).
\tag{15}
\]

This agrees with a small-loop rotation angle of magnitude
\(\pi(1+\gamma^2)R^2/a^2\), inferred directly from (10). It also gives the plane limit \(a\to\infty\) at fixed \(R\).

## 5. Full-loop frame transitions: why the result is not a spherical-frame artifact

### 5.1 The \(SO(3)\) frame is periodic

At \(\theta=\pi/2\), the rotation from a smooth Cartesian-oriented triad to the spherical triad is

\[
O(\phi)=
\begin{pmatrix}
\cos\phi&\sin\phi&0\\
0&0&-1\\
-\sin\phi&\cos\phi&0
\end{pmatrix}.
\tag{16}
\]

It obeys

\[
O\in SO(3),\quad O(2\pi)=O(0),\quad
-dO\,O^{-1}=-J_2\,d\phi.
\]

Thus (4) is exactly the pure-gauge plane connection along the loop. For the gauge convention

\[
A_{\mathrm{sph}}=O A_{\mathrm{smooth}}O^{-1}-dO\,O^{-1},
\]

parallel transport satisfies

\[
U_{\mathrm{sph}}(2\pi,0)=O(2\pi)U_{\mathrm{smooth}}(2\pi,0)O(0)^{-1}.
\]

The endpoint values agree, so the two closed holonomies are conjugate and have identical adjoint trace. There is no extra \(SO(3)\) endpoint factor capable of eliminating the hyperboloid result.

There is also a globally smooth time-gauge triad on the hyperboloid. At spatial point \(x\), let \(t=\sqrt{a^2+|x|^2}\) and use the rotation-free boost carrying \((1,0,0,0)\) to \(u_a=(t/a,x/a)\). Its spatial triad is

\[
\bar E_i=\left(\frac{x_i}{a},\;
\delta_i{}^j+\frac{x_i x^j}{a(t+a)}\right).
\tag{17}
\]

It is smooth even at \(x=0\). The spherical triad is obtained from this triad by the same ordinary spatial rotation (16) along the circle. Therefore the preceding endpoint argument applies to the hyperboloid as well, independently of the coordinate frame's failure at the center of the spanning disk.

### 5.2 The spin lift is antiperiodic and needs a central transition

For real \(\gamma\), take \(j_i=-i\sigma_i/2\) in the fundamental representation of \(SU(2)\). A continuous lift of (16) on the cut interval is

\[
g(\phi)=\exp(\phi j_2)\exp\!\left(\frac\pi2j_1\right),
\qquad g(2\pi)=-g(0).
\tag{18}
\]

The spherical \(SO(3)\) frame makes the nontrivial loop in \(\pi_1(SO(3))\). It does not have a periodic spin lift compatible with the spin structure extending over the spanning disk. Both hypersurfaces are \(\mathbb R^3\), so this extendible spin structure is fixed.

The exponential computed in the continuous cut spin frame is

\[
U_{\mathrm{cut}}=\exp[-2\pi(-cj_2+\gamma s j_3)],
\qquad \operatorname{Tr}_2 U_{\mathrm{cut}}=2\cos(\pi\lambda).
\]

To obtain a *closed-loop* spin holonomy in a single smooth frame one must identify the endpoint spin frames:

\[
H_{\mathrm{smooth}}=g(2\pi)^{-1}U_{\mathrm{cut}}g(0)
=g(0)^{-1}[-U_{\mathrm{cut}}]g(0).
\]

Consequently,

\[
\boxed{\operatorname{Tr}_2 H_{\mathrm{plane}}=2,\qquad
\operatorname{Tr}_2 H_{\mathrm{hyp}}=-2\cos(\pi\lambda).}
\tag{19}
\]

The plane gives \(U_{\mathrm{cut}}=-\mathbf1_2\), but the transition produces \(H=+\mathbf1_2\), as flatness and contractibility require. Forgetting this transition falsely assigns \(-\mathbf1_2\) to a flat contractible plane loop. One can regard the missing minus sign as a patch transition at a chosen azimuthal cut; it is not an arbitrary adjustment of the holonomy.

For \(\gamma=\pm i\), the same computation takes place in \(SL(2,\mathbb C)\). The central transition is unchanged and the closed holonomy is again \(+\mathbf1_2\).

## 6. What is excluded, and why the chiral values are different

The precise hypothesis excluded by (1) is the following:

> There is a single connection \(\mathcal A_\gamma\) on a fixed spacetime \(SO(3)\) bundle, specified without selecting a hypersurface or normal, whose pullback to every spacelike hypersurface is the standard \(\Gamma+\gamma K\), up to genuine single-valued \(SO(3)\) gauge transformations and compatible bundle identifications.

A spacetime curve shared by two hypersurfaces would then have the same conjugacy class of holonomy in both computations. Equation (1), with the explicit \(\lambda=3/2\) example, contradicts this consequence. The proof does not assume that an arbitrary hypothetical \(\mathcal A_\gamma\) must be flat whenever the Lorentz metric is flat: the plane already fixes the holonomy of this particular curve to be the identity.

The algebraic obstruction can be derived directly. Let \(L_i\) and \(B_i\) denote Lorentz rotations and boosts with

\[
[L_i,L_j]=\epsilon_{ij}{}^kL_k,\qquad
[L_i,B_j]=\epsilon_{ij}{}^kB_k,\qquad
[B_i,B_j]=-\epsilon_{ij}{}^kL_k.
\]

In the present matrix conventions, \(\omega=\Gamma^iL_i+K^iB_i\). The projection defining \(A_\gamma\) is

\[
p_\gamma(L_i)=J_i,\qquad p_\gamma(B_i)=\gamma J_i.
\]

For two boosts,

\[
p_\gamma([B_i,B_j])=-\epsilon_{ij}{}^kJ_k,
\qquad
[p_\gamma(B_i),p_\gamma(B_j)]=\gamma^2\epsilon_{ij}{}^kJ_k.
\]

The mixed and rotation brackets already agree. Thus

\[
\boxed{p_\gamma\text{ is a Lie-algebra homomorphism}\quad\Longleftrightarrow\quad\gamma^2=-1.}
\tag{20}
\]

For those two complex values, the projection integrates to the relevant chiral group representation, \(A_{\pm i}\) is a genuine chiral spacetime connection, and

\[
F(A_{\pm i})=p_{\pm i}(R(\omega)).
\]

The labels “self-dual” versus “anti-self-dual” depend on the chosen four-dimensional Hodge-star orientation; the two values themselves are unambiguous with (2). In this simply connected flat spacetime region, all contractible chiral holonomies are identity, not merely the displayed circle. In curved spacetime the chiral curvatures need not vanish, but the spacetime-connection interpretation remains.

For general \(\gamma\), the useful curvature identity is

\[
F^i(A_\gamma)=p_\gamma(R)^i+
\frac{1+\gamma^2}{2}\epsilon^i{}_{jk}K^j\wedge K^k.
\tag{21}
\]

In particular, projecting a Lorentz connection or its coefficients does not make its projected holonomy the holonomy of a Lorentz-covariant spacetime connection. For real \(\gamma\), the projection is covariant under the normal-preserving rotation subgroup, not under arbitrary changes of the time-gauge normal.

### Canonical equivalence is a different assertion

For fixed nonzero real \(\gamma\), the relation \(K=(A_\gamma-\Gamma)/\gamma\) is invertible at the usual nondegenerate canonical level. Whether the associated variables, Poisson brackets, constraints, boundary terms and reality conditions realize a canonical equivalence is a separate question, not decided by this Wilson loop calculation.

In particular, the spatial Barbero Wilson loop need not be a Dirac observable invariant under refoliations. Its change under a change of normal is not by itself an inconsistency of the canonical formulation or a demonstration of inequivalence with general relativity. Conversely, this report has not independently proved a complete canonical or quantum equivalence.

## 7. A normal-dependent connection exists: an explicit augmented construction

The exclusion above must not be broadened to prohibit all geometric connections associated with real \(\gamma\).

Let \(P\to M\) be the oriented, time-oriented orthonormal Lorentz frame bundle, carrying its Lorentz connection one-form \(\omega\). Put

\[
\mathcal H=P/SO(3)\simeq\{(x,n):n\in T_xM,\ n^2=-1,\ n\text{ future pointing}\}.
\]

The same total space \(P\), now viewed as \(P\to\mathcal H\), is a principal \(SO(3)\) bundle. For any real \(\gamma\),

\[
\mathscr A_\gamma=p_\gamma(\omega)
\tag{22}
\]

is an \(SO(3)\) connection on this bundle. Indeed, \(p_\gamma\) is \(SO(3)\)-equivariant and is the identity on the rotation subalgebra, which gives precisely equivariance and reproduction of the vertical \(SO(3)\) generators. It need not be a Lorentz Lie-algebra homomorphism for this statement.

A hypersurface with future normal \(u_\Sigma\) defines a lift

\[
\Sigma\longrightarrow\mathcal H,\qquad x\longmapsto(x,u_\Sigma(x)).
\]

The pullback of (22), expressed in an adapted frame, is exactly \(\Gamma+\gamma K\). But the two curves relevant here lift to

\[
(C,u_0|_C)\quad\hbox{and}\quad(C,u_a|_C),
\]

which are different curves in \(\mathcal H\). Different holonomies are therefore entirely consistent.

Equivalently, choosing one smooth timelike unit-normal field throughout spacetime gives an \(SO(3)\) reduction and an ordinary connection on it. That connection depends on the chosen field. Calling it a “spacetime connection” in this enlarged or normal-dependent sense does not assert the hypersurface-independent pullback property excluded in Section 6.

## 8. Counterexamples to overbroad inferences

1. **“Every nonzero circle gives different adjoint traces” is false.** For fixed real \(\gamma\),
   \[
   \lambda=n,\quad n=2,3,\ldots,\qquad
   R/a=\sqrt{\frac{n^2-1}{1+\gamma^2}}
   \]
   gives \(H_{\mathrm{hyp}}=\mathbf1_3\), even though its curvature is nonzero. For the spin lift the closed holonomy is \((-1)^{n+1}\mathbf1_2\): odd \(n\) also agrees with the plane, while even \(n\) does not. Equality for selected loops is not evidence for an all-loops pullback property.

2. **“Every change of normal is detected” is false.** The spacelike affine planes \(t=T+bz\), with \(|b|<1\), all contain the same \(C\). They have different constant normals but \(K=0\), intrinsically flat geometry, and identity contractible Barbero holonomies. The calculation excludes a universal property, not all special coincidences.

3. **“Any nonzero extrinsic curvature forces nontrivial Barbero holonomy” is false.** Consider the spacelike graph \(t=T+f(z)\), with \(f(0)=0\) and \(|f'|<1\). Set \(\alpha(z)=\operatorname{artanh}f'(z)\). A smooth adapted frame has \(\Gamma=0\), \(K^3=d\alpha\), \(K^1=K^2=0\), so \(A_\gamma=\gamma J_3d\alpha\) is flat and pure gauge, even where \(f''\ne0\). The graph contains \(C\), whose holonomy is identity. This is the rank-one case \(K\wedge K=0\) in (21).

4. **“The problem occurs only for nonzero real \(\gamma\)” is too narrow geometrically.** Setting \(\gamma=0\) in (1) and (10) still gives the generic obstruction. The exclusion of zero matters for the usual invertible canonical change of variables, not for the holonomy comparison.

5. **“There is no real spacetime connection” is false.** The original real Lorentz spin connection exists and is flat in this example. The no-go concerns the specific three-component real Barbero connection with the universal pullback property, not arbitrary real gauge groups, arbitrary auxiliary fields, or nonlinear constructions unrelated to that property.

6. **“Agreement for the chiral values is merely a circular-loop accident” is false.** The Lie-algebra argument (20), not the finite family of circles alone, establishes the chiral spacetime connection interpretation. On the other hand, these particular circular traces are even in real \(\gamma\) and cannot by themselves distinguish \(\gamma\) from \(-\gamma\) as general connections or formulations.

7. **“Failure of the pullback property forbids a local extension from one slice” is false.** Any smooth connection on a fixed slice can be extended over a product neighborhood after choosing a transverse trivialization and normal component. Such an extension is not required to agree with independently constructed Barbero connections on other slices.

## 9. Verification scope and limitations

### Analytic proof completed

- Solved the Cartan equations for both tetrads, with the mixed/upper Lorentz-index sign tracked explicitly.
- Checked \(K_{ab}=+q_{ab}/a\), intrinsic hyperbolic curvature, vanishing Lorentz curvature, and the full \(A_\gamma\) curvature.
- Derived exact holonomies using a constant generator and its minimal polynomial.
- Included closed-loop \(SO(3)\) and spin-frame transitions, with a globally smooth hyperboloid triad fixing the extendible spin structure.
- Proved the precisely stated pullback obstruction and the homomorphism criterion \(\gamma^2=-1\).
- Constructed the normal-augmented connection and searched for the explicit counterexamples listed above.

### Exact CAS checks completed

Two successful fresh-kernel Wolfram/xAct-core runs returned **26 Boolean checks, all `True`**. The checks used explicit component differential geometry and exact matrices; they did not rely on an assumed abstract xAct identity.

The first batch checked the generator commutators; torsion and Lorentz curvature on both tetrads; hyperboloid and plane Barbero curvatures; intrinsic hyperbolic curvature; \(D_\Gamma K=0\); the positive coordinate extrinsic curvature; the holonomy-generator minimal polynomial and traces; and the chiral norm.

The second checked Lorentz rotation and boost brackets; the projection obstruction; orthogonality, determinant, connection and periodicity of the spherical rotation; antiperiodicity of its spin lift; the exact \(\lambda=3/2\) trace \(-1\); an integer-\(\lambda\) identity example; full chiral identity holonomy; the spin-generator square; and the Rodrigues trace. It also returned the exact small-radius series (15). An initial second-batch attempt used Wolfram's protected symbol `O` as a variable and aborted; replacing that local variable with `rotSpherical` produced the successful full rerun, without suppressing diagnostics.

The saved [self-contained Wolfram reproducer](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent_barbero_holonomy_20261031_91f8f9a6.wl>) contains the two successful batches. A further fresh-kernel execution of the combined definitions returned `GeometryCheckCount -> 14`, `HolonomyCheckCount -> 12`, and `All26ChecksPass -> True`. Wolfram and xAct here are one computational implementation, not independent numerical implementations.

### Assumptions and items not claimed

- Smooth Minkowski geometry, the stated positive extrinsic-curvature sign, \(a,R>0\), the ordinary extendible spin structure, and smooth gauge/bundle identifications are assumed.
- There are no physical boundaries or noncontractible spacetime loops in this example; no boundary-condition or global-topology extension is claimed.
- No external paper, other agent report, parent report, quantum construction, full constraint algebra, or canonical boundary analysis was independently audited.
- The augmented-bundle construction and the graph counterexample were proved analytically, not separately encoded in the CAS batches.
- A further independent fresh-agent review of this report was not performed because delegation depth was exhausted. The calculation itself is the independent report requested by the delegating agent; CAS is supplementary verification, not a substitute for that distinction.
- Only the two new uniquely named report/reproducer files were created. Existing research notes were not modified.
