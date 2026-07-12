# Quantization formalism distilled from the BTZ benchmark

Date: 2026-07-12

## 0. Direct verdict

A Killing horizon does not replace the AdS quantization formalism. It adds a geometric automorphism, state-selection conditions, and possible subsystem fluxes to the existing CPS and Peierls data.

For a fixed-background matter theory, the tested object chain is

$$\begin{align}
\boxed{ (M,g,\mathcal B_\infty) \longrightarrow
(\mathrm{Sol}_{\mathcal B},\Omega,E,\mathfrak A) \xrightarrow[\text{Hadamard}]{\text{state }W}
(G_F,G_E,[\phi^2]_{\rm ren}) \xrightarrow{\text{interaction}}
T_n^{\rm ren},\,R_V
}.
\end{align}$$

The Killing horizon supplies

$$\begin{align}
(\chi,\mathcal H,\kappa) \longrightarrow
(\alpha_s,H_\chi,\beta_H,\text{horizon regularity},\text{flux balance}),
\end{align}$$

but it does not change the free commutator kernel after the theory-defining boundary condition has been fixed.

## 1. Theory data

The input for a scalar benchmark is

$$\begin{align}
\mathfrak D = (M,g,P,\mathcal B_\infty,\chi,\mathcal H).
\end{align}$$

These entries have different jobs:

1. $P$ and $\mathcal B_\infty$ define the allowed solutions and Green operators.
2. $\Omega$ defines the classical brackets.
3. $E=G_{\rm ret}-G_{\rm adv}$ fixes the quantum commutator.
4. $\chi$ defines an automorphism and its Hamiltonian generator.
5. A state $W$ fixes the symmetric part of the two-point function.
6. Horizon regularity and KMS select the HHI state when it exists.

Changing the AdS boundary condition changes the theory. Choosing HHI rather than an exterior ground state changes the representation or state of the same free algebra.

## 2. Global and exterior formulations

### Global formulation

Use a Cauchy surface of the maximally extended spacetime and impose the AdS condition at each timelike infinity. The bifurcate horizon is an interior hypersurface. There is no Lorentzian horizon boundary condition.

The global HHI state is pure and regular across the horizon.

### Exterior formulation

The right exterior admits a self-adjoint spatial problem on

$$\begin{align}
r_*\in(-\infty,0).
\end{align}$$

The horizon endpoint is a limit point, and the real-frequency spectrum is continuous. No reflecting wall is inserted at $r_*=-\infty$.

Complete static exterior slices carry a self-adjoint conserved Killing Hamiltonian. If instead one uses a regional foliation whose slices meet different horizon cuts, changes of its charges or symplectic form are accompanied by horizon flux. Tracing out the left exterior gives a KMS state on the right-wedge algebra.

These formulations are compatible but answer different questions.

## 3. Correct spectral statement

For a static AdS spacetime without a horizon, the positive-frequency resolution may be a discrete sum. With a non-extremal horizon, the exterior resolution is generally

$$\begin{align}
\sum_{\lambda} \quad\longrightarrow\quad \sum_{\text{discrete labels}}
\int_{\text{continuous spectrum}}d\omega.
\end{align}$$

For BTZ,

$$\begin{align}
\sum_N \quad\longrightarrow\quad \sum_{m\in\mathbb Z}\int_0^\infty d\omega.
\end{align}$$

The criterion is not whether the modes are “normal modes” in terminology. The criterion is whether they form the self-adjoint spectral resolution that reproduces:

$$\begin{align}
(u_{\omega m},u_{\omega'm'})_{\rm KG} =\delta_{mm'}\delta(\omega-\omega')
\end{align}$$

and

$$\begin{align}
iE =\sum_m\int d\omega\, (u\bar u-\bar u u).
\end{align}$$

Quasinormal modes fail this canonical criterion and instead encode poles and late-time response.

In the BTZ benchmark, the real-frequency kernel reconstructs two compactly supported smooth functions in the $m=0,1$ sectors. The largest sampled error decreases from about $0.21$ to $0.053$ when the cutoff is raised from $\Lambda=4$ to $\Lambda=12$. Completeness is therefore tested in the distributional sense relevant to the causal kernel.

## 4. Algebra, state, and charge are separate

The minimal consistency triangle is

$$
\begin{array}{ccc}
\Omega & \longleftrightarrow & E\\[2mm]
\downarrow & & \downarrow\\[2mm]
\text{mode normalization} & \longleftrightarrow & \text{CCR}
\end{array}
$$

followed by an independent state choice:

$$\begin{align}
W-W^{\rm T}=iE.
\end{align}$$

For HHI,

$$\begin{align}
W_{\rm HHI}|_R \quad\text{is KMS at}\quad \beta_H=\frac{2\pi}{\kappa}.
\end{align}$$

The CPS-normalized thermal mode kernel and the quotient image kernel solve the same Euclidean boundary-value problem. Positivity and standard boundary falloff make that problem unique. Three Euclidean comparisons agree at relative error below $1.4\times10^{-5}$, and a regulated Lorentzian comparison agrees below $2.0\times10^{-4}$.

The Killing Hamiltonian must satisfy

$$\begin{align}
\delta H_\chi=\Omega(\delta,X_\chi), \qquad i[H_\chi,\Phi]=\mathcal L_\chi\Phi.
\end{align}$$

None of these equations identifies $H_\chi$ with entropy.

## 5. Renormalization near a horizon

For a Hadamard state, ultraviolet subtraction is local. A smooth Killing horizon does not introduce a new local UV singularity. State and topology enter through the smooth remainder.

For the BTZ tadpole,

$$\begin{align}
\langle\phi^2(r)\rangle_{\rm ren} = \langle\phi^2\rangle_{\rm ren}^{\rm AdS} +\mathcal I_\Delta(r).
\end{align}$$

The AdS term can be absorbed into a constant mass renormalization. The image term cannot:

$$\begin{align}
\Sigma_{\rm BTZ}(r) =\frac{\lambda}{2}\mathcal I_\Delta(r).
\end{align}$$

Therefore “a tadpole is only a mass shift” must be replaced by:

> A tadpole is a local quadratic insertion. It is a constant mass shift only when the renormalized coincident two-point function is constant on the background and in the chosen state.

The next perturbative map is now explicit:

$$\begin{align}
\Sigma_{\rm BTZ}(r) \longrightarrow
\delta g_{km} =-g_{km}\Sigma_{\rm BTZ}g_{km}.
\end{align}$$

The free renormalized stress tensor gives an independent local test. For the minimally coupled $\Delta=2$ field, its image-dependent part is conserved, finite at $r=r_+$, and satisfies

$$\begin{align}
T^r{}_r-T^t{}_t=O(f),
\end{align}$$

which is the condition that removes the apparent static-coordinate divergence in $T_{UU}$ and $T_{VV}$.

## 6. Corrections to the previous naive picture

| Naive statement | Tested replacement |
|---|---|
| The horizon is an extra radial boundary | In the maximal Lorentzian extension it is an interior null hypersurface; it becomes a boundary only after a deliberate regional restriction |
| Impose a horizon boundary condition together with the AdS condition | Impose the AdS theory condition; use horizon regularity, ingoing response, or flux according to the state or observable being computed |
| Quantize by a discrete orthogonal sum | Use the spectral measure: discrete angular labels and a continuous real-frequency integral |
| Use quasinormal modes as creation and annihilation modes | Use self-adjoint real-frequency modes for CCR; use quasinormal modes for retarded poles and ringdown |
| The causal propagator depends on the thermal state | $E$ is state-independent; temperature changes the symmetric part of $W$ |
| The HHI state is thermal everywhere | It is pure globally and KMS only after restriction to one exterior |
| The Killing Noether charge is the black-hole entropy | For matter it is the Hamiltonian and flux; gravitational Wald entropy is a distinct codimension-two charge |
| A \(\phi^4\) tadpole only shifts a constant mass | It gives a local insertion; on BTZ its finite HHI image part depends on \(r\) |

## 7. Validation protocol for another Killing horizon

For a new static bifurcate horizon, use this order:

1. Specify $(M,g,P,\mathcal B_\infty)$ and decide whether the calculation is global or regional.
2. Verify the variational principle and the asymptotic symplectic flux.
3. Identify the self-adjoint spatial operator and its discrete and continuous spectral measures.
4. Normalize generalized modes with the CPS/KG form.
5. Reconstruct $E$ and check the equal-time delta distribution.
6. Compute $H_\chi$ and verify

$$\begin{align}
\delta H_\chi=\Omega(\delta,X_\chi).
\end{align}$$

7. Construct the candidate state and separately check:

$$\begin{align}
PW=0,\qquad W-W^{\rm T}=iE,\qquad \text{Hadamard},\qquad \text{KMS},\qquad \text{horizon regularity}.
\end{align}$$

8. Compute at least one renormalized local observable such as $[\phi^2]_{\rm ren}$.
9. Point-split $T_{\mu\nu}$, check conservation, and transform to horizon-regular coordinates.
10. Add an interaction, check whether the first local self-energy is constant or position-dependent, and apply it to a sector resolvent.
11. Only after these tests promote a model-specific rule to the general formalism.

## 8. Scope of the current formalism

Established by the BTZ scalar benchmark:

1. fixed, static, non-extremal, bifurcate Killing horizons;
2. gauge-free real scalar matter;
3. reflecting standard AdS boundary conditions;
4. equality of mode and quotient representations of the HHI state;
5. free renormalized local observables regular at the horizon;
6. first-order local $\lambda\phi^4$ renormalization and its radial Born correction.

Not yet established:

1. rotating horizons and superradiance;
2. extremal horizons without a smooth finite-temperature Euclidean tip;
3. gauge constraints and horizon edge modes;
4. nonminimal matter contributions to the Wald functional;
5. dynamical gravity and generalized entropy;
6. collapse geometries and Unruh states.
