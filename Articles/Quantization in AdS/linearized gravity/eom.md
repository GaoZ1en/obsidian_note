# general discussion

the eom of linearized gravity around a background metric $\displaystyle{g^{(0)}_{\mu \nu}}$ can be written as

$$\begin{align}
-h +\frac{1}{2}\nabla ^{(0)2}h-\frac{1}{2}\nabla ^{(0)}_{\mu}\nabla ^{(0)}_{\nu}h^{\mu \nu} & =0 \\
-h_{\mu \nu}+g^{(0)}_{\mu \nu}h-\frac{1}{2}\nabla ^{(0)2}h_{\mu \nu}+\frac{1}{2}\nabla ^{(0)}_{(\mu}(\nabla ^{(0)}_{\rho}h_{\nu)}^{~\rho}-\frac{1}{2}\nabla ^{(0)}_{\nu)}h) & =0
\end{align}$$

here we assume that the de Donder gauge condition can be always be imposed (at least onshell)

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
h & =0 \\
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

the solutions are given by boundary gravitons. here $\displaystyle{=}$ mean the equality holds up to a gauge transformation. then the descendants can be generated by acting the lowering operators

$$\begin{align}
h_{L,n}^{\mu \nu} & =\sharp\mathcal{L}_{\xi _{-1}}^{n}h_{L,0}^{\mu \nu} \\
h_{R,n}^{\mu \nu} & =\sharp\mathcal{L}_{\bar{\xi}_{-1}}^{n}h_{R,0}^{\mu \nu}
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

and by the same procudure in [[Articles/Quantization in AdS3/Proca/coherent state path integral|coherent state path integral]], we can recover this result. [Xi Yin's result](https://arxiv.org/abs/0804.1773) reads

$$\begin{align}
Z(\tau,\bar{\tau}) & =\prod ^{\infty}_{m=2} \frac{1}{|1-q^{m}|^{2}}
\end{align}$$

# explicit form

now we will find the explicit form of the highest weight solutions. the primary states $\displaystyle{h_{L,0}^{\mu \nu}}$ and $\displaystyle{h_{R,0}^{\mu \nu}}$ satisfy the following equations

$$\begin{align}
\mathcal{L}_{\xi _{1}}h_{L,0}^{\mu \nu} & =0 \\
\mathcal{L}_{\bar{\xi}_{a}}h_{L,0}^{\mu \nu} & =0, a=0, \pm 1 \\
\mathcal{L}_{\bar{\xi}_{1}}h_{R,0}^{\mu \nu} & =0 \\
\mathcal{L}_{\xi _{a}}h_{R,0}^{\mu \nu} & =0, a=0,\pm 1
\end{align}$$

where the Killing vectors are given by

$$\begin{align}
\xi _{1} & =\frac{1}{2}e^{i(t-\phi)}\left( r(1+r^{2})^{-1/2} \partial _{t}-i(1+r^{2})^{1/2} \partial _{r}-r^{-1}(1+r^{2})^{1/2}\partial _{\phi} \right) \\
\xi _{0} & =\frac{1}{2}(\partial _{t}-\partial _{\phi}) \\
\xi _{-1} & =\frac{1}{2}e^{-i(t-\phi)}(r(1+r^{2})^{-1/2}\partial _{t}+i(1+r^{2})^{1/2}\partial _{r}-r^{-1}(1+r^{2})^{1/2}\partial _{\phi} ) \\
\bar{\xi}_{1} & =\frac{1}{2}e^{i(t+\phi)}\left( r(1+r^{2})^{-1/2} \partial _{t}-i(1+r^{2})^{1/2} \partial _{r}+r^{-1}(1+r^{2})^{1/2}\partial _{\phi} \right) \\
\bar{\xi}_{0} & =\frac{1}{2}(\partial _{t}+\partial _{\phi}) \\
\bar{\xi}_{-1} & =\frac{1}{2}e^{-i(t+\phi)}(r(1+r^{2})^{-1/2}\partial _{t}+i(1+r^{2})^{1/2}\partial _{r}+r^{-1}(1+r^{2})^{1/2}\partial _{\phi} )
\end{align}$$

just observe that the primary states of the highest weight modes for Maxwell theory is given by

$$\begin{align}
A_{L,0}^{\mu} & =\frac{e^{-2it}}{1+r^{2}}\bar{\xi} _{1}^{\mu} \\
A_{R,0}^{\mu} & =\frac{e^{-2it}}{1+r^{2}}\xi_{1}^{\mu}
\end{align}$$

and they satisfies the highest weight conditions

$$\begin{align}
\mathcal{L}_{\xi _{a}}A_{L,0}^{\mu} & =0, a=0,\pm 1 \\
\mathcal{L}_{\bar{\xi}_{0}}A_{L,0}^{\mu} & =-iA_{L,0}^{\mu} \\
\mathcal{L}_{\bar{\xi}_{1}}A_{L,0}^{\mu} & =0 \\
\mathcal{L}_{\xi _{0}}A_{R,0}^{\mu} & =-iA_{R,0}^{\mu} \\
\mathcal{L}_{\xi _{1}}A_{R,0}^{\mu} & =0 \\
\mathcal{L}_{\bar{\xi}_{a}}A_{R,0}^{\mu} & =0, a=0,\pm 1
\end{align}$$

which are just the half of the highest weight conditions for linearized gravity, thus we can just "square" the highest weight state of Maxwell theory to get the highest weight state of linearized gravity as

$$\begin{align}
h_{L,0}^{\mu \nu} & =A^{\mu}_{L,0}A^{\nu}_{L,0} \\
h_{R,0}^{\mu \nu} & =A^{\mu}_{R,0}A^{\nu}_{R,0}
\end{align}$$

and the explicit expressions are given by

$$\begin{align}
h_{L,0}^{\mu \nu} & =\frac{e^{-4it}}{(1+r^{2})^{2}}\bar{\xi} _{1}^{\mu}\bar{\xi} _{1}^{\nu} \\
h_{R,0}^{\mu \nu} & =\frac{e^{-4it}}{(1+r^{2})^{2}}\xi_{1}^{\mu}\xi_{1}^{\nu}
\end{align}$$

or we can represent the primary states in the following form

$$\begin{align}
h_{\lambda,0}^{\mu \nu} & =e^{-i\omega t}e^{im\phi}f^{\mu \nu}(r)
\end{align}$$

where $\displaystyle{\lambda}$ denotes the different representations. and compute the action of Lie derivatives.

---

as a reference, the action of Lie derivatives on Maxwell fields are given by

$$\begin{align}
\mathcal{L}_{\xi_{0}}A_{\lambda,0,0}^{\mu} & =-\frac{i}{2}(\omega+m)A_{\lambda,0,0}^{\mu} \\
\mathcal{L}_{\bar{\xi}_{0}}A_{\lambda,0,0}^{\mu} & =-\frac{i}{2}(\omega-m)A_{\lambda,0,0}^{\mu}
\end{align}$$

and

$$\begin{align}
\mathcal{L}_{\xi_{1}}A_{\lambda,0,0}^{t} & =-\frac{i}{2}e^{-i(\omega-1)t}e^{i(m-1)\phi}(1+r^{2})^{1/2}\left(\partial _{r}f^{t}+\frac{(\omega+m+1)r^{2}+m}{r(1+r^{2})}f^{t}-\frac{i}{(1+r^{2})^{2}}f^{r}-\frac{r}{1+r^{2}}f^{\phi}\right) \\
\mathcal{L}_{\xi _{1}}A^{r}_{\lambda,0,0} & =-\frac{i}{2}e^{-i(\omega-1)t}e^{i(m-1)\phi}(1+r^{2})^{1/2}\left(-if^{t}+\partial _{r}f^{r}+\frac{(\omega+m-1)r^{2}+m}{r(1+r^{2})}f^{r}+if^{\phi}\right) \\
\mathcal{L}_{\xi _{1}}A^{\phi}_{\lambda,0,0} & =-\frac{i}{2}e^{-i(\omega-1)t}e^{i(m-1)\phi}(1+r^{2})^{1/2}\left(-\frac{1}{r}f^{t}-\frac{i}{r^{2}(1+r^{2})}f^{r}+\partial _{r}f^{\phi}+\frac{(\omega+m+1)r^{2}+(m+1)}{r(1+r^{2})}f^{\phi}\right)
\end{align}$$

$$\begin{align}
\mathcal{L}_{\bar{\xi}_{1}}A_{\lambda,0,0}^{t} & =-\frac{i}{2}e^{-i(\omega-1)t}e^{i(m+1)\phi}(1+r^{2})^{1/2}\left(\partial _{r}f^{t}+\frac{(\omega-m+1)r^{2}-m}{r(1+r^{2})}f^{t}-\frac{i}{(1+r^{2})^{2}}f^{r}+\frac{r}{1+r^{2}}f^{\phi}\right) \\
\mathcal{L}_{\bar{\xi}_{1}}A_{\lambda,0,0}^{r} & =-\frac{i}{2}e^{-i(\omega-1)t}e^{i(m+1)\phi}(1+r^{2})^{1/2}\left(-if^{t}+\partial _{r}f^{r}+\frac{(\omega-m-1)r^{2}-m}{r(1+r^{2})}f^{r}-if^{\phi}\right) \\
\mathcal{L}_{\bar{\xi}_{1}}A_{\lambda,0,0}^{\phi} & =-\frac{i}{2}e^{-i(\omega-1)t}e^{i(m+1)\phi}(1+r^{2})^{1/2}\left(\frac{1}{r}f^{t}+\frac{i}{r^{2}(1+r^{2})}f^{r}+\partial _{r}f^{\phi}+\frac{(\omega-m+1)r^{2}-(m-1)}{r(1+r^{2})}f^{\phi}\right)
\end{align}$$

$$\begin{align}
\mathcal{L}_{\xi _{-1}}A_{\lambda,0,0}^{t} & =\frac{i}{2}e^{-i(\omega+1)t}e^{i(m+1)\phi}(1+r^{2})^{1/2}\left(\partial _{r}f^{t}-\frac{(\omega+m-1)r^{2}+m}{r(1+r^{2})}f^{t}+\frac{i}{(1+r^{2})^{2}}f^{r}-\frac{r}{1+r^{2}}f^{\phi}\right) \\
\mathcal{L}_{\xi _{-1}}A_{\lambda,0,0}^{r} & =\frac{i}{2}e^{-i(\omega+1)t}e^{i(m+1)\phi}(1+r^{2})^{1/2}\left(if^{t}+\partial _{r}f^{r}-\frac{(\omega+m+1)r^{2}+m}{r(1+r^{2})}f^{r}-if^{\phi}\right) \\
\mathcal{L}_{\xi _{-1}}A_{\lambda,0,0}^{\phi} & =\frac{i}{2}e^{-i(\omega+1)t}e^{i(m+1)\phi}(1+r^{2})^{1/2}\left(-\frac{1}{r}f^{t}+\frac{i}{r^{2}(1+r^{2})}f^{r}+\partial _{r}f^{\phi}-\frac{(\omega+m-1)r^{2}+(m-1)}{r(1+r^{2})}f^{\phi}\right)
\end{align}$$

$$\begin{align}
\mathcal{L}_{\bar{\xi}_{-1}}A_{\lambda,0,0}^{t} & =\frac{i}{2}e^{-i(\omega+1)t}e^{i(m-1)\phi}(1+r^{2})^{1/2}\left(\partial _{r}f^{t}-\frac{(\omega-m-1)r^{2}-m}{r(1+r^{2})}f^{t}+\frac{i}{(1+r^{2})^{2}}f^{r}+\frac{r}{1+r^{2}}f^{\phi}\right) \\
\mathcal{L}_{\bar{\xi}_{-1}}A_{\lambda,0,0}^{r} & =\frac{i}{2}e^{-i(\omega+1)t}e^{i(m-1)\phi}(1+r^{2})^{1/2}\left(if^{t}+\partial _{r}f^{r}-\frac{(\omega-m+1)r^{2}-m}{r(1+r^{2})}f^{r}+if^{\phi}\right) \\
\mathcal{L}_{\bar{\xi}_{-1}}A_{\lambda,0,0}^{\phi} & =\frac{i}{2}e^{-i(\omega+1)t}e^{i(m-1)\phi}(1+r^{2})^{1/2}\left(\frac{1}{r}f^{t}-\frac{i}{r^{2}(1+r^{2})}f^{r}+\partial _{r}f^{\phi}-\frac{(\omega-m-1)r^{2}-(m+1)}{r(1+r^{2})}f^{\phi}\right)
\end{align}$$

---

$$\begin{align}
\mathcal{L}_{\xi_{0}}h_{\lambda,0}^{\mu \nu} & =-\frac{i}{2}(\omega+m)h_{\lambda,0}^{\mu \nu} \\
\mathcal{L}_{\bar{\xi}_{0}}h_{\lambda,0}^{\mu \nu} & =-\frac{i}{2}(\omega-m)h_{\lambda,0}^{\mu \nu}
\end{align}$$

and

$$\begin{align}
\mathcal{L}_{\xi _{1}}h_{\lambda,0}^{\mu \nu} & =\xi ^{\rho}\partial _{\rho}h_{\lambda,0}^{\mu \nu}-h^{\rho \nu}\partial _{\rho}\xi ^{\mu}-h^{\mu \rho}\partial _{\rho}\xi ^{\nu}
\end{align}$$

$$\begin{align}
\mathcal{L}_{\xi_{1}}h^{tt}_{\lambda,0} & =-\frac{i}{2}e^{-i(\omega-1)t}e^{i(m-1)\phi}(1+r^{2})^{1/2}\left(\partial _{r}f^{tt}+\frac{(\omega+m+2)r^{2}+m}{r(1+r^{2})}f^{tt}-\frac{2i}{(1+r^{2})^{2}}f^{r}-\frac{2r}{1+r^{2}}f^{\phi}\right) \\
\mathcal{L}_{\xi _{1}}h^{tr}_{\lambda,0} & =-\frac{i}{2}e^{-i(\omega-1)t}e^{i(m-1)\phi}(1+r^{2})^{1/2}\left(-if^{tt}+\partial _{r}f^{tr}+\frac{(\omega+m)r^{2}+m}{r(1+r^{2})}f^{tr}+if^{t\phi}-\frac{i}{(1+r^{2})^{2}}f^{rr}-\frac{r}{1+r^{2}}f^{r\phi}\right) \\
\mathcal{L}_{\xi_{1}}h_{\lambda,0}^{t\phi} & =-\frac{i}{2}e^{-i(\omega-1)t}e^{i(m-1)\phi}(1+r^{2})^{1/2}\left( -\frac{1}{r}f^{tt}-\frac{i}{r^{2}(1+r^{2})}f^{tr}+\partial _{r}f^{t\phi}+\frac{(\omega+m+2)r^{2}+(m+1)}{r(1+r^{2})}f^{t\phi}-\frac{i}{(1+r^{2})^{2}}f^{r\phi}-\frac{r}{1+r^{2}}f^{\phi \phi} \right) \\
\mathcal{L}_{\xi_{1}}h_{\lambda,0}^{rr} & =-\frac{i}{2}e^{-i(\omega-1)t}e^{i(m-1)\phi}(1+r^{2})^{1/2}\left(-2if^{tr}+\partial _{r}f^{rr}+\frac{(\omega+m-2)r^{2}+m}{r(1+r^{2})}f^{rr}+2if^{r\phi}\right) \\
\mathcal{L}_{\xi _{1}}h_{\lambda,0}^{r\phi} & =-\frac{i}{2}e^{-i(\omega-1)t}e^{i(m-1)\phi}(1+r^{2})^{1/2}\left(-\frac{1}{r}f^{tr}-if^{t\phi}-\frac{i}{r^{2}(1+r^{2})}f^{rr}+\partial _{r}f^{r\phi}+\frac{(\omega+m)r^{2}+(m+1)}{r(1+r^{2})}f^{r\phi}+if^{\phi \phi}\right) \\
\mathcal{L}_{\xi _{1}}h_{\lambda,0}^{\phi \phi} & =-\frac{i}{2}e^{-i(\omega-1)t}e^{i(m-1)\phi}(1+r^{2})^{1/2}\left(-\frac{2}{r}f^{t\phi}-\frac{2i}{r^{2}(1+r^{2})}f^{r\phi}+\partial _{r}f^{\phi \phi}+\frac{(\omega+m+2)r^{2}+(m+2)}{r(1+r^{2})}f^{\phi \phi}\right)
\end{align}$$

$$\begin{align}
\mathcal{L}_{\bar{\xi}_{1}}h_{\lambda,0}^{tt} & =-\frac{i}{2}e^{-i(\omega-1)t}e^{i(m+1)\phi}(1+r^{2})^{1/2}\left(\partial _{r}f^{tt}+\frac{(\omega-m+2)r^{2}-m}{r(1+r^{2})}f^{tt}-\frac{2i}{(1+r^{2})^{2}}f^{tr}+\frac{2r}{1+r^{2}}f^{r\phi}\right) \\
\mathcal{L}_{\bar{\xi}_{1}}h_{\lambda,0}^{tr} & =-\frac{i}{2}e^{-i(\omega-1)t}e^{i(m+1)\phi}(1+r^{2})^{1/2}\left(-if^{tt}+\partial _{r}f^{rr}+\frac{(\omega-m)r^{2}-m}{r(1+r^{2})}f^{tr}-if^{t\phi}-\frac{i}{(1+r^{2})^{2}}f^{rr}+\frac{r}{1+r^{2}}f^{r\phi}\right) \\
\mathcal{L}_{\bar{\xi}_{1}}h_{\lambda,0}^{t\phi} & =-\frac{i}{2}e^{-i(\omega-1)t}e^{i(m+1)\phi}(1+r^{2})^{1/2}\left(\frac{1}{r}f^{tt}+\frac{i}{r^{2}(1+r^{2})}f^{tr}+\partial _{r}f^{t\phi}+\frac{(\omega-m+2)r^{2}-(m-1)}{r(1+r^{2})}f^{t\phi}-\frac{i}{(1+r^{2})^{2}}f^{r\phi}+\frac{r}{1+r^{2}}f^{\phi \phi}\right) \\
\mathcal{L}_{\bar{\xi}_{1}}h_{\lambda,0}^{rr} & =-\frac{i}{2}e^{-i(\omega-1)t}e^{i(m+1)\phi}(1+r^{2})^{1/2}\left(-2if^{tr}+\partial _{r}f^{rr}+\frac{(\omega-m-2)r^{2}-m}{r(1+r^{2})}f^{rr}-2if^{r\phi}\right) \\
\mathcal{L}_{\bar{\xi}_{1}}h_{\lambda,0}^{r\phi} & =-\frac{i}{2}e^{-i(\omega-1)t}e^{i(m+1)\phi}(1+r^{2})^{1/2}\left(\frac{1}{r}f^{tr}-if^{t\phi}+\frac{i}{r^{2}(1+r^{2})}f^{rr}+\partial _{r}f^{r\phi}+\frac{(\omega-m)r^{2}-(m-1)}{r(1+r^{2})}f^{r\phi}-if^{\phi \phi}\right) \\
\mathcal{L}_{\bar{\xi}_{1}}h_{\lambda,0}^{\phi \phi} & =-\frac{i}{2}e^{-i(\omega-1)t}e^{i(m+1)\phi}(1+r^{2})^{1/2}\left(\frac{2}{r}f^{t\phi}+\frac{2i}{r^{2}(1+r^{2})}f^{r\phi}+\partial _{r}f^{\phi\phi}+\frac{(\omega-m+2)r^{2}-(m-2)}{r(1+r^{2})}f^{\phi \phi}\right)
\end{align}$$

$$\begin{align}
\mathcal{L}_{\xi _{-1}}h_{\lambda,0}^{tt} & =\frac{i}{2}e^{-i(\omega+1)t}e^{i(m+1)\phi}(1+r^{2})^{1/2}\left(\partial _{r}f^{tt}-\frac{(\omega+m-2)r^{2}+m}{r(1+r^{2})}f^{tt}+\frac{2i}{(1+r^{2})^{2}}f^{tr}-\frac{2r}{1+r^{2}}f^{t\phi}\right) \\
\mathcal{L}_{\xi _{-1}}h_{\lambda,0}^{tr} & =\frac{i}{2}e^{-i(\omega+1)t}e^{i(m+1)\phi}(1+r^{2})^{1/2}\left( if^{tt}+\partial _{r}f^{tr}-\frac{(\omega+m)r^{2}+m}{r(1+r^{2})}f^{tr}-if^{t\phi}+\frac{i}{(1+r^{2})^{2}}f^{rr}-\frac{r}{1+r^{2}}f^{r\phi} \right) \\
\mathcal{L}_{\xi _{-1}}h_{\lambda,0}^{t\phi} & =\frac{i}{2}e^{-i(\omega+1)t}e^{i(m+1)\phi}(1+r^{2})^{1/2}\left(-\frac{1}{r}f^{tt}+\frac{i}{r^{2}(1+r^{2})}f^{tr}+\partial _{r}f^{t\phi}-\frac{(\omega+m-2)r^{2}+(m-1)}{r(1+r^{2})}f^{t\phi}+\frac{i}{(1+r^{2})^{2}}f^{r\phi}-\frac{r}{1+r^{2}}f^{\phi \phi}\right) \\
\mathcal{L}_{\xi _{-1}}h_{\lambda,0}^{rr} & =\frac{i}{2}e^{-i(\omega+1)t}e^{i(m+1)\phi}(1+r^{2})^{1/2}\left(2if^{tr}+\partial _{r}f^{rr}-\frac{(\omega+m+2)r^{2}+m}{r(1+r^{2})}f^{rr}-2if^{r\phi}\right) \\
\mathcal{L}_{\xi _{-1}}h_{\lambda,0}^{r\phi} & =\frac{i}{2}e^{-i(\omega+1)t}e^{i(m+1)\phi}(1+r^{2})^{1/2}\left(-\frac{1}{r}f^{tr}+if^{t\phi}+\frac{i}{r^{2}(1+r^{2})}f^{rr}+\partial _{r}f^{r\phi}-\frac{(\omega+m)r^{2}+(m-1)}{r(1+r^{2})}f^{r\phi}-if^{\phi \phi}\right) \\
\mathcal{L}_{\xi _{-1}}h_{\lambda,0}^{\phi \phi} & =\frac{i}{2}e^{-i(\omega+1)t}e^{i(m+1)\phi}(1+r^{2})^{1/2}\left(-\frac{2}{r}f^{t\phi}+\frac{2i}{r^{2}(1+r^{2})}f^{r\phi}+\partial _{r}f^{\phi \phi}-\frac{(\omega+m-2)r^{2}+(m-2)}{r(1+r^{2})}f^{\phi \phi}\right)
\end{align}$$

$$\begin{align}
\mathcal{L}_{\bar{\xi} _{-1}}h_{\lambda,0}^{tt} & =\frac{i}{2}e^{-i(\omega+1)t}e^{i(m-1)\phi}(1+r^{2})^{1/2}\left(\partial _{r}f^{tt}-\frac{(\omega-m-2)r^{2}-m}{r(1+r^{2})}f^{tt}+\frac{2i}{(1+r^{2})^{2}}f^{tr}+\frac{2r}{1+r^{2}}f^{t\phi}\right) \\
\mathcal{L}_{\bar{\xi} _{-1}}h_{\lambda,0}^{tr} & =\frac{i}{2}e^{-i(\omega+1)t}e^{i(m-1)\phi}(1+r^{2})^{1/2}\left( if^{tt}+\partial _{r}f^{tr}-\frac{(\omega-m)r^{2}-m}{r(1+r^{2})}f^{tr}+if^{t\phi}+\frac{i}{(1+r^{2})^{2}}f^{rr}+\frac{r}{1+r^{2}}f^{r\phi} \right) \\
\mathcal{L}_{\bar{\xi} _{-1}}h_{\lambda,0}^{t\phi} & =\frac{i}{2}e^{-i(\omega+1)t}e^{i(m-1)\phi}(1+r^{2})^{1/2}\left(\frac{1}{r}f^{tt}-\frac{i}{r^{2}(1+r^{2})}f^{tr}+\partial _{r}f^{t\phi}-\frac{(\omega-m-2)r^{2}-(m+1)}{r(1+r^{2})}f^{t\phi}+\frac{i}{(1+r^{2})^{2}}f^{r\phi}+\frac{r}{1+r^{2}}f^{\phi \phi}\right) \\
\mathcal{L}_{\bar{\xi}_{-1}}h_{\lambda,0}^{rr} & =\frac{i}{2}e^{-i(\omega+1)t}e^{i(m-1)\phi}(1+r^{2})^{1/2}\left(2if^{tr}+\partial _{r}f^{rr}-\frac{(\omega-m+2)r^{2}-m}{r(1+r^{2})}f^{rr}+2if^{r\phi}\right) \\
\mathcal{L}_{\bar{\xi}_{-1}}h_{\lambda,0}^{r\phi} & =\frac{i}{2}e^{-i(\omega+1)t}e^{i(m-1)\phi}(1+r^{2})^{1/2}\left(\frac{1}{r}f^{tr}+if^{t\phi}-\frac{i}{r^{2}(1+r^{2})}f^{rr}+\partial _{r}f^{r\phi}-\frac{(\omega-m)r^{2}-(m+1)}{r(1+r^{2})}f^{r\phi}+if^{\phi \phi}\right) \\
\mathcal{L}_{\bar{\xi}_{-1}}h_{\lambda,0}^{\phi \phi} & =\frac{i}{2}e^{-i(\omega+1)t}e^{i(m-1)\phi}(1+r^{2})^{1/2}\left(\frac{2}{r}f^{t\phi}-\frac{2i}{r^{2}(1+r^{2})}f^{r\phi}+\partial _{r}f^{\phi \phi}-\frac{(\omega-m-2)r^{2}-(m+2)}{r(1+r^{2})}f^{\phi \phi}\right)
\end{align}$$

then we can solve the highest weight conditions

$$\begin{align}
\mathcal{L}_{\xi _{1}}h_{L,0}^{\mu \nu} & =0 \\
\mathcal{L}_{\xi _{0}}h_{L,0}^{\mu \nu} & =-2ih_{L,0}^{\mu \nu} \\
\mathcal{L}_{\bar{\xi}_{a}}h_{L,0}^{\mu \nu} & =0, a=0, \pm 1 \\
\mathcal{L}_{\bar{\xi}_{1}}h_{R,0}^{\mu \nu} & =0 \\
\mathcal{L}_{\bar{\xi}_{0}}h_{R,0}^{\mu \nu} & =-2ih_{R,0}^{\mu \nu} \\
\mathcal{L}_{\xi _{a}}h_{R,0}^{\mu \nu} & =0, a=0,\pm 1
\end{align}$$

for $\displaystyle{h_{L,0}^{\mu \nu}}$, we have

$$\begin{align}
\mathcal{L}_{\xi_{0}}h_{L,0}^{\mu \nu} & =-\frac{i}{2}(\omega+m)h_{L,0}^{\mu \nu}=-2ih_{L,0}^{\mu \nu} \\
\mathcal{L}_{\bar{\xi}_{0}}h_{L,0}^{\mu \nu} & =-\frac{i}{2}(\omega-m)h_{R,0}^{\mu \nu}=0 \\
\implies \omega & =m=2
\end{align}$$

then

$$\begin{align}
\partial _{r}f^{tt}+\frac{(\omega+m+2)r^{2}+m}{r(1+r^{2})}f^{tt}-\frac{2i}{(1+r^{2})^{2}}f^{r}-\frac{2r}{1+r^{2}}f^{\phi} & =0 \\
-if^{tt}+\partial _{r}f^{tr}+\frac{(\omega+m)r^{2}+m}{r(1+r^{2})}f^{tr}+if^{t\phi}-\frac{i}{(1+r^{2})^{2}}f^{rr}-\frac{r}{1+r^{2}}f^{r\phi} & =0 \\
 -\frac{1}{r}f^{tt}-\frac{i}{r^{2}(1+r^{2})}f^{tr}+\partial _{r}f^{t\phi}+\frac{(\omega+m+2)r^{2}+(m+1)}{r(1+r^{2})}f^{t\phi}-\frac{i}{(1+r^{2})^{2}}f^{r\phi}-\frac{r}{1+r^{2}}f^{\phi \phi}  & =0 \\
-2if^{tr}+\partial _{r}f^{rr}+\frac{(\omega+m-2)r^{2}+m}{r(1+r^{2})}f^{rr}+2if^{r\phi} & =0 \\
-\frac{1}{r}f^{tr}-if^{t\phi}-\frac{i}{r^{2}(1+r^{2})}f^{rr}+\partial _{r}f^{r\phi}+\frac{(\omega+m)r^{2}+(m+1)}{r(1+r^{2})}f^{r\phi}+if^{\phi \phi} & =0 \\
-\frac{2}{r}f^{t\phi}-\frac{2i}{r^{2}(1+r^{2})}f^{r\phi}+\partial _{r}f^{\phi \phi}+\frac{(\omega+m+2)r^{2}+(m+2)}{r(1+r^{2})}f^{\phi \phi} & = 0
\end{align}$$

$$\begin{align}
\partial _{r}f^{tt}+\frac{(\omega-m+2)r^{2}-m}{r(1+r^{2})}f^{tt}-\frac{2i}{(1+r^{2})^{2}}f^{tr}+\frac{2r}{1+r^{2}}f^{r\phi} & =0 \\
-if^{tt}+\partial _{r}f^{rr}+\frac{(\omega-m)r^{2}-m}{r(1+r^{2})}f^{tr}-if^{t\phi}-\frac{i}{(1+r^{2})^{2}}f^{rr}+\frac{r}{1+r^{2}}f^{r\phi} & =0 \\
\frac{1}{r}f^{tt}+\frac{i}{r^{2}(1+r^{2})}f^{tr}+\partial _{r}f^{t\phi}+\frac{(\omega-m+2)r^{2}-(m-1)}{r(1+r^{2})}f^{t\phi}-\frac{i}{(1+r^{2})^{2}}f^{r\phi}+\frac{r}{1+r^{2}}f^{\phi \phi} & =0 \\
-2if^{tr}+\partial _{r}f^{rr}+\frac{(\omega-m-2)r^{2}-m}{r(1+r^{2})}f^{rr}-2if^{r\phi} & =0 \\
\frac{1}{r}f^{tr}-if^{t\phi}+\frac{i}{r^{2}(1+r^{2})}f^{rr}+\partial _{r}f^{r\phi}+\frac{(\omega-m)r^{2}-(m-1)}{r(1+r^{2})}f^{r\phi}-if^{\phi \phi} & =0 \\
\frac{2}{r}f^{t\phi}+\frac{2i}{r^{2}(1+r^{2})}f^{r\phi}+\partial _{r}f^{\phi\phi}+\frac{(\omega-m+2)r^{2}-(m-2)}{r(1+r^{2})}f^{\phi \phi} & =0
\end{align}$$

add and subtract the above equations, we have

$$\begin{align}
\partial _{r}f^{tt}+\frac{(\omega+2)r}{1+r^{2}}f^{tt}-\frac{2i}{(1+r^{2})^{2}}f^{tr} & =0 \\
\frac{m}{r}f^{tt}-\frac{2r}{1+r^{2}}f^{t\phi} & =0 \\
-if^{tt}+\partial _{r}f^{tr}+\frac{\omega r}{1+r^{2}}f^{tr}-\frac{i}{(1+r^{2})^{2}}f^{rr} & =0 \\
\frac{m}{r}f^{tr}+if^{t\phi}-\frac{r}{1+r^{2}}f^{r\phi} & =0 \\
\partial _{r}f^{t\phi}+\frac{(\omega+2)r^{2}+1}{r(1+r^{2})}f^{t\phi}-\frac{i}{(1+r^{2})^{2}}f^{r\phi} & =0 \\
-\frac{1}{r}f^{tt}-\frac{i}{r^{2}(1+r^{2})}f^{tr}+\frac{m}{r}f^{t\phi}-\frac{r}{1+r^{2}}f^{\phi \phi} & =0 \\
-2if^{tr}+\partial _{r}f^{rr}+\frac{(\omega-2)r}{1+r^{2}}f^{rr} & =0 \\
\frac{m}{r}f^{rr}+2if^{r\phi} & =0 \\
-if^{t\phi}+\partial _{r}f^{r\phi}+\frac{\omega r^{2}+1}{r(1+r^{2})}f^{r\phi} & =0 \\
-\frac{1}{r}f^{tr}-\frac{i}{r^{2}(1+r^{2})}f^{rr}+\frac{m}{r}f^{r\phi}+if^{\phi \phi} & =0 \\
\partial _{r}f^{\phi \phi}+\frac{(\omega+2)r^{2}+2}{r(1+r^{2})}f^{\phi \phi} & =0 \\
-\frac{2}{r}f^{t\phi}-\frac{2i}{r^{2}(1+r^{2})}f^{r\phi}+\frac{m}{r}f^{\phi \phi} & =0
\end{align}$$

insert $\displaystyle{\omega=m=2}$, these equations can be solved to give

$$\begin{align}
\partial _{r}f^{tt}+\frac{4r}{1+r^{2}}f^{tt}-\frac{2i}{(1+r^{2})^{2}}f^{tr} & =0 \\
-if^{tt}+\partial _{r}f^{tr}+\frac{2 r}{1+r^{2}}f^{tr}-\frac{i}{(1+r^{2})^{2}}f^{rr} & =0 \\
\partial _{r}f^{t\phi}+\frac{4r^{2}+1}{r(1+r^{2})}f^{t\phi}-\frac{i}{(1+r^{2})^{2}}f^{r\phi} & =0 \\
-2if^{tr}+\partial _{r}f^{rr} & =0 \\
-if^{t\phi}+\partial _{r}f^{r\phi}+\frac{2r^{2}+1}{r(1+r^{2})}f^{r\phi} & =0 \\
\partial _{r}f^{\phi \phi}+\frac{4r^{2}+2}{r(1+r^{2})}f^{\phi \phi} & =0 \\
\frac{1}{r}f^{tt}-\frac{r}{1+r^{2}}f^{t\phi} & =0 \\
\frac{2}{r}f^{tr}+if^{t\phi}-\frac{r}{1+r^{2}}f^{r\phi} & =0 \\
-\frac{1}{r}f^{tt}-\frac{i}{r^{2}(1+r^{2})}f^{tr}+\frac{2}{r}f^{t\phi}-\frac{r}{1+r^{2}}f^{\phi \phi} & =0 \\
\frac{1}{r}f^{rr}+if^{r\phi} & =0 \\
-\frac{1}{r}f^{tr}-\frac{i}{r^{2}(1+r^{2})}f^{rr}+\frac{2}{r}f^{r\phi}+if^{\phi \phi} & =0 \\
-\frac{1}{r}f^{t\phi}-\frac{i}{r^{2}(1+r^{2})}f^{r\phi}+\frac{1}{r}f^{\phi \phi} & =0
\end{align}$$

which solve to

$$\begin{align}
f^{tt} & =\frac{C}{(1+r^{2})^{2}} \cdot \frac{1}{2}\frac{r}{(1+r^{2})^{1/2}} \cdot \frac{1}{2}\frac{r}{(1+r^{2})^{1/2}} \\
f^{tr} & =\frac{C}{(1+r^{2})^{2}}\cdot \frac{1}{2} \frac{r}{(1+r^{2})^{1/2}}\cdot -\frac{i}{2}(1+r^{2})^{1/2} \\
f^{t\phi} & =\frac{C}{(1+r^{2})^{2}}\cdot \frac{1}{2} \frac{r}{(1+r^{2})^{1/2}}\cdot \frac{1}{2} \frac{(1+r^{2})^{1/2}}{r} \\
f^{rr} & =\frac{C}{(1+r^{2})^{2}}\cdot -\frac{i}{2}(1+r^{2})^{1/2}\cdot -\frac{i}{2}(1+r^{2})^{1/2} \\
f^{r\phi} & =\frac{C}{(1+r^{2})^{2}}\cdot -\frac{i}{2}(1+r^{2})^{1/2}\cdot \frac{1}{2}\frac{(1+r^{2})^{1/2}}{r} \\
f^{\phi \phi} & =\frac{C}{(1+r^{2})^{2}}\cdot \frac{1}{2}\frac{(1+r^{2})^{1/2}}{r}\cdot \frac{1}{2}\frac{(1+r^{2})^{1/2}}{r}
\end{align}$$

and the full solution can be written as

$$\begin{align}
h_{L,0}^{\mu \nu} & =\frac{Ce^{-4it}}{(1+r^{2})^{2}}\bar{\xi}_{1}^{\mu}\bar{\xi}_{1}^{\nu}
\end{align}$$

and similarly, we can solve the highest weight conditions for $\displaystyle{h_{R,0}^{\mu \nu}}$ to get

$$\begin{align}
h_{R,0}^{\mu \nu} & =\frac{Ce^{-4it}}{(1+r^{2})^{2}}\xi _{1}^{\mu}\xi _{1}^{\nu}
\end{align}$$

the normalization constant is determined by the symplectic form as

$$\begin{align}
\omega[h,h^{*}] & =-i \\
\implies C & =8\sqrt{ 3G }
\end{align}$$

where the symplectic form is given by

$$\begin{align}
\omega & =-\frac{1}{32\pi G}\int _{\Sigma}\mathrm{d}^{2}x\sqrt{ \sigma ^{(0)} }\tau _{\mu}\delta h^{\nu \rho}\wedge \nabla ^{(0)\mu}\delta h_{\nu \rho}+\frac{1}{16\pi G}\int _{\partial \Sigma}\mathrm{d}x\sqrt{ h^{(0)} }\tau _{\mu}n_{\nu}\delta h^{\mu}_{~\rho}\wedge \delta h^{\nu \rho}
\end{align}$$

and the descendants

$$\begin{align}
h^{\mu \nu}_{L,n} & = C_{n} \mathcal{L}_{\xi _{-1}}^{n}h_{L,0}^{\mu \nu} \\
h^{\mu \nu}_{R,\bar{n}} & =C_{\bar{n}}\mathcal{L}_{\bar{\xi} _{-1}}^{\bar{n}}h_{R,0}^{\mu \nu}
\end{align}$$

where the representation-theoretic normalization factors are

$$\begin{align}
C_{n} &=\sqrt{\frac{6}{n!(n+3)!}},&C_{\bar{n}} &=\sqrt{\frac{6}{\bar{n}!(\bar{n}+3)!}}.
\end{align}$$

These expressions agree with the former results obtained by observing the "square" relation between the vector and tensor highest weight modes. furthermore, the transverse and traceless gauge condition are also satisfied

$$\begin{align}
h_{\lambda,0} & =g_{\mu \nu}h^{\mu \nu} \\
 & =-(1+r^{2})h^{tt}+\frac{1}{1+r^{2}}h^{rr}+r^{2}h^{\phi \phi}=0 \\
\nabla _{\mu}h_{\lambda,0}^{\mu \nu} & =0
\end{align}$$

# pure gauge

now we wil check that whether the highest modes are pure gauge or not. "pure gauge" means that the configuration $\displaystyle{h_{\mu \nu}}$ can be expressed as

$$\begin{align}
h_{\mu \nu} & =\nabla _{\mu}\zeta _{\nu}+\nabla _{\nu}\zeta _{\mu}
\end{align}$$

where $\displaystyle{\zeta _{\mu}}$ is a vector field. by some algebra, for the $\displaystyle{(2,0)}$ primary, we have

$$\begin{align}
h_{L,0}^{\mu,\nu} & =\nabla ^{\mu}\zeta _{L}^{\nu}+\nabla ^{\nu}\zeta _{L}^{\mu} \\
\zeta _{L}^{t} & =\frac{iCe^{-2it+2i\phi}r^{4}}{24(1+r^{2})^{2}} \\
\zeta _{L}^{r} & =-\frac{Ce^{-2it+2i\phi}r(3+2r^{2})}{24(1+r^{2})} \\
\zeta _{L}^{\phi} & =-\frac{iCe^{-2it+2i\phi}(3+r^{2})}{24(1+r^{2})}
\end{align}$$

and for the $\displaystyle{(0,2)}$ primary, we have

$$\begin{align}
h_{R,0}^{\mu \nu} & =\nabla ^{\mu}\zeta _{R}^{\nu}+\nabla ^{\nu}\zeta _{R}^{\mu} \\
\zeta _{R}^{t} & =\frac{iCe^{-2it-2i\phi}r^{4}}{24(1+r^{2})^{2}} \\
\zeta _{R}^{r} & =-\frac{Ce^{-2it-2i\phi}r(3+2r^{2})}{24(1+r^{2})} \\
\zeta _{R}^{\phi} & =\frac{iCe^{-2it-2i\phi}(3+r^{2})}{24(1+r^{2})}
\end{align}$$

