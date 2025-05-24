$$\tag{0.1}
\begin{align}
S & =-\frac{1}{4}\int _{M}\mathrm{d}^{4}xF_{\mu \nu}F^{\mu \nu}
\end{align}
$$

---
we first do canonical quantization. make a variation

$$\tag{1.1}
\begin{align}
\delta S & =\int \mathrm{d}^{4}xE_{\mu}\delta A^{\mu}+\theta|_{\Sigma _{f}-\Sigma _{i}} \\
E_{0} & =\vec{\nabla}^{2}A_{0}-\partial _{0}(\vec{\nabla}\cdot \vec{A}) \\
E_{i} & =\delta _{ij}(\vec{\nabla}^{2}-\partial _{0}^{2})A^{j}-\partial _{i}\partial _{j}A^{j} \\
\theta & =\int _{\Sigma}\mathrm{d}^{3}x\delta _{ij}\dot{A}^{i}\delta A^{j}
\end{align}
$$

impose temporal gauge $\displaystyle{A^{0}=0}$, the equation of motion for $\displaystyle{A^{0}}$ gives

$$\tag{1.2}
\begin{align}
-\partial _{0}(\vec{\nabla}\cdot \vec{A}) & =0\implies\vec{\nabla}\cdot \vec{A}=C(\vec{x}).
\end{align}
$$

we need another gauge transformation to make $\displaystyle{\vec{\nabla}\cdot \vec{A}=0}$ in a time slice. and by time evolution, we generally have 

$$\tag{1.3}
\begin{align}
\vec{\nabla}\cdot \vec{A} & =0
\end{align}
$$

if we impose Column gauge $\displaystyle{\vec{\nabla}\cdot \vec{A}=0}$, then the equation of motion for $\displaystyle{A^{0}}$ gives

$$\tag{1.4}
\begin{align}
\vec{\nabla}^{2}A^{0}=0
\end{align}
$$

by boundary condition $\displaystyle{A^{0}|_{\Gamma}=0}$, 

---
$$\tag{2.1}
\begin{align}
Z[J^{\mu}] & =\int \mathcal{D}A_{\mu}\exp\left(i \int \mathrm{d}^{4}x\left(-\frac{1}{4}F_{\mu \nu}F^{\mu \nu}-\frac{1}{2\xi}(\partial _{i}A^{i})^{2}+J^{\mu}A_{\mu} \right)\right)
\end{align}
$$


$$\tag{.}
\begin{align}
-\frac{1}{2}A^{\mu}(\partial _{\mu}\partial _{\nu}-\eta _{\mu \nu}\partial ^{2})A^{\nu}+\frac{1}{2\xi}A^{i}\partial _{i}\partial _{j}A^{j} & =-\frac{1}{2}A^{\mu}D_{\mu \nu}A^{\nu} \\
D_{\mu \nu} & =\begin{pmatrix}
\vec{\nabla}^{2} & \partial _{0}\partial _{i} \\
\partial _{0}\partial _{i} & \left( 1-\frac{1}{\xi} \right)\partial _{i}\partial _{j}-\delta _{ij}(\vec{\nabla}^{2}-\partial _{0}^{2})
\end{pmatrix} \\
-i\begin{pmatrix}
\vec{k}^{2} & k _{0}k _{i} \\
k_{0}k _{i} & \left( 1-\frac{1}{\xi} \right)\partial _{i}\partial _{j}-\delta _{ij}(\vec{\nabla}^{2}-\partial _{0}^{2})
\end{pmatrix}(D^{-1})^{\nu \rho}(x,y) & =\delta ^{\rho}_{\mu}\delta ^{4}(x-y)
\end{align}
$$
