# 同一个 global AdS₄ Dirac 方程，两个时间平移谱

**更换固定的径向投影会改变能隙，而不是把粒子换成反粒子。** 在 $0<mL<1/2$，标准、替代两种无源边界条件分别给出最低单粒子能量 $(3/2+mL)/L$、$(3/2-mL)/L$；每个理论内部都有反粒子，反粒子的能量与粒子相同。下面用一个中心正则、能直接归一化的模区分这两件事。

## 极化是作用量的一部分

体时空 $D=4$，边界 $d=3$。以下 $L=1$，$t$ 是无量纲全局时间，质量符号 $m$ 指 $m_{\rm phys}L$。在普适覆盖的 $ds^2=-fdt^2+dr^2/f+r^2d\Omega_2^2$、$f=1+r^2$ 上，vierbein 与无挠自旋联络固定，只有复 Grassmann-奇 Dirac 场动力学。取 $\{\gamma^{\hat a},\gamma^{\hat b}\}=2\eta^{ab}$、$\eta=(-+++)$；为使正时间动能为 $+i\psi^\dagger\dot\psi$（模全导数），本篇取 $\bar\psi=-\psi^\dagger\gamma^{\hat0}$。此共轭比[本地标架约定](<../../../Articles/Quantization in AdS/fermion/01-geometry-spinor-conventions.md>)多一个负号；径向投影及模方程不变。先独立变分 $\psi,\bar\psi$，再取实截面。

在 $r\le R$ 的时空薄片上取
$$
 S_s=\frac i2\int_{M_R}\!\sqrt{-g}\,[\bar\psi\gamma^\mu\nabla_\mu\psi-(\nabla_\mu\bar\psi)\gamma^\mu\psi-2m\bar\psi\psi]
 +\frac{si}{2}\int_{\Gamma_R}\!\sqrt{-\gamma}\,\bar\psi\psi,\qquad s=\pm1 .
$$
取外向 $P_\pm=(1\pm\gamma^{\hat r})/2$。径向方程的指标部分为 $[\gamma^{\hat r}(r\partial_r+3/2)-m]\psi=0$，故慢支 $r^{-\Delta_-}\alpha$ 属 $P_+$，快支 $r^{-\Delta_+}\beta$ 属 $P_-$，$\Delta_\pm=3/2\pm m$。共轭的投影相反。离壳固定一支及其共轭，而不预先施加中心正则解所给的响应。

体项的径向变分为 $i(\bar\psi\gamma^{\hat r}\delta\psi-\delta\bar\psi\gamma^{\hat r}\psi)/2$ 乘诱导测度。加上 $s$ 项，取极限，得到以下边界一形式（省略 $\int_{\Gamma}\sqrt{-g_{(0)}}$）：

| $s$ | 侧面变分 | 无源条件 |
|---|---|---|
| $+1$ | $i(\bar\beta\delta\alpha+\delta\bar\alpha\,\beta)$ | $\alpha=0$，固定慢支 |
| $-1$ | $-i(\bar\alpha\delta\beta+\delta\bar\beta\,\alpha)$ | $\beta=0$，固定快支 |

每一行在其允许变分上为零；再作分次外微分便得零拉回辛流。两支同时设零会删掉所需的响应。侧面项不含切向导数，所以无场变分角势；这**不**意味着它从截断时间生成元消失。

## 从时间生成元抽出一个物理模

对保持固定数据的 Killing 场取 $X_\xi\psi=\xi^\mu\nabla_\mu\psi+\tfrac14\nabla_\mu\xi_\nu\gamma^{\mu\nu}\psi$，$\gamma^{\mu\nu}=\gamma^{[\mu}\gamma^{\nu]}$；这是微分同胚与恢复标架的 Lorentz 旋转之和。在静态标架中 $X_{\partial_t}\psi=\partial_t\psi$。按[端点定义](<../../../Articles/Quantization in AdS/perturbation/formalism.md>)取 $H_\xi=\theta(X_\xi)-\alpha_\xi$、$\delta H_\xi=\omega(\delta,X_\xi)$，这里 $\omega$ 是偶的分次辛形式。具体地，$\xi=\partial_t$ 时对截断作用量作时间 Legendre 变换：体密度在壳为零，而壁拉氏量要从 $H$ 减去，故
$$
 H_{\partial_t,R}\simeq \frac i2\int_{\Sigma_R}\!\sqrt\sigma\,\psi^\dagger\overleftrightarrow{\partial_t}\psi
 -\frac{si}{2}\int_{S_R^2}\!\sqrt h\,\sqrt f\,\bar\psi\psi .
$$
$\simeq$ 表示用了体方程；$u\overleftrightarrow{\partial_t}v=u\dot v-\dot u v$。纯无源时主导的同投影双线性为零，次领项使壁积分至多分别为 $O(R^{-1-2m})$、$O(R^{-1+2m})$。因此一个 $e^{-iEt}$、$\int\sqrt\sigma\,u^\dagger u=1$ 的正频外腿贡献 $E$。若以标架变分改写为应力张量积分，也应先保留自旋流改进与极化项的切口贡献；一般 $\xi$ 不能从这个时间平移特例推断切口项逐项为零。

**不用平方 Dirac 方程的最低模。** 取 $r=\tan\rho$，$0\le\rho<\pi/2$。用[旋量球谐分离与幺正径向旋转](<../../../Articles/Quantization in AdS/fermion/06-global-modes.md>)，在 $j=1/2,\ \kappa=+1$ 通道，去掉 $r^{-1}f^{-1/4}$ 后两旋转分量的内积是 $\int d\rho\,(|u|^2+|v|^2)$。质量先记作 $\mu$，则一阶方程是
$$
 (\partial_\rho+w)v=(E-\tfrac12-\mu-1)u,\qquad
 (-\partial_\rho+w)u=(E-\tfrac12+\mu+1)v,
 \quad w=\cot\rho-\mu\tan\rho .
$$
取 $v=0,\ u=\mathcal N\sin\rho\cos^\mu\rho$：第一式定 $E=3/2+\mu$，第二式逐点成立。归一化只需
$$
 |\mathcal N|^{-2}=\int_0^{\pi/2}\sin^2\rho\cos^{2\mu}\rho\,d\rho
 =\frac{\sqrt\pi\,\Gamma(\mu+1/2)}{4\Gamma(\mu+2)},\qquad \mu>-1/2 .
$$
$\mu=m$ 是真正质量 $m$ 的快支；$\mu=-m$ 先给辅助质量 $-m$ 的解，再对**完整四分量**乘 $\gamma_5$，利用 $\{\gamma_5,\not\!\nabla\}=0$ 得质量 $+m$ 的慢支，宇称通道随之对调。径向密度在 $m\uparrow1/2$ 时慢模发生对数发散，不能把端点当作普通替代量子化。全谱的 Jacobi 截断给 $E_N=\Delta_\pm+N$，$N=0,1,\ldots$；这里显式验的是 $N=0$。在全局真空取 CAR 并去真空常数，则 $H=\sum_I E_I(a_I^\dagger a_I+b_I^\dagger b_I)$，而产生 $\psi\mapsto e^{-i\lambda}\psi$ 的内部荷是 $\sum_I(a_I^\dagger a_I-b_I^\dagger b_I)$。二者差在反粒子项的符号。

**依据与核验。** [Henneaux，v1，PDF／正文 7，§3](https://arxiv.org/pdf/hep-th/9902137v1#page=7)解释欧氏一阶系统为什么固定一半数据；[Amsel–Marolf，v2，PDF／正文 4，(2.7)–(2.8)](https://arxiv.org/pdf/0808.2184v2#page=4)给质量窗，使用向内的定义函数法向；[Cotăescu](https://arxiv.org/abs/gr-qc/0306127)给全局正则模，替代支的 $\gamma_5$ 映射取自上述本地模笔记，不归给前两篇。**Verified:** Mathematica 复算侧面四个有序系数，两极化分别为 $(i,i,0,0)$、$(0,0,-i,-i)$，并复算径向一阶残差为零及所列 Beta 积分。**Assumptions:** 固定无挠背景、中心正则、无源反射、开质量窗、受控可微渐近展开。**Not verified:** 未另证整个自伴域的完备性，未重做一般 Killing 场全部标架变分，不涵盖混合极化、相互作用或引力反作用。
