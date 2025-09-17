这是一个关于 [[AdS₃ 对称性]] 和 [[渐进对称性]] 的深刻问题。让我系统分析您给出的 Killing 向量组织结构。

## AdS₃ 对称性群结构

您的度规：
$$ds^2 = -(1+r^2)dt^2 + \frac{dr^2}{1+r^2} + r^2 d\phi^2$$

这是 AdS₃ 的 [[Poincaré 坐标]] 表示。[[SO(2,2)]] ≅ [[SL(2,ℝ) × SL(2,ℝ)]] 是 AdS₃ 的完整等距群，维数为 6。

## Killing 向量的群论结构

您给出的向量场可以理解为 [[SL(2,ℝ)]] 的复化表示：

### 左作用 SL(2,ℝ)_L：
$$\{\xi_1, \xi_0, \xi_{-1}\}$$

### 右作用 SL(2,ℝ)_R：
$$\{\bar{\xi}_1, \bar{\xi}_0, \bar{\xi}_{-1}\}$$

这些满足 [[SL(2,ℝ) 代数]]：
$$[\xi_m, \xi_n] = (m-n)\xi_{m+n}$$
$$[\bar{\xi}_m, \bar{\xi}_n] = (m-n)\bar{\xi}_{m+n}$$
$$[\xi_m, \bar{\xi}_n] = 0$$

## 渐进对称性分析

### Brown-Henneaux 边界条件
在 AdS₃/CFT₂ 对应中，[[Brown-Henneaux 边界条件]] ^cite{BrownHenneaux1986} 允许更一般的渐进对称性：

对于 $r \to \infty$ 边界，度规渐进行为：
$$g_{\mu\nu} = \bar{g}_{\mu\nu} + \frac{h_{\mu\nu}}{r} + O(r^{-2})$$

其中 $\bar{g}_{\mu\nu}$ 是 AdS₃ 背景度规。

### 渐进 Killing 向量
除了您列出的 6 个精确 Killing 向量外，还存在**无穷多个渐进 Killing 向量**：

$$\xi_n = \frac{1}{2}e^{in(t-\phi)}\left[r(1+r^2)^{-1/2}\frac{\partial}{\partial t} - i(1+r^2)^{1/2}\frac{\partial}{\partial r} - \frac{n}{r}(1+r^2)^{1/2}\frac{\partial}{\partial \phi}\right]$$

$$\bar{\xi}_n = \frac{1}{2}e^{in(t+\phi)}\left[r(1+r^2)^{-1/2}\frac{\partial}{\partial t} - i(1+r^2)^{1/2}\frac{\partial}{\partial r} + \frac{n}{r}(1+r^2)^{1/2}\frac{\partial}{\partial\phi}\right]$$

对于 $n \in \mathbb{Z}$，$n \neq 0, \pm 1$。

## 对称性破缺机制

### 1. 自发破缺 vs 显式破缺
- **自发破缺**：真空态不保持完整的渐进对称性
- **显式破缺**：边界条件或物质场直接破坏对称性

### 2. [[Virasoro 代数]] 的中心荷
渐进对称性生成两个 [[Virasoro 代数]]：
$$[L_m, L_n] = (m-n)L_{m+n} + \frac{c_L}{12}m(m^2-1)\delta_{m+n,0}$$
$$[\bar{L}_m, \bar{L}_n] = (m-n)\bar{L}_{m+n} + \frac{c_R}{12}m(m^2-1)\delta_{m+n,0}$$

其中中心荷：
$$c_L = c_R = \frac{3\ell}{2G_3}$$

$\ell$ 是 AdS 半径，$G_3$ 是三维 Newton 常数。

### 3. 破缺模式

**情形一：边界场论中的破缺**
- [[模态破缺]]：特定边界条件选择真空态
- 例：[[BTZ 黑洞]] 背景下的热态

**情形二：量子反常**
- [[Weyl 反常]]：边界应力张量的 trace 反常
- [[重力反常]]：diffeomorphism 反常

## 重要开放问题

[[**渐进对称性的完整分类**]]：
- AdS₃ 中所有可能的边界条件
- 对应的渐进对称性群
- 稳定性和可积性条件

[[**全息对偶中的对称性匹配**]]：
- 边界 CFT₂ 中对称性的实现
- 操作子对应和 Ward 恒等式

## 文献建议

关键综述：
- arXiv:1003.1113 [hep-th] (Carlip, "Conformal field theory, (2+1)-dimensional gravity and the BTZ black hole")
- arXiv:1609.00026 [hep-th] (Riegler, "Asymptotic symmetry algebras in non-AdS₃ higher-spin gravity")

**结论**：是的，存在无穷多个渐进 Killing 向量，它们的破缺模式取决于具体的物理情况和边界条件选择。