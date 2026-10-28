# Hierarchical spectrum 独立审查验证包

配套主文：AdS3层级谱独立审查与补证.md。

本包是新审查材料，不覆盖或修改原研究包。日期：2026-10-19。

- cluster/：任意重叠簇乘法、Möbius 与 Bose 完备性补证；独立 CG 多项式证书。
- multiplicity/：H4–H6 导集、重数、顶支的另一套独立补证及有限接口检查。
- soft/：从微分 Casimir、真实置换和独立有理惯性算法重新生成的软谱证书；共同 flag 和移动边界层证明。
- universality/：独立 Casimir 插值与占据数配对构造，通用符号系数、同支撑反例和补充必要性反例。
- reproduction/：默认十一项实际复现、fail-closed 检查器、故障注入结果、额外有限案例；完整说明见 RUN_PORTABLE.md。
- root/：审查范围及原始引用核对。
- source_integrity.json：对本轮解包的 134 个原文件做最终 SHA-256 对照。不是对历史研究所称 893 文件的重新认证。
- artifact_manifest.json：本附件内所有证据的 SHA-256。

本包不含原始研究包、安装好的依赖或故障注入临时副本。复跑请使用新副本，避免覆盖随包实际结果。cluster、multiplicity、soft、universality 的独立脚本不导入原谱程序；reproduction 部分需要另备原研究包，具体依赖范围已说明。

独立脚本示例（从对应目录运行，使用 Python 3.12 与 SymPy 1.14.0）：

    python cluster/independent_cluster_certificate.py
    python multiplicity/independent_checks.py
    python soft/independent_soft_certificate.py --large
    python universality/independent_casimir_audit.py --generic

各脚本可能向自身目录写结果，建议先复制后运行。soft 的确切入口与可选参数可用 --help 查看。原包 runner 的执行与语义检查请按 reproduction/RUN_PORTABLE.md，不要向原包目录写入输出。

有限证书不等于无限维定理形式化验证。一般论证、继承的物理输入、实际计算和尚未解决的问题在主文分别列明。
