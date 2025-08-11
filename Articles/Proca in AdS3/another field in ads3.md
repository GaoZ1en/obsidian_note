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
-\frac{1+r^{2}}{r}\partial _{r}\tilde{A}^{t}-2\tilde{A}^{t}+\frac{i\omega}{r(1+r^{2})}\tilde{A}^{r} & =-\mu \tilde{A}^{\phi}\tag{1.4.3} \\
-i\omega \tilde{A}^{t}+\partial _{r}\tilde{A}^{r}+\frac{1}{r}\tilde{A}^{r}+im\tilde{A}^{\phi} & =0\tag{1.4.4}
\end{align}$$

insert the contraint

$$\tag{.}
\begin{align}

\end{align}$$

$$\tag{.}
\begin{align}
-i\omega m\frac{1+r^{2}}{r}A^{t}-i\omega ^{2} rA^{\phi} & =-\mu \omega A^{r} \\

\end{align}$$

$$\tag{.}
\begin{align}
(1+r^{2})\partial _{r}^{2}\tilde{A}^{r}+\frac{1+3r^{2}}{r}\partial _{r}\tilde{A}^{r}+\left( 1-\frac{1}{r^{2}} -\frac{\omega ^{2}}{1+r^{2}}\right)\tilde{A}^{r}+im(1+r^{2})\partial _{r}\tilde{A}^{\phi}+2imr\tilde{A}^{\phi} & =-i\mu \omega r\tilde{A}^{\phi}
\end{align}$$