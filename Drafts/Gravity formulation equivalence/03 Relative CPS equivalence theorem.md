# A relative covariant-phase-space equivalence criterion

## Main statement

**Proved under explicit regularity hypotheses.** A field correspondence induces a reduced symplectomorphism when it induces a smooth bijection of the specified proper-gauge orbits and its integrated relative presymplectic defect vanishes. If the bulk potentials differ by $\delta B+dY$, the entire remaining defect is a corner integral. This gives an explicit necessary-and-sufficient condition for preservation of the integrated form by that correspondence, not just a sufficient choice of local representatives.

The theorem does not assert that arbitrary on-shell equivalent Lagrangians satisfy its hypotheses. It also does not turn equality of classical structures into a quantum equivalence theorem. The underlying descent mechanism is standard; no claim of historical novelty is made.

## 1. Objects and conventions

Let $M$ be an oriented $n$-dimensional spacetime with fixed timelike boundary $\Gamma$, a Cauchy surface $\Sigma$, and its closed oriented corner $S=\partial\Sigma$. Each theory has:

- a space $\mathcal S_i$ of solutions satisfying a specified boundary condition $\mathcal B_i$;
- local bulk and boundary densities $(L_i,l_i)$;
- a bulk potential $\theta_i$ and boundary descent form $C_i$;
- a specified proper gauge equivalence relation $\sim_i$, including its disconnected part;
- the integrated potential and two-form

\[
\Theta_i=\int_\Sigma\theta_i-\int_S C_i,
\qquad \Omega_i=\delta\Theta_i.
\tag{1.1}
\]

Assume $\delta L_i=E_i\delta\phi_i+d\theta_i$ and

\[
(\theta_i+\delta l_i)|_\Gamma=dC_i
\tag{1.2}
\]

on the allowed domain. All identities below involving $\mathcal S_i$ are pulled back to that domain and evaluated on tangent solutions. Terms vanishing on this pullback are irrelevant to this theorem, but they can remain relevant to off-shell/BV or path-integral equivalence.

We use commuting $d,\delta$, $\iota_{X_H}\Omega=-\delta H$, and $\{F,G\}=X_G F$. This matches the [workspace conventions](</Users/koishi/Documents/Note/Articles/Quantization in AdS/perturbation/formalism.md#L7-L25>). The boundary rule (1.2) is Harlow–Wu [arXiv:1906.08616v4](https://arxiv.org/abs/1906.08616v4), PDF p. 14 / printed p. 13, (2.20), visually checked.

Let $F:\mathcal S_1\to\mathcal S_2$ be a smooth correspondence with

\[
F^*\theta_2-\theta_1=\delta B+dY.
\tag{1.3}
\]

Here $B$ has bidegree $(n-1,0)$, $Y$ has bidegree $(n-2,1)$ in (spacetime, field-space) degrees. They must be globally defined on the region under consideration, or accompanied by specified overlap data whose contributions are retained. A local identity on a collection of charts is not yet the global hypothesis (1.3).

## 2. Exact corner-defect proposition

Define

\[
\Delta l=F^*l_2-l_1,
\qquad \Delta C=F^*C_2-C_1,
\qquad K=\Delta C-Y|_\Gamma.
\tag{2.1}
\]

**Proposition 2.1 — Proved.** On the solution space,

\[
\delta(B|_\Gamma+\Delta l)=dK,
\qquad d\delta K=0,
\tag{2.2}
\]

and

\[
\boxed{
F^*\Omega_2-\Omega_1=-\delta\int_S K.
}
\tag{2.3}
\]

Consequently, for a fixed $F$ satisfying (1.3),

\[
F^*\Omega_2=\Omega_1
\quad\Longleftrightarrow\quad
\delta\int_S K=0.
\tag{2.4}
\]

**Proof.** Subtract (1.2) for the two theories and insert (1.3):

\[
\delta B+dY+\delta\Delta l=d\Delta C,
\]

which proves the first equality in (2.2). Applying $\delta$ proves the second. Stokes' theorem then yields

\[
F^*\Theta_2-\Theta_1
=\delta\int_\Sigma B+\int_S(Y-\Delta C)
=\delta\int_\Sigma B-\int_S K.
\]

Apply $\delta$ once more. This proves (2.3)–(2.4). $\square$

**Important distinctions.**

1. $d\delta K=0$ is a conservation law on the boundary; it does not imply $\delta\int_S K=0$.
2. Vanishing of an integral on one selected family of cuts need not imply pointwise vanishing of $\delta K$.
3. $K=\delta D+dZ$ is a sufficient local choice, since $S$ is closed, but is not necessary. Even a field-space-closed integrated one-form need not be globally exact.
4. If $S$ has endpoints or joints between patches, the $dZ$ term itself has further corner contributions. The closed-$S$ assumption must then be replaced by a full relative chain complex.
5. For noncompact surfaces or asymptotic limits, convergence and interchange of $\delta$ with the limit are additional hypotheses, not consequences of (2.3).

A useful stronger relative-action matching condition is

\[
F^*l_2-l_1=-B|_\Gamma+dD,
\qquad F^*C_2-C_1=Y|_\Gamma+\delta D+Z,
\tag{2.5}
\]

where $dZ=0$. It gives $K=\delta D+Z$ and the sole defect $-\delta\int_S Z$. Setting $Z=0$ is sufficient, but the criterion (2.4) is strictly weaker.

## 3. Descent to reduced phase spaces

Write $q_i:\mathcal S_i\to\mathcal P_i=\mathcal S_i/\sim_i$.

**Theorem 3.1 — Proved with the following hypotheses.**

1. The indicated sectors of $\mathcal S_i$ and $\mathcal P_i$ are smooth manifolds in a declared category. Each $q_i$ is a surjective submersion. For infinite-dimensional theories this can be a specified smooth Fréchet/ILH category; no assertion of a global Banach structure is implicit.
2. $\Omega_i$ is basic for $q_i$, and descends to a weakly nondegenerate form $\overline\Omega_i$. The connected vertical tangent distribution equals $\ker\Omega_i$. Any further discrete gauge quotient acts smoothly and symplectically and is explicitly included in $\sim_i$.
3. $F$ respects the equivalence relations and induces a smooth diffeomorphism $\Phi$ of the quotients. One sufficient way to verify this is an inverse smooth correspondence up to the specified proper-gauge relations. A set-theoretic bijection alone does not suffice.
4. The bulk relation (1.3) and the integrated corner condition (2.4) hold on every tangent pair in the chosen domain.

Then

\[
\boxed{\Phi^*\overline\Omega_2=\overline\Omega_1.}
\tag{3.1}
\]

**Proof.** Naturality and $q_2\circ F=\Phi\circ q_1$ imply

\[
q_1^*(\Phi^*\overline\Omega_2-\overline\Omega_1)
=F^*\Omega_2-\Omega_1=0.
\]

Pullback by a surjective submersion is injective on differential forms: at any quotient point, lift each tangent vector to a preimage point and evaluate. Thus the parenthesized form vanishes. Since $\Phi$ is already a diffeomorphism and the reduced forms are weakly nondegenerate, it is a symplectomorphism. $\square$

The theorem is intentionally honest about where the hard gravitational work lies: establishing the admissible solution domain, complete gauge equivalence relation, quotient regularity, and corner defect. It does not disguise those questions as consequences of the local field equations.

A symplectic coarse quotient does not retain all stabilizer information. If gauge equivalence is meant at the level of solution groupoids/stacks, an additional equivalence of groupoids, including isotropy groups and their action, is required. This extra statement is stronger than (3.1).

## 4. Hamiltonian symmetries

Suppose $X_{1,\xi}$ and $X_{2,\xi}$ are Hamiltonian vector fields for a common fixed symmetry label $\xi$, and $T\Phi\,X_{1,\xi}=X_{2,\xi}\circ\Phi$. Then

\[
\delta(\Phi^*H_{2,\xi}-H_{1,\xi})=0.
\tag{4.1}
\]

**Proof.** Contract (3.1) with $X_{1,\xi}$ and use $\iota_X\Omega=-\delta H$. $\square$

On each connected sector a common reference normalization sets this constant to zero. Poisson brackets then intertwine. A different assignment of additive constants changes the central cocycle by a coboundary, not necessarily its representative. Field-dependent labels require the adjusted symmetry bracket and their variation terms; (4.1) cannot be applied with a falsely fixed label.

Conversely, suppose one tries to prove (3.1) from moment maps. Equality of the functions $H_\xi$ and intertwining of their Hamiltonian fields imply equality of the symplectic forms only if those fields span the tangent spaces (or span a suitably dense subspace for which continuity is proved). Matching Lie brackets of the charges is much less information. Global injectivity/surjectivity of the moment-map parametrizations is needed to construct the proposed global map, not to perform this final two-form comparison.

## 5. Hypotheses that cannot simply be removed

### 5.1 Same equations, different normalization

Multiplying a Lagrangian by a nonzero constant preserves its zero-locus equations and can preserve its configuration-space gauge action, but scales $\Omega$ and all action-normalized charges. Therefore the identity on solutions need not be symplectic. As an obstruction to *any* symplectomorphism, two symplectic two-spheres with different total areas are diffeomorphic but cannot be symplectomorphic, since the integral of $\Omega$ is invariant. They can be realized as first-order spin systems using local potentials and the usual patchwise Wess–Zumino action. Thus equality of reduced manifolds does not imply symplectic equivalence.

### 5.2 Bulk equality without relative corner matching

Attach a decoupled corner pair with action $\int dt\,p\dot q$. This changes no bulk equation but adds $\delta p\wedge\delta q$ to the integrated symplectic form. More sharply within gravity, uncorrected Palatini frame potentials on a region can assign nonzero pairings to two local Lorentz variations for which $\delta g=0$. The [action/corner calculation](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/02 Boundary and corner calculation.md>) derives the exact defect. Its disappearance requires corner dressing, not the Einstein equation alone.

### 5.3 Lie-algebra gauge data without global gauge data

Take $\mathbb R^2_{q,p}$ with $\Omega=\delta p\wedge\delta q$. Compare no gauge identification with the discrete gauge action $q\mapsto q+2\pi m$, $m\in\mathbb Z$. Both have zero infinitesimal gauge algebra and zero symplectic kernel, and the identity on the unreduced space preserves the form. The quotients are $\mathbb R^2$ and $T^*S^1$, which have different fundamental groups. The induced map is a covering, not an equivalence. No infinitesimal kernel calculation detects this identification. One may add an identical continuous null coordinate to both theories without changing the obstruction. In gravity, spin lifts, central quotients, framing, and mapping-class transformations present analogous questions.

### 5.4 Same charge algebra without a complete moment map

Let $G$ act Hamiltonianly on $(P,\Omega_P)$ and trivially on another symplectic manifold $(N,\Omega_N)$. The charges on $P$ and on $P\times N$ have exactly the same algebra and central term. They cannot detect the spectator directions in $N$; the charge vector fields do not span the larger tangent space. Even a transitive moment map can be a nontrivial covering if global stabilizers are not matched. Charge-algebra equality therefore proves neither a bijection nor symplectic equivalence of the complete spaces.

### 5.5 Identical classical system, inequivalent quantization choices

For $T^*S^1$ with $\Omega=\delta p\wedge\delta q$ and $H=p^2/(2I)$, quantizations can use boundary condition

\[
\psi(q+2\pi)=e^{2\pi i\alpha}\psi(q),\qquad
\widehat p\,\psi_n=\hbar(n+\alpha)\psi_n.
\]

Different flat prequantum holonomies $e^{2\pi i\alpha}$ leave the classical curvature unchanged but, for generic $\alpha$, change the momentum and energy spectra. There is no unitary intertwiner preserving the specified $p$ and $H$ between generic such choices. This is a counterexample to automatic quantum equivalence, not a claim that every choice describes the same quantum theory or that gravity necessarily exhibits this obstruction.

A sufficient quantum transport statement requires, at least, a lift of $\Phi$ to a connection-preserving prequantum bundle isomorphism, compatible polarizations and half-form data, and matching measures, observable ordering, and operator domains. A path-integral statement additionally needs matched regulators and counterterms. Classical (3.1) supplies none of these by itself.

## 6. Limits and verification status

- **Proved:** the exact relative defect (2.3), criterion (2.4), regular reduced-space theorem, charge statement, and finite-dimensional counterexamples.
- **Conditional in gravity:** regular smooth quotients, global bundle data, complete allowed domains, and asymptotic limits must be verified for each formulation.
- **Open here:** singular/stratified quotients, nontrivial Čech overlap terms, null/moving boundaries, and a BV–BFV or interacting quantum strengthening.

The decisive proof is Stokes' theorem plus naturality, not a numerical test. An [independent derivation](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/Independent relative-CPS analysis.md>) was requested with the setup and conventions but without a candidate theorem; it independently obtained (2.3) and emphasized that local exact matching is stronger than necessary. The concrete gravitational identities feeding this theorem have separate reproducible CAS tests.
