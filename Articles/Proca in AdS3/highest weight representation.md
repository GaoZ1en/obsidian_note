Killing vectors

$$\tag{1.1}
\begin{align}
\xi _{1} & =\frac{1}{2}e^{i(t-\phi)}\left( r(1+r^{2})^{-1/2} \frac{\partial}{\partial t}-i(1+r^{2})^{-1/2} \frac{\partial}{\partial r}-r^{-1}(1+r^{2})^{1/2} \frac{\partial}{\partial \phi} \right) \\
\xi _{0} & =\frac{1}{2}\left( \frac{\partial}{\partial t}-\frac{\partial}{\partial \phi} \right) \\
\xi _{-1} & =\frac{1}{2}e^{-i(t-\phi)}\left( r(1+r^{2})^{-1/2} \frac{\partial}{\partial t}+i(1+r^{2})^{-1/2} \frac{\partial}{\partial r}-r^{-1}(1+r^{2})^{1/2} \frac{\partial}{\partial \phi} \right) \\
\bar{\xi}_{1} & =\frac{1}{2}e^{i(t+\phi)}\left( r(1+r^{2})^{-1/2} \frac{\partial}{\partial t}-i(1+r^{2})^{1/2} \frac{\partial}{\partial r}+r^{-1}(1+r^{2})^{1/2} \frac{\partial}{\partial \phi} \right) \\
\bar{\xi}_{0} & =\frac{1}{2}\left( \frac{\partial}{\partial t}+\frac{\partial}{\partial \phi} \right) \\
\bar{\xi}_{-1} & =\frac{1}{2}e^{-i(t+\phi)}\left( r(1+r^{2})^{-1/2} \frac{\partial}{\partial t}+i(1+r^{2})^{1/2} \frac{\partial}{\partial r}+r^{-1}(1+r^{2})^{1/2} \frac{\partial}{\partial \phi} \right)
\end{align}
$$

and their non-zero commutators

$$\tag{1.2}
\begin{align}
[\xi_{0},\xi_{1}] & =i\xi_{1} \\
[\xi_{0},\xi _{-1}] & =-i\xi _{-1} \\
[\xi _{1},\xi _{-1}] & =-2i\xi _{0} \\
[\bar{\xi}_{0},\bar{\xi}_{1}] & =i\bar{\xi}_{1} \\
[\bar{\xi}_{0},\bar{\xi}_{-1}] & =-i\bar{\xi}_{-1} \\
[\bar{\xi}_{1},\bar{\xi}_{-1}] & =-2i\bar{\xi}_{0}
\end{align}
$$

introduce the total-antisymmetric tensor $\displaystyle{\varepsilon _{\mu \nu \rho}}$ with non-zero components $\displaystyle{\varepsilon _{tr\phi}=r}$

$$\tag{1.3}
\begin{align}
\nabla _{\mu}\xi _{a,\nu} & =-\varepsilon _{\mu \nu \rho}\xi _{a}^{~\rho} \\
\nabla _{\mu}\bar{\xi} _{a,\nu} & =\varepsilon _{\mu \nu \rho}\bar{\xi}_{a}^{~\rho}
\end{align}
$$

# modes

$$\tag{2.1}
\begin{align}
{f^{(+)}_{r,0,0}}^{\mu} & =\sqrt{ \frac{\mu+1}{\pi \mu} }\frac{e^{-i(\mu+2)t}}{(1+r^{2})^{\mu/2+1}}\bar{\xi}_{1}^{\mu} \\
{f^{(+)}_{r,n,\bar{n}}}^{\mu} & =\sqrt{ \frac{1}{n!\bar{n}!(\mu+2)_{n}(\mu)_{\bar{n}}} }\mathcal{L}_{\xi _{-1}}^{n}\mathcal{L}_{\bar{\xi}_{-1}}^{\bar{n}}{f^{(+)}_{r,0,0}}^{\mu}
\end{align}
$$

then act the Killing symmetries

$$\tag{.}\begin{align}
\mathcal{L}_{\xi_{-1}}{f^{(+)}_{r,n,\bar{n}}}^{\mu} & = \\
\mathcal{L}_{\xi_{0}}{f^{(+)}_{r,n,\bar{n}}}^{\mu} & = \\
\mathcal{L}_{\xi_{1}}{f^{(+)}_{r,n,\bar{n}}}^{\mu} & = \\
\mathcal{L}_{\bar{\xi}_{-1}}{f^{(+)}_{r,n,\bar{n}}}^{\mu} & = \\
\mathcal{L}_{\bar{\xi}_{0}}{f^{(+)}_{r,n,\bar{n}}}^{\mu} & = \\
\mathcal{L}_{\bar{\xi}_{-1}}{f^{(+)}_{r,n,\bar{n}}}^{\mu} & =
\end{align}$$

# 推导 (2.2) 式中 Killing 矢量作用于模式的结果

我需要推导 Killing 矢量 $\xi_a$ 和 $\bar{\xi}_a$ (其中 $a \in \{-1, 0, 1\}$) 对模式 ${f^{(+)}_{r,n,\bar{n}}}^{\mu}$ 的作用。首先注意到，这些模式是通过对"最高权重态" ${f^{(+)}_{r,0,0}}^{\mu}$ 重复应用降低算符 $\mathcal{L}_{\xi_{-1}}$ 和 $\mathcal{L}_{\bar{\xi}_{-1}}$ 构建的。

## 李导数作用的推导方法

在最高权重表示中，我们利用代数结构的特性:

1. 最高权重态被升高算符湮灭: $\mathcal{L}_{\xi_1}{f^{(+)}_{r,0,0}}^{\mu} = 0$, $\mathcal{L}_{\bar{\xi}_1}{f^{(+)}_{r,0,0}}^{\mu} = 0$
2. 最高权重态是卡尔坦子代数的本征态: $\mathcal{L}_{\xi_0}{f^{(+)}_{r,0,0}}^{\mu} = -i\frac{\mu+2}{2}{f^{(+)}_{r,0,0}}^{\mu}$
3. 利用交换关系: $[\mathcal{L}_{\xi_0}, \mathcal{L}_{\xi_{-1}}] = -i\mathcal{L}_{\xi_{-1}}$, $[\mathcal{L}_{\xi_1}, \mathcal{L}_{\xi_{-1}}] = -2i\mathcal{L}_{\xi_0}$ 等

## 具体推导结果

### 降低算符的作用

$$\mathcal{L}_{\xi_{-1}}{f^{(+)}_{r,n,\bar{n}}}^{\mu} = \sqrt{(n+1)(\mu+2+n)}{f^{(+)}_{r,n+1,\bar{n}}}^{\mu}$$

推导分析：应用 $\mathcal{L}_{\xi_{-1}}$ 到定义式中，得到：

$$\mathcal{L}_{\xi_{-1}}{f^{(+)}_{r,n,\bar{n}}}^{\mu} = \sqrt{\frac{1}{n!\bar{n}!(\mu+2)_n(\mu)_{\bar{n}}}}\mathcal{L}_{\xi_{-1}}^{n+1}\mathcal{L}_{\bar{\xi}_{-1}}^{\bar{n}}{f^{(+)}_{r,0,0}}^{\mu}$$

通过重写规范化因子并使用 Pochhammer 符号 $(\mu+2)_{n+1} = (\mu+2)_n \cdot (\mu+2+n)$ 得到上述结果。

同理：
$$\mathcal{L}_{\bar{\xi}_{-1}}{f^{(+)}_{r,n,\bar{n}}}^{\mu} = \sqrt{(\bar{n}+1)(\mu+\bar{n})}{f^{(+)}_{r,n,\bar{n}+1}}^{\mu}$$

### 卡尔坦生成元的作用

$$\mathcal{L}_{\xi_0}{f^{(+)}_{r,n,\bar{n}}}^{\mu} = -i\left(\frac{\mu+2}{2} + n\right){f^{(+)}_{r,n,\bar{n}}}^{\mu}$$

推导过程：使用交换关系 $[\mathcal{L}_{\xi_0}, \mathcal{L}_{\xi_{-1}}] = -i\mathcal{L}_{\xi_{-1}}$ 可得：

$$\mathcal{L}_{\xi_0}\mathcal{L}_{\xi_{-1}}^n = \mathcal{L}_{\xi_{-1}}^n\mathcal{L}_{\xi_0} - in\mathcal{L}_{\xi_{-1}}^n$$

与 $\mathcal{L}_{\xi_0}{f^{(+)}_{r,0,0}}^{\mu} = -i\frac{\mu+2}{2}{f^{(+)}_{r,0,0}}^{\mu}$ 结合得到结果。

同理：
$$\mathcal{L}_{\bar{\xi}_0}{f^{(+)}_{r,n,\bar{n}}}^{\mu} = -i\left(\frac{\mu+2}{2} + \bar{n}\right){f^{(+)}_{r,n,\bar{n}}}^{\mu}$$

### 升高算符的作用

$$\mathcal{L}_{\xi_1}{f^{(+)}_{r,n,\bar{n}}}^{\mu} = \begin{cases}
-\sqrt{n(2h+n-1)}{f^{(+)}_{r,n-1,\bar{n}}}^{\mu}, & n > 0 \\
0, & n = 0
\end{cases}$$

其中 $h = \frac{\mu+2}{2}$。当 $n=0$ 时结果为零是因为最高权重态被升高算符湮灭。

同理：
$$\mathcal{L}_{\bar{\xi}_1}{f^{(+)}_{r,n,\bar{n}}}^{\mu} = \begin{cases}
-\sqrt{\bar{n}(2\bar{h}+\bar{n}-1)}{f^{(+)}_{r,n,\bar{n}-1}}^{\mu}, & \bar{n} > 0 \\
0, & \bar{n} = 0
\end{cases}$$

其中 $\bar{h} = \frac{\mu+2}{2}$。

## 注意

原式中的 $\mathcal{L}_{\tilde{\xi}_{-1}}$、$\mathcal{L}_{\tilde{\xi}_{0}}$ 和 $\mathcal{L}_{\tilde{\xi}_{-1}}$ 可能是 $\mathcal{L}_{\bar{\xi}_{-1}}$、$\mathcal{L}_{\bar{\xi}_{0}}$ 和 $\mathcal{L}_{\bar{\xi}_{1}}$ 的印刷错误，所以我按照后者进行了推导。

综上所述，(2.2) 式的完整结果为：

$$\tag{2.2}\begin{align}
\mathcal{L}_{\xi_{-1}}{f^{(+)}_{r,n,\bar{n}}}^{\mu} &= \sqrt{(n+1)(\mu+2+n)}{f^{(+)}_{r,n+1,\bar{n}}}^{\mu} \\
\mathcal{L}_{\xi_{0}}{f^{(+)}_{r,n,\bar{n}}}^{\mu} &= -i\left(\frac{\mu+2}{2} + n\right){f^{(+)}_{r,n,\bar{n}}}^{\mu} \\
\mathcal{L}_{\xi_{1}}{f^{(+)}_{r,n,\bar{n}}}^{\mu} &= -\sqrt{n(\mu+n+1)}{f^{(+)}_{r,n-1,\bar{n}}}^{\mu}\\
\mathcal{L}_{\bar{\xi}_{-1}}{f^{(+)}_{r,n,\bar{n}}}^{\mu} &= \sqrt{(\bar{n}+1)(\mu+\bar{n})}{f^{(+)}_{r,n,\bar{n}+1}}^{\mu} \\
\mathcal{L}_{\bar{\xi}_{0}}{f^{(+)}_{r,n,\bar{n}}}^{\mu} &= -i\left(\frac{\mu+2}{2} + \bar{n}\right){f^{(+)}_{r,n,\bar{n}}}^{\mu} \\
\mathcal{L}_{\bar{\xi}_{1}}{f^{(+)}_{r,n,\bar{n}}}^{\mu} &= -\sqrt{\bar{n}(\mu+\bar{n}+1)}{f^{(+)}_{r,n,\bar{n}-1}}^{\mu}
\end{align}$$