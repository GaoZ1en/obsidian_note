# Hartle-Hawking-Israel state on non-rotating BTZ

Date: 2026-07-12

## 0. Direct verdict

The free CCR algebra is fixed before a state is chosen. The Hartle-Hawking-Israel state is the distinguished quasifree state that is:

1. regular across both branches of the bifurcate horizon;
2. invariant under the Killing flow;
3. KMS at

$$\begin{align}
\beta_H=\frac{2\pi}{\kappa}
\end{align}$$

   when restricted to one exterior.

Globally it is a pure entangled state. Its restriction to the right exterior is thermal.

## 1. Euclidean construction

The Euclidean BTZ metric is

$$\begin{align}
ds_E^2 =f(r)d\tau^2+\frac{dr^2}{f(r)}+r^2d\varphi^2.
\end{align}$$

Smoothness at the tip of the Euclidean cigar requires

$$\begin{align}
\tau\sim\tau+\beta_H, \qquad \beta_H=\frac{2\pi\ell^2}{r_+}.
\end{align}$$

Let

$$\begin{align}
K_E=-\nabla_E^2+\mu^2.
\end{align}$$

The Euclidean Green function with this periodicity and standard AdS falloff analytically continues to the HHI two-point function. The Euclidean regularity condition fixes the state; it does not add a Lorentzian condition at the horizon.

## 2. Two-sided mode construction

Let $u^R_{\omega m}$ be the normalized positive-$\chi$-frequency modes supported in the right exterior. Let $u^L_{\omega m}$ be positive frequency with respect to the future-directed generator $-\chi$ in the left exterior. Complex conjugation includes the corresponding $m\mapsto-m$ relabeling.

The horizon-analytic combinations have the schematic form

$$\begin{align}
p^{(1)}_{\omega m} =\frac{ u^R_{\omega m} +e^{-\beta_H\omega/2}\, \overline{u^L_{\omega,-m}}
}{ \sqrt{1-e^{-\beta_H\omega}}
},
\end{align}$$

$$\begin{align}
p^{(2)}_{\omega m} =\frac{ u^L_{\omega m} +e^{-\beta_H\omega/2}\, \overline{u^R_{\omega,-m}}
}{ \sqrt{1-e^{-\beta_H\omega}}
}.
\end{align}$$

The HHI state is annihilated by the operators multiplying these global positive-frequency modes.

With infrared and ultraviolet regulators in place, the oscillator representation is formally

$$\begin{align}
|{\rm HHI}\rangle \propto \prod_{\omega,m}
\sum_{n=0}^{\infty} e^{-\beta_H\omega n/2}
|n_{\omega m}\rangle_R
|n_{\omega m}\rangle_L.
\end{align}$$

and its right reduced density matrix is

$$\begin{align}
\rho_R =\operatorname{Tr}_L|{\rm HHI}\rangle\langle{\rm HHI}| =Z_R^{-1}e^{-\beta_H H_R}.
\end{align}$$

In the continuum algebraic theory, the regulator-independent statement is that the restriction to the right-wedge algebra is KMS. A trace-class density matrix and the infinite tensor product written above are not literal continuum objects.

The global Killing generator obeys

$$\begin{align}
H_\chi=H_R-H_L, \qquad H_\chi|{\rm HHI}\rangle=0.
\end{align}$$

## 3. Exterior two-point function

Define the Bose factor

$$\begin{align}
n_\beta(\omega) =\frac1{e^{\beta_H\omega}-1}.
\end{align}$$

The right-exterior restriction of the HHI Wightman function is

$$\begin{align}
\boxed{ W_{\rm HHI}^R(x,x') =\sum_{m\in\mathbb Z}\int_0^\infty d\omega \left[ (1+n_\beta) u_{\omega m}(x)\bar u_{\omega m}(x') +n_\beta \bar u_{\omega m}(x)u_{\omega m}(x') \right]
}.
\end{align}$$

Its antisymmetric part is

$$\begin{align}
W_{\rm HHI}^R(x,x') -W_{\rm HHI}^R(x',x) =iE_{\mathcal R}(x,x'),
\end{align}$$

because

$$\begin{align}
(1+n_\beta)-n_\beta=1.
\end{align}$$

Thus the temperature changes only the symmetric, state-dependent part of the two-point function. It does not change the causal propagator or the CCR.

## 4. KMS test

The Bose factor obeys

$$\begin{align}
(1+n_\beta)e^{-\beta_H\omega}=n_\beta.
\end{align}$$

Term by term in the spectral integral, this implies the KMS boundary relation

$$\begin{align}
W_{\rm HHI}^R(t-i\beta_H,\mathbf x;t',\mathbf x') =W_{\rm HHI}^R(t',\mathbf x';t,\mathbf x)
\end{align}$$

as the boundary values of functions analytic in the KMS strip.

The Tolman temperature measured by a static observer is

$$\begin{align}
T_{\rm loc}(r) =\frac{1}{\beta_H\sqrt{-\chi^2}} =\frac{r_+}{ 2\pi\ell\sqrt{r^2-r_+^2}
}.
\end{align}$$

Its divergence as $r\to r_+$ is the infinite acceleration of static observers, not a singularity of the HHI state in freely falling coordinates.

## 5. Quotient and image construction

Euclidean BTZ is a quotient of $\mathbb H^3$. Let $\gamma$ generate the quotient. For the standard scalar,

$$\begin{align}
G_E^{\rm BTZ}(X,X') =\sum_{n\in\mathbb Z} G_\Delta^{\mathbb H^3}(X,\gamma^nX').
\end{align}$$

For dimensionless geodesic separation

$$\begin{align}
s=\frac{d(X,X')}{\ell},
\end{align}$$

the covering-space Green kernel is

$$\begin{align}
G_\Delta^{\mathbb H^3}(s) =\frac1{4\pi\ell} \frac{e^{-(\Delta-1)s}}{\sinh s}.
\end{align}$$

The $n=0$ term contains the universal local Hadamard singularity. Every $n\ne0$ term is smooth at coincidence away from the quotient singularity. Therefore:

1. the BTZ image sum has the correct local Hadamard singularity;
2. the extra image terms are state- and topology-dependent smooth contributions;
3. smooth Euclidean continuation gives a two-point function regular at the bifurcate horizon.

Analytic continuation of this quotient kernel gives the same HHI state as the thermal mode formula. Their equality is a nontrivial representation check, not a new definition of the state.

## 6. Source-backed regression case

Lifschytz and Ortiz constructed the Wightman function of a conformally coupled scalar on BTZ by images, checked the KMS condition, and established the required analyticity on the past and future horizons. They also found a horizon-regular stress tensor. Steif independently obtained the stress tensor by images and found it finite at the non-rotating event horizon.

These papers supply a useful $\Delta=3/2$ regression case. The primary model in this directory is the minimally coupled $\Delta=2$ scalar; the Euclidean quotient construction extends to generic $\Delta>1$.

Primary sources:

1. [Scalar field quantization on the 2+1 dimensional black hole background](https://arxiv.org/abs/gr-qc/9310008)
2. [The Quantum Stress Tensor in the Three Dimensional Black Hole](https://arxiv.org/abs/gr-qc/9308032)
3. [One-loop Partition Functions of 3D Gravity](https://arxiv.org/abs/0804.1773)

## 7. Verification status

Verified:

1. Mathematica checked the Euclidean near-tip metric and $\beta_H=2\pi/\kappa$.
2. The spectral formula algebraically satisfies

$$\begin{align}
W-W^{\rm T}=iE
\end{align}$$

   and the Bose-factor KMS identity.
3. Mathematica checked that $G_\Delta^{\mathbb H^3}$ solves $K_EG=0$ away from coincidence.
4. Mathematica checked the universal short-distance term $1/(4\pi d)$.
5. The cited PDF pages containing the image sum, KMS check, horizon analyticity argument, and stress-tensor regularity statement were inspected.
6. Euclidean uniqueness proves equality of the $\Delta=2$ mode and image kernels.
7. Three Euclidean point pairs agree below $1.4\times10^{-5}$ relative error, and a regulated Lorentzian point agrees below $2.0\times10^{-4}$.
8. Direct point splitting of the $\Delta=2$ image kernel gives a conserved stress tensor regular in Kruskal coordinates.

Assumptions:

1. The Euclidean Green function has standard AdS falloff.
2. The analytic continuation uses the HHI $i0$ prescription.
3. Image sums are considered away from $r=0$, where the quotient has fixed-point singular behavior.

Not verified:

1. The full microlocal wavefront-set condition has not been independently proved here; it follows from the local covering-space Hadamard form plus smooth images.
2. The interacting order-$\lambda$ stress tensor is not included in the free HHI point-splitting result.
