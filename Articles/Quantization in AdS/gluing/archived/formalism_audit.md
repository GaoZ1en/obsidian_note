# Audit of the Boundary-Feedback Gluing Formalism

> Status: external audit of `formalism.md`, the active scalar theorem notes, the now-archived `deprecated/continuum_fock_diagnostic.md`, `numerics/`, and `stacky-cps-sandbox/`. The port normal form and feedback bridge supersede the earlier residual-pair objection; the continuum, noncentral-cut, and associativity notes supply the bounded-scalar energy-space and composition results. `port-product-fock-comparison.md` separately retains the port-complete sharp product-Fock comparison as an optional active diagnostic. Every displayed numerical value below is reproduced by its declared script; extrapolated rates remain numerical observations rather than theorems.

## 1. Scope

This note separates four things that the current material mixes:

1. what is verified correct in the active formulation;
2. what follows directly from existing theory and therefore does not need to be reproved here;
3. where the construction is actually broken rather than merely incomplete;
4. what to do next, in priority order.

The audit does not change the action-first, boundary-feedback, canonical logic of `formalism.md`. It changes the choice of finite regulator and lowers several extrapolated claims to their actual analytic or numerical tier. Its checklist is short-horizon; `roadmap.md` carries the long-range direction that the checklist feeds into.

## 2. Verified Correct

Checked by direct recomputation, not by inspection.

- The interface response identity of `formalism.md`. With $A_n^2k_n^2=2/L$ and $\sum_{n\geq1}(n^2\pi^2-z^2)^{-1}=(1-z\cot z)/(2z^2)$,

$$\begin{align}
  \dfrac1L-k^2\sum_{n=1}^\infty\dfrac{A_n^2k_n^2}{k_n^2-k^2} &=k\cot(kL)
\end{align}$$

  holds exactly. The nonzero-interface branch $k\cot(kL)=0$ and the relative branch $\sin(kL)=0$ therefore reconstruct the full uncut tower $k_r=r\pi/(2L)$.

- $A_n=(-1)^{n+1}\sqrt{2L}/(n\pi)$, $u_n'(L)=-A_nk_n^2$, the oriented flux combination $2q/L-\sum_nA_nk_n^2(c_{1,n}+c_{2,n})$, the forced regional equation $\ddot c_{i,n}+\omega_n^2c_{i,n}=-A_n(\ddot q_i+m^2q_i)$, the boundary-work balance $H_i|_{t_f}-H_i|_{t_i}=\int\mathrm dt\,\phi_i'\dot\phi_i|_\Gamma$, and the forced amplitude $c_{i,n}=A_nk^2q/(k_n^2-k^2)$ are all correct as written, including signs.

- The overlap matrix of `formalism.md` is correct. Direct integration gives, with $s=p+\tfrac12$,

$$\begin{align}
  O_{2p,1n}=-O_{2p,2n} &=\dfrac1{\sqrt2}\delta_{pn}, & O_{2p+1,1n}=O_{2p+1,2n} &=\dfrac{\sqrt2(-1)^{p+n}n}{\pi(s^2-n^2)}.
\end{align}$$

  It is consistent with the half-interval normalization of `stacky-cps-sandbox/continuum-endpoints.md`, whose $O_{jn}=(-1)^{n+j}2n/[\pi(n^2-s_j^2)]$ differs by the factor $\sqrt2$ that converts a restricted global mode into a normalized half-interval mode.

- The two independent continuum computations agree exactly. The row coefficient $1/(\pi L\Omega_r)$ of `deprecated/continuum_fock_diagnostic.md` equals the massless coefficient $1/(\pi^2s_j)$ implied by $|\beta_{jn}|^2=n/[\pi^2s_j(n+s_j)^2]$ in `continuum-endpoints.md`.

- The finite-$N$ Bogoliubov data of `stacky-cps-sandbox/finite-quantum-comparison.md` reproduce: $\operatorname{Tr}(\boldsymbol\beta_N\boldsymbol\beta_N^\dagger)=0.080039$ at $N=1$ and $11.262135$ at $N=32$, with CCR residual below $3\times10^{-13}$ up to $N=1024$.

- The exact relative sector, $M_N$ acting as the identity and $K_N$ diagonal with $\omega_n^2$ on $\boldsymbol c=(\boldsymbol x,-\boldsymbol x)$, and $\rho_N=2(L/3-\sum_{n\leq N}A_n^2)>0$ with $\rho_N\simeq 4L/(\pi^2N)$.

**Consequence for the task list.** The first immediate item of `TODO.md` was stale. The mass sign in the regional equation is correct, $k=0$ is already treated separately, and the overlap indices are already right. Only the reference-state wording remained to be fixed.

## 3. What Existing Theory Supplies

Existing theory settles part of the spatial-operator problem. It does not by itself establish the Lorentzian covariant-phase-space reduction, operator-valued feedback, or state gluing required by this project.

### 3.1 The Scalar Spatial-Operator Layer: Boundary Triples and Krein's Formula

$D_i(\Omega)=k\cot(kL_i)$ is the Titchmarsh--Weyl $m$-function of the regional Dirichlet problem. Away from its poles, the gluing condition $D_1(\Omega)+D_2(\Omega)=0$ is the Steklov--Poincaré interface equation of domain decomposition. At a pole one must return to the undivided amplitude system. A $q=0$ mode is restored only when both regional Dirichlet conditions occur at the same global eigenvalue, equivalently when the cut is a node of that global mode. The full arbitrary-cut determinant is $\sin(k(L_1+L_2))$, as proved in `non-central cut.md`.

Under the regularity and trace-domain hypotheses of the boundary-triple framework (Behrndt--Hassi--de Snoo and the classical Steklov--Poincaré literature), the corresponding scalar elliptic spatial operator has:

- the trace pair $(\gamma_0,\gamma_1)$ with $H^{1/2}\times H^{-1/2}$ trace spaces and the abstract Green identity;
- self-adjointness of the glued operator and the exact relation between its spectrum and the Weyl function;
- independence of the reconstructed operator from an artificial cut position and from the chosen extension of the boundary value into each region.

**Directly implied at this operator level:** off-center-cut independence, lifting-function independence, and associativity of reconstructing the same scalar self-adjoint operator from finitely many cuts. Corollaries 9.1--9.2 of `stacky-cps-sandbox/lorentzian-linear-target.md` are the $d=1$ slab realization of this statement.

**Not supplied by this citation alone:** the identification of the boundary-triple trace data with the project's Lorentzian presymplectic reduction, the reduced canonical map after $q$ becomes operator-valued, or the corresponding statements for gauge theory and gravity. For the present bounded scalar with prescribed cut histories, those first two bridges are now supplied internally by `formalism.md`, `non-central cut.md`, and `non-central cut and associativity.md`; other cut conditions and gauge/gravity remain open.

### 3.2 The Finite-Regulator Spectrum: Rayleigh--Ritz

Both finite pencils are Bubnov--Galerkin pencils for the same quadratic forms $\langle\phi,K\phi\rangle$ and $\|\phi\|^2$ on subspaces of $H_0^1([-L,L])$:

$$\begin{align}
W_{\mathrm{fb},N} &\subset W_{\mathrm{port},N}\subset H_0^1([-L,L]), & W_{\bullet,N} &\subset W_{\bullet,N+1},
\end{align}$$

the nesting in $N$ being zero padding, under which $q_N=\boldsymbol b^{\mathrm T}\boldsymbol c$ is unchanged. Density of $\bigcup_NW_{\mathrm{port},N}$ in $H_0^1$ is immediate: for $\phi\in H_0^1$ set $q=\phi|_\Gamma$ and expand $\phi_i-hq\in H_0^1(0,L)$ in $\{u_n\}$. For $W_{\mathrm{fb},N}$ the same construction converges on the core $H^3\cap H_0^1$, where the truncated flux functional converges to $q$.

The min-max principle then gives, with no numerics,

$$\begin{align}
\Omega_r^2 &\leq\lambda_r^{\mathrm{port}}(N)\leq\mu_r^{\mathrm{constr}}(N), & \mu_r^{\mathrm{constr}}(N+1) &\leq\mu_r^{\mathrm{constr}}(N),
\end{align}$$

with monotone convergence from above once the stated form-domain density is used. The fixed-window tables of `finite-regulator-compatibility.md` and `numerics/README.md` illustrate this statement. Over the tested range, both first-six errors are consistent with $O(N^{-3})$, and their ratio decreases from $0.274$ at $N=8$ to $0.250$ at $N=128$; the data approach, but are not exactly equal to, one quarter.

### 3.3 The Continuum Obstruction: Shale, and the Split Property

The failure of the declared sharp-cut Dirichlet--Dirichlet to Dirichlet--Neumann comparison is expected from the operator-algebraic picture. A nonzero collar is the standard geometric hypothesis used to establish a split inclusion under the relevant nuclearity assumptions; adjacency alone is not a model-independent no-go theorem. The model-specific obstruction here is the explicitly divergent Bogoliubov row. The literature statements to cite from the primary sources are Shale's implementability criterion, Buchholz's product states and the Doplicher--Longo split inclusion, and Araki--Yamagami for quasifree comparison beyond unitary implementability.

**Directly implied:** the dyadic block argument in Theorem 4.1 of `continuum-endpoints.md` is unnecessary. A single row already diverges, and the sharp form is available (Section 5 below). Theorem 6.1 of the same file, "a bijective symplectic map induces a $*$-isomorphism of Weyl algebras", is true but carries no content beyond that sentence.

### 3.4 Optional External Cross-Check, Kept Separate

Independently of the canonical route, the one-loop gluing identity

$$\begin{align}
\det{}'\Delta_{[-L,L]} &=\det\Delta_1\cdot\det\Delta_2\cdot\det\left(D_1+D_2\right)\times(\text{local term})
\end{align}$$

of Burghelea--Friedlander--Kappeler has exactly the same interface operator $D_1+D_2$, and its unavoidable local counterterm is the same ultraviolet phenomenon as the logarithmic obstruction below. This is recorded only as an external consistency check on the interface operator. It is a path-integral statement and is **not** used as a derivation of, or as evidence for, any canonical claim in this project.

## 4. The Regulator Defect

This is the one place where the construction is broken rather than incomplete.

### 4.1 The Constraint Solves the Boundary Value Through an Unbounded Trace

In the strong-flux constrained Galerkin regulator, the interface value is eliminated by

$$\begin{align}
q_N &=\boldsymbol b^{\mathrm T}\boldsymbol c, & b_n &=(-1)^{n+1}\dfrac{n\pi}{\sqrt{2L}},
\end{align}$$

that is, by the normal-derivative trace $q=-\tfrac L2\left(\psi_1'(L)+\psi_2'(L)\right)$ of the interior data. This functional is unbounded on $L^2$ Cauchy data. Hence

$$\begin{align}
\|\boldsymbol b\|^2 &=\dfrac{\pi^2}{L}\sum_{n\leq N}n^2\sim\dfrac{\pi^2N^3}{3L},
\end{align}$$

which `continuum-endpoints.md` already records, and, measured,

| $N$ | $\operatorname{cond}M_N$ | $\operatorname{cond}M_{\mathrm{port},N}$ |
|---:|---:|---:|
| 32 | $1.01\times10^{6}$ | $2.21\times10^{2}$ |
| 64 | $1.56\times10^{7}$ | $4.40\times10^{2}$ |
| 128 | $2.46\times10^{8}$ | $8.79\times10^{2}$ |

So $\operatorname{cond}M_N=O(N^4)$ while $\operatorname{cond}M_{\mathrm{port},N}=O(N)$. The reduced symplectic form $J_{M_N}$ has no bounded continuum limit.

### 4.2 Consequence: the Declared Quantum Comparison Measures the Regulator

Using the declared transport $T_N^{\mathrm{ref}}=M_N^{-1/2}$ and
$\boldsymbol\beta_N=\tfrac12(\widetilde W_N^{1/2}O_N^{\mathrm T}W_N^{-1/2}-\widetilde W_N^{-1/2}O_N^{\mathrm T}W_N^{1/2})$:

| $N$ | $\operatorname{Tr}(\boldsymbol\beta_N\boldsymbol\beta_N^\dagger)$ | $/N$ | lowest glued mode | share |
|---:|---:|---:|---:|---:|
| 32 | $11.262135$ | $0.351942$ | $9.796947$ | $87.0\%$ |
| 64 | $23.122102$ | $0.361283$ | $19.910281$ | $86.1\%$ |
| 128 | $46.950474$ | $0.366801$ | $40.044901$ | $85.3\%$ |
| 256 | $94.791207$ | $0.370278$ | $80.197667$ | $84.6\%$ |
| 512 | $190.759094$ | $0.372576$ | $160.350268$ | $84.1\%$ |
| 1024 | $383.128818$ | $0.374149$ | $320.448671$ | $83.6\%$ |

The ratio $\operatorname{Tr}(\boldsymbol\beta_N\boldsymbol\beta_N^\dagger)/N$ increases from $0.351942$ at $N=32$ to $0.374149$ at $N=1024$. This is numerically consistent with linear growth and a limiting coefficient near $0.375$; the existence and value of that asymptotic limit are not proved here.

The vacuum-overlap data are compatible with power-law rather than exponential decay over the tested window: $\log F_N$ falls by about $0.39$ on the last doubling, while the average fitted exponent at $N=1024$ is $-0.38$. More than eighty per cent of the particle-number growth sits in the **single lowest glued normal mode**; only two of $512$ rows exceed $0.1$ at $N=256$. Concentrating cutoff growth in one infrared row is a diagnostic that this declared comparison is dominated by the rank-two but norm-$N^{3/2}$ distortion $M_N^{1/2}$ along the unbounded direction $\boldsymbol b$; it is not a proof of a universal asymptotic law.

The artifact is not removed by changing the reference declaration. Three were tested:

- reference covariance declared in the canonical frame, the file's own $T_N^{\mathrm{ref}}$: data consistent with $O(N)$;
- reference covariance declared in the coefficient frame: data consistent with $O(N^4)$;
- reference taken as the ground state of $\tfrac12(\boldsymbol v^{\mathrm T}M_N\boldsymbol v+\boldsymbol c^{\mathrm T}D_N\boldsymbol c)$ on the same reduced space, which needs no transport at all: data consistent with $O(N^{1/2})$.

These incompatible cutoff behaviours show that the constrained finite-$N$ result depends on the chosen identification. They cannot be used as estimates of the separately declared sharp-cut overlap map, whose fixed-row non-Hilbert--Schmidt obstruction is exact but whose square-cutoff coefficient is treated below as a numerical asymptotic. The decisive continuum diagnostic therefore cannot be run on this constrained regulator.

### 4.3 The Underlying Structural Fact

The strict-Dirichlet regional product state is not a state on the constrained reduced phase space at all: on that space $q=\boldsymbol b^{\mathrm T}\boldsymbol c\neq0$. The two symplectic forms $\omega_{\mathrm D,N}=\delta\boldsymbol v^{\mathrm T}\wedge\delta\boldsymbol c$ and $\omega_{\mathrm{red},N}=\delta\boldsymbol v^{\mathrm T}M_N\wedge\delta\boldsymbol c$ live on the same vector space, and there is no canonical symplectomorphism between them. The positive square root is one choice among many, which is why the uniqueness of $T_N^{\mathrm{ref}}$ is listed as unverified in `finite-quantum-comparison.md` and cannot be proved. Any conclusion drawn from a comparison of this type is a statement about the chosen identification.

## 5. The Port Truncation Is the Sound Finite Regulator

The project currently forbids the $(2N+1)$-variable port truncation. That prohibition is correct as a continuum statement and wrong as a finite-$N$ prescription.

Measured, at $L=m=1$:

| $N$ | $\Omega_r^2\leq\lambda_r^{\mathrm{port}}\leq\mu_r^{\mathrm{constr}}$ | first-six error, port | first-six error, constrained | top port Ritz value | $\Omega_{2N+1}^2$ |
|---:|:--:|---:|---:|---:|---:|
| 8 | yes | $8.91\times10^{-2}$ | $3.25\times10^{-1}$ | $1.0244\times10^{3}$ | $7.141\times10^{2}$ |
| 32 | yes | $1.52\times10^{-3}$ | $6.05\times10^{-3}$ | $1.5002\times10^{4}$ | $1.0426\times10^{4}$ |
| 128 | yes | $2.46\times10^{-5}$ | $9.82\times10^{-5}$ | $2.3455\times10^{5}$ | $1.6297\times10^{5}$ |

Three conclusions follow.

1. The port pencil is variational and its Ritz values are **sharper** upper bounds than the constrained ones. Its mass matrix is not uniformly well conditioned in the coefficient norm: $\operatorname{cond}M_{\mathrm{port},N}=O(N)$ because the residual port direction has inertia $\rho_N=O(N^{-1})$.
2. Its $(2N+1)$-th Ritz value is a band-top overestimate of $\Omega_{2N+1}^2$ by a factor $1.4$, exactly as in any Galerkin scheme. It is not a mode without a continuum counterpart, and there is nothing to delete. The earlier statement to the contrary in `numerics/README.md` and in the header of `natural_method_feedback_spectrum.wl` has been corrected: every top Galerkin mode grows with the cutoff.
3. The positive residual inertia $\rho_N=2(L/3-\sum_{n\leq N}A_n^2)\simeq4L/(\pi^2N)$ is the correct variational content of the truncation. Its vanishing is consistent with the continuum theory having no independent interface oscillator, but it also makes the limit singular and must be controlled in a quotient, energy, or graph topology. The value $\sqrt{(2/L)/\rho_N}$ does not locate a spurious mode; at $N=128$ it coincides with the physical $\Omega_{16}$.

Theorem 6.4 and Corollary 6.5 of `finite-regulator-compatibility.md` remain correct as stated: truncation and continuum flux reduction do not commute, and the naive retarded system is a Petrov--Galerkin scheme with a different, non-variational test space. What must change is the conclusion drawn from them.

The later port normal form and feedback bridge close the finite-$N$ quantum problem without declaring a product state. The positive port Hamiltonian supplies the complex structure on all $2N+1$ pairs; the reconstructed-field projections give the exact canonical normal coordinates and annihilation-operator CCR in the same Galerkin regulator. `continuum-closure-theorem.md` then proves Mosco/resolvent, wave, trace, symplectic, and smeared-correlator convergence on energy-compatible data. The residual pair is retained at finite $N$ and disappears as an independent coordinate in the continuum field description.

## 6. What the Continuum Obstruction Actually Measures

For every fixed odd global row, the Dirichlet--Dirichlet to Dirichlet--Neumann comparison has

$$\begin{align}
\sum_{i=1}^2\sum_{n\leq N}|\beta_{r,in}|^2 &=\dfrac{1}{\pi L\Omega_r}\log N+O(1),
\end{align}$$

so the creation block is rigorously not Hilbert--Schmidt. For the square cutoff, the exact massless summand and the numerical data for $m=0,1$ are consistent with

$$\begin{align}
\|\boldsymbol\beta\|_{\mathrm{HS}}^2(N) &=\dfrac{(\log N)^2}{2\pi^2}+O(\log N),
\end{align}$$

with a mass-independent leading coefficient. Second differences of the partial sums reach $0.050805$ at $N=2048$ against $1/(2\pi^2)=0.050661$, with the $m=0$ and $m=1$ values agreeing to five digits. A proof of this full two-index asymptotic requires a uniform remainder estimate; the fixed-row estimate alone cannot be summed over rows that scale with $N$.

This is a statement about a declared $L^2$ change of spectral presentation on a half interval. It is basis-dependent by construction: the cutoff $N$ is a mode count, not a length. It does not constrain the intrinsic connected quantization or the smeared correlator limit proved in `continuum-closure-theorem.md`. Geometric-collar and split-factor comparisons have been archived; they should be revived only for a separately specified algebraic split problem.

## 7. Model-Ladder Gap Before AdS--Rindler

The interval prototype exercises a **timelike** interface, a **discrete gapped** regional spectrum, and a bounded interface response. The AdS--Rindler target has none of these. At a horizon the interface is **null**, so prescribed data is characteristic rather than elliptic boundary data and the response operator degenerates; the regional modular generator is a boost with continuous spectrum on $\mathbb R$; and the natural regional reference state is thermal, not the state annihilated by regional lowering operators. The current ladder reaches Maxwell on a cylinder without testing any of these.

Two cheap rungs are missing before the horizon and gravity targets. The half-line test probes whether the conservative prescribed-history language extends to radiating subsystems; its failure would not by itself invalidate bounded-cavity Maxwell calculations:

- the half line $[0,\infty)$ cut at $x=a$, where the outer region has continuous spectrum and $D_2(\Omega)=-i\sqrt{\Omega^2-m^2}$, so the prescribed-history phase space is no longer conservative and the flux-matching argument must be redone with radiation conditions;
- a timelike stretched horizon at $\rho=\epsilon$, which keeps the interface timelike and makes $\epsilon\to0$ the controlled limit.

## 8. Current Executable Checklist

1. **Completed:** adopt the port truncation, isolate the $\rho_N\to0$ direction, and compare only descriptions built from the same finite Galerkin space.
2. **Completed:** construct the finite-$N$ canonical normal form, Hamiltonian complex structure, feedback-to-port bridge, reconstructed annihilation operators, and intrinsic finite Gaussian state.
3. **Completed:** prove Mosco/resolvent, wave, trace, symplectic, and smeared-correlator convergence in `continuum-closure-theorem.md`.
4. **Optional diagnostic completed:** `port-product-fock-comparison.md` retains the full port pair, verifies the finite-$N$ Bogoliubov CCR and squeezed state, and proves fixed-row non-implementability for every factorized strict-Dirichlet-plus-port reference. The earlier port-incomplete sharp comparison, smearing, smooth-interface, and collar branches remain archived. None is a gate for intrinsic canonical gluing.
5. **Completed for prescribed Dirichlet cut histories:** arbitrary-cut canonical reconstruction and continuum cut-position independence in `non-central cut.md`.
6. **Completed for a common regulator on every fixed finite partition:** action-level, symplectic, Hamiltonian, and continuum associativity in `non-central cut and associativity.md`. Finite-regulator lifting dependence remains an extension.
7. **Extension:** use the half-line and stretched-horizon rungs before applying the method to radiating exteriors or null limits.

## Verified

- Every algebraic identity listed in Section 2, by direct recomputation.
- $\|\boldsymbol b\|^2=(\pi^2/L)\sum_{n\leq N}n^2$ and $\rho_N=2(L/3-\sum_{n\leq N}A_n^2)>0$ with $\rho_N\simeq4L/(\pi^2N)$.
- The conforming-space inclusions give $\Omega_r^2\leq\lambda_r^{\mathrm{port}}(N)\leq\mu_r^{\mathrm{constr}}(N)$ by the min--max principle under the stated form-domain hypotheses.
- Every fixed odd row of the declared sharp-cut Bogoliubov creation block has a logarithmically divergent norm, so that block is not Hilbert--Schmidt.
- The port-complete optional comparison has exact finite-$N$ Bogoliubov CCR and a normalized squeezed vacuum for every fixed cutoff; its regional creation block is independent of the arbitrary positive factorized port frequency, and the same fixed-row divergence proves continuum non-implementability.
- The exact finite-$N$ feedback-to-port canonical bridge and Hamiltonian complex structure in the companion notes.
- The analytic continuum closure and smeared-correlator convergence under the assumptions of `continuum-closure-theorem.md`.
- The arbitrary-cut determinant, unequal-length port Schur form, and continuum cut-position independence under the assumptions of `non-central cut.md`.
- The two-port residual Gram matrix and canonical associator under the same-regulator assumptions of `non-central cut and associativity.md`.

## Numerically Reproduced

- $\operatorname{cond}M_N$ is consistent with $O(N^4)$ and $\operatorname{cond}M_{\mathrm{port},N}$ with $O(N)$ for the displayed cutoffs.
- The fixed-window errors are consistent with $O(N^{-3})$; the port/constrained error ratio approaches $1/4$ over $N=8,\ldots,128$ but is not exactly $1/4$.
- The top port Ritz value overestimates $\Omega_{2N+1}^2$ by a factor near $1.4$ over the displayed range; no finite Ritz value was deleted.
- For the declared constrained transport, the particle number is consistent with linear growth and more than eighty per cent lies in the lowest glued row through $N=1024$; the CCR residual is below $3\times10^{-13}$.
- The square-cutoff Hilbert--Schmidt partial sums are consistent with a mass-independent leading coefficient $1/(2\pi^2)$ through $N=2048$ in `numerics/regulator_audit_checks.wl` and through $N=8192$ in the independent cross-check.
- `numerics/port_product_fock_checks.wl` reproduces the complete finite-$N$ CCR, omitted-port defect, squeezing-kernel contractivity, vacuum fidelity, and convergence of the lowest regional row to the analytic sharp-cut value through the declared cutoffs.

## Assumptions

- $L=m=1$ for every numerical entry; $\hbar=1$; the centered cut; the lifting $h(y)=y/L$.
- Machine-precision dense linear algebra, cross-checked in two independent systems with agreement to the printed digits.
- The declared Bogoliubov convention of `finite-quantum-comparison.md`, reproduced exactly at $N=1$ and $N=32$ before extrapolation.
- Section 3.3 reports literature statements that should be cited from the primary sources rather than from this note.

## Not Verified

- Density of $\bigcup_NW_{\mathrm{fb},N}$ beyond the stated $H^3$ core; the port-space density statement is complete.
- The exact asymptotic growth and coefficient of $\operatorname{Tr}(\boldsymbol\beta_N\boldsymbol\beta_N^\dagger)$ for any of the three constrained reference declarations.
- The uniform two-index estimate needed to prove the square-cutoff coefficient $1/(2\pi^2)$ for finite mass.
- A universal convergence rate for the port Galerkin sequence or a finite unsmeared point-field covariance at the cut.
- A canonical physical choice of factorized port frequency, the full two-index asymptotic coefficient for the port-Galerkin square cutoff, or the exact large-$N$ fidelity-decay rate. These are limitations of the optional reference comparison, not of the intrinsic construction.
- A lifting-independent finite-regulator convergence rate or estimates uniform as a cut approaches an outer boundary.
- Other artificial-cut conditions, the continuous-spectrum and stretched-horizon rungs, and every gauge/gravity composition theorem.
