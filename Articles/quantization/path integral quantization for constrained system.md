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
 & =\left( \frac{m'}{2\pi i\Delta te^{-i\alpha}} \right)^{n/2} \int \mathrm{d}x_{1}\dots \mathrm{d}x_{n-1}\exp\left(i\Delta te^{i\alpha}\sum ^{n}_{i=1} \frac{1}{2}m' \left( \frac{x_{i}-x_{i-1}}{\Delta t}\right)^{2}-i\Delta te^{-i\alpha}\sum ^{n}_{i=1} \frac{1}{2}kx_{i}^{2}\right) \\
 & =\left(\frac{m'}{2\pi i\Delta te^{-i\alpha}}\right)^{n/2}\left(\frac{\Delta t}{2\pi ie^{-i\beta}}\right)^{n/2} \int \mathrm{d}x_{1}\dots \mathrm{d}x_{n-1}\exp\left(i\Delta te^{i\alpha}\sum ^{n}_{i=1} \frac{1}{2}m\left(\frac{x_{i}-x_{i-1}}{\Delta t}\right)^{2}-i\Delta te^{-i\alpha}\sum ^{n}_{i=1} \frac{1}{2}kx_{i}^{2}\right. \\
 & \left.-i\Delta te^{i\alpha}\sum ^{n}_{i=1} \frac{1}{2}\lambda ^{2} \left(\frac{x_{i}-x_{i-1}}{\Delta t}\right)^{2}\right) \\
 & =\left(\frac{m'}{2\pi i\Delta te^{-i\alpha}}\right)^{n/2}\left(\frac{\Delta t}{2\pi ie^{-i\beta}}\right)^{n/2}\int \mathrm{d}x_{1}\dots \mathrm{d}x_{n-1}\mathrm{d}\phi _{1}\dots \mathrm{d}\phi _{n}\exp\left(i\Delta te^{i\alpha}\sum ^{n}_{t=1} \frac{1}{2}m \left( \frac{x_{i}-x_{i-1}}{\Delta t} \right)^{2}\right. \\
 & \left.-i\Delta te^{i(\alpha+\beta)/2}\sum ^{n}_{i=1}\lambda \phi _{i} \frac{x_{i}-x_{i-1}}{\Delta t}+i\Delta te^{i\beta}\sum ^{n}_{i=1}\phi _{i}^{2}-i\Delta te^{-i\alpha}\sum ^{n}_{i=1} \frac{1}{2}kx_{i}^{2}\right) \\
 & =\mathcal{N}\int [\mathcal{D}x\mathcal{D}\phi]_{x(t_{i})=x_{i},x(t_{f})=x_{f}} \exp\left[i \int _{t_{i}}^{t_{f}} \mathrm{d}t\left(\frac{1}{2}m\dot{x}^{2}e^{i\alpha}-\lambda \dot{x}\phi e^{i(\alpha+\beta)/2}+\frac{1}{2}\phi ^{2}e^{i\beta}-\frac{1}{2}kx^{2}e^{-i\alpha}\right)\right]
\end{align}
$$

here we choose $\displaystyle{x_{n}=x_{f},x_{0}=x_{i}}$, and $\displaystyle{0<\beta\leqslant \frac{\pi}{2}}$ plays the same rule as $\displaystyle{\alpha}$. 

then consider the time ordered correlation function (assuming $\displaystyle{t_{i}< t'<t<t_{f}}$)

$$\tag{1.4}
\begin{align}
 & ~~~~~\braket{ x_{f}|e^{-iHt_{f}e^{-i\alpha}}\mathcal{T}x(te^{-i\alpha})x(t'e^{-i\alpha})e^{iHt_{i}e^{-i\alpha}}|x_{i} } \\
 & =\braket{ x_{f}|e^{-iHt_{f}e^{-i\alpha}}x(te^{-i\alpha})x(t'e^{-i\alpha})e^{iHt_{i}e^{-i\alpha}}|x_{i} }   \\
 & =\braket{ x_{f}|e^{-iH(t_{f}-t)e^{-i\alpha}}xe^{-iH(t-t')e^{-i\alpha}}xe^{-iH(t'-t_{i})e^{-i\alpha}}|x_{i} } \\
 & =\int \prod ^{3n-1}_{i=1}\mathrm{d}x_{i} \braket{ x_{f}|e^{-iH(t_{f}-t)e^{-i\alpha}/n}|x_{3n-1} }\dots\braket{x_{2n}|x|x_{2n}}\braket{x_{2n}|e^{-iH(t-t')e^{-i\alpha}/n}|x_{2n-1} }\dots\braket{ x_{n}|x|x_{n} } \\
 & \braket{x_{n}|e^{-iH(t'-t_{i})e^{-i\alpha}/n}|x_{n-1}  }\dots\braket{x_{1}|e^{-iH(t'-t_{i})e^{-i\alpha}/n}|x_{i}  }  \\
 & =\int \prod ^{3n-1}_{i=1}\mathrm{d}x_{i} \prod ^{3n}_{j=1} \frac{\mathrm{d}p_{i}}{2\pi}x_{2n}x_{n}\braket{ x_{f}|e^{-iH\Delta t_{3}e^{-i\alpha}}|p_{3n} }\braket{ p_{3n}|x_{3n-1} }\dots   \braket{ x_{2n+1}|e^{-iH\Delta t_{3}}|p_{2n+1} }\braket{p_{2n+1}|x_{2n}  } \\
 & \cdot \braket{ x_{2n}|e^{-iH\Delta t_{2}e^{-i\alpha}}|p_{2n} }\braket{ p_{2n}|x_{2n-1} }\dots\braket{ x_{n+1}|e^{-iH\Delta t_{2}}|p_{n+1} }\braket{ p_{n+1}|x_{n} } \\
 & \cdot \braket{x_{n}|e^{-iH\Delta t_{1}e^{-i\alpha}}|p_{n} }\braket{ p_{n}|x_{n-1} } \dots\braket{ x_{1}|e^{-iH\Delta t_{1}e^{-i\alpha}}|p_{1} }\braket{ p_{1}|x_{i} } \\
 & =\int \prod ^{3n-1}_{i=1}\mathrm{d}x_{i}\prod ^{3n}_{j=1} \frac{\mathrm{d}p_{i}}{2\pi}x_{2n}x_{n}\exp\left(i\sum ^{3n}_{i=1}p_{i}(x_{i}-x_{i-1})-i\sum _{j=1}^{3}\sum ^{jn}_{i=(j-1)n+1} \frac{p_{i}^{2}}{2m'}\Delta t_{j}e^{-i\alpha}-i\sum ^{3}_{j=1}\sum ^{jn}_{i=(j-1)n+1} \frac{1}{2}kx_{i}^{2}\Delta t_{j}e^{-i\alpha}\right) \\
 & =\prod ^{3}_{i=1}\left(\frac{m'}{2\pi i\Delta t_{i}e^{-i\alpha}}\right)^{n/2} \int \prod ^{3n-1}_{i=1}\mathrm{d}x_{i}x_{2n}x_{n}\exp\left(i\sum ^{3}_{i=1}\sum ^{in}_{j=(i-1)n+1} \frac{1}{2}m' \left( \frac{x_{i}-x_{i-1}}{\Delta t_{j}} \right)^{2}\Delta t_{j}e^{i\alpha}-i\sum ^{3}_{i=1}\sum ^{in}_{j=(i-1)n+1} \frac{1}{2}kx_{i}^{2}\Delta t_{j}e^{-i\alpha}\right) \\
 & =\prod ^{3}_{i=1}\left(\frac{m'}{2\pi i\Delta t_{i}e^{-i\alpha}}\right)^{n/2}\left(\frac{\Delta t_{i}}{2\pi ie^{-i\beta}}\right)^{n/2} \int \prod ^{3n-1}_{i=1}\mathrm{d}x_{i}\prod ^{3n}_{j=1}\mathrm{d}\phi _{j}x_{2n}x_{n}\exp\left(i\sum ^{3}_{i=1}\sum ^{in}_{j=(i-1)n+1} \frac{1}{2}m \left( \frac{x_{j}-x_{j-1}}{\Delta t_{i}} \right)^{2}\Delta t_{i}e^{i\alpha}\right. \\
 & \left.-i\sum ^{3}_{i=1}\sum ^{in}_{j=(i-1)n+1} \frac{1}{2}kx_{j}^{2}\Delta t_{i}e^{-i\alpha}-i\lambda \sum ^{3}_{i=1}\sum ^{in}_{j=(i-1)n+1}\phi _{j} \frac{x_{j}-x_{j-1}}{\Delta t_{i}}\Delta t_{i}e^{i(\alpha+\beta)/2}+i\sum ^{3}_{i=1}\sum ^{in}_{j=(i-1)n+1} \frac{1}{2}\phi _{j}^{2}\Delta t_{i}e^{i\beta}\right) \\
 & =\mathcal{N}\int [\mathcal{D}x\mathcal{D}\phi]_{x_{f}=x(t_{f}),x_{i}=x(t_{i})} x(t)x(t') \exp\left(i \int _{t_{i}}^{t_{f}}\mathrm{d}t \left(\frac{1}{2}m \dot{x}^{2}e^{i\alpha}-\frac{1}{2}kx^{2}e^{-i\alpha}-\lambda \phi \dot{x}e^{i(\alpha+\beta)/2}+\frac{1}{2}\phi ^{2}e^{i\beta}\right)\right)
\end{align}
$$

$$\tag{1.4}
\begin{align}
 & ~~~~~\braket{ x_{f}|e^{-iHt_{f}e^{-i\alpha}}\mathcal{T}x(te^{-i\alpha})x(t'e^{-i\alpha})e^{iHt_{i}e^{-i\alpha}}|x_{i} } \\
 & =\mathcal{N}\int [\mathcal{D}x\mathcal{\phi}]_{x(t_{i})=x_{i},x(t_{f})=x_{f}} x(t)x(t')\exp\left[i \int _{t_{i}}^{t_{f}}\mathrm{d}t\left( \frac{1}{2}m\dot{x}^{2}e^{i\alpha}-\lambda \dot{x}\phi e^{i(\alpha+\beta)/2}+\frac{1}{2}\phi ^{2}e^{-i\beta}-\frac{1}{2}kx^{2}e^{-i\alpha}\right)\right]
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
\frac{\braket{ 0|\mathcal{T}x(te^{-i\alpha})x(t'e^{-i\alpha})|0 }}{\braket{ 0|0 } }  & = \frac{\displaystyle{\int \mathcal{D}x\mathcal{D}\phi x(t)x(t') \exp\left(i \int _{-\infty}^{+\infty}\mathrm{d}t\left(\frac{1}{2}m\dot{x}^{2}e^{i\alpha}-\frac{1}{2}kx^{2}e^{-i\alpha}-\lambda \dot{x}\phi e^{i(\alpha+\beta)/2}+\frac{1}{2}\phi ^{2}e^{-i\beta}\right)\right)}}{\displaystyle{\int \mathcal{D}x\mathcal{D}\phi \exp\left(i \int _{-\infty}^{+\infty}\mathrm{d}t\left(\frac{1}{2}m\dot{x}^{2}e^{i\alpha}-\frac{1}{2}kx^{2}e^{-i\alpha}-\lambda \dot{x}\phi e^{i(\alpha+\beta)/2}+\frac{1}{2}\phi ^{2}e^{-i\beta}\right)\right)}}
\end{align}
$$

---

introduce 

$$\tag{2.1}
\begin{align}
Z[J,\eta] & =\int \mathcal{D}x\mathcal{D}\phi \exp\left( i \int _{-\infty}^{+\infty}\mathrm{d}t(L[x,\phi]+Jx+\eta \phi) \right) \\
 & =\int \mathcal{D}x\mathcal{D}\phi \exp\left(i \int _{-\infty}^{+\infty}\mathrm{d}t\left(\frac{1}{2}m\dot{x}^{2}-\frac{1}{2}kx^{2}-\lambda \dot{x}\phi +\frac{1}{2}\phi ^{2}+Jx+\eta \phi\right)\right) \\
 & =\int \mathcal{D}x\mathcal{D}\phi \exp\left(i \int _{-\infty}^{+\infty}\mathrm{d}t \left(-\frac{1}{2}\dot{x}\left( m' \frac{\mathrm{d}^{2}}{\mathrm{d}t^{2}}+k \right)\dot{x}+Jx+\frac{1}{2}(\phi +(\eta-\lambda \dot{x}))^{2}-\frac{1}{2}\eta ^{2}+\lambda \eta \dot{x}\right)\right) \\
 & =\exp\left(-\frac{1}{2}\int ^{+\infty}_{-\infty}\mathrm{d}t\mathrm{d}t'(J-\lambda \dot{\eta})(t)G(t,t')(J-\lambda \dot{\eta})(t')\right)\exp\left(-\frac{i}{2}\int _{-\infty}^{+\infty}\mathrm{d}t\eta ^{2}\right)
\end{align}
$$

where $\displaystyle{G(t,t')}$ satisfies

$$\tag{2.2}
\begin{align}
\left( m' \frac{\mathrm{d}^{2}}{\mathrm{d}t^{2}}+k -i\varepsilon\right)G(t,t')=\delta(t-t')\implies G(t,t')=-\frac{1}{2\pi im'} \int _{-\infty}^{+\infty} \frac{\mathrm{d}p_{0}}{p_{0}^{2}-\omega ^{2}+i\varepsilon}e^{-ip_{0}(t-t')}
\end{align}
$$

then

$$\tag{2.3}
\begin{align}
\frac{\braket{ 0|\mathcal{T}x(t)\phi(t')|0 }}{\braket{ 0|0 } } & = -\frac{\delta ^{2}\log Z[J,\eta]}{\delta J(t)\delta J(t')}\Big|_{J=0,\eta=0} \\
 & = G(t,t') \\
\frac{\braket{ 0|\mathcal{T}x(t)\phi(t')|0 }}{\braket{ 0|0 } } & = -\frac{\delta ^{2}\log Z[J,\eta]}{\delta J(t)\delta \eta(t')}\Big|_{J=0,\eta=0} \\
 & =-\lambda \partial _{t}G(t,t') \\
\frac{\braket{ 0|\mathcal{T}\phi(t)\phi(t')|0 }}{\braket{ 0|0 } } & = -\frac{\delta ^{2}\log Z[J,\eta]}{\delta \eta(t)\delta \eta(t')}\Big|_{J=0,\eta=0} \\
 & =-\delta(t-t')+\lambda ^{2} \frac{\partial^{2}}{\partial t\partial t'}G(t,t') \\
 & =-\delta(t-t')-\lambda ^{2} \partial _{t}^{2}G(t,t')
\end{align}
$$

---

or we should not integrate out $\displaystyle{\phi}$ first????

$$\tag{3.1}
\begin{align}
Z[J_{x},J_{\phi}] & =\int \mathcal{D}x\mathcal{D}\phi \exp\left( i \int _{-\infty}^{+\infty}\mathrm{d}t(L[x,\phi]+J_{x}x+J_{\phi} \phi) \right) \\
 & =\int \mathcal{D}x\mathcal{D}\phi \exp\left(i \int _{-\infty}^{+\infty}\mathrm{d}t\left( -\frac{1}{2}X DX^{T}+XJ^{T} \right)\right) \\
 & =\exp\left[-\frac{1}{2}\int _{-\infty}^{+\infty}\mathrm{d}t\mathrm{d}t'J(t)D^{-1}(t,t')J^{T}(t')\right] \\
X & =\begin{pmatrix}x & \phi\end{pmatrix} \\
J & =\begin{pmatrix}J_{x} & J_{\phi}\end{pmatrix} \\
D & =\begin{pmatrix}m\frac{\mathrm{d}^{2}}{\mathrm{d}t^{2}}+k & -\lambda\frac{\mathrm{d}}{\mathrm{d}t} \\\lambda\frac{\mathrm{d}}{\mathrm{d}t} & -1\end{pmatrix}
\end{align}
$$

and $\displaystyle{D^{-1}(t,t')}$ satisfies

$$\tag{3.2}
\begin{align}
iD(t)D^{-1}(t,t') & =\delta(t-t')\mathbb{1}_{2\times2} \\
\implies D^{-1}(t,t') & =\int \frac{\mathrm{d}p_{0}}{2\pi m'} \frac{i}{p_{0}^{2}-\omega ^{2}+i\varepsilon}e^{-ip_{0}(t-t')} \begin{pmatrix}
1 & i\lambda p_{0} \\
-i\lambda p_{0} & mp_{0}^{2}-k
\end{pmatrix}
\end{align}
$$

then

$$\tag{3.3}
\begin{align}
\braket{ 0|\mathcal{T}x(t)x(t')|0 } & =-\frac{\delta ^{2}\log Z[J]}{\delta J_{x}(t)\delta J_{x}(t')}\Big|_{J=0} \\
 & =D^{-1}(t,t')_{xx}= -\frac{1}{2\pi im'} \int \mathrm{d}p_{0} \frac{e^{-ip_{0}(t-t')}}{p_{0}^{2}-\omega ^{2}+i\varepsilon} \\
\braket{ 0|\mathcal{T}x(t)\phi(t')|0 } & = -\frac{\delta ^{2}\log Z[J]}{\delta J_{x}(t)\delta J_{\phi}(t')}\Big|_{J=0} \\
 & =D^{-1}(t,t')_{x\phi}=- \frac{1}{2\pi im'} \int \mathrm{d}p_{0} \frac{e^{-ip_{0}(t-t')}}{p_{0}^{2}-\omega ^{2}+i\varepsilon} i\lambda p_{0} \\
 & =\frac{\lambda}{2\pi im'} \partial _{t}\int \mathrm{d}p_{0} \frac{e^{-ip_{0}(t-t')}}{p_{0}^{2}-\omega ^{2}+i\varepsilon} \\
\braket{ 0|\mathcal{T}\phi(t)\phi(t')|0 } & =-\frac{\delta ^{2}\log Z[J]}{\delta J_{\phi}(t)\delta J_{\phi}(t')}\Big|_{J=0} \\
 & =D^{-1}(t,t')_{\phi \phi}=-\frac{1}{2\pi im'}\int \mathrm{d}p_{0} \frac{e^{-ip_{0}(t-t')}}{p_{0}^{2}-\omega ^{2}+i\varepsilon}(mp_{0}^{2}-k) \\
 & =\frac{\lambda ^{2}}{2\pi im'}\partial _{t}^{2} \int \mathrm{d}p_{0} \frac{e^{-ip_{0}(t-t')}}{p_{0}^{2}-\omega ^{2}+i\varepsilon}-\delta(t-t')
\end{align}
$$

in canonical formalism, we have

$$\tag{3.4}
\begin{align}
\braket{ 0|\mathcal{T}\phi(t)\phi(t')|0 } & =\frac{\lambda ^{2}}{2\pi im'} \partial _{t}^{2}\int \mathrm{d}p_{0}\frac{e^{-ip_{0}(t-t')}}{p_{0}^{2}-\omega ^{2}+i\varepsilon}-\frac{i \lambda ^{2}}{m'}\delta(t-t')
\end{align}
$$

---

keep $\displaystyle{\alpha}$ and $\displaystyle{\beta}$ finite and do the path integral again...

$$\tag{4.1}
\begin{align}
\frac{\braket{ 0|\mathcal{T}x(te^{-i\alpha})x(t'e^{-i\alpha})|0 }}{\braket{ 0|0 } }  & = \frac{\displaystyle{\int \mathcal{D}x\mathcal{D}\phi x(t)x(t') \exp\left(i \int _{-\infty}^{+\infty}\mathrm{d}t\left(\frac{1}{2}m\dot{x}^{2}e^{i\alpha}-\frac{1}{2}kx^{2}e^{-i\alpha}-\lambda \dot{x}\phi e^{i(\alpha+\beta)/2}+\frac{1}{2}\phi ^{2}e^{-i\beta}\right)\right)}}{\displaystyle{\int \mathcal{D}x\mathcal{D}\phi \exp\left(i \int _{-\infty}^{+\infty}\mathrm{d}t\left(\frac{1}{2}m\dot{x}^{2}e^{i\alpha}-\frac{1}{2}kx^{2}e^{-i\alpha}-\lambda \dot{x}\phi e^{i(\alpha+\beta)/2}+\frac{1}{2}\phi ^{2}e^{-i\beta}\right)\right)}}
\end{align}
$$

introduce

$$\tag{4.2}
\begin{align}
Z[J_{x},J_{\phi}] & = \int \mathcal{D}x\mathcal{D}\phi \exp\left(i \int _{-\infty}^{+\infty}\mathrm{d}t\left(\frac{1}{2}m\dot{x}^{2}e^{i\alpha}-\frac{1}{2}kx^{2}e^{-i\alpha}-\lambda \dot{x}\phi e^{i(\alpha+\beta)/2}+\frac{1}{2}\phi ^{2}e^{-i\beta}+J_{x}x+J_{\phi}\phi\right)\right) \\
 & =\int \mathcal{D}x\mathcal{D}\phi \exp\left(\int _{-\infty}^{+\infty}\mathrm{d}t\left(-\frac{i}{2}XDX^{T}+iJX^{T}\right)\right) \\
 & =\exp\left(-\frac{1}{2}\int \mathrm{d}t\mathrm{d}t'J(t)D^{-1}(t,t')J^{T}(t')\right)
\end{align}
$$

where

$$\tag{4.3}
\begin{align}
X & =\begin{pmatrix}x & \phi\end{pmatrix} \\
D & =\begin{pmatrix}me^{i\alpha} \frac{\mathrm{d}^{2}}{\mathrm{d}t^{2}}+ke^{-i\alpha} & -e^{i(\alpha+\beta)/2}\lambda \frac{\mathrm{d}}{\mathrm{d}t} \\e^{i(\alpha+\beta)/2}\lambda \frac{\mathrm{d}}{\mathrm{d}t} & -e^{-i\beta} \\\end{pmatrix} \\
J & =\begin{pmatrix}J_{x} & J_{\phi}\end{pmatrix}
\end{align}
$$

and $\displaystyle{D^{-1}(t,t')}$ satisfies

$$\tag{4.4}
\begin{align}
iDD^{-1}(t,t') & =\delta(t-t')\mathbb{1}_{2\times2} \\
\implies D^{-1}(t,t') & = -\frac{1}{2\pi im'} \int \mathrm{d}p_{0} \frac{e^{-ip_{0}(t-t')}}{p_{0}^{2}e^{i\alpha}-\omega ^{2}e^{-i\alpha}}\begin{pmatrix}
1 & i\lambda p_{0}e^{i(\alpha-\beta)/2} \\
-i\lambda p_{0}e^{i(\alpha-\beta)/2} & -mp_{0}^{2}e^{i(\alpha-\beta)}+ke^{-i(\alpha+\beta)}
\end{pmatrix}
\end{align}
$$

this can be done by some Fourier analysis and linear algebra. then we have

$$\tag{4.5}
\begin{align}
\braket{ x(t)x(t') }_{\alpha,\beta} & = \frac{\delta ^{2}\log Z[J]}{i^{2}\delta J_{x}(t)\delta J_{x}(t')}\Big|_{J=0} \\
 & =-\frac{1}{2\pi im'}\int \mathrm{d}p_{0} \frac{e^{-ip_{0}(t-t')}}{p_{0}^{2}e^{i\alpha}-\omega ^{2} e^{-i\alpha}} \\
\braket{ x(t)\phi(t') }_{\alpha,\beta} & = \frac{\delta ^{2}\log Z[J]}{i^{2}\delta J_{x}(t)\delta J_{\phi}(t')}\Big|_{J=0} \\
 & =-\frac{1}{2\pi im'}\int \mathrm{d}p_{0} \frac{e^{-ip_{0}}(t-t')}{p_{0}^{2}e^{i\alpha}-\omega ^{2}e^{-i\alpha}} i\lambda p_{0} e^{i(\alpha-\beta)/2} \\
\braket{ \phi(t)\phi(t') }_{\alpha,\beta} & = \frac{\delta ^{2}\log Z[J]}{i^{2}\delta J_{\phi}(t)\delta J_{\phi}(t')}\Big|_{J=0} \\
 & =-\frac{1}{2\pi im'}\int \mathrm{d}p_{0} \frac{e^{-ip_{0}}(t-t')}{p_{0}^{2}e^{i\alpha}-\omega ^{2}e^{-i\alpha}}(-mp_{0}^{2}e^{i(\alpha-\beta)}+ke^{-i(\alpha+\beta)})
\end{align}
$$

by taking $\displaystyle{\alpha,\beta\to0}$, we return the result in (3.3)

---

this section is referred from the Chapter sixteen in the *Quantization of Gauge Systems* by Henneaux and Teitelboim. 

$$\tag{5.1}
\begin{align}
L & =\frac{1}{2}m\dot{x}^{2}-\frac{1}{2}kx^{2}-\lambda \dot{x}\phi+\frac{1}{2}\phi ^{2}
\end{align}
$$

$$\tag{5.2}
\begin{align}
p_{x} & = \frac{\partial L}{\partial \dot{x}}=m\dot{x}-\lambda \phi \\
p_{\phi} & = \frac{\partial L}{\partial \dot{\phi}} =0
\end{align}
$$

then we get a primary constraint $\displaystyle{\varphi _{1}=p_{\phi}\approx 0}$. the Hamiltonian is

$$\tag{5.3}
\begin{align}
H & =p_{x}\dot{x}-L \\
 & =\frac{p_{x}^{2}}{2m}+\frac{\lambda p_{x}\phi}{m}+\left( \frac{\lambda ^{2}}{2m}-\frac{1}{2} \right)\phi ^{2}+\frac{1}{2}kx^{2}
\end{align}
$$

consider the Poisson bracket between $\displaystyle{\varphi _{1}}$ and $\displaystyle{H}$

$$\tag{5.4}
\begin{align}
\left\{\varphi _{1},H\right\} & =- \frac{\partial H}{\partial \phi} \\
 & =-\frac{\lambda p_{x}}{m}-\left( \frac{\lambda ^{2}}{m}-1 \right)\phi
\end{align}
$$

then we get a secondary constraint $\displaystyle{\varphi _{2}=-\frac{\lambda p_{x}}{m}-\left(\frac{\lambda ^{2}}{m}-1\right)\phi \approx 0}$, and

$$\tag{5.5}
\begin{align}
\left\{\varphi _{1},\varphi _{2}\right\} & =\frac{\lambda ^{2}}{m}-1
\end{align}
$$

define (here we do not concern about the overall factor $\displaystyle{\mathcal{N}}$)

$$\tag{5.6}
\begin{align}
Z[J_{x},J_{\phi}] & =\mathcal{N}\int \mathcal{D}x\mathcal{D}p_{x}\mathcal{D}\phi \mathcal{D}p_{\phi} \prod ^{2}_{i=1}\delta(\varphi _{i}) \det\left(\left\{\varphi _{i},\varphi _{j}\right\}\right)^{1/2} \exp\left(i \int _{-\infty}^{+\infty}\mathrm{d}t (p_{x}\dot{x}-H[x,\phi]+J_{x}x+J_{\phi}\phi)\right) \\
 & =\mathcal{N}\int \mathcal{D}x\mathcal{D}p_{x}\mathcal{D}\phi \mathcal{D}p_{\phi} \delta(p_{\phi}) \delta\left( -\frac{\lambda p_{x}}{m}-\left( \frac{\lambda ^{2}}{m}-1 \right)\phi \right)\exp\left(i \int ^{+\infty}_{-\infty}\mathrm{d}t\left(p_{x}\dot{x}-\frac{p_{x}^{2}}{2m}\right.\right. \\
 & \left.\left.-\frac{\lambda p_{x}\phi}{m}-\left( \frac{\lambda ^{2}}{2m}-\frac{1}{2} \right)\phi ^{2}-\frac{1}{2}kx^{2}+J_{x}x+J_{\phi}\phi\right)\right) \\
 & =\mathcal{N} \int \mathcal{D}x\mathcal{D}\phi \exp\left( i\int _{-\infty}^{+\infty}\mathrm{d}t\left( \lambda\dot{x}\phi\left( \frac{m}{\lambda ^{2}}-1 \right)-\frac{1}{2}\phi ^{2}\left( \frac{m}{\lambda ^{2}}-1 \right)-\frac{1}{2}kx^{2}+J_{x}x+J_{\phi}\phi \right)\right) \\
 & =\mathcal{N}\int \mathcal{D}x \exp\left(i \int _{-\infty}^{+\infty}\mathrm{d}t\left( \frac{1}{2}m'\dot{x}^{2}-\frac{1}{2}kx^{2}+J_{x}x+\lambda \dot{x}J_{\phi} \right)\right) \\
 & =\mathcal{N} \int \mathcal{D}x\exp\left(-\frac{1}{2}\int _{-\infty}^{+\infty}ixDx+i \int _{-\infty}^{+\infty}\mathrm{d}t(J_{x}-\lambda \dot{J}_{\phi})x\right) \\
 & =\mathcal{N} \exp\left(-\frac{1}{2}\int \mathrm{d}t \mathrm{d}t'(J_{x}-\lambda \dot{J}_{\phi})(t)D^{-1}(t,t')(J_{x}-\lambda \dot{J}_{\phi})(t')\right)\exp\left( -\frac{1}{2}\int ^{+\infty}_{-\infty}\mathrm{d}t J_{\phi}^{2} \right)
\end{align}
$$

here we integrate out $\displaystyle{\phi}$. $\displaystyle{D= m' \frac{\mathrm{d}^{2}}{\mathrm{d}t^{2}}+k}$ and $\displaystyle{D^{-1}(t,t')}$ satisfies

$$\tag{5.7}
\begin{align}
iDD^{-1}(t,t') & =\delta(t-t') \\
\implies D^{-1}(t,t') & =-\frac{1}{2\pi im} \int \mathrm{d}p_{0} \frac{e^{-ip_{0}(t-t')}}{p_{0}^{2}-\omega ^{2}+i\varepsilon}
\end{align}
$$

then we get the results in (2.3).

---

$$\tag{6.1}
\begin{align}
\braket{ x(t)\phi(t') }   & = \frac{\displaystyle{\int \mathcal{D}x\mathcal{D}\phi x(t)\phi(t') \exp\left(i \int _{-\infty}^{+\infty}\mathrm{d}t\left(\frac{1}{2}m\dot{x}^{2}e^{i\alpha}-\frac{1}{2}kx^{2}e^{-i\alpha}-\lambda \dot{x}\phi e^{i(\alpha+\beta)/2}+\frac{1}{2}\phi ^{2}e^{-i\beta}\right)\right)}}{\displaystyle{\int \mathcal{D}x\mathcal{D}\phi \exp\left(i \int _{-\infty}^{+\infty}\mathrm{d}t\left(\frac{1}{2}m\dot{x}^{2}e^{i\alpha}-\frac{1}{2}kx^{2}e^{-i\alpha}-\lambda \dot{x}\phi e^{i(\alpha+\beta)/2}+\frac{1}{2}\phi ^{2}e^{-i\beta}\right)\right)}}
\end{align}
$$

integrate out $\displaystyle{\phi}$.

$$\tag{6.2}
\begin{align}
\braket{ x(t)\phi(t') }_{\alpha,\beta}  & = \frac{\displaystyle\int \mathcal{D}x\mathcal{D}\phi x(t)\phi(t') \exp\left(i \int ^{+\infty}_{-\infty}\mathrm{d}t\left(\frac{1}{2}m\dot{x}^{2}e^{i\alpha}-\frac{1}{2}kx^{2}e^{-i\alpha}-\lambda \dot{x}\phi e^{i(\alpha+\beta)/2}+\frac{1}{2}\phi ^{2}e^{i\beta}\right)\right)}{\displaystyle \int \mathcal{D}x\mathcal{D}\phi \exp\left(i \int ^{+\infty}_{-\infty}\mathrm{d}t\left( \frac{1}{2}m\dot{x}^{2}e^{i\alpha}-\frac{1}{2}kx^{2}e^{-i\alpha}-\lambda \dot{x}\phi e^{i(\alpha+\beta)/2}+\frac{1}{2}\phi ^{2}e^{i\beta}\right)\right)} \\
 & = \frac{\displaystyle{\int \mathcal{D}xx(t) e^{i(\alpha-\beta)/2}\lambda \dot{x}(t')\exp\left(i \int ^{+\infty}_{-\infty} \mathrm{d}t\left( \frac{1}{2}m'\dot{x}^{2}e^{i\alpha}-\frac{1}{2}kx^{2}e^{-i\alpha} \right)\right)}}{\displaystyle{\int \mathcal{D}x \exp\left(i \int ^{+\infty}_{-\infty}\mathrm{d}t\left(\frac{1}{2}m'\dot{x}^{2}e^{i\alpha}-\frac{1}{2}kx^{2}e^{-i\alpha}\right)\right)}} \\
 & =e^{i(\alpha-\beta)/2}\lambda\braket{ x(t)\dot{x}(t') }_{\alpha} \\
 & =e^{i(\alpha-\beta)/2}\lambda \partial _{t'}\braket{ x(t)x(t') }_{\alpha} \\
 & =e^{i(\alpha-\beta)/2}\lambda \partial _{t'} \braket{ 0|\mathcal{T}x(te^{-i\alpha})x(t'e^{-i\alpha})|0 } \\
 & =e^{i(\alpha-\beta)/2}\lambda \braket{ 0|\mathcal{T}x(te^{-i\alpha})\dot{x}(t'e^{-i\alpha})|0 }  \\
 & = \braket{ 0|\mathcal{T}x(te^{-i\alpha})\phi(t'e^{-i\alpha})|0 } 
\end{align}
$$

similarly, we have

$$\tag{6.3}
\begin{align}
\braket{ \phi(t)\phi(t') } _{\alpha,\beta} & = \frac{\displaystyle{\int \mathcal{D}x\mathcal{D}\phi \phi(t)\phi(t')\exp\left(i \int ^{+\infty}_{-\infty}\mathrm{d}t\left(\frac{1}{2}m\dot{x}^{2}e^{i\alpha}-\frac{1}{2}kx^{2}e^{-i\alpha}-\lambda \dot{x}\phi e^{i(\alpha+\beta)/2}+\frac{1}{2}\phi ^{2}e^{i\beta}\right)\right)}}{\displaystyle{\int \mathcal{D}x\mathcal{D}\phi \exp\left(i \int ^{+\infty}_{-\infty}\mathrm{d}t\left(\frac{1}{2}m\dot{x}^{2}e^{i\alpha}-\frac{1}{2}kx^{2}e^{-i\alpha}-\lambda \dot{x}\phi e^{i(\alpha+\beta)/2}+\frac{1}{2}\phi ^{2}e^{i\beta}\right)\right)}} \\
 & = \frac{\displaystyle{\int \prod _{i}\mathrm{d}x_{i}\mathrm{d}\phi _{i}\phi _{i_{1}}\phi _{i_{2}}\exp\left(i\sum _{i}\Delta t\left(\frac{1}{2}m \left( \frac{x_{i+1}-x_{i}}{\Delta t} \right)^{2}e^{i\alpha}-\frac{1}{2}kx_{i}^{2}e^{-i\alpha}-\lambda\frac{x_{i+1}-x_{i}}{\Delta t}\phi _{i}e^{i(\alpha+\beta)/2}+\frac{1}{2}\phi ^{2}_{i}e^{i\beta}\right)\right)}}{\displaystyle{\int \prod _{i}\mathrm{d}x_{i}\mathrm{d}\phi _{i}\exp\left(i\sum _{i}\Delta t\left(\frac{1}{2}m \left( \frac{x_{i+1}-x_{i}}{\Delta t} \right)^{2}e^{i\alpha}-\frac{1}{2}kx_{i}^{2}e^{-i\alpha}-\lambda\frac{x_{i+1}-x_{i}}{\Delta t}\phi _{i}e^{i(\alpha+\beta)/2}+\frac{1}{2}\phi ^{2}_{i}e^{i\beta}\right)\right)}} \\
 & = \frac{\displaystyle{\int \prod _{i}\mathrm{d}x_{i}\mathrm{d}\phi _{i}\phi_{i_{1}}\phi _{i_{2}}\exp\left(i \sum _{i}\Delta t\left(\frac{1}{2}m'\left( \frac{x_{i+1}-x_{i}}{\Delta t} \right)^{2}e^{i\alpha}-\frac{1}{2}kx_{i}^{2}e^{-i\alpha}+\frac{1}{2}\left( \phi _{i}-\lambda\frac{x_{i+1}-x_{i}}{\Delta t}e^{i(\alpha-\beta)/2} \right)^{2}e^{i\beta}\right)\right)}}{\displaystyle{\int \prod _{i}\mathrm{d}x_{i}\mathrm{d}\phi _{i}\exp\left(i \sum _{i}\Delta t\left(\frac{1}{2}m'\left( \frac{x_{i+1}-x_{i}}{\Delta t} \right)^{2}e^{i\alpha}-\frac{1}{2}kx_{i}^{2}e^{-i\alpha}+\frac{1}{2}\left( \phi _{i}-\lambda\frac{x_{i+1}-x_{i}}{\Delta t}e^{i(\alpha-\beta)/2} \right)^{2}e^{i\beta}\right)\right)}} \\
 & =\frac{\displaystyle{\int \prod _{i}\mathrm{d}x_{i}\left( e^{i(\alpha-\beta)/2}\lambda  \frac{x_{i_{1+1}}-x_{i}}{\Delta t} e^{i(\alpha-\beta)/2}\lambda  \frac{x_{i_{2}+1}-x_{i_{2}}}{\Delta t}+\delta _{i_{1}i_{2}} \frac{i}{\Delta te^{i\beta}} \right)\exp\left(i\sum _{i}\Delta t\left(\frac{1}{2}m'  \left( \frac{x_{i+1}-x_{i}}{\Delta t} \right)^{2}e^{i\alpha}-\frac{1}{2}kx_{i}^{2}e^{-i\alpha}\right)\right)}}{\displaystyle{\int \prod _{i}\mathrm{d}x_{i}\exp\left(i\sum _{i}\Delta t\left(\frac{1}{2}m'\left( \frac{x_{i+1}-x_{i}}{\Delta t} \right)^{2}e^{i\alpha}-\frac{1}{2}kx_{i}^{2}e^{-i\alpha}\right)\right)}} \\
 & =\displaystyle{}
\end{align}
$$