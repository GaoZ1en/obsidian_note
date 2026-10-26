# Regulator 分支：本轮实际验证记录

## 1. 固定输入与文件清单

固定输入为 `aa128cb903e0f3750a16a69487d64013d38667b1`。
本记录对应 complete causal TT stress–scalar–scalar coefficient，
三条 insertion 使用同一个径向 profile `beta(u/B)`。
运行日期：2026-10-26。

四份数学文件：

1. `half_bps_stress_joint_cutoff_local.md`：causal position-space fast-path theorem，
   以及 common-cutoff 的严格 timelike Hankel cancellation。
2. `half_bps_stress_joint_massive.md`：massive zero-transfer patch 的
   cutoff-uniform annular trace、injection derivative 与径向尾估计。
3. `half_bps_stress_joint_soft.md`：两个 outer-soft endpoints 的有限 cutoff
   leakage、近区与远 injection 的可求和 majorants。
4. `half_bps_stress_regulator_identification.md`：Schwartz switching profile、genuine
   common-action past-Abel、共同 Gram sum 与 external tube 的精确定义和识别。

全 null/soft/origin 的 dominated gluing 由 companion
`../../half_bps_stress_joint_limit.md` 集成。这四份文件提供其中的新局部估计，
并保持 causal TT 与 additional full Brown–York forces 的范围区分。

## 2. 实际执行

实际执行了以下三个独立 Python 程序，并在交付前再次全部运行。
三次最终运行的 exit code 均为 0，stderr 均为空。
依赖为 Python、SymPy 1.14.0、SciPy 1.17.0、NumPy。
本轮没有执行 Mathematica 或 Wolfram 程序。以下列出安装依赖后的可移植运行命令；实际集成运行及源码哈希另见 execution_record.json。

```bash
python regulator_checks.py
python massive_uniform_checks.py
python soft_uniform_checks.py
```

| 程序 / JSON 输出 | 精确验证 | 数值验证 |
|---|---:|---|
| `regulator_checks.py` / `regulator_results.json` | 10 个 exact zero residuals | 3 组 masses × 8 个 cutoff 的 complete radial integrals；4 组分离 stress/middle radial integrals；1 个 plateau moment |
| `massive_uniform_checks.py` / `massive_uniform_results.json` | 11 个 exact zero residuals | 6 个 soft-retarded mass L1 samples；4000 组 axis parameters，同时检查 future/past phase inequalities |
| `soft_uniform_checks.py` / `soft_uniform_results.json` | 9 个 exact zero residuals，另加 20 个 tensor-component scaling valuations | 5 个 sphere-average quadratures |

合计：**30 个精确零残差 + 20 个精确 tensor-component scaling 检查**。
数值检查按上表分组记录；没有把内层积分调用次数或旧验证输出计入本轮结果。

## 3. 检查的数学内容

第一程序重建 same-sign Hankel identity、两种 timelike sectors 的
imaginary cancellation、两次 squared-mass derivative、单独 stress
term 的 resonant leading coefficient、两种 collinear phase gap，
以及 retarded frequency shift 连同 output-time factor。

在 `a=2,b=c=1`，common-cutoff complete radial integral 的 `B=256`
样本为约 `1.73e-12`，数值误差估计约 `2.43e-10`；两个单独项仍有
`B^(5/2)` 增长。这里检查的是去除 tensor prefactor 后的 radial mass
coefficient；物理 tensor 在精确 collinear locus 的自身消失被单独保留。
因此这些样本支持“先组合、后估计”的计算，不声称单独 diagram 拥有
相同的 cutoff limit。

第二程序核对 `(H,T)` 与 `(H,V)` 两套坐标的 hard/soft phase derivatives、
Jacobian、radial power integrals、dyadic tail powers，以及 transverse
source tensor 的精确化简。4000 个 axis samples 中，future derivative
除以 `rho` 的最小值为 `2.000000043...`，past 的最大值为
`-2.000000043...`。这些数值是符号不等式的独立采样核对。

第三程序核对 `8 J2(v)/v^2` 的 sphere-average 表示、精确 K0 moment、
两种 soft chart 的 hard-mass 关系，以及 polynomial TT numerator 在
两个 leakage regimes 下的 20 个独立对称分量的最低幂。

## 4. 证据强度与适用范围

符号 residuals 验证列出的恒等式。数值结果检查有限 cutoff 的具体样本。
所有 null-stratum uniformity、distributional pullback、Schwartz-profile
tail summation 和 strong tempered convergence 都依赖正文给出的分析证明；
它们没有被替换成数值外推。

任意共同路径 `B,R -> infinity` 的结论作用于指定的 complete causal TT
coefficient。它要求所有 insertions 的共同径向 cutoff 与完整 derivative
switch vertex。Additional full Brown–York Ward-force terms 保持 companion
所证明的 radial-first limit。Denominator-only Abel substitutions 与单独
Gram finite parts 是不同的对象，四份正文均明确保留这项区别。

Literal `exp(epsilon t)` switching 的识别是每个固定 compact measurement
domain 上的 local distribution statement；正文构造的 Schwartz completion
才给出 global strong tempered family。这里没有从 first gravitational
coefficient 推出 interacting Hilbert-space 或 all-orders CPS theorem。

## 5. 最终检查

四份数学文件已经检查 stale slow-path-open 表述及异常控制字符。
现在的文档明确区分：局部引理、all-strata joint theorem、full stress 的
单独 regulator 顺序，以及未指定的 denominator-only regulator family。
独立交叉审阅记录见 `regulator_cross_review.md`。
