# problem 1

define the cosmological deceleration parameter $\displaystyle{q}$ and jerk parameter $\displaystyle{j}$ as

$$\begin{align}
q & \equiv -\frac{a^{(2)}}{aH^{2}}=-\frac{aa^{(2)}}{{a^{(1)}}^{2}} \\
j & \equiv \frac{a^{(3)}}{aH^{3}}= \frac{a^{2}a^{(3)}}{{a^{(1)}}^{3}}
\end{align}$$

where $\displaystyle{a^{(i)}}$ is the $\displaystyle{i}$-th order derivative of $\displaystyle{a}$ with respect to $\displaystyle{t}$. expand the luminosity distance $\displaystyle{d_{L}}$ to the order of $\displaystyle{z^{3}}$ at $\displaystyle{z=0}$. when $\displaystyle{z=0}$, choose $\displaystyle{a=1}$, $\displaystyle{q=q_{0}}$ and $\displaystyle{j=j_{0}}$.

## solution

we have

$$\begin{align}
H(z) & =H_{0}+ \frac{\mathrm{d}H}{\mathrm{d}z}\bigg|_{z=0}z+ \frac{1}{2}\frac{\mathrm{d}^{2}H}{\mathrm{d}z^{2}}\bigg|_{z=0}z^{2}+ \mathcal{O}(z^{3}) \\
 & =H_{0}+(1+q_{0})H_{0}z+\frac{1}{2}(j_{0}-q_{0}^{2})H_{0}z^{2}+\mathcal{O}(z^{3})
\end{align}$$

then

$$\begin{align}
d_{L}(z) & =(1+z)\int _{0}^{z} \frac{\mathrm{d}z'}{H(z')} \\
 & =(1+z)\int _{0}^{z} \frac{\mathrm{d}z'}{H_{0}} \frac{1}{1+(1+q_{0})z+\frac{1}{2}(j_{0}-q_{0})^{2}z^{2}+\mathcal{O}(z^{3})} \\
 & =\frac{1}{H_{0}}\left[z+\frac{1}{2}(1-q_{0})z^{2}-\frac{1}{6}(1-q_{0}-3q_{0}^{2}+j_{0})z^{3}+\mathcal{O}(z^{4})\right]
\end{align}$$

# problem 2

consider the standard cosmological model ($\displaystyle{\Lambda \mathrm{CDM}}$) with $\displaystyle{\Omega _{m}=0.3}$, $\displaystyle{H_{0}=70\mathrm{km/s/Mpc}}$, ignore the radiation component. calculate the following quantities at $\displaystyle{z=1}$
- density $\displaystyle{\rho}$, pressure $\displaystyle{p}$ and Hubble parameter $\displaystyle{H}$
- universe age $\displaystyle{t}$ from the big bang
- luminosity distance $\displaystyle{d_{L}}$, angular diameter distance $\displaystyle{d_{A}}$

## solution

we have

$$\begin{align}
H(z) & =H_{0}\sqrt{ \Omega _{m}(1+z)^{3}+\Omega _{\Lambda} } \\
 & \approx123.25\mathrm{km/s/Mpc} \\
\rho(z) & =\frac{3H^{2}}{8\pi G} \\
 & \approx1.7\times 10^{-26}\mathrm{kg/m^{3}} \\
p(z) & =p_{\Lambda}=-\rho _{\Lambda}=-\frac{3H_{0}^{2}}{8\pi G}\Omega _{\Lambda} \\
 & \approx-6.3\times 10^{-27}\mathrm{kg/m^{3}} \\
\end{align}$$

and

$$\begin{align}
t & =\int _{z}^{\infty} \frac{\mathrm{d}z'}{(1+z')H(z')} \\
 & \approx 5.8\mathrm{Gyr}
\end{align}$$

and finally

$$\begin{align}
\chi(z) & =\int _{0}^{z} \frac{c}{H(z')}\mathrm{d}z' \\
 & \approx 3.3\mathrm{Gpc} \\
d_{L}(z) & =(1+z)\chi(z) \\
 & \approx 6.6\mathrm{Gpc} \\
d_{A}(z) & =\frac{\chi(z)}{1+z} \\
 & \approx 1.65\mathrm{Gpc}
\end{align}$$

where $\displaystyle{\chi}$ is the comoving distance.