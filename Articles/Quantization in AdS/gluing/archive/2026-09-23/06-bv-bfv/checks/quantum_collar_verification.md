# Quantum collar：验证、回攻与范围

2026-09-19。本记录只对应 [quantum collar/corners](../quantum_collar_and_corners.md)，不改写此前 55、61、56、37 项检查的执行历史。

## 执行结果

| 工具 | 结果 | 实际检查内容 |
|---|---:|---|
| Mathematica MCP | 20/20 | 任意 CS component functions 的 polarized action/lateral divergence；proper-wall 矩形见证与 Stokes 方向；一般 2×2 pairing 的 Weyl phase、两种片序、cocycle、residual coordinate signs；relative/absolute interval contractions |
| Sage MCP | 15/15 | Left Berezin derivative；完整 ghost exponential；closed/open BFV square；kernel作用于测试多项式后的 mQME与 corner defect；中间 ghost integration、实际 residual BV pushforward；local mixed Hessian trace |

共 35 项新的 labelled checks。Sage setupError、warnings、stderr、transport errors均为空，未截断；全部条件返回精确 bool。最终 Mathematica 输出 allPassed=true，无 kernel messages。

## 原始证据

- [Mathematica source](quantum_collar_mathematica.wl)、[原始输出](quantum_collar_mathematica_result.json)。
- [Sage request](quantum_collar_sage_request.json)、[structured result](quantum_collar_sage_result.json)。
- [初始诊断与修正](quantum_collar_diagnostics.json)。

Mathematica可在 fresh kernel执行保存的 source，或运行
rtk proxy wolframscript -file quantum_collar_mathematica.wl（从本目录）。
Sage将 request JSON作为 sage_verify_checks参数执行。

初次 Mathematica执行有一项 interval check失败：符号 w 已存有矩形 polynomial，后来误用作积分 dummy，出现 Integrate::ilim。改为独立 zeta 后该项通过，最终扩展至20项。它不是在失败公式上删掉检查。另一次 JS template quoting error发生在 kernel调用前，未产生计算结果。

## 证明与有限检查的分工

Sage 用两个 ordinary q variables、两个 σ variables，以及十个 odd generators。闭合 pairing矩阵满足 AᵀB=BᵀA；开放 pairing有 AᵀB−BᵀA≠0，故不是只测试所有 corner terms恒零的退化模型。

- Ω²对十个 total-degree≤3 ordinary monomials及四种 ghost factors共40个输入检查。
- Ward/mQME在十个 ordinary monomials上检查完整 residual ghost exponential。它验证了积分后 kernel的 distributional identity所需符号；不是声称检查了所有 continuum states。
- Ghost pairing确实得到非零 δodd(bξ)，再执行 bξ 的 Berezin integral得到 surviving state。不把把结果手工设为1叫作 pushforward。
- Local Δ对 N=1,9,25 的实际混合 polynomial逐项作 odd/even derivatives；任意 N 的结论来自正文的一行一般计算。
- 相位检查先用一般 2×2矩阵，包含非零 skew pairing；再按实际片序 Uσ₂Uσ₁另验 residual-choice phase的负号。
- 新增opposite-face diagonal operator的nilpotency及unmatched-ghost非零控制；另对非trivial Gaussian-polynomial test kernel直接积分，检验pairing Ward identity。一般Schwartz域由正文integration by parts证明，不由这一Gaussian例子替代。

正文的连续 Uσ由 smooth pairing与 pullback直接定义。Normalized BV state只按所述 finite Fourier pairs及 stabilized cylindrical/formal规则构造；一般 local insertion及无限维 Berezin measure没有由这些有限检查证明。

## 三轮回攻及修正

1. Open-face bulk Ω²非零；参数仍在physical wall上为零。准确保留 temporal cap defect及 action的 lateral项。非零 projective cocycle不能经 scalar rephasing消掉。
2. 只做中间边界 pairing会剩下 δodd(bξ)，不是最终 state。实际 residual BV pushforward补齐这一步。对 open face，改变固定 ξ Lagrangian会改变 corner phase，说明 closed mQME 的 independence theorem不适用。
3. 即使 closed collar mQME通过，连续 local F=∫σb仍有 ΔNF=N；不能把所构造的 selected state kernel扩展成未重整化的全部量子 BV函数代数。

最后复查时还明确了两点：新增 boundary/residual modes一般有自己的非平凡 kernel，不可统称 factor1；只有新增 acyclic integration pairs与声明的 stabilized zero-label comparison如此归一化。Residual-choice反例使用固定 χ，避免依赖 base 的 Lagrangian change另需 horizontal correction的混淆。

## 来源与剩余工作

读取 [CMR quantum framework](https://arxiv.org/html/1507.01221v2) 的 state/pushforward结构，以及 [CMW cylinder paper](https://arxiv.org/html/2012.13983v3) 的 axial gauge与 parallel-ghost polarization说明。本文用自己的实 q,c polarization与 component derivation，不将文献的 closed-interface结果当作原 chord/corner定理。此次是 HTML读取，没有新增 PDF render evidence。

**Verified:** 上述35项检查与正文限定范围的解析构造。

**Assumptions:** free globally lifted Abelian sector、product collar、固定极化/半密度归一化；closed torus用于无corner的mQME/pushforward；open-face结论保留bulk defect。

**Not verified:** 原disk/chord完整regional quantum states、actual corner pairing/lateral closure、非cylindrical BV insertion的重整化及QD bridge；更一般拓扑、非阿贝尔量子与传播模型。完整目标继续 active。

