# 11｜读法、符号与最少需要补的数学

## 11.1 推荐的两条阅读顺序

先读 **00 → 01 → 02 → 03 → 05 → 06**：这条线从物理问题到两个实际算出 kernel 的模型。之后读 04，把通用 comparison 原则与已知实例对照；再读 07、08，看 CS 与 topology 为什么需要不同附加数据；09、10 标明扩大到 interacting/null/state 时仍需做什么。

更短的审查路径是 **00.2 → 05.2–5.5 → 06.3–6.9 → 07.3/7.6 → 10.1**。它直接检查研究目标、完整 kernel、关键缺失 observable 的 lift 及条件强度。

本包文本采用 Markdown + LaTeX，可直接在 Obsidian 中读取。`COMPLETE_NOTES.md` 是同一内容的串联合稿，不是另一个版本；分篇文件更适合修改。编号固定为 00–11，公式以篇号开始。

## 11.2 “源域”并不要求先学抽象 PDE

它只是“哪些输入可以同时来自一份允许的解”。Dirichlet 波方程要求初值在 endpoint 为零，还要求其二阶时间导数与 forcing 相容；第 02 篇的 x(1−x) 例子已经展示全部要点。更高 regularity 只是继续对边界条件求导。不同来源的数据不是自动独立坐标。

well-posedness 的内容是存在、唯一（或模声明的 gauge 唯一）、对数据连续依赖。与它不同，variational well-definedness 仅说 δS 的边界项在允许 variations 上消失。二者都要检查。

## 11.3 Hamiltonian domain 与 weak symplectic 的具体含义

有限维非退化 Ω 总能解 \(\iota_X\Omega=-dF\)。无限维时，F 的 derivative 可能是一份过于奇异的 distribution，所需 X 不属于声明的 smooth solution space。因此先指定测试类，再求 X。

例如 Maxwell 的 smooth f,g 给 \(X_Fa=P_Tg,X_FE=-f\)，逐项检查它们属于 \(\mathscr S\) 即可；thin curve delta 不满足同一条件，需要另开 domain。本文所有关于“完整”的 statements 都相对于这些明确 labels，而不是全体形式可写表达式。

## 11.4 kernel、presentation、normal form

map 的 kernel 是所有映成零的输入。写“kernel 是所有映成零的输入”只是定义，不是计算。

一种真正的计算方法是 normal form：例如 quantum YM2 把 vertical derivatives 全部排到一侧，\(D=\sum r^\alpha D_\alpha(U)\)；restriction 只保留 D₀，kernel 就是 D₀=0。又如 SU(2)₂ Wilson words 全部化成 1,A,B,AB；四个实际矩阵独立，便没有遗漏的关系。

PBW 在这里仅表示 Lie generators 的 ordered monomials 构成 basis；其作用是把“可能有隐藏的 operator relations”转成一个可检查的排序问题，不要求先读完一般 enveloping algebra theory。

## 11.5 为何用 Weyl generator

Φ(f) 是通常的 smeared quantum field，常为 unbounded operator。\(\mathcal W(f)=e^{i\Phi(f)}\) 把 canonical commutator 编码成 unitary multiplication rule，便于讨论 representation-independent algebra。

compact Q 是角度，不能用全局单值的 Q；其整数 characters e^{inQ} 才全球合法。此时 label 的加法是一个 Abelian group，不一定是实 vector space。这是使用稍微一般的 Weyl 关系的具体理由，不是无条件增加代数抽象。

## 11.6 groupoid、Gram radical、homotopy 各解决一个不同问题

groupoid 在本包仅表示“保留每份 field 与把它变到另一份的实际 gauge maps”；这样同一个 orbit 的 stabilizers 与 seam identifications 不会丢失。

Gram radical 是 norm/inner product 为零的 source vectors。若实际 map C 满足 \(\|Cz\|^2=G(z,z)\)，radical 就是它的 kernel；完成后的 onto 还需证明，不由 norm identity 单独给出。

chain homotopy H 是把两个 maps 的差写成 \(sH+Hs\)；geometric isotopy 则是连续移动路径/切面而不穿越 defect；ribbon F-move 是 channel basis change。这三个概念都可能出现，但不能互相替代。

## 11.7 记号与方向总表

| 符号 | 本包约定 |
|---|---|
| \(A^g\) | \(gAg^{-1}-dg\,g^{-1}\) |
| \(U_\gamma\) | \(\mathcal P e^{-\int_\gamma A}\)，path composition 右边先走 |
| U(1) a | \(A=-ia\)，\(a\mapsto a+d\lambda\)，\(U=e^{i\int a}\) |
| \(h_{21}\) | 从片 1 fibre 到片 2 fibre；\(U_{21}=U_2h_{21}U_1\) |
| \(\Omega\) | \(\delta p\wedge\delta q\)，不是相反号 |
| \(X_F\) | \(\iota_{X_F}\Omega=-\delta F\)；\(\{F,G\}=\delta F(X_G)\) |
| Maxwell E | \(e^{-2}\dot a\)，canonical electric variable |
| Maxwell Q,P | \(Q=\mathcal V^{-1}\int a_x\)，\(P=L^{-1}\int E_x\) |
| YM2 p | left-trivialized cotangent variable，\(p=-E(0)\) 对本 holonomy convention |
| \(G^R-G^A\) | 从 action Hessian 的 inverse 定义；§6.8 明确检查符号 |
| \(\mathcal G_{\rm prop}\) | 指定的冗余群，包含明确的 disconnected-component policy |
| closed region | 全部当前 timelike inputs 已固定；不是“没有边界” |
| E/C/I/D | 精确结果 / 条件性准则 / 采用的实现输入 / 保留目标但未完整构造 |

最后一个实际阅读原则：每次看到“可观测量”“相同”“完整”，先问清楚是哪一个 domain、哪两个 maps、哪些 generators 与哪些 relations。这样可以在不用额外高阶语言的前提下，发现大部分 ontology 和 sewing 错误。
