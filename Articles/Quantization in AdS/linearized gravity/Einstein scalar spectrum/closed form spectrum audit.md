# 全径向、全自旋闭式的独立核查

**历史记录：**本文保留第一版审查时的判断。三项后续问题现已在声明的有限等级、一般质量范围内补齐，见 [第二版核查](revision%202%20audit.md) 与 [修订正文](article/paper.tex)；不要将下文旧待办当作当前未完成项。

## 判断与核查对象

**在以下条件下正确：**把对象限定为指定最小 Einstein–实标量模型的 connected tree-level scalar-primary 交换系数，并接受正文的正规、反射、AdS 不变交换及其与 primary 对数系数的对应。闭式与已保存的全部一般质量数据一致；局域 contact 分解、通道归一化代数、任意指标递推及低自旋唯一性证书均通过了本次检查。**这些结果尚不等于完整标量—边界引力子 Hilbert space 中所有能级与混合矩阵的证明。**

本报告核查的是 [导入文章](imported/paper.tex)、[13 页 PDF](imported/ads3_tree_spectrum_draft.pdf) 和其源文件包，来源为对话 [批评引力标量微扰論](chatgpt-conversation://6aa4eafe-2958-83e9-8f8b-d060aaefc371)。三个文件由用户放入库根目录后迁入 `imported/`；独立 TeX/PDF 与压缩包内的对应文件逐字节一致。导入文件未改写。对话中的验证声明在本报告中只有实际重跑或独立核查后才记为通过。

我们的原始基线为提交 `3ea676ef` 中的六篇笔记与十一份脚本／数据，现位于本目录。原有圆对称重建与导入文章的证明路线分别保留。

## 闭式与约定

单位 AdS 半径，signature $(-,+,+)$，$\kappa^2=16\pi G$，$\Delta>1$；采用标准无源标量边界条件、光滑中心和固定边界时间。$\Delta$ 表示重整化后的单标量最低能隙，作用量中没有独立的 $O(G)$ 四标量 contact coupling。定义

$$\begin{align}
\mu=\Delta(\Delta-2),\qquad h=\Delta+n,\qquad C=h(h-1), \qquad U_n=4(\mu-2C).
\end{align}$$

对实标量的偶自旋 primary，导入闭式为

$$\begin{aligned}
g_{n0}&=U_n+ \frac{2[15C^2-(12+10\mu)C-\mu^2+6\mu]} {(2h-3)(2h-1)(2h+1)},\\
g_{n,\pm2}&=U_n+ \frac{(n+1)(n+2)(2\Delta+n-1)(2\Delta+n)} {(2h-1)(2h+1)(2h+3)},\\
g_{n\ell}&=U_n,\qquad |\ell|\geq4,
\end{aligned}$$

其中能移为 $\gamma_{n\ell}=Gg_{n\ell}$。在已识别的物理 primary 分支上，能量写作
$2\Delta+2n+|\ell|+Gg_{n\ell}+O(G^2)$。这不是重新计算 bare 单粒子自能。

三个闭式与我们的 [25 个符号系数](scripts/gravity_scalar_primary_spectrum_data.wl) 逐项恒等。$n=0,\Delta=3/2$ 的可去奇点给出 $g_{00}=-9/2$。在规范构造排除的 $\Delta_*=(1+\sqrt5)/2$ 处，$g_{00}=-1-11\sqrt5/5$ 有限；这验证了系数的有限性，并没有证明原无 log de Donder 构造本身可直接跨过该值。

高自旋项的来源仍是 [Kraus–Sivaramakrishnan–Snively §4.2，式 (4.35)](https://arxiv.org/html/1810.01439#S4.SS2)，本次重新查阅了原文；只在高于交换自旋的范围使用。低自旋闭式依赖这里的最小作用量和交换补全，不能归结为对高自旋反演结果的直接外推。

## 通道分解与局域源

导入文章把 crossed 和 annihilation 分开：

$$\begin{align}
g^{\mathrm x}_{n0}=U_n\frac{2h-2}{2h-1},\qquad g^{\mathrm x}_{n\ell}=U_n\quad(|\ell|\geq1),
\end{align}$$

$$\begin{align}
g^{\mathrm s}_{n0}=-\frac{2(C+\mu)^2}{(2h-3)(2h-1)(2h+1)},\qquad g^{\mathrm s}_{n,\pm2}=g_{n,\pm2}-U_n,\qquad g^{\mathrm s}_{n\ell}=0\quad(|\ell|>2).
\end{align}$$

奇自旋 crossed 数据属于临时引入的两个可区分等质量物种；最终 identical-boson 谱只取偶自旋。spin-zero 的修正同时来自 crossed 和 annihilation 两部分，不能全部叫湮灭修正。

本次新增的 xAct 检查直接展开四个独立标量的 polarized stress tensors，证明文章 (5.6) 的局域代数分解：

$$\begin{align}
\mathcal K=T[a,c]\cdot T[b,d]-\operatorname{tr}T[a,c]\operatorname{tr}T[b,d].
\end{align}$$

把 $F=ab$、$J=a\,db-b\,da$、$K_F=\nabla a\cdot\nabla b$ 及相应出射组合代入时，$\mathcal K$ 等于文章的 $\tfrac12 K_F K_F^*-\tfrac1{16}dJ\cdot dJ^*-\tfrac\mu4(dF\cdot dF^*+J\cdot J^*)-\tfrac32\mu^2 FF^*$。 这是局域 off-shell 代数恒等式；以 $K_F=(\Box-2\mu)F/2$ 替换时才使用自由 KG 方程。这里星号表示出射配对，不要求在符号检查中预先把四个场绑定为共轭。

XAct/xPert 还独立验证

$$\begin{align}
\mathcal E^{(1)}[gS]=-\tfrac12\mathscr D S, \qquad \operatorname{tr}\mathscr D S=-2(\Box-3)S, \qquad (\mathscr D S)_{\mu\nu}=\nabla_\mu\nabla_\nu S-g_{\mu\nu}(\Box-2)S.
\end{align}$$

因此 spin-zero 使用 $q=-gS_n$ 的符号与因子有独立验证。源系数

$$\begin{align}
S_{nn}=\frac{4(C-\mu)(2C+\mu)}{2h-1},\qquad S_{n+1,n}=\frac{4h(n+1)(2\Delta+n-1)(2h^2-\mu)}{(2h-1)(2h+1)}
\end{align}$$

与文章的 form-factor 范数相结合后，其代数归一化及对应递推残差也通过检查。**局域分解通过，不等于自动证明将完整时空交换配对变成边界 block 对数系数时没有额外端点或边界项。**

## 任意指标的递推与唯一性

文章使用

$$\begin{align}
a_k=\frac{(k+1)(\Delta+k)(2\Delta+k-1)}{2(2\Delta+2k-1)}, \quad c_k=\frac{k(\Delta+k-1)(2\Delta+k-2)}{2(2\Delta+2k-1)}, \quad b_k=-a_k-c_k.
\end{align}$$

设 $(\mathcal L f)_k=a_kf_{k+1}+b_kf_k+c_kf_{k-1}$。本次 Mathematica 检查包含任意超几何级数指标 $j\geq2$ 的 block 三项恒等式，并单独验证 $j=0,1$；也验证了任意 $n$ 的 $\mathcal LU=2U$、两条源带和 $c_0=0$。这部分不是有限阶抽样。

给定方程 $(\mathcal L_k+\mathcal L_l-2)x_{kl}=S_{kl}$、交换对称性和 $|k-l|>2$ 的高自旋尾部，唯一性确实可以证明。两解之差只可能在三条带上非零：

$$\begin{align}
X_n=e_{n+2,n},\qquad Y_n=e_{n+1,n},\qquad Z_n=e_{n,n}.
\end{align}$$

Gap 三、二、零的方程依次给出

$$\begin{align}
X_{n+1}=-\frac{c_{n+3}}{a_n}X_n,\qquad Y_{n+1}=-\frac{c_{n+2}Y_n+(b_{n+2}+b_n-2)X_n}{a_n},\qquad Z_n=\frac{a_nY_n+c_nY_{n-1}}{1-b_n}.
\end{align}$$

所有分母在 $\Delta>1,n\geq0$ 非零；负指标项在 $n=0$ 因 $c_0=0$ 而省略。剩余 gap-one 方程的 $n=0,1$ 两行，按文章的列顺序 $(Y_0,X_0)$，给出

$$\begin{align}
\det M= \frac{960(\Delta+1)^2(3\Delta^5+24\Delta^4+63\Delta^3+68\Delta^2+33\Delta+6)}
{\Delta(2\Delta+3)(2\Delta+5)(3\Delta+2)(5\Delta+4)}>0.
\end{align}$$

本次独立重建得到了这个行列式。交换两列只改变符号，不影响结论。因此 $X_0=Y_0=0$，随后所有带都为零。**给定该源方程与高自旋输入，低自旋补全在所有径向层数上唯一；不需要无限模收敛假设。** 剩下的审查重点是该方程如何从所选物理交换问题得到，而不是继续提高 $N$ 来验证唯一性。

## 实际执行的验证

| 检查 | 本次结果 | 能支持的范围 |
|---|---|---|
| 新 Mathematica 脚本 | 40 个残差全零，行列式正性通过 | 25 个已有系数、通道相加、特殊点、任意指标 block/递推、唯一性与角向目标值的代数 |
| 新 xAct/xPert/xTras 脚本 | 3 个残差全零 | 局域 contact 分解、共形 Einstein 响应、scalar-derived tensor 的迹 |
| 导入 `verify_symbolic.py` | 21 项通过 | 重跑作者的任意指标代数证书，不冒充另一条物理推导 |
| 导入 `verify_tensor_modes.py` | spin-1 的 3 分量及 spin-2 的 9 分量检查通过 | 所给显式 primary 的 Laplacian、散度、迹、lowering 与收缩；不是任意张量 Casimir 的全算符检验 |
| 导入 `verify_radial.py` | 588 个比较全通过 | 四个有理质量、$n+|\ell|\leq12$、三个通道；包含未用于求系数的非对角一致性检查 |
| PDF | 13 页；第 6–8 页已渲染核对 | (5.1)–(5.25) 的公式、编号和关键证明排版；未重新编译文章或逐页审校全文 |

Mathematica 与 xAct 使用本地 `wolframscript`；本会话没有相应 MCP 工具。导入 SymPy 脚本通过现有 `sage -python` 环境执行，未安装依赖。运行结果存于 `scripts/*audit_results.json`、`scripts/imported_symbolic_rerun_results.json`、`scripts/imported_tensor_rerun_results.json` 与 `scripts/imported_radial_rerun_results.json`。

## 还需要做什么

**第一优先：补全 physical operator 的定义和对称性连接。** 第 5.1–5.3 节应把正规反射交换的选择、Casimir 的 intertwining、端点消去、从 bulk pairing 到对数系数的归一化串成一个明确命题。尤其应说明这里使用的 AdS 不变 reciprocal pairing 与我们有限 source-space kernel 的关系；后者的表示式本身不是一个无条件对称、AdS 不变的任意历史 Green 函数。局域 contact 检查已经通过，问题应收窄到这条整体连接。

**第二优先：完整物理空间中的分支识别。** 草稿第 1 节的 “accidental degeneracy” 不能概括全部情况。例如 $E_0=2\Delta+2,J=2$ 中，$L_{-2}|P_{00}\rangle$、$L_{-1}^2|P_{00}\rangle$ 与新 spin-two scalar primary 的自由能量对一般 $\Delta$ 都相同。这是结构性的简并。需要说明该 connected coefficient 对应哪个 Virasoro-primary 分支，以及其余 descendant 副本怎样被投影、正交化或 dressing；不能仅引用 scalar tensor product 的 multiplicity-one。

**第三优先：一个真正独立的非圆对称矩阵元。** 直接计算 $J=0,E_0=2\Delta+2$ 块中的 $V_{AB}$ 或 $V_{BB}$，不使用同一表示论重建来反推。在 $\Delta=2$，现有结果要求

$$\begin{align}
V_{AB}/G=488/35,\qquad V_{BB}/G=-176/7, \quad |A\rangle=b^\dagger_{00}b^\dagger_{10}|0\rangle, \quad |B\rangle=b^\dagger_{0,1}b^\dagger_{0,-1}|0\rangle.
\end{align}$$

这两个数字在本次只验证为闭式的代数推论，**没有**独立执行角向 response 积分。它们是下一项验收标准。

**写作判断：**已有内容足以作为可审查的研究初稿。主结果应突出全 $n$ 的低自旋补全与通道来源；单粒子质量约定、已有高自旋项和新动力学输出分开写。正式声称完整物理谱之前，优先完成上述连接与分支识别。穷尽文献新颖性检查、loop 自能、特殊规范极限与无限模收敛都不是本次完成的内容。

- **Verified:** 上表列出的实际执行检查及有明确输入的有限带唯一性证明。
- **Assumptions:** 最小作用量、标准边界条件、physical-mass scheme、给定正规反射交换与已知高自旋输入；导入证明对 primary/block 的解释如正文所述。
- **Not verified:** 全交换 prescription 的全局边界/端点定理、任意张量的通用 Casimir 分量证书、完整边界引力子混合、直接非圆对称矩阵元、loop 及无限模极限。
