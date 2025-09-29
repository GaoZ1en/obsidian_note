$$\begin{align}
S & =\int ^{t_{f}}_{t_{i}}\left(\frac{1}{2}A^{ab}\dot{x}_{a}\dot{x}_{b}+\frac{1}{2}B^{\alpha \beta}\phi _{\alpha}\phi _{\beta}-C^{\alpha a}\phi _{\alpha}\dot{x}_{a}\right)
\end{align}$$

assume $\displaystyle{A^{ab},B^{\alpha \beta},C^{\alpha a}}$ have no time dependence and good properties

# Dirac formalism

$$\begin{align}
p^{a} & =\frac{\partial L}{\partial \dot{x}_{a}}=A^{ab}\dot{x}_{b}-C^{\alpha a}\phi _{\alpha} \\
p^{\alpha} & =\frac{\partial L}{\partial \phi _{\alpha}}=0
\end{align}$$

then we have primary constraints $\displaystyle{\varphi_{1}^{\alpha}=p^{\alpha}=0}$. introduce Lagrange multipliers $\displaystyle{\lambda _{\alpha}}$, the total Hamiltonian is

$$\begin{align}
H & =p^{a}\dot{x}_{a}-L+\lambda _{\alpha}\varphi ^{\alpha} \\
 & =\frac{1}{2}(A^{-1})_{ab}(p^{a}+C^{\alpha a}\phi _{\alpha})(p^{b}+C^{\beta b}\phi _{\beta})-\frac{1}{2}B^{\alpha \beta}\phi _{\alpha}\phi _{\beta}+\lambda _{\alpha}p^{\alpha}
\end{align}$$

the consistency condition of primary constraints gives secondary constraints

$$\begin{align}
\dot{\varphi} _{1}^{\alpha} & =\left\{p^{\alpha},H\right\}=-\frac{\partial H}{\partial \phi _{\alpha}} \\
 & =B^{\alpha \beta}\phi _{\beta}-(A^{-1})_{ab}C^{\alpha a}(p^{b}+C^{\beta b}\phi _{\beta})
\end{align}$$

the secondary constraints are $\displaystyle{\varphi _{2}^{\alpha}=B^{\alpha \beta}\phi _{\beta}-(A^{-1})_{ab}C^{\alpha a}(p^{b}+C^{\beta b}\phi _{\beta})}$. the consistency condition of secondary constraints gives

$$\begin{align}
\dot{\varphi} _{2}^{\alpha} & =\left\{\varphi _{2}^{\alpha},H\right\} \\
 & =(B^{\alpha \beta}-(A^{-1})_{ab}C^{\alpha a}C^{\beta b})\lambda _{\beta}
\end{align}$$

which gives the Lagrange multipliers $\displaystyle{\lambda _{\beta}=0}$. the Poisson brackets between the constraints are

$$\begin{align}
\left\{\varphi _{1}^{\alpha},\varphi _{1}^{\beta}\right\} & =0 \\
\left\{\varphi _{1}^{\alpha},\varphi _{2}^{\beta}\right\} & =(A^{-1})_{ab}C^{\alpha a}C^{\beta b}-B^{\alpha \beta}:= \Delta ^{\alpha \beta} \\
\left\{\varphi _{2}^{\alpha},\varphi _{2}^{\beta}\right\} & =0
\end{align}$$

then the Poisson brackets should be replaced with Dirac brackets

$$\begin{align}
\left\{f,g\right\}_{\text{Dirac}} & =\left\{f,g\right\}+\left\{f,\varphi _{i}\right\}(C^{-1})^{ij}\left\{\varphi _{j},g\right\}
\end{align}$$

where the constraint matrix $\displaystyle{C_{ij}=\left\{\varphi _{i},\varphi _{j}\right\}}$ is

$$\begin{align}
C^{\alpha \beta} & =\begin{pmatrix}
0 & \Delta ^{\alpha \beta} \\
-\Delta ^{\alpha \beta} & 0
\end{pmatrix} \\
(C^{-1})_{\alpha \beta} & =\begin{pmatrix}
0 & -(\Delta ^{-1})_{\alpha \beta} \\
(\Delta ^{-1})_{\alpha \beta} & 0 \\
\end{pmatrix}
\end{align}$$

then the nontrivial Dirac brackets are

$$\begin{align}
\left\{x_{a},p^{b}\right\} & =\delta _{a}^{b}
\end{align}$$

$$\begin{align}
\left\{x_{a},p^{b}\right\}_{\text{Dirac}} & =\delta ^{b}_{a}+\left\{x_{a},\varphi _{i}^{\alpha}\right\}(C^{-1})^{ij}_{\alpha \beta}\left\{\varphi ^{\beta}_{j},p^{b}\right\}
\end{align}$$

$$\tag{.}\begin{align}
\varphi _{1}^{\alpha} & =p^{\alpha} \\
\varphi _{2}^{\alpha} & =B^{\alpha \beta}\phi _{\beta}-(A^{-1})_{ab}C^{\alpha a}(p^{b}+C^{\beta b}\phi _{\beta})
\end{align}$$

# CPS formalism

$$\begin{align}
S & =\int ^{t_{f}}_{t_{i}}\left(\frac{1}{2}A^{ab}\dot{x}_{a}\dot{x}_{b}+\frac{1}{2}B^{\alpha \beta}\phi _{\alpha}\phi _{\beta}-C^{\alpha a}\phi _{\alpha}\dot{x}_{a}\right)
\end{align}$$

take a variation

$$\begin{align}
\delta S & =\int ^{t_{f}}_{t_{i}}E^{a}\delta x_{a}+E^{\alpha}\delta \phi _{\alpha}+\theta \Big|^{t_{f}}_{t_{i}} \\
E^{a} & =-(A^{ab}\ddot{x}_{b}-C^{\alpha a}\dot{\phi}_{\alpha}) \\
E^{\alpha} & =B^{\alpha \beta}\phi _{\beta}-C^{\alpha a}\dot{x}_{a} \\
\theta & =(A^{ab}\dot{x}_{b}+C^{\alpha a}\dot{\phi}_{\alpha})\delta x_{a} \\
\omega & =(A^{ab}\delta \dot{x}_{b}+C^{\alpha a}\delta \dot{\phi}_{\alpha})\wedge \delta x_{a}
\end{align}$$

the eom gives the following solutions

$$\begin{align}
x_{a} & =P_{a}t+X_{a} \\
\phi _{\beta} & =(B^{-1})_{\alpha \beta}C^{\beta b}P_{b}
\end{align}$$

then the symplectic form becomes

$$\begin{align}
\omega & =A^{ab}\delta P_{a}\wedge \delta X_{b}
\end{align}$$

the Hamilton flow for $\displaystyle{x_{a}}$ and $\displaystyle{p^{a}:=A^{ab}\dot{x}_{b}-C^{\alpha a}\phi _{\alpha}}$ are

$$\begin{align}
X_{x_{a}} & = \int \mathrm{d}t \frac{\delta x_{a}}{\delta X_{b}} \frac{\delta}{\delta(A^{bc}P_{c})}-\frac{\delta x_{a}}{\delta(A^{bc}P_{b})} \frac{\delta}{\delta X_{c}} \\
 & =(A^{-1})_{ab} \left( \frac{\delta}{\delta P_{b}}- t \frac{\delta}{\delta X_{b}}\right) \\
X_{p^{a}} & =\int \mathrm{d}t (A^{-1})_{bc}\left( \frac{\delta p^{a}}{\delta X_{b}} \frac{\delta}{\delta P_{c}}-\frac{\delta p^{a}}{\delta P_{c}} \frac{\delta}{\delta X_{b}} \right) \\
 & =-\left(\delta ^{a}_{b}-(A^{-1})_{bc}(B^{-1})_{\alpha \beta}C^{\alpha a}C^{\beta c}\right) \frac{\delta}{\delta X_{b}}
\end{align}$$

and the Poisson brackets between $\displaystyle{x_{a}}$ and $\displaystyle{p^{b}}$ are

$$\begin{align}
\left\{x_{a},p^{b}\right\} & =X_{x_{a}}\cdot X_{p^{b}}\cdot \omega \\
 & =\delta ^{b}_{a}-(A^{-1})_{ac}(B^{-1})_{\alpha \beta}C^{\alpha b}C^{\beta c}
\end{align}$$

???

### 约束矩阵构造

定义约束集合：$\{\Phi_A\} = \{\Phi_\alpha^{(1)}, \Phi_\alpha^{(2)}\} = \{\pi_\alpha, \Phi_\alpha^{(2)}\}$

约束矩阵元素：
$$\Delta_{AB} = \{\Phi_A, \Phi_B\}$$

具体计算：
- $\{\pi_\alpha, \pi_\beta\} = 0$
- $\{\pi_\alpha, \Phi_\beta^{(2)}\} = -\left[(A^{-1})^{ab}C^{\gamma}_aC^{\alpha}_b - B^{\alpha\gamma}\right]\delta_\alpha^\beta = -M^{\alpha\beta}$
- $\{\Phi_\alpha^{(2)}, \Phi_\beta^{(2)}\} = $ （较复杂，包含对易子结构）

约束矩阵形式：
$$\Delta = \begin{pmatrix}
0 & -M^{\alpha\beta} \\
M^{\alpha\beta} & \{\Phi_\alpha^{(2)}, \Phi_\beta^{(2)}\}
\end{pmatrix}$$

其中：
$$M^{\alpha\beta} = (A^{-1})^{ab}C^{\gamma}_aC^{\alpha}_b - B^{\alpha\gamma}$$

### Dirac括号公式

对于任意两个相空间函数 $F$ 和 $G$：
$$\{F, G\}_D = \{F, G\} - \{F, \Phi_A\}(\Delta^{-1})^{AB}\{\Phi_B, G\}$$

### $x_a$ 和 $p^b$ 的Dirac括号

**基本Dirac括号**：

$$\{x_a, x_b\}_D = 0$$

$$\{p_a, p_b\}_D = 0$$

$$\{x_a, p^b\}_D = \delta_a^b - \{x_a, \Phi_A\}(\Delta^{-1})^{AB}\{\Phi_B, p^b\}$$

由于 $\{x_a, \pi_\alpha\} = 0$ 和 $\{x_a, \Phi_\alpha^{(2)}\} = -(A^{-1})^{bc}C^\alpha_c\delta_a^b$，

以及 $\{\pi_\alpha, p^b\} = 0$ 和 $\{\Phi_\alpha^{(2)}, p^b\} = (A^{-1})^{bc}C^\alpha_c$，

**最终结果**：

$$\boxed{\{x_a, p^b\}_D = \delta_a^b + (A^{-1})^{bc}C^\alpha_c(M^{-1})_{\alpha\beta}(A^{-1})^{de}C^\beta_e\delta_a^d}$$

其中 $(M^{-1})_{\alpha\beta}$ 是矩阵 $M^{\alpha\beta}$ 的逆矩阵。

## 物理解释

这个结果表明约束的存在修正了标准的 [[泊松括号]]。修正项反映了：
1. 耦合项 $C^{\alpha a}\phi_\alpha\dot{x}_a$ 导致的 $x_a$ 和 $p_b$ 之间的非平凡关联
2. 约束面上的几何结构对相空间对称性的影响

[[开放问题]]：
- 当 $M^{\alpha\beta}$ 不可逆时需要进一步迭代寻找更高级约束
- 量子化时需要考虑约束的算符排序问题

^cite{Dirac1964,Henneaux1992}