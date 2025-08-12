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

insert it and expand the eoms and Column gauge

$$\tag{.}\begin{align}
\frac{\partial _{r}N}{N}F^{r\phi}\delta ^{b}_{\phi}+D_{a}D^{a}A^{b}+2A^{d} & =\frac{1}{N^{2}}\partial _{t}^{2}A^{b}
\end{align}$$

$$\tag{.}\begin{align}
D_{a}D^{a}A^{b} & =\sigma ^{ac}D_{a}D_{c}A^{b} \\
 & =\sigma ^{ac}\partial _{a}\partial _{c}A^{b}+\sigma ^{ac}\partial _{a}\Gamma ^{b}_{cd}A^{d}+\sigma ^{ac}\Gamma ^{b}_{ad}\partial _{c}A^{d}-\sigma ^{ac}\Gamma ^{d}_{ac}\partial _{d}A^{b}-\sigma ^{ac}\Gamma ^{d}_{ac}\Gamma ^{b}_{de}A^{e}+\sigma ^{ac}\Gamma ^{b}_{ad}\partial _{c}A^{d}+\sigma ^{ac}\Gamma ^{b}_{ad}\Gamma ^{d}_{ce}A^{e} \\
 & =\sigma ^{ac}\partial _{a}\partial _{c}A^{b}+\sigma ^{ac}(2\Gamma ^{b}_{ad}\partial _{c}A^{d}-\Gamma ^{d}_{ac}\partial _{d}A^{b})+\sigma ^{ac}(\partial _{a}\Gamma ^{b}_{ce}-\Gamma ^{d}_{ac}\Gamma ^{b}_{de}A^{e}+\Gamma ^{b}_{ad}\Gamma ^{d}_{ce})A^{e} \\
D_{a}D^{a}A^{r} & =(1+r^{2})\partial _{r}^{2}A^{r}+\frac{1}{r}\partial _{r}A^{r}+\frac{1}{r^{2}}\partial _{\phi}^{2}A^{r}-\left( \frac{2}{1+r^{2}}+1+\frac{1}{r^{2}} \right)A^{r} -\frac{2(1+r^{2})}{r}\partial _{\phi}A^{\phi} \\
D_{a}D^{a}A^{\phi} & =(1+r^{2})\partial _{r}^{2}A^{\phi}+\frac{3+4r^{2}}{r}\partial _{r}A^{\phi}+\frac{1}{r^{2}}\partial _{\phi}^{2}A^{\phi}+A^{\phi}+\frac{2}{r^{3}}\partial _{\phi}A^{r} \\
\end{align}$$

$$\tag{.}\begin{align}
(1+r^{2})\partial _{r}^{2}A^{r}+\frac{1}{r}\partial _{r}A^{r}+\frac{1}{r^{2}}\partial _{\phi}^{2}A^{r}-\left( \frac{2}{1+r^{2}}+1+\frac{1}{r^{2}} \right)A^{r}-\frac{1}{1+r^{2}}\partial _{t}^{2}A^{r}=\frac{2(1+r^{2})}{r}\partial _{\phi}A^{\phi} \\
(1+r^{2})\partial _{r}^{2}A^{\phi}+\frac{3+5r^{2}}{r}\partial _{r}A^{\phi}+\frac{1}{r^{2}}\partial _{\phi}^{2}A^{\phi} -\frac{1}{1+r^{2}}\partial _{t}^{2}A^{\phi}+2A^{\phi}& =-\frac{2}{r^{3}}\partial _{\phi}A^{r}+\frac{1}{r(1+r^{2})}\partial _{\phi}A^{r}
\end{align}$$

$$\tag{.}\begin{align}
\partial _{r}A^{r}+\frac{1}{r}A^{r}+\partial _{\phi}A^{\phi} & =0
\end{align}$$