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
Z[J_{\mu}] & =\int \mathcal{D}A^{\mu}\exp\left(i \int \mathrm{d}^{4}x\left(-\frac{1}{4}F_{\mu \nu}F^{\mu \nu}-\frac{1}{2\xi}(\partial _{i}A^{i})^{2}+J_{\mu}A^{\mu}\right)\right) \\
 & =\int \mathcal{D}A^{\mu}\exp\left(i \int \mathrm{d}^{4}x\left(\frac{1}{2}(\dot{A}^{i}+\partial _{i}A^{0})^{2}-\frac{1}{2}A^{i}\left( \left( 1-\frac{1}{\xi} \right)\partial _{i}\partial _{j}-\delta _{ij}(\vec{\nabla}^{2}-\partial _{0}^{2}) \right)A^{j}+J_{\mu}A^{\mu}\right)\right) \\
 & =\int \mathcal{D}A^{\mu}\exp\left(i \int \mathrm{d}^{4}x \left( -\frac{1}{2}A^{\mu}D_{\mu \nu}A^{\nu} +J_{\mu}A^{\mu}\right)\right) \\
 & =\exp\left(-\frac{1}{2}\int \mathrm{d}^{4}x\mathrm{d}^{4}y J_{\mu}(x)(D^{-1})^{\mu \nu}(x,y)J_{\nu}(y)\right)
\end{align}
$$

where $\displaystyle{D_{\mu \nu}}$ and $\displaystyle{(D^{-1})^{\mu \nu}}$ satisfies

$$\tag{2.11}
\begin{align} \\
D_{\mu \nu} & =\begin{pmatrix}
\vec{\nabla}^{2} & \partial _{0}\partial _{i}  \\
\partial _{0}\partial _{i} & \left( 1-\frac{1}{\xi} \right)\partial _{i}\partial _{j}-\delta _{ij}(\vec{\nabla}^{2}-\partial _{0}^{2})
\end{pmatrix} \\ 
iD_{\mu \nu}(D^{-1})^{\nu \rho}(x,y) & =\delta ^{\rho}_{\mu} \delta ^{4}(x-y) \\
\implies (D^{-1})^{\mu \nu}(x,y) & =
\end{align}
$$

$$\tag{.}
\begin{align}
(D^{-1})^{\nu \rho}(k) & =i\begin{pmatrix}
\vec{k}^{2} & k_{0}k _{i} \\
k _{0}k _{i} & \left( 1-\frac{1}{\xi} \right)k _{i}k _{j}-\delta _{ij}(k_{0}^{2}-\vec{k}^{2})
\end{pmatrix}^{-1} \\
 & =\begin{pmatrix}

\end{pmatrix}
\end{align}
$$

$$\tag{.}
\begin{align}
\begin{pmatrix}
k_{1}^{2}-(k_{0}^{2}-\vec{k}^{2}) & k_{1}k_{2} & k_{1}k_{3}\\
k_{1}k_{2} & k_{2}^{2}-(k_{0}^{2}-\vec{k}^{2}) & k_{2}k_{3} \\
k_{1}k_{3} & k_{2}k_{3} & k_{3}^{2}-(k_{0}^{2}-\vec{k}^{2})
\end{pmatrix}-\frac{k_{0}^{2}}{\vec{k}^{2}}\begin{pmatrix}
k_{1}
\end{pmatrix} \\
 -k^{2}\left( \delta _{ij}-\frac{k _{i}k _{j}}{\vec{k}^{2}} \right)
\end{align}
$$

here we choose $\displaystyle{\xi=\infty}$, 