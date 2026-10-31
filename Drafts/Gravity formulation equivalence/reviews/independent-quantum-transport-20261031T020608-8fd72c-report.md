# Independent review: quantum transport in two vacuum-sector models

## Results

**Setup A.** For bounded real diagonal squeezing parameters, an infinite Fock-space implementer exists exactly when
\[
\boxed{\sum_{n\ge2}\sinh^2 r_n<\infty\quad\Longleftrightarrow\quad(r_n)\in\ell^2.}
\]
Every bounded sequence defines a smooth symplectic automorphism; this alone is insufficient for quantum transport. A constant nonzero squeeze is a counterexample. Even an implementable nonzero squeeze does **not** preserve the specified rotation Hamiltonian. Within this real diagonal family, preservation of the original Hamiltonian, or of its positive-frequency vacuum, requires every \(r_n=0\).

There is also a stronger dynamical distinction: in the abstract squeezed-polarization Fock representation, the **original** full rotation group is implementable exactly when \(r\in\ell^2\). If \(r\notin\ell^2\), almost every rotation time fails implementability. Declaring a different Hamiltonian \(\sum n b_n^\dagger b_n\) positive does not remove that obstruction.

**Setup B.** Under the stated cyclicity, unitarity, normalized-vacuum, adjoint, and density assumptions, two vacuum Virasoro representations admit a unique vacuum-preserving intertwiner of every labeled generator exactly when their central charges agree. No extra choice of null quotient is available: the positive-semidefinite Gram form fixed by the algebra fixes its radical. The result holds on the dense descendant core and on the canonical closed mode operators. If the adjoint statements in the question are literal Hilbert-space adjoint equalities, those closed operators are in fact forced.

A rotation-only character is weaker data. With \(Z(q)=\operatorname{Tr}q^{L_0}\), one stress observable already detects the missing information:
\[
\boxed{\frac{\operatorname{Tr}(q^{L_0}L_nL_{-n})}{Z(q)}
 =\frac{2n\,q\partial_q\log Z(q)+\frac{c}{12}n(n^2-1)}{1-q^n},\qquad n\ge2.}
\]
A finite-level proof below avoids unjustified cyclic permutations of unbounded operators.

**Verification.** The analytic arguments are supplemented by 112 passing exact Sage checks: Gram matrices through level 8; an independent free-current realization at \(c=1,2,3\) through level 6; thermal traces through level 6, including the \(c=1/2\) null quotient; and rational squeezed-state normalization bounds. These checks support the formulas, not an extrapolation from finite level to an infinite-dimensional theorem.

## 1. Assumptions and normalization

The classical space in A is the real vector space underlying
\[
s=\{a=(a_n)_{n\ge2}:\sup_n n^k|a_n|<\infty\ \text{for every }k\ge0\}.
\]
Its symplectic form and classical rotation Hamiltonian are exactly
\[
\Omega=i\sum_{n\ge2}d\bar a_n\wedge da_n,
\qquad H(a)=\sum_{n\ge2}n|a_n|^2.
\]
With \(\iota_{X_H}\Omega=-dH\), the Poisson convention is \(\{a_n,\bar a_m\}=-i\delta_{nm}\), and the classical rotation is \(a_n(t)=e^{-int}a_n\).

The one-particle Hilbert space is \(\mathfrak h=\ell^2(\{2,3,\ldots\})\); the quantum Hilbert space is its bosonic Fock space \(\mathcal F=\Gamma_s(\mathfrak h)\). I use hats only where ambiguity is possible. The CCR are \([a_n,a_m^\dagger]=\delta_{nm}\), with \(\hbar=1\). The old normalized vacuum is \(\Omega_a\). The chosen quantum rotation Hamiltonian is the nonnegative, **normal-ordered** self-adjoint operator
\[
\widehat H_a=d\Gamma(\operatorname{diag}(2,3,\ldots))=\sum_{n\ge2}n a_n^\dagger a_n,
\qquad \widehat H_a\Omega_a=0.
\]
No divergent zero-point constant is implicitly retained or subtracted later.

In B, the Hilbert adjoint is compatible with \(L_n^\dagger=L_{-n}\), the vacuum has norm one, and \(L_n\Omega=0\) for every \(n\ge-1\). The bracket is exactly
\[
[L_m,L_n]=(m-n)L_{m+n}+\frac{c}{12}m(m^2-1)\delta_{m+n,0}\,\mathbf1.
\]
In particular \(L_0\Omega=0\). Descendants are finite words acting on this vacuum; their span is assumed dense. There are no additional primary sectors or spectator Hilbert spaces. Null vectors are zero in the Hilbert space. The existence of the two unitary representations is assumed; the comparison theorem below does not purport to classify all admissible central charges.

## 2. A: symplecticity versus implementability

Write \(\alpha_n=\cosh r_n\), \(\beta_n=\sinh r_n\), and \(t_n=\tanh r_n\). Because \(r\) is uniformly bounded, \(\alpha,\beta\) are bounded multipliers on both \(s\) and \(\mathfrak h\). The map
\[
b_n=\alpha_n a_n+\beta_n\bar a_n
\]
has inverse \(a_n=\alpha_n b_n-\beta_n\bar b_n\). Mode by mode,
\[
d\bar b_n\wedge db_n=(\alpha_n^2-\beta_n^2)d\bar a_n\wedge da_n=d\bar a_n\wedge da_n.
\]
Thus it is a continuous real symplectic automorphism of the specified smooth sequence space for **every** bounded \(r\). At the operator level the corresponding \(b_n=\alpha_n a_n+\beta_n a_n^\dagger\) obey the same CCR.

### 2.1 One mode, including the phase convention

Choose the finite-mode metaplectic phase by
\[
U_n(r_n)=\exp\!\left[\frac{r_n}{2}(a_n^2-a_n^{\dagger2})\right],
\qquad U_n a_n U_n^\dagger=b_n.
\]
The normalized vector annihilated by \(b_n\) is
\[
\psi_n=(\cosh r_n)^{-1/2}
 \exp\!\left[-\frac{t_n}{2}a_n^{\dagger2}\right]|0\rangle_n
=(\cosh r_n)^{-1/2}
 \sum_{k\ge0}\frac{(-t_n)^k\sqrt{(2k)!}}{2^k k!}|2k\rangle_n.
\]
Indeed the annihilation equation fixes the even coefficients from the vacuum coefficient and sets every odd coefficient to zero. Its normalization follows directly from
\[
\sum_{k\ge0}\frac{(2k)!}{4^k(k!)^2}x^k=(1-x)^{-1/2},\qquad |x|<1.
\]
At \(x=t_n^2\), the norm of the unnormalized exponential is squared-norm \(\cosh r_n\). Hence the chosen overlap \(\langle0|\psi_n\rangle=(\cosh r_n)^{-1/2}\) is positive. The kernel of the closed one-mode \(b_n\) is one dimensional.

For later use,
\[
\langle N_n\rangle_{\psi_n}=\sinh^2r_n,
\qquad \operatorname{Var}_{\psi_n}N_n=2\sinh^2r_n\cosh^2r_n.
\]
These follow by applying \(2x\partial_x\) to the same generating function.

### 2.2 Sufficient condition: a strong limit of the actual implementers

Let \(U_N=\prod_{n=2}^N U_n\) act trivially on later modes, and \(\psi_N=U_N\Omega_a\). For \(M>N\),
\[
\langle\psi_N,\psi_M\rangle=\prod_{n=N+1}^M(\cosh r_n)^{-1/2},
\qquad
\|\psi_M-\psi_N\|^2=2\left[1-\prod_{n=N+1}^M(\cosh r_n)^{-1/2}\right].
\]
Thus \(\psi_N\) is Cauchy exactly when \(\sum_n\log\cosh r_n<\infty\). On the compact interval \(|r|\le R\), both \(\log\cosh r\) and \(\sinh^2r\) are comparable to \(r^2\), with their continuous ratios at zero understood. Consequently
\[
\sum\log\cosh r_n<\infty\iff\sum\sinh^2r_n<\infty\iff\sum r_n^2<\infty.
\]
For a vector supported in modes \(2,\ldots,K\), \(U_N\) acts, for \(N\ge K\), as a fixed unitary on those modes times the squeezed tail vacuum. The same tail estimate therefore proves strong convergence on a dense cylinder subspace. Uniform boundedness of \(U_N\) extends this to strong convergence on all of \(\mathcal F\).

The identical argument with \(-r\) proves strong convergence of \(U_N^\dagger\). If their limits are \(U,V\), strong convergence of bounded products gives \(UV=VU=\mathbf1\). Hence \(U\) is unitary, not merely an isometry.

Intertwining is most safely stated first for bounded Weyl operators. It holds for each finite-support test vector and passes to the strong limit; continuity of Weyl operators and boundedness of the symplectic transformation extend it to all \(\mathfrak h\). The corresponding closed one-mode quadratures, and hence annihilation operators with their transported domains, are intertwined. There is no assumption here that the old finite-particle core is invariant under \(U\).

The infinite implementer is unique up to one overall phase by irreducibility of the Fock Weyl representation. Arbitrary unrelated choices of phases for \(U_N\) can spoil strong convergence even when the implementer exists; the positive-vacuum-overlap convention fixes this avoidable ambiguity. An infinite exponential of a sum of quadratic operators is not needed as an additional domain assumption.

### 2.3 Necessary condition: rule out every possible Fock vacuum

Nonconvergence of one chosen sequence of \(U_N\) would not by itself rule out another implementer. Suppose instead that a unitary implementer \(U\) exists and let \(\psi=U\Omega_a\). Then \(\psi\ne0\) and \(b_n\psi=0\) for every \(n\).

Use the tensor factorization
\[
\mathcal F=\mathcal F_{\le N}\otimes\mathcal F_{>N}.
\]
The one-dimensional kernel result in each of the first \(N-1\) modes implies
\[
\psi=\left(\bigotimes_{n=2}^N\psi_n\right)\otimes\chi_N,
\qquad \|\chi_N\|=1.
\]
For any cylinder vector \(v=v_{\le K}\otimes\Omega_{>K}\) and any \(N>K\),
\[
|\langle v,\psi\rangle|
\le \|v\|\prod_{n=K+1}^N(\cosh r_n)^{-1/2}.
\]
If \(\sum\log\cosh r_n\) diverges, the right-hand side tends to zero for every fixed \(K\). Every cylinder overlap vanishes, and cylinder vectors are dense. This forces \(\psi=0\), a contradiction. It proves the claimed necessity without invoking Shale's theorem.

**Why a vanishing vacuum overlap alone is insufficient.** A normalized one-particle vector has zero overlap with \(\Omega_a\); zero overlap does not imply absence from Fock space. The argument above proves vanishing of overlaps with an entire dense subspace. Equivalently, in the divergent case \(\psi_N\) converges weakly to zero while retaining norm one, not strongly to a new normalized vector.

### 2.4 Constant and decaying sequences; energy domains

For \(r_n=r\ne0\),
\[
\langle\Omega_a,\psi_N\rangle=(\cosh r)^{-(N-1)/2}\longrightarrow0,
\qquad \sum\sinh^2r_n=\infty.
\]
This is a smooth bounded symplectic map with no Fock implementer. A separate abstract Fock representation associated with the new polarization still exists; it is not equivalent to the old one as a representation of the same labeled CCR.

For \(r_n\sim Cn^{-p}\), with \(C\ne0\) and \(p>0\):

| Property | Exact summability condition | Power-law threshold |
|---|---|---|
| Fock implementer exists | \(\sum\sinh^2r_n<\infty\) | \(p>1/2\) |
| Squeezed vacuum has finite old energy, \(\psi\in D(\widehat H_a^{1/2})\) | \(\sum n\sinh^2r_n<\infty\) | \(p>1\) |
| \(\psi\in D(\widehat H_a)\) | \(\sum n^2\sinh^2r_n\cosh^2r_n<\infty\) | \(p>3/2\) |

For the last two assertions, monotone finite-cutoff moments give
\[
\langle\widehat H_a\rangle_\psi=\sum n\sinh^2r_n,
\]
\[
\langle\widehat H_a^2\rangle_\psi
 =\left(\sum n\sinh^2r_n\right)^2
 +2\sum n^2\sinh^2r_n\cosh^2r_n,
\]
with extended nonnegative values allowed. At an exponent boundary logarithmic factors matter; the summability conditions, not only the power-law table, are the exact statements.

## 3. A: keeping the specified rotations and normalizations

### 3.1 A Hamiltonian-preserving map is much more restrictive

Classically,
\[
H(b)=\sum_{n\ge2}n\left[\cosh(2r_n)|a_n|^2
 +\frac12\sinh(2r_n)(a_n^2+\bar a_n^2)\right].
\]
Testing a configuration supported in a single mode proves
\[
H\circ S=H\iff r_n=0\quad\text{for all }n.
\]
The same conclusion follows by comparing \(S R_t\) and \(R_t S\): a nonzero creation part has the opposite rotation frequency.

Quantum mechanically,
\[
[\widehat H_a,b_n]=-n\alpha_n a_n+n\beta_n a_n^\dagger,
\]
which equals \(-nb_n\) only when \(\beta_n=0\). If an implementer also commuted with \(\widehat H_a\), it would preserve its unique zero-energy vacuum. But \(b_n\Omega_a=\beta_n a_n^\dagger\Omega_a\), giving the same obstruction.

When \(r\in\ell^2\), one may instead define
\[
\widehat H_b=U\widehat H_aU^\dagger=\sum_{n\ge2}n b_n^\dagger b_n.
\]
This is positive, has ground vector \(U\Omega_a\), and has the same spectrum as \(\widehat H_a\). It is a **transported, generally different operator**, not a proof that \(U\widehat H_a=\widehat H_aU\). The sum is understood through its nonnegative closed quadratic form. Expanding it formally gives
\[
\sum_n n\left[\cosh(2r_n)a_n^\dagger a_n
 +\tfrac12\sinh(2r_n)(a_n^2+a_n^{\dagger2})+\sinh^2r_n\right],
\]
but this termwise expansion must not be used to subtract an infinite scalar or to assert a common operator domain when \(\sum n\sinh^2r_n=\infty\).

The CCR normalization and the vacuum energy normalization are part of the data. A rescaling that changes \([a_n,a_n^\dagger]=\mathbf1\), a rescaling of the labeled time generator, or an unrecorded additive shift of its vacuum energy is not an intertwiner of the specified model.

### 3.2 Does the squeezed-polarization representation carry the original rotation group?

This is distinct from asking whether the squeeze itself commutes with rotations. Expressing the original rotations in \(b\) coordinates gives
\[
b_n(t)=\big[\cos(nt)-i\cosh(2r_n)\sin(nt)\big]b_n
 +i\sinh(2r_n)\sin(nt)\,b_n^\dagger.
\]
For a fixed \(t\), one-mode phase rotations reduce these diagonal complex Bogoliubov coefficients to real squeezing coefficients. Such phase rotations always have second quantizations. Therefore the direct product argument already proved yields
\[
R_t\text{ implementable in the }b\text{-Fock representation}
\iff \sum_{n\ge2}\sinh^2(2r_n)\sin^2(nt)<\infty.
\]
If \(\sum\sinh^2(2r_n)=\infty\), the set of times satisfying this condition has measure zero. Here is a direct proof. If the sum were finite on a set of positive measure in \([0,2\pi]\), there would be a positive-measure subset \(E\) and a finite \(M\) on which all its partial sums are bounded by \(M\). But
\[
\int_E\sin^2(nt)\,dt\longrightarrow\frac{|E|}{2}
\]
by the Riemann–Lebesgue lemma applied to the integrable indicator of \(E\). Integrating the nonnegative partial sums then bounds a positive constant times the tail of \(\sum\sinh^2(2r_n)\), a contradiction.

For bounded \(r\), summability of \(\sinh^2(2r_n)\) is equivalent to \(r\in\ell^2\). In that case conjugating the old rotation representation gives a strongly continuous implementation with a nonnegative generator. Its ground vector in the new polarization is not the \(b\)-vacuum unless \(r=0\).

For constant nonzero \(r\), the implementable original times are exactly \(t\in\pi\mathbb Z\): otherwise \(\sum_{n=2}^N\sin^2(nt)=(N-1)/2+O(1)\). In particular there is no full original rotation group in this polarization, despite the existence of the unrelated positive operator \(\sum n b_n^\dagger b_n\) in its abstract Fock space.

## 4. B: necessary and sufficient intertwining data

### 4.1 The central charge is necessary and cannot be normalized away

The algebra and vacuum conditions give
\[
\|L_{-n}\Omega\|^2=\frac{c}{12}n(n^2-1),\qquad n\ge2.
\]
Thus \(c\ge0\), and already
\[
\|L_{-2}\Omega\|^2=\frac c2
\]
obstructs a vacuum-preserving labeled-generator intertwiner when \(c_1\ne c_2\). A unitary fixes \(\mathbf1\), so it cannot change the scalar multiplying that central identity.

A common rescaling \(L_n\mapsto\lambda L_n\) is not a remedy: it changes the Witt coefficient \(m-n\) unless \(\lambda=1\). More generally, any allowable algebra automorphism must be explicitly declared; the question asks for the given labels, not an unspecified relabeling. The normalized vacuum fixes the overall inner-product scale.

At \(c=0\), every \(L_{-n}\Omega\), \(n\ge2\), has zero norm; cyclicity then leaves only the one-dimensional trivial vacuum representation. This limiting case is included.

### 4.2 Equal central charge is sufficient: construct the map

Use the algebraic universal vacuum module with relations \(L_n\Omega=0\) for \(n\ge-1\). It is spanned by ordered monomials
\[
L_{-\lambda_1}\cdots L_{-\lambda_\ell}\Omega,
\qquad \lambda_1\ge\cdots\ge\lambda_\ell\ge2.
\]
Allowing modes \(-1\) would not enlarge the span: commute them to the right and use \(L_{-1}\Omega=0\).

For any two such finite words \(P,Q\), adjointness and repeated use of the bracket give a uniquely determined polynomial
\[
G_c(P,Q)=\langle\Omega,P^\dagger Q\Omega\rangle.
\]
Every remaining nonconstant mode eventually kills a vacuum; the scalar terms are fixed by the specified central charge. No representation-specific matrix elements remain. In a unitary representation this form is positive semidefinite. Its radical is exactly the kernel of the map from universal words into the Hilbert space: a word has zero image if and only if its squared norm is zero.

Consequently, when \(c_1=c_2=c\), define
\[
U_0\big(P(L^{(1)})\Omega_1\big)=P(L^{(2)})\Omega_2.
\]
Equality of all Gram forms proves both well-definedness on the null quotient and preservation of inner products. Its range is the full second descendant space. Density gives a unitary extension \(U:\mathcal H_1\to\mathcal H_2\).

Commuting a generator through a word shows directly that
\[
U_0 L_n^{(1)}v=L_n^{(2)}U_0v,\qquad v\in\mathcal D_1,
\]
where \(\mathcal D_i\) is the finite-descendant core. The vacuum and central identity are preserved. Every vector in a dense subspace has its image fixed by the intertwining requirements, so this unitary is unique. If only the vacuum ray, rather than its chosen vector, were fixed, one overall phase would remain.

This argument also explains why null data are not independent parameters under the hypotheses. One cannot arbitrarily quotient a positive-norm descendant, or retain a zero-norm descendant as a nonzero Hilbert vector.

### 4.3 Domains and closures: what is and is not automatic

The commutator \([L_0,L_{-n}]=nL_{-n}\) grades the descendant core by nonnegative integer level. Different levels are orthogonal by symmetry of \(L_0\). Write
\[
\mathcal D=\bigoplus_{k\ge0}^{\rm alg}\mathcal H_k,
\qquad \mathcal H=\bigoplus_{k\ge0}\mathcal H_k,
\qquad \dim\mathcal H_k<\infty.
\]
Finiteness follows from the finite number of partitions of \(k\). The mode on the core is a finite-dimensional block shift
\[
T_{n,k}:\mathcal H_k\longrightarrow\mathcal H_{k-n},
\]
with zero target for \(k-n<0\). Its canonical closed realization is
\[
D(T_n)=\left\{v=\bigoplus_k v_k:\sum_k\|T_{n,k}v_k\|^2<\infty\right\},
\qquad (T_nv)_{k-n}=T_{n,k}v_k.
\]
Truncation to finitely many levels converges in both the Hilbert norm and this graph norm. Thus the closure of the core action equals this maximal block-shift operator. Finite-block adjointness gives \(T_n^*=T_{-n}\). In particular \(L_0\) has its unique diagonal self-adjoint closure, and the unitary constructed above transports each displayed domain exactly.

If the given operators satisfy **literal** Hilbert-adjoint equalities \(L_n^*=L_{-n}\) and contain the descendant core, they must equal these canonical closures. Indeed each is closed, contains the minimal closure, and is contained in the adjoint of the opposite core action, which is the same maximal block-shift operator. Hence there is no residual individual-mode extension ambiguity under that literal assumption.

If instead \(L_n^\dagger=L_{-n}\) only denotes a formal identity on a common algebraic domain, the proved conclusion is the intertwining of that core and its canonical closures; arbitrary separately chosen operator domains need not be intertwined. These arguments alone do not define infinite smeared mode sums, products on arbitrary vectors, a chosen self-adjoint extension of every real combination, or a global diffeomorphism-group representation. Such additions require their own domain or integration hypotheses. When a self-adjoint generator is specified as the closure of an intertwined core operator, its spectral functions and unitary group are of course intertwined as well.

## 5. Exact small-level Gram data

Within each level use the ordered partitions listed below, with \(v_\lambda=L_{-\lambda_1}\cdots L_{-\lambda_\ell}\Omega\). Different levels are orthogonal.

At levels 2 and 3,
\[
G_2=[c/2],\qquad G_3=[2c].
\]
At level 4 in the basis \((4),(2,2)\), and level 5 in the basis \((5),(3,2)\),
\[
G_4=\begin{pmatrix}5c&3c\\3c&\tfrac12c(c+8)\end{pmatrix},
\qquad
G_5=\begin{pmatrix}10c&4c\\4c&c(c+6)\end{pmatrix}.
\]
For example,
\[
\langle\Omega,L_4L_{-2}^2\Omega\rangle=6\langle\Omega,L_2L_{-2}\Omega\rangle=3c,
\]
and
\[
[L_2,L_{-2}]=4L_0+c/2
\quad\Longrightarrow\quad
\|L_{-2}^2\Omega\|^2=\tfrac12c(c+8).
\]
The determinants are
\[
\det G_4=\tfrac12c^2(5c+22),\qquad
\det G_5=2c^2(5c+22).
\]
At level 6 in the basis \((6),(4,2),(3,3),(2,2,2)\),
\[
G_6=\begin{pmatrix}
\frac{35c}{2}&5c&18c&24c\\
5c&\frac52c^2+8c&14c&\frac92c^2+24c\\
18c&14c&8c^2+36c&30c\\
24c&\frac92c^2+24c&30c&\frac34c(c+8)(c+16)
\end{pmatrix},
\]
\[
\det G_6=\frac34c^4(2c-1)(7c+68)(5c+22)^2.
\]
At \(c=1/2\), the level-6 rank is 3 rather than the four formal partitions. The trace computation below uses that quotient rather than counting a null vector as a state.

The computational cross-check was not solely a repeat of commuting Virasoro modes. A second implementation used \(d\) independent free currents, \(c=d\), with \(J_{-k}\) represented by multiplication by \(x_{s,k}\), \(J_k=k\partial_{x_{s,k}}\), and
\[
L_{-n}=\sum_{s=1}^d\sum_{k\ge1}k x_{s,n+k}\partial_{x_{s,k}}
 +\frac12\sum_{s=1}^d\sum_{j=1}^{n-1}x_{s,j}x_{s,n-j}.
\]
Polynomial monomials have squared norms \(\prod_{s,k}k^{e_{s,k}}e_{s,k}!\). It reproduces every Gram entry through level 6 at \(d=1,2,3\). This is an independent finite realization check, not an assertion that the full current Fock space equals its Virasoro vacuum submodule.

## 6. Rotation characters versus labeled stress observables

### 6.1 What the character forgets

Set
\[
d_k=\dim\mathcal H_k,\qquad Z(q)=\operatorname{Tr}q^{L_0}=\sum_{k\ge0}d_kq^k.
\]
It records only the graded dimensions, not descendant Gram matrix entries or the central charge separately. Equal \(d_k\) permit arbitrary levelwise unitary identifications that intertwine \(L_0\), without intertwining the remaining modes.

For example, the ordinary unitary vacuum modules with \(c>1\) have no extra vacuum nulls beyond the module generated by \(L_{-1}\Omega\), and hence
\[
Z(q)=\prod_{m=2}^\infty(1-q^m)^{-1}.
\]
Thus \(c=2\) and \(c=3\) have equal rotation-only characters but cannot be related by the required labeled-generator intertwiner: their \(L_{-2}\)-vacuum norms are 1 and \(3/2\). The all-level no-extra-null statement used for this familiar example is the standard Virasoro highest-weight/Kac-determinant fact, not something inferred from the finite CAS checks. The transport theorem itself did not use that fact.

A shifted torus character is different data. If \(K_0=L_0-c/24\) and \(K_n=L_n\) for \(n\ne0\), the bracket in these conventions has cocycle \(cm^3/12\), and
\[
\operatorname{Tr}q^{K_0}=q^{-c/24}Z(q).
\]
With the present fixed vacuum normalization, equality of this prefactor does reveal \(c\). It is not merely equality of the descendant counting factor. Under all the restrictive assumptions of B, once \(c\) agrees, the uniqueness proof already supplies the intertwiner.

### 6.2 Derive the thermal stress diagnostic without unsafe trace cyclicity

For \(n\ge2\), let
\[
A_k=\operatorname{Tr}_{\mathcal H_k}(L_nL_{-n}),
\qquad B_k=\operatorname{Tr}_{\mathcal H_k}(L_{-n}L_n),
\qquad \kappa_n=\frac c{12}n(n^2-1).
\]
These are finite-dimensional traces of positive operators. On level \(k\), the bracket gives
\[
A_k-B_k=(2nk+\kappa_n)d_k.
\]
The map \(L_{-n}:\mathcal H_k\to\mathcal H_{k+n}\) and its finite-block adjoint have equal traces of \(T^*T\) and \(TT^*\). Consequently
\[
B_{k+n}=A_k,\qquad B_k=0\quad(k<n).
\]
Therefore, as formal graded series,
\[
B(q)=q^nA(q),\qquad
(1-q^n)A(q)=2nqZ'(q)+\kappa_n Z(q).
\]
Dividing by \(Z(q)\) proves the formula in the results section. The reverse ordering is \(\langle L_{-n}L_n\rangle_q=q^n\langle L_nL_{-n}\rangle_q\).

There is also an operator interpretation for real \(0<q<1\), not merely a formal one. Since \(d_k\) is bounded by the number of partitions of \(k\) with parts at least 2, both \(Z(q)\) and \(qZ'(q)\) converge. The positive-coefficient identity proves convergence of \(A(q)\). It defines the thermal quadratic-form trace
\[
\operatorname{Tr}\!\left(q^{L_0/2}L_nL_{-n}q^{L_0/2}\right)
=\|L_{-n}q^{L_0/2}\|_{\mathrm{HS}}^2<\infty.
\]
The positive block-diagonal closure gives the same trace. No cyclicity assertion for undefined products of unbounded operators is needed.

Checks and limits are transparent:

- \(q\to0\) gives \(\langle L_nL_{-n}\rangle\to\kappa_n\), the exact vacuum norm.
- At \(c=0\), the cyclic vacuum module is trivial and both sides vanish.
- If two admissible representations have equal \(Z\) but charges \(c_1\ne c_2\), their normalized observables differ by
  \[
  \frac{(c_1-c_2)n(n^2-1)}{12(1-q^n)}.
  \]
- At generic \(c\), the coefficients of \(A(q)\) for \(n=2\), levels 0 through 6, are
  \[
  c/2,\ 0,\ c+8,\ c/2+12,\ 2c+40,\ 3c/2+52,\ 4c+136.
  \]
  At \(c=1/2\), after the level-6 null quotient, the last coefficient is instead \(455/4\), exactly as the recurrence with \(d_6=3\) demands.

## 7. Squeezed-state numerical/exact diagnostics

At \(\tanh r=3/5\), one has \(\cosh r=5/4\), \(\sinh r=3/4\). The normalized vacuum probability is \(4/5\), the mean number is \(9/16\), and its variance is \(225/128\).

For the probabilities
\[
p_k=\frac45\frac{\binom{2k}{k}}{4^k}\left(\frac9{25}\right)^k
\]
corresponding to occupation \(2k\), the exact ratio is
\[
\frac{p_{k+1}}{p_k}=\frac9{25}\frac{2k+1}{2k+2}<\frac9{25}.
\]
At cutoff \(K=60\), exact rational arithmetic bounds the missing normalization by \(p_{61}/(1-9/25)\). The missing mass is about \(7.71408\times10^{-29}\); the rigorous bound is about \(7.74877\times10^{-29}\). The analogous exact geometric bound also brackets the mean \(9/16\). These are checks of the analytic generating-function normalization, not a numerical definition of it.

For modes 2 and 3 with \(\tanh r_2=3/5\), \(\tanh r_3=-5/13\), the squared old-vacuum overlap is \(48/65\), and the old mean energy is \(79/48\). The sign of a squeeze changes phases of even occupation amplitudes, not their probabilities or the summability criterion.

## 8. Evidence archive, independence, and scope

Only new uniquely prefixed files were deliberately created for this review. No parent candidate conclusions or other reviewer reports were read. The only preexisting project text read was the root rules and the applicable computation-skill instructions; the calculations and report were derived from the supplied models.

- [Complete executable Sage source](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent-quantum-transport-20261031T020608-8fd72c-sage-source.py>).
- [Complete exact results and all 112 check outcomes](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent-quantum-transport-20261031T020608-8fd72c-sage-output.json>).
- [Full raw kernel/transport diagnostics, including input, stdout, hashes, and version](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent-quantum-transport-20261031T020608-8fd72c-sage-diagnostics.json>).

The recorded Sage run is version 10.9, succeeded, returned no error or warnings, and had no upstream, stdout, or stderr truncation. The source uses exclusive creation for its output archive; an unchanged rerun should use a new output prefix rather than overwrite this evidence. The source is a complete independent setup, not a dependency on a previous kernel state.

**Verified:** direct analytic diagonal implementability theorem; the stronger original-rotation obstruction; exact fixed-H distinction; cyclic Virasoro vacuum uniqueness; individual-mode canonical closure transport; finite-block thermal identity; the finite CAS checks described above.

**Assumptions:** the prescribed one-particle completion and Fock CCR; real uniformly bounded squeezing; normal-ordered zero-ground-energy \(\widehat H_a\); the exact Virasoro bracket and adjoint convention; cyclic normalized vacuum and dense finite descendants; existence of the unitary representations being compared.

**Not claimed:** a construction of a bulk gravity measure, nonlinear infinite-dimensional geometric quantization, gravitational constraints beyond these models, a classification of all allowed \(c\), or integration/domain statements for arbitrary infinite sums of Virasoro generators. This is itself a fresh independent review; runtime delegation depth did not permit a further fresh-agent review of this review. The free-current computation provides an independent finite implementation check, not a substitute for such a separate reviewer.
