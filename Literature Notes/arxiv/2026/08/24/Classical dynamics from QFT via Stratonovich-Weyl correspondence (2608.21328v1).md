---
paper id: 2608.21328v1
title: Classical dynamics from QFT via Stratonovich-Weyl correspondence
authors:
  - Alexander Ochirov
  - Canxin Shi
publication date: 2026-08-22T01:35
abstract: |-
  Massive scattering bodies are mapped to a covariant reduced phase space by a relativistic Stratonovich--Weyl quantizer, while massless radiation remains operator-valued. The logarithm of the S-matrix then generates classical observables through nested mixed Dirac/radiative brackets, and an ancillary Mathematica algorithm reconstructs the Murua coefficients of Magnus diagrams from ordered transition-matrix partitions.
comments: "17 pages + appendices + refs, 1 table"
url: https://arxiv.org/abs/2608.21328v1
summary: "A reusable operator-to-phase-space derivation of classical scattering brackets, with a checked Murua example and explicit but important smooth-limit, bijectivity, and spin-extension boundaries."
tags: []
---

# Verdict and relevance

**Direct verdict.** Correct under the paper's stated asymptotic-free-particle, gauge-fixed mass-shell, localized-state, smooth-symbol, and uniform multi-soft classical-limit assumptions. The relativistic quantizer satisfies the four directly tested Stratonovich--Weyl properties, the leading Moyal bracket reduces to the corresponding Dirac bracket, and the supplied Murua algorithm reproduces the displayed three-vertex coefficients. Bijectivity of the Weyl correspondence is assumed rather than proved; the spin extension and applications to actual gravitational observables are proposals, not results of this paper.

Reason codes: `T1-symplectic`, `T1-boundary`, `T2-model`, `T3-math`.

The strongest connection to the vault is structural. The paper keeps a reduced massive-particle phase space and an unreduced radiative Fock sector in one operator-valued symbol, then shows how eliminating or projecting the radiation sector changes the observable algebra. This is useful language for boundary-response gluing, but it is not a theorem about regional CPS gluing, corner symplectic forms, or continuum Fock factorization.

# Reading map

1. Section 2.1 states the SW axioms and gives the covariant relativistic quantizer.
2. Sections 2.3--2.5 identify the physical worldline phase space, gauge fixing, the Dirac-bracket limit, and the partial transform that leaves radiation operator-valued.
3. Sections 3.1--3.3 derive the observable master formula from localized Wigner states and the Hermitian generator $K=-i\hbar\log S$.
4. Sections 3.4--3.5 specialize it to global particle observables and the waveform.
5. Section 4 gives the ordered-partition algorithm for Magnus/Murua graph coefficients and a Mathematica benchmark.
6. Appendix A proves hermiticity, unit trace, covariance, and traciality of the proposed relativistic quantizer.
7. Appendix B derives the local canonical coordinates and the gauge-fixed Dirac bracket from the stationary-phase expansion of the trikernel.

# Notation and phase-space reduction

- $\mathcal P$: physical one-particle phase space.
- $(x,p)$: covariant representative with $p^2=m^2$, $p^0>0$.
- $(x,p)\sim(x+\theta p,p)$: residual worldline-origin equivalence.
- $\widehat\Omega(x,p)$: operator-valued SW quantizer.
- $A_{\rm W}=\operatorname{Tr}(\widehat A\widehat\Omega)$: Weyl symbol.
- $\star$: Groenewold product induced by operator multiplication.
- $\{\ ,\ \}_{\rm M}$ and $\{\ ,\ \}_{\rm D}$: Moyal and gauge-fixed Dirac brackets.
- $\widehat K=-i\hbar\log\widehat S$: Hermitian scattering generator.
- $K_{\rm W}^{(m,n)}$: partially transformed connected matrix element with $m$ outgoing and $n$ incoming radiative legs.
- $\chi^{(m,n)}$: its uniform multi-soft classical limit.
- $\Delta_{\rm F}$, $\Delta_{\rm c}$, $\Delta_{\rm r}$, $\Delta_{\rm H}$: Feynman, oriented cut, retarded, and Hadamard propagators.

The physical phase space is explicitly a quotient,

$$
\mathcal P=
\{(x,p)\mid p^2=m^2,\ p^0>0\}/
\{(x,p)\sim(x+\theta p,p)\}.
$$

One constraint removes the radial momentum direction and the equivalence removes the arbitrary origin along the free worldline. For a gauge condition $g(x,p)=0$, the measure is written as

$$
d\mu(x,p)=
2\frac{d^4x\,d^4p}{(2\pi\hbar)^3}
\left|p\cdot\frac{\partial g}{\partial x}\right|
\delta(g)\delta_+(p^2-m^2).
$$

This is an asymptotic construction tailored to free trajectories. It does not by itself provide an interacting worldline phase space away from asymptotic regions.

# Relativistic Stratonovich--Weyl quantizer

The most useful representation is

$$
\widehat\Omega(x,p)=
\int \bar d^4q\,\bar\delta(2p\cdot q)
\left(1-\frac{q^2}{4m^2}\right)^{1/4}
e^{-iq\cdot x/\hbar}
\left|\sqrt{1-\frac{q^2}{4m^2}}p-\frac q2\right\rangle
\left\langle\sqrt{1-\frac{q^2}{4m^2}}p+\frac q2\right|.
$$

The momentum arguments remain on shell because $p\cdot q=0$. Its shift invariance,

$$
\widehat\Omega(x,p)=\widehat\Omega(x+\theta p,p),
$$

implements the worldline quotient. The source proves:

1. Hermiticity by $q\mapsto-q$.
2. Unit trace by the on-shell state normalization.
3. Poincaré covariance using $L(R_pk)=R_{Lp}(Lk)$.
4. Traciality through the phase-space delta-function identity

$$
\operatorname{Tr}[\widehat\Omega(x,p)\widehat\Omega(y,k)]
=\hbar^3\bar\delta^{(3)}(\vec p-\vec k)
\delta^{(3)}\!\left(\vec x-\vec y-\frac{x^0-y^0}{p^0}\vec p\right).
$$

The fourth-root prefactor is essential for the Jacobians to cancel in this identity.

**Boundary of the proof.** The paper treats bijectivity of $\widehat A\mapsto A_{\rm W}$ as an axiom about the chosen operator/function spaces. It explicitly says this is not established by checking the proposed kernel. Thus “the relativistic SW correspondence is fully proved” would overstate the result; four kernel properties are proved, while the functional-analytic bijection is assumed.

# From the Groenewold product to the Dirac bracket

The operator product defines

$$
(A_{\rm W}\star B_{\rm W})(\xi)
=(\widehat A\widehat B)_{\rm W}(\xi).
$$

On a fixed gauge slice, stationary phase around the diagonal saddle gives

$$
A_{\rm W}\star B_{\rm W}
=A_{\rm W}B_{\rm W}
+\frac{i\hbar}{2}\{A_{\rm W},B_{\rm W}\}_{\rm D}
+O(\hbar^2),
$$

so that

$$
\{A_{\rm W},B_{\rm W}\}_{\rm M}
=i\hbar\{A_{\rm W}^{\rm cl},B_{\rm W}^{\rm cl}\}_{\rm D}
+O(\hbar^2).
$$

For the gauge $x\cdot p=0$, Appendix B obtains

$$
\begin{aligned}
\{A,B\}_{\rm D}
={}&-\Pi_\mu{}^\nu
\left(
\frac{\partial A}{\partial x_\mu}\frac{\partial B}{\partial p^\nu}
-\frac{\partial A}{\partial p^\nu}\frac{\partial B}{\partial x_\mu}
\right)\\
&+\frac{x_\mu p_\nu-x_\nu p_\mu}{m^2}
\frac{\partial A}{\partial x_\mu}
\frac{\partial B}{\partial x_\nu},
\end{aligned}
$$

with $\Pi_\mu{}^\nu$ the tangent projector to the mass shell. This is the reduced canonical Poisson bracket written covariantly after gauge fixing.

**Interpretive limit.** This result concerns the worldline constraint and gauge quotient. It is not the Peierls bracket of the full radiative field, nor a proof that a subregion's boundary symplectic structure has been correctly reduced.

# Partial transform with radiation retained

For

$$
\mathcal H=\mathcal H_{\rm mass}\otimes\mathcal H_{\rm rad},
$$

the transform traces only the massive sector,

$$
\widehat A_{\rm W}(b,p)
=\operatorname{Tr}_{\mathcal H_{\rm mass}}
\left[(\widehat\Omega(b,p)\otimes\mathbf 1_{\rm rad})\widehat A\right].
$$

The result is a function on massive phase space valued in radiation operators. Products combine the massive Groenewold product with ordinary Fock-space multiplication, and commutators become a mixed Moyal/commutator bracket.

This hybridization is the paper's main conceptual gain. It avoids pretending that the radiative field can be reduced to finitely many particle coordinates, while still allowing classical massive trajectories to be evaluated pointwise.

# Localized states and the classical-limit assumptions

For a family of incoming Wigner functions localized at $\xi$,

$$
\rho_{{\rm W},\xi}\xrightarrow[\hbar\to0]{}
\delta_{\mathcal P}(-,\xi)
$$

distributionally. If the Weyl symbol of the observable has a smooth classical limit, then

$$
\langle\widehat O\rangle_{\rm cl}
=\lim_{\hbar\to0}O_{\rm W}^{(0,0)}(\xi).
$$

Two conditions matter and should not be silently dropped:

- localization is distributional and tested only against sufficiently regular phase-space functions;
- evaluation at a point is justified only when the observable symbol has a smooth classical limit.

Consequently, singular soft limits, caustics, nonuniform wave-packet limits, or operator-domain questions are outside the proof as written.

# Magnus generator and observable master formula

Writing

$$
\widehat S=e^{i\widehat K/\hbar},
\qquad
\widehat K^\dagger=\widehat K,
$$

gives the exact BCH identity

$$
\Delta\widehat O
=\sum_{r=1}^\infty
\frac{(-i)^r}{\hbar^r r!}
\operatorname{ad}_{\widehat K}^r(\widehat O).
$$

The classical Magnus amplitudes require the uniform multi-soft scaling $k=\hbar\bar k$ for all internal and external massless momenta:

$$
\chi^{(m,n)}
=\lim_{\hbar\to0}
K_{\rm W}^{(m,n)}(\ldots;\hbar\bar k_1,\ldots;\hbar\bar k'_1,\ldots).
$$

After absorbing the scaling into $\bar a_{\bar k}=\hbar^{3/2}a_{\hbar\bar k}$, the observable becomes

$$
\Delta O
=\sum_{r=1}^\infty\frac1{r!}
\langle0|\operatorname{ad}_{\{\widehat\chi,-\}}^r
(\widehat O_{\rm W})|0\rangle,
$$

where the bracket is Dirac on c-number massive symbols and the rescaled commutator on radiation modes.

For a nonradiative observable, the leading conservative term is

$$
\Delta O^{(1)}=\{\chi,O\}_{\rm D},
$$

while the first radiative correction pairs one-emission and one-absorption Magnus amplitudes. For the waveform mode,

$$
\langle\bar a_{\bar q}\rangle^{(1)}
=i\chi^{(1,0)}(\bar q),
$$

and the next order combines $\{\chi,\chi^{(1,0)}\}_{\rm D}$ with intermediate radiative contractions.

This is an order-by-order generating formalism. The paper does not compute a new black-hole impulse or waveform, and it does not establish convergence of the BCH/Magnus series.

# Murua coefficients from ordered partitions

The logarithm

$$
\frac{i}{\hbar}\widehat K
=\log\left(\mathbf1+\frac{i}{\hbar}\widehat T\right)
=\sum_{j\ge1}\frac{(-1)^{j+1}}j
\left(\frac{i\widehat T}{\hbar}\right)^j
$$

turns a graph with $v$ vertices into a finite sum over ordered partitions into $j=1,\ldots,v$ nonempty blocks. Edges internal to one block are Feynman propagators; edges crossing blocks are oriented cuts whose direction follows the block order. The identities

$$
\Delta_{\rm F}(p)
=\frac{\Delta_{\rm r}(p)+\Delta_{\rm r}(-p)}2+\Delta_{\rm H}(p),
$$

$$
\Delta_{\rm c}(p)
=\frac{\Delta_{\rm r}(p)-\Delta_{\rm r}(-p)}2+\Delta_{\rm H}(p)
$$

then expose the Murua weights.

For the chain $1{-}2{-}3$, the ancillary algorithm gives

$$
\frac13\Delta_{\rm r}(p_{12})\Delta_{\rm r}(p_{23})
+\frac13\Delta_{\rm r}(p_{21})\Delta_{\rm r}(p_{32})
+\frac16\Delta_{\rm r}(p_{12})\Delta_{\rm r}(p_{32})
+\frac16\Delta_{\rm r}(p_{21})\Delta_{\rm r}(p_{23}),
$$

in agreement with the paper's equation (4.9).

# Relation to the concurrent phase-space S-matrix paper

The concurrent paper [[Inclusive Radiation and Backreaction from the Phase-Space S-Matrix (2608.21318v1)]] and this one share a partial Weyl-transform strategy, but their emphases and formal claims differ.

- This paper proposes a strict relativistic SW quantizer on the reduced asymptotic one-particle phase space and works with $K=-i\hbar\log S$ and nested mixed brackets.
- The concurrent paper emphasizes a projected on-shell pairing that is not a strict single-kernel self-dual transform, works directly with inclusive state symbols and connected radiation kernels, and derives Berry-connection and local hard-plus-radiative balance identities.
- Neither paper proves a global exact-state CPS gluing theorem. Their phase-space reductions should therefore be treated as complementary scattering constructions, not interchangeable regional quantizations.

# Independent verification

## Source-derived

- The section structure, equations, scope statements, and publication metadata were read from the official arXiv abstract page, complete TeX source, and 31-page PDF.
- Appendix A proves four kernel properties and explicitly leaves bijectivity as an assumption.
- Appendix B derives the one-body Dirac bracket; the two-body and spinning extensions are described as straightforward or expected, not carried out in full.
- The paper supplies `anc/murua_coeffs.wls` and reports benchmark timings, but no raw benchmark log or environment lockfile.

## Checked

- Mathematica reproduced the four retarded-propagator coefficients $1/3,1/3,1/6,1/6$ for the three-vertex chain after replacing the unavailable cloud `KSetPartitions` helper by an equivalent local ordered-surjection enumerator.
- The BCH sign follows directly from $S^\dagger O S=e^{-iK/\hbar}Oe^{iK/\hbar}$.
- The classical radiative bracket normalization is consistent with $[a_k,a_{k'}^\dagger]=2\omega_k\bar\delta^{(3)}(k-k')$ and $\bar a_{\bar k}=\hbar^{3/2}a_{\hbar\bar k}$.
- Rendered PDF pages containing the SW axioms, conclusion/claim boundary, and appendices were visually inspected; equations and labels are legible.

## Blocked

- The ancillary script's use of `ResourceFunction["KSetPartitions"]` failed in the local Wolfram kernel because its cloud fetch hit an SSL error. The displayed example was still verified with an equivalent local partition generator.

## Not independently verified

- The distributional delta-function/Jacobian identity for the full relativistic trikernel was inspected but not independently integrated in a computer algebra system.
- The claimed agreement with the external Guo et al. BW ancillary dataset and all timing rows were not reproduced because that comparison dataset and raw timing records are not included here.
- Smoothness and uniformity of the full multi-soft limits $\chi^{(m,n)}$ were not established for an interacting gravity amplitude.
- No convergence, operator-domain, global gauge-slice, spinning-body, or regional-CPS theorem was verified.

# What to reuse

1. Treat the massive reduced variables and radiative operators as different sectors instead of inventing an extra oscillator for a trace or boundary value.
2. State the quotient, gauge condition, and reduced bracket before applying a classical limit.
3. Use $\log S$ to organize connected causal generators and keep the ordered-partition/Murua algorithm as a practical combinatorial reference.
4. Preserve the difference between a formal asymptotic scattering symbol, a finite regulator, and an intrinsic continuum/Fock construction.

# Bottom line

This is a strong high-priority methods paper for the vault. Its finite and formal algebra is coherent, and the Murua example is computationally reproducible. The result should be cited as a gauge-fixed asymptotic phase-space derivation under explicit semiclassical assumptions, not as a completed interacting or spinning SW quantization and not as a proof of dynamical gluing.
