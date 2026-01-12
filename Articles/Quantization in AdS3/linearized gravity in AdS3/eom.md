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

this is a linear hyperbolic equation for $\displaystyle{\xi _{\mu}}$, thus we can always find a solution at least locally.

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
(\mathcal{D}^{+}\mathcal{D}^{-}h)_{\mu \nu} & =-\nabla ^{(0)2}h_{\mu \nu}-2h_{\mu \nu} \\
 & =0
\end{align}$$

thus there are two braches of solutions, which are called left-moving massless mode and right-moving massless mode respectively, denoted as $\displaystyle{h^{L}_{\mu \nu}}$ and $\displaystyle{h^{R}_{\mu \nu}}$. (however the discussion here has no relation with below discussion of linearized solutions)

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
 & =2\bar{\xi}_{-1}^{\mu}\bar{\xi}_{1}^{\nu}+2\bar{\xi}_{1}^{\mu}\bar{\xi}_{-1}^{\nu}-4\bar{\xi}_{0}^{\mu}\bar{\xi}_{0}^{\nu} \\
\varepsilon ^{\mu \nu \rho}\varepsilon _{\alpha \beta \gamma} & =-(\delta ^{\mu}_{\alpha}\delta ^{\nu}_{\beta}\delta ^{\rho}_{\gamma}+\delta ^{\mu}_{\beta}\delta ^{\nu}_{\gamma}\delta ^{\rho}_{\alpha}+\delta ^{\mu}_{\gamma}\delta ^{\nu}_{\alpha}\delta ^{\rho}_{\beta}-\delta ^{\mu}_{\alpha}\delta ^{\nu}_{\gamma}\delta ^{\rho}_{\beta}-\delta ^{\mu}_{\beta}\delta ^{\nu}_{\alpha}\delta ^{\rho}_{\gamma}-\delta ^{\mu}_{\gamma}\delta ^{\nu}_{\beta}\delta ^{\rho}_{\alpha}) \\
\varepsilon ^{\mu \nu \rho}\varepsilon _{\alpha \beta \rho} & =-(\delta ^{\mu}_{\alpha}\delta ^{\nu}_{\beta}-\delta ^{\mu}_{\beta}\delta ^{\nu}_{\alpha})
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
(\mathcal{C}-\mathcal{\bar{C}})^{2}h_{\mu \nu} & =4\nabla ^{(0)2}h_{\mu \nu}-2\nabla ^{(0)} _{\rho}\nabla ^{(0)} _{\mu}h^{\rho}_{~\nu}-2\nabla ^{(0)}_{\rho}\nabla ^{(0)}_{\nu}h_{\mu}^{~\rho} \\
 & =4\nabla ^{(0)2}h_{\mu \nu}-2[\nabla ^{(0)}_{\rho},\nabla ^{(0)}_{\mu}]h^{\rho}_{~\nu}-2[\nabla ^{(0)}_{\rho},\nabla ^{(0)}_{\nu}]h_{\mu}^{~\rho} \\
 & =4\nabla ^{(0)2}h_{\mu \nu}+12h_{\mu \nu} \\
 & =4h_{\mu \nu}
\end{align}$$

here we use

$$\begin{align}
R^{(0)}_{\mu \nu \rho \sigma} & =g^{(0)}_{\mu \sigma}g^{(0)}_{\nu \rho}-g^{(0)}_{\mu \rho}g^{(0)}_{\nu \sigma} \\
R^{(0)}_{\mu \nu} & =-2g^{(0)}_{\mu \nu} \\
R^{(0)} & =-6
\end{align}$$

and we ignore the $\displaystyle{\nabla ^{(0)}_{\mu}h^{\mu \nu}}$ and $\displaystyle{h}$ terms since they vanish for transverse traceless modes. therefore we solves the eigenvalues of the Casimir operators as

$$\begin{align}
\mathcal{C}h_{\mu \nu} & =-2h_{\mu \nu} \\
\mathcal{\bar{C}}h_{\mu \nu} & =0
\end{align}$$

which corresponds to the left-moving massless mode, and

$$\begin{align}
\mathcal{C}h_{\mu \nu} & =0 \\
\mathcal{\bar{C}}h_{\mu \nu} & =-2
\end{align}$$

which corresponds to the right-moving massless mode. since one of the Casimir vanishes, thus the highest weight representation can be constructed by applying only one copy of lowering operators. for the left/right-moving massless mode $\displaystyle{h_{L/R,0,0}^{\mu \nu}}$ with positive frequency, which corresponds to the highest weight state with $\displaystyle{h=2,\bar{h}=0}$/$\displaystyle{h=0,\bar{h}=2}$, we have the following equations

$$\begin{align}
\mathcal{L}_{\xi _{1}}h_{L,0}^{\mu \nu} & =0 \\
\mathcal{L}_{\bar{\xi}_{a}}h_{L,0}^{\mu \nu} & =0, a=0, \pm 1 \\
\mathcal{L}_{\bar{\xi}_{1}}h_{R,0}^{\mu \nu} & =0 \\
\mathcal{L}_{\xi _{a}}h_{R,0}^{\mu \nu} & =0, a=0,\pm 1
\end{align}$$

the solutions are given by boundary gravitons. ... at the moment I don't have the explicit expressions for them.

---

then the descendants can be generated by acting the lowering operators

$$\begin{align}
h_{L,n}^{\mu \nu} & =\sharp\mathcal{L}_{\xi _{-1}}^{n}h_{L,0}^{\mu \nu} \\
h_{R,n}^{\mu \nu} & =\sharp\mathcal{L}_{\bar{\xi}_{-1}}^{n}h_{R,0}^{\mu \nu}
\end{align}$$

here $\displaystyle{\sharp}$ is the normalization factor to be determined by the symplectic form. the symplectic potential is given by

$$\begin{align}
\theta & =\int _{\Sigma}\mathrm{d}^{2}x\sqrt{ \sigma }\tau _{\rho}\Theta ^{\rho} \\
\Theta ^{\rho} & =-2(\delta ^{\rho}_{\mu}h_{\nu}^{~\sigma}\nabla ^{(0)}_{\sigma}\delta h^{\mu \nu}-\nabla ^{(0)}_{\mu}h_{\nu}^{~\rho}\delta h^{\mu \nu}) \\
 & +g^{(0)\rho \sigma}(h_{\mu \nu}\nabla ^{(0)}_{\sigma}\delta h^{\mu \nu}-\nabla ^{(0)}_{\sigma}h_{\mu \nu}\delta h^{\mu \nu}) \\
 & -\frac{1}{2}(\nabla ^{(0)}_{\mu}h_{\nu}^{~\rho}+\nabla ^{(0)}_{\nu}h_{\mu}^{~\rho})\delta h^{\mu\nu}+\frac{3}{2}\nabla ^{(0)\rho}h^{\mu \nu}\delta h_{\mu \nu}
\end{align}$$

here we have imposed the gauge conditions $\displaystyle{h=0,\nabla _{\mu}^{(0)}h^{\mu \nu}=0}$. the symplectic form is given by

$$\begin{align}
\omega & =\delta \theta \\
 & =\int _{\Sigma}\mathrm{d}^{2}x\sqrt{ \sigma }\tau _{\rho}\left( -\frac{3}{2}\delta h^{\mu \nu}\wedge (\nabla ^{(0)}_{\mu}\delta h_{\nu}^{~\rho}+\nabla _{\nu}^{(0)}\delta h_{\mu}^{~\rho})+\frac{1}{2}\delta h_{\mu \nu}\wedge\nabla ^{(0)\rho}\delta h^{\mu \nu} \right)
\end{align}$$

the each modes are orthogonal with respect to the symplectic form in the sense that

$$\begin{align}
\omega[h_{L,n_{1}},h^{*}_{R,n_{2}}] & =0 \\
\omega[h_{L,n_{1}},h^{*}_{L,n_{2}}] & =-i\delta _{n_{1}n_{2}} \\
\omega[h_{R,n_{1}},h^{*}_{R,n_{2}}] & =-i\delta _{n_{1}n_{2}}
\end{align}$$

take the expansion

$$\begin{align}
h^{\mu \nu} & =\sum _{n=0}^{\infty}(a_{L,n}h_{L,n}^{\mu \nu}+a_{R,n}h_{R,n}^{\mu \nu}+a_{L,n}^{\dagger}h_{L,n}^{*\mu \nu}+a_{R,n}^{\dagger}h_{R,n}^{*\mu \nu})
\end{align}$$

the Noether charges associated with $\displaystyle{\xi}$'s are given by

$$\begin{align}
H_{\xi} & =\frac{1}{2}\omega[h,\mathcal{L}_{\xi}h] \\
\implies H_{\xi_{0}} & =\sum _{n=0}^{\infty}(n+2)a_{L,n}a^{\dagger}_{L,n}\\
H_{\bar{\xi}_{0}} & =\sum ^{\infty}_{n=0}(n+2)a_{R,n}a^{\dagger}_{R,n}
\end{align}$$

thus the Hamiltonian and angular momentum are given by

$$\begin{align}
H & =H_{\xi _{0}}+H_{\bar{\xi}_{0}}\\
 & =\sum ^{\infty}_{n=0}(n+2)(a_{L,n}a^{\dagger}_{L,n}+a_{R,n}a^{\dagger}_{R,n}) \\
J & =H_{\bar{\xi} _{0}}-H_{\xi _{0}} \\
 & =\sum ^{\infty}_{n=0}(n+2)(-a_{L,n}a^{\dagger}_{L,n}+a_{R,n}a^{\dagger}_{R,n})
\end{align}$$

at quantum level, we lift $\displaystyle{a_{L/R,n}}$ and $\displaystyle{a^{\dagger}_{L/R,n}}$ to annihilation and creation operators that satisfies the following non-vanishing commutation relations

$$\begin{align}
[a_{L,n_{1}},a^{\dagger}_{L,n_{2}}] & =\delta _{n_{1}n_{2}} \\
[a_{R,n_{1}},a^{\dagger}_{R,n_{2}}] & =\delta _{n_{1}n_{2}}
\end{align}$$

same old story. the Hamiltonian and angular momentum operators are given by

$$\begin{align}
H & =\sum ^{\infty}_{n=0}(n+2)(a^{\dagger}_{L,n}a_{L,n}+a^{\dagger}_{R,n}a_{R,n}) \\
J & =\sum ^{\infty}_{n=0}(n+2)(-a^{\dagger}_{L,n}a_{L,n}+a^{\dagger}_{R,n}a_{R,n})
\end{align}$$

here we have picked normal ordering. the quantum partition function can be computed

$$\begin{align}
Z[\beta,\alpha] & =\mathrm{Tr}e^{-\beta H+i\alpha J} \\
 & =\prod ^{\infty}_{m=0}\sum ^{\infty}_{n=0} q^{(m+2)n}\sum ^{\infty}_{\bar{n}=0}\bar{q}^{(m+2)\bar{n}} \\
 & =\prod ^{\infty}_{m=2}\frac{1}{|1-q^{m}|^{2}}
\end{align}$$

here we have introduced the moduli $\displaystyle{\tau =\frac{1}{2\pi}(\alpha+i\beta)}$, and $\displaystyle{q=e^{2\pi i\tau}}$. 

and by the same procudure in [[Articles/Quantization in AdS3/Proca in AdS3/coherent state path integral|coherent state path integral]], we can recover this result. [Xi Yin's result](https://arxiv.org/abs/0804.1773) reads

$$\begin{align}
Z(\tau,\tau) & =\prod ^{\infty}_{m=2} \frac{1}{|1-q^{m}|^{2}}
\end{align}$$

