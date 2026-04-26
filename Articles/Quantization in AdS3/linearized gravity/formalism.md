$$\begin{align}
R^{(0)}_{\mu \nu \rho \sigma} & =g^{(0)}_{\mu \sigma}g^{(0)}_{\nu \rho}-g^{(0)}_{\mu \rho}g^{(0)}_{\nu \sigma} \\
R^{(0)}_{\mu \nu} & =-2g^{(0)}_{\mu \nu} \\
R^{(0)} & =-6
\end{align}$$

$$\begin{align}
g_{\mu \nu} & =g^{(0)}_{\mu \nu}+h_{\mu \nu}
\end{align}$$

$$\begin{align}
g^{\mu \nu}g_{\nu \rho} & = \delta^\mu_\rho \\
\implies g^{\mu \nu}(g^{(0)}_{\nu \rho}+h_{\nu \rho}) & = \delta^\mu_\rho  \\
\implies (g^{(0)\mu \nu}-h^{\mu \nu}+\delta g^{\mu \nu})(g^{(0)}_{\nu \rho}+h_{\nu \rho}) & =\delta ^{\mu}_{\rho} \\
=\delta ^{\mu}_{~\rho}-h^{\mu \nu}h_{\nu \rho}+\delta g^{\mu \nu}g_{\nu \rho}^{(0)}+\delta g^{\mu \nu}h_{\nu \rho} & =\delta ^{\mu}_{\rho} \\
\implies \delta g^{\mu \nu} & = h^{\mu \alpha}h_{\alpha}^{~\nu}-\delta g^{\mu \alpha}h_{\alpha}^{~\nu} \\
 & =h^{\mu \alpha}h_{\alpha}^{~\nu}-h_{\alpha}^{~\nu}(h^{\mu \beta}h_{\beta}^{~\alpha}-\delta g^{\mu \beta}h_{\beta}^{~\alpha}) \\
 & =h^{\mu \alpha}h_{\alpha}^{~\nu}-h^{\mu \beta}h_{\alpha}^{~\nu}h_{\beta}^{~\alpha}+h_{\alpha}^{~\nu}h_{\beta}^{~\alpha}(h^{\mu \gamma}h_{\gamma}^{~\beta}-\delta g^{\mu \gamma}h_{\gamma}^{~\beta}) \\
 & =h^{\mu \alpha}h_{\alpha}^{~\nu}-h^{\mu \beta}h_{\alpha}^{~\nu}h_{\beta}^{~\alpha}+h^{\mu \gamma}h_{\alpha}^{~\nu}h_{\beta}^{~\alpha}h_{\gamma}^{~\beta}+\mathcal{O}(h^{5})
\end{align}$$

then

$$\begin{align}
g^{\mu \nu} & =g^{(0)\mu \nu}-h^{\mu \nu}+h^{\mu \alpha}h_{\alpha}^{~\nu}-h^{\mu \beta}h_{\alpha}^{~\nu}h_{\beta}^{~\alpha}+h^{\mu \gamma}h_{\alpha}^{~\nu}h_{\beta}^{~\alpha}h_{\gamma}^{~\beta}+\mathcal{O}(h^{5}) \\
h^{\mu \nu} & =g^{(0)\mu \alpha}g^{(0)\nu \beta}h_{\alpha \beta}
\end{align}$$

$$\begin{align}
g & =g^{(0)}\left( 1+h+ \frac{1}{2}h^{2}-\frac{1}{2}h_{\mu \nu}h^{\mu \nu}+\mathcal{O}(h^{3}) \right) \\
\sqrt{ -g } & =\sqrt{ -g^{(0)} }\left( 1+\frac{h}{2}-\frac{1}{4}h_{\mu \nu}h^{\mu \nu}+\frac{1}{8}h^{2}+\mathcal{O}(h^{3}) \right)
\end{align}$$

connection

$$\begin{align}
\Gamma ^{\rho}_{~\mu \nu} & =\frac{1}{2}g^{\rho \sigma}(\partial _{\mu}g_{\sigma \nu}+\partial _{\nu}g_{\mu \sigma}-\partial _{\sigma}g_{\mu \nu})
\end{align}$$

then

$$\begin{align}
\Gamma ^{\rho}_{~\mu \nu} & ={\Gamma ^{(0)}}^{\rho}_{~\mu \nu}+\frac{1}{2}g^{(0)\rho \sigma}(\nabla ^{(0)}_{\mu}h_{\sigma \nu}+\nabla _{\nu}^{(0)}h_{\mu \sigma}-\nabla ^{(0)}_{\sigma}h_{\mu \nu}) \\
 & +\frac{1}{2}h^{\rho \alpha}(\nabla ^{(0)}_{\alpha}h_{\mu \nu}-\nabla ^{(0)}_{\mu}h_{\alpha \nu}-\nabla ^{(0)}_{\nu}h_{\mu \alpha}) \\
 & +\frac{1}{2}h_{\alpha}^{~\beta}h^{\rho \alpha}(\nabla ^{(0)}_{\mu}h_{\beta \nu}+\nabla ^{(0)}_{\nu}h_{\mu \beta}-\nabla ^{(0)}_{\beta}h_{\mu \nu})+\mathcal{O}(h^{4}) 
\end{align}$$

$$\begin{align}
R_{\mu \nu} & =\partial _{\rho}\Gamma ^{\rho}_{~\mu \nu}-\partial _{\nu}\Gamma ^{\rho}_{~\mu \rho}+\Gamma ^{\rho}_{~\rho \lambda}\Gamma ^{\lambda}_{~\mu \nu}-\Gamma ^{\rho}_{~\nu \lambda}\Gamma ^{\lambda}_{~\mu \rho}
\end{align}$$

$$\begin{align}
R_{\mu \nu} & =R^{(0)}_{\mu \nu}+\frac{1}{2}(h_{\nu}^{~\alpha}R_{\mu \alpha}^{(0)}+h_{\mu}^{~\alpha}R^{(0)}_{\nu \alpha}-2h^{\alpha \beta}R^{(0)}_{\mu \alpha \nu \beta}-\nabla^{(0)}_{\alpha}\nabla^{(0)\alpha}h_{\mu \nu}+\nabla_{\mu}^{(0)}\nabla^{(0)}_{\alpha}h_{\nu}^{~\alpha}+\nabla^{(0)}_{\nu}\nabla^{(0)}_{\alpha}h_{\mu}^{~\alpha}-\nabla_{\nu}^{(0)}\nabla_{\mu}^{(0)}h) \\
 & +\frac{1}{4}(-2h^{\beta \gamma}h_{\nu}^{~\alpha}R_{\mu \beta \alpha \gamma}^{(0)}+4h_{\alpha}^{~\gamma}h^{\alpha \beta}R^{(0)}_{\mu \beta \nu \gamma}-2h^{\beta \gamma}h_{\mu}^{~\alpha}R^{(0)}_{\nu \beta \alpha \gamma}-\nabla^{(0)}_{\alpha}h\nabla^{(0)\alpha}h_{\mu \nu}+2\nabla^{(0)\alpha}h_{\mu \nu}\nabla^{(0)}_{\beta}h_{\alpha}^{~\beta}+2h^{\alpha \beta}\nabla^{(0)}_{\beta}\nabla^{(0)}_{\alpha}h_{\mu \nu} \\
 & -2\nabla^{(0)}_{\alpha}h_{\nu \beta}\nabla^{(0)\beta}h_{\mu}^{~\alpha}+2\nabla^{(0)}_{\beta}h_{\nu \alpha}\nabla^{(0)\beta}h_{\mu}^{~\alpha}+\nabla^{(0)}_{\alpha}h\nabla^{(0)}_{\mu}h_{\nu}^{~\alpha}-2\nabla^{(0)}_{\beta}h_{\alpha}^{~\beta}\nabla^{(0)}_{\mu}h_{\nu}^{~\alpha}-2h^{\alpha \beta}\nabla^{(0)}_{\mu}\nabla^{(0)}_{\beta}h_{\nu \alpha}+\nabla^{(0)}_{\mu}h^{\alpha \beta}\nabla^{(0)}_{\nu}h_{\alpha \beta} \\
 & +\nabla^{(0)}_{\alpha}h\nabla^{(0)}_{\nu}h_{\mu}^{\alpha}-2\nabla^{(0)}_{\beta}h_{\alpha}^{\beta}\nabla^{(0)}_{\nu}h_{\mu}^{~\alpha}-2h^{\alpha \beta}\nabla^{(0)}_{\nu}\nabla^{(0)}_{\beta}h_{\mu \alpha}+2h^{\alpha \beta}\nabla^{(0)}_{\nu}\nabla^{(0)}_{\mu}h_{\alpha \beta})+\mathcal{O}(h^{3})
\end{align}$$

$$\begin{align}
 & =-2g^{(0)}_{\mu \nu}+g^{(0)}_{\mu \nu}h-3h_{\mu \nu}-\frac{1}{2}\nabla ^{(0)2}h_{\mu \nu}+\frac{1}{2}\nabla ^{(0)}_{\mu}\nabla ^{(0)}_{\alpha}h_{\nu}^{~\alpha}+\frac{1}{2}\nabla ^{(0)}_{\nu}\nabla ^{(0)}_{\alpha}h_{\mu}^{~\alpha}-\frac{1}{2}\nabla ^{(0)}_{\mu}\nabla ^{(0)}_{\nu}h \\
 & -g^{(0)}_{\mu \nu}h_{\alpha \beta}h^{\alpha \beta}+hh_{\mu \nu}-\frac{1}{4}\nabla ^{(0)}_{\alpha}h\nabla ^{(0)\alpha}h_{\mu \nu}+\frac{1}{2}\nabla ^{(0)\rho}h_{\mu \nu}\nabla ^{(0)}_{\sigma}h_{\rho}^{~\sigma}+\frac{1}{2}h^{\rho \sigma}\nabla ^{(0)}_{\rho}\nabla ^{(0)}_{\sigma}h_{\mu \nu} \\
 & -\frac{1}{2}\nabla ^{(0)}_{\rho}h_{\nu \sigma}\nabla ^{(0)\sigma}h_{\mu}^{~\rho}+\frac{1}{2}\nabla ^{(0)}_{\sigma}h_{\nu \rho}\nabla ^{(0)\sigma}h_{\mu}^{~\rho}+\frac{1}{4}\nabla ^{(0)}_{\rho}h\nabla ^{(0)}_{\mu}h_{\nu}^{~\rho}-\frac{1}{2}\nabla ^{(0)}_{\sigma}h_{\rho}^{~\sigma}\nabla ^{(0)}_{\mu}h_{\nu}^{~\rho} \\
 & -\frac{1}{2}h^{\rho \sigma}\nabla ^{(0)}_{\mu}\nabla ^{(0)}_{\sigma}h_{\nu \rho}+\frac{1}{4}\nabla ^{(0)}_{\mu}h^{\rho \sigma}\nabla ^{(0)}_{\nu}h_{\rho \sigma}+\frac{1}{4}\nabla ^{(0)}_{\rho}h\nabla ^{(0)}_{\nu}h_{\mu}^{~\rho}-\frac{1}{2}\nabla ^{(0)}_{\sigma}h_{\rho}^{~\sigma}\nabla ^{(0)}_{\nu}h_{\mu}^{~\rho} \\
 & -\frac{1}{2}h^{\rho \sigma}\nabla ^{(0)}_{\nu}\nabla ^{(0)}_{\sigma}h_{\mu \rho}+\frac{1}{2}h^{\rho \sigma}\nabla ^{(0)}_{\mu}\nabla ^{(0)}_{\nu}h_{\rho \sigma}+\mathcal{O}(h^{3})
\end{align}$$

$$\begin{align}
 & (g^{(0)\mu \nu}-h^{\mu \nu}+h^{\mu \alpha}h_{\alpha}^{~\nu})(-2g_{\mu \nu}^{(0)}+g^{(0)}_{\mu \nu}h-3h_{\mu \nu}-g^{(0)}_{\mu \nu}h_{\rho \sigma}h^{\rho \sigma}+hh_{\mu \nu}) \\
= & -6+3h-3h-3h_{\mu \nu}h^{\mu \nu}+h^{2}+2h-h^{2}+3h_{\mu \nu}h^{\mu \nu}-2h_{\mu \nu }h^{\mu \nu} \\
= & -6+2h-2h_{\mu \nu}h^{\mu \nu}
\end{align}$$

$$\begin{align}
R & =R^{(0)}-h^{\mu \nu}R^{(0)}_{\mu \nu}+\nabla ^{(0)}_{\mu}\nabla ^{(0)}_{\nu}h^{\mu \nu}-\nabla ^{(0)2}h \\
 & +2R^{(0)}_{\mu \nu}h^{\mu \alpha}h^{\nu}_{~\alpha}-R^{(0)}_{\mu \nu \rho \sigma}h^{\mu \rho}h^{\nu \sigma}+\frac{1}{4}(-\nabla ^{(0)}_{\alpha}h\nabla ^{(0)\alpha}h \\
 & +4\nabla ^{(0)\alpha}h\nabla ^{(0)}_{\beta}h_{\alpha}^{~\beta}+4h^{\alpha \beta}\nabla ^{(0)}_{\alpha}\nabla ^{(0)}_{\beta}h-2\nabla ^{(0)}_{\alpha}h_{\mu\beta}\nabla ^{(0)\beta}h^{\mu\alpha} \\
 & +3\nabla ^{(0)}_{\mu}h^{\alpha \beta}\nabla ^{(0)\mu}h_{\alpha \beta} \\
 & -4\nabla ^{(0)}_{\beta}h_{\alpha}^{~\beta}\nabla ^{(0)\mu}h_{\mu}^{~\alpha}-8h^{\alpha \beta}\nabla ^{(0)\mu}\nabla ^{(0)}_{\beta}h_{\mu \alpha}+4h^{\alpha \beta}\nabla ^{(0)2}h_{\alpha \beta})+\mathcal{O}(h^{3})
\end{align}$$

$$\begin{align}
 & =-6+2h-2h^{\mu \nu}h_{\mu \nu}+\nabla ^{(0)}_{\mu}\nabla ^{(0)}_{\nu}h^{\mu \nu}-\nabla ^{(0)2}h+h^{\mu \nu}\nabla ^{(0)}_{\mu}\nabla ^{(0)}_{\nu}h-\frac{1}{4}\nabla ^{(0)}_{\mu}h\nabla ^{(0)\mu}h \\
 & -\nabla ^{(0)}_{\mu}h^{\mu \nu}\nabla ^{(0)\rho}h_{\nu \rho}+\nabla ^{(0)\mu}h\nabla ^{(0)}_{\nu}h_{\mu}^{~\nu}-h^{\mu \nu}\nabla ^{(0)}_{\nu}\nabla ^{(0)\rho}h_{\mu \rho}-h^{\mu \nu}\nabla ^{(0)\rho}\nabla ^{(0)}_{\nu}h_{\mu \rho}+h^{\mu \nu}\nabla ^{(0)2}h_{\mu \nu} \\
 & -\frac{1}{2}\nabla ^{(0)}_{\nu}h_{\mu \rho}\nabla ^{(0)\rho}h^{\mu \nu}+\frac{3}{4}\nabla ^{(0)}_{\rho}h_{\mu \nu}\nabla ^{(0)\rho}h^{\mu \nu}
\end{align}$$

linearized eom

$$\begin{align}
R_{\mu \nu}-\frac{1}{2}Rg_{\mu \nu}-g_{\mu \nu} & =-h_{\mu \nu}-\frac{1}{2}h_{\mu \nu}R^{(0)}-\frac{1}{2}g^{(0)}_{\mu \nu}\left( -h^{\alpha \beta}R_{\alpha \beta}-\nabla ^{(0)2}h+\nabla ^{(0)}_{\alpha}\nabla ^{(0)}_{\beta}h^{\alpha \beta} \right) \\
 & \left.+\frac{1}{2}(h_{\nu}^{~\alpha}R^{(0)}_{\mu \alpha}+h_{\mu}^{~\alpha}R^{(0)}_{\nu \alpha}-2h^{\alpha \beta}R_{\mu \alpha \nu \beta}-\nabla ^{(0)2}h_{\mu \nu}+\nabla ^{(0)}_{\mu}\nabla ^{(0)}_{\alpha}h_{\nu}^{~\alpha}+\nabla ^{(0)}_{\nu}\nabla ^{(0)}_{\alpha}h_{\mu}^{~\alpha}-\nabla ^{(0)}_{\mu}\nabla ^{(0)}_{\nu}h)\right) \\
 & =-h_{\mu \nu}+\frac{1}{2}g^{(0)}_{\mu \nu}\nabla ^{(0)2}h-\frac{1}{2}g^{(0)}_{\mu \nu}\nabla ^{(0)}_{\rho}\nabla ^{(0)}_{\sigma}h^{\rho \sigma}-\frac{1}{2}\nabla ^{(0)2}h_{\mu \nu}+\frac{1}{2}\nabla ^{(0)}_{\mu}\nabla ^{(0)}_{\rho}h_{\nu}^{~\rho}+\frac{1}{2}\nabla ^{(0)}_{\nu}\nabla ^{(0)}_{\rho}h_{\mu}^{~\rho}-\frac{1}{2}\nabla ^{(0)}_{\mu}\nabla ^{(0)}_{\nu}h+\mathcal{O}(h^{3})
\end{align}$$

the bulk Lagrangian

$$\begin{align}
L & =\sqrt{ -g }(R+2) \\
 & =\sqrt{ -g^{(0)} }\left( -4 \right)+\sqrt{ -g^{(0)} }(\nabla ^{(0)}_{\mu}\nabla ^{(0)}_{\nu}h^{\mu \nu}-\nabla ^{(0)2}h) \\
 & +\sqrt{ -g^{(0)} }\left(\frac{1}{2}h^{2}-h_{\mu \nu}h^{\mu \nu}+h^{\mu \nu}\nabla ^{(0)}_{\mu}\nabla ^{(0)}_{\nu}h-\frac{1}{4}\nabla ^{(0)}_{\mu}h\nabla ^{(0)\mu}h\right. \\
 & -\nabla ^{(0)}_{\mu}h^{\mu \nu}\nabla ^{(0)}_{\rho}h_{\nu}^{~\rho}+\nabla ^{(0)\mu}h\nabla ^{(0)}_{\nu}h_{\mu}^{~\nu}-h^{\mu \nu}\nabla ^{(0)}_{\nu}\nabla ^{(0)}_{\rho}h_{\mu}^{~\rho}-h^{\mu \nu}\nabla ^{(0)}_{\rho}\nabla ^{(0)}_{\nu}h_{\mu}^{~\rho}+\frac{1}{2}h\nabla ^{(0)}_{\mu}\nabla ^{(0)}_{\nu}h^{\mu \nu} \\
 & \left.+h^{\mu \nu}\nabla ^{(0)2}h_{\mu \nu}-\frac{1}{2}h\nabla ^{(0)2}h-\frac{1}{2}\nabla ^{(0)}_{\mu}h_{\nu \rho}\nabla ^{(0)\rho}h^{\mu \nu}+\frac{3}{4}\nabla ^{(0)}_{\rho}h_{\mu \nu}\nabla ^{(0)\rho}h^{\mu \nu}+\mathcal{O}(h^{3})\right) \\
 & := \sqrt{ -g^{(0)} }\mathcal{L}
\end{align}$$

take a variation of the action

$$\begin{align}
\delta S & =\int _{M}\sqrt{ -g^{(0)} }E_{\mu \nu}\delta h^{\mu \nu}+\sqrt{ -g^{(0)} }\nabla ^{(0)}_{\mu}\theta^{\mu} \\
E_{\mu \nu} & =-h_{\mu \nu}-\frac{1}{2}\nabla ^{(0)2}h_{\mu \nu}-\frac{1}{2}g^{(0)}_{\mu \nu}\nabla ^{(0)}_{\rho}\nabla ^{(0)}_{\sigma}h^{\rho \sigma}+\frac{1}{2}g^{(0)}_{\mu \nu}\nabla ^{(0)2}h+\frac{1}{2}\nabla _{\mu}^{(0)}\nabla ^{(0)}_{\rho}h_{\nu}^{~\rho}+\frac{1}{2}\nabla ^{(0)}_{\nu}\nabla ^{(0)}_{\rho}h_{\mu}^{~\rho}-\frac{1}{2}\nabla _{\mu}^{(0)}\nabla ^{(0)}_{\nu}h \\
\theta ^{\mu} & =\nabla ^{(0)}_{\nu}\delta h^{\mu \nu}-\nabla ^{(0)\mu}\delta h \\
\omega & =\int _{\Sigma}\sqrt{-g^{(0)}}\left[\frac12 \delta h_\mu{}^\nu\wedge \nabla ^{(0)}_\nu\delta h-\frac12 \delta h\wedge\nabla^{(0)\mu}\delta h+\frac12 \delta h\wedge\nabla_\nu ^{(0)}\delta h^{\mu\nu}+\frac12 \delta h^{\nu\rho}\wedge\nabla^{(0)\mu}\delta h_{\nu\rho}-\delta h^{\nu\rho}\wedge\nabla ^{(0)}_\rho\delta h_\mu{}_\nu\right].
\end{align}$$

the linearized eom reads

$$\begin{align}
-h_{\mu \nu}-\frac{1}{2}\nabla ^{(0)2}h_{\mu \nu}-\frac{1}{2}g^{(0)}_{\mu \nu}\nabla ^{(0)}_{\rho}\nabla ^{(0)}_{\sigma}h^{\rho \sigma}+\frac{1}{2}g^{(0)}_{\mu \nu}\nabla ^{(0)2}h+\frac{1}{2}\nabla ^{(0)}_{\mu}\nabla ^{(0)}_{\rho}h_{\nu}^{~\rho}+\frac{1}{2}\nabla ^{(0)}_{\nu}\nabla ^{(0)}_{\rho}h_{\mu}^{~\rho}-\frac{1}{2}\nabla ^{(0)}_{\mu}\nabla ^{(0)}_{\nu}h=0
\end{align}$$

take a trace, we have
$$\begin{align}
-h+\frac{1}{2}\nabla ^{(0)2}h-\frac{1}{2}\nabla ^{(0)}_{\rho}\nabla ^{(0)}_{\sigma}h^{\rho \sigma}=0
\end{align}$$
$$\begin{align}
\implies \nabla ^{(0)}_{\rho}\nabla ^{(0)}_{\sigma}h^{\rho \sigma}=\nabla ^{(0)2}h-2h
\end{align}$$

plug it back to the eom, we get

$$\begin{align}
-h_{\mu \nu}+g^{(0)}_{\mu \nu}h-\frac{1}{2}\nabla ^{(0)2}h_{\mu \nu}+\frac{1}{2}\nabla ^{(0)}_{\mu}\nabla ^{(0)}_{\rho}h_{\nu}^{~\rho}+\frac{1}{2}\nabla ^{(0)}_{\nu}\nabla ^{(0)}_{\rho}h_{\mu}^{~\rho}-\frac{1}{2}\nabla ^{(0)}_{\mu}\nabla ^{(0)}_{\nu}h & =0 \\
\implies -h_{\mu \nu}+g^{(0)}_{\mu \nu}h-\frac{1}{2}\nabla ^{(0)2}h_{\mu \nu}+\nabla ^{(0)}_{(\mu}(\nabla ^{(0)}_{\rho}h_{\nu)}^{~\rho}-\frac{1}{2}\nabla ^{(0)}_{\nu)}h) & =0
\end{align}$$

if we impose the de Donder gauge condition

$$\begin{align}
\nabla ^{(0)}_{\rho}h_{\nu}^{~\rho}-\frac{1}{2}\nabla ^{(0)}_{\nu}h & =0
\end{align}$$

the last term vanishes, leading to

$$\begin{align}
-h_{\mu \nu}+g^{(0)}_{\mu \nu}h-\frac{1}{2}\nabla ^{(0)2}h_{\mu \nu} & =0
\end{align}$$

after gauge fixing, the action and the symplectic form becomes


$$\begin{align}
S & =\int _{M}\mathrm{d}^{3}x\sqrt{ -g^{(0)} }\left( -4+2h_{\mu \nu}h^{\mu \nu}+h^{\mu \nu}\nabla ^{(0)2}h_{\mu \nu}-\frac{1}{2}\nabla ^{(0)}_{\mu}h_{\nu \rho}\nabla ^{(0)\rho}h^{\mu \nu}+\frac{3}{4}\nabla ^{(0)}_{\rho}h_{\mu \nu}\nabla ^{(0)\rho}h^{\mu \nu}\right) \\
\omega & =\int _{\Sigma}\sqrt{\sigma^{(0)}}\tau _{\mu}\left[\frac12 \delta h^{\nu\rho}\wedge\nabla^{(0)\mu}\delta h_{\nu\rho}-\delta h^{\nu\rho}\wedge\nabla ^{(0)}_\rho\delta h_\mu{}_\nu\right]
\end{align}$$

where $\displaystyle{\sigma _{ab}}$ is the induced metric on the Cauchy surface $\displaystyle{\Sigma}$, and $\displaystyle{\tau _{\mu}}$ is the unit normal vector to $\displaystyle{\Sigma}$.

$$\begin{align}
\mathrm{d}s^{2}_{\Sigma} & = \frac{\mathrm{d}r^{2}}{1+r^{2}}+r^{2}\mathrm{d}\phi ^{2} \\
\tau _{\mu} & = \left( \sqrt{ 1+r^{2} },0,0 \right)
\end{align}$$
