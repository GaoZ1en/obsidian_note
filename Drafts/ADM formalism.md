suppose the spacetime is foliated by a set of timelike hypersurfaces, which is given by

$$
\begin{align}
x^{\mu} & =X^{\mu}(x^{a},t)
\end{align}
$$

the vector connecting the points of two hypersurfaces is given by $\displaystyle{\partial _{t}}$

$$\tag{1.1}
\begin{align}
\frac{\partial}{\partial t} & =\frac{\mathrm{d}X^{\mu}}{\mathrm{d}t}\frac{\partial}{\partial x^{\mu}}=\tau^{\mu} \frac{\partial}{\partial x^{\mu}}
\end{align}
$$

where the vector $\displaystyle{\tau ^{\mu}}$ can be decompose into its projection on the hypersurface and its normal

$$\tag{1.2}
\begin{align}
\tau^{\mu} & =Nn^{\mu}+N^{a}e^{\mu}_{a}
\end{align}
$$

where $\displaystyle{e^{\mu}_{a}=\partial _{a}X^{\mu}}$ is the tangent vectors to the hypersurface, and $\displaystyle{n^{\mu}}$ is the unit normal vector to the hypersurface, that satisfies

$$\tag{1.3}
\begin{align}
g_{\mu \nu}e^{\mu}_{a}n^{\nu} & =0, & g_{\mu \nu}n^{\mu}n^{\nu} & =-1
\end{align}
$$

thus we have $\displaystyle{\tau_{\mu}=-Nn_{\mu}+N_{a}e^{a}_{\mu}}$. then in the basis $\displaystyle{\left\{\tau^{\mu},e^{\mu}_{a}\right\}}$ we have

$$\tag{.}
\begin{align}
g_{00} & =g_{\mu \nu}\tau^{\mu}\tau^{\nu} \\
 & =-N^{2}+\sigma_{ab}N^{a}N^{b} \\
g_{0a} & =g_{\mu \nu}\tau^{\mu}e^{\nu}_{a} \\
 & =\sigma _{ab}N^{b}=N_{a} \\
g_{ab} & =g_{\mu \nu}e^{\mu}_{a}e^{\nu}_{b} \\
 & =\sigma _{ab}
\end{align}
$$

and

$$\tag{.}
\begin{align}
\mathrm{d}s^{2} & =-N^{2}\mathrm{d}t^{2}+\sigma _{ab}(\mathrm{d}x^{a}+N^{a}\mathrm{d}t)(\mathrm{d}x^{b}+N^{b}\mathrm{d}t) \\
g_{\mu \nu} & =(-N^{2}+\sigma _{ab}N^{a}N^{b})n_{\mu}n_{\nu}+\sigma _{ab}N^{a}(n_{\mu}e^{b}_{\nu}+n_{\nu}e^{b}_{\mu})+\sigma _{ab}e^{a}_{\mu}e^{b}_{\nu} \\
g^{\mu \nu} & =-\frac{1}{N^{2}}n^{\mu}n^{\nu}+\frac{N^{a}}{N^{2}}(n^{\mu}e^{\nu}_{a}+n^{\nu}e^{\mu}_{a})+\left( \sigma ^{ab}-\frac{N^{a}N^{b}}{N^{2}} \right)e^{\mu}_{a}e^{\nu}_{b} \\
\sqrt{ -g } & =N\sqrt{ \sigma }
\end{align}
$$

notice that

$$\tag{.}\begin{align}
R & =\tilde{R}-K_{ab}K^{ab}+K^{2}-2R_{\mu \nu}n^{\mu}n^{\nu}
\end{align}$$

the 4th term

$$\tag{.}\begin{align}
n^{\mu}R_{\mu \nu}n^{\nu} & =n^{\mu}(\nabla _{\nu}\nabla _{\mu}-\nabla _{\mu}\nabla _{\nu})n^{\nu} \\
 & =\nabla _{\nu}(n^{\mu}\nabla _{\mu}n^{\nu})-\nabla _{\nu}n^{\mu}\nabla _{\mu}n^{\nu}-\nabla _{\mu}(n^{\mu}\nabla _{\nu}n^{\nu})+\nabla _{\mu}n^{\mu}\nabla _{\nu}n^{\nu} \\
 & =\nabla _{\mu}(n^{\nu}\nabla _{\nu}n^{\mu}-n^{\mu}\nabla _{\nu}n^{\nu})+K^{2}-K_{ab}K^{ab}
\end{align}$$

ignore all the boundary terms at present

$$\tag{.}\begin{align}
S & =\frac{1}{16\pi G}\int _{M}\mathrm{d}^{d}x\sqrt{ -g }R \\
 & =\frac{1}{16\pi G}\int _{M}\mathrm{d}t\mathrm{d}^{d-1}xN\sqrt{ \sigma }(\tilde{R}+K_{ab}K^{ab}-K^{2})
\end{align}$$

the corresponding canonical momentums are

$$\tag{.}\begin{align}
\pi _{N} & =\frac{\delta \mathcal{L}}{\delta \dot{N}}=0 \\
\pi _{N_{a}} & = \frac{\delta \mathcal{L}}{\delta \dot{N}^{a}}=0 \\
\pi ^{ab} & =\frac{\delta \mathcal{L}}{\delta h_{ab}} \\
 & =2N\sqrt{ \sigma }\left(K^{cd}\frac{\delta K_{cd}}{\delta h_{ab}}-K \frac{\delta K}{}\right)
\end{align}$$