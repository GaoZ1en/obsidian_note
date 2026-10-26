# Local particle accessibility in q-Fock wedge nets

## Result

For the scalar massive q-Fock wedge construction, with real $|q|<1$, the following are equivalent:

$$
\boxed{
\text{some bounded local }A\text{ has }\Pi_1A\Omega\ne0
\quad\Longleftrightarrow\quad
\mathcal H_{\rm loc}=\mathcal F_q
\quad\Longleftrightarrow\quad
M_{\rm loc}(W_R)=M(W_R).
}\tag{1}
$$

No fixed-double-cone Reeh–Schlieder property or asymptotic completeness is assumed. If the local vacuum Hilbert space is proper, it has **no nonvacuum sharp-mass particles at all**, not just no mass-$\mu$ particles. Its remaining mass spectrum is contained in $[2\mu,\infty)$.

There is a further necessary condition on the actual opposite-left/right wedge intersections: **every nonscalar bounded local operator creates an infinite particle-number tail**. Moreover, it has a strictly positive, explicitly bounded norm distance from the global q-creation C*-algebra.

These conclusions constrain the surviving strong-algebra construction; they do not select the full or proper branch, prove local triviality, or construct the desired new physical involutive $R$ statistics. They extend the question posed at the end of [Strong local cores of q-Fock fields](<Strong local cores of q-Fock fields.md>).

## 1. Setup and the local vacuum space

Use $1+1$ dimensions, signature $(+,-)$, $\hbar=c=1$, $\mu>0$, $\mathcal H_1=L^2(\mathbb R,d\theta)$ and the positive q-Fock representation $\mathcal F_q(\mathcal H_1)$. The inner product is antilinear in its first slot. The Poincare representation is $U=\Gamma_q(u_\mu)$, $\Pi_n$ is the n-particle projection, and $\mathsf N$ denotes particle number. The unique vacuum is $\Omega$; the isolated mass-$\mu$ shell is exactly $\mathcal H_1$, with scalar multiplicity one.

Let $H=K(W_R)$ be the standard one-particle right-wedge subspace and

$$
M=M_L(H)=\{\phi_L(h):h\in H\}'',\qquad
\phi_L(h)=l^\dagger(h)+l(h),\qquad \phi_L(h)\Omega=h.
$$

These generating polarization-free operators are bounded for $|q|<1$. The vacuum is cyclic and separating for $M$, and its modular group acts by boosts. These standard q-wedge facts are the framework inputs, with conventions as in the preceding note. The opposite wedge uses right fields, not the same left-field assignment.

Let $\mathcal A(O)$ be the covariant, isotone, spacelike-commuting net obtained from wedge intersections; for $O=W_R\cap(W_L+a)$,

$$
\mathcal A(O)=M_L(H)\cap M_L(U(a)H)'.
$$

Do not assume that any $\mathcal A(O)\Omega$ is dense. Define

$$
\mathcal B=\bigvee_{O\text{ bounded}}\mathcal A(O),\qquad
\mathcal H_{\rm loc}=\overline{\mathcal B\Omega},\qquad
N=\bigvee_{O\subset W_R}\mathcal A(O)\subset M,
$$

and let $e$ project onto $\mathcal H_{\rm loc}$. Finite products of bounded-region operators fit in one larger bounded double cone, so the global closure can equivalently be taken over individual local algebras. Covariance makes $\mathcal H_{\rm loc}$ reducing for $U$. It also reduces $\mathcal B$; its orthogonal complement is a complementary representation of the observable algebra, not automatically an irreducible or inequivalent charge sector.

## 2. Wedge cyclicity without fixed-cone cyclicity

**Claim:** $\overline{N\Omega}=\mathcal H_{\rm loc}$.

For $\psi\perp N\Omega$ and $A\in\mathcal A(O)$, consider

$$
f(a)=\langle\psi,U(a)A\Omega\rangle.
$$

There is a nonempty open set of translations for which $O+a\subset W_R$. On that set $f(a)=0$, since $U(a)A\Omega=\alpha_a(A)\Omega\in N\Omega$. The positive-energy spectrum condition gives the usual forward-tube analytic continuation and boundary-value uniqueness; vanishing on the real open set forces $f\equiv0$. In particular $\psi\perp A\Omega$ for every bounded $O$. This proves the claim. Neither weak additivity of a fixed cone nor a fixed-cone cyclicity hypothesis entered.

Boosts preserve the family of bounded regions inside $W_R$, so $N$ is invariant under the modular automorphisms of $(M,\Omega)$. Takesaki's modular-invariance criterion for a faithful normal state supplies a vacuum-preserving normal conditional expectation

$$
\mathbb E:M\longrightarrow N,\qquad
\mathbb E(X)\Omega=eX\Omega.
\tag{2}
$$

The vector identity follows also from $\langle Y\Omega,\mathbb E(X)\Omega\rangle=\langle Y\Omega,X\Omega\rangle$ for $Y\in N$, and the preceding density statement. The operator-algebra expectation theorem and positive-energy analytic uniqueness are the explicit general inputs used here.

Because $e$ commutes with the Poincare representation, it preserves the isolated mass shell. Irreducibility implies

$$
e|_{\mathcal H_1}=0\quad\text{or}\quad I.
$$

In the second case, for every generating $h\in H$,

$$
\mathbb E(\phi_L(h))\Omega=h=\phi_L(h)\Omega.
$$

Both operators belong to $M$ and are bounded. Separatingness of $\Omega$ gives $\mathbb E(\phi_L(h))=\phi_L(h)$, so all generators lie in $N$ and $N=M$. Hence $\mathcal H_{\rm loc}=\mathcal F_q$. Conversely either $N=M$ or global local cyclicity makes (2) fix all of $M$ and gives shell accessibility. This proves (1).

The proof is not specific to a numerical q-commutation relation: it uses a standard wedge algebra generated by bounded PFGs whose vacuum vectors span the irreducible isolated shell. The bounded-generator and separating-vacuum hypotheses cannot silently be dropped.

### What the expectation does not imply

In the proper branch, $\mathbb E(\phi_L(h))=0$. This does **not** imply $N=\mathbb CI$: a conditional expectation is not multiplicative outside its range. For example parity averaging in the q-wedge algebra,

$$
\mathbb E_{\rm even}=\frac12\big(\mathrm{id}+\operatorname{Ad}((-1)^{\mathsf N})\big),
$$

kills every field but fixes its square. For normalized $h$,

$$
\|(\phi_L(h)^2-I)\Omega\|^2=1+q>0.
$$

This is a counterexample to that algebraic inference, not an assertion that the actual local wedge union equals the parity-fixed algebra.

Also, wedge-union cyclicity is not fixed-cone cyclicity. The generic shortcut from global cyclicity and positive energy to fixed-cone Reeh–Schlieder fails without further assumptions: truncate an ordinary free net to scalars on cones below a fixed invariant radius, leaving larger cones unchanged. It remains isotone, Poincare covariant, local and globally cyclic, but its small cones are trivial. This auxiliary example is **not** a wedge-intersection net; it refutes the generic shortcut, not a special implication that might yet hold in the exact q-family.

## 3. Finite internal multiplicity and gauge neutrality

For $\mathcal H_1=L^2(\mathbb R)\otimes\mathbb C^r$ with identical masses, Poincare covariance alone gives $e|_{\mathcal H_1}=I\otimes p$. The expectation projection commutes with the Tomita operator on its core:

$$
S_M eX\Omega=\mathbb E(X^*)\Omega=eS_MX\Omega.
$$

Closure and modular invariance give commutation with $J_M$ as well. On one-particle space the conjugation is $J_0\otimes c$, with $c$ the internal complex conjugation. Thus $pc=cp$, so $p$ preserves the internal real form and the canonical $K(W_R)$. Consequently,

$$
\mathbb E(\phi_L(h))=\phi_L((I\otimes p)h).
$$

Abstract multiplicity permits a proper nonzero real $p$. However, the canonical q-flip model with identical real species has full $O(r)$ Bogoliubov covariance, preserving all wedge intersections. Hence $p$ commutes with $O(r)$ and is scalar; as a projection it is $0$ or $I$. Equation (1) survives this finite-multiplicity extension. An elementary check is that commuting with coordinate sign flips makes $p$ diagonal, while commuting with coordinate permutations makes all diagonal entries equal.

For a compact $G\subset O(r)$, the **neutral subnet** is different. Averaging bounded local approximants gives

$$
\mathcal H_{\rm neutral}=\mathcal H_{\rm loc}\cap\mathcal F_q^G,
\qquad N_{\rm neutral}=N^G,
\qquad e_{\rm neutral}|_{\mathcal H_1}=I\otimes pp_G,
\tag{3}
$$

where $p_G$ projects onto $(\mathbb C^r)^G$. Its expectation is Haar averaging composed with $\mathbb E$. A wholly charged multiplet has zero neutral one-particle overlap even when the charged parent is locally cyclic. Thus absence of neutral one-particle overlap is not an obstruction to charged completeness. Full $O(r)$ generally acts between different fixed-point subnets, not within a given $G$-fixed subnet; at most its normalizer automatically preserves that subnet.

One must not apply the all-species version of (1) directly to a neutral algebra that contains no generating charged PFGs. For comparison, two ordinary free real scalar species with $\mathbb Z_2$ flipping only the second have neutral vacuum space $\mathcal F_s(\mathcal H_{1,1})\otimes\mathcal F_{\rm even}(\mathcal H_{1,2})$: it has a visible one-particle species but is a proper subspace of the full parent. For the canonical $O(r)$-covariant q-parent, a nonzero invariant-species overlap does still trigger the **parent** theorem, since the neutral operator is also a parent-local operator.

## 4. The proper branch has no other sharp masses

Let $\mathsf m=\sqrt{(P^0)^2-(P^1)^2}$ be the invariant-mass operator. On the n-particle sector,

$$
\mathsf m_n^2
=\mu^2\left[n+2\sum_{i<j}\cosh(\theta_i-\theta_j)\right]
\geq n^2\mu^2.
\tag{4}
$$

For every finite $n$ and $|q|<1$, the q-Gram operator $P_{q,n}$ is bounded and boundedly invertible; its norm is equivalent to the ordinary tensor-product $L^2$ norm. No lower bound uniform in $n$ is needed. It commutes with the Poincare representation and with (4), so null spectral sets are unchanged by the deformation.

For $n\geq2$, fix $\theta_2,\ldots,\theta_n$. Expression (4) is a strictly convex function of $\theta_1$, tending to infinity at both ends. Each fixed mass level therefore has at most two $\theta_1$ solutions. Fubini's theorem shows that every such level set has measure zero, including threshold. Thus these sectors have no invariant-mass eigenvalues.

The only point masses of the full q-Fock representation are the vacuum at zero and the original one-particle mass $\mu$. A reducing subspace cannot acquire new eigenvalues. Therefore the proper branch of (1) has no nonvacuum sharp-mass particles; its nonvacuum mass spectrum is contained in $[2\mu,\infty)$, and may be smaller or empty. This does not exclude a nontrivial continuous-mass local theory or settle charged representations outside the local vacuum space. An ordinary control is the even subnet of a free massive real scalar: it is nontrivial and local, its vacuum space has no nonvacuum sharp-mass shell, and its odd charged representation still contains the mass-$\mu$ particles with a complete ordinary Bose parent.

### Explicit two-particle continuum

Put $\Theta=(\theta_1+\theta_2)/2$, $\delta=\theta_1-\theta_2$, and $m=2\mu\cosh(\delta/2)$. For $m>2\mu$ define $f_\pm(\Theta,m)=\psi(\Theta,\pm2\operatorname{arcosh}(m/(2\mu)))$. The exact norm is

$$
\|\psi\|_q^2
=\int d\Theta\int_{2\mu}^\infty\frac{2\,dm}{\sqrt{m^2-4\mu^2}}
\begin{pmatrix}\overline f_+&\overline f_-\end{pmatrix}
\begin{pmatrix}1&q\\q&1\end{pmatrix}
\begin{pmatrix}f_+\\f_-\end{pmatrix}.
\tag{5}
$$

The combinations $\chi_s=\sqrt{(1+q)/2}(f_++f_-)$ and $\chi_a=\sqrt{(1-q)/2}(f_+-f_-)$ diagonalize the metric. There are two identical scalar Poincare fibers at each continuous mass $m$, not a new mass eigenstate at threshold. The threshold density behaves as $(m-2\mu)^{-1/2}$ and is locally integrable.

This also locates the two-particle scattering-range defect from the preceding note. In a normalized chamber pair $|+\rangle,|-\rangle$ with overlap $q$, the vector $|d\rangle=(|-\rangle-q|+\rangle)/\sqrt{1-q^2}$ is the complementary channel. The two ordered orthonormal bases are related by

$$
S_{\rm channels}=\begin{pmatrix}q&\sqrt{1-q^2}\\\sqrt{1-q^2}&-q\end{pmatrix},
\qquad S_{\rm channels}^*S_{\rm channels}=I.
$$

The scalar compression $q$ can therefore coexist algebraically with a unitary two-channel map. This is only a channel-basis diagnostic: no asymptotic particle interpretation of the extra channel, Yang–Baxter representation, local field theory, or new exchange $R$ is being claimed.

## 5. Every nontrivial local operator needs an infinite tail

For $A\in\mathcal A(O)$, suppose $A\Omega$ has a largest nonzero particle degree $n>0$, with component $\xi_n$. For $O=W_R\cap(W_L+a)$, write $K=U(a)H$. The operator commutes with left fields from $K$ and right fields from $H'$. Projecting $A\phi_L(f)\Omega=\phi_L(f)A\Omega$ to degree $n+1$ gives

$$
\Pi_{n+1}Af=f\otimes\xi_n\quad(f\in K).
$$

The analogous right relation gives $\Pi_{n+1}Ag=\xi_n\otimes g$ for $g\in H'$. At the highest degree only creation survives, so these relations extend complex-linearly, then continuously, to all of $\mathcal H_1$. It follows that

$$
f\otimes\xi_n=\xi_n\otimes f\qquad(f\in\mathcal H_1).
$$

For a fixed nonzero $f$, this forces $\xi_n\in\mathbb C f^{\otimes n}$: project the first tensor slot perpendicular to $f$ and iterate. A second independent $f$ forces $\xi_n=0$, a contradiction. Strict positivity of the q-Gram forms is important: this is an equality in genuine unsymmetrized tensor powers, not a Bose/Fermi quotient. If only degree zero remains, separatingness of the containing wedge gives $A\in\mathbb CI$.

Thus

$$
\boxed{
A\in\mathcal A(O),\ A\notin\mathbb CI
\quad\Longrightarrow\quad
\sup\{n:\Pi_nA\Omega\ne0\}=\infty.
}\tag{6}
$$

This direct proof is the q-case of [Correa da Silva–Lechner, arXiv:2212.02298v2](<https://arxiv.org/abs/2212.02298v2>), Lemma 4.8, PDF/printed pp.33–34. Unlike the following half-sided inclusion theorem, this lemma does **not** require a null translation or a half-sided modular inclusion. Its application here is to the actual two exterior wedges.

Equation (6) excludes strictly local bounded PFGs and finite-particle local vacuum vectors. It does not exclude $\Pi_1A\Omega\ne0$ with an infinite polarization cloud. Nor is it preserved under an increasing-region strong limit: local approximants may all have infinite tails while their wedge limit is a bounded PFG.

## 6. Quantitative distance from the norm algebra

Let $\mathcal E_q=C^*(I,l^\dagger(f):f\in\mathcal H_1)$, and use the spatial translation action $\alpha_a$. The exact mixing theorem in [Nonrigid sectors and q-Fock locality](<Nonrigid sectors and q-Fock locality.md>) implies, for $B\in\mathcal E_q$,

$$
\lim_{|a|\to\infty}\|[B,\alpha_a(B)]\Omega\|^2
\geq2c(q)\operatorname{Var}_\Omega(B)^2,
\quad
c(q)=\begin{cases}1-q,&q\geq0,\\1-q^2,&q<0.\end{cases}
$$

For an actual bounded local $A$, put $M_A=\|A\|$, $v_A=\|(I-P_\Omega)A\Omega\|$ and $\kappa=\sqrt{2c(q)}$. If $v_A>0$, then

$$
\boxed{
\operatorname{dist}(A,\mathcal E_q)
\geq
\frac{\kappa v_A^2}
{2M_A+\kappa v_A+\sqrt{4M_A^2+4\kappa M_Av_A+2\kappa v_A^2}}
>0.
}\tag{7}
$$

To prove this, set $d=\|A-B\|$. Orthogonal projection is contractive, so

$$
\sqrt{\operatorname{Var}_\Omega(B)}\geq(v_A-d)_+.
$$

The error is $d$, not $2d$. For sufficiently distant spacelike translations, $[A,\alpha_a(A)]=0$, and

$$
\|[B,\alpha_a(B)]\Omega\|
\leq2d(\|B\|+M_A)\leq2d(2M_A+d).
$$

Combining the inequalities yields $\kappa(v_A-d)_+^2\leq2d(2M_A+d)$. For $d<v_A$ this is

$$
(2-\kappa)d^2+(4M_A+2\kappa v_A)d-\kappa v_A^2\geq0.
$$

Its positive root is (7), lies below $v_A$, and therefore also bounds the case $d\geq v_A$. Taking the infimum proves the claim. No optimality is asserted. At $q=0$ and normalization $M_A=v_A=1$, the conditional lower bound is approximately $0.203552344$; this does not assert that such a local $A$ has been constructed.

Every nonscalar $A\in\mathcal A(O)$ has $v_A>0$, by wedge separatingness. Hence $\mathcal A(O)\cap\mathcal E_q=\mathbb CI$, with the quantitative separation (7). A successful nontrivial strong-local observable cannot be obtained by a norm-convergent Wick/creation expansion, even one containing infinitely many particle degrees.

## 7. Why bounded wedge generators do not finish a no-go

If a bounded operator really coincided with ordinary Bose creation by $h\ne0$ on the entire outgoing finite-particle scattering domain, iteration on the vacuum would give norm $\sqrt{n!}\|h\|^n$, contradicting boundedness. But wedge-PFG identities identify that action only when the inserted packet's velocity lies strictly to the appropriate side of all existing packets. Its mode is then unoccupied; creation on that restricted subspace has norm $\|h\|$. The identity cannot be iterated on the same packet.

Local wedge generation is a von Neumann closure statement, not norm-quasilocal or uniform Haag–Ruelle approximation. Localization radii and almost-local estimates of approximants may diverge, so their approximation limit cannot be interchanged with the large-time scattering limit without additional estimates.

There is an explicit control against any boundedness-only no-go: the scalar factorizing model with $S_2=-1$ has bounded CAR wedge-PFGs and cyclic nontrivial double-cone algebras. In [Lechner, arXiv:math-ph/0611050v1](<https://arxiv.org/abs/math-ph/0611050v1>), PDF=printed pages, p.121 gives bounded CAR creation and the fields; p.128, Eq.(A.2.39) and Proposition A.2.3, gives the bounded-field wedge algebra, modular nuclearity for all positive separations, and local Reeh–Schlieder. Lemma 2.2.4 on p.24 gives local generation of wedges from split. The thesis uses the left generating wedge at this point; spatial reflection gives the corresponding right-wedge statement. Pages106–108, particularly the ordered identities on p.108, keep the velocity restriction explicit and supply a separate argument for asymptotic completeness in the S-symmetrized model.

This endpoint $q=-1$ is a counterexample only to the proposed **generic boundedness argument**, not to the strict-$q$ theorems (6)–(7). Their strict Gram positivity or nonzero detection coefficient degenerates at the endpoint.

## 8. Verification and unresolved construction

- **Verified analytically and independently:** the wedge-union density argument, conditional expectation and dichotomy (1); finite-multiplicity and gauge distinctions; absence of other mass eigenvalues and the two-particle measure; the finite-tail obstruction; and the norm-distance bound. A fresh reviewer received the modular setup without the candidate conclusion; a separate fresh reviewer audited the bounded-PFG inference and located the applicable finite-tail theorem and endpoint control. The quantitative distance follow-up was independently derived from the stated old commutator bound without supplying the candidate formula.
- **Verified computationally:** [Sage symmetry/parity checks](</Users/koishi/.dsh/research-results/session-df06cdae54f5/f83c96e81a91-research-result-readable.txt>) passed all eight final checks; they include scalar signed-permutation commutants for two, three and four real components and the parity counterexample. An initial matrix-flattening API error was corrected before that final run. [Sage highest-degree checks](</Users/koishi/.dsh/research-results/session-df06cdae54f5/3fe66d47de50-research-result-readable.txt>) found only the vacuum central tensor, and zero common tensor-centralizer dimension at degrees1–6. These finite checks support, not replace, the all-degree proof. [Mathematica checks](</Users/koishi/.dsh/research-results/session-df06cdae54f5/42a60447fd94-research-result-readable.txt>) gave zero residuals for the mass formula, Jacobian, fiber Gram diagonalization, channel unitarity and distance-root polynomial, with no messages.
- **Source evidence:** Lemma4.8 pp.33–34 and the thesis p.128 were visually checked by both the main and source reviewers. The source reviewer additionally visually checked thesis pp.24,108,121. The [retained inclusion paper](</Users/koishi/.dsh/research-results/nonrigid-papers.kJtwrx/2212.02298v2.pdf>) and [retained thesis](</Users/koishi/.dsh/research-results/qfock-particle-sources.bx8dBx/math-ph-0611050v1.pdf>) preserve the versions. Takesaki's criterion and positive-energy analytic uniqueness are explicit standard theorem inputs; no claim is made to have re-proved them here.
- **Assumptions:** the stated massive q-wedge representation with its modular boosts and cyclic/separating vacuum; scalar shell irreducibility, or the stated identical-species $O(r)$ covariance; real $|q|<1$; actual opposite-left/right wedge intersections; and, for (7), the previously proved spatial mixing commutator bound. No asymptotic completeness or fixed-cone cyclicity is assumed.
- **Not verified:** which branch of (1) actually occurs; nontriviality of any massive double-cone algebra; fixed-cone cyclicity; a classification of complementary charged representations; complete bounded-region charged-field generation; or a new interacting involutive-$R$ model.

The remaining q-wedge possibility is now precise: bounded local operators could require an indispensable infinite polarization cloud, lie a definite norm distance outside the creation C*-algebra, and access the original mass shell while incoming/outgoing particle ranges remain proper. No checked argument excludes that possibility, and no such operator has been constructed here. Even establishing it would not by itself supply new physical $R$ statistics: the deformation $qF$ is not an involutive unitary exchange, vacuum-observable particles have the ordinary local Haag–Ruelle permutation convention, and the actual charged sectors and completeness obstruction would still have to be identified.
