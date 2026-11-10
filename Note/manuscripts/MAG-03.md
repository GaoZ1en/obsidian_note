# Finite-Temperature Metric–Affine Matter: A Controlled Reduced Cell

DRAFT — bounded mathematical review recorded.

A thermal state requires a specified Hamiltonian, its domain and a clock. An algebraic connection integral by itself supplies none of those. This chapter takes the reduced scalar model of [MAG-02](<MAG-02.md#L150-L170>), chooses a fixed-background homogeneous truncation and quantizes it with an explicitly chosen measure, ordering and boundary condition. Its healthy branch becomes a finite interval in a field coordinate. The spectrum, thermal trace and an equilibrium correlator can then be evaluated. A separate completely positive dephasing channel gives an actual nonequilibrium evolution without pretending that stationarity implies thermalization.

The result is a controlled quantum-mechanical matter example motivated by a metric–affine reduction, not a complete thermal Standard Model or a quantum-gravity state. The general ensemble/KMS framework is developed in [EC-05](<EC-05.md>); here the Hamiltonian and observable entering those definitions are constructed rather than left implicit.

## 1. Action, Homogeneous Truncation, and Units

Use a fixed flat metric $ds^2=-dt^2+d\mathbf x^2$ on $\mathbb R\times\mathbb T^3$, with fixed proper spatial volume $V_3>0$. Spatial boundary conditions are periodic. The real scalar is homogeneous, $\phi=\phi(t)$. We use $c=\hbar=k_B=1$ and the [MAG-02](<MAG-02.md#L150-L170>) nonminimal current coupling $\lambda\ne0$, with $\kappa=8\pi G>0$. Define the positive field-amplitude scale

$$\begin{align}
\phi_*^2=\frac{8}{3\kappa\lambda^2},\qquad Z(\phi)=1-\frac{\phi^2}{\phi_*^2}.
\end{align}$$

The scale has inverse-length units; it is not a spatial box size or a velocity. Lambda here is the dimensionless current coupling of that action, not a separately postulated polymer length. Restrict to the healthy branch $|\phi|<\phi_*$. The mechanical action is

$$\begin{align}
S_{\rm cell}=\frac{V_3}{2}\int dt\, [Z(\phi)\dot\phi^2-m^2\phi^2].
\end{align}$$

This uses a previously derived classical auxiliary reduction. Quantizing this homogeneous mechanical model is a new choice. It is not a proof that eliminating the connection, truncating all nonzero spatial modes and quantizing a full interacting field theory commute. No gravitational backreaction or Hamiltonian constraint is solved by fixing this background clock.

Introduce a dimensionless field coordinate and an inertial coefficient,

$$\begin{align}
Q=\phi/\phi_*,\qquad \mathcal G(Q)=1-Q^2,\qquad I_\phi=V_3\phi_*^2>0.
\end{align}$$

Here Q is the scalar configuration coordinate, not the nonmetricity tensor.

The mechanical momentum is not a momentum density. Explicitly,

$$\begin{align}
p_\phi=V_3Z\dot\phi,\qquad P_Q=\phi_*p_\phi=I_\phi \mathcal G\dot Q,\qquad H_{\rm cl}=\frac{P_Q^2}{2I_\phi \mathcal G}+\frac{I_\phi m^2}{2}Q^2.
\end{align}$$

Here $[V_3]=L^3$, $[\phi_*]=L^{-1}$, $[I_\phi]=L$, $[P_Q]=1$ and $[H]=[m]=[T]=L^{-1}$. Time and inverse temperature have length units. The factor $V_3$ is indispensable: this is a standing wave in field space, not a particle standing wave across the spatial torus.

## 2. Chosen Ordering, Measure and Self-Adjoint Hamiltonian

Choose the Hilbert space and Laplace–Beltrami ordering

$$\begin{align}
\mathcal H_Q=L^2((-1,1),\sqrt{\mathcal G}\,dQ),\qquad \widehat H_Q=-\frac1{2I_\phi}\frac1{\sqrt{\mathcal G}} \partial_Q\frac1{\sqrt{\mathcal G}}\partial_Q +\frac{I_\phi m^2}{2}Q^2.
\end{align}$$

This measure and ordering are model data, not consequences of the classical equations alone. The full mechanical metric has the constant factor $I_\phi$; including its constant square root in the norm instead changes normalized wavefunctions by a constant, not the spectrum or a Hilbert-space trace. No field-dependent Jacobian is being dropped.

Define

$$\begin{align}
y(Q)=\frac\pi4+\int_0^Q\sqrt{1-s^2}\,ds =\frac\pi4+\frac12[Q\sqrt{1-Q^2}+\arcsin Q],\qquad 0<y<\ell,\quad \ell=\frac\pi2.
\end{align}$$

The derivative is positive in the open interval and vanishes only at its excluded endpoints. Thus this is a smooth bijective coordinate map of the interiors, with finite endpoint limits. Composition defines a unitary map

$$\begin{align}
(Uf)(y)=f(Q(y)),\qquad \int_0^\ell|Uf|^2dy=\int_{-1}^1|f|^2\sqrt{\mathcal G}\,dQ.
\end{align}$$

Direct differentiation gives

$$\begin{align}
U\widehat H_QU^{-1} =-\frac1{2I_\phi}\partial_y^2+\frac{I_\phi m^2}{2}Q(y)^2.
\end{align}$$

From now on choose $m=0$ for the explicitly evaluated example. We choose the Dirichlet/Friedrichs Hamiltonian

$$\begin{align}
H_D=-\frac1{2I_\phi}\partial_y^2,\qquad D(H_D)=H^2(0,\ell)\cap H_0^1(0,\ell).
\end{align}$$

The Sobolev notation means square-integrable weak derivatives through order two, with vanishing endpoint values; the closed quadratic form has domain $H_0^1$ and value $\int|f'|^2dy/(2I_\phi)$. The standard Dirichlet Laplacian theorem gives a nonnegative self-adjoint operator [1]. The Q-domain is its exact inverse image under U, not an unexamined boundary prescription for a singular differential expression. The boundary conditions are on allowed field amplitudes, not on spatial positions or a spacetime horizon.

### No Global Canonical Momentum Is Assumed

The formal $-i\partial_y$ with domain $H_0^1$ is symmetric but not self-adjoint: its adjoint permits general $H^1$ endpoint values. Its self-adjoint extensions use quasiperiodic boundary relations, whose squared domains are not this Dirichlet Hamiltonian domain. We define the Hamiltonian directly, not by asserting the square of a self-adjoint Dirichlet momentum.

Nor can bounded y and a self-adjoint generator obey global Weyl translations $e^{iaP}ye^{-iaP}=y+aI$ for all real a: the two sides would have different bounded spectra. A local differential commutator on compactly supported test functions does not imply that global relation. The following energy levels are Hamiltonian eigenvalues, not a claimed canonical-momentum spectrum.

## 3. Exact Spectrum and a Genuine Thermal Trace

The normalized eigenfunctions and energies are

$$\begin{align}
\psi_n(y)=\sqrt{\frac2\ell}\sin\frac{n\pi y}\ell =\frac2{\sqrt\pi}\sin(2ny),\qquad E_n=E_*n^2,\quad E_*\equiv\frac2{I_\phi},\qquad n=1,2,\ldots.
\end{align}$$

Sine-basis completeness and the real diagonal spectrum give another description of self-adjointness: the operator domain consists of expansions with $\sum n^4|a_n|^2<\infty$. The coordinate-transformed eigenfunctions are simply $\psi_n(y(Q))$ in the declared weighted space. The energy gap comes from this cell/field-domain model; it is not a predicted particle rest mass.

At temperature $T>0$, write $\beta=1/T>0$ and define

$$\begin{align}
\rho_\beta=\frac{e^{-\beta H_D}}{\mathcal Z_D(\beta)},\qquad \mathcal Z_D=\sum_{n=1}^\infty e^{-a n^2} =\frac{\vartheta_3(0,e^{-a})-1}{2},\qquad a=\beta E_*.
\end{align}$$

Here $\vartheta_3(0,q)=1+2\sum_{n\ge1}q^{n^2}$. The sum is positive and finite by Gaussian comparison, so this is a normalized positive trace-class density operator. The index n labels levels of one homogeneous degree of freedom, not independent bosonic particle modes and certainly not 64 affine thermal particles. There is no Bose-gas product over these levels.

The actual Gaussian Fourier transform and Poisson summation for its Schwartz-class function give the equivalent expression

$$\begin{align}
\mathcal Z_D=\frac12\left(\sqrt{\frac\pi a}-1\right) +\sqrt{\frac\pi a}\sum_{k=1}^\infty e^{-\pi^2k^2/a}.
\end{align}$$

Thus the high-temperature leading term is $\sqrt{\pi I_\phi/(8\beta)}-1/2$, while the low-temperature sum is $e^{-a}(1+e^{-3a}+e^{-8a}+\cdots)$. These are limits of this one-coordinate trace, not a bulk Stefan–Boltzmann law.

Use $S_\beta=-\operatorname{Tr}(\rho_\beta\log\rho_\beta)$ and $\operatorname{Var}_\beta(H)=\langle H^2\rangle_\beta-\langle H\rangle_\beta^2$. Differentiating the convergent trace and using $\log\rho_\beta=-\beta H_D-\log\mathcal Z_D$ gives, with the selected energy zero,

$$\begin{align}
\langle H_D\rangle=-\partial_\beta\log\mathcal Z_D,\qquad C_V=\beta^2\operatorname{Var}_\beta(H_D),\qquad S_\beta=\log\mathcal Z_D+\beta\langle H_D\rangle.
\end{align}$$

For example, at $a=1$ direct spectral evaluation gives

| Quantity | Value |
|---|---:|
| $\mathcal Z_D$ | 0.386318602413326 |
| $\langle H_D\rangle/E_*$ | 1.144792104523067 |
| $C_V$ | 0.426242046230855 |
| $S_\beta$ | 0.193699249407930 |

These numbers are not inferred from a formal determinant. For the ten-term trace used here, the omitted sum is bounded by $\int_{10}^\infty e^{-x^2}dx<1.86\times10^{-45}$; the energy-numerator tail is below $1.87\times10^{-43}$. The theta-function evaluation agrees with the series, with the small nonzero omitted tail retained rather than called an exact zero.

## 4. An Evaluated Correlator and Detailed Balance

Choose the bounded self-adjoint probe

$$\begin{align}
O(y)=\cos(\pi y/\ell)=\cos2y.
\end{align}$$

It is an explicit nonlinear function of the scalar coordinate through y(Q), not the original affine current. A product-to-sum identity and sine orthogonality give the actual matrix elements

$$\begin{align}
O_{mn}=\frac12(\delta_{m,n+1}+\delta_{m,n-1}),\qquad m,n\ge1.
\end{align}$$

Let $p_n=e^{-\beta E_n}/\mathcal Z_D$ and $\Delta_n=E_{n+1}-E_n=(2n+1)E_*$. With $O(t)=e^{iH_Dt}Oe^{-iH_Dt}$, the greater correlator is

$$\begin{align}
C^>(t)=\operatorname{Tr}(\rho_\beta O(t)O) =\frac14\sum_{n=1}^\infty [p_ne^{-i\Delta_nt}+p_{n+1}e^{i\Delta_nt}].
\end{align}$$

The lesser correlator is $C^<(t)=C^>(-t)$. The identity $p_{n+1}=p_ne^{-\beta\Delta_n}$ directly exchanges the two coefficients under the shift, proving

$$\begin{align}
C^>(t-i\beta)=C^<(t).
\end{align}$$

The series is absolutely convergent in the thermal strip, so this manipulation is legitimate. With Fourier convention $\int dt\,e^{i\omega t}$ the line weights are

$$\begin{align}
S^>(\omega)=\frac\pi2\sum_{n\ge1} [p_n\delta(\omega-\Delta_n)+p_{n+1}\delta(\omega+\Delta_n)].
\end{align}$$

They are nonnegative and their negative/positive-frequency ratio is $e^{-\beta\Delta_n}$: detailed balance is explicitly realized, not merely assumed from stationarity. At $a=1$ and $E_*t=1$, evaluated summation gives $C^>\simeq-0.243973980967473-0.0206866348966414i$.

Reflection about the midpoint gives $\langle O\rangle=0$, but

$$\begin{align}
\langle O^2\rangle=\frac12-\frac{p_1}{4},
\end{align}$$

which equals 0.261932612827013 at $a=1$. Projection also matters for composites. If $P_N$ keeps levels one through N, the exact finite matrix relation is

$$\begin{align}
(P_NOP_N)^2=P_NO^2P_N-\frac14|N\rangle\langle N|.
\end{align}$$

For the normalized cutoff Gibbs state write $p_n^{(N)}=e^{-\beta E_n}/\sum_{k=1}^N e^{-\beta E_k}$. Its truncated probe variance is $1/2-(p_1^{(N)}+p_N^{(N)})/4$, whereas the projected full composite has expectation $1/2-p_1^{(N)}/4$. The nonzero difference is a deliberate regulator-boundary control, not a failed identity. The thermally averaged correction vanishes as $N\to\infty$ for fixed $\beta>0$. The underlying rank-one operator defect converges strongly to zero, but its operator norm stays $1/4$.

### The Physical Field and Its Mean Are Also Different Data

The bounded multiplication operator Q is odd under the same reflection, so $\langle\phi\rangle=0$. Its quadratic expectation has the explicit integral representation

$$\begin{align}
\langle Q^2\rangle_\beta =\frac4{\pi\mathcal Z_D}\sum_{n\ge1}e^{-a n^2} \int_{-1}^{1}Q^2\sqrt{1-Q^2}\sin^2[2ny(Q)]\,dQ.
\end{align}$$

Evaluating the smooth substitution $Q=\sin\theta$ at $a=1$ gives $\langle Q^2\rangle\simeq0.0925230226268403$ and hence

$$\begin{align}
\langle Z(\phi)\rangle=1-\langle Q^2\rangle
\simeq0.907476977373160\ne Z(\langle\phi\rangle)=1.
\end{align}$$

The integral was checked at two working precisions; its displayed value is numerical, not a claimed exact constant or interval-certified quadrature. At high temperature the configuration probability converges weakly to uniform measure in y, not uniform measure in Q. This means convergence of expectations of bounded continuous probes and follows by writing sine squared as a constant minus a cosine and using vanishing high-frequency Fourier coefficients in the normalized sum. In particular the limiting ratio of the integrals of $Q^2\sqrt{\mathcal G}$ and $\sqrt{\mathcal G}$ is exactly $1/4$.

These expectations do not authorize replacing an operator coefficient in the Hamiltonian by its mean. The metric–affine scalar current also contains derivatives, $j^\mu=\phi\partial^\mu\phi$. Its quantum products require an ordering/domain prescription, and in field theory a composite-operator regulator and subtraction. They cannot be discarded just because a one-point mean vanishes.

## 5. A Specified Nonequilibrium Channel

To model a distinct open evolution, choose a real parameter $\gamma\ge0$ with length units and define, for positive t and gamma,

$$\begin{align}
\mathcal E_t(\rho)=\int_{-\infty}^{\infty} \frac{e^{-s^2/(2\gamma t)}}{\sqrt{2\pi\gamma t}}\, e^{-iH_D(t+s)}\rho\,e^{iH_D(t+s)}\,ds.
\end{align}$$

This is a chosen classical random-time model, not a derived metric–affine collision kernel. Self-adjointness supplies the unitary group for every real integration time. The positive normalized Gaussian makes the map trace preserving and completely positive: the same unitary mixture preserves positivity after tensoring with an arbitrary ancillary system. Gaussian convolution gives the semigroup property. At gamma zero use the continuous limit, ordinary unitary evolution.

The actual Gaussian integral gives the energy-basis solution

$$\begin{align}
(\mathcal E_t\rho)_{mn} =e^{-i(E_m-E_n)t-\gamma(E_m-E_n)^2t/2}\rho_{mn}.
\end{align}$$

On finite spectral-rank matrices, and other states in the generator domain, it obeys

$$\begin{align}
\dot\rho=-i[H_D,\rho]-\frac\gamma2[H_D,[H_D,\rho]].
\end{align}$$

The integral channel is defined on all trace-class states; this unbounded-generator expression is not asserted to be a bounded operator on that whole space.

Start with $|+\rangle=(|1\rangle+|2\rangle)/\sqrt2$. Put $\Delta=3E_*$ and $r(t)=e^{-\gamma\Delta^2t/2}$. In that invariant two-level sector,

$$
\rho(t)=\frac12\begin{pmatrix}1&r e^{i\Delta t}\\r e^{-i\Delta t}&1\end{pmatrix},\qquad
\langle O\rangle_t=\frac12r\cos\Delta t,\qquad
\operatorname{Tr}\rho(t)^2=\frac{1+r^2}{2}.
$$

The energy remains $5E_*/2$. For $\gamma E_*=1$, $E_*t=1$, the mean probe is about -0.00549891160881 and the purity is 0.500061704902043. The master equation and both quantities are evaluated directly, not inferred from an assumed relaxation time.

An explicit Kraus realization on this sector is $K_0=\sqrt{(1+r)/2}\,U_t$, $K_1=\sqrt{(1-r)/2}\,U_t\sigma_3$, with $U_t=\operatorname{diag}(e^{-iE_*t},e^{-4iE_*t})$. Their squared norms sum to I. The unnormalized Choi matrix has eigenvalues $0,0,1+r,1-r$, nonnegative for the stated range. This independently checks complete positivity. For positive gamma and t the pure input becomes mixed, so the channel is not unitary.

All diagonal energy populations remain fixed. Consequently every Gibbs state is stationary, but so is every other diagonal state. The displayed initial state approaches equal populations on levels one and two, with zero population above them; it is not a Gibbs state at any finite positive beta. For example its two-to-three transition has negative/positive-frequency weight ratio zero, inconsistent with finite-positive-beta detailed balance. No heat bath temperature is selected and no general thermalization is established. Energy-exchange jumps and their detailed-balance rates would be additional physical input, as in the finite bath models of [EC-05](<EC-05.md>).

The KMS statement in Section 4 uses the Hamiltonian automorphism group. A dissipative CP semigroup is not that group; stationarity of a Gibbs density under this channel does not by itself prove an ordinary KMS condition for its dissipative two-time correlations.

## 6. Endpoints, Coupling Limits and the Clock

The finite proper field-coordinate distance to $Q=\pm1$ does not choose a unique boundary condition. Choosing Neumann rather than Dirichlet for the same free differential expression adds a constant zero-energy state and gives $\mathcal Z_N=1+\mathcal Z_D$, with different eigenfunctions and correlators. Both realizations can be self-adjoint and nonnegative. The boundary data are not universal quantum-gravity predictions.

The degeneracy of Z at the endpoints also does not supply an automatic continuation to $Z<0$. There the classical kinetic term has an unbounded-below momentum direction. No positive-temperature Gibbs model on that branch is defined by the present construction.

For the specific massless model used here, taking $\lambda\to0$ at fixed volume and beta sends $\phi_*\to\infty$ and $I_\phi\to\infty$. The high-temperature/scaling form shows $\mathcal Z_D$ diverging as $\sqrt{I_\phi}$. In a dimensionful field coordinate $\phi_*[y(Q)-\pi/4]$ the interval becomes the whole field line: the free heat operator then has infinite configuration volume and is not trace class. This is not a universal claim about a different confining potential or massive theory; such limits require their own data.

Likewise a negative unbounded clock generator $-H_D$ gives a divergent sum $\sum e^{+\beta E_n}$. A zero Hamiltonian constraint on an unspecified infinite-dimensional physical space would give an identity rather than a normalizable Gibbs density. Neither operation automatically defines temperature. Our use of the fixed background t and its semibounded Hamiltonian is an explicit physical choice, not a solution of the joint gravitational constraints.

## 7. Relation to the Auxiliary Connection and Remaining Limits

The oscillatory auxiliary Gaussian in [MAG-02](<MAG-02.md>) is a conditional amplitude. Its determinant, phase and source completion are not a positive Boltzmann weight, and the 64 distortion components are not 64 thermal particles. Its projective quotient also does not select the Hamiltonian/domain/state used here.

In a particular fixed-metric conditional ratio an auxiliary factor may cancel. That fact does not establish equality of a reduced quantization with an unreduced joint quantum theory. Field-dependent measures, determinants, current derivatives, counterterms, contour choices and boundary conditions must be tracked in such a comparison. The present Laplace–Beltrami prescription is declared, not derived by dropping those data.

The controlled achievements are a chosen homogeneous action, a self-adjoint healthy-branch Hamiltonian, its evaluated thermal spectrum/trace/correlator, and a fully specified CP nonequilibrium evolution. They supply neither full Standard Model thermodynamics nor an interacting continuum metric–affine thermal theory. Renormalization-group behaviour, continuum Ward identities, anomaly freedom, transport/bath coefficients, quantum gravitational states and cosmological histories remain additional work. No universal vanishing of thermal connection effects or automatic quantum-gravity/SM prediction follows from this cell model.

## References

[1] M. Reed and B. Simon, Methods of Modern Mathematical Physics, Vol. I: Functional Analysis, revised edition, Academic Press, 1980. Self-adjoint operators and spectral calculus. The concrete Dirichlet domain and sine basis are supplied here; finite matrix checks do not replace the operator-domain theorem.

[2] E. B. Davies, Heat Kernels and Spectral Theory, Cambridge University Press, 1989. Dirichlet Laplacians, heat semigroups and trace-class spectral constructions on bounded domains.

[3] E. M. Stein and R. Shakarchi, Fourier Analysis: An Introduction, Princeton University Press, 2003. Poisson summation and Gaussian Fourier transforms under their stated convergence hypotheses.

[4] H.-P. Breuer and F. Petruccione, The Theory of Open Quantum Systems, Oxford University Press, 2002. Completely positive dynamics and dephasing; the generator here is separately chosen and explicitly solved, not asserted to follow from metric–affine geometry.
