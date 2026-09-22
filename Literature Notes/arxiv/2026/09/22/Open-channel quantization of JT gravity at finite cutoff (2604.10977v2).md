---
paper id: 2604.10977v2
title: "Open-channel quantization of JT gravity at finite cutoff"
authors:
  - "Zhou, Ye"
publication date: 2026-04-13
abstract: |-
  Direct canonical quantization of Jackiw--Teitelboim gravity at finite cutoff leads to a critically singular P\"oschl--Teller problem whose endpoint admits inequivalent self-adjoint domains. We solve the full one-parameter family, obtain its exact spectral data, and identify the extension parameter with a renormalized short-distance matching datum in geodesic-length space. Self-adjointness, positivity, and unitary Brown--York evolution leave a stable family, whereas a source-free local completion without an endpoint contact term selects the Friedrichs realization. With the Brown--York clock and a local cap prescription fixed, the disk amplitude distinguishes the domains. In the large-boundary limit the bulk operator becomes universally Liouville, while a cap tied to the receding endpoint can retain domain dependence. Analytic continuation also maps radial resonances to poles of the Brown--York resolvent. These results isolate the short-distance datum that distinguishes the reduced canonical realizations and that a microscopic completion would have to determine.
comments: "22 pages"
url: https://arxiv.org/abs/2604.10977v2
summary: "Self-adjoint endpoint domains, fixed local caps and Brown–York clocks separate canonical consistency from microscopic domain selection; operator and spectral checks completed."
tags: []
---

# Open-channel quantization of JT gravity at finite cutoff

## 结果与研究入口

**Source-derived:** 固定有限 Dirichlet wall、Brown–York 时钟、表示论 ordering 后，JT 的长度量子力学仍有一族自伴端点域。正性、幺正演化和区间 composition 只限制到 stable family；额外的无端点 contact/source 条件才选 Friedrichs。微观 metric/BF/random-disk 构造是否产生这个条件，本文明确留作待建立的字典。

这比“给出一个新的 JT 配分函数”更贴近当前问题：**微分表达式、定义域、边界态是三份不同数据**。固定时钟与 coefficient-local cap 后，完整 disk amplitude 能区分定义域；允许任意能量依赖 cap 后则不能。局部 bulk 的强 resolvent 极限也不决定跟随退去端点的态极限。

全文 22 页，正文 I–VI 与参考文献已读；没有附录。I 提问题；II 从作用量进入约化 Casimir、端点与 Weyl function；III 给 cutoff matching 和 cap；IV 区分稳定性与物理选域；V 分开 bulk limit、moving cap、resonance；VI 指向 microscopic transfer kernel。以下依原顺序重构，独立计算见最后。

## II：从有限壁作用量到临界端点

取 $8\pi G_N=\ell_{AdS}=\hbar=1$，省略 Euler topological term，

$$S={1\over2}\int_M\sqrt{-g}\,\Phi(R+2)+\int_{\partial M}\sqrt{|\gamma|}\,\Phi(K-1).$$

静态外区 $\Phi=r$，$ds^2=-(r^2-k^2)dt^2+dr^2/(r^2-k^2)$，壁处 dilaton $\nu>k>0$，$E=\nu-\sqrt{\nu^2-k^2}$。本文采用已有约化结果

$$k^2=P^2+\nu^2\operatorname{sech}^2(L/2),\qquad dL\wedge dP=d\tau\wedge dE.$$

这里 $L$ 是连接双边界的 geodesic length，$P$ 是共轭动量；外区约束 $|P|\leq\nu\tanh(L/2)$。端点 $L=0$ 到达 $P=0,k=\nu$ 的相空间边缘。此经典约化及 ordering 的引力起源是 Source-derived，未在本次重做约束约化。

在 $SL(2,\mathbb R)$ radial Casimir 中固定左右荷，再用 $U=\sqrt{\sinh L}$ 把 radial measure 变成平坦测度，得到

$$A_\nu=-\partial_L^2+\nu^2\operatorname{sech}^2(L/2)-{1\over4\sinh^2L},\qquad\mathcal H=L^2(\mathbb R_+,dL).$$

**Checked:** 将原文 (II.5) 的径向二阶算子作用于 $F/U$ 并共轭，Mathematica 化简到上式，残差 0。小 $L$ 势为 $-1/(4L^2)+\nu^2+1/12+O(L^2)$，恰处 repeated indicial root $1/2$，两个局部解都平方可积。

设 $s=\sqrt{L/2}$，$\phi_z\sim s$、$\theta_z\sim-2s\log(L/2)$，Wronskian $W(\theta_z,\phi_z)=1$。最大域函数写成

$$u=s\,[a(u)-2b(u)\log(L/2)]+o(\sqrt L).$$

内积第一槽反线性，Green boundary pairing 是 $\bar b(u)a(v)-\bar a(u)b(v)$。因此端点 self-adjoint relation 为 $a=hb$、$h\in\mathbb R$，加上 Friedrichs 的 $b=0$；无穷远为 limit point，无第二个独立域参数。检查 leading Frobenius pair 的 Wronskian 为 1，但完整 maximal-domain 分类仍依赖 Sturm–Liouville 定理。

## 精确出射解、谱密度与稳定边界

令 $t=\tanh^2(L/2)$，$a_k=\tfrac12-ik+i\nu$，$b_k=\tfrac12-ik-i\nu$，$c_k=1-2ik=a_k+b_k$。出射解

$$f_k=4^{ik}t^{1/4}(1-t)^{-ik}{}_2F_1(a_k,b_k;c_k;1-t)\sim e^{ikL}.$$

zero-balanced connection formula 给 $f_k=Q_\nu(k)(\theta_{k^2}+M_\nu(k)\phi_{k^2})$，

$$Q_\nu={4^{ik}\Gamma(1-2ik)\over\Gamma(a_k)\Gamma(b_k)},\qquad M_\nu=-2\gamma_E-\psi(a_k)-\psi(b_k).$$

$z=k^2,\operatorname{Im}k>0$ 上 $m_\nu(z)=M_\nu(k)$ 是所选 boundary maps $\Gamma_0=b,\Gamma_1=a$ 的 Weyl function。Green identity 给 $\operatorname{Im}m/\operatorname{Im}z=\|\theta_z+m\phi_z\|^2>0$。

$$B_\nu(k)=\operatorname{Im}M_\nu(k)={\pi\sinh2\pi k\over\cosh2\pi k+\cosh2\pi\nu},$$
$$\rho_F(k)={2k\over\pi}B_\nu(k),\qquad \rho_h(k)={\rho_F(k)\over|h-M_\nu(k)|^2}.$$

有限 $h$ 的 eigenfunction normalization 是 $u_{h,k^2}=\theta_{k^2}+h\phi_{k^2}$；比较谱密度时必须连同 cap normalization 保留，不能只比较两个不同归一化的密度。

阈值为 $h_c(\nu)=-2\gamma_E-2\operatorname{Re}\psi(\tfrac12+i\nu)$。在负实轴 $m'>0$ 且向 $-\infty$ 的极限是 $-\infty$，故 $h<h_c$ 恰有一个负本征值；$h=h_c$ 是非 $L^2$ 的零能 resonance；$h\geq h_c$ 和 Friedrichs 均非负。这个 stable family 不是唯一域。

外区 Hamiltonian 必须限制谱带：

$$\mathcal H_{ext}=\mathbf1_{[0,\nu^2]}(A_{\nu,h})\mathcal H,\qquad H^-_{\nu,h}=\nu-\sqrt{\nu^2-A_{\nu,h}},\quad0\leq H^-\leq\nu.$$

不能把外区实 square root 直接作用于全部无界 $A$ 谱。

## III：短距 matching 与固定 cap 的可辨识性

撤销 flat-measure conjugation，$w=\tfrac12\sinh L,u=\sqrt w,v$，

$$T=-w^{-1}\partial_L(w\partial_L)+V_\nu,\quad V_\nu=\nu^2\operatorname{sech}^2(L/2)-\tfrac14.$$

有限域给 $v=b[h-2\log(L/2)]+o(1)$、$wv'\to-b$。在 $L=\epsilon$ 施加 $w(\epsilon)v'(\epsilon)=c_\epsilon v(\epsilon)$，则

$$c_\epsilon=-{1\over h-2\log(\epsilon/2)}+o(\log^{-2}\epsilon),\quad h=\lim_{\epsilon\to0}\left[2\log{\epsilon\over2}-{1\over c_\epsilon}\right].$$

只保留 $c_\epsilon\to0$ 丢失了有限 matching datum。若 $X=h-2\log(\epsilon/2)$、$c_\epsilon=-X^{-1}+r_\epsilon$，有 $h_{eff}-h=X^2r_\epsilon/(1-Xr_\epsilon)$；$O(X^{-2})$ 的小修正能留下有限域差。Mathematica 检查此代数恒等式为 0。

为实现稳定域，取正的零能解 $p_h=u_{h,0}/\sqrt w$，用 $c_\epsilon=wp'_h/p_h$，则

$$q_{\epsilon,h}[v]=\int_\epsilon^\infty w(|v'|^2+V_\nu|v|^2)+c_\epsilon|v(\epsilon)|^2=\int_\epsilon^\infty wp_h^2\left|\left({v\over p_h}\right)'\right|^2\geq0.$$

**Checked:** 由 $V=(wp')'/(wp)$ 推导 integrand 差为 $\partial_L(wp'v^2/p)$，与上述下端边界项相消。正零能解存在性及 cutoff Green kernels 到 strong resolvent 的提升仍 Source-derived。

普通 $u(0)$ 对两个 Frobenius 分支都为零，不能作 cap。取 coefficient-local trace $B_hu=b(u)$，$B_Fu=a(u)$。有限域上任意 $\alpha\Gamma_0+\beta\Gamma_1$ 都归为常数倍 $b$；故独立固定该局部 cap 后只剩能量无关 $C_h$。

$$Z_h(\beta)=|C_h|^2\int_0^\nu\rho_h(k)e^{-\beta[\nu-\sqrt{\nu^2-k^2}]}dk.$$

谱态 $\Psi_{h,t}(k)=C_he^{-tE_\nu(k)}$ 给正性及 $\langle\Psi_{t_1},\Psi_{t_2}\rangle=Z(t_1+t_2)$。固定时钟、局部 cap、全部 $\beta>0$ 的 exact disk data 后，Laplace 唯一性使两个谱测度成比例；解析延拓到 $k>0$、高能比值及 $\operatorname{Re}M(k)$ 非常数迫使 $h_1=h_2$。有限 $h$ 与 Friedrichs 也不可成比例。

若改允许任意 spectral cap，$c_h(k)=\sqrt{\rho_{target}/\rho_h}$ 可吸收密度差（还须态可容许）。因此 disk marginal 单独不选域；这是给微观字典设置的实质性边界。

## IV：为什么 no-contact 比幺正性更强

保持长度 observable 的全部 bounded multiplication operators 时，intertwining unitary 必须是相位乘法 $\chi(L)$；对紧支撑测试函数比较微分式得 $-2\chi'u'-\chi''u=0$，所以相位常数，域相同才可等价。不同 $h$ 定义的是不同 $(A,L)$ 对，而非换基。

$\int_\epsilon^{L_0}w|v'|^2=2|b|^2\log(1/\epsilon)+O(1)$。若关闭**未加 endpoint contact counterterm 的局部 form**，就必须 $b=0$。在 weak equation 中同一 $b$ 是 $b\bar\chi(0)$ 的 endpoint source；无源也选 $b=0$。相比之下，所有实 $h$ 都使概率流 $-2\operatorname{Im}(\bar a b)=0$，因此零流/自伴不够选 Friedrichs。

作者没有宣称此额外原则已从引力推导：固定 Dirichlet wall 的 intrinsic local counterterm 可平移能量或常数 normalization，但不能改变固定算子的 logarithmic relation；加入角点、extrinsic term、不同 ensemble 是改变变分数据。光滑经典 cap 也不等于量子 form-domain 结论。

BF reduction 同样不能只凭 unreduced smoothness 排除 logarithm。非紧 boost 轨道 $Q=L\cosh\eta,T=L\sinh\eta$ 的积分

$$I_\chi(L)=\int_\mathbb R d\eta\,\chi(L^2\cosh2\eta)=\int_{L^2}^\infty{\chi(s)ds\over\sqrt{s^2-L^4}}=-2\log L+C_\chi+O(L^4)$$

表明光滑 compact group function 经非紧约化能产生 logarithmic radial 行为。random-disk 路线需要保留 marked cuts 的 intrinsic distance 与 additive clock 的 transfer kernel，然后量出 $c_\epsilon$；已经 marginalize 的 disk 数据缺少这份信息。

## V：Liouville bulk 极限不控制 moving cap

平移 $x=L-\ell_\nu,\ell_\nu=2\log(2\nu)$，局部势在紧 $x$ 集上趋于 $e^{-x}$，端点移到 $x=-\ell_\nu\to-\infty$。因此 translated resolvent 强收敛到 $T_\infty=-\partial_x^2+e^{-x}$；作者用 essentially self-adjoint common core 和 resolvent 界论证其不依赖 $h_\nu$ 轨迹。稳定轨迹的 exterior Brown–York semigroup 在固定向量上趋于 $e^{-tT_\infty/2}$，因为 $\nu(\nu-\sqrt{\nu^2-\lambda})\to\lambda/2$。

然而 cap 随端点移动。用

$$m_\nu(z)-h_c(\nu)={z\over\nu^2}+{z^2/2+z/4\over\nu^4}+O(\nu^{-6}),\qquad h_\nu=h_c(\nu)+{c\over\nu^2},\ c\geq0,$$

得 $\nu^{-2}/(h_\nu-m_\nu(z))\to1/(c-z)$。作者先对谱测度加 $(1+\lambda)^{-1}$ 权以控制无穷远质量，再得 unit coefficient cap 的

$$\nu^{-2}Z_{h_\nu}(\nu t)\longrightarrow e^{-tc/2},\qquad t>0.$$

这不是固定 Hilbert 向量上的 strong convergence 的反例：cap 跟随端点且另作尺度归一化。局部 bulk universality 与边界态记忆可以同时成立。

## Brown–York resolvent 与长寿命 resonance

在 exterior spectral band 上设 $\widetilde H=2\nu-H$、$g(\omega)=2\nu\omega-\omega^2$。因 $(H-\omega)(\widetilde H-\omega)=A-g(\omega)$，

$$R_H(\omega)+R_{\widetilde H}(\omega)=g'(\omega)P R_A(g(\omega))P.$$

**Checked:** scalar spectral variable 下 Mathematica exact residual 0。若出射局部 resolvent 的 simple pole $z_r=k_r^2$ 避开阈值与 anomalous Jost points，且 companion branch/补谱带在那里解析，则 $\omega_r=\nu-\sqrt{\nu^2-k_r^2}$ 是 Brown–York continuation pole；$g'$ 抵消变量变换 Jacobian，残数不再多一个因子。这里的 continuation 与 holomorphy 条件不可从代数恒等式删去。

固定 $h_\nu=h_c+\delta,\delta>0$，$\alpha=\sqrt{1-e^{-\delta}}$、$c_\alpha=\sqrt{1-\alpha^2}$，作者求得

$$\operatorname{Re}k_r=\alpha\nu+O(\nu^{-1}),\quad-\operatorname{Im}k_r={\pi\nu c_\alpha^2\over2\alpha}e^{-2\pi\nu(1-\alpha)}[1+O(\nu^{-1})],$$
$$\Gamma=-2\operatorname{Im}\omega_r=\pi\nu c_\alpha e^{-2\pi\nu(1-\alpha)}[1+O(\nu^{-1})].$$

leading WKB barrier action $S=\nu\int_0^{2\operatorname{arcosh}(1/\alpha)}\sqrt{\operatorname{sech}^2(L/2)-\alpha^2}\,dL=\pi\nu(1-\alpha)$ 验证指数来源。critical endpoint boundary layer 仍控制 matching/prefactor，不能用外层 WKB 单独证明它们。

## Verified / Assumptions / Not verified

**Checked:** Mathematica 径向共轭 residual 0；leading Wronskian 1；cutoff 有限修正恒等式 0；ground-state form integrand identity 0；谱 resolvent identity 0；translated potential 极限 $e^{-x}$。出射 hypergeometric ODE 在 $\nu=1,k=3/5,L=1/3,1,3$ 的 35 位计算与零一致；digamma imaginary identity 在 $\nu=1/2,2$、$k=1/5,3/2$ 的四点与零一致；WKB 在 $\alpha=1/5,1/2,4/5$ 的 30 位数值残差与零一致。数值消去触发 Mathematica `N::meprec`，故这里只记有限精度一致，不把零有效位输出当成解析恒等式证明。首次 matching 检查把 $2\log(\epsilon/2)$ 误输成 $X$，修正测试表达式后 residual 0；不是原文失败。

**Source-derived:** exact connection formula、self-adjoint 全域分类、谱测度完备性、strong-resolvent/measure convergence、resonance asymptotics 与微观重力解释。PDF p.6 已渲染核对 $M,\rho,h_c$ 的号与归一化，其他正文和 TeX 逐节读取。没有声称逐页视觉检查。

Assumptions: 固定 ordering、长度 observable、外区谱投影、Brown–York 时钟、能量无关 coefficient-local cap；stable 指 $h\geq h_c$ 或 Friedrichs；resonance 远离阈值；WKB $\alpha$ 在 $(0,1)$ 内紧集。

Not independently verified: 完整引力约化、off-shell metric measure、BF global domain、marked-cut transfer dictionary、全部复平面 pole 分类及残数的解析条件。本次没有发现所检查的核心公式矛盾；数值例子不证明完整谱/渐近定理。

Blocked: 官方 [v2 摘要](https://arxiv.org/abs/2604.10977v2)、[PDF](https://arxiv.org/pdf/2604.10977v2)、[source](https://arxiv.org/src/2604.10977v2) 均成功。文本转换报告 font-type mismatch，但正文可读且关键页视觉确认；无检索阻塞。微观选域字典是论文未给出的研究输入，不是本次工具故障。
