# Independent finite-cutoff Ising construction: first-order stress product

## Result and scope

**A range-three spin Hamiltonian gives a concrete first-order low-energy realization with actual interactions across a spatial cut.** The necessary subtraction is not just a bulk constant and a multiple of the critical Hamiltonian: a third-neighbour Majorana hopping counterterm is also required. Full infinite-critical-vacuum Wick subtraction makes the normalization calculable.

The result below is an independently derived cutoff construction, not an assertion that a standard interacting Ising chain already is an exact finite-cutoff $T\bar T$ theory. Its strongest analytic statement is convergence of every matrix element in a fixed finite NS low-mode subspace, with an $O(a^2)$ error at fixed circumference. Explicit NS and Ramond ground-state slopes provide independent finite-circle checks. A full off-diagonal Ramond zero-mode proof, all-order deformation, uniform high-energy bounds, and a fixed-nonzero-$\lambda$ continuum limit are **not** established here.

Conventions: $N$ spins, periodic spin boundary conditions, $L=Na$, $v=\hbar=1$, Pauli matrices $X_j,Y_j,Z_j$, and

$$
H_0=\frac1{2a}\left[-\sum_j(Z_jZ_{j+1}+X_j)+\frac{4N}{\pi}\right].
$$

The proposed finite-cutoff family is exactly the finite matrix

$$
H_a(\lambda)=H_0+\lambda V_a,
$$

where, for $N\geq4$ and indices modulo $N$,

$$
\boxed{
V_a=\frac1{8a^3}\sum_j\left[
-X_jX_{j+1}-Z_jZ_{j+2}
+\frac{14}{3\pi}(X_j+Z_jZ_{j+1})
+\frac2\pi(-Y_jY_{j+1}+Z_jX_{j+1}Z_{j+2})
-\frac{32}{3\pi^2}\mathbf1
\right].
}
$$

Thus $[\lambda]=\text{length}^2$, $[V_a]=\text{length}^{-3}$. It is Hermitian, finite range, and spin-flip invariant. At fixed $a,N$ it defines bounded unitary dynamics for either sign of $\lambda$. That elementary finite-matrix fact is not a continuum UV-completion result.

Its continuum first derivative is

$$
V_1=-4\int_0^L dx\,h_R(x)h_L(x),
\qquad H_{\rm CFT}=\int(h_R+h_L),\quad P=\int(h_R-h_L),
$$

so on a stationary CFT energy-momentum eigenspace

$$
\boxed{E'_\lambda\big|_0=\frac{P^2-E^2}{L}.}
$$

Here $E$ includes the Casimir energy. At finite $a$, the equality is asymptotic, not an exact equation using the finite-lattice energy.

## 1. Exact lattice algebra and counterterms

Use Jordan–Wigner Majoranas with the following signs:

$$
\alpha_j=\left(\prod_{k<j}X_k\right)Z_j,
\qquad
\beta_j=\left(\prod_{k<j}X_k\right)Y_j,
\qquad
\gamma_{2j}=\alpha_j,\quad\gamma_{2j+1}=\beta_j.
$$

They satisfy $\{\gamma_m,\gamma_n\}=2\delta_{mn}$ and

$$
i\alpha_j\beta_j=X_j,\qquad
i\beta_j\alpha_{j+1}=Z_jZ_{j+1},\qquad
H_{\rm Ising}=-i\sum_m\gamma_m\gamma_{m+1}.
$$

For a periodic spin chain the final equality uses the parity-dependent Jordan–Wigner boundary condition; it must not be interpreted as a single fixed fermion spin structure on the whole spin Hilbert space.

Put $M=2N$. In the infinite critical vacuum,

$$
c(r):=\langle\gamma_m\gamma_{m+r}\rangle_\infty
=\begin{cases}-2i/(\pi r),&r\text{ odd},\\0,&r\neq0\text{ even}.\end{cases}
$$

The sign follows already from $\langle-i\gamma_m\gamma_{m+1}\rangle=-2/\pi$. Define the complete fermionic Wick-normal product

$$
Q_m=: \gamma_m\gamma_{m+1}\gamma_{m+2}\gamma_{m+3}:_\infty.
$$

For ordered indices $0,1,2,3$ its formula is

$$
\begin{split}
Q={}&\gamma_0\gamma_1\gamma_2\gamma_3
-[c_{01}\gamma_2\gamma_3-c_{02}\gamma_1\gamma_3+c_{03}\gamma_1\gamma_2
+c_{12}\gamma_0\gamma_3-c_{13}\gamma_0\gamma_2+c_{23}\gamma_0\gamma_1]\\
&+[c_{01}c_{23}-c_{02}c_{13}+c_{03}c_{12}].
\end{split}
$$

Since $c(2)=0$, $c(1)=-2i/\pi$, $c(3)=-2i/(3\pi)$,

$$
\sum_m Q_m=\sum_m\left[
\gamma_m\gamma_{m+1}\gamma_{m+2}\gamma_{m+3}
+\frac{14i}{3\pi}\gamma_m\gamma_{m+1}
+\frac{2i}{\pi}\gamma_m\gamma_{m+3}
-\frac{16}{3\pi^2}\mathbf1\right],
\qquad
V_a=\frac1{8a^3}\sum_mQ_m.
$$

The spin identities giving the boxed Hamiltonian are

$$
\sum_m\gamma_m\gamma_{m+1}\gamma_{m+2}\gamma_{m+3}
=-\sum_j(X_jX_{j+1}+Z_jZ_{j+2}),
$$

$$
\sum_m i\gamma_m\gamma_{m+3}
=\sum_j(-Y_jY_{j+1}+Z_jX_{j+1}Z_{j+2}).
$$

The quartic is literally a point-split product of lattice bond-energy bilinears: if $b_m=i\gamma_m\gamma_{m+1}$, it equals $-b_mb_{m+2}$. After full Wick subtraction its leading nonzero continuum operator is the desired stress product. It is not claimed to equal a uniquely defined lattice determinant of a conserved stress tensor at arbitrary momentum.

### What each counterterm does

- The identity removes the first-order infinite-volume vacuum-energy density; the finite-circle Casimir response must remain.
- The nearest-neighbour hopping is an energy/velocity subtraction.
- The length-three hopping removes the remaining bilinear dispersion contamination. Expanding it contains both velocity and higher-derivative bilinears. A subtraction proportional to $H_0$ alone cannot remove its full momentum dependence, including the dimension-four chiral bilinear contamination.
- No bulk relevant counterterm is required at this order in this exactly uniform construction. Spin flip excludes $\sigma$; the Ising mass $\epsilon\sim iRL$ is odd under the bulk one-Majorana translation/Kramers–Wannier duality. More directly, full Wick subtraction removes all bilinear contractions exactly. This does not assert absence of physical-boundary counterterms for open chains, or protection after explicitly breaking these symmetries.

Normal ordering on each finite circle instead of in the infinite vacuum is a different, size-dependent subtraction. It would remove the physical vacuum slope and generally lose the requested Casimir normalization.

## 2. Low-energy operator matching and coefficient

The Majorana spacing is $d=a/2$. With $x=md$, introduce real continuum fields with

$$
\{R(x),R(y)\}=\{L(x),L(y)\}=\delta(x-y),\quad\{R,L\}=0,
$$

and low-mode expansion

$$
\gamma_m=\sqrt a\,[R(x)+(-1)^mL(x)]+\text{higher spatial derivatives}.
$$

This normalization also follows directly from $\alpha_j\simeq\sqrt a(R+L)$, $\beta_j\simeq\sqrt a(R-L)$. It yields

$$
h_R=-\frac i2: R\partial_xR:,
\qquad h_L=+\frac i2:L\partial_xL:,
\qquad H_{\rm CFT}=\int(h_R+h_L).
$$

For the leading two-right/two-left term, order the Grassmann basis as $(R,R',L,L')$. The coefficient in the product of four adjacent lattice fields is the determinant

$$
\det_{j=0,1,2,3}(1,jd,(-1)^j,(-1)^jjd)=-16d^2.
$$

Consequently

$$
Q_m=-4a^4:R R' L L':+\cdots=-16a^4h_Rh_L+\cdots,
$$

and $\sum_m\simeq(2/a)\int dx$ gives

$$
\frac1{8a^3}\sum_mQ_m\longrightarrow-4\int dx\,h_Rh_L.
$$

A same-chirality product of four fermions first needs derivative orders $0,1,2,3$, hence has dimension eight, not dimension four. Terms with an odd number of one chirality carry an alternating lattice phase and disappear from uniform sums of fixed low modes. This is why removing the bilinear contractions is sufficient to isolate the dimension-four scalar; symmetry alone would not fix its coefficient or eliminate all lattice bilinear descendants.

### A finite-matrix statement, stronger than energy slopes

Fix $L$ and a finite set $K$ of NS fermion mode numbers, independent of $a$. Let $\mathcal H_K$ be its finite Fock space with all modes outside $K$ in the NS vacuum, and identify it with the corresponding exact lattice-mode states by $\iota_a$. For the physical periodic-spin NS sector restrict to even total fermion parity. Then

$$
\iota_a^\dagger V_a\iota_a
=P_K\left[-4\int_0^Lh_Rh_L\,dx\right]P_K+O_{K,L}(a^2)
$$

as a finite-dimensional matrix, hence also in its finite-matrix operator norm. This concerns projected matrix elements, not convergence of the full operators, time evolution at fixed nonzero coupling, or norm-resolvent convergence.

A constructive proof uses the following finite Fourier kernels rather than an assumption of universality:

1. The normal-ordered four-external-mode kernel is the determinant with rows
   $$(e^{ipjd},e^{iqjd},(-1)^je^{irjd},(-1)^je^{isjd}),\qquad j=0,1,2,3.$$
   Its expansion is
   $$16(p-q)(r-s)d^2+24i(p-q)(r-s)(p+q+r+s)d^3+O_K(d^4).$$
   The uniform sum imposes $p+q+r+s=0$ for signed external momenta, so the apparent $O(a)$ correction vanishes. Odd chirality counts have a reciprocal-half-lattice phase and vanish exactly once the fixed modes lie well below the cutoff. Four equal chiralities start at $d^6$.
2. Wick-expand instead with respect to the finite NS vacuum. The difference between its contractions and the infinite ones is, for odd fixed $r$,
   $$\delta c(r)=-\frac{i\pi r}{3M^2}+O(M^{-4})=-\frac{i\pi r a^2}{12L^2}+O(a^4).$$
   More explicitly, let $:\cdot:_C$ denote NS-cylinder Wick ordering, $\delta_r=c_{\rm NS}(r)-c(r)$, and $H_{\rm exc}=H_{\rm CFT}+\pi/(12L)$. The exact summed Wick reordering is
   $$\sum_mQ_m=\sum_m:\gamma_m\gamma_{m+1}\gamma_{m+2}\gamma_{m+3}:_C+(2\delta_1+\delta_3)\sum_m:\gamma_m\gamma_{m+1}:_C+\delta_1\sum_m:\gamma_m\gamma_{m+3}:_C+M(\delta_1^2+\delta_1\delta_3).$$
   For odd fixed $r$, its projected bilinear sum is $2iraH_{\rm exc}+O_K(a^3)$: the even-derivative candidate integrates to zero and the mixed chiralities alternate. With $\delta_3=3\delta_1+O(a^4)$, these two-external-mode and zero-external-mode pieces, after dividing by $8a^3$, become respectively $\pi H_{\rm exc}/(6L^2)+O(a^2)$ and $-\pi^2/(144L^3)+O(a^2)$. They are exactly the missing Casimir-times-stress and Casimir-squared terms in $-4\int h_Rh_L$.
3. There are only finitely many matrix entries on $\mathcal H_K$, so their uniform Taylor bounds imply the displayed finite-matrix estimate.

In cylinder Virasoro notation, $c=1/2$ and $H_R=(2\pi/L)(L_0-c/24)$, the limiting operator is

$$
V_1=-\frac{16\pi^2}{L^3}\left[
(L_0-c/24)(\bar L_0-c/24)+\sum_{n\ne0}L_n\bar L_n\right].
$$

The common index $n$ follows from spatial integration; either simultaneous choice of opposite spatial Fourier conventions gives the same formula. With $[L_0,L_n]=-nL_n$, nonzero $n$ changes total conformal level by $-2n$. Thus within a fixed energy-and-momentum eigenspace only $n=0$ contributes, and its restriction is a scalar. This proves the first-order spectral formula even in leading CFT descendant degeneracies; it does not assert that the full interaction is diagonal or dynamically trivial.

The analogous full off-diagonal Ramond construction requires retaining the two zero modes and their parity constraint. Its finite-difference mechanism is the same, but that complete finite-matrix proof was not carried out here. The physical Ramond ground-state check below is explicit.

## 3. Exact finite-circle first-order slopes

These formulas require no interacting diagonalization. A free momentum-number state is Gaussian, so Wick's theorem computes its exact expectation of $V_a$.

### NS states

The independent positive-energy momenta are $q_j=\pi j/M$, $j=1,3,\ldots,M-1$, with one-particle energies $2\sin q_j/a$. If $\mathcal O$ is the occupied set, define

$$
d_r=c_{\rm NS}(r)-c(r)+\frac{4i}{M}\sum_{j\in\mathcal O}\sin(\pi jr/M),
\quad
c_{\rm NS}(r)=\begin{cases}-2i/[M\sin(\pi r/M)],&r\text{ odd},\\0,&r\text{ even}.\end{cases}
$$

Then the exact diagonal first derivative is

$$
\boxed{\langle V_a\rangle_{\mathcal O}=\frac{M}{8a^3}(d_1^2-d_2^2+d_1d_3).}
$$

The $-d_2^2$ term matters for moving states. The infinite vacuum has $c(2)=0$, but an excited state with unequal chiral energies generally does not.

Writing $e=E/L$ and $p=P/L$ for the limiting CFT values gives

$$
d_r=ir a^2[h_R-(-1)^rh_L]+\cdots,
$$

so $d_1=ia^2e+\cdots$, $d_2=2ia^2p+\cdots$, $d_3=3ia^2e+\cdots$. The boxed formula becomes $L(p^2-e^2)$, with $O(a^2/L^5)$ corrections at fixed conformal levels.

For the vacuum, set $u=\pi/M$. Its exact lattice energy is

$$
E_{0,a}=\frac1a\left(\frac M\pi-\csc\frac\pi M\right)\longrightarrow-\frac\pi{12L}.
$$

The slope has expansion

$$
\langle V_a\rangle_{\rm NS,0}
=-\frac{\pi^2}{144L^3}\left[1+\frac{14}{15}u^2+O(u^4)\right].
$$

### Physical Ramond/Ising-$\sigma$ ground state

In the periodic-fermion sector the nonzero-mode covariance is $-2i\cot(\pi r/M)/M$ for odd $r$. The two zero modes add an alternating term $b(-1)^m$, $b=\pm2i/M$, to odd-distance contractions. For $Q_m$ its contribution is proportional to $(-1)^m$ after the Pfaffian cancellations, and its uniform sum vanishes. Therefore put

$$
d_r=-\frac{2i}{M}\cot\frac{\pi r}{M}+\frac{2i}{\pi r},\qquad r=1,3,
$$

and obtain exactly

$$
\langle V_a\rangle_{{\rm R},0}=\frac{M}{8a^3}(d_1^2+d_1d_3)
=-\frac{\pi^2}{36L^3}\left[1+\frac8{15}u^2+O(u^4)\right].
$$

The physical spin ground state in this sector has $(h,\bar h)=(1/16,1/16)$, hence $E=\pi/(6L)$, $P=0$, exactly reproducing the target leading coefficient. The two choices of zero-mode sign are not two freely added physical periodic-spin ground states: the Jordan–Wigner parity constraint selects the allowed one.

### Small computational checks

Mathematica exact Pauli matrices on four open spins verified both local quartic and third-hopping spin maps with zero residual, and verified both nearest-hopping signs. Mathematica also verified the determinant and Fourier Taylor coefficients, Wick constant $-16/(3\pi^2)$ per Majorana position, and the NS/R vacuum series. No kernel messages occurred.

The following are evaluations of the exact Gaussian formulas, not large interacting numerics. Set $L=1$, $a=1/N$:

| State | $N=32$ | $N=64$ | $N=128$ | CFT target |
|---|---:|---:|---:|---:|
| NS vacuum | $-0.06869340109$ | $-0.06857747567$ | $-0.06854855450$ | $-0.06853891945$ |
| NS $\epsilon$, occupied $j=1,M-1$ | $-36.13214681$ | $-36.22582420$ | $-36.24927054$ | $-529\pi^2/144=-36.25708839$ |
| NS chiral $T$, occupied $j=1,3$ | $6.442303692$ | $6.494376386$ | $6.507017474$ | $95\pi^2/144=6.511197348$ |
| Ramond $\sigma$ ground | $-0.2745086741$ | $-0.2742437998$ | $-0.2741777004$ | $-\pi^2/36=-0.2741556778$ |

The errors scale as $N^{-2}$. These are finite examples supporting the explicit analytic expansion, not a substitute for the finite-matrix argument.

## 4. Spatial algebras, actual crossing interactions, and observables

The physical cutoff Hilbert space is $(\mathbb C^2)^{\otimes N}$ and the algebra of a spatial set $A$ is exactly

$$
\mathcal A_A=\bigotimes_{j\in A}M_2(\mathbb C),\qquad
\mathcal A_{A\cup B}=\mathcal A_A\otimes\mathcal A_B
$$

for disjoint sets. All spin operators, including $Z_j$, are physical local observables. Across a cut between sites $0$ and $1$, the perturbation contains, among others, $X_0X_1$, $Y_0Y_1$, $Z_{-1}Z_1$, and $Z_{-1}X_0Z_1$. Thus its crossing interaction is nonzero and cannot be replaced by a tensor product of separately deformed half-chain Hamiltonians. A decomposition $H=H_A+H_B+H_{\rm cross}$ is an exact algebraic sewing prescription at finite cutoff, with no centralizer constraint or added interface Hilbert space needed.

This is the **bosonic Ising spin chain**, not merely an ungauged fermionic Majorana theory. On a ring, spin-flip $F=\prod_jX_j=+1$ gives NS fermions with the even-parity projection, and $F=-1$ gives Ramond fermions with the matching parity projection. A single unprojected NS or R Fock space has the wrong operator content for the full periodic-spin theory. The $Z_j$ observable is a Jordan–Wigner string in fermion variables and connects the relevant spin sectors. Conversely, single Majoranas are not local spin observables. Fermionic regional CAR algebras use a graded tensor product; replacing them with ordinary tensor factors without explaining the Jordan–Wigner convention changes the spatial problem.

Three direct tests distinguish an interacting realization from a spectrum-only relabelling:

1. **Local response.** Prepare a specified state independent of $\lambda$, apply a local spin pulse in $A$, and measure, for example, $X_k(t)$ or a spin correlator in $B$. The first derivative at fixed initial state is
   $$\partial_\lambda\langle O(t)\rangle\big|_0=i\int_0^t ds\,\langle[V_{a,I}(s),O_I(t)]\rangle.$$
   It involves the actual crossing terms and off-diagonal matrix elements. Preparing the interacting ground state requires an additional state-response term. Lattice $X,Z$ are already legitimate physical observables; a universal continuum $\epsilon$ or $\sigma$ comparison additionally needs their known nonuniversal lattice-to-field amplitudes and, for the full $\sigma$ response, the sector-changing matching not proved above.
2. **Energy transfer.** Assign each local Hamiltonian term to an anchor, $H=\sum_jh_j$, and use a windowed local energy $H_f=\sum_jf_jh_j$. Its exact rate is $\dot H_f=i[H,H_f]$, supported in a finite collar where $f$ changes. A smooth or half-bond convention controls boundary-energy storage. A pulse crossing the cut probes the $O(\lambda)$ correction to current and collision dynamics; deleting $H_{\rm cross}$ eliminates the corresponding transfer. Alternative local energy assignments differ by local improvement/storage terms, not by a new bulk observable.
3. **Entropy or purity.** Compute $\rho_A(t)=\operatorname{Tr}_B\rho(t)$ in the spin tensor product. The crossing Hamiltonian can change $S_A$ or $\operatorname{Tr}\rho_A^2$, whereas separate unitaries on $A,B$ cannot. For an initially pure product state the von Neumann entropy has a nonanalytic $t^2\log t$ onset, so purity is the cleaner short-time test. Fixed-cutoff entropy is unambiguous, but its first $\lambda$ correction is generally dominated by cutoff-scale entanglement near the cut. A claimed universal continuum entropy needs an explicit subtraction/observable prescription, for example suitable separated-region mutual information, not just the energy-flow equation.

These are proposed tests; no large dynamical or entropy numerics were run in this independent investigation.

## 5. Where the UV limit fails

The dimensionless microscopic deformation is $\lambda/a^2$. Uniform first-order perturbation theory over the whole cutoff Hilbert space requires $|\lambda|/a^2\ll1$. For fixed low states the continuum insertion is meaningful and small when $|\lambda|E^2\ll1$, after the displayed subtractions, but this is a statement about derivatives at $\lambda=0$, not a uniform theorem in nonzero $\lambda$.

At fixed nonzero $\lambda$, taking $a\to0$ drives the bare interacting chain to strong coupling. Higher-order counterterms and other irrelevant operators are uncontrolled; a different lattice phase is possible. Finite-dimensional boundedness for every $a$ does not prevent a singular sequence of continuum limits. Nor does the first-order construction imply exact $T\bar T$ integrability, the Burgers spectrum for all levels, or an all-order finite-range stress flow. The original critical chain already has $O(a^2)$ Lorentz-breaking dispersion corrections; this construction matches the first deformation insertion while leaving those ordinary cutoff effects.

Likewise, projected low-mode matrix-element convergence does not by itself prove convergence of dynamics that repeatedly visits modes outside that subspace. At fixed cutoff the full dynamics exists; obtaining a universal continuum real-time limit needs extra bounds/renormalization. Entropy, operator norms at arbitrarily short distance, and high-energy thermodynamics are especially unsafe UV extrapolations.

## 6. Literature and evidence boundaries

- O’Brien and Fendley, [arXiv:1712.06662v2](<https://arxiv.org/abs/1712.06662v2>), PDF/printed p. 2, Eqs. (1)–(3) and the paragraph below Eq. (5), visually checked. They distinguish their three-spin/four-Majorana interaction from consecutive-four-Majorana perturbations and identify the expected $T\bar T$ low-energy direction. That discussion is not the full counterterm/coefficient proof supplied here. Their even Majorana has the opposite sign to the convention above: after aligning the site indices, $\gamma^{\rm OF}_{2j}= -\beta_j$, $\gamma^{\rm OF}_{2j-1}=\alpha_j$; hopping changes sign, consecutive quartic does not. The PDF equation numbers differ from the experimental HTML conversion, so the references here are to the PDF.
- Pozsgay, Jiang, Takács, [arXiv:1911.11118v2](<https://arxiv.org/abs/1911.11118v2>), abstract inspected: current-current/bilocal long-range deformations connect spin chains to $T\bar T$-type factorization. This provides a different route to integrable deformations, not an already verified strictly finite-range, all-order spin-Ising realization with the spatial algebra used here.

Verified here: exact local Pauli/Jordan–Wigner maps, all infinite-vacuum Wick coefficients, continuum determinant normalization, finite-mode Fourier kernel through the first possible cutoff correction, exact Gaussian finite-size slopes, NS and physical Ramond ground asymptotics, and small numerical evaluations of those formulas.

Assumptions: periodic spin chain; finite fixed low-mode set before $a\to0$; first derivative at $\lambda=0$; infinite-vacuum normal ordering; no physical open boundary; $v=\hbar=1$.

Not verified here: independent fresh-agent review (delegation depth was exhausted), full off-diagonal Ramond zero-mode matrix convergence, continuum matching of sector-changing spin observables, interacting real-time/entropy numerics, higher-order counterterms, or any fixed-$\lambda$ UV completion. Only this new note was created; no pre-existing note or shared index was modified.
