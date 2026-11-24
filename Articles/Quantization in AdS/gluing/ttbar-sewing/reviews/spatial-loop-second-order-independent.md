# Actual spatial-regulator second-order vacuum loop: independent derivation

## Result and precise scope

**The supplied spatial interaction has a nonzero second-order bulk vacuum divergence, with its actual regulator coefficient determined directly from its Majorana vertex:**

\[
 \boxed{\frac{E^{\rm mix}_{2,a}}L
 =-\frac{\kappa}{a^6}+o(a^{-6}),\qquad
 \kappa=0.00074138034437906\ldots .}
\]

Here \(H=H_{0,a}+\lambda V_a+\lambda^2 C_{2,a}+\cdots\), with no factorial; \(E^{\rm mix}_{2,a}\) is the Rayleigh–Schrödinger term from two insertions of the **specified** \(V_a\), before a second-order local insertion. The coefficient has an exact convergent momentum-integral representation below; the displayed decimal is numerical, not a claimed closed form or certified interval.

Consequently, in a counterterm basis Wick ordered with the same infinite-chain covariance, the leading identity component that subtracts this infinite-volume bulk energy is

\[
 \boxed{C^{\rm bulk,\mathbf1}_{2,a}
   =+\frac{\kappa L}{a^6}\mathbf1
   =+\frac{\kappa}{a^5}\sum_{j=0}^{N-1}\mathbf1 .}
\]

This is **one direct same-regulator Wilson matching coefficient**, not the complete \(C_{2,a}\). It is obtained without prescribing or fitting any desired CFT energy. The finite-circle versus infinite-line Wick difference is treated exactly: it gives a constant and number-diagonal quadratic terms, but no vacuum-to-two-quasiparticle transition. Thus the four-particle kernel used here is the complete NS-vacuum mixing term, not an approximation dropping finite-circle tadpoles.

Physical-PBC spin exact diagonalization at \(N=4,6,8\) checks the resulting kernel. The exact finite-\(N\) formula and the bulk integral are independently evaluated by the new [verification script](<Articles/Quantization in AdS/gluing/ttbar-sewing/verification/spatial_loop_uv_checks.py>); its numerical record is [spatial-loop UV results](<Articles/Quantization in AdS/gluing/ttbar-sewing/verification/spatial-loop-uv-results.md>).

No original note or existing verification script was changed. No web or PDF sources were used. Existing first-stage audit and second-order local-candidate files were read for conventions and scope only; no mode-counterterm formula enters this derivation.

## 1. Fixed physical regulator and Fourier conventions

Take even \(N\ge4\), physical spin PBC, circumference \(L\), \(a=L/N\), and \(M=2N\) Majoranas. The exact sum also applies at \(N=2\), where it is empty and the vacuum mixing coefficient is zero. The convention is

\[
 \gamma_{2j}=\Big(\prod_{\ell<j}X_\ell\Big)Z_j,
 \qquad
 \gamma_{2j+1}=\Big(\prod_{\ell<j}X_\ell\Big)Y_j,
 \qquad \{\gamma_m,\gamma_n\}=2\delta_{mn}.
\]

In the even spin-parity sector, the seam is NS:
\(\gamma_{m+M}=-\gamma_m\). Restricting to even quasiparticle occupation is still necessary to obtain the physical spin sector. The NS vacuum and all four-particle states below satisfy that restriction.

The supplied operators, including the fixed plane subtraction, are

\[
 H_{0,a}=-\frac{i}{2a}\sum_{m=0}^{M-1}\gamma_m\gamma_{m+1}
             +\frac{2N}{\pi a}\mathbf1,
 \qquad
 V_a=\frac1{8a^3}\sum_{m=0}^{M-1}
 :\gamma_m\gamma_{m+1}\gamma_{m+2}\gamma_{m+3}:_\infty.
\]

The subscript \(\infty\) denotes the infinite critical-chain Gaussian covariance, not finite-circle vacuum normal ordering. Explicitly, for positive odd \(r\),

\[
 \langle i\gamma_m\gamma_{m+r}\rangle_\infty
     =g_r^\infty=\frac2{\pi r},
\]

and the noncontact even-separation covariance vanishes. This is the same polynomial as

\[
 V_a=\frac1{8a^3}\sum_{j=0}^{N-1}\left[
 -X_jX_{j+1}-Z_jZ_{j+2}
 +\frac{14}{3\pi}(X_j+Z_jZ_{j+1})
 +\frac2\pi(-Y_jY_{j+1}+Z_jX_{j+1}Z_{j+2})
 -\frac{32}{3\pi^2}\right].
\]

Use the \(N\) positive-energy momenta

\[
 q_j=\frac{(2j+1)\pi}{M},\qquad 0\le j<N,
 \qquad
 c_q^\dagger=\frac1{\sqrt{2M}}\sum_{m=0}^{M-1}e^{iqm}\gamma_m.
\]

They satisfy \(\{c_q,c_p^\dagger\}=\delta_{qp}\), and

\[
 \gamma_m=\sqrt{\frac2M}\sum_{0<q<\pi}
      \big(e^{iqm}c_q+e^{-iqm}c_q^\dagger\big),
 \qquad
 H_{0,a}=E_{0,a}+\sum_q\epsilon_q c_q^\dagger c_q,
 \qquad \epsilon_q=\frac{2\sin q}{a}>0.
\]

The plane energy subtraction in \(H_0\) affects \(E_{0,a}\), but not intermediate-state gaps.

## 2. Exact finite-circle versus infinite-line Wick conversion

The true NS covariance for positive odd separation is

\[
 g_r^{\rm NS}=\frac1{N\sin(\pi r/(2N))},\qquad
 d_r=g_r^{\rm NS}-g_r^\infty.
\]

Only \(r=1,3\) enter this interaction. The difference \(d_r\), not \(g_r^{\rm NS}\) alone, is the contraction used to convert its prescribed plane Wick product into NS Wick products. Set
\(b_{m,r}=i\gamma_m\gamma_{m+r}\). Wick's theorem, with the original ordering of the four Majoranas retained, gives the exact summed identity

\[
\begin{split}
 8a^3V_a={}&\sum_m
 :\gamma_m\gamma_{m+1}\gamma_{m+2}\gamma_{m+3}:_{\rm NS}\\
 &-(2d_1+d_3)\sum_m:b_{m,1}:_{\rm NS}
   -d_1\sum_m:b_{m,3}:_{\rm NS}\\
 &-M(d_1^2+d_1d_3)\mathbf1.
\end{split}
\]

For example, \(\Delta C_{01}=-id_1\) and \(\Delta C_{03}=-id_3\), so the four-field identity term is
\(\operatorname{Pf}\Delta C=-d_1^2-d_1d_3\). The signs above are not chosen from the vacuum-energy target.

For either odd \(r=1,3\), Fourier transformation gives

\[
 \sum_m:b_{m,r}:_{\rm NS}
   =-4\sum_{0<q<\pi}\sin(rq)c_q^\dagger c_q.
\]

Hence the entire finite-circle quadratic correction is number diagonal. Its explicit coefficient is

\[
 V^{(2\;\mathrm{fermions})}_{a,\mathrm{NS}}
 =\frac1{2a^3}\sum_q
 \left[(2d_1+d_3)\sin q+d_1\sin(3q)\right]c_q^\dagger c_q.
\]

In particular,

\[
 \langle q_1q_2|V_a|0\rangle=0,
 \qquad
 \langle0|V_a|0\rangle
 =-\frac{M}{8a^3}(d_1^2+d_1d_3).
\]

The absence of a two-creation term also follows from the uniform Majorana-lattice translation sum: two distinct positive \(q\)'s cannot sum to \(0\) modulo \(2\pi\). It is a property of this exact summed interaction, not a general rule allowing finite-circle Wick corrections to be discarded.

As a consistency limit,

\[
 d_r=\frac{\pi r}{12N^2}
       +\frac{7\pi^3r^3}{2880N^4}
       +\frac{31\pi^5r^5}{483840N^6}+O(N^{-8}),
 \qquad
 \langle0|V_a|0\rangle\longrightarrow-\frac{\pi^2}{144L^3}.
\]

The circle correction remains important for excited-state self-energies and vertices even though it creates no state from the vacuum.

## 3. Vacuum-to-four-quasiparticle determinant and exact finite sum

For \(q_1<q_2<q_3<q_4\), define the normalized ordered state

\[
 |q_1q_2q_3q_4\rangle
 =c_{q_1}^\dagger c_{q_2}^\dagger
  c_{q_3}^\dagger c_{q_4}^\dagger|0\rangle,
\]

and its Vandermonde determinant

\[
 D(q_1,q_2,q_3,q_4)
 =\det_{0\le r\le3,\,1\le j\le4}e^{-irq_j}
 =\prod_{i<j}(e^{-iq_j}-e^{-iq_i}).
\]

Antisymmetrizing the four creation coefficients gives a determinant, not a determinant divided by \(4!\). Each Majorana contributes \(\sqrt{2/M}\), and the sum over \(m\) contributes \(M\) if total momentum is conserved. Consequently

\[
 \boxed{\langle q_1q_2q_3q_4|V_a|0\rangle
  =\frac{D(q_1,q_2,q_3,q_4)}{2a^3M}
       \mathbf1_{q_1+q_2+q_3+q_4=2\pi}.}
\]

Because each \(q\) lies strictly between \(0\) and \(\pi\), \(2\pi\) is the only possible conserved sum. In integer labels the constraint is
\(j_1+j_2+j_3+j_4=2N-2\). Also

\[
 |D|^2=\prod_{i<j}4\sin^2\frac{q_j-q_i}{2}.
\]

The energy gap in the same regulator is exactly
\(2a^{-1}\sum_j\sin q_j\), not a linearized CFT gap. The complete vacuum mixing coefficient is therefore

\[
 \boxed{
 E^{\rm mix}_{2,a}
 =-\frac1{8a^5M^2}
   \sum_{\substack{q_1<q_2<q_3<q_4\\\sum q_j=2\pi}}
        \frac{|D(q)|^2}{\sum_j\sin q_j}.}
\]

Equivalently, since \(L=aM/2\),

\[
 \frac{E^{\rm mix}_{2,a}}L=-\frac{\kappa_N}{a^6},
 \qquad
 \kappa_N=\frac1{4M^3}
   \sum_{\substack{q_1<q_2<q_3<q_4\\\sum q_j=2\pi}}
        \frac{|D(q)|^2}{\sum_j\sin q_j}>0.
\]

This formula is exact for every allowed finite \(N\). The negative sign is fixed by the positive intermediate-state gaps. The constant and quadratic Wick corrections in section 2 do not contribute to this vacuum mixing term; the NS-normal quartic creates exactly four particles.

### Exact small circles and numerical finite sums

At \(N=4\) only the set \(\{0,1,2,3\}\) occurs. At \(N=6\) the three integer sets are \(\{0,1,4,5\}\), \(\{0,2,3,5\}\), and \(\{1,2,3,4\}\). Exact trigonometric simplification gives

\[
 \kappa_4=\frac{(2-\sqrt2)^{5/2}}{512},\qquad
 \kappa_6=\frac{\sqrt{2-\sqrt3}}{864}.
\]

At \(L=1\), these imply

\[
 E^{\rm mix}_{2,a}\big|_{N=4}=-8(2-\sqrt2)^{5/2},
 \qquad
 E^{\rm mix}_{2,a}\big|_{N=6}=-54\sqrt{2-\sqrt3}.
\]

Selected actual restricted sums are:

| \(N\) | number of four-particle intermediate states | \(\kappa_N\) |
|---:|---:|---:|
| 4 | 1 | 0.0005129538812724632 |
| 6 | 3 | 0.0005991181599595381 |
| 8 | 8 | 0.0006526557638449989 |
| 16 | 86 | 0.0007171807677838801 |
| 32 | 790 | 0.0007352085632057932 |
| 64 | 6786 | 0.0007398298551473838 |
| 128 | 56238 | 0.0007409922517538020 |
| 256 | 457906 | 0.0007412832918463940 |
| 512 | 3695630 | 0.0007413560794101280 |

These values are evaluations of the derived kernel, not fits to a continuum spectrum. No finite-size extrapolation is used to define the bulk coefficient in the next section.

## 4. Leading UV coefficient as an actual spatial-momentum integral

The grid spacing is \(\delta q=2\pi/M\). Eliminating \(q_4\) leaves three independent sums; converting the ordered sum to a labeled integral supplies \(1/4!\). Thus

\[
 \boxed{\kappa=\frac1{96(2\pi)^3}
 \int_0^\pi dq_1\cdots\int_0^\pi dq_4\,
 \delta\!\left(\sum_jq_j-2\pi\right)
 \frac{\prod_{i<j}4\sin^2[(q_j-q_i)/2]}{\sum_j\sin q_j}.}
\]

This is the lattice dispersion and lattice vertex across the full Brillouin interval. Replacing either by its low-momentum symbol would define a different UV coefficient.

The apparent zero denominator occurs only at boundary vertices with two momenta at zero and two at \(\pi\). Near each such vertex, same-endpoint Vandermonde factors force the numerator to vanish at least to fourth order while the denominator vanishes linearly. The integrand has a continuous zero extension at those vertices. It is bounded on the compact constrained domain, so the constrained Riemann sums converge. It is positive on an open set, giving \(0<\kappa<\infty\). This establishes the leading \(a^{-6}\) term independently of any numerical extrapolation.

For stable deterministic integration introduce

\[
 q=(u+v,u-v,\pi-u+w,\pi-u-w),\quad
 0<u<\pi,\quad |v|,|w|<\min(u,\pi-u).
\]

The three-dimensional Jacobian after eliminating \(q_4\) has absolute value two. The integrand is even in \(v,w\) and invariant under \(u\mapsto\pi-u\). Therefore

\[
 \kappa=\frac1{6(2\pi)^3}
 \int_0^{\pi/2}du\int_0^u dv\int_0^u dw\,F(u,v,w),
\]

where

\[
\begin{split}
 \sum_j\sin q_j&=2\sin u(\cos v+\cos w),\\
 |D|^2&=256\sin^2v\sin^2w\,
 [\cos2u+\cos(v+w)]^2[\cos2u+\cos(v-w)]^2,\\
 F(u,v,w)&=\frac{|D|^2}{2\sin u(\cos v+\cos w)}.
\end{split}
\]

Mapping \(v=us,w=ut\), with \(s,t\in[0,1]\), gives a rectangular Gauss–Legendre integration domain. Direct quadrature gives:

| Gauss order per dimension | \(\kappa\) |
|---:|---:|
| 16 | 0.00074138034226564284 |
| 24 | 0.00074138034436122620 |
| 32 | 0.00074138034437844138 |
| 48 | 0.00074138034437903531 |
| 64 | 0.00074138034437902696 |
| 96 | 0.00074138034437902154 |
| 128 | 0.00074138034437906046 |
| 192 | 0.00074138034437906002 |

Agreement at the last displayed digits is a convergence test in double precision; it is not a rigorous quadrature error certificate. The finite-\(N\) sums independently approach the same coefficient from below in the checked examples; monotonicity for all \(N\) is not asserted.

## 5. Independent finite-spin checks

The new verification implementation constructs the physical PBC Pauli Hamiltonians directly, diagonalizes \(H_0\), and evaluates

\[
 \sum_{s\ne0}\frac{|\langle s|V_a|0\rangle|^2}{E_{0,a}-E_{s,a}}.
\]

It does not import any existing project script. The ground state's spin parity is checked to be \(+1\). At \(L=1\):

| \(N\) | physical-spin ED \(E^{\rm mix}_{2,a}\) | determinant-sum value | absolute residual |
|---:|---:|---:|---:|
| 4 | -2.101059097692 | -2.101059097692 | \(3.6\times10^{-15}\) |
| 6 | -27.952456871072 | -27.952456871072 | \(5.0\times10^{-14}\) |
| 8 | -171.08979255738 | -171.08979255738 | \(3.2\times10^{-13}\) |

Additional \(N=6\) direct spin-Jordan–Wigner tests use the actual Fourier quasiparticle creation matrices:

- annihilation of the vacuum by every \(c_q\): maximum norm \(1.9\times10^{-15}\);
- all vacuum-to-two-creation vertices: maximum magnitude \(1.5\times10^{-13}\);
- all complex vacuum-to-four-creation amplitudes against the stated determinant, including the momentum-selection rule: maximum error \(6.1\times10^{-14}\);
- four-particle eigenstate equation with exact \(2\sin q/a\) gaps: maximum norm residual \(1.4\times10^{-14}\).

The vacuum variance \(\langle V_a^2\rangle-\langle V_a\rangle^2\) is also compared with the denominator-free determinant sum. This separately checks the vertex normalization, rather than only a potential cancellation between vertex and denominator errors.

Mathematica exact checks returned zero residual for the Vandermonde identity, the pair-variable denominator identity and cross-factor reduction; the Jacobian determinant was \(-2\). It also returned the displayed \(d_r\) asymptotic series and exact \(N=4,6\) sums, without messages. Those CAS simplifications and the independent NumPy spin checks test different weak points of the calculation; they are not a derivation by spectral fitting.

A separate researcher (`spatial-wilson-matching`) was supplied only the Fourier/CAR conventions, dispersion and prescribed interaction, without this review's candidate factors. Their independent wedge expansion returned the same \(D/(2Ma^3)\) ordered four-creation amplitude, diagonal quadratic Wick correction, zero vacuum-to-two transition, and pre-linearization vacuum resolvent coefficient \(-1/(4M^2a^6L)\sum |D|^2/(\sum\epsilon_q)\). This checks the key normalization and Wick issue independently. The researcher did not duplicate the bulk-integral numerical calculation.

## 6. What is matched, and what remains open

### Direct operator/Wilson content established here

The vacuum resolvent matrix element

\[
 -\langle0|V_a Q(H_{0,a}-E_{0,a})^{-1}QV_a|0\rangle,
 \qquad Q=1-|0\rangle\langle0|,
\]

has been reduced to the exact same-regulator four-leg kernel. Its infinite-volume local identity contribution is \(-\kappa L/a^6\). Subtracting that term gives the explicit positive identity counterterm at the beginning. The subtraction condition is an infinite-volume bulk-energy normalization. No universal deformed finite-circle energy is used to set \(\kappa\).

### Not yet matched

The calculation does **not** determine the quadratic self-energy or the connected four-external-leg UV Taylor coefficients. These require vacuum-subtracted external matrix elements of the same lattice resolvent/OFPT kernel, including all particle-number channels, and the finite-circle quadratic Wick terms when appropriate. Lower-dimensional counterterms and dimension-six finite local coefficients cannot be inferred from this single identity coefficient.

In particular:

1. Adding the leading identity subtraction alone does not prove that the remaining vacuum coefficient is finite as \(a\to0\).
2. The finite local \(V_2\) stencil candidate discussed elsewhere has a fixed-mode continuum limit; that fact does not subtract the present \(a^{-6}\) loop. Its coefficients are not established by this calculation.
3. A complete same-regulator \(C_{2,a}\) must cancel and match all relevant operator directions, not just this bulk vacuum term. State-dependent divergences and finite offdiagonal matching remain open.
4. Mode-cutoff counterterms, including their power and logarithmic coefficients, have not been copied to this spatial lattice. The full trigonometric kernel here makes that shortcut unwarranted without further matching.
5. Nothing here proves a nonzero-\(\lambda\) continuum existence statement or an exact finite-cutoff Burgers-flow Hamiltonian.

**Verified:** exact finite-\(N\) NS vacuum kernel; finite-circle Wick conversion and absence of vacuum-to-two creation; leading bulk integral and its normalization; exact \(N=4,6\) values; direct finite-spin ED and determinant checks; convergent numerical bulk quadrature.

**Assumptions:** even \(N\), physical spin PBC, NS even-parity vacuum, \(L=Na\), the specified infinite-chain Wick prescription, and expansion without a factorial in \(\lambda^2\).

**Not verified:** a closed form or certified numerical interval for \(\kappa\); general finite-size asymptotic coefficients beyond its leading limit; external-leg self-energy/four-leg matching; the complete spatial \(C_{2,a}\); or the renormalized full second-order CFT spectrum.
