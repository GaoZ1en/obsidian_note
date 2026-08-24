---
paper id: 2608.18205v1
title: A generating functional for infrared-safe QED amplitudes
authors:
  - Martin Ammon
  - Konrad Brandts
  - Federico Capone
  - Jakob Hollweck
publication date: 2026-08-18T18:00
abstract: |-
  The paper constructs a holomorphic coherent-state generating functional for massive-QED scattering amplitudes dressed by Faddeev--Kulish photon clouds and the Coulomb phase. At finite soft regulator it is obtained by differential dressing operators acting on the Aref'eva--Faddeev--Slavnov functional; at tree level it reduces to the ordinary AFS path integral with charge-sector-dependent dressed boundary data.
comments: ""
url: https://arxiv.org/abs/2608.18205v1
summary: "A useful boundary-data representation of FK dressing whose all-loop infrared safety remains conditional on the underlying operator prescription and order of limits."
tags: []
---

# Direct verdict

Correct under the following precise conditions: at finite infrared cutoff and finite asymptotic times, the displayed coherent-state functional is the kernel of the formally FK-conjugated Dyson operator, and functional differentiation reproduces the corresponding dressed Fock-sector matrix elements. Its tree-level reduction to an AFS path integral with dressed boundary sources is supported by the paper's power counting and the explicit leading-soft radiative-current cancellation.

The all-loop statement is more limited. The construction is **formally valid at all loop orders as an operator-generated functional**, but its infrared finiteness is inherited from the chosen Chung/Faddeev--Kulish prescription. It assumes the ordered limits, renormalized ultraviolet sector, convergence of finite-time amplitudes, and the standard higher-order cancellation that the paper explicitly does not recalculate. It is not an independent all-orders proof of the FK S-matrix, a nonperturbative definition of charged scattering, or yet a gravitational/celestial boundary action.

See [[2026_08_20_overview]] for today's queue and cross-paper placement.

# Source map

## Section I — infrared problem and target

The ordinary Dyson S-matrix in four-dimensional theories with long-range interactions is infrared divergent. Inclusive rates are finite but do not retain amplitude-level information about soft sectors. Faddeev--Kulish dressings replace bare charged asymptotic states by coherent soft clouds, while the Aref'eva--Faddeev--Slavnov construction packages amplitudes in a holomorphic coherent-state functional with mixed early/late boundary data. The paper combines these two constructions.

## Section II — QED coherent-state conventions

Electron, positron, and covariant-gauge photon coherent states are defined with unnormalized holomorphic displacement operators. Their labels are independent Grassmann variables in the fermion sector and complex variables in the photon sector. Rescaled functional derivatives insert creation or annihilation operators with the Lorentz-invariant one-particle measures.

## Section III — dressed generating functional

The source defines the FK operator, promotes the charge densities and photon operators to differential operators on the coherent-state kernel, resolves the result into fixed hard-charge sectors, and evaluates the photon displacement. The answer separates a free photon kernel, normalized cloud overlap, one-particle cloud factors, shifted interaction symbol, and Coulomb phases.

## Section IV — tree-level path integral

At tree level, the Coulomb phases, cloud-overlap normalization, and shift of the interacting normal symbol first contribute one loop later. Only the single-particle cloud factors remain. They can be absorbed into the asymptotic fermion boundary sources of the ordinary AFS path integral; the gauge-field frequency data remain undressed in this representation.

## Section V — radiative-current example

A source derivative inserts an off-shell current, while coherent-state derivatives select two on-shell electron legs and one on-shell photon. The two bulk emission diagrams produce the standard leading soft pole; differentiating the cloud factors produces the opposite pole, so the dressed current has no \(\omega_q^{-1}\) term.

## Section VI — conclusions and open extensions

The paper proposes adiabatic/asymptotic-dynamics refinements, linearized-gravity and subleading-soft extensions, a null-infinity representation-theory interpretation, and a relation to the quantum effective action. These are future directions.

# Coherent-state dictionary

## Measures and metric

The conventions are mostly-plus,

\[
p^2=-m^2,
\qquad
\widetilde{d^3p}=\frac{d^3\mathbf p}{(2\pi)^3,2E_{\mathbf p}},
\qquad
\widetilde{d^3k}=\frac{d^3\mathbf k}{(2\pi)^3,2\omega_{\mathbf k}}.
\]

The covariant photon oscillators obey

\[
[a_\mu(\mathbf k),a_\nu^\dagger(\mathbf k')]
=(2\pi)^3,2\omega_{\mathbf k}\,\eta_{\mu\nu}
\delta^{(3)}(\mathbf k-\mathbf k').
\]

Thus the coherent-state space is initially the covariant-gauge indefinite oscillator space. Physical-state or BRST/Gupta--Bleuler reduction is not developed in the Letter.

## Holomorphic kernels

For a bosonic mode,

\[
|z\rangle=e^{a^\dagger z}|0\rangle,
\qquad
\langle\bar z|z'\rangle=e^{(\bar z,z')}.
\]

The paper uses unnormalized holomorphic states. Functional derivatives are scaled by the invariant measure so that, for example,

\[
\delta_{z^\mu(\mathbf k)}|z_\gamma\rangle
=a_\mu^\dagger(\mathbf k)|z_\gamma\rangle.
\]

Setting all coherent labels to zero after differentiation projects onto the desired Fock sector.

# Faddeev--Kulish input

## Dressing operator

The hard charge density is

\[
\rho(\mathbf p)=d_s^\dagger(\mathbf p)d^s(\mathbf p)
-b_s^\dagger(\mathbf p)b^s(\mathbf p).
\]

The photon-cloud operator is

\[
R_f=e\int\widetilde{d^3k}\,\widetilde{d^3p}
\left(f^\mu(p,k)a_\mu^\dagger(\mathbf k)-\mathrm{h.c.}\right)
\rho(\mathbf p),
\]

with

\[
f^\mu(p,k)=\left(\frac{p^\mu}{p\cdot k}-c^\mu(k)\right)\phi(p,k),
\qquad c\cdot k=1,
\qquad \phi\to1\quad(\omega_k\to0).
\]

The condition \(k_\mu f^\mu=0\) follows immediately. The profile \(\phi\) and finite soft scale \(\Lambda_s\) are not fixed by cancellation of the leading infrared divergence.

The operator is regulated in

\[
\lambda_s\leq\omega_k\leq\Lambda_s.
\]

The required order is: calculate at finite regulator, take the large-time limit and select the Fock sector, then remove \(\lambda_s\).

## Coulomb phase

The phase is quadratic in the hard charge density,

\[
\Phi(t)=\frac{e^2}{8\pi}\int\widetilde{d^3p}\,\widetilde{d^3q}
\frac{p\cdot q}{\sqrt{(p\cdot q)^2-m^4}}
\rho(\mathbf p)\rho(\mathbf q)
\int^t\frac{d\tau}{|\tau|}.
\]

The paper keeps non-normal-ordered densities, assuming ultraviolet renormalization without deleting the infrared self-energy terms. It interprets \(\Phi\) as the central phase accumulated along the underlying time-dependent displacement path.

# Dressed AFS functional

## Operator definition

Let \(\mathcal S[\bar\alpha,\beta;t]\) be the coherent-state kernel of the finite-time Dyson operator. The dressed functional is

\[
\begin{aligned}
\mathcal S^{\rm FK}[\bar\alpha,\beta;t]
=&\ e^{-i\overrightarrow\Phi_{\rm out}}
e^{\overrightarrow R_{\rm out}}
\mathcal S[\bar\alpha,\beta;t]\\
&\times e^{-\overleftarrow R_{\rm in}}
e^{i\overleftarrow\Phi_{\rm in}}.
\end{aligned}
\]

The arrows matter because the fermionic derivatives are Grassmann-valued and the incoming and outgoing operators act on opposite sides.

The amplitude extraction rule is

\[
\mathcal M^{\rm FK}_{m,n}
=\lim_{|t|\to\infty,\lambda_s\to0}
\left[
\prod_{j=1}^m\overrightarrow\delta_{\bar\alpha(\mathbf q_j)}
\mathcal S^{\rm FK}
\prod_{i=1}^n\overleftarrow\delta_{\beta(\mathbf p_i)}
\right]_{\bar\alpha=\beta=0},
\]

with sector selection before removing the soft regulator.

## Fixed-charge-sector evaluation

The coherent charge-density operators act diagonally after expanding in fermionic labels. In a fixed hard sector they become c-number signed momentum sums. The outgoing photon displacement becomes

\[
\overrightarrow R_{{\rm out},h}
=e\int\widetilde{d^3k}
\left[
\bar\alpha_\mu F_{\rm out}^\mu
-\bar F_{{\rm out},\mu}\overrightarrow\delta_{\bar\alpha_\mu}
\right],
\]

where

\[
F_{\rm out}^\mu(k)=\int\widetilde{d^3p}\,
\rho_{\rm out}(p)f^\mu(p,k).
\]

For a finite oscillator analogue,

\[
e^{e(\bar\alpha F-\bar F\partial_{\bar\alpha})}M(\bar\alpha)
=e^{-e^2\bar FF/2}e^{e\bar\alpha F}
M(\bar\alpha-e\bar F).
\]

This is the origin of the shifted coherent labels and normalized cloud factors.

## Cloud-overlap factorization

Writing the photon kernel as a free overlap times an interaction normal symbol,

\[
\mathcal M[\bar\alpha',\beta']
=e^{(\bar\alpha',\beta')}\mathcal T[\bar\alpha',\beta'],
\]

the dressed kernel becomes

\[
e^{(\bar\alpha,\beta)}\,
\mathcal N\,W_{\rm in}W_{\rm out}\,
\mathcal T[\bar\alpha',\beta'].
\]

Here

\[
\mathcal N
=e^{-e^2(\bar F_{\rm out},F_{\rm out})/2}
e^{e^2(\bar F_{\rm out},F_{\rm in})}
e^{-e^2(\bar F_{\rm in},F_{\rm in})/2}
={}_N\langle F_{\rm out}|F_{\rm in}\rangle_N.
\]

If the leading incoming and outgoing soft profiles differ, their squared distance behaves as \(\int_{\lambda_s}^{\Lambda_s}d\omega/\omega\), so \(|\mathcal N|\to0\). This is the coherent-state expression of soft-sector superselection, not a nonzero transition amplitude between inequivalent sectors.

# Tree-level path-integral reduction

## Power counting

For a connected QED graph with \(V\) cubic vertices, \(E_f\) external fermions, and \(E_\gamma\) external photons,

\[
L=\frac12(V-E_f-E_\gamma)+1.
\]

The phase and overlap exponents begin at \(e^2\) without adding coherent-state legs; the shift of \(\mathcal T\) similarly raises the loop order. At tree level only the individual \(W_{\rm in/out}\) cloud factors remain.

## Dressed boundary data

The tree functional becomes an ordinary AFS functional evaluated on dressed fermionic labels,

\[
\mathcal S_{\rm tree}^{\rm FK}[\bar\alpha,\beta;t]
=\mathcal S[\bar\alpha_W,\beta_W;t].
\]

For an incoming electron,

\[
\beta_{1,W}(p)=\beta_1(p)
e^{e(\bar\alpha_\gamma,f(p))}
e^{-e(\bar f(p),\beta_\gamma)}.
\]

The semiclassical path-integral representation is

\[
\mathcal S_{\rm tree}^{\rm FK}[\varphi_i,\varphi_f]
=\int_{\varphi_i,\varphi_f}\mathcal D\bar\psi\mathcal D\psi\mathcal DA\,
e^{i(I+I_{\rm bdry})}.
\]

The positive-frequency Dirac data are fixed at the initial slice and the negative-frequency data at the final slice, with their coherent labels multiplied by \(W\). The corresponding photon frequency data remain undressed. In Feynman gauge,

\[
\begin{aligned}
I_{\rm bdry}={}&-(\bar\psi_<,\psi)_{\Sigma_f}
+(\bar\psi_>,\psi)_{\Sigma_i}\\
&+(A_<^\mu,A_\mu)_{\Sigma_f}
-(A_>^\mu,A_\mu)_{\Sigma_i}.
\end{aligned}
\]

Additional terms are required in a generic gauge. The boundary data are hard-charge-sector dependent; therefore this is not a single local, sector-independent boundary action beyond tree level.

# Radiative-current soft check

The example has two on-shell electrons \(p_1,p_2\), one on-shell soft photon \(q\), and an off-shell current insertion with momentum

\[
k=p_1-p_2-q.
\]

It is not a complete standalone scattering amplitude. A complete target process must also include target emission, absorption, and target dressing.

The two bulk electron-line orderings produce

\[
\mathcal H^{\mu\rho(2)}
=P^\rho\mathcal H^\mu+O(\omega_q^0),
\qquad
P^\rho=e\left(
\frac{p_2^\rho}{p_2\cdot q}
-\frac{p_1^\rho}{p_1\cdot q}
\right).
\]

Differentiating the incoming and outgoing cloud factors gives

\[
\mathcal H^{\mu\rho(1)}=-S^\rho\mathcal H^\mu,
\qquad
S^\rho=e[f^\rho(p_2,q)-f^\rho(p_1,q)].
\]

For \(\phi(p,q)=1\), the two \(c^\rho(q)\) terms cancel and \(S^\rho=P^\rho\). Hence

\[
\lim_{\omega_q\to0}\omega_q\mathcal H_{\rm FK}^{\mu\rho}(k,q)=0.
\]

This checks the leading real soft pole at tree level. It does not test subleading soft terms, virtual infrared logarithms, Coulomb phases, or the full target amplitude.

# Translation into the vault's boundary and asymptotic language

1. **Boundary data rather than a new boundary degree of freedom:** the FK cloud is absorbed into charge-sector-dependent asymptotic source data at tree level. The construction does not introduce a dynamical corner mode or a new boundary symplectic form.
2. **Soft-sector labels:** the vanishing overlap of distinct leading clouds is the relevant superselection statement. It should not be conflated with a proof that the Dyson Hilbert space itself contains all charged sectors.
3. **Large gauge structure:** the introduction explains the infrared triangle, but the paper does not compute a large-gauge charge algebra or memory observable from the new functional.
4. **Gravity boundary:** linearized-gravity dressings are cited as motivation and extension. No gravitational constraint, BMS charge, Wald form, or nonlinear metric boundary condition is derived here.
5. **Gluing comparison:** the early/late AFS data define a mixed-frequency variational problem. This is potentially useful language for scattering gluing, but it is not the user's finite-interface CPS gluing theorem and supplies no interface factorization map.

# Verification log

## Checked

- The official 9-page PDF and complete 651-line TeX source were retrieved. PDF pages 3--8 were rendered; the central generating-functional, shift, tree-boundary, and soft-current formulas agree with the source.
- Mathematica verified the finite-mode Weyl-displacement identity through order \(e^6\) for a generic cubic test kernel, reproducing the shift and \(e^{-e^2\bar FF/2}\) normalization.
- Mathematica returned zero for the normalized-cloud-overlap factorization
  \[
  \mathcal N_{\rm oo}\mathcal N_{\rm oi}\mathcal N_{\rm ii}
  =e^{-e^2(F_{\rm out}-F_{\rm in})^2/2}
  \]
  in a real one-mode reduction.
- Mathematica reproduced \(k\cdot f=0\) from \(c\cdot k=1\), the QED graph loop-counting identity, and the exact leading-soft cancellation \(P^\rho-S^\rho=0\) for \(\phi=1\).
- The radial part of a mismatched cloud norm was independently reduced to \(\tfrac12\log(\Lambda_s/\lambda_s)\), confirming the logarithmic orthogonality mechanism when the leading profiles differ.

## Source-derived

- The all-loop functional identity follows algebraically from taking the coherent-state kernel of the FK-conjugated finite-time Dyson operator.
- Infrared finiteness beyond the checked tree soft pole is inherited from the cited Chung/FK operator formalism; the Letter does not independently recalculate it.
- The Coulomb phase as an accumulated central/geometric phase is a source interpretation consistent with Weyl displacement composition, not a separately evaluated scattering observable here.

## Blocked

- A direct higher-loop test is blocked by design: the source provides no loop integral, renormalization prescription beyond the stated assumption, finite-time regulator implementation, or numerical/analytic benchmark for the shifted interaction symbol.
- A complete physical-state audit in covariant gauge is blocked by the absence of an explicit Gupta--Bleuler or BRST projection for the coherent photon kernel.
- The order-of-limits assumption—that finite-cutoff finite-time amplitudes converge to the intended FK amplitudes—is not proved in the source and cannot be tested from the supplied archive.

## Failed

- None in the independently checked finite-mode, power-counting, overlap, transversality, and leading-soft targets.

## Not independently verified

- Nonperturbative existence and unitarity of the dressed scattering operator are not established.
- The claim of an all-loop infrared-safe generating functional is conditional on the adopted FK prescription, ultraviolet renormalization, regulator order, and known operator cancellations.
- Extensions to linearized gravity, subleading soft dressings, soft effective actions, null-infinity representation theory, and quantum effective actions remain proposals.

# Reusable takeaways

- The clean structural formula is: fixed hard sector \(\rightarrow\) c-number soft profile \(F\) \(\rightarrow\) Weyl shift of photon coherent labels \(\rightarrow\) overlap, single-particle cloud factors, and shifted interaction symbol.
- At tree level the cloud can be implemented as dressed fermion boundary sources in the ordinary AFS variational problem.
- For any later gravity adaptation, preserve the order of limits and separate three tasks: constraint-compatible dressing, physical-state projection, and proof of infrared cancellation.
