# 问题重述

你要求用**路径积分**方法计算四维Minkowski时空中**Proca场**的热配分函数

$$\begin{align}
Z[\beta] = \operatorname{Tr} e^{-\beta H}
\end{align}$$

其中$\beta$是逆温度。Proca场的拉格朗日为

$$\begin{align}
\mathcal{L} = -\frac{1}{4} F_{\mu\nu}F^{\mu\nu} + \frac{1}{2} m^2 A_\mu A^\mu
\end{align}$$

且满足约束$\nabla_\mu A^\mu = 0$（洛伦兹约束），这是由质量项导致的第二类约束（non-gauge, second-class constraint）。你要求**不能用BRST**，而是用**热核方法**，即通过解热核方程并计算其迹来得到配分函数。

# 假设与设定

- 时空为$4$维Minkowski，但计算热配分函数时需做Wick旋转到Euclidean时空（$\tau = it$），并在Euclidean时间方向上周期为$\beta$。
- Proca场为实矢量场，质量$m>0$。
- 约束$\nabla_\mu A^\mu = 0$是动力学约束，不是规范约束。
- 热核方法即计算算符$K = -\nabla^2 + m^2$（对矢量场的作用）对应的热核$K(\tau)$，并取迹。
- 不考虑边界效应，空间为$\mathbb{R}^3$，时间为$S^1$（周期$\beta$）。

# 详细解答

## 1. Proca场的路径积分表达式

Proca场的Euclidean作用量为

$$\begin{align}
S_E[A] = \int_0^\beta d\tau \int d^3x \left[ \frac{1}{4} F_{\mu\nu}F_{\mu\nu} + \frac{1}{2} m^2 A_\mu A_\mu \right]
\end{align}$$

其中$F_{\mu\nu} = \partial_\mu A_\nu - \partial_\nu A_\mu$。

配分函数为

$$\begin{align}
Z[\beta] = \int \mathcal{D}A_\mu \, \delta(\nabla_\mu A^\mu) \, e^{-S_E[A]}
\end{align}$$

其中$\delta(\nabla_\mu A^\mu)$强制洛伦兹约束。

## 2. 热核方法与约束处理

### 2.1. Proca场的自由度

- $A_\mu$有4个分量，但约束$\nabla_\mu A^\mu = 0$去掉一个自由度。
- 质量项破坏了规范对称性，剩下3个物理自由度（自旋1的3个极化态）。

### 2.2. 算符分解

Proca场的算符为

$$\begin{align}
\mathcal{O}_{\mu\nu} = -\delta_{\mu\nu} \nabla^2 + \nabla_\mu \nabla_\nu + m^2 \delta_{\mu\nu}
\end{align}$$

但由于约束$\nabla_\mu A^\mu = 0$，只需在横向（transverse）子空间上取迹。

### 2.3. 热核定义

热核为

$$\begin{align}
K(\tau) = \operatorname{Tr} \, e^{-\tau \mathcal{O}}
\end{align}$$

配分函数为

$$\begin{align}
\ln Z = -\frac{1}{2} \operatorname{Tr} \ln \mathcal{O}
\end{align}$$

在有限温度下，时间方向为周期$\beta$，即$\tau \in [0, \beta]$。

## 3. 显式热核计算

### 3.1. 模式展开

在周期$\beta$的Euclidean时间上，动量为

$$\begin{align}
\omega_n = \frac{2\pi n}{\beta}, \quad n \in \mathbb{Z}
\end{align}$$

空间动量为$\vec{k}$。

算符本征值为

$$\begin{align}
\lambda = \omega_n^2 + \vec{k}^2 + m^2
\end{align}$$

### 3.2. 配分函数表达式

由于只有3个横向自由度，配分函数为

$$\begin{align}
\ln Z = -\frac{3}{2} \sum_{n=-\infty}^{\infty} \int \frac{d^3k}{(2\pi)^3} \ln(\omega_n^2 + \vec{k}^2 + m^2)
\end{align}$$

### 3.3. 热核迹

热核为

$$\begin{align}
K(\tau) = 3 \sum_{n=-\infty}^{\infty} \int \frac{d^3k}{(2\pi)^3} e^{-\tau (\omega_n^2 + \vec{k}^2 + m^2)}
\end{align}$$

对$\tau$积分得到

$$\begin{align}
\ln Z = \frac{1}{2} \int_0^\infty \frac{d\tau}{\tau} K(\tau)
\end{align}$$

### 3.4. 计算空间动量积分

空间部分为高斯积分：

$$\begin{align}
\int \frac{d^3k}{(2\pi)^3} e^{-\tau \vec{k}^2} = \frac{1}{(4\pi \tau)^{3/2}}
\end{align}$$

### 3.5. 总热核

因此

$$\begin{align}
K(\tau) = 3 \sum_{n=-\infty}^{\infty} \frac{1}{(4\pi \tau)^{3/2}} e^{-\tau (\omega_n^2 + m^2)}
\end{align}$$

### 3.6. 配分函数最终表达式

配分函数为

$$\begin{align}
\ln Z = \frac{3}{2} \int_0^\infty \frac{d\tau}{\tau} \frac{1}{(4\pi \tau)^{3/2}} \sum_{n=-\infty}^{\infty} e^{-\tau (\omega_n^2 + m^2)}
\end{align}$$

## 4. 物理解释与一致性检验

- 该表达式与自旋1 massive boson的配分函数一致。
- 约束已通过只计横向自由度体现。
- $m\to 0$时，Proca场变为光子场，但此时约束变为规范约束，需重新处理（此表达式不适用）。

## 5. 具体例子：高温极限

在高温极限（$\beta m \ll 1$），主导贡献来自$n=0$项，可近似为

$$\begin{align}
\ln Z \approx \frac{3}{2} \int_0^\infty \frac{d\tau}{\tau} \frac{1}{(4\pi \tau)^{3/2}} e^{-\tau m^2} \beta
\end{align}$$

这对应于经典极限。

## 6. 扩展方向

- 考虑曲率背景下的Proca场热核（如黑洞背景）。
- 计算有限体积或有边界条件时的热核。
- 研究Proca场与其他场的耦合（如与标量场或费米子场）。
- 计算热核的高阶Seeley-DeWitt系数，分析紫外行为。
- 研究非平坦时空下的约束处理与热核结构。

## 7. 开放问题

1. **Proca场在曲率时空下的热核结构**（难度：中等）
   - 需用Seeley-DeWitt展开，参考Gilkey等热核方法文献。

2. **Proca场的Casimir能量计算**（难度：中等）
   - 需考虑边界条件与约束的影响。

3. **非平坦时空下约束的量子处理**（难度：较难）
   - 约束与几何的耦合，可能需用BRST-like但非规范场方法。

4. **Proca场的热核在高阶修正下的行为**（难度：中等）
   - 计算高阶热核系数，分析量子修正。

## 8. 参考文献

- M. V. Fischetti, J. B. Hartle, B. L. Hu, "Quantum Effects in the Early Universe. I. Influence of Trace Anomalies on Homogeneous, Isotropic, Classical Geometries", Phys. Rev. D 20, 1757 (1979).
- P. B. Gilkey, "Invariance Theory, the Heat Equation, and the Atiyah-Singer Index Theorem", CRC Press, 1995.
- J. I. Kapusta, C. Gale, "Finite-Temperature Field Theory: Principles and Applications", Cambridge University Press, 2006, 第2章。
- L. Parker, D. Toms, "Quantum Field Theory in Curved Spacetime", Cambridge University Press, 2009, 第3章。

---

## TL;DR

**Proca场的热配分函数（热核方法）为：**

$$\begin{align}
\boxed{ \ln Z = \frac{3}{2} \int_0^\infty \frac{d\tau}{\tau} \frac{1}{(4\pi \tau)^{3/2}} \sum_{n=-\infty}^{\infty} e^{-\tau \left( \left(\frac{2\pi n}{\beta}\right)^2 + m^2 \right)}
}
\end{align}$$

其中3是自旋1 massive boson的极化数，约束已通过只计横向自由度体现。
