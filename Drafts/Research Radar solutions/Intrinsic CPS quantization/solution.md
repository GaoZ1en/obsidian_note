# Intrinsic quantization of the vacuum CPS moment maps

**Scope correction:** this note constructs a vacuum moment-map representation. It does not prove the user's subsequently specified reconstruction of solutions, tangent vectors, smooth structure and symplectic form from an independently constructed observable algebra. That four-part question is addressed separately in [the nonlinear scalar reconstruction](observable-reconstruction.md), with its own functional class, equation-ideal closure and admissibility conditions. The result below is retained as a narrower quantization calculation.

## Result and choice of quantization

The vacuum Virasoro orbit admits an algebraic quantization of its exact moment-map Lie algebra without defining the theory through linearized metric oscillators. Choose the positive-energy complex polarization, omit the half-form correction, and keep a fixed physical central charge $c\geq1$. Polarized induction then constructs a cyclic module directly from the orbit stabilizer and central extension. Its positive contravariant form, after quotient by its radical, gives the vacuum representation. The quantized moment maps intertwine on the algebraic finite-energy domain.

This is a prescription and an existence result for the benchmark in the Radar card. The classical CPS does not uniquely select a polarization, a quantum normalization of the Einstein coupling, a completion, or an ordering of every nonlinear observable. The construction below does not assert the exact Dirac commutator rule for all smooth functions on the orbit. Its quantization domain is the constants and the finite linear span of the exact moment maps; ordered products act through their enveloping algebra.

## Classical input from the nonlinear bulk theory

Use the renormalized Einstein action, the integrated Dirichlet CPS including its corner term, and $\iota_{X_H}\Omega=-\delta H$. The existing bulk derivation in `Articles/Quantization in AdS/linearized gravity/all order perturbation result.md` supplies the exact vacuum leaf and its moment maps, rather than merely a linearized approximation:

$$
\mathcal O_{\rm vac}=\mathrm{Diff}^+(S^1)/PSL(2,\mathbb R),\qquad
\{H_m,H_n\}=-i(m-n)H_{m+n}-i\frac c{12}m(m^2-1)\delta_{m+n,0}.
$$

Here $H_n^*=H_{-n}$, all $H_n$ vanish at the reference vacuum, and $c=3\ell/(2G)$ refers to the fixed normalization used by the classical input. On the tangent space at that point,

$$
\Omega(X_m,X_n)=i\frac c{12}m(m^2-1)\delta_{m+n,0}.
$$

The stabilizer consists of $m=-1,0,1$. The Fourier labels describe the symmetry algebra, not a chosen expansion of the metric into creation and annihilation operators. The following steps depend on this nonlinear orbit and on its moment map, and therefore apply after the full classical reduction.

The central extension is retained before quantization. Let $\mathfrak v$ have generators $L_n,K$ with

$$
[L_m,L_n]=(m-n)L_{m+n}+\frac{m(m^2-1)}{12}\delta_{m+n,0}K,
\qquad [K,L_n]=0.
$$

The correspondence $H_n\mapsto L_n$, $c\,1\mapsto K$ uses $[\widehat F,\widehat G]=i\widehat{\{F,G\}}$ and $\hbar=1$. In particular the central extension is fixed by the classical Hamiltonian action, before any state space is specified.

## Polarization and the cyclic line

Take the complex polarizing subalgebra

$$
\mathfrak p=\mathbb C K\oplus\operatorname{span}\{L_n:n\geq-1\}.
$$

It is closed: the only pair of indices in this range whose sum is below $-1$ is $(-1,-1)$, and its bracket vanishes. The central cocycle vanishes on $\mathfrak p\times\mathfrak p$. Modulo the stabilizer, its positive-index tangent space is isotropic and maximal isotropic for the vacuum KKS form. Its conjugate supplies the negative directions. This is the positive-energy polarization; the opposite polarization is a different choice.

The one-dimensional polarized line is defined by the character

$$
\chi_c(K)=c,\qquad \chi_c(L_n)=0\quad(n\geq-1).
$$

These values follow from the orbit point and the trivial action of its $PSL(2,\mathbb R)$ stabilizer on the chosen line, extended trivially along the polarization. A half-form or a different quantum-coupling prescription could change this construction and is not silently included here.

There is also a local prequantum interpretation. In a formal neighborhood of the reference point take a line connection with curvature $-i\Omega$. For a moment map $H$, define

$$
\widehat H_{\rm pre}=-i\nabla_{X_H}+H.
$$

With our conventions $[X_F,X_G]=-X_{\{F,G\}}$ and $X_FG=-\{F,G\}$. Expanding the commutator, including the curvature, gives

$$
[\widehat F_{\rm pre},\widehat G_{\rm pre}]=i\widehat{\{F,G\}}_{\rm pre}.
$$

Thus the infinitesimal action is fixed by the classical Hamiltonian flow and its moment map, and has the correct first-order symbol. Polarized induction is the algebraic version, using jets and their distributions, of this prequantum action. Working algebraically avoids assuming the existence of a global measure on the infinite-dimensional orbit.

## Constructing the state space

Define, before choosing any target representation,

$$
\mathcal D_c^{\rm ind}=U(\mathfrak v)\otimes_{U(\mathfrak p)}\mathbb C_{\chi_c}.
$$

Equivalently, it is the quotient by the left ideal generated by $K-c$ and $L_n$, $n\geq-1$. Denote the class of $1$ by $v_0$. The PBW theorem gives a basis

$$
L_{-n_1}\cdots L_{-n_r}v_0,
\qquad n_1\geq\cdots\geq n_r\geq2.
$$

This basis is a conclusion of the polarization and the enveloping-algebra relations. No Fock space, canonical oscillator coordinates, or normal ordering of a nonlinear classical stress tensor has been used to define it.

Left multiplication defines the quantum map on the moment-map algebra:

$$
\mathcal Q\left(a+\sum_{n\in F}a_nH_n\right)
=a\,1+\sum_{n\in F}a_n\rho(L_n),\qquad F\subset\mathbb Z\text{ finite}.
$$

The ideal is stable under left multiplication, so these operators are well-defined. Their commutators obey the exact moment-map algebra on all of $\mathcal D_c^{\rm ind}$. Moreover

$$
L_0L_{-n_1}\cdots L_{-n_r}v_0
=(n_1+\cdots+n_r)L_{-n_1}\cdots L_{-n_r}v_0.
$$

All eigenspaces are finite dimensional, and every vector is a finite sum of eigenvectors. The zero-energy space is one dimensional. The three stabilizer generators annihilate $v_0$ but act nontrivially on descendants.

## Inner product and Hilbert completion

Impose $L_n^\dagger=L_{-n}$, $K^\dagger=K$, and $\langle v_0,v_0\rangle=1$. Move adjoints using the algebra until they act on $v_0$. This uniquely defines the contravariant Hermitian form. Different energies are orthogonal because $L_0$ is Hermitian. For example,

$$
\|L_{-n}v_0\|^2=\frac c{12}n(n^2-1),\qquad n\geq2.
$$

At level four, in the ordered basis $L_{-4}v_0,L_{-2}^2v_0$,

$$
G_4=\begin{pmatrix}5c&3c\\3c&c(c+8)/2\end{pmatrix},\qquad
\det G_4=\frac{c^2(5c+22)}2.
$$

Positivity at every level is a representation-theoretic input, not a consequence of this small matrix. The unitary highest-weight classification permits $(c,h)=(c,0)$ for $c\geq1$. Together with uniqueness of the contravariant form, this implies that the induced form is positive semidefinite and that its radical is the kernel of the irreducible unitary quotient. See the classification stated immediately before theorem 6.1.1 in [Toledano Laredo](https://arxiv.org/pdf/math/0106195), page 16, and the original FQS/GKO references given there. The PDF page was rendered and checked.

The radical $\mathcal N_c$ is invariant: if $v$ pairs to zero with every vector, then $\langle L_nv,w\rangle=\langle v,L_{-n}w\rangle=0$. Therefore set

$$
\mathcal D_c=\mathcal D_c^{\rm ind}/\mathcal N_c,\qquad
\mathcal H_c=\overline{\mathcal D_c}.
$$

The finite-energy algebraic space $\mathcal D_c$ is dense, invariant under every $L_n$, and is the domain of every operator identity asserted here. This construction is also available at the discrete unitary minimal-series central charges, with their additional null quotient, but no statement of unitarity is made for arbitrary $0<c<1$.

## The intertwining theorem

Now let $V_c^{\rm vac}$ denote an independently presented irreducible vacuum representation with the same central normalization and $*$ structure, and normalized cyclic vector $|0\rangle$. Define

$$
T(Pv_0)=P|0\rangle,\qquad P\in U(\mathfrak v).
$$

The defining relations of $\mathfrak p$ annihilate both cyclic vectors, so $T$ is well-defined on the induced module. Moving adjoints with the same algebra shows

$$
\langle T(Pv_0),T(Rv_0)\rangle
=\langle Pv_0,Rv_0\rangle.
$$

Its kernel is therefore exactly $\mathcal N_c$. Cyclicity makes its image the entire algebraic vacuum module. It descends to an isometric bijection on the algebraic domains, extends to a unitary on their Hilbert completions, and obeys

$$
\boxed{T\,\mathcal Q(H_n)\psi=L_n^{\rm vac}T\psi
\quad\text{for every }\psi\in\mathcal D_c,\ n\in\mathbb Z.}
$$

The independent target is used only at this comparison step. The original construction of the cyclic domain, action, and form used the CPS moment maps and the declared polarization. This is the required moment-map intertwining on a dense algebraic domain.

## What the result does and does not settle

The benchmark is an intrinsic, symmetry-preserving algebraic quantization at fixed $c$. It does not derive a preferred value of a quantum shift of $3\ell/(2G)$, a metric path-integral measure, or a globally convergent nonlinear operator formula $H_0=F(H_{|n|\geq2})$. In particular, classical analytic orbit constraints cannot simply be normal-ordered without specifying and checking a separate quantization map for them. No claim of a unique quantization of a general nonlinear CPS follows.

**Verified:** Sage checked exact, untruncated Virasoro actions for input levels 0--6 and mode indices $-3$ through $3$, the level-four Gram matrix and determinant, Hermiticity through level eight, the cyclic stabilizer conditions, and the $L_0$ grading. Gram positivity through level eight at $c=2$ is a finite check only. The all-level algebraic statements follow from induction and PBW; all-level positivity uses the stated external theorem.

**Assumptions:** the exact classical vacuum CPS/KKS input; $c\geq1$; positive-energy complex polarization; fixed central normalization; no half-form correction; quantization restricted to the moment-map Lie algebra and its ordered enveloping algebra; algebraic finite-energy domain.

**Not verified:** a quantization of the entire smooth observable algebra, an independent analytic construction of the global polarized-section Hilbert space, or equivalence with a metric functional integral. These are distinct stronger questions, beyond the card's stated moment-map benchmark.
