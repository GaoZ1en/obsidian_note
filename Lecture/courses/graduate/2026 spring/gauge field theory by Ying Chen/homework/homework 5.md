# problem 1

the Lagrangian of a free complex scalar is

$$\begin{align}
\mathcal{L} & =(\partial _{\mu}\phi ^{*})\partial ^{\mu}\phi-m^{2}\phi ^{*}\phi
\end{align}$$

prove that the generating functional is

$$\begin{align}
Z[J^{*},J] & =\int \mathcal{D}\phi ^{*}\mathcal{D}\phi \exp\left(i \int \mathrm{d}^{4}x\left(\mathcal{L}(x)+J^{*}(x)\phi(x)+J(x)\phi ^{*}(x)\right)\right) \\
 & =\frac{1}{N}\exp\left(-\iint \mathrm{d}^{4}x\mathrm{d}^{4}yJ(x)D_{F}(x-y)J^{*}(y)\right)
\end{align}$$

## solution

by defining

$$\begin{align}
\phi & =\frac{1}{\sqrt{ 2 }}(\phi_{1}+i\phi _{2}) \\
J & =\frac{1}{\sqrt{ 2 }}(J_{1}+iJ_{2})
\end{align}$$

we have

$$\begin{align}
Z[J_{1},J_{2}] & =\int \mathcal{D}\phi ^{*}\mathcal{D}\phi \exp\left(i \int \mathrm{d}^{4}x\left(\mathcal{L}_{0}[\phi_{1}]+\mathcal{L}_{0}[\phi_{2}]+J_{1}\phi_{1}+J_{2}\phi_{2}\right)\right) \\
 & =\frac{1}{N}\exp\left(-\frac{i}{2}\int \mathrm{d}^{4}x\mathrm{d}^{4}yJ_{1}(x)D_{F}(x-y)J_{1}(y)-\frac{i}{2}\int \mathrm{d}^{4}x\mathrm{d}^{4}yJ_{2}(x)D_{F}(x-y)J_{2}(y)\right) \\
 & =\frac{1}{N}\exp\left(-i\int \mathrm{d}^{4}x\mathrm{d}^{4}yJ(x)D_{F}(x-y)J^{*}(y)\right)
\end{align}$$

where $\displaystyle{\mathcal{L}_{0}=\frac{1}{2}\partial _{\mu}\phi \partial ^{\mu}\phi-\frac{1}{2}m^{2}\phi^{2}}$ is the Lagrangian for free real scalar.

# problem 2

prove the Furry theorem. 

## solution

consider

$$\begin{align}
\braket{ \Omega|TA_{\mu_{1}}(x_{1})\dots A_{\mu _{n}}(x_{n})|\Omega }  & =\frac{1}{Z}\int \mathcal{D}\Phi A_{\mu_{1}}(x_{1})\dots A_{\mu _{n}}(x_{n})\exp\left(iS[\Phi]\right) \\
 & =\frac{1}{Z}\int \mathcal{D}(\mathcal{C}\Phi\mathcal{C}^{-1})\mathcal{C}A_{\mu_{1}}(x_{1})\mathcal{C}^{-1}\dots \mathcal{C}A_{\mu _{n}}(x_{n})\mathcal{C}^{-1}\exp\left(iS[\mathcal{C}\Phi\mathcal{C}^{-1}]\right) \\
 & =(-1)^{n}\frac{1}{Z}\int \mathcal{D}\Phi A_{\mu_{1}}(x_{1})\dots A_{\mu _{n}}(x_{n})\exp\left(iS[\Phi]\right) \\
 & =-\braket{ \Omega|TA_{\mu_{1}}(x_{1})\dots A_{\mu _{n}}(x_{n})|\Omega }  \\
\implies\braket{ \Omega|TA_{\mu_{1}}(x_{1})\dots A_{\mu _{n}}(x_{n})|\Omega } & =0
\end{align}$$

here $\displaystyle{n\in2\mathbb{N}+1}$ and $\displaystyle{\Phi}$ denotes all QED fields. The second equality is ensured by the charge conjugation symmetry of the theory and invariance of the path-integral measure.

# problem 3

calculate the vacuum expectation of the Wilson loop

$$\begin{align}
\braket{ U_{P}(x,x) }  & =\exp\left[-\oint _{P}\mathrm{d}x^{\mu}\oint \mathrm{d}y^{\nu} \eta_{\mu \nu}\frac{1}{8\pi ^{2}[(x-y)^{2}-i\varepsilon]}\right]
\end{align}$$

here $\displaystyle{U_{P}(x,x)}$ is the Wilson loop defined as

$$\begin{align}
U_{P}(x,x) & =\mathcal{P}\exp\left(i\oint _{P}\mathrm{d}x^{\mu}A_{\mu}(x)\right)
\end{align}$$

## solution

we write

$$\begin{align}
\oint _{P}\mathrm{d}x^{\mu}A_{\mu}(x) & =\int \mathrm{d}^{4}xJ^{\mu}A_{\mu} \\
J^{\mu}(x) & =\oint \mathrm{d}y^{\mu}\delta ^{(4)}(x-y)
\end{align}$$

we have

$$\begin{align}
\braket{ U_{P}(x,x) }  & =\frac{1}{Z}\int \mathcal{D}A \exp\left(i\oint _{P}\mathrm{d}x^{\mu}A_{\mu}(x)\right)e^{iS[A]} \\
 & =\frac{1}{Z}\int \mathcal{D}A\exp\left(iS[A]+i\int _{M}\mathrm{d}^{4}x J^{\mu}A_{\mu}\right) \\
 & =\exp\left(-\frac{1}{2}\int \mathrm{d}^{4}x\mathrm{d}^{4}y J_{\mu}(x)D_{F}^{\mu \nu}(x-y)J_{\nu}(y)\right)
\end{align}$$

here we choose the Feynman gauge and the propagator is given by

$$\begin{align}
D_{F}^{\mu \nu}(x-y) & =\eta ^{\mu \nu}D_{F}(x-y),\qquad D_{F}(x-y)=\frac{1}{4\pi ^{2}[(x-y)^{2}-i\varepsilon]}
\end{align}$$

then

$$\begin{align}
\braket{ U_{P}(x,x) }  & =\exp\left(-\frac{1}{2}\int \mathrm{d}^{4}x\mathrm{d}^{4}yJ_{\mu}(x)\eta ^{\mu \nu}D_{F}(x-y)J_{\nu}(y)\right) \\
 & =\exp\left(-\oint _{P}\mathrm{d}x^{\mu}\oint _{P}\mathrm{d}y^{\nu}\eta _{\mu \nu} \frac{1}{8\pi ^{2}[(x-y)^{2}-i\varepsilon]}\right)
\end{align}$$

