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
E^{a}\delta A_{b} & =\left(D_{a}(N\tilde{F}^{ab})-\frac{1}{N}\sigma ^{ab}\partial _{t}^{2}A_{b}\right)\delta A_{b} \\
\theta & =\int \mathrm{d}^{2}x\sqrt{ \sigma } \frac{1}{N}\sigma ^{ab}\partial _{t}A_{a}\delta A_{b} \\
\omega & =\int \mathrm{d}^{2}x\sqrt{ \sigma } \frac{1}{N}\sigma ^{ab}\partial _{t}\delta A_{a}\wedge \delta A_{b}
\end{align}$$

make the following ansatz

$$\begin{align}
A^{\mu} & =e^{-i\omega t}e^{im\phi}\tilde{A}^{\mu}
\end{align}$$

insert it and expand the eoms and Column gauge

$$\begin{align}
\partial _{r}\tilde{A}^{r}+\frac{1}{r}\tilde{A}^{r}+im\tilde{A}^{\phi} & =0 \\
2i\omega r\tilde{A}^{t}+\frac{\omega ^{2}}{1+r^{2}}\tilde{A}^{r}-\frac{m^{2}}{r^{2}}\tilde{A}^{r}-\mu ^{2}\tilde{A}^{r}-im(1+r^{2})\partial _{r}\tilde{A}^{\phi}-\frac{2im(1+r^{2})}{r}\tilde{A}^{\phi} & =0 \\
-\frac{im}{r^{2}}\partial _{r}\tilde{A}^{r}+\frac{im}{r^{3}}\tilde{A}^{r}+\frac{\omega ^{2}}{1+r^{2}}\tilde{A}^{\phi}+(1+r^{2})\partial _{r}^{2}\tilde{A}^{\phi}+\frac{3+5r^{2}}{r}\partial _{r}\tilde{A}^{\phi}+(4-\mu ^{2})\tilde{A}^{\phi} & =0
\end{align}$$