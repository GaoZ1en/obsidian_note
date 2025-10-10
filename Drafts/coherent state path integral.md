## Coherent-state path integral for the harmonic oscillator partition function

本节按照相干态路径积分（bosonic coherent states）推导一维量子简谐振子的配分函数。采用自然单位 $\hbar=k_B=1$，$\beta=1/T>0$。

## Formalism Summary

- 谐振子哈密顿量与产生湮灭算符：
$$
\begin{align}
H 
&= \omega\Big(a^{\dagger}a+\tfrac12\Big),\quad [a,a^{\dagger}]=1.
\end{align}
$$
- 相干态 $\lvert z\rangle$ 为 $a\lvert z\rangle=z\lvert z\rangle$ 的本征态，具有分辨率：
$$
\begin{align}
\int \frac{\mathrm{d}^2 z}{\pi}\, e^{-|z|^2}\,\lvert z\rangle\langle z\rvert=\mathbf{1},\qquad
\langle z'\vert z\rangle=\exp\Big(-\tfrac{1}{2}|z'|^2-\tfrac{1}{2}|z|^2+\bar z' z\Big).
\end{align}
$$
- 规范（哈密顿量）采用 normal-ordered 形式分解：
$$
H=:H:+\tfrac{\omega}{2},\qquad :H:=\omega\,a^{\dagger}a.
$$
对应配分函数 $Z=\mathrm{Tr}\,e^{-\beta H}=e^{-\beta\omega/2}\,Z_{\text{n.o.}}$，其中 $Z_{\text{n.o.}}=\mathrm{Tr}\,e^{-\beta :H:}$ 由相干态路径积分给出。

## Completed Derivations

### Derivation 1: 相干态路径积分表达式与作用量

**Physical Context**: Euclidean 时间 $\tau\in[0,\beta]$，bosonic 周期边界条件（PBC）$z(0)=z(\beta)$。

**Mathematical Development**:
1) Trotter 分割与恒等分解：
$$
\begin{align}
Z_{\text{n.o.}}&=\mathrm{Tr}\,e^{-\beta\,\omega a^{\dagger}a}
=\int \frac{\mathrm{d}^2 z_0}{\pi}e^{-|z_0|^2}\,\langle z_0\vert e^{-\beta\,\omega a^{\dagger}a}\vert z_0\rangle\\
&=\lim_{N\to\infty}\int \prod_{k=0}^{N-1}\Big[\frac{\mathrm{d}^2 z_k}{\pi}e^{-|z_k|^2}\Big]\prod_{k=0}^{N-1}\langle z_{k+1}\vert e^{-\Delta\tau\,\omega a^{\dagger}a}\vert z_k\rangle,
\end{align}
$$
其中 $\Delta\tau=\beta/N$，并取 $z_N\equiv z_0$ 实现迹。

2) 短时近似与 normal-order 性质给出矩阵元：
$$
\begin{align}
\langle z_{k+1}\vert e^{-\Delta\tau\,\omega a^{\dagger}a}\vert z_k\rangle
\approx \exp\Big(\bar z_{k+1} z_k -\tfrac{1}{2}|z_{k+1}|^2-\tfrac{1}{2}|z_k|^2-\Delta\tau\,\omega\,\bar z_{k+1} z_k\Big).
\end{align}
$$
整理指数并取连续极限得到 Euclidean 作用量
$$
\begin{align}
S_E[\bar z,z]=\int_0^\beta \!\mathrm{d}\tau\,\Big(\bar z\,\partial_\tau z+\omega\,\bar z z\Big),\qquad z(0)=z(\beta).
\end{align}
$$
因此
$$
Z_{\text{n.o.}}=\int_{z(0)=z(\beta)}\!\mathcal{D}\bar z\,\mathcal{D}z\;\exp\Big(-\int_0^\beta \mathrm{d}\tau\,[\bar z\,\partial_\tau z+\omega\,\bar z z]\Big).
$$

<details>
<summary>离散到连续的细节</summary>
将离散指数项 $\sum_k[-\bar z_{k+1}(z_{k+1}-z_k)-\Delta\tau\,\omega\,\bar z_{k+1}z_k]$ 在 $\Delta\tau\to0$ 下识别为 $\int \bar z\,\partial_\tau z+\omega\bar z z$。边界项由迹条件 $z_N=z_0$ 抵消，给出 PBC。
</details>

### Derivation 2: 高斯泛函积分与行列式（Matsubara 模展开）

**Mathematical Development**:
1) 以 bosonic Matsubara 频率展开
$$
\begin{align}
z(\tau)=\sum_{n\in\mathbb{Z}} z_n\,e^{i\omega_n\tau},\quad \bar z(\tau)=\sum_{n\in\mathbb{Z}} \bar z_n\,e^{-i\omega_n\tau},\quad \omega_n=\frac{2\pi n}{\beta}.
\end{align}
$$
2) 作用量对角化：
$$
\begin{align}
S_E=\beta\sum_{n\in\mathbb{Z}}\bar z_n\,(i\omega_n+\omega)\,z_n.
\end{align}
$$
3) 复高斯积分给出（忽略整体归一化常数，该常数在比值或物理量计算中抵消）
$$
\begin{align}
Z_{\text{n.o.}}\propto \prod_{n\in\mathbb{Z}}\frac{1}{i\omega_n+\omega}.
\end{align}
$$
利用标准无限乘积/解析延拓结果得到
$$
\begin{align}
Z_{\text{n.o.}}=\frac{1}{1-e^{-\beta\omega}}.
\end{align}
$$

<details>
<summary>无限乘积的求值（要点）</summary>
考虑 $f(\tau)=\sum_{n\in\mathbb{Z}}\ln(i\omega_n+\omega)$ 的差分与 $\partial_\omega f$，或使用 $\prod_{n\in\mathbb{Z}}\frac{i\omega_n+\omega}{i\omega_n}=1-e^{-\beta\omega}$ 的已知恒等式（零模处理与归一化通过离散构造固定）。也可从离散时间格点上直接求极限得到相同结果。
</details>

### Derivation 3: 含零点能的最终结果与热力学量

将 $H=:H:+\omega/2$ 的常数项乘回去：
$$
\begin{align}
Z= e^{-\beta\omega/2}\,Z_{\text{n.o.}}=\frac{e^{-\beta\omega/2}}{1-e^{-\beta\omega}}=\frac{1}{2\sinh(\tfrac{\beta\omega}{2})}.
\end{align}
$$

由 $F=-\tfrac{1}{\beta}\ln Z$ 与 $U=-\partial_{\beta}\ln Z$ 得
$$
\begin{align}
U(\beta)&=\frac{\omega}{2}+\frac{\omega}{e^{\beta\omega}-1},\qquad C_V=\partial_T U=\Big(\tfrac{\beta\omega}{2\sinh(\tfrac{\beta\omega}{2})}\Big)^2.
\end{align}
$$

## Physics Interpretation

- 作用量中的一阶时间导数 $\bar z\,\partial_\tau z$ 体现了量子相位空间的辛结构；$\omega\,\bar z z$ 是 number operator 的 Euclidean 质量项。
- PBC 源于 boson 的统计性质（$\mathrm{Tr}$ 对应环路条件）。
- normal-order 使路径积分直接产生 $1/(1-e^{-\beta\omega})$；零点能 $\omega/2$ 作为全局相位/常数项在最终 $Z$ 中体现为 $e^{-\beta\omega/2}$。

## Verification Results

- 与谱和一致性：
$$
\begin{align}
Z=\sum_{n=0}^{\infty} e^{-\beta\omega(n+1/2)}=\frac{e^{-\beta\omega/2}}{1-e^{-\beta\omega}}.
\end{align}
$$
- 极限检查：$\beta\omega\ll1$ 时 $Z\approx 1/(\beta\omega)$；$\beta\omega\gg1$ 时 $Z\approx e^{-\beta\omega/2}$，符合基态主导。
- 维度一致性：取 $\hbar=1$，$[\beta\omega]=1$；$Z$ 无量纲。

## Identified Issues

- 归一化常数的严谨处理需由离散路径积分或与已知极限（如 $\omega\to0^+$）的匹配来固定；本节采用标准 textbook 归一化，结果与谱和完全一致。
- 若采用不同的相干态归一化或 overlap 约定（Bargmann 表象 vs. 规范化相干态），需相应调整离散短时核的相位与测度，但最终 $Z$ 不受影响。

---

## Massive free scalar in AdS$_3$: coherent-state partition function（核对与整理）

本节将你在 `Articles/Proca in AdS3/coherent state path integral.md` 中的 AdS$_3$ massive scalar 推导核对并整理为相干态路径积分形式，保持既有记号：质量参数记为 $\mu$，维度 $\Delta=1+\sqrt{1+\mu^2}$（取 $\Delta_+$，AdS 半径 $L=1$）。

### Formalism Summary

- 作用量与度规：
$$
\begin{align}
S&=-\tfrac12\int \!\mathrm{d}^3x\,\sqrt{-g}\,(\nabla_\mu\varphi\nabla^\mu\varphi+\mu^2\varphi^2),\\
\mathrm{d}s^2&=-(1+r^2)\mathrm{d}t^2+\frac{\mathrm{d}r^2}{1+r^2}+r^2\mathrm{d}\phi^2.
\end{align}
$$
- 运动方程：$\,(\nabla^2-\mu^2)\varphi=0$，BF 界 $\mu^2\ge-1$。基模 $\varphi_{0,0}\propto e^{-i\Delta t}(1+r^2)^{-\Delta/2}$。
- 生成元：$\mathrm{SO}(2,2)\cong \mathrm{SL}(2,\mathbb{R})\times\mathrm{SL}(2,\mathbb{R})$，用 $\mathcal{L}_{\xi_{-1}},\mathcal{L}_{\bar\xi_{-1}}$ 产生子模：
$$
\varphi_{n,\bar n}\propto \mathcal{L}_{\xi_{-1}}^{n}\,\mathcal{L}_{\bar\xi_{-1}}^{\bar n}\,\varphi_{0,0},\qquad n,\bar n\in\mathbb{N}_{\ge0}.
$$
- 能量与角动量：
$$
\omega_{n,\bar n}=\Delta+n+\bar n,\quad J=n-\bar n,\quad (H=H_{\xi_0}+H_{\bar\xi_0}).
$$

### Completed Derivations

1) 模展开与辛形式（与原文一致）
$$
\begin{align}
\varphi(x)=\sum_{n,\bar n\ge0}\Big(a_{n,\bar n}\,\varphi_{n,\bar n}(x)+a^{\dagger}_{n,\bar n}\,\varphi^*_{n,\bar n}(x)\Big),\qquad
\omega=i\sum_{n,\bar n}\delta a^{\dagger}_{n,\bar n}\wedge\delta a_{n,\bar n}.
\end{align}
$$
从而 $[a_{n,\bar n},a^{\dagger}_{n',\bar n'}]=\delta_{n n'}\delta_{\bar n\bar n'}$（量子化）。

2) 相干态路径积分与 Euclidean 作用量

对每个模引入相干态 $\lvert z_{n,\bar n}\rangle$，整体态 $\lvert\boldsymbol z\rangle=\bigotimes_{n,\bar n}\lvert z_{n,\bar n}\rangle$，得到（bosonic PBC）
$$
\begin{align}
Z(\beta)=\int_{\boldsymbol z(0)=\boldsymbol z(\beta)}\!\mathcal{D}^2\boldsymbol z\;\exp\Big(-\int_0^\beta\!\mathrm{d}\tau\sum_{n,\bar n}\big[\bar z_{n,\bar n}\,\partial_\tau z_{n,\bar n}+\omega_{n,\bar n}|z_{n,\bar n}|^2\big]\Big).
\end{align}
$$
做 Matsubara 展开并逐模高斯积分，得到
$$
\begin{align}
Z(\beta)=\prod_{n,\bar n\ge0}\frac{1}{1-e^{-\beta(\Delta+n+\bar n)}}.
\end{align}
$$
按能级 $k=n+\bar n$ 重组：
$$
\begin{align}
Z(\beta)=\prod_{k=0}^{\infty}\frac{1}{\big(1-e^{-\beta(\Delta+k)}\big)^{k+1}},\qquad q\equiv e^{-\beta}.
\end{align}
$$

3) 含角动量化学势的推广（补全原文“if we want …”）
$$
\begin{align}
Z(\beta,\alpha)=\mathrm{Tr}\,\exp\big(-\beta H+i\alpha J\big)=\prod_{n,\bar n\ge0}\frac{1}{1-q^{\Delta+n+\bar n}e^{i\alpha (n-\bar n)}}.
\end{align}
$$
亦可改写为 $m=n-\bar n\in\mathbb{Z}$ 与 $p=\min(n,\bar n)\in\mathbb{N}_{\ge0}$：
$$
\begin{align}
Z(\beta,\alpha)=\prod_{m\in\mathbb{Z}}\prod_{p=0}^{\infty}\frac{1}{1-q^{\Delta+|m|+2p}\,e^{i\alpha m}}.
\end{align}
$$

<details>
<summary>与球谐量子数的对应</summary>
令 $m=n-\bar n$，$k=n+\bar n=|m|+2p$，则能量 $\omega=\Delta+|m|+2p$ 与标准结果（global AdS$_3$）一致，$p$ 对应径向量子数，$m$ 为圆上的角动量。
</details>

### Physics Interpretation

- 表象论视角：$\mathcal{L}_{\xi_{-1}},\mathcal{L}_{\bar\xi_{-1}}$ 生成 global $\mathrm{SL}(2)\times\mathrm{SL}(2)$ 的后裔态，能量每次提升 1；重组后即 $\omega=\Delta+|m|+2p$。
- 配分函数的幂次指数 $k+1$ 是对能级简并度（给定 $k$，有 $k+1$ 组 $(n,\bar n)$）的精确计数。
- normal ordering 已去除真空能；若考虑 Casimir 能（真空求和）需额外正则化并加入 $e^{-\beta E_{\mathrm{vac}}}$，本节沿用相干态/normal-order 约定不包含该项。

### Verification Results

- 与谱和一致性：
$$
\begin{align}
Z(\beta)=\prod_{n,\bar n\ge0}\frac{1}{1-e^{-\beta(\Delta+n+\bar n)}}=\prod_{m\in\mathbb{Z}}\prod_{p\ge0}\frac{1}{1-e^{-\beta(\Delta+|m|+2p)}},
\end{align}
$$
与 $\omega_{p,m}=\Delta+|m|+2p$ 的模频谱吻合。
- BF 界：$\mu^2\ge-1\Rightarrow\Delta\in\mathbb{R}$；在 $-1<\mu^2<0$ 窗口存在双重量子化（$\Delta_\pm$），对应不同边界条件，$Z$ 需据此选取 $\Delta$。
- 角动量势：$Z(\beta,\alpha)$ 在 $\alpha\to0$ 极限回到 $Z(\beta)$。

### Identified Issues

- 当引入边界条件变化或与旋转几何（BTZ 黑洞背景）比较时，$\alpha$ 的物理解释需与 Euclidean 周期扭转匹配（化学势 vs. 角速度）。
- 真空能与正则化：全局 AdS 中的总零点能需要一致的正则化方案（如 zeta-function），本节未纳入该常数项。

### How to compute Tr e^{-β H} e^{iα J}（两种等价方法）

记单模频率与“角动量荷”分别为
$$
\begin{align}
\omega_{n,\bar n}=\Delta+n+\bar n,\qquad m_{n,\bar n}=n-\bar n,\qquad N_{n,\bar n}=a^{\dagger}_{n,\bar n}a_{n,\bar n}~.
\end{align}
$$
采用 normal-order（去掉常数真空能），则
$$
\begin{align}
H=\sum_{n,\bar n\ge0}\omega_{n,\bar n}\,N_{n,\bar n},\qquad J=\sum_{n,\bar n\ge0} m_{n,\bar n}\,N_{n,\bar n},\qquad [H,J]=0~.
\end{align}
$$

1) 算符分解（几何级数逐模相乘）

$$
\begin{align}
Z(\beta,\alpha)&=\mathrm{Tr}\,e^{-\beta H}e^{i\alpha J}=\prod_{n,\bar n\ge0}\underbrace{\mathrm{Tr}\,\exp\big[-\beta\,\omega_{n,\bar n}\,N_{n,\bar n}+i\alpha\,m_{n,\bar n}\,N_{n,\bar n}\big]}_{\text{单个 bosonic 模}}\\
&=\prod_{n,\bar n\ge0}\sum_{N=0}^{\infty}\big(e^{-\beta\,\omega_{n,\bar n}}e^{i\alpha\,m_{n,\bar n}}\big)^N
\;=\;\prod_{n,\bar n\ge0}\frac{1}{1-e^{-\beta\,\omega_{n,\bar n}}e^{i\alpha\,m_{n,\bar n}}}~.
\end{align}
$$
将 $n,\bar n$ 变量换为 $m=n-\bar n\in\mathbb{Z}$ 与 $p=\min(n,\bar n)\in\mathbb{N}_{\ge0}$，利用 $\omega=\Delta+|m|+2p$，得
$$
\begin{align}
Z(\beta,\alpha)=\prod_{m\in\mathbb{Z}}\prod_{p=0}^{\infty}\frac{1}{1-e^{-\beta(\Delta+|m|+2p)}e^{i\alpha m}}~.
\end{align}
$$

2) 相干态路径积分（扭转边界条件）

由于 $[H,J]=0$，有 $e^{-\beta H}e^{i\alpha J}=\exp\big(-\int_0^\beta\!\mathrm{d}\tau\,[H-\mu J]\big)$，其中 $\mu\equiv i\alpha/\beta$ 是“虚化学势”。对每个模 $z_{n,\bar n}(\tau)$，Euclidean 作用量变为
$$
\begin{align}
S_E=\int_0^\beta\!\mathrm{d}\tau\,\Big[\bar z(\partial_\tau-\mu\,m_{n,\bar n})z+\omega_{n,\bar n}|z|^2\Big].
\end{align}
$$
等价地，这对应扭转的周期边界条件
$$
\begin{align}
z_{n,\bar n}(\beta)=e^{\beta\mu\,m_{n,\bar n}}z_{n,\bar n}(0)=e^{i\alpha\,m_{n,\bar n}}z_{n,\bar n}(0),\quad(\text{boson}).
\end{align}
$$
Matsubara 展开在扭转下等效于 $i\omega_n\to i\omega_n-\mu\,m_{n,\bar n}$ 的移位，从而高斯积分给出
$$
\begin{align}
Z(\beta,\alpha)=\prod_{n,\bar n\ge0}\frac{1}{1-e^{-\beta\,\omega_{n,\bar n}}e^{i\alpha\,m_{n,\bar n}}},
\end{align}
$$
与算符法一致。

备注：若恢复零点能（去 normal-order），需额外乘以 $\exp(-\beta E_{\mathrm{vac}})$，其中 $E_{\mathrm{vac}}$ 由频谱求和并经一致正则化（如 zeta-function）确定；它与 $\alpha$ 无关。

---

## Two-point correlation functions（如何计算）

我们分别给出简谐振子与 AdS$_3$ massive scalar 的两点函数，采用相干态路径积分/Matsubara 方法与算符法的等价结果。

### A. Harmonic oscillator：$\;G(\tau)=\langle \mathcal{T}_\tau\,z(\tau)\,\bar z(0)\rangle_\beta$

1) 作为高斯理论的格林函数，它满足
$$
\begin{align}
(\partial_\tau+\omega)\,G(\tau)=\delta_\beta(\tau),\qquad G(\tau+\beta)=G(\tau)~,
\end{align}
$$
其中 $\delta_\beta$ 是 $[0,\beta]$ 上的周期 $\delta$。解得（$0<\tau<\beta$）：
$$
\begin{align}
G(\tau)=\frac{e^{-\omega\tau}}{1-e^{-\beta\omega}}=(n_B+1)e^{-\omega\tau},\qquad n_B\equiv\frac{1}{e^{\beta\omega}-1}.
\end{align}
$$
由周期性延拓得 $\tau<0$ 时 $G(\tau)=n_B\,e^{\omega\tau}$，从而紧凑写成
$$
\begin{align}
G(\tau)=\theta(\tau)(n_B+1)e^{-\omega\tau}+\theta(-\tau)\,n_B\,e^{\omega\tau},\qquad \tau\in(-\beta,\beta).
\end{align}
$$

2) 频域（Matsubara）表达：
$$
\begin{align}
G(i\omega_n)=\frac{1}{i\omega_n+\omega},\qquad \omega_n=\frac{2\pi n}{\beta},\; n\in\mathbb{Z},\qquad G(\tau)=\frac{1}{\beta}\sum_n e^{-i\omega_n\tau}G(i\omega_n).
\end{align}
$$

3) 位置算符两点函数 $C_x(\tau)=\langle \mathcal{T}_\tau x(\tau)x(0)\rangle_\beta$，用 $x=(a+a^\dagger)/\sqrt{2\omega}$ 得（$0<\tau<\beta$）
$$
\begin{align}
C_x(\tau)=\frac{1}{2\omega}\Big[(n_B+1)e^{-\omega\tau}+n_B e^{\omega\tau}\Big],\qquad C_x(\tau+\beta)=C_x(\tau).
\end{align}
$$

<details>
<summary>由源泛函求解的简述</summary>
在相干态路径积分中引入源 $J,\bar J$，高斯积分给出 $\ln Z[J]=\int \bar J\,K^{-1}J$，其中 $K=\partial_\tau+\omega$。两点函数即 $G=K^{-1}$，满足上式微分方程与 PBC。
</details>

### B. AdS$_3$ massive scalar：$\;G(\tau; x,x')=\langle \mathcal{T}_\tau\,\varphi(\tau,x)\,\varphi(0,x')\rangle_{\beta,\alpha}$

记模频谱与角动量 $\omega_{n,\bar n}=\Delta+n+\bar n,\; m=n-\bar n$，规范正交的模函数为 $\varphi_{n,\bar n}(x)$。则

1) Matsubara/频域格林函数（含角动量化学势 $\alpha$）：
$$
\begin{align}
G(i\omega_n; x,x')
&=\sum_{n,\bar n\ge0}\frac{\varphi_{n,\bar n}(x)\,\varphi_{n,\bar n}^*(x')}{i\omega_n-\mu\,m+\omega_{n,\bar n}},\qquad \mu\equiv\frac{i\alpha}{\beta}.
\end{align}
$$
2) Euclidean 时间域（$0<\tau<\beta$）：
$$
\begin{align}
G(\tau; x,x')
&=\sum_{n,\bar n\ge0}\frac{e^{-\omega_{n,\bar n}\tau}}{1-e^{-\beta\omega_{n,\bar n}}e^{i\alpha m}}\;\varphi_{n,\bar n}(x)\,\varphi_{n,\bar n}^*(x').
\end{align}
$$
通过 $m=n-\bar n$、$p=\min(n,\bar n)$ 变量化可写为
$$
\begin{align}
G(\tau; x,x')=\sum_{m\in\mathbb{Z}}\sum_{p=0}^{\infty}\frac{e^{-(\Delta+|m|+2p)\tau}e^{i\alpha m}}{1-e^{-\beta(\Delta+|m|+2p)}e^{i\alpha m}}\;\Phi_{p,m}(x)\,\Phi_{p,m}^*(x'),
\end{align}
$$
其中 $\Phi_{p,m}$ 为与 $\omega=\Delta+|m|+2p$ 匹配的正交归一化本征模（由 $\varphi_{n,\bar n}$ 线性组合得到）。

3) 无化学势（$\alpha=0$）与热极限：
$$
\begin{align}
G_\beta(\tau; x,x')=\sum_{n,\bar n}\frac{e^{-\omega_{n,\bar n}\tau}}{1-e^{-\beta\omega_{n,\bar n}}}\;\varphi_{n,\bar n}(x)\,\varphi_{n,\bar n}^*(x'),\quad G_{T\to0}(\tau)=\sum_{n,\bar n}e^{-\omega_{n,\bar n}\tau}\;\varphi_{n,\bar n}(x)\,\varphi_{n,\bar n}^*(x').
\end{align}
$$

4) 边界两点函数（CFT$_2$）
$$
\begin{align}
\langle \mathcal{O}(\tau,\phi)\,\mathcal{O}(0,0)\rangle_{\beta,\alpha}\;\propto\;\lim_{r,r'\to\infty}(r r')^{\Delta}\,G(\tau; r,\phi; r',0)~,
\end{align}
$$
给出圆柱几何上的热两点函数（$\alpha=0$）
$$
\begin{align}
\langle\mathcal{O}(\tau,\phi)\,\mathcal{O}(0,0)\rangle_\beta\propto\Bigg[\frac{\pi/\beta}{\sin\!\big(\tfrac{\pi}{\beta}(\tau+i\phi)\big)}\cdot\frac{\pi/\beta}{\sin\!\big(\tfrac{\pi}{\beta}(\tau-i\phi)\big)}\Bigg]^{\!\Delta/2},\quad 0<\tau<\beta.
\end{align}
$$

<details>
<summary>从 Matsubara 求和到时间域的要点</summary>
对每个 $(p,m)$ 模，$G(i\omega_n)=1/(i\omega_n-\mu m+\omega)$；做逆变换 $\tfrac{1}{\beta}\sum_n e^{-i\omega_n\tau}G(i\omega_n)$，在 $0<\tau<\beta$ 得 $e^{-\omega\tau}/\big(1-e^{-\beta\omega}e^{i\alpha m}\big)$，并按周期性延拓。
</details>

### Notes

- 上述表达式假定已选取使 $\{\varphi_{n,\bar n}\}$ 正交归一的一致规范；若采用不同归一化，关联函数只差一个整体（模式对角）规范因子，可通过等距群不变内积或边界极限归一化固定。
- 对 $-1<\mu^2<0$ 的双重量子化窗口，应按选定的边界条件取 $\Delta_\pm$ 并据此替换 $\omega_{n,\bar n}$ 与模函数。
