consider the following metric for $\displaystyle{\mathrm{AdS}_{3}}$ space in global coordinates:

$$\begin{align}
\mathrm{d}s^{2} & =-(1+r^{2})\mathrm{d}t^{2}+\frac{\mathrm{d}r^{2}}{1+r^{2}}+r^{2}\mathrm{d}\phi ^{2}
\end{align}$$

we have to impose boundary conditions on the metric perturbations $\displaystyle{h_{\mu \nu }}$ as $\displaystyle{r\to \infty }$. here we adopt the Brown-Henneaux boundary conditions are given by (see [(4.3)](https://link.springer.com/article/10.1007/BF01211590)):

$$\begin{align}
h_{tt}\sim h_{t\phi}\sim h_{\phi \phi} & =\mathcal{O}(r^{0}) \\
h_{tr}\sim h_{r\phi} & =\mathcal{O}(r^{-3}) \\
h_{rr} & =\mathcal{O}(r^{-4})
\end{align}$$

then

$$\begin{align}
h_{t}^{~t}\sim h_{t}^{~\phi}\sim h_{\phi}^{~t}\sim h_{\phi}^{~\phi} & =\mathcal{O}(r^{-2}) \\
h_{t}^{~r}\sim h_{\phi}^{~r} & =\mathcal{O}(r^{-1}) \\
h_{r}^{~t}\sim h_{r}^{~\phi} & =\mathcal{O}(r^{-5}) \\
h_{r}^{~r} & =\mathcal{O}(r^{-2}) \\
h_{~t}^{t}\sim h^{\phi}_{~t}\sim h^{t}_{~\phi}\sim h^{\phi}_{~\phi} & =\mathcal{O}(r^{-2}) \\
h^{r}_{~t}\sim h^{r}_{~\phi} & =\mathcal{O}(r^{-1}) \\
h^{t}_{~r}\sim h^{\phi}_{~r} & =\mathcal{O}(r^{-5}) \\
h^{r}_{~r} & =\mathcal{O}(r^{-2})
\end{align}$$

and

$$\begin{align}
h^{tt}\sim h^{t\phi}\sim h^{\phi \phi} & =\mathcal{O}(r^{-4}) \\
h^{tr}\sim h^{r\phi} & =\mathcal{O}(r^{-3}) \\
h^{rr} & = \mathcal{O}(r^{0})
\end{align}$$

$$\begin{align}
h =g^{(0)\mu \nu}h_{\mu \nu} & =\mathcal{O}(r^{-2}) \\
h_{\mu \nu}h^{\mu \nu} & =\mathcal{O}(r^{-4})
\end{align}$$

covariant derivatives of the metric perturbations behaves as

$$\begin{align}
\nabla ^{(0)}_{t}h_{tt}\sim \nabla ^{(0)}_{t}h_{t\phi}\sim \nabla ^{(0)}_{t}h_{\phi \phi}\sim \nabla ^{(0)}_{\phi}h_{tt}\sim \nabla ^{(0)}_{\phi}h_{t\phi}\sim \nabla ^{(0)}_{\phi}h_{\phi \phi} & =\mathcal{O}(r^{0}) \\
\nabla ^{(0)}_{t}h_{tr}\sim \nabla ^{(0)}_{t}h_{r\phi}\sim \nabla ^{(0)}_{\phi}h_{tr}\sim \nabla ^{(0)}_{\phi}h_{r\phi} & =\mathcal{O}(r^{-1}) \\
\nabla ^{(0)}_{t}h_{rr}\sim \nabla ^{(0)}_{\phi}h_{rr} & =\mathcal{O}(r^{-4}) \\
\nabla ^{(0)}_{r}h_{tt}\sim \nabla ^{(0)}_{r}h_{t\phi}\sim \nabla ^{(0)}_{r}h_{\phi \phi} & =\mathcal{O}(r^{-1}) \\
\nabla ^{(0)}_{r}h_{tr}\sim \nabla ^{(0)}_{r}h_{r\phi} & =\mathcal{O}(r^{-4}) \\
\nabla ^{(0)}_{r}h_{rr} & =\mathcal{O}(r^{-5})
\end{align}$$

and

$$\begin{align}
\nabla ^{(0)}_{t}h_{t}^{~t}\sim\nabla ^{(0)}_{t}h_{t}^{~\phi}\sim \nabla ^{(0)}_{t}h_{\phi}^{~t}\sim \nabla ^{(0)}_{t}h_{\phi}^{~\phi}\sim \nabla ^{(0)}_{\phi}h_{t}^{~t}\sim \nabla ^{(0)}_{\phi}h_{t}^{~\phi}\sim \nabla ^{(0)}_{\phi}h_{\phi}^{~t}\sim \nabla ^{(0)}_{\phi}h_{\phi}^{~\phi} & =\mathcal{O}(r^{-2}) \\
\nabla ^{(0)}_{t}h_{t}^{~r}\sim \nabla ^{(0)}_{t}h_{\phi}^{~r}\sim \nabla ^{(0)}_{\phi}h_{t}^{~r}\sim \nabla ^{(0)}_{\phi}h_{\phi}^{~r} & =\mathcal{O}(r^{1}) \\
\nabla ^{(0)}_{t}h_{r}^{~t}\sim \nabla ^{(0)}_{t}h_{r}^{~\phi}\sim \nabla ^{(0)}_{\phi}h_{r}^{~t}\sim \nabla ^{(0)}_{\phi}h_{r}^{~\phi} & =\mathcal{O}(r^{-3}) \\
\nabla ^{(0)}_{t}h_{r}^{~r}\sim \nabla ^{(0)}_{\phi}h_{r}^{~r} & =\mathcal{O}(r^{-2}) \\
\nabla ^{(0)}_{r}h_{t}^{~t}\sim \nabla ^{(0)}_{r}h_{t}^{~\phi}\sim \nabla ^{(0)}_{r}h_{\phi}^{~t}\sim \nabla ^{(0)}_{r}h_{\phi}^{~\phi} & =\mathcal{O}(r^{-3}) \\
\nabla ^{(0)}_{r}h_{t}^{~r}\sim \nabla ^{(0)}_{r}h_{\phi}^{~r} & =\mathcal{O}(r^{-2}) \\
\nabla ^{(0)}_{r}h_{r}^{~t}\sim \nabla ^{(0)}_{r}h_{r}^{~\phi} & =\mathcal{O}(r^{-6}) \\
\nabla ^{(0)}_{r}h_{r}^{~r} & =\mathcal{O}(r^{-3}) \\
\nabla ^{(0)}_{t}h^{t}_{~t}\sim \nabla ^{(0)}_{t}h^{t}_{~\phi}\sim \nabla ^{(0)}_{t}h^{\phi}_{~t}\sim \nabla ^{(0)}_{t}h^{\phi}_{~\phi}\sim \nabla ^{(0)}_{\phi}h^{t}_{~t}\sim \nabla ^{(0)}_{\phi}h^{t}_{~\phi}\sim \nabla ^{(0)}_{\phi}h^{\phi}_{~t}\sim \nabla ^{(0)}_{\phi}h^{\phi}_{~\phi} & =\mathcal{O}(r^{-2}) \\
\nabla ^{(0)}_{t}h^{r}_{~t}\sim \nabla ^{(0)}_{t}h^{r}_{~\phi}\sim \nabla ^{(0)}_{\phi}h^{r}_{~t}\sim \nabla ^{(0)}_{\phi}h^{r}_{~\phi} & =\mathcal{O}(r^{1}) \\
\nabla ^{(0)}_{t}h^{t}_{~r}\sim \nabla ^{(0)}_{t}h^{\phi}_{~r}\sim \nabla ^{(0)}_{\phi}h^{t}_{~r}\sim \nabla ^{(0)}_{\phi}h^{\phi}_{~r} & =\mathcal{O}(r^{-3}) \\
\nabla ^{(0)}_{t}h^{r}_{~r}\sim \nabla ^{(0)}_{\phi}h^{r}_{~r} & =\mathcal{O}(r^{-2}) \\
\nabla ^{(0)}_{r}h^{t}_{~t}\sim \nabla ^{(0)}_{r}h^{t}_{~\phi}\sim \nabla ^{(0)}_{r}h^{\phi}_{~t}\sim \nabla ^{(0)}_{r}h^{\phi}_{~\phi} & =\mathcal{O}(r^{-3}) \\
\nabla ^{(0)}_{r}h^{r}_{~t}\sim \nabla ^{(0)}_{r}h^{r}_{~\phi} & =\mathcal{O}(r^{-2}) \\
\nabla ^{(0)}_{r}h^{t}_{~r}\sim \nabla ^{(0)}_{r}h^{\phi}_{~r} & =\mathcal{O}(r^{-6}) \\
\nabla ^{(0)}_{r}h^{r}_{~r} & =\mathcal{O}(r^{-3})
\end{align}$$

$$\begin{align}
\nabla ^{(0)}_{t}h^{tt}\sim \nabla ^{(0)}_{t}h^{t\phi}\sim \nabla ^{(0)}_{t}h^{\phi \phi}\sim \nabla ^{(0)}_{\phi}h^{tt}\sim \nabla ^{(0)}_{\phi}h^{t\phi}\sim \nabla ^{(0)}_{\phi}h^{\phi \phi} & =\mathcal{O}(r^{-4}) \\
\nabla ^{(0)}_{t}h^{tr}\sim \nabla ^{(0)}_{t}h^{r\phi}\sim \nabla ^{(0)}_{\phi}h^{tr}\sim \nabla ^{(0)}_{\phi}h^{r\phi} & =\mathcal{O}(r^{-1}) \\
\nabla ^{(0)}_{t}h^{rr}\sim \nabla ^{(0)}_{\phi}h^{rr} & =\mathcal{O}(r^{0}) \\
\nabla ^{(0)}_{r}h^{tt}\sim \nabla ^{(0)}_{r}h^{t\phi}\sim \nabla ^{(0)}_{r}h^{\phi \phi} & =\mathcal{O}(r^{-5}) \\
\nabla ^{(0)}_{r}h^{tr}\sim \nabla ^{(0)}_{r}h^{r\phi} & =\mathcal{O}(r^{-4}) \\
\nabla ^{(0)}_{r}h^{rr} & =\mathcal{O}(r^{-1})
\end{align}$$

$$\begin{align}
\nabla ^{(0)t}h_{tt}\sim \nabla ^{(0)t}h_{t\phi}\sim \nabla ^{(0)t}h_{\phi \phi}\sim \nabla ^{(0)\phi}h_{tt}\sim \nabla ^{(0)\phi}h_{t\phi}\sim \nabla ^{(0)\phi}h_{\phi \phi} & =\mathcal{O}(r^{-2}) \\
\nabla ^{(0)t}h_{tr}\sim \nabla ^{(0)t}h_{r\phi}\sim \nabla ^{(0)\phi}h_{tr}\sim \nabla ^{(0)\phi}h_{r\phi} & =\mathcal{O}(r^{-3}) \\
\nabla ^{(0)t}h_{rr}\sim \nabla ^{(0)\phi}h_{rr} & =\mathcal{O}(r^{-6}) \\
\nabla ^{(0)r}h_{tt}\sim \nabla ^{(0)r}h_{t\phi}\sim \nabla ^{(0)r}h_{\phi \phi} & =\mathcal{O}(r^{1}) \\
\nabla ^{(0)r}h_{tr}\sim \nabla ^{(0)r}h_{r\phi} & =\mathcal{O}(r^{-2}) \\
\nabla ^{(0)r}h_{rr} & =\mathcal{O}(r^{-3})
\end{align}$$

$$\begin{align}
\nabla ^{(0)t}h_{t}^{~t}\sim\nabla ^{(0)t}h_{t}^{~\phi}\sim \nabla ^{(0)t}h_{\phi}^{~t}\sim \nabla ^{(0)t}h_{\phi}^{~\phi}\sim \nabla ^{(0)\phi}h_{t}^{~t}\sim \nabla ^{(0)\phi}h_{t}^{~\phi}\sim \nabla ^{(0)\phi}h_{\phi}^{~t}\sim \nabla ^{(0)\phi}h_{\phi}^{~\phi} & =\mathcal{O}(r^{-4}) \\
\nabla ^{(0)t}h_{t}^{~r}\sim \nabla ^{(0)t}h_{\phi}^{~r}\sim \nabla ^{(0)\phi}h_{t}^{~r}\sim \nabla ^{(0)\phi}h_{\phi}^{~r} & =\mathcal{O}(r^{-1}) \\
\nabla ^{(0)t}h_{r}^{~t}\sim \nabla ^{(0)t}h_{r}^{~\phi}\sim \nabla ^{(0)\phi}h_{r}^{~t}\sim \nabla ^{(0)\phi}h_{r}^{~\phi} & =\mathcal{O}(r^{-5}) \\
\nabla ^{(0)t}h_{r}^{~r}\sim \nabla ^{(0)\phi}h_{r}^{~r} & =\mathcal{O}(r^{-4}) \\
\nabla ^{(0)r}h_{t}^{~t}\sim \nabla ^{(0)r}h_{t}^{~\phi}\sim \nabla ^{(0)r}h_{\phi}^{~t}\sim \nabla ^{(0)r}h_{\phi}^{~\phi} & =\mathcal{O}(r^{-1}) \\
\nabla ^{(0)r}h_{t}^{~r}\sim \nabla ^{(0)r}h_{\phi}^{~r} & =\mathcal{O}(r^{0}) \\
\nabla ^{(0)r}h_{r}^{~t}\sim \nabla ^{(0)r}h_{r}^{~\phi} & =\mathcal{O}(r^{-4}) \\
\nabla ^{(0)r}h_{r}^{~r} & =\mathcal{O}(r^{-1}) \\
\nabla ^{(0)t}h^{t}_{~t}\sim \nabla ^{(0)t}h^{t}_{~\phi}\sim \nabla ^{(0)t}h^{\phi}_{~t}\sim \nabla ^{(0)t}h^{\phi}_{~\phi}\sim \nabla ^{(0)\phi}h^{t}_{~t}\sim \nabla ^{(0)\phi}h^{t}_{~\phi}\sim \nabla ^{(0)\phi}h^{\phi}_{~t}\sim \nabla ^{(0)\phi}h^{\phi}_{~\phi} & =\mathcal{O}(r^{-4}) \\
\nabla ^{(0)t}h^{r}_{~t}\sim \nabla ^{(0)t}h^{r}_{~\phi}\sim \nabla ^{(0)\phi}h^{r}_{~t}\sim \nabla ^{(0)\phi}h^{r}_{~\phi} & =\mathcal{O}(r^{-1}) \\
\nabla ^{(0)t}h^{t}_{~r}\sim \nabla ^{(0)t}h^{\phi}_{~r}\sim \nabla ^{(0)\phi}h^{t}_{~r}\sim \nabla ^{(0)\phi}h^{\phi}_{~r} & =\mathcal{O}(r^{-5}) \\
\nabla ^{(0)t}h^{r}_{~r}\sim \nabla ^{(0)\phi}h^{r}_{~r} & =\mathcal{O}(r^{-4}) \\
\nabla ^{(0)r}h^{t}_{~t}\sim \nabla ^{(0)r}h^{t}_{~\phi}\sim \nabla ^{(0)r}h^{\phi}_{~t}\sim \nabla ^{(0)r}h^{\phi}_{~\phi} & =\mathcal{O}(r^{-1}) \\
\nabla ^{(0)r}h^{r}_{~t}\sim \nabla ^{(0)r}h^{r}_{~\phi} & =\mathcal{O}(r^{0}) \\
\nabla ^{(0)r}h^{t}_{~r}\sim \nabla ^{(0)r}h^{\phi}_{~r} & =\mathcal{O}(r^{-4}) \\
\nabla ^{(0)r}h^{r}_{~r} & =\mathcal{O}(r^{-1})
\end{align}$$

$$\begin{align}
\nabla ^{(0)t}h^{tt}\sim \nabla ^{(0)t}h^{t\phi}\sim \nabla ^{(0)t}h^{\phi \phi}\sim \nabla ^{(0)\phi}h^{tt}\sim \nabla ^{(0)\phi}h^{t\phi}\sim \nabla ^{(0)\phi}h^{\phi \phi} & =\mathcal{O}(r^{-6}) \\
\nabla ^{(0)t}h^{tr}\sim \nabla ^{(0)t}h^{r\phi}\sim \nabla ^{(0)\phi}h^{tr}\sim \nabla ^{(0)\phi}h^{r\phi} & =\mathcal{O}(r^{-3}) \\
\nabla ^{(0)t}h^{rr}\sim \nabla ^{(0)\phi}h^{rr} & =\mathcal{O}(r^{-2}) \\
\nabla ^{(0)r}h^{tt}\sim \nabla ^{(0)r}h^{t\phi}\sim \nabla ^{(0)r}h^{\phi \phi} & =\mathcal{O}(r^{-3}) \\
\nabla ^{(0)r}h^{tr}\sim \nabla ^{(0)r}h^{r\phi} & =\mathcal{O}(r^{-2}) \\
\nabla ^{(0)r}h^{rr} & =\mathcal{O}(r^{1})
\end{align}$$

however the action is actually divergent of order $\displaystyle{\mathcal{O}(\log r)}$, since the Lagrangian is of order $\displaystyle{\mathcal{O}(r^{-1})}$. what we should do is to discover the right counterterms to cancel the divergence. to do this, we have to express the action in terms of $\displaystyle{h_{\mu \nu}}$ and ..., and try to find what is in the logarithmic divergence.

*determinant*

$$\begin{align}
\sqrt{ -g } & =\sqrt{ -g^{(0)} }\left( 1+\frac{h}{2}-\frac{1}{4}h_{\mu \nu}h^{\mu \nu}+\frac{1}{8}h^{2}+\mathcal{O}(h^{3}) \right) \\
 & =r\left( 1+\frac{h}{2}+\mathcal{O}(r^{-4}) \right)
\end{align}$$

*Christoffel symbols*

$$\begin{align}
\Gamma ^{\rho}_{~\mu \nu} & ={\Gamma ^{(0)}}^{\rho}_{~\mu \nu}+\frac{1}{2}g^{(0)\rho \sigma}(\nabla ^{(0)}_{\mu}h_{\sigma \nu}+\nabla _{\nu}^{(0)}h_{\mu \sigma}-\nabla ^{(0)}_{\sigma}h_{\mu \nu}) \\
 & +\frac{1}{2}h^{\rho \alpha}(\nabla ^{(0)}_{\alpha}h_{\mu \nu}-\nabla ^{(0)}_{\mu}h_{\alpha \nu}-\nabla ^{(0)}_{\nu}h_{\mu \alpha}) \\
 & +\frac{1}{2}h_{\alpha}^{~\beta}h^{\rho \alpha}(\nabla ^{(0)}_{\mu}h_{\beta \nu}+\nabla ^{(0)}_{\nu}h_{\mu \beta}-\nabla ^{(0)}_{\beta}h_{\mu \nu})+\mathcal{O}(h^{4}) 
\end{align}$$

$$\begin{align}
\Gamma ^{r}_{~rr} & ={\Gamma ^{(0)r}}_{~rr}+\frac{1}{2}g^{(0)r \sigma}(\nabla ^{(0)}_{r}h_{\sigma r}+\nabla _{r}^{(0)}h_{r \sigma}-\nabla ^{(0)}_{\sigma}h_{r r}) \\
 & +\frac{1}{2}h^{r \alpha}(\nabla ^{(0)}_{\alpha}h_{r r}-\nabla ^{(0)}_{r}h_{\alpha r}-\nabla ^{(0)}_{r}h_{r \alpha}) \\
 & +\frac{1}{2}h_{\alpha}^{~\beta}h^{r \alpha}(\nabla ^{(0)}_{r}h_{\beta r}+\nabla ^{(0)}_{r}h_{r \beta}-\nabla ^{(0)}_{\beta}h_{r r})+\mathcal{O}(h^{4})
\end{align}$$

$$\begin{align}
\nabla ^{(0)}_{t}h_{tt} & =\partial _{t}h_{tt}-2r^{3}h_{tr}+\mathcal{O}(r^{-2}) \\
\nabla ^{(0)}_{t}h_{t\phi} & =\partial _{t}h_{t\phi}-r^{3}h_{r\phi}+\mathcal{O}(r^{-2}) \\
\nabla ^{(0)}_{t}h_{\phi \phi} & =\partial _{t}h_{\phi \phi} \\
\nabla ^{(0)}_{t}h_{tr} & =\partial _{t}h_{tr}-\Gamma ^{(0)r}_{tt}h_{rr}-\Gamma ^{(0)t}_{tr}h_{tt} \\
 & =\partial _{t}h_{tr}-(r^{3}+\mathcal{O}(r^{1}))h_{rr}-\left( \frac{1}{r}+\mathcal{O}(r^{-3}) \right) h_{tt} \\
 & =
\end{align}$$


$$\begin{align}
\Gamma ^{t}_{~tr} & =\frac{1}{r}+\mathcal{O}(r^{-3}) \\
\Gamma ^{r}_{~tt} & =r^{3}+\mathcal{O}(r^{1}) \\
\Gamma ^{r}_{~r r} & =-\frac{1}{r}+\mathcal{O}(r^{-3}) \\
\Gamma ^{r}_{~\phi \phi} & =-r^{3}+\mathcal{O}(r^{1}) \\
\Gamma ^{\phi}_{~r \phi} & =\frac{1}{r}
\end{align}$$

$$\begin{align}
h_{tt}\sim h_{t\phi}\sim h_{\phi \phi} & =\mathcal{O}(r^{0}) \\
h_{tr}\sim h_{r\phi} & =\mathcal{O}(r^{-3}) \\
h_{rr} & =\mathcal{O}(r^{-4})
\end{align}$$

then

$$\begin{align}
h_{t}^{~t}\sim h_{t}^{~\phi}\sim h_{\phi}^{~t}\sim h_{\phi}^{~\phi} & =\mathcal{O}(r^{-2}) \\
h_{t}^{~r}\sim h_{\phi}^{~r} & =\mathcal{O}(r^{-1}) \\
h_{r}^{~t}\sim h_{r}^{~\phi} & =\mathcal{O}(r^{-5}) \\
h_{r}^{~r} & =\mathcal{O}(r^{-2}) \\
h_{~t}^{t}\sim h^{\phi}_{~t}\sim h^{t}_{~\phi}\sim h^{\phi}_{~\phi} & =\mathcal{O}(r^{-2}) \\
h^{r}_{~t}\sim h^{r}_{~\phi} & =\mathcal{O}(r^{-1}) \\
h^{t}_{~r}\sim h^{\phi}_{~r} & =\mathcal{O}(r^{-5}) \\
h^{r}_{~r} & =\mathcal{O}(r^{-2})
\end{align}$$

and

$$\begin{align}
h^{tt}\sim h^{t\phi}\sim h^{\phi \phi} & =\mathcal{O}(r^{-4}) \\
h^{tr}\sim h^{r\phi} & =\mathcal{O}(r^{-3}) \\
h^{rr} & = \mathcal{O}(r^{0})
\end{align}$$

