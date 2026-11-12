# 证据索引：证明、数值、独立复核与尚未完成的检验

日期：2026-11-12。结论力度以对应陈述的假设为准；此索引不把文件存在或断言通过当成物理证明。

## 1. 核心主张与证据

| 主张 | 解析推导 | 实际验证 | 边界 |
|---|---|---|---|
| 局域一阶 Hamiltonian 含非零 $L_n\bar L_n$，不等于谱重映射 | [Hamiltonian §2](</Users/koishi/Documents/Note/Articles/Quantization in AdS/ttbar-sewing/ising-hamiltonian.md>) | fresh [独立推导](</Users/koishi/Documents/Note/Articles/Quantization in AdS/ttbar-sewing/reviews/hamiltonian-independent.md>)；Wolfram normalization；CAR finite matrices | fixed seed-operator frame，一阶 composite insertion |
| $\partial_\lambda\langle L_2\bar L_2\rangle=\pi/(8L^2)$ | vacuum OFPT | independent exact 2×2 projector；主会话 CAR $M=2\ldots6$ ED | 不是任意 operator-renormalization scheme 的普适值 |
| 三格点自旋 regulator 与必需 subtractions | exact infinite-vacuum Wick identity，Pauli/JW | [格点推导](</Users/koishi/Documents/Note/Articles/Quantization in AdS/ttbar-sewing/reviews/lattice-independent.md>)；fresh [独立 ansatz audit](</Users/koishi/Documents/Note/Articles/Quantization in AdS/ttbar-sewing/reviews/spatial-regulator-audit.md>)；exact parity-block JW checks | 不声称 finite-$a$ exact Burgers |
| 固定 NS 低模全部矩阵元 $O(a^2)$ 极限 | four-mode Vandermonde；明确 circle/plane Wick conversion | 两条 Fourier/kernel 推导；真实 spin four-excitation vertex $N=4,6,8,10$ 与 exact trig factor | 不是全空间 norm convergence 或 fixed-$\lambda$ dynamics |
| NS/R vacuum 与 excited slopes | exact Gaussian occupation formulas，R zero-mode cancellation | independent spin parity-sector ED；多尺寸 Gaussian formulas | 完整 R off-diagonal/sector-changing $\sigma$ bridge 未证 |
| finite real/Euclidean full-history sewing、associativity | Duhamel factorial majorant，joint-time shuffles | independently assembled global spin exponential 对照至14-crossing | 不给 cutoff-uniform Fubini，非 Markov reconstruction |
| 真空 correlation、spatial entropy、energy transport | 同一 finite matrix/operator/state definition | direct/sewn ED，SVD/partial trace，real-time derivative/continuity/reverse-temperature bias | finite cutoff 数值，非 continuum prediction |
| vacuum derivative $M^5$ 与 bare $E_2\sim-M^6$ | Virasoro norms 和 OFPT | exact symbolic sums、CAR matrices；fresh derivation | 反驳 fixed-Hilbert norm differentiability 的指定假设，不反驳所有 TTbar theory existence |
| 正号完整谱实条件及负号 real-level runaway | discriminant completion 和 chiral tower | fresh [UV 推导](</Users/koishi/Documents/Note/Articles/Quantization in AdS/ttbar-sewing/reviews/uv-independent.md>)；CAS，有限 levels | 指定 principal spectrum 和不变 Ising multiplicities |
| $\beta_H=\sqrt{\pi\lambda/3}$，endpoint finite、energy moment divergent | exact fermion products、Bernoulli Fourier bound/local saddle、momentum-width estimate | exact character coefficients 至4000；独立 CAS exponent/tail checks | 不能只引用 total Cardy，不能从热谱推出局域量子化 |
| Schatten total-collar 与 full fine-entry absolute histories 不同 | Hölder；另行 HS-entry bound；Fourier-block 反例 | 主/独立 reviewer 交叉推导 | 任意 bounded insertions 的 theorem，不是全部 local unbounded fields |
| cubic-dispersion irrelevant control model | canonical CAR diagonalization；positive excitation energies；显式 Airy unequal-time CAR kernel | Hurwitz zeta/PDE CAS；fermion-product domination；reviewer 仅获 dispersion/CAR 的独立 follow-up 另证 Airy 符号、归一化和全空间 support | Lorentz-breaking free control，不是 TTbar UV completion |

## 2. 可复现程序和结果

- [virasoro_checks.py](</Users/koishi/Documents/Note/Articles/Quantization in AdS/ttbar-sewing/verification/virasoro_checks.py>) → [virasoro-results.md](</Users/koishi/Documents/Note/Articles/Quantization in AdS/ttbar-sewing/verification/virasoro-results.md>)。从有限 NS CAR 基构造 chiral Virasoro 矩阵；vacuum block 的 response/UV sums。全 assertions 已实际运行通过。
- [spatial_sewing_checks.py](</Users/koishi/Documents/Note/Articles/Quantization in AdS/ttbar-sewing/verification/spatial_sewing_checks.py>) → [spatial-results.md](</Users/koishi/Documents/Note/Articles/Quantization in AdS/ttbar-sewing/verification/spatial-results.md>)。物理 spin tensor、global/regional 两条路线、完整 crossing coefficients、三类 observables、actual four-excitation vertex。最终 assertions 全通过，exit code 0。
- [symbolic_checks.wl](</Users/koishi/Documents/Note/Articles/Quantization in AdS/ttbar-sewing/verification/symbolic_checks.wl>) → [symbolic-results.md](</Users/koishi/Documents/Note/Articles/Quantization in AdS/ttbar-sewing/verification/symbolic-results.md>)。实际通过 Mathematica tool 的 `Get` 执行；最终消息列表为空。保存完整 tool output 定位。
- [uv-numerics.py](</Users/koishi/Documents/Note/Articles/Quantization in AdS/ttbar-sewing/sources/uv-independent/uv-numerics.py>) → [uv-numerics.md](</Users/koishi/Documents/Note/Articles/Quantization in AdS/ttbar-sewing/sources/uv-independent/uv-numerics.md>)。reviewer 实际运行的 exact-integer distinct-partition coefficients 与 finite shell data；没有以 $N=4000$ 代替极限证明。
- [audit_checks.py](</Users/koishi/Documents/Note/Articles/Quantization in AdS/ttbar-sewing/verification/audit_checks.py>) → [audit-results.md](</Users/koishi/Documents/Note/Articles/Quantization in AdS/ttbar-sewing/verification/audit-results.md>)。链接、程序语法、结果/code hash 的有限静态检查；不证明数学。

主会话环境由 `load_workspace_dependencies` 实际发现：Python 3.12、NumPy 2.3.5；未安装新包。示例执行：

```bash
OPENBLAS_NUM_THREADS=1 OMP_NUM_THREADS=1 VECLIB_MAXIMUM_THREADS=1 \
  /Users/koishi/.dsh/dsh-runtimes/dsh-primary-runtime/dependencies/python/bin/python3 \
  verification/spatial_sewing_checks.py
```

在本研究目录运行上式。Wolfram 为 fresh kernels，同一实现的重复核算不冒充独立 CAS。Python double-precision residual 不是 rigorously rounded error interval；symbolic exact-zero 与 numerical-zero 分开标注。结果文件记录其代码 SHA256。

## 3. 独立性与实际读过的来源

- Hamiltonian reviewer 最初只取得题设、谱归一化和约定，未看主文候选；独立推导 modes/mixing/UV。
- lattice investigator 最初独立探索，之后收到 quartic 方案进行协作。其文件名保留，但不把后半段协作包装为盲验。
- spatial-regulator reviewer fresh 接受 ansatz 和待判问题，不被告知应得的真/假结论，也未读主文或另一份 review；独立推导 coefficient、PBC/parity、Fourier kernel、Casimir pieces。四模例的具体比较在独立 kernel 推导完成后交叉核对。
- UV reviewer 未看主文，独立证明 signs/endpoint；complete-history 与 trace-class 的区别、HS certificate 和 Fourier-block counterexample 在主/子会话间明确交叉推导，不伪称全部细节都来自隔离盲验。

实际已读[原 formalism](</Users/koishi/Documents/Note/Articles/Quantization in AdS/gluing/Gluing and observable algebras.md>)、[CPS pipeline](</Users/koishi/Documents/Note/Articles/Quantization in AdS/perturbation/formalism.md>)、强关联研究的[入口](</Users/koishi/Documents/Note/Articles/Quantization in AdS/gluing/strongly-correlated-sewing/README.md>)、[local baseline](</Users/koishi/Documents/Note/Articles/Quantization in AdS/gluing/strongly-correlated-sewing/local-baseline.md>)、[finite histories/Ising/Potts](</Users/koishi/Documents/Note/Articles/Quantization in AdS/gluing/strongly-correlated-sewing/quantum-sewing.md>)、[continuum/replica](</Users/koishi/Documents/Note/Articles/Quantization in AdS/gluing/strongly-correlated-sewing/continuum-and-replica.md>)和[证据索引](</Users/koishi/Documents/Note/Articles/Quantization in AdS/gluing/strongly-correlated-sewing/verification/evidence-index.md>)。更深的旧 spatial-replica 正文未在本轮逐篇重证；本轮不依赖其高 genus 结果。

外部来源的版本、实际 PDF/printed pages、rendered images 和核实范围详列于[UV 来源记录](</Users/koishi/Documents/Note/Articles/Quantization in AdS/ttbar-sewing/reviews/uv-independent.md#L561-L590>)及[格点文献边界](</Users/koishi/Documents/Note/Articles/Quantization in AdS/ttbar-sewing/reviews/lattice-independent.md#L316-L325>)。

特别注意：Datta–Jiang published JHEP08(2018)106 的 PDF14/printed13，(4.7) 是 $E^{-3/2}e^{\beta_HE}$，但 (4.8) 的 incomplete-gamma 右边不是其左边积分。主会话也实际查看了[页面图](</Users/koishi/Documents/Note/Articles/Quantization in AdS/ttbar-sewing/sources/uv-independent/density-p14.png>)，并另用 CAS 验证正确结果 $\sqrt\delta\,\Gamma(-1/2,\delta E_*)\to2/\sqrt{E_*}$；不据那个右边宣称 endpoint divergence。不改写外部 PDF。

## 4. 未完成的关键检验

1. $V_{2,a}$ 的局域 stress-flow 推导与 off-diagonal counterterm classification；不能只调 diagonal energies。
2. 全 R zero-mode fixed-matrix bridge 和 sector-changing physical $\sigma$ operator renormalization。
3. 固定非零 $\lambda$ 的 self-adjoint continuum local Hamiltonian/state representation 和相容的算符空间域。
4. 全 crossing-history summation 的 cutoff-uniform control、continuum spatial replica endpoint renormalization；entropy 不能从有限小链或热谱证明继承。
5. generic nonintegrable Ising seed/Potts 的 stress-product matching、vacuum equation of state 与 continuum bridge。

主阶段研究的完成指上述明确的一阶/有限系统结果及 UV 审查已落盘和复现，不是这些开放问题已经被解答。
