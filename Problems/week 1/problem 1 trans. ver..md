使用最高权表示，求出在全局 $\mathrm{AdS}_{3}$ 中定义的、质量为 $m$ 的自由标量场的运动方程的所有解的显式形式（至多一个整体常数）。此处我们选择以下度规：

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

它们作用于标量场时满足：

$$
\begin{align}
(\mathcal{C} + \mathcal{\bar{C}}) \phi &= -\frac{1}{2} \nabla ^{2} \phi \\
(\mathcal{C} - \mathcal{\bar{C}}) \phi &= 0
\end{align}
$$

对于正频率模，我们可以定义最高权态 $\phi _{0,0}$，满足：

$$
\begin{align}
\mathcal{L}_{\xi _{1}} \phi _{0,0} &= 0 \\
\mathcal{L}_{\bar{\xi} _{1}} \phi _{0,0} &= 0
\end{align}
$$

其解为：

$$
\begin{align}
\phi _{0,0} &= e^{-i\Delta t} (1+r^{2})^{-\Delta/2} \\
\Delta &= 1 + \sqrt{1 + m^{2}}
\end{align}
$$

其他态可以通过作用降算子生成：

$$
\phi _{n,\bar{n}} = \mathcal{L}_{\xi _{-1}}^{n} \mathcal{L}_{\bar{\xi} _{-1}}^{\bar{n}} \phi _{0,0}
$$

通过归纳法，我们可以得到 $\phi _{n,\bar{n}}$ 的显式形式：

$$
\begin{align}
\phi _{n,\bar{n}} &= e^{-i\omega _{n\bar{n}}t} e^{i(n-\bar{n})\phi} r^{n-\bar{n}} (1+r^{2})^{-(\Delta+n-\bar{n})/2} P_{\bar{n}}^{(\Delta-1,n-\bar{n})} \left( \frac{r^{2}-1}{r^{2}+1} \right) \\
\omega _{n\bar{n}} &= \Delta + n + \bar{n}
\end{align}
$$

其中 $P^{(a,b)}_{n}(x)$ 是雅可比多项式。