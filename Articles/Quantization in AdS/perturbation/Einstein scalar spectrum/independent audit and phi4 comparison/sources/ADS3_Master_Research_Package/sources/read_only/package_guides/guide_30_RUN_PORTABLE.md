# 在另一台机器复核

本附件不含原研究包、python-flint 安装目录或预建虚拟环境。须另备原始 ADS3_Hierarchical_spectrum_package。建议先复制本附件目录，在副本中运行，避免覆盖本轮原始日志与证据。

以下为 Bash 示例，请替换两个路径。OUT 应是含 semantic_check.py 等脚本的审查副本目录，不是原研究包目录。

```sh
python3 -m venv .venv-ads3-audit
. .venv-ads3-audit/bin/activate
python -m pip install sympy==1.14.0 python-flint==0.9.0 numpy==2.3.5 scipy==1.17.0 mpmath==1.3.0
export ADS3_HIERARCHICAL_SOURCE_ROOT="/your/path/ADS3_Hierarchical_spectrum_package"
export OUT="/your/path/audit-copy/reproduction"
export PYTHONDONTWRITEBYTECODE=1
unset PYTHONOPTIMIZE
python "$ADS3_HIERARCHICAL_SOURCE_ROOT/run_verification.py" --output-dir "$OUT"
python "$OUT/semantic_check.py"
python "$OUT/independent_extra_checks.py"
python "$OUT/test_checker_mutations.py"
```

这些版本复现本轮实际兼容环境，不等同于原包 requirements.txt 的锁定环境；后者锁定 NumPy 2.5.4、SciPy 1.18.1。本轮未声称已测试这两个版本。

semantic_check.py 默认读取自身目录中的十一项证书和 reproduction_summary.json；可用 AUDIT_REPORTS_DIR 指向其他含完整证据的目录。它还需要 original_hashes_before.json，与另备原研究包比较完整性。文件名相同但实际不同的原研究包会被拒绝，这正是哈希校验的目的。

semantic_check.py 和 independent_extra_checks.py 使用 ADS3_HIERARCHICAL_SOURCE_ROOT；不设时仅尝试 ../source/package/ADS3_Hierarchical_spectrum_package。缺少原包会直接给出明确错误。test_checker_mutations.py 继承相同环境变量，自动在自身目录下建立 checker_mutations/ 临时案例目录，不会修改真实证书或原包。

新增脚本不是无限维定理证明器。检查器部分结构/布尔字段覆盖参照原包 verification_runs/clean_package 的保留报告；惯性区间、维数、核和正性语义另行校验。independent_extra_checks.py 使用原包两个不同的多体构造后端，但共同继承二体输入。
