the scalar modes with positive frequency in $\displaystyle{\mathrm{AdS}_{3}}$ are given by

$$\begin{align}
\phi _{nm}(x) & =\sqrt{ \frac{1}{2\pi} \frac{(\Delta+n)_{|m|}}{(n+1)_{|m|}} }e^{-i\omega _{n,m}t}e^{im\phi}r^{|m|}(1+r^{2})^{-(\Delta+|m|)/2}P^{(\Delta-1,|m|)}_{n}\left( \frac{r^{2}-1}{r^{2}+1} \right) \\
\omega _{n,m} & =\Delta+2n+|m|\quad n=0,1,2,\ldots \quad m=0,\pm 1,\pm 2,\ldots \\
\Delta & =1+\sqrt{ 1+\mu ^{2} }
\end{align}$$

where $\displaystyle{P^{(a,b)}_{n}(x)}$ are the Jacobi polynomials, and $\displaystyle{\mu}$ is the mass of the scalar field. the retarded Green function is defined as

$$\begin{align}
G_{\mathrm{ret}}(x,x') & =\theta (t-t')\braket{ \Omega|[\phi (x),\phi (x')]|\Omega } \\
 & =\theta (t-t')\sum ^{\infty}_{n=0}\sum ^{\infty}_{m=-\infty}\left( \phi _{nm}(x)\phi ^{*}_{nm}(x')-\phi _{nm}(x')\phi ^{*}_{nm}(x) \right) \\
 & =2i\theta (t-t')\mathrm{Im}W(x,x')
\end{align}$$

where $\displaystyle{W(x,x')}$ is the Wightman function given by

$$\begin{align}
W(x,x') & =\sum ^{\infty}_{n=0}\sum ^{\infty}_{m=-\infty}\phi _{nm}(x)\phi ^{*}_{nm}(x')
\end{align}$$

---

the Euclidean Wightman function can be expressed in a closed form as

$$\begin{align}
W(x,x') & =\frac{1}{2\pi} \frac{e^{-(\Delta-1)\rho}}{\sinh \rho}
\end{align}$$

where $\displaystyle{\rho}$ is defined by

$$\begin{align}
\cosh \rho & =\sqrt{ 1+r^{2} }\sqrt{ 1+r'^{2} }\cosh(\tau _{1}-\tau _{2})-rr'\cos(\phi-\phi')
\end{align}$$

---

suppose we have summed over $\displaystyle{n}$ and $\displaystyle{m}$ and obtained the precise expression of the retarded Green function. given a initial value problem

$$\begin{align}
(\Box -\mu ^{2})\phi (x) & =0 \\
\phi (t,r,\phi)|_{t=t_{0}} & =f(r,\phi) \\
\tau ^{\mu}\partial _{\mu}\phi (t,r,\phi)|_{t=t_{0}} & =g(r,\phi)
\end{align}$$

we require $\displaystyle{f}$ and $\displaystyle{g}$ satisfies the following asymptotic behavior

$$\begin{align}
f(r,\phi),g(r,\phi) & =o(r^{-1}),\quad r\to \infty
\end{align}$$

where $\displaystyle{\tau ^{\mu}}$ is the future-directed unit normal vector on the $\displaystyle{t=t_{0}}$ hypersurface $\displaystyle{\Sigma _{t_{0}}}$, then the solution can be expressed in terms of the retarded Green function as

$$\begin{align}
\phi(x) & =\int _{\Sigma _{t_{0}}}d\Sigma ^{\mu}_{t_{0}}\left( G_{\mathrm{ret}}(x,x')\partial _{\mu}'\phi (x')-\phi (x')\partial _{\mu}'G_{\mathrm{ret}}(x,x') \right) \\
 & =\int _{\Sigma _{t_{0}}} \mathrm{d}^{2}x'\sqrt{ \sigma }\tau ^{\mu}\left(G_{\text{ret}}(x,x')\partial _{\mu}'\phi(x')-\phi(x')\partial _{\mu}G_{\text{ret}}(x,x')\right)
\end{align}$$

now we will discuss the asymptotic behavior of $\displaystyle{\phi(x)}$.

in Lorentzian signature, the geodesic distance $\displaystyle{\rho}$ is related to the invariant distance $\displaystyle{P(x,x')}$ by $\displaystyle{\cosh \rho = P(x,x')}$, where

$$\begin{align}
P(x,x') & =\sqrt{ 1+r^{2} }\sqrt{ 1+r'^{2} }\cos(t-t')-rr'\cos(\phi-\phi')
\end{align}$$

as $\displaystyle{r\to \infty}$, we have

$$\begin{align}
P(x,x') & \approx r\left( \sqrt{ 1+r'^{2} }\cos(t-t')-r'\cos(\phi-\phi') \right) \equiv r A(x,x')
\end{align}$$

thus $\displaystyle{P}$ grows linearly with $\displaystyle{r}$. for large $\displaystyle{\rho}$, we have $\displaystyle{e^{\rho}\approx 2\cosh \rho = 2P}$. the Wightman function behaves as

$$\begin{align}
W(x,x') & \propto \frac{e^{-(\Delta-1)\rho}}{\sinh \rho} \approx 2e^{-\Delta \rho} \approx 2(2P)^{-\Delta} \propto r^{-\Delta}
\end{align}$$

since the retarded Green function is proportional to the imaginary part of the Wightman function, it also scales as $\displaystyle{r^{-\Delta}}$. the solution to the initial value problem is given by Green's second identity:

$$\begin{align}
\phi (x) & =\int _{\Sigma _{t_{0}}}d\Sigma '^{\mu}\left[ G_{\mathrm{ret}}(x,x')\nabla '_{\mu}\phi (x')-\phi (x')\nabla '_{\mu}G_{\mathrm{ret}}(x,x') \right]
\end{align}$$

since $\displaystyle{G_{\mathrm{ret}}(x,x')\sim r^{-\Delta}}$ as $\displaystyle{r\to \infty}$, and the integration is over the initial surface at fixed $\displaystyle{t_{0}}$ (where $\displaystyle{r'}$ is finite), the solution inherits the asymptotic behavior of the Green function:

$$\begin{align}
\phi (t,r,\phi) & \sim r^{-\Delta}\alpha (t,\phi) \quad \text{as} \quad r\to \infty
\end{align}$$
