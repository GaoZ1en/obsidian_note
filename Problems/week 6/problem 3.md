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

