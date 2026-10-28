# Independent investigation of interacting multiparticle spectra in global AdS₃

**Research report — 21 October 2026**

**Repository assessed:** GaoZ1en/obsidian_note, fixed commit **670abb1bb4b644a162278415ef94dde09cdeb016**.  
**Research directory:** Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/.  
**Scope:** first-order coefficient operators, with finite particle number and finite primary degree before any asymptotic limit.

## Assessment

The selected central claims in the newer contact-interaction work survive independent examination. In particular, the contact pair multiplier, number selection, balanced and adjacent three-body rank results, physical $(2,2)$ square-root splitting, and physical seven-dimensional $S_7$ example have sound arguments or independent exact reconstructions. The corrected gravitational mixed-channel calculation also survives an all-radial-index derivation. This is a selective assessment, not certification of every theorem in the repository.

The investigation also advances the mathematics:

1. It completes the three-body contact rank problem for every bidegree and every $\Delta>1$, including all possible exceptional masses.
2. It gives a differential factorization of the contact operator and classifies its first nonchiral strip $Q=1$ for every $N\ge2$, with an explicit kernel basis and Hilbert series.
3. It identifies every stable large-$N$ leading slope by a beta-binomial formula, then proves an infinite sequence of uniquely located masses with genuine $\sqrt N$ spectral splitting.
4. It proves a mass-independent strong continuum limit of the three-body Racah-square matrix, with an explicit integral kernel and complete Legendre spectrum.
5. Conditional on the stated Einstein pair multiplier, it proves a sharp uniform comparison between contact and the positive Einstein residual, including the exact interval of contact deformations preserving positivity and all residual kernels.

These results separate kinematics, pair-channel support, and dynamical coefficients more sharply than any single low-block comparison. Large zero spaces, algebraically complicated finite eigenvalues, and exceptional $\sqrt N$ behavior already occur in contact theory. For gravity, the support and size of the pair residual contain the additional dynamical information.

“New” in this report means obtained in this investigation and not found in the inspected project materials. It is not a claim of priority over the mathematical literature. Rankin–Cohen intertwiners and invariant covariant modules are standard constructions; their normalization and application here are proved explicitly.

## 1. Precisely defined objects and logical scope

Use unit AdS radius, one real scalar, $m^2=\Delta(\Delta-2)$, $\Delta>1$, a smooth center, source-free fast falloff, and a fixed boundary clock. For contact, the action perturbation is $-\lambda\phi^4/4!$. The invariant vacuum Wick prescription fixes the physical one-particle gap. The contact energy convention is

$$
E=N\Delta+P+Q+\lambda\,\varepsilon+o(\lambda),
\qquad
W=\mathcal K_{\phi^4}.
$$

Here $P,Q$ are **primary** degrees. Descendants have additional free excitation energy and inherit their primary coefficient. A limit of first-order coefficients as $N,P,Q$ grow does not establish a remainder uniform at fixed nonzero coupling.

The one-particle polynomial representation has
$$
J_-=\partial_z,\qquad J_0=z\partial_z+\Delta/2,\qquad
J_+=z^2\partial_z+\Delta z,\qquad
\|z^p w^q\|^2=\frac{p!q!}{(\Delta)_p(\Delta)_q}.
$$
Define
$$
U_{N,P}=\ker\Bigl(\sum_i\partial_{z_i}\Bigr)\cap
\mathbb C[z_1,\ldots,z_N]_P,\qquad
\mathcal H_{N;P,Q}=(U_{N,P}\otimes U_{N,Q})^{S_N}.
$$
The permutation is simultaneous in left and right variables; separately symmetrizing the two chiral factors gives the wrong Bose space.

Let $\Pi_{ij}^{(k,\ell)}$ be the physical orthogonal projector onto relative pair labels $k,\ell$. The contact operator is
$$
\boxed{
W_{N;P,Q}=\sum_{i<j}\sum_{k\ge0}c_k\Pi_{ij}^{(k,k)},\qquad
c_k=\frac1{8\pi(2\Delta+2k-1)}.
}
\tag{1}
$$
Only finitely many labels occur on a finite block. Results about its kernel or rank below hold for **arbitrary strictly positive** $c_k$, unless an actual spectral value or asymptotic is stated. These results are unconditional theorems about (1); they use no gravitational exchange calculation.

For gravity, $W_E$ denotes the coefficient multiplying $G$, with $\kappa^2=16\pi G$. Its physical interpretation retains the action, canonical chart, boundary conditions, and subtraction prescription in the original manuscript. We independently evaluate sensitive channels and the formal closure argument, but do **not** independently reconstruct every all-label Einstein response or establish the common continuum Hessian domain. The comparison theorem in Appendix E states its pair-multiplier assumption explicitly.

### Sources actually examined

The assessment uses the older setup notes, the newer audit and contact notes, and the recovered original 190-page *Global AdS₃ Einstein–Scalar: Complete Finite First-Order Spectra and Their Structures*, dated 19 October 2026. The latter's source and original PDF were both inspected; its free-mode page 11 and pair-formula page 24 were also checked visually. It is materially more careful than some older working notes about $\lvert j\rvert$, normalizations, and $o(G)$ remainders.

The source register at the end supplies fixed-commit links and exact sections/lines. The reproducibility package records source hashes, the original manuscript/package identity and hashes, all fresh scripts, and their outputs. No repository script, coefficient cache, or saved spectrum is imported by the independent calculations.

## 2. Consequential existing claims independently verified

### 2.1 Contact number selection and the exact pair multiplier

The two-particle formula in [R1], §§3–6, is a proof, not an extrapolation from low degrees. Its essential argument can be reconstructed directly.

A possible $1\to3$ resonance must obey both energy and angular momentum conservation:
$$
p_A=\Delta+\sum_i p_i,\qquad
q_A=\Delta+\sum_i q_i.
$$
Thus it is possible only at integer $\Delta>1$. Put
$$
s=\frac{\sum_i|j_i|-|\sum_i j_i|}{2},\qquad
n_A=\Delta+\sum_i n_i+s.
$$
After stripping nonzero normalization constants, the resonant overlap is a Jacobi inner product of $P_{n_A}^{(|j_A|,\Delta-1)}(1-2y)$ against
$$
y^s(1-y)^{\Delta-1}
\prod_iP_{n_i}^{(|j_i|,\Delta-1)}(1-2y).
$$
The latter is a polynomial of degree at most $n_A-1$. Orthogonality proves exact vanishing at every allowed exceptional mass. Positive energy excludes $0\leftrightarrow4$. This establishes particle-number conservation of the **first-order resonant operator**, not an all-orders $U(1)$ symmetry.

Next, take a normalized pair primary with labels $k,\ell$, and restrict its two-point wavefunction to coincident spacetime points. The two scalar lowering equations for a function $e^{-iEt+ij\theta}F(\rho)$ require
$$
F'=-E\tanh\rho\,F-j\coth\rho\,F,\qquad
F'=-E\tanh\rho\,F+j\coth\rho\,F.
$$
They are compatible with a nonzero function only when $j=k-\ell=0$. Center evaluation using the normalized Clebsch–Gordan coefficients fixes
$$
\Psi_{k\ell}
=\delta_{k\ell}\frac{(-1)^k}{2\pi}
e^{-i(2\Delta+2k)t}(1+r^2)^{-\Delta-k}.
$$
The factor $1/2$ in the normalized two-boson expectation gives
$$
\frac12\int r\,dr\,d\theta\,|\Psi_{kk}|^2
=\frac1{8\pi(2\Delta+2k-1)}.
$$
The first-order projected global Ward identity makes this scalar act on the whole pair module. The number-preserving normal-ordered quartic is uniquely fixed by its two-particle matrix, so its $N$-body lift is (1). This derivation fixes the coupling, Bose, and radial-measure normalizations independently of gravity.

### 2.2 Rank, square-root behavior, and the septic

| Claim | Independent result | Precise source |
|---|---|---|
| $N=3$, balanced positive rank $P$ for $P\ge1$ | The tridiagonal-Casimir proof is valid, including its endpoint bandwidth case. | [R2], §5.2, lines 270–342 |
| $N=3$, $P=Q+1$, positive rank $Q$ | The projected raising-map argument and its extra diagonal term are valid. | [R3], §§2–3, lines 83–208 |
| Fixed-index balanced positive eigenvalues tend to $c_k$ | The compactly weighted operator converges in norm; this does not control the bottom positive eigenvalue. | [R3], §5 |
| Full symbolic $(2,2)$ contact pencil | Rebuilt from radial Jacobi/Beta integrals on the nine-dimensional shell; the full intertwining identity with its three primary columns holds over $\mathbb Q(N,\Delta)$. | [R4], §3 |
| Genuine $\sqrt N$ split at $(\sqrt{13}-1)/2$ | Exact characteristic-polynomial expansion reproduces the split coefficient and common constant. A Jordan block alone would not suffice. | [R4], §§3.1–3.2 |
| Seven-dimensional physical $S_7$ block | Rebuilt the 31-dimensional shell, eight primaries, and actual $7+1$ parity splitting. Independently proved irreducibility mod 11 and a transposition mod 19. | [R4], §5 |
| General half-integer stable expansions | The regular signed $t=N^{-1/2}$ frame and Hermitian analytic perturbation argument are already present and are valid. | [R5], §1.2; original Appendix ST |

The exact existing $(2,2)$ asymptotic, in $\widehat W=W/c_0$, is
$$
\rho_\pm(N)=\binom N2-\frac{2N}{\sqrt{13}}
\pm\frac{3\sqrt2}{13+2\sqrt{13}}\sqrt N
-\frac{(\sqrt{13}-1)/2+2}{13+2\sqrt{13}}
+O(N^{-1/2}).
$$
Appendix D gives the full independently reconstructed matrices and the septic certificate. The $S_7$ result rules out a uniform expression of all finite roots by radicals. It does not prove nonintegrability.

### 2.3 Sensitive gravitational checks

The complete quartic Ward projection in [R7], §§2–4, is a genuine formal tree-level argument under the stated charge and regular-chart hypotheses. It first removes the resonant cubic, then transports the charges and proves that the complete resonant quartic commutes with every leading boundary oscillator. It does not begin by assuming the scalar pair spectrum. Its conclusion is weaker than a full renormalized quantum commutant.

Two dynamical checks were independently completed:

- Starting from the stated constraint Hamiltonian, the ground-pair response gives, for every $\Delta>1$,
  $$
  g_{00}=-4\Delta^2+
  \frac{2\Delta^2(2\Delta+5)}{(2\Delta-1)(2\Delta+1)}.
  $$
  Appendix E gives an elementary total-derivative evaluation, including the Bose and angular normalization.
- The lowest mixed cubic exchange requires **all** radial intermediate labels. Its exact dimensionless sum is
  $$
  \boxed{
  \sum_{n=0}^{\infty}
  \frac{27}{(n+2)(2n+1)(2n+3)^2(2n+5)^2(2n+7)}
  =6\log2-\frac{83}{20}.
  }
  $$
  The proof derives both vertices for general $n$, then uses partial fractions and telescoping. The normalized matrix element divided by $G$ is $16\sqrt2$ times this sum.

These are independent dynamical tests, not an all-channel derivation of the full Einstein pair multiplier.

## 3. Errors, already repaired errors, and unresolved interfaces

| Location | Finding | Consequence |
|---|---|---|
| [R8], lines 28–30 | Signed $j$ is used in radial factors while the sum includes negative $j$. At $n=1,j=-1$, $(\Box-m^2)u/u=4(\Delta+2)/(1+r^2)\ne0$. | Replace radial $j$ by $\lvert j\rvert$. The recovered master already does so correctly. |
| [R9], lines 106–122 | $\gamma$ is first defined as the full order-$\kappa^2$ shift, then multiplied by another $\kappa^2$ in the descendant matrix. | A literal reading gives the wrong perturbative order. Remove the extra factor or redefine every $\gamma$ consistently as a coefficient. |
| [R6], §4, lines 167–175 | The value $24\sqrt2/175$ retains only the $n=0$ intermediate term. | This is an actual truncation error, already corrected in [R7], §7. The correction is independently proved here; it is not newly discovered here. |
| [R10], line 52, and older final energies in [R9] | $O(G^2)$ is stronger than the first-order derivation establishes. | Use the fixed-label $o(G)$ statement unless higher quantum Ward information is supplied. This does not demonstrate a nonzero $G^{3/2}$ term. |
| Original master, physics §3.6, PHY-04; [R11] | Common source/Hessian/observable domain, homogeneous data, boundary clock, and averaged endpoints remain explicit hypotheses of the full response comparison. | Finite canonical coefficient construction and a continuum matching/domain theorem are different claims. This investigation does not supply the latter. |

The strongest original manuscript has already incorporated some of these cautions. They should not be transferred indiscriminately from an older working note to every newer result.

The finite conjecture $\lambda_2^\uparrow(M_P)\ge-5/16$ arose during this investigation and was rejected by an exact $P=4,\Delta=2$ counterexample. It is **not** attributed to the repository. Appendix C records the polynomial, so the failed route is reproducible.

## 4. New results and what they establish

### 4.1 All particle numbers: a complete nonchiral strip

Write $\mathcal V_N(z)=\prod_{i<j}(z_i-z_j)$ and $D_N=N(N-1)$. Then
$$
\boxed{
\ker W_{N;P,1}
=\mathcal V_N(z)^2\mathcal H_{N;P-D_N,1},
\qquad N\ge2,\ \Delta>1.
}
\tag{2}
$$
It is zero for negative shifted degree. This is an equality of polynomial subspaces, independent of $\Delta$.

The mechanism is pair parity. At right degree one, only right labels $0,1$ occur; Bose parity forces left labels $0,1$ to occur only in the penalized equal-label sectors. Their removal is precisely divisibility by $(z_i-z_j)^2$ for every pair. Unique factorization gives $\mathcal V_N^2$.

For centered coordinates $X_i,Y_i$, let $p_{r1}=\sum_iX_i^rY_i$, and let $e_j$ be the elementary symmetric functions in $X$. A complete explicit kernel basis is
$$
\mathcal V_N^2 p_{r1}\prod_{j=2}^N e_j^{a_j},
\qquad
1\le r\le N-1,\quad D_N+r+\sum_{j=2}^Nja_j=P.
$$
In particular,
$$
\sum_{P\ge0}\dim\ker W_{N;P,1}\,t^P
=\frac{t^{D_N}(t+\cdots+t^{N-1})}
{\prod_{j=2}^N(1-t^j)}.
\tag{3}
$$
The first four-particle example is the one-dimensional kernel at $(P,Q)=(13,1)$, generated by $\mathcal V_4^2p_{11}$, in a primary space of dimension 16 and rank 15. Appendix A proves the factorization, the module basis, the exact counting, and the asymptotic kernel fraction.

This does not solve every $N\ge4$ mixed block. At $Q=2$, the allowed sectors $(0,2)$ and $(2,0)$ invalidate the key divisibility inference.

### 4.2 All three-body bidegrees

For $P\ge Q$, put
$$
d_3(P,Q)=
\frac{(P+1)(Q+1)+3\epsilon_P\epsilon_Q+2\eta_P\eta_Q}{6},
\quad
\epsilon_n=\mathbf1_{2\mid n},\quad
\eta_n=(1,-1,0)_{n\bmod3}.
$$
The complete answer is
$$
\boxed{
\operatorname{rank}W_{3;P,Q}=
\begin{cases}
1,&P=Q=0,\\
P,&P=Q\ge1,\\
Q,&P=Q+1,\\
1,&(P,Q)=(3,1),\\
Q+1,&P\ge Q+2,\ (P,Q)\ne(3,1).
\end{cases}}
\tag{4}
$$
The kernel dimension is $d_3-\operatorname{rank}W$. The last two cases close the open conjecture in [R3], lines 210–214.

The proof treats potential exceptional-mass resonances explicitly. A relation among symmetrized equal-label channels becomes a rectangular tridiagonal-Casimir intertwiner. Its last row has at most one possible resonant entry; a neighboring equation eliminates that entry, and irreducibility propagates the zero row through the matrix. Appendix B supplies the entire argument, the exceptional endpoint, and the full bivariate kernel series.

### 4.3 Infinitely many actual $\sqrt N$ resonances

Let $\widehat W=W/c_0$. The exact interaction between a ground particle and a distinct excited mode $(p,q)$ is
$$
\boxed{
g_{pq}(\Delta)=
2\binom{p+q}{p}\frac{(\Delta)_p(\Delta)_q}{(2\Delta)_{p+q}}.
}
\tag{5}
$$
This is twice a symmetric beta-binomial probability. A stable centered primary monomial with occupations $n_{pq}$ has leading slope
$$
\sigma=\sum_{p,q}n_{pq}(g_{pq}-1).
$$
Appendix D defines the creation algebra precisely and proves this in a regular physical frame.

Set
$$
g_n=\frac{2(1/2)_n(\Delta)_n}{n!(\Delta+1/2)_n}.
$$
For every $n\ge2$, exactly one $\Delta_n>1$ solves
$$
g_n-g_{n-1}+\frac1{2\Delta+1}=0.
$$
The sequence is strictly increasing, and
$$
\boxed{
\Delta_n=\frac{\sqrt\pi}{2}n^{3/2}-\frac n2+O(\sqrt n).
}
\tag{6}
$$
At this mass the stable $(n,n)$ block has actual eigenbranches
$$
\boxed{
\rho_\pm(N)=\binom N2+[g_n(\Delta_n)-1]N
\pm b\sqrt N+O(1),\qquad
b\ge
\frac{n\,g_n(\Delta_n)}
{(2n-1)\sqrt{1+\mathbf1_{n=2}}}>0.
}
\tag{7}
$$
The proof establishes a nonzero **physical** resonant matrix element after primary projection. It does not infer splitting merely from repeated slopes or a nonorthogonal Jordan matrix. It also allows larger resonance clusters.

Exact number-field enumeration shows that the cluster has precisely two states for $n=2,\ldots,8$; there the lower bound on $b$ is equality. That statement for every $n$ remains a conjecture.

### 4.4 A continuum recoupling theorem and a precise small-eigenvalue question

For the orthogonal three-body Racah matrix $R_P$, write $M_P=R_P\circ R_P$. Under the isometric step-function embedding of $k/P$ into $[0,1]$,
$$
\boxed{
M_P\longrightarrow K\ \text{strongly},\qquad
(Kf)(x)=\frac2\pi\int_0^{\sqrt{1-x^2}}
\frac{f(y)}{\sqrt{1-x^2-y^2}}\,dy.
}
\tag{8}
$$
The complete eigenbasis consists of restricted even Legendre polynomials:
$$
\boxed{
KP_{2n}=(-1)^n\frac{\binom{2n}{n}}{4^n}P_{2n}.
}
\tag{9}
$$
The limit is independent of $\Delta$. Appendix C proves it using exact Jacobi-matrix moments, not an assumed asymptotic Racah formula.

A separate min–max argument proves
$$
0<e_{\min}(W_{3;P,P})
\le\frac3{8\pi(2\Delta+2P-3)}.
\tag{10}
$$
Thus the bottom positive eigenvalue has a rigorous $O(P^{-1})$ **upper** bound. A matching lower bound is not proved. Numerical finite-block data and a separate Legendre Galerkin calculation suggest
$$
P\,\lambda_{\min}^{+}(8\pi W)\longrightarrow 0.27758582\ldots
$$
and the candidate weighted form
$$
q[f]=\left\langle(2x)^{-1/2}f,(I+2K)(2x)^{-1/2}f\right\rangle.
$$
On the domain $x^{-1/2}f\in L^2$, this form is closed and defines a nonnegative self-adjoint operator. Its kernel is spanned by $\sqrt{2x}P_2(x)$, and its gap above that kernel is at least $3/16$; Appendix C proves these statements directly. The connection to the finite spectra remains conjectural: endpoint control and exclusion of spectral pollution are still needed. Strong convergence in (8) alone does not supply them or a finite-$P$ lower bound.

### 4.5 A sharp, conditional gravity/contact comparison

Assume the Einstein pair multiplier in [R9] or the original master, physics (4.21). On a primary block oriented $P\ge Q$, define
$$
A_E=W_E-b_N(Q)I,\qquad
b_N(Q)=-2N(N-1)\Delta^2-8Q(N\Delta+Q-1),
\qquad B=8\pi W.
$$
Then
$$
\boxed{
0\le B\le r_*^{-1}A_E,\qquad
r_*=\frac{2\Delta^2(2\Delta+5)}{2\Delta+1}.
}
\tag{11}
$$
The constant is sharp, attained at the $N$-particle ground primary.

For $\alpha>-r_*$,
$$
\boxed{
\min(1,1+\alpha/r_*)A_E
\le A_E+\alpha B
\le\max(1,1+\alpha/r_*)A_E.
}
\tag{12}
$$
Every residual kernel is preserved and every ordered positive eigenvalue obeys the same uniform multiplicative comparison. At equality $\alpha=-r_*$, the ground primary enters the kernel; below it residual positivity fails already for two particles. Extending to descendants retains the primary Casimir baseline.

This is the exact uniform interval for **both positivity and preservation of the old kernels**. It is not a nonperturbative stability claim for a field theory with negative quartic coupling. Appendix E proves it channel by channel, including the removable pole and the comparison across the apparent singular region.

## 5. The most promising remaining questions

### A. General mixed kernels for $N\ge4$, starting at $Q=2$

Appendix A replaces spectral projectors by explicit finite differential constraints:
$$
\mathcal S_{12,k}f=0,\qquad k=0,\ldots,Q.
$$
This is a concrete starting point for computing syzygies in modules over the symmetric invariant ring. The $Q=1$ answer is free and governed by $\mathcal V_N^2$; at $Q=2$, tangential derivatives and the allowed $(0,2),(2,0)$ channels must be kept. A useful next goal is an exact module presentation and Hilbert series for $N=4,Q=2$, followed by an induction in $Q$. Treating the full kernel as an ordinary collision-vanishing ideal would discard constraints or add false ones.

### B. The three-body bottom positive scale

The missing theorem is a uniform lower bound $e_{\min}\ge C_\Delta/P$, ideally with convergence to the weighted continuum form. The explicit $K$ identifies the prospective bulk operator. A proof needs endpoint estimates for channels $k=o(P)$, control of the exact null vector, and a no-spectral-pollution or quadratic-form convergence argument. The fixed-index compact limit and the $k/P$ limit probe different regions and must be matched. The finite $-5/16$ counterexample rules out one overly strong uniform Gram estimate, not the broader strategy.

### C. Resonance graph classification

The beta-binomial formula turns stable slope coincidences into explicit rational equations. Prove that the $\Delta_n$ clusters always contain exactly two centered monomials, or find the first extra vertex. The all-$n$ splitting theorem already survives either outcome. A broader objective is to classify active resonance graphs, their selection rules, and detuning scales; repeated slopes with zero graph edges should be separated from actual splittings.

### D. The critical Einstein/contact deformation

At $\alpha=-r_*$, the ground pair channel becomes unpenalized. In a chiral block, the remaining low forbidden channel is relative degree two, giving a concrete projector problem different from ordinary Vandermonde divisibility. Determine its kernel module and Hilbert series. This is a focused way to investigate which zero-space structures are stable under dynamical deformation and which depend on precise pair support.

### E. The gravitational analytic interface

A genuinely independent all-label dynamical test would reconstruct a nontrivial off-ground family directly from the original action/constraint sources, without feeding the closed pair formula into the calculation. Separately, establish the common response domain and endpoint theorem on the specified boundary conditions. Neither a successful finite coefficient test nor a Ward selection rule supplies these continuum analytic hypotheses. The higher quantum Ward identities and uniform perturbative remainder are further, distinct questions.

## 6. Reproducibility and evidence levels

The package preserves separate routes rather than importing the source's engine under another name.

| Fresh calculation | Evidence produced | Role |
|---|---|---|
| Differential Rankin–Cohen maps | 133 symbolic descendant identities; 33 exact first-strip ranks | Checks the independently proved factorization and all-$N$ strip theorem |
| Three-body polynomial Casimirs and permutations | 273 exact rational blocks; symbolic determinants and tridiagonal identities | Checks the full rank theorem; finite scans are not its proof |
| Radial Jacobi/Beta vertices and occupations | Full symbolic $(2,2)$ intertwining; physical $(3,3)$ parity block | Independent reconstruction of the sensitive stable claims |
| Modular polynomial arithmetic | Explicit mod-11 irreducibility and mod-19 transposition certificates | Finite exact proof of $S_7$, combined with the rebuilt physical block |
| Resonance identities | 45 exact checks plus exact cluster enumeration through $(8,8)$ | Checks the all-index analytic proof and supplies additional finite evidence |
| Constraint and cubic radial calculations | 42 exact identities, including all-index vertex reduction and telescoping sum | Sensitive gravity-channel audit; does not certify all Einstein channels |
| Finite Jacobi diagonalization and continuum Galerkin matrices | Floating-point small-eigenvalue data through $P=512$ and basis label 128 | Numerical evidence only |

The proofs are given below in full. The code is intentionally a collection of small research calculations, not a refactoring of the repository. The package README gives working-directory requirements and exact commands. Recorded outputs are included so that the mathematical claims remain inspectable without rerunning symbolic calculations.

---

# Proof appendices

The appendices preserve the detailed independent derivations, with their assumptions and normalizations. Local section and equation labels within each appendix are local to that appendix.

---

# Appendix A. Differential collision maps and an all-N nonchiral kernel

## 1. Definitions

Fix an integer $N\ge2$ and a real $\Delta>1$. Write
$$
U_{N,P}=\ker\Bigl(\sum_i\partial_{z_i}\Bigr)\cap\mathbb C[z_1,\ldots,z_N]_P,
\qquad \mathcal H_{N;P,Q}=(U_{N,P}\otimes U_{N,Q})^{S_N}.
$$
The product Hilbert inner product makes different monomials orthogonal and gives
$$
\left\|\prod_i z_i^{p_i}w_i^{q_i}\right\|^2
=\prod_i\frac{p_i!q_i!}{(\Delta)_{p_i}(\Delta)_{q_i}}.
$$
The contact coefficient operator is
$$
W=\sum_{i<j}\sum_{k\ge0}c_k\Pi_{ij}^{(k,k)},\qquad
c_k=\frac1{8\pi(2\Delta+2k-1)}.
\tag{J1}
$$
The kernel results below also hold if the $c_k$ are replaced by arbitrary strictly positive numbers. Only finitely many $k$ occur in any fixed bidegree.

The polynomial realization of one chiral factor uses
$$
J_-=\partial_z,\quad J_0=z\partial_z+\Delta/2,\quad
J_+=z^2\partial_z+\Delta z.
$$
For a pair, the irreducible label $k$ has lowest polynomial $(z_i-z_j)^k$ and lowest weight $\Delta+k$.

## 2. An explicit differential factorization

For one chirality define the pair fusion operator
$$
\mathcal R_{ij,k}f(t,z_{\mathrm{spect}})=
\left.
\sum_{a=0}^k
\frac{(-1)^a\binom{k}{a}}{(\Delta)_a(\Delta)_{k-a}}
\partial_{z_i}^{a}\partial_{z_j}^{k-a}f
\right|_{z_i=z_j=t}.
\tag{J2}
$$
The fused variable has inner-product parameter $2\Delta+2k$, meaning
$\|t^n\|^2=n!/(2\Delta+2k)_n$; spectator parameters remain $\Delta$.
These are normalized versions of the classical Rankin–Cohen differential intertwiners. Their use as intertwiners of holomorphic discrete-series tensor products is established representation theory, rather than a novelty claim; see Kobayashi and Pevzner, *Rankin–Cohen brackets in Representation Theory*, arXiv:2601.15750, §1.2. The factorization and applications here are derived directly in the project's conventions.

**Proposition J1.** Set
$$
g_k=\frac{k!(2\Delta+k-1)_k}{(\Delta)_k^2}>0.
$$
Then, on the polynomial tensor product,
$$
\mathcal R_{ij,k}^{\dagger}\mathcal R_{ij,k}=g_kP_{ij,k}.
\tag{J3}
$$
Consequently, with 
$\mathcal S_{ij,k}=\mathcal R^L_{ij,k}\mathcal R^R_{ij,k}$,
$$
\boxed{W=\sum_{i<j}\sum_k\frac{c_k}{g_k^2}
\mathcal S_{ij,k}^{\dagger}\mathcal S_{ij,k}.}
\tag{J4}
$$
All adjoints use the specified input and fused-output Hilbert metrics. In particular,
$$
\boxed{\ker W|_{\mathcal H_{N;P,Q}}
=\{f\in\mathcal H_{N;P,Q}:\mathcal S_{12,k}f=0
\text{ for every }0\le k\le\min(P,Q)\}.}
\tag{J5}
$$

**Proof.** Commutation with total $J_-$ and $J_0$ follows directly from differentiation and restriction. If the coefficient of $\partial_i^a\partial_j^{k-a}$ is denoted $b_a$, commutation with total $J_+$ reduces to
$$
b_{a+1}(a+1)(\Delta+a)+b_a(k-a)(\Delta+k-a-1)=0.
$$
The coefficients in $J2$ satisfy this recurrence. Thus $\mathcal R_k$ intertwines the pair representation with the fused representation of parameter $2\Delta+2k$. Pair Casimir eigenvalues $(\Delta+\ell)(\Delta+\ell-1)$ are distinct, so it vanishes on every irreducible label $\ell\ne k$.

On the lowest polynomial,
$$
\mathcal R_k(z_i-z_j)^k
=(-1)^kk!\sum_{a=0}^k\frac{\binom{k}{a}}{(\Delta)_a(\Delta)_{k-a}}
=(-1)^kg_k,
$$
where the last finite Vandermonde sum also evaluates the norm
$\|(z_i-z_j)^k\|^2=g_k$. Its $n$-th pair-raising descendant has squared norm
$g_kn!(2\Delta+2k)_n$. The image is
$(-1)^kg_k(2\Delta+2k)_nt^n$, whose squared norm is
$g_k^2n!(2\Delta+2k)_n$. Their ratio is $g_k$, proving $J3$ on every descendant, hence everywhere. Tensoring the two chiral identities gives $J4$. Positivity gives the common kernel over all pairs. Since $f$ is Bose invariant and all pairs are permutation conjugate, one pair suffices in $J5$. ∎

This formula gives a local differential presentation of the collision constraints. It avoids constructing spectral projectors or importing a Racah engine. The constraints still include every equal-label jet: ordinary restriction to the double diagonal tests only $k=0$, and cannot replace $J5$. For example $(z_1-z_2)^2(w_1-w_2)^2$ vanishes on that diagonal but has the nonzero two-body coefficient $c_2$.

For clarity, in $u=z_i-z_j$, $s=(z_i+z_j)/2$, the first three operators are
$$
\mathcal R_0f=f|_{u=0},\qquad
\mathcal R_1f=-\frac2\Delta\partial_uf|_{u=0},
$$
$$
\mathcal R_2f=
\left.\frac{4(2\Delta+1)\partial_u^2-\partial_s^2}
{2\Delta^2(\Delta+1)}f\right|_{u=0}.
\tag{J6}
$$
The tangential derivative in $\mathcal R_2$ explains why higher nonchiral kernels should not automatically be treated as ordinary vanishing ideals.

## 3. Complete kernel in the first nonchiral strip

Let
$$
V_N(z)=\prod_{i<j}(z_i-z_j),\qquad D_N=N(N-1).
$$

**Theorem J2.** For every $N\ge2$, $P\ge0$, and $\Delta>1$,
$$
\boxed{\ker W_{N;P,1}=V_N(z)^2\mathcal H_{N;P-D_N,1}.}
\tag{J7}
$$
The right side is zero when $P-D_N<0$. The analogous formula holds with left and right exchanged. The kernel in this strip is independent of the mass parameter as a polynomial subspace.

**Proof.** Fix a pair $ij$. On right total degree one, the only pair labels are $k_R=0,1$. On the Bose subspace, simultaneous pair exchange acts trivially; a component with labels $k_L,k_R$ can therefore occur only when $k_L+k_R$ is even. Consequently a left label zero can occur only with right label zero, and a left label one only with right label one. Contact annihilation removes both these equal-label sectors. It is therefore equivalent to the absence of all left labels $0,1$.

The filtration by powers of $z_i-z_j$ is invariant under pair raising. Every label-$k$ descendant is divisible by $(z_i-z_j)^k$. At each fixed degree the triangular decomposition, or equivalently the distinct Casimir eigenvalues on the associated graded spaces, proves
$$
f\text{ contains only labels }k_L\ge2
\quad\Longleftrightarrow\quad(z_i-z_j)^2\mid f.
$$
Thus the contact kernel requires precisely this divisibility for every pair. The linear factors $z_i-z_j$ are nonassociate primes in the polynomial ring, so unique factorization gives $V_N(z)^2\mid f$. This argument does not require pair-collision ideals to be comaximal. Conversely that divisibility removes every forbidden pair channel when $Q=1$.

The divisor is itself translation invariant and Bose symmetric. If $f=V_N^2h$, then translation invariance of $f$ implies that of $h$, because the polynomial ring has no zero divisors. Bose invariance of $h$ follows similarly. Degrees give precisely $J7$. ∎

The parity step is essential. The same argument does not extend unchanged to $Q=2$: the allowed sectors $(k_L,k_R)=(0,2)$ and $(2,0)$ prevent the inference that every kernel element is divisible by $V_N^2$.

## 4. Explicit basis and exact rank counting

Put
$$
X_i=z_i-\frac1N\sum_jz_j,\qquad Y_i=w_i-\frac1N\sum_jw_j,
\quad p_{r1}=\sum_iX_i^rY_i,
$$
and write $e_j=e_j(X_1,\ldots,X_N)$.

**Proposition J3.** The first-strip primary space is a free module
$$
\bigoplus_{P\ge0}\mathcal H_{N;P,1}
=\bigoplus_{r=1}^{N-1}\mathbb C[e_2,\ldots,e_N]p_{r1}.
\tag{J8}
$$
In particular, a complete explicit kernel basis at degree $P$ consists of
$$
\boxed{V_N^2p_{r1}\prod_{j=2}^Ne_j^{a_j},\qquad
1\le r\le N-1,\quad a_j\ge0,\quad
D_N+r+\sum_{j=2}^Nja_j=P.}
\tag{J9}
$$

**Proof.** A polynomial linear in $Y$ corresponds to a permutation-equivariant polynomial vector $F_i(X)$, modulo addition of the same polynomial to every component because $\sum_iY_i=0$. Its first component is invariant under the spectator group $S_{N-1}$. That invariant ring is generated over $A=\mathbb C[e_2,\ldots,e_N]$ by $X_1$: the elementary symmetric functions of the other coordinates are recursively expressed using the full elementary functions and $X_1$. The monic characteristic identity 
$\prod_i(t-X_i)=0$ at $t=X_1$ reduces powers to $0,\ldots,N-1$. Equivariance then expresses the vector as a sum of $A$-multiples of $(X_i^r)_i$. The $r=0$ vector pairs to zero with $Y$, proving spanning in $J8$.

For independence, suppose 
$\sum_{r=1}^{N-1}A_r(e)\sum_iX_i^rY_i=0$.
On the dense set of distinct $X_i$, the degree-at-most-$N-1$ polynomial 
$h(t)=\sum_rA_r(e)t^r$ takes the same value at all $N$ points $X_i$. Hence it is constant and all $A_r=0$. Polynomiality extends this identity everywhere. This proves freeness, and Theorem J2 then gives $J9$. ∎

Let $m_N(P,1)=\dim\mathcal H_{N;P,1}$. The exact generating functions are
$$
\boxed{\sum_{P\ge0}m_N(P,1)t^P
=\frac{t+t^2+\cdots+t^{N-1}}{\prod_{j=2}^N(1-t^j)},}
\tag{J10}
$$
$$
\boxed{\sum_{P\ge0}\dim\ker W_{N;P,1}\,t^P
=\frac{t^{D_N}(t+\cdots+t^{N-1})}{\prod_{j=2}^N(1-t^j)},}
\tag{J11}
$$
$$
\boxed{\sum_{P\ge0}\operatorname{rank}W_{N;P,1}\,t^P
=\frac{(1-t^{D_N})(t+\cdots+t^{N-1})}{\prod_{j=2}^N(1-t^j)}.}
\tag{J12}
$$
The first nonzero kernel is one-dimensional at $P=D_N+1$, generated by $V_N^2p_{11}$. For four particles this is the explicit state at $(P,Q)=(13,1)$; the physical primary dimension is 16 and the contact rank is 15. At $(12,1)$ the dimension and rank are both 12.

For each fixed $N\ge3$, expansion of the rational generating functions at $t=1$, with lower-order contributions from other roots of unity, gives
$$
m_N(P,1)=\frac{N-1}{N!(N-2)!}P^{N-2}+O_N(P^{N-3}),
$$
$$
\operatorname{rank}W_{N;P,1}
=\frac{N-1}{(N-2)!(N-3)!}P^{N-3}+O_N(P^{N-4}),
\tag{J13}
$$
where for $N=3$ the rank is exactly 2 for all $P\ge4$. Thus
$$
\boxed{\frac{\dim\ker W_{N;P,1}}{m_N(P,1)}
=1-\frac{N(N-1)(N-2)}P+O_N(P^{-2}).}
\tag{J14}
$$
Unlike the existing balanced-block estimate, this result includes the exact leading coefficient in a genuinely nonchiral strip and a complete explicit kernel basis.

## 5. Comparison with the gravitational residual

The source's Einstein residual excludes the even-parity pair channels $k_L\le k_R+2$. For $Q=1$, these remove all left labels $0,1,2,3$, yielding the corresponding $V_N^4$ divisibility and a degree shift $2D_N$. This comparison is conditional on that gravitational pair multiplier. The contact theorem itself uses no gravitational dynamics.

The common polynomial covariant ring in $J8$ is kinematic. The exponent of the Vandermonde, and therefore the onset and exact dimension of the zero space, record which pair channels the dynamics excludes. The normalized nonzero eigenvalues require the actual $c_k$ and the Hilbert metrics, not merely these ideal conditions.

## 6. Reproducible checks

`contact_jets.py` was written from the differential formulas above and imports no repository calculation. It verifies 133 symbolic identities at variable $\Delta$, applying $\mathcal R_k$ to lowest-pair polynomials and their raising descendants. It also computes exact collision-map ranks in 33 first-strip blocks at $\Delta=3/2,2,7/3$, including the first four-particle kernel at $(13,1)$, using the explicit invariant basis $J8$. These are checks of the proofs, not replacements for them. Results and exact counting tables are stored in `contact_jets_results.json`.

The standard Rankin–Cohen operators and free invariant-covariant module are not new mathematical constructions. The differential normalization, their direct contact-factorization use, and the all-$N$ first-nonchiral-strip classification are the extensions relative to the inspected research materials; no literature-priority claim is made.

---

# Appendix B. Complete three-body rank and spectral consequences

Source snapshot: `GaoZ1en/obsidian_note`, commit
`670abb1bb4b644a162278415ef94dde09cdeb016` (21 October 2026).

The principal new result below completes the previously open three-body rank
problem. The proof uses only the differential representation, positivity,
and elementary properties of an irreducible tridiagonal matrix. No existing
research implementation is imported.

## 1. Setup and source statements audited

Let
$$
U_n=\ker(\partial_{z_1}+\partial_{z_2}+\partial_{z_3})
\cap\mathbb C[z_1,z_2,z_3]_n,
\qquad
\mathcal H_{P,Q}=(U_P\otimes U_Q)^{S_3}.
$$
Use the positive product inner product
$\|z_1^{a_1}z_2^{a_2}z_3^{a_3}\|^2
=\prod_i a_i!/(\Delta)_{a_i}$, with $\Delta>1$.
The operator is
$$
W=\sum_{i<j}\sum_{k\ge0}c_kP^L_{ij,k}P^R_{ij,k},
\qquad c_k>0.
$$
All rank conclusions are independent of the values of the strictly positive
weights. The physical contact interaction has
$c_k=[8\pi(2\Delta+2k-1)]^{-1}$.

The precise source claims are:

* `independent audit and phi4 comparison/structural comparison.md`,
  §5.1, lines 245–267: positivity reduces the Bose rank to the restriction of
  the Bose projector to one pair's equal-label subspace. This is correct.
* The same file, §5.2, lines 270–342: balanced rank $P$ for $P\ge1$.
  The tridiagonal proof is valid; it is an analytic proof, not an inference
  from the exact scans. In its odd-degree bandwidth argument, there really
  are two allowed starting positions, including the endpoint degree $m=P$.
* [phi4 further structures.md][R3], §§2–3, lines 83–208: adjacent rank $Q$.
  The extra diagonal term in (3.5) is necessary and has been retained. The
  all-index proof is valid under the declared positive inner product.
* [phi4 further structures.md][R3], lines 210–214 explicitly leaves
  $P\ge Q+2$ open. That remaining rank problem is solved below.
* [phi4 further structures.md][R3], §5: the fixed-index positive spectral limit
  follows from a compactly weighted channel operator. The endpoint
  recoupling estimate and the fixed-index recurrence give the claimed
  operator-norm convergence; the argument does not assert a bottom-gap
  estimate. We add such an upper estimate and Schatten consequences below,
  but do not claim a matching lower bound.

## 2. New theorem: complete three-body rank and kernel dimensions

Write $P\ge Q$, without loss of generality, and
$$
d_3(P,Q)=\frac{(P+1)(Q+1)+3\epsilon_P\epsilon_Q+2\eta_P\eta_Q}{6},
\quad
\epsilon_n=\mathbf1_{2\mid n},\quad
\eta_n=(1,-1,0)_{n\bmod3}.
$$
This is the character dimension of $\mathcal H_{P,Q}$.

**Theorem 1.** For all $\Delta>1$ and all strictly positive $c_k$,
$$
\operatorname{rank}W|_{\mathcal H_{P,Q}}=
\begin{cases}
1,&P=Q=0,\\
P,&P=Q\ge1,\\
Q,&P=Q+1,\\
1,&(P,Q)=(3,1),\\
Q+1,&P\ge Q+2,\ (P,Q)\ne(3,1).
\end{cases}
\tag{T1}
$$
In particular, the source's entire remaining conjecture is true:
$$
\operatorname{rank}W
=\min\{d_3(P,Q),Q+1\}\qquad(P\ge Q+2).
$$
The kernel dimension is exactly $d_3(P,Q)-\operatorname{rank}W$.
There are no additional positive-mass exceptional rank drops.

The new classification is the last two lines of (T1). The proof below
establishes every case without assuming the rank conjecture or numerical
data. For the already known adjacent band, a shorter last-row argument is
included so that the complete classification is self-contained.

### 2.1 Pair Casimirs and their tridiagonal matrices

Set
$$
A_n=C_{12}|_{U_n},\quad B_n=C_{23}|_{U_n},\quad C_n=C_{13}|_{U_n},
\quad A_n+B_n+C_n=s_nI,
$$
$$
s_n=n(n+3\Delta-1)+3\Delta(\Delta-1),\qquad
\lambda_k=(\Delta+k)(\Delta+k-1).
$$
In the coordinates $r=z_1-z_2$, $u=(z_1+z_2)/2-z_3$,
$$
A_n=r^2\partial_r^2-\tfrac14r^2\partial_u^2
 +2\Delta r\partial_r+\Delta(\Delta-1).
$$
Consequently it has simple eigenvectors
$f_{n,k}=r^ku^{n-k}+O(r^{k+2})$, $0\le k\le n$.
The transposition $(12)$ is therefore
$E_n=\operatorname{diag}((-1)^k)$.

Direct differential action gives
$$
B_n=-(u-r/2)^2(\partial_r\partial_u-\tfrac12\partial_u^2)
 +\Delta(u-r/2)(-\partial_r+\tfrac32\partial_u)
 +\Delta(\Delta-1).
$$
It lowers the order of vanishing in $r$ by at most one; self-adjointness
in the orthogonal $f$-basis supplies the opposite bandwidth bound. Thus
$B_n$ is tridiagonal, and
$$
(B_n)_{k-1,k}=-k(n-k+\Delta)\ne0.
\tag{2.1}
$$
Its other neighboring entries are also nonzero by self-adjointness and
positive norms. Finally $C_n=E_nB_nE_n$, so the Casimir sum gives
$$
(B_n)_{jj}=b_{n,j}=\frac{s_n-\lambda_j}{2}.
\tag{2.2}
$$

### 2.2 Translate a rank defect into a rectangular intertwiner

Use the real physical bilinear form to identify
$U_P\otimes U_Q\simeq\operatorname{Hom}(U_Q,U_P)$. The equal-pair-label
space is precisely
$$
\mathcal D_{P,Q}=\{T:A_PT=TA_Q\}.
$$
Because the eigenvalues $\lambda_k$ are simple and increase strictly,
$T$ is a rectangular diagonal matrix, with entries $t_0,\ldots,t_Q$.
In particular $E_PTE_Q=T$.

Let $\Gamma$ be simultaneous permutation averaging. Positivity and
permutation conjugacy of the three pair interactions imply
$$
\operatorname{rank}W=
\operatorname{rank}(\Gamma|_{\mathcal D_{P,Q}}).
\tag{2.3}
$$
Here a vector killed by $\Gamma$ is a *relation among symmetrized channel
vectors*, not a physical zero mode. Their dimensions are different.

Suppose $T\in\mathcal D_{P,Q}$ and $\Gamma(T)=0$. Define
$$
U=\rho_P(13)T\rho_Q(13)^{-1},\qquad
V=E_PUE_Q.
$$
Since $(13)$ takes pair $12$ to pair $23$,
$$
B_PU=UB_Q.
\tag{2.4}
$$
There are three cosets of the stabilizer $\{1,(12)\}$, so
$$
T+U+V=0.
\tag{2.5}
$$
Equation (2.5) implies
$$
U_{jj}=-t_j/2\quad(j\le Q),\qquad
U_{jk}=0\quad(j\ne k,\ j+k\text{ even}).
\tag{2.6}
$$
Thus, apart from its diagonal, $U$ can have entries only on odd diagonals.

Take an entry with $j+k$ odd and $|j-k|>1$ in (2.4). An off-diagonal
entry of either tridiagonal $B$ multiplies an even-parity off-diagonal
entry of $U$, hence contributes zero. The only surviving contribution
is diagonal multiplication. By (2.2),
$$
\boxed{[s_P-s_Q-(\lambda_j-\lambda_k)]U_{jk}=0
\qquad(|j-k|>1).}
\tag{2.7}
$$
For even parity the same conclusion is automatic because $U_{jk}=0$.
Crucially, the proof below does not assume that the factor in brackets is
always nonzero: resonant entries are explicitly eliminated.

### 2.3 The last row when the degree gap is at least three

Let $d=P-Q\ge3$, and put $S=s_P-s_Q>0$. Every entry of the last row
has $P-k\ge3$. By (2.7), a nonzero last-row entry must satisfy
$$
\lambda_P-\lambda_k=S.
\tag{2.8}
$$
Strict monotonicity of $\lambda_k$ permits at most one such column $k$.
It cannot be $k=Q$, because
$$
S-(\lambda_P-\lambda_Q)=\Delta(P-Q)>0.
$$
Thus $k<Q$. Also $P+k$ must be odd by (2.6).

Now inspect entry $(P,k+1)$ of (2.4). The entire last row except possibly
column $k$ is zero. Tridiagonality therefore gives
$$
(B_P)_{P,P-1}U_{P-1,k+1}
   =U_{P,k}(B_Q)_{k,k+1}.
\tag{2.9}
$$
The left-side entry is outside the nearest-neighbor band:
$$
(P-1)-(k+1)=P-k-2\ge d-1\ge2.
$$
Furthermore
$$
\lambda_{P-1}-\lambda_{k+1}<\lambda_P-\lambda_k=S.
$$
Hence (2.7) makes $U_{P-1,k+1}=0$. The factor
$(B_Q)_{k,k+1}$ is nonzero, so (2.9) gives $U_{P,k}=0$. This eliminates
the only possible last-row resonance.

Thus the last row of $U$ vanishes. Applying (2.4) to that row then forces
the preceding row to vanish, because $(B_P)_{P,P-1}\ne0$. Induction
forces every row to vanish. Consequently $U=0$, hence $T=0$.
Therefore $\Gamma|_{\mathcal D_{P,Q}}$ is injective and has rank $Q+1$.

### 2.4 Degree gap two and its single small exception

Let $P=Q+2$. Again the last row can be nonzero only if (2.8) holds,
with $k<Q$. Put $a=Q-k\ge1$. The resonance condition is equivalent to
$$
a(2Q-a-1)+2(a-1)\Delta=0.
\tag{2.10}
$$
For $Q\ge2$, the first term is strictly positive and the second is
nonnegative. Hence there is no resonance. For $Q=0$, there is no
column $k<Q$. In either case the last row vanishes and the preceding
induction proves injectivity.

The only remaining case is $Q=a=1$, i.e. $(P,Q)=(3,1)$.
The physical space has dimension one. It is spanned by
$$
F=p_{20}p_{11},\qquad p_{ab}=\sum_{i=1}^3X_i^aY_i^b,
\quad \sum_iX_i=\sum_iY_i=0.
$$
At $X=(x,x,-2x)$, $Y=(y,y,-2y)$, its value is $36x^3y\ne0$.
All positive pair-label components vanish at the corresponding collision,
so $P^L_{12,0}P^R_{12,0}F\ne0$. Positive $c_0$ then implies
$\langle F,WF\rangle>0$. Thus the rank is exactly one.

This proves the new part of Theorem 1, including every exceptional-mass
possibility and both small endpoints. The remaining cases are established
next using the same matrix framework.

### 2.5 A shorter independent proof of the adjacent band

Let $P=Q+1$, so $S=s_P-s_Q=2Q+3\Delta$. Suppose again that
$T\in\mathcal D_{P,Q}$ and $\Gamma(T)=0$, with the corresponding
intertwiner $U$ of §2.2. For a last-row entry farther than the first
off-diagonal, write $k=Q-a$, where $1\le a\le Q$. Direct algebra gives
$$
\lambda_P-\lambda_k-S
=(2a-1)\Delta+a(2Q-a-1)>0.
\tag{2.11}
$$
Thus (2.7) eliminates every last-row entry except possibly $U_{P,Q}$.
When $Q=0$, this assertion is immediate without a far entry to check.

The relation $B_PU=UB_Q$ and irreducibility determine the preceding row
uniquely from the last row, then determine each earlier row from the two
following rows. Explicitly, if $U_j$ denotes row $j$,
$$
(B_P)_{j,j-1}U_{j-1}
=U_jB_Q-(B_P)_{jj}U_j-(B_P)_{j,j+1}U_{j+1},
$$
with the absent final-row term omitted. Every coefficient on the left is
nonzero. Consequently the relation space
$\ker(\Gamma|_{\mathcal D_{P,Q}})$ has dimension at most one.

To exhibit a nonzero relation, let $\Pi_{Q+1}$ be the physical orthogonal
projection from all degree-$Q+1$ polynomials onto $U_{Q+1}$, and put
$$
D_i=\Pi_{Q+1}J_{i,+}|_{U_Q},\qquad i=1,2,3.
$$
The pair Casimir $C_{12}$ commutes with $J_{3,+}$ and with the total
raising and lowering operators, hence with $\Pi_{Q+1}$. Therefore
$A_PD_3=D_3A_Q$, so $D_3\in\mathcal D_{P,Q}$. Permutations permute
the three $D_i$, and
$$
D_1+D_2+D_3=\Pi_{Q+1}J_{\mathrm{tot},+}|_{U_Q}=0.
$$
Thus $\Gamma(D_3)=0$.

For nonzero $f=(z_1-z_2)^Q$, write $s=(z_1+z_2)/2$. The pair-label
$Q$ subspace in full degree $Q+1$ is two dimensional, spanned by
$sf$ and $z_3f$. Its total-descendant subspace is the single line
$$
J_{\mathrm{tot},+}f=[2(\Delta+Q)s+\Delta z_3]f.
$$
Indeed the same pair label has its lowest possible total degree at $Q$,
where its subspace is $\mathbb C f$. Since
$J_{3,+}f=\Delta z_3f$ is not on that descendant line for $\Delta>0$,
its primary projection is nonzero. Hence $D_3\ne0$.

The relation space is exactly one dimensional. Since the equal-label
space has dimension $Q+1$,
$$
\boxed{\operatorname{rank}W_{3;Q+1,Q}=Q,\qquad Q\ge0.}
\tag{2.12}
$$
The endpoint $Q=0$ is included: the physical primary space is zero
dimensional, while the one-dimensional equal-label space is averaged to
zero. No special raising-matrix formula or high-degree interpolation is
needed for this proof.

### 2.6 A self-contained proof of the balanced band

Let $P=Q\ge1$. Every $T\in\mathcal D_{P,P}$ is uniquely
$h(A_P)$ for a polynomial of degree at most $P$. Its Bose average
vanishes precisely when
$$
h(A_P)+h(B_P)+h(C_P)=0,
\qquad C_P=s_PI-A_P-B_P.
\tag{2.13}
$$
Write the highest terms as $h(t)=a_mt^m+a_{m-1}t^{m-1}+\cdots$,
with $a_m\ne0$. If $m\ge2$ is even, an entry at distance $m$
from the main diagonal receives no contribution from $h(A_P)$ or any
lower power. The contribution from $h(B_P)+h(C_P)$ is
$$
2a_m\prod_{j=i}^{i+m-1}(B_P)_{j,j+1}\ne0,
$$
contradicting (2.13).

If $m\ge3$ is odd, take an entry at distance $m-1$. A length-$m$
tridiagonal path over that distance has exactly one diagonal pause.
Writing $b_j=(s_P-\lambda_j)/2$, the surviving coefficient after
dividing by the nonzero product of neighboring entries is
$$
2a_m\sum_{j=i}^{i+m-1}b_j+2a_{m-1}.
$$
There are at least two allowed consecutive starting positions because
$m\le P$. Their difference is
$2a_m(b_{i+m}-b_i)\ne0$, since the $\lambda_j$ increase strictly.
Thus they cannot both vanish, again contradicting (2.13).

It follows that $h$ is at most linear. The Casimir sum shows that its
only nonzero vanishing-average direction is
$h(t)=a(t-s_P/3)$. The relation space therefore has dimension one,
and $\operatorname{rank}W=P$. For $P=0$, the equal-label and physical
spaces are both one dimensional and the Bose average is the identity, so
the rank is one. Together with §§2.3–2.5, this completes an independent
proof of every case in Theorem 1.

### 2.7 Complete bivariate counting series

The theorem gives a rational counting series for all three-body kernels.
Let
$$
D(t,u)=\frac16\left[
\frac1{(1-t)^2(1-u)^2}
+\frac3{(1-t^2)(1-u^2)}
+\frac2{(1+t+t^2)(1+u+u^2)}\right].
$$
This is the $S_3$ Molien series of the physical primary spaces. The rank
generating series is
$$
R(t,u)=\frac1{(1-t)(1-u)(1-tu)}
-\frac{t+u+tu}{1-tu}-t^3u-tu^3.
\tag{2.14}
$$
Indeed the first term counts $\min(P,Q)+1$; the next term removes the
one-dimensional relations on the nonzero diagonal and the two adjacent
bands, and the last terms remove the two exceptional low-degree relations.
Therefore
$$
\boxed{\sum_{P,Q\ge0}\dim\ker W|_{\mathcal H_{P,Q}}\,t^Pu^Q
=D(t,u)-R(t,u).}
\tag{2.15}
$$
This is a graded-vector-space counting formula. It does not assert that
the contact kernels are an ideal of the invariant polynomial ring.

## 3. Further analytic spectral consequences

### 3.1 An all-index upper bound and a rigorous bottom-gap upper scale

List strictly positive eigenvalues in decreasing order as $e_j$.
Assume $c_0\ge c_1\ge\cdots>0$, as for physical contact. Split the
interaction into channels $k<j-1$ and $k\ge j-1$. The former has
rank at most $j-1$ by the one-pair rank construction. Each of the three
pairs contributes a positive operator of norm at most $c_{j-1}$ to the
tail. The finite-dimensional min–max principle gives
$$
\boxed{e_j\le3c_{j-1}.}
\tag{3.1}
$$
For balanced $P\ge1$, the rank is $P$, hence
$$
\boxed{0<e_{\min}(P)\le
\frac3{8\pi(2\Delta+2P-3)}=O(P^{-1}).}
\tag{3.2}
$$
This is stronger than the $O(\log P/P)$ upper bound obtainable from the
mean alone. It supplies no matching lower bound.

### 3.2 Schatten convergence and all positive moments above order one

The source's balanced channel realization is
$$
H_P=C_P^{1/2}(I+2M_P)C_P^{1/2},\qquad
M_P=R_P\circ R_P,
$$
with $C_P=\operatorname{diag}(c_0,\ldots,c_P)$. Its nonzero spectrum is
that of physical $W$. Extend it by zero in $\ell^2(\mathbb N_0)$.
The source proves $H_P\to C_\infty=\operatorname{diag}(c_k)$ in operator
norm by fixed-index recoupling decay and $c_k\to0$.

For every real $p>1$, (3.1) and $c_k\asymp1/(k+1)$ give a summable
dominating sequence for the $p$-th powers of all eigenvalues. Fixed-index
spectral convergence therefore implies
$$
\boxed{\lim_{P\to\infty}\operatorname{Tr}(W_{3;P,P}^{p})
=\sum_{k=0}^{\infty}c_k^p
=\frac{\zeta(p,\Delta-\tfrac12)}{(16\pi)^p},\qquad p>1.}
\tag{3.3}
$$
The stronger statement
$$
\boxed{\|H_P-C_\infty\|_{\mathcal S_p}\longrightarrow0
\quad(p>1)}
\tag{3.4}
$$
also follows. The singular-value sum inequality gives
$s_{2j-1}(H_P-C_\infty)\le s_j(H_P)+s_j(C_\infty)
\le4c_{j-1}$; operator-norm convergence controls each fixed singular
value, and dominated convergence completes the argument. There is no
trace-class claim at $p=1$; the trace diverges logarithmically.

### 3.3 Fixed smaller degree: complete positive spectrum at large spin

Fix $Q$. For $P\ge Q+2$, apart from the single small exception, the
channel matrix is positive definite of dimension $Q+1$ by Theorem 1.
Its nonzero physical spectrum is that of
$$
H_{P,Q}=C_Q^{1/2}\bigl[I+2(R_P\circ R_Q)_{0\le j,k\le Q}\bigr]C_Q^{1/2}.
$$
The fixed-index recoupling estimate
$(R_P)_{jk}=O_{j,k,\Delta}(P^{-\Delta})$ gives, in this fixed finite
dimension,
$$
\|H_{P,Q}-C_Q\|=O_{Q,\Delta}(P^{-\Delta}).
$$
Thus the entire positive spectrum, rather than only any fixed top part,
satisfies
$$
\boxed{e_{k+1}(P,Q)=c_k+O_{Q,\Delta}(P^{-\Delta}),
\qquad k=0,\ldots,Q.}
\tag{3.5}
$$
The remaining $d_3(P,Q)-(Q+1)$ eigenvalues are exactly zero.
The dependence on $Q$ is not uniform in this estimate.

## 4. Independent computation and its exact scope

`verify_rectangular_rank.py` constructs the pair eigenpolynomials from the
triangular differential operator, applies particle transpositions by
binomial substitution, and forms the compressed Bose average. It imports
no source implementation or saved result. The output is
`rectangular_rank_verification.json`.

Executed checks:

* All $0\le Q\le P\le12$ at each of
  $\Delta=3/2,2,7/3$: 273 exact rational rank computations, all agreeing
  with Theorem 1. These are regression evidence, not the all-index proof.
* Symbolic determinants for $(P,Q)=(2,0),(3,1),(4,2),(5,2),(6,3),(7,3),(8,4)$.
  Apart from the predicted $(3,1)$ zero, each factors into expressions
  strictly positive for $\Delta>1$.
* Direct differential construction of $B_n$ at symbolic mass for
  $1\le n\le7$: tridiagonality, nonzero upper off-diagonal formula,
  and diagonal formula (2.2), all exact.

For example the independently obtained determinant at $(4,2)$ is
$$
\det K_{4,2}=
\frac{(\Delta+3)(3\Delta+4)(3\Delta+5)}
{18(2\Delta+1)^2(2\Delta+3)^2(2\Delta+5)}>0,
$$
where $K$ is the unweighted Bose compression, not the physical contact
Hamiltonian. Its nonzero determinant verifies the rank, not physical
energy normalization.

## 5. Remaining questions and numerical leads

The exact kernel dimensions are now settled for all three-body bidegrees.
Constructing a convenient explicit polynomial basis for the full kernels,
especially the balanced left-right-even kernels, remains nontrivial.
The representation-theoretic rank proof gives linear constraints and
dimension, but does not by itself produce such a basis.

The matching lower bound $e_{\min}(P)\gtrsim1/P$ remains open here.
Fresh double-precision Jacobi-diagonalization calculations suggest that
$P\lambda_{\min}^{+}(8\pi W)$ tends to a positive, mass-independent
constant near $0.277$, but this is only evidence. The unweighted
$M_P=R_P\circ R_P$ has the exact eigenvalue $-1/2$ corresponding to
the Casimir relation; its next lowest eigenvalues appear to approach
$-5/16,-63/256,\ldots$, the negative subsequence of
$P_{2n}(0)=(-1)^n\binom{2n}{n}/4^n$. A limiting integral operator for
the Racah-square kernel is a concrete route to an actual spectral-gap
proof. Uniform finite-degree inequalities must be checked carefully:
the proposed bound $\lambda_2^{\uparrow}(M_P)\ge-5/16$ is **false**
already at finite degree (for example $P=4,\Delta=2$, the value is
approximately $-0.312939077<-0.3125$).

No new error in the audited three-body rank and endpoint-limit proofs was
found. The distinction between their proofs and their numerical regression
records is correctly made in the newer source notes. The new theorem closes
a stated open problem rather than correcting a false claim.

---

# Appendix C. A continuum Racah kernel with an explicit spectrum

This supplement is mathematically independent of the new rank proof.
It explains the observed mass-independent numbers in the unweighted
channel Gram operator. Its convergence is **strong operator convergence**,
not operator-norm convergence; it does not by itself prove a uniform
positive spectral gap for the finite matrices.

Fix $\Delta>1$. Let $R_P$ be the real orthogonal recoupling matrix
between pair $12$ and pair $23$, in physical orthonormal pair bases,
and put $M_P=R_P\circ R_P$. Thus $M_P$ is a symmetric doubly
stochastic $(P+1)$-dimensional matrix.

**Theorem 2 (strong continuum limit).** Embed $\ell^2\{0,\ldots,P\}$
isometrically in $L^2(0,1;dx)$ by taking the $j$-th basis vector to
$\sqrt{P+1}$ times the indicator of
$[j/(P+1),(j+1)/(P+1))$. Call this isometry $V_P$. Then
$$
V_PM_PV_P^*\longrightarrow K\quad\hbox{strongly},
$$
where
$$
\boxed{(Kf)(x)=\frac2\pi\int_0^{\sqrt{1-x^2}}
\frac{f(y)}{\sqrt{1-x^2-y^2}}\,dy.}
\tag{C1}
$$
The operator is self-adjoint, Markov, and compact. Its complete
orthogonal eigenbasis consists of the even Legendre polynomials restricted
to $[0,1]$, and
$$
\boxed{KP_{2n}(x)=\mu_nP_{2n}(x),\qquad
\mu_n=(-1)^n\frac{\binom{2n}{n}}{4^n}=P_{2n}(0).}
\tag{C2}
$$
The limit is independent of $\Delta$.

## Proof

Write $A_P=\operatorname{diag}(\lambda_k)$,
$\lambda_k=(\Delta+k)(\Delta+k-1)$, and
$B_P=R_PA_PR_P^*$. The diagonal and off-diagonal entries of this
orthonormal Jacobi matrix are
$$
b_{P,k}=\frac{s_P-\lambda_k}{2},\qquad
a_{P,k}=-(k+1)(P-k-1+\Delta)\sqrt{g_{P,k}/g_{P,k+1}},
$$
where
$$
\frac{g_{P,k+1}}{g_{P,k}}=
\frac{4(k+1)[4(\Delta+k)^2-1]}{2\Delta+k-1}
\frac{P+\Delta-k-1}{(P-k)(P+3\Delta+k-1)(P+2\Delta+k)}.
$$
For $k/P\to x\in(0,1)$, direct division by $P^2$ gives
$$
\frac{b_{P,k}}{P^2}\to\frac{1-x^2}{2},\qquad
\frac{a_{P,k}}{P^2}\to-\frac{1-x^2}{4}.
\tag{C3}
$$
The convergence also holds at every fixed finite displacement of $k$.

For each fixed nonnegative integer $m$, spectral decomposition gives
the exact identity
$$
\sum_{\ell=0}^P(M_P)_{k\ell}
\left(\frac{\lambda_\ell}{P^2}\right)^m
=\left[\left(\frac{B_P}{P^2}\right)^m\right]_{kk}.
\tag{C4}
$$
Only paths within distance $m$ of $k$ occur on the right. Applying
(C3) therefore makes the right side tend to the diagonal element of the
constant-coefficient bilateral Jacobi operator with diagonal
$b=(1-x^2)/2$ and off-diagonal $a=-(1-x^2)/4$. Its Fourier symbol is
$b+2a\cos\theta=(1-x^2)\sin^2(\theta/2)$, and hence
$$
\lim\left[\left(\frac{B_P}{P^2}\right)^m\right]_{kk}
=(1-x^2)^m\frac1{2\pi}\int_0^{2\pi}\sin^{2m}(\theta/2)\,d\theta
=(1-x^2)^m\frac{\binom{2m}{m}}{4^m}.
\tag{C5}
$$
Uniformly in $\ell$, replacing $(\lambda_\ell/P^2)^m$ by
$(\ell/P)^{2m}$ costs $O_{m,\Delta}(P^{-1})$. Replacing point
samples by the interval averages used by $V_P^*$ has the same bound.
The row action is uniformly bounded, because the matrices are stochastic
and the sampled polynomials are bounded. Thus dominated convergence gives
convergence in $L^2(0,1)$ on every test polynomial $f(y)=y^{2m}$.

Substitution $y=\sqrt{1-x^2}\sin\theta$ in (C1) shows that $K$ has
exactly the same moments (C5). Its kernel is symmetric and has each row
integral equal to one; therefore $K$ is a self-adjoint contraction on
$L^2$. Polynomials in $y^2$ are dense in $C[0,1]$, hence in
$L^2(0,1)$. The uniform contraction bounds and convergence on this dense
set prove strong operator convergence.

For the spectral statement, the moment formula shows that $K$ preserves
each polynomial space $\operatorname{span}\{1,x^2,\ldots,x^{2n}\}$.
Self-adjointness then makes its one-dimensional orthogonal difference
an eigenspace. This difference is spanned by $P_{2n}(x)$, since the
even Legendre polynomials are orthogonal on $[0,1]$. The coefficient
of $x^{2n}$ in $Kx^{2n}$ is
$(-1)^n\binom{2n}{n}/4^n$, which proves (C2). These eigenvalues tend
to zero, and the even Legendre polynomials form a complete orthogonal
basis, so $K$ is compact. ∎

## Geometric interpretation of the limit

The kernel in (C1) is also the conditional-expectation operator obtained from a uniformly distributed point on the unit two-sphere. If $X$ and $Y$ are the absolute values of two orthogonal Cartesian coordinates, then $X$ is uniform on $[0,1]$. Conditional on $X=x$, the other two coordinates are uniform on a circle of radius $\sqrt{1-x^2}$, so
$$
\mathbb P(Y\in dy\mid X=x)=
\frac{2\,\mathbf1_{0<y<\sqrt{1-x^2}}}{\pi\sqrt{1-x^2-y^2}}\,dy.
$$
Thus $Kf(x)=\mathbb E[f(Y)\mid X=x]$. Symmetry between Cartesian coordinates explains the uniform stationary measure and self-adjointness directly. The leading Casimir scaling has removed the fixed $\Delta$, which is why this spherical conditional-expectation operator is universal here. This is an interpretation of the proved limit, not a replacement for its convergence proof.

## Exact implications and remaining limitation

Every fixed $\mu_n\ne0$ is approached by some eigenvalue of $M_P$:
the projected polynomial $V_P^*P_{2n}$, normalized in the discrete
space, is an approximate eigenvector. This assertion is stronger than
an observed sequence of numerical fits, but weaker than convergence of
the ordered spectrum. Strong convergence allows spurious finite-matrix
eigenvalues in the limit; excluding them would require an additional
collective-compactness or operator-norm argument.

In particular, $K$ has the exact null direction $P_2$ for $I+2K$.
Away from it, the spectral bottom of $I+2K$ is
$1+2\mu_3=3/8$. This suggests a route to a positive lower bound of
order $1/P$ for contact, but does not prove that bound for the finite
matrices.

The stronger finite inequality $\lambda_2^{\uparrow}(M_P)\ge-5/16$
is false. At $P=4,\Delta=2$, an independent exact construction gives
$$
\det(xI-M_4)=
\frac{(x-1)(2x+1)(43218x^3-2107x^2-6841x-610)}{86436}.
$$
For the monic cubic factor, its value at $-1/2$ is $-99/1372$,
while its value at $-5/16$ is $715/9834496$. It therefore has a
root strictly between these two values. A rational isolating interval is
$(-8419/26903,-2450/7829)$, approximately $-0.312939077$.

## Suggested contact continuum form

The physical weight satisfies $P(8\pi c_k)\to1/(2x)$ for $k/P\to x>0$.
This singles out the candidate quadratic form
$$
q[f]=\left\langle(2x)^{-1/2}f,
(I+2K)(2x)^{-1/2}f\right\rangle,
\qquad
\mathcal D(q)=\{f\in L^2(0,1):x^{-1/2}f\in L^2(0,1)\}.
$$
Its multiplication weight is unbounded at $x=0$, so a domain argument
is necessary. The form itself does have a rigorous closed realization,
as proved next. Its proposed role as the limit of the finite contact
matrices remains unproved.

**Theorem 3 (closed weighted form and continuum gap).** The form $q$
on the stated domain is densely defined, nonnegative, and closed. It
therefore defines a unique nonnegative self-adjoint operator $\mathcal H$,
whose expression
$\mathcal H=(2x)^{-1/2}(I+2K)(2x)^{-1/2}$ is interpreted in the
quadratic-form sense. Its kernel and gap satisfy
$$
\boxed{\ker\mathcal H=\operatorname{span}\{\sqrt{2x}P_2(x)\},
\qquad
\mathcal H\big|_{(\ker\mathcal H)^\perp}\ge\frac3{16}I.}
\tag{C6}
$$

**Proof.** Put $A=(2x)^{-1/2}$, $B=I+2K$, and choose the normalized
$e=\sqrt5P_2$. By the explicit spectrum (C2),
$$
\ker B=\mathbb Ce,\qquad
B\ge\beta(I-|e\rangle\langle e|),\quad\beta=3/8,
\qquad\|B\|=3.
$$
For $f\in\mathcal D(A)$, write $g=Af=v+ce$, with $v\perp e$.
Then $q[f]\ge\beta\|v\|^2$. The inverse
$A^{-1}=\sqrt{2x}$ is bounded with norm $\sqrt2$, and
$\|A^{-1}e\|^2=5/4$. Since $f=A^{-1}v+cA^{-1}e$,
$$
|c|\|A^{-1}e\|\le\|f\|+\sqrt2\|v\|.
$$
It follows, for example, that
$$
\|Af\|^2\le\frac85\|f\|^2+\frac{56}5q[f],
\qquad q[f]\le3\|Af\|^2.
\tag{C7}
$$
Thus the form norm is equivalent to the graph norm of the closed
multiplication operator $A$. This proves closedness; density follows
from compactly supported test functions. The representation theorem for
closed nonnegative forms supplies $\mathcal H$. The kernel is exactly
$\mathbb C A^{-1}e$.

For the gap, let $f\perp A^{-1}e$ and set $X=A^{-2}=2x$,
$\xi=\langle e,Xe\rangle>0$. Orthogonality is
$\langle g,Xe\rangle=0$, which fixes the scalar $c$. Eliminating
it gives the Schur-complement identity
$$
\|f\|^2=
\left\langle v,
\left(X-\frac{X|e\rangle\langle e|X}{\xi}\right)v\right\rangle
\le2\|v\|^2.
$$
Therefore $q[f]\ge\beta\|v\|^2\ge(3/16)\|f\|^2$, proving
(C6). ∎

This is a theorem about the continuum form only. It supplies no uniform
finite-$P$ gap and does not establish convergence of finite-matrix
spectra to $\mathcal H$. Neither strong convergence of $M_P$ alone
nor the fixed-index compactly weighted limit in the source settles those
questions. Uniform endpoint control and absence of spectral pollution
remain necessary. No exact value of the lowest positive eigenvalue or
finite-contact limiting constant is claimed.

For reproducible numerical exploration, use the normalized basis
$\varphi_n(x)=\sqrt{4n+1}P_{2n}(x)$. With
$g=(2x)^{-1/2}f$, the candidate form's finite Galerkin problem is the
generalized matrix problem
$$
\operatorname{diag}(1+2\mu_n)g=\varepsilon\,\mathsf Xg,
\qquad \mathsf X_{nm}=2\int_0^1x\varphi_n(x)\varphi_m(x)\,dx.
$$
For positive eigenvalues the $n=1$ equation is
$(\mathsf Xg)_1=0$, so that component is eliminated by the Schur
complement of $\mathsf X_{11}$. Gauss–Legendre quadrature with
$2L+4$ nodes integrates these polynomial entries exactly in exact
arithmetic when $0\le n,m\le L$. The implementation uses double
precision, so its values remain numerical evidence.

| Largest basis label $L$ | First positive | Second | Third | Fourth |
|---:|---:|---:|---:|---:|
| 16 | 0.27758685 | 0.36352553 | 0.40624483 | 0.43157772 |
| 32 | 0.27758593 | 0.36352398 | 0.40624187 | 0.43156621 |
| 64 | 0.27758583 | 0.36352384 | 0.40624171 | 0.43156600 |
| 128 | 0.27758582 | 0.36352383 | 0.40624169 | 0.43156598 |

The finite $P$ contact data and this separate continuum calculation are
both in `contact_gap_evidence.json`, generated by
`contact_gap_evidence.py`. Agreement supports the proposed scaling
operator but is not a substitute for spectral convergence.

---

# Appendix D. Stable-spectrum audit and infinitely many active resonances

Research snapshot: `GaoZ1en/obsidian_note`, commit `670abb1bb4b644a162278415ef94dde09cdeb016` (21 October 2026).

This contribution independently checks the scalar contact interaction's stable `(2,2)` block and its seven-dimensional Galois example, then proves new general results about its large-particle-number leading operator. No repository implementation, saved matrix, or previous output is imported by the accompanying calculations. The finite integral and occupation construction is reimplemented from the normalized free modes and the normal-ordered interaction. “New” below means obtained in this investigation and not found in the repository materials reviewed; no priority claim is made.

## 1. Scope and conventions

Take a real scalar on unit-radius global AdS3, with `m^2=Delta(Delta-2)`, `Delta>1`, regular center, source-free fast boundary falloff, fixed boundary time, and the vacuum Wick subtraction specified in the project. The interaction is `-lambda phi^4/4!`. Write

$$
 E=E_0+\lambda\varepsilon+o(\lambda),\qquad
 c_0=\frac1{8\pi(2\Delta-1)},\qquad
 \widehat K_N=\mathcal K_N/c_0.
$$

Everything below concerns the first-order coefficient operator. A statement as `N` tends to infinity at fixed excitation labels is not a statement about a controlled full interacting theory at fixed nonzero coupling.

For mode `A=(p,q)`, put `nu=min(p,q)`, `mu=max(p,q)`, `ell=|p-q|`, and `w_p=(Delta)_p/p!`. The radial positive-frequency mode is

$$
 e_{pq}(y)=\frac{(-1)^\nu}{\sqrt{2\pi}}
 \sqrt{\frac{w_\mu}{w_\nu}}
 y^{\ell/2}(1-y)^{\Delta/2}
 P_\nu^{(\ell,\Delta-1)}(1-2y),\qquad
 y=\frac{r^2}{1+r^2}.
$$

These conventions are in [phi4 arbitrary N spectrum.md][R12], §2.2, equations (2.3)–(2.6). For the audits, I obtain every vertex from the polynomial integral, then act with the actual occupation factors and solve the two lowering kernels.

### Stable creation coordinates used in this appendix

To distinguish these coordinates from fixed-$N$ wavefunction multiplication, let $a_{00}=1$, $w_p=(\Delta)_p/p!$, and associate an occupation monomial with $r=\sum n_{pq}$ excitations to
$$
|\boldsymbol n;N\rangle=
\frac{(b^\dagger_{00})^{N-r}}{\sqrt{N!}}
\prod_{(p,q)\ne(0,0)}
\left(\frac{b^\dagger_{pq}}{\sqrt{w_pw_q}}\right)^{n_{pq}}|0\rangle.
$$
Its squared norm is
$$
G_{\boldsymbol n}=
\frac{\prod n_{pq}!(w_pw_q)^{-n_{pq}}}
{N(N-1)\cdots(N-r+1)}.
$$
Define
$$
c_{pq}=\sum_{i=0}^p\sum_{j=0}^q
\binom pi\binom qj(-a_{10})^{p-i}(-a_{01})^{q-j}a_{ij}.
$$
Then $c_{10}=c_{01}=0$. In the stable range $N\ge\max(1,P+Q)$, the monomials in $c_{pq}$, $p+q\ge2$, of bidegree $(P,Q)$ form the primary basis. Indeed the lowering derivations are
$$
D_La_{pq}=p\,a_{p-1,q},\qquad D_Ra_{pq}=q\,a_{p,q-1}.
$$
The triangular change from $a_{pq}$ to $a_{10},a_{01},c_{pq}$ is invertible; in these coordinates the derivations are partial derivatives in $a_{10},a_{01}$. Their common kernel is therefore precisely the centered-generator polynomial algebra. At stable $N$, no occupation truncation creates a relation. Every centered monomial has one unique lowest-excitation term; every correction contains $a_{10}$ or $a_{01}$. These facts justify the regular-frame construction below.

## 2. Consequential existing claims independently verified

### 2.1 The full `(2,2)` affine pencil and the first square-root splitting

**Verified.** [phi4 stable spectra and resonances.md][R4], §3, lines 124–185, gives the correct symbolic matrices in the centered primary basis `(c22,c20 c02,c11^2)`. The new calculation constructs the nine-dimensional full occupation shell over `Q(N,Delta)`, constructs those three vectors, and checks the full intertwining identity `K_shell X=X K_primary` before reading off the matrices. This is stronger than fitting a few eigenvalues or comparing two characteristic polynomials.

With `D=(2Delta+1)(2Delta+3)`, the result is

$$
 A=\frac1D
 \begin{pmatrix}
 -\Delta^2-5\Delta-3&0&0\\
 -\Delta^2-\Delta+3&-2\Delta(2\Delta+3)&0\\
 2\Delta^2&0&-2(2\Delta+3)
 \end{pmatrix},
$$

$$
 B=\frac1D
 \begin{pmatrix}
 \Delta^2-\Delta-3&-\Delta^2-\Delta+3&(\Delta+1)^2\\
 5\Delta^2+5\Delta-3&3\Delta^2-3\Delta-9&(\Delta+1)^2\\
 -2\Delta^2+4\Delta+12&2\Delta^2&-2\Delta^2-2\Delta+2
 \end{pmatrix}.
$$

At `Delta_2=(sqrt(13)-1)/2`, direct expansion of the reconstructed characteristic polynomial, with `N=T^2` and

$$
 \rho=\binom N2-\frac{2N}{\sqrt{13}}+zT+b,
$$

gives

$$
 z^2=\frac{18}{(13+2\sqrt{13})^2},\qquad
 b=-\frac{\Delta_2+2}{13+2\sqrt{13}}.
$$

The two leading `z` roots are simple. The ordinary analytic implicit-function theorem then proves the claimed local convergent expansions in `1/T`, including the stated `O(N^{-1/2})` remainder after the constant. A Jordan form of `A` alone would not prove this; the nonzero reverse coupling is actually present in the reconstructed operator.

### 2.2 The seven-dimensional `S7` block

**Verified, including its physical origin.** At `N=8`, `Delta=2`, `(P,Q)=(3,3)`, the independent radial calculation constructs the 31-dimensional full shell, computes the eight-dimensional common lowering kernel, and implements the actual left-right mode permutation. The even eigenspace has dimension seven; the odd eigenspace has eigenvalue `698/35`. The even characteristic polynomial is precisely the integer polynomial printed in [phi4 stable spectra and resonances.md][R4], §5, lines 208–231:

$$
\begin{aligned}
f(z)={}&157565625z^7-23205665000z^6+1462586814500z^5
-51138014520600z^4\\
&+1071221655190400z^3-13443822361820960z^2
+93593295299197440z-278827127932310784.
\end{aligned}
$$

Here is a compact exact arithmetic certificate, independently computed from that rebuilt matrix. Its monic reduction modulo 11 is

$$
 q=z^7+4z^6-3z^5-5z^4+4z^3-4z^2+4z-3.
$$

Repeated modular squaring gives `z^(11^7)-z=0 mod q`, and the polynomial Euclidean algorithm gives `gcd(q,z^11-z)=1`. Since seven is prime, the finite-field irreducibility criterion proves that `q` is irreducible. Thus the rational Galois group acts transitively on seven roots and is primitive.

Modulo 19 the polynomial, up to the unit `-7`, is

$$
 (z+1)(z+4)(z+8)(z-9)(z-8)(z^2+8z+2).
$$

All factors are distinct; the quadratic discriminant is `18`, a nonsquare modulo 19. The Frobenius permutation is a single transposition. The normal subgroup generated by its conjugates is generated by edges in a graph on seven vertices. Connected components are blocks for the primitive group, so this nontrivial graph is connected. Its edge transpositions generate all of `S7`. Hence `Gal(f/Q)=S7`.

The physical implication is exactly the one stated in the source: a uniform radical formula for every finite block is impossible. This is not a nonintegrability theorem, and the repository correctly does not call it one.

### 2.3 The half-integer analyticity statement is already in the source

[exact stable full proof audit.md][R5], §1.2, already gives the signed `t=N^{-1/2}` normalization, a regular analytic primary frame, and the Rellich argument. I checked its hypotheses independently. It must be reported as a verified existing result, not as a new result of this investigation.

The new theorem below uses that mechanism but supplies an explicit interaction-dependent leading operator, infinitely many uniquely located active resonances, and their asymptotic distribution in mass. Those are substantially stronger than observing one low-dimensional exceptional mass.

## 3. A weighted Jacobi-product identity

### Lemma 1 — exact integral

Let `alpha>-1`, `beta>-1/2`, and `m,n` be nonnegative integers. Define

$$
 I_{nm}^{\alpha,\beta}=
 \int_0^1 y^\alpha(1-y)^{2\beta}
 P_n^{(\alpha,\beta)}(1-2y)
 P_m^{(\alpha,\beta)}(1-2y)\,dy.
$$

Then

$$
\boxed{
 I_{nm}^{\alpha,\beta}=
 \frac{\Gamma(\alpha+n+m+1)\Gamma(2\beta+1)}
 {n!m!\Gamma(\alpha+n+m+2\beta+2)}
 (\beta+m-n+1)_n(\beta+n-m+1)_m.}
\tag{3.1}
$$

Use rising factorials, rather than separate Gamma quotients, when a parameter happens to be an integer at which intermediate Gamma functions have poles.

**Proof.** The Rodrigues formula in this coordinate is

$$
 P_n^{(\alpha,\beta)}(1-2y)
 =\frac{y^{-\alpha}(1-y)^{-\beta}}{n!}
 \frac{d^n}{dy^n}\big[y^{n+\alpha}(1-y)^{n+\beta}\big].
$$

Termwise differentiation of the finite Jacobi expansion gives

$$
 \frac{d^n}{dy^n}\big[(1-y)^\beta P_m^{(\alpha,\beta)}(1-2y)\big]
 =(-1)^n(\beta+m-n+1)_n(1-y)^{\beta-n}
 P_m^{(\alpha+n,\beta-n)}(1-2y).
$$

Insert Rodrigues and integrate by parts `n` times. Every boundary term vanishes: at zero the relevant power is at least `alpha+1`; at one the combined power is `2beta+1`. The result is

$$
 I_{nm}^{\alpha,\beta}=
 \frac{(\beta+m-n+1)_n}{n!}
 \int_0^1y^{\alpha+n}(1-y)^{2\beta}
 P_m^{(\alpha+n,\beta-n)}(1-2y)\,dy.
$$

Expand the remaining polynomial as

$$
 P_m^{(\alpha+n,\beta-n)}(1-2y)
 =\frac{(\alpha+n+1)_m}{m!}
 {}_2F_1(-m,m+\alpha+\beta+1;\alpha+n+1;y).
$$

The Beta integral cancels the lower parameter `alpha+n+1`. The resulting terminating Vandermonde identity is

$$
 {}_2F_1(-m,m+\alpha+\beta+1;\alpha+n+2\beta+2;1)
 =\frac{(n+\beta+1-m)_m}{(\alpha+n+2\beta+2)_m}.
$$

Multiplying the Gamma and factorial factors proves (3.1). Every series here terminates; there is no exchange of an infinite sum with an integral. Exceptional intermediate parameter values follow by continuity, or directly from the finite-polynomial expressions. ∎

The diagonal specialization is particularly simple:

$$
 I_{nn}^{\ell,\Delta-1}
 =\frac{(2n+\ell)!(\Delta)_n^2}
 {(n!)^2(2\Delta-1)(2\Delta)_{2n+\ell}}.
\tag{3.2}
$$

## 4. The leading contact operator is governed by a beta-binomial law

### Theorem 2 — ground-excited interaction and all leading slopes

For `A=(p,q) !=(0,0)`, let `g_pq` be the expectation of `Khat_2` in the normalized two-particle occupation with one ground particle and one particle in mode `A`. Then

$$
\boxed{g_{pq}(\Delta)=
 2\binom{p+q}{p}\frac{(\Delta)_p(\Delta)_q}{(2\Delta)_{p+q}}.}
\tag{4.1}
$$

At fixed `P+Q`, twice the symmetric beta-binomial probability mass function occurs. The formula is not to be interpreted as the physical ground-ground value: that value is one, whereas formal substitution `(p,q)=(0,0)` in (4.1) gives two because the two-particle Bose normalization changes.

For every stable primary monomial

$$
 C=\prod_{|A|\ge2}c_A^{n_A},\qquad
 \sum_Ap_A n_A=P,\quad\sum_Aq_A n_A=Q,
$$

the corresponding diagonal leading slope in a regular physical large-`N` frame is

$$
\boxed{\sigma_C=\sum_A n_A\,[g_A(\Delta)-1].}
\tag{4.2}
$$

Thus the entire multiset of leading slopes of the stable primary block is given by (4.2), including multiplicities, without diagonalizing an affine-coordinate Jordan matrix.

**Proof of (4.1).** The coefficient of the normalized occupation with distinct modes is `lambda int r dr dtheta |e_0|^2 |e_A|^2`: four ordered pair terms cancel the factor `1/4` in the number-preserving interaction. Therefore

$$
 g_{pq}=2(2\Delta-1)\frac{w_\mu}{w_\nu}
 I_{\nu\nu}^{\ell,\Delta-1}.
$$

Use (3.2), `p+q=2nu+ell`, and `w_k=(Delta)_k/k!`. The factors simplify directly to (4.1).

**Proof of (4.2) and the primary-frame issue.** In a normalized full-shell occupation with `r` excited particles, the ground-ground contribution is `binom(N-r,2)`, the ground-excited diagonal contribution is `(N-r) sum_A n_A g_A`, and excited-excited interactions are `O(1)`. Hence the coefficient of `N`, after subtracting `binom(N,2)`, is `sum n_A(g_A-1)`.

Energy and angular momentum preserve the two nonnegative mode degrees separately. An interaction involving one incoming and one outgoing ground particle therefore leaves the nonzero mode unchanged. Every off-diagonal matrix element is either `O(1)` (all four legs excited) or `O(sqrt(N))` (one ground leg). A pair of ground particles cannot become excited. This proves that the leading full-shell matrix is diagonal in the occupation basis.

A centered primary monomial has exactly one term of minimal excited-particle count: `prod a_A^(n_A)`. Every other term contains at least one dipole variable `a10` or `a01`. If its minimal count is `r0`, multiply its physical column by the signed factor `t^(-r0)`, `t=N^(-1/2)`, and then divide by the positive limiting norm of that scaled column. Explicitly, the required constant divisor is `sqrt(g_s0)`, where `g_s0=prod_A n_A!/(w_pA w_qA)^(n_A)` is the positive monomial norm factor of the minimal occupation. The resulting analytic vector has value at zero equal to that single normalized occupation with no dipoles. Distinct centered monomials have distinct such occupations. Their limiting Gram matrix is therefore the identity. Their first column corrections contain a dipole and are orthogonal to all limiting columns, so the Gram matrix is `I+O(t^2)`. Analytic Gram orthonormalization, likewise `I+O(t^2)`, gives a regular primary frame. Its zeroth-order matrix is exactly the restriction of the diagonal occupation matrix to modes with total degree at least two. This proves (4.2).

In fact the first-order correction to every such column contains a dipole and is orthogonal to the whole limiting primary subspace. Consequently the first coefficient `H1` in

$$
 H(t)=\frac{\widehat K_N-\binom N2}{N}
 =H_0+tH_1+t^2H_2+\cdots
\tag{4.3}
$$

is simply the physical one-ground-leg transition matrix restricted to the dipole-free occupation states. No unknown primary-frame correction can cancel the resonance coefficient calculated below. ∎

### Corollary: a concrete resonance graph

For each leading slope `sigma`, use as vertices the centered primary monomials with that slope. Join two vertices when one excitation `alpha` is replaced by two excitations `beta,gamma`, each of total degree at least two, with `alpha=beta+gamma` and a nonzero contact integral. The restricted matrix `E_sigma H1 E_sigma` is a weighted adjacency matrix on this graph, with the usual occupation factors. It is bipartite under the parity of the number of excited particles. A nonzero edge proves nonzero `sqrt(N)` splittings; a repeated leading slope without an edge does not.

This graph is useful even when more than two states resonate. Its nonzero spectral values come in pairs `+b,-b`, and the spectral radius is at least the absolute value of any individual edge entry.

## 5. Infinitely many actual square-root resonances

Set

$$
 g_n(\Delta)=g_{n,n}(\Delta)
 =\frac{2(1/2)_n(\Delta)_n}{n!(\Delta+1/2)_n},\qquad n\ge1.
\tag{5.1}
$$

For each integer `n>=2`, compare the leading occupations of `c_nn` and `c_(n-1,n-1)c_11`. Their slopes are `g_n-1` and `g_(n-1)+g_1-2`. Since `g_1=1-1/(2Delta+1)`, they coincide exactly when

$$
 g_n-g_{n-1}+\frac1{2\Delta+1}=0.
\tag{5.2}
$$

### Theorem 3 — unique mass, active coupling, and true spectral splitting

For every `n>=2`, equation (5.2) has exactly one solution `Delta_n>1`. These masses are strictly increasing and unbounded. At `Delta=Delta_n`, in the stable `(P,Q)=(n,n)` primary block, at least two actual eigenvalue branches satisfy

$$
\boxed{\rho_\pm(N)=\binom N2+\sigma_n N\pm b\sqrt N+O(1),
 \qquad \sigma_n=g_n(\Delta_n)-1,\quad b\ge b_n>0,}
\tag{5.3}
$$

where the explicit nonzero edge is

$$
\boxed{b_n=\frac{n\,g_n(\Delta_n)}{(2n-1)\sqrt{1+\mathbf1_{n=2}}}.}
\tag{5.4}
$$

The primary dimension and the other resonant states may grow with `n`; (5.3) does not assume that the resonant cluster is two-dimensional. The branches in the statement can be selected as those associated with the largest positive and negative eigenvalues of its first resonance matrix.

**Proof of existence and uniqueness.** From (5.1),

$$
 \frac{g_n}{g_{n-1}}=
 \frac{(2n-1)(\Delta+n-1)}{n(2\Delta+2n-1)}.
$$

Thus (5.2) is equivalent to `F_n(Delta)=1`, with

$$
 F_n(\Delta)=
 \frac{(2\Delta+1)(\Delta+2n-1)}{n(2\Delta+2n-1)}g_{n-1}(\Delta).
\tag{5.5}
$$

Each factor `(Delta+j)/(Delta+j+1/2)` in `g_(n-1)` is positive and strictly increasing for `Delta>0`. Put `a=2n-1`; the remaining positive factor has derivative

$$
 \frac{d}{d\Delta}\frac{(2\Delta+1)(\Delta+a)}{2\Delta+a}
 =\frac{4\Delta^2+4a\Delta+2a^2-a}{(2\Delta+a)^2}>0.
$$

Therefore `F_n` is strictly increasing. At the algebraic boundary value `Delta=1`,

$$
 g_{n-1}(1)=\frac2{2n-1},\qquad
 F_n(1)=\frac{12}{4n^2-1}<1.
$$

As `Delta` tends to infinity, `g_(n-1)` tends to the positive number `2(1/2)_(n-1)/(n-1)!`, while the remaining factor grows like `Delta/n`. Thus `F_n` tends to infinity. The intermediate value theorem and strict monotonicity prove existence and uniqueness.

Moreover

$$
 \frac{F_{n+1}}{F_n}=
 \frac{(2n-1)(\Delta+n-1)(\Delta+2n+1)}
 {(n+1)(2\Delta+2n+1)(\Delta+2n-1)}<1,
$$

because denominator minus numerator is

$$
 3\Delta^2+(8n-1)\Delta+8n^2-2>0.
$$

It follows that `Delta_(n+1)>Delta_n`.

**Proof of the active matrix element.** Write `P_j(y)=P_j^(0,Delta-1)(1-2y)` and `w(y)=(1-y)^(2Delta-2)`. The exact adjacent triple identity is

$$
 \int_0^1w P_nP_{n-1}P_1\,dy
 =\frac n{2n-1}\int_0^1w P_n^2\,dy.
\tag{5.6}
$$

Here is an explicit all-index verification using Lemma 1. Put `beta=Delta-1`. The ordinary Jacobi recurrence `xP_(n-1)=aP_n+bP_(n-1)+cP_(n-2)` has

$$
 a=\frac{2n(n+\beta)}{(2n+\beta-1)(2n+\beta)},\quad
 b=\frac{\beta^2}{(2n+\beta-2)(2n+\beta)},\quad
 c=\frac{2(n-1)(n+\beta-1)}{(2n+\beta-2)(2n+\beta-1)}.
$$

Also `P_1(x)=((beta+2)x-beta)/2`. By (3.1),

$$
 \frac{I_{n,n-1}}{I_{nn}}
 =\frac{(2n+2\beta+1)\beta}{2(n+\beta)(\beta+1)},
$$

$$
 \frac{I_{n,n-2}}{I_{nn}}
 =\frac{(n-1)(2n+2\beta+1)\beta(\beta-1)}
 {(2n-1)(n+\beta-1)(\beta+1)(\beta+2)}.
$$

Substitution into the recurrence reduces its right-hand side to exactly `n/(2n-1)`, proving (5.6). The rational simplification was additionally checked symbolically with `n,beta` unrestricted symbols; it is not an inference from a finite list.

In the unnormalized creation coordinates, the coefficient taking one ground plus `(n,n)` to `(1,1)` plus `(n-1,n-1)` is therefore

$$
 T_n=\frac{n^2\Delta\,g_n}
 {(2n-1)(\Delta+n-1)(1+\mathbf1_{n=2})}>0.
$$

The ratio of the physical creation weights is `w_n/(w_(n-1)w_1)=(Delta+n-1)/(nDelta)`. Creation of two identical excitations at `n=2` contributes the Bose factor `sqrt(2)`. Thus the normalized Fock matrix element is

$$
 \langle(n-1,n-1),(1,1)|\widehat K_N|(n,n)\rangle
 =b_n(\Delta)\sqrt{N-1},
$$

with `b_n(Delta)=n g_n(Delta)/[(2n-1)sqrt(1+1_(n=2))]`. Dividing by `N` gives the nonzero `t H1` entry in (4.3). The primary-frame argument after Theorem 2 shows that this entry survives primary reduction.

At the resonance, compress `H1` to the `H0` eigenspace of slope `sigma_n`. This is a real symmetric matrix with a nonzero entry of magnitude `b_n`. Excitation-number parity anticommutes with it. Its spectrum therefore has a pair `+b,-b`, with `b>=b_n`. Degenerate Hermitian perturbation theory gives `sigma_n +/- bt+O(t^2)` for two eigenvalues of `H(t)`. Multiplication by `N=t^(-2)` proves (5.3). ∎

For `n=2`, the relevant resonance space is two-dimensional, so `b=b_2`; (5.4) reduces to the previously verified coefficient `3sqrt(2)/(13+2sqrt(13))`. For larger `n`, no assertion that `b=b_n` is needed.

## 6. Asymptotic distribution of the exceptional masses

### Theorem 4 — mass and coupling asymptotics

$$
\boxed{\Delta_n=\frac{\sqrt\pi}{2}n^{3/2}-\frac n2+O(\sqrt n),}
\qquad
\boxed{b_n\sim\frac1{\sqrt{\pi n}}.}
\tag{6.1}
$$

The first formula concerns the uniquely defined masses (5.5); it does not exchange a growing-excitation limit with the fixed-block large-`N` spectral expansion.

**Proof.** For `Delta=c n^(3/2)` with `c` in a fixed compact subinterval of `(0,infinity)`,

$$
 \frac{2(1/2)_{n-1}}{(n-1)!}=\frac2{\sqrt{\pi n}}[1+O(n^{-1})],
$$

by the elementary central-binomial/Stirling estimate. For the second factor in `g_(n-1)`, write its logarithm as

$$
 \sum_{j=0}^{n-2}\log\frac{\Delta+j}{\Delta+j+1/2}
 =-\frac n{2\Delta}+O(n^{-1}).
$$

The error is uniform in that interval of `c`: expansion of the logarithm and comparison of `sum 1/(Delta+j)` with `(n-1)/Delta` bound it by a constant times `n^2/Delta^2+1/Delta+n/Delta^2`. Consequently

$$
 g_{n-1}(\Delta)=\frac2{\sqrt{\pi n}}
 \left[1-\frac n{2\Delta}+O(n^{-1})\right].
\tag{6.2}
$$

Initially just retaining the leading term gives `F_n(c n^(3/2))->2c/sqrt(pi)` uniformly on compact `c` intervals. Monotonicity traps the unique root between any two constants straddling `sqrt(pi)/2`; thus `Delta_n/n^(3/2)->sqrt(pi)/2`, and (6.2) applies uniformly at the root.

The exact division identity

$$
 \frac{(2\Delta+1)(\Delta+2n-1)}{2\Delta+2n-1}
 =\Delta+n-\frac{(n-1)(2n-1)}{2\Delta+2n-1}
$$

has last term `O(sqrt(n))` in this range. Combining with (6.2),

$$
 F_n(\Delta)=\frac2{\sqrt\pi\,n^{3/2}}
 [\Delta+n/2+O(\sqrt n)].
$$

Setting `F_n(Delta_n)=1` proves the first statement in (6.1). The same product estimate with index `n` gives `g_n(Delta_n)~2/sqrt(pi n)`; substitution into (5.4) proves the second. ∎

Multiplying the explicit edge by the physical contact scale gives

$$
 c_0(\Delta_n)b_n\sim\frac1{8\pi^2n^2}.
$$

This is a statement about the explicit nonzero resonance entry. The full resonance cluster may have a larger largest splitting coefficient.

The first masses, computed from the unique monotone scalar equation, are

| n | Delta_n |
|---:|---:|
| 2 | 1.302775637732 |
| 3 | 3.102940861549 |
| 4 | 5.279487217992 |
| 5 | 7.778240120788 |
| 6 | 10.564735649768 |
| 7 | 13.614118981497 |
| 8 | 16.907254691273 |

Exact polynomial isolating intervals for `n=2,...,8` are stored separately. These decimals illustrate the proved theorem; they do not establish uniqueness or the asymptotic.

## 7. A further generic consequence and a practical research direction

Equation (4.1) also makes generic linearizability of the contact leading derivation particularly transparent. At the algebraic limit `Delta=1`,

$$
 g_{pq}(1)-1=-\frac{p+q-1}{p+q+1}.
$$

For any genuine decomposition of a generator into two or more generators of total degrees at least two, the associated homological divisor is nonzero there. For two degrees `a,b>=2`,

$$
 \frac{a-1}{a+1}+\frac{b-1}{b+1}-\frac{a+b-1}{a+b+1}>0;
$$

its minimum is at `a=b=2` and equals `1/15`, since its derivative in either positive real variable is positive. Iteration gives the multi-generator case. Thus no such rational divisor vanishes identically in `Delta`. In each fixed bidegree there are only finitely many exceptional masses, and away from them triangular homological elimination constructs polynomial eigen-generators. This is the contact analogue of the generic leading linearization discussed for gravity; it concerns the leading derivation, not simultaneous diagonalization of the full interacting pencil.

The new explicit mass sequence shows that exceptional masses cannot be dismissed as a single accident in `(2,2)`. A useful next task is to classify the finite resonance graphs at `Delta_n`: determine whether the cluster is always exactly two-dimensional, or find extra monomials with the same leading slope. When it is exactly two-dimensional, equations (5.3)–(5.4) give the exact leading split coefficient. The graph representation reduces that question to finite rational slope equations and contact integrals, without requiring the full finite-`N` spectrum.

This final question has additional exact finite evidence. Independently enumerate all stable centered monomials, form (4.2), and reduce their rational slope functions in the number field of the unique critical root. For every `n=2,...,8`, exactly the two stated monomials have slope `sigma_n`. The stable primary dimensions checked are respectively `3,8,26,70,204,537,1430`. Thus `b=b_n` is exactly certified in those seven blocks, while the all-`n` theorem only uses the proved lower bound. The cubic for the new `n=3` example is

$$
 \Delta_3^3+2\Delta_3^2-11\Delta_3-15=0,
 \qquad \Delta_3\in(3.102940861548,3.102940861550),
$$

and its actual normalized split coefficient is `b_3=0.2621875053518305...`. The all-degree claim that the resonant cluster always has dimension two remains a conjecture.

## 8. Reproducibility and status

Files in this contribution:

- `independent_contact.py`: independent finite Jacobi/Beta vertices, occupation action, lowering kernels, physical parity, symbolic `(2,2)` and exact `(3,3)` reconstruction.
- `independent_results.json`: those reconstructed matrices, septic, parity dimensions, factorization data, and exact real-root isolating intervals.
- `galois_certificate.py` and `galois_certificate.json`: explicit modular exponent/GCD irreducibility certificate and the mod-19 transposition.
- `verify_new_theorems.py` and `new_theorem_verification.json`: low-degree symbolic integral comparisons, all-index rational checks used in the triple-integral and monotonicity proofs, exact Newton coefficients, and high-precision illustrative critical masses.
- `resonance_explore.py` and `resonance_results.json`: exact root intervals and positive vertices through `n=8`; exploratory input to, rather than proof of, the all-index theorem.
- `resonant_cluster_counts.py` and `resonant_cluster_counts.json`: exact leading-slope number-field comparison for all centered monomials through `(8,8)`.

Only SymPy and mpmath are required. From the parent directory, run the scripts in the order `independent_contact.py`, `galois_certificate.py`, `verify_new_theorems.py`; the exploratory script is optional. No source-repository code is loaded. The selected repository results survive these independent checks; I found no error in the particular stable/contact claims audited here. The mathematically new content is Theorems 2–4 and the explicit resonance-graph interpretation, with complete proofs above.

---

# Appendix E. Gravitational audit and a sharp contact-deformation theorem

Investigation date: 21 October 2026. Repository snapshot:
`670abb1bb4b644a162278415ef94dde09cdeb016`.
Unless otherwise stated, paths below are relative to
`Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/`.
The original master package was also read, especially
`document_source/physics/physics.md`, §§2.1–2.2, 3.1–3.6, 4.2–4.5.

The calculations below import **no repository evaluator, coefficient cache, or
verification result**. The script `verify_gravity_and_contact.py` independently
checks the displayed identities with SymPy and mpmath. Its final JSON records
42 exact checks. This number describes algebraic checks, not 42 separate
theorems. The substantive proofs follow.

## 1. Assessment and scope

The complete resonant quartic Ward argument is valid as a formal tree-level
argument, on the stated Brown–Henneaux phase space with a regular perturbative
canonical chart and the action-derived charge identity. It does not assume the
desired scalar pair spectrum. In particular, it is stronger than setting
boundary-graviton coordinates to zero. The full-gravity and mixed contact
cancellations are consequences of the complete charge identity before taking
that compression.

I independently verified two sensitive dynamical calculations:

1. The gravitational ground-pair coefficient for every real `Delta > 1`, using
   the spatial constraint Hamiltonian and a new elementary total-derivative
   reduction of its nonpolynomial response.
2. The corrected **infinite** radial cubic sum in the lowest scalar–graviton
   mixed block, including an all-index derivation of its two Jacobi moments.
   The old value `24 sqrt(2)/175` really is only the `n=0` contribution.

I also prove a new sharp comparison theorem. Scalar contact interaction is
uniformly form-bounded by the Einstein positive residual, with the exact best
constant. This gives the sharp interval on which positivity and every
finite-particle residual kernel are both preserved, and quantitative comparison of every
ordered positive eigenvalue. The theorem is conditional on the stated Einstein
pair multiplier; it does not constitute another all-index gravitational
response calculation.

The full response bridge remains conditional on the common Hessian domain,
homogeneous data, lapse/shift reconstruction, boundary clock and vanishing
averaged endpoint. The master manuscript explicitly states these conditions
in physics §3.6, Proposition PHY-04. I have not proved their continuum existence
for every external history. Nor have I independently repeated the entire
one-body subtraction, quantum charge renormalization or all-index tensor
Casimir derivation.

## 2. Independent ground-pair evaluation

Write `d=Delta>1`, `mu=d(d-2)`, and `x=(1+r^2)^(-1/2)`. Strip the angular
factor `1/sqrt(2 pi)` from each external ground leg, so `R=x^d`. The canonical
constraint Hamiltonian is the one explicitly specified in
[Direct K4 two-particle energy shifts.md][R10], Conventions, lines 25–39:

$$
H_4^{\rm con}=\int_\Sigma\sqrt{\bar\sigma}\,y
\{t:t-u(\chi^2-\mu\phi^2)-4u^2\}.
$$

There is no connected boundary-exchange term for four circular external legs.
This is a statement about the four-leg coefficient, not about all contractions
of the boundary operator. The same note explains that distinction immediately
below its equation (2).

The two polarized scalar sources are

$$
\rho_{+-}=d(d-1)x^{2d},\qquad
\rho_{++}=d(d-1)x^{2d}-d^2x^{2d+2}.
$$

The scalar constraint operator in this coordinate is

$$
L=-x^2(1-x^2)\partial_x^2+2x^3\partial_x+2.
$$

The regular, fast solutions of `L u=rho/2` are

$$
u_{++}=u_{--}=-\frac{d}{4(2d+1)}x^{2d},\qquad
u_{+-}=U(x)=\frac{d}{4x}\int_0^x
\frac{t^2-t^{2d}}{1-t^2}\,dt.
$$

The source and constraint equations, not a target energy, determine these
functions. Their substitution into the differential equations is included in
the exact checks. The mixed response satisfies the useful first-order identity

$$
U'+\frac{U}{x}=\frac{d(x^2-x^{2d})}{4x(1-x^2)}.
\tag{G1}
$$

Let `B_s` denote either same-sign complementary pairing and `B_m` a mixed-sign
pairing. In the mixed pairing the momentum source is zero, so

$$
B_m=\int_0^1
\{-d^2x^{2d-1}U+\mu x^{2d-3}U-4U^2/x^3\}\,dx.
$$

Here is a direct reduction avoiding special functions and analytic continuation.
Set

$$
f(x)=\frac{1-x^4}{x^2},\qquad
g(x)=\frac d2(1-x^2)(1+x^{2d-2}).
$$

Using (G1), the integrand obeys the identity

$$
-d^2x^{2d-1}U+\mu x^{2d-3}U-4U^2/x^3
=\frac{d}{dx}(fU^2+gU)-\frac{d^2}{8}(x-x^{4d-3}).
\tag{G2}
$$

For every `d>1`, `U=O(x^2)` at zero and `U` is finite at one. Thus both endpoint
values of `fU^2+gU` vanish. Consequently

$$
B_m=-\frac{d^2(d-1)}{8(2d-1)}.
\tag{G3}
$$

For the same-sign momentum let

$$
F_a(x)=\frac{1-x^a}{a}-\frac{1-x^{a+2}}{a+2},\qquad a=2d-1>1.
$$

The two momentum responses are opposite imaginary functions,
`A_{++}=i d^2 x^2 F_a/[2(1-x^2)]`, `A_{--}=-A_{++}`. Integration by parts gives

$$
\int_0^1\frac{xF_a^2}{(1-x^2)^2}\,dx
=-\frac{F_a(0)^2}{2}+\int_0^1x^{a-1}F_a\,dx
=\frac1{2(a+1)(a+2)^2}.
$$

All remaining terms are ordinary power moments. Their sum is

$$
B_s=-\frac{d^2(2d-3)}{16(2d-1)(2d+1)}.
\tag{G4}
$$

There are two same-sign and four mixed-sign slot partitions. Restoring the
four angular normalizations gives `2 pi/(2 pi)^2`; the normalized two-boson
expectation of `b^dagger^2 b^2` is 2; and `kappa^2=16 pi G`. Their product is
`16 G`, fixing the coefficient without reference to a target energy. Hence

$$
g_{00}=16(2B_s+4B_m)
=\boxed{-4d^2+\frac{2d^2(2d+5)}{(2d-1)(2d+1)}}.
\tag{G5}
$$

This independently agrees with master physics (4.24) and the original
[two particle spectrum.md][R9], lines 93–107. At `d=3/2` it is `-9/2`; no singular
moment or finite-part prescription entered this calculation.

The logical scope is precise: the supplied canonical constraint Hamiltonian
and its normalizations are the physical inputs. I independently solved and
evaluated this channel; I did not rederive the complete nonlinear Darboux chart
from the Einstein–Hilbert action.

## 3. Independent all-index proof of the corrected mixed cubic sum

### 3.1 Source of the error

The older `independent audit and phi4 comparison/gravitational interface
audit.md`, §4, lines 167–175 treats only two paths with intermediate energy 8.
The value `24 sqrt(2)/175` in line 173 is not the complete cubic matrix element.
The newer [full block closure audit.md][R7], §7, lines 311–355 correctly states the
repair. This investigation verifies that repair rather than counting it as a
newly discovered error.

At `Delta=2`, the intermediate scalar modes have angular momentum `+2` or `-2`
and arbitrary radial label `n>=0`. Put

$$
R_0=x^2,\quad R_n=a_nx^2(1-x^2)P_n^{(1,2)}(1-2x^2),\quad
a_n=\sqrt{\frac{n+3}{n+1}},\quad \omega_n=2n+4,
$$
$$
p(x)=\frac{(1-x)(1+2x)}{x(1+x)},\qquad
\mathcal N=\frac1{\sqrt{48\pi}}.
$$

The two original density vertices are

$$
A_n=\mathcal N\int_0^1p[2\omega_nR_nR_0+(1-x^2)R'_nR'_0]dx,
$$
$$
B_n=\mathcal N\int_0^1p[-2\omega_nR_nR_0+(1-x^2)R'_nR'_0]dx.
\tag{G6}
$$

The exact intermediate energy is `8+2n`, so the OFPT denominator is `-(4+2n)`.
With both chiral paths the unnormalized quartic coefficient is

$$
C_{\rm cc}=2\sum_{n\ge0}(2n+4)A_nB_n.
\tag{G7}
$$

### 3.2 Moment proof valid for every n

The following derivation does not use the old source evaluator or fit a finite
list. Let `J_n(t)=P_n^(1,2)(1-2t)`, `p_n=J_n(1)`, and

$$
I_n(a)=\int_0^1t^{a-1}J_n(t)dt.
$$

The Jacobi equation is

$$
t(1-t)J_n''+(2-5t)J_n'+n(n+4)J_n=0.
$$

Two integrations by parts give, for `a>1`,

$$
(n+a)(n+4-a)I_n(a)+(a-2)(a-1)I_n(a-1)=2p_n.
\tag{G8}
$$

The required extra relation follows from Rodrigues' formula:

$$
\int_0^1t^{a-1}(1-t)^2J_n(t)dt
=\frac{(2-a)_n}{n!}B(a,n+3).
\tag{G9}
$$

All boundary terms in the `n` integrations vanish for `a>0`. At `a=3/2`,

$$
I_n(3/2)-2I_n(5/2)+I_n(7/2)
=\frac{8(n+1)(n+2)}{(2n+1)(2n+3)(2n+5)(2n+7)}.
\tag{G10}
$$

Equations (G8) at `a=2,3,5/2,7/2`, together with (G10), determine all moments
needed in (G6). To see this directly, set
`j_s=I_n((s+1)/2)/2`. An integration by parts in (G6), using

$$
\frac{d}{dx}\{2x(1-x^2)p\}=-12x(1-x),
$$

gives

$$
\frac{A_n}{4\mathcal N a_n}
=(n+5)(j_3-2j_4+j_5)+(2n+7)(j_4-2j_5+j_6),
$$
$$
\frac{B_n}{4\mathcal N a_n}
=(1-n)(j_3-2j_4+j_5)-(2n+1)(j_4-2j_5+j_6).
$$

Substitute (G8)–(G10). The endpoint value `p_n` cancels, and the results are

$$
\frac{A_n}{4\mathcal N a_n}
=\frac9{2(n+2)(2n+1)(2n+3)(2n+5)},
$$
$$
\frac{B_n}{4\mathcal N a_n}
=\frac{9(n+1)}{2(n+2)(n+3)(2n+3)(2n+5)(2n+7)}.
\tag{G11}
$$

The symbolic verification treats `n` and `p_n` as free variables, verifies the
elimination exactly, and separately evaluates the original derivative-containing
integrals for `n=0,...,8`. Thus (G11) has an all-index analytic proof; the finite
integrals check the translation to the physical vertex.

### 3.3 Exact summation and tail control

Substitution yields

$$
\pi C_{\rm cc}=\sum_{n=0}^\infty f(n),\qquad
f(n)=\frac{27}{(n+2)(2n+1)(2n+3)^2(2n+5)^2(2n+7)}.
$$

Every term is positive. Its partial fraction decomposition is

$$
\begin{aligned}
f(n)={}&\frac3{64}\left(\frac1{2n+1}+\frac{63}{2n+3}
+\frac{63}{2n+5}+\frac1{2n+7}\right)-\frac3{n+2}\\
&+\frac{27}{16}\left(\frac1{(2n+5)^2}-\frac1{(2n+3)^2}\right).
\end{aligned}
\tag{G12}
$$

The squared-denominator terms telescope. The remaining odd/even harmonic sums
give

$$
\boxed{\pi C_{\rm cc}=6\log2-\frac{83}{20}}.
\tag{G13}
$$

This is an exact summation proof, not extrapolation of partial sums. For `M>=1`,
`f(n)<27/(64n^7)` for `n>=1`, so

$$
0<\sum_{n>M}f(n)<\frac9{128M^6}.
\tag{G14}
$$

The first term is `3/350`; it omits a strictly positive tail approximately
`0.000311654789`. The normalized matrix element divided by `G` is

$$
16\sqrt2(6\log2-83/20),
$$

whereas the old number is `16 sqrt(2)*(3/350)`.

### 3.4 Direct contact cancellation

I independently integrated the three explicit radial densities in the newer
audit, equations (7), (10), (12), and verified the scalar/momentum response
equations used in them. Their values, with a common factor `1/pi`, are

$$
3067/180-(74/3)\log2,\qquad
(56/3)\log2-116/9,\qquad6\log2-83/20.
$$

Their sum is zero. More strongly, their summed density is the derivative of

$$
-\frac{(y-1)(78y^5+203y^4+170y^3+47y^2-84y-18)}
{180y^5(y+1)^3},
$$

which vanishes at both endpoints. The nonzero embedding–momentum term is
essential. Setting its vacuum contraction to zero does not set this
uncontracted matrix element to zero.

This confirms the corrected lowest mixed channel, conditional on the supplied
nonlinear chart/contact formula. The all-index radial sum above is independent
of the local double-bracket evaluation used to obtain the third density.

## 4. Why the formal closure proof is not circular

The original master physics §3.3 and the newer [full block closure audit.md][R7],
§§2–4 supply the relevant hypotheses directly. In a regular oscillator expansion,
write a non-global charge as

$$
Q_s=\kappa^{-1}q_s+Q_{0,s}+\kappa Q_{1,s}+\cdots,
\quad q_s=c_s a_s\ \hbox{or}\ c_s a_s^\dagger,
\quad [H_0,q_s]=s q_s.
$$

The exact classical boundary-charge identity is `[H,Q_s]=s Q_s`. If `R_s` is
free-weight `s` projection, then Jacobi gives

$$
R_s[A,q_s]=[R_0A,q_s].
$$

At cubic order the projected identity therefore implies that the resonant
cubic commutes with every graviton coordinate and momentum. It is scalar-only;
scalar parity then makes it zero. Complete cubic elimination is thus derived,
not assumed in order to prove its own validity.

After eliminating the cubic and transporting the charges, the next projected
identity gives `[R_0 W^{[4]},a_s]=[R_0 W^{[4]},a_s^dagger]=0`. The **complete**
quartic is consequently scalar-only. A commutator with a linear oscillator has
no higher Moyal correction, so this also fixes the quantum four-leg coefficient
in the specified Weyl prescription. Contractions can still produce lower-degree
quantum terms.

The scalar `b^dagger^3 b` component separately intertwines the global free
representation. It annihilates its lowest one-particle state because the
three-particle energy is at least `3 Delta > Delta`; commutation with the two
raising operators then kills its entire one-particle domain. Because it has
exactly one annihilation slot, this makes every coefficient zero, including
when integer `Delta` permits energy resonance. This is a genuine algebraic
proof; agreement of finite scripts is not its premise.

The remaining bilinears cannot connect a scalar state with the gravitational
vacuum to a graviton-occupied state: scalar parity excludes mixed `a b` terms,
positive frequencies exclude two creations, and graviton number bilinears
annihilate that vacuum. Thus closure is weaker than the **full quantum**
commutant, and does not require the latter. None of this fixes the scalar
one-body counterterms or proves next-order charge identities.

## 5. New theorem: sharp uniform domination of contact by the Einstein residual

### 5.1 Definitions and assumptions

Assume the dimensionless Einstein pair multiplier `g_{n,s}` of master physics
(4.21), equivalently the three-case formula in [two particle spectrum.md][R9],
lines 347–351. This assumption includes the physical source/canonical matching
prescription if the result is interpreted as a gravitational spectrum.

For a fixed finite Bose-primary block of bidegree `(P,Q)`, orient the two
chiralities so that `P>=Q` (or replace `Q` below by `min(P,Q)`). Let

$$
A_E=W_E-b_N(Q)I,\qquad
b_N(Q)=-2N(N-1)d^2-8Q(Nd+Q-1),
$$
$$
B=\sum_{i<j}\sum_{n\ge0}
\frac{\Pi_{ij}^{(n,n)}}{2d+2n-1}=8\pi\mathcal K_{\phi^4}.
\tag{G15}
$$

The baseline follows from the exact pair-Casimir sum identity, not from a
numerical compression. Define

$$
r_* =\frac{2d^2(2d+5)}{2d+1}.
\tag{G16}
$$

**Theorem.** For every `d>1`, every finite `N>=2` and every allowed primary
degree block, in the physical inner product,

$$
\boxed{0\le B\le r_*^{-1}A_E.}
\tag{G17}
$$

The constant is sharp, uniformly in all labels. Equality is attained on the
`N`-particle ground primary.

### 5.2 Proof

Only the diagonal relative channels are affected by `B`. Put

$$
h_n=d+n,\quad C_n=h_n(h_n-1),\quad\mu=d(d-2),
$$
$$
e_n=g_{n,0}-(4\mu-8C_n).
$$

Then

$$
(2h_n-1)e_n=R(C_n),\qquad
R(C)=8C-4\mu-\frac{2(C+\mu)^2}{4C-3}.
\tag{G18}
$$

At `n=0`, algebraic cancellation gives `R(C_0)=r_*`, including at `d=3/2`.
Polynomial division gives the particularly simple identity

$$
R(C)=\frac{15}2 C-5\mu-\frac38
-\frac{(4\mu+3)^2}{8(4C-3)},\qquad
R'(C)=\frac{15}2+\frac{(4\mu+3)^2}{2(4C-3)^2}>0.
\tag{G19}
$$

For `n>=1`, `C_n>=d(d+1)>2`, so these points lie on a single increasing branch.
The possible pole between `C_0` and `C_1` when `1<d<3/2` cannot be ignored;
the separate exact calculation is

$$
R(C_1)-r_*
=\frac{16d(d+1)(4d+3)}{(2d+1)(2d+3)}>0.
\tag{G20}
$$

It follows that `R(C_n)>=r_*` for every `n`, with equality only at `n=0`.
Thus each diagonal channel satisfies

$$
\frac1{2h_n-1}\le\frac{e_n}{r_*}.
$$

Every off-diagonal Einstein residual channel is nonnegative. This follows
directly from the pair formula: if `k>=l+4` it vanishes; if `k=l+2` it is the
positive spin-two fraction; if `k<l` add `8(C_l-C_k)>0` to the corresponding
smaller-label residual. Hence the operator inequality holds for each pair.
Summing positive quadratic forms proves (G17), without assuming that different
pair projectors commute.

For the constant `N`-particle primary polynomial, every pair has `k=l=0`.
Therefore

$$
B=\binom N2\frac1{2d-1},\qquad
A_E=\binom N2\frac{r_*}{2d-1}
$$

on that vector, proving sharpness.

### 5.3 Exact deformation interval and spectral bounds

Add `-G lambda phi^4/4!` to the action, in the same physical-gap prescription.
Writing `alpha=lambda/(8 pi)`, the new residual is `A_alpha=A_E+alpha B`.
For every

$$
\boxed{\alpha>-r_*=-\frac{2d^2(2d+5)}{2d+1}},
\tag{G21}
$$

the form inequalities are

$$
\boxed{
\min\{1,1+\alpha/r_*\}A_E
\le A_\alpha
\le\max\{1,1+\alpha/r_*\}A_E.}
\tag{G22}
$$

Consequences:

- Every finite-block kernel is exactly the same as the Einstein residual kernel.
- Every ordered positive eigenvalue satisfies the corresponding multiplicative
  bounds by min–max, with constants independent of `N,P,Q`.
- Any previously established asymptotic order of a positive residual eigenvalue
  survives this contact deformation, as long as `d,alpha` stay fixed in this
  strict interval. Fine splittings and degeneracies need not be preserved.
- At `alpha=-r_*`, positivity still holds but the `N`-ground primary and its
  global descendant module enter the kernel. This already proves kernel
  enlargement; it does not classify all extra critical zero modes. Here the
  extension of the residual to descendants uses the representation-theoretic
  baseline: `Q` remains the primary right label, equivalently the baseline is
  a function of the total right Casimir. It is not recomputed from a
  descendant's right oscillator degree.
- For `alpha<-r_*`, residual positivity fails already at the two-particle ground
  primary. Thus (G21) is the exact range on which positivity **and** the original
  kernel hold uniformly in all blocks. Kernel behavior in the indefinite regime
  is not classified by this argument.

For the repository's illustrative deformation `d=2, alpha=-40/3`, `r_*=72/5`
and (G22) reads

$$
\boxed{\frac2{27}A_E\le A_{-40/3}\le A_E.}
$$

This strengthens the isolated positivity example in `gravitational interface
audit.md`, §6.2, to a uniform comparison of the entire finite-particle residual
spectrum. It also explains precisely what can change: the low-layer algebra
and exceptional splittings can change even while kernels and coarse positive
eigenvalue scales remain controlled.

These are coefficient-operator statements. A negative quartic coupling is not
by itself a claim of a nonperturbatively stable field theory, and (G22) does
not establish a uniform finite-coupling quantum remainder.

## 6. Additional precise defects and qualifications in the older notes

### Negative angular momentum in the displayed free mode

[Untitled.md][R8], lines 28–30 sums over all integer `j` but uses signed `j` in every
radial factor of `u_nj`. This is wrong literally. A counterexample avoiding a
singular Pochhammer is `n=1,j=-1`. Since

$$
P_1^{(d-1,-1)}\left(\frac{r^2-1}{r^2+1}\right)
=\frac{d r^2}{1+r^2},
$$

that formula gives

$$
u=\sqrt{\frac d{2\pi}}r(1+r^2)^{-(d+1)/2}
e^{-i(d+3)t-i\theta}.
$$

Direct substitution into the KG equation yields

$$
\frac{(\Box-\mu)u}{u}=\frac{4(d+2)}{1+r^2}\ne0.
$$

Replace radial `j` by `|j|`, keeping signed `j` in the angular phase. The original
master physics §2.2, (2.5) already uses `a=|j|` correctly and explicitly says so.
Thus this is a defect of the older displayed formula, not a counterexample to
the correctly normalized master construction.

### Mixed normalization of gamma in the original two-particle note

[two particle spectrum.md][R9], lines 106–107 defines `gamma_00` as the full
order-`kappa^2` shift. Its lines 119–122 then put an additional `kappa^2/2`
in front of the matrix whose entries are these `gamma` values. Literal use
would predict an order-`kappa^4` descendant shift. The consistent matrix is
`(1/2)[[gamma00+gamma10,gamma00-gamma10], ...]`, or alternatively every `gamma`
inside the printed matrix must be redefined as a coefficient of `kappa^2`.
Lines 128–129 also switch between an actual Hamiltonian matrix element and its
coefficient. The newer master keeps dimensionless `g` and `G g` distinct.

### Remainder strength

[Direct K4 two-particle energy shifts.md][R10], line 52 and the older two-particle
note's final energies write `O(G^2)`. The later master consistently writes
`o(G)` at fixed labels; see physics (4.23), and the explicit qualification in
physics §2.1. The newer [full block closure audit.md][R7], §13, correctly retains
additional quantum Ward hypotheses for ruling out `kappa^3` splitting. The
stronger remainder has not been established by the first-order calculations
alone. This is an unsupported strength in those older formulas, not a proved
nonzero `G^(3/2)` correction in the actual theory.

## 7. Useful next questions

1. **Critical contact-deformation kernel.** At `alpha=-r_*`, the ground pair
   channel joins the old zero residual channels. In a chiral block, only pair
   degree two remains penalized at the low end. The resulting constraints are
   a concrete hollow-core projector problem; determine the new Hilbert series
   and whether the critical kernel is generated by a finite module over the
   symmetric translation-invariant ring.
2. **Quantitative interpolation from contact to gravity.** The sharp relative
   form bound controls all residual eigenvalues uniformly. Combine it with
   exact contact rank formulas and with the gravitational collision-ideal
   classification to isolate which changes arise from channel support and
   which from coefficient growth. An analogous inequality for finite-band
   derivative contact interactions may distinguish several universality classes.
3. **A direct all-index canonical Einstein formula.** The circular finite-sum
   construction is genuinely independent of the response bridge. Prove its
   reconstruction equals (4.21) by an exact recurrence of the finite sums, rather
   than another finite coefficient comparison. This would remove the common
   response-domain conditions from this particular route to the coefficient.
4. **Next-order scalar-branch remainder.** Establish the projected degree-three
   quantum Ward defect and the common commutant after regulator removal, not
   just the classical quartic identity. That is the concrete missing input for
   upgrading a fixed first-order coefficient statement to the proposed
   `O(G^2)` remainder in the fully degenerate quantum block.

---

# Source register and provenance

All repository links below refer to the fixed commit `670abb1bb4b644a162278415ef94dde09cdeb016`. Paths are relative to `Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/`. Line numbers refer to that snapshot, not a later working tree.

| Ref. | Repository file | Relevant location |
|---|---|---|
| [R1] | [independent audit and phi4 comparison/phi4 spectrum.md](https://github.com/GaoZ1en/obsidian_note/blob/670abb1bb4b644a162278415ef94dde09cdeb016/Articles/Quantization%20in%20AdS/linearized%20gravity/Einstein%20scalar%20spectrum/independent%20audit%20and%20phi4%20comparison/phi4%20spectrum.md) | §§1–6: model, normalization, number selection, pair multiplier and Fock lift |
| [R2] | [independent audit and phi4 comparison/structural comparison.md](https://github.com/GaoZ1en/obsidian_note/blob/670abb1bb4b644a162278415ef94dde09cdeb016/Articles/Quantization%20in%20AdS/linearized%20gravity/Einstein%20scalar%20spectrum/independent%20audit%20and%20phi4%20comparison/structural%20comparison.md) | §5.2, lines 270–342: balanced rank; §§2, 4–7: kernels and limitations |
| [R3] | [independent audit and phi4 comparison/phi4 further structures.md](https://github.com/GaoZ1en/obsidian_note/blob/670abb1bb4b644a162278415ef94dde09cdeb016/Articles/Quantization%20in%20AdS/linearized%20gravity/Einstein%20scalar%20spectrum/independent%20audit%20and%20phi4%20comparison/phi4%20further%20structures.md) | §§2–3, lines 83–214: adjacent rank and open remaining conjecture; §5: fixed-index spectral limit |
| [R4] | [independent audit and phi4 comparison/phi4 stable spectra and resonances.md](https://github.com/GaoZ1en/obsidian_note/blob/670abb1bb4b644a162278415ef94dde09cdeb016/Articles/Quantization%20in%20AdS/linearized%20gravity/Einstein%20scalar%20spectrum/independent%20audit%20and%20phi4%20comparison/phi4%20stable%20spectra%20and%20resonances.md) | §3, lines 124–185: full (2,2) pencil and splitting; §5, lines 208–231: physical S7 polynomial |
| [R5] | [independent audit and phi4 comparison/exact stable full proof audit.md](https://github.com/GaoZ1en/obsidian_note/blob/670abb1bb4b644a162278415ef94dde09cdeb016/Articles/Quantization%20in%20AdS/linearized%20gravity/Einstein%20scalar%20spectrum/independent%20audit%20and%20phi4%20comparison/exact%20stable%20full%20proof%20audit.md) | §1.2, lines 53–73: regular signed large-N frame; §§6–7: contact contrasts and scope |
| [R6] | [independent audit and phi4 comparison/gravitational interface audit.md](https://github.com/GaoZ1en/obsidian_note/blob/670abb1bb4b644a162278415ef94dde09cdeb016/Articles/Quantization%20in%20AdS/linearized%20gravity/Einstein%20scalar%20spectrum/independent%20audit%20and%20phi4%20comparison/gravitational%20interface%20audit.md) | §4, lines 167–175: incomplete cubic sum; §6.2: illustrative contact deformation |
| [R7] | [independent audit and phi4 comparison/full block closure audit.md](https://github.com/GaoZ1en/obsidian_note/blob/670abb1bb4b644a162278415ef94dde09cdeb016/Articles/Quantization%20in%20AdS/linearized%20gravity/Einstein%20scalar%20spectrum/independent%20audit%20and%20phi4%20comparison/full%20block%20closure%20audit.md) | §§2–4: formal Ward closure; §7, lines 311–355: corrected all-radial sum; §13: higher-order qualifications |
| [R8] | [Untitled.md](https://github.com/GaoZ1en/obsidian_note/blob/670abb1bb4b644a162278415ef94dde09cdeb016/Articles/Quantization%20in%20AdS/linearized%20gravity/Einstein%20scalar%20spectrum/Untitled.md) | lines 28–30: negative-angular-label defect in the displayed free mode |
| [R9] | [two particle spectrum.md](https://github.com/GaoZ1en/obsidian_note/blob/670abb1bb4b644a162278415ef94dde09cdeb016/Articles/Quantization%20in%20AdS/linearized%20gravity/Einstein%20scalar%20spectrum/two%20particle%20spectrum.md) | lines 93–129: ground normalization and descendant matrix; lines 347–351: three-case Einstein pair multiplier |
| [R10] | [Direct K4 two-particle energy shifts.md](https://github.com/GaoZ1en/obsidian_note/blob/670abb1bb4b644a162278415ef94dde09cdeb016/Articles/Quantization%20in%20AdS/linearized%20gravity/Einstein%20scalar%20spectrum/Direct%20K4%20two-particle%20energy%20shifts.md) | lines 25–39: canonical constraint Hamiltonian; line 52: older O(G^2) notation |
| [R11] | [Einstein scalar response prescription.md](https://github.com/GaoZ1en/obsidian_note/blob/670abb1bb4b644a162278415ef94dde09cdeb016/Articles/Quantization%20in%20AdS/linearized%20gravity/Einstein%20scalar%20spectrum/Einstein%20scalar%20response%20prescription.md) | finite-source response map and explicit distinction from arbitrary-history continuum convergence |
| [R12] | [independent audit and phi4 comparison/phi4 arbitrary N spectrum.md](https://github.com/GaoZ1en/obsidian_note/blob/670abb1bb4b644a162278415ef94dde09cdeb016/Articles/Quantization%20in%20AdS/linearized%20gravity/Einstein%20scalar%20spectrum/independent%20audit%20and%20phi4%20comparison/phi4%20arbitrary%20N%20spectrum.md) | §2.2: normalized modes and exact finite construction |
| [R13] | [independent audit and phi4 comparison/manuscript audit.md](https://github.com/GaoZ1en/obsidian_note/blob/670abb1bb4b644a162278415ef94dde09cdeb016/Articles/Quantization%20in%20AdS/linearized%20gravity/Einstein%20scalar%20spectrum/independent%20audit%20and%20phi4%20comparison/manuscript%20audit.md) | source-level assessment and dependency distinctions |
| [R14] | [independent audit and phi4 comparison/one-body subtraction audit.md](https://github.com/GaoZ1en/obsidian_note/blob/670abb1bb4b644a162278415ef94dde09cdeb016/Articles/Quantization%20in%20AdS/linearized%20gravity/Einstein%20scalar%20spectrum/independent%20audit%20and%20phi4%20comparison/one-body%20subtraction%20audit.md) | one-body quantum inputs: reviewed for scope, not independently rederived here |

## Original manuscript

**M1.** *Global AdS₃ Einstein–Scalar: Complete Finite First-Order Spectra and Their Structures*, 19 October 2026, 190-page original master PDF and accompanying source package. The PDF filename is ADS3_Einstein_Scalar_Master_Note.pdf; package filename ADS3_Master_Research_Package.zip. Relevant original source locations are:

- document_source/frontmatter.md, §§1.1–1.2: first-order scope and the three physical interfaces.
- document_source/physics/physics.md, §2.2, equations (2.5)–(2.7), PDF p. 11: correct $\lvert j\rvert$ free modes.
- The same file, §§3.3–3.6: quartic Ward closure and conditional response comparison.
- The same file, §4.4, equations (4.21)–(4.24), PDF p. 24: Einstein pair multiplier and fixed-label $o(G)$.
- document_source/semiclassical/appendix_st.md: stable-primary analytic frame and expansion mechanism.
- document_source/physics/physics_appendices.md: physical interfaces and one-body subtraction, used to identify dependencies rather than claimed wholly rederived.

The original package is a separate archived research artifact referenced by the newer repository notes. It is not treated as if every file in that artifact were committed under the current repository tree. Its exact hashes and the hashes of the examined source files are in SOURCE_MANIFEST.json.

## Standard mathematical context

**L1.** T. Kobayashi and M. Pevzner, [Rankin–Cohen brackets in Representation Theory](https://arxiv.org/abs/2601.15750), version 2. Used only for attribution of the standard differential-intertwiner construction. Appendix A proves the required formulas and normalization directly.

**L2.** V. Reiner and A. Shepler, [Invariant derivations and differential forms for reflection groups](https://arxiv.org/abs/1612.01031), version 3. General invariant-theory context for covariant freeness; the particular symmetric-group module needed here has an elementary self-contained proof in Appendix A.

Standard finite-dimensional Hermitian perturbation theory, finite-field irreducibility, the Frobenius cycle criterion, and min–max are invoked with their concrete hypotheses identified in the relevant proofs. No external paper is used as a substitute for a new all-index identity claimed in this report.

[R1]: https://github.com/GaoZ1en/obsidian_note/blob/670abb1bb4b644a162278415ef94dde09cdeb016/Articles/Quantization%20in%20AdS/linearized%20gravity/Einstein%20scalar%20spectrum/independent%20audit%20and%20phi4%20comparison/phi4%20spectrum.md

[R2]: https://github.com/GaoZ1en/obsidian_note/blob/670abb1bb4b644a162278415ef94dde09cdeb016/Articles/Quantization%20in%20AdS/linearized%20gravity/Einstein%20scalar%20spectrum/independent%20audit%20and%20phi4%20comparison/structural%20comparison.md

[R3]: https://github.com/GaoZ1en/obsidian_note/blob/670abb1bb4b644a162278415ef94dde09cdeb016/Articles/Quantization%20in%20AdS/linearized%20gravity/Einstein%20scalar%20spectrum/independent%20audit%20and%20phi4%20comparison/phi4%20further%20structures.md

[R4]: https://github.com/GaoZ1en/obsidian_note/blob/670abb1bb4b644a162278415ef94dde09cdeb016/Articles/Quantization%20in%20AdS/linearized%20gravity/Einstein%20scalar%20spectrum/independent%20audit%20and%20phi4%20comparison/phi4%20stable%20spectra%20and%20resonances.md

[R5]: https://github.com/GaoZ1en/obsidian_note/blob/670abb1bb4b644a162278415ef94dde09cdeb016/Articles/Quantization%20in%20AdS/linearized%20gravity/Einstein%20scalar%20spectrum/independent%20audit%20and%20phi4%20comparison/exact%20stable%20full%20proof%20audit.md

[R6]: https://github.com/GaoZ1en/obsidian_note/blob/670abb1bb4b644a162278415ef94dde09cdeb016/Articles/Quantization%20in%20AdS/linearized%20gravity/Einstein%20scalar%20spectrum/independent%20audit%20and%20phi4%20comparison/gravitational%20interface%20audit.md

[R7]: https://github.com/GaoZ1en/obsidian_note/blob/670abb1bb4b644a162278415ef94dde09cdeb016/Articles/Quantization%20in%20AdS/linearized%20gravity/Einstein%20scalar%20spectrum/independent%20audit%20and%20phi4%20comparison/full%20block%20closure%20audit.md

[R8]: https://github.com/GaoZ1en/obsidian_note/blob/670abb1bb4b644a162278415ef94dde09cdeb016/Articles/Quantization%20in%20AdS/linearized%20gravity/Einstein%20scalar%20spectrum/Untitled.md

[R9]: https://github.com/GaoZ1en/obsidian_note/blob/670abb1bb4b644a162278415ef94dde09cdeb016/Articles/Quantization%20in%20AdS/linearized%20gravity/Einstein%20scalar%20spectrum/two%20particle%20spectrum.md

[R10]: https://github.com/GaoZ1en/obsidian_note/blob/670abb1bb4b644a162278415ef94dde09cdeb016/Articles/Quantization%20in%20AdS/linearized%20gravity/Einstein%20scalar%20spectrum/Direct%20K4%20two-particle%20energy%20shifts.md

[R11]: https://github.com/GaoZ1en/obsidian_note/blob/670abb1bb4b644a162278415ef94dde09cdeb016/Articles/Quantization%20in%20AdS/linearized%20gravity/Einstein%20scalar%20spectrum/Einstein%20scalar%20response%20prescription.md

[R12]: https://github.com/GaoZ1en/obsidian_note/blob/670abb1bb4b644a162278415ef94dde09cdeb016/Articles/Quantization%20in%20AdS/linearized%20gravity/Einstein%20scalar%20spectrum/independent%20audit%20and%20phi4%20comparison/phi4%20arbitrary%20N%20spectrum.md

[R13]: https://github.com/GaoZ1en/obsidian_note/blob/670abb1bb4b644a162278415ef94dde09cdeb016/Articles/Quantization%20in%20AdS/linearized%20gravity/Einstein%20scalar%20spectrum/independent%20audit%20and%20phi4%20comparison/manuscript%20audit.md

[R14]: https://github.com/GaoZ1en/obsidian_note/blob/670abb1bb4b644a162278415ef94dde09cdeb016/Articles/Quantization%20in%20AdS/linearized%20gravity/Einstein%20scalar%20spectrum/independent%20audit%20and%20phi4%20comparison/one-body%20subtraction%20audit.md
