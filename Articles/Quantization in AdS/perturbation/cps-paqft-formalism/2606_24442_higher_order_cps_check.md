# 2606.24442 toy model 的高阶 CPS/diagrammatic 检验

日期：2026-07-09

## 0. 直接结论

本文是一个 kinetic/constraint toy-model 的 CPS normalization benchmark，不是 fixed-background scalar loop pipeline。量子化公式取 $\hbar=1$；BV 和引力不在本文范围内。

用前一份 note 的 formalism 检验 2606.24442 的 toy model，结论是：

1. **CPS pullback formalism 通过检验**。把低能 perturbative solution 组织成 Green-operator rooted-chain 展开后，可以全阶重构精确低能模式。
2. **辛形式全阶保持 canonical**。在正确归一化的低能模式坐标 \(a,a^\dagger\) 中，

$$\begin{align}
p_\lambda^*\Omega_\lambda=-i\,\delta a\wedge\delta a^\dagger
\end{align}$$

   是全阶恒等式，不只是论文中展示的 \(O(\lambda^2)\) 结果。
3. **Hamiltonian/spectrum 全阶等于精确低能频率展开**：

$$\begin{align}
H_{\rm low}=f_1\left(a^\dagger a+\frac12\right).
\end{align}$$

4. **发现 2606.24442 v2 的一个符号不一致**。其精确解展示式中低能分支 \(y\) 的号与 EOM、\(\lambda=0\) 极限、后续 \(\pi_x,\pi_y\) 公式和 Sec. 4.4 的 CPS commutator 不一致。正确低能分支应取

$$\begin{align}
y_{\rm low}(t)= -\frac{i}{\sqrt{2\sqrt{1+4\lambda\omega}}} \left(a e^{-i f_1t}-a^\dagger e^{i f_1t}\right).
\end{align}$$

   因此低能

$$\begin{align}
[x(t_1),y(t_2)]_{\rm low} =+\frac{i}{\sqrt{1+4\lambda\omega}}\cos f_1(t_1-t_2),
\end{align}$$

   不是精确低能小节中写出的负号。Sec. 4.4 的 CPS 微扰计算给的是正号，和正确结果一致。

这个不一致不是 CPS formalism 的失败，而是源文精确解/低能 commutator 展示处的符号错误。我们的原 note 需要补上一句 caveat：引用 2606.24442 的“agreement with exact theory”时，应理解为与修正符号后的低能精确分支一致。

## 1. 模型和精确低能分支

2606.24442 的模型为

$$\begin{align}
L= -\frac{\omega}{2}(x^2+y^2) -\frac12(x\dot y-y\dot x) +\frac{\lambda}{2}(\dot x^2+\dot y^2).
\end{align}$$

EOM 为

$$\begin{align}
-\dot y-\omega x-\lambda\ddot x=0, \qquad \dot x-\omega y-\lambda\ddot y=0.
\end{align}$$

定义无量纲参数

$$\begin{align}
q:=\lambda\omega,\qquad s:=\omega t, \qquad d:=\sqrt{1+4q}.
\end{align}$$

低能频率为

$$\begin{align}
f_1=\omega r,\qquad r:=\frac{\sqrt{1+4q}-1}{2q} =\frac{2}{1+\sqrt{1+4q}}.
\end{align}$$

低能模式的正确 EOM 解是

$$\begin{align}
x(t)=\frac{1}{\sqrt{2d}} \left(ae^{-if_1t}+a^\dagger e^{if_1t}\right),
\end{align}$$

$$\begin{align}
y(t)=-\frac{i}{\sqrt{2d}} \left(ae^{-if_1t}-a^\dagger e^{if_1t}\right).
\end{align}$$

检查：对 \(ae^{-if_1t}\) 分支，设 \(y=B e^{-if_1t}\), \(x=Ae^{-if_1t}\)。第一条 EOM 给

$$\begin{align}
i f_1 B=(\omega-\lambda f_1^2)A.
\end{align}$$

低频根满足

$$\begin{align}
\lambda f_1^2+f_1=\omega,
\end{align}$$

所以 \(B=-iA\)。因此低能 \(y\) 的 \(ae^{-if_1t}\) 系数必须是 \(-i\)，不是 \(+i\)。

## 2. 用自由解重写：rooted-chain 展开

自由解取

$$\begin{align}
x_0(t)=\frac1{\sqrt2}(ae^{-i\omega t}+a^\dagger e^{i\omega t}),
\end{align}$$

$$\begin{align}
y_0(t)=-\frac{i}{\sqrt2}(ae^{-i\omega t}-a^\dagger e^{i\omega t}).
\end{align}$$

令

$$\begin{align}
c(q):=d^{-1/2}=(1+4q)^{-1/4}, \qquad \theta(q,s):=(r-1)s.
\end{align}$$

则精确低能解可写为

$$\begin{align}
x=c\left(\cos\theta\,x_0+\sin\theta\,y_0\right),
\end{align}$$

$$\begin{align}
y=c\left(-\sin\theta\,x_0+\cos\theta\,y_0\right).
\end{align}$$

这就是这个线性模型中 diagrammatic solution 的闭式 resummation：因为相互作用是 velocity-dependent quadratic perturbation，不产生 branching tree；它只产生沿同一根的 unary chain diagrams。每个链节来自一次

$$\begin{align}
q\,\partial_s^2
\end{align}$$

型源插入，再由自由一阶 Green operator 传播。

## 3. Green-operator 递归

把 EOM 写成无量纲形式：

$$\begin{align}
x'-y=q\,y'',\qquad y'+x=-q\,x'',
\end{align}$$

其中 prime 是 \(\partial_s\)。设

$$\begin{align}
x=\sum_{n\ge0}q^n X_n,\qquad y=\sum_{n\ge0}q^n Y_n.
\end{align}$$

则

$$\begin{align}
X_n'-Y_n=Y_{n-1}'', \qquad Y_n'+X_n=-X_{n-1}'', \qquad n\ge1.
\end{align}$$

令

$$
J=\begin{pmatrix}0&1\\-1&0\end{pmatrix},
\qquad
U_0(s)=e^{sJ}.
$$

递归解为

$$\begin{align}
\binom{X_n(s)}{Y_n(s)} = U_0(s)\binom{h^x_n}{h^y_n} +\int_0^s du\, U_0(s-u) \binom{Y_{n-1}''(u)}{-X_{n-1}''(u)}.
\end{align}$$

这里第一项是 homogeneous ambiguity。若只取 retarded particular solution，则还没有完成 CPS normalization。论文中的 \(x_1,x_2\) 之所以包含 \(-\omega x_0\)、\(\frac52\omega^2x_0\) 这样的 homogeneous pieces，正是因为它们在固定低能 mode normalization。

在本模型中，归一化条件等价于

$$\begin{align}
X_n(0)=c_n x_0(0),\qquad Y_n(0)=c_n y_0(0),
\end{align}$$

其中

$$\begin{align}
c(q)=\sum_{n\ge0}c_nq^n.
\end{align}$$

## 4. 高阶微扰解

Wolfram 检查脚本给出

$$\begin{align}
c(q)=1-q+\frac52q^2-\frac{15}{2}q^3+\frac{195}{8}q^4 -\frac{663}{8}q^5+\frac{4641}{16}q^6+\cdots,
\end{align}$$

$$\begin{align}
r(q)=1-q+2q^2-5q^3+14q^4-42q^5+132q^6-429q^7+\cdots.
\end{align}$$

写

$$\begin{align}
x=A(q,s)x_0+B(q,s)y_0,\qquad y=-B(q,s)x_0+A(q,s)y_0,
\end{align}$$

则

$$\begin{align}
A(q,s)=c\cos[(r-1)s], \qquad B(q,s)=c\sin[(r-1)s].
\end{align}$$

展开到四阶：

$$\begin{align}
A(q,s)= 1-q +\left(\frac52-\frac{s^2}{2}\right)q^2 +\frac52(-3+s^2)q^3 +\frac{585-246s^2+s^4}{24}q^4 +O(q^5),
\end{align}$$

$$\begin{align}
B(q,s)= -s q+3s q^2 +\frac{s(-57+s^2)}{6}q^3 +\frac{-7s(-27+s^2)}{6}q^4 +O(q^5).
\end{align}$$

换回 \(\lambda,\omega,t\)，前两阶正好给论文 Eq. (4.14)：

$$\begin{align}
x=(1-\lambda\omega+\tfrac52\lambda^2\omega^2)x_0 -\lambda\omega^2t\,y_0 +\lambda^2\left(3\omega^3t\,y_0-\frac12\omega^4t^2x_0\right) +O(\lambda^3),
\end{align}$$

$$\begin{align}
y=(1-\lambda\omega+\tfrac52\lambda^2\omega^2)y_0 +\lambda\omega^2t\,x_0 +\lambda^2\left(-3\omega^3t\,x_0-\frac12\omega^4t^2y_0\right) +O(\lambda^3).
\end{align}$$

新得到的三阶项为

$$\begin{align}
x^{(3)}= \lambda^3\left[ \left(-\frac{15}{2}\omega^3+\frac52\omega^5t^2\right)x_0 +\left(-\frac{19}{2}\omega^4t+\frac16\omega^6t^3\right)y_0 \right],
\end{align}$$

$$\begin{align}
y^{(3)}= \lambda^3\left[ -\left(-\frac{19}{2}\omega^4t+\frac16\omega^6t^3\right)x_0 +\left(-\frac{15}{2}\omega^3+\frac52\omega^5t^2\right)y_0 \right].
\end{align}$$

四阶项为

$$\begin{align}
x^{(4)}= \lambda^4\left[ \left(\frac{195}{8}\omega^4-\frac{41}{4}\omega^6t^2+\frac1{24}\omega^8t^4\right)x_0 +\left(\frac{63}{2}\omega^5t-\frac76\omega^7t^3\right)y_0 \right],
\end{align}$$

$$\begin{align}
y^{(4)}= \lambda^4\left[ -\left(\frac{63}{2}\omega^5t-\frac76\omega^7t^3\right)x_0 +\left(\frac{195}{8}\omega^4-\frac{41}{4}\omega^6t^2+\frac1{24}\omega^8t^4\right)y_0 \right].
\end{align}$$

这些高阶项满足上面的 Green-operator recursion，并等于低能精确解的 Taylor 展开。

## 5. 全阶 CPS symplectic form

CPS symplectic form 是

$$\begin{align}
\Omega =-\delta x\wedge\delta y +\lambda(\delta\dot x\wedge\delta x+\delta\dot y\wedge\delta y).
\end{align}$$

对低能闭式解，

$$\begin{align}
\partial_s x=r y,\qquad \partial_s y=-r x.
\end{align}$$

并且

$$\begin{align}
\delta x\wedge\delta y=c^2\,\delta x_0\wedge\delta y_0.
\end{align}$$

注意 \(\dot x=\omega\partial_sx\)，所以 \(\lambda\dot{}\) 项带来 \(q\)。于是

$$\begin{align}
\Omega_{\rm low} =-(1+2qr)c^2\,\delta x_0\wedge\delta y_0.
\end{align}$$

但

$$\begin{align}
1+2qr=\sqrt{1+4q}=d, \qquad c^2=d^{-1}.
\end{align}$$

因此

$$\begin{align}
\Omega_{\rm low} =-\delta x_0\wedge\delta y_0 =-i\,\delta a\wedge\delta a^\dagger.
\end{align}$$

这证明论文中的 \(O(\lambda)\)、\(O(\lambda^2)\) cancellation 是全阶恒等式。

## 6. 全阶 Hamiltonian 和谱

CPS Hamiltonian 是

$$\begin{align}
H=\frac{\omega}{2}(x^2+y^2) +\frac{\lambda}{2}(\dot x^2+\dot y^2).
\end{align}$$

低能闭式解满足

$$\begin{align}
x^2+y^2=c^2(x_0^2+y_0^2),
\end{align}$$

$$\begin{align}
\dot x^2+\dot y^2 =\omega^2 r^2c^2(x_0^2+y_0^2).
\end{align}$$

所以

$$\begin{align}
H_{\rm low} =\frac{\omega}{2}c^2(1+qr^2)(x_0^2+y_0^2).
\end{align}$$

低频根满足

$$\begin{align}
qr^2+r=1,
\end{align}$$

并且

$$\begin{align}
c^2(1+qr^2)=r.
\end{align}$$

因此

$$\begin{align}
H_{\rm low} =\frac{\omega r}{2}(x_0^2+y_0^2) =f_1\left(a^\dagger a+\frac12\right).
\end{align}$$

谱为

$$\begin{align}
E_n=f_1\left(n+\frac12\right),
\end{align}$$

其中

$$\begin{align}
f_1=\omega\left[ 1-q+2q^2-5q^3+14q^4-42q^5+132q^6-\cdots \right].
\end{align}$$

换回 \(q=\lambda\omega\)：

$$\begin{align}
E_n= \omega\left[ 1-\lambda\omega+2\lambda^2\omega^2 -5\lambda^3\omega^3+14\lambda^4\omega^4 -42\lambda^5\omega^5+\cdots \right]\left(n+\frac12\right).
\end{align}$$

前三项与 2606.24442 的 \(O(\lambda^2)\) 结果一致。

## 7. Unequal-time commutators

由于

$$\begin{align}
\Omega_{\rm low}=-i\delta a\wedge\delta a^\dagger, \qquad [a,a^\dagger]=1,
\end{align}$$

正确低能 commutators 是

$$\begin{align}
[x(t_1),x(t_2)] =-\frac{i}{d}\sin f_1(t_1-t_2),
\end{align}$$

$$\begin{align}
[y(t_1),y(t_2)] =-\frac{i}{d}\sin f_1(t_1-t_2),
\end{align}$$

$$\begin{align}
[x(t_1),y(t_2)] =+\frac{i}{d}\cos f_1(t_1-t_2).
\end{align}$$

其中

$$\begin{align}
\frac1d =1-2q+6q^2-20q^3+70q^4-252q^5+924q^6+\cdots.
\end{align}$$

这与 2606.24442 Sec. 4.4 的 CPS 微扰计算一致。但该文 Sec. 3.2.5 中由精确低能行为写出的 \([x,y]\) 号是负号；这个负号与 \(\lambda=0\) Dirac bracket \([x_0,y_0]=i\)、EOM、以及 Sec. 4.4 都不一致，应修正为正号。

## 8. 对原 diagrammatic/CPS note 的修改点

原 note 的核心 formalism 不需要改。需要补充一条更精确的 caveat：

> 在 2606.24442 toy model 中，CPS perturbative quantization 与修正符号后的低能精确分支全阶一致。v2 文稿的精确解展示式和低能 \([x,y]\) commutator 含有一个符号不一致；使用 EOM、\(\lambda=0\) 极限和 Sec. 4.4 的 CPS 结果可固定正确号。

这个 caveat 很重要，因为如果逐字采用源文 Sec. 3.2 的低能 \([x,y]\) 负号，就会错误地判断 CPS 微扰计算和精确理论不一致。实际不一致来自精确分支书写号，而不是来自 CPS pullback formalism。

## 9. 验证脚本

同目录中的 Wolfram 脚本：

[verify_2606_higher_order.wl](./verify_2606_higher_order.wl)

运行后检查了：

1. \(r-1+qr^2=0\)；
2. \(1-r-qr^2=0\)；
3. \((1+2qr)c^2=1\)，即 symplectic form 全阶 canonical；
4. \(c^2(1+qr^2)=r\)，即 Hamiltonian coefficient 全阶等于低频 \(f_1/\omega\)；
5. \(c(q), r(q), c(q)^2, A(q,s), B(q,s)\) 的高阶展开。

## 10. 参考

- J.-q. Wu and J. Zhao, *Canonical quantization for effective theories with perturbations altering degrees of freedom: a covariant phase space approach*, arXiv:2606.24442v2, https://arxiv.org/abs/2606.24442
- 本目录上一份 note: [diagrammatic_perturbative_solutions_cps_note.md](./diagrammatic_perturbative_solutions_cps_note.md)
