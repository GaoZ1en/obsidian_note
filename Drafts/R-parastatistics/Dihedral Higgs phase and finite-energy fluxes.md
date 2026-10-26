# Dihedral Higgs phase and finite-energy fluxes

## Result

**There is an explicit nonnegative quartic classical Higgs potential with exactly one vacuum orbit $SU(3)/D_8$, a positive transverse Hessian, and smooth finite-energy configurations carrying nontrivial reflection flux.** Here $D_8$ is the dihedral group of order eight, not the quaternion group. Every gauge boson has a strictly positive classical quadratic mass. The potential is superrenormalizable by $2+1$-dimensional power counting.

This supplies a concrete classical starting point for the finite-gauge route in [Quantum double exchanges and exterior disjointness](</Users/koishi/Documents/Note/Drafts/R-parastatistics/Quantum double exchanges and exterior disjointness.md>). **It does not construct a continuum quantum theory, an attained vortex solution, a finite-mass dyon, or an exterior-disjoint charged representation.** In fact the explicit flux trial profiles below fail the gauge field equation, including at their optimal scale. The original interacting $R$-parastatistics target remains open.

## 1. Fields, kinetic terms, and conventions

Work in $2+1$ dimensions with $\eta=\operatorname{diag}(+,-,-)$ and $\hbar=c=1$. The gauge group is the simply connected group $SU(3)$, with no Chern–Simons term. Write

$$
\mathcal L=-\frac12\operatorname{Tr}F_{\mu\nu}F^{\mu\nu}
+\sum_{\Phi=\Sigma,T,Y,K}\langle D_\mu\Phi,D^\mu\Phi\rangle-V,
\qquad D=\partial-igA,
\qquad \operatorname{Tr}(T_aT_b)=\frac12\delta_{ab}.
\tag{1.1}
$$

Take $g,v,t,\beta>0$. All Higgs fields are complex. Upper indices transform with $U$ and lower indices with $\bar U$:

$$
\begin{aligned}
\Sigma&\in\operatorname{Sym}^2\mathbf3, &\dim_{\mathbb C}&=6,\\
T&\in\operatorname{Sym}^4\mathbf3, &\dim_{\mathbb C}&=15,\\
Y&\in\operatorname{Sym}^3\mathbf3\otimes\bar{\mathbf3}, &\dim_{\mathbb C}&=30,\\
K&\in\operatorname{Sym}^2\mathbf3\otimes\operatorname{Sym}^2\bar{\mathbf3}, &\dim_{\mathbb C}&=36.
\end{aligned}
\tag{1.2}
$$

The representations of $Y$ and $K$ are the full reducible representations $24\oplus6$ and $27\oplus8\oplus1$. No traceless projection is imposed.

All norms are inherited **full tensor Hilbert norms**, summing every ordered index tuple, without $1/r!$ factors. In particular, a symmetric component with distinct permutations contributes its full multiplicity. Complex scalar kinetic terms in (1.1) have no additional factor $1/2$.

The desired vacuum is

$$
\Sigma_0=vI,
\qquad T_0=t\,e_1^{\otimes4}+t\,e_2^{\otimes4}+2t\,e_3^{\otimes4}.
\tag{1.3}
$$

Define the equivariant polynomial maps

$$
h_Y^{ijk}{}_l=\beta T^{ijka}\bar\Sigma_{al},
\qquad
h_K^{ij}{}_{kl}=\beta T^{ijab}\bar T_{abkl}.
\tag{1.4}
$$

The remaining vacuum values are $Y_0=h_Y(\Sigma_0,T_0)$ and $K_0=h_K(T_0)$. Their only nonzero components have all four numerical indices equal: $Y_0$ has entries $\beta vt(1,1,2)$ and $K_0$ has entries $\beta t^2(1,1,4)$.

## 2. The explicit quartic potential

With $\epsilon_{123}=1$, define

$$
A(T)_{ijkl}=\frac12\epsilon_{iab}\epsilon_{jcd}
\epsilon_{kef}\epsilon_{lgh}\,T^{aceg}T^{bdfh}.
\tag{2.1}
$$

This has four lower indices. Its complex conjugate therefore transforms in the same ambient tensor representation as $T$. Set

$$
\begin{aligned}
\widehat R^{ij}{}_{kl}
&=\beta^{-1}\bigl(Y^{ijb}{}_k\bar\Sigma_{bl}
-\Sigma^{bj}\bar Y_{klb}{}^i\bigr),\\
\widehat C^{ijklmn}
&=\beta^{-1}\bigl(Y^{ijm}{}_bT^{bkln}
-Y^{ijn}{}_bT^{bklm}\bigr),\\
\widehat F^{ijkl}
&=\beta^{-1}K^{ij}{}_{cd}T^{cdkl}
-5t^2T^{ijkl}+2t\overline{A(T)}^{ijkl},\\
\widehat L
&=\beta^{-1}Y^{ijb}{}_i\bar\Sigma_{bj}-4v^2t,\\
N&=\|T\|^2-6t^2.
\end{aligned}
\tag{2.2}
$$

Every repeated index is summed from 1 to 3. Let

$$
V_\Sigma=\lambda_\Sigma\left\{
\operatorname{Tr}[(\Sigma^\dagger\Sigma)^2]
-v^2\operatorname{Tr}(\Sigma^\dagger\Sigma)
-v(\det\Sigma+\overline{\det\Sigma})+2v^4\right\}.
\tag{2.3}
$$

The complete potential is

$$
\begin{aligned}
V={}&V_\Sigma+M_Y^2\|Y-h_Y\|^2+M_K^2\|K-h_K\|^2\\
&+c_R\|\widehat R\|^2+c_C\|\widehat C\|^2
+c_F\|\widehat F\|^2+c_L|\widehat L|^2+\lambda_NN^2,
\end{aligned}
\tag{2.4}
$$

where every coefficient displayed in (2.3)–(2.4) is strictly positive. Contractions with the invariant Hermitian pairing and the $SU(3)$ epsilon tensor establish gauge invariance, including away from the graph (1.4).

### Tensor outputs must not be silently projected

The output $\widehat F$ is generally **not** in $\operatorname{Sym}^4\mathbf3$. Keep all 81 ordered components in its norm. Even on the graph (1.4), $T\bar TT$ need not be fully symmetric. For example, let a real symmetric $T$ have value 1 on the permutations of $1122$ and zero otherwise. Ordered-pair composition gives

$$
(T\bar TT)^{1122}=1,
\qquad (T\bar TT)^{1212}=4.
\tag{2.5}
$$

The other terms in $F$ are fully symmetric and cannot remove this difference. Likewise $\widehat R$ need not have independent pair symmetries off the graph. The $m,n$ indices of $\widehat C$ are antisymmetric. The full inherited norms in (2.4), rather than additional projections, define the model.

### Polynomial degree and dimensions

In three spacetime dimensions,

$$
[\Sigma]=[T]=[Y]=[K]=[v]=[t]=[g]=\frac12,
\qquad [\beta]=-\frac12.
\tag{2.6}
$$

Each hatted quantity in (2.2) has dimension $3/2$, while $[N]=1$. Thus

$$
[c_R]=[c_C]=[c_F]=[c_L]=0,
\quad [\lambda_\Sigma]=[\lambda_N]=1,
\quad [M_Y^2]=[M_K^2]=2.
$$

Every field monomial in the expanded potential has degree at most four. Although the $c$ coefficients are dimensionless in this parametrization, their actual quartic interaction coefficients contain $\beta^{-2}$, of dimension 1. Cubic interaction coefficients have dimension $3/2$ and quadratic coefficients dimension 2. All interaction couplings therefore have positive engineering dimension. This is a power-counting statement, not a constructive quantum existence theorem.

## 3. Nonnegativity and the complete zero set

### 3.1 The symmetric matrix vacuum

Let $r^2=\operatorname{Tr}(\Sigma^\dagger\Sigma)/3$. The singular values give

$$
\operatorname{Tr}[(\Sigma^\dagger\Sigma)^2]\ge3r^4,
\qquad \operatorname{Re}\det\Sigma\le|\det\Sigma|\le r^3.
$$

Consequently

$$
V_\Sigma\ge\lambda_\Sigma(r-v)^2(3r^2+4vr+2v^2)\ge0.
\tag{3.1}
$$

The potential vanishes precisely when

$$
\Sigma^\dagger\Sigma=v^2I,
\qquad \det\Sigma=v^3.
\tag{3.2}
$$

Takagi factorization then gives $\Sigma=vUU^T$ with $U\in SU(3)$. A unitary Takagi factor with determinant $-1$ is corrected by a real orthogonal factor of determinant $-1$, without changing $UU^T$. Thus the zero set of $V_\Sigma$ is exactly the $SU(3)$ orbit of $vI$.

The complete potential is coercive on the finite-dimensional Higgs field space: (3.1) bounds $\Sigma$ on each sublevel set; $N^2$ bounds $T$; the two graph penalties then bound $Y$ and $K$. This is not a compactness assertion for spatially varying fields on the infinite plane.

### 3.2 Reduction to three real numbers

At a zero of $V$, the penalties force $Y=h_Y$ and $K=h_K$. Denote the restrictions of the hatted expressions to this graph by $R,C,F,L$. Gauge-fix $\Sigma=vI$. Then

$$
R=v^2(T-\bar T),
$$

so $R=0$ makes $T$ real. Define real symmetric slice matrices

$$
(M^{ij})_{mn}=T^{ijmn}.
$$

In this gauge,

$$
C^{ijklmn}=v[M^{ij},M^{kl}]_{mn}.
\tag{3.3}
$$

Hence $C=0$ makes all slices mutually commuting. Simultaneous orthogonal diagonalization and full symmetry of $T$ imply

$$
T=\sum_{a=1}^3\lambda_a e_a^{\otimes4}.
\tag{3.4}
$$

Indeed, after diagonalizing every slice, a component can survive only if its last two indices coincide; full symmetry imposes this on every pair. The orthogonal diagonalizing frame can be made orientation-preserving by a sign change, invisible to the fourth powers.

For (3.4), $A(T)_{aaaa}=\lambda_b\lambda_c$ for the other two indices $b,c$. With $x_a=\lambda_a/t$, the remaining equations are

$$
\sum_a x_a=4,
\qquad \sum_a x_a^2=6,
\qquad x_a^3-5x_a+2x_bx_c=0.
\tag{3.5}
$$

The first two imply $\sum_{a<b}x_ax_b=5$, hence $x_bx_c=x_a^2-4x_a+5$. Each cubic becomes

$$
(x_a-1)(x_a-2)(x_a+5)=0.
\tag{3.6}
$$

The norm constraint excludes $-5$. The sum then leaves exactly the multiset $\{1,1,2\}$. All its permutations belong to the same $SO(3)$ orbit. Conversely (1.3) solves every equation. The zero set of the full potential is therefore exactly

$$
\mathcal Z=\{(U\Sigma_0U^T,U^{\otimes4}T_0,
U\cdot Y_0,U\cdot K_0):U\in SU(3)\}.
\tag{3.7}
$$

Both $L$ and $N$ are included in this model. The sum-of-squares system with them omitted has additional zeros and cannot be substituted in this argument.

### 3.3 Exact stabilizer and global form

Stabilizing $\Sigma_0=vI$ inside $SU(3)$ forces $U$ into $SO(3)$. The contraction

$$
T_0^{ijkk}=t\operatorname{diag}(1,1,2)^{ij}
$$

then preserves the third axis as an unoriented line. On its orthogonal plane, invariance of $x^4+y^4$ leaves precisely the signed permutations of the two axes. The determinant-one condition fixes the sign on the third axis. There are exactly eight elements, generated by

$$
r=\begin{pmatrix}0&-1&0\\1&0&0\\0&0&1\end{pmatrix},
\qquad s=\operatorname{diag}(1,-1,-1),
\qquad r^4=s^2=1,\quad srs=r^{-1}.
\tag{3.8}
$$

The graph values of $Y_0,K_0$ do not change this stabilizer. Thus $\mathcal Z\simeq SU(3)/D_8$, with one gauge-inequivalent minimum. Some sources call this order-eight group $D_4$; it is not $Q_8$.

Because $SU(3)$ is simply connected,

$$
\pi_1(SU(3)/D_8)\cong D_8.
\tag{3.9}
$$

These are based flux labels; changing the asymptotic reference conjugates them. Starting instead with $SO(3)$ would give the inverse image of $D_8$ in $SU(2)$, not the same fundamental group. The classical vacuum orbit here is not a claim of gauge-noninvariant symmetry breaking in a quantum vacuum.

## 4. No nongauge scalar flat directions

Write $\delta\Sigma=S+iP$, with $S,P$ real symmetric. Direct expansion of the actual quartic (2.3), not a replacement determinant-square potential, gives

$$
V_\Sigma(vI+\varepsilon(S+iP))
=\lambda_\Sigma v^2\varepsilon^2
\left[6\operatorname{Tr}S^2-(\operatorname{Tr}S)^2
+(\operatorname{Tr}P)^2\right]+O(\varepsilon^3).
\tag{4.1}
$$

The quadratic form vanishes exactly for $S=0$, $\operatorname{Tr}P=0$. These five directions are the symmetric-traceless $SU(3)$ gauge tangents, since $\delta\Sigma=2ivA$ for real symmetric traceless $A$.

First restrict to the graph (1.4). A null vector of the reduced Hessian can be gauge-shifted to $\delta\Sigma=0$. The linearized $R$ equation then kills $\operatorname{Im}\delta T$. Put $X=\operatorname{Re}\delta T$ and $\lambda=(t,t,2t)$. The linearized commutator equations imply

$$
\begin{gathered}
X_{iijj}=0,\qquad X_{iijk}=0\quad(i,j,k\ \text{distinct}),\\
\lambda_jX_{iiij}+\lambda_iX_{ijjj}=0\quad(i<j).
\end{gathered}
\tag{4.2}
$$

These nine independent conditions leave three diagonal changes $\delta\lambda_i$ and three infinitesimal $SO(3)$ rotations. One direct check is the full-norm identity

$$
\begin{aligned}
\|D\mathcal C_{T_0}(X)\|^2={}&4\sum_{i<j}(\lambda_jX_{iiij}+\lambda_iX_{ijjj})^2\\
&+8\sum_{i<j}(\lambda_i^2+\lambda_j^2)X_{iijj}^2\\
&+4\sum_i(4\lambda_i^2+3\lambda_j^2+3\lambda_k^2)X_{iijk}^2,
\end{aligned}
\tag{4.3}
$$

where $\mathcal C^{ij,kl}=[M^{ij},M^{kl}]$, and $j,k$ in the last sum are the two other indices. Since $C=v\mathcal C$, its squared derivative norm has the additional factor $v^2$.

On the diagonal changes, the $F$ derivative is

$$
DF=t^2\begin{pmatrix}-2&4&2\\4&-2&2\\2&2&7\end{pmatrix},
\qquad \det DF=-36t^6\ne0.
\tag{4.4}
$$

It eliminates all three diagonal changes. The reduced 42-real-dimensional Hessian consequently has signature $(34\text{ positive},8\text{ zero})$, with kernel exactly the gauge orbit tangent. This proof holds for all positive coefficients and $v,t>0$; it does not infer a derivative rank from a count of invariant values.

For the complete model, a Hessian null vector must also satisfy

$$
\delta Y=Dh_Y\,\delta(\Sigma,T),
\qquad \delta K=Dh_K\,\delta T.
\tag{4.5}
$$

The converse holds for reduced null vectors. The complete 174-real-dimensional scalar Hessian therefore has **166 positive directions and eight gauge zero modes**. The latter are the classical Goldstone directions eaten by the eight massive gauge fields.

This kernel correspondence does not identify nonzero scalar masses. The fields $Y,K$ have positive kinetic terms and propagate. At finite $M_Y,M_K$, substituting (1.4) is neither an exact integration over those fields nor the general solution of their equations: the other squared constraints can displace their minimizing values away from the graph. Only the zero set and Hessian-kernel statements above are exact consequences of the graph penalties.

## 5. Complete classical gauge mass matrix

Use the standard Gell-Mann order $T_a=\lambda_a/2$; $T_2,T_5,T_7$ are imaginary antisymmetric. Define

$$
u=t^2(1+\beta^2v^2),\qquad w=\beta^2t^4.
\tag{5.1}
$$

Here $T_a\Phi$ denotes the sum of $T_a$ acting on each upper slot and $-\bar T_a$ acting on each lower slot. The quadratic kinetic term is

$$
\mathcal L_{A^2}=g^2 A^a_\mu A^{b\mu}\,
\operatorname{Re}\sum_\Phi\langle T_a\Phi_0,T_b\Phi_0\rangle
=\frac12 A^a_\mu(M^2)_{ab}A^{b\mu}.
\tag{5.2}
$$

Thus the physical mass matrix contains a factor **$2g^2$** multiplying this real Gram matrix. It is diagonal, with

| $a$ | $(M_a^2)/g^2$ |
| --- | --- |
| 1 | $4v^2+4u+4w$ |
| 2 | $4u+4w$ |
| 3 | $4v^2+16t^2+4\beta^2v^2t^2$ |
| 4, 6 | $4v^2+10u+34w$ |
| 5, 7 | $10u+34w$ |
| 8 | $4v^2+48t^2+12\beta^2v^2t^2$ |

For reproducibility, the separate contributions to $M^2/g^2$, in order $a=1,\ldots,8$, are

$$
\begin{aligned}
\Sigma &: v^2(4,0,4,4,0,4,0,4),\\
T &: t^2(4,4,16,10,10,10,10,48),\\
Y &: \beta^2v^2t^2(4,4,4,10,10,10,10,12),\\
K &: \beta^2t^4(4,4,0,34,34,34,34,0).
\end{aligned}
\tag{5.3}
$$

Every total diagonal mass-squared entry is positive under the stated assumptions. Omitting the auxiliary Higgs kinetic terms would miss their contributions, even at the vacuum. These are tree-level classical normal-mode masses, not a proof of isolated quantum mass shells.

## 6. An explicit smooth reflection-flux family

### 6.1 Fields and boundary conditions

Let $H=T_7$, so $H_{23}=-i/2$, $H_{32}=i/2$, and $\operatorname{Tr}H^2=1/2$. In polar coordinates $(r,\varphi)$ on the spatial plane, set

$$
U(\varphi)=e^{i\varphi H},\qquad U(2\pi)=s.
$$

For any $R>0$, take

$$
\begin{gathered}
f(r)=e^{-R^2/r^2},\quad f(0)=0,
\qquad a(r)=1-e^{-r^2/R^2},\\
A_0=0,\qquad A=\frac Hg\,a(r)d\varphi,
\qquad \Sigma=vI,\\
T=f(r)U(\varphi)^{\otimes4}T_0,
\qquad Y=h_Y(\Sigma,T),\qquad K=h_K(T).
\end{gathered}
\tag{6.1}
$$

The angular tensors are $2\pi$-periodic because $s$ stabilizes the vacuum tuple. They have finitely many integer Fourier harmonics; multiplication by the flat functions $f$ or $f^2$ makes their extension through the origin smooth. Although $U$ itself need not extend through the origin, the fields do. The connection is also smooth:

$$
A=\frac Hg\frac{1-e^{-r^2/R^2}}{r^2}(-y\,dx+x\,dy).
\tag{6.2}
$$

There is no delta-function magnetic source. The Wilson holonomy is

$$
W(r)=e^{2\pi i a(r)H}\longrightarrow s\quad(r\to\infty).
\tag{6.3}
$$

By the full vacuum-orbit result and (3.9), this is the nontrivial based flux $s$. Its unbased label is the conjugacy class $\{s,r^2s\}$.

At infinity $f=1-R^2/r^2+O(r^{-4})$, $f'=O(r^{-3})$, while $1-a$ is Gaussian. The scalar gradient and potential tails are integrable. Since $A_0=0$ and all fields are static, this family has no classical electric field or charge density. It is not a dyon construction.

### 6.2 Exact energy

For $u,w$ from (5.1), the scalar gradient density is

$$
6u f'^2+72w f^2f'^2
+\frac{(1-a)^2}{r^2}(5u f^2+17w f^4).
\tag{6.4}
$$

The relevant full tensor norms are

$$
\|T_0\|^2=6t^2,\quad \|H\cdot T_0\|^2=5t^2,
\quad \|K_0\|^2=18\beta^2t^4,\quad
\|H\cdot K_0\|^2=17\beta^2t^4.
\tag{6.5}
$$

The $Y$ contribution is $\beta^2v^2$ times the $T$ contribution. The magnetic energy is $\pi/(g^2R^2)$, using $F_{12}=Ha'/(gr)$ and the normalization in (1.1).

Along (6.1), $V_\Sigma$, both graph penalties, $R$, and $C$ vanish. The remaining terms obey

$$
\begin{aligned}
\|F\|^2&=6t^6 f^2(f-1)^2(11f^2+30f+25),\\
|L|^2&=16v^4t^2(f-1)^2,\\
N^2&=36t^4(f^2-1)^2.
\end{aligned}
\tag{6.6}
$$

Let $\mathrm K_0$ denote the modified Bessel function, not the tensor vacuum $K_0$. Define

$$
\begin{aligned}
I_F&=-38\log2+3\log3+20\log5
=9.1450022534\ldots>0,\\
E_0&=\pi u[6+10\mathrm K_0(4)]
+\pi w[18+34\mathrm K_0(4\sqrt2)],\\
\mathcal D&=12c_Ft^6 I_F+32c_Lv^4t^2\log2
+144\lambda_Nt^4\log2.
\end{aligned}
\tag{6.7}
$$

Then the exact trial energy is

$$
\boxed{E(R)=\frac{\pi}{g^2R^2}+E_0+\pi\mathcal D R^2.}
\tag{6.8}
$$

For example, with $x=r/R$, the radial and angular integrals reduce to

$$
\begin{gathered}
\int_0^\infty x(\partial_x e^{-1/x^2})^2dx=\frac12,
\qquad
\int_0^\infty x(\partial_x e^{-2/x^2})^2dx=\frac12,\\
\int_0^\infty\frac{dx}{x}e^{-2x^2-2/x^2}=\mathrm K_0(4),
\qquad
\int_0^\infty\frac{dx}{x}e^{-2x^2-4/x^2}=\mathrm K_0(4\sqrt2),\\
\int_0^\infty x(1-e^{-1/x^2})^2dx=\log2,
\qquad
\int_0^\infty x(1-e^{-2/x^2})^2dx=2\log2.
\end{gathered}
\tag{6.9}
$$

For the $F$ term, the substitution $z=1/x^2$ gives

$$
I_F=\frac12\int_0^\infty\frac{
25e^{-2z}-20e^{-3z}-24e^{-4z}+8e^{-5z}+11e^{-6z}}{z^2}\,dz.
\tag{6.10}
$$

Both the coefficient sum and its exponent-weighted sum vanish. Integration by parts followed by the Frullani identity evaluates it as (6.7). The original positive polynomial integrand proves positivity without relying on rounded logarithms.

Since $\mathcal D>0$ for the specified model,

$$
R_*^4=\frac1{g^2\mathcal D},
\qquad E_{\mathrm{family,min}}=E_0+\frac{2\pi\sqrt{\mathcal D}}g.
\tag{6.11}
$$

Here $[\mathcal D]=3$, $[E_0]=1$, $[R]=-1$, as required.

### 6.3 Why this is not a soliton mass

Holding the scalar profiles fixed, the gauge Euler–Lagrange equation along $H$ is

$$
a''-\frac{a'}r+2g^2 B(f)(1-a)=0,
\qquad B(f)=5uf^2+17wf^4.
\tag{6.12}
$$

For (6.1), its residual is

$$
e^{-r^2/R^2}\left[2g^2B(f)-\frac{4r^2}{R^4}\right].
\tag{6.13}
$$

It cannot vanish identically for any finite $R$, since $B(f)$ tends to a finite constant. A smooth compactly supported variation of $a$ can lower the energy without changing the flux. In particular, optimizing $R$ does not solve the full field equations. For the class $\mathcal C_s$ with this fixed asymptotic flux,

$$
0\le\inf_{\mathcal C_s}E
<E_0+\frac{2\pi\sqrt{\mathcal D}}g<\infty.
\tag{6.14}
$$

The strict upper bound uses (6.13); attainment, a positive lower bound, stability of a solution, and quantization of its collective coordinates are not established here. If one instead allows coefficients to vanish so that $\mathcal D=0$, the displayed family has infimum $E_0$ only as $R\to\infty$, not a finite optimal scale.

## 7. What this does and does not supply for the statistical problem

The finite-gauge algebraic candidate is the reflection-flux class $\{s,r^2s\}$ with a centralizer character

$$
\chi(s)=\epsilon,\qquad\chi(r^2)=\tau,
\qquad\epsilon,\tau\in\{\pm1\}.
$$

In the untwisted quantum-double category the checked exchange is

$$
c=\begin{pmatrix}
\epsilon&0&0&0\\
0&0&\epsilon\tau&0\\
0&\epsilon\tau&0&0\\
0&0&0&\epsilon
\end{pmatrix},\qquad c^2=I.
\tag{7.1}
$$

The desired non-onsite color flip has $\tau=-1$. The adjoint linearized gauge modes in each pair $(T_4,T_6)$ and $(T_5,T_7)$ transform as an electric standard $D_8$ doublet. Conjugation by $r$ sends $T_4\mapsto T_6\mapsto-T_4$ and $T_5\mapsto T_7\mapsto-T_5$; conjugation by $s$ has diagonal signs $(-,+)$ on either pair. Hence $r^2$ acts by $-I$, while $s$ has both eigenvalues. Thus the classical model contains electric-mode representation candidates for the two $\tau=-1$ centralizer channels. This does not prove an electric particle binds to a reflection flux or that either dyon channel has an isolated quantum mass shell.

There are three separate remaining issues.

1. **Continuum and particles.** Construct a positive physical quantum representation with relativistic covariance and local observables; retain a finite-gap Higgs regime and obtain the flux and dyon sectors as actual finite-energy representations. Classical coercivity and power counting do not establish these facts. For a stable isolated dyon, a concrete sufficient spectral target is energy below every allowed breakup threshold, not merely a tensor-product charge label.
2. **Interactions and exchange.** Derive scattering or other nontrivial dynamics of those actual charges and identify their exchange with (7.1). The Lagrangian is nonlinear, but this alone is not a calculation of dyon scattering. Self-involution of this chosen object also does not make the whole finite-gauge charge category symmetric. Its fixed-$R$ permutation characters are ordinary Bose/Fermi characters, as proved in [the quantum-double analysis](</Users/koishi/Documents/Note/Drafts/R-parastatistics/Quantum double exchanges and exterior disjointness.md>); any proposed novelty must concern the full local realization, not new fixed-$R$ counting.
3. **Complete-parent exclusion.** For each bounded double cone $O$, use the actual additive exterior
   $$E_O=C^*\{\mathcal A(D):D\subset O',\ D\text{ a bounded double cone}\}.$$
   One needs $\operatorname{Hom}_{E_O}(\pi_0,\pi_s)=0$, or sufficient hypotheses that imply it. Nontransparent BF braiding, vacuum type-III local factors, and the additional charged-exterior factoriality conditions give the conditional route already proved in [the exterior-disjointness note](</Users/koishi/Documents/Note/Drafts/R-parastatistics/Quantum double exchanges and exterior disjointness.md>). Those conditions have not been verified for this model. A Wilson-holonomy value such as (6.3) is not itself an additive-exterior operator-sequence proof.

The ordinary bosonic variables in (1.1) are not, just by being written down, a **complete bounded-local parent** producing magnetic sectors from one vacuum. Conversely, failure of that particular set of variables to create flux is not a proof excluding every other parent. The comparison requires the completeness condition in [Complete field nets and R-parastatistics](</Users/koishi/Documents/Note/Drafts/R-parastatistics/Complete field nets and R-parastatistics.md>).

A concrete next classical question is whether the energy infimum in a reflection sector is attained and stable. A separate spectral question is whether an electric standard-doublet excitation has a bound mode below its asymptotic threshold in that actual vortex background. Neither question is answered by the trial minimization (6.11).

## 8. Scope of the literature inputs

The cited finite-gauge papers motivate this route but do not replace its missing quantum steps.

- [hep-th/9203046v1](https://arxiv.org/abs/hep-th/9203046v1), PDF/printed p.3, explicitly takes the symmetry-breaking scale and all masses to infinity and restricts subsequent statements to that limit.
- [hep-th/9511201v2](https://arxiv.org/abs/hep-th/9511201v2), PDF20/printed p.18, allows the low-energy regime **or**, alternatively, infinite Higgs and gauge masses. It must not be described as requiring that limit in every use. PDF80/printed p.78 identifies the treatment as first-quantized point particles; canonical creation operators are a distinguished further step, with the cited work listed as “in preparation” on PDF83/printed p.81.
- [hep-th/9511195v1](https://arxiv.org/abs/hep-th/9511195v1), PDF142/printed p.135, suggests $SU(3)\to H$ or $SU(3)\to SO(3)\to H$ and explicitly declines to study those embeddings further. It does not provide the representations and potential above. Its worked quaternion example $\bar D_2=Q_8$ is not the ordinary order-eight dihedral group.
- The review's PDF31–32/printed pp.29–30, (1.4.2)–(1.4.6), distinguishes $\pi_1(G/H)=\widetilde H$ from the dynamical quotient of fluxes by available monopole/instanton transitions. Such transitions do not change the mathematical fundamental group. Choosing simply connected $SU(3)$ avoids that lift ambiguity here.
- [2201.03487v2](https://arxiv.org/abs/2201.03487v2), Theorems 1.7 and 1.9 on pp.12–14, constructs local stochastic-time YMH dynamics on $T^3$, allowing finite-time explosion. It does not construct a Minkowski QFT. [2503.03060v2](https://arxiv.org/abs/2503.03060v2), Theorem 1.6 on p.7, strengthens the intrinsic uniqueness of gauge-covariant Yang–Mills mass renormalization; p.2 explicitly states that existence of the invariant YMH measure remains open. Neither paper supplies an OS measure for the model here.

Exact versions, page images, quotations, and hashes are preserved in the independent [primary-source verification index](</Users/koishi/.dsh/research-results/discrete-gauge-primary.QnrItO/verification.md>). These scope statements are not nonexistence claims or an exhaustive survey of constructive gauge theory.

## Verification and boundaries

**Verified:** The [exact Sage script](</Users/koishi/Documents/Note/Drafts/R-parastatistics/dihedral_higgs_phase_checks.sage>) checks target zeros, eight residual matrices, nonreal $SU(3)$ covariance on and off the auxiliary graph, the full-component rather than projected $F$, the reduced Jacobian rank $34/42$ and eight explicit gauge null vectors, the real slice ranks $9$ and $12$, the global scalar polynomial, the nonnegative radial factorization, all four symbolic gauge-mass contributions, and the flux-potential polynomial. Its final checked SHA-256 is `215c0adb2d61a68cd95c4f9a0939fff2ba81845cd1358f7fb17bb538917bd24b`; see the [Sage execution record](</Users/koishi/.dsh/research-results/session-df06cdae54f5/9aa6781ca043-research-result-readable.txt>). The finite covariance examples and ranks are checks; the invariant contractions and analytic proofs establish the general claims.

Independent fresh audits checked the global zero-set and derivative-kernel argument, the auxiliary-field completion and its limitations, the flux energy, and the complete gauge-mass normalization. The flux audit also independently found the nonzero gauge Euler–Lagrange residual. Its [tensor/integral evidence](</Users/koishi/.dsh/research-results/session-1361d32cd54a/b74d588bf97c-research-result.json>), [gauge Gram and direct energy quadrature](</Users/koishi/.dsh/research-results/session-1361d32cd54a/ed1577c37ed7-research-result.json>), and [field-equation residual](</Users/koishi/.dsh/research-results/session-1361d32cd54a/8c13c41299b9-research-result.json>) are preserved. At all unit positive parameters and $R=1$, direct radial quadrature gives $E=826.2968285096655893\ldots$, agreeing with (6.8).

A further [Wolfram integral check](</Users/koishi/.dsh/research-results/session-df06cdae54f5/63974caa1c05-research-result-readable.txt>) verifies five radial/angular identities exactly, the logarithmic potential integral by its coefficient identity, three potential integrals numerically at 50-digit working precision with error below $10^{-28}$, and (6.13). Every reported check passed with no kernel messages. A separate fresh audit preserves its [full gauge Gram calculation](</Users/koishi/.dsh/research-results/session-dc55fe04f216/0fdab878572a-research-result-readable.txt>) and [twelve-component quartic Sigma expansion](</Users/koishi/.dsh/research-results/session-dc55fe04f216/f72c7b790da1-research-result-readable.txt>), including the five-dimensional gauge kernel and nonzero higher-order variation along a straight traceless-imaginary tangent.

**Assumptions:** All coefficients in (2.3)–(2.4), $g,v,t,\beta$, and the trial scale $R$ are strictly positive unless a stated limiting case is being discussed. The fields use the full representations and full tensor kinetic norms in §1. The symmetry breaking and mass statements are classical. The topological label uses the complete vacuum orbit, not merely the stabilizer of a selected field value.

**Not verified:** Quantum existence, reflection positivity or Minkowski reconstruction, preservation of the Higgs regime under renormalization, an attained stationary vortex, quantum dyon binding, charged scattering, or exterior disjointness. No nonzero scalar mass spectrum is inferred by integrating out the propagating auxiliary fields. Nothing here completes the original new-$R$ interacting construction or a universal no-go theorem.
