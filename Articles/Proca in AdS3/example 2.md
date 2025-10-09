## 约束系统完整分析（遵循“quantization of gauge systems.md”的 formalism）

### 模型与记号

变量与拉氏量：
$$
\begin{align}
S &= \int_{t_i}^{t_f}\!\mathrm{d}t\;L,\\
L(x,\dot x;y,\lambda) &= \tfrac12\dot x^{2}-\tfrac12\omega ^{2}x^{2}+\tfrac12 y^{2}-\lambda\, y\,\dot x.
\end{align}
$$

$$\tag{.}\begin{align}
(1-\lambda ^{2})\ddot{x}& =\omega ^{2}x
\end{align}$$

相空间坐标与正则对：$\,(x,p_x),(y,p_y),(\lambda,p_\lambda)$，基本泊松括号（沿用笔记记号 $[\,,\,]$ 表示 PB）：
$$
\begin{align}
[x,p_x]=1,\quad [y,p_y]=1,\quad [\lambda,p_\lambda]=1,\quad \text{其余为 }0.
\end{align}
$$

# covariant phase space formalism

take a variation of the action, we get the eoms and presymplectic potential

$$\begin{align}
\delta S & =\int ^{t_{f}}_{t_{i}}\left(E_{x}\delta x+E_{y}\delta y\right)+\theta|_{t_{f}}-\theta|_{t_{i}} \\
E_{x} & =-\ddot{x}-\omega ^{2}x+\lambda \dot{y} \\
E_{y} & =y-\lambda \dot{x} \\
\theta & =(\dot{x}-\lambda y)\delta x
\end{align}$$

take a variation of the presymplectic potential, we get the presymplectic form

$$\begin{align}
\omega & =(\delta \dot{x}-\lambda \delta y)\wedge \delta x
\end{align}$$

the general solution of the eoms is

$$\begin{align}
x & =\frac{1}{\sqrt{ 2\omega'(1-\lambda ^{2}) }}(ae^{-i\omega' t}+a^{\dagger}e^{i\omega't}) \\
y & =\frac{i\omega'\lambda}{\sqrt{ 2\omega'(1-\lambda ^{2}) }}(-ae^{-i\omega't}+a^{\dagger}e^{i\omega't})
\end{align}$$

where $\displaystyle{\omega'=\frac{\omega ^{2}}{1-\lambda ^{2}}}$. under this parametrization, the presymplectic form becomes

$$\begin{align}
\omega & =i\delta a^{\dagger}\wedge \delta a
\end{align}$$

which gives the following standard Poisson bracket

$$\begin{align}
\{a,a^{\dagger}\} & =-i
\end{align}$$

# Dirac formalism

the canonical momenta are given by

$$\begin{align}
p_{x} & =\frac{\delta S}{\delta \dot{x}}=\dot{x}-\lambda y \\
p_{y} & =\frac{\delta S}{\delta \dot{y}}=0
\end{align}$$

we get a primary constraint $\displaystyle{\phi _{1}=p_{y}\approx 0}$. the total Hamiltonian is given by

$$\begin{align}
H_{\text{tot}} & =H+u\phi _{1} \\
 & =p_{x}\dot{x}-L+u\phi _{1} \\
 & =\frac{1}{2}(p_{x}+\lambda y)^{2}+\frac{1}{2}\omega ^{2}x^{2}-\frac{1}{2}y^{2}+up_{y}
\end{align}$$

the time evolution of primary constraint $\displaystyle{\phi _{1}}$ should vanish weakly, which gives a secondary constraint

$$\begin{align}
\phi _{2}=\dot{\phi}_{1} & =\{\phi _{1},H_{\text{tot}}\} \\
 & =(1-\lambda ^{2})y-\lambda p_{x}\approx 0
\end{align}$$

since

$$\begin{align}
\left\{\phi _{1},\phi _{2}\right\} & =\lambda ^{2}-1\neq 0
\end{align}$$

this is a system with 2 second-class constraints. to ensure the consistency of $\displaystyle{\phi _{2}}$, we have

$$\begin{align}
\dot{\phi}_{2} & =(1-\lambda ^{2})u+\lambda \omega ^{2}x\implies u=\frac{\lambda\omega ^{2}x}{\lambda ^{2}-1}
\end{align}$$

thus the Hamiltonian is

$$\begin{align}
H' & =\frac{1}{2}(p_{x}+\lambda y)^{2}+\frac{1}{2}\omega ^{2}x^{2}-\frac{1}{2}y^{2}+\frac{\lambda \omega ^{2}x}{\lambda ^{2}-1}p_{y}
\end{align}$$

the Poisson brackets are replaced by Dirac brackets


### 6) Dirac 括号与约化相空间

在二类约束集 $\{\phi_a\}$ 上定义 Dirac 括号
$$
[F,G]_D=[F,G]-[F,\phi_a]\,C^{ab}\,[\phi_b,G].
$$

对物理观测量 $(x,p_x)$，可直接验证
$$
\begin{align}
[x,\phi_a]&=(0,\,0,\,-\lambda,\,y),\\
[\phi_a,p_x]&=(0,\,0,\,0,\,0)\;\Rightarrow\;[x,p_x]_D=[x,p_x]=1.
\end{align}
$$
因此在约化相空间上，$x,p_x$ 仍为正则对。进一步，在正则区解二类约束得 $y=0,\,\lambda=0$（详见“物理解读”），将其强加到 $H_c$ 上得到物理哈密顿量
$$
H_{\text{phys}}=\tfrac12\,p_x^2+\tfrac12\,\omega^2 x^2.
$$

$$\begin{align}
\left\{x,p_{x}\right\}_{\text{D}}=1
\end{align}$$

### 7) 量子化

采用 Dirac 方案：二类约束先消去再量子化，或等价地以 Dirac 括号替代 PB 后再施行 $[\,\ ,\,]\to \tfrac1{i\hbar}[\,\ ,\,]_D$。由于 $[x,p_x]_D=1$，最终对易关系为
$$
[\hat x,\hat p_x]=i\hbar,
$$
哈密顿算符
$$
\hat H=\tfrac12\,\hat p_x^{\,2}+\tfrac12\,\frac{\omega^2}{1-\lambda ^{2}}\hat x^{\,2},
$$
即标准一维谐振子。

---

## Physics Interpretation

1) $y,\lambda$ 为从属变量：$\phi_3,\phi_4$ 强制它们为零（在正则区）。从欧拉-拉格朗日方程亦可看出
$$
\frac{\partial L}{\partial y}=y-\lambda\dot x=0,\qquad
\frac{\partial L}{\partial \lambda}=-y\dot x=0
$$
蕴含 $y=0$，若 $\dot x\neq0$ 则进而 $\lambda=0$，动力学退化为单自由度 $x$ 的谐振子：$\ddot x+\omega^2 x=0$。

2) 无规范对称：约束矩阵可逆（除测度为零的奇异子流形），因此所有约束为二类，不生成规范变换。

3) 自由度计数为 1：与物理图像一致——系统本质上是将一个谐振子与两个无动力学的从属变量耦合后再由约束消去。

---

## Verification Results

- 维度/单位检查：取质量 $m=1$，$[x]=\text{长}$，$[\omega]=\text{时}^{-1}$，$[L]=\text{能}$，$\lambda,y$ 与 $\dot x$ 的耦合项维度一致，$H_{\text{phys}}$ 具有能量维度。
- 经典一致性：用 $H_{\text{phys}}$ 的哈密顿方程得 $\dot x=p_x,\;\dot p_x=-\omega^2 x$，即 $\ddot x+\omega^2 x=0$，与拉氏形式的 E-L 方程一致。
- 约束矩阵行列式：$\det C=\Delta^2$，在正则区 $\Delta\neq0$，确保 Dirac 括号良定义。

---

## Identified Issues（不规则子流形与注记）

- 奇异子流形 $\Delta=0$：当 $y=0$ 且 $p_x=0$（或更一般地 $\lambda^2=1$ 与 $p_x+2\lambda y=0$）时，$C$ 退化，约束集不再是良好的二类系统，出现分支/不规则性。这些点不影响一般解的物理内容，但在严格几何化处理时应排除或单独讨论（见“geometry of the constraint surface”小节的正则性假设）。
- 乘子 $u_y,u_\lambda$：在正则区由一致性唯一确定；在奇异子流形上可能未定，对应非一般初值的边缘情形。

---

## 小结

- 约束集 $\{p_y,\,p_\lambda,\,(1-\lambda^2)y-\lambda p_x,\,y(p_x+\lambda y)\}$ 在正则区为二类；
- 约化后只剩一个正则对 $(x,p_x)$，物理哈密顿量为谐振子 $\tfrac12 p_x^2+\tfrac12\omega^2 x^2$；
- Dirac 括号在物理观测量上与普通 PB 一致：$[x,p_x]_D=1$；
- 量子化得到标准一维谐振子谱系。

