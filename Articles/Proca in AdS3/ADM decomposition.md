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



$$\tag{2.2}
\begin{align}
E_{t} & =N^{3}\left(-\frac{1}{N}D_{a}\left( \frac{1}{N}D^{a}(N^{2}A^{t}) \right)+\mu ^{2}A^{t}-\frac{1}{N}D_{a}\left( \frac{1}{N}\partial _{t}A^{a} \right)\right) \\
E^{b} & =N\left( \frac{1}{N}D_{a}(N\tilde{F}^{ab})-\frac{1}{N^{2}}D^{b}(N^{2}\partial _{t}A^{t})-\frac{1}{N^{2}}\partial _{t}^{2}A^{b}-\mu ^{2}A^{b} \right) \\
\theta & =\int \mathrm{d}^{2}x\sqrt{ \sigma } \frac{1}{N}(D^{b}(N^{2}A^{t})+\partial _{t}A^{b})\delta A_{b}
\end{align}
$$

and the symplectic form is

$$\tag{.}
\begin{align}
\omega & =\int \mathrm{d}^{2}x\sqrt{ \sigma } \frac{1}{N}(D^{b}(N^{2}\delta A^{t})+\partial _{t}\delta A^{b})\wedge \delta A_{b}
\end{align}
$$

the eom for $\displaystyle{A^{t}}$ is

$$\tag{2.3}
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
\implies \partial _{t}A^{t}+\frac{1}{N}D_{b}(NA^{b}) & =0 \\
\implies \frac{1}{N}D_{a}(N\tilde{F}^{ab})+\frac{1}{N^{2}}D^{b}\left( ND_{a}(NA^{a}) \right) & =\frac{1}{N^{2}}\partial _{t}^{2}A^{b}+\mu ^{2}A^{b}
\end{align}
$$

these two equations are equivalent to

$$\tag{.}
\begin{align}
-i\omega \tilde{A}^{t}+\partial _{r}\tilde{A}^{r}+im\tilde{A}^{\phi}+ \frac{1}{r}\tilde{A}^{r} & =0 \\
(1+r^{2})\partial _{r}^{2}\tilde{A}^{r}+\frac{1+3r^{2}}{r}\partial _{r}\tilde{A}^{r}+\left( 1-\mu ^{2}-\frac{m^{2}+1}{r^{2}}+\frac{\omega ^{2}}{1+r^{2}} \right)\tilde{A}^{r}-\frac{2im}{r}\tilde{A}^{\phi} & =0 \\
\frac{2im}{r^{3}}\tilde{A}^{r}+(1+r^{2})\partial _{r}^{2}\tilde{A}^{\phi}+\frac{3+5r^{2}}{r}\partial _{r}\tilde{A}^{\phi}+\left( 4-\mu ^{2}-\frac{m^{2}}{r^{2}}+\frac{\omega ^{2}}{1+r^{2}} \right)\tilde{A}^{\phi} & =0 
\end{align}
$$

---

$$\tag{.}
\begin{align}
\frac{1}{N}D_{a}\left( \frac{1}{N}D^{a}(N^{2}A^{t}) \right)-\mu ^{2}A^{t} & =-\frac{1}{N}D_{a}\left( \frac{1}{N}\partial _{t}A^{a} \right)
\end{align}
$$

$$\tag{.}
\begin{align}
\frac{1}{N}\sigma ^{ab}D_{a}\left( \frac{1}{N}D_{b}(N^{2}A^{t}) \right) & =\frac{1}{r^{2}}\partial _{\phi}^{2}A^{t}+(1+r^{2})\partial _{r}^{2}A^{t}+3r\partial _{r}A^{t}+\frac{2}{1+r^{2}}A^{t}
\end{align}
$$

i have no idea how to do this. 

---

or we can study the symplectic form

$$\tag{2.2}
\begin{align}
\omega & = \int \mathrm{d}^{2}x\left(r\partial _{r}\delta A^{t}+\frac{2r^{2}}{1+r^{2}}\delta A^{t}+\frac{r}{(1+r^{2})^{2}}\partial _{t}\delta A^{r}\right)\wedge \delta A^{r} \\
 & +\int \mathrm{d}^{2}x\left( r\partial _{\phi}\delta A^{t}+\frac{r^{3}}{1+r^{2}}\partial _{r}\delta A^{\phi} \right)\wedge \delta A^{\phi}
\end{align}$$

now we will insert the following solution into the symplectic form

$$\tag{.}
\begin{align}
A_{0m\pm}^{t} & = \frac{1}{\mu+1+|m\mp 1|}\left[((\pm\mu+m)r^{2}+(\mp|m\mp 1|+m\mp 1))r^{|m\mp 1|-1}(1+r^{2})^{-(\mu+|m\mp 1|+3)/2}\right]e^{-i(\mu+1+|m\mp 1|)t}e^{im\phi} \\
A^{r}_{0m\pm} & =\mp ir^{|m\mp 1|}(1+r^{2})^{-(\mu+|m\mp 1|+1)/2}e^{-i(\mu+1+|m\mp 1|)t}e^{im\phi} \\
A^{\phi}_{0m\pm} & =r^{|m\mp 1|-1}(1+r^{2})^{-(\mu+|m\mp 1|+1)/2}e^{-i(\mu+1+|m\mp 1|)t}e^{im\phi} \\
A^{*t}_{0m\pm} & = \frac{1}{\mu+1+|m\mp 1|}\left[((\pm\mu+m)r^{2}+(\mp|m\mp 1|+m\mp 1))r^{|m\mp 1|-1}(1+r^{2})^{-(\mu+|m\mp 1|+3)/2}\right]e^{i(\mu+1+|m\mp 1|)t}e^{-im\phi} \\
A^{*r}_{0m\pm} & =\pm ir^{|m\mp 1|}(1+r^{2})^{-(\mu+|m\mp 1|+1)/2}e^{i(\mu+1+|m\mp 1|)t}e^{-im\phi} \\
A^{*\phi}_{0m\pm} & =r^{|m\mp 1|-1}(1+r^{2})^{-(\mu+|m\mp 1|+1)/2}e^{i(\mu+1+|m\mp 1|)t}e^{-im\phi} \\
\tilde{A}^{*t}_{0m\pm}=\tilde{A}^{t}_{0m\pm} & = \frac{1}{\mu+1+|m\mp 1|}\left[((\pm\mu+m)r^{2}+(\mp|m\mp 1|+m\mp 1))r^{|m\mp 1|-1}(1+r^{2})^{-(\mu+|m\mp 1|+3)/2}\right] \\
-\tilde{A}^{*r}_{0m\pm}=\tilde{A}^{r}_{0m\pm} & =\mp ir^{|m\mp 1|}(1+r^{2})^{-(\mu+|m\mp 1|+1)/2} \\
\tilde{A}^{*\phi}_{0m\pm}=\tilde{A}^{\phi}_{0m\pm} & =r^{|m\mp 1|-1}(1+r^{2})^{-(\mu+|m\mp 1|+1)/2}
\end{align}$$

$$\tag{.}
\begin{align}
\omega[\delta _{1}A^{\mu},\delta _{2}A^{\nu}] & =\int \mathrm{d}r\mathrm{d}\phi\left( r\partial _{r}\delta_{1}A^{t}+\frac{2r^{2}}{1+r^{2}}\delta _{1}A^{t}+ \frac{r}{(1+r^{2})^{2}}\partial _{t}\delta _{1}A^{r} \right)\delta _{2}A^{r} \\
 & -\int \mathrm{d}r\mathrm{d}\phi\left( r\partial _{r}\delta_{2}A^{t}+\frac{2r^{2}}{1+r^{2}}\delta _{2}A^{t}+ \frac{r}{(1+r^{2})^{2}}\partial _{t}\delta _{2}A^{r} \right)\delta _{1}A^{r} \\
 & +\int \mathrm{d}r\mathrm{d}\phi\left( r\partial _{\phi}\delta_{1} A^{t}+\frac{r^{3}}{1+r^{2}}\partial _{r}\delta_{1} A^{\phi} \right)\delta_{2} A^{\phi} \\
 & -\int \mathrm{d}r\mathrm{d}\phi\left( r\partial _{\phi}\delta_{2} A^{t}+\frac{r^{3}}{1+r^{2}}\partial _{r}\delta_{2} A^{\phi} \right)\delta_{1} A^{\phi}
\end{align}$$

$$\tag{.}
\begin{align}
\omega[A^{\mu}_{0m\pm},{A^{\nu}_{0m\pm}}^{*}] & =\int \mathrm{d}r\mathrm{d}\phi\left( r\partial _{r}\tilde{A}_{0m\pm}^{t}+\frac{2r^{2}}{1+r^{2}}\tilde{A}_{0m\pm}^{t}- \frac{i\omega r}{(1+r^{2})^{2}}A_{0m\pm}^{r} \right)\tilde{A}_{0m\pm}^{r} \\
 & -\int \mathrm{d}r\mathrm{d}\phi\left( r\partial _{r}\tilde{A}_{0m\pm}^{*t}+\frac{2r^{2}}{1+r^{2}}\tilde{A}_{0m\pm}^{*t}+ \frac{i\omega r}{(1+r^{2})^{2}}\tilde{A}_{0m\pm} ^{*r}\right)\tilde{A}_{0m\pm}^{r} \\
 & +\int \mathrm{d}r\mathrm{d}\phi\left( imr\tilde{A}_{0m\pm}^{t}+\frac{r^{3}}{1+r^{2}}\partial _{r}\tilde{A}_{0m\pm}^{\phi} \right)\tilde{A}_{0m\pm}^{\phi} \\
 & -\int \mathrm{d}r\mathrm{d}\phi\left( -imr\tilde{A}_{0m\pm}^{*t}+\frac{r^{3}}{1+r^{2}}\partial _{r}\tilde{A}_{0m\pm}^{*\phi} \right)\tilde{A}_{0m\pm}^{\phi}
\end{align}$$

$$\tag{.}
\begin{align}
\omega[A^{\mu}_{0m\pm},{A^{\nu}_{0m\pm}}^{*}] & =-2\int \mathrm{d}r\mathrm{d}\phi\left( r\partial _{r}\tilde{A}_{0m\pm}^{t}+\frac{2r^{2}}{1+r^{2}}\tilde{A}_{0m\pm}^{t}- \frac{i(\mu+|m\mp1|+1) r}{(1+r^{2})^{2}}A_{0m\pm}^{r} \right)\tilde{A}_{0m\pm}^{r} \\
 & +2\int \mathrm{d}r\mathrm{d}\phi\left( imr\tilde{A}_{0m\pm}^{t}\right)\tilde{A}_{0m\pm}^{\phi} \\
 & =\frac{-4\pi(m^{2}-\mu ^{2})i}{\mu+|m-1|+1}\int _{0}^{\infty}\mathrm{d}r r^{2|m-1|+1}(1+r^{2})^{-\mu-|m-1|-2} \\
 & =-\frac{2\pi(m^{2}-\mu ^{2})i}{\mu+|m-1|+1} \frac{\Gamma(\mu+1)\Gamma(|m-1|+1)}{\Gamma(\mu+|m-1|+2)}
\end{align}$$

$$\tag{.}
\begin{align}
(1+r^{2})(1+m(2+m+mr^{2})-r^{2}\mu ^{2})+r^{2}(1+\mu)|1+m|-(m+1)^{2}-r^{2}|m|
\end{align}$$