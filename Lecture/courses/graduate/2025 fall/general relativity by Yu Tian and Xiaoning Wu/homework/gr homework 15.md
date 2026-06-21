# problem

in asymptotically Cartesian coordinates $\displaystyle{\{x^{i}\}}$ (which satisfy $\displaystyle{h_{ij} = \delta_{ij} + \mathcal{O}(r^{-1})}$ as $r \to \infty$, where $\displaystyle{r = \sqrt{\delta_{ij} x^{i} x^{j}}}$), the ADM mass boundary term is given by

$$\begin{align}
C & = \frac{1}{16\pi G}\lim_{r \to \infty} \int_{S_{r}} \left( \partial_{i} h_{ij} - \partial_{j} h_{ii} \right) n^{j} \, \mathrm{d}S .
\end{align}$$

consider the $t = \text{const}$ spacelike hypersurface $\Sigma$ in the Schwarzschild spacetime, expressed in standard Schwarzschild coordinates $(t, r, \theta, \phi)$:

1. compute the induced three-metric $h_{ab}$ on this hypersurface $\Sigma$.
1. rewrite and expand this metric at spatial infinity in terms of the asymptotically Cartesian coordinates $\{x^{i}\}$ compatible with $\Sigma$, keeping terms up to order $\mathcal{O}(r^{-1})$.
1. substitute the resulting expression into the formula above and take the limit $r \to \infty$ to verify that $C = M$.

*sol*.

1. we have

$$\begin{align}
\mathrm{d}s^{2}_{\Sigma} & =\frac{\mathrm{d}r^{2}}{1-\frac{2GM}{r}}+r^{2}\mathrm{d}\theta ^{2}+r^{2}\sin ^{2}\theta \mathrm{d}\phi ^{2}
\end{align}$$

1. we have

$$\begin{align}
\mathrm{d}s^{2}_{\Sigma} & =\left( 1+\frac{2GM}{r}+\mathcal{O}(r^{-2}) \right)\mathrm{d}r^{2}+r^{2}\mathrm{d}\theta ^{2}+r^{2}\sin ^{2}\theta \mathrm{d}\phi ^{2} \\
 & =\sum _{i=1}^{3}\mathrm{d}x_{i}^{2}+2GM\frac{\sum ^{3}_{i,j=1} x_{i}x_{j}\mathrm{d}x_{i}\mathrm{d}x_{j}}{\left( \sum ^{3}_{i=1}x_{i}^{2} \right)^{2}}+\mathcal{O}(r^{-2}) \\
\implies h_{ij} & =\delta _{ij}+\frac{2GMx_{i}x_{j}}{r^{3}}
\end{align}$$

1. we have

$$\begin{align}
h_{ij}n^{i}n^{j} & =1\implies n^{j}=\frac{x^{j}}{r}
\end{align}$$

and

$$\begin{align}
\partial _{i}h_{ij} & =\partial _{i}\delta _{ij}+2GM\partial _{i}\left( \frac{x_{i}x_{j}}{r^{3}} \right) \\
 & =\frac{2GMx_{j}}{r^{3}} \\
\partial _{j}h_{ii} & =\partial _{j}\left( 3+\frac{2GM}{r} \right) \\
 & =-\frac{2GMx_{j}}{r^{3}}
\end{align}$$

thus

$$\begin{align}
C & = \frac{1}{16\pi G}\lim_{r \to \infty} \int_{S_{r}} \left( \partial_{i} h_{ij} - \partial_{j} h_{ii} \right) n^{j} \, \mathrm{d}S \\
 & =\frac{1}{16\pi G}\lim_{ r \to \infty } \int _{0}^{2\pi}\mathrm{d}\phi \int _{0}^{\pi}\sin \theta\mathrm{d}\theta r^{2} \left(\frac{2GMx_{j}}{r^{3}}-\left( -\frac{2GMx_{j}}{r^{3}} \right)\right) \frac{x^{j}}{r} \\
 & =\frac{M}{4\pi}\int ^{2\pi}_{0}\mathrm{d}\phi \int ^{\pi}_{0}\sin \theta \mathrm{d}\theta \\
 & =M
\end{align}$$
