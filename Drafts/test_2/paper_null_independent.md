# Null KSE 新解析证明：独立审查

## 结论

**在稿件声明的约定与参数域内，新的解析证明成立。** 任意有限正半径、\(a^2=b^2+c^2\)、实 \(t\ne0\)，局部 Majorana Killing 自旋子数为

\[
N_{++}=8,\qquad N_{--}=4,\qquad N_{+-}=N_{-+}=0.
\]

这里的判定不是接受原计算者的最终计数：审查先从几何、通量与 KSE 定义独立重建超曲率，再检查必要条件消元、充分性连接和实结构。

- 新稿 §2 **没有在证明 \(H\epsilon=0\) 之前非法投影到整个 \(\ker H\)**。它只对已经证明属于 \(\ker H\) 的 \(\epsilon_-\) 使用 \(P_H\)。
- 两条混合超曲率可以直接推出非 \((+,+)\) 分支的 \(U\epsilon=H\epsilon=0\)，但**这两条本身不足以推出 \(X\) 投影**；\((-,-)\) 分支还需要稿件式 (22)。
- 两张约化连接表不仅给出曲率零向量，还确实定义连接保持的平坦子丛。
- 复维数等于 Majorana 实维数，不能再乘二。稿件给出的反线性实结构通过独立核验。

未发现需要修改的关键公式或逻辑缺口。本次仅新建本报告，没有修改任何原文件。

## 1. 审查对象、约定与独立性

已读取适用的各级规则；存在且适用的规则为 [AGENTS.md](</Users/koishi/Documents/Note/AGENTS.md>)。研究输入仅来自授权目录：

1. [solution.md §3](</Users/koishi/Documents/Note/Drafts/test_2/solution.md#L231-L350>)；
2. [null_check.wl 定义](</Users/koishi/Documents/Note/Drafts/test_2/null_check.wl#L5-L29>)；
3. 新稿 [paper_null_proof.md](</Users/koishi/Documents/Note/Drafts/test_2/paper_null_proof.md>)；
4. 作者辅助源 [paper_null_verify.wl](</Users/koishi/Documents/Note/Drafts/test_2/paper_null_verify.wl>)，仅作阅读核对，未导入或执行。

没有联网，没有访问其他用户资料，也未使用旧稿列出的秩、子式或最终计数作为证明前提。独立代数计算在新建的 Sage 内核定义中完成，不调用作者的 Clifford 实现或矩阵检查器。

统一记

\[
a=L^{-1},\quad b=R_+^{-1},\quad c=R_-^{-1},\quad
A=\Gamma^{012},\ B=\Gamma^{345},\ C=\Gamma^{678},\ X=\Gamma^9,\ Y=\Gamma^{10},
\]
\[
H=aA+bB+cC,\quad U=\Gamma^0+\Gamma^1,\quad
\Lambda=\Gamma^{01},\quad
P_H=\frac{1-Q}{2},\quad P_U=\frac{1+\Lambda}{2},\quad P=P_HP_U.
\]

这里 \(B\) 是 Clifford 元；null 幅度记 \(t\)，对应旧解答中度规里的实参数 \(B\)。电通量系数为 \((2a,2b,2c)\)。取 mostly plus、上标 gamma 串及 \(\Gamma^{0\cdots10}=-1\)。结构常数满足 \(de^k=-\tfrac12C^k{}_{ij}e^{ij}\)，故

\[
\mathcal R_{ij}=[D_i,D_j]-C^k{}_{ij}D_k.
\]

独立实现保留了最后的非完整标架项。

## 2. 必要条件：新稿的消元不存在循环

新稿的关键位置为 [§2:165–233](</Users/koishi/Documents/Note/Drafts/test_2/paper_null_proof.md#L165-L233>)。设

\[
\Delta=(1-s_+)b^2+(1-s_-)c^2.
\]

独立重建得到稿件式 (15)、(19)：

\[
U\mathcal R_{5y}=-\frac b{18}UY\Gamma^{34}H,
\quad \mathcal R_{xy}P_U=0,
\quad \mathcal R_{xy}P_H=\frac{t\Delta}{6}U\Gamma^{58}YP_H,
\]
\[
\mathcal R_{5y}P_U=-\frac b{18}Y\Gamma^{34}HP_U.
\]

四个手性选择的四组恒等式均通过全参数符号检验。

对曲率共同零向量，第一式只能先推出 \(UH\epsilon=0\)。取 \(\epsilon=\epsilon_++\epsilon_-\)，\(\Lambda\epsilon_\pm=\pm\epsilon_\pm\)。由于

\[
[H,\Lambda]=0,\qquad U\epsilon_+=0,\qquad
VU=-2(1-\Lambda),\quad V=\Gamma^0-\Gamma^1,
\]

\(U\) 在负本征空间上单射，因此此时已经可以合法推出 \(H\epsilon_-=0\)。这还没有证明 \(H\epsilon_+=0\)，稿件也没有使用后者。

随后 \(\mathcal R_{xy}\epsilon_+=0\)，故只对 \(\epsilon_-\) 使用 \(P_H\) 得

\[
0=\frac{t\Delta}{6}U\Gamma^{58}Y\epsilon_-.
\]

\(\Gamma^{58}Y\) 可逆且保持 \(\Lambda=-1\) 子空间。对于非 \((+,+)\) 分支，\(\Delta>0\)，遂有 \(\epsilon_-=0\)，即 \(U\epsilon=0\)。最后才能用 \(\mathcal R_{5y}P_U\) 推出整个 \(H\epsilon=0\)。顺序严谨，未预设结论。

### 独立备证：直接由两条混合曲率得到 \(U,H\)

这条备证是在读取新稿前独立得到的，不需要 \(\epsilon_\pm\) 消元。定义

\[
E_5=\frac{18}{b}\Gamma^{34}Y\mathcal R_{5y},\qquad
E_8=\frac{18}{c}\Gamma^{67}Y\mathcal R_{8y}.
\]

从定义直接展开有

\[
E_5-E_8=-\frac{t\Delta}{bc}\,U M,
\]
\[
M=2c\Gamma^{3489}+a\Gamma^{234679}+2b\Gamma^{5679},
\qquad [M,U]=0,
\]
\[
M^2=-a^2+4b^2+4c^2=3a^2.
\]

三个组成 Clifford 元两两反对易；各自平方分别为 \(+1,-1,+1\)。因此 \(M\) 在整个自旋子空间上可逆。对于 \(t\Delta\ne0\)，\(\mathcal R_{5y}\epsilon=\mathcal R_{8y}\epsilon=0\) 直接给 \(U\epsilon=0\)，回代即给 \(H\epsilon=0\)。该推导完全没有先投影到 \(\ker H\)，也不依赖最高阶 Clifford 体积元约定。

**这两条曲率不够得到 \(X\) 条件。** 在 \(\ker H\cap\ker U\) 上，它们均为零，尚保留八维初值，包含 \(X=\pm1\) 两个四维扇区。不能把“两个混合曲率足够推出 \(H,U\)”误写成“两个混合曲率已经完成四超荷计数”。

## 3. 剩余必要条件与可逆性

### \((-,-)\) 分支

独立核验 [式 (22)](</Users/koishi/Documents/Note/Drafts/test_2/paper_null_proof.md#L239-L267>)：

\[
\mathcal R_{0x}P=\frac{a^2t}{3}\Gamma^{58}(1+X)P.
\]

因 \(a>0,t\ne0\) 且 \((\Gamma^{58})^2=-1\)，它强制 \(X\epsilon=-\epsilon\)。这是不可省略的第三步。三个对易投影给

\[
\Pi_4=\frac18(1-Q)(1+\Lambda)(1-X),\qquad \operatorname{tr}\Pi_4=4.
\]

### 混合手性

独立核验 [式 (29)](</Users/koishi/Documents/Note/Drafts/test_2/paper_null_proof.md#L317-L331>)：

\[
H\Gamma^{58}Y\mathcal R_{0y}P
=-\frac{(s_+-s_-)abc\,t}{3}XYP.
\]

左乘 \(H\Gamma^{58}Y\) 不需可逆：曲率本已消去待检自旋子。右侧 \(XY\) 可逆，且所有标量因子非零，故只能有零自旋子。

**约定敏感处：** 此恒等式使用 \(\Gamma^{0\cdots10}=-1\) 的不可约 Clifford 表示；在尚未固定体积元的完整抽象 Clifford 代数中，不应要求两边字典系数逐项相同。独立核验显式加入该关系后，两种混合分支均严格为零。这是稿件已声明的约定，不是额外偷加的物理投影。

### \((+,+)\) 分支

独立核验 [式 (30)–(33)](</Users/koishi/Documents/Note/Drafts/test_2/paper_null_proof.md#L335-L375>)：

\[
\mathcal R_{5y}=-\frac b{18}Y\Gamma^{34}H,
\]
\[
\mathcal R_{02}P_H=
\frac{a^2t}{2}\Gamma^{258}(1+2\Lambda)(1+tN)(1-J)P_H,
\quad N=U\Gamma^{58},\quad J=(1-tN)X.
\]

先从第一式合法得到 \(H\epsilon=0\)，再使用第二式。前因子逆元分别由

\[
(\Gamma^{258})^2=-1,\quad
(1+2\Lambda)^{-1}=\frac{2\Lambda-1}{3},\quad
(1+tN)^{-1}=1-tN
\]

给出，没有特殊正半径零点。故 \(J\epsilon=\epsilon\)，候选投影迹为八。此支不强制 \(U\epsilon=0\)，不能沿用 \(\Delta>0\) 的推导。

## 4. 充分性：不仅有共同核，而且有平坦子丛

### 四超荷支

独立重建十一条 \(D_i\)，核验 [式 (26)](</Users/koishi/Documents/Note/Drafts/test_2/paper_null_proof.md#L271-L315>)：

\[
D_0\Pi_4=D_1\Pi_4=D_2\Pi_4=D_x\Pi_4=D_y\Pi_4=0,
\]
\[
D_i\Pi_4=b\Gamma^iB\Pi_4\ (i=3,4,5),\qquad
D_m\Pi_4=c\Gamma^mC\Pi_4\ (m=6,7,8).
\]

球矩阵为相应块中的二次 gamma 元，与 \(H,\Lambda,X\) 对易，所以确实保持投影子空间。以第一球为例，

\[
[D_3,D_4]=-2b^2\Gamma^{34},\qquad
C^5{}_{34}D_5=(-2b)(b\Gamma^{34}),
\]

故曲率为零；另一球相同，两球互相对易。不能忘掉结构常数的负号。稿件的符号正确。

### 八超荷支

独立核验 [式 (35)–(38)](</Users/koishi/Documents/Note/Drafts/test_2/paper_null_proof.md#L378-L422>)。取

\[
\Pi_0=P_H(1+X)/2,\qquad S=1-\frac t2N,
\]

有 \(\Pi_8=S\Pi_0S^{-1}\)，且十一条 \(D_iS\Pi_0=SM_i\Pi_0\) 全部成立。\(M_i\) 表、保持性与全部 55 条约化曲率都独立通过。

决定性的 AdS 检查是 \(M_0=M_1=\tfrac a2V\Gamma^2\)、\(M_2=-a\Lambda\)，故

\[
[M_0,M_2]=-2aM_0
=-a(1+t^2)M_0-a(1-t^2)M_1.
\]

因此确实在变形标架中平坦，而不是误把 seed 结构常数代入 null 背景。由于 \(S\) 的标架分量为常数，不存在漏掉的 \(e_i(S)\) 项。

两支均可使用局部平坦联络定理：在单连通邻域，每个投影子空间初值唯一延拓为平行自旋子。因此上界分别达到，得到恰四和恰八，而非仅有候选空间。

## 5. Majorana 维数与检验记录

稿件 [§6:426–452](</Users/koishi/Documents/Note/Drafts/test_2/paper_null_proof.md#L426-L452>) 的显式 Pauli 张量积表示已独立重建。在精确数域 \(\mathbb Q(i)\) 上检查得到

\[
\Gamma^{0\cdots10}=-1,\qquad
B_M\overline{B_M}=1,\qquad
B_M\overline{\Gamma^i}=\Gamma^iB_M\quad(0\le i\le10),
\]

其中 \(B_M=\Gamma^{2468\,10}\)。故 \(\rho(\epsilon)=B_M\overline\epsilon\) 是与连接、所有投影相容的反线性 involution。复解空间为固定实子空间的复化，因而

\[
\dim_{\mathbb R}\operatorname{Fix}\rho
=\dim_{\mathbb C}\mathcal S.
\]

投影迹四、八正好是四、八个实超荷。

### 可核查的独立计算范围

独立稀疏实现使用有序指标子集作为 Clifford 基，乘法符号为

\[
\Gamma^I\Gamma^J=
(-1)^{\#\{(i,j)\in I\times J:i>j\}}
\prod_{k\in I\cap J}\eta^{kk}\ \Gamma^{I\triangle J}.
\]

系数位于 \(\mathbb Q(a,b,c,t)\)，残差分子按 \(a^2-b^2-c^2\) 作多项式约化。需要不可约表示时，用体积元负号将高阶串对偶到至多五阶。全程没有取有限半径样本，也没有求任何曲率矩阵秩。

| 独立核验对象 | 结果 |
|---|---|
| 原定义重建的四分支式 (15)、(19) | 全部严格为零 |
| 无预投影备证 \(E_5-E_8\)、\(M^2=3a^2\) | 成立 |
| 正分支式 (30)、(32) | 严格为零 |
| 负分支式 (22) | 严格为零 |
| 两个混合分支式 (29)，含体积元关系 | 严格为零 |
| 两支十一条约化连接表 | 全部成立 |
| 两支约化连接保持投影 | 全部成立 |
| 两支各 55 条约化曲率 | 全部严格为零 |
| 显式 Majorana 结构及体积元 | 全部成立 |

## 6. 适用边界与未审内容

- 结论依赖 \(a,b,c>0\)、\(a^2=b^2+c^2\)、\(t\ne0\)；没有除以可能在此域内消失的特殊半径函数。
- \(t=0\) 时用于额外减半的曲率因子消失，不能沿用非零幅度上界。新稿对此已有正确区分；本次核心审查是非零 null 幅度证明。
- \(b=0\) 或 \(c=0\) 的半径发散边界不在定理范围。
- 本结论是局部 Killing 自旋子计数，不证明任意离散商、周期或自旋结构下的全局计数。
- 本次没有重审 bosonic 场方程、超代数、文献新颖性或荷；这些不是新 KSE 解析证明必要条件逻辑的前提检验目标。

**Verified:** 关键必要性算子恒等式、无循环消元、两支连接保持性和平坦性、Majorana 实结构。

**Assumptions:** 上述固定几何与四形式、mostly-plus、完全反对称五指标 KSE、\(\Gamma^{0\cdots10}=-1\)、有限正半径、非零实幅度、局部单连通邻域。

**Not verified:** 全局商、退化半径边界以及本报告明确排除的场方程、荷与文献问题。
