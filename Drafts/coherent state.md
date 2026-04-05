## Coherent-state path integral for the harmonic oscillator and its partition function

This note derives the coherent-state path integral for the quantum harmonic oscillator and evaluates the partition function $Z = \mathrm{Tr}\, e^{-\beta H}$ in detail. I keep $\hbar$ explicit (and set $k_B=1$).

### Harmonic oscillator and coherent states

- Hamiltonian: $H = \hbar\omega\left(a^\dagger a + \tfrac{1}{2}\right)$, with $[a, a^\dagger]=1$.
- Coherent states $\lvert\alpha\rangle$ are eigenstates of the annihilation operator: $a\lvert\alpha\rangle = \alpha\lvert\alpha\rangle$, $\alpha\in\mathbb C$.
- Construction: $\lvert\alpha\rangle = e^{-\frac{1}{2}\lvert\alpha\rvert^2} e^{\alpha a^\dagger}\lvert 0\rangle$.
- Overlap:

$$
\langle\alpha'\vert\alpha\rangle = \exp\Big( -\tfrac{1}{2}(|\alpha'|^2 + |\alpha|^2) + \alpha'^*\alpha \Big).
$$

- Resolution of identity (overcompleteness):

$$
\int \frac{\mathrm d^2\alpha}{\pi} \; \lvert\alpha\rangle\langle\alpha\rvert = \mathbf 1, \quad\text{with } \mathrm d^2\alpha = \mathrm d\,\mathrm{Re}\,\alpha\;\mathrm d\,\mathrm{Im}\,\alpha.
$$

- Normal ordering: For any normal-ordered operator $:\!f(a^\dagger,a)\!:$,

$$
\langle\alpha'\vert :\!f(a^\dagger,a)\!: \vert\alpha\rangle = f(\alpha'^*,\alpha)\, \langle\alpha'\vert\alpha\rangle.
$$

These properties underlie the coherent-state path integral.

### Real-time coherent-state path integral (transition amplitude)

Consider the amplitude $\mathcal A = \langle\alpha_f\vert e^{-\frac{i}{\hbar}H (t_f-t_i)} \vert\alpha_i\rangle$. Slice the time interval into $N$ steps of size $\varepsilon = (t_f-t_i)/N$.

1. Insert $N-1$ resolutions of the identity in the coherent-state basis.
2. Use the short-time approximation (valid for normal-ordered $H$):

$$
\langle\alpha_j\vert e^{-\frac{i}{\hbar} \varepsilon H} \vert\alpha_{j-1}\rangle \approx \langle\alpha_j\vert\alpha_{j-1}\rangle \exp\Big(-\frac{i\varepsilon}{\hbar} H(\alpha_j^*,\alpha_{j-1})\Big),
$$

where $H(\alpha^*,\alpha)$ is the $c$-number obtained by replacing $a^\dagger\mapsto\alpha^*$, $a\mapsto\alpha$ in the normal-ordered form of $H$.

For the oscillator, $H=\hbar\omega\,a^\dagger a + \tfrac{1}{2}\hbar\omega$, so $H(\alpha^*,\alpha) = \hbar\omega\, \alpha^*\alpha + \tfrac{1}{2}\hbar\omega$.

Collecting the overlaps and taking $N\to\infty$ leads (up to a normalization that is independent of the path) to

$$
\mathcal A = \int \mathcal D\alpha^*\mathcal D\alpha\; \exp\left\{\frac{i}{\hbar} S[\alpha^*,\alpha] \right\},
$$

with the coherent-state action

$$
S[\alpha^*,\alpha] = \int_{t_i}^{t_f} \mathrm dt\; \Big( i\hbar\, \alpha^* \dot{\alpha} - \hbar\omega\, \alpha^*\alpha - \tfrac{1}{2}\hbar\omega \Big) + \text{(boundary term)}.
$$

The “kinetic” term $i\hbar\,\alpha^*\dot\alpha$ arises from the overlap $\langle\alpha_j\vert\alpha_{j-1}\rangle$. Different discretizations correspond to adding/subtracting a total-derivative boundary term like $\tfrac{i\hbar}{2}(\alpha^*\alpha)\big\rvert_{t_i}^{t_f}$; physical bulk dynamics are unaffected, while boundary conditions matter when gluing amplitudes (e.g., taking traces).

Remark on the zero-point energy: If one works with the normal-ordered Hamiltonian $H_N = \hbar\omega\, a^\dagger a$, the constant $\tfrac{1}{2}\hbar\omega$ is omitted in the bulk action and recovered at the end as a prefactor $e^{-\frac{i}{\hbar}\,\tfrac{1}{2}\hbar\omega\,(t_f-t_i)}$ (or $e^{-\beta\,\tfrac{1}{2}\hbar\omega}$ in Euclidean time for the partition function).

### Euclidean coherent-state path integral

For thermodynamics we Wick rotate to Euclidean time $t\to -i\tau$, with $\tau\in[0,\beta]$ and $\beta=1/T$. The Euclidean action becomes

$$
S_E[\alpha^*,\alpha] = \int_0^{\beta} \mathrm d\tau\; \Big( \alpha^* \partial_\tau \alpha + \omega\, \alpha^*\alpha + \tfrac{1}{2}\omega \Big),
$$

where I have divided out a common $\hbar$ for readability; restoring it gives $\alpha^*\partial_\tau\alpha\to \hbar\,\alpha^*\partial_\tau\alpha$ and $\omega\to\hbar\omega$, etc. The trace enforces periodic boundary conditions on coherent-state paths up to the overlap:

$$
Z = \mathrm{Tr}\, e^{-\beta H} = \int \frac{\mathrm d^2\alpha_0}{\pi}\; \langle\alpha_0\vert e^{-\beta H}\vert\alpha_0\rangle 
\;\longrightarrow\; \int_{\alpha(0)=\alpha(\beta)} \!\!\mathcal D\alpha^*\mathcal D\alpha\; e^{-S_E[\alpha^*,\alpha]}.
$$

More carefully, the time-slicing shows a boundary factor from the initial–final overlap

$$
\exp\Big( -\tfrac{1}{2}|\alpha(\beta)|^2 - \tfrac{1}{2}|\alpha(0)|^2 + \alpha^*(\beta)\alpha(0) \Big),
$$

which precisely implements periodicity when the functional integral is evaluated. Equivalently, one can impose $\alpha(\beta)=\alpha(0)$ and keep the bulk action as above; both conventions are standard and equivalent when handled consistently.

### Evaluating the partition function

We now compute $Z = \int \mathcal D\alpha^*\mathcal D\alpha\; e^{-S_E}$ for the quadratic action. It is a Gaussian functional integral that factorizes in Matsubara modes.

1. Fourier expand periodic fields $\alpha(\tau)$:

$$
\alpha(\tau) = \sum_{n\in\mathbb Z} \alpha_n\, e^{i\omega_n \tau},\quad \omega_n = \frac{2\pi n}{\beta}.
$$

2. The action (omitting for the moment the constant $\tfrac{1}{2}\omega$ term) becomes

$$
S_E^{(N)} = \int_0^{\beta}\!\mathrm d\tau\; \Big( \alpha^*\partial_\tau\alpha + \omega\,\alpha^*\alpha \Big) = \beta \sum_{n\in\mathbb Z} (i\omega_n + \omega)\, |\alpha_n|^2.
$$

3. The Gaussian integral over each complex mode yields (up to a mode-independent normalization that cancels in the ratio to a reference):

$$
\int \frac{\mathrm d^2\alpha_n}{\pi}\; e^{-\beta (i\omega_n + \omega)|\alpha_n|^2} = \frac{1}{\beta (i\omega_n + \omega)}.
$$

Thus, formally,

$$
Z_N \propto \prod_{n\in\mathbb Z} \frac{1}{\beta (i\omega_n + \omega)}.
$$

#### Interlude: what “ratio with the free (zero-frequency) reference” means

The product above is divergent as written and has an ambiguous overall normalization. A standard way to define it is by a relative (normalized) determinant: divide by the $\omega\to 0$ reference theory so common divergences cancel. Because the $\omega=0$ operator $\partial_\tau$ has a zero mode at $n=0$, we remove that mode in the denominator (a “primed” determinant):

$$
R(\omega) \equiv \frac{Z_N(\omega)}{Z_N(0)'} = \frac{1}{\beta\,\omega}\, \prod_{n=1}^{\infty} \frac{(\tfrac{2\pi n}{\beta})^2}{(\tfrac{2\pi n}{\beta})^2 + \omega^2}.
$$

Using the standard infinite product

$$
\frac{\sinh x}{x} = \prod_{n=1}^{\infty}\left(1 + \frac{x^2}{\pi^2 n^2}\right),\quad x\in\mathbb C,
$$

with $x = \tfrac{\beta\omega}{2}$ gives

$$
\prod_{n=1}^{\infty} \frac{(\tfrac{2\pi n}{\beta})^2}{(\tfrac{2\pi n}{\beta})^2 + \omega^2} = \frac{\tfrac{\beta\omega}{2}}{\sinh(\tfrac{\beta\omega}{2})},
$$

so

$$
R(\omega) = \frac{1}{2\sinh(\tfrac{\beta\omega}{2})}.
$$

The overall multiplicative constant (from the functional measure) is $\omega$- and $\beta$-independent and can be fixed by matching to a known limit (e.g., the spectral sum). Thus one may simply take $Z_N(\omega) \propto R(\omega)$.

Equivalently, differentiate the (formal) logarithm to avoid products altogether:

$$
\frac{\mathrm d}{\mathrm d\omega} \ln Z_N(\omega) = -\sum_{n\in\mathbb Z} \frac{1}{i\omega_n + \omega} = -\frac{\beta}{2}\,\coth\!\Big(\tfrac{\beta\omega}{2}\Big),
$$

hence

$$
\ln Z_N(\omega) = -\ln\!\Big[\sinh\!\big(\tfrac{\beta\omega}{2}\big)\Big] + \text{const},
$$

where the integration constant is $\omega$-independent and reproduces the same normalized result.

4. Restoring $\hbar$ and the zero-point factor: Recall we temporarily dropped the constant $\tfrac{1}{2}\hbar\omega$ in the bulk action. Its contribution is a multiplicative factor $\exp\big(-\beta\,\tfrac{1}{2}\hbar\omega\big)$. Combining with the product above gives the exact partition function

$$
Z = \frac{e^{-\beta\hbar\omega/2}}{1 - e^{-\beta\hbar\omega}} = \frac{1}{2\sinh\big(\tfrac{\beta\hbar\omega}{2}\big)}.
$$

Both forms are equivalent and standard.

### Zero-point energy: where does it come from?

- If you keep the physical Hamiltonian $H = \hbar\omega\,(a^\dagger a + \tfrac{1}{2})$ inside the short-time kernel, the Euclidean action contains the constant term

$$
S_E[\alpha^*,\alpha] = \int_0^\beta \!\mathrm d\tau\,\Big( \hbar\,\alpha^* \partial_\tau \alpha + \hbar\omega\,\alpha^*\alpha + \tfrac{1}{2}\hbar\omega \Big).
$$

The last term is independent of the path and integrates to $\tfrac{1}{2}\beta\hbar\omega$, yielding an overall factor in the weight

$$
e^{-S_E} = e^{-\beta\hbar\omega/2}\; \exp\!\left\{-\int_0^\beta \!\mathrm d\tau\,\big( \hbar\,\alpha^* \partial_\tau \alpha + \hbar\omega\,\alpha^*\alpha \big)\right\}.
$$

Thus

$$
Z_H(\beta) = e^{-\beta\hbar\omega/2}\; Z_{H_N}(\beta),\qquad H_N \equiv \hbar\omega\,a^\dagger a.
$$

- If instead you normal-order from the start and use $H_N$ in the time-slicing rule, the functional integral directly gives

$$
Z_{H_N}(\beta) = \frac{1}{1 - e^{-\beta\hbar\omega}},
$$

and multiplying by $e^{-\beta\hbar\omega/2}$ restores the physical partition function

$$
Z_H(\beta) = \frac{e^{-\beta\hbar\omega/2}}{1 - e^{-\beta\hbar\omega}} = \frac{1}{2\sinh(\beta\hbar\omega/2)}.
$$

- Determinant viewpoint: The coherent-state Gaussian over fluctuations yields (up to $\beta$-independent normalization)

$$
Z_{H_N} \propto \det\big(\partial_\tau + \omega\big)^{-1} \;\Rightarrow\; \frac{Z_{H_N}(\omega)}{Z_{H_N}(0)'} = \frac{1}{2\sinh(\beta\omega/2)}.
$$

The zero-point factor $e^{-\beta\hbar\omega/2}$ is not part of this determinant; it is the separate $c$-number from the $+\tfrac{1}{2}\hbar\omega$ in $H$.

- Boundary vs. zero-point: The boundary overlap factor

$$
\exp\Big( -\tfrac{1}{2}|\alpha(\beta)|^2 - \tfrac{1}{2}|\alpha(0)|^2 + \alpha^*(\beta)\alpha(0) \Big)
$$

enforces periodicity in the trace; it does not generate the vacuum energy factor. Adding a constant $c$ to $H$ always multiplies $Z$ by $e^{-\beta c}$: $H\to H+c \;\Rightarrow\; Z\to e^{-\beta c} Z$.

### Cross-checks and remarks

- Spectral sum: Directly, $Z = \sum_{n=0}^{\infty} e^{-\beta\hbar\omega(n+1/2)} = e^{-\beta\hbar\omega/2}\sum_{n\ge0}(e^{-\beta\hbar\omega})^n$, yielding the same result.
- Normal ordering vs. constant shift: If one uses $H_N=\hbar\omega\,a^\dagger a$ inside the coherent-state PI, the Gaussian product gives $Z_N = 1/(1-e^{-\beta\hbar\omega})$; multiplying by $e^{-\beta\hbar\omega/2}$ restores the physical $Z$.
- Boundary terms: Different discretizations of the kinetic term differ by total derivatives, which only affect boundary factors. For traces, these contributions enforce periodicity and do not change the bulk determinant.
- Free energy and thermodynamics: $F = -\tfrac{1}{\beta}\ln Z$, $\langle H\rangle = -\partial_{\beta}\ln Z = \tfrac{1}{2}\hbar\omega + \hbar\omega/(e^{\beta\hbar\omega}-1)$, as expected.

### Summary

- Coherent states provide an overcomplete basis with simple overlaps and a resolution of identity.
- Time slicing and normal ordering give the coherent-state action with “first-order” kinetic term $\alpha^*\partial_\tau\alpha$.
- The Euclidean coherent-state path integral is Gaussian, and evaluation via Matsubara modes plus the infinite product for $\sinh$ yields

$$
Z = \mathrm{Tr}\, e^{-\beta H} = \frac{e^{-\beta\hbar\omega/2}}{1 - e^{-\beta\hbar\omega}} = \frac{1}{2\sinh(\beta\hbar\omega/2)}.
$$

### References (concise)

- Negele, Orland, Quantum Many-Particle Systems, Ch. 1–2 (coherent-state PI basics).
- Altland, Simons, Condensed Matter Field Theory, App. A (Gaussian determinants, products).
- Kleinert, Path Integrals in Quantum Mechanics, Statistics, Polymer Physics, and QFT.

Problem
- Explain what zeta-function regularization is.
- Describe its main mechanisms and provide formulas.
- Give several applications other than the Casimir effect.

Assumptions and Setup
- Consider self-adjoint, non-negative, elliptic operators of Laplace type on compact manifolds (or operators with discrete spectra under appropriate boundary conditions).
- Use natural units c=ℏ=1.
- Formulae are given in display form.

Solution
1) Core idea and definitions

- Spectral zeta function of an operator A with positive spectrum {λn}:
$$
\zeta_A(s) \equiv \sum_n \lambda_n^{-s} \;=\; \mathrm{Tr}\, A^{-s}\,,
$$
which converges for Re s sufficiently large and is meromorphically continued to s∈ℂ.

- Zeta-regularized determinant:
$$
\ln \det\nolimits_{\zeta} A \;\equiv\; - \zeta_A'(0)\,, \qquad \det\nolimits_{\zeta} A \;=\; e^{-\zeta_A'(0)}\,.
$$
- Scaling property and the renormalization scale μ (for dimensionful A):
$$
\zeta_{\alpha A}(s) \;=\; \alpha^{-s} \zeta_A(s)\,,
\qquad
\ln \det\nolimits_{\zeta}(\alpha A) \;=\; \ln \det\nolimits_{\zeta} A \;-\; \zeta_A(0)\,\ln \alpha\,,
$$
hence a dimensionless determinant is defined as
$$
\ln \det\nolimits_{\zeta}\!\left(\frac{A}{\mu^2}\right) \;=\; -\zeta_A'(0) \;-\; \zeta_A(0)\,\ln \mu^2\,.
$$
2) Heat kernel representation

- Heat kernel and Mellin transform:
$$
\zeta_A(s) \;=\; \frac{1}{\Gamma(s)} \int_0^\infty dt\; t^{s-1} \, \mathrm{Tr}\, e^{-tA}\,,
$$
with small-t asymptotics (d = spacetime dimension)
$$
\mathrm{Tr}\, e^{-tA} \;\sim\; (4\pi t)^{-d/2} \sum_{k=0}^{\infty} a_k(A)\, t^{k}\,,
$$
where a_k(A) are Seeley–DeWitt coefficients (local curvature invariants, boundary terms if present).

- Poles and anomalies come from the term k = d/2 (when d even), while finite parts give renormalized effective actions and determinants.

3) Regularized sums and products

- Analytic continuation assigns finite values to divergent sums/products, e.g.
$$
\sum_{n=1}^{\infty} n \;=\; \zeta_{\mathrm{R}}(-1) \;=\; -\frac{1}{12}\,,
\qquad
\prod_{n=1}^{\infty} n \;=\; \sqrt{2\pi}\,,
$$
interpreted via ζ-regularization (not ordinary summation), and used to normalize oscillator zero-point energies and infinite products in QFT and string theory.

4) One-loop effective actions and functional determinants

- For a bosonic quadratic fluctuation operator A (and fermionic operator D with A = D†D), the one-loop Euclidean effective action is
$$
\Gamma^{(1)} \;=\; \frac{1}{2}\,\ln \det\nolimits_{\zeta}\!\left(\frac{A}{\mu^2}\right)\;-\;\ln \det\nolimits_{\zeta}\!\left(\frac{A_{\text{ghost}}}{\mu^2}\right)
\quad (\text{bosons})\,,
$$
$$
\Gamma^{(1)} \;=\; -\,\ln \det\nolimits_{\zeta}\!\left(\frac{D}{\mu}\right)
\;=\; -\frac{1}{2}\,\ln \det\nolimits_{\zeta}\!\left(\frac{D^\dagger D}{\mu^2}\right)
\quad (\text{fermions})\,.
$$
The μ-dependence encodes renormalization-group running via
$$
\mu \frac{d}{d\mu}\,\Gamma^{(1)} \;=\; -\,\zeta_A(0)\,.
$$
5) Conformal/trace anomalies and the Polyakov action

- Under a Weyl rescaling, gμν → e^{2σ} gμν, the zeta-regularized determinant varies locally. For Laplace-type A,
$$
\delta_\sigma \ln \det\nolimits_{\zeta} A \;=\; -\,2 \int d^d x \,\sqrt{g}\;\sigma(x)\;\frac{a_{d/2}(x;A)}{(4\pi)^{d/2}}\,,
$$
which implies the trace anomaly
$$
\langle T^\mu_{\ \mu}(x) \rangle \;=\; \frac{1}{(4\pi)^{d/2}}\, a_{d/2}(x;A)\,.
$$
Example in d=2 for a minimally coupled scalar (A = −Δ):
$$
\langle T^\mu_{\ \mu} \rangle \;=\; \frac{R}{24\pi}\,.
$$
- In two dimensions, integrating the anomaly yields the Polyakov action (nonlocal effective action):
$$
\Gamma[g] \;=\; -\,\frac{1}{96\pi}\,\int d^2x \,\sqrt{g}\; R\,\Delta^{-1} R\,,
$$
which can be derived from zeta-regularized determinants of −Δ on a Riemann surface.

6) Finite-temperature and compactification determinants

- For a harmonic oscillator with frequency ω at inverse temperature β (Euclidean time circle S^1_β), eigenvalues are
$$
\lambda_n \;=\; \left(\frac{2\pi n}{\beta}\right)^2 + \omega^2\,, \quad n\in\mathbb{Z}\,.
$$
Using ζ-regularization and the product formula for sinh,
$$
\prod_{n=1}^{\infty} \left(1 + \frac{z^2}{n^2}\right) \;=\; \frac{\sinh(\pi z)}{\pi z}\,,
$$
one obtains (up to β-independent normalization)
$$
\det\nolimits_{\zeta}\!\left(-\partial_\tau^2 + \omega^2\right) \;\propto\; \sinh^2\!\left(\frac{\beta\omega}{2}\right)\,,
$$
and hence the partition function
$$
Z_{\text{osc}}(\beta) \;=\; \left[\det\nolimits_{\zeta}\!\left(-\partial_\tau^2 + \omega^2\right)\right]^{-1/2} \;=\; \frac{1}{2\sinh(\beta\omega/2)}\,.
$$
7) String theory: normal ordering constants and intercepts

- For a chiral bosonic oscillator,
$$
\sum_{n=1}^\infty n \;=\; \zeta_{\mathrm{R}}(-1) \;=\; -\frac{1}{12}\,,
$$
which yields the zero-point energy and the Virasoro normal-ordering constant. In the bosonic string, the total intercept is
$$
a \;=\; -\,\frac{D-2}{24}\,,
$$
coming from the D−2 transverse oscillators, determined consistently by ζ-regularization.

8) Instantons, solitons, and decay rates: determinant ratios

- One-loop prefactors in tunneling/decay (Coleman–Callan formalism) involve ratios of determinants. Zeta-regularized ratios are
$$
\frac{\det\nolimits_{\zeta} A}{\det\nolimits_{\zeta} B}
\;=\;
\exp\!\left[-\,\zeta_A'(0)\;+\;\zeta_B'(0)\right]\,,
$$
which can be computed via heat-kernel/phase-shift techniques, yielding quantum corrections to soliton masses and vacuum decay rates.

9) Analytic torsion and spectral geometry

- Ray–Singer analytic torsion of a compact Riemannian manifold M:
$$
\ln T(M) \;=\; \frac{1}{2}\sum_{p=0}^{d} (-1)^p\, p \,\zeta'_{\Delta_p}(0)\,,
$$
with Δp the Hodge Laplacian on p-forms. This spectral invariant has deep ties to topology (Reidemeister torsion) and appears in semiclassical approximations of gauge theories.

Checks and Validation
- Dimensional analysis: For α>0,
$$
\zeta_{\alpha A}(s) \;=\; \alpha^{-s}\, \zeta_A(s)\;\Rightarrow\;
\ln \det\nolimits_{\zeta}(\alpha A) \;=\; \ln \det\nolimits_{\zeta} A - \zeta_A(0)\ln \alpha\,,
$$
so introducing μ ensures the determinant is dimensionless and RG-consistent.

- In d=2, the anomaly check: a1(−Δ) = (1/6)R implies
$$
\langle T^\mu_{\ \mu}\rangle \;=\; \frac{1}{(4\pi)^{1}}\,\frac{R}{6}\;=\;\frac{R}{24\pi}\,,
$$
as required.

Example(s)
1) Determinant on a circle: −∂τ^2 + ω^2

- Eigenvalues: λn = (2πn/β)^2 + ω^2, n∈ℤ. Using
$$
\sinh(\pi z) = \pi z \prod_{n=1}^{\infty}\left(1+\frac{z^2}{n^2}\right)\,,
$$
with z = \frac{\beta \omega}{2\pi}, one gets
$$
\prod_{n\neq 0}\left[\left(\frac{2\pi n}{\beta}\right)^2+\omega^2\right]
= \left(\frac{2\sinh(\beta\omega/2)}{\beta}\right)^2 \times \mathcal{N}\,,
$$
where the normalization factor 𝒩 is β-independent and absorbed by ζ-regularization. Thus
$$
\det\nolimits_{\zeta}\!\left(-\partial_\tau^2+\omega^2\right)\propto \sinh^2(\beta\omega/2)\,,
\quad
Z(\beta) = \left[\det\nolimits_{\zeta}\right]^{-1/2} = \frac{1}{2\sinh(\beta\omega/2)}\,.
$$
2) One-loop effective potential in flat space

- For a scalar with A = −∂^2 + m^2 + V''(ϕ),
$$
V_{\text{eff}}^{(1)} \;=\; \frac{1}{2\Omega_d}\,\ln \det\nolimits_{\zeta}\!\left(\frac{A}{\mu^2}\right)
\;=\; \frac{1}{2} \int \frac{d^d p}{(2\pi)^d}\, \ln \frac{p^2 + M^2}{\mu^2}\,,
$$
reproduced by ζ-regularization via heat-kernel with M^2 = m^2+V''(ϕ). The μ-dependence gives the standard beta functions through ζ_A(0).

Extensions
- Fields with boundaries: incorporate boundary Seeley–DeWitt coefficients for Dirichlet/Neumann/Robin conditions; compute edge anomalies and boundary free energies.
- Non-compact spaces: use spectral densities and scattering phase shifts to define ζ via contour integrals; important for solitons, black holes, and thermal spacetimes.
- Gauge and higher-spin fields: include ghosts and non-minimal operators; use factorization or covariant decomposition to Laplace type.
- Comparison with dimensional regularization: show equivalence for local counterterms and differences in finite nonlocal parts; useful cross-checks in curved space QFT.
- Holography: ζ-determinants in AdS via quasinormal spectra/heat kernels; relate to CFT partition functions and conformal anomalies.
- Quantum chaos and Selberg zeta: relate spectral ζ on hyperbolic manifolds to geodesic flows; applications to semiclassical quantization.

Open Problems
- Zeta regularization on singular spaces (cones/orbifolds): define ζ and determinants with controlled dependence on defect data; difficulty: hard; start: heat-kernel on cones and boundary layer techniques.
- Non-self-adjoint operators (real-time, PT-symmetric): extend ζ definitions and stability criteria; difficulty: medium-hard; start: complex spectral theory and Krein spaces.
- Interacting QFT beyond one loop in curved backgrounds: organize ζ/heat-kernel methods for multi-loop nonlocal structures; difficulty: hard; start: covariant perturbation theory.
- Precise matching of ζ-regularized finite parts across schemes (ζ vs. DR vs. Pauli–Villars) in nontrivial backgrounds; difficulty: medium; start: scheme transformations via local counterterms.
- Numerical ζ-determinants in higher dimensions with boundaries: robust algorithms using contour integrals/phase shifts; difficulty: medium; start: Dunne’s method and Gelfand–Yaglom generalizations.
- Zeta functions for random and disordered operators (Anderson localization): statistical properties of ζ_A(s) and det_ζ A; difficulty: medium; start: supersymmetric methods and replica trick.

References
- S. W. Hawking (1977), Zeta function regularization of path integrals, Communications in Mathematical Physics 55, 133–148. DOI: 10.1007/BF01626516
- D. V. Vassilevich (2003), Heat kernel expansion: user’s manual, Physics Reports 388, 279–360. arXiv:hep-th/0306138
- E. Elizalde (2012), Ten Physical Applications of Spectral Zeta Functions (2nd ed.), Springer.
- K. Kirsten (2001), Spectral Functions in Mathematics and Physics, CRC Press.
- G. V. Dunne (2008), Functional determinants in quantum field theory, Journal of Physics A 41, 304006. arXiv:0711.1178
- D. B. Ray and I. M. Singer (1971), R-torsion and the Laplacian on Riemannian manifolds, Advances in Mathematics 7, 145–210.
- A. M. Polyakov (1981), Quantum geometry of bosonic strings, Physics Letters B 103, 207–210.

TL;DR and key formulas
- Define
$$
\zeta_A(s) \;=\; \sum_n \lambda_n^{-s}, \qquad \ln \det\nolimits_{\zeta} A \;=\; -\zeta_A'(0)\,.
$$
- Use the heat kernel
$$
\zeta_A(s) \;=\; \frac{1}{\Gamma(s)} \int_0^\infty dt\, t^{s-1} \mathrm{Tr}\, e^{-tA}\,,
\quad
\mathrm{Tr}\, e^{-tA} \sim (4\pi t)^{-d/2} \sum_k a_k t^k\,.
$$
- Applications beyond Casimir: one-loop effective actions, finite-temperature determinants, trace anomalies and Polyakov action, string-theory normal ordering, instanton/soliton determinant ratios, analytic torsion.
Problem
- Explain the thermal partition function of a single harmonic oscillator and show how to obtain it both canonically and via zeta-function regularization (functional determinant on the Euclidean time circle).

Assumptions and Setup
- Single bosonic harmonic oscillator of frequency ω at inverse temperature β = 1/T.
- Euclidean functional integral with periodic boundary conditions in imaginary time τ ∈ [0, β], so the fluctuation operator is A = −∂_τ^2 + ω^2 on S^1_β.
- Use zeta-function regularization for infinite products/sums; Planck units with k_B = ℏ = 1.

Solution (step-by-step)
1) Canonical derivation (spectrum sum)
- Energy levels: 
$$
E_n \;=\; \omega\left(n+\tfrac{1}{2}\right), \qquad n=0,1,2,\dots
$$
- Partition function:
$$
Z(\beta) \;=\; \sum_{n=0}^\infty e^{-\beta \omega (n+1/2)}
\;=\; \frac{e^{-\beta \omega/2}}{1 - e^{-\beta \omega}}
\;=\; \frac{1}{2\sinh(\beta\omega/2)}\,.
$$
2) Path integral and zeta-regularized determinant
- Euclidean action:
$$
S_E[x] \;=\; \frac{1}{2}\int_0^\beta d\tau \left(\dot x^2 + \omega^2 x^2\right)\,.
$$
- Gaussian functional integral:
$$
Z(\beta) \;=\; \left[\det\nolimits_{\zeta}\left(-\partial_\tau^2+\omega^2\right)\right]^{-1/2}\,.
$$
- With periodic boundary conditions on S^1_β, the eigenvalues are
$$
\lambda_n \;=\; \left(\frac{2\pi n}{\beta}\right)^2 + \omega^2, \qquad n\in\mathbb{Z}\,,
$$
so formally
$$
\det\nolimits_{\zeta} A \;=\; \prod_{n\in\mathbb{Z}} \left[\left(\frac{2\pi n}{\beta}\right)^2 + \omega^2\right]\,,
$$
interpreted via zeta regularization.

- Use the product formula for sinh:
$$
\prod_{n=1}^\infty\left(1 + \frac{z^2}{n^2}\right) \;=\; \frac{\sinh(\pi z)}{\pi z}\,,
\qquad z \equiv \frac{\beta \omega}{2\pi}\,.
$$
Then
$$
\prod_{n=1}^\infty\left[\left(\frac{2\pi n}{\beta}\right)^2 + \omega^2\right]
= \prod_{n=1}^\infty \left(\frac{2\pi n}{\beta}\right)^2
\cdot \frac{\sinh(\beta \omega/2)}{\beta\omega/2}\,.
$$
- Zeta-regularized evaluation of the divergent factor:
$$
\prod_{n=1}^\infty \left(\frac{2\pi n}{\beta}\right)^2
= \left(\frac{2\pi}{\beta}\right)^{2\sum_{n=1}^\infty 1}\cdot \prod_{n=1}^\infty n^2
= \left(\frac{2\pi}{\beta}\right)^{2\zeta_{\mathrm{R}}(0)} \exp\!\left(-2\zeta'_{\mathrm{R}}(0)\right)
= \left(\frac{2\pi}{\beta}\right)^{-1}\cdot 2\pi \;=\; \beta\,,
$$
where we used
$$
\zeta_{\mathrm{R}}(0) = -\frac{1}{2}\,, \qquad \zeta'_{\mathrm{R}}(0) = -\frac{1}{2}\ln(2\pi)\,.
$$
- Now include all Matsubara modes n∈ℤ:
$$
\det\nolimits_{\zeta} A \;=\; \omega^2 \prod_{n=1}^\infty \left[\left(\frac{2\pi n}{\beta}\right)^2 + \omega^2\right]^2
= \omega^2 \left[\beta \cdot \frac{\sinh(\beta\omega/2)}{\beta\omega/2}\right]^2
= 4\,\sinh^2\!\left(\frac{\beta\omega}{2}\right).
$$
Therefore
$$
Z(\beta) \;=\; \left[\det\nolimits_{\zeta} A\right]^{-1/2}
\;=\; \frac{1}{2\sinh(\beta\omega/2)}\,,
$$
in exact agreement with the canonical result.

Thermodynamic quantities
- Free energy:
$$
F(\beta) \;=\; -\frac{1}{\beta}\ln Z \;=\; \frac{1}{\beta}\,\ln\!\left[2\sinh\!\left(\frac{\beta\omega}{2}\right)\right].
$$
- Internal energy:
$$
U(\beta) \;=\; -\frac{\partial}{\partial \beta}\ln Z
\;=\; \frac{\omega}{2}\coth\!\left(\frac{\beta\omega}{2}\right)
\;=\; \frac{\omega}{2} + \frac{\omega}{e^{\beta\omega}-1}\,.
$$
- Heat capacity:
$$
C(\beta) \;=\; \frac{\partial U}{\partial T}
\;=\; \left(\frac{\beta \omega}{2}\right)^2 \operatorname{csch}^2\!\left(\frac{\beta\omega}{2}\right).
$$
Checks and Validation
- Zero-temperature limit (β→∞):
$$
Z \to e^{-\beta\omega/2}, \quad U \to \omega/2 \quad (\text{ground state energy}).
$$
- High-temperature (βω≪1):
$$
Z \sim \frac{1}{\beta\omega}, \quad U \sim T, \quad C \sim 1,
$$
recovering the classical equipartition result for one quadratic degree of freedom.

Remarks and variants
- Fermionic (two-state) “oscillator” with antiperiodic boundary conditions has Matsubara frequencies (2π/β)(n+1/2). A similar zeta-regularized product yields
$$
Z_{\text{ferm}}(\beta) \;=\; 2\cosh\!\left(\frac{\beta\omega}{2}\right),
$$
consistent with energies ±ω/2.
- For fields, one multiplies the single-oscillator factor over spatial momenta, turning sums/products into integrals and recovering Bose–Einstein/FD distributions.

References
- H. Kleinert (2009), Path Integrals in Quantum Mechanics, Statistics, Polymer Physics, and Financial Markets (5th ed.), World Scientific, Ch. 5–7.
- S. W. Hawking (1977), Zeta function regularization of path integrals, Commun. Math. Phys. 55, 133–148. DOI: 10.1007/BF01626516
- K. Kirsten (2001), Spectral Functions in Mathematics and Physics, CRC Press, Ch. 8–9.
- J. I. Kapusta and C. Gale (2006), Finite-Temperature Field Theory, Cambridge Univ. Press, Sec. 2.1–2.3.

TL;DR
- For a single harmonic oscillator of frequency ω at temperature T = 1/β,
$$
Z(\beta) \;=\; \frac{1}{2\sinh(\beta\omega/2)}\,,
$$
derivable either from the spectrum sum or from a zeta-regularized functional determinant on the Euclidean time circle.

Problem
- Extend the oscillator partition function to:
  1) Many coupled/decoupled harmonic oscillators (multi-dimensional case).
  2) Twisted (quasi-periodic) boundary conditions in Euclidean time.
- Keep the derivation zeta-function based and give clean final formulas.

Assumptions and Setup
- Euclidean time circle S^1_β with circumference β = 1/T.
- Real N-component oscillator with positive-definite quadratic form Ω^2 (an N×N symmetric matrix), action
$$
S_E[x] \;=\; \frac{1}{2}\int_0^\beta d\tau\;\Big(\dot x^T \dot x + x^T \Omega^2 x\Big),\qquad x(\tau)\in\mathbb{R}^N.
$$
- The fluctuation operator is A = −∂_τ^2 + Ω^2. For a complex oscillator, the Gaussian integral gives a power 1 instead of 1/2 on the determinant.
- Boundary conditions on S^1_β:
  - Periodic (bosonic): x(τ+β)=x(τ).
  - Anti-periodic (a special “twist” for a real variable): x(τ+β)=−x(τ).
  - General U(1) twist for a complex variable z(τ): z(τ+β)=e^{i\theta} z(τ).

Solution
1) Many oscillators with periodic boundary conditions (real N-component)
- Functional integral:
$$
Z_{\text{real, per}}(\beta) \;=\; \Big[\det\nolimits_{\zeta}\!\big(-\partial_\tau^2+\Omega^2\big)\Big]^{-1/2}.
$$
- Using zeta-regularized product over Matsubara modes and the spectral theorem (functional calculus for the positive matrix Ω),
$$
\det\nolimits_{\zeta}\!\big(-\partial_\tau^2+\Omega^2\big)
\;=\; \det\!\Big[\,4\,\sinh^2\!\Big(\tfrac{\beta \Omega}{2}\Big)\Big].
$$
- Therefore the partition function is
$$
Z_{\text{real, per}}(\beta)
\;=\;
\frac{1}{\det\!\Big[\,2\,\sinh\!\big(\tfrac{\beta \Omega}{2}\big)\Big]}\,.
$$
- If Ω is diagonal with entries ω_i>0 (decoupled oscillators),
$$
Z_{\text{real, per}}(\beta)
\;=\; \prod_{i=1}^N \frac{1}{2\,\sinh(\beta\omega_i/2)}\,.
$$
2) Anti-periodic boundary conditions for a real oscillator
- Replace integer Matsubara modes by half-integers. The determinant becomes
$$
\det\nolimits_{\zeta}\!\big(-\partial_\tau^2+\Omega^2\big)_{\text{anti-per}}
\;=\; \det\!\Big[\,4\,\cosh^2\!\Big(\tfrac{\beta \Omega}{2}\Big)\Big],
$$
so
$$
Z_{\text{real, anti}}(\beta)
\;=\;
\frac{1}{\det\!\Big[\,2\,\cosh\!\big(\tfrac{\beta \Omega}{2}\big)\Big]}
\;=\;\prod_{i=1}^N \frac{1}{2\,\cosh(\beta\omega_i/2)}\,.
$$
3) U(1)-twisted boundary condition for a complex oscillator
- Let z(τ) be a single complex oscillator with frequency ω and twist
$$
z(\tau+\beta) \;=\; e^{i\theta}\, z(\tau), \qquad \theta\in(-\pi,\pi]\,.
$$
- The eigenvalues are
$$
\lambda_n \;=\; \Big(\tfrac{2\pi n+\theta}{\beta}\Big)^2 + \omega^2\,,\qquad n\in\mathbb{Z}\,.
$$
- Zeta-regularized product identity
$$
\prod_{n\in\mathbb{Z}}\!\left[\Big(\tfrac{2\pi n+\theta}{\beta}\Big)^2+\omega^2\right]
\;=\; 2\big(\cosh(\beta\omega)-\cos\theta\big)
$$
yields, for a complex Gaussian (power −1, not −1/2),
$$
Z_{\text{cplx},\,\theta}(\beta)
\;=\;
\frac{1}{\,2\big(\cosh(\beta\omega)-\cos\theta\big)}\,.
$$
- Equivalent and often more physical form (in terms of r=e^{-\beta\omega}):
$$
Z_{\text{cplx},\,\theta}(\beta)
\;=\;
\frac{1}{\,1 - 2 r \cos\theta + r^2\,}
\;=\;
\frac{1}{\,\big|1 - e^{-\beta\omega+i\theta}\big|^2}\,.
$$
- Special cases:
  - θ = 0 (periodic): 
    $$
    Z_{\text{cplx},\,0}(\beta) \;=\; \frac{1}{4\sinh^2(\beta\omega/2)}\,,
    $$
    which equals the square of the real-oscillator result, as expected.
  - θ = \pi (anti-periodic): 
    $$
    Z_{\text{cplx},\,\pi}(\beta) \;=\; \frac{1}{4\cosh^2(\beta\omega/2)}\,.
    $$
4) Many complex oscillators and/or matrix twists
- For N decoupled complex oscillators with frequencies ω_i and independent twists θ_i,
$$
Z_{\text{cplx},\,\{\theta_i\}}(\beta)
\;=\; \prod_{i=1}^N \frac{1}{\,2\big(\cosh(\beta\omega_i)-\cos\theta_i\big)}
\;=\; \prod_{i=1}^N \frac{1}{\big|1 - e^{-\beta\omega_i+i\theta_i}\big|^2}\,.
$$
- More generally, for a complex N-vector z(τ) with action S_E = ∫ dτ z^\dagger(−∂_τ^2+Ω^2) z and a unitary twist z(τ+β)=U z(τ). If U commutes with Ω (so they can be diagonalized simultaneously with eigenvalues e^{i\theta_a} and ω_j), then
$$
Z_{\text{cplx},\,U}(\beta)
\;=\; \frac{1}{\det\!\Big[\,2\big(\cosh(\beta\Omega)-\tfrac{1}{2}(U+U^\dagger)\big)\Big]}
\;=\; \frac{1}{\big|\det\!\big(\mathbf{1}-U\,e^{-\beta\Omega}\big)\big|^2}\,.
$$
- The compact form 
$$
Z_{\text{cplx},\,U}(\beta) \;=\; \frac{1}{\big|\det(\mathbf{1}-U\,e^{-\beta\Omega})\big|^2}
$$
is often the most useful (e.g., for imaginary chemical potentials, flavor twists, or holonomies).

Key product identity (used with zeta regularization)
- With a = θ/(2π), b = βω/(2π),
$$
\prod_{n\in\mathbb{Z}}\!\big[(n+a)^2+b^2\big]
\;=\; 2\big(\cosh(2\pi b)-\cos(2\pi a)\big).
$$
- It follows from the Weierstrass product for sin(πz), evaluating at z=a±ib and multiplying; the overall constant is fixed by the ζ-scheme and continuity to a=0.

Checks and Validation
- Periodic limit (θ=0) for a real oscillator recovers
$$
Z \;=\; \frac{1}{2\,\sinh(\beta\omega/2)} \quad\Rightarrow\quad
U = \frac{\omega}{2}\coth(\beta\omega/2).
$$
- Anti-periodic real case (θ=π) gives
$$
Z \;=\; \frac{1}{2\,\cosh(\beta\omega/2)},
$$
as expected from shifting Matsubara frequencies by 1/2.
- Zero-mode caution: if ω=0 and θ=0 there is a zero eigenvalue; one must isolate the zero mode (introduce a small mass or treat collective coordinate separately). For θ≠0, the twist gaps the zero mode since
$$
\cosh(0)-\cos\theta \;=\; 1-\cos\theta \;>\; 0\,.
$$
Examples
- Two decoupled real oscillators with frequencies ω1,ω2 (periodic):
$$
Z(\beta) \;=\; \frac{1}{4\,\sinh(\beta\omega_1/2)\,\sinh(\beta\omega_2/2)}\,.
$$
- One real oscillator, anti-periodic:
$$
Z(\beta) \;=\; \frac{1}{2\,\cosh(\beta\omega/2)}\,.
$$
- One complex oscillator with twist θ:
$$
Z(\beta,\theta) \;=\; \frac{1}{\,1 - 2 e^{-\beta\omega}\cos\theta + e^{-2\beta\omega}\,}
\;=\; \frac{1}{\,2\big(\cosh(\beta\omega)-\cos\theta\big)}\,.
$$
Extensions
- Non-commuting Ω and U: the operator couples modes; Z is still given by the ζ-determinant of −∂_τ^2+Ω^2 with quasi-periodic boundary condition, computable via spectral methods (e.g., Fourier–Laplace expansion in τ and diagonalization in the internal space).
- Inclusion of linear couplings or background gauge fields: a constant imaginary gauge potential A_τ=iθ/β implements the same twist; one can track θ-dependence via heat-kernel methods.
- Fermionic oscillators: antiperiodic boundary conditions are standard; replacing sinh→cosh yields the usual 2 cosh(βω/2) in the denominator of Z.

References
- K. Kirsten (2001), Spectral Functions in Mathematics and Physics, CRC Press, Ch. 8–9.
- S. W. Hawking (1977), Zeta function regularization of path integrals, Commun. Math. Phys. 55, 133–148. DOI: 10.1007/BF01626516
- H. Kleinert (2009), Path Integrals in Quantum Mechanics, Statistics, Polymer Physics, and Financial Markets (5th ed.), World Scientific, Ch. 5–7.
\Problem
- Derive and explain the identity
$$
\prod_{n\in\mathbb{Z}}\!\left[\Big(\tfrac{2\pi n+\theta}{\beta}\Big)^2+\omega^2\right]
\;=\; 2\big(\cosh(\beta\omega)-\cos\theta\big)\,,
$$
which arises as the zeta-regularized eigenvalue product of the operator −∂_τ^2+ω^2 on the circle S^1_β with twist z(τ+β)=e^{i\theta}z(τ).

Assumptions and Setup
- Introduce dimensionless parameters
$$
a \;\equiv\; \frac{\theta}{2\pi}\,,\qquad b \;\equiv\; \frac{\beta\omega}{2\pi}\,.
$$
- Use the Weierstrass product for sin and zeta-regularization for divergent constants.

Solution (step-by-step)
1) Reduce to a dimensionless product
- Factor out the scale (2π/β) from each term:
$$
\left(\frac{2\pi n+\theta}{\beta}\right)^2+\omega^2
\;=\;\left(\frac{2\pi}{\beta}\right)^2\big[(n+a)^2+b^2\big].
$$
Zeta-regularization fixes the overall scale so that the infinite product over n∈ℤ becomes dimensionless. It suffices to show
$$
\prod_{n\in\mathbb{Z}}\!\big[(n+a)^2+b^2\big]
\;=\; 2\big(\cosh(2\pi b)-\cos(2\pi a)\big).
$$
Substituting back yields the stated formula with β,ω,θ.

2) Start from the Weierstrass product for sin
$$
\sin(\pi z) \;=\; \pi z \prod_{n=1}^{\infty}\left(1-\frac{z^2}{n^2}\right).
$$
Evaluate at $z=a\pm i b$ and multiply:

$$\begin{align}
\sin(\pi z) & =\pi z\prod ^{\infty}_{m=1}\left( 1-\frac{z^{2}}{m^{2}} \right) \\
|\sin(\pi z)|^{2} & =\pi ^{2}(a^{2}+b^{2})\prod ^{\infty}_{m=1}\frac{(m-a-ib)(m+a+ib)(m-a+ib)(m+a-ib)}{m^{4}}\quad z=a+ib \\
 & =\pi ^{2}(a^{2}+b^{2})\prod ^{\infty}_{m=1}\frac{((m-a)^{2}+b^{2})((m+a)^{2}+b^{2})}{m^{4}} \\
 & =\pi ^{2}(a^{2}+b^{2})\prod_{m\neq 0} \frac{(m+a)^{2}+b^{2}}{m^{2}} \\
 & =\pi ^{2}\frac{\prod _{m\in \mathbb{Z}} (m+a)^{2}+b^{2}}{\prod ^{\infty}_{m=1}m^{4}}
\end{align}$$

use zeta-function regularization to evaluate the denominator

$$\begin{align}
\prod ^{\infty}_{m=1}m^{4} & =\exp\left( -4\zeta _{\mathbb{R}}'(0) \right) \\
 & =(2\pi)^{2}
\end{align}$$

finally we have

$$\begin{align}
\prod _{m\in \mathbb{Z}}((m+a)^{2}+b^{2}) & =4|\sin(\pi z)|^{2} \\
 & =4(\sin ^{2}(\pi a)+\sinh ^{2}(\pi b)) \\
 & =2(\cosh (2\pi b)-\cos (2\pi a))
\end{align}$$

3) Fix the overall constant by zeta-regularization
- Using $\prod_{n=1}^{\infty} n = \sqrt{2\pi}$ in ζ-regularization (from $\zeta'_{\mathrm{R}}(0)=-\tfrac{1}{2}\ln(2\pi)$), we get
$$
\prod_{n=1}^{\infty} n^4 \;=\; (2\pi)^2.
$$
Thus
$$
\prod_{n\in\mathbb{Z}}\big[(n+a)^2+b^2\big]
\;=\; 4\,\big|\sin(\pi(a+ib))\big|^2.
$$
4) Express the modulus in elementary functions
- Use the identity
$$
\big|\sin(x+iy)\big|^2 \;=\; \sin^2 x + \sinh^2 y \;=\; \frac{1}{2}\big(\cosh(2y)-\cos(2x)\big).
$$
Setting $x=\pi a$, $y=\pi b$,
$$
\prod_{n\in\mathbb{Z}}\big[(n+a)^2+b^2\big]
\;=\; 2\big(\cosh(2\pi b)-\cos(2\pi a)\big).
$$
5) Restore original variables
- With $a=\theta/(2\pi)$ and $b=\beta\omega/(2\pi)$,
$$
\prod_{n\in\mathbb{Z}}\!\left[\Big(\tfrac{2\pi n+\theta}{\beta}\Big)^2+\omega^2\right]
\;=\; 2\big(\cosh(\beta\omega)-\cos\theta\big).
$$
Checks and Validation
- Periodic case θ=0:
$$
2(\cosh\beta\omega-1) \;=\; 4\sinh^2(\beta\omega/2),
$$
which reproduces the earlier determinant for periodic boundary conditions.
- Anti-periodic case θ=\pi:
$$
2(\cosh\beta\omega+1) \;=\; 4\cosh^2(\beta\omega/2).
$$
- Zero mode: for ω=0 and θ=0, the product has a zero factor (n=0 term), and the right-hand side vanishes as well: $2(1-1)=0$. For θ≠0, the twist gaps the zero mode since $2(1-\cos\theta)>0$.

Notes
- The zeta-regularized constant 4 is essential; without it, a naive product would carry divergent scale factors. ζ-regularization canonically fixes this via the known value of $\prod_{n=1}^{\infty} n$.
- A more conservative route is to consider ratios, e.g.
$$
\frac{\displaystyle\prod_{n\in\mathbb{Z}}\big[(n+a)^2+b^2\big]}
{\displaystyle\prod_{n\in\mathbb{Z}}\big[n^2+b^2\big]}
\;=\;
\frac{\cosh(2\pi b)-\cos(2\pi a)}{\cosh(2\pi b)-1}\,,
$$
which avoids any overall constant; the constant is then fixed by the known θ=0 case.