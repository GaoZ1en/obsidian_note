in this file we will compute the correlation function $\displaystyle{\braket{ \phi(x_{1})\phi(x_{2}) }}$ of free scalar in $\displaystyle{\mathbb{R}^{2}}$.

$$\begin{align}
S & =-\frac{1}{2}\int \mathrm{d}^{2}x\left(\nabla _{\mu}\phi \nabla ^{\mu}\phi+m^{2}\phi ^{2}\right)
\end{align}$$

the eom

$$\begin{align}
\nabla ^{2}\phi-m^{2}\phi & =0
\end{align}$$

which gives the solution

$$\begin{align}
\phi _{k} & = C_{k}e^{ik\cdot x} \\
k _{\mu}k^{\mu} & =-m^{2} \\
\omega _{k} & =\sqrt{k^{2}+m^{2}}
\end{align}$$

where $\displaystyle{C_{k}}$ is determined by the KG inner product

$$\begin{align}
\int \mathrm{d}x(\dot{\phi} _{k_{1}} \phi _{k_{2}}^{*}-\phi _{k_{1}}\dot{\phi}_{k_{2}}^{*}) & =-i\delta(k_{1}-k_{2}) \\
\implies C_{k} & =\frac{1}{\sqrt{(2\pi)(2\omega _{k})}}
\end{align}$$

thus we can expand

$$\begin{align}
\phi & =\int \mathrm{d}k (a_{k}\phi _{k}+a_{k}^{\dagger}\phi _{k}^{*})
\end{align}$$

and the correlation function is

$$\begin{align}
\braket{ \phi(x_{1})\phi(x_{2}) }  & = \braket{ 0|\mathcal{T}\phi(x_{1})\phi(x_{2})|0 } \\ 
 & =i\int \frac{\mathrm{d}^{2}k}{(2\pi)^{2}}\frac{e^{ik(x_{1}-x_{2})}}{k^{2}+m^{2}-i\varepsilon} \\
\end{align}$$

turn to Euclidean space by Wick rotation $\displaystyle{t\to -i\tau}$, we have

$$\begin{align}
\mathcal{I}=\braket{ \phi(x_{1})\phi(x_{2}) }_{\text{E}} & = \int \frac{\mathrm{d}^{2}k}{(2\pi)^{2}}\frac{e^{ik(x_{1}-x_{2})}}{k^{2}+m^{2}}
\end{align}$$

this integral contains a IR divergence when when $\displaystyle{m\to 0}$. to cure this, we first turn to Schwinger parameterization

$$\begin{align}
\mathcal{I} & = \int \frac{\mathrm{d}^{2}k}{(2\pi)^{2}}e^{ik(x_{1}-x_{2})}\int _{0}^{\infty}\mathrm{d}s e^{-s(k^{2}+m^{2})} \\
 & =\int _{0}^{\infty}\mathrm{d}s e^{-sm^{2}}\int \frac{\mathrm{d}^{2}k}{(2\pi)^{2}}e^{ik(x_{1}-x_{2})-sk^{2}} \\
 & =\frac{1}{4\pi}\int _{0}^{\infty}\mathrm{d}s \frac{1}{s}e^{-sm^{2}-\frac{(x_{1}-x_{2})^{2}}{4s}}
\end{align}$$

