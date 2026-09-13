# Wu 2017 六维 HFT：anomaly 检查

2026-09-09。对象为 [arXiv:1703.05436v2](https://arxiv.org/abs/1703.05436v2)，不是作者所有版本的 HFT。

**结论：作为具有论文所列场内容、保持完整 charge-spin $SU(2)$ 的独立六维量子规范理论，它不通过 anomaly cancellation 检查。** 单一手性 symplectic-Majorana-Weyl doublet 留下非零的局域 $SU(2)$ anomaly；这一结论在平直背景上已经成立。

约定负手性复 Weyl 的 anomaly 为 $-[\widehat A\,\mathrm{ch}]_8$，则

$$
I_8^\Psi
=-\frac12[\widehat A(TX)\operatorname{ch}_{\mathbf2}(E)]_8
=-\frac{7p_1^2-4p_2}{5760}
-\frac{p_1c_2(E)}{48}
-\frac{c_2(E)^2}{24}.
$$

这里 $\mathbf2$ 是内部 $SU(2)$ 表示，六维旋量指标已经包含在 Dirac index 中。整体手性符号改变不影响不消去的结论。

- [完整推导与结论边界](anomaly-audit.md)：自由度、Pfaffian 权重、局域反例、spin/geometry 计数、Green–Schwarz/global 条件、$SG(1)$。
- [验证记录与来源定位](verification.md)：Mathematica、Sage 的实际结果及 PDF 页码。
- [计算文件](verification/)：可复跑输入与工具原始输出。

Verified: 11 项旋量矩阵检查、17 项特征类/系数/权重检查、8 项 Sage 检查通过；关键论文公式已对照渲染页面。

Assumptions: 真正六维传播的费米子、非退化 gravifield、非零 scalar kinetic prefactor、通常局域量子场论与 chiral determinant/Pfaffian 定义。

Not verified: 完整相互作用模型的 scale-anomaly 系数与补偿作用量、其他 HFT 版本、加入新物质或 inflow 后的完成理论。这些不影响本模型已经失败的 $SU(2)$ 必要条件。
