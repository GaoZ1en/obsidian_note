# Free scalar CPS, real-frequency modes, and the causal kernel

Date: 2026-07-12

## 0. Direct verdict

The scalar can be quantized by an orthogonal-completeness construction, but the relevant basis in one BTZ exterior is a generalized continuous basis,

$$\begin{align}
\sum_{m\in\mathbb Z}\int_0^\infty d\omega,
\end{align}$$

not a discrete normal-mode sum. Quasinormal modes are poles of a retarded response problem and are not the canonical CCR basis.

The theory-defining input is the standard AdS boundary condition. No independent Lorentzian condition is imposed at the horizon.

## 1. Fixed symplectic convention

For

$$\begin{align}
S_0=-\frac12\int d^3x\sqrt{-g} \left[(\nabla\phi)^2+\mu^2\phi^2\right],
\end{align}$$

the symplectic potential current is

$$\begin{align}
\theta^a(\phi;\delta\phi) =-\nabla^a\phi\,\delta\phi.
\end{align}$$

To match the oscillator convention used in this project, define

$$\begin{align}
\omega^a(\delta_1,\delta_2) :=\delta_2\theta^a(\delta_1)-\delta_1\theta^a(\delta_2) =\delta_2\phi\,\nabla^a\delta_1\phi -\delta_1\phi\,\nabla^a\delta_2\phi.
\end{align}$$

Then

$$\begin{align}
\Omega_\Sigma(\delta_1,\delta_2) =\int_\Sigma d\Sigma_a\,\omega^a(\delta_1,\delta_2).
\end{align}$$

On a $t={\rm const}$ slice, with

$$\begin{align}
\pi=\frac{r}{f}\,\partial_t\phi,
\end{align}$$

this becomes

$$\begin{align}
\Omega_\Sigma =\int_{r_+}^{\infty}dr\int_0^{2\pi}d\varphi\, \delta\pi\wedge\delta\phi.
\end{align}$$

The Klein-Gordon product is

$$\begin{align}
(u,v)_{\rm KG} :=-i\,\Omega_\Sigma(\bar u,v).
\end{align}$$

Consequently,

$$\begin{align}
(u_N,u_M)_{\rm KG}=\delta_{NM} \quad\Longleftrightarrow\quad \Omega_\Sigma(u_N,\bar u_M)=-i\delta_{NM}.
\end{align}$$

Writing the slot order explicitly removes the apparent sign ambiguity in the shorthand statement $\Omega[u,u^*]=\pm i$.

## 2. Conservation

For two linearized solutions,

$$\begin{align}
P\delta_i\phi=0,
\end{align}$$

the current obeys

$$\begin{align}
\nabla_a\omega^a(\delta_1,\delta_2) =-\delta_1\phi\,P\delta_2\phi +\delta_2\phi\,P\delta_1\phi =0.
\end{align}$$

The standard AdS boundary condition makes the symplectic flux at infinity vanish. In the maximally extended geometry there is no horizon boundary, so $\Omega_\Sigma$ is independent of the global Cauchy surface.

For a regional foliation whose hypersurfaces meet different horizon cuts, the change of $\Omega_\Sigma$ is instead balanced by symplectic flux through the intervening horizon segment. By contrast, the complete static $t={\rm const}$ exterior problem below is self-adjoint and has conserved Killing evolution.

## 3. Separated equation

Take

$$\begin{align}
u_{\omega m}(t,r,\varphi) =\frac{e^{-i\omega t+im\varphi}}{\sqrt{2\pi}}\, R_{\omega m}(r), \qquad m\in\mathbb Z,\quad \omega>0.
\end{align}$$

The Klein-Gordon equation gives

$$\begin{align}
\frac1r\frac{d}{dr} \left(rf\frac{dR_{\omega m}}{dr}\right) +\left( \frac{\omega^2}{f} -\frac{m^2}{r^2} -\mu^2 \right)R_{\omega m}=0.
\end{align}$$

Introduce

$$\begin{align}
z=1-\frac{r_+^2}{r^2}, \qquad \widehat\omega=\frac{\omega\ell^2}{r_+}, \qquad \widehat m=\frac{m\ell}{r_+},
\end{align}$$

so that $z=0$ is the horizon and $z=1$ is the AdS boundary. Define

$$\begin{align}
a=\frac{\Delta-i(\widehat\omega+\widehat m)}2, \qquad b=\frac{\Delta-i(\widehat\omega-\widehat m)}2.
\end{align}$$

A standard-boundary real-frequency solution is

$$\begin{align}
R_{\omega m}(z) =N_{\omega m}\, z^{-i\widehat\omega/2}(1-z)^{\Delta/2} {}_2F_1(a,b;\Delta;1-z).
\end{align}$$

It obeys

$$\begin{align}
R_{\omega m}=O(r^{-\Delta})
\end{align}$$

at infinity.

## 4. Horizon asymptotics and normalization

The hypergeometric connection formula gives

$$\begin{align}
R_{\omega m}(z) \sim N_{\omega m} \left[ A_{\omega m}z^{-i\widehat\omega/2} +A_{\omega m}^*z^{+i\widehat\omega/2} \right],
\end{align}$$

where

$$\begin{align}
A_{\omega m} =\frac{ \Gamma(\Delta)\Gamma(i\widehat\omega)
}{ \Gamma(\Delta-a)\Gamma(\Delta-b)
}.
\end{align}$$

For real $\omega$, $m$, and $\Delta$, the two coefficients have equal magnitude. This is the reflecting real-frequency scattering solution. It contains both ingoing and outgoing horizon asymptotics.

Since

$$\begin{align}
z\sim4e^{2\kappa r_*},
\end{align}$$

the two terms are proportional to $e^{-i\omega r_*}$ and $e^{+i\omega r_*}$. Distributional Klein-Gordon normalization gives

$$\begin{align}
N_{\omega m} =\frac{1}{ \sqrt{4\pi r_+\omega}\,|A_{\omega m}|
}.
\end{align}$$

With this choice,

$$\begin{align}
(u_{\omega m},u_{\omega'm'})_{\rm KG} =\delta_{mm'}\delta(\omega-\omega'),
\end{align}$$

and

$$\begin{align}
\Omega(u_{\omega m},\bar u_{\omega'm'}) =-i\delta_{mm'}\delta(\omega-\omega').
\end{align}$$

The endpoint $\omega=0$ is understood by the spectral limit. It is not an additional discrete normalizable mode for the primary $\Delta=2$ problem.

## 5. Generalized completeness and CCR

Expand the field in the right exterior as

$$\begin{align}
\widehat\phi(x) =\sum_{m\in\mathbb Z}\int_0^\infty d\omega\, \left[ \widehat a_{\omega m}u_{\omega m}(x) +\widehat a_{\omega m}^{\dagger}\bar u_{\omega m}(x) \right].
\end{align}$$

The coefficient-space symplectic form is

$$\begin{align}
\Omega =i\sum_m\int_0^\infty d\omega\, \delta a_{\omega m}^{*}\wedge\delta a_{\omega m}.
\end{align}$$

Hence

$$\begin{align}
\{a_{\omega m},a_{\omega'm'}^*\} =-i\delta_{mm'}\delta(\omega-\omega'),
\end{align}$$

and quantization gives

$$\begin{align}
[\widehat a_{\omega m},\widehat a_{\omega'm'}^\dagger] =\delta_{mm'}\delta(\omega-\omega').
\end{align}$$

The antisymmetric generalized mode resolution is

$$\begin{align}
\boxed{ iE_{\mathcal R}(x,x') =\sum_{m\in\mathbb Z}\int_0^\infty d\omega\, \left[ u_{\omega m}(x)\bar u_{\omega m}(x') -\bar u_{\omega m}(x)u_{\omega m}(x') \right]
}.
\end{align}$$

Here $\mathcal R$ denotes the right exterior and

$$\begin{align}
E_{\mathcal R} =G_{\rm ret}^{\mathcal R}-G_{\rm adv}^{\mathcal R}
\end{align}$$

is the causal propagator for the right exterior with the standard AdS boundary condition. This identity is the continuous-spectrum version of “sum over an orthogonal complete basis.”

It implies

$$\begin{align}
[\widehat\phi(x),\widehat\phi(x')]=iE_{\mathcal R}(x,x').
\end{align}$$

## 6. Why quasinormal modes do not replace this basis

A purely ingoing horizon solution together with standard AdS falloff exists only at the complex frequencies

$$\begin{align}
\omega_{n,m}^{\pm} =\pm\frac{m}{\ell} -i\frac{2r_+}{\ell^2} \left(n+\frac{\Delta}{2}\right), \qquad n=0,1,2,\ldots .
\end{align}$$

These are quasinormal frequencies. Their boundary-value problem is dissipative and non-self-adjoint. Therefore:

1. their frequencies are complex;
2. they are not positive-norm real-frequency oscillators;
3. they do not supply the equal-time delta-function completeness relation by an ordinary orthogonal sum;
4. they are useful as poles of retarded Green functions and for late-time response.

The canonical algebra uses the real-frequency spectral resolution. Quasinormal-mode expansions are a derived representation of response, not the definition of the CCR.

## 7. Verification status

Verified:

1. xAct verified the scalar first variation and symplectic potential.
2. xAct verified the off-shell divergence identity for the symplectic current.
3. Mathematica derived the separated radial equation.
4. Mathematica reduced the radial equation to the Gauss equation and returned zero residual for the displayed $a$, $b$, and prefactor.
5. Mathematica checked $z\sim4e^{2\kappa r_*}$.
6. Mathematica checked that the displayed quasinormal frequencies give $a=-n$ or $b=-n$.
7. The coefficient $N_{\omega m}$ follows from the delta-function part of the Klein-Gordon product at $r_*\to-\infty$.
8. Two compactly supported smooth functions were reconstructed numerically in the $m=0,1$ sectors, with decreasing error as the cutoff increased.
9. The same modes reproduce the quotient HHI Green function in Euclidean and regulated Lorentzian comparisons.

Assumptions:

1. $\Delta>1$ and the standard source-free branch is used.
2. The radial Sturm-Liouville operator is taken on its self-adjoint standard-boundary domain.
3. The generalized eigenfunctions are distributions, not square-integrable individual states.

Not verified:

1. No pointwise convergence of the unsmeared sharp-cutoff delta kernel is claimed; the numerical check is distributional.
2. Completeness for all admissible boundary conditions is not inferred from the standard-boundary benchmark.
