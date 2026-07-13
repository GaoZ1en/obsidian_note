$$
\tag{.}
\begin{align}
\pi _{i}(x) & =\dot{A}_{i}(x)-\int \mathrm{d}^{3}\vec{y}\partial _{x,i}G(\vec{x},\vec{y})\partial _{y,j}\dot{A}^{j}(y) \\
\dot{A}^{i}(x) & =\left(\delta ^{ij}-\frac{\partial ^{i}_{x}\partial ^{j}_{x}}{m^{2}}\right)\pi _{j}(x) \\
G(\vec{x},\vec{y}) & =-\frac{1}{4\pi} \frac{e^{-im|\vec{x}-\vec{y}|}}{|\vec{x}-\vec{y}|} \\
G(\vec{k}) & =-\frac{1}{\vec{k}^{2}+m^{2}}
\end{align}
$$

$$
\tag{.}
\begin{align}
\pi _{i}(x) & =\delta _{ij}\dot{A}^{j}(x)+\partial _{i}A^{0} \\
\partial _{i}A^{0} & =\pi _{i}(x)-\left(\delta _{i}^{k}-\frac{\partial _{i}\partial ^{k}}{m^{2}}\right)\pi _{k}(x) \\
 & =\frac{\partial _{i}\partial ^{k}}{m^{2}}\pi _{k}
\end{align}
$$

$$
\tag{.}
\begin{align}
A^{0}(x)=\frac{1}{m^{2}}\partial _{i}\pi ^{i}(x)
\end{align}
$$

$$
\tag{.}
\begin{align}
\mathcal{L}_{eff} & =-\frac{1}{4}(\partial _{i}A^{j}-\partial _{j}A^{i})^{2}+\frac{1}{2}\delta _{ij}\left( \delta ^{ik}-\frac{\partial ^{i}\partial ^{k}}{m^{2}} \right)\pi _{k}\left(\delta ^{jl}-\frac{\partial ^{j}\partial ^{l}}{m^{2}}\right)\pi _{l}+\left(\delta ^{ij}-\frac{\partial ^{i}\partial ^{j}}{m^{2}}\right)\pi _{j}\frac{\partial _{i}\partial ^{k}}{m^{2}}\pi _{k}+\frac{1}{2}\delta ^{ij}\frac{\partial _{i}\partial ^{k}\pi _{k}}{m^{2}} \frac{\partial _{j}\partial ^{l}\pi _{l}}{m^{2}}+\frac{1}{2}m^{2} \frac{\partial _{i}\pi ^{i}}{m^{2}} \frac{\partial _{j}\pi ^{j}}{m^{2}}-\frac{1}{2}m^{2}(A^{i})^{2} \\
 & =-\frac{1}{4}(\partial _{i}A^{j}-\partial _{j}A^{i})^{2}+\frac{1}{2}\delta ^{ij}\pi _{i}\pi _{j}+\frac{1}{2m^{2}}\partial ^{i}\pi _{i}\partial ^{j}\pi _{j}-\frac{1}{2}m^{2}\delta _{ij}A^{i}A^{j} \\
\mathcal{H}_{\mathrm{eff}}[\pi _{i},A^{i}] & =\frac{1}{2}\delta ^{ij}\pi _{i}\pi _{j}+\frac{1}{2m^{2}}\partial ^{i}\pi _{i}\partial ^{j}\pi _{j}+\frac{1}{4}(\partial _{i}A^{j}-\partial _{j}A^{i})^{2}+\frac{1}{2}m^{2}\delta _{ij}A^{i}A^{j}
\end{align}
$$

$$
\tag{.}
\begin{align}
\mathcal{N} & \int \prod ^{n-1}_{a=1}DA^{i_{a}}_{a}\prod ^{n}_{b=1}D\pi ^{b}_{j_{b}}\exp\left( \sum ^{n}_{k=1}\int \mathrm{d}^{3}x-\frac{1}{2}\pi ^{k}_{i}i\Delta te^{-i\alpha}\left( \delta ^{ij}-\frac{1}{m^{2}}\partial ^{i}\partial ^{j} \right)\pi ^{k}_{j}+i\pi ^{k}_{j}\Delta te^{-i\alpha}(A^{j}_{k}-A^{j}_{k-1})-i\Delta te^{-i\alpha}\sum ^{n}_{k=1}\int \mathrm{d}^{3}x\left(\frac{1}{4}(\partial _{i}A_{k}^{j}-\partial _{j}A_{k}^{i})^{2}+\frac{1}{2}m^{2}\delta _{ij}A_{k}^{i}A_{k}^{j}\right)\right) \\
\mathcal{N} & \int \prod ^{n-1}_{a=1}DA^{i_{a}}_{a}\exp\left(i\Delta t \sum ^{n}_{k=1}\int \mathrm{d}^{3}x\left(-\frac{1}{4}(\partial _{i}A_{k}^{j}-\partial _{j}A_{k}^{i})^{2}e^{-i\alpha}-\frac{1}{2}m^{2}(A^{i})^{2}e^{-i\alpha}+\frac{1}{2}\left(\frac{A^{j}_{k}-A^{j}_{k-1}}{\Delta t}\right)^{2}e^{i\alpha}+\right)\right)
\end{align}
$$

$$
\tag{.}
\begin{align}
\mathcal{N} & \int \prod ^{n-1}_{a=1}DA^{i_{a}}_{a}\prod ^{n}_{b=1}D\pi ^{b}_{j_{b}}\exp\left( \sum ^{n}_{k=1}\int \mathrm{d}^{3}x-\frac{1}{2}\pi ^{k}_{i}i\Delta te^{-i\alpha}\left( \delta ^{ij}-\frac{1}{m^{2}}\partial ^{i}\partial ^{j} \right)\pi ^{k}_{j}+i\pi ^{k}_{j}\Delta te^{-i\alpha}(A^{j}_{k}-A^{j}_{k-1})-i\Delta te^{-i\alpha}\sum ^{n}_{k=1}\int \mathrm{d}^{3}x\left(\frac{1}{4}(\partial _{i}A_{k}^{j}-\partial _{j}A_{k}^{i})^{2}+\frac{1}{2}m^{2}\delta _{ij}A_{k}^{i}A_{k}^{j}\right)\right) \\
\mathcal{N} & \int \prod ^{n-1}_{a=1}DA^{i_{a}}_{a}\exp\left(i\Delta t \sum ^{n}_{k=1}\int \mathrm{d}^{3}x\left(-\frac{1}{4}(\partial _{i}A_{k}^{j}-\partial _{j}A_{k}^{i})^{2}e^{-i\alpha}-\frac{1}{2}m^{2}(A^{i})^{2}e^{-i\alpha}+\frac{1}{2}\left(\frac{A^{j}_{k}-A^{j}_{k-1}}{\Delta t}\right)^{2}e^{i\alpha}\right.\right. \\
 & \left. \left. -\frac{A^{j}_{k}-A^{j}_{k-1}}{\Delta t}\int \mathrm{d}^{3}\vec{y}\partial _{i}G(\vec{x},\vec{y})\partial _{j}\dot{A}^{j}(y)e^{i\alpha}+\frac{1}{2}\int \mathrm{d}^{3}\vec{y}\partial _{i}G(\vec{x},\vec{y})\partial _{j}\dot{A}^{j}(y)\int \mathrm{d}^{3}\vec{z}\partial _{i}G(\vec{x},\vec{z})\partial _{k}\dot{A}^{k}(z)e^{i\alpha} \right) \right)
\end{align}
$$

$$
\tag{.}
\begin{align}
\mathcal{L}_{\mathrm{eff}} & =-\frac{1}{2}A^{i}(\partial _{i}\partial _{j}-\delta _{ij}(\vec{\nabla}^{2}-m^{2}))A^{j}+\frac{1}{2}(\dot{A}^{i})^{2}+\dot{A}^{i}\int \mathrm{d}^{3}\vec{y}\partial _{x,i}G(\vec{x},\vec{y})\partial _{y,j}\dot{A}^{j}(y)+\frac{1}{2}\int \mathrm{d}^{3}\vec{y}\partial _{x,i}G(\vec{x},\vec{y})\partial _{y,j}\dot{A}^{j}(y)\int \mathrm{d}^{3}\vec{z}\partial _{x,i}G(\vec{x},\vec{z})\partial _{z,k}\dot{A}^{k}(z) \\
 & +\frac{1}{2}m^{2}\int \mathrm{d}^{3}\vec{y}G(\vec{x},\vec{y})\partial _{y,j}\dot{A}^{j}(y)\int \mathrm{d}^{3}\vec{z}G(\vec{x},\vec{z})\partial _{z,k}\dot{A}^{k}(z)
\end{align}
$$

$$
\tag{.}
\begin{align}
\frac{\delta S}{\delta A^{i}} & =-(\partial _{i}\partial _{j}-\delta _{ij}(\vec{\nabla}^{2}-m^{2}))A^{j} \\
\frac{\delta S}{\delta \dot{A}^{i}} & = \dot{A}_{i}(x)-\int \mathrm{d}^{3}\vec{y}\partial _{x,i}G(\vec{x},\vec{y})\partial _{y,j}\dot{A}^{j}(\vec{y},x_{0})
\end{align}
$$

the equation of motion is

$$
\tag{.}
\begin{align}
(\partial _{i}\partial _{j}-\delta _{ij}(-\partial _{0}^{2}+\vec{\nabla}^{2}-m^{2}))A^{j}=\int \mathrm{d}^{3}\vec{y}\partial _{x,i}G(\vec{x},\vec{y})\partial _{y,j}\ddot{A}^{j}(y)
\end{align}
$$

$$
\tag{.}
\begin{align}
(\vec{k}^{2}+m^{2})A^{j}(\vec{k}) & =-\ddot{A}^{j}(\vec{k})
\end{align}
$$

---

$$\begin{align}
\mathrm{d}s^{2} & =-(1+r^{2})\mathrm{d}t^{2}+\frac{\mathrm{d}r^{2}}{1+r^{2}}+r^{2}\mathrm{d}\phi ^{2}
\end{align}$$

$$\begin{align}
\sqrt{ -g } & = r
\end{align}$$

$$\begin{align}
\sqrt{ -g }\left(-\frac{1}{4}F_{\mu \nu}F^{\mu \nu}-\frac{1}{2}\mu ^{2}A_{\mu}A^{\mu}\right) & =\sqrt{ -g }\left(-\frac{1}{2}F_{tr}F^{tr}-\frac{1}{4}F_{r\phi}F^{r\phi}-\frac{1}{4}F_{t\phi}F^{t\phi}-\frac{1}{2}\mu ^{2}A_{t}A^{t}-\frac{1}{2}\mu ^{2}A_{r}A^{r}-\frac{1}{2}\mu ^{2}A_{\phi}A^{\phi}\right) \\
 & =r(o(r^{-1})o(r^{-1})+o(r^{-1})o(r^{-1})+o(r^{0})o(r^{-4})+o(r^{0})o(r^{-2})+o(r^{-3})o(r^{-1})+o(r^{0})o(r^{-2})) \\
 & =o(r^{-1})
\end{align}$$

$$\begin{align}
\sqrt{ -g }(\nabla ^{\nu}F_{\nu \mu}-\mu ^{2}A_{\mu})\delta A^{\mu} & =r(o(r^{0})+o(r^{0}))o(r^{-2})+r(o(r^{-1})+o(r^{-3}))o(r^{-1})+r(o(r^{0})+o(r^{0}))o(r^{-2}) \\
 & =o(r^{-1}) \\
\sqrt{ \sigma }\tau ^{\mu}F_{\mu \nu}\delta A^{\nu} & =\frac{r}{\sqrt{ 1+r^{2} }} \frac{1}{\sqrt{ 1+r^{2} }}(o(r^{-1})o(r^{-1})+o(r^{0})o(r^{-2})) \\
 & =o(r^{-3}) \\
\sqrt{ -\gamma }n^{\mu}F_{\mu \nu}\delta A^{\nu} & =o(r^{3})o(r^{-3})=o(r^{0})
\end{align}$$

$$\begin{align}
\sqrt{ \sigma }\tau _{\rho}\xi ^{\rho}\left(\frac{1}{4}F_{\mu \nu}F^{\mu \nu}+\frac{1}{2}\mu ^{2}A_{\mu}A^{\mu}\right) & =o(r^{0})o(\tau _{\rho}\xi ^{\rho})o(r^{-2}) \\
 & =o(r^{-1}) \\
\sqrt{ -\gamma }n_{\rho}\xi ^{\rho}\left(-\frac{1}{4}F_{\mu \nu}F^{\mu \nu}-\frac{1}{2}\mu ^{2}A_{\mu}A^{\mu}\right) & =o(r^{2})o(n_{\rho}\xi ^{\rho})o(r^{-2}) \\
 & =o(r^{0})
\end{align}$$

$$\begin{align}
F_{tr} & =o(r^{-1}) \\
F_{t\phi} & =o(r^{0}) \\
F_{r\phi} & =o(r^{-1}) \\
\delta A^{t} & =o(r^{-2}) \\
\delta A^{\phi} & =o(r^{-2}) \\
A_{t} & =o(r^{0}) \\
A_{r} & =o(r^{-3}) \\
A_{\phi} & =o(r^{0})
\end{align}$$

$$\begin{align}
\sqrt{ \sigma }\tau ^{\mu}\xi ^{\nu}\left( F_{\mu \rho}F_{\nu}^{~\rho}-\frac{1}{4}g_{\mu \nu}F_{\rho \sigma}F^{\rho \sigma}+\mu ^{2}A_{\mu}A_{\nu}-\frac{1}{2}\mu ^{2}g_{\mu \nu}A_{\rho}A^{\rho} \right) & =o(r^{-1})\xi ^{\nu}\left( F_{t\rho}F_{\nu}^{~\rho}+o(r^{0})A_{\nu}+\delta ^{t}_{\nu}o(r^{0}) \right) \\
 & =o(r^{-1}) \\
\sqrt{ h }\hat{n}_{a}\sigma ^{a}_{~\mu}\tau _{\nu}F^{\mu \nu}A^{\rho}\xi _{\rho} & =o(r^{1})o(r^{1})o(r^{1})o(r^{-1})o(r^{-2}) \\
 & =o(r^{0})
\end{align}$$
