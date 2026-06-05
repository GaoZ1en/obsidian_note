we follow the procedure in the second part in [[Articles/Quantization in AdS3/linearized gravity/solving modes|solving modes]]. for the first order equation

$$\begin{align}
\varepsilon _{\mu}^{~\nu \rho}\nabla ^{(0)}_{\rho}h_{\nu \sigma} & =h_{\mu \sigma}
\end{align}$$

we expand

$$\begin{align}
h_{\mu \nu} & =h_{ab}\xi _{a,\mu}\xi _{b,\nu},\quad a,b\in\left\{-1,0,1\right\}
\end{align}$$

the gauge fixing conditions becomes

$$\begin{align}
 & h_{ab}=h_{ba} \\
h=0\implies & h_{1,-1}-\frac{1}{4}h_{00}=0 \\
\nabla ^{(0)}_{\mu}h^{\mu \nu}=0\implies & \mathcal{L}_{\xi_{1}}h_{11}+\mathcal{L}_{\xi_{0}}h_{10}+\mathcal{L}_{\xi _{-1}}h_{1,-1}=0 \\
 & \mathcal{L}_{\xi_{1}}h_{10}+\mathcal{L}_{\xi_{0}}h_{00}+\mathcal{L}_{\xi _{-1}}h_{0,-1}=0 \\
 & \mathcal{L}_{\xi _{1}}h_{1,-1}+\mathcal{L}_{\xi_{0}}h_{0,-1}+\mathcal{L}_{\xi _{-1}}h_{-1,-1}=0
\end{align}$$

and the first order equation becomes

$$\begin{align}
(2i\mathcal{L}_{\xi_{0}}-4)h_{11}+i\mathcal{L}_{\xi _{-1}}h_{10} & =0, & (2i\mathcal{L}_{\xi_{0}}-4)h_{10}+i\mathcal{L}_{\xi _{-1}}h_{00} & = 0, & (2i\mathcal{L}_{\xi_{0}}-2)h_{1,-1}+i\mathcal{L}_{\xi _{-1}}h_{0,-1}-\frac{1}{2}h_{00} & =0, \\
2i\mathcal{L}_{\xi _{-1}}h_{1,-1}-4h_{10}-2i\mathcal{L}_{\xi_{1}}h_{11} & =0, & -2i\mathcal{L}_{\xi_{1}}h_{10}-4h_{1,-1}-3h_{00}+2i\mathcal{L}_{\xi _{-1}}h_{0,-1} & = 0, & -2i\mathcal{L}_{\xi_{1}}h_{1,-1}-4h_{0,-1}+2i\mathcal{L}_{\xi _{-1}}h_{-1,-1} & =0, \\
-i\mathcal{L}_{\xi_{1}}h_{10}-(2+2i\mathcal{L}_{\xi_{0}})h_{1,-1}-\frac{1}{2}h_{00} & =0, & -i\mathcal{L}_{\xi _{1}}h_{00}-(4+2i\mathcal{L}_{\xi_{0}})h_{0,-1} & =0, & -i\mathcal{L}_{\xi _{1}}h_{0,-1}-(4+2i\mathcal{L}_{\xi_{0}})h_{-1,-1} & =0
\end{align}$$

The scalar equation for the coefficient functions is

$$\begin{align}
(\nabla ^{(0)2}-8)h_{ab}&=0,
\end{align}$$

which is the scalar equation $\displaystyle{(\nabla ^{(0)2}-\mu(\mu+2))h_{ab}=0}$ with $\displaystyle{\mu=2}$. A convenient positive-energy scalar basis is

$$\begin{align}
\phi _{n,\bar{n}}&=\frac{1}{\sqrt{n!\bar{n}!(4)_{n}(4)_{\bar{n}}}}\mathcal{L}_{\xi _{-1}}^{n}\mathcal{L}_{\bar{\xi}_{-1}}^{\bar{n}}\phi _{0,0}, & \phi _{0,0}&=\frac{1}{\sqrt{2\pi}}\frac{e^{-4it}}{(1+r^{2})^{2}}.
\end{align}$$

The unbarred Killing derivatives act on this basis as

$$\begin{align}
\mathcal{L}_{\xi _0}\phi_{n,\bar n}&=-i(n+2)\phi_{n,\bar n}, \\
\mathcal{L}_{\xi _{-1}}\phi_{n,\bar n}&=\sqrt{(n+1)(n+4)}\,\phi_{n+1,\bar n}, \\
\mathcal{L}_{\xi _1}\phi_{n,\bar n}&=-\sqrt{n(n+3)}\,\phi_{n-1,\bar n}.
\end{align}$$

Expand

$$\begin{align}
h_{ab}&=\sum_{n,\bar n=0}^{\infty}a_{ab,n,\bar n}\phi_{n,\bar n}, & a_{ab,n,\bar n}&=0\quad(n<0).
\end{align}$$

Substituting this expansion into the first-order equations gives, for each fixed $\displaystyle{\bar n}$,

$$\begin{align}
2n a_{11,n,\bar n}+i\sqrt{n(n+3)}a_{10,n-1,\bar n}&=0, \\
2n a_{10,n,\bar n}+i\sqrt{n(n+3)}a_{00,n-1,\bar n}&=0, \\
(2n+2)a_{1,-1,n,\bar n}+i\sqrt{n(n+3)}a_{0,-1,n-1,\bar n}-\frac{1}{2}a_{00,n,\bar n}&=0, \\
2i\sqrt{n(n+3)}a_{1,-1,n-1,\bar n}-4a_{10,n,\bar n}+2i\sqrt{(n+1)(n+4)}a_{11,n+1,\bar n}&=0, \\
2i\sqrt{(n+1)(n+4)}a_{10,n+1,\bar n}-4a_{1,-1,n,\bar n}-3a_{00,n,\bar n}+2i\sqrt{n(n+3)}a_{0,-1,n-1,\bar n}&=0, \\
2i\sqrt{(n+1)(n+4)}a_{1,-1,n+1,\bar n}-4a_{0,-1,n,\bar n}+2i\sqrt{n(n+3)}a_{-1,-1,n-1,\bar n}&=0, \\
i\sqrt{(n+1)(n+4)}a_{10,n+1,\bar n}-(2n+6)a_{1,-1,n,\bar n}-\frac{1}{2}a_{00,n,\bar n}&=0, \\
i\sqrt{(n+1)(n+4)}a_{00,n+1,\bar n}-(2n+8)a_{0,-1,n,\bar n}&=0, \\
i\sqrt{(n+1)(n+4)}a_{0,-1,n+1,\bar n}-(2n+8)a_{-1,-1,n,\bar n}&=0.
\end{align}$$

Together with the trace condition $\displaystyle{a_{1,-1,n,\bar n}=\frac{1}{4}a_{00,n,\bar n}}$, the relations are solved by one free coefficient family $\displaystyle{b_{n,\bar n}\equiv a_{11,n,\bar n}}$:

$$\begin{align}
a_{11,n,\bar n}&=b_{n,\bar n}, \\
a_{10,n,\bar n}&=2i\sqrt{\frac{n+1}{n+4}}\,b_{n+1,\bar n}, \\
a_{00,n,\bar n}&=-4\sqrt{\frac{(n+1)(n+2)}{(n+4)(n+5)}}\,b_{n+2,\bar n}, \\
a_{1,-1,n,\bar n}&=-\sqrt{\frac{(n+1)(n+2)}{(n+4)(n+5)}}\,b_{n+2,\bar n}, \\
a_{0,-1,n,\bar n}&=-2i\sqrt{\frac{(n+1)(n+2)(n+3)}{(n+4)(n+5)(n+6)}}\,b_{n+3,\bar n}, \\
a_{-1,-1,n,\bar n}&=\sqrt{\frac{(n+1)(n+2)(n+3)}{(n+5)(n+6)(n+7)}}\,b_{n+4,\bar n}.
\end{align}$$

For the other first-order branch,

$$\begin{align}
\varepsilon _{\mu}^{~\nu \rho}\nabla ^{(0)}_{\rho}h_{\nu \sigma}&=-h_{\mu \sigma},
\end{align}$$

expand

$$\begin{align}
h_{\mu \nu}&=h_{ab}\bar{\xi}_{a,\mu}\bar{\xi}_{b,\nu},\quad a,b\in\{-1,0,1\}.
\end{align}$$

The gauge fixing conditions are

$$\begin{align}
 & h_{ab}=h_{ba} \\
h=0\implies & h_{1,-1}-\frac{1}{4}h_{00}=0 \\
\nabla ^{(0)}_{\mu}h^{\mu \nu}=0\implies & \mathcal{L}_{\bar{\xi}_{1}}h_{11}+\mathcal{L}_{\bar{\xi}_{0}}h_{10}+\mathcal{L}_{\bar{\xi}_{-1}}h_{1,-1}=0 \\
 & \mathcal{L}_{\bar{\xi}_{1}}h_{10}+\mathcal{L}_{\bar{\xi}_{0}}h_{00}+\mathcal{L}_{\bar{\xi}_{-1}}h_{0,-1}=0 \\
 & \mathcal{L}_{\bar{\xi}_{1}}h_{1,-1}+\mathcal{L}_{\bar{\xi}_{0}}h_{0,-1}+\mathcal{L}_{\bar{\xi}_{-1}}h_{-1,-1}=0.
\end{align}$$

The first-order equation gives

$$\begin{align}
(4-2i\mathcal{L}_{\bar{\xi}_{0}})h_{11}-i\mathcal{L}_{\bar{\xi}_{-1}}h_{10}&=0, \\
(4-2i\mathcal{L}_{\bar{\xi}_{0}})h_{10}-i\mathcal{L}_{\bar{\xi}_{-1}}h_{00}&=0, \\
(2-2i\mathcal{L}_{\bar{\xi}_{0}})h_{1,-1}-i\mathcal{L}_{\bar{\xi}_{-1}}h_{0,-1}+\frac{1}{2}h_{00}&=0, \\
2i\mathcal{L}_{\bar{\xi}_{1}}h_{11}+4h_{10}-2i\mathcal{L}_{\bar{\xi}_{-1}}h_{1,-1}&=0, \\
2i\mathcal{L}_{\bar{\xi}_{1}}h_{10}+4h_{1,-1}+3h_{00}-2i\mathcal{L}_{\bar{\xi}_{-1}}h_{0,-1}&=0, \\
2i\mathcal{L}_{\bar{\xi}_{1}}h_{1,-1}+4h_{0,-1}-2i\mathcal{L}_{\bar{\xi}_{-1}}h_{-1,-1}&=0, \\
i\mathcal{L}_{\bar{\xi}_{1}}h_{10}+(2+2i\mathcal{L}_{\bar{\xi}_{0}})h_{1,-1}+\frac{1}{2}h_{00}&=0, \\
i\mathcal{L}_{\bar{\xi}_{1}}h_{00}+(4+2i\mathcal{L}_{\bar{\xi}_{0}})h_{0,-1}&=0, \\
i\mathcal{L}_{\bar{\xi}_{1}}h_{0,-1}+(4+2i\mathcal{L}_{\bar{\xi}_{0}})h_{-1,-1}&=0.
\end{align}$$

Use the same scalar basis $\displaystyle{\phi_{n,\bar n}}$. The barred Killing derivatives act as

$$\begin{align}
\mathcal{L}_{\bar{\xi}_{0}}\phi_{n,\bar n}&=-i(\bar n+2)\phi_{n,\bar n}, \\
\mathcal{L}_{\bar{\xi}_{-1}}\phi_{n,\bar n}&=\sqrt{(\bar n+1)(\bar n+4)}\,\phi_{n,\bar n+1}, \\
\mathcal{L}_{\bar{\xi}_{1}}\phi_{n,\bar n}&=-\sqrt{\bar n(\bar n+3)}\,\phi_{n,\bar n-1}.
\end{align}$$

Expand

$$\begin{align}
h_{ab}&=\sum_{n,\bar n=0}^{\infty}\tilde{a}_{ab,n,\bar n}\phi_{n,\bar n}, & \tilde{a}_{ab,n,\bar n}&=0\quad(\bar n<0).
\end{align}$$

Substituting into the barred first-order equations gives, for each fixed $\displaystyle{n}$,

$$\begin{align}
2\bar n\,\tilde{a}_{11,n,\bar n}+i\sqrt{\bar n(\bar n+3)}\tilde{a}_{10,n,\bar n-1}&=0, \\
2\bar n\,\tilde{a}_{10,n,\bar n}+i\sqrt{\bar n(\bar n+3)}\tilde{a}_{00,n,\bar n-1}&=0, \\
(2\bar n+2)\tilde{a}_{1,-1,n,\bar n}+i\sqrt{\bar n(\bar n+3)}\tilde{a}_{0,-1,n,\bar n-1}-\frac{1}{2}\tilde{a}_{00,n,\bar n}&=0, \\
2i\sqrt{\bar n(\bar n+3)}\tilde{a}_{1,-1,n,\bar n-1}-4\tilde{a}_{10,n,\bar n}+2i\sqrt{(\bar n+1)(\bar n+4)}\tilde{a}_{11,n,\bar n+1}&=0, \\
2i\sqrt{(\bar n+1)(\bar n+4)}\tilde{a}_{10,n,\bar n+1}-4\tilde{a}_{1,-1,n,\bar n}-3\tilde{a}_{00,n,\bar n}+2i\sqrt{\bar n(\bar n+3)}\tilde{a}_{0,-1,n,\bar n-1}&=0, \\
2i\sqrt{(\bar n+1)(\bar n+4)}\tilde{a}_{1,-1,n,\bar n+1}-4\tilde{a}_{0,-1,n,\bar n}+2i\sqrt{\bar n(\bar n+3)}\tilde{a}_{-1,-1,n,\bar n-1}&=0, \\
i\sqrt{(\bar n+1)(\bar n+4)}\tilde{a}_{10,n,\bar n+1}-(2\bar n+6)\tilde{a}_{1,-1,n,\bar n}-\frac{1}{2}\tilde{a}_{00,n,\bar n}&=0, \\
i\sqrt{(\bar n+1)(\bar n+4)}\tilde{a}_{00,n,\bar n+1}-(2\bar n+8)\tilde{a}_{0,-1,n,\bar n}&=0, \\
i\sqrt{(\bar n+1)(\bar n+4)}\tilde{a}_{0,-1,n,\bar n+1}-(2\bar n+8)\tilde{a}_{-1,-1,n,\bar n}&=0.
\end{align}$$

Together with $\displaystyle{\tilde{a}_{1,-1,n,\bar n}=\frac{1}{4}\tilde{a}_{00,n,\bar n}}$, these relations are solved by one free coefficient family $\displaystyle{\tilde{b}_{n,\bar n}\equiv\tilde{a}_{11,n,\bar n}}$:

$$\begin{align}
\tilde{a}_{11,n,\bar n}&=\tilde{b}_{n,\bar n}, \\
\tilde{a}_{10,n,\bar n}&=2i\sqrt{\frac{\bar n+1}{\bar n+4}}\,\tilde{b}_{n,\bar n+1}, \\
\tilde{a}_{00,n,\bar n}&=-4\sqrt{\frac{(\bar n+1)(\bar n+2)}{(\bar n+4)(\bar n+5)}}\,\tilde{b}_{n,\bar n+2}, \\
\tilde{a}_{1,-1,n,\bar n}&=-\sqrt{\frac{(\bar n+1)(\bar n+2)}{(\bar n+4)(\bar n+5)}}\,\tilde{b}_{n,\bar n+2}, \\
\tilde{a}_{0,-1,n,\bar n}&=-2i\sqrt{\frac{(\bar n+1)(\bar n+2)(\bar n+3)}{(\bar n+4)(\bar n+5)(\bar n+6)}}\,\tilde{b}_{n,\bar n+3}, \\
\tilde{a}_{-1,-1,n,\bar n}&=\sqrt{\frac{(\bar n+1)(\bar n+2)(\bar n+3)}{(\bar n+5)(\bar n+6)(\bar n+7)}}\,\tilde{b}_{n,\bar n+4}.
\end{align}$$

