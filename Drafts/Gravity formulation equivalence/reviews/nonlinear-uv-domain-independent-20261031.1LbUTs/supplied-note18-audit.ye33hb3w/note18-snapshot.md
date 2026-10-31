# Complete-AdS BV contraction and the first transferred interaction

## Result and scope

**The actual complete hyperbolic gravitational-CS complex admits a cyclic spectral UV contraction. Its stationary tree transfer supplies an explicit quartic vertex that cancels the classical master-equation defect of the restricted cubic action.** This is a construction on the on-shell gravitational background, not an extrapolation from the off-shell torus.

For the operators and domains below,

\[
\boxed{h_\Lambda=D^\dagger\Delta^{-1}(1-P_\Lambda),\qquad
Dh_\Lambda+h_\Lambda D=1-P_\Lambda.}
\tag{1}
\]

For a retained fully graded CS superfield \(P_\Lambda\Psi=\Psi\), its cubic source \(b=[\Psi,\Psi]\), and the totalized extension \(h_{\Lambda,T}\), the answer is

\[
\boxed{S_{4,\Lambda}(\Psi)=-\frac18\mathcal B\bigl(b,h_{\Lambda,T}b\bigr),\qquad
(S_{2,P},S_{4,\Lambda})_P=-\frac12(S_{3,P},S_{3,P})_P.}
\tag{2}
\]

The field, ghost and antifield terms are all included. For ordinary sufficiently small retained physical fields, the UV stationary solution also exists analytically in a specified Sobolev space. The full BV assertion is coefficientwise formal on the smooth Sobolev core.

Two analytic qualifications are essential. The cutoff is generally infinite rank. Moreover, \(\operatorname{im}(h_\Lambda:L^2\to L^2)\) is generally **not closed**: its closure, rather than that image itself, is the Hilbert UV Lagrangian. No infinite-dimensional BV density, one-loop renormalization, complete Brown–Henneaux boundary complex, or metric–CS quantum equivalence is obtained here.

## 1. Background, pairing and grading

Take \(M=\mathbb H^3\), or the complete marked quotient by a fixed loxodromic cyclic group with translation length \(\beta>0\). The curvature radius is one, \(\operatorname{Ric}=-2g\), and the nondegenerate background is on shell. Use the Euclidean geometric continuation, not two independent real Euclidean SL(2,R) cycles. Set \(\kappa=2a>0\), \(\epsilon_{123}=1\), and \(\omega^{ab}=-\epsilon^{ab}{}_c\omega^c\). The two complex connections \(\omega\pm ie\) are flat.

The real gravitational Lie algebra has

\[
[J_a,J_b]=\epsilon_{ab}{}^cJ_c,\qquad
[J_a,P_b]=\epsilon_{ab}{}^cP_c,\qquad
[P_a,P_b]=-\epsilon_{ab}{}^cJ_c.
\]

Its invariant bilinear form is

\[
b_{\mathfrak g}(J_a,P_b)=\kappa\delta_{ab},\qquad
b_{\mathfrak g}(J_a,J_b)=b_{\mathfrak g}(P_a,P_b)=0.
\tag{3}
\]

Write \(E^p=L^2\Omega^p(M,\mathbb R^3\oplus\mathbb R^3)\), with the **positive** Hilbert norm that is the sum of the two real bundle norms. The cyclic pairing, initially on compact support, is instead

\[
\mathcal B(u,v)=\int_M b_{\mathfrak g}(u\wedge v),\qquad p+q=3.
\tag{4}
\]

The full bundle ranks in degrees 0,1,2,3 are \((6,18,18,6)\). Neither internal copy may be removed.

Let \(S_{\rm int}(w,f)=(f,w)\) and \(H_p=S_{\rm int}*:E^p\to E^{3-p}\). In three Euclidean dimensions \(*^2=1\) on every form degree, so \(H^2=1\), and

\[
\mathcal B(u,v)=\kappa\langle u,Hv\rangle_+.
\]

In quadratic formulas \(\langle\cdot,\cdot\rangle_+\) denotes the real positive L2 bilinear pairing, extended complex-bilinearly on complexified fields or a transported contour; it is not a Hermitian absolute square there. The Hilbert adjoint is defined using the positive real structure and then complexified. The connection

\[
D(w,f)=(D_\omega w-[e,f],\ D_\omega f+[e,w])
\tag{5}
\]

is flat and preserves (3), but is **not unitary** for the positive Hilbert metric. Ordinary unitary-flat Hodge formulas cannot simply be imported.

### The BV convention map

Physical variables are \(\alpha=(w,f)=(\delta\omega,\delta e)\), with their original odd two-form antifields \(p=(\omega^*,e^*)\). Ghosts are \(c=(\rho,\tau)\), with even three-form antifields \(c^*=(\rho^*,\tau^*)\). The coefficient-first antibracket is the one in the [nonlinear BV calculation](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/16 Nonlinear BV map and finite density transport.md#L90-L109>): \((q,p)=1\), \(QF=(S,F)\), with positive physical-antifield and negative ghost-antifield BRST terms.

Temporarily totalize forms by

\[
(\eta u)(\zeta v)=(-1)^{p\,\mathrm{gh}(\zeta)}\eta\zeta\,u\wedge v,
\quad D_T(\eta u)=(-1)^{\mathrm{gh}(\eta)}\eta Du,
\quad h_T(\eta u)=(-1)^{\mathrm{gh}(\eta)}\eta hu.
\tag{6}
\]

The total-degree-one fluctuation is

\[
\Psi=c+\alpha-\kappa^{-1}S_{\rm int}p
                 +\kappa^{-1}S_{\rm int}c^*.
\tag{7}
\]

These minus/plus antifield signs agree with the existing superfields, not a new antibracket convention. The top-form components of

\[
S(\Psi)=S_2+S_3
=\frac12\mathcal B(\Psi,D_T\Psi)
 +\frac16\mathcal B(\Psi,[\Psi,\Psi])
\tag{8}
\]

give the physical CS Taylor action plus
\(\int[p(Dc+[\alpha,c])+\tfrac12c^*[c,c]]\).
Thus \(Q\alpha=Dc+[\alpha,c]\) and \(Qc=-[c,c]/2\). Equation (8) is the relative bulk Taylor functional extended from compactly supported fluctuations about the fixed saddle. Its nonlinear complete-space domain is specified in §5; it is not an assertion about arbitrary finite-wall action differences.

## 2. The actual full Hodge operator and its domains

Integration by parts using the invariant form gives, for \(u\) of form degree \(p\),

\[
\mathcal B(Du,v)=-(-1)^p\mathcal B(u,Dv),\qquad
\delta_p:=D_{p-1}^\dagger=(-1)^p H_{4-p}D_{3-p}H_p.
\tag{9}
\]

The codifferential formula in (9) has \(p=1,2,3\); the zero end maps are understood separately. Consequently \(\delta^2=0\), and \(\Delta=D\delta+\delta D\) commutes with \(H\). This derives the adjoint for the nonunitary connection rather than replacing it by a unitary one.

To identify the operator concretely, use the action-derived quantities of the [balanced elliptic calculation](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/15 Elliptic gravitational CS determinant and gauge phase.md#L44-L143>):

\[
G=D_0,\quad
K=\begin{pmatrix}T&C\\C&-T\end{pmatrix}=H_2D_1,
\quad C=*D_\omega,\quad T(Y)=1\operatorname{tr}Y-Y^t.
\]

Here \(G\) is the real proper CS gauge generator. Put

\[
M=G^\dagger G=R_1\oplus R_1,\qquad
\mathbf R=K^2+GG^\dagger=R_K\oplus R_K,
\]

\[
R_K=\nabla^*\nabla+2T=\sum_{s=0}^2R_s\Pi_s,
\qquad R_s=\nabla^*\nabla+4-s(s+1).
\tag{10}
\]

The precise full-complex blocks are

\[
\begin{aligned}
D_0&=G,&D_1&=H_1K,&D_2&=-H_0G^\dagger H_2,\\
\delta_1&=G^\dagger,&\delta_2&=KH_2,&\delta_3&=-H_1GH_3,\\
\Delta_0&=M,&\Delta_1&=\mathbf R,&
\Delta_2&=H_1\mathbf RH_2,&\Delta_3&=H_0MH_3.
\end{aligned}
\tag{11}
\]

These are full differential identities, including the curvature and zero-order terms. In particular the spin potentials are not inferred from principal symbols alone.

### A direct bridge to the known complete operator

Identify even forms by \((u_0,u_2)\mapsto(H_2u_2,u_0)\) and odd forms by \((u_1,u_3)\mapsto(u_1,-H_3u_3)\). Both off-diagonal blocks of \(D+\delta\) then become

\[
\mathscr D_0=\begin{pmatrix}K&G\\G^\dagger&0\end{pmatrix}.
\tag{12}
\]

Thus the full Hodge Dirac is a unitary doubling of the actual balanced gravitational augmentation, not an unrelated de Rham surrogate. The already established complete closures give

\[
\operatorname{Dom}(D+\delta)=H^1,\quad
\operatorname{Dom}\Delta=H^2,\quad
\Delta\ge1,
\tag{13}
\]

with stronger endpoint-degree gap \(M\ge4\). The input spin gaps are \((5,4,1)\); their quotient proof uses the fixed cyclic geometry, not arbitrary hyperbolic quotients. Compactly supported smooth sections are a core.

The closed differential itself has its maximal distributional domain,

\[
\operatorname{Dom}D_p
=\operatorname{ran}D_{p-1}\oplus
 \bigl(H^1\cap\operatorname{ran}\delta_{p+1}\bigr).
\tag{14}
\]

The ranges in (14) are closed, by the gap. In particular \(\operatorname{Dom}D_0=H^1\), \(\operatorname{Dom}D_3=L^2\), and the middle domains are **not** all equal to \(H^1\). Exact forms can be only L2 while their next differential is zero. No L2 harmonic component remains.

## 3. A paired spectral splitting and the UV Lagrangian

For \(\Lambda>1\), on every degree set

\[
P_{\Lambda,p}=1_{[0,\Lambda^2]}(\Delta_p),\qquad R_\Lambda=1-P_\Lambda,
\qquad h_\Lambda=\delta\Delta^{-1}R_\Lambda.
\tag{15}
\]

Closed Hilbert-complex functional calculus intertwines these projections with \(D,\delta\). Since \(H\) commutes with \(\Delta\), the projection is self-transpose for \(\mathcal B\). It is therefore a paired chain projection on the actual BV space. It is not a finite-dimensional regularization of the noncompact manifold.

The contraction obeys

\[
Dh+hD=R_\Lambda,\quad h^2=0,\quad Ph=hP=0,
\qquad \mathcal B(hu,v)=(-1)^p\mathcal B(u,hv),
\tag{16}
\]

where \(u\) has degree \(p\), \(v\) degree \(4-p\). In (16), \(Dh\) is bounded on L2 and \(hD\), initially on \(\operatorname{Dom}D\), has its bounded projection extension. The cyclic sign follows from (9), not from an ungraded transpose.

In the spectral Sobolev norm \(\|u\|_s=\|\Delta^{s/2}u\|_2\), equivalent to the geometric Sobolev norm,

\[
\|h_\Lambda u\|_s\le\Lambda^{-1}\|u\|_s,
\qquad \|h_\Lambda u\|_{s+1}\le\|u\|_s.
\tag{17}
\]

For example, the three nonzero degree blocks are

\[
h_1=G^\dagger\mathbf R^{-1}R_{\Lambda,1},\quad
h_2=K\mathbf R^{-1}H_2R_{\Lambda,2},\quad
h_3=-H_1GM^{-1}H_3R_{\Lambda,3}.
\tag{18}
\]

This gives an actual propagator in terms of the specified complete gravitational operators.

### Closure is substantive

Let

\[
\mathcal L_0=R_\Lambda\operatorname{ran}\delta
            =R_\Lambda\ker\delta.
\tag{19}
\]

It is a closed maximal isotropic subspace for the graded cyclic pairing: \(H\) sends coexact forms to exact forms, and the gapped Hodge decomposition makes these positive-Hilbert orthogonal complements. In contrast,

\[
\operatorname{im}(h:L^2\to L^2)=\mathcal L_0\cap H^1.
\tag{20}
\]

One inclusion follows from (17). Conversely, for \(y\in\mathcal L_0\cap H^1\), \(hy=0\) and \(y=hDy\). On an unbounded UV tail (20) is a proper dense subspace: already in degree zero, choose orthogonal high-energy ghost packets whose coefficients are square-summable but not energy-weighted square-summable. Their finite sums lie in (20), while their L2 limit does not. Calling the uncompleted image a closed Hilbert Lagrangian would be false.

The regular stationary domain is \(\mathcal L_s=\mathcal L_0\cap H^s\), or its smooth Sobolev core. On the physical/ghost components the closed polarization is

\[
\mathcal L_0^0=R E^0,\quad
\mathcal L_0^1=R\ker G^\dagger,\quad
\mathcal L_0^2=R H_1\operatorname{ran}G,\quad
\mathcal L_0^3=0.
\tag{21}
\]

This is the actual Hermitian-Lorenz gauge polarization. On a smooth parametrization \(\Psi_2=H_1G\bar c\), (7) gives \(p=-\kappa *G\bar c\); hence its quadratic ghost action is \(-\kappa\langle\bar c,Mc\rangle_+\), precisely the signed ghost coefficient used in the balanced Gaussian comparison. This identifies the quadratic action, not an infinite-dimensional induced density or its determinant.

## 4. Stationary elimination and the quartic vertex

Write the retained field as \(x=P\Psi\), and vary the UV field \(y\) in the regular coexact Lagrangian. The free retained/UV cross term vanishes. The UV critical equation is equivalent to

\[
y=-\frac12h_T[x+y,x+y].
\tag{22}
\]

Indeed the full derivative is \(D_T(x+y)+[x+y,x+y]/2\). Its pairing with every UV Lagrangian tangent vanishes exactly when its UV exact projection vanishes, equivalently when its image under \(h_T\) vanishes. On the regular coexact domain \(h_TD_Ty=y\), while \(h_TD_Tx=0\). This is a stationary equation for the actual cubic action, not a declaration of a transferred bracket.

Solving successively gives \(y_2=-h_T[x,x]/2\). Define the tree action by stationary substitution,

\[
S_{\mathrm{tree},\Lambda}(x)=S(x+y(x)).
\]

At quartic order, cyclicity and stationarity give

\[
S_4=\frac12\mathcal B(y_2,D_Ty_2)+\frac12\mathcal B(y_2,[x,x])
   =-\frac18\mathcal B([x,x],h_T[x,x]).
\tag{23}
\]

The overall CS normalization is already carried by the pairing (3), together with the \(\kappa^{-1}\) factors in the antifield dictionary (7); no additional inverse-level factor multiplies (23).

For an explicit component-first expression, write the retained field as \(x=c+\alpha-u+v\), where \(u=\kappa^{-1}S_{\rm int}p\) and \(v=\kappa^{-1}S_{\rm int}c^*\) are the Lie-algebra-valued pairing-dual antifields, not the original covector coordinates. Let \(K_2=[\alpha,\alpha]-2[u,c]\). With ordinary component-first products and the unsigned form operator \(h\),

\[
\boxed{S_4=-\frac18\mathcal B_{\rm cf}(K_2,hK_2)
 +\mathcal B_{\rm cf}\bigl([\alpha,c],h([\alpha,u]+[c,v])\bigr).}
\tag{23a}
\]

Indeed the totalized source has degree components \(([c,c],-2[\alpha,c],K_2,2([\alpha,u]+[c,v]))\). The degree-one/degree-three cross terms contribute equally by graded cyclicity, giving the plus sign and unit coefficient in the second term. The ghost-antifield contribution \([c,v]\) is generally nonzero; the endpoint ghost blocks of the actual AdS homotopy must not be deleted.

### Why the master equation is restored

On the UV critical locus, differentiating the stationary action with respect to a retained coordinate has no contribution from the derivative of \(y(x)\). The full BV bracket decomposes into retained and UV brackets. The UV bracket of \(S\) with itself vanishes on this locus because every derivative along the chosen UV Lagrangian is zero. The full cubic CS action satisfies the CME by flatness, invariant pairing and graded Jacobi; hence

\[
(S_{\mathrm{tree},\Lambda},S_{\mathrm{tree},\Lambda})_P=0
\tag{24}
\]

coefficientwise in the tree expansion. Its homogeneous quartic coefficient is exactly (2). One can also verify its normalization directly. For \(b=[x,x]\), the convention (7) gives \(Q_0x=-D_Tx\), and the odd derivation anticommutes with the odd totalized homotopy. Consequently

\[
(S_{3,P},S_{3,P})_P=-\tfrac14\mathcal B(b,Pb),\qquad
(S_{2,P},S_4)_P=-\tfrac18\mathcal B(b,Rb).
\tag{24a}
\]

Graded Jacobi and cyclicity give \(\mathcal B(b,b)=\mathcal B(x,[x,[x,x]])=0\), proving the same cancellation without imposing \(D_Tx=0\). This is a transfer to the retained differential complex, not automatically a minimal/cohomological transfer. The proof is classical stationary reduction; it does not assume that an infinite-dimensional BV integral or BV Laplacian exists.

The antifield terms of (23) are indispensable. A physical-field-only quartic vertex is not a proof of (2), and a retained ghost substitution alone does not implement it.

### Explicit physical gravitational kernel

For ordinary physical \(x=\alpha=(w,f)\), define the eighteen-component source

\[
j(\alpha)=H_2[\alpha,\alpha]
 =\left(2*[w,f],\ *([w,w]-[f,f])\right).
\tag{25}
\]

Then the physical part of (23) is the explicit complete-background expression

\[
\boxed{S_{4,\Lambda}^{\rm phys}
 =-\frac a4\left\langle R_{\Lambda,1}j,
 K\mathbf R^{-1}R_{\Lambda,1}j\right\rangle_+.}
\tag{26}
\]

The operator \(K\mathbf R^{-1}\) kills the gauge range and is the inverse physical Hessian apart from its factor \(2a\); it is not an inverse of degenerate \(K\) on the whole field space. Direct differentiation gives \(\delta S_3/\delta\alpha=a j\), so completing the UV square with Hessian \(2aK\) independently fixes \(-a/4\). The upper negative-direction contour of the Gaussian stage gives this same stationary inverse; a Gaussian phase does not change the tree coefficient.

## 5. A nonlinear domain rather than a formal L2 product

The complete background has bounded geometry for each fixed \(\beta>0\). Choose \(s>3/2\). The wedge-Lie product has a bound

\[
\|[u,v]\|_s\le C_s\|u\|_s\|v\|_s.
\tag{27}
\]

All quadratic and cubic pairings are finite on smooth Hs fields with at least one derivative: for the cubic integral use L-infinity times L2 times L2. Integration by parts and cyclicity extend from compactly supported smooth sections by Sobolev density. No spatial finite-part trace is needed at tree level.

For retained physical \(x\) with \(\|x\|_s\le r<\Lambda/(4C_s)\), the right side of (22) maps the radius-r ball in \(\mathcal L_s\) into itself and has Lipschitz constant at most \(2C_s r/\Lambda<1/2\). It therefore has a unique small solution there, analytic in \(x\). A fixed upper spectral band is contained in every Sobolev space. Equation (22) gains a derivative, so its solution bootstraps to the smooth Sobolev core. Requiring the resulting coframe perturbation to be smaller than the background in the uniform norm keeps the ordinary coframe nondegenerate.

The full BRST differential loses one derivative on equal-order Hs spaces. A stronger completion respects the actual form degrees:

\[
\mathcal X_m=\bigoplus_{p=0}^3 H^{m-p}(E^p),\quad m>\tfrac92;
\qquad\mathcal X_5:
(c,\alpha,u,v)\in H^5\oplus H^4\oplus H^3\oplus H^2.
\tag{27a}
\]

For degrees \(p,q\), multiplication lands in \(H^{\min(m-p,m-q)}\subset H^{m-p-q}\). Both \(D\) and \(h\) are bounded endomorphisms of this mixed space: their derivative loss/gain is exactly offset by their form-degree change. With the spectral direct-sum norm, \(\|D\|,\|h\|\le1\); no \(\Lambda^{-1}\) improvement is asserted in this mixed norm. The CS action is a continuous polynomial and its explicit Hamiltonian vector field preserves \(\mathcal X_m\). Integration by parts extends by density, using L2 times L2 and L-infinity times L2 times L2, not any false inclusion L2 into L1 on infinite volume.

Moreover,

\[
\mathcal L_m=R\ker\delta\cap\mathcal X_m
=\operatorname{im}(h:\mathcal X_m\to\mathcal X_m)
=\operatorname{ran}(hD),\qquad (hD)^2=hD.
\tag{27b}
\]

Thus this image really is closed in the mixed norm. Cyclicity proves isotropy; if \(z\in R\mathcal X_m\) annihilates it, nondegeneracy implies \(hz=0\), whence \(z=hDz\in\mathcal L_m\). The pairing on \(\mathcal X_m\) is weak: not every continuous functional has a Hamiltonian vector field. On the fixed retained band, however, all Sobolev norms are equivalent to L2 and the pairing is strongly nondegenerate. This justifies the retained antibracket without asserting a strong symplectic structure on the entire mixed space.

If \(\|h[u,v]\|_{\mathcal X_m}\le C_m\|u\|\|v\|\), a physical retained ball of radius \(\varrho<1/(8C_m)\), reduced further to keep the coframe nondegenerate, gives the same actual stationary solution by contraction. The physical tree series converges there. For the full BV extension, fix this physical body \(\Psi_0=x_0+y(x_0)\) and complete formally in the nonphysical variables. Odd coefficients use exterior powers; **even ghost antifields use symmetric formal powers**, not a nilpotency assumption. At each formal order the unknown coefficient obeys

\[
(1+h_T\operatorname{ad}_{\Psi_0})y_n=b_n.
\tag{27c}
\]

The small-body Neumann inverse exists; the known lower-order source \(b_n\) is smooth and the equation bootstraps \(y_n\) to every Sobolev order. Hence each formal jet is continuous and analytic in the physical body. This supplies a genuine convergent physical stationary theory with a full formal BV extension, not a continuum quantum integral. The CME proof of §4 applies on this domain. In particular its retained gradient is \(PF(\Psi)\); if that vanishes, stationarity and Bianchi give \(F=-h_T[\Psi,F]\), so the same small-body inverse forces \(F=0\). Effective solutions therefore lift to full solutions locally, although off-shell retained configurations do not satisfy all UV equations.

### An admissible counterexample to using all L2 fields

In a small normal-coordinate ball, let \(\chi\ge0\) be a nonzero smooth compactly supported function and

\[
\alpha_\varepsilon=\varepsilon^{-1}\chi(X/\varepsilon)
 \left(P_1e^1+J_2e^2+J_3e^3\right).
\tag{28}
\]

Then \(\|\alpha_\varepsilon\|_2=O(\varepsilon^{1/2})\to0\), whereas the exact internal/wedge contraction gives

\[
\frac16b_{\mathfrak g}(\alpha_\varepsilon,[\alpha_\varepsilon,\alpha_\varepsilon])
=\kappa\varepsilon^{-3}\chi(X/\varepsilon)^3\,\mathrm{vol}_g.
\]

Its integral tends to \(\kappa\int\chi^3d^3X>0\). The coframe changes only by the positive factor \(1+\varepsilon^{-1}\chi\) in its first direction and remains nondegenerate. Thus even on admissible compactly supported physical configurations the cubic functional is not continuous at zero in the full L2 norm. The nonlinear Sobolev restriction is substantive.

## 6. The combined relative physical wall action extends

Neither the sharp spectral projection nor the UV homotopy preserves compact support or a fixed empty collar. The spectral-transfer domain is therefore not literally the collar-restricted space of the exact local BV map. Nevertheless its small physical H4 sector has an actual limit of the original **combined** wall action, not just an arbitrarily declared Taylor extension.

Use the original Euclidean Palatini action, internal contractions understood,

\[
I_P=\kappa\int_M e\wedge R_\omega-\frac\kappa6\int_M e\wedge[e,e]
-\kappa\int_{\partial M}\epsilon_{abc}n^ae^bD_\omega n^c
+\kappa\int_{\partial M}dA_e.
\tag{29}
\]

Here \(R_\omega=d\omega+[\omega,\omega]/2\), \(n\cdot e|_{\partial M}=0\), \(n^2=1\), and the normal is outward. Let \(\Sigma_R=\partial M_R\) be the standard geodesic sphere, or the closed cyclic tube, with its induced orientation. For \(q=(w,f)\), set

\[
\ell_0(e)=-\kappa\epsilon_{abc}n(e)^ae^bD_{\omega_0}n(e)^c+\kappa dA_e,
\qquad S_{\rm rel}(q;M_R)=S_2(q;M_R)+S_3(q;M_R).
\]

The exact finite-radius identity is

\[
\begin{split}
&I_{P,R}(e_0+f,\omega_0+w)-I_{P,R}(e_0,\omega_0)\\
&\quad=S_{\rm rel}(q;M_R)+\int_{\Sigma_R}
\left[\frac\kappa2 f\wedge w+\ell_0(e_0+f)-\ell_0(e_0)\right].
\end{split}
\tag{30}
\]

Indeed the bulk expansion gives the boundary term \(-\kappa e_0\wedge w-\kappa f\wedge w/2\); the exact connection dependence of the wall gives \(+\kappa(e_0+f)\wedge w\). The potentially divergent linear flux cancels **at the same finite radius**.

To control the remaining wall, write the tangential coframe perturbation in a background principal frame as \(f^a=F^a{}_be_0^b\), with principal curvatures \(k_1,k_2\). Varying the normal constraints gives \(\delta n=(-F_{31},-F_{32},0)\). The linearized wall equals

\[
\delta\ell_0
=\kappa[(1-k_2)F_{11}+(1-k_1)F_{22}]\,dA_0
+d\!\left(\kappa\epsilon_{abc}n_0^ae_0^b\delta n^c\right).
\tag{31}
\]

The divergence integrates to zero on the closed wall. Here \(k_i=\coth R\) for spheres, and \((k_1,k_2)=(\tanh R,\coth R)\) up to ordering for tubes. Thus \(k_i-1=O(e^{-2R})\), while area is \(O(e^{2R})\): the remaining linear coefficient has boundary L2 norm \(O(e^{-R})\). Uniform trace estimates on unit radial collars give

\[
\|f\|_{L^2(\Sigma_R)}+\|\nabla f\|_{L^2(\Sigma_R)}
\le C\|f\|_{H^2(\mathrm{collar}_R)}\longrightarrow0,
\]

and similarly for \(w\). For uniformly small coframe perturbations, the nonlinear wall remainder is bounded by \(C\int_{\Sigma_R}(|f|^2+|f||\nabla f|)\). The term \(f\wedge w\) also vanishes by Cauchy–Schwarz. Since the bulk polynomial is absolutely integrable, (30) proves

\[
\boxed{\lim_{R\to\infty}\left[I_{P,R}(e_0+f,\omega_0+w)-I_{P,R}(e_0,\omega_0)\right]
=S_{\rm rel}(q;M).}
\tag{32}
\]

The matched geometric-CS wall action agrees at each finite radius by the existing transgression, hence has the same relative limit. A fixed background renormalized action is an additional constant. One still cannot discard separately written contorsion/transgression fluxes: the smooth all-Sobolev tail in [the earlier wall analysis](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/14 Geometric CS Gaussian map and regulator.md#L116-L126>) is already a counterexample to that operation. This physical-action result does not identify nonlinear Brown–Henneaux/source sectors, admit PBH transformations as proper ghosts, or replace regional CPS/corner/BFV data by a bulk odd pairing.

## 7. A Sobolev obstruction at the formulation interface

The valid CS completion (27a) cannot simply be assigned to both sides of the exact nonlinear geometric BV map. At zero antifields that map contains \(\tau=\iota_\xi(e_0+f)\). Assigning \(f\in H^4\), \(\xi\in H^5\), and \(\tau\in H^5\) fails even continuously on the smooth compact-support core.

Choose a compact coordinate chart, a nonzero cutoff \(\chi\), a smooth compactly supported \(X=\partial_1\) on its support, and one odd generator \(\vartheta\). For a fixed internal vector \(t_1\), take

\[
f_N=N^{-17/4}\chi(x)\sin(Nx^1)\,dx^1\otimes t_1,
\qquad \xi_N=\vartheta N^{-1/4}X.
\tag{33}
\]

The H4 and coefficientwise H5 input norms are both \(O(N^{-1/4})\to0\); coframes remain nondegenerate. But the H5 norm of the \(\vartheta\)-coefficient of \(\iota_{\xi_N}f_N\) is \(\asymp N^{1/2}\to\infty\), whereas its background contribution tends to zero. No antifield correction can repair this counterexample on the antifield-zero body.

More generally, on independent ordinary product neighborhoods with coframes in \(H^s\), \(s>3/2\), and CS ghosts in \(H^t\), boundedness of the free CS vector-field block requires

\[
G:H^t\to H^s\ \Longrightarrow\ t\ge s+1,
\qquad
\iota_\xi(e_0+f)\in H^t\text{ continuously for unrestricted }f\in H^s
\ \Longrightarrow\ s\ge t.
\tag{34}
\]

The first implication follows from the injective principal symbol \(\sigma(G)(\zeta)=i\zeta\otimes\mathbf1\); the second follows by fixing a small smooth ghost equal to a coordinate vector on a subchart. Local high-frequency tests also disprove continuity only at zero by shrinking that ghost along with the coframe. No finite pair \((s,t)\) satisfies both conditions.

This is a no-go for those **independent product completions**, not for the original smooth canonical identity, a derivative-loss-aware Sobolev scale, nonlinear pulled-back domains, or restricted stationary images. In particular fixed-band retained fields and the solved UV fields are smooth; comparing those stationary families remains a concrete possible route. The CS tree theorem is not yet a metric–CS tree-equivalence theorem.

## 8. Verification and next unresolved comparison

The [parent exact hyperbolic calculation](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/verification/ads-bv-hodge-parent.mo_zlba1/README.md>) checks all forty-eight bundle components, including full curvature terms, the four Weitzenboeck identities, graded adjoints, differential commutators and radial indicial contractions. Its thirty-one exact labels pass. Radial powers are not L2 states and do not themselves prove a spectral gap. The [physical normalization source](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/verification/ads_bv_tree_normalization_checks.py>) independently checks the gravitational cubic, all eighteen source derivatives, the concentration coefficient and the stationary quartic normalization.

Independent operator/domain, full graded-transfer, and nonlinear-domain investigations are recorded separately in the review index. Finite algebraic tests are evidence for the signs and full antifield identity, not substitutes for the complete-background domain proof.

**Established here:** the actual complete-background cyclic contraction, its regular and completed Lagrangians, the normalized quartic interaction with the full classical master identity, and the small physical-field stationary solution in the stated domain.

**Still open:** transport of this interacting tree theory through the exact nonlinear geometric/metric map with compatible UV polarizations; the one-loop effective BV density and loop vertices; renormalized QME/BV-Stokes; the full nonlinear boundary/proper domain, global cycles and physical observable/Hilbert-space comparison. Equation (24) is not a quantum equivalence theorem. The next finite comparison must construct the induced retained canonical map or compare the transported tree vertices, before using any loop determinant as evidence of interacting metric–CS equivalence.
