the metric in global coordiante for $\mathrm{AdS}_{n}$ is

$$\tag{1.1}
\begin{align}
\mathrm{d}s^{2} & =\frac{1}{\cos ^{2}\rho}(-\mathrm{d}t^{2}+\mathrm{d}\rho ^{2}+\sin ^{2}\rho \mathrm{d}\Omega ^{2}_{n-2})
\end{align}
$$

where $\displaystyle{t\in(-\infty,+\infty)}$, $\displaystyle{\rho \in \left[ 0, \frac{\pi}{2} \right)}$, and $\displaystyle{\mathrm{d}\Omega ^{2}_{n-2}}$ is the metric for unit sphere $\displaystyle{S^{n-2}}$. the Laplacian is given by

$$\tag{1.2}
\begin{align}
\Delta\phi & =\frac{1}{\sqrt{ -g }}\partial _{\mu}(\sqrt{ -g }g^{\mu \nu}\partial _{\nu}\phi) \\
 & =-\cos ^{2}\rho \partial _{t}^{2}\phi+\frac{\cos ^{2}\rho}{\sin ^{2}\rho}\Delta _{S^{n-2}\phi}+\cos ^{2}\rho \partial _{\rho}^{2}\phi+\frac{n-2}{\tan \rho}\partial _{\rho}\phi
\end{align}
$$

then the Klein-Gordon equation is

$$\tag{1.2}
\begin{align}
(\Delta -m^{2})\phi & =0
\end{align}
$$

make the ansatz $\displaystyle{\phi=e^{-i \omega t}Y_{\ell,\left\{m_{i}\right\}}(\Omega _{n-2})R(\rho)}$, where $\displaystyle{Y_{\ell,\left\{m_{i}\right\}}(\Omega _{n-2})}$ is the hyperspherical harmonics defined on $\displaystyle{S^{n-2}}$, which satisfy

$$\tag{1.3}
\begin{align}
\Delta _{S^{n-2}}Y_{\ell,\left\{m_{i}\right\}}(\Omega _{n-2}) & =-\ell(\ell+n-3)Y_{\ell,\left\{m_{i}\right\}}(\Omega _{n-2})
\end{align}
$$

$\displaystyle{\ell}$ is the principal angular momentum quantum number and $\displaystyle{\left\{m_{i}\right\}}$ represents the set of $\displaystyle{n-3}$ magnetic quantum numbers. then we have

$$\tag{1.4}
\begin{align}
\cos ^{2}\rho \partial _{\rho}^{2}R+\frac{n-2}{\tan \rho}\partial _{\rho}R+\left( \omega ^{2}\cos ^{2}\rho -\frac{l(l+n-3)}{\tan ^{2}\rho} -m^{2}\right)R=0
\end{align}
$$

substitute 

$$\tag{1.5}
\begin{align}
z & =\sin ^{2}\rho \\
R(\rho) & =(\sin \rho)^{\ell} (\cos\rho)^{\Delta} F(z)
\end{align}
$$

then we have

$$\tag{.}
\begin{align}
(1-z)(4z(1-z)\partial _{z}^{2}+2(1-2z)\partial _{z})()
\end{align}
$$

$$\tag{.}
\begin{align}
\partial _{\rho}^{2} & =4\sqrt{ z(1-z) }\partial _{z}(\sqrt{ z(1-z) }\partial _{z}) \\
 & =4z(1-z)\partial _{z}^{2}+2(1-2z)\partial _{z} \\
R(\rho) & =(\sin \rho)^{\ell} (\cos\rho)^{\Delta} F(z) \\
 & =z^{\ell/2} (1-z)^{\Delta/2} F(z) \\
\partial _{\rho}^{2}R & =4z(1-z)\partial _{z}^{2}(z^{\ell/2}(1-z)^{\Delta/2}F(z))+2(1-2z)\partial _{z}(z^{\ell/2}(1-z)^{\Delta/2}F(z)) \\
 & =
\end{align}
$$

$$\tag{.}
\begin{align}
\partial _{z}(z^{\ell/2}(1-z)^{\Delta/2}F(z)) & =\frac{\ell}{2}z^{\ell/2-1}(1-z)^{\Delta/2}F(z)-\frac{\Delta}{2}z^{\ell/2}(1-z)^{\Delta/2-}F(z)+z^{\ell/2}(1-z)^{\Delta/2}\partial _{z}F(z) \\
\partial _{z}^{2}(z^{\ell/2}(1-Z)^{\Delta/2}F(z)) & =\frac{\ell}{2}\left( \frac{\ell}{2}-1 \right)z^{\ell/2-2}(1-z)^{\Delta/2}F(z)+\frac{\Delta}{2}\left( \frac{\Delta}{2}-1 \right)z^{\ell/2}(1-z)^{\Delta/2-2}F(z)+z^{\ell/2}(1-z)^{\Delta/2}\partial _{z}^{2}F(z) \\
 & +\frac{\Delta \ell}{2}
\end{align}
$$

$$\tag{1.6}
\begin{align}
\cos ^{2}\rho & =1-z \\
\sin ^{2} \rho & =z \\
\tan \rho & =\frac{\sin \rho}{\cos \rho}=\sqrt{ \frac{z}{1-z} } \\
\partial _{\rho} & =\frac{\mathrm{d}z}{\mathrm{d}\rho} \partial _{z} \\
 & =2\sqrt{ z(1-z) }\partial _{z}
\end{align}
$$
