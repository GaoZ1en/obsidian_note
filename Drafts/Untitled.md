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
(D^{-1})^{\nu \rho}(k) & =i\begin{pmatrix}
\vec{k}^{2} & k _{0}k _{i} \\
k_{0}k _{i} & \left( 1-\frac{1}{\xi} \right)k _{i}k _{j}-\delta _{ij}(\vec{k}^{2}-k_{0}^{2})
\end{pmatrix}^{-1}
\end{align}
$$

$$
M^{-1} = \begin{pmatrix}
A^{-1} + A^{-1} B S^{-1} C A^{-1} & -A^{-1} B S^{-1} \\
-S^{-1} C A^{-1} & S^{-1}
\end{pmatrix}
$$

$$\tag{.}
\begin{align}
S & =D-C A^{-1} B \\
\end{align}
$$

$$\tag{.}
\begin{align}
S & =\left( 1-\frac{1}{\xi} \right)k _{i}k _{j}-\delta _{ij}(\vec{k}^{2}-k_{0}^{2})-\frac{k_{0}^{2}}{\vec{k}^{2}}k _{i}k _{j} \\
 & =\left( \delta _{ij}-\frac{k _{i}k _{j}}{\vec{k}^{2}} \right)k^{2}-\frac{1}{\xi}k _{i}k _{j} \\
S^{-1} & =\frac{1}{k^{2}}\left(\delta _{ij}-\frac{k_{i}k _{j}}{\vec{k}^{2}}-k _{i}k _{j} \frac{k^{2}\xi}{(\vec{k}^{2})^{2}}\right) \\
-A^{-1}BS^{-1} & =-\frac{1}{\vec{k}^{2}}
\end{align}
$$


$$M = \begin{pmatrix}
\vec{k}^{2} & k _{0}k _{i} \\
k_{0}k _{i} & \left( 1-\frac{1}{\xi} \right)k _{i}k _{j}-\delta _{ij}(\vec{k}^{2}-k_{0}^{2})
\end{pmatrix}$$




$$\tag{3.5}
\begin{align}
\mathcal{L}_{\alpha,\beta} & =-\frac{1}{2}A^{\mu}D_{\mu \nu}A^{\nu} \\
(D_{\mu \nu}) & =\begin{pmatrix}
e^{i\beta}\vec{\nabla}^{2} & e^{i(\alpha+\beta)/2}\partial _{0}\partial _{i} \\
e^{i(\alpha+\beta)/2}\partial _{0}\partial _{i} & e^{-i\alpha}\partial _{i}\partial _{j}+\delta _{ij}(-e^{-i\alpha}\vec{\nabla}^{2}+e^{i\alpha}\partial _{0}^{2})
\end{pmatrix}
\end{align}
$$

where $\displaystyle{(D^{-1})^{\mu \nu}}$ satisfies

$$\tag{3.7}
\begin{align}
iD_{\mu \nu}(D^{-1})^{\nu \rho}(x,x') & =\delta ^{\rho}_{\mu}\delta ^{4}(x-x') \\
\implies D^{-1}(x,x') & = \int \frac{\mathrm{d}^{4}k}{(2\pi)^{4}} \frac{i}{-e^{i\alpha}k_{0}^{2}+e^{-i\alpha}(\vec{k}^{2}+m^{2})}\begin{pmatrix}
e^{-i\beta}\left( -e^{-i\alpha}+e^{i\alpha}\frac{k_{0}^{2}}{m^{2}} \right) & e^{i(\alpha-\beta)/2} \frac{k_{0}k _{i}}{m^{2}} \\
e^{i(\alpha-\beta)/2} \frac{k_{0}k _{i}}{m^{2}} & \delta _{ij}+\frac{k _{i}k _{j}}{m^{2}}
\end{pmatrix}
\end{align}
$$
