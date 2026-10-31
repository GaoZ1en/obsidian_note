# A nonlinear complete-manifold CS BV domain and a genuine tree stationary-elimination theorem

## Result

**A local tree-level theorem holds for the actual gravitational CS complex under the supplied complete-operator hypotheses.** A convenient primary domain is the form-degree-shifted Sobolev completion

\[
\boxed{\mathcal X=\bigoplus_{p=0}^3 H^{5-p}(M,E^p),\qquad
(c,\alpha,\alpha^*,c^*)\in H^5\oplus H^4\oplus H^3\oplus H^2.}
\]

Here the displayed antifield components include the fixed internal exchange and \(\kappa^{-1}\) factors in the question. On this completion, both the differential and the bracket are bounded in their graded senses. The CS BV vector field is therefore tangent to this Banach scale packaging; it is **not** being incorrectly treated as a bounded vector field on an equal-regularity \(H^s\) space.

Let \(\mathcal L=R\ker\delta\cap\mathcal X\). It is a closed maximal isotropic subspace of \(R\mathcal X\), and, with these mixed norms,

\[
\mathcal L=\operatorname{im}(h:\mathcal X\to\mathcal X).
\]

This statement does **not** mean that \(\operatorname{im}(h:L^2\to L^2)\) is closed. The latter is generally a proper, nonclosed regularity subspace of the closed Hilbert Lagrangian \(R\ker\delta\).

For sufficiently small retained physical fields \(x\in P H^4(E^1)\), there is a unique small real UV stationary field \(z(x)\in\mathcal L^1\). It is smooth with every Sobolev norm finite. There is a unique full formal BV extension around that physical ball, including the **even, nonnilpotent formal ghost antifields**. Its equation and effective action are

\[
\boxed{z=-\tfrac12h_T[x+z,x+z],\qquad S_{\rm tree}(x)=S(x+z(x)).}
\]

The tree series converges on the physical ball. All its finite formal BV jets are continuous there. The first new interaction is

\[
\boxed{S_4(x)=-\tfrac18\beta\bigl(h_T[x,x],[x,x]\bigr),}
\]

and the full tree action obeys the retained classical master equation. In particular,

\[
\boxed{2(S_2,S_4)_P+(S_3,S_3)_P=0.}
\]

These are actual stationary-action and analytic/formal extension statements, not merely an invocation of formal homological perturbation theory.

**A separate interface obstruction is real:** the exact geometric-to-CS map does **not** extend continuously when both sides are assigned the naive same \(\mathcal X\) regularities. Already \(\tau=\iota_\xi e\), with \(e-\bar e\in H^4\) and \(\xi\in H^5\), need not lie in \(H^5\). Section 10 gives a smooth compact-support, one-Grassmann-generator counterexample. Thus this CS completion cannot silently be transported through the earlier nonlinear geometric BV map.

## 1. Inputs, conventions, and independence

This derivation began with the question's linear facts, not a proposed nonlinear theorem. A later parent message supplied the useful refinement that the literal \(L^2\) image of \(h\) is nonclosed; no independent proof of the gravitational operator identities is claimed here. A subsequent parent request asked for an independent test of the geometric ghost-body map, without supplying a candidate answer.

The manifold is \(\mathbb H^3\), or the fixed marked loxodromic cyclic quotient, with curvature radius one, no actual finite spectral wall, and bounded geometry. Define \(E^p=\Lambda^pT^*M\otimes(\mathbb R^3\oplus\mathbb R^3)\). For fixed \(1\leq\Lambda<\infty\), set

\[
P=1_{[0,\Lambda^2]}(\Delta),\qquad R=1-P,\qquad
h=\delta\Delta^{-1}R.
\]

The flat differential is

\[
D(w,f)=(D_\omega w-[e,f],D_\omega f+[e,w]).
\]

The real gravitational Lie algebra has bracket

\[
[(w,f),(v,u)]=([w,v]-[f,u],[w,u]+[f,v])
\]

with the exterior-form signs understood, and invariant bilinear form

\[
B((w,f),(v,u))=\kappa(w\cdot u+f\cdot v),\qquad \kappa=2a>0.
\]

The integrated pairing is \(\beta(u,v)=\int_M B(u\wedge v)\), only for complementary form degrees. The positive Hilbert norm used to define \(\delta=D^\dagger\) is not this indefinite invariant form. We assume the stated selfadjoint gapped Laplacian, equivalence of its Sobolev scales to geometric ones, functional calculus, cyclic homotopy, and \(H\Delta=\Delta H\), where \(H=S*\).

The totalization is exactly the question's:

\[
(au)(bv)=(-1)^{\deg(u)\,\operatorname{gh}(b)}ab\,u\wedge v,
\quad D_T(au)=(-1)^{\operatorname{gh}(a)}aDu,
\quad h_T(au)=(-1)^{\operatorname{gh}(a)}ahu.
\]

The same rule extends \(\beta\). The superfield has total degree one,

\[
\Psi=c+\alpha-\kappa^{-1}S\alpha^*+\kappa^{-1}Sc^*,
\]

with ghost numbers \((1,0,-1,-2)\), and

\[
S(\Psi)=\tfrac12\beta(\Psi,D_T\Psi)
+\tfrac16\beta(\Psi,[\Psi,\Psi]).
\]

The action and antibracket conventions are those stated in the question and in [note 16:90–109](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/16 Nonlinear BV map and finite density transport.md#L90-L109>). In particular the ghost antifield is even; it is not made nilpotent by calling it an antifield.

The original wall conventions were read in [note 14:45–126](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/14 Geometric CS Gaussian map and regulator.md#L45-L126>) and [note 16:18–53](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/16 Nonlinear BV map and finite density transport.md#L18-L53>). No original note was edited. The CPS conventions in [the authoritative formalism:7–25](</Users/koishi/Documents/Note/Articles/Quantization in AdS/perturbation/formalism.md#L7-L25>) retain boundary and corner data; the present bulk odd BV construction does not replace that even regional structure.

## 2. Why this nonlinear domain works on infinite volume

Use the spectral norm \(\|u\|_{H^t}=\|\Delta^{t/2}u\|_2\); the gap makes this equivalent to the usual inhomogeneous geometric norm. All estimates below are coefficientwise in a finite graded coefficient algebra, or for continuous formal jets. Constants may depend on the fixed geometry and Sobolev orders, not on compact support.

On a bounded-geometry three-manifold, for \(t>3/2\), \(H^t\) embeds continuously in \(L^\infty\) and is a multiplication algebra. More generally, if both exponents exceed \(3/2\), multiplication takes \(H^a\times H^b\) continuously to \(H^{\min(a,b)}\). These are global estimates obtained with a uniformly locally finite bounded-geometry partition, not compact-volume inequalities.

For components of degrees \(p,q\), with \(p+q\leq3\),

\[
H^{5-p}\times H^{5-q}\longrightarrow
H^{\min(5-p,5-q)}\hookrightarrow H^{5-p-q}.
\]

Consequently

\[
\|[u,v]\|_{\mathcal X}\leq C\|u\|_{\mathcal X}\|v\|_{\mathcal X}.
\tag{2.1}
\]

The bundle bracket has bounded parallel coefficients in geometric trivializations. No global boundedness of a chosen connection potential is needed.

The energy estimate for \(\Delta=D\delta+\delta D\), together with commutation across the complex, gives

\[
D:H^t(E^p)\to H^{t-1}(E^{p+1}),\qquad
h:H^t(E^p)\to H^{t+1}(E^{p-1}).
\]

Therefore

\[
D_T:\mathcal X\to\mathcal X,\qquad h_T:\mathcal X\to\mathcal X
\tag{2.2}
\]

are bounded, as are \(P,R\). With a compatible direct-sum norm the spectral estimates can be chosen \(\|D\|\leq1\), \(\|h\|\leq1\). No \(\Lambda^{-1}\) gain is claimed in this mixed norm: the degree shift uses the derivative gain.

The action is an actual continuous polynomial on this graded completion. Its integrals are absolutely controlled by

\[
\int|u\,Dv|\leq\|u\|_2\|Dv\|_2,
\qquad
\int|u v w|\leq\|u\|_\infty\|v\|_2\|w\|_2.
\tag{2.3}
\]

In particular, infinite volume causes no divergence here. It would be wrong instead to use a volume-dependent inclusion \(L^2\subset L^1\), or to treat the nondecaying background coframe itself as an element of this fluctuation space.

Compactly supported smooth sections are dense in each factor, hence in \(\mathcal X\). All integration-by-parts and cyclic identities extend by continuity. The polynomial CS Hamiltonian vector field has its components in \(\mathcal X\), and its square vanishes by flatness and Jacobi, first on the smooth core and then by continuity. This is a genuine \(Q\)-stable completion of the CS fluctuation complex.

The pairing is weakly nondegenerate on \(\mathcal X\), not an isomorphism from \(\mathcal X\) onto its Banach dual. We therefore do not assert that every smooth functional on \(\mathcal X\) has a Hamiltonian vector field. The CS action does have one. On \(P\mathcal X\), all Sobolev norms are equivalent to \(L^2\) for fixed \(\Lambda\); since \(P\) commutes with \(H\), the restricted pairing is strongly nondegenerate. The retained action and its antibracket consequently present no analogous weak-symplectic obstruction.

**Equal-order alternative.** For \(s>3/2\), \(Y_s=\oplus_pH^s(E^p)\) is also a useful action/stationarity domain, with \(h:Y_s\to Y_s\) norm at most \(\Lambda^{-1}\). But \(D:Y_s\to Y_{s-1}\), so the full \(Q\) is not a vector field on \(Y_s\). One must use the Sobolev scale or \(H^\infty=\cap_tH^t\), not conceal that loss. The primary \(\mathcal X\) choice avoids it by using the actual form-degree pattern of all BV variables.

## 3. The UV Lagrangian and the topology of the image

Set

\[
C=hD,\qquad E=Dh.
\]

They are bounded on \(\mathcal X\) and satisfy

\[
C^2=C,\quad E^2=E,\quad CE=EC=0,\quad C+E=R.
\]

Since \(hDh=h\),

\[
\operatorname{ran}C=\operatorname{ran}h
=R\ker\delta\cap\mathcal X=:\mathcal L.
\tag{3.1}
\]

This proves closedness in the mixed norm without falsely assigning the individual maximal \(D_p\) domains to \(H^1\). Only the stated bounded maps between Sobolev orders are used.

Cyclicity and \(h^2=0\) imply \(\beta(\mathcal L,\mathcal L)=0\). If \(y\in R\mathcal X\) annihilates \(\mathcal L\), cyclicity gives \(hy=0\). Nondegeneracy can be tested against compactly supported smooth complementary forms. Then

\[
y=(Dh+hD)y=hDy\in\mathcal L.
\]

Thus \(\mathcal L=\mathcal L^{\perp_\beta}\) inside \(R\mathcal X\). Also \(\beta(Pu,Rv)=0\), using the assumed commutation with \(H\).

The distinction from the literal Hilbert image matters:

\[
\operatorname{im}(h:L^2\to L^2)
=(R\ker\delta)\cap H^1,
\qquad
\overline{\operatorname{im}h}^{\,L^2}=R\ker\delta.
\tag{3.2}
\]

On a genuine unbounded UV tail the first space is generally nonclosed. Similarly, on equal-order \(Y_s\), the correct closed slice is \(R\ker\delta\cap Y_s=\operatorname{im}(h:Y_{s-1}\to Y_s)\), not the image of the regularizing endomorphism of \(Y_s\). The mixed-degree packaging in (3.1) is precisely why its image can be closed.

The slice retains all form degrees with their correct roles:

| Form degree | BV component | Regularity | UV slice |
| --- | --- | --- | --- |
| 0 | ghost \(c\) | \(H^5\) | \(R H^5(E^0)\) |
| 1 | physical \(\alpha\) | \(H^4\) | \(R\ker\delta_1\cap H^4\) |
| 2 | \(-\kappa^{-1}S\alpha^*\) | \(H^3\) | \(R\ker\delta_2\cap H^3\) |
| 3 | \(\kappa^{-1}Sc^*\) | \(H^2\) | zero |

The last entry follows from the gap and \(D_3=0\). Every degree, including all ghost antifields, remains in the retained space \(P\mathcal X\). The absence of the UV degree-three coordinate is the choice of Lagrangian, not omission of the corresponding BV sector.

## 4. Stationarity is exactly a bounded fixed-point problem

Write \(\Psi=x+z\), with \(x\in P\mathcal X\), \(z\in\mathcal L\), and set

\[
F(\Psi)=D_T\Psi+\tfrac12[\Psi,\Psi].
\]

For an even variation encoded as a degree-one superfield,

\[
dS_\Psi(v)=\beta(v,F(\Psi)).
\tag{4.1}
\]

Stationarity in the UV Lagrangian directions means \(\beta(v,F)=0\) for every \(v\in\mathcal L\). By maximal isotropy and \(P/R\) orthogonality this is equivalent to

\[
RF\in\mathcal L\quad\Longleftrightarrow\quad h_TF=0.
\]

Since \(h_TD_Tx=0\) and \(h_TD_Tz=z\), it is precisely

\[
z=-\tfrac12h_T[x+z,x+z].
\tag{4.2}
\]

This does **not** impose the stronger equation \(RF=0\) at arbitrary off-shell retained fields. That stronger condition would be the wrong stationary problem for a BV fiber Lagrangian.

Choose \(K\) with \(\|h_T[u,v]\|_{\mathcal X}\leq K\|u\|_{\mathcal X}\|v\|_{\mathcal X}\). For \(a=\|x\|\leq\varepsilon\), the map on the right of (4.2), restricted to \(\|z\|\leq a\), obeys

\[
\|\Phi_x(z)\|\leq2Ka^2,
\qquad
\|\Phi_x(z)-\Phi_x(z')\|\leq2Ka\|z-z'\|.
\tag{4.3}
\]

Taking, for example, \(\varepsilon<1/(8K)\) gives a strict contraction, a unique small solution, and

\[
\|z(x)\|\leq2K\|x\|^2.
\]

For the physical body this is an ordinary real Banach-space contraction, with \(x,z\) supported only in form degree one. Shrink the ball further so that \(\|f\|_{L^\infty}\), including the solved UV contribution, is below a fixed number less than one in background orthonormal components. Then \(\bar e+f\) stays globally oriented and nondegenerate. This is an open small-field restriction, not an assumption of the nonlinear equations of motion.

No positive action Hessian or minimization principle is used. The Euclidean gravitational action can be indefinite. The result is a stationary saddle and says nothing about an integration contour or a probability measure.

The linearized equation has

\[
A_x=1+h_T\operatorname{ad}_{x+z(x)},\qquad \|A_x-1\|<1.
\tag{4.4}
\]

Its Neumann inverse proves analytic dependence. Equivalently, the Taylor coefficients are bounded by the Catalan majorant solving \(v=a+(K/2)v^2\). Thus the rooted binary-tree expansion converges for a sufficiently small ball; calling the substituted action a tree action is justified analytically.

## 5. Smoothness and the full formal BV extension

For fixed finite \(\Lambda\),

\[
P H^t\subset\bigcap_m H^m,
\qquad
\|Px\|_{H^m}\leq\Lambda^{m-t}\|x\|_{H^t}\quad(m\geq t).
\tag{5.1}
\]

This is smoothing on a spectral band, not finite rank. The physical fixed-point equation first puts \(z\in H^5\), since its quadratic source is in \(H^4\); iteration puts it in every \(H^m\). The analytic map into \(H^4\) is analytic into each higher \(H^m\) as well, by repeatedly using its own equation. Constants can grow with \(m\) and \(\Lambda\); no uniform analytic-function or pointwise support assertion is made.

To formulate the BV extension correctly, fix the small physical body \(x_0\), and complete formally in the nonphysical retained variables and nilpotent physical increments. The completion uses continuous graded-symmetric multilinear maps on their assigned Banach spaces. Odd variables use exterior powers; the **even** ghost antifields use symmetric powers. They are not assumed nilpotent.

Equivalently, test against each finite-dimensional local graded-commutative algebra with nilpotent augmentation ideal, then require compatibility under its morphisms. This describes formal jets; it is not an assertion that an arbitrary number of independent continuum Grassmann coordinates forms a Banach space of ordinary points.

Suppose lower formal orders have already been solved. At the next order the unknown \(z_n\) obeys

\[
\bigl(1+h_T\operatorname{ad}_{\Psi_0}\bigr)z_n=b_n,
\qquad \Psi_0=x_0+z(x_0),
\tag{5.2}
\]

where \(b_n\) is an explicit polynomial in retained coefficients and lower-order solutions. The operator is the same invertible small-body linearization as in (4.4). This proves existence and uniqueness at every order, not just a recursively asserted tree ansatz.

Every retained coefficient is band-limited and hence smooth in the Sobolev sense. Inductively \(b_n\) is smooth. Because \(\Psi_0\) is smooth and physical, \(h_T\operatorname{ad}_{\Psi_0}\) preserves form degree and gains one derivative. From \(z_n=b_n-h_T[\Psi_0,z_n]\), elliptic/Sobolev bootstrapping gives \(z_n\in H^\infty\). This also proves continuity of each formal jet and its analytic dependence on the physical body.

One may obtain a convergent superanalytic solution for each fixed finite coefficient algebra when all even coefficient norms are small enough. The theorem needed here is weaker and more useful: a convergent physical body with a rigorously defined full formal BV thickening. It does not pretend that formal even antifields are nilpotent or automatically summable at arbitrary values.

## 6. The effective action and the master equation, proved directly

The original CS master identity is valid on this domain. A direct proof uses flatness, invariance of \(B\), cyclic integration by parts, and graded Jacobi:

\[
\beta(D_T\Psi,D_T\Psi)=0,\quad
\beta(D_T\Psi,[\Psi,\Psi])=0,\quad
\beta([\Psi,\Psi],[\Psi,\Psi])=0.
\]

Hence \(\beta(F,F)=0\). These identities can first be proved on compactly supported smooth coefficients, then extended by the estimates in §2. In the stated shifted BV conventions their vanishing is exactly the classical master equation. No regulated functional trace is involved.

Now differentiate the actual stationary action. Since \(dz_x(v)\in\mathcal L\),

\[
\begin{aligned}
dS_{\rm tree,x}(v)
&=\beta(v+dz_x(v),F(x+z))\\
&=\beta(v,PF(x+z)).
\end{aligned}
\tag{6.1}
\]

Thus its retained Hamiltonian gradient is represented by

\[
F_{\rm eff}(x)=D_Tx+\tfrac12P[x+z(x),x+z(x)].
\tag{6.2}
\]

The key observation is \(RF\in\mathcal L\), not \(RF=0\). Orthogonality and isotropy give

\[
\beta(PF,PF)=\beta(F,F)-\beta(RF,RF)=0.
\tag{6.3}
\]

This proves the **full** retained CME, coefficientwise in the formal BV extension and analytically on its physical body. It is the stationary-elimination proof, without replacing the argument by a formal HPT citation.

As a useful consistency check, if the effective equations set \(PF=0\), the Bianchi identity gives

\[
F=-h_T[\Psi,F].
\]

For sufficiently small body the same invertibility argument forces \(F=0\), also formally. Thus effective solutions lift to full solutions locally; arbitrary off-shell retained fields were never required to satisfy the full UV equations.

This is an infinite-rank retained BV theory. No finite-dimensional Lebesgue measure, BV Laplacian, or fiber integral has been constructed.

## 7. Quartic term and its normalization

Write \(z=z_2+z_3+\cdots\), where polynomial order counts every BV variable once. Then

\[
z_2=-\tfrac12h_T[x,x],\qquad z_3=-h_T[x,z_2].
\]

The \(P/R\) orthogonality kills the kinetic cross term. Thus

\[
S_2=\tfrac12\beta(x,D_Tx),\qquad S_3=\tfrac16\beta(x,[x,x]).
\]

At order four,

\[
S_4=\tfrac12\beta(z_2,D_Tz_2)+\tfrac12\beta(z_2,[x,x]).
\]

The degree-two stationarity equation, tested against \(z_2\), gives

\[
\beta(z_2,D_Tz_2)=-\tfrac12\beta(z_2,[x,x]).
\]

Therefore

\[
\boxed{S_4=-\tfrac18\beta(h_T[x,x],[x,x]).}
\tag{7.1}
\]

There is no extra \(\kappa^{-1}\) to append: \(\beta\) already contains \(\kappa\), and the prescribed superfield already contains the antifield normalizations. On total degree-two inputs the totalized homotopy cyclicity has a plus sign, so reversing the two factors in (7.1) does not change the answer.

Expanding the directly proved CME yields

\[
(S_2,S_2)_P=0,\quad (S_2,S_3)_P=0,
\quad 2(S_2,S_4)_P+(S_3,S_3)_P=0.
\tag{7.2}
\]

The last term need not vanish for naive spectral compression. The quartic tree is precisely the first compensation, not an optional coordinate correction.

## 8. Exact finite graded check and its scope

An independently implemented native-Sage calculation checks the universal coefficient-first graded signs in a finite cyclic dg-Lie algebra. It is **not** substituted for the actual hyperbolic gravitational complex. The algebra is the three-dimensional Heisenberg Chevalley–Eilenberg algebra,

\[
d\theta_3=\theta_1\theta_2,\quad d\theta_1=d\theta_2=0,
\quad\int\theta_1\theta_2\theta_3=1,
\]

tensored with \(\mathfrak{su}(2)\) with invariant Euclidean pairing. The contraction retains all harmonic components and the acyclic \(T_3\) pair, eliminating the acyclic \(T_1,T_2\) pairs. It has the cyclic projection/homotopy identities needed to test the transfer algebra. It is not claimed to be the gravitational spectral cutoff.

All retained ghosts, physical fields, physical antifields, and even ghost antifields are present: ten even and ten odd independent generators. Here the exact stationary solution happens to stop at \(z_2\), but the effective quartic contains genuine ghost–antifield terms. The naively compressed cubic has a **nonzero** degree-four master residual. Eleven exact checks all pass, including its cancellation by (7.1), full stationarity, full master identity, and the degree-five and degree-six identities.

For example, the raw naive residual is

\[
2a_{32}(a_{12}a_{20}-a_{10}a_{22})c_0
+2a_{32}(a_{12}a_{21}-a_{11}a_{22})c_1,
\]

so this is not a zero-defect example that could miss the tree cancellation.

The successful server return has no error, warning, stderr, transport error, or truncation. A first invocation failed before evaluating any checks because Sage integer objects lack Python's `bit_count`; the successful implementation explicitly converts those masks with `int`. That API failure is excluded from the evidence, not described as a mathematical test.

Evidence: [exact check output](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/nonlinear-uv-domain-independent-20261031.1LbUTs/sage-checks.json>), [successful raw server return, including complete input](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/nonlinear-uv-domain-independent-20261031.1LbUTs/sage-server-return.json>), [replay source](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/nonlinear-uv-domain-independent-20261031.1LbUTs/finite-graded-check.py>), and [native result](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/nonlinear-uv-domain-independent-20261031.1LbUTs/sage-result.sobj>).

The Sobolev and stationary-existence proofs are analytic arguments above, not claims established by this finite example. This reviewer cannot spawn another independent reviewer at its delegation depth; the parent is responsible for any further fresh review of this report.

## 9. Completion and the original matched physical walls

### 9.1 What fails immediately

Neither \(P\) nor \(h\) preserves compact support or a fixed open collar. Consequently the literal compact-support/fixed-collar field space of [note 16:49–53](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/16 Nonlinear BV map and finite density transport.md#L49-L53>) is not a spectral-transfer domain. The present theorem deliberately changes the domain to its specified Sobolev completion.

It is also false that an \(L^2\), or even \(H^\infty\), fluctuation makes every separate first-order boundary flux vanish. The contorsion tail in [note 14:126](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/14 Geometric CS Gaussian map and regulator.md#L126>) is smooth with square-integrable derivatives of every order after a core cutoff, yet its separate linear contorsion flux grows as \(e^{R/2}\). Discarding the matched wall before taking the limit is therefore a fatal error on this very domain.

### 9.2 The combined relative physical action nevertheless extends

For the original **fully combined** Palatini/geometric-CS walls and the standard geodesic exhaustion, there is a stronger positive statement. It requires a proof; it does not follow from density alone.

Write \(e=e_0+f\), \(\omega=\omega_0+w\), with the fixed flat hyperbolic background denoted by zero subscripts. On the closed radial wall \(\Sigma_R\), let \(n(e)\) be its internal unit normal, and put

\[
\ell_0(e)=-\kappa\epsilon_{abc}n^ae^bD_{\omega_0}n^c
+\kappa\epsilon_\partial(e).
\]

The physical relative CS polynomial on the cutoff region is, precisely,

\[
S_{\rm rel}(q;M_R)=\tfrac12\int_{M_R}B(q\wedge Dq)
+\tfrac16\int_{M_R}B(q\wedge[q,q]).
\]

It is not the full-space action at finite \(R\). Write \(I_{P,R}\) for the original bulk integral over \(M_R\) **plus** its geometric wall integral over \(\Sigma_R=\partial M_R\), before any finite-part operation. No finite-wall master equation is asserted for the truncated bulk polynomial. Direct expansion of the bulk Palatini action gives

\[
I_{P,\rm bulk}(e_0+f,\omega_0+w)-I_{P,\rm bulk}(e_0,\omega_0)
=S_{\rm rel}(q;M_R)
+\int_{\Sigma_R}\left[-\kappa e_0\wedge w+\tfrac\kappa2 w\wedge f\right].
\tag{9.1}
\]

Indeed the only linear bulk term is \(\kappa e_0D_{\omega_0}w=-\kappa d(e_0w)\), and symmetrizing \(\kappa fD_{\omega_0}w\) into the quadratic CS pairing produces \(\kappa d(wf)/2\). The cubic terms already agree.

The exact connection dependence of the geometric wall is

\[
\ell(e,\omega_0+w)=\ell_0(e)+\kappa e\wedge w.
\tag{9.2}
\]

This follows pointwise from \(n\cdot e=0\), \(n^2=1\), and the vector triple-product identity. Combining (9.1) and (9.2) at the **same** radius gives

\[
\boxed{I_{P,R}(e_0+f,\omega_0+w)-I_{P,R}(e_0,\omega_0)
=S_{\rm rel}(q;M_R)
+\int_{\Sigma_R}\left[\tfrac\kappa2 f\wedge w+\ell_0(e_0+f)-\ell_0(e_0)\right].}
\tag{9.3}
\]

The potentially divergent linear \(e_0w\) flux has canceled exactly, rather than being declared small.

Let \(k_1,k_2\) be the background principal curvatures and \(F_{ij}\) the background orthonormal components of the pullback of \(f\). The integrated linearization of \(\ell_0\) is

\[
\int_{\Sigma_R}d\ell_{0,e_0}(f)
=\kappa\int_{\Sigma_R}
\big[(1-k_2)F_{11}+(1-k_1)F_{22}\big]dA_0.
\tag{9.4}
\]

To derive this, vary \(n\cdot e=0\); the variation of \(n\) is tangential. The term with three tangential internal vectors vanishes. Integrating the \(D_{\omega_0}\delta n\) term by parts on the closed wall gives zero because \(D_{\omega_0}e_0=0\) and again three tangential vectors occur. The remaining terms are \(-\kappa\epsilon n fD n+\kappa\epsilon n e f\), which give (9.4) in a principal frame.

There is also an exact local CAS check before discarding that divergence. At an adapted orthonormal principal frame with surface connection zero at the point,

\[
\delta n=(-F_{31},-F_{32},0),\qquad
\delta\ell_0=\kappa\big[(1-k_2)F_{11}+(1-k_1)F_{22}
+\partial_1F_{31}+\partial_2F_{32}\big]dA_0.
\]

The last term is \(d\theta\), with \(\theta=\kappa\epsilon_{abc}n^ae^b\delta n^c\) and local components \((\theta_1,\theta_2)=\kappa(-F_{32},F_{31})\). Seven exact Wolfram checks pass, including the normal constraints, background wall density, first variation before and after the divergence, and its primitive. The check uses a frame choice legitimate at every point; covariance and closed-wall Stokes are the analytic completion. See [wall check output](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/nonlinear-uv-domain-independent-20261031.1LbUTs/wall-checks.txt>), [replay source](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/nonlinear-uv-domain-independent-20261031.1LbUTs/wall-first-variation.wl>), [raw server return](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/nonlinear-uv-domain-independent-20261031.1LbUTs/wall-server-return.json>), and [native result](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/nonlinear-uv-domain-independent-20261031.1LbUTs/wall-result.wxf>). The return has `Failed=False` and no messages.

For geodesic spheres in \(\mathbb H^3\), \(k_1=k_2=\coth R\). For the cyclic tube, they are \(\tanh R,\coth R\). Thus \(k_i-1=O(e^{-2R})\), while area is \(O(e^{2R})\); the \(L^2(\Sigma_R)\) norm of the linear coefficient in (9.4) is \(O(e^{-R})\).

Uniform trace estimates on unit radial collars imply

\[
\|f\|_{L^2(\Sigma_R)}+\|\nabla f\|_{L^2(\Sigma_R)}
\leq C\|f\|_{H^2(\text{collar}_R)}\longrightarrow0,
\]

and similarly \(\|w\|_{L^2(\Sigma_R)}\to0\). The assumed physical \(H^4\) regularity is more than sufficient. For uniformly small \(f\), the nonlinear remainder of the integrated wall expansion is bounded by

\[
C\int_{\Sigma_R}(|f|^2+|f|\,|\nabla f|).
\]

This follows because \(n(e)\) is a smooth algebraic function of the tangential coframe and the wall density contains at most one derivative of \(n\); all higher terms contain at least two fluctuation factors. Hence every boundary remainder in (9.3) tends to zero. The bulk relative action is absolutely integrable by §2. We obtain

\[
\boxed{\lim_{R\to\infty}
\big[I_{P,R}(e_0+f,\omega_0+w)-I_{P,R}(e_0,\omega_0)\big]
=S_{\rm rel}(q;M).}
\tag{9.5}
\]

The matched geometric-CS action agrees at each finite radius by its exact transgression, so it has the same relative limit. The fixed background renormalized action may be added afterwards as a fixed constant.

Thus there is **no unavoidable physical-action mismatch** for this small high-regularity decaying sector once the original matched wall is kept and the above radial estimate is used. There is a fatal mismatch if one drops the separate flux, insists that the new domain still has compact support, imposes an actual finite wall while using the complete spectral operators, or varies nondecaying sources without new estimates.

This lemma concerns the relative physical action. It does not identify boundary BV–BFV forms, regional CPS forms, boundary-frame variables, or asymptotic charge algebras. The full bulk BV functional is the continuous master-action extension proved above; no extra boundary BV fields have been manufactured by completing compact support.

## 10. A fatal same-completion obstruction to the geometric BV map

The primary CS completion is not automatically a completion on which the exact geometric-to-CS canonical map acts. Consider just its antifield-zero body

\[
\tau=\iota_\xi e=\iota_\xi e_0+\iota_\xi f.
\]

The naive same assignments require \(f\in H^4\), \(\xi\in H^5\), and \(\tau\in H^5\). But multiplication of an \(H^4\) coefficient by a smooth nonzero function generally does not improve it to \(H^5\).

There is a sharp counterexample entirely on the smooth compact-support core. Choose a relatively compact coordinate chart, a smooth cutoff \(\chi\), a smooth compactly supported vector field \(X\) equal to \(\partial_1\) on the support of \(\chi\), and a fixed internal vector \(t_1\). With one odd generator \(\vartheta\), set

\[
f_N=N^{-17/4}\chi(x)\sin(Nx^1)\,dx^1\otimes t_1,
\qquad
\xi_N=\vartheta N^{-1/4}X.
\tag{10.1}
\]

Local equivalence of geometric and coordinate Sobolev norms gives

\[
\|f_N\|_{H^4}=O(N^{-1/4}),\qquad
\|[\vartheta]\xi_N\|_{H^5}=O(N^{-1/4}),
\]

whereas

\[
\big\|[\vartheta]\,\iota_{\xi_N}f_N\big\|_{H^5}
\asymp N^{1/2}\longrightarrow\infty.
\tag{10.2}
\]

Here \([\vartheta]\) means extraction of the single \(\vartheta\)-coefficient. The background contribution \(\iota_{\xi_N}e_0\) tends to zero in \(H^5\). The coframes remain nondegenerate because \(\|f_N\|_\infty\to0\). All antifields are zero.

Consequently \(\tau=\iota_\xi e\) is not continuous at the origin from the naive geometric \(H^4\times H^5\) norm to the CS ghost \(H^5\) norm, even with one Grassmann generator. A fixed smooth nonzero \(\xi\) and a compactly supported \(f\in H^4\setminus H^5\) give outright failure to land in the target space.

The earlier exact local canonical-map identities on smooth compact support are not contradicted. They can be considered on an appropriate \(H^\infty\)/tame Sobolev scale, or on a separately constructed derivative-loss interface. The smooth stationary families above may also admit an additional restricted comparison. None of those possibilities is a bounded canonical map between the naive same \(\mathcal X\) completions. In particular, this report proves a CS tree theorem, not an automatic metric–CS tree-equivalence theorem.

### 10.1 Audit of a subsequently supplied general corollary

After the concrete counterexample above had been independently obtained, the parent supplied the following candidate corollary for audit. It is valid with its product-neighborhood hypotheses; this general formulation is **not** presented as a blind discovery by this reviewer.

Suppose physical coframe fluctuations have ordinary Sobolev regularity \(H^s\), CS ghosts have \(H^t\), and these are independent product neighborhoods. Take \(s>3/2\) so a uniformly nondegenerate coframe neighborhood is an ordinary open set. Assume the diffeomorphism-ghost domain contains small compactly supported smooth vector fields, and ask simultaneously for:

1. boundedness of the free CS vector-field block \(G:H^t\to H^s\);
2. continuity of \(\tau=\iota_\xi(e_0+f)\) into \(H^t\) for unrestricted \(H^s\) coframes and independent diffeomorphism ghosts.

The principal symbol of \(G\) on parameters is \(\sigma(G)(\zeta)=\zeta\otimes\mathrm{id}\), up to the conventional factor \(i\), and is injective for \(\zeta\ne0\). Localized high-frequency tests therefore force

\[
t\geq s+1.
\]

A fixed smooth ghost equal to a nonzero coordinate vector on a subchart makes \(\iota_\xi f\) an unrestricted component of \(f\) there. Continuity into \(H^t\) consequently forces

\[
s\geq t.
\]

If continuity is requested only at the zero ghost, scale that fixed vector to zero while choosing \(f_N=N^{-s-\epsilon}\chi\sin(Nx^1)\): choose positive \(\epsilon,\eta\) with \(\epsilon+\eta<t-s\) and scale the vector by \(N^{-\eta}\). Both inputs tend to zero, while the output \(H^t\) norm grows as \(N^{t-s-\epsilon-\eta}\). These tests stay within the smooth compact-support core and within the nondegenerate coframe neighborhood.

Thus no finite pair \((s,t)\) has both properties on those unrestricted ordinary product neighborhoods. The assertion does not exclude smooth Fréchet/tame scales, nonlinear pulled-back domains, derivative-loss interfaces, or restricted smooth stationary images. It also does not claim that multiplication is well-defined for arbitrary low-regularity distributions; the stated high-regularity open-coframe hypothesis avoids that unrelated issue.

## 11. Precise boundaries of the conclusion

**Proved here, conditional only on the supplied linear operator facts and standard bounded-geometry Sobolev/trace results:**

- a concrete nonlinear, \(Q\)-stable complete CS BV completion containing every BV degree;
- the correct closed maximal isotropic UV slice in its own topology, distinguished from the nonclosed literal \(L^2\) image;
- a unique actual small physical stationary solution and its all-Sobolev regularity;
- a justified full formal BV extension, including even ghost antifields;
- an analytically convergent physical tree action, its exact quartic coefficient, and its full retained CME by stationary reduction;
- equality with the original **combined relative physical wall action** for the specified decaying sector and standard radial exhaustion;
- a concrete failure of the naive same-completion geometric ghost map.

**Not established, and not implied:**

1. A theorem on the whole \(L^2\) field quotient, the whole original proper \(H^1\) gauge-parameter space, arbitrary finite gauge transformations, or a global nondegenerate-coframe patch.
2. Preservation of compact support, any fixed finite collar, or a finite-wall elliptic boundary-value problem by \(P\) or \(h\).
3. The nonlinear Brown–Henneaux field space, source/PBH transformations, varying boundary metrics or holonomies, source-dependent renormalized contacts, or uniformity through a degenerating loxodromic length. This theorem fixes the background and marking. Some asymptotic configurations may happen to be in the Sobolev sector; no equality of sectors or charge structures is claimed.
4. A transport of the exact geometric BV map as a Banach symplectomorphism with the same regularities; §10 disproves that particular claim.
5. A transport of the even CPS form, corners, boundary frames, or a boundary BV–BFV theory. Those data are not restored by dense compact support.
6. A contour, a convergent Euclidean functional integral, a one-loop determinant, a BV Laplacian, a QME, a regulator-compatible measure pushforward, an anomaly cancellation, or a quantum equivalence theorem. No loop trace appears in the tree proof; infinite rank remains infinite rank.
7. Identification of the projected nonlinear coordinate map with this stationary transfer. Compressing a nonlinear map, generating a canonical map after compression, and eliminating UV variables are different operations.

The principal remaining interface is now precise: retain this valid CS completion and tree theorem, then separately construct a derivative-loss-aware geometric BV interface (or work on a controlled smooth scale). Do not infer that interface from the formal local canonical-map formulas alone.
