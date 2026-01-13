turn to Euclidean field theory

$$\begin{align}
A^{\tau}(\tau,r,\phi) & =iA^{t}(t=-i\tau,r,\phi) \\
A^{r}(\tau,r,\phi) & =A^{r}(t=-i\tau,r,\phi) \\
A^{\phi}(\tau,r,\phi) & =A^{\phi}(t=-i\tau,r,\phi)
\end{align}$$

expand

$$\begin{align}
A^{\mu} & =\sum ^{\infty}_{n,\bar{n}=0}a_{+,n,\bar{n}} A^{\mu}_{+,n,\bar{n}}+a^{\dagger}_{+,n,\bar{n}}A^{*\mu}_{+,n,\bar{n}}+a_{-,n,\bar{n}}A^{\mu}_{-,n,\bar{n}}+a^{\dagger}_{-,n,\bar{n}}A^{*\mu}_{-,n,\bar{n}}
\end{align}$$

the correlation function is

$$\begin{align}
\braket{ \Omega|\mathcal{T}A^{\mu _{1}}(x_{1})A^{\mu _{2}}(x_{2})|\Omega }& =\begin{cases}
\sum ^{\infty}_{n,\bar{n}=0}A^{\mu _{1}}_{+,n,\bar{n}}(x_{1})A^{*\mu _{2}}_{+,n,\bar{n}}(x_{2})+A^{\mu_{1}}_{-,n,\bar{n}}(x_{1})A^{*\mu _{2}}_{-,n,\bar{n}}(x_{2}) & \text{for} & \tau _{1}>\tau _{2} \\
\sum ^{\infty}_{n,\bar{n}=0}A^{\mu _{2}}_{+,n,\bar{n}}(x_{2})A^{*\mu _{1}}_{+,n,\bar{n}}(x_{1})+A^{\mu _{2}}_{-,n,\bar{n}}(x_{2})A^{*\mu _{1}}_{-,n,\bar{n}}(x_{1}) & \text{for} & \tau _{2}>\tau _{1}
\end{cases}
\end{align}$$

for the moment I can only write down the above expression, and the explicit form still remains to be calculated

---

we first consider the scalar case, with the primary state and their descendants

$$\begin{align}
\phi _{\Delta,0,0} & =\frac{1}{\sqrt{ 2\pi }} \frac{e^{-\Delta \tau}}{(1+r^{2})^{\Delta/2}} \\
\phi _{\Delta,n,\bar{n}} & =\sqrt{ \frac{1}{n!\bar{n}!(\Delta)_{n}(\Delta)_{\bar{n}}} }\mathcal{L}_{\xi _{-1}}^{n}\mathcal{L}_{\bar{\xi}_{-1}}^{\bar{n}}\phi _{\Delta,n,\bar{n}}
\end{align}$$

the Euclidean Killing vectors read

$$\begin{align}
\xi _{-1} & =\frac{1}{2}e^{-\tau+i\phi}\left(i\frac{r}{\sqrt{ 1+r^{2} }}\partial _{\tau}+i\sqrt{ 1+r^{2} }\partial _{r}-\frac{\sqrt{ 1+r^{2} }}{r}\partial _{\phi}\right) \\
\xi _{0} & =\frac{1}{2}\left(i\partial _{\tau}-\partial _{\phi}\right) \\
\xi _{1} & =\frac{1}{2}e^{\tau-i\phi}\left(i \frac{r}{\sqrt{ 1+r^{2} }}\partial _{\tau}-i\sqrt{ 1+r^{2} }\partial _{r}-\frac{\sqrt{ 1+r^{2} }}{r}\partial _{\phi}\right) \\
\bar{\xi}_{-1} & =\frac{1}{2}e^{-\tau-i\phi}\left(i \frac{r}{\sqrt{ 1+r^{2} }}\partial _{\tau}+i\sqrt{ 1+r^{2} }\partial _{r}+\frac{\sqrt{ 1+r^{2} }}{r}\partial _{\phi}\right) \\
\bar{\xi}_{0} & =\frac{1}{2}\left(i\partial _{\tau}+\partial _{\phi}\right) \\
\bar{\xi}_{1} & =\frac{1}{2}e^{\tau+i\phi}\left(i \frac{r}{\sqrt{ 1+r^{2} }}\partial _{\tau}-i\sqrt{ 1+r^{2} }\partial _{r}+\frac{\sqrt{ 1+r^{2} }}{r}\partial _{\phi}\right)
\end{align}$$

the action of the Lie derivatives on the primary state gives

$$\begin{align}
\mathcal{L}_{\xi _{-1}}\phi _{\Delta,n,\bar{n}} & =\sqrt{ (1+n)(\Delta+n) }\phi _{\Delta,n+1,\bar{n}} & \mathcal{L}_{\xi _{-1}}\phi _{\Delta,n,\bar{n}}^{*} & =\sqrt{ (1+n)(\Delta+n) }\phi _{\Delta,n+1,\bar{n}}^{*} \\
\mathcal{L}_{\xi _{0}}\phi _{\Delta,n,\bar{n}} & =-i\left(\frac{\Delta}{2}+n\right)\phi _{\Delta,n,\bar{n}} & \mathcal{L}_{\xi _{0}}\phi _{\Delta,n,\bar{n}}^{*} & =i\left(\frac{\Delta}{2}+n\right)\phi _{\Delta,n,\bar{n}}^{*} \\
\mathcal{L}_{\xi _{1}}\phi _{\Delta,n,\bar{n}} & =-\sqrt{ n(\Delta+n-1) }\phi _{\Delta,n-1,\bar{n}} & \mathcal{L}_{\xi _{1}}\phi _{\Delta,n,\bar{n}}^{*} & =-\sqrt{ n(\Delta+n-1) }\phi _{\Delta,n-1,\bar{n}}^{*} \\
\mathcal{L}_{\bar{\xi}_{-1}}\phi _{\Delta,n,\bar{n}} & =\sqrt{ (1+\bar{n})(\Delta+\bar{n}) }\phi _{\Delta,n,\bar{n}+1} & \mathcal{L}_{\bar{\xi}_{-1}}\phi _{\Delta,n,\bar{n}}^{*} & =\sqrt{ (1+\bar{n})(\Delta+\bar{n}) }\phi _{\Delta,n,\bar{n}+1}^{*} \\
\mathcal{L}_{\bar{\xi}_{0}}\phi _{\Delta,n,\bar{n}} & =-i\left( \frac{\Delta}{2}+\bar{n} \right) \phi _{\Delta,n,\bar{n}} & \mathcal{L}_{\bar{\xi}_{0}}\phi _{\Delta,n,\bar{n}}^{*} & =i\left(\frac{\Delta}{2}+\bar{n}\right)\phi _{\Delta,n,\bar{n}}^{*} \\
\mathcal{L}_{\bar{\xi}_{-1}}\phi _{\Delta,n,\bar{n}} & =-\sqrt{ \bar{n}(\Delta+\bar{n}-1) }\phi _{\Delta,n,\bar{n}-1} & \mathcal{L}_{\bar{\xi}_{-1}}\phi _{\Delta,n,\bar{n}}^{*} & =-\sqrt{ \bar{n}(\Delta+\bar{n}-1) }\phi _{\Delta,n,\bar{n}-1}^{*}
\end{align}$$

consider the following two point function

$$\begin{align}
\sum ^{\infty}_{n,\bar{n}=0}\phi _{\Delta,n,\bar{n}}(x_{1})\phi _{\Delta,n,\bar{n}}^{*}(x_{2}) & =g_{\Delta}(x_{1},x_{2}), \quad \tau _{1}>\tau _{2} \\
 & =\frac{1}{2\pi} \frac{e^{-(\Delta-1)\rho}}{\sinh \rho}
\end{align}$$

with

$$\begin{align}
\cosh \rho & =\sqrt{ 1+r_{1}^{2} }\sqrt{ 1+r_{2}^{2} }\cosh(\tau _{1}-\tau _{2})-r_{1}r_{2}\cos(\phi _{1}-\phi _{2})
\end{align}$$

turn to the vector case, we have the primary states

$$\begin{align}
f_{u,0,0}^{\mu} & =\sqrt{ \frac{\mu+1}{\pi \mu} } \frac{e^{-(\mu+2)\tau}}{(1+r^{2})^{ (\mu+2)/2}}\xi _{1}^{\mu} \\
f_{u,n,\bar{n}}^{\mu} & =\sqrt{ \frac{1}{n!\bar{n}!(\mu)_{n}(\mu+2)_{\bar{n}}} } \mathcal{L}_{\xi _{-1}}^{n}\mathcal{L}_{\bar{\xi}_{-1}}^{\bar{n}} f_{u,0,0}^{\mu} \\
f_{v,0,0}^{\mu} & =\sqrt{ \frac{\mu+1}{\pi \mu} } \frac{e^{-(\mu+2)\tau}}{(1+r^{2})^{ (\mu+2)/2}}\bar{\xi} _{1}^{\mu} \\
f_{v,n,\bar{n}}^{\mu} & =\sqrt{ \frac{1}{n!\bar{n}!(\mu+2)_{n}(\mu)_{\bar{n}}} } \mathcal{L}_{\xi _{-1}}^{n}\mathcal{L}_{\bar{\xi}_{-1}}^{\bar{n}} f_{v,0,0}^{\mu}
\end{align}$$

and we can write them in terms of the scalar normal modes

$$\begin{align}
f_{u,n,\bar{n}}^{\mu} & =\frac{1}{\mu} \sqrt{ 2(\mu+n)(\mu+n+1) }\phi _{\mu+2,n,\bar{n}}\xi _{1}^{\mu} \\
 & +\frac{2i}{\mu}\sqrt{ 2n(\mu+n) }\phi _{\mu+2,n-1,\bar{n}}\xi _{0}^{\mu} \\
 & -\frac{1}{\mu}\sqrt{ 2n(n-1) }\phi _{\mu+2,n-2,\bar{n}}\xi _{-1}^{\mu} \\
f_{v,n,\bar{n}}^{\mu} & =\frac{1}{\mu} \sqrt{ 2(\mu+\bar{n})(\mu+\bar{n}+1) }\phi _{\mu+2,n,\bar{n}}\bar{\xi} _{1}^{\mu} \\
 & +\frac{2i}{\mu}\sqrt{ 2\bar{n}(\mu+\bar{n}) }\phi _{\mu+2,n,\bar{n}-1}\bar{\xi} _{0}^{\mu} \\
 & -\frac{1}{\mu}\sqrt{ 2\bar{n}(\bar{n}-1) }\phi _{\mu+2,n,\bar{n}-2}\bar{\xi} _{-1}^{\mu}
\end{align}$$

thus the two point function reads

$$\begin{align}
\sum ^{\infty}_{n,\bar{n}=0} f_{u,n,\bar{n}}^{\mu _{1}}(x_{1})f_{u,n,\bar{n}}^{*\mu _{2}}(x_{2}) & =\sum ^{\infty}_{n,\bar{n}=0} \frac{2(\mu+n)(\mu+n+1)}{\mu ^{2}}\phi _{\mu+2,n,\bar{n}}(x_{1})\phi ^{*} _{\mu+2,n,\bar{n}}(x_{2})\xi _{1}^{\mu_{1}}(x_{1})\xi _{-1}^{\mu_{2}}(x_{2}) \\
 & -4i \frac{\mu+n}{\mu ^{2}}\sqrt{ n(\mu+n+1) } \phi _{\mu+2,n,\bar{n}}(x_{1})\phi _{\mu+2,n-1,\bar{n}}^{*}(x_{2})\xi_{1}^{\mu_{1}}(x_{1})\xi _{0}^{\mu_{2}}(x_{2}) \\
 & -\frac{2}{\mu ^{2}}\sqrt{ n(n-1)(\mu+n)(\mu+n+1) }\phi _{\mu+2,n,\bar{n}}(x_{1})\phi _{\mu+2,n-2,\bar{n}}^{*}(x_{2})\xi _{1}^{\mu_{1}}(x_{1})\xi _{1}^{\mu_{2}}(x_{2}) \\
 & +4i \frac{\mu+n}{\mu ^{2}}\sqrt{ n(\mu+n+1) }\phi _{\mu+2,n-1,\bar{n}}(x_{1})\phi _{\mu+2,n,\bar{n}}^{*}(x_{2})\xi _{0}^{\mu_{1}}(x_{1})\xi _{-1}^{\mu_{2}}(x_{2}) \\
 & +8 \frac{n(\mu+n)}{\mu ^{2}}\phi _{\mu+2,n-1,\bar{n}}(x_{1})\phi _{\mu+2,n-1,\bar{n}}^{*}(x_{2})\xi _{0}^{\mu_{1}}(x_{1})\xi _{0}^{\mu_{2}}(x_{2}) \\
 & -4i \frac{n}{\mu ^{2}}\sqrt{ (n-1)(\mu+n) }\phi _{\mu+2,n-1,\bar{n}}(x_{1})\phi _{\mu+2,n-2,\bar{n}}^{*}(x_{2})\xi _{0}^{\mu_{1}}(x_{1})\xi _{1}^{\mu_{2}}(x_{2}) \\
 & -\frac{2}{\mu ^{2}}\sqrt{ n(n-1)(\mu+n)(\mu+n+1) }\phi _{\mu+2,n-2,\bar{n}}(x_{2})\phi _{\mu+2,n,\bar{n}}^{*}(x_{2})\xi _{-1}^{\mu_{1}}(x_{1})\xi _{-1}^{\mu_{2}}(x_{2}) \\
 & +4i \frac{n}{\mu ^{2}}\sqrt{ (n-1)(\mu+n) }\phi _{\mu+2,n-2,\bar{n}}(x_{1})\phi _{\mu+2,n-1,\bar{n}}(x_{2})\xi _{-1}^{\mu _{1}}(x_{1})\xi _{0}^{\mu_{2}}(x_{2}) \\
 & +2 \frac{n(n-1)}{\mu ^{2}}\phi _{\mu+2,n-2,\bar{n}}(x_{1})\phi _{\mu+2,n-2,\bar{n}}^{*}(x_{2})\xi _{-1}^{\mu_{1}}(x_{1})\xi _{1}^{\mu_{2}}(x_{2})
\end{align}$$

1. 

$$\begin{align}
 & \sum ^{\infty}_{n,\bar{n}=0} \frac{2(\mu+n)(\mu+n+1)}{\mu ^{2}}\phi _{\mu+2,n,\bar{n}}(x_{1})\phi ^{*}_{\mu+2,n,\bar{n}}(x_{2})\xi _{1}^{\mu_{1}}(x_{1})\xi _{-1}^{\mu_{2}}(x_{2}) \\
= & \sum ^{\infty}_{n,\bar{n}=0} \frac{2}{\mu ^{2}}n(\mu+n+1)\phi _{\mu+2,n,\bar{n}}(x_{1})\phi _{\mu+2,n,\bar{n}}(x_{2})\xi _{1}^{\mu_{1}}(x_{1})\xi _{-1}^{\mu_{2}}(x_{2}) \\
 & +\frac{2}{\mu}\left( \frac{\mu}{2}+n+1 \right)\phi _{\mu+2,n,\bar{n}}(x_{1})\phi _{\mu+2,n,\bar{n}}(x_{2})\xi _{1}^{\mu_{1}}(x_{1})\xi _{-1}^{\mu_{2}}(x_{2}) \\
 & +\phi _{\mu+2,n,\bar{n}}(x_{1})\phi _{\mu+2,n,\bar{n}}(x_{2})\xi _{1}^{\mu_{1}}(x_{1})\xi _{-1}^{\mu_{2}}(x_{2}) \\
= & \left(\frac{2}{\mu ^{2}}\mathcal{L}_{\xi _{1}}^{(1)}\mathcal{L}_{\xi_{1}}^{(2)}+\frac{2i}{\mu}\mathcal{L}_{\xi_{0}}^{(1)}+1\right)g_{\mu+2}(x_{1},x_{2})\xi _{1}^{\mu_{1}}(x_{1})\xi _{-1}^{\mu_{2}}(x_{2})
\end{align}$$

2. 

$$\begin{align}
 & \sum ^{\infty}_{n,\bar{n}=0}-4i \frac{\mu+n}{\mu ^{2}}\sqrt{ n(\mu+n+1) } \phi _{\mu+2,n,\bar{n}}(x_{1})\phi _{\mu+2,n-1,\bar{n}}^{*}(x_{2})\xi_{1}^{\mu_{1}}(x_{1})\xi _{0}^{\mu_{2}}(x_{2}) \\
= & \sum ^{\infty}_{n,\bar{n}=0}-\frac{4i}{\mu ^{2}}\left(\frac{\mu}{2}-i\mathcal{L}_{\xi _{0}}^{(2)}\right)\mathcal{L}_{\xi _{-1}}^{(1)}\phi _{\mu+2,n-1,\bar{n}}(x_{1})\phi _{\mu+2,n-1,\bar{n}}^{*}(x_{2})\xi _{1}^{\mu_{1}}(x_{1})\xi _{0}^{\mu_{2}}(x_{2}) \\
= & -\frac{4}{\mu ^{2}}\mathcal{L}_{\xi _{-1}}^{(1)}\left( \mathcal{L}_{\xi _{0}}^{(2)}+\frac{i\mu}{2} \right)g_{\mu+2}(x_{1},x_{2})\xi _{1}^{\mu_{1}}(x_{1})\xi _{0}^{\mu_{2}}(x_{2})
\end{align}$$

3.

$$\begin{align}
 & \sum ^{\infty}_{n,\bar{n}=0}-\frac{2}{\mu ^{2}}\sqrt{ n(n-1)(\mu+n)(\mu+n+1) }\phi _{\mu+2,n,\bar{n}}(x_{1})\phi _{\mu+2,n-2,\bar{n}}^{*}(x_{2})\xi _{1}^{\mu_{1}}(x_{1})\xi _{1}^{\mu_{2}}(x_{2})  \\
= & \sum ^{\infty}_{n,\bar{n}=0}\frac{2}{\mu ^{2}}\mathcal{L}_{\xi _{-1}}^{(2)}\phi _{\mu+2,n-1,\bar{n}}(x_{1})\mathcal{L}_{\xi _{-1}}^{(2)}\phi _{\mu+2,n-1,\bar{n}}(x_{2})\xi _{1}^{\mu_{1}}(x_{1})\xi _{1}^{\mu_{2}}(x_{2}) \\
= & \frac{2}{\mu ^{2}} \mathcal{L}_{\xi _{-1}}^{(2)}\mathcal{L}_{\xi _{-1}}^{(2)}g_{\mu+2}(x_{1},x_{2})\xi _{1}^{\mu_{1}}(x_{1})\xi _{1}^{\mu_{2}}(x_{2})
\end{align}$$

4. 

$$\begin{align}
 & \sum ^{\infty}_{n,\bar{n}=0}4i \frac{\mu+n}{\mu ^{2}}\sqrt{ n(\mu+n+1) }\phi _{\mu+2,n-1,\bar{n}}(x_{1})\phi _{\mu+2,n,\bar{n}}^{*}(x_{2})\xi _{0}^{\mu_{1}}(x_{1})\xi _{-1}^{\mu_{2}}(x_{2}) \\
= &\sum ^{\infty}_{n,\bar{n}=0} 4i\mathcal{L}_{\xi _{1}}^{(2)}\left(i\mathcal{L}_{\xi _{0}}^{(1)}+\frac{\mu}{2}\right) \phi _{\mu+2,n-1,\bar{n}}(x_{1})\phi _{\mu+2,n-1,\bar{n}}^{*}(x_{2})\xi _{0}^{\mu_{1}}(x_{1})\xi _{-1}^{\mu_{2}}(x_{2}) \\
= & -\frac{4}{\mu ^{2}}\left(\mathcal{L}_{\xi _{0}}^{(1)}-\frac{i\mu}{2}\right)\mathcal{L}_{\xi _{1}}^{(2)}g_{\mu+2}(x_{1},x_{2})\xi _{0}^{\mu_{1}}(x_{1})\xi _{-1}^{\mu_{2}}(x_{2})
\end{align}$$

5. 

$$\begin{align}
 & \sum ^{\infty}_{n,\bar{n}=0}+8 \frac{n(\mu+n)}{\mu ^{2}}\phi _{\mu+2,n-1,\bar{n}}(x_{1})\phi _{\mu+2,n-1,\bar{n}}^{*}(x_{2})\xi _{0}^{\mu_{1}}(x_{1})\xi _{0}^{\mu_{2}}(x_{2}) \\
= & \sum ^{\infty}_{n,\bar{n}=0} \frac{8}{\mu ^{2}}\left( \mathcal{L}_{\xi_{0}}^{(1)}\mathcal{L}_{\xi _{0}}^{(2)}-\frac{\mu ^{2}}{4} \right)\phi _{\mu+1,n-1,\bar{n}}(x_{1})\phi ^{*}_{\mu+2,n-1,\bar{n}}(x_{2})\xi _{0}^{\mu_{1}}(x_{1})\xi _{0}^{\mu_{2}}(x_{2}) \\
= & \frac{8}{\mu ^{2}}\left( \mathcal{L}_{\xi_{0}}^{(1)}\mathcal{L}_{\xi_{0}}^{(2)}-\frac{\mu ^{2}}{4} \right)g_{\mu+2}(x_{1},x_{2})\xi _{0}^{\mu_{1}}(x_{1})\xi _{0}^{\mu_{2}}(x_{2})
\end{align}$$

6.

$$\begin{align}
& \sum ^{\infty}_{n,\bar{n}=0}-4i \frac{n}{\mu ^{2}}\sqrt{ (n-1)(\mu+n) }\phi _{\mu+2,n-1,\bar{n}}(x_{1})\phi _{\mu+2,n-2,\bar{n}}^{*}(x_{2})\xi _{0}^{\mu_{1}}(x_{1})\xi _{1}^{\mu_{2}}(x_{2}) \\
= & -\frac{4}{\mu ^{2}}\left(\mathcal{L}_{\xi_{0}}^{(1)}-i\frac{\mu}{2}\right)\mathcal{L}_{\xi _{-1}}^{(2)}g_{\mu+2}(x_{1},x_{2})\xi _{0}^{\mu_{1}}(x_{1})\xi_{1}^{\mu _{2}}(x_{2})
\end{align}$$

7. 

$$\begin{align}
 & \sum ^{\infty}_{n,\bar{n}=0}-\frac{2}{\mu ^{2}}\sqrt{ n(n-1)(\mu+n)(\mu+n+1) }\phi _{\mu+2,n-2,\bar{n}}(x_{2})\phi _{\mu+2,n,\bar{n}}^{*}(x_{2})\xi _{-1}^{\mu_{1}}(x_{1})\xi _{-1}^{\mu_{2}}(x_{2}) \\
= & \frac{2}{\mu ^{2}}\mathcal{L}_{\xi _{1}}^{(1)}\mathcal{L}_{\xi _{1}}^{(2)}g_{\mu+2}(x_{1},x_{2})\xi _{-1}^{\mu_{1}}(x_{1})\xi _{-1}^{\mu_{2}}(x_{2})
\end{align}$$

8.

$$\begin{align}
 & \sum ^{\infty}_{n,\bar{n}=0}+4i \frac{n}{\mu ^{2}}\sqrt{ (n-1)(\mu+n) }\phi _{\mu+2,n-2,\bar{n}}(x_{1})\phi _{\mu+2,n-1,\bar{n}}(x_{2})\xi _{-1}^{\mu _{1}}(x_{1})\xi _{0}^{\mu_{2}}(x_{2}) \\
= & -\frac{4}{\mu ^{2}} \mathcal{L}_{\xi _{1}}^{(1)}\left(\mathcal{L}_{\xi _{0}}^{(2)}-i\frac{\mu}{2}\right)g_{\mu+2}(x_{1},x_{2})\xi _{-1}^{\mu_{1}}(x_{1})\xi _{0}^{\mu_{2}}(x_{2})
\end{align}$$

9.

$$\begin{align}
& \sum ^{\infty}_{n,\bar{n}=0}+2 \frac{n(n-1)}{\mu ^{2}}\phi _{\mu+2,n-2,\bar{n}}(x_{1})\phi _{\mu+2,n-2,\bar{n}}^{*}(x_{2})\xi _{-1}^{\mu_{1}}(x_{1})\xi _{1}^{\mu_{2}}(x_{2}) \\
= & \frac{2}{\mu ^{2}}\left(\mathcal{L}_{\xi _{1}}^{(1)}\mathcal{L}_{\xi _{-1}}^{(2)}-i\mu \mathcal{L}_{\xi_{0}}^{(1)}+\frac{\mu ^{2}}{2}\right)g_{\mu+2}(x_{1},x_{2})\xi _{-1}^{\mu_{1}}(x_{1})\xi _{1}^{\mu_{2}}(x_{2})
\end{align}$$

add them all together we get

$$\begin{align}
\sum ^{\infty}_{n,\bar{n}=0} f_{u,n,\bar{n}}^{\mu_{1}}(x_{1})f_{u,n,\bar{n}}^{*\mu_{2}}(x_{2}) & =\frac{2}{\mu ^{2}}g^{\mu_{1}\nu_{2}}g^{\mu_{2}\nu_{2}}\partial _{\nu_{1}}\partial _{\nu_{2}}g_{\mu+2}(x_{1},x_{2}) \\
 & +\frac{i}{2\mu}\bar{\varepsilon}^{\mu_{1}\nu_{1}}_{~~~~~~~\rho_{1}}(x_{1})g^{\rho_{1},\mu_{2}}\partial _{\nu_{1}}g_{\mu+2}(x_{1},x_{2}) \\
 & +\frac{1}{2}\left(2\xi _{1}^{\mu_{1}}\xi _{-1}^{\mu_{2}}+2\xi _{-1}^{\mu_{1}}\xi _{1}^{\mu_{2}}-4\xi _{0}^{\mu_{1}}\xi _{0}^{\mu_{2}}\right)g_{\mu+2}(x_{1},x_{2}) \\
 & =\frac{2}{\mu ^{2}}\partial ^{\mu_{1}}\partial ^{\mu_{2}}g_{\mu+2}(x_{1},x_{2})+\frac{i}{2\mu}\varepsilon ^{\mu_{1}\nu_{1}}_{~~~~~~\rho_{1}}(x_{1})g^{\rho_{1},\mu_{2}}(x_{1},x_{2})\partial _{\nu_{1}}g_{\mu+2}(x_{1},x_{2}) \\
 & +\frac{1}{2}g^{\mu_{1},\mu_{2}}(x_{1},x_{2})g_{\mu+2}(x_{1},x_{2})
\end{align}$$

where

$$\begin{align}
g^{\mu_{1},\mu_{2}}(x_{1},x_{2}) & =2\xi _{1}^{\mu_{1}}(x_{1})\xi _{-1}^{\mu_{2}}(x_{2})+2\xi _{-1}^{\mu_{1}}(x_{1})\xi _{1}^{\mu_{2}}(x_{2})-4\xi _{0}^{\mu_{1}}(x_{1})\xi _{0}^{\mu_{2}}(x_{2})
\end{align}$$

similarly we have (check needed)

$$\begin{align}
\sum ^{\infty}_{n,\bar{n}=0}f^{\mu_{1}}_{v,n,\bar{n}}(x_{1})f_{v,n,\bar{n}}^{*\mu_{2}}(x_{2}) & =\frac{2}{\mu ^{2}}\partial ^{\mu_{1}}\partial ^{\mu_{2}}g_{\mu+2}(x_{1},x_{2})-\frac{i}{2\mu}\varepsilon ^{\mu_{2}\nu_{2}}_{~~~~~~\rho_{2}}(x_{2})g^{\rho_{2},\mu_{1}}(x_{1},x_{2})\partial _{\nu_{2}}g_{\mu+2}(x_{1},x_{2}) \\
 & +\frac{1}{2}g^{\mu_{1},\mu_{2}}(x_{1},x_{2})g_{\mu+2}(x_{1},x_{2})
\end{align}$$

