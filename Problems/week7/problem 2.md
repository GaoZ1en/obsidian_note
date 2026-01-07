# 问题

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
考虑$\displaystyle{\mathrm{U}(1)}$规范场$\displaystyle{A^{\mu}(x)}$，其运动方程为
$$\begin{align}
\nabla _{\mu}F^{\mu \nu}=0
\end{align}$$
在全局$\displaystyle{\mathrm{AdS}_{3}}$中，运动方程的正频解可组织为$\displaystyle{\mathfrak{sl}(2,\mathbb{R})\times \mathfrak{sl}(2,\mathbb{R})}$最高权表示的基函数。


问题：
使用最高权表示， 求出运动方程$\displaystyle{\nabla _{\mu}F^{\mu \nu}=0}$所有正频解。只需给出对应的共形原初态$\displaystyle{\psi ^{\mu}_{(h,\bar{h})}}$的共形维度$\displaystyle{(h,\bar{h})}$及衍生态的构造即可，无需给出解的具体形式。这里取洛伦兹规范
$$\begin{align}
\nabla _{\mu}A^{\mu}=0
\end{align}$$
# 答案

我们有

- $\displaystyle{\psi _{(1,0)}^{\mu}}$，其共形维度为$\displaystyle{(h,\bar{h})=(1,0)}$，此时只有$\displaystyle{\mathcal{L}_{\xi _{-1}}^{n}\psi _{(1,0)}^{\mu}}$这一系列衍生态，$\displaystyle{n\in \mathbb{N}}$
- $\displaystyle{\psi _{(0,1)}^{\mu}}$，其共形维度为$\displaystyle{(h,\bar{h})=(0,1)}$，此时只有$\displaystyle{\mathcal{L}_{\xi _{-1}}^{\bar{n}}\psi _{(0,1)}^{\mu}}$这一系列衍生态，$\displaystyle{n\in \mathbb{N}}$
- $\displaystyle{\psi _{(1,1)}^{\mu}}$，其共形维度为$\displaystyle{(h,\bar{h})=(1,1)}$，此时有$\displaystyle{\mathcal{L}_{\xi _{-1}}^{n}\mathcal{L}_{\bar{\xi}_{-1}}^{\bar{n}}\psi _{(1,1)}^{\mu}}$这些衍生态，$\displaystyle{n,\bar{n}\in \mathbb{N}}$

# 解答

Casimir 算子可通过以下方式构造：

$$\begin{align}
\mathcal{C} &= \mathcal{L}_{\xi_{0}} \mathcal{L}_{\xi_{0}} - \mathcal{L}_{\xi _{-1}} \mathcal{L}_{\xi _{1}} + i \mathcal{L}_{\xi_{0}} \\
\mathcal{\bar{C}} &= \mathcal{L}_{\bar{\xi}_{0}} \mathcal{L}_{\bar{\xi}_{0}} - \mathcal{L}_{\bar{\xi}_{-1}} \mathcal{L}_{\bar{\xi} _{1}} + i \mathcal{L}_{\bar{\xi}_{0}}
\end{align}$$

它们作用于电磁场$\displaystyle{A^{\mu}}$时满足：

$$\begin{align}
\mathcal{C}A^{\mu} & =-\frac{1}{4}\nabla ^{2}A^{\mu}-\frac{1}{2}\varepsilon ^{\mu \nu}_{~~~~\rho}\nabla _{\nu}A^{\rho}-\frac{1}{2}A^{\mu} \\
\mathcal{\bar{C}}A^{\mu} & =-\frac{1}{4}\nabla ^{2}A^{\mu}+\frac{1}{2}\varepsilon ^{\mu \nu}_{~~~~\rho}\nabla _{\nu}A^{\rho}-\frac{1}{2}A^{\mu}
\end{align}$$

重新组合得到

$$\begin{align}
(\mathcal{C}+\mathcal{\bar{C}})A^{\mu} & =-\frac{1}{2}\nabla ^{2}A^{\mu}-A^{\mu} \\
 & =0 \\
(\mathcal{C}-\mathcal{\bar{C}})^{2}A^{\mu} & =\nabla ^{2}A^{\mu}-\nabla _{\nu}\nabla ^{\mu}A^{\nu} \\
 & =0
\end{align}$$

从而解出$\displaystyle{\mathcal{C}}$和$\displaystyle{\mathcal{\bar{C}}}$的本征值为

$$\begin{align}
\mathcal{C}A^{\mu} & =0 \\
\mathcal{\bar{C}}A^{\mu} & =0
\end{align}$$

对于共形原初态$\displaystyle{\ket{\psi}}$（对应波函数记为$\displaystyle{\psi ^{\mu}}$），设其共形维度为$\displaystyle{(h,\bar{h})}$，有

$$\begin{align}
C\ket{\psi} =h(h-1)\ket{\psi} =0 \\
\bar{C}\ket{\psi} =\bar{h}(\bar{h}-1)\ket{\psi} =0
\end{align}$$

解得$\displaystyle{(h,\bar{h})=(0,0),(1,0),(0,1),(1,1)}$. 每个超选择分支允许的衍生态将取决于$\displaystyle{h,\bar{h}}$是否为0

- $\displaystyle{(h,\bar{h})=(0,0)}$，此时没有衍生态，事实上这只是平凡的真空解$\displaystyle{\psi _{(0,0)}^{\mu}=0}$
- $\displaystyle{(h,\bar{h})=(1,0)}$，此时只有$\displaystyle{\mathcal{L}_{\xi _{-1}}^{n}\psi _{(1,0)}^{\mu}}$这一系列衍生态，$\displaystyle{n\in \mathbb{N}}$
- $\displaystyle{(h,\bar{h})=(0,1)}$，此时只有$\displaystyle{\mathcal{L}_{\xi _{-1}}^{\bar{n}}\psi _{(0,1)}^{\mu}}$这一系列衍生态，$\displaystyle{n\in \mathbb{N}}$
- $\displaystyle{(h,\bar{h})=(1,1)}$，此时有$\displaystyle{\mathcal{L}_{\xi _{-1}}^{n}\mathcal{L}_{\bar{\xi}_{-1}}^{\bar{n}}\psi _{(1,1)}^{\mu}}$这些衍生态，$\displaystyle{n,\bar{n}\in \mathbb{N}}$

