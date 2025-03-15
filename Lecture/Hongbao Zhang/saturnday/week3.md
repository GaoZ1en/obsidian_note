Penrose diagrams of blackhole formation.

blackhole evaporation

$$\tag{1.1}
\begin{align}
t=4GM\log \frac{1}{u}+C_{0}+\mathcal{O}(u) \\
\implies u=Ce^{-t/4GM}
\end{align}
$$
observer measures quantum fields $\displaystyle{\Psi(t,\Omega)}$
$$\tag{1.2}
\begin{align}
\Psi(t,\Omega) & =\sum _{\ell,m}P_{\ell,m}(\Omega)\psi _{\ell,m}(t) \\
\Psi(t,r,\Omega) & =\sum _{\ell,m}P_{\ell,m}(\Omega)\psi _{\ell,m}(t,r)
\end{align}
$$

observer measures $\displaystyle{\psi _{\ell,m}(t,r)}$ which is a 1+1 dim CFT of free massless chiral fermion, and $\displaystyle{r}$ fixed, a 0+1 dim field theory.

$$\tag{1.3}
\begin{align}
\braket{ \psi (t)\psi(t') }\implies\braket{ \psi(u)\psi(u') } = \frac{(\mathrm{d}u\mathrm{d}u')^{1/2}}{u-u'}
\end{align}
$$

then

$$\tag{1.4}
\begin{align}
\braket{ \psi(t)\psi(t') } & \propto \frac{(\mathrm{d}t\mathrm{d}t')^{1/2}}{e^{(t-t')/4GM}-e^{-(t-t')/4GM}}
\end{align}
$$

there is a anti-periodic with $\displaystyle{t\to t+8\pi GMi}$, which corresponds to a thermal correlation function at a temperature $\displaystyle{T_{H}=\frac{1}{8\pi GM}}$, which is exactly the Hawking temperature.

acturally $\displaystyle{1.4}$ is exactly the 2-pt function of a chiral free fermion at temperature $\displaystyle{T_{H}}$ (see Levin Wen or my note on quantum manybody theory, $\displaystyle{\braket{ \psi(t)\psi(t') }=\frac{1}{Z}\mathrm{Tr}e^{-\beta H}\psi(t)\psi(t')}$). 

here we give a proof of (anti)periodicity of 2-pt thermal correlation function of boson (fermion), defined as 

$$\tag{1.5}
\begin{align}
\braket{ \phi(t)\phi(t') } & =\frac{1}{Z}\mathrm{Tr}(e^{-\beta H}T[\phi(t)\phi(t')])
\end{align}
$$

denote $\displaystyle{Z=\mathrm{Tr}e^{-\beta H}=e^{-\beta \Omega}}$

$$\tag{1.6}
\begin{align}
\braket{ \phi(t)\phi(t') } & =\mathrm{Tr}(e^{-\beta(H-\Omega)}T[\phi(t)\phi(t')]) \\
 & =\theta(t-t')\mathrm{Tr}(e^{-\beta(H-\Omega)}\phi(t)\phi(t'))+\theta(t-t')\mathrm{Tr}(e^{-\beta(H-\Omega)}\phi(t')\phi(t))
\end{align}
$$

for simplicity, choose $\displaystyle{t'=0}$ and consider $\displaystyle{t<0}$, then

$$\tag{1.7}
\begin{align}
\braket{ \phi(t)\phi(0) } & =\mathrm{Tr}(e^{-\beta(H-\Omega)}\phi(0)\phi(t)) \\
 & =e^{\beta \Omega}\mathrm{Tr}(e^{-\beta H}\phi(0)e^{iHt}\phi(0)e^{-iHt}) \\
 & =e^{\beta \Omega}\mathrm{Tr}(e^{-i(t+i\beta)H}\phi(0)e^{i(t+i\beta)H}e^{\beta H}\phi(0)e^{-\beta H}) \\
 & =e^{\beta \Omega}\mathrm{Tr}(e^{-\beta H}\phi(t+i\beta)\phi(0)) \\
 & = \braket{ \phi(t+i\beta)\phi(0) } 
\end{align}
$$

and the procedure are similar for fermions.

Kruskal-Szekeres coordinates

$$\tag{1.8}
\begin{align}
U & =-\left( \frac{r}{2GM}-1 \right)^{1/2}e^{r/4GM}e^{-t/4GM} \\
V & =\left( \frac{r}{2GM} \right)^{1/2}e^{r/4GM}e^{t/4GM}
\end{align}
$$

the Schwarzschild metric is

$$\tag{1.9}
\begin{align}
\mathrm{d}s^{2} & =-\frac{32G^{3}M^{3}}{r}e^{-r/2GM}\mathrm{d}U\mathrm{d}V+r^{2}\mathrm{d}\Omega ^{2}
\end{align}
$$

gray body

consider a massless scalar $\displaystyle{\phi}$ interacts with gravity. in schwarzschild background, the action for a mode of angular momentum $\displaystyle{l}$ is

$$\tag{2.1}
\begin{align}
S & = \int \mathrm{d}t\mathrm{d}r \left(\frac{r^{2}}{2} \frac{1}{1-\frac{2GM}{r}} \left( \frac{\mathrm{d}\phi}{\mathrm{d}t} \right)^{2}-\frac{r^{2}}{2}\left( 1-\frac{2GM}{r} \right) \left( \frac{\mathrm{d}\phi}{\mathrm{d}t} \right)^{2}-\frac{l(l+1)}{2}\phi ^{2}\right)
\end{align}
$$

under tortoise coordinate $\displaystyle{r_{*}=r+2GM\log(r-2GM)}$ and setting $\displaystyle{\phi=\frac{\sigma}{r}}$, we have

$$\tag{2.2}
\begin{align}
S=\int \mathrm{d}t\mathrm{d}r_{*}\left(\frac{1}{2}\left( \frac{\mathrm{d}\sigma}{\mathrm{d}t} \right)^{2}-\frac{1}{2}\left( \frac{\mathrm{d}\sigma}{\mathrm{d}r_{*}} \right)^{2}-\left( 1-\frac{2GM}{r} \right)\left( \frac{l(l+1)}{2r^{2}}+\frac{GM}{r^{3}} \right)\sigma ^{2}\right)
\end{align}
$$

we have the following effective potential
$$\tag{.}
\begin{align}

\end{align}
$$