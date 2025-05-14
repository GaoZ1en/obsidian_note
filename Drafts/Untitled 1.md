$$\tag{.}
\begin{align}
\pi _{i}(x)=\dot{A}_{i}(x)-\int \mathrm{d}^{3}\vec{y}\partial _{x,i}G(\vec{x},\vec{y})\partial _{y,j}\dot{A}^{j}(y)
\end{align}
$$

$$\tag{.}
\begin{align}
G(\vec{x},\vec{y}) & =-\frac{1}{4\pi} \frac{e^{-im|\vec{x}-\vec{y}|}}{|\vec{x}-\vec{y}|} \\
G(\vec{k}) & =-\frac{1}{\vec{k}^{2}+m^{2}}
\end{align}
$$
$$\tag{.}
\begin{align}
\int \mathrm{d}^{3}\vec{x}e^{-i\vec{k}\cdot \vec{x}}\pi _{i}(x) & =\int \mathrm{d}^{3}\vec{x}e^{-i\vec{k}\cdot \vec{x}}\dot{A}_{i}(x)-\int \mathrm{d}^{3}\vec{x}e^{-i\vec{k}\cdot \vec{x}}\int \mathrm{d}^{3}\vec{y}\partial _{x,i}G(\vec{x},\vec{y})\partial _{y,j}\dot{A}^{j}(y) \\
 \pi _{i}(\vec{k}) & =\dot{A}_{i}(\vec{k})\left( \delta _{ij}-\frac{k _{i}k _{j}}{\vec{k}^{2}+m^{2}} \right) \\
\implies \dot{A}^{i}(\vec{k}) & =\left(\delta ^{ij}+\frac{k^{i}k^{j}}{m^{2}}\right)\pi _{j}(\vec{k}) \\
\dot{A}^{i}(x) & =\left(\delta ^{ij}-\frac{\partial ^{i}_{x}\partial ^{j}_{x}}{m^{2}}\right)\pi _{j}(x)
\end{align}
$$