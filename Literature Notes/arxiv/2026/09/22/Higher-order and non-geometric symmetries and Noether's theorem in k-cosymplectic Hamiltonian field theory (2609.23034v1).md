---
paper id: 2609.23034v1
title: "Higher-order and non-geometric symmetries and Noether's theorem in k-cosymplectic Hamiltonian field theory"
authors:
  - "de León, Manuel"
  - "Zhao, Xuefeng"
publication date: 2026-09-19
abstract: |-
  In this paper, we investigate higher-order symmetries and non-geometric symmetries within the framework of $k$-cosymplectic Hamiltonian field theory. We introduce the concept of generalized infinitesimal symmetry, which relaxes the standard symmetry condition, and then define two new classes of symmetries: higher-order general infinitesimal Cartan symmetries and good non-geometric symmetries. For each of these symmetry classes, we establish a Noether-type theorem that provides explicit conserved quantities for exact $k$-cosymplectic Hamiltonian systems. These results extend and generalize previous work on standard Cartan symmetries in the $k$-cosymplectic setting. Furthermore, we extend all of these results in a parallel fashion to Hamiltonian systems on $k$-symplectic manifolds, demonstrating the unifying nature of our approach. Concrete examples are provided to illustrate the existence and applicability of the proposed symmetries. Our framework offers a systematic geometric treatment of generalized symmetries and their associated conservation laws in classical field theories.
comments: "23 pages"
url: https://arxiv.org/abs/2609.23034v1
summary: "Reconstructs polynomial Lie-derivative Noether currents with corrected primitive and symmetry hypotheses; checks examples and local limitations."
tags: []
---

# A local conservation-current construction, with corrected hypotheses

The useful result is a polynomial-in-Lie-derivative recipe for local currents. It does not yet supply a covariant-phase-space surface charge, a constrained gauge-theory reduction or a boundary variational principle. The main Noether argument works under the paper's explicit **all-Hamiltonian-field** generalized-symmetry assumption, with the primitive in Proposition 4.2 corrected as in its own proof. Several statements about ordinary symmetries and examples need qualification.

Source: [2609.23034v1](https://arxiv.org/abs/2609.23034v1), 23 pages. Full source/text inspected, decisive Proposition 4.2 visually checked on PDF p.13. Context: [[2026_09_22_overview]].

# Source map and notation

§1 places the construction relative to ordinary Cartan and higher-order mechanical symmetries. §2 (pp.2–6) defines commuting $k$-vector fields, $k$-symplectic and $k$-cosymplectic geometry, and the Hamiltonian affine solution bundle. §3 (pp.6–7) defines solution symmetries and conservation laws. §4 (pp.8–16) contains generalized symmetry, higher-order Cartan currents, Examples 4.1–2, the polynomial recurrence and the good non-geometric theorem. §5 (pp.16–18) removes the base/Reeb terms for the $k$-symplectic analogue. §6 (pp.18–19) states conclusions and leaves constrained/Lagrangian applications open; references occupy pp.20–23. There are no appendices.

Indices $A=1,\ldots,k$ label independent base coordinates, $i=1,\ldots,n$ fields. The product phase bundle has coordinates $(t^A,q^i,p_i^A)$ and dimension $k(n+1)+n$:
$$
\eta^A=dt^A,\quad \omega^A=dq^i\wedge dp_i^A,\quad
R_A=\partial_{t^A},\quad V=\operatorname{span}\partial_{p_i^A}.
$$
The common kernel of all $\eta^A,\omega^A$ vanishes. Exactness means $\omega^A=d\theta^A$; hence a canonical potential is $\theta^A=-p_i^A dq^i$, or the exact-shifted $q^i dp_i^A$. This sign differs from conventions using $\omega=-d\theta$.

A $k$-vector field here means a **tuple** $X=(X_1,\ldots,X_k)$, not just its decomposable wedge. Integral sections require $\partial_A\psi=X_A\circ\psi$. Commutativity $[X_A,X_B]=0$ supplies a parameterized multi-time integral section; involutivity of a span alone gives a weaker unparameterized statement.

# The Hamiltonian affine bundle and the meaning of a current

The field equations are
$$
\eta^A(X_B)=\delta^A_B,\qquad
\sum_A\iota_{X_A}\omega^A=dH-\sum_A(R_AH)\eta^A.\tag{2.2}
$$
In Darboux coordinates this fixes $X_A(q^i)=\partial H/\partial p_i^A$ and $\sum_AX_A(p_i^A)=-\partial H/\partial q^i$. Off-diagonal momentum derivatives are not unique. The solution set is an affine bundle modeled on
$$
K=\ker\omega^\sharp\cap\ker\eta^\sharp,
\quad \omega^\sharp(Z)=\sum_A\iota_{Z_A}\omega^A,
$$
of rank $n(k^2-1)$. An algebraic solution tuple need not commute and hence need not admit integral sections.

A current $F=(F^1,\ldots,F^k)$ is conserved when $\sum_A\partial_A(F^A\circ\psi)=0$ on every solution section. Equivalently, where represented by integrable tuples, $\sum_AX_A(F^A)=0$. This is a divergence statement, not constancy of each component. Integrating the associated $(k-1)$-form over a hypersurface requires flux conditions and global patching before obtaining a conserved charge.

# Generalized symmetry and the higher-order Cartan proof

Definition 4.1 assumes
$$
[Y,X]\in K\quad\text{for every }X\in\mathcal X_H^k,
$$
including nonintegrable algebraic solutions. Since differences of arbitrary such solutions exhaust $K$, this implies $\mathcal L_YK\subset K$ and all iterates preserve $K$. This strong explicit assumption is what the proof uses; it should not be inferred from the weaker condition of mapping solution sections to solution sections.

A general Cartan symmetry of order $r$ additionally has $\iota_Y\eta^A=0$, $\mathcal L_Y^r\omega^A=0$ (first simultaneous vanishing order) and $\mathcal L_Y^rH=0$. Closure gives
$$
d(\mathcal L_Y^{r-1}\iota_Y\omega^A)=0,
\qquad dF^A=\mathcal L_Y^{r-1}\iota_Y\omega^A.\tag{4.7}
$$
The Poincaré lemma supplies local, not automatically global, $F^A$. With $\mathcal L_Y^r\theta^A=d\zeta^A$,
$$
F^A=\zeta^A-\mathcal L_Y^{r-1}\iota_Y\theta^A.
$$
Repeatedly commute $\iota_{X_A}$ past $\mathcal L_Y$, using $[\mathcal L_Y,\iota_X]=\iota_{[Y,X]}$. Every extra commutator tuple lies in $K$ and its summed contraction vanishes. Anticommutation of contractions fixes the sign:
$$
\sum_AX_A(F^A)=-\mathcal L_Y^rH=0.
$$
The Reeb correction drops because $Y$ is vertical over the base. This provides a local proof for arbitrary order without needing unspecified coefficients in the displayed induction.

# Non-geometric recurrence and the necessary primitive correction

Let
$$
p(s)=s^r-c_{r-1}s^{r-1}-\cdots-c_1s-c_0,
\qquad p(\mathcal L_Y)\omega^A=0,
$$
with **constant real coefficients**, the same polynomial for each $A$, minimal order, and $YH=0$. Variable coefficients would introduce extra exterior derivatives and are outside this theorem. Put
$$
P(s)=s^{r-1}-c_{r-1}s^{r-2}-\cdots-c_1.
$$
Then the closed one-form and correct potential relation are
$$
dF^A=P(\mathcal L_Y)\iota_Y\omega^A-c_0\theta^A,
\qquad p(\mathcal L_Y)\theta^A=d\zeta^A,
$$
$$
F^A=\zeta^A-P(\mathcal L_Y)\iota_Y\theta^A.
$$
Proposition 4.2(2) prints $\mathcal L_Y^r\theta^A=d\zeta^A$; its proof on p.14 correctly uses the full polynomial. Proposition 5.3 repeats the same statement error. For a **good** symmetry $c_0=0$ the leftover potential term disappears, and
$$
\sum_AX_A(F^A)=-\mathcal L_Y^rH+
 c_{r-1}\mathcal L_Y^{r-1}H+\cdots+c_1\mathcal L_YH=0.
$$
For $c_0\ne0$ there remains $-c_0\sum_A\theta^A(X_A)$; no general conservation theorem follows. This is the substantive meaning of “good.” §5 repeats both constructions with $K=\ker\omega^\sharp$ and no $\eta,R$ data.

# Examples and checks that delimit the claims

Example 4.1 uses $\omega^1=p_1dq\wedge dp_1$, $\omega^2=dq\wedge dp_2$, $H=p_1+t^1+t^2$, $Y=\partial_q$. On **$p_1\ne0$**, $F=(p_1^2/2,p_2)$ is conserved. The field equations give $X_1p_1$ and $X_2p_2$ such that $p_1X_1p_1+X_2p_2=0$, proving conservation for the full affine solution family.

The printed representative $X_1=\partial_{t^1}+p_1^{-1}\partial_q$, $X_2=\partial_{t^2}+\partial_{p_1}$ solves (2.2) but has $[X_1,X_2]=p_1^{-2}\partial_q\ne0$. It is not an integrable solution example. Moreover the stated punctured momentum plane still includes $p_1=0,p_2\ne0$, where the cosymplectic nondegeneracy fails. Restricting to $p_1\ne0$ repairs the domain; this does not destroy the current formula.

Example 4.2 has $\omega^1=e^{cp_1}dq\wedge dp_1$, $\omega^2=dq\wedge dp_2$, $H=\kappa(t^1,t^2)$ and $Y=q\partial_q$. It satisfies $\mathcal L_Y\omega^A=\omega^A$: order one with $c_0=1$. It is **not good** under Definition 4.3. Remark 4.5 cannot reclassify it as good simply because the dynamics is a base-dependent Hamiltonian. The primitive $e^{cp_1}/c$ also assumes $c\ne0$, or needs its limiting replacement.

Two independent local test models check the recurrence beyond the paper's order-one illustrations. For $k=1$, $H=H(t)$, $Y=\partial_p$, and $\omega=p\,dq\wedge dp$ on $p>0$, $\mathcal L_Y^2\omega=0$ and $dF=-dq$, so $F=-q$. For $\omega=(1+e^p)dq\wedge dp$, $\mathcal L_Y^2\omega=\mathcal L_Y\omega$, $c_1=1,c_0=0$, and $dF=dq$. In both, $X=\partial_t$ gives conservation. These verify the algebra in restricted models, not a physically interacting field-theory application.

# Base reparameterization is a separate defect in §3

Definition 3.2 allows a nontrivial base diffeomorphism $\varphi$. The transported tuple for $\Phi\circ\psi\circ\varphi^{-1}$ must include the inverse base Jacobian; it is not simply $(\Phi_*X_1,\ldots,\Phi_*X_k)$ as Proposition 3.2 states. Already for $k=1,H=0$, $X=\partial_t$ and $\Phi(t,q,p)=(2t,q,p)$, every constant-field solution maps to a solution, but $dt(\Phi_*X)=2\ne1$.

Likewise Proposition 3.3(ii) applies an assertion proved only for integrable tuples to arbitrary $V$ and $V+W$, which need not be integrable. These issues prevent the advertised inclusion argument from establishing that Definition 4.1 is a relaxation of all ordinary solution symmetries. They do not invalidate the local Noether proof when Definition 4.1 is independently assumed and $Y$ is vertical.

# Translation to the vault and verification boundary

The reusable object is the closed current one-form $P(\mathcal L_Y)\iota_Y\omega^A$, together with the kernel-preservation condition that makes its divergence vanish. To use it for CPS, first derive polymomenta from an action, determine constraints/degeneracy, turn $F^A$ into a spacetime current form and impose boundary flux conditions. This paper leaves singular constrained systems to future work and gives no edge-mode completion or surface-charge algebra. Exact phase forms do not eliminate possible cohomological obstructions to global $F^A$.

**Source-derived:** complete §§1–6 and all theorem/example chains, with the corrected primitive explicitly separated from its printed statement.

**Checked:** Mathematica coordinate-form calculations reproduce Example 4.1's Hamiltonian equation residual zero, current divergence zero, nonzero commutator $p_1^{-2}\partial_q$, and rank drop from five to four at $p_1=0$. It verifies both order-two test models and their $dF$. For $\theta=qdp$, $Y=q\partial_q$, $d\mathcal L_Y\theta=dq\wedge dp\ne0$, explicitly falsifying the uncorrected primitive claim. The general divergence identity above was independently reconstructed by Cartan calculus and kernel induction; it is an analytic derivation, not a machine proof of all functional cases.

**Failed:** Proposition 3.2's uncorrected base pushforward; Proposition 4.2(2)/5.3(2)'s primitive as printed; the unrestricted domain of Example 4.1; the “good” interpretation of Example 4.2. The nonintegrable representative is not a counterexample to the conserved current itself.

**Blocked:** first source request returned `SSL: UNEXPECTED_EOF_WHILE_READING`; retry succeeded. No remaining content-access blocker. No physical boundary theory is specified from which to compute a CPS charge.

**Not independently verified:** global current patching, constrained-theory extension, a nontrivial interacting field-theory example, and any surface-charge or quantization consequence.

**Verified:** local exterior-algebra recipe under the stated generalized-symmetry hypothesis and the finite checks above. **Assumptions:** exact forms locally, constant recurrence coefficients, vertical $Y$, all-affine-solution kernel preservation, commuting tuples when evaluating actual fields. **Not verified:** an automatic correspondence with every solution symmetry or gauge charge.
