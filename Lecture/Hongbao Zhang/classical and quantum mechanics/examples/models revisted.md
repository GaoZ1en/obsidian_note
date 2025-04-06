in this file we will reconsider all the models in [[Lecture/Hongbao Zhang/classical and quantum mechanics/examples/models|models]] and take the metric $\displaystyle{g_{\mu \nu}}$ as dynamical field (add the corresponding Einstein-Hilbert action), and try to find why under conformal transformation we will give the same result as diffeomorphism transformation???

$$\tag{.}
\begin{align}
\left\{H_{ij},x_{k}\right\} & =\frac{\partial H_{ij}}{\partial p_{l}} \frac{\partial x_{k}}{\partial x_{l}} \\
 & =\frac{\partial H_{ij}}{\partial p_{k}} \\
 & =\frac{\partial}{\partial p_{k}}\left( \frac{1}{2}p_{i}p_{j} \right)=\frac{1}{2}\delta _{ik}p_{j}+\frac{1}{2}\delta _{jk}p_{i}
\end{align}
$$

$$\tag{.}
\begin{align}
X_{\xi} & =\int _{M}\mathrm{d}^{d}x\left( \xi ^{\rho}\nabla _{\rho}\phi+\frac{d-2}{2d}\nabla _{\rho}\xi ^{\rho}\phi \right) \frac{\delta}{\delta \phi} \\
H_{\xi} & =\int _{\Sigma}\varepsilon _{\Sigma}\tau ^{\mu}\xi ^{\nu}T_{\mu \nu} \\
T_{\mu \nu} & =\nabla _{\mu}\phi \nabla _{\nu}\phi-\frac{1}{2}g_{\mu \nu}\nabla _{\rho}\phi \nabla ^{\rho}\phi+\frac{d-2}{4(d-1)}G_{\mu \nu}\phi ^{2}-\frac{d-2}{4d}\nabla _{\mu}\nabla _{\nu}\phi ^{2}+\frac{d-2}{4d}g_{\mu \nu}\nabla ^{\rho}\phi ^{2} \\
X_{\xi}\cdot \delta \phi ^{2} & =\xi ^{\rho}\nabla _{\rho}\phi ^{2}+\frac{d-2}{d}\nabla _{\rho}\xi ^{\rho}\phi ^{2}
\end{align}
$$

$$\tag{.}
\begin{align}
X_{\zeta}\cdot \delta H_{\xi} & =\int _{\Sigma}\varepsilon _{\Sigma}\tau ^{\mu}\xi ^{\nu}\left( \nabla _{\mu}(X_{\zeta}\cdot \delta \phi)\nabla _{\nu}\phi+\nabla _{\mu}\phi \nabla _{\nu}(X_{\xi}\cdot \delta \phi)-g_{\mu \nu}\nabla ^{\rho}\phi \nabla _{\rho}(X_{\xi}\cdot \delta \phi)-\frac{d-2}{4d}\nabla _{\mu}\nabla _{\nu}(X_{\xi}\cdot \delta \phi ^{2})+\frac{d-2}{4d}g_{\mu \nu}\nabla ^{\rho}\nabla _{\rho}(X_{\xi}\cdot \delta \phi ^{2}) \right) \\
 & =\int _{\Sigma}\varepsilon _{\Sigma}\tau ^{\mu}\xi ^{\nu}\left( \nabla _{\mu}\left( \xi ^{\rho}\nabla _{\rho}\phi+\frac{d-2}{2d}\nabla _{\rho}\xi ^{\rho}\phi  \right)\nabla _{\nu}\phi+\nabla _{\mu}\phi \nabla _{\nu}\left( \xi ^{\rho}\nabla _{\rho}\phi+\frac{d-2}{2d}\nabla _{\rho}\xi ^{\rho}\phi \right)-g_{\mu \nu}\nabla ^{\rho}\phi \nabla _{\rho}\left( \xi ^{\rho}\nabla _{\rho}\phi+\frac{d-2}{2d}\nabla _{\rho}\xi ^{\rho}\phi  \right) \right. \\
 & \left. -\frac{d-2}{4d}\nabla _{\mu}\nabla _{\nu}\left( \xi ^{\rho}\nabla _{\rho}\phi ^{2}+\frac{d-2}{d}\nabla _{\rho}\xi ^{\rho}\phi ^{2}  \right)+\frac{d-2}{4d}\nabla _{\rho}\nabla ^{\rho}\left( \xi ^{\sigma}\nabla _{\sigma}\phi^{2}+\frac{d-2}{d}\nabla _{\sigma}\xi ^{\sigma}\phi ^{2} \right) \right) \\
 & =\int _{\Sigma}\varepsilon _{\Sigma}\tau ^{\mu}\xi ^{\nu}\left( \nabla _{\mu}\xi ^{\rho}\nabla _{\rho}\phi \nabla _{\nu}\phi+\xi ^{\rho}\nabla _{\rho}\nabla _{\mu}\phi \nabla _{\nu}\phi+\frac{d-2}{2d}\nabla _{\mu}\nabla _{\rho}\xi ^{\rho}\phi \nabla _{\nu}\phi+\frac{d-2}{2d}\nabla _{\rho}\xi ^{\rho}\nabla _{\mu}\phi \nabla _{\nu}\phi \right. \\
 & +\nabla _{\mu}\phi \nabla _{\nu}\xi ^{\rho}\nabla _{\rho}\phi+\nabla _{\mu}\phi \xi ^{\rho}\nabla _{\rho}\nabla _{\nu}\phi+\frac{d-2}{2d}\nabla _{\mu}\phi \nabla _{\nu}\nabla _{\rho}\xi ^{\rho}\phi+\frac{d-2}{2d}\nabla _{\mu}\phi\nabla _{\nu}\phi \nabla _{\rho}\xi ^{\rho} \\
 & -g_{\mu \nu}\nabla ^{\rho}\phi \nabla _{\rho}\xi _{\sigma}\nabla ^{\sigma}\phi-g_{\mu \nu}\nabla ^{\rho}\phi \nabla _{\rho}\nabla _{\sigma}\phi \xi ^{\sigma}-\frac{d-2}{2d}g_{\mu \nu}\nabla ^{\rho}\phi \nabla _{\rho}\nabla _{\sigma}\xi ^{\sigma}\phi-\frac{d-2}{2d}g_{\mu \nu}\nabla ^{\rho}\phi \nabla _{\rho}\phi \nabla _{\sigma}\xi ^{\sigma} \\
 & -\frac{(d-2)^{2}}{4d^{2}}\nabla _{\mu}\nabla _{\nu}\phi ^{2}\nabla _{\rho}\xi ^{\rho}+\frac{(d-2)^{2}}{4d^{2}}\nabla ^{2}\phi ^{2}\nabla _{\rho}\xi ^{\rho} \\
 & -\frac{d-2}{4d}\nabla _{\mu}\nabla _{\nu}\xi ^{\rho}\nabla _{\rho}\phi ^{2}-\frac{d-2}{4d}\nabla _{\nu}\xi ^{\rho}\nabla _{\mu}\nabla _{\rho}\phi ^{2}-\frac{d-2}{4d}\nabla _{\mu}\xi ^{\rho}\nabla _{\nu}\nabla _{\rho}\phi ^{2} \\
 & +\frac{d-2}{4d}\nabla ^{2}\xi ^{\sigma}\nabla _{\sigma}\phi ^{2}+\frac{d-2}{2d}\nabla ^{\rho}\xi ^{\sigma}\nabla _{\rho}\nabla _{\sigma}\phi ^{2}
\end{align}
$$