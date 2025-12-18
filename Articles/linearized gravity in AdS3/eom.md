# general discussion

the eom of linearized gravity around a background metric $\displaystyle{g^{(0)}_{\mu \nu}}$ can be written as

$$\begin{align}
-h +\frac{1}{2}\nabla ^{(0)2}h-\frac{1}{2}\nabla ^{(0)}_{\mu}\nabla ^{(0)}_{\nu}h^{\mu \nu} & =0 \\
-h_{\mu \nu}+g^{(0)}_{\mu \nu}h-\frac{1}{2}\nabla ^{(0)2}h_{\mu \nu}+\frac{1}{2}\nabla ^{(0)}_{(\mu}(\nabla ^{(0)}_{\rho}h_{\nu)}^{~\rho}-\frac{1}{2}\nabla ^{(0)}_{\nu)}h) & =0
\end{align}$$

here we assume that the de Donder gauge condition can be always be imposed

$$\begin{align}
\nabla ^{(0)}_{\rho}h_{\nu}^{\rho}-\frac{1}{2}\nabla ^{(0)}_{\nu}h & =0
\end{align}$$
---

this is equivalent that for a general solution $\displaystyle{h_{\mu \nu}}$, we can always find a gauge transformation $\displaystyle{\xi _{\mu}}$ such that

$$\begin{align}
\nabla ^{(0)}_{\rho}(h_{\nu}^{~\rho}+\nabla ^{(0)} _{\nu}\xi ^{\rho}+\nabla ^{(0)\rho}\xi ^{(0)}_{\nu})-\frac{1}{2}\nabla ^{(0)}_{\nu}(h+2\nabla ^{(0)}_{\sigma}\xi ^{\sigma}) & =0 \\
\implies \nabla ^{(0)2}\xi ^{\rho}+R_{\nu \rho}\xi ^{(0)\rho} & =-\left(\nabla ^{(0)}_{\rho}h_{\nu}^{~\rho}-\frac{1}{2}\nabla ^{(0)}_{\nu}h\right)
\end{align}$$

this is a linear hyperbolic equation for $\displaystyle{\xi _{\mu}}$, thus we can always find a solution locally.

---

then the eom can be simplified as

$$\begin{align}
h & =0 \\
\nabla ^{(0)2}h_{\mu \nu} +2h_{\mu \nu}  & =0
\end{align}$$

since $\displaystyle{h_{\mu \nu}}$ is traceless, we can further impose the transverse condition

$$\begin{align}
\nabla ^{(0)}_{\mu}h^{\mu \nu} & =0
\end{align}$$

and only consider the traceless transverse modes. thus the eom we need to solve are

$$\begin{align}
\nabla ^{(0)2}h_{\mu \nu} +2h_{\mu \nu}  & =0 \\
\nabla ^{(0)}_{\mu}h^{\mu \nu} & =0 \\
h & =0
\end{align}$$

define the following operators

$$\begin{align}
(\mathcal{D}^{\pm})^{\beta}_{\mu} & =\delta ^{\beta}_{\mu}\pm \varepsilon _{\mu}^{~\alpha \beta}\nabla _{\alpha}
\end{align}$$

the eom can be factorized as

$$\begin{align}
(\mathcal{D}^{+}\mathcal{D}^{-}h)_{\mu \nu} & =0
\end{align}$$

thus there are two braches of solutions, which are called left-moving massless mode and right-moving massless mode respectively, denoted as $\displaystyle{h^{L}_{\mu \nu}}$ and $\displaystyle{h^{R}_{\mu \nu}}$.

# linearized solutions

using the following coordinates

$$\begin{align}
\mathrm{d}s^{2} & =-(1+r^{2})\mathrm{d}t^{2}+\frac{\mathrm{d}r^{2}}{1+r^{2}}+r^{2}\mathrm{d}\phi ^{2}
\end{align}$$

the Killing vectors are given by

$$\begin{align}
\xi _{1} & =\frac{1}{2}e^{i(t-\phi)}\left( r(1+r^{2})^{-1/2} \partial _{t}-i(1+r^{2})^{1/2} \partial _{r}-r^{-1}(1+r^{2})^{1/2}\partial _{\phi} \right) \\
\xi _{0} & =\frac{1}{2}(\partial _{t}-\partial _{\phi}) \\
\xi _{-1} & =\frac{1}{2}e^{-i(t-\phi)}(r(1+r^{2})^{-1/2}\partial _{t}+i(1+r^{2})^{1/2}\partial _{r}-r^{-1}(1+r^{2})^{1/2}\partial _{\phi} ) \\
\bar{\xi}_{1} & =\frac{1}{2}e^{i(t+\phi)}\left( r(1+r^{2})^{-1/2} \partial _{t}-i(1+r^{2})^{1/2} \partial _{r}+r^{-1}(1+r^{2})^{1/2}\partial _{\phi} \right) \\
\bar{\xi}_{0} & =\frac{1}{2}(\partial _{t}+\partial _{\phi}) \\
\bar{\xi}_{-1} & =\frac{1}{2}e^{-i(t+\phi)}(r(1+r^{2})^{-1/2}\partial _{t}+i(1+r^{2})^{1/2}\partial _{r}+r^{-1}(1+r^{2})^{1/2}\partial _{\phi} )
\end{align}$$

that satisfies the following algebra

$$\begin{align}
[\xi _{0},\xi _{\pm 1}] & =\pm i\xi _{\pm 1} \\
[\xi _{1},\xi _{-1}] & =-2i\xi _{0} \\
[\bar{\xi} _{0},\bar{\xi} _{\pm 1}] & =\pm i\bar{\xi} _{\pm 1} \\
[\bar{\xi} _{1},\bar{\xi} _{-1}] & =-2i\bar{\xi} _{0}
\end{align}$$

which form two copies of $\displaystyle{\mathfrak{sl}(2,\mathbb{R})}$. the Casimirs are given by

$$\begin{align}
\mathcal{C} & =\mathcal{L}_{\xi _{0}}^{2}-\frac{1}{2}(\mathcal{L}_{\xi _{1}}\mathcal{L}_{\xi _{-1}}+\mathcal{L}_{\xi _{-1}}\mathcal{L}_{\xi _{1}}) \\
\mathcal{\bar{C}} & =\mathcal{L}_{\bar{\xi}_{0}}^{2}-\frac{1}{2}(\mathcal{L}_{\bar{\xi}_{1}}\mathcal{L}_{\bar{\xi}_{-1}}+\mathcal{L}_{\bar{\xi}_{-1}}\mathcal{L}_{\bar{\xi}_{1}})
\end{align}$$

using the fact that

$$\begin{align}
\nabla _{\mu}\xi _{a,\nu} & =-\varepsilon _{\mu \nu \rho}\xi _{a}^{\rho} \\
\nabla _{\mu}\bar{\xi}_{a,\nu} & =\varepsilon _{\mu \nu \rho}\bar{\xi}_{a}^{\rho} \\
g_{\mu \nu} & =2\xi _{-1}^{\mu}\xi _{1}^{\nu}+2\xi _{1}^{\mu}\xi _{-1}^{\nu}-4\xi _{0}^{\mu}\xi_{0}^{\nu} \\
 & =2\bar{\xi}_{-1}^{\mu}\bar{\xi}_{1}^{\nu}+2\bar{\xi}_{1}^{\mu}\bar{\xi}_{-1}^{\nu}-4\bar{\xi}_{0}^{\mu}\bar{\xi}_{0}^{\nu}
\end{align}$$

we have

$$\begin{align}
\mathcal{C}h_{\mu \nu} & =-\frac{1}{4}\nabla ^{(0)2}h_{\mu \nu}+\frac{1}{2}\varepsilon ^{\rho \sigma}_{~~~\mu}\nabla ^{(0)}_{\sigma}h_{\rho \nu}+\frac{1}{2}\varepsilon ^{\rho \sigma}_{~~~\nu}\nabla ^{(0)}_{\sigma}h_{\mu \rho}-\frac{3}{2}h_{\mu \nu} \\
\mathcal{\bar{C}}h_{\mu \nu} & =-\frac{1}{4}\nabla ^{(0)2}h_{\mu \nu}-\frac{1}{2}\varepsilon ^{\rho \sigma}_{~~~\mu}\nabla ^{(0)}_{\sigma}h_{\rho \nu}-\frac{1}{2}\varepsilon ^{\rho \sigma}_{~~~\nu}\nabla ^{(0)}_{\sigma}h_{\mu \rho}-\frac{3}{2}h_{\mu \nu}
\end{align}$$

thus the combination

$$\begin{align}
(\mathcal{C}+\mathcal{\bar{C}})h_{\mu \nu} & =-\frac{1}{2}\nabla ^{(0)2}h_{\mu \nu}-3h_{\mu \nu} \\
 & =-2h_{\mu \nu} \\
(\mathcal{C}-\mathcal{\bar{C}})^{2}h_{\mu \nu} & =\varepsilon ^{\rho \sigma}_{~~~\mu}\nabla ^{(0)}_{\sigma}(\varepsilon ^{\alpha \beta}_{~~~\rho}\nabla ^{(0)}_{\beta}h_{\alpha \nu}+\varepsilon ^{\alpha \beta}_{~~~\nu}\nabla ^{(0)}_{\beta}h_{\rho \alpha})+\varepsilon ^{\rho \sigma}_{~~~\nu}\nabla ^{(0)}_{\sigma}(\varepsilon^{\alpha \beta}_{~~~\mu}\nabla ^{(0)}_{\beta}h_{\alpha \rho}+\varepsilon ^{\alpha \beta}_{~~~\rho}\nabla ^{(0)}_{\beta}h_{\mu \alpha}) \\
 & =(g^{\sigma \alpha}\delta ^{\beta}_{\mu}-g^{\sigma \beta}\delta ^{\alpha}_{\mu})\nabla ^{(0)}_{\sigma}\nabla ^{(0)}_{\beta}h_{\alpha \nu}+\varepsilon ^{\rho \sigma}_{~~~\mu}\varepsilon ^{\alpha \beta}_{~~~\nu}\nabla ^{(0)}_{\sigma}\nabla ^{(0)}_{\beta}h_{\rho \alpha} \\
 & +\varepsilon ^{\rho \sigma}_{~~~\nu}\varepsilon ^{\alpha \beta}_{~~~\mu}\nabla ^{(0)}_{\sigma}\nabla ^{(0)}_{\beta}h_{\alpha \rho}+(g^{\sigma \alpha}\delta ^{\beta}_{\nu}-g^{\sigma \beta}\delta ^{\alpha}_{\nu})\nabla ^{(0)}_{\sigma}\nabla ^{(0)}_{\beta}h_{\mu \alpha} \\
 & =
\end{align}$$

$$\begin{align}
2\nabla ^{(0)\alpha}\nabla ^{(0)}_{\mu}h_{\alpha \nu}-2\nabla ^{(0)2}h_{\mu \nu}
\end{align}$$

$$\begin{align}
 & \varepsilon ^{\rho\mu \nu}\nabla _{\nu}\varepsilon ^{\rho \alpha}_{~~~\beta}\nabla _{\alpha}A^{\beta} \\
 & =(g^{\mu \alpha}\delta ^{\nu}_{\beta}-\delta ^{\mu}_{\beta}g^{\nu \alpha})\nabla _{\nu}\nabla _{\alpha}A^{\beta} \\
 & =
\end{align}$$
---

*notice that*

*$$\begin{align}
\varepsilon ^{\rho \mu \nu}\varepsilon ^{\rho \alpha}_{~~~\beta}=-(g^{\mu \alpha}\delta ^{\nu}_{\beta}-\delta ^{\mu}_{\beta}g^{\nu \alpha})
\end{align}$$*

*above calculation are not correct, need to redo it carefully.*