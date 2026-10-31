# Independent audit: finite-crossing Witt anomaly and the polarized tangent quotient

## Result

**The finite-crossing cocycle is determined exactly, but it does not determine a gravity central charge.** With precisely the bracket and trace ordering in the question,

\[
\boxed{\sigma_r(m,n)=\delta_{m+n,0}\left[-\frac{13}{6}m^3+
\left(r^2-r+\frac16\right)m\right]
=\delta_{m+n,0}\left[-\frac{13}{6}(m^3-m)+(r-2)(r+1)m\right].}
\]

It is a nontrivial Witt Lie-algebra two-cocycle. Changing the integer threshold changes only a coboundary. The two thresholds **r = -1 and r = 2** give the same cocycle, horizontal for sl(2), with Virasoro coefficient **c = -26** in the convention specified below.

There is a coherent **infinitesimal, centrally equivariant determinant/dual-half-form model**: the positive-occupied determinant anomaly is this cocycle; its dual has the opposite cocycle; its dual square root has one half of that opposite cocycle, hence **c = +13**. This is not a theorem that the physical quantization uses that line. In particular, an infinite-dimensional polarized tangent determinant is not defined merely by writing a top exterior power.

The crucial counterexample to a naive physical-mode argument is exact:

\[
[Q\rho_2Q,Q\rho_{-2}Q]e_2=0,
\qquad 4Q\rho_0Qe_2=-8e_2,
\]

where Q removes the modes -1, 0, 1. Thus the compressed action on physical modes is **not a Witt representation**. Its corresponding positive/negative crossing trace fails Jacobi, with residual **72** at the triple (1,3,-4). One cannot substitute this compression for the full vector-field representation.

### Independence and evidence

This analysis began from the algebraic setup in the request. No parent report, reviewer report, or research note was read. The only pre-existing local text read was the vault's applicable instructions and the requested math-computation skill and its Sage instructions. No existing research file was edited. Further independent-agent delegation was unavailable at this session's depth; the calculations below therefore constitute one independent review, not two independent human/agent proofs.

The evidence is supplied in full:

- [Readable exact-check source](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/witt_independent_20261031T021058_91f3a8_checks.py>). To rerun, select a new OUTPUT filename: exclusive creation intentionally prevents overwriting the archived run.
- [Full actual Sage stdout](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/witt_independent_20261031T021058_91f3a8_stdout.txt>).
- [Complete raw Sage request and response](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/witt_independent_20261031T021058_91f3a8_sage_raw.json>), including exact executed input, all output, hashes, timing, and the harmless deprecated version-function warning. No returned output was truncated.

## 1. Objects, assumptions, and normalization

Work over the complex numbers with the algebraic direct sum

\[
\mathfrak g=\bigoplus_{m\in\mathbb Z}\mathbb C l_m,
\qquad [l_m,l_n]=(m-n)l_{m+n},
\]

and its adjoint module

\[
V=\bigoplus_{n\in\mathbb Z}\mathbb C e_n,
\qquad \rho_m e_n=(m-n)e_{m+n}.
\]

Generators are finite Fourier sums. Set W_r = span{e_n : n >= r}, P_r its algebraic coordinate projection, and P_r^perp = 1-P_r. For finite Fourier generators, each off-diagonal block across this cutoff has finite rank. Consequently every trace in the question is an ordinary finite-rank trace: no zeta regularization or infinite diagonal trace is used.

A central extension is written

\[
[L_m,L_n]=(m-n)L_{m+n}+\sigma(m,n)K.
\]

When the central element acts as 1, the **vacuum normalization** of the Virasoro algebra is

\[
\sigma^{\rm vac}(m,n)=\frac{c}{12}(m^3-m)\delta_{m+n,0}.
\]

These are dimensionless complex Lie-algebra conventions. Factors of i, hbar, a real-form involution, gravitational charge normalizations, and a physical inner product have not been supplied and are not silently inserted.

## 2. Analytic derivation of the trace

Every product in the trace shifts the mode by m+n. Therefore its diagonal vanishes unless m+n=0.

For m>0 and n=-m, the first term crosses from an occupied mode k to k-m below the cutoff precisely when

\[
r\leq k\leq r+m-1.
\]

The second term has no crossing. Acting on e_k, the first product has coefficient

\[
(-m-k)\bigl(m-(k-m)\bigr)=(-m-k)(2m-k)
=k^2-mk-2m^2.
\]

Hence

\[
\sigma_r(m,-m)=\sum_{k=r}^{r+m-1}(k^2-mk-2m^2)
=-\frac{13}{6}m^3+\left(r^2-r+\frac16\right)m.
\]

Antisymmetry gives the negative-m result; m=0 is zero. This proves the displayed formula for all integer m,n,r.

As a quick sign anchor, r=2, m=2 gives k=2,3 with contributions -8 and -5, so

\[
\sigma_2(2,-2)=-13.
\]

Since (2^3-2)/12=1/2, this corresponds to c=-26, not c=-13 or c=+26.

## 3. Jacobi, nontriviality, and changing the cutoff

Write f_r(m)=-13m^3/6+(r^2-r+1/6)m. The cocycle identity is

\[
(m-n)\sigma_r(m+n,k)+(n-k)\sigma_r(n+k,m)
+(k-m)\sigma_r(k+m,n)=0.
\]

All three terms vanish if m+n+k is nonzero. When k=-m-n, the identity holds separately for f(m)=m and for f(m)=m^3. This is an exact polynomial identity, independently checked in the CAS.

Equivalently, for block operators relative to P,

\[
A=\begin{pmatrix}a_A&b_A\\c_A&d_A\end{pmatrix},
\qquad \sigma(A,B)=\operatorname{Tr}(b_Ac_B-b_Bc_A).
\]

The representation identity for rho and cyclicity of the finite-rank products yield the usual restricted-linear-algebra cocycle identity. The explicit polynomial proof avoids any problematic cyclic manipulation of an infinite diagonal trace.

The cubic class is not a coboundary. Indeed, if sigma were plus or minus lambda([X,Y]), evaluating at (l_0,l_k), k nonzero, would force lambda(l_k)=0. Only lambda(l_0) remains, which can generate a term linear in m but cannot generate the nonzero cubic term.

For two thresholds r,s,

\[
\sigma_s(m,n)-\sigma_r(m,n)
=\bigl[s(s-1)-r(r-1)\bigr]m\delta_{m+n,0}.
\]

Define the finite-rank trace cochain

\[
t_{r,s}(X)=\operatorname{Tr}[(P_s-P_r)\rho(X)].
\]

For r<s,

\[
t_{r,s}(l_0)=\sum_{k=r}^{s-1}k
=\frac{s(s-1)-r(r-1)}2,
\qquad t_{r,s}(l_j)=0\quad(j\ne0).
\]

With the Chevalley-Eilenberg convention dt(X,Y)=-t([X,Y]),

\[
\boxed{\sigma_s-\sigma_r=t_{r,s}([\ ,\ ])=-dt_{r,s}.}
\]

Thus a finite change of occupied modes changes the zero-mode normalization, not the cubic cohomology class. In particular sigma_r=sigma_{1-r}.

## 4. The tangent quotient is not the full adjoint module

Let

\[
\mathfrak h=\operatorname{span}(l_{-1},l_0,l_1)\cong\mathfrak{sl}_2,
\qquad M=\operatorname{Diff}^+(S^1)/\operatorname{PSL}(2,\mathbb R).
\]

At the identity coset, the complexified tangent space is g/h. It is an h-module under the isotropy action. It is **not a g-module under the quotient adjoint action**, because h is not an ideal; for example [l_2,l_1]=l_3 is not in h.

A natural positive polarization is

\[
\mathfrak q=W_{-1}=\operatorname{span}(e_n:n\geq-1),
\qquad T_o^+=\mathfrak q/\mathfrak h\simeq\operatorname{span}(\bar e_n:n\geq2).
\]

Here the identification g -> V is l_n -> e_n. The space q is a Lie subalgebra: the only possible sum below -1 is (-1)+(-1), whose bracket coefficient vanishes. Together with the opposite polarization, q intersects it in h and spans g. This supplies an integrable **algebraic** polarization; analytic infinite-dimensional complex-manifold statements still require an appropriate category.

The distinction between two cutoffs is essential:

- W_{-1} is h-invariant in the full module. The only possible downward leak is rho_{-1}e_{-1}, which is zero.
- W_2 is not h-invariant in the full module: rho_{-1}e_2=-3e_1.
- W_2 is a convenient vector-space representative for q/h. After passing to the quotient, that leakage is zero, and the positive physical tangent is h-invariant.
- The kernel of P_2, span{e_n:n<=1}, is h-invariant.
- Neither coordinate projector commutes with all of h. For example [P_{-1},rho_1]e_{-2}=3e_{-1}, and [P_2,rho_{-1}]e_2=3e_1.

An invariant range or invariant kernel must not be called an invariant splitting.

### 4.1 Why the special thresholds agree

The cocycle is h-horizontal, sigma_r(h,g)=0, if and only if

\[
\sigma_r(1,-1)=(r-2)(r+1)=0.
\]

Thus exactly r=-1 and r=2 give the vacuum-relative representative. Its h-invariance then follows from the cocycle identity. In particular,

\[
\sigma_{-1}=\sigma_2=-\frac{13}{6}(m^3-m)\delta_{m+n,0}.
\]

The occupied spaces differ by the three-dimensional space h. Its determinant under H=PSL(2,R) is trivial: the infinitesimal trace of ad_h is zero, and H is connected. In particular the rho_0 eigenvalues on e_{-1},e_0,e_1 are 1,0,-1, with sum zero. The finite-cutoff trace cochain consequently vanishes for this change of threshold, explaining equality of the raw cocycles rather than merely equality of their classes.

If an additive determinant theory has been constructed, the exact sequence

\[
0\longrightarrow\mathfrak h\longrightarrow\mathfrak q
\longrightarrow T_o^+\longrightarrow0
\]

gives det(q) = det(h) tensor det(T_o^+). Over the homogeneous space, the finite-dimensional h factor is the moving bundle Ad_g h, not a fixed g-invariant subspace. Its determinant is equivariantly trivial under H and may be trivialized homogeneously, but its role in the exact sequence cannot be erased before forming the quotient.

Equality of sigma_2 and sigma_{-1} therefore does **not** identify the full-module W_2 sea with an h-invariant vacuum. The full-module W_{-1} occupied sea is h-invariant; the W_2 sea is not. Describing the physical tangent by W_2 requires the quotient construction and the associated moving finite-dimensional factor.

### 4.2 Exact counterexample to compressing away sl(2)

Let Q project onto |n|>=2 and define A_m=Q rho_m Q on T=QV. Then

\[
[A_m,A_n]-(m-n)A_{m+n}
=-Q\rho_m(1-Q)\rho_nQ+Q\rho_n(1-Q)\rho_mQ.
\]

This defect is generally nonzero and is not a scalar central operator. At m=2,n=-2 on e_2, it is 8e_2.

If one nevertheless forms a positive/negative crossing trace tau from A_m, then for m>0

\[
\tau(m,-m)=\sum_{k=2}^{m-2}(k^2-mk-2m^2),
\]

where an empty sum is zero. For m>=3 this can be written

\[
\tau(m,-m)=-\frac{13}{6}(m^3-m)+6m^2-2;
\]

m=1,2 must be treated separately and both give zero. Extend by oddness. The exact values start

| m | Full sigma_2(m,-m) | Compressed tau(m,-m) |
|---:|---:|---:|
| 1 | 0 | 0 |
| 2 | -13 | 0 |
| 3 | -52 | 0 |
| 4 | -130 | -36 |
| 5 | -260 | -112 |

At (m,n,k)=(1,3,-4), the Jacobi expression for tau is

\[
(1-3)\tau(4,-4)+(3+4)\tau(-1,1)+(-4-1)\tau(-3,3)
=(-2)(-36)=72.
\]

This is not a regulator ambiguity: it is the failure of the compressed maps to represent Witt. A genuine tangent-bundle action away from the base point must include the dependence on the base point and the isotropy compensator; a single fixed-fibre compression does not contain that information.

## 5. Determinant, dual, half-form, and curvature signs

To remove terminology ambiguity, define the **positive-occupied determinant convention** by normal-ordered fermionic exterior operators. If P is the occupied projector, write formally

\[
\widehat A=\sum_{ij}A_{ij}\bigl(\psi_i^\dagger\psi_j-P_{ji}\bigr).
\]

For finite off-diagonal blocks, the central part of their commutator is

\[
[\widehat A,\widehat B]-\widehat{[A,B]}
=\operatorname{Tr}(PA(1-P)BP-PB(1-P)AP)=\sigma(A,B).
\]

This fixes the determinant-line sign without appealing to a name for the determinant bundle. In a finite-dimensional model the term is a coboundary removed by the finite trace; in the polarized infinite-dimensional setting the cubic class survives.

Under this convention the algebraic anomaly assignments are

| Object | Cocycle | c in vacuum normalization |
|---|---:|---:|
| positive-occupied determinant D_alg | sigma_2 | -26 |
| its dual K_alg = D_alg^* | -sigma_2 | +26 |
| dual half-form delta_alg, delta_alg^2 = K_alg | -sigma_2/2 | +13 |

The factor of one half belongs to the square root; the sign reversal belongs to the dual. A half of the determinant itself would instead give c=-13. Calling either line merely a “half determinant” loses this distinction.

Changing P to 1-P reverses the crossing cocycle, by cyclicity of the finite-rank products. Counting the positive complex polarization and both real Fourier directions are different determinant problems, not interchangeable conventions for an extra factor of two. A real half-density is not automatically a holomorphic half-form.

### 5.1 Curvature is not the same signed object as the commutator cocycle

On the orbit of a chosen splitting, take P_g=U_g P U_g^{-1} and the projection connection nabla=P_g d on its range. At the base,

\[
dP(X)=[\rho(X),P],\qquad
\operatorname{Tr}F_D(X,Y)
=\operatorname{Tr}\bigl(P[dP(X),dP(Y)]P\bigr)=-\sigma(X,Y).
\]

Equivalently,

\[
[a_X,a_Y]-a_{[X,Y]}=-b_Xc_Y+b_Yc_X.
\]

The sign was checked in the exact two-dimensional model P=diag(1,0), A=E_{12}, B=E_{21}: the cocycle is +1, the projection curvature is -1, and the normal-ordered CAR commutator defect is +I.

**This is not yet a curvature calculation for an intrinsic tangent connection on M.** The conjugated coordinate projector need not descend from G to G/H, because H preserves neither full splitting. An orthogonal Grassmannian projection uses an additional Hermitian metric and need not have the same G-invariance. Identifying a determinant/Chern/Levi-Civita connection and proving its curvature equals the claimed form is a separate step.

There is also a purely homogeneous infinitesimal construction. For the extension with bracket cocycle sigma_2 and central character 1, the central-component linear form is h-basic because sigma_2(h,g)=0. Its invariant connection has curvature -sigma_2. This constructs a valid relative-Lie-algebra line-with-connection model. It does not prove that this model is the regularized determinant of the physical tangent bundle.

## 6. What equivariant model is legitimately available?

### 6.1 Established at the algebraic level

The central extension is split over h. More strongly, it is split over q: sigma_2(q,q)=0, since the only pairs in q with opposite indices have indices 0 or +/-1.

Therefore one can let q act trivially and the central element act as 1 on a one-dimensional representation, and induce a vacuum module. For the determinant cocycle this has c=-26; for the cocycle -sigma_2/2 it has c=+13. The induced module is nonzero by the usual enveloping-algebra/PBW construction. This supplies a consistent vacuum representation and the infinitesimal datum for a centrally equivariant, polarized **formal** line model, with no sl(2) obstruction. The same induction works for every central coefficient c: its existence alone does not select +13. That number is selected only after the specified determinant convention and dual square-root operation have been chosen; induction is not a global half-form construction.

It is not an honest anomaly-free G-equivariant line action: the nonzero cubic class cannot be removed by changing a zero-mode convention. The appropriate equivariance is under a central extension, or projective G-equivariance. Likewise, tensoring a projective prequantum action with the dual-half-form action adds their cocycles. This additivity is a conditional algebraic statement, not a derivation of a physical prequantum parameter.

### 6.2 What a geometric realization would have to prove

A possible route is a relative determinant line over a restricted Grassmannian, pulled back along the orbit of W_{-1}. It must be shown that the chosen completion of vector fields and the diffeomorphism action belong to the relevant restricted class, that the orbit map is sufficiently smooth/holomorphic, and that its determinant is the intended tangent determinant after the finite-dimensional h factor is treated correctly.

For smooth circle diffeomorphisms, opposite-sign Fourier blocks of the pushforward are a plausible restricted-class route: their Fourier integrals have nonstationary phase, giving rapid decay. This observation does not by itself prove the required manifold action, determinant connection, holomorphic structure, or physical measure. Diagonal mode generators are unbounded on standard Hilbert completions, and a smooth Fréchet group action is not automatically a norm-smooth map into a Banach restricted linear group.

Thus the precise verdict is:

> A legitimate **infinitesimal/projective determinant and dual-half-form model exists**. The proposed identification with the actual polarized tangent half-form in a specified quantization remains conditional until the analytic determinant construction and its equivariance are exhibited. The finite trace alone is an algebraic anomaly, not that geometric identification.

### 6.3 Square roots: do not exaggerate the topological obstruction

For the usual smooth group, the base-space topology itself is comparatively benign. Choose three ordered points on S^1. In every right coset fH there is a unique representative fixing all three: choose h in PSL(2,R) with h(p_i)=f^{-1}(p_i), and use f composed with h. Thus G/H identifies with the space of smooth orientation-preserving diffeomorphisms fixing those three points.

With a lift F fixing 0 and the other two chosen angles, the interpolation

\[
F_t(x)=(1-t)F(x)+tx
\]

has positive derivative, preserves the periodic lift condition, and fixes all three points. It contracts that space to the identity. Consequently, in the ordinary smooth quotient category, M is contractible. An already constructed smooth complex line on M has no ordinary topological square-root obstruction.

This does **not** construct an infinite-dimensional determinant line, select its holomorphic category, or supply a square root equivariant under a specified central extension. In particular, a central circle acting with weight +1 on a determinant cannot act on its dual square root with weight -1/2 as an ordinary character of the same circle; a suitable cover or square-root extension may be needed. Splitting sl(2) infinitesimally also does not establish splitting of PSL(2,R) globally: loops, rotation phases, the central lattice, and the chosen Virasoro group must be tracked.

## 7. Vacuum versus cylinder generators

For any representation with vacuum central term c(m^3-m)/12, define

\[
L_m^{\rm cyl}=L_m^{\rm vac}-\frac{c}{24}\delta_{m,0}K.
\]

Then

\[
[L_m^{\rm cyl},L_n^{\rm cyl}]
=(m-n)L_{m+n}^{\rm cyl}+\frac{c}{12}m^3\delta_{m+n,0}K.
\]

The sl(2) lift in cylinder variables is generated by L_{+/-1}^{cyl} and **L_0^{cyl}+cK/24**, not by the three unshifted cylinder generators. A vacuum with L_0^{vac}=0 has cylinder energy -c/24.

For the given threshold cocycle write b_r=(r-2)(r+1), c=-26. Then

\[
L_m^{\rm vac}=L_m^{(r)}+\frac{b_r}{2}\delta_{m,0}K,
\]

and

\[
L_m^{\rm cyl}=L_m^{(r)}+
\frac12\left(r^2-r+\frac16\right)\delta_{m,0}K.
\]

These are changes of section in the central extension; they do not change the cubic coefficient.

For the determinant model, the cylinder vacuum shift is +13/12. For its dual half-form it is -13/24. A zeta assignment -sum_{n>=2} n=+13/12 would reproduce the former in one scheme, but the finite-crossing proof does not use that assignment, and it is not an extra independent shift to add again.

## 8. Why the gravity central charge cannot be read off

There are two explicit underdetermination tests.

### 8.1 The same homogeneous tangent geometry permits different symplectic scales

For every nonzero parameter C, the relative bilinear form

\[
\Omega_C(\bar l_m,\bar l_n)
=\frac{C}{12}(m^3-m)\delta_{m+n,0}
\]

is closed in relative Lie-algebra cohomology and nondegenerate on the algebraic physical tangent. It has the same h-isotropy and the same positive/negative polarization. Appropriate real-form factors can turn it into a real symplectic form. Its scale C is not contained anywhere in rho, P, or the determinant trace.

Thus the same orbit type and polarized tangent data admit continuously different classical symplectic/central parameters, while the determinant anomaly above is unchanged. The trace cannot select the physical C. If a separately constructed prequantum action has charge c_pre and the physical quantization really tensors with this dual half-form, then the algebraic tensor-product charge is c_pre+13 in the stated convention. Neither premise is supplied by the trace calculation.

No gravitational coupling, length scale, action, boundary term, or charge normalization entered the computation. Identifying a classical gravity central charge and deciding which quantum correction, if any, survives gauge reduction require those data.

### 8.2 The anomaly detects the represented module

For the equally valid family of Witt modules

\[
\rho_m^{(a)}e_n=(am-n)e_{m+n},
\]

the same finite-crossing calculation gives

\[
\sigma_r^{(a)}(m,n)=\delta_{m+n,0}\left[-\left(a(a+1)+\frac16\right)m^3
+\left(r^2-r+\frac16\right)m\right].
\]

The determinant central coefficient is

\[
c(a)=-12a(a+1)-2.
\]

The adjoint-vector-field module has a=1 and c=-26; a=0 gives c=-2. Both the representation identity and this crossing formula were checked exactly. This is not a change allowed inside the question's fixed setup; it is a counterexample to interpreting a polarization-crossing construction as a universal gravity central-charge measurement, independent of which quantum fields and determinant line were chosen.

## 9. Verification and remaining obligations

### Verified analytically and by exact CAS

- The full-module trace for arbitrary integer indices and cutoff.
- Antisymmetry, Jacobi, nontrivial cubic class, and cutoff coboundary.
- The special relative cutoffs, and the distinction between invariant range/kernel and invariant projector.
- The explicit failure of the compressed physical representation and of its crossing-trace Jacobi identity.
- The determinant/dual/half sign and factor under the explicitly fixed positive-occupied convention.
- The opposite sign of projection curvature in the specified splitting model.
- Vacuum/cylinder conversion.
- The tensor-density family as an underdetermination test.

The Sage run used exact QQ/ZZ arithmetic and checked 10,625 direct crossing cases, 847 independent sparse-matrix traces with crossings safely away from the truncation edge, and 2,023 total-mode-zero Jacobi cases. All 13 labelled check groups passed. These finite grids support the analytic identities; they are not substituted for the arbitrary-index proofs.

### Not proved by this calculation

1. **Analytic tangent determinant:** a specified completion, determinant theory, restricted group action, and identification of its relative determinant with the desired tangent object.
2. **Global equivariance and integrability:** integration to the chosen Diff/Virasoro group, global PSL splitting, rotation monodromy, central circle or real-line normalization, and the required central cover for a square root.
3. **Connection and curvature identification:** an actual descended Hermitian/Chern or other specified connection; its determinant regularization; and agreement between its curvature and the relative cocycle, including signs and real/i factors.
4. **Measure:** a nonperturbative measure or quasi-invariant measure class, its Jacobian, the relation to any formal half-form, and the absence or treatment of additional gauge/ghost determinants.
5. **Polarization:** analytic integrability, admissible sections, implementability of the group action, and whether the physical quantization uses the chosen complex polarization rather than a different one.
6. **Quantum representation:** domains, reality, adjoints, unitarity/positivity, vacuum choice, and whether formal operators integrate to the desired projective group representation.
7. **Gravity identification:** the prequantum line, classical charge normalization, action and boundary conditions, physical Hilbert space, and proof that this determinant/half-form is actually included rather than canceled, inverted, or replaced.

The useful next proof is therefore not another cutoff sum. It is an explicit construction of the intended determinant/half-form line and its connection in the chosen quantization, followed by a comparison of its equivariant curvature and group lift with the physical charge algebra.
