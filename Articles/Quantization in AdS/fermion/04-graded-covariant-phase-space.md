# 04. Even Graded Covariant Phase Space

## 1. Parity Convention

The fields $\displaystyle{\psi,\bar{\psi}}$ are Grassmann odd, the symplectic form is even graded. For homogeneous field-space tangent vectors $\displaystyle{\delta _{1},\delta _{2}}$ of intrinsic parities $\displaystyle{\epsilon_{1},\epsilon_{2}}$, an even two-form obeys

$$\begin{align}
\Omega(\delta_{1},\delta_{2}) & =-(-1)^{\epsilon_{1}\epsilon_{2}}\Omega(\delta_{2},\delta_{1})
\end{align}$$

## 2. Integrated Potential and Symplectic Form

The symplectic potential is given by

$$\begin{align}
\theta _{R} & =\dfrac{i}{2} \int _{\Sigma _{R}}\mathrm{d}^{3}x\sqrt{ \sigma }\tau _{\mu}\left(\bar{\psi}\gamma ^{\mu}\delta \psi-\delta \bar{\psi}\gamma ^{\mu}\psi\right) \\
\implies \Omega _{R} & =i \int _{\Sigma _{R}}\mathrm{d}^{3}x\sqrt{ \sigma }\tau _{\mu}\delta \bar{\psi}\gamma ^{\mu}\hat{\wedge}\delta \psi
\end{align}$$

here the $\displaystyle{\hat{\wedge}}$ is defined as

$$\begin{align}
\delta \bar{\psi}\gamma ^{\mu}\hat{\wedge}\delta \psi & =\delta _{1}\bar{\psi}\gamma ^{\mu}\delta _{2}\psi-(-1)^{\epsilon_{1}\epsilon_{2}}\delta _{2}\bar{\psi}\gamma ^{\mu}\delta _{1}\psi
\end{align}$$

on the Lorentzian real slice it is the graded real form underlying the positive Hermitian product

$$\begin{align}
(u,v)_\Sigma=\int_\Sigma\sqrt\sigma\,u^\dagger v.
\end{align}$$

For each solution $\displaystyle{u}$ we associate one vector on the configuration space

$$\begin{align}
X_{u} & =\int \mathrm{d}^{4}xu \overrightarrow{\dfrac{\delta}{\delta \psi}} \\
\bar{X}_{v} & =\int \mathrm{d}^{4}x \overleftarrow{\dfrac{\delta}{\delta \bar{\psi}}}\bar{v}
\end{align}$$

then we have

$$\begin{align}
\Omega (u,v) & =X_{u}\cdot \bar{X}_{v}\cdot \omega \\
 & =i(u,v)_{\Sigma}
\end{align}$$

Finiteness follows from exactly the radial power count in Section 02.

## Verification

- **Verified:** the boundary flux vanishes algebraically for each pure polarization; the radial integrability inequalities are in `verification/modes-and-representation.wl`.
- **Assumptions:** tangent variations satisfy the linearized full Dirac equation and the same boundary condition as the background solution.
- **Not verified:** no BV antibracket, gauge reduction, or interacting Peierls construction is included.
