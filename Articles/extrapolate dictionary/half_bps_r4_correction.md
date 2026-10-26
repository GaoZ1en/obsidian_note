# 首个 string correction：完整 \(20'\) 的 \(R^4\) tensor 及归一化

## 1. 结果与物理输入

在 **half_bps_generic_tree.md** 的单位 two-point normalization 与 reduced Mellin convention 下，genus-zero 首项 string correction 是

\[
\boxed{\delta\widetilde M_{R^4}
=\frac{480\zeta(3)}{N^2\lambda_{\rm tH}^{3/2}},\qquad
\delta M_{R^4}
=\frac{480\zeta(3)}{N^2\lambda_{\rm tH}^{3/2}}
\mathcal P_{R^4}(s,t;\sigma,\tau).}
\tag{1.1}
\]

这里 ordinary \(s+t+u=8\)，\(\widetilde u=4-s-t\)，而 \(\mathcal P_{R^4}=\widehat{\mathcal R}\,1\)。本文独立计算其完整 tensor、crossing 和 neutral projection，并从 IIB Virasoro–Shapiro amplitude 与 flat-space limit 的 gamma ratio 推导 \(480\)。

准确物理范围为 large-\(N\) genus-zero、leading \(\lambda_{\rm tH}^{-3/2}\) 项。supersymmetric local \(R^4\) correction 的选择与 IIB flat-space amplitude 是这里新增的外部物理输入；前一阶段的两、三点数据及 two-derivative action 本身留下一个可计算的 contact coefficient 自由度。

主要 primary source 为 [Binder–Chester–Pufu–Wang, 1902.06263v2](https://arxiv.org/pdf/1902.06263v2)：

- PDF p.5 / printed p.4, eqs.(1.3)–(1.4)：IIB \(R^4\) flat-space coefficient；
- PDF pp.9–11 / printed pp.8–10, eqs.(2.8)、(2.12)–(2.18)：六张量、reduced Mellin convention、position basis；
- PDF p.24 / printed p.23, eq.(4.2)：\(p=2\) 的完整 coefficient；
- PDF pp.26–27 / printed pp.25–26, eqs.(4.6)–(4.12)：flat-space map 与 normalization；
- PDF p.29 / printed p.28, eq.(4.19)：最低 twist anomalous dimension。

上述关键 normalization 页已经下载并实际渲染核验，包括 PDF pp.10–11 的 Mellin/position-basis eqs.(2.12)–(2.17) 和 PDF p.29 的 anomalous-dimension eq.(4.19)。

变量接口也需明确：该文 eq.(2.12) 的 \(V\) 指数使用其 reduced \(u\)。在本文 convention 中，令 \(t_{\rm here}=u_{\rm BCPW}\)、\(\widetilde u_{\rm here}=t_{\rm BCPW}\)。\(p=2\) 的 SG seed 和本项 constant seed 在这两个变量的交换下均不变，所以 coefficient 与下文的 Ward transform 直接相接。

## 2. 完整四阶普通 Mellin polynomial

令 \(\mathcal R=\sum r_{mn}(\sigma,\tau)U^mV^n\)，其六项与前文一致。直接从 gamma measures 得

\[
\boxed{\mathcal P_{R^4}
=\sum_{m,n}r_{mn}(\sigma,\tau)
(2-s/2)_m^2(2-t/2)_n^2(2-u/2)_{2-m-n}^2.}
\tag{2.1}
\]

按 \(1,\sigma,\tau,\sigma^2,\sigma\tau,\tau^2\) 展开，六个系数是

\[
\begin{aligned}
p_1&=\frac{(t-4)^2(s+t-4)^2}{16},\\
p_\sigma&=-\frac{(t-4)^2(s^2+st-8s+2t-2)}8,\\
p_\tau&=\frac{(s+t-4)^2(st+2s+2t-14)}8,\\
p_{\sigma^2}&=\frac{(s-4)^2(t-4)^2}{16},\\
p_{\sigma\tau}&=-\frac{(s-4)^2(st+2s+t^2-8t-2)}8,\\
p_{\tau^2}&=\frac{(s-4)^2(s+t-4)^2}{16}.
\end{aligned}
\tag{2.2}
\]

任意矩阵 polarization 用前文的 \(1\mapsto D_s,\sigma\mapsto C_2,\tau\mapsto C_1,\sigma^2\mapsto D_u,\sigma\tau\mapsto C_3,\tau^2\mapsto D_t\) 线性映射。程序精确验证

\[
\begin{aligned}
\mathcal P(s,t;\sigma,\tau)&=\mathcal P(s,u;\tau,\sigma),\\
\mathcal P(s,t;\sigma,\tau)&=\tau^2
\mathcal P(t,s;\sigma/\tau,1/\tau),\\
\mathcal P(s,t;\sigma,\tau)&=\sigma^2
\mathcal P(u,t;1/\sigma,\tau/\sigma).
\end{aligned}
\tag{2.3}
\]

其 scalar, vector 与 stress single-trace residues 均为零，因为 (2.2) 是 polynomial。因而任意 \(c\,\mathcal P_{R^4}\) 都保持既有 protected two/three-point data 与 tree-level single-trace exchange residues。supersymmetry 和 crossing 将这个阶的 local degree-zero reduced contact 限制为一个常数；常数的物理值由 §3 的 string input 决定。

## 3. 独立推导 \(480\)

把 flat-space Mandelstam variables 记为 \(S,T,U_f\)，满足 \(S+T+U_f=0\)，避免与 AdS ordinary/reduced \(u\) 混淆。Virasoro–Shapiro 的 genus-zero factor 可写为

\[
f(S,T)=\prod_{X=S,T,U_f}
\frac{\Gamma(1-\ell_s^2X/4)}{\Gamma(1+\ell_s^2X/4)}.
\tag{3.1}
\]

由
\[
\log\Gamma(1-x)-\log\Gamma(1+x)
=2\gamma x+2\sum_{n\ge1}\frac{\zeta(2n+1)}{2n+1}x^{2n+1}
\]
及 \(S^3+T^3+U_f^3=3STU_f\)，线性项相消，得到

\[
f(S,T)=1+\frac{\zeta(3)}{32}\ell_s^6STU_f+O(\ell_s^{10}).
\tag{3.2}
\]

这是 primary source eq.(1.4) 的独立级数推导。接下来令待定 reduced amplitude 为

\[
\widetilde M=\frac{32}{N^2}
\left[\frac1{(s-2)(t-2)(\widetilde u-2)}
+b\,\lambda_{\rm tH}^{-3/2}+\cdots\right].
\tag{3.3}
\]

对 \(p=2\)，reduced flat-space map 的 integrand 含
\[
\int_{\kappa-i\infty}^{\kappa+i\infty}
\frac{d\alpha}{2\pi i}\,e^\alpha\alpha^{-6}
\widetilde M\!\left(\frac{L^2S}{2\alpha},
\frac{L^2T}{2\alpha}\right),\qquad \kappa>0.
\tag{3.4}
\]
large-\(L\) 中 SG seed 提供 \(8\alpha^3/(L^6STU_f)\)，而 constant correction 提供 \(b\,\ell_s^6/L^6\)，因为 \(\lambda_{\rm tH}=(L/\ell_s)^4\)。归一到 SG amplitude 后两者的比例为

\[
b\,\ell_s^6STU_f\,
\frac{\Gamma(3)}{8\Gamma(6)}
=\frac{b}{480}\ell_s^6STU_f.
\tag{3.5}
\]

比较 (3.2) 得 \(b=15\zeta(3)\)。乘 (3.3) 的 \(32/N^2\) 就得到 (1.1)。这个过程先保留 \(b\)，通过实际 \(\Gamma(3)/(8\Gamma(6))\) 求出其值。

primary source eq.(4.2) 独立给出
\[
\widetilde M_2=\frac8c
\left[\frac1{(s-2)(t-2)(\widetilde u-2)}
+15\zeta(3)\lambda_{\rm tH}^{-3/2}+\cdots\right]+O(c^{-2}),
\qquad c=(N^2-1)/4.
\tag{3.6}
\]
在当前 genus-zero \(N^{-2}\) 精度上 \(8/c=32/N^2+O(N^{-4})\)，与 (1.1) 一致。把 \(N^2\) 替换为 \(N^2-1\) 所产生的其他系数需要相应 loop 及 operator-normalization 分析。

## 4. Neutral projection 保留 string correction

对旧 \(Y=\operatorname{diag}(1,1,1,-1,-1,-1)/\sqrt6\)，令
\[
e_2=st+tu+us,\qquad e_3=stu,\qquad s+t+u=8.
\]
本轮精确投影并化成 symmetric polynomial：

\[
\boxed{\mathsf P_Y\mathcal P_{R^4}
=\frac{e_2^2}{16}+\frac{e_3}{24}
-\frac{41e_2}{12}+\frac{134}{3}.}
\tag{4.1}
\]

在 \(s=t=u=8/3\) 它等于 \(82/81\)。这与 two-derivative neutral truncation 中 scalar/vector exchange 的消失相容：该特殊 projection 对高阶 contact tensor 的作用由 (4.1) 精确给出。

constant seed 的 inverse reduced Mellin integral 是

\[
\mathcal H_{R^4}(U,V)
=\frac{480\zeta(3)}{N^2\lambda_{\rm tH}^{3/2}}
U^2\bar D_{4444}(U,V).
\tag{4.2}
\]

因此

\[
\delta\mathcal G_{\rm conn}
=\frac{480\zeta(3)}{N^2\lambda_{\rm tH}^{3/2}}
\mathcal R_Y(U,V)\,U^2\bar D_{4444},
\tag{4.3}
\]
而 neutral component 是
\[
\delta\mathcal G_Y
=\frac{80\zeta(3)}{N^2\lambda_{\rm tH}^{3/2}}
(1+U^2+V^2+4U+4V+4UV)U^2\bar D_{4444}.
\tag{4.4}
\]

式 (4.2) 也可由 ordinary external dimension-four contact 的 Mellin variables 同时平移 \(s'=s+4,t'=t+4\) 得出，与 primary eq.(2.17) 一致。普通 polynomial contact 的三个 gamma arguments 可同时选正实部，例如 \(\Re s=\Re t=\Re u=8/3\)，因而本项具有单一 contact contour。

## 5. 一个独立 OPE consequence

对 reduced integral 的 \(s=4\) double pole，\(V=1\) 的 Barnes first lemma 给出

\[
\int\frac{dq}{2\pi i}
\Gamma(2-q)^2\Gamma(2+q)^2
=\frac{\Gamma(4)^4}{\Gamma(8)}=\frac9{35}.
\tag{5.1}
\]

right closure 的方向给 logarithmic coefficient 负号。neutral \(\mathcal R_Y(0,1)=1\)，故

\[
\left.\delta\mathcal G_Y(U,1)\right|_{U^2\log U}
=-\frac{864\zeta(3)}
{7N^2\lambda_{\rm tH}^{3/2}}U^2\log U.
\tag{5.2}
\]

采用旧报告已经固定的 leading scalar singlet GFF weight \(a_{\mathbf1}=1/10\)，并假设该 leading dimension-four long singlet 在 strong-coupling light spectrum 中唯一，保护的 dimension-four sectors 保持零 anomalous dimension，则

\[
\boxed{
\gamma_{[O_2O_2]_{\mathbf1}}
=-\frac{16}{N^2}
-\frac{17280\zeta(3)}{7N^2\lambda_{\rm tH}^{3/2}}
+O(N^{-2}\lambda_{\rm tH}^{-5/2},N^{-4}).}
\tag{5.3}
\]

该 coefficient 与 primary eq.(4.19) 在 \(c=(N^2-1)/4\) 下吻合。这里明确使用单一 leading singlet 与 protected-sector 输入；一般 higher-twist log coefficients 对应 mixing-weighted sums。

## 6. 实际结果与下一步边界

**generic_twenty_prime_checks.py** 实际从 constant seed 生成 (2.2)，验证三种 crossing、neutral symmetric polynomial、Virasoro–Shapiro cubic identity、flat-space gamma ratio、Barnes \(9/35\) 与 (5.3) 的换算。结果记录于 **generic_twenty_prime_results.json**，目前该程序共 41 项 exact checks 全通过。

本文得到一个真实 higher-order boundary observable 与其完整 \(20'\) tensor，系数来自独立 IIB string input。该结果还提供一参数 contact ambiguity 的显式代表，精确说明 two/three-point 与 two-derivative data 对下一 string order 的决定范围。对应的完整十维 eight-derivative action、有限径向 \(R^4\) observable、loop completion 和所有 KK correlators 各自需要追加构造。

## Executable verification links

- [generic_twenty_prime_checks.py](checks/dictionary_extensions/generic_twenty_prime_checks.py) and [actual output](checks/dictionary_extensions/generic_twenty_prime_results.json).

The [execution manifest and evidence guide](checks/dictionary_extensions/README.md) distinguish exact identities, numerical samples, and the analytic proofs above.
