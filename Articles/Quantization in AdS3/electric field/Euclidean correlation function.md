we have derive the normal modes in [[Articles/Quantization in AdS3/electric field/solving modes/temporal gauge|temporal gauge]] as

$$\begin{align}
A^{t} & =0, & A^{r}=\frac{1+r^2}{r}\partial _{\phi} \Psi, & A^{\phi}=-\frac{1+r^2}{r}\partial _{r}\Psi
\end{align}$$

where

$$\begin{align}
\Psi_{nm}=\sqrt{ \frac{(n+|m|+1)}{2\pi \omega _{nm}^{2}(n+1)} }e^{-i\omega_{nm}t}e^{im\phi}r^{|m|}(1+r^2)^{-(|m|+2)/2}P_{n}^{(1,|m|)}\left(\frac{r^{2}-1}{r^{2}+1}\right), \\
\omega_{nm}=2n+2+|m|, \quad n\in \mathbb{N}, m\in \mathbb{Z}
\end{align}$$

with these modes normalized as

$$\begin{align}
\omega[A_{nm},A_{n'm'}] & =-i\delta _{nn'}\delta _{mm'}
\end{align}$$

turn to Euclidean signature, we have

$$\begin{align}
A^{\tau}(\tau,r,\phi) & =iA^{t}(-i\tau,r,\phi)=0 \\
A^{r}(\tau,r,\phi) & =A^{r}(-i\tau,r,\phi) \\
A^{\phi}(\tau,r,\phi) & =A^{\phi}(-i\tau,r,\phi)
\end{align}$$

The Euclidean correlation function can be computed as

$$\begin{align}
\braket{ 0|\mathcal{T}A^{\mu_{1}}(x_{1})A^{\mu_{2}}(x_{2})|0 } & =\theta(\tau_{1}-\tau_{2}) \sum_{n,m}A^{\mu_{1}}_{nm}(x_{1})A^{\mu_{2}*}_{nm}(x_{2})+\theta(\tau_{2}-\tau_{1}) \sum_{n,m}A^{\mu_{1}*}_{nm}(x_{1})A^{\mu_{2}}_{nm}(x_{2})
\end{align}$$

---

we have known that the Euclidean normal modes of scalar can be written as

$$\begin{align}
\phi _{n,m} & =\sqrt{ \frac{1}{2\pi} \frac{(\Delta+n)_{|m|}}{(n+1)_{|m|}} } e^{-\omega _{n,m}\tau}e^{im\phi} r^{|m|}(1+r^{2})^{-(\Delta+|m|)/2}P_{n}^{(\Delta-1,|m|)}\left(\frac{r^{2}-1}{r^{2}+1}\right) \\
\omega _{n,m} & =\Delta +2n+|m|, \quad n\in \mathbb{N}, m\in \mathbb{Z} \\
\Delta & =1+\sqrt{ 1+\mu^{2} }
\end{align}$$

and the Euclidean correlation function of scalar can be computed as

$$\begin{align}
g_{\Delta}(x_{1},x_{2}) & :=\sum _{n,m}\phi _{n,m}(x_{1})\phi _{n,m}^{*}(x_{2}) \\
 & = \frac{1}{4\pi} \frac{e^{-(\Delta-1)\rho _{E}}}{\sinh \rho _{E}}
\end{align}$$

where $\displaystyle{\rho _{E}}$ is the geodesic distance between $x_{1}$ and $x_{2}$ in Euclidean AdS3, which can be computed as

$$\begin{align}
\cosh \rho _{E} & =(1+r_{1}^{2})^{1/2}(1+r_{2}^{2})^{1/2}\cosh(\tau_{1}-\tau_{2})-r_{1}r_{2}\cos(\phi_{1}-\phi_{2})
\end{align}$$

when $\displaystyle{\Delta=2}$, we have

$$\begin{align}
\phi _{n,m} & =\sqrt{ \frac{1}{2\pi} \frac{n+|m|+1}{n+1} } e^{-\omega _{n,m}\tau}e^{im\phi} r^{|m|}(1+r^{2})^{-(\Delta+|m|)/2}P_{n}^{(\Delta-1,|m|)}\left(\frac{r^{2}-1}{r^{2}+1}\right) \\
\omega _{n,m} & =\Delta +2n+|m|, \quad n\in \mathbb{N}, m\in \mathbb{Z}
\end{align}$$

then

$$\begin{align}
\Psi_{nm} & =\frac{\phi _{n,m}}{\omega _{nm}}
\end{align}$$

---

defining the operator

$$\begin{align}
D^{t} & =0, &  D^{r} & =\frac{1+r^2}{r}\partial _{\phi}, &  D^{\phi} & =-\frac{1+r^2}{r}\partial _{r}
\end{align}$$

we have

$$\begin{align}
\sum _{n,m}A^{\mu_{1}}_{nm}(x_{1})A^{\mu_{2}*}_{nm}(x_{2}) & =D_{x_{1}}^{\mu_{1}}D_{x_{2}}^{\mu_{2}}H(x_{1},x_{2})
\end{align}$$

where

$$\begin{align}
H(x_{1},x_{2}) & =\sum _{nm}\Psi_{nm}(x_{1})\Psi_{nm}^{*}(x_{2}) \\
 & =\sum _{nm} \frac{1}{\omega _{nm}^{2}}\phi _{nm}(x_{1})\phi _{nm}(x_{2}) \\
 & =\int _{0}^{\infty} \mathrm{d}s\, s\, g_{2}(T,r_{1},r_{2},\phi)
\end{align}$$

here $\displaystyle{T=\tau_{1}-\tau_{2}}$ and $\displaystyle{\phi=\phi_{1}-\phi_{2}}$. then we have

$$\begin{align}
\sum _{n,m}A^{\mu_{1}}_{nm}(x_{1})A^{\mu_{2}*}_{nm}(x_{2}) & =D_{x_{1}}^{\mu_{1}}D_{x_{2}}^{\mu_{2}}\int _{0}^{\infty} \mathrm{d}s\, s\, g_{2}(T,r_{1},r_{2},\phi)
\end{align}$$

and

$$\begin{align}
\braket{ 0|\mathcal{T}A^{\mu_{1}}(x_{1})A^{\mu_{2}}(x_{2})|0 } & =\theta(\tau_{1}-\tau_{2}) D_{x_{1}}^{\mu_{1}}D_{x_{2}}^{\mu_{2}}H(T,r_{1},r_{2},\phi)+\theta(\tau_{2}-\tau_{1}) D_{x_{1}}^{\mu_{1}}D_{x_{2}}^{\mu_{2}}H(-T,r_{1},r_{2},\phi) \\
 & =D_{x_{1}}^{\mu_{1}}D_{x_{2}}^{\mu_{2}}H(|T|,r_{1},r_{2},\phi)  
\end{align}$$

numerical analysis passed.