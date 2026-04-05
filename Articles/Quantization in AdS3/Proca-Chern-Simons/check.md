for Proca equation

$$\begin{align}
\nabla _{\mu}F^{\mu \nu} & =\mu ^{2}A^{\nu}
\end{align}$$

we can define operators

$$\begin{align}
(\mathcal{D}^{\pm})_{\mu}^{~\nu}A_{\nu} & =\varepsilon _{\mu}^{~\nu \rho}\nabla _{\nu}A_{\rho}\pm \mu A_{\mu}
\end{align}$$

these two operators satisfy

$$\begin{align}
[\mathcal{D}^{+},\mathcal{D}^{-}]A & =0
\end{align}$$

and commute with the action of Killing vectors

$$\begin{align}
[\mathcal{D}^{\pm},\mathcal{L}_{\xi}]A & =0
\end{align}$$

the eom can be decomposed into

$$\begin{align}
\mathcal{D}^{+}\mathcal{D}^{-}A & =0
\end{align}$$

thus any solution of the first order equation

$$\begin{align}
\mathcal{D}^{\pm}A & =0
\end{align}$$

is also a solution of the Proca equation. Furthermore, it can be shown that any solution of the Proca equation can be decomposed into a sum of solutions of the two first order equations, since the kernel of $\mathcal{D}^{+}\mathcal{D}^{-}$ is the direct sum of the kernels of $\mathcal{D}^{+}$ and $\mathcal{D}^{-}$, which is a consequence of the fact that the operators commute and have no common eigenvalues for generic $\displaystyle{\mu> 0}$.

the solutions of $\displaystyle{\mathcal{D}^{\pm}}$ are actually eigenstates of $\displaystyle{\mathcal{D}^{\mp}}$, i.e.

$$\begin{align}
\mathcal{D}^{\mp}A^{\pm} & =(\mathcal{D}^{\pm}\mp 2\mu)A^{\pm}=\mp 2\mu A^{\pm}
\end{align}$$

the highest weight solutions of the Proca equation can be summarized as two sets

$$\begin{align}
f_{+,0,0}^{\mu} & = \frac{e^{-i(\mu+2)t}}{(1+r^{2})^{(\mu+2)/2}}\xi _{1}^{\mu} \\
f_{+,n,\bar{n}}^{\mu} & =\sqrt{ \frac{1}{n!\bar{n}!(\mu)_{n}(\mu+2)_{\bar{n}}} }\mathcal{L}_{\xi _{-1}}^{n}\mathcal{L}_{\bar{\xi}_{-1}}^{\bar{n}}f_{+,0,0}^{\mu}
\end{align}$$

with conformal dimensions of the primary state $\displaystyle{f^{\mu}_{+,0,0}}$ $\displaystyle{(h,\bar{h})=\left(\frac{\mu}{2},\frac{\mu}{2}+1\right)}$. similarly, we have

$$\begin{align}
f_{-,0,0}^{\mu} & = \frac{e^{-i(\mu+2)t}}{(1+r^{2})^{(\mu+2)/2}}\bar{\xi}_{1}^{\mu} \\
f_{-,n,\bar{n}}^{\mu} & =\sqrt{ \frac{1}{n!\bar{n}!(\mu+2)_{n}(\mu+2)_{\bar{n}}} }\mathcal{L}_{\xi _{-1}}^{n}\mathcal{L}_{\bar{\xi}_{-1}}^{\bar{n}}f_{-,0,0}^{\mu}
\end{align}$$

with conformal dimensions of the primary state $\displaystyle{f^{\mu}_{-,0,0}}$ $\displaystyle{(h,\bar{h})=\left(\frac{\mu}{2}+1,\frac{\mu}{2}\right)}$.

we want to check that if $\displaystyle{\mathcal{D}^{\pm}f_{\pm,n,\bar{n}}^{\mu}=0}$. we only need to check the primary states since the operators commute with the action of Killing vectors. the Killing vectors are given by

$$\begin{align}
\xi _{1} & =\frac{1}{2}e^{i(t-\phi)}\left( r(1+r^{2})^{-1/2} \frac{\partial}{\partial t}-i(1+r^{2})^{1/2} \frac{\partial}{\partial r}-r^{-1}(1+r^{2})^{1/2} \frac{\partial}{\partial \phi} \right) \\
\xi _{0} & =\frac{1}{2}\left( \frac{\partial}{\partial t}-\frac{\partial}{\partial \phi} \right) \\
\xi _{-1} & =\frac{1}{2}e^{-i(t-\phi)}\left( r(1+r^{2})^{-1/2} \frac{\partial}{\partial t}+i(1+r^{2})^{1/2} \frac{\partial}{\partial r}-r^{-1}(1+r^{2})^{1/2} \frac{\partial}{\partial \phi} \right) \\
\bar{\xi}_{1} & =\frac{1}{2}e^{i(t+\phi)}\left( r(1+r^{2})^{-1/2} \frac{\partial}{\partial t}-i(1+r^{2})^{1/2} \frac{\partial}{\partial r}+r^{-1}(1+r^{2})^{1/2} \frac{\partial}{\partial \phi} \right) \\
\bar{\xi}_{0} & =\frac{1}{2}\left( \frac{\partial}{\partial t}+\frac{\partial}{\partial \phi} \right) \\
\bar{\xi}_{-1} & =\frac{1}{2}e^{-i(t+\phi)}\left( r(1+r^{2})^{-1/2} \frac{\partial}{\partial t}+i(1+r^{2})^{1/2} \frac{\partial}{\partial r}+r^{-1}(1+r^{2})^{1/2} \frac{\partial}{\partial \phi} \right)
\end{align}$$

by some code/calculation we find

$$\begin{align}
(\mathcal{D}^{+}f_{+,0,0}^{\mu})_{\mu} & =0 \\
(\mathcal{D}^{-}f_{-,0,0}^{\mu})_{\mu} & =0
\end{align}$$

are valid.
