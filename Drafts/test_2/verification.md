# 核验证据与可复现入口

本记录只把实际运行结果列为机器证据；解析证明、独立审稿与有限样点分别标明。原摘要 [goal.md](</Users/koishi/Documents/Note/Drafts/test_2/goal.md>) 未修改。全部研究产物在本目录；未联网、未安装依赖、未读取其他研究项目。仅按系统工具要求加载数学计算技能说明；没有使用授权范围外的论文、笔记或 CPS 资料。工具自动产生的宿主结果文件未作为外部资料读取。

## 1. Bosonic 方程：全参数符号恒等式

源：[bosonic_verify.wl](</Users/koishi/Documents/Note/Drafts/test_2/bosonic_verify.wl>)。独立子代理先运行，整合者随后以 xAct/Wolfram 内核再次运行；脚本自身使用普通分量代数，不依赖 xAct 的抽象张量规则。输入假设仅为

\[
f_A^2=f_+^2+f_-^2,\qquad q^2=1-\eta t^2>0.
\]

实际返回：

| 分支 | Einstein 11 个对角残差 | 非对角 | Bianchi 独立残差 | 完整 Maxwell–CS 残差 |
|---|---|---|---|---|
| space / equal | 全 0 | 全 0 | 3 项全 0 | 1 项为 0 |
| space / unequal | 全 0 | 全 0 | 1 项为 0 | 3 项全 0 |
| time / equal | 全 0 | 全 0 | 3 项全 0 | 1 项为 0 |
| time / unequal | 全 0 | 全 0 | 1 项为 0 | 3 项全 0 |

四组 `ALL PASS=True`。等 squash 族 \(F^2=0\)；不等球族 \(F^2=-72\eta t^2f_-^2\)。后者不能省略 Einstein trace 或 Chern–Simons 项。

同一源随后从三份显式坐标度规独立计算 Christoffel 和 Ricci，不输入预期 KK 曲率公式。sphere、spacelike AdS、timelike AdS 三个残差矩阵均为严格零矩阵。

此源的 timelike 正 fiber-curvature 取向只保证 bosonic 方程。八超荷证明使用下节明确的同侧 Maurer–Cartan 取向，不混用这两套相对手性。

## 2. 非 null 的完整 KSE 与双线性

源：[susy_exact_check.py](</Users/koishi/Documents/Note/Drafts/test_2/susy_exact_check.py>)。Python 内建整数多项式与稀疏 Clifford 运算；不读取其他文件、无外部包。整合者实际运行得到：

```text
Delta = 1 checks = 94 failed = {}
Exact finite-field curvature rank = 24 mod 1009 at rational point [5, 3, 4, 606, 808]
Delta = -1 checks = 94 failed = {}
Exact finite-field curvature rank = 24 mod 1009 at rational point [5, 3, 4, 338, 674]
```

商环关系为 \(a^2=b^2+c^2\)、\(\lambda^2+\delta t^2=1\)。94 条恒等式覆盖：投影、全部连接保持关系、55 个超曲率、11 个 seed 自旋子传输恒等式，以及排除非零变形额外超荷的两条超曲率因式分解。后两条把原来的 generic 上界升级为所有规则非零变形的上界；不能把有限域样点本身误当作这个全参数结论。

解析说明：[susy_review.md](</Users/koishi/Documents/Note/Drafts/test_2/susy_review.md>)。全参数自旋子映射及物理向量双线性共同缩放证明异常超代数参数不变。

## 3. 不等球的严格八超荷反例

源：[bosonic_bps_counterexample.wl](</Users/koishi/Documents/Note/Drafts/test_2/bosonic_bps_counterexample.wl>)。在

\[
(f_A,f_+,f_-)=(10,6,8),\qquad(q,t)=(3/5,4/5)
\]

以精确有理矩阵计算，整合者独立重跑输出：

```text
central Clifford volume = -Identity: True
{curvature kernel dimension, connection-stable kernel dimension} = {8,8}
projector kernel dimension = 8
projector and curvature have the same row space: True
```

这是一个精确反例，不是数值支持。常系数超联络的曲率核维数给上界；核被全部连接保持且曲率在核上为零，给局部八维平坦子丛及充分下界。实结构见下节，实超荷数也是 8，不是 16。

## 4. Null：所有正半径比的场方程和完整超荷计数

源：[null_check.wl](</Users/koishi/Documents/Note/Drafts/test_2/null_check.wl>)、驱动 [null_verify.wl](</Users/koishi/Documents/Note/Drafts/test_2/null_verify.wl>)。

最初固定点 \(f=(10,6,8)\)、非零幅度 \(B=1\) 的精确输出：

| 球 Maurer–Cartan 符号 \((s_+,s_-)\) | 曲率核 | 加入所有连接保持条件后的核 |
|---|---:|---:|
| \((+,+)\) | 8 | 8 |
| \((-,-)\) | 4 | 4 |
| \((+,-)\) | 0 | 0 |
| \((-,+)\) | 0 | 0 |
| \(B=0\) seed | 16 | 16 |

全部 Einstein 分量、\(dF\)、\(d\star F\)、\(F\wedge F\) 均为零。两个核维数相等才足以宣告一次闭包已经稳定；若不等，必须继续闭包。

随后不是继续堆样点，而是采用覆盖所有正半径比的参数化

\[
(f_A,f_+,f_-)=k(1+w^2,1-w^2,2w),\quad k>0,\quad0<w<1.
\]

逆映射 \(w=f_-/(f_A+f_+)\)。整体尺度不改变 KSE 核维数。任意 \(B\ne0\) 局部由 \(u'=Bu,\ v'=v/B\) 化至 1；该坐标操作不替代全局周期检查。

最终符号运行输出：

- 四组 Einstein 全部为零，`einsteinPass=True`；
- 四组 \(F^2=0\)，`dF=<||>, dStarF=<||>, FwedgeF=<||>`；
- \((+,+)\) 的显式投影为 rank 8，幂等、曲率平坦、连接保持均 `True`；
- \((-,-)\) 的显式投影为 rank 4，同样三项均 `True`。

不仅给 generic 秩，还从**原始**超曲率矩阵选定子式，得到：

\[
\begin{array}{c|c|l}
(s_+,s_-)&\text{子式阶数}&\det M\\\hline
(+,+)&24&\displaystyle\frac{w^{12}(1+w^2)^{36}}{1499253470328324096}\\[3pt]
(-,-)&28&\displaystyle\frac{w^{16}(1+w^2)^{40}}{5227573613485916806405226496}\\[3pt]
(+,-)&32&\displaystyle\frac{(w-1)^{12}w^{24}(w+1)^{12}(1+w^2)^{24}(9+7w^2)^2(7+9w^2)^2}{252101350959004475617536}\\[3pt]
(-,+)&32&\displaystyle\frac{(w-1)^{12}w^{20}(w+1)^{12}(1+w^2)^{24}(3+w^2)^2(1+3w^2)^2(5+4w^2)^2(4+5w^2)^2}{252101350959004475617536}
\end{array}
\]

这些子式在整个 \(0<w<1\) 无零点。因此上下界匹配，**此明确 null ansatz 对所有有限正半径，非零幅度下恰有 8、4、0、0 个局部实超荷**，没有遗漏特殊正半径比。边界 \(w=0,1\) 对应某球半径发散，不在本定理范围内。

## 5. Null 的实结构、超代数和双线性

源：[null_algebra.wl](</Users/koishi/Documents/Note/Drafts/test_2/null_algebra.wl>)。实际全半径符号输出：

```text
Majorana real structure: True
charge conjugation: True
eight-spinor transport eleven identities: all True
eight-spinor vector bracket transport eleven identities: all True
four-spinor vector current only along partial_v: True
four-spinor odd bracket rank: 4
four-spinor sphere doublet Casimirs: {True,True}
four-spinor flat translations act trivially: True
```

在脚本 1-based 索引下，实结构为 \(B_M=\Gamma^{3,5,7,9,11}\) 乘复共轭；\(B_M\bar B_M=1\)，与超联络交换，故复核空间的复维数等于 Majorana 解的实维数。

八超荷分支从 seed 扇区的映射为 \(S_N=1-\tfrac B2(\Gamma^0+\Gamma^1)\Gamma^{58}\)。十一条完整 KSE 传输和十一条坐标向量双线性传输均成立，因而单个异常因子及其参数保持不变。

四超荷分支的全部奇奇向量双线性只沿 \(\partial_v\)，配对在四维奇空间非退化；两个球完整 SU(2) 的 Casimir 均为双重态的 \(-3/4\)。这确定了其四个奇生成元的 \((\mathbf2,\mathbf2)\) 表示与中心 null 平移括号，而不是错误地套用八奇维的异常超代数。

## 6. 独立复核与实现修正

独立分工从摘要、约定开始，不预设结论：

- bosonic 审查发现了不等球反例并完成两套曲率算法；
- SUSY 审查以独立 Python Clifford 实现找到并精确证明非 null 投影与传输；
- 荷审查独立完成周期、归一化与非紧致限制，并只读复核 null 连接及判据。

详见 [bosonic 审查](</Users/koishi/Documents/Note/Drafts/test_2/bosonic_review.md>)、[SUSY 审查](</Users/koishi/Documents/Note/Drafts/test_2/susy_review.md>)、[荷审查](</Users/koishi/Documents/Note/Drafts/test_2/charges_review.md>)、[null 独立审稿](</Users/koishi/Documents/Note/Drafts/test_2/null_review.md>)。这些审稿保留各自检验时点的范围声明；后来更强的最终证据以本记录及主文为准，不把旧限制当新失败。

实现中实际发现并修复过：Wolfram 外代数函数括号不配对；符号 `Unequal` 不能在 `Select/If` 中充当通用非零测试；`FirstPosition` 的 head 匹配导致错误子式索引。修复后逐项重跑，以上只引用成功输出。工具输出未展示 Print 时改为返回结果对象，不把空输出当成功证明。未将早期错误日志包装成证据。

### 整合后的独立终审与最终重跑

新增两名 fresh 审阅者分别完成 [局部论证终审](</Users/koishi/Documents/Note/Drafts/test_2/final_review.md>) 与 [荷及全局条件终审](</Users/koishi/Documents/Note/Drafts/test_2/global_review.md>)。前者独立重跑 94 项非 null 恒等式，并补验四超荷 null 分支的全部 spectator 作用；后者独立重算周期归一化、取向、整体尺度权重、中心荷和 CTC 判据。终审发现的“torus 商不自动量子化”缺口已修正：主文明确要求半径平方比有理及整数通量条件。

整合者随后最终重跑：非 null 精确证书退出码 0；null 四取向全部 EOM 为零、投影平坦且保持、秩子式在整个正半径区间非零；null 全部自旋子／向量传输恒等式为 True；精确不等球反例仍为 \(\{8,8\}\)。中心荷两表达式之差和 CTC 因式分解残差为零，阈值后的负性返回 True。Python 源语法和文稿本地链接检查通过；原摘要逐字比对不变、大小仍为 910 bytes。只删除了本次生成的失效诊断临时产物，没有删除或改写原笔记。

## 7. 适用范围

**Verified:** 明列局部解的完整经典场方程；同侧非 null 的非零变形恰八超荷；null 各取向全正半径分类；相应奇括号与异常因子；一个精确八超荷不等球反例；指定周期的解析通量荷。

**Assumptions:** 两导数、无源十一维超引力；mostly plus 和明确的 Clifford/体积取向；非退化参数；局部单连通区域。紧化荷另加明确的 torus 商和周期。时间向分支不保证全局无闭合类时曲线。

**Not verified / not defined by the input:** 文献意义的首创性；所有均匀通量的分类；任意离散商下的全局超荷；未指定边界条件下的 warped 能量、角动量和中心荷。这些不能由有限或局部检验代替。
