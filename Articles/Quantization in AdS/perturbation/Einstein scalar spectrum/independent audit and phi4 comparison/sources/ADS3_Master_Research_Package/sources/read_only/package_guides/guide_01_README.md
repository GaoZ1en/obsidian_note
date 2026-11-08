# AdS3 后两轮独立审查附件

主报告《AdS3后两轮独立审查与补证.md》覆盖 Analytic 与 Deep structure 两套正文和全部证明附录。各目录保存新审查说明、独立脚本和实际结果。

原报告与原研究包未修改；source_integrity.json 记录原输入文件的 SHA256 与前后比对。

运行依赖 Python、SymPy；Grassmann 数值检查还需 NumPy/SciPy，部分 cluster 检查需 mpmath。脚本默认写本目录的新结果。部分 Racah 对照检查需要原 Deep package；请先查看脚本开头的路径设置并指向原研究包。这是证据包，不声称每个脚本均可脱离原输入一键复现。

raw_nonchiral_resonance_copy.py 是交付径向程序的工作副本，在新增 Δ=4 外腿上重新计算，不能称为另写了一个独立求解器。其他独立构造与共享输入的范围详见各报告。没有捆绑或替换原研究包。

精确代数检查、数值采样、有限块与全指标证明不同；不得用通过项目总数替代其适用范围。
