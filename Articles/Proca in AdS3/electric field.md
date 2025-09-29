$$\tag{.}\begin{align}
\mathrm{d}s^{2} & =-(1+r^{2})\mathrm{d}t^{2}+\frac{\mathrm{d}r^{2}}{1+r^{2}}+r^{2}\mathrm{d}\phi ^{2}
\end{align}$$

$$\begin{align}
S & =\int \mathrm{d}t\mathrm{d}^{2}x\sqrt{ \sigma }\left(-\frac{1}{4}N\tilde{F}_{ab}\tilde{F}^{ab}+\frac{1}{2N}\sigma ^{ab}\left( D_{a}(N^{2}A^{t})+\partial _{t}A_{a} \right)\left( D_{b}(N^{2}A^{t})+\partial _{t}A_{b}\right)\right)
\end{align}$$

choose the temporal gauge $\displaystyle{A^{t}=0}$ and the Column gauge $\displaystyle{\tilde{\nabla} _{a}A^{a}=0}$ (they are simultaneously taken only onshell), 

$$\begin{align}
S & =\int \mathrm{d}t\mathrm{d}^{2}x\sqrt{ \sigma }\left(-\frac{1}{4}N\tilde{F}_{ab}\tilde{F}^{ab}+\frac{1}{2N}\sigma _{ab}\partial _{t}A^{a}\partial _{t}A^{b}\right)
\end{align}$$

take a variation

$$\begin{align}
\delta S & =\int \mathrm{d}t\mathrm{d}^{2}x\sqrt{ \sigma }\left(D_{a}(N\tilde{F}^{ab})-\frac{1}{N}\sigma ^{ab}\partial _{t}^{2}A_{a}\right)\delta A_{b}+\int\mathrm{d}^{2}x\sqrt{ \sigma } \frac{1}{N}\sigma ^{ab}\partial _{t}A_{a}\delta A_{b}\Big|^{t_{f}}_{t_{i}}
\end{align}$$

where the eom and symplectic potential/form are given by

$$\begin{align}
E^{a}\delta A_{b} & =\left(D_{a}(N\tilde{F}^{ab})-\frac{1}{N}\sigma ^{ab}\partial _{t}^{2}A_{a}\right)\delta A_{b} \\
\theta & =\int \mathrm{d}^{2}x\sqrt{ \sigma } \frac{1}{N}\sigma ^{ab}\partial _{t}A_{a}\delta A_{b} \\
\omega & =\int \mathrm{d}^{2}x\sqrt{ \sigma } \frac{1}{N}\sigma ^{ab}\partial _{t}\delta A_{a}\wedge \delta A_{b}
\end{align}$$

make the following ansatz

$$\begin{align}
A^{\mu} & =e^{-i\omega t}e^{im\phi}\tilde{A}^{\mu}
\end{align}$$

insert it and expand the eoms (using Column gauge to simplify)

$$\tag{.}\begin{align}
(1+r^{2})\partial _{r}^{2}A^{r}+\frac{3(1+r^{2})}{r}\partial _{r}A^{r}+\frac{1+r^{2}}{r^{2}}A^{r}-\frac{1}{1+r^{2}}\partial _{t}^{2}A^{r}+\frac{1}{r^{2}}\partial _{\phi}^{2}A^{r} & =0
\end{align}$$

and $\displaystyle{A^{t},A^{\phi}}$ are determined by gauge conditions

make the following ansatz

$$\tag{.}\begin{align}
A^{a} & =e^{-i\omega t}e^{im\phi}\tilde{A}^{a}
\end{align}$$

then

$$\tag{.}\begin{align}
(1+r^{2})\partial _{r}^{2}\tilde{A}^{r}+\frac{3(1+r^{2})}{r}\partial _{r}\tilde{A}^{r}+\left( \frac{\omega ^{2}}{1+r^{2}}+1-\frac{m^{2}-1}{r^{2}} \right)\tilde{A}^{r}& =0 \\
\partial _{\rho}^{2}\tilde{A}^{r}+\frac{1+2\cos ^{2}\rho}{\sin \rho \cos \rho} \partial _{r}\tilde{A}^{r}+\left( \omega ^{2}+\frac{1}{\cos ^{2}\rho}-\frac{m^{2}-1}{\sin ^{2}\rho} \right)\tilde{A}^{r} & =0 \\
4z(1-z)\partial _{z}^{2}\tilde{A}^{r}-8z\partial _{z}\tilde{A}^{r}+\left(\omega ^{2}+\frac{1}{z}-\frac{m^{2}-1}{1-z}\right)\tilde{A}^{r} & =0
\end{align}$$

---

following the same procedure as highest weight formalism in Proca field

$$\begin{align}
(\mathcal{C}+\mathcal{\bar{C}})A^{\mu} & =-\frac{1}{2}\nabla ^{2}A^{\mu}-A^{\mu}=0 \\
(\mathcal{C}-\mathcal{\bar{C}})^{2}A^{\mu} & =\nabla ^{2}A^{\mu}-\nabla _{\nu}\nabla ^{\mu}A^{\nu}=0 \\
\implies \mathcal{C}=\mathcal{\bar{C}} & =0
\end{align}$$

the highest weight mode $\displaystyle{A_{0,0}}$ satisfies

$$\begin{align}
\mathcal{L}_{\xi_{1}}A_{0,0}^{\mu} & =\mathcal{L}_{\bar{\xi}_{1}}A_{0,0}^{\mu}=0
\end{align}$$

suppose

$$\begin{align}
A_{0,0}^{\mu} & =A(t,r,\phi)\xi_{1}^{\mu}+B(t,r,\phi)\bar{\xi}_{1}^{\mu}
\end{align}$$

$$\begin{align}
\mathcal{L}_{\xi_{1}}A_{0,0}^{\mu} & =\mathcal{\mathcal{L}}_{\xi_{1}}A\xi _{1}^{\mu}+\mathcal{L}_{\xi_{1}}B\bar{\xi}_{1}^{\mu}=0 \\
\mathcal{L}_{\bar{\xi}_{1}}A_{0,0}^{\mu} & =\mathcal{L}_{\bar{\xi}_{1}}A\xi _{1}^{\mu}+\mathcal{L}_{\bar{\xi}_{1}}B\bar{\xi}_{1}^{\mu}=0
\end{align}$$

$$\begin{align}
(r(1+r^{2})^{-1/2}\partial _{t}A-i(1+r^{2})^{1/2}\partial _{r}A-r^{-1}(1+r^{2})^{1/2}\partial _{\phi}A)\xi _{1}^{\mu} \\
+(r(1+r^{2})^{-1/2}\partial _{t}B-i(1+r^{2})^{1/2}\partial _{r}B-r^{-1}(1+r^{2})^{1/2}\partial _{\phi}B)\bar{\xi}_{1}^{\mu} & =0
\end{align}$$

$$\tag{.}\begin{align}
(r(1+r^{2})^{-1/2}\partial _{t}A-i(1+r^{2})^{1/2}\partial _{r}A-r^{-1}(1+r^{2})^{1/2}\partial _{\phi}A) \frac{1}{2}e^{i(t-\phi)} \\
\pm(r(1+r^{2})^{-1/2}\partial _{t}B-i(1+r^{2})^{1/2}\partial _{r}B-r^{-1}(1+r^{2})^{1/2}\partial _{\phi}B) \frac{1}{2}e^{i(t+\phi)} & =0 \\
\implies r(1+r^{2})^{-1/2}\partial _{t}A-i(1+r^{2})^{1/2}\partial _{r}A-r^{-1}(1+r^{2})^{1/2}\partial _{\phi}A & =0 \\
r(1+r^{2})^{-1/2}\partial _{t}A-i(1+r^{2})^{1/2}\partial _{r}A+r^{-1}(1+r^{2})^{1/2}\partial _{\phi}A & =0 \\
\implies r(1+r^{2})^{-1/2}\partial _{t}A-i(1+r^{2})^{1/2}\partial _{r}A & =0 \\
\partial _{\phi}A & =0
\end{align}$$

$$\begin{align}
A & =e^{-i\alpha t}(1+r^{2})^{\beta} \\
\implies \alpha & =-2\beta
\end{align}$$

$$\tag{.}\begin{align}
\implies \begin{cases}
A & = ?\\
B & =?
\end{cases}
\end{align}$$

$$\tag{.}\begin{align}
\xi _{1} & =\frac{1}{2}e^{i(t-\phi)}\left( r(1+r^{2})^{-1/2} \frac{\partial}{\partial t}-i(1+r^{2})^{1/2} \frac{\partial}{\partial r}-r^{-1}(1+r^{2})^{1/2} \frac{\partial}{\partial \phi} \right) \\
\xi _{0} & =\frac{1}{2}\left( \frac{\partial}{\partial t}-\frac{\partial}{\partial \phi} \right) \\
\xi _{-1} & =\frac{1}{2}e^{-i(t-\phi)}\left( r(1+r^{2})^{-1/2} \frac{\partial}{\partial t}+i(1+r^{2})^{1/2} \frac{\partial}{\partial r}-r^{-1}(1+r^{2})^{1/2} \frac{\partial}{\partial \phi} \right) \\
\bar{\xi}_{1} & =\frac{1}{2}e^{i(t+\phi)}\left( r(1+r^{2})^{-1/2} \frac{\partial}{\partial t}-i(1+r^{2})^{1/2} \frac{\partial}{\partial r}+r^{-1}(1+r^{2})^{1/2} \frac{\partial}{\partial \phi} \right) \\
\bar{\xi}_{0} & =\frac{1}{2}\left( \frac{\partial}{\partial t}+\frac{\partial}{\partial \phi} \right) \\
\bar{\xi}_{-1} & =\frac{1}{2}e^{-i(t+\phi)}\left( r(1+r^{2})^{-1/2} \frac{\partial}{\partial t}+i(1+r^{2})^{1/2} \frac{\partial}{\partial r}+r^{-1}(1+r^{2})^{1/2} \frac{\partial}{\partial \phi} \right)
\end{align}$$

i have no idea how to do this.

---

$$\tag{.}
\begin{align}
(1+r^{2})\partial _{r}^{2}A^{t}+\frac{1}{r^{2}}\partial _{\phi}^{2}A^{t}+\frac{1+5r^{2}}{r}\partial _{r}A^{t}+4A^{t}+\frac{1}{1+r^{2}}\partial _{t}\partial _{r}A^{r}+\frac{1-r^{2}}{r(1+r^{2})^{2}}\partial _{t}A^{r}+\frac{1}{1+r^{2}}\partial _{t}\partial _{\phi}A^{\phi} & =0 \\
-(1+r^{2})\partial _{t}\partial _{r}A^{t}-2r\partial _{t}A^{t}-\frac{1}{1+r^{2}}\partial _{t}^{2}A^{r}+\frac{1}{r^{2}}\partial _{\phi}^{2}A^{r}-(1+r^{2})\partial _{r}\partial _{\phi}A^{\phi}-\frac{2(1+r^{2})}{r}\partial _{\phi}A^{\phi} & =0 \\
-\frac{1}{r^{2}}\partial _{t}\partial _{\phi}A^{t}-\frac{1}{r^{2}}\partial _{r}\partial _{\phi}A^{r}+\frac{1}{r^{3}}\partial _{\phi}A^{r}-\frac{1}{1+r^{2}}\partial _{t}^{2}A^{\phi}+(1+r^{2})\partial _{r}^{2}A^{\phi}+\frac{3+5r^{2}}{r}\partial _{r}A^{\phi}+4A^{\phi} & =0 \\
\end{align}
$$

choose the temporal gauge $\displaystyle{A^{t}=0}$

$$\begin{align}
-\partial _{r}A^{r}-\frac{1-r^{2}}{r(1+r^{2})}A^{r} & =\partial _{\phi}A^{\phi} \\
-\frac{1}{1+r^{2}}\partial _{t}^{2}A^{r}+\frac{1}{r^{2}}\partial _{\phi}^{2}A^{r}+(1+r^{2})\partial _{r}\left(\partial _{r}A^{r}+\frac{1-r^{2}}{r(1+r^{2})}A^{r}\right)+\frac{2(1+r^{2})}{r}\left( \partial _{r}A^{r}+\frac{1-r^{2}}{r(1+r^{2})}A^{r} \right) & =0 \\

\end{align}$$

$$\tag{.}\begin{align}
-\frac{1}{1+r^{2}}\partial _{t}^{2}A^{r}+\frac{1}{r^{2}}\partial _{\phi}^{2}A^{r}+(1+r^{2})\partial _{r}\left(+\frac{1-r^{2}}{r(1+r^{2})}A^{r}\right)+\frac{2(1+r^{2})}{r}\left( \partial _{r}A^{r}+\frac{1-r^{2}}{r(1+r^{2})}A^{r} \right) & =0 \\
(1+r^{2})\partial _{r}^{2}A^{r}+\frac{1-r^{2}}{r}\partial _{r}A^{r}+(1+r^{2})A^{r}\partial _{r}\left(\frac{1-r^{2}}{r(1+r^{2})}\right)-\frac{1}{1+r^{2}}\partial _{t}^{2}A^{r}+\frac{1}{r^{2}}\partial _{\phi}^{2}A^{r}+\frac{2(1+r^{2})}{r}\partial _{r}A^{r}+\frac{2(1-r^{2})}{r^{2}}A^{r} & =0 \\
\frac{-1-4r^{2}+r^{4}}{r^{2}(1+r^{2})}A^{r}+\frac{2(1-r^{2})}{r^{2}}A^{r}
\end{align}$$

I can't handle this. 