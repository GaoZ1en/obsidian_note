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

make the ansatz $\displaystyle{\phi=e^{-i \omega t}Y_{\ell \mathbf{m}}(\Omega _{n-2})R(\rho)}$, where $\displaystyle{Y_{\ell \mathbf{m}}(\Omega _{n-2})}$ is the hyperspherical harmonics defined on $\displaystyle{S^{n-2}}$, which satisfy

$$\tag{1.3}
\begin{align}
\Delta _{S^{n-2}}Y_{\ell \mathbf{m}}(\Omega _{n-2}) & =-\ell(\ell+n-3)Y_{\ell \mathbf{m}}(\Omega _{n-2})
\end{align}
$$

$\displaystyle{\ell}$ is the principal angular momentum quantum number and $\displaystyle{\mathbf{m}}$ represents the set of $\displaystyle{n-3}$ magnetic quantum numbers. then we have

$$\tag{1.4}
\begin{align}
\cos ^{2}\rho \partial _{\rho}^{2}R+\frac{n-2}{\tan \rho}\partial _{\rho}R+\left( \omega ^{2}\cos ^{2}\rho -\frac{\ell(\ell+n-3)}{\tan ^{2}\rho} -m^{2}\right)R=0
\end{align}
$$

substitute 

$$\tag{1.5}
\begin{align}
z & =\cos ^{2}\rho \\
R(\rho) & =(\sin \rho)^{\ell} (\cos\rho)^{\Delta} F(z)
\end{align}
$$

where $\displaystyle{\Delta=\frac{n-1}{2}+\sqrt{ m^{2}+\frac{(n-1)^{2}}{4} }}$. then we have

$$\tag{1.6}
\begin{align}
F(z)=C{}_{2}F_{1}\left( \frac{1}{2}(\ell+\Delta-\omega), \frac{1}{2}(\ell+\Delta+\omega);\Delta-\frac{n-3}{2};z \right)
\end{align}
$$

here $\displaystyle{a,b=\frac{1}{2}(l+\Delta\pm\omega)}$. for $\displaystyle{F(z)}$ converges at $\displaystyle{z=0}$, we require $\displaystyle{\frac{1}{2}(l+\Delta-\omega)=-k,k\in \mathbb{N}\implies \omega _{k\ell}=\Delta+l+2k}$. then the complete solution is

$$\tag{1.7}
\begin{align}
\phi _{k\ell \mathbf{m}}(t,\rho,\Omega _{n-2}) & =N_{k\ell}e^{-i \omega t} (\sin \rho)^{\ell}(\cos \rho)^{\Delta}{}_{2}F_{1}\left( -k,\ell+\Delta+k;\Delta-\frac{n-3}{2};\cos ^{2}\rho \right)Y_{\ell \mathbf{m}}(\Omega _{n-2})
\end{align}
$$

where the normalization constant $\displaystyle{N_{kl}}$ is determined by Klein-Gordon inner product

$$\tag{1.8}
\begin{align}
\braket{ \phi _{1},\phi _{2} }  & =i\int _{\Sigma}(\phi _{1}^{*}\partial _{\mu}\phi _{2}-\phi _{2}\partial _{\mu}\phi ^{*}_{1})\sqrt{ -h }n^{\mu}\mathrm{d}\Sigma \\
\braket{ \phi _{k\ell \mathbf{m}}, \phi _{k'\ell'\mathbf{m}'}} & =\delta _{kk'}\delta _{\ell\ell'}\delta _{\mathbf{m}\mathbf{m'}}
\end{align}
$$
