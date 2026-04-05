# problem 1

in the Boyer-Lindquist coordinate $\displaystyle{(t,r,\theta,\phi)}$ of Kerr spacetime

$$\begin{align}
\rho ^{2} & =r^{2}+a^{2}\cos ^{2}\theta \\
\Delta & =r^{2}-2Mr+a^{2}
\end{align}$$

for a test particle of mass $\displaystyle{m}$ with four-velocity $\displaystyle{u^{\mu}=\frac{\mathrm{d}x^{\mu}}{\mathrm{d}\tau}}$ and four-momentum $\displaystyle{p_{\mu}=mg_{\mu \nu}u^{\nu}}$. known that there are conserved quantities

$$\begin{align}
p_{t} & =mg_{t\mu}u^{\mu}=-mE \\
p_{3}\equiv p_{\phi} & =mg_{\phi \mu}u^{\mu}=mL
\end{align}$$

associated with time translation and axial symmetries, respectively. related metric components are

$$\begin{align}
g_{tt} & =-\left( 1-\frac{2Mr}{\rho ^{2}} \right) \\
g_{t\phi} & =-\frac{2Mar\sin ^{2}\theta}{\rho ^{2}} \\
g_{\phi \phi} & =\left( r^{2}+a^{2}+\frac{2Mra^{2}\sin ^{2}\theta}{\rho ^{2}} \right)\sin ^{2}\theta \\
g_{rr} & =\frac{\rho ^{2}}{\Delta} \\
g_{\theta \theta} & =\rho ^{2}
\end{align}$$

derive the following eom for the test particle

$$\begin{align}
\left( -1-\frac{2Mr(r^{2}+a^{2})}{\Delta \rho ^{2}} \right)E^{2}+\frac{4Mar}{\Delta \rho ^{2}}EL+\frac{\rho ^{2}-2Mr}{\Delta \rho ^{2}\sin ^{2}\theta}L^{2}+\frac{\rho ^{2}}{\Delta}\left( \frac{\mathrm{d}r}{\mathrm{d}\tau} \right)^{2}+\rho ^{2}\left( \frac{\mathrm{d}\theta}{\mathrm{d}\tau} \right)^{2} & =-1
\end{align}$$

*sol*.

notice that

$$\begin{align}
E & =-g_{tt}u^{t}-g_{t\phi} u^{\phi}\\
L & =g_{t\phi}u^{t}+g_{\phi \phi}u^{\phi}  \\
\implies u^{t} & =\frac{g_{\phi \phi}E+g_{t\phi}L}{g_{t\phi}^{2}-g_{tt}g_{\phi \phi}} \\
u^{\phi} & =-\frac{g_{t\phi}E+g_{tt}L}{g_{t\phi}^{2}-g_{tt}g_{\phi \phi}}
\end{align}$$

and the normalization condition for four-velocity

$$\begin{align}
g_{\mu \nu}u^{\mu}u^{\nu} & =-1 \\
\implies g_{tt}u^{t}u^{t}+2g_{t\phi}u^{t}u^{\phi}+g_{\phi \phi}u^{\phi}u^{\phi}+g_{rr}u^{r}u^{r}+g_{\theta \theta}u^{\theta}u^{\theta} & =-1 \\
\implies g_{tt}\left( \frac{g_{\phi \phi}E+g_{t\phi}L}{g_{t\phi}^{2}-g_{tt}g_{\phi \phi}} \right)^{2}+2g_{t\phi}\left( \frac{g_{\phi \phi}E+g_{t\phi}L}{g_{t\phi}^{2}-g_{tt}g_{\phi \phi}} \right)\left( -\frac{g_{t\phi}E+g_{tt}L}{g_{t\phi}^{2}-g_{tt}g_{\phi \phi}} \right)+g_{\phi \phi}\left( -\frac{g_{t\phi}E+g_{tt}L}{g_{t\phi}^{2}-g_{tt}g_{\phi \phi}} \right)^{2}+g_{rr}\left( \frac{\mathrm{d}r}{\mathrm{d}\tau} \right)^{2}+g_{\theta \theta}\left( \frac{\mathrm{d}\theta}{\mathrm{d}\tau} \right)^{2} & =-1 \\
\implies \left( -1-\frac{2Mr(r^{2}+a^{2})}{\Delta \rho ^{2}} \right)E^{2}+\frac{4Mar}{\Delta \rho ^{2}}EL+\frac{\rho ^{2}-2Mr}{\Delta \rho ^{2}\sin ^{2}\theta}L^{2}+\frac{\rho ^{2}}{\Delta}\left( \frac{\mathrm{d}r}{\mathrm{d}\tau} \right)^{2}+\rho ^{2}\left( \frac{\mathrm{d}\theta}{\mathrm{d}\tau} \right)^{2} & =-1
\end{align}$$

---

# optional problem

consider a system of no-colliding plasma consisting of $\displaystyle{n}$ particles with mass $\displaystyle{m_{n}}$ and electric charge $\displaystyle{e_{n}}$. the action of this system is chosen to be

$$\begin{align}
S & =-\sum _{n}m_{n} \int ^{\infty}_{-\infty} \mathrm{d}p \sqrt{ -g_{\mu \nu}(x_{n}(p)) \frac{\mathrm{d}x_{n}^{\mu}(p)}{\mathrm{d}p} \frac{\mathrm{d}x^{\nu}_{n}(p)}{\mathrm{d}p} } \\
 & -\frac{1}{4}\int \mathrm{d}^{4}x\sqrt{ -g }F_{\mu \nu}F^{\mu \nu}+\sum _{n}e_{n}\int ^{\infty}_{-\infty} \mathrm{d}p A_{\mu}(x_{n}(p)) \frac{\mathrm{d}x_{n}^{\mu}(p)}{\mathrm{d}p}
\end{align}$$

where $\displaystyle{p}$ is some parameter that labels the position of each particle along its worldline. consider the following variations

$$\begin{align}
x^{\mu}(p) & \to x^{\mu}(p)+\delta x^{\mu}(p) \\
A_{\mu}(x) & \to A_{\mu}(x)+\delta A_{\mu}(x)
\end{align}$$

with boundary conditions

$$\begin{align}
\delta x^{\mu}(p) & \to 0 \quad\text{when }|p|\to \infty \\
\delta A_{\mu}(x) & \to 0 \quad \text{when }|x^{\lambda}|\to \infty
\end{align}$$

the eoms for particles with parameter $\displaystyle{\mathrm{d}\tau _{n}=(-g_{\mu \nu} \mathrm{d}x_{n}^{\mu}\mathrm{d}x^{\nu}_{n})^{1/2}}$ and electromagnetic field $\displaystyle{A_{\mu}}$ are given by

$$\begin{align}
m\left( \frac{\mathrm{d}^{2}x_{n}^{\mu}}{\mathrm{d}\tau _{n}^{2}}+\Gamma ^{\mu}_{~\nu \lambda}(x_{n}) \frac{\mathrm{d}x_{n}^{\nu}}{\mathrm{d}\tau _{n}} \frac{\mathrm{d}x^{\lambda}_{n}}{\mathrm{d}\tau _{n}} \right) & =e_{n}F^{\mu}_{~\nu}(x_{n}) \frac{\mathrm{d}x_{n}^{\nu}}{\mathrm{d}\tau} \\
\nabla _{\mu}F^{\mu \nu}(x) & =-\sum _{n}e_{n}\int \delta ^{4}(x-x_{n}(\tau _{n})) \frac{\mathrm{d}x_{n}^{\nu}}{\mathrm{d}\tau _{n}} \mathrm{d}\tau _{n}
\end{align}$$

derive these eoms.

*sol*.

choose $\displaystyle{p}$ to be $\displaystyle{\tau _{n}}$ defined above, then take a variation of the action with respect to $\displaystyle{\delta x_{n}^{\mu}}$ and $\displaystyle{\delta A_{\mu}}$

$$\begin{align}
\delta S & =-\sum _{n}m_{n}\int ^{\infty}_{-\infty}\mathrm{d}\tau _{n} \frac{1}{2}\left(- \partial _{\rho}g_{\mu \nu} \delta x_{n}^{\rho} \frac{\mathrm{d}x_{n}^{\mu}}{\mathrm{d}\tau _{n}} \frac{\mathrm{d}x_{n}^{\nu}}{\mathrm{d}\tau _{n}}-2g_{\mu \nu}  \frac{\mathrm{d}x_{n}^{\mu}}{\mathrm{d}\tau _{n}} \frac{\mathrm{d}\delta x_{n}^{\nu}}{\mathrm{d}\tau _{n}}\right) \\
 & -\int \mathrm{d}^{4}x\sqrt{ -g }F^{\mu \nu}\nabla _{\mu}\delta A_{\nu}+\sum _{n}e_{n}\int ^{\infty}_{-\infty} \mathrm{d}\tau _{n}  \delta A_{\mu} \frac{\mathrm{d}x_{n}^{\mu}}{\mathrm{d}\tau _{n}} \\
 & +\sum _{n} e_{n}\int ^{\infty}_{-\infty} \mathrm{d}\tau _{n} \left( \partial _{\nu}A_{\mu} \frac{\mathrm{d}x_{n}^{\mu}}{\mathrm{d}\tau _{n}}\delta x^{\nu}_{n}+ A_{\mu} \frac{\mathrm{d}\delta x_{n}^{\mu}}{\mathrm{d}\tau _{n}}\right) \\
 & =-\sum _{n} m_{n}\int ^{\infty}_{-\infty} \mathrm{d}\tau _{n} g_{\mu \nu} \left( \frac{\mathrm{d}^{2}x_{n}^{\mu}}{\mathrm{d}\tau _{n}^{2}}+\frac{1}{2}g^{\mu \lambda}(\partial _{\rho}g_{\lambda \sigma}+\partial _{\sigma}g_{\rho \lambda}-\partial _{\lambda}g_{\rho \sigma}) \frac{\mathrm{d}x_{n}^{\rho}}{\mathrm{d}\tau _{n}} \frac{\mathrm{d}x_{n}^{\sigma}}{\mathrm{d}\tau _{n}} \right) \delta x_{n}^{\nu} \\
 & +\int \mathrm{d}^{4}x\sqrt{ -g }\nabla _{\mu}F^{\mu \nu}\delta A_{n}+\sum _{n}e_{n} \int \delta ^{4}(x-x_{n}(\tau _{n}))\mathrm{d}\tau _{n} \frac{\mathrm{d}x_{n}^{\nu}}{\mathrm{d}\tau _{n}} \delta A_{\nu} \\
 & +\sum _{n} e_{n}\int ^{\infty}_{-\infty} \mathrm{d}\tau _{n}F_{\nu \mu} \frac{\mathrm{d}x_{n}^{\mu}}{\mathrm{d}\tau _{n}}\delta x_{n}^{\nu} \\
\implies m_{n} g_{\mu \nu}\left(\frac{\mathrm{d}^{2}x_{n}^{\mu}}{\mathrm{d}\tau _{n}^{2}}+\Gamma ^{\mu}_{~\rho \sigma} \frac{\mathrm{d}x_{n}^{\rho}}{\mathrm{d}\tau _{n}} \frac{\mathrm{d}x^{\sigma}_{n}}{\mathrm{d}\tau _{n}}\right) & =e_{n} F_{\nu \mu} \frac{\mathrm{d}x_{n}^{\mu}}{\mathrm{d}\tau _{n}} \\
\nabla _{\mu}F^{\mu \nu} & =-\sum _{n}e_{n} \int \delta ^{4}(x-x_{n}(\tau _{n})) \mathrm{d}\tau _{n} \frac{\mathrm{d}x_{n}^{\nu}}{\mathrm{d}\tau _{n}}
\end{align}$$
