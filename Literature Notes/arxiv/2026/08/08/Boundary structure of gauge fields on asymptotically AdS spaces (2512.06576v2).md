---
paper id: 2512.06576v2
title: Boundary structure of gauge fields on asymptotically AdS spaces
authors:
  - Maxim Grigoriev
  - Mikhail Markov
publication date: 2025-12-06T21:39
abstract: |-
  The paper formulates asymptotically AdS gravity and probe gauge fields as gauge PDEs with the boundary-defining function included among the fields. A new Q-boundary construction restricts simultaneously to the spacetime boundary and the field-space locus where the defining function vanishes. The resulting recursive boundary calculus produces leading obstruction equations and generalized conservation equations for subleading fields, including scalar GJMS-type systems and higher conformal Yang--Mills equations through an explicit d=8 example.
comments: "62 pages"
url: https://arxiv.org/abs/2512.06576v2
summary: "A gauge-covariant replacement for coordinate Fefferman--Graham expansions that cleanly separates boundary source, response, obstruction, and conservation sectors, but remains at equations-of-motion/BRST level rather than constructing CPS charges."
tags: []
---

Back to [[2026_08_08_overview]].

# Why this paper is high priority

This is directly useful for the vault's AdS boundary, BRST, alternative-quantization, and source/response work. Its strongest contribution is not a new charge formula. It is a finite recursive language for the full boundary field content before choosing a radial gauge:

\[
\text{bulk gauge PDE}
\longrightarrow
Q\text{-boundary}
\longrightarrow
\text{leading conformal sector}
\ltimes
\text{subleading response sector}.
\]

The output has the triangular form

\[
\mathcal O_{\mathrm{lead}}[\text{source}]=0,
\qquad
\mathcal O_{\mathrm{sub}}[\text{source},\text{response}]=0.
\]

The paper does **not** construct a Lagrangian, a renormalized presymplectic current, boundary flux, Hamiltonians, or a charge algebra. Its ``stress tensor'' and ``current'' language is structural: the subleading fields transform and obey Ward-like equations in the correct way, but no canonical normalization as holographic one-point functions is derived.

# How to read this long paper

The paper is best read in four passes.

1. Sections 2--3 define the gauge-PDE and conformal-like Einstein system. The indispensable objects are the homological vector field \(Q\), the boundary-defining field \(\Omega\), the ideal of equations, and the covariant target-space derivatives \(\nabla,\Delta,\Gamma\).
2. Sections 4--5 build the gravity boundary calculus. The resonance at normal order \(D-3\) is the source of the Fefferman--Graham obstruction/response split.
3. Section 6 repeats the same construction for a scalar and Yang--Mills field. The scalar resonance gives the two AdS falloffs, while the Yang--Mills resonance gives a current-like subleading one-form.
4. Appendices A--F contain essential proofs rather than optional details: the Einstein-ideal induction, \(Q\)-action on normal jets, parity theorem, and the explicit \(d=8\) conformal Yang--Mills conversion.

# Source structure map

- **Section 1:** motivation and the claim that a boundary gauge theory should include both leading and subleading bulk data.
- **Section 2:**
  - 2.1 gauge PDEs, solutions as \(Q\)-maps, and gauge transformations;
  - 2.2 restriction to boundaries and the new \(Q\)-boundary;
  - 2.3 implicit gauge PDEs \((E,Q,\mathcal I)\);
  - 2.4 conformal-like gravity with compensator \(\Omega\).
- **Section 3:**
  - 3.1 pre-minimal equivalent reduction;
  - 3.2 target-space covariant derivatives and their commutators;
  - 3.3 derivative ideals and curvature coordinates.
- **Section 4:**
  - 4.1 normal-order calculus on the boundary;
  - 4.2 the \(Q\)-corner and boundary gravity;
  - 4.3 induced Einstein ideal and its resonant generator;
  - 4.4 the off-shell quotient \(\widehat E\);
  - 4.5 recursive boundary calculus.
- **Section 5:** odd/even boundary dimensions and the metric-like solution-space realization.
- **Section 6:** general probe fields, Klein--Gordon scalar, and Yang--Mills.
- **Section 7:** conclusions and explicit acknowledgment that the construction is at equation-of-motion level.
- **Appendix A:** proof of the subleading Einstein-equation theorem.
- **Appendix B:** \(Q\)- and \(\Gamma\)-actions on \(T^{(N)}_{AB}\).
- **Appendix C:** formulas for \(J^{(N)}_{ABC}\) and the normal commutator vector fields.
- **Appendix D:** parity-vanishing induction.
- **Appendix E:** abstract \(d=8\) Yang--Mills calculation.
- **Appendix F:** metric-like \(d=4,6,8\) Yang--Mills equations.

# Fields, indices, and conventions

The dimensions are

\[
D=\dim X\geq4,
\qquad
d=D-1=\dim\Sigma\geq3.
\]

The physical and unphysical metrics are related by

\[
\widetilde g_{ab}=\Omega^{-2}g_{ab},
\qquad
\widetilde\Lambda
=\frac{2\Lambda}{(D-1)(D-2)}=-\ell^{-2}
\]

for AdS radius \(\ell\). The signature convention is \((+,-,\ldots,-)\), although the formal construction is signature-independent.

Indices and fields:

- \(a,b,\ldots\): bulk adapted-frame indices;
- \(A,B,\ldots\): tangential boundary-frame indices;
- \(\Omega\): both the defining field and the distinguished normal-frame label;
- \(\xi^a\): diffeomorphism ghost;
- \(\lambda\): Weyl ghost;
- \(C_a{}^b=D_a\xi^b\) and \(\lambda_a=D_a\lambda\): reduced degree-one coordinates;
- \(\mathrm W_{abcd}\), \(\mathrm C_{abc}\): Weyl and Cotton tensors; \(C_a{}^b\) must not be confused with \(\mathrm C_{abc}\).

The covariant target-space vector fields are

\[
\nabla_a=\left[\frac{\partial}{\partial\xi^a},Q\right],
\quad
\Delta^a{}_b=\left[\frac{\partial}{\partial C_a{}^b},Q\right],
\quad
\Gamma^a=\left[\frac{\partial}{\partial\lambda_a},Q\right],
\quad
\Delta=\left[\frac{\partial}{\partial\lambda},Q\right].
\tag{3.9--3.10}
\]

These are not automatically the Levi--Civita derivatives of a chosen boundary metric. Their metric-like realization contains connection and Schouten terms.

Normal jets mean

\[
f^{(N)}=(\nabla_\Omega)^Nf.
\]

They are target-fibre derivatives, not a Taylor expansion in a chosen spacetime radial coordinate.

# Gauge PDEs and the Q-boundary

A gauge PDE is a \(Q\)-bundle

\[
(E,Q)\longrightarrow(T[1]X,d_X).
\]

A field configuration is a section \(\sigma:T[1]X\to E\) satisfying

\[
d_X\circ\sigma^*=\sigma^*\circ Q,
\]

and infinitesimal gauge transformations are

\[
\delta\sigma^*=\sigma^*[Q,Y]
\]

for a vertical degree-\(-1\) vector field \(Y\). An implicit gauge PDE adds a \(Q\)-invariant ideal \(\mathcal I\); its equations are \(\sigma^*(\mathcal I)=0\).

The boundary construction keeps \(\Omega\) as a field and defines the boundary by

\[
\Omega=0,
\qquad
Q\Omega=0,
\qquad
\nabla_a\Omega\neq0.
\tag{4.9}
\]

The second condition is the field-space partner of the spacetime boundary. It is why the construction is called a \(Q\)-boundary rather than merely a restriction to \(\partial X\).

# Conformal-like Einstein equations

The unphysical variables satisfy an almost-Einstein system. The trace-free tensor is

\[
G_{bc}
=D_bD_c\Omega-\Gamma^d{}_{bc}D_d\Omega
+\Omega P_{bc}+\rho g_{bc},
\]

with \(\rho\) chosen so that \(g^{bc}G_{bc}=0\), and the scalar equation is

\[
S=\Omega\rho
+\frac12D_a\Omega D^a\Omega
-\frac{\Lambda}{(D-1)(D-2)}.
\]

On \(\Omega\neq0\), these are equivalent to the Einstein equation for \(\widetilde g=\Omega^{-2}g\). The pre-minimal reduction replaces the full jet presentation by

\[
\{g_{ab},\Omega,\mathrm W_{abcd},
\text{symmetric }\nabla\text{-jets};
\xi^a,C_a{}^b,\lambda,\lambda_a\}.
\]

The key point for later recursion is that the equations and \(Q\)-action are polynomial in \(\Omega\); no negative powers obstruct restriction to \(\Omega=0\).

# Curvature split and normal-order filtration

At the boundary the Weyl tensor decomposes into

\[
\mathrm W_{ABCD},
\qquad
J_{ABC}=\mathrm W_{AB\Omega C},
\qquad
T_{AB}=\mathrm W_{\Omega A\Omega B}.
\]

The Einstein ideal is filtered by normal order,

\[
\mathcal K^{(N)}
=I^{(N)}(G_{ab},\nabla_C)
\cup I^0(S)\cup\mathcal K_B.
\tag{4.11}
\]

At leading order it fixes the normal norm and removes low normal data,

\[
g_{\Omega\Omega}=\widetilde\Lambda,
\qquad
\Omega^{(2)}=0,
\qquad
J_{ABC}=0,
\]

modulo tangential prolongations and the boundary ideal.

Normal and tangential derivatives do not commute. Define

\[
\nu_a^{(N)}
=\operatorname{ad}_{\nabla_\Omega}^{N}
\frac{\partial}{\partial\xi^a},
\qquad
\mathcal D_a^{(N)}=[Q,\nu_a^{(N)}]
=\operatorname{ad}_{\nabla_\Omega}^{N}(\nabla_a).
\tag{4.2--4.3}
\]

Then

\[
[\nabla_\Omega^N,\nabla_A]
=\sum_{i=0}^{N-1}\binom Ni
\mathcal D_A^{(N-i)}\nabla_\Omega^i,
\tag{4.4}
\]

and hence

\[
\nabla_\Omega^N\nabla_Af
=\sum_{i=0}^{N}\binom Ni
\mathcal D_A^{(N-i)}f^{(i)}.
\tag{4.7}
\]

# The D-3 resonance and the off-shell boundary system

The decisive Einstein generators are

\[
O_A^{(j)}=\nabla_\Omega^j(\nabla^BT_{BA}),
\]

\[
O_{AB}^{(j)}
=(D-3-j)T_{AB}^{(j)}
-j\widetilde\Lambda
\nabla_\Omega^{j-1}\nabla^CJ_{CBA}.
\tag{4.31}
\]

For \(j\neq D-3\), the coefficient \(D-3-j\) lets one solve algebraically for \(T_{AB}^{(j)}\). At

\[
j=D-3
\]

that coefficient vanishes. The equation no longer determines the normal jet; it becomes an obstruction on the leading conformal geometry. The undetermined response is

\[
\mathcal T_{AB}=\widehat T_{AB}^{(D-3)}.
\]

The off-shell system \(\widehat E\) is obtained by solving all simple normal equations except this resonant one. A subtle but important point is that \(\widehat E\) is not itself a \(Q\)-submanifold of the original target. Instead:

1. \(E^{(D-3)}\) is a genuine \(Q\)-submanifold;
2. a \(Q\)-closed coordinate subalgebra defines a quotient;
3. \(\widehat E\) is a section of that quotient bundle;
4. its \(Q\)-structure is transported from the quotient.

The resulting field content separates as

\[
\underbrace{\widehat g_{AB},
\nabla_{((A)}\widehat{\mathrm W}^{B}{}_{CD)E}}
_{\text{leading conformal geometry}}
\quad\ltimes\quad
\underbrace{\nabla_{(A)}\mathcal T_{BC}}
_{\text{subleading response}}.
\]

The residual equations are

\[
\mathcal O_{AB}
=\widehat b^*\nabla_\Omega^{D-4}\nabla^CJ_{CBA},
\qquad
\mathcal O_A
=\widehat b^*\nabla_\Omega^{D-3}\nabla^BT_{BA}.
\tag{4.45}
\]

They satisfy

\[
\mathcal O_A{}^A=0,
\qquad
\nabla^A\mathcal O_{AB}=0,
\qquad
\Gamma_A\mathcal O_B
=-\widetilde\Lambda(D-3)\mathcal O_{AB}.
\tag{4.46}
\]

Thus the response conservation equation is Weyl covariant on the obstruction-flat leading sector.

# Recursive gravity boundary calculus

The residual equations can be written without any unspecified normal derivative:

\[
\mathcal O_{AB}
=\nabla^C\widehat J_{CAB}^{(D-4)}
+\sum_{i=0}^{D-5}\binom{D-4}{i}
\mathcal D^{(D-4-i)|C}\widehat J_{CAB}^{(i)},
\tag{4.50}
\]

\[
\mathcal O_A
=\nabla^C\mathcal T_{AC}
+\sum_{i=1}^{D-4}\binom{D-3}{i}
\mathcal D^{(D-3-i)|C}\widehat T_{AC}^{(i)}.
\tag{4.51}
\]

The recursion starts from

\[
\widehat J^{(0)}=0,
\qquad
\widehat J^{(1)}_{ABC}
=-\widetilde\Lambda\widehat{\mathrm C}_{CAB},
\qquad
\widehat T^{(0)}=0,
\qquad
\mathcal D_A^{(0)}=\nabla_A.
\tag{4.57}
\]

For \(1\leq N\leq D-4\),

\[
\widehat T^{(N)}_{BC}
=\frac{N\widetilde\Lambda}{D-3-N}
\widehat b^*\nabla_\Omega^{N-1}\nabla^AJ_{ABC},
\tag{4.55a}
\]

\[
\widehat J^{(N)}_{ABC}
=\frac{N}{N-1}
\widehat b^*\nabla_\Omega^{N-1}
(\nabla_AT_{BC}-\nabla_BT_{AC})
\quad(N\geq2),
\tag{4.55b}
\]

and

\[
\mathcal D_A^{(N)}
=-\widehat J^{(N-1),D}{}_{CA}\Delta^C{}_D
+\frac{1}{\widetilde\Lambda N}
\widehat T^{(N)}_{CA}\Gamma^C
-\frac1N\sum_{i=1}^{N-2}d_N^i
\widehat T^{(i),C}{}_A
\mathcal D_C^{(N-2-i)},
\tag{4.56}
\]

where

\[
d_N^i=\binom Ni(N-1-i).
\]

The parity theorem removes half of this tower:

\[
\widehat T^{(i)}=0,
\qquad
\mathcal D^{(i)}=0,
\qquad
\widehat J^{(i-1)}=0
\quad
(i\text{ odd},\ 1\leq i\leq D-4).
\tag{4.60}
\]

# Odd and even boundary dimensions

## Odd d: unconstrained conformal source and conserved primary response

When \(d\) is odd, \(D\) is even. Parity forces

\[
\mathcal O_{AB}=0,
\qquad
\Gamma_A\mathcal T_{BC}=0,
\qquad
\mathcal O_A=\nabla^B\mathcal T_{BA}.
\tag{5.4--5.6}
\]

The conformal source is unconstrained. The trace-free \(\mathcal T_{AB}\) is a conformal primary obeying ordinary target-space conservation.

In \(d=3\), the boundary Weyl tensor vanishes and the independent \(J^{(1)}\) becomes the three-dimensional Cotton coordinate. This case must not be obtained by naively substituting \(D=4\) into formulas with \(D-4\) denominators.

## Even d: obstruction-flat source and affine response

When \(d\) is even, the leading source is constrained by the Fefferman--Graham obstruction tensor.

For \(d=4\),

\[
\mathcal O_{AB}=\widetilde\Lambda\widehat B_{AB},
\qquad
\mathcal O_A=\nabla^B\mathcal T_{BA}.
\tag{5.8}
\]

The response transforms affinely through Cotton terms, so \(\mathcal T=0\) is not a Weyl-invariant condition on a generic background.

For \(d=6\),

\[
\begin{aligned}
\mathcal O_{BC}
=\frac32\widetilde\Lambda^2\big(&
\nabla^A\nabla_A\widehat B_{BC}
+2\widehat{\mathrm W}_{DCAB}\widehat B^{AD}
+2\widehat{\mathrm C}_{C}{}^{AD}\widehat{\mathrm C}_{BAD}\\
&-4\widehat{\mathrm C}^{D}{}_{B}{}^{A}
\widehat{\mathrm C}_{ACD}\big),
\end{aligned}
\tag{5.12}
\]

and \(\Gamma_A\mathcal T_{BC}\) is a derivative of \(\widehat B_{BC}\). In general even \(d\), the paper proves the principal structure

\[
(\nabla^2)^{(D-5)/2}\widehat B_{AB}
+\text{lower-curvature terms}=0,
\tag{5.21}
\]

but does not provide a closed formula for every lower-curvature term in arbitrary dimension.

# From target-space derivatives to a boundary metric

In metric-like gauge, a section reconstructs the Levi--Civita connection and Schouten tensor. For a general target tensor \(f\),

\[
\sigma^*(\nabla_Af)
=\partial_A\sigma^*f
-\Gamma^B{}_{CA}[g]\,\sigma^*(\Delta^C{}_Bf)
+P_{AB}\,\sigma^*(\Gamma^Bf).
\tag{5.41}
\]

The last term is essential. It generates the Schouten corrections that distinguish target-space conservation from naive Levi--Civita conservation. For example, in \(d=4\),

\[
\nabla_A^g\mathbf T^A{}_B
+2\widetilde\Lambda^2P^{AC}C_{ABC}=0.
\tag{5.45}
\]

This is the safe local interpretation of the response equation. The paper does not globally construct the quotient of all solutions by gauge transformations, nor analyze topology or residual stabilizers.

# Klein--Gordon field and the two AdS weights

Let

\[
\varphi=\Omega^w\widetilde\varphi.
\]

The physical Klein--Gordon equation becomes \(\widetilde P=\Omega^{-w}P\), with

\[
\begin{aligned}
P={}&\Omega^2\nabla_a\nabla^a\varphi
+\Omega\left(c_{w,1}\nabla_a\varphi\nabla^a\Omega
-w(\nabla_a\nabla^a\Omega)\varphi\right)\\
&+\left(w(d+w)\nabla_a\Omega\nabla^a\Omega+m^2\right)\varphi,
\qquad
c_{w,N}=-2w-d+N.
\end{aligned}
\tag{6.12}
\]

The leading equation is trivial when

\[
m^2=-\widetilde\Lambda w(d+w).
\tag{6.15}
\]

With \(\widetilde\Lambda=-\ell^{-2}\), this gives

\[
m^2\ell^2=w(w+d)
=\Delta_-(\Delta_--d),
\qquad
\Delta_-=-w.
\]

Normal equations take the form

\[
\frac{P^{(N)}}{\widetilde\Lambda N}
=c_{w,N}\varphi^{(N)}
+(N-1)\widetilde\Lambda
\nabla_\Omega^{N-2}\nabla_A\nabla^A\varphi
+\mathcal K^{(N-1)}.
\tag{6.16}
\]

If \(c_{w,N}\neq0\) for all positive integers, every higher normal jet is eliminated and only one boundary primary remains. If

\[
N^*=2w+d\in\mathbb Z_{>0},
\]

the equation resonates. The independent fields are

\[
\widehat\varphi=\widehat\varphi^{(0)},
\qquad
\psi=\widehat\varphi^{(N^*)},
\]

with dimensions

\[
\Delta_-=-w,
\qquad
\Delta_+=w+d,
\qquad
\Delta_-+\Delta_+=d,
\qquad
\Delta_+-\Delta_-=N^*.
\]

The scalar obstruction is

\[
\mathcal P
=\widehat b_\varphi^*
\nabla_\Omega^{N^*-2}\nabla_A\nabla^A\varphi.
\tag{6.18}
\]

For even \(N^*=2\ell\), it is an order-\(2\ell\) GJMS-type equation. The examples are:

\[
\ell=1:
\quad
\mathcal P=\nabla^2\widehat\varphi,
\]

\[
\ell=2:
\quad
\mathcal P
=\frac{\widetilde\Lambda}{2}(\nabla^2)^2\widehat\varphi,
\]

\[
\ell=3:
\quad
\frac{8}{3\widetilde\Lambda^2}\mathcal P
=(\nabla^2)^3\widehat\varphi
+\frac{8}{\widetilde\Lambda^2}
\widehat T^{(2)}_{AB}\nabla^A\nabla^B\widehat\varphi.
\tag{6.28}
\]

The last formula shows exactly when the scalar operator starts depending on gravitational response data. The result is local and near-boundary. Interior regularity would instead impose a generally nonlocal Dirichlet-to-Neumann relation between \(\psi\) and \(\widehat\varphi\); that global map is not constructed.

# Yang--Mills leading connection and subleading current

The regular Weyl-covariant bulk equation is

\[
Y_b=(4-D)(\nabla^a\Omega)F_{ab}
+\Omega\nabla^aF_{ab}.
\tag{6.40}
\]

After equivalent reduction,

\[
Q\mathcal C
=-\frac12[\mathcal C,\mathcal C]
+\frac12\xi^a\xi^bF_{ab},
\]

\[
QF_{ab}
=\xi^c\nabla_cF_{ab}
+C_a{}^cF_{cb}
+C_b{}^cF_{ac}
-[\mathcal C,F_{ab}].
\tag{6.41}
\]

The split Bianchi identity is

\[
\nabla_\Omega F_{BC}
=\nabla_BF_{\Omega C}-\nabla_CF_{\Omega B}.
\tag{6.44}
\]

Define

\[
J_A^{(N)}=\nabla_\Omega^NF_{\Omega A}.
\]

The normal equations are

\[
Y_B^{(N)}
=(4-D+N)J_B^{(N)}
+N\widetilde\Lambda
\nabla_\Omega^{N-1}\nabla^AF_{AB}
+\mathcal K^{(N-1)}.
\tag{6.46}
\]

The resonance occurs at \(N=D-4\), leaving

\[
\mathcal J_A=\widehat J_A^{(D-4)}.
\]

The leading obstruction and subleading conservation symbols are

\[
\mathcal Y_B
=\widehat b_{\mathrm{YM}}^*
\nabla_\Omega^{D-5}\nabla^AF_{AB},
\qquad
\mathcal Y
=\widehat b_{\mathrm{YM}}^*
\nabla_\Omega^{D-4}\nabla^AJ_A.
\tag{6.52}
\]

They obey

\[
\nabla^A\mathcal Y_A=0,
\qquad
\Gamma^A\mathcal Y
=-\widetilde\Lambda(D-4)\mathcal Y^A.
\tag{6.63}
\]

For odd \(d\),

\[
\mathcal Y_B=0,
\qquad
\mathcal Y=\nabla^A\mathcal J_A,
\qquad
\Gamma_B\mathcal J_A=0.
\tag{6.65}
\]

For \(d=4\),

\[
\mathcal Y_B=\nabla^A\widehat F_{AB},
\qquad
\mathcal Y=\nabla^A\mathcal J_A,
\qquad
\Gamma_B\mathcal J_A
=\widetilde\Lambda\widehat F_{BA}.
\tag{6.68}
\]

For \(d=6\), the obstruction is a fourth-order conformal Yang--Mills equation. For \(d=8\), equations (6.78)--(6.82) give a new sixth-order equation containing the expected Laplacian, Schouten, Cotton, Bach, and nonabelian commutator terms. The full expression is useful as a reference, but its length also exposes the main limitation of the paper's recursive presentation: the compact target-space calculus is much easier to manipulate than the final metric-like formula.

# Local-formalism translation for this vault

The most useful dictionary is

| Paper object | Vault interpretation | Exact status |
|---|---|---|
| \(\widehat g_{AB}\), conformal curvature jets | boundary source geometry | exact local gauge-PDE identification |
| \(\mathcal T_{AB}\) | stress-tensor-like gravitational response | transformation/conservation structure only; normalization not fixed |
| \(\widehat\varphi,\psi\) | scalar leading/subleading data | local normal-jet statement; no global Dirichlet-to-Neumann map |
| \(A_A,\mathcal J_A\) | gauge source and current-like response | equation/BRST level; not derived as \(\delta S_{\rm ren}/\delta A\) |
| \(\mathcal O_{AB},\mathcal Y_A,\mathcal P\) | source obstructions/integrability conditions | exact within the formal local system |
| \(\mathcal O_A,\mathcal Y\) | Ward-like response equations | exact within the formal local system |
| \(Q\)-bundle over leading sector | BRST organization of sources and responses | exact algebraic structure |
| CPS flux, surface charge, edge mode | absent | requires a new variational/presymplectic enhancement |

For the vault's AdS quantization work, the scalar result reaches the level of a local finite-order source/response tower. It does **not** establish normalizability, a symplectic pairing of the two modes, alternative-quantization admissibility, equality of Fock representations, or an interacting continuum limit.

For charge work, equation (4.46) is a Noether-like compatibility relation inside the equation ideal. It is not a Hamiltonian integrability condition. Calling \(\mathcal T\) a charge density without constructing the presymplectic form would overstate the result.

# Concrete project extensions

1. **CPS enhancement of the gPDE.** Supply a compatible presymplectic current, pull it through the \(Q\)-boundary reduction, and determine whether the leading/subleading fibre is isotropic, coisotropic, or symplectic after counterterms.
2. **Scalar gluing benchmark.** Compare the resonant normal-jet pair \((\widehat\varphi,\psi)\) with the vault's cut scalar variables. The immediate executable claim is equality of the finite-cutoff equations and boundary variation, not Fock equivalence.
3. **Even-dimensional anomaly/obstruction audit.** Test whether the affine Weyl transformation of \(\mathcal T\) matches the anomalous improvement of a renormalized holographic stress tensor in \(d=4\).
4. **Yang--Mills response normalization.** Derive \(\mathcal J_A\) from a renormalized on-shell action and compare its modified conservation equation with the gauge Ward identity.
5. **Null or corner adaptation.** The \(Q\)-boundary idea is not tied to a spacelike/timelike conformal wall, but the paper does not build a null normal calculus. That is a separate project, not a corollary.

# Verification log

## Checked

- **Mathematica — noncommuting normal/tangential binomial coefficients.** The coefficient recurrence underlying (4.4),
  \[
  \binom ni=\binom{n-1}{i}+\binom{n-1}{i-1},
  \]
  and the Appendix B identity
  \[
  \binom ni-n\binom{n-1}{i}
  =-(n-1-i)\binom ni
  \]
  both simplified identically to zero for their integer domains.
- **xAct — Weyl-tensor algebra used by the curvature split.** In five dimensions, trace-freeness, antisymmetry in each pair, and pair exchange for the xAct Weyl tensor all canonicalized to zero residuals. The cyclic Bianchi identity was not counted here because ordinary `ToCanonical` does not impose that multiterm identity automatically.
- **Mathematica — scalar conformal rescaling.** Starting from \(\widetilde g=\Omega^{-2}g\) and \(\widetilde\varphi=\Omega^{-w}\varphi\), the independently expanded Laplacian reproduced the coefficients \(-2w-d+1\) and \(w(w+d)\) in (6.12). The mass/dimension relation, the resonance \(N^*=2w+d\), \(\Delta_-+\Delta_+=d\), and \(\Delta_+-\Delta_-=N^*\) all gave zero residuals.
- **Mathematica — low scalar recursion.** The \(N=2\) recursion in the Paneitz branch gives \(\widehat\varphi^{(2)}=\tfrac12\nabla^2\widehat\varphi\), and the binomial coefficient in the special odd-\(d\), \(w=1\) branch reduces to \((D-2)/2\), as in (6.35)--(6.36).
- **Sage — Yang--Mills/BRST Lie-algebra core.** For the \(\mathfrak{su}(2)\) structure constants, the Chevalley--Eilenberg differential \(Q c^i=-\tfrac12f^i{}_{jk}c^jc^k\) squared to zero on all ghost generators, and all Jacobi residuals vanished.
- **xAct — divergence identity in the abelian tensor sector.** For an antisymmetric two-form, the curvature commutator in \(\nabla_a\nabla_bF^{ab}\) reduces to Ricci contractions, which canonicalize to zero. Combined with antisymmetry under exchange of the derivative dummy indices, this reproduces the geometric part of the identity used in (6.47). The nonabelian bracket part vanishes by antisymmetry/Jacobi and was covered separately by the Sage check.

## Blocked

- **Full \(Q^2=0\) of the reduced gravitational target.** The source does not provide a finite standalone component presentation of every higher curvature jet. Reproducing the full nilpotence proof would require implementing the paper's infinite jet algebra and equivalent reductions, not merely checking a displayed finite expression.
- **Theorem 4.5 in arbitrary dimension.** Low-order coefficient identities were checked, but the complete ideal-membership induction in Appendix A depends on the paper-specific quotient by \(\mathcal K^{(N)}\). No existing xAct representation of that quotient was available, so no arbitrary-order machine proof is claimed.
- **Cyclic Weyl/Cotton identities inside the target calculus.** xAct's monoterm canonicalizer does not automatically impose the needed differential and multiterm Bianchi identities in the paper's target-space \(\nabla\) algebra. The visually and source-confirmed formulas remain source-derived.
- **General six-dimensional FG obstruction formula.** The paper states the principal part for arbitrary even \(d\) and gives the detailed \(d=6\) expression, but comparison with a separately implemented six-dimensional obstruction tensor would require a convention-matched reference implementation not present in the current toolchain.
- **Complete \(d=8\) nonabelian conformal Yang--Mills equation.** Equations (6.78)--(6.82) require hundreds of tensor/commutator terms plus the paper's target-to-metric conversion. No independent package implementation was available. The note therefore records the construction and its dependencies but does not mark those coefficients as checked.
- **CPS and charge claims.** There is no presymplectic current in the source, so symplectic flux, integrability, and charge-algebra questions are mathematically underdetermined rather than failed checks.
- **Global AdS mode relation.** Interior regularity and the Dirichlet-to-Neumann map are outside the local gauge-PDE construction; normalizability and quantization claims cannot be checked from this paper alone.

## Failed

- No independently checked equation in the reconstructed scalar, low-order gravity, or Lie-algebra chains failed.
- The PDF has a rendering defect in which \(\Box^g\) appears as a hollow missing-glyph square in several formulas, including (6.72), (6.80), (6.81), (F.9), (F.12), and (F.15). The official TeX source unambiguously gives \(\Box^g\), so this is a presentation failure, not a mathematical counterexample.
- Appendix B's prose refers to ``Theorem 4.4'' near (B.17), while the proved and used result is Theorem 4.5. This is a cross-reference error; it does not change the formula chain.
