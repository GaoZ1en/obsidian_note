# 08c　四维 Kerr–AdS：哪个时间平移给出质量？[31]

以纯 AdS 为零点，标准非旋转边界圆柱上的能量及物理角动量是 $E=m/(G\Xi^2)$、$J=ma/(G\Xi^2)$，$\Xi=1-a^2/L^2$。它们不是 Boyer–Lindquist 坐标时间的荷和轴向量的荷原样配成的一对：要固定**同一个**无穷远标架，并区分 $J$ 与 $H_{\partial_\phi}=-J$。

**边值问题。** 四维真空 Einstein，$\Lambda=-3/L^2$，$|a|<L$，$\phi\sim\phi+2\pi$；固定非旋转 Einstein 静态宇宙边界代表，允许 $m,a$ 变。用 Einstein–Hilbert 加 Gibbons–Hawking 和 Dirichlet 反项（外向 $K$，侧面被积式为 $\sqrt{-\gamma}[K-2/L-L\mathcal R[\gamma]/2]/(8\pi G)$）。按[本地 CPS 约定](<../../../Articles/Quantization in AdS/perturbation/formalism.md>)，在同一外切口算改进的表面荷；不把引力当作物质应力体积分。Boyer–Lindquist 取 $\Delta_r=(r^2+a^2)(1+r^2/L^2)-2mr$ 及 $dt-a\sin^2\theta\,d\phi/\Xi$ 的符号。$-g_{t\phi}/g_{\phi\phi}\to-a/L^2$，非旋转角坐标 $\Phi=\phi+at/L^2$，故

$$K=\left.\partial_t\right|_{\Phi}=\left.\partial_t\right|_{\phi}-aL^{-2}\partial_\phi,\qquad E=H_K,\qquad J=-H_{\partial_\Phi}.$$

**复算一个表面积分。** [31，Henneaux–Teitelboim，出版版 PDF 9／期刊 399，(III.9a–e)](https://www.fis.uc.cl/~mbanados/Cursos/TopicosRelatividadAvanzada/HenneauxTeitelboim.pdf#page=9) 用已与标准背景对齐的渐近球坐标。其动量密度为 $\pi^{r\phi}\sim-3am\sin\theta/[r^2(1-k\sin^2\theta)^{5/2}]$，$k=a^2/L^2$。在轴向生成元的表面项 $2\int \pi^r{}_{\phi}\,d\theta d\phi/(16\pi G)$ 中，$g_{\phi\phi}\sim r^2\sin^2\theta$，故

$$H_{\partial_\Phi}=-\frac{3am}{4G}\int_0^\pi\frac{\sin^3\theta\,d\theta}{(1-k\sin^2\theta)^{5/2}}=-\frac{am}{G\Xi^2}.$$

代换 $u=\cos\theta/\sqrt{1-k\sin^2\theta}$ 后积分为 $\Xi^{-2}\int_{-1}^1(1-u^2)du$。同页 $J_{51}=16\pi mL/\Xi^2$ 给 $E=J_{51}/(16\pi G L)$，$J_{23}/(16\pi G)=-J$；这里的 $m$ 是出现在 $\Delta_r$ 的**长度**参数。

**第一定律区分两种时间。** 设 $r_+$ 为非极端外根，代 $m=(r_+^2+a^2)(1+r_+^2/L^2)/(2r_+)$。取

$$S=\frac{\pi(r_+^2+a^2)}{G\Xi},\quad T=\frac{\Delta'_r(r_+)}{4\pi(r_+^2+a^2)},\quad \Omega=\frac{a(1+r_+^2/L^2)}{r_+^2+a^2}.$$

固定 $G,L$，$dr_+,da$ 的两个系数都满足 $dE-TdS-\Omega dJ=0$。反之每个解上 $E_{\rm rot}=H_{\partial_t|_\phi}=E-aJ/L^2$，$\Omega_{\rm rot}=\Omega-a/L^2$；沿解族作普通全微分得到 $dE_{\rm rot}-TdS-\Omega_{\rm rot}dJ=-J\,da/L^2$。这是换解时连标架也改变的代价，不是第一定律失效。作 CPS 变分时固定边界向量；若用场依赖的坐标表达式须扣除参数变分。参见 [Gibbons–Perry–Pope v3，PDF 8–9／正文 7–8，(2.1)–(2.14)](https://arxiv.org/pdf/hep-th/0408217v3#page=8)。

**Verified:** Wolfram 核对边界角速度、积分换元及两套标架的微分残差。**Assumptions:** 标准 Dirichlet 衰减，固定非旋转时间单位与角周期。**Not verified:** 未重推 [31] 全部十个生成元的括号，也未讨论旋转黑洞的动态稳定性。