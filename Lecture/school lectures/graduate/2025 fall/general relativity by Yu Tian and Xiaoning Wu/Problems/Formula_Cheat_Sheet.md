# GR Formula Cheat Sheet (TL;DR)

## 1. Constants & Conventions
*   **Units**: $G = c = 1$ (Geometrized units).
*   **Metric Signature**: $(- + + +)$.
*   **Einstein Field Eq**: $G_{\mu\nu} = 8\pi T_{\mu\nu}$.

---

## 2. Schwarzschild Black Hole ($M$)
*   **Metric Factor**: $f(r) = 1 - \frac{2M}{r}$
*   **Event Horizon**: $r_s = 2M$
*   **Photon Sphere** (Unstable circular light orbit): $r_{ph} = 3M$
*   **ISCO** (Innermost Stable Circular Orbit): $r_{ISCO} = 6M$
*   **Surface Gravity**: $\kappa = \frac{1}{4M}$
*   **Hawking Temperature**: $T_H = \frac{\kappa}{2\pi} = \frac{1}{8\pi M}$
*   **Horizon Area**: $A = 16\pi M^2$
*   **Entropy**: $S = \frac{A}{4} = 4\pi M^2$

---

## 3. Reissner-Nordström Black Hole ($M, Q$)
*   **Metric Factor**: $f(r) = 1 - \frac{2M}{r} + \frac{Q^2}{r^2}$
*   **Horizons**: $r_\pm = M \pm \sqrt{M^2 - Q^2}$
    *   $r_+$: Event Horizon (Outer)
    *   $r_-$: Cauchy Horizon (Inner)
*   **Extremal Condition**: $|Q| = M \implies r_+ = r_- = M$ ($T_H = 0$)
*   **Surface Gravity**: $\kappa = \frac{r_+ - r_-}{2r_+^2}$
*   **Electric Potential**: $\Phi_H = \frac{Q}{r_+}$

---

## 4. Kerr Black Hole ($M, J=Ma$)
*   **Metric (Boyer-Lindquist)**:
    $$ ds^2 = -\left(1-\frac{2Mr}{\Sigma}\right)dt^2 - \frac{4Mar\sin^2\theta}{\Sigma}dtd\phi + \frac{\Sigma}{\Delta}dr^2 + \Sigma d\theta^2 + \frac{\mathcal{A}}{\Sigma}\sin^2\theta d\phi^2 $$
    *   $\Sigma = r^2 + a^2\cos^2\theta$
    *   $\Delta = r^2 - 2Mr + a^2$
*   **Horizons** ($\Delta = 0$): $r_\pm = M \pm \sqrt{M^2 - a^2}$
*   **Ergosphere** ($g_{tt} = 0$): $r_E(\theta) = M + \sqrt{M^2 - a^2\cos^2\theta}$
    *   Region $r_+ < r < r_E$: Frame dragging forces rotation ($\Omega \neq 0$). Penrose process possible here.
*   **Horizon Angular Velocity**: $\Omega_H = \frac{a}{r_+^2 + a^2} = \frac{a}{2Mr_+}$
*   **Area**: $A = 4\pi(r_+^2 + a^2) = 8\pi M(M + \sqrt{M^2-a^2})$
*   **Surface Gravity**: $\kappa = \frac{r_+ - r_-}{2(r_+^2 + a^2)}$
*   **Thermodynamics**:
    *   **First Law**: $dM = T_H dS + \Omega_H dJ + \Phi_H dQ$
    *   **Smarr Formula**: $M = 2T_H S + 2\Omega_H J + \Phi_H Q$ (Euler relation)

---

## 5. Thermodynamics Summary
| Quantity | Symbol | Formula (General) |
| :--- | :--- | :--- |
| **Temperature** | $T_H$ | $\frac{\kappa}{2\pi}$ |
| **Entropy** | $S$ | $\frac{A}{4} = \frac{\text{Area}}{4\hbar G}$ |
| **Surface Gravity** | $\kappa$ | $\nabla^\mu \chi^\nu \nabla_\mu \chi_\nu = -2\kappa^2$ (at horizon) |
| **First Law** | | $\delta M = \frac{\kappa}{8\pi}\delta A + \Omega_H \delta J + \Phi \delta Q$ |

---

## 6. Mathematical Tools
*   **Christoffel Symbol**: $\Gamma^\lambda_{\mu\nu} = \frac{1}{2}g^{\lambda\sigma}(\partial_\mu g_{\nu\sigma} + \partial_\nu g_{\mu\sigma} - \partial_\sigma g_{\mu\nu})$
*   **Geodesic Eq**: $\frac{d^2x^\mu}{d\tau^2} + \Gamma^\mu_{\alpha\beta}\frac{dx^\alpha}{d\tau}\frac{dx^\beta}{d\tau} = 0$
*   **Covariant Derivative**: $\nabla_\mu V^\nu = \partial_\mu V^\nu + \Gamma^\nu_{\mu\lambda}V^\lambda$
*   **Lie Derivative**: $\mathcal{L}_\xi g_{\mu\nu} = \nabla_\mu \xi_\nu + \nabla_\nu \xi_\mu$
*   **Killing Vector**: $\nabla_{(\mu} \xi_{\nu)} = 0$
*   **Riemann Curvature**: $R^\rho_{\sigma\mu\nu} = \partial_\mu \Gamma^\rho_{\nu\sigma} - \partial_\nu \Gamma^\rho_{\mu\sigma} + \Gamma^\rho_{\mu\lambda}\Gamma^\lambda_{\nu\sigma} - \Gamma^\rho_{\nu\lambda}\Gamma^\lambda_{\mu\sigma}$

---

## 7. Cosmology (FRW)
*   **Metric**: $ds^2 = -dt^2 + a^2(t)\left[ \frac{dr^2}{1-kr^2} + r^2d\Omega^2 \right]$
*   **Friedmann Eq**: $H^2 = \frac{8\pi G}{3}\sum \rho_i - \frac{k}{a^2}$
*   **Acceleration Eq**: $\frac{\ddot{a}}{a} = -\frac{4\pi G}{3}(\rho + 3p)$
*   **Fluid Scaling**: $\rho \propto a^{-3(1+w)}$
    *   Radiation ($w=1/3$): $\rho_r \propto a^{-4}$
    *   Matter ($w=0$): $\rho_m \propto a^{-3}$
    *   Vacuum ($w=-1$): $\rho_\Lambda \propto \text{const}$
*   **Redshift**: $1+z = \frac{1}{a}$ (if $a_0=1$)

## 8. Gravitational Waves
*   **Quadrupole Formula**: $P = \frac{1}{5} \langle \dddot{Q}_{ij} \dddot{Q}^{ij} \rangle$
*   **Wave Equation**: $\Box \bar{h}_{\mu\nu} = -16\pi T_{\mu\nu}$
