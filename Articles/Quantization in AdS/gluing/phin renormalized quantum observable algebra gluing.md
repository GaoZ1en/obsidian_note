# Renormalized Interacting Quantum Observable Algebra Gluing for Phi-n

**结论。** 对固定整数 $n\ge3$ 的 switched scalar model，存在一个由 off-shell local polynomial insertions、renormalized time ordering 和 quantum Møller images 构造的 formal interacting algebra。在同一 transparent free response 和相同 renormalization rule 下，regional sewing 与 quantum Møller maps 相容，sewed algebra 与独立 global interacting algebra exact 同构。其 classical limit 在所选 local polynomial generators 上恢复已有的 $\phi^n$ sewing。

这里的 quantum regional object 保留 action、histories、response 和插入标签。它不等于两个已在 artificial reflecting walls 上独立重整化的 algebras；也不声称整个经典 $\mathcal H_\beta$ 或整个 equicausal class 都被 $\Psi_\lambda^{\pm *}$ 保持。自由输入和 polynomial Wick class 见 [free scalar renormalized quantum observable algebra gluing](<free scalar renormalized quantum observable algebra gluing.md>)，下称 [Q0]；经典 maps 见 [phin smooth regional observable algebra gluing](<models/phin smooth regional observable algebra gluing.md>)。

## 1. Action 与量子约定

沿用 $1+1$ 维、有限 interval cells、$m>0$、物理外端 Dirichlet 和早期自由窗。$g_i$ 实且 smooth，时间支撑在固定 $J\Subset I^\circ$，在真正物理外端附近为零；人工 cut 上允许非零，全部 jets 按共同方向匹配。

区分正势能 density 与相互作用作用量：

$$\begin{align}
S_\lambda[\phi]&=S_0[\phi]+V_\lambda[\phi],&
\boxed{V_\lambda[\phi]=-\frac{\lambda}{n!}\int g\,\phi^n.}
\end{align}$$

于是

$$\begin{align}
L_0\phi+\frac{\lambda g}{(n-1)!}\phi^{n-1}=0,\qquad
L_0=\partial_t^2+K.
\end{align}$$

在 $S_R(V)=\exp_{T_R}(iV/\hbar)$ 的 convention 中，$V$ 必须取上式的负号。全部级数在 $\lambda,\hbar$ 中形式解释。

每个 isolated regional fiber 的 free quantum algebra 先由其自身 $K_{i,D}$ 定义。Regional interacting package 还保留局域 action density $-g_i\phi_i^n/n!$、其插入标签、完整 history transport 和 response。若 $g_i$ 接触 artificial reflecting wall，不能仅凭 bulk Epstein–Glaser theorem 宣称该 isolated wall theory 已有包含全部这些插入的 $T_{R,i}$；本构造在 transparent response sewing 后处理跨 cut 插入。

## 2. Free Sewing 后的 Off-Shell Insertions

用 [Q0] 的 regional quadratic forms 和 causal response 得到

$$\begin{align}
K_{\mathrm{sew}},\quad
G_0^{R/A},\quad E_0=G_0^A-G_0^R,\quad W_0.
\end{align}$$

在 sewn off-shell field space 上，令 $\mathcal P_\mu$ 为 [Q0] 的 compactly supported polynomial Wick class，$\mathcal P_{\mathrm{loc}}\subset\mathcal P_\mu$ 为 smooth compactly supported finite-jet polynomial densities 的积分。它们位于 [Q0, §2.1] 的更大 interior equicausal $\star$-algebra 内；本文的 $T_R$ 只在这些 polynomial local labels 上构造。允许其跨人工 cut，但整体 density 必须 smooth；它们的支撑避开真正物理边界。用多线性插入列表保留 multilocal labels。

Renormalized time ordering 的正确类型是

$$\begin{align}
T_{R,k}:\mathcal P_{\mathrm{loc}}^{\otimes k}
\longrightarrow\mathcal P_\mu[[\hbar]].
\end{align}$$

输出无需是有限个 local functionals 的普通乘积。例如 quartic insertions 的一次 contraction 含有

$$\begin{align}
16\hbar\int f(x)h(y)W_F(x,y)\phi(x)^3\phi(y)^3\,dx\,dy,
\end{align}$$

其 bilocal kernel 一般不是有限秩。该项属于允许的 polynomial distribution class；不能把目标错误地限制在“local functionals 的有限 multilocal span”。

这里

$$\begin{align}
W_F=W_0-iG_0^A,\qquad L_0W_F=-i\delta.
\end{align}$$

所选 $T_R$ 满足 causal factorization、symmetry、unitarity、field independence 以及相容的 off-shell field-equation/contact-term normalization。其扩展在 off-shell 插入上实施。

还固定 graph 的 $\hbar$ grading 和 classical normalization：retarded tree terms 取经典 Volterra expansion 的分布核，量子有限修正从正的 $\hbar$ 阶开始。对这里无导数的 interaction，tree kernels 可沿树从叶向根逐次使用 $G_0^R$，finite-jet insertion 则对所得核取导数；不存在需要选择 loop extension 的闭合回路。这给与 classical equation 相容的 tree prescription。不能另加改变 $\hbar^0$ dynamics 的有限 counterterm 后仍声称量子化同一个经典模型。

**这个 interval 模型中的构造范围。** [Q0] 的 reflected kernel 在内部局部 diagonal 附近有普通 Hadamard singularity。所有顶点位于避开真正边界的 compact set。对互异顶点，反射光线仍严格按时间定向；Feynman graph 的乘积可按 causal factorization 构造，反射不会产生零时间长度的内部返回光线。Partial diagonals 上先使用已经构造的较低阶 products；剩下的 total diagonal 位于普通内部邻域。每个 fixed polynomial graph 有有限 scaling degree，因此可逐阶作局域分布延拓。所有 finite counterterms 也支撑在这些内部 diagonals。

这里还须证明值域属于 $\mathcal P_\mu$；单有 finite scaling degree 只给 distribution extension，不能代替 wavefront 控制。对该静态模型可以补上如下证明。在未 smearing 的 graph kernel 中，每条反射 edge 的两个时间 covectors 之和为零。互异点的产品因此满足总时间 covector 守恒。发生完全 cancellation 的 singular subgraph 若非空，取其最大时间 vertex，该 vertex 的非零 incident Feynman covectors 同号，矛盾；内部互异同时间点之间没有 singular edge。

在 total diagonal 附近，反射项 smooth，奇异部分由通常的内部 Hadamard distributions 给出。使用保留对角方向 smooth parameter dependence 的 microlocal extension：局部以共同时间与 relative coordinates 表达，在 relative coordinates 中延拓，允许的 counterterms 为 smooth coefficients 乘 diagonal delta 的有限导数。故延拓后的 graph 仍满足

$$\begin{align}
\operatorname{WF}(t_{\mathcal G,R})
\subset\{(z_1,\zeta_1;\ldots;z_k,\zeta_k):
\sum_{a=1}^k\zeta_a(\partial_t)=0\}.
\end{align}$$

Partial diagonals 按 causal factorization 和较低阶 products 归纳。Smooth switching、finite derivatives 不增大 wavefront set；把各 field slots 置于其 vertex 并积分没有外腿的 vertices 时，时间 covectors 在保留的 slots 上仍求和为零。非零的全同向 causal tuple 的时间分量和不可能为零，因而输出 polynomial coefficients 满足 $\mathcal P_\mu$ 条件。所有外腿位于有限个 compact vertex supports。这也说明必须采用上述 smooth-parameter microlocal extension，而不是任意 distribution extension。

这给 compact interior polynomial insertions 的 Epstein–Glaser construction；它没有证明 boundary-supported vertices 的版本。采用同一局域 extension rule、相同有限常数及相同 contact-term conventions，才有后面的 comparison。标准局域延拓输入见 [Brunetti–Fredenhagen](https://arxiv.org/abs/math-ph/9903028) 和 [Hollands–Wald](https://arxiv.org/abs/gr-qc/0111108)；反射奇性、总时间 covector 条件及内部支撑是本节另外核查的静态模型输入。这里的 symmetry 首先指插入的置换对称性；一般 Noether/stress-tensor Ward identities 必须分别核查 anomaly 与 normalization，不能从 graph existence 自动推出。

## 3. 为什么必须保留 Off-Shell 数据

令 $\ell_f(\phi)=\langle f,\phi\rangle$，$f,h$ 均在内部紧支撑。自由 on-shell algebra 中 $\ell_{L_0f}=0$，但正常的 off-shell time ordering 给

$$\begin{align}
T_2(\ell_{L_0f},\ell_h)
&=\ell_{L_0f}\ell_h+\hbar\langle L_0f,W_Fh\rangle,\\
\left.T_2(\ell_{L_0f},\ell_h)\right|_{\mathrm{Sol}_0}
&=-i\hbar\int fh.
\end{align}$$

右侧一般非零。因此不存在同时保留这个 contact identity、multilinearity 和 integration-by-parts/Action Ward identity 的直接 quotient product

$$\begin{align}
T_2:\mathfrak Q_0\otimes\mathfrak Q_0\longrightarrow\mathfrak Q_0
\end{align}$$

使它仅依赖上述 on-shell equivalence classes。否则第一项输入为零，输出必须为零，矛盾。这是明确的 no-go。

它不否定通过额外 off-shell lifting prescription 定义 conventional on-shell time-ordered fields；它否定把 off-shell $T_R$ 无条件下降到这个商。参见 [Brouder–Dütsch](https://arxiv.org/html/0710.3040)。

故以下始终先计算 $T_R$ 和 quantum Møller maps，最后才施加自由 on-shell restriction。不能把经典 incoming chart $X$ 当作已经容纳所有 off-shell interaction vertices 的空间。

## 4. Quantum Møller Map 与实际 Quantum Class

定义 formal $S$-matrix 和带单个插入的 series

$$\begin{align}
S_R(V)&=\sum_{k\ge0}\frac1{k!}\left(\frac{i}{\hbar}\right)^k
T_{R,k}(V^{\otimes k}),\\
T_R(e^{iV/\hbar},F)
&=\sum_{k\ge0}\frac1{k!}\left(\frac{i}{\hbar}\right)^k
T_{R,k+1}(V^{\otimes k},F).
\end{align}$$

$S_R(V)$ 的 intermediate coefficients 可含 $\hbar^{-1}$。定义

$$\begin{align}
\boxed{
\mathcal R_V^q(F)
=S_R(V)^{-1}_{\star_0}\star_0 T_R(e^{iV/\hbar},F).
}
\end{align}$$

等价地，这是 $(\hbar/i)\partial_\epsilon[S_R(V)^{-1}\star S_R(V+\epsilon F)]_{\epsilon=0}$。与指定插入不连接的 components 在 inverse 中抵消；每个余下 component 连接到插入。含 $k$ 个 interaction vertices 的 connected graph 至少有 $k$ 条 contraction lines，因此其 $\hbar$ 次数非负，loops 再增加次数。每个固定 $\lambda$ 系数的 field degree、graph 数和导数阶数有限。故对 $\mathcal P_{\mathrm{loc}}$ 的插入，输出在 $\mathcal P_\mu[[\lambda,\hbar]]$。

令 $\sigma_0$ 表示自由 on-shell restriction，只在这一步使用。定义

$$\begin{align}
\boxed{
\mathfrak Q_{\mathrm{sew},V}^{\mathrm{int}}
=\operatorname{Alg}_{\star_0}^{*}
\left\{\sigma_0\mathcal R_V^q(F):
F\in\mathcal P_{\mathrm{loc}}\right\}.
}
\end{align}$$

这里精确定义为 ambient $\mathfrak Q_0[[\lambda]]$ 中所生成的 $\mathbb C[[\lambda,\hbar]]$-subalgebra 的 $(\lambda,\hbar)$-adic closure：每个有限阶截断来自有限 words，不对 spacetime coefficients 再取未经指定的 smooth/distribution closure。任意 polynomial local composite 和内部 spacetime-smeared energy/stress tensor 都可作为 $F$；形式 local counterterm labels 按同一阶数规则加入。其乘积闭合于 [Q0] 的 Wick class。

可另加入 [Q0, §6] 的 $H_{\mathrm{in}}$ 及其所需谱权重，得到含总 incoming free energy 的扩张。$H_{\mathrm{in}}$ 是早期自由窗中的实际总能量；在这里不把它送入尚未定义的 $T_R(H_{\mathrm{in}},\ldots)$。

没有使用 $(\mathcal R_V^q)^{-1}$ 在全部 $\mathcal P_\mu$ 或全部 equicausal functionals 上存在这一命题。一个 map 在 local labels 上等于 $1+O(\lambda)$，不足以证明它是某个未声明完整函数空间的 automorphism。上面的 image-generated algebra 已足够证明 exact isomorphism。

## 5. Regional Presentation、Release 与 Quantum Møller Compatibility

取 [Q0] 的 central polynomial mismatch algebra $\mathcal C$。先在 off shell 上使用

$$\begin{align}
\widetilde{\mathcal P}_\mu
&=\mathcal C\otimes_{\mathrm{alg}}\mathcal P_\mu,&
Q_0(c\otimes F)&=c(0)F,&
S_0(F)&=1\otimes F.
\end{align}$$

在插入标签上定义

$$\begin{align}
T_{R,k}^{Y}(c_1\otimes F_1,\ldots,c_k\otimes F_k)
&=(c_1\cdots c_k)\otimes T_{R,k}^{\mathrm{sew}}(F_1,\ldots,F_k),\\
V_Y&=1\otimes V.
\end{align}$$

这些公式是实际的 parameter extension，只处理有限 polynomial central parameters。它们不需要一个关于任意 history-uniform equicausal families 的未证明 extension theorem。

逐项得到

$$\begin{align}
Q_0(F\star_YG)&=Q_0F\star_0Q_0G,\\
Q_0T_{R,k}^{Y}(F_1,\ldots,F_k)
&=T_{R,k}^{\mathrm{sew}}(Q_0F_1,\ldots,Q_0F_k),\\
Q_0S_R^Y(V_Y)&=S_R^{\mathrm{sew}}(V).
\end{align}$$

将这些等式代入 Bogoliubov formula，得

$$\begin{align}
\boxed{Q_0\mathcal R_{V_Y}^{q}
=\mathcal R_V^q Q_0.}
\end{align}$$

此时两侧仍是 off-shell expressions。再施加 $\sigma_0$ 得物理 interacting release $Q_V$。Regional presentation algebra 是由 $\mathcal C\otimes1$ 及相应 $1\otimes\sigma_0\mathcal R_V^q(F)$ 生成的 unital algebra，并作同样的 coefficientwise completion；constant-parameter inclusion 给 section。因此

$$\begin{align}
Q_VS=1,\qquad
\ker Q_V=(\ker\varepsilon)\otimes_{\mathrm{alg}}
\mathfrak Q_{\mathrm{sew},V}^{\mathrm{int}}
\quad\text{coefficientwise},\\
\boxed{
\mathfrak Q_{Y,V}^{\mathrm{int}}/\ker Q_V
\cong\mathfrak Q_{\mathrm{sew},V}^{\mathrm{int}}.
}
\end{align}$$

任意 target generator 有显式 lift，任意有限 word 逐项 lift，formal series 逐系数 lift。这是 exact onto，不是 dense image。加入 $H_{\mathrm{in}}$ 时用 $1\otimes H_{\mathrm{in}}$，相同证明适用。

$Q_V$ 是这里定义的 quantum release。它不能在没有额外 intertwiner 证明时直接写成经典的 $\mathsf R_\lambda^*$；两者的相容性由 §7 的 classical limit 给出。

## 6. 独立 Global Interacting Algebra

从 uncut action 独立定义 $K_M,W_M,\mathcal P_{\mathrm{loc},M}$ 和 $V_M=-\lambda\int g_M\phi^n/n!$，采用与 §2 相同的局域 extension rule 和有限 normalization constants，构造 $T_R^M,\mathcal R_{V_M}^q$ 以及

$$\begin{align}
\mathfrak Q_{M,V_M}^{\mathrm{int}}
=\operatorname{Alg}_{\star_M}^{*}
\{\sigma_{0,M}\mathcal R_{V_M}^q(F_M):
F_M\in\mathcal P_{\mathrm{loc},M}\}.
\end{align}$$

这个定义不使用 regional restriction image。自由比较由 [Q0] 的 independent operator assembly theorem 给出。以下作用于 $T_R,S_R,\mathcal R_V^q$ 的 $\alpha_0$ 均指其先已定义的 off-shell lift $\alpha_{\mathrm{off}}$；作用于自由物理 algebra 的 $\alpha_0$ 是诱导的 on-shell map，二者满足

$$\begin{align}
\alpha_0\sigma_{0,s}=\sigma_{0,M}\alpha_{\mathrm{off}}.
\end{align}$$

因此这些式子不让 $T_R$ 作用于 on-shell equivalence classes。

Local density patching 给 $\alpha_0V=V_M$。在互异点，$\alpha_0W_F=W_{F,M}$ 逐 graph intertwine；在 diagonals，相同几何、相同 distribution-extension rule 和相同有限 constants 给相同 counterterms。对 vertex number 归纳，得到

$$\begin{align}
\alpha_0T_{R,k}^{\mathrm{sew}}(F_1,\ldots,F_k)
=T_{R,k}^M(\alpha_0F_1,\ldots,\alpha_0F_k).
\end{align}$$

这是需要验证的 renormalization coherence。它不从经典辛同构单独推出；本构造通过预先声明同一局域规则实现它。

因此

$$\begin{align}
\boxed{\alpha_0\mathcal R_V^q
=\mathcal R_{V_M}^q\alpha_0.}
\end{align}$$

自由 on-shell ideals 同样 intertwine，所以 $\alpha_0$ 将每个 interacting generator 送到独立 global generator。其 inverse 对每个 global insertion 作 smooth restriction；两侧 polynomial degrees、support conditions 和 renormalization choices 相同。故

$$\begin{align}
\boxed{
\mathfrak Q_{Y,V}^{\mathrm{int}}/\ker Q_V
\cong\mathfrak Q_{\mathrm{sew},V}^{\mathrm{int}}
\xrightarrow[\alpha_V=\alpha_0|]{\cong}
\mathfrak Q_{M,V_M}^{\mathrm{int}}.
}
\end{align}$$

这里 $\alpha_V$ 是已构造的 free-reference $*$-isomorphism 在 image-generated algebras 上的限制，不使用未证明的 quantum Møller inverse。对以局域 insertion labels 的支撑定义的 interacting nets，同一生成元的双向对应给 exact local-net comparison。

## 7. Classical Limit 与交换性

先核对相互作用符号。对线性 $F=\ell_f$，

$$\begin{align}
\mathcal R_V^q(F)
&=F+\frac{i}{\hbar}\bigl(T_2(V,F)-V\star_0F\bigr)+O(\lambda^2),\\
\frac{i}{\hbar}\bigl(T_2(V,\ell_f)-V\star_0\ell_f\bigr)
&=\langle f,G_0^R V^{(1)}\rangle\\
&=-\frac{\lambda}{(n-1)!}\langle f,G_0^R(g\phi^{n-1})\rangle.
\end{align}$$

它与经典 retarded correction 一致。任意阶的 $\hbar^0$ rooted trees 对应局域非线性的有限乘积递归；零过去条件固定唯一解。因此

$$\begin{align}
\left.\sigma_0\mathcal R_{V_\lambda}^q(F)\right|_{\hbar=0}
&=F(\Phi_\lambda),\\
\Phi_\lambda
&=\psi-\frac{\lambda}{(n-1)!}G_0^R(g\Phi_\lambda^{n-1}).
\end{align}$$

对 composite insertion，tree expansion 给同一个 classical substitution。首阶 commutator 则由 classical Møller derivative 给

$$\begin{align}
\mathcal V_\lambda
&=\frac{\lambda g}{(n-2)!}\Phi_\lambda^{n-2},\\
(1-G_\lambda^R\mathcal V_\lambda)
E_0(1-\mathcal V_\lambda G_\lambda^A)
&=E_\lambda.
\end{align}$$

故 physical fields 的 classical bracket 是现有模型中的 interacting Peierls bracket，而不是旧 isolated bracket。

此处严格成立的交换图是 off-shell quantum construction 与 release、independent assembly 的相容性：

$$\begin{align}
\boxed{
Q_0\mathcal R_{V_Y}^q=\mathcal R_V^qQ_0,\qquad
\alpha_0\mathcal R_V^q=\mathcal R_{V_M}^q\alpha_0.
}
\end{align}$$

生成元的 tree symbols 不等于整个代数已经有忠实 classical specialization。若记上述 image algebra 为 $\mathcal A_q\subset\mathcal B_q=\mathfrak Q_0[[\lambda]]$，则指定经典目标 $\mathcal A_{\mathrm{cl}}$ 还须满足

$$\begin{align}
\mathcal A_q\cap\hbar\mathcal B_q=\hbar\mathcal A_q,\qquad
\sigma_\hbar(\mathcal A_q)=\mathcal A_{\mathrm{cl}}.
\end{align}$$

一个始终有定义的扩张是：在该 torsion-free ambient 中取包含全部指定 generators 的最小 adically closed、$\hbar$-saturated unital $\star$-subalgebra $\mathcal A_q^{\mathrm{sat}}$，并令 $\mathcal A_{\mathrm{cl}}^{\mathrm{sat}}=\sigma_\hbar(\mathcal A_q^{\mathrm{sat}})$。它存在，因为满足条件的子代数族非空，且交保持这两项性质。Saturation 使 ambient 中的 $[F,G]_\star/(i\hbar)$ 仍在子代数中，并给

$$\begin{align}
\mathcal A_q^{\mathrm{sat}}/\hbar\mathcal A_q^{\mathrm{sat}}
\cong\mathcal A_{\mathrm{cl}}^{\mathrm{sat}}.
\end{align}$$

所以实际 symbol image 是 Poisson algebra，至少包含所有 tree insertion symbols。Ambient assembly isomorphism 双向保持 generators、topology 和 saturation，故该扩张同样 sewn/global 同构。若需要 central presentation，在扩张后重新取相同逐阶 $\mathcal C$-parameter extension，evaluation 与 constant section 仍给 exact quotient。这不把 actual symbol image 未经证明地认作全部 $\mathcal H$ 或原先最小 insertion algebra。

证明见 §§5、6：free Wick sewing 使 contractions 一致，coherent $T_R$ 使每个 renormalized graph 一致，Bogoliubov formula 随后交换，最后的 on-shell restriction 也一致。故对本文已经指定 transparent response 的 regional presentation，先作 quantum Møller construction 再 release，与先 release 插入标签再作该 construction，得到相同 observable；随后与 independently quantized global algebra exact 同构。$\hbar^0$ generators 恢复经典 $\mathsf R_\lambda$ 的 released fields。

这给增强 presentation 上的明确交换性。它还不是从两个各自独立完成重整化的 interacting regional algebras $\mathfrak Q_i^{\mathrm{int}}[q_i]$ 出发的交换定理：当 interaction 接触人工边界时，本稿没有构造那些 algebras 的全部 boundary insertions，也没有给出把其旧 contractions 换成 transparent contractions 的 interacting comparison map。因此不能把上面的等式扩写成这一更强的先分别量子化、再粘合的结论。只保留旧乘积的普通 tensor quotient 已被 [Q0, §7] 的 commutator no-go 排除；更充分的 response-enriched interacting construction 仍需额外证明。

有限多 cells 的全部中间 external ports 和同一 renormalization rule 都保留时，同一个 transmission solution 与同一 graph extension rule 给物理 quotient 上的有限结合性。这个论证不声称任意 off-matching extensions 逐点相等。

## 8. Renormalization 不相容的 No-go

**仅由独立有效的 regional schemes 不能推出逐场相容的 sewing。** 例如 quartic Wick insertion 允许的局域有限 normalization 可在两侧分别改变一个 $\hbar c_i\phi_i^2$ 项。若 $g|_\Gamma\ne0$ 且 $c_1\ne c_2$，则两侧的 coefficient $\hbar c_i g_i$ 在 cut 不连续，不能等于一个 smooth global local counterterm。因而“只保留各自方案，不作匹配修正，仍保持同一场标签和同一 interaction”的 strict comparison 不成立。

这个反例只需一组被所声明 renormalization axioms 允许的不同 Wick normalizations；若 $T_1$ 和 Wick powers 已固定，则应在该方案实际允许的高阶 finite-renormalization freedom 内比较，不能任意添加一个被 normalization 禁止的 counterterm。此 no-go 不否定通过相容的有限重整化和 observable redefinitions 比较不同方案。

**经典 $\Psi_\lambda$ 不能代替 quantum Møller map。** 一般有 $\mathcal R_V^q=r_V^*+O(\hbar)$；loops 和 local counterterms 是额外数据。仅用 $\Psi_\lambda$ 共轭一个 free $\star$ 可以得到某个 transported associative product，但没有因此识别它为这里 independently renormalized interacting theory。

## 9. Observable 与证明边界

| 对象或命题 | 本文结论 |
|---|---|
| Polynomial Wick $\star_0$ closure | 成立，固定分布核及全部有限 Wick contractions |
| 内部 local composite fields、spacetime-smeared stress/energy | 可作 renormalized insertions，进入 image-generated algebra |
| 总 incoming free energy | 可按 [Q0, §6] 另行加入，同构保持 |
| 任意时刻的完整总 interacting energy | 还需指定 stress-tensor Ward normalization 与真正物理边界的积分域；不能由内部 smearings 自动推出 |
| 有限 regular central history/mismatch parameters | §§2、5 的明确类中成立 |
| 整个旧 history-uniform equicausal 类被 $\Psi_\lambda^{\pm *}$ 保持 | 未证明；本文不使用此命题 |
| Quantum Møller 与 release/global comparison | 在声明的 off-shell domain 与 coherent scheme 上严格成立 |
| 先独立量子化各 interacting region，再粘合 | 未证明；不能由已经使用 transparent response 的 presentation 推出 |
| 强耦合实际 quantum theory、形式级数收敛 | 未证明；经典强耦合能量界不证明这些命题 |

**Verified:** 以上 off-shell/contact-term 修补、Møller 符号、polynomial insertion construction、两个 intertwining identities、exact quotient 和独立 global isomorphism；Mathematica 检查 Feynman 接触项符号、有序 Green identity 和 $\phi^n$ normalization。一般 graph/分布延拓论证在正文，不是符号程序的结论。

**Assumptions:** [Q0] 的静态 scalar interval、固定有限 $n$、compact-time smooth switching、外端附近 $g=0$、cut 全 jets matching、early free strip；局域 polynomial insertions 的支撑避开真正物理边界；共同 Wick、Epstein–Glaser extension 和 finite-normalization choices，以及同一个 classical tree normalization。

**Not verified:** 六项旧量子声明对整个原始 equicausal/history 类同时成立、任意 sharp boundary operators、任意 scheme 的逐场相容性、full smooth-Hamiltonian quantization、非微扰 quantum existence、无限切分或 state/representation sewing。
