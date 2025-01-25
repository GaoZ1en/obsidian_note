## Hamilton力学的辛几何形式

传统的Hamilton力学由以下几个概念构成

1. 相空间 $\displaystyle{\mathcal{P}}$（通常为某流形 $\displaystyle{M}$ 的余切丛 $\displaystyle{T^{*}M}$），以及其上的局部坐标 $\displaystyle{(q^{1},\dots,q^{n};p_{1},\dots,p_{n})}$.
2. Hamilton量 $\displaystyle{H\in \Omega^{0}(\mathcal{P})}$，为相空间 $\displaystyle{\mathcal{P}}$ 上的函数
3. 正则方程(2.1)，给出相点 $\displaystyle{(q^{1},\dots,q^{n};p_{1},\dots,p_{n})}$ 的时间演化

$$\tag{2.1}
\begin{align}
\dot{q}^{i} & =\frac{\partial H}{\partial p_{i}} \\
\dot{p}^{i} & =-\frac{\partial H}{\partial q^{i}}
\end{align}
$$

Hamilton力学存在一种优雅的几何描述，下面我们将进行简要的介绍。考虑一个辛流形 $\displaystyle{(\mathcal{P},\omega)}$，其上的辛结构 $\displaystyle{\omega\in \Omega^{2}(\mathcal{P})}$ 满足以下条件：

1. $\displaystyle{\omega}$ 非退化：即设 $\displaystyle{\omega=\frac{1}{2!}\omega_{ij}\mathrm{d}x^{i}\wedge \mathrm{d}x^{j}}$，有 $\displaystyle{\det(\omega_{ij})\neq 0}$
2. $\displaystyle{\omega}$ 是闭的，即 $\displaystyle{\mathrm{d}\omega=0}$

给定函数 $\displaystyle{H\in \Omega^{0}(\mathcal{P})}$，我们可以定义Hamilton矢量场 $\displaystyle{X_{H}\in \mathcal{X}(\mathcal{P})}$，使得

$$\tag{2.2}
\begin{align}
X_{H}\cdot \omega & =-\mathrm{d}H
\end{align}
$$

由此，我们定义Poisson括号，对于任意函数 $\displaystyle{f,g\in \Omega^{0}(\mathcal{P})}$，其Poisson括号 $\displaystyle{\left\{f,g\right\}}$ 定义为

$$\tag{2.3}
\begin{align}
\left\{f,g\right\} & =\omega(X_{f},X_{g})
\end{align}
$$

根据Darboux定理可知在辛流形 $\displaystyle{\mathcal{P}}$ 上可以选取局域Darboux坐标 $\displaystyle{\left\{q^{i},p_{i}\right\},i=1,\dots,n}$ 使得辛结构 $\displaystyle{\omega}$、Hamilton矢量场 $\displaystyle{X_{H}}$ 和Poisson括号 $\displaystyle{\left\{f,g\right\}}$ 取以下形式

$$\tag{2.4}
\begin{align}
\omega & =\sum^{n}_{i=1}\mathrm{d}p_{i}\wedge \mathrm{d}q^{i} \\
X_{H} & =\sum^{n}_{i=1}\left(\frac{\partial H}{\partial p_{i}} \frac{\partial}{\partial q^{i}}-\frac{\partial H}{\partial q^{i}} \frac{\partial}{\partial p_{i}}\right) \\
\left\{f,g\right\} & =\sum^{n}_{i=1}\left(\frac{\partial f}{\partial p_{i}} \frac{\partial g}{\partial q^{i}}-\frac{\partial f}{\partial q^{i}} \frac{\partial g}{\partial p_{i}}\right)
\end{align}
$$

这样就回到了传统的Hamilton力学。

## 0+1维系统

简单起见，我们先考虑0+1维的系统。对于一般的作用量

$$\tag{2.5}
\begin{align}
S=\int^{t_{f}}_{t_{i}}\mathrm{d}tL[t,q_{a}]
\end{align}
$$

其中 $\displaystyle{q_{a}}$ 为动力学变量；$\displaystyle{L[t,q_{a}]}$ 为拉氏量，为时间 $\displaystyle{t}$ 和动力学变量 $\displaystyle{q_{a}}$ 的泛函。换句话说，拉氏量 $\displaystyle{L}$ 是位形空间 $\displaystyle{\mathcal{C}}$ 的函数，而位形空间 $\displaystyle{\mathcal{C}}$ 是所有可能的位形，即动力学变量 $\displaystyle{q_{a}}$ 与时间 $\displaystyle{t}$ 的函数关系组成的集合。按照协变相空间方法，对拉氏量 $\displaystyle{L[t,q_{a}]}$ 进行变分，得到

$$\tag{2.6}
\begin{align}
\delta L & =E^{a}[t,q_{a}]\delta q_{a}(t)+ \frac{\mathrm{d}}{\mathrm{d}t}\theta[t,q_{a};\delta q_{a}]
\end{align}
$$

其中 $\displaystyle{E^{a}}$ 为运动方程；$\displaystyle{\theta\in \Omega^{1}(\mathcal{C})}$ 被称为辛势，是位形空间 $\displaystyle{\mathcal{C}}$ 的1-形式。预相空间 $\displaystyle{\tilde{\mathcal{P}}=\left\{q_{a}\in \mathcal{C}|E^{a}[t,q_{a}]=0\right\}}$，即成为运动方程的解的位形的集合。我们定义辛形式 $\displaystyle{\omega\in \Omega^{2}(\mathcal{C})}$ 为辛势 $\displaystyle{\theta}$ 在位形空间 $\displaystyle{\mathcal{C}}$ 的外微分，即

$$\tag{2.7}
\begin{align}
\omega=\delta \theta
\end{align}
$$

辛形式 $\displaystyle{\omega}$ 构成预相空间 $\displaystyle{\tilde{\mathcal{P}}}$ 上的预辛结构，即满足

$$\tag{2.8}
\begin{align}
\delta \omega=\delta^{2}\theta=0
\end{align}
$$

但是由于规范冗余的存在，辛形式 $\displaystyle{\omega}$ 可能退化。为使 $\displaystyle{\omega}$ 成为真正的辛结构，需要将预相空间 $\displaystyle{\tilde{\mathcal{P}}}$ 模去辛形式 $\displaystyle{\omega}$ 零模生成的保辛变换的子群 $\displaystyle{\tilde{G}}$，得到相空间 $\displaystyle{\mathcal{P}=\tilde{\mathcal{P}}/\tilde{G}}$。辛形式 $\displaystyle{\omega}$ 是不依赖于时间的，即

$$\tag{2.9}
\begin{align}
\left.\frac{\mathrm{d}}{\mathrm{d}t}\omega\right|_{\tilde{\mathcal{P}}} & =(\delta^{2}L-\delta E^{a}\wedge \delta q_{a})|_{\tilde{\mathcal{P}}}=0
\end{align}
$$

其中 $\displaystyle{|_{\tilde{\mathcal{P}}}}$ 表示拉回到预相空间 $\displaystyle{\tilde{\mathcal{P}}}$，$\displaystyle{\wedge}$ 表示位形空间 $\displaystyle{\mathcal{C}}$ 上的楔积。

下面我们来考虑Noether定理。我们将无穷小变换表达为位形空间 $\displaystyle{\mathcal{C}}$ 上的矢量场

$$\tag{2.10}
\begin{align}
X_{\lambda}=\int \mathrm{d}t\delta_{\lambda}q_{a}[t,q_{a}] \frac{\delta}{\delta q_{a}(t)}\in \mathcal{X}(\mathcal{C})
\end{align}
$$

将 $\displaystyle{X_{\lambda}}$ 作用于拉氏量 $\displaystyle{L}$，得到

$$\tag{2.11}
\begin{align}
X_{\lambda}\cdot \delta L & =\frac{\mathrm{d}}{\mathrm{d}t}\alpha_{\lambda}[t,q_{a}]+\tilde{\beta}_{\lambda}(t)
\end{align}
$$

其中 $\displaystyle{\tilde{\beta}_{\lambda}}$ 独立于位形 $\displaystyle{q_{a}}$，我们称之为反常项（脚注）。定义Noether荷

$$\tag{2.12}
\begin{align}
H_{\lambda} & =X_{\lambda}\cdot \theta-\alpha_{\lambda}
\end{align}
$$

于是Noether定理成为

1. $$\tag{2.13}
\begin{align}
\left.\frac{\mathrm{d}}{\mathrm{d}t}H_{\lambda}\right|_{\tilde{\mathcal{P}}} & =\tilde{\beta}_{\lambda}
\end{align}
$$
2. 对称性将一个解映射到另一个解 $$\tag{2.14}
\begin{align}
X_{\lambda}\cdot \delta E^{a}|_{\tilde{\mathcal{P}}} & =0
\end{align}
$$
3. Hamilton方程 $$\tag{2.15}
\begin{align}
X_{\lambda}\cdot \omega|_{\tilde{\mathcal{P}}} & =-\delta H_{\lambda}|_{\tilde{\mathcal{P}}}
\end{align}
$$

下面我们将给出证明。将(2.6)代入(2.11)得

$$\tag{2.16}
\begin{align}
E^{a}X_{\lambda}\cdot \delta q_{a}+\frac{\mathrm{d}}{\mathrm{d}t}H_{\lambda}-\tilde{\beta}_{\lambda} & =0
\end{align}
$$

将其拉回到预相空间 $\displaystyle{\tilde{\mathcal{P}}}$ 便得到(2.13)。然后证明(2.14)和(2.15)。将 $\displaystyle{\mathcal{L}_{X_{\xi}}}$ 作用于(2.6)得到

$$\tag{2.17}
\begin{align}
LHS=\mathcal{L}_{X_{\lambda}}\delta L & =X_{\lambda}\cdot \delta^{2}L+\delta(X_{\lambda}\cdot \delta L) \\
 & =\delta\left( \frac{\mathrm{d}}{\mathrm{d}t}\alpha_{\lambda}+\tilde{\beta}_{\lambda} \right) \\
 & =\frac{\mathrm{d}}{\mathrm{d}t}\delta \alpha_{\lambda}
\end{align}
$$

$$\tag{2.18}
\begin{align}
RHS=\mathcal{L}_{X_{\lambda}}\left( E^{a}\delta q_{a}+\frac{\mathrm{d}}{\mathrm{d}t}\theta \right) & =X_{\lambda}\cdot \delta\left( E^{a}\delta q_{a}+\frac{\mathrm{d}}{\mathrm{d}t}\theta \right)+\delta\left( X_{\lambda}\cdot\left( E^{a}\delta q_{a}+\frac{\mathrm{d}}{\mathrm{d}t}\theta \right) \right) \\
 & =X_{\lambda}\cdot\left( \delta E^{a}\wedge \delta q_{a}+\frac{\mathrm{d}}{\mathrm{d}t}\omega \right)+\delta\left( E^{a}(X_{\lambda}\cdot \delta q_{a})+\frac{\mathrm{d}}{\mathrm{d}t}(X_{\lambda}\cdot \theta) \right) \\
 & =(X_{\lambda}\cdot \delta E^{a})\delta q_{a}-\delta E^{a}(X_{\lambda}\cdot \delta q_{a})-\frac{\mathrm{d}}{\mathrm{d}t}(X_{\lambda}\cdot \omega) \\
 & +\delta E^{a}(X_{\lambda}\cdot \delta q_{a})+E^{a}\delta(X_{\lambda}\cdot \delta q_{a})+\frac{\mathrm{d}}{\mathrm{d}t}\delta(X_{\lambda}\cdot \theta) \\
 & =E^{a}\delta(X_{\lambda}\cdot \delta q_{a})+(X_{\lambda}\cdot \delta E^{a})\delta q_{a}+\frac{\mathrm{d}}{\mathrm{d}t}(X_{\lambda}\cdot \omega+\delta(X_{\lambda}\cdot \theta))
\end{align}
$$

因此有

$$\tag{2.19}
\begin{align}
E^{a}\delta(X_{\lambda}\cdot \delta q_{a})+(X_{\lambda}\cdot \delta E^{a})\delta q_{a}+\frac{\mathrm{d}}{\mathrm{d}t}(X_{\lambda}\cdot \omega+\delta H_{\lambda}) & =0
\end{align}
$$

用矢量 $\displaystyle{Y=\int \mathrm{d}tf_{a}(t) \frac{\delta}{\delta q_{a}(t)}}$ 与(2.19)缩并，得到

$$\tag{2.20}
\begin{align}
(X_{\lambda}\cdot \delta E^{a}|_{\tilde{\mathcal{P}}})f_{a}(t)+\frac{\mathrm{d}}{\mathrm{d}t}(Y\cdot(X_{\lambda}\cdot \omega+\delta H_{\lambda})|_{\tilde{\mathcal{P}}})=0
\end{align}
$$

由于 $\displaystyle{f_{a}(t)}$ 是任意的，就有(2.14)和(2.15)成立

## 高维推广

首先我们写下一般的场论作用量

$$\tag{2.21}
\begin{align}
S & =\int_{M}\mathbf{L}(\phi)+\int_{\partial M}\ell(\phi)
\end{align}
$$

设流形 $\displaystyle{M}$ 的维数为 $\displaystyle{d}$。其中体拉氏量 $\displaystyle{\mathbf{L}}$ 是流形 $\displaystyle{M}$ 上的 $\displaystyle{d}$-形式，边界拉氏量 $\displaystyle{\ell}$是流形边界 $\displaystyle{\partial M}$ 上的 $\displaystyle{d-1}$-形式，$\displaystyle{\phi}$ 是动力学场。我们假设流形 $\displaystyle{M}$ 不存在类光边界，即流形边界 $\displaystyle{\partial M}$ 可以分解为类空边界 $\displaystyle{\Gamma}$ 和类时边界 $\displaystyle{\Sigma_{\pm}}$，也就是 $\displaystyle{\partial M=\Gamma \cup \Sigma_{i}\cup \Sigma_{f}}$。动力学场 $\displaystyle{\phi}$ 的边界条件将取在类空边界 $\displaystyle{\Gamma}$ 上，（脚注，不同的边界条件对应不同的理论）而作用量取极值可以差出在 $\displaystyle{\Sigma_{\pm}=\Sigma_{f}-\Sigma_{i}}$ 上取值的项。对作用量做变分得到

$$\tag{2.22}
\begin{align}
\delta S & =\int_{M}\mathbf{E}\delta \phi+\int_{\partial M}(\Theta+\delta \ell) \\
 & =\int_{M}\mathbf{E}\delta \phi+\int_{\Gamma}(\Theta+\delta \ell)+\int_{\Sigma_{\pm}}(\Theta+\delta \ell)
\end{align}
$$

我们要求

$$\tag{2.23}
\begin{align}
(\Theta+\delta \ell)|_{\Gamma} & =\mathrm{d}C
\end{align}
$$

那么

$$\tag{2.24}
\begin{align}
\delta S & =\int_{M}\mathbf{E}\delta \phi+\int_{\Gamma}\mathrm{d}C+\int_{\Sigma_{\pm}}(\Theta-\delta \ell) \\
 & =\int_{M}\mathbf{E}\delta \phi+\int_{\mathrm{d}\Gamma}C+\int_{\Sigma_{\pm}}(\Theta-\delta \ell) \\
 & =\int_{M}\mathbf{E}\delta \phi-\int_{\mathrm{d}\Sigma_{\pm}}C+\int_{\Sigma_{\pm}}(\Theta-\delta \ell) \\
 & =\int_{M}\mathbf{E}\delta \phi+\int_{\Sigma_{\pm}}(\Theta-\delta \ell-\mathrm{d}C)
\end{align}
$$

定义辛势 $\displaystyle{\theta=\int_{\Sigma}(\Theta-\delta \ell-\mathrm{d}C)}\in \Omega^{1}(\mathcal{C})$，以及预辛形式 $\displaystyle{\omega=\delta \theta\in \Omega^{2}(\mathcal{C})}$。预辛形式 $\displaystyle{\omega}$ 不依赖于时间，即

$$\tag{2.25}
\begin{align}
\omega|_{\Sigma_{f},\tilde{\mathcal{P}}}-\omega|_{\Sigma_{i},\tilde{\mathcal{P}}}=0
\end{align}
$$

与2.2节类似，将无穷小变换表达为位形空间 $\displaystyle{\mathcal{C}}$ 上的矢量

$$\tag{2.26}
\begin{align}
X_{\lambda} & =\int \mathrm{d}^{d}x\mathcal\delta_{\lambda}\phi(x)\frac{\delta}{\delta \phi(x)}
\end{align}
$$

将 $\displaystyle{X_{\lambda}}$ 作用于作用量 $\displaystyle{S}$，得到

$$\tag{2.27}
\begin{align}
X_{\lambda}\cdot \delta S & =\alpha_{\lambda}|_{\Sigma_{\pm}}+\beta_{\lambda}
\end{align}
$$

其中 $\displaystyle{\beta_{\lambda}}$ 独立于位形 $\displaystyle{\phi(x)}$，我们称之为反常项（脚注）。定义Noether荷

$$\tag{2.28}
\begin{align}
H_{\lambda} & =X_{\lambda}\cdot \theta-\alpha_{\lambda}
\end{align}
$$

于是Noether定理成为

1. $$\tag{2.29}
\begin{align}
\left.H_{\lambda}\right|_{\Sigma_{\pm},\tilde{\mathcal{P}}} & =\beta_{\lambda}
\end{align}
$$
2. 对称性将一个解映射到另一个解 $$\tag{2.30}
\begin{align}
X_{\lambda}\cdot \delta E^{a}|_{\tilde{\mathcal{P}}} & =0
\end{align}
$$
3. Hamilton方程 $$\tag{2.31}
\begin{align}
X_{\lambda}\cdot \omega|_{\tilde{\mathcal{P}}} & =-\delta H_{\lambda}|_{\tilde{\mathcal{P}}}
\end{align}
$$

下面我们将给出证明。将(2.22)代入(2.27)得

$$\tag{2.16}
\begin{align}
\int \mathbf{E}(X_{\lambda}\cdot \delta \phi_{a})+H_{\lambda}|_{\Sigma_{\pm}}-\beta_{\lambda} & =0
\end{align}
$$

将其拉回到预相空间 $\displaystyle{\tilde{\mathcal{P}}}$ 便得到(2.29)。然后证明(2.30)和(2.31)。将 $\displaystyle{\mathcal{L}_{X_{\xi}}}$ 作用于(2.22)得到

$$\tag{2.17}
\begin{align}
LHS=\mathcal{L}_{X_{\lambda}}\delta S & =X_{\lambda}\cdot \delta^{2}S+\delta(X_{\lambda}\cdot \delta S) \\
 & =\delta\left(\alpha_{\lambda}|_{\Sigma_{\pm}}+\beta_{\lambda}\right) \\
 & =\delta \alpha_{\lambda}|_{\Sigma_{\pm}}
\end{align}
$$
 
$$\tag{2.18}
\begin{align}
RHS=\mathcal{L}_{X_{\lambda}}\left( E^{a}\delta q_{a}+\frac{\mathrm{d}}{\mathrm{d}t}\theta \right) & =X_{\lambda}\cdot \delta\left( E^{a}\delta q_{a}+\frac{\mathrm{d}}{\mathrm{d}t}\theta \right)+\delta\left( X_{\lambda}\cdot\left( E^{a}\delta q_{a}+\frac{\mathrm{d}}{\mathrm{d}t}\theta \right) \right) \\
 & =X_{\lambda}\cdot\left( \delta E^{a}\wedge \delta q_{a}+\frac{\mathrm{d}}{\mathrm{d}t}\omega \right)+\delta\left( E^{a}(X_{\lambda}\cdot \delta q_{a})+\frac{\mathrm{d}}{\mathrm{d}t}(X_{\lambda}\cdot \theta) \right) \\
 & =(X_{\lambda}\cdot \delta E^{a})\delta q_{a}-\delta E^{a}(X_{\lambda}\cdot \delta q_{a})-\frac{\mathrm{d}}{\mathrm{d}t}(X_{\lambda}\cdot \omega) \\
 & +\delta E^{a}(X_{\lambda}\cdot \delta q_{a})+E^{a}\delta(X_{\lambda}\cdot \delta q_{a})+\frac{\mathrm{d}}{\mathrm{d}t}\delta(X_{\lambda}\cdot \theta) \\
 & =E^{a}\delta(X_{\lambda}\cdot \delta q_{a})+(X_{\lambda}\cdot \delta E^{a})\delta q_{a}+\frac{\mathrm{d}}{\mathrm{d}t}(X_{\lambda}\cdot \omega+\delta(X_{\lambda}\cdot \theta))
\end{align}
$$

因此有

$$\tag{2.19}
\begin{align}
E^{a}\delta(X_{\lambda}\cdot \delta q_{a})+(X_{\lambda}\cdot \delta E^{a})\delta q_{a}+\frac{\mathrm{d}}{\mathrm{d}t}(X_{\lambda}\cdot \omega+\delta H_{\lambda}) & =0
\end{align}
$$

用矢量 $\displaystyle{Y=\int \mathrm{d}tf_{a}(t) \frac{\delta}{\delta q_{a}(t)}}$ 与(2.19)缩并，得到

$$\tag{2.20}
\begin{align}
(X_{\lambda}\cdot \delta E^{a}|_{\tilde{\mathcal{P}}})f_{a}(t)+\frac{\mathrm{d}}{\mathrm{d}t}(Y\cdot(X_{\lambda}\cdot \omega+\delta H_{\lambda})|_{\tilde{\mathcal{P}}})=0
\end{align}
$$

由于 $\displaystyle{f_{a}(t)}$ 是任意的，就有(2.14)和(2.15)成立