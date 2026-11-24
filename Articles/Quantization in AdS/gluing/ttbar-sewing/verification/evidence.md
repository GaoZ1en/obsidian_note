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

## 5. 二阶新增证据（2026-11-15）

以上保留第一阶段的历史范围。下表更新二阶进展；完整空间反项与 Hilbert/source completion 仍未闭合。[二阶主笔记](</Users/koishi/Documents/Note/Articles/Quantization in AdS/ttbar-sewing/second-order-local-flow.md>)先定义展开、处方和两个 frame，再解释证据强度。

| 主张 | 实际证据 | 限定 |
|---|---|---|
| canonical $p_1=0$ 强制 $h_1=-4rl+4\kappa(r+l)''$、$q_1=-12rl+4\kappa(r+l)''$ | 局域 Virasoro 代数；[独立 stress-flow 推导](</Users/koishi/Documents/Note/Articles/Quantization in AdS/ttbar-sewing/reviews/local-second-order-independent.md>)；fresh Wolfram exact zero | 平直 current frame；不是自动 Hilbert/source completion |
| 指定 integrated determinant FP 推出量子 $V_2$，含导数项 | 明确 point-split spectator Taylor 与 normal-product identity；[局域 review](</Users/koishi/Documents/Note/Articles/Quantization in AdS/ttbar-sewing/reviews/local-second-order-independent.md>) | literal pointwise determinant flow 已在一阶需要 improvement |
| whole-composite det 与 inner-pair sym 差 $D_{\rm mix}/4$；顶点 $7/32$ vs $-1/32$ | 主／独立 Wick 和 Virasoro association-order 推导；[fermion review](</Users/koishi/Documents/Note/Articles/Quantization in AdS/ttbar-sewing/reviews/fermion-second-order-independent.md>)；有限 CAR frame identity | 是不同 finite/frame 处方，不能都叫同一个 symmetric FP；须运输 operators/states |
| 全 fixed-$(E_0,P)$ 块二阶恒等式 $\mathcal E_2=ab(a+b)/2$ | exact Virasoro commutator、Bernoulli finite parts；[counterterm 独立 audit](</Users/koishi/Documents/Note/Articles/Quantization in AdS/ttbar-sewing/reviews/counterterm-second-order-independent.md>)；任意变量符号残差 0 | 含退化 descendants；不固定谱不可见的导数 frame |
| mode power/log counterterms，log 必须配 operator/source rotation | 精确高态核；[mode 程序](</Users/koishi/Documents/Note/Articles/Quantization in AdS/ttbar-sewing/verification/second_order_mode_checks.py>)及 [结果](</Users/koishi/Documents/Note/Articles/Quantization in AdS/ttbar-sewing/verification/second-order-mode-results.md>) | 不是原空间 regulator 的反项；有明确 finite-$\epsilon$ descendant remainder |
| sharp cutoff 谱 CT 后 offdiag 仍约 $M/2$；平滑核 finite part $11/12$ | 解析 Löwdin 核，有限和反例，Wolfram limit | $85/96$、$109/96$ 是指定 retained-space/frame 的 effective vertices，不是普适 observable |
| 三个 irreducible bosonic Ising sectors 的有限二阶检查 | $M=2,3,4$；左右 levels≤4、最大四重退化；最大 residual $1.44\times10^{-13}$；完整 ED 的 cubic remainder | Ramond 无额外 doubling；finite double precision，非无限域结论 |
| 有限程 $V_{2,a}^{\rm loc}$、full-Wick bilinear/quartic 转换和四模顶点 | [空间 Wolfram script](</Users/koishi/Documents/Note/Articles/Quantization in AdS/ttbar-sewing/verification/second_order_spatial_checks.wl>)与 [结果](</Users/koishi/Documents/Note/Articles/Quantization in AdS/ttbar-sewing/verification/second-order-spatial-results.md>)；fermion 独立转换 | 只验证局域插入；plane→circle Wick 项不能丢；不含原 $V_a$ loop 的全部反项 |
| 原 $V_a$ 的 exact NS vacuum loop 与 bulk $a^{-6}$ 反项 | [独立推导](</Users/koishi/Documents/Note/Articles/Quantization in AdS/ttbar-sewing/reviews/spatial-loop-second-order-independent.md>)、Vandermonde＋真实 dispersion、spin ED $N=4,6,8$、convergent bulk integral | 一个同-regulator Wilson coefficient；decimal 非 certified interval；非全 $C_{2,a}$ |
| 同-regulator 非真空差与精确非零 $N=8$ offdiag kernel | [空间 Wilson review](</Users/koishi/Documents/Note/Articles/Quantization in AdS/ttbar-sewing/reviews/spatial-wilson-second-order.md>)；direct gamma／Fourier 两实现；Wolfram exact radical；另有 candidate-blind 同层复核 | 排除 identity-only subtraction；$N\le64$ 增长不升级为已证所有 UV power；不反推唯一系数 |
| 两端点 FP 规则可解二阶平直 Ward，但迭代后 Jacobi 非零 | [Ward/source review](</Users/koishi/Documents/Note/Articles/Quantization in AdS/ttbar-sewing/reviews/ward-source-second-order.md>)、[完整脚本](</Users/koishi/Documents/Note/Articles/Quantization in AdS/ttbar-sewing/verification/ward_source_checks.sage>)；[fresh 独立审核](</Users/koishi/Documents/Note/Articles/Quantization in AdS/ttbar-sewing/reviews/ward-contact-audit.md>) | 否定指定二元 FP 规则作为完整算符代数；不否定 $T\bar T$ 存在，也不把 Ward 可解当成 Hilbert completion |

### 5.1 复现与真实执行记录

- [二阶符号程序](</Users/koishi/Documents/Note/Articles/Quantization in AdS/ttbar-sewing/verification/second_order_symbolic_checks.wl>) → [符号结果](</Users/koishi/Documents/Note/Articles/Quantization in AdS/ttbar-sewing/verification/second-order-symbolic-results.md>)。fresh Wolfram `Get`，消息为空；exact residuals 与所用 CAS output 路径均记录。
- [mode NumPy 程序](</Users/koishi/Documents/Note/Articles/Quantization in AdS/ttbar-sewing/verification/second_order_mode_checks.py>) → [mode 结果](</Users/koishi/Documents/Note/Articles/Quantization in AdS/ttbar-sewing/verification/second-order-mode-results.md>)。最终 frame 命名已澄清，主会话重跑 exit 0，code hash 对应最终版本。
- [空间局域插入程序](</Users/koishi/Documents/Note/Articles/Quantization in AdS/ttbar-sewing/verification/second_order_spatial_checks.wl>) → [空间插入结果](</Users/koishi/Documents/Note/Articles/Quantization in AdS/ttbar-sewing/verification/second-order-spatial-results.md>)。两个 frame 独立列值，$N=16,32,64,128$，Wolfram 消息为空。
- [原空间 vacuum-loop 程序](</Users/koishi/Documents/Note/Articles/Quantization in AdS/ttbar-sewing/verification/spatial_loop_uv_checks.py>) → [空间-loop 结果](</Users/koishi/Documents/Note/Articles/Quantization in AdS/ttbar-sewing/verification/spatial-loop-uv-results.md>)。独立执行并由主会话复跑 finite ED／顶点与 bulk quadrature；另做 exact $N=4,6$ Wolfram 检验。结果文件防覆盖，不要为了重跑删除它，可导入函数检验。
- [空间 Wilson 程序](</Users/koishi/Documents/Note/Articles/Quantization in AdS/ttbar-sewing/verification/spatial_wilson_checks.py>) → [完整八维矩阵／数据](</Users/koishi/Documents/Note/Articles/Quantization in AdS/ttbar-sewing/verification/spatial-wilson-results.md>)。有限 $P$、相位、真实 gaps 和局域插入 frame 均明定。
- [Ward/source 程序](</Users/koishi/Documents/Note/Articles/Quantization in AdS/ttbar-sewing/verification/ward_source_checks.sage>) 是 Sage Python-compatible 脚本，依赖 Sage 所含 SymPy；不要用只有 NumPy 的宿主 Python 运行。主会话的 [fresh 重跑](</Users/koishi/.codex/mcp-results/sage_run-2ZVAFg/result.txt>)重现全部平直 Ward 和三个 nonlinear Jacobi **FAIL**；一条 `bitcount` deprecation warning 不改变 exact rational 结果。FAIL 是数学负结果，不能写成“所有检查通过”。
- [独立 Ward generic-Wick 程序](</Users/koishi/Documents/Note/Articles/Quantization in AdS/ttbar-sewing/verification/ward_contact_audit.py>)及 [独立 determinant/residue 程序](</Users/koishi/Documents/Note/Articles/Quantization in AdS/ttbar-sewing/verification/ward_contact_audit.wl>)再次给相同 Jacobi 系数。Wolfram 与 Sage/SymPy 是两种计算实现；重复调用同一库不冒充独立实现。

- [二阶静态审计程序](</Users/koishi/Documents/Note/Articles/Quantization in AdS/ttbar-sewing/verification/second_order_audit.py>) → [审计结果](</Users/koishi/Documents/Note/Articles/Quantization in AdS/ttbar-sewing/verification/second-order-audit-results.md>)，检查新增材料的链接、Python-compatible syntax、控制字符与 code/result hashes；不充当物理证明。主会话另以 [fresh Wolfram 重跑](</Users/koishi/.codex/mcp-results/evaluate_mathematica-gac4pZ/result.txt>)复现独立 determinant Jacobi，exact checks 为真、tail 为零、消息为空。

额外 Wolfram bulk `NIntegrate` 曾在 30 秒超时，无可用结果；其失败已记录在符号结果，未拿来支持小数。无新增外部文献依赖，无新 JSON 数据，无 commit/push。

### 5.2 独立性、保留缺口与下一条论证

局域 stress-flow 与 counterterm reviewer 初始只取得题设／约定、未看候选；后续 smooth finite part 的交叉比较明确属于协作。fermion reviewer 独立完成 classical Darboux 与局域基分析，之后才取得具体量子系数作候选核查。两个 association/frame 代表的澄清发生在整合时，未将“都通过谱”伪称“同一个 FP”。

原空间 vacuum-loop 与非真空 Wilson 核从真实 $V_a$ 出发，不使用 mode CT 或精确 $T\bar T$ 谱。其关键非对角核又交给未读新 review/脚本、未取得候选数值的另一代理独立算，direct-CAR 与 exact determinant 都吻合。Ward-contact reviewer 只取得全部未知的 $u,v,w$、接触项规则与约定，在未取得主审核解和 Jacobi 系数时独立推出 chiral 必要系数及同一非线性反例。

当前明确缺口不是“还没有多算几个能级”，而是：**从保持结合性／CAR 的 regulator 推导兼容的 nested-contact／source prescription，及在同一空间 regulator 中完成非标量 Wilson matching 和 held-out vertices 检验。** 完整 Hilbert metric/source、physical $\sigma$ bridge、固定物理耦合连续域和 cutoff-uniform sewing／entropy 仍未证明；指定二元 FP 的反例不等于这些问题不可能解决。
