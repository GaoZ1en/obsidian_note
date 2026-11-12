# Independent audit: spatial Ising regulator for the first-order $T\bar T$ perturbation

## Verdict and scope

**The proposed coefficients give the correctly normalized first-order continuum perturbation.** More precisely, after the stated infinite-volume bulk subtraction, the proposed $V_a$ converges on every fixed finite collection of low-energy modes to

$$
V=-4\int_0^L dx\,h_R(x)h_L(x),
\qquad
h_R=-\frac{i}{2}:\!\psi_R\partial_x\psi_R\!:,
\quad
h_L=+\frac{i}{2}:\!\psi_L\partial_x\psi_L\!:,
$$

with $\{\psi_R(x),\psi_R(y)\}=\{\psi_L(x),\psi_L(y)\}=\delta(x-y)$ and vanishing mixed anticommutator. Thus

$$
\left.\partial_\lambda E\right|_{\lambda=0}
=\frac{P^2-E^2}{L}.
$$

The decisive facts are an **exact lattice Wick-ordering identity** and a **fourier-mode Vandermonde calculation**, not just vacuum-energy agreement. No independent dimension-four spin-four bilinear survives this subtraction. Fixed-mode matrix-element errors for the integrated operator are $O(a^2)$; this is not an operator-norm assertion.

**This is not an exact finite-cutoff Burgers-flow Hamiltonian, even at first order in $\lambda$.** At finite $a$, its vacuum slope already differs from $-E_a^2/L$ by a nonzero $O(a^2)$ term. Nor does the calculation establish a continuum limit at fixed nonzero $\lambda$ without further renormalization.

This audit was derived from the ansatz in the request. No main-results file or other agents' notes was consulted. The root and Quantization-in-AdS instruction files were read before creating this new review. The computations below use the stated spin and Majorana conventions, not an imported result from another calculation.

## 1. Definitions, cutoff, and boundary conditions

Let $N$ be even, $a=L/N$, $M=2N$, and $h=a/2$. Write

$$
\gamma_{2j}=\left(\prod_{\ell<j}X_\ell\right)Z_j,
\qquad
\gamma_{2j+1}=\left(\prod_{\ell<j}X_\ell\right)Y_j,
\qquad
\{\gamma_m,\gamma_n\}=2\delta_{mn}.
$$

The physical spin chain has periodic boundary conditions and $P_{\rm spin}=\prod_jX_j$. In a fixed parity sector $p=\pm1$, the boundary condition used for even Majorana products is

$$
\gamma_{m+M}=-p\gamma_m.
$$

Thus $p=+1$ is the NS sector and $p=-1$ is the Ramond sector. The physical parity projection must still be imposed on the corresponding fermionic Hilbert space. In particular, Ramond zero-mode occupancy is not an additional freely doubled physical spin vacuum.

A bookkeeping warning: $P_{\rm spin}$ anticommutes with an odd Majorana. The displayed twisted boundary rule is a sector rule; one must not replace $p$ by an operator and then commute that operator through an odd Majorana without its sign. All wraparound signs below were checked after parity projection.

Define

$$
b_m=i\gamma_m\gamma_{m+1},\qquad c_m=i\gamma_m\gamma_{m+3}.
$$

The Hamiltonian and proposed perturbation become

$$
H_0=-\frac1{2a}\sum_{m=0}^{M-1}b_m+\frac{2N}{\pi a},
$$

$$
V_a=\frac1{8a^3}\left[
\sum_m\gamma_m\gamma_{m+1}\gamma_{m+2}\gamma_{m+3}
+\frac{14}{3\pi}\sum_m b_m
+\frac2\pi\sum_m c_m
-\frac{16M}{3\pi^2}I
\right].
$$

The uniform Majorana spacing is $h$, not $a$. Its one-particle excitation energy is $\epsilon(k)=2\sin k/a$ for $0<k<\pi$. Near either gapless point the physical momentum displacement is $2k/a$ or $2(k-\pi)/a$, respectively, giving velocity one.

## 2. Jordan–Wigner signs, including the longer-range terms

Direct Pauli multiplication gives

$$
b_{2j}=X_j,\qquad b_{2j+1}=Z_jZ_{j+1},
$$

$$
\gamma_m\gamma_{m+1}\gamma_{m+2}\gamma_{m+3}=-b_mb_{m+2},
$$

and consequently

$$
\sum_m\gamma_m\gamma_{m+1}\gamma_{m+2}\gamma_{m+3}
=-\sum_j\left(X_jX_{j+1}+Z_jZ_{j+2}\right).
$$

For the range-three bilinears,

$$
c_{2j}=-Y_jY_{j+1},\qquad
c_{2j+1}=Z_jX_{j+1}Z_{j+2}.
$$

For example, the first sign follows from
$iZ_jX_jY_{j+1}=i(iY_j)Y_{j+1}=-Y_jY_{j+1}$.
These are exactly the spin terms in the proposal.

**Machine check.** At $N=6$, explicit $64\times64$ Pauli matrices and the JW Majoranas gave zero matrix residual for each of the three summed identities, separately in both parity sectors, including every wraparound bond. This is an exact matrix check, not only a thermodynamic check.

## 3. Infinite-volume Wick subtraction

Let the subscript $\infty$ denote the uniform infinite-chain Gaussian ground state. For positive separation,

$$
g_r\equiv\langle i\gamma_m\gamma_{m+r}\rangle_\infty
=\frac1\pi\int_0^\pi dk\,\sin(rk)
=\begin{cases}
\dfrac2{\pi r},&r\text{ odd},\\[3pt]
0,&r\text{ even}.
\end{cases}
$$

In particular,

$$
g_1=\frac2\pi,\qquad g_3=\frac2{3\pi},\qquad
\langle\gamma_0\gamma_1\gamma_2\gamma_3\rangle_\infty
=-g_1^2-g_1g_3=-\frac{16}{3\pi^2}.
$$

The sign in the last equation follows from
$\langle\gamma_i\gamma_j\rangle=-ig_{j-i}$ and
$\operatorname{Pf}C=C_{01}C_{23}-C_{02}C_{13}+C_{03}C_{12}$.
It follows that

$$
\begin{split}
\sum_m\gamma_m\gamma_{m+1}\gamma_{m+2}\gamma_{m+3}
={}&\sum_m:\!\gamma_m\gamma_{m+1}\gamma_{m+2}\gamma_{m+3}\!:_\infty\\
&-(2g_1+g_3)\sum_m b_m-g_1\sum_m c_m
+M(g_1^2+g_1g_3)I.
\end{split}
$$

Hence the proposed coefficients satisfy the exact finite-range identity

$$
\boxed{\displaystyle
V_a=\frac1{8a^3}\sum_m
:\!\gamma_m\gamma_{m+1}\gamma_{m+2}\gamma_{m+3}\!:_\infty.}
$$

Here $:\cdots:_\infty$ means Wick subtraction using the infinite-chain covariance. It is a prescription for the local even polynomial and remains meaningful on a finite circle; it does **not** mean normal ordering in the finite-circle vacuum.

The numerical coefficients are therefore not a fit to finite-size energies:

$$
2g_1+g_3=\frac{14}{3\pi},\qquad
g_1=\frac2\pi,\qquad
M(g_1^2+g_1g_3)=\frac{32N}{3\pi^2}.
$$

In particular, the plane vacuum energy, the entire plane tadpole bilinear, and the would-be finite spin-four bilinear from the counterterms are removed together by this identity.

## 4. Continuum coefficient and normalization

For fixed modes near the two gapless points, the canonical field identification is

$$
\gamma_m=\sqrt a\left[\psi_R(x)+(-1)^m\psi_L(x)\right],
\qquad x=mh.
$$

The coefficient $\sqrt a$, rather than $\sqrt h$, is fixed by the two low-energy branches and the canonical anticommutators. Equivalently, if $\Gamma_k$ are normalized lattice Fourier modes with $\{\Gamma_k,\Gamma_{k'}\}=2\delta_{k+k',0}$, set the continuum chiral mode equal to $\Gamma_k/\sqrt2$.

The nonoscillating term in $\gamma_m\gamma_{m+1}$ is
$a h(\psi_R\psi_R'-\psi_L\psi_L')$. Since $\sum_m\to h^{-1}\int dx$,

$$
H_0\longrightarrow\int dx\,(h_R+h_L),\qquad
P=\int dx\,(h_R-h_L).
$$

For the quartic operator, expand the four fields at positions $0,h,2h,3h$. The coefficient of the ordered product
$\psi_R\psi_R'\psi_L\psi_L'$ is $a^2$ times the determinant

$$
\det\begin{pmatrix}
1&0&1&0\\
1&h&-1&-h\\
1&2h&1&2h\\
1&3h&-1&-3h
\end{pmatrix}=-16h^2.
$$

Thus

$$
:\!\gamma_m\gamma_{m+1}\gamma_{m+2}\gamma_{m+3}\!:_\infty
=-4a^4:\!\psi_R\psi_R'\psi_L\psi_L'\!:+\cdots,
$$

and the factor $1/(8a^3)$ followed by $\sum_m\to2a^{-1}\int dx$ gives

$$
V_a\longrightarrow-\int dx:\!\psi_R\psi_R'\psi_L\psi_L'\!:
=-4\int dx\,h_Rh_L.
$$

With the physical stress normalization $T_{00}=h_R+h_L$, $T_{11}=h_R+h_L$, and momentum density $h_R-h_L$, this is $\int(T_{01}^2-T_{00}T_{11})dx$. This fixes the sign and normalization by the convention in the question; a convention in which the deformation is $+\det T$ has the opposite coupling sign.

For a CFT state of weights $(\Delta,\bar\Delta)$, including descendant levels,

$$
E=\frac{2\pi}{L}\left(\Delta+\bar\Delta-\frac c{12}\right),
\qquad
P=\frac{2\pi}{L}(\Delta-\bar\Delta),\qquad c=\frac12.
$$

The zero-mode matrix element is therefore

$$
\langle V\rangle
=-\frac{16\pi^2}{L^3}
\left(\Delta-\frac c{24}\right)
\left(\bar\Delta-\frac c{24}\right)
=\frac{P^2-E^2}{L}.
$$

Within a degenerate $H_0$ eigenspace, the spatial integral contains chiral mode products $L_n\bar L_n$; $n\ne0$ changes the total level by $-2n$. Consequently only the zero-mode product survives degenerate first-order perturbation theory, and it is proportional to the identity at fixed $(E,P)$. There is no hidden first-order splitting contradicting the universal slope.

Dimensions are consistent: $[\psi]=L^{-1/2}$, $[V]=L^{-3}$, and $[\lambda]=L^2$, so $\lambda V$ has energy dimension $L^{-1}$.

## 5. Fixed-mode off-diagonal matrix elements and cutoff errors

A diagonal-energy check alone would not identify the local operator. The full four-mode coefficient is more informative.

Choose two right momenta $p_1,p_2$ and two left momenta $q_1,q_2$, with all physical momenta held fixed as $a\to0$. Define

$$
z=(e^{ihp_1},e^{ihp_2},-e^{ihq_1},-e^{ihq_2}),
\qquad
D=\det_{0\le r\le3,\,1\le j\le4}z_j^r.
$$

The anticommuting Fourier expansion gives this determinant, not a product of independently approximated bilinears. Its exact factorization is

$$
\begin{split}
D={}&64e^{3ihK/2}
\sin\frac{h(p_2-p_1)}2\,
\sin\frac{h(q_2-q_1)}2\\
&\times\prod_{i,j=1}^2\cos\frac{h(q_j-p_i)}2,
\qquad K=p_1+p_2+q_1+q_2.
\end{split}
$$

Spatial summation imposes $K=0$ for fixed low momenta. An ordered four-mode coefficient of $V_a$ is $D/(4a^2L)$, so

$$
\begin{split}
\frac{D}{16h^2(p_2-p_1)(q_2-q_1)}
={}&\operatorname{sinc}\frac{h(p_2-p_1)}2\,
\operatorname{sinc}\frac{h(q_2-q_1)}2\\
&\times\prod_{i,j}\cos\frac{h(q_j-p_i)}2
=1+O(a^2).
\end{split}
$$

Here $\operatorname{sinc}u=\sin u/u$. The leading coefficient is consequently
$(p_2-p_1)(q_2-q_1)/L$, exactly the coefficient of
$-\int:\!\psi_R\psi_R'\psi_L\psi_L'\!:dx$.
The first relative correction is

$$
-h^2\left[
\frac{(p_2-p_1)^2+(q_2-q_1)^2}{24}
+\frac18\sum_{i,j}(q_j-p_i)^2
\right]+O(h^4).
$$

This verifies fixed-mode **off-diagonal** coefficients as well as diagonal ones. In the smooth two-right/two-left channel, a density assigned to the left endpoint has the phase $e^{3ihK/2}$, whose first correction is a total spatial derivative. Centering the quartet at $x+3h/2$ removes that phase. The integrated operator has $O(a^2)$ error.

For four right movers or four left movers, the Vandermonde determinant starts at $h^6$; after the overall $a^{-2}$ coefficient, the matrix element is $O(a^4)$. For three movers of one chirality and one of the other, the staggering demands momentum near $\pi/h$, so the spatial sum vanishes exactly between any fixed low-mode states once the cutoff is sufficiently large.

There is a distinction for an **unaveraged local Majorana-quartet density**. Its three-right/one-left Taylor determinant is $-8h^3$ in the basis $(R,R',R'',L)$; the one-right/three-left determinant is $+8h^3$. These give staggered dimension-five terms of order $a$ in that density, even after geometric centering. They do not survive the integral. The original spin-cell density pairs the adjacent quartets $m=2j$ and $m=2j+1$, canceling their leading staggered terms. Centering this paired density at $x_j+a$ therefore gives $O(a^2)$ local fixed-mode errors as well. A blanket $O(a^2)$ claim for an individual raw quartet density would be too strong.

**An exact normalized four-excitation example.** In the NS sector, create the modes $r_R=1/2,3/2$ and $r_L=1/2,3/2$ from the vacuum. With canonical mode normalization, the determinant gives

$$
\left|\langle \tfrac12,\tfrac32;\tfrac12,\tfrac32|V_a|\Omega\rangle\right|
=\frac{4\pi^2}{L^3}
\operatorname{sinc}^2\!\frac{\pi}{2N}
\cos\frac{\pi}{2N}\,
\cos^2\!\frac{\pi}{N}\,
\cos\frac{3\pi}{2N}.
$$

The overall sign before taking the absolute value depends on the chosen Fock ordering. This is an exact finite-$N$ coefficient for $N\ge4$, not just its continuum expansion.

**Numerical off-diagonal check.** Set $L=1$, $(p_1,p_2,q_1,q_2)=(-3\pi,-\pi,\pi,3\pi)$. These are the same four creation modes, in ordered Fourier notation. The ratio to the continuum four-mode coefficient is

| $N$ | Ratio | $N^2(\text{ratio}-1)$ |
|---:|---:|---:|
| 16 | 0.9131470246642111 | -22.2343616860 |
| 32 | 0.9777074122798534 | -22.8276098254 |
| 64 | 0.9943900063403646 | -22.9785340299 |
| 128 | 0.9985951885881304 | -23.0164301721 |

The analytic limiting scaled error is $-7\pi^2/3$. Mathematica independently reduced the difference between the determinant and its trigonometric factorization to exactly zero.

### Circle normal ordering does not introduce a spurious leading spin-four term

For the NS finite-circle vacuum let
$\delta_r=g_r^{\rm NS}-g_r^\infty$. Reordering the exact operator in the finite-circle Gaussian vacuum gives

$$
\begin{split}
8a^3V_a={}&\sum_m:\!\gamma_m\gamma_{m+1}\gamma_{m+2}\gamma_{m+3}\!:\!_{\rm NS}\\
&-(2\delta_1+\delta_3)\sum_m:\!b_m\!:\!_{\rm NS}
-\delta_1\sum_m:\!c_m\!:\!_{\rm NS}
-M\delta_1(\delta_1+\delta_3)I.
\end{split}
$$

Since $\delta_3=3\delta_1+O(a^4)$ at fixed $L$, and $\sum:c_m:=3\sum:b_m:$ at leading order on fixed low modes, the bilinear term tends to

$$
-\frac{2E_{\rm vac}}{L}\,(H_0-E_{\rm vac}).
$$

Together with the constant $-E_{\rm vac}^2/L$ this is precisely the cylinder-Casimir contribution of $-4h_Rh_L$. Corrections from $\sum(c_m-3b_m)$ or $\delta_3-3\delta_1$ are $O(a^2)$ on these modes. They do not produce a dimension-four spin-four admixture at order $a^0$.

## 6. Finite-volume vacuum slopes, including the Ramond zero modes

Put $x=\pi/(2N)$. In the NS vacuum,

$$
g_r^{\rm NS}=\frac1N\csc(rx)\quad(r\text{ odd}),
\qquad g_r^{\rm NS}=0\quad(r\text{ even}),
$$

and

$$
E_{\rm NS,a}=\frac1a\left(\frac{2N}{\pi}-\csc x\right)
=-\frac\pi{12L}-\frac{7\pi^3a^2}{2880L^3}+O(a^4).
$$

Using Wick's theorem with the difference of circle and plane covariances gives the exact finite-$N$ formula

$$
\boxed{\displaystyle
\langle V_a\rangle_{\rm NS}
=-\frac{N}{4a^3}\delta_1(\delta_1+\delta_3),
\quad
\delta_1=\frac{\csc x}{N}-\frac2\pi,
\quad
\delta_3=\frac{\csc3x}{N}-\frac2{3\pi}.}
$$

As $N\to\infty$ at fixed $L$,

$$
\delta_1=\frac\pi{12N^2}+\frac{7\pi^3}{2880N^4}+O(N^{-6}),
\qquad
\delta_3=\frac\pi{4N^2}+\frac{21\pi^3}{320N^4}+O(N^{-6}),
$$

so

$$
\langle V_a\rangle_{\rm NS}
=-\frac{\pi^2}{144L^3}-\frac{7\pi^4a^2}{4320L^5}+O(a^4).
$$

The leading term is exactly $-E_{\rm NS}^2/L$ with $c=1/2$.

In the Ramond sector the nonzero modes instead give

$$
q_r=\frac1N\cot(rx)\quad(r\text{ odd}),
\qquad
E_{\rm R,a}=\frac1a\left(\frac{2N}{\pi}-\cot x\right)
=\frac\pi{6L}+\frac{\pi^3a^2}{360L^3}+O(a^4).
$$

The physical parity selects a zero-mode occupation. If
$z=\langle i\Gamma_0\Gamma_\pi\rangle=\pm1$, its covariance contribution at odd separation is

$$
g_r(m)=q_r-\frac{(-1)^m z}{N}.
$$

It must not simply be omitted in an individual local Wick contraction. For four consecutive sites its quadratic zero-mode contribution to the Pfaffian cancels, while the remaining term is proportional to $(-1)^m$ and cancels in the spatial sum. Thus the exact summed answer is the same formula as above with

$$
\delta_1=\frac{\cot x}{N}-\frac2\pi,
\qquad
\delta_3=\frac{\cot3x}{N}-\frac2{3\pi},
$$

and gives

$$
\langle V_a\rangle_{\rm R}
=-\frac{\pi^2}{36L^3}-\frac{\pi^4a^2}{270L^5}+O(a^4).
$$

Its leading term is $-E_\sigma^2/L$ with $E_\sigma=\pi/(6L)$, the Ising $\sigma$ primary with weights $(1/16,1/16)$.

**Direct spin-space check.** With $L=1$, diagonalization in the two physical parity sectors gives:

| $N$ | $p$ | $E_{0,a}$ | $\langle V_a\rangle$ |
|---:|---:|---:|---:|
| 4 | $+1$ | -0.266587361130 | -0.080032905451 |
| 4 | $-1$ | 0.529062108389 | -0.299913843349 |
| 6 | $+1$ | -0.263908025705 | -0.073218123514 |
| 6 | $-1$ | 0.526006959820 | -0.284759683788 |

All four energies and slopes agree with the exact finite-$N$ trigonometric formulas, with numerical residuals below $10^{-31}$ using 35-digit arithmetic. This also independently checks the Ramond zero-mode/parity treatment.

For more general translation-invariant Gaussian eigenstates in the NS sector, let $g_r$ denote the occupied-state covariance, $\delta_1=g_1-2/\pi$, and $\delta_3=g_3-2/(3\pi)$. Wick's theorem gives

$$
\langle V_a\rangle=\frac{N}{4a^3}
\left[-\delta_1^2+g_2^2-\delta_1\delta_3\right].
$$

For a fixed finite set of low excitations,

$$
\delta_1=-\frac{a^2E_a}{L},\qquad
\delta_3=3\delta_1+O(a^4),\qquad
g_2=-\frac{2a^2P}{L}+O(a^4).
$$

This reproduces $(P^2-E^2)/L+O(a^2)$ beyond the vacuum. The Fourier determinant above is the stronger check because it also controls off-diagonal matrix elements.

## 7. Other same-order operators and genuine limitations

1. **Spin-four mixing is allowed by coarse lattice symmetries, but absent here at leading order.** A chiral bilinear such as $:\!\psi_R\partial_x^3\psi_R\!:$ plus its left counterpart has dimension four. Looking only at symmetries or the counterterm bilinears would not exclude it. The exact plane Wick identity does: after its subtraction there is no plane-normal-ordered two-fermion operator. The four-fermion expansion starts with two fields of each chirality, whose minimal nonzero local product is uniquely $:\!\psi_R\psi_R'\psi_L\psi_L'\!:$ at dimension four. Four same-chirality fields first occur at dimension eight. Odd-chirality terms carry the staggered lattice momentum.

2. **Relevant and marginal terms.** The infinite-plane identity and bilinear tadpoles cancel exactly, not merely asymptotically. The bulk mass bilinear has staggered Majorana momentum, and uniformity excludes it. No first-order plane vacuum-energy or velocity counterterm remains. Circle Casimir reordering is different and is retained as in sections 5–6.

3. **A direct finite-cutoff counterexample to exact flow.** The NS formulas imply

   $$
   \langle V_a\rangle_{\rm NS}+\frac{E_{\rm NS,a}^2}{L}
   =-\frac{7\pi^4a^2}{5760L^5}+O(a^4),
   $$

   while the Ramond difference is $-\pi^4a^2/(360L^5)+O(a^4)$. Thus exact first-order Burgers slopes at finite lattice spacing would be an incorrect stronger claim.

4. **Order of limits.** This establishes $\lim_{a\to0}\partial_\lambda H_a|_{\lambda=0}$ on fixed low-energy matrix elements. It does not establish $\partial_\lambda\lim_{a\to0}H_a(\lambda)$ at fixed nonzero $\lambda$. The bare interaction strength relative to the cutoff is of order $\lambda/a^2$; uniform perturbation theory in all cutoff modes therefore fails if $\lambda$ is held fixed while $a\to0$. Higher-order counterterms and the usual UV issues of irrelevant deformations remain outside this audit.

5. **No global norm convergence.** The local coefficients grow as $a^{-3}$, and high lattice modes do not obey the fixed-mode Taylor bounds. The $O(a^2)$ statement is for the integrated operator on a fixed finite low-mode subspace at fixed $L$, and also for the centered paired spin-cell density described in section 5. It is not the full spin Hilbert-space operator norm, nor a claim about every unaveraged local Majorana density.

6. **Improvements and total derivatives.** Translating the density to its geometric center changes an unintegrated expansion by total spatial derivatives. These do not alter the PBC Hamiltonian or slopes. A unique unintegrated density independent of such choices is not claimed.

## Verification record

- **Verified analytically:** JW signs; infinite-line covariance and Wick coefficients; continuum normalization; Fourier coefficient factorization and fixed-mode power counting; NS/R Casimir slopes; physical role of the R zero mode; the finite-cutoff mismatch with exact Burgers flow.
- **Verified computationally:** exact $N=6$ Pauli/JW identities in both parity sectors; the Taylor determinant $-16h^2$; exact symbolic Vandermonde factorization; symbolic NS/R expansions through the displayed orders; direct physical spin-space ground-state energies and slopes at $N=4,6$; an off-diagonal fixed-mode convergence example.
- **Assumptions:** fixed $L$, $a=L/N\to0$ through even $N$; PBC spin chain and correct JW parity projection; first-order insertion at $\lambda=0$; a fixed finite number of low modes; the explicitly stated plane Wick scheme and stress normalization.
- **Not established:** a finite-$\lambda$ continuum construction, second-order matching/counterterms, exact finite-cutoff flow, full-Hilbert-space norm convergence, or a second additional independent reviewer of this audit. This report itself is the independent review of the supplied ansatz.
