---
paper id: 2609.04016v1
title: Quasi-local form for alpha-z Renyi QNEC from fixed-ray escorts
authors:
  - Tanay Kibe
  - Pratik Roy
publication date: 2026-09-03T15:54:31
abstract: |-
  Starting from a fixed-ray representation of alpha-z Renyi divergence as an average of ordinary relative entropies, the paper derives regulated modular-energy/entropy and Holevo decompositions, perturbative entanglement laws, ball bounds, and a complete null-shape Hessian. The diagonal alpha-z QNEC remains conjectural in general; its quasi-local rewriting contains an escort-transport term because escort formation need not commute with regional restriction. A coherent free-scalar family gives an explicit positive test.
comments: "v1: 45 pages"
url: https://arxiv.org/abs/2609.04016v1
summary: "A careful exact/conjectural separation: fixed-ray and transport identities are solid in their regulated domain, while the general alpha-z QNEC is explicitly only a conjecture and the local pieces need not survive cutoff removal separately."
tags: []
---

Daily overview: [[2026_09_04_overview]]

# Verdict

**Correct under the following precise conditions:** the fixed-ray states satisfy the stated support and finiteness hypotheses; the QFT calculation is performed in a common UV regulator admitting regional density matrices, smooth identifications of nearby regional state spaces, fixed support, and interchange of shape derivatives with the escort integral; and continuum claims are restricted to combinations whose common-regulator limits exist.

The modular-energy--entropy decomposition, Holevo decomposition, full bilocal shape-Hessian identity, and coherent-state calculation follow under those conditions. A noncommuting $2\times2$ Mathematica test reproduces the fixed-ray and Holevo identities to $6\times10^{-17}$.

**Not proved in general:**

$$
(D_{\alpha,z})''_{++}[V;y]\geq0.
$$

The authors correctly label this the diagonal $\alpha$--$z$ Rényi QNEC conjecture. They verify it only for one coherent free-scalar family in the finite-divergence part of the upper data-processing region. The “quasi-local QNEC” is therefore an exact rewriting of a conjectured positivity statement, not a new general proof of QNEC.

Reason codes: `T1-boundary`, `T1-symplectic`, `T2-dS-BH-holography`, `T3-math`.

# Why this paper matters for regional structure

The central bridge is not a new entropy name. It is the distinction between two operations:

1. restrict $(\rho,\sigma)$ to a moving region $R[V]$, then form the fixed-ray escort;
2. form some global auxiliary state first, then restrict it to $R[V]$.

These operations do not commute in general. The paper isolates the resulting failure in an explicit transport term $\mathfrak X_{\alpha,z;++}$. This is exactly why the Rényi QNEC is not simply an average of ordinary QNEC inequalities for a family of fixed global states.

# Source map

1. **§1 Introduction and summary:** states the exact fixed-ray input, the regulated QFT outputs, the conjectural null convexity, and the continuum limitations.
2. **§2 Integral representation:** defines the characteristic ray $c=z/\alpha$, the escorts $\rho_\beta^{(c)}$, the probability measure $\mu_\alpha$, support conditions, and the boundary-corrected lower-$\alpha$ formula.
3. **§2.2 Modular-energy--entropy and Holevo decompositions:** rewrites $D_{\alpha,z}$ as both an escort-averaged free energy and ordinary relative entropy of the escort barycenter plus a nonnegative Holevo term.
4. **§3 Escort-averaged entanglement laws:** derives stationarity, an averaged first law, the averaged BKM information metric, and vacuum-ball Bekenstein-type inequalities at fixed regulator.
5. **§4 Null shape variations:** derives the full bilocal Hessian, separates diagonal and off-diagonal parts, defines escort transport, and states the diagonal $\alpha$--$z$ QNEC as a conjecture.
6. **§5 Free-scalar coherent escorts:** diagonalizes the escort action in modular frequency, computes the sandwiched transport term, and verifies positive $\alpha$--$z$ Hessian for a rational current profile.
7. **§6 Summary:** sharply limits the test family and lists squeezed, mixed, finite-particle, and transversely correlated states as open tests.
8. **Appendix:** records the Fréchet derivatives used in the density-matrix response formulas.

# Fixed-ray representation

For faithful finite-dimensional density matrices, define

$$
D_{\alpha,z}(\rho\Vert\sigma)
=\frac{1}{\alpha-1}
\log\operatorname{Tr}
\left(
\sigma^{\frac{1-\alpha}{2z}}
\rho^{\frac{\alpha}{z}}
\sigma^{\frac{1-\alpha}{2z}}
\right)^z,
$$

with

$$
c=\frac z\alpha.
$$

Along the characteristic ray $(\beta,c\beta)$, the escort state is

$$
\rho_\beta^{(c)}
=\frac{
\left(
\sigma^{\frac{1-\beta}{2c\beta}}
\rho^{1/c}
\sigma^{\frac{1-\beta}{2c\beta}}
\right)^{c\beta}
}{
\operatorname{Tr}\left(
\sigma^{\frac{1-\beta}{2c\beta}}
\rho^{1/c}
\sigma^{\frac{1-\beta}{2c\beta}}
\right)^{c\beta}
}.
$$

For $\alpha>1$,

$$
d\mu_\alpha(\beta)
=\frac{\alpha}{\alpha-1}\frac{d\beta}{\beta^2},
\qquad \beta\in[1,\alpha],
$$

and the input identity is

$$
D_{\alpha,z}(\rho\Vert\sigma)
=\int_{1}^{\alpha}
D(\rho_\beta^{(c)}\Vert\sigma)
\,d\mu_\alpha(\beta).
$$

The paper emphasizes that an intrinsic version exists for normal states on arbitrary von Neumann algebras using Araki relative entropy. That operator-algebraic formula is the regulator-independent statement. The entropy and modular-energy splitting used later is not separately intrinsic on a Type-III local algebra.

# Exact decompositions

Define the escort barycenter and averaged entropy

$$
\overline\rho_{\alpha,z}
=\int\rho_\beta^{(c)}d\mu_\alpha(\beta),
$$

$$
S_{\alpha,z}^{\mathrm{esc}}
=\int S(\rho_\beta^{(c)})d\mu_\alpha(\beta).
$$

Then

$$
D_{\alpha,z}(\rho\Vert\sigma)
=\operatorname{Tr}
\left[(\overline\rho_{\alpha,z}-\sigma)K_\sigma\right]
-\left(S_{\alpha,z}^{\mathrm{esc}}-S(\sigma)\right),
$$

where $K_\sigma=-\log\sigma$.

Equivalently,

$$
D_{\alpha,z}(\rho\Vert\sigma)
=D(\overline\rho_{\alpha,z}\Vert\sigma)
+\chi_{\alpha,z}^{\mathrm{esc}},
$$

with

$$
\chi_{\alpha,z}^{\mathrm{esc}}
=\int D\left(
\rho_\beta^{(c)}\Vert\overline\rho_{\alpha,z}
\right)d\mu_\alpha(\beta)\geq0.
$$

The second formula is the useful bookkeeping identity: replacing the whole escort ensemble by its barycenter loses exactly the Holevo term.

# Perturbative entanglement laws

For

$$
\rho_A(\varepsilon)
=\sigma_A+\varepsilon X_A+\varepsilon^2Y_A+O(\varepsilon^3),
$$

the first derivative vanishes:

$$
\left.
\frac{d}{d\varepsilon}
D_{\alpha,z}(\rho_A(\varepsilon)\Vert\sigma_A)
\right|_{\varepsilon=0}=0.
$$

At second order,

$$
D_{\alpha,z}
=\frac{\varepsilon^2}{2}
\int
\operatorname{Tr}\left[
\xi_{\beta,c;A}
\mathcal T_{\sigma_A}(\xi_{\beta,c;A})
\right]
d\mu_\alpha(\beta)
+O(\varepsilon^3),
$$

where $\xi_{\beta,c;A}$ is the linearized escort and

$$
\mathcal T_\sigma(U)
=D(\log)_\sigma[U]
=\int_0^\infty
(\sigma+t)^{-1}U(\sigma+t)^{-1}dt.
$$

Thus the information metric is an escort average of BKM forms. In the data-processing region it has the appropriate monotonicity interpretation; outside that region the algebraic second-order formula still exists but should not automatically be called a monotone quantum Fisher metric.

# Vacuum-ball bound

For a CFT vacuum reduced to a ball,

$$
K_{\sigma_B}
=2\pi\int_Bd^{d-1}x\,
\frac{R^2-|\mathbf x|^2}{2R}T_{00}(\mathbf x)
$$

up to an additive constant. Nonnegativity of each relative-entropy integrand yields an escort-averaged Bekenstein-type bound. Both its energy and entropy sides belong to the auxiliary escort ensemble; it is not a direct energy bound for the original state $\rho_B$.

# Null-shape identity

Let $R[V]$ be the causal completion of the portion of the null plane satisfying

$$
x^+>V(y),
$$

and let $\rho_V,\sigma_V$ be the restricted excited and vacuum states. The centered vacuum modular Hamiltonian is

$$
H[V]
=2\pi\int d^{d-2}y
\int_{V(y)}^\infty du\,
(u-V(y))T_{++}(u,0,y).
$$

Its two shape derivatives isolate

$$
H_{;y}=-2\pi P_+[V;y],
$$

$$
H_{;yy'}
=2\pi T_{++}(V(y),0,y)
\delta_\perp(y-y').
$$

The paper first derives the full bilocal identity. Its diagonal contact part is

$$
\begin{aligned}
(D_{\alpha,z})''_{++}[V;y]
={}&2\pi
\langle T_{++}(V(y),0,y)\rangle_{overline\eta_{\alpha,z}[V]}\\
&-(\mathcal S_{\alpha,z}^{\mathrm{esc}})''_{++}[V;y]
+S''_{\sigma,++}[V;y]
+\mathfrak X_{\alpha,z;++}[V;y].
\end{aligned}
$$

The energy is evaluated in the moving escort barycenter, not the original state.

# Escort transport

Writing $\eta_{\beta,c;y}$ and $\eta^{(2)}_{\beta,c;++}$ for the first and diagonal second shape responses of the moving escort, the transport term is

$$
\mathfrak X_{\alpha,z;++}(y)
=\int d\mu_\alpha(\beta)
\left\{
\operatorname{Tr}
[\eta^{(2)}_{\beta,c;++}(y)H]
-2\pi\mathcal C_{\beta,c;++}(y)
\right\},
$$

where $\mathcal C$ pairs the first escort response with the half-ray energy operator.

If every escort were the restriction of a fixed global state, with a compatible local modular-energy realization for nearby cuts, then

$$
\mathfrak X_{\alpha,z;++}=0.
$$

Generically it is nonzero because the nonlinear power-map construction of the escort is performed after restriction and changes as the regional algebra changes.

This is the most reusable result of the paper: the obstruction is a second regional-response term, not a new local stress tensor.

# Exact identity versus conjectured inequality

In the upper data-processing region

$$
\max\{\alpha/2,\alpha-1\}\leq z\leq\alpha,
\qquad \alpha>1,
$$

the paper conjectures

$$
(D_{\alpha,z})''_{++}[V;y]\geq0.
$$

Combining that conjecture with the exact identity gives

$$
2\pi\langle T_{++}\rangle_{\overline\eta_{\alpha,z}}
\geq
(\mathcal S_{\alpha,z}^{\mathrm{esc}})''_{++}
-S''_{\sigma,++}
-\mathfrak X_{\alpha,z;++}.
$$

This implication is correct, but its logical status is conditional. On the sandwiched line $z=\alpha$, it becomes the corresponding Rényi QNEC form. The paper notes that the sandwiched positivity is proved only in specified free-field and modular-inclusion regimes; noninteger $\alpha>1$ remains open in general.

The off-diagonal Hessian contains no local $T_{++}$ contact term. Accordingly, no off-diagonal QNEC-type bound follows from the same decomposition, and the paper cites the existing no-go result rather than overclaiming one.

# Coherent free-scalar test

On a null fibre, the derivative of a free scalar gives a chiral current $J(u)$ with

$$
T_{++}(u)=\frac12:J(u)^2:.
$$

For the rational restricted profile

$$
j_\rho(u)=\frac{qg}{(u+g)^2},
$$

completed outside the relevant half-lines to remove the global zero mode, the sandwiched escort has profile

$$
j_{\beta,V}(V+x)
=\frac{qg\beta^2}{(g+V)^2}
\frac{(x/(g+V))^{\beta-1}}
{[1+(x/(g+V))^\beta]^2}.
$$

Its relative entropy is

$$
E_\beta[V]
=\frac{\pi q^2g^2\beta^3}{6(g+V)^2}.
$$

Fixed-ray averaging gives

$$
D_\alpha(\rho_V\Vert\sigma_V)
=\frac{\pi q^2g^2}{12(g+V)^2}
\alpha(\alpha+1),
$$

and hence

$$
D_\alpha''[V]
=\frac{\pi q^2g^2}{2(g+V)^4}
\alpha(\alpha+1)>0.
$$

For every fixed $\alpha>1$, the escort-averaged boundary energy vanishes and the entropy terms cancel, so the entire Hessian is carried by transport:

$$
D_\alpha''[V]
=\mathfrak X^{\mathrm s}_{\alpha,++}[V].
$$

This concrete example proves that $\mathfrak X$ is not dispensable bookkeeping.

For general $z$, the result takes the form

$$
D_{\alpha,z}(\rho_V\Vert\sigma_V)
=\frac{q^2g^2}{(g+V)^2}
\mathcal A^{\mathrm{coh}}_{\alpha,z},
$$

$$
\mathcal A^{\mathrm{coh}}_{\alpha,z}
=\frac{z}{\pi(\alpha-1)}
\int_0^\infty ds\,
\frac{s\sinh(\alpha s/z)
\sinh((\alpha-1)s/z)}
{\sinh^2s\,\sinh(s/z)}.
$$

The coefficient is positive and finite precisely when

$$
z>\alpha-1.
$$

Thus this family verifies the conjecture only in the finite-divergence portion of the parameter region. At $z=\alpha-1$, including $(\alpha,z)=(2,1)$, the divergence of this state is infinite; this is a domain obstruction, not a counterexample.

# Continuum and regulator limits

The paper handles this boundary carefully:

- the Type-III fixed-ray relative-entropy integral is intrinsic;
- von Neumann entropies and modular-energy pieces are separately regulator dependent;
- the full regulated Hessian identity is exact at common cutoff;
- removing the cutoff term by term requires additional existence assumptions;
- away from $c=1$, the coherent example can have singular boundary profiles even when total modular energy is finite, so the paper assigns no regulator-independent meaning to the separate local-energy and transport pieces there;
- the limits $\alpha\downarrow1$ and distance-to-cut $x\downarrow0$ do not commute in the coherent example.

No continuum representation theorem for moving escorts, no general QNEC proof, and no statement about arbitrary correlated states follows from the finite-regulator identities.

# Independent checks

## Noncommuting two-level test

For

$$
\rho=
\begin{pmatrix}
0.70&0.16\\
0.16&0.30
\end{pmatrix},
\qquad
\sigma=
\begin{pmatrix}
0.58&-0.09\\
-0.09&0.42
\end{pmatrix},
$$

with $(\alpha,z)=(1.4,1.2)$, Mathematica gives

$$
D_{\alpha,z}=0.21410415072968,
$$

while direct numerical fixed-ray integration gives

$$
\int D(\rho_\beta^{(c)}\Vert\sigma)d\mu_\alpha
=0.21410415072968.
$$

The residual is

$$
5.6\times10^{-17}.
$$

The Holevo decomposition residual is

$$
3.7\times10^{-17}.
$$

## Coherent integral checks

Mathematica verifies exactly

$$
\int_1^\alpha\frac{d\beta}{\beta^2}
\frac{\sinh^2a}{\sinh^2(a/\beta)}
=\frac{\sinh a\,\sinh(a-a/\alpha)}
{a\sinh(a/\alpha)}
$$

for $a>0$, $\alpha>1$. At $(\alpha,z)=(3/2,3/2)$, numerical integration reproduces

$$
\mathcal A^{\mathrm{coh}}_{\alpha,\alpha}
=\frac{\pi\alpha(\alpha+1)}{12}
$$

with zero displayed residual. Mathematica also returns zero for the second-derivative identity

$$
\frac{d^2}{dV^2}
\frac{q^2g^2}{(g+V)^2}
=\frac{6q^2g^2}{(g+V)^4}.
$$

# Verification record

**Verified:** complete 46-page generated PDF and TeX source inspected; PDF pages 5, 24, 35, and 38 rendered and visually checked; noncommuting fixed-ray identity and Holevo identity checked numerically; the key $\beta$ integral, sandwiched coefficient, and cut-Hessian derivative checked in Mathematica.

**Assumptions:** faithful or constant-support regional density matrices at fixed regulator; uniform invertibility on support near the cut; smooth regional identifications; differentiability and interchange with the escort integral; the standard local vacuum modular Hamiltonians for balls and null cuts; finite common-regulator limits where continuum pieces are quoted.

**Not verified:** the companion paper's full operator-algebraic proof; every Fréchet kernel in the appendix; the null-current normalization from first principles; the complete oscillator-to-direct-integral construction; QNEC positivity beyond the explicit coherent family; regulator independence of separate quasi-local terms away from the sandwiched slice; the holographic outlook.

# Questions for reuse

1. Can $\mathfrak X$ be formulated directly as a defect of a restriction/intertwining diagram at the von Neumann algebra level?
2. Does the transport term admit a sign, cocycle, or relative-modular interpretation for half-sided modular inclusions?
3. Which moving-escort families arise as restrictions of fixed global states, making $\mathfrak X=0$?
4. What changes for transversely correlated Gaussian states, where the off-diagonal Hessian is nontrivial?
5. Can the common-regulator total Hessian be isolated without assigning independent continuum values to entropy, local energy, and transport?

