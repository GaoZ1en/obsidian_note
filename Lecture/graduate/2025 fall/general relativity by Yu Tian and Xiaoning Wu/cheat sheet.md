# General Relativity Cheat Sheet

## 1. Conventions & Notation
*   **Metric Signature**: Usually $(-+++)$ [Srednicki/Wald] or $(+---)$ [Weinberg/LL]. *Check course convention!*
*   **Indices**: Greek $\mu, \nu = 0, 1, 2, 3$ (Spacetime), Latin $i, j = 1, 2, 3$ (Spatial), $a, b$ (Vielbein/Abstract).
*   **Units**: $G=c=1$ (Geometrized units).

## 2. Differential Geometry Basics
### Tensor Algebra
*   **Metric**: $g_{\mu\nu} g^{\nu\sigma} = \delta^\sigma_\mu$.
*   **Raising/Lowering**: $V_\mu = g_{\mu\nu} V^\nu$, $V^\mu = g^{\mu\nu} V_\nu$.

### Covariant Derivative
$$ \nabla_\mu V^\nu = \partial_\mu V^\nu + \Gamma^\nu_{\mu\lambda} V^\lambda $$
$$ \nabla_\mu V_\nu = \partial_\mu V_\nu - \Gamma^\lambda_{\mu\nu} V_\lambda $$
*   **Metric Compatibility**: $\nabla_\mu g_{\nu\lambda} = 0$.

### Christoffel Symbols
$$ \Gamma^\mu_{\nu\lambda} = \frac{1}{2} g^{\mu\sigma} (\partial_\nu g_{\lambda\sigma} + \partial_\lambda g_{\nu\sigma} - \partial_\sigma g_{\nu\lambda}) $$

## 3. Curvature
### Riemann Curvature Tensor
*(Definition varies by sign convention!)*
$$ R^\rho_{\sigma\mu\nu} = \partial_\mu \Gamma^\rho_{\nu\sigma} - \partial_\nu \Gamma^\rho_{\mu\sigma} + \Gamma^\rho_{\mu\lambda} \Gamma^\lambda_{\nu\sigma} - \Gamma^\rho_{\nu\lambda} \Gamma^\lambda_{\mu\sigma} $$
*   **Commutator**: $[\nabla_\mu, \nabla_\nu] V^\rho = R^\rho_{\sigma\mu\nu} V^\sigma$.

### Ricci Tensor & Scalar
*   **Ricci Tensor**: $R_{\mu\nu} = R^\lambda_{\mu\lambda\nu}$ (Contraction of 1st and 3rd indices usually).
*   **Ricci Scalar**: $R = g^{\mu\nu} R_{\mu\nu}$.

### Bianchi Identities
1.  **First**: $R_{\mu\nu\rho\sigma} + R_{\mu\rho\sigma\nu} + R_{\mu\sigma\nu\rho} = 0$ (Cyclic sum of last 3 indices is 0).
2.  **Second**: $\nabla_\lambda R_{\mu\nu\rho\sigma} + \nabla_\rho R_{\mu\nu\sigma\lambda} + \nabla_\sigma R_{\mu\nu\lambda\rho} = 0$ (Contracted: $\nabla^\mu G_{\mu\nu} = 0$).

## 4. Einstein Field Equations (EFE)
### The Equation
$$ G_{\mu\nu} \equiv R_{\mu\nu} - \frac{1}{2} R g_{\mu\nu} + \Lambda g_{\mu\nu} = 8\pi G T_{\mu\nu} $$
*   **Trace**: $R = -8\pi G T$ (in 4D).
*   **Vacuum ($T_{\mu\nu}=0$)**: Implies $R_{\mu\nu} = 0$ (if $\Lambda=0$).

### Energy-Momentum Tensor
*   **Perfect Fluid**: $T^{\mu\nu} = (\rho + p)u^\mu u^\nu + p g^{\mu\nu}$.
    *   Dust ($p=0$): $T^{\mu\nu} = \rho u^\mu u^\nu$.
*   **Conservation**: $\nabla_\mu T^{\mu\nu} = 0$.

### Action Principle (Hilbert-Einstein)
$$ S_{EH} = \int d^4x \sqrt{-g} (R - 2\Lambda) $$
$$ S_M = \int d^4x \sqrt{-g} \mathcal{L}_M $$
*   Variation: $\delta \int \sqrt{-g} R = \int \sqrt{-g} G_{\mu\nu} \delta g^{\mu\nu}$.

## 5. Important Solutions
### Schwarzschild (Static, Spherically Symmetric, Vacuum)
$$ ds^2 = -\left(1 - \frac{2GM}{r}\right)dt^2 + \left(1 - \frac{2GM}{r}\right)^{-1}dr^2 + r^2 d\Omega^2 $$
*   **Event Horizon**: $r_s = 2GM$.
*   **Geodesics**:
    *   Conserved quantities: $E = -(1-2M/r)\dot{t}$, $L = r^2 \sin^2\theta \dot{\phi}$.
    *   Equation: $\epsilon = - E^2 + \dot{r}^2 + V_{eff}(r)$.

### FLRW (Cosmology)
$$ ds^2 = -dt^2 + a^2(t) \left[ \frac{dr^2}{1-kr^2} + r^2 d\Omega^2 \right] $$
*   $k = +1, 0, -1$ (Closed, Flat, Open).
*   **Friedmann Equations**:
    1.  $(\frac{\dot{a}}{a})^2 = \frac{8\pi G}{3}\rho - \frac{k}{a^2} + \frac{\Lambda}{3}$.
    2.  $\frac{\ddot{a}}{a} = -\frac{4\pi G}{3}(\rho + 3p) + \frac{\Lambda}{3}$.

## 6. Linearized Gravity & Gravitational Waves
*   **Perturbation**: $g_{\mu\nu} = \eta_{\mu\nu} + h_{\mu\nu}$ ($|h_{\mu\nu}| \ll 1$).
*   **Lorenz Gauge**: $\partial^\mu \bar{h}_{\mu\nu} = 0$, where $\bar{h}_{\mu\nu} = h_{\mu\nu} - \frac{1}{2}\eta_{\mu\nu}h$.
*   **Wave Equation**: $\Box \bar{h}_{\mu\nu} = -16\pi G T_{\mu\nu}$.
*   **Vacuum Solution**: Plane waves, 2 polarizations ($+$ and $\times$).

## 7. Black Hole Thermodynamics
*   **Surface Gravity $\kappa$**: $T_H = \frac{\kappa}{2\pi}$. For Schwarzschild: $\kappa = \frac{1}{4GM}$.
*   **Area Law**: $dS \ge 0$. Entropy $S_{BH} = \frac{A}{4G}$.
