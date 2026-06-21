# Kerr-Newman-AdS Black Hole Thermodynamics via Wald Formalism

## Overview of the Wald Formalism

The [[Wald formalism]] provides a systematic approach to black hole thermodynamics based on [[Noether charges]] and the [[covariant phase space]] method. For a general diffeomorphism-invariant Lagrangian $$\mathcal{L}(\phi, \nabla\phi)$$, the formalism constructs:

1. **Noether current**: $$J^\mu[\xi] = \Theta^\mu[\phi, \mathcal{L}_\xi \phi] - \xi^\nu T^{\mu\nu}$$
1. **Noether charge**: $$Q[\xi] = \int_{\Sigma} \star J[\xi]$$
1. **Entropy formula**: $$S = -2\pi \int_{\mathcal{H}} \frac{\partial \mathcal{L}}{\partial R_{\mu\nu\rho\sigma}} \epsilon_{\mu\nu} \epsilon_{\rho\sigma}$$

where $$\xi$$ is a Killing vector and $$\mathcal{H}$$ is the bifurcation surface.

## Kerr-Newman-AdS Spacetime Setup

The [[Kerr-Newman-AdS]] metric in Boyer-Lindquist coordinates takes the form:

$$\begin{align}
ds^2 = -\frac{\Delta_r}{\rho^2 \Xi^2}(dt - \frac{a\sin^2\theta}{\Xi}d\phi)^2 + \frac{\rho^2}{\Delta_r}dr^2 + \frac{\rho^2}{\Delta_\theta}d\theta^2 + \frac{\Delta_\theta \sin^2\theta}{\rho^2 \Xi^2}(adt - \frac{r^2+a^2}{\Xi}d\phi)^2
\end{align}$$

where:
- $$\rho^2 = r^2 + a^2\cos^2\theta$$
- $$\Delta_r = (r^2+a^2)(1+\frac{r^2}{\ell^2}) - 2Mr + Q^2$$
- $$\Delta_\theta = 1 + \frac{a^2\cos^2\theta}{\ell^2}$$
- $$\Xi = 1 + \frac{a^2}{\ell^2}$$
- $$\ell$$ is the AdS radius

The electromagnetic field is given by:

$$\begin{align}
A = \frac{Qr}{\rho^2\Xi}(dt - \frac{a\sin^2\theta}{\Xi}d\phi) + \frac{Qa\cos\theta}{\rho^2}(adt - \frac{r^2+a^2}{\Xi}d\phi)
\end{align}$$

## Lagrangian and Field Equations

We consider Einstein-Maxwell theory with cosmological constant:

$$\begin{align}
\mathcal{L} = \frac{1}{16\pi G}(R - 2\Lambda) - \frac{1}{4\mu_0}F_{\mu\nu}F^{\mu\nu}
\end{align}$$

where $$\Lambda = -\frac{3}{\ell^2}$$ and $$F = dA$$.

## Calculating Thermodynamic Quantities

### Horizon Properties

The outer horizon $$r_+$$ satisfies $$\Delta_r(r_+) = 0$$:

$$\begin{align}
r_+^4 + a^2r_+^2 + \frac{r_+^2(r_+^2+a^2)}{\ell^2} - 2Mr_+ + Q^2 = 0$$ ^cite{Hawking1999}
\end{align}$$

The horizon area is:

$$\begin{align}
A = \int_{\mathcal{H}} \sqrt{h} \, d^2x = \frac{4\pi(r_+^2+a^2)}{\Xi^2}
\end{align}$$

### Temperature via Surface Gravity

Using the Killing vector $$\chi = \partial_t + \Omega_H \partial_\phi$$ where:

$$\begin{align}
\Omega_H = \frac{a\Xi}{r_+^2+a^2}
\end{align}$$

The surface gravity is:

$$\begin{align}
\kappa = \frac{r_+ - \frac{r_+^3}{\ell^2} - \frac{a^2r_+}{\ell^2} - M + \frac{Q^2}{r_+}}{2(r_+^2+a^2)/\Xi}
\end{align}$$

Therefore: $$T = \frac{\kappa}{2\pi}$$

### Wald Entropy Calculation

For Einstein-Maxwell theory:

$$\begin{align}
\frac{\partial \mathcal{L}}{\partial R_{\mu\nu\rho\sigma}} = \frac{1}{32\pi G}(\delta^\mu_{[\rho}\delta^\nu_{\sigma]} - \delta^\nu_{[\rho}\delta^\mu_{\sigma]})
\end{align}$$

The Wald entropy becomes:

$$\begin{align}
S = -2\pi \int_{\mathcal{H}} \frac{1}{32\pi G} \epsilon_{\mu\nu}\epsilon^{\mu\nu} = \frac{A}{4G} = \frac{\pi(r_+^2+a^2)}{G\Xi^2}
\end{align}$$

This matches the [[Bekenstein-Hawking entropy]] formula.

## Mass and Angular Momentum via Noether Charges

### ADM Mass

Using the timelike Killing vector $$\xi = \partial_t$$:

$$\begin{align}
M_{\text{ADM}} = \frac{M}{\Xi^2}
\end{align}$$

### Angular Momentum

Using the rotational Killing vector $$\xi = \partial_\phi$$:

$$\begin{align}
J = \frac{Ma}{\Xi^2}
\end{align}$$

### Electric Charge

From Gauss's law:

$$\begin{align}
Q_{\text{elec}} = \frac{Q}{\Xi}
\end{align}$$

## First Law of Black Hole Thermodynamics

The differential form of the first law is:

$$\begin{align}
dM_{\text{ADM}} = T \, dS + \Omega_H \, dJ + \Phi_H \, dQ_{\text{elec}} + \Theta \, dC
\end{align}$$

where:
- $$\Phi_H = \frac{Qr_+}{\Xi(r_+^2+a^2)}$$ is the electric potential
- $$\Theta$$ is the thermodynamic conjugate to the cosmological "constant" $$C = -\frac{1}{\Lambda} = \frac{\ell^2}{3}$$
- $$\Theta = -\frac{1}{2\Xi^3}\left(\frac{r_+^2+a^2}{\ell^3} + \frac{a^2}{\ell^3}\right)$$ ^cite{Kastor1999}

## Smarr Relation

The [[Smarr relation]] for Kerr-Newman-AdS reads:

$$\begin{align}
M_{\text{ADM}} = 2TS + 2\Omega_H J + \Phi_H Q_{\text{elec}} + \frac{2}{3}\Theta C
\end{align}$$

This differs from asymptotically flat case due to the AdS contribution.

## Verification Steps

<details>
<summary>Detailed Verification of First Law</summary>

1. **Compute variations**: Calculate $$\frac{\partial r_+}{\partial M}$$, $$\frac{\partial r_+}{\partial a}$$, $$\frac{\partial r_+}{\partial Q}$$ from the horizon equation
1. **Area variation**: $$dA = \frac{\partial A}{\partial r_+} dr_+ = \frac{8\pi r_+}{\Xi^2} dr_+$$
1. **Entropy variation**: $$dS = \frac{dA}{4G} = \frac{2\pi r_+}{G\Xi^2} dr_+$$
1. **Verify**: Check that all terms in the first law sum correctly using chain rule

</details>

## [[Important Open Problems]]

1. **[[Holographic dictionary]]**: Precise AdS/CFT interpretation of thermodynamic quantities for rotating charged black holes
1. **[[Quantum corrections]]**: Higher-order corrections to Wald entropy in string theory
1. **[[Phase transitions]]**: Complete classification of thermodynamic phases in Kerr-Newman-AdS parameter space
1. **[[Extended thermodynamics]]**: Role of variable cosmological constant in black hole chemistry

---

**References**: Key papers include Wald (1993) ^cite{Wald1993} for the formalism, and Kastor-Ray-Traschen (1999) ^cite{Kastor1999} for AdS black hole thermodynamics. Recent reviews: arXiv:1912.07329 ^cite{Johnson2019} and arXiv:2009.07874 ^cite{Kubiznak2020}.

# Kerr-Newman-AdS Black Hole Thermodynamics via Wald Formalism

## Wald Formalism Overview

The [[Wald Formalism]] provides a covariant approach to black hole thermodynamics by relating the first law to Noether charge variations. For a Lagrangian $$\mathcal{L}$$ and Killing vector $$\xi$$, the first law takes the form:

$$\begin{align}
\delta Q_\xi[\Sigma] = \frac{1}{2\pi}\int_{\partial\Sigma} \boldsymbol{\theta}(\phi, \delta\phi) + \delta\int_\Sigma \boldsymbol{C}_\xi
\end{align}$$

where $$\boldsymbol{\theta}$$ is the symplectic potential and $$\boldsymbol{C}_\xi$$ is the constraint associated with $$\xi$$.

## Kerr-Newman-AdS Metric and Parameters

The [[Kerr-Newman-AdS]] metric in Boyer-Lindquist coordinates:

$$\begin{align}
ds^2 = -\frac{\Delta_r}{\rho^2}\left(dt - \frac{a\sin^2\theta}{\Xi}d\phi\right)^2 + \frac{\rho^2}{\Delta_r}dr^2 + \frac{\rho^2}{\Delta_\theta}d\theta^2 + \frac{\Delta_\theta\sin^2\theta}{\rho^2}\left(adt - \frac{r^2+a^2}{\Xi}d\phi\right)^2
\end{align}$$

where:
- $$\rho^2 = r^2 + a^2\cos^2\theta$$
- $$\Delta_r = (r^2+a^2)(1+\Lambda r^2/3) - 2Mr + Q^2$$
- $$\Delta_\theta = 1 + \Lambda a^2\cos^2\theta/3$$
- $$\Xi = 1 + \Lambda a^2/3$$

Physical parameters:
- $$M$$: ADM mass
- $$a$$: rotation parameter
- $$Q$$: electric charge
- $$\Lambda < 0$$: cosmological constant ($$\Lambda = -3/\ell^2$$)

## Action and Field Equations

The Einstein-Maxwell-AdS action:

$$\begin{align}
S = \frac{1}{16\pi G}\int d^4x\sqrt{-g}\left[R - 2\Lambda - F_{\mu\nu}F^{\mu\nu}\right]
\end{align}$$

The electromagnetic field tensor:

$$\begin{align}
F = dA = \frac{Q}{2\rho^2}\left[2r\,dr\wedge\left(dt - \frac{a\sin^2\theta}{\Xi}d\phi\right) - 2a\cos\theta\sin\theta\,d\theta\wedge\left(adt - \frac{r^2+a^2}{\Xi}d\phi\right)\right]
\end{align}$$

## Horizon Structure and Killing Vectors

### Event Horizon Location

The outer horizon $$r_+$$ satisfies $$\Delta_r(r_+) = 0$$:

$$\begin{align}
r_+^4 + \frac{\Lambda}{3}(r_+^2 + a^2)r_+^2 - 2Mr_+ + (a^2 + Q^2) = 0
\end{align}$$

### Horizon Killing Vector

At the horizon, the null generator is:

$$\begin{align}
\chi = \frac{\partial}{\partial t} + \Omega_H\frac{\partial}{\partial\phi}
\end{align}$$

where the angular velocity is:

$$\begin{align}
\Omega_H = \frac{a\Xi}{r_+^2 + a^2} = \frac{a(1 + \Lambda a^2/3)}{r_+^2 + a^2}
\end{align}$$

## Thermodynamic Quantities via Wald Formalism

### Surface Gravity

$$\begin{align}
\kappa = \frac{1}{4\pi T_H} = \frac{r_+ - M + \Lambda r_+^3/3 + \Lambda a^2 r_+/3}{2(r_+^2 + a^2)}
\end{align}$$

### Hawking Temperature

$$\begin{align}
T_H = \frac{\kappa}{2\pi} = \frac{r_+ - M + \Lambda r_+^3/3 + \Lambda a^2 r_+/3}{4\pi(r_+^2 + a^2)}
\end{align}$$

### Entropy (Bekenstein-Hawking)

Using the Wald entropy formula:

$$\begin{align}
S = \frac{A}{4G} = \frac{\pi(r_+^2 + a^2)}{G\Xi}
\end{align}$$

### Angular Momentum

$$\begin{align}
J = \frac{Ma\Xi}{G} = \frac{Ma(1 + \Lambda a^2/3)}{G}
\end{align}$$

### Electric Potential

$$\begin{align}
\Phi_H = \frac{Qr_+}{\Xi(r_+^2 + a^2)}
\end{align}$$

## First Law of Black Hole Mechanics

Applying the Wald formalism, the first law becomes:

$$\begin{align}
\boxed{dM = T_H dS + \Omega_H dJ + \Phi_H dQ + \Theta d\Lambda}
\end{align}$$

where $$\Theta$$ is the thermodynamic conjugate to $$\Lambda$$.

### Cosmological Term Contribution

The pressure and thermodynamic volume are:

$$\begin{align}
P = -\frac{\Lambda}{8\pi G} = \frac{3}{8\pi G\ell^2}
\end{align}$$

$$\begin{align}
V = \frac{\partial M}{\partial P}\bigg|_{S,J,Q} = \frac{4\pi}{3}\frac{r_+^3 + 3Mr_+ + a^2 r_+ - Q^2 r_+/r_+}{\Xi}
\end{align}$$

## Smarr Formula

The [[Smarr Relation]] for Kerr-Newman-AdS:

$$\begin{align}
\boxed{M = 2T_H S + 2\Omega_H J + \Phi_H Q - 2PV}
\end{align}$$

This differs from asymptotically flat case by the $$-2PV$$ term, reflecting the AdS thermodynamic volume.

## Verification of Thermodynamic Relations

### Heat Capacity

$$\begin{align}
C = T_H\frac{\partial S}{\partial T_H}\bigg|_{J,Q,P}
\end{align}$$

For small AdS black holes, $$C < 0$$ (thermodynamically unstable).
For large AdS black holes, $$C > 0$$ (thermodynamically stable).

### Critical Behavior

The system exhibits [[Van der Waals-like Phase Transitions]] with critical point:

$$\begin{align}
T_c = \frac{1}{2\sqrt{6}\pi r_c}, \quad P_c = \frac{1}{96\pi r_c^2}, \quad \frac{P_c V_c}{T_c} = \frac{3}{8}
\end{align}$$

## Open Problems and Extensions

[[Important Open Problems]]:

1. **Quantum Corrections**: How do higher-order quantum corrections modify the Wald entropy formula for rotating charged AdS black holes?

1. **Holographic Thermodynamics**: Precise AdS/CFT dictionary for thermodynamic quantities in rotating charged cases

1. **Extended Phase Space**: Classification of all possible phase transitions in the extended thermodynamic phase space

1. **Stability Analysis**: Complete classification of thermodynamic stability regions in $$(M,a,Q,\Lambda)$$ parameter space

## References

Key papers:
- Wald (1993): General definition of conserved quantities ^cite{Wald1993}
- Kastor et al. (2009): Smarr formula for AdS black holes ^cite{KastorRayTraskhar2009}
- Kubiznak & Mann (2012): P-V criticality ^cite{KubiznakMann2012}

For recent developments, search arXiv for "Kerr-Newman-AdS thermodynamics" and "black hole phase transitions" (post-2020).

# Wald Formalism证明Bekenstein-Hawking熵

## 概述

[[Wald Formalism]]是由Robert Wald在1993年提出的一般性框架，用于计算任意引力理论中黑洞的熵。该方法将[[Bekenstein-Hawking Entropy]]公式推广到了更一般的情形，并提供了严格的热力学第一定律证明。

## 基础设置

### Lagrangian密度

考虑一般的引力理论，其拉格朗日密度为：

$$\begin{align}
\mathcal{L} = \mathcal{L}(g_{\mu\nu}, R_{\mu\nu\rho\sigma}, \nabla_{\alpha}R_{\mu\nu\rho\sigma}, \ldots)
\end{align}$$

对于Einstein-Hilbert作用量：

$$\begin{align}
\mathcal{L}_{\text{EH}} = \frac{1}{16\pi G}\sqrt{-g}R
\end{align}$$

### 场方程变分

定义**Noether电流**：

$$\begin{align}
J^{\mu} = \frac{\partial \mathcal{L}}{\partial(\nabla_{\mu}g_{\alpha\beta})}\delta g_{\alpha\beta}
\end{align}$$

和**symplectic电流**：

$$\begin{align}
\omega(\delta_1, \delta_2) = \delta_1\Theta(\delta_2) - \delta_2\Theta(\delta_1) - d\delta_1\delta_2\mathcal{L}
\end{align}$$

其中$$\Theta$$是边界项。

## Wald熵公式推导

### 第一步：Killing视界上的对称性

对于具有Killing视界的稳态黑洞，存在Killing矢量$$\xi^{\mu}$$满足：
- 在视界上：$$\xi^{\mu}\xi_{\mu} = 0$$
- 表面引力：$$\kappa = \frac{1}{4\pi}\oint_{\mathcal{H}} \sqrt{\sigma} \nabla^{\mu}\xi^{\nu}\nabla_{\mu}\xi_{\nu}$$

### 第二步：Noether电荷构造

对应于Killing对称性$$\delta g_{\mu\nu} = \mathcal{L}_{\xi}g_{\mu\nu}$$的Noether电荷密度：

$$\begin{align}
Q[\xi] = \frac{\partial \mathcal{L}}{\partial R_{\mu\nu\rho\sigma}}\epsilon_{\mu\nu}\xi^{\rho}\xi^{\sigma}
\end{align}$$

其中$$\epsilon_{\mu\nu}$$是视界上的binormal。

### 第三步：熵密度定义

**Wald熵密度**定义为：^cite{Wald1993}

$$\begin{align}
s = 2\pi \frac{\partial \mathcal{L}}{\partial R_{\mu\nu\rho\sigma}}\epsilon_{\mu\nu}\epsilon_{\rho\sigma}
\end{align}$$

总熵为视界积分：

$$\begin{align}
S = \int_{\mathcal{H}} s \sqrt{\sigma} d^{d-2}x
\end{align}$$

## Einstein引力的情形

### 具体计算

对于Einstein-Hilbert拉格朗日量：

$$\begin{align}
\frac{\partial \mathcal{L}_{\text{EH}}}{\partial R_{\mu\nu\rho\sigma}} = \frac{\sqrt{-g}}{32\pi G}(g^{\mu\rho}g^{\nu\sigma} - g^{\mu\sigma}g^{\nu\rho})
\end{align}$$

### Binormal计算

视界上的binormal满足：

$$\begin{align}
\epsilon_{\mu\nu}\epsilon^{\mu\nu} = -2
\end{align}$$

因此：

$$\begin{align}
\epsilon_{\mu\nu}\epsilon_{\rho\sigma}g^{\mu\rho}g^{\nu\sigma} = -1
\end{align}$$

$$\begin{align}
\epsilon_{\mu\nu}\epsilon_{\rho\sigma}g^{\mu\sigma}g^{\nu\rho} = +1
\end{align}$$

### 最终结果

代入得到熵密度：

$$\begin{align}
s = 2\pi \frac{\sqrt{-g}}{32\pi G}(-1-1) = -\frac{\sqrt{-g}}{8G}
\end{align}$$

在视界上$$\sqrt{-g} = \sqrt{\sigma}$$，所以：

$$\begin{align}
S = \int_{\mathcal{H}} \frac{\sqrt{\sigma}}{4G} d^{d-2}x = \frac{A}{4G}
\end{align}$$

这正是**Bekenstein-Hawking熵公式**！

## 热力学第一定律

### 变分公式

Wald还证明了对于稳态黑洞的扰动：

$$\begin{align}
\delta S = \frac{\kappa}{2\pi}\delta A + \int_{\infty} \omega(\delta, \xi)
\end{align}$$

其中第二项是无穷远处的能量变化。

### 物理解释

这给出了黑洞热力学第一定律：

$$\begin{align}
dE = T_H dS + \Omega_H dJ + \Phi_H dQ
\end{align}$$

其中：
- $$T_H = \frac{\kappa}{2\pi}$$是Hawking温度
- $$\Omega_H, \Phi_H$$分别是角速度和电势

## 推广与应用

### 高阶引力理论

该方法适用于任意高阶引力理论，如：
- [[Gauss-Bonnet Gravity]]：$$\mathcal{L} \sim R + \alpha(R^2 - 4R_{\mu\nu}R^{\mu\nu} + R_{\mu\nu\rho\sigma}R^{\mu\nu\rho\sigma})$$
- [[f(R) Gravity]]：$$\mathcal{L} \sim f(R)$$
- [[Lovelock Gravity]]

### String Theory应用

在[[String Theory]]中的[[AdS/CFT Correspondence]]框架下，Wald熵与CFT的[[Entanglement Entropy]]相关联。

## 重要开放问题

[[Important Open Problems]]：

1. **量子修正**：如何在Wald形式主义中包含量子修正？当前只是经典理论。

1. **动力学视界**：该方法主要适用于稳态黑洞，对于动力学情形（如黑洞合并）的推广仍待研究。

1. **全息对偶**：Wald熵与全息纠缠熵的精确对应关系需要进一步阐明。^cite{RyuTakayanagi2006}

1. **Loop Quantum Gravity**：在[[Loop Quantum Gravity]]框架下，微观态计数如何与Wald熵统一？

## 历史注记

- **Bekenstein (1973)**：首先提出黑洞熵概念^cite{Bekenstein1973}
- **Hawking (1975)**：计算了精确系数$$S = A/(4G)$$^cite{Hawking1975}
- **Wald (1993)**：提出一般性形式主义^cite{Wald1993}
- **Iyer-Wald (1994)**：完善了变分形式主义^cite{IyerWald1994}

这个证明展示了现代理论物理中几何、热力学和场论的深刻统一。
