
$$\tag{0.1}
\begin{align}
S & =\int _{M}\mathrm{d}^{4}x\left(-\frac{1}{4}F_{\mu \nu}F^{\mu \nu}-\frac{1}{2}m^{2}A_{\mu}A^{\mu}\right)
\end{align}
$$
---

introduce

$$\tag{1.2}
\begin{align}
Z[J_{\mu}] & =\int \mathcal{D}A_{\mu} \exp\left(i \int \mathrm{d}^{4}x\left(-\frac{1}{4}F_{\mu \nu}F^{\mu \nu}-\frac{1}{2}m^{2}A_{\mu}A^{\mu}+J_{\mu}A^{\mu}\right)\right) \\
 & =\int \mathcal{D}A_{\mu}\exp\left(i \int \mathrm{d}^{4}x\left(-\frac{1}{2}A_{\mu}\left(\partial ^{\mu}\partial ^{\nu}-\eta ^{\mu \nu}\partial ^{2}+\eta ^{\mu \nu}m^{2}\right)A_{\nu}+J_{\mu}A^{\mu}\right)\right) \\
 & =\exp\left(-\frac{1}{2}\int \mathrm{d}^{4}x\mathrm{d}^{4}x'J^{\mu}(x)(D^{-1})_{\mu \nu}(x,x')J^{\nu}(x')\right)
\end{align}
$$

where $\displaystyle{D^{\mu \nu}=\partial ^{\mu}\partial ^{\nu}-\eta ^{\mu \nu}\partial ^{2}-\eta ^{\mu \nu}m^{2}}$, and $\displaystyle{(D^{-1})^{\mu \nu}}$ satisfies

$$\tag{1.3}
\begin{align}
iD^{\mu \nu}(x)(D^{-1})_{\nu \rho}(x,x') & =\delta ^{\mu}_{\rho}\delta ^{4}(x-x') \\
(D^{-1})_{\mu \nu}(x,x') & =\int \frac{\mathrm{d}^{4}k}{(2\pi)^{4}} \frac{i}{k^{2}+m^{2}-i\varepsilon}e^{-ik\cdot (x-x')}\left( \eta _{\mu \nu}+\frac{k _{\mu}k _{\nu}}{m^{2}} \right)
\end{align}
$$

then we have the correlation function

$$\tag{1.4}
\begin{align}
\braket{ A_{\mu}(x)A_{\nu}(x') }  & = \frac{\braket{ 0|\mathcal{T}A_{\mu}(x)A_{\nu}(x')|0 }}{\braket{ 0|0 } } \\
 & = \frac{\delta ^{2}Z[J]}{i^{2}\delta J^{\mu}(x)\delta J^{\nu}(x')}\Big|_{J=0} \\
 & =  (D^{-1})_{\mu \nu}(x,x')
\end{align}
$$

---

$$\tag{2.1}
\begin{align}
S & =\int \mathrm{d}^{4}x\left(-\frac{1}{4}F_{\mu \nu}F^{\mu \nu}-\frac{1}{2}m^{2}A_{\mu}A^{\mu}\right) \\
  & =\int \mathrm{d}^{4}x\left(-\frac{1}{4}(\partial _{i}A^{j}-\partial _{j}A^{i})(\partial _{i}A^{j}-\partial _{j}A^{i})+\frac{1}{2}(\partial _{0}A^{i}+\partial _{i}A^{0})^{2}+\frac{1}{2}m^{2}(A^{0})^{2}-\frac{1}{2}m^{2}(A^{i})^{2}\right)
\end{align}
$$

the equation of motion for $\displaystyle{A_{0}}$ is then

$$\tag{2.2}
\begin{align}
\partial _{i}^{2}A^{0}-m^{2}A^{0}=-\partial _{i}\partial _{0}A^{i}
\end{align}
$$

to solve this equation, we introduce Green function

$$\tag{2.3}
\begin{align}
(\vec{\nabla} _{x}^{2}-m^{2})G(\vec{x},\vec{x}') & =\delta ^{3}(\vec{x}-\vec{x}') \\
\implies G(\vec{x},\vec{x}') & = -\int \frac{\mathrm{d}^{3}\vec{k}}{(2\pi)^{3}} \frac{e^{i\vec{k}\cdot(\vec{x}-\vec{y})}}{\vec{k}^{2}+m^{2}} \\
 & =- \frac{1}{4\pi} \frac{e^{-im|\vec{x}-\vec{x}'|}}{|\vec{x}-\vec{x}'|} \\
\implies A^{0}(x) & =-\int \mathrm{d}^{3}\vec{y} G(\vec{x},\vec{y})\partial _{i}\partial _{0}A^{i}(y)
\end{align}
$$

then the effective Lagrangian becomes

$$\tag{2.4}
\begin{align}
S & =\int \mathrm{d}^{4}x\left(-\frac{1}{4}F_{\mu \nu}F^{\mu \nu}-\frac{1}{2}m^{2}A_{\mu}A^{\mu}\right) \\
 & =\int \mathrm{d}^{4}x\left(-\frac{1}{4}(\partial _{i}A^{j}-\partial _{j}A^{i})(\partial _{i}A^{j}-\partial _{j}A^{i})+\frac{1}{2}(\partial _{0}A^{i}+\partial _{i}A^{0})^{2}+\frac{1}{2}m^{2}(A^{0})^{2}-\frac{1}{2}m^{2}(A^{i})^{2}\right) \\
 & =\int \mathrm{d}^{4}x\left(-\frac{1}{4}(\partial _{i}A^{j}-\partial _{j}A^{i})^{2}+\frac{1}{2}\left( \partial _{0}A^{i}-\int \mathrm{d}^{3}\vec{y} \partial _{i}G(\vec{x},\vec{y})\partial _{i}\partial _{0}A^{i}(y)\right)^{2}+\frac{1}{2}m^{2}\left( \int \mathrm{d}^{3}\vec{y}G(\vec{x},\vec{y})\partial _{i}\partial _{0}A^{i}(y) \right)^{2}-\frac{1}{2}m^{2}(A^{i})^{2}\right) \\
 & =\int \mathrm{d}^{4}x\left(-\frac{1}{4}(\partial _{i}A^{j}-\partial _{j}A^{i})^{2}+\frac{1}{2}\partial _{0}A^{i}\partial _{0}A^{i}+\partial _{0}A^{i}\int \mathrm{d}^{3}\vec{y} \partial _{i}G(\vec{x},\vec{y})\partial _{j}\partial _{0}A^{j}+\frac{1}{2}\int \mathrm{d}^{3}\vec{y}\partial _{i}G(\vec{x},\vec{y})\partial _{j}\partial _{0}A^{j}(y)\int \mathrm{d}^{3}\vec{z}\partial _{i}G(\vec{x},\vec{z})\partial _{k}\partial _{0}A^{k}(z)\right. \\
 & \left. +\frac{1}{2}m^{2}\int \mathrm{d}^{3}\vec{y}G(\vec{x},\vec{y})\partial _{j}\partial _{0}A^{j}(y)\int \mathrm{d}^{3}\vec{z}G(\vec{x},\vec{z})\partial _{k}\partial _{0}A^{k}(z)-\frac{1}{2}m^{2}(A^{i})^{2} \right) \\
 & =\int \mathrm{d}^{4}x\mathcal{L}_{\mathrm{eff}}[A^{i}]
\end{align}
$$

consider

$$\tag{2.5}
\begin{align}
\braket{ A_{0}(x)A_{i}(x') }  & = \frac{\displaystyle{\int \mathcal{D}A^{i}\mathcal{D}A^{0}A_{0}(x)A_{i}(x')\exp\left(i \int \mathrm{d}^{4}x\left(-\frac{1}{4}F_{\mu \nu}F^{\mu \nu}-\frac{1}{2}m^{2}A_{\mu}A^{\mu}\right)\right) }}{\displaystyle{\int \mathcal{D}A^{\mu}\exp\left(i \int \mathrm{d}^{4}x\left(-\frac{1}{4}F_{\mu \nu}F^{\mu \nu}-\frac{1}{2}m^{2}A_{\mu}A^{\mu}\right)\right)}} \\
 & =\frac{\displaystyle{\int \mathcal{D}A^{i}\left(\int \mathrm{d}^{3}\vec{y}G(\vec{x},\vec{y})\partial _{j}\partial _{0}A^{j}(y)A_{i}(x')\right)\exp\left(i \int \mathrm{d}^{4}x\mathcal{L}_{\mathrm{eff}}[A^{i}]\right)}}{\displaystyle{\int \mathcal{D}A^{i}\exp\left(i \int \mathrm{d}^{4}x\mathcal{L}_{\mathrm{eff}}[A^{i}]\right)}} \\
 & =\int \mathrm{d}^{3}\vec{y}G(\vec{x},\vec{y})\partial _{y,j}\partial _{y,0}\braket{ A^{j}(y)A_{i}(x') }  \\
 & =\int \mathrm{d}^{3}\vec{y}G(\vec{x},\vec{y})\partial _{y,j}\partial _{y,0}\braket{ 0|\mathcal{T}A^{j}(y)A_{i}(x')|0 }  \\
 & = \braket{ 0|\mathcal{T}\left(\int \mathrm{d}^{3}\vec{y}G(\vec{x},\vec{y})\partial _{y,j}\partial _{y,0}A^{j}(y)\right)A_{i}(x')|0 } \\
 & = \braket{ 0|\mathcal{T}A_{0}(x)A_{i}(x')|0 } 
\end{align}
$$

where $\displaystyle{\mathcal{L}_{\mathrm{eff}}[A^{i}]}$ is given in (1.4). similarly, we have

$$\tag{2.6}
\begin{align}
\braket{ A_{0}(x)A_{0}(x') }  & =\frac{\displaystyle{\int \mathcal{D}A^{0}\mathcal{D}A^{i}A_{0}(x)A_{0}(x')\exp\left(i \int \mathrm{d}^{4}x\left(-\frac{1}{4}F_{\mu \nu}F^{\mu \nu}-\frac{1}{2}m^{2}A_{\mu}A^{\mu}\right)\right)}}{\displaystyle{\int\mathcal{D}A^{0}\mathcal{D}A^{i}\exp\left(i \int \mathrm{d}^{4}x\left(-\frac{1}{4}F_{\mu \nu}F^{\mu \nu}-\frac{1}{2}m^{2}A_{\mu}A^{\mu}\right)\right)}} \\
 & =\frac{\displaystyle{\int \mathcal{D}A^{0}\mathcal{D}A^{i}A_{0}(x)A_{0}(x')\exp\left(i \int \mathrm{d}^{4}x\mathcal{L}_{\mathrm{eff}}[A^{i}]\right)\exp\left(-\frac{i}{2}\int \mathrm{d}^{4}xA^{0}_{q}(\vec{\nabla} ^{2}-m^{2})A^{0}_{q}\right)}}{\displaystyle{\int \mathcal{D}A^{0}\mathcal{D}A^{i}\exp\left(i \int \mathrm{d}^{4}x\mathcal{L}_{\mathrm{eff}}[A^{i}]\right)\exp\left(-\frac{i}{2}\int \mathrm{d}^{4}xA^{0}_{q}(\vec{\nabla}^{2}-m^{2})A^{0}_{q}\right)}} \\
 & =\frac{\displaystyle{\int \mathcal{D}A^{i}\left(\int \mathrm{d}^{3}\vec{y}G(\vec{x},\vec{y})\partial _{y,j}\partial _{y,0}A^{j}(y)\int \mathrm{d}^{3}\vec{z}G(\vec{x}',\vec{z})\partial _{z,k}\partial _{z,0}A^{k}(z)+\delta(x_{0}-x_{0}')\int \frac{\mathrm{d}^{3}\vec{k}}{(2\pi)^{3}} \frac{i}{\vec{k}^{2}+m^{2}}e^{i\vec{k}\cdot(\vec{x}-\vec{x}')}\right)\exp\left(i \int \mathrm{d}^{4}x\mathcal{L}_{\mathrm{eff}}[A^{i}]\right)}}{\displaystyle{\int \mathcal{D}A^{i}}\exp\left(i \int \mathrm{d}^{4}x\mathcal{L}_{\mathrm{eff}}[A^{i}]\right)} \\
 & =\int \mathrm{d}^{3}\vec{y}G(\vec{x},\vec{y})\partial _{y,j}\partial _{y,0}\int \mathrm{d}^{3}\vec{z}G(\vec{x}',\vec{z})\partial _{z,k}\partial _{z,0}\braket{ A^{j}(y)A^{k}(z) }-i\delta(x_{0}-x_{0}')G(\vec{x},\vec{x}')  \\
 & =\int \mathrm{d}^{3}\vec{y}G(\vec{x},\vec{y})\partial _{y,j}\partial _{y,0}\int \mathrm{d}^{3}\vec{z}G(\vec{x}',\vec{z})\partial _{z,k}\partial _{z,0}\braket{0|\mathcal{T} A^{j}(y)A^{k}(z)|0 }-i\delta(x_{0}-x_{0}')G(\vec{x},\vec{x}')
\end{align}
$$

where the first term is

$$\tag{2.6'}
\begin{align}
 & \int \mathrm{d}^{3}\vec{y}G(\vec{x},\vec{y})\partial _{y,j}\partial _{y,0}\int \mathrm{d}^{3}\vec{z}G(\vec{x}',\vec{z})\partial _{z,k}\partial _{z,0} \braket{ 0|\mathcal{T}A^{j}(y)A^{k}(z)|0 }  \\
 & =\int \mathrm{d}^{3}\vec{y}G(\vec{x},\vec{y})\partial _{y,j}\partial _{y,0} \braket{ 0|\mathcal{T}A^{j}(y)A_{0}(x')|0 }  \\
 & = \braket{ 0|\mathcal{T}A_{0}(x)A_{0}(x') } +\delta(x_{0}-x_{0}')\int \mathrm{d}^{3}\vec{y}G(\vec{x},\vec{y})\partial _{y,j}\braket{ 0|[A^{j}(y),A_{0}(x')]|0 }  \\
 & = \braket{ 0|\mathcal{T}A_{0}(x)A_{0}(x') } +\delta(x_{0}-x_{0}')\int \mathrm{d}^{3}\vec{y}G(\vec{x},\vec{y})\left(\frac{i}{m^{2}}\vec{\nabla}^{2} _{y}\delta ^{3}(\vec{y}-\vec{x}')\right) \\
 & = \braket{ 0|\mathcal{T}A_{0}(x)A_{0}(x') } +\frac{i}{m^{2}}\delta(x_{0}-x_{0}')\int \mathrm{d}^{3}\vec{y}\vec{\nabla}^{2}_{y}G(\vec{x},\vec{y})\delta ^{3}(\vec{y}-\vec{x}') \\
 & = \braket{ 0|\mathcal{T}A_{0}(x)A_{0}(x') } +\frac{i}{m^{2}}\delta(x_{0}-x_{0}')\int \mathrm{d}^{3}\vec{y}\left(m^{2}G(\vec{x},\vec{y})+\delta ^{3}(\vec{x}-\vec{y})\right)\delta ^{3}(\vec{y}-\vec{x}') \\
 & = \braket{ 0|\mathcal{T}A_{0}(x)A_{0}(x') } +i\delta(x_{0}-x_{0}')G(\vec{x},\vec{x}')+\frac{i}{m^{2}}\delta ^{4}(x-x')
\end{align}
$$

then we have

$$\tag{2.7}
\begin{align}
\braket{ A_{0}(x)A_{0}(y) }  & = \braket{ 0|\mathcal{T}A_{0}(x)A_{0}(x') } +\frac{i}{m^{2}}\delta ^{4}(x-x')
\end{align}
$$

remember that $\displaystyle{y_{0}=x_{0},z_{0}=x_{0}'}$. 

---

$$\tag{3.1}
\begin{align}
S_{\mathrm{eff}} & =\int \mathrm{d}^{4}x\left(-\frac{1}{4}(\partial _{i}A^{j}-\partial _{j}A^{i})^{2}+\frac{1}{2}(\dot{A}^{i})^{2}+\dot{A}^{i}\int \mathrm{d}^{3}\vec{y} \partial _{i}G(\vec{x},\vec{y})\partial _{j}\dot{A}^{j}+\frac{1}{2}\int \mathrm{d}^{3}\vec{y}\partial _{i}G(\vec{x},\vec{y})\partial _{j}\dot{A}^{j}(y)\int \mathrm{d}^{3}\vec{z}\partial _{i}G(\vec{x},\vec{z})\partial _{k}\dot{A}^{k}(z)\right. \\
 & \left. +\frac{1}{2}m^{2}\int \mathrm{d}^{3}\vec{y}G(\vec{x},\vec{y})\partial _{j}\dot{A}^{j}(y)\int \mathrm{d}^{3}\vec{z}G(\vec{x},\vec{z})\partial _{k}\dot{A}^{k}(z)-\frac{1}{2}m^{2}(A^{i})^{2} \right) \\
\mathcal{L}_{\mathrm{eff}} & =-\frac{1}{4}(\partial _{i}A^{j}-\partial _{j}A^{i})^{2}+\frac{1}{2}(\dot{A}^{i})^{2}+\dot{A}^{i}\int \mathrm{d}^{3}\vec{y}\partial _{x,i}G(\vec{x},\vec{y})\partial _{y,j}\dot{A}^{j}(y)+\frac{1}{2}\int \mathrm{d}^{3}\vec{y}\partial _{x,i}G(\vec{x},\vec{y})\partial _{y,j}\dot{A}^{j}(y)\int \mathrm{d}^{3}\vec{z}\partial _{x,i}G(\vec{x},\vec{z})\partial _{z,k}\dot{A}^{k}(z) \\
 & +\frac{1}{2}m^{2}\int \mathrm{d}^{3}\vec{y}G(\vec{x},\vec{y})\partial _{y,j}\dot{A}^{j}(y)\int \mathrm{d}^{3}\vec{z}G(\vec{x},\vec{z})\partial _{z,k}\dot{A}^{k}(z)-\frac{1}{2}m^{2}(A^{i})^{2}
\end{align}
$$

first, we have the functional derivative

$$\tag{3.2}
\begin{align}
\frac{\delta A^{0}(x)}{\delta \dot{A}^{i}(y)} & =-\delta(x_{0}-y_{0})\partial _{x,i}G(\vec{x},\vec{y})
\end{align}
$$

then we have canonical momentum

$$\tag{3.3}
\begin{align}
\pi _{i}(x) & =\frac{\delta S_{\mathrm{eff}}}{\delta \dot{A}^{i}(x)} =\int \mathrm{d}^{4}x'\left(\frac{\delta L(x')}{\delta \dot{A}^{i}(x)}+\int \mathrm{d}^{4}x''\frac{\delta L(x')}{\delta A^{0}(x'')} \frac{\delta A^{0}(x'')}{\delta \dot{A}^{i}(x)}\right){\Big|}_{\tiny\displaystyle{A^{0}(x)=-\int \mathrm{d}^{3}\vec{y}G(\vec{x},\vec{y})\partial _{i}\dot{A}^{i}(y)}} \\
 & =\dot{A}_{i}(x)-\int \mathrm{d}^{3}\vec{y}\partial _{x,i}G(\vec{x},\vec{y})\partial _{y,j}\dot{A}^{j}(y) \\
\implies \dot{A}^{i} & =\dot{A}^{i}[\pi _{i}]
\end{align}
$$

then the effective Hamiltonian is

$$\tag{3.3}
\begin{align}
H & =\int \mathrm{d}^{3}x(\pi _{i}\dot{A}^{i}[\pi _{i}]-L_{\mathrm{eff}}[A^{i},\dot{A}^{i}[\pi _{i}]])
\end{align}
$$

after a similar procedure as [[Articles/quantization/path integral quantization for constrained system]],

$$\tag{3.4}
\begin{align}
 & \braket{ A^{i}_{t_{f}}|e^{-iH(t_{f}-t_{i})e^{-i\alpha}}|A^{j}_{t_{i}} } \\
= & \mathcal{N}\braket{ A^{i}_{t_{f}}|e^{-iH\Delta te^{-i\alpha}}\dots e^{-iH\Delta te^{-i\alpha}}|A^{j}_{t_{i}} } \\
= & \mathcal{N}\int \prod ^{n-1}_{a=1}DA^{i_{a}}_{a}\braket{A^{i}_{t_{f}}|e^{-iH\Delta te^{-i\alpha}}|A^{i_{n-1}}_{n-1} }\braket{ A^{i_{n-1}}_{n-1}|e^{-iH\Delta te^{-i\alpha}}|A^{i_{n-2}}_{n-2} }\dots\braket{ A^{i_{1}}_{1}|e^{-iH\Delta te^{-i\alpha}}|A^{j}_{t_{i}} } \\
= & \mathcal{N}\int \prod ^{n-1}_{a=1}DA^{i_{a}}_{a}\prod ^{n}_{b=1}D\pi ^{b}_{j_{b}}\braket{ A^{i}_{t_{f}}|e^{-iH\Delta te^{-i\alpha}}|\pi ^{n}_{j_{n}} } \braket{ \pi ^{n}_{j_{n}}|A^{i_{n-1}}_{n-1} }\dots\braket{ A^{i_{1}}_{1}|e^{-iH\Delta te^{-i\alpha}}|\pi ^{1}_{j_{1}}}\braket{ \pi ^{1}_{j_{1}}|A^{j}_{t_{i}} }  \\
= & \mathcal{N}\int \prod ^{n-1}_{a=1}DA^{i_{a}}_{a}\prod ^{n}_{b=1}D\pi ^{b}_{j_{b}}\exp\left( i\Delta te^{-i\alpha}\int \mathrm{d}^{3}x\sum ^{n}_{k=1}\pi ^{k}_{j_{k}}(\delta ^{j_{k}}_{i_{k}}A^{i_{k}}_{k}-\delta ^{j_{k}}_{i_{k-1}}A^{i_{k-1}}_{k-1})-i\Delta te^{-i\alpha}\sum ^{n}_{k=1}\int \mathrm{d}^{3}x(\pi _{i_{k}}^{k}\dot{A}^{i_{k}}_{k}[\pi _{i}]-\mathcal{L}_{\mathrm{eff}}[A^{i_{k}},\dot{A}^{i_{k}}[\pi _{i}]])\right)? \\
= & \mathcal{N}\int \prod ^{n-1}_{a=1}DA^{i_{a}}_{a}\exp\left(i\Delta te^{i\alpha}\sum ^{n}_{k=1}\int \mathrm{d}^{3}x\left( \mathcal{L}_{\mathrm{eff}}\left[ A^{i_{k}}_{k}, \frac{A^{j_{k}}_{k}-A^{j_{k}}_{k-1}}{\Delta te^{-i\alpha}} \right] \right)\right) \\
= & \mathcal{N}\int \prod ^{n-1}_{a=1}DA^{i_{a}}_{a}\prod ^{n}_{b=1}DA^{0}_{b}\exp\left(i\Delta t\sum ^{n}_{k=1}\int \mathrm{d}^{3}x\left(-\frac{1}{4}(\partial _{i}A^{j_{k}}_{k}-\partial _{j}A^{i_{k}}_{k})^{2}e^{-i\alpha}+\frac{1}{2} \left( \frac{A^{j_{k}}_{k}-A^{j_{k}}_{k-1}}{\Delta t} \right)^{2}e^{i\alpha}+\frac{A^{j_{k}}_{k}-A^{j_{k}}_{k-1}}{\Delta t}\partial _{j_{k}}A^{0}_{k}e^{i(\alpha+\beta)/2}\right)\right. \\
 & \left.+\frac{1}{2}(\partial _{i}A^{0}_{k})^{2}e^{i\beta}+\frac{1}{2}m^{2}(A^{0}_{k})e^{i\beta}-\frac{1}{2}m^{2}(A^{i_{k}}_{k})^{2}e^{-i\alpha}\right) \\
= & \mathcal{N}\int \mathcal{D}A_{\mu}\exp\left(i \int \mathrm{d}^{4}x\left(-\frac{1}{4}(\partial _{i}A^{j}-\partial _{j}A^{i})^{2}e^{-i\alpha}+\frac{1}{2}(\dot{A}^{i})^{2}e^{i\alpha}+\dot{A}^{i}\partial _{i}A^{0}e^{i(\alpha+\beta)/2}+\frac{1}{2}(\partial _{i}A^{0})^{2}e^{i\beta}+\frac{1}{2}m^{2}(A^{0})^{2}e^{i\beta}-\frac{1}{2}m^{2}(A^{i})^{2}e^{-i\alpha}\right)\right)
\end{align}
$$

we have the Wick-rotated Lagrangian



$$\tag{3.4}
\begin{align}
L & =-\frac{1}{2}A^{\mu}D_{\mu \nu}A^{\nu} \\
(D_{\mu \nu}) & =\begin{pmatrix}
e^{i\beta}(\vec{\nabla}^{2}-m^{2}) & e^{i(\alpha+\beta)/2}\partial _{0}\partial _{i} \\
e^{i(\alpha+\beta)/2}\partial _{0}\partial _{i} & e^{-i\alpha}\partial _{i}\partial _{j}+\delta _{ij}(-e^{-i\alpha}\vec{\nabla}^{2}+e^{i\alpha}\partial _{0}^{2}+e^{-i\alpha}m^{2})
\end{pmatrix}
\end{align}
$$

consider the generating functional

$$\tag{3.5}
\begin{align}
Z[J_{\mu}] & =\int \mathcal{D}A_{\mu}\exp\left(\int \mathrm{d}^{4}x\left(-\frac{i}{2}A^{\mu}D_{\mu \nu}A^{\nu}+iJ_{\mu}A^{\mu}\right)\right) \\
 & =\exp\left(-\frac{1}{2}\int \mathrm{d}^{4}x\mathrm{d}^{4}x'J_{\mu}(x)(D^{-1})^{\mu \nu}(x,x')J_{\nu}(x')\right)
\end{align}
$$

where $\displaystyle{(D^{-1})^{\mu \nu}}$ satisfies

$$\tag{3.6}
\begin{align}
iD_{\mu \nu}(D^{-1})^{\nu \rho}(x,x') & =\delta ^{\rho}_{\mu}\delta ^{4}(x-x') \\
\implies D^{-1}(x,x') & = \int \frac{\mathrm{d}^{4}k}{(2\pi)^{4}} \frac{i}{-e^{i\alpha}k_{0}^{2}+e^{-i\alpha}(\vec{k}^{2}+m^{2})}\begin{pmatrix}
e^{-i(3\alpha+\beta)}\left( -1+\frac{k_{0}^{2}}{m^{2}} \right) & e^{-i(3\alpha+\beta)/2} \frac{k_{0}k _{i}}{m^{2}} \\
e^{-i(3\alpha+\beta)/2} \frac{k_{0}k _{i}}{m^{2}} & \delta _{ij}+\frac{k _{i}k _{j}}{m^{2}}
\end{pmatrix}
\end{align}
$$

then we have

$$\tag{3.7}
\begin{align}
\braket{ A^{i}(x)A^{j}(x') } & =-\frac{\delta ^{2}\ln Z[J]}{\delta J_{i}(x)\delta J_{j}(x')} \Big|_{J=0} \\
 & =\int \frac{\mathrm{d}^{4}k}{(2\pi)^{4}} \frac{i}{-e^{i\alpha}k_{0}^{2}+e^{-i\alpha}(\vec{k}^{2}+m^{2})}\left(\delta _{ij}+\frac{k _{i}k _{j}}{m^{2}}\right) \\
\braket{ A^{i}(x)A^{0}(x') } & =-\frac{\left(\delta ^{2}\ln Z[J]\right)}{\delta J_{i}(x)\delta J_{0}(x')} \Big|_{J=0} \\
 & =\int \frac{\mathrm{d}^{4}k}{(2\pi)^{4}} \frac{i}{-e^{i\alpha}k_{0}^{2}+e^{-i\alpha}(\vec{k}^{2}+m^{2})} e^{-i(3\alpha+\beta)/2} \frac{k_{0}k _{i}}{m^{2}} \\
\braket{ A^{0}(x)A^{0}(x') } & =-\frac{\delta ^{2}\ln Z[J]}{\delta J_{0}(x)\delta J_{0}(x')}\Big|_{J=0} \\
 & =\int \frac{\mathrm{d}^{4}k}{(2\pi)^{4}} \frac{i}{-e^{i\alpha}k_{0}^{2}+e^{-i\alpha}(\vec{k}^{2}+m^{2})} e^{-i(3\alpha+\beta)}\left(-1+\frac{k_{0}^{2}}{m^{2}}\right)
\end{align}
$$

when $\displaystyle{\alpha,\beta\to0}$, we return the result in (1.4)

---

in this part we will calculate two-point correlation function in canonical formalism as a cross verification. after Wick rotation

$$\tag{4.1}
\begin{align}
A^{i}\to A^{i}e^{-i\alpha/2} \\
A^{0}\to A^{0}e^{i\beta/2} \\
t\to te^{-i\alpha}
\end{align}
$$

we got the action

$$\tag{4.2}
\begin{align}
S & =\int \mathrm{d}^{4}x\left(-\frac{1}{4}(\partial _{i}A^{j}-\partial _{j}A^{i})^{2}e^{-i\alpha}+\frac{1}{2}(\dot{A}^{i})^{2}e^{i\alpha}+\dot{A}^{i}\partial _{i}A^{0}e^{i(\alpha+\beta)/2}+\frac{1}{2}(A^{0})^{2}e^{i\beta}+\frac{1}{2}m^{2}(A^{0})^{2}e^{i\beta}-\frac{1}{2}m^{2}(A^{i})^{2}e^{-i\alpha}\right)
\end{align}
$$

make a variation

$$\tag{4.3}
\begin{align}
\delta S & =\int \mathrm{d}^{4}x\left(\left\{\left[e^{-i\alpha}(\delta _{ij}(\vec{\nabla}^{2}-m^{2})-\partial _{i}\partial _{j})-e^{i\alpha}\delta _{ij}\partial _{0}^{2}\right]A^{j}-e^{i(\alpha+\beta)/2}\partial _{i}\partial _{0}A^{0}\right\}\delta A^{i}\right. \\
 & -(e^{i\beta}(\partial _{i}^{2}-m^{2})A^{0}+e^{i(\alpha+\beta)/2}\partial _{i}\dot{A}^{i})\delta A^{0}) \\
 & +\int _{\Sigma _{f}-\Sigma _{i}} \mathrm{d}^{3}x\left(e^{i\alpha}\dot{A}^{i}+e^{i(\alpha+\beta)/2}\partial _{i}A^{0}\right)\delta A^{i}
\end{align}
$$

we have the following equation of motion

$$\tag{4.4}
\begin{align}
E_{i} & =(e^{-i\alpha}(\delta _{ij}(\vec{\nabla}^{2}-m^{2})-\partial _{i}\partial _{j})-e^{i\alpha}\delta _{ij}\partial ^{2}_{0})A^{j}-e^{i(\alpha+\beta)/2}\partial _{i}\partial _{0}A^{0} \\
E_{0} & =-e^{i\beta}(\vec{\nabla}^{2}-m^{2})A^{0}-e^{i(\alpha+\beta)/2}\partial _{i}\dot{A}^{i}
\end{align}
$$

the solution space of the equation of motion can be expanded via

$$\tag{4.5}
\begin{align}
A_{\mu} & =\int \mathrm{d}^{3}\vec{k}\sum ^{3}_{s=1} e^{s}_{k\mu}(\sigma _{k}a_{ks}+\sigma ^{*}_{k}a^{\dagger}_{ks})
\end{align}
$$

where $\displaystyle{\sigma _{k}(x)=\frac{\exp\left(i\vec{k}\cdot \vec{x}-ik_{0}te^{-i\alpha}\right)}{(2\pi)^{3/2}\sqrt{ 2\omega _{k} }}}$ satisfies

$$\tag{4.6}
\begin{align}
\braket{ \sigma _{k},\sigma _{k'} }_{\mathrm{KG}} & =i e^{i\alpha}\int _{\Sigma}\mathrm{d}^{3}x\left(\sigma ^{*}_{k}\partial _{0}\sigma _{k'}-\sigma ^{*}_{k'}\partial _{0}\sigma _{k}\right) \\
 & =\delta ^{3}(\vec{k}-\vec{k}')
\end{align}
$$

and $\displaystyle{e^{s}_{k\mu}}$ satisfies $\displaystyle{e^{-i\alpha}k^{i}e^{s}_{ki}+e^{i(\alpha+\beta)/2}k^{0}e^{s}_{k0}=0}$ and

$$\tag{4.7}
\begin{align}
\sum ^{3}_{s=1}e^{s}_{k\mu}e^{s'}_{k\nu} & =\begin{pmatrix}
e^{-i(3\alpha+\beta)}\left( -1+\frac{k_{0}^{2}}{m^{2}} \right) & e^{-i(3\alpha+\beta)/2}k_{0}k _{i} \\
e^{-i(3\alpha+\beta)/2}k_{0}k _{i} & \delta _{ij}+k _{i}k _{j}
\end{pmatrix}
\end{align}
$$

then follows the same procedure, we have

$$\tag{4.8}
\begin{align}
\braket{ 0|\mathcal{T}A_{i}(x)A_{j}(y)|0 }  & =\left(\delta _{ij}-\frac{\partial ^{x}_{i}\partial ^{x}_{j}}{m^{2}}\right)\int \frac{\mathrm{d}^{4}k}{(2\pi)^{4}} \frac{i}{-e^{i\alpha}k_{0}^{2}+e^{-i\alpha}(\vec{k}^{2}+m^{2})}e^{ik\cdot(x-y)} \\
\braket{ 0|\mathcal{T}A_{i}(x)A_{0}(y)|0 }  & =-e^{-i(3\alpha+\beta)/2} \frac{\partial _{0}^{x}\partial _{i}^{x}}{m^{2}} \int \frac{\mathrm{d}^{4}k}{(2\pi)^{4}} \frac{i}{-e^{i\alpha}k_{0}^{2}+e^{-i\alpha}(\vec{k}^{2}+m^{2})}e^{ik\cdot(x-y)} \\
\braket{ 0|\mathcal{T}A_{0}(x)A_{0}(y)|0 }  & =e^{-i(3\alpha+\beta)}\left(-1-\frac{\partial _{0}^{x}\partial _{0}^{x}}{m^{2}}\right)\int \frac{\mathrm{d}^{4}k}{(2\pi)^{4}} \frac{i}{-e^{i\alpha}k_{0}^{2}+e^{-i\alpha}(\vec{k}^{2}+m^{2})}e^{ik\cdot(x-y)} \\
 & -e^{-i(3\alpha+\beta)} \frac{i}{m^{2}}\delta ^{4}(x-y)
\end{align}
$$

---

finally we will prove that ()


