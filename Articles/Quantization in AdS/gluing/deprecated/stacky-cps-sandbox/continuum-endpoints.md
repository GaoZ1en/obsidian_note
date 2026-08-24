# Continuum Endpoint: Fock Obstruction and Algebraic Gluing

> Status: the natural parity-resolved sharp-cut comparison fails the Shale--Stinespring Hilbert--Schmidt test for every finite mass. The 0-truncated strong-solution reconstruction nevertheless induces an exact Weyl-algebra isomorphism. A local AQFT or derived algebraic descent theorem remains open.

## 1. Verdict

For the centered cut interval scalar, the natural continuum comparison has an algebraic, not Fock-unitary, endpoint.

- The relative sector is unchanged by gluing and has zero Bogoliubov $\beta$ block.
- The common sector compares Dirichlet--Dirichlet modes on a half interval with Dirichlet--Neumann modes.
- Its explicit $\beta$ matrix is not Hilbert--Schmidt. Hence the sharp-cut regional product Fock representation is not unitarily carried to the global vacuum representation by this symplectic comparison.
- The classical reconstruction map remains a symplectic isomorphism, so it induces an exact isomorphism of abstract Weyl CCR algebras and an exact pullback of global states and correlation functions.

This is not a contradiction. Finite-dimensional metaplectic equivalence holds at every cutoff, while the implementers fail to have the required continuum Fock limit.

## 2. Declared Continuum Comparison

Use the centered cut and decompose the two regional copies into common and relative combinations. On one half interval $[0,L]$, define the normalized Dirichlet--Dirichlet modes

$$\begin{align}
u_n(y) =\sqrt{\frac2L}\sin\frac{n\pi y}{L}, \qquad n\geq1,
\end{align}$$

and the Dirichlet--Neumann modes

$$\begin{align}
v_j(y) =\sqrt{\frac2L} \sin\frac{(j-\tfrac12)\pi y}{L}, \qquad j\geq1.
\end{align}$$

The relative regional combination has $q=0$ at the cut. It therefore remains in the Dirichlet--Dirichlet sector and reconstructs the odd-under-reflection global fields, which are the even-numbered global modes.

The common regional combination reconstructs the even-under-reflection global fields. Smoothness across the centered cut makes the derivative vanish there, so the half-interval global modes obey a Neumann condition at $y=L$. This is the Dirichlet--Neumann sector.

Both $\{u_n\}$ and $\{v_j\}$ are orthonormal bases of $L^2(0,L)$. Declare the continuum classical comparison in the common sector by the real orthogonal overlap matrix

$$\begin{align}
O_{jn} :=\int_0^Ldy\,v_j(y)u_n(y),
\end{align}$$

applied to both configuration and momentum quadratures. This is the spectral continuum analogue of using the same $L^2$ field data while changing the half-interval boundary spectral presentation.

The finite positive-square-root transport of `finite-quantum-comparison.md` is not yet proved to converge to this map. The theorem below is therefore a verdict for this declared natural continuum comparison, not a convergence theorem for that particular finite matrix family.

## 3. Exact Overlap and Bogoliubov Matrix

Write

$$\begin{align}
s_j:=j-\frac12.
\end{align}$$

Direct integration gives

$$\begin{align}
O_{jn} =(-1)^{n+j} \frac{2n}{\pi(n^2-s_j^2)}.
\end{align}$$

Let

$$\begin{align}
\omega_n =\sqrt{m^2+\frac{n^2\pi^2}{L^2}}, \qquad \Omega_j =\sqrt{m^2+\frac{s_j^2\pi^2}{L^2}}.
\end{align}$$

The common-sector annihilation operators are related by

$$\begin{align}
a_j =\sum_{n\geq1} \left( \alpha_{jn}b_n+\beta_{jn}b_n^\dagger \right),
\end{align}$$

where

$$\begin{align}
\alpha_{jn} =\frac12 \left( \sqrt{\frac{\Omega_j}{\omega_n}} +\sqrt{\frac{\omega_n}{\Omega_j}} \right)O_{jn},
\end{align}$$

and

$$\begin{align}
\beta_{jn} =\frac12 \left( \sqrt{\frac{\Omega_j}{\omega_n}} -\sqrt{\frac{\omega_n}{\Omega_j}} \right)O_{jn}.
\end{align}$$

For $m=0$, cancellation of $n-s_j$ between the frequency difference and the overlap denominator gives the exact formula

$$\begin{align}
|\beta_{jn}|^2 =\frac{n}{\pi^2s_j(n+s_j)^2}.
\end{align}$$

## 4. The Fock Obstruction

### Theorem 4.1 — Failure of the Hilbert--Schmidt Condition

For every fixed $m\geq0$ and $L>0$,

$$\begin{align}
\sum_{j=1}^{\infty}\sum_{n=1}^{\infty}
|\beta_{jn}|^2 =\infty.
\end{align}$$

Therefore the declared common-sector symplectic comparison is not unitarily implementable between the regional product and global Fock representations. Adding the exact relative sector does not change this verdict.

#### Proof for $m=0$

For a dyadic integer $R$, restrict to

$$\begin{align}
R<n\leq2R, \qquad R<j\leq2R.
\end{align}$$

There are $R^2$ such pairs. On this block,

$$\begin{align}
\frac{n}{s_j}>\frac12, \qquad n+s_j<4R.
\end{align}$$

Hence

$$\begin{align}
|\beta_{jn}|^2
>\frac{1}{32\pi^2R^2}.
\end{align}$$

Every dyadic block contributes more than $1/(32\pi^2)$. The blocks are disjoint, so the double sum diverges.

#### Extension to Finite $m$

Let $a:=\pi/L$ and $f(t):=\sqrt{m^2+a^2t^2}$. On the same dyadic block, the mean-value theorem gives

$$\begin{align}
\frac{f(s_j)-f(n)}{s_j-n} =f'(\xi_{jn}) =a\left(1+O(R^{-2})\right)
\end{align}$$

uniformly, because $R<\xi_{jn}<2R$. Also

$$\begin{align}
\sqrt{f(s_j)f(n)} =a\sqrt{s_jn}\left(1+O(R^{-2})\right).
\end{align}$$

Thus the massive $|\beta_{jn}|^2$ equals the massless expression times $1+O(R^{-2})$ uniformly on the block. For all sufficiently large $R$, the same positive block lower bound holds up to a fixed factor, and the dyadic sum again diverges. ∎

The implementability implication is the bosonic criterion proved by [Shale, *Linear Symmetries of Free Boson Fields*](https://doi.org/10.1090/S0002-9947-1962-0137504-6): the antilinear Bogoliubov block must be Hilbert--Schmidt.

### Numerical Check

`continuum_dd_dn_checks.wl` verifies the overlap and massless formulas by direct integration for the first $6\times6$ entries. With a square cutoff $1\leq j,n\leq N$, the partial sums are:

| $N$ | $m=0$ | $m=1$, $L=1$ |
|---:|---:|---:|
| 8 | $0.488456$ | $0.399409$ |
| 16 | $0.719851$ | $0.608357$ |
| 32 | $1.002130$ | $0.867725$ |
| 64 | $1.334754$ | $1.177195$ |
| 128 | $1.717172$ | $1.536332$ |
| 256 | $2.148966$ | $1.944783$ |
| 512 | $2.629859$ | $2.402298$ |

These numbers illustrate the divergence; the proof is the dyadic lower bound, not monotonic growth of a finite table.

## 5. What Exactly Fails

The theorem proves the following precise statement:

> There is no unitary on the regional product Fock space that implements the declared sharp-cut DD-to-DN symplectic comparison and maps its reference vacuum to the global vacuum.

It does not prove that the abstract CCR algebra fails, that local observables cannot be reconstructed, or that every conceivable continuum comparison is nonimplementable. A different comparison must declare its classical topology and symplectic map and pass its own criterion.

For more general quasifree representation comparisons, [Araki and Yamagami](https://doi.org/10.2977/prims/1195183576) require both equivalence of the induced topologies and a Hilbert--Schmidt condition on the square roots of the two-point operators. This is relevant because the finite matrices $M_N^{\pm1/2}$ are not uniformly benign: for example,

$$\begin{align}
\|\boldsymbol b_N\|^2 =\frac{\pi^2}{L}\sum_{n=1}^Nn^2,
\end{align}$$

and the Rayleigh quotient of $M_N$ along $\boldsymbol b_N$ is

$$\begin{align}
1+4N+\frac{2\pi^2}{3}\sum_{n=1}^Nn^2.
\end{align}$$

Hence $\|M_N\|$ grows at least cubically. The finite positive-square-root transports require their own topology and convergence theorem before they define a continuum symplectic comparison.

## 6. Exact Algebraic Endpoint

Let

$$\begin{align}
R_c:
(\Gamma_{\mathrm g},\omega_{\mathrm g}) \xrightarrow{\ \cong\ }
(\Gamma_{\mathrm{match}},\omega_{\mathrm{match}})
\end{align}$$

be the strong-solution Cauchy-data symplectic isomorphism proved in `lorentzian-linear-target.md`. For a real symplectic vector space $(V,\omega)$, let $\mathcal W(V,\omega)$ denote its Weyl CCR algebra, generated by $W(v)$ with

$$\begin{align}
W(v)W(w) =e^{-i\omega(v,w)/2}W(v+w), \qquad W(v)^*=W(-v).
\end{align}$$

### Theorem 6.1 — Weyl-Algebra Gluing

The reconstruction isomorphism induces a $*$-isomorphism

$$\begin{align}
\mathcal W(R_c): \mathcal W(\Gamma_{\mathrm g},\omega_{\mathrm g}) \xrightarrow{\ \cong\ } \mathcal W(\Gamma_{\mathrm{match}},\omega_{\mathrm{match}}),
\end{align}$$

defined on Weyl generators by

$$\begin{align}
\mathcal W(R_c)(W(z)) =W(R_cz).
\end{align}$$

#### Proof

Because $R_c$ is a bijective symplectic linear map, it preserves the Weyl relations. Its inverse induces the inverse $*$-homomorphism. ∎

If $\varpi_{\mathrm g}$ is any state on the global Weyl algebra, then

$$\begin{align}
\varpi_{\mathrm{match}} :=\varpi_{\mathrm g}\circ\mathcal W(R_c)^{-1}
\end{align}$$

is a state on the matched regional algebra. Its two-point function contains the cross-region correlations inherited from the global state. No tensor factorization of the global Hilbert space is required.

This is the minimum algebraic success criterion in the present sandbox. It is exact but modest: the matched algebra already contains the continuity and flux constraints.

## 7. Longer Algebraic Programme

The next algebraic theorem should replace the single global/matched Weyl isomorphism by a local net or functorial statement:

1. assign observable algebras to causally admissible subregions away from and across the artificial cut;
2. prove isotony, causal commutativity, and a suitable time-slice statement with the physical timelike outer boundary;
3. formulate the interface matching as a pushout, relative tensor product, or homotopy-coherent descent statement at the algebraic level;
4. show that the pulled-back global quasifree state reconstructs commutators and cross-cut correlators;
5. compare this algebraic descent with the derived solution-stack pullback rather than identifying them by notation.

The functorial algebra and time-slice framework of [Brunetti--Fredenhagen--Verch](https://arxiv.org/abs/math-ph/0112041) and the Weyl-algebra treatment of the free scalar in [Fewster--Verch](https://arxiv.org/abs/1109.6732) are precedents, not proofs for the present timelike-boundary gluing problem.

## 8. Verification Boundary

### Verified

- the parity decomposition into an exact relative DD sector and a common DN sector;
- the DD--DN overlap matrix;
- the exact massless Bogoliubov coefficient;
- failure of the Hilbert--Schmidt condition for all fixed finite masses by a dyadic lower bound;
- the resulting failure of the declared continuum Fock implementer;
- the exact Weyl-algebra isomorphism induced by the proved classical symplectic reconstruction;
- the finite formula and partial-sum checks in `continuum_dd_dn_checks.wl`.

### Assumptions and Choices

- the centered cut and the parity-resolved $L^2$ spectral comparison;
- positive-frequency structures defined by the half-interval DD and DN Klein--Gordon operators;
- Weyl quantization of the real strong-solution Cauchy phase space;
- fixed $m\geq0$, $L>0$, and $\hbar=1$.

### Not Verified

- convergence of the finite positive-square-root transport to the declared continuum overlap map;
- quasi-equivalence or disjointness beyond the stated failure of unitary implementation;
- a local algebraic descent, factorization-algebra, or time-slice theorem with the artificial timelike interface;
- compatibility of the algebraic endpoint with a derived BV--BFV gluing complex;
- gauge, Maxwell, or gravity extensions.
