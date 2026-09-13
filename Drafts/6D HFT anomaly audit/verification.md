# Verification record

执行日期：2026-09-09。正文的物理推论依赖标准 chiral Dirac index/descent 及声明的场论假设；有限矩阵和多项式检查只验证具体代数步骤，不单独证明任意量子 completion 不存在。

## 执行结果

| 检查 | 实际结果 | 记录 |
| --- | --- | --- |
| Clifford algebra、Weyl rank、charge conjugation、SMW 实结构与相位 | Mathematica 11/11 True | [输入](verification/verify-spinor.wl)、[原始输出](verification/mathematica-spinor-result.json) |
| A-hat roots 展开、Chern character、half-doublet 系数、trace 转换、scale weights | Mathematica 17/17 True | [输入](verification/verify-polynomial.wl)、[原始输出](verification/mathematica-polynomial-result.json) |
| A1 表示、quartic trace、mod-12 整数 | Sage 7/7 passed，allPassed=true | [可复跑脚本](verification/verify-representations.py)、[MCP 输入](verification/sage-input.json)、[输出](verification/sage-result.json) |
| Cartan 场的六形式 $f^3=6B_1B_2B_3\,d^6y$ | Sage 1/1 passed | [输入与输出](verification/sage-exterior-check.json) |

最终两个 Wolfram 文件又经 Mathematica Get 直接读取执行，分别得到 allPassed=True，确认保存文件与报告一致。Sage 使用的是 10.9；MCP setup 为独立 fresh process。表示比较采用 A1 的 coroot/Dynkin-label tuple，特征类计算采用精确有理系数，不作浮点近似。

不将尝试中的失败隐藏为通过：第一次矩阵输入把变量与 Array 的 entry head 同名，触发 RecursionLimit；改为不同名称后通过。一次 polynomial 检查用结构相等比较展开式和因式分解式，改为残差展开等于零后通过。第一次 Sage 将整数传给 character ring，得到 scalar 而非最高权表示；改用一元 Dynkin-label tuple 后重新验证通过。这些是检查实现的修正，不是对失败物理结果的忽略。

复跑 Wolfram 文件可使用本机 Mathematica 的 Get 或 wolframscript -file。Sage 脚本在 Sage 环境中执行，例如 sage -python；exterior check 的完整 self-contained setup 与布尔条件保存在 JSON。

## 来源与视觉核对

1. Yue-Liang Wu, [Maximal symmetry and mass generation of Dirac fermions and gravitational gauge field theory in six-dimensional spacetime, arXiv:1703.05436v2](https://arxiv.org/abs/1703.05436v2)，2017-08-31。
   - PDF 第 11–12 页：Eq. (55)–(65)，旋量投影、共轭、doubling、动能。
   - PDF 第 15 页：Eq. (82)–(84)，scale weights 和连接变换。
   - PDF 第 16–17 页：Eq. (85)、(87)、(90)–(94)，完整作用量、群、fermion rescaling。
   - 上述五页已渲染并目视核对。Eq. (66)–(70)、其余上下文与结尾通过文本提取及 arXiv HTML 核对。
   - 下载 PDF SHA-256：8047c5e2daad5e3ad8cbc10865f56f1472ca9f2b248de3d831e9b0dc08ebed1a。
2. Yasunori Lee and Yuji Tachikawa, [Some comments on 6d global gauge anomalies, arXiv:2012.11622v2](https://arxiv.org/abs/2012.11622v2)，2021-02-01。
   - PDF 第 8 页（印刷页 7）：Eq. (2.14)，half-doublet polynomial。
   - PDF 第 13 页（印刷页 12）：Eq. (2.36)–(2.40)，GS 量子化及 mod-12 条件。
   - PDF 第 20 页（印刷页 19）：Appendix A，index formula、trace convention。
   - 上述三页已渲染并目视核对。Sec. 1、3.2 与 Eq. (3.13) 通过文本及 HTML 核对；未独立计算 bordism groups 或 eta invariant。
   - 下载 PDF SHA-256：da1b8d4f7c88b289b5fa4c81d8883b455e4196e6a04e77e31fbfc5bc3419071b。
3. Claudio Corianò et al., [The Dilaton Wess-Zumino Action in 6 Dimensions from Weyl Gauging: Local Anomalies and Trace Relations, arXiv:1311.1804v2](https://arxiv.org/abs/1311.1804v2)。
   - 本次只核实官方摘要与书目信息，用于指出标准 6D dilaton WZ construction 的存在；没有从该文移植或宣称验证 Wu 模型的 anomaly coefficients。

论文 PDF 与渲染图用于工作时核对，不作为本目录新增的整篇文献副本。版本、页码和哈希足以重新定位。所有引文均为本次检查所查阅的原始论文，而非前一段聊天的权威背书。

## 结论分级

**Verified:** 旋量计数的矩阵依据、规范 anomaly 的有理系数、平直 Cartan 子群上的非零六形式；保存的检查全部通过。

**Assumptions:** 通常六维局域费米子量子化及 index/descent；非退化 gravifield、非零 prefactor；global 段采用 spin 与独立 SU(2) bundle，并限制为所引文献的常规 integral GS 体系。

**Derived:** 在上述假设及论文给出的场内容和变换律下，单个 SMW doublet 的 SU(2) anomaly 不消去；原六维 gauge theory 的必要一致性条件失败。不是仅凭软件的 True 推出这一物理结论。

**Not verified:** 完整 SG(1) 有效作用量、量子 measure、全部 trace-anomaly 系数；非 spin/global-form 变体、非紧完整群的全局 anomaly；额外物质、tensor 或 inflow completion 的量子一致性。没有为这些项目报告虚假的通过结果。
