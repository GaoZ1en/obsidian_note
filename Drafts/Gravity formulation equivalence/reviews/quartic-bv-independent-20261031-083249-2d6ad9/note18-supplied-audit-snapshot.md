<!-- Introduction; source lines 3-26 -->
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



<!-- Section 1; source lines 27-104 -->
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



<!-- Section 4; source lines 255-333 -->
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

