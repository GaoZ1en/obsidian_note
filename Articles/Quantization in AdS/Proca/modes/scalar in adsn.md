the metric in global coordiante for $\mathrm{AdS}_{n}$ is

$$
\tag{1.1}
\begin{align}
\mathrm{d}s^{2} & =\frac{1}{\cos ^{2}\rho}(-\mathrm{d}t^{2}+\mathrm{d}\rho ^{2}+\sin ^{2}\rho \mathrm{d}\Omega ^{2}_{n-2})
\end{align}
$$

where $\displaystyle{t\in(-\infty,+\infty)}$, $\displaystyle{\rho \in \left[ 0, \frac{\pi}{2} \right)}$, and $\displaystyle{\mathrm{d}\Omega ^{2}_{n-2}}$ is the metric for unit sphere $\displaystyle{S^{n-2}}$. the Laplacian is given by

$$
\tag{1.2}
\begin{align}
\Delta\phi & =\frac{1}{\sqrt{ -g }}\partial _{\mu}(\sqrt{ -g }g^{\mu \nu}\partial _{\nu}\phi) \\
 & =-\cos ^{2}\rho \partial _{t}^{2}\phi+\frac{\cos ^{2}\rho}{\sin ^{2}\rho}\Delta _{S^{n-2}\phi}+\cos ^{2}\rho \partial _{\rho}^{2}\phi+\frac{n-2}{\tan \rho}\partial _{\rho}\phi
\end{align}
$$

then the Klein-Gordon equation is

$$
\tag{1.2}
\begin{align}
(\Delta -m^{2})\phi & =0
\end{align}
$$

make the ansatz $\displaystyle{\phi=e^{-i \omega t}Y_{\ell \mathbf{m}}(\Omega _{n-2})R(\rho)}$, where $\displaystyle{Y_{\ell \mathbf{m}}(\Omega _{n-2})}$ is the hyperspherical harmonics defined on $\displaystyle{S^{n-2}}$, which satisfy

$$
\tag{1.3}
\begin{align}
\Delta _{S^{n-2}}Y_{\ell \mathbf{m}}(\Omega _{n-2}) & =-\ell(\ell+n-3)Y_{\ell \mathbf{m}}(\Omega _{n-2})
\end{align}
$$

$\displaystyle{\ell}$ is the principal angular momentum quantum number and $\displaystyle{\mathbf{m}}$ represents the set of $\displaystyle{n-3}$ magnetic quantum numbers. then we have

$$
\tag{1.4}
\begin{align}
\cos ^{2}\rho \partial _{\rho}^{2}R+\frac{n-2}{\tan \rho}\partial _{\rho}R+\left( \omega ^{2}\cos ^{2}\rho -\frac{\ell(\ell+n-3)}{\tan ^{2}\rho} -m^{2}\right)R=0
\end{align}
$$

substitute (analysing the asymptotic behavior of the equation of motion)

$$
\tag{1.5}
\begin{align}
z & =\cos ^{2}\rho \\
R(\rho) & =(\sin \rho)^{\ell} (\cos\rho)^{\Delta} F(z)
\end{align}
$$

where $\displaystyle{\Delta=\frac{n-1}{2}+\sqrt{ m^{2}+\frac{(n-1)^{2}}{4} }}$. then we have

$$
\tag{1.6}
\begin{align}
z(1-z) \frac{\mathrm{d}^{2}F}{\mathrm{d}z^{2}}+\left[ \left( \Delta+\frac{3-n}{2} \right)-(\ell+\Delta+1)z \right] \frac{\mathrm{d}F}{\mathrm{d}z}-\frac{1}{4}((\ell+\Delta)^{2}-\omega ^{2})F=0
\end{align}
$$

the general solution that satisfies the boundary condition of (1.6) is given by

$$
\tag{1.7}
\begin{align}
F(z)=C{}_{2}F_{1}\left( \frac{1}{2}(\ell+\Delta-\omega), \frac{1}{2}(\ell+\Delta+\omega);\Delta-\frac{n-3}{2};z \right)
\end{align}
$$

here $\displaystyle{a,b=\frac{1}{2}(l+\Delta\pm\omega)}$. for $\displaystyle{F(z)}$ converges at $\displaystyle{z=1}$, we require $\displaystyle{\frac{1}{2}(l+\Delta-\omega)=-k,k\in \mathbb{N}\implies \omega _{k\ell}=\Delta+l+2k}$. then the complete solution is

$$
\tag{1.8}
\begin{align}
\phi _{k\ell \mathbf{m}}(t,\rho,\Omega _{n-2}) & =N_{k\ell}e^{-i \omega t} (\sin \rho)^{\ell}(\cos \rho)^{\Delta}{}_{2}F_{1}\left( -k,\ell+\Delta+k;\Delta-\frac{n-3}{2};\cos ^{2}\rho \right)Y_{\ell \mathbf{m}}(\Omega _{n-2})
\end{align}
$$

where the normalization constant $\displaystyle{N_{kl}}$ is determined by Klein-Gordon inner product

$$
\tag{1.9}
\begin{align}
\braket{ \phi _{1},\phi _{2} }  & =i\int _{\Sigma}(\phi _{1}^{*}\partial _{\mu}\phi _{2}-\phi _{2}\partial _{\mu}\phi ^{*}_{1})\sqrt{ -h }n^{\mu}\mathrm{d}\Sigma \\
\braket{ \phi _{k\ell \mathbf{m}}, \phi _{k'\ell'\mathbf{m}'}} & =\delta _{kk'}\delta _{\ell\ell'}\delta _{\mathbf{m}\mathbf{m'}}
\end{align}
$$

which gives (? need check)

$$
\tag{1.10}
\begin{align}
N_{k\ell} = \sqrt{\frac{k!\Gamma(k+\Delta+\ell+1)\Gamma(\Delta)\Gamma(k+\Delta-\frac{n-3}{2})}{\Gamma(k+\Delta-\frac{n-3}{2}+1)\Gamma(k+\ell+\frac{n-1}{2}+1)\Gamma(\Delta-\frac{n-1}{2}+1)}}
\end{align}
$$

the energy spectrum is given by

$$
\tag{1.11}
\begin{align}
\omega _{k\ell} & =\Delta+\ell+2k
\end{align}
$$

---

## canonical quantization in CPS formalism

we have found a complete set of solutions $\displaystyle{\left\{\phi _{k\ell \mathbf{m}}(t,\rho,\Omega _{n-2})\right\}}$ to the Klein-Gordon equation in $\mathrm{AdS}_{n}$. expand the field $\displaystyle{\phi(t,\rho,\Omega _{n-2})}$ in terms of these solutions

$$
\tag{2.1}
\begin{align}
\phi(t,\rho,\Omega _{n-2}) & =\sum _{k=0}^{\infty}\sum _{\ell=0}^{\infty}\sum _{\mathbf{m}} (a_{k\ell \mathbf{m}}\phi _{k\ell \mathbf{m}}(t,\rho,\Omega _{n-2})+a^{\dagger}_{k\ell \mathbf{m}}\phi ^{*}_{k\ell \mathbf{m}}(t,\rho,\Omega _{n-2}))
\end{align}
$$

then the symplectic form becomes

$$
\tag{2.2}
\begin{align}
\omega & =i\sum ^{\infty}_{k=0}\sum ^{\infty}_{\ell=0}\sum _{\mathbf{m}}\delta a^{\dagger}_{k\ell \mathbf{m}}\wedge \delta a_{k\ell \mathbf{m}}
\end{align}
$$

Hamiltonian flow is given by

$$
\tag{2.3}
\begin{align}
X_{\phi(t,\rho,\Omega _{n-2})} & =-i\sum _{k,\ell,\mathbf{m}}\left(\phi _{k\ell \mathbf{m}} \frac{\delta}{\delta a_{k\ell \mathbf{m}}^{\dagger}}-\phi ^{*}_{k\ell \mathbf{m}} \frac{\delta}{\delta a_{k\ell \mathbf{m}}}\right)
\end{align}
$$

and commutation relations are given by

$$
\tag{2.4}
\begin{align}
[\phi(t,\rho,\Omega _{n-2}),\phi(t',\rho',\Omega _{n-2}')] & =iX_{\phi(t,\rho,\Omega _{n-2})}\cdot X_{\phi(t',\rho',\Omega' _{n-2})}\cdot \omega \\
 & =\sum _{k,\ell,\mathbf{m}}\left(\phi _{k\ell\mathbf{m}}(t,\rho,\Omega _{n-2})\phi ^{*}_{k\ell \mathbf{m}}(t',\rho',\Omega _{n-2}')-\phi ^{*}_{k\ell\mathbf{m}}(t,\rho,\Omega _{n-2})\phi_{k\ell \mathbf{m}}(t',\rho',\Omega _{n-2}')\right) \\
 & =(\text{ too complicated! })
\end{align}
$$
