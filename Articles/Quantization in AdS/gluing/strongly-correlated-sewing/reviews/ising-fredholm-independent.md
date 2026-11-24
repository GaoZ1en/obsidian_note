# Critical NS Majorana covariance: an independent Fredholm-limit proof

Date: 2026-11-07. This review starts from the explicitly specified finite covariance, not from Fisher–Hartwig asymptotics or a CFT prediction. The additional scalar singular-integral calculation below evaluates the resulting relative Fredholm determinant. No existing research text is changed by this review.

## Result and precise scope

Let $N$ be even, $L>0$ fixed, $a=L/N$, and

$$
\Gamma_N=\begin{pmatrix}0&C_N\\-C_N^T&0\end{pmatrix},
\qquad
(C_N)_{ij}=\frac1{N\sin[\pi(j-i+1/2)/N]},\qquad 0\leq i,j<N.
$$

The two components are the odd/even Majoranas, with **antiperiodic/NS** boundary conditions. Let two site intervals converge to fixed arcs $A_1=(a_1,b_1)$ and $A_2=(a_2,b_2)$ on the circle, with both lengths and both separating gaps strictly positive. Endpoint rounding by $O(a)$ suffices; the proof only needs endpoint convergence. There are two Majoranas per retained site. Write $\Gamma_{ij,N}$ for the corresponding interval blocks and, for $s_1,s_2\in\{+1,-1\}$, define

$$
D_N(s_1,s_2)=
\frac{\det\begin{pmatrix}s_1I+\Gamma_{11,N}&\Gamma_{12,N}\\
\Gamma_{21,N}&s_2I+\Gamma_{22,N}\end{pmatrix}}
{\det(I+\Gamma_{11,N})\det(I+\Gamma_{22,N})}.
$$

Choose cyclically ordered lifts $a_1<b_1<a_2<b_2<a_1+L$. Set

$$
\eta=
\frac{\sin[\pi(b_1-a_1)/L]\sin[\pi(b_2-a_2)/L]}
{\sin[\pi(a_2-a_1)/L]\sin[\pi(b_2-b_1)/L]},
\qquad q=1-\eta\in(0,1).
$$

**Theorem for this covariance and these four sign choices:**

$$
\boxed{\lim_{N\to\infty}D_N(s_1,s_2)=q^{-s_1s_2/8}.}
$$

In particular, $D(s,s)=q^{-1/8}$ and $D(-s,s)=q^{1/8}$.

There are two logically separate results:

1. Exact NS Fourier diagonalization, strong convergence of diagonal compressions, separated-cross-block Hilbert–Schmidt convergence, and a Schur complement prove convergence to a relative Fredholm determinant.
2. An explicit scalar Cauchy Riemann–Hilbert calculation evaluates that Fredholm determinant. The abstract convergence assumptions alone do **not** determine the crossratio exponent.

This is not a theorem about all spin-structure sectors, the complete disjoint-spin-interval replica observable, arbitrary interacting chains, or any additional project-level claim called T3. Those are not supplied by the argument below.

## 1. Exact staggered-grid NS embedding

Work in the complexification $\mathcal H=L^2_{\rm NS}([0,L])$, with antiperiodic extension $f(x+L)=-f(x)$. Its orthonormal Fourier basis is

$$
\phi_p(x)=L^{-1/2}e^{2\pi ipx/L},\qquad p\in\mathbb Z+\tfrac12.
$$

The two sampling grids are genuinely different:

$$
x_i=ia,\qquad y_j=(j+\tfrac12)a.
$$

For the symmetric NS band

$$
\mathcal P_N=\{-N/2+1/2,-N/2+3/2,\ldots,N/2-1/2\},
$$

define unitary sampling matrices

$$
X_{ip}=N^{-1/2}e^{2\pi ipi/N},\qquad
Y_{jp}=N^{-1/2}e^{2\pi ip(j+1/2)/N}.
$$

Then the **exact**, finite-$N$ identity is

$$
\boxed{C_NY=X\,\operatorname{diag}_{p\in\mathcal P_N}(i\,\operatorname{sgn}p).}
$$

To check the multiplier, put $\theta_j=\pi(j+1/2)/N$. At row zero,

$$
\lambda_p=\frac1N\sum_{j=0}^{N-1}\frac{e^{2ip\theta_j}}{\sin\theta_j}.
$$

The cotangent sum $\sum_j\cot\theta_j=0$ gives $\lambda_{1/2}=i$, and complex conjugation gives $\lambda_{-1/2}=-i$. Also

$$
\lambda_{p+1}-\lambda_p=
\frac{2i}{N}\sum_{j=0}^{N-1}e^{2\pi i(p+1/2)(j+1/2)/N}.
$$

Inside the chosen band this sum vanishes except when crossing $p=-1/2$, where it is $2i$. Other rows follow by NS translation: both the sampled mode and the cosecant change sign under a shift by $N$, so their product is periodic. Consequently

$$
C_N^TC_N=C_NC_N^T=I,
\qquad \Gamma_N^2=-I,
\qquad \|\Gamma_N\|=1.
$$

### Piecewise-constant isometries

Let $E_N^x:\mathbb C^N\to\mathcal H$ send $v_i$ to $a^{-1/2}v_i$ on the cell centered at $x_i$, and define $E_N^y$ using cells centered at $y_i$. Cells crossing the coordinate cut carry the NS sign. These are isometries. For each fixed $p$, their sampled Fourier columns converge in $L^2$ to $\phi_p$:

$$
E_N^xX_{\cdot p}\longrightarrow\phi_p,
\qquad E_N^yY_{\cdot p}\longrightarrow\phi_p.
$$

Let

$$
T_N=E_N^xC_N(E_N^y)^*.
$$

Uniform boundedness, the exact multiplier identity, and density of finite Fourier sums imply

$$
T_N\xrightarrow{\rm strong}H,
\qquad T_N^*\xrightarrow{\rm strong}-H,
\qquad H\phi_p=i\operatorname{sgn}(p)\phi_p.
$$

The kernel of $H$ is

$$
\boxed{(Hf)(x)=\operatorname{PV}\int_0^L
\frac{f(y)}{L\sin[\pi(y-x)/L]}\,dy.}
$$

The integrand is interpreted in a consistent NS local frame. The multiplier can also be checked directly: the $p=1/2$ integral is $i$, and the Fourier-mode recurrence gives the remaining half-integer modes. Thus $H^*=-H$, $H^2=-I$, and $\|H\|=1$.

**There is no local $\delta$ term in this limit.** Such a term would shift every fixed Fourier multiplier, contradicting the exact limiting multipliers above. In particular, the nonzero lattice diagonal $C_{ii}\to2/\pi$ cannot be interpreted in isolation as a continuum contact term; its neighboring half-grid singular contributions cancel that inference. The $\delta$ term appearing later belongs to the inverse resolvent, not to $H$.

In the common two-component ambient space,

$$
G_N=\begin{pmatrix}0&T_N\\-T_N^*&0\end{pmatrix}
\xrightarrow{\rm strong}
G=\begin{pmatrix}0&H\\H&0\end{pmatrix}.
$$

## 2. Interval compression and separated cross blocks

Let $P_{r,N}$ be the orthogonal projection onto the embedded step functions with site labels in interval $r$, separately on the two staggered grids. Its two spatial supports differ only by a half-cell endpoint shift. Therefore

$$
P_{r,N}\xrightarrow{\rm strong}P_r,
\qquad P_r=\chi_{A_r}I_2.
$$

This follows first on continuous NS functions by cell averaging and endpoint convergence, then on all of $\mathcal H\oplus\mathcal H$ by the projection bound. Hence

$$
P_{r,N}G_NP_{r,N}\xrightarrow{\rm strong}P_rGP_r.
$$

Choose the circle cut strictly inside either positive gap. NS changes of local frame are orthogonal sign changes and do not affect any determinant under discussion. On the separated supports, the scalar kernel of the embedded $C_N$ block is the cellwise constant function

$$
\frac{(C_N)_{ij}}a=
\frac1{L\sin[\pi(y_j-x_i)/L]}.
$$

It converges uniformly away from endpoint strips to the smooth continuum cross kernel. Positive separation gives an $N$-independent bound, while the endpoint strips have measure tending to zero. Thus

$$
V_{12,N}:=P_{1,N}G_NP_{2,N}\longrightarrow G_{12}:=P_1GP_2
\quad\text{in }\mathfrak S_2,
$$

and likewise $V_{21,N}\to G_{21}$ in $\mathfrak S_2$. This step uses separation, not an asymptotic theorem for a determinant.

## 3. Schur complement and trace-norm convergence

For a skew-adjoint $B$ and a nonzero real $s$,

$$
\|(sI+B)^{-1}\|\leq |s|^{-1}.
$$

On the ambient space put

$$
R_{r,N}=P_{r,N}[s_rI+P_{r,N}G_NP_{r,N}]^{-1}P_{r,N}.
$$

For $s_r=\pm1$, these have norm at most one. Strong convergence of the compressed operators and the resolvent identity give

$$
R_{r,N}\xrightarrow{\rm strong}
R_r=P_r[s_rI+P_rGP_r]^{-1}P_r.
$$

If $B_N\to B$ strongly, $\sup\|B_N\|<\infty$, and $J_N\to J$ in $\mathfrak S_2$, then $B_NJ_N\to BJ$ in $\mathfrak S_2$. A finite-rank approximation to $J$ proves this elementary fact. Applying it twice gives

$$
K_N=R_{2,N}V_{21,N}R_{1,N}V_{12,N}
\longrightarrow
K=R_2G_{21}R_1G_{12}
\quad\text{in }\mathfrak S_1.
$$

Indeed, this is the product of two convergent Hilbert–Schmidt operators, using

$$
\|AB-A'B'\|_1
\leq\|A-A'\|_2\|B\|_2+\|A'\|_2\|B-B'\|_2.
$$

Every diagonal lattice block is a real antisymmetric matrix of even dimension. Consequently

$$
\det(-I+\Gamma_{rr,N})
=\det(I-\Gamma_{rr,N})
=\det(I+\Gamma_{rr,N}).
$$

The exact finite-dimensional Schur identity is therefore

$$
D_N(s_1,s_2)=\det_F(I-K_N).
$$

The operators are understood as zero on the orthogonal complement of their finite-dimensional ranges; this does not change the determinant. Fredholm-determinant continuity in trace norm proves

$$
\boxed{
D_N(s_1,s_2)\longrightarrow
\det_F\!\left[I-(s_2I+G_{22})^{-1}G_{21}
(s_1I+G_{11})^{-1}G_{12}\right].}
$$

The inverses in this displayed formula act on their respective interval spaces. This completes the convergence theorem independently of the evaluation that follows.

## 4. Two species, transpose, and the scalar relative determinant

The constant orthogonal rotation

$$
O=2^{-1/2}\begin{pmatrix}I&I\\I&-I\end{pmatrix}
$$

acts separately in every interval and gives $OGO^T=H\oplus(-H)$. It commutes with all scalar signs $s_rI$. For nonzero real $s_1,s_2$, define, without assigning determinants to the individual non-trace-class diagonal factors,

$$
\Delta_H(s_1,s_2)=
\det_F\!\left[I-(s_2+H_{22})^{-1}H_{21}
(s_1+H_{11})^{-1}H_{12}\right].
$$

For the original sign choices, the two-component limit is

$$
D(s_1,s_2)=\Delta_H(s_1,s_2)\Delta_{-H}(s_1,s_2).
$$

Here the two scalar factors are equal **also when $s_1s_2<0$**. To see this algebraically, let $T^t$ denote transpose with respect to complex conjugation in the real-kernel representation, so $H_{ij}^t=-H_{ji}$. Transposing the trace-class product in $\Delta_H$ gives

$$
H_{21}(s_1-H_{11})^{-1}H_{12}(s_2-H_{22})^{-1}.
$$

A cyclic move of the final bounded factor inside the Fredholm determinant yields exactly the product defining $\Delta_{-H}$. Fredholm determinants are invariant under transpose, and $\det(I-AB)=\det(I-BA)$ applies here because the other factor is trace class. No positivity assumption on the signed block diagonal is used. Hence

$$
\boxed{D(s_1,s_2)=\Delta_H(s_1,s_2)^2.}
$$

This species rotation is made **after** the continuum limit; it is not an assertion that finite $C_N$ is skew-symmetric.

## 5. The circle kernel becomes a real-line Cauchy kernel

Place a coordinate cut in a positive gap and choose $x_0$ so that the two intervals lie inside $x_0-L/2<x<x_0+L/2$. Put

$$
u=\tan[\pi(x-x_0)/L],\qquad
(Uf)(u)=\sqrt{\frac{dx}{du}}\,f(x(u)).
$$

Since $dx/du=L/[\pi(1+u^2)]$ and the cosine is positive in this chart,

$$
\frac{\sqrt{(dx/du)(dy/dv)}}{L\sin[\pi(y-x)/L]}
=\frac1{\pi(v-u)}.
$$

Thus the compressed NS transform is unitarily equivalent to the finite Hilbert transform on two real-line intervals. In the rest of the proof write those transformed endpoints as

$$
a<b<c<d,\qquad A_1=(a,b),\qquad A_2=(c,d).
$$

Crossratio invariance gives

$$
\eta=\frac{(b-a)(d-c)}{(c-a)(d-b)},
\qquad q=\frac{(c-b)(d-a)}{(c-a)(d-b)}=1-\eta.
$$

On $A=A_1\cup A_2$ we now have

$$
(Hf)(x)=\frac1\pi\operatorname{PV}\int_A\frac{f(y)}{y-x}\,dy.
$$

## 6. Scalar RH inverse, including endpoint control

Allow any $s_1,s_2\in\mathbb R\setminus\{0\}$, independently of their signs, and let $s(x)=s_i$ on $A_i$. Define

$$
\mathcal A_s=s(x)+H,
\qquad \beta_i=\frac1\pi\arctan\frac1{s_i}\in(-1/2,1/2),
$$

where the real arctangent takes values in $(-\pi/2,\pi/2)$. Define the normalized analytic factor

$$
R(z)=\prod_{i=1}^2\left(\frac{z-a_i}{z-b_i}\right)^{\beta_i},
\qquad R(\infty)=1,
$$

with cuts exactly on the two intervals. On $A_i$,

$$
\frac{R_+}{R_-}=e^{-2\pi i\beta_i}
=\frac{s_i-i}{s_i+i}.
$$

For the Cauchy transform

$$
\mathcal Cf(z)=\frac1{2\pi i}\int_A\frac{f(y)}{y-z}\,dy,
$$

the Plemelj formulas give

$$
f=(\mathcal Cf)_+-(\mathcal Cf)_-,
\qquad Hf=i[(\mathcal Cf)_++(\mathcal Cf)_-].
$$

Thus $\mathcal A_sf=g$ is equivalent to

$$
(s+i)\Phi_+-(s-i)\Phi_-=g,\qquad \Phi=\mathcal Cf.
$$

For $g\in C_c^\infty(A)$ set

$$
h(y)=\frac{g(y)}{(s(y)+i)R_+(y)},\qquad
\Phi(z)=R(z)\mathcal Ch(z),\qquad f=\Phi_+-\Phi_-.
$$

The required jump equation follows immediately.

### Why there are no unaccounted endpoint terms

This construction can be justified without assuming a weighted-Hilbert-transform theorem or guessing invertibility for an indefinite sign function:

1. Since $g$ is compactly supported in the interval interiors, $\mathcal Ch$ is analytic near every endpoint. At an endpoint belonging to interval $i$, $\Phi(z)=O(|z-e|^{-|\beta_i|})$.
2. Therefore $f\in L^2(A)$, because $2|\beta_i|<1$.
3. In the keyhole Cauchy contour around $A$, a small endpoint arc contributes $O(\epsilon^{1-|\beta_i|})$, which tends to zero. Also $\Phi(z)=O(1/z)$ at infinity. Cauchy's formula therefore gives **exactly** $\Phi=\mathcal Cf$ from its jump, with no endpoint residue or polynomial correction. Equivalently, any correction analytic across the cut with the same sub-pole endpoint bound has removable endpoint singularities and vanishes by decay at infinity.
4. Independently, $\mathcal A_s$ is a compact perturbation of
   $\operatorname{diag}(s_1+H_{11},s_2+H_{22})$. The diagonal operators are invertible for all nonzero real $s_i$, and the off-diagonal blocks are Hilbert–Schmidt. Hence $\mathcal A_s$ is Fredholm of index zero.
5. The construction above places every $g\in C_c^\infty(A)$ in its range. A Fredholm operator has closed range; its range is therefore all of $L^2(A)$. Index zero then gives trivial kernel and a bounded inverse.

This proves invertibility throughout **each of the four open real sign quadrants**. In particular, it avoids the incorrect coercivity argument that would treat a mixed-sign $s(x)$ as positive definite.

Taking the Plemelj jump in the explicit solution gives, initially on compactly supported test functions,

$$
\boxed{
\mathcal A_s^{-1}(x,y)=
\frac{s(x)}{1+s(x)^2}\delta(x-y)
-
\frac{R_+(x)}{\pi(s(x)-i)(s(y)+i)R_+(y)}
\operatorname{PV}\frac1{y-x}.}
$$

The bounded inverse just established extends this formula from the dense test-function domain. For equal $s$ on one interval, its singular coefficient is $-1/[\pi(1+s^2)]$, consistent with the large-$|s|$ expansion $s^{-1}I-s^{-2}H+\cdots$. Again, this inverse contact term does not add a contact term to the original covariance kernel.

## 7. Relative determinant differentiation: the trace is a difference

The full invertibility just proved implies that the Schur operator defining $\Delta_H$ is invertible. Hence $\Delta_H$ never vanishes in any real sign quadrant. It is real because all defining operators have real kernels. For fixed nonzero $s_2$,

$$
\Delta_H(s_1,s_2)\longrightarrow1
\quad\text{as }s_1\longrightarrow\operatorname{sgn}(s_1)\infty.
$$

The convergence follows in trace norm from $\|(s_1+H_{11})^{-1}\|\leq1/|s_1|$. Thus $\Delta_H>0$ on each quadrant, and its real logarithm is well-defined. No parameter path crosses $s_i=0$.

The bounded operator $\mathcal A_s$ depends analytically on the parameters and is invertible everywhere in the chosen quadrant. The inverse and the Fredholm determinant are therefore locally analytic there. Differentiating the actual trace-class Schur determinant gives

$$
\boxed{
\partial_{s_i}\log\Delta_H
=\operatorname{Tr}_{A_i}\left[(\mathcal A_s^{-1})_{ii}
-(s_i+H_{ii})^{-1}\right].}
$$

For example, differentiating the Schur product with respect to $s_1$ and cyclically moving Hilbert–Schmidt factors gives the $11$ block of the usual block-inverse identity. The difference on the right is trace class: it factors as two separated Hilbert–Schmidt cross blocks and bounded diagonal/full Schur inverses. We never differentiate a hypothetical determinant of $s_i+H_{ii}$ by itself.

### Diagonal trace and endpoint cutoffs

Let $R_i$ denote the single-interval factor and $R_j$ the other factor. For $x,y\in A_i$, subtract the single-interval inverse kernel from the full inverse. Their delta terms and Cauchy singularities cancel, leaving

$$
M_i(x,y)=
-\frac1{\pi(1+s_i^2)}\frac{R_{i,+}(x)}{R_{i,+}(y)}
\frac{R_j(x)/R_j(y)-1}{y-x}.
$$

Since $A_i$ and $A_j$ are separated, $R_j$ is smooth and nonvanishing on the closure of $A_i$, and

$$
M_i(x,x)=\frac1{\pi(1+s_i^2)}\partial_x\log R_j(x).
$$

To justify using this diagonal in the trace, restrict first to $J_\epsilon=(a_i+\epsilon,b_i-\epsilon)$. On its closure the kernel is smooth, so the trace of the compressed trace-class operator is its diagonal integral. One direct proof uses finite-rank projections onto piecewise constants: their traces are averages over small diagonal squares and tend to the diagonal integral by uniform continuity. As $\epsilon\downarrow0$, the projections onto $J_\epsilon$ tend strongly to the identity and the localized operators tend to $M_i$ in trace norm. Meanwhile $M_i(x,x)$ stays bounded all the way to the endpoints, because only $R_j$ appears. Therefore

$$
\operatorname{Tr}M_i=\int_{A_i}M_i(x,x)\,dx.
$$

For $i=1,j=2$ this is

$$
\begin{aligned}
\partial_{s_1}\log\Delta_H
&=\frac{\beta_2}{\pi(1+s_1^2)}
\int_a^b\left(\frac1{x-c}-\frac1{x-d}\right)dx\\
&=\frac{\beta_2}{\pi(1+s_1^2)}
\log\frac{(c-b)(d-a)}{(d-b)(c-a)}\\
&=\frac{\beta_2}{\pi(1+s_1^2)}\log q.
\end{aligned}
$$

Because

$$
\frac{d\beta_1}{ds_1}=-\frac1{\pi(1+s_1^2)},
$$

integration from $s_1=\operatorname{sgn}(s_1)\infty$ within the same sign component gives

$$
\boxed{\Delta_H(s_1,s_2)=q^{-\beta_1\beta_2}.}
$$

For $s_i=\pm1$, $\beta_i=s_i/4$. The two-species square therefore proves the stated $D=q^{-s_1s_2/8}$.

## 8. Computational verification actually performed

The executable independent checks are in [ising_fredholm_checks.py](</Users/koishi/Documents/Note/Articles/Quantization in AdS/gluing/strongly-correlated-sewing/verification/ising_fredholm_checks.py>). The script uses NumPy only and emits Markdown, not JSON. It tests the exact NS multiplier, full-$C_N$ orthogonality, direct/Schur determinant equality, all four sign choices, two circle geometries, and a separate scalar real-line midpoint discretization. The scalar test includes the unequal mixed-sign pair $(s_1,s_2)=(2,-0.7)$.

Actual run with NumPy 2.3.5:

- For $N=8,12,20,40$, the maximum exact-symbol residual was $2.71\times10^{-15}$ and the maximum orthogonality residual was $2.34\times10^{-15}$.
- At $N=40$, all four direct/Schur comparisons agreed within $3.34\times10^{-15}$. Simultaneous sign reversal agreed to the asserted $10^{-12}$ tolerance.
- For the independent scalar real-line discretization, replacing $H$ by $-H$ agreed within $3.56\times10^{-15}$, including mixed signs. This checks the transpose claim independently of the staggered lattice matrix.

For circle endpoints divided by $L$ equal to $(0,0.2,0.45,0.7)$,

$$
\eta=0.42080777983773,
\quad D_{++}^{\rm target}=1.0706491093106,
\quad D_{-+}^{\rm target}=0.93401282577434.
$$

| $N$ | $D_N(+,+)$ | $D_N(-,+)$ |
|---:|---:|---:|
| 40 | 1.07286534729 | 0.939444167351 |
| 80 | 1.07178845739 | 0.936781599168 |
| 160 | 1.07122656921 | 0.935410434394 |
| 320 | 1.07093978211 | 0.934714925999 |
| 640 | 1.07079493091 | 0.934364698492 |

A second geometry, endpoints divided by $L$ equal to $(0.05,0.15,0.5,0.85)$, has targets $(1.0542284940204,0.94856096725900)$. The $N=640$ values were $(1.05435023765,0.948912866674)$.

For real-line endpoints $(-1,-0.3,0.2,1.1)$ and 320 midpoint nodes per interval:

| $(s_1,s_2)$ | scalar numerical $\Delta_H$ | analytic target |
|:---:|---:|---:|
| $(1,1)$ | 1.02998603427 | 1.02981093468 |
| $(-1,1)$ | 0.970881856719 | 0.971052031325 |
| $(2,-0.7)$ | 0.978913524151 | 0.979025209947 |

Errors decreased for 40, 80, 160, 320 nodes. No convergence rate is claimed from these examples.

A separate Mathematica algebra check returned exact zero, with no messages, for: $q+\eta-1$; the local and PV coefficients obtained from the RH jump; $d\beta/ds+1/[\pi(1+s^2)]$; the endpoint integral minus $\log q$ under $a<b<c<d$; and the jump identity at $s=-1$. These algebra checks do not replace the operator and endpoint arguments above.

**Verified:** the explicit theorem in the opening section, by the analytic argument above, with finite-dimensional and independently discretized numerical consistency checks.

**Assumptions:** the stated critical real covariance; even $N$; NS boundary conditions; two Majoranas retained at every site; fixed positive lengths and both fixed positive gaps; the specified determinant normalization. Parameter differentiation is confined to nonzero-real sign quadrants.

**Not verified or implied:** uniformity as a gap collapses with $N$; a quantitative finite-$N$ error bound; other determinant sectors or JW-string insertions; a complete spin-interval replica formula; arbitrary-theory sewing or T3. As a check of the closed expression, $q\to1$ gives $D\to1$. Its $q\to0$ divergence/vanishing is a limit of the fixed-geometry formula, not a uniform lattice contact-limit theorem.

## Appendix A. All fixed integer Gaussian replicas and relative endpoint normalization

**Provenance:** this appendix is a collaborative extension proposed after the independent calculation above. It is not described as a blind review. The proposed factorization was checked from its polynomial roots, leading constants, and Gaussian eigenvalue pairing rather than assumed.

### A.1. The generalized determinant has a different normalization

For arbitrary nonzero real $s_1,s_2$, define

$$
\widetilde D_N(s_1,s_2)=
\frac{\det\begin{pmatrix}s_1I+\Gamma_{11,N}&\Gamma_{12,N}\\
\Gamma_{21,N}&s_2I+\Gamma_{22,N}\end{pmatrix}}
{\det(s_1I+\Gamma_{11,N})\det(s_2I+\Gamma_{22,N})}.
$$

This agrees with the opening $D_N$ for $s_i=\pm1$, but **not** in general if its denominator is left fixed at $s_i=1$. The Schur identity for $\widetilde D_N$ is exact with no extra factors. Sections 1–3 extend verbatim using the uniform-in-$N$ bound $\|(s_i+\Gamma_{ii,N})^{-1}\|\leq1/|s_i|$. The scalar calculation and transpose argument then give

$$
\boxed{
\widetilde D_N(s_1,s_2)\longrightarrow
q^{-2\beta(s_1)\beta(s_2)},
\qquad \beta(s)=\frac1\pi\arctan\frac1s.}
$$

The parameters are held fixed and nonzero. No bound uniform as $s\to0$ is claimed.

### A.2. Exact finite Gaussian polynomial factorization

Let $G$ be a real antisymmetric $2r\times2r$ physical covariance, $\|G\|\leq1$, of a parity-even Gaussian state. Its eigenvalues are $\pm i\nu_j$, $0\leq\nu_j\leq1$, $j=1,\ldots,r$. The Gaussian moment is

$$
p_n^{\rm f}(G)=\operatorname{Tr}\rho_G^n
=\prod_{j=1}^r f_n(\nu_j),
\qquad
f_n(\nu)=\frac{(1+\nu)^n+(1-\nu)^n}{2^n}.
$$

For an integer $n\geq2$, put

$$
m=\lfloor n/2\rfloor,
\qquad s_{k,n}=\tan\frac{(2k+1)\pi}{2n}>0,
\qquad 0\leq k<m.
$$

The roots of $f_n$ follow from

$$
\left(\frac{1+\nu}{1-\nu}\right)^n=-1,
\qquad
\nu=i\tan\frac{(2k+1)\pi}{2n}.
$$

They occur as the $m$ distinct pairs $\pm i s_{k,n}$. If $n$ is odd, the phase $\pi$ corresponds to a root at infinity rather than an additional finite root; accordingly the polynomial degree is $n-1=2m$. If $n$ is even its degree is $n=2m$. The leading coefficients are

$$
f_n(\nu)=c_n\prod_{k=0}^{m-1}(\nu^2+s_{k,n}^2),
\qquad
c_n=\begin{cases}2^{1-n},&n\text{ even},\\n\,2^{1-n},&n\text{ odd}.
\end{cases}
$$

Since $f_n(1)=1$, the constants obey $c_n\prod_k(1+s_{k,n}^2)=1$, giving the particularly useful exact identity

$$
\boxed{
f_n(\nu)=\prod_{k=0}^{m-1}
\frac{\nu^2+s_{k,n}^2}{1+s_{k,n}^2}.}
$$

There is no square-root ambiguity. For each positive $s$,

$$
\det(sI+G)=\prod_{j=1}^r(s^2+\nu_j^2)>0.
$$

Equivalently, in the usual Gaussian matrix formula

$$
p_n^{\rm f}(G)=
\sqrt{\det\left[\left(\frac{I+iG}{2}\right)^n+
\left(\frac{I-iG}{2}\right)^n\right]},
$$

each $f_n(\nu_j)>0$ occurs twice in the determinant, and the positive square root returns one copy. Hence

$$
\boxed{
p_n^{\rm f}(G)=\prod_{k=0}^{m-1}
\frac{\det(s_{k,n}I+G)}{(1+s_{k,n}^2)^r}.}
$$

For example, $f_2=(1+\nu^2)/2$, $f_3=(1+3\nu^2)/4$, and $f_4=(1+6\nu^2+\nu^4)/8$. In particular, no extra factor of $1/2$ is to be inserted in the determinant exponents.

### A.3. Fixed-integer-replica two-interval limit

Let $p_{n,N}^{\rm f}(A)$ be the Gaussian moment of the covariance restriction to a set of retained sites $A$. The mode counts add for $A=A_1\cup A_2$, so all $(1+s_{k,n}^2)$ normalization factors cancel exactly:

$$
\boxed{
\frac{p_{n,N}^{\rm f}(A_1\cup A_2)}
{p_{n,N}^{\rm f}(A_1)p_{n,N}^{\rm f}(A_2)}
=\prod_{k=0}^{m-1}\widetilde D_N(s_{k,n},s_{k,n}).}
$$

For every fixed $n$, this is a finite product of determinants covered by A.1. Since $0<(2k+1)\pi/(2n)<\pi/2$,

$$
\beta_{k,n}=\frac1\pi\arctan\frac1{s_{k,n}}
=\frac{n-2k-1}{2n}.
$$

Summing the elementary squares yields

$$
\kappa_n:=2\sum_{k=0}^{m-1}\beta_{k,n}^2
=\frac{n^2-1}{12n}=\frac{n-1/n}{12}.
$$

For even $n=2m$, this uses $\sum_{j=1}^m(2j-1)^2=m(4m^2-1)/3$. For odd $n=2m+1$, it uses $\sum_{j=1}^m j^2=m(m+1)(2m+1)/6$. Therefore

$$
\boxed{
\lim_{N\to\infty}
\frac{p_{n,N}^{\rm f}(A_1\cup A_2)}
{p_{n,N}^{\rm f}(A_1)p_{n,N}^{\rm f}(A_2)}
=q^{-\kappa_n},\qquad n\in\mathbb Z,\ n\geq2\text{ fixed}.}
$$

This is a Gaussian/CAR or JW-free-word result. It does not replace the other JW/parity/spin-structure terms in a disjoint-spin-interval replica formula. Also, $s_{0,n}\to0$ as $n\to\infty$, so this proof must not be advertised as uniform in $n$.

### A.4. Exact purity symmetry from complementary minors

The full lattice covariance obeys $\Gamma_N^2=-I$. For any nonzero real $s$,

$$
(sI+\Gamma_N)^{-1}=\frac{sI-\Gamma_N}{1+s^2},
\qquad\det(sI+\Gamma_N)=(1+s^2)^N.
$$

Let $A$ contain $r$ sites and let $A^c$ contain $N-r$. Jacobi's complementary-principal-minor identity and antisymmetric transpose give

$$
\det(sI+\Gamma_{A})
=(1+s^2)^{2r-N}\det(sI-\Gamma_{A^c})
=(1+s^2)^{2r-N}\det(sI+\Gamma_{A^c}).
$$

Thus even each normalized factor has exact complement symmetry:

$$
\frac{\det(sI+\Gamma_A)}{(1+s^2)^r}
=\frac{\det(sI+\Gamma_{A^c})}{(1+s^2)^{N-r}}.
$$

Taking the finite product proves $p_{n,N}^{\rm f}(A)=p_{n,N}^{\rm f}(A^c)$ without a separate entropy argument. For a contiguous interval, NS translation changes the covariance only by an orthogonal sign gauge, so its moment depends only on its number of sites. Denote it by $p_{n,N}(m)$.

### A.5. Four arcs fix all relative single-interval amplitudes

For positive integers $a_N,b_N,c_N,d_N$ adding to $N$, assume their ratios to $N$ tend to four strictly positive numbers. The selected two intervals have lengths $(a_N,c_N)$ and their complement has lengths $(b_N,d_N)$. Let their normalized moment ratios from A.3 be $R_{A,N}$ and $R_{B,N}$ respectively. Write

$$
S_N(j)=2\sin\frac{\pi j}{N},
\qquad F_{n,N}(j)=\log p_{n,N}(j)+\kappa_n\log S_N(j).
$$

The finite-geometry crossratio complements are

$$
q_{A,N}=\frac{S_N(b_N)S_N(d_N)}
{S_N(a_N+b_N)S_N(b_N+c_N)},
\qquad
q_{B,N}=\frac{S_N(a_N)S_N(c_N)}
{S_N(a_N+b_N)S_N(b_N+c_N)}.
$$

The fixed-geometry theorem gives $R_{A,N}q_{A,N}^{\kappa_n}\to1$ and $R_{B,N}q_{B,N}^{\kappa_n}\to1$. All moments are positive, and the determinant limits are positive, so taking logarithms is legitimate. Exact complement symmetry then gives

$$
\begin{aligned}
E_N&:=F_{n,N}(a_N)+F_{n,N}(c_N)
-F_{n,N}(b_N)-F_{n,N}(d_N)\\
&=\log R_{B,N}-\log R_{A,N}
+\kappa_n\log(q_{B,N}/q_{A,N})\longrightarrow0.
\end{aligned}
$$

Now use **the same integer four-tuple**, with its order changed from $(a_N,b_N,c_N,d_N)$ to $(a_N,c_N,b_N,d_N)$. This is another allowed fixed positive-gap geometry, and gives

$$
E'_N=F_{n,N}(a_N)+F_{n,N}(b_N)
-F_{n,N}(c_N)-F_{n,N}(d_N)\longrightarrow0.
$$

Subtracting yields

$$
2[F_{n,N}(c_N)-F_{n,N}(b_N)]=E_N-E'_N\longrightarrow0.
$$

This proves that any two site-count sequences with positive limiting fractions $b,c$ and $b+c<1$ have the same asymptotic $F_{n,N}$ value. One can choose any positive limiting remainder split for $a_N,d_N$. Crucially, the two geometries are not rounded independently: the same four integers are reused. No estimate of a one-site change in $\log p_{n,N}$ is needed.

To compare an arbitrary sequence $m_N/N\to\ell/L\in(0,1)$ with the half interval, first set $r_N=\min(m_N,N-m_N)$; exact complement symmetry gives $F_{n,N}(r_N)=F_{n,N}(m_N)$. Then use $k_N=\lfloor N/4\rfloor$ as a bridge. Both pairs $(r_N,k_N)$ and $(N/2,k_N)$ have sums tending to at most $3/4$ and admit fixed positive remainder arcs. Therefore

$$
F_{n,N}(m_N)-F_{n,N}(N/2)\longrightarrow0.
$$

This bridge also handles arbitrary endpoint rounding when $m_N/N\to1/2$, rather than requiring $m_N=N/2$ exactly. Consequently

$$
\boxed{
\frac{p_{n,N}(m_N)}{p_{n,N}(N/2)}
\longrightarrow
\left[\sin\frac{\pi\ell}{L}\right]^{-\kappa_n}.}
$$

No finite limit of $F_{n,N}$ itself was assumed; any geometry-independent additive constant, even if divergent, cancels throughout.

### A.6. Reference normalization and its precise meaning

Define the positive reference factor

$$
Z_{n,N}=2^{\kappa_n}p_{n,N}(N/2).
$$

Then, for every fixed allowed one- or two-interval geometry,

$$
\frac{p_{n,N}(m_N)}{Z_{n,N}}
\longrightarrow\left[2\sin\frac{\pi\ell}{L}\right]^{-\kappa_n},
$$

and, writing the two interval lengths as $\ell_1,\ell_2$,

$$
\boxed{
\frac{p_{n,N}^{\rm f}(A_1\cup A_2)}{Z_{n,N}^2}
\longrightarrow
\left[
q\left(2\sin\frac{\pi\ell_1}{L}\right)
\left(2\sin\frac{\pi\ell_2}{L}\right)
\right]^{-\kappa_n}.}
$$

Here $Z_{n,N}$ is the normalization for a **pair** of endpoints, or one interval. In an endpoint-factor convention, each bare endpoint contributes $Z_{n,N}^{1/2}$ and each renormalized endpoint is multiplied by $Z_{n,N}^{-1/2}$. This fixes the reference scheme for these amplitudes; it neither proves existence of a full local twist-operator limit nor determines the absolute cutoff dependence or nonuniversal constant of $Z_{n,N}$. No Fisher–Hartwig asymptotic has been used.

### A.7. Additional checks actually performed

Mathematica returned exact polynomial equality for the factorization of $f_n$ for every $n=2,\ldots,12$, using exact algebraic reduction of all coefficients. It also returned zero for the exponent-sum residual separately at symbolic $n=2m$ and $n=2m+1$. No messages were generated.

An additional stdout-only NumPy check used covariance eigenvalues $\nu=(0,0.17,0.48,0.79,1)$, then conjugated the $10\times10$ real antisymmetric covariance by a random real orthogonal matrix (seed 81726). For every $n=2,\ldots,12$ it compared the scalar-mode moment, the product of naturally normalized determinants, and the positive Gaussian determinant square root. Maximum relative discrepancies were respectively $5.33\times10^{-15}$ and $8.89\times10^{-15}$. Both parity-dependent leading coefficients were also checked. The command exited with code zero.

For the original lattice geometry with endpoints divided by $L$ equal to $(0,0.2,0.45,0.7)$, the following are actual $N=640$ values. The single interval has length $0.2L$ and is compared with the half interval.

| $n$ | two-interval normalized ratio | $q^{-\kappa_n}$ | single/half ratio | $[\sin(0.2\pi)]^{-\kappa_n}$ |
|---:|---:|---:|---:|---:|
| 2 | 1.07079493091 | 1.07064910931 | 1.06878481781 | 1.06867995707 |
| 3 | 1.13079310311 | 1.12903150877 | 1.12673907347 | 1.12534254077 |
| 4 | 1.19155234727 | 1.18609069844 | 1.18519654525 | 1.18064453408 |
| 5 | 1.25438224057 | 1.24414475242 | 1.24562984676 | 1.23683716286 |
| 8 | 1.45526559511 | 1.43102621672 | 1.43889855551 | 1.41726230973 |

The errors decreased across $N=40,80,160,320,640$, but the visibly slower convergence at larger $n$ is not concealed or turned into a uniform-in-$n$ claim. At $n=2,N=80$, direct complement checks gave logarithmic-moment differences $-5.33\times10^{-15}$ for a single interval and $1.07\times10^{-14}$ for two intervals versus their two-gap complement.

**Appendix verification boundary:** the arbitrary fixed-integer-$n$ statements follow from the analytic polynomial identity and the operator proof, not from the finite list of tests. This appendix proves Gaussian/JW-free relative moment limits and a reference normalization. It does not prove JW-odd-word suppression, the complete spin-interval replica limit, analytic continuation in $n$, a von Neumann limit, an absolute cutoff power law, or T3.
