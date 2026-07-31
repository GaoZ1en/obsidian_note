---
paper id: 2607.27732v1
title: A comparison of two constructions for dynamical corrections to Wald entropy
authors:
  - Sayantani Bhattacharyya
  - Parthajit Biswas
  - Nilay Kundu
publication date: 2026-07-30T06:15
abstract: |-
  The paper compares a boost-weight construction of off-equilibrium black-hole entropy, denoted S_Wall, with a linearized covariant-phase-space/Noether-charge construction, denoted S_dyn. It derives S_dyn=(1-v∂_v)S_Wall at linear order, gives a local recursive inverse subject to a bifurcation-surface consistency condition, and demonstrates the relation in Riemann-squared gravity while explaining why linear agreement does not determine a nonlinear completion.
comments: "18 pages + appendices"
url: https://arxiv.org/abs/2607.27732v1
summary: "A careful bridge between boost-weight entropy and a Wald--Iyer horizon charge, with a usable inverse algorithm and a sharp warning that the two prescriptions agree only at linear amplitude."
tags: []
---

Back to [[2026_07_31_overview]].

This is a high-priority monograph-mode reading because it does more than compare two final entropy formulas. It reconstructs the maps

\[
E_{vv}
\longrightarrow S_{\rm Wall},
\qquad
(Q_\xi,\Theta)
\longrightarrow S_{\rm dyn},
\]

and then asks when the linear differential relation

\[
S_{\rm dyn}
=(1-v\partial_v)S_{\rm Wall}+O(\epsilon^2)
\]

can be inverted locally. The result is valuable precisely because the paper keeps the approximation mismatch visible: \(S_{\rm dyn}\) is a first-order perturbative object around a stationary horizon, while the construction of \(S_{\rm Wall}\) retains a particular nonlinear completion.

## How to read this long paper

Read Section 2 first for the two constructions, then Section 3 for the inverse algorithm. Section 4 and Appendix D provide the decisive Riemann-squared test. Appendix B tests the horizon-potential identity for the full curvature-squared basis; Appendix C isolates the zero-boost obstruction in a physical-process argument; Appendix E shows concretely why the nonlinear completion is not fixed.

The paper's symbol \(\mathcal J^i\) is an entropy current, not the CPS symplectic current \(\omega=\delta\theta\). Keeping that distinction prevents a misleading identification.

## Source structure

- **Section 1: Introduction.** Positions \(S_{\rm Wall}\) and \(S_{\rm dyn}\) as two off-equilibrium extensions of stationary Wald entropy based on different approximation schemes.
- **Section 2: Comparative construction.**
  - Reorganizes the positive-boost part of the horizon equation \(E_{vv}\) into a boost-weight entropy current and defines \(S_{\rm Wall}\).
  - Derives the Noether-charge/presymplectic-potential expression for \(S_{\rm dyn}\).
  - Shows that both are sourced by the same linearized \(E_{vv}\), yielding the differential relation.
- **Section 3: Constructing \(S_{\rm Wall}\) from \(S_{\rm dyn}\).**
  - Displays the formal nonlocal inverse and the bifurcation-surface regularity condition.
  - Converts negative boost weights on a stationary background into explicit powers of \(v\).
  - Solves a finite triangular recursion from the highest power down.
  - Identifies the single lowest-order consistency condition with a Noether-charge/presymplectic-potential identity.
- **Section 4: Riemann-squared gravity.**
  - Reconstructs \(\Theta^r,Q^{rv},Q^{ri}\) and the horizon entropy current.
  - Computes \(S_{\rm dyn}\), separates zero-boost and JKM sectors, and applies the inverse recursion.
  - Recovers the known \(S_{\rm Wall}\).
- **Section 5: Discussion.** Emphasizes locality versus the formal integral inverse, one- versus two-\(\partial_v\) evolution, teleology, covariance, and nonlinear ambiguity.
- **Appendix A: Notation.** Boost weights, positive-factor counting, \(rv\)-jet grading, and the two horizon extrinsic curvatures.
- **Appendix B: Four-derivative integrability.** Checks the local horizon primitive for \(R_{abcd}^2\), \(R_{ab}^2\), and \(R^2\).
- **Appendix C: Physical-process first law.** Explains why zero-boost terms are not generically a difference of state functions before linearization about one stationary endpoint.
- **Appendix D: Component details.** Gaussian-null calculations of \(\Theta^r,Q^{rv},Q^{ri}\).
- **Appendix E: Nonlinear toy model.** Exhibits a continuous ambiguity in nonlinear completions with the same linearized entropy.

## Horizon data and approximation scheme

The Gaussian-null horizon is \(r=0\), \(v\) is affine along its generators, and

\[
\xi=v\partial_v-r\partial_r
\]

is the boost generator. The bifurcation surface is \(v=0\). A horizon cut is \(\Sigma_v\) with metric \(h_{ij}\), assumed closed whenever an integrated spatial divergence is discarded.

The metric is split as

\[
g=\bar g+\epsilon\,\delta g,
\]

where \(\bar g\) is stationary and \(\delta g\) is an arbitrary, possibly off-shell perturbation of first order in amplitude. Equalities connecting the two entropies hold through \(O(\epsilon)\); terms with at least two positive-boost factors are \(O(\epsilon^2)\) only after this background split.

The extrinsic data are

\[
K_{ij}=\frac12\partial_vh_{ij},
\qquad
\bar K_{ij}=\frac12\partial_rh_{ij},
\tag{A.2}
\]

with

\[
K=\partial_v\log\sqrt h,
\qquad
\bar K=\partial_r\log\sqrt h.
\]

The notation has three independent gradings:

- \(A_{(n)}\): boost weight \(n\);
- \(A^{\{n\}}\): exactly \(n\) positive-boost factors;
- \(A^{[n]}\): an equilibrium coefficient with at least \(n\) \(rv\)-derivatives. The logically precise notation would be \(A^{[\ge n]}\).

## Two constructions from the same horizon equation

The boost-weight construction rearranges the one-positive-factor part of \(E_{vv}\) into

\[
E_{vv}^{\{1\}}
=-\partial_v
\left[
\frac1{\sqrt h}\partial_v(\sqrt h\,\mathcal J^v)
+\nabla_i\mathcal J^i
\right]
+O(\epsilon^2),
\]

and defines \(S_{\rm Wall}\) by integrating the entropy density \(\mathcal J^v\) over \(\Sigma_v\). Its construction is algebraic in boost weights and does not itself require truncating the expression at first order, although the second-law interpretation does.

The covariant construction starts from the Noether identity for a diffeomorphism-invariant Lagrangian:

\[
\delta L
=E^{ab}\delta g_{ab}+d\theta(g;\delta g),
\]

\[
J_\xi
=\theta(g;\mathcal L_\xi g)-\iota_\xi L
=dQ_\xi+C_\xi.
\]

On the horizon it requires a local object \(\mathcal B^r\) satisfying

\[
\delta\mathcal B^r
=\Theta^r(\bar g,\delta g)
\]

at linear order, up to the density convention. The dynamical entropy is

\[
S_{\rm dyn}
=2\pi\int_{\Sigma_v}\sqrt h
\left(Q^{rv}-v\mathcal B^r\right).
\tag{3.17}
\]

After integrating the same horizon equation over a closed cut, the two currents obey

\[
\partial_v
\left[(1-v\partial_v)S_{\rm Wall}\right]
=\partial_vS_{\rm dyn}+O(\epsilon^2).
\]

Stationary matching fixes the \(v\)-independent term:

\[
S_{\rm dyn}
-(1-v\partial_v)S_{\rm Wall}
=O(\epsilon^2).
\tag{2.26}
\]

The split into equilibrium and one-positive-factor sectors is

\[
\begin{aligned}
S_{\rm dyn}&=S_{\rm dyn}^{\rm zero}
+S_{\rm dyn}^{\rm rest},\\
S_{\rm Wall}&=S_{\rm Wall}^{\rm zero}
+S_{\rm Wall}^{\rm rest},
\end{aligned}
\tag{2.27}
\]

with

\[
S_{\rm dyn}^{\rm zero}=S_{\rm Wall}^{\rm zero},
\tag{2.28}
\]

\[
S_{\rm dyn}^{\rm rest}
=-v\partial_vS_{\rm Wall}^{\rm zero}
+(1-v\partial_v)S_{\rm Wall}^{\rm rest}
+O(\epsilon^2).
\tag{2.29}
\]

The “rest” sector contains the off-equilibrium JKM ambiguity. Equality of the zero-boost terms does not fix the nonlinear JKM completion.

## Formal inverse and bifurcation regularity

Treating the relation as an ordinary differential equation gives

\[
\begin{aligned}
S_{\rm Wall}(v)
&=-v\int dv\,\frac{S_{\rm dyn}(v)}{v^2}
+Cv+O(\epsilon^2)\\
&=S_{\rm dyn}(v)
+v\int dv\,\frac{\partial_vS_{\rm dyn}(v)}v
+Cv+O(\epsilon^2).
\end{aligned}
\tag{3.1}
\]

If

\[
S_{\rm dyn}=s_0+s_1v+s_2v^2+\cdots,
\]

the inverse contains

\[
-s_1v\log v.
\]

Regularity at \(v=0\) therefore requires

\[
\left.\partial_vS_{\rm dyn}\right|_{v=0}=0.
\]

The horizon equation gives this condition when \(\delta E_{vv}\) is finite, since \(v\delta E_{vv}\sim\partial_vS_{\rm dyn}\). The homogeneous \(Cv\) term lies in the kernel of \(1-v\partial_v\); the source displays it but does not fully connect its removal to the later demand for a local, covariant expression with no arbitrary explicit-\(v\) term.

The formal integral is nonlocal along the generator. The core achievement of Section 3 is to replace it by a finite local recursion for a finite-derivative theory.

## Stationarity converts negative boost weight into powers of \(v\)

A term of boost weight \(w\) with one positive factor is decomposed as

\[
T_{(w)}
=\sum_{m=0}^M A_{(-m)}B_{(m+w)}.
\tag{3.2}
\]

On the stationary background,

\[
(v\partial_v-m)A_{(-m)}|_{r=0}=0,
\]

so

\[
A_{(-m)}|_{r=0}
=v^mA^{[m]}.
\tag{3.3}
\]

Hence

\[
T_{(w)}
=\sum_{m=0}^Mv^mA^{[m]}B_{(m+w)}.
\tag{3.4}
\]

Only the equilibrium coefficient \(A^{[m]}\) is \(v\)-independent. The perturbative factor \(B_{(m+w)}\) retains arbitrary implicit dependence on \(v\). Equating explicit powers is therefore a statement about the boost/jet grading for arbitrary perturbations, not an ordinary Taylor expansion.

## The triangular local inverse

Write

\[
S_{\rm Wall}
=\sum_{m\ge0}v^mS^{[m]}T_{(m)}
+O(\epsilon^2),
\]

\[
S_{\rm dyn}
=\sum_{m\ge0}v^m
\widetilde S^{[m]}\widetilde T_{(m)}
+O(\epsilon^2).
\tag{3.5}
\]

Applying \(1-v\partial_v\), including implicit \(v\)-dependence, gives

\[
\begin{aligned}
0={}&S^{[0]}T_{(0)}
+\sum_{m\ge1}v^m
\left[
(1-m)S^{[m]}T_{(m)}
-S^{[m-1]}\partial_vT_{(m-1)}
\right]\\
&-\sum_{m\ge0}v^m
\widetilde S^{[m]}\widetilde T_{(m)}.
\end{aligned}
\tag{3.6}
\]

The first two equations are

\[
\widetilde S^{[0]}\widetilde T_{(0)}
=S^{[0]}T_{(0)},
\]

\[
\widetilde S^{[1]}\widetilde T_{(1)}
=-\partial_v
\left(S^{[0]}T_{(0)}\right).
\tag{3.7}
\]

Thus the input must obey

\[
\left.\partial_vS_{\rm dyn}\right|_{v=0}
=
\widetilde S^{[1]}\widetilde T_{(1)}
+\partial_v
\left(\widetilde S^{[0]}\widetilde T_{(0)}\right)
=0.
\tag{3.8}
\]

For \(n\ge2\),

\[
\widetilde S^{[n]}\widetilde T_{(n)}
=(1-n)S^{[n]}T_{(n)}
-\partial_v
\left[S^{[n-1]}T_{(n-1)}\right].
\tag{3.9}
\]

In a \(2N+2\)-derivative theory, the source assumes the Wall correction has at most \(2N\) derivatives. The recursion starts at the highest explicit power:

\[
\widetilde S^{[N+1]}\widetilde T_{(N+1)}
=-\partial_v
\left[S^{[N]}T_{(N)}\right],
\]

then solves downward for \(S^{[N]},S^{[N-1]},\ldots,S^{[1]}\). The \(v^0\) equation fixes \(S^{[0]}\), and the \(v^1\) equation is the sole consistency condition.

Locality at each step relies on the highest-weight term having enough unpaired \(\partial_v\)'s to be a total derivative. The paper motivates this by derivative counting but does not supply a general covariant integration-by-parts theorem or uniqueness classification.

## The consistency condition as a CPS identity

The earlier horizon identity used by the paper is, after integrating over a closed \(\Sigma_v\),

\[
\Theta_1
-W^{rv}_v
-\partial_v\widetilde Q^{rv}
=0.
\tag{3.11}
\]

The expansions

\[
\widetilde Q^{rv}
=\sum_{m\ge0}v^mP^{[m]}Q_{(m)},
\]

\[
W^{rv}_v
=\sum_{m\ge0}v^mV^{[m]}W_{(m+1)},
\]

\[
\Theta_1
=\sum_{m\ge0}v^m\alpha^{[m]}\beta_{(m+1)}
\tag{3.13}
\]

give at \(v^0\)

\[
\alpha^{[0]}\beta_{(1)}
=V^{[0]}W_{(1)}
+P^{[1]}Q_{(1)}
+\partial_v(P^{[0]}Q_{(0)}).
\tag{3.15}
\]

Writing

\[
\int_{\Sigma_v}\sqrt h\,\mathcal B^r
=\sum_{m\ge0}v^mb^{[m]}c_{(m+1)},
\tag{3.16}
\]

the regularity condition becomes

\[
P^{[1]}Q_{(1)}
+V^{[0]}W_{(1)}
-b^{[0]}c_{(1)}
+\partial_v(P^{[0]}Q_{(0)})
=0.
\tag{3.20}
\]

Compatibility therefore requires

\[
\alpha^{[0]}\beta_{(1)}
=b^{[0]}c_{(1)}.
\tag{3.21}
\]

The paper attributes this to

\[
\delta\Theta^r(g,\mathcal L_\xi g)
=\Theta^r(\bar g,\mathcal L_\xi\delta g)
=\mathcal L_\xi\Theta^r(\bar g,\delta g)
=(1+v\partial_v)\delta\mathcal B^r.
\tag{3.22}
\]

The bifurcation regularity condition is thus the \(v^0\) projection of a stronger Noether-charge/presymplectic-potential identity.

## Riemann-squared gravity: CPS data

For the normalization

\[
L=R^{abcd}R_{abcd},
\]

the horizon identity is

\[
2\sqrt{-\bar g}\,v\,\delta E_{vv}
=
\partial_v\delta
\left[
\sqrt{-g}
\left(Q^{rv}-v\mathcal B^r\right)
\right]
+\partial_i\delta
\left(\sqrt{-g}Q^{ri}\right).
\tag{4.1}
\]

Appendix D starts from

\[
\Theta^\mu
=
4R^{\mu\rho\nu\sigma}
D_\sigma\delta g_{\nu\rho}
-4(D_\sigma R^{\mu\nu\rho\sigma})
\delta g_{\nu\rho}.
\tag{D.1}
\]

In horizon gauge, positive-boost background components vanish and

\[
\Theta^r
=8R^{rjiv}\delta K_{ij}.
\tag{D.12}
\]

The corresponding local primitive is

\[
\mathcal B^r
=8R^{rjiv}K_{ij}.
\tag{4.3--4.4}
\]

The Noether-potential components are

\[
\begin{aligned}
Q^{rv}
={}&-8v
\left[
(\partial_v+K)R^{rvrv}
-\bar K_{ij}R^{rjri}
-K_{ij}R^{jvri}
+\nabla_iR^{rvri}
\right]\\
&+8R^{rvrv}
+O(\epsilon^2),
\end{aligned}
\tag{4.2}
\]

\[
Q^{ri}
=
8R^{rirv}
-8v\partial_vR^{rirv}
-8v\nabla_jR^{rirj}
-8v\omega_jR^{rirj}
+O(\epsilon^2).
\tag{4.2}
\]

Both components contribute to the entropy current

\[
\mathcal J^i
=-4h^{ij}\partial_v\omega_j
+4\nabla_jK^{ij}.
\tag{4.7}
\]

It drops out only after integration on a closed cut. If \(\partial\Sigma_v\neq\varnothing\), it becomes an explicit edge/corner term and must be retained.

## Riemann-squared entropy relation

After using Riemann pair symmetry, the CPS construction gives

\[
S_{\rm dyn}
=16\pi\int_{\Sigma_v}
\left[
(1-v\partial_v)
\left(\sqrt h\,R^{rvrv}\right)
+v\sqrt h\,\bar K_{ij}R^{rjri}
\right].
\tag{4.9}
\]

The Gaussian-null curvature identity and stationarity imply

\[
v\partial_v\bar K^{ij}|_{r=0}
=\bar K^{ij}|_{r=0}+O(\delta g),
\]

so

\[
S_{\rm dyn}
=16\pi(1-v\partial_v)
\int_{\Sigma_v}\sqrt h
\left(
R^{rvrv}
+\bar K^{ij}K_{ij}
\right).
\tag{4.10}
\]

The boost-weight construction gives

\[
S_{\rm Wall}
=16\pi\int_{\Sigma_v}\sqrt h
\left(
R^{rvrv}
+\bar K^{ij}K_{ij}
\right),
\tag{4.11}
\]

and therefore

\[
S_{\rm dyn}
=(1-v\partial_v)S_{\rm Wall}
+O(\epsilon^2).
\tag{4.13}
\]

The source uses a sign for \(\mathcal J^v\) opposite to one cited reference because its entropy-current identity has the opposite overall convention. It states this explicitly; it is not an internal sign failure.

Using

\[
R^{rvrv}=X+\frac14\omega^2,
\]

the zero/rest split becomes

\[
S_{\rm dyn}^{\rm zero}
=16\pi\int\sqrt h\,R^{rvrv},
\]

\[
S_{\rm dyn}^{\rm rest}
=-16\pi v\partial_v
\int\sqrt h\,R^{rvrv}
+16\pi(1-v\partial_v)
\int\sqrt h\,\bar K^{ij}K_{ij}.
\tag{4.15}
\]

The Wall rest term is simply

\[
S_{\rm Wall}^{\rm rest}
=16\pi\int\sqrt h\,\bar K^{ij}K_{ij}.
\tag{4.17}
\]

This explicitly locates the off-equilibrium JKM contribution.

## Running the inverse in the four-derivative example

Writing the stationary background as a function of \(rv\) and a prime for \(\partial_{rv}\), the input coefficients are

\[
\widetilde S^{[0]}\widetilde T_{(0)}
=16\pi\int\sqrt h
\left(X+\frac14\omega^2\right),
\]

\[
\widetilde S^{[1]}\widetilde T_{(1)}
=-16\pi\int\partial_v
\left[
\sqrt h
\left(X+\frac14\omega^2\right)
\right],
\]

\[
\widetilde S^{[2]}\widetilde T_{(2)}
=16\pi\int
\frac14\sqrt h\,h^{\prime ij}
\partial_v^2h_{ij}.
\tag{4.22}
\]

The first two satisfy the required consistency equation:

\[
\widetilde S^{[1]}\widetilde T_{(1)}
+\partial_v
\left(
\widetilde S^{[0]}\widetilde T_{(0)}
\right)
=0.
\tag{4.23}
\]

Since this is a four-derivative theory, \(N=1\). At linear order,

\[
\widetilde S^{[2]}\widetilde T_{(2)}
=16\pi\int\partial_v
\left[
\frac14\sqrt h\,h^{\prime ij}
\partial_vh_{ij}
\right]
+O(\epsilon^2).
\tag{4.24}
\]

The \(v^2\) equation fixes

\[
S^{[1]}T_{(1)}
=-16\pi\int
\frac14\sqrt h\,h^{\prime ij}
\partial_vh_{ij},
\tag{4.25}
\]

and the \(v^0\) equation fixes

\[
S^{[0]}T_{(0)}
=16\pi\int\sqrt h
\left(X+\frac14\omega^2\right).
\tag{4.26}
\]

Restoring the explicit \(v\) yields

\[
\begin{aligned}
S_{\rm Wall}
&=16\pi\int\sqrt h
\left[
X+\frac14\omega^2
-\frac14v\,h^{\prime ij}\partial_vh_{ij}
\right]\\
&=16\pi\int\sqrt h
\left(
R^{rvrv}
+\bar K^{ij}K_{ij}
\right).
\end{aligned}
\tag{4.27}
\]

The recursion therefore reproduces the independently known Wall expression.

## Curvature-squared horizon-potential checks

Appendix B tests

\[
\delta\Theta^r(g,\mathcal L_\xi g)
=(1+v\partial_v)\delta\mathcal B^r
\tag{B.1}
\]

for the three four-derivative curvature invariants.

For \(R_{abcd}R^{abcd}\),

\[
\mathcal B^r
=8R_{vijr}K^{ij},
\qquad
\delta\mathcal B^r
=8R_{vijr}\delta K^{ij},
\tag{B.5--B.7}
\]

and the source reduces the potential to

\[
\delta\Theta^r
=8(1+v\partial_v)
\left(R_{vijr}\delta K^{ij}\right).
\tag{B.8--B.11}
\]

For \(R_{ab}R^{ab}\),

\[
\mathcal B^r
=-2
\left(
R^{ij}K_{ij}+R_{vr}K
\right),
\tag{B.12}
\]

\[
\delta\Theta^r
=2(1+v\partial_v)
\left(
-R^{ij}\delta K_{ij}
-R_{rv}\delta K
\right).
\tag{B.14}
\]

For \(R^2\),

\[
\mathcal B^r=-4RK,
\qquad
\Theta^r=-4(1+v\partial_v)(RK).
\tag{B.15--B.17}
\]

This appendix is not fully self-contained: its \(\mathcal B\) and explicit potential formulas are imported from earlier references, and all multi-positive-factor terms are discarded. It verifies the identity at linear amplitude, not nonlinearly.

## Zero-boost terms and the physical-process endpoint

Appendix C writes the one-positive-factor contribution as

\[
\mathfrak T^{(1)}
=
\underbrace{\partial_v
\left(A_{(0)}\partial_vB_{(0)}\right)}
_{\text{zero boost}}
+\partial_v^2
\sum_{m\ge1}A_{(-m)}B_{(m)}.
\tag{C.1}
\]

For a generic dynamical metric, both zero-weight factors depend on \(v\), and the first term is not a local total second derivative. Integrating \(vE_{vv}\) between stationary endpoints gives

\[
\int dv\,vE_{vv}\big|_{\rm zero}
\sim
-\int dv\,
A_{(0)}\partial_vB_{(0)}.
\tag{C.2}
\]

Only after expanding about one equilibrium does \(A_{(0)}\) become fixed:

\[
\int dv\,
A_{(0)}\partial_vB_{(0)}
=A^{\rm eq}_{(0)}
[B_{(0)}]_{v_i}^{v_f}.
\tag{C.3}
\]

With two nearby stationary endpoints,

\[
\delta S_{\rm dyn}(v_f)
-\delta S_{\rm dyn}(v_i)
=S_{\rm dyn}[\bar g_f]
-S_{\rm dyn}[\bar g_i]
+O(\delta g^2).
\tag{C.4--C.6}
\]

Thus the physical-process state-function statement is linearized. Before choosing the background endpoint, the zero-boost term is not by itself a difference of one nonlinear state function.

## Nonlinear completion is not fixed

Appendix E considers

\[
S_{\rm Wall}^{\rm zero}=f(h_{ij}),
\qquad
S_{\rm Wall}^{\rm rest}
=\alpha(\partial_vh_{ij})(\partial_rh^{ij}).
\tag{E.4}
\]

An ansatz for the Noether and horizon-potential pieces introduces a second coefficient \(\beta\). Matching the linear horizon equation fixes

\[
\gamma_1=-1,\qquad
\gamma_3=-\beta,\qquad
\gamma_2=-\alpha,
\tag{E.10}
\]

but leaves \(\alpha\) and \(\beta\) independently free. The mismatch is

\[
(1-v\partial_v)S_{\rm Wall}
-S_{\rm dyn}
=(\alpha-\beta)
\left[
(1-v\partial_v)\partial_rh^{ij}
\right]
\partial_vh_{ij}.
\]

The bracketed factor vanishes on the stationary background, so all \(\alpha,\beta\) give the same linear relation. It does not vanish for a generic dynamical metric. This is the paper's cleanest demonstration that agreement at the entropy endpoint does not validate a nonlinear derivation or select a unique JKM completion.

## Translation into the vault's CPS language

Use the chain

\[
S[g]
\longrightarrow
\delta S
=E\cdot\delta g+d\theta
\longrightarrow
\theta
\longrightarrow
\omega=\delta\theta.
\]

Here \(\Theta^a\) is the tensor-density representative of \(\theta\), and \(Q^{ab}_\xi\) is the dual tensor representative of the Noether-charge \((D-2)\)-form \(Q_\xi\). The local horizon primitive \(\mathcal B^r\) satisfies

\[
\delta(\sqrt{-g}\mathcal B^r)
=\sqrt{-\bar g}\,\Theta^r
\]

on the stationary background at linear order. The combination

\[
Q^{rv}_\xi-v\mathcal B^r
\]

is the horizon Hamiltonian density for the boost generator.

\(S_{\rm Wall}\) is a boost-weight/second-law representative of the JKM ambiguity; \(S_{\rm dyn}\) is a first-variation, background-dependent Noether-charge representative. The paper does not construct the full \(\omega=\delta\theta\), establish Hamiltonian integrability for a family of horizon symmetries, compute a charge algebra, or analyze nonintegrable flux.

The discarded \(\nabla_i\mathcal J^i\) is precisely where a finite cut with a boundary would acquire an additional corner term. Any transfer to finite-region or edge-mode work must restore it before comparing entropy representatives.

## Verification log

### Checked

- **Formal inverse and kernel:** Mathematica applied \(1-v\partial_v\) to a generic quartic \(S_{\rm Wall}\), inverted the result with \(-v\int dv\,S_{\rm dyn}/v^2\), and recovered every term except \(a_1v\), the expected homogeneous kernel.
- **Bifurcation logarithm:** for \(S_{\rm dyn}=s_0+s_1v+s_2v^2+s_3v^3\), Mathematica returned
  \[
  S_{\rm Wall}
  =s_0-s_1v\log v-s_2v^2-\frac12s_3v^3+Cv,
  \]
  so regularity independently forces \(s_1=\partial_vS_{\rm dyn}|_0=0\).
- **Triangular recursion:** Mathematica expanded a generic finite sum \(\sum_{m=0}^4v^mT_m(v)\) and verified exactly that applying \(1-v\partial_v\) produces the coefficient rule in Eq. 3.6, including the derivative of the implicit \(v\)-dependence.
- **Linear-order total derivative in Eq. 4.24:** writing the stationary coefficient as \(p_0+\epsilon p_1(v)\) and \(\partial_vh=\epsilon q'(v)\), Mathematica found that
  \[
  \partial_v[p\,\partial_vh]-p\,\partial_v^2h
  =\epsilon^2p_1'(v)q'(v),
  \]
  confirming that the omitted derivative is \(O(\epsilon^2)\), not identically zero.
- **Riemann-squared first variation:** xAct independently varied \(R_{abcd}R^{abcd}\). Its total-derivative term contains
  \[
  4R^{\mu\rho\nu\sigma}\nabla_\sigma\delta g_{\nu\rho}
  -4(\nabla_\sigma R^{\mu\nu\rho\sigma})\delta g_{\nu\rho},
  \]
  reproducing the two terms and coefficients in Eq. D.1. The xAct run used the undensitized scalar, so its “total derivative” warning concerns the missing volume density, not the potential structure.
- **Riemann symmetries and contractions:** xAct canonicalization verified pair exchange
  \[
  R_{abcd}=R_{cdab},
  \]
  and metric contraction to \(R_{bd}\) and \(R\), supporting the cancellation and normalization steps used in Section 4.
- The PDF pages containing the Riemann-squared chain and Appendix B were rendered and visually inspected; equation labels, index placements, and the printed \(\xi_r\) typo below were confirmed from the page images rather than trusted to text extraction.

### Blocked

- The complete Gaussian-null reductions of \(\Theta^r,Q^{rv},Q^{ri}\) were not independently reproduced. They require the paper's full horizon component conventions, boost truncation rules, and several curvature identities imported from reference [29].
- Appendix B imports both \(\mathcal B^r\) and the explicit curvature-squared potentials from earlier references. The run verified the universal Riemann-squared first-variation structure but not every horizon component for all three invariants.
- The general claim that the highest term in every finite \(2N+2\)-derivative theory is locally \(\partial_v\)-integrable is motivated by derivative counting, not supplied as a general constructive theorem; it remains unproved beyond the displayed class.
- Independence of the explicit-\(v\) boost/jet grading for arbitrary perturbations is used by the recursion but not formalized in the paper.
- No quadratic entropy-production sign, nonlinear second law, or unique nonlinear JKM completion is established.

### Failed

- **Appendix D coordinate component:** Eq. D.15 prints \(\xi_r=r\). With
  \[
  \xi=v\partial_v-r\partial_r
  \]
  in Gaussian-null coordinates, the horizon calculation requires \(\xi_r=v\). The following equations themselves use \(D_v\xi_r=1\), confirming that the printed component is a typo.
- **Appendix D metric notation:** Eq. D.2 uses \(w_i\), whereas the defined field and all subsequent component formulas use \(\omega_i\).
- **Appendix E prose:** after Eq. E.10 the source says that coefficients of \(\partial_vh\) and \(\partial_v^2h\) fix the remaining parameters; the displayed algebra actually uses \(\partial_vh\) and \(\partial_v^3h\).
- **Notation defects:** Eq. 3.21 switches defined square brackets \([0]\) to parentheses \((0)\); Eq. 3.11 changes \(\widetilde Q^{rv}\) to \(\widetilde Q_{rv}\). These do not alter the intended algebra but should be corrected before transcription.
- **Unqualified exact equalities:** Eq. 1.5 and Eq. 4.24 are displayed more strongly than the derivation permits. The former is valid only through \(O(\epsilon)\); the latter drops a product that the independent check shows is \(O(\epsilon^2)\). They are correct under the paper's linear-amplitude truncation, not as exact nonlinear identities.

The verified conclusion is therefore precise: subject to a stationary Gaussian-null background, a closed horizon cut, finite derivative order, existence of the local horizon primitive, and linear-amplitude truncation, the paper gives a coherent local inversion from \(S_{\rm dyn}\) to \(S_{\rm Wall}\) and reproduces the Riemann-squared answer. It does not prove equality of nonlinear completions.
