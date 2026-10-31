# Independent normalized tree-level quartic BV vertex

## Result and status

**The normalized tree-level quartic is**

\[
\boxed{S_4(x)=-\frac18\langle [x,x],H[x,x]\rangle_T,\qquad x=P\Psi.}
\]

Here the totalized superfield, differential, homotopy, and pairing are defined below. With the stipulated **left** Hamiltonian BRST convention \(QF=(S,F)\), fundamental antibracket \((q,p)=+1\), and the actual component-first antifield dictionary, it obeys the off-shell identity

\[
\boxed{(S_{2,P},S_4)=-\frac12(S_{3,P},S_{3,P}).}
\]

This is a formal algebraic theorem under the cyclic contraction hypotheses stated below, not merely a transfer citation or an antifield-zero test. The coefficient follows from actual stationary elimination on \(\operatorname{im}H\). Two exact finite cyclic-dgla fixtures independently exercise complementary BV sectors. Neither fixture proves an analytic construction of a hyperbolic propagator or infinite-rank projector. No one-loop or quantum master-equation claim is made.

## 1. Objects, cyclicity, and boundary assumptions

Let \(L=\Omega^*(M,\mathfrak g)\), \(\dim M=3\), with oriented integration and a flat connection differential \(D=d+[A_0,-]\). The Lie bracket includes the exterior product. For coefficient-free homogeneous forms of degrees \(p,q\), use

\[
[u,v]=-(-1)^{pq}[v,u],\qquad
\langle u,v\rangle=\int_M B(u\wedge v),\qquad
\langle u,v\rangle=(-1)^{pq}\langle v,u\rangle.
\]

The pairing vanishes unless \(p+q=3\). Its cyclic identities are

\[
\begin{aligned}
\langle Du,v\rangle+(-1)^p\langle u,Dv\rangle&=0,\\
\langle [u,v],w\rangle&=\langle u,[v,w]\rangle.
\end{aligned}
\]

The first identity requires that the integration-by-parts boundary term vanish on the chosen domain; it does not follow merely from flatness. It holds on closed \(M\), or on a compatible relative/decay domain, or for an explicitly completed boundary theory. The bulk formula alone is not the BV master equation of an arbitrary asymptotically AdS boundary problem.

Assume degree-zero \(P\) and degree-minus-one \(h\), field independent, with

\[
P^2=P,\quad [D,P]=0,\quad R=1-P,\quad
Dh+hD=R,\quad h^2=Ph=hP=0.
\]

The additional cyclic requirements are

\[
\boxed{\langle Pu,v\rangle=\langle u,Pv\rangle,\qquad
\langle hu,v\rangle=(-1)^p\langle u,hv\rangle.}
\]

**The second identity is an explicit assumption on the contraction; it is not inferred from \(Dh+hD=R\) alone.** It is the degree-minus-one cyclic homotopy convention used throughout this derivation. In finite dimension, nondegeneracy of the full pairing and cyclicity of \(P\) make its restrictions to the retained and UV summands nondegenerate. In infinite dimension the corresponding topological/nondegeneracy assumptions must be supplied separately.

The relevant linear BV phase space is the shift \(L[1]\). A form of degree \(p\) carries coefficient ghost number \(1-p\) and coefficient parity \(1-p\pmod 2\):

| Form degree | Component | Ghost number | Coefficient parity |
|---|---|---|---|
| 0 | \(c\) | 1 | odd |
| 1 | \(\alpha\) | 0 | even |
| 2 | \(\alpha^*\) | -1 | odd |
| 3 | \(c^*\) | -2 | even |

The stars in the equations below are **\(\mathfrak g\)-valued, pairing-dual forms**. They are not automatically the coordinate covector antifields without insertion of \(B^{-1}\).

## 2. Exact totalization and canonical-antifield dictionary

Start in component-first notation: Grassmann coefficients commute with \(dx\), while Grassmann coefficients anticommute among themselves. If \(a,b\) are homogeneous coefficients, and \(u,v\) have form degrees \(p,q\), totalize by

\[
\begin{aligned}
(a u)(b v)&=(-1)^{p|b|}ab\,(u\wedge v),\\
[a u,b v]_T&=(-1)^{p|b|}ab\,[u,v],\\
D_T(a u)&=(-1)^{|a|}a\,Du,\\
H(a u)&=(-1)^{|a|}a\,hu,\\
\langle a u,b v\rangle_T&=(-1)^{p|b|}ab\langle u,v\rangle.
\end{aligned}
\]

The projector has no extra sign. All operations now use total degree = form degree + ghost number. For total-homogeneous \(U\), cyclicity becomes

\[
\langle D_TU,V\rangle_T=-(-1)^{|U|}\langle U,D_TV\rangle_T,
\qquad
\langle HU,V\rangle_T=(-1)^{|U|}\langle U,HV\rangle_T.
\]

The required total-degree-one field is

\[
\boxed{\Psi=c+\alpha-\alpha^*+c^*.}
\]

To see the exact canonical meaning, choose bases \(u_I\in L^0\), \(v_A\in L^1\) and pairing-dual bases \(u^I\in L^3\), \(v^A\in L^2\), with

\[
\langle u_I,u^J\rangle=\delta_I{}^J,
\qquad \langle v_A,v^B\rangle=\delta_A{}^B.
\]

Then

\[
\Psi=c^Iu_I+q^Av_A-p_Av^A+\pi_Iu^I,
\qquad (q^A,p_B)=\delta^A{}_B,\quad(c^I,\pi_J)=\delta^I{}_J.
\]

Use the canonical antibracket

\[
(F,G)=\sum_{(q,p)}\left(
\frac{\partial_rF}{\partial q}\frac{\partial_lG}{\partial p}
-\frac{\partial_rF}{\partial p}\frac{\partial_lG}{\partial q}
\right),
\]

where the sum includes the ghost pair \((c,\pi)\). This formula uses right derivatives on the first entry and left derivatives on the second. It is important not to replace a right odd derivative by a left odd derivative without its parity sign.

With these definitions,

\[
S(\Psi)=\frac12\langle\Psi,D_T\Psi\rangle_T
+\frac16\langle\Psi,[\Psi,\Psi]_T\rangle_T
\]

expands in component-first notation to

\[
\boxed{
S=S_{\rm phys}(\alpha)
+\int_M B\bigl(\alpha^*\wedge(Dc+[\alpha,c])\bigr)
+\frac12\int_M B\bigl(c^*\wedge[c,c]\bigr).}
\]

Thus its antifield terms are exactly \(+\alpha^*Q\alpha-c^*Qc\), with

\[
Q\alpha=Dc+[\alpha,c],\qquad Qc=-\frac12[c,c].
\]

The entire, not just physical/ghost, Hamiltonian map is

\[
\boxed{Q\Psi=-D_T\Psi-\frac12[\Psi,\Psi]_T.}
\]

Equivalently, all four component-first transformations are

\[
\begin{aligned}
Qc&=-\tfrac12[c,c],\\
Q\alpha&=Dc+[\alpha,c],\\
Q\alpha^*&=D\alpha+\tfrac12[\alpha,\alpha]-[\alpha^*,c],\\
Qc^*&=-D\alpha^*-[\alpha,\alpha^*]+[c^*,c].
\end{aligned}
\]

The last two equations are part of the convention map, not an omission hidden by setting antifields to zero. The CAS fixtures below check \(Q\Psi\) on every coordinate, including both antifield types.

For an even functional with variation \(\delta F=\langle\delta\Psi,\nabla F\rangle_T\), the canonical formulas give \(Q_F\Psi=-\nabla F\). On the retained summand this is \(Q_Fx=-P\nabla F\). In particular the cubic Hamiltonian vector field is \(-P[x,x]/2\), not its negative-convention counterpart.

## 3. Why \(\operatorname{im}H\) is the UV Lagrangian

Cyclicity and \(H^2=0\) give

\[
\langle HU,HV\rangle_T=(-1)^{|U|}\langle U,H^2V\rangle_T=0.
\]

Furthermore

\[
R L=\operatorname{im}(D_T H)\oplus\operatorname{im}(H D_T)
=\operatorname{im}(D_T|_{RL})\oplus\operatorname{im}H,
\qquad H D_T H=H.
\]

The two summands are isotropic and paired nondegenerately when the UV cyclic pairing is nondegenerate. Hence \(\operatorname{im}H\) is Lagrangian in the UV BV space, and \(D_T\) identifies it with the complementary isotropic summand. The kinetic Hessian \(\langle y,D_Ty\rangle_T/2\) is nondegenerate on it. This statement is algebraic; no positive-definite metric is needed.

## 4. Actual UV stationary elimination

Write \(\Psi=x+y\), with \(Px=x\), \(y\in\operatorname{im}H\). Orthogonality of the retained and UV summands and \([D,P]=0\) remove the mixed quadratic term. Variation along \(\operatorname{im}H\) yields

\[
H\left(D_Ty+\frac12[x+y,x+y]_T\right)=0,
\]

and therefore

\[
\boxed{y=-\frac12H[x+y,x+y]_T.}
\]

This equation is the gauge-fixed UV stationary equation. It is not the unjustified stronger equation \(R(D_T(x+y)+[x+y,x+y]/2)=0\) on every UV component.

Writing \(y=y_2+y_3+\cdots\), by homogeneous field order,

\[
y_2=-\frac12H[x,x]_T.
\]

Set \(K=[x,x]_T\). Only the kinetic term in \(y_2\) and the cubic term linear in \(y_2\) contribute at order four:

\[
S_4=\frac12\langle y_2,D_Ty_2\rangle_T
+\frac12\langle y_2,K\rangle_T.
\]

Using \(H D_T H=H\) and cyclicity,

\[
\begin{aligned}
\frac12\langle y_2,D_Ty_2\rangle_T
&=\frac18\langle HK,D_THK\rangle_T
=\frac18\langle K,HK\rangle_T,\\
\frac12\langle y_2,K\rangle_T
&=-\frac14\langle K,HK\rangle_T.
\end{aligned}
\]

Their sum is the asserted \(-1/8\), with no assumption \(D_Tx=0\). Contributions involving \(y_3\) first affect higher field order.

### Fully expanded component-first quartic

In the following equation the symbols denote the retained components of \(x\), and \(h\) is the original component-first form operator, not the signed totalized \(H\). Define

\[
K_2^{\rm cf}=[\alpha,\alpha]-2[\alpha^*,c].
\]

The exact component-first result is

\[
\boxed{
\begin{aligned}
S_4={}&-\frac18\int_M B\left(K_2^{\rm cf}\wedge hK_2^{\rm cf}\right)\\
&+\int_M B\left([\alpha,c]\wedge
h\bigl([\alpha,\alpha^*]+[c,c^*]\bigr)\right).
\end{aligned}}
\]

Indeed the form-degree components of \(K\) are

\[
K_0=[c,c],\quad K_1=-2[\alpha,c],\quad
K_2=K_2^{\rm cf},\quad
K_3=2([\alpha,\alpha^*]+[c,c^*]).
\]

Since \(h\) lowers form degree, only \((K_1,hK_3)\), \((K_2,hK_2)\), and \((K_3,hK_1)\) pair in dimension three. Totalization and cyclicity make the first and third equal. This accounts for the plus sign and coefficient one of the second line. In particular, \(c^*\) occurs in a general quartic. Vanishing endpoint blocks of the homotopy make this sector absent, but such a restriction must not be silently imposed in a general derivation.

## 5. Quartic master identity, including signs and normalization

On the retained BV space let

\[
S_{2,P}=\tfrac12\langle x,D_Tx\rangle_T,\qquad
S_{3,P}=\tfrac16\langle x,[x,x]_T\rangle_T,
\qquad K=[x,x]_T.
\]

The canonical dictionary gives

\[
Q_0x=(S_{2,P},x)=-D_Tx,
\qquad
Q_3x=(S_{3,P},x)=-\tfrac12PK.
\]

Because \(\delta S_{3,P}=\langle\delta x,K\rangle_T/2\),

\[
\boxed{(S_{3,P},S_{3,P})=-\frac14\langle K,PK\rangle_T.}
\]

For the other side, \(Q_0K=-D_TK\). Field independence and the totalization rule imply the graded anticommutation

\[
Q_0(HK)=-H(Q_0K)=H D_TK.
\]

This sign is essential: one cannot commute the odd BRST derivation through the odd totalized homotopy as though both were ordinary component operators. Thus

\[
\begin{aligned}
(S_{2,P},S_4)
&=\frac18\langle D_TK,HK\rangle_T
-\frac18\langle K,H D_TK\rangle_T\\
&=-\frac18\langle K,(D_T H+H D_T)K\rangle_T\\
&=-\frac18\langle K,RK\rangle_T.
\end{aligned}
\]

The total degree of \(x\) is one. Graded Jacobi gives \([x,[x,x]]_T=0\); cyclicity then gives

\[
\langle K,K\rangle_T=\langle x,[x,[x,x]]_T\rangle_T=0.
\]

Consequently

\[
\boxed{
(S_{2,P},S_4)=\frac18\langle K,PK\rangle_T
=-\frac12(S_{3,P},S_{3,P}).}
\]

This is an equality of full ghost-number-one superpolynomials/functionals, off shell, not merely an equality after setting ghosts or antifields to zero. Together with \((S_{2,P},S_{2,P})=(S_{2,P},S_{3,P})=0\), it is exactly the order-four part of the classical master equation.

## 6. Transfer is not automatically minimal

The contraction produces an effective cyclic \(L_\infty\) algebra on the **complex** \((PL,D_P)\), where \(D_P=D|_{PL}\) may be nonzero. The binary operation is \(\ell_2=P[-,-]\); it need not obey Jacobi strictly. In total-degree-one diagonal notation, the cubic operation is normalized by

\[
\ell_3(x,x,x)=-3P[x,H[x,x]]_T,
\]

so that

\[
\frac1{4!}\langle x,\ell_3(x,x,x)\rangle_T
=-\frac18\langle [x,x],H[x,x]\rangle_T.
\]

Equivalently,

\[
Q_{\rm eff}x=-D_Px-\frac12P[x,x]_T
+\frac12P[x,H[x,x]]_T+O(x^4).
\]

The multilinear operations are obtained by graded polarization of this shifted notation. The quartic master identity is the cyclic Hamiltonian form of the arity-three homotopy-Jacobi identity.

A **minimal** transfer additionally requires \(D_P=0\), so that the retained space identifies with \(H_D(L)\). Then the induced binary bracket satisfies Jacobi on cohomology, and the two sides of the displayed quartic master identity vanish separately. A nonzero quartic can still encode a higher product/Massey-type operation. A minimal example alone would therefore be a weak test of the nonminimal cancellation proved here.

## 7. Gravitational CS normalization and the actual hyperbolic background

Take the supplied real algebra

\[
[J_a,J_b]=\epsilon_{ab}{}^cJ_c,\quad
[J_a,P_b]=\epsilon_{ab}{}^cP_c,\quad
[P_a,P_b]=-\epsilon_{ab}{}^cJ_c,
\]

and \(\kappa=2a>0\),

\[
B(J_a,P_b)=\kappa\delta_{ab},\qquad
B(J,J)=B(P,P)=0.
\]

This bilinear form is nondegenerate of split signature \((3,3)\), not positive definite. Write the actual background and fluctuations as

\[
A_0=\omega^aJ_a+e^aP_a,\qquad
\alpha=w^aJ_a+f^aP_a,\qquad c=\rho^aJ_a+\tau^aP_a.
\]

Flatness in this Lie-basis convention is

\[
de+[\omega,e]=0,
\qquad d\omega+\tfrac12[\omega,\omega]-\tfrac12[e,e]=0.
\]

With matrix connection \(\Omega^b{}_c=\epsilon^b{}_{ac}\omega^a\), the latter corresponds to \(R^{bc}(\Omega)=-e^b\wedge e^c\), i.e. unit-radius negative curvature. The specified torsion-free hyperbolic background supplies \(D^2=0\); the computation does not replace it by a constant-coframe background.

For canonical component-first covector antifields \(w_a^*,f_a^*,\rho_a^*,\tau_a^*\), the exact \(B^{-1}\) dictionary is

\[
\alpha^*=\kappa^{-1}(f_a^*J_a+w_a^*P_a),\qquad
c^*=\kappa^{-1}(\tau_a^*J_a+\rho_a^*P_a).
\]

Thus

\[
\boxed{
\Psi=(\rho+w-\kappa^{-1}f^*+\kappa^{-1}\tau^*)^aJ_a
+(\tau+f-\kappa^{-1}w^*+\kappa^{-1}\rho^*)^aP_a.}
\]

This independently derived dictionary agrees with the existing totalization convention in [note 16:167–191](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/16 Nonlinear BV map and finite density transport.md#L167-L191>), after replacing its physical fields by flat-background fluctuations. The symmetric CS kinetic density and the cross-pairing density can differ by an exact boundary term; equality of integrated actions uses the stated boundary domain/completion.

For the physical-only restriction, write \(K=[\alpha,\alpha]=K_J^aJ_a+K_P^aP_a\), where

\[
K_J=[w,w]-[f,f],\qquad K_P=2[w,f].
\]

Then

\[
\boxed{S_4\big|_{c=\alpha^*=c^*=0}
=-\frac a4\int_M\left(K_J^a\wedge(hK)_P^a+K_P^a\wedge(hK)_J^a\right).}
\]

The full superfield or full component expression is required for the master identity. This physical restriction is only a useful normalization check. No \(4\pi\), level, radius, or additional coupling is silently inserted into the Taylor action supplied in the question.

## 8. Exact CAS evidence, including ghosts and both antifields

The computation used SageMath 10.9 and exact rational arithmetic. Grassmann multiplication and left/right derivatives are implemented explicitly as sparse superpolynomials; the antibracket is computed in canonical coordinates, separately from the tensor-pairing formula. Sources and actual outputs are saved alongside this derivation. These are two mathematical fixtures using the same transparent polynomial engine, not two independent software implementations.

### A. Nonminimal Heisenberg exterior-algebra fixture

Use the finite Frobenius dga

\[
A=\Lambda(e^1,e^2,e^3),\quad de^3=e^1e^2,\quad de^1=de^2=0,
\quad \int e^1e^2e^3=1,
\]

and \(A\otimes\mathfrak{so}(3,1)\), with \(a=1/2\). Remove only \(e^3J_1,e^3P_1,e^{12}J_1,e^{12}P_1\), and set \(h(e^{12}T)=e^3T\) for \(T=J_1,P_1\), zero otherwise. This is a cyclic contraction with \(D_P\ne0\).

There are 44 retained canonical coordinates: 16 physical, 16 physical antifields, 6 ghosts, and 6 ghost antifields. The UV stationary equations on \(\operatorname{im}h\) are solved by directly differentiating the UV-slice action and inverting its actual constant Hessian. The resulting stationary action, rather than a quartic ansatz, determines \(S_4\).

Actual exact output:

- 41 labelled checks passed, including the full original CME, every coordinate of the Hamiltonian map, cyclicity, the actual UV solve, and the quartic identity.
- \(S_4\) has 56 monomials: 16 of type \(\alpha^4\), 32 of type \(\alpha^2c\alpha^*\), and 8 of type \(c^2(\alpha^*)^2\).
- Each side of the quartic Ward identity has **48 nonzero exact monomials**; their difference is zero.
- In this special fixture the UV coupling is exactly Gaussian and the stationary solution terminates at \(y_2\); the entire effective CME is also checked.
- Reversing the sign of \(S_4\), or deleting the ghost-antifield cubic vertex, makes the quartic master check fail.
- Three of the 41 checks are an additional pure dictionary test with a cyclic endpoint-block homotopy; that auxiliary operator is explicitly **not** asserted to be an SDR or used for a master-equation claim.

### B. Exact constant-form torus fixture with UV ghosts

This is the exact finite sub-dgla of **constant forms** on a unit-volume three-torus, not a non-closed Fourier truncation. Use the flat connection \(A_0=e^1J_3\), so \(D=[A_0,-]\). Its translational/coframe component is zero: it is a cyclic-CS test and not a hyperbolic gravity background.

Define real colors

\[
X_i=J_i+P_i,\qquad Y_i=J_i-P_i\quad(i=1,2).
\]

Remove only the \(X_1,X_2\) components in forms \(1,e^1,e^{23},e^{123}\); retain all other components. On that UV summand,

\[
h=(\operatorname{ad}J_3)^{-1}\iota_{e_1}R.
\]

Here \((\operatorname{ad}J_3)^2=-1\) on the \(X\) doublet. The pairing is \(B(X_i,X_j)=2\delta_{ij}\), \(B(Y_i,Y_j)=-2\delta_{ij}\), \(B(J_3,P_3)=1\); hence the projector is genuinely cyclic. Both \(D_P\) and \(D\) acting on retained ghosts are nonzero.

There are 40 retained coordinates: 16 physical, 16 physical antifields, 4 ghosts, and 4 ghost antifields. The UV Lagrangian has **two UV ghosts and two UV physical antifields**. Direct left differentiation and inversion of its actual kinetic Hessian give \(y_2=-H[x,x]/2\). Only the order-two stationary solution is needed here; no termination of the full solution or full truncated-effective CME is asserted.

Actual exact output:

- 29 labelled checks passed, including the explicit component-first transformations of both antifield types.
- \(S_4\) has 43 monomials: 38 of type \(\alpha^2c\alpha^*\) and **5 of type \(\alpha c^2c^*\)**.
- Each side of the quartic master identity has **32 nonzero exact monomials** and the difference vanishes.
- The original full 48-coordinate CME, all four sectors of \(Q\Psi\), the \(\alpha^*Dc\) quadratic term, and the fully expanded component-first quartic all pass.
- Wrong quartic sign fails.

These complementary fixtures avoid the weakness of checking only physical fields or only a minimal transfer. They do not prove spectral or functional-analytic statements on hyperbolic space.

A useful negative control removes the entire \(X\) color doublet in all form degrees instead. It has nonzero \(D_P\) and a 42-term nonzero quartic including ghost antifields, but its projected binary color bracket is already a Lie bracket: both quartic master sides vanish separately. This was verified exactly and is saved as the [color-control source](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/quartic-bv-independent-20261031-083249-2d6ad9/torus-color-control.sage.py>) and [actual control output](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/quartic-bv-independent-20261031-083249-2d6ad9/torus-color-control-output.txt>). Nonminimality and a nonzero quartic alone do not guarantee a sensitive nonzero-side master-equation test.

## 9. What is required for a complete hyperbolic infinite-rank projector

The algebraic proof applies to an infinite-rank retained space only after the following analytic data have been established:

1. **A common domain and boundary problem.** Specify the function spaces in every form/ghost degree; flat \(D\), bracket, \(P\), and \(h\) must act on compatible domains. Pairings and integrations by parts must converge, or a stated boundary completion must make them meaningful and cyclic. On AdS, arbitrary falloffs do not suffice.
2. **A genuine full-complex projector.** \(P\) must be defined on ghosts, physical fields, and both antifields; be a chain map; and be self-transpose for the bilinear cyclic BV pairing. A positive-frequency projector on the gauge-reduced physical CPS alone does not supply this object.
3. **A cyclic UV inverse.** The UV complex must be acyclic with a continuous/suitably bounded contraction satisfying the exact identities and cyclic sign above. Zero modes, continuous-spectrum thresholds, and boundary cohomology must be retained or separately accounted for. A formal symbol \(D^{-1}\) is not enough.
4. **Compatibility with the noncompact real gauge algebra.** \(B\) has split signature. A spectral projector that is orthogonal for an unrelated positive Hermitian norm need not be self-transpose for \(B\), and its Hodge homotopy need not have the required cyclic transpose. These facts must be proved for the chosen gauge fixing.
5. **Continuity of the tree operations.** Products, projections, and the propagator must make \(\langle[x,x],H[x,x]\rangle\) a well-defined continuous quartic functional on the chosen domain. Sobolev/weighted-Sobolev multiplication and the regularity gain of \(h\), as well as noncompact volume behavior, must be checked. At fixed tree order no coincident-loop trace is needed, but nonlocal kernel integrals can still require domain estimates.
6. **Completeness, not a finite check.** An infinite mode sum or spectral resolution must converge in a specified topology and reproduce the actual \(P\) and \(h\). Finite truncation tests cannot establish this completeness. If a sharp cutoff has continuous spectrum, the low-energy image may itself be infinite rank.

Under these hypotheses, the displayed identity is an exact formal tree-level statement; analytic convergence of the entire tree expansion is a further question. A BV Laplacian, regularized measure, determinant, one-loop counterterm, and QME have not been constructed here.

## 10. Saved evidence and scope

The independent derivation was completed without inspecting the parent agent's new candidate note. Existing articles and main notes were read only; only this unique review directory was written.

- [Heisenberg/exterior source](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/quartic-bv-independent-20261031-083249-2d6ad9/source.sage.py>) and [actual output](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/quartic-bv-independent-20261031-083249-2d6ad9/actual-output.txt>).
- [Torus source](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/quartic-bv-independent-20261031-083249-2d6ad9/torus-source.sage.py>) and [actual output](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/quartic-bv-independent-20261031-083249-2d6ad9/torus-actual-output.txt>).
- [Heisenberg exact quartic](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/quartic-bv-independent-20261031-083249-2d6ad9/quartic-vertex.txt>), [master left side](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/quartic-bv-independent-20261031-083249-2d6ad9/quartic-master-left.txt>), and [master right side](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/quartic-bv-independent-20261031-083249-2d6ad9/quartic-master-right.txt>).
- [Torus exact quartic](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/quartic-bv-independent-20261031-083249-2d6ad9/torus-quartic-vertex.txt>), [master left side](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/quartic-bv-independent-20261031-083249-2d6ad9/torus-quartic-master-left.txt>), and [master right side](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/quartic-bv-independent-20261031-083249-2d6ad9/torus-quartic-master-right.txt>).
- Machine-readable [Heisenberg checks](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/quartic-bv-independent-20261031-083249-2d6ad9/checks.json>) and [torus checks](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/quartic-bv-independent-20261031-083249-2d6ad9/torus-checks.json>) include exact term counts.

Remaining work is analytic/geometric: constructing and proving the stated cyclic contraction and complete projector for the specified hyperbolic boundary problem. The normalized algebraic quartic, its complete convention map, actual stationary derivation, and full-BV quartic master identity are established here.
