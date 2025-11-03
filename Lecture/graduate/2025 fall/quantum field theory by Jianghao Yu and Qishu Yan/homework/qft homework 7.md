# problem 1

suppose $\displaystyle{k}$ is a future-directed null vector. define the projection operation along the $\displaystyle{k}$ direction as

$$\begin{align}
L^{\mu}_{~\nu} & =\frac{k^{\mu}k _{\nu}}{k^{2}}
\end{align}$$

and the projection operation orthogonal to $\displaystyle{k}$ as

$$\begin{align}
\Delta ^{\mu}_{~\nu} & =\delta ^{\mu}_{~\nu}-\frac{k^{\mu}k _{\nu}}{k^{2}}
\end{align}$$

1. verift that $\displaystyle{L}$ and $\displaystyle{\Delta}$ are projection operators and that they are orthogonal to each other.
*sol*. we have

$$\begin{align}
L^{\mu}_{~\alpha}L^{\alpha}_{~\nu} & =\frac{k^{\mu}k _{\alpha}}{k^{2}} \frac{k^{\alpha}k _{\nu}}{k^{2}} \\
 & =\frac{k^{\mu}k _{\nu}}{k^{2}} \frac{k^{2}}{k^{2}}=L^{\mu}_{~\nu}
\end{align}$$

$$\begin{align}
\Delta ^{\mu}_{~\alpha}\Delta ^{\alpha}_{~\nu} & =(\delta ^{\mu}_{~\alpha}-L^{\mu}_{~\alpha})(\delta ^{\alpha}_{~\nu}-L^{\alpha}_{~\nu}) \\
 & =\delta ^{\mu}_{~\nu}-L^{\mu}_{~\nu}-L^{\mu}_{~\nu}+L^{\mu}_{~\nu} \\
 & =\delta ^{\mu}_{~\nu}-L^{\mu}_{~\nu}=\Delta ^{\mu}_{~\nu}
\end{align}$$

$$\begin{align}
\Delta ^{\mu}_{~\alpha}L^{\alpha}_{~\nu} & =(\delta ^{\mu}_{~\alpha}-L^{\mu}_{~\alpha})L^{\alpha}_{~\nu} \\
 & =L^{\mu}_{~\nu}-L^{\mu}_{~\nu}=0
\end{align}$$

2. calculate the propagator of the vector field.

we have known that the propagator $\displaystyle{G_{\mu \nu}}$ of the vector field satisfies

$$\begin{align}
[k^{2}g^{\mu \alpha}-(1-\lambda)k^{\mu}k^{\alpha}]G_{\alpha \nu} & =\delta ^{\mu}_{~\nu} \\
\implies k^{2} \left( \Delta ^{\mu \alpha}+\lambda L^{\mu \alpha} \right)G_{\alpha \nu} & =\delta ^{\mu}_{~\nu}
\end{align}$$

we can decompose $\displaystyle{G_{\alpha \nu}}$ into parts along $\displaystyle{L}$ and $\displaystyle{\Delta}$ directions as

$$\begin{align}
G_{\alpha \nu} & =A \Delta _{\alpha \nu}+B L_{\alpha \nu}
\end{align}$$

and

$$\begin{align}
k^{2}(\Delta ^{\mu \alpha}+\lambda L^{\mu \alpha})(A\Delta _{\alpha \nu}+BL_{\alpha \nu}) & =k^{2}(A\Delta ^{\mu}_{~\nu}+B\lambda L^{\mu}_{~\nu}) \\
 & =\delta ^{\mu}_{~\nu} \\
\implies A & =\frac{1}{k^{2}}, B=\frac{1}{\lambda k^{2}} \\
\implies G_{\alpha \nu} & =\frac{1}{k^{2}}\Delta _{\alpha \nu}+\frac{1}{\lambda k^{2}}L_{\alpha \nu} \\
 & =\frac{1}{k^{2}}\left( g_{\alpha \nu}-\left( 1-\frac{1}{\lambda} \right)\frac{k _{\alpha}k _{\nu}}{k^{2}} \right)
\end{align}$$