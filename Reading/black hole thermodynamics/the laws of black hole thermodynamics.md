## quick review

the first law is

$$\tag{1.1}
\begin{align}
T\mathrm{d}S & =\mathrm{d}E-\Omega \mathrm{d}J-\Phi \mathrm{d}Q
\end{align}
$$

the second law is

$$\tag{1.2}
\begin{align}
\Delta S\geqslant 0
\end{align}
$$

## the RN black hole

the Riessner-Nordstrom solution is a charged black hole in asymptotically flat spacetime. consider the Einstein-Maxwell action

$$\tag{1.3}
\begin{align}
S=\int _{M} \mathrm{d}^{4}x\sqrt{ -g }\left( \frac{1}{16\pi}R-\frac{1}{4}F_{\mu \nu}F^{\mu \nu} \right)
\end{align}
$$

make a variation (drop the boundary terms)

$$\tag{1.4}
\begin{align}
\delta S & =\int _{M}\mathrm{d}^{4}x\sqrt{ -g } \frac{1}{16\pi}\left( -R^{\mu \nu}+\frac{1}{2}g^{\mu \nu}R+8\pi T^{\mu \nu} \right)\delta g_{\mu \nu} +\int _{M}\mathrm{d}^{4}x\sqrt{ -g } \nabla ^{\mu}F_{\mu \nu}\delta A^{\nu} \\
T_{\mu \nu} & =F_{\mu \rho}F_{\nu}^{~\rho}-\frac{1}{4}g_{\mu \nu}F_{\rho \sigma}F^{\rho \sigma}
\end{align}
$$

then the equation of motion is

$$\tag{1.4}
\begin{align}
R_{\mu \nu}-\frac{1}{2}g_{\mu \nu}R & =8\pi T_{\mu \nu} \\
\nabla _{\mu}F^{\mu \nu} & =0
\end{align}
$$

the Reissner-Nordstrom solution is

$$\tag{1.5}
\begin{align}
\mathrm{d}s^{2} & =-f(r)\mathrm{d}t^{2}+\frac{\mathrm{d}r^{2}}{f(r)}+r^{2}\mathrm{d}\Omega ^{2}_{2} \\
A_{\mu}\mathrm{d}x^{\mu} & =-\frac{Q}{r}\delta
\end{align}
$$

where

$$\tag{1.6}
\begin{align}
f(r) & =1-\frac{2M}{r}+\frac{Q^{2}}{r^{2}}
\end{align}
$$

which describes a static, spherically symmetric and charged black hole. 

### horizons and global structure

write

$$\tag{1.7}
\begin{align}
f(r) & =\frac{1}{r^{2}}(r-r_{+})(r-r_{-}) \\
r_{\pm} & =M\pm \sqrt{ M^{2}-Q^{2} }
\end{align}
$$

then $\displaystyle{r_{+}}$ is the event horizon and $\displaystyle{r_{-}}$ is the cauchy horizon. we only consider the case with $\displaystyle{M>Q>0}$. if $\displaystyle{|Q|>M}$, there is a naked singularity. we do not want them becuase

1. the cosmic censorship conjecture
2. if there were a naked singularity, then physics outside the black hole depends on the UV, and we should not trust our effective theory anyway.

## the first law

the Bekenstein entropy gives that

$$\tag{1.8}
\begin{align}
S \equiv \frac{A}{4}
\end{align}
$$

where $\displaystyle{A}$ is the area of (event?) horizon. in the case of RN black hole, we have

$$\tag{1.9}
\begin{align}
A & =4\pi r_{+}^{2} \\
 &  =4\pi(M+\sqrt{ M^{2}-Q^{2} })^{2}
\end{align}
$$

then

$$\tag{1.9}
\begin{align}
\mathrm{d}S & =\frac{1}{T}(\mathrm{d}M-\Phi \mathrm{d}Q)
\end{align}
$$

where

$$\tag{1.10}
\begin{align}
T & =\frac{\sqrt{ M^{2}-Q^{2} }}{2\pi(M+\sqrt{ M^{2}-Q^{2} })^{2}}, \\
\Phi & =\frac{Q}{M+\sqrt{ M^{2}-Q^{2} }}
\end{align}
$$

"temperature" $\displaystyle{T}$ is related to the surface gravity $\displaystyle{\kappa}$ of the black hole

$$\tag{1.11}
\begin{align}
T & =\frac{\kappa}{2\pi}
\end{align}
$$

where $\displaystyle{\kappa}$ is defined as the accelaration due to gravity near the horizon.

#### exercise: thermodynamics of 3d BTZ blackholes

the non-rotating BTZ black hole is 

$$\tag{1.12}
\begin{align}
\mathrm{d}s^{2} & =\ell ^{2}\left[ -(r^{2}-8M)\mathrm{d}t^{2}+\frac{\mathrm{d}r^{2}}{r^{2}-8M}+r^{2}\mathrm{d}\phi ^{2} \right]
\end{align}
$$

where $\displaystyle{\phi \sim \phi+2\pi}$ is an angular coordiante. this metric describes a blackhole of mass $\displaystyle{M}$ in a spacetime with cosmological constant $\displaystyle{\Lambda=-\frac{1}{\ell ^{2}}}$.

the area of the horizon is

$$\tag{1.13}
\begin{align}
A & =2\pi r_{\text{horizon}} \\
 & =4\pi \sqrt{ 2M }
\end{align}
$$

here we assume the Bekenstein entropy is still valid. by variation, we have

$$\tag{1.14}
\begin{align}
T\delta S & =\mathrm{d}M \\
T & =\frac{\sqrt{ 2M }}{\pi}
\end{align}
$$

#### exercise: thermodynamics of rotating blackholes

the Kerr metric is

$$\tag{1.15}
\begin{align}
\mathrm{d}s^{2} & =-\frac{\Delta(r)}{\rho ^{2}}(\mathrm{d}t-a\sin ^{2}\theta \mathrm{d}\phi)^{2}+\frac{\rho ^{2}}{\Delta(r)}\mathrm{d}r^{2}+\rho ^{2}\mathrm{d}\theta ^{2}+\frac{1}{\rho ^{2}}\sin ^{2}\theta(a\mathrm{d}t-(r^{2}+a^{2})\mathrm{d}\phi)^{2}
\end{align}
$$

where

$$\tag{1.16}
\begin{align}
\Delta(r)=r^{2}+a^{2}-2Mr,  & & \rho ^{2}=r^{2}+a^{2}\cos ^{2}\theta
\end{align}
$$

and $\displaystyle{|a|<M}$. this metric describes a rotating black hole with mass $\displaystyle{M}$ and angular momentum $\displaystyle{J=aM}$

the horizon of a black hole is defined as the interior of boundary surface of the region in spacetime where light can escape to infinity from any point... we write a null vector tangent to this horizon as

$$\tag{1.17}
\begin{align}
l^{\mu}=(l^{t},0,l^{\theta},l^{\phi})
\end{align}
$$

then

$$\tag{1.18}
\begin{align}
g_{\mu \nu}l^{\mu}l^{\nu} & =g_{tt}l^{t}l^{t}+2g_{t\theta}l^{t}l^{\theta}+g_{\theta \theta}l^{\theta}l^{\theta}+g_{\phi \phi}l^{\phi}l^{\phi}=0
\end{align}
$$

first by evaluating (1.18) at $\displaystyle{r_{+}}$, we have

$$\tag{1.19}
\begin{align}

\end{align}
$$