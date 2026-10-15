# R-parastatistics and local relativistic interactions

## Status

**The requested complete-field comparison remains unresolved.** A qualifying ordinary parent must be a Bose/Fermi field net whose local fields create all physical charge sectors from its vacuum. The [identity-net argument](No-go%20for%20inequivalence%20to%20arbitrary%20Bose-local%20field%20nets.md) is tautological and has been withdrawn as a solution: neither it nor the tensor-product variant establishes this completeness.

A new interacting $R$ model proved to exclude such a complete parent has not been constructed. Observable locality remains:

$$
[\mathcal A(O_1),\mathcal A(O_2)]=0
\qquad
O_1\subset O_2'.
$$

The inequivalence requirement excludes **every complete Bose/Fermi parent preserving the observable net, vacuum and physical sectors**, including larger parents followed by observable restriction. Failure of finite-statistics DHR–DR reconstruction alone does not establish this exclusion. Conversely, an ordinary-field description that does not locally create the specified charges is not a complete parent.

The requested universal no-go must use **only positivity, relativistic covariance, and observable spacelike commutativity**. No such complete-field reconstruction theorem has been proved here. The conditional results below use additional hypotheses and remain separate tests of physical construction routes.

The [complete-field calculation](Complete%20field%20nets%20and%20R-parastatistics.md) proves a stronger inequivalence test: exterior disjointness of a physical charge from the vacuum excludes every complete relatively local parent. Broken-phase $1+1$-dimensional kink sectors provide an application using established interacting models. This refutes dimension-independent complete reconstruction for all physical sectors; it supplies neither new involutive $R$ statistics nor a $3+1$-dimensional result.

The cyclic $R$ construction below is interacting and relativistic with local observables, but is exactly reducible to ordinary bosonic fields. For $R=\pm I$ with internal dimension greater than one, a natural pair-contraction map is impossible in the specified tensor realization, even with a distinct antiparticle space. A separate argument excludes obtaining a nontrivial vacuum observable theory from the number-conserving Fock algebra alone.

The filled-state density route for $R=-I$ also reduces to ordinary fermions with multiplicity. The nonunitary pair-creation family has a related obstruction: its density/pair observable algebra and cyclic vacuum representation are independent of the auxiliary dimension and have an ordinary two-component fermion realization. The separate [pair-algebra calculation](Nonunitary%20R%20pair%20observables%20and%20ordinary%20fermions.md) gives the proof and its exact scope.

There is also a conditional obstruction to the infinite-statistics route: a fixed finite-dimensional $R$ cannot faithfully represent the full permutation algebra of an infinite-statistics symmetric DHR sector. The necessary identification with physical sector intertwiners must be proved, rather than inferred from the exchange matrix.

The separate [crossing and continuum calculation](R-parastatistics%20crossing%20and%20local%20continuum%20construction.md) supplies an explicit factorizing interaction for the cyclic family, including antiparticles and a large-double-cone locality estimate. Its particles have ordinary bosonic asymptotic exchange. More generally, finite-dimensional constant crossing supplies conjugates for unitary involutive $R$; this route does not produce the missing reconstruction loophole.

Two further tests constrain possible completions. A finite-dimensional regular scattering matrix with an involutive high-rapidity limit must give a crossing-symmetric limiting $R$, even without scalar factorization. For the nonunitary pair family, the two ordered charged-state Gram matrices stay a definite distance from independent one-particle products; a positive observable metric does not remove that obstruction. The respective calculations state their analytic and charged-state independence assumptions explicitly.

The crossing calculation also tests enlargement of the particle content. If a finite family remains closed under exchange in a unitary involutive crossing-symmetric completion, it closes with its antiparticles in at most twice its original dimension, even when the ambient space has infinitely many species. Unusual symmetric or alternating counting growth then excludes such a completion. This is a conditional obstruction to that construction route, not a reconstruction theorem inferred from observable locality alone.

These candidate calculations do not prove that every local relativistic theory outside the DHR hypotheses has a complete normal charged-field reconstruction. Completeness is now an explicit requirement on the comparison parent, rather than an optional strengthening.

## 1. Definitions and comparison

Let $V$ be a finite-dimensional Hilbert space and let

$$
\begin{align}
R&:V\otimes V\longrightarrow V\otimes V,\\
R^\dagger R&=I,\qquad R^2=I,\\
R_{12}R_{23}R_{12}&=R_{23}R_{12}R_{23}.
\end{align}
$$

These relations define unitary representations of the permutation groups on $V^{\otimes n}$. They do not specify a local net, a vacuum, a Hamiltonian, or the physical intertwiners between charge sectors.

The comparison relevant to DHR–DR preserves the observable net, vacuum, spacetime covariance, charge fusion, and exchange. A change of charged-field coordinates may depend on particle number or on a global symmetry operator; restricting the comparison to a single basis change $u\otimes u$ would miss such equivalences.

The present target further excludes realization by restricting a larger complete ordinary-field theory. An invariant used to prove that stronger statement must obstruct such embeddings, including local creation of every specified charge, not merely distinguish the intrinsic sector categories of two selected subnets. The Virasoro example in §5 explains why statistical dimension alone does not do this.

Three dimensions must be distinguished:

- $m=\dim V$, the internal dimension in the displayed exchange algebra;
- $d(\rho)$, the intrinsic statistical dimension of a physical charge sector;
- the minimal twisting dimension $D_R$ used in the $R$-parastatistics literature.

Neither $m<\infty$ nor $D_R=\infty$ computes $d(\rho)$. In particular, an infinite twisting dimension is not a proof of an infinite-index DHR sector. The pair-creation and weak-equivalence definitions are developed in [Wang–Hazzard, §§II G and IV](https://arxiv.org/abs/2607.26351v1).

### What observable locality does not impose

The three requested hypotheses constrain a represented observable net:

$$
\begin{align}
\langle\psi,\psi\rangle&\geq0,\\
U(g)\mathcal A(O)U(g)^{-1}&=\mathcal A(gO),\\
[\mathcal A(O_1),\mathcal A(O_2)]&=0
\qquad (O_1\subset O_2').
\end{align}
$$

The following construction shows that they do not force crossing on an arbitrary auxiliary $R$ attached to the same theory. It also shows why that fact is insufficient to construct new physical statistics.

Start with a positive, covariant vacuum net $(\mathcal A_0,\mathcal H_0,U_0,\Omega_0)$, with $\mathcal H_0=\overline{\mathcal A_0\Omega_0}$. It may be the interacting massive theory used in §2. For definiteness, retain a unique vacuum and the forward spectrum condition. Let $\mathfrak h_\mu$ be the scalar positive-energy one-particle space of mass $\mu>0$ in the same spacetime dimension, and set

$$
\mathcal K_1=\mathfrak h_\mu\otimes V,
\qquad
u_1(g)=u_\mu(g)\otimes I_V.
$$

For any unitary involutive Yang–Baxter matrix $R$ from the definition above, define the adjacent exchange on two one-particle factors by

$$
T\bigl((f\otimes v)\otimes(h\otimes w)\bigr)
=\sum_\alpha(h\otimes v_\alpha)\otimes(f\otimes w_\alpha),
\qquad
R(v\otimes w)=\sum_\alpha v_\alpha\otimes w_\alpha.
$$

Thus $T$ exchanges the momentum factors and applies $R$ to the internal factors. Its adjacent copies generate a unitary representation $D_n^R$ of $S_n$. The group average is an orthogonal projection:

$$
\begin{align}
P_n^R&=\frac1{n!}\sum_{\pi\in S_n}D_n^R(\pi),
&
(P_n^R)^2&=P_n^R=(P_n^R)^\dagger,\\
\mathcal K_R&=\bigoplus_{n\geq0}P_n^R\mathcal K_1^{\otimes n},
&
u_R(g)&=\bigoplus_{n\geq0}
u_1(g)^{\otimes n}\big|_{P_n^R\mathcal K_1^{\otimes n}}.
\end{align}
$$

Every exchange commutes with $u_1(g)^{\otimes n}$, so $u_R$ is well defined. Its translation spectrum is a union of sums of positive mass-shell momenta and lies in the forward cone. In a fixed inertial frame its energy on the $n$-particle space is at least $n\mu$. Consequently its only invariant vector is the empty vector $\Omega_R$, up to scale. The Fock inner product is positive because it is inherited from orthogonal subspaces of ordinary Hilbert tensor powers.

On finite-particle vectors define

$$
a_R^\dagger(\xi)\psi_n
=\sqrt{n+1}\,P_{n+1}^R(\xi\otimes\psi_n).
$$

The projection identity gives the creation exchange relation with the prescribed $R$. Covariance follows by applying $u_R(g)$ to this formula. For $R=-I$ and $m=\dim V>1$, the regrouping of momentum and internal factors gives explicitly

$$
\mathcal K_R
\simeq
\bigoplus_{n\geq0}\Lambda^n\mathfrak h_\mu\otimes V^{\otimes n}.
$$

This is a positive representation with the nonordinary auxiliary counting of $R=-I$. Nevertheless, that $R$ fails the constant crossing equation in the companion calculation: in a real orthonormal basis,

$$
R_{01,01}=-1,
\qquad
R_{00,11}=0,
$$

where crossing would identify these entries as $R_{ab,cd}=R_{ca,db}$. The failure holds for every $m>1$.

Now define the enlarged covariant representation

$$
\begin{align}
\mathcal H&=\mathcal H_0\otimes\mathcal K_R,
&
\Omega&=\Omega_0\otimes\Omega_R,\\
\mathcal A(O)&=\mathcal A_0(O)\otimes I,
&
U(g)&=U_0(g)\otimes u_R(g).
\end{align}
$$

It has positive inner product, forward spectrum, a unique invariant vacuum, and spacelike-commuting observables. All vacuum observable correlation functions, including the interacting correlations of the starting theory, are unchanged. The auxiliary creation operators $I\otimes a_R^\dagger(\xi)$ commute with every observable.

The physical limitation is exact. The vacuum observable space and the full observable representation are

$$
\begin{align}
\overline{\mathcal A\Omega}
&=\mathcal H_0\otimes\mathbb C\Omega_R,\\
\pi_{\mathcal A}
&=\pi_0\otimes I_{\mathcal K_R}.
\end{align}
$$

Thus the enlargement only gives multiplicities of the starting observable representation. For every normalized $\eta\in\mathcal K_R$,

$$
\langle\Omega_0\otimes\eta,
(A\otimes I)\Omega_0\otimes\eta\rangle
=\langle\Omega_0,A\Omega_0\rangle.
$$

The $R$ labels do not define new distinguishable charges of $\mathcal A$. Nor does the base interaction couple to them. Their extra positive energy acts in the commutant of the observable algebra; covariance alone does not require that energy to come from an observable stress tensor.

This is a counterexample to the implication

$$
\text{positive covariant local observables}
\ \Longrightarrow\
\text{crossing for every attached }R.
$$

It is **not** a counterexample to an ordinary-field reconstruction theorem and does not establish the requested inequivalence. In particular, adding an interacting spectator does not turn the auxiliary $R$ into physical particle statistics. A substantive statistics restriction obtained from the conditional obstructions below must first connect $R$ to observable charge transport, scattering, or another intrinsic physical operation. That connection has not been derived from the three stated hypotheses.

## 2. An explicit interacting construction

### Ordinary fields and action

Take three identical, independent real scalar theories in $1+1$-dimensional Minkowski spacetime, with labels $a\in\mathbb Z_3$. Use $\eta_{\mu\nu}=\operatorname{diag}(+,-)$ and

$$
\begin{align}
S[\phi]
&=\int d^2x\sum_{a=0}^{2}
\left[
\frac12\partial_\mu\phi_a\partial^\mu\phi_a
-\frac{\mu^2}{2}\phi_a^2
-\frac{\lambda}{4!}\phi_a^4
\right],\\
\mu^2&>0,\qquad \lambda>0.
\end{align}
$$

Here $[\phi_a]=0$ and $[\lambda]=2$. There is no gauge fixing. Compactly supported variations give

$$
(\Box+\mu^2)\phi_a+\frac{\lambda}{6}\phi_a^3=0.
$$

At the quantum level, the displayed polynomial action denotes the usual Wick-renormalized $P(\phi)_2$ construction; $\mu$ is a reference mass parameter, not an assertion that the physical mass has no interaction correction. Coincident products below use the same renormalization prescription in every copy.

The nonperturbative input is the weakly coupled massive $P(\phi)_2$ theory. Its Wightman properties and isolated mass shell are established by [Glimm–Jaffe–Spencer](https://annals.math.princeton.edu/1974/100-3/p04). Nontrivial scattering for sufficiently small positive coupling is an additional constructive result of [Osterwalder–Sénéor](https://www.e-periodica.ch/cntmng?pid=hpa-001%3A1976%3A49%3A%3A988). These existence results are inputs here, not consequences of the symbolic checks below.

The three-copy theory is their finite tensor product. Its vacuum is the product vacuum, its Poincaré representation is the tensor product representation, and its spectrum remains in the forward cone. The copies are independent, but each has nontrivial self-scattering. The quartic vertex in the stated convention is $-i\lambda$ for four legs in the same copy. This perturbative coefficient is a normalization check; the cited scattering result supplies the nonperturbative nontriviality input.

### The cyclic symmetry

Let $Q$ be the unitary that cyclically permutes the copies:

$$
\begin{align}
Q^3&=I,\qquad Q\Omega=\Omega,\\
Q\phi_a(x)Q^{-1}&=\phi_{a+1}(x),\\
[Q,U(g)]&=0.
\end{align}
$$

The identical interactions preserve this symmetry. Define

$$
\Psi_a(x)=\phi_a(x)Q,
\qquad
\Psi_a^\dagger(x)=Q^{-1}\phi_a(x).
$$

The $\Psi_a$ are scalar operator-valued distributions because $Q$ commutes with $U(g)$. They act on the positive Hilbert space of the interacting ordinary theory. They are not Hermitian fields.

At spacelike separation, ordinary field locality gives

$$
\begin{align}
\Psi_a(x)\Psi_b(y)
&=\phi_a(x)\phi_{b+1}(y)Q^2\\
&=\phi_{b+1}(y)\phi_a(x)Q^2\\
&=\Psi_{b+1}(y)\Psi_{a-1}(x).
\end{align}
$$

Thus the exchange matrix is

$$
R|a,b\rangle=|b+1,a-1\rangle,
\qquad
R=(T\otimes T^{-1})F,
$$

where $T|a\rangle=|a+1\rangle$ and $F|a,b\rangle=|b,a\rangle$. All label arithmetic is modulo three. For example, $R|0,0\rangle=|1,2\rangle$, so this matrix is not $F$ in the displayed basis.

The same definition works modulo any $m>1$. It is a permutation matrix and hence unitary. Direct composition proves

$$
\begin{align}
R^2(a,b)&=(a,b),\\
R_{12}R_{23}R_{12}(a,b,c)
&=(c+2,b,a-2)\\
&=R_{23}R_{12}R_{23}(a,b,c).
\end{align}
$$

Adjoints are part of the construction, rather than an independently imposed rule. For example,

$$
\Psi_a^\dagger(x)\Psi_b(y)
=\Psi_{b-1}(y)\Psi_{a-1}^\dagger(x)
\qquad (x-y)^2<0.
$$

### Local observables and the interaction

Write $\mathcal F_B(O)$ for the ordinary bosonic local field algebra, and choose

$$
\mathcal A(O)=\mathcal F_B(O)^{\mathbb Z_3}.
$$

This observable net is local because it is a subnet of $\mathcal F_B$. If $A\in\mathcal A(O)$ and $x$ is spacelike to $O$, then

$$
[A,\Psi_a(x)]
=[A,\phi_a(x)]Q+\phi_a(x)[A,Q]=0.
$$

Thus the charged fields are local relative to the observables. This statement concerns the fields defined above and the specified observable net; the global operator $Q$ is not itself declared to be a bounded-region observable.

Interaction is visible in the invariant theory itself. The field $\chi=3^{-1/2}\sum_a\phi_a$ is invariant, and independence of the copies gives the connected four-point function

$$
G^{\mathrm{conn}}_4(\chi)
=\frac13 G^{\mathrm{conn}}_4(\phi_0).
$$

Equivalently, its same-mass neutral scattering channel has leading amputated vertex $-i\lambda/3$. Thus taking the invariant subnet has not discarded all interacting observables.

The interaction can be written using the $\Psi$ fields. At a common regulated point,

$$
\begin{align}
B_a&=\Psi_a^\dagger\Psi_a
=Q^{-1}\phi_a^2Q
=\phi_{a-1}^2,\\
\sum_a\partial_\mu\Psi_a^\dagger\partial^\mu\Psi_a
&=\sum_a\partial_\mu\phi_a\partial^\mu\phi_a,\\
\sum_a B_a&=\sum_a\phi_a^2,\\
\sum_a B_a^2&=\sum_a\phi_a^4.
\end{align}
$$

Accordingly,

$$
\mathcal L_R
=\frac12\sum_a\partial_\mu\Psi_a^\dagger\partial^\mu\Psi_a
-\frac{\mu^2}{2}\sum_a B_a
-\frac{\lambda}{4!}\sum_a B_a^2
=\mathcal L_B.
$$

The invariant sums belong to the observable theory. An individual $B_a$ need not be $\mathbb Z_3$ invariant. In the continuum, the equality means that products and counterterms are transported from the ordinary theory; it is not an unrenormalized identity between arbitrary products of distributions.

This is an operator presentation of an already defined interacting theory. One should vary the ordinary action before making the operator substitution. For example, multiplying its field equation on the right by $Q$ gives the ordered equation

$$
(\Box+\mu^2)\Psi_a+\frac{\lambda}{6}\Psi_a B_a=0,
$$

with the cubic composite defined by transport from $\phi_a^3Q$. Treating noncommuting $\Psi_a$ and $\Psi_a^\dagger$ as independent classical variables would be a different, unjustified construction.

### Exact reduction to ordinary statistics

For either incoming or outgoing asymptotic ordinary creation operators $b_a^\dagger(f)$, set

$$
a_a^\dagger(f)=b_a^\dagger(f)Q,
\qquad
a_a(f)=Q^{-1}b_a(f).
$$

The resulting operators obey

$$
\begin{align}
a_a^\dagger(f)a_b^\dagger(h)
&=a_{b+1}^\dagger(h)a_{a-1}^\dagger(f),\\
a_a(f)a_b^\dagger(h)
&=a_{b-1}^\dagger(h)a_{a-1}(f)
+\delta_{ab}\langle f,h\rangle.
\end{align}
$$

These are the $R$-commutation relations in a positive representation. The total contraction remains ordinary:

$$
\sum_a a_a^\dagger(f)a_a(h)
=\sum_a b_a^\dagger(f)b_a(h).
$$

The reduction is explicit at every particle number:

$$
\begin{align}
a_{a_1}^\dagger(f_1)\cdots a_{a_n}^\dagger(f_n)\Omega
={}&b_{a_1}^\dagger(f_1)b_{a_2+1}^\dagger(f_2)
\cdots b_{a_n+n-1}^\dagger(f_n)\Omega,\\
W_n&=\bigotimes_{j=1}^{n}T^{j-1},\\
W_nR_{i,i+1}W_n^{-1}&=F_{i,i+1}.
\end{align}
$$

The last identity follows from $T^{i} = T^{i-1}T$ and holds for every $n$ and $i$. It identifies the $R$-symmetric asymptotic space with the ordinary symmetric space. Including particle-number-changing channels, scattering is transported by the direct sum $W=\bigoplus_n W_n$ on the scattering spaces:

$$
S_R=W_{\mathrm{out}}^{-1}S_BW_{\mathrm{in}}.
$$

No assumption of asymptotic completeness of the entire interacting Hilbert space is needed for this statement on the scattering spaces.

Consequently, this construction proves **existence of an interacting relativistic $R$ presentation with local observables**, and proves **failure of the required inequivalence**. Its observable net is an ordinary finite-group fixed-point net by definition. The charge subcategory supplied by the $\mathbb Z_3$ symmetry is ordinary. Since the example is in $1+1$ dimensions, this is not a claim that the full DHR category of the net must be symmetric.

The displayed $R$ is a charged-field exchange coefficient, not an independently proved invariant of the physical sector category. Fusion and pair-contraction maps must be transported too. Ignoring those maps would incorrectly turn a change of field presentation into new intrinsic statistics.

The use of $1+1$ dimensions supplies a constructed interacting starting theory. The operator argument works in any dimension in which an ordinary theory with the stated cyclic symmetry exists. Changing dimension is not the inequivalence mechanism.

## 3. A distinct antiparticle does not repair $R=\pm I$

The next candidate has different exclusion counting. Let $V$ have dimension $m>1$ and take

$$
c_{V,V}=R=\varepsilon I_{V\otimes V},
\qquad \varepsilon=\pm1.
$$

Introduce an arbitrary proposed antiparticle space $W$, a mixed braiding

$$
c_{V,W}:V\otimes W\longrightarrow W\otimes V,
$$

and an evaluation

$$
\operatorname{ev}:W\otimes V\longrightarrow\mathbb C.
$$

Use ordinary tensor products and their canonical associativity identifications. A local annihilation intertwiner must be natural with respect to transporting another charge past it. Together with the braiding hexagon, this requires

$$
\operatorname{id}_V\otimes\operatorname{ev}
=
(\operatorname{ev}\otimes\operatorname{id}_V)
(\operatorname{id}_W\otimes c_{V,V})
(c_{V,W}\otimes\operatorname{id}_V).
$$

Write

$$
B(w,y)=\operatorname{ev}(w\otimes y),
\qquad
\beta(x,w)=\operatorname{ev}\!\left(c_{V,W}(x\otimes w)\right).
$$

Applying the naturality equation to $x\otimes w\otimes y$ gives

$$
x\,B(w,y)=\varepsilon\,\beta(x,w)y.
$$

If $B$ were nonzero, choose $w,y$ with $B(w,y)\neq0$, and choose $x$ linearly independent of $y$. The left side is a nonzero multiple of $x$ and the right side is a multiple of $y$, a contradiction. Therefore

$$
\boxed{\operatorname{ev}=0\qquad(m>1).}
$$

This proof does not assume $W=V$, does not choose a particular mixed $R$, and does not require unitarity or invertibility of $c_{V,W}$. It also excludes degenerate nonzero evaluations. A conjugate satisfying the snake identities is therefore impossible in this tensor realization.

The precise failed categorical hypothesis in this concrete tensor realization is **existence of conjugates compatible with natural exchange**. It is not a completed counterexample to DHR–DR: no local relativistic interacting observable net carrying this charge has yet been supplied.

In particular, this auxiliary tensor realization must not be identified with a physical DHR charge merely because its exchange matrix is scalar. For an irreducible symmetric DHR sector whose actual statistics operator is $\varepsilon_\rho=\pm I$, the normalized left inverse instead gives $d(\rho)=1$; see §5. The $m$ auxiliary labels do not make that sector an infinite-statistics charge.

The scope matters. This is a statement about the concrete tensor realization with $c_{V,V}=\pm I$ and the displayed naturality equation. It is not a theorem excluding every alternative localization, every non-Fock representation, or every possible charged-field completion of a local observable net. Conversely, merely changing the mixed exchange while retaining this equation cannot repair the candidate.

## 4. The number-conserving Fock route has a trivial vacuum sector

### The empty reference state

Suppose the proposed observables are generated solely by the contracted bilinears

$$
E_{ij}=\sum_a a_{i,a}^\dagger a_{j,a},
$$

and their number-preserving products. Let $N$ be the nonnegative total particle number in the vacuum Fock representation, with

$$
N\Omega=0,\qquad \ker N=\mathbb C\Omega.
$$

Assume that the bounded observable algebras preserve the spectral subspaces of $N$; this makes the following argument independent of domains of polynomial generators. Then

$$
[A,N]=0
\quad\Longrightarrow\quad
A\Omega=c_A\Omega,
$$

and hence

$$
\mathcal H_0
=\overline{\mathcal A\Omega}
=\mathbb C\Omega,
\qquad
\pi_0(\mathcal A(O))=\mathbb C I.
$$

The vacuum observable theory is trivial. A nontrivial action of the bilinears on positive-particle-number states cannot be treated as a nontrivial DHR representation of this scalar vacuum net: representations of $\mathbb C I$ contain no such observable operators.

If instead one insists that a nontrivial local algebra act faithfully in a vacuum representation satisfying the spectrum and additivity hypotheses of Reeh–Schlieder, the vacuum is separating. Then $(A-c_A I)\Omega=0$ implies $A=c_A I$, giving the same contradiction. The needed hypotheses and separating conclusion are stated in [Halvorson–Müger, Theorem 2.12](https://arxiv.org/abs/math-ph/0602036).

Adding an interaction made only of the $E_{ij}$ does not change this argument. It may produce number-conserving many-body scattering, but it does not create vacuum polarization or a nontrivial relativistic vacuum net.

This is **not** an objection to ordinary conserved charge. For a relativistic charge $Q_{\mathrm{charge}}$, neutral particle–antiparticle states also lie in $\ker Q_{\mathrm{charge}}$; that kernel is not just the vacuum. Nor does the proof cover a different representation, such as a filled reference state. Such a representation would require a fresh positive-energy continuum construction and a new identification of its physical charge sectors.

### Exact reduction of the $R=-I$ density algebra

A filled reference state does not by itself produce new statistics for the contracted-density algebra of $R=-I$. This can be seen without assuming an empty physical vacuum.

Let $\mathfrak h$ be the one-particle mode Hilbert space and let $V=\mathbb C^m$. The positive $R=-I$ Fock representation is

$$
\mathcal H_R
=\bigoplus_{N\geq0}
\left(\bigwedge\nolimits^N\mathfrak h\right)\otimes V^{\otimes N}.
$$

Let $f_i^\dagger,f_i$ be ordinary spinless-fermion operators on the exterior factor. On the auxiliary factor, let $\ell_a$ prepend the basis vector $e_a$:

$$
\ell_a(v_1\otimes\cdots\otimes v_N)
=e_a\otimes v_1\otimes\cdots\otimes v_N.
$$

Define, between adjacent particle-number spaces,

$$
a_{i,a}^\dagger=f_i^\dagger\otimes\ell_a,
\qquad
a_{i,a}=f_i\otimes\ell_a^\dagger.
$$

The identities $\ell_a^\dagger\ell_b=\delta_{ab}I$ and $\sum_a\ell_a\ell_a^\dagger=I$ on positive-length auxiliary strings, together with the ordinary CAR, give

$$
\begin{align}
a_{i,a}^\dagger a_{j,b}^\dagger
+ a_{j,a}^\dagger a_{i,b}^\dagger&=0,\\
a_{i,a}a_{j,b}^\dagger
+\delta_{ab}\sum_c a_{j,c}^\dagger a_{i,c}
&=\delta_{ij}\delta_{ab}I.
\end{align}
$$

These are precisely the $R=-I$ relations, with the annihilator equal to the physical adjoint. Creation words from the vacuum span the displayed Hilbert space, so this is the cyclic vacuum representation, not an extra quotient that removes auxiliary states.

On each $N$-particle space,

$$
\begin{align}
E_{ij}\big|_{\mathcal H_{R,N}}
&=(f_i^\dagger f_j)\big|_{\wedge^N\mathfrak h}
\otimes I_{V^{\otimes N}},\\
H_R(E)\big|_{\mathcal H_{R,N}}
&=H_F(f^\dagger f)\big|_{\wedge^N\mathfrak h}
\otimes I_{V^{\otimes N}}.
\end{align}
$$

The second equality holds for every polynomial in the contracted bilinears. In particular it includes the interacting Hamiltonian

$$
H_R
=\sum_{i,j}h_{ij}E_{ij}
+\frac12\sum_{i,j}g_{ij}E_{ii}E_{jj},
\qquad h^\dagger=h,\qquad g_{ij}=g_{ji}\in\mathbb R.
$$

The auxiliary multiplicity is $m^N$. At a finite mode cutoff, for example,

$$
\operatorname{Tr}_{\mathcal H_{R,N}}e^{-\beta H_R}
=m^N\operatorname{Tr}_{\wedge^N\mathfrak h}e^{-\beta H_F}.
$$

It is unobserved by the entire specified density algebra. As an algebra with these observables and dynamics, the construction is an ordinary number-conserving fermion system represented with multiplicity. A filled state restricts to a state on that ordinary observable algebra too. If a continuum limit is constructed from these algebras and corresponding states with the identification preserved, the density theory cannot acquire inequivalence merely from the auxiliary labels. This does not prove existence of that limit, and does not cover additional observables outside this algebra.

### Exposing the auxiliary color can spoil locality

The obvious enlargement is not local. For a matrix $M\in\operatorname{End}(V)$ define

$$
A_{ij}(M)=\sum_{a,b}a_{i,a}^\dagger M_{ab}a_{j,b}.
$$

The same representation gives, for $N\geq1$,

$$
A_{ij}(M)\big|_{\mathcal H_{R,N}}
=(f_i^\dagger f_j)\otimes M_1,
\qquad
M_1=M\otimes I_{V^{\otimes(N-1)}}.
$$

Every such bilinear acts on the **first auxiliary tensor factor**, regardless of the spatial mode. Therefore, for different spatial sites $i\neq j$,

$$
[A_{ii}(M),A_{jj}(K)]
=n_i n_j\otimes[M,K]_1,
\qquad n_i=f_i^\dagger f_i.
$$

Choose two occupied sites, $m=2$, $M=\sigma_x$, and $K=\sigma_z$. The commutator is nonzero because $[\sigma_x,\sigma_z]=-2i\sigma_y$. Thus these operators cannot all be declared local observables at their mode positions. The same algebraic test applies to two orthogonal modes with disjoint spatial supports.

This rules out a specific attempted repair: keeping the $R=-I$ Fock representation, retaining the density interactions, and simply promoting arbitrary flavor bilinears to local observables. It does not rule out a different representation with additional degrees of freedom and a separately proved local observable net.

### The interacting Luttinger proposal needs additional checks

[Salinel–Villegas, arXiv v5, §§III–IV](https://arxiv.org/abs/2508.20429v5) studies $R$-paraparticle density interactions around filled Fermi points. This motivates investigating a non-Fock physical reference state, but does not supply the requested relativistic counterexample. In its contact-interaction dispersion formulas, with $g>0$ and $v_F>0$,

$$
v_\rho^2-v_\sigma^2=\frac{2gv_F}{\pi}>0.
$$

The two gapless branches therefore do not share a single Lorentz speed in that parameterization. A proposed relativistic limit would have to resolve this, in addition to specifying the observable net.

The published low-temperature partition-function comparison is also insufficient to establish spectral equivalence. Taking its displayed Eqs. (30) and (33) at $n'=1$, with $y=e^{-\beta v_F\pi/L}$, gives

$$
Z_{\mathrm{PF}}(y)=1+4y^2+O(y^4),
\qquad
Z_B(y)=1+8y+24y^2+O(y^3).
$$

Both approach one as $y\to0$, but their first excitation terms differ. This is a check of the displayed expressions, not a derivation of the correct infinite-sea partition function. The exact density-algebra reduction above is independent of that comparison; the full flavor-current construction and continuum limit remain to be established before they can be used here.


## 5. The remaining reconstruction test

### Symmetric reconstruction

Suppose a proposed completion supplies a category $\mathcal C$ of physical charge intertwiners with all of the following:

1. a $C^*$ tensor structure, including the physical adjoint and positive norms;
2. a unitary natural symmetry, extending the particle exchange matrices to all objects;
3. conjugates with evaluation and coevaluation satisfying the conjugate equations;
4. direct sums, subobjects, and a simple tensor unit.

The symmetric $C^*$ reconstruction theorem then gives

$$
\mathcal C\simeq \operatorname{Rep}_{\mathrm{fin}}(G,k)
$$

for a compact group with its possible central Bose/Fermi grading. It does not require there to be only finitely many particle types. [Doplicher–Roberts](https://link.springer.com/article/10.1007/BF01388849); [Halvorson–Müger, §10.1](https://arxiv.org/abs/math-ph/0602036).

When $\mathcal C$ is the appropriate finite-statistics category of transportable localized sectors of a Haag-dual observable net satisfying the reconstruction hypotheses, the field-net theorem supplies the corresponding ordinary Bose/Fermi field system. The observable dynamics are retained; the reconstructed fields need not be free or admit a particular polynomial Lagrangian. [Doplicher–Roberts](https://link.springer.com/article/10.1007/BF02097680)

The categorical statement by itself does not prove an equivalence of arbitrary spacetime nets. Likewise, an invertible matrix called a pair tensor is not by itself proof of all four categorical conditions. Both identifications must be checked in the actual model.

### A finite $R$ cannot encode the full infinite-statistics exchange algebra

Let $\rho$ be an irreducible localized transportable sector in the symmetric DHR setting, and let

$$
\varepsilon_\rho^{(n)}:\mathbb C[S_n]\longrightarrow
\operatorname{End}(\rho^{\otimes n})
$$

denote its physical permutation representation. The DHR classification says that an infinite-statistics sector contains every irreducible representation of $S_n$, for every $n$. Consequently $\varepsilon_\rho^{(n)}$ is injective: the finite semisimple algebra $\mathbb C[S_n]$ is a direct sum of matrix blocks, and none of those blocks is killed. This is a statement about the group **algebra**, stronger than injectivity of the group homomorphism. See [Doplicher–Haag–Roberts](https://link.springer.com/article/10.1007/BF01877742) and the explicit summary in [Binnenhei, introduction, p. 8](https://arxiv.org/abs/math/9809035).

Suppose, in addition, that the proposed finite $R$ faithfully describes this full physical exchange algebra. Precisely, with $m=\dim V<\infty$, suppose there are injective algebra maps

$$
\begin{align}
j_n:\operatorname{im}\varepsilon_\rho^{(n)}
&\longrightarrow\operatorname{End}(V^{\otimes n}),\\
j_n\!\left(\varepsilon_\rho^{(n)}(\pi)\right)
&=\rho_R^{(n)}(\pi)
\qquad(\pi\in S_n).
\end{align}
$$

Then $\mathbb C[S_n]$ injects into $\operatorname{End}(V^{\otimes n})$, requiring

$$
n!\leq m^{2n}
\qquad\text{for every }n.
$$

This is impossible for any fixed $m$. For example,

$$
\frac{n!}{m^{2n}}
\geq
\left(\frac{\lfloor n/2\rfloor}{m^4}\right)^{\lfloor n/2\rfloor}
\frac{1}{m^{2(n-2\lfloor n/2\rfloor)}}
\longrightarrow\infty.
$$

Alternatively, the ratio of consecutive terms is $(n+1)/m^2$, which eventually exceeds two. The first violations of the dimension bound are $n=9,22,41$ for $m=2,3,4$, respectively. The group-algebra obstruction for finite-dimensional Yang–Baxter representations is also proved by [Lechner–Pennig–Wood, Proposition 2.4(ii)](https://arxiv.org/abs/1707.00196v3).

Thus an infinite-statistics DHR interpretation of a fixed finite $R$ must fail the stated faithful identification somewhere. It would require additional exchange channels, an unbounded internal space, or a different identification of physical sectors. This is not a theorem that every displayed finite $R$ already satisfies the DHR hypotheses. With those hypotheses and the faithful identification established, however, infinite statistics is unavailable; the sector is in the finite-statistics class to which symmetric reconstruction applies.

### A scalar physical statistics operator has dimension one

For an irreducible symmetric DHR sector, let $\Phi_\rho$ be a normalized positive left inverse and let $\lambda_\rho$ denote the statistics parameter. The classification gives

$$
\lambda_\rho=\Phi_\rho(\varepsilon_\rho),
\qquad
\lambda_\rho=\frac{\eta_\rho}{d(\rho)}
\quad(\lambda_\rho\neq0),
\qquad \eta_\rho\in\{+1,-1\}.
$$

If the **physical** statistics operator is $\varepsilon_\rho=\varepsilon I$, then unitality alone gives

$$
\lambda_\rho=\varepsilon\,\Phi_\rho(I)=\varepsilon,
\qquad d(\rho)=1.
$$

It follows that identifying the auxiliary $R=\pm I$ of §3 with an irreducible sector's actual statistics operator does not produce infinite statistics. Instead it gives ordinary Bose or Fermi sector statistics. The mismatch with the auxiliary $m>1$ no-pair result identifies a failure of the proposed tensor realization, not a physical DHR counterexample. The left-inverse definition and classification are stated together in [Binnenhei, introduction, p. 8](https://arxiv.org/abs/math/9809035).

### Infinite index alone does not establish inequivalence

There are local theories with infinite-dimensional sectors, so the preceding obstruction must not be promoted to a general ban on such sectors. A concrete example also shows why their existence alone would not finish the present problem.

Let $\mathcal A_{U(1)}$ be the chiral bosonic current net and let $\mathcal A_{\mathrm{Vir},1}$ be its stress-tensor subnet. Write $\alpha_q$ for the current sector of charge $q$. Its statistical dimension is one. For $q\notin 2^{-1/2}\mathbb Z$, its restriction is the irreducible Virasoro sector

$$
\begin{align}
\pi_h&=\left.\alpha_q\right|_{\mathcal A_{\mathrm{Vir},1}},
&h&=\frac{q^2}{2},\\
d_{\mathrm{Vir}}(\pi_h)&=\infty,
&h&\notin\{j^2:j\in\tfrac12\mathbb Z\}.
\end{align}
$$

For instance $q=2$ gives $h=2$. [Carpi, Lemma 4.3 and Theorem 4.4](https://arxiv.org/abs/math/0203027) establishes both the restriction identity and infinite statistical dimension.

This is a local chiral example, with its own braided sector setting. It is not being asserted to satisfy the symmetric hypotheses above, nor to supply an interacting massive $R$-paraparticle theory. Its relevant lesson is exact: an infinite-dimensional sector of a chosen observable subnet can still be realized by restricting an ordinary bosonic current theory. Statistical dimension depends on the observable net. To prove the requested inequivalence one must specify which net and sector data are preserved and exclude the relevant ordinary-field realization; reporting infinite index alone is insufficient.

### Infrared localization and reconstruction

Adding massless radiation does not establish an escape from reconstruction. It changes the localization problem, and the appropriate charge data must be constructed before applying a statistics theorem. In particular, none of the following results derives the matrix crossing assumption in the separate continuum calculation from observable locality alone.

In four-dimensional Minkowski spacetime, [Buchholz–Roberts, §4 and Theorem 4.9](https://arxiv.org/abs/1304.2794v4) restrict observables to a forward light cone $V_+$. Their **simple** charge classes admit morphisms

$$
\sigma_C:\mathcal A(V_+)\longrightarrow\mathcal R(V_+),
\qquad
\mathcal R(X)=\mathcal A(X)'',
$$

localized in every chosen hypercone $C$, with

$$
\begin{align}
\sigma_C|_{\mathcal A(C^c)}&=\mathrm{id},\\
\sigma_C\bigl(\mathcal A(C_1)\bigr)''
&=\mathcal R(C_1)
\qquad(C_1\supseteq C).
\end{align}
$$

They require transport between these realizations by unitaries in $\mathcal R(V_+)$. The equality of weak closures is the simplicity condition; it is not a consequence of an arbitrary finite internal label set. With their vacuum, Reeh–Schlieder and hypercone-duality assumptions, these classes have conjugates and Bose/Fermi signs. The theorem does not classify all infrared charge classes.

There is a distinct finite-statistics result. [Ciolli–Ruzzi–Vasselli, §§2 and 3.6](https://link.springer.com/article/10.1007/s00220-023-04919-y) assume a covariant local net with factorial global algebra, the Borchers property and relative Haag duality,

$$
\mathcal A(o)
=\mathcal A(K)''\cap\mathcal A(o^\perp)'.
$$

The localization poset $K$ must satisfy their geometric conditions K1–K7, including connected causal complements and simple connectedness. Four-dimensional hypercones are among the admissible choices. For the category of covariant charge-transport cocycles, **finite statistics is an additional selection condition**: a standard normalized positive left inverse must exist. Proposition 3.20 and Theorem 3.21 then give a symmetric $C^*$ tensor category with subobjects, finite sums and conjugates. Categorical reconstruction therefore applies to that selected category. Their §4 leaves its identification with Buchholz–Roberts charge classes open.

Thus a gapless candidate must specify its actual charge representation or transport cocycle and test these conditions. Failure of bounded localization alone, or the absence of a sharp one-particle mass, does not establish nonordinary statistics. Conversely, these theorems do not exclude every gapless completion: applicability, finite statistics and the relation between the two charge constructions remain separate questions.

### A non-Fock limit can still be an ordinary boson sector

A concrete infrared calculation tests another possible inequivalence argument. Take an ordinary bosonic one-particle space

$$
\mathfrak h=L^2(\mathbb R^3,d^3k),
\qquad
\langle f,h\rangle=\int d^3k\,\overline{f(k)}h(k),
$$

with inner product linear in its second argument. Fix $\Lambda>0$ and $A\in L^2(S^2)$ with $\int_{S^2}|A|^2d\Omega=1$. For $0<\epsilon<\Lambda$, define

$$
g_\epsilon(k)
=\frac{A(\widehat k)}{|k|^{3/2}}\,
\mathbf1_{\{\epsilon<|k|<\Lambda\}}.
$$

For real $q$, the coherent vector $W(qg_\epsilon)\Omega$ has

$$
\begin{align}
\|g_\epsilon\|^2&=\log\frac{\Lambda}{\epsilon},\\
\langle N\rangle_{q,\epsilon}
&=q^2\log\frac{\Lambda}{\epsilon},\\
\langle d\Gamma(|k|)\rangle_{q,\epsilon}
&=q^2(\Lambda-\epsilon).
\end{align}
$$

For $q\neq0$, its particle number diverges while its mean free energy stays finite. The overlap of two such vectors is

$$
\left|\langle W(qg_\epsilon)\Omega,
W(q'g_\epsilon)\Omega\rangle\right|
=\left(\frac{\epsilon}{\Lambda}\right)^{(q-q')^2/2}.
$$

The vanishing overlap alone is not the inequivalence proof. To obtain one, let $\mathcal D\subset\mathfrak h$ be the complex vector space of functions supported in some compact radial annulus away from $k=0$. Use the ordinary Weyl algebra over its underlying real symplectic space, with conventions

$$
\begin{align}
W(f)&=\exp\!\bigl(a^\dagger(f)-a(f)\bigr),\\
W(f)W(h)&=e^{-i\,\operatorname{Im}\langle f,h\rangle}W(f+h),\\
W(f)^*&=W(-f).
\end{align}
$$

The formal function $g(k)=A(\widehat k)|k|^{-3/2}\mathbf1_{\{0<|k|<\Lambda\}}$ is not in $\mathfrak h$, but its pairing with every $h\in\mathcal D$ exists. Define the real-linear functional and automorphism

$$
\begin{align}
\ell_q(h)&=2q\,\operatorname{Im}\langle g,h\rangle,\\
\alpha_q(W(h))&=e^{i\ell_q(h)}W(h).
\end{align}
$$

Real linearity preserves the Weyl product and adjoint, and $\alpha_{-q}$ is the inverse. For every fixed $h\in\mathcal D$ the expression equals
$W(qg_\epsilon)^*W(h)W(qg_\epsilon)$ once $\epsilon$ is sufficiently small. Hence the states converge pointwise on the Weyl algebra to the positive state

$$
\omega_q(W(h))
=e^{i\ell_q(h)}e^{-\|h\|^2/2}.
$$

This follows first on the linear span of Weyl generators, then on its norm completion because the states all have norm one.

For $q\neq0$, $\alpha_q$ is not unitarily implementable in the vacuum Fock representation. Choose real $c$ with $e^{2iqc}\neq1$ and set

$$
\begin{align}
\epsilon_n&=\Lambda e^{-n^2},&
h_n&=\frac{ic}{n^2}g_{\epsilon_n},\\
\|h_n\|^2&=\frac{c^2}{n^2}\longrightarrow0,&
\ell_q(h_n)&=2qc.
\end{align}
$$

In Fock space $W(h_n)\to I$ strongly, whereas
$\alpha_q(W(h_n))\to e^{2iqc}I$ strongly. A fixed unitary implementer would preserve the first strong limit, a contradiction. The same argument for $q-q'$ distinguishes the representations for different $q$. The vacuum representation of this dense Weyl test space is irreducible; composing it with $\alpha_q$ preserves irreducibility, so these inequivalent representations are disjoint.

Nevertheless, every $\omega_q$ is explicitly a state of the **ordinary canonical boson algebra**. Disjointness from its vacuum representation therefore does not prove absence of an ordinary-boson sector realization. The failure of the finite-cutoff dressing unitaries to converge cannot be used to make that stronger inference.

This calculation is a test of the inequivalence criterion, not a construction of the requested interacting theory. The momentum-annulus test space above has not been furnished with the required spacetime localization, covariant charged dynamics or an $R$-exchange interpretation. No claim that these coherent sectors constitute an interacting relativistic model is made.

### Exact bosonic realization of local spin constructions

There is an obstruction to the stronger requirement which does not use DHR–DR. **Every finite-dimensional local tensor-product model has an exact realization in a locally constrained system of ordinary canonical bosons.** It preserves the support of observables and interaction terms. This applies to an $R$-particle construction whenever a positive local spin realization has actually been supplied.

The hypothesis is a physical local Hilbert space

$$
\mathcal H_\Gamma=\bigotimes_{i\in\Gamma}\mathbb C^{d_i},
\qquad d_i<\infty,
$$

with observables on a set $X$ contained in
$\bigotimes_{i\in X}M_{d_i}(\mathbb C)$. The observable algebra may be a proper subalgebra. No commutation between observables and the nonobservable $R$ fields is required.

At site $i$, introduce $d_i$ ordinary boson species and their local number operator:

$$
\begin{align}
[b_{i\mu},b^\dagger_{j\nu}]&=\delta_{ij}\delta_{\mu\nu},
&
[b_{i\mu},b_{j\nu}]&=0,\\
N_i&=\sum_{\mu=1}^{d_i}b^\dagger_{i\mu}b_{i\mu},
&
P_i&=\mathbf1_{\{1\}}(N_i).
\end{align}
$$

Impose the local occupancy constraint $N_i=1$. The isometry

$$
W_i:\mathbb C^{d_i}\longrightarrow P_i\mathcal F_i,
\qquad
W_i|\mu\rangle=b^\dagger_{i\mu}|0\rangle
$$

is onto that constrained subspace. The matrix units have the exact realization

$$
\begin{align}
|\mu\rangle\langle\nu|
&\longmapsto
\widetilde E_i^{\mu\nu}
=P_i b^\dagger_{i\mu}b_{i\nu}P_i,\\
\widetilde E_i^{\mu\nu}\widetilde E_i^{\rho\sigma}
&=\delta_{\nu\rho}\widetilde E_i^{\mu\sigma},
&
(\widetilde E_i^{\mu\nu})^\dagger
&=\widetilde E_i^{\nu\mu},\\
\sum_\mu\widetilde E_i^{\mu\mu}&=P_i.
\end{align}
$$

The product identity follows directly from the canonical commutator. Its extra normally ordered term contains two annihilators at the same site and vanishes on $N_i=1$. The image unit is $P_i$, which acts as the identity in the constrained representation. This is the fundamental Schwinger-boson construction; [Batista–Ortiz, §V A 1](https://arxiv.org/abs/cond-mat/0207106) gives the canonical commutators, occupancy constraint and bilinear realization.

Expand a local operator in these matrix units:

$$
O_X
=\sum_{\boldsymbol\mu,\boldsymbol\nu}
(O_X)_{\boldsymbol\mu\boldsymbol\nu}
\bigotimes_{i\in X}|\mu_i\rangle\langle\nu_i|.
$$

Replace each factor by $\widetilde E_i^{\mu_i\nu_i}$ to define $\Phi_X(O_X)$. With $W_X=\bigotimes_{i\in X}W_i$,

$$
\begin{align}
\Phi_X(O_X)W_X&=W_XO_X,\\
\Phi_X(O_XO'_X)&=\Phi_X(O_X)\Phi_X(O'_X),\\
\Phi_X(O_X^\dagger)&=\Phi_X(O_X)^\dagger,
&
\|\Phi_X(O_X)\|&=\|O_X\|.
\end{align}
$$

These are compatible local algebra isomorphisms in the constrained representations. Inclusions of supports use the constrained identities $P_i$; no assertion is made that the corner unit $P_X$ is the identity on the unconstrained boson Fock space. Operators on disjoint sets still commute.

Now let $H_\Gamma=\sum_X h_X$ be any finite-volume self-adjoint local Hamiltonian. A bounded parent extension is

$$
\begin{align}
H^B_\Gamma
&=\sum_X\Phi_X(h_X)
+\kappa\sum_{i\in\Gamma}(I-P_i),
&
\kappa&\geq0,\\
H^B_\Gamma W_\Gamma&=W_\Gamma H_\Gamma,
&
[H^B_\Gamma,N_i]&=0.
\end{align}
$$

Each local term acts trivially outside its specified support. The projectors in $\Phi_X$ give a bounded extension outside the constrained sector; they are functions of ordinary boson number operators. Their use does not assert that the parent Hamiltonian is a polynomial of bounded degree in unconstrained fields.

The physical ground state can also be retained. Let $E_0$ be the ground energy of $H_\Gamma$ and set

$$
C_\Gamma=\max_{i\in\Gamma}\sum_{X\ni i}\|h_X\|.
$$

In a number sector with a set $S$ of sites violating $N_i=1$, the terms with $X\cap S\neq\varnothing$ vanish. The remaining Hamiltonian has ground energy at least $E_0-\sum_{X\cap S\neq\varnothing}\|h_X\|$: extend any state on the remaining sites by an arbitrary spin state on $S$, and bound the expectation of the missing terms by their norms. Consequently

$$
\inf\operatorname{spec}\!\left(H^B_\Gamma\big|_S\right)
\geq E_0+(\kappa-C_\Gamma)|S|.
$$

Choosing $\kappa>C_\Gamma$ makes the full bosonic ground space exactly the image of the physical ground space. The bound is uniform in volume when the indicated sum of interaction norms is uniformly bounded; it need not be uniform in a continuum cutoff.

Every target state maps into the constrained sector, and the intertwining preserves all time-dependent observable correlations:

$$
\langle\Omega,O_1(t_1)\cdots O_n(t_n)\Omega\rangle
=
\langle W_\Gamma\Omega,
\Phi(O_1)(t_1)\cdots\Phi(O_n)(t_n)
W_\Gamma\Omega\rangle.
$$

The statement holds for entangled states, interacting Hamiltonians, and observable subalgebras. It is a local realization, rather than an arbitrary identification of separable Hilbert spaces.

For infinite volume, use the compatible local constrained algebras and states. A global one-boson-per-site vector need not belong to the empty bosonic Fock representation, and is not assumed to do so. The corresponding state on the bosonic local algebras supplies its own representation.

There is a precise conditional continuum consequence. If a sequence of these regulated observable theories has a continuum limit, applying the exact local map at every cutoff gives identical regulated observable correlations and hence identical limits. When those correlations reconstruct a relativistic vacuum theory, the reconstructed observable nets and their dynamics agree. This excludes inequivalence under a comparison allowing ordinary canonical-boson regulators and their constrained observable limits.

The qualification matters: the individual auxiliary fields $b_{i\mu}$ need not have continuum limits as relativistic operator-valued distributions. The argument therefore does **not** prove that every continuum QFT embeds into a separately constructed relativistic parent theory with canonical elementary Bose/Fermi fields. It also does not prove the existence of any continuum limit.

This result disqualifies the explicit local-spin realizations of $R$ particles at the regulated level, independently of their exchange matrices. It does not apply automatically to an arbitrary nonunitary $R$ Fock metric: a positive physical local tensor-product realization is a hypothesis. The nonunitary density/pair candidate is already excluded by its separate ordinary-fermion realization.

### Strings, defects, and enlarged observables

[Wang–Hazzard, Supplementary §S6](https://www.nature.com/articles/s41586-024-08262-7) proposes introducing further local observables, motivated by its spin models, to connect sectors of the original observable algebra. It also points to string-localized charge creation and gauge coupling. Neither proposal by itself identifies a failed DHR hypothesis of a relativistic model.

The DHR localization condition is

$$
\pi\big|_{\mathcal A(O')}
\simeq
\pi_0\big|_{\mathcal A(O')}.
$$

It concerns the charged representation on the entire exterior algebra. It does not require a charged state to be created by an operator in the local **observable** algebra. Exhibiting a nonlocal formula for a charged field does not establish that this representation-equivalence condition fails. Nor are gauge theories categorically excluded from DHR analysis: compact gauge symmetry is itself an output of reconstruction. Long-range Gauss-law charges require a distinct localization analysis.

Enlarging the observable algebra also changes the sector question. Suppose $\mathcal A\subset\mathcal B$ act on a common Hilbert space, and $P_\alpha,P_\beta\in\mathcal A'$ are orthogonal projections separating two blocks. If an added observable $X\in\mathcal B$ has $P_\alpha X P_\beta\neq0$, then

$$
P_\alpha[P_\alpha,X]P_\beta
=P_\alpha X P_\beta\neq0.
$$

Thus $P_\alpha\notin\mathcal B'$. These two blocks no longer define the same superselection separation for $\mathcal B$. This does not prove that $\mathcal B$ has no sectors; it means that its sectors, localization, and exchange must be computed anew. An exchange matrix attached to the smaller algebra cannot simply be carried over as its physical statistics invariant.

Finally, an exact local ordinary-field realization preserves operational protocols as well as correlation functions. For a sequence of bounded measurement or control operators with branch product $K=K_n\cdots K_1$, let $\omega_B\circ\Phi=\omega$ on the constrained algebra. Then

$$
p=\omega(K^\dagger K)
=\omega_B\!\left(
\Phi(K_1)^\dagger\cdots\Phi(K_n)^\dagger
\Phi(K_n)\cdots\Phi(K_1)
\right).
$$

The same identity applies branch by branch to adaptive protocols. Support and dynamics are preserved by the preceding spin-to-boson map. Therefore a winning exchange protocol in an exactly embedded spin model cannot establish inequivalence to all ordinary bosonic realizations.

This is consistent with [Wang's defect analysis](https://arxiv.org/abs/2510.11818v2): its constructed class has finite-group gauge realizations and categorical Bose/Fermi charges. Its discussion of $R=-I$ beyond that class is conditional on a physical realization, and its relativistic protocol is posed as an open construction problem. These distinctions preserve the operational content of the proposal without treating it as the missing inequivalence proof.

### Candidate status

For the present candidates:

| Candidate | Local relativistic dynamics | Reconstruction issue | Inequivalence result |
|---|---|---|---|
| Cyclic $R=(T\otimes T^{-1})F$ with the construction in §2 | Supplied by interacting $P(\phi)_2$ and its invariant subnet | No obstruction supplied by this $R$ presentation | Explicitly ordinary; target fails |
| Completed cyclic $R$ with $S_g(\theta)=s_g(\theta)R$ | Positive relativistic Fock representation and nontrivial local algebras in sufficiently large double cones; see the separate continuum calculation | Crossing supplies conjugates; the constructed field net is Bose-local | Auxiliary scattering exchange does not establish new physical statistics; the invariant subnet has an ordinary field-net parent |
| $R=\pm I$, $m>1$, with a natural local pair map | No such pair map exists in the specified tensor realization | Conjugates fail there; scalar physical DHR exchange would instead have $d=1$ | No physical counterexample constructed |
| Closed finite $R$ block with nonordinary counting parameters, completed by extra antiparticles | No unitary involutive crossing-symmetric completion exists, including in an infinite ambient particle space | The assumptions force a finite completion and polynomial symmetric/alternating counts | Obstructs this completion route; does not construct a physical local sector outside it |
| Number-conserving vacuum Fock observable algebra alone | Vacuum net is scalar | Cannot supply the intended nontrivial vacuum net and its DHR sectors | No physical counterexample constructed |
| $R=-I$ density interactions around a different reference state | Density algebra and Hamiltonian reduce exactly to ordinary spinless fermions with multiplicity; continuum limit still needs construction | Auxiliary labels do not give new density-observable sectors; arbitrary flavor bilinears violate locality | This proposed repair does not supply inequivalence |
| Nonunitary rank-one $R$ family with density and pair observables | Positive finite-mode observable representation; any compatible continuum limit retains the derived algebraic identification | The minimal observable algebra and vacuum representation reduce to ordinary two-component fermions | No inequivalence in this construction. At $m=3$, all polynomial operators on up to three modes commuting with external fields are already in this algebra; see the separate pair-algebra proof |
| $R$ particles in a positive local spin model | Regulated local dynamics; a relativistic limit must be constructed separately | DHR–DR is unnecessary for the local canonical-boson embedding above | Exact ordinary-boson realization at every cutoff; the stated continuum conclusion requires compatible observable limits |
| Infinite-statistics symmetric DHR sector faithfully described by fixed finite $R$ | Incompatible exchange-algebra dimensions at large $n$ | Cannot evade finite-statistics reconstruction by this route | Ruled out under the stated identification |
| Infrared coherent dressing with a non-Fock limit | Explicit positive ordinary-CCR states; the required local interacting charged dynamics are not supplied by this calculation | Vacuum implementability can fail; simple or finite-statistics hypercone reconstruction requires a separate physical test | Disjoint representations of an ordinary boson algebra do not meet the stronger inequivalence requirement |
| Non-rigid or infinite-statistics local charge sector with different localization or additional exchange channels | Not constructed here | Must establish the physical failure and exclude ordinary-field restrictions | Still open in this investigation |

A candidate for the required complete-field comparison must first provide a nontrivial local vacuum net and an actual charged representation. One can then test localization and transportability, compute intrinsic statistical dimension or index, and determine whether conjugates exist. A nonlocal formula for a charged field is insufficient by itself.

The inequivalence proof must exclude every admissible complete Bose/Fermi field net, including a larger parent followed by observable restriction. None of the candidates above yet supplies that proof for a genuinely new interacting $R$ theory. Separate extensions of charged representations to a larger net do not establish vacuum creation by its local fields. The exterior-intertwiner proposition in the [complete-field calculation](Complete%20field%20nets%20and%20R-parastatistics.md) gives a sufficient obstruction once an actual physical charge representation is available.

Simply failing Haag duality is insufficient: one must inspect the appropriate dual completion. Simply failing double-cone localization is also insufficient: broader reconstruction results may apply. The massive spacelike-cone setting in $3+1$ dimensions requires a separate [Buchholz–Fredenhagen](https://link.springer.com/article/10.1007/BF01208370) check.

## 6. Verification

For the auxiliary construction in §1, Sage checked orthogonal projection and rank $\binom{r}{n}m^n$ at $(r,m,n)=(2,2,1),(2,2,2),(2,2,3),(3,2,2),(3,2,3),(2,3,2)$, where $r$ is the finite momentum-space dimension. It checked commutation with additive positive energies in these cases and with tensor powers of a nontrivial orthogonal one-particle transformation at $(m,n)=(2,2),(2,3),(3,2)$. The crossing defect passed at $m=2,3,4$. The group-average, spectrum and multiplicity arguments above are the general proofs; the finite calculations do not establish a new charged local theory.


**Verified:** xAct returned zero residuals for all three scalar Euler–Lagrange equations with the stated sign convention. Mathematica checked the quartic force, vertex normalization, and neutral four-point factor $1/3$. Sage verified involutivity, unitarity, and Yang–Baxter at $m=2,3,4$; the tensor-position intertwiner at $m=2,3,4$ and $n=2,3,4$; and the exchange, adjoint, and local-composite identities in the crossed-product algebra. The displayed algebraic derivations prove these identities for arbitrary $m,n$ in their stated domains.

Sage also found only the zero solution for the linear naturality system at $\dim V=2,3,4$ and $\dim W=1,2,3,4$. The independent-vector argument in §3 is the proof for every $m>1$; the finite checks are not its substitute.

Sage verified the first factorial-bound violations at $m=2,3,4$, and the identity Gram matrix of the regular character on $\mathbb C[S_4]$. The dimension argument is general and uses the DHR classification as a theorem input. The scalar-statistics conclusion uses unitality of the physical left inverse; a finite matrix trace is not substituted for that left inverse.

For $R=-I$, Sage checked all creation and mixed relations and density-algebra factorizations with two modes and $m=2,3$, and three modes and $m=2$. It also checked an interacting three-mode, two-particle Hamiltonian, including the fourth power of its ordinary fermion characteristic polynomial for $m=2$, and the nonzero different-site Pauli-matrix commutator. The exterior-space construction proves the identities at arbitrary particle number. Mathematica checked the displayed Luttinger partition-series coefficients and the positive difference of squared branch velocities. Terms omitted from the infinite products start beyond the displayed series orders.

Mathematica checked every matrix-unit product and adjoint identity in the canonical-boson embedding at local dimensions $2,3,5$, and an interacting two-site Hamiltonian intertwining with symbolic couplings. Local number conservation and different-site commutativity also passed. The checks used occupation at most two only to evaluate identities on the one-boson subspace; no exact canonical commutator at a finite Fock cutoff is asserted. The matrix-unit proof above establishes the embedding for arbitrary finite local dimensions.

Mathematica also checked the ground-energy bound in an interacting two-site example, the sector-mixing block identity for an arbitrary $3\times3$ matrix, and the sequential-operation probability identity for arbitrary $2\times2$ operators embedded isometrically in three dimensions. The operator-norm and homomorphism arguments supply the general statements.

For the infrared example, Mathematica checked the radial number and energy integrals, the coherent-overlap exponent, the sequence $\|h_n\|^2=c^2/n^2$ with $\ell_q(h_n)=2qc$, and the Weyl conjugation, product and adjoint phases. The strong-continuity argument proves nonimplementability; the ordinary-CCR realization is explicit.

**Assumptions:** The interacting starting theory and its weak-coupling scattering result are taken from constructive $P(\phi)_2$ theory. Coincident products are renormalized consistently under the finite permutation symmetry. The antiparticle obstruction uses the displayed concrete tensor realization and naturality condition. The vacuum-sector obstruction assumes a unique zero-particle vector and an observable algebra preserving total particle number. The filled-state density reduction concerns the algebra generated by contracted bilinears, with the stated identification preserved in any proposed limit. The finite-$R$ obstruction additionally assumes a faithful description of the full physical permutation algebra. Reconstruction is invoked only with the listed categorical and net hypotheses.

**Not verified:** A local relativistic interacting model satisfying the requested inequivalence; an infinite-statistics or non-rigid physical charge sector for a new net; or a classification of every possible local completion of a finite $R$. The bosonic regulator argument does not construct continuum elementary boson fields or prove an embedding theorem for all relativistic QFTs. The full constructive and reconstruction theorems cited above were not reproved. The $1+1$-dimensional example is not a nonperturbative $3+1$-dimensional construction.

Source inspection distinguished PDF extraction from rendered evidence. Wang–Hazzard's mixed-antiparticle definitions, Halvorson–Müger's Reeh–Schlieder statement, Lechner–Pennig–Wood's dimension argument, Binnenhei's statistics classification summary, Carpi's restriction and infinite-dimension results, and the cited Luttinger partition and dispersion formulas were checked on rendered pages. The constructive starting theory and scattering result were checked through the primary publication's abstract and indexed article text, respectively; the latter PDF could not be retrieved for visual inspection.

Batista–Ortiz's canonical boson relations, occupancy constraint and bilinear realization were checked on rendered PDF pages 12–13. The local matrix-unit and dynamics argument above was derived explicitly rather than inferred from a statement about arbitrary Hilbert-space encodings.

The proposed superselection and string-localization loopholes were checked on rendered Wang–Hazzard supplementary page 16 (PDF page 28). Wang's conditional beyond-fusion-category example and open relativistic protocol were checked on rendered PDF page 33. The corrections above concern what those statements establish, not a purported construction of the missing continuum theory.

Buchholz–Roberts's simple-charge criterion and Theorem 4.9 were checked on rendered PDF pages 13 and 21. Ciolli–Ruzzi–Vasselli's finite-statistics definition, Proposition 3.20, Theorem 3.21 and stated comparison gap were checked on rendered PDF pages 23–24; their geometric and net hypotheses were read in §2. These are conditional theorem inputs, not an independent verification of their hypotheses in a new model.
