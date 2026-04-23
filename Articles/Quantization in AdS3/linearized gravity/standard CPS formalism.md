in this note we will try to derive the eom

$$\begin{align}
-h_{\mu \nu}-\frac{1}{2}\nabla ^{(0)2}h_{\mu \nu}-\frac{1}{2}g^{(0)}_{\mu \nu}\nabla ^{(0)}_{\rho}\nabla ^{(0)}_{\sigma}h^{\rho \sigma}+\frac{1}{2}g^{(0)}_{\mu \nu}\nabla ^{(0)2}h+\frac{1}{2}\nabla ^{(0)}_{\mu}\nabla ^{(0)}_{\rho}h_{\nu}^{~\rho}+\frac{1}{2}\nabla ^{(0)}_{\nu}\nabla ^{(0)}_{\rho}h_{\mu}^{~\rho}-\frac{1}{2}\nabla ^{(0)}_{\mu}\nabla ^{(0)}_{\nu}h=0
\end{align}$$

from the bulk Lagrangian of linearized gravity in AdS3

$$\begin{align}
L & =\sqrt{ -g }(R+2) \\
 & =\sqrt{ -g^{(0)} }\left( -4 \right)+\sqrt{ -g^{(0)} }(\nabla ^{(0)}_{\mu}\nabla ^{(0)}_{\nu}h^{\mu \nu}-\nabla ^{(0)2}h) \\
 & +\sqrt{ -g^{(0)} }\left(\frac{3}{2}h^{2}-4h_{\mu \nu}h^{\mu \nu}+h^{\mu \nu}\nabla ^{(0)}_{\mu}\nabla ^{(0)}_{\nu}h-\frac{1}{4}\nabla ^{(0)}_{\mu}h\nabla ^{(0)\mu}h\right. \\
 & -\nabla ^{(0)}_{\mu}h^{\mu \nu}\nabla ^{(0)}_{\rho}h_{\nu}^{~\rho}+\nabla ^{(0)\mu}h\nabla ^{(0)}_{\nu}h_{\mu}^{~\nu}-2h^{\mu \nu}\nabla ^{(0)}_{\rho}\nabla ^{(0)}_{\nu}h_{\mu}^{~\rho}+\frac{1}{2}h\nabla ^{(0)}_{\mu}\nabla ^{(0)}_{\nu}h^{\mu \nu} \\
 & \left.+h^{\mu \nu}\nabla ^{(0)2}h_{\mu \nu}-\frac{1}{2}h\nabla ^{(0)2}h-\frac{1}{2}\nabla ^{(0)}_{\mu}h_{\nu \rho}\nabla ^{(0)\rho}h^{\mu \nu}+\frac{3}{4}\nabla ^{(0)}_{\rho}h_{\mu \nu}\nabla ^{(0)\rho}h^{\mu \nu}+\mathcal{O}(h^{3})\right)
\end{align}$$

where we defined

$$\begin{align}
h & =g^{(0)\mu \nu}h_{\mu \nu} 
\end{align}$$
take a variation of each term

1. $\displaystyle{\mathcal{L}_{a}=\frac{3}{2}\sqrt{ -g^{(0)} }h^{2}}$
$$\begin{align}
\delta\mathcal{L}_{a} & =3\sqrt{ -g^{(0)} }hg^{(0)}_{\mu \nu}\delta h^{\mu \nu}
\end{align}$$
2. $\displaystyle{\mathcal{L}_{b}=-4\sqrt{ -g^{(0)} }h_{\mu \nu}h^{\mu \nu}}$
$$\begin{align}
\delta \mathcal{L}_{b} & =-8\sqrt{ -g^{(0)} }h_{\mu \nu}\delta h^{\mu \nu}
\end{align}$$
3. $\displaystyle{\mathcal{L}_{c}=\sqrt{ -g^{(0)} }h^{\mu \nu}\nabla ^{(0)}_{\mu}\nabla ^{(0)}_{\nu}h}$
$$\begin{align}
\delta \mathcal{L}_{c} & =\sqrt{ -g^{(0)} }(\nabla ^{(0)}_{\mu}\nabla ^{(0)}_{\nu}h\delta h^{\mu \nu}+g^{(0)}_{\mu \nu}h^{\rho \sigma}\nabla _{\rho}^{(0)}\nabla ^{(0)}_{\sigma}\delta h^{\mu \nu}) \\
 & =\sqrt{ -g^{(0)} }(\nabla ^{(0)}_{\mu}\nabla ^{(0)}h+g^{(0)}_{\mu \nu}\nabla ^{(0)}_{\sigma}\nabla ^{(0)}_{\rho}h^{\rho \sigma})\delta h^{\mu \nu}+\sqrt{ -g^{(0)} }\nabla ^{(0)}_{\rho}(g^{(0)}_{\mu \nu}h^{\rho \sigma}\nabla ^{(0)}_{\sigma}\delta h^{\mu \nu}-g^{(0)}_{\mu \nu}\nabla ^{(0)}_{\sigma}h^{\rho \sigma}\delta h^{\mu \nu})
\end{align}$$
4. $\displaystyle{\mathcal{L}_{d}=-\frac{1}{4}\sqrt{ -g^{(0)} }\nabla ^{(0)}_{\mu}h\nabla ^{(0)\mu}h}$
$$\begin{align}
\delta \mathcal{L}_{d} & =-\frac{1}{2}\sqrt{ -g^{(0)} }g^{(0)}_{\mu \nu}\nabla ^{(0)\rho}h\nabla ^{(0)}_{\rho}\delta h^{\mu \nu} \\
 & =\frac{1}{2}\sqrt{ -g^{(0)} }g^{(0)}_{\mu \nu}\nabla ^{(0)2}h\delta h^{\mu \nu}-\frac{1}{2}\sqrt{ -g^{(0)} }\nabla ^{(0)}_{\rho}(g^{(0)}_{\mu \nu}\nabla ^{(0)\rho}\delta h^{\mu \nu})
\end{align}$$
5. $\displaystyle{\mathcal{L}_{e}=-\sqrt{ -g^{(0)} }\nabla ^{(0)}_{\mu}h^{\mu \nu}\nabla ^{(0)}_{\rho}h_{\nu}^{~\rho}}$
$$\begin{align}
\delta \mathcal{L}_{e} & =-2\sqrt{ -g^{(0)} }\nabla ^{(0)}_{\rho}h_{\nu}^{~\rho}\nabla ^{(0)}_{\mu}\delta h^{\mu \nu} \\
 & =2\sqrt{ -g^{(0)} }\nabla ^{(0)}_{\mu}\nabla ^{(0)}_{\rho}h_{\nu}^{~\rho}\delta h^{\mu \nu}-2\sqrt{ -g^{(0)} }\nabla ^{(0)}_{\mu}(\nabla ^{(0)}_{\rho}h_{\nu}^{~\rho}\delta h^{\mu \nu})
\end{align}$$
6. $\displaystyle{\mathcal{L}_{f}=\sqrt{ -g^{(0)} }\nabla ^{(0)\mu}h\nabla ^{(0)}_{\nu}h_{\mu}^{~\nu}}$
$$\begin{align}
\delta \mathcal{L}_{f} & =\sqrt{ -g^{(0)} }(g^{(0)}_{\mu \nu}\nabla ^{(0)\rho}\delta h^{\mu \nu}\nabla ^{(0)}_{\sigma}h_{\rho}^{~\sigma}+\nabla ^{(0)}_{\mu}h\nabla ^{(0)}_{\nu}\delta h^{\mu \nu}) \\
 & =\sqrt{ -g^{(0)} }(-g^{(0)}_{\mu \nu}\nabla ^{(0)}_{\rho}\nabla ^{(0)}_{\sigma}h^{\rho \sigma}-\nabla ^{(0)}_{\mu}\nabla ^{(0)}_{\nu}h)\delta h^{\mu \nu} \\
 & +\sqrt{ -g^{(0)} }\nabla ^{(0)}_{\rho}(g^{(0)}_{\mu \nu}\nabla ^{(0)}_{\sigma}h^{\rho \sigma}\delta h^{\mu \nu}+\delta ^{\rho}_{\nu}\nabla ^{(0)}_{\mu}h\delta h^{\mu \nu})
\end{align}$$
7. $\displaystyle{\mathcal{L}_{g}=-2\sqrt{ -g^{(0)} }h^{\mu \nu}\nabla ^{(0)}_{\rho}\nabla ^{(0)}_{\nu}h_{\mu}^{~\rho}}$
$$\begin{align}
\delta \mathcal{L}_{g} & =-2\sqrt{ -g^{(0)} }(\delta h^{\mu \nu}\nabla ^{(0)}_{\rho}\nabla ^{(0)}_{\nu}h_{\mu}^{~\rho}+h_{\nu}^{~\rho}\nabla ^{(0)}_{\mu}\nabla ^{(0)}_{\rho}\delta h^{\mu\nu}) \\
 & =-2\sqrt{ -g^{(0)} }(\nabla ^{(0)}_{\rho}\nabla ^{(0)}_{\nu}h_{\mu}^{~\rho}+\nabla ^{(0)}_{\rho}\nabla ^{(0)}_{\mu}h_{\nu}^{~\rho})\delta h^{\mu \nu} \\
 & -2\sqrt{ -g^{(0)} }\nabla ^{(0)}_{\rho}(\delta ^{\rho}_{\mu}h_{\nu}^{~\sigma}\nabla ^{(0)}_{\sigma}\delta h^{\mu \nu}-\nabla ^{(0)}_{\mu}h_{\nu}^{~\rho}\delta h^{\mu \nu})
\end{align}$$
8. $\displaystyle{\mathcal{L}_{h}=\frac{1}{2}\sqrt{ -g^{(0)} }h\nabla _{\mu}^{(0)}\nabla ^{(0)}_{\nu}h^{\mu \nu}}$
$$\begin{align}
\delta \mathcal{L}_{h} & =\frac{1}{2}\sqrt{ -g^{(0)} }(g^{(0)}_{\mu \nu}\delta h^{\mu \nu}\nabla ^{(0)}_{\rho}\nabla ^{(0)}_{\sigma}h^{\rho \sigma}+h\nabla ^{(0)}_{\mu}\nabla ^{(0)}_{\nu}\delta h^{\mu \nu}) \\
 & =\frac{1}{2}\sqrt{ -g^{(0)} }(g^{(0)}_{\mu \nu}\nabla ^{(0)}_{\rho}\nabla ^{(0)}_{\sigma}h^{\rho \sigma}+\nabla ^{(0)}_{\mu}\nabla ^{(0)}_{\nu}h)\delta h^{\mu \nu} \\
 & +\frac{1}{2}\sqrt{ -g^{(0)} }\nabla ^{(0)}_{\rho}(\delta ^{\rho}_{\mu}h\nabla ^{(0)}_{\nu}\delta h^{\mu \nu}-\delta ^{\rho}_{\nu}\nabla ^{(0)}_{\mu}h\delta h^{\mu \nu})
\end{align}$$
9. $\displaystyle{\mathcal{L}_{i}=\sqrt{ -g^{(0)} }h^{\mu \nu}\nabla ^{(0)2}h_{\mu \nu}}$
$$\begin{align}
\delta \mathcal{L}_{i} & =\sqrt{ -g^{(0)} }\nabla ^{(0)2}h_{\mu \nu}\delta h^{\mu \nu}+\sqrt{ -g^{(0)} }g^{(0)\rho \sigma}h_{\mu \nu}\nabla ^{(0)}_{\rho}\nabla ^{(0)}_{\sigma}\delta h^{\mu \nu} \\
 & =2\sqrt{ -g^{(0)} }\nabla ^{(0)2}h_{\mu \nu}\delta h^{\mu \nu}+\sqrt{ -g^{(0)} }\nabla _{\rho}^{(0)}(g^{(0)\rho \sigma}(h_{\mu \nu}\nabla ^{(0)}_{\sigma}\delta h^{\mu \nu}-\nabla ^{(0)}_{\sigma}h_{\mu \nu}\delta h^{\mu \nu}))
\end{align}$$
10. $\displaystyle{\mathcal{L}_{j}=-\frac{1}{2}\sqrt{ -g^{(0)} }h\nabla ^{(0)2}h}$
$$\begin{align}
\delta \mathcal{L}_{i} & =-\frac{1}{2}\sqrt{ -g^{(0)} }g^{(0)}_{\mu \nu}\nabla ^{(0)2}h\delta h^{\mu \nu}-\frac{1}{2}\sqrt{ -g^{(0)} }g^{(0)}_{\mu \nu}h\nabla ^{(0)2}\delta h^{\mu \nu} \\
 & =-\sqrt{ -g^{(0)} }g^{(0)}_{\mu \nu}\nabla ^{(0)2}h\delta h^{\mu \nu}-\frac{1}{2}\sqrt{ -g^{(0)} }\nabla ^{(0)}_{\rho}(g^{(0)}_{\mu \nu}g^{(0)\rho \sigma}(h\nabla ^{(0)}_{\sigma}\delta h^{\mu \nu}-\nabla ^{(0)}_{\sigma}h\delta h^{\mu \nu}))
\end{align}$$
11. $\displaystyle{\mathcal{L}_{k}=-\frac{1}{2}\sqrt{ -g^{(0)} }\nabla ^{(0)}_{\mu}h_{\nu \rho}\nabla ^{(0)\rho}h^{\mu \nu}}$
$$\begin{align}
\delta \mathcal{L}_{k} & =-\frac{1}{2}\sqrt{ -g^{(0)} }\nabla ^{(0)}_{\mu}\delta h_{\nu \rho}\nabla ^{(0)\rho}h^{\mu \nu}-\frac{1}{2}\sqrt{ -g^{(0)} }\nabla ^{(0)}_{\mu}h_{\nu \rho}\nabla ^{(0)\rho}\delta h^{\mu \nu} \\
 & =\frac{1}{2}\sqrt{ -g^{0} }\left( \nabla ^{(0)\rho}\nabla ^{(0)}_{\mu}h_{\nu \rho}+\nabla ^{(0)\rho}\nabla ^{(0)}_{\nu}h_{\mu \rho} \right)\delta h^{\mu \nu}-\frac{1}{2}\sqrt{ -g^{(0)} }\nabla ^{(0)\rho}(\nabla ^{(0)}_{\mu}h_{\nu \rho}\delta h^{\mu \nu}+\nabla ^{(0)}_{\nu}h_{\mu \rho}\delta h^{\mu \nu})
\end{align}$$
12. $\displaystyle{\mathcal{L}_{l}=\frac{3}{4}\sqrt{ -g^{(0)} }\nabla ^{(0)}_{\rho}h_{\mu \nu}\nabla ^{(0)\rho}h^{\mu \nu}}$
$$\begin{align}
\delta \mathcal{L}_{l} & =\frac{3}{2}\sqrt{ -g^{(0)} }\nabla ^{(0)}_{\rho}h_{\mu \nu}\nabla ^{(0)\rho}\delta h^{\mu \nu} \\
 & =-\frac{3}{2}\sqrt{ -g^{(0)} }\nabla ^{(0)2}h_{\mu \nu}\delta h^{\mu \nu}+\frac{3}{2}\sqrt{ -g^{(0)} }\nabla ^{(0)}_{\rho}(\nabla ^{(0)\rho}h^{\mu \nu}\delta h_{\mu \nu})
\end{align}$$

as a summary

| index | bulk $\displaystyle{\sqrt{ -g^{(0)} }\delta h^{\mu \nu}(\dots)}$                                                                                 | boundary $\displaystyle{\sqrt{ -g^{(0)} }\nabla ^{(0)}_{\rho}(\dots)}$                                                                                  |
| ----- | ------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------------- |
| a     | $3hg^{(0)}_{\mu\nu}$                                                                                                                             | $\displaystyle{0}$                                                                                                                                      |
| b     | $\displaystyle{-8h_{\mu \nu}}$                                                                                                                   | $\displaystyle{0}$                                                                                                                                      |
| c     | $\displaystyle{\nabla ^{(0)}_{\mu}\nabla ^{(0)}_{\nu}h+g^{(0)}_{\mu \nu}\nabla ^{(0)}_{\rho}\nabla ^{(0)}_{\sigma}h^{\rho \sigma}}$              | $\displaystyle{g^{(0)}_{\mu \nu}(h^{\rho \sigma}\nabla ^{(0)}_{\sigma}\delta h^{\mu \nu}-\nabla ^{(0)}_{\sigma}h^{\rho \sigma}\delta h^{\mu \nu})}$     |
| d     | $\displaystyle{\frac{1}{2}g^{(0)}_{\mu \nu}\nabla ^{(0)2}h}$                                                                                     | $\displaystyle{-\frac{1}{2}g^{(0)}_{\mu \nu}\nabla ^{(0)\rho}\delta h^{\mu \nu}}$                                                                       |
| e     | $\displaystyle{\nabla ^{(0)}_{\mu}\nabla ^{(0)}_{\rho}h_{\nu}^{~\rho}+\nabla ^{(0)}_{\nu}\nabla ^{(0)}_{\rho}h_{\mu}^{~\rho}}$                   | $\displaystyle{-\delta ^{\rho}_{\mu}\nabla ^{(0)}_{\sigma}h_{\nu}^{~\sigma}-\delta ^{\rho}_{\nu}\nabla ^{(0)}_{\sigma}h_{\mu}^{~\sigma}}$               |
| f     | $\displaystyle{-g^{(0)}_{\mu \nu}\nabla ^{(0)}_{\rho}\nabla ^{(0)}_{\sigma}h^{\rho \sigma}-\nabla ^{(0)}_{\mu}\nabla ^{(0)}_{\nu}h}$             | $\displaystyle{g^{(0)}_{\mu \nu}\nabla ^{(0)}_{\sigma}h^{\rho \sigma}\delta h^{\mu \nu}+\delta ^{\rho}_{\nu}\nabla ^{(0)}_{\mu}h\delta h^{\mu \nu}}$    |
| g     | $\displaystyle{-2(\nabla ^{(0)}_{\rho}\nabla ^{(0)}_{\nu}h_{\mu}^{~\rho}+\nabla ^{(0)}_{\rho}\nabla ^{(0)}_{\mu}h_{\nu}^{~\rho})}$               | $\displaystyle{-2(\delta ^{\rho}_{\mu}h_{\nu}^{~\sigma}\nabla ^{(0)}_{\sigma}\delta h^{\mu \nu}-\nabla ^{(0)}_{\mu}h_{\nu}^{~\rho}\delta h^{\mu \nu})}$ |
| h     | $\displaystyle{\frac{1}{2}(g^{(0)}_{\mu \nu}\nabla ^{(0)}_{\rho}\nabla ^{(0)}_{\sigma}h^{\rho \sigma}+\nabla ^{(0)}_{\mu}\nabla ^{(0)}_{\nu}h)}$ | $\displaystyle{\frac{1}{2}\delta ^{\rho}_{\mu}(h\nabla ^{(0)}_{\nu}\delta h^{\mu \nu}-\nabla ^{(0)}_{\nu}h\delta h^{\mu \nu})}$                         |
| i     | $\displaystyle{2\nabla ^{(0)2}h_{\mu \nu}}$                                                                                                      | $\displaystyle{g^{(0)\rho \sigma}(h_{\mu \nu}\nabla ^{(0)}_{\sigma}\delta h^{\mu \nu}-\nabla ^{(0)}_{\sigma}h_{\mu \nu}\delta h^{\mu \nu})}$            |
| j     | $\displaystyle{-g^{(0)}_{\mu \nu}\nabla ^{(0)2}h}$                                                                                               | $\displaystyle{-\frac{1}{2}g^{(0)}_{\mu \nu}g^{(0)\rho \sigma}(h\nabla ^{(0)}_{\sigma}\delta h^{\mu \nu}-\nabla ^{(0)}_{\sigma}h\delta h^{\mu \nu})}$   |
| k     | $\displaystyle{\frac{1}{2}(\nabla ^{(0)\rho}\nabla ^{(0)}_{\mu}h_{\nu \rho}+\nabla ^{(0)\rho}\nabla ^{(0)}_{\nu}h_{\mu \rho})}$                  | $\displaystyle{-\frac{1}{2}(\nabla ^{(0)}_{\mu}h_{\nu}^{~\rho}+\nabla ^{(0)}_{\nu}h_{\mu}^{~\rho})\delta h^{\mu\nu}}$                                   |
| l     | $\displaystyle{-\frac{3}{2}\nabla ^{(0)2}h_{\mu \nu}}$                                                                                           | $\displaystyle{\frac{3}{2}\nabla ^{(0)\rho}h^{\mu \nu}\delta h_{\mu \nu}}$                                                                              |

then

$$\begin{align}
\delta \mathcal{L} & =\sqrt{ -g^{(0)} }E_{\mu \nu}\delta h^{\mu \nu}+\sqrt{ -g^{(0)} }\nabla ^{(0)}_{\rho}\Theta ^{\rho}
\end{align}$$

where

$$\begin{align}
E_{\mu \nu} & =3hg^{(0)}_{\mu \nu}-8h_{\mu \nu}+\frac{1}{2}\nabla ^{(0)}_{\mu}\nabla ^{(0)}_{\nu}h \\
 & -\frac{1}{2}\nabla ^{(0)}_{\mu}\nabla ^{(0)}_{\rho}h_{\nu}^{~\rho}-\frac{1}{2}\nabla ^{(0)}_{\nu}\nabla ^{(0)}_{\rho}h_{\mu}^{~\rho} \\
 & -\frac{3}{2}[\nabla ^{(0)}_{\rho},\nabla ^{(0)}_{\nu}]h_{\mu}^{~\rho}-\frac{3}{2}[\nabla ^{(0)}_{\rho},\nabla ^{(0)}_{\mu}]h_{\nu}^{~\rho}+\frac{1}{2}g^{(0)}_{\mu \nu}\nabla ^{(0)}_{\rho}\nabla ^{(0)}_{\sigma}h^{\rho \sigma} \\
 & +\frac{1}{2}\nabla ^{(0)2}h_{\mu \nu}-\frac{1}{2}g^{(0)}_{\mu \nu}\nabla ^{(0)2}h \\
 & =h_{\mu \nu}+\frac{1}{2}\nabla ^{(0)2}h_{\mu \nu}+\frac{1}{2}g^{(0)}_{\mu \nu}\nabla ^{(0)}_{\rho}\nabla ^{(0)}_{\sigma}h^{\rho \sigma}-\frac{1}{2}g^{(0)}_{\mu \nu}\nabla ^{(0)2}h \\
 & -\frac{1}{2}\nabla ^{(0)}_{\mu}\nabla ^{(0)}_{\rho}h_{\nu}^{~\rho}-\frac{1}{2}\nabla ^{(0)}_{\nu}\nabla ^{(0)}_{\rho}h_{\mu}^{~\rho}-\frac{1}{2}\nabla ^{(0)}_{\mu}\nabla ^{(0)}_{\nu}h
\end{align}$$

and the symplectic potential

$$\begin{align}
\Theta ^{\rho} & =g^{(0)}_{\mu \nu}h^{\rho \sigma}\nabla ^{(0)}_{\sigma}\delta h^{\mu \nu}-g^{(0)}_{\mu \nu}\nabla ^{(0)}_{\sigma}h^{\rho \sigma}\delta h^{\mu \nu}-\frac{1}{2}g^{(0)}_{\mu \nu}\nabla ^{(0)\rho}h\delta h^{\mu \nu}-\delta ^{\rho}_{\mu}\nabla ^{(0)}_{\sigma}h_{\nu}^{~\sigma}\delta h^{\mu \nu}-\delta ^{\rho}_{\nu}\nabla ^{(0)}_{\sigma}h_{\mu}^{\sigma}\delta h^{\mu \nu} \\
 & +g^{(0)}_{\mu \nu}\nabla ^{(0)}_{\sigma}h^{\rho \sigma}\delta h^{\mu \nu}+\delta ^{\rho}_{\nu}\nabla ^{(0)}_{\mu}h\delta h^{\mu \nu}-2(\delta ^{\rho}_{\mu}h_{\nu}^{~\sigma}\nabla ^{(0)}_{\sigma}\delta h^{\mu \nu}-\nabla ^{(0)}_{\mu}h_{\nu}^{~\rho}\delta h^{\mu \nu}) \\
 & +\frac{1}{2}\delta ^{\rho}_{\mu}(h\nabla ^{(0)}_{\nu}\delta h^{\mu \nu}-\nabla ^{(0)}_{\nu}h\delta h^{\mu \nu})+g^{(0)\rho \sigma}(h_{\mu \nu}\nabla ^{(0)}_{\sigma}\delta h^{\mu \nu}-\nabla ^{(0)}_{\sigma}h_{\mu \nu}\delta h^{\mu \nu}) \\
 & -\frac{1}{2}g^{(0)}_{\mu \nu}g^{(0)\rho \sigma}(h\nabla ^{(0)}_{\sigma}\delta h^{\mu \nu}-\nabla ^{(0)}_{\sigma}h\delta h^{\mu \nu})-\frac{1}{2}(\nabla ^{(0)}_{\mu}h_{\nu}^{~\rho}+\nabla ^{(0)}_{\nu}h_{\mu}^{~\rho})\delta h^{\mu\nu}+\frac{3}{2}\nabla ^{(0)\rho}h^{\mu \nu}\delta h_{\mu \nu}
\end{align}$$
