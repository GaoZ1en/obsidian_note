# Rectangle self-sewing: scalar field, corners and Cauchy topology

研究 $I\times R$ 上普通实标量场的空间自粘合，其中
$$
I=[t_i,t_f],\qquad R=[0,L_x]\times[0,L_y],\qquad
ds^2=-dt^2+dx^2+dy^2.
$$
时间不参与识别，$L_x,L_y>0$，质量 $m^2\geq0$。先取自由场、固定背景、无真实界面/点相互作用、无内部符号扭转。有限时间窗视为全时间静态理论的限制。

**结论。** 四条完整边两两配对、不细分、不把一条边与自身识别时，闭曲面的拓扑恰为 $S^2,\mathbb{RP}^2,T^2,K$。但要求边识别是等距的、欧氏度量在所有角点光滑下降时，只有 $T^2,K$。普通 scalar 的 action/CPS 在 $K$ 上存在；非定向性本身不是禁阻。这里得到的是固定平直几何的 no-go，不能升级成一般 Cauchy 面拓扑 no-go。

原版 [classical formalism](<../classical_gluing_formalism.md>) 和 [observable formalism](<../observable algebra gluing formalism.md>) 限于无空间 junctions 的 pairwise smooth cuts；当前修订已采用 joint trace/domain 与完整 response pullback 定义，并明确其 corner reconstruction 输入。本模型提供具体实现：**边的 transmission、顶点的 link/metric 条件、函数空间的角点域必须一起指定。**

## 1. 十二种整边配对

逆时针标记
$$
v_0=(0,0),\ v_1=(L_x,0),\ v_2=(L_x,L_y),\ v_3=(0,L_y),
\qquad e_i:v_i\longrightarrow v_{i+1\ {\rm mod}\ 4}.
$$
对每一对 $(e_a,e_b)$，用归一化参数 $s\in[0,1]$ 表示识别：
$$
\epsilon=+1:\ e_a(s)\sim e_b(s),\qquad
\epsilon=-1:\ e_a(s)\sim e_b(1-s).
$$
这里的正负相对于**边界逆时针方向**，不要和左右边的同一 $y$ 坐标方向混淆。三种边配对乘以每对的两个方向，共 $3\cdot2^2=12$ 种。

| 边配对 | $(\epsilon_1,\epsilon_2)$ | 顶点轨道大小 | $\chi$ | 曲面 | 欧氏角度（不计顺序） |
|---|---|---|---|---|---|
| $(02)(13)$ | $(-,-)$ | $4$ | $0$ | $T^2$ | $2\pi$ |
| $(02)(13)$ | $(+,-)$ 或 $(-,+)$ | $4$ | $0$ | $K$ | $2\pi$ |
| $(02)(13)$ | $(+,+)$ | $2,2$ | $1$ | $\mathbb{RP}^2$ | $\pi,\pi$ |
| $(01)(23)$ 或 $(03)(12)$ | $(-,-)$ | $2,1,1$ | $2$ | $S^2$ | $\pi,\pi/2,\pi/2$ |
| $(01)(23)$ 或 $(03)(12)$ | $(+,-)$ 或 $(-,+)$ | $3,1$ | $1$ | $\mathbb{RP}^2$ | $3\pi/2,\pi/2$ |
| $(01)(23)$ 或 $(03)(12)$ | $(+,+)$ | $4$ | $0$ | $K$ | $2\pi$ |

表中相邻边配对若保留原度量，要求 $L_x=L_y$。不等长时仍可作拓扑识别，但归一化参数识别不是等距识别，原平直 action 不直接下降成同一个光滑背景的 action。

**分类论证。** 每个顶点的 quadrant link 是一个区间；边配对识别这些区间的端点。逐轨道所得 link 都是一条圆，因此每个顶点有拓扑圆盘邻域，没有 pinch point。商空间连通、紧、无边界，具有一个面、两个边和 $V$ 个顶点，故
$$
\chi=V-2+1=V-1.
$$
单面内部的 orientation 能延拓当且仅当两对边都反转边界方向。结合闭曲面分类及表中的 $V$，得到所列四类。Sage 穷举另行验证了全部 links、整数 cellular homology 和 Euler 数：
$$
\begin{array}{c|cccc}
\Sigma&S^2&\mathbb{RP}^2&T^2&K\\ \hline
H_1(\Sigma;\mathbb Z)&0&\mathbb Z_2&\mathbb Z^2&\mathbb Z\oplus\mathbb Z_2\\
H_2(\Sigma;\mathbb Z)&\mathbb Z&0&\mathbb Z&0
\end{array}
$$
12 种带标号呈现的数目分别为 $2,5,1,4$；这些数目不是不同度量的模空间计数。

若只粘一对相对边，则有 cylinder 或 Möbius strip，仍有真实空间边界。若允许细分边界并重新配对，可实现更多 genus；本节的有限分类不适用于这种扩展。

## 2. 从一个区域的 action 释放自粘合 histories

采用 density 积分，作用量为
$$
S_R[\phi]=\frac12\int_I dt\int_R dx\,dy\,
\bigl(\dot\phi^2-|\nabla\phi|^2-m^2\phi^2\bigr).
$$
不加入边界动力学或角点项。直接变分：
$$
\delta S_R=
-\int_{I\times R}(\ddot\phi-\Delta\phi+m^2\phi)\delta\phi
+\left[\int_R\dot\phi\,\delta\phi\right]_{t_i}^{t_f}
+\sum_e\int_{I\times e}\Pi_e\,\delta q_e,
\qquad
q_e=\gamma_e\phi,\quad \Pi_e=-\partial_{n_e}\phi.
$$
此一阶 scalar action 只作一次分部积分，未产生边界上的切向分部积分；因此这里的 corner potential 是零。这是计算结果，不是普遍删除 corner terms 的规则。时空的 temporal-edge corners 与 $I\times\{v_i\}$ 空间顶点轨道也应区分。

区域 histories 先作为 prescribed data；它们须属于一个区域场的实际 trace 域，不是四个任意独立光滑函数。区域对象保留 bulk equation、允许 histories、response 和 Cauchy transport。此处允许用 solution relation 描述 histories，不假定任意四边驱动都具有光滑矩形 IBVP 解。

对边识别 $f:e\to e'$ 定义 $Jq=q\circ f^{-1}$。先施加几何连续性 $q_{e'}=Jq_e$，再释放共同 history：
$$
\delta S_R\big|_{\rm bulk}
=\langle\Pi_e+J^\dagger\Pi_{e'},\delta q_e\rangle,
\qquad
\boxed{q_{e'}=Jq_e,\qquad\Pi_e+J^\dagger\Pi_{e'}=0.}
$$
$J^\dagger$ 按边界 density pairing 定义；等距情况下无额外长度 Jacobian。**只出现一次 $S_R$**：自粘合是同一系统的两对 ports 反馈，不是凭空复制两个矩形再相加 action。

可先选择支撑避开顶点的共同 variations，得到每条开边上的通量式。顶点本身不提供独立的 measure-zero 变分方程；是否需要点域条件由第 4–5 节决定。

在固定时间
$$
p=\dot\phi,\qquad
\Theta_R=\int_R p\,\delta\phi,\qquad
\Omega_R=\delta\Theta_R=\int_R\delta p\wedge\delta\phi.
$$
采用既有约定 $\iota_{X_F}\Omega=-dF$，故 $\{\phi,p\}=1$。匹配消去所有成对的能量与辛通量：
$$
H_R=\frac12\int_R(p^2+|\nabla\phi|^2+m^2\phi^2),\qquad
\dot H_R=\sum_e\int_e p\,\partial_{n_e}\phi=0,
\qquad \Omega(t_f)=\Omega(t_i).
$$
这一步本身不证明商度量在顶点光滑；带锥点的模型也可能满足同样的开边通量抵消。

## 3. Torus、Klein bottle 与双反向配对

### 3.1 Torus

采用
$$
(0,y)\sim(L_x,y),\qquad(x,0)\sim(x,L_y).
$$
四个顶点属于一个轨道，四个直角正好组成圆盘的 $2\pi$。开边条件为
$$
\phi(0,y)=\phi(L_x,y),\quad
\phi_x(0,y)=\phi_x(L_x,y),
$$
$$
\phi(x,0)=\phi(x,L_y),\quad
\phi_y(x,0)=\phi_y(x,L_y).
$$
光滑数据必须对全部导数周期匹配。等价地，可延拓为 $\mathbb R^2$ 上两个平移不变的光滑函数。

### 3.2 Klein bottle

采用
$$
(0,y)\sim(L_x,L_y-y),\qquad(x,0)\sim(x,L_y).
$$
作用量释放给
$$
\phi(0,y)=\phi(L_x,L_y-y),\quad
\phi_x(0,y)=\phi_x(L_x,L_y-y),
$$
$$
\phi(x,0)=\phi(x,L_y),\quad
\phi_y(x,0)=\phi_y(x,L_y).
$$
切向导数由第一式得负号；它不是另加的 Neumann 条件。完整 jets 为
$$
\partial_x^r\partial_y^s\phi(0,y)
=(-1)^s\partial_x^r\partial_y^s\phi(L_x,L_y-y),
\qquad r,s\geq0,
$$
并且在上下边周期。对 $p$ 同样成立。四个顶点的场值相等，但不同原矩形坐标中的梯度须按 transition matrix 比较，不能逐分量直接相等。例如
$$
\phi(x,y)=\cos(\pi x/L_x)\sin(2\pi y/L_y)
$$
是合法光滑 Klein 数据，其左右角点的 $\phi_y$ 相反且非零。

在平面上取
$$
a(x,y)=(x+L_x,L_y-y),\qquad b(x,y)=(x,y+L_y).
$$
则
$$
aba^{-1}=b^{-1},\qquad a^2(x,y)=(x+2L_x,y).
$$
该作用自由且 properly discontinuous：奇数次 glide 的 $x$ 位移非零，其余非单位元素是非零平移。局部 contractible corner cycle 的 transition 必须闭合，但非收缩空间 loop 可以保留反射 holonomy。把所有 loop 都强行设成两个可交换平移会错误排除 Klein bottle。

$K$ 非定向；$\mathbb R\times K$ 仍可 time-oriented，并有全局时间 $t$。$\sqrt{|g|}\,|d^3x|$、空间体积 density 及 $\Theta,\Omega$ 都有全局定义。若坚持只用全局普通 top-degree differential forms 表述，应改用 orientation-twisted forms/densities。不能由该记号问题推出普通 scalar 不存在。

作为后验计算检查，可用 $2L_x\times L_y$ torus 双覆盖上的 glide 不变部分：
$$
u_{nk}=e^{i\pi n x/L_x}
\left(e^{2\pi i k y/L_y}+(-1)^n e^{-2\pi i k y/L_y}\right),
\quad n\in\mathbb Z,\ k>0,
$$
$$
\lambda_{nk}=(\pi n/L_x)^2+(2\pi k/L_y)^2.
$$
$k=0$ 时只保留偶数 $n$。这是覆盖空间 Fourier basis 的不变投影，因此完备；有限符号检查仅核对其 transmission 和 eigenvalue，不代替完备性论证。此处无需选择 Fock state。

### 3.3 两对相对边都反向

采用
$$
(0,y)\sim(L_x,L_y-y),\qquad
(x,0)\sim(L_x-x,L_y).
$$
顶点分成 $\{v_0,v_2\}$、$\{v_1,v_3\}$，各只有两个 quadrant：拓扑为 $\mathbb{RP}^2$，每点的总角度为 $\pi$。这不是另一个光滑 flat Klein bottle。

再令 $c(x,y)=(L_x-x,y+L_y)$，则
$$
ac(x,y)=(2L_x-x,-y),\qquad(ac)^2=1.
$$
$ac$ 在 $(L_x,0)$ 有不动点，是角点周围的半周旋转。因此若把同样边配对当成平面等距群商，就出现 stabilizer；等价的局部几何是 $\mathbb R^2/\{\pm1\}$ 锥点。场的边值与通量仍能匹配，几何却不再光滑。

### 3.4 相邻边配对的 sphere

取 $L_x=L_y=L$，配对 $(01)(23)$、方向 $(-,-)$，即
$$
(x,0)\sim(L,L-x),\qquad (x,L)\sim(0,L-x).
$$
场值按这两式连续，outward response 匹配给
$$
\phi_y(x,0)=\phi_x(L,L-x),\qquad
\phi_y(x,L)=\phi_x(0,L-x).
$$
这里切向与法向坐标发生交换，不能照抄 torus 的左右导数配对。顶点轨道是 $\{v_0,v_2\}$、$\{v_1\}$、$\{v_3\}$：商拓扑为 sphere，原度量的三个总角度分别为 $\pi,\pi/2,\pi/2$。第 5 节给这三个 cone 的同一有限能量域，不额外放置三个 corner oscillators。相邻边混合方向的 $\mathbb{RP}^2$ 和双正方向的 $K$ 同理由第 1 节的参数识别及第 2 节的 $J^\dagger$ 统一构造。

## 4. 角点需要配的三层数据

**拓扑层。** 每个顶点轨道的 link 必须是一个圆。若改成更一般识别，只有 $V-E+F$ 而没有 link 检查，不足以保证二维流形。

**度量层。** 等距识别下，一个含 $r_v$ 个直角的轨道具有
$$
\alpha_v=\frac{\pi r_v}{2},\qquad
\kappa_v=2\pi-\alpha_v.
$$
平直度量光滑要求每个 $\alpha_v=2\pi$。在本模型的 straight-edge isometries 下，此条件结合 link 圆也充分：展开各 quadrant 即得到欧氏圆盘坐标。对曲边、非等距、场依赖的识别，单独总角度条件不再是充分条件。

角亏损满足
$$
\sum_v\kappa_v=2\pi V-2\pi=2\pi\chi(\Sigma).
$$
因此 $S^2$ 配对的总角亏损为 $4\pi$，$\mathbb{RP}^2$ 为 $2\pi$。这说明曲率被压在顶点，不是空间拓扑本身有矛盾。

**场域层。** 光滑类中，沿 seam 的所有 jets 须按 collar transition 匹配，且绕顶点的局部 cycle 相容。初始数据还须满足相应的时间兼容条件；对自由场 $\partial_t^{2j}\phi=(-A)^j\phi$、$\partial_t^{2j+1}\phi=(-A)^jp$，其中 $A=-\Delta+m^2$ 是已经指定域的算子。

只检查初值的值与一阶法向导数并不足以得到光滑下降。例如 torus 上的矩形函数
$$
u=x^2(L_x-x)^2y^2(L_y-y)^2
$$
值和一阶 normal 在两对边都匹配，但
$$
u_{xxx}(0,y)-u_{xxx}(L_x,y)
=-24L_x\,y^2(L_y-y)^2\neq0.
$$
它属于适当低阶域，却不是全局光滑数据。此反例不否认：若一个场在整个时间窗都光滑到矩形边角，并满足 KG 方程和完整时间上的 transmission，方程可以进一步推出更高 jets。不能把这个结论偷换成“任意低阶匹配初值都会产生光滑解”。

有限能量类中 $u\in H^1$、$p\in L^2$。二维 $H^1$ 没有连续的点值 evaluation，不能写四个独立的 $u(v_i)$ 约束或点正则坐标。边 trace 是 $H^{1/2}$ 意义，且在同一矩形内属于整个 $\partial R$ 的 trace image；这已经排除了任意拼接四个不相容的边函数。

这个 trace 域的角点条件可以直接写出来。在同一原矩形顶点的两条相邻边上，以离顶点的距离 $r,s$ 参数化 traces $q_1,q_2$。除各自属于 $H^{1/2}$ 外，还须有
$$
\int_0^\delta\!\int_0^\delta
\frac{|q_1(r)-q_2(s)|^2}{(r+s)^2}\,dr\,ds<\infty.
$$
这是整个边界 $H^{1/2}$ seminorm 的跨角点项；直角的 Euclidean 距离与 $r+s$ 等价。若两侧是不同常数，去掉 $r,s<\varepsilon$ 后的积分正比于
$$
\log\frac{(\delta+\varepsilon)^2}{4\delta\varepsilon}\longrightarrow\infty.
$$
所以“$H^1$ 没有点值”绝不意味着角点附近的边 histories 可以独立跳变。这个积分条件是空间 trace 的精确相容条件；时间上的 anisotropic regularity 和初始兼容仍须另外处理。

## 5. 由区域二次型构造精确 sewing

下面给出可闭合的 continuum benchmark。允许第 1 节的等距配对；相邻边情况取正方形。对于锥点，明确选择**无点相互作用的有限能量/Friedrichs 域**。

从区域数据定义
$$
V_{\rm sew}=\{u\in H^1(R):
\gamma_{e'}u=J\gamma_eu\ \text{在每对边的 trace 意义成立}\},
$$
$$
\mathfrak a_R(u,v)=\int_R(\nabla u\cdot\nabla v+m^2uv),
\qquad u,v\in V_{\rm sew}.
$$
Trace 连续性使 $V_{\rm sew}$ 是 $H^1(R)$ 的闭子空间；它包含 $C_c^\infty(R^\circ)$，所以在 $L^2(R)$ 中稠密。二次型加 $L^2$ 范数与 $H^1$ 范数等价，故闭且非负。表示定理给唯一非负自伴算子
$$
D(A_{\rm sew})=
\{u\in V_{\rm sew}:\exists f\in L^2(R),\
\mathfrak a_R(u,v)=\langle f,v\rangle\ \forall v\in V_{\rm sew}\},
\qquad A_{\rm sew}u=f.
$$
对开边作 Green identity，正是第 2 节的 oriented flux matching。一般能量数据没有 classical normal derivative；此时以上弱定义才是完整 transmission，不能强加逐点 Neumann 条件。

另一方面，先由边识别独立构造商度量空间 $\Sigma$，在其光滑部分取同一个 scalar action。若有锥点，从避开锥点的光滑函数的能量闭包定义 Friedrichs 二次型 $\mathfrak a_\Sigma$ 和算子 $A_\Sigma$。这是一个明确的全局目标，并未把全局 algebra 定义成区域 restriction image。

**命题（form、演化与 CPS 的精确重构）。** 对上述每个等距配对，几乎处处下降给 unitary
$$
U:L^2(R)\longrightarrow L^2(\Sigma),\qquad
U V_{\rm sew}=D(\mathfrak a_\Sigma),\qquad
\mathfrak a_\Sigma(Uu,Uv)=\mathfrak a_R(u,v),
$$
$$
UA_{\rm sew}U^{-1}=A_\Sigma.
$$
因此有限能量 Cauchy 数据、弱解、能量和 CPS 精确对应。

**证明。** 顶点外用两侧 $H^1$ trace patching：trace 相同消除弱一阶导数的 jump 分布，逆向 restriction 显然成立。顶点邻域为有限角度 cone，可由角变量线性重标得到与圆盘 bi-Lipschitz 的局部度量，故上述 Sobolev patching 可跨顶点完成。点在二维 $H^1$ 中 capacity 为零：在 $\varepsilon^2<r<\varepsilon$ 使用对数 cutoff，其 Dirichlet energy 为 $O(1/|\log\varepsilon|)$。先对函数作有界截断，再取 cutoff 和光滑逼近，即得避开所有锥点的函数在相同能量域稠密。没有额外点值约束。体积与梯度能量在 seams 外完全相同，故二次型 unitary 等价；闭型的算子唯一性给最后一式。∎

取 $\tau=t-t_0$，实际演化由区域算子独立给出：
$$
u(t)=\cos(\tau\sqrt{A_{\rm sew}})u_0+
\frac{\sin(\tau\sqrt{A_{\rm sew}})}{\sqrt{A_{\rm sew}}}p_0.
$$
在零谱上第二项的 multiplier 定义为 $\tau$，因此包含 $m=0$ 的常数模。由谱演算得到
$$
u\in C(I;V_{\rm sew}),\qquad p\in C(I;L^2),
$$
并有唯一能量解、能量与 $\Omega$ 守恒。$U$ intertwines 此演化与全局演化。这里使用闭二次型和谱定理的解析论证，没有用有限矩阵回归推断 PDE existence。

光滑 $T^2,K$ 上，$D(A^j)$ 的交集恢复 $C^\infty(\Sigma)$，完整 seam jets 正是其矩形呈现。有锥点时，$\bigcap_jD(A^j)$ 是该 singular operator 的 smooth-vector 域，**不是**某个任意光滑化曲面上的 $C^\infty$；两者不能混写。

在 cone 的旋转不变 sector，局部 harmonic 分支为 $a+b\log r$。$b\neq0$ 时梯度能量含 $\int_0^\varepsilon dr/r$，所以 Friedrichs 域排除 log 分支。其他点扩张若存在，属于修改域/点相互作用的另一理论。锥流形 wave equation 的标准研究也明确以 [Friedrichs Laplacian](https://arxiv.org/abs/math/0010129) 为输入；本文仅证明以上静态能量结论，不推导其传播奇性定理。

### 5.1 一个实际的 regional history/response 域

可以在不调用全局解的情况下，先完成一个明确的区域 history 实现。取空间联合 trace 空间
$$
\mathcal B_R^{\mathrm{sp}}=\gamma H^1(R)=H^{1/2}(\partial R)
$$
及其 quotient norm。令 $E:\mathcal B_R^{\mathrm{sp}}\to H^1(R)$ 是弱 harmonic Dirichlet lift：$\gamma Eq=q$、$\Delta Eq=0$。在任一有界 trace extension 上解 $H_0^1(R)$ 的修正问题，Poincaré 与 Lax–Milgram 给该 lift 的唯一性、线性和有界性。

取
$$
q\in C^2(I;\mathcal B_R^{\mathrm{sp}}),\quad
z_0\in H_0^1(R),\quad z_1\in L^2(R),
$$
并定义初值 $u_0=z_0+Eq(t_0)$、$p_0=z_1+E\dot q(t_0)$，其中 $t_0=t_i$。这明确编码 $\gamma u_0=q(t_0)$；能量级 $p_0$ 没有边界 trace，故不额外写 $\gamma p_0=\dot q(t_0)$。用区域 Dirichlet 算子 $A_D=-\Delta_D+m^2$ 解
$$
\phi=v+Eq,\qquad
\ddot v+A_Dv=-E(\ddot q+m^2q),\qquad
(v,\dot v)(t_0)=(z_0,z_1).
$$
右端连续取值于 $L^2(R)$。Dirichlet 能量估计或 Duhamel 谱演算给唯一
$$
\phi\in C(I;H^1(R))\cap C^1(I;L^2(R)),\qquad \gamma\phi=q,
$$
且对 $(z_0,z_1,q)$ 的 solution/transport map 连续线性，因而在这些 Banach spaces 上 smooth。此处 $q$ 是整个边界的一个元素，不允许独立指定不相容的角点边值。固定 $q$ 后，初始 variations 为 $H_0^1(R)\oplus L^2(R)$，其 $\int_R\delta p\wedge\delta\phi$ 连续且弱非退化，故可以按 $\mathcal H(P[q])$ 定义这个具体 regional algebra。

对 $\eta\in C_c^\infty(I^\circ;\mathcal B_R^{\mathrm{sp}})$，定义完整弱响应
$$
\lambda_\phi[\eta]
=\int_I\left(\langle p,E\dot\eta\rangle_{L^2}
-\mathfrak a_R(\phi,E\eta)\right)\,dt .
$$
由 $E$ 的有界性，该 functional 对 $\eta$ 的一阶时间 seminorm 连续，并连续线性依赖区域数据。换用另一有界 lift 时，两种 test extensions 的差属于 $C_c^\infty(I^\circ;H_0^1(R))$，区域弱 KG 方程使上式之差为零。因此响应与辅助 lift 无关；若存在 classical normal trace，则它正是 $\int_{I\times\partial R}(-\partial_n\phi)\eta$。

自粘合时，把全部配对和 corner compatibility 记入共同 history inclusion $\iota_{\mathrm{sew}}$，释放定义为 $\iota_{\mathrm{sew}}^*\lambda_\phi=0$。这给出了一个实际的 history space、区域 evolution 和弱 response；没有使用四条独立边的 formal cotangent product。

此实现的 $C^2$ 时间控制是声明的域，不涵盖所有能量解的任意连续 boundary history；第 5 节的闭二次型构造才处理完整能量 Cauchy space。所有 sewn smooth-vector 解的 traces 属于此 $C^2$ 域。弱响应属于 joint-history distributional dual，不能因此声称它是旧 family 定理要求的 smooth face density，也没有由此构造该定理的 $B,DR^\flat,B^\flat$。

## 6. 可观测代数与粘合顺序

令
$$
\mathscr D_{\rm sew}=\bigcap_{j\geq0}D(A_{\rm sew}^j),
\qquad X_{\rm sew}=\mathscr D_{\rm sew}\oplus\mathscr D_{\rm sew}.
$$
取各 graph norms 的 Fréchet 拓扑；$\Omega$ 是连续、弱非退化的。由 regional form/domain 独立定义
$$
\mathcal A_{\rm sew}^{\rm cl}
=\{F\in C_B^\infty(X_{\rm sew},\mathbb C):
\iota_{X_F}\Omega=-dF,\ X_F\text{ smooth tangent}\}.
$$
全局以 $A_\Sigma$ 独立定义 $\mathscr D_\Sigma,X_\Sigma,\mathcal A_\Sigma^{\rm cl}$。第 5 节的 $U$ 给 smooth symplectic isomorphism，从而
$$
\alpha:\mathcal A_{\rm sew}^{\rm cl}\longrightarrow\mathcal A_\Sigma^{\rm cl},
\qquad \alpha(F)=F\circ(U\oplus U)^{-1},
$$
是 Poisson $*$-isomorphism。其 closure 来自切于同一 corner/operator domain 的 Hamiltonian fields 的 Lie bracket；$U$ 和 $U^{-1}$ 连续保持所有 graph norms，故双向运输保留这一条件。Kernel 为零，image 为全部所声明目标；逆映射是实际双向 composition。这是 matched-space algebra 定理，**不声称**四条独立边代数的 tensor product 或任意 prescribed-history family quotient 自动 onto。

例如 $\int_R(1-x/L_x)p$ 虽在 torus 的数据上是连续线性泛函，其候选向量 $(1-x/L_x,0)$ 不满足周期 trace，因此不在这里的 Hamiltonian algebra 内。角点 evaluation 在能量相空间上不连续；在 smooth-vector 空间上也不能仅由 evaluation 的存在推断其 Hamiltonian vector 属于该空间。

还可取完全明确的量子 core。对 $z\in X_{\rm sew}$ 定义线性 Hamiltonian observable
$$
L_z(w)=-\Omega(z,w),\qquad X_{L_z}=z,\qquad
\{L_z,L_{z'}\}=-\Omega(z,z').
$$
由这些 generators 构造 polynomial CCR $*$-algebra：
$$
[\widehat L_z,\widehat L_{z'}]=-i\hbar\Omega(z,z')\,1,\qquad
\widehat L_z^*=\widehat L_z
\quad(z\ \text{real}).
$$
同一个 $U\oplus U$ 保持 CCR defining relations，其逆也保持 relations，因此由两个 universal homomorphisms 给该 core 的精确量子代数同构，亦可用同一实辛空间构造 Weyl algebra。这不是把原 isolated fixed-history algebra 的 bracket 原样取商。更强的 massive 光滑 torus/Klein Wick 比较见 [free quantum note](<../free scalar renormalized quantum observable algebra gluing.md>)；cone/Friedrichs 情形在这里仅建立指定的 CCR 层，不从能量定理推断 Wick products 或 interacting renormalization。

对于先粘哪一对边，先在同一个区域 $H^1(R)$ 中定义两个闭 trace 条件 $C_1u=0,C_2u=0$。最终域恒为
$$
V_{\rm sew}=\ker C_1\cap\ker C_2
=(\ker C_1)\cap(\ker C_2)
=(\ker C_2)\cap(\ker C_1),
$$
其中核均在 $H^1(R)$ 内取。保留同一二次型与最终 Friedrichs 域，因此两种次序给相同算子、演化和代数。几何上两次取商也给同一个生成等价关系；第二步必须保留第一步诱导的顶点等价类和剩余边 transition。

这是自粘合关系的 order independence，不是说中间闭系统的波演化可以任意互换。若第一步对尚未粘合的边设定并冻结 Neumann/Dirichlet 条件，或丢掉顶点轨道，已改变第二步允许的关系，不能援引本结论。

## 7. 能成立的 no-go，以及不能成立的版本

**A. 单矩形整边配对 no-go（拓扑）。** 在第 1 节限定的操作类内，不能得到 genus $g\geq2$ 的定向闭曲面或 crosscap 数 $k\geq3$ 的非定向闭曲面。证明是 $V\geq1$ 给 $\chi=V-1\geq0$，再用闭曲面分类。允许更多边段后不再成立。

**B. 无缺陷平直自粘合 no-go（几何）。** 保留矩形 Euclidean metric、使用等距边配对，并要求闭商无锥点且度量光滑，则 $\Sigma$ 只能是 $T^2$ 或 $K$。因为每个顶点需四个直角，而只有四个直角，故 $V=1,\chi=0$。反例边界很明确：$S^2,\mathbb{RP}^2$ 可作为带上述锥度量的商，并支持所指定的有限能量 scalar dynamics；若改用曲率非零的光滑背景，也可以支持普通 scalar。

**C. 额外 orientation 假设。** 若另要求 spacetime orientable 且 time-oriented，则其 spacelike Cauchy surface orientable，因全局 timelike normal 把 spacetime orientation 诱导到空间面。在 B 的条件上才进一步只剩 $T^2$。这个 orientation 限制是额外几何输入，不是 scalar transmission 自动产生的约束。

**D. 同一 globally hyperbolic spacetime 中不能作 Cauchy 拓扑改变。** 光滑、无空间边界、time-oriented globally hyperbolic spacetime 的光滑 spacelike Cauchy surfaces 彼此微分同胚，见 [Bernal–Sánchez, Theorem 1.1 与 Lemma 2.2](https://arxiv.org/html/gr-qc/0306108v2)。在本静态模型中更直接：空间识别固定且不混合 $t$，每个 slice 都是同一个 $\Sigma$。不能把“在同一时空内从 $T^2$ 演化到 $K$”与“用不同边配对定义两个不同静态时空”混为一谈。

**不存在本模型所暗示的普遍 Cauchy 拓扑排除。** 对任意光滑紧闭曲面 $\Sigma$（包括非定向面），任选光滑 Riemannian metric $h$，
$$
(\mathbb R\times\Sigma,-dt^2+h)
$$
都提供 time-oriented globally hyperbolic 静态背景。因果曲线以 $t$ 为参数的空间速度至多为 $1$；紧致性使有限 $t$ 端点可延拓，故不可延拓因果曲线穿过每个固定 $t$ slice 一次。density action 的普通 scalar 有标准非负空间算子与上述演化。因此若希望得到更强 no-go，必须明确增加 gravity equations、全局 orientation、能量/曲率或拓扑改变等假设，不能从本 scalar 的 sewing 单独推出。

## 8. 验证与边界

- **Verified:** Sage 完整穷举 12 种配对，检查每个顶点 link、整数 chain complex/homology、orientation、Euler 数和全部角亏损；Mathematica 的 19 组 exact checks 检查 off-shell variation、能量散度、CPS 符号、反射能量、Klein 群关系、sphere 相邻边 collar、双反向不动点、21 个复模的 transmission/eigenvalue 和低阶 seam 反例。输入与实际输出见 [Sage](<../numerics/rectangle_self_sewing_checks.sage>)、[Mathematica](<../numerics/rectangle_self_sewing_checks.wl>)、[results](<../numerics/rectangle_self_sewing_results.json>)。
- **Assumptions:** 自由普通实 scalar；$m^2\geq0$；time-independent whole-edge pairing；固定平直 cell；等距配对；无边/点作用量；cones 取 Friedrichs 域；algebra 精确性限于第 6 节声明的 Hamiltonian class 和 CCR core。
- **Proved analytically here:** 指定等距模型的闭型与能量重构、smooth-vector CPS/algebra comparison、保留所有约束时的配对次序独立；这些依赖标准 trace patching、闭型表示和谱定理，有限符号检查不证明它们。
- **Not verified / open:** 超出 §5.1 的任意 prescribed histories 光滑矩形 IBVP 与旧 smooth-density 类的全部 response derivatives；比 matched-space algebra 更强的 ambient history-family quotient/section；其他点扩张与非等距 seams；cone 的 Wick/renormalized sewing；含 gravity 的 topology restriction。

当前模型把“corner 怎么配”落实为 link、角度、transition jets、joint history dual 与 closed form domain。§5.1 已给一个实际的 $C^2$ history/弱 response 实现；进一步把它接到全 smooth history-family quotient，仍须构造所需的 regular section/transposes。这一更强目标不混入已经完成的能量与 CCR benchmark。
