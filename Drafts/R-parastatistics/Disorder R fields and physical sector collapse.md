# Disorder R fields and physical sector collapse

## Result

**The massive split-disorder construction gives an interacting relativistic field algebra with genuine quantum-double exchange relations, but it fails the required physical-sector and no-complete-parent tests.** On its original Hilbert space, all observable sectors it supplies are ordinary electric sectors already created by the local Bose parent. Passing to the canonical quantum-double-invariant state does not repair this: its observable representation is exactly a finite amplification of the old one.

For the eight-element group $D_8$, the two reflection labels with $\chi(r^2)=-1$ and $\chi(s)=\pm1$ both give the same ordinary two-dimensional electric sector, despite their different formal exchange matrices. An explicit covariant unitary intertwiner proves the collapse; the argument is not merely a comparison of permutation characters.

This excludes a concrete direct field-algebra route, including its invariant-state repair. It is not a universal no-go for the original problem. The comparison parent is the one defined in [Complete field nets and R-parastatistics](</Users/koishi/Documents/Note/Drafts/R-parastatistics/Complete field nets and R-parastatistics.md#L11-L48>).

## 1. A genuinely interacting input

Work in $1+1$ dimensions, with metric $(+,-)$ and $c=\hbar=1$. Let $m>0$ and take the scalar scattering function

$$
S_\kappa(\theta)=\frac{\sinh\theta-i\kappa}{\sinh\theta+i\kappa},
\qquad 0<\kappa<1.
\tag{1.1}
$$

For example, $\kappa=1/2$ fixes a concrete member. This is a regular scattering function, $S_\kappa(0)=-1$, and it is nonconstant. The positive-energy factorizing construction gives a local Bose net $\mathcal F_\kappa$ with unique vacuum, mass $m$, wedge split property, and nontrivial scattering. The scattering operator on symmetric two-particle wavefunctions multiplies by $S_\kappa(|\theta_1-\theta_2|)$; the many-particle formula is the product over pairs.

These are established theorem inputs, not a new perturbative existence claim: [Lechner, math-ph/0601022v3](https://arxiv.org/abs/math-ph/0601022v3), Theorem 5.8, PDF/printed p.30, gives modular nuclearity at every positive splitting distance and local Reeh–Schlieder; Proposition 6.2 and Theorem 6.3, pp.34–35, give asymptotic completeness and the prescribed scattering. The asymptotic Fock space is bosonic. The construction's wedge duality and wedge-intersection definition give the Haag-dual local input used below. This is a scattering-defined theory; no identification with a particular renormalized Lagrangian is needed.

The unitary $Z=(-1)^N$ changes the sign of the generating wedge field and preserves the wedge algebras and their local intersections. It commutes with the Poincaré representation and fixes the vacuum. Form two identical copies:

$$
\mathcal F(O)=\mathcal F_\kappa(O)\,\overline\otimes\,
\mathcal F_\kappa(O),\qquad
\mathcal H=\mathcal H_\kappa\otimes\mathcal H_\kappa.
\tag{1.2}
$$

Let $T$ exchange the copies and set

$$
V(s)=1\otimes Z,\qquad V(r)=T(1\otimes Z).
\tag{1.3}
$$

Then $r^4=s^2=e$, $srs=r^{-1}$, and the action is faithful. Throughout, $D_8$ means this group of **order eight**, not order sixteen. On the two-color one-particle space,

$$
r_E=\begin{pmatrix}0&-1\\1&0\end{pmatrix},\qquad
s_E=\begin{pmatrix}1&0\\0&-1\end{pmatrix}.
\tag{1.4}
$$

The one-particle multiplet is the ordinary electric irrep $E$. Same-copy scattering is (1.1); cross-copy scattering is trivial. Thus the input contains an actual interaction involving particles in $E$, rather than merely a nonlinear classical potential.

Write $U(p)$ for spacetime covariance and $V(g)$ for the internal group, so $[U(p),V(g)]=0$. The observable net and its vacuum space are

$$
\mathcal A(O)=\mathcal F(O)^G,
\qquad \mathcal H_0=\mathcal H^G
=\overline{\mathcal A(O)\Omega}.
\tag{1.5}
$$

For the general statements below it suffices to assume a local, Haag-dual, irreducible Bose field net with wedge split, Reeh–Schlieder, and faithful unbroken finite $G$. The failure mechanism does not depend on the particular scalar scattering function.

## 2. Direct disorder-field algebra and R exchange

For a double cone $O$, denote its left and right spacelike exterior wedges by $W_{LL}^O,W_{RR}^O$. A gauge-equivariant split unitary $W_O:\mathcal H\to\mathcal H\otimes\mathcal H$ supplies

$$
u_g^O=W_O^*(V(g)\otimes1)W_O.
\tag{2.1}
$$

Here $u_g^O$ implements the global $g$ action on $\mathcal F(W_{LL}^O)$ and the identity on $\mathcal F(W_{RR}^O)$. It is not an ordinary bounded-local field of $\mathcal F(O)$. Define

$$
\widehat{\mathcal F}(O)=\mathcal F(O)\vee\{u_g^O:g\in G\},
\tag{2.2}
$$

where $\vee$ denotes the von Neumann join on the **original** $\mathcal H$. Under the stated hypotheses it is an isotonic, Poincaré-covariant nonlocal field net, relatively local to $\mathcal A$. Positivity and the spectrum condition are inherited from $(\mathcal H,U,\Omega)$.

For finite $G$, the local crossed-product decomposition is unique. Suppressing $O$ and writing $\beta_g=\operatorname{Ad}u_g$,

$$
\begin{aligned}
X&=\sum_g F_gu_g,\\
(Fu_g)(Ku_h)&=F\beta_g(K)u_{gh},\\
(Fu_g)^*&=\beta_{g^{-1}}(F^*)u_{g^{-1}},\\
\gamma_{\delta_h}(X)&=F_hu_h.
\end{aligned}
\tag{2.3}
$$

The group action sends grade $g$ to grade $hgh^{-1}$. Together these operations give the canonical $D(G)$ action. Inclusions of regions preserve the grades: disorder implementers for the same $g$ differ by an ordinary field in a common larger region. Thus the grading and its conditional expectation extend to the norm-closed quasilocal algebra.

Use the exchange convention

$$
\mathcal R_0=\sum_{g\in G}\delta_g\otimes g,
\qquad R=c=P\mathcal R_0,
\qquad c(v_g\otimes w_h)=g w_h\otimes v_g.
\tag{2.4}
$$

Müger's symbol $R$ in his equation (4.34) is the **unchecked** $\mathcal R_0$ here. His Proposition 4.11 proves the operator exchange relation for $O_2$ to the left of $O_1$:

$$
\psi_i^1\psi_j^2
=\sum_{i'j'}\psi_{j'}^2\psi_{i'}^1
(D^1_{i'i}\otimes D^2_{j'j})(\mathcal R_0).
\tag{2.5}
$$

These are genuine field relations, not an auxiliary matrix attached to a spectator. Nevertheless they do not by themselves identify the physical particle statistics.

Two invariant nets must be distinguished:

$$
\widehat{\mathcal F}(O)^{D(G)}=\mathcal A(O),
\qquad
\widehat{\mathcal A}(O):=\widehat{\mathcal F}(O)^G.
\tag{2.6}
$$

The second is a larger local net. On $\mathcal H_0$ it is the Haag-dual completion of $\mathcal A$, not the original net. Replacing $\mathcal A$ by this completion changes the observable comparison.

Source: [Müger, hep-th/9606175v3](https://arxiv.org/abs/hep-th/9606175v3), Definition 3.1 and Propositions 3.2–3.3, PDF/printed p.11; dual-completion analysis pp.12–13; Proposition 4.11, p.27.

## 3. Why the original vacuum does not carry full D(G) charges

There are two direct obstructions.

First, suppose the grading were globally implemented by projections $P_k$ on the original $\mathcal H$. Neutral fields have grade $e$, so Hopf covariance gives

$$
P_kF=FP_k\quad(F\in\mathcal F),\qquad
P_ku_h=u_hP_{h^{-1}k}.
\tag{3.1}
$$

Irreducibility $\mathcal F''=B(\mathcal H)$ makes every $P_k$ scalar. The second identity forces all these scalars equal, incompatible with orthogonal projections summing to one when $|G|>1$. Region-dependent local grading projectors do not evade this global argument.

Second, invariance of the vacuum state under $\operatorname{Fun}(G)\subset D(G)$ would imply, for $g\ne e$,

$$
\langle\Omega,F u_g^O\Omega\rangle=0
\quad\text{for every }F\in\mathcal F(O).
\tag{3.2}
$$

Reeh–Schlieder supplies $F_n^*\Omega\to u_g^O\Omega$, and then the left side tends to $1$, a contradiction. No assumption about the bare expectation $\langle\Omega,u_g^O\Omega\rangle$ is necessary.

In particular, the split unitary must not be assumed to send the actual vacuum to a product vacuum. If $\Psi=W_O\Omega$, the bare expectation is $\langle\Psi,(V(g)\otimes1)\Psi\rangle$, not a prescribed counit value.

This recovers the spontaneous breakdown stated in [Müger v3, §4.3, p.23](https://arxiv.org/pdf/hep-th/9606175v3): only the group-algebra part is globally implemented in this representation.

## 4. Explicit collapse of the proposed charged representations

Let $\psi_i\in\widehat{\mathcal F}(O)$ be a complete Cuntz multiplet for a $D(G)$ representation $D$:

$$
\psi_i^*\psi_j=\delta_{ij}1,\qquad
\sum_i\psi_i\psi_i^*=1,
\qquad
\alpha_g(\psi_i)=\sum_j\psi_j d_{ji}(g),
\quad d=D|_G.
\tag{4.1}
$$

The full local group spectrum supplies an ordinary multiplet $\phi_i\in\mathcal F(O)$ with the same matrices $d(g)$. Define, on observables,

$$
\rho_\psi(a)=\sum_i\psi_i a\psi_i^*,\qquad
\rho_\phi(a)=\sum_i\phi_i a\phi_i^*,\qquad
V_{\phi\psi}=\sum_i\phi_i\psi_i^*.
\tag{4.2}
$$

The Cuntz relations and equal transformation laws give

$$
V_{\phi\psi}^*V_{\phi\psi}
=V_{\phi\psi}V_{\phi\psi}^*=1,
\qquad
V_{\phi\psi}\in\widehat{\mathcal A}(O),
\qquad
V_{\phi\psi}\rho_\psi(a)V_{\phi\psi}^*=\rho_\phi(a).
\tag{4.3}
$$

Because $V_{\phi\psi}$ commutes with $G$, it restricts to a unitary on $\mathcal H_0$. Hence $\pi_0\rho_\psi$ is an ordinary electric representation, or a direct sum of them if $d$ is reducible.

This equivalence also preserves positive-energy covariance. Set

$$
U_\psi(p)=\sum_i\psi_i U(p)\psi_i^*,
\qquad
\Gamma_\psi(\xi\otimes e_i)=\psi_i\xi.
\tag{4.4}
$$

Then $\Gamma_\psi$ is unitary and

$$
\begin{aligned}
\Gamma_\psi^*\rho_\psi(a)\Gamma_\psi&=a\otimes1,\\
\Gamma_\psi^*U_\psi(p)\Gamma_\psi&=U(p)\otimes1,\\
\Gamma_\psi^*V(g)\Gamma_\psi&=V(g)\otimes d(g).
\end{aligned}
\tag{4.5}
$$

Thus $U_\psi$ is a strongly continuous positive-energy covariant representation for $\rho_\psi$, preserving $\mathcal H_0$. The same construction for $\phi$ gives

$$
V_{\phi\psi}U_\psi(p)V_{\phi\psi}^*=U_\phi(p).
\tag{4.6}
$$

These are the transported covariant sector realizations, not an assertion that $U_\psi$ equals the original $U$ on $\mathcal H_0$.

More explicitly, decompose the original field Hilbert space as

$$
\mathcal H=\bigoplus_\lambda\mathcal H_\lambda\otimes V_\lambda,
\qquad
V(g)=\bigoplus_\lambda1\otimes d_\lambda(g).
\tag{4.7}
$$

Since $\Gamma_\psi^*\mathcal H_0=(\mathcal H\otimes V_d)^G$,

$$
(\pi_0\rho_\psi,U_\psi)
\simeq
\bigoplus_\lambda
\dim\operatorname{Hom}_G(1,V_\lambda\otimes V_d)
\,(\pi_\lambda,U_\lambda).
\tag{4.8}
$$

This displays the possible contragredient convention explicitly. For the real $D_8$ irrep $E$ there is no distinction.

Crucially, $V_{\phi\psi}$ need not belong to $\mathcal A$. Hilbert-space equivalence of physical observable representations can therefore identify labels which the restricted algebraic morphism category treats as different. Ignoring these intertwiners is exactly what would turn formal quantum-double exchange into a false new physical charge invariant.

There is also a direct complete-parent proof. Finite group averaging and $\mathcal F''=B(\mathcal H)$ imply

$$
\mathcal A''=V(G)'.
\tag{4.9}
$$

Thus the irreducible observable types occurring in the original $\mathcal H$ are precisely the electric multiplicity sectors in (4.7). Every disorder-generated vector is still in this $\mathcal H$. Reeh–Schlieder for $\mathcal F(O)$ makes $\mathcal F(O)\Omega$ dense, so bounded-local ordinary Bose fields create every supplied sector from the same vacuum. This is the required completeness, not the withdrawn identity-net shortcut.

This argument does not classify all conceivable representations of the abstract observable algebra; it classifies the ones supplied by this construction.

## 5. The target D8 reflection fields

Take

$$
C=\{s,r^2s\},\qquad C_G(s)=\{e,r^2,s,r^2s\}\cong V_4,
\qquad \chi(s)=\epsilon,\quad\chi(r^2)=-1.
\tag{5.1}
$$

In coset basis $e,r$, the restriction of the quantum-double irrep is

$$
r_D=\begin{pmatrix}0&-1\\1&0\end{pmatrix},\qquad
s_D=\operatorname{diag}(\epsilon,-\epsilon).
\tag{5.2}
$$

Both signs have character $2$ at $e$, $-2$ at $r^2$, and zero elsewhere. The character norm is one. Therefore

$$
\operatorname{Res}_{G}(C,\chi_+)
\simeq\operatorname{Res}_{G}(C,\chi_-)
\simeq E,
\qquad
\pi_0\rho_+\simeq\pi_E\simeq\pi_0\rho_-.
\tag{5.3}
$$

The formal checked exchange is nevertheless

$$
c_\epsilon=
\begin{pmatrix}
\epsilon&0&0&0\\
0&0&-\epsilon&0\\
0&-\epsilon&0&0\\
0&0&0&\epsilon
\end{pmatrix},
\qquad c_\epsilon^2=1,
\qquad \operatorname{Tr}c_\epsilon=2\epsilon.
\tag{5.4}
$$

It is unitary and satisfies the braid Yang–Baxter equation. These algebraic properties are not in dispute.

The loss of a physical exchange interpretation can be tested exactly. With $Q=r_D$, the two restricted $G$ representations are intertwined by $Q$, but

$$
\Delta=c_-(Q\otimes Q)-(Q\otimes Q)c_+\ne0,
\qquad
\operatorname{Tr}(\Delta^*\Delta)=16.
\tag{5.5}
$$

Thus the formal braiding does not descend naturally under the physical identification (5.3). In particular, two opposite formal exchange traces cannot be assigned as an invariant to the same electric sector. The intertwiner (4.3) for these reflection multiplets has only grades in $C^{-1}=C$, hence no grade-$e$ component: it lies in $\widehat{\mathcal A}(O)$ but not $\mathcal A\subset\mathcal F$.

The same issue is visible already for $G=\mathbb Z_2$. Its disorder unitary $u$ is $G$-even and preserves $\mathcal H_0$, so

$$
\pi_0\circ\operatorname{Ad}u
=\operatorname{Ad}(u|_{\mathcal H_0})\circ\pi_0.
\tag{5.6}
$$

The formal magnetic label is the actual vacuum representation. A formal electric–magnetic sign cannot be its physical monodromy with the tensor unit.

## 6. The invariant-vacuum repair is exactly computable

One might try to restore full $D(G)$ symmetry by changing the state rather than using the original $\Omega$. This possibility can be settled on the same field algebra.

Fix a reference disorder family $u_g$ and let

$$
\mathcal B=\overline{\operatorname{span}\{Fu_g:F\in\mathcal F,g\in G\}}^{\|\cdot\|},
\qquad
E(Fu_g)=\delta_{g,e}F.
\tag{6.1}
$$

Assume the faithful graded crossed-product structure above; $E$ is its canonical conditional expectation. Write $\omega_0(F)=\langle\Omega,F\Omega\rangle$ and take

$$
\widehat\omega=\omega_0\circ E.
\tag{6.2}
$$

This is positive. For homogeneous elements its GNS inner product is

$$
\langle[Fu_g],[Ku_h]\rangle_{\widehat\omega}
=\delta_{g,h}\langle Fu_g\Omega,Ku_g\Omega\rangle.
\tag{6.3}
$$

Every nonzero $u_g\Omega$ is cyclic for the irreducibly represented global $\mathcal F$. Therefore

$$
\mathsf T[Fu_g]=Fu_g\Omega\otimes|g\rangle
\tag{6.4}
$$

extends to a unitary onto $\mathcal H\otimes\ell^2(G)$. With $L_h|g\rangle=|hg\rangle$,

$$
\begin{aligned}
\widehat\Omega&=\Omega\otimes|e\rangle,\\
\widehat\pi(F)&=F\otimes1,\\
\widehat\pi(u_h)&=u_h\otimes L_h,\\
\widehat\pi(A)&=A\otimes1\quad(A\in\mathcal A).
\end{aligned}
\tag{6.5}
$$

The Poincaré action preserves every grade and the original vacuum. Consequently its canonical GNS implementation is exactly

$$
\widehat U(p)=U(p)\otimes1.
\tag{6.6}
$$

Positive energy and all mass-shell supports are unchanged. Only multiplicities increase. If the original Poincaré-invariant subspace is $\mathbb C\Omega$, the repaired one is

$$
\mathbb C\Omega\otimes\ell^2(G),
\qquad \dim\mathcal H_{\rm inv}=|G|.
\tag{6.7}
$$

Each of these vacuum vectors restricts to exactly the same observable state. Distinguish the full restriction $\widehat\pi|_{\mathcal A}$ from the GNS representation of the restricted state: the latter is just the original observable vacuum space $\mathcal H_0$, realized as $\mathcal H_0\otimes|e\rangle$.

There really are new representations of the *extension algebra*, but this does not mean new observable charges:

$$
\widehat\pi(\mathcal B)''
=B(\mathcal H)\,\overline\otimes\,\operatorname{VN}_L(G),
\qquad
\widehat\pi(\mathcal B)'=1\otimes\operatorname{VN}_R(G).
\tag{6.8}
$$

Fourier decomposition of the regular representation gives irreducible extension representations

$$
\pi_\lambda(F)=F\otimes1_{d_\lambda},\qquad
\pi_\lambda(u_g)=u_g\otimes d_\lambda(g).
\tag{6.9}
$$

All restrict to amplifications of the same old $\mathcal A$ representation. In particular the repaired state is not pure for nontrivial $G$, although its observable vacuum marginal is unchanged. Its restriction to the original local observable algebras is normal; global inequivalence as a $\mathcal B$ representation is not an observable magnetic sector.

For $G=\mathbb Z_2$, a Hadamard transformation diagonalizes the grade representation into $\pi_\pm(u)=\pm u$, $\pi_\pm(F)=F$, and

$$
\widehat\omega=\tfrac12(\omega_++\omega_-).
\tag{6.10}
$$

These are two extension-vacuum copies, with identical observable representation content.

### Uniqueness with the same observable vacuum

Let $E_G:\mathcal F\to\mathcal A$ be group averaging. The full quantum-double Haar expectation is $E_D=E_G E$. Any $D(G)$-invariant state $\varphi$ on $\mathcal B$ with the fixed observable marginal $\varphi|_{\mathcal A}=\omega_A$ satisfies

$$
\varphi=\varphi E_D=\omega_A E_GE
=\omega_0E=\widehat\omega.
\tag{6.11}
$$

The last equality uses the original unbroken $G$ symmetry. Thus **every fully invariant extension of this observable vacuum on this algebra has the amplification just computed**. Selecting another invariant extension cannot supply the missing flux sectors. Ordinary $G$ invariance alone would not give this uniqueness.

## 7. Scope and construction consequence

The obstruction is concrete, not a missing technical estimate. In this route the disorder automorphisms are already spatially implemented on an ordinary field vacuum Hilbert space. Their quantum-double grades distinguish field-algebra operations, not new inequivalent observable charges. The invariant-state construction merely records those grades in an additional regular-representation factor.

A further candidate must evade this representation collapse. In particular it must produce observable representations genuinely outside the old electric decomposition, establish their covariant positive-energy realization, and compute exchange using the full physical intertwiner structure. Inequivalence of an enlarged field algebra's GNS representations is not enough. Globally nonspatial disorder/soliton automorphisms or a different observable net fall outside the present theorem, but their existence, particle interpretation, interaction and involutive exchange require a separate construction.

No claim is made here about arbitrary gapless theories, all soliton sectors, or higher-dimensional finite-gauge phases. The original interacting new-$R$ problem remains open. The auxiliary Higgs and vortex calculations play no role in this result.

## Verification and sources

- **Analytic:** same-Hilbert-space charge restriction; nonimplementation and vacuum-breaking arguments; explicit Cuntz-multiplet unitary and positive-energy covariance; complete ordinary-parent reachability; regular GNS construction; invariant-extension uniqueness.
- **Exact CAS:** [D8 group, exchange and mixed-monodromy checks](</Users/koishi/.dsh/research-results/session-179d77c57568/9ea89b2b047d-research-result-readable.txt>); [six independent character/intertwiner/naturality-defect checks](</Users/koishi/.dsh/research-results/session-df06cdae54f5/f6d625524cc9-research-result-readable.txt>). Finite checks do not replace the general GNS or field-net arguments.
- **Independent review:** two fresh reviewers independently analyzed the disorder construction and physical-sector identification; a third fresh reviewer independently derived the invariant-state GNS representation and uniqueness. The latter also checked finite regular-representation identities for $\mathbb Z_2$ and $S_3$.
- **Primary source, original construction:** [Müger, hep-th/9606175v3](https://arxiv.org/abs/hep-th/9606175v3). PDF and printed page numbers coincide. The same-Hilbert-space construction and covariance are on p.11; global symmetry breaking on p.23; field exchange on p.27. Remark 2 after Proposition 4.12, pp.27–28, explicitly warns that the non-group $D(G)$ endomorphisms should not be considered true superselection sectors of $\mathcal A|_{\mathcal H_0}$. These pages were visually inspected, not just extracted. Retained [PDF](</Users/koishi/.dsh/research-results/disorder-field-audit.qoalAX/mueger-9606175v3.pdf>), [p.11](</Users/koishi/.dsh/research-results/disorder-field-audit.qoalAX/mueger-p11.png>), [p.23](</Users/koishi/.dsh/research-results/disorder-field-audit.qoalAX/mueger-p23.png>), [p.27](</Users/koishi/.dsh/research-results/disorder-field-audit.qoalAX/mueger-p27.png>), [p.28](</Users/koishi/.dsh/research-results/disorder-field-audit.qoalAX/mueger-p28.png>).
- **Primary source, interacting input:** [Lechner, math-ph/0601022v3](https://arxiv.org/abs/math-ph/0601022v3), PDF/printed pp.30, 34–35, visually inspected. Retained [PDF](</Users/koishi/.dsh/research-results/disorder-field-audit.qoalAX/lechner-0601022v3.pdf>), [modular nuclearity p.30](</Users/koishi/.dsh/research-results/disorder-field-audit.qoalAX/lechner-p30.png>), [asymptotic completeness p.34](</Users/koishi/.dsh/research-results/disorder-field-audit.qoalAX/lechner-p34.png>), [scattering p.35](</Users/koishi/.dsh/research-results/disorder-field-audit.qoalAX/lechner-p35.png>).
- **Assumptions:** the stated massive field-net and split hypotheses; finite unbroken internal $G$; faithful graded crossed-product structure; the original irreducible field representation; grade-preserving Poincaré covariance. These assumptions are not inferred from positivity and observable locality alone.
- **Not established:** any new physical flux/dyon sector of the proposed observable net, a qualifying new-statistics interacting model, or a universal no-go. The first failure is proved for the sectors and invariant completions supplied here, rather than postponed as an existence gap.
