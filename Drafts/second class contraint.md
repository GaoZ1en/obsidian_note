## Second class constraint in path integral

我们先把问题说清楚：

> 设体系只有第二类约束 $\varphi_i(\phi^a,\pi_a)=0$，在哈密顿形式的路径积分里，配分函数写成
> $$
> Z
> =\int \mathcal{D}\phi ^{a}\,\mathcal{D}\pi _{a}
> \prod _{i}\delta(\varphi _{i})
> \det\bigl(\{\varphi _{i},\varphi _{j}\}_{\mathrm{PB}}\bigr)^{1/2}
> \exp\Bigl( i \int \mathrm{d}^{d}x\, (\pi _{a}\dot\phi ^{a}-H[\phi ^{a},\pi _{a}])\Bigr).
> $$
> 那么在 **Lagrangian path integral** 里如何处理第二类约束？

要点：

1. 第二类约束意味着 $\{\varphi_i,\varphi_j\}$ 在约束面上是可逆的。
2. 这等价于说约束可以用来**解出一部分正则变量**（某些 $\phi,\pi$），从而把相空间积分缩到一个真正的希尔伯特空间上。
3. 在 Lagrangian 形式中，这通常表现为：
	- 非退化的速度–动量关系，但带有约束；
	- 或一个非平凡的配置空间测度（类似 Faddeev–Popov 行列式，但这里没有规范对称性，只是几何上的雅可比）。

下面分几步说明 Hamiltonian 形式和 Lagrangian 形式之间的关系。

---

### 1. 从哈密顿路径积分出发

只考虑只含第二类约束的体系（没有第一类约束，没有规范对称性），其相空间路径积分是（你写的那一式）

$$\begin{align}
Z =\int \mathcal{D}\phi ^{a}\,\mathcal{D}\pi _{a} \prod _{i}\delta(\varphi _{i}) \det\bigl(\{\varphi _{i},\varphi _{j}\}_{\mathrm{PB}}\bigr)^{1/2} \exp\Bigl( i \int \mathrm{d}t\, (\pi _{a}\dot\phi ^{a}-H[\phi ^{a},\pi _{a}])\Bigr).
\end{align}$$

其中

- $\varphi_i(\phi,\pi)=0$ 是一组 **第二类约束**，

$$\begin{align}
C_{ij}(z) := \{\varphi_i,\varphi_j\}_{\rm PB},\qquad \det C_{ij} \neq 0 \text{ 在约束面上}.
\end{align}$$

- $\det C_{ij}^{1/2}$ 是在相空间上实施约束时的雅可比因子，它确保从普遍 PB 到 Dirac 括号的过渡在量子理论中是自洽的。

**物理含义：**
可以选定一组正则变量把约束写成

$$\begin{align}
\varphi_i(q,p) = 0 \quad \Rightarrow \quad ext{用它们解出一部分 $q,p$，只剩下“物理自由度”的相空间。}
\end{align}$$

行列式因子就是从“原始相空间测度”
$\prod dq\,dp$
映射到“约化相空间测度”时的雅可比。

---

### 2. Lagrangian 路径积分：直接从 $L(\phi,\dot\phi)$ 出发

通常我们写 Lagrangian 路径积分为

$$\begin{align}
Z = \int \mathcal{D}\phi\, \exp\Bigl(i S[\phi]\Bigr), \qquad S[\phi] = \int dt\, L(\phi,\dot\phi).
\end{align}$$

对一般非约束系统，我们可以通过高斯积分把哈密顿形式积分掉动量：

$$\begin{align}
Z = \int \mathcal{D}\phi\,\mathcal{D}\pi\; e^{i\int (\pi\dot\phi - H)} \longrightarrow \int \mathcal{D}\phi\, e^{i S[\phi]}.
\end{align}$$

**含第二类约束时**，额外的结构是：

1. 在哈密顿形式中有 $\delta(\varphi_i)$ 和 $\det C_{ij}^{1/2}$；
2. 当我们用约束去**解出被约束的动量/坐标**并对被消去的变量进行高斯积分或者 δ-函数积分时，它们会**变成对配置空间测度的修正**，即

$$\begin{align}
\mathcal{D}\phi\, \mu[\phi]\, e^{i S_{\rm eff}[\phi]}
\end{align}$$

	这里 $\mu[\phi]$ 含有原来 $\det C_{ij}^{1/2}$ 的信息。

这说明：在 Lagrangian 形式下，第二类约束一般不能简单地“消失”，而是体现在

- 或者 Lagrangian 本身变成 **非局域** 的 $L_{\rm eff}(\phi,\dot\phi,\text{更高阶时间导数},\dots)$；
- 或者度量（测度）$\mathcal{D}\phi$ 变成带有一个非平凡因子的 $\mathcal{D}\phi\, \mu[\phi]$。

换句话说：

> **Lagrangian 形式中对第二类约束的处理** =
> 在相空间中先利用 $\varphi_i=0$ 把约束自由度消去，并保留由 $\det\{\varphi,\varphi\}$ 产生的测度修正；把剩下的自由度写成一个等价的 Lagrangian 有效作用 $S_{\rm eff}[\phi]$。

---

### 3. 一点更技术性的说法：从相空间到配置空间

可以把过程写得更正式一点。设原始相空间坐标为 $z^A=(\phi^a,\pi_a)$，约束 $\varphi_i(z)=0$ 是第二类。我们想把

$$\begin{align}
Z = \int \mathcal{D}z\, \prod_i\delta(\varphi_i)\, \det\{\varphi_i,\varphi_j\}^{1/2} \exp\Bigl(i\int dt\,(\pi_a\dot\phi^a - H)\Bigr)
\end{align}$$

写成纯配置变量的积分。

在局部可以选坐标 $(\xi^\alpha,\eta^i)$，使得

$$\begin{align}
\varphi_i = \eta^i, \qquad i=1,\dots,2m
\end{align}$$

（因为第二类约束个数一定是偶数），且约束面只是 $\eta^i=0$ 的子流形。此时

$$\begin{align}
\prod_i\delta(\varphi_i)\, \det\{\varphi_i,\varphi_j\}^{1/2}\,\mathcal{D}z
\;\sim\; \mathcal{D}\xi\,
\end{align}$$

也就是说，$\det\{\varphi,\varphi\}$ 正好补偿了从 $z=(\xi,\eta)$ 到约化坐标 $\xi$ 的雅可比，使得

$$\begin{align}
Z = \int \mathcal{D}\xi\; \exp\Bigl(i\int dt\, \bigl[ \pi_a(\xi)\,\dot\phi^a(\xi) - H_\mathrm{red}(\xi) \bigr]\Bigr).
\end{align}$$

然后再像无约束那样，把 $\pi_a(\xi)$ 对应的变量积分掉，得到

$$\begin{align}
Z = \int \mathcal{D}\phi_{\rm phys}\; \mu[\phi_{\rm phys}]\, e^{i S_{\rm eff}[\phi_{\rm phys}]},
\end{align}$$

其中

- $\phi_{\rm phys}$ 是只包含**物理自由度**的场变量，
- $\mu[\phi_{\rm phys}]$ 是由原来的测度和 $\det\{\varphi,\varphi\}^{1/2}$ 共同产生的因子。

所以：如果你**从一开始就直接写一个只含物理自由度的 Lagrangian**（把约束强行解掉以后再 Legendre 变换回来），那么

> Lagrangian 路径积分就是
> $$
> Z = \int \mathcal{D}\phi_{\rm phys}\, e^{i S_{\rm phys}[\phi_{\rm phys}]},
> $$
> 其中 $S_{\rm phys}$ 对应的经典哈密顿形式自动包含了 Dirac 括号；此时第二类约束已经“集成”进 $S_{\rm phys}$ 里了。

而如果你是**从含有冗余变量的 Lagrangian 出发**，想在 Lagrangian 形式里“显式地加上第二类约束的 $\det$ 因子”，那就比较别扭：

- 因为约束自然是出现在相空间 PB 里；
- 你必须要先把 Legendre 变换和约束分析在哈密顿形式中做完，然后再回到配置空间。

---

### 4. 一个简单玩具例子（机械系统）

为了更直观，考虑一个有限维系统，Lagrangian

$$\begin{align}
L(q,\dot q,\lambda) = \tfrac12 M_{ab}\,\dot q^a\dot q^b - V(q) + \lambda_i f^i(q,\dot q)
\end{align}$$

这里 $\lambda_i$ 是拉格朗日乘子，$f^i(q,\dot q)=0$ 会产生一组约束。通常：

1. 若 $f^i$ 只依赖于 $q$，并且对应的约束是 second class，则在哈密顿形式中会产生一组第二类约束 $\varphi_i(q,p)=0$；
2. 对 $p$ 做 Legendre 变换时，我们发现某些 $p$ 不是独立的，而是被 $\varphi_i=0$ 限制；
3. 路径积分中

$$\begin{align}
Z = \int \mathcal{D}q\,\mathcal{D}p\,\mathcal{D}\lambda\; \delta(\varphi_i)\det\{\varphi_i,\varphi_j\}^{1/2} e^{i\int (p\dot q - H)}.
\end{align}$$

若我们先对 $p,\lambda$ 积分，会得到

$$\begin{align}
Z = \int \mathcal{D}q\; \mu[q]\, e^{i S_{\rm eff}[q]},
\end{align}$$

这里 $S_{\rm eff}[q]$ 是把约束代入后得到的有效 Lagrangian，对应的是只含物理自由度、带某种非局域项或复杂相互作用的理论；$\mu[q]$ 是从 $\delta(\varphi)$ 和 $\det\{\varphi,\varphi\}$ 生成的测度。

在实践中，如果我们能**显式解出约束**，把 $q$ 拆成 $(q_{\rm phys}, q_{\rm cons})$，再把 $q_{\rm cons}$ 用 $q_{\rm phys}$ 表示并代回 Lagrangian，常常可以把 $\mu[q]$ 合并进重定义过的场变量里，最后得到一个看起来“普通”的 Lagrangian。

---

### 5. 总结性回答

你问的那句话可以这样总结：

1. **在哈密顿路径积分**里，第二类约束通过

$$\begin{align}
\prod_i\delta(\varphi_i)\, \det\{\varphi_i,\varphi_j\}^{1/2}
\end{align}$$

	明确地实现在测度中。
2. **在拉格朗日路径积分**里，若你只用只含物理自由度的 Lagrangian $L_{\rm phys}(\phi_{\rm phys},\dot\phi_{\rm phys})$，那第二类约束已经在构造这个 $L_{\rm phys}$ 的过程中被“集成”进去了：
	- 它们体现在 Lagrangian 的非平庸形式，以及对应的等效哈密顿结构中（Dirac 括号代替 PB）。
3. 如果你坚持从含冗余自由度、带拉格朗日乘子的 Lagrangian 出发去做路径积分，那么：
	- 必须先在哈密顿形式里分析约束、写出上面的相空间路径积分；
	- 利用约束积分掉多余变量；
	- 再把结果重写成纯配置变量的积分。这一步通常会给出一个

$$\begin{align}
Z = \int \mathcal{D}\phi\, \mu[\phi] \exp\bigl(i S_{\rm eff}[\phi]\bigr),
\end{align}$$

	  其中 $\mu[\phi]$ 就是 $\det\{\varphi,\varphi\}^{1/2}$ 在配置空间中的“影子”。

换个更物理的说法：

> **第二类约束在 Lagrangian path integral 里的处理本质上就是：**
> 先在相空间中用约束把“非物理自由度”真正消掉（并带上雅可比因子），得到只含物理自由度的有效作用，再用这个有效作用做普通的 Lagrangian 路径积分。

如果后面你有具体的 toy model（比如一个带 spin–orbit 约束的粒子、或一个简单的 second class 约束场论），可以在这里再加一节具体算一遍，会更直观。
