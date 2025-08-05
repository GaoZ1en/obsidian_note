$$\tag{.}
\begin{align}
\mathrm{d}s^{2} & =-N^{2}\mathrm{d}t^{2}+h_{ab}(\mathrm{d}x^{a}+N^{a}\mathrm{d}t)(\mathrm{d}x^{b}+N^{b}\mathrm{d}t)
\end{align}
$$

---

in this part we assume that $\displaystyle{N,h_{ij}}$ and $\displaystyle{N^{i}}$ are independent from $\displaystyle{t}$.

$$\tag{.}
\begin{align}
\Gamma ^{\rho}_{~\mu \nu}\mathrm{d}x^{\mu}\mathrm{d}x^{\nu} & =\frac{1}{2}g^{\rho \sigma}(\partial _{\mu}g_{\sigma \nu}+\partial _{\nu}g_{\mu \sigma}-\partial _{\sigma}g_{\mu \nu})\mathrm{d}x^{\mu}\mathrm{d}x^{\nu} \\
 & =g^{\rho \sigma}\partial _{\mu}g_{\sigma \nu}\mathrm{d}x^{\mu}\mathrm{d}x^{\nu}-\frac{1}{2}g^{\rho \sigma}\partial _{\sigma}\mathrm{d}s^{2}
\end{align}
$$

$$\tag{.}
\begin{align}
g_{tt} & =-N^{2}+h_{ab}N^{a}N^{b}, & g_{ta} & =h_{ab}N^{b}, & g_{ab} & =h_{ab} \\
g^{tt} & =-\frac{1}{N^{2}}, & g^{ta} & =\frac{N^{a}}{N^{2}}, & g^{ab} & =h^{ab}-\frac{N^{a}N^{b}}{N^{2}}
\end{align}
$$

$$\tag{.}
\begin{align}
\Gamma ^{t}_{~\mu \nu}\mathrm{d}x^{\mu}\mathrm{d}x^{\nu} & =g^{t\sigma}\partial _{\mu}g_{\sigma \nu}\mathrm{d}x^{\mu}\mathrm{d}x^{\nu}-\frac{1}{2}g^{t\sigma}\partial _{\sigma}\mathrm{d}s^{2} \\
 & =g^{tt}\partial _{\mu}g_{t\nu}\mathrm{d}x^{\mu}\mathrm{d}x^{\nu}+g^{ta}\partial _{\mu}g_{a\nu}\mathrm{d}x^{\mu}\mathrm{d}x^{\nu}-\frac{1}{2}g^{ta}\partial _{a}\mathrm{d}s^{2} \\
 & =g^{tt}\partial _{a}g_{tt}\mathrm{d}x^{a}\mathrm{d}t+g^{tt}\partial _{a}g_{tb}\mathrm{d}x^{a}\mathrm{d}x^{b}+g^{ta}\partial _{b}g_{at}\mathrm{d}x^{b}\mathrm{d}t+g^{ta}\partial _{b}g_{ac}\mathrm{d}x^{b}\mathrm{d}x^{c}-\frac{1}{2}g^{ta}\partial _{a}(-N^{2}\mathrm{d}t^{2}+h_{ij}(\mathrm{d}x^{i}+N^{i}\mathrm{d}t)(\mathrm{d}x^{j}+N^{j}\mathrm{d}t)) \\

\end{align}
$$

$$\tag{.}
\begin{align}
\Gamma ^{\rho}_{~\mu \nu} & =\frac{1}{2}g^{\rho \sigma}(\partial _{\mu}g_{\sigma \nu}+\partial _{\nu}g_{\mu \sigma}-\partial _{\sigma}g_{\mu \nu})
\end{align}
$$
$$\tag{.}
\begin{align}
\Gamma ^{t}_{~tt} & =\frac{N^{a}}{N}\partial _{a}N-\frac{1}{2} \frac{N^{a}}{N^{2}}\partial _{a}h_{bc}N^{b}N^{c}-\frac{N^{a}}{N^{2}}h_{bc}N^{b}\partial _{a}N^{c} \\
\Gamma ^{t}_{~ta} & =\frac{1}{2}g^{t\sigma}(\partial _{t}g_{\sigma a}+\partial _{a}g_{t\sigma}-\partial _{\sigma}g_{ta}) \\
 & =\frac{1}{2}g^{tt}\partial _{a}g_{tt}+\frac{1}{2}g^{tb}(\partial _{t}g_{ab}+\partial _{a}g_{tb}-\partial _{b}g_{ta}) \\
 & =\frac{1}{2} \frac{1}{N^{2}}\partial _{a}(N^{2}-h_{ab}N^{a}N^{b})+\frac{1}{2} \frac{N^{a}}{N^{2}}(\partial _{a}(h_{bc}N^{c})-\partial _{b}(h_{ac}N^{c})) \\
 & =\frac{\partial _{a}N}{N}+\frac{1}{2N^{2}}\partial _{a}(h_{bc}N^{b}N^{c})+\frac{1}{2N^{2}}\partial _{a}h_{bc}N^{b}N^{c}+\frac{1}{N^{2}}
\end{align}
$$

## Christoffel 符号

由于 $$\partial_t g_{\mu\nu} = 0$$（时间无关），Christoffel 符号简化为：

$$\Gamma^\mu_{\nu\rho} = \frac{1}{2}g^{\mu\sigma}(\partial_\nu g_{\sigma\rho} + \partial_\rho g_{\sigma\nu} - \partial_\sigma g_{\nu\rho})$$

### 主要分量

**时间分量：**
$$\Gamma^0_{00} = \frac{N^a \partial_a N}{N^2}$$

$$\Gamma^0_{0a} = \Gamma^0_{a0} = -\frac{\partial_a N}{N^2}$$

$$\Gamma^0_{ab} = \frac{1}{N}(\partial_a N_b + \partial_b N_a - N^c \partial_c h_{ab})$$

**空间分量：**
$$\Gamma^a_{00} = N h^{ab}\partial_b N + h^{ab}N^c(\partial_b N_c - \partial_c N_b)$$

$$\Gamma^a_{0b} = \Gamma^a_{b0} = h^{ac}(\partial_b N_c - \frac{1}{2}\partial_c h_{bc})$$

$$\Gamma^a_{bc} = {}^{(3)}\Gamma^a_{bc} + \frac{1}{2N}h^{ad}(N^e\partial_e h_{bc} - N_c \partial_b h_{de} - N_b \partial_c h_{de})$$

其中 $${}^{(3)}\Gamma^a_{bc}$$ 是由 $$h_{ab}$$ 构成的3维Christoffel符号。

## Riemann 曲率张量

对于时间无关的ADM度规，Riemann张量的关键分量：

### 时空混合分量
$$R^0_{a0b} = \frac{1}{N}[\partial_a \partial_b N - \Gamma^c_{ab}\partial_c N + N^c(\partial_a \Gamma^0_{cb} - \partial_c \Gamma^0_{ab})]$$

### 纯空间分量
$$R^a_{bcd} = {}^{(3)}R^a_{bcd} + \frac{1}{N^2}[K_{bc}K^a_d - K_{bd}K^a_c]$$

其中**外曲率张量**定义为：
$$K_{ab} = \frac{1}{2N}(\mathcal{L}_{\vec{N}} h_{ab}) = \frac{1}{2N}(D_a N_b + D_b N_a)$$

这里 $$D_a$$ 是与 $$h_{ab}$$ 相容的协变导数，$$N_a = h_{ab}N^b$$。

## Ricci 张量

### 时间分量
$$R_{00} = -\frac{1}{N}[\partial_a \partial^a N + \frac{1}{N}(\partial_a N)(\partial^a N)] + K_{ab}K^{ab} - K^2$$

其中 $$K = h^{ab}K_{ab}$$ 是外曲率的迹。

### 混合分量
$$R_{0a} = D_b K^b_a - D_a K$$

### 空间分量
$$R_{ab} = {}^{(3)}R_{ab} + \frac{1}{N}[\partial_a \partial_b N - N^c \partial_c K_{ab}] - K K_{ab} + 2K_{ac}K^c_b$$

## Ricci 标量

$$R = {}^{(3)}R + \frac{2}{N}[\Delta N - N^a \partial_a K] + K^2 - K_{ab}K^{ab}$$

其中：
- $${}^{(3)}R$$：3维Ricci标量
- $$\Delta = D_a D^a$$：3维Laplace算子

## 物理解释

这些表达式在**[[数值相对论]]**中至关重要：

1. **约束方程**：Einstein场方程在ADM形式下分解为演化方程和约束方程
2. **Hamiltonian约束**：$$R_{00} = 0$$ 对应能量约束
3. **动量约束**：$$R_{0a} = 0$$ 对应动量约束

当系统完全时间无关时，这简化为**静态Einstein方程**的求解问题。

^cite{ArnowittDeserMisner1962}

[[ADM Formalism]] | [[3+1 Decomposition]] | [[Numerical Relativity]] | [[Static Spacetimes]]