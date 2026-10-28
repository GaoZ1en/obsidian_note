# 独立审查附件

主报告为《AdS3两轮结果独立审查与补证.md》。各分目录保留本次独立脚本、实际结果及未应用的修复。

原研究报告与原程序未修改。compact_output.patch 与 pair_gram_compact_copy.py 只演示通用 Gram 输出的独立修复，未应用到用户原研究包。

脚本使用 Python、SymPy，个别检查使用 NumPy。部分脚本需要原 Fock research package 或本次运行环境中的输入位置；请先检查脚本开头的 import/path 配置并指向原包。本附件不捆绑或替换原研究包，也不声称所有脚本可脱离其输入一键运行。JSON 为本次实际执行所得结果，报告分别说明独立推导、共享动力学输入与有限验证范围。

source_hashes.json 记录审查前后主报告及 quickstart 的一致性。
