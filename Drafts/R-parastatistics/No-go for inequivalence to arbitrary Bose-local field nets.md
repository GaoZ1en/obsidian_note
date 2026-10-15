# No-go for inequivalence to arbitrary Bose-local field nets

## Result

**Withdrawn as a solution to the construction problem.** The required parent is a complete Bose/Fermi field net whose local fields create every physical charge sector from the vacuum. The identity-net and tensor-product arguments below do not construct such a parent. Treating the weaker representation-level observation as completion of the requested no-go was incorrect.

The calculation below is retained only to identify the tautology and its missing completeness condition. It uses a weaker comparison class in which any Bose-local observable net counts as a field net and charged sectors may remain separate representations. It does not prove the no-go now required, forbid interacting $R$-parastatistics, or supply a complete charged field algebra.

The replacement [complete-field calculation](Complete%20field%20nets%20and%20R-parastatistics.md) gives the required local-creation definition and an exterior-disjointness obstruction to such parents. Its kink example does not solve the separate $R$ construction problem.

## Definitions of the weaker comparison

Let $O\mapsto\mathcal A(O)$ be a unital net of observable $C^*$-algebras on Minkowski spacetime, with isotony and

$$
[\mathcal A(O_1),\mathcal A(O_2)]=0
\qquad (O_1\subset O_2').
$$

Let $\alpha_g$ be its Poincaré action. A positive covariant representation is $(\pi_s,\mathcal H_s,U_s)$, with

$$
U_s(g)\pi_s(A)U_s(g)^{-1}
=\pi_s(\alpha_g(A)).
$$

The index $s$ may include the vacuum representation and any physical charged representations in the proposed model. Keep any specified vacuum, spectrum condition, dynamics, charge intertwiners, and exchange data as part of that model. They are not inferred from the three minimal hypotheses.

For the weaker comparison previously used, an ordinary field net $\mathcal F$ has a $\mathbb Z_2$ grading and satisfies

$$
F_\epsilon G_{\epsilon'}
=(-1)^{\epsilon\epsilon'}G_{\epsilon'}F_\epsilon,
\qquad
F_\epsilon\in\mathcal F_\epsilon(O_1),\quad
G_{\epsilon'}\in\mathcal F_{\epsilon'}(O_2),
\quad O_1\subset O_2',
$$

where $\epsilon,\epsilon'\in\{0,1\}$. A purely bosonic net is permitted: $\mathcal F_0=\mathcal F$ and $\mathcal F_1=\{0\}$. This definition imposes ordinary spacelike commutation, rather than a canonical equal-time CCR/CAR presentation.

A sector is understood here as a representation of the observable net. It need not be a subspace reached from the vacuum by local operators of a chosen field algebra. Requiring the latter for every charge is a stronger reconstruction requirement, discussed below.

## Weak observation and proof

**Weak observation.** Every positive, covariant, spacelike-commuting observable theory, together with all its given sector representations, has a realization in the rejected comparison class above. Consequently no such theory can be inequivalent to every member of that weaker class, including when its charged presentation uses an $R$ matrix.

**Proof.** Choose

$$
\begin{align}
\mathcal F(O)&=\mathcal A(O),&
\iota_O(A)&=A,\\
\gamma&=\mathrm{id},&
\widetilde\alpha_g&=\alpha_g,\\
\widetilde\pi_s&=\pi_s,&
\widetilde U_s(g)&=U_s(g).
\end{align}
$$

The grading $\gamma=\mathrm{id}$ makes every field operator bosonic. Observable locality is exactly the required Bose spacelike commutation. The maps $\iota_O$ preserve products, adjoints, norms, units, region inclusions, states and covariance because they are identities.

The vacuum vector, Hamiltonian and any scattering construction remain those of the original model. No interaction is removed. Every charged representation remains the identical representation of the identical net. In particular,

$$
\operatorname{Hom}_{\mathcal F}(\pi_s,\pi_t)
=
\operatorname{Hom}_{\mathcal A}(\pi_s,\pi_t).
$$

If fusion and exchange have been defined intrinsically for those sectors, their operators and relations are unchanged. A proposed physical $R$ invariant therefore has the same value in this ordinary Bose-local presentation; it cannot distinguish the model from every allowed ordinary net. This proves the assertion. $\square$

The proof does not use a mass gap, finite-dimensional particle space, DHR localization, transportability, Haag duality, property B, conjugates, a compact gauge group, crossing, or asymptotic completeness. It also does not derive these properties. The comparison class is broad enough that locality itself gives the realization.

## An incomplete tensor-product extension

The result does not depend on permitting equality between the parent and the observable net. Let $\mathcal B$ be the local net of an ordinary free real scalar field of mass $M>0$ in the same spacetime dimension. Use its vacuum representation $(\pi_B,\mathcal H_B,U_B,\Omega_B)$ and form the spatial tensor-product net

$$
\mathcal F(O)=\mathcal A(O)\otimes_{\min}\mathcal B(O),
\qquad
\iota_O(A)=A\otimes I.
$$

Work with the local $C^*$-algebras; weak closures can be taken in a specified locally normal representation. There is no need to assume that every charged representation extends normally to a previously chosen weak closure.

The inclusion is faithful and local:

$$
\begin{align}
\iota(AA')&=\iota(A)\iota(A'),&
\iota(A^\dagger)&=\iota(A)^\dagger,&
\|\iota(A)\|&=\|A\|.
\end{align}
$$

For operators with spacelike-separated supports,

$$
\begin{align}
[A_1\otimes B_1,A_2\otimes B_2]
&=[A_1,A_2]\otimes B_1B_2\\
&\quad+A_2A_1\otimes[B_1,B_2]\\
&=0.
\end{align}
$$

Thus the parent is itself Bose-local. Products and norm limits preserve this commutativity. Since $\mathcal B(O)$ is nontrivial, the inclusion is proper. This is a support-preserving inclusion of nets, not an arbitrary encoding into an oscillator Hilbert space.

For every original sector define the parent representation

$$
\begin{align}
\widetilde\pi_s&=\pi_s\otimes\pi_B,\\
\widetilde U_s(g)&=U_s(g)\otimes U_B(g),\\
V_s:\mathcal H_s&\longrightarrow\mathcal H_s\otimes\mathcal H_B,
&
V_s\xi&=\xi\otimes\Omega_B.
\end{align}
$$

The invariant scalar vacuum gives the exact intertwinings

$$
\begin{align}
V_s^\dagger V_s&=I,\\
\widetilde\pi_s(\iota(A))V_s&=V_s\pi_s(A),\\
\widetilde U_s(g)V_s&=V_sU_s(g).
\end{align}
$$

If $\pi_s$ is irreducible, so is $\widetilde\pi_s$: the free scalar vacuum representation is irreducible, so an operator commuting with the parent representation must first have the form $T\otimes I$ and then have scalar $T$. Thus an irreducible original sector also lifts to an irreducible sector of the parent.

Therefore the restriction to the observable subnet contains the original sector with exactly the original covariance. The range of $V_s$ is reducing for $\iota(\mathcal A)$ and invariant under spacetime evolution. If $U_s$ has forward spectrum, so does $\widetilde U_s$, because its translation momenta are sums of momenta in the forward cone.

For every finite sequence of observables,

$$
V_s^\dagger
\widetilde\pi_s\!\left(\iota(A_1)\cdots\iota(A_n)\right)
V_s
=
\pi_s(A_1)\cdots\pi_s(A_n).
$$

The same equality holds with spacetime-translated observables. All original observable correlations and interaction diagnostics are retained. When the dynamics is generated by $H_s$, the parent generator is $H_s\otimes I+I\otimes H_B$ and its restriction to $V_s\mathcal H_s$ is $H_s$.

This tensor-product construction uses a freely chosen additional theory, not an additional hypothesis on $\mathcal A$. It supplies a proper extension but does not supply canonical generators for the $\mathcal A$ factor or establish local creation of its charges.

## Relation to DHR–DR

The conclusion concerns only the weaker representation-level comparison. It gives no obstruction to the required inequivalence from complete field nets.

For example, $\mathcal F=\mathcal A$ need not contain local charged operators that connect its vacuum to every charged representation. The charge representations remain sectors of $\mathcal F$; their appearance as separate representations does not imply that the field net is complete. In the proper parent above, $V_s\mathcal H_s$ is a subrepresentation of the restricted parent representation, not a claim that every $s$ occurs in the parent vacuum representation.

This distinction is explicit in [Halvorson–Müger, Definition 9.17, Definition 10.1 and §10.6](https://arxiv.org/abs/math-ph/0602036): normal field commutation and completeness are separate requirements, and §10.6 considers $\mathcal F=\mathcal A$ with trivial gauge group while retaining nontrivial sectors.

The weak representation-level observation does not test a failed DHR–DR assumption. Even if a proposed model violates a reconstruction hypothesis, its local observable net still gives the tautological realization above. This does not show that a complete normal charged-field extension exists when reconstruction hypotheses fail and does not settle the required comparison.

The required comparison includes local parent fields creating every physical charge. That conclusion does not follow from the identity or tensor-product construction.

## Verification

**Verified:** The identity-net observation preserves the specified representation-level data exactly; it supplies no charged creation operators. Mathematica checked the tensor-product homomorphism, adjoint, commutator decomposition, sector isometry, observable intertwining, covariance intertwining and observable-product identities with arbitrary complex $2\times2$ matrices. The displayed tensor-product arguments prove the identities for the general Hilbert spaces; the finite checks are algebraic checks, not a substitute for that proof. The normal-commutation and completeness definitions and the $\mathcal F=\mathcal A$ example were read in the source and confirmed on rendered PDF pages 91 and 114.

**Assumptions of the weaker observation:** Ordinary fields were taken to mean any graded-local field net, without completeness. Sectors and realization through observable restrictions have the representation-theoretic meaning stated above. Positivity, covariance and any additional physical data are those of the original model and are preserved. The optional proper extension uses the standard massive free scalar net.

**Not proved or claimed:** Canonical-field reconstruction; completeness of a normal charged-field extension; exclusion of nontrivial $R$ exchange presentations; a classification of all physical charge statistics; or a new interacting model inequivalent under a stricter comparison class.
