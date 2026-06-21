we follow the procedure in the second part in [[Articles/Quantization in AdS/linearized gravity/solving modes|solving modes]]. for the first order equation

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

For a single mode parameterized by $\displaystyle{b_{n,\bar n}}$, set all other $\displaystyle{b_{m,\bar m}}$ to zero. The unnormalized unbarred branch mode can be written as

$$\begin{align}
h^{(+)}_{\mu \nu,n,\bar{n}}&=b_{n,\bar n}h^{(+)}_{ab,n,\bar n}\xi_{a,\mu}\xi_{b,\nu}, \\
h^{(+)}_{ab,n,\bar n}&=\begin{pmatrix}
\phi_{n,\bar n} & 2i\sqrt{\frac{n}{n+3}}\phi_{n-1,\bar n} & -\sqrt{\frac{n(n-1)}{(n+2)(n+3)}}\phi_{n-2,\bar n} \\
2i\sqrt{\frac{n}{n+3}}\phi_{n-1,\bar n} & -4\sqrt{\frac{n(n-1)}{(n+2)(n+3)}}\phi_{n-2,\bar n} & -2i\sqrt{\frac{n(n-1)(n-2)}{(n+1)(n+2)(n+3)}}\phi_{n-3,\bar n} \\
-\sqrt{\frac{n(n-1)}{(n+2)(n+3)}}\phi_{n-2,\bar n} & -2i\sqrt{\frac{n(n-1)(n-2)}{(n+1)(n+2)(n+3)}}\phi_{n-3,\bar n} & \sqrt{\frac{(n-1)(n-2)(n-3)}{(n+1)(n+2)(n+3)}}\phi_{n-4,\bar n}
\end{pmatrix}_{ab}, \quad a,b=(1,0,-1).
\end{align}$$

Entries containing $\displaystyle{\phi_{m,\bar n}}$ with $\displaystyle{m<0}$ are omitted. Using the symplectic form

$$\begin{align}
\omega & =-\frac{1}{32\pi G}\int _{\Sigma}\mathrm{d}^{2}x\sqrt{ \sigma ^{(0)} }\tau _{\mu}\delta h^{\nu \rho}\wedge \nabla ^{(0)\mu}\delta h_{\nu \rho} \\
 & +\frac{1}{16\pi G}\int _{\partial \Sigma}\mathrm{d}x\sqrt{ h^{(0)} }\tau _{\mu}n_{\nu}\delta h^{\mu}_{~\rho}\wedge \delta h^{\nu \rho}
\end{align}$$

and the normalized primary coefficient $\displaystyle{8\sqrt{6\pi G}}$ in the $\displaystyle{\phi_{0,0}}$ convention, the unnormalized modes satisfy

$$\begin{align}
\omega[h^{(+)}_{n,\bar n},(h^{(+)}_{m,\bar m})^{*}]&=-\frac{i}{384\pi G}\frac{(0)_{n}}{(4)_{n}}\delta_{nm}\delta_{\bar n\bar m}b_{n,\bar n}b^{*}_{m,\bar m} \\
&=-\frac{i}{384\pi G}\delta_{n0}\delta_{m0}\delta_{\bar n\bar m}b_{0,\bar n}b^{*}_{0,\bar m}.
\end{align}$$

Thus only the $\displaystyle{n=0}$ tower has non-zero symplectic norm. For the basis mode $\displaystyle{b_{0,\bar n}=1}$, the condition

$$\begin{align}
\omega[h,h^{*}]&=-i
\end{align}$$

gives

$$\begin{align}
C_{0,\bar n}&=8\sqrt{6\pi G}, & \omega[C_{0,\bar n}h^{(+)}_{0,\bar n},(C_{0,\bar m}h^{(+)}_{0,\bar m})^{*}]&=-i\delta_{\bar n\bar m}.
\end{align}$$

The modes with $\displaystyle{n>0}$ are null with respect to $\displaystyle{\omega}$ and have no finite normalization to $\displaystyle{-i}$.

---

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

For a single mode parameterized by $\displaystyle{\tilde{b}_{n,\bar n}}$, set all other $\displaystyle{\tilde{b}_{m,\bar m}}$ to zero. The unnormalized barred branch mode can be written as

$$\begin{align}
h^{(-)}_{\mu \nu,n,\bar{n}}&=\tilde{b}_{n,\bar n}h^{(-)}_{ab,n,\bar n}\bar{\xi}_{a,\mu}\bar{\xi}_{b,\nu}, \\
h^{(-)}_{ab,n,\bar n}&=\begin{pmatrix}
\phi_{n,\bar n} & 2i\sqrt{\frac{\bar n}{\bar n+3}}\phi_{n,\bar n-1} & -\sqrt{\frac{\bar n(\bar n-1)}{(\bar n+2)(\bar n+3)}}\phi_{n,\bar n-2} \\
2i\sqrt{\frac{\bar n}{\bar n+3}}\phi_{n,\bar n-1} & -4\sqrt{\frac{\bar n(\bar n-1)}{(\bar n+2)(\bar n+3)}}\phi_{n,\bar n-2} & -2i\sqrt{\frac{\bar n(\bar n-1)(\bar n-2)}{(\bar n+1)(\bar n+2)(\bar n+3)}}\phi_{n,\bar n-3} \\
-\sqrt{\frac{\bar n(\bar n-1)}{(\bar n+2)(\bar n+3)}}\phi_{n,\bar n-2} & -2i\sqrt{\frac{\bar n(\bar n-1)(\bar n-2)}{(\bar n+1)(\bar n+2)(\bar n+3)}}\phi_{n,\bar n-3} & \sqrt{\frac{(\bar n-1)(\bar n-2)(\bar n-3)}{(\bar n+1)(\bar n+2)(\bar n+3)}}\phi_{n,\bar n-4}
\end{pmatrix}_{ab}, \quad a,b=(1,0,-1).
\end{align}$$

Entries containing $\displaystyle{\phi_{n,m}}$ with $\displaystyle{m<0}$ are omitted. The symplectic pairing of the unnormalized barred modes is

$$\begin{align}
\omega[h^{(-)}_{n,\bar n},(h^{(-)}_{m,\bar m})^{*}]&=-\frac{i}{384\pi G}\frac{(0)_{\bar n}}{(4)_{\bar n}}\delta_{nm}\delta_{\bar n\bar m}\tilde{b}_{n,\bar n}\tilde{b}^{*}_{m,\bar m} \\
&=-\frac{i}{384\pi G}\delta_{\bar n0}\delta_{\bar m0}\delta_{nm}\tilde{b}_{n,0}\tilde{b}^{*}_{m,0}.
\end{align}$$

Thus only the $\displaystyle{\bar n=0}$ tower has non-zero symplectic norm. For the basis mode $\displaystyle{\tilde{b}_{n,0}=1}$,

$$\begin{align}
\tilde{C}_{n,0}&=8\sqrt{6\pi G}, & \omega[\tilde{C}_{n,0}h^{(-)}_{n,0},(\tilde{C}_{m,0}h^{(-)}_{m,0})^{*}]&=-i\delta_{nm}.
\end{align}$$

The modes with $\displaystyle{\bar n>0}$ are null with respect to $\displaystyle{\omega}$ and have no finite normalization to $\displaystyle{-i}$.
