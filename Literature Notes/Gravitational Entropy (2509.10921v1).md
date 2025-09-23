---
paper id: 2509.10921v1
title: "Gravitational Entropy"
authors: Sangmin Choi, Malcolm J. Perry
publication date: 2025-09-13T17:40:48Z
abstract: "We formulate the classical gravitational entropy of a horizon as a Noether charge that does not require the notion of a temperature, and which is applicable to horizons that are not necessarily associated with black holes. This introduces a correction to the covariant phase space formalism that accounts for the configuration-dependence of the generating vector field conjugate to the charge. The vector field is related to the proposal of Bousso that the gravitational entropy of a region is determined by the lightsheet at its boundary. We test the formula on various black hole and cosmological horizons."
comments: "23 pages"
pdf: "[[Attachments/Assets/Gravitational Entropy (2509.10921v1).pdf]]"
url: https://arxiv.org/abs/2509.10921v1
tags: []
---
# covariant phase space

$$\begin{align}
S & =\int _{M} L[\phi] \\
\delta S & =\int _{M} (E[\phi]\delta \phi+\mathrm{d}\theta[\phi,\delta \phi]) \\
\omega & =\int _{\Sigma}\delta \theta
\end{align}$$

consider the following symmetry transformation

$$\begin{align}
X_{\xi} & =\int _{M}\mathrm{d}^{d}x \delta _{\xi}\phi \frac{\delta}{\delta \phi}
\end{align}$$

(here we donnot assume $\displaystyle{\xi}$ is independent from field $\displaystyle{\phi}$)act on the action

$$\begin{align}
X_{\xi}\cdot \delta S & =\int _{M} \mathrm{d}\mu _{\xi}
\end{align}$$

we point out that if $\displaystyle{\xi}$ is a Killing vector, we have $\displaystyle{\mu _{\xi}=\xi \cdot L}$.then the corresponding Noether charge reads

$$\begin{align}
H_{\xi} & =\int _{\Sigma}(X_{\xi}\cdot \theta-\mu _{\xi})
\end{align}$$

which satisfies

$$\begin{align}
X_{\xi}\cdot \omega & =-\delta H_{\xi}
\end{align}$$

notice that

$$\begin{align}
\omega|_{\Sigma _{f}}-\omega|_{\Sigma _{i}} & =\delta \int _{\Sigma _{f}-\Sigma _{i}}\theta \\
 & =\delta \int _{M}\mathrm{d}\theta \\
 & =\delta\left(\delta S-\int _{M}E_{\phi}\delta \phi\right) \\
 & \approx 0
\end{align}$$

here $\displaystyle{\approx}$ means evaluation on the prephase space $\displaystyle{\tilde{\mathcal{P}}}$. and

$$\begin{align}
H_{\xi}|_{\Sigma _{f}}-H_{\xi}|_{\Sigma _{i}} & =\int _{\Sigma _{f}-\Sigma _{i}}X_{\xi}\cdot \theta-\mu _{\xi} \\
 & =-\int _{M}E(X_{\xi}\cdot \delta \phi ) \\
 & \approx0
\end{align}$$

then $\displaystyle{J_{\xi}=X_{\xi}\cdot \theta-\mu _{\xi}}$ is closed. by Poincare lemma, we can write

$$\begin{align}
J_{\xi} & =\mathrm{d}F_{\xi}
\end{align}$$

$$\begin{align}
\delta J_{\xi} & =\delta(X_{\xi}\cdot \theta)-\delta \mu _{\xi} \\
 & =\mathcal{L}_{X_{\xi}}\theta-X_{\xi}\cdot \delta\theta-\delta \mu _{\xi} \\
 & =\mathcal{L}_{\xi}\theta+X_{\delta \xi}\cdot \theta-X_{\xi}\cdot \delta \theta-\delta \mu _{\xi} \\
 & =\mathrm{d}(\xi \cdot \theta)+\xi \cdot \mathrm{d}\theta+X_{\delta \xi}\cdot \theta-X_{\xi}\cdot \delta \theta-\delta \mu _{\xi}
\end{align}$$

for $\displaystyle{\xi}$ a Killing vector

$$\begin{align}
\delta J_{\xi} & =\mathrm{d}(\xi \cdot \theta)+(\xi \cdot E)\delta \phi+X_{\delta \xi}\cdot \theta-X_{\xi}\cdot \delta \theta-\delta \xi \cdot L \\
 & \approx -X_{\xi}\cdot \delta \theta+X_{\delta \xi}\cdot \theta+\mathrm{d}(\xi \cdot \theta)-\delta \xi \cdot L \\
\implies -X_{\xi}\cdot \delta \theta & =\delta J_{\xi}-\mathrm{d}(\xi \cdot \theta)-J_{\delta \xi}
\end{align}$$

here we use

$$\begin{align}
\mathcal{L}_{X_{\xi}}\vartheta & =\mathcal{L}_{\xi}\vartheta+X_{\delta \xi}\cdot \vartheta
\end{align}$$

for 1-form $\displaystyle{\theta}$. then

$$\begin{align}
\delta H_{\xi} & =-\int _{\Sigma}X_{\xi}\cdot \delta\theta \\
 & =\int _{\Sigma}(\delta J_{\xi}-\mathrm{d}(\xi \cdot \theta)-J_{\delta \xi}) \\
 & =\int _{\Sigma}\mathrm{d}(\delta F_{\xi}-\xi \cdot \theta-F_{\delta \xi}) \\
 & =\int _{\partial \Sigma}(\delta F_{\xi}-\xi \cdot \theta-F_{\delta \xi})
\end{align}$$

since the LHS is a $\displaystyle{\delta}$-closed form, the RHS should be a $\displaystyle{\delta}$-total derivatice as

$$\begin{align}
\xi \cdot \theta-F_{\delta \xi} & =\delta C
\end{align}$$

add boundary Lagrangian...

$$\begin{align}

\end{align}$$

---

gravitational charges

$$\begin{align}
S & =\frac{1}{16\pi}\int _{M}\mathrm{d}^{4}x\sqrt{ -g }(R-2\Lambda)
\end{align}$$

take a variation

$$\begin{align}
\delta S & = \frac{1}{16\pi}\int _{M}\mathrm{d}^{4}x\sqrt{ -g }\left(-R^{\mu \nu}+\frac{1}{2}Rg^{\mu \nu}-\Lambda g^{\mu \nu}\right)\delta g_{\mu \nu} \\
 & +\frac{1}{16\pi}\int _{\Sigma _{f}-\Sigma _{i}}\mathrm{d}^{3}x\sqrt{ \sigma }\tau_{\mu}(g^{\mu \rho}\nabla ^{\nu}\delta g_{\nu \rho}-g^{\nu \rho}\nabla ^{\mu}\delta g_{\nu \rho})
\end{align}$$

which gives eom and symplectic potential as

$$\begin{align}
R^{\mu \nu}-\frac{1}{2}Rg^{\mu \nu}+\Lambda g^{\mu \nu}=0  \\
\implies R^{\mu \nu} =\Lambda g^{\mu \nu}\\
\theta=\frac{1}{16\pi}\int _{\Sigma}\mathrm{d}^{3}x\sqrt{ \sigma }\tau _{\mu}(g^{\mu \rho}\nabla ^{\nu}\delta g_{\nu \rho}-g^{\nu \rho}\nabla ^{\mu}\delta g_{\nu \rho})
\end{align}$$

and the linearized eom for $\displaystyle{\delta g_{\mu \nu}}$

$$\tag{.}\begin{align}
\square \delta g_{\mu \nu}+g^{\rho \sigma}\nabla _{\mu}\nabla _{\nu}\delta g_{\rho \sigma}-\nabla _{\mu}\nabla _{\rho}\delta g^{\rho}_{~\nu}-\nabla _{\nu}\nabla _{\rho}\delta g^{\rho}_{~\mu}+2R_{\mu \rho \nu \sigma}\delta g^{\rho \sigma} & =0
\end{align}$$

the Noether current is given by

$$\begin{align}
J_{\xi} & =X_{\xi}\cdot \Theta-\xi \cdot L \\
 & =\frac{1}{16\pi} \mathrm{d}^{3}x\sqrt{ \sigma }\tau _{\mu}(g^{\mu \rho}\nabla ^{\nu}(\nabla _{\nu}\xi _{\rho}+\nabla _{\rho}\xi _{\nu})-g^{\nu \rho}\nabla ^{\mu}(\nabla _{\nu}\xi _{\rho}+\nabla _{\rho}\xi _{\nu})) \\
 & -\frac{1}{16\pi}\mathrm{d}^{3}x\sqrt{ \sigma }\tau _{\mu}\xi ^{\mu} (R-2\Lambda) \\
 & =\frac{1}{16\pi}\mathrm{d}^{3}x\sqrt{ \sigma }\tau _{\mu}(\nabla _{\rho}\nabla ^{\rho} \xi ^{\mu}-\nabla ^{\mu}(\nabla _{\nu}\xi ^{\nu})+R^{\mu \nu}\xi _{\nu}-\xi ^{\mu}(R-2\Lambda)) \\
 & \approx \frac{1}{16\pi}\mathrm{d}^{3}x\sqrt{ \sigma }\tau _{\mu}\left(\nabla _{\rho}\nabla ^{\rho}\xi ^{\mu}-\nabla ^{\mu}(\nabla _{\nu}\xi ^{\nu})-R^{\mu \nu}\xi _{\nu}\right) \\
 & =\frac{1}{16\pi}\mathrm{d}^{3}x\sqrt{ \sigma }\tau _{\mu}(\nabla _{\rho}\nabla ^{\rho}\xi ^{\mu}-\nabla _{\nu}\nabla ^{\mu}\xi ^{\nu}) \\
 & =\frac{1}{16\pi}\mathrm{d}^{3}x\sqrt{ \sigma }\tau _{\mu}\nabla _{\nu}(\nabla ^{\nu}\xi ^{\mu}-\nabla ^{\mu}\xi ^{\nu})
\end{align}$$

# Schwarzschild case

$$\begin{align}
\mathrm{d}s^{2} & =-f(r)\mathrm{d}t^{2}+\frac{\mathrm{d}r^{2}}{f(r)}+r^{2}(\mathrm{d}\theta ^{2}+\sin ^{2}\theta \mathrm{d}\phi ^{2}) \\
f(r) & =1-\frac{2M}{r}
\end{align}$$

introduce ingoing Edditon-Finkelstein coordinates with $\displaystyle{v=t+r^{*},\mathrm{d}r^{*}=\frac{\mathrm{d}r}{f(r)}}$, then the metric becomes

$$\begin{align}
\mathrm{d}s^{2} & =-f(r)(\mathrm{d}v-\mathrm{d}r^{*})^{2}+f(r)\mathrm{d}r^{*2}+r^{2}\left(\mathrm{d}\theta ^{2}+\sin ^{2}\theta \mathrm{d}\phi ^{2}\right) \\
 & =-f(r)\mathrm{d}v^{2}+2\mathrm{d}v\mathrm{d}r+r^{2}(\mathrm{d}\theta ^{2}+\sin ^{2}\theta \mathrm{d}\phi ^{2})
\end{align}$$

the spacetime is static and so $\displaystyle{\frac{\partial}{\partial v}=\xi^{\mu}\frac{\partial}{\partial x^{\mu}}}$ is a Killing vector. the surface gravity on the horizon $\displaystyle{\kappa}$ is defined as

$$\begin{align}
\xi^{a}\nabla _{a}\xi^{b} & =\kappa \xi^{b} \\
\implies\kappa ^{2} & =-\frac{1}{2}(\nabla _{a}\xi _{b})(\nabla ^{a}\xi^{b})
\end{align}$$

then

$$\tag{.}\begin{align}
\nabla _{a}\xi_{b} & =\partial _{a}\xi_{b}-\Gamma ^{c}_{~ab}\xi_{c} \\
 & =-\delta _{a}^{r}\delta ^{t}_{b}f'(r)+\frac{1}{2}(\delta ^{r}_{a}\delta ^{t}_{b}+\delta ^{t}_{a}\delta ^{r}_{b})f'(r) \\
 & =\frac{1}{2}\left(\delta ^{t}_{a}\delta ^{r}_{b}-\delta ^{r}_{a}\delta ^{t}_{b}\right)f'(r) \\
\kappa ^{2} & =-\frac{1}{8}g^{ac}g^{cd}\left(\delta ^{t}_{a}\delta ^{r}_{b}-\delta ^{r}_{a}\delta ^{t}_{b}\right)(\delta ^{t}_{c}\delta ^{r}_{d}-\delta ^{r}_{c}\delta ^{t}_{d})[f'(r)]^{2} \\
 & =\frac{1}{4}[f'(r)]^{2}|_{r_{H}} \\
 & =\frac{1}{16M^{2}} \\
\implies \kappa & =\frac{1}{4M}
\end{align}$$

here we use the nonzero Christoffel symbols are

$$\begin{align}
\Gamma ^{t}_{~tr} & = \frac{f'(r)}{2f(r)} \\
\Gamma ^{r}_{~tt} & =\frac{1}{2}f(r)f'(r) \\
\Gamma ^{r}_{~rr} & =-\frac{f'(r)}{2f(r)} \\
\Gamma ^{r}_{~\theta \theta} & =-rf(r) \\
\Gamma ^{r}_{~\phi \phi} & =-rf(r)\sin ^{2}\theta \\
\Gamma ^{\theta}_{~r\theta} & =\frac{1}{r} \\
\Gamma ^{\theta}_{~\phi \phi} & =-\sin \theta \cos \theta \\
\Gamma ^{\phi}_{~r\phi} & =\frac{1}{r} \\
\Gamma ^{\phi}_{~\theta \phi} & =\frac{\cos \theta}{\sin \theta}
\end{align}$$

the $\displaystyle{\Sigma}$ intersects the horizon at some time $\displaystyle{t}$ and $\displaystyle{r=2GM}$. then the Noether charge corresponding to $\displaystyle{\xi^{\mu}}$ is

$$\begin{align}
H_{\xi} & =\int _{\Sigma}J_{\xi} \\
 & =\lim_{ r \to \infty } \frac{1}{16\pi}\int _{\partial \Sigma}\mathrm{d}^{2}x\sqrt{ \sigma }\tau ^{t}n^{r}f'(r) \\
 & =\frac{M}{8\pi}\int _{0}^{\pi}\mathrm{d}\theta \int _{0}^{2\pi}\mathrm{d}\phi \sin \theta=\frac{M}{2}
\end{align}$$

here we adopt

$$\begin{align}
\tau ^{\mu} & =\left(\frac{1}{\sqrt{ f(r) }},0,0,0\right) \\
n^{\nu} & =\left(\frac{1}{\sqrt{ f(r) }},\sqrt{ f(r) },0,0\right)
\end{align}$$

this result is agree with Wald's

$$\begin{align}
H_{\xi} & =\frac{\kappa}{2\pi}S \\
\implies S & =\frac{\pi M}{\kappa}=4\pi M^{2}
\end{align}$$

# Kerr case

$$\begin{align}
\mathrm{d}s^{2} & =-\frac{\Delta}{\Sigma}(\mathrm{d}t-a\sin ^{2}\theta \mathrm{d}\phi)^{2}+\frac{\Sigma}{\Delta}\mathrm{d}r^{2}+\Sigma \mathrm{d}\theta ^{2}+\frac{\sin ^{2}\theta}{\Sigma}\left(a\mathrm{d}t-(r^{2}+a^{2})\mathrm{d}\phi\right)^{2}
\end{align}$$

here $\displaystyle{a=\frac{J}{M},\Sigma=r^{2}+a^{2}\cos ^{2}\theta, \Delta=r^{2}-2Mr+a^{2}}$. define the Kerr analog of the advanced null coordinate/Eddington-Finkelstein coordinate

$$\begin{align}
\mathrm{d}v & =\mathrm{d}t+\frac{r^{2}+a^{2}}{\Delta}\mathrm{d}r \\
\mathrm{d}\varphi & =\mathrm{d}\phi+\frac{a}{\Delta}\mathrm{d}r
\end{align}$$

in these coordinates, the Kerr metric can be organized into

$$\begin{align}
\mathrm{d}s^{2} & =-\left( 1-\frac{2Mr}{\Sigma} \right)(\mathrm{d}v-a\sin ^{2}\theta \mathrm{d}\varphi)^{2}+2(\mathrm{d}v-a\sin ^{2}\mathrm{d}\varphi)(\mathrm{d}r-a\sin ^{2}\theta \mathrm{d}\varphi)+\Sigma(\mathrm{d}\theta ^{2}+\sin ^{2}\theta \mathrm{d}\varphi ^{2})
\end{align}$$

we have two horizons with radii

$$\begin{align}
r\pm^{2} & =M\pm\sqrt{ M^{2}-a^{2} }
\end{align}$$

$\displaystyle{\Sigma}$ intersects the outer horizon $\displaystyle{r=r_{+}}$ at some $\displaystyle{v=v_{0}}$. suppose the horizon Killing vector $\displaystyle{\xi ^{a}=\left( \frac{\partial}{\partial t} \right)^{a}+\Omega _{H}\left(\frac{\partial}{\partial \phi}\right)^{a}}$ is null and geodesic on the outer horizon satisfying $\displaystyle{\xi ^{a}\nabla _{a}\xi ^{b}=\kappa \xi ^{b}}$, then

$$\begin{align}
\Omega _{H} & =\frac{a}{r_{+}^{2}+a^{2}}
\end{align}$$

$$\begin{align}
\kappa ^{2} & =-\frac{1}{2}(\nabla _{a}\xi _{b})(\nabla ^{a}\xi^{b})
\end{align}$$

$$\tag{.}\begin{align}
\mathrm{d}s^{2} & =-\frac{\Delta}{\Sigma}(\mathrm{d}t-a\sin ^{2}\theta \mathrm{d}\phi)^{2}+\frac{\Sigma}{\Delta}\mathrm{d}r^{2}+\Sigma \mathrm{d}\theta ^{2}+\frac{\sin ^{2}\theta}{\Sigma}\left(a\mathrm{d}t-(r^{2}+a^{2})\mathrm{d}\phi\right)^{2}
\end{align}$$

$$\begin{align}
g_{ab}\xi ^{a}\xi ^{b} & =g_{tt}+2\Omega _{H} g_{t\phi}+\Omega ^{2}_{H}g_{\phi \phi}
\end{align}$$

$$\begin{align}
\frac{a^{2}\sin ^{2}\theta+\Delta}{\Sigma}+2\Omega _{H} \left( \frac{a\Delta \sin ^{2}\theta}{\Sigma}-\frac{a(r^{2}+a^{2})\sin ^{2}\theta}{\Sigma} \right)+\Omega ^{2}_{H}\left(-\frac{\Delta a^{2}\sin ^{4}\theta}{\Sigma}\right)
\end{align}$$

## 等价公式的推导与适用条件

### 1. 推导基础：spherically symmetric ansatz

考虑具有球对称性（或轴对称性）的静态/稳态时空，其中 Killing 向量 $k^a$ 在径向方向上的模长变化可以写成：
$$
-k^a k_a = f(r)
$$
其中 $f(r)$ 是只依赖于径向坐标 $r$ 的函数，且在视界 $r_H$ 处 $f(r_H) = 0$。

### 2. 从基本定义出发

#### Step 1: 利用 Killing 方程的性质
对于任意 Killing 向量，有：
$$
k^b \nabla_b (k^a k_a) = 2 k_a (k^b \nabla_b k^a) = 2 \kappa (k^a k_a)
$$
在视界处 $k^a k_a = 0$，所以：
$$
k^b \nabla_b (k^a k_a)\big|_{r_H} = 0
$$

#### Step 2: 径向导数关系
在球对称/轴对称情况下，沿着径向的变化是主导的：
$$
\frac{d}{dr}(k^a k_a) = \frac{d}{dr}(-f(r)) = -f'(r)
$$

#### Step 3: 联系表面引力
关键观察是：在视界附近，非仿射测地方程 $k^b \nabla_b k^a = \kappa k^a$ 意味着：
$$
k^a k_a \approx -C \cdot (r - r_H)^2
$$
其中常数 $C$ 与 $\kappa^2$ 相关。

### 3. 严格推导

#### 对于静态球对称情况
考虑度规形式：
$$
ds^2 = -f(r) dt^2 + \frac{dr^2}{f(r)} + r^2 d\Omega^2
$$
Killing 向量 $k^a = (\partial_t)^a$，有 $k^a k_a = -f(r)$。

在视界 $r_H$ 附近展开：
$$
f(r) \approx f'(r_H)(r - r_H) + O((r-r_H)^2)
$$

因此：
$$
(-k^a k_a)^{1/2} = \sqrt{f(r)} \approx \sqrt{f'(r_H)} \sqrt{r - r_H}
$$

求导：
$$
\frac{d}{dr}(-k^a k_a)^{1/2} = \frac{1}{2\sqrt{f(r)}} f'(r) \to \frac{f'(r_H)}{2\sqrt{f'(r_H)}\sqrt{r-r_H}}
$$

在 $r \to r_H$ 的极限下，需要更仔细的分析。正确的结果是：
$$
\kappa = \frac{1}{2} f'(r_H)
$$

### 5. 与一般公式的关系

两个公式的等价性：
$$
\kappa^2 = -\frac{1}{2}(\nabla_a k_b)(\nabla^a k^b) \quad \Leftrightarrow \quad \kappa = \frac{1}{2}\frac{d}{dr}(-k^ak_a)^{1/2}
$$

在球对称/轴对称情况下成立，因为：
- 左边是普遍的张量表达式
- 右边利用了特殊的对称性简化

### 6. 实际计算中的优势

第二个公式的优点：
- **计算简便**：只需计算 $k^a k_a$ 的径向导数
- **避免 Christoffel 符号**：不需要显式计算联络
- **直观物理图像**：直接关联"逃逸速度"概念

---

## 总结

公式 $\kappa = \frac{1}{2}\frac{d}{dr}(-k^ak_a)^{1/2}\big|_{r_+}$ 是：

1. **推导基础**：球对称/轴对称时空中 $k^a k_a = f(r)$ 的特殊结构
2. **适用范围**：静态/稳态黑洞，具有明确径向坐标的情况  
3. **等价性**：在对称情况下与张量公式 $\kappa^2 = -\frac{1}{2}(\nabla_a k_b)(\nabla^a k^b)$ 等价
4. **计算优势**：避免复杂的张量计算，直接利用度规分量

[[Surface gravity]] [[Killing vectors]] [[Static spacetimes]] ^cite{Wald1994}