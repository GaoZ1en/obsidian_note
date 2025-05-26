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


$$\tag{2.11}
\begin{align}
D_{\mu \nu} & =\begin{pmatrix}
\vec{\nabla}^{2} & \partial _{0}\partial _{i} \\
\partial _{0}\partial _{i} & \left( 1-\frac{1}{\xi} \right)\partial _{i}\partial _{j}-\delta _{ij}(\vec{\nabla}^{2}-\partial _{0}^{2})
\end{pmatrix} \\
iD_{\mu \nu}(D^{-1})^{\nu \rho}(x,y) & =\delta ^{\rho}_{\mu}\delta ^{4}(x-y) \\
\implies (D^{-1})^{\nu \rho}(x,y) & =i\int \frac{\mathrm{d}^{4}k}{(2\pi)^{4}} e^{ik\cdot(x-y)} \begin{pmatrix}
-\frac{1}{\vec{k}^{2}}\left( 1-\frac{k_{0}^{2}}{\vec{k}^{2}}\xi \right) & -\frac{\xi k_{0}k _{i}}{(\vec{k}^{2})^{2}} \\
-\frac{\xi k_{0}k _{i}}{(\vec{k}^{2})^{2}} & \frac{1}{k^{2}-i\varepsilon}\left(\delta _{ij}-\frac{k _{i}k _{j}}{\vec{k}^{2}}\left( 1-\frac{k^{2}\xi}{\vec{k}^{2}} \right)\right)
\end{pmatrix}
\end{align}
$$


$$\tag{.}
\begin{align}
-i  (D^{-1})^{\nu \rho}(k) & =\begin{pmatrix}
\vec{k}^{2} & k_{0}k _{i} \\
k_{0}k _{i} & \left( 1-\frac{1}{\xi} \right)k _{i}k _{j}-\delta _{ij}k^{2}
\end{pmatrix}^{-1}
\end{align}
$$
