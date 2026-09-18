---
paper id: 2609.17666v1
title: Representation Theory of Three-dimensional Corner Symmetries
authors:
  - Giulio Neri
  - Ludovic Varrin
publication date: 2026-09-15T18:00
abstract: |-
  The paper constructs a family of induced representations of the extended corner-symmetry group for a circular corner in three spacetime dimensions. It applies the little-group method twice, identifies momentum- and Casimir-density orbit data, analyzes conditional unitarity and irreducibility, determines Virasoro and affine (\mathfrak{sl}(2)) central extensions, and writes the corresponding projective representations.
comments: "50 pages, 1 figure"
url: https://arxiv.org/abs/2609.17666v1
summary: "A restricted but explicit representation-theoretic model for circular gravitational corner degrees of freedom, with important measure-theoretic and regularity conditions still open."
tags: []
---

# Verdict

**Correct under the following precise conditions:** restrict to the identity component, the regular duals, the nowhere-vanishing momentum and cubic-density orbits, a formal continuum measure on the momentum orbit, the Shavgulidze completion of the Casimir orbit, persistence of regulated ergodicity, and the assumed strong-continuity extension used in the irreducibility argument.

The algebraic two-step induction and the displayed cocycle obstruction are coherent. The paper does **not** classify all irreducible representations of the three-dimensional corner group, and the continuum unitarity/irreducibility claim is conditional rather than a completed theorem for the original smooth orbit.

There is also a local notation error: Eq. defining (\mathrm{QCS}_3) prints

$$
\mathrm{Vir}\ltimes(\widehat{\mathrm{SL}(2)}\times L\mathbb R^2),
$$

but the translation sector is acted on nontrivially by the loop (\mathrm{SL}(2)) sector. The factor `\times` should be `\ltimes`, as the paper's own summary and subsequent group action require.

# How to read this long paper

## Essential path

1. Read the introduction's result summary for the restricted orbit class and labels ((M,m)).
2. Read the two Mackey steps in Section 3: first the momentum-density orbit, then the weight-three Casimir-density orbit.
3. Read the explicit representation and algebra action.
4. Read the unitarity and irreducibility sections with every continuum/regularity assumption visible.
5. Read the central-extension obstruction, the Virasoro/Kac--Moody result, and the final (\mathrm{QCS}_3) representation.

## Technical reference

- The two-dimensional (\mathrm{ECS}_2) warm-up fixes the Iwasawa section and Wigner shear.
- The continuous-spin warm-up explains why the induction is performed twice.
- Appendix A fixes group laws, adjoint/coadjoint actions, and density weights.
- Appendix B derives the general central-extension and Souriau machinery plus the modified Mickelsson cocycle.
- Appendix C expands the commutant and ergodicity arguments behind irreducibility.

## Optional background

The conceptual discussion of the corner proposal and the Poincaré continuous-spin example can be skimmed if the reader already knows induced representations. They are motivational, not additional gravitational derivations.

# Complete section tree

1. **Introduction**
   - Summary of results
   - Corner proposal
   - Mackey's theory
2. **Warm-up: examples of induced representations**
   - Two-dimensional corner symmetries
   - Continuous-spin representations
3. **Corner symmetries in three dimensions**
   - Momentum-density orbit
   - Casimir-density orbit
   - Algebra action
   - Unitarity
   - Irreducibility
4. **Maximal central extension of (\mathrm{ECS}_3)**
   - Group cocycles
   - Extended momentum-density orbit
   - Extended Casimir-density orbit
5. **Conclusion**
6. **Appendix: loop-group theory**
7. **Appendix: central extensions**
   - Kac--Moody Souriau-cocycle computation
8. **Appendix: details on irreducibility**
   - Decomposability in momentum
   - Reduction to the little-group commutant
   - Regulated momentum-orbit ergodicity
   - Invariant functions under an ergodic action
   - Little-group irreducibility

# Theory and notation

For a circular corner (S\cong S^1), the identity component studied in detail is

$$
\mathrm{ECS}_3^+
=\mathrm{Diff}^+(S)\ltimes
\left(L_e\mathrm{SL}(2,\mathbb R)\ltimes L\mathbb R^2\right).
$$

Here (L_e\mathrm{SL}(2)) is the identity component of the loop group. The paper excludes orientation-reversing diffeomorphisms and nonzero loop winding sectors.

The Fourier-mode algebra uses

$$
[\ell_m,\ell_n]=(m-n)\ell_{m+n},
\qquad
[\ell_m,V_n^A]=-nV_{m+n}^A,
$$

$$
[V_m^A,V_n^B]=C^{AB}{}_C V_{m+n}^C,
$$

where (V^A=(J^\alpha,P^a)) combines (\mathfrak{sl}(2)) and normal translations.

The notation (\mathcal E[w]) denotes densities of weight (w). Duality is fixed by an integrated pairing, so

$$
\mathcal E[w]^*_{\mathrm{reg}}=\mathcal E[1-w].
$$

The construction therefore uses

| object | density weight | role |
|---|---:|---|
| (\alpha(\mathsf x)) | (0) | normal translation parameter |
| (p(\mathsf x)d\mathsf x) | (1) | momentum density dual to (\alpha) |
| (x(\mathsf x)) | (-2) | loop-shear parameter in the first little group |
| (\nu(\mathsf x)(d\mathsf x)^3) | (3) | Casimir density dual to (x) |

Both integrated pairings have total weight one:

$$
\oint\langle p,\alpha\rangle,
\qquad
\oint\langle\nu,x\rangle.
$$

# First induction: momentum density

The abelian normal subgroup (L\mathbb R^2) has regular characters

$$
\chi_p(\alpha)=
\exp\left(i\oint\langle p,\alpha\rangle\right).
$$

Under (f\in\mathrm{Diff}^+(S)),

$$
(f_*p)(\mathsf x)
=p(f^{-1}(\mathsf x))(f^{-1})'(\mathsf x).
$$

The paper does not classify all orbits. It keeps the nowhere-vanishing orbit

$$
\mathcal O_{p_*}=L\mathbb R^2_\circ,
\qquad
p_*=(1,0)d\mathsf x.
$$

Zeros of (p), their multiplicities, intervals of vanishing, and distributional momentum sectors are outside the construction.

The stabilizer combines a loop shear with a diffeomorphism-compensating boost:

$$
H_{p_*}
\cong\mathrm{Diff}^+(S)\ltimes LN
\cong\mathrm{Diff}^+(S)\ltimes\mathcal E[-2].
$$

Its group law implies

$$
(f\cdot x)(\mathsf x)
=x(f^{-1}(\mathsf x))[(f^{-1})'(\mathsf x)]^{-2}.
$$

This is the first key reduction: the little group is itself a semidirect product with an abelian normal subgroup.

# Second induction: Casimir density

Characters of (LN\cong\mathcal E[-2]) are labeled by (\nu\in\mathcal E[3]):

$$
D_\nu(n_x)=
\exp\left(i\oint\langle\nu,x\rangle\right).
$$

For a nowhere-vanishing real cubic density, the orbit invariant is

$$
M=\oint\nu^{1/3}.
$$

The connectedness of the circle forces the sign of a nowhere-vanishing real (\nu) to be constant. A representative is

$$
\nu_*=\frac{M^3}{8\pi^3}(d\mathsf x)^3.
$$

Every smooth orbit element with the same (M) is reached by

$$
f(\mathsf x)=\frac{2\pi}{M}
\int_0^{\mathsf x}\nu(\mathsf x')^{1/3}d\mathsf x'.
$$

The stabilizer of (\nu_*) is the rigid-rotation group (U(1)). Its ordinary representations are labeled by

$$
m\in\mathbb Z,
\qquad
\tau_m(r_\beta)=e^{im\beta}.
$$

The Wigner rotation is

$$
\beta_W(f;\nu)
=\frac{2\pi}{M}\int_0^{f(0)}\nu(\mathsf x)^{1/3}d\mathsf x.
$$

# The induced (\mathrm{ECS}_3) representation

With a pointwise Iwasawa section for the momentum orbit, the representation acts on wavefunctions (\Psi(p,\nu)) as

$$
\begin{aligned}
[U_{M,m}(f,h,\alpha)\Psi](p,\nu)
={}&\exp\bigg[
i\oint\langle p,\alpha\rangle
+im\beta_W(f;\nu)\\
&\qquad+i\oint\langle\nu,x_W(h;p)\rangle
\bigg]
\Psi((f,h)^{-1}\triangleright p,f^{-1}\triangleright\nu).
\end{aligned}
$$

The functional variables are not two arbitrary fields: (p) lies on the nowhere-zero loop-punctured-plane orbit and (\nu) lies on the fixed-(M) cubic-density orbit.

The local (\mathrm{ECS}_2) Casimir becomes the density (\nu(\mathsf x)), while only

$$
\oint\widehat{\mathcal C}_{\mathrm{ECS}}^{1/3}
$$

is invariant under the full diffeomorphism group, with eigenvalue (M).

# Unitarity boundary

## Momentum orbit

At a finite lattice regulator, the measure

$$
d\mu_N(p)=\prod_{i=0}^{N-1}dp_0(\mathsf x_i),dp_1(\mathsf x_i)
$$

is invariant under the pointwise (\mathrm{SL}(2)) action. The paper also gives a Fourier-mode infinitesimal argument for unit Jacobian under diffeomorphisms. The continuum symbol

$$
\mathcal Dp=\prod_{\mathsf x}dp_0(\mathsf x)dp_1(\mathsf x)
$$

remains a formal flat functional measure; it is not constructed as a genuine Borel measure on the infinite-dimensional orbit.

## Casimir orbit

The smooth orbit is enlarged to

$$
\widetilde{\mathcal O}_{\nu_*}
\cong\mathrm{Diff}^1_+(S)/U(1)
=\mathrm{Diff}^1_{+,0}(S).
$$

The Shavgulidze measure (\mu) is quasi-invariant under the smoother (\mathrm{Diff}^2_+(S)) action. Appending its Radon--Nikodym derivative gives

$$
[U^{\mathrm{RN}}_{M,m}(f,h,\alpha)\Psi](p,\nu)
=\rho_f(\nu)^{1/2}[U_{M,m}(f,h,\alpha)\Psi](p,\nu).
$$

This makes the Casimir-orbit part measure-theoretically genuine, but it changes the representation space from the original smooth orbit to a lower-regularity completion.

# Irreducibility boundary

The commutant argument has the following chain:

1. commuting with all translations makes a bounded operator decomposable in (p);
2. commuting with the remaining group reduces each fiber operator to the little-group commutant;
3. little-group irreducibility makes it multiplication by (c(p));
4. ergodicity makes (c(p)) constant almost everywhere.

At finite regulator, the pointwise (\mathrm{SL}(2)^N) action on

$$
(\mathbb R^2_\circ)^N
$$

is transitive and measure preserving, hence ergodic. Persistence of this property after removing the regulator is postulated.

For the Casimir orbit, the paper invokes ergodicity of the Shavgulidze measure under (\mathrm{Diff}^2_{+,0}(S)). To transfer commutation from smooth diffeomorphisms to this group, it assumes a strongly continuous extension in the (C^2) topology. Thus irreducibility is conditional on an explicit functional-analytic input.

# Central extensions

The two-dimensional Heisenberg-like extension

$$
[P_m^0,P_n^1]=\delta_{m+n,0}c
$$

is obstructed by the corner-diffeomorphism action. The Jacobiator for ((\ell_k,P_m^0,P_n^1)) gives

$$
(m+n)\delta_{k+m+n,0}c.
$$

On the support of the Kronecker delta this equals (-k c), so it cannot vanish for all nonzero (k) unless (c=0).

The surviving algebra extensions are

- the Virasoro/Gelfand--Fuks cocycle in the diffeomorphism sector;
- the affine Kac--Moody cocycle in (L\mathfrak{sl}(2)).

Accordingly, with the corrected semidirect-product notation,

$$
\mathrm{QCS}_3
=\mathrm{Vir}\ltimes
\left(\widehat{L_e\mathrm{SL}(2)}\ltimes L\mathbb R^2\right).
$$

The group cocycles are the Bott--Thurston cocycle and a diffeomorphism-compatible Mickelsson cocycle. On the first little group, the restricted Kac--Moody cocycle combines with the Virasoro one so that

$$
\omega_{\mathrm{eff}}=\omega-12\underline{k}.
$$

The final projective representation is labeled by

$$
\{M,m,\omega,\underline{k}\}.
$$

Because the central construction uses the universal cover of rigid rotations, (m) is a real character label at that stage unless one separately imposes descent to (U(1)), in which case (m\in\mathbb Z). The source does not make this distinction fully explicit.

# Equation ledger

| role | equation/object | dependency |
|---|---|---|
| corner group | (\mathrm{Diff}^+(S)\ltimes(L_e\mathrm{SL}(2)\ltimes L\mathbb R^2)) | circular corner, identity component |
| first orbit | (p_*=(1,0)d\mathsf x) | regular dual, (p\neq0) pointwise |
| first little group | (\mathrm{Diff}^+(S)\ltimes\mathcal E[-2]) | compensating Iwasawa boost |
| second orbit | fixed (M=\oint\nu^{1/3}) | real nowhere-zero (\nu\in\mathcal E[3]) |
| second little group | (U(1)) | constant cubic-density representative |
| ordinary labels | ((M,m)) | (m\in\mathbb Z) when descending to (U(1)) |
| quantum extensions | Virasoro and affine (\mathfrak{sl}(2)) | loop-Heisenberg cocycle obstructed |
| projective labels | ((M,m,\omega,\underline{k})) | regularity of cocycle phases required |

# Derivation map

$$
\begin{gathered}
L\mathbb R^2\ \text{abelian}
\Longrightarrow p\in\mathcal E[1]
\Longrightarrow p_*= (1,0)d\mathsf x\\
\Longrightarrow H_{p_*}=\mathrm{Diff}^+(S)\ltimes\mathcal E[-2]
\Longrightarrow \nu\in\mathcal E[3]\\
\Longrightarrow M=\oint\nu^{1/3},\quad H_{\nu_*}=U(1)
\Longrightarrow U_{M,m}.
\end{gathered}
$$

For projective representations,

$$
H^2(\mathfrak{ecs}_3)
\Longrightarrow
\text{Virasoro}+\widehat{\mathfrak{sl}(2)}
\Longrightarrow
U_{M,m,\omega,\underline{k}}.
$$

The first arrow in the second line is source-derived from the paper's cocycle ansatz and Jacobi analysis; it is not independently reconstructed here as a complete continuous-cohomology classification.

# Translation to the vault's sewing programme

This paper supplies a candidate representation space for one circular corner, not a gluing theorem. The directly reusable data are

- the momentum density (p\in\mathcal E[1]), dual to normal corner translations;
- the Casimir density (\nu\in\mathcal E[3]), dual to the loop shear;
- the orbit labels ((M,m,\omega,\underline{k}));
- the central phases that a quantum sewing constraint must match across oppositely oriented sides.

For regional observable-algebra sewing, the correct next step is not to identify Hilbert spaces merely by equal (M). One needs the side-dependent orientation action on (p) and (\nu), the diagonal constraint on the full corner group, compatible central levels, and a measure/disintegration statement for the tensor product of the two regional representations. The paper itself lists an analogous gluing problem as future work.

The construction also starts from the corner group rather than deriving it from a specific action and symplectic potential. To connect it to the action-first programme, one must calculate the moment maps for an explicit regional theory and show which regular-dual orbit is actually realized.

# Verification log

## Source-derived

- The two-step induced-representation formulae, orbit stabilizers, Wigner factors, Shavgulidze completion, and Souriau cocycles.
- The assertion that the only nontrivial central extensions in the stated ansatz are Virasoro and affine (\mathfrak{sl}(2)).
- The cited ergodicity theorem for the Shavgulidze measure.

## Checked

- Sage checked the loop-Heisenberg Jacobi obstruction on explicit Fourier modes and verified that assigning translation weight (1/2) cancels the obstruction for all tested (k,m\in[-4,4]), matching the paper's explanatory aside.
- Sage checked the density-weight pairings (1+0=1) and (3+(-2)=1).
- Sage checked the central-coordinate recombination
  $$
  \underline{k}(z_{\mathrm{KM}}+12z_V)
  +(\omega-12\underline{k})z_V
  =\underline{k}z_{\mathrm{KM}}+\omega z_V
  $$
  on a finite integer grid.
- Direct source comparison identified the `\times`/`\ltimes` inconsistency in the displayed (\mathrm{QCS}_3) definition.

## Blocked

- A genuine continuum measure (\mathcal Dp) is not constructed; statements using it are rigorous only at finite regulator in this source.
- Continuum momentum-orbit ergodicity is postulated after the regulator is removed.
- Strong continuity of the extended diffeomorphism representation, needed for the final irreducibility step, is assumed.
- The Bott--Thurston phases are not shown to extend to generic points of the (C^1) completion used for the Shavgulidze measure.

## Not independently verified

- Exhaustiveness of the central-extension classification beyond the displayed cocycle ansatz and cited cohomological inputs.
- The full Kac--Moody Souriau-cocycle derivation in Appendix B.
- The cited direct-integral and Shavgulidze measure theorems.

# Reusable takeaway

The paper gives a valuable algebraic skeleton for circular corner quantum numbers, but its strongest safe conclusion is narrower than “the unitary dual of the three-dimensional corner group.” It constructs a particular regular, nowhere-zero family and a conditional Hilbert-space realization. For sewing, retain the full functions (p(\mathsf x)) and (\nu(\mathsf x)), not only the global label (M), and treat the measure and central-level matching as part of the theorem to be proved.
