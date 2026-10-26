# Quantum double exchanges and exterior disjointness

## Result

**Finite-group quantum doubles do not produce new fixed-$R$ permutation characters when their actual exchange is involutive.** This holds for arbitrary finite objects, not only simple charges: a diagonal, generally many-particle unitary converts the exchange representation to an ordinary super-permutation representation. This is not a support-preserving field-net reconstruction.

There is nevertheless a conditional topological route to excluding a complete bounded-local parent. In a Haag-dual $2+1$-dimensional BF framework, a translation-covariant sector with nontrivial monodromy cannot be localized in any bounded region. If its additive-exterior representations are factorial and the vacuum local algebras are type-III factors, this strengthens to **exterior disjointness**, not merely failure of DHR localization. The factoriality hypothesis is essential to the argument and has not been established here for a continuum finite-gauge model. On separable sector spaces, exterior disjointness is also equivalent to the existence of uniformly bounded positive separating sequences in the actual additive exterior; the proof uses simultaneous approximation in the vacuum-plus-charge representation.

No positive, interacting, Poincaré-covariant continuum model satisfying the original construction target has been verified. The results below separate the exact algebraic classification, the conditional net obstruction, and the remaining construction problem. The comparison parent is the one defined in [Complete field nets and R-parastatistics](</Users/koishi/Documents/Note/Drafts/R-parastatistics/Complete field nets and R-parastatistics.md>): all specified charges must be created from one vacuum by bounded-region fields.

## 1. Exchange convention and objects

Let $G$ be a finite group and use the standard positive unitary category $\operatorname{Rep}D(G)$ of its untwisted quantum double. A finite object is a $G$-graded Hilbert space with a compatible unitary group action,

$$
V=\bigoplus_{g\in G}V_g,
\qquad
xV_g=V_{xgx^{-1}}.
$$

The braiding convention is

$$
c(v_g\otimes w_h)=g\cdot w_h\otimes v_g.
\tag{1.1}
$$

The **checked exchange** in the fixed-$R$ ansatz is $R=c$. If $P$ denotes the ordinary flip, the unchecked universal matrix is

$$
R_0=Pc,
\qquad c=PR_0.
\tag{1.2}
$$

In particular, an electric object has $R_0=I$ but actual exchange $c=P$. Confusing these two conventions would turn ordinary colored bosons into the unrelated checked-$R=I$ counting problem.

A simple object is $X=(C,\rho)$, where $C$ is a conjugacy class, $g_0\in C$, and $\rho$ is an irreducible unitary representation of $Z_G(g_0)$. Its dimension is

$$
m=\dim V=|C|\dim\rho.
$$

This equals its categorical statistical dimension in the standard positive structure. It is not automatically a count of physical multiparticle fusion states in a proposed spacetime theory. Write

$$
\rho(g_0)=\theta_X I.
\tag{1.3}
$$

The scalar exists because $g_0$ is central in its centralizer. With (1.1), it is the twist phase; no opposite-braiding convention is being used.

## 2. Exact criterion for involution

### 2.1 Arbitrary finite objects

Set $S=\{g:V_g\ne0\}$. Then

$$
c_{V,V}^{\,2}=I
\tag{2.1}
$$

if and only if:

1. The elements of $S$ commute pairwise.
2. For every $g,h\in S$, the action of $g$ on $V_h$ is scalar, say $q(g,h)$.
3. These scalars obey $q(g,h)q(h,g)=1$.

The scalars have modulus one, and the exchange becomes

$$
c(v_g\otimes w_h)=q(g,h)w_h\otimes v_g.
\tag{2.2}
$$

**Proof.** Before imposing commutation,

$$
c^2(v_g\otimes w_h)
=(ghg^{-1})\cdot v_g\otimes g\cdot w_h.
\tag{2.3}
$$

The second output degree is $ghg^{-1}$. Equality with the identity on the nonzero space $V_g\otimes V_h$ therefore forces $ghg^{-1}=h$. After this reduction,

$$
c^2\big|_{V_g\otimes V_h}
=(h|_{V_g})\otimes(g|_{V_h}).
\tag{2.4}
$$

Two invertible finite-dimensional matrices have tensor product equal to the identity only if both are reciprocal scalar matrices. This proves necessity; substitution proves sufficiency. $\square$

The subgroup $A=\langle S\rangle$ is consequently normal abelian. Normality follows from the conjugation-invariance of the support. Also

$$
q(g,g)=\epsilon_g\in\{+1,-1\}.
\tag{2.5}
$$

Thus each entire homogeneous fiber has one parity. In particular, opposite-parity simple summands cannot overlap in the same nonzero fiber while retaining full self-involution.

### 2.2 Simple-object formulation

For $X=(C,\rho)$, the preceding criterion is equivalent to:

- $C$ is pairwise commuting, with $A=\langle C\rangle$;
- $\rho|_A=\chi I$ for a character $\chi:A\to U(1)$;
- for every $t\in G$,

$$
\chi(tg_0t^{-1})\,\chi(t^{-1}g_0t)=1.
\tag{2.6}
$$

Indeed, choose $t_g g_0t_g^{-1}=g$ and put

$$
\chi_g(a)=\chi(t_g^{-1}at_g),
\qquad q(g,h)=\chi_h(g).
\tag{2.7}
$$

The choice of $t_g$ is harmless: scalar restriction makes $\chi$ invariant under conjugation by $Z_G(g_0)$. Reciprocity for $g_0$ and $tg_0t^{-1}$ gives (2.6); conjugation invariance then gives reciprocity for all pairs in $C$.

All diagonal phases coincide,

$$
q(g,g)=\theta_X=\epsilon\in\{+1,-1\}.
\tag{2.8}
$$

Neither $\theta_X^2=1$ alone nor that condition together with commuting support is sufficient. The missing condition is mutual reciprocity, not just the spin.

Equivalently, $q$ extends uniquely to a $G$-invariant skew bicharacter $B:A\times A\to U(1)$ with

$$
B(a,b)B(b,a)=1,
\qquad \chi(a)=B(a,g_0).
\tag{2.9}
$$

To see that the extension in the second variable is well defined, a relation $\prod_j h_j^{n_j}=e$ gives, for every generator $g\in C$,

$$
\prod_jq(g,h_j)^{n_j}
=\chi_g\!\left(\prod_jh_j^{n_j}\right)^{-1}=1.
$$

The product on the left is a character in its first argument, so triviality on $C$ implies triviality on all of $A$.

## 3. Explicit untwisting and permutation characters

Write $\epsilon_g=(-1)^{p_g}$ and define

$$
s(g,h)=(-1)^{p_gp_h},
\qquad
m_\pm=\sum_{g:\,\epsilon_g=\pm1}\dim V_g.
\tag{3.1}
$$

Choose any total order on $S$. Set $\gamma(g,g)=1$ and, for $g<h$,

$$
\gamma(g,h)=1,
\qquad
\gamma(h,g)=\frac{q(g,h)}{s(g,h)}.
\tag{3.2}
$$

On homogeneous tensors define the diagonal unitary

$$
J_n(v_{g_1}\otimes\cdots\otimes v_{g_n})
=\left[\prod_{a<b}\gamma(g_a,g_b)\right]
 v_{g_1}\otimes\cdots\otimes v_{g_n}.
\tag{3.3}
$$

If $S_i$ is the ordinary superflip on factors $i,i+1$, then

$$
\boxed{c_i=J_nS_iJ_n^*.}
\tag{3.4}
$$

For an adjacent exchange, all factors involving a third position cancel in the ratio of the two diagonal phases. The remaining ratio is $\gamma(h,g)/\gamma(g,h)=q(g,h)/s(g,h)$. For equal grades, the superflip already has the required sign $q(g,g)$. This proves (3.4) for every $n$, not just for the finite tests below.

Consequently, if $D_n^c$ is the resulting $S_n$ representation,

$$
\boxed{
\operatorname{Tr}D_n^c(\pi)
=\prod_{\alpha\text{ cycle of }\pi}
\left[m_++(-1)^{|\alpha|-1}m_-\right].}
\tag{3.5}
$$

For a simple object this reduces to

$$
\operatorname{Tr}D_n^c(\pi)
=\epsilon^{n-k(\pi)}m^{k(\pi)},
\tag{3.6}
$$

where $k(\pi)$ includes fixed points. The normalized character is obtained by dividing by $m^n$.

For $L$ ordinary orbital modes, the group-average $R$-symmetrizer in the fixed-tensor Fock ansatz therefore gives

$$
\sum_{n\ge0}\dim\mathcal K_{R,n}\,t^n
=\frac{(1+t)^{Lm_-}}{(1-t)^{Lm_+}}.
\tag{3.7}
$$

For a simple bosonic or fermionic object the dimensions are respectively $\binom{Lm+n-1}{n}$ and $\binom{Lm}{n}$. This is ordinary multicomponent Bose/Fermi counting.

Two limitations matter:

- $J_n$ need not be a tensor power of a one-particle unitary. Indeed, $P$ commutes with every $u\otimes u$, so a nontrivial color flip cannot be removed by that restricted change of basis. Conversely, arbitrary many-particle untwisting does not establish a support-preserving local-field map.
- The spaces in (3.7) are not automatically $\operatorname{Hom}(1,X^{\otimes n})$, fixed-charge fusion spaces, or the physical Hilbert spaces of an interacting anyon theory.

### A useful trace identity that does not imply involution

For every simple $D(G)$ object, including genuinely braided ones,

$$
\operatorname{Tr}_2c=\theta_X I_V,
\qquad
\operatorname{Tr}(c_1\cdots c_{r-1})=m\theta_X^{r-1}.
\tag{3.8}
$$

In the partial trace, the second output $v_g$ must match the traced input basis vector. Only $h=g$ contributes, leaving $g\cdot v_g=\theta_Xv_g$. Repeated partial tracing proves the second identity. Without $c^2=I$, these are cyclic-braid traces, not symmetric-group characters.

Actual $c=\pm I$ is impossible for $m>1$ under full involution, since $\operatorname{Tr}c=m_+-m_-$ has absolute value at most $m$, whereas $|\operatorname{Tr}(\pm I)|=m^2$. Unchecked $R_0=\pm I$ is possible and means actual exchange $c=\pm P$.

## 4. Examples and counterexamples

### 4.1 The eight simple sectors of $D(S_3)$

Use $S_3=\langle r,s:r^3=s^2=e,\ srs=r^{-1}\rangle$ and $\omega=e^{2\pi i/3}$.

- The three electric objects have dimensions $1,1,2$ and $c=P$.
- For $C=\{r,r^{-1}\}$ and $\rho_\ell(r)=\omega^\ell$, $\ell=0,1,2$,

$$
c_\ell=
\begin{pmatrix}
\omega^\ell&0&0&0\\
0&0&\omega^{-\ell}&0\\
0&\omega^{-\ell}&0&0\\
0&0&0&\omega^\ell
\end{pmatrix}.
\tag{4.1}
$$

Only $\ell=0$ is involutive.

- The transposition class is not pairwise commuting, so neither centralizer character gives involution, despite $\theta=+1$ or $-1$. For trivial centralizer charge, $c^3=I$ but $c^2\ne I$. Taking $s=(12),t=(23),u=(13)$ gives $c^2|s,t\rangle=|t,u\rangle$. Its cyclic-braid traces nevertheless equal $3$ at every length by (3.8).

### 4.2 Commuting support and spin one still do not suffice

Take $G=C_3\times S_3$, with $z$ generating the first factor, and

$$
C=\{(z,r),(z,r^{-1})\},
\qquad \chi(z)=\omega,\quad\chi(r)=\omega^2.
$$

The class commutes and $\theta=\chi(zr)=1$, but

$$
c=
\begin{pmatrix}
1&0&0&0\\
0&0&\omega^2&0\\
0&\omega^2&0&0\\
0&0&0&1
\end{pmatrix},
\qquad
c^2=\operatorname{diag}(1,\omega,\omega,1)\ne I.
\tag{4.2}
$$

### 4.3 Nontrivial involutive color exchange in $D(D_8)$

Here $D_8$ means the group of **order eight**,

$$
D_8=\langle r,s:r^4=s^2=e,\ srs=r^{-1}\rangle.
$$

For $C=\{s,r^2s\}$, the centralizer is $V_4$. Set

$$
\chi(s)=\epsilon,\qquad\chi(r^2)=\tau,
\qquad\epsilon,\tau\in\{+1,-1\}.
$$

A compatible induced action and its exchange are

$$
U_r=\begin{pmatrix}0&\tau\\1&0\end{pmatrix},
\quad
U_s=\begin{pmatrix}\epsilon&0\\0&\tau\epsilon\end{pmatrix},
\quad
c=
\begin{pmatrix}
\epsilon&0&0&0\\
0&0&\epsilon\tau&0\\
0&\epsilon\tau&0&0\\
0&0&0&\epsilon
\end{pmatrix}.
\tag{4.3}
$$

All four choices are unitary, involutive, and satisfy the braid Yang–Baxter equation. For $\tau=-1$, $c\ne\epsilon P$, but

$$
J_n|g_1\cdots g_n\rangle
=\tau^{\operatorname{inv}(g_1\cdots g_n)}|g_1\cdots g_n\rangle
$$

implements (3.4). The ordinary two-component counting is unchanged. A different simple dyon, central flux $r^2$ with the standard two-dimensional charge, has $R_0=-I_4$ and actual exchange $c=-P_4$.

### 4.4 Self-involution is not mutual symmetry

For $D(C_2)$, label simples by $(a,g)\in\{0,1\}^2$, with

$$
c_{(a,g),(b,h)}=(-1)^{gb}P.
\tag{4.4}
$$

Every simple is self-involutive. Electric and magnetic simples have mutual monodromy $-1$, so the full family is not symmetric. The same distinction occurs between the electric standard representation and the trivial-charge three-cycle flux of $D(S_3)$.

In general $X$ and $Y$ centralize one another precisely when their supports commute pairwise and, on every $V_g\otimes W_h$,

$$
(h|_{V_g})\otimes(g|_{W_h})=I.
\tag{4.5}
$$

The full category $\operatorname{Rep}D(G)$ has only the vacuum transparent to all objects. Testing against all electric irreducibles first forces every flux to be $e$; testing the remaining electric representation against all fluxes forces it to be trivial.

## 5. Symmetric categories versus compactly localized fields

If $c_{X,X}^2=I$, the rigid fusion subcategory generated by $X$ is symmetric. Centralizers are closed under tensor products, duals, and subobjects: first every generated object centralizes $X$, then its own centralizer contains the entire generated category. Positive symmetric fusion reconstruction therefore gives an abstract equivalence with $\operatorname{Rep}(H,z)$ for a finite group $H$ and a central parity involution $z$. For a bosonic simple generator, the generated category is Tannakian.

This says nothing by itself about localization in bounded spacetime regions. With $D$ denoting **spacetime** dimension:

- Compact DHR statistics is automatically symmetric for $D\ge3$.
- Spacelike-cone BF statistics is automatically symmetric for $D\ge4$; $D=3$ permits nontrivial braiding.
- Standard symmetric finite-statistics BF field reconstruction in $D\ge4$ produces cone algebras $\mathcal F(C)$, not bounded-region charged fields $\mathcal F(O)$.

The last distinction is explicit in [D’Antoni–Morsella–Verch, math-ph/0307048v1](https://arxiv.org/abs/math-ph/0307048v1), §7, Definition 7.1, PDF/printed pp.35–37. [Naaijkens, 1004.4755v2](https://arxiv.org/abs/1004.4755v2), PDF/printed p.12, also warns that the original Doplicher–Roberts cone approach applies in dimensions at least four and requires adaptation to $2+1$. An abstract symmetric BF subcategory in $2+1$ is not, without further hypotheses and construction, a spacetime field-net theorem.

### 5.1 Compact localization forces transparency in $2+1$

In Naaijkens's Haag-dual BF framework, Lemma 2.14, PDF/printed pp.11–12, proves that every DHR sector is transparent to every BF sector:

$$
c_{\rho,\eta}c_{\eta,\rho}=I.
\tag{5.1}
$$

The important property is not just symmetry within the DHR subcategory. For example, the electric subcategory $\operatorname{Rep}(G)\subset\operatorname{Rep}D(G)$ is symmetric internally but its nontrivial objects need not be transparent to magnetic sectors.

The proof extends to a translation-covariant BF sector localized in **one** bounded double cone $O_0$; arbitrary shrinking of $O_0$ is not needed. Here is the additional argument, rather than an attribution of the stronger statement verbatim to the lemma.

Here $\mathcal A(O')$ in a localization statement means the additive exterior $C^*$-algebra defined in (6.4), not a maximal annular algebra. Let $\rho$ be an endomorphism of the quasilocal algebra with $\rho|_{\mathcal A(O_0')}=\mathrm{id}$. Write $\alpha_x=\operatorname{Ad}U_0(x)$ and let $U_\rho$ implement translations in this representative. Then

$$
\rho_x=\alpha_x\rho\alpha_{-x}
=\operatorname{Ad}W_x\circ\rho,
\qquad
W_x=U_0(x)U_\rho(x)^*.
\tag{5.2}
$$

The representative $\rho_x$ is localized in the same-sized $O_0+x$. If a double cone $K$ contains $O_0\cup(O_0+x)$, both representatives fix $\mathcal A(K')$, and hence $W_x$ commutes with it. Vacuum double-cone Haag duality gives $W_x\in\mathcal A(K)$, so these are admissible observable transporters in the auxiliary algebra used for BF braiding.

Choose the spectator cone for another BF sector by transportability, with sufficiently large clearance from the auxiliary cone. A fixed-size compact translate can then be put near its apex and assigned localization cones with either relative orientation: both cones contain the same compact region. Keeping the same compact representative and the same transporter changes no operator in the braiding formula, while reversing the orientation replaces the braiding by the inverse opposite braiding. Thus (5.1) follows exactly as in the cone-flipping geometry of Lemma 2.14. All clearances can be made large; no dilation covariance or arbitrarily small compact localization has been assumed.

Consequently, a nontransparent covariant BF sector cannot be vacuum-equivalent on the additive exterior of **any** bounded double cone. Indeed, such an exterior equivalence would put the sector on the vacuum Hilbert space as a compactly localized endomorphism: for a local observable in $\mathcal A(D)$, choose a larger $K$ containing $D\cup O_0$ and use vacuum duality to place its image in $\mathcal A(K)$.

This conclusion is still not exterior disjointness without additional representation-theoretic control.

## 6. From exterior non-equivalence to disjointness

### 6.1 A type-III factor lemma

Let $E$ be a unital $C^*$-algebra, with nondegenerate representations $\pi_0,\pi_1$ on separable Hilbert spaces. Suppose

$$
M_0=\pi_0(E)'\text{ is a type-III factor},
\qquad
\pi_1(E)''\text{ is a factor}.
\tag{6.1}
$$

Then

$$
\boxed{
\operatorname{Hom}_E(\pi_0,\pi_1)\ne\{0\}
\quad\Longleftrightarrow\quad
\pi_0\simeq_u\pi_1.}
\tag{6.2}
$$

**Proof.** Let $0\ne T=v|T|$ be an intertwiner and set $p=v^*v\in M_0$, $q=vv^*\in M_1:=\pi_1(E)'$. The polar part also intertwines and identifies the commutant corners:

$$
v(pM_0p)v^*=qM_1q.
\tag{6.3}
$$

The first corner is type III. The target commutant $M_1$ is a factor because its center equals that of $\pi_1(E)''$. A factor with a nonzero type-III corner is itself type III. Explicitly, a nonzero finite projection $r\in M_1$ would give $qM_1r\ne0$; the polar decomposition of an element in this space would produce a nonzero finite subprojection of $q$, a contradiction.

On separable Hilbert spaces the commutants are countably decomposable. Every nonzero projection in a countably decomposable type-III factor is equivalent to the identity. Choose $a\in M_0$, $b\in M_1$ with

$$
a^*a=I_0,\quad aa^*=p,
\qquad
b^*b=I_1,\quad bb^*=q.
$$

Then $U=b^*va$ intertwines and satisfies $U^*U=I_0$, $UU^*=I_1$. The converse is immediate. $\square$

The factor hypotheses cannot simply be dropped. If $A$ is a type-III factor in standard form on a separable $K$, take $E=A\oplus A$ and

$$
\pi_0(a,b)=a,
\qquad
\pi_1(a,b)=a\oplus b.
$$

Coordinate inclusion intertwines, but different kernels prevent equivalence; the target is not factorial. Nor can “type III” be replaced by “properly infinite”: scalar representations of $\mathbb C$ on $\ell^2(\mathbb N)$ and $\mathbb C$ have nonzero intertwiners but are not equivalent. Countable decomposability also matters; an uncountable amplification gives a Hilbert-dimension counterexample. The sufficient assumption can be weakened from separable Hilbert spaces to countably decomposable commutants.

### 6.2 Conditional exclusion of every complete bounded-local parent

For a bounded double cone $O$, use exactly the additive exterior needed by the complete-parent criterion:

$$
E_O=\mathcal A_{\mathrm{add}}^{C^*}(O')
=C^*\{\mathcal A(D):D\subset O',\ D\text{ a bounded double cone}\}.
\tag{6.4}
$$

Assume a $2+1$-dimensional net and a specified sector $s$ satisfy:

1. Vacuum double-cone Haag duality, with $\pi_0(E_O)'=\mathcal A_0(O)$ a type-III factor for every $O$.
2. The Haag-dual, transportable BF framework and translation covariance used in §5.1.
3. $s$ has nontrivial monodromy with at least one physically realized BF sector.
4. $\pi_s(E_O)''$ is a factor for every $O$, on separable sector Hilbert spaces.

Section 5.1 excludes exterior unitary equivalence for every $O$; (6.2) therefore gives

$$
\boxed{\operatorname{Hom}_{E_O}(\pi_0,\pi_s)=0
\qquad\text{for every bounded }O.}
\tag{6.5}
$$

The [complete-parent argument](</Users/koishi/Documents/Note/Drafts/R-parastatistics/Complete field nets and R-parastatistics.md#L50-L93>) then excludes every relatively local parent that creates $s$ from its vacuum, including larger ordinary Bose/Fermi parents. For a bounded parent field $F\in\mathcal F(O)$, the operator $V_s^*FV_0$ would be an exterior intertwiner and must vanish.

This is a **conditional theorem**, not a continuum construction. Cone localization supplies equivalence on cone complements and local normality on bounded regions. These facts alone have not been shown here to supply hypothesis 4 for an entire double-cone exterior. Global sector irreducibility must not be silently substituted for it.

Two sufficient additional conditions for hypothesis 4 are charged exterior duality, $\pi_s(E_O)'=\pi_s(\mathcal A(O))$, or inside–outside irreducibility,

$$
[\pi_s(\mathcal A(O))\vee\pi_s(E_O)]''=B(\mathcal H_s).
\tag{6.6}
$$

In the first case, bounded local normality and vacuum local factoriality give the required factor. In the second, a central element of $\pi_s(E_O)''$ commutes with both generating algebras by locality. Neither equality follows merely from ordinary additivity as used here.

### 6.3 Disjointness is equivalent to bounded separating sequences

There is also an abstract converse to the asymptotic-observable test. Let $E_1\supset E_2\supset\cdots$ be $C^*$-subalgebras of a common algebra, all sharing its unit, and let $\pi_0,\pi_s$ be nondegenerate representations on separable Hilbert spaces. Then the following are equivalent:

$$
\operatorname{Hom}_{E_n}(\pi_0,\pi_s)=0\quad\text{for all }n;
\tag{6.7}
$$

$$
\begin{gathered}
B_n\in E_n,\qquad 0\le B_n\le1,\\
\pi_0(B_n)\xrightarrow{s}0,
\qquad\pi_s(B_n)\xrightarrow{s}I.
\end{gathered}
\tag{6.8}
$$

**Proof of the existence direction.** Work in the direct-sum representation $\Pi=\pi_0\oplus\pi_s$, not only in the vacuum representation. The off-diagonal blocks of $\Pi(E_n)'$ are exactly exterior intertwiners. By (6.7) and adjunction they vanish, so

$$
P_s=0\oplus I\in\Pi(E_n)''.
\tag{6.9}
$$

Kaplansky density places this projection in the strong closure of the positive unit ball of $\Pi(E_n)$. Such approximants lift to actual positive contractions of $E_n$: for a positive contraction $x=\Pi(c)$, replace $c$ by $h=(c+c^*)/2$ and then by $f(h)$, where $f(t)=\max(0,\min(t,1))$. This preserves the represented element $x$ and gives $0\le f(h)\le1$ without assuming faithfulness.

Choose countable dense sets $\{\xi_k\}\subset\mathcal H_0$, $\{\eta_k\}\subset\mathcal H_s$. At step $n$, select one lifted contraction satisfying

$$
\|\pi_0(B_n)\xi_k\|<1/n,
\qquad
\|(\pi_s(B_n)-I)\eta_k\|<1/n
\quad(k\le n).
\tag{6.10}
$$

These are finitely many strong-neighborhood conditions. The uniform bounds extend convergence from the dense sets to all vectors, proving (6.8).

Conversely, if $T$ intertwines $E_N$, then it intertwines $B_n$ for all $n\ge N$ by nesting. Taking the two strong limits in $\pi_s(B_n)T=T\pi_0(B_n)$ gives $T=0$. $\square$

Apply this to the exteriors of a cofinal increasing sequence of double cones. The resulting $B_n$ eventually belongs to the additive exterior of every bounded region. Thus the hypotheses of §6.2 yield abstract **uniformly bounded additive-exterior detectors**, without choosing or renormalizing a Wilson loop. Norm approximation allows each $B_n$ to use only finitely many exterior local algebras, still without identifying an explicit physical loop formula.

This does not repair a detector argument based only on vacuum strong approximation: (6.9) uses the **joint representation**, and obtaining that joint projection was exactly where disjointness entered. It also does not remove the need to prove the model hypotheses of §6.2. Nondegeneracy and separability have explicit roles: a zero target representation cannot converge to $I$, and nonseparable examples can require nets rather than sequences.

## 7. Detectors, fixed points, and locally trivial topological factors

### 7.1 The membership problem

The direct asymptotic test asks for uniformly bounded $B_R\in E_O$ eventually for each bounded $O$, with

$$
\pi_0(B_R)\xrightarrow{s}b_0I,
\qquad
\pi_s(B_R)\xrightarrow{s}b_sI,
\qquad b_s\ne b_0.
\tag{7.1}
$$

A geometrically enclosing Wilson or disorder operator need not satisfy the membership statement. In [Casini–Huerta–Magán–Pontello, 2008.11748v2](https://arxiv.org/abs/2008.11748v2), §2, equations (2.7)–(2.11), PDF pp.7–8 / printed pp.6–7, the relevant distinction is

$$
\mathcal A_{\mathrm{add}}(R)
=\bigvee_{B\subset R}\mathcal A(B),
\qquad
\mathcal A_{\max}(R)
=\mathcal A_{\mathrm{add}}(R')'.
\tag{7.2}
$$

These are vacuum von Neumann algebras. Even membership in the additive vacuum closure is weaker than membership in the exterior $C^*$-algebra, or a simultaneous approximation controlled in the charged representation. Assigning $\mathcal A_{\max}$ to every region is generally not a local net.

A containing ball for an enclosing loop generally meets the hole. Commutation with operators in the hole alone therefore does not establish additive-exterior localization. Nor does a perimeter-law expectation ratio prove (7.1): division by a vacuum expectation tending to zero can destroy the uniform norm bound. The strong limits must hold on the full representation spaces, not just on selected states.

For the electric standard object of $D(S_3)$, monodromy with flux $g$ acts by the standard matrix $\sigma(g)$. Its normalized character values are

$$
\frac{\chi_\sigma(g)}2=
\begin{cases}
1,&g=e,\\
0,&g\text{ a transposition},\\
-\tfrac12,&g\text{ a three-cycle}.
\end{cases}
\tag{7.3}
$$

The corresponding conjugacy-class averages are these scalars times $I_2$. They are exact categorical probe values, not a proof of an AQFT loop's membership or strong limits. The factor criterion in §6 is an alternative to identifying a particular Wilson detector.

### 7.2 Ordinary fixed-point electric sectors do not work

Suppose $\mathcal A(O)=\mathcal F(O)^G$ and an ordinary bounded charged field $\psi\in\mathcal F(O)$ reaches sector $s$. Then

$$
0\ne T=V_s^*\psi V_0,
\qquad
\pi_s(a)T=T\pi_0(a)\quad(a\in E_O).
\tag{7.4}
$$

Thus that electric sector is not exterior-disjoint and already has a local parent. Calling the construction “finite gauging” changes nothing if the bounded-region vacuum net remains the same fixed-point net. Extra BF sectors could matter only after their existence and non-reachability by $\mathcal F$ have been independently established.

In particular, any proposed additive-exterior detector with distinct strong scalar limits for this locally creatable electric sector contradicts (7.4). At least one proposed ingredient must fail: exterior membership, charged-representation convergence, or identification of the detected sector.

### 7.3 Tensoring a locally trivial TQFT does not work

If a topological factor has $\mathcal T(D)=\mathbb C$ on every vacuum double cone and $\mathcal B$ is an interacting net, then

$$
\mathcal A(D)=\mathcal B(D)\otimes\mathcal T(D)\cong\mathcal B(D),
\qquad E_O^{\mathcal A}\cong E_O^{\mathcal B}.
\tag{7.5}
$$

Topological defect labels absent from these additive algebras add at most representation multiplicities; they do not supply new inequivalent additive-net charges or distinct scalar limits. Nonadditive extended observables cannot be silently inserted into the comparison net. This excludes this tensor-product shortcut, not all dynamical finite-gauge theories.

## 8. Construction boundary and verification

The viable conditional target is a **genuine dynamical finite-gauge continuum phase**, not a fixed-point relabeling or an interacting spectator times locally trivial topology. A realization of the $D(S_3)$ electric standard sector would have internally symmetric exchange but nontrivial monodromy. A $D(D_8)$ reflection dyon additionally gives the non-onsite color matrix (4.3). Both still have ordinary permutation characters; any failure of complete ordinary reconstruction must be a localization effect.

An actual construction must establish positivity, the spectrum condition, Poincaré covariance, observable locality, physical finite-energy charged sectors, and a nontrivial interaction involving those particles. It must then prove exterior factoriality for §6 or produce another disjointness proof. None of these analytic model inputs follows from the finite quantum double.

Nearby continuum results do not fill the gap: [Müger's hep-th/9606175](https://arxiv.org/abs/hep-th/9606175) is a $1+1$-dimensional disorder/quantum-double construction; [Plaschke's 1405.4154](https://arxiv.org/abs/1405.4154) explicitly loses Lorentz-boost covariance in its tensor-product cone-field construction. Lattice quantum-double models do not by themselves provide a relativistic continuum charge spectrum.

The nontransparent point-sector argument is specifically $2+1$ dimensional. In $3+1$, pointlike BF sectors are symmetric; magnetic flux loops or strings are extended excitations. Particle–loop linking is not the same as the braiding of two pointlike BF sectors. An enclosing detector for a point charge in three spatial dimensions is surface-type, not just a spatial loop around a ball.

### Verification record

- **Verified analytically:** the general graded-fiber involution criterion; the simple-object character formulation; the explicit $J_n$ equivalence and all-$n$ character/counting formulas; the partial trace identity without involution; the type-III factor intertwiner theorem; the equivalence of disjointness and positive-contraction separating sequences on separable spaces; and the conditional nontransparent-sector exclusion under the stated BF and factoriality hypotheses.
- **Independent review:** a fresh mathematical reviewer derived the quantum-double classification and reducible super-counting without being given the candidate verdict; a separate fresh operator-algebra reviewer proved the factor-intertwiner theorem, independently established the simultaneous separating-sequence result from its stated problem, and supplied counterexamples to weakened hypotheses. A source-focused reviewer independently checked the BF transparency and reconstruction distinctions and the fixed-size compact-localization extension.
- **Exact CAS:** [the Sage script](</Users/koishi/Documents/Note/Drafts/R-parastatistics/quantum_double_involutive_checks.sage>) checks all eight $D(S_3)$ simple-sector cases, the spin-one counterexample, all four displayed $D(D_8)$ reflection dyons, checked versus unchecked central-flux exchange, and electric–magnetic character values. For the four reflection dyons it checks all permutations through $n=5$, $J_n$, and Fock counts for one to three orbital modes. A genuine mixed-parity $D(D_8\times C_2)$ object with $m_+=m_-=2$ is checked through $n=4$. A further simple object of the quantum double of $(C_3\times C_3)\rtimes C_4$ uses nonreal reciprocal phases to check the direction and conjugation in (3.4), rather than only real signs: diagonal conjugation is checked through $n=3$ and all permutation characters through $n=4$. The toric-code direct-sum control fails full involution as required.
- **Final script SHA-256:** `f9492b3cd9124567db9c1c6f2f773041eb6c3b53049c608cf12ef5f84c97754d`. The final execution passed all assertions; its [readable output](</Users/koishi/.dsh/research-results/session-df06cdae54f5/61e70de038a0-research-result-readable.txt>) is preserved. Finite CAS checks do not replace the all-$n$ proofs.
- **Source pages visually checked:** Naaijkens v2, Lemma 2.14 and proof, PDF/printed [p.11](</Users/koishi/.dsh/research-results/quantum-double-sources.kCgTGS/naaijkens-p11.png>) and [p.12](</Users/koishi/.dsh/research-results/quantum-double-sources.kCgTGS/naaijkens-p12.png>); Casini et al. v2, additive/maximal definitions and locality warning, [PDF p.7 / printed p.6](</Users/koishi/.dsh/research-results/quantum-double-sources.kCgTGS/casini-p7.png>) and [PDF p.8 / printed p.7](</Users/koishi/.dsh/research-results/quantum-double-sources.kCgTGS/casini-p8.png>). The preserved [Naaijkens PDF](</Users/koishi/.dsh/research-results/quantum-double-sources.kCgTGS/naaijkens-1004.4755v2.pdf>) and [Casini et al. PDF](</Users/koishi/.dsh/research-results/quantum-double-sources.kCgTGS/casini-2008.11748v2.pdf>) retain the respective arXiv v2 stamps.
- **Assumptions:** the standard positive untwisted $D(G)$ category; the exact Haag-dual BF framework for the transparency argument; the explicitly stated vacuum type-III and charged exterior factoriality assumptions for the net exclusion. No arbitrary-small-region localization, modularity of an unconstructed physical net, or Wilson-loop normalization limit is silently assumed.
- **Not verified:** a qualifying interacting relativistic continuum model, charged exterior factoriality from BF localization alone, a physical additive Wilson detector with the required limits, or a $3+1$-dimensional point-sector version of the $2+1$ monodromy argument. The original construction goal remains unresolved.
