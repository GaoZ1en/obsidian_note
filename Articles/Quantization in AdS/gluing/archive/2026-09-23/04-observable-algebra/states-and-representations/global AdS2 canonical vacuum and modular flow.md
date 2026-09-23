
For simplicity we consider only the $\displaystyle{\Delta=2}$. The spacetime setup is given by

$$\begin{align}
\mathrm{d}s^{2} & =\sec ^{2}\rho\left(-\mathrm{d}t^{2}+\mathrm{d}\rho ^{2}\right), & -\dfrac{\pi}{2}<\rho< & \dfrac{\pi}{2}, & t & \in \mathbb{R}, & m^{2}=\Delta(\Delta-1)
\end{align}$$

take standard quantization

$$\begin{align}
\phi & =\mathcal{O}(\cos ^{\Delta}\rho)
\end{align}$$

the Kruskal coordinates and the metric

$$\begin{align}
U & =\tan \dfrac{t-\rho}{2}, & V & =\tan \dfrac{t+\rho}{2}, & \mathrm{d}s^{2} & =-\dfrac{4\mathrm{d}U\mathrm{d}V}{(1+UV)^{2}}
\end{align}$$

the four spacetime regions are

$$\begin{align}
R & =\left\{U<0,V>0\right\}, & L & =\left\{U>0,V<0\right\}, \\
F & =\left\{U>0,V>0\right\}, & P & =\left\{U<0,V>0\right\}
\end{align}$$

put

$$\begin{align}
f(V) & =\phi(0,V), & g(U) & =\phi(U,0), & f(0)=g(0)=c
\end{align}$$

the Goursat problem is solved by

$$\begin{align}
\phi(U,V) & =f(V)+g(U)-c-a\int _{0}^{U}\mathrm{d}u\int _{0}^{V}\mathrm{d}v \dfrac{\phi(u,v)}{(1+uv)^{2}}
\end{align}$$

define the global phase space and global symplectic form

$$\begin{align}
\mathcal{P} & =\left\{\phi:(\nabla ^{2}-m^{2})\phi=0,\phi=\mathcal{O}(\cos ^{\Delta}\rho)\right\} \\
\Omega & =\int _{-\pi/2}^{\pi/2}\mathrm{d}\rho \delta \dot{\phi}\wedge \delta \phi
\end{align}$$

since the global Cauchy problem is well-posed, the restriction is bijective symplectomorphism

$$\begin{align}
r_{0}: & \mathcal{P}\xrightarrow{\sim} \mathcal{C}_{0}, & \phi\mapsto(q,p)=(\phi|_{\Sigma _{0}},\dot{\phi}|_{\Sigma _{0}}) \\
\implies & (\mathcal{P},\Omega)\simeq(\mathcal{C}_{0},r^{*}_{0}\Omega)
\end{align}$$

the global observable algebra is defined as

$$\begin{align}
\mathcal{H} & =\left\{F\in C^{\infty}(\mathcal{P},\mathbb{R}):\exists X_{F}\in \Gamma(T\mathcal{P}), X_{F}\cdot \Omega=-\delta F\right\}
\end{align}$$

with Poisson bracket between $\displaystyle{F}$ and $\displaystyle{G}$

$$\begin{align}
\left\{F,G\right\} & =X_{F}\cdot X_{G}\cdot \Omega
\end{align}$$

## regional phase space and observable algebra

we first define the two wedge theories independently. write

$$\begin{align}
I_{L} & =\left( -\dfrac{\pi}{2},0 \right], & I_{R} & =\left[ 0,\dfrac{\pi}{2} \right), & \Sigma _{i} & =\left\{t=0,\rho \in I_{i}\right\}
\end{align}$$

on each wedge use the regional action

$$\begin{align}
S_{i} & =\dfrac{1}{2}\int _{i}\mathrm{d}t\mathrm{d}\rho (\dot{\phi}_{i}^{2}-\phi'^{2}_{i}-a^{2}\sec ^{2}\rho \phi _{i}^{2}), & i=L,R
\end{align}$$

the regional phase space and symplectic form is defined as

$$\begin{align}
\mathcal{P}_{i} & =\left\{\phi _{i}:(\nabla ^{2}-m^{2})\phi _{i}=0,(\text{physical DBC})\right\} \\
\Omega _{i} & =\int _{I_{i}}\mathrm{d}\rho \delta p_{i}\wedge \delta q_{i},\qquad i=L,R
\end{align}$$

here we put $\displaystyle{p_{i}=\dot{\phi} _{i}(t=0),q_{i}=\phi _{i}(t=0)}$. and the classical observable algebra

$$\begin{align}
\mathcal{H}_{i} & =\left\{F_{i}\in C^{\infty}(\mathcal{P}_{i},\mathbb{R}):\exists X_{F}\in \Gamma(T\mathcal{P}_{i}),X_{F}\cdot \Omega _{i}=-\delta F\right\} \\
\left\{F,G\right\}_{i} & =X_{F}\cdot X_{G}\cdot \Omega _{i},\qquad i=L,R
\end{align}$$

to glue the two regions, we need to match the Cauchy data:

$$\begin{align}
\mathcal{C} & =\left\{(\phi _{L},\phi _{R})\in \mathcal{P}_{L}\times \mathcal{P}_{R}:\partial _{\rho}^{k}q_{L}(0)=\partial _{\rho}^{k}q_{R}(0),\partial ^{k}_{\rho}p_{L}(0)=\partial _{\rho}^{k}p_{R}(0)\right\} \\
\Omega _{\mathcal{C}} & =\Omega _{L}+\Omega _{R}
\end{align}$$

define $\displaystyle{\mathcal{U}:\mathcal{C}\to \mathcal{P}}$ by joining $\displaystyle{q_{L},q_{R},p_{L},p_{R}}$ piecewise on $\displaystyle{t=0}$, well-posedness of Cauchy problem on global AdS2 implies $\displaystyle{\mathcal{U}}$ is bijective. and

$$\begin{align}
\mathcal{U}^{*}\Omega & =\Omega _{\mathcal{C}}
\end{align}$$

thus $\displaystyle{\mathcal{U}}$ is a symlectomorphism. the glued observable algebra $\displaystyle{\mathcal{H}_{\mathrm{glue}}}$ is defined as

$$\begin{align}
\mathcal{H}_{\mathrm{glue}} & =\mathcal{H}(\mathcal{C},\Omega _{\mathcal{C}})
\end{align}$$

we have

$$\begin{align}
\mathcal{U}^{*}: & \mathcal{H}\xrightarrow{\sim}\mathcal{H}_{\mathrm{glue}}, & \left\{F\circ\mathcal{U},G\circ\mathcal{U}\right\}_{\mathrm{glue}}=\left\{F,G\right\}\circ\mathcal{U}
\end{align}$$

For an explicit construction from regional generators, let $V_{\mathrm{match}}\subset V_L\oplus V_R$ consist of pairs whose $f$ jets and $g$ jets match at zero to every order. Their Hamiltonian vectors $(g_i,-f_i)$ are precisely tangent to the matching relation. Let $Jv$ be the piecewise joined label. Define independently $V_G=\mathscr C_G\oplus\mathscr C_G$, with $\ell_G$ and $\sigma_G$ given by the full-interval integrals. Then

$$\begin{align}
J:V_{\mathrm{match}}&\xrightarrow{\sim}V_G,
&\sigma_G(Jv,Jw)&=\sigma_L(v_L,w_L)+\sigma_R(v_R,w_R),\\
\ell_G(Jv)\circ\mathcal U
&=(\ell_L(v_L)+\ell_R(v_R))|_{\mathcal C},\\
\mathcal A_{\mathrm{glue}}^{\mathrm{pol}}
:=\operatorname{Sym}_{\mathbb R}(V_{\mathrm{match}})
&\xrightarrow[\operatorname{Sym}(J)]{\sim}
\mathcal A_G^{\mathrm{pol}}:=\operatorname{Sym}_{\mathbb R}(V_G).
\end{align}$$

This map has zero kernel and is onto: restriction of any global label is its unique matched preimage, and finite products follow. Linear labels separate the phase-space points, so these polynomial algebras have faithful realizations as functions. The source is the algebra of matched sums and their products. Arbitrary regional Hamiltonian fields need not be tangent to $\mathcal C$, so simply restricting the entire product algebra and its bracket is not the sewing operation.

For quantization set $\hbar=1$ and define the regional and global Weyl algebras independently by $\mathfrak W_i=\operatorname{CCR}(V_i,\sigma_i)$ and $\mathfrak A=\operatorname{CCR}(V_G,\sigma_G)$. Their generators obey

$$\begin{align}
W(v)W(w)&=e^{-i\sigma(v,w)/2}W(v+w),
&W(v)^*&=W(-v), &W(0)&=1.
\end{align}$$

The symplectic bijection $J$ preserves these relations and has a symplectic inverse. It therefore proves the quantum comparison

$$\begin{align}
\mathfrak A_{\mathrm{glue}}
:=\operatorname{CCR}(V_{\mathrm{match}},(\sigma_L\oplus\sigma_R)|_{V_{\mathrm{match}}})
&\xrightarrow[W_{\mathrm{glue}}(v)\mapsto W_G(Jv)]{\sim}\mathfrak A.
\end{align}$$

Equivalently, $\mathfrak A_{\mathrm{glue}}$ is the subalgebra of the product regional Weyl algebra generated by the matched products $W_L(v_L)W_R(v_R)$. This quantizes the displayed linear symplectic data; it does not assert a quantization of every smooth function in $\mathcal H$. The isomorphism concerns the sewn algebra, not either single wedge algebra.

Finally define the right-local algebra used below. Start with $C_c^\infty((0,\pi/2),\mathbb R)^{\oplus2}\subset V_R$ and let $V_R^{\mathrm{wedge}}$ be its real linear span under all finite regional boost evolutions of observables. The boost evolution is defined by the regional KG problem with the same reflecting endpoint; its canonical generator is calculated in the next sections. Finite propagation keeps these labels zero in a neighbourhood of the bifurcation point. They may reach the physical AdS endpoint, where they retain the declared reflecting compatibility. Including their finite boost translates makes this label space invariant under the entire boost group. It is still defined entirely within $R$.

Zero extension across $\rho=0$ is therefore smooth for every such label. Write it as $e_R:V_R^{\mathrm{wedge}}\to V_G$. Directly from the integrals,

$$\begin{align}
\sigma_G(e_Rv,e_Rw)&=\sigma_R(v,w),\\
\iota_R:\operatorname{CCR}(V_R^{\mathrm{wedge}},\sigma_R)
&\hookrightarrow\mathfrak A,
&W_R(v)&\longmapsto W_G(e_Rv),\\
\mathfrak A(R)&:=\iota_R\big(\operatorname{CCR}(V_R^{\mathrm{wedge}},\sigma_R)\big).
\end{align}$$

The inverse on its image proves that this global right-local subalgebra is isomorphic to the independently quantized regional wedge algebra. It agrees with sewing the matched label $(0,v_R)$. Zero extension here concerns observable labels, not the physical state or its field configuration. A general label in $V_R$ with nonzero cut jets cannot be zero-extended into $V_G$; it instead requires a matching left label. Thus the full smooth regional algebra $\mathfrak W_R$ and the embedded local algebra $\mathfrak A(R)$ have different declared label domains. Likewise, the two local wedge algebras alone do not generate every smooth global Weyl label in the universal $C^*$ norm. Indeed, $W_G(f,g)\mapsto e^{i\lambda f(0)}W_G(f,g)$ preserves the Weyl relations and defines an automorphism for each real $\lambda$. It fixes both local wedge algebras pointwise but moves a global generator with $f(0)\ne0$. Such crossing labels occur in the matched construction above.

Only after these algebra maps are defined do we choose $\omega_G$ and set $\omega_R=\omega_G\circ\iota_R$, or equivalently restrict it to $\mathfrak A(R)$. For the modular statements below the represented algebra is $\mathcal M_R=\pi_G(\mathfrak A(R))''$ in the global vacuum GNS representation. The double commutant is a representation-dependent closure; it is not part of the abstract sewing isomorphism.

Verified: Mathematica checked the regional action variation, the Hamiltonian contraction and Poisson signs, and the split Cauchy pairing on all 16 pairs of the test functions $\cos^2\rho\sin^n\rho$, $n=0,\ldots,3$, with zero residuals. It also checked the boost transpose integration-by-parts identity and preservation of the even reflecting expansion by the spatial KG operator through order $s^6$. The general sewing proof is the Cauchy-data argument above, not an inference from these finite checks.

Assumptions: the free $\Delta=2$ scalar, the stated smooth reflecting endpoint domain, well-posed regional/global reflecting evolution, and matching of all cut jets. Not verified: an extension to arbitrary independently completed horizon data, quantization of the whole smooth Hamiltonian algebra, or a sharp continuum Hilbert-space tensor factorization.

## vacuum

the Hamiltonian generated by global time translation

$$\begin{align}
H_{G} & =\dfrac{1}{2} \int _{-\pi/2}^{\pi/2}\mathrm{d}\rho(p^{2}+q'^{2}+a\sec ^{2}\rho q^{2})
\end{align}$$

let $\displaystyle{A_{\Delta}=-\partial _{\rho}^{2}+a\sec ^{2}\rho}$ with $\displaystyle{\phi=\mathcal{O}(\cos ^{\Delta}\rho)}$, and $\displaystyle{h=A_{\Delta}^{1/2}}$. the global pure quasifree ground state $\displaystyle{\omega _{G}:\mathfrak{A}\to \mathbb{C}}$ is defined as the equal-time covariance

$$\begin{align}
\omega _{G}(qq) & =\dfrac{1}{2}h^{-1}, & \omega _{G}(pp) & =\dfrac{1}{2}h, & \dfrac{1}{2}\omega _{G}(qp+pq) & =0
\end{align}$$

---

classical evolution is generated by

$$\begin{align}
q(t) & =q(0)\cos(ht)+p(0)h^{-1}\sin(ht)
\end{align}$$

define creation and annihilation operators

$$\begin{align}
a & =\dfrac{1}{\sqrt{ 2 }}\left(h^{1/2}q+ih^{-1/2}p\right)
\end{align}$$

which is equivalent to choose the complex structure on $\displaystyle{\mathcal{P}}$

$$\begin{align}
J_{G}(q,p) & =(-h^{-1}p,hq)
\end{align}$$

under this complex structure, we have

$$\begin{align}
\braket{ qq }_{G}  & =\dfrac{1}{2}h^{-1} \\
\braket{ pp }_{G}  & =\dfrac{1}{2}h \\
\dfrac{1}{2}\braket{ qp+pq }_{G}  & =0
\end{align}$$

and $\displaystyle{\omega _{G}}$ above is an analog of the oscillator ground state in quantum mechanics.

---

## 3. “Trace 掉左侧”在这里是什么操作

连续理论的定义是

$$\begin{align}
\omega_R=\omega_G|_{\mathfrak A(R)}.
\end{align}$$

对右侧的紧支撑 labels，将其零延拓到全切片计算上面的 $X_G,P_G$，便得到 $X_R,P_R$。形式上写为

$$
\Gamma_R=
\begin{pmatrix}X_R&0\\0&P_R\end{pmatrix},\qquad
X_R=\left.\frac12A_\Delta^{-1/2}\right|_{R\times R},\quad
P_R=\left.\frac12A_\Delta^{1/2}\right|_{R\times R}.
$$

这是 global covariance 的限制。先给半区间加 Dirichlet 条件、再取它自己的 ground state，会得到另一个态。这里也不取 covariance 的 Schur complement；后者对应另一种条件化操作。

若需要字面意义的 $\operatorname{Tr}_L$，可以使用已有的 [factorizing global Cauchy regulator](<../../03-geometric-cuts-and-gauge-data/null-and-rindler/ads2-rindler regulated partial trace.md>)。有限格点上有 canonical pairs $(Q_j,P_j)$ 和

$$\begin{align}
\rho_R^{(N)}=\operatorname{Tr}_L|0_G^{(N)}\rangle\langle0_G^{(N)}|, \qquad \Gamma_R^{(N)}=(\Gamma_G^{(N)})_{RR}.
\end{align}$$

对 $\Gamma_R^{(N)}$ 做 symplectic diagonalization，得到 Williamson eigenvalues $\nu_j\geq\tfrac12$。每个 mixed oscillator 的模频率是

$$\begin{align}
\epsilon_j=\log\frac{\nu_j+1/2}{\nu_j-1/2},\qquad \rho_j=(1-e^{-\epsilon_j})e^{-\epsilon_j c_j^\dagger c_j}.
\end{align}$$

因此，“先取 global ground state，再忽略 L，再求模 Hamiltonian”是三个明确的 canonical 操作。接下来需要计算这个模型实际给出的 $\nu$，才能知道模流是什么。

## 4. 为什么 Boost 是右侧的 Hamiltonian Flow

保持右 wedge 的 Killing field 为

$$\begin{align}
\zeta=\sin\rho\cos t\,\partial_t +\cos\rho\sin t\,\partial_\rho =-U\partial_U+V\partial_V.
\end{align}$$

在 $R$ 内令

$$\begin{align}
X^{-1}=Lr,\quad X^0=L\sqrt{r^2-1}\sinh\eta,\quad X^1=L\sqrt{r^2-1}\cosh\eta,
\end{align}$$

则 $\zeta=\partial_\eta$，且

$$\begin{align}
ds^2=L^2\left[-(r^2-1)d\eta^2+\frac{dr^2}{r^2-1}\right],\qquad r>1.
\end{align}$$

在 $t=0$，$r=\sec\rho$、$\zeta=\sin\rho\,\partial_t$。对应的右侧 canonical charge 是

$$\begin{align}
H_R^{\mathrm{boost}}= \frac12\int_0^{\pi/2}d\rho\,\sin\rho \left[p^2+(q')^2+a\sec^2\rho\,q^2\right].
\end{align}$$

直接变分可见它为何自然地留在右侧：

$$\begin{align}
\delta H_R^{\mathrm{boost}} =\int_0^{\pi/2}d\rho\, \left\{\sin\rho\,p\,\delta p+ \left[-\partial_\rho(\sin\rho\,q')+a\sin\rho\sec^2\rho\,q\right]\delta q\right\} +[\sin\rho\,q'\delta q]_0^{\pi/2}.
\end{align}$$

物理端点由标准 falloff 消去；在光滑穿越 bifurcation point 的数据上，切口项因 $\sin0=0$ 消去。其 Hamiltonian 向量场为

$$\begin{align}
X_Rq=\sin\rho\,p,\qquad X_Rp=\partial_\rho(\sin\rho\,q')-a\sin\rho\sec^2\rho\,q,
\end{align}$$

恰好是 Killing boost 对解的作用。对区域紧支撑数据，流的完整性也由保持 $R$ 的几何 boost 保证。

相反，仅把 $H_G$ 的积分范围截到右半边，会留下

$$\begin{align}
\delta H_{G,\mathrm{cut},R} =\text{bulk terms}-q'(0)\delta q(0).
\end{align}$$

在已拼接的体系中，这一项与左侧抵消。忽略左侧后，它仍需接口数据；不能由这个截断积分推出固定 wedge 上完整的 global-time flow。对远离切口的 labels，当然仍能短时间沿 global time 传播，直到其支撑离开 wedge。

AdS 的共形边界本身保持 $\zeta$：在 $\rho=\pm\pi/2$，法向分量 $\cos\rho\sin t$ 消失，标准 falloff 也保持。因此这个模型直接保有 boost 对称性，无需取墙的位置极限。

## 5. 从 Global Oscillators 看见 Boost

对上面的正频模直接作用，得到

$$\begin{align}
i\mathcal L_\zeta\Phi_n =\frac12\sqrt{(n+1)(n+2\Delta)}\,\Phi_{n+1} +\frac12\sqrt{n(n+2\Delta-1)}\,\Phi_{n-1}.
\end{align}$$

$n=0$ 时最后一项为零。这个变换只混合正频模，因而保持 global vacuum。其 Fock 实现为

$$\begin{align}
B=\sum_{n\geq0}\frac{\sqrt{(n+1)(n+2\Delta)}}2 \left(a_{n+1}^\dagger a_n+a_n^\dagger a_{n+1}\right).
\end{align}$$

这已经把 boost 接到了我们构造的 global canonical oscillators 上：$H_G$ 在 $n$ 基底中对角，$B$ 在相邻能级间作用。两者都湮灭真空。真空的 boost invariance 只给出平稳性；下一步的关联函数才决定温度。

## 6. 实际计算右侧协方差的热因子

现在取 $\Delta=2$。正频 mode sum 给出

$$\begin{align}
G^+(t,\rho;t',\rho')=\frac1{2\pi}Q_1(Z_\epsilon),\qquad Z_\epsilon=\frac{\cos(t-t'-i\epsilon)-\sin\rho\sin\rho'}{\cos\rho\cos\rho'},
\end{align}$$

$$\begin{align}
Q_1(Z)=\frac Z2\log\frac{Z+1}{Z-1}-1.
\end{align}$$

这里的解析支由正频 mode sum 延拓确定；universal cover 上不能每隔 $2\pi$ global time 就重新选支。这个闭式可以直接由 canonical 数据确定：global time 和 boost 的正频作用给出 AdS invariance；KG 方程化为

$$\begin{align}
(Z^2-1)G''+2ZG'-2G=0.
\end{align}$$

标准 falloff 排除另一个解 $Z$。归一化则由模式和确定。例如在 $\rho=\rho'=0$、$t-t'=-i\tau$、$z=e^{-\tau}\in(0,1)$ 时，只有偶数模式贡献，且精确地有

$$\begin{align}
\sum_{j=0}^\infty \frac{4(j+1)^2z^{2j+2}}{\pi(2j+1)(2j+2)(2j+3)} =\frac1{2\pi}\left[ \frac{1+z^2}{2z}\log\frac{1+z}{1-z}-1\right] =\frac1{2\pi}Q_1(\cosh\tau).
\end{align}$$

现在把这个已经构造好的关联函数的两个点放在 $R$。令第一个点为 $(0,r)$，第二个点的 boost time 为 $w=s+iy$，则

$$\begin{align}
F(w):=\omega_G\bigl(\phi(0,r)\phi(w,r')\bigr) =\frac1{2\pi}Q_1\left(c-d\cosh w\right), \quad c=rr',\quad d=\sqrt{r^2-1}\sqrt{r'^2-1}.
\end{align}$$

关键是这个函数在 $0<\operatorname{Im}w<2\pi$ 内解析，并且上下边界给出相反的算符顺序。可以直接检查，而不从“$\cosh$ 有周期”跳到热性：

1. 写 $r=\cosh u,r'=\cosh v$，有 $c-d=\cosh(u-v)\geq1$。
2. $\operatorname{Im}(c-d\cosh(s+iy))=-d\sinh s\sin y$。在开条带内，若这个虚部为零，则 $s=0$ 或 $y=\pi$；两种情形的实部都严格大于 $1$。因此条带内部不会碰到 $Q_1$ 的割线 $[-1,1]$。
3. $y\downarrow0$ 与 $y\uparrow2\pi$ 给出相同的实 $Z$，却从相反方向逼近割线。它们正是两个 Wightman ordering 的边界值。

因此，对 smeared fields $A,B\in\mathfrak A(R)$，以 $\beta_s$ 表示 boost automorphism，有

$$\begin{align}
F_{A,B}(s)=\omega_R(A\beta_s(B)),\qquad F_{A,B}(s+2\pi i)=\omega_R(\beta_s(B)A).
\end{align}$$

这是 inverse temperature $2\pi$ 的 KMS 条件。上述点场公式理解为分布边界值；smearing 后，Gaussian/Weyl 公式把二点函数的条件延拓到区域 Weyl 态。复时间在此仅用于检验 canonical 二点函数的解析性质，没有引入积分权重或新的态。

为了把它写回 oscillators，取 $x=\operatorname{arccoth}r\in(0,\infty)$。右侧方程的空间算子为

$$\begin{align}
A_R^{\mathrm{boost}}=-\partial_x^2+2\operatorname{csch}^2x, \qquad \psi_\kappa(x)=\sqrt{\frac2\pi} \frac{\coth x\sin(\kappa x)-\kappa\cos(\kappa x)}{\sqrt{1+\kappa^2}}.
\end{align}$$

$\psi_\kappa$ 在 AdS 端点 $x=0$ 按 $x^2$ 衰减，在 horizon $x\to\infty$ 是归一化的 scattering wave，满足 $\int_0^\infty\psi_\kappa\psi_{\kappa'}dx=\delta(\kappa-\kappa')$。用 $u_\kappa=e^{-i\kappa\eta}\psi_\kappa/\sqrt{2\kappa}$ 定义右侧的 $b_\kappa$，则

$$\begin{align}
[b_\kappa,b_{\kappa'}^\dagger]=\delta(\kappa-\kappa'),\qquad \beta_s(b_\kappa)=e^{-i\kappa s}b_\kappa.
\end{align}$$

平稳性给出 $\omega_R(bb)=0$ 以及对角的 $\omega_R(b^\dagger b)$。将 $A=b_\kappa^\dagger,B=b_{\kappa'}$ 代入刚才从 mode sum 得到的 KMS 条件，再使用 CCR，就有

$$\begin{align}
e^{2\pi\kappa}n_\kappa=n_\kappa+1, \qquad \omega_R(b_\kappa^\dagger b_{\kappa'}) =\frac{\delta(\kappa-\kappa')}{e^{2\pi\kappa}-1}.
\end{align}$$

这些是连续谱的 smeared kernel identities，不能把单个 $\kappa$ 当作独立的正规化 oscillator 态。它们给出连续谱版本的 covariance 和模频率：

$$\begin{align}
\nu_\kappa=\frac12\coth(\pi\kappa),\qquad \epsilon_\kappa=\log\frac{\nu_\kappa+1/2}{\nu_\kappa-1/2}=2\pi\kappa.
\end{align}$$

热因子至此已由 global vacuum covariance 决定。

## 7. 模流，以及 Global Time 留下了什么

采用 $\sigma_\lambda(A)=\Delta_R^{i\lambda}A\Delta_R^{-i\lambda}$ 的约定，KMS 唯一性在真空的标准 wedge 表示中给出

$$\begin{align}
\sigma_\lambda^{\omega_R}=\beta_{-2\pi\lambda}.
\end{align}$$

负号来自这个约定：有限维中 $\rho\propto e^{-2\pi H}$，故 $\rho^{i\lambda}A\rho^{-i\lambda}=e^{-2\pi i\lambda H}Ae^{2\pi i\lambda H}$。

常用的右侧 charge 写法是

$$\begin{align}
K_R^{\mathrm{mod}}\ \widehat{=}\ 2\pi H_R^{\mathrm{boost}}+\text{constant} =2\pi\int_0^{\pi/2}\sin\rho\,T_{tt}(0,\rho)\,d\rho+\text{constant}.
\end{align}$$

$\widehat{=}$ 在这里表示模自同构的生成作用。连续理论不以一个 trace-class 的 $\rho_R=e^{-K_R}/Z$ 为定义，也不在 global Fock space 上假设孤立的 sharp $K_R$ 算子。真正的模算子作用于整个真空 GNS 空间：

$$\begin{align}
\Delta_R=e^{-2\pi B},\qquad B=H_R^{\mathrm{boost}}-H_L^{\mathrm{boost}},
\end{align}$$

其中 $B$ 是第 5 节的完整 boost generator；最后的左右 charge 分拆按其生成作用理解，$H_L^{\mathrm{boost}}$ 使用左侧向未来的 Rindler time。标准性使用自由场真空对完整 wedge 的 cyclic/separating 性质。

原来的 global time 则仍由

$$\begin{align}
H_G=\int_{-\pi/2}^{\pi/2}T_{tt}\,d\rho
\end{align}$$

生成。它与带 $\sin\rho$ 权重的 boost 不同。若 $\alpha_s$ 表示 global time translation，那么

$$\begin{align}
(\omega_G\circ\alpha_s)|_{\mathfrak A(R)}=\omega_R
\end{align}$$

只说明 global vacuum 的右侧观测统计不随 global time 改变；一般并没有 $\alpha_s(\mathfrak A(R))=\mathfrak A(R)$，而是移动到了 $\mathfrak A(g_sR)$。因此对任意态的固定右侧动力学，不能从“trace 掉 L”自动得到一个由 $H_G$ 降下来的自同构群。

本例中能够独立留在右侧、并由限制态重新确定的流，是保持 wedge 的 boost。其几何形状来自 regional Hamiltonian，其 $2\pi$ 归一化来自 global vacuum 的关联。

## 8. 验证与范围

Verified: [Mathematica checks](<../../verification/numerics/ads2_canonical_modular_mechanism_checks.wl>) 检查了 $\Delta=2$ 的 KG 模、boost ladder（$n=0,\ldots,4$）、KG 归一化（$n=0,\ldots,3$）、charge 变分、坐标生成元、径向方程、端点展开、$Q_1$ 方程、上面的精确原点模式和，以及 KMS/Williamson oscillator 恒等式。15 组符号残差全为零。

两个不同位置的 canonical global mode sum 在保留 512 模时，与 $Q_1/(2\pi)$ 的绝对差分别为 $1.35\times10^{-31}$ 和 $1.51\times10^{-31}$。这是具体点的收敛检查，不替代上述解析识别。

另在 $r=2,r'=3,s=1/2$，对 $\operatorname{Im}w=\pi/3,\pi,5\pi/3$ 积分右侧 scattering-mode covariance 至 $\kappa=60$，与同一个 $Q_1$ 核比较；三例绝对差均小于 $10^{-29}$，解析尾界也均小于 $1.85\times10^{-29}$。这项检查使用已推导的 Planck 权重，检验径向归一化与 covariance 重建，不充当热性的独立证明。

Assumptions: 自由实标量、global universal cover、标准 Friedrichs falloff、compatible null/global continuation、光滑区域 smearings，以及完整 wedge 的真空标准表示。显式 KMS 计算取 $\Delta=2$；一般 $\Delta$ 的延拓见已有 reconstruction 笔记。

Not verified: 本文不证明有限 regulator 的整个 modular kernel/group 收敛到 boost，也不构造 sharp continuum partial trace。已有 [discrete spectral audit](<../../03-geometric-cuts-and-gauge-data/null-and-rindler/ads2-rindler discrete spectral Bogoliubov.md>) 中，共用 Ritz 数据强制闭合的有限矩阵检验仍只是有限代数一致性，不能代替独立的连续极限证据。

上述推导与正能量 AdS 场的解析性及 AdS Unruh 效应的通常框架相容；一般背景参见 [Bros–Epstein–Moschella](https://arxiv.org/abs/hep-th/0111255) 和 [Buchholz–Summers](https://arxiv.org/abs/math-ph/0407011)。本例的热因子使用的是本文显示的 canonical mode sum 与 KMS 边界值计算。
