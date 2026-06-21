# problem

the radial equation in Schwarzschild spacetime is

$$\begin{align}
\left( \frac{\mathrm{d}r}{\mathrm{d}\tau} \right)^{2}=E^{2}-U^{2}
\end{align}$$

where the effective potential satisfies

$$\begin{align}
U^{2} & =\left( 1-\frac{2GM}{r} \right)\left( 1+\frac{L^{2}}{r^{2}} \right)
\end{align}$$

and $\displaystyle{E,L}$ are the energy and angular momentum of test particle. find the minimal radius of stable circular orbit.

*sol*. denote the radius of circular orbit as $\displaystyle{r_{0,1,2,\dots}}$, then by $\displaystyle{\frac{\mathrm{d}U}{\mathrm{d}r}=0,\frac{\mathrm{d}^{2}U}{\mathrm{d}r^{2}}=0}$, we have

$$\begin{align}
0=\frac{\mathrm{d}U}{\mathrm{d}r} & =\frac{\left[ -\frac{2L^{2}}{r^{3}}\left( 1-\frac{2GM}{r} \right)+\frac{2GM}{r^{2}}\left( 1+\frac{L^{2}}{r^{2}} \right) \right]}{2U} \\
0=\frac{\mathrm{d}U}{\mathrm{d}r} & =\frac{\left[ -\frac{2L^{2}}{r^{3}}\left( 1-\frac{2GM}{r} \right)+\frac{2GM}{r^{2}}\left( 1+\frac{L^{2}}{r^{2}} \right) \right]^{2}}{4U^{3}}+\frac{\left[ -\frac{8GML^{2}}{r^{5}}+\frac{6L^{2}}{r^{4}}\left( 1-\frac{2GM}{r} \right)-\frac{4GM}{r^{3}}\left( 1+\frac{L^{2}}{r^{2}} \right) \right]}{2U} \\
\implies r_{0} & =6GM, L_{0}=2\sqrt{ 3 }GM,E=\frac{2\sqrt{ 3 }}{3}
\end{align}$$

take a expansion around $\displaystyle{r_{0}}$

$$\begin{align}
\left( \frac{\mathrm{d}\delta r}{\mathrm{d}\tau} \right)^{2} & =-\frac{(\delta r)^{3}}{1944G^{3}M^{3}}
\end{align}$$

which indicates that the circular orbit with $\displaystyle{r_{0}=6GM}$ is stable.
