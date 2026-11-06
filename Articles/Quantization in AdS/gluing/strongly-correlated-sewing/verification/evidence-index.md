# 证据、复现与结论力度

## 1. 主张与证据的对应

| 主张 | 证明／定位 | 实际检查 | 不推出什么 |
|---|---|---|---|
| 有限 quantum history sewing，所有有限耦合、有限 Euclidean time | [主文定理 2–3](</Users/koishi/Documents/Note/Articles/Quantization in AdS/gluing/strongly-correlated-sewing/quantum-sewing.md>)；[独立推导 §4](</Users/koishi/Documents/Note/Articles/Quantization in AdS/gluing/strongly-correlated-sewing/reviews/finite-independent.md>) | 两条独立 Duhamel／Volterra 与 absolute-majorant 推导 | 不给 continuum-uniform bound、不保证高效 |
| local Gibbs 不必 Markov；本例无任何 Markov extension | [主文 §4](</Users/koishi/Documents/Note/Articles/Quantization in AdS/gluing/strongly-correlated-sewing/quantum-sewing.md>)；[独立反例](</Users/koishi/Documents/Note/Articles/Quantization in AdS/gluing/strongly-correlated-sewing/reviews/finite-independent.md>) | Sage exact 7/7；Wolfram spectrum/CMI series | 不否定已知 local-Gibbs prior 下的 max-entropy 唯一性 |
| Ising/Potts temporal kernel、self-dual relation、finite replica identity | [主文 §3、§5](</Users/koishi/Documents/Note/Articles/Quantization in AdS/gluing/strongly-correlated-sewing/quantum-sewing.md>) | Wolfram exact identities；positive Strang convergence；swap purity | 不以 self-duality 单独证明所有模型的临界性 |
| positive-collar spectral sewing；zero-collar identity trace 失败 | [连续文 §1](</Users/koishi/Documents/Note/Articles/Quantization in AdS/gluing/strongly-correlated-sewing/continuum-and-replica.md>)；[独立证明](</Users/koishi/Documents/Note/Articles/Quantization in AdS/gluing/strongly-correlated-sewing/reviews/continuum-independent.md>) | 自足 trace-class／absolute-sum 证明与反例 | 不证明任意点场、任意曲面或 sharp spatial tensor factorization |
| Ising thermal continuum trace 与全系统 thermal replicas | [连续文定理 7](</Users/koishi/Documents/Note/Articles/Quantization in AdS/gluing/strongly-correlated-sewing/continuum-and-replica.md>)；[独立 parity/tail 证明](</Users/koishi/Documents/Note/Articles/Quantization in AdS/gluing/strongly-correlated-sewing/reviews/ising-continuum-independent.md>) | Wolfram spin dense N4/6/8；独立 Sage 两 parity sectors；uniform analytic tail | 不证明 spatial replica convergence |
| 相同 c 不决定 Potts sewing | [连续文 §3](</Users/koishi/Documents/Note/Articles/Quantization in AdS/gluing/strongly-correlated-sewing/continuum-and-replica.md>) | 1/40 primary 的解析区别；M(5,6) modular algebra exact 5/5；torus 数值 | S,T 对易不充分证明 full CFT existence |
| critical finite-chain entropies／CMI | [独立数值报告](</Users/koishi/Documents/Note/Articles/Quantization in AdS/gluing/strongly-correlated-sewing/reviews/lattice-numerics.md>) | 七尺寸、34 区间；稀疏／稠密、SVD／partial trace、Ising exact E0 | 不是 rigorous error intervals 或 continuum theorem |
| replica derivative 非均匀极限反例；Schmidt-rank lower bound | [连续文 §6](</Users/koishi/Documents/Note/Articles/Quantization in AdS/gluing/strongly-correlated-sewing/continuum-and-replica.md>)；[独立 Hölder 证明](</Users/koishi/Documents/Note/Articles/Quantization in AdS/gluing/strongly-correlated-sewing/reviews/continuum-independent.md>) | 显式谱序列；Schmidt-support／Ky Fan／Hölder；有限谱检查 | fixed-rank critical 推论仍需 target S2 asymptotic；不作用于只计 primary labels 的维数 |

所有“独立推导”均由 fresh 子代理先取得题设、约定和待判问题，未先得到主文答案；文件是整理后的独立论证，不是逐行赞同主文。稀疏程序的独立实现交叉检查与 fresh-agent analysis 分开标注。

## 2. 可运行代码与保存结果

- [transfer_replica_checks.wl](</Users/koishi/Documents/Note/Articles/Quantization in AdS/gluing/strongly-correlated-sewing/verification/transfer_replica_checks.wl>) → [transfer_replica_results.json](</Users/koishi/Documents/Note/Articles/Quantization in AdS/gluing/strongly-correlated-sewing/verification/transfer_replica_results.json>)。
- [cft_character_checks.wl](</Users/koishi/Documents/Note/Articles/Quantization in AdS/gluing/strongly-correlated-sewing/verification/cft_character_checks.wl>) → [cft_character_results.json](</Users/koishi/Documents/Note/Articles/Quantization in AdS/gluing/strongly-correlated-sewing/verification/cft_character_results.json>)。
- [ising_continuum_checks.wl](</Users/koishi/Documents/Note/Articles/Quantization in AdS/gluing/strongly-correlated-sewing/verification/ising_continuum_checks.wl>) → [ising_continuum_results.json](</Users/koishi/Documents/Note/Articles/Quantization in AdS/gluing/strongly-correlated-sewing/verification/ising_continuum_results.json>)。
- [finite_review_checks.sage](</Users/koishi/Documents/Note/Articles/Quantization in AdS/gluing/strongly-correlated-sewing/verification/finite_review_checks.sage>) → [finite_review_results.json](</Users/koishi/Documents/Note/Articles/Quantization in AdS/gluing/strongly-correlated-sewing/verification/finite_review_results.json>)，完整 exact setup、conditions、status 均保存。
- [spin_chain_checks.py](</Users/koishi/Documents/Note/Articles/Quantization in AdS/gluing/strongly-correlated-sewing/verification/spin_chain_checks.py>) → [spin_chain_results.json](</Users/koishi/Documents/Note/Articles/Quantization in AdS/gluing/strongly-correlated-sewing/verification/spin_chain_results.json>)。

在本研究根目录执行，例如：

```bash
/opt/homebrew/bin/wolframscript -file verification/transfer_replica_checks.wl
/opt/homebrew/bin/wolframscript -file verification/cft_character_checks.wl
/opt/homebrew/bin/wolframscript -file verification/ising_continuum_checks.wl
OPENBLAS_NUM_THREADS=1 OMP_NUM_THREADS=1 VECLIB_MAXIMUM_THREADS=1 \
  /usr/local/bin/sage --nodotsage -python verification/spin_chain_checks.py
```

Wolfram scripts 打印 JSON；本次通过 Mathematica tool 的 `Get` 执行后，用 `Export[..., "RawJSON"]` 保存 report。Sage exact script 的运行及 export 方式见其文件头；脚本中的 exact setup/checks 与保存结果已经比对。实际环境：Wolfram 14.3；Sage 10.9、Python 3.14.3、NumPy 2.4.4、SciPy 1.17.1。包内静态检查另用已发现的 DSH Python，不额外安装包。

精度区分：Wolfram exact checks 为精确代数；Trotter、dense spectrum 和 character sums 使用 high-precision 数值；spin chains 是 double precision。报告中的 numeric zero 表示该工作精度下残差为零，不是 exact-zero proof。

### 执行中已修复的技术问题

- 首次 Wolfram transfer 脚本漏一个括号，返回 syntax error；修复后全部重跑，最终 8/8 且无 messages。
- Wolfram RawJSON 将 arbitrary-precision numerical zero 写成非标准 JSON 的 `0.e-49`。将这些**数值残差**以 machine-zero 序列化后重跑导出，保留高精度其余数据，并注明工作精度；没有改变数学判据。
- 独立 Sage 首次 number-field constructor 参数类型不符，随后修复；重跑 exact 7/7。另有 Sage Integer 的 JSON serialization 修复，见独立结果的 failure record。
- 初次三项子代理执行未完成且未落盘；收窄任务后重新执行成功。独立数值代理的后台 job 已收集且退出码 0；主会话没有遗留 computation jobs。

这些错误不当作数学反例，也不掩盖为成功运行。

## 3. 本地源与外部来源的核实力度

### 本地

[基线说明](</Users/koishi/Documents/Note/Articles/Quantization in AdS/gluing/strongly-correlated-sewing/local-baseline.md>) 给出实际片段定位。后期 descent 来自原 archive；[提取记录](</Users/koishi/Documents/Note/Articles/Quantization in AdS/gluing/strongly-correlated-sewing/sources/local-descent/EXTRACTION_RECORD.json>) 保存 archive 与五个成员的 SHA-256。只读了本次需要的范围，没有重新认证旧文所有定理，也没有执行原 archive 的 validation scripts。

### 外部

1. [Hayden–Jozsa–Petz–Winter, quant-ph/0304007v2](<https://arxiv.org/abs/quant-ph/0304007v2>)：核实摘要所述 equality-in-SSA／short quantum Markov structure 的范围。本文 no-Markov 反例与不存在 Markov extension 的证明自足，不依赖抄写其证明。
2. [Castro et al., 1111.1987v1](<https://arxiv.org/abs/1111.1987v1>)：明确版本，PDF 42 页；已提取定位并**实际查看 PDF 第33页／正文第32页**，核对 (A.22)–(A.25) 的 Potts weights、两个 modular invariants。证据：[原 PDF](</Users/koishi/Documents/Note/Articles/Quantization in AdS/gluing/strongly-correlated-sewing/sources/1111.1987v1.pdf#page=33>)、[已核对页图](</Users/koishi/Documents/Note/Articles/Quantization in AdS/gluing/strongly-correlated-sewing/sources/1111.1987v1-page33.png>)。本文采用按 h 标号的字符，避免其 r,s convention 与本研究交换造成误读。
3. [Calabrese–Cardy, hep-th/0405152v3](<https://arxiv.org/abs/hep-th/0405152v3>)：核实摘要和作者对多区间旧公式的 correction notice；不将早期多区间主张照录为定理。
4. [Calabrese–Cardy–Tonni, 1011.5482v1](<https://arxiv.org/abs/1011.5482v1>)：核实摘要的 Ising integer-replica theta-function 结果范围；未逐页重审全文。
5. [Chelkak–Hongler–Izyurov, 2103.10263v2](<https://arxiv.org/abs/2103.10263v2>)：核实摘要中的 primary-correlator convergence、domain/boundary 范围、OPE；不把它升级成 spatial density/entropy sewing theorem。
6. [The fuzzy Potts model in the plane, publication 2025](<https://link.springer.com/article/10.1007/s00440-024-01319-8>)：实际读取 Introduction、Theorem 1.1–1.3 的条件性和 q=2 特例。此来源不能证明 q=3 quantum-chain replica limit；本研究未获得那一缺口的严格来源。

Independent continuum reviewer 的早期两次文献 fetch 失败已在其报告保留；本索引所列来源核实是主会话随后实际完成的，不能倒写成 reviewer 当时已读过全文。

## 4. Bundle 完整性

[静态检查程序](</Users/koishi/Documents/Note/Articles/Quantization in AdS/gluing/strongly-correlated-sewing/verification/audit_bundle.py>) 核对报告可解析、所有 exact checks 为真、数值数据完整、程序 hash、只读 archive members、本文新写的 Markdown links 与控制字符；它**不证明数学定理**。输出为 [bundle_audit.json](</Users/koishi/Documents/Note/Articles/Quantization in AdS/gluing/strongly-correlated-sewing/verification/bundle_audit.json>)。旧 source snapshots 内已有的失效相对链接不在新文本 link audit 中，保持历史原样。
