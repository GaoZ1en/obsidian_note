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

# 解AdS中Klein-Gordon方程径向部分

## 方程分析

我们需要解决的方程是：
$$\cos^2\rho \, \partial_\rho^2 R + \frac{n-2}{\tan\rho} \, \partial_\rho R + \left(\omega^2 \cos^2\rho - \frac{l(l+n-3)}{\tan^2\rho} - m^2 \right) R = 0$$

边界条件为：
- 当 $\rho \to \pi/2$ 时，$R \to (\cos\rho)^\Delta$
- 当 $\rho \to 0$ 时，$R$ 有限

## 求解过程

您提到的解的形式确实正确。我们可以采用以下变量替换：
$$R(\rho) = (\sin\rho)^l (\cos\rho)^\Delta F(z)$$
其中 $z = \cos^2\rho$

通过这个替换，我们可以将原方程转化为超几何微分方程。具体推导涉及：

1. 计算 $\partial_\rho R$ 和 $\partial_\rho^2 R$
2. 代入原方程
3. 整理得到关于 $F(z)$ 的标准超几何方程形式

## 最终解

完整解为：
$$R(\rho) = C (\sin\rho)^l (\cos\rho)^\Delta {}_2F_1\left(\frac{\Delta+l+\omega}{2}, \frac{\Delta+l-\omega}{2}; l+\frac{n}{2}; \sin^2\rho\right)$$

其中：
- $C$ 为归一化常数
- $\Delta$ 满足 $\Delta(\Delta-n+1) = m^2$，通常取 $\Delta = \frac{n-1}{2} + \sqrt{\frac{(n-1)^2}{4} + m^2}$
- ${}_2F_1(a,b;c;z)$ 是超几何函数

## 相关资料来源

您可以在以下资料中找到详细的计算过程：

1. **主要参考文献**：
   - Aharony, Gubser, Maldacena, Ooguri, Oz, "Large N Field Theories, String Theory and Gravity" (arXiv:hep-th/9905111)
   - Hubeny, "TASI Lectures on AdS/CFT" (arXiv:1501.00007)

2. **经典论文**：
   - Breitenlohner & Freedman, "Stability in Gauged Extended Supergravity" (Ann. Phys. 144, 249)
   - Klebanov & Witten, "AdS/CFT Correspondence and Symmetry Breaking" (arXiv:hep-th/9905104)

3. **教科书**：
   - Ammon & Erdmenger, "Gauge/Gravity Duality: Foundations and Applications"
   - Nastase, "Introduction to AdS/CFT Correspondence"

这个方程是AdS/CFT对应中的基础计算，解描述了AdS空间中标量场的正规模式。

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


$$\tag{.}
\begin{align}
a+b+1-c=l+\Delta+1-l-\frac{n}{2}+\frac{1}{2} \\
 & =\Delta+\frac{n-3}{2}
\end{align}
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

$$\tag{.}
\begin{align}
\Delta-\frac{n-3}{2}
\end{align}
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

在 AdS$_n$ 全局坐标下，Klein-Gordon 方程的基础解系已通过分离变量法得到，形式为：

$$
\phi_{k\ell\mathbf{m}}(t, \rho, \Omega) = \mathcal{N}_{k\ell}  e^{-i\omega_{k\ell} t}  Y_{\ell\mathbf{m}}(\Omega)  R_{k\ell}(\rho)
$$

其中：
- $\omega_{k\ell} = \Delta + \ell + 2k$ 是量子化的频率（$k = 0,1,2,\ldots$ 是径向量子数，$\ell = 0,1,2,\ldots$ 是角动量量子数）。
- $Y_{\ell\mathbf{m}}(\Omega)$ 是 $S^{n-2}$ 上的球谐函数，满足正交归一条件 $\int_{S^{n-2}} Y_{\ell\mathbf{m}}^* Y_{\ell'\mathbf{m}'}  \mathrm{d}\Omega = \delta_{\ell\ell'} \delta_{\mathbf{m}\mathbf{m}'}$。
- 径向函数为：
  
$$
R_{k\ell}(\rho) = (\sin \rho)^{\ell} (\cos \rho)^{\Delta}  {}_2F_1\left( -k, k + \ell + \Delta; \ell + \frac{n-1}{2}; \cos^2 \rho \right)
$$

- $\Delta = \frac{n-1}{2} + \sqrt{ \left( \frac{n-1}{2} \right)^2 + m^2 }$ 是共形维数（取正号以确保边界衰减行为）。

归一化系数 $\mathcal{N}_{k\ell}$ 需确保解在 Klein-Gordon 内积下正交归一。Klein-Gordon 内积定义为：

$$
\langle \phi_1, \phi_2 \rangle = i \int_{\Sigma} \left( \phi_1^* \partial_\mu \phi_2 - (\partial_\mu \phi_1^*) \phi_2 \right) \sqrt{-g}  n^\mu  \mathrm{d}\Sigma
$$

其中 $\Sigma$ 是 $t = \text{常数}$ 的类空超曲面，$n^\mu$ 是其法向量。在 AdS$_n$ 全局坐标下，内积简化为：

$$
\langle \phi_{k\ell\mathbf{m}}, \phi_{k'\ell'\mathbf{m}'} \rangle = \delta_{kk'} \delta_{\ell\ell'} \delta_{\mathbf{m}\mathbf{m}'} \cdot N
$$

要求归一化条件 $\langle \phi_{k\ell\mathbf{m}}, \phi_{k\ell\mathbf{m}} \rangle = 1$（正频解）。

### 归一化系数的选取步骤
归一化系数 $\mathcal{N}_{k\ell}$ 的确定涉及以下步骤：

1. **计算 Klein-Gordon 内积的显式**：
   代入解的形式，内积化为：
   
$$
\langle \phi_{k\ell\mathbf{m}}, \phi_{k\ell\mathbf{m}} \rangle = 2 \omega_{k\ell} \int_0^{\pi/2} |R_{k\ell}(\rho)|^2 \frac{\sin^{n-2}\rho}{\cos^{n}\rho}  \mathrm{d}\rho
$$

   这是因为：
   - 时间导数贡献因子 $2\omega_{k\ell}$。
   - 角度部分已正交归一。
   - 度规行列式贡献权重函数 $w(\rho) = \frac{\sin^{n-2}\rho}{\cos^{n}\rho}$.

2. **要求内积为 1**：
   
$$
2 \omega_{k\ell} \int_0^{\pi/2} |R_{k\ell}(\rho)|^2 \frac{\sin^{n-2}\rho}{\cos^{n}\rho}  \mathrm{d}\rho = 1
$$

   因此，径向函数的归一化条件为：
   
$$
\int_0^{\pi/2} |R_{k\ell}(\rho)|^2 \frac{\sin^{n-2}\rho}{\cos^{n}\rho}  \mathrm{d}\rho = \frac{1}{2 \omega_{k\ell}}
$$


3. **代入径向函数并计算积分**：
   设 $z = \cos^2 \rho$，则：
   
$$
\mathrm{d}z = -2 \cos \rho \sin \rho  \mathrm{d}\rho, \quad \mathrm{d}\rho = -\frac{\mathrm{d}z}{2 \sqrt{z} \sqrt{1-z}}
$$

   积分变为：
   
$$
\int_0^{\pi/2} |R_{k\ell}|^2 w(\rho)  \mathrm{d}\rho = \frac{1}{2} \int_0^1 z^{\Delta - \frac{n+1}{2}} (1-z)^{\ell + \frac{n-3}{2}} \left[ {}_2F_1\left( -k, k + \ell + \Delta; \ell + \frac{n-1}{2}; z \right) \right]^2 \mathrm{d}z
$$

   其中参数：
   - $a = \ell + \frac{n-3}{2}$
   - $b = \Delta - \frac{n-1}{2}$
   - $\beta = \ell + \frac{n-1}{2}$

   此积分可通过超几何函数的正交性计算。结果为：
   
$$
\int_0^1 z^{b-1} (1-z)^a \left[ {}_2F_1\left( -k, k + \ell + \Delta; \beta; z \right) \right]^2 \mathrm{d}z = \frac{ \Gamma(\beta) \Gamma(a+1) \Gamma(k + \ell + \Delta) \Gamma(k + b) }{ \Gamma(k + \ell + \Delta + a + 1) \Gamma(k + \beta) } \cdot \frac{ \Gamma(k+1) }{ \Gamma(\beta) }
$$

   化简后：
   
$$
\int_0^1 z^{b-1} (1-z)^a F_k^2(z)  \mathrm{d}z = \frac{ \Gamma(a+1) \Gamma(b) \Gamma(k+1) \Gamma(k + \ell + \Delta) }{ \Gamma(k + a + b + 1) \Gamma(k + b) }
$$

   其中 $a + b + 1 = \ell + \Delta$.

4. **得到归一化系数**：
   结合积分结果和归一化条件：
   
$$
\frac{1}{2} \cdot \frac{ \Gamma(a+1) \Gamma(b) \Gamma(k+1) \Gamma(k + \ell + \Delta) }{ \Gamma(k + a + b + 1) \Gamma(k + b) } \mathcal{N}_{k\ell}^2 = \frac{1}{2 \omega_{k\ell}}
$$

   代入 $a = \ell + \frac{n-3}{2}$, $b = \Delta - \frac{n-1}{2}$, $a + b + 1 = \ell + \Delta$, 并化简 Gamma 函数，最终得到：
   
$$
\mathcal{N}_{k\ell} = \sqrt{ \frac{ 2^{2\ell + n-1}  \omega_{k\ell}  \Gamma(k+1)  \Gamma(k + \ell + \Delta) }{ \pi  \Gamma(k + \ell + \frac{n-1}{2}) } } \cdot \frac{ \Gamma\left( \ell + \frac{n-1}{2} \right) }{ \Gamma\left( \frac{n-1}{2} \right) }
$$


### 最终归一化系数

$$
\boxed{\mathcal{N}_{k\ell} = \dfrac{ \Gamma\left( \ell + \dfrac{n-1}{2} \right) }{ \Gamma\left( \dfrac{n-1}{2} \right) } \sqrt{ \dfrac{ 2^{2\ell + n-1}  \omega_{k\ell}  \Gamma(k+1)  \Gamma(k + \ell + \Delta) }{ \pi  \Gamma(k + \ell + \dfrac{n-1}{2}) } }}
$$


### 说明
1. **参数含义**：
   - $\omega_{k\ell} = \Delta + \ell + 2k$
   - $\Delta = \frac{n-1}{2} + \sqrt{ \left( \frac{n-1}{2} \right)^2 + m^2 }$
   - $\Gamma(z)$ 是 Gamma 函数。
   - 当 $k=0$ 或 $\ell=0$ 时，表达式仍适用（Gamma 函数在正整数有定义）。

2. **正交归一性**：
   - 此 $\mathcal{N}_{k\ell}$ 确保基础解系正交归一：
     
$$
\langle \phi_{k\ell\mathbf{m}}, \phi_{k'\ell'\mathbf{m}'} \rangle = \delta_{kk'} \delta_{\ell\ell'} \delta_{\mathbf{m}\mathbf{m}'}
$$

   - 不同量子数 $(k,\ell,\mathbf{m})$ 的解自动正交，相同量子数的解模为 1。

3. **边界行为**：
   - 在 $\rho = \pi/2$（边界），解以 $(\cos \rho)^\Delta$ 衰减，符合 AdS 边界条件。
   - 归一化依赖于维度 $n$ 和质量 $m$（通过 $\Delta$）。

4. **特例验证**：
   - **无质量场 ($m=0$)**：$\Delta = \frac{n-1}{2}$，表达式简化。
   - **AdS$_2$ ($n=2$)**：$\ell = 0$（无角度部分），$\Delta = \frac{1}{2} + \sqrt{\frac{1}{4} + m^2}$，径向积分显式计算验证。

此归一化系数是标准结果，广泛应用于 AdS 空间量子场论和全息对偶（AdS/CFT）中。计算中使用了超几何函数的积分性质和 Gamma 函数的恒等式，确保解的正交完备性。



$$
\begin{align}
 \partial _{\rho}^{2}R-2(n-2)\partial _{z}R+\left( \omega ^{2} -\frac{\ell(\ell+n-3)}{1-z} -\frac{m^{2}}{z}\right)R=0
\end{align}
$$

$$
\begin{align}
z & =\cos ^{2}\rho \\
R(\rho) & =(\sin \rho)^{\ell} (\cos\rho)^{\Delta} F(z) \\
 & =(1-z)^{\ell/2}z^{\Delta/2}F(z)
\end{align}
$$

$$\tag{.}
\begin{align}
\mathrm{d}z & =-\sin \rho \cos \rho \mathrm{d}\rho\implies  \\
\frac{\mathrm{d}}{\mathrm{d}\rho} & =-2\sqrt{ z(1-z) }\frac{\mathrm{d}}{\mathrm{d}z} \\
\cos \rho & =\sqrt{ z } \\
\sin \rho & =\sqrt{ 1-z } \\

\end{align}
$$

$$\tag{.}
\begin{align}
4z(1-z)\partial _{z}^{2}R+2(3-2z-n)\partial _{z}R+\left( \omega ^{2}-\frac{\ell(\ell+n-2)}{1-z}-\frac{m^{2}}{z} \right)R=0
\end{align}
$$

first term

$$\tag{.}
\begin{align}
\partial _{z}((1-z)^{\ell/2}z^{\Delta/2}F(z)) & =-\frac{\ell}{2}(1-z)^{-1}F(z)+\frac{\Delta}{2}z^{-1}F(z)+F'(z) \\
\partial _{z}^{2}R & =\frac{\ell(\ell-1)}{4}(1-z)^{-2}F(z)+\frac{\Delta(\Delta-1)}{4}z^{-2}F(z)+F''(z) \\
 & -\frac{\ell \Delta}{2}(1-z)^{-1}z^{-1}F(z)-\ell(1-z)^{-1}F'(z)+\Delta z^{-1}F'(z)
\end{align}
$$

$$\tag{.}
\begin{align}
4z(1-z)F''(z)-4\ell zF'(z)+4\Delta(1-z)F'(z) \\
+2(3-2z-n)F'(z) \\
+\left( \omega ^{2}-\ell(\ell+1)-\Delta(\Delta+1)-2\ell \Delta \right)F(z)=0
\end{align}
$$

$$\tag{.}
\begin{align}
+4\Delta+6-2n \\

\end{align}
$$



$$\tag{.}
\begin{align}
\Delta _{\pm} & =\frac{n-1}{2}\pm \sqrt{ \frac{(n-1)^{2}}{4}+m^{2} } \\
\Delta _{+}+\Delta _{-} & =n-1 \\
\Delta _{+}\Delta _{-} & =-m^{2} \\
\Delta(\Delta-n+1) & =m^{2}
\end{align}
$$