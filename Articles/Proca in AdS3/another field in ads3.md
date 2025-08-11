inspired by 2401.13030, consider the following metric

$$\tag{1.1}
\begin{align}
\mathrm{d}s^{2} & =-(1+r^{2})\mathrm{d}t^{2}+\frac{\mathrm{d}r^{2}}{1+r^{2}}+r^{2}\mathrm{d}\phi ^{2}
\end{align}
$$

the components of the eom $\displaystyle{\varepsilon ^{\mu \nu}_{~~~~\rho}\nabla _{\nu}A^{\rho}=-\mu A^{\mu}}$ are

$$\tag{1.2}
\begin{align}
\frac{1}{r(1+r^{2})}\partial _{\phi}A^{r}-r\partial _{r}A^{\phi}-2A^{\phi} & =-\mu A^{t} \\
\frac{1+r^{2}}{r}\partial _{\phi}A^{t}+r\partial _{t}A^{\phi} & =-\mu A^{r} \\
-\frac{1+r^{2}}{r}\partial _{r}A^{t}-2A^{t}-\frac{1}{r(1+r^{2})}\partial _{t}A^{r} & =-\mu A^{\phi} \\
\end{align}$$
---

the eom can derive the usual Proca eom and its constraint equation

$$\begin{align}
\nabla _{\mu}A^{\mu} & =-\frac{1}{\mu}\varepsilon ^{\mu \nu}_{~~~~\rho}\nabla _{\mu}\nabla _{\nu}A^{\rho}=0 \\
\mu ^{2}A^{\mu} & =\varepsilon ^{\mu \nu}_{~~~~\rho}\nabla _{\nu}(-\mu A^{\rho}) \\
 & =\varepsilon ^{\mu \nu}_{~~~~\rho}\varepsilon ^{\rho \sigma}_{~~~~\lambda}\nabla _{\nu}\nabla _{\sigma}A^{\lambda} \\
 & =-(g^{\mu \sigma}\delta ^{\nu}_{\lambda}-g^{\nu \sigma}\delta ^{\mu}_{\lambda})\nabla _{\nu}\nabla _{\sigma}A^{\lambda} \\
 & =\nabla _{\nu}\nabla ^{\nu}A^{\mu}-\nabla _{\nu}\nabla _{\mu}A^{\nu} \\
 & =\nabla _{\nu}A^{\nu}A^{\mu}-R_{\nu\mu}A^{\nu}
\end{align}$$

we will use the constraint equation in the following discussion

---
make the following ansatz

$$\tag{1.3}
\begin{align}
A^{\mu} & =e^{-i\omega t}e^{im\phi}\tilde{A}^{\mu}
\end{align}$$

insert this ansatz into the eom (1.2) and the constraint equation, we have

$$\begin{align}
\frac{im}{r(1+r^{2})}\tilde{A}^{r}-r\partial _{r}\tilde{A}^{\phi}-2\tilde{A}^{\phi} & =-\mu \tilde{A}^{t}\tag{1.4.1} \\
im\frac{1+r^{2}}{r}\tilde{A}^{t}-i\omega r\tilde{A}^{\phi} & =-\mu \tilde{A}^{r}\tag{1.4.2} \\
-\frac{1+r^{2}}{r}\partial _{r}\tilde{A}^{t}-2\tilde{A}^{t}+\frac{i\omega}{r(1+r^{2})}\tilde{A}^{r} & =-\mu \tilde{A}^{\phi}\tag{1.4.3}
\end{align}$$

since the eom can derive the eom of Proca field, so we only need to pick solutions which satisfy the upper eoms.

$$\tag{1.5}
\begin{align}
\Phi _{nm+} & =r^{|m\mp1|}(1+r^{2})^{-(\mu+|m\mp 1|)+1}P^{(\mu,|m\mp 1|)}_{n}\left( \frac{r^{2}-1}{r^{2}+1} \right) \\
\tilde{A}_{nm\pm}^{r} & =\mp i\Phi _{nm\pm} \\
\tilde{A}^{\phi}_{nm\pm} & =\frac{1}{r}\Phi _{nm\pm} \\
\tilde{A}^{t}_{nm\pm} & =\frac{1}{\omega _{nm\pm}}\left( \mp\partial _{r}\Phi _{nm\pm}+\frac{m\mp 1}{r}\Phi _{nm\pm} \right) \\
\omega _{nm\pm} & =2n+|m\mp 1|+\mu+1
\end{align}$$

$$\tag{.}
\begin{align}
\pm (2n+||)\frac{m}{r(1+r^{2})}\Phi _{nm\pm}-\omega _{nm\pm}\partial _{r}\Phi _{nm\pm}-\frac{\omega _{nm\pm}}{r}\Phi _{nm\pm} & =\pm\mu \partial _{r}\Phi _{nm\pm}-\frac{\mu (m\mp 1)}{r}\Phi _{nm\pm}
\end{align}$$