$$\tag{1.1}
\begin{align}
L & = \frac{1}{2}m\dot{x}^{2}-\lambda \dot{x}\phi+\frac{1}{2}\phi ^{2}-\frac{1}{2}kx^{2}
\end{align}
$$

consider the amplitude

$$\tag{1.2}
\begin{align}
\braket{ x=x_{f}|e^{-iH(t_{f}-t_{i})e^{-i\alpha}}|x=x_{i} } 
\end{align}
$$

here $\displaystyle{0<\alpha\leqslant \frac{\pi}{2}}$ plays the role of a continuous Wick rotation. we can reformulate the amplitude into path integral as

$$\tag{1.3}
\begin{align}
 & ~~~~~\braket{ x=x_{f}|e^{-iH(t_{f}-t_{i})e^{-i\alpha}}|x=x_{i} } \\
 & = \braket{ x=x_{f}|e^{-iH\Delta te^{-i\alpha}}\dots e^{-iH\Delta te^{-i\alpha}}|x=x_{i} } \\
 & = \int \mathrm{d}x_{1}\dots \mathrm{d}x_{n-1}\braket{ x=x_{f}|e^{-iH\Delta te^{-i\alpha}}|x_{n-1} } \braket{ x_{n-1}|e^{-iH\Delta te^{-i\alpha}}|x_{n-2} }\dots\braket{ x_{1}|e^{-iH\Delta te^{-i\alpha}}|x=x_{i} }  \\
 & = \int \mathrm{d}x_{1}\dots \mathrm{d}x_{n-1} \int \frac{\mathrm{d}p_{1}}{2\pi}\dots \frac{\mathrm{d}p_{n}}{2\pi} \braket{ x_{f}|e^{-iH\Delta te^{-i\alpha}}|p_{n} } \braket{ p_{n}|x_{n-1} }\dots\braket{ x_{1}|e^{-iH\Delta e^{ ^{-i\alpha} }}|p_{1} }\braket{ p_{1}|x_{i} }  \\
 & = \int \mathrm{d}x_{1}\dots \mathrm{d}x_{n-1}\int \frac{\mathrm{d}p_{1}}{2\pi}\dots \frac{\mathrm{d}p_{n}}{2\pi}\exp\left(i\sum ^{n}_{i=1}p_{i}(x_{i}-x_{i-1})-i\sum ^{n}_{i=1} \frac{p_{i}^{2}}{2m'}\Delta te^{-i\alpha}-i\sum ^{n}_{i=1} \frac{1}{2}kx_{i}^{2}\Delta te^{-i\alpha}\right)  \\
 & =\left( \frac{m'}{2\pi i\Delta te^{-i\alpha}} \right)^{n/2} \int \mathrm{d}x_{1}\dots \mathrm{d}x_{n-1}\exp\left(i\Delta te^{-i\alpha}\sum ^{n}_{i=1} \frac{1}{2}m' \left( \frac{x_{i}-x_{i-1}}{\Delta t}\right)^{2}-i\Delta te^{-i\alpha}\sum ^{n}_{i=1} \frac{1}{2}kx_{i}^{2}\right) \\
 & =\left(\frac{m'}{2\pi i\Delta te^{-i\alpha}}\right)^{n/2} \int \mathrm{d}x_{1}\dots \mathrm{d}x_{n-1}\exp\left(i\Delta te^{-i\alpha}\sum ^{n}_{i=1} \frac{1}{2}m\left(\frac{x_{i}-x_{i-1}}{\Delta t}\right)^{2}-i\Delta te^{-i\alpha}\sum ^{n}_{i=1} \frac{1}{2}kx_{i}^{2}-i\Delta te^{-i\alpha}\sum ^{n}_{i=1} \frac{1}{2}\lambda ^{2} \left(\frac{x_{i}-x_{i-1}}{\Delta t}\right)^{2}\right) \\
 & =\left(\frac{m'}{2\pi i\Delta te^{-i\alpha}}\right)^{n/2}\int \mathrm{d}x_{1}\dots \mathrm{d}x_{n-1}\mathrm{d}\phi _{1}\dots \mathrm{d}\phi _{n}\exp\left(i\Delta te^{-i\alpha}\sum ^{n}_{t=1} \frac{1}{2}m \left( \frac{x_{i}-x_{i-1}}{\Delta t} \right)^{2}-i\Delta te^{-i(\alpha+\beta)/2}\sum ^{n}_{i=1}\lambda \phi _{i} \frac{x_{i}-x_{i-1}}{\Delta t}+i\Delta te^{-i\beta}\sum ^{n}_{i=1}\phi _{i}^{2}-i\Delta te^{-i\alpha}\sum ^{n}_{i=1} \frac{1}{2}kx_{i}^{2}\right) \\
 & =\mathcal{N}\int [\mathcal{D}x\mathcal{D}\phi]_{x(t_{i})=x_{i},x(t_{f})=x_{f}} \exp\left[i \int _{t_{i}}^{t_{f}} \mathrm{d}t\left(\frac{1}{2}m\dot{x}^{2}-\lambda \dot{x}\phi+\frac{1}{2}\phi ^{2}-\frac{1}{2}kx^{2}\right)\right]
\end{align}
$$

here we choose $\displaystyle{x_{n}=x_{f},x_{0}=x_{i}}$, and $\displaystyle{0<\beta\leqslant \frac{\pi}{2}}$ plays the same rule as $\displaystyle{\alpha}$. 

then consider the time ordered correlation function

$$\tag{1.4}
\begin{align}
 & ~~~~~\braket{ x_{f}|e^{-iHt_{f}e^{-i\alpha}}\mathcal{T}x(te^{-i\alpha})x(t'e^{-i\alpha})e^{iHt_{i}e^{-i\alpha}}|x_{i} } \\
 & =\mathcal{N}\int [\mathcal{D}x\mathcal{\phi}]_{x(t_{i})=x_{i},x(t_{f})=x_{f}} x(t)x(t')\exp\left[i \int _{t_{i}}^{t_{f}}\mathrm{d}t\left( \frac{1}{2}m\dot{x}^{2}e^{-i\alpha}-\lambda \dot{x}\phi e^{-i(\alpha+\beta)/2}+\frac{1}{2}\phi ^{2}e^{-i\beta}-\frac{1}{2}kx^{2}e^{-i\alpha}\right)\right]
\end{align}
$$

then define the normalized correlation function

$$\tag{1.5}
\begin{align}
\frac{\braket{ x_{f}|e^{-iHt_{f}e^{-i\alpha}}\mathcal{T}x(te^{-i\alpha})x(t'e^{-i\alpha})e^{iHt_{i}e^{-i\alpha}}|x_{i} }}{\braket{ x_{f}|e^{-iH(t_{f}-t_{i})e^{-i\alpha}}|x_{i} }}
\end{align}
$$

by taking $\displaystyle{t_{f}\to+\infty, t_{i}\to-\infty}$, we get the vacuum correlation function (Gel-Mann-Low theorem)

$$\tag{1.6}
\begin{align}
\frac{\braket{ 0|T(x(te^{-i\alpha})x(t'e^{-i\alpha})|0 }}{\braket{ 0|0 } }  & = \frac{\displaystyle{\int \mathcal{D}x\mathcal{D}\phi x(t)x(t') \exp\left(i \int _{-\infty}^{+\infty}\mathrm{d}t\left(\frac{1}{2}m\dot{x}^{2}e^{-i\alpha}-\frac{1}{2}kx^{2}e^{-i\alpha}-\lambda \dot{x}\phi e^{-i(\alpha+\beta)/2}+\frac{1}{2}\phi ^{2}e^{-i\beta}\right)\right)}}{\displaystyle{\int \mathcal{D}x\mathcal{D}\phi \exp\left(i \int _{-\infty}^{+\infty}\mathrm{d}t\left(\frac{1}{2}m\dot{x}^{2}e^{-i\alpha}-\frac{1}{2}kx^{2}e^{-i\alpha}-\lambda \dot{x}\phi e^{-i(\alpha+\beta)/2}+\frac{1}{2}\phi ^{2}e^{-i\beta}\right)\right)}}
\end{align}
$$

similarly, we have

$$\tag{1.7}
\begin{align}
\frac{\braket{ 0|\mathcal{T}x(te^{-i\alpha})\phi(t'e^{-i\beta})|0 }}{\braket{ 0|0 } } & =\frac{\displaystyle{\int \mathcal{D}x\mathcal{D}\phi x(t)\phi(t') \exp\left(i \int _{-\infty}^{+\infty}\mathrm{d}t\left(\frac{1}{2}m\dot{x}^{2}e^{-i\alpha}-\frac{1}{2}kx^{2}e^{-i\alpha}-\lambda \dot{x}\phi e^{-i(\alpha+\beta)/2}+\frac{1}{2}\phi ^{2}e^{-i\beta}\right)\right)}}{\displaystyle{\int \mathcal{D}x\mathcal{D}\phi \exp\left(i \int _{-\infty}^{+\infty}\mathrm{d}t\left(\frac{1}{2}m\dot{x}^{2}e^{-i\alpha}-\frac{1}{2}kx^{2}e^{-i\alpha}-\lambda \dot{x}\phi e^{-i(\alpha+\beta)/2}+\frac{1}{2}\phi ^{2}e^{-i\beta}\right)\right)}} 
\end{align}
$$

$$\tag{1.8}
\begin{align}
\braket{ 0| } 
\end{align}
$$