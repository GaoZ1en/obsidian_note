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

where $\displaystyle{\tilde{F}_{ab}=D_{a}(\sigma ^{\beta}_{b}A_{\beta})-D_{b}(\sigma ^{\beta}_{a}A_{\beta})}$. notice that

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
 & =\sigma ^{ab}\left( D_{a}(NA^{t})+\frac{1}{N}\partial _{t}(\sigma ^{c}_{a}A_{c})+a_{a}(NA^{t}) \right)\left( D_{b}(NA^{t})+\frac{1}{N}\partial _{t}(\sigma ^{d}_{b}A_{d}) +a_{b}(NA^{t})\right)
\end{align}
$$

thus

$$\tag{1.5}
\begin{align}
-\frac{1}{4}F_{\mu \nu}F^{\mu \nu} & =-\frac{1}{4}\tilde{F}_{ab}\tilde{F}^{ab}+\frac{1}{2}\sigma ^{ab}\left( D_{a}(NA^{t})+\frac{1}{N}\partial _{t}(\sigma ^{c}_{a}A_{c})+a_{a}(NA^{t}) \right)\left( D_{b}(NA^{t})+\frac{1}{N}\partial _{t}(\sigma ^{d}_{b}A_{d}) +a_{b}(NA^{t})\right)
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
S & =\int \mathrm{d}^{3}xN\sqrt{ \sigma }\left(-\frac{1}{4}\tilde{F}_{ab}\tilde{F}^{ab}\frac{1}{2}\sigma ^{ab}\left( D_{a}(NA^{t})+\frac{1}{N}\partial _{t}(\sigma ^{c}_{a}A_{c})+a_{a}(NA^{t}) \right)\left( D_{b}(NA^{t})+\frac{1}{N}\partial _{t}(\sigma ^{d}_{b}A_{d}) +a_{b}(NA^{t})\right)-\frac{1}{2}\mu ^{2}\sigma ^{ab}A_{a}A_{b}+\frac{1}{2}\mu ^{2}(NA^{t})^{2}\right)
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
\sigma ^{\mu \rho}\sigma ^{\nu \sigma}\nabla _{\mu}F_{\rho \sigma} & =\sigma ^{\mu \rho}\sigma ^{\nu \sigma}\nabla _{\mu}(\nabla _{\rho}(\sigma ^{\alpha}_{\lambda}A_{\alpha})+\nabla _{\rho}\tau _{\lambda}\tau ^{\alpha}A_{\alpha}+\tau _{\lambda}\nabla _{\rho}(\tau ^{\alpha}A_{\alpha})-(\lambda\leftrightarrow \rho)) \\
 & =
\end{align}
$$

$$\tag{.}
\begin{align}
\tau ^{\mu}\nabla _{\mu}(\sigma ^{\alpha}_{\nu}A_{\alpha}) & =\tau ^{\mu}\partial _{\mu}(\sigma ^{\alpha}_{\nu}A_{\alpha})
\end{align}
$$