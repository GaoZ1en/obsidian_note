# 引力拼接与关系时间

**当前状态（2026-09-10）：等待 Wu 反馈，后续推导暂缓。** 已整理 [供 Wu 讨论的研究目标](research-goals-for-wu.md)，区分最终问题、下一阶段交付与停止标准。最新研究进展见 [辐射引力中的正则性、关系时钟与区域代数](radiative-regularity-clocks-and-algebras.md)；独立区域构造与完整量子约化仍未完成。

2026-09-10。由 Wu 的有限引力区域—外部时钟构想提取的最小可解量子力学模型。

**两能级系统已经足够：** 约束 $C=h_A-h_B=0$ 选出 $c_0|00\rangle+c_1|11\rangle$，读取 $B$ 的协变相位时钟后，$A$ 严格按 $e^{-ith_A}$ 演化。时间以 $T=2\pi/\omega$ 为周期，保留的外边界 Hamiltonian 为 $H_{B,o}=h_B$。

- [完整模型与分析](relational-time-model.md)：setup、作用量母模型、约束与物理内积、相干投影、时钟 POVM、必要充分条件、全部两能级矩阵、关系可观测量、两时刻传播、纠缠、外边界演化和嵌套检查。
- [验证记录](verification.md)：实际执行结果、复跑方式、适用范围与来源核对级别。
- [计算与原始输出](verification/)：两份 Wolfram Language 输入、结构化结果及实际标准输出。

最关键的区分是：相干零荷投影不同于统计群平均；有限读数分辨率不自动意味着条件演化非幺正；对界面规范变换不变不同于对外边界 Hamiltonian 静止。

Verified: 85 项 Mathematica 精确检查全部通过，正文包含一般有限 $d$ 的逐项证明。

Assumptions: 已指定的匹配能谱、界面相位规范对称性、时钟 POVM 和外边界 Hamiltonian。

Not verified: 这一有限离散谱模型是否由具体引力作用量导出。下述引力实现得到连续质量谱，不把它当作两能级截断的推导。

## 引力阶段：球对称 Einstein 真空的有限壳层

已完成 [实际引力拼接模型](schwarzschild-sewing.md)：从 Einstein–Hilbert、GHY 和相容参考项得到界面荷

$$
\mu_\Gamma=E_\Gamma(m_A)-E_\Gamma(m_B),\qquad
E_\Gamma(m)=R_\Gamma\left(1-\sqrt{1-2m/R_\Gamma}\right),
$$

并在固定半径、保留边界参考钟的相空间中证明拼接就是零 level 的 $\mathbb R$ 辛约化，显式商坐标为 $(m,p_A+p_B)$。连续谱量子化使用 rigging map，物理 Hilbert 空间为 $L^2(I,dE)$；普通运动学不变子空间在这里为零。

该实现保留了两个真实 timelike 边界；正则中心的纯真空球体只允许零质量。正文明确处理这一限制、实际切片域与 frame 的区别，以及外边界的质量依赖红移。

Verified: 新增 33 项 Mathematica 检查与 6 组 xAct/xCoba 几何残差全部通过，附 [引力验证记录](gravity-verification.md)。

Assumptions: 四维球对称真空的静态外部质量带、固定球面半径、参数化边界参考原点及声明的能量极化。

Not verified: 非球对称辐射引力、穿越视界、核心物质、可变面积 corner，以及与任意未约化 ADM 量子化方案的等价。

## 一般阶段：完整几何响应与普遍命题的范围

已新增 [一般引力界面的拼接](general-gravitational-sewing.md)。正文给出任意因果类型界面的无曲率脉冲判据，以及非 null Einstein 真空中完整响应匹配等价于给定区域解光滑拼接的证明；后者允许真正的辐射自由度。

同时给出三个精确反例，分别排除“总能量匹配足够”“null 无薄壳就无引力脉冲”“null 一阶匹配就自动光滑”。空间分区的预辛形式相加及内部通量抵消得到证明；spacelike 演化关系、普通辛商和量子时钟的额外条件单独列出。

Verified: 24 项 Mathematica 精确检查、16 组 xAct 张量/曲率残差全部通过，见 [一般拼接验证记录](general-sewing-verification.md)。

Assumptions: 四维 Einstein 理论，指定 collar 与完整 trace 匹配；预辛结论使用实际解族及相容外边界/corner；正则辛商与关系量子演化是附加条件成立后的结论。

Not verified: 任意 radiative boundary-frame 构造的完整 gauge 核与全局辛商、任意 corner 网络、完整量子引力与全局时钟。无条件的“任意界面普通辛商并自动产生时钟”没有被标为完成。
