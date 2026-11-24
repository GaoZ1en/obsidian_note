Consider a free scalar field with mass $\mu$ on $\mathrm{AdS}_{3}$ with the action

$$\begin{align}
S = -\frac{1}{2} \int d^3 x \sqrt{-g} (\nabla_\mu \phi \nabla^\mu \phi + \mu^2 \phi^2).
\end{align}$$

In global coordinates

$$\begin{align}
\mathrm{d}s^{2} & =-f\mathrm{d}t^{2}+\dfrac{\mathrm{d}r^{2}}{f}+r^{2}\mathrm{d}\phi ^{2}, & f=1+r^{2}
\end{align}$$

we have

$$\begin{align}
S & =\dfrac{1}{2}\int _{t_{i}}^{t_{f}}\mathrm{d}t\int _{\Sigma _{t}}\mathrm{d}^{2}x\left(\dfrac{r}{f}\dot{\phi}^{2}-rf(\partial _{r}\phi)^{2}-\dfrac{1}{r}(\partial _{\phi}\phi)^{2}-r \mu ^{2}\phi ^{2}\right)
\end{align}$$

introduce a reference mass $\displaystyle{\mu _{0}}$ (with conformal dimension $\displaystyle{\Delta_{0}=1+\sqrt{ 1+\mu _{0}^{2} }}$). The normalized eigenmodes of the $\displaystyle{\mu_{0}}$ theory are

$$\begin{align}
\phi _{nm}(r,\phi) & =\sqrt{ \dfrac{\omega _{0,n,m}}{\pi} \dfrac{(\Delta_{0}+n)_{|m|}}{(1+n)_{|m|}} }e^{im\phi}r^{|m|}f^{-(\Delta_{0}+|m|)/2}P_{n}^{(\Delta _{0}-1,|m|)}\left( \dfrac{r^{2}-1}{r^{2}+1} \right) \\
\omega _{0,n,m} & =\Delta _{0}+2n+|m|
\end{align}$$

they satisfy the orthonormalization condition

$$\begin{align}
\int _{\Sigma}\mathrm{d}^{2}x\dfrac{\sqrt{ \sigma }}{N}\phi _{n_{1}m_{1}}\phi ^{*}_{n_{2}m_{2}} & =\delta _{n_{1}n_{2}}\delta _{m_{1}m_{2}}
\end{align}$$

turn to real basis for convenience

$$\begin{align}
\varphi _{n}(r) & =\phi _{n,0}(r,\phi) \\
\chi _{n,m}(r,\phi) & =\sqrt{ 2 }\mathrm{Re}\phi _{n,m}(r,\phi), & m> 0 \\
\psi _{n,m}(r,\phi) & =\sqrt{ 2 }\mathrm{Im}\phi _{n,m}(r,\phi), & m> 0
\end{align}$$

these are orthonormal with respect to the measure $\sqrt{\sigma}/N$

$$\begin{align}
\int _{\Sigma}\mathrm{d}^{2}x \dfrac{\sqrt{ \sigma }}{N} \varphi _{n_{1}}\varphi _{n_{2}} & =\delta _{n_{1}n_{2}} \\
\int _{\Sigma}\mathrm{d}^{2}x \dfrac{\sqrt{ \sigma }}{N}\chi _{n_{1}m_{1}}\chi _{n_{2}m_{2}} & =\delta _{n_{1}n_{2}}\delta _{m_{1}m_{2}} \\
\int _{\Sigma}\mathrm{d}^{2}x \dfrac{\sqrt{ \sigma }}{M}\psi _{n_{1}m_{1}}\psi _{n_{2}m_{2}} & =\delta _{n_{1}n_{2}}\delta _{m_{1}m_{2}}
\end{align}$$

expand the field as

$$\begin{align}
\phi(x) & =\sum ^{\infty}_{n=0}a_{n}(t)\varphi _{n}(r)+\sum ^{\infty}_{n=0}\sum ^{\infty}_{m=1}(b_{n,m}(t)\chi _{n,m}(r,\phi)+c_{n,m}(t)\psi _{n,m}(r,\phi))
\end{align}$$

collect all basis functions into $\displaystyle{\left\{u_{a}(r,\phi)\right\}=\left\{\varphi _{n},\chi _{n,m},\psi _{n,m}\right\}}$ and all coefficients into a vector $\displaystyle{q(t)}$. Define $\displaystyle{K_{ab}=\delta _{ab}}$ and $\displaystyle{(\Omega _{0}^{2})_{ab}=\omega _{a}^{2}\delta _{ab}}$, where

$$\begin{align}
\omega _{a} & =\Delta _{0}+2n+|m|
\end{align}$$

substituting the expansion into the action gives

$$\begin{align}
S & =\dfrac{1}{2}\int _{t_{i}}^{t_{f}}(\dot{q}^{T}\dot{q}-q^{T}\Omega ^{2}_{0}q)-\dfrac{1}{2}(\mu ^{2}-\mu _{0}^{2})\int _{t_{i}}^{t_{f}}\mathrm{d}t q^{T}Oq
\end{align}$$

here the overlap matrix $\displaystyle{O}$ is defined as

$$\begin{align}
O_{ab} & =\int _{\Sigma}\mathrm{d}^{2}x N\sqrt{ \sigma }u_{a}(r,\phi)u_{b}(r,\phi) \\
 & =\int _{0}^{\infty}\mathrm{d}r\int _{0}^{2\pi}\mathrm{d}\phi ru_{a}(r,\phi)u_{b}(r,\phi)
\end{align}$$

the only non-zero overlaps are between $\displaystyle{\varphi _{n_{1}}}$ and $\displaystyle{\varphi _{n_{2}}}$, and $\displaystyle{\chi _{n_{1},m}}$ and $\displaystyle{\chi _{n_{2},m}}$, and $\displaystyle{\psi _{n_{1},m}}$ and $\displaystyle{\psi _{n_{2},m}}$, with

$$\begin{align}
O_{\varphi,n_{1}n_{2}} & =\int _{0}^{\infty}\mathrm{d}r\int _{0}^{2\pi}\mathrm{d}\phi r\varphi _{n_{1}}\varphi _{n_{2}} \\
O_{\chi,m,n_{1}n_{2}}=O_{\psi,m,n_{1}n_{2}} & =\int _{0}^{\infty}\mathrm{d}r\int _{0}^{2\pi}\mathrm{d}\phi r\chi _{n_{1},m}\chi _{n_{2},m}
\end{align}$$

and we notice that, up to an overall factor, all of them depend on the same radial integral

$$\begin{align}
O^{m}_{n_{1}n_{2}} & =\int _{0}^{\infty}\mathrm{d}r r^{2|m|+1}(1+r^{2})^{-(\Delta_{0}+m)}P_{n_{1}}^{(\Delta_{0}-1,m)}\left(\frac{r^{2}-1}{r^{2}+1}\right)P_{n_{2}}^{(\Delta_{0}-1,m)}\left(\frac{r^{2}-1}{r^{2}+1}\right) \\
 & =2^{-(\Delta_{0}+m)}\int _{-1}^{1}\mathrm{d}x(1+x)^{m}(1-x)^{\Delta_{0}-2}P_{n_{1}}^{(\Delta_{0}-1,m)}(x)P_{n_{2}}^{(\Delta_{0}-1,m)}(x)
\end{align}$$

with $\displaystyle{x=\frac{r^{2}-1}{r^{2}+1}}$. Using the normalization

$$\begin{align}
\mathcal{N}_{n,m}^{2} & =\frac{\omega _{0,n,m}}{\pi}\frac{(\Delta _{0}+n)_{m}}{(n+1)_{m}}, \\
\omega _{0,n,m} & =\Delta _{0}+2n+m,
\end{align}$$

we get the exact coefficients

$$\begin{align}
O_{\varphi,n_{1}n_{2}} & =2\sqrt{ \omega _{0,n_{1},0}\omega _{0,n_{2},0} }O^{0}_{n_{1}n_{2}} \\
O_{\chi,m,n_{1}n_{2}}=O_{\psi,m,n_{1}n_{2}} & =2\sqrt{ \omega _{0,n_{1},m}\omega _{0,n_{2},m} \dfrac{(\Delta _{0}+n_{1})_{m}(\Delta _{0}+n_{2})_{m}}{(1+n_{1})_{m}(1+n_{2})_{m}} }O^{m}_{n_{1}n_{2}}
\end{align}$$

direct evaluation gives

$$\begin{align}
O^{m}_{n_{1}n_{2}} & =\dfrac{1}{2}\dfrac{(\Delta _{0})_{n<}}{n_{<}!}\mathrm{B}(\Delta _{0}-1,n_{>}+m+1)
\end{align}$$

where

$$\begin{align}
n_{<} & =\min(n_{1},n_{2}), & n_{>}=\max(n_{1},n_{2})
\end{align}$$

let $\displaystyle{\Omega ^{2}=\Omega ^{2}_{0}+(\mu ^{2}-\mu _{0}^{2})O}$, consider the generalized eigenvalue problem for $\displaystyle{\Omega ^{2}}$

$$\begin{align}
(\omega ^{2}I-\Omega ^{2})v & =0 \\
\implies 0= \det(I-\omega ^{2}(\Omega ^{2})^{-1}) & =\dfrac{\Gamma\left( \dfrac{\Delta+|m|}{2} \right)}{\Gamma\left( \dfrac{\Delta+|m|-\omega}{2} \right)\Gamma\left( \dfrac{\Delta+|m|+\omega}{2} \right)} \\
 & =\prod ^{\infty}_{n=0}\left(1-\dfrac{\omega ^{2}}{(\Delta+|m|+2n)^{2}}\right) \\
\implies \omega ^{2}_{n,m} & =\Delta+2n+|m|
\end{align}$$

where $\displaystyle{\Delta=1+\sqrt{ 1+\mu ^{2} }}$.
