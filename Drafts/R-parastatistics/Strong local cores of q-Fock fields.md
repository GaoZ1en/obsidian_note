# Strong local cores of q-Fock fields

## Result

**The same-left-field relative-locality construction is trivial even at the full von Neumann level, and neutral exterior observables already suffice.** Let $|q|<1$ be real, let $K_1,K_2$ be real subspaces of an infinite-dimensional complex Hilbert space $\mathcal H$, and assume

$$
\operatorname{Im}\langle K_1,K_2\rangle=0,
\qquad \overline{K_2+iK_2}=\mathcal H.
$$

For $M_L(K)=\{\phi_L(f):f\in K\}''$, the left q-field algebra defined below,

$$
\boxed{M_L(K_1)\cap M_L(K_2)'=\mathbb C I.}\tag{1}
$$

More strongly, for any finite number $r\geq1$ of real internal components and any $G\subset O(r)$ acting on those components,

$$
\boxed{
M_L(K_1\otimes\mathbb R^r)
\cap\big(M_L(K_2\otimes\mathbb R^r)^G\big)'
=\mathbb C I.
}\tag{2}
$$

The element tested in (2) need not itself be gauge invariant. The proof applies to arbitrary von Neumann elements, without norm-polynomial approximation. This goes beyond the norm-algebra theorem in [Nonrigid sectors and q-Fock locality](<Nonrigid sectors and q-Fock locality.md>).

**Scope:** (1)–(2) concern relative locality with respect to the entire specified exterior algebra. They do not classify arbitrary local subnets that retain fewer observables. They also do not apply to the different construction assigning **right** q-fields to the opposite wedge. In that wedge construction, the massive one-particle modular projection map is trace class, while the modular product occurring in the verified positive criterion is noncompact. Neither fact establishes the existence or triviality of massive double-cone algebras.

## 1. Conventions and exact mixed relations

The inner product is antilinear in its first argument. On positive q-Fock space $\mathcal F_q(\mathcal H)$, use the Gram operators

$$
P_{q,n}=\sum_{\pi\in S_n}q^{\operatorname{inv}\pi}U(\pi).
$$

Left and right creation append a vector at the corresponding end:

$$
l^\dagger(f)\xi=f\otimes\xi,
\qquad r^\dagger(f)\xi=\xi\otimes f,
\qquad
\phi_L(f)=l^\dagger(f)+l(f),\quad
\phi_R(f)=r^\dagger(f)+r(f).
$$

Their adjoints on a word are

$$
\begin{aligned}
l(f)(v_1\otimes\cdots\otimes v_n)
 &=\sum_{j=1}^n q^{j-1}\langle f,v_j\rangle
 v_1\otimes\cdots\widehat{v_j}\cdots\otimes v_n,\\
r(f)(v_1\otimes\cdots\otimes v_n)
 &=\sum_{j=1}^n q^{n-j}\langle f,v_j\rangle
 v_1\otimes\cdots\widehat{v_j}\cdots\otimes v_n.
\end{aligned}
$$

All these operators are bounded for $|q|<1$, with creation norm at most $\|f\|/\sqrt{1-|q|}$. Let $N$ be the particle-number operator and $D_q=q^N$, with $0^0=1$, so $D_0=P_\Omega$. Exact identities on finite words, hence on the full Fock space, are

$$
\begin{aligned}
[l(f),r^\dagger(g)]&=\langle f,g\rangle D_q,\\
[l^\dagger(f),r(g)]&=-\langle g,f\rangle D_q,\\
[l^\dagger(f),r^\dagger(g)]&=[l(f),r(g)]=0,\\
[\phi_L(f),\phi_R(g)]&=2i\operatorname{Im}\langle f,g\rangle D_q.
\end{aligned}\tag{3}
$$

In particular, $M_L(K_1)$ commutes with $M_R(K_2)$ under the stated symplectic orthogonality assumption. Complex density of $K_2+iK_2$ makes $\Omega$ cyclic for $M_R(K_2)$: field products recover all finite tensors by induction on degree, subtracting their lower-degree contractions. Thus $\Omega$ separates $M_L(K_1)$. Standardness of $K_1$ is not needed.

## 2. A high-mode detector for arbitrary strong-closure elements

Choose a complex orthonormal sequence $h_j\in K_2$. Such a sequence exists: at each step only finitely many real-linear orthogonality constraints are imposed on the infinite-dimensional real space $K_2$. Its weak convergence to zero and the word formulas imply

$$
l(h_j)\longrightarrow0,\qquad r(h_j)\longrightarrow0
\quad\text{strongly}.
$$

First prove this on finite tensors; the uniform operator bounds extend it to every Fock vector.

For a unit vector $h$ write $l=l(h)$ and $r=r(h)$. The mixed relations and the left/right q-CCR give the exact norm identity

$$
\begin{aligned}
\|(l^\dagger-r^\dagger)\xi\|^2
={}&2\langle\xi,(I-D_q)\xi\rangle
 +q\big(\|l\xi\|^2+\|r\xi\|^2\big)
 -2\operatorname{Re}\langle r\xi,l\xi\rangle.
\end{aligned}\tag{4}
$$

Now take an arbitrary $A\in M_L(K_1)$, not necessarily in the norm-generated field algebra. Because $A$ commutes with the right field and $\phi_L(h_j)\Omega=\phi_R(h_j)\Omega=h_j$,

$$
[A,\phi_L(h_j)]\Omega
=\big(\phi_R(h_j)-\phi_L(h_j)\big)A\Omega.
$$

The annihilation terms tend strongly to zero. With $\Pi_n$ the n-particle projection, (4) therefore yields

$$
\boxed{
\lim_j\|[A,\phi_L(h_j)]\Omega\|^2
=2\sum_{n\geq1}(1-q^n)\|\Pi_nA\Omega\|^2.
}\tag{5}
$$

For $|q|<1$, every displayed weight is strictly positive. If $A$ also commutes with $M_L(K_2)$, then $A\Omega=\langle\Omega,A\Omega\rangle\Omega$. Separatingness gives $A\in\mathbb C I$, proving (1).

This is a vector argument for every strong-closure element. It does not assert that strong convergence preserves the previous norm-algebra commutator limit.

## 3. Neutral quadratic detectors

Work now on $\mathcal H\otimes\mathbb C^r$. The internal real basis is $e_\alpha$, $\alpha=1,\ldots,r$, and $G\subset O(r)$ is implemented by q-second quantization. The bounded operators

$$
Q_L(h)=\sum_{\alpha=1}^r\phi_L(h\otimes e_\alpha)^2,
\qquad
Q_R(h)=\sum_{\alpha=1}^r\phi_R(h\otimes e_\alpha)^2
\tag{6}
$$

are $O(r)$-invariant, even though the individual fields need not commute. They obey

$$
Q_L(h)\Omega=Q_R(h)\Omega
=r\Omega+\sum_\alpha(h\otimes e_\alpha)\otimes(h\otimes e_\alpha)
\quad (\|h\|=1).
$$

For $f_\alpha=h_j\otimes e_\alpha$, put $a_\alpha=l(f_\alpha)$ and $b_\alpha=r(f_\alpha)$. Exact normal-ordering formulas are

$$
\begin{aligned}
a_\alpha^2(a_\beta^\dagger)^2
={}&q^4(a_\beta^\dagger)^2a_\alpha^2
 +\delta_{\alpha\beta}q(1+q)^2a_\beta^\dagger a_\alpha
 +\delta_{\alpha\beta}(1+q)I,\\
a_\alpha^2(b_\beta^\dagger)^2
={}&(b_\beta^\dagger)^2a_\alpha^2
 +\delta_{\alpha\beta}(1+q)^2b_\beta^\dagger D_q a_\alpha
 +\delta_{\alpha\beta}(1+q)D_q^2.
\end{aligned}\tag{7}
$$

In the second formula the order $D_q a_\alpha$ matters. Since all annihilators tend strongly to zero and all factors are uniformly bounded, only the last terms survive in the quadratic creation norms and their cross term. Explicitly, if $F_L=\sum_\alpha(a_\alpha^\dagger)^2$ and $F_R=\sum_\alpha(b_\alpha^\dagger)^2$, then

$$
\begin{aligned}
\|F_L\xi\|^2,\ \|F_R\xi\|^2
 &\longrightarrow r(1+q)\|\xi\|^2,\\
\langle F_L\xi,F_R\xi\rangle
 &\longrightarrow r(1+q)\langle\xi,D_q^2\xi\rangle.
\end{aligned}
$$

The remaining terms in $Q_L-Q_R$ contain annihilators and tend strongly to zero. For arbitrary $A\in M_L(K_1\otimes\mathbb R^r)$, right-field commutation again gives

$$
[A,Q_L(h_j)]\Omega=(Q_R(h_j)-Q_L(h_j))A\Omega.
$$

Consequently,

$$
\boxed{
\begin{aligned}
\lim_j\|[A,Q_L(h_j)]\Omega\|^2
 &=2r(1+q)\sum_{n\geq1}(1-q^{2n})\|\Pi_nA\Omega\|^2\\
 &\geq2r(1+q)(1-q^2)
 \big(\|A\Omega\|^2-|\langle\Omega,A\Omega\rangle|^2\big).
\end{aligned}
}\tag{8}
$$

If $A$ commutes with the exterior fixed-point algebra, every left-hand side vanishes because $Q_L(h_j)$ belongs to that algebra. The positive bound and right-algebra cyclicity prove (2).

### Necessary limits and a counterexample

The infinite-dimensional assumption cannot simply be removed. For $\mathcal H=\mathbb C$ and $K_1=K_2=\mathbb R$, the single selfadjoint field generates a nontrivial abelian algebra. Its $\mathbb Z_2$-even subalgebra is also nontrivial: the centered square has vacuum norm squared $1+q$. There is no infinite orthonormal testing sequence.

At $q=\pm1$ the neutral coefficient vanishes; at the CAR endpoint $Q_L(h)=rI$. At the Bose endpoint the bounded-field hypothesis also fails. The proof does not exclude ordinary Bose/Fermi theories by continuity from $|q|<1$.

## 4. What this excludes in spacetime

For the massive Klein–Gordon one-particle representation in any spatial dimension $s\geq1$, let $K(O)$ be the closed real subspace generated by real test functions supported in a nonempty double cone $O$. Use signature $(+,-,\ldots,-)$ and $\hbar=c=1$. Spacelike-separated regions have symplectically orthogonal subspaces, and one-particle Reeh–Schlieder gives complex density of each $K(O)$.

For the raw same-left field assignment and its neutral fixed points,

$$
\mathcal F_q(O)=M_L(K(O)\otimes\mathbb R^r),
\qquad \mathcal N_q(O)=\mathcal F_q(O)^G,
$$

already a single nonempty spacelike-separated double cone $O_2$ gives

$$
\mathcal F_q(O_1)\cap\mathcal N_q(O_2)'=\mathbb C I.
$$

Hence taking a relative-local core against the entire raw exterior field algebra, or against its entire neutral fixed-point algebra, gives only scalars. Strong closure does not rescue these specified constructions.

This is stronger than testing a finite collection of composite fields but narrower than classifying all local subnets. An alternative subnet could omit the exterior quadratic detectors (6), in which case the commutation hypothesis of (2) has not been established. Likewise, a wedge-intersection observable need not belong to $M_L(K(O))$ for the bounded region $O$.

The separate distinction between full q-Fock space and finite-internal-label $R=I$ remains essential. The Fock twist $q$ times the flip is not an involutive unitary exchange for $|q|<1$. No physical new $R$-statistics follows just from this auxiliary deformation.

## 5. The surviving wedge question: two different modular maps

In $1+1$ dimensions consider the scalar mass-$\mu>0$ one-particle space $L^2(\mathbb R,d\theta)$. Set

$$
\begin{gathered}
W_R=\{(t,x):x>|t|\},\quad H=K(W_R),\quad
K=U(a)H\subset H,\quad a=(0,L),\quad z=\mu L>0,\\
\Delta_H^{it}f(\theta)=f(\theta+2\pi t),\quad
Jf=\overline f,\quad D=-i\partial_\theta,\quad
U(a)=M_{\exp(-iz\sinh\theta)}.
\end{gathered}\tag{9}
$$

The choice $\Delta_H^{1/4}=e^{\pi D/2}$ shifts analytic functions downward by $i\pi/2$. Write $w_z(\theta)=e^{-z\cosh\theta}$ and $M_w$ for multiplication. The bounded strip multiplier gives

$$
\Delta_H^{1/4}U(a)=M_{w_z}\Delta_H^{1/4}
\tag{10}
$$

on the domain of $\Delta_H^{1/4}$. No unbounded product is being manipulated without this analytic-core identity and its closed extension.

### 5.1 Real projection map: trace class

Let $E_K$ be the orthogonal projection in the **real** Hilbert scalar product $\operatorname{Re}\langle\cdot,\cdot\rangle$. The standard-subspace projection formula, with $S_H=J\Delta_H^{1/2}$, is

$$
E_H=(I+S_H)(I+\Delta_H)^{-1}.
$$

With $b(k)=e^{\pi k/2}/(1+e^{2\pi k})$ and $P_{\mathbb R}=(I+J)/2$,

$$
\begin{aligned}
A_0:=\Delta_H^{1/4}E_H&=(I+J)b(D),\\
T_L:=\Delta_H^{1/4}E_K
 &=M_{w_z}(I+J)b(D)U(a)^*,\\
A_0A_0^{*_{\mathbb R}}&=\operatorname{sech}(\pi D)P_{\mathbb R}.
\end{aligned}\tag{11}
$$

The last equality uses $Jb(D)J=b(-D)$ and $b(k)^2+b(-k)^2=\tfrac12\operatorname{sech}(\pi k)$. Define the complex-linear operator

$$
B_z=M_{w_z}h(D),\qquad h(k)=\sqrt{\operatorname{sech}(\pi k)}.
$$

It commutes with $J$, and $T_LT_L^{*_{\mathbb R}}=(B_zB_z^*)P_{\mathbb R}$. The nonzero real singular values of $T_L$ equal the complex singular values of $B_z$:

$$
\|T_L\|_{p,\mathbb R}=\|B_z\|_{p,\mathbb C}.
\tag{12}
$$

There is **no factor two in (12)**. Realifying $B_z$ itself would double its trace norm, but $T_L$ has the additional real projection and the other real half of its output is zero.

Use the Fourier convention $\widehat f(k)=(2\pi)^{-1/2}\int e^{-ik\theta}f(\theta)d\theta$. Then

$$
\|h\|_2=1,\quad\|kh\|_2=\frac12,\quad
\|k^2h\|_2=\frac{\sqrt5}{4},\qquad
\|T_L\|_{2,\mathbb R}^2=\frac{K_0(2z)}{\pi},
\tag{13}
$$

where $K_\nu$ is the modified Bessel function, not the real subspace $K$.

An explicit trace bound follows from the oscillator $H_{\rm osc}=I+D^2+\theta^2$, whose eigenvalues are $2n+2$ and whose inverse has Hilbert–Schmidt norm $\pi/\sqrt{24}$. Factor $B_z=H_{\rm osc}^{-1}(H_{\rm osc}B_z)$. The three terms in $H_{\rm osc}B_z$ and the Hilbert–Schmidt kernel formula give

$$
\|T_L\|_{1,\mathbb R}
\leq\sqrt{\frac\pi{48}}\left(
\|(1+\theta^2)w_z-w_z''\|_2+\|w_z'\|_2
+\frac{\sqrt5}{4}\|w_z\|_2\right).
\tag{14}
$$

All terms are finite for every $z>0$. A convenient fully explicit upper bound is

$$
\begin{aligned}
\mathfrak B(z)=\sqrt{\frac\pi{48}}\bigg[&
\left(1+\frac{\sqrt5}{4}\right)\sqrt{2K_0(2z)}
+\sqrt{zK_1(2z)}\\
&+\sqrt{\frac32 z^2K_0(2z)+\frac12zK_1(2z)}
+\frac{\sqrt3\,\pi^{1/4}}{2z^{5/4}}e^{-z}\bigg].
\end{aligned}\tag{15}
$$

Here $\|w_z'\|_2^2=zK_1(2z)$, $\|w_z''\|_2^2=\tfrac32z^2K_0(2z)+\tfrac12zK_1(2z)$, and the last term bounds $\|\theta^2w_z\|_2$ using $\cosh\theta\geq1+\theta^2/2$. In particular,

$$
\|T_L\|_{1,\mathbb R}\leq\mathfrak B(z)\longrightarrow0,
\qquad
\mathfrak B(1)\simeq0.520081,\quad
\mathfrak B(2)\simeq0.188901.
$$

The decimals are numerical evaluations of a proved analytic bound, not numerical estimates of the trace norm itself. For finitely many identical independent one-particle species the trace norm is multiplied by their number.

### 5.2 Modular product: noncompact at every finite separation

The other map has a completely different property:

$$
\boxed{
C_L:=\overline{\Delta_H^{1/4}\Delta_K^{-1/4}}
=M_{w_z}U(a)^*,\qquad
\|C_L\|=\|C_L\|_{\rm ess}=e^{-z}.
}\tag{16}
$$

The equality holds first on $\operatorname{Dom}\Delta_K^{-1/4}$ by (10), then by closure. Nonzero multiplication on nonatomic $L^2(\mathbb R)$ is noncompact: choose an orthonormal sequence supported in an interval on which $w_z$ is bounded below. Thus neither $C_L$ nor its adjoint $U(a)M_{w_z}$ is trace class for any finite $L>0$, despite tending to zero in operator norm as $L\to\infty$.

At $L=0$, $C_L=I$ and $T_L=A_0$ is noncompact, consistent with the loss of spatial damping. Lightlike translations are different from (9); a theorem about half-sided/null inclusions cannot be transferred to these massive spacelike inclusions.

## 6. Which positive criterion is actually available?

For the standard q-wedge construction, the opposite wedge uses right fields. The double-cone candidate is

$$
\mathcal C_q(a)=M_L(H)\cap M_L(U(a)H)'
=M_L(H)\cap M_R((U(a)H)'),
\tag{17}
$$

where the prime on a real subspace denotes its symplectic complement. Equation (17) is not the same-left bounded-region core of Section 4.

The full-proof source [Correa da Silva–Lechner, arXiv:2212.02298v2](<https://arxiv.org/abs/2212.02298v2>), Proposition 4.11, PDF36–37, uses the sufficient condition $\|C_L\|_1<1$. Its Theorem 4.9, PDF34, treats the half-sided inclusion obstruction, not every massive spacelike inclusion.

A source-version difference is decisive here:

- The [August 2025 author-hosted extended abstract](<https://en.www.math.fau.de/wp-content/uploads/sites/3/2025/08/Correa-da-Silva-Lechner-Standard-subspaces-and-twisted-Araki-Woods-subfactors-MFO-extended-abstract.pdf>), p3, printed $\Delta_H^{1/4}E_K$ in a positive trace-class criterion.
- The [official Oberwolfach Report 34/2025](<https://publications.mfo.de/bitstream/handle/mfo/4375/OWR_2025_34.pdf?sequence=1&isAllowed=y>), contribution printed1866–1869 / PDF44–47, changes the positive operator on printed1869 / PDF47 to $\Delta_K^{-1/4}\Delta_H^{1/4}$, the adjoint-order product associated with (16).
- The official contribution's Theorem 2 also announces a negative criterion when $\Delta_H^{1/4}|_K$ is noncompact. Its proof is not supplied in that four-page contribution. For (9) the restriction is trace class by (11)–(15), so that criterion does not settle the massive case either.
- [arXiv:2506.16085v1](<https://arxiv.org/abs/2506.16085v1>), §2.2, PDF4, defines the real projection $E_K$; its §3.3, PDF11–12, discusses standard-subspace modular nuclearity and Bose splitting. It does not prove the arbitrary-q positive conclusion using $T_L$.

Both conflicting pages were visually checked. The superseded positive paragraph must not be used to turn (15) into a local-existence theorem. The verified positive criterion fails by (16), while failure of a sufficient condition is not a locality no-go.

## 7. Scattering does not close this gap without completeness

For normalized disjoint-rapidity wave packets $f_{\rm fast},g_{\rm slow}$, the ordered wedge-PFG two-particle vectors are $\Psi_{\rm out}=f\otimes g$ and $\Psi_{\rm in}=g\otimes f$. Since $P_{q,2}=I+qF$,

$$
\|\Psi_{\rm out}\|=\|\Psi_{\rm in}\|=1,\qquad
\langle\Psi_{\rm out},\Psi_{\rm in}\rangle=q.
$$

More generally, identifying the two ordered rapidity chambers by the flip gives the same overlap $q$ on the entire ordered two-particle space. Consequently

$$
\chi=\Psi_{\rm in}-q\Psi_{\rm out}
\perp\mathcal H^{\rm out}_2,
\qquad \|\chi\|^2=1-q^2>0.
\tag{18}
$$

These ordered wave operators are not asymptotically complete on full q-Fock space. Their compression $W_{\rm out}^*W_{\rm in}=qI$ is not a unitary elastic scattering matrix; a unitary particle-complete interpretation would require an additional, here false, range-equality assumption.

This is not by itself a proof that double-cone algebras are trivial or that their vacuum cannot be cyclic. [Borchers–Buchholz–Schroer, hep-th/0003243v2](<https://arxiv.org/abs/hep-th/0003243v2>), Theorem 4.2, PDF16, proves absence of $2\to n>2$ production under its local-theory and temperate-PFG assumptions, not asymptotic completeness. Its Lemma 3.2, PDF9–11, concerns the ordered identification with local scattering states when those local assumptions hold. In the related finite-free-product model of [Longo–Tanimoto–Ueda, arXiv:1706.06070v1](<https://arxiv.org/abs/1706.06070v1>), p19 footnote4 explicitly distinguishes an isometry between different ordered ranges from the vanishing compression on symmetric asymptotic Fock space in the mixed-species channel. That model's unresolved local-algebra question cannot be replaced by a contradiction from the zero compression.

## 8. Verification and the next finite question

- **Verified analytically:** (1)–(8), including the full-von-Neumann scope and neutral strengthening; the exact real/complex singular-value identification (12); trace class and the explicit bound (14)–(15); noncompactness (16); and the ordered two-particle range defect (18). Separate fresh reviewers checked the strong-core proof and the modular-map distinction from the stated conventions, without being supplied the candidate conclusions. The negative/positive modular-source distinction was independently checked against the final publication.
- **Verified computationally:** [q_fock_strong_core_checks.sage](<q_fock_strong_core_checks.sage>) works over $\mathbb Q(i)[q]$ without a particle cutoff. It checks 252 color/word combinations for mixed identities, including imaginary overlaps; 124 combinations for quadratic normal ordering; the exact norm identity with complex coefficients; neutral detectors with one, two and three real components; noncommuting $O(2)$ invariance; the one-mode counterexample; endpoint degeneracies; and the two-particle range defect. These finite tests support the formulas, not the infinite-dimensional proof.
- **Run provenance:** final source SHA-256 `0b119f84d609c40cca1d367ef2b5b27ba1203712e212de70489fa4389288a3ae`; all checks passed in the [Sage run record](</Users/koishi/.dsh/research-results/session-df06cdae54f5/3a2d85881acf-research-result-readable.txt>). Mathematica returned zero residual for the projection symbol, moments $(1,1/4,5/16)$, and the numerical bounds in the [modular-symbol record](</Users/koishi/.dsh/research-results/session-df06cdae54f5/d1d3dd9e8389-research-result-readable.txt>); three Bessel/Gaussian residuals vanished in the [integral record](</Users/koishi/.dsh/research-results/session-df06cdae54f5/36fee229164d-research-result-readable.txt>). Both Mathematica runs reported no messages.
- **Source preservation:** the [superseded draft](</Users/koishi/.dsh/research-results/qfock-strong-sources.DjbMSo/mfo-author-draft-2025.pdf>), [official OWR publication](</Users/koishi/.dsh/research-results/qfock-strong-sources.DjbMSo/OWR-2025-34-official.pdf>), [standard-subspace paper](</Users/koishi/.dsh/research-results/qfock-strong-sources.DjbMSo/2506.16085v1.pdf>), [PFG theorem paper](</Users/koishi/.dsh/research-results/qfock-strong-sources.DjbMSo/hep-th-0003243v2.pdf>) and [free-product comparison](</Users/koishi/.dsh/research-results/qfock-strong-sources.DjbMSo/1706.06070v1.pdf>) are retained separately. OWR PDF47, draft p3, BBS p16 and LTU p19 were visually checked; the remaining page references were text-located and inspected by the source reviewer.
- **Assumptions:** real $|q|<1$, infinite one-particle dimension, the explicit symplectic orthogonality and density conditions, finite real internal representation for the neutral theorem, and the scalar massive wedge conventions (9) for the modular calculation. The standard-subspace and wedge-commutant framework is a stated literature input.
- **Not verified:** nontriviality or triviality of $\mathcal C_q(a)$ for massive spacelike $a$; cyclicity of a fixed double cone; arbitrary strong local subnets; a new interacting theory with physical involutive $R$ statistics; or a universal no-go from the three minimum physical axioms.

The next focused question is whether the bounded wedge generators constrain the **locally accessible one-particle space** even when double-cone cyclicity is unknown. Define $\mathcal H_{\rm loc}=\overline{(\bigvee_O\mathcal C_q(O))\Omega}$ and $M_{\rm loc}(W_R)=\bigvee_{O\subset W_R}\mathcal C_q(O)$. Spectrum analyticity and a vacuum-preserving modular conditional expectation may relate the projection onto $\mathcal H_{\rm loc}$ to the bounded q-PFGs. This route needs a separate careful proof; it must not assume either fixed-cone Reeh–Schlieder or asymptotic completeness in order to establish them.

The subsequent [Local particle accessibility in q-Fock wedge nets](<Local particle accessibility in q-Fock wedge nets.md>) establishes the resulting accessibility/wedge-generation dichotomy, the absence of other sharp masses in the proper local-vacuum branch, and the necessary infinite-polarization and norm-distance conditions. It does not select the branch or establish a new physical exchange statistic.
