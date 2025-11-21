define

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
R^{(0)}_{\mu \nu \rho \sigma} & =g^{(0)}_{\mu \sigma}g^{(0)}_{\nu \rho}-g^{(0)}_{\mu \rho}g^{(0)}_{\nu \sigma} \\
R^{(0)}_{\mu \nu} & =-2g^{(0)}_{\mu \nu} \\
\end{align}$$