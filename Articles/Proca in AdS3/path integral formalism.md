# path integral in the standard (configuration-space) formalism

本笔记按“先洛伦兹、后欧氏”的节奏，慢慢用坐标/场配置空间（standard, configuration-space）的路径积分推导谐振子、AdS3 自由标量与 Proca 场：
- 先在闵氏时间上做 Trotter 切片与完备性插入，得到洛伦兹路径积分核 $K=\langle\text{out}|e^{-iHT}|\text{in}\rangle=\int\!\mathcal D\,e^{iS}$；
- 再对热迹 $\mathrm{Tr}\,e^{-\beta H}$ 做 Wick 旋转与 Matsubara 展开；
- 角动量化学势以扭曲边界条件或频率平移注入。

频谱与量子数直接沿用并与相干态结果核对，最终配分函数与算符法一致。

记号约定：欧氏化采用 $t\to -i\tau$，$S\to -iS_E$。角动量的化学势记为 $\Omega$（避免与质量 $\mu$ 混淆），$q=e^{-\beta}$，$z=e^{i\alpha}$，其中 $\alpha= i\beta\Omega$。

---

## 1. harmonic oscillator（配置空间详细推导）

作用量（闵氏）：
$$
S=\int_{t_i}^{t_f}\!dt\,\Big(\tfrac12\dot x^2-\tfrac12\omega^2x^2\Big),\qquad H=\tfrac12 p^2+\tfrac12\omega^2x^2.
$$

### 1.1 Trotter 切片与测度

演化核 $K=\langle x_f|e^{-iHT}|x_i\rangle$，令 $T=t_f-t_i$，$N\Delta t=T$，Trotter 分解与插入完备性得
$$
K=\int\!\prod_{k=1}^{N-1}dx_k\,\prod_{k=0}^{N-1}\langle x_{k+1}|e^{-iH\Delta t}|x_k\rangle,
$$
其中 $x_0=x_i,\ x_N=x_f$。对每个小步，采用中点律与 $p$ 插入，得到（标准高斯积分）
$$
\langle x'|e^{-iH\Delta t}|x\rangle\approx\Big(\frac{1}{2\pi i\Delta t}\Big)^{1/2}\exp\Big\{\,\frac{i}{2\Delta t}(x'-x)^2-\frac{i\Delta t}{2}\,\omega^2\,\bar x^{\,2}\Big\},
$$
其中 $\bar x=(x'+x)/2$。于是离散作用量
$$
S_{\text{disc}}=\sum_{k=0}^{N-1}\Big[\tfrac12\frac{(x_{k+1}-x_k)^2}{\Delta t}-\tfrac12\omega^2\,\bar x_k^{\,2}\,\Delta t\Big],
$$
测度 $\mathcal D x=\lim_{N\to\infty}\Big(\prod_{k=1}^{N-1}\sqrt{\tfrac{1}{2\pi i\Delta t}}\,dx_k\Big)$。连续极限给出
$$
K=\int_{x(t_i)=x_i}^{x(t_f)=x_f}\!\mathcal D x\;e^{iS[x]}.
$$

### 1.2 欧氏化与高斯行列式

欧氏化 $t\to -i\tau$，$S\to -iS_E$，并取热迹（周期边界条件 $x(\tau+\beta)=x(\tau)$）：
$$
Z(\beta)=\int_{x(0)=x(\beta)}\!\mathcal D x\;e^{-S_E[x]},\qquad S_E=\int_0^{\beta}\!d\tau\,\Big[\tfrac12\dot x^2+\tfrac12\omega^2x^2\Big].
$$
傅里叶展开 $x(\tau)=\sum_{m\in\mathbb Z}x_m e^{-i\omega_m\tau}/\sqrt\beta$，$\omega_m=2\pi m/\beta$，得
$$
S_E=\tfrac12\sum_{m\in\mathbb Z} (\omega_m^2+\omega^2)|x_m|^2,\qquad Z\propto\prod_{m\in\mathbb Z}(\omega_m^2+\omega^2)^{-1/2}.
$$
用 Weierstrass 乘积 $\prod_{m\in\mathbb Z}(\omega_m^2+\omega^2)\propto4\sinh^2(\tfrac{\beta\omega}{2})$，吸收常数，得
$$
Z(\beta)=\frac{1}{2\sinh(\beta\omega/2)}=\frac{e^{-\beta\omega/2}}{1-e^{-\beta\omega}}.
$$
若采用正常序去除零点能 $\tfrac12\omega$，则 $Z(\beta)=\frac{1}{1-e^{-\beta\omega}}$。

---

## 2. free scalar in AdS$_3$（场配置空间详细推导）

闵氏作用量：
$$
S=-\tfrac12\int d^3x\,\sqrt{-g}\,(\nabla_\mu\varphi\nabla^\mu\varphi+\mu^2\varphi^2),\qquad ds^2=-(1+r^2)dt^2+\frac{dr^2}{1+r^2}+r^2d\phi^2.
$$

### 2.0 曲率背景下的一般范式与测度（洛伦兹）

- 静态背景 ADM 形式：$ds^2=-N^2(x)\,dt^2+\gamma_{ij}(x)dx^i dx^j$（此处 $N=\sqrt{1+r^2}$，$\gamma_{ij}dx^i dx^j=\tfrac{dr^2}{1+r^2}+r^2 d\phi^2$）。
- 经典哈密顿量与测度（洛伦兹）：
	- 正则动量 $\pi=\frac{\sqrt\gamma}{N}\,\partial_t\varphi$；
	- 哈密顿量 $H[\varphi,\pi]=\int_\Sigma d^2x\,\Big[\tfrac{N}{2\sqrt\gamma}\,\pi^2+\tfrac{N\sqrt\gamma}{2}\,\varphi\,\mathcal H_\Sigma\,\varphi\Big]$，其中 $\mathcal H_\Sigma=-\Delta_\Sigma+U(x)$，对 AdS$_3$ 的自由标量，$U=\mu^2$（以及由曲率吸收到 $\Delta$ 的选择中）。
- 功能测度采用 DeWitt 内积的协变定义：$(\delta\varphi_1,\delta\varphi_2)=\int d^3x\sqrt{-g}\,\delta\varphi_1\,\delta\varphi_2$。在固定时间片上，取 $\Sigma$ 的正交完备本征函数组 $\{u_a(x)\}$，满足 $\int_\Sigma d^2x\sqrt{\gamma}\, u_a u_b=\delta_{ab}$，则
	$$\varphi(t,x)=\sum_a \varphi_a(t) u_a(x)$$
	是正交变换，Jacobian 为常数，故 $\mathcal D\varphi\propto\prod_a\mathcal D\varphi_a$。
- 自伴性与边界条件：要求 $\mathcal H_\Sigma$ 在 $L^2(\Sigma,\sqrt\gamma)$ 上自伴，需选取使通量/辛形式有限的边界条件。AdS 边界处标量的两种渐近 $r^{-(\Delta)}$ 与 $r^{-(2-\Delta)}$ 中，本笔记取标准量子化（$\Delta=1+\sqrt{1+\mu^2}$）。

### 2.1 洛伦兹时间切片：相空间推导到配置空间路径积分

考虑演化核 $K=\langle\varphi_f|e^{-iHT}|\varphi_i\rangle$，令 $T=t_f-t_i$，离散化 $N\Delta t=T$。在每个时间片插入场与动量的完备性：
$$
\mathbf 1=\int\!\mathcal D\varphi_k\,|\varphi_k\rangle\langle\varphi_k|=\int\!\mathcal D\pi_k\,|\pi_k\rangle\langle\pi_k|,
\qquad \hat\varphi|\varphi_k\rangle=\varphi_k|\varphi_k\rangle,\ \ \hat\pi|\pi_k\rangle=\pi_k|\pi_k\rangle.
$$
采用中点律，短时核为（$|\varphi_k\rangle,|\pi_k\rangle$ 的 Fock 基显式构造见附录 D）：
$$
\langle\varphi_{k+1}|e^{-i\Delta t\,H}|\varphi_k\rangle=
\int\!\mathcal D\pi_k\;\exp\Big\{ i\int_\Sigma d^2x\,\Big[\pi_k\,\frac{\varphi_{k+1}-\varphi_k}{\Delta t}
-\frac{\Delta t}{2}\Big(\frac{N}{\sqrt\gamma}\pi_k^2+N\sqrt\gamma\,\bar\varphi_k\,\mathcal H_\Sigma\,\bar\varphi_k\Big)\Big]\Big\},
$$
其中 $\bar\varphi_k=(\varphi_{k+1}+\varphi_k)/2$。对 $\pi_k$ 做逐点高斯积分，得到离散洛伦兹作用量
$$
S_{\text{disc}}=\sum_{k=0}^{N-1}\int_\Sigma d^2x\,\Big[\frac{\sqrt\gamma}{2N}\,\frac{(\varphi_{k+1}-\varphi_k)^2}{\Delta t}-\frac{\Delta t}{2}\,N\sqrt\gamma\,\bar\varphi_k\,\mathcal H_\Sigma\,\bar\varphi_k\Big].
$$
连续极限给出洛伦兹路径积分
$$
K=\int_{\varphi(t_i)=\varphi_i}^{\varphi(t_f)=\varphi_f}\!\mathcal D\varphi\;e^{iS[\varphi]},\quad 
S[\varphi]=\int dt\,d^2x\,\Big[\frac{\sqrt\gamma}{2N}(\partial_t\varphi)^2-\frac{N\sqrt\gamma}{2}\,\varphi\,\mathcal H_\Sigma\,\varphi\Big].
$$

这一步完全平行于 1.1 的谐振子推导，只是每个空间点携带 $\sqrt\gamma/N$ 的“惯性”权重。

### 2.2 在正常模基下的完备性与测度（与相干态笔记对齐）

借用 `coherent state path integral.md` 中的 AdS 正常模（能量 $\omega_{n\bar n}=\Delta+n+\bar n$）：
$$
\phi_{n\bar n}(t,r,\phi)=e^{-i\omega_{n\bar n} t}\,\Phi_{n\bar n}(r,\phi),\qquad 
\int d^2x\,\sqrt\gamma\,\Phi_{n\bar n}^*(r,\phi)\,\Phi_{n'\bar n'}(r,\phi)=\delta_{n n'}\delta_{\bar n\bar n'}.
$$
在固定时间片将场配置展开为
$$
\varphi_k(r,\phi)=\sum_{n,\bar n\ge0}\,\varphi_{k;n\bar n}\,\Phi_{n\bar n}(r,\phi),
$$
则每个时间片的完备性显式为“模系数”的乘积积分（对实场以实/虚部或等价的实正交基计）：
$$
\mathbf 1=\int \Big[\prod_{n,\bar n\ge0}\frac{d\,\Re\,\varphi_{k;n\bar n}\,d\,\Im\,\varphi_{k;n\bar n}}{\pi}\Big]\;\big|\{\varphi_{k;n\bar n}\}\big\rangle\big\langle\{\varphi_{k;n\bar n}\}\big|.
$$
由于 $\{\Phi_{n\bar n}\}$ 正交单位，上述雅可比为常数，可整体吸收入规范化，不影响最终 $Z$。

### 2.3 欧氏化与模展开

对热迹 $Z(\beta)=\mathrm{Tr}\,e^{-\beta H}$ 进行 Wick 旋转 $t\to -i\tau$，$S\to -iS_E$，并施加周期边界条件 $\varphi(\tau+\beta)=\varphi(\tau)$：
$$
S_E=\tfrac12\int_0^{\beta} d\tau\int d^2x\,\sqrt g\,\big[(\partial_\tau\varphi)^2+\varphi\,(-\nabla^2+\mu^2)\,\varphi\big].
$$
取在空间切片上的正交归一模 $\{\phi_{n\bar n}(x)\}$（与相干态笔记一致，$\omega_{n\bar n}=\Delta+n+\bar n$，$\Delta=1+\sqrt{1+\mu^2}$），满足
$$
\int d^2x\,\sqrt g\,\phi_{n\bar n}^*(x)\,\phi_{n'\bar n'}(x)=\delta_{n n'}\delta_{\bar n\bar n'}.
$$
展开
$$
\varphi(\tau,x)=\sum_{n,\bar n\ge0}\varphi_{n\bar n}(\tau)\,\phi_{n\bar n}(x),
$$
得到
$$
S_E=\tfrac12\sum_{n,\bar n}\int_0^{\beta} d\tau\,\Big[(\partial_\tau\varphi_{n\bar n})^2+\omega_{n\bar n}^2\,|\varphi_{n\bar n}|^2\Big].
$$

### 2.4 热圈与行列式

按 $\tau$ 展开 $\varphi_{n\bar n}(\tau)=\sum_{m\in\mathbb Z}\varphi_{n\bar n}(i\omega_m)e^{-i\omega_m\tau}/\sqrt\beta$，得
$$
Z(\beta)\propto\prod_{n,\bar n\ge0}\prod_{m\in\mathbb Z}(\omega_m^2+\omega_{n\bar n}^2)^{-1/2}
\;\propto\;\prod_{n,\bar n\ge0}\frac{1}{2\sinh(\tfrac{\beta\omega_{n\bar n}}{2})}.
$$
正常序去除零点能后（与相干态结果匹配）：
$$
Z(\beta)=\prod_{n,\bar n\ge0}\frac{1}{1-q^{\omega_{n\bar n}}},\qquad q=e^{-\beta}.
$$

### 2.5 加入角动量化学势（扭曲边界条件）

角动量本征值（与相干态一致）：$j_{n\bar n}=\bar n-n$。引入 $\Omega$ 等效于在热圈上施加旋转扭曲：
$$
(\tau,\phi)\sim(\tau+\beta,\,\phi+i\alpha),\quad \alpha=i\beta\Omega,\qquad\Rightarrow\quad \partial_\tau\to\partial_\tau-\Omega\,\partial_\phi.
$$
在 $(n,\bar n)$ 模上体现为
$$
i\omega_m\to i\omega_m-\Omega\, j_{n\bar n},\qquad \text{或}\quad \varphi_{n\bar n}(\beta)=e^{\beta\Omega j_{n\bar n}}\varphi_{n\bar n}(0).
$$
于是
$$
Z(\beta,\alpha)=\prod_{n,\bar n\ge0}\prod_{m\in\mathbb Z}\big[(i\omega_m-\Omega j_{n\bar n})^2+\omega_{n\bar n}^2\big]^{-1/2}
\propto\prod_{n,\bar n\ge0}\frac{1}{1-q^{\omega_{n\bar n}} z^{j_{n\bar n}}},\quad z=e^{i\alpha}.
$$

### 2.6 从行列式到 $\sinh$ 的简明推导

利用无穷乘积 $\sinh\pi x=\pi x\prod_{m=1}^{\infty}\Big(1+\frac{x^2}{m^2}\Big)$，可得
$$
\prod_{m\in\mathbb Z}\Big[\Big(\tfrac{2\pi m}{\beta}\Big)^2+E^2\Big]=\Big(2\sinh\tfrac{\beta E}{2}\Big)^2\times \text{const},
$$
常数被配分函数的归一化吸收（或由相对行列式消去），于是每个模贡献 $\big(2\sinh(\beta E/2)\big)^{-1}$。

（本节等价地也可直接从 2.1 的洛伦兹核取热迹并 Wick 旋转得到。）

---

## 3. Proca field in AdS$_3$（场配置空间详细推导）

闵氏作用量：
$$
S=\int d^3x\,\sqrt{-g}\Big(-\tfrac14 F_{\mu\nu}F^{\mu\nu}-\tfrac12\mu^2 A_\mu A^\mu\Big),\qquad F=dA.
$$
Proca 方程蕴含 $\nabla_\mu A^\mu=0$（对 $\mu\neq0$）：对 $\nabla_\mu(\nabla_\nu F^{\nu\mu}-\mu^2 A^\mu)=0$ 取散度即得 $\mu^2\nabla_\mu A^\mu=0$。因此无规范冗余，物理自由度在 3D 中为 2。欧氏化后二次型算符可写为（Lichnerowicz 算符）
$$
S_E=\tfrac12\int_0^{\beta}\!d\tau\int d^2x\,\sqrt g\, A_\mu\,\mathbb M^{\mu}{}_{\nu}\,A^\nu,\qquad \mathbb M= -\nabla^2\,\delta^{\mu}{}_{\nu}+R^{\mu}{}_{\nu}+\mu^2\,\delta^{\mu}{}_{\nu},
$$
其中向量拉普拉斯包含曲率修正（AdS$_3$ 上 $R^{\mu}{}_{\nu}=-2\,\delta^{\mu}{}_{\nu}$，已取曲率半径 $\ell=1$）。

### 3.1 洛伦兹时间切片：相空间形式与 $A_\tau$ 的高斯积分

在静态度规 $ds^2=-N^2 dt^2+\gamma_{ij}dx^i dx^j$ 下，写 $A_\mu=(A_\tau,A_i)$，则
$$
F_{\tau i}=\partial_t A_i-\nabla_i A_\tau,\qquad F_{ij}=\nabla_i A_j-\nabla_j A_i.
$$
由拉氏量可得与 $A_i$ 共轭的正则动量
$$
\Pi^i=\frac{\partial\mathcal L}{\partial(\partial_t A_i)}=\frac{\sqrt\gamma}{N}\,\gamma^{ij}(\partial_t A_j-\nabla_j A_\tau),\qquad \Pi^\tau\equiv0\ \ (\text{一次约束}).
$$
将哈密顿密度写成
$$
\mathcal H=\tfrac{N}{2\sqrt\gamma}\,\gamma_{ij}\Pi^i\Pi^j+\tfrac{N\sqrt\gamma}{4}(\nabla_i A_j-\nabla_j A_i)^2+\tfrac{N\sqrt\gamma}{2}\,\mu^2(A_\tau^2+ A_i A^i)
+A_\tau\,\mathcal C,\quad \mathcal C\equiv -\nabla_i\Pi^i, 
$$
其中 $\mathcal C$ 来自对 $A_\tau$ 的线性耦合（由 $F_{\tau i}$ 中的 $\nabla_iA_\tau$ 产生）。于是对短时核有相空间表示
$$
\langle A'|e^{-i\Delta t H}|A\rangle=\int\!\mathcal D\Pi\,\exp\Big\{ i\int_\Sigma d^2x\,\Big[\Pi^i\frac{A'_i-A_i}{\Delta t}-\Delta t\,\mathcal H(\bar A,\Pi)\Big]\Big\},
$$
对 $\Pi^i$ 与 $A_\tau$ 逐点高斯积分（$|A_i\rangle,|\Pi^i\rangle$ 的单模构造同附录 D 的谐振子推广）可得配置空间离散作用量（符号上记为）
$$
S_{\text{disc}}[A]=\sum_k\int_\Sigma d^2x\,\Big[\frac{\sqrt\gamma}{2N}\,(\partial_t A_i)^2-\frac{N\sqrt\gamma}{2}\,A_\mu\,(\mathbb M^{\mu}{}_{\nu})\,A^\nu\Big]_{\text{midpoint}},
$$
其中对 $A_\tau$ 的积分已生成正定的椭圆型算符（本质上是消去一次约束 $\mathcal C$ 的效果，并用质量项保证可逆）。连续极限得到洛伦兹路径积分 $K=\int\!\mathcal D A\,e^{iS[A]}$，其中 $S[A]$ 的二次型由向量 Lichnerowicz 算符给出。

这一步与标量的相空间推导完全平行，只是张量结构更丰富；在 AdS$_3$ 的表示论基底上，该二次型会按左右极化自然对角化。

### 3.2 模展开与对角化

将 $A_\mu$ 展开在 AdS$_3$ 的左右 $SL(2,\mathbb R)$ 表象基上（与相干态笔记一致）：左/右极化各形成一支塔，能谱与角动量为
$$
\omega_{n\bar n}=\mu+1+n+\bar n,\qquad j_{\ell,n\bar n}=\bar n-n+1,\qquad j_{r,n\bar n}=\bar n-n-1,\quad n,\bar n\ge0.
$$
在该基上 $\mathbb M$ 被对角化，路径积分化为各独立模的高斯积分乘积。

### 3.3 欧氏化、热圈与化学势

与标量相同，引入 $\Omega$ 等效于 $i\omega_m\to i\omega_m-\Omega j$，从而
$$
Z(\beta,\alpha)\propto\prod_{n,\bar n\ge0}\prod_{m\in\mathbb Z}\Big[(i\omega_m-\Omega j_{\ell,n\bar n})^2+\omega_{n\bar n}^2\Big]^{-1/2}
\Big[(i\omega_m-\Omega j_{r,n\bar n})^2+\omega_{n\bar n}^2\Big]^{-1/2}.
$$
吸收零点能（正常序，与相干态/算符法一致）可写为紧致的产物形式：
$$
Z(\beta,\alpha)=\prod_{n,\bar n\ge0} \frac{1}{\big(1-q^{\omega_{n\bar n}}\,z^{\,j_{\ell,n\bar n}}\big)\,\big(1-q^{\omega_{n\bar n}}\,z^{\,j_{r,n\bar n}}\big)}.
$$

### 3.4 组件法一瞥：$A_\tau/A_i$ 与约束的处理（可选）

若在静态度规上以分量进行：写 $A_\mu=(A_\tau, A_i)$，$F_{\tau i}=\partial_\tau A_i-\nabla_i A_\tau$，$F_{ij}=\nabla_i A_j-\nabla_j A_i$，则欧氏作用量包含
$$
\int d\tau d^2x\sqrt{\gamma}N\Big[\tfrac12\frac{1}{N^2}(\partial_\tau A_i-\nabla_i A_\tau)^2+\tfrac14(\nabla_i A_j-\nabla_j A_i)^2+\tfrac12\mu^2(A_\tau^2+ A_i A^i)\Big].
$$
对 $A_\tau$ 变分得约束方程（椭圆型），将 $A_\tau$ 高斯积分掉会给出对 $A_i$ 的非局域但正定的二次型；与使用 Lichnerowicz 算符或群论基的结果等价，最终仍可分解为两支极化的简谐子塔，频谱与上文一致。这解释了为何无需规范固定也能得到两个物理极化自由度的配分函数。

---

### 备注与一致性检查
- 谐振子：$Z=1/(2\sinh(\beta\omega/2))$，若正常序则 $Z=1/(1-e^{-\beta\omega})$，与相干态推导一致（见 `coherent state path integral.md` 1.20 之后）。
- 自由标量：采用正常序去除 $\prod 2\sinh(\beta\omega/2)$ 的零点因子后，得到 $\prod(1-q^{\omega})^{-1}$，与相干态笔记一致。
- Proca：两支极化的角动量本征值 $j_{\ell/r}$ 与相干态笔记完全一致，最终 $Z$ 的乘积形式也一致。

---

## 附录 A：$\prod (\omega_m^2+E^2)$ 到 $\sinh$ 的恒等式（两行推导）

用 $\sinh \pi x=\pi x\prod_{m=1}^{\infty}\big(1+\frac{x^2}{m^2}\big)$，令 $x=\tfrac{\beta E}{2\pi}$，则
$$
\prod_{m=1}^{\infty}\Big(1+\frac{x^2}{m^2}\Big)=\frac{\sinh \pi x}{\pi x}\ \Rightarrow\ \prod_{m\in\mathbb Z}\Big[\Big(\tfrac{2\pi m}{\beta}\Big)^2+E^2\Big]=C\,\big(2\sinh \tfrac{\beta E}{2}\big)^2.
$$
常数 $C$ 与归一化无关，或在相对行列式/正常序中相消。

## 附录 B：角动量化学势的三种等价表述

- 热密度矩阵：$\mathrm{Tr}\,e^{-\beta(H-\Omega J)}$。
- 扭曲边界条件：$(\tau,\phi)\sim(\tau+\beta,\,\phi+i\alpha)$，$\alpha=i\beta\Omega$，等价于 $\varphi(\beta,\phi)=\varphi(0,\phi+i\alpha)$，在 $j$ 本征基上为 $\exp(\beta\Omega j)$ 的扭曲。
- 背景规范场：对与 $J$ 对应的等距流形，等效于耦合一个纯虚的欧氏时间分量背景 $A_\tau^{(\Omega)}=i\Omega$，从而 $\partial_\tau\to\partial_\tau-\Omega\,\partial_\phi$。

## 附录 C：为什么用 DeWitt 内积而不是 KG 内积？

- 适用范围不同：
	- DeWitt 内积（实质是 $L^2$ 内积）$(\delta\varphi_1,\delta\varphi_2)=\int d^3x\sqrt g\,\delta\varphi_1\delta\varphi_2$ 定义在“场配置空间”的任意涨落上，包含离壳（off-shell）构型，是欧氏路径积分测度的自然选择（亦可由晶格离散化或从相空间路径积分积分掉动量得到）。
	- Klein–Gordon (KG) 内积 $\langle \varphi_1,\varphi_2\rangle_{KG}=i\int_\Sigma d\Sigma^\mu\,(\varphi_1^*\nabla_\mu\varphi_2-\varphi_2\nabla_\mu\varphi_1^*)$ 定义在“解空间”（on-shell 解）上，是守恒电荷，用于正/负频分解与算符规范化（确定 $[a,a^\dagger]=1$）。
- 正定性与背景依赖：
	- 欧氏高斯积分需要正定二次型与正定测度；DeWitt 度量给出正定 $L^2$ 范数。KG 内积一般非正定（除非限制在正频子空间且需选择时间向量），并依赖时间样 Killing 向量的选择；在缺乏全局静态性的几何上甚至不可用。
- 离散化与可比性：
	- 从 Trotter 切片/晶格化出发，测度是点上场值的勒贝格测度之积 $\prod_x d\varphi(x)$；连续极限即 DeWitt 测度。这一路径与一阶相空间路径积分 $\int \mathcal D\varphi\mathcal D\pi\,e^{i\int(\pi\dot\varphi-\mathcal H)}$ 积分掉动量也一致，归并到 $\mathcal D\varphi$ 的 $L^2$ 度量。
- 与 KG 归一化的关系：
	- 在对角化二次型时，你可以用 KG 归一化的正常模来定义湮灭/产生算符，进而得到频谱与角动量本征值；而在欧氏路径积分里，用空间 $L^2$ 正交完备基展开场配置。两者通过一个常数雅可比相联，这个常数不依赖温度/化学势，因而在配分函数（或相对行列式）中相消；这解释了为何不同归一化约定仍得到相同的 $Z$。
- 本笔记中的分工：
	- 在 CPS/相干态部分，KG（或辛形式）用于规范化模并固定 $[a,a^\dagger]=1$，从而确定能谱与荷；
	- 在欧氏路径积分与热配分函数部分，采用 DeWitt 测度来逐模高斯化与计算行列式，确保正定性与与晶格/相空间推导一致。

## 附录 D：$|\varphi\rangle$ 与 $|\pi\rangle$（以及向量场对应）在 Fock 基中的显式构造

本附录补全正文 2.1 与 3.1 中插入完备性时 $|\varphi_k\rangle$、$|\pi_k\rangle$（以及向量场的 $|A_k\rangle$、$|\Pi_k\rangle$）的**具体形式**，展示它们怎样由升降算符生成，而不是“handwaving”。结构：单振子 → 多振子直积 → 场的模展开 → 与相干态的联系。

### D.1 单一谐振子
频率 $\omega$，$H=\tfrac12(p^2+\omega^2 q^2)$。定义
 $$a=\sqrt{\tfrac{\omega}{2}}q+\frac{i}{\sqrt{2\omega}}p,\quad a^\dagger=\sqrt{\tfrac{\omega}{2}}q-\frac{i}{\sqrt{2\omega}}p,\quad [a,a^\dagger]=1,$$
	则
	$$q=\frac{a+a^\dagger}{\sqrt{2\omega}},\qquad p=-i\sqrt{\tfrac{\omega}{2}}(a-a^\dagger).$$
	真空 $a|0\rangle=0$，Fock 基 $|n\rangle=\frac{(a^\dagger)^n}{\sqrt{n!}}|0\rangle$。位置本征态（标准 Hermite 生成函数推导）
	$$|q\rangle=(\tfrac{\omega}{\pi})^{1/4}\exp\Big(-\tfrac12\omega q^2+\sqrt{2\omega}\,q\,a^\dagger-\tfrac12 (a^\dagger)^2\Big)|0\rangle,$$
	满足 $q|q\rangle=q|q\rangle$，且
	$$\langle q|n\rangle=(\tfrac{\omega}{\pi})^{1/4}\frac{1}{\sqrt{2^n n!}}H_n(\sqrt{\omega}q)e^{-\omega q^2/2},\quad\int dq\,|q\rangle\langle q|=\mathbf 1.$$
	动量本征态（$p|p\rangle=p|p\rangle$）
	$$|p\rangle=(\tfrac{1}{\pi\omega})^{1/4}\exp\Big(-\tfrac{p^2}{2\omega}+i\sqrt{\tfrac{2}{\omega}}p a^\dagger+\tfrac12 (a^\dagger)^2\Big)|0\rangle,$$
	$$\langle p|n\rangle=(\tfrac{1}{\pi\omega})^{1/4}\frac{(-i)^n}{\sqrt{2^n n!}}H_n(p/\sqrt{\omega})e^{-p^2/(2\omega)},\quad\int dp\,|p\rangle\langle p|=\mathbf 1,$$
	并验证 $\langle q|p\rangle=\frac{1}{\sqrt{2\pi}}e^{iqp}$。

### D.2 多谐振子直积与场的模变量
自由场模展开后成为谐振子集合：
	$$H=\sum_\lambda \tfrac12(P_\lambda^2+\omega_\lambda^2 Q_\lambda^2),\quad a_\lambda=\sqrt{\tfrac{\omega_\lambda}{2}}Q_\lambda+\frac{i}{\sqrt{2\omega_\lambda}}P_\lambda,$$
	其中标量的 $\lambda=(n,\bar n)$，Proca 还包括极化标签 $\ell/r$。把 D.1 配方逐模替换 $\omega\to\omega_\lambda, a\to a_\lambda$ 得：
	$$|Q_\lambda\rangle=(\tfrac{\omega_\lambda}{\pi})^{1/4}e^{-\tfrac12\omega_\lambda Q_\lambda^2+\sqrt{2\omega_\lambda}Q_\lambda a_\lambda^\dagger-\tfrac12 (a_\lambda^\dagger)^2}|0\rangle,$$
	$$|P_\lambda\rangle=(\tfrac{1}{\pi\omega_\lambda})^{1/4}e^{-\tfrac{P_\lambda^2}{2\omega_\lambda}+i\sqrt{\tfrac{2}{\omega_\lambda}}P_\lambda a_\lambda^\dagger+\tfrac12 (a_\lambda^\dagger)^2}|0\rangle.$$
	场的配置 / 动量本征态是直积：
	$$|\{Q_\lambda\}\rangle=\bigotimes_\lambda |Q_\lambda\rangle,\qquad |\{P_\lambda\}\rangle=\bigotimes_\lambda |P_\lambda\rangle,$$
	满足
	$$\int\Big[\prod_\lambda dQ_\lambda\Big]|\{Q_\lambda\}\rangle\langle\{Q_\lambda\}|=\mathbf 1,\qquad \int\Big[\prod_\lambda dP_\lambda\Big]|\{P_\lambda\}\rangle\langle\{P_\lambda\}|=\mathbf 1.$$
	正文 2.1 中的 $|\varphi_k\rangle$ 即 $|\{Q_\lambda^{(k)}\}\rangle$，$Q_\lambda^{(k)}=\varphi_{k;\lambda}$；$|\pi_k\rangle$ 对应 $|\{P_\lambda^{(k)}\}\rangle$。

### D.3 与相干态的关系
相干态 $|z_\lambda\rangle$ ：$a_\lambda|z_\lambda\rangle=z_\lambda|z_\lambda\rangle$。重叠：
	$$\langle Q_\lambda|z_\lambda\rangle=(\tfrac{\omega_\lambda}{\pi})^{1/4}\exp\Big(-\tfrac12\omega_\lambda Q_\lambda^2+\sqrt{2\omega_\lambda}Q_\lambda z_\lambda-\tfrac12 z_\lambda^2-\tfrac12|z_\lambda|^2\Big).$$
	对所有模乘积即得与相干态完备性推导中的高斯核同一二次型，只是变量 $(z_\lambda,z_\lambda^*)$ ↔ $(Q_\lambda,P_\lambda)$ 的正则变换。

### D.4 Jacobian 与测度
线性变换 $(Q_\lambda,P_\lambda)\leftrightarrow (a_\lambda,a_\lambda^\dagger)$ 具有常数 Jacobian；采用上述规范化时完备性无额外因子。路径积分中这些常数随模积累但在相对行列式或正常序（去零点能）中抵消，不影响物理量。

### D.5 小结
插入 $|\varphi_k\rangle,|\pi_k\rangle$ 本质是在每个模上插入位置/动量本征态直积；执行对 $\pi$（或 $P_\lambda$）的高斯积分就是完成平方得到二阶（配置空间）形式。这样与相干态推导严格一致且无“handwaving”步骤。


