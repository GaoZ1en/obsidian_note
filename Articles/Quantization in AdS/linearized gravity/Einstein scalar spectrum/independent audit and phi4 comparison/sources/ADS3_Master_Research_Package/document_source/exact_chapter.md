# 6. Exact structures in the finite spectrum

The finite construction is already complete. We now ask why some large blocks contain remarkably simple eigenspaces, why certain isolated levels remain explicit, and which parts of the spectrum can be controlled without taking a determinant. The answers concern different spectral questions. A Casimir-bound state, a minimum in one fixed primary block, the upper edge of the entire coefficient tower, and the physical one-particle mass gap are distinct objects.

## 6.1 Positivity turns an eigenvalue problem into simultaneous pair constraints

Orient the external block so \(P\ge Q\), and retain \(A_N=W_N-b_N(Q)I\ge0\). For any physical vector,

\[
\langle\Psi,A_N\Psi\rangle
=\sum_{i<j}\sum_{\substack{k+\ell\ \mathrm{even}\\k\le\ell+2}}
a_{k\ell}\|\mathsf P^L_{ij,k}\mathsf P^R_{ij,\ell}\Psi\|^2.
\tag{6.1}
\]

Every displayed coefficient is strictly positive. Hence equality holds precisely when each bad-channel projection vanishes separately. This implication is valid even though projectors belonging to overlapping pairs generally do not commute. Individual labelled pair projectors need not preserve the whole Bose subspace; the norm identity is taken in the labelled physical tensor space and then restricted to Bose vectors.

Fix a pair and put \(\delta=z_i-z_j\), \(\sigma=(z_i+z_j)/2\). On that pair,

\[
C_{ij}^L=
\delta^2\partial_\delta^2+2\Delta\delta\partial_\delta
-\frac{\delta^2}{4}\partial_\sigma^2+\Delta(\Delta-1).
\tag{6.2}
\]

The ideal filtration \(\delta^r\mathbb C[z]\) is invariant. On its degree-\(r\) quotient, the Casimir acts by \(C_r\). At a fixed finite homogeneous degree, positivity of the physical metric and the distinct Casimir values imply

\[
\delta^r\mathbb C[z]_{P-r}
=\bigoplus_{k\ge r}\operatorname{im}\mathsf P^L_{ij,k}.
\tag{6.3}
\]

The same identity holds on the right. Therefore the joint-kernel problem is a system of collision-vanishing conditions together with a hierarchy of left/right flag compatibility conditions. Keeping only the first condition loses nonchiral information.

## 6.2 The complete logarithmic-symbol kernel

Define

\[
\mathcal V_N(z)=\prod_{i<j}(z_i-z_j),\qquad
J_N=2N(N-1),\qquad p=P-J_N.
\tag{6.4}
\]

The pair inequalities in (6.1) imply a fourth-order zero at every left collision. Since the distinct linear collision factors are nonassociate primes in a polynomial ring, their product divides the state:

\[
\Psi=\mathcal V_N^4F.
\tag{6.5}
\]

This uses unique factorization, not the false assertion that intersecting collision ideals are comaximal.

The right polynomial space carries the physical metric. In a real coefficient basis \(f_\alpha\) of homogeneous degree \(Q\), denote that metric by \(\Gamma_{\alpha\beta}\). Its real structure gives the **complex bilinear** pairing \(B(u,v)=u^T\Gamma v\). If \(F\) has coefficient matrix \(C\), its tensor–Hom representative is

\[
\mathcal A=C\Gamma.
\tag{6.6}
\]

This is not the antilinear Hilbert-space Riesz map. For a right projector \(\mathsf P\), physical self-adjointness gives \(\mathsf P^T\Gamma=\Gamma\mathsf P\), so the action \(C\mathsf P^T\) corresponds exactly to \(\mathcal A\mathsf P\). Combining this observation with (6.3), the remaining kernel condition is

\[
\mathcal A\!\left(\delta^r\mathbb C[V]_{Q-r}\right)
\subseteq\delta^r\mathbb C[V]_{p-r}
\quad\hbox{for every collision }\delta
\hbox{ and every }0\le r\le Q.
\tag{6.7}
\]

All ideal powers are required. Their meaning is that a right pair starting at relative degree \(r\) must be mapped to a left quotient starting at relative degree at least \(r\); multiplying back by \(\mathcal V_N^4\) then restores the required four-unit difference.

Write \(Z_i=z_i-N^{-1}\sum_jz_j\), and introduce cotangent coordinates \(\Xi_i\) with \(\sum_i\Xi_i=0\). The polynomial symbols

\[
\theta_a(Z,\Xi)=\sum_i Z_i^a\Xi_i,
\qquad 1\le a\le N-1,
\tag{6.8}
\]

are symbols of vector fields tangent to every collision hyperplane. Their coefficient determinant on \(V\) is a nonzero constant times \(\mathcal V_N\). They therefore form a rational frame that becomes a logarithmic frame at each collision.

**Theorem EX-01 (complete kernel and its physical states).** For \(N\ge2\), \(\Delta>1\), and finite \(P,Q\), the oriented common kernel of \(A_N=W_N-b_N(Q)I\) is in bijection with the Bose-invariant homogeneous degree-\(Q\) symbols

\[
\sum_{|\nu|=Q}h_\nu(e_2,\ldots,e_N)\theta_1^{\nu_1}\cdots\theta_{N-1}^{\nu_{N-1}},
\quad
\deg h_\nu=p-\sum_a a\nu_a.
\tag{6.9}
\]

Here \(e_r\) is the degree-\(r\) elementary symmetric polynomial in the centered \(Z_i\). In particular,

\[
\boxed{\displaystyle
\sum_{P,Q\ge0}\kappa_N(P,Q)x^Py^Q
=\frac{x^{J_N}}
{\prod_{r=2}^N(1-x^r)\prod_{a=1}^{N-1}(1-yx^a)}.}
\tag{6.10}
\]

The kernel is nonzero only if \(P\ge Q+J_N\), and the first allowed degree \(P=Q+J_N\) has one state. Reflection gives the corresponding classification when one chooses the left-oriented baseline for \(Q\ge P\). In an internal cluster, the baseline is tied to the actual right degree and must not be silently replaced by this reflected convention.

The central proof is given in Appendix K. The part that prevents hidden intersection assumptions is worth emphasizing here. Represent (6.7) by its unique normally ordered pure order-\(Q\) differential symbol. In a normal coordinate to a collision, the coefficient of \(\partial_\delta^r\) must be divisible by \(\delta^r\). Expand this symbol in the frame (6.8) over the fraction field. The only possible denominators are powers of the Vandermonde. Localizing at one collision prime, the frame is equivalent to \(\delta\partial_\delta\) and ordinary tangent derivatives. The all-power condition removes every negative valuation of its coefficients at that prime. Repeating this for every collision prime removes all denominators by unique factorization. This proves the full global statement, including intersections; it does not commute a symmetric power with an intersection without proof. Since the \(\theta_a\) are invariant under simultaneous particle permutations, Bose invariance makes the remaining coefficients symmetric, giving precisely \(\mathbb C[e_2,\ldots,e_N]\).

To recover physical states, use the bilinear reproducing kernel

\[
K_{\Delta,Q}(z,w)=\sum_{\alpha,\beta}
f_\alpha(z)(\Gamma^{-1})_{\alpha\beta}f_\beta(w).
\tag{6.11}
\]

Let \(Z_i^{(a)}=Z_i^a-N^{-1}\sum_jZ_j^a\), and expand

\[
K_{\Delta,Q}\!\left(\sum_{a=1}^{N-1}t_aZ^{(a)},w\right)
=\sum_{|\nu|=Q}t^\nu F_\nu(z,w).
\tag{6.12}
\]

A complete basis is

\[
\mathcal V_N^4F_\nu(z,w)\prod_{r=2}^N e_r(Z)^{m_r},
\quad
\sum_a\nu_a=Q,\qquad
P=J_N+\sum_a a\nu_a+\sum_r rm_r.
\tag{6.13}
\]

The actual physical metric is indispensable even for the unique first state \(\mathcal V_N^4K_{\Delta,Q}\). For \(Q=2\), define \(I_1=(\sum Z_i^2)(\sum W_i^2)\), \(I_2=(\sum Z_iW_i)^2\), and \(I_3=\sum Z_i^2W_i^2\). Then

\[
K_{\Delta,2}=
\frac{\Delta^2}{2(\Delta+2/N)}
\left[I_3+\left(\Delta+\frac2N\right)I_2
+\frac{I_1}{N(N\Delta+1)}\right].
\tag{6.14}
\]

For example, at \(N=4,Q=2,\Delta=2\), replacing this tensor by the Euclidean expression \(I_2\) fails the right pair-degree-two flag:

\[
\left.\mathsf P^R_{12,2}I_2\right|_{z_1=z_2}
=-\frac{(w_1-w_2)^2(2z_2-z_3-z_4)^2}{80}\ne0.
\tag{6.15}
\]

Thus the error changes the state, not only its normalization.

At \(Q=0\), (6.13) reduces to the chiral Jastrow section \(\mathcal V_N^4\mathbb C[e_2,\ldots,e_N]\). Multiplication by \(\mathcal V_N^4\) intertwines the chiral polynomial raising action with the algebraic parameter \(\Delta+4(N-1)\). This is an algebraic identity, not an isometry and not a change of the physical scalar mass. The positive pair-projector description is the precise Laughlin/pseudopotential analogy. No quantum Hall phase, gap uniform in a thermodynamic limit, or topological order follows from it.

## 6.3 Exact counts and the size of the positive problem

For three particles, (5.3) becomes

\[
d_3(P,Q)=\frac{(P+1)(Q+1)+3\epsilon_P\epsilon_Q+2c_Pc_Q}{6},
\quad
\epsilon_P=\mathbf1_{P\ \mathrm{even}},\quad c_P=(1,-1,0)_{P\bmod3}.
\tag{6.16}
\]

If \(d_{\rm ch}(r)=[x^r](1-x^2)^{-1}(1-x^3)^{-1}\), with value zero for \(r<0\), then

\[
d_{\rm ch}(r)=\left\lfloor\frac r6\right\rfloor+1-\mathbf1_{r\bmod6=1},
\qquad
\kappa_3(P,Q)=\sum_{j=0}^Qd_{\rm ch}(P-12-Q-j).
\tag{6.17}
\]

Once \(P\ge Q+2\), the auxiliary matrix has

\[
r_Q=\left\lfloor\frac{(Q+4)^2}{4}\right\rfloor-2
=2,4,7,10,14,18,23,\ldots
\tag{6.18}
\]

rows for \(Q=0,1,\ldots\). For \(P\ge2Q+8\), its physical positive rank is exactly \(r_Q\). This is a sufficient eventual threshold, not a claim that every earlier degree has lower rank. For instance, \((P,Q)=(17,5)\) has dimension 18 and auxiliary size 18 but positive rank 17, while \((18,6)\) has dimension 23 and auxiliary size 23 but positive rank 22. A small or zero singular value must not be interpreted by a numerical tolerance as a physical bound state.

For \(N\ge4\), the leading positive-rank count is also explicit. Put

\[
L_{N,Q}=\binom{Q+N-2}{N-2},\qquad
\tau_{N,Q}=[y^Q]\frac1{(1-y)^{N-2}(1+y)}.
\]

**Theorem EX-02 (fixed-right-degree rank).** At fixed \(N\ge4,Q,\Delta>1\),

\[
d_N(P,Q)-\kappa_N(P,Q)
=\rho_{N,Q}P^{N-3}+O(P^{N-4}),
\]
\[
\rho_{N,Q}=
\frac{(7\binom N2+NQ)L_{N,Q}+\binom N2\tau_{N,Q}}
{2N!(N-3)!}.
\tag{6.19}
\]

This is the unaveraged coefficient asymptotic. Its proof compares the poles of the exact Molien and kernel generating functions. The leading pole at \(x=1\) cancels; the next term receives identity and transposition contributions. Other roots of unity have lower pole order for \(N\ge5\). The possible double pole at \(x=-1\) for \(N=4\) cancels as well, using the complete homogeneous polynomial \(h_Q(-1,1,-1)\). For \(N=3\), the cyclotomic terms cancel exactly in the eventual region, yielding (6.18). Appendix K provides the coefficient calculation and the exceptional-root checks.

## 6.4 Explicit low-channel eigenstates and the special mass

The high-degree kernel is not the only source of exact states. A state whose every pair occupies only a few channels can experience an affine pair-Casimir operator even when the full interaction is not affine.

**Lemma EX-03 (affine support).** Suppose a primary \(\Psi\in\mathcal P_{N;P,Q}\) has pair support only where

\[
\gamma_{k\ell}=a+\beta(C_k-C_0)+\eta(C_\ell-C_0).
\tag{6.20}
\]

Then it is an eigenstate with

\[
g=\binom N2a+\beta P(N\Delta+P-1)+\eta Q(N\Delta+Q-1).
\tag{6.21}
\]

Indeed spectral calculus replaces each pair action on this vector by (6.20), and the exact identity \(\sum_{i<j}C_{ij}=C_{\rm tot}+(N-2)\sum_iC_i\) sums its two Casimir terms. This proof requires no mutual commutativity of different pair interactions.

Let \(a=\gamma_{00}\), \(b=\gamma_{20}\), \(c=\gamma_{11}\), \(e=\gamma_{31}\), and let \(\operatorname{Av}\) mean the average of distinct simultaneous permutations. The primary projections

\[
\Phi_1=\Pi_{P,1}\operatorname{Av}(z_1w_1z_2\cdots z_P),
\qquad
\Phi_2=\Pi_{P,1}\operatorname{Av}(z_1^2w_1z_2\cdots z_{P-1})
\tag{6.22}
\]

have pair support \(00,20,11\), and \(00,20,11,31\), respectively. This follows before primary projection by counting the degree available to a pair and imposing its exchange parity; (5.8) preserves that support.

The first three values always fit (6.20), with

\[
\beta=\frac{b-a}{2(2\Delta+1)},\qquad
\eta=\frac{c-a}{2\Delta}-\beta.
\tag{6.23}
\]

**Theorem EX-04 (universal line and critical doublet).** For every \(P\ge1,N\ge P+1\), \(\Phi_1\ne0\) and has coefficient

\[
g_{N,P}^{(1)}=\binom N2a+\frac N2(c-a)
+\frac{(b-a)(P-1)(N\Delta+P)}{2(2\Delta+1)}.
\tag{6.24}
\]

For \(P\ge3,N\ge P-1\), \(\Phi_2\ne0\). It has the same coefficient whenever

\[
\mathcal R=(2\Delta+3)(a-b)-(2\Delta+1)(c-e)=0.
\tag{6.25}
\]

For \(N\ge P+1\) the two states are independent. Equation (6.25) is exactly the condition for this four-channel affine interpolation, and for the displayed two-functional scalar quotient developed in Appendix L; it is not a classification of every degeneracy of the full Hamiltonian.

The nonzero ranges require proof because a seed can be a pure descendant. At \(N=P\), the first seed is \((\prod_i z_i)(\sum_iw_i)/N\), so its right primary projection is zero. Conversely, the test primary \(F_P=\sum_iZ_i^PW_i\) has seed coefficients

\[
[z_1w_1z_2\cdots z_P]F_P=
\frac{(-1)^PP!}{N^P}(P-N),
\]
\[
[z_1^2w_1z_2\cdots z_{P-1}]F_P=
\frac{(-1)^PP!}{2N^P}(N^2-3N+P).
\tag{6.26}
\]

The diagonal positive monomial Gram turns these nonzero coefficients into nonzero pairings with the seeds, proving the stated ranges. Independence is proved by two coefficient functionals in Appendix L, with determinant \(\binom P2(2-P)\ne0\).

For the Einstein values,

\[
\mathcal R=-\frac{24\Delta(2\Delta^2+\Delta-4)}{(2\Delta-1)(2\Delta+5)}.
\tag{6.27}
\]

Its only physical zero is \(\Delta_*=(\sqrt{33}-1)/4\). For example, at \(N=4,P=3,Q=1\), specializing the complete matrix to the exact field \(\mathbb Q(\sqrt{33})\) gives

\[
W_4=-\frac{129+527\sqrt{33}}{64}I_2.
\tag{6.28}
\]

The square-free characteristic polynomial has degree one although the physical eigenspace has dimension two. This is one reason a generic multiplicity calculation cannot be reused at a special mass.

There is also a universal chiral state

\[
\Phi_P^{\rm ch}=\Pi_L(P)\operatorname{Av}(z_1\cdots z_P),
\quad 2\le P\le N,
\quad
g_{N,P}^{\rm ch}=\binom N2a+\beta P(N\Delta+P-1).
\tag{6.29}
\]

Its seed has only channels 0 and 2. The coefficient of \(z_1\cdots z_P\) in \(\sum_iZ_i^P\), equal to \((-1)^PP!(1-P)/N^{P-1}\), proves nonvanishing. At fixed finite degree, the rescaling \(x_i=\sqrt\Delta z_i\), followed by \(\Delta\to\infty\), contracts the norm to the Bargmann–Fock norm and the primary projector to center-of-mass translation. This identifies the chiral projected elementary states with the appropriate contraction of the rotating-boson construction [PB]. The finite-\(\Delta\) physical projector is different from ordinary coordinate centering.

## 6.5 Complete lowest-eigenspace classification by root-power ideals

For the Einstein interaction, the affine remainder in the chiral sector vanishes at \(k=0,2\) and is strictly positive at every allowed \(k\ge4\). In the \(Q=1\) sector its only additional zero below the critical mass is channel \(11\); at \(\Delta_*\), channel \(31\) becomes zero. The decisive explicit remainders are

\[
\begin{aligned}
\mathcal R_{40}&=\frac{2\Delta(\Delta+4)}{2\Delta-1}>0,\\
\mathcal R_{31}&=-\frac{24\Delta(2\Delta^2+\Delta-4)}{(2\Delta-1)(2\Delta+1)(2\Delta+5)},\\
\mathcal R_{51}&=\frac{2\Delta(4\Delta^3+4\Delta^2+53\Delta+44)}
{(2\Delta-1)(2\Delta+1)(2\Delta+3)}>0.
\end{aligned}
\tag{6.30}
\]

On the relevant plateau, increasing \(k\) by two increases the remainder by \(-2\beta(2\Delta+2k+1)>0\). These formulas prove the necessary positivity for every pair channel, without a finite cutoff inference.

The remaining question is completeness of the simultaneous low-channel kernel. The useful change of polynomial realization is the Fischer map

\[
z^p\longmapsto\frac{x^p}{(\Delta)_p},\qquad
\|x^p\|^2=p!(\Delta)_p.
\tag{6.31}
\]

It sends total raising to multiplication by \(S=\sum_i x_i\), and lowering to \(B=\sum_i(x_i\partial_i^2+\Delta\partial_i)\). In this realization, the condition that pair relative degrees are at most \(r\) is

\[
(\partial_i-\partial_j)^{r+1}F=0\quad\hbox{for every }i<j.
\tag{6.32}
\]

Both \(S\) and \(B\) preserve this space: for \(D_{ij}=\partial_i-\partial_j\),

\[
[D_{ij}^m,B]=m(\partial_i+\partial_j)D_{ij}^m.
\tag{6.33}
\]

Thus positivity of the physical Fischer metric identifies the primary slice with the quotient by \(S\). This is a Hilbert-space statement connecting the algebraic inverse system to the actual spectrum.

On the hyperplane \(\sum x_i=0\), the inverse system is dual to

\[
I_{r+1,N}=\langle(t_i-t_j)^{r+1}:i<j\rangle.
\tag{6.34}
\]

Appendix L proves the needed cubic and quartic classifications directly. The cubic quotient has Hilbert polynomial \((1+t)^N-t\); its inverse space is the span of square-free products of the centered coordinates. The quartic quotient has Hilbert polynomial

\[
(1+(N-1)t^2)(1+t)^{N-1};
\tag{6.35}
\]

its inverse space is the restriction of square-free monomials together with monomials with exactly one squared variable. The full \(S_N\)-module structures, not only their dimensions, determine the intersections with the right primary representation.

**Theorem EX-05 (complete affine-bound multiplicities).** For every finite \(N\ge2\):

\[
\begin{aligned}
\sum_Pm_{{\rm ch},N,P}t^P&=1+t^2\frac{1-t^{N-1}}{1-t},&&\Delta>1,\\
\sum_Pm_{<,N,P}t^P&=t\frac{1-t^{N-1}}{1-t},&&1<\Delta<\Delta_*,\ Q=1,\\
\sum_Pm_{*,N,P}t^P&=(t+t^3)\frac{1-t^{N-1}}{1-t},&&\Delta=\Delta_*,\ Q=1.
\end{aligned}
\tag{6.36}
\]

Each coefficient is the dimension of the complete eigenspace attaining the corresponding affine lower bound (6.24) or (6.29). A zero coefficient means the bound is not attained in that block; it is not a formula for the next eigenvalue. In the critical \(Q=1\) range there are two states for \(3\le P\le N-1\), one at the indicated endpoints, and none outside the two finite ladders. At \(N=2\), only \(P=1,3\) occur. For \(\Delta>\Delta_*\), the universal line (6.24) still exists in its nonzero range, but \(\mathcal R_{31}<0\) invalidates this lower bound already in the two-particle \((3,1)\) primary.

There is a precise limit to this method. At \(\Delta=2,N=5,(P,Q)=(4,1)\), in the centered basis \((c_{41},c_{11}c_{30},c_{20}c_{21})\), the two projected seed vectors can be scaled to

\[
v_1=(-10,80,99)^T,\qquad v_2=(95,290,-153)^T,
\quad\det[v_1,v_2,Wv_2]=10080000\ne0.
\tag{6.37}
\]

Both have the proposed low-channel support, yet their two-dimensional span is not invariant. The universal first line survives; the second vector leaves the span. At the next power-ideal cutoff, \((\prod_i x_i)^2\), restricted to \(\sum x_i=0\), is a nonzero degree-\(2N\) inverse-system element annihilated by all fifth root derivatives. For \(N\ge3\) it exceeds the maximal degree \(N+2\) of a proposed square-free-times-degree-two spanning family. Hence the successful cubic/quartic classification cannot be extended by that simple guess.

## 6.6 The upper edge and its exact global gap

The pair coefficients satisfy the strict band ordering

\[
g_{n,0}>g_{n,2}>u_n>g_{n+1,0},
\qquad u_n=4\mu-8(\Delta+n)(\Delta+n-1).
\tag{6.38}
\]

Let

\[
c=\gamma_{00}-\gamma_{20}
=\frac{2\Delta(2\Delta^2+7\Delta+2)}{(2\Delta-1)(2\Delta+3)}>0.
\tag{6.39}
\]

Then the stronger pair comparison is

\[
\gamma_{00}-\gamma_{k\ell}
\ge c(\mathbf1_{k>0}+\mathbf1_{\ell>0}),
\tag{6.40}
\]

with equality only in channels \(00,20,02\). Appendix G proves the ordering and strict comparison, including the lowest radial endpoint. A positive hierarchy of threshold projectors also reconstructs \(\gamma_{00}I-w\), making positivity of every finite coefficient block transparent.

Define the chiral collision operator

\[
K_N^\chi=\sum_{i<j}(I-\mathsf P^\chi_{ij,0}).
\tag{6.41}
\]

It has kernel the global module generated by the constant polynomial. Its first positive eigenvalue on the labelled tensor representation is

\[
\lambda_N=\frac{N\Delta+1}{2\Delta+1}.
\tag{6.42}
\]

One proof starts with the exact three-site Gram of pair-zero states. Its diagonal entries are one and off-diagonal entries are \(r_T=(-1)^T(\Delta)_T/(2\Delta)_T\). The minimum nonzero three-site value is \((3\Delta+1)/(2\Delta+1)\), attained in the symmetric degree-two primary. Summing the triangle inequalities gives

\[
K_N^2\ge\left[(N-2)\frac{3\Delta+1}{2\Delta+1}-(N-3)\right]K_N
=\lambda_NK_N.
\tag{6.43}
\]

The omitted disjoint-pair products are positive because those projectors commute. The polynomial \(F_2=\sum_i z_i^2-(\sum_i z_i)^2/N\) realizes equality, since

\[
(I-\mathsf P_{ij,0})F_2
=\frac{N\Delta+1}{N(2\Delta+1)}(z_i-z_j)^2.
\tag{6.44}
\]

The case \(N=2\) follows directly. The triangle expansion, the three-site exceptional small degrees, and the equality classification are supplied in Appendix G.

**Theorem EX-06 (top coefficient and exact gap).** At fixed \(N\ge2,\Delta>1\), the upper edge of the full coefficient tower is

\[
g_{\rm top}=\binom N2\gamma_{00}.
\tag{6.45}
\]

It belongs only to the primary \((0,0)\) and its global descendants. The exact gap to the next coefficient is

\[
\delta g_N=c\frac{N\Delta+1}{2\Delta+1},
\tag{6.46}
\]

attained only by the primaries \((2,0),(0,2)\) and their descendants. At a full level \((M_L,M_R)\), the top multiplicity is one; the gap-level multiplicity is \(\mathbf1_{M_L\ge2}+\mathbf1_{M_R\ge2}\). A smaller level may contain neither gap branch.

The pair comparison implies \(g_{\rm top}I-W_N\ge c(K_N^L+K_N^R)\). Equations (6.42)–(6.44) prove the value, and equality in the pair comparison restricts every pair to \(00,20,02\), excluding a radial or mixed equality state. The remaining chiral equality space is exactly the symmetric degree-two primary and its descendants. This coefficient gap is independent of the physical mass-gap subtraction of Chapter 3. It also does not bound the full energy uniformly when \(N,P,Q\) are allowed to grow at fixed nonzero \(G\).

## 6.7 A useful Dirichlet realization and a precise positivity obstruction

The unitary Gamma–Laguerre transform

\[
\mathcal U_\Delta z^p=\frac{p!}{(\Delta)_p}L_p^{(\Delta-1)}(x),
\qquad d\nu_\Delta(x)=\frac{x^{\Delta-1}e^{-x}}{\Gamma(\Delta)}\,dx
\tag{6.47}
\]

realizes the same polynomial inner product in a positive measure space [DLMF]. After tensoring, write \(x_i=S\xi_i\), \(\sum\xi_i=1\). A degree-\(P\) primary maps to \(S^PY_P(\xi)\), with a Dirichlet \((\Delta,\ldots,\Delta)\) angular measure; descendants are radial Laguerre factors with parameter \(N\Delta+2P-1\). These are auxiliary representation coordinates, not bulk radial coordinates or changed boundary conditions.

The pair Casimir becomes

\[
\mathcal U C_{ij}\mathcal U^{-1}=\Delta(\Delta-1)-\mathcal J_{ij},
\quad
\mathcal J_{ij}=x_ix_j(\partial_i-\partial_j)^2
+\Delta(x_j-x_i)(\partial_i-\partial_j).
\tag{6.48}
\]

At pair sum fixed, \(u=x_i/(x_i+x_j)\) has Beta \((\Delta,\Delta)\) measure and \(\mathcal J=u(1-u)\partial_u^2+\Delta(1-2u)\partial_u\). Pair degree zero is conditional Beta averaging. The full interaction has the exact decomposition

\[
W_N=2N\mu-4(C_{\rm tot}^L+C_{\rm tot}^R)
+4\sum_{i<j}|C_{ij}^L-C_{ij}^R|+\sum_{i<j}\mathcal R_{ij},
\tag{6.49}
\]

where \(\mathcal R_{ij}\ge0\) is supported on spin 0 and 2. The absolute value is spectral functional calculus of the commuting left and right pair Casimirs. It is an exact nonpolynomial term.

In the chiral sector,

\[
w=-4\Delta^2I+a_0\mathsf P_0+a_2\mathsf P_2,
\quad
a_0=\frac{2\Delta^2(2\Delta+5)}{(2\Delta-1)(2\Delta+1)},\quad
a_2=\frac{4\Delta}{(2\Delta+1)(2\Delta+3)}.
\tag{6.50}
\]

A positive ground-descendant similarity at fixed pair total degree \(T\) gives a Beta-binomial stationary law

\[
\pi_T(a)=\binom Ta\frac{(\Delta)_a(\Delta)_{T-a}}{(2\Delta)_T}.
\tag{6.51}
\]

The degree-two projector has kernel \(\pi_T(b)q_2(a)q_2(b)\), where \(q_2=((2a-T)^2-m_2)/\sqrt{v_2}\),

\[
m_2=\frac{T(T+2\Delta)}{2\Delta+1},\quad
v_2=\frac{4T\Delta(T-1)(T+2\Delta)(T+2\Delta+1)}{(2\Delta+1)^2(2\Delta+3)}.
\tag{6.52}
\]

For \(T<2\), the degree-two sector is simply absent. For \(T\ge2\), bounding the extreme values of the centered square gives \(q_2(a)q_2(b)\ge-(2\Delta+3)/2\). Consequently

\[
a_0+a_2q_2(a)q_2(b)\ge\frac{2\Delta(\Delta+1)}{2\Delta-1}>0.
\tag{6.53}
\]

Thus the shifted chiral operator is a genuine reversible Markov generator in this specified realization, with a suitable labelled odd-channel extension; its physical Bose restriction is fixed. The global stationary law is the Dirichlet-multinomial law obtained from (6.51). Unitarity by itself would not prove positivity, since it need not preserve a pointwise cone; (6.53) is the needed extra argument.

**Theorem EX-07 (failure of the natural nonchiral cone).** The full nonchiral operator is not positivity preserving in the natural product-Dirichlet cone, for any \(\Delta>1\), already for two particles.

To prove this, put \(X=2u-1,Y=2v-1\), \(m=(2\Delta+1)^{-1}\), \(q(X)=X^2-m\), \(L=w-\gamma_{00}I\), and \(b_{22}=\gamma_{00}-\gamma_{22}\). The nonnegative Bose polynomial \(F=X^2Y^2\) has

\[
LF(0,0)=\frac{2c-b_{22}}{(2\Delta+1)^2}
=-\frac{12(10\Delta^3+29\Delta^2+8\Delta-14)}
{(2\Delta-1)(2\Delta+1)(2\Delta+3)(2\Delta+5)}<0.
\tag{6.54}
\]

Its exact finite spectral evolution at that point is

\[
(e^{tL}F)(0,0)=\frac{1-2e^{-ct}+e^{-b_{22}t}}{(2\Delta+1)^2}.
\tag{6.55}
\]

For small positive \(t\), this is negative; continuity makes it negative on an open set of positive measure. There is therefore no domain or isolated-point loophole. At \(\Delta=2\), (6.54) is \(-88/35\). Only even-even physical pair channels occur, so an unphysical odd-channel completion cannot repair this obstruction. It excludes this particular natural cone, not every conceivable nonlocal unitary realization with a different cone.

A separate occupation-basis obstruction has a different scope: at \(\Delta=2,N=2,(P,Q)=(2,2)\), a three-edge off-diagonal cycle has factors \(312/35,-528/35,416/35\), whose product is negative. That product is invariant under invertible diagonal similarity and scalar shifts, excluding a nonnegative off-diagonal generator obtained by such a similarity in that basis. It is not the proof of Theorem EX-07 and does not exclude arbitrary basis changes.

## 6.8 What exact algebraic obstructions do, and do not, establish

**Proposition EX-09 (a finite Galois obstruction to radical formulas).** The finite construction produces algebraic eigenvalues, but in general they cannot be written in radicals. One concrete physical block at \(\Delta=2,N=3,(P,Q)=(6,3)\), with \(x=g+240\), has the irreducible quintic factor

\[
\begin{aligned}
f_5(x)={}&3713039955625x^5-942938552055500x^4
+74501974772024800x^3\\
&-2003576214981165440x^2
+19936439419181140992x\\
&-54992948200676982784.
\end{aligned}
\tag{6.56}
\]

Its reductions modulo 23 and 17 have factor degrees \(5\) and \((2,3)\), respectively, with nonzero discriminant modulo those primes. The first proves irreducibility and a transitive degree-five Galois action; the second supplies an element whose cube is a transposition. A transitive group of prime degree is primitive. In a primitive permutation group the conjugates of a transposition form the edges of a connected invariant graph, and those edge transpositions generate the full symmetric group. Hence the Galois group is \(S_5\). This rules out a general radical formula for these finite roots, while polynomial plus isolating interval remains an exact answer. The package retains the exact finite-field certificate; it is distinguished from the finite regressions rerun for the present master note.

Several other obstructions concern narrower proposed structures. In a fixed chiral block, the channel-zero and channel-two pair sums can have a scalar common commutant; one exact example is \(N=4,\Delta=2,P=6\), where their commutator has rank two and their common commutant has dimension one. This excludes coefficient-independent charges built from commuting with both channel sums on that block, not every possible mass-dependent conserved operator. The symmetric differential derivation \(D_2\) also fails to be a conserved charge: for \(N=3,\Delta=2\),

\[
[W_3,D_2]p_2=-\frac{64}{7}p_3,
\tag{6.57}
\]

with \(W_3p_2=-40p_2\), \(W_3p_3=-312p_3/7\), and \(D_2p_2=2p_3\). Tangency to collision ideals is not itself a conservation law.

The chiral pair interaction has nonzero deviations from its plateau only in channels 0 and 2. It therefore cannot be one fixed polynomial, or one fixed rational function with a nonsingular denominator on the spectrum, of the pair Casimir: subtracting the plateau would give infinitely many distinct zeros of a nonzero polynomial numerator. This excludes a global fixed-degree Casimir formula, even though every finite truncation admits the interpolation (5.6).

**Theorem EX-08 (specified Kohno-residue obstruction).** On the full labelled tensor product of identical positive-discrete-series factors, prescribe the even pair values to be the chiral Einstein values. Allow arbitrary odd pair values, a common scalar shift, a common pair-Casimir addition, and a nonzero common rescaling. No resulting residues \(\Omega_{ij}\) satisfy

\[
[\Omega_{12},\Omega_{13}+\Omega_{23}]=0
\tag{6.58}
\]

for any \(\Delta>1\). Appendix O proves this by exact degree-\(2,3,4,5\) labelled-primary matrices, including the exceptional Casimir-shift branch. Projecting to Bose states before testing the labelled relation would not test the required flatness condition. The result excludes these prescribed two-site residues as a Kohno-flat connection. It does not exclude unrelated spectral-parameter constructions, arbitrary Bethe ansätze, nonlocal transformations, or all forms of integrability. The complete finite algorithm needs none of these stronger conclusions.
