$$\tag{1.1}
\begin{align}
\mathrm{d}s^{2} & =-(1+r^{2})\mathrm{d}t^{2}+\frac{\mathrm{d}r^{2}}{1+r^{2}}+r^{2}\mathrm{d}\phi ^{2}
\end{align}
$$

let

$$\tag{1.2}
\begin{align}
\tau _{\mu} & =-N\delta _{\mu t} \\
\sigma _{\mu \nu} & =g_{\mu \nu}+\tau _{\mu}\tau _{\nu} \\
\tau ^{\mu} & =\frac{1}{N}\delta ^{\mu t} \\
\sigma ^{\mu \nu} & =g^{\mu \nu}+\tau ^{\mu}\tau ^{\nu}
\end{align}
$$

where $\displaystyle{N=\sqrt{ 1+r^{2} }}$. the action for Proca field is

$$\tag{1.3}
\begin{align}
S & =\int \mathrm{d}^{3}x\sqrt{ -g }\left(-\frac{1}{4}F_{\mu \nu}F^{\mu \nu}-\frac{1}{2}\mu ^{2}A_{\mu}A^{\mu}\right) \\
 & =\int \mathrm{d}^{3}xN\sqrt{ \sigma }\left(-\frac{1}{4}g^{\mu \rho}g^{\nu \lambda}F_{\mu \nu}F_{\rho \lambda}-\frac{1}{2}\mu ^{2}g^{\mu \nu}A_{\mu}A_{\nu}\right)
\end{align}
$$

the first term is

$$\tag{1.4}
\begin{align}
-\frac{1}{4}g^{\mu \rho}g^{\nu \lambda}F_{\mu \nu}F_{\rho \lambda} & =-\frac{1}{4}(\sigma ^{\mu \rho}-\tau ^{\mu}\tau ^{\rho})(\sigma ^{\nu \lambda}-\tau ^{\nu}\tau ^{\lambda})F_{\mu \nu}F_{\rho \lambda} \\
 & =-\frac{1}{4}\sigma ^{\mu \rho}\sigma ^{\nu \lambda}F_{\mu \nu}F_{\rho \lambda}+\frac{1}{2}\sigma ^{\mu \rho}\tau ^{\nu}\tau ^{\lambda}F_{\mu \nu}F_{\rho \lambda}
\end{align}
$$


$$\tag{1.4.1}
\begin{align}
\sigma ^{\mu \rho}\sigma ^{\nu \lambda}(\nabla _{\mu}A_{\nu}-\nabla _{\nu}A_{\mu})(\nabla _{\rho}A_{\lambda}-\nabla _{\lambda}A_{\rho}) & =2\sigma ^{\mu \rho}\sigma ^{\nu \lambda}\nabla _{\mu}A_{\nu}\nabla _{\rho}A_{\lambda}-2\sigma ^{\mu \rho}\sigma ^{\nu \lambda}\nabla _{\nu}A_{\mu}\nabla _{\rho}A_{\lambda} \\
 & =2\sigma ^{\mu \rho}\sigma ^{\nu \lambda}\nabla _{\mu}(\sigma ^{\alpha}_{\nu}A_{\alpha}+\tau _{\nu}\tau ^{\alpha}A_{\alpha})\nabla _{\rho}(\sigma ^{\beta}_{\lambda}A_{\beta}+\tau _{\lambda}\tau ^{\beta}A_{\beta})-2\sigma ^{\mu \rho}\sigma ^{\nu \lambda}\nabla _{\nu}(\sigma ^{\alpha}_{\mu}A_{\alpha}+\tau _{\mu}\tau ^{\alpha}A_{\alpha})\nabla _{\rho}(\sigma ^{\beta}_{\lambda}A_{\beta}+\tau _{\lambda}\tau ^{\beta}A_{\beta}) \\
 & =2\sigma ^{\mu \rho}\sigma ^{\nu \lambda}\nabla _{\mu}(\sigma ^{\alpha}_{\nu}A_{\alpha})\nabla _{\rho}(\sigma ^{\beta}_{\lambda}A_{\beta})+4\sigma ^{\mu \rho}\sigma ^{\nu \lambda}\nabla _{\mu}\tau _{\nu}\tau ^{\alpha}A_{\alpha}\nabla _{\rho}(\sigma ^{\beta}_{\lambda}A_{\beta})+2\sigma ^{\mu \rho}\sigma ^{\nu \lambda}\nabla _{\mu}\tau _{\nu}\tau ^{\alpha}A_{\alpha}\nabla _{\rho}\tau _{\lambda}\tau ^{\beta}A_{\beta}-2\sigma ^{\mu \rho}\sigma ^{\nu \lambda}(\nu\leftrightarrow \mu) \\
 & =2(\sigma ^{ab}\sigma ^{cd}-\sigma ^{ac}\sigma ^{bd})D_{a}(\sigma ^{\alpha}_{c}A_{\alpha})D_{b}(\sigma ^{\beta}_{d}A_{\beta}) \\
 & =\sigma ^{ac}\sigma ^{bd}\tilde{F}_{ab}\tilde{F}_{cd}
\end{align}
$$

where $\displaystyle{\tilde{F}_{ab}=D_{a}A_{b}-D_{b}A_{a}}$. notice that

$$
\begin{align}
F_{\mu \nu} & =\nabla _{\mu}(\sigma ^{\alpha}_{\nu}A_{\alpha})+\nabla _{\mu}\tau _{\nu}\tau ^{\alpha}A_{\alpha}+\tau _{\nu}\nabla _{\mu}(\tau ^{\alpha}A_{\alpha})-(\nu\leftrightarrow \mu)
\end{align}
$$

then

$$\tag{1.4.2}
\begin{align}
\sigma ^{\mu \rho}\tau ^{\nu}\tau ^{\lambda}F_{\mu \nu}F_{\rho \lambda} & =\sigma ^{\mu \rho}\tau ^{\nu}\tau ^{\lambda}(\nabla _{\mu}(\sigma ^{\alpha}_{\nu}A_{\alpha})+\nabla _{\mu}\tau _{\nu}\tau ^{\alpha}A_{\alpha}+\tau _{\nu}\nabla _{\mu}(\tau ^{\alpha}A_{\alpha})-(\nu\leftrightarrow \mu))(\nabla _{\rho}(\sigma ^{\beta}_{\lambda}A_{\beta})+\nabla _{\rho}\tau _{\lambda}\tau ^{\beta}A_{\beta}+\tau _{\lambda}\nabla _{\rho}(\tau ^{\beta}A_{\beta})-(\lambda\leftrightarrow \rho)) \\
 & =\sigma ^{\mu \rho}(-\nabla _{\mu}(\tau ^{\alpha}A_{\alpha})-\tau ^{\nu}\nabla _{\nu}(\sigma ^{\alpha}_{\mu}A_{\alpha})-\tau ^{\nu}\nabla _{\nu}\tau _{\mu}\tau ^{\alpha}A_{\alpha})(-\nabla _{\rho}(\tau ^{\beta}A_{\beta})-\tau ^{\lambda}\nabla _{\lambda}(\sigma ^{\beta}_{\rho}A_{\beta})-\tau ^{\lambda}\nabla _{\lambda}\tau _{\rho}\tau ^{\beta}A_{\beta}) \\
 & =\sigma ^{ab}\left( D_{a}(NA^{t})+\frac{1}{N}\partial _{t}(\sigma ^{c}_{a}A_{c})+A_{a}(NA^{t}) \right)\left( D_{b}(NA^{t})+\frac{1}{N}\partial _{t}(\sigma ^{d}_{b}A_{d}) +A_{b}(NA^{t})\right)
\end{align}
$$

thus

$$\tag{1.5}
\begin{align}
-\frac{1}{4}F_{\mu \nu}F^{\mu \nu} & =-\frac{1}{4}\tilde{F}_{ab}\tilde{F}^{ab}+\frac{1}{2N^{2}}\sigma ^{ab}\left( D_{a}(N^{2}A^{t})+\partial _{t}(\sigma ^{c}_{a}A_{c}) \right)\left( D_{b}(N^{2}A^{t})+\partial _{t}(\sigma ^{d}_{b}A_{d})\right)
\end{align}
$$

the second term is

$$\tag{1.6}
\begin{align}
-\frac{1}{2}\mu ^{2}g^{\mu \nu}A_{\mu}A_{\nu}& =-\frac{1}{2}\mu ^{2}(\sigma ^{\mu \nu}-\tau ^{\mu}\tau ^{\nu})A_{\mu}A_{\nu} \\
 & =-\frac{1}{2}\mu ^{2}\sigma ^{ab}A_{a}A_{b}+\frac{1}{2}\mu ^{2}(\tau ^{\mu}A_{\mu})^{2} \\
 & =-\frac{1}{2}\mu ^{2}\sigma ^{ab}A_{a}A_{b}+\frac{1}{2}\mu ^{2}(NA^{t})^{2}
\end{align}
$$

add (1.5) and (1.6) together, we have

$$\tag{1.7}
\begin{align}
S & =\int \mathrm{d}t\mathrm{d}^{2}x\sqrt{ \sigma }\left(-\frac{1}{4}N\tilde{F}_{ab}\tilde{F}^{ab}+\frac{1}{2N}\sigma ^{ab}\left( D_{a}(N^{2}A^{t})+\partial _{t}A_{a} \right)\left( D_{b}(N^{2}A^{t})+\partial _{t}A_{b}\right)-\frac{1}{2}\mu ^{2}N\sigma ^{ab}A_{a}A_{b}+\frac{1}{2N}\mu ^{2}(N^{2}A^{t})^{2}\right)
\end{align}
$$
---

then we will derive the eom and symplectic potential for the action (1.7). take a variation

$$\tag{2.1}
\begin{align}
\delta S & =\int \mathrm{d}t\mathrm{d}^{2}x\sqrt{ \sigma }\left(-\frac{1}{2}N\tilde{F}^{ab}(D_{a}\delta A_{b}-D_{b}\delta A_{a})+\frac{1}{N}\sigma ^{ab}(D_{a}(N^{2}A^{t})+\partial _{t}A_{b})(D_{b}(N^{2}\delta A^{t})+\partial _{t}\delta A_{b})-\mu ^{2}N\sigma ^{ab}A_{a}\delta A_{b}+\frac{1}{N}\mu ^{2}(N^{2}A^{t})(N^{2}\delta A^{t})\right) \\
 & =\int \mathrm{d}t\mathrm{d}^{2}x\sqrt{ \sigma }\left(\left( D_{a}(N\tilde{F}^{ab})-\frac{1}{N}(D^{b}(N^{2}\partial _{t}A^{t})+\partial ^{2}_{t}A^{b})-\mu ^{2}NA^{b} \right)\delta A_{b}+\left(-D_{b}\left( \frac{1}{N}D^{b}(N^{2}A^{t}) \right)-D_{b}\left(\frac{1}{N}\partial _{t}A^{b}\right)+\frac{1}{N}\mu ^{2}N^{2}A^{t}\right)N^{2}\delta A^{t}\right) \\
 & +\int \mathrm{d}^{2}x\sqrt{ \sigma }\left(\frac{1}{N}\sigma ^{ab}(D_{a}(N^{2}A^{t})+\partial _{t}A_{a})\delta A_{b}\right)\Big|^{t_{f}}_{t_{i}}
\end{align}
$$

we have

$$\tag{.}
\begin{align}
E_{t} & =N^{2}\left(-D_{a}\left( \frac{1}{N}D^{a}(N^{2}A^{t}) \right)+\frac{1}{N}\mu ^{2}N^{2}A^{t}-D_{a}\left( \frac{1}{N}\partial _{t}A^{a} \right)\right) \\
E^{b} & =N\left( \frac{1}{N}D_{a}(N\tilde{F}^{ab})-\frac{1}{N^{2}}D^{b}(N^{2}\partial _{t}A^{t})-\frac{1}{N^{2}}\partial _{t}^{2}A^{b}-\mu ^{2}A^{b} \right) \\
\theta & =\int \mathrm{d}^{2}x\sqrt{ \sigma } \frac{1}{N}(D^{b}(N^{2}A^{t})+\partial _{t}A^{b})\delta A_{b}
\end{align}
$$

the eom for $\displaystyle{A^{t}}$ is

$$\tag{.}
\begin{align}
-\frac{1}{N}D_{a}\left( \frac{1}{N}D^{a}(N^{2}A^{t}) \right)+\mu ^{2}A^{t} & =\frac{1}{N}D_{a}\left( \frac{1}{N}\partial _{t}A^{a} \right)
\end{align}
$$

introduce Green function $\displaystyle{G(x,y)}$ that satisfying

$$\tag{.}
\begin{align}
-\frac{1}{N}D_{a}\left( \frac{1}{N}D^{a}(N^{2}G(x,y)) \right)+\mu ^{2}G(x,y) & =-\delta ^{2}(x-y) \\
\implies A^{t}(x) & =-\int \mathrm{d}^{2}yG(x,y) \frac{1}{N}D_{a}\left( \frac{1}{N}\partial _{t}A^{a} \right)
\end{align}
$$

integrate out $\displaystyle{A^{t}}$, we get the effective Lagrangian

$$\tag{.}
\begin{align}
S & =\int \mathrm{d}t\mathrm{d}^{2}x\sqrt{ \sigma }\left(-\frac{1}{4}N\tilde{F}_{ab}\tilde{F}^{ab}+\frac{1}{2N}\sigma ^{ab}\left( D_{a}(N^{2}A^{t})+\partial _{t}A_{a} \right)\left( D_{b}(N^{2}A^{t})+\partial _{t}A_{b}\right)-\frac{1}{2}\mu ^{2}N\sigma ^{ab}A_{a}A_{b}+\frac{1}{2N}\mu ^{2}(N^{2}A^{t})^{2}\right) \\
 & =\int \mathrm{d}t\mathrm{d}^{2}x\sqrt{ \sigma }\left(-\frac{1}{4}N\tilde{F}_{ab}\tilde{F}^{ab}+\frac{1}{2N}\sigma ^{ab}\left( \partial _{t}A_{a}-D_{a}\left( N^{2}\int \mathrm{d}^{2}yG(x,y) \frac{1}{N}D_{c}\left( \frac{1}{N}\partial _{t}A^{c} \right) \right) \right)\left( \partial _{t}A_{b}-D_{b}\left( N^{2}\int \mathrm{d}^{2}zG(x,z) \frac{1}{N}D_{d}\left( \frac{1}{N}\partial _{t}A^{d} \right) \right) \right)\right. \\
 & \left.-\frac{1}{2}\mu ^{2}N\sigma _{ab}A^{a}A^{b}+\frac{1}{2N}\mu ^{2}\left( N^{2}\int \mathrm{d}^{2}y G(x,y) \frac{1}{N}D_{c}\left( \frac{1}{N}\partial _{t}A^{c} \right)\right)\left( N^{2}\int \mathrm{d}^{2}zG(x,z) \frac{1}{N}D_{d}\left( \frac{1}{N}\partial _{t}A^{d} \right) \right)\right)
\end{align}
$$

then the eom for $\displaystyle{A^{b}}$ becomes

$$\tag{.}
\begin{align}
D_{a}(N\tilde{F}^{ab})-\frac{1}{N}\partial _{t}^{2}A^{b}-\mu ^{2}NA^{b} & =-\frac{1}{N}\int \mathrm{d}^{2}yD^{b}(N^{2}G(x,y)) \frac{1}{N}D_{a}\left( \frac{1}{N}\partial _{t}^{2}A^{a} \right) \\
\implies \partial _{t}A^{t}+D_{b}A^{b} & =0 \\
\implies\frac{1}{N}D_{a}(N\tilde{F}^{a}_{~~b})+\frac{1}{N^{2}}D_{b}(N^{2}D_{a}(A^{a})) & =\frac{1}{N^{2}}\partial _{t}^{2}A_{b}+\mu ^{2}A_{b}
\end{align}
$$


$$\tag{.}
\begin{align}

D_{b}A^{a}+\partial _{t}A^{t}=0
\end{align}
$$