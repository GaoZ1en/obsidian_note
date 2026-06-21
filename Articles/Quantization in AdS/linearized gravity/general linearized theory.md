in general we want to find a linearized/effective theory for a general field theory

$$\begin{align}
S & =\int \mathbf{L}[\phi]
\end{align}$$

around a background solution $\phi^{(0)}$ satisfying the eom

$$\begin{align}
\left.\frac{\delta \mathbf{L}[\phi]}{\delta \phi}\right|_{\phi=\phi^{(0)}} & =0
\end{align}$$

take the expansion

$$\begin{align}
\phi & =\phi ^{(0)}+\varepsilon\delta \phi+\varepsilon ^{2}\delta ^{2}\phi+\dots
\end{align}$$

where $\displaystyle{\varepsilon}$ is a parameter that controls the order of the perturbation. the action can be rigorously expanded in $\varepsilon$ using the Taylor series as:

$$\begin{align}
S[\phi] & =S[\phi ^{(0)}]+\sum ^{\infty}_{n=1} \frac{\varepsilon ^{n}}{n!} \frac{\mathrm{d}^{n}S}{\mathrm{d}\varepsilon ^{n}}\bigg|_{\varepsilon=0}
\end{align}$$

by using the chain rule, the derivatives are evaluated as:

$$\begin{align}
\frac{\mathrm{d}S}{\mathrm{d}\varepsilon}\bigg|_{\varepsilon=0} & =\int \left.\frac{\delta \mathbf{L}}{\delta \phi}\right|_{\phi ^{(0)}}\delta \phi \\
\frac{\mathrm{d}^{2}S}{\mathrm{d}\varepsilon ^{2}}\bigg|_{\varepsilon=0} & =\int \left( \left.\frac{\delta \mathbf{L}}{\delta \phi}\right|_{\phi ^{(0)}}2\delta ^{2}\phi +\left.\frac{\delta ^{2}\mathbf{L}}{\delta \phi ^{2}}\right|_{\phi ^{(0)}}(\delta \phi)^{2} \right)
\end{align}$$

in general, we have

$$\begin{align}
\frac{\mathrm{d}^{n}S}{\mathrm{d}\varepsilon ^{n}}\bigg|_{\varepsilon=0} & =\int \left( \sum ^{n}_{m=1} \left. \frac{\delta ^{m}\mathbf{L}}{\delta \phi ^{m}} \right|_{\phi ^{(0)}} \sum _{\substack{k_1, k_2, \dots, k_m \geq 1 \\
k_1 + k_2 + \dots + k_m = n}} \frac{n!}{k_1! k_2! \dots k_m!} \delta^{k_1} \phi \delta^{k_2} \phi \dots \delta^{k_m} \phi \right)
\end{align}$$

therefore, the full expansion of the action up to $\displaystyle{\mathcal{O}(\varepsilon ^{2})}$ is

$$\begin{align}
S[\phi] & =S[\phi ^{(0)}]+\varepsilon \int \left.\frac{\delta \mathbf{L}}{\delta \phi}\right|_{\phi ^{(0)}}\delta \phi +\varepsilon ^{2}\int \left( \left.\frac{\delta \mathbf{L}}{\delta \phi}\right|_{\phi ^{(0)}}\delta ^{2}\phi +\frac{1}{2}\left.\frac{\delta ^{2}\mathbf{L}}{\delta \phi ^{2}}\right|_{\phi ^{(0)}}(\delta \phi)^{2} \right) +\mathcal{O}(\varepsilon ^{3}) \\
 & =S[\phi ^{(0)}]+\frac{1}{2}\varepsilon ^{2}\int \frac{\delta ^{2}\mathbf{L}}{\delta \phi ^{2}}(\delta \phi)^{2}+\mathcal{O}(\varepsilon ^{3})
\end{align}$$

thus the linearized theory is governed by the quadratic action

$$\begin{align}
S^{(2)}[\delta \phi] & =\frac{1}{2}\int \left. \frac{\delta ^{2}\mathbf{L}}{\delta \phi ^{2}} \right|_{\phi ^{(0)}}(\delta \phi)^{2}
\end{align}$$
