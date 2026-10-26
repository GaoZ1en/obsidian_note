# Kink path exchange and involutive R

## Result

The multi-vacuum route deserves a separate test: its physical multiparticle spaces are composable kink paths, and its crossing relation can differ from the fixed-tensor-space crossing used in the [continuum calculation](<R-parastatistics crossing and local continuum construction.md>). The existing conditional crossing obstruction therefore cannot simply be applied unchanged.

The smallest nontrivial candidate nevertheless fails a stronger, direct test. **On the multiplicity-free A3 kink graph, every constant endpoint-preserving involutive Yang–Baxter operator is R = +I or -I. Neither scalar choice is compatible with the positive Perron–Frobenius cup maps.** The first statement does not require unitarity or the Temperley–Lieb ansatz. It is a complete algebraic result for the specified graph, not a no-go for all multi-vacuum theories.

A second construction does produce a positive, genuinely non-superflip involutive R on three-label path spaces. Its trace is 5 on a nine-dimensional two-particle space. However, its support violates face crossing, so scalar factorization cannot turn it into the proposed relativistic kink scattering theory. These results do not supply the model requested in the [main construction problem](<R-parastatistics and local relativistic interactions.md>).

## 1. Physical candidate and conventions

Use 1+1-dimensional Minkowski space, metric diag(+,-), and hbar = c = 1. The illustrative interacting candidate is the negative-coupling phi_(1,3) deformation of tricritical Ising M(4,5):

$$
S=S_{\mathrm{TIM}}+g\int d^2x\,\Phi_{3/5,3/5}(x),\qquad g<0,\qquad [g]=\mathrm{mass}^{4/5}.
$$

The standard massive scattering description has three vacua and a common positive kink mass. Label the vacua 1,2,3, with adjacency graph 1—2—3. Each directed edge carries one kink state; reversing the edge gives its antikink. The spatial line has fixed asymptotic vacua in each sector. An ordered n-kink internal state is a path

$$
|a_0,a_1,\ldots,a_n\rangle,\qquad |a_{j+1}-a_j|=1.
$$

These path vectors are orthonormal. Write H_n for their span, including all allowed endpoint sectors. An exchange R_i changes only a_i; it preserves a_(i-1), a_(i+1), and the remaining path. Equivalently, with B = C^3 and one-dimensional edge spaces H_ab, H_n is the n-fold relative tensor product over B, not the full tensor power of one unconstrained internal Hilbert space.

The following algebraic tests suppress momenta. They ask whether a *constant* internal exchange can obey

$$
R_i^2=I,\qquad R_iR_{i+1}R_i=R_{i+1}R_iR_{i+1}.
$$

Distant generators commute because they update different intermediate vertices. Rapidity-dependent scattering unitarity, S(theta)S(-theta)=I, is a different condition.

The scattering candidate is documented in [Nepomechie–Ahn, hep-th/0207012v2, PDF pp. 3–4 / printed pp. 2–3, Eqs. (2.1)–(2.5)](https://arxiv.org/pdf/hep-th/0207012v2#page=4). A symmetry-compatible modification is proposed in [Copetti–Córdova–Komatsu, arXiv:2403.04835v2, 22 March 2024](https://arxiv.org/abs/2403.04835v2). These are scattering and categorical inputs here; no new Haag–Kastler net is constructed.

## 2. Complete constant-exchange classification on A3

**Proposition.** Over the complex numbers, an endpoint-preserving R on H_2 satisfying R^2=I and the Yang–Baxter relation on all of H_3 is necessarily +I or -I.

**Proof.** For leaf endpoints a,c in {1,3}, the two-step space is one-dimensional, so its R block is a sign s_ac. For endpoints (2,2), use intermediate vertices 1,3 as an ordered basis and write the block as U, with U^2=I. Set

$$
S=(s_{ac})_{a,c\in\{1,3\}},\qquad
D_a=\operatorname{diag}(s_{a1},s_{a3}),\qquad
\widetilde D_c=\operatorname{diag}(s_{1c},s_{3c}).
$$

On paths a,2,b,2, the two adjacent generators are D_a and U. On paths 2,a,2,c, they are U and the corresponding column matrix. Thus every row and column diagonal D must obey

$$
DUD=UDU.
$$

If one such D is sI, its equation gives U=sI. The other equations then force every row and column diagonal to equal sI, hence R=sI everywhere.

Otherwise every row and column of S contains opposite signs. Therefore

$$
S=\pm\begin{pmatrix}1&-1\\-1&1\end{pmatrix}.
$$

The same U must satisfy the braid equation with both Z=diag(1,-1) and -Z. These equations read ZUZ=UZU and ZUZ=-UZU, forcing ZUZ=0, impossible for U^2=I. This proves the proposition. No positivity, unitarity, crossing or fusion hypothesis entered. $\square$.

A fixed asymptotic vacuum does not automatically evade the test: if all finite admissible kink paths can be extended by further kinks, the displayed triples occur inside longer paths in the fixed-endpoint sector. That extension property must be checked if one discards part of the path spectrum.

## 3. The scalar solutions do not respect the natural pair maps

It would be incorrect to call a scalar path-space R automatically ordinary Bose/Fermi statistics. Instead, test the actual pair structure.

For the A_L graph, let

$$
\mu_a=\sin\frac{a\pi}{L+1}>0,\qquad
\delta=2\cos\frac{\pi}{L+1},\qquad
\sum_{b\sim a}\mu_b=\delta\mu_a.
$$

The overall scale of mu is irrelevant; A3 can use weights (1,sqrt(2),1). Define the two cup insertions from H_1 to H_3 by

$$
\begin{aligned}
C_L|a,b\rangle
 &=\sum_{x\sim a}\sqrt{\mu_x/\mu_a}\,|a,x,a,b\rangle,\\
C_R|a,b\rangle
 &=\sum_{y\sim b}\sqrt{\mu_y/\mu_b}\,|a,b,y,b\rangle.
\end{aligned}
$$

Their adjoints are the corresponding cap maps. The reciprocal edge weights give the conjugate identities. In particular, orthogonality of paths and the Perron equation give

$$
C_L^\dagger C_L=C_R^\dagger C_R=\delta I,\qquad
C_L^\dagger C_R=I,\qquad
(C_L-C_R)^\dagger(C_L-C_R)=2(\delta-1)I.
$$

For the cross term, the only common path from |a,b> is |a,b,a,b>; its two coefficients multiply to one. This is an all-L proof, not an extrapolation from finite matrix checks.

If R is to be a symmetric exchange natural with respect to these cups, sliding a kink past a created pair must identify the two insertions. For R_i = +I or -I, the product of the two exchanges is I, so this naturality identity requires C_L=C_R. At A3, delta=sqrt(2)>1, and the displayed positive norm proves that it fails.

Consequently there is no constant involutive exchange on this A3 path spectrum compatible with these pair maps. A2 is a useful degenerate check: delta=1 and the cup difference vanishes. Arbitrary pair maps, additional edge multiplicities or an enlarged particle spectrum are not classified by this result.

## 4. Temperley–Lieb test and the actual scattering limit

On the A_L path basis define Hermitian operators

$$
E_i|\ldots,a,b,c,\ldots\rangle
 =\delta_{ac}\sum_{d\sim a}
 \frac{\sqrt{\mu_b\mu_d}}{\mu_a}
 |\ldots,a,d,a,\ldots\rangle.
$$

They satisfy E_i^2=delta E_i and E_i E_(i+1) E_i=E_i. For the two-channel ansatz R_i=A I+B E_i, direct noncommutative expansion gives

$$
\begin{aligned}
R_i^2-I&=(A^2-1)I+(2AB+\delta B^2)E_i,\\
R_iR_{i+1}R_i-R_{i+1}R_iR_{i+1}
 &=B(A^2+\delta AB+B^2)(E_i-E_{i+1}).
\end{aligned}
$$

When I,E_i are independent, B is nonzero and E_i differs from E_(i+1), involutivity imposes A^2=1 and B=-2A/delta. The braid equation then requires delta^2=4. Thus the natural reflection I-2E_i/delta fails on every finite A_L with L>=3. This ansatz test is weaker than the complete A3 proposition but applies to the whole indicated family. The formal delta=2 limit removes this algebraic defect; it does not construct a new QFT or prove inequivalence.

For A3, one explicit three-kink block has endpoints 1,2 and basis (1,2,1,2),(1,2,3,2):

$$
E_1=\sqrt2\begin{pmatrix}1&0\\0&0\end{pmatrix},\qquad
E_2=\frac1{\sqrt2}\begin{pmatrix}1&1\\1&1\end{pmatrix}.
$$

For R_i=I-sqrt(2)E_i, the braid defect is exactly

$$
R_1R_2R_1-R_2R_1R_2
 =\begin{pmatrix}-1&1\\1&1\end{pmatrix}\ne0.
$$

The physical scattering proposal instead has

$$
S_i(\theta)=Z(\theta)\left[
 \sinh\frac{i\pi-\theta}{4}\,I
 +\sinh\frac{\theta}{4}\,E_i\right].
$$

The two channel projectors are P_0=E_i/delta and P_1=I-P_0. Their eigenamplitude ratio is independent of Z and of any common scalar CDD factor:

$$
\frac{S_0(\theta)}{S_1(\theta)}
 =\frac{\sinh((i\pi+\theta)/4)}{\sinh((i\pi-\theta)/4)}
 \longrightarrow -i\quad(\theta\to+\infty).
$$

It is nonconstant, displaying genuine channel-dependent scattering, but cannot be the spectrum of an involution up to a common phase. More explicitly, with q=exp(i*pi/4), the constant limit is proportional to B_i=E_i-q^(-1)I. These B_i are unitary braid operators and have channel eigenvalue ratio -q^2=-i; B_i^2 is not scalar. This q is a TL convention, not the squared q used in some quantum-6j conventions.

## 5. Why modified crossing is a real distinction

In the source's cyclic corner notation, the symmetry-compatible proposal obeys

$$
S^{ab}_{dc}(\theta)
 =\sqrt{\frac{d_a d_c}{d_b d_d}}
 S^{bc}_{ad}(i\pi-\theta),\qquad
 d_a=\frac{\sin((2a+1)\pi/n)}{\sin(\pi/n)}.
$$

For A3, n=4, source labels a=0,1/2,1 map to our vertices 2a+1. The source scattering element maps the input path |d,c,b> to |d,a,b>; hence its Kronecker delta_ac is the identity on the middle path label, while the delta_bd term is E_i. This fixes the convention conversion used above.

The weights arise from differently normalized s- and t-channel kink states and the infrared topological theory. They are not an assumption of an indefinite physical inner product. Both the composable-path state space and its weighted caps differ from the fixed orthonormal V tensor V ansatz in the earlier crossing calculation.

[Copetti–Córdova–Komatsu v2, PDF/printed p. 4, Eqs. (18),(21),(22)](https://arxiv.org/pdf/2403.04835v2#page=4) distinguish the old rapidity-dependent quantum-dimension phase from the symmetry-compatible proposal. [PDF/printed p. 12, Eqs. (68),(70),(71)](https://arxiv.org/pdf/2403.04835v2#page=12) give the projectors and channel ratios. These formulas were inspected on the rendered pages, not inferred only from extracted text.

A necessary limitation is explicit in [PDF/printed p. 6, footnote 14](https://arxiv.org/pdf/2403.04835v2#page=6): the Cauchy-surface scattering formula used in the proposed explanation has not been derived there for nonlocal kink-creation operators; its applicability is assumed. Thus this source is not a replacement for constructing a positive covariant local net with the required sectors. The algebraic A3 obstruction above is independent of that unproved physical identification.

## 6. An actually nonordinary path R, and why the first completion fails

Take three vacua labelled by Z_3 and allow one edge between every ordered pair, including equal labels. Define the endpoint-preserving middle-vertex permutation

$$
T(a,b,c)=(a\ c)\cdot b,\qquad
R|a,b,c\rangle=|a,T(a,b,c),c\rangle.
$$

Here (a c) is the transposition of the two vacuum labels, and is the identity when a=c. Introduce the edge increments g=b-a and h=c-b modulo three. In these coordinates the same exchange is the constant matrix on V=C|0> plus W, dim(W)=2,

$$
r|g,h\rangle=
\begin{cases}
|h,g\rangle,&g=0\text{ or }h=0,\\
|g,h\rangle,&g\ne0\text{ and }h\ne0.
\end{cases}
$$

This is a permutation matrix, is unitary and involutive, and satisfies Yang–Baxter. To see the last statement, it moves zeros past nonzeros without changing the ordered word of nonzero labels; the cases of zero, one, two or three zeros in a triple give the braid relation directly. With fixed left vacuum, the two-particle dimension is 9 and tr(r)=1+dim(W)^2=5. A graded flip on a three-dimensional super Hilbert space has trace p-q with p+q=3, never 5. Thus even a general two-particle unitary cannot intertwine this r with that ordinary graded flip. This does not exclude larger ordinary field parents or compare physical charge categories.

Its single-mode symmetric-word counting also shows the distinction: n-letter invariant states are indexed by the ordered nonzero word of length k<=n, giving

$$
\dim\operatorname{Sym}_r^n(V)=\sum_{k=0}^n2^k=2^{n+1}-1,\qquad
z_r(t)=\frac1{(1-t)(1-2t)}.
$$

This counting is an algebraic property, not yet a relativistic partition function. If diagonal edges are unwanted, replace each vacuum by (epsilon,a) in Z_2 times Z_3 and allow only parity-changing edges. The same local update then has only genuine changes of the full vacuum label; this does not cure the following problem.

Let W(a,b,c,d)=<a,d,c|R|a,b,c>. A weighted face-crossing relation with finite nonzero weights requires its zero/nonzero support to be invariant under a 90-degree rotation of the four corners. But

$$
W(0,1,2,1)=1,\qquad W(1,2,1,0)=0.
$$

No positive vacuum weights, common phase or nonzero scalar scattering factor can repair this mismatch. Thus S(theta)=s(theta)R cannot meet such face crossing. A more general rapidity-dependent completion is not excluded by this calculation alone.

As a finite counterexample search, all 4^9 endpoint-preserving three-vacuum permutation involutions were enumerated: there are 13 Yang–Baxter solutions, with fixed-left trace distribution 1 of trace 9, 6 of trace 5, and 6 of trace 3. Only four have rotation-invariant support. They are

$$
T=a-b+c,\qquad T=-a-b-c+k,\quad k=0,1,2\quad (\bmod 3).
$$

The first is the ordinary flip of increments. For the others, use the edge color x=a+b-2k; the update becomes (x,y) -> (-y,-x). A position-dependent sign change of successive edge colors converts all adjacent exchanges to ordinary flips, while preserving each fixed-endpoint subspace under the transformed endpoint constraint. This is an ordinary-exchange representation, not a field-net equivalence theorem. The finite enumeration covers only zero/one permutation amplitudes, not arbitrary unitary matrices, other graphs or enlarged species.

## 7. Consequences for the construction problem

The [exterior-intertwiner criterion](<Complete field nets and R-parastatistics.md>) concerns local creation of charges, not their statistics. A kink theory with distinct asymptotic order parameters could satisfy that criterion while still failing the exchange test. In the present candidate, granting the proposed interacting scattering description and a future rigorous net realization would not repair its constant-exchange and pair-map obstruction.

There is also a conditional warning about categorical formulations. If B=C^r is taken as the *physical tensor unit*, all its vacuum projections p_a are morphisms, and a full braiding is natural with respect to them, then unit naturality gives L(p_a)=R(p_a) on every object. Hence its off-diagonal spaces H_ab vanish for a!=b. This short argument does not apply if B is only vacuum bookkeeping and one specifies exchanges solely on nonempty composable paths. One must not impose a full symmetric multi-unit category silently and then claim to have classified all physical kink statistics.

The concrete unresolved calculation is now sharper: permit matrix-valued face amplitudes and/or edge multiplicities, and solve involutivity, Yang–Baxter, weighted crossing and the proposed physical pair identities together, before attempting a relativistic interaction. The A3 theorem, the TL result and the three-vacuum permutation enumeration do not cover that problem. Neither a surviving algebraic solution nor failure of the old crossing ansatz would by itself establish the requested physical inequivalence.

## Verification and scope

**Verified:** The proofs in sections 2–4 are general for their stated hypotheses. Sage exact arithmetic checked the complete 16-sign A3 system (including non-Hermitian 2-by-2 involutions), the TL residual polynomial, positive path matrices for A2–A5, cup Gram identities, the explicit A3 braid defect, the physical limiting braid, the trace-5 example and the full 4^9 finite permutation search. The A3 classification and the path-example analysis received a separate fresh-agent derivation and exact check; a second independent source review identified the physical candidate and its TL/cup obstruction. Reproducible checks are in [kink_path_exchange_checks.sage](<kink_path_exchange_checks.sage>).

The final full-script [Sage run record](</Users/koishi/.dsh/research-results/session-df06cdae54f5/07ca0557ddc4-research-result-readable.txt>) reports every check passed. The executed source SHA-256 is `88f5de203e7d3cedd7f6f1926c95608f074df1a3f3267ee51830735f031c2f4d`; it also checks symmetric-power ranks through degree six and the color-coordinate reduction of all four rotation-support survivors.

**Assumptions:** Constant endpoint-preserving exchange; one-dimensional directed edges for the complete A3 theorem; the stated positive Perron path metric and cup maps for the pair obstruction; and the cited scattering/fusion identification when interpreting the example physically. The fixed-tensor crossing convention is not substituted for face crossing.

**Not verified:** A new positive covariant interacting local net; its complete physical sector category; a general relativistic realization of the trace-5 algebra; a classification of arbitrary matrix-valued face R; or a no-go following solely from positivity, covariance and observable locality. No 3+1-dimensional construction or exclusion is obtained. The original research objective remains open.
