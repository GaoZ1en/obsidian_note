# 独立终审

**判定：在主文明确的局部、正半径、非退化参数及通量 ansatz 条件下，未发现实质数学错误或把有限例证升级为分类定理的问题。** 本审查先读适用 AGENTS；未联网、未读取目录外用户研究资料、未修改源文或计算脚本。

审查对象：[solution.md](</Users/koishi/Documents/Note/Drafts/test_2/solution.md>)，并核对相关证明及证书；下面严格区分本轮直接验证与既有计算记录。

## 已直接验证

1. **非 null 归一化与符号。** 从式 (5) 独立得到 \(s^{-3}F'=\lambda F_0+\delta\lambda^2t\,d\Theta\)，其中 \(\lambda=\sqrt G,t=\widehat\gamma\lambda\)。换到移除总体尺度的正交标架后电系数为 \(f_i\)、混合系数幅度为 \(tf_i\)。timelike 的 \(\delta\) 和 MC 相对手性不能删去；主文及 KSE 源一致。五 gamma 完全反对称确实给 \(\Gamma_M\not F/12-\not\!\iota_MF/4\)。
2. **非 null 完整计数。** 本轮直接执行 [susy_exact_check.py](</Users/koishi/Documents/Note/Drafts/test_2/susy_exact_check.py>)：两签名均 `checks = 94, failed = {}`，交叉样点曲率秩均为 24。核对了两条全参数曲率因式分解如何强制 \(H\epsilon=0,J\epsilon=\epsilon\)；全参数结论不依赖有限域样点。投影的连接保持及曲率消失提供充分性，不只是必要条件。
3. **四奇维 null 分支的偶 spectators：补充直接验证。** 令 \(D_a\) 为 KSE 的零阶矩阵、\(a=L^{-1},b=R_+^{-1},c=R_-^{-1}\)。取 \(B=1,s_+=s_-=-1\)，独立按主文的 null MC/flux 重建 \(12D_a\)，只复用现有 Python 的稀疏 Clifford 运算；在商环 \(a^2=b^2+c^2\) 中精确得到
   \[
   D_{0,1,2,9,10}\Pi_4=0,\quad
   (-D_5+b\Gamma^{34})\Pi_4=(-D_8+c\Gamma^{67})\Pi_4=0,
   \quad U\Gamma^2\Pi_4=0.
   \]
   中间两式正是剩余 Hopf Killing 场的 Kosmann 作用。Schrödinger 的 \(H=\partial_u,D=u\partial_u+z\partial_z/2\) 保持主文 coframe；\(C=u^2\partial_u+uz\partial_z+z^2\partial_v/2\) 的标架 Lorentz 补偿正比于 \(U\Gamma^2\)。所以三者以及 flat 平移都作用为零。非零 \(B\) 的局部坐标归一化覆盖其余幅度。这确认了主文四奇维分支的 spectator 声明，而不只核对奇奇括号。
4. **必要性／反例逻辑。** 从两个 flat Einstein 方程及各因子的 base/fiber 方程，六项 ansatz 内确有 \(E_i^2=f_i^2,T_i^2=\delta f_i^2(1-q_i^2)\)；Bianchi 随即强制共同 \(q_i^2\)。不等球反例加入被排除的磁分量，且保留 CS 与 Einstein trace 项；一个精确八超荷参数点足以反驳普遍相等性，无须全参数 SUSY 分类。主文没有混淆这两个逻辑范围。

## 只读核对，未在本轮重跑

- [null_check.wl](</Users/koishi/Documents/Note/Drafts/test_2/null_check.wl>)：frame、flux、Koszul/KSE 系数、非坐标曲率和连接稳定性判据一致。正则投影给下界；从**原始**曲率矩阵抽取的子式给上界。半径参数化覆盖全部正半径比；[verification.md:93–105](</Users/koishi/Documents/Note/Drafts/test_2/verification.md#L93-L105>) 所列子式在 \(0<w<1\) 均无零点。因此记录的输出若按所给源码复现，确实证明全参数 8/4/0/0，而非 generic 计数。本轮没有重新计算这些大型行列式。
- [null_algebra.wl](</Users/koishi/Documents/Note/Drafts/test_2/null_algebra.wl>) 的实结构、向量传输、非退化奇配对及两个球 Casimir 检验路径正确。**该脚本自身只显式检查 flat spectators，不检查其余 spectators**；上面的直接补验及下述表示论说明弥补这个证据定位缺口。
- [bosonic_bps_counterexample.wl](</Users/koishi/Documents/Note/Drafts/test_2/bosonic_bps_counterexample.wl>) 与主文反向 MC、四形式及 \(\Gamma^{0\cdots10}=-1\) 对齐；精确曲率核等于连接稳定核的判据足以给恰八超荷。未重新运行其矩阵消元。
- 非 null 自旋子传输与向量双线性共同缩放的解析证明成立，支持异常因子及参数不变；没有把“八个奇生成元”本身当作识别超代数的证明。

**建议的小补强：** 在四奇维 null 超代数段补一句独立于程序的理由：\(V=(\mathbf2,\mathbf2)\) 的指定四维实形式绝对实不可约，故 \(\operatorname{End}_{SU(2)^2}V=\mathbb R\)。各 spectator 保持场、与两个完整 SU(2) 及 \(N\) 对易，其奇部作用只能为 \(rI\)；非退化 \(\{Q,Q\}\propto N\) 与 Jacobi 强制 \(2r=0\)。这不是修改数学结论，而是让证据覆盖范围更清楚。

## 本轮未验证

未重跑全部 bosonic EOM、null 大型秩子式／双线性证书与不等球精确核；未独立复算第 5 节全部荷积分。文献首创性、全局商下自旋结构及 warped 边界荷仍不在此局部审查范围。以上“未发现错误”不是对这些未执行计算的重新认证。
