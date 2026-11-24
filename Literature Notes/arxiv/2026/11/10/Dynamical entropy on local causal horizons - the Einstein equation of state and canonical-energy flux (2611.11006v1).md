---
paper id: 2611.11006v1
title: "Dynamical entropy on local causal horizons: the Einstein equation of state and canonical-energy flux"
authors:
  - Roh-Suan Tung
publication date: 2026-11-07T23:08:11+00:00
abstract: |-
  在四维无旋 null 生成元束上，cut-local HWZ 代表元和以固定参考生成元测度定义的对数面积泛函分别满足精确 Raychaudhuri 恒等式。前者配合局域平衡、Unruh 温度与 Clausius 假设给出条件性的 Einstein 状态方程；后者在 null convergence 下单调，但有限振幅熵解释仍需额外粗粒化假设。平衡附近的二阶响应包含 HWZ shear flux、物质面积应变和端点存储项，且依赖仿射原点与固定的 Killing 生成元。
comments: "26 pages"
url: https://arxiv.org/abs/2611.11006v1
summary: "可直接复用的是参考测度与物理热流的区分、完整物质 Hessian、cut-storage 极化以及固定仿射锚点的 canonical-energy 平衡。"
tags: []
---

# 三层结论不要混在一起

**两条非线性几何恒等式成立；有限振幅泛函是统计熵，现有证据尚未证明。** 平衡附近与 HWZ canonical energy 的联系，还要求 stationary bifurcate Killing horizon、相应的仿射锚点及明确的 horizon-locking gauge。

对当前区域 CPS／拼接工作，本文最有用的并不是“从热力学推导引力”这一标题层面的叙述，而是：

- 用瞬时面积测度计算物理热流，与用固定生成元 cell 计算 source，是不同的对象；二阶相差 \(2a\,\delta T_{kk}\)。
- 看似负号的 expansion-square 项不能单独解释；它与面积应变热流合并后成为正的体 focusing 项加一个 cut-storage 端点差。
- 改变仿射原点会改变 boost 权重与熵 Hessian。它不是不改变物理生成元的纯坐标变换。
- 本文 §9.3 的有限子系统／MOTS 面积式明确只是 schematic，不能当作已经证明的区域面积定理。

来源为 [arXiv v1](https://arxiv.org/abs/2611.11006v1)，共 26 页，PDF 页码与印刷页码相同。已阅读 §§1–10；没有技术附录。主要式 (11–13)、(20–22)、(44–49)、(56–61)、(79–80)、(90) 分别核对 PDF p.6、8、14、16、20、23 的实际页面。几何与 Hessian 的可计算链条由本笔记解析及 CAS 重做；HWZ current 的完整 CPS 改善定义仍按原文引用的文献作为输入。

# 四维无旋光束与两种测度

取 signature \((-+++)\)，保留 \(G\)，令 \(c=\hbar=k_B=1\)。在 smooth、twist-free null hypersurface \(H\) 上，\(k^a\) future-directed，\(V\) 是仿射参数：
\[
k^a\nabla_aV=1,\qquad \nabla_k k=0.
\]
截面 \(C_V\) 的正定二维度规为 \(q_{AB}\)，光学张量分解成展开 \(\theta\) 与 trace-free shear \(\sigma_{AB}\)，\(\sigma^2=\sigma_{AB}\sigma^{AB}\geq0\)。固定的是同一束生成元及其标签，而不是沿途任意改变的截面区域。

\[
\partial_VdA=\theta dA,\qquad
\theta'=-\frac12\theta^2-\sigma^2-R_{kk},
\quad R_{kk}=R_{ab}k^ak^b.\tag{3,5}
\]
\(1/2\) 来自二维 screen，本文所有具体系数均限于四维。

选择参考 cut \(C_{\rm ref}\)，将它置于 \(V=0\)，定义
\[
dA(V,x)=J(V,x)dA_{\rm ref}(x),\qquad J(0,x)=1,
\quad \partial_V\ln J=\theta.
\]
要求 \(J>0\)，即没有跨过第一处 caustic；否则固定生成元 cell 的解释失效。平衡论证另取 \(C_0\)，只要求在所选点 \(p\) 有 \(\theta(p)=\sigma_{AB}(p)=0\)，不是要求有限曲面处处 equilibrium。一般的 \(C_{\rm ref}\) 不必是这个平衡 cut。

为独立检查曲率与符号，xAct/xCoba 对
\[
ds^2=-2du\,dv+A(v)^2dx^2+B(v)^2dy^2,\quad k=\partial_v
\]
计算得到
\[
R_{vv}=-A''/A-B''/B,
\quad \theta=A'/A+B'/B,
\quad \sigma^2=\frac12(A'/A-B'/B)^2.
\]
代入 Raychaudhuri 后残差为 **0**，没有使用 Einstein 方程；取 \(A B>0\) 的无 caustic 区域。

# cut-local HWZ 代表元：去掉的是线性展开，不是所有负项

§3 定义
\[
S_{\rm loc}[C_V]=\frac1{4G}\int_{C_V}(1-V\theta)dA.\tag{11}
\]
若从 \(\int(1+f(V)\theta)dA\) 出发，导数中线性 \(\theta\) 的系数为 \(1+f'\)。要对所有 congruence 消掉它，就须 \(f=-(V-V_0)\)。所以这一特定 ansatz 内，\(-V\theta\) 是由“没有瞬时线性展开项”选择出来的；这里的 cut-local 要求比泛称“泛函只依赖当前 cut”更强，不能由这个证明推出所有局域熵的唯一性。

显式求导：
\[
\partial_V[(1-V\theta)dA]
=-V(\theta'+\theta^2)dA,
\]
因而
\[
\boxed{\frac{dS_{\rm loc}}{dV}=
\frac V{4G}\int_{C_V}\left(R_{kk}+\sigma^2-\frac12\theta^2\right)dA.}\tag{12}
\]
不再需要未来最终平衡 cut 来积分 \(\theta\)，但仍有负的 \(-\theta^2/2\)。因此这不是任意振幅、任意初始光束的无条件正性定理。

## 条件性的 Einstein 状态方程

近 \(p\) 构造 approximate boost
\[
\xi^a=\kappa(V\partial_V-U\partial_U)^a+\zeta^a,
\quad \zeta^a=O(\kappa\rho^3/R_c^2),\quad \kappa>0.
\]
在中心生成元上 \(\xi=\kappa Vk\)，其附近 Killing defect 为 \(O(\kappa\rho^2/R_c^2)\)。赋予其 \(T_U=\kappa/(2\pi)\) 是输入；一般有限曲率 patch 的精确 thermality 并未由这个几何估计推出。

物质 boost 热在中心生成元的领先阶为
\[
\frac{\Delta Q_{\rm matt}}{T_U}
=2\pi\int_H V T_{kk}\,dV\,dA+\text{shrinking-patch remainder}.
\]
平衡点附近 \(\theta^2,\sigma^2\) 高阶；若假设领先 Clausius 平衡对每一点的所有 null 方向成立，则
\[
(R_{ab}-8\pi GT_{ab})k^ak^b=0.
\]
一个对所有 null 向量二次收缩都为零的对称张量必须为度规的倍数：在局域正交系中先取 \(k=(1,\pm e_i)\)，消掉混合分量并固定对角分量，再取 \(k=(1,(e_i+e_j)/\sqrt2)\)、\(i\ne j\)，即可消掉非对角空间分量。于是 \(R_{ab}-8\pi GT_{ab}=\Phi g_{ab}\)。结合 \(\nabla^aT_{ab}=0\) 和 contracted Bianchi，\(\nabla_b(\Phi-R/2)=0\)，得到
\[
G_{ab}+\Lambda g_{ab}=8\pi GT_{ab}.
\]

真正的假设包括：熵密度 \(1/(4G)\)、上述熵代表元、Unruh 温度、局域平衡 cut 的存在、锚点选择、Clausius 假设与应力守恒。若一开始用未知密度 \(\eta\)，推导只会给 \(G=1/(4\eta)\)，不会独立预测牛顿常数或微观态数。原文明确把这些条件列为 Theorem 2，而不是声称无输入地导出引力。

# 固定 cell 的对数面积泛函：正性来自改换权重

§5 的有限振幅对象是
\[
S_L[C_V;C_{\rm ref}]=\frac1{4G}\int_{C_{\rm ref}}
(1+\ln J-V\theta)dA_{\rm ref}.\tag{21}
\]
\(\ln J\) 是经典面积 Jacobian 的对数，不是量子黑洞熵的 logarithmic correction。由于积分测度不随 \(V\) 变化，
\[
\partial_V(1+\ln J-V\theta)=-V\theta',
\]
\[
\boxed{\frac{dS_L}{dV}=\frac V{4G}\int_{C_{\rm ref}}
\left(R_{kk}+\sigma^2+\frac12\theta^2\right)dA_{\rm ref}.}\tag{22}
\]
Mathematica 对 (12)、(22) 的导数残差都给出 0。若 null convergence \(R_{kk}\geq0\) 且 \(V\geq0\)，则 \(S_L\) 单调，直到第一 caustic。这是 off-shell 几何结论；Einstein 解上的 NEC 是保证 null convergence 的一种方式。

## 为什么这不是通常的有限振幅 Clausius 定律

物理瞬时面积通量是
\[
\dot Q_{\rm area}=\kappa V\int J T_{kk}\,dA_{\rm ref}.
\]
而把 (22) 的曲率项用 Einstein 方程换成物质，需要
\[
\dot Q_{L,\rm matt}=\kappa V\int T_{kk}\,dA_{\rm ref}
=\dot Q_{\rm area}+\dot C_{\rm ref},
\]
\[
\dot C_{\rm ref}=\kappa V\int(1-J)T_{kk}\,dA_{\rm ref}.
\]
\(\dot C_{\rm ref}\) 不定号，只是测度转换，不是另一种物质能量或独立功通道。完整平衡为
\[
T_U\dot S_L=\dot Q_{\rm area}+\dot C_{\rm ref}
+\frac{\kappa V}{8\pi G}\int(\sigma^2+\theta^2/2)dA_{\rm ref}.\tag{28}
\]
把转换项略掉，就把不同测度的两个量硬当成相同。

反过来，若将固定 cell 平衡作为对每一小生成元束、每个 null 方向、一个正 \(V\) 区间上的要求，减去几何恒等式便得到 \(\int(R_{kk}-8\pi GT_{kk})dA_{\rm ref}=0\)。缩小束后恢复 Einstein 方程。正参数区间很重要：在 \(V=0\) 平衡恒为 \(0=0\)，不能由此读取场方程。这个等价刻画不需要能量条件，但本质是把 null-projected Einstein 方程重写为一条加权平衡，并不因此建立了 \(S_L\) 的微观熵解释。

## 凸存储与受限的唯一性

令 \(\Phi(J)=J-1-\ln J\geq0\)。原文 (35) 是
\[
T_U(S_{\rm loc}-S_L)=\mathcal B^{\rm NL}_{\rm exp},
\quad
\mathcal B^{\rm NL}_{\rm exp}=\frac\kappa{8\pi G}
\int[\Phi-V\partial_V\Phi]dA_{\rm ref}.
\]
注意凸函数 \(\Phi\) 非负，不等于整个 \(\Phi-V\Phi'\) 非负。Mathematica 直接验证了存储恒等式。

在两函数 ansatz
\[
S=\frac1{4G}\int[1+\Psi(J)+f(V)\theta]dA_{\rm ref},
\quad \Psi(1)=f(0)=0,
\]
导数中线性展开项系数为 \(J\Psi'(J)+f'(V)\)。若 **off shell** 对独立的 \(J,\theta\) 要求它恒为零，则两个独立变量的函数只能各为常数：
\[
J\Psi'=a_*,\quad f'=-a_*,\quad
\Psi=a_*\ln J,\quad f=-a_*V.
\]
再要求 null convergence 下逐点非负，给 \(a_*\geq0\)；一般允许变分的第一阶 HWZ 匹配选择 \(a_*=1\)。若不固定 \(f(0)\)，还允许平移常数；只在 \(\delta\theta=0\) 的真空小扇区匹配不足以固定这个常数。故 Theorem 9 是**指定 ansatz 与 off-shell 消项条件内**的唯一性，不是所有可能视界熵的唯一性。

## 收缩的平直光束就是解释边界的反例

取 shear-free、\(R_{kk}=0\)，参考展开为常数 \(\theta_r\)：
\[
\theta(V)=\frac{\theta_r}{1+\theta_r V/2},
\quad J=(1+\theta_r V/2)^2,
\]
\[
S_L=\frac{A_r}{4G}\left[1+2\ln(1+\theta_r V/2)
-\frac{\theta_r V}{1+\theta_r V/2}\right].
\]
\[
\dot S_L=\frac{A_r V\theta_r^2}{8G(1+\theta_r V/2)^2}\geq0.
\]
当 \(\theta_r<0\) 时面积持续减少，但 \(S_L\) 增加；\(V_c=-2/\theta_r\) 是 caustic。该解与导数已重新代入验证。它不是从 \(\theta=0\) 的平衡 cut 出发的演化，不能混入前面的 equilibrium 假设。这个例子说明 \(\theta^2\) 是 kinematic focusing，未自动成为不可逆熵产生；原文 §5.5 的跨视界粗粒化仍只是明确提出的假设，没有构造微观态上的 coarse-graining map 或 H-theorem。

# 二阶平衡：先换到真正的 Killing-horizon 问题

§6 不再处理一般曲率 patch 的 approximate boost，而改为 stationary vacuum bifurcate Killing horizon。采用 horizon-locking gauge，保持背景仿射参数 \(V\)、\(k\)、生成元标签与 \(\xi=\kappa Vk\) 固定，仿射原点为该 Killing 场的 bifurcation cut。

扰动约定为
\[
g_{ab}(\epsilon)=g^{(0)}_{ab}+\epsilon h_{ab}
+\frac12\epsilon^2j_{ab}+O(\epsilon^3),
\]
所以 \(\delta^2 X\) 是 Hessian，**物理二次 Taylor 贡献是 \(\epsilon^2\delta^2X/2\)**。背景 \(\theta_0=\sigma_0=R_{kk}^{(0)}=0\)。一阶 vacuum 方程加上**另行选择的初始数据** \(\delta\theta=0\)，使它沿整段保持为零。

若真空 Einstein 方程固定 \(\Lambda\) 到二阶，且 \(k\) 沿扰动保持 null，则 \(R_{kk}(\epsilon)=0\)。对 (12) 两次变分得
\[
\partial_V\delta^2S_{\rm loc}
=\frac V{2G}\int\delta\sigma_{AB}\delta\sigma^{AB}dA_0,
\]
\[
T_U\Delta\delta^2S_{\rm loc}
=\frac\kappa{4\pi G}\int_{H_{12}}
V\delta\sigma_{AB}\delta\sigma^{AB}\,dVdA_0\geq0,
\quad 0\leq V_1<V_2.\tag{47}
\]
原文引用 HWZ modified canonical-energy current 的 Einstein 表达式
\[
e_G[h,h]=\frac1{4\pi G}(\kappa V)^2\delta\sigma^2\varepsilon^{(3)},
\qquad \varepsilon^{(3)}=\frac{dVdA_0}{\kappa V}.
\]
二者系数相同。此处 \(V=0\) 上的表达应由简化后的 \(V\delta\sigma^2dVdA_0\) 连续取极限，而不是单独使用奇异的 \(\varepsilon^{(3)}\)。

本笔记重做了 Raychaudhuri 到这个剪切积分的 Hessian 推导和系数；**没有从 Einstein–Hilbert CPS 电流独立重建 HWZ 的全部 cut 改善**。因此“这就是指定 HWZ current”这一识别的电流定义仍来自来源和其文献，而非把一个正积分随意命名为 canonical energy。

# 物质 Hessian：不能漏掉面积应变

固定背景 cell，设
\[
J=1+\epsilon a+\frac12\epsilon^2b+\cdots,
\quad \theta=\epsilon y+\frac12\epsilon^2z+\cdots,
\quad T_{kk}=\epsilon\tau+\frac12\epsilon^2\upsilon+\cdots,
\quad a'=y.
\]
则
\[
\delta^2(JT_{kk})=\upsilon+2a\tau.
\]
所以物理热流 Hessian 是
\[
\dot Q^{(2)}_{\rm phys}=\kappa V\int(\delta^2T_{kk}+2a\delta T_{kk})dA_0,
\]
而固定 cell 的 source 仅是 \(\kappa V\int\delta^2T_{kk}dA_0\)。差项可正可负，不是额外物质种类。

从 (12) 得原文 (55)：
\[
T_U\partial_V\delta^2S_{\rm loc}
=\kappa V\int(\delta^2T_{kk}+2a\delta T_{kk})dA_0
+\frac{\kappa V}{4\pi G}\int(\delta\sigma^2-y^2/2)dA_0.
\]
线性 focusing 方程是 \(y'=-8\pi G\delta T_{kk}\)，故
\[
2a\delta T_{kk}-\frac{y^2}{8\pi G}
=\frac1{8\pi G}[y^2-2(ay)'].
\]
带着外面的 \(V\) 分部积分，端点项不能删除。定义
\[
\mathcal B_{\rm exp}[C_V]=\frac\kappa{8\pi G}\int(a^2-2Vay)dA_0,
\]
\[
\boxed{T_U\Delta\delta^2S_{\rm loc}
=\int_H\left[\kappa V\delta^2T_{kk}
+\frac{\kappa V}{4\pi G}\delta\sigma^2
+\frac{\kappa V}{8\pi G}y^2\right]dVdA_0
+\Delta\mathcal B_{\rm exp}.}\tag{59}
\]
定义 \(T_U\delta^2S_{\rm ren}=T_U\delta^2S_{\rm loc}-\mathcal B_{\rm exp}\)，才得到纯体平衡 (61)。这是一种 cut polarization，不是新的微观熵假设。

以 \(S_\bullet=\int s_\bullet dA_0\) 定义固定 cell 上的熵密度。Mathematica 用 \(a'=y\)、\(b'=z+2ay\)、\(z'=-y^2-2\delta\sigma^2-8\pi G\upsilon\) 重算两份 Hessian：
\[
4G\,\delta^2s_{\rm loc}=b-2Vay-Vz,
\quad 4G\,\delta^2s_L=b-a^2-Vz.
\]
其差正是 \(a^2-2Vay\)，raw 与 renormalized 平衡的残差都为 0。这也独立解释了为什么 \(\delta S_L=\delta S_{\rm loc}\)，但二阶必须先减存储项才能匹配。

若 NEC 对 \(\epsilon\) 正负两侧的可微族都成立且背景 \(T_{kk}=0\)，则 \(\epsilon=0\) 为局部最小，\(\delta T_{kk}=0\)、\(\delta^2T_{kk}\geq0\)。加初始平衡展开即有 \(y=0\)；再固定初始面积则 \(a=0\)，存储消失，物理热与固定 cell source 才相同。仅单侧 \(\epsilon\geq0\) 的 NEC 不足以推出一阶项为零。

最小耦合标量 \(\varphi=\epsilon\phi+O(\epsilon^2)\) 给
\[
T_{kk}=(k\varphi)^2,
\quad \delta T_{kk}=0,
\quad \delta^2T_{kk}=2(k\phi)^2.
\]
于是二阶平衡为正的 scalar boost flux 加 shear flux；这个因子 2 与 Hessian 约定一致，势能因 \(k^2=0\) 不进入 null 收缩。

# 改变仿射原点不是保持同一 canonical energy 的对称

§8 区分三个操作。

1. **被动坐标平移**：\(W=V+b\)、锚点同步变为 \(W_0=V_0+b\)。权重 \(V-V_0\) 不变，几何量不变。
2. **常数仿射缩放**：\(V\to\lambda V\)、\(k\to k/\lambda\)、\(\lambda>0\)，则 \(\theta\to\theta/\lambda\)，\(V\theta\) 与 \(V R_{kk}dV\) 不变。比较对应的相同几何 cut，并保持缩放参数不依赖扰动。
3. **固定评价 cut 的物理重锚定**：把权重换成 \(V-c\)，而不移动原来的几何评价面。

在第三种操作中先不改参考测度，定义
\[
\Pi=\frac1{4G}\int\theta dA,
\quad \Pi_L=\frac1{4G}\int\theta dA_{\rm ref}.
\]
则
\[
S_{\rm loc}^{(c)}=S_{\rm loc}+c\Pi,
\quad S_L^{(c)}=S_L+c\Pi_L,
\quad \Delta Q_{\rm matt}^{(c)}=\Delta Q_{\rm matt}-c\kappa\int_H T_{kk}dVdA.
\]
几何导数公式的权重同步变为 \(V-c\)。其中固定参考测度的 \(S_L^{(c)}\) 在 null convergence 下只保证 \(V\geq c\) 时单调；\(S_{\rm loc}^{(c)}\) 仍含负的展开平方项，没有这条一般正性结论。一般曲面上 \(\xi_c=\xi-c\kappa k\) 未必仍是 approximate Killing boost；任意重锚定后的 source 权重不能直接叫物理热。

如果连参考 cut 也改到 \(C_c\)，则 \(J\to J/J_c\)、\(dA_{\rm ref}\to J_c dA_{\rm ref}\)。这还改变 cell 的权重，除 \(c\Pi_L\) 外有额外项；原文 (78) 明确写出，不能只用一个生成元平移来概括。

## 中点权重的盲点

对长度 \(L\) 的 shrinking patch，场方程常数项的系数为
\[
\int_0^L(V-c)dV=L(L/2-c).
\]
若 \(c=L/2\)，它为零；一个只控制到 \(o(A_rL^2)\) 的积分平衡就看不见 \((R_{kk}-8\pi GT_{kk})(p)\)。下一个矩为
\[
\int_0^L(V-L/2)VdV=L^3/12,
\]
但没有更强余项估计时也不能由此推出导数约束。这两个矩已独立计算。原文 Proposition 14 因此要求 \(|L/2-c|/\max(L,|c|)\) 在缩小时有正下界。

## 同一个 Killing 场的能量通量并不重锚定不变

在 §6 的 stationary-vacuum 扇区，
\[
\Delta\delta^2S_{\rm loc}^{(c)}
=\frac1{2G}\int_H(V-c)\delta\sigma^2dVdA_0
=\Delta\delta^2S_{\rm loc}-\frac c{2G}\int_H\delta\sigma^2dVdA_0.
\]
同一固定 \(\xi\) 的 HWZ energy flux 不会跟着无条件改变。要重新认作 canonical flux，需证明新的权重也来自适当 Killing 场并对它重做假设；平直 planar Rindler 情况允许 translated boost，是特殊例。\(\Pi\) 在本文只是几何 anchoring polarization，原文没有证明它是一个守恒的 Hamiltonian translation charge。

# 有限子系统与当前 CPS 的接口

[formalism](</Users/koishi/Documents/Note/Articles/Quantization%20in%20AdS/perturbation/formalism.md>) 的 \(\omega=\delta\theta\) 包含 \(-\int_{\partial\Sigma}\delta\Theta_{\rm corner}\)。本文的端点存储可作为比较边界极化的具体对象，但它不自动就是这份角点势的一个 primitive，也没有自动给出 \(\iota_X\omega=-\delta H\) 的新守恒荷。固定 boost、固定 cell 与界面两侧匹配必须分别检查。

§9.1 只证明 \(r=O(L)\) 时的点态 shrinking 极限
\[
\frac1{A_rL^2}\int_{H_{L,r}}\kappa V F\,dVdA
=\frac\kappa2F(p)+o(1).
\]
它足以支撑局域状态方程，**不提供一般 finite patch 的 uniform second-variation 控制**。§6–7 的精确 Hessian 定理是在另一个、真正 Killing 的背景设置中成立，不能偷换回 generic local horizon。

§9.3 把附近 MOTS 的二阶面积写成体 source、shear、focusing 加 boost-cut 与 MOTS/rim polarization 的 schematic 总和。作者明确没有给出所需 stability operator、adjoint weight、位移边界条件和 rim Green identity。因此不存在一个可以直接拿来 sewing 的完整区域面积定理。与当前研究相接的可算问题是：先在一个固定背景和指定 rim 条件下，独立求出这些边界对象，再比较其与 \(\mathcal B_{\rm exp}\) 的关系；不能仅因它们都叫 polarization 就认作同一项。

本笔记复现了光学几何、两条 off-shell 恒等式、测度转换、受限唯一性推导、凸存储、平直聚焦解、raw／renormalized 物质 Hessian 与重锚定矩。xAct 的独立度规计算及 Mathematica 的各项残差均支持上述系数与符号，未发现这些核心几何公式的矛盾。保留的缺口是完整 HWZ CPS 改善电流的独立重推、有限 patch 的二阶误差估计、MOTS/rim 定理，以及有限振幅粗粒化熵的微观构造；其中后两类也被原文明确标为未完成，不能由本笔记中的成功恒等式检验升级为定理。
