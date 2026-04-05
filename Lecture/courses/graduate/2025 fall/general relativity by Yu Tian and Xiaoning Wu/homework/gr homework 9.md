# problem

in the background of flat spacetime, consider planar gravitational wave

$$\begin{align}
h_{\mu \nu} & =A_{\mu \nu}e^{ik\cdot x}+A_{\mu \nu}^{*}e^{-ik\cdot x}
\end{align}$$

consider average of large spacetime scale ($\displaystyle{\gg \omega ^{-1}}$), under harmonic coordinate condition

$$\begin{align}
\braket{ T^{G}_{\mu \nu} } =\frac{k _{\mu}k _{\nu}}{16\pi G}\left( A^{\rho \sigma}A^{*}_{\rho \sigma}-\frac{1}{2}|A^{\lambda}_{~\lambda}|^{2} \right)
\end{align}$$

show that $\displaystyle{\braket{ T_{\mu \nu}^{G} }}$ is invariant under gauge transformation

$$\begin{align}
\xi ^{\mu} & =iX^{\mu}e^{ik\cdot x}-iX^{*\mu}e^{-ik\cdot x} \\
A_{\mu \nu} & \to A_{\mu \nu}+k _{\mu}X_{\nu}+k _{\nu}X_{\mu}
\end{align}$$

*sol*.

under the gauge transformation

$$\begin{align}
A^{\rho \sigma}A^{*}_{\rho \sigma} & \to(A^{\rho \sigma}+k^{\rho}X^{\sigma}+k^{\sigma}X^{\rho})(A^{*}_{\rho \sigma}+k _{\rho}X_{\sigma}+k _{\sigma}X_{\rho}) \\
 & =A^{\rho \sigma}A^{*}_{\rho \sigma}+2(A_{\rho \sigma}+A^{*}_{\rho \sigma})k^{\rho}X^{\sigma} +2(k _{\rho}X^{\rho})^{2} \\
|A^{\lambda}_{~\lambda}|^{2} & \to |A^{\lambda}_{~\lambda}+2k^{\lambda}X_{\lambda}|^{2} \\
 & =|A^{\lambda}_{~\lambda}|^{2}+2(A^{\lambda}_{~\lambda}+A^{*\lambda}_{~~~\lambda})k^{\rho}X_{\rho}+4(k^{\rho}X_{\rho})^{2}
\end{align}$$

then

$$\begin{align}
\braket{ T_{\mu \nu}^{G} } \to \frac{k _{\mu}k _{\nu}}{16\pi G}\left( A^{\rho \sigma}A^{*}_{\rho \sigma}-\frac{1}{2}|A^{\lambda}_{~\lambda}|^{2}+2(A_{\rho \sigma}+A^{*}_{\rho \sigma})k^{\rho}X^{\sigma}-(A^{\lambda}_{~\lambda}+A^{*\lambda}_{~~~\lambda})k _{\rho}X^{\rho}\right)
\end{align}$$

the harmonic coordinate condition requires

$$\begin{align}
k^{\rho}A_{\nu \rho}-\frac{1}{2}k _{\nu}A^{\lambda}_{~\lambda} & =0
\end{align}$$

which implies

$$\begin{align}
\braket{ T_{\mu \nu}^{G} } \to \frac{k _{\mu}k _{\nu}}{16\pi G}\left( A^{\rho \sigma}A^{*}_{\rho \sigma}-\frac{1}{2}|A^{\lambda}_{~\lambda}|^{2}\right)= \braket{ T_{\mu \nu}^{G} } 
\end{align}$$

