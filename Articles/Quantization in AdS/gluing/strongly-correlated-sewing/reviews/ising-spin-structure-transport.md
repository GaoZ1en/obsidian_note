# Coser–Tonni–Calabrese 1511.08328v1：finite words 到 canonical characteristics 核验

## 判定

**在论文指定的 canonical cycles、全 NS reference 和有序 sheet 编号下，明确的 transport 成立，但不是直接把 finite labels 除以 2。** 令 g=n−1，L 为 g×g 的全 1 下三角矩阵，则

\[
\boxed{2\varepsilon=L\alpha,\qquad 2\delta=L^{-T}\beta\quad(\mathbb F_2).}
\]

此处没有 affine shift。它由论文 PDF/正文 p.25 的 (76)–(77) 直接翻译得来；不是从数量、Arf 符号或 theta 数值倒猜。**文献给的是 coherent-state/CFT scaling identification 和数值支持，不是 lattice asymptotic theorem。**

## 来源和 actual evidence

来源：[arXiv:1511.08328v1](https://arxiv.org/pdf/1511.08328v1)，Coser–Tonni–Calabrese，*Spin structures and entanglement of two disjoint intervals in conformal field theories*。下载文件共 41 页，PDF 页码与正文页码一致；[首页图像](</Users/koishi/.dsh/research-results/ctc1511-v1.LERqZ8/page-1.png>)已视觉确认 v1、26 Nov 2015。PDF 内部 creation date 是 2018，不能拿该元数据代替 arXiv 版本标识。

- [原始 PDF](</Users/koishi/.dsh/research-results/ctc1511-v1.LERqZ8/1511.08328v1.pdf>)，SHA256：`69f23ad7dcb491dc62ffcb69dd8d63ad1667146edf5d5290f42d3f933167d9b7`。
- [p.8](</Users/koishi/.dsh/research-results/ctc1511-v1.LERqZ8/page-8.png>)：(15)、(18)、(20)，normalized auxiliary matrix 与 unnormalized rho3 的区别。
- [p.9](</Users/koishi/.dsh/research-results/ctc1511-v1.LERqZ8/page-9.png>)：(21) 的 4^(n−1) words、reality/reversal 说明、(23) 的 n=3 五项。
- [p.13](</Users/koishi/.dsh/research-results/ctc1511-v1.LERqZ8/page-13.png>)：(43) period matrix、(44) theta convention、(45) Dirac。
- [p.14](</Users/koishi/.dsh/research-results/ctc1511-v1.LERqZ8/page-14.png>)：Fig.2 canonical cycles、(46) Ising、(47) characteristic。
- [p.15](</Users/koishi/.dsh/research-results/ctc1511-v1.LERqZ8/page-15.png>)：Fig.3 sheet gluing、epsilon/delta 对 a/b cycles 的 NS/R 约定、parity。
- [p.16](</Users/koishi/.dsh/research-results/ctc1511-v1.LERqZ8/page-16.png>)：(48) 的绝对值 theta ratio；上方正文说 odd 项恒零，因此负号是为匹配 finite lattice 插入。
- [p.19](</Users/koishi/.dsh/research-results/ctc1511-v1.LERqZ8/page-19.png>)：(56) n=3 theta 五项。
- [p.20](</Users/koishi/.dsh/research-results/ctc1511-v1.LERqZ8/page-20.png>)：(62) Berezin ordering、(63) coherent states、(64) trace minus sign。
- [p.24](</Users/koishi/.dsh/research-results/ctc1511-v1.LERqZ8/page-24.png>)：(74)–(75) termwise CFT targets，绝对值已视觉核实。
- [p.25](</Users/koishi/.dsh/research-results/ctc1511-v1.LERqZ8/page-25.png>)：(76)–(77) 明确 transport，已视觉核实。
- [p.30](</Users/koishi/.dsh/research-results/ctc1511-v1.LERqZ8/page-30.png>)：(87)–(88) **signed** lattice ratios；数值 setup 为 infinite chain、等长 blocks、固定 ell/d。
- [p.36](</Users/koishi/.dsh/research-results/ctc1511-v1.LERqZ8/page-36.png>)：(92) scaling ansatz 与实际观察，不是误差界定理。

以上列出的图像均已实际 read_image 查看，不只是渲染。[§2 选页提取](</Users/koishi/.dsh/research-results/ctc1511-v1.LERqZ8/section2-extract.txt>)和[§4 选页提取](</Users/koishi/.dsh/research-results/ctc1511-v1.LERqZ8/section4-extract.txt>)仅用于导航。Poppler 报过 xref reconstruction warning，但命令成功，关键公式以图像为准。

本次没有修改研究主文。按委托只核验、另存证据，不证明 lattice asymptotic。

## 1. 有限对象与论文的精确对齐

设 P=P1，F0=G，F1=S，G/S 均为总偶 CAR operators；S 是未归一化 string-inserted operator，而不是 ordinary spin partial trace。论文 (18) 的字母对应

\[
\rho_1=G,\quad \rho_2=PGP,\quad \rho_3=S,\quad \rho_4=PSP.
\]

论文用 P_{A2} 而委托定义用 P_{A1}，但 P_A=P_{A1}P_{A2} 且 [P_A,F_r]=0，所以两种共轭严格相同。论文 (15) 的 rho_A^{B1} 已除以 <P_B>，而 (18) 的 rho3 又乘回该因子，因此对应的是 S，不是 S/TrS。用 S 定义不需要假定 TrS 非零。

按同一有序 sheet 编号定义

\[
q_j=1+2r_j+s_j\in\{1,2,3,4\}.
\]

那么 p_j^{B1}=r_j、p_j^{A2}=s_j，论文的 #4 mod2 等于 r·s。论文 (21) 是

\[
p_n=2^{1-n}\sum_{\sum r_j=0,\;s_n=0}(-1)^{r\cdot s}W_{\alpha\beta,N}.
\]

这是有限矩阵恒等式；同一 word 的各 Gaussian factors 不交换。

## 2. Canonical transport、逆映射与 Arf

论文 (77) 在 F2 中恰为

\[
a_k:=2\varepsilon_k=\sum_{\ell=1}^k r_\ell,\qquad
b_k:=2\delta_k=s_k+s_{k+1},\qquad 1\le k\le g.
\]

固定 s_n=0，r_n=Σ_{j=1}^g r_j，得到前述矩阵式。逆映射为

\[
r_1=a_1,\quad r_j=a_j+a_{j-1}\;(2\le j\le g),\quad r_n=a_g,
\qquad s_j=\sum_{k=j}^g b_k,\quad s_n=0.
\]

所以这是双射。参考 word G^n 对应 a=b=0：每个 a/b cycle 均 NS。文献约定 epsilon_k=0 是 a_k 上 antiperiodic、epsilon_k=1/2 是 periodic；delta 对 b_k 同理。这里 a_k 作为 characteristic bit 与几何 cycle 同名时应按上下文区别。

由望远镜求和，或 L^T L^{-T}=I，

\[
4\varepsilon\cdot\delta=a\cdot b=\alpha\cdot\beta=r\cdot s\pmod2.
\]

这是 characteristic 的 Arf parity；finite coefficient 正是 (-1)^Arf。注意这不等于说每个 finite Pfaffian 自己的符号就由 Arf 决定。

这里的映射是线性的，因为固定了论文 canonical basis 和 zero-characteristic reference。一般换 symplectic homology basis 会产生 characteristic 的 affine shift。具体若采用

\[
\tau'=(A\tau+B)(C\tau+D)^{-1},
\]

则相应标准 convention 下

\[
\binom{\varepsilon'}{\delta'}=
\begin{pmatrix}D&-C\\-B&A\end{pmatrix}
\binom{\varepsilon}{\delta}
+\frac12\binom{\operatorname{diag}(CD^T)}{\operatorname{diag}(AB^T)}\pmod1.
\]

因此不能换了 period basis 却保留未运输的 labels。上述一般换基公式是标准 theta convention 的说明，不是声称论文 (77) 另有一个 affine offset。

## 3. n=3：全部 16 words 与五个轨道

此时

\[
(2\varepsilon_1,2\varepsilon_2)=(r_1,r_1+r_2),\qquad
(2\delta_1,2\delta_2)=(s_1+s_2,s_2).
\]

表中 2epsilon、2delta 均写二进制 bit string；q 是论文 rho 字母串。A/B/C/D/E 为后面的五个轨道。

| alpha | beta | q | 2epsilon | 2delta | coefficient sign | orbit |
|---|---|---|---|---|---|---|
|00|00|111|00|00|+|A|
|00|01|121|00|11|+|B|
|00|10|211|00|10|+|B|
|00|11|221|00|01|+|B|
|01|00|133|01|00|+|C|
|01|01|143|01|11|−|E|
|01|10|233|01|10|+|D|
|01|11|243|01|01|−|E|
|10|00|313|11|00|+|C|
|10|01|323|11|11|+|D|
|10|10|413|11|10|−|E|
|10|11|423|11|01|−|E|
|11|00|331|10|00|+|C|
|11|01|341|10|11|−|E|
|11|10|431|10|10|−|E|
|11|11|441|10|01|+|D|

轨道由 cyclicity、同时交换 1↔2/3↔4、以及 reversal 生成；每次以 s3=0 重新选代表。五个轨道是

- A={111}；
- B={121,211,221}；
- C={133,313,331}；
- D={233,323,441}；
- E={143,243,341,413,423,431}。

因此，论文 p.9 (23) 精确给出

\[
\boxed{
p_{3,N}=\frac14\left[
\operatorname{Tr}G^3+3\operatorname{Tr}(G^2PGP)
+3\operatorname{Tr}(GS^2)+3\operatorname{Tr}(PGPS^2)
-6\operatorname{Tr}(GSP SP)
\right].}
\]

最后一项的无歧义写法是 Tr[G S P S P]。论文选择的代表为 Tr(rho1 rho4 rho3)=Tr[G P S P S]；由 reversal/reality 等于上述代表。

**适用条件：** 论文 p.9 明用各 word trace 为实数及 rho_j Hermitian。对于其 Ising/XX 实基态 setup，这成立。若仅抽象给任意 Hermitian G、S、P，不能自动把 reversal 当等号；一般 odd sector 应保留 −3(X+conjugate(X))，X=Tr[G S P S P]。同样，五项不是允许交换任意 Gaussian factors。

## 4. Period matrix 与 CFT theta 目标

论文 p.13 (43)，i,j=1,…,n−1，x∈(0,1)：

\[
\tau_{ij}(x)=\frac{2i}{n}\sum_{k=1}^{n-1}
\sin\frac{\pi k}{n}\,
\frac{{}_2F_1(k/n,1-k/n;1;1-x)}{{}_2F_1(k/n,1-k/n;1;x)}
\cos\frac{2\pi k(i-j)}n.
\]

这是 Figs.2–3 的 basis；纯虚、Im tau 正定。n=2 是 i K(1−x)/K(x)。n=3 简化成

\[
\boxed{\tau_3(x)=\frac{i}{\sqrt3}
\frac{{}_2F_1(1/3,2/3;1;1-x)}{{}_2F_1(1/3,2/3;1;x)}
\begin{pmatrix}2&-1\\-1&2\end{pmatrix}.}
\]

论文 (47)：

\[
\Theta[\varepsilon;\delta](z|\tau)=\sum_{m\in\mathbb Z^g}
\exp\{i\pi(m+\varepsilon)^T\tau(m+\varepsilon)
+2\pi i(m+\varepsilon)^T(z+\delta)\}.
\]

它的 Omega_n 符号是 theta ratio，不是 period matrix：

\[
\Omega_n[a;b]:=\left|\frac{\Theta[a/2;b/2](0|\tau_n(x))}{\Theta[0;0](0|\tau_n(x))}\right|.
\]

对于 Ising，(75) 的 CFT target 是 W/J_n=Omega_n[a;b]；对于 modular-invariant Dirac 是 Omega_n[a;b]^2。这里

\[
J_n=\frac{(c_n)^2}{[\ell_1\ell_2(1-x)]^{2\Delta_n}},\qquad
\Delta_n=\frac{c}{12}(n-1/n),
\]

长度/cutoff 须与 c_n 同一约定。参考 W0=TrG^n 对应 Omega=1，所以最稳妥的相对目标是 W/W0。

n=3 的五项目标如下：

| finite representative | multiplicity/sign in 4p3 | Ising CFT target W/TrG³ |
|---|---:|---|
|Tr G³|+1|1|
|Tr G²PGP|+3|Omega3[00;01]|
|Tr GS²|+3|Omega3[01;00]|
|Tr PGPS²|+3|Omega3[01;10]|
|Tr GSP SP|−6|Omega3[01;11]=0|

其中第二行展示的是同轨道 canonical representative；逐 word characteristic 必须用前面的16行表。例如 q=211 本身映到 [00;10]，不能说它逐字等于 [00;01]，只是该曲面上二者的绝对值 theta ratio 由 dihedral symmetry 相同。

因此论文 (56) 是

\[
F_3^{\rm Ising}(x)=\tfrac14\{1+3\Omega_3[00;01]
+3\Omega_3[01;00]+3\Omega_3[01;10]-6\Omega_3[01;11]\}.
\]

最后一项在 continuum 为零，finite N 不得删除。对于已消去两单区间因子的量，目标为

\[
R_3^{\rm CFT}=(1-x)^{-2/9}F_3^{\rm Ising}(x),
\]

因为 Ising c=1/2、Delta3=1/9。固定圆周真空可在 CFT 端用 chord cross-ratio；此 conformal statement 不提供 finite-circle lattice asymptotic theorem。

## 5. Arf coefficient 不替代 Pfaffian orientation

三个符号问题须分开：

1. **Finite trace orientation：** W 是实际有序 CAR 矩阵积的 trace，Majorana 次序和 PB 的 i 因子已固定。若改用 Wick/Pfaffian，须从同一有序 CAR expansion 得到多项式 Pfaffian，或使用完全对齐的 coherent-state/Berezin convention；不得把 determinant 随手取 principal square root，也不得对 finite W 取绝对值。S 的标量 TrS 也不能丢。
2. **Arf coefficient：** (-1)^(r·s)=(-1)^(4epsilon·delta) 是 sum 外的 coefficient，来自 rho4 的负号及 transport，不是 W 自身符号的定理。
3. **Continuum nonchiral amplitude：** 论文 (46)、(48)、(75) 使用绝对值 theta ratio。其 p.16 直说 odd theta 常数恒零，负号是为了与 lattice counterpart 对照。因此这些 continuum 幅值不会单独定出一个带符号 lattice Pfaffian 或 chiral determinant line 的 orientation。

论文 p.20 的具体有限积分约定为

\[
\int d\zeta^*d\zeta\,\zeta\zeta^*=1,
\quad |\zeta\rangle=|0\rangle-\zeta|1\rangle,
\quad \operatorname{Tr}O=\int d\zeta^*d\zeta\,e^{-\zeta^*\zeta}
\langle-\zeta|O|\zeta\rangle.
\]

p.23 (73) 在 word 的 closing trace 处只使用一次这个 minus sign。它是 cycle NS reference 的来源之一，不能额外再添一个自由 affine shift。

还须注意 p.30 (88) 定义的是 **signed lattice ratio**：

\[
\Omega_n^{\rm lat}[q]=(-1)^{\#4}W_q/\operatorname{Tr}G^n.
\]

对于 even characteristic，这与 unsigned ratio 一样；对于 odd characteristic，极限为零，符号差在极限消失，但 finite data 不一样。不能把 (88) 当成 finite W≥0 的声明。

## 6. 验算和证据强度

- 解析：从 (77) 得到 L/D、显式逆、望远镜 Arf 恒等式；从 (43) 推出 tau3。
- Sage 精确枚举：[最终 actual output](</Users/koishi/.codex/mcp-results/sage_run-dBJKtk/result.txt>)，遍历16个 word，确认 characteristic/parity、5个互不相交的轨道及 sizes 1,3,3,3,6。首次 orbit helper 的异或写法受 Sage preparsing 干扰，已弃用；这里引用的最终运行改为显式交换并有 assertions。
- 精确非交换矩阵例及 theta 数值：[actual output](</Users/koishi/.codex/mcp-results/sage_run-snpshF/result.txt>)。n=3 五项 finite identity 用非交换有理实对称矩阵精确成立。它是矩阵代数检查，不宣称那些随选矩阵是物理 Gaussian state。
- theta 数值在 x=0.2、0.5、0.8，70位工作精度、m1,m2∈[−10,10] 检查同轨道 ratios：观测到最大轨道差约1.9e−71，odd 约5e−72。截断高斯和检验是数值支持，不是误差界认证。
- x=0.5 的4个 even orbit 数值依次为 1、0.816496580927726033、0.816496580927726033、0.577350269189625765；x↔1−x 交换 B、C 轨道，D 不变，符合 period convention。

**未做／未声称：** lattice asymptotic；cutoff-uniform estimate；把 odd finite words 置零；从非手征绝对值 theta 公式证明全局 Pfaffian line orientation；独立 fresh 子代理复核（本 delegated session 已到深度上限）。文献主要数值 setup 是 infinite chain、等长 blocks，不能直接声称它已检验当前 finite-circle family。
