# One-body subtraction：独立审计

## 判定

**在文中明示的固定时钟、canonical Weyl、共同 scalar-leg Abel regulator 与局域减除处方内，Appendix B 的一体减除论证成立；它不是仅凭基态质量条件宣布所有激发态自能为零。** 本次未找到该范围内的反例。该结论不等于任意 regulator／协变重整化方案之间的等价性，也不单独完成完整 Fock 块或量子约束算符识别；后两项不属本审计范围。

约定：AdS 半径 1，签名 $(-++)$，$\kappa^2=16\pi G$，$d=\Delta>1$，$\mu=d(d-2)$；中心正规、fast source-free 标量边界条件、Brown–Henneaux 固定边界时钟。外模 $I=(n,j)$ 固定，$p=n+\max(j,0),q=n+\max(-j,0)$，$\omega_I=d+p+q$。所有能量系数以下按 $G$ 剥离。

已读 [CPS 约定][cps]、[Appendix B 全部源码][appendix]、[原始推导 §§73–75][original]；核对所供 [190 页 PDF][pdf] 的 pp.17–18、93–104 提取文本，另实际看图复核 pp.95、97、98。PDF 页码与印刷页码在这些页一致。未运行来源脚本或导入其结果 JSON；只读过两份来源检查脚本以了解已有覆盖。

## 关键论证是否真正闭合

1. **动力学种子并非猜测。** [B.7][ground] 给出固定六维线性系统、物理齐次动量修正和局域 Jacobi 积分。独立 fresh Wolfram 内核将两个频号的 scalar/momentum 方程、Green current、B.51 完整端点取消、B.48 行列式及六行、B.55 最终收缩全部化为零。不能将此附录概括为“缺少 ground-exchange 推导”。
2. **Ward transfer 没有偷偷令 divergent trace 循环。** [B.10–B.14][ward] 先在有限支撑写出显式 cutoff defect，再以固定外模的多项式能量界和正时间指数衰减消去末壳。随后才使用两时生成函数。由等时种子直接推激发态确实不充分；文中保留了横向导数需要的 $t_L,t_R$ 信息。
3. **有限项与极点是两项不同证明。** [B.21–B.30][pole] 的端点缩放具有非解析次数 $3,5,\ldots$；四阶算子后是 $-1,1,\ldots$，解析常数则由实际低壳与等时和固定为零。热 Casimir 算子不降低齐次次数。极点另外通过完整初始行和自由径向 Casimir 恒等式匹配为
   \[
   C_I=(4\mu+2)\int_1^\infty R_I^2dy+2\int_1^\infty y^{-2}R_I^2dy.
   \]
   不是将每个外模的发散分别拟合成 counterterm。
4. **Hartree 不能用一个真空能常数或基态质量减除代替。** [B.33–B.36][local] 的完整有限时间应力同时满足守恒，并由 tadpole 的 lapse、conformal 两个变分在约束求逆前抵消。否则基态减除后仍有
   \[
   -\frac{\mu(d-1)}3(2n+|j|).
   \]
   动能插入必须在固定标量正则动量下作 Legendre 变换；所得符号和额外 $M_2$ 项均独立核对。最后是
   \[
   e^{-\tau\omega_I}\bigl[s_I^{\rm X}(\tau)+C_I/\tau\bigr]\to0,
   \]
   而不是对两个不同外腿权重的表达式分别取 finite part。

## 新计算：精确数目与覆盖

| 计算 | 新证据 | 产物 |
|---|---|---|
| B.7 泛型 $d,a,w$ 有理恒等式 | **17/17** 精确 residual 为零；最终 fresh 内核无消息 | [脚本][allscript] · [结果][allresult] |
| 自由径向 Jacobi/beta 积分与热极点 | **80/80**：20 个模的 CPS norm、质量矩、点态 Casimir、极点/局域矩匹配 | [脚本][numscript] · [结果][numresult] |
| 独立 beta-binomial 壳求和 | **20 条完整等时闭式 trace，60/60 检查**；所有常数项严格为零 | [脚本][shellscript] · [结果][shellresult] |
| 局域插入、有限时间应力、端点/处方反例 | **13/13** 精确检查；最终 fresh 内核无消息 | [脚本][localscript] · [结果][localresult] |
| 独立有限热迹 | **160 次**，两个严格正锥路径，解析截断尾界见下 | [脚本][numscript] · [结果][numresult] |
| NumPy 和 Wolfram 的交叉比较 | **80/80** 等时值误差小于 $10^{-9}$；最大约 $1.37\times10^{-12}$ | [脚本][crossscript] · [结果][crossresult] |

总计 **170 项精确检查**，另有 160 次有限热迹、80 次数值交叉比较；不把这些数目重复累计成更多独立检验。

热迹取 $d=3/2,2,5/2,3$ 和五个外模
\[
(n,j)=(0,0),(0,1),(1,0),(1,1),(2,0).
\]
从 B.15 的逐内模系数重新生成求和，不读已求出的 trace。两路径为 $(t_L,t_R)=\epsilon(1,1),\epsilon(3,1)$，四尺度 $\epsilon=1/10,1/20,1/40,1/80$；内部最大壳为 700、1400、2800、5600。利用正 beta-binomial 权重、统一绝对壳界及指数多项式尾积分，**最大绝对截断尾界为 $2.89\times10^{-12}$**。NumPy 实际为 binary64；尾界不是舍入误差的区间证书。系数预先以 70 位求值，极点积分用 60 位 mpmath。

不等时减去的是独立 B.24 beta 积分经零阶热算子得到的 $C_{pq}(3,1)/\epsilon$，并非误用等时 $C_I/\epsilon$。四尺度消去一、二、三次项后的常数估计最大绝对值约 $5.43\times10^{-3}$：这是有限尺度收敛支持，**不是任意精度零值或余项定理**。等时零常数则有上表的完整解析求和。两路径是在同一热迹重构中检验端点，不是证明两个重整化 scheme 等价，也未直接数值重算引力 Abel 参数 $\alpha$ 与 $\tau$ 的全部联合和。

例如 $d=2$ 时，独立算得

| $(n,j)$ | $C_I$ | $[\tau^0]s_I^{\rm X}$ |
|---|---:|---:|
| $(0,0)$ | $16/15$ | 0 |
| $(0,1)$ | $16/21$ | 0 |
| $(1,0)$ | $64/105$ | 0 |
| $(1,1)$ | $592/1155$ | 0 |
| $(2,0)$ | $2224/5005$ | 0 |

尤其 $s^{\rm X}_{(1,1)}=-592/(1155\tau)-148\tau/63+32\tau^2+O(\tau^3)$。又在 $d=3/2$，ground pole 恰为零，但 $(0,1)$ 的 $C=-1/8$，故不能把基态 pole 的消失外推到激发态。

## 必须保留的处方条件与未验证项

- **共同外腿权重有实质作用。** 若 bare 项带 $e^{-\tau\omega_I}$ 而 counterterm 不带，有限项变成 $\omega_I C_I$；$d=2,(n,j)=(0,1)$ 在基态 gap 调整后仍错留 $16G/105$。
- **local 不等于单独 AdS-invariant。** $Z_\tau=-4G/(\tau y)$ 使用固定时钟背景。若任意另加有限 $Z=Gc/y$，则同一外模在基态 gap 调整后剩 $8Gc/105$。这违反恢复后的全局 Ward 条件，因而不属于文中处方；它说明“局域性 + 固定基态 gap”本身不足以证明激发态结论。
- **径向 cutoff 的移除顺序不可省略。** 对 $\phi=A y^{-d},\delta\phi=B y^{-d}$，动能 counterterm 的边界变分为 $-4GdAB(y^2-1)y^{-2d-1}/\tau$。先 $y\to\infty$ 为零；但沿 $y=\tau^{-1/(2d-1)}$ 为 $-4GdAB$。文中规定的 radial-first 极限避开了此反例，并未证明任意径向/时间联合路径。
- 本次激发态 trace 使用经过解析审查的 **Ward 重构**，不是重新逐一积分所有激发外模的 OFPT 约束源。B.7 泛型恒等式也不单独认证 $a=0,1$ 的物理中心延拓；该部分已读其 Mellin/正交性论证，但未另做完整中心响应积分。一般实 $d>1$ 的端点余项依据文中的解析估计；机器取样只覆盖上述四个质量。未声称外模激发数随 cutoff 一起增大的一致性。

## 复算

在本研究目录中运行，所有脚本只写自身 `onebody_*` 结果：

```bash
.venv_portable/bin/python -B scripts/onebody_trace_audit.py
wolframscript -file scripts/onebody_allindex_audit.wl
wolframscript -file scripts/onebody_exact_shells.wl
wolframscript -file scripts/onebody_local_audit.wl
wolframscript -file scripts/onebody_crosscheck.wl
```

每个 Wolfram 文件均自包含，实际检验使用 fresh kernel。开发中修复过壳生成器对符号指标的递归和 Limit 假设含极限变量两个实现问题，最终均重新 fresh 运行；不保留失败运行作为证据。未修改来源文件、原项目脚本或处方定义，未安装包。

[cps]: </Users/koishi/Documents/Note/Articles/Quantization in AdS/perturbation/formalism.md>
[pdf]: </Users/koishi/Desktop/todo/ADS3_Einstein_Scalar_Master_Note.pdf>
[appendix]: </Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/independent audit and phi4 comparison/sources/ADS3_Master_Research_Package/document_source/physics/physics_appendices.md#L460-L1321>
[original]: </Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/independent audit and phi4 comparison/sources/ADS3_Master_Research_Package/sources/read_only/repository/Unreduced OFPT calculation.md#L9538-L10148>
[ground]: </Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/independent audit and phi4 comparison/sources/ADS3_Master_Research_Package/document_source/physics/physics_appendices.md#L954-L1321>
[ward]: </Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/independent audit and phi4 comparison/sources/ADS3_Master_Research_Package/document_source/physics/physics_appendices.md#L618-L700>
[pole]: </Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/independent audit and phi4 comparison/sources/ADS3_Master_Research_Package/document_source/physics/physics_appendices.md#L753-L883>
[local]: </Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/independent audit and phi4 comparison/sources/ADS3_Master_Research_Package/document_source/physics/physics_appendices.md#L885-L952>
[allscript]: </Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/independent audit and phi4 comparison/scripts/onebody_allindex_audit.wl>
[allresult]: </Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/independent audit and phi4 comparison/results/onebody_allindex_audit.json>
[numscript]: </Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/independent audit and phi4 comparison/scripts/onebody_trace_audit.py>
[numresult]: </Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/independent audit and phi4 comparison/results/onebody_trace_audit.json>
[shellscript]: </Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/independent audit and phi4 comparison/scripts/onebody_exact_shells.wl>
[shellresult]: </Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/independent audit and phi4 comparison/results/onebody_exact_shells.json>
[localscript]: </Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/independent audit and phi4 comparison/scripts/onebody_local_audit.wl>
[localresult]: </Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/independent audit and phi4 comparison/results/onebody_local_audit.json>
[crossscript]: </Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/independent audit and phi4 comparison/scripts/onebody_crosscheck.wl>
[crossresult]: </Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/independent audit and phi4 comparison/results/onebody_crosscheck.json>
