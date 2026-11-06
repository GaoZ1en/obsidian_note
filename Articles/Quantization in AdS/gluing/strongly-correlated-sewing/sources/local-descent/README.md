# Regional BV–BFV descent package

版本：2026-09-26。

`REGIONAL_BV_BFV_DESCENT_FORMALISM.md` 是独立的新主文，保留英文技术正文；从 common local rule 和区域数据出发，嵌入 structured sewability，将 global theory 放到 construction 的输出端。五个结构性主定理位于 §§3.1、3.3、3.5、13.1、14.1；finite refinement 位于 §13.3；optional independent-target comparison 位于 §16。

`MIGRATION_FROM_RECONSTRUCTION_TO_DESCENT.md` 是中文迁移记录，逐项说明原 26 个编号命题及 joint-interface lemma 的去向、条件和强度。

`THEOREM_DEPENDENCY_GRAPH.md` 给出数学依赖链及 Mermaid 图，并分开 direct quantization 和 regional quantum sewing。

## 校验

在 Python 3.10+ 与 SymPy 环境中运行：

```bash
python validate_descent.py
```

随包记录的实际运行环境为 Python 3.13.5、SymPy 1.14.0。`VALIDATION_RESULTS.json` 保存本版本的执行结果。`sewability_checks.py` 是前一包的有限回归脚本，也由主校验脚本调用。

校验包括来源一致性、命题迁移、公式保留、显示公式环境及引用、有限 cochain matrix identities、Gaussian phase/elimination、seam/selector 反例、Čech/Spin/flat-torus 回归。它们不是一般 PDE、无穷维正则性或任意量子实现的机器证明。

`THEOREM_MIGRATION.json` 是机器可读的命题对应表。`SOURCE_MANIFEST.json` 标识输入版本。`sources/` 保存未改动的本轮主输入及前一轮 zip，供独立回查；新主文的正文不依赖读者先打开这些材料才能理解其构造。所有原始上传文件保持不变，也未修改远端 repository。
