## 约束系统完整分析（遵循“quantization of gauge systems.md”的 formalism）

### 模型与记号

变量与拉氏量：
$$
\begin{align}
S &= \int_{t_i}^{t_f}\!\mathrm{d}t\;L,\\
L(x,\dot x;y,\lambda) &= \tfrac12\dot x^{2}-\tfrac12\omega ^{2}x^{2}+\tfrac12 y^{2}-\lambda\, y\,\dot x.
\end{align}
$$

相空间坐标与正则对：$\,(x,p_x),(y,p_y),(\lambda,p_\lambda)$，基本泊松括号（沿用笔记记号 $[\,,\,]$ 表示 PB）：
$$
\begin{align}
[x,p_x]=1,\quad [y,p_y]=1,\quad [\lambda,p_\lambda]=1,\quad \text{其余为 }0.
\end{align}
$$

---

## Formalism Summary

- 主动量定义：$\,p_n=\partial L/\partial \dot q^n$；主约束由奇异 Hessian 导致；
- 总哈密顿量：$\,H_T=H_c+u^m\phi_m$；
- 一致性条件：$\,\dot\phi_m=[\phi_m,H_T]\approx0$ 产生次约束或定出乘子；
- 约束分类：一阶（first class, $\gamma$）vs. 二阶（second class, $\chi$）；
- Dirac 括号：$\,[F,G]_D=[F,G]-[F,\chi_\alpha]C^{\alpha\beta}[\chi_\beta,G]$，其中 $C_{\alpha\beta}=[\chi_\alpha,\chi_\beta]$；
- 自由度计数：$\#\text{d.o.f}=N-\#\text{FC}-\tfrac12\#\text{SC}$，$N$ 为正则对数。

---

## Completed Derivations

### 1) 正则动量与主约束

$$
\begin{align}
p_x&=\frac{\partial L}{\partial \dot x}=\dot x-\lambda y,\\
p_y&=\frac{\partial L}{\partial \dot y}=0,\qquad \Rightarrow\; \phi_1:=p_y\approx0,\\
p_\lambda&=\frac{\partial L}{\partial \dot\lambda}=0,\qquad \Rightarrow\; \phi_2:=p_\lambda\approx0.
\end{align}
$$

仅 $\dot x$ 出现，$\dot y,\dot\lambda$ 不出现，故产生两个主约束 $\phi_1,\phi_2$。

### 2) 规范哈密顿量与总哈密顿量

以 $\dot x=p_x+\lambda y$ 回代，有
$$
\begin{align}
H_c&=p_x\dot x-L\\
&=\tfrac12\,p_x^2+\tfrac12\,\omega^2 x^2-\tfrac12\,y^2+p_x\lambda y+\tfrac12\,\lambda^2 y^2\\
&=\tfrac12\,(p_x+\lambda y)^2+\tfrac12\,\omega^2 x^2-\tfrac12\,y^2.
\end{align}
$$

引入乘子 $u_y,u_\lambda$，
$$
\begin{align}
H_T\;=\;H_c+u_y\,p_y+u_\lambda\,p_\lambda.
\end{align}
$$

### 3) 次约束（保持主约束随时间的一致性）

利用 $\dot f=[f,H_T]$：
$$
\begin{align}
\dot p_y&=-\frac{\partial H_T}{\partial y}=y-\lambda p_x-\lambda^2 y\;\approx\;0\\
&\Rightarrow\;\phi_3:=\,(1-\lambda^2)\,y-\lambda p_x\;\approx\;0,\\[2mm]
\dot p_\lambda&=-\frac{\partial H_T}{\partial \lambda}=-(p_x y+\lambda y^2)\;\approx\;0\\
&\Rightarrow\;\phi_4:=\,y\,(p_x+\lambda y)\;\approx\;0.
\end{align}
$$

至此共有四条约束 $\{\phi_1,\phi_2,\phi_3,\phi_4\}$。

### 4) 约束代数与分类（第二类）

构造 $\,C_{ab}=[\phi_a,\phi_b]$（按顺序 $\phi_1=p_y,\phi_2=p_\lambda,\phi_3,\phi_4$）：

<details>
<summary>展开计算</summary>

$$
\begin{align}
[\phi_1,\phi_3]&=\lambda^2-1, & [\phi_1,\phi_4]&=-(p_x+2\lambda y),\\
[\phi_2,\phi_3]&=2\lambda y+p_x, & [\phi_2,\phi_4]&=-y^2,\\
[\phi_3,\phi_4]&=0, & [\phi_1,\phi_2]&=0.
\end{align}
$$

矩阵写成分块反对称形式
$$
C=\begin{pmatrix}
0 & A\\
-A^{\!T} & 0
\end{pmatrix},\quad
A=\begin{pmatrix}
\lambda^2-1 & -(p_x+2\lambda y)\\
2\lambda y+p_x & -y^2
\end{pmatrix}.
$$

$\det C=(\det A)^2$，而
$$
\det A=-(\lambda^2-1)\,y^2+(p_x+2\lambda y)^2\equiv\Delta.
$$
</details>

结论：$\Delta\neq0$ 的“正则区”上，$C$ 可逆，$\{\phi_a\}$ 构成一组二类约束；因此本系统无（生成自由函数的）一类约束与规范自由度。

自由度计数（$N=3$ 个正则对，FC=0，SC=4）：
$$
\#\text{d.o.f}=N-\#\text{FC}-\tfrac12\#\text{SC}=3-0-2=1.
$$

### 5) 乘子由一致性确定（无新的约束）

保持 $\phi_3,\phi_4$ 的一致性给出关于 $u_y,u_\lambda$ 的线性方程（在正则区可解）：
$$
\begin{align}
&(1-\lambda^2)\,u_y+(-2\lambda y-p_x)\,u_\lambda+\lambda\,\omega^2 x\;\approx\;0,\\
&(p_x+2\lambda y)\,u_y+y^2\,u_\lambda-\omega^2 x\,y\;\approx\;0.
\end{align}
$$
由于 $\Delta\neq0$，这两式解出 $u_y,u_\lambda$，因此不产生新的约束。

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

### 7) 量子化

采用 Dirac 方案：二类约束先消去再量子化，或等价地以 Dirac 括号替代 PB 后再施行 $[\,\ ,\,]\to \tfrac1{i\hbar}[\,\ ,\,]_D$。由于 $[x,p_x]_D=1$，最终对易关系为
$$
[\hat x,\hat p_x]=i\hbar,
$$
哈密顿算符
$$
\hat H=\tfrac12\,\hat p_x^{\,2}+\tfrac12\,\omega^2\hat x^{\,2},
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

