## exam 1

一、(30 分) 考虑 $\displaystyle{d=4}$ 维时空两个实标量场耦合的理论，拉氏量为

$$\begin{align}
\mathcal{L} & =\dfrac{1}{2}(\partial _{\mu}\Phi _{0})^{2}-\dfrac{1}{2}M_{0}^{2}\Phi _{0}^{2}+\dfrac{1}{2}(\partial _{\mu}\phi _{0})^{2}-\dfrac{1}{2}m_{0}^{2}\phi_{0}^{2}-\dfrac{1}{2}\lambda_{0}\Phi _{0}\phi _{0}^{2}
\end{align}$$

其中 $\displaystyle{M_{0},m_{0}}$ 分别为标量场 $\displaystyle{\Phi_{0},\phi_{0}}$ 的裸质量并且 $\displaystyle{M_{0}>2m_{0}}$ ：
1. （5 分）论证该理论是（超）可重正的；
sol. In $d=4$, $[\Phi_{0}]=[\phi_{0}]=1$, hence the interaction
$\lambda_{0}\Phi_{0}\phi_{0}^{2}$ has dimension $3$ and

$$\begin{align}
[\lambda_{0}] & =1 .
\end{align}$$

The coupling has positive mass dimension, so the theory is super-renormalizable.
1. （5 分）写出该理论（动量空间）的费曼规则；
sol. $$\begin{align}
D_{0}(p^{2},M_{0}) & =\dfrac{i}{p^{2}-M_{0}^{2}+i\varepsilon} \\
D_{0}(p^{2},m_{0}) & =\dfrac{i}{p^{2}-m_{0}^{2}+i\varepsilon} \\
-i\lambda_{0}
\end{align}$$
1. （10 分）画出单圈水平上的自能图和顶角图，并讨论它们的发散性；
sol. The one-loop two-point self-energy diagrams are bubble diagrams with two internal scalar propagators. Their superficial degree of divergence is

$$\begin{align}
D_{\mathrm{self}} & =4-2\times 2=0,
\end{align}$$

so the $\Phi$ and $\phi$ self-energies are logarithmically divergent by power counting. The one-loop correction to the $\Phi\phi\phi$ vertex is a triangle diagram with three internal scalar propagators, so

$$\begin{align}
D_{\mathrm{vertex}} & =4-2\times 3=-2,
\end{align}$$

and the vertex correction is superficially convergent. There can also be a one-point tadpole for $\Phi$, which corresponds to a local linear counterterm; it does not change the conclusion that only finitely many counterterms are needed.
1. （5 分）如果 $\displaystyle{\Phi}$ 的自能为 $\displaystyle{-i\Sigma(p^{2})}$，证明其动量空间的全传播子为

$$\begin{align}
D(p^{2},M_{0}) & =\dfrac{i}{p^{2}-M_{0}^{2}-\Sigma(p^{2})+i\varepsilon}
\end{align}$$

sol. by Dyson equation for propagator:

$$\begin{align}
D^{-1}-D_{0}^{-1} & =i\Sigma(p^{2}) \\
\implies D(p^{2},M_{0}) & =\dfrac{i}{p^{2}-M_{0}^{2}-\Sigma(p^{2})+i\varepsilon}
\end{align}$$

1. （5 分）如果 $\displaystyle{\Sigma(p^{2})}$ 有虚部（在 $\displaystyle{M_{0}>2m_{0}}$ 时是这样的，你们可以考试后具体计算单圈图来验证） ， 即 $\displaystyle{\Sigma(p^{2})=\mathrm{Re}\Sigma(p^{2})+i\mathrm{Im}\Sigma(p^{2})}$， 证明 $\displaystyle{\Phi}$ 场的在壳波函数重正化常数、物理质量分别为$$\begin{align}Z & =1+\dfrac{\mathrm{d}}{\mathrm{d}p^{2}}\mathrm{Re}\Sigma(p^{2})|_{p^{2}=M^{2}}, & M^{2}=M_{0}^{2}+\mathrm{Re}\Sigma(M^{2})\end{align}$$而且全传播子可以写作$$\begin{align}D(p^{2},M) & =\dfrac{iZ}{p^{2}-M^{2}-iZ\mathrm{Im}\Sigma(p^{2})}\end{align}$$（注*：根据 $\displaystyle{\Phi\to \Phi}$ 的向前散射振幅的定义有 $\displaystyle{M(\Phi\to \Phi)=-Z\Sigma(p^{2}=M^{2})}$，注意这里的 $\displaystyle{Z}$ 是LSZ 约化公式要求的。再根据光学定理有 $$\begin{align}2\mathrm{Im}M(\Phi\to \Phi) & =\sum _{f}\int \mathrm{d}\Phi _{f}|M(\Phi\to f)|^{2}=2M\Gamma _{\text{tot}}\end{align}$$这里 $\displaystyle{f}$ 代表所有可能的 $\displaystyle{\Phi}$ 的衰变末态，所以 $\displaystyle{\Gamma _{\text{tot}}}$ 是 $\displaystyle{\Phi}$ 粒子的总宽度。在窄共振近似（$\displaystyle{M\gg \Gamma _{\text{tot}}}$）下，可以取 $\displaystyle{\mathrm{Im}\Sigma(p^{2})\approx \mathrm{Im}\Sigma(p^{2}=M^{2})}$, 则有$$\begin{align}D(p^{2},M) & \propto \dfrac{i}{p^{2}-M^{2}+iM\Gamma _{\text{tot}}}\end{align}$$这是我们在粒子物理中熟悉的关于共振态的Breit-Wigner 公式。）
sol. From

$$\begin{align}
D^{-1}(p^{2})|_{p^{2}=M^{2}} = (p^{2}-M_{0}^{2}-\mathrm{Re}\Sigma(p^{2}))|_{p^{2}=M^{2}} \stackrel{!}{=} 0
\end{align}$$

we have

$$\begin{align}
M^{2} & =M_{0}^{2}+\mathrm{Re}\Sigma(M^{2}).
\end{align}$$

Expanding the real part of the self-energy around $p^{2}=M^{2}$,

$$\begin{align}
\mathrm{Re}\Sigma(p^{2}) & =\mathrm{Re}\Sigma(M^{2})+(p^{2}-M^{2})\dfrac{\mathrm{d}}{\mathrm{d}p^{2}}\mathrm{Re}\Sigma(p^{2})|_{p^{2}=M^{2}}+\cdots .
\end{align}$$

then we have

$$\begin{align}
p^{2}-M_{0}^{2}-\mathrm{Re}\Sigma(p^{2}) & =\left(1-\dfrac{\mathrm{d}}{\mathrm{d}p^{2}}\mathrm{Re}\Sigma(p^{2})|_{p^{2}=M^{2}}\right)(p^{2}-M^{2})+\cdots \\
& =Z^{-1}(p^{2}-M^{2})+\cdots
\end{align}$$

where

$$\begin{align}
Z & =\left(1-\dfrac{\mathrm{d}}{\mathrm{d}p^{2}}\mathrm{Re}\Sigma(p^{2})|_{p^{2}=M^{2}}\right)^{-1} \simeq 1+\dfrac{\mathrm{d}}{\mathrm{d}p^{2}}\mathrm{Re}\Sigma(p^{2})|_{p^{2}=M^{2}} .
\end{align}$$

this implies that the full propagator can be written as

$$\begin{align}
D(p^{2}) & =\dfrac{iZ}{p^{2}-M^{2}-iZ\mathrm{Im}\Sigma(p^{2})}.
\end{align}$$

The optical theorem gives $-Z\mathrm{Im}\Sigma(M^{2})=M\Gamma_{\text{tot}}$. In the narrow-width approximation we can take $\mathrm{Im}\Sigma(p^{2})\approx \mathrm{Im}\Sigma(M^{2})$, and accordingly

$$\begin{align}
D(p^{2}) & \propto \dfrac{i}{p^{2}-M^{2}+iM\Gamma _{\text{tot}}}.
\end{align}$$

二、 （30 分） $\displaystyle{\mathrm{SU}(2)}$ 非阿贝尔纯规范理论的拉氏量为

$$\begin{align}
\mathcal{L} & =-\dfrac{1}{2}\mathrm{Tr}F_{\mu \nu}F^{\mu \nu}
\end{align}$$

其中 $\displaystyle{F_{\mu \nu}}$ 为规范场强张量，

$$\begin{align}
F_{\mu \nu} & =F^{a}_{\mu \nu}t^{a}, & A_{\mu} & =A_{\mu}^{a}t^{a}, & t^{a} & =\dfrac{\sigma ^{a}}{2}, & [t^{a},t^{b}] & =i\varepsilon ^{abc}t^{c} \\
F^{a}_{\mu \nu} & =\partial _{\mu}A^{a}_{\nu}-\partial _{\nu}A^{a}_{\mu}+g\varepsilon ^{abc}A_{\mu}^{b}A^{c}_{\nu}
\end{align}$$

1. （5 分）写出规范场 $\displaystyle{A_{\mu}}$ 和 场强张量 $\displaystyle{F_{\mu \nu}}$ 在定域规范变换 $\displaystyle{V(x)=e^{i\theta ^{a}t^{a}}}$ 下的变换性质。如果该变换为无穷小变换，即 $\displaystyle{\theta ^{a}}$ 为无穷小量，请分别写出 $\displaystyle{A_{\mu}}$ 和 $\displaystyle{F_{\mu \nu}}$ 在该无穷小变换下的变化量。
sol. $$\begin{align}
A_{\mu} & \to V(A_{\mu}-\dfrac{i}{g}\partial _{\mu})V^{\dagger} \\
F_{\mu \nu} & \to V F_{\mu \nu}V^{\dagger}
\end{align}$$
对无穷小变换，$\displaystyle{V=e^{i\theta}\approx 1+i\theta}$，那么：

$$\begin{align}
\delta A_{\mu} & =i[\theta,A_{\mu}]-\dfrac{1}{g}\partial _{\mu}\theta, \\
\delta F_{\mu \nu} & =i[\theta,F_{\mu \nu}].
\end{align}$$

1. （5 分）如果实标量场 $\displaystyle{\phi=\left\{\phi ^{a}|a=1,2,3\right\}}$ 是 $\displaystyle{\mathrm{SU}(2)}$ 群的自伴表示，请写出其协变微商 $\displaystyle{D_{\mu}\phi}$ 的具体表达式和 $\displaystyle{\phi}$ 场在有规范耦合时的拉氏量。
sol. $$\begin{align}
D_{\mu}\phi ^{a} & =\partial _{\mu}\phi ^{a}+g\varepsilon ^{abc}A^{b}_{\mu}\phi ^{c}, \\
\mathcal{L}_{\phi} & =\dfrac{1}{2}(D_{\mu}\phi ^{a})(D^{\mu}\phi ^{a})-V(\phi) \\
 & =\dfrac{1}{2}\partial _{\mu}\phi ^{a}\partial ^{\mu}\phi ^{a}+g\varepsilon ^{abc}A_{\mu}^{a}\phi ^{b}\partial ^{\mu}\phi ^{c}+\dfrac{1}{2}g^{2}\left(A_{\mu}^{a}A^{a,\mu}\phi ^{b}\phi ^{b}-(A_{\mu}^{a}\phi ^{a})^{2}\right)-V(\phi).
\end{align}$$
1. (10 分) 如果 $\displaystyle{\phi}$ 的自相互作用势为$$\begin{align}V(\phi) & =-\dfrac{1}{2}\mu ^{2}\phi ^{a}\phi ^{a}+\dfrac{1}{4}\lambda(\phi ^{a}\phi ^{a})^{2}\end{align}$$请讨论在存在标量场-规范场耦合时，规范对称性的自发破缺情形，如破缺的对称性、剩余的对称性、对称性破缺后规范玻色子的质量、标量粒子的质量等。
sol. The minima satisfy

$$\begin{align}
\phi ^{a}\phi ^{a} & =v^{2}, & v^{2} & =\dfrac{\mu ^{2}}{\lambda}.
\end{align}$$

By an $\mathrm{SU}(2)$ gauge rotation we may choose

$$\begin{align}
\langle \phi ^{a}\rangle & =(0,0,v).
\end{align}$$

The generator $t^{3}$ leaves this vacuum invariant, while $t^{1},t^{2}$ are broken. Thus

$$\begin{align}
\mathrm{SU}(2) & \longrightarrow \mathrm{U}(1).
\end{align}$$

In unitary gauge one writes $\phi=(0,0,v+h)$. The scalar kinetic term gives

$$\begin{align}
\dfrac{1}{2}(D_{\mu}\phi ^{a})(D^{\mu}\phi ^{a}) & \supset \dfrac{1}{2}g^{2}v^{2}\left(A_{\mu}^{1}A^{1,\mu}+A_{\mu}^{2}A^{2,\mu}\right).
\end{align}$$

Therefore $A_{\mu}^{1}$ and $A_{\mu}^{2}$ acquire the same mass

$$\begin{align}
M_{W}^{2} & =g^{2}v^{2},
\end{align}$$

while $A_{\mu}^{3}$ remains massless and is the gauge boson of the unbroken $\mathrm{U}(1)$. The two Goldstone fields are eaten by the two massive gauge bosons. The radial scalar has

$$\begin{align}
m_{h}^{2} & =2\lambda v^{2}=2\mu ^{2}.
\end{align}$$

1. （10 分）什么是 $\displaystyle{R_{\xi}}$ 规范？请在 $\displaystyle{R_{\xi}}$ 规范下进行 Faddeev-Popov 路径积分量子化，并推导出规范玻色子和鬼粒子的传播子。
sol. In the broken phase, an $R_{\xi}$ gauge is chosen so that the gauge-fixing term cancels the quadratic mixing between the gauge bosons and the Goldstone fields. If $\chi^{1},\chi^{2}$ denote the two Goldstone fields, a convenient choice is

$$\begin{align}
G^{i} & =\partial _{\mu}A^{i,\mu}+\xi M_{W}\chi^{i},\qquad i=1,2,\\
G^{3} & =\partial _{\mu}A^{3,\mu},
\end{align}$$

with

$$\begin{align}
\mathcal{L}_{\mathrm{gf}} & =-\dfrac{1}{2\xi}G^{a}G^{a}.
\end{align}$$

The Faddeev-Popov determinant is

$$\begin{align}
\Delta_{\mathrm{FP}}[A,\phi] & =\det \left(\dfrac{\delta G^{a}[A^{\alpha},\phi^{\alpha}]}{\delta \alpha ^{b}}\right),
\end{align}$$

and exponentiating it gives the ghost Lagrangian. Its quadratic part is

$$\begin{align}
\mathcal{L}_{\mathrm{gh}}^{(2)} & =\bar{c}^{i}(-\partial ^{2}-\xi M_{W}^{2})c^{i} +\bar{c}^{3}(-\partial ^{2})c^{3},\qquad i=1,2.
\end{align}$$

Thus the Goldstone and ghost fields in the broken directions have mass squared $\xi M_{W}^{2}$, while the unbroken ghost remains massless:

$$\begin{align}
D_{c}^{ij}(p) & =\dfrac{i\delta ^{ij}}{p^{2}-\xi M_{W}^{2}+i\varepsilon},\qquad i,j=1,2,\\
D_{c}^{33}(p) & =\dfrac{i}{p^{2}+i\varepsilon}.
\end{align}$$

The massive gauge boson propagator is

$$\begin{align}
D_{\mu \nu}^{ij}(p) & =\dfrac{-i\delta ^{ij}}{p^{2}-M_{W}^{2}+i\varepsilon} \left[g_{\mu \nu}-\dfrac{(1-\xi)p_{\mu}p_{\nu}}{p^{2}-\xi M_{W}^{2}+i\varepsilon}\right], \qquad i,j=1,2,
\end{align}$$

and the unbroken massless gauge boson has the usual covariant-gauge propagator

$$\begin{align}
D_{\mu \nu}^{33}(p) & =\dfrac{-i}{p^{2}+i\varepsilon}\left[g_{\mu \nu}-(1-\xi)\dfrac{p_{\mu}p_{\nu}}{p^{2}+i\varepsilon}\right].
\end{align}$$

三、(20 分) 在引入拉格朗日乘子时的 QED 的等效拉氏量为

$$\begin{align}
\mathcal{L}_{\text{eff}} & =-\dfrac{1}{4}F_{\mu \nu}F^{\mu \nu}-\dfrac{1}{2\xi}(\partial _{\mu}A^{\mu})^{2}+\bar{\psi}(i\gamma \cdot D-m_{0})\psi
\end{align}$$

如果令 $\displaystyle{-i\Sigma(\gamma \cdot p)}$ 表示费米场的自能（单粒子不可约图贡献，1PI），动量空间费米子的全传播子为

$$\begin{align}
\tilde{S}_{f}(p) & =\dfrac{i}{\gamma \cdot p-m_{0}-\Sigma(\gamma \cdot p)+i\varepsilon}
\end{align}$$

费米子的物理质量 $\displaystyle{m}$ 可以定义为

$$\begin{align}
m=m_{0}+\Sigma(m)
\end{align}$$

 1. (5 分) 证明：当 $\displaystyle{m_{0}=0}$ 时（手征极限）$\displaystyle{\mathcal{L}_{\text{eff}}}$ 在轴变换 $$\begin{align}\psi\to e^{i\alpha \gamma_{5}},\bar{\psi}\to \bar{\psi}e^{i\alpha \gamma_{5}}\end{align}$$下是不变的。
sol.

$$\begin{align}
\delta _{\alpha} \mathcal{L}_{\text{eff}}|_{m_{0}=0} & =\delta _{\alpha}\bar{\psi}(i\gamma \cdot D)\psi+\bar{\psi}(i\gamma \cdot D)\delta _{\alpha}\psi \\
 & =-\alpha \bar{\psi}\left\{\gamma_{5},\gamma ^{\mu}\right\}D_{\mu}\psi=0.
\end{align}$$

1. (5 分) 证明：经典情形下，在定域变换$$\begin{align}\psi\to e^{i\alpha(x)\gamma_{5}}\psi,\bar{\psi}\to \bar{\psi}e^{i\alpha(x)\gamma_{5}}\end{align}$$下（$\displaystyle{\alpha(x)}$ 为无穷小量），根据最小作用量原理 $\displaystyle{\delta S}$ 可以得到如下 PCAC关系$$\begin{align}\partial _{\mu}j ^{\mu}_{5}(x) & =2im_{0}j_{5}(x)\end{align}$$其中 $\displaystyle{j_{5}^{\mu}=\bar{\psi}\gamma ^{\mu}\gamma _{5}\psi,j_{5}=\bar{\psi}\gamma_{5}\psi}$ 分别为轴矢流和赝标量流。
sol.

$$\begin{align}
\delta _{\alpha}\mathcal{L}_{\text{eff}} & =-\alpha \bar{\psi}\left\{\gamma _{5},\gamma ^{\mu}\right\}D_{\mu}\psi-\partial _{\mu}\alpha\bar{\psi}\gamma ^{\mu}\gamma ^{5}\psi-2i\alpha(x)m_{0}\bar{\psi}\gamma_{5}\psi \\
 & =\alpha\left(\partial _{\mu}j_{5}^{\mu}-2im_{0}j_{5}\right)+\text{(boundary terms)}=0 \\
\implies \partial _{\mu}j_{5}^{\mu} & =2im_{0}j_{5}
\end{align}$$

1. (5 分）QED 的生成泛函为$$\begin{align}Z[J_{\mu},\eta,\bar{\eta}] & =\int \mathcal{D}A\mathcal{D}\psi \mathcal{D}\bar{\psi}e^{i \int \mathrm{d}^{4}x\left(\mathcal{L}_{\text{eff}}+J_{\mu}A^{\mu}+\bar{\eta}\psi+\bar{\psi}\eta\right)}\end{align}$$当对场量做变换 $\displaystyle{\psi\to e^{i\alpha(x)\gamma_{5}}\psi,\bar{\psi}\to \bar{\psi}e^{i\alpha(x)\gamma_{5}}}$ 时（考虑无穷小变换），生成泛函是不变的，即积分测度、作用量和源项的变化正好抵消。如果已知积分测度在此变换下的变换形式为$$\begin{align}\mathcal{D}\psi \mathcal{D}\bar{\psi} & \to \mathcal{D}\psi \mathcal{D}\bar{\psi} e^{-\frac{ie^{2}}{16\pi ^{2}}\int \mathrm{d}^{4}x\alpha(x)\varepsilon ^{\mu \nu \rho \sigma}F_{\mu \nu}F_{\rho \sigma}}\end{align}$$请证明轴矢流满足的 Ward 恒等式$$\begin{align}\partial _{\mu}\braket{ j_{5}^{\mu}(x)\psi(x_{1})\bar{\psi}(x_{2}) }  & =2im\braket{ j_{5}(x)\psi(x_{1})\bar{\psi}(x_{2}) }  \\& +\dfrac{e^{2}}{16\pi ^{2}}\varepsilon ^{\mu \nu \rho \sigma}\braket{ F_{\mu \nu}(x)F_{\rho \sigma}(x)\psi(x_{1})\bar{\psi}(x_{2}) }  \\& -\delta(x-x_{1})\gamma_{5}\braket{ \psi(x)\bar{\psi}(x_{2}) } -\delta(x-x_{2})\braket{ \psi(x_{1})\bar{\psi}(x) } \gamma_{5}\end{align}$$这是反常的轴矢流Ward 恒等式。
sol. consider

$$\begin{align}
\int \mathcal{D}A\mathcal{D}\psi \mathcal{D}\bar{\psi} e^{iS_{\text{eff}}[A,\psi,\bar{\psi}]}\psi(x_{1})\bar{\psi}(x_{2}) & =\int \mathcal{D}A'\mathcal{D}\psi'\mathcal{D}\bar{\psi}'e^{iS_{\text{eff}}[A',\psi',\bar{\psi}']}\psi'(x_{1})\bar{\psi}'(x_{2}) \\
 & =\int \mathcal{D}A\mathcal{D}\psi \mathcal{D}\bar{\psi}\left(1-\dfrac{ie^{2}}{16\pi ^{2}} \int \mathrm{d}^{4}x\alpha(x)\varepsilon ^{\mu \nu \rho \sigma}F_{\mu \nu}F_{\rho \sigma}\right) \\
 & \times e^{iS_{\text{eff}}[A,\psi,\bar{\psi}]}(1+i \int \mathrm{d}^{4}x\alpha(\partial _{\mu}j_{5}^{\mu}-2im_{0}j_{5})) \\
 & \times(1+i\alpha(x_{1})\gamma_{5})\psi(x_{1})\bar{\psi}(x_{2})(1+i\alpha(x_{2})\gamma_{5}) \\
\implies \partial _{\mu}\braket{ j_{5}^{\mu}(x)\psi(x_{1})\bar{\psi}(x_{2}) }  & =2im_{0}\braket{ j_{5}(x)\psi(x_{1})\bar{\psi}(x_{2}) } \\
 & +\dfrac{e^{2}}{16\pi ^{2}}\varepsilon ^{\mu \nu \rho \sigma}\braket{ F_{\mu \nu}F_{\rho \sigma}\psi(x_{1})\bar{\psi}(x_{2}) }  \\
 & -\delta(x-x_{1})\gamma_{5}\braket{ \psi(x)\bar{\psi}(x_{2}) } -\delta(x-x_{2})\braket{ \psi(x_{1})\bar{\psi}(x) } \gamma_{5}
\end{align}$$

1. (5 分）实际上，可以证明反常项满足

$$\begin{align}
\dfrac{e^{2}}{16\pi ^{2}}\varepsilon ^{\mu \nu \rho \sigma}F_{\mu \nu}F_{\rho \sigma} & =\partial _{\mu}K^{\mu}, & K^{\mu}&=\dfrac{e^{2}}{4\pi ^{2}}\varepsilon ^{\mu \nu \rho \sigma}A_{\nu}\partial _{\rho}A_{\sigma}.
\end{align}$$

我们可以引入新的流

$$\begin{align}
\bar{j}_{5}^{\mu} & =j_{5}^{\mu}-K^{\mu}.
\end{align}$$

则上述反常的 Ward 恒等式可以写作

$$\begin{align}
\partial _{\mu}\braket{ \bar{j}_{5}^{\mu}(x)\psi(x_{1})\bar{\psi}(x_{2}) } & =2im_{0}\braket{ j_{5}(x)\psi(x_{1})\bar{\psi}(x_{2}) }  \\
&\quad -\delta(x-x_{1})\gamma_{5}\braket{ \psi(x)\bar{\psi}(x_{2}) } -\delta(x-x_{2})\braket{ \psi(x_{1})\bar{\psi}(x) } \gamma_{5}.
\end{align}$$

做傅里叶变换（从 $\displaystyle{x}$ 点流入 $\displaystyle{q}$, 从 $\displaystyle{x_{2}}$ 点流向 $\displaystyle{x}$ 点的动量为 $\displaystyle{p}$，则从 $\displaystyle{x}$ 流向 $\displaystyle{x_{1}}$ 的动量为 $\displaystyle{p+q}$）有动量空间的 Ward 恒等式

$$\begin{align}
q_{\mu}G^{\mu}_{5,c}(q,p) & =2m_{0}G_{5,c}(q,p)+i\gamma _{5}\tilde{S}_{f}(p)+i\tilde{S}_{f}(p+q)\gamma_{5}.
\end{align}$$

其中 $\displaystyle{G_{5,c}^{\mu},G_{5,c}}$ 分别为 $\displaystyle{\braket{ \bar{j}_{5}^{\mu}(x)\psi(x_{1})\bar{\psi}(x_{2}) },\braket{ j_{5}(x)\psi(x_{1})\bar{\psi}(x_{2}) }}$ 的连通部分的动量空间表达式（非连通部分没有贡献），$\displaystyle{\tilde{S}_{f}}$ 是前面得到的费米子的全传播子。我们知道，连通格林函数可以表示为截腿格林函数和全传播子的乘积。具体而言，

$$\begin{align}
G^{\mu}_{5,c}(q,p) & =\tilde{S}_{f}(p+q)G^{\mu}_{5,amp}\tilde{S}_{f}(p), \\
G_{5,c}(q,p) & =\tilde{S}_{f}(p+q)G_{5,amp}\tilde{S}_{f}(p).
\end{align}$$

则反常的 Ward 恒等式用截腿格林函数表示为

$$\begin{align}
q_{\mu}G^{\mu}_{5,amp}(q,p) & =2m_{0}G_{5,amp}(q,p)+i\tilde{S}^{-1}_{f}(p+q)\gamma _{5}+i\gamma _{5}\tilde{S}_{f}^{-1}(p).
\end{align}$$

利用该 Ward 恒等式证明：费米子质量的辐射修正 $\displaystyle{\Sigma(m)}$ 正比于 $\displaystyle{m_{0}}$ （提示：QED 中，$\displaystyle{G^{\mu}_{5,amp}(q,p)}$ 没有 $\displaystyle{q^{2}=0}$ 的极点，所以在取 $\displaystyle{q_{\mu}\to0}$ 的极限时，$\displaystyle{q_{\mu}G^{\mu}_{5,amp}=0}$）。这个结论的重要物理含义是“费米子质量是相称性重正化的，手征对称性不被辐射修正所破坏”。

sol. Since $\displaystyle{G^{\mu}_{5,amp}(q,p)}$ has no pole at $\displaystyle{q^{2}=0}$, taking the limit $\displaystyle{q_{\mu}\to0}$ gives $\displaystyle{q_{\mu}G^{\mu}_{5,amp}=0}$. Thus

$$\begin{align}
-2m_{0}G_{5,amp}(0,p) & =i\tilde{S}^{-1}_{f}(p)\gamma_{5}+i\gamma _{5}\tilde{S}_{f}^{-1}(p) \\
& =i\left\{\gamma \cdot p-m_{0}-\Sigma(\gamma \cdot p),\gamma_{5}\right\} \\
& =i\left(-2m_{0}\gamma_{5}-\left\{\Sigma(\gamma \cdot p),\gamma_{5}\right\}\right).
\end{align}$$

Therefore $\left\{\Sigma(\gamma \cdot p),\gamma_{5}\right\}$ is proportional to $m_{0}$. By Lorentz invariance,

$$\begin{align}
\Sigma(\gamma\cdot p) & =A(p^{2})\gamma\cdot p+B(p^{2}).
\end{align}$$

Only the scalar part $B(p^{2})$ contributes to the anticommutator with $\gamma_{5}$. Hence the chirality-breaking mass correction is proportional to $m_{0}$; in particular, if $m_{0}=0$, no additive fermion mass is generated:

$$\begin{align}
\Sigma(m) & \propto m_{0}.
\end{align}$$

四、 （20 分）非阿贝尔规范场的单圈重正化
在 $\displaystyle{\mathrm{SU}(3)}$ 非阿贝尔规范理论中，涉及鬼场的拉氏量部分为（重正化微扰论）

$$\begin{align}
\mathcal{L}_{\text{gh}} & =(\partial _{\mu}\bar{c}^{a})\partial ^{\mu}c^{a}-gf^{abc}(\partial _{\mu}\bar{c}^{a})c^{b}A^{c,\mu}
\end{align}$$

相应的抵消项为

$$\begin{align}
\delta \mathcal{L}_{\text{gh}} & =\delta ^{c}_{3}(\partial _{\mu}\bar{c}^{a})\partial ^{\mu}c^{a}-\delta_{1}^{c}gf^{abc}(\partial _{\mu}\bar{c}^{a})c^{b}A^{c,\mu}
\end{align}$$

其中$\displaystyle{\delta _{3}^{c}=Z_{3}^{c}-1}$，$\displaystyle{Z_{3}^{c}}$为鬼场的波函数重正化常数；$\displaystyle{\delta_{1}^{c}=Z_{g}Z_{3}^{c}Z_{3}^{1/2}-1}$，$\displaystyle{Z_{3}}$为规范场的波函数重正化常数，$\displaystyle{Z_{g}}$ 为规范耦合常数 $\displaystyle{g}$ 的重正化常数（定义为 $\displaystyle{g_{0}=Z_{g}\mu ^{\varepsilon}g}$ ）
1. （10 分）在维数正规化下（取 Feynman 规范）计算鬼场的单圈自能修正和鬼场-规范场耦合顶角的单圈修正，得出$\displaystyle{\overline{\mathrm{MS}}}$方案下的抵消项系数 $\displaystyle{\delta _{3}^{c}}$ 和 $\displaystyle{\delta_{1}^{c}}$
sol. The ghost propagator is

$$\begin{align}
D_{c}^{ab}(p) & =\dfrac{i\delta^{ab}}{p^{2}+i\varepsilon},
\end{align}$$

and the ghost-gluon vertex is proportional to $gf^{abc}p_{\mu}$, where $p_{\mu}$ is the momentum carried by the differentiated antighost line. In Feynman gauge, the one-loop ghost self-energy has pole part

$$\begin{align}
i\Pi_{c,\mathrm{div}}^{ab}(p) & =-i\delta ^{ab}p^{2}\dfrac{g^{2}C_{A}}{16\pi ^{2}}\dfrac{1}{2\varepsilon}.
\end{align}$$

The counterterm insertion from $\delta _{3}^{c}(\partial _{\mu}\bar{c}^{a})\partial ^{\mu}c^{a}$ cancels this pole, so

$$\begin{align}
\delta _{3}^{c} & =\dfrac{g^{2}C_{A}}{16\pi ^{2}}\dfrac{1}{2\varepsilon}.
\end{align}$$

The one-loop ghost-gluon vertex correction is proportional to the tree vertex. Its $\overline{\mathrm{MS}}$ counterterm is

$$\begin{align}
\delta _{1}^{c} & =-\dfrac{g^{2}C_{A}}{16\pi ^{2}}\dfrac{1}{2\varepsilon}.
\end{align}$$

For $\mathrm{SU}(3)$, $C_{A}=C_{2}(G)=3$, hence

$$\begin{align}
\delta _{3}^{c}& =\dfrac{3g^{2}}{32\pi ^{2}}\dfrac{1}{\varepsilon},& \delta _{1}^{c}& =-\dfrac{3g^{2}}{32\pi ^{2}}\dfrac{1}{\varepsilon}.
\end{align}$$

1. （10 分）如果已知 $\displaystyle{Z_{3}=1-\dfrac{g^{2}}{16\pi ^{2}} \dfrac{1}{\varepsilon}\left( \dfrac{4}{3}n_{f}C(r)-\dfrac{5}{3}C_{2}(G) \right)}$，其中$\displaystyle{C(r)=\dfrac{1}{2},C_{2}(G)=3}$，利用裸耦合常数 $\displaystyle{g_{0}}$ 满足的重正化群方程计算 $\displaystyle{\beta}$ 函数 $\displaystyle{\beta(g)=\mu\dfrac{\mathrm{d}}{\mathrm{d}\mu}g}$， 从而给出跑动耦合常数 $\displaystyle{g(\mu)}$ 的表达式，并说明非阿贝尔规范理论的渐进自由的含义。可以看出这种计算方式和计算规范场-费米子场耦合及费米自能的单圈修正的结果是相同的。这个结论是由 BRST 对称性保证的，即 BRST 对称性给出 $\displaystyle{\dfrac{Z_{1}}{Z_{2}}=\dfrac{Z_{1}^{c}}{Z_{3}^{c}}=\dfrac{Z_{1}^{3g}}{Z_{3}}=\left( \dfrac{Z_{1}^{4g}}{Z_{3}} \right)^{1/2}}$ 或者$\displaystyle{\delta_{1}-\delta_{2}=\delta_{1}^{c}-\delta_{3}^{c}=\delta_{1}^{3g}-\delta_{3}=\dfrac{1}{2}(\delta_{1}^{4g}-\delta_{3})}$，其物理含义是规范耦合常数的普适性。

sol. From

$$\begin{align}
\delta _{1}^{c} & =Z_{g}Z_{3}^{c}Z_{3}^{1/2}-1,
\end{align}$$

the coupling renormalization constant is, to one loop,

$$\begin{align}
Z_{g}& =1+\delta _{g},& \delta _{g}& =\delta _{1}^{c}-\delta _{3}^{c}-\dfrac{1}{2}\delta _{3}.
\end{align}$$

Using

$$\begin{align}
\delta _{3}& =-\dfrac{g^{2}}{16\pi ^{2}}\dfrac{1}{\varepsilon}\left(\dfrac{4}{3}n_{f}C(r)-\dfrac{5}{3}C_{A}\right)=\dfrac{g^{2}}{16\pi ^{2}}\dfrac{1}{\varepsilon}\left(\dfrac{5}{3}C_{A}-\dfrac{4}{3}n_{f}C(r)\right),
\end{align}$$

we obtain

$$\begin{align}
\delta _{g}& =-\dfrac{g^{2}}{16\pi ^{2}}\dfrac{1}{2\varepsilon}\left(\dfrac{11}{3}C_{A}-\dfrac{4}{3}n_{f}C(r)\right).
\end{align}$$

Thus, with

$$\begin{align}
\beta _{0} & =\dfrac{11}{3}C_{A}-\dfrac{4}{3}n_{f}C(r),
\end{align}$$

the bare coupling

$$\begin{align}
g_{0} & =\mu ^{\varepsilon}Z_{g}g
\end{align}$$

is $\mu$-independent. The corresponding four-dimensional beta function is

$$\begin{align}
\beta(g) & =\mu\dfrac{\mathrm{d}g}{\mathrm{d}\mu}=-\dfrac{\beta _{0}}{16\pi ^{2}}g^{3}+O(g^{5}).
\end{align}$$

For $\mathrm{SU}(3)$ with $C_{A}=3$ and $C(r)=T_{F}=1/2$,

$$\begin{align}
\beta _{0} & =11-\dfrac{2}{3}n_{f},&\beta(g) & =-\dfrac{g^{3}}{16\pi ^{2}}\left(11-\dfrac{2}{3}n_{f}\right)+O(g^{5}).
\end{align}$$

Solving the one-loop RG equation gives

$$\begin{align}
\dfrac{1}{g^{2}(\mu)}& =\dfrac{1}{g^{2}(\mu_{0})}+\dfrac{\beta _{0}}{8\pi ^{2}}\ln \dfrac{\mu}{\mu_{0}},
\end{align}$$

or equivalently

$$\begin{align}
g^{2}(\mu)& =\dfrac{g^{2}(\mu_{0})}{1+\dfrac{\beta _{0}g^{2}(\mu_{0})}{8\pi ^{2}}\ln \dfrac{\mu}{\mu_{0}}}.
\end{align}$$

For $\beta _{0}>0$, the coupling decreases at high energy, $g(\mu)\to0$ as $\mu\to\infty$. This is asymptotic freedom.

## exam 2

一、（20 分）考虑 $\displaystyle{\mathrm{SU}(2)}$ 纯Yang-Mills 规范理论，$\displaystyle{\mathrm{SU}(2)}$ 规范场 $\displaystyle{A_{\mu}=A^{a}_{\mu}t^{a},t^{a}=\sigma ^{a}/2,\sigma ^{a}}$ 是 Pauli 矩阵 $\displaystyle{a=1,2,3}$，拉氏密度为 $\displaystyle{\mathcal{L}=-\dfrac{1}{2}\mathrm{Tr}F_{\mu \nu}F^{\mu \nu}}$
1. （5 分）写出规范场强 $\displaystyle{F_{\mu \nu}}$ 的具体表达式。
sol.

$$\begin{align}
F_{\mu \nu}^{a} & =\partial _{\mu}A_{\nu}^{a}-\partial _{\nu}A_{\mu}^{a}+g\varepsilon _{abc}A_{\mu}^{b}A_{\nu}^{c},\\
F_{\mu \nu} & =F_{\mu \nu}^{a}t^{a}.
\end{align}$$

1. （10 分）写出 $\displaystyle{A_{\mu}(x)}$ 和 $\displaystyle{F_{\mu \nu}(x)}$ 在定域规范变换 $\displaystyle{V(x)=e^{i\theta ^{a}t^{a}}\in \mathrm{SU}(2)}$ 下的有限变换和无穷小变换 $\displaystyle{\theta\to0}$ 的变换性质
sol.

$$\begin{align}
A_{\mu} & \to VA_{\mu}V^{\dagger}+\dfrac{i}{g}V\partial _{\mu}V^{\dagger} & \implies A^{a}_{\mu} & =A^{a}_{\mu}+\dfrac{1}{g}\partial _{\mu}\theta ^{a}-\varepsilon ^{abc}\theta ^{b}A_{\mu}^{c} \\
F_{\mu \nu} & \to VF_{\mu \nu}V^{\dagger} & \implies F^{a}_{\mu \nu} & =F_{\mu \nu}^{a}-\varepsilon ^{abc}\theta ^{b}F^{c}_{\mu \nu}
\end{align}$$

1. （5 分）在微扰论中，我们一般取零场边条件，即对任意的场取 $\displaystyle{\phi(x\to \infty)=0}$. 对于规范场，我们取场强的边条件$\displaystyle{F_{\mu \nu}(x\to \infty)=0}$是自然的，但这时 $\displaystyle{A_{\mu}(x\to \infty)=0}$ 并不是必然的，为什么？满足 $\displaystyle{F_{\mu \nu}(x\to \infty)=0}$ 的 $\displaystyle{A_{\mu}(x)}$ 的最一般的边界条件是什么？(有人疑惑这里为什么我们取0 边界条件，一种解释是作用量$\displaystyle{S=\int \mathrm{d}^{4}x\mathcal{L}}$中，如果 $\displaystyle{\phi ^{2}}$ 中的 $\displaystyle{\phi(x)}$ 不是平方可积的，会导致作用量无穷大，而平方可积函数 $\displaystyle{f(x)}$ 最基本的要求就是 $\displaystyle{f(x\to \infty)=0}$. 在规范场论中，拉氏量里没有 $\displaystyle{A_{\mu}A^{\mu}}$，因为它不是规范不变/协变的，所以也就没必要要求 $\displaystyle{A_{\mu}(x\to \infty)=0}$. 当然也可以从微扰论角度解释)
sol. The condition $F_{\mu \nu}(x\to \infty)=0$ only says that the gauge field approaches a flat connection at infinity. A flat connection is locally pure gauge, so $A_{\mu}(x\to \infty)$ need not vanish:

$$\begin{align}
A_{\mu}(x) & \longrightarrow \dfrac{i}{g}V(x)\partial _{\mu}V^{\dagger}(x),& F_{\mu \nu}(x) & \longrightarrow 0.
\end{align}$$

Equivalently, one may write

$$\begin{align}
A_{\mu}(x) & =VA^{(0)}_{\mu}(x)V^{\dagger}+\dfrac{i}{g}V\partial _{\mu}V^{\dagger},& A_{\mu}^{(0)}(x\to \infty)&=0,
\end{align}$$

二、（20 分）接上题：
1. （5 分）如果是标量场 $\displaystyle{\phi}$ 属于 $\displaystyle{\mathrm{SU}(2)}$ 的自伴表示，即 $\displaystyle{\phi=\phi ^{a}t^{a}}$（或者写成 $\displaystyle{\phi=(\phi_{1},\phi_{2},\phi_{3})^{T}}$ ），请写出作用于 $\displaystyle{\phi}$ 的协变导数 $\displaystyle{D_{\mu}}$ 的形式以及存在规范耦合时 $\displaystyle{\phi}$ 的拉氏密度形式。
sol.

$$\begin{align}
D_{\mu}\phi ^{a} & =\partial _{\mu}\phi ^{a}+g\varepsilon ^{abc}A_{\mu}^{b}\phi ^{c} \\
\mathcal{L} & =\mathrm{Tr}(D_{\mu}\phi D^{\mu}\phi) \\
 & =\dfrac{1}{2}\partial _{\mu}\phi ^{a}\partial ^{\mu}\phi ^{a}+g\varepsilon ^{abc}A_{\mu}^{a}\phi ^{b}\partial ^{\mu}\phi ^{c}+\dfrac{1}{2}g^{2}\left(A_{\mu}^{a}A^{a,\mu}\phi ^{b}\phi ^{b}-(A_{\mu}^{a}\phi ^{a})^{2}\right).
\end{align}$$

1. （5 分）如果是满足 $\displaystyle{\mathrm{SU}(2)}$ 基础表示的复标量场二重态 $\displaystyle{\phi}$，则情形又如何？
sol.

$$\begin{align}
D_{\mu}\phi & =\partial _{\mu}\phi+igA_{\mu}^{a}t^{a}\phi,\quad t^{a}=\dfrac{\tau ^{a}}{2} \\
\mathcal{L} & =(D_{\mu}\phi)^{\dagger}D^{\mu}\phi \\
 & =\partial _{\mu}\phi^{\dagger}\partial ^{\mu}\phi +igA_{\mu}^{a}(\partial ^{\mu}\phi^{\dagger}t^{a}\phi-\phi^{\dagger}t^{a}\partial ^{\mu}\phi) +g^{2}A_{\mu}^{a}A^{b,\mu}\phi^{\dagger}t^{a}t^{b}\phi \\
 & =\partial _{\mu}\phi^{\dagger}\partial ^{\mu}\phi +\dfrac{ig}{2}A_{\mu}^{a}(\partial ^{\mu}\phi^{\dagger}\tau ^{a}\phi-\phi^{\dagger}\tau ^{a}\partial ^{\mu}\phi) +\dfrac{g^{2}}{4}A_{\mu}^{a}A^{a,\mu}\phi^{\dagger}\phi.
\end{align}$$

1. （10 分）对于第（1）小题中的实标量场，引入具有对称性自发破缺（SSB）的自相互作用势（$\displaystyle{\mu ^{2}>0,\lambda >0}$）$$\begin{align}V(\phi) & =-\mu ^{2}\mathrm{Tr}(\phi \phi)+\lambda (\mathrm{Tr}\phi \phi)^{2}, & \phi=\phi ^{a}t^{a}\end{align}$$或者$$\begin{align}V(\phi) & =-\dfrac{\mu ^{2}}{2}(\phi ^{T}\phi)+\dfrac{\lambda}{4}(\phi ^{T}\phi)^{2}, & \phi=(\phi_{1},\phi_{2},\phi_{3})^{T}\end{align}$$请讨论SSB 的形态及后果，如几个对称性破坏，还剩几个对称性，SSB 之后的粒子谱（规范玻色子获得质量情况、标量场获得质量情况等）.
sol. The minima satisfy

$$\begin{align}
\phi ^{a}\phi ^{a} & =v^{2}, & v^{2} & =\dfrac{\mu ^{2}}{\lambda}.
\end{align}$$

By an $\mathrm{SU}(2)$ gauge rotation we may choose

$$\begin{align}
\langle \phi ^{a}\rangle & =(0,0,v).
\end{align}$$

The generator $t^{3}$ leaves this vacuum invariant, while $t^{1},t^{2}$ are broken. Thus

$$\begin{align}
\mathrm{SU}(2) & \longrightarrow \mathrm{U}(1).
\end{align}$$

In unitary gauge one writes $\phi=(0,0,v+h)$. The scalar kinetic term gives

$$\begin{align}
\dfrac{1}{2}(D_{\mu}\phi ^{a})(D^{\mu}\phi ^{a}) & \supset \dfrac{1}{2}g^{2}v^{2}\left(A_{\mu}^{1}A^{1,\mu}+A_{\mu}^{2}A^{2,\mu}\right).
\end{align}$$

Therefore $A_{\mu}^{1}$ and $A_{\mu}^{2}$ acquire the same mass

$$\begin{align}
M_{W}^{2} & =g^{2}v^{2},
\end{align}$$

while $A_{\mu}^{3}$ remains massless and is the gauge boson of the unbroken $\mathrm{U}(1)$. The two Goldstone fields are eaten by the two massive gauge bosons. The radial scalar has

$$\begin{align}
m_{h}^{2} & =2\lambda v^{2}=2\mu ^{2}.
\end{align}$$

三、（20 分）考虑有对称性自发破缺的复标量场 $\displaystyle{\mathrm{U}(1)}$ 规范理论

$$\begin{align}
\mathcal{L} & =-\dfrac{1}{4}F_{\mu \nu}F^{\mu \nu}+|D_{\mu}\phi|^{2}-V(\phi)
\end{align}$$

其中 $\displaystyle{D_{\mu}=\partial _{\mu}+ieA_{\mu},\phi=\dfrac{1}{\sqrt{ 2 }}(\phi_{1}+i\phi_{2})}$, $\displaystyle{V(\phi)}$ 使得 $\displaystyle{\phi}$ 获得实的非零期望值 $\displaystyle{v}$. 对复标量场重新定义$\displaystyle{\phi_{1}(x)=v+h(x),\phi_{2}(x)=\eta(x)}$. 当我们引入 $\displaystyle{R_{\xi}}$ 规范

$$\begin{align}
f(A,h,\eta) & =\partial _{\mu}A^{\mu}-\xi ev\eta
\end{align}$$

就可以对该理论进行Faddeev-Popov 路径积分量子化.
1. （10 分）写出 $\displaystyle{A_{\mu},h,\eta}$ 的定域 $\displaystyle{\mathrm{U}(1)}$ 规范变换性质，并由此推导Faddeev-Popov泛函矩阵$$\begin{align}M[A,h] & = \dfrac{\delta f(A^{\alpha}(x),h^{\alpha}(x),\eta^{\alpha}(x))}{\delta \alpha(y)}|_{\alpha(x)=0}\end{align}$$
sol. consider a infinitesimal transformation

$$\begin{align}
A_{\mu} & \to A_{\mu}-\dfrac{1}{e}\partial _{\mu}\alpha \\
\phi & \to \phi+i\alpha\phi=\frac{1}{\sqrt{ 2 }}[(\phi_{1}-\phi_{2}\alpha)+i(\phi_{1}\alpha+\phi_{2})] \\
\implies \phi_{1} & \to v+h-\eta \alpha \\
\phi_{2} & \to \eta+(v+h)\alpha
\end{align}$$

because $D_{\mu}=\partial _{\mu}+ieA_{\mu}$. Hence

$$\begin{align}
M[A,h](x,y) & =\dfrac{\delta f(A^{\alpha},h^{\alpha},\eta^{\alpha})(x)}{\delta\alpha(y)}\bigg|_{\alpha=0} \\
& =\left[-\dfrac{1}{e}\partial _{x}^{2}-\xi ev(v+h(x))\right]\delta ^{4}(x-y).
\end{align}$$

Multiplying $M$ by the field-independent constant $e$ gives the equivalent ghost operator

$$\begin{align}
M'[A,h] & =-\partial ^{2}-\xi e^{2}v(v+h).
\end{align}$$

1. （10 分）路径积分量子化过程中，Faddeev-Popov 矩阵的行列式 $\displaystyle{\det M(A,h)}$ 可以通过引入鬼场 $\displaystyle{c}$ 和反鬼场 $\displaystyle{\bar{c}}$ 来处理，请写出鬼场-反鬼场的拉氏量，并在路径积分量子化方案下求出鬼场的传播子.
sol.
we have

$$\begin{align}
\mathcal{L}_{\text{gh}} & =\bar{c}M'c \\
& =\bar{c}\left(-\partial ^{2}-\xi e^{2}v(v+h)\right)c \\
& =\partial _{\mu}\bar{c}\partial ^{\mu}c-\xi m_{A}^{2}\bar{c}c-\xi e^{2}v\,h\bar{c}c,
\end{align}$$

where $m_{A}^{2}=e^{2}v^{2}$. The free ghost propagator is therefore

$$\begin{align}
D^{c}(k) & =\dfrac{i}{k^{2}-\xi m_{A}^{2}+i\epsilon}.
\end{align}$$

四、（20 分）非阿贝尔规范场的单圈重整化
在 $\displaystyle{\mathrm{SU}(3)}$ 非阿贝尔规范场理论中，涉及鬼场的拉氏量部分的鬼拉氏量为

$$\begin{align}
\mathcal{L}_{\text{gh}} & =\partial _{\mu}\bar{c}^{a}_{0}\partial ^{\mu}c_{0}^{a}-g_{0}f^{abc}\partial _{\mu}\bar{c}_{0}^{a}c_{0}^{b}A_{0}^{c,\mu}
\end{align}$$

引入重整化的场 $\displaystyle{\bar{c}^{a},c^{a},A^{a}_{\mu}}$，重整化的耦合常数 $\displaystyle{g}$，其中重整化场和裸场之间满足 $\displaystyle{c_{0}^{a}=(Z_{3}^{c})^{1/2}c^{a},\bar{c}_{0}^{a}=(Z_{3}^{c})^{1/2}\bar{c}^{a},A_{0}^{a,\mu}=Z_{3}^{1/2}A^{a,\mu}}$，则可以将 $\displaystyle{\mathcal{L}_{\text{gh}}}$ 分成两部分 $\displaystyle{\mathcal{L}_{\text{gh}}=\mathcal{L}_{\text{gh}}^{r}+\delta \mathcal{L}_{\text{gh}}}$,

$$\begin{align}
\mathcal{L}_{\text{gh}} & =\partial _{\mu}\bar{c}^{a}\partial ^{\mu}c^{a}-gf^{abc}\partial _{\mu}\bar{c}^{a}c^{b}A^{c,\mu} \\
\delta \mathcal{L}_{\text{gh}} & =\delta _{3}^{c}\partial _{\mu}\bar{c}^{a}\partial ^{\mu}c^{a}-\delta _{1}^{c}gf^{abc}\partial _{\mu}\bar{c}^{a}c^{b}A^{c,\mu}
\end{align}$$

其中 $\displaystyle{Z_{1}^{c}=1+\delta_{1}^{c}}$ 是鬼场-规范场耦合顶点的重整化常数.
1. （10 分）在路径积分量子化中，经典作用量可以看作树图阶正规顶点的生成泛函，并可以由此得到相应的相互作用顶点的费曼规则. 试利用该方法求出鬼场-规范场耦合顶点、$\displaystyle{\delta \mathcal{L}_{\text{gh}}}$ 中抵消项的费曼规则.
sol. the vertex

$$\begin{align}
\mathcal{L}_{\text{gh}}\supset -gf^{abc}\partial _{\mu}\bar{c}^{a}c^{b}A^{c,\mu}
\end{align}$$

With all momenta incoming, let $p_{\mu}$ be the momentum carried by the differentiated antighost line. In the convention used here the tree ghost-gluon vertex is

$$\begin{align}
V_{\bar{c}^{a}c^{b}A_{\mu}^{c}}(p) & =gf^{abc}p_{\mu}.
\end{align}$$

Changing the orientation assigned to the ghost momentum flips the displayed sign; the momentum must be the one on the differentiated antighost line.
For the vertex counterterm,

$$\begin{align}
V_{\bar{c}^{a}c^{b}A_{\mu}^{c}}^{\mathrm{ct}}(p) & =\delta _{1}^{c}gf^{abc}p_{\mu}.
\end{align}$$

The free ghost propagator is

$$\begin{align}
D_{c}^{ab}(p) & =\dfrac{i\delta ^{ab}}{p^{2}+i\epsilon}.
\end{align}$$

The wave-function counterterm is a two-point insertion:

$$\begin{align}
\Gamma_{\bar{c}^{a}c^{b}}^{\mathrm{ct}}(p) & =i\delta ^{ab}\delta _{3}^{c}p^{2}.
\end{align}$$

1. （10 分）在维数正规化中，裸耦合常数 $\displaystyle{g_{0}}$ 和重整化耦合常数的关系为 $\displaystyle{g_{0}=\mu ^{\varepsilon}Z_{g}g}$，（这里 $\displaystyle{\varepsilon=2-\dfrac{d}{2}}$ ）. 你可以证明 $\displaystyle{Z_{g}=Z_{1}^{c}(Z_{3}^{c})^{-1}Z_{3}^{-1/2}}$. 在单圈 $\displaystyle{\bar{\mathrm{MS}}}$ 方案下已知$$\begin{align}Z_{3} & =1+\delta_{3}=1-\dfrac{g^{2}}{16\pi ^{2}\varepsilon} \left(\dfrac{4}{3}n_{f}C(r)-\dfrac{5}{3}C_{2}(G)\right) \\Z_{3}^{c} & =1+\delta _{3}^{c}=1-\dfrac{g^{2}}{16\pi ^{2}\varepsilon}\left(-\dfrac{1}{2}C_{2}(G)\right) \\Z_{1}^{c} & =1+\delta ^{c}_{1}=1-\dfrac{g^{2}}{16\pi ^{2}\varepsilon}\left(\dfrac{1}{2}C_{2}(G)\right)\end{align}$$其中$\displaystyle{C(r)=\dfrac{1}{2},C_{2}(G)=3}$，利用耦合常数 $\displaystyle{g_{0}}$ 满足的重整化群方程计算 $\displaystyle{\beta}$ 函数 $\displaystyle{\beta(g)=\dfrac{\mu \mathrm{d}}{\mathrm{d}\mu}g}$，从而给出跑动耦合常数 $\displaystyle{g(\mu)}$ 的表达式，并说明非阿贝尔规范理论的渐近自由的含义. 可以看出，这个结果和利用关系 $\displaystyle{Z_{g}=Z_{1}(Z_{2})^{-1}Z_{3}^{-1/2}}$（规范场-费米子场耦合及费米自能的单圈修正）的结果是相同的. 这个结论是由BRST 对称性保证的，即BRST对称性给出$\displaystyle{\dfrac{Z_{1}}{Z_{2}}=\dfrac{Z_{1}^{c}}{Z_{3}^{c}}=\dfrac{Z_{1}^{3g}}{Z_{3}}=\left( \dfrac{Z_{1}^{4g}}{Z_{3}} \right)^{1/2}}$ 或者 $\displaystyle{\delta_{1}-\delta_{2}=\delta_{1}^{c}-\delta_{3}^{c}=\delta_{1}^{3g}-\delta_{3}=\dfrac{1}{2}(\delta_{1}^{4g}-\delta_{3})}$，其物理含义是规范耦合常数的普适性.
sol. From

$$\begin{align}
\delta _{1}^{c} & =Z_{g}Z_{3}^{c}Z_{3}^{1/2}-1,
\end{align}$$

the coupling renormalization constant is, to one loop,

$$\begin{align}
Z_{g}& =1+\delta _{g},& \delta _{g}& =\delta _{1}^{c}-\delta _{3}^{c}-\dfrac{1}{2}\delta _{3}.
\end{align}$$

Using

$$\begin{align}
\delta _{3}& =-\dfrac{g^{2}}{16\pi ^{2}}\dfrac{1}{\varepsilon}\left(\dfrac{4}{3}n_{f}C(r)-\dfrac{5}{3}C_{A}\right)=\dfrac{g^{2}}{16\pi ^{2}}\dfrac{1}{\varepsilon}\left(\dfrac{5}{3}C_{A}-\dfrac{4}{3}n_{f}C(r)\right),
\end{align}$$

we obtain

$$\begin{align}
\delta _{g}& =-\dfrac{g^{2}}{16\pi ^{2}}\dfrac{1}{2\varepsilon}\left(\dfrac{11}{3}C_{A}-\dfrac{4}{3}n_{f}C(r)\right).
\end{align}$$

Thus, with

$$\begin{align}
\beta _{0} & =\dfrac{11}{3}C_{A}-\dfrac{4}{3}n_{f}C(r),
\end{align}$$

the bare coupling

$$\begin{align}
g_{0} & =\mu ^{\varepsilon}Z_{g}g
\end{align}$$

is $\mu$-independent. The corresponding four-dimensional beta function is

$$\begin{align}
\beta(g) & =\mu\dfrac{\mathrm{d}g}{\mathrm{d}\mu}=-\dfrac{\beta _{0}}{16\pi ^{2}}g^{3}+O(g^{5}).
\end{align}$$

For $\mathrm{SU}(3)$ with $C_{A}=3$ and $C(r)=T_{F}=1/2$,

$$\begin{align}
\beta _{0} & =11-\dfrac{2}{3}n_{f},&\beta(g) & =-\dfrac{g^{3}}{16\pi ^{2}}\left(11-\dfrac{2}{3}n_{f}\right)+O(g^{5}).
\end{align}$$

Solving the one-loop RG equation gives

$$\begin{align}
\dfrac{1}{g^{2}(\mu)}& =\dfrac{1}{g^{2}(\mu_{0})}+\dfrac{\beta _{0}}{8\pi ^{2}}\ln \dfrac{\mu}{\mu_{0}},
\end{align}$$

or equivalently

$$\begin{align}
g^{2}(\mu)& =\dfrac{g^{2}(\mu_{0})}{1+\dfrac{\beta _{0}g^{2}(\mu_{0})}{8\pi ^{2}}\ln \dfrac{\mu}{\mu_{0}}}.
\end{align}$$

For $\beta _{0}>0$, the coupling decreases at high energy, $g(\mu)\to0$ as $\mu\to\infty$. This is asymptotic freedom.

五、（20 分）轴子与强CP问题，QCD 真空的拓扑性质可以解释轴矢流反常，但同时会在QCD拉氏量中引入$\displaystyle{\theta}$项

$$\begin{align}
\mathcal{L}'_{\text{QCD}} & =\mathcal{L}_{\text{QCD}}+\dfrac{\theta g^{2}}{32\pi ^{2}}F_{\mu \nu}^{a}\tilde{F}^{a,\mu \nu}
\end{align}$$

这个$\displaystyle{\theta}$项是破坏CP守恒的（$\displaystyle{\theta}$项CP为负），但实验测量的中子电偶极矩（nEDM给出$\displaystyle{|\theta|\lesssim 10^{-10}}$，这么小的$\displaystyle{\theta}$值的原因就是强CP问题.）通过引入一种和胶子场耦合的赝标量场$\displaystyle{a(x)}$

$$\begin{align}
\mathcal{L}_{a} & =\dfrac{1}{2}(\partial _{\mu}a)^{2}+\mathcal{L}(\partial _{\mu}a,\psi)+\dfrac{g^{2}}{32\pi ^{2}} \dfrac{a}{f_{a}}F^{a}_{\mu \nu}\tilde{F}^{a,\mu \nu}
\end{align}$$

则可以通过平移变换$\displaystyle{a\to a-\theta f_{a}}$，则$\displaystyle{\mathcal{L}'_{\text{QCD}}+\mathcal{L}_{a}(a\to a-\theta f_{a})}$，就可以消除$\displaystyle{\theta}$项，从而解决强CP 问题，这就是Peccei-Quinn模型. 显然，La 中起关键作用的$\displaystyle{aF_{\mu\nu}\tilde F^{\mu\nu}}$耦合项是不可重整的（算符量纲为5），需要构造紫外完备的场论模型，而P-Q模型是其有效理论. 一个例子就是KSVZ 模型：

$$\begin{align}
\mathcal{L}_{\text{KSVZ}} & =|\partial _{\mu}\phi|^{2}+\bar{Q}(i\gamma \cdot D)Q-(f_{Q}\bar{Q}_{L}Q_{R}\phi+\text{c.c.})-V(\phi)
\end{align}$$

其中$\displaystyle{\phi}$是颜色单态的复标量场，$\displaystyle{Q=Q_{L}+Q_{R}}$是标准模型以外的重夸克场（属于颜色$\displaystyle{\mathrm{SU}(3)}$的基础表示），$\displaystyle{f_{Q}}$是$\displaystyle{\phi-Q}$的Yukawa 耦合常数，$\displaystyle{D_{\mu}=\partial _{\mu}-igA^{a}_{\mu}t^{a}}$ 是 $\displaystyle{\mathrm{SU}(3)}$ 颜色定域对称性对应的协变导数，$\displaystyle{V(\phi)=\lambda\left( |\phi|^{2}-\dfrac{f_{a}^{2}}{2} \right)^{2}}$ 是具有对称性自发破缺属性的 $\displaystyle{\phi}$ 自相互作用势
1. （5 分）证明：拉氏量 $\displaystyle{\mathcal{L}_{\text{KSVZ}}}$ 在如下的 Peccei-Quinn $\displaystyle{\mathrm{U}(1)}$ 变换下不变$$\begin{align}\phi\to e^{i\alpha}\phi,Q_{L}\to e^{i\alpha/2}Q_{L},Q_{R}\to e^{-i\alpha/2}Q_{R}\end{align}$$
sol. The scalar kinetic term and $V(\phi)$ are invariant because the transformation is a global phase rotation and $V$ depends only on $|\phi|^{2}$. The color kinetic term is also invariant because the PQ phase is global and commutes with the color $\mathrm{SU}(3)$ generators. For the Yukawa term,

$$\begin{align}
\bar{Q}_{L}Q_{R}\phi &\longrightarrow
e^{-i\alpha/2}\bar{Q}_{L}\,e^{-i\alpha/2}Q_{R}\,e^{i\alpha}\phi =\bar{Q}_{L}Q_{R}\phi,
\end{align}$$

and the complex conjugate term is invariant in the same way.
1. （5 分）证明：如果取真空态$\displaystyle{\braket{ \phi(x) }=\dfrac{f_{a}}{\sqrt{ 2 }}}$，则 $\displaystyle{Q}$ 获得质量 $\displaystyle{m_{Q}=\dfrac{f_{Q}f_{a}}{\sqrt{ 2 }}}$
sol. Substituting the vacuum expectation value into the Yukawa interaction gives

$$\begin{align}
-(f_{Q}\bar{Q}_{L}Q_{R}\phi+\mathrm{c.c.}) &\longrightarrow -\dfrac{f_{Q}f_{a}}{\sqrt{2}}(\bar{Q}_{L}Q_{R}+\bar{Q}_{R}Q_{L})\\
&=-m_{Q}\bar{Q}Q,
\end{align}$$

so

$$\begin{align}
m_{Q} & =\dfrac{f_{Q}f_{a}}{\sqrt{2}}.
\end{align}$$

1. （10 分）在SSB后，$\displaystyle{\phi}$ 可以取非线性实现（极坐标形式）$$\begin{align}\phi(x) & =\dfrac{1}{\sqrt{ 2 }}(\rho(x)+f_{a})e^{ia(x)/f_{a}}\end{align}$$其中径向部分 $\displaystyle{\rho(x)}$ 对应于有质量的激发（$\displaystyle{m_{\rho}=\sqrt{ 2\lambda }f_{a}}$），角度部分 $\displaystyle{a(x)}$ 就是Goldstone场（轴子场）。显然，当 $\displaystyle{f_{a}}$ 远大于标准模型能标（$\displaystyle{v=245\mathrm{GeV}}$）时，$\displaystyle{\rho}$ 和标准模型粒子退耦. 重夸克 $\displaystyle{Q}$ 和轴子场 $\displaystyle{a(x)}$ 的耦合项为$$\begin{align}-\mathcal{L}_{aQ} & =m_{Q}\bar{Q}_{L}Q_{R}e^{ia/f_{a}}+\text{c.c.}\end{align}$$证明：可以引入变换$$\begin{align}Q\to e^{-i\gamma _{5}a/2f_{a}}Q, Q_{L}\to e^{ia/2f_{a}}Q_{L},Q_{R}\to e^{-ia/2f_{a}}Q_{R}\end{align}$$使得 $\displaystyle{Q}$ 和轴子场 $\displaystyle{a}$ 退耦，但量子水平上，$\displaystyle{\mathcal{L}_{\text{KSVZ}}}$ 会获得额外一项$$\begin{align}\delta \mathcal{L}_{\text{KSVZ}} & =\dfrac{g^{2}}{32\pi ^{2}} \dfrac{a}{f_{a}} F^{a}_{\mu \nu}\tilde{F}^{a}_{\mu \nu}\end{align}$$这一点可以在路径积分量子化下得到证明（考虑在$\displaystyle{\mathrm{SU}(3)}$颜色规范场背景下，变换对费米子测度的影响）。
sol. The axion phase in the mass term is removed by the chiral rotation

$$\begin{align}
Q &\to e^{-i\gamma _{5}a/2f_{a}}Q,& Q_{L}&\to e^{ia/2f_{a}}Q_{L},& Q_{R}&\to e^{-ia/2f_{a}}Q_{R}.
\end{align}$$

Indeed,

$$\begin{align}
\bar{Q}_{L}Q_{R}e^{ia/f_{a}} &\longrightarrow
e^{-ia/2f_{a}}\bar{Q}_{L}\,e^{-ia/2f_{a}}Q_{R}\,e^{ia/f_{a}} =\bar{Q}_{L}Q_{R},
\end{align}$$

and similarly for the complex conjugate. Classically this trades the phase in the mass term for a derivative coupling to the axial current; after the heavy quark is integrated out, the relevant low-energy effect is the anomalous Jacobian of the fermion measure.

For one heavy Dirac quark in the fundamental representation of color $\mathrm{SU}(3)$, Fujikawa's Jacobian gives

$$\begin{align}
\mathcal{D}\bar{Q}\mathcal{D}Q &\to \mathcal{D}\bar{Q}\mathcal{D}Q
\exp\left[ i\int \mathrm{d}^{4}x\, \dfrac{g^{2}}{32\pi ^{2}}\dfrac{a}{f_{a}}
F_{\mu\nu}^{a}\tilde{F}^{a,\mu\nu} \right].
\end{align}$$

Therefore the effective Lagrangian obtains

$$\begin{align}
\delta \mathcal{L}_{\mathrm{KSVZ}} &=\dfrac{g^{2}}{32\pi ^{2}}\dfrac{a}{f_{a}}
F_{\mu\nu}^{a}\tilde{F}^{a,\mu\nu}.
\end{align}$$

## exam 3

一、（30 分）考虑 SU(2) 纯 Yang-Mills 规范理论
SU(2) 规范场 $A_\mu = A_\mu^a t^a$，$t^a = \frac{\sigma^a}{2}$，$\sigma^a(a=1,2,3)$ 为 Pauli 矩阵，拉氏密度为

$$\begin{align}
\mathcal L_g = -\frac{1}{2}\operatorname{Tr}F_{\mu\nu}F^{\mu\nu}.
\end{align}$$

1. （5 分）写出 $A_\mu(x)$ 和 $F_{\mu\nu}(x)$ 在定域规范变换 $V(x)=e^{i\theta^a t^a}\in SU(2)$ 下的有限变换和无穷小变换 $(\theta\to 0)$ 的变换性质。
1. （5 分）如果实标量场 $\phi$ 属于 SU(2) 的自伴表示，即 $\phi=\phi^a t^a$，或者写称 $\phi=(\phi_1,\phi_2,\phi_3)^T$，请写出作用于 $\phi$ 的协变导数 $D_\mu\phi$ 的形式以及存在规范耦合时 $\phi$ 的拉氏密度形式 $\mathcal L_\phi$。对于复标量场二重态 $\phi$，情形又如何？
1. （10 分）对于第（2）小题中的实标量场，引入具有对称性自发破缺（SSB）的自相互作用势 $\mu^2>0,\lambda>0$$$V(\phi)=-\mu^2\operatorname{Tr}\phi\phi+\lambda(\operatorname{Tr}\phi\phi)^2,\qquad \phi=\phi^a t^a,$$或者$$V(\phi)=-\frac{\mu^2}{2}(\phi^T\phi)+\frac{\lambda}{4}(\phi^T\phi)^2,\qquad \phi=(\phi_1,\phi_2,\phi_3)^T.$$请讨论 SSB 的形态及后果，如几个对称性破坏，还剩几个对称性，SSB 之后的粒子谱（规范玻色子获得质量情况、标量场获得质量情况等）。
1. （10 分）具有 SSB 的理论 $\mathcal L=\mathcal L_g+\mathcal L_0-V(\phi)$ 的 Faddeev-Popov 路径积分量子化：写出 $R_\xi$ 规范的具体形式以及在此规范下的规范补偿行列式 $\det M[A]$ 的具体表达式。

sol.
1. With the convention

$$\begin{align}
D_{\mu} & =\partial _{\mu}-igA_{\mu},
\end{align}$$

the finite gauge transformations are

$$\begin{align}
A_{\mu} & \to A_{\mu}^{V}=VA_{\mu}V^{\dagger}+\dfrac{i}{g}V\partial _{\mu}V^{\dagger},& F_{\mu\nu} & \to F_{\mu\nu}^{V}=VF_{\mu\nu}V^{\dagger}.
\end{align}$$

For $V=e^{i\theta}$, $\theta=\theta ^{a}t^{a}$, the infinitesimal transformations are

$$\begin{align}
\delta A_{\mu}^{a} &=\dfrac{1}{g}\partial _{\mu}\theta ^{a}-\varepsilon ^{abc}\theta ^{b}A_{\mu}^{c},& \delta F_{\mu\nu}^{a} &=-\varepsilon ^{abc}\theta ^{b}F_{\mu\nu}^{c}.
\end{align}$$

1. For an adjoint real scalar,

$$\begin{align}
(D_{\mu}\phi)^{a} &=\partial _{\mu}\phi ^{a}+g\varepsilon ^{abc}A_{\mu}^{b}\phi ^{c},
\end{align}$$

and

$$\begin{align}
\mathcal{L}_{\phi} &=\mathrm{Tr}(D_{\mu}\phi D^{\mu}\phi)-V(\phi)\\
&=\dfrac{1}{2}(D_{\mu}\phi ^{a})(D^{\mu}\phi ^{a})-V(\phi).
\end{align}$$

In components the kinetic term is

$$\begin{align}
\dfrac{1}{2}\partial _{\mu}\phi ^{a}\partial ^{\mu}\phi ^{a} +g\varepsilon ^{abc}A_{\mu}^{a}\phi ^{b}\partial ^{\mu}\phi ^{c} +\dfrac{g^{2}}{2}\left(A_{\mu}^{a}A^{a,\mu}\phi ^{b}\phi ^{b}-(A_{\mu}^{a}\phi ^{a})^{2}\right).
\end{align}$$

For a fundamental complex doublet,

$$\begin{align}
D_{\mu}\phi &=\partial _{\mu}\phi-igA_{\mu}^{a}t^{a}\phi,& t^{a}&=\dfrac{\tau ^{a}}{2},
\end{align}$$

and

$$\begin{align}
\mathcal{L}_{\phi} &=(D_{\mu}\phi)^{\dagger}D^{\mu}\phi-V(\phi)\\
&=\partial _{\mu}\phi^{\dagger}\partial ^{\mu}\phi +igA_{\mu}^{a}(\phi^{\dagger}t^{a}\partial ^{\mu}\phi-\partial ^{\mu}\phi^{\dagger}t^{a}\phi) +g^{2}A_{\mu}^{a}A^{b,\mu}\phi^{\dagger}t^{a}t^{b}\phi-V(\phi)\\
&=\partial _{\mu}\phi^{\dagger}\partial ^{\mu}\phi +\dfrac{ig}{2}A_{\mu}^{a}(\phi^{\dagger}\tau ^{a}\partial ^{\mu}\phi-\partial ^{\mu}\phi^{\dagger}\tau ^{a}\phi) +\dfrac{g^{2}}{4}A_{\mu}^{a}A^{a,\mu}\phi^{\dagger}\phi-V(\phi).
\end{align}$$

1. The minima obey

$$\begin{align}
\phi ^{a}\phi ^{a}&=v^{2},& v^{2}&=\dfrac{\mu ^{2}}{\lambda}.
\end{align}$$

By a gauge rotation one can choose

$$\begin{align}
\langle\phi ^{a}\rangle&=(0,0,v).
\end{align}$$

The generator $t^{3}$ is unbroken, while $t^{1},t^{2}$ are broken:

$$\begin{align}
\mathrm{SU}(2)&\longrightarrow \mathrm{U}(1).
\end{align}$$

In unitary gauge, $\phi=(0,0,v+h)$. The scalar kinetic term gives

$$\begin{align}
\dfrac{1}{2}(D_{\mu}\phi ^{a})(D^{\mu}\phi ^{a}) &\supset \dfrac{1}{2}g^{2}v^{2}\left(A_{\mu}^{1}A^{1,\mu}+A_{\mu}^{2}A^{2,\mu}\right).
\end{align}$$

Thus

$$\begin{align}
M_{1}^{2}=M_{2}^{2}&=g^{2}v^{2},& M_{3}^{2}&=0.
\end{align}$$

Two Goldstone modes are eaten by $A_{\mu}^{1},A_{\mu}^{2}$, and the radial scalar has

$$\begin{align}
m_{h}^{2}&=2\lambda v^{2}=2\mu ^{2}.
\end{align}$$

1. Write

$$\begin{align}
\phi ^{a}&=(\chi ^{1},\chi ^{2},v+h).
\end{align}$$

The quadratic mixing is cancelled by the $R_{\xi}$ gauge functions

$$\begin{align}
G^{1}&=\partial _{\mu}A^{1,\mu}+\xi gv\,\chi ^{2},\\
G^{2}&=\partial _{\mu}A^{2,\mu}-\xi gv\,\chi ^{1},\\
G^{3}&=\partial _{\mu}A^{3,\mu},
\end{align}$$

with

$$\begin{align}
\mathcal{L}_{\mathrm{gf}} &=-\dfrac{1}{2\xi}G^{a}G^{a}.
\end{align}$$

The Faddeev-Popov determinant is

$$\begin{align}
\Delta_{\mathrm{FP}}[A,\phi] &=\det M[A,\phi],& M^{ab}(x,y) &=\dfrac{\delta G^{a}[A^{\alpha},\phi^{\alpha}](x)}{\delta \alpha ^{b}(y)}\bigg|_{\alpha=0}.
\end{align}$$

At the quadratic level around the vacuum,

$$\begin{align}
M^{ij} &=\left(-\partial ^{2}-\xi M_{W}^{2}\right)\delta ^{ij},& i,j&=1,2,\\
M^{33} &=-\partial ^{2},& M^{i3}&=M^{3i}=0,
\end{align}$$

where $M_{W}^{2}=g^{2}v^{2}$. Therefore the broken ghosts have mass squared $\xi M_{W}^{2}$, and the unbroken ghost is massless:

$$\begin{align}
\mathcal{L}_{\mathrm{gh}}^{(2)} &=\bar{c}^{i}(-\partial ^{2}-\xi M_{W}^{2})c^{i} +\bar{c}^{3}(-\partial ^{2})c^{3}.
\end{align}$$

二、（20 分）量子色动力学（QCD）
1. （10 分）我们有时也会考虑非定域算符的强子矩阵元，比如如下的矩阵元$$\phi_{\pi^+}(\vec x,\vec y)=\langle \Omega|\bar d(\vec x,0)\gamma_5 u(\vec y,0)|\pi^+,\vec p=0\rangle .$$一般称作静止的 $\pi^+$ 介子的 Bethe-Salpeter 波函数，其中的组合场算符 $\bar d(\vec x,0)\gamma_5u(\vec y,0)$ 涉及两个时空点，是非定域算符。请简要说明 $\phi_{\pi^+}(\vec x,\vec y)$ 是规范依赖的，需要在特定的规范下计算的原因（5 分），并说明如何在（1）式的基础上定义规范不变的 $\phi_{\pi^+}(\vec x,\vec y)$（5 分）？
1. （10 分）组合算符 $O(x)=\bar d(x)\gamma_5u(x)$ 的两点关联函数可以在格点 QCD 中进行数值计算。格点 QCD 定义在四维欧氏时空格点上，其作用量为$$S=S_g[A]+S_\psi[A,\bar\psi,\psi]=S_g[A]+\sum_{i=1,2}\bar\psi_i M[A]\psi_i .$$其中 $A=\{A(x),x\in\Lambda\}$ 代表时空格点上的规范场组态，$\psi_i=\{\psi_{i,x}^{a,\alpha},x\in\Lambda\}$ 是夸克场，$a=1,2,3$ 和 $\alpha=1,2,3,4$ 分别为颜色和旋量指标，$i=1,2$ 分别代表质量简并 $u,d$ 夸克，$S_g$ 是规范场的作用量，$S_\psi$ 是费米场的作用量，$M[A]$ 是 $(\gamma\cdot D+m)$ 离散化后在时空、颜色和旋量空间的矩阵。在此框架下，费米场的格林函数生成泛函为$$Z[\eta,\bar\eta]=\int DA\,D\bar\psi D\psi\,\exp\left\{-S+\sum_{i=1,2}(\bar\eta_i\psi_i+\bar\psi_i\eta_i)\right\}.$$令 $S_F[A]=M^{-1}[A]$ 为在有背景场 $A$ 时的夸克传播子，证明：算符 $O(x)$ 的两点格林函数可以用路径积分表示为$$\langle O(x)O^\dagger(y)\rangle=\frac{1}{Z[0,0]}\int DA\,[\det M[A]]^2 e^{-S_g}\operatorname{Tr}\left[S_F[A]\gamma_5S_F[A]\gamma_5\right].$$

sol.
1. Under a local color transformation,

$$\begin{align}
u(\vec y,0)&\to U(\vec y,0)u(\vec y,0),& \bar d(\vec x,0)&\to \bar d(\vec x,0)U^{\dagger}(\vec x,0).
\end{align}$$

Hence

$$\begin{align}
\bar d(\vec x,0)\gamma _{5}u(\vec y,0) &\to
\bar d(\vec x,0)U^{\dagger}(\vec x,0)\gamma _{5}U(\vec y,0)u(\vec y,0).
\end{align}$$

For $\vec x\ne \vec y$, $U(\vec x,0)$ and $U(\vec y,0)$ are independent local gauge matrices, so the bilocal operator is not gauge invariant. Therefore the Bethe-Salpeter wave function defined in this way has meaning only after fixing a gauge, for example Coulomb gauge or Landau gauge.

A gauge-invariant bilocal operator is obtained by inserting a Wilson line between the two quark fields:

$$\begin{align}
\phi_{\pi ^{+}}^{\Gamma}(\vec x,\vec y) &= \langle \Omega|
\bar d(\vec x,0)\gamma _{5}W_{\Gamma}(\vec x,\vec y;0)u(\vec y,0)
|\pi ^{+},\vec p=0\rangle,\\
W_{\Gamma}(\vec x,\vec y;0) &= P\exp\left(ig\int_{\Gamma:\,\vec y\to \vec x} \mathrm{d}z^{i}\,A_{i}^{a}(z,0)t^{a}\right).
\end{align}$$

Since

$$\begin{align}
W_{\Gamma}(\vec x,\vec y;0) &\to U(\vec x,0)W_{\Gamma}(\vec x,\vec y;0)U^{\dagger}(\vec y,0),
\end{align}$$

the color matrices cancel in the full bilocal operator. On the lattice, $W_{\Gamma}$ is the ordered product of link variables along the chosen spatial path $\Gamma$. The resulting wave function is gauge invariant but depends on the chosen path.

1. For fixed gauge background $A$, the two degenerate flavors give

$$\begin{align}
\int D\bar\psi D\psi\, e^{-\sum_{i=1,2}\bar\psi_iM[A]\psi_i} &=[\det M[A]]^{2}.
\end{align}$$

The Grassmann two-point contraction is

$$\begin{align}
\langle \psi_i(x)\bar\psi_j(y)\rangle_A &=\delta _{ij}S_F[A](x,y),& S_F[A]&=M^{-1}[A].
\end{align}$$

For

$$\begin{align}
O(x)&=\bar d(x)\gamma _{5}u(x),& O^{\dagger}(y)&=\bar u(y)\gamma _{5}d(y),
\end{align}$$

the only nonzero Wick contraction connects $u(x)$ with $\bar u(y)$ and $d(y)$ with $\bar d(x)$. Thus, with the sign convention for $O^{\dagger}$ used in the question,

$$\begin{align}
\langle O(x)O^{\dagger}(y)\rangle_A &= \operatorname{Tr}_{c,s}\left[ S_F[A](x,y)\gamma _{5}S_F[A](y,x)\gamma _{5} \right],
\end{align}$$

where the trace is over color and spinor indices. Integrating the fixed-background contraction over gauge fields gives

$$\begin{align}
\langle O(x)O^{\dagger}(y)\rangle &= \dfrac{1}{Z[0,0]}
\int DA\,[\det M[A]]^{2}e^{-S_g[A]} \operatorname{Tr}_{c,s}\left[ S_F[A](x,y)\gamma _{5}S_F[A](y,x)\gamma _{5} \right].
\end{align}$$

This is the displayed formula with the coordinate arguments suppressed.

三、（20 分）轴子与强 CP 问题

QCD 真空的拓扑性质可以解释轴矢流反常，但同时会在 QCD 拉氏量中引入 $\theta$ 项

$$\begin{align}
\mathcal L'_{\mathrm{QCD}}=\mathcal L_{\mathrm{QCD}}+\theta\frac{g^2}{32\pi^2}F_{\mu\nu}^a\tilde F^{a,\mu\nu}.
\end{align}$$

这个 $\theta$ 项是破坏 CP 守恒的（$\theta$ 项 CP 为负），但实验测量的中子电偶极矩（nEDM）给出的上限 $|\theta|\lesssim 10^{-10}$。这么小的 $\theta$ 值的原因就是强 CP 问题。通过引入一种和胶子场耦合的零质量赝标量场 $a(x)$，

$$\begin{align}
\mathcal L_a=\frac{1}{2}(\partial_\mu a)^2+\mathcal L(\partial_\mu a,\psi)+\frac{g^2}{32\pi^2}\frac{a}{f_a}F_{\mu\nu}^a\tilde F^{a,\mu\nu},
\end{align}$$

则可以通过平移变换 $a\to a-\theta f_a$，则 $\mathcal L'_{\mathrm{QCD}}+\mathcal L_a(a\to a-\theta f_a)$ 就可以消除 $\theta$ 项，从而解决强 CP 问题，这就是 Peccei-Quinn 模型。显然，$\mathcal L_a$ 中的起关键作用的 $aF_{\mu\nu}\tilde F^{\mu\nu}$ 耦合项是不可重正的（算符量纲为 5），需要构造紫外完备的场论模型，而 P-Q 模型是其有效理论。一个例子就是 KSVZ 模型：

$$\begin{align}
\mathcal L_{\mathrm{KSVZ}}=|\partial_\mu\phi|^2+\bar Q(i\gamma\cdot D)Q-(f_Q\bar Q_LQ_R\phi+c.c.)-V(\phi).
\end{align}$$

其中 $\phi$ 是颜色单态的复标量场，$Q=Q_L+Q_R$ 是标准模型以外的重夸克场（属于颜色 SU(3) 的基础表示），$f_Q$ 是 $\phi-Q$ 的 Yukawa 耦合常数，$D_\mu=\partial_\mu-igA_\mu^at^a$ 是 SU(3) 颜色定域对称性对应的协变导数，$V(\phi)$ 是具有对称性自发破缺属性的 $\phi$ 自相互作用势

$$\begin{align}
V(\phi)=\lambda\left(|\phi|^2-\frac{f_a^2}{2}\right)^2.
\end{align}$$

1. （5 分）证明：拉氏量 $\mathcal L_{\mathrm{KSVZ}}$ 在如下 Peccei-Quinn $U(1)$ 变换下不变：$$\phi\to e^{i\alpha}\phi,\qquad Q_L\to e^{i\alpha/2}Q_L,\qquad Q_R\to e^{-i\alpha/2}Q_R.$$
1. （5 分）证明：如果取真空态 $\langle\phi(x)\rangle=f_a/\sqrt2$，则 $Q$ 获得质量$$m_Q=\frac{f_Qf_a}{\sqrt2}.$$
1. （5 分）在 SSB 后，$\phi$ 可以取非线性实现（极坐标形式）$$\phi(x)=\frac{1}{\sqrt2}\left(\rho(x)+f_a\right)e^{ia(x)/f_a}.$$其中径向部分 $\rho(x)$ 对应于有质量的激发 $\left(m_\rho=\sqrt{2\lambda}f_a\right)$，角度部分 $a(x)$ 就是轴子（Goldstone 场）。显然，当 $f_a$ 远大于标准模型能标 $(v=246\mathrm{GeV})$ 时，$\rho$ 和标准模型粒子退耦。证明：重夸克 $Q$ 和轴子场 $a(x)$ 的耦合项为$$\mathcal L_{aQ}=-m_Q\bar Q_LQ_Re^{ia/f_a}+c.c.$$

1. （5 分）证明：可以引入变换$$Q\to e^{-i\gamma_5a/(2f_a)}Q$$或者$$Q_L\to e^{ia/(2f_a)}Q_L,\qquad Q_R\to e^{-ia/(2f_a)}Q_R,$$使得 $Q$ 为质量本征态并且和轴子场 $a$ 退耦，但在量子水平上 $\mathcal L_{\mathrm{KSVZ}}$ 会获得额外一项$$\delta\mathcal L_{\mathrm{KSVZ}}=\frac{g^2}{32\pi^2}\frac{a}{f_a}F_{\mu\nu}^a\tilde F^{a,\mu\nu}.$$这一点可以在路径积分量子化下得到证明（考虑在 SU(3) 颜色规范场背景下，轴变换对费米子测度的影响，你应该会相关正规化过程，但不必写出）。这样一来，我们可以安全地积分掉重自由度 $Q$ 和 $\rho$，从而得到（1）式中的有效拉氏量的第一项和第三项（第二项是轴子和标准模型中的夸克的特定轴矢流耦合项）。

sol.
1. The scalar kinetic term and the potential are invariant because the PQ transformation is a global phase rotation and $V$ depends only on $|\phi|^{2}$. The color kinetic term is invariant because the PQ phase commutes with the color $\mathrm{SU}(3)$ generators. For the Yukawa term,

$$\begin{align}
\bar Q_LQ_R\phi &\to
e^{-i\alpha/2}\bar Q_L\,e^{-i\alpha/2}Q_R\,e^{i\alpha}\phi =\bar Q_LQ_R\phi.
\end{align}$$

The complex conjugate term is invariant as well. Hence $\mathcal{L}_{\mathrm{KSVZ}}$ has the stated global $\mathrm{U}(1)_{\mathrm{PQ}}$ symmetry.

1. At the vacuum,

$$\begin{align}
\phi&=\dfrac{f_a}{\sqrt{2}},
\end{align}$$

so

$$\begin{align}
-(f_Q\bar Q_LQ_R\phi+\mathrm{c.c.}) &\to -\dfrac{f_Qf_a}{\sqrt{2}}
(\bar Q_LQ_R+\bar Q_RQ_L)\\
&=-m_Q\bar QQ.
\end{align}$$

Therefore

$$\begin{align}
m_Q&=\dfrac{f_Qf_a}{\sqrt{2}}.
\end{align}$$

1. Substituting the nonlinear parametrization into the Yukawa term gives

$$\begin{align}
-(f_Q\bar Q_LQ_R\phi+\mathrm{c.c.}) &= -\dfrac{f_Q}{\sqrt{2}}(\rho+f_a)
\bar Q_LQ_R e^{ia/f_a}+\mathrm{c.c.}
\end{align}$$

At energies far below $m_{\rho}$, set $\rho=0$ in the leading interaction. Using $m_Q=f_Qf_a/\sqrt{2}$,

$$\begin{align}
\mathcal{L}_{aQ} &=-m_Q\bar Q_LQ_Re^{ia/f_a}+\mathrm{c.c.}
\end{align}$$

1. The chiral rotation

$$\begin{align}
Q&\to e^{-i\gamma_5a/(2f_a)}Q,& Q_L&\to e^{ia/(2f_a)}Q_L,& Q_R&\to e^{-ia/(2f_a)}Q_R
\end{align}$$

removes the axion phase from the mass term:

$$\begin{align}
\bar Q_LQ_Re^{ia/f_a} &\to
e^{-ia/(2f_a)}\bar Q_L\,e^{-ia/(2f_a)}Q_R\,e^{ia/f_a} =\bar Q_LQ_R.
\end{align}$$

Classically this makes $Q$ a mass eigenstate and trades the phase for derivative couplings to the axial current. Quantum mechanically, the fermion measure is not invariant. For one heavy Dirac quark in the fundamental representation of color $\mathrm{SU}(3)$, Fujikawa's Jacobian gives

$$\begin{align}
\mathcal{D}\bar Q\mathcal{D}Q &\to \mathcal{D}\bar Q\mathcal{D}Q
\exp\left[ i\int \mathrm{d}^{4}x\, \dfrac{g^{2}}{32\pi^{2}}\dfrac{a}{f_a}
F_{\mu\nu}^{a}\tilde F^{a,\mu\nu} \right].
\end{align}$$

Thus the low-energy effective Lagrangian obtains

$$\begin{align}
\delta\mathcal L_{\mathrm{KSVZ}} &= \dfrac{g^{2}}{32\pi^{2}}\dfrac{a}{f_a}
F_{\mu\nu}^{a}\tilde F^{a,\mu\nu}.
\end{align}$$

After integrating out the heavy fields $Q$ and $\rho$, this gives the effective axion-gluon coupling used to cancel the original $\theta$ term.

四、（30 分）考虑赝（实）标量场和费米场耦合的 Yukawa 理论

$$\begin{align}
\mathcal L=\frac{1}{2}(\partial_\mu\phi_0)^2-\frac{1}{2}m_0^2\phi_0^2+\bar\psi_0(i\gamma^\mu\partial_\mu-M_0)\psi_0-ig_0\bar\psi_0\gamma^5\psi_0\phi_0-\frac{1}{4!}\lambda_0\phi_0^4.
\end{align}$$

注意宇称变换下，$\phi_0$ 和 $\psi_0$ 做如下变换：

$$\begin{align}
\psi_0(t,\vec x)\to \gamma^0\psi_0(t,-\vec x),\qquad\phi_0(t,\vec x)\to -\phi_0(t,-\vec x).
\end{align}$$

1. （10 分）分析该理论所有的表观发散的单粒子不可约图，并画出单圈水平上的发散的费曼图，并讨论该理论的可重正性，并说明 $\phi_0^4$ 自相互作用项的必要性。
1. （10 分）重正化微扰论：引入重正化场，将该成员写成重正化的部分和补偿项部分，然后给出完整的费曼规则（传播子和顶点，顶点包含补偿项部分）。
1. （10 分）显然，拉氏密度 $\mathcal L$ 具有 $\psi_0\to e^{i\alpha}\psi_0$ 相位变换的整体 $U(1)$ 对称性，根据诺特定理，经典理论中有关量流守恒$$\partial_\mu j_0^\mu(x)=\partial_\mu\left(\bar\psi_0(x)\gamma^\mu\psi_0(x)\right)=0.$$在量子理论中，则有 Ward 恒等式，比如：$$\partial_\mu\langle\Omega|Tj_0^\mu(x)\psi_0(x_1)\bar\psi_0(x_2)|\Omega\rangle_c=-\delta(x-x_1)G_2^0(x,x_2)+\delta(x-x_2)G_2^0(x_1,x).$$其中$$G_2^0(x,y)=\langle\Omega|T\psi_0(x)\bar\psi_0(y)|\Omega\rangle$$是费米场的全传播子。证明：矢量流 $j_0^\mu(x)$ 不需要重正化。提示：注意等式（2）的左边的、有流 $j_0^\mu(x)$ 插入的三点连通格林函数可以表示为$$G_3^{0,\mu}(x;x_1,x_2)\equiv\langle\Omega|Tj_0^\mu(x)\psi_0(x_1)\bar\psi_0(x_2)|\Omega\rangle_c=\int d^4w\,d^4z\,G_2^0(x_1,w)\Gamma_0^\mu(x;w,z)G_2^0(z,x_2).$$将（2）变换到动量空间，在某种重正化方案下引入顶角函数 $\Gamma^\mu(k;p,q)$ 的重正化常数，比如$$\bar\Gamma_0^\mu(\mu)=Z_1^{-1}(\mu)\gamma^\mu,$$则重正化 $\Gamma_0^\mu$ 为 $\bar\Gamma^\mu=Z_1\bar\Gamma_0^\mu$。如果费米场的波函数重正化常数为 $Z_2$，即 $\psi_0=Z_2^{1/2}\psi$，则先证明 $Z_1=Z_2$。第二步，引入重正化的流 $j^\mu(x,\mu)$，满足 $j_0^\mu(x)=Z_J(\mu)j^\mu(x,\mu)$，这里 $\mu$ 代表重正化条件，你应该从重正化的三点函数$$G_3^\mu(x;x_1,x_2)=Z_2^{-1}Z_J^{-1}G_3^{0,\mu}(x;x_1,x_2)=\int d^4w\,d^4z\,G_2(x_1,w)\Gamma^\mu(x;w,z)G_2(z,x_2)$$证明 $Z_J=1$（这里 $G_2(x,y)$ 为重正化的费米子传播子）。

sol.
1. In four dimensions,

$$\begin{align}
[\phi]&=1,&[\psi]&=\dfrac{3}{2},&[g]&=0,&[\lambda]&=0.
\end{align}$$

For a 1PI diagram with $E_{\phi}$ external scalar legs and $E_{\psi}$ external fermion legs, the superficial degree of divergence is

$$\begin{align}
D&=4-E_{\phi}-\dfrac{3}{2}E_{\psi}.
\end{align}$$

Thus the superficially divergent non-vacuum amplitudes are

$$
\begin{array}{c|c|c}
E_{\phi} & E_{\psi} & \text{counterterm}\\
\hline
2 & 0 & \phi^{2},\;(\partial_{\mu}\phi)^{2}\\
4 & 0 & \phi^{4}\\
0 & 2 & \bar\psi\psi,\;\bar\psi i/\!\!\!{\partial}\psi\\
1 & 2 & i\bar\psi\gamma^{5}\psi\phi
\end{array}
$$

The cases with an odd number of external pseudoscalars are forbidden by parity. At one loop, the divergent 1PI diagrams are:

- scalar two-point function: a fermion loop with two pseudoscalar Yukawa vertices, and a scalar tadpole from one $\phi^{4}$ vertex;
- fermion two-point function: a fermion line with one internal scalar and one internal fermion;
- Yukawa vertex: the one-loop three-point correction with two internal fermion propagators and one internal scalar propagator;
- scalar four-point function: scalar bubble diagrams from two $\phi^{4}$ vertices and the fermion box with four Yukawa vertices.

All required counterterms have the same form as terms already present in the Lagrangian, so the theory is perturbatively renormalizable. The $\phi^{4}$ term is necessary because the fermion box with four Yukawa vertices generates a divergent four-scalar 1PI function even if $\lambda_0$ were set to zero at tree level.

1. Introduce

$$\begin{align}
\phi_0&=Z_{\phi}^{1/2}\phi,& \psi_0&=Z_{\psi}^{1/2}\psi.
\end{align}$$

Write

$$\begin{align}
\mathcal{L} &=\mathcal{L}_{r}+\delta\mathcal{L},
\end{align}$$

where

$$\begin{align}
\mathcal{L}_{r} &= \dfrac{1}{2}(\partial_{\mu}\phi)^{2} -\dfrac{1}{2}m^{2}\phi^{2} +\bar\psi(i/\!\!\!{\partial}-M)\psi -ig\bar\psi\gamma^{5}\psi\phi -\dfrac{\lambda}{4!}\phi^{4},
\end{align}$$

and

$$\begin{align}
\delta\mathcal{L} &= \dfrac{1}{2}\delta Z_{\phi}(\partial_{\mu}\phi)^{2} -\dfrac{1}{2}\delta m^{2}\phi^{2} +\delta Z_{\psi}\bar\psi i/\!\!\!{\partial}\psi -\delta M\bar\psi\psi\\
&\quad -i\delta g\,\bar\psi\gamma^{5}\psi\phi -\dfrac{\delta\lambda}{4!}\phi^{4}.
\end{align}$$

The renormalized Feynman rules are

$$\begin{align}
\text{scalar propagator:}\qquad &\dfrac{i}{p^{2}-m^{2}+i\epsilon},\\
\text{fermion propagator:}\qquad &\dfrac{i(/\!\!\! p+M)}{p^{2}-M^{2}+i\epsilon},\\
\text{pseudoscalar Yukawa vertex:}\qquad &g\gamma^{5},\\
\text{four-scalar vertex:}\qquad &-i\lambda.
\end{align}$$

The counterterm insertions are

$$\begin{align}
\phi\phi:\qquad &i(\delta Z_{\phi}p^{2}-\delta m^{2}),\\
\psi\bar\psi:\qquad &i(\delta Z_{\psi}/\!\!\! p-\delta M),\\
\bar\psi\psi\phi:\qquad &\delta g\,\gamma^{5},\\
\phi^{4}:\qquad &-i\delta\lambda.
\end{align}$$

All momenta are taken incoming. If one chooses a convention where the Yukawa vertex is written as $-ig\gamma^{5}$, the same convention must be used for the counterterm vertex; physical amplitudes are unchanged.

1. Fourier transforming the Ward identity and amputating the external fermion propagators gives the Ward-Takahashi identity for the proper current vertex:

$$\begin{align}
k_{\mu}\Gamma_{0}^{\mu}(k;p+k,p) &=S_{0}^{-1}(p+k)-S_{0}^{-1}(p).
\end{align}$$

Taking $k\to0$ gives

$$\begin{align}
\Gamma_{0}^{\mu}(0;p,p) &=\dfrac{\partial S_{0}^{-1}(p)}{\partial p_{\mu}}.
\end{align}$$

Therefore the divergent coefficient of the current vertex is the same as the divergent coefficient of the fermion kinetic term. If the current vertex is renormalized by

$$\begin{align}
\bar\Gamma^{\mu}&=Z_{1}\bar\Gamma_{0}^{\mu},
\end{align}$$

and the fermion field by $\psi_0=Z_2^{1/2}\psi$, the Ward identity implies

$$\begin{align}
Z_{1}&=Z_{2}.
\end{align}$$

Now introduce a possible current renormalization

$$\begin{align}
j_{0}^{\mu}&=Z_{J}j^{\mu}.
\end{align}$$

Since $G_{2}^{0}=Z_{2}G_{2}$, the bare three-point function can be written as

$$\begin{align}
G_{3}^{0,\mu} &=G_{2}^{0}\Gamma_{0}^{\mu}G_{2}^{0} =Z_{2}^{2}G_{2}\Gamma_{0}^{\mu}G_{2}.
\end{align}$$

The renormalized three-point function is

$$\begin{align}
G_{3}^{\mu} &=Z_{2}^{-1}Z_{J}^{-1}G_{3}^{0,\mu} =Z_{2}Z_{J}^{-1}G_{2}\Gamma_{0}^{\mu}G_{2}.
\end{align}$$

But by definition it must also be

$$\begin{align}
G_{3}^{\mu} &=G_{2}\Gamma^{\mu}G_{2} =Z_{1}G_{2}\Gamma_{0}^{\mu}G_{2}.
\end{align}$$

Thus

$$\begin{align}
Z_{1}&=Z_{2}Z_{J}^{-1}.
\end{align}$$

Using $Z_{1}=Z_{2}$, one obtains

$$\begin{align}
Z_{J}&=1.
\end{align}$$

Hence the conserved vector current is not renormalized. This is the analogue of the usual vector Ward identity: the vector symmetry is exact and has no anomaly in this theory.
