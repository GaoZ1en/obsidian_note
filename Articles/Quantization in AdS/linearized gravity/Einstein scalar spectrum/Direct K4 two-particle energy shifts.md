# Direct Calculation of the Two-Particle Shifts from K4

The connected two-particle shifts can be calculated directly from

$$\begin{align}
\mathcal K_4
&=H_4^{\mathrm{con}}-\sum_{m\geq2}m\{D_m^\dagger,D_m\}.
\end{align}$$

Below, the dynamical input is a finite matrix of this operator on circular scalar pairs. Its entries are evaluated as finite rational sums with explicit Bose normalization factors, for every fixed external label and every physical $\Delta>1$. Free $\mathfrak{sl}(2,\mathbb R)\oplus\mathfrak{sl}(2,\mathbb R)$ representation coefficients then recover all two-particle primary shifts. No equivalence to a covariant stress-tensor response, crossed Einstein–Casimir equation, or previously calculated energy is used in this construction.

The symmetry step is the scalar-operator case of Wigner–Eckart, or equivalently Schur's lemma together with multiplicity one. It fixes the descendant dependence, but leaves one dynamical number for each primary. The finite sums below calculate those numbers. The separate question of reducing the resulting finite sums to the compact three-case formula at arbitrary primary labels is not proved here.

## Conventions

Use unit AdS radius, signature $(-,+,+)$, $\kappa^2=16\pi G$, and the minimally coupled Einstein–real-scalar action

$$\begin{align}
S_R={}&\frac1{\kappa^2}\int_{M_R}\sqrt{-g}(R+2)
+\frac2{\kappa^2}\int_{\Gamma_R}\sqrt{-\gamma}(K-1)\\
&-\frac12\int_{M_R}\sqrt{-g}
\bigl((\nabla\phi)^2+\mu\phi^2\bigr),
&\mu&=\Delta(\Delta-2).
\end{align}$$

The scalar is regular at the center and has source-free fast falloff; the metric obeys Brown–Henneaux boundary conditions. Here $\Delta>1$ is the fixed physical one-particle gap. Replacing the bare gap by $\Delta$ in a connected order-$G$ vertex changes it only at order $G^2$. Vacuum and one-body contributions have already been subtracted. There is no additional order-$G$ four-scalar coupling.

We use precisely the maximal/conformal canonical chart of [Untitled.md](Untitled.md). Put

$$\begin{align}
y&=\sqrt{1+r^2}, & x&=y^{-1}, &
\bar\sigma&=\frac{\mathrm dr^2}{1+r^2}+r^2\mathrm d\theta^2,
&\chi&=\frac{\pi_\phi}{\sqrt{\bar\sigma}}.
\end{align}$$

The lapse and shift constraints in this chart give

$$\begin{align}
(-\bar\Delta+2)u&=\frac\rho2,
&\bar D_jt^j{}_i&=\frac12\chi\partial_i\phi,\\
\rho&=\frac12\bigl(\chi^2+|\bar D\phi|^2+\mu\phi^2\bigr),
&t^i{}_i&=0,\\
H_4^{\mathrm{con}}
&=\int_\Sigma\sqrt{\bar\sigma}\,y
\bigl(t:t-u(\chi^2-\mu\phi^2)-4u^2\bigr).
\end{align}$$

The scalar constraint inverse is center regular and boundary decaying. For non-global momentum harmonics, the regular homogeneous coefficient is fixed by zero independent boundary momentum, $\lim_{r\to\infty}r^2B_m=0$ for $|m|\geq2$, in the notation of Appendix A of `Untitled.md`. The global harmonics retain their matter charges.

The equal-time boundary operator is normalized as

$$\begin{align}
D_m&=\frac1{\sqrt{8\pi m(m^2-1)}}
\int_\Sigma\sqrt{\bar\sigma}\,p_m(y)e^{-im\theta}:\rho:,
&p_m(y)&=\left(\frac{r}{1+y}\right)^m(y+m).
\end{align}$$

Its adjoint has the opposite angular harmonic. The anticommutator in $\mathcal K_4$ already includes both harmonics.

Write $\mathcal W=16\pi[\mathcal K_4]_{22,\mathrm{res}}$, where the brackets mean the connected normally ordered term with two creations and two annihilations, followed by free-energy resonance projection. Thus $G\mathcal W$ is the connected correction. We calculate dimensionless primary eigenvalues $g_{n,|\ell|}$, so that

$$\begin{align}
\gamma_{n,|\ell|}&=Gg_{n,|\ell|},\\
E_{n,\ell;a,b}
&=2\Delta+2n+|\ell|+a+b+Gg_{n,|\ell|}+O(G^2).
\end{align}$$

Here $a,b\geq0$ are descendant levels and $\ell$ is even for identical scalars.

## The Symmetry Input

The required statement concerns the **complete resonant connected operator**:

$$\begin{align}
[\mathcal W,L_{0,\pm1}^{(0)}]
=[\mathcal W,\bar L_{0,\pm1}^{(0)}]=0.
\tag{1}
\end{align}$$

This is not a statement that $H_4^{\mathrm{con}}$ separately commutes with the free charges. In the canonical OFPT derivation, remove the nonresonant cubic by its canonical transformation and transform the Noether charges at the same time. For a charge of free energy weight $s$, the degree-four Ward equation is

$$\begin{align}
[H_0,\widetilde Q_2^{[4]}]-s\widetilde Q_2^{[4]}
+[W^{[4]},Q_0]=0.
\end{align}$$

Projection between free energies differing by $s$ removes the first two terms and gives (1). The connected four-scalar part of $W^{[4]}$ is the stated $\mathcal K_4$. Normal ordering commutes with the free number-preserving global charges. This uses the boundary-completed classical charge identity and the regular cubic normal form, rather than a known interacting spectrum. The tree Ward argument is set out in §§70–71 of [Unreduced OFPT calculation.md](Unreduced%20OFPT%20calculation.md).

Each irreducible representation occurs once in the free two-scalar tensor product. Consequently (1) makes $\mathcal W$ a scalar on each such representation. This is the precise Wigner–Eckart simplification used below; general tensor-operator versions for the noncompact algebra are discussed by [Sellaroli, arXiv:1411.7467](https://arxiv.org/abs/1411.7467). The present scalar case only needs the displayed intertwining identity and the explicit free decomposition.

Multiplicity one within the two-scalar space does not by itself exclude mixing with other Fock sectors. Identification with the scalar branches of the complete degenerate problem uses the additional tree boundary-charge and number-changing Ward arguments in the parent calculation, together with its fixed-mass prescription. This note independently evaluates the connected scalar operator, not the complete quantum charge algebra.

## A Useful Compression

At total left/right levels $(N,N)$ choose

$$\begin{align}
|r;N\rangle
&=\frac{b_{r,0}^\dagger b_{N-r,0}^\dagger|0\rangle}
{\sqrt{1+\delta_{2r,N}}},
&0\leq r&\leq\lfloor N/2\rfloor,\\
\mathsf M^{(N)}_{rs}&=\langle r;N|\mathcal W|s;N\rangle.
\end{align}$$

Both individual angular momenta are zero. In a connected four-leg coefficient of $D_m^\dagger D_m$, each quadratic factor contains two external scalar legs. Their angular harmonic is zero, whereas $D_m$ requires harmonic $m\geq2$. Therefore

$$\begin{align}
\boxed{\displaystyle
\mathsf M^{(N)}_{rs}
=16\pi\langle r;N|[H_4^{\mathrm{con}}]_4|s;N\rangle.}
\tag{2}
\end{align}$$

The subscript $4$ is essential. $D_m$ does not annihilate a circular two-particle state: it can change one scalar's angular momentum, and contractions of $D_m^\dagger D_m$ can give one-body terms. Those terms are outside the connected four-leg extraction in (2).

Equation (2) is a compression, not an invariant subspace. Its eigenvalues generally are not the primary shifts. Section “Primary Extraction” gives the invertible reconstruction from this compression using (1). Thus the vanishing of the boundary term in (2) does not discard its effect in other matrix elements.

## Circular Sources

Strip the factor $1/\sqrt{2\pi}$ from each scalar mode. Its circular radial function is

$$\begin{align}
R_n(x)&=x^\Delta\sum_{i=0}^n a_{ni}x^{2i},
&\omega_n&=\Delta+2n,\\
a_{ni}
&=\frac{(\Delta)_n}{n!}
\frac{(-n)_i(n+\Delta)_i}{(\Delta)_i\,i!}.
\tag{3}
\end{align}$$

This is $x^\Delta P_n^{(\Delta-1,0)}(1-2x^2)$, with the KG normalization and mode phase of the parent note. A signed leg $a=(n,\varepsilon)$ has time dependence $e^{-i\varepsilon\omega_nt}$ and momentum $\chi_a=-i\varepsilon\omega_nxR_n$. A creation leg has $\varepsilon=-1$.

For $a=(n,\varepsilon)$ and $b=(m,\eta)$ define the symmetric polarizations

$$\begin{align}
\rho_{ab}
&=\frac12\left[-\varepsilon\eta\omega_n\omega_mx^2R_nR_m
+x^2(1-x^2)R_n'R_m'+\mu R_nR_m\right]
=x^{2\Delta}\sum_h\rho_{ab,h}x^{2h},\\
Q_{ab}
&=(-\varepsilon\eta\omega_n\omega_mx^2-\mu)R_nR_m
=x^{2\Delta}\sum_h q_{ab,h}x^{2h},\\
j_{y,ab}
&=\frac14(\chi_a\partial_yR_m+\chi_b\partial_yR_n)
=i x^{2\Delta+2}\sum_h j_{ab,h}x^{2h}.
\tag{4}
\end{align}$$

Primes in the first line mean $x$ derivatives. All coefficient lists are finite. In particular,

$$\begin{align}
\rho_{ab,h}
={}&\frac12\sum_{i+j=h}a_{ni}a_{mj}
\bigl[(\Delta+2i)(\Delta+2j)+\mu\bigr]\\
&-\frac12\sum_{i+j=h-1}a_{ni}a_{mj}
\bigl[(\Delta+2i)(\Delta+2j)+\varepsilon\eta\omega_n\omega_m\bigr],\\
q_{ab,h}
={}&-\mu\sum_{i+j=h}a_{ni}a_{mj}
-\varepsilon\eta\omega_n\omega_m\sum_{i+j=h-1}a_{ni}a_{mj},\\
j_{ab,h}
={}&\frac14\sum_{i+j=h}a_{ni}a_{mj}
\bigl[\varepsilon\omega_n(\Delta+2j)+\eta\omega_m(\Delta+2i)\bigr].
\tag{5}
\end{align}$$

Coefficients outside $0\leq i\leq n$, $0\leq j\leq m$ are zero. In particular $\rho$ and $q$ stop at $h=n+m+1$, while $j$ stops at $h=n+m$.

## Solving the Constraints

For the zero angular harmonic the scalar operator is

$$\begin{align}
L_0&=-(y^2-1)\partial_y^2-2y\partial_y+2,\\
L_0[y^{-s}]&=-(s-2)(s+1)y^{-s}+s(s+1)y^{-s-2}.
\end{align}$$

Let $G_h=L_0^{-1}[x^{2\Delta+2h}]$, with the stated regularity and falloff. The last identity gives the exact finite reduction

$$\begin{align}
G_h
&=\frac{\Delta-1}{\Delta+h-1}G_0
+\sum_{i=0}^{h-1}
\frac{x^{2\Delta+2i}}{2(2\Delta+2i+1)(\Delta+h-1)}.
\tag{6}
\end{align}$$

The only remaining nonpolynomial function can be chosen as the ground mixed-sign response

$$\begin{align}
U_\Delta(x)
&=\frac{\Delta}{4x}\int_0^x
\frac{t^2-t^{2\Delta}}{1-t^2}\,\mathrm dt,
&L_0U_\Delta&=\frac{\Delta(\Delta-1)}2x^{2\Delta}.
\tag{7}
\end{align}$$

It is finite at $x=1$ and is $O(x^2)$ at the AdS boundary. Every circular response is therefore

$$\begin{align}
u_{ab}
&=\alpha_{ab}U_\Delta+x^{2\Delta}\sum_i\beta_{ab,i}x^{2i},\\
\alpha_{ab}
&=\sum_h\frac{\rho_{ab,h}}{\Delta(\Delta+h-1)},\\
\beta_{ab,i}
&=\sum_{h>i}\frac{\rho_{ab,h}}
{4(2\Delta+2i+1)(\Delta+h-1)}.
\tag{8}
\end{align}$$

The energy inner product of the free modes gives a useful exact check:

$$\begin{align}
\alpha_{(n,\varepsilon)(m,\eta)}
&=\frac2\Delta\int_1^\infty y\rho_{ab}(y)\,\mathrm dy
=\frac{\omega_n}{\Delta}\delta_{nm}\delta_{\varepsilon,-\eta}.
\tag{9}
\end{align}$$

In particular the nonpolynomial response occurs only in a diagonal number-preserving pair. It must initially be retained.

For the circular traceless momentum, $t^i{}_j=\operatorname{diag}(A,-A)$. Its equation and regular solution are

$$\begin{align}
\partial_yA_{ab}+\frac{2y}{y^2-1}A_{ab}&=j_{y,ab},\\
A_{ab}(x)
&=\frac{i x^2}{1-x^2}\sum_hj_{ab,h}F_{2\Delta+2h-1}(x),\\
F_a(x)&=\frac{1-x^a}{a}-\frac{1-x^{a+2}}{a+2}.
\tag{10}
\end{align}$$

No homogeneous $1/r^2$ momentum term is regular in this harmonic. Equations (6)–(10) solve the original spatial constraints, without solving a spacetime Einstein response.

## Performing the Radial Integrals

The measure changes as $y\,\mathrm dy=-\mathrm dx/x^3$, so reversing the limits gives an integral over $0<x<1$ with weight $x^{-3}$. The momentum integral is elementary:

$$\begin{align}
\int_0^1\frac{xF_a(x)F_b(x)}{(1-x^2)^2}\,\mathrm dx
&=\frac1{(a+2)(b+2)(a+b+2)}.
\tag{11}
\end{align}$$

For example, integrate by parts using $\partial_x(1-x^2)^{-1}=2x(1-x^2)^{-2}$ and $F_a'=-x^{a-1}(1-x^2)$. The boundary term at $x=0$ is $-2/[a(a+2)b(b+2)]$; it is required for (11). Here $a,b>1$ for all sources under consideration.

The scalar terms require only

$$\begin{align}
Z_h&=\int_0^1x^{2\Delta+2h-3}U_\Delta(x)\,\mathrm dx,
&S_U&=\int_0^1\frac{U_\Delta(x)^2}{x^3}\,\mathrm dx.
\end{align}$$

They obey

$$\begin{align}
(2\Delta+2h-1)Z_{h+1}-(2\Delta+2h-3)Z_h
&=\frac\Delta8\left(\frac1{\Delta+h}-\frac1{2\Delta+h-1}\right),\\
S_U&=\frac\Delta8\left(\frac{\Delta-1}8-Z_0-Z_1\right).
\tag{12}
\end{align}$$

These follow directly from (7) and integration by parts. An explicit evaluation, not needed by the final algorithm, is

$$\begin{align}
Z_h
=\frac{\Delta}{8(2\Delta+2h-3)}\Bigl[
\psi(\Delta+\tfrac12)-\psi(\tfrac32)
-\psi(2\Delta+h-1)+\psi(\Delta+h)\Bigr].
\tag{13}
\end{align}$$

At $\Delta=3/2,h=0$ take the continuous limit. The original integral is finite.

There is an additional simplification: **the coefficient of $Z_0$ cancels in every complete resonant circular matrix element**. The proof is given in the next section. We can therefore calculate those complete elements using only the following rational representatives:

$$\begin{align}
\widehat Z_0&=0,\\
\widehat Z_h
&=\frac{\Delta}{8(2\Delta+2h-3)}
\sum_{a=0}^{h-1}\left(\frac1{\Delta+a}-\frac1{2\Delta+a-1}\right),
&&h\geq1,\\
\widehat S_U
&=\frac\Delta8\left(\frac{\Delta-1}8-\widehat Z_1\right).
\tag{14}
\end{align}$$

This is an algebraic cancellation in the sum, not a choice of finite part and not an instruction to set the physical function $U_\Delta$ to zero. Individual source pairings need not be preserved by this replacement. All denominators in (14) are nonzero for $\Delta>1$.

For two polarized pairs $ab$ and $cd$, define the evaluated pairing

$$\begin{align}
\mathcal B(ab;cd)={}&
-2\sum_{h,j}\frac{j_{ab,h}j_{cd,j}}
{(2\Delta+2h+1)(2\Delta+2j+1)(4\Delta+2h+2j)}\\
&-\alpha_{ab}\sum_hq_{cd,h}\widehat Z_h
-\sum_{i,h}\frac{\beta_{ab,i}q_{cd,h}}{4\Delta+2i+2h-2}\\
&-4\left[
\alpha_{ab}\alpha_{cd}\widehat S_U
+\alpha_{ab}\sum_j\beta_{cd,j}\widehat Z_j
+\alpha_{cd}\sum_i\beta_{ab,i}\widehat Z_i
+\sum_{i,j}\frac{\beta_{ab,i}\beta_{cd,j}}{4\Delta+2i+2j-2}
\right].
\tag{15}
\end{align}$$

Before the replacement (14), these three lines are precisely the integrals of $2A_{ab}A_{cd}$, $-u_{ab}Q_{cd}$, and $-4u_{ab}u_{cd}$, respectively. The minus sign in the first line comes from the two factors of $i$ in (10).

For the row $r$ and column $s$ of $\mathsf M^{(N)}$, take the four signed legs

$$\begin{align}
(a_1,a_2,a_3,a_4)
&=((r,-1),(N-r,-1),(s,+1),(N-s,+1)).
\end{align}$$

Let $A$ run over the six two-element subsets of $\{1,2,3,4\}$, and let $A^c$ be its complement. The fully evaluated direct contact formula is

$$\begin{align}
\boxed{\displaystyle
\mathsf M^{(N)}_{rs}
=\frac{32}{\sqrt{(1+\delta_{2r,N})(1+\delta_{2s,N})}}
\sum_{|A|=2}\mathcal B(a_A;a_{A^c}).}
\tag{16}
\end{align}$$

Equations (3), (5), (8), and (14)–(16) are finite rational sums with no remaining radial integral, internal-mode sum, or unknown response. Repeated physical modes still occupy distinct leg slots in the six subsets. The factor $32$ is $16\pi$ times the four ordered polarizations and the angular factor $2\pi/(2\pi)^2$; the denominator is the two normalized Bose-pair factors.

## Why the Nonpolynomial Moment Cancels

By (9), an off-diagonal resonant circular element has no nonzero $\alpha$: sharing one creation and annihilation mode would, by $r+(N-r)=s+(N-s)$, force the other modes to agree as well. Thus only diagonal elements need checking.

For a diagonal signed pair set

$$\begin{align}
\rho_n&=\rho_{(n,-)(n,+)},
&Q_n&=Q_{(n,-)(n,+)},\\
\alpha_n&=\frac{\omega_n}{\Delta},
&v_n&=u_{(n,-)(n,+)}-\alpha_nU_\Delta.
\end{align}$$

Here $v_n$ is the finite-power part of (8). For $\Delta>3/2$, all integrals in the following intermediate calculation converge separately. Self-adjoint integration of

$$\begin{align}
L_0v_n&=\frac12(\rho_n-\alpha_n\rho_0),
&\rho_0&=\Delta(\Delta-1)y^{-2\Delta}
\end{align}$$

against $1$ and $y^2$, using $L_0[1]=2$ and $L_0[y^2]=2-4y^2$, gives

$$\begin{align}
T_n:=\int_1^\infty y^2(Q_n+8v_n)\,\mathrm dy
&=\int_1^\infty\bigl[y^2(Q_n-\rho_n)+\rho_n\bigr]\,\mathrm dy
+\alpha_n\int_1^\infty(y^2-1)\rho_0\,\mathrm dy.
\end{align}$$

The first integral is zero. Indeed the free radial equation is

$$\begin{align}
-\partial_y[y(y^2-1)R_n']
+\left(\mu y-\frac{\omega_n^2}{y}\right)R_n=0.
\end{align}$$

Multiply it by $(y^2-1)R_n'$ and integrate. It yields

$$\begin{align}
\int_1^\infty\left[
-(y^2-1)^2(R_n')^2
+\left(\omega_n^2(1+y^{-2})-\mu(3y^2-1)\right)R_n^2
\right]\mathrm dy=0,
\end{align}$$

which is twice that first integral. Center boundary terms vanish, and the boundary terms at infinity are $O(y^{3-2\Delta})$. Hence

$$\begin{align}
T_n&=\alpha_n\frac{2\Delta(\Delta-1)}{(2\Delta-3)(2\Delta-1)}.
\tag{17}
\end{align}$$

From (12), the coefficient of $Z_0$ in $Z_h$ is $(2\Delta-3)/(2\Delta+2h-3)$, and its coefficient in $S_U$ is $-\Delta(\Delta-1)/[2(2\Delta-1)]$. The two complementary nonlocal pairings in a diagonal matrix element therefore have total coefficient

$$\begin{align}
&-(2\Delta-3)(\alpha_nT_m+\alpha_mT_n)
+\frac{4\Delta(\Delta-1)}{2\Delta-1}\alpha_n\alpha_m=0.
\tag{18}
\end{align}$$

The same cancellation holds when the two modes coincide, with the corresponding repeated-leg multiplicity. This proves the cancellation for every finite mode label, rather than extrapolating from checked matrices.

The original complete contact integrals are real analytic in $\Delta>1$: their boundary integrands and any fixed number of mass derivatives have integrable bounds on compact subintervals. The finite rational formula (14)–(16) has no pole there. The identity derived for $\Delta>3/2$ therefore extends to $1<\Delta\leq3/2$. No divergent intermediate integral in (17) is used literally in that range.

## Primary Extraction

The following step uses free representation theory only. A single scalar has chiral lowest weight $\Delta/2$, with normalized ladders

$$\begin{align}
L_1|p\rangle&=\sqrt{p(\Delta+p-1)}|p-1\rangle,\\
L_{-1}|p\rangle&=\sqrt{(p+1)(\Delta+p)}|p+1\rangle.
\end{align}$$

The normalized chiral primary at total level $k$ has coefficients

$$\begin{align}
v_p^{(k)}
&=\frac{(-1)^p(\Delta)_k}
{\sqrt{\mathcal N_k(\Delta)_p(\Delta)_{k-p}p!(k-p)!}},
&\mathcal N_k&=\frac{(2\Delta+k-1)_k}{k!}.
\end{align}$$

Construct the orthogonal matrix $U^{(N)}$ by raising each primary:

$$\begin{align}
\sum_{p=0}^NU^{(N)}_{pk}|p,N-p\rangle
&=\frac{(L_{-1}^{(1)}+L_{-1}^{(2)})^{N-k}}
{\sqrt{(N-k)!(2\Delta+2k)_{N-k}}}
\sum_{p=0}^kv_p^{(k)}|p,k-p\rangle.
\tag{19}
\end{align}$$

The pair of chiral primary labels $(k,l)$ has $n=\min(k,l)$ and $\ell=k-l$. Exchange parity is $(-1)^{k+l}$, so only even $k+l$ is retained. Put

$$\begin{align}
s_r&=\sqrt{\frac2{1+\delta_{2r,N}}},
&C_{r;kl}&=s_rU^{(N)}_{rk}U^{(N)}_{rl}.
\end{align}$$

Equation (1) then gives the compression identity

$$\begin{align}
\mathsf M^{(N)}
&=\sum_{\substack{0\leq k,l\leq N\\k+l\text{ even}}}
C_{;kl}C_{;kl}^{T}\,g_{\min(k,l),|k-l|}.
\tag{20}
\end{align}$$

There is no dynamical input in the $C$ coefficients. Starting at $N=0$, subtract the already obtained terms with $k,l<N$ to form $\mathsf M_{\mathrm{new}}^{(N)}$. Define

$$\begin{align}
\mathsf D_N&=\operatorname{diag}_{r=0}^{\lfloor N/2\rfloor}(U^{(N)}_{rN}),\\
(\mathsf O_N)_{ra}&=s_rU^{(N)}_{ra},
&a&=N,N-2,\ldots.
\end{align}$$

The paired-row orthogonality of $U$ gives $\mathsf O_N^T\mathsf O_N=1$. Every entry of $\mathsf D_N$ is nonzero, since it is a primary coefficient $v_r^{(N)}$ at $\Delta>1$. Therefore

$$\begin{align}
\boxed{\displaystyle
\mathsf O_N^T\mathsf D_N^{-1}\mathsf M_{\mathrm{new}}^{(N)}
\mathsf D_N^{-1}\mathsf O_N
=\operatorname{diag}_{a=N,N-2,\ldots}
\bigl[(2-\delta_{aN})g_{a,N-a}\bigr].}
\tag{21}
\end{align}$$

This completes a direct finite algorithm for every primary: to obtain $(n,|\ell|)$, calculate (16) through $N=n+|\ell|$ and apply (21). Opposite spins have the same coefficient by parity. All off-diagonal entries of (21) must vanish and provide additional checks; they are not discarded when extracting the diagonal.

## Evaluated Examples

The ground state illustrates the actual integrations before representation theory is used. Its mixed-sign scalar response is $U_\Delta$, its same-sign scalar response is

$$\begin{align}
u_{++}=u_{--}&=-\frac{\Delta}{4(2\Delta+1)}y^{-2\Delta},
\end{align}$$

and its same-sign momentum is $A_{\pm\pm}=\pm iM$, where

$$\begin{align}
M(y)&=\frac{\Delta^2}{2(y^2-1)}
\left[\frac{1-y^{1-2\Delta}}{2\Delta-1}
-\frac{1-y^{-2\Delta-1}}{2\Delta+1}\right].
\end{align}$$

The two same-sign partitions in (16), including their momentum terms, integrate to
$-\Delta^2(2\Delta-3)/[8(4\Delta^2-1)]$.
The four mixed-sign partitions integrate to
$-\Delta^2(\Delta-1)/[2(2\Delta-1)]$.
For example $4\int_1^\infty yM^2\,\mathrm dy=\Delta^3/[4(2\Delta+1)^2]$ follows from (11); (12) eliminates the remaining $U_\Delta^2$ integral. The Bose normalization gives the overall factor $16$, hence

$$\begin{align}
g_{00}
&=-\frac{2\Delta^2(8\Delta^2-2\Delta-7)}{(2\Delta-1)(2\Delta+1)}.
\tag{22}
\end{align}$$

At the next circular level the directly evaluated entry is

$$\begin{align}
\mathsf M^{(1)}_{00}
&=-\frac{4\Delta^2(8\Delta^3+26\Delta^2+7\Delta-17)}
{(2\Delta-1)(2\Delta+1)(2\Delta+3)}.
\end{align}$$

Since $\mathsf M^{(1)}_{00}=(g_{00}+g_{10})/2$, this gives

$$\begin{align}
g_{10}
&=-\frac{2\Delta^2(8\Delta^2+46\Delta+47)}{(2\Delta+1)(2\Delta+3)}.
\tag{23}
\end{align}$$

The symbolic $N=2$ calculation gives

$$\begin{align}
g_{02}
&=-4\Delta^2+\frac{4\Delta}{(2\Delta+1)(2\Delta+3)},\\
g_{20}
&=-\frac{2(16\Delta^5+196\Delta^4+648\Delta^3+829\Delta^2+436\Delta+84)}
{(2\Delta+1)(2\Delta+3)(2\Delta+5)}.
\tag{24}
\end{align}$$

The symbolic $N=3,4$ calculations also give, respectively,

$$\begin{align}
g_{12}&=-4(\Delta^2+4\Delta)+\frac{12\Delta}{(2\Delta+3)(2\Delta+5)},
&g_{04}&=-4\Delta^2.
\end{align}$$

These are evaluated coefficients, not an inference that all higher-spin or higher-radial coefficients follow the same pattern. At $\Delta=2$, the actual circular matrix at level $N=2$ is

$$\begin{align}
\mathsf M^{(2)}
&=\begin{pmatrix}
-32&-264\sqrt2/35\\
-264\sqrt2/35&-1376/35
\end{pmatrix}.
\end{align}$$

Subtracting the $(0,0)$ and $(1,1)$ primary descendants and using (21) gives $g_{20}=-416/5$ and $g_{02}=-552/35$. Directly diagonalizing this two-dimensional compression would not give these two answers.

## A Check with Nonzero Boundary Exchange

The circular construction can be checked independently on states for which the second term of $\mathcal K_4$ contributes. For four arbitrary signed legs $a_1,a_2,a_3,a_4$, let $k_A$ be the sum of the two signed angular momenta in a subset $A$, and define the density moment, with the angular normalization stripped,

$$\begin{align}
I_m(a,b)&=\int_1^\infty p_m(y)\rho_{ab}(y)\,\mathrm dy,
&p_m(y)&=\left(\frac{r}{1+y}\right)^m(y+m).
\end{align}$$

Direct four-leg differentiation of the anticommutator gives its matrix entry in units of $G$:

$$\begin{align}
\boxed{\displaystyle
\mathsf X_{IJ,KL}
=-\frac8{\sqrt{(1+\delta_{IJ})(1+\delta_{KL})}}
\sum_{\substack{|A|=2\\ |k_A|\geq2}}
\frac{I_{|k_A|}(a_A)I_{|k_A|}(a_{A^c})}{k_A^2-1}.}
\tag{25}
\end{align}$$

Here the external legs are $(I,-),(J,-),(K,+),(L,+)$. The angular selection rule has executed the entire graviton sum: only the finitely many $|k_A|$ occur. Equation (25) uses the anticommutator itself; it does not reintroduce energy-denominator sums. Contractions of the two quadratic operators are excluded because this is the four-leg coefficient.

For $\Delta=2$, take $A=b_{0,0}^\dagger b_{1,0}^\dagger|0\rangle$ and $B=b_{0,1}^\dagger b_{0,-1}^\dagger|0\rangle$. Direct integration of the maximal-slice constraints and (25) gives

$$\begin{align}
\mathsf C&=\begin{pmatrix}-176/7&488/35\\488/35&-4064/175\end{pmatrix},
&\mathsf X&=\begin{pmatrix}0&0\\0&-48/25\end{pmatrix}.
\end{align}$$

Their sum has the descendant and primary eigenvalues $-56/5$ and $-1368/35$. This also shows why using (2) as a global omission of the boundary term would be wrong.

The following primary expectation values were independently evaluated from the full angular constraints and (25), then compared with the circular reconstruction. The contact and boundary columns are separately evaluated, not fitted to the total.

| $\Delta$ | $(n,\lvert\ell\rvert)$ | $16\pi\langle H_4^{\rm con}\rangle$ | $-16\pi\langle\sum_m m\{D_m^\dagger,D_m\}\rangle_4$ | $g_{n,\lvert\ell\rvert}$ |
|---:|:---:|---:|---:|---:|
| $2$ | $(0,0)$ | $-56/5$ | $0$ | $-56/5$ |
| $2$ | $(1,0)$ | $-6672/175$ | $-24/25$ | $-1368/35$ |
| $2$ | $(0,2)$ | $-93022/6125$ | $-3578/6125$ | $-552/35$ |
| $2$ | $(2,0)$ | $-69504/875$ | $-3296/875$ | $-416/5$ |
| $2$ | $(1,2)$ | $-406715/9261$ | $-34285/9261$ | $-1000/21$ |
| $2$ | $(0,4)$ | $-12596/1029$ | $-3868/1029$ | $-16$ |
| $3$ | $(0,0)$ | $-1062/35$ | $0$ | $-1062/35$ |
| $3$ | $(1,0)$ | $-3544/49$ | $-54/49$ | $-514/7$ |
| $3$ | $(0,2)$ | $-651551/18522$ | $-11713/18522$ | $-752/21$ |
| $3$ | $(2,0)$ | $-44078/343$ | $-51784/11319$ | $-30742/231$ |
| $3$ | $(1,2)$ | $-18124903/228690$ | $-1001897/228690$ | $-920/11$ |
| $3$ | $(0,4)$ | $-34876/1089$ | $-4328/1089$ | $-36$ |

## Verification and Scope

The supporting implementation and checks are in [scripts/direct_k4_2026_10_09](scripts/direct_k4_2026_10_09/README.md). Its circular calculation takes only the normalized free modes, the displayed spatial constraints, and the free representation matrices as inputs. A separate angular calculation retains the boundary term. Comparison with an existing spectrum is a subsequent check, not part of either evaluator.

**Verified:** Mathematica checks the symbolic radial identities and moment reductions; an independent Wolfram implementation gives 108 zero residuals for the scalar equation, momentum equation, and coefficient (9), at $n,m=0,1,2$ with all four frequency signs and symbolic $\Delta$. Four direct contact quadratures at $\Delta=5/4,3/2,7/3$ agree with (16) to better than $10^{-24}$. xAct/xCoba with xTras confirms the momentum divergence and traceless-tensor contraction. Sage checks primary normalization, lowering, exchange parity, chiral orthogonality, and circular inversion through level 8 at $\Delta=3/2,2,7/3$. Symbolic reconstruction through $N=4$ gives nine primary coefficients and zero off-diagonal residuals. Twelve independent angular calculations agree with the circular result; a separate, subsequent comparison of the nine symbolic coefficients with the existing compact spectrum also gives zero residuals. The all-label arguments are (6), (9), (11)–(18), and the invertibility proof for (21); the finite checks do not replace those arguments.

**Assumptions:** The maximal/conformal Hamiltonian and its canonical boundary section; fixed physical mass and standard fast falloff $\Delta>1$; connected tree four-leg extraction; the boundary-completed Ward identity (1). The additional full-degeneracy Ward arguments and one-body renormalization are inputs when interpreting the result as physical scalar-branch energies.

**Not verified:** A new all-label summation of (16) and (21) into the previously stated compact three-case spectrum; an independent rederivation of the complete graviton-external quantum problem; alternate or BF quantization; or higher orders. The result established here is the direct, fully evaluated finite-sum method for arbitrary labels, with the explicit analytic and numerical examples recorded above and in the supporting checks.
