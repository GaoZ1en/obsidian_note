# 本轮 primary-source 核验清单

本清单记录实际执行的资料核验。对应数学推导位于上两级研究目录，验证程序位于本目录。下载使用 arXiv 原始 PDF，文本导航使用 pdftotext，视觉核对使用 pdftoppm 渲染后的 PNG；下表区分已查看的关键公式页和仅作背景的来源。

| Primary source | 实际视觉核验的 PDF 页 | 使用内容 |
|---|---|---|
| [Cvetič–Lü–Pope–Sadrzadeh–Tran, hep-th/0003103v2](https://arxiv.org/pdf/hep-th/0003103v2) | p.5，printed p.4 | eqs.(8)–(9)：scalar/vector form action、potential；特别检查 form-to-component 的 \(1/2\) 因子 |
| [Arutyunov–Frolov, hep-th/0002170v2](https://arxiv.org/pdf/hep-th/0002170v2) | p.6，printed p.5 | eqs.(2.13)–(2.14)：scalar/vector/graviton 与 quartic sectors 的独立原始 action bookkeeping；本文系数直接从 Cvetič action 的 logarithmic coordinates 推出 |
| [Rastelli–Zhou, 1710.05923v2](https://arxiv.org/pdf/1710.05923v2) | pp.23–24，printed pp.22–23 | eqs.(4.20)–(4.27)：ordinary/reduced gamma measures、\(\widetilde u=u-4\)、Ward shift |
| [Binder–Chester–Pufu–Wang, 1902.06263v2](https://arxiv.org/pdf/1902.06263v2) | p.5，printed p.4 | IIB \(f_{R^4}=\zeta(3)STU_f/32\)，eq.(1.4) |
| 同上 | pp.8–11，printed pp.7–10 | unit two-point norm、六张量 convention、reduced Mellin measure 的 \(t/u\) assignment、position-space basis |
| 同上 | p.24，printed p.23 | eq.(4.2)：\((8/c)[M_{\rm SG}+15\zeta(3)\lambda^{-3/2}+\cdots]\) |
| 同上 | pp.26–27，printed pp.25–26 | eqs.(4.6)–(4.12)：flat-space map、inverse-Laplace gamma factors、IIB coefficient |
| 同上 | p.29，printed p.28 | eq.(4.19)：\(R^4\) 对最低 twist scalar 的 \(-4320\zeta(3)/(7c)\) correction |

Rastelli–Zhou 的 complete position-space result 与 contour discussion 已通过原研究笔记和 PDF 全文相互核对。本轮进一步以六个独立 tensor 的 flat-box differential algebra 重新证明完整 position identity，保留 free rational terms。

## 实际计算

| 程序 | 实际结果 | 数学证据类型 |
|---|---|---|
| generic_twenty_prime_checks.py | 41 checks，全部通过（原分支 39 项，集成时另增两项全 indexed-projector 检查） | exact symbolic identities：group completeness、action expansion、24-label factors、Mellin/全通道、crossing、\(R^4\) 与 OPE gamma factors |
| generic_position_checks.py | 7 checks，全部通过 | exact symbolic identities：六张量 position-space matching 与 box derivative commutator |
| radial_response_checks.py | 22 checks，全部通过 | exact coordinate/source/constraint identities；50-digit Bessel、circle、wall checks；36 点的 uniform-bound numerical supplements |

JSON results 由对应程序实际生成。程序没有加载仓库已有 Mathematica outputs。本轮环境没有 Mathematica；这里的 analytic proof、symbolic identity 与 numerical supplement 在正文逐项区分。

本轮下载的源 PDF/PNG 未纳入仓库；上表保留其 primary URLs、准确页码及实际核验范围，数学推导与可复算程序随本次提交提供。

## 交叉独立审查

- gauge 分支逐式复核 half_bps_generic_radial_limits.md §§5–8，确认 Wilson-source completion、Gauss integration constant、natural IR branch、完整 Maxwell inverse、(7.9) 和 (8.7) 的 estimates；2026-10-26 通过内部消息给出审查结论。
- root 独立核对 \(R^4\) 的 Barnes \(9/35\)、neutral GFF weight \(1/10\)、\(c=(N^2-1)/4\) 与 primary eq.(4.19) 的因子；一处正文漏写加号已修复。
- 本分支反向审查 finite-\(N\) protected-domain 与 complete stress Ward theorem 的意见保存在 protected_and_ward_review.md。
