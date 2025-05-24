$$\tag{1.1}
\begin{align}
S & =\int \mathrm{d}^{4}x\left(-\frac{1}{4}F_{\mu \nu}F^{\mu \nu}\right)
\end{align}
$$

make a variation

$$\tag{1.2}
\begin{align}
\delta S & =\int \mathrm{d}^{4}xE_{\nu}\delta A^{\nu}+\theta|_{\Sigma _{f}-\Sigma _{i}} \\
E_{0} & =\vec{\nabla}^{2}A_{0}-\partial _{0}(\vec{\nabla}\cdot \vec{A}) \\
E_{i} & =\delta _{ij}(\vec{\nabla}^{2}-\partial _{0}^{2})A^{j}-\partial _{i}\partial _{j}A^{j} \\
\theta & =\int _{\Sigma}\mathrm{d}^{3}x\delta _{ij}\dot{A}^{i}\delta A^{j}
\end{align}
$$

if we impose temporal gauge $\displaystyle{A^{0}=0}$, the equation of motion for $\displaystyle{A^{0}}$ gives

$$\tag{1.3}
\begin{align}
-\partial _{0}(\vec{\nabla}\cdot \vec{A})=0\implies \vec{\nabla}\cdot \vec{A}=C(\vec{x})
\end{align}
$$

we need another gauge transformation to set $\displaystyle{\vec{\nabla}\cdot \vec{A}=0}$, and by time evolution we can verify that $\displaystyle{\vec{\nabla}\cdot \vec{A}=0}$ everywhere.

if we impose Column guage $\displaystyle{\vec{\nabla}\cdot \vec{A}=0}$, the equation of motion for $\displaystyle{A^{0}}$ gives

$$\tag{1.4}
\begin{align}
\vec{\nabla}^{2}A_{0}=0
\end{align}
$$

then by boundary condition $\displaystyle{A_{\mu}|_{\Gamma}=0}$, the only solution for $\displaystyle{A_{0}}$ is just $\displaystyle{A_{0}=0}$.


$$\tag{2.10}
\begin{align}
Z[J_{\mu}] & =\int \mathcal{D}A_{\mu}\exp\left(i \int \mathrm{d}^{4}x\left(-\frac{1}{4}F_{\mu \nu}F^{\mu \nu}-\frac{1}{2\xi}(\partial _{i}A^{i})^{2}+J_{\mu}A^{\mu}\right)\right) \\
 & =\int \mathcal{D}A_{\mu}\exp\left(i \int \mathrm{d}^{4}x\left(\frac{1}{2}(\dot{A}^{i}+\partial _{i}A^{0})^{2}-\frac{1}{2}A^{i}\left( \left( 1-\frac{1}{\xi} \right)\partial _{i}\partial _{j}-\delta _{ij}\vec{\nabla}^{2} \right)A^{j}+J_{\mu}A^{\mu}\right)\right) \\
 & =
\end{align}
$$

the equation of motion for 

$$\tag{.}
\begin{align}
\vec{\nabla}^{2}A^{0}=+J_{0}+\partial _{i}\dot{A}^{i} \\
\vec{\nabla}^{2}G(\vec{x},\vec{y}) & =i\delta ^{3}(\vec{x}-\vec{y}) \\
G(\vec{x},\vec{y}) & =-i\int \frac{\mathrm{d}^{3}\vec{k}}{\vec{k}^{2}}e^{-i\vec{k}\cdot(\vec{x}-\vec{y})} \\
 & =-i \int _{0}^{\infty}\int _{0}^{\pi}\int _{0}^{2\pi}\sin \theta \mathrm{d}k\mathrm{d}\theta \mathrm{d}\varphi \exp\left(-ik|\vec{x}-\vec{y}|\cos \theta\right) \\
 & =
\end{align}
$$