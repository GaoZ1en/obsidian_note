
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
L_{\mathrm{eff}} & =-\frac{1}{4}(\partial _{i}A^{j}-\partial _{j}A^{i})^{2}+\frac{1}{2}(\dot{A}^{i})^{2}+\dot{A}^{i}\int \mathrm{d}^{3}\vec{y}\partial _{x,i}G(\vec{x},\vec{y})\partial _{y,j}\dot{A}^{j}(y)+\frac{1}{2}\int \mathrm{d}^{3}\vec{y}\partial _{x,i}G(\vec{x},\vec{y})\partial _{y,j}\dot{A}^{j}(y)\int \mathrm{d}^{3}\vec{z}\partial _{x,i}G(\vec{x},\vec{z})\partial _{z,k}\dot{A}^{k}(z) \\
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
H & =\int \mathrm{d}^{4}x(\pi _{i}\dot{A}^{i}[\pi _{i}]-L_{\mathrm{eff}}[A^{i},\dot{A}^{i}[\pi _{i}]])
\end{align}
$$

after a similar procedure as [[Articles/quantization/path integral quantization for constrained system]], we have the Wick-rotated Lagrangian (I don't know how to write the derivation here)

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
e^{-i\beta}\left( -e^{-i\alpha}+e^{i\alpha}\frac{k_{0}^{2}}{m^{2}} \right) & e^{i(\alpha-\beta)/2} \frac{k_{0}k _{i}}{m^{2}} \\
e^{i(\alpha-\beta)/2} \frac{k_{0}k _{i}}{m^{2}} & \delta _{ij}+\frac{k _{i}k _{j}}{m^{2}}
\end{pmatrix}
\end{align}
$$

then we have

$$\tag{3.7}
\begin{align}
\braket{ A^{i}(x)A^{j}(x') } & =-\frac{\delta ^{2}\ln Z[J]}{\delta J_{i}(x)\delta J_{j}(x')} \Big|_{J=0} \\
 & =\int \frac{\mathrm{d}^{4}k}{(2\pi)^{4}} \frac{i}{-e^{i\alpha}k_{0}^{2}+e^{-i\alpha}(\vec{k}^{2}+m^{2})}\left(\delta _{ij}+\frac{k _{i}k _{j}}{m^{2}}\right) \\
\braket{ A^{i}(x)A^{0}(x') } & =-\frac{\left(\delta ^{2}\ln Z[J]\right)}{\delta J_{i}(x)\delta J_{0}(x')} \Big|_{J=0} \\
 & =\int \frac{\mathrm{d}^{4}k}{(2\pi)^{4}} \frac{i}{-e^{i\alpha}k_{0}^{2}+e^{-i\alpha}(\vec{k}^{2}+m^{2})} e^{i(\alpha-\beta)/2} \frac{k_{0}k _{i}}{m^{2}} \\
\braket{ A^{0}(x)A^{0}(x') } & =-\frac{\delta ^{2}\ln Z[J]}{\delta J_{0}(x)\delta J_{0}(x')}\Big|_{J=0} \\
 & =\int \frac{\mathrm{d}^{4}k}{(2\pi)^{4}} \frac{i}{-e^{i\alpha}k_{0}^{2}+e^{-i\alpha}(\vec{k}^{2}+m^{2})} e^{-i\beta}\left(-e^{-i\alpha}+e^{i\alpha} \frac{k_{0}^{2}}{m^{2}}\right)
\end{align}
$$

when $\displaystyle{\alpha,\beta\to0}$, we return the result in (1.4)

---

in this part we will calculate two-point correlation function in canonical formalism as a cross verification

$$\tag{4.1}
\begin{align}
S & =\int \mathrm{d}^{4}x\left(-\frac{1}{4}(\partial _{i}A^{j}-\partial _{j}A^{i})^{2}e^{-i\alpha}+\frac{1}{2}(\dot{A}^{i})^{2}e^{i\alpha}+\dot{A}^{i}\partial _{i}A^{0}e^{i(\alpha+\beta)/2}+\frac{1}{2}(A^{0})^{2}e^{i\beta}+\frac{1}{2}m^{2}(A^{0})^{2}e^{-i\beta}-\frac{1}{2}m^{2}(A^{i})^{2}e^{-i\alpha}\right)
\end{align}
$$

make a variation

$$\tag{4.2}
\begin{align}
\delta S & =\int \mathrm{d}^{4}x\left(-(\partial _{i}A_{j}-\partial _{j}A_{i})\partial ^{i}\delta A^{j}e^{-i\alpha}+\dot{A}^{i} \partial _{0}\delta A^{i}e^{i\alpha}+\partial _{0}\delta A^{i}\partial _{i}A^{0}e^{i(\alpha+\beta)}\right. \\
 & \left.+\dot{A}^{i}\partial _{i}\delta A^{0}e^{i(\alpha+\beta)/2}+\partial _{i}A^{0}\partial _{i}\delta A^{0}e^{i\beta}+m^{2}A^{0}\delta A^{0}e^{-i\beta}-m^{2}A^{i}\delta A^{i}e^{-i\alpha}\right) \\
 & =\int \mathrm{d}^{4}x\left(\frac{1}{2}e^{-i\alpha}(\partial ^{i}\partial _{i}A_{j}-\partial ^{i}\partial _{j}A_{i})\delta A^{j}-e^{i(\alpha+\beta)/2}\partial _{i}\dot{A}^{i}\delta A^{0}\right) \\
 & +\int _{\Sigma _{f}-\Sigma _{i}}
\end{align}
$$

$$\tag{4.2}
\begin{align}
\delta S & =\int \mathrm{d}^{4}x\left(\left\{\left[e^{-i\alpha}(\delta _{ij}(\vec{\nabla}^{2}-m^{2})-\partial _{i}\partial _{j})-e^{i\alpha}\delta _{ij}\partial _{0}^{2}\right]A^{j}-e^{i(\alpha+\beta)/2}\partial _{i}\partial _{0}A^{0}\right\}\delta A^{i}\right. \\
 & -(e^{i\beta}\partial _{i}^{2}A^{0}-e^{-i\beta}m^{2}A^{0}+e^{i(\alpha+\beta)/2}\partial _{i}\dot{A}^{i})\delta A^{0}) \\
 & +\int _{\Sigma _{f}-\Sigma _{i}} \mathrm{d}^{3}x\left(e^{i\alpha}\dot{A}^{i}+e^{i(\alpha+\beta)/2}\partial _{i}A^{0}\right)\delta A^{i}
\end{align}
$$
