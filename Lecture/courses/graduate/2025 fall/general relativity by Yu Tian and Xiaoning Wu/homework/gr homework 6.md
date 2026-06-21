# problem 1

consider Schwarzschild spacetime with metric

$$\begin{align}
\mathrm{d}s^{2} & =-f(r)\mathrm{d}t^{2}+\frac{\mathrm{d}r^{2}}{f(r)}+r^{2}(\mathrm{d}\theta ^{2}+\sin ^{2}\theta \mathrm{d}\phi ^{2}) \\
f(r) & =1-\frac{2M}{r}
\end{align}$$

and restrict a point particle to undergo timelike geodesic motion in the equatorial plane $\displaystyle{\theta=\frac{\pi}{2}}$

## subproblem 1

write down the radial equation of the timelike geodesic, and give the effective potential

$$\begin{align}
V_{\text{eff}}(r) & =\left( 1-\frac{2M}{r} \right)\left( 1+\frac{L^{2}}{r^{2}} \right)
\end{align}$$

*sol*.

we first present the non-zero Christoffel symbols of Schwarzschild metric:

$$\begin{align}
\Gamma ^{t}_{~tr} & =\Gamma ^{t}_{~rt}=\frac{f'(r)}{2f(r)}=\frac{M}{r^{2}\left( 1-\frac{2M}{r} \right)} \\
\Gamma ^{r}_{~tt} & =\frac{1}{2}f(r)f'(r)=\frac{M}{r^{2}}\left( 1-\frac{2M}{r} \right) \\
\Gamma ^{r}_{~rr} & =-\frac{f'(r)}{2f(r)}=-\frac{M}{r^{2}\left( 1-\frac{2M}{r} \right)} \\
\Gamma ^{r}_{~\theta \theta} & =-rf(r)=-r\left( 1-\frac{2M}{r} \right) \\
\Gamma ^{r}_{~\phi \phi} & =-r\sin ^{2}\theta f(r)=-r\sin ^{2}\theta \left( 1-\frac{2M}{r} \right) \\
\Gamma ^{\theta}_{~r\theta} & =\Gamma ^{\theta}_{~\theta r}=\frac{1}{r} \\
\Gamma ^{\theta}_{~\phi \phi} & =-\sin \theta \cos \theta \\
\Gamma ^{\phi}_{~r\phi} & =\Gamma ^{\phi}_{~\phi r}=\frac{1}{r} \\
\Gamma ^{\phi}_{~\theta \phi} & =\Gamma ^{\phi}_{~\phi \theta}=\cot \theta
\end{align}$$

and the geodesic equations read

$$\begin{align}
\frac{\mathrm{d}^{2}t}{\mathrm{d}\tau ^{2}}+\frac{f'(r)}{f(r)}\frac{\mathrm{d}t}{\mathrm{d}\tau}\frac{\mathrm{d}r}{\mathrm{d}\tau} & =0 \\
\frac{\mathrm{d}^{2}r}{\mathrm{d}\tau ^{2}}+\frac{1}{2}f(r)f'(r)\left( \frac{\mathrm{d}t}{\mathrm{d}\tau} \right)^{2}-\frac{1}{2}\frac{f'(r)}{f(r)}\left( \frac{\mathrm{d}r}{\mathrm{d}\tau} \right)^{2}-rf(r)\left( \frac{\mathrm{d}\phi }{\mathrm{d}\tau} \right)^{2} & =0 \\
\frac{\mathrm{d}^{2}\phi }{\mathrm{d}\tau ^{2}}+\frac{2}{r}\frac{\mathrm{d}r}{\mathrm{d}\tau}\frac{\mathrm{d}\phi }{\mathrm{d}\tau} & =0
\end{align}$$

here we already set $\displaystyle{\theta=\frac{\pi}{2}}$ and thus $\displaystyle{\frac{\mathrm{d}\theta }{\mathrm{d}\tau}=0}$. from the first and third equations, we can find two conserved quantities:

$$\begin{align}
L & =r^{2}\frac{\mathrm{d}\phi }{\mathrm{d}\tau} \\
E & =f(r)\frac{\mathrm{d}t}{\mathrm{d}\tau}
\end{align}$$

using the normalization condition of four-velocity $\displaystyle{g_{\mu \nu}\frac{\mathrm{d}x^{\mu}}{\mathrm{d}\tau}\frac{\mathrm{d}x^{\nu}}{\mathrm{d}\tau}=-1}$, we have

$$\begin{align}
-f(r)\left( \frac{\mathrm{d}t}{\mathrm{d}\tau} \right)^{2}+\frac{1}{f(r)}\left( \frac{\mathrm{d}r}{\mathrm{d}\tau} \right)^{2}+r^{2}\left( \frac{\mathrm{d}\phi }{\mathrm{d}\tau} \right)^{2} & =-1 \\
\implies -f(r)\left( \frac{E}{f(r)} \right)^{2}+\frac{1}{f(r)}\left( \frac{\mathrm{d}r}{\mathrm{d}\tau} \right)^{2}+r^{2}\left( \frac{L}{r^{2}} \right)^{2} & =-1 \\
\implies \left( \frac{\mathrm{d}r}{\mathrm{d}\tau} \right)^{2} & =E^{2}-\left( 1-\frac{2M}{r} \right)\left( 1+\frac{L^{2}}{r^{2}} \right)
\end{align}$$

which gives the effective potential the problem requires.

## subproblem 2

explain that when $\displaystyle{r\to \infty}$, how the radial equation degenerate to energy-momentum relation of a free point particle in special relativity. explain the SR physical meaning of conserved quantity $\displaystyle{E}$

*sol*.

when $\displaystyle{r\to \infty}$, the radial equation becomes

$$\begin{align}
\left( \frac{\mathrm{d}r}{\mathrm{d}\tau} \right)^{2} & =E^{2}-1 \\
\implies p^{2} & =E^{2}-1
\end{align}$$

which is exactly the energy-momentum relation of a free point particle in special relativity with rest mass $\displaystyle{m=1}$ (we are using geometrized unit here). thus we can interpret conserved quantity $\displaystyle{E}$ as the total energy of the particle at infinity, including its rest mass energy.

## subproblem 3

give the condition that the particle cannot move to infinity with conserved energy $\displaystyle{E}$ and effective potential $\displaystyle{V_{\mathrm{eff}}(r)}$.

*sol*.

the particle cannot move to infinity if its conserved energy $\displaystyle{E}$ is less than the effective potential $\displaystyle{V_{\text{eff}}(r)}$ at its maximum.
