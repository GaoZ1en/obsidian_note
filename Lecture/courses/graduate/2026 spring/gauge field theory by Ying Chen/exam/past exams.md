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
2. （5 分）写出该理论（动量空间）的费曼规则；
sol. $$\begin{align}
D_{0}(p^{2},M_{0}) & =\dfrac{i}{p^{2}-M_{0}^{2}+i\varepsilon} \\
D_{0}(p^{2},m_{0}) & =\dfrac{i}{p^{2}-m_{0}^{2}+i\varepsilon} \\
-i\lambda_{0}
\end{align}$$
3. （10 分）画出单圈水平上的自能图和顶角图，并讨论它们的发散性；
sol. The one-loop two-point self-energy diagrams are bubble diagrams with two internal scalar propagators. Their superficial degree of divergence is
$$\begin{align}
D_{\mathrm{self}} & =4-2\times 2=0,
\end{align}$$
so the $\Phi$ and $\phi$ self-energies are logarithmically divergent by power counting. The one-loop correction to the $\Phi\phi\phi$ vertex is a triangle diagram with three internal scalar propagators, so
$$\begin{align}
D_{\mathrm{vertex}} & =4-2\times 3=-2,
\end{align}$$
and the vertex correction is superficially convergent. There can also be a one-point tadpole for $\Phi$, which corresponds to a local linear counterterm; it does not change the conclusion that only finitely many counterterms are needed.
4. （5 分）如果 $\displaystyle{\Phi}$ 的自能为 $\displaystyle{-i\Sigma(p^{2})}$，证明其动量空间的全传播子为
$$\begin{align}
D(p^{2},M_{0}) & =\dfrac{i}{p^{2}-M_{0}^{2}-\Sigma(p^{2})+i\varepsilon}
\end{align}$$
sol. by Dyson equation for propagator: 
$$\begin{align}
D^{-1}-D_{0}^{-1} & =i\Sigma(p^{2}) \\
\implies D(p^{2},M_{0}) & =\dfrac{i}{p^{2}-M_{0}^{2}-\Sigma(p^{2})+i\varepsilon}
\end{align}$$
5. （5 分）如果 $\displaystyle{\Sigma(p^{2})}$ 有虚部（在 $\displaystyle{M_{0}>2m_{0}}$ 时是这样的，你们可以考试后具体计算单圈图来验证） ， 即 $\displaystyle{\Sigma(p^{2})=\mathrm{Re}\Sigma(p^{2})+i\mathrm{Im}\Sigma(p^{2})}$， 证明 $\displaystyle{\Phi}$ 场的在壳波函数重正化常数、物理质量分别为$$\begin{align}Z & =1+\dfrac{\mathrm{d}}{\mathrm{d}p^{2}}\mathrm{Re}\Sigma(p^{2})|_{p^{2}=M^{2}}, & M^{2}=M_{0}^{2}+\mathrm{Re}\Sigma(M^{2})\end{align}$$而且全传播子可以写作$$\begin{align}D(p^{2},M) & =\dfrac{iZ}{p^{2}-M^{2}-iZ\mathrm{Im}\Sigma(p^{2})}\end{align}$$（注*：根据 $\displaystyle{\Phi\to \Phi}$ 的向前散射振幅的定义有 $\displaystyle{M(\Phi\to \Phi)=-Z\Sigma(p^{2}=M^{2})}$，注意这里的 $\displaystyle{Z}$ 是LSZ 约化公式要求的。再根据光学定理有 $$\begin{align}2\mathrm{Im}M(\Phi\to \Phi) & =\sum _{f}\int \mathrm{d}\Phi _{f}|M(\Phi\to f)|^{2}=2M\Gamma _{\text{tot}}\end{align}$$这里 $\displaystyle{f}$ 代表所有可能的 $\displaystyle{\Phi}$ 的衰变末态，所以 $\displaystyle{\Gamma _{\text{tot}}}$ 是 $\displaystyle{\Phi}$ 粒子的总宽度。在窄共振近似（$\displaystyle{M\gg \Gamma _{\text{tot}}}$）下，可以取 $\displaystyle{\mathrm{Im}\Sigma(p^{2})\approx \mathrm{Im}\Sigma(p^{2}=M^{2})}$, 则有$$\begin{align}D(p^{2},M) & \propto \dfrac{i}{p^{2}-M^{2}+iM\Gamma _{\text{tot}}}\end{align}$$这是我们在粒子物理中熟悉的关于共振态的Breit-Wigner 公式。）
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
Z & =\left(1-\dfrac{\mathrm{d}}{\mathrm{d}p^{2}}\mathrm{Re}\Sigma(p^{2})|_{p^{2}=M^{2}}\right)^{-1}
\simeq 1+\dfrac{\mathrm{d}}{\mathrm{d}p^{2}}\mathrm{Re}\Sigma(p^{2})|_{p^{2}=M^{2}} .
\end{align}$$
this implies that the full propagator can be written as
$$\begin{align}
D(p^{2}) & =\dfrac{iZ}{p^{2}-M^{2}-iZ\mathrm{Im}\Sigma(p^{2})}.\end{align}$$
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
2. （5 分）如果实标量场 $\displaystyle{\phi=\left\{\phi ^{a}|a=1,2,3\right\}}$ 是 $\displaystyle{\mathrm{SU}(2)}$ 群的自伴表示，请写出其协变微商 $\displaystyle{D_{\mu}\phi}$ 的具体表达式和 $\displaystyle{\phi}$ 场在有规范耦合时的拉氏量。
sol. $$\begin{align}
D_{\mu}\phi ^{a} & =\partial _{\mu}\phi ^{a}+g\varepsilon ^{abc}A^{b}_{\mu}\phi ^{c}, \\
\mathcal{L}_{\phi} & =\dfrac{1}{2}(D_{\mu}\phi ^{a})(D^{\mu}\phi ^{a})-V(\phi) \\
 & =\dfrac{1}{2}\partial _{\mu}\phi ^{a}\partial ^{\mu}\phi ^{a}+g\varepsilon ^{abc}A_{\mu}^{a}\phi ^{b}\partial ^{\mu}\phi ^{c}
+\dfrac{1}{2}g^{2}\left(A_{\mu}^{a}A^{a,\mu}\phi ^{b}\phi ^{b}-(A_{\mu}^{a}\phi ^{a})^{2}\right)-V(\phi).
\end{align}$$
3. (10 分) 如果 $\displaystyle{\phi}$ 的自相互作用势为$$\begin{align}V(\phi) & =-\dfrac{1}{2}\mu ^{2}\phi ^{a}\phi ^{a}+\dfrac{1}{4}\lambda(\phi ^{a}\phi ^{a})^{2}\end{align}$$请讨论在存在标量场-规范场耦合时，规范对称性的自发破缺情形，如破缺的对称性、剩余的对称性、对称性破缺后规范玻色子的质量、标量粒子的质量等。
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
\dfrac{1}{2}(D_{\mu}\phi ^{a})(D^{\mu}\phi ^{a})
& \supset \dfrac{1}{2}g^{2}v^{2}\left(A_{\mu}^{1}A^{1,\mu}+A_{\mu}^{2}A^{2,\mu}\right).
\end{align}$$
Therefore $A_{\mu}^{1}$ and $A_{\mu}^{2}$ acquire the same mass
$$\begin{align}
M_{W}^{2} & =g^{2}v^{2},
\end{align}$$
while $A_{\mu}^{3}$ remains massless and is the gauge boson of the unbroken $\mathrm{U}(1)$. The two Goldstone fields are eaten by the two massive gauge bosons. The radial scalar has
$$\begin{align}
m_{h}^{2} & =2\lambda v^{2}=2\mu ^{2}.
\end{align}$$
4. （10 分）什么是 $\displaystyle{R_{\xi}}$ 规范？请在 $\displaystyle{R_{\xi}}$ 规范下进行 Faddeev-Popov 路径积分量子化，并推导出规范玻色子和鬼粒子的传播子。
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
\mathcal{L}_{\mathrm{gh}}^{(2)}
& =\bar{c}^{i}(-\partial ^{2}-\xi M_{W}^{2})c^{i}
+\bar{c}^{3}(-\partial ^{2})c^{3},\qquad i=1,2.
\end{align}$$
Thus the Goldstone and ghost fields in the broken directions have mass squared $\xi M_{W}^{2}$, while the unbroken ghost remains massless:
$$\begin{align}
D_{c}^{ij}(p) & =\dfrac{i\delta ^{ij}}{p^{2}-\xi M_{W}^{2}+i\varepsilon},\qquad i,j=1,2,\\
D_{c}^{33}(p) & =\dfrac{i}{p^{2}+i\varepsilon}.
\end{align}$$
The massive gauge boson propagator is
$$\begin{align}
D_{\mu \nu}^{ij}(p)
& =\dfrac{-i\delta ^{ij}}{p^{2}-M_{W}^{2}+i\varepsilon}
\left[g_{\mu \nu}-\dfrac{(1-\xi)p_{\mu}p_{\nu}}{p^{2}-\xi M_{W}^{2}+i\varepsilon}\right],
\qquad i,j=1,2,
\end{align}$$
and the unbroken massless gauge boson has the usual covariant-gauge propagator
$$\begin{align}
D_{\mu \nu}^{33}(p)
& =\dfrac{-i}{p^{2}+i\varepsilon}\left[g_{\mu \nu}-(1-\xi)\dfrac{p_{\mu}p_{\nu}}{p^{2}+i\varepsilon}\right].
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
2. (5 分) 证明：经典情形下，在定域变换$$\begin{align}\psi\to e^{i\alpha(x)\gamma_{5}}\psi,\bar{\psi}\to \bar{\psi}e^{i\alpha(x)\gamma_{5}}\end{align}$$下（$\displaystyle{\alpha(x)}$ 为无穷小量），根据最小作用量原理 $\displaystyle{\delta S}$ 可以得到如下 PCAC关系$$\begin{align}\partial _{\mu}j ^{\mu}_{5}(x) & =2im_{0}j_{5}(x)\end{align}$$其中 $\displaystyle{j_{5}^{\mu}=\bar{\psi}\gamma ^{\mu}\gamma _{5}\psi,j_{5}=\bar{\psi}\gamma_{5}\psi}$ 分别为轴矢流和赝标量流。
sol.
$$\begin{align}
\delta _{\alpha}\mathcal{L}_{\text{eff}} & =-\alpha \bar{\psi}\left\{\gamma _{5},\gamma ^{\mu}\right\}D_{\mu}\psi-\partial _{\mu}\alpha\bar{\psi}\gamma ^{\mu}\gamma ^{5}\psi-2i\alpha(x)m_{0}\bar{\psi}\gamma_{5}\psi \\
 & =\alpha\left(\partial _{\mu}j_{5}^{\mu}-2im_{0}j_{5}\right)+\text{(boundary terms)}=0 \\
\implies \partial _{\mu}j_{5}^{\mu} & =2im_{0}j_{5}
\end{align}$$
3. (5 分）QED 的生成泛函为$$\begin{align}Z[J_{\mu},\eta,\bar{\eta}] & =\int \mathcal{D}A\mathcal{D}\psi \mathcal{D}\bar{\psi}e^{i \int \mathrm{d}^{4}x\left(\mathcal{L}_{\text{eff}}+J_{\mu}A^{\mu}+\bar{\eta}\psi+\bar{\psi}\eta\right)}\end{align}$$当对场量做变换 $\displaystyle{\psi\to e^{i\alpha(x)\gamma_{5}}\psi,\bar{\psi}\to \bar{\psi}e^{i\alpha(x)\gamma_{5}}}$ 时（考虑无穷小变换），生成泛函是不变的，即积分测度、作用量和源项的变化正好抵消。如果已知积分测度在此变换下的变换形式为$$\begin{align}\mathcal{D}\psi \mathcal{D}\bar{\psi} & \to \mathcal{D}\psi \mathcal{D}\bar{\psi} e^{-\frac{ie^{2}}{16\pi ^{2}}\int \mathrm{d}^{4}x\alpha(x)\varepsilon ^{\mu \nu \rho \sigma}F_{\mu \nu}F_{\rho \sigma}}\end{align}$$请证明轴矢流满足的 Ward 恒等式$$\begin{align}\partial _{\mu}\braket{ j_{5}^{\mu}(x)\psi(x_{1})\bar{\psi}(x_{2}) }  & =2im\braket{ j_{5}(x)\psi(x_{1})\bar{\psi}(x_{2}) }  \\& +\dfrac{e^{2}}{16\pi ^{2}}\varepsilon ^{\mu \nu \rho \sigma}\braket{ F_{\mu \nu}(x)F_{\rho \sigma}(x)\psi(x_{1})\bar{\psi}(x_{2}) }  \\& -\delta(x-x_{1})\gamma_{5}\braket{ \psi(x)\bar{\psi}(x_{2}) } -\delta(x-x_{2})\braket{ \psi(x_{1})\bar{\psi}(x) } \gamma_{5}\end{align}$$这是反常的轴矢流Ward 恒等式。
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
4. (5 分）实际上，可以证明反常项满足
$$\begin{align}
\dfrac{e^{2}}{16\pi ^{2}}\varepsilon ^{\mu \nu \rho \sigma}F_{\mu \nu}F_{\rho \sigma}
& =\partial _{\mu}K^{\mu}, &
K^{\mu}&=\dfrac{e^{2}}{4\pi ^{2}}\varepsilon ^{\mu \nu \rho \sigma}A_{\nu}\partial _{\rho}A_{\sigma}.
\end{align}$$
我们可以引入新的流
$$\begin{align}
\bar{j}_{5}^{\mu} & =j_{5}^{\mu}-K^{\mu}.
\end{align}$$
则上述反常的 Ward 恒等式可以写作
$$\begin{align}
\partial _{\mu}\braket{ \bar{j}_{5}^{\mu}(x)\psi(x_{1})\bar{\psi}(x_{2}) }
& =2im_{0}\braket{ j_{5}(x)\psi(x_{1})\bar{\psi}(x_{2}) }  \\
&\quad -\delta(x-x_{1})\gamma_{5}\braket{ \psi(x)\bar{\psi}(x_{2}) }
-\delta(x-x_{2})\braket{ \psi(x_{1})\bar{\psi}(x) } \gamma_{5}.
\end{align}$$
做傅里叶变换（从 $\displaystyle{x}$ 点流入 $\displaystyle{q}$, 从 $\displaystyle{x_{2}}$ 点流向 $\displaystyle{x}$ 点的动量为 $\displaystyle{p}$，则从 $\displaystyle{x}$ 流向 $\displaystyle{x_{1}}$ 的动量为 $\displaystyle{p+q}$）有动量空间的 Ward 恒等式
$$\begin{align}
q_{\mu}G^{\mu}_{5,c}(q,p)
& =2m_{0}G_{5,c}(q,p)+i\gamma _{5}\tilde{S}_{f}(p)+i\tilde{S}_{f}(p+q)\gamma_{5}.
\end{align}$$
其中 $\displaystyle{G_{5,c}^{\mu},G_{5,c}}$ 分别为 $\displaystyle{\braket{ \bar{j}_{5}^{\mu}(x)\psi(x_{1})\bar{\psi}(x_{2}) },\braket{ j_{5}(x)\psi(x_{1})\bar{\psi}(x_{2}) }}$ 的连通部分的动量空间表达式（非连通部分没有贡献），$\displaystyle{\tilde{S}_{f}}$ 是前面得到的费米子的全传播子。我们知道，连通格林函数可以表示为截腿格林函数和全传播子的乘积。具体而言，
$$\begin{align}
G^{\mu}_{5,c}(q,p) & =\tilde{S}_{f}(p+q)G^{\mu}_{5,amp}\tilde{S}_{f}(p), \\
G_{5,c}(q,p) & =\tilde{S}_{f}(p+q)G_{5,amp}\tilde{S}_{f}(p).
\end{align}$$
则反常的 Ward 恒等式用截腿格林函数表示为
$$\begin{align}
q_{\mu}G^{\mu}_{5,amp}(q,p)
& =2m_{0}G_{5,amp}(q,p)+i\tilde{S}^{-1}_{f}(p+q)\gamma _{5}+i\gamma _{5}\tilde{S}_{f}^{-1}(p).
\end{align}$$
利用该 Ward 恒等式证明：费米子质量的辐射修正 $\displaystyle{\Sigma(m)}$ 正比于 $\displaystyle{m_{0}}$ （提示：QED 中，$\displaystyle{G^{\mu}_{5,amp}(q,p)}$ 没有 $\displaystyle{q^{2}=0}$ 的极点，所以在取 $\displaystyle{q_{\mu}\to0}$ 的极限时，$\displaystyle{q_{\mu}G^{\mu}_{5,amp}=0}$）。这个结论的重要物理含义是“费米子质量是相称性重正化的，手征对称性不被辐射修正所破坏”。

sol. Since $\displaystyle{G^{\mu}_{5,amp}(q,p)}$ has no pole at $\displaystyle{q^{2}=0}$, taking the limit $\displaystyle{q_{\mu}\to0}$ gives $\displaystyle{q_{\mu}G^{\mu}_{5,amp}=0}$. Thus
$$\begin{align}
-2m_{0}G_{5,amp}(0,p)
& =i\tilde{S}^{-1}_{f}(p)\gamma_{5}+i\gamma _{5}\tilde{S}_{f}^{-1}(p) \\
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
i\Pi_{c,\mathrm{div}}^{ab}(p)
& =-i\delta ^{ab}p^{2}\dfrac{g^{2}C_{A}}{16\pi ^{2}}\dfrac{1}{2\varepsilon}.
\end{align}$$
The counterterm insertion from $\delta _{3}^{c}(\partial _{\mu}\bar{c}^{a})\partial ^{\mu}c^{a}$ cancels this pole, so
$$\begin{align}
\delta _{3}^{c}
& =\dfrac{g^{2}C_{A}}{16\pi ^{2}}\dfrac{1}{2\varepsilon}.
\end{align}$$
The one-loop ghost-gluon vertex correction is proportional to the tree vertex. Its $\overline{\mathrm{MS}}$ counterterm is
$$\begin{align}
\delta _{1}^{c}
& =-\dfrac{g^{2}C_{A}}{16\pi ^{2}}\dfrac{1}{2\varepsilon}.
\end{align}$$
For $\mathrm{SU}(3)$, $C_{A}=C_{2}(G)=3$, hence
$$\begin{align}
\delta _{3}^{c}
& =\dfrac{3g^{2}}{32\pi ^{2}}\dfrac{1}{\varepsilon},&
\delta _{1}^{c}
& =-\dfrac{3g^{2}}{32\pi ^{2}}\dfrac{1}{\varepsilon}.
\end{align}$$

2. （10 分）如果已知 $\displaystyle{Z_{3}=1-\dfrac{g^{2}}{16\pi ^{2}} \dfrac{1}{\varepsilon}\left( \dfrac{4}{3}n_{f}C(r)-\dfrac{5}{3}C_{2}(G) \right)}$，其中$\displaystyle{C(r)=\dfrac{1}{2},C_{2}(G)=3}$，利用裸耦合常数 $\displaystyle{g_{0}}$ 满足的重正化群方程计算 $\displaystyle{\beta}$ 函数 $\displaystyle{\beta(g)=\mu\dfrac{\mathrm{d}}{\mathrm{d}\mu}g}$， 从而给出跑动耦合常数 $\displaystyle{g(\mu)}$ 的表达式，并说明非阿贝尔规范理论的渐进自由的含义。可以看出这种计算方式和计算规范场-费米子场耦合及费米自能的单圈修正的结果是相同的。这个结论是由 BRST 对称性保证的，即 BRST 对称性给出 $\displaystyle{\dfrac{Z_{1}}{Z_{2}}=\dfrac{Z_{1}^{c}}{Z_{3}^{c}}=\dfrac{Z_{1}^{3g}}{Z_{3}}=\left( \dfrac{Z_{1}^{4g}}{Z_{3}} \right)^{1/2}}$ 或者$\displaystyle{\delta_{1}-\delta_{2}=\delta_{1}^{c}-\delta_{3}^{c}=\delta_{1}^{3g}-\delta_{3}=\dfrac{1}{2}(\delta_{1}^{4g}-\delta_{3})}$，其物理含义是规范耦合常数的普适性。

sol. From
$$\begin{align}
\delta _{1}^{c} & =Z_{g}Z_{3}^{c}Z_{3}^{1/2}-1,
\end{align}$$
the coupling renormalization constant is, to one loop,
$$\begin{align}
Z_{g}
& =1+\delta _{g},&
\delta _{g}
& =\delta _{1}^{c}-\delta _{3}^{c}-\dfrac{1}{2}\delta _{3}.
\end{align}$$
Using
$$\begin{align}
\delta _{3}
& =-\dfrac{g^{2}}{16\pi ^{2}}\dfrac{1}{\varepsilon}
\left(\dfrac{4}{3}n_{f}C(r)-\dfrac{5}{3}C_{A}\right)
=\dfrac{g^{2}}{16\pi ^{2}}\dfrac{1}{\varepsilon}
\left(\dfrac{5}{3}C_{A}-\dfrac{4}{3}n_{f}C(r)\right),
\end{align}$$
we obtain
$$\begin{align}
\delta _{g}
& =-\dfrac{g^{2}}{16\pi ^{2}}\dfrac{1}{2\varepsilon}
\left(\dfrac{11}{3}C_{A}-\dfrac{4}{3}n_{f}C(r)\right).
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
\beta(g) & =\mu\dfrac{\mathrm{d}g}{\mathrm{d}\mu}
=-\dfrac{\beta _{0}}{16\pi ^{2}}g^{3}+O(g^{5}).
\end{align}$$
For $\mathrm{SU}(3)$ with $C_{A}=3$ and $C(r)=T_{F}=1/2$,
$$\begin{align}
\beta _{0} & =11-\dfrac{2}{3}n_{f},&
\beta(g) & =-\dfrac{g^{3}}{16\pi ^{2}}\left(11-\dfrac{2}{3}n_{f}\right)+O(g^{5}).
\end{align}$$
Solving the one-loop RG equation gives
$$\begin{align}
\dfrac{1}{g^{2}(\mu)}
& =\dfrac{1}{g^{2}(\mu_{0})}
+\dfrac{\beta _{0}}{8\pi ^{2}}\ln \dfrac{\mu}{\mu_{0}},
\end{align}$$
or equivalently
$$\begin{align}
g^{2}(\mu)
& =\dfrac{g^{2}(\mu_{0})}
{1+\dfrac{\beta _{0}g^{2}(\mu_{0})}{8\pi ^{2}}\ln \dfrac{\mu}{\mu_{0}}}.
\end{align}$$
For $\beta _{0}>0$, the coupling decreases at high energy, $g(\mu)\to0$ as $\mu\to\infty$. This is asymptotic freedom.
