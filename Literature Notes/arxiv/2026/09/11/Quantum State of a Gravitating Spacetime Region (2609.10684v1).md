---
paper id: 2609.10684v1
title: Quantum State of a Gravitating Spacetime Region
authors:
  - Raphael Bousso
  - Sami Kaya
  - Guanda Lin
  - Arvin Shahbazi-Moghaddam
publication date: 2026-09-09T18:00
abstract: |-
  The paper proposes a gravitational Hilbert space for a finite codimension-two edge. Its vectors are manifolds carrying mixed-conformal elliptic data; gluing a vector to an involuted vector gives boundary data for a gravitational path integral and hence a pre-inner product. Under positivity, factorization, and saddle-dominance assumptions, the construction supports partial traces and a map between finite Lorentzian wedges and quantum states. A deformed BTZ-slice family gives parameter-dependent Rényi entropies but a universal leading von Neumann entropy equal to the maximin-area term.
comments: "JHEP format, 39 pages+Appendix, 12 figures"
url: https://arxiv.org/abs/2609.10684v1
summary: "A finite-region gravitational-state proposal built from mixed-conformal boundary data and GPI gluing; the explicit BTZ test is substantial, while positivity and factorization remain assumptions."
tags: []
---

Return to [[2026_09_11_overview|the 11 September 2026 arXiv overview]].

# Verdict

Correct under the following precise conditions: treat the construction as a formal gravitational-path-integral proposal; assume existence of the relevant boundary-value saddles and UV completion, positive semidefiniteness of the GPI pairing, strong ellipticity of mixed-conformal data, factorization over connected edge components, an appropriate integration contour, and the stated semiclassical saddle dominance. Under those conditions, the quotient/completion produces a Hilbert space and geometric gluing implements inner products, operator composition, traces, and replica traces.

Not proven by the paper as an unconditional Hilbert-space construction or as a broad one-to-one correspondence between finite Lorentzian regions and quantum states. Positivity and factorization are explicitly postulated; generic strong ellipticity is expected but not proved; the classical-limit map requires a unique CRT-invariant dominant saddle and extra smooth-deformation conditions that the authors themselves regard as provisional.

The 2+1-dimensional BTZ example is the strongest evidence. It solves the rotationally symmetric mixed-conformal boundary-value problem and numerically finds

$$
S_1=\frac{2\pi r_1}{4G_N}
$$

for every nonzero deformation amplitude in the tested family. This is a leading semiclassical, replica-symmetric result, not a nonperturbative theorem. The separate appendix resolves one proposed positivity counterexample only on a scanned parameter family.

# How to read this long paper

- Essential for regional gluing: sections 2--4, which define mixed-conformal data, the action and joint term, the GPI pairing, the quotient by null states, and the CRT classical-limit map.
- Essential for algebraic substructure: section 5, where factorization is visibly an assumption and partial trace is defined by gluing whole connected components.
- Main technical evidence: section 6, especially the constraint reduction, closure equation, normalized action, and $n\to1$ limit.
- Limitation audit: the introduction/outlook and appendix A, which separate proposal-level assumptions from the two numerical saddle comparisons.

# Source map

1. **Introduction.** Proposes the wedge/state correspondence, defines the complex Cauchy-slice deformation and mixed-conformal data, and previews factorization and replica gluing.
2. **Gravitational Path Integral.** Defines the GPI, its saddle expansion, conformal and mixed-conformal boundary conditions, and the Einstein action with the conformal and Hayward terms.
3. **Gravitational Hilbert Spaces.** Treats data manifolds with boundary as generators of a vector space, defines involution and the GPI pairing, assumes positivity, quotients null states, and completes.
4. **From Elliptic Data to Spacetime Regions and Back.** Uses a unique CRT-invariant norm saddle to define a Lorentzian fixed locus, proposes the reverse complex-deformation construction, and gives a de Sitter failure example.
5. **Substructure of Gravitational States.** Posits tensor factorization over connected edge components and defines adjoints, partial traces, reduced states, and Rényi entropies by gluing.
6. **Example: Entropy of a Reduced Gravitational State.** Constructs complex mixed-conformal data from a finite maximal BTZ slice, solves the replica boundary-value problem, includes Hayward terms, compares BTZ and thermal-AdS saddles, and extracts $S_1$.
7. **Appendix A.** Revisits a Dirichlet negative-norm example and numerically finds a dominant CRT-invariant Euclidean saddle for the corresponding special mixed-conformal data.

# Fundamental objects

Let $\sigma$ be a closed compact oriented $(d-1)$-manifold with fixed real metric. A vector is represented by an oriented $d$-manifold $J(\sigma)$ bounded by $\sigma$, equipped with mixed-conformal data. Away from selected codimension-one joints $\zeta\subset J(\sigma)$, the data are

$$
([h_{ab}],K)_{J(\sigma)\setminus\zeta};
$$

on $\zeta$, including $\partial J(\sigma)=\sigma$, the full induced metric is fixed:

$$
(\gamma_{pq})_\zeta.
$$

Thus the construction does not retain a full canonical pair on the preparation manifold. It chooses elliptic polarization-like data: the conformal class $[h]$ and mean curvature $K$ in the interior, but full metric data on the joints.

The GPI on a closed elliptic data manifold is formally

$$
G[\mathcal J(\varnothing)]
=\int_{(g,\varphi)\sim\mathcal J(\varnothing)}
\frac{\mathcal Dg\,\mathcal D\varphi}{\operatorname{Diff}(g)}
e^{-I[g,\varphi]}.
$$

In the small-$G_N$ expansion,

$$
G[\mathcal J(\varnothing)]
\sim\sum_g e^{-I[g]}G^{(1)}[g;\mathcal J]
\bigl(1+O(G_N)\bigr).
$$

The paper assumes that appropriate saddles exist and that a UV completion controls the terms beyond one loop.

# Mixed-conformal action and ellipticity

For Einstein gravity with cosmological constant, the proposed action is

$$
\begin{aligned}
I[g]={}&-\frac{1}{16\pi G_N}\int_M\sqrt g\,(R-2\Lambda)
-\frac{1}{8\pi G_Nd}\int_{\partial M\setminus\zeta}\sqrt h\,K\\
&-\frac{1}{8\pi G_N}\int_\zeta\sqrt\gamma\,\Theta.
\end{aligned}
$$

The $1/d$ coefficient is the conformal-boundary coefficient. The last term is the Hayward joint term, with signed exterior angle

$$
\cos\Theta=g^{ij}n^{(+)}_in^{(-)}_j.
$$

Full conformal boundary conditions are known to be elliptic in the perturbative Euclidean problem cited by the paper, while generic Dirichlet conditions are not. The extension to mixed-conformal data changes the condition on finitely many measure-zero joints. The authors expect this to retain strong ellipticity but do not prove it. Therefore the one-loop well-definedness of the proposed generic mixed problem remains conditional.

# Gluing and the Hilbert-space claim

Let $\mathbf V_\sigma$ be the free complex vector space generated by all elliptic data manifolds with boundary $\sigma$ and the fixed boundary metric. Involution reverses orientation and conjugates interior data:

$$
([h],K)\mapsto(\overline{[h]},\overline K),
\qquad
\gamma|_\sigma\mapsto\gamma|_\sigma.
$$

The pairing is defined by gluing and evaluating the GPI,

$$
\langle\mathcal K(\sigma),\mathcal L(\sigma)\rangle
:=G[\mathcal K_A^*(\bar\sigma)\mathcal L^A(\sigma)].
$$

Conjugate symmetry follows formally from the involution property of $G$. Positive semidefiniteness does not follow from the construction; it is the explicit assumption

$$
\sum_{m,n}\overline c_m c_n
\langle\mathcal J_m,\mathcal J_n\rangle\ge0.
$$

Only after this assumption can one define

$$
\mathbf N_\sigma
=\{v\in\mathbf V_\sigma:\langle v,v\rangle=0\},
\qquad
\mathbf H_\sigma^{(0)}=\mathbf V_\sigma/\mathbf N_\sigma,
$$

and complete in the induced norm to obtain $\mathbf H_\sigma$. The usual Cauchy--Schwarz consequence for a positive-semidefinite form makes every null vector orthogonal to every vector, so the quotient is algebraically correct once positivity is granted.

# Lorentzian region from a norm saddle

Suppose the norm GPI of $\mathcal J(\sigma)$ has exactly one leading saddle $(M,g)$ as $G_N\to0$. Its CRT conjugate has the same real action and boundary data, so uniqueness forces an antiholomorphic involution $\boldsymbol\Theta$. If the real fixed locus has Lorentzian signature, the paper defines

$$
w[\mathcal J(\sigma)]
:=\operatorname{Fix}(\boldsymbol\Theta).
$$

It is called the classical spacetime limit only if $\mathcal J(\sigma)$ can also be smoothly deformed toward a Cauchy slice of this locus through states whose norm geometries form a nested family. The authors note that these criteria may need refinement.

Conversely, for a real-analytic Lorentzian wedge $w_\sigma$ with Cauchy slice $t=0$, they complexify the solution and choose

$$
t=is(r,\ldots),
\qquad
s>0\text{ in the interior},
\qquad
s|_\sigma=0.
$$

Retaining only the induced mixed-conformal data defines a candidate state $\mathcal J_s(\sigma)$. The desired inverse relation

$$
w[\mathcal J_s(\sigma)]=w_\sigma
$$

depends on contour and dominance. It fails in the paper's closed de Sitter example: a disconnected Euclidean saddle has lower real action, so the dominant CRT fixed locus is empty.

# Factorization and reduced states

For disconnected

$$
\sigma=\sigma_1\sqcup\cdots\sqcup\sigma_n,
$$

the paper posits

$$
\mathbf H_\sigma
=\mathbf H_{\sigma_1}\otimes\cdots\otimes\mathbf H_{\sigma_n}.
$$

This is not derived from the gravitational constraints or the GPI. It is the extra input that permits operators and partial traces. For a bipartition $\sigma=\chi\sqcup\chi_c$, gluing the $\chi_c$ slots gives

$$
\widetilde\rho^A{}_{A'}(\chi,\bar\chi)
=(\mathcal J^*)_{A'B}\mathcal J^{AB}.
$$

Cyclic gluing defines

$$
S_n(\widetilde\rho)
=\frac{1}{1-n}
\log\frac{\operatorname{tr}(\widetilde\rho^n)}
{(\operatorname{tr}\widetilde\rho)^n}.
$$

The construction given in the main text traces only unions of whole connected components. A footnote sketches, but does not develop, a tensionless-end-of-the-world-brane regulator for subregions with nonempty boundary.

# BTZ test family

The explicit example uses nonrotating BTZ,

$$
ds^2=-(r^2-r_1^2)dt^2
+\frac{dr^2}{r^2-r_1^2}+r^2d\phi^2,
$$

and a left--right-symmetric maximal slice with minimum radius $r_a<r_1$ and finite cutoff $R>r_1$. The undeformed data are

$$
ds_{\Sigma,0}^2
=\frac{r^2dr^2}{r^4-r_1^2r^2+\mathcal E_0^2}+r^2d\phi^2,
\qquad
K^r{}_r=-K^\phi{}_\phi=-\frac{i\mathcal E_0}{r^2},
$$

$$
\mathcal E_0=r_a\sqrt{r_1^2-r_a^2}.
$$

A complex normal deformation $\delta=i\epsilon_R(u)$ vanishes at the two cutoff circles. It changes the conformal modulus and the trace $K(x)$ while leaving a real circle metric at the boundary. The deformation must be nonzero in the interior; $\epsilon=0$ is a degenerate limit that loses the Lorentzian wedge information.

# Constraint reduction

In conformal gauge the replica surface has

$$
ds_{\Sigma_n}^2=\varrho_n(x)^2(dx^2+d\phi^2),
$$

with prescribed trace $K(x)$. Define

$$
\mathcal P_n(x)
=\mathcal E_n+\int_0^x
d\widetilde x\,\varrho_n\varrho_n'K.
$$

Then

$$
K^\phi{}_{\phi,n}=\frac{\mathcal P_n}{\varrho_n^2},
\qquad
K^x{}_{x,n}=K-\frac{\mathcal P_n}{\varrho_n^2}.
$$

The Hamiltonian constraint reduces to

$$
\left(\frac{\varrho_n'}{\varrho_n}\right)'
=\varrho_n^2-\mathcal P_nK
+\frac{\mathcal P_n^2}{\varrho_n^2}.
$$

Together with $\mathcal P_n'=\varrho_n\varrho_n'K$, it integrates to

$$
(\varrho_n')^2
=\varrho_n^4-r_+^2\varrho_n^2-\mathcal P_n^2.
$$

Eliminating $\mathcal P_n$ on the branch continued from the norm saddle gives

$$
\varrho_n''
=2\varrho_n^3-r_+^2\varrho_n
-\varrho_nK(x)
\sqrt{\varrho_n^4-r_+^2\varrho_n^2-(\varrho_n')^2}.
$$

Mathematica independently verifies the Hamiltonian reduction, propagation of the first integral, and this eliminated second-order equation.

The global conditions are modulus matching,

$$
\varrho_n(\pi m_R)=R,
$$

and smooth closure of $n$ original--involuted pairs around the Euclidean BTZ circle,

$$
2n\Delta\tau=\frac{2\pi}{r_+}.
$$

These determine $\mathcal E_n$ and $r_+(n)$ numerically.

# Action and entropy

The normalized actions are

$$
\widehat I^{\rm BTZ}(n)
=\frac{4G_N}{2\pi r_1}(I_n^{\rm BTZ}-nI_1),
$$

$$
\widehat I^{\rm AdS}(n)
=\frac{4G_N}{2\pi r_1}(I_n^{\rm AdS}-nI_1).
$$

At leading order the smaller action is chosen:

$$
\frac{4G_N}{2\pi r_1}S_n
=\frac{1}{n-1}min\{\widehat I^{\rm BTZ}(n),
\widehat I^{\rm AdS}(n)\}.
$$

For the displayed parameter set $(r_a,r_1,R,\epsilon)=(2,\sqrt5,500,10^{-2})$, the source's numerical points give

$$
\left.\frac{d\widehat I^{\rm BTZ}}{dn}\right|_{n=1}=1.0000,
$$

hence

$$
S_1=\frac{2\pi r_1}{4G_N}.
$$

The elementary limit from the stated slope was independently checked exactly. The slope itself and the ODE solution were not independently reproduced because no numerical code or tabulated data accompany the source. The paper's figures show that higher Rényi entropies depend on $(r_a,R,\epsilon)$, that thermal AdS overtakes BTZ near $n=4.03$ for the displayed parameters, and that the common $n\to1$ limit changes discontinuously at $\epsilon=0$.

# Positivity appendix

For Dirichlet norm data, a CRT-breaking saddle pair contributes

$$
e^{-I}+e^{-\bar I}
=2e^{-\operatorname{Re}I}\cos(\operatorname{Im}I),
$$

which can be negative. Generic mixed-conformal data induced on the same geometry do not define a norm because the mean-curvature data on the two halves are not CRT conjugates. In the special $K=0$ case where they do define a norm, the appendix constructs a fully Euclidean CRT-invariant saddle and numerically finds

$$
I_{\rm Euc}-\operatorname{Re}I_{\rm Wall}<0
$$

over the scanned $R_0$ range, with $G_N\Delta I\simeq-0.0389053$ at the reference point. This removes that specific counterexample. It is explicitly not a proof of positivity for all mixed-conformal states.

# Relation to the gluing programme

The paper offers a clean geometric sewing dictionary:

$$
\text{data manifold with slots}
\xrightarrow{\text{glue slots}}
\text{closed GPI boundary}
\xrightarrow{G}
\text{pairing or trace}.
$$

Its most useful ingredients are the orientation/involution bookkeeping, explicit joint terms, and separation between connected-component factorization and geometric gluing. But this is not yet the vault's desired observable-algebra theorem:

- it does not derive a regional covariant phase space from an action and then compare its Peierls bracket with a global one;
- it assumes, rather than proves, the factorization needed for partial trace;
- it treats states as GPI boundary conditions rather than defining regional observable algebras;
- it has no general radiative or arbitrary-interface existence theorem;
- the inner product is not known to be positive outside special tests.

The appropriate use is therefore as a conditional gravitational-state sewing model and a strong finite-BTZ benchmark, not as a finished nonperturbative quantum-gravity Hilbert space.

# Verification record

- **Source-derived:** Definitions of elliptic data manifolds, involution, GPI pairing, null quotient, CRT fixed locus, complex slice deformation, factorization, partial trace, replica gluing, BTZ boundary-value problem, action, and appendix saddle comparison were read from the official v1 source.
- **Checked:** Mathematica gives zero residual for the 2D Hamiltonian-constraint reduction, propagation of the first integral, elimination to the second-order embedding ODE, and the normalized $n\to1$ entropy limit. It also verifies the algebraic $\kappa=x+x^{-1}>2$ form used in the appendix for $x>1$.
- **Visually confirmed:** Rendered PDF pages 15 and 19 explicitly label strong ellipticity and positive semidefiniteness as unproved/assumed. Page 39 shows the BTZ/thermal-AdS action comparison and fitted slope $1.0000$. Page 49 shows the negative action difference over the scanned appendix range and states that this is not a general positivity proof.
- **Assumptions:** Real analytic Lorentzian starting data; admissible complexification; suitable GPI contour and UV completion; existence of boundary-value solutions; generic strong ellipticity; positive semidefinite pairing; factorization over connected edge components; unique leading norm saddle; Lorentzian CRT fixed locus; nested smooth deformation; replica symmetry; classical saddle ordering not reversed by one-loop factors; nonzero complex deformation for the BTZ universality result.
- **Blocked:** The full numerical BTZ replica solve and appendix parameter scan cannot be independently rerun from the arXiv source because no calculation code or raw numerical tables are included.
- **Not independently verified:** Generic existence and strong ellipticity of mixed-conformal boundary-value problems; positivity of the full GPI pairing; connected-component factorization in gravity; the general wedge/state correspondence; integration-cycle membership of the displayed saddles; one-loop and nonperturbative corrections; the subregion-with-boundary partial trace sketched only in a footnote.

# What to reuse

- Reuse the exact mixed-conformal action, orientation convention, and Hayward-term bookkeeping when testing finite gravitational cuts.
- Reuse the abstract-index gluing notation as a state/tensor calculus, while labeling factorization as an assumption.
- Treat the BTZ result as a controlled leading-order example with $\epsilon>0$, replica symmetry, and saddle dominance attached.
- Do not promote the construction to an arbitrary-interface Hilbert-space theorem or to observable-algebra sewing without a separate CPS/Peierls comparison.
