---
paper id: 2601.07915v1
title: Subregion algebras in classical and quantum gravity
authors: [Venkatesa Chandrasekaran, Éanna É. Flanagan]
publication date: 2026-01-12T19:00
abstract: "We study the kinematics and dynamics of subregion algebras in classical and perturbative quantum gravity associated with portions of null surfaces such as event horizons and finite causal diamonds. We construct half-sided supertranslation generators by extending subregion phase spaces of the event horizon to include doubled pairs of corner edge modes obtained from splitting the horizon, namely relative boosts and null translations of the respective corners. These edge modes carry a corner symplectic form and give rise to canonical charges generating half-sided boosts and translations. We show that the null translation generator is necessarily two-sided in the complementary translation edge modes. The charges act nontrivially on gravitationally dressed local observables on the horizon, such that the horizon subalgebra naturally takes the form of a crossed product by the associated automorphism group. Quantizing the extended phase space after linearizing around a black hole background, we obtain for each horizon cut a Type II$_{\\infty}$ von Neumann algebra equipped with a trace, whose von Neumann entropy coincides with the generalized entropy of that cut. The integrability of the half-sided null translation generator lifts to the existence of a self-adjoint operator that implements null time evolution on the Type II$_\\infty$ horizon subalgebras. The area operator is identified as the bulk implementation of the Connes cocycle flow for one-sided observables in excited states. The nesting property of the resulting one-parameter family of horizon subalgebras implies a generalized second law for non-stationary linearized perturbations of Killing horizons. Lastly, we use gravitational half-sided modular inclusion algebras to prove the quantum focusing conjecture in the perturbative quantum gravity regime."
comments: "111 pages, 9 figures"
pdf: "[[Attachments/Assets/Subregion algebras in classical and quantum gravity (2601.07915v1).pdf]]"
url: https://arxiv.org/abs/2601.07915v1
summary: "Develops an extended algebraic framework for gravitational subregions on null surfaces, deriving Type II_infinity horizon algebras whose entropy matches generalized entropy and using their nesting to establish the generalized second law and quantum focusing in perturbative gravity."
tags: []
---

## Summary

This paper studies subregion algebras for gravity on null surfaces such as event horizons and causal diamonds. It extends the phase space by introducing doubled corner edge modes, which allows the construction of half-sided boost and null-translation generators acting on gravitationally dressed observables. After linearizing around a black hole and quantizing, the resulting horizon algebras for each cut become Type II_infinity von Neumann algebras whose entropy agrees with generalized entropy. The algebraic nesting structure is then used to derive a generalized second law for linearized perturbations of Killing horizons and to prove the quantum focusing conjecture in perturbative quantum gravity.

## subregion phase space

we consider null components $\displaystyle{\mathcal{N}}$ of the boundaries $\displaystyle{\partial M}$ of spacetimes $\displaystyle{(M,g_{\mu \nu})}$, focussing on boundaries at finite locations rather than asymptotic boundaries.

## Derivation details

A useful way to follow the paper is to organize the derivation into a small number of structural steps.

1. Start from the covariant phase space on a null boundary. The boundary pullback of the presymplectic potential is decomposed as

$$\begin{align}
\Pi^* \theta = \delta \alpha + d\gamma + E,
\end{align}$$

   where $E$ is the flux/obstruction term. The presymplectic current is then defined by

$$\begin{align}
\omega = \delta(\theta - d\gamma),
\end{align}$$

   and the charge variation is computed from the symplectic form on a Cauchy slice. The important lesson is that for a subregion ending on a cut of a null surface, the obstruction term $E$ is what prevents the naive half-sided symmetry generator from being integrable.

1. In general relativity the explicit boundary data give a concrete corner charge. Using the Wald-Zoupas decomposition with $\gamma = 0$, the supertranslation corner charge becomes

$$\begin{align}
Q_\xi[S] = A^\circ_\beta[S] + P^\circ_\alpha[S],
\end{align}$$

   with

$$\begin{align}
A^\circ_\beta[S] = \frac{1}{8\pi}\int_S \beta\,\mu, \qquad
   P^\circ_\alpha[S] = -\frac{1}{8\pi}\int_S \alpha\,\Theta\,\mu.
\end{align}$$

   So the boost part is essentially an area functional, while the translation part is conjugate to the null expansion. Section 2 shows that these are only corner charges, not yet true Hamiltonian generators on a genuine subregion phase space.

1. The paper then tests half-sided supertranslations by truncating the symmetry at a cut $u=u_0$. The formal charge variation is written with a Heaviside function,

$$\begin{align}
\delta Q_\xi = \int_N H(u-u_0)\,\omega(\phi,\delta\phi,i_{\hat\xi}\delta\phi).
\end{align}$$

   This suggests how the subregion generator should work, but by itself it is ad hoc. The deeper problem is that the half-sided flow changes the relation between the future and past sides of the cut, so one cannot keep the usual smooth gluing data and still have a fully integrable symmetry on the original phase space.

1. The resolution is to split the horizon across a thin Cauchy splitting region and introduce doubled corner edge modes

$$\begin{align}
(\Gamma_0^+,\Upsilon_0^+), \qquad (\Gamma_0^-,\Upsilon_0^-).
\end{align}$$

   These variables encode relative boosts and affine shifts of the two sides of the cut. The symplectic form must then be enlarged by a corner contribution $\Omega_{\partial G}$. Its crucial feature is the mixed term coupling $\Upsilon_0^+$ and $\Upsilon_0^-$, which is why the null translation generator is necessarily two-sided in the complementary edge modes. This is the technical place where gravity differs from an ordinary factorized QFT subregion.

1. After adding the edge modes, the half-sided generators become honest canonical generators. The corner symplectic form yields

$$\begin{align}
-i_{\hat\xi}\Omega_{\partial G} = \delta(A_\beta + P_\alpha),
\end{align}$$

   so the boost and translation generators are now integrable on the extended phase space. Physically, the half-sided flow acts by changing the future edge modes while keeping the past side fixed, which corresponds to moving the subregion relative to its complement. In the spacetime picture this produces a null shock localized at the cut.

1. For perturbations around a Killing horizon, the gravitational constraints let the generators be rewritten in terms of horizon null energy. In the linearized theory one obtains

$$\begin{align}
A_\beta = \int_{u_0^+}^{\infty} du\, d^{d-2}x\, \sqrt{q}\,\beta(x^A)(u-u_0^+)T_{uu}(u) - A_\beta(\infty),
\end{align}$$

$$\begin{align}
P_\alpha = -\int_{u_0^+}^{\infty} du\, d^{d-2}x\, \sqrt{q}\,\alpha(x^A)T_{uu}(u).
\end{align}$$

   So $A_\beta$ is the half-sided vacuum modular Hamiltonian and $P_\alpha$ is the half-sided ANEC operator. Their action on dressed observables is

$$\begin{align}
[\hat P_\alpha,\hat O(p)] = -i\alpha\,\partial_u \hat O(p), \qquad
   [\hat A_\beta,\hat O(p)] = -i(u-u_0)\beta\,\partial_u \hat O(p),
\end{align}$$

   which makes the half-sided $ax+b$ structure explicit.

1. Once these generators act on the dressed horizon algebra, the natural algebraic object is a crossed product: bulk dressed observables together with the edge-mode-generated automorphisms. Quantization then gives a Type II$_\infty$ algebra for each cut. The entropy of that cut algebra matches the generalized entropy, and the nesting of the algebras in $u$ gives the generalized second law; with half-sided modular inclusion technology, the same structure leads to quantum focusing.

For studying the paper, the key derivational bottleneck is therefore not the final Type II$_\infty$ language itself, but the mid-stage construction in Sections 4-6: how the corner obstruction is converted into a genuine symplectic edge-mode sector, and how that sector turns null translations from outer to inner automorphisms on the enlarged algebra.
