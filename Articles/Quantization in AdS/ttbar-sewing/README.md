# $T\bar T$ Ising：量子 Hamiltonian、区域 sewing 与物理算符

**第一阶段结果：有算符内容的一阶空间 cutoff 构造成功；有限系统的完整历史动力学粘合严格成立；有限物理耦合的全阶连续量子理论尚未构造。** 本目录不把精确谱升级为完整局域动力学，也不把有限数值升级为 UV completion。

日期：2026-11-12。新建独立方向；严格保留[原 gluing formalism](</Users/koishi/Documents/Note/Articles/Quantization in AdS/gluing/Gluing and observable algebras.md>)及[既有强关联 sewing 研究](</Users/koishi/Documents/Note/Articles/Quantization in AdS/gluing/strongly-correlated-sewing/README.md>)的历史正文和未证边界。

## 主要结果

1. **局域 Hamiltonian 不等于谱重映射。** 在 $c_L=c_R=1/2$、$v=\hbar=1$、圆周 $L$ 和 $E'_0=(P^2-E_0^2)/L$ 约定下，
   \[
   V_1=-\frac{16\pi^2}{L^3}\sum_n(L_n-c\delta_{n0}/24)(\bar L_n-c\delta_{n0}/24).
   \]
   非零模混合 paired descendants，给固定 CFT operators 的 $\partial_\lambda\langle L_2\bar L_2\rangle|_0=\pi/(8L^2)$；只重映射 energies 会漏掉它。
2. **明确空间 cutoff。** 完整 Wick-normal consecutive-Majorana quartic 给三格点范围自旋 interactions $XX,ZZ_2,YY,ZXZ$，以及必需的 hopping/identity subtractions。固定有限 NS 低模子空间中全部 matrix elements 以 $O(a^2)$ 匹配 $V_1$；保留 Casimir、NS/R parity，R spin-primary slope 也一致。这不是 finite-$a$ exact Burgers flow。
3. **精确有限-history sewing。** 用独立 regional Hamiltonians、所有实际 crossing supports 和完整 joint interface histories，实/Euclidean 演化都等于独立 global exponential；有限次组合结合。这里没有采用静态 Markov 假设。
4. **三类物理量已计算。** $N=6,L=1,\lambda/a^2=0.1$ 时，sewn/direct 的真空 spin correlator、实时 Wightman、空间 $S_1/S_2$ 和非平衡界面能流相符。14-crossing realtime/Euclidean operator errors 分别约 $7.3\times10^{-15}$、$1.2\times10^{-13}$。温差 bias-odd current 为 $2.63498087226$，与 switching-on quench contribution 区分。
5. **UV 限制是实质缺口。** 原 CFT 表示中真空一阶导数 norm² 增长为 $M^5$，bare 二阶能移增长为 $-M^6$；固定非零 $\lambda$ 时 $\lambda/a^2$ 发散。精确谱还改变 positive-collar trace 条件，详见连续部分。上述结果不能推出 cutoff-uniform spatial entropy 或全阶 sewing。

## 阅读与复现

- [Hamiltonian 与低模矩阵元证明](</Users/koishi/Documents/Note/Articles/Quantization in AdS/ttbar-sewing/ising-hamiltonian.md>)：符号、归一化、Pauli interactions、Wick subtractions、NS/R、非对角响应、二阶 UV 缺口。
- [全历史 sewing 与可观测量](</Users/koishi/Documents/Note/Articles/Quantization in AdS/ttbar-sewing/sewing-and-observables.md>)：独立区域/全局对象、收敛证明、实际数据与非可积推广边界。
- [连续谱、UV 与另一种 irrelevant deformation](</Users/koishi/Documents/Note/Articles/Quantization in AdS/ttbar-sewing/continuum-and-uv.md>)：两个 coupling signs、Hagedorn endpoint、Schatten collars、绝对历史展开与 trace 的区别、可控 cubic-dispersion 例。
- [证据索引](</Users/koishi/Documents/Note/Articles/Quantization in AdS/ttbar-sewing/verification/evidence.md>)：程序、结果、独立复核、来源和未完成检验。

运行两份 NumPy 程序可复现全部主会话有限矩阵数据；Wolfram script 可另行复算符号恒等式。输出为 Markdown，未建立 JSON 数据或改写旧 notes。

## 已完成范围与下一条真正开放的论证

已完成的是有限且可核查的第一阶段，不是对四个研究问题的无限开放结论。当前最关键的下一步是：**从局域 Hamiltonian/stress flow 推出并验证 $V_{2,a}$ 及相应 operator counterterms，不能只逐能级调谱。** 最小测试是同时匹配 vacuum、$\epsilon$、$\sigma$、chiral $T$ 及一个 off-diagonal four-mode vertex，再检验 separated smeared correlator 的二阶 cutoff 稳定性。若这一步失败，应定位 scheme/representation 或 local-flow 假设，而不是继续把未控制的 $H_0+\lambda V_a$ 当作 exact theory。

非可积 seed 的 finite-history theorem 无需新假设；其 continuum stress-product matching 必须重做。Potts 的多 sectors、空间 replica endpoint renormalization 和完整 spin-structure 信息不能从 Ising 的可解性继承。
