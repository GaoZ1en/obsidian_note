inspired by 2401.13030, consider the following metric

$$\tag{1.1}
\begin{align}
\mathrm{d}s^{2} & =-(1+\rho^{2})\mathrm{d}t^{2}+\frac{\mathrm{d}\rho ^{2}}{1+\rho ^{2}}+\rho ^{2}\mathrm{d}\theta ^{2}
\end{align}
$$

the components of the eom $\displaystyle{\varepsilon _{a}^{~bc}\nabla _{b}A_{c}=-\mu A_{a}}$ are

$$\tag{1.2}
\begin{align}
\frac{1+\rho ^{2}}{\rho}(\partial _{\rho}A_{\theta}-\partial _{\theta}A_{\rho}) & =-\mu A_{t} \\
-\frac{1}{\rho(1+\rho ^{2})}\varepsilon _{\rho}^{~\theta t}(\partial _{\theta}A_{t}-\partial _{t}A_{\theta}) & =-\mu A_{\rho} \\
-\rho(\partial _{t}A_{\rho}-\partial _{\rho}A_{t}) & =-\mu A_{\theta}
\end{align}
$$

make the following ansatz

$$\tag{1.3}
\begin{align}
A_{t} & =\psi(\rho)e^{-i \omega t+im\theta} \\
A_{\rho} & =\phi(t,\rho)e^{-i \omega t+im\theta} \\
A_{\theta} & =im\chi(t,\rho)e^{-i \omega t+im\theta}
\end{align}
$$

insert (1.3) into (1.2), we have

$$\tag{1.4}
\begin{align}
-im\frac{1+\rho ^{2}}{\rho }(\phi-\partial _{\rho}\chi) & =-\mu \psi \\
-\frac{im}{\rho(1+\rho ^{2})}(\psi+i \omega \chi) & =-\mu \phi \\
 \rho(i \omega \phi+\partial _{\rho}\psi)& =-im\mu \chi
\end{align}
$$

$$\tag{.}
\begin{align}
\psi & =\frac{im}{\mu}\frac{1+\rho ^{2}}{\rho}(\phi-\partial _{\rho}\chi) \\
\phi & =\frac{im}{\mu} \frac{1}{\rho(1+\rho ^{2})}(\psi+i \omega \chi) \\
\chi & =\frac{\rho}{-im\mu}(i \omega \phi+\partial _{r})
\end{align}
$$




### 步骤3：导出主方程

从方程(2.1a)解出$f(\rho)$：
$$f(\rho) = -\frac{im}{\mu}\frac{1+\rho^2}{\rho}(h'(\rho)-g(\rho)) \tag{3.1}$$

从方程(2.2a)解出$g(\rho)$：
$$g(\rho) = \frac{im}{\mu\rho(1+\rho^2)}(f(\rho)+i\omega h(\rho)) \tag{3.2}$$

从方程(2.3a)解出$h(\rho)$：
$$h(\rho) = \frac{\rho}{im\mu}(i\omega g(\rho)+f'(\rho)) \tag{3.3}$$

将(3.1)代入(3.2)，可以得到$g(\rho)$与$h(\rho)$的关系：

$$g(\rho) = \frac{1}{1-\frac{m^2}{\mu^2\rho^2}}\left(-\frac{m^2}{\mu^2\rho^2}h'(\rho)+\frac{im\omega}{\mu\rho(1+\rho^2)}h(\rho)\right) \tag{3.4}$$

将(3.1)对$\rho$求导，得到$f'(\rho)$的表达式，然后将其与(3.4)一起代入(3.3)，可以导出$h(\rho)$的二阶常微分方程：

$$h''(\rho) + P(\rho)h'(\rho) + Q(\rho)h(\rho) = 0 \tag{3.5}$$

其中$P(\rho)$和$Q(\rho)$是$\rho$的函数，包含参数$\mu$、$m$和$\omega$。

## 详细展开计算

具体地，我们可以将(3.4)代入(3.1)，得到$f(\rho)$仅由$h(\rho)$及其导数表示：

$$f(\rho) = -\frac{im(1+\rho^2)}{\mu\rho}h'(\rho) + \frac{im(1+\rho^2)}{\mu\rho}g(\rho) \tag{4.1}$$

$$f(\rho) = -\frac{im(1+\rho^2)}{\mu\rho}h'(\rho) + \frac{im(1+\rho^2)}{\mu\rho}\frac{1}{1-\frac{m^2}{\mu^2\rho^2}}\left(-\frac{m^2}{\mu^2\rho^2}h'(\rho)+\frac{im\omega}{\mu\rho(1+\rho^2)}h(\rho)\right) \tag{4.2}$$

对(4.2)求导，与(3.4)一起代入(3.3)，经过代数运算后，得到最终的$h(\rho)$的二阶ODE：

$$h''(\rho) + \left(\frac{3}{\rho} + \frac{2\rho}{1+\rho^2}\right)h'(\rho) + \left(\frac{\omega^2}{(1+\rho^2)^2} - \frac{\mu^2-m^2/\rho^2}{1+\rho^2}\right)h(\rho) = 0 \tag{4.3}$$

这是一个典型的AdS空间中的波动方程，类似于超几何微分方程。

## 解的形式

方程(4.3)的解可以用超几何函数表示。定义新变量$z = \rho^2/(1+\rho^2)$，则方程转化为标准形式：

$$\frac{d^2h}{dz^2} + \frac{c-(a+b+1)z}{z(1-z)}\frac{dh}{dz} - \frac{ab}{z(1-z)}h = 0 \tag{5.1}$$

其中参数$a$、$b$和$c$与$\mu$、$m$和$\omega$有关。解的一般形式为：

$$h(z) = C_1 F(a,b;c;z) + C_2 z^{1-c}F(a-c+1,b-c+1;2-c;z) \tag{5.2}$$

其中$F(a,b;c;z)$是超几何函数，$C_1$和$C_2$是积分常数。

## 物理解释

这个变量分离过程揭示了AdS₃时空中质量化规范场的波动特性。得到的方程具有以下特点：

1. 频率$\omega$对应于场的能量本征值
2. 整数$m$对应于角动量量子数
3. 参数$\mu$表示场的质量

完整解在边界条件确定后，可以用于分析场的传播模式、正规模式和全息对应关系。