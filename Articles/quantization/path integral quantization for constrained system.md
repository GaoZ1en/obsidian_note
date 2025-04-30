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
 & \braket{ x=x_{f}|e^{-iH(t_{f}-t_{i})e^{-i\alpha}}|x=x_{i} } \\
 & = \braket{ x=x_{f}|e^{-iH\Delta te^{-i\alpha}}\dots e^{-iH\Delta te^{-i\alpha}}|x=x_{i} } \\
 & = \int \mathrm{d}x_{1}\dots \mathrm{d}x_{n-1}\braket{ x=x_{f}|e^{-iH\Delta te^{-i\alpha}}|x_{n-1} } \braket{ x_{n-1}|e^{-iH\Delta te^{-i\alpha}}|x_{n-2} }\dots\braket{ x_{1}|e^{-iH\Delta te^{-i\alpha}}|x=x_{i} }  \\
 & = \int \mathrm{d}x_{1}\dots \mathrm{d}x_{n-1} \int \frac{\mathrm{d}p_{1}}{2\pi}\dots \frac{\mathrm{d}p_{n}}{2\pi} \braket{ x_{f}|e^{-iH\Delta te^{-i\alpha}}|p_{n} } \braket{ p_{n}|x_{n-1} }\dots\braket{ x_{1}|e^{-iH\Delta e^{ ^{-i\alpha} }}|p_{1} }\braket{ p_{1}|x_{i} }  \\
 & = \int \mathrm{d}x_{1}\dots \mathrm{d}x_{n-1}\int \frac{\mathrm{d}p_{1}}{2\pi}\dots \frac{\mathrm{d}p_{n}}{2\pi}\exp\left(i\sum ^{n}_{i=1}p_{i}(x_{i}-x_{i-1})-i\sum ^{n}_{i=1} \frac{p_{i}^{2}}{2m'}\Delta te^{-i\alpha}-i\sum ^{n}_{i=1} \frac{1}{2}kx_{i}^{2}\Delta te^{-i\alpha}\right)  \\
 & =\left( \frac{m'}{2\pi i\Delta te^{-i\alpha}} \right)^{n/2} \int \mathrm{d}x_{1}\dots \mathrm{d}x_{n-1}\exp\left(i\Delta te^{-i\alpha}\sum ^{n}_{i=1} \frac{1}{2}m' \left( \frac{x_{i}-x_{i-1}}{\Delta t}\right)^{2}-i\Delta te^{-i\alpha}\sum ^{n}_{i=1} \frac{1}{2}kx_{i}^{2}\right) \\
 & =\left(\frac{m'}{2\pi i\Delta te^{-i\alpha}}\right)^{n/2} \int \mathrm{d}x_{1}\dots \mathrm{d}x_{n-1}\exp\left(i\Delta te^{-i\alpha}\sum ^{n}_{i=1} \frac{1}{2}m\left(\frac{x_{i}-x_{i-1}}{\Delta t}\right)^{2}-i\Delta te^{-i\alpha}\sum ^{n}_{i=1} \frac{1}{2}kx_{i}^{2}-i\Delta te^{-i\alpha}\sum ^{n}_{i=1} \frac{1}{2}\lambda ^{2} \left(\frac{x_{i}-x_{i-1}}{\Delta t}\right)^{2}\right) \\
 & =\left(\frac{m'}{2\pi i\Delta te^{-i\alpha}}\right)^{n/2}\int \mathrm{d}x_{1}\dots \mathrm{d}x_{n-1}\mathrm{d}\phi _{1}\dots \mathrm{d}\phi _{n}\exp\left(i\Delta te^{-i\alpha}\sum ^{n}_{t=1} \frac{1}{2}m \left( \frac{x_{i}-x_{i-1}}{\Delta t} \right)^{2}-i\Delta te^{-i\alpha}\sum ^{n}_{i=1}\lambda \phi _{i} \frac{x_{i}-x_{i-1}}{\Delta t}+i\Delta te^{-i\alpha}\sum ^{n}_{i=1}\phi _{i}^{2}-i\Delta te^{-i\alpha}\sum ^{n}_{i=1} \frac{1}{2}kx_{i}^{2}\right) \\
 & =\mathcal{N}\int [\mathcal{D}x\mathcal{D}\phi]_{x(t_{i})=x_{i},x(t_{f})=x_{f}} \exp\left[i \int _{t_{}} \mathrm{d}t\right]
\end{align}
$$

here we choose $\displaystyle{x_{n}=x_{f},x_{0}=x_{i}}$

$$\tag{1.1}
\begin{align}
L & = \frac{1}{2}m\dot{x}^{2}-\lambda \dot{x}\phi+\frac{1}{2}\phi ^{2}-\frac{1}{2}kx^{2}
\end{align}
$$
