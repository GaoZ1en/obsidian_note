in this note we will consider the Proca field

$$\begin{align}
S & =\int \mathrm{d}^{d}x\sqrt{ -g }\left(-\frac{1}{4}F_{\mu \nu}F^{\mu \nu}-\frac{1}{2}\mu ^{2}A_{\mu}A^{\mu}-\frac{1}{2\xi}(\nabla _{\mu}A^{\mu})^{2}\right)
\end{align}$$

and we will quantize it in the $\displaystyle{d}$-dim flat spacetime and $\displaystyle{\mathrm{AdS}_{3}}$.

$$\begin{align}
\delta S & =\int \mathrm{d}^{d}x\sqrt{ -g }\left(-F^{\mu \nu}\nabla _{\mu}\delta A_{\nu}-\mu ^{2}A_{\mu}\delta A^{\mu}-\frac{1}{\xi}(\nabla _{\mu}A^{\mu})(\nabla _{\nu}\delta A^{\nu})\right) \\
 & =\int \mathrm{d}^{d}x\sqrt{ -g }\left(\nabla _{\mu}F^{\mu \nu}+\frac{1}{\xi}\nabla ^{\nu}\nabla _{\mu}A^{\mu}-\mu ^{2}A^{\nu}\right)\delta A_{\nu} \\
 & +\int _{\Sigma _{f}-\Sigma _{i}} \mathrm{d}^{d-1}x\sqrt{ \sigma }\tau _{\mu}\left( F^{\mu \nu}\delta A_{\nu}+\frac{1}{\xi}\nabla _{\nu}A^{\nu}\delta A^{\mu} \right)
\end{align}$$

# flat spacetime

the eom becomes

$$\begin{align}
\partial ^{2}A^{\nu}-\left( 1-\frac{1}{\xi} \right)\partial ^{\nu}\partial _{\mu}A^{\mu}-\mu ^{2}A^{\nu} & =0
\end{align}$$

take a divergence

$$\begin{align}
\frac{1}{\xi}\partial ^{2}(\partial _{\nu}A^{\nu})=\mu ^{2}(\partial _{\nu}A^{\nu})
\end{align}$$

---

so when $\displaystyle{\xi \to \infty}$, we have the Lorenz condition $\displaystyle{\partial _{\nu}A^{\nu}=0}$, and the eom reduces to

$$\begin{align}
(\partial ^{2}-\mu ^{2})A^{\nu} & =0 \\
\partial _{\nu}A^{\nu} & =0
\end{align}$$

---

we first discuss general $\displaystyle{\xi}$, and then take the limit $\displaystyle{\xi\to \infty}$. take a Fourier transform in spatial directions

$$\begin{align}
A_{\mu}(x) & =\int \frac{\mathrm{d}^{d-1}\vec{k}}{(2\pi)^{d-1/2}}\mathrm{e}^{i\vec{k}\cdot \vec{x}}\tilde{A}_{\mu}(\vec{k},t)
\end{align}$$

the eom becomes

$$\begin{align}
(\partial _{t}^{2}+\omega _{\vec{k}}^{2})\tilde{A}^{0}-\left( 1-\frac{1}{\xi} \right)\partial _{t}(\partial _{t}A^{0}+ik_{i}\tilde{A}^{i}) & =0 \\
(\partial _{t}^{2}+\omega _{\vec{k}}^{2})\tilde{A}^{i}+i\left( 1-\frac{1}{\xi} \right)k^{i}(\partial _{t}A^{0}+ik_{j}\tilde{A}^{j}) & =0
\end{align}$$

where $\displaystyle{\omega _{\vec{k}}^{2}=\vec{k}^{2}+\mu ^{2}}$. define transverse and longitudinal parts

$$\begin{align}
\tilde{A}_{i} & =\tilde{A}_{i}^{T}+\tilde{A}_{i}^{L} \\
\tilde{A}_{i}^{T} & =\left( \delta _{ij}-\frac{k_{i}k_{j}}{\vec{k}^{2}} \right)\tilde{A}^{j} ,\quad k^{i}\tilde{A}_{i}^{T}=0 \\
\tilde{A}^{L}_{i} & =\frac{k _{i}k^{j}}{\vec{k}^{2}}\tilde{A}_{j} \\
\end{align}$$

the eom can be decoupled as

$$\begin{align}
(\partial _{t}^{2}+\omega _{\vec{k}}^{2})\tilde{A}^{0}-\left( 1-\frac{1}{\xi} \right)\partial _{t}(\partial _{t}A^{0}+ik_{i}\tilde{A}^{L,i}) & =0 \\
(\partial _{t}^{2}+\omega _{\vec{k}}^{2})\tilde{A}^{L,i}+ik^{i}\left( 1-\frac{1}{\xi} \right)(\partial _{t}A^{0}+ik_{j}\tilde{A}^{L,j}) & =0 \\
(\partial _{t}^{2}+\omega _{k}^{2})\tilde{A}^{T,i} & =0
\end{align}$$

the last equation describes the transverse modes, which gives

$$\begin{align}
\tilde{A}^{T,i}(\vec{k},t) & =\frac{1}{\sqrt{ 2\omega _{\vec{k}} }}\left( a^{i}_{\vec{k}}\mathrm{e}^{-i\omega _{\vec{k}}t}+a^{i\dagger}_{-\vec{k}}\mathrm{e}^{i\omega _{\vec{k}}t} \right), \quad i=1,\ldots,d-2
\end{align}$$

the first two equations can be combined to give

$$\begin{align}
\frac{1}{\xi}(\partial _{t}^{2}+\vec{k}^{2})(\partial _{0}\tilde{A}^{0}+ik _{i}\tilde{A}^{L,i}) & =-\mu ^{2}(\partial _{t}\tilde{A}^{0}+ik _{i}\tilde{A}^{L,i})
\end{align}$$

which describes the coupled longitudinal and temporal modes. the general solution is

$$\begin{align}
\Phi=\partial _{0}\tilde{A}^{0}+ik _{i}\tilde{A}^{L,i} & =\frac{1}{\sqrt{ 2\omega _{\xi,\vec{k}} }}\left(b_{\vec{k}}e^{-i\omega _{\xi,\vec{k}}t}+b_{-\vec{k}}^{\dagger}e^{i\omega _{\xi,\vec{k}}t}\right)
\end{align}$$

where $\displaystyle{\omega _{\xi,\vec{k}}=\sqrt{ \vec{k}^{2}+\xi \mu ^{2} }}$. suppose

$$\begin{align}
\partial _{0}\tilde{A}^{0} & =\alpha \Phi \\
ik _{i}\tilde{A}^{L,i} & =\beta \Phi
\end{align}$$

substituting back to the eom gives

$$\begin{align}
\implies \beta & =-\frac{\vec{k}^{2}}{\xi \mu ^{2}} \\
\alpha & =\frac{\omega _{\xi,\vec{k}}^{2}}{\xi \mu ^{2}}
\end{align}$$

which gives

$$\begin{align}
\tilde{A}^{0} & =\frac{i\omega _{\xi,\vec{k}}}{\xi \mu ^{2}} \frac{1}{\sqrt{ 2\omega _{\xi,\vec{k}} }}(b_{\vec{k}}e^{-i\omega _{\xi,\vec{k}}t}-b_{-\vec{k}}^{\dagger}e^{i\omega _{\xi,\vec{k}}t}) \\
\tilde{A}^{L,i} & = \frac{ik^{i}}{\vec{k}^{2}}\frac{1}{\xi \mu ^{2}} \frac{1}{\sqrt{ 2\omega _{\xi,\vec{k}} }}(b_{\vec{k}}e^{-i\omega _{\xi,\vec{k}}t}+b_{-\vec{k}}^{\dagger}e^{i\omega _{\xi,\vec{k}}t})
\end{align}$$

in general, we have $\displaystyle{d-1}$ physical modes: $\displaystyle{d-2}$ transverse modes with frequency $\displaystyle{\omega _{\vec{k}}}$ and one scalar mode with frequency $\displaystyle{\omega _{\xi,\vec{k}}}$. when $\displaystyle{\xi\to \infty}$, the transverse modes do not change. while the discussion for the scalar mode (actually only suitable for $\displaystyle{\xi\neq 0}$) needs to be modified. in this limit, we have the eom

$$\begin{align}
\partial _{t}\tilde{A}^{0}+ik _{i}\tilde{A}^{L,i} & =0 \\
(\partial _{t}^{2}+\omega _{\vec{k}}^{2})\tilde{A}^{0}& =0 \\
(\partial _{t}^{2}+\omega _{\vec{k}}^{2})\tilde{A}^{L,i}& =0
\end{align}$$

which gives the usual logitudinal mode and constrained temporal mode.

