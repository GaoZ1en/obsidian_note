# Modewise Symplectic Composition and Associativity

## 1. Direct Verdict

For every radiative \((\ell,m,P)\) sector on the product benchmark, composition is now symplectic, not merely formal frame bookkeeping. Explicit Goursat reconstruction identifies the matched characteristic locus with one master solution space; the pullback two-form has zero kernel; and either parenthesization of a multi-cell gluing is canonically symplectomorphic to the same solution space.

This statement is proved only for \(\ell\geq1\) radiative sectors and for the declared endpoint policy. The \(\ell=0\) fixed-flux sector has zero tangent two-form; the optional extended frame--flux pair retains only the finite-dimensional Abelian associativity proved earlier.

## 2. One-Sector Compatibility Locus

For one master on two intersecting null intervals, begin with the product of profile spaces

$$
\widetilde{\mathcal G}_{U,V}^1
=H^1(0,U)\oplus H^1(0,V).
$$

The characteristic compatibility locus is

$$
\mathcal C_{\ell P}
=\{(f,g)\in\widetilde{\mathcal G}_{U,V}^1:f(0)=g(0)\}.
\tag{2.1}
$$

This is the harmonic version of shared electric/magnetic corner curvature. In electric variables,

$$
f^E(0)=g^E(0)=-E_{0,\ell m}/\sqrt{\lambda_\ell};
$$

in magnetic variables,

$$
f^B(0)=g^B(0)=-B_{0,\ell m}/\sqrt{\lambda_\ell}.
$$

No quotient acts on the master variables: the proper gauge quotient was already taken in passing from the potential to \(\Phi^E,\Phi^B\).

The reconstruction theorem gives a bounded bijection

$$
\mathcal R_{\ell P}:\mathcal C_{\ell P}
\overset\sim\longrightarrow
\operatorname{Sol}_{\ell P}(D_{U,V}).
\tag{2.2}
$$

Thus the compatibility locus is not merely necessary; in the benchmark it is exactly the image of bulk restriction.

## 3. Pullback Two-Form and Kernel

Pulling the action-derived solution two-form through (2.2) gives

$$
\Omega_{\mathcal C}((f_1,g_1),(f_2,g_2))
=\int_0^U(f_1'f_2-f_2'f_1)du
+\int_0^V(g_1'g_2-g_2'g_1)dv.
\tag{3.1}
$$

The kernel computation in Section 3 of `08-symplectic-mode-normalization.md` gives

$$
\ker\Omega_{\mathcal C}=0.
\tag{3.2}
$$

Hence (2.2) is a weak symplectic isomorphism.

There is a functional-analytic subtlety in calling (2.1) “first class,” “second class,” or “coisotropic.” In the weak \(H^1\) symplectic topology, the endpoint evaluation functional does not possess a Hamiltonian vector field in the unextended profile space. Indeed, solving

$$
\Omega_I(X,h)=h(0)
$$

would require simultaneously \(X'=0\), \(X(U)=0\), and \(X(0)=1\), which is impossible for \(X\in H^1(0,U)\). Therefore the finite-dimensional first/second-class vocabulary is not intrinsically defined for the naked weak profile space.

If endpoint cotangent variables are added, corner equality and its conjugate mismatch may be organized as a regular second-class pair. In the split Maxwell frame extension, electric matching is instead the moment map for diagonal gauge and is reduced as in `02-corner-gauge-reduction.md`. These are distinct constructions; neither is needed for the already reduced radiative masters.

## 4. Composition of Adjacent Characteristic Cells

Let \(D_1,D_2\) be adjacent product rectangles sharing one null edge. A pair of master solutions \((\Phi_1,\Phi_2)\) glues if their \(H^1\) traces agree on that edge. Because both obey the same linear equation, equality of the characteristic trace is the complete gluing condition; transverse derivatives are then fixed by the equation and the remaining characteristic data.

Let \(\mathcal C_{12}\subset\operatorname{Sol}(D_1)\times\operatorname{Sol}(D_2)\) be this trace-matching locus. The explicit Goursat theorem gives a unique solution on \(D_1\cup D_2\),

$$
G_{12}:\mathcal C_{12}\overset\sim\longrightarrow
\operatorname{Sol}(D_1\cup D_2).
\tag{4.1}
$$

On the shared edge the two induced orientations are opposite, so the internal symplectic flux cancels. Therefore

$$
G_{12}^*\Omega_{D_1\cup D_2}
=\left.(\Omega_{D_1}+\Omega_{D_2})\right|_{\mathcal C_{12}}.
\tag{4.2}
$$

Since the right-hand side pulls back from the weakly nondegenerate form on the unique glued solution space, its kernel on the compatible quotient is zero.

## 5. Three-Cell Associativity

For three adjacent cells, define the simultaneous compatibility locus

$$
\mathcal C_{123}
=\{(\Phi_1,\Phi_2,\Phi_3):
\operatorname{tr}_{12}\Phi_1=\operatorname{tr}_{12}\Phi_2,
\ \operatorname{tr}_{23}\Phi_2=\operatorname{tr}_{23}\Phi_3\}.
\tag{5.1}
$$

Both iterated reconstructions

$$
G_{(12)3},\qquad G_{1(23)}:
\mathcal C_{123}\longrightarrow
\operatorname{Sol}(D_1\cup D_2\cup D_3)
$$

solve the same Goursat problem with the same outer data. Uniqueness implies

$$
G_{(12)3}=G_{1(23)}.
\tag{5.2}
$$

Repeated use of (4.2) gives

$$
G_{(12)3}^*\Omega
=\left.(\Omega_1+\Omega_2+\Omega_3)\right|_{\mathcal C_{123}}
=G_{1(23)}^*\Omega.
\tag{5.3}
$$

Thus the identity map on the unique glued solution defines the canonical weak symplectic isomorphism

$$
\boxed{(P_1\circ P_2)\circ P_3
\simeq_{\mathrm{sympl}}
P_1\circ(P_2\circ P_3)}
\tag{5.4}
$$

in each \((\ell,m,P)\) sector. The direct orthogonal sum over sectors preserves (5.4) on the smooth radiative core and on the stationary energy completion.

## 6. Stationary Mode Check

For a global mode, the trace on every shared edge is inherited from the same function

$$
e^{-i\alpha u-i\beta v},
\qquad \alpha\beta=\lambda_\ell/2.
$$

Internal edge terms in (4.2) cancel pairwise. The remaining outer cross gives the single normalization

$$
\Omega(U_k,U_{k'}^*)=-i\delta(k-k'),
$$

independently of how the cells are parenthesized. The script regression represents each cell restriction by a linear trace map and verifies that the two composed pullbacks give the same finite-dimensional symplectic matrix before taking the continuum interpretation.

## 7. Relation to Maxwell Frame Reduction

For \(\ell\geq1\), master compatibility already contains the harmonic projections of electric, magnetic and connection compatibility. No \(\lambda_{\mathrm{rel}}\) oscillator survives in the single-trivialization radiative sector.

For \(\ell=0\):

- fixed \(Q_E\) gives \(\delta Q_E=0\), so the relative frame does not enter the two-form;
- fixed Chern class \(n\) is a discrete label;
- if the extended pair \((Q_E,\lambda_0)\) is retained, its Abelian addition and diagonal reduction remain associative as in the old formal proof, but this is a separate zero-mode theorem.

Therefore modewise radiative associativity does not promote a fixed-flux frame label into an oscillator.

## 8. Status

**Proved:** exact compatibility locus, pullback two-form, zero kernel after proper gauge reduction, and canonical weak symplectic associativity for every radiative harmonic sector.

**Clarified:** the naked endpoint trace constraint is not assigned an unjustified finite-dimensional coisotropic label in the weak \(H^1\) space; an endpoint extension is required before that vocabulary applies.

**Still conditional outside the benchmark:** nonlinear/non-Abelian singular reductions, curved backgrounds without explicit Goursat uniqueness, and topologies with harmonic one-form holonomies.
