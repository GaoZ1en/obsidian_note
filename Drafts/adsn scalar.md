$$\tag{.}
\begin{align} 
\cos ^{2}\rho \partial _{\rho}^{2}R+\frac{n-2}{\tan \rho}\partial _{\rho}R+\left( \omega ^{2}\cos ^{2}\rho -\frac{l(l+n-3)}{\tan ^{2}\rho} -m^{2}\right)R=0
\end{align}
$$
$$\tag{.}
\begin{align}
z & =\cos ^{2}\rho \\
R(\rho) & =(\sin \rho)^{\ell} (\cos\rho)^{\Delta} F(z)
\end{align}
$$

$$\tag{.}
\begin{align}
_{2}F_{1}(a,b,c;z) & =_{2}F_{1}(d,e,f;1-z^{2})
\end{align}
$$
为了求解 AdS$_n$ 空间中 Klein-Gordon 方程的基础解系，我们从之前导出的拉普拉斯算子（Laplacian）出发。Klein-Gordon 方程为：

$$
(\Box - m^2) \phi = 0
$$

其中拉普拉斯算子 $\Box$ 在全局坐标下为：

$$
\Box \phi = \cos^{2}\rho \left( -\partial_{t}^{2} \phi + \partial_{\rho}^{2} \phi \right) + (n-2) \frac{\cos\rho}{\sin\rho} \partial_{\rho} \phi + \frac{\cos^{2}\rho}{\sin^{2}\rho} \Delta_{S^{n-2}} \phi
$$

这里，$\Delta_{S^{n-2}}$ 是 $n-2$ 维球面 $S^{n-2}$ 上的拉普拉斯算子。代入后，Klein-Gordon 方程变为：

$$
\cos^{2}\rho \left( -\partial_{t}^{2} \phi + \partial_{\rho}^{2} \phi \right) + (n-2) \frac{\cos\rho}{\sin\rho} \partial_{\rho} \phi + \frac{\cos^{2}\rho}{\sin^{2}\rho} \Delta_{S^{n-2}} \phi - m^2 \phi = 0
$$

基础解系指的是一组完备的正交解，可以通过分离变量法求得。解的形式为：

$$
\phi(t, \rho, \Omega) = e^{-i\omega t} Y_{\ell \mathbf{m}}(\Omega) R(\rho)
$$

其中：
- $e^{-i\omega t}$ 是时间部分，$\omega$ 是频率（本征值）。
- $Y_{\ell \mathbf{m}}(\Omega)$ 是 $S^{n-2}$ 上的球谐函数，满足 $\Delta_{S^{n-2}} Y_{\ell \mathbf{m}} = -\ell(\ell + n - 3) Y_{\ell \mathbf{m}}$，$\ell = 0, 1, 2, \dots$ 是角动量量子数，$\mathbf{m}$ 是额外的量子数（如磁量子数）。
- $R(\rho)$ 是径向函数，需进一步求解。

代入方程后，分离变量得到径向方程：

$$
\cos^{2}\rho  R'' + (n-2) \frac{\cos\rho}{\sin\rho} R' + \left( \omega^2 \cos^{2}\rho - \ell(\ell + n - 3) \frac{\cos^{2}\rho}{\sin^{2}\rho} - m^2 \right) R = 0
$$

化简为：

$$
R'' + (n-2) \frac{1}{\cos\rho \sin\rho} R' + \left( \omega^2 - \ell(\ell + n - 3) \frac{1}{\sin^{2}\rho} - \frac{m^2}{\cos^{2}\rho} \right) R = 0
$$


### 步骤 1: 定义共形维数 $\Delta$
在 AdS$_n$ 中，边界维度为 $d = n-1$。标量场的质量 $m$ 决定了共形维数 $\Delta$：

$$
\Delta = \frac{n-1}{2} + \sqrt{ \left( \frac{n-1}{2} \right)^2 + m^2 }
$$

这里选择正号以得到正规解（满足边界条件的衰减解）。

### 步骤 2: 径向函数的 ansatz
设径向函数为：

$$
R(\rho) = (\sin \rho)^{\ell} (\cos \rho)^{\Delta} F(z), \quad z = \cos^2 \rho
$$

其中 $F(z)$ 是待定函数。这个形式确保了：
- 在 $\rho = 0$（中心点），$R \sim \rho^{\ell}$（正则行为）。
- 在 $\rho = \pi/2$（边界），$R \sim (\cos \rho)^{\Delta}$（共形边界行为）。

### 步骤 3: 代入径向方程并化简
代入 ansatz 后，方程化为超几何微分方程：

$$
z(1 - z) \frac{d^2 F}{dz^2} + \left[ \left( \ell + \frac{n-1}{2} \right) - \left( \ell + \Delta + \frac{1}{2} + 1 \right) z \right] \frac{dF}{dz} - \frac{1}{4} (\ell + \Delta)^2 F + \frac{\omega^2}{4} F = 0
$$

更标准的形式为：

$$
z(1 - z) \frac{d^2 F}{dz^2} + \left[ c - (a + b + 1) z \right] \frac{dF}{dz} - ab F = 0
$$

其中参数：

$$
a = \frac{\ell + \Delta + \omega}{2}, \quad b = \frac{\ell + \Delta - \omega}{2}, \quad c = \ell + \frac{n-1}{2}
$$


### 步骤 4: 求解超几何方程并量子化频率
超几何方程的通解为超几何函数 ${}_2F_1(a, b; c; z)$。为了在边界 $\rho = \pi/2$（即 $z = 0$) 处正则，需要解在 $z = 0$ 和 $z = 1$ 处有界。这要求级数终止（即多项式解），条件为 $a$ 或 $b$ 是负整数：

$$
b = -k, \quad k = 0, 1, 2, \dots
$$

代入 $b$ 的定义：

$$
\frac{\ell + \Delta - \omega}{2} = -k \implies \omega = \ell + \Delta + 2k
$$

因此，频率 $\omega$ 被量子化，离散谱为：

$$
\omega_{k\ell} = \Delta + \ell + 2k, \quad k = 0, 1, 2, \dots
$$

此时，超几何函数成为多项式（因为 $b = -k$）：

$$
{}_2F_1\left( a, b; c; z \right) = {}_2F_1\left( \ell + \Delta + k, -k; \ell + \frac{n-1}{2}; \cos^2 \rho \right)
$$


### 步骤 5: 写出完整的解
径向函数为：

$$
R_{k\ell}(\rho) = (\sin \rho)^{\ell} (\cos \rho)^{\Delta}  {}_2F_1\left( -k, k + \ell + \Delta; \ell + \frac{n-1}{2}; \cos^2 \rho \right)
$$

完整的 Klein-Gordon 方程解为：

$$
\phi_{k \ell \mathbf{m}}(t, \rho, \Omega) = e^{-i \omega_{k\ell} t} Y_{\ell \mathbf{m}}(\Omega) R_{k\ell}(\rho)
$$

其中：
- $k = 0, 1, 2, \dots$ 是径向量子数（能级）。
- $\ell = 0, 1, 2, \dots$ 是角动量量子数。
- $\mathbf{m}$ 是球谐函数 $Y_{\ell \mathbf{m}}$ 的量子数（例如，在 $S^{n-2}$ 上，$\mathbf{m}$ 对应 $n-3$ 个额外量子数）。
- $\omega_{k\ell} = \Delta + \ell + 2k$ 是离散频率。
- $\Delta = \frac{n-1}{2} + \sqrt{ \left( \frac{n-1}{2} \right)^2 + m^2 }$ 是共形维数。

### 步骤 6: 基础解系
基础解系由所有可能的量子数组 $(k, \ell, \mathbf{m})$ 标记的解构成：
- **时间部分**：$e^{-i \omega_{k\ell} t}$ 表示频率为 $\omega_{k\ell}$ 的振荡。
- **角度部分**：$Y_{\ell \mathbf{m}}(\Omega)$ 是 $S^{n-2}$ 上的球谐函数，形成角向基。
- **径向部分**：$R_{k\ell}(\rho)$ 是正交多项式（超几何函数简化而来），满足径向方程。

解的正交性和完备性源于球谐函数的正交性和超几何函数的性质。通解是这些模的线性叠加：

$$
\phi(t, \rho, \Omega) = \sum_{k=0}^{\infty} \sum_{\ell=0}^{\infty} \sum_{\mathbf{m}} c_{k \ell \mathbf{m}}  \phi_{k \ell \mathbf{m}}(t, \rho, \Omega)
$$

其中 $c_{k \ell \mathbf{m}}$ 是常数系数。

### 说明
1. **边界条件**：在 $\rho = \pi/2$ 处，解以 $(\cos \rho)^{\Delta}$ 衰减，确保正规性。选择 $\Delta$ 的正号对应标准量化；负号 $\Delta_- = \frac{n-1}{2} - \sqrt{ \left( \frac{n-1}{2} \right)^2 + m^2 }$ 可用于替代边界条件。
2. **离散谱**：频率 $\omega_{k\ell}$ 离散，因为 AdS 空间是束缚系统。
3. **球谐函数**：在 $S^{n-2}$ 上，$Y_{\ell \mathbf{m}}$ 的维度由 $\ell$ 和 $\mathbf{m}$ 决定，总自由度数与边界维度匹配。
4. **特例**：
   - 当 $n=2$，$S^{0}$ 是点，无角度部分，$\ell = 0$，解简化为 $\phi_k(t, \rho) = e^{-i \omega_k t} (\cos \rho)^{\Delta} {}_2F_1(-k, k + \Delta; \Delta; \cos^2 \rho)$，其中 $\omega_k = \Delta + 2k$。
   - 当 $m=0$（无质量场），$\Delta = \frac{n-1}{2}$。

此基础解系适用于 AdS$_n$ 中的标量场，并可通过解析延拓或极限过程推广到其他情况。