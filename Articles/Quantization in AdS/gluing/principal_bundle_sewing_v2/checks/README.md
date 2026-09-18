# 验算程序

在包根目录运行：

```bash
python -m pip install -r checks/requirements.txt
python checks/run_checks.py
```

程序仅使用 NumPy、SciPy、SymPy 和 Python 标准库，无联网请求。输出 `results/checks.json`，失败时返回非零退出码。随包保留本轮完整 `results/run.log`；环境版本记录在 JSON，最低依赖范围不是声称逐一测试过所有兼容版本。

`exact_identity` 为符号/有限代数恒等式，`counterexample` 为成功复现错误主张的反例，`finite_diagnostic` 为有限采样。程序不证明一般 PDE 存在性，不认证所有 CS pentagon/hexagon，也不构造 interacting quantum YM。

`build_bundle.py` 只做本地格式/引用/文件路径检查、生成合稿与校验清单、创建 ZIP；它不是数学正确性检查器。修改 notes 后先重跑 tests，再运行 build 脚本更新合稿和文件 hashes。
