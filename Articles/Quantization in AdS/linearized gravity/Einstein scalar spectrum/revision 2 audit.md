# 第二版核查与文章状态

## 判断

**在以下条件下正确：**最小 Einstein–实标量作用量、固定物理单粒子质量、标准无源边界条件、光滑中心、Brown–Henneaux 渐近行为，以及固定有限模／有限能级的树级展开。物理 primary 能移的解释还使用正能、非零范数的微扰 Virasoro 电荷表示，并要求目标 primary 不与另一个物质 primary 真正碰撞。

在这个范围内，第一版提出的三项任务已经补齐：交换到 Casimir 的配对论证、结构性边界引力子简并下的 primary 分支、直接非圆对称矩阵元。全径向、全允许偶自旋的闭式不需要改动。这不是完整 Fock space 在所有特殊质量处的对角化，也不是任意永恒源的 de Donder 可达性定理。

当前正文为 [可编辑文章](article/paper.tex)，阅读版为 [PDF](article/paper.pdf)。[第一版审查](closed%20form%20spectrum%20audit.md) 保留当时的证据与问题；本记录更新其中三项问题的状态。

## 本次实际执行的检查

| 检查 | 独立方法和结果 |
|---|---|
| 离壳 Einstein 恒等式 | xPert 直接变分 Einstein 方程，xTras 在单位半径 AdS3 上化简；任意对称张量、未加规范条件，残差为零。 |
| 两个 Green current | xAct 检查 Casimir 和 Einstein 配对差等于所写电流的散度；两个残差为零。 |
| tensor Lie-Casimir | xCoba 计算背景联络，再对六个独立张量输入逐分量检查；每个输入保留任意径向函数及符号频率、角动量，全部残差为零。 |
| 非圆对称所用响应 | 静态 seed、角向响应、同号频率响应的全部 Einstein 分量均在一般 $\Delta>1$ 下为零；不是只检查 $\Delta=2$。三种标量模的 KG 方程也通过。 |
| 非圆对称积分与归一化 | Mathematica 从显式度规响应和 polarized stress 收缩后积分；三种 KG 范数为一，Killing 梯子和响应导数恒等式通过。 |
| primary 代数 | Sage 从 Virasoro 对易式重建二级 Gram 矩阵，检查 $L_1Q_2=0$、$L_2Q_2=\nu_2|h\rangle$、范数、投影及 Ward overlap；并核对左右等级各不超过八的 81 个双标量字符系数。 |

以上记录分别见 `scripts/revision2_tensor_audit_results.json`、`revision2_component_audit_results.json`、`revision2_noncircular_audit_results.json`、`revision2_branch_audit_results.json`，对应源脚本同目录保存。Wolfram Language 14.3 与 SageMath 10.9 的本次运行均通过。有限字符检查支持正文的形式字符恒等式；它本身不证明全等级表示论或构造相互作用电荷。

先前已执行的 25 个一般质量系数、任意指标递推、唯一性证书、21 项导入代数检查与 588 个径向通道比较保留原报告。本次没有把这些未改动的检查冒充为新重跑结果。

## 三项论证为什么可以收下

### 交换配对的物理桥梁

对 $Pq=q-g\operatorname{tr}q/2$、$A=\mathscr C-2$，第二版正确保留了

$$
\mathcal E^{(1)}[q]=-PAq+P\nabla_{(\mu}C_{\nu)}[q].
$$

与守恒源配对以后规范余项才变为散度。渐近正交标架下 $T=O(r^{-2\Delta})$、$q=O(r^{-2})$，加上相应导数估计，给出的实际径向积分量是 $rJ_A^r=O(r^{-2\Delta})$ 与 $rJ_E^r=O(r^{-2})$。中心由光滑性控制；有界时间谐波的端点差除以平均时间后趋零。大 Brown–Henneaux 向量的配对边界量 $O(r^{2-2\Delta})$ 也在 $\Delta>1$ 时消失。

这些是明确边界域上的解析估计，不能由几个符号残差代替。有限标量源的有界代表来自静态 seed 的 Killing 递推，以及同号源的有限 primary 分解；并不需要先证明任意源的全局 Lorentzian 逆算符存在。物理共振不能用删去 secular 项来处理。

四个不同外腿每个无序分区的因子为 $-(\kappa^2/4)\times2\times2\times2=-2\kappa^2$；与 $\mathcal E^{(1)}q=T/2$ 合起来得到正文的 contact 源归一化。有限块的 Duhamel 公式固定能移与 $\frac12\log(z\bar z)$ 的对应。本地正文特别说明：这里的 $V$ 是包含两次 $O(\sqrt G)$ 三次顶角交换后的 $O(G)$ 有效扰动。

### primary 分支与边界引力子

Gram 投影应在完整的相互作用谱簇里，用实际微扰 descendants 定义：

$$
\Pi_{\rm prim}=P_{\rm cl}-D(D^\dagger D)^{-1}D^\dagger.
$$

列向量的非零归一化不改变投影，因此可以先用大 $c$ 的归一化振子基，再取自由极限。这个构造求逆的是非退化 Gram 矩阵，不是结构性简并的能量差；它定义分支，但没有给出所有 bare Fock-space dressing 系数。

固定轻权重和有限等级时，额外 Virasoro quasiprimary 的 global-block 系数为 $O(1/c)$；母 primary 的 $O(G)$ 能移作用在该项上产生的额外对数从 $O(G^2)$ 开始。因此当前 $O(G)$ 的双标量对数系数识别该 primary 的能移。这个使用范围与 [Perlmutter 的 global-block 分解](https://arxiv.org/html/1502.07742) 一致；它保留了边界引力子对非对数数据和态数的影响。

真正的其他物质 primary 碰撞仍要区分。例如 $\Delta=2$ 时，双标量 $(n,\ell)=(2,0)$ 与四标量基态同在自由能量八；当前系数不是那个更大 primary 块的全部本征值。无理数 $\Delta>1$ 足以排除本文单一实标量模型中不同偶粒子数的此类碰撞。若只研究一般质量，不必把这个特殊质量问题加入当前任务。

### 非圆对称的直接检验

令 $|A\rangle=b_{00}^\dagger b_{10}^\dagger|0\rangle$、$|B\rangle=b_{0,1}^\dagger b_{0,-1}^\dagger|0\rangle$。外态总角动量为零，但交叉源有 $J=\pm1$。直接收缩并积分得到

$$
I_+=I_-=-\frac{\Delta^2(8\Delta-3)}{16\pi(2\Delta-1)(2\Delta+1)},\qquad
I_s=\frac{\Delta^2(2\Delta-5)}{16\pi(2\Delta-1)(2\Delta+1)(2\Delta+3)},
$$

$$
\frac{V_{AB}}G=-32\pi(2I_++I_s)
=\frac{2\Delta^2(32\Delta^2+34\Delta-13)}{(2\Delta-1)(2\Delta+1)(2\Delta+3)}.
$$

积分完成后才与 $(g_{00}-g_{10})/2$ 比较，残差为零。在 $\Delta=2$ 得到 $488/35$。这项支持实际非圆对称动力学，不是再次执行圆对称表示论重建。

## 导入与文章修改

根目录四份文件逐字节迁入 [revision-2](imported/revision-2/README.md)：`paper.tex`、`paper.pdf`、`proof_audit.md`、`closure_note_zh.md`；哈希保存于 intake manifest。导入原稿没有覆盖第一版，也没有修改。原作者所列六份新 Python 检查脚本未随这次文件提供；不能把原作者报告的运行等同于本地验证。

从第二版建立独立可编辑正文，吸收三项新增论证和收尾记录中的适用范围；补清有效 Hamiltonian、Gram 列归一化和未构造的 dressing；将复现章节换成实际存在且已执行的本地检查。原谱笔记的历史计算和低阶数据继续保留。

**Verified:** 上表的精确代数、算符、响应、积分和有限等级检查通过；三个原待办在声明范围内关闭。

**Assumptions:** 固定有限等级、标准边界域；正能非零范数微扰 Virasoro 表示；解释为独立物理能级时排除额外物质 primary 碰撞。

**Not verified:** 全部特殊质量下的额外 primary 混合、无限模收敛、完整 bare dressing、非微扰 Hilbert space 以及低自旋公式的穷尽文献新颖性判断。这些不是本次树级一般质量计算已经完成的内容。

下一步应做文献定位和投稿叙事整理，见 [TODO](TODO.md)。不需要为了关闭原三项而计算 $G^2$。

## 交付检查

修订 PDF 编译为 20 页，没有未定义引用、LaTeX warning 或 overfull/underfull box。已检查全部页面缩略总览，并放大检查 Green currents、非圆对称响应和 primary 投影相关页面；导入 PDF 对应公式页也已对照。102 个显示公式环境与导入第二版逐字一致。32 个维护文档本地链接、vault policy 和新增文件空白检查通过；四份导入文件的哈希保持不变。
