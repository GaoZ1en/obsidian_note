# Weighted face crossing and reconstruction

## Result

**General quantum face amplitudes do not evade conjugate-object reconstruction under the positive weighted crossing specified below.** For a finite connected undirected kink graph with one-dimensional directed edges, positive Perron–Frobenius cups, and a unitary involutive Yang–Baxter exchange, that crossing supplies the cup-slide identity automatically. The generated symmetric C*-tensor category has simple unit, and its generating object has statistical dimension equal to the integer Perron eigenvalue. Its exchange category is equivalent to an ordinary compact-group Bose/Fermi category.

This extends the [A3 path calculation](<Kink path exchange and involutive R.md>) beyond permutation matrices and beyond the Temperley–Lieb ansatz. It does **not** reconstruct a local field net, prove that these morphisms are the physical charge intertwiners of a QFT, or settle the comparison with every complete ordinary parent. Crossing remains an additional assumption, not a consequence established here from the three minimal observable axioms.

There are nontrivial positive controls. A dense three-vacuum solution with entries 2/3 and -1/3 satisfies every exchange equation but admits an explicit ordinary-exchange reduction. A nonregular three-vertex graph yields a genuinely matrix-valued recoupling of ordinary S3 fields. A signed-crossing scattering ansatz is also regular and interacting at the two-body scattering level, but its proposed constant exchange fails physical reversed-edge cup naturality on the triangle. None supplies the requested new physical statistics.

## 1. Objects, metrics and the crossing convention

Let Gamma be a finite connected undirected graph with at least one edge; loops are allowed, parallel edges are not included in the theorem below. Let A be its symmetric adjacency matrix, and choose strictly positive weights mu and Perron eigenvalue delta:

$$
A\mu=\delta\mu,\qquad \mu_a>0.
$$

Set B=C^V, where V is the vertex set. The directed-edge B-bimodule X has orthonormal basis |a,b> for a~b. Its relative tensor powers X^n=X tensor_B ... tensor_B X have orthonormal path bases |a_0,...,a_n>. Left and right B-actions read the path endpoints. This is not an ordinary tensor product of independent particle labels.

A constant endpoint-preserving operator R on X^2 has coefficients

$$
W(a,b,c,d)=\langle a,d,c|R|a,b,c\rangle.
$$

All four edges of the cyclic quadruple must exist; other coefficients vanish. Products act right-to-left. Assume

$$
R^\dagger R=I,\qquad R^2=I,\qquad
R_1R_2R_1=R_2R_1R_2,
$$

and the following **positive linear weighted crossing**, with no complex conjugation:

$$
W(a,b,c,d)
 =\sqrt{\frac{\mu_b\mu_d}{\mu_a\mu_c}}
 W(d,a,b,c).\tag{FC+}
$$

The rotation is (a,b,c,d) -> (d,a,b,c). The inverse rotation gives an equivalent condition. In the corner convention of [Copetti–Córdova–Komatsu, arXiv:2403.04835v2, p. 4, Eq. (22)](https://arxiv.org/pdf/2403.04835v2#page=4), the amplitude mapping |a,b,c> to |a,d,c> is their S^{dc}_{ab}. This is the constant specialization of their positive face-crossing relation, not the unweighted fixed-label crossing of the earlier tensor-space calculation.

Define the coevaluation and its two insertions by

$$
\begin{aligned}
c(p_a)&=\sum_{b\sim a}\sqrt{\mu_b/\mu_a}\,|a,b,a\rangle,\\
C_L|a,b\rangle&=\sum_{y\sim a}\sqrt{\mu_y/\mu_a}\,|a,y,a,b\rangle,\\
C_R|a,b\rangle&=\sum_{x\sim b}\sqrt{\mu_x/\mu_b}\,|a,b,x,b\rangle.
\end{aligned}
$$

Here p_a is a basis vector of the unit bimodule B. Using it to specify c does not declare each vacuum projection to be a morphism of the generated category. The cup has bounded norm sqrt(delta), c†c=delta I_B, and the reciprocal edge weights give both conjugate identities.

## 2. Crossing supplies the full cup slide

**Proposition.** FC+ and R^2=I imply

$$
R_2R_1C_R=C_L,\qquad R_1R_2C_L=C_R.\tag{slide}
$$

Neither unitarity nor Yang–Baxter is required for this step.

**Proof.** For an input |a,b> and an output |a,y,z,b>, the first expression has coefficient

$$
\begin{aligned}
&\sum_x\sqrt{\frac{\mu_x}{\mu_b}}
 W(a,b,x,y)W(y,x,b,z)\\
&=\sqrt{\frac{\mu_y}{\mu_a}}
 \sum_xW(y,a,b,x)W(y,x,b,z)\\
&=\sqrt{\frac{\mu_y}{\mu_a}}\,\delta_{za}.
\end{aligned}
$$

The first equality uses crossing on the first W; the sum in the second line is the (z,a) matrix element of R^2 in the endpoint block (y,b). The last expression is exactly the coefficient of C_L. Taking the inverse product gives the second identity. $\square$

This is the missing compatibility condition, not merely the existence of a vector called an antiparticle pair. In an exact symbolic test one can write mu_a=t_a^2 and W(a,b,c,d)=K(a,b,c,d)/(t_a t_c), with K constant on cyclic rotation orbits. The coefficient identity then holds identically before imposing R^2=I; the remaining residual is precisely the corresponding block of R^2-I.

## 3. The generated category is symmetric, rigid and has simple unit

Take objects X^n, including X^0=B. Start with morphisms generated only by R, c, c† and identities under complex linear combinations, compositions, relative tensor products and adjoints. Then close under finite sums and subobjects.

Yang–Baxter and involutivity supply the symmetric block-permutation braidings. Naturality holds with the R generators by Yang–Baxter, with c by the slide, and with c† by adjunction using the unitary exchange. It therefore extends to all generated morphisms. The conjugate identities make the category rigid, and its concrete adjoints and operator norms give a C*-tensor structure.

There is no need to assume a simple unit. If f belongs to the generated End(B), it is concretely a diagonal B-bimodule map with vertex values f_a. Naturality with the unit gives

$$
f\otimes I_X=I_X\otimes f.
$$

On the edge |a,b>, this says f_a=f_b. Connectivity implies

$$
\operatorname{End}_{\mathcal C}(B)=\mathbb C I_B.
$$

Adjoining every ambient vacuum projection would destroy this conclusion and, by the same argument, exclude all off-diagonal kink objects. Those projections are deliberately not adjoined here. This distinguishes the generated exchange category from the full category of B-bimodules and from the full physical observable theory.

### Why the Perron eigenvalue really is the statistical dimension

The bound d(X)<=delta from one conjugate solution is not enough. Standardness must be checked.

For T in the generated End(X), write its one-dimensional edge blocks as T_ab. The two cup closures are scalars in End(B). Their values, independently of the initial vertex a, have the form

$$
\lambda_L=\sum_{b\sim a}\frac{\mu_b}{\mu_a}T_{ab},\qquad
\lambda_R=\sum_{b\sim a}\frac{\mu_b}{\mu_a}T_{ba}.
$$

Multiply by mu_a^2 and sum over the finite vertex set. Interchanging a and b proves lambda_L=lambda_R. This is the standard conjugate-solution criterion; consequently

$$
d_{\mathcal C}(X)=\delta.
$$

The symmetric rigid C*-category reconstruction theorem, in the same form used in the [DHR–DR survey](<Parastatistics beyond DHR-DR reconstruction.md>), now gives

$$
\mathcal C\simeq_{\mathrm{sym},*}\operatorname{Rep}_{\mathrm{fin}}(G,k),
\qquad \delta=\dim V\in\mathbb Z_{>0}.
$$

Here G is compact and the central involution k gives the Bose/Fermi grading. This is the categorical part of [Doplicher–Roberts reconstruction](https://link.springer.com/article/10.1007/BF01388849), not a new proof of its embedding theorem and not a physical field-net reconstruction.

For example, every finite path graph A_L with L>=3 has 1<delta<2, so it admits no R satisfying all these assumptions, even with general complex amplitudes. Integer delta is only a necessary condition. The actual dimensions of fixed-vacuum path spaces need not equal categorical dimensions.

## 4. A dense three-vacuum solution: quantum amplitudes exist, but do not help here

Use three vertices Z_3 with every edge, including loops, and mu_a=1, delta=3. Set

$$
W_*(a,b,c,d)=\frac23-\delta_{a+c,b+d\ (\mathrm{mod}\ 3)}.
$$

At fixed endpoints (a,c), let P^{ac}|b>=|a+c-b> and let J be the all-ones 3-by-3 matrix. Then

$$
R^{ac}=\frac23J-P^{ac},\qquad
J^2=3J,\quad JP^{ac}=P^{ac}J=J.
$$

Hence every block is a real Hermitian involution with trace 1. Its entries are all nonzero, either 2/3 or -1/3, so it genuinely lies outside the previous permutation search. FC+ is immediate.

To prove Yang–Baxter and identify the exchange, write the edge increments g=b-a and h=c-b in Z_3. This identifies the fixed-left n-path space with (C^3)^{tensor n}. In the Fourier basis

$$
|\chi_m\rangle=\frac1{\sqrt3}\sum_g e^{2\pi i mg/3}|g\rangle,
$$

the exchange is

$$
r|m,n\rangle=q_{mn}|n,m\rangle,\qquad
q_{mn}=\begin{cases}1,&m=n,\\-1,&m\ne n.\end{cases}
$$

Both sides of Yang–Baxter multiply by the same three scalar signs. More explicitly, define

$$
J_n|m_1,\ldots,m_n\rangle
 =(-1)^{\#\{i<j:m_i>m_j\}}|m_1,\ldots,m_n\rangle.
$$

Then J_n r_i J_n=P_i for every n. This is an exact ordinary-bosonic exchange representation, not just agreement of state counts. The Fourier/color transformation and J_n need not preserve the original fixed-final-vacuum constraints or local pair insertions. It is not a proof of equivalence of physical local field nets.

### A necessary trace restriction without Yang–Baxter

There is a stronger finite diagnostic for this complete three-vacuum graph. Any Hermitian unitary involution block has trace in {-3,-1,1,3}; a block with trace 3s is precisely sI. FC+ excludes such a scalar block.

If R^{aa}=sI, crossing forces (R^{bb})_{aa}=s for every b. Unitarity then sets (R^{bb})_{ca}=0 for c!=a. Crossing again says every diagonal element of R^{ac}, c!=a, is zero. A three-dimensional involution cannot have trace zero.

If R^{ac}=sI with a!=c and remaining vertex k, crossing forces (R^{bb})_{ca}=s for every b. Hermitian unitarity makes each R^{bb} an s-swap on the a,c subspace and a sign epsilon_b on k. But crossing requires (R^{aa})_{kk}=(R^{kk})_{aa}, whose two sides are epsilon_a and zero. This is impossible.

Thus every block has trace +/-1, and the fixed-left two-particle trace lies in {-3,-1,1,3}, without assuming Yang–Baxter or translation symmetry. This rules out the earlier trace-5 discriminator under FC+, but is not a classification or an equivalence proof.

## 5. Nonuniform vacuum weights: an ordinary S3 control

Take vertices labelling the trivial, sign and standard irreducible representations of S3, of dimensions (1,1,2), and let X be the ordinary real two-dimensional standard representation. Its fusion graph is

$$
A=\begin{pmatrix}0&0&1\\0&0&1\\1&1&1\end{pmatrix},\qquad
\mu=(1,1,2),\qquad \delta=2.
$$

Clebsch–Gordan isometries T_ab:V_b -> V_a tensor X give path intertwiners T_abc=(T_ab tensor I_X)T_bc. Define W by transporting the ordinary flip of the two X factors:

$$
T_{adc}^\dagger(I_{V_a}\otimes P)T_{abc}
 =W(a,b,c,d)I_{V_c}.
$$

The nontrivial block, with endpoint (2,2) and intermediate order 0,1,2, is

$$
R^{22}=\begin{pmatrix}
1/2&-1/2&1/\sqrt2\\
-1/2&1/2&1/\sqrt2\\
1/\sqrt2&1/\sqrt2&0
\end{pmatrix}.
$$

The explicit isometries, their S3 intertwining identities, completeness, all crossing equations, Yang–Baxter and cup-slide are checked in the accompanying script. The ordinary real X cup transports exactly to the positive Perron cup, so this example checks the nonuniform normalization, not only the braid relation.

The raw fixed-left exchange traces are (1,1,3), while the categorical weighted traces are all 2:

$$
\sum_{b,c}\frac{\mu_c}{\mu_a}W(a,b,c,b)=2.
$$

This is a concrete reason not to substitute unweighted fixed-vacuum path dimensions or traces for intrinsic statistical dimension.

## 6. A signed-crossing scattering completion and its remaining obstruction

The sign in FC+ matters. On the triangle K3 *without loops*, mu=1 and delta=2. Let E_i be the positive-cup Temperley–Lieb generator and set R_i=I-E_i. It is a Hermitian involutive Yang–Baxter solution, but

$$
W(a,b,c,d)=-W(d,a,b,c),\qquad
R_2R_1C_R=-C_L.
$$

This is not a counterexample to the theorem. Multiplying R by -1 preserves the crossing sign, so negative crossing is not the same as the ordinary Bose/Fermi sign. A global phase of c also leaves the slide defect unchanged.

There is nevertheless a controlled scattering completion. In 1+1 dimensions, with common mass m>0, rapidity theta and positive-energy momentum p(theta)=m(cosh(theta),sinh(theta)), take

$$
S_i(\theta)=s(\theta)R_i,\qquad
s(\theta)=i\tanh\left(\frac\theta2-\frac{i\pi}4\right)
 =\operatorname{sech}\theta+i\tanh\theta.
$$

Its exact scalar identities are

$$
\begin{aligned}
s(\theta)s(-\theta)&=1,\\
s(i\pi-\theta)&=-s(\theta),\\
\overline{s(\theta)}&=s(-\theta)\quad(\theta\in\mathbb R),\\
\frac{s'(\theta)}{s(\theta)}&=i\operatorname{sech}\theta.
\end{aligned}
$$

Thus the two negative signs cancel in the *rapidity-dependent* face crossing. Factorized Yang–Baxter, positive real-axis scattering unitarity and Hermitian analyticity hold. The nonconstant phase supplies nontrivial two-body scattering data. The physical strip 0<Im(theta)<pi contains one simple zero at i*pi/2 and no poles; the nearest poles are -i*pi/2 and 3i*pi/2. The amplitude is bounded on the closed physical strip and on a slightly wider strip. Its high-rapidity limits are

$$
S(+\infty)=iR,\qquad S(-\infty)=-iR,
$$

whose squares are -I, not I. Removing these phases to call R the statistics operator is an additional physical claim, not a consequence of scattering unitarity.

There is a direct physical-pair obstruction on this triangle. Label the two allowed steps by h=+1,-1 in Z_3 and allow an arbitrary local cup coefficient u_(a,h) for the path |a,a+h,a>. Naturality of this cup with the constant R, tested on an incoming step g, requires

$$
u_{a+g,h}=-u_{a,h},\qquad g=+1,-1.
$$

Going around the three-cycle forces every coefficient to vanish. This rules out repair by local vacuum-dependent phases of the reversed-edge pair, not merely a common cup phase. Calling the two evaluations left/right or assigning a Frobenius–Schur sign does not eliminate naturality with the *same coevaluation morphism* on both sides.

For a constant phase lambda R, the positive-cup slide instead reads -lambda^2 C_L. Naturality therefore requires lambda^2=-1, whereas involutivity requires lambda^2=1. The natural constant braids are the asymptotic choices +/-iR, not an involutive exchange. The exact linear cup system has zero-dimensional kernel for R and a two-dimensional kernel for iR; arbitrary local complex cup coefficients were allowed in this test.

In increment coordinates R is a color-sign flip: equal signs exchange with +1 and opposite signs with -1. The inversion-sign transformation removes it to the ordinary flip at each particle number and preserves endpoint charges, but changes cup insertions and the tensor structure. Neither that exchange-only equivalence nor the existence of a regular S proves a complete ordinary local parent, and neither establishes new physical statistics. A positive spacetime observable net and intrinsic charge-transport interpretation have not been supplied.

In particular, the [earlier analytic antisymmetrizing-intertwiner estimate](<R-parastatistics crossing and local continuum construction.md#L467-L559>) does not transfer unchanged. In the present two-label increment space S(0)=R has eigenvalue multiplicities (3,1) for (+1,-1), while -P has multiplicities (1,3). No invertible analytic intertwiner at coincident rapidities can conjugate one to the other. This locates a gap in applying that specific locality proof, not a proof that a local realization is impossible. Merely attaching a vacuum label a in Z_3 to a scattering Fock space would likewise not construct physically distinguishable broken-phase vacua.

## 7. Research boundary

Within finite connected multiplicity-free paths and FC+, allowing general quantum amplitudes is no longer an untested escape from conjugates: section 2 supplies them and section 3 reconstructs their ordinary algebraic statistics. Additional vacua alone do not address this. Even an infinite graph would not evade the categorical obstruction merely by being infinite if a positive symmetric category with bounded conjugate maps still existed; the finite weighted-sum proof of d(X)=delta, however, would require separate justification there.

The remaining substantive possibilities are different duality/crossing data, a genuinely non-rigid physical charge theory, or a momentum-dependent exchange whose physical permutation statistics can be defined independently of its scattering matrix. Each requires an actual positive charged representation and observable theory. The signed S above is an explicit datum for such a construction test, but its constant-R interpretation already fails the local reversed-edge cup test. It is not evidence that the original goal has been achieved.

## Verification

**Verified:** The general component slide, simple-unit argument and standardness proof were independently derived by a fresh reviewer with the stated conventions. Sage checked 81 symbolic weighted contraction identities, the dense example and its Fourier/inversion reduction, the three-dimensional scalar-block algebra, and the nonuniform S3 control including its ordinary representation intertwiners. It also checked the signed triangle model. Mathematica independently returned zero residuals for the scalar unitarity, Hermitian analyticity, negative crossing, phase derivative and strip-modulus formula, with no messages. The regularity and poles follow explicitly from tanh. The three-vacuum amplitude analysis and signed completion each received separate fresh reviews.

The reproducible algebraic checks are in [weighted_face_crossing_checks.sage](<weighted_face_crossing_checks.sage>). The [full Sage run](</Users/koishi/.dsh/research-results/session-df06cdae54f5/2832fcf37585-research-result-readable.txt>) passed at source SHA-256 `0e11ef6546680c371c74cf87be0ac87704fe73a1a45ba826a760e305ee92a948`, including the full-rank arbitrary-cup obstruction. The [Mathematica scalar checks](</Users/koishi/.dsh/research-results/session-df06cdae54f5/761d3f92e595-research-result-readable.txt>) independently confirm the scattering identities.

**Assumptions:** The stated finite graph, orthonormal path metric, positive Perron cups, the linear crossing sign and constant endpoint-preserving R. DR is an explicitly invoked theorem. The generated algebraic category is not automatically the physical sector category. No implication from observable locality alone to FC+ has been established.

**Not verified:** A new interacting local relativistic net with the desired charged sectors; a full treatment of edge multiplicities or general twisted crossing data; physical new permutation statistics of the signed scattering ansatz; exclusion of every complete ordinary field parent for a surviving new model; or a 3+1-dimensional construction. The original objective remains open.
