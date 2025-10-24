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

