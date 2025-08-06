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

where $\displaystyle{\tilde{F}_{ab}=D_{a}(\sigma ^{\beta}_{b}A_{\beta})-D_{b}(\sigma ^{\beta}_{a}A_{\beta})}$.

$$\tag{1.4.2}
\begin{align}
\sigma ^{\mu \rho}\tau ^{\nu}\tau ^{\lambda}F_{\mu \nu}F_{\rho \lambda} & =\sigma ^{\mu \rho}\tau ^{\nu}\tau ^{\lambda}(\nabla _{\mu}A_{\nu}-\nabla _{\nu}A_{\mu})(\nabla _{\rho}A_{\lambda}-\nabla _{\lambda}A_{\rho}) \\
 & =\sigma ^{\mu \rho}\tau ^{\nu}\tau ^{\lambda}(\nabla _{\mu}A_{\nu}\nabla _{\rho}A_{\lambda}-2\nabla _{\nu}A_{\mu}\nabla _{\rho}A_{\lambda}+\nabla _{\nu}A_{\mu}\nabla _{\lambda}A_{\rho})
\end{align}
$$

$$\tag{1.4.2.1}
\begin{align}
\sigma ^{\mu \rho}\tau ^{\nu}\tau ^{\lambda}\nabla _{\mu}A_{\nu}\nabla _{\rho}A_{\lambda} & =\sigma ^{\mu \rho}(\nabla _{\mu}(\tau ^{\nu}A_{\nu})-A_{\nu}\nabla _{\mu}\tau ^{\nu})(\nabla _{\rho}(\tau ^{\lambda}A_{\lambda})-A_{\lambda}\nabla _{\rho}\tau ^{\lambda}) \\
 & =\sigma ^{\mu \rho}D_{\mu}(\tau ^{\nu}A_{\nu})D_{\rho}(\tau ^{\lambda}A_{\lambda})-2\sigma ^{\mu \rho}\nabla _{\rho}(\tau ^{\lambda}A_{\lambda})A_{\nu}\nabla _{\mu}\tau ^{\nu}+\sigma ^{\mu \rho}A_{\nu}\nabla _{\mu}\tau ^{\nu}A_{\lambda}\nabla _{\rho}\tau ^{\lambda} \\
 & =\sigma ^{ab}D_{a}(\tau ^{\nu}A_{\nu})D_{b}(\tau ^{\lambda}A_{\lambda})-2A_{a}K^{ab}D _{b}(\tau ^{\lambda}A_{\lambda})+A_{a}K^{ab}A_{c}K_{b}^{~c} \\
 & =\sigma ^{ab}D_{a}(NA^{t})D_{b}(NA^{t})
\end{align}
$$

$$\tag{1.4.2.2}
\begin{align}
\sigma ^{\mu \rho}\tau ^{\nu}\tau ^{\lambda}\nabla _{\nu}A_{\mu}\nabla _{\rho}A_{\lambda} & =\sigma ^{\mu \rho}\tau ^{\nu}\nabla _{\nu}(\sigma ^{\alpha}_{\mu}A_{\alpha}+\tau _{\mu}\tau ^{\alpha}A_{\alpha})(\nabla _{\rho}(\tau ^{\lambda}A_{\lambda})-A_{\lambda}\nabla _{\rho}\tau ^{\lambda}) \\
 & =(\tau ^{\nu}\nabla _{\nu}(\sigma ^{\alpha}_{\mu}A_{\alpha})+\tau ^{\nu}\nabla _{\nu}\tau _{\mu}\tau ^{\alpha}A_{\alpha})(\sigma ^{\mu \rho}\nabla _{\rho}(\tau ^{\lambda}A_{\lambda})-\sigma ^{\mu \rho}A_{\lambda}\nabla _{\rho}\tau ^{\lambda}) \\
 & =(\tau ^{\nu}\nabla _{\nu}(\sigma ^{\alpha}_{a}A_{\alpha})+a_{a}\tau ^{\alpha}A_{\alpha})(D^{a}(\tau ^{\lambda}A_{\lambda})-K^{ab}A_{b}) \\
 & =\left( \frac{1}{N}\partial _{t}(\sigma ^{b}_{a}A_{a})+a_{a}NA^{t} \right)D^{a}(NA^{t})
\end{align}
$$

$$\tag{1.4.2.3}
\begin{align}
\sigma ^{\mu \nu}\tau ^{\nu}\tau ^{\lambda}\nabla _{\nu}A_{\mu}\nabla _{\lambda}A_{\rho} & =\sigma ^{\mu \nu}\tau ^{\nu}\nabla _{\nu}(\sigma ^{\alpha}_{\mu}A_{\alpha}+\tau _{\mu}\tau ^{\alpha}A_{\alpha})\tau ^{\lambda}\nabla _{\lambda}(\sigma ^{\beta}_{\rho}A_{\beta}+\tau _{\rho}\tau ^{\beta}A_{\beta}) \\
 & =\sigma ^{ab}(\tau ^{\nu}\nabla _{\nu}(\sigma ^{\alpha}_{a}A_{\alpha})+a_{a}\tau ^{\alpha}A_{\alpha})(\tau ^{\lambda}\nabla _{\lambda}(\sigma ^{\beta}_{b}A_{\beta})+a_{b}\tau ^{\beta}A_{\beta}) \\
 & =\frac{1}{N^{2}}\sigma ^{ab}\partial _{t}(\sigma ^{c}_{a}A_{c})\partial _{t}(\sigma ^{d}_{b}A_{d})+2a^{a}NA^{t}\partial _{t}(\sigma ^{b}_{a}A_{b})+a_{a}a^{a}(NA^{t})^{2}
\end{align}
$$

thus

$$\tag{1.5}
\begin{align}
-\frac{1}{4}F_{\mu \nu}F^{\mu \nu} & =-\frac{1}{4}\tilde{F}_{ab}\tilde{F}^{ab}+\frac{1}{2}\left( \sigma ^{ab}D_{a}(NA^{t})D_{b}(NA^{t})-2D^{a}(NA^{t})\left( \frac{1}{N}\partial _{t}(\sigma ^{b}_{a}A_{a})+a_{a}NA^{t} \right)\right. \\
 & \left.+\frac{1}{N^{2}}\sigma ^{ab}\partial _{t}(\sigma ^{c}_{a}A_{c})\partial _{t}(\sigma ^{d}_{b}A_{d})+2a^{a}NA^{t}\partial _{t}(\sigma ^{b}_{a}A_{b})+a_{a}a^{a}(NA^{t})^{2} \right) \\
 & =-\frac{1}{4}\tilde{F}_{ab}\tilde{F}^{ab}+\frac{1}{2}\sigma ^{ab}\left( D_{a}(NA^{t})+\frac{1}{N}\partial _{t}(\sigma ^{b}_{a}A_{b})- \right)
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
S & =\int \mathrm{d}^{3}xN\sqrt{ \sigma }\left(-\frac{1}{4}\tilde{F}_{ab}\tilde{F}^{ab}+\frac{1}{2}\left( \sigma ^{ab}D_{a}(NA^{t})D_{b}(NA^{t})-2D^{a}(NA^{t})\left( \frac{1}{N}\partial _{t}(\sigma ^{b}_{a}A_{a})+a_{a}NA^{t} \right)\right.\right. \\
 & \left.\left.+\frac{1}{N^{2}}\sigma ^{ab}\partial _{t}(\sigma ^{c}_{a}A_{c})\partial _{t}(\sigma ^{d}_{b}A_{d})+2a^{a}NA^{t}\partial _{t}(\sigma ^{b}_{a}A_{b})+a_{a}a^{a}(NA^{t})^{2} \right)-\frac{1}{2}\mu ^{2}\sigma ^{ab}A_{a}A_{b}+\frac{1}{2}\mu ^{2}(N^{2}A^{t})^{2}\right)
\end{align}
$$

$$\tag{1.8}
\begin{align}
\nabla _{\mu}F^{\mu \nu} & =g^{\mu \rho}g^{\nu \sigma}\nabla _{\mu}F_{\rho \sigma} \\
 & =(\sigma ^{\mu \rho}-\tau ^{\mu}\tau ^{\rho})(\sigma ^{\nu \sigma}-\tau ^{\nu}\tau ^{\sigma})\nabla _{\mu}F_{\rho \sigma} \\
 & =\sigma ^{\mu \rho}\sigma ^{\nu \sigma}\nabla _{\mu}F_{\rho \sigma}-\sigma ^{\mu \rho}\tau ^{\nu}\tau ^{\sigma}\nabla _{\mu}F_{\rho \sigma}-\sigma ^{\nu \sigma}\tau ^{\mu}\tau ^{\rho}\nabla _{\mu}F_{\rho \sigma}
\end{align}
$$

the first term is

$$\tag{1.9}
\begin{align}
\sigma ^{\mu \rho}\sigma ^{\nu \sigma}\nabla _{\mu}F_{\rho \sigma} & =\sigma ^{\mu \rho}\sigma ^{\nu \sigma}\nabla _{\mu}(\nabla _{\rho}A_{\sigma}-\nabla _{\sigma}A_{\rho}) \\
 & =
\end{align}
$$

$$\tag{.}
\begin{align}
\tau ^{\mu}\nabla _{\mu}(\sigma ^{\alpha}_{\nu}A_{\alpha}) & =\tau ^{\mu}\partial _{\mu}(\sigma ^{\alpha}_{\nu}A_{\alpha})
\end{align}
$$