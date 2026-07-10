---
title: An Overview of Resurgence
date: 2026-07-10
summary: "A technical introduction to resurgent asymptotics, Borel-Écalle resummation, transseries, and their applications in quantum mechanics, quantum field theory, matrix models, and quantum gravity."
---

# An Overview of Resurgence

## From Borel-Écalle Resummation to Quantum Field Theory, Matrix Models, and Quantum Gravity

### Abstract

Resurgence studies a special class of divergent asymptotic expansions. Singularities of the Borel transform of one perturbative sector not only determine its large-order divergence, but also encode the low-order fluctuations of exponentially suppressed sectors, such as instantons, complex saddles, renormalons, and non-hydrodynamic modes. These sectors must be assembled into a transseries. Borel resummations along different directions are related by a Stokes automorphism, whose jumps are governed by alien derivatives and Stokes constants.

The precise statement of resurgence is not that a finite perturbative calculation contains all nonperturbative physics, nor usually that the perturbative series alone uniquely determines the full theory. Rather:

1. A resurgent transseries contains exact large-order/low-order relations between distinct asymptotic sectors.
2. Subject to analyticity assumptions, perturbative data to arbitrarily high order can probe the actions, fluctuation series, and Stokes data of other sectors.
3. A physical solution usually also requires global input: transseries parameters, an integration contour, boundary or initial conditions, or an exact quantization condition.
4. This structure can be established rigorously for finite-dimensional integrals, classes of ODEs, exact WKB problems, and some quantum-mechanical models.
5. A complete resurgent nonperturbative definition is not known for a general four-dimensional QFT, in particular for Yang-Mills theory or QCD on $\mathbb R^4$.

The standard mathematical entry points are Gevrey asymptotics, Borel-Laplace resummation, endless analytic continuation, and alien calculus. The physical entry points are saddle-point expansions, Lefschetz thimbles, instantons, renormalons, and large-order perturbation theory.

---

# 1. Why perturbative expansions diverge

Suppose that a quantity has the formal expansion, as $g\to0$,

$$
\widetilde\Phi(g)=\sum_{n=0}^{\infty}a_n g^{n+1}.
$$

It is an asymptotic expansion of a function $\Phi(g)$ in a sector $S\subset\mathbb C_g$ if, for every $N$,

$$
\Phi(g)-\sum_{n=0}^{N-1}a_n g^{n+1}=o(g^N),
\qquad g\to0,\quad g\in S.
$$

This does not require the series to converge. In quantum mechanics, quantum field theory, matrix models, and WKB theory, one often finds

$$
a_n\sim C\,A^{-n}\Gamma(n+\beta),
$$

and hence a zero radius of convergence.

A more refined notion is Gevrey-$s$ asymptotics:

$$
\left|\Phi(g)-\sum_{n=0}^{N-1}a_n g^{n+1}\right|
\leq C K^N\Gamma(1+sN)|g|^{N+1}.
$$

The common semiclassical case is Gevrey-1, namely $a_n\sim n!$. An ordinary Borel transform removes this factorial growth. Higher Gevrey order requires $k$-summability, acceleration, or more general Écalle machinery.

If

$$
a_n g^n\sim C\,\Gamma(n+\beta)\left(\frac{g}{A}\right)^n,
$$

then Stirling's formula puts the least term near

$$
N_*\simeq\frac{|A|}{|g|}.
$$

After truncation there, the error has the scale

$$
R_{N_*}(g)\sim g^\gamma e^{-A/g}.
$$

Thus exponentially small nonperturbative scales are not arbitrary additions: they are already indicated by the optimal-truncation error of perturbation theory. Hyperasymptotics iterates this observation, expressing the remainder of one saddle expansion through asymptotic expansions around other saddles.

Two implications must be kept separate:

$$
\text{divergent}\quad\not\Rightarrow\quad\text{resurgent},
\qquad
\text{resurgent}\quad\not\Rightarrow\quad\text{Borel summable in every direction}.
$$

Resurgence requires controlled analytic continuation of the Borel transform; an arbitrary divergent series need not have it.

---

# 2. Borel-Laplace resummation

Fix the convention

$$
\widetilde\Phi(g)=\sum_{n=0}^{\infty}a_n g^{n+1},
\qquad
\widehat\Phi(\xi)=\mathcal B\widetilde\Phi(\xi)
\equiv\sum_{n=0}^{\infty}\frac{a_n}{n!}\xi^n.
$$

When $a_n\sim n!$, $\widehat\Phi$ generally has a nonzero radius of convergence at $\xi=0$. Its Borel-Laplace sum in direction $\theta$ is

$$
\mathcal S_\theta\widetilde\Phi(g)
=\int_{0}^{e^{i\theta}\infty}e^{-\xi/g}\widehat\Phi(\xi)\,d\xi,
\qquad \left|\arg g-\theta\right|<\frac{\pi}{2},
$$

provided that the continued Borel transform has suitable exponential growth along the ray. Termwise integration gives

$$
\int_0^{e^{i\theta}\infty}e^{-\xi/g}\xi^n\,d\xi=n!g^{n+1},
$$

so $\mathcal S_\theta\widetilde\Phi$ has the original formal series as its asymptotic expansion.

## 2.1 The Euler series

Consider

$$
\widetilde\Phi_{\rm E}(g)=\sum_{n=0}^{\infty}(-1)^n n!g^{n+1},
\qquad
\widehat\Phi_{\rm E}(\xi)=\frac{1}{1+\xi}.
$$

For $g>0$ there is no singularity on the positive Borel axis, and therefore

$$
\mathcal S_0\widetilde\Phi_{\rm E}(g)
=\int_0^\infty\frac{e^{-\xi/g}}{1+\xi}\,d\xi
=e^{1/g}E_1(1/g),
$$

where $E_1$ is the exponential integral. At $g=0.1$,

$$
\mathcal S_0\widetilde\Phi_{\rm E}=0.091563333939788\ldots,
$$

whereas truncation at $n=9$ gives

$$
\sum_{n=0}^{9}(-1)^n n!g^{n+1}=0.091545632.
$$

The error is $1.7701939788\ldots\times10^{-5}$; adding sufficiently many more terms makes the approximation worse. This is the elementary meaning of optimal truncation rather than summation of the divergent series.

## 2.2 Borel ambiguity

For the nonalternating series

$$
\widetilde\Psi(g)=\sum_{n=0}^{\infty}n!g^{n+1},
\qquad \widehat\Psi(\xi)=\frac{1}{1-\xi},
$$

the Borel transform has a pole at $\xi=1$ on the positive real axis. Define upper and lower lateral sums,

$$
\mathcal S_{0^\pm}\widetilde\Psi(g)
=\int_{0}^{\infty e^{\pm i0}}\frac{e^{-\xi/g}}{1-\xi}\,d\xi.
$$

With the present orientation convention,

$$
\mathcal S_{0^+}\widetilde\Psi-\mathcal S_{0^-}\widetilde\Psi
=2\pi i\,e^{-1/g}.
$$

The purely perturbative Borel sum therefore has an $O(e^{-1/g})$ ambiguity. If the physical quantity is required to be real and unambiguous, another exponentially suppressed sector must cancel its lateral ambiguity:

$$
\operatorname{Im}\mathcal S_\pm\Phi_0+
\operatorname{Im}\mathcal S_\pm\bigl(\sigma e^{-A/g}\Phi_1\bigr)=0.
$$

---

# 3. The Stokes phenomenon

Let $\widehat\Phi(\xi)$ have a singularity at $\xi=A\ne0$. When the Borel integration direction passes through $\arg A$, the contour must go above or below that singularity, and

$$
\mathcal S_{\theta^+}\widetilde\Phi
\neq\mathcal S_{\theta^-}\widetilde\Phi,
\qquad \theta=\arg A.
$$

This is a Stokes direction. The discontinuity generally has the form

$$
\operatorname{Disc}_\theta\Phi(g)
\equiv\mathcal S_{\theta^+}\widetilde\Phi(g)-\mathcal S_{\theta^-}\widetilde\Phi(g)
\sim e^{-A/g}g^\beta\sum_{k=0}^{\infty}b_k g^k.
$$

The jump is itself another asymptotic sector. A single power series is consequently not normally closed under crossing a Stokes ray; the closed object must include $e^{-A/g}$, $e^{-2A/g}$, and, where relevant, sectors associated with other independent actions.

It is also useful to distinguish two walls:

- A Stokes wall aligns the phases of two saddle weights, conventionally $\operatorname{Im}[(S_\tau-S_\sigma)/g]=0$, and controls jumps in coefficients or thimble decompositions.
- An anti-Stokes wall equates their magnitudes, $\operatorname{Re}[(S_\tau-S_\sigma)/g]=0$, and controls exponential dominance.

Some authors interchange these names; the equations, rather than the labels, fix the convention.

---

# 4. Resurgent functions: mathematical definition

## 4.1 Endless continuability

Let $\widehat\Phi(\xi)$ be an analytic germ near $\xi=0$. It is *endlessly continuable* if it can be analytically continued along essentially all finite-length paths, with only finitely many discrete singularities to avoid at any fixed path length. A formal series is *resurgent* when its Borel transform has this property.

This is much broader than allowing only a finite set of poles. Permitted singularities include poles, logarithmic and algebraic branch points, singularities on further Riemann sheets, and composite singular structures generated by convolution. Resurgent series are stable under addition, multiplication, differentiation, suitable composition, and many nonlinear differential-equation operations; this stability is crucial for nonlinear problems.

## 4.2 Simple resurgent singularities

In the simple-resurgent class, a singularity near $\xi=\omega$ takes the form

$$
\widehat\Phi(\omega+\zeta)
=\frac{\alpha_\omega}{2\pi i\,\zeta}
+\frac{\log\zeta}{2\pi i}\widehat\Psi_\omega(\zeta)
+\text{regular}.
$$

Here $\alpha_\omega$ is the pole contribution and $\widehat\Psi_\omega$ is the *minor*. The alien derivative is

$$
\Delta_\omega\widetilde\Phi
=\alpha_\omega+\mathcal B^{-1}\widehat\Psi_\omega.
$$

An ordinary derivative probes coefficients inside a single asymptotic sector; $\Delta_\omega$ probes the sector encoded by the Borel singularity at $\omega$. Alien derivatives obey an appropriate Leibniz rule and, for $z=1/g$,

$$
[\Delta_\omega,\partial_z]= -\omega\Delta_\omega.
$$

The pointed (or dotted) alien derivative

$$
\dot\Delta_\omega=e^{-\omega z}\Delta_\omega
$$

instead satisfies $[\dot\Delta_\omega,\partial_z]=0$, making the alien calculus compatible with differential equations.

---

# 5. Stokes automorphisms

Along a Stokes direction $\theta$, the Stokes automorphism is

$$
\mathfrak S_\theta
=\exp\left(\sum_{\omega:\arg\omega=\theta}e^{-\omega z}\Delta_\omega\right)
=\exp\left(\sum_{\omega:\arg\omega=\theta}\dot\Delta_\omega\right).
$$

With the convention used here,

$$
\mathcal S_{\theta^+}=\mathcal S_{\theta^-}\circ\mathfrak S_\theta.
$$

This is a nonlinear generalization of a monodromy or Stokes matrix. When the physical solution of a real-analytic problem lies on a Stokes ray, one often uses median resummation,

$$
\mathcal S_\theta^{\mathrm{med}}
=\mathcal S_{\theta^-}\circ\mathfrak S_\theta^{1/2}
=\mathcal S_{\theta^+}\circ\mathfrak S_\theta^{-1/2}.
$$

Under suitable reality conditions, this cancels the imaginary part of the lateral sums and yields a real answer. It is not in general the arithmetic average of the two lateral sums: in a nonlinear multi-sector problem it is the half-power of the Stokes automorphism that must be applied.

---

# 6. Transseries

An ordinary power series cannot contain exponentially small corrections. The simplest one-parameter transseries is

$$
\Phi(g,\sigma)=\sum_{n=0}^{\infty}\sigma^n e^{-nA/g}g^{n\beta}\Phi_n(g),
\qquad
\Phi_n(g)=\sum_{k=0}^{\infty}a_k^{(n)}g^k.
$$

For $r$ independent actions,

$$
\Phi(g,\boldsymbol\sigma)=
\sum_{\mathbf n\in\mathbb N^r}\boldsymbol\sigma^{\mathbf n}
e^{-\mathbf n\cdot\mathbf A/g}g^{\boldsymbol\beta\cdot\mathbf n}\Phi_{\mathbf n}(g).
$$

Four different kinds of data appear:

$$
\mathbf A:\ \text{nonperturbative actions};\qquad
a_k^{(\mathbf n)}:\ \text{fluctuation coefficients};\qquad
S_\omega:\ \text{Stokes constants};\qquad
\boldsymbol\sigma:\ \text{transseries parameters}.
$$

The first three characterize the resurgent structure of the formal problem. The parameters $\boldsymbol\sigma$ are normally fixed by a boundary condition, integration contour, vacuum choice, or initial condition. Thus even complete knowledge of the Stokes constants does not, by itself, select a physical solution.

## 6.1 Resonance and logarithmic sectors

If distinct multi-indices obey

$$
\mathbf n\cdot\mathbf A=\mathbf m\cdot\mathbf A,
\qquad \mathbf n\ne\mathbf m,
$$

then the corresponding sectors have the same exponential weight. This *resonance* generally forces logarithmic sectors:

$$
\Phi(g,\boldsymbol\sigma)=\sum_{\mathbf n}e^{-\mathbf n\cdot\mathbf A/g}g^{\beta_{\mathbf n}}
\sum_{p=0}^{p_{\max}(\mathbf n)}(\log g)^p\Phi_{\mathbf n,p}(g).
$$

Logarithms can arise from quasi-zero-mode integrals, integer relations between actions, or Jordan-type resonances of nonlinear equations. They occur in Painlevé equations, multi-instanton expansions, renormalon ODEs, and topological strings.

---

# 7. The bridge equation

Resurgence is not merely the coexistence of sectors: alien derivatives relate them. For

$$
\Phi(z,\sigma)=\sum_{n=0}^{\infty}\sigma^n e^{-nAz}\Phi_n(z),
\qquad z=\frac1g,
$$

the bridge equation has the general form

$$
\dot\Delta_\omega\Phi(z,\sigma)
=S_\omega(\sigma)\frac{\partial\Phi(z,\sigma)}{\partial\sigma},
$$

where $S_\omega(\sigma)\partial_\sigma$ denotes the relevant vector field on transseries-parameter space. The left side is an operation on Borel singularities, while the right side is an ordinary geometric operation on the solution space.

In the simplest nonresonant case,

$$
\dot\Delta_A\Phi=S_1\partial_\sigma\Phi
\quad\Longrightarrow\quad
\Delta_A\Phi_n=S_1(n+1)\Phi_{n+1}.
$$

The singularity data of sector $n$ at $A$ are therefore the data of sector $n+1$. Equivalently,

$$
\mathfrak S_0\Phi(z,\sigma)=\Phi(z,\sigma+S_1),
$$

so crossing a Stokes ray becomes a jump of the transseries parameter.

---

# 8. Large-order/low-order relations

Let

$$
\Phi_0(g)=\sum_{n=0}^{\infty}a_n^{(0)}g^{n+1}
$$

and suppose that the discontinuity of its Borel transform near $\xi=A$ is

$$
\operatorname{Disc}_A\widehat\Phi_0(A+s)
=S_{0\to1}s^{\beta-1}
\sum_{k=0}^{\infty}\frac{a_k^{(1)}}{\Gamma(k+\beta)}s^k.
$$

The associated nonperturbative sector is

$$
e^{-A/g}g^\beta\sum_{k=0}^{\infty}a_k^{(1)}g^k.
$$

The Cauchy dispersion relation on the Borel plane gives

$$
a_n^{(0)}\sim\frac{S_{0\to1}}{2\pi i}
\sum_{k=0}^{\infty}a_k^{(1)}
\frac{\Gamma(n+1-\beta-k)}{A^{n+1-\beta-k}}.
$$

In particular,

$$
a_n^{(0)}\sim\frac{S_{0\to1}}{2\pi i}a_0^{(1)}
\frac{\Gamma(n+1-\beta)}{A^{n+1-\beta}}.
$$

Thus $A$ sets the factorial-growth scale; $\beta$ shifts the Gamma function; $S_{0\to1}a_0^{(1)}$ fixes the overall normalization; and $a_1^{(1)},a_2^{(1)},\ldots$ give the $1/n$ corrections. A useful ratio estimator is

$$
A_n=(n-\beta)\frac{a_{n-1}^{(0)}}{a_n^{(0)}}\longrightarrow A.
$$

After subtracting the leading large-order contribution, successive powers of $n$ extract $a_1^{(1)},a_2^{(1)},\ldots$ and the Stokes constant. With several Borel singularities,

$$
a_n^{(0)}\sim\sum_\alpha\frac{S_\alpha}{2\pi i}
\sum_{k\geq0}a_k^{(\alpha)}
\frac{\Gamma(n+1-\beta_\alpha-k)}{A_\alpha^{n+1-\beta_\alpha-k}}.
$$

The nearest singularity controls the leading growth. Equidistant complex-conjugate singularities produce oscillations such as

$$
a_n\sim\Gamma(n+\gamma)|A|^{-n}\cos(n\arg A+\varphi).
$$

---

# 9. The geometry of Lefschetz thimbles

Consider a finite-dimensional integral

$$
Z(g)=\int_\Gamma e^{-S(x)/g}\Omega.
$$

After complexifying the variables and action, let $dS(x_\sigma)=0$. The downward and upward cycles associated with a critical point are denoted $\mathcal J_\sigma$ and $\mathcal K_\sigma$. In relative homology,

$$
\Gamma=\sum_\sigma n_\sigma\mathcal J_\sigma,
\qquad n_\sigma=\langle\Gamma,\mathcal K_\sigma\rangle\in\mathbb Z,
$$

and hence

$$
Z(g)=\sum_\sigma n_\sigma Z_\sigma(g),
\qquad Z_\sigma(g)=\int_{\mathcal J_\sigma}e^{-S/g}\Omega.
$$

Each thimble integral has a local asymptotic expansion,

$$
Z_\sigma(g)\sim e^{-S_\sigma/g}g^{\beta_\sigma}\Phi_\sigma(g).
$$

From sector $\sigma$, Borel singularities generally occur at action differences

$$
A_{\sigma\tau}=S_\tau-S_\sigma.
$$

They signal that high-order fluctuations near $\sigma$ are probing the steepest-descent geometry associated with another saddle $\tau$. At a Stokes wall, lateral Borel sums jump, the thimble basis undergoes a Picard-Lefschetz transformation, and the intersection numbers jump correspondingly; the full integral continues as required by its analytic definition.

For finite-dimensional Morse integrals, Borel and thimble ambiguities are two descriptions of the same global geometry. In infinite-dimensional path integrals this remains a guiding framework rather than a general construction: existence and completeness of thimbles, gauge zero modes, regularization, and the measure require further input. Picard-Lefschetz theory determines contributing saddles and contours; resurgence determines how local expansions around those saddles are linked by Borel singularities.

---

# 10. Resurgence in quantum mechanics

## 10.1 Single wells and degenerate multi-wells

For a stable single-well potential, the perturbative series is often alternating and Borel summable on the positive-coupling ray. Degenerate multi-well potentials are different: the perturbative expansion around one vacuum is commonly non-Borel-summable in the physical direction, and positive-axis singularities are associated with topologically neutral events such as instanton-anti-instanton pairs.

The energy levels of a double-well or periodic potential have the schematic structure

$$
E_\pm(g)=\sum_{n=0}^{\infty}E_n^{(0)}g^n
+\sum_{k=1}^{\infty}(\pm1)^k e^{-kS_I/g}g^{\beta_k}
\sum_{\ell=0}^{k-1}(\log g)^\ell
\sum_{n=0}^{\infty}E_{k,\ell,n}g^n.
$$

Here $k$ is the instanton number, $\pm$ labels a parity or Bloch sector, and logarithms arise from quasi-zero-mode integrals over instanton separations. A one-instanton event changes vacuum or topological sector; the leading ambiguity of the zero-instanton expansion is instead normally cancelled by the topologically neutral $I\bar I$ sector:

$$
\operatorname{Im}\mathcal S_\pm E^{(0)}+\operatorname{Im}[I\bar I]_\pm=0.
$$

Higher sectors obey analogous relations, for example

$$
\operatorname{Im}\left([I]\mathcal S_\pm E^{(1)}+[I\bar I I]_\pm\right)=0.
$$

The resulting pattern is often called the resurgence triangle.

## 10.2 The precise sense in which perturbation theory generates nonperturbative data

For several genus-one quantum-mechanical potentials, a perturbative energy function combined with a global quantization condition determines the complete instanton fluctuation series; the Dunne-Uns\'al relation is a concrete expression of this fact. Two qualifications are essential:

1. The input is perturbation theory to all orders, not a finite-order calculation.
2. A global quantization condition or boundary condition is still needed to select the physical spectrum.

Thus, in certain special quantum-mechanical systems, formal fluctuation data around other saddles can be reconstructed from the all-orders perturbative saddle data together with a global condition. This does not imply that the perturbative vacuum of a general QFT uniquely determines all nonperturbative physics.

---

# 11. Exact WKB

For a Schrödinger-type equation

$$
\left[-\hbar^2\frac{d^2}{dx^2}+Q(x)\right]\psi(x)=0,
$$

take

$$
\psi(x)=\exp\left[\frac1\hbar\int^xS(x',\hbar)\,dx'\right].
$$

The equation reduces to the Riccati equation

$$
S^2+\hbar\partial_xS=Q.
$$

With $S=\sum_{n\geq0}\hbar^nS_n$ and $S_0=\pm\sqrt Q$, define

$$
S_{\mathrm{odd}}=\frac12\left(S^{(+)}-S^{(-)}\right).
$$

The formal WKB solutions are

$$
\psi_\pm(x)=\frac{1}{\sqrt{S_{\mathrm{odd}}(x,\hbar)}}
\exp\left[\pm\frac1\hbar\int^xS_{\mathrm{odd}}(x',\hbar)\,dx'\right].
$$

For a cycle $\gamma$, define the quantum period and Voros symbol by

$$
\Pi_\gamma(\hbar)=\oint_\gamma S_{\mathrm{odd}}(x,\hbar)\,dx,
\qquad
V_\gamma=\exp\left[\frac{\Pi_\gamma(\hbar)}{\hbar}\right].
$$

The quantum period is generally a divergent but resurgent WKB series. Turning points and saddle connections determine its Borel singularities. When the topology of the Stokes graph changes, Voros symbols have a Delabaere-Dillinger-Pham-type jump,

$$
\mathcal S_{\theta^-}V_\gamma
=\mathcal S_{\theta^+}V_\gamma
\left(1+\mathcal S_{\theta^+}V_{\gamma_0}\right)^{\pm\langle\gamma_0,\gamma\rangle}.
$$

The sign depends on cycle orientations and the lateral-sum convention; the stable content is that the jump is controlled by the intersection number with the vanishing cycle $\gamma_0$. An exact quantization condition is the global monodromy condition on the Borel-resummed quantum periods, unifying local WKB expansions, instanton actions, Stokes graphs, level splitting, and multi-instanton transseries.

---

# 12. Complex saddles and hidden topological angles

A real action and real parameters do not imply that only real saddles are relevant. The complexified path-integral equations may admit smooth complex saddles, multivalued saddles, singular but finite-action saddles, critical points at infinity, and composite saddles represented by quasi-zero-mode thimbles.

For some complex saddles the imaginary part of the action is quantized,

$$
\operatorname{Im}S_\sigma=\pi k,
$$

so that

$$
e^{-S_\sigma/g}=(-1)^k e^{-\operatorname{Re}S_\sigma/g}.
$$

This phase is a hidden topological angle. It can produce cancellations between real and complex saddles and, in supersymmetric quantum mechanics, is needed for consistency with positivity and the supersymmetry algebra. The appropriate semiclassical object is therefore the set of critical points and integration cycles in complexified configuration space, not merely the set of real classical solutions.

---

# 13. Divergence in QFT: instantons and renormalons

Factorial divergence in quantum field theory has at least two structurally distinct sources.

## 13.1 Saddle-induced large-order behavior

A nontrivial classical solution or complex saddle can give

$$
a_n\sim\frac{\Gamma(n+\beta)}{S_{\mathrm{saddle}}^{n+\beta}}.
$$

This is the QFT extension of finite-dimensional steepest descent and instanton large-order relations. Its implementation must account for negative modes, zero modes, collective coordinates, and renormalization.

## 13.2 Renormalons

Renormalons arise from the combination of momentum integrals and running-coupling logarithms. A schematic example is

$$
I_n\sim\int_0^\mu\frac{dk}{k}\left(\frac{k}{\mu}\right)^p
\left[\beta_0g^2\log\frac{\mu}{k}\right]^n.
$$

Setting $t=\log(\mu/k)$ yields

$$
I_n\sim(\beta_0g^2)^n\int_0^\infty e^{-pt}t^n\,dt
=(\beta_0g^2)^n\frac{n!}{p^{n+1}}.
$$

Thus factorial divergence and Borel singularities can occur without an evident finite-action instanton. Infrared renormalons commonly lie on the physical Borel ray and obstruct Borel summability; ultraviolet renormalons commonly occur on the opposite ray and produce alternating behavior. Their locations depend on the Borel variable, coupling normalization, and renormalization scheme.

In an operator-product expansion, the ambiguity of a coefficient should cancel that of the relevant nonperturbative matrix element or condensate:

$$
\operatorname{Amb}C_{\mathcal O}+\operatorname{Amb}\langle\mathcal O\rangle=0.
$$

This cancellation does not generally determine the full real part of the condensate.

---

# 14. Compactification, bions, and adiabatic continuity

On $\mathbb R^4$, there is no universally accepted ordinary classical-saddle realization of an infrared renormalon. An important controlled strategy places the theory on $\mathbb R^3\times S^1$ or $\mathbb R\times S^1$, with center-stabilizing boundary conditions or deformations that make the small-circle region weakly coupled and semiclassical.

The relevant semiclassical configurations include monopole instantons, fractional instantons, magnetic bions, neutral bions, and bion-anti-bion composites. The quasi-zero-mode integral of a neutral bion has a two-fold analytic-continuation ambiguity that can cancel a perturbative Borel ambiguity. In selected compactified models, bion-related Borel singularities occur closer to the origin than the BPST instanton-anti-instanton singularity and have the expected infrared-renormalon scaling.

This is a controlled semiclassical realization of renormalon-like structure. Continuing from the small-$S^1$ weak-coupling regime to the undeformed strongly coupled $\mathbb R^4$ theory requires adiabatic continuity. It has substantial evidence in particular models, but is not a theorem for general four-dimensional Yang-Mills theory.

---

# 15. Two-dimensional integrable QFT

Two-dimensional $O(N)$ sigma models, principal chiral models, and related integrable theories are more controlled laboratories than four-dimensional QCD. They are asymptotically free, have mass gaps and renormalons, and some observables are accessible through Bethe ansatz or integral equations. These methods can produce hundreds or thousands of perturbative coefficients.

Borel-Padé continuation and large-order analysis of such coefficients can extract

$$
A_{\mathrm{ren}},\qquad\beta,\qquad S_{\mathrm{ren}},\qquad a_k^{\mathrm{NP}}.
$$

In several models, leading and subleading large-order relations, Stokes constants, and multiple renormalon sectors have been tested to high precision. By contrast, presently available high-order data and saddle classifications are insufficient to make resurgence a complete nonperturbative definition of four-dimensional QCD.

---

# 16. Matrix models

For a Hermitian matrix model,

$$
Z_N(g)=\int dM\,e^{-\frac{1}{g}\operatorname{Tr}V(M)},
$$

the 't Hooft expansion of the free energy is

$$
F(g_s,t)=\sum_{h=0}^{\infty}g_s^{2h-2}F_h(t),
\qquad
F_h(t)\sim\frac{\Gamma(2h-b)}{A(t)^{2h-b}}.
$$

Here $A(t)$ is an eigenvalue-tunnelling action: one or more eigenvalues tunnel from the main cut to another critical point of the effective potential. The full transseries has the schematic form

$$
F(g_s,t;\sigma)=\sum_{n=0}^{\infty}\sigma^n e^{-nA(t)/g_s}
\sum_{h=0}^{\infty}g_s^{h+\beta_n}F_h^{(n)}(t).
$$

Matrix models are particularly useful because the path integral is finite-dimensional before the large-$N$ limit, the spectral curve determines instanton actions, and orthogonal polynomials, loop equations, and string equations generate high-order data. They link finite-dimensional resurgence, large-$N$ QFT expansions, and string genus expansions.

---

# 17. Topological strings

The closed-topological-string free energy has the genus expansion

$$
F(g_s,\mathbf t)=\sum_{h=0}^{\infty}g_s^{2h-2}F_h(\mathbf t).
$$

Its large-genus behavior generally takes the form

$$
F_h(\mathbf t)\sim\sum_\alpha\frac{S_\alpha}{2\pi i}
\frac{\Gamma(2h-b_\alpha)}{A_\alpha(\mathbf t)^{2h-b_\alpha}}
\left[F_0^{(\alpha)}+\frac{A_\alpha F_1^{(\alpha)}}{2h}+\cdots\right].
$$

The actions $A_\alpha$ are often periods on Calabi-Yau moduli space, or eigenvalue instantons in a matrix-model description. The BCOV holomorphic-anomaly equations can be extended to transseries sectors,

$$
F=\sum_{\mathbf n}\boldsymbol\sigma^{\mathbf n}
e^{-\mathbf n\cdot\mathbf A/g_s}F^{(\mathbf n)}.
$$

They recursively constrain propagator and moduli dependence but leave holomorphic ambiguities, fixed only by conifold boundary data, large-radius behavior, or other global input. Important complications include multiple actions, resonances, multiple Borel sheets, D-brane and negative-tension sectors, and possible relations between Stokes data and BPS invariants. The formal transseries therefore contains powerful nonperturbative information without automatically defining a unique nonperturbative topological string.

---

# 18. JT gravity and two-dimensional quantum gravity

The topological expansion of JT gravity is described by a double-scaled random matrix model. Its genus expansion is divergent and asymptotic; nonperturbative sectors are associated with matrix-eigenvalue tunnelling and brane effects. Its generic large-genus structure can be written as

$$
F_g^{\mathrm{JT}}\sim\sum_\alpha S_\alpha
\frac{\Gamma(2g-\beta_\alpha)}{A_\alpha^{2g-\beta_\alpha}}
\left(F_0^{(\alpha)}+O(g^{-1})\right).
$$

Resurgence can test the large-genus behavior of Weil-Petersson volumes, construct multi-instanton sectors, and identify Borel singularities of free energies and resolvents. The same perturbative genus expansion can nevertheless permit different nonperturbative matrix-model completions, so knowing all genus coefficients is not equivalent to specifying a unique nonperturbative quantum gravity theory.

---

# 19. Hydrodynamics and non-hydrodynamic modes

Resurgence is not confined to weak-coupling expansions. For Bjorken flow, a late-time gradient expansion has the form

$$
\Phi(w)\sim\sum_{n=0}^{\infty}\frac{a_n}{w^n},
\qquad w\to\infty,
$$

and is generally factorially divergent. The full solution requires a transseries,

$$
\Phi(w)=\Phi_0(w)+\sum_\alpha\sigma_\alpha e^{-A_\alpha w}
w^{\beta_\alpha}\Phi_\alpha(w)+\cdots.
$$

Here $A_\alpha$ is not a Euclidean-instanton action but is related to complex frequencies of non-hydrodynamic decaying modes; in holographic plasmas, these are related to black-brane quasinormal modes. The transseries parameters encode initial data, while Stokes data organize universal relations between late-time sectors.

---

# 20. A practical computational workflow

## 20.1 Generate high-order coefficients

Generate as many $a_n$ as possible, using ODE recursions, Bender-Wu recursion, Feynman diagrams, loop equations, holomorphic-anomaly equations, Bethe-ansatz integral equations, or topological recursion. Roughly ten coefficients rarely distinguish several Borel singularities reliably; tens to hundreds are much more suitable for precision extraction.

## 20.2 Determine the Gevrey order

Compute

$$
r_n=\frac{a_n}{a_{n-1}}.
$$

The behavior $r_n\sim n/A$ signals Gevrey-1 growth, while $r_n\sim Cn^s$ suggests Gevrey-$s$ growth.

## 20.3 Apply a Borel-Leroy transform

If $a_n\sim\Gamma(n+\beta)$, use

$$
\mathcal B_\beta\Phi(\xi)=\sum_{n=0}^{\infty}
\frac{a_n}{\Gamma(n+\beta)}\xi^n.
$$

An appropriate choice of $\beta$ can simplify the leading local behavior of a Borel singularity; it does not in general turn every branch point into a pole.

## 20.4 Continue with Padé approximants

From the finite Borel series construct

$$
\widehat\Phi_{[L/M]}(\xi)=\frac{P_L(\xi)}{Q_M(\xi)}.
$$

An isolated pole tends to appear as a stable Padé pole, while a branch cut is commonly represented by a condensation of poles. One must still control Froissart pole-zero doublets, finite-precision noise, unresolved conjugate singularities, and the fact that a pole condensation is not proof that the exact function has isolated poles.

## 20.5 Use conformal mapping

If the nearest singularity is at $A$ and the only cut is $[A,\infty)$, a useful map is

$$
w(\xi)=\frac{1-\sqrt{1-\xi/A}}{1+\sqrt{1-\xi/A}}.
$$

Re-expansion in $w$ often improves analytic continuation and the accuracy of the Laplace integral.

## 20.6 Extract actions and Stokes data

Estimate $A$ with

$$
A_n=(n-\beta)\frac{a_{n-1}}{a_n},
$$

then use Richardson transforms to remove $1/n$ corrections. With

$$
Q_n=\frac{2\pi i\,A^{n+1-\beta}}{\Gamma(n+1-\beta)}a_n,
$$

one expects $Q_n\to S_{0\to1}a_0^{(1)}$. Successively subtracting known corrections yields $a_k^{(1)}$.

## 20.7 Construct lateral and median sums

Numerically evaluate

$$
\mathcal S_{\theta^\pm}\Phi(g)=
\int_0^{e^{i(\theta\pm0)}\infty}e^{-\xi/g}
\widehat\Phi_{\mathrm{continued}}(\xi)\,d\xi,
$$

then add the required nonperturbative sectors and test the expected reality condition, for example $\operatorname{Im}\Phi_{\rm full}=0$, or the required monodromy.

## 20.8 Independently validate the result

The strongest validation is not internal Borel-Padé consistency but agreement with independent information: a numerical ODE/PDE solution, exact spectrum, thimble or matrix integral, instanton determinant, Bethe ansatz, exact quantization condition, lattice computation, or Hamiltonian truncation.

---

# 21. Common misconceptions

## 21.1 "Every divergent series is resurgent"

False. Resurgence requires discrete, controlled analytic-continuation singularities of the Borel transform. Series with a natural boundary, dense singularities, or worse growth need not be resurgent in the standard sense.

## 21.2 "Borel summability is the same as resurgence"

False. Borel summability is directional; resurgence describes analytic continuation and singularity relations on the Borel plane. A resurgent series can fail to be Borel summable in the physical direction.

## 21.3 "Perturbation theory contains all nonperturbative physics"

False in general. All-orders perturbative coefficients can encode local data of other sectors through their large-order behavior. A full physical solution also requires the normalization convention for Stokes data, transseries parameters, boundary or initial conditions, an integration contour, a vacuum sector, or a global quantization condition.

## 21.4 "Every Borel singularity is a real classical solution"

False. It may represent a complex, multivalued, or composite saddle, a renormalon, a critical point at infinity, a non-hydrodynamic mode, a spectral-curve cycle, or a saddle on a further Riemann sheet.

## 21.5 "Cancelling an imaginary ambiguity uniquely fixes the nonperturbative correction"

False. Ambiguity cancellation normally fixes only an imaginary component of a nonperturbative sector or parameter. Its real component remains fixed by the physical definition or boundary data.

## 21.6 "Lefschetz thimbles automatically solve the QFT path integral"

False. Infinite-dimensional path integrals also involve gauge redundancy, ghosts or a BV complex, continuous critical manifolds, UV regularization, renormalization, determinant lines, thimble completeness, and possible complex-metric or conformal-factor instabilities.

---

# 22. The status of resurgence in four-dimensional QFT

The following assessment is warranted:

1. Resurgence is mature, and partially rigorous, for finite-dimensional integrals, many analytic ODEs, and one-dimensional exact WKB.
2. Multi-well quantum mechanics has extensive exact checks of perturbative/nonperturbative cancellation and multi-instanton transseries.
3. Two-dimensional integrable QFT, compactified sigma models, and selected weak-coupling gauge theories provide strong concrete evidence.
4. In matrix models, Painlevé equations, topological strings, and JT gravity, resurgence is a central tool for studying nonperturbative completions.
5. For general Yang-Mills theory or QCD on $\mathbb R^4$, it is not a completed nonperturbative definition.
6. The proposition that Borel-Écalle resummation defines an arbitrary QFT remains a research program, not a theorem.

The obstacles are not merely formal: a complete saddle classification, enough high-order data, a nonperturbative definition of the integration cycle, and control of renormalization and infinite-dimensional analysis are all missing in general.

---

# 23. A possible interface with gravity and covariant phase space

This section is a research perspective rather than a standard established formalism.

## 23.1 Local solution-space expansions and global path integrals

Covariant phase space $\mathcal S$ describes solutions of the classical equations and their symplectic structure. Resurgence instead emphasizes global analytic relations between different saddle components of the complexified solution space $\mathcal S_\mathbb C$.

A possible division of labor is as follows:

- Covariant phase space supplies physical linearized degrees of freedom, zero modes, and symplectic measures near an individual saddle.
- One-loop determinants and higher-loop diagrams supply that saddle's formal asymptotic sector.
- Borel singularities probe other complex solutions.
- Picard-Lefschetz data determine which components of solution space enter a path integral.

Local covariant-phase-space data alone do not normally determine an integration cycle.

## 23.2 Structures required in a gauge theory

Any putative resurgent covariant phase space would require at least complexified field configurations and solutions, quotienting by proper gauge transformations while retaining large-gauge and boundary sectors, a gauge-fixed or BV/BFV fluctuation complex, determinant and zero-mode measures for every saddle, action differences, a Morse or gradient-flow structure on the complexified solution space, boundary constraints on integration cycles, and Stokes maps between saddle sectors.

Covariant phase space naturally treats physical zero modes, boundary degrees of freedom, and charges. BV/BFV methods are more appropriate for the off-shell gauge complex and path-integral measure; neither replaces the other.

## 23.3 Implications for perturbative solution diagrams

If a tree-level recursion produces high-order classical or quantum corrections

$$
\phi(g)=\sum_{n=0}^{\infty}g^n\phi_n,
$$

then the large-order behavior of $\phi_n$ may reveal other nonlinear classical or complexified solutions, boundary saddles, topology-changing sectors, or logarithmic terms connected with zero modes and resonance. Such a tree expansion can therefore be an input for probing global structure, not only a computational device.

Actual factorial large-order growth generally also requires growing diagram combinatorics, complex singularities of Green functions, parameter-space singularities, loops, or rapidly proliferating nonlinear trees. A simple analytic Taylor solution of a fixed classical equation need not diverge or be resurgent.

---

# 24. Active research directions

Current work includes the systematic relation between exact WKB and Painlevé/isomonodromic systems; possible BPS/resurgence correspondences in topological strings; nonperturbative completions of JT gravity, minimal strings, and three-dimensional gravity; resurgence of heat-kernel expansions and path-space Morse theory; kinematic resurgence in string amplitudes; and all-orders renormalon transseries in solvable models or QFT subsectors governed by nonlinear ODEs. These directions broaden the framework but do not remove the foundational difficulties of general higher-dimensional QFT or gravitational path integrals.

---

# 25. Suggested reading order

Begin with the mathematical foundations of Borel-Laplace summation and resurgent germs:

1. David Sauzin, [*Introduction to 1-summability and resurgence*](https://arxiv.org/abs/1405.0356).
2. Éric Delabaere and Frédéric Pham, *Resurgent methods in semi-classical asymptotics*.

Then study quantum mechanics and exact WKB:

3. Gerald V. Dunne and Mithat Ünsal, [*Generating Non-perturbative Physics from Perturbation Theory*](https://arxiv.org/abs/1306.4405).
4. Gerald V. Dunne and Mithat Ünsal, [*Uniform WKB, Multi-instantons, and Resurgent Trans-Series*](https://arxiv.org/abs/1401.5202).
5. Tatsuhiro Misumi, Muneto Nitta, and Norisuke Sakai, [*Resurgence in sine-Gordon quantum mechanics*](https://arxiv.org/abs/1507.00408), together with the exact-WKB literature.

For complex saddles and thimbles:

6. Alireza Behtash *et al.*, [*Complexified path integrals, exact saddles and supersymmetry*](https://arxiv.org/abs/1510.00978).
7. Alireza Behtash *et al.*, [*Toward Picard-Lefschetz Theory of Path Integrals, Complex Saddles and Resurgence*](https://arxiv.org/abs/1510.03435).

For QFT, matrix models, and strings:

8. Philip C. Argyres and Mithat Ünsal, [*A semiclassical realization of infrared renormalons*](https://arxiv.org/abs/1204.1661).
9. Marcos Mariño, Ricardo Schiappa, and Marlene Weiss, [*Nonperturbative Effects and the Large-Order Behavior of Matrix Models and Topological Strings*](https://arxiv.org/abs/0711.1954).
10. Inês Aniceto, Gabriele Başar, and Ricardo Schiappa, [*A Primer on Resurgent Transseries and Their Asymptotics*](https://arxiv.org/abs/1802.10441).

---

# 26. Summary

The central resurgent structure is

$$
\boxed{\text{Borel singularities}
\Longleftrightarrow\text{large-order growth}
\Longleftrightarrow\text{other asymptotic sectors}}.
$$

The full object is not a single perturbative series but a transseries,

$$
\boxed{\Phi(g,\boldsymbol\sigma)=\sum_{\mathbf n}
\boldsymbol\sigma^{\mathbf n}e^{-\mathbf n\cdot\mathbf A/g}
g^{\beta_{\mathbf n}}(\log g)^{p_{\mathbf n}}\Phi_{\mathbf n}(g)}.
$$

The Borel transform turns factorial divergence into complex-plane singularities. Alien derivatives extract the sectors encoded by those singularities; bridge equations turn alien calculus into vector fields on transseries-parameter space; Stokes automorphisms describe the jump across a Stokes ray; median resummation can construct a real ambiguity-free answer under suitable conditions; Lefschetz thimbles provide the geometry of saddles and integration cycles; and large-order/low-order relations recover nonperturbative actions and fluctuations from high-order perturbative data.

Resurgence is powerful not because a few perturbative coefficients magically determine everything, but because it gives a precise language in which divergent series, instantons, renormalons, complex saddles, WKB monodromy, matrix-eigenvalue tunnelling, and quasinormal modes become facets of one complex-analytic problem. It is highly developed in quantum mechanics, exact WKB, and matrix models; it is an effective framework in topological strings, JT gravity, and some two-dimensional QFTs; and in general four-dimensional gauge theory and quantum gravity it remains an unfinished research program.
