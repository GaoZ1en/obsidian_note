# heat kernel method in $\mathrm{AdS}_d$

本笔记将仿照《heat kernel method in AdS3.md》的结构，推广热核方法到一般的 $\mathrm{AdS}_d$ 空间。我们将分别讨论标量场和Proca场的情形，并给出一般维度下的热核表达式和一回路分区函数的计算。

---

## the partition function

$$
\begin{align}
Z & =\int \mathcal{D}\phi\, e^{-g^{-2}S[\phi]} \\
S[\phi] & =\int _{\mathcal{M}}\mathrm{d}^{d}x\sqrt{ g }\phi \Delta \phi
\end{align}
$$

在一回路近似下，

$$
\begin{align}
S^{(1)} & =-\frac{1}{2}\ln \det(\Delta)=-\frac{1}{2}\sum _{n}\ln \lambda _{n}
\end{align}
$$

其中 $\lambda_n$ 是拉普拉斯算符 $\Delta$ 的本征值。热核 $K(t,x,y)$ 定义为

$$
\begin{align}
K(t,x,y) & =\sum _{n}e^{-\lambda _{n}t}\psi _{n}(x)\psi _{n}^{*}(y)
\end{align}
$$

$\psi_n(x)$ 是 $\Delta$ 的本征函数，满足

$$
\begin{align}
\sum _{n}\psi _{n}(x)\psi _{n}^{*}(y) & =\delta ^{d}(x-y) \\
\int _{\mathcal{M}}\mathrm{d}^{d}x\sqrt{ g }\psi _{n}(x)\psi _{m}^{*}(x) & =\delta _{nm}
\end{align}
$$

热核的迹为

$$
\begin{align}
\int _{\mathcal{M}}\mathrm{d}^{d}x\sqrt{ g }K(t,x,x) & =\sum _{n}e^{-\lambda _{n}t} \\
S^{(1)} & =-\frac{1}{2}\sum _{n}\ln \lambda _{n} \\
 & =\frac{1}{2}\int ^{\infty}_{0^{+}} \frac{\mathrm{d}t}{t}\int _{\mathcal{M}}\mathrm{d}^{d}x\sqrt{ g }K(t,x,x)
\end{align}
$$

热核满足热方程

$$
\begin{align}
\partial _{t}K(t,x,y)+\Delta _{x}K(t,x,y) & =0
\end{align}
$$

初始条件为

$$
\begin{align}
K(0,x,y) & =\delta ^{d}(x-y)
\end{align}
$$

在 $\mathcal{M}=\mathbb{H}_d$ (Euclidean $\mathrm{AdS}_d$) 上，度规为

$$
\mathrm{d}s^{2} = \frac{\mathrm{d}y^{2}+\mathrm{d}z_{1}^{2}+\cdots+\mathrm{d}z_{d-1}^{2}}{y^{2}},\quad y>0
$$

由于 $\mathbb{H}^d$ 是最大对称空间，热核 $K(t,x,x')$ 只依赖于测地距离 $r(x,x')$：

$$
\begin{align}
r(x,x') & =\mathrm{arccosh}(1+u(x,x')) \\
u(x,x') & =\frac{(y-y')^{2}+|\vec{z}-\vec{z}'|^{2}}{2yy'}
\end{align}
$$

---

## scalar field in $\mathbb{H}_d$

标量场作用量为

$$
\begin{align}
S & =\frac{1}{2}\int _{\mathcal{M}}\mathrm{d}^{d}x\sqrt{ g }\left( g^{\mu \nu}\partial _{\mu}\phi \partial _{\nu}\phi +\mu^{2}\phi ^{2} \right) \\
 & =\frac{1}{2}\int _{\mathcal{M}}\mathrm{d}^{d}x\sqrt{ g }\phi (-\Delta +\mu^{2})\phi
\end{align}
$$

热核满足

$$
\begin{align}
(\nabla _{x}^{2}-\mu ^{2} )K(t,x,x') & =\partial_t K(t,x,x')
\end{align}
$$

由于热核只依赖于 $r(x,x')$，拉普拉斯算符可写为

$$
\begin{align}
\nabla^{2} & =u(u+2)\partial _{u}^{2}+d(u+1)\partial _{u} \\
 & =\partial _{r}^{2}+(d-1)\coth r\,\partial _{r}
\end{align}
$$

因此，热核满足

$$\begin{align}
\left[\partial _{r}^{2}+(d-1)\coth r\,\partial _{r}-\mu ^{2}\right]K(t,r) & =\partial _{t}K(t,r)
\end{align}$$

一般解为（写成“R-算子”作用在一维高斯核上的形式）

$$
\begin{align}
K^{\mathbb{H}_{d}}(t,r) & =e^{-(\mu ^{2}+\rho ^{2})t}\left(-\frac{1}{2\pi \sinh r} \frac{\partial}{\partial r}\right)^{\rho}\left(\frac{e^{-r^{2}/4t}}{(4\pi t)^{1/2}}\right)
\end{align}
$$

其中 $\rho=\frac{d-1}{2}$。

注意：当 $d$ 为奇数时，$\rho\in\mathbb{Z}_{\ge 0}$，上式就是对算子 $R:=-\frac{1}{2\pi\sinh r}\partial_r$ 的 $\rho$ 次（整数次）作用；当 $d$ 为偶数时，$\rho$ 为半整数，常见的“非整数次导数”写法只是简记。严格做法是从 $d=2$ 的“种子解”出发，再施加 $R$ 的整数次作用：
$$
\begin{aligned}
K^{\mathbb{H}_{2}}(t,r)
&= e^{-(\mu^2+\tfrac14)t}\,\frac{1}{(4\pi t)^{1/2}}\,\frac{1}{2\pi}\int_{r}^{\infty}\!\mathrm{d}s\,\frac{s\,e^{-s^{2}/(4t)}}{\sinh s\,\sqrt{\cosh s-\cosh r}}\\
K^{\mathbb{H}_{2m+2}}(t,r)
&= \left(-\frac{1}{2\pi\sinh r}\partial_r\right)^{m} K^{\mathbb{H}_{2}}(t,r)\quad (m\in\mathbb{Z}_{\ge 0})\,.
\end{aligned}
$$

这样避免了分数阶导数的歧义，并与 $t\to0^+$ 的 $\delta$ 初始条件严格匹配（归一化与上式保持一致）。


由对角热核得到
$$
\int_{\mathbb{H}_d}\mathrm{d}^d x\sqrt{g}\,K^{\mathbb{H}_d}(t,x,x)
= \mathrm{Vol}(\mathbb{H}_d)\,\frac{e^{-(\mu^2+\rho^2)t}}{(4\pi t)^{d/2}}\,.
$$

因此一回路分区函数为
$$
\begin{align}
Z & =\frac{1}{2}\mathrm{Vol}(\mathbb{H}_{d})\int ^{\infty}_{0} \frac{\mathrm{d}t}{t} \,\frac{e^{-(\mu ^{2}+\rho^2)t}}{(4\pi t)^{d/2}}
\end{align}
$$

上式中的 $e^{-\rho^2 t}$ 因子来自于 $\mathbb{H}_d$ 上标量拉普拉斯算符的谱起点：$\mathrm{spec}(-\nabla^2)=\rho^2+k^2\ (k\ge0)$，因此对质量为 $\mu$ 的情形整体出现 $e^{-(\mu^2+\rho^2)t}$ 的“谱移”。

---

## thermal $\mathrm{AdS}_d$ ($\mathbb{H}_d/\mathbb{Z}$) — scalar field

这里给出 thermal $\mathrm{AdS}_d$ 的严格数学定义，并完成标量场一回路配分函数的计算。

1) 几何与群论定义

- Euclidean $\mathrm{AdS}_d=\mathbb{H}_d$ 的等距群为 $\mathrm{SO}(d,1)$。thermal 几何由一个双曲（loxodromic）等距变换 $\gamma\in\mathrm{SO}(d,1)$ 生成的离散子群 $\langle\gamma\rangle\cong\mathbb{Z}$ 取商得到：
	$$\mathbb{H}_d/\mathbb{Z},\qquad x\sim\gamma x\,.$$ 
- $\gamma$ 由两类参数刻画：沿某根闭测地的平移长度（原长）$\ell=\beta>0$ 与法丛中的扭转角 $\boldsymbol{\theta}=(\theta_1,\dots,\theta_N)$，其中
	$$N=\left\lfloor\frac{d-1}{2}\right\rfloor,\qquad \theta_j\in[0,2\pi)\,.$$
	物理上 $\beta$ 为欧氏时间周期，$\Omega_j\equiv\theta_j/\beta$ 为 $N$ 个独立角动量的化学势（对应边界 $S^{d-1}$ 上 $\mathrm{SO}(d-1)$ 的 Cartan $U(1)^N$）。

2) 像法（method of images）与热核迹

- 对标量场，平行运输无相位，热核为
	$$
	K^{\mathbb{H}_d/\mathbb{Z}}(t,x,x')=\sum_{n\in\mathbb{Z}} K^{\mathbb{H}_d}\bigl(t, r(x,\gamma^n x')\bigr)\,.
	$$
- 在基本域 $\mathcal{F}$ 上取迹，得到
	$$
	\operatorname{Tr}\,e^{-t(-\nabla^2+\mu^2)}\Big|_{\mathbb{H}_d/\mathbb{Z}}
	= \int_{\mathcal{F}} d^d x\sqrt{g}\, K^{\mathbb{H}_d/\mathbb{Z}}(t,x,x)\,.
	$$
- 由 Selberg/Gutzwiller 型迹公式，分解为体积项与闭测地之和：
	$$
	\operatorname{Tr}\,e^{-t(-\nabla^2+\mu^2)}
	= \mathrm{Vol}(\mathcal{F})\,\frac{e^{-(\mu^2+\rho^2)t}}{(4\pi t)^{d/2}}
  
	+ e^{-(\mu^2+\rho^2)t}\,\frac{\ell}{(4\pi t)^{1/2}}\sum_{n\neq0}\frac{e^{-\ell^2 n^2/(4t)}}{\mathcal{D}_d\bigl(n\,|\,\beta,\boldsymbol{\theta}\bigr)}\,.
	$$
- 其中“Poincaré 映射”的行列式因子为
	$$
	\mathcal{D}_d\bigl(n\,|\,\beta,\boldsymbol{\theta}\bigr)
	=\prod_{j=1}^{N}\Bigl[4\bigl(\sinh^2\tfrac{n\beta}{2}+\sin^2\tfrac{n\theta_j}{2}\bigr)\Bigr]\;\times\;\Bigl[2\sinh\tfrac{n\beta}{2}\Bigr]^{\,d-1-2N}.
	$$
	当 $d$ 为奇数时 $d-1=2N$，后一因子指数为 $0$；当 $d$ 为偶数时 $d-1=2N+1$，存在一个未旋转法向方向，产生额外因子 $2\sinh(n\beta/2)$。

3) 标量场一回路配分函数（非平凡同伦部分的闭式）

我们定义 $A:=\mu^2+\rho^2$ 与 $B_n:=(\ell n)^2/4$。利用标准积分
$$
\int_0^{\infty} dt\, t^{\nu-1} e^{-\beta/t-\gamma t} = 2\left(\frac{\beta}{\gamma}\right)^{\nu/2} K_{\nu}(2\sqrt{\beta\gamma})\,,\quad (\Re \beta,\Re \gamma>0),
$$
对非平凡类的 $t$ 积分可化为 $K_{1/2}$，从而得到
$$
\begin{aligned}
-\ln \det(-\nabla^2+\mu^2)\Big|_{\\text{non-trivial}}
&= \frac{1}{2}\int_0^{\infty}\!\frac{dt}{t}\; e^{-At}\,\frac{\ell}{(4\pi t)^{1/2}}\sum_{n\neq0}\frac{e^{-B_n/t}}{\mathcal{D}_d(n)}\\
&= \sum_{n=1}^{\infty} \frac{1}{2n}\,\frac{e^{- n\ell\sqrt{A}}}{\mathcal{D}_d\bigl(n\,|\,\beta,\boldsymbol{\theta}\bigr)}\,.
\end{aligned}
$$
其中我们已将 $n$ 与 $-n$ 合并。体积项（$n=0$）与 $\mathbb{H}_d$ 同形，给出紫外发散，可用同样的局域反项/最小减除法去除。

零扭转极限（$\boldsymbol{\theta}=\mathbf{0}$）下，
$$
\mathcal{D}_d\bigl(n\,|\,\beta,\mathbf{0}\bigr) = \bigl[2\sinh(n\beta/2)\bigr]^{d-1}\,.
$$
当 $d=3$ 时，上式进一步化为你熟悉的 $|\sin\pi n\tau|^{-2}$ 结构，利用恒等式 $4\,\bigl|\sin\tfrac{n(\theta+i\beta)}{2}\bigr|^2=2(\cosh n\beta-\cos n\theta)$。

