三维反德西特时空（下简称$\displaystyle{\mathrm{AdS}_{3}}$）是最大对称的负常曲率时空，为带负宇宙学常数的爱因斯坦场方程的真空解。因J. Maldecena的开创性论文引入规范引力对偶（尤其是大$\displaystyle{N}$极限下$\displaystyle{\mathrm{AdS}_{5}\times S^{5}}$中type IIB超弦与$\displaystyle{\mathcal{N}=4}$超杨米尔斯理论的对偶），$\displaystyle{\mathrm{AdS}}$时空处于现代量子引力研究的中心地位。

在本题中我们考虑全局$\displaystyle{\mathrm{AdS}_{3}}$，采用坐标$\displaystyle{(t,r,\phi)}$，度规为

$$\begin{align}
\mathrm{d}s^{2} = -(1+r^{2})\mathrm{d}t^{2} + \frac{\mathrm{d}r^{2}}{1+r^{2}} + r^{2}\mathrm{d}\phi^{2}
\end{align}$$

全局$\displaystyle{\mathrm{AdS}_{3}}$的等度规群为$\displaystyle{\mathrm{SO}(2,2)\cong\mathrm{SL}(2,\mathbb{R})\times \mathrm{SL}(2,\mathbb{R})}$, 其李代数生成元（即Killing矢量）可以写为

$$\begin{align}
\xi _{1} &= \frac{1}{2} e^{i(t-\phi)} \left( \frac{r}{\sqrt{1+r^{2}}} \partial _{t} - i \sqrt{1+r^{2}} \partial _{r} - \frac{\sqrt{1+r^{2}}}{r} \partial _{\phi} \right) \\
\xi _{0} &= \frac{1}{2} (\partial _{t} - \partial _{\phi}) \\
\xi _{-1} &= \frac{1}{2} e^{-i(t-\phi)} \left( \frac{r}{\sqrt{1+r^{2}}} \partial _{t} + i \sqrt{1+r^{2}} \partial _{r} - \frac{\sqrt{1+r^{2}}}{r} \partial _{\phi} \right) \\
\bar{\xi}_{1} &= \frac{1}{2} e^{i(t+\phi)} \left( \frac{r}{\sqrt{1+r^{2}}} \partial _{t} - i \sqrt{1+r^{2}} \partial _{r} + \frac{\sqrt{1+r^{2}}}{r} \partial _{\phi} \right) \\
\bar{\xi}_{0} &= \frac{1}{2} (\partial _{t} + \partial _{\phi}) \\
\bar{\xi}_{-1} &= \frac{1}{2} e^{-i(t+\phi)} \left( \frac{r}{\sqrt{1+r^{2}}} \partial _{t} + i \sqrt{1+r^{2}} \partial _{r} + \frac{\sqrt{1+r^{2}}}{r} \partial _{\phi} \right)
\end{align}$$

满足$\mathfrak{sl}(2,\mathbb{R}) \times \mathfrak{sl}(2,\mathbb{R})$代数：

$$\begin{align}
[\xi _{0}, \xi _{1}] &= i \xi _{1} \\
[\xi _{0}, \xi _{-1}] &= -i \xi _{-1} \\
[\xi _{1}, \xi _{-1}] &= -2i \xi _{0} \\
[\bar{\xi} _{0}, \bar{\xi} _{1}] &= i \bar{\xi} _{1} \\
[\bar{\xi} _{0}, \bar{\xi} _{-1}] &= -i \bar{\xi} _{-1} \\
[\bar{\xi} _{1}, \bar{\xi} _{-1}] &= -2i \bar{\xi} _{0}
\end{align}$$

考虑质量为$\displaystyle{\mu}$的自由实标量场$\displaystyle{\phi(x)}$，其运动方程为

$$\begin{align}
\nabla ^{2}\phi-\mu ^{2}\phi & =0
\end{align}$$

在全局$\displaystyle{\mathrm{AdS}_{3}}$中，运动方程的正频解可组织为$\displaystyle{\mathfrak{sl}(2,\mathbb{R})\times \mathfrak{sl}(2,\mathbb{R})}$最高权表示的基函数。定义共形维度$\displaystyle{\Delta=1+\sqrt{ 1+\mu ^{2} }}$。

使用最高权表示， 求出运动方程$\displaystyle{\nabla ^{2}\phi-\mu ^{2}\phi=0}$所有正频解的显式形式$\displaystyle{\phi _{n,\bar{n}}}$（可以差一个整体常数$\displaystyle{C_{n,\bar{n}}}$），其中$\displaystyle{n,\bar{n}}$是表示的指标，对应频率记为$\displaystyle{\omega _{n,\bar{n}}}$，另记$\displaystyle{\mathrm{AdS}_{3}}$中标量场的共形维度为$\displaystyle{\Delta=1+\sqrt{ 1+\mu ^{2} }}$。可能用到雅可比多项式$\displaystyle{P_{n}^{(\alpha,\beta)}(x)}$，其定义为

$$\begin{align}
P_{n}^{(\alpha,\beta)}(x) & =\frac{(\alpha+1)_{n}}{n!}{}_{2}F_{1}\left( -n,1+\alpha+\beta+n;\alpha+1;\frac{1}{2}(1-z) \right)
\end{align}$$

其中$\displaystyle{(\alpha+1)_{n}}$是Pochhammer符号。

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
\Delta &= 1 + \sqrt{1 + \mu^{2}}
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
\omega _{n\bar{n}} &= \Delta + n + \bar{n} \\
\Delta & =1+\sqrt{ 1+\mu ^{2} }
\end{align}
$$

其中 $P^{(a,b)}_{n}(x)$ 是雅可比多项式。

