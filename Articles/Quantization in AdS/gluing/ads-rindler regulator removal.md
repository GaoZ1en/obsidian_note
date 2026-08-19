# AdS--Rindler Regulator Removal

This note studies what survives when the AdS--Rindler horizon regulator is removed. The result is algebraic KMS equivalence on wedge observables, not ordinary sharp-wedge Fock factorization.

## 1. Reflecting brick wall

Place a self-adjoint reflecting Robin wall at

$$\begin{align}
\rho&=1+\epsilon.
\end{align}$$

With

$$\begin{align}
r_*&=\dfrac12\log\dfrac{\rho-1}{\rho+1},
\end{align}$$

the regulated tortoise length is

$$\begin{align}
T_\epsilon&=-r_*(1+\epsilon)
=\dfrac12\log\dfrac{2+\epsilon}{\epsilon}.
\end{align}$$

At finite $\epsilon$ and finite $\chi$ volume, the radial and transverse spectra are discrete and the two wedge Fock spaces form an ordinary regulated tensor product. For generic Robin phase the large-$T_\epsilon$ boost-frequency spacing is

$$\begin{align}
\Delta\omega&\simeq\dfrac\pi{T_\epsilon}.
\end{align}$$

As $\epsilon\to0$, $T_\epsilon\to\infty$ and the spectrum becomes continuous.

## 2. Boundary-trace domain

Individual real-frequency modes behave as

$$\begin{align}
z^{-i\omega/2},\qquad z^{i\omega/2},\qquad
z=1-\rho^{-2},
\end{align}$$

and have no pointwise limit at the horizon. A sharp value $\Phi|_{\mathcal H}$ is therefore not an ordinary oscillator coordinate. The canonical domain is instead described by finite-energy wave packets or characteristic flux data. Both branches must remain until a wave packet or a retarded boundary condition is explicitly chosen.

On the bifurcation slice, smooth global data satisfy $\partial_{\tau_A}\Phi=O(y_A)$, which cancels the $\coth y_A$ factor in the wedge symplectic measure. Generic finite-energy data are matched as elements of the global energy space; a pointwise momentum trace is not assumed.

## 3. Bogoliubov asymptotics

For the Unruh transformation,

$$\begin{align}
|\beta_\omega|^2&=n_\omega
=\dfrac1{e^{2\pi\omega}-1}.
\end{align}$$

At large boost frequency,

$$\begin{align}
n_\omega&\sim e^{-2\pi\omega}.
\end{align}$$

Thus high boost frequency is exponentially suppressed. The obstruction comes from the horizon density of states and the small-frequency behavior

$$\begin{align}
n_\omega&\sim\dfrac1{2\pi\omega}.
\end{align}$$

For one fixed regulated transverse momentum, the radial contribution has the asymptotic lower behavior

$$\begin{align}
\sum_n|\beta_{\omega_n}|^2
&\sim\dfrac{T_\epsilon}{\pi}
\int_{O(T_\epsilon^{-1})}^{\omega_0}
\dfrac{d\omega}{2\pi\omega}\\
&=O(T_\epsilon\log T_\epsilon).
\end{align}$$

It diverges as the wall approaches the horizon. Removing the $\chi$ box adds the continuous $k$ volume and strengthens the failure.

The active script uses the generic half-step Robin grid

$$\begin{align}
\omega_n&=\dfrac{\pi(n+1/2)}{T_\epsilon}
\end{align}$$

up to fixed $\omega_{\max}=10$. For one transverse momentum it finds

| $\epsilon$ | $T_\epsilon$ | regulated $\sum n_{\omega_n}$ |
|---:|---:|---:|
| $10^{-2}$ | $2.65165$ | $0.0247977$ |
| $10^{-4}$ | $4.95177$ | $0.160348$ |
| $10^{-8}$ | $9.55691$ | $0.606736$ |
| $10^{-16}$ | $18.7673$ | $1.82248$ |
| $10^{-32}$ | $37.1879$ | $4.89428$ |

The grid is an asymptotic brick-wall diagnostic, not an exact Robin spectrum. The divergence follows from the regulator-independent density and small-$\omega$ estimates above.

## 4. Fock and algebraic conclusions

The Shale--Stinespring Hilbert--Schmidt condition fails in the sharp-horizon/volume limit. Therefore:

- finite brick-wall metaplectic unitaries do not converge to an ordinary unitary between sharp global and product-wedge Fock representations;
- the formal thermofield-double vector is a regulated mnemonic, not a normalizable vector in a literal sharp tensor product;
- coincident horizon correlators and stress tensors require smearing and renormalization;
- the sharp wedge algebra is Type III rather than a type-I factor attached to a Hilbert-space tensor factor.

The surviving regulator-independent statements are:

$$\begin{align}
\rho_G|_{\mathcal A(W_R)}&\text{ is KMS at }\beta=2\pi
\text{ for boost flow},\\
H_\zeta&=K_R-K_L,
\end{align}$$

together with analytic continuation of the two-point function and classical reconstruction from matched global Cauchy data. These statements do not require sharp-wedge Fock equivalence.

## 5. Verification and claim boundary

`numerics/ads_rindler_wedge.wl` verifies the exact high- and low-frequency limits of $n_\omega$, divergence of $T_\epsilon$, monotone growth of the regulated Hilbert--Schmidt diagnostic, and the KMS/Unruh canonical identities. It also reruns the preserved generalized-mode and global-time-completion checks.

Verified: failure of the sharp brick-wall Fock limit, the boundary-trace qualification, and the KMS/algebraic statement which survives regulator removal.

Assumptions: a reflecting self-adjoint wall, a finite transverse box before removal, and the free scalar global vacuum.

Not verified: a full null-boundary variational principle, interacting wedge algebras, stress-tensor backreaction, or gravity.
