# Spectral BV compression and the master-equation obstruction

## Result and scope

**A vanishing second-order full-BV logarithmic Jacobian defect does not make a spectrally compressed nonlinear map canonical, or its restricted action a solution of the classical master equation.** The distinction can be proved generally and exhibited inside the gravitational CS ghost algebra.

The calculation gives three results:

1. For a paired, field-independent projector, the second-order difference between the logarithmic Berezinian of a compressed anticanonical Jacobian and the projected supertrace of its logarithm vanishes. All even and odd blocks are required. The corresponding odd-symplectic defect need not vanish.
2. An explicit real Fourier ghost configuration gives a nonzero square of the naively truncated gravitational CS BRST differential. This is a classical obstruction; an order-\(\hbar\) counterterm cannot repair it.
3. In a fully specified finite canonical-coordinate prescription, the connection Gaussian, frame and ghost factors can all be calculated. On a conformal coframe family, their ratio to independently compressed dynamical metric/ghost norms has a nonzero second-order coefficient. Thus the exact pointwise density match does not commute with this truncation.

These are exact algebraic and finite-cutoff statements. The concrete manifold is a closed, complete coordinate three-torus, not the hyperbolic AdS saddle. Its constant coframe is an admissible **off-shell** point of the nondegenerate BV chart, not a solution of the negative-cosmological-constant equations. No complete-AdS spectral trace, boundary BV–BFV theorem, renormalized interacting QME or physical inequivalence is inferred.

## 1. Objects and conventions

Use the three-dimensional Euclidean conventions and antibracket of the [exact nonlinear BV calculation](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/16 Nonlinear BV map and finite density transport.md#L18-L109>): \(a=(16\pi G)^{-1}>0\), \(\kappa=2a\), \(\epsilon_{123}=1\), component-first Grassmann coefficients, and \(QF=(S,F)\). The map \(\Phi\) is the explicit geometric-to-CS field/ghost/antifield transformation in that calculation, not the ghost substitution alone.

An even projection \(P\), independent of fields and of the deformation parameter \(\varepsilon\), retains matching spaces for every Darboux coordinate and its odd dual. Write \(R=1-P\); this \(R\) denotes a projector, not curvature. For an even endomorphism, define its odd-symplectic adjoint \(\ddagger\) by the odd Darboux pairing. Then

\[
(AB)^\ddagger=B^\ddagger A^\ddagger,
\quad P^\ddagger=P,
\quad \operatorname{Str}(A^\ddagger)=-\operatorname{Str}A.
\tag{1}
\]

The last identity reflects parity reversal by the pairing. To use a standard parity-ordered basis \(z=(x,\vartheta)\) with \((x^i,\vartheta_j)=\delta^i_j\), physical pairs have \(x=q,\vartheta=p\), whereas an original odd ghost pair is reordered as \(x=p,\vartheta=-q\). The fixed minus sign must not be omitted. For an even matrix in this basis,

\[
T=\begin{pmatrix}a&b\\c&d\end{pmatrix},\qquad
T^\ddagger=\begin{pmatrix}d^t&b^t\\-c^t&a^t\end{pmatrix},
\quad |b|=|c|=1.
\]

Here \(t\) is array transpose without complex conjugation; odd entries still anticommute, so \((bc)^t=-c^tb^t\). Spatial transpose uses the dual Fourier pairing. An ordinary ungraded transpose of the whole matrix is insufficient.

After identifying the background linear canonical map, write the derivative of a nearby exact canonical map as

\[
M=1+\varepsilon X+\varepsilon^2Y+O(\varepsilon^3),
\qquad M^\ddagger M=1,
\qquad X^\ddagger=-X.
\tag{2}
\]

If the original background map is not the identity, the source and target projectors must first be intertwined by it. Choosing unrelated spectral projectors does not satisfy this hypothesis. The trace calculations below are finite-dimensional, or coefficientwise trace-class where explicitly stated; they are not formal cyclic manipulations of an unregularized functional trace. An operator version additionally requires that the displayed compositions and logarithmic branch exist, for example for a bounded family near the identity. No unbounded derivative-dependent shear is covered merely by writing its formal matrix.

Three operations must be kept distinct:

- **Raw map compression:** \(\Psi_P=P\Phi\iota_P\), whose derivative is \(M_P=PMP|_{\operatorname{ran}P}\).
- **Generator-first truncation:** restrict the type-II generating functional to retained old positions and new momenta, then solve its finite canonical equations. Denote this map by \(\widehat\Phi_P\). It is locally canonical when its mixed Hessian is invertible, but is generally not \(\Psi_P\).
- **Wilsonian BV transfer:** integrate a suitable UV BV Lagrangian, with action, measure, propagator, interactions and master equation controlled. Neither of the previous operations alone performs this integration.

The closed-torus examples have no physical wall or corner to discard. They do not replace the completed relative CPS structures of the earlier reports; the odd BV pairing here is not the even regional CPS form.

## 2. A general second-order cancellation, and what it does not cancel

### Proposition 1: canonical leakage

The compressed derivative satisfies the exact identity

\[
\boxed{
M_P^\ddagger M_P-P
=-(RMP)^\ddagger(RMP).
}
\tag{3}
\]

Indeed, insert \(1=P+R\) between \(M^\ddagger\) and \(M\) in \(PM^\ddagger MP=P\). Consequently,

\[
M_P^\ddagger M_P-P
=\varepsilon^2PX RXP+O(\varepsilon^3).
\tag{4}
\]

The sign follows from \(X^\ddagger=-X\). This is an odd-pairing identity, not a positivity claim about the right-hand side. A nonzero coefficient in (4) disproves canonicality of the compressed map.

### Proposition 2: the full logarithmic defect vanishes at second order

Expanding both logarithms gives

\[
\begin{split}
\log\operatorname{Ber}M_P-\operatorname{Str}_P(P\log M P)
&=\frac{\varepsilon^2}{2}
\operatorname{Str}_P(PX RXP)+O(\varepsilon^3)\\
&=O(\varepsilon^3).
\end{split}
\tag{5}
\]

The first equality is ordinary finite matrix-log expansion with the supertrace. For the second, \((PX RXP)^\ddagger=PX RXP\), while (1) reverses its supertrace. Thus that supertrace is zero. No cancellation of individual bosonic determinants, no equation of motion and no special coframe ansatz is needed.

This includes mixed odd-coefficient blocks and hence nilpotent antifield coefficients, provided the entire BV tangent space and paired projector are used. Nor does zero supertrace imply that the endomorphism in (4) vanishes. A heat-kernel assignment of zero finite part is not used anywhere in this proof.

### First possible nonzero logarithmic discrepancy

An [independent full-parity derivation](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent-spectral-second-order-20261031-GVgawC/report.frozen-independent.md#L178-L239>) also determines the next coefficient. Write the cutoff blocks of \(X\) as \(\mathsf A=X_{PP},\mathsf B=X_{PR},\mathsf C=X_{RP},\mathsf D=X_{RR}\); each block still has its complete parity grading. Then

\[
\boxed{\log\operatorname{Ber}M_P-\operatorname{Str}_P(P\log MP)
=\frac{\varepsilon^3}{6}\operatorname{Str}_P
(\mathsf B\mathsf D\mathsf C-\mathsf A\mathsf B\mathsf C)
+O(\varepsilon^4).}
\tag{5a}
\]

For a proof, write \(\log M=\varepsilon X+\varepsilon^2Z+\cdots\), with \(Z^\ddagger=-Z\). The quadratic leakage involving one \(X\) and one \(Z\) is self-adjoint and has zero supertrace. Expansion of \(\log(P\exp(\log M)P)\) leaves (5a). In particular, the exact cotangent lift \(M(t)=\operatorname{diag}(A(t),A(t)^{-T})\), where

\[
A(t)=\begin{pmatrix}1+t&t\\t&1\end{pmatrix},
\]

and projection onto the first even coordinate and its odd dual, has gap \(-t^3/3+O(t^4)\). Thus an all-orders equality is false even without nilpotent coefficients. A separate exact exterior-algebra example verifies (5a) with every parity block nonzero.

## 3. The actual gravitational map after Fourier projection

Take \(T^3\) with coordinates of period \(2\pi\), volume \(V=(2\pi)^3\), normalized Fourier averages \(\langle h\rangle=V^{-1}\int h\,d^3x\), and the cubical Fourier projection

\[
P_N:\quad |k_i|\le N,\qquad n=2N+1,
\qquad \dim\operatorname{ran}P_N=n^3.
\tag{6}
\]

It is a joint spectral cutoff of the three flat translation operators, not the round cutoff of a hyperbolic Casimir. Use the same real orthonormal Fourier space, or its complexification with basis \(V^{-1/2}e^{ik\cdot x}\) and dual mode pairing, on every component. Physical actions retain the original unnormalized spacetime integral; the normalized average is only Fourier bookkeeping. Take a smooth real \(b\in\operatorname{ran}P_N\), so that the following evaluation point is retained, and put

\[
e^a{}_\mu=f(x)\delta^a{}_\mu,
\quad f=1+\varepsilon b>0,
\quad \omega=0,
\quad \text{ghosts}=\text{antifields}=0,
\]

and define finite scalar matrices

\[
F_p=P_N f^p P_N|_{\operatorname{ran}P_N},
\quad A=F_1,\quad B=F_{-1},
\quad C=P_N bP_N,
\quad D=P_N b^2P_N.
\tag{7}
\]

All BV directions are differentiated **before** setting the ghosts and antifields to zero. The only nonidentity diagonal blocks of the full Jacobian are

\[
\xi\longmapsto\tau:\ A\otimes1_3\quad\text{(odd)},
\qquad
\xi^*\longmapsto\tau^*:\ B^{T}\otimes1_3\quad\text{(even)}.
\]

The other physical, physical-antifield, Lorentz-ghost and Lorentz-ghost-antifield blocks are identity at this point. Thus

\[
\boxed{\operatorname{Ber}D\Psi_{P_N}
=\left(\frac{\det B}{\det A}\right)^3.}
\tag{8}
\]

Its ghost/ghost-antifield pairing is multiplied by \(AB\) or its dual ordering, not by the identity:

\[
AB-1=\varepsilon^2(D-C^2)+O(\varepsilon^3),
\qquad D-C^2=P_N b(1-P_N)bP_N.
\tag{9}
\]

For \(b=\cos x^1\), \(N\ge1\), the one-dimensional factor of \(D-C^2\) has entries \(1/4\) at the two endpoints \(k_1=\pm N\) and zero elsewhere. The transverse modes give

\[
\mathcal T_N(b):=\operatorname{Tr}[P_N b(1-P_N)bP_N]
=\frac{n^2}{2}>0.
\tag{10}
\]

At the same time, (8) gives

\[
\log\operatorname{Ber}D\Psi_{P_N}
=-6\operatorname{Tr}(P_N\log fP_N)+O(\varepsilon^3),
\tag{11}
\]

as predicted by Proposition 2. Noncanonicality and the second-order logarithmic cancellation coexist in this **full** gravitational Jacobian, not in a bosonic subblock substituted for it.

For comparison, the generator-first map has \(\tau=A\xi\) and \(\tau^*=A^{-T}\xi^*\) at this slice. Its full Berezinian is \((\det A)^{-6}\), its semidensity coefficient is \((\det A)^{-3}\), and the pair is exactly canonical. Confusing \(B\) with \(A^{-1}\) erases precisely (9).

### An exact high-order false positive for a determinant test

For the cosine family, the [independent Toeplitz calculation](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/spectral-independent-20261031.sSj8f4/derivation.md#L27-L123>) determines (8) without a perturbative truncation. Define

\[
s=\sqrt{1-\varepsilon^2},\qquad
\alpha=\frac{1+s}{2},\qquad q_s=\frac{1-s}{1+s}.
\]

For one Fourier chain of length \(n\), tridiagonal determinant recursion and row subtraction in \(B_{ij}=s^{-1}[-\varepsilon/(1+s)]^{|i-j|}\) give

\[
\det A_{\mathrm{ch}}=\alpha^n\frac{1-q_s^{n+1}}{1-q_s},
\qquad \det B_{\mathrm{ch}}=\frac{\alpha^{-n}}{1-q_s}.
\]

There are \(n^2\) transverse chains, while \(\langle\log f\rangle=\log\alpha\). Consequently the exact full-BV logarithmic gap is

\[
\boxed{\log\operatorname{Ber}D\Psi_{P_N}
+6\operatorname{Tr}(P_N\log fP_N)
=-3n^2\log(1-q_s^{n+1}).}
\tag{11a}
\]

It first appears at \(\varepsilon^{2n+2}=\varepsilon^{4N+4}\), even though canonicality already fails at second order. For fixed \(|\varepsilon|<1\) this logarithmic gap tends to zero with \(N\); it still does not prove a finite-cutoff master equation or control interacting continuum limits.

## 4. A real gravitational ghost configuration that violates the truncated CME

Write the gravitational CS gauge algebra as

\[
[J_a,J_b]=\epsilon_{ab}{}^cJ_c,
\quad[J_a,P_b]=\epsilon_{ab}{}^cP_c,
\quad[P_a,P_b]=-\epsilon_{ab}{}^cJ_c.
\tag{12}
\]

Its ghost is \(c=\rho^aJ_a+\tau^aP_a\), with

\[
Q c=-\tfrac12[c,c].
\]

Restricting the minimal action to the retained Fourier coordinates gives the ghost component

\[
Q_Nc=-\tfrac12P_N[c,c],
\qquad
\boxed{Q_N^2c=-\tfrac12P_N[(1-P_N)[c,c],c].}
\tag{13}
\]

This follows by applying the left odd differential and using the full graded Jacobi identity. Projected multiplication is not an associative product with respect to which the original Lie bracket would automatically obey Jacobi.

For any \(N\ge1\), take three independent real odd generators \(\vartheta_i\) and

\[
\rho=
\vartheta_1 J_1\cos(Nx^1)
+\vartheta_2 J_2\cos(Nx^1)
+\vartheta_3 J_1\sin(Nx^1),
\qquad\tau=0.
\tag{14}
\]

Since \(P_N\cos^2(Nx^1)=1/2\) and \(P_N[\cos(Nx^1)\sin(Nx^1)]=0\),

\[
Q_N\rho=-\tfrac12\vartheta_1\vartheta_2J_3,
\qquad
\boxed{Q_N^2\rho=
\tfrac12\vartheta_1\vartheta_2\vartheta_3J_2\sin(Nx^1)\ne0.}
\tag{15}
\]

The second expression means evaluate the square of the full retained vector field at (14), not artificially declare only three coordinates dynamical. The translation-ghost equation and its derivative cannot cancel it at \(\tau=0\). Physical-field and antifield blocks cannot cancel it either: the minimal CS ghost transformation is independent of them. Thus this is a witness inside the full gravitational theory. It can be placed at any retained nondegenerate physical coframe.

For an additional exact implementation, the complex Fourier configuration \(\rho=\vartheta_1J_1e^{ix^1}+\vartheta_2J_2e^{ix^1}+\vartheta_3J_1e^{-ix^1}\) at \(N=1\) gives \(Q_N^2\rho=-\vartheta_1\vartheta_2\vartheta_3J_2e^{ix^1}\). The parent computation keeps all eighteen \(J/P\) ghost generators with \(k_1=-1,0,1\) and \(k_2=k_3=0\); the unprojected square vanishes identically and the projected leakage identity holds coefficientwise. This transverse-constant ghost subspace is stable under both brackets and embeds in the full cubical cutoff, so omitted transverse ghost values cannot cancel the witness.

If \(S_N\) is the naively restricted action, (15) implies \((S_N,S_N)_N\ne0\). With a bookkeeping interaction coupling \(g\), \(S=S_2+gS_3\), this is the order-\(g^2\) classical master-equation obstruction, represented by a quartic functional. In a QME expansion \(S_N+\hbar S_{N,1}+\cdots\), an \(O(\hbar)\) density or action counterterm cannot cancel the nonzero \(\hbar^0\) bracket. Finite canonical conjugation of \(S_N\) transports this failure; it does not cure it.

## 5. Finite auxiliary integration: projection and elimination do not commute

The pointwise auxiliary split is

\[
\omega=\omega(e)-Ue,
\qquad I_P=I_g+a\int\det(e)q(U),
\quad q(U)=(\operatorname{tr}U)^2-\operatorname{tr}(U^2).
\tag{16}
\]

Here the exact action and contour are those of the [geometric auxiliary reduction](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/16 Nonlinear BV map and finite density transport.md#L264-L324>). The nine-component quadratic operator \(L(U)=\operatorname{tr}(U)1-U^T\) has signature \((4,5)\).

At \(e=f1\), the **original retained connection action**, as a quadratic function of the nine connection components, has Hessian

\[
H_{\omega,N}=2a A\otimes L.
\tag{17}
\]

Its normalized Gaussian determinant factor is \((\det A)^{-9/2}\). Since \(f>0\), \(A>0\); rotating the same five negative internal directions per spatial mode gives phase \(i^{5n^3}\), removed by the common background normalization. Linear sources shift the center but do not change this determinant.

If one introduces the finite affine coordinate

\[
\omega_N=P_N\omega(e)-A U_N,
\]

the Hessian becomes \(2a A^3\otimes L\). Its Gaussian factor \((\det A)^{-27/2}\) and coordinate Jacobian \((\det A)^9\) reproduce (17). In contrast, restricting the **already continuum-eliminated split** (16) gives \(2aF_3\otimes L\). These are different finite theories:

\[
F_3-A^3=3\varepsilon^2(D-C^2)+O(\varepsilon^3).
\tag{18}
\]

Using \(F_3\) with the Jacobian of the projected affine map would silently combine two incompatible truncations. A projected torsion-free center also need not be the stationary point of the original finite action.

### The finite classical effective action also differs

A [separate post-freeze calculation](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/spectral-independent-20261031.sSj8f4/connection_action_addendum.md>) determines this source effect exactly. For the cosine family the only sourced internal direction has \(\omega^2{}_3=-v,\omega^3{}_2=v\). On that direction,

\[
I_P=2aV\left[\langle v,Av\rangle-2\langle f',v\rangle-\langle f^3\rangle\right].
\]

The orthogonal internal directions are still included in the full nine-component Gaussian (17). The finite stationary point is \(v_N=A^{-1}f'\), not \(Bf'\). On the sine basis \(\sin x^1,\ldots,\sin Nx^1\), the multiplier is a length-\(N\) tridiagonal matrix. If \(D_j\) denotes its length-\(j\) determinant, cofactor inversion gives

\[
r_N:=\langle f',A^{-1}f'\rangle
=\frac{\varepsilon^2}{2}\frac{D_{N-1}}{D_N}
=(1-s)\frac{1-q_s^N}{1-q_s^{N+1}},
\qquad r_\infty=\left\langle\frac{(f')^2}{f}\right\rangle=1-s.
\]

The symbols \(s,q_s\) are those below (11). Completing the square, with the original spacetime normalization, yields

\[
\boxed{I_{\mathrm{eff},N}-I_g[f^2 1]
=2aV(r_\infty-r_N)
=\frac{4aV s q_s^{N+1}}{1-q_s^{N+1}}
=\frac{aV}{4^N}\varepsilon^{2N+2}+O(\varepsilon^{2N+4}).}
\tag{18a}
\]

At \(N=2,\varepsilon=3/5\) the gap is exactly \(2aV/455\). The determinant recurrence proves the all-\(N\), \(|\varepsilon|<1\) expression; eighteen exact checks of the full Fourier inverse independently test it. For the retained metric family \(N\ge2\), this action correction begins at sixth or higher order, distinct from the second-order density discrepancy below. Neither the determinant nor the effective exponential should be silently omitted.

## 6. All body-density factors in one specified finite prescription

This section specifies a calculation, not a regulator-independent invariant. Use \(b=\cos x^1\), \(N\ge2\), so both \(e=f1\) and \(g=f^2 1\) are retained configurations. Set retained ghosts and retained antifields to zero **after** computing the measure factors. Start with the constant frozen-background minimal CS semidensity and:

1. Use the generator-first map \(\widehat\Phi_{P_N}\), not raw map compression.
2. Define the inverse metric/frame coordinate chart by \(e_N=P_N(\exp\theta\sqrt g)\) and take its exact finite cotangent lift. This chart is locally invertible at the stated family; \(A\) and \(B\) are positive. It is not the inverse of \(g_N=P_N(e^Te)\).
3. Integrate the **original finite connection Gaussian** (17), with its normalized upper contour.
4. On \(\theta=0\), normalize the interior rotation-ghost fiber with unit coefficient. At zero retained diffeomorphism ghost, the rotation law is \(\delta e_N=A\lambda\), while the chart has \(\delta_\theta e_N=A\delta\theta\), so \(Q_N\theta=\lambda\) on this slice. The normalized Lorentz Berezin integral is constant. This is an algebraic fiber computation, not a global BRST-doublet assertion for the failed truncated CME.

The constant Lorentz-fiber assertion must also hold at nonzero **integrated** \(\theta^*\), not merely at the all-zero body. The [separate supplied-fiber audit](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/spectral-independent-20261031.sSj8f4/supplied_note17_audit.md#L25-L117>) gives the exact argument. On

\[
g^*=\xi^*=\xi=0,\qquad U^*=\theta=\chi^*=0,
\]

keep \(\theta^*,\chi\) and the integrated connection arbitrary. The finite cotangent lifts give old \(\omega^*=\lambda^*=\xi^*_{\mathrm{old}}=0\); solving the type-II equations gives \(e_c^*=e^*(\theta^*)\), \(\omega_c^*=\rho^*=\tau^*=0\). At fixed new momenta the type-II mixed matrix, denoted \(\mathbb M\) to distinguish it from the full Jacobian, is

\[
\mathbb M=\begin{pmatrix}1&K(e^*)\\0&D_\mathrm{gh}\end{pmatrix},
\qquad
D_\mathrm{gh}=\begin{pmatrix}1&P_N\omega P_N\\0&A\otimes1_3\end{pmatrix}.
\]

Thus \(\operatorname{Ber}\mathbb M=(\det A)^{-3}\), and the full type-II Berezinian is its square, independent of all integrated \(\theta^*,\chi,\omega\). The sole extra odd-entry block \(K\) comes from \(\kappa^{-1}\iota_\xi e_c^*\); its opposite Schur block is zero. The action on this fiber is exactly \(I_{P,N}+\langle e^*,P_N[e,\chi]\rangle_{\rm BV}=I_{P,N}+\langle\theta^*,\chi\rangle_{\rm BV}\), by the finite cotangent pairing. Here \(\langle p,q\rangle_{\rm BV}\) is the integrated Darboux pairing, equivalently the orthonormal Fourier coefficient sum, not the normalized scalar average of §3. Its Berezin integral is therefore the same field-independent constant as at the background. No global nilpotent doublet was invoked.

At the conformal family the inverse frame-chart derivative is \(B/2\) on six symmetric metric components and \(A\) on three rotations. Field-independent metric-coordinate normalization constants are fixed at \(f=1\). The factors are therefore

| Factor | Normalized base/semidensity coefficient |
| --- | ---: |
| Generator-first CS-to-geometric pullback, with all BV duals included | \((\det A)^{-3}\) |
| Inverse metric/frame chart | \((\det B)^6(\det A)^3\) |
| Original nine-component connection Gaussian | \((\det A)^{-9/2}\) |
| Normalized rotation/ghost fiber | \(1\) |
| **Combined** | \(J_N=(\det B)^6(\det A)^{-9/2}\) |

The physical and ghost counts are not an auxiliary determinant masquerading as the full density. The same result follows using the finite \(U_N\) coordinate and its compensating Jacobian in §5. The affine source or a metric-dependent classical effective action is not included in the symbol \(J_N\).

Independently restrict the dynamical target norms

\[
\|\delta g\|^2_g=\tfrac14\int\mathrm{vol}_g\,
\operatorname{tr}(g^{-1}\delta g\,g^{-1}\delta g),
\qquad
\|\xi\|^2_g=\int\mathrm{vol}_g\,g_{\mu\nu}\xi^\mu\xi^\nu.
\]

At \(g=f^2 1\), their Gram matrices are \(B\) on each of six metric components and \(F_5\) on each of three ghost components. Thus the target density, including the inverse volume appropriate to odd variables, is

\[
J_{\mathrm{target},N}=(\det B)^3(\det F_5)^{-3/2}.
\tag{19}
\]

The exact finite density ratio in this prescription is

\[
\boxed{\mathcal J_N=
\frac{J_N}{J_{\mathrm{target},N}}
=(\det B)^3(\det A)^{-9/2}(\det F_5)^{3/2}.}
\tag{20}
\]

For a scalar multiplication insertion and any fixed paired finite projector,

\[
\log\det F_p
=p\operatorname{Tr}(P_N\log fP_N)
+\tfrac12p^2\varepsilon^2\mathcal T_N(b)+O(\varepsilon^3).
\tag{21}
\]

This is a direct expansion using \(F_p=1+p\varepsilon C+\tfrac12p(p-1)\varepsilon^2D+\cdots\). Inserting \(p=-1,1,5\) in (20), the pointwise logarithms cancel, but the leakage terms give

\[
\boxed{\log\mathcal J_N
=18\varepsilon^2\mathcal T_N(b)+O(\varepsilon^3)
=9n^2\varepsilon^2+O(\varepsilon^4)
\quad(b=\cos x^1).}
\tag{22}
\]

Translation by \(\pi\) in \(x^1\) conjugates every finite matrix at \(\varepsilon\) to that at \(-\varepsilon\), giving the even remainder in the last expression. For example, \(N=2\) gives coefficient \(225\), not zero. In the multiplication-preserving pointwise calculation the same powers give \(f^{-21/2}\) on both sides, as required by the previous note. Constant \(b\), or any multiplication operator preserving the retained space, has \(\mathcal T_N=0\) and passes this limiting test.

This result concerns the stated zero-retained-ghost/antifield coefficient. No finite-mode arbitrary-antifield density theorem is claimed. Changing the finite chart, its generator, the order of auxiliary elimination or the target Gram prescription can change the answer. The failure of a truncated CME in §4 also prevents calling (20) a quantum-BV equivalence theorem.

## 7. The sharp-cutoff defect is not generally a local counterterm

For real \(b(x)=\sum_qb_qe^{iq\cdot x}\), Fourier orthogonality gives the exact identity

\[
\mathcal T_N(b)=\sum_{q\in\mathbb Z^3}|b_q|^2
\left[n^3-\prod_{i=1}^3(n-|q_i|)_+\right].
\tag{23}
\]

It counts retained modes carried outside the cube by multiplication. For finite Fourier support and sufficiently large \(N\), the leading term is

\[
n^2\sum_q|b_q|^2\bigl(|q_1|+|q_2|+|q_3|\bigr)+O(n).
\tag{24}
\]

The nonpolynomial Fourier symbol \(|q_1|+|q_2|+|q_3|\) is not the symbol of a fixed finite-order local differential counterterm. This excludes a universal fixed-derivative-order local cancellation of this sharp-cube density defect, uniform in the cutoff and valid for all profiles. Allowing the derivative order itself to grow with \(N\) can interpolate a finite mode set, but is not the excluded fixed-order local continuum prescription. A single cosine can of course be canceled by fitting a coefficient on that one family; that does not establish locality. For general finite-support profiles the same inverse-chart calculation applies when \(N\) also contains the Fourier support of \(f^2\).

Equations (23)–(24) diagnose this regulator/coordinate mismatch, not a scheme-independent gravitational anomaly. Smooth regulators, round spectral cuts and Wilsonian effective vertices require their own computations. In particular, the finite part of the complete-AdS common-Casimir prescription has not been obtained by taking a finite part of (24).

## 8. What a valid transfer must still construct

A generator-first canonical map repairs the coordinate-pairing problem but does not repair a source action that already violates the CME. A true transfer must first retain the missing UV interactions. For cubic CS expanded around an **on-shell** background, a suitable route requires a free differential \(Q_0\) preserving the paired splitting and a cyclic, BV-compatible UV contraction \(h\), with \(Q_0h+hQ_0=1-P\) and compatible domains. An arbitrary algebraic homotopy is not enough. The first new tree-level vertex is quartic; a valid transferred action must obey

\[
\boxed{(S_{2,P},S_{4,\mathrm{eff}})_P
=-\tfrac12(S_{3,P},S_{3,P})_P.}
\tag{25}
\]

This is the explicit cancellation to construct, not an assertion that the required AdS contraction or vertex has been found. At one loop there are further density and loop-vertex contributions. The off-shell torus family above is not being used as a free gravitational saddle.

The finite next target is therefore a specified UV homotopy/propagator on the actual complete-background gravitational BV complex, followed by the tree-level quartic transfer and its one-loop measure transport. It must be compared through the exact nonlinear map, with proper domains, contours and the completed boundary data. Without those ingredients, neither a trace-log cancellation nor an adjustable measure alone decides continuum quantum equivalence.

**Subsequent construction.** The [complete-AdS tree follow-up](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/18 Complete AdS BV contraction and tree transfer.md>) now constructs that cyclic homotopy on the actual on-shell complex, derives the full quartic vertex \(-\mathcal B([x,x],h_T[x,x])/8\), and proves (25) and the formal tree CME by stationary reduction. It also supplies a small physical-field existence theorem and the combined relative wall limit. This does not alter the counterexamples above: raw truncation is still not transfer. Interacting geometric/metric transport and one-loop density remain open; a new product-Sobolev ghost-map obstruction requires a more careful domain for that comparison.

## 9. Evidence and proof levels

- **Proved analytically:** Propositions 1–2 and the cubic coefficient; all-direction gravitational body Jacobian, exact Toeplitz determinant and canonical defect; the real ghost witness (15); the finite auxiliary ordering distinction and exact classical source correction; the specified density with its full integrated Lorentz fiber on the restricted slice; Fourier leakage counting and its nonlocal leading symbol.
- **Independent full-parity evidence:** the [frozen derivation](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent-spectral-second-order-20261031-GVgawC/report.frozen-independent.md>) and its 26-check native-Sage run include odd-coefficient matrices, the cubic counterexample and an independent finite CME counterexample. Its [separate supplied-text audit](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent-spectral-second-order-20261031-GVgawC/supplied-text-audit.md>) confirms the real gravitational witness and locality inference, with explicit ghost-pair and basepoint qualifications. It does not audit the density factors.
- **Independent scalar-family evidence:** the [frozen derivation and evidence record](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/spectral-independent-20261031.sSj8f4/FREEZE.md>) has 78 Wolfram and 25 native-Sage checks. The parent flagged projection-versus-elimination ordering during that investigation, but supplied no candidate Hessian or density coefficient before its freeze. The [post-freeze action calculation](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/spectral-independent-20261031.sSj8f4/connection_action_addendum.md>) has eighteen new exact tests; the [separate supplied-fiber audit](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/spectral-independent-20261031.sSj8f4/supplied_note17_audit.md>) adds eight relevant N=2 checks while retaining all integrated Lorentz antifields. Analytic full-cube arguments and finite one-chain checks are distinguished.
- **Exact finite checks:** the [parent Sage source](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/verification/spectral_bv_compression_checks.py>) and [actual 40-check result](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/verification/spectral-bv-parent.w1iz7yst/result.json>) verify the full eighteen-generator gravitational ghost Jacobi/leakage calculation, the complex witness, endpoint matrices, full body Berezinian cancellation and density coefficients for \(N=1,2,3,4\), auxiliary ordering, and twelve separate cubical leakage counts. \(N=1\) density-series checks are matrix identities only; the retained metric-family interpretation in §6 uses \(N\ge2\).
- **Assumptions:** exact local classical BV map; complete paired dual coordinate spaces; fixed projector; finite or explicitly trace-class algebra; positive conformal coframe and named finite chart; original connection action and contour; background-normalized source density and independently restricted target Gram matrices.
- **Not established:** an interacting complete-AdS cutoff/renormalized QME, full nonlinear Brown–Henneaux proper domain, boundary BFV transfer, global cycles, gauge-fixing-independent continuum pushforward or physical quantum inequivalence.
