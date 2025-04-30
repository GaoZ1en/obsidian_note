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

then consider the time ordered correlation function (assuming $\displaystyle{t_{i}< t'<t<t_{f}}$)

$$\tag{1.4}
\begin{align}
 & ~~~~~\braket{ x_{f}|e^{-iHt_{f}e^{-i\alpha}}\mathcal{T}x(te^{-i\alpha})x(t'e^{-i\alpha})e^{iHt_{i}e^{-i\alpha}}|x_{i} } \\
 & =\braket{ x_{f}|e^{-iHt_{f}e^{-i\alpha}}x(te^{-i\alpha})x(t'e^{-i\alpha})e^{iHt_{i}e^{-i\alpha}}|x_{i} }   \\
 & =\braket{ x_{f}|e^{-iH(t_{f}-t)e^{-i\alpha}}xe^{-iH(t-t')e^{-i\alpha}}xe^{-iH(t'-t_{i})e^{-i\alpha}}|x_{i} } \\
 & =\int \prod ^{3n-1}_{i=1}\mathrm{d}x_{i} \braket{ x_{f}|e^{-iH(t_{f}-t)e^{-i\alpha}/n}|x_{3n-1} }\dots\braket{x_{2n}|x|x_{2n}}\braket{x_{2n}|e^{-iH(t-t')e^{-i\alpha}/n}|x_{2n-1} }\dots\braket{ x_{n}|x|x_{n} }\braket{x_{n}|e^{-iH(t'-t_{i})e^{-i\alpha}/n}|x_{n-1}  }\dots\braket{x_{1}|e^{-iH(t'-t_{i})e^{-i\alpha}/n}|x_{i}  }  \\
 & =\int \prod ^{3n-1}_{i=1}\mathrm{d}x_{i} \prod ^{3n}_{j=1} \frac{\mathrm{d}p_{i}}{2\pi}x_{2n}x_{n}\braket{ x_{f}|e^{-iH\Delta t_{3}e^{-i\alpha}}|p_{3n} }\braket{ p_{3n}|x_{3n-1} }\dots   \braket{ x_{2n+1}|e^{-iH\Delta t_{3}}|p_{2n+1} }\braket{p_{2n+1}|x_{2n}  } \\
 & \cdot \braket{ x_{2n}|e^{-iH\Delta t_{2}e^{-i\alpha}}|p_{2n} }\braket{ p_{2n}|x_{2n-1} }\dots\braket{ x_{n+1}|e^{-iH\Delta t_{2}}|p_{n+1} }\braket{ p_{n+1}|x_{n} }\cdot \braket{x_{n}|e^{-iH\Delta t_{1}e^{-i\alpha}}|p_{n} }\braket{ p_{n}|x_{n-1} } \dots\braket{ x_{1}|e^{-iH\Delta t_{1}e^{-i\alpha}}|p_{1} }\braket{ p_{1}|x_{i} } \\
 & =\int \prod ^{3n-1}_{i=1}\mathrm{d}x_{i}\prod ^{3n}_{j=1} \frac{\mathrm{d}p_{i}}{2\pi}x_{2n}x_{n}\exp\left(i\sum ^{3n}_{i=1}p_{i}(x_{i}-x_{i-1})-i\sum _{j=1}^{3}\sum ^{jn}_{i=(j-1)n+1} \frac{p_{i}^{2}}{2m'}\Delta t_{j}e^{-i\alpha}-i\sum ^{3}_{j=1}\sum ^{jn}_{i=(j-1)n+1} \frac{1}{2}kx_{i}^{2}\Delta t_{j}e^{-i\alpha}\right) \\
 & =\prod ^{3}_{i=1}\left(\frac{m'}{2\pi i\Delta t_{i}e^{-i\alpha}}\right)^{n/2} \int \prod ^{3n-1}_{i=1}\mathrm{d}x_{i}x_{2n}x_{n}\exp\left(i\sum ^{3}_{i=1}\sum ^{in}_{j=(i-1)n+1} \frac{1}{2}m' \left( \frac{x_{i}-x_{i-1}}{\Delta t_{j}} \right)^{2}\Delta t_{j}e^{-i\alpha}-i\sum ^{3}_{i=1}\sum ^{in}_{j=(i-1)n+1} \frac{1}{2}kx_{i}^{2}\Delta t_{j}e^{-i\alpha}\right) \\
 & =\prod ^{3}_{i=1}\left(\frac{m'}{2\pi i\Delta t_{i}e^{-i\alpha}}\right)^{n/2} \int \prod ^{3n-1}_{i=1}\mathrm{d}x_{i}\prod ^{3n}_{j=1}\mathrm{d}\phi _{j}x_{2n}x_{n}\exp\left(i\sum ^{3}_{i=1}\sum ^{in}_{j=(i-1)n+1} \frac{1}{2}m \left( \frac{x_{j}-x_{j-1}}{\Delta t_{i}} \right)^{2}\Delta t_{i}e^{-i\alpha}-i\sum ^{3}_{i=1}\sum ^{in}_{j=(i-1)n+1} \frac{1}{2}kx_{j}^{2}\Delta t_{i}e^{-i\alpha}-i\lambda \sum ^{3}_{i=1}\sum ^{in}_{j=(i-1)n+1}\phi _{j} \frac{x_{j}-x_{j-1}}{\Delta t_{i}}\Delta t_{i}e^{-i(\alpha+\beta)/2}+i\sum ^{3}_{i=1}\sum ^{in}_{j=(i-1)n+1} \frac{1}{2}\phi _{j}^{2}\Delta t_{i}e^{-i\beta}\right) \\
 & =\mathcal{N}\int [\mathcal{D}x\mathcal{D}\phi]_{x_{f}=x(t_{f}),x_{i}=x(t_{i})} x(t)x(t') \exp\left(i \int _{t_{i}}^{t_{f}}\mathrm{d}t L[x,\phi]\right)
\end{align}
$$

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

by taking $\displaystyle{t_{f}\to+\infty, t_{i}\to-\infty}$, we get the vacuum correlation function (Gell-Mann-Low theorem)

$$\tag{1.6}
\begin{align}
\frac{\braket{ 0|\mathcal{T}x(te^{-i\alpha})x(t'e^{-i\alpha})|0 }}{\braket{ 0|0 } }  & = \frac{\displaystyle{\int \mathcal{D}x\mathcal{D}\phi x(t)x(t') \exp\left(i \int _{-\infty}^{+\infty}\mathrm{d}t\left(\frac{1}{2}m\dot{x}^{2}e^{-i\alpha}-\frac{1}{2}kx^{2}e^{-i\alpha}-\lambda \dot{x}\phi e^{-i(\alpha+\beta)/2}+\frac{1}{2}\phi ^{2}e^{-i\beta}\right)\right)}}{\displaystyle{\int \mathcal{D}x\mathcal{D}\phi \exp\left(i \int _{-\infty}^{+\infty}\mathrm{d}t\left(\frac{1}{2}m\dot{x}^{2}e^{-i\alpha}-\frac{1}{2}kx^{2}e^{-i\alpha}-\lambda \dot{x}\phi e^{-i(\alpha+\beta)/2}+\frac{1}{2}\phi ^{2}e^{-i\beta}\right)\right)}}
\end{align}
$$

---

introduce 

$$\tag{1.7}
\begin{align}
Z[J,\eta] & =\int \mathcal{D}x\mathcal{D}\phi \exp\left( i \int _{-\infty}^{+\infty}\mathrm{d}t(L[xe^{-i\alpha},\phi e^{-i\beta}]+Jxe^{-i\alpha}+\eta \phi e^{-i\beta}) \right) \\
 & =\int \mathcal{D}x\mathcal{D}\phi \exp\left(i \int _{-\infty}^{+\infty}\mathrm{d}t\left(\frac{1}{2}m\dot{x}^{2}e^{-i\alpha}-\frac{1}{2}kx^{2}e^{-i\alpha}-\lambda \dot{x}\phi e^{-i(\alpha+\beta)/2}+\frac{1}{2}\phi ^{2}e^{-i\beta}+Jxe^{-i\alpha}+\eta \phi e^{-i\beta}\right)\right) \\
 & =\int \mathcal{D}x\mathcal{D}\phi \exp\left(i \int _{-\infty}^{+\infty}\mathrm{d}t \left(-\frac{1}{2}\dot{x}\left( m' \frac{\mathrm{d}^{2}}{\mathrm{d}t^{2}}+k \right)\dot{x} e^{-i\alpha}+Jxe^{-i\alpha}+\frac{1}{2}(\phi e^{-i\beta/2} +(\lambda e^{-i\beta/2}-\lambda \dot{x}e^{-i\alpha/2}))^{2}-\frac{1}{2}\eta ^{2} e^{-i\beta}+\lambda \eta \dot{x}e^{-i(\alpha+\beta)/2}\right)\right) \\
 & =\exp\left(\frac{i}{2}\int ^{+\infty}_{-\infty}\mathrm{d}t\mathrm{d}t'(J-\lambda \dot{\eta})(t)G(t,t')(J-\lambda \dot{\eta})(t')\right)\exp\left(-\frac{i}{2}\int _{-\infty}^{+\infty}\mathrm{d}t\eta ^{2}e^{-i\beta}\right)
\end{align}
$$

where $\displaystyle{G(t,t')}$ satisfies

$$\tag{1.8}
\begin{align}
\left( m' \frac{\mathrm{d}^{2}}{\mathrm{d}t^{2}}+k -i\varepsilon\right)G(t,t')=\delta(t-t')\implies G(t,t')\approx \int _{-\infty}^{+\infty} \frac{\mathrm{d}p_{0}}{p_{0}^{2}-\omega ^{2}+i\varepsilon}e^{-ip_{0}(t-t')}
\end{align}
$$

then

$$\tag{1.8}
\begin{align}
W[J,\eta] & =-i\ln Z[J,\eta] \\
 & =-\frac{1}{2}\int _{-\infty}^{+\infty}\mathrm{d}t\eta ^{2}+\frac{1}{2}\int ^{+\infty}_{-\infty}\mathrm{d}t\mathrm{d}t'(J-\lambda \dot{\eta})(t)G(t,t')(J-\lambda \dot{\eta})(t')
\end{align}
$$

then

$$\tag{1.9}
\begin{align}
\frac{\braket{ 0|\mathcal{T}x(t)\phi(t')|0 }}{\braket{ 0|0 } } & = \frac{\delta ^{2}W[J,\eta]}{\delta J(t)\delta J(t')}\Big|_{J=0,\eta=0} \\
 & = G(t,t') \\
\frac{\braket{ 0|\mathcal{T}x(t)\phi(t')|0 }}{\braket{ 0|0 } } & = \frac{\delta ^{2}W[J,\eta]}{\delta J(t)\delta \eta(t')}\Big|_{J=0,\eta=0} \\
 & =\lambda\frac{\partial}{\partial t}G(t,t') \\
\frac{\braket{ 0|\mathcal{T}\phi(t)\phi(t')|0 }}{\braket{ 0|0 } } & = \frac{\delta ^{2}W[J,\eta]}{\delta \eta(t)\delta \eta(t')}\Big|_{J=0,\eta=0} \\
 & =-\delta(t-t')+\lambda ^{2} \frac{\partial^{2}}{\partial t\partial t'}G(t,t')
\end{align}
$$