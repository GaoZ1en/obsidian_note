consider the following metric for $\displaystyle{\mathrm{AdS}_{3}}$ space in global coordinates:

$$\begin{align}
\mathrm{d}s^{2} & =-(1+r^{2})\mathrm{d}t^{2}+\frac{\mathrm{d}r^{2}}{1+r^{2}}+r^{2}\mathrm{d}\phi ^{2}
\end{align}$$

we have to impose boundary conditions on the metric perturbations $\displaystyle{h_{\mu \nu }}$ as $\displaystyle{r\to \infty }$. here we adopt the Brown-Henneaux boundary conditions are given by (see [(4.3)](https://link.springer.com/article/10.1007/BF01211590)): (here we choose a different chooice of asymptotic behavior of $\displaystyle{h_{tr}}$ and $\displaystyle{h_{r\phi}}$ compared to the results of Zhe Feng's notes)

$$
\begin{array}{c|ccc}
\mathcal{O}(r^{n}) & h_{tt}, h_{t\phi}, h_{\phi \phi} & h_{tr},h_{r\phi} & h_{rr} \\
\hline & 0 & -3 & -4
\end{array}
$$

then

$$\begin{align}
\begin{array}{c|cccc}
\mathcal{O}(r^{n}) & h_{t}^{~t},h_{t}^{~\phi},h_{\phi}^{~t},h_{\phi}^{~\phi} & h_{t}^{~r},h_{\phi}^{~r} & h_{r}^{~t},h_{r}^{~\phi} & h_{r}^{~r} \\
\hline & -2 & -1 & -5 & -2
\end{array} \\
\begin{array}{c|cccc}
\mathcal{O}(r^{n}) & h^{t}_{~t},h^{t}_{~\phi},h^{\phi}_{~t},h^{\phi}_{~\phi} & h^{r}_{~t},h^{r}_{~\phi} & h^{t}_{~r},h^{\phi}_{~r} & h^{r}_{~r} \\
\hline & -2 & -1 & -5 & -2
\end{array}
\end{align}$$

and

$$
\begin{array}{c|ccc}
\mathcal{O}(r^{n}) & h^{tt}, h^{t\phi}, h^{\phi \phi} & h^{tr},h^{r\phi} & h^{rr} \\
\hline & -4 & -3 & 0
\end{array}
$$

then the trace and the square of the metric perturbations behaves as

$$\begin{align}
h =g^{(0)\mu \nu}h_{\mu \nu} & =\mathcal{O}(r^{-2}) \\
h_{\mu \nu}h^{\mu \nu} & =\mathcal{O}(r^{-4})
\end{align}$$

covariant derivatives of the metric perturbations behaves as

$$
\begin{array}{c|cccccc}
\mathcal{O}(r^{n}) & h_{tt} & h_{t\phi} & h_{\phi \phi} & h_{tr} & h_{r\phi} & h_{rr} \\
\hline \nabla ^{(0)}_{t} & 0 & 0 & 0 & -1 & -1 & -4 \\
\nabla ^{(0)}_{r} & -1 & -1 & -1 & -4 & -4 & -5 \\
\nabla ^{(0)}_{\phi} & 0 & 0 & 0 & -1 & -1 & -4
\end{array}
$$

and

$$
\begin{array}{c|cccccc}
\mathcal{O}(r^{n}) & h_{t}^{~t} & h_{t}^{~\phi} & h_{\phi}^{~t} & h_{\phi}^{~\phi} & h_{t}^{~r} & h_{\phi}^{~r} & h_{r}^{~t} & h_{r}^{~\phi} & h_{r}^{~r} \\
\hline \nabla ^{(0)}_{t} & -2 & -2 & -2 & -2 & 1 & 1 & -3 & -3 & -2 \\
\nabla ^{(0)}_{r} & -3 & -3 & -3 & -3 & -2 & -2 & -6 & -6 & -3 \\
\nabla ^{(0)}_{\phi} & -2 & -2 & -2 & -2 & 1 & 1 & -3 & -3 & -2
\end{array}
$$

$$
\begin{array}{c|cccccc}
\mathcal{O}(r^{n}) & h^{t}_{~t} & h^{t}_{~\phi} & h^{\phi}_{~t} & h^{\phi}_{~\phi} & h^{r}_{~t} & h^{r}_{~\phi} & h^{t}_{~r} & h^{\phi}_{~r} & h^{r}_{~r} \\
\hline \nabla ^{(0)}_{t} & -2 & -2 & -2 & -2 & 1 & 1 & -3 & -3 & -2 \\
\nabla ^{(0)}_{r} & -3 & -3 & -3 & -3 & -2 & -2 & -6 & -6 & -3 \\
\nabla ^{(0)}_{\phi} & -2 & -2 & -2 & -2 & 1 & 1 & -3 & -3 & -2
\end{array}
$$

$$
\begin{array}{c|cccccc}
\mathcal{O}(r^{n}) & h^{tt} & h^{t\phi} & h^{\phi \phi} & h^{tr} & h^{r\phi} & h^{rr} \\
\hline \nabla ^{(0)}_{t} & -4 & -4 & -4 & -1 & -1 & 0 \\
\nabla ^{(0)}_{r} & -5 & -5 & -5 & -4 & -4 & -1 \\
\nabla ^{(0)}_{\phi} & -4 & -4 & -4 & -1 & -1 & 0
\end{array}
$$

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

*covariant derivatives of metric perturbation*

$$
\begin{array}{c|cccccc}
 & h_{tt} & h_{t\phi} & h_{\phi \phi} & h_{tr} & h_{r\phi} & h_{rr} \\
\hline \nabla ^{(0)}_{t} & \partial _{t}h_{tt}-2r^{3}h_{tr}+\mathcal{O}(r^{-2}) & \partial _{t}h_{t\phi}-r^{3}h_{r\phi} & \partial _{t}h_{\phi \phi} & -r^{3}h_{rr}-\frac{1}{r}h_{tt}+\mathcal{O}(r^{-3}) & -\frac{1}{r}h_{t\phi}+\mathcal{O}(r^{-3}) & \partial _{t}h_{rr}-\frac{2}{r}h_{tr}+\mathcal{O}(r^{-6}) \\
\nabla ^{(0)}_{r} & \partial _{r}h_{tt}-\frac{2}{r}h_{tt}+\mathcal{O}(r^{-3}) & \partial _{r}h_{t\phi}-\frac{2}{r}h_{t\phi}+\mathcal{O}(r^{-3}) & \partial _{r}h_{\phi \phi}-\frac{2}{r}h_{\phi \phi} & \partial _{r}h_{tr}+\mathcal{O}(r^{-6}) & \partial _{r}h_{r\phi}+\mathcal{O}(r^{-6}) & \partial _{r}h_{rr}+\frac{2}{r}h_{rr}+\mathcal{O}(r^{-7}) \\
\nabla ^{(0)}_{\phi} & \partial _{\phi}h_{tt} & \partial _{\phi}h_{t\phi}+r^{3}h_{tr}+\mathcal{O}(r^{-2}) & \partial _{\phi}h_{\phi \phi}+2r^{3}h_{r\phi}+\mathcal{O}(r^{-2}) & -\frac{1}{r}h_{t\phi}+\mathcal{O}(r^{-3}) & -\frac{1}{r}h_{\phi \phi}+r^{3}h_{rr}+\mathcal{O}(r^{-3}) & \partial _{\phi}h_{rr}-\frac{2}{r}h_{r\phi}
\end{array}
$$

$$
\begin{array}{c|cccccc}
\mathcal{O}(r^{n}) & h_{tt} & h_{t\phi} & h_{\phi \phi} & h_{tr} & h_{r\phi} & h_{rr} \\
\hline \nabla ^{(0)}_{t} & 0 & 0 & 0 & -1 & -1 & -4 \\
\nabla ^{(0)}_{r} & -1 & -1 & -1 & -4 & -4 & -5 \\
\nabla ^{(0)}_{\phi} & 0 & 0 & 0 & -1 & -1 & -4
\end{array}
$$

*Christoffel symbols*

$$\begin{align}
\Gamma ^{\rho}_{~\mu \nu} & ={\Gamma ^{(0)}}^{\rho}_{~\mu \nu}+\frac{1}{2}g^{(0)\rho \sigma}(\nabla ^{(0)}_{\mu}h_{\sigma \nu}+\nabla _{\nu}^{(0)}h_{\mu \sigma}-\nabla ^{(0)}_{\sigma}h_{\mu \nu}) \\
 & +\frac{1}{2}h^{\rho \alpha}(\nabla ^{(0)}_{\alpha}h_{\mu \nu}-\nabla ^{(0)}_{\mu}h_{\alpha \nu}-\nabla ^{(0)}_{\nu}h_{\mu \alpha}) \\
 & +\frac{1}{2}h_{\alpha}^{~\beta}h^{\rho \alpha}(\nabla ^{(0)}_{\mu}h_{\beta \nu}+\nabla ^{(0)}_{\nu}h_{\mu \beta}-\nabla ^{(0)}_{\beta}h_{\mu \nu})+\mathcal{O}(h^{4})
\end{align}$$

$$\begin{align}
\Gamma ^{t}_{~tt} & =-\frac{1}{2r^{2}}\partial _{t}h_{tt}+r h_{tr}+\mathcal{O}(r^{-4}) \\
\Gamma ^{t}_{t\phi} & =-\frac{1}{2r^{2}}\partial _{\phi}h_{tt}+\frac{1}{2r^{4}}\partial _{\phi}h_{tt}-\frac{1}{2}h^{tt}\partial _{\phi}h_{tt}+\frac{1}{2}h^{tr}\partial _{r}h_{t\phi}-\frac{1}{2}h^{t\phi}\partial _{t}h_{\phi \phi}+\mathcal{O}(r^{-6}) \\

\end{align}$$

$$\begin{align}
\Gamma ^{t}_{\phi \phi} & =\frac{1}{2}\left( -\frac{1}{r^{2}}+\frac{1}{r^{4}}+\mathcal{O}(r^{-6}) \right)(2(\partial _{\phi}h_{t\phi}+r^{3}h_{tr}+\mathcal{O}(r^{-2}))-\partial _{t}h_{\phi \phi}) \\
 & =-\frac{1}{2r^{2}}(2\partial _{\phi}h_{t\phi}+2r^{3}h_{tr}-\partial _{t}h_{\phi \phi})+\mathcal{O}(r^{-4})
\end{align}$$

$$
\begin{array}{c|cccccc}
 & h_{tt} & h_{t\phi} & h_{\phi \phi} & h_{tr} & h_{r\phi} & h_{rr} \\
\hline \nabla ^{(0)}_{t} & \partial _{t}h_{tt}-2r^{3}h_{tr}+\mathcal{O}(r^{-2}) & \partial _{t}h_{t\phi}-r^{3}h_{r\phi} & \partial _{t}h_{\phi \phi} & -r^{3}h_{rr}-\frac{1}{r}h_{tt}+\mathcal{O}(r^{-3}) & -\frac{1}{r}h_{t\phi}+\mathcal{O}(r^{-3}) & \partial _{t}h_{rr}-\frac{2}{r}h_{tr}+\mathcal{O}(r^{-6}) \\
\nabla ^{(0)}_{r} & \partial _{r}h_{tt}-\frac{2}{r}h_{tt}+\mathcal{O}(r^{-3}) & \partial _{r}h_{t\phi}-\frac{2}{r}h_{t\phi}+\mathcal{O}(r^{-3}) & \partial _{r}h_{\phi \phi}-\frac{2}{r}h_{\phi \phi} & \partial _{r}h_{tr}+\mathcal{O}(r^{-6}) & \partial _{r}h_{r\phi}+\mathcal{O}(r^{-6}) & \partial _{r}h_{rr}+\frac{2}{r}h_{rr}+\mathcal{O}(r^{-7}) \\
\nabla ^{(0)}_{\phi} & \partial _{\phi}h_{tt} & \partial _{\phi}h_{t\phi}+r^{3}h_{tr}+\mathcal{O}(r^{-2}) & \partial _{\phi}h_{\phi \phi}+2r^{3}h_{r\phi}+\mathcal{O}(r^{-2}) & -\frac{1}{r}h_{t\phi}+\mathcal{O}(r^{-3}) & -\frac{1}{r}h_{\phi \phi}+r^{3}h_{rr}+\mathcal{O}(r^{-3}) & \partial _{\phi}h_{rr}-\frac{2}{r}h_{r\phi}
\end{array}
$$

$$\begin{align}
\Gamma ^{t}_{~tr} & =\frac{1}{r}-\frac{1}{r^{3}}+\mathcal{O}(r^{-5}) \\
\Gamma ^{r}_{~tt} & =r^{3}+r \\
\Gamma ^{r}_{~r r} & =-\frac{1}{r}+\frac{1}{r^{3}}+\mathcal{O}(r^{-5}) \\
\Gamma ^{r}_{~\phi \phi} & =-r^{3}-r \\
\Gamma ^{\phi}_{~r \phi} & =\frac{1}{r}
\end{align}$$

$$\begin{align}
\begin{array}{c|ccc}
\mathcal{O}(r^{n}) & h_{tt}, h_{t\phi}, h_{\phi \phi} & h_{tr},h_{r\phi} & h_{rr} \\
\hline & 0 & -3 & -4
\end{array} \\
\begin{array}{c|ccc}
\mathcal{O}(r^{n}) & h^{tt}, h^{t\phi}, h^{\phi \phi} & h^{tr},h^{r\phi} & h^{rr} \\
\hline & -4 & -3 & 0
\end{array} \\
\begin{array}{c|cccc}
\mathcal{O}(r^{n}) & h_{t}^{~t},h_{t}^{~\phi},h_{\phi}^{~t},h_{\phi}^{~\phi} & h_{t}^{~r},h_{\phi}^{~r} & h_{r}^{~t},h_{r}^{~\phi} & h_{r}^{~r} \\
\hline & -2 & -1 & -5 & -2
\end{array}
\end{align}$$

$$
\begin{array}{c|cccccc}
& g^{(0)}_{tt} & g^{(0)}_{rr} & g^{(0)}_{\phi \phi} & g^{(0)tt} & g^{(0)rr} & g^{(0)\phi \phi} \\
\hline & -r^{2}-1 & \frac{1}{r^{2}} -\frac{1}{r^{4}}+\mathcal{O}(r^{-6}) & r^{2} & -\frac{1}{r^{2}}+\frac{1}{r^{4}}+\mathcal{O}(r^{-6}) & r^{2}+1 & \frac{1}{r^{2}}
\end{array}
$$

---
