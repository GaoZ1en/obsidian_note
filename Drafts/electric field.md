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



$$\tag{.}
\begin{align}
\left( 1-\frac{1}{\xi} \right)k _{i}k _{j}-\delta _{ij}k^{2}- \frac{k_{0}^{2}}{\vec{k}^{2}}k _{i}k _{j} \\
-k^{2}\left( \delta _{ij}-\frac{k _{i}k _{j}}{\vec{k}^{2}} \right)-\frac{1}{\xi}k _{i}k _{j} \\
-k^{2}\delta _{ij}+\left( \frac{k^{2}}{\vec{k}^{2}}-\frac{1}{\xi} \right)k _{i}k _{j}
\end{align}
$$

$$
\begin{align}
(A+uv^{T})^{-1} & =A^{-1}-\frac{A^{-1}uv^{T}A^{-1}}{1+v^{T}A^{-1}u}
\end{align}
$$

$$\tag{.}
\begin{align}
-\delta _{ij}+\frac{\left( \frac{1}{\xi}-\frac{k^{2}}{\vec{k}^{2}} \right)\frac{k _{i}k _{j}}{}}{\left( \frac{1}{\xi} \right) \frac{\vec{k}^{2}}{}} \\
-\frac{1}{k^{2}}\left( \delta _{ij}-\frac{k _{i}k _{j}}{\vec{k}^{2}}\left( 1-\xi\frac{k^{2}}{\vec{k}^{2}} \right) \right)
\end{align}
$$

i am right.



$$\tag{2.12}
\begin{align}
\braket{ A^{0}(x)A^{0}(y) } & = \frac{\displaystyle{\int \mathcal{D}A^{0}\mathcal{D}A^{i} A^{0}(x)A^{0}(y) \exp\left(i \int \mathrm{d}^{4}x\left(\frac{1}{2}(A^{i}+\partial _{i}A^{0})^{2}-\frac{1}{4}F_{ij}F^{ij}-\frac{1}{2\xi}(\partial _{i}A^{i})^{2}\right)\right)}}{\displaystyle{\int \mathcal{D}A^{0}\mathcal{D}A^{i}\exp\left(i \int \mathrm{d}^{4}x\left(\frac{1}{2}(\dot{A}^{i}+\partial _{i}A^{0})^{2}-\frac{1}{4}F_{ij}F^{ij}-\frac{1}{2\xi}(\partial _{i}A^{i})^{2}\right)\right)}} \\
 & =\frac{\displaystyle{\int \mathcal{D}A^{0}\mathcal{D}A^{i}A^{0}(x)A^{0}(y)\exp\left(i \int \mathrm{d}^{4}x\mathcal{L}_{\mathrm{eff}}[A^{i}]\right)\exp\left(-\frac{i}{2}\int \mathrm{d}^{4}xA^{0}_{q}\vec{\nabla}^{2}A^{0}_{q}\right)}}{\displaystyle{\int \mathcal{D}A^{0}\mathcal{D}A^{i}\exp\left(i \int \mathrm{d}^{4}x\mathcal{L}_{\mathrm{eff}}[A^{i}]\right)\exp\left(-\frac{i}{2}\int \mathrm{d}^{4}xA^{0}_{q}\vec{\nabla}^{2}A^{0}_{q}\right)}} \\
 & =\frac{\displaystyle{\int \mathcal{D}A^{i}(A^{0}_{\mathrm{cl}}(x)A^{0}_{\mathrm{cl}}(y)-i\delta(x_{0}-y_{0})G(\vec{x},\vec{y}))\exp\left(i \int \mathrm{d}^{4}x\mathcal{L}_{\mathrm{eff}}[A^{i}]\right)}}{\displaystyle{\int \mathcal{D}A^{i}\exp\left(i \int \mathrm{d}^{4}x\mathcal{L}_{\mathrm{eff}}[A^{i}]\right)}} \\
 & =\int \mathrm{d}^{3}\vec{z}G(\vec{x},\vec{z})\partial _{0,z}\partial _{i,z}\int \mathrm{d}^{3}\vec{w}G(\vec{y},\vec{w})\partial _{0,w}\partial _{j,w}\braket{ A^{i}(z)A^{j}(w) } -i\delta(x_{0}-y_{0})G(\vec{x},\vec{y})
\end{align}
$$

where

$$\tag{2.13}
\begin{align}
A^{0}_{\mathrm{cl}}(x) & =-\int \mathrm{d}^{3}\vec{y}G(\vec{x},\vec{y})\partial _{0}(\vec{\nabla}\cdot \vec{A})(y) \\
G(\vec{x},\vec{y}) & =-\frac{1}{4\pi |\vec{x}-\vec{y}|} \\
\mathcal{L}_{\mathrm{eff}}[A^{i}] & =\frac{1}{2}(\dot{A}^{i})^{2}-\dot{A}^{i}\int \mathrm{d}^{3}\vec{y}\partial _{i,x}G(\vec{x},\vec{y})\partial _{0}(\vec{\nabla}\cdot \vec{A})(y)+\frac{1}{2}\left( \int \mathrm{d}^{3}\vec{y}\partial _{i,x}G(\vec{x},\vec{y})\partial _{0}(\vec{\nabla}\cdot \vec{A})(y) \right)^{2}-\frac{1}{4}F_{ij}F^{ij}-\frac{1}{2\xi}(\partial _{i}A^{i})^{2}
\end{align}
$$

and the first term is

$$\tag{.}
\begin{align}
 & \int \mathrm{d}^{3}\vec{z}G(\vec{x},\vec{z})\partial _{0,z}\partial _{i,z}\int \mathrm{d}^{3}\vec{w}G(\vec{y},\vec{w})\partial _{0,w}\partial _{j,w}\braket{ A^{i}(z)A^{j}(w) } \\
 & =\int \mathrm{d}^{3}\vec{z}G(\vec{x},\vec{z})\partial _{0,z}\partial _{i,z}\int \mathrm{d}^{3}\vec{w}G(\vec{y},\vec{w})\partial _{0,w}\partial _{j,w}\braket{ 0|\mathcal{T}A^{i}(z)A^{j}(w)|0 } \\
 & =\int \mathrm{d}^{3}\vec{z}G(\vec{x},\vec{z})\partial _{0,z}\partial _{i,z}\braket{ 0|\mathcal{T}A^{i}(z)A^{0}(y)|0 }  \\
 & = \braket{ 0|\mathcal{T}A^{0}(x)A^{0}(y)|0 } +\delta(x_{0}-y_{0})\int \mathrm{d}^{3}\vec{z} G(\vec{x},\vec{z})\partial _{j,z}\braket{ 0|[A^{i}(z),A^{0}(y)]|0 } \\
 & = \braket{ 0|\mathcal{T}A^{0}(x)A^{0}(y)|0 } 
\end{align}
$$

so we have

$$\tag{.}
\begin{align}
\braket{ A^{0}(x)A^{0(y)} } & = \braket{ 0|\mathcal{T}A^{0}(x)A^{0}(y)|0 } -i\delta(x_{0}-y_{0})G(\vec{x},\vec{y})
\end{align}
$$

