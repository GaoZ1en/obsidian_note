**问题 2**

使用最高权表示，求出在全局 $\mathrm{AdS}_{3}$ 中定义的、质量为 $\mu$ 的自由有质量矢量场的运动方程的所有解的显式形式（至多一个整体常数）。此处我们选择以下度规：

$$
\mathrm{d}s^{2} = -(1+r^{2})\mathrm{d}t^{2} + \frac{\mathrm{d}r^{2}}{1+r^{2}} + r^{2}\mathrm{d}\phi^{2}
$$

独立的 Killing 向量为：

$$
\begin{align}
\xi _{1} &= \frac{1}{2} e^{i(t-\phi)} \left( \frac{r}{\sqrt{1+r^{2}}} \partial _{t} - i \sqrt{1+r^{2}} \partial _{r} - \frac{\sqrt{1+r^{2}}}{r} \partial _{\phi} \right) \\
\xi _{0} &= \frac{1}{2} (\partial _{t} - \partial _{\phi}) \\
\xi _{-1} &= \frac{1}{2} e^{-i(t-\phi)} \left( \frac{r}{\sqrt{1+r^{2}}} \partial _{t} + i \sqrt{1+r^{2}} \partial _{r} - \frac{\sqrt{1+r^{2}}}{r} \partial _{\phi} \right) \\
\bar{\xi}_{1} &= \frac{1}{2} e^{i(t+\phi)} \left( \frac{r}{\sqrt{1+r^{2}}} \partial _{t} - i \sqrt{1+r^{2}} \partial _{r} + \frac{\sqrt{1+r^{2}}}{r} \partial _{\phi} \right) \\
\bar{\xi}_{0} &= \frac{1}{2} (\partial _{t} + \partial _{\phi}) \\
\bar{\xi}_{-1} &= \frac{1}{2} e^{-i(t+\phi)} \left( \frac{r}{\sqrt{1+r^{2}}} \partial _{t} + i \sqrt{1+r^{2}} \partial _{r} + \frac{\sqrt{1+r^{2}}}{r} \partial _{\phi} \right)
\end{align}
$$

这些 Killing 向量满足 $\mathfrak{sl}(2,\mathbb{R}) \times \mathfrak{sl}(2,\mathbb{R})$ 代数：

$$
\begin{align}
[\xi _{0}, \xi _{1}] &= i \xi _{1} \\
[\xi _{0}, \xi _{-1}] &= -i \xi _{-1} \\
[\xi _{1}, \xi _{-1}] &= -2i \xi _{0} \\
[\bar{\xi} _{0}, \bar{\xi} _{1}] &= i \bar{\xi} _{1} \\
[\bar{\xi} _{0}, \bar{\xi} _{-1}] &= -i \bar{\xi} _{-1} \\
[\bar{\xi} _{1}, \bar{\xi} _{-1}] &= -2i \bar{\xi} _{0}
\end{align}
$$

**解**

Casimir 算子可通过以下方式构造：

$$
\begin{align}
\mathcal{C} &= \mathcal{L}_{\xi_{0}} \mathcal{L}_{\xi_{0}} - \mathcal{L}_{\xi _{-1}} \mathcal{L}_{\xi _{1}} + i \mathcal{L}_{\xi_{0}} \\
\mathcal{\bar{C}} &= \mathcal{L}_{\bar{\xi}_{0}} \mathcal{L}_{\bar{\xi}_{0}} - \mathcal{L}_{\bar{\xi}_{-1}} \mathcal{L}_{\bar{\xi} _{1}} + i \mathcal{L}_{\bar{\xi}_{0}}
\end{align}
$$

它们作用于矢量场时满足：

$$
\begin{align}
(\mathcal{C} + \mathcal{\bar{C}}) A^{\mu} &= -\frac{1}{2} \nabla ^{2} A^{\mu} - A^{\mu} \\
(\mathcal{C} - \mathcal{\bar{C}})^{2} A^{\mu} &= \nabla ^{2} A^{\mu} - \nabla _{\nu} \nabla ^{\mu} A^{\nu}
\end{align}
$$

注意，有质量矢量场的运动方程可写为：

$$
\begin{align}
\nabla _{\mu} F^{\mu \nu} &= \mu ^{2} A^{\nu} \\
\implies & 
\begin{cases}
\nabla _{\mu} A^{\mu} = 0 \\
\nabla ^{2} A^{\mu} - (\mu ^{2} - 2) A^{\mu} = 0
\end{cases}
\end{align}
$$

那么 Casimir 算子作用于 $A^{\mu}$ 得到：

$$
\begin{align}
(\mathcal{C} + \mathcal{\bar{C}}) A^{\mu} &= -\frac{1}{2} \mu ^{2} A^{\mu} \\
(\mathcal{C} - \mathcal{\bar{C}})^{2} A^{\mu}  &= \mu ^{2} A^{\mu}
\end{align}
$$

由此得到 Casimir 算子的两个本征值，对应两个最高权表示系列（正频率模）：

$$
\begin{align}
\text{第一种情况：} & 
\begin{cases}
\mathcal{C} = -\frac{1}{4} \mu ^{2} - \frac{1}{2} \mu \\
\mathcal{\bar{C}} = -\frac{1}{4} \mu ^{2} + \frac{1}{2} \mu
\end{cases} \\
\text{第二种情况：} & 
\begin{cases}
\mathcal{C} = -\frac{1}{4} \mu ^{2} + \frac{1}{2} \mu \\
\mathcal{\bar{C}} = -\frac{1}{4} \mu ^{2} - \frac{1}{2} \mu
\end{cases}
\end{align}
$$

对于第一种情况，我们可以定义最高权态 $f^{\mu}_{l,0,0}$，满足：

$$
\begin{align}
\mathcal{L}_{\xi _{1}} f^{\mu}_{l,0,0} &= 0 \\
\mathcal{L}_{\bar{\xi} _{1}} f^{\mu}_{l,0,0} &= 0
\end{align}
$$

注意：

$$
\mathcal{L}_{\xi_{1}} \xi _{1}^{\mu} = \mathcal{L}_{\bar{\xi}_{1}} \xi _{1}^{\mu} = 0
$$

因此最高权态可解为：

$$
f^{\mu}_{l,0,0} = C_{0,0} e^{-i(\mu+2)t} (1+r^{2})^{-(\mu+2)/2} \xi _{1}^{\mu}
$$

其中 $C_{0,0}$ 是一个整体常数。其他态可以通过作用降算子生成：

$$
f^{\mu}_{l,n,\bar{n}} = C_{n,\bar{n}} \mathcal{L}_{\xi _{-1}}^{n} \mathcal{L}_{\bar{\xi} _{-1}}^{\bar{n}} f^{\mu}_{l,0,0}
$$

通过归纳法，我们可以找到：

$$
\begin{align}
f^{\mu}_{l,n,\bar{n}} &= \mathcal{L}_{\xi _{-1}}^{n} \mathcal{L}_{\bar{\xi}_{-1}}^{\bar{n}} \left[ \frac{e^{-i(\mu+2)t}}{(1+r^{2})^{(\mu +2)/2}} \xi _{1}^{\mu} \right] + 2in \mathcal{L}^{n-1}_{\xi _{-1}} \mathcal{L}_{\bar{\xi}_{-1}}^{\bar{n}} \left[ \frac{e^{-i(\mu+2)t}}{(1+r^{2})^{(\mu +2)/2}} \xi _{-1}^{\mu} \right] \\
&\quad - n(n-1) \mathcal{L}_{\xi _{-1}}^{n-2} \mathcal{L}_{\bar{\xi}_{-1}}^{\bar{n}} \left[ \frac{e^{-i(\mu+2)t}}{(1+r^{2})^{(\mu +2)/2}} \xi _{-1}^{\mu} \right]
\end{align}
$$

其中：

$$
\mathcal{L}_{\xi _{-1}}^{n} \mathcal{L}_{\bar{\xi}_{-1}}^{\bar{n}} \left[ \frac{e^{-i(\mu+2)t}}{(1+r^{2})^{(\mu +2)/2}} \right] = C_{n,\bar{n}} e^{-i(\mu+2+n+\bar{n})t} e^{i(n-\bar{n})\phi} r^{n-\bar{n}} (1+r^{2})^{-(\mu+2+n-\bar{n})/2} P_{\bar{n}}^{(\mu+1,n-\bar{n})} \left( \frac{r^{2}-1}{r^{2}+1} \right)
$$

对于第二种情况，我们可以定义最高权态 $f^{\mu}_{r,0,0}$，满足：

$$
\begin{align}
\mathcal{L}_{\xi _{1}} f^{\mu}_{r,0,0} &= 0 \\
\mathcal{L}_{\bar{\xi} _{1}} f^{\mu}_{r,0,0} &= 0
\end{align}
$$

注意：

$$
\mathcal{L}_{\xi_{1}} \bar{\xi} _{1}^{\mu} = \mathcal{L}_{\bar{\xi}_{1}} \bar{\xi} _{1}^{\mu} = 0
$$

因此最高权态可解为：

$$
f^{\mu}_{r,0,0} = \tilde{C}_{0,0} e^{-i(\mu+2)t} (1+r^{2})^{-(\mu+2)/2} \bar{\xi} _{1}^{\mu}
$$

其中 $\tilde{C}_{0,0}$ 是一个整体常数。其他态可以通过作用降算子生成：

$$
f^{\mu}_{r,n,\bar{n}} = \tilde{C}_{n,\bar{n}} \mathcal{L}_{\xi _{-1}}^{n} \mathcal{L}_{\bar{\xi} _{-1}}^{\bar{n}} f^{\mu}_{r,0,0}
$$

通过归纳法，我们可以找到：

$$
\begin{align}
f^{\mu}_{r,n,\bar{n}} &= \mathcal{L}_{\xi _{-1}}^{n} \mathcal{L}_{\bar{\xi}_{-1}}^{\bar{n}} \left[ \frac{e^{-i(\mu+2)t}}{(1+r^{2})^{(\mu +2)/2}} \bar{\xi} _{1}^{\mu} \right] + 2i\bar{n} \mathcal{L}^{n}_{\xi _{-1}} \mathcal{L}_{\bar{\xi}_{-1}}^{\bar{n}-1} \left[ \frac{e^{-i(\mu+2)t}}{(1+r^{2})^{(\mu +2)/2}} \bar{\xi} _{-1}^{\mu} \right] \\
&\quad - \bar{n}(\bar{n}-1) \mathcal{L}_{\xi _{-1}}^{n} \mathcal{L}_{\bar{\xi}_{-1}}^{\bar{n}-2} \left[ \frac{e^{-i(\mu+2)t}}{(1+r^{2})^{(\mu +2)/2}} \bar{\xi} _{-1}^{\mu} \right]
\end{align}
$$

其中：

$$
\mathcal{L}_{\xi _{-1}}^{n} \mathcal{L}_{\bar{\xi}_{-1}}^{\bar{n}} \left[ \frac{e^{-i(\mu+2)t}}{(1+r^{2})^{(\mu +2)/2}} \right] = C_{n,\bar{n}} e^{-i(\mu+2+n+\bar{n})t} e^{i(n-\bar{n})\phi} r^{n-\bar{n}} (1+r^{2})^{-(\mu+2+n-\bar{n})/2} P_{\bar{n}}^{(\mu+1,n-\bar{n})} \left( \frac{r^{2}-1}{r^{2}+1} \right)
$$

**总结**

在全局 $\mathrm{AdS}_{3}$ 中定义的、质量为 $\mu$ 的自由有质量矢量场的运动方程的所有解的显式形式由下式给出：

$$
\begin{align}
f^{\mu}_{l,n,\bar{n}} &= \mathcal{L}_{\xi _{-1}}^{n} \mathcal{L}_{\bar{\xi}_{-1}}^{\bar{n}} \left[ \frac{e^{-i(\mu+2)t}}{(1+r^{2})^{(\mu +2)/2}} \xi _{1}^{\mu} \right] + 2in \mathcal{L}^{n-1}_{\xi _{-1}} \mathcal{L}_{\bar{\xi}_{-1}}^{\bar{n}} \left[ \frac{e^{-i(\mu+2)t}}{(1+r^{2})^{(\mu +2)/2}} \xi _{-1}^{\mu} \right] \\
&\quad - n(n-1) \mathcal{L}_{\xi _{-1}}^{n-2} \mathcal{L}_{\bar{\xi}_{-1}}^{\bar{n}} \left[ \frac{e^{-i(\mu+2)t}}{(1+r^{2})^{(\mu +2)/2}} \xi _{-1}^{\mu} \right] \\ \\
f^{\mu}_{r,n,\bar{n}} &= \mathcal{L}_{\xi _{-1}}^{n} \mathcal{L}_{\bar{\xi}_{-1}}^{\bar{n}} \left[ \frac{e^{-i(\mu+2)t}}{(1+r^{2})^{(\mu +2)/2}} \bar{\xi} _{1}^{\mu} \right] + 2i\bar{n} \mathcal{L}^{n}_{\xi _{-1}} \mathcal{L}_{\bar{\xi}_{-1}}^{\bar{n}-1} \left[ \frac{e^{-i(\mu+2)t}}{(1+r^{2})^{(\mu +2)/2}} \bar{\xi} _{-1}^{\mu} \right] \\
&\quad - \bar{n}(\bar{n}-1) \mathcal{L}_{\xi _{-1}}^{n} \mathcal{L}_{\bar{\xi}_{-1}}^{\bar{n}-2} \left[ \frac{e^{-i(\mu+2)t}}{(1+r^{2})^{(\mu +2)/2}} \bar{\xi} _{-1}^{\mu} \right]
\end{align}
$$

其中：

$$
\mathcal{L}_{\xi _{-1}}^{n} \mathcal{L}_{\bar{\xi}_{-1}}^{\bar{n}} \left[ \frac{e^{-i(\mu+2)t}}{(1+r^{2})^{(\mu +2)/2}} \right] = C_{n,\bar{n}} e^{-i(\mu+2+n+\bar{n})t} e^{i(n-\bar{n})\phi} r^{n-\bar{n}} (1+r^{2})^{-(\mu+2+n-\bar{n})/2} P_{\bar{n}}^{(\mu+1,n-\bar{n})} \left( \frac{r^{2}-1}{r^{2}+1} \right)
$$

这里 $P^{(a,b)}_{n}(x)$ 是雅可比多项式。