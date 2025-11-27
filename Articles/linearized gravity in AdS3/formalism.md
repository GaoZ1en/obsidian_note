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
 & +\nabla^{(0)}_{\alpha}h\nabla^{(0)}_{\nu}h_{\mu}^{\alpha}-2\nabla^{(0)}_{\beta}h_{\alpha}^{\beta}\nabla^{(0)}_{\nu}h_{\mu}^{~\alpha}-2h^{\alpha \beta}\nabla^{(0)}_{\nu}\nabla^{(0)}_{\beta}h_{\mu \alpha}+2h^{\alpha \beta}\nabla^{(0)}_{\nu}\nabla^{(0)}_{\mu}h_{\mu \nu})+\mathcal{O}(h^{3})
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
 & =-6+2h+5h^{\mu \nu}h_{\mu \nu}+h^{2}+\nabla ^{(0)}_{\mu}\nabla ^{(0)}_{\nu}h^{\mu \nu}-\nabla ^{(0)2}h+h^{\mu \nu}\nabla ^{(0)}_{\mu}\nabla ^{(0)}_{\nu}h-\frac{1}{4}\nabla ^{(0)}_{\mu}h\nabla ^{(0)\mu}h \\
 & -\nabla ^{(0)}_{\mu}h^{\mu \nu}\nabla ^{(0)\rho}h_{\nu \rho}+\nabla ^{(0)\mu}h\nabla ^{(0)}_{\nu}h_{\mu}^{~\nu}-2h^{\mu \nu}\nabla ^{(0)\rho}\nabla ^{(0)}_{\nu}h_{\mu \rho}+h^{\mu \nu}\nabla ^{(0)2}h_{\mu \nu} \\
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
 & +\sqrt{ -g^{(0)} }\left(\frac{3}{2}h^{2}-4h_{\mu \nu}h^{\mu \nu}+h^{\mu \nu}\nabla ^{(0)}_{\mu}\nabla ^{(0)}_{\nu}h-\frac{1}{4}\nabla ^{(0)}_{\mu}h\nabla ^{(0)\mu}h\right. \\
 & -\nabla ^{(0)}_{\mu}h^{\mu \nu}\nabla ^{(0)}_{\rho}h_{\nu}^{~\rho}+\nabla ^{(0)\mu}h\nabla ^{(0)}_{\nu}h_{\mu}^{~\nu}-2h^{\mu \nu}\nabla ^{(0)}_{\rho}\nabla ^{(0)}_{\nu}h_{\mu}^{~\rho}+\frac{1}{2}h\nabla ^{(0)}_{\mu}\nabla ^{(0)}_{\nu}h^{\mu \nu} \\
 & \left.+h^{\mu \nu}\nabla ^{(0)2}h_{\mu \nu}-\frac{1}{2}h\nabla ^{(0)2}h-\frac{1}{2}\nabla ^{(0)}_{\mu}h_{\nu \rho}\nabla ^{(0)\rho}h^{\mu \nu}+\frac{3}{4}\nabla ^{(0)}_{\rho}h_{\mu \nu}\nabla ^{(0)\rho}h^{\mu \nu}+\mathcal{O}(h^{3})\right)
\end{align}$$

take a variation

$$\begin{align}
\delta L & =\sqrt{ -g^{(0)} }(\nabla ^{(0)}_{\mu}\nabla ^{(0)}_{\nu}\delta h^{\mu \nu}-g^{(0)}_{\mu \nu}\nabla ^{(0)2}\delta h^{\mu \nu}) \\
 & +\sqrt{ -g^{(0)} }\left(\dots\right)
\end{align}$$

$$\begin{align}
\delta\left(h^{2} \right) & = 2g^{(0)}_{\mu \nu}h\delta h^{\mu \nu} \\
\delta(h_{\mu \nu}h^{\mu \nu}) & =2h_{\mu \nu}\delta h^{\mu \nu}
\end{align}$$

$$\begin{align}
\delta(h^{\mu \nu}\nabla ^{(0)}_{\mu}\nabla ^{(0)}_{\nu}h) & =\nabla ^{(0)}_{\mu}\nabla ^{(0)}_{\nu}h\delta h^{\mu \nu}+g^{(0)}_{\mu \nu}h^{\rho \sigma}\nabla ^{(0)}_{\rho}\nabla ^{(0)}_{\sigma}\delta h^{\mu \nu} \\
 & =\nabla _{\mu}^{(0)}\nabla ^{(0)}_{\nu}h\delta h^{\mu \nu}+g^{(0)}_{\mu \nu}\nabla ^{(0)}_{\rho}(h^{\rho \sigma}\nabla ^{(0)}_{\sigma}\delta h^{\mu \nu})-g^{(0)}_{\mu \nu}\nabla ^{(0)}_{\rho}h^{\rho \sigma}\nabla ^{(0)}_{\sigma}\delta h^{\mu \nu} \\
 & =\nabla ^{(0)}_{\mu}\nabla ^{(0)}_{\nu}h\delta h^{\mu \nu}+\nabla ^{(0)}_{\rho}(g^{(0)}_{\mu \nu}h^{\rho \sigma}\nabla ^{(0)}_{\sigma}\delta h^{\mu \nu}-g^{(0)}_{\mu \nu}\nabla ^{(0)}_{\sigma}h^{\rho \sigma}\delta h^{\mu \nu})+g^{(0)}_{\mu \nu}\nabla ^{(0)}_{\rho}\nabla ^{(0)}_{\sigma}h^{\rho \sigma}\delta h^{\mu \nu}
\end{align}$$

$$\begin{align}
\delta(\nabla ^{(0)}_{\mu}h\nabla ^{(0)\mu}h) & =2g^{(0)}_{\mu \nu}\nabla ^{(0)\rho}h\nabla ^{(0)}_{\rho}\delta h^{\mu \nu} \\
 & =2\nabla ^{(0)}_{\rho}(g^{(0)}_{\mu \nu}\nabla ^{(0)\rho}h\delta h^{\mu \nu}))-2g^{(0)}_{\mu \nu}\nabla ^{(0)2}h\delta h^{\mu \nu}
\end{align}$$

$$\begin{align}
\delta(\nabla ^{(0)}_{\mu}h^{\mu \nu}\nabla ^{(0)}_{\rho}h_{\nu}^{~\rho}) & =2\nabla ^{(0)}_{\mu}\delta h^{\mu \nu}\nabla ^{(0)}_{\rho}h_{\nu}^{~\rho} \\
 & =2\nabla ^{(0)}_{\mu}(\nabla ^{(0)}_{\rho}h_{\nu}^{~\rho}\delta h^{\mu \nu})-2\nabla ^{(0)}_{\mu}\nabla ^{(0)}_{\rho}h_{\nu}^{~\rho}\delta h^{\mu \nu}
\end{align}$$

$$\begin{align}
\delta(\nabla ^{(0)}_{\mu}h\nabla ^{(0)}_{\nu}h^{\mu \nu}) & =g^{(0)}_{\mu \nu}\nabla ^{(0)}_{\rho}\delta h^{\mu \nu}\nabla ^{(0)}_{\sigma}h^{\rho \sigma}+\nabla ^{(0)}_{\mu}h\nabla ^{(0)}_{\nu}\delta h^{\mu \nu} \\
 & =\nabla ^{(0)}_{\rho}(g^{(0)}_{\mu \nu}\nabla ^{(0)}_{\sigma}h^{\rho \sigma}\delta h^{\mu \nu})-g^{(0)}_{\mu \nu}\nabla ^{(0)}_{\rho}\nabla ^{(0)}_{\sigma}h^{\rho \sigma}\delta h^{\mu \nu}+\nabla ^{(0)}_{\mu}(\nabla ^{(0)}_{\nu}h\delta h^{\mu \nu})-\nabla ^{(0)}_{\mu}\nabla ^{(0)}_{\nu}h\delta h^{\mu \nu}
\end{align}$$

$$\begin{align}
\delta(h^{\mu \nu}\nabla ^{(0)}_{\rho}\nabla ^{(0)}_{\nu}h_{\mu}^{~\rho}) & =\nabla ^{(0)}_{\rho}\nabla ^{(0)}_{\nu}h_{\mu}^{~\rho}\delta h^{\mu \nu}+h_{\mu}^{~\rho}\nabla ^{(0)}_{\nu}\nabla ^{(0)}_{\rho}\delta h^{\mu\nu} \\
 & =\nabla ^{(0)}_{\rho}\nabla ^{(0)}_{\nu}h_{\mu}^{~\rho}\delta h^{\mu \nu}+\nabla ^{(0)}_{\nu}(h_{\mu}^{~\rho}\nabla ^{(0)}_{\rho}\delta h^{\mu \nu})-\nabla ^{(0)}_{\nu}h_{\mu}^{~\rho}\nabla ^{(0)}_{\rho}\delta h^{\mu \nu} \\
 & =\nabla ^{(0)}_{\rho}\nabla ^{(0)}_{\nu}h_{\mu}^{~\rho}\delta h^{\mu \nu}+\nabla ^{(0)}_{\nu}(h_{\mu}^{~\rho}\nabla ^{(0)}_{\rho}\delta h^{\mu \nu})-\nabla ^{(0)}_{\rho}(\nabla ^{(0)}_{\nu}h_{\mu}^{~\rho}\delta h^{\mu \nu})+\nabla ^{(0)}_{\rho}\nabla ^{(0)}_{\nu}h_{\mu}^{~\rho}\delta h^{\mu \nu}
\end{align}$$

$$\begin{align}
\delta\left( h\nabla ^{(0)}_{\mu}\nabla ^{(0)}_{\nu}h^{\mu \nu} \right) & =g^{(0)}_{\mu \nu}\nabla ^{(0)}_{\rho}\nabla ^{(0)}_{\sigma}h^{\rho \sigma}\delta h^{\mu \nu}+h\nabla ^{(0)}_{\mu}\nabla ^{(0)}_{\nu}\delta h^{\mu \nu} \\
 & =g^{(0)}_{\mu \nu}\nabla ^{(0)}_{\rho}\nabla ^{(0)}_{\sigma}h^{\rho \sigma}\delta h^{\mu \nu}+\nabla ^{(0)}_{\mu}(h\nabla ^{(0)}_{\nu}\delta h^{\mu \nu})-\nabla ^{(0)}_{\mu}(\nabla ^{(0)}_{\nu}h\delta h^{\mu \nu})+\nabla ^{(0)}_{\mu}\nabla ^{(0)}_{\nu}h\delta h^{\mu \nu}
\end{align}$$

$$\begin{align}
\delta(h^{\mu \nu}\nabla ^{(0)2}h_{\mu \nu}) & =\nabla ^{(0)2}h_{\mu \nu}\delta h^{\mu \nu}+h_{\mu \nu}\nabla ^{(0)}_{\rho}\nabla ^{(0)\rho}\delta h^{\mu \nu} \\
 & =\nabla ^{(0)2}h_{\mu \nu}\delta h^{\mu \nu}+\nabla ^{(0)}_{\rho}(h_{\mu \nu}\nabla ^{(0)\rho}\delta h^{\mu \nu}-\nabla ^{(0)\rho}h_{\mu \nu}\delta h^{\mu \nu})+\nabla ^{(0)2}h_{\mu \nu}\delta h^{\mu \nu}
\end{align}$$

$$\begin{align}
\delta(h\nabla ^{(0)2}h) & =g^{(0)}_{\mu \nu}\nabla ^{(0)2}h\delta h^{\mu \nu}+g^{(0)}_{\mu \nu}h\nabla ^{(0)2}\delta h^{\mu \nu} \\
 & =2g^{(0)}_{\mu \nu}\nabla ^{(0)2}h\delta h^{\mu \nu}+\nabla ^{(0)}_{\rho}(g^{(0)}_{\mu \nu}h\nabla ^{(0)\rho}\delta h^{\mu \nu}-g^{(0)}_{\mu \nu}\nabla ^{(0)\rho}h\delta h^{\mu \nu})
\end{align}$$

$$\begin{align}
\delta(\nabla ^{(0)}_{\mu}h_{\nu \rho}\nabla ^{(0)\rho}h^{\mu \nu}) & =2\nabla ^{(0)}_{\mu}h_{\nu \rho}\nabla ^{(0)\rho}\delta h^{\mu \nu} \\
 & =2\nabla ^{(0)\rho}(\nabla ^{(0)}_{\mu}h_{\nu \rho}\delta h^{\mu \nu})-2\nabla ^{(0)\rho}\nabla ^{(0)}_{\mu}h_{\nu \rho}\delta h^{\mu \nu}
\end{align}$$

$$\begin{align}
\delta(\nabla ^{(0)}_{\rho}h_{\mu \nu}\nabla ^{(0)\rho}h^{\mu \nu}) & =2\nabla ^{(0)}_{\rho}h_{\mu \nu}\nabla ^{(0)\rho}\delta h^{\mu \nu} \\
 & =2\nabla ^{(0)}_{\rho}(\nabla ^{(0)\rho}h_{\mu \nu}\delta h^{\mu \nu})-2\nabla ^{(0)2}h_{\mu \nu}\delta h^{\mu \nu}
\end{align}$$

thus the variation of the Lagrangian is


$$\begin{align}
 & \sqrt{ -g^{(0)} }\delta h^{\mu \nu}\left( g^{(0)}_{\mu \nu}h-2h_{\mu \nu}+\frac{1}{2}\nabla ^{(0)2}h_{\mu \nu}-\frac{1}{2}g^{(0)}_{\mu \nu}\nabla ^{(0)2}h\right)
\end{align}$$



$$\begin{align}
\delta L & =\sqrt{ -g^{(0)} }(\nabla ^{(0)}_{\mu}\nabla ^{(0)}_{\nu}\delta h^{\mu \nu}-g^{(0)}_{\mu \nu}\nabla ^{(0)2}\delta h^{\mu \nu}) \\
 & +3\sqrt{ -g^{(0)} }g^{(0)}_{\mu \nu}h\delta h^{\mu \nu}-8\sqrt{ -g^{(0)} }h_{\mu \nu}\delta h^{\mu \nu} \\
 & +\sqrt{ -g^{(0)} }\left(\nabla ^{(0)}_{\mu}\nabla ^{(0)}_{\nu}h\delta h^{\mu \nu}+\nabla ^{(0)}_{\rho}(g^{(0)}_{\mu \nu}h^{\rho \sigma}\nabla ^{(0)}_{\sigma}\delta h^{\mu \nu}-g^{(0)}_{\mu \nu}\nabla ^{(0)}_{\sigma}h^{\rho \sigma}\delta h^{\mu \nu})+g^{(0)}_{\mu \nu}\nabla ^{(0)}_{\rho}\nabla ^{(0)}_{\sigma}h^{\rho \sigma}\delta h^{\mu \nu}\right) \\
 & -\frac{1}{4}\sqrt{ -g^{(0)} }\left(2\nabla ^{(0)}_{\rho}(g^{(0)}_{\mu \nu}\nabla ^{(0)\rho}h\delta h^{\mu \nu})-2g^{(0)}_{\mu \nu}\nabla ^{(0)2}h\delta h^{\mu \nu}\right) \\
 & -\sqrt{ -g^{(0)} }\left(2\nabla ^{(0)}_{\mu}(\nabla ^{(0)}_{\rho}h_{\nu}^{~\rho}\delta h^{\mu \nu})-2\nabla ^{(0)}_{\mu}\nabla ^{(0)}_{\rho}h_{\nu}^{~\rho}\delta h^{\mu \nu}\right) \\
 & +\sqrt{ -g^{(0)} }(\nabla ^{(0)}_{\rho}(g^{(0)}_{\mu \nu}\nabla ^{(0)}_{\sigma}h^{\rho \sigma}\delta h^{\mu \nu})-g^{(0)}_{\mu \nu}\nabla ^{(0)}_{\rho}\nabla ^{(0)}_{\sigma}h^{\rho \sigma}\delta h^{\mu \nu}+\nabla ^{(0)}_{\mu}(\nabla ^{(0)}_{\nu}h\delta h^{\mu \nu})-\nabla ^{(0)}_{\mu}\nabla ^{(0)}_{\nu}h\delta h^{\mu \nu}) \\
 & -2\sqrt{ -g^{(0)} }\left(\nabla ^{(0)}_{\rho}\nabla ^{(0)}_{\nu}h_{\mu}^{~\rho}\delta h^{\mu \nu}+\nabla ^{(0)}_{\nu}(h_{\mu}^{~\rho}\nabla ^{(0)}_{\rho}\delta h^{\mu \nu})-\nabla ^{(0)}_{\rho}(\nabla ^{(0)}_{\nu}h_{\mu}^{~\rho}\delta h^{\mu \nu})+\nabla ^{(0)}_{\rho}\nabla ^{(0)}_{\nu}h_{\mu}^{~\rho}\delta h^{\mu \nu}\right) \\
 & +\frac{1}{2}(g^{(0)}_{\mu \nu}\nabla ^{(0)}_{\rho}\nabla ^{(0)}_{\sigma}h^{\rho \sigma}\delta h^{\mu \nu}+\nabla ^{(0)}_{\mu}(h\nabla ^{(0)}_{\nu}\delta h^{\mu \nu})-\nabla ^{(0)}_{\mu}(\nabla ^{(0)}_{\nu}h\delta h^{\mu \nu})+\nabla ^{(0)}_{\mu}\nabla ^{(0)}_{\nu}h\delta h^{\mu \nu}) \\
 & +(\nabla ^{(0)2}h_{\mu \nu}\delta h^{\mu \nu}+\nabla ^{(0)}_{\rho}(h_{\mu \nu}\nabla ^{(0)\rho}\delta h^{\mu \nu}-\nabla ^{(0)\rho}h_{\mu \nu}\delta h^{\mu \nu})+\nabla ^{(0)2}h_{\mu \nu}\delta h^{\mu \nu}) \\
 & -\frac{1}{2}\left(2g^{(0)}_{\mu \nu}\nabla ^{(0)2}h\delta h^{\mu \nu}+\nabla ^{(0)}_{\rho}(g^{(0)}_{\mu \nu}h\nabla ^{(0)\rho}\delta h^{\mu \nu}-g^{(0)}_{\mu \nu}\nabla ^{(0)\rho}h\delta h^{\mu \nu})\right) \\
 & -\frac{1}{2}(2\nabla ^{(0)\rho}(\nabla ^{(0)}_{\mu}h_{\nu \rho}\delta h^{\mu \nu})-2\nabla ^{(0)\rho}\nabla ^{(0)}_{\mu}h_{\nu \rho}\delta h^{\mu \nu}) \\
 & +\frac{3}{4}(2\nabla ^{(0)}_{\rho}(\nabla ^{(0)\rho}h_{\mu \nu}\delta h^{\mu \nu})-2\nabla ^{(0)2}h_{\mu \nu}\delta h^{\mu \nu})
\end{align}$$

for the moment I cannot derive the eom from the Lagrangian...

---

the linearized eom reads

$$\begin{align}
-h_{\mu \nu}-\frac{1}{2}\nabla ^{(0)2}h_{\mu \nu}-\frac{1}{2}g^{(0)}_{\mu \nu}\nabla ^{(0)}_{\rho}\nabla ^{(0)}_{\sigma}h^{\rho \sigma}+\frac{1}{2}g^{(0)}_{\mu \nu}\nabla ^{(0)2}h+\frac{1}{2}\nabla ^{(0)}_{\mu}\nabla ^{(0)}_{\rho}h_{\nu}^{~\rho}+\frac{1}{2}\nabla ^{(0)}_{\nu}\nabla ^{(0)}_{\rho}h_{\mu}^{~\rho}-\frac{1}{2}\nabla ^{(0)}_{\mu}\nabla ^{(0)}_{\nu}h=0
\end{align}$$

take a trace, we have

$$\begin{align}
\implies -h +\frac{1}{2}\nabla ^{(0)2}h-\frac{1}{2}\nabla ^{(0)}_{\mu}\nabla ^{(0)}_{\nu}h^{\mu \nu} & =0
\end{align}$$

plug it back to the eom, we get

$$\begin{align}
-h_{\mu \nu}+g^{(0)}_{\mu \nu}h-\frac{1}{2}\nabla ^{(0)2}h_{\mu \nu}+\frac{1}{2}\nabla ^{(0)}_{\mu}\nabla ^{(0)}_{\rho}h_{\nu}^{~\rho}+\frac{1}{2}\nabla ^{(0)}_{\nu}\nabla ^{(0)}_{\rho}h_{\mu}^{~\rho}-\frac{1}{2}\nabla ^{(0)}_{\mu}\nabla ^{(0)}_{\nu}h & =0 \\
\implies -h_{\mu \nu}+g^{(0)}_{\mu \nu}h-\frac{1}{2}\nabla ^{(0)2}h_{\mu \nu}+\frac{1}{2}\nabla ^{(0)}_{(\mu}(\nabla ^{(0)}_{\rho}h_{\nu)}^{~\rho}-\frac{1}{2}\nabla ^{(0)}_{\nu)}h) & =0
\end{align}$$

if we impose the de Donder gauge condition

$$\begin{align}
\nabla ^{(0)}_{\rho}h_{\nu}^{~\rho}-\frac{1}{2}\nabla ^{(0)}_{\nu}h & =0
\end{align}$$

the last term vanishes, leading to

$$\begin{align}
-h_{\mu \nu}+g^{(0)}_{\mu \nu}h-\frac{1}{2}\nabla ^{(0)2}h_{\mu \nu} & =0
\end{align}$$

---