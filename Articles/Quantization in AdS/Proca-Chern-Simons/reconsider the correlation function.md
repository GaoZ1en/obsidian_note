# time ordered correlation function

in [[Articles/Quantization in AdS/Proca-Chern-Simons/correlation function|correlation function]] we have derived the following two expressions

$$\begin{align}
\sum ^{\infty}_{n,\bar{n}=0} f_{u,n,\bar{n}}^{\mu_{1}}(x_{1})f_{u,n,\bar{n}}^{*\mu_{2}}(x_{2}) & =\frac{1}{2\mu ^{2}}\nabla^{\mu_{1}}\nabla ^{\mu_{2}}g_{\mu+2}(x_{1},x_{2})+\frac{i}{2\mu}\varepsilon ^{\mu_{1}\nu_{1}}_{~~~~~~\rho_{1}}(x_{1})g^{\rho_{1},\mu_{2}}(x_{1},x_{2})\nabla _{\nu_{1}}g_{\mu+2}(x_{1},x_{2}) \\
 & +\frac{1}{2}g^{\mu_{1},\mu_{2}}(x_{1},x_{2})g_{\mu+2}(x_{1},x_{2}) \\
\sum ^{\infty}_{n,\bar{n}=0} f_{v,n,\bar{n}}^{\mu_{1}}(x_{1})f^{*\mu _{2}}_{v,n,\bar{n}}(x_{2}) & =\frac{1}{2\mu ^{2}}\nabla ^{\mu_{1}}\nabla ^{\mu_{2}}g_{\mu+2}(x_{1},x_{2})-\frac{i}{2\mu}\varepsilon ^{\mu_{1}\nu_{1}}_{~~~~~~\rho_{1}}(x_{1})\bar{g}^{\rho _{1},\mu_{2}}(x_{1},x_{2})\nabla _{\nu_{1}}g_{\mu+2}(x_{1},x_{2}) \\
 & +\frac{1}{2}\bar{g}^{\mu_{1},\mu_{2}}(x_{1},x_{2})g_{\mu+2}(x_{1},x_{2})
\end{align}$$

where $\displaystyle{g_{\Delta}(x_{1},x_{2})}$ is defined as

$$\begin{align}
g_{\Delta}(x_{1},x_{2}) & =g_{\Delta}(x_{2},x_{1}) \\
 & =\sum ^{\infty}_{n,\bar{n}=0}\varphi _{\Delta,n,\bar{n}}(x_{1})\varphi ^{*}_{\Delta,n,\bar{n}}(x_{2}) \\
 & =\frac{1}{2\pi}\frac{e^{-(\Delta-1)\rho(x_{1},x_{2})}}{2\sinh \rho(x_{1},x_{2})} \\
\cosh \rho(x_{1},x_{2}) & =\sqrt{ 1+r^{2}_{1} }\sqrt{ 1+r_{2}^{2} }\cosh(\tau_{1}-\tau_{2})-r_{1}r_{2}\cos(\phi_{1}-\phi_{2})
\end{align}$$

introduce

$$\begin{align}
\mathcal{S}^{\mu_{1},\mu_{2}}(x_{1},x_{2}) & =g^{\mu_{1},\mu_{2}}(x_{1},x_{2})+\bar{g}^{\mu_{1},\mu_{2}}(x_{1},x_{2}) \\
\mathcal{A}^{\mu_{1},\mu_{2}}(x_{1},x_{2}) & =g^{\mu_{1},\mu_{2}}(x_{1},x_{2})-\bar{g}^{\mu_{1},\mu_{2}}(x_{1},x_{2})
\end{align}$$

then we can write

$$\begin{align}
\sum ^{\infty}_{n,\bar{n}=0} f^{\mu_{1}}_{u,n,\bar{n}}(x_{1})f^{*}(\mu_{2})_{u,n,\bar{n}}(x_{2})+f^{\mu_{1}}_{v,n,\bar{n}}(x_{1})f^{*\mu_{2}}_{v,n,\bar{n}}(x_{2}) & =\frac{1}{\mu ^{2}}\nabla ^{\mu_{1}}\nabla ^{\mu_{2}}g_{\mu+2}(x_{1},x_{2})+\frac{i}{2\mu}\varepsilon ^{\mu_{1}\nu_{1}}_{~~~~~~\rho _{1}}(x_{1})\mathcal{A}^{\rho _{1},\mu_{2}}(x_{1},x_{2})\nabla _{\nu _{1}}g_{\mu+2}(x_{1},x_{2}) \\
 & +\frac{1}{2}\mathcal{S}^{\mu_{1},\mu_{2}}(x_{1},x_{2})g_{\mu+2}(x_{1},x_{2}) \\
\sum ^{\infty}_{n,\bar{n}=0}f^{\mu_{2}}_{u,n,\bar{n}}(x_{2})f^{*\mu_{1}}_{u,n,\bar{n}}(x_{1})+f^{\mu_{2}}_{v,n,\bar{n}}(x_{2})f^{*\mu_{1}}_{v,n,\bar{n}}(x_{1}) & =\frac{1}{\mu ^{2}}\nabla ^{\mu_{1}}\nabla ^{\mu_{2}}g_{\mu+2}(x_{1},x_{2})+\frac{i}{2\mu}\varepsilon ^{\mu_{2}\nu_{2}}_{~~~~~~\rho_{2}}\mathcal{A}^{\rho_{2},\mu_{1}}(x_{2},x_{1})\nabla _{\nu _{2}}g_{\mu+2}(x_{1},x_{2}) \\
 & +\frac{1}{2}\mathcal{S}^{\mu _{1},\mu _{2}}(x_{1},x_{2})g_{\mu+2}(x_{1},x_{2})
\end{align}$$

then we have

$$\begin{align}
\braket{ 0|\mathcal{T}A^{\mu_{1}}(x_{1})A^{\mu_{2}}(x_{2})|0 }  & =\lim_{ \varepsilon \to 0 }\left(\sum ^{\infty}_{n,\bar{n}=0}f_{u,n,\bar{n}}^{\mu_{1}}(x_{1}^{+})f_{u,n,\bar{n}}^{*\mu_{2}}(x_{2})+f_{v,n,\bar{n}}^{\mu_{1}}(x_{1}^{+})f^{*\mu_{2}}_{v,n,\bar{n}}(x_{2})\right)\bigg|_{\tau ^{+}_{1}=\tau _{1}+\varepsilon}\theta(\tau_{1}-\tau_{2}) \\
 & +\left(\sum ^{\infty}_{n,\bar{n}=0}f^{\mu_{2}}_{u,n,\bar{n}}(x_{2})f^{*\mu_{1}}_{u,n,\bar{n}}(x_{1}^{-})+f^{\mu_{2}}_{v,n,\bar{n}}(x_{2})f^{*\mu_{1}}_{v,n,\bar{n}}(x_{1}^{-})\right)\bigg|_{\tau_{1}^{-}=\tau _{1}-\varepsilon}\theta(\tau_{2}-\tau_{1}) \\
 & =\lim_{ \varepsilon \to 0 }\left(\frac{1}{\mu ^{2}}\nabla ^{\mu_{1}}\nabla ^{\mu_{2}}g_{\mu+2}(x_{1}^{+},x_{2})+\frac{i}{2\mu}\varepsilon ^{\mu_{1}\nu_{2}}_{~~~~~~\rho_{1}}\mathcal{A}^{\rho_{1},\mu_{2}}(x_{1},x_{2})\nabla _{\nu_{1}}g_{\mu+2}(x_{1}^{+},x_{2})+\frac{1}{2}\mathcal{S}^{\mu_{1},\mu_{2}}(x_{1},x_{2})g_{\mu+2}(x_{1}^{+},x_{2})\right)\theta(\tau_{1}-\tau_{2}) \\
 & +\left(\frac{1}{\mu ^{2}}\nabla ^{\mu_{1}}\nabla ^{\mu_{2}}g_{\mu+2}(x_{2},x_{1}^{-})+\frac{i}{2\mu}\varepsilon ^{\mu_{2}\nu_{2}}_{~~~~~~\rho_{2}}\mathcal{A}^{\rho_{2};\mu_{1}}(x_{2},x_{1})\nabla _{\nu_{2}}g_{\mu+2}(x_{2},x_{1}^{-1})+\frac{1}{2}\mathcal{S}^{\mu_{1},\mu_{2}}(x_{1},x_{2})g_{\mu+2}(x_{2},x_{1}^{-})\right)\theta(\tau_{2}-\tau_{1}) \\
 & =\lim_{ \varepsilon \to 0 } \frac{1}{\mu ^{2}}\left(\nabla ^{\mu_{1}}\nabla ^{\mu_{2}}g_{\mu+2}(x_{1}^{+},x_{2})\theta(\tau_{1}-\tau_{2})+\nabla ^{\mu_{2}}\nabla ^{\mu_{1}}g_{\mu+2}(x_{2},x_{1}^{-})\theta(\tau_{2}-\tau_{1})\right) \\
 & +\frac{i}{2\mu}[\varepsilon ^{\mu_{1}\nu_{1}}_{~~~~~~\rho_{1}}\mathcal{A}^{\rho_{1},\mu_{2}}(x_{1},x_{2})\nabla _{\nu_{1}} g_{\mu+2}(x_{1},x_{2})\theta(\tau_{1}-\tau_{2})+\varepsilon ^{\mu_{2}\nu_{2}}_{~~~~~~\rho_{2}}\mathcal{A}^{\rho_{2},\mu_{1}}(x_{2},x_{1})\nabla _{\nu_{2}}g_{\mu+2}(x_{1},x_{2})\theta(\tau_{2}-\tau_{1})] \\
 & +\frac{1}{2}[\mathcal{S}^{\mu_{1},\mu_{2}}(x_{1},x_{2})g_{\mu+2}(x_{1},x_{2})\theta(\tau_{1}-\tau_{2})+\mathcal{S}^{\mu_{2},\mu_{1}}(x_{2},x_{1})g_{\mu+2}(x_{1},x_{2})\theta(\tau_{2}-\tau_{1})]]
\end{align}$$

---

bitensor formalism. we have introduced the geodesic distance between two points $\displaystyle{\rho(x_{1},x_{2})}$. then we can define the following bitensors

$$\begin{align}
l^{\mu_{1}}(x_{1},x_{2}) & =\nabla ^{\mu_{1}}\rho(x_{1},x_{2}) \\
l^{\mu_{2}}(x_{1},x_{2}) & =\nabla ^{\mu_{2}}\rho(x_{1},x_{2}) \\
\end{align}$$

which satisfies the following properties

$$\begin{align}
\nabla ^{\mu_{1}}l^{\nu_{1}} & =\frac{\cosh \rho}{\sinh \rho}(g^{\mu_{1}\nu_{1}}-l^{\mu_{1}}l^{\nu_{1}}) \\
\nabla ^{\mu_{2}}l^{\nu_{2}} & =\frac{\cosh \rho}{\sinh \rho}(g^{\mu_{2}\nu_{2}}-l^{\mu_{2}}l^{\nu_{2}}) \\
\nabla ^{\mu_{2}}l^{\mu_{1}} & =\nabla ^{\mu_{1}}l^{\mu_{2}} \\
& =-\frac{1}{\sinh \rho}\mathcal{P}^{\mu_{1},\mu_{2}}(x_{1},x_{2}) \\
\nabla ^{\mu_{1}}\mathcal{P}^{\nu_{1},\mu_{2}} & =-\frac{\cosh \rho}{\sinh \rho}l^{\nu_{1}}\mathcal{P}^{\mu_{1},\mu_{2}}+\frac{1}{\sinh \rho}g^{\mu_{1}\nu_{1}}l^{\mu_{2}}-\frac{1}{\sinh \rho}l^{\mu_{1}}l^{\nu_{1}}l^{\mu_{2}} \\
\nabla ^{\mu_{2}}\mathcal{P}^{\mu_{1},\nu_{2}} & =-\frac{\cosh \rho}{\sinh \rho}l^{\nu_{2}}\mathcal{P}^{\mu_{1},\mu_{2}}+\frac{1}{\sinh \rho}g^{\mu_{2}\nu_{2}}l^{\mu_{1}}-\frac{1}{\sinh \rho}l^{\mu_{1}}l^{\nu_{2}}l^{\mu_{2}}
\end{align}$$

define the following functions

$$\begin{align}
\mathcal{Q}^{\mu_{1},\mu_{2}} & =-\varepsilon ^{\mu_{1}}_{~~~\nu_{1}\rho_{1}}l^{\rho_{1}}\mathcal{P}^{\nu_{1},\mu_{2}}=-\varepsilon ^{\mu_{2}}_{~~~\nu_{2}\rho_{2}}l^{\rho_{2}}\mathcal{P}^{\mu_{1},\nu_{2}} \\
g^{\mu_{1},\mu_{2}} & =2\xi _{-1}^{\mu_{1}}\xi _{1} ^{\mu_{2}}+2\xi _{1}^{\mu_{1}}\xi _{-1}^{\mu_{2}}-4\xi _{0}^{\mu_{1}}\xi _{0}^{\mu_{2}} \\
\bar{g}^{\mu_{1},\mu_{2}} & =2\bar{\xi}_{-1}^{\mu_{1}}\bar{\xi}_{1}^{\mu_{2}}+2\bar{\xi}_{1}^{\mu_{1}}\bar{\xi}_{-1}^{\mu_{2}}-4\bar{\xi}_{0}^{\mu_{1}}\bar{\xi}_{0}^{\mu_{2}}
\end{align}$$

then we have

$$\begin{align}
g^{\mu_{1},\mu_{2}} & =-l^{\mu_{1}}l^{\mu_{2}}+\cosh \rho \mathcal{P}^{\mu_{1},\mu_{2}}-i\sinh \rho \mathcal{Q}^{\mu_{1},\mu_{2}} \\
\bar{g}^{\mu_{1},\mu_{2}} & =-l^{\mu_{1}}l^{\mu_{2}}+\cosh \rho \mathcal{P}^{\mu_{1},\mu_{2}}+i\sinh \rho \mathcal{Q}^{\mu_{1},\mu_{2}} \\
\nabla _{\lambda_{1}}g^{\mu_{1},\mu_{2}} & =i\varepsilon _{\lambda_{1}~~~\sigma _{1}}^{~~~~\mu_{1}}g^{\sigma_{1},\mu_{2}} \\
\nabla _{\lambda_{1}}\bar{g}^{\mu_{1},\mu_{2}} & =-i\varepsilon _{\lambda_{1}~~~\sigma _{1}}^{~~~~\mu_{1}}\bar{g}^{\sigma_{1},\mu_{2}} \\
\nabla _{\lambda_{1}}\mathcal{S}^{\mu_{1},\mu_{2}} & =i\varepsilon _{\lambda_{1}~~~\sigma _{1}}^{~~~~\mu_{1}}\mathcal{A}^{\sigma_{1},\mu_{2}} \\
\nabla _{\lambda_{1}}\mathcal{A}^{\mu_{1},\mu_{2}} & =i\varepsilon _{\lambda_{1}~~~\sigma_{1}}^{~~~~\mu_{1}}\mathcal{S}^{\sigma_{1},\mu_{2}}
\end{align}$$

take a Lie derivative of $\displaystyle{\rho}$, we have

$$\begin{align}
0 & =\mathcal{L}_{\xi}\rho=\xi ^{\mu_{1}}l_{\mu_{1}}+\xi ^{\mu_{2}}l_{\mu_{2}} \\
\implies g^{\mu_{1},\mu_{2}}l_{\mu_{1}} & =-l^{\mu_{2}}, \qquad \bar{g}^{\mu_{1},\mu_{2}}l_{\mu_{1}}=-l^{\mu_{2}} \\
\implies \mathcal{S}^{\mu_{1},\mu_{2}}l_{\mu_{1}} & =-2l^{\mu_{2}}, \qquad \mathcal{A}^{\mu_{1},\mu_{2}}l_{\mu_{1}}=0 \\
\varepsilon ^{\mu_{1}\nu_{1}}_{~~~~~~~\rho_{1}}g^{\rho_{1},\mu_{2}}l_{\nu_{1}} & =\varepsilon ^{\mu_{2}\nu_{2}}_{~~~~~~~\rho_{2}}g^{\rho_{2},\mu_{1}}l_{\nu_{2}} \\
\varepsilon ^{\mu_{1}\nu_{1}}_{~~~~~~~\rho_{1}}\bar{g}^{\rho_{1},\mu_{2}}l_{\nu_{1}} & =\varepsilon ^{\mu_{2}\nu_{2}}_{~~~~~~~\rho_{2}}\bar{g}^{\rho_{2},\mu_{1}}l_{\nu_{2}} \\
\implies \varepsilon ^{\mu_{1}\nu_{1}}_{~~~~~~~\rho_{1}}\mathcal{S}^{\rho_{1},\mu_{2}}l_{\nu_{1}} & =\varepsilon ^{\mu_{2}\nu_{2}}_{~~~~~~~\rho_{2}}\mathcal{S}^{\rho_{2},\mu_{1}}l_{\nu_{2}} \\
\varepsilon ^{\mu_{1}\nu_{1}}_{~~~~~~~\rho_{1}}\mathcal{A}^{\rho_{1},\mu_{2}}l_{\nu_{1}} & =\varepsilon ^{\mu_{2}\nu_{2}}_{~~~~~~~\rho_{2}}\mathcal{A}^{\rho_{2},\mu_{1}}l_{\nu_{2}}
\end{align}$$

---

the first line of the correlation function can be written as

$$\begin{align}
 & \lim_{ \varepsilon \to 0 } \frac{1}{\mu ^{2}}\left(\nabla ^{\mu_{1}}\nabla ^{\mu_{2}}g_{\mu+2}(x_{1}^{+},x_{2})\theta(\tau_{1}-\tau_{2})+\nabla ^{\mu_{2}}\nabla ^{\mu_{1}}g_{\mu+2}(x_{2},x_{1}^{-})\theta(\tau_{2}-\tau_{1})\right) \\
= &\lim_{ \varepsilon \to 0 } \frac{1}{\mu ^{2}}(\nabla ^{\mu_{1}}\nabla ^{\mu_{2}}(g_{\mu+2}(x_{1}^{+},x_{2})\theta(\tau_{1}-\tau_{2})+g_{\mu+2}(x_{2},x_{1}^{-1})\theta(\tau_{2}-\tau_{1})) \\
 & -(\nabla ^{\mu_{1}}g_{\mu+2}(x_{1}^{+},x_{2})g^{\mu_{2}t}(-)\delta(\tau_{1}-\tau_{2})+\nabla ^{\mu_{1}}g_{\mu+2}(x_{2},x_{1}^{-})g^{\mu_{2}t}\delta(\tau_{1}-\tau_{2})) \\
 & -\nabla ^{\mu_{2}}((g_{\mu+2}(x_{1}^{+},x_{2})-g_{\mu+2}(x_{2},x_{1}^{-}))g^{\mu_{1}t}\delta(\tau_{1}-\tau_{2}))) \\
= & \frac{1}{\mu ^{2}}\nabla ^{\mu_{1}}\nabla ^{\mu_{2}}\braket{ 0|\mathcal{T}\phi(x_{1})\phi(x_{2})|0 }-\frac{1}{\mu ^{2}}g^{\mu_{1}t}g^{\mu_{2}t}N^{2}(x_{1}) \frac{1}{\sqrt{ g(x_{1}) }}\delta ^{3}(x_{1}-x_{2})
\end{align}$$

where

$$\begin{align}
\lim_{ \varepsilon \to 0 } \left( \frac{\partial g_{\mu+2}(x_{1}^{+},x_{2})}{\partial \tau _{1}}-\frac{\partial g_{\mu+2}(x_{2},x_{1}^{-})}{\partial \tau_{1}} \right) & =-\frac{N(x_{1})}{\sqrt{ \sigma(x_{1}) }}\delta ^{2}(x_{1}-x_{2})
\end{align}$$

and $\displaystyle{N}$ is the lapse function, $\displaystyle{\sigma}$ is the determinant of the induced metric on the spatial slice. the second line

$$\begin{align}
 & \lim_{ \varepsilon \to 0 } \frac{i}{2\mu}[\varepsilon ^{\mu_{1}\nu_{1}}_{~~~~~~\rho_{1}}\mathcal{A}^{\rho_{1},\mu_{2}}(x_{1},x_{2})\nabla _{\nu_{1}} g_{\mu+2}(x_{1},x_{2})\theta(\tau_{1}-\tau_{2})+\varepsilon ^{\mu_{2}\nu_{2}}_{~~~~~~\rho_{2}}\mathcal{A}^{\rho_{2},\mu_{1}}(x_{2},x_{1})\nabla _{\nu _{2}}g_{\mu+2}(x_{1},x_{2})\theta(\tau_{2}-\tau_{1})] \\
= & \lim_{ \varepsilon \to 0 } \frac{i}{2\mu}\varepsilon ^{\mu_{1}\nu_{1}}_{~~~~~~\rho_{1}}\mathcal{A}^{\rho_{1},\mu_{2}}\partial _{\nu_{1}}\braket{ 0|\mathcal{T}\phi(x_{1})\phi(x_{2})|0 } \\
\end{align}$$

and the third line

$$\begin{align}
\lim_{ \varepsilon \to 0 } \frac{1}{2}[\mathcal{S}^{\mu_{1},\mu_{2}}(x_{1},x_{2})g_{\mu+2}(x_{1},x_{2})\theta(\tau_{1}-\tau_{2})+\mathcal{S}^{\mu_{2},\mu_{1}}(x_{2},x_{1})g_{\mu+2}(x_{1},x_{2})\theta(\tau_{2}-\tau_{1})] & =\frac{1}{2}\mathcal{S}^{\mu_{1},\mu_{2}}(x_{1},x_{2})\braket{ 0|\mathcal{T}\phi(x_{1})\phi(x_{2})|0 }
\end{align}$$

therefore

$$\begin{align}
\braket{ 0|\mathcal{T}A^{\mu_{1}}(x_{1})A^{\mu_{2}}(x_{2})|0 } & =-\frac{1}{\mu ^{2}}g^{\mu_{1}\tau}g^{\mu_{2}\tau} \frac{N^{2}(x_{1})}{\sqrt{ g(x_{1}) }}\delta ^{3}(x_{1}-x_{2}) \\
 & +\left[ \frac{1}{\mu ^{2}}\nabla ^{\mu_{1}}\nabla ^{\mu_{2}}+\frac{i}{2\mu}\varepsilon ^{\mu_{1}\nu_{1}}_{~~~~~~~\rho_{1}}\mathcal{A}^{\rho_{1},\mu_{2}}\nabla _{\nu_{1}}+\frac{1}{2}\mathcal{S}^{\mu_{1},\mu_{2}} \right]\braket{ 0|\mathcal{T}\phi(x_{1})\phi(x_{2})|0 }
\end{align}$$

# verification

now we will verift that the covariant part of the above correlation function is consistent with the equation of motion, which is

$$\begin{align}
\nabla _{\mu}F^{\mu \nu}-\mu ^{2}A^{\nu}=0 \\
\implies (g_{\mu \nu}\nabla ^{2}-\nabla _{\mu}\nabla _{\nu}-g_{\mu \nu}\mu ^{2})A^{\mu}=0
\end{align}$$

notice that

$$\begin{align}
(\nabla ^{2}-\mu(\mu+2))_{x_{1}}\braket{ 0|\mathcal{T}\phi(x_{1})\phi(x_{2})|0 } & =-\frac{1}{\sqrt{ g(x_{1}) }}\delta ^{3}(x_{1}-x_{2})
\end{align}$$

then

$$\begin{align}
 & \frac{1}{\mu ^{2}}(g_{\mu_{1}\lambda_{1}}\nabla ^{2}-\nabla _{\mu_{1}}\nabla _{\lambda_{1}}-g_{\mu_{1} \lambda_{1}}\mu ^{2})\nabla ^{\mu_{1}}\nabla ^{\mu_{2}}\braket{ 0|\mathcal{T}\phi(x_{1})\phi(x_{2})|0 }  \\
= & \frac{1}{\mu ^{2}}\nabla ^{\mu_{2}}(g_{\mu_{1}\lambda_{1}}\nabla ^{2}-\nabla _{\mu_{1}}\nabla _{\lambda_{1}}-g_{\mu_{1}\lambda_{1}}\mu ^{2})\nabla ^{\mu_{1}}\braket{ 0|\mathcal{T}\phi(x_{1})\phi(x_{2})|0 } \\
= & -\nabla _{\lambda_{1}}\nabla ^{\mu_{2}}\braket{ 0|\mathcal{T}\phi(x_{1})\phi(x_{2})|0 }
\end{align}$$

notice that

$$\begin{align}
 & \nabla _{\lambda_{1}}(\varepsilon ^{\mu_{1}\nu_{1}}_{~~~~~~~\rho_{1}}\mathcal{A}^{\rho_{1},\mu_{2}}\nabla _{\nu_{1}}T) \\
= & \varepsilon ^{\mu_{1}\nu_{1}}_{~~~~~~~\rho_{1}}\nabla _{\lambda_{1}}\mathcal{A}^{\rho_{1},\mu_{2}}\nabla _{\nu_{1}}T+\varepsilon ^{\mu_{1}\nu_{1}}_{~~~~~~~\rho_{1}}\mathcal{A}^{\rho_{1},\mu_{2}}\nabla _{\lambda_{1}}\nabla _{\nu_{1}}T \\
= & i\varepsilon ^{\mu_{1}\nu_{1}}_{~~~~~~~\rho_{1}}\varepsilon _{\lambda_{1}~~~\sigma_{1}}^{~~~~\rho_{1}}\mathcal{S}^{~\sigma_{1},\mu_{2}}\nabla _{\nu_{1}}T+\varepsilon ^{\mu_{1}\nu_{1}}_{~~~~~~~\rho_{1}}\mathcal{A}^{\rho_{1},\mu_{2}}\nabla _{\lambda_{1}}\nabla _{\nu_{1}}T \\
= & i(\delta ^{\mu_{1}}_{\sigma_{1}}\delta ^{\nu_{1}}_{\lambda_{1}}-\delta ^{\mu_{1}}_{\lambda_{1}}\delta ^{\nu_{1}}_{\sigma_{1}})\mathcal{S}^{\sigma_{1},\mu_{2}}\nabla _{\nu_{1}}T+\varepsilon ^{\mu_{1}\nu_{1}}_{~~~~~~~\rho_{1}}\mathcal{A}^{\rho_{1},\mu_{2}}\nabla _{\lambda_{1}}\nabla _{\nu_{1}}T \\
= & i\mathcal{S}^{\mu_{1},\mu_{2}}\nabla _{\lambda_{1}}T-i\delta ^{\mu_{1}}_{\lambda_{1}}\mathcal{S}^{\nu_{1},\mu_{2}}\nabla _{\nu_{1}}T+\varepsilon ^{\mu_{1}\nu_{1}}_{~~~~~~~\rho_{1}}\mathcal{A}^{\rho_{1},\mu_{2}}\nabla _{\lambda_{1}}\nabla _{\nu_{1}}T
\end{align}$$

$$\begin{align}
 & \nabla ^{2}(\varepsilon ^{\mu_{1}\nu_{1}}_{~~~~~~~\rho_{1}}\mathcal{A}^{\rho_{1},\mu_{2}}\nabla _{\nu_{1}}T) \\
= & \nabla ^{\lambda_{1}}(\varepsilon ^{\mu_{1}\nu_{1}}_{~~~~~~~\rho_{1}}\mathcal{A}^{\rho_{1},\mu_{2}}\nabla _{\lambda_{1}}\nabla _{\nu_{1}}T+i\mathcal{S}^{\mu_{1},\mu_{2}}\nabla _{\lambda_{1}}T-i\delta ^{\mu_{1}}_{\lambda_{1}}\mathcal{S}^{\nu_{1},\mu_{2}}\nabla _{\nu_{1}}T) \\
= & \varepsilon ^{\mu_{1}\nu_{1}}_{~~~~~~~\rho_{1}}\mathcal{A}^{\rho_{1},\mu_{2}}\nabla ^{2}\nabla _{\nu_{1}}T+\varepsilon ^{\mu_{1}\nu_{1}}_{~~~~~~~\rho}\nabla ^{\lambda_{1}}\mathcal{A}^{\rho_{1},\mu_{2}}\nabla _{\lambda_{1}}\nabla _{\nu_{1}}T \\
 & +i\nabla ^{\lambda_{1}}\mathcal{S}^{\mu_{1},\mu_{2}}\nabla _{\lambda_{1}}T+i\mathcal{S}^{\mu_{1},\mu_{2}}\nabla ^{2}T-i\nabla ^{\mu_{1}}\mathcal{S}^{\nu_{1},\mu_{2}}\nabla _{\nu_{1}}T-i\mathcal{S}^{\nu_{1},\mu_{2}}\nabla ^{\mu_{1}}\nabla _{\nu_{1}}T \\
= & \varepsilon ^{\mu_{1}\nu_{1}}_{~~~~~~~\rho_{1}}\mathcal{A}^{\rho_{1},\mu_{2}}\nabla ^{2}\nabla _{\nu_{1}}T+i\varepsilon ^{\mu_{1}\nu_{1}}_{~~~~~~~\rho_{1}}\varepsilon ^{\lambda_{1}\rho_{1}}_{~~~~~~~\tau _{1}}S^{\tau_{1},\mu_{2}}\nabla _{\lambda_{1}}\nabla _{\nu_{1}}T \\
 & -\varepsilon ^{\lambda_{1}\mu_{1}}_{~~~~~~~\rho_{1}}\mathcal{A}^{\rho_{1},\mu_{2}}\nabla _{\lambda_{1}}T+i\mathcal{S}^{\mu_{1},\mu_{2}}\nabla ^{2}T+\varepsilon ^{\mu_{1}\nu_{1}}_{~~~~~~~\lambda_{1}}\mathcal{A}^{\lambda_{1},\mu_{2}}\nabla _{\nu_{1}}T-i\mathcal{S}^{\nu_{1},\mu_{2}}\nabla ^{\mu_{1}}\nabla _{\nu_{1}}T \\
= & \varepsilon ^{\mu_{1}\nu_{1}}_{~~~~~~~\rho_{1}}\mathcal{A}^{\rho_{1},\mu_{2}}\nabla _{\nu_{1}}\nabla ^{2}T+2i\mathcal{S}^{\mu_{1},\mu_{2}}\nabla ^{2}T-2i\mathcal{S}^{\nu_{1},\mu_{2}}\nabla ^{\mu_{1}}\nabla _{\nu_{1}}T \\
 & \nabla _{\mu_{1}}\nabla _{\lambda_{1}}(\varepsilon ^{\mu_{1}\nu_{1}}_{~~~~~~~\rho_{1}}\mathcal{A}^{\rho_{1},\mu_{2}}\nabla _{\nu_{1}}T) \\
= & \nabla _{\mu_{1}}(\varepsilon ^{\mu_{1}\nu_{1}}_{~~~~~~~\rho_{1}}\mathcal{A}^{\rho_{1},\mu_{2}}\nabla _{\lambda_{1}}T+i\mathcal{S}^{\mu_{1},\mu_{2}}\nabla _{\lambda_{1}}T-i\delta ^{\mu_{1}}_{\lambda_{1}}\mathcal{S}^{\nu_{1},\mu_{2}}\nabla _{\nu_{1}}T) \\
= & -2i\mathcal{S}^{\nu_{1},\mu_{2}}\nabla _{\lambda_{1}}\nabla _{\nu_{1}}T
\end{align}$$

then

$$\begin{align}
 & (g_{\mu_{1}\lambda_{1}}\nabla ^{2}-\nabla _{\mu_{1}}\nabla _{\lambda_{1}}-g_{\mu_{1}\lambda_{1}}\mu ^{2}) \frac{i}{2\mu}\varepsilon ^{\mu_{1}\nu_{1}}_{~~~~~~~\rho_{1}}\mathcal{A}^{\rho_{1},\mu_{2}}\nabla _{\nu_{1}}T \\
= & \frac{i}{2\mu}(\varepsilon _{\lambda_{1}~~~\rho_{1}}^{~~~~\nu_{1}}\mathcal{A}^{\rho_{1},\mu_{2}}\nabla _{\nu_{1}}\nabla ^{2}T+2i\mathcal{S}_{\lambda_{1}}^{~~~\mu_{2}}\nabla ^{2}T-2i\mathcal{S}^{\nu_{1},\mu_{2}}\nabla _{\lambda_{1}}\nabla _{\nu_{1}}T \\
  & +2i\mathcal{S}^{\nu_{1},\mu_{2}}\nabla _{\lambda_{1}}\nabla _{\nu_{1}}T-\varepsilon _{\lambda_{1}~~~\rho_{1}}^{~~~~\nu_{1}}\mathcal{A}^{\rho_{1},\mu_{2}}\nabla _{\nu_{1}}T) \\
= & -\frac{1}{\mu}\mathcal{S}_{\lambda_{1}}^{~~~\mu_{2}}\nabla ^{2}T+\frac{i}{2\mu}\varepsilon _{\lambda_{1}~~~\rho_{1}}^{~~~~\nu_{1}}\mathcal{A}^{\rho_{1},\mu_{2}}\nabla _{\nu_{1}}((\nabla ^{2}-\mu ^{2})T)
\end{align}$$

remember that

$$\begin{align}
\nabla _{\lambda_{1}}(\mathcal{S}^{\mu_{1},\mu_{2}}T) & =i\varepsilon _{\lambda_{1}~~~\rho_{1}}^{~~~~\mu_{1}}\mathcal{A}^{\rho_{1},\mu_{2}}T+\mathcal{S}^{\mu_{1},\mu_{2}}\nabla _{\lambda_{1}}T \\
\nabla ^{2}(\mathcal{S}^{\mu_{1},\mu_{2}}T) & =-\varepsilon _{\lambda_{1}~~~\rho_{1}}^{~~~~\mu_{1}}\varepsilon_{~~~~~~~\sigma_{1}}^{\lambda_{1}\rho_{1}}\mathcal{S}^{\rho_{1},\mu_{2}}T+i\varepsilon _{\lambda_{1}~~~\rho_{1}}^{~~~~\mu_{1}}\mathcal{A}^{\rho_{1},\mu_{2}}\nabla ^{\lambda_{1}}T \\
 & +i\varepsilon ^{\lambda_{1}\mu_{1}}_{~~~~~~~\rho_{1}}\mathcal{A}^{\rho_{1},\mu_{2}}\nabla _{\lambda_{1}}T+\mathcal{S}^{\mu_{1},\mu_{2}}\nabla ^{2}T \\
 & =2\mathcal{S}^{\mu_{1},\mu_{2}}T+2i\varepsilon ^{\lambda_{1}\mu_{1}}_{~~~~~~~\rho_{1}}\mathcal{A}^{\rho_{1},\mu_{2}}\nabla _{\lambda_{1}}T+\mathcal{S}^{\mu_{1},\mu_{2}}\nabla ^{2}T \\
\nabla _{\mu_{1}}\nabla _{\lambda_{1}}(\mathcal{S}^{\mu_{1},\mu_{2}}T) & =-\varepsilon _{\lambda_{1}~~~\rho_{1}}^{~~~~\mu_{1}}\varepsilon _{\mu_{1}~~~\sigma_{1}}^{~~~~\rho_{1}}\mathcal{S}^{\sigma_{1},\mu_{2}}T+i\varepsilon _{\lambda_{1}~~~\rho_{1}}^{~~~~\mu_{1}}\mathcal{A}^{\rho_{1},\mu_{2}}\nabla _{\mu_{1}}T+\mathcal{S}^{\mu_{1},\mu_{2}}\nabla _{\mu_{1}}\nabla _{\lambda_{1}}T \\
 & =-2\mathcal{S}_{\lambda_{1}}^{~~~\mu_{2}}T+i\varepsilon _{\lambda_{1}~~~\rho_{1}}^{~~~~\mu_{1}}\mathcal{A}^{\rho_{1},\mu_{2}}\nabla _{\mu_{1}}T+\mathcal{S}^{\mu_{1},\mu_{2}}\nabla _{\mu_{1}}\nabla _{\lambda_{1}}T
\end{align}$$

then

$$\begin{align}
 & (g_{\mu_{1}\lambda_{1}}\nabla ^{2}-\nabla _{\mu_{1}}\nabla _{\lambda_{1}}-g_{\mu_{1}\lambda_{1}}\mu ^{2}) \frac{1}{2}\mathcal{S}^{\mu_{1},\mu_{2}}T \\
= & \frac{1}{2}(2\mathcal{S}_{\lambda_{1}}^{~~~\mu_{2}}T+2i\varepsilon ^{\nu_{1}}_{~~~\lambda_{1}\rho_{1}}\mathcal{A}^{\rho_{1},\mu_{2}}\nabla _{\nu_{1}}T+\mathcal{S}_{\lambda_{1}}^{~~~\mu_{2}}\nabla ^{2}T+2\mathcal{S}_{\lambda_{1}}^{~~~\mu_{2}}T-i\varepsilon _{\lambda_{1}~~\rho_{1}}^{~~~~\mu_{1}}\mathcal{A}^{\rho_{1},\mu_{2}}\nabla _{\mu_{1}}T-\mathcal{S}^{\mu_{1},\mu_{2}}\nabla _{\mu_{1}}\nabla _{\lambda_{1}}T-\mu ^{2}\mathcal{S}_{\lambda_{1}}^{~~~\mu_{2}}T) \\
= & \mathcal{S}_{\lambda_{1}}^{~~~\mu_{2}}\left( \frac{1}{2}\nabla ^{2}-\frac{1}{2}\mu ^{2}+2 \right)-\frac{3}{2}i\varepsilon _{\lambda_{1}~~~\rho_{1}}^{~~~~\nu_{1}}\mathcal{A}^{\rho_{1},\mu_{2}}\nabla _{\nu_{1}}T-\frac{1}{2}\mathcal{S}^{\mu_{1},\mu_{2}}\nabla _{\mu_{1}}\nabla _{\lambda_{1}}T
\end{align}$$

add then up, we have

$$\begin{align}
  & (g_{\mu_{1}\lambda_{1}}\nabla ^{2}-\nabla _{\mu_{1}}\nabla _{\lambda_{1}}-g_{\mu_{1}\lambda_{1}}\mu ^{2}) \left[ \frac{1}{\mu ^{2}}\nabla ^{\mu_{1}}\nabla ^{\mu_{2}}+\frac{i}{2\mu}\varepsilon ^{\mu_{1}\nu_{1}}_{~~~~~~~\rho_{1}}\mathcal{A}^{\rho_{1},\mu_{2}}\nabla _{\nu_{1}}+\frac{1}{2}\mathcal{S}^{\mu_{1},\mu_{2}} \right]T \\
= & -\nabla _{\lambda_{1}}\nabla ^{\mu_{2}}T-\frac{1}{\mu}\mathcal{S}_{\lambda_{1}}^{~~~\mu_{2}}\nabla ^{2}T+\frac{i}{2\mu}\varepsilon _{\lambda_{1}~~~\rho_{1}}^{~~~~\nu_{1}}\mathcal{A}^{\rho_{1},\mu_{2}}\nabla _{\nu_{1}}(\nabla ^{2}-\mu ^{2})T \\
 & +\mathcal{S_{\lambda_{1}}^{~~~\mu_{2}}}\left( \frac{1}{2}\nabla ^{2}-\frac{\mu ^{2}}{2}+2 \right)T-\frac{3}{2}i\varepsilon _{\lambda_{1}~~~\rho_{1}}^{~~~~\nu_{1}}\mathcal{A}^{\rho_{1},\mu_{2}}\nabla _{\nu_{1}}T-\frac{1}{2}\mathcal{S}^{\mu_{1},\mu_{2}}\nabla _{\mu_{1}}\nabla _{\lambda_{1}}T \\
= & -\nabla _{\lambda_{1}}\nabla ^{\mu_{2}}T-\frac{1}{2}\mathcal{S}^{\mu_{1},\mu_{2}}\nabla _{\mu_{1}}\nabla _{\lambda_{1}}T+\frac{i}{2\mu}\varepsilon _{\lambda_{1}~~~\rho_{1}}^{~~~~\nu_{1}}\mathcal{A}^{\rho_{1},\mu_{2}}\nabla _{\nu_{1}}(\nabla ^{2}-\mu(\mu+2))T \\
 & +\left(\frac{1}{2}-\frac{1}{\mu}\right)\mathcal{S}_{\lambda_{1}}^{~~~\mu_{2}}\left(\nabla ^{2}-\mu(\mu+2)\right)T-\frac{i}{2}\varepsilon _{\lambda_{1}~~~\rho_{1}}^{~~~~\nu_{1}}\mathcal{A}^{\rho_{1},\mu_{2}}\nabla _{\nu_{1}}T
\end{align}$$

$$\begin{align}
\nabla _{\lambda_{1}}\nabla ^{\mu_{2}}T(\rho) & = \nabla _{\lambda_{1}}(T'l^{\mu_{2}}) \\
 & =\nabla _{\lambda_{1}}l^{\mu_{2}}T'+T''l_{\lambda_{1}}l^{\mu_{2}} \\
 & =-\frac{1}{\sinh \rho}\mathcal{P}_{\lambda_{1}}^{~~~\mu_{2}}T'+l_{\lambda_{1}}l^{\mu_{2}}T'' \\
\varepsilon _{\lambda_{1}~~~\rho_{1}}^{~~~~\nu_{1}}\mathcal{A}^{\rho_{1},\mu_{2}}\nabla _{\nu_{1}}T & =\varepsilon _{\lambda_{1}~~~\rho_{1}}^{~~~~\nu_{1}}\mathcal{A}^{\rho_{1},\mu_{2}}l_{\nu_{1}}T' \\
 & =-2i\sinh \rho\varepsilon _{\lambda_{1}~~~\rho_{1}}^{~~~~\nu_{1}}\mathcal{Q}^{\rho_{1},\mu_{2}}l_{\nu_{1}}T' \\
 & =2i\sinh \rho \varepsilon _{\lambda_{1}~~~\rho_{1}}^{~~~~\nu_{1}}\varepsilon ^{\rho_{1}}_{~~~~\sigma_{1}\tau_{1}}l^{\tau_{1}}\mathcal{P}^{\sigma_{1}\mu_{2}}l_{\nu_{1}}T' \\
 & =2i\sinh \rho\left(g_{\lambda_{1}\sigma_{1}}\delta ^{\nu_{1}}_{\tau_{1}}-g_{\lambda_{1}\tau_{1}}\delta ^{\nu_{1}}_{\sigma_{1}}\right)l^{\tau_{1}}l_{\nu_{1}}\mathcal{P}^{\sigma_{1},\mu_{2}}T' \\
 & =2i\sinh \rho\mathcal{P}_{\lambda_{1}}^{~~~\mu_{2}}T' \\
\mathcal{S}^{\mu_{1},\mu_{2}}\nabla _{\mu_{1}}\nabla _{\lambda_{1}} & =\mathcal{S}^{\mu_{1},\mu_{2}}\nabla _{\mu_{1}}(T'l_{\lambda_{1}}) \\
 & =\mathcal{S}^{\mu_{1},\mu_{2}}\left(T''l_{\mu_{1}}l_{\lambda_{1}}+T' \frac{\cosh \rho}{\sinh \rho}(g_{\mu_{1}\lambda_{1}}-l_{\mu_{1}}l_{\lambda_{1}})\right) \\
 & =2\left( \frac{\cosh ^{2}\rho}{\sinh \rho}\mathcal{P}_{\lambda_{1}}^{~~~\mu_{2}}T'-l_{\lambda_{1}}l^{\mu_{2}}T'' \right) \\
\varepsilon _{\lambda_{1}~~~\rho_{1}}^{~~~~\nu_{1}}\mathcal{A}^{\rho_{1},\mu_{2}}\nabla _{\nu_{1}}(\nabla ^{2}-\mu(\mu+2))T & =\varepsilon _{\lambda_{1}~~~\rho_{1}}^{~~~~\nu_{1}}\mathcal{A}^{\rho_{1},\mu_{2}}\nabla _{\nu_{1}}\left( -\frac{1}{\sqrt{ g(x_{1}) }}\delta ^{3}(x_{1}-x_{2}) \right) \\
 & =\varepsilon _{\lambda_{1}~~~\rho_{1}}^{~~~~\nu_{1}}\nabla _{\nu_{1}}\mathcal{A}^{\rho_{1},\mu_{2}} \frac{1}{\sqrt{ g(x_{1}) }}\delta ^{3}(x_{1}-x_{2}) \\
 & =i\varepsilon _{\lambda_{1}~~~\rho_{1}}^{~~~~\nu_{1}}\varepsilon _{\nu_{1}~~~\sigma_{1}}^{~~~~\rho_{1}}\mathcal{S}^{~\sigma_{1},\mu_{2}} \frac{1}{\sqrt{ g(x_{1}) }}\delta ^{3}(x_{1}-x_{2}) \\
 & =2i\mathcal{S}_{\lambda_{1}}^{~~~\mu_{2}} \frac{1}{\sqrt{ g(x_{1}) }}\delta ^{3}(x_{1}-x_{2}) \\
 & =4i\delta _{\lambda_{1}}^{\mu_{2}} \frac{1}{\sqrt{ g(x_{1}) }}\delta ^{3}(x_{1}-x_{2})
\end{align}$$

here we have used $\displaystyle{\mathcal{P}_{\lambda_{1}}^{~~~\mu_{2}}l^{\lambda_{1}}=\nabla ^{\mu_{2}}(l_{\lambda_{1}}l^{\lambda_{1}})=0}$ and $\displaystyle{g^{\mu_{1},\mu_{2}}\delta ^{3}(x_{1}-x_{2})=\bar{g}^{\mu_{1},\mu_{2}}\delta ^{3}(x_{1}-x_{2})=g^{\mu_{1}\mu_{2}}\delta ^{3}(x_{1}-x_{2})}$. then

$$\begin{align}
  & (g_{\mu_{1}\lambda_{1}}\nabla ^{2}-\nabla _{\mu_{1}}\nabla _{\lambda_{1}}-g_{\mu_{1}\lambda_{1}}\mu ^{2}) \left[ \frac{1}{\mu ^{2}}\nabla ^{\mu_{1}}\nabla ^{\mu_{2}}+\frac{i}{2\mu}\varepsilon ^{\mu_{1}\nu_{1}}_{~~~~~~~\rho_{1}}\mathcal{A}^{\rho_{1},\mu_{2}}\nabla _{\nu_{1}}+\frac{1}{2}\mathcal{S}^{\mu_{1},\mu_{2}} \right]T \\
= & \frac{1}{\sinh \rho}\mathcal{P}_{\lambda_{1}}^{~~~\mu_{2}}T'-l_{\lambda_{1}}l^{\mu_{2}}T''-\left( \frac{\cosh ^{2}\rho}{\sinh \rho}\mathcal{P}_{\lambda_{1}}^{~~~\mu_{2}}T'-l_{\lambda_{1}}l^{\mu_{2}}T'' \right)-\frac{2}{\mu} \delta _{\lambda_{1}}^{~\mu_{2}} \frac{1}{\sqrt{ g(x_{1}) }}\delta ^{3}(x_{1}-x_{2}) \\
 & -\left(\frac{1}{2}-\frac{1}{\mu}\right)\mathcal{S}_{\lambda_{1}}^{~~~\mu_{2}}  \frac{1}{\sqrt{ g(x_{1}) }}\delta ^{3}(x_{1}-x_{2})+\sinh \rho \mathcal{P}_{\lambda_{1}}^{~~~\mu_{2}}T' \\
= & -g_{\lambda_{1}}^{~~~\mu_{2}} \frac{1}{\sqrt{ g(x_{1}) }}\delta ^{3}(x_{1}-x_{2})
\end{align}$$

which is consistent with the equation of motion. therefore we have verified that the covariant part of the correlation function is consistent with the equation of motion.

however this procedure is not compatible with the Proca-Chern-Simons theory. we have to prove for each branch of the correlation function that it is consistent with the equation of motion...

---

this procudure is hard to be generalized to the Proca-Chern-Simons theory... to do this, we have to prove for only the $\displaystyle{u/v}$ branch, the time-ordered correlation function satisfies

$$\begin{align}
(\varepsilon _{\mu_{1}~~~\rho_{1}}^{~~~~\nu_{1}}\nabla _{\nu_{1}}-\mu g_{\mu_{1}\rho_{1}})\braket{ 0|\mathcal{T}A_{u}^{\rho_{1}}(x_{1})A_{u}^{\mu_{2}}(x_{2})|0 } & \propto g^{\rho_{1}\mu_{2}}\frac{1}{\sqrt{ g(x_{1}) }}\delta ^{3}(x_{1}-x_{2})
\end{align}$$

we first derive the correlation function for the $\displaystyle{u/v}$ branch. we have

$$\begin{align}
\braket{ 0|\mathcal{T}A_{u}^{\mu_{1}}(x_{1})A_{u}^{\mu_{2}}(x_{2})|0 }  & =\lim_{ \varepsilon \to 0 }\sum ^{\infty}_{n,\bar{n}=0}(f^{\mu_{1}}_{u,n,\bar{n}}(x_{1}^{+})f^{*\mu_{2}}_{u,n,\bar{n}}(x_{2})\theta(\tau_{1}-\tau_{2})+f^{\mu_{2}}_{u,n,\bar{n}}(x_{2})f^{*\mu_{1}}_{u,n,\bar{n}}(x_{1}^{-})\theta(\tau_{2}-\tau_{1})) \\
 & =-\frac{1}{2\mu ^{2}}g^{\mu_{1}\tau}g^{\mu_{2}\tau} \frac{N^{2}(x_{1})}{\sqrt{ g(x_{1}) }}\delta ^{3}(x_{1}-x_{2}) \\
 & +\left(\frac{1}{2\mu ^{2}}\nabla ^{\mu_{1}}\nabla ^{\mu_{2}}+\frac{i}{2\mu}\varepsilon ^{\mu_{1}\nu_{1}}_{~~~~~~~\rho_{1}}g^{\rho_{1},\mu_{2}}\nabla _{\nu_{1}}+\frac{1}{2}g^{\mu_{1},\mu_{2}}\right)T
\end{align}$$

now we will verify that the covariant part of the above correlation function is consistent with the equation of motion.

$$\begin{align}
(\varepsilon _{\mu_{1}~~~\rho_{1}}^{~~~~\nu_{1}}\nabla _{\nu_{1}}-\mu g_{\mu_{1}\rho_{1}})\braket{ 0|\mathcal{T}A_{u}^{\rho_{1}}A^{\mu_{2}}(x_{2})|0 } & = \frac{1}{2\mu ^{2}}\varepsilon _{\mu_{1}~~~\rho_{1}}^{~~~~\nu_{1}}\nabla _{\nu_{1}}\nabla ^{\rho_{1}}\nabla ^{\mu_{2}}T-\frac{1}{2\mu}\nabla _{\rho_{1}}\nabla ^{\mu_{2}}T \\
 & +\frac{i}{4\mu}\varepsilon _{\mu_{1}~~~\rho_{1}}^{~~~~\nu_{1}}\varepsilon ^{\rho_{1}\sigma_{1}}_{~~~~~~~\lambda_{1}}(\mathcal{S}^{\lambda_{1},\mu_{2}}+\mathcal{A}^{\lambda_{1},\mu_{2}})\nabla _{\sigma_{1}}T-\frac{i}{4}\varepsilon ^{~~~~\sigma_{1}}_{\rho_{1}~~~\lambda_{1}}(\mathcal{S}^{\lambda_{1},\mu_{2}}+\mathcal{A}^{\lambda_{1},\mu_{2}})T \\
 & +\frac{1}{4}\varepsilon _{\mu_{1}~~~\rho_{1}}^{~~~~\nu_{1}}\nabla _{\nu_{1}}(\mathcal{S}^{\rho_{1},\mu_{2}}+\mathcal{A}^{\rho_{1},\mu_{2}})T-\frac{1}{4}\mu (\mathcal{S}_{\rho_{1}}^{~~~\mu_{2}}+\mathcal{A}_{\rho_{1}}^{~~~\mu_{2}})T \\
 & =-\frac{1}{2\mu}\nabla _{\rho_{1}}\nabla ^{\mu_{2}}T
\end{align}$$

$$\begin{align}
 & (\varepsilon _{\mu_{1}~~~\rho_{1}}^{~~~~\nu_{1}}\nabla _{\nu_{1}}-\mu g_{\mu_{1}\rho_{1}})\left(\frac{1}{2\mu ^{2}}\nabla ^{\rho_{1}}\nabla ^{\mu_{2}}+\frac{i}{2\mu}\varepsilon ^{\rho_{1},\sigma_{1}}_{~~~~~~~\lambda_{1}}g^{\lambda_{1},\mu_{2}}\nabla _{\sigma_{1}}+\frac{1}{2}g^{\rho_{1},\mu_{2}}\right)T \\
= & \frac{1}{2\mu ^{2}}\varepsilon _{\mu_{1}~~~\rho_{1}}^{~~~~\nu_{1}}\nabla _{\nu_{1}}\nabla ^{\rho_{1}}\nabla ^{\mu_{2}}T-\frac{1}{2\mu}\nabla _{\mu_{1}}\nabla ^{\mu_{2}}T \\
 & +\frac{i}{2\mu}\varepsilon _{\mu_{1}~~~\rho_{1}}^{~~~~\nu_{1}}\varepsilon ^{\rho_{1}\sigma_{1}}_{~~~~~~~\lambda_{1}}\nabla _{\nu_{1}}g^{\lambda_{1},\mu_{2}}\nabla _{\sigma_{1}}T+\frac{i}{2\mu}\varepsilon _{\mu_{1}~~~\rho_{1}}^{~~~~\nu_{1}}\varepsilon ^{\rho_{1}\sigma_{1}}_{~~~~~~~\lambda_{1}}g^{\lambda_{1},\mu_{2}}\nabla _{\nu_{1}}\nabla _{\sigma_{1}}T-\frac{i}{2}\varepsilon _{\mu_{1}~~~\rho_{1}}^{~~~~\nu_{1}}g^{\rho_{1},\mu_{2}}\nabla _{\nu_{1}}T \\
 & +\frac{1}{2}\varepsilon _{\mu_{1}~~~\rho_{1}}^{~~~~\nu_{1}}\nabla _{\nu_{1}}g^{\rho_{1},\mu_{2}}T+\frac{1}{2}\varepsilon _{\mu_{1}~~~\rho_{1}}^{~~~~\nu_{1}}g^{\rho_{1},\mu_{2}}\nabla _{\nu_{1}}T-\frac{\mu}{2}g_{\mu_{1}}^{~~~\mu_{2}}T \\
= & -\frac{1}{2\mu}\nabla _{\mu_{1}}\nabla ^{\mu_{2}}T
\end{align}$$

$$\begin{align}
-\frac{1}{2\mu}\varepsilon _{\mu_{1}~~~\rho_{1}}^{~~~~\nu_{1}}\varepsilon ^{\rho_{1}\sigma_{1}}_{~~~~~~~\lambda_{1}}\varepsilon _{\nu_{1}~~~\tau_{1}}^{~~~~\lambda_{1}}
\end{align}$$

$$\begin{align}
 & \varepsilon _{\mu_{1}~~~\rho_{1}}^{~~~~\nu_{1}}\nabla _{\nu_{1}}\left(\frac{1}{2\mu ^{2}}\nabla ^{\rho_{1}}\nabla ^{\mu_{2}}+\frac{i}{4\mu}\varepsilon ^{\rho_{1}\sigma_{1}}_{~~~~~~~\lambda_{1}}(\mathcal{S}^{\lambda_{1},\mu_{2}}+\mathcal{A}^{\lambda_{1},\mu_{2}})\nabla _{\sigma_{1}}+\frac{1}{4}(\mathcal{S}^{\rho_{1},\mu_{2}}+\mathcal{A}^{\rho_{1},\mu_{2}})\right)T \\
= & \frac{1}{2\mu ^{2}}\varepsilon _{\mu_{1}}^{~~~~\nu_{1}\rho_{1}}\nabla _{\nu_{1}}\nabla _{\rho_{1}}\nabla ^{\mu_{2}}T+\frac{i}{4\mu}\varepsilon _{\mu_{1}~~~\rho_{1}}^{~~~~\nu_{1}}\varepsilon ^{\rho_{1}\sigma _{1}}_{~~~~~~~\lambda_{1}}(\nabla _{\nu_{1}}\mathcal{S}^{\lambda_{1},\mu_{2}}+\nabla _{\nu_{1}}\mathcal{A}^{\lambda_{1},\mu_{2}})\nabla _{\sigma_{1}}T \\
 & +\frac{i}{4\mu}\varepsilon _{\mu_{1}~~~\rho _{1}}^{~~~~\nu_{1}}\varepsilon ^{\rho_{1}\sigma_{1}}_{~~~~~~~\lambda_{1}}(\mathcal{S}^{\lambda_{1},\mu_{2}}+\mathcal{A}^{\lambda_{1},\mu_{2}})\nabla _{\nu_{1}}\nabla _{\sigma_{1}}T \\
 & +\frac{1}{4}\varepsilon _{\mu_{1}~~~\rho_{1}}^{~~~~\nu_{1}}(\nabla _{\nu_{1}}\mathcal{S^{\rho_{1},\mu_{2}}+\nabla _{\nu_{1}}}\mathcal{A}^{\rho_{1},\mu_{2}})T+\frac{1}{4}\varepsilon _{\mu_{1}~~~\rho_{1}}^{~~~~\nu_{1}}(\mathcal{S}^{\rho_{1},\mu_{2}}+\mathcal{A}^{\rho_{1},\mu_{2}})\nabla _{\nu_{1}}T \\
= &+\frac{1}{4\mu}\varepsilon _{\mu_{1}~~~\rho_{1}}^{~~~~\nu_{1}}(\mathcal{S}^{\rho_{1},\mu_{2}}+\mathcal{A}^{\rho_{1},\mu_{2}})\nabla _{\nu_{1}}T+\frac{i}{4\mu}(\mathcal{S}_{\mu_{1}}^{~~~\mu_{2}}+\mathcal{A}_{\mu_{1}}^{~~~~\mu_{2}})\nabla ^{2}T-\frac{i}{4\mu}(\mathcal{S}^{\nu_{1},\mu_{2}}+\mathcal{A}^{\nu_{1},\mu_{2}})\nabla _{\nu_{1}}\nabla _{\mu_{1}}T \\
 & -\frac{i}{2}(\mathcal{S}_{\mu_{1}}^{~~~\mu_{2}}+\mathcal{A}_{\mu_{1}}^{~~~\mu_{2}})T+\frac{1}{4}\varepsilon _{\mu_{1}~~~\rho_{1}}^{~~~~\nu_{1}}(\mathcal{S}^{\rho_{1},\mu_{2}}+\mathcal{A}^{\rho_{1},\mu_{2}})\nabla _{\nu_{1}}T
\end{align}$$

hard to simplify...

---

notice that

$$\begin{align}
\varepsilon _{\mu}^{~\nu \rho}\nabla _{\nu}f_{u,\rho}-\mu f_{u,\mu} & =0 \\
\varepsilon _{\mu}^{~\nu \rho}\nabla _{\nu}f_{u,\rho}+\mu f_{u,\mu} & =2\mu f_{u,\mu} \\
\varepsilon _{\mu}^{~\nu \rho}\nabla _{\nu}f_{v,\rho}-\mu f_{v,\mu} & =-2\mu f_{v,\mu} \\
\varepsilon _{\mu}^{~\nu \rho}\nabla _{\nu}f_{v,\rho}+\mu f_{v,\mu} & =0
\end{align}$$

act $\displaystyle{\varepsilon _{\mu}^{~\nu \rho}\nabla _{\nu}\pm\mu \delta _{\mu}^{\rho}}$ on the whole correlation function, we have

$$\begin{align}
 \braket{ 0|\mathcal{T}A^{\mu_{1}}_{u}(x_{1})A_{u}^{\mu_{2}}(x_{2})|0 } & =\frac{1}{2\mu}\left(\varepsilon ^{\mu_{1}\nu_{1}}_{~~~~~~~\rho_{1}}\nabla _{\nu_{1}}+\mu \delta ^{\mu_{1}}_{\rho_{1}}\right)\braket{ 0|\mathcal{T}A^{\rho_{1}}(x_{1})A^{\mu_{2}}(x_{2})|0 }  \\
\braket{ 0|\mathcal{T}A^{\mu_{1}}_{v}(x_{1})A_{v}^{\mu_{2}}(x_{2})|0 } & =-\frac{1}{2\mu}(\varepsilon _{~~~~~~~\rho_{1}}^{\mu_{1}\nu_{1}}\nabla _{\nu_{1}}-\mu \delta ^{\mu_{1}}_{\rho_{1}})\braket{ 0|\mathcal{T}A^{\rho_{1}}(x_{1})A^{\mu_{2}}(x_{2})|0 }
\end{align}$$

then act $\displaystyle{\varepsilon _{\mu}^{~\nu \rho}\nabla _{\nu}\mp \mu \delta _{\mu}^{\rho}}$ on the above correlation function, we have

$$\begin{align}
(\varepsilon ^{\mu_{1}\nu_{1}}_{~~~~~~~\rho_{1}}\nabla _{\nu_{1}}-\mu \delta ^{\mu_{1}}_{\rho_{1}})\braket{ 0|\mathcal{T}A_{u}^{\rho_{1}}(x_{1})A_{u}^{\mu_{2}}(x_{2})|0 } & =-\frac{1}{2\mu}g^{\mu_{1}\mu_{2}} \frac{1}{\sqrt{ g(x_{1}) }}\delta ^{3}(x_{1}-x_{2}) \\
(\varepsilon _{~~~~~~~\rho_{1}}^{\mu_{1}\nu_{1}}\nabla _{\nu_{1}}+\mu \delta ^{\mu_{1}}_{\rho_{1}})\braket{ 0|\mathcal{T}A_{v}^{\rho_{1}}(x_{1})A_{v}^{\mu_{2}}(x_{2})|0 } & =\frac{1}{2\mu}g^{\mu_{1}\mu_{2}} \frac{1}{\sqrt{ g(x) }}\delta ^{3}(x_{1}-x_{2})
\end{align}$$

finally act $\displaystyle{\varepsilon _{\mu}^{~\nu \rho}\nabla _{\nu}\pm \mu \delta _{\mu}^{\rho}}$ on the above correlation function, we have

$$\begin{align}
(\delta _{\rho_{1}}^{\mu_{1}}\nabla ^{2}-\nabla _{\rho_{1}}\nabla ^{\mu_{1}}-\mu ^{2}\delta _{\rho_{1}}^{\mu_{1}})\braket{ 0|\mathcal{T}A_{u}^{\rho_{1}}(x_{1})A_{u}^{\mu_{2}}(x_{2})|0 } & = -\frac{1}{2\mu}(\varepsilon _{~~~~~~~\rho_{1}}^{\mu_{1}\nu_{1}}\nabla _{\nu_{1}}+\mu \delta ^{\mu_{1}}_{\rho_{1}})g^{\rho_{1}\mu_{2}} \frac{1}{\sqrt{ g(x_{1}) }}\delta ^{3}(x_{1}-x_{2}) \\
(\delta _{\rho_{1}}^{\mu_{1}}\nabla ^{2}-\nabla _{\rho_{1}}\nabla ^{\mu_{1}}-\mu ^{2}\delta _{\rho_{1}}^{\mu_{1}})\braket{ 0|\mathcal{T}A_{v}^{\rho_{1}}(x_{1})A_{v}^{\mu_{2}}(x_{2})|0 } & = \frac{1}{2\mu}(\varepsilon ^{\mu_{1}\nu_{1}}_{~~~~~~~\rho_{1}}\nabla _{\nu_{1}}-\mu \delta ^{\mu_{1}}_{\rho_{1}})g^{\rho_{1}\mu_{2}} \frac{1}{\sqrt{ g(x) }}\delta ^{3}(x_{1}-x_{2})
\end{align}$$

adding them up...

as for Proca-Chern-Simons theory, we have

$$\begin{align}
(\varepsilon _{\mu}^{~\nu \rho}\nabla _{\nu}-\mu _{+} \delta _{\mu}^{\rho})(\varepsilon _{\rho}^{~\sigma \lambda}\nabla _{\sigma}+\mu _{-}\delta _{\rho}^{\lambda})A_{\lambda}=0
\end{align}$$

notice that the eom structure are the same as the Proca theory, we can just replace $\displaystyle{\mu}$ with $\displaystyle{\mu _{\pm}}$ in the above procedure, but we have to take care of the normalzation factor. we have

$$\begin{align}
(\varepsilon ^{\mu_{1}\nu_{1}}_{~~~~~~~\rho_{1}}\nabla _{\nu_{1}}-\mu _{+} \delta ^{\mu_{1}}_{\rho_{1}})\braket{ 0|\mathcal{T}A_{u}^{\rho_{1}}(x_{1})A_{u}^{\mu_{2}}(x_{2})|0 } & =-\frac{1}{2\bar{\mu}}g^{\mu_{1}\mu_{2}} \frac{1}{\sqrt{ g(x_{1}) }}\delta ^{3}(x_{1}-x_{2}) \\
(\varepsilon _{~~~~~~~\rho_{1}}^{\mu_{1}\nu_{1}}\nabla _{\nu_{1}}+\mu _{-} \delta ^{\mu_{1}}_{\rho_{1}})\braket{ 0|\mathcal{T}A_{v}^{\rho_{1}}(x_{1})A_{v}^{\mu_{2}}(x_{2})|0 } & =\frac{1}{2\bar{\mu}}g^{\mu_{1}\mu_{2}} \frac{1}{\sqrt{ g(x) }}\delta ^{3}(x_{1}-x_{2})
\end{align}$$

then

$$\begin{align}
E_{\rho_{1}}^{\mu_{1}}\braket{ 0|\mathcal{T}A_{u}^{\mu_{1}}(x_{1})A_{u}^{\mu_{2}}(x_{2})|0 }  & =-\frac{1}{2\bar{\mu}}\left(\varepsilon ^{\mu_{1}\nu_{1}}_{~~~~~~~\rho_{1}}\nabla _{\nu_{1}}+\mu _{-}\delta ^{\mu_{1}}_{\rho_{1}}\right) \frac{g^{\rho_{1}\mu_{2}}}{\sqrt{ g(x_{1}) }} \delta ^{3}(x_{1}-x_{2}) \\
E_{\rho_{1}}^{\mu_{1}}\braket{ 0|\mathcal{T}A_{v}^{\mu_{1}}(x_{1})A_{v}^{\mu_{2}}(x_{2})|0 } & =\frac{1}{2\bar{\mu}}\left(\varepsilon ^{\mu_{1}\nu_{1}}_{~~~~~~~\rho_{1}}\nabla _{\nu_{1}}-\mu _{+}\delta ^{\mu_{1}}_{\rho_{1}}\right) \frac{g^{\rho_{1}\mu_{2}}}{\sqrt{ g(x) }} \delta ^{3}(x_{1}-x_{2})
\end{align}$$

add them up, we have

$$\begin{align}
E^{\mu_{1}}_{~\rho_{1}}\braket{ 0|\mathcal{T}A^{\mu_{1}}(x_{1})A^{\mu_{2}}(x_{2})|0 } & =-g^{\mu_{1}\mu_{2}} \frac{1}{\sqrt{ g(x_{1}) }}\delta ^{3}(x_{1}-x_{2})
\end{align}$$

where $\displaystyle{E}$ is the Euler-Lagrange operator.
