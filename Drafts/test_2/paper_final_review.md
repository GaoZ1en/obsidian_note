# 最终 LaTeX 稿件独立终审

## 当前状态

**最终实际 LaTeX 的数学转写、前提依赖与 source 定位审查通过；发现的问题已确认修复。** 已审主文及全部六个输入片段，没有剩余阻断项。本报告只记录检查与建议，不修改正文。没有重跑已完成的大规模 EOM/KSE 核验；仅对新增附录 minor、四奇配对及 null Maxwell 明式作了针对性独立小核验。

本轮读取 [paper.tex](</Users/koishi/Documents/Note/Drafts/test_2/paper.tex>)、[paper_geometry.tex](</Users/koishi/Documents/Note/Drafts/test_2/paper_geometry.tex>)、[paper_supersymmetry.tex](</Users/koishi/Documents/Note/Drafts/test_2/paper_supersymmetry.tex>)、[paper_abstract.tex](</Users/koishi/Documents/Note/Drafts/test_2/paper_abstract.tex>)、[paper_null.tex](</Users/koishi/Documents/Note/Drafts/test_2/paper_null.tex>)、[paper_charges.tex](</Users/koishi/Documents/Note/Drafts/test_2/paper_charges.tex>)、[paper_appendices.tex](</Users/koishi/Documents/Note/Drafts/test_2/paper_appendices.tex>)，并对照既有解析证据及文献定位。最终定点复读已确认数学修订落盘。编译、最终 PDF 和版面不在本报告的已完成检查范围。

## 1. 已发现：结论漏写一个必要前提

初读版本 [paper.tex:54](</Users/koishi/Documents/Note/Drafts/test_2/paper.tex#L54>) 称：

> the Bianchi identity and the two flat Einstein equations force all three fibre-to-base ratios to coincide.

**按这个精确表述不成立。** 真正的必要性证明还用了各曲因子的 base/fibre Einstein 方程，即 [paper_geometry.tex:91–105](</Users/koishi/Documents/Note/Drafts/test_2/paper_geometry.tex#L91-L105>)，才能得到

\[
\mathcal E_I^2=f_I^2,\qquad
\mathcal T_I^2=\delta f_I^2(1-q_I^2).
\]

决定性反例：令全部 \(\mathcal T_I=0\)，并取 \(-\mathcal E_A^2+\mathcal E_+^2+\mathcal E_-^2=0\)。Bianchi 与两个 flat Einstein 方程均成立，但 \(q_A,q_+,q_-\) 仍任意，尚未被强制相等。

建议把结论中的前提改为 “the Einstein equations and the Bianchi identity”。这是总结句的依赖遗漏，不是 geometry 中实际证明的错误。**已报告整合者并重新读取当前版本确认修复**：[paper.tex:54](</Users/koishi/Documents/Note/Drafts/test_2/paper.tex#L54>) 现已使用上述准确表述。

## 2. 六通量符号：现有转写通过

对 [paper_geometry.tex:68–136](</Users/koishi/Documents/Note/Drafts/test_2/paper_geometry.tex#L68-L136>) 逐项检查：

- 磁四形式范数依次为 \(-\delta\mathcal T_A^2,\delta\mathcal T_+^2,\delta\mathcal T_-^2\)，故 \(F^2=24(S_E+\delta S_T)\) 正确。
- flat 方程先给 \(F^2=S_E=S_T=0\)。此后 fibre 应力用 \(S_T=0\) 消去另两磁项，才得到稿件的 \(\chi_I(\mathcal E_I^2-\delta\mathcal T_I^2)/2\)。base 应力为相应加号，正确。
- 所列六项无任意一对恰共享三个指标，故无遗漏的非对角应力分量。
- 直接对三个磁四形式求外微分，三组系数依次为
  \[
  \mathcal T_Ac_++\mathcal T_+c_A,\qquad
  -\mathcal T_Ac_-+\mathcal T_-c_A,\qquad
  -\mathcal T_+c_--\mathcal T_-c_+.
  \]
  与稿件完全相同。
- \(c_A=-\delta q_Af_A\)、\(c_\pm=-q_\pm f_\pm\) 与 timelike/spacelike 的取向约定一致。
- 存在性幅度 \((\mathcal T_A,\mathcal T_+,\mathcal T_-)=(-\nu f_A,\delta\nu f_+,-\delta\nu f_-)\) 代入 Maxwell 系数得到 \(-\lambda\nu(f_A^2-f_+^2-f_-^2)\)，没有转写掉 \(\delta\) 或相对负号。

## 3. 非 null KSE 与奇括号转写

[paper_supersymmetry.tex](</Users/koishi/Documents/Note/Drafts/test_2/paper_supersymmetry.tex>) 的两条上界曲率、\(S\) 传输、逆标架因子与已完成的精确证据一致；没有把自旋子假设为常系数。种子奇括号部分与 [paper_seed_bracket.md](</Users/koishi/Documents/Note/Drafts/test_2/paper_seed_bracket.md>) 对照，保留了

\[
h_I(T_j,T_k)=\chi_I\eta_{jk},\quad
\Omega_{\rm std}=4a\Omega,\quad
(-1,b^2/a^2,c^2/a^2),\quad \alpha=R_-^2/R_+^2.
\]

Lorentzian 指标降下、公共归一化、物理向量的 \(s^{-1}\) 因子均未丢失。这里是转写审查，不重复运行既有全参数程序。

## 4. Noris 归属与 source 定位

实际查看了授权目录中的以下源页面，而非仅接受文本提取或检索摘要：

- [Noris v1，PDF 第7页／印刷第6页](</Users/koishi/Documents/Note/Drafts/test_2/literature_sources/Noris2026-p7.png>)：式 (3.13)、Table 1 及式 (3.9)–(3.12)。
- [Noris v1，PDF 第9页／印刷第8页](</Users/koishi/Documents/Note/Drafts/test_2/literature_sources/Noris2026-p9.png>)：式 (3.21)、Table 2。
- [Noris v1，PDF 第5页／印刷第4页](</Users/koishi/Documents/Note/Drafts/test_2/literature_sources/Noris2026-p5.png>)：null 式 (3.1)。
- [Noris v1，PDF 第11页／印刷第10页](</Users/koishi/Documents/Note/Drafts/test_2/literature_sources/Noris2026-p11.png>)：附录 A 与 null coframe。

非 null 部分定位正确：只认领 source 的 \(\lambda_{\rm N}=\omega_{\rm N}\) 边界，不冒充完整两参数族。\(A_0A_+A_-\) 的 wedge 积为 \(8\Theta\)，因此 spacelike 取 \(\nu=+\sqrt{1-\lambda^2}\)、timelike 取 \(\nu=-\sqrt{\lambda^2-1}\) 与本地 \(\delta\lambda^2\nu\,d\Theta\) 一致。

主文明确把给定摘要作为 source abstract 归属给 Noris；[paper_abstract.tex](</Users/koishi/Documents/Note/Drafts/test_2/paper_abstract.tex>) 与 [goal.md](</Users/koishi/Documents/Note/Drafts/test_2/goal.md>) 的非空文本一致。

**高分辨率复核已撤回早先的幂次误报。** 初读整页缩小图时漏看了根号；实际查看 [null 通量高分辨率局部图](</Users/koishi/Documents/Note/Drafts/test_2/literature_sources/Noris2026-null-coefficient.png>) 后确认，source 通量系数明确为 \(\sqrt{\alpha_{\rm N}}\,\omega_{\rm N}^2/4\)，不是 \(\alpha_{\rm N}\omega_{\rm N}^2/4\)。配合 coframe 的 \(1\pm4\alpha_{\rm N}\)，两者幂次一致。在 round-sphere 边界可取 \(\alpha_{\rm N}=t^2\)、\(t=-\sqrt{\alpha_{\rm N}}\)、\(A_0=n\)、\(A_\pm=2e^{5,8}\)，得到整族映射而不仅是归一化代表。当前 [paper_literature.md:51–73](</Users/koishi/Documents/Note/Drafts/test_2/paper_literature.md#L51-L73>) 已修正。**没有 source erratum 的证据，误报不得进入正文。**

## 5. Charges 转写：通过

已读取 [paper_charges.tex](</Users/koishi/Documents/Note/Drafts/test_2/paper_charges.tex>) 并检查：

- \(\star e^{0129}=-e^{345678\,10}\) 与所选电周期负向取向匹配，荷为正。
- 磁、电荷分母分别为 \((2\pi\ell_p)^3\)、\((2\pi\ell_p)^6\)，给出原证据中的 \(2\pi\) 和 \(8\pi^2\) 系数。
- Page 修正按指定周期的 \(\iota^*F=0\) 消失，不把一般 Page 荷宣称为规范无关。
- 非 null 的体积权 \(G^{-1/3}\) 与电通量四个逆度规权 \(G^{1/3}\) 正确抵消；没有把 exact 磁变形单独当作电荷不变证明。
- 独立整体缩放的 \(N_5\mapsto s^3N_5\)、\(N_2\mapsto s^6N_2\) 与固定周期量纲一致。
- 相同 \(x\) 周期导致平方半径比有理；并未声称任意实半径自动量子化。
- 特定平直 torus 商的周期自旋结构由 flat KSE 分量为零支撑，未扩展到任意商。
- Brown–Henneaux 公式明确只用于 seed；timelike \(g_{\phi\phi}\) 的负值阈值和局限表述正确。

## 6. Unequal appendix：定义与模素数证书通过

已读取 [paper_appendices.tex](</Users/koishi/Documents/Note/Drafts/test_2/paper_appendices.tex>)。反向 Maurer–Cartan 约定、只缩放 \(2,5\) 两条纤维、额外 \(e^{0134}\) 磁通及 \(F^2\ne0\) 的 trace/CS 项保留均与原证据一致。附录明确警告不要套用 equal-fibre 专属的 \(\slashed F\) 简式；这是正确且必要的跨节限定。

对 [有限证书:62–82](</Users/koishi/Documents/Note/Drafts/test_2/paper_appendices.tex#L62-L82>) 进行了针对实际转写的独立小核验：不导入旧程序，直接在 Sage 的 \(\mathbb F_{1009}\) 中按附录定义重建 Pauli 张量 gamma、结构常数与 \(\mathcal A_0,\mathcal A_1,\mathcal A_2\)，使用打印的六个四形式系数

\[
(10,6,24/5,8,-24/5,32/5).
\]

结果为

\[
469^2=-1\pmod{1009},\qquad
\det[(\mathcal R_{01})_{I,I}]=627\pmod{1009},
\quad I=\{1,\ldots,12,17,\ldots,28\}.
\]

同时得到 \(\Pi_{\rm u}^2=\Pi_{\rm u}\)、\(\operatorname{tr}\Pi_{\rm u}=8\)、\(\mathcal R_{01}\Pi_{\rm u}=0\)，及前三条连接的保持性，均在该有限域中成立。1-based 行列与 0-based gamma/frame 索引转换一致。

该非零 determinant 合法证明特征零矩阵 rank 至少24，因为这里的有理分母在模1009可逆且复单位有合法像。**有限域零残差不用于证明有理域零残差**；全部55条平坦性与11条保持性仍由已有精确有理证据承担，本轮不重复大核验。附录确实提供了这些等式的完整可重建输入，而不是只有最终rank数字。

Majorana 附录使用的 \(B_M\) 与先前独立全参数 null 审查中精确核验的实结构相同；实维数解释没有转写错误。

## 7. Null 实际片段与新增四奇配对

已读取完整 [paper_null.tex](</Users/koishi/Documents/Note/Drafts/test_2/paper_null.tex>)。必要条件消元、两张充分性连接表、\(\Gamma^{0\cdots10}=-1\) 依赖、Majorana 实维数均与 [已完成的独立 null 审查](</Users/koishi/Documents/Note/Drafts/test_2/paper_null_independent.md>) 一致，没有转写造成的非法预投影。

正分支坐标向量传输中的二阶项也直接成立：\(\mathcal N\Gamma^0\mathcal N=2U\)、\(\mathcal N\Gamma^1\mathcal N=-2U\)，给出的二乘二矩阵正好等于 coframe 变换，故与逆标架抵消。

新增四奇配对不依赖旧 CAS rank：取 \(\mathcal C=B_M\Gamma^0\)，Majorana 条件与 \(B_M\) 实对称给 \(\bar\epsilon=\epsilon^\dagger\Gamma^0\)。\(\Lambda\) Hermitian，\(\Gamma^0\Gamma^i\) 对 \(i\ge2\) 与其反对易，所以横向 current 消失，且

\[
K^0=-\epsilon_1^\dagger\epsilon_2,\quad
K^1=\epsilon_1^\dagger\epsilon_2,\quad
K=-\frac{\epsilon_1^\dagger\epsilon_2}{L}\partial_v.
\]

正定 Hermitian norm 给出实奇部配对非退化。这些新等式用 \(\mathbb Q(i)\) 上的32维矩阵作了独立小核验：\(B_M\) 实对称、\(\mathcal C^T=-\mathcal C\)、gamma 配对兼容、\(\Lambda\) Hermitian及九个横向投影残差全部通过。

### 两项需要明确写出的约定

1. null Einstein 式中的 \(g_A\) 应明确为变形后的前三维块 \(g_{N,A}\)，而不是前文的 seed \(g_A\)。正确式为 \(\operatorname{Ric}_{N,A}=-2a^2g_{N,A}+4a^2\beta^2n\otimes n\)。若用 seed metric 表示，额外项系数会变成6。这是符号消歧，不是已核验曲率的错误。
2. 在固定 \(\mathsf N=\partial_v\) 下，当前配对为负定。把括号写成 \(+\varepsilon_{ab}\varepsilon_{\dot a\dot b}\mathsf N\) 时，应明确实结构
   \[
   Q_{a\dot a}^*=-\varepsilon_{ab}\varepsilon_{\dot a\dot b}Q_{b\dot b},\qquad
   \varepsilon_{12}=\varepsilon_{\dot1\dot2}=1.
   \]
   对相同 reality 的系数，\(z_{22}=-\overline z_{11}\)、\(z_{21}=\overline z_{12}\)，故 \(z^T(\varepsilon\otimes\varepsilon)z=-2(|z_{11}|^2+|z_{12}|^2)\)。它与上面的负号一致；剩余正系数才能由实奇归一化吸收，不能用实缩放单独翻号。独立精确实基检查得到该 pairing 的 Gram 矩阵为 \(-2I_4\)，Hermitian Gram 为 \(+2I_4\)。

**已对最终文本定点复读，两项均修复。** 变形 metric 已在 [paper_null.tex:37–43](</Users/koishi/Documents/Note/Drafts/test_2/paper_null.tex#L37-L43>) 明确定义；负 Majorana reality 及只吸收正归一化系数已写入 [paper_null.tex:199](</Users/koishi/Documents/Note/Drafts/test_2/paper_null.tex#L199>)。

### 最终新增公式与 source 段落

- [paper_null.tex:31](</Users/koishi/Documents/Note/Drafts/test_2/paper_null.tex#L31>) 现给出 Noris 式 (3.1) 的 round-sphere 边界、\(\alpha_{\rm null,N}=\beta^2\)、\(\beta=-\sqrt{\alpha_{\rm null,N}}\)、球 Hopf 手性及坐标/取向映射。它与高分辨率 source 的 \(\sqrt\alpha\) 系数一致；正手性八超荷支没有被误写成固定手性 source 的增强点。
- [paper_null.tex:47](</Users/koishi/Documents/Note/Drafts/test_2/paper_null.tex#L47>) 明确只引用通用 Koszul/flux 项，不误用非 null 专属 \(\mathcal F\) 简式。
- 新增 [null Maxwell 明式](</Users/koishi/Documents/Note/Drafts/test_2/paper_null.tex#L33-L36>) 为
  \[
  d\star F_N=4\beta(-a^2+b^2+c^2)\,n\wedge e^{234679\,10}.
  \]
  独立以稀疏外代数字典重建11个 \(de^i\)、Hodge 星与四形式；在**未代入半径约束**时，四个手性选择均精确得到上述8形式的两个有序分量，系数都是 \(-4\beta a^2+4\beta b^2+4\beta c^2\)。因此其符号、系数和 chirality 独立性均通过，不以作者的最终 True 代替复核。
- [连接式:64](</Users/koishi/Documents/Note/Drafts/test_2/paper_supersymmetry.tex#L64>) 将 contraction 改写为 \(-\widetilde F_{iabc}\Gamma^{abc}/24\)，与 \(-\tfrac14\slashed{\iota_i\widetilde F}\) 等价：\(\slashed{\iota_i\widetilde F}=\widetilde F_{iabc}\Gamma^{abc}/3!\)。这里只改变排版写法，没有改变 KSE 系数。

## 8. 最终跨文件静态检查与边界

从实际主入口递归读取 inputs，七个 TeX 文件全部存在。最终扫描结果：**94个 labels、78个 references、13个实际 citation keys；没有重复 label、未解析 ref 或未定义 citation key，环境 begin/end 计数平衡。** 全部输入都限定于授权目录。

本次发现并确认修复了：结论句遗漏曲因子 Einstein 前提、null metric 的 seed/deformed 符号歧义、四奇括号所需的负 Majorana reality 明示。早先基于缩小页面的 Noris 根号误读已撤回，没有作为 source 错误进入最终判定。

**结论：数学转写与论证依赖终审通过，无剩余阻断项。** 本结论依赖正文列出的局部、非退化、正半径及明确 ansatz 条件，不扩展到全局商或一般通量分类。最终编译、PDF 与版面由整合者处理，本报告不宣称做过它们。
