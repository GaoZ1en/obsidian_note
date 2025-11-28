isometries in $\displaystyle{\mathrm{AdS}_{3}}$ form a group $\displaystyle{\mathrm{SO}(2,2)\cong\mathrm{SL}(2,\mathbb{R})\times \mathrm{SL}(2,\mathbb{R})}$, with Killing vectors

$$\begin{align}
\xi _{1} & =\frac{1}{2}e^{i(t-\phi)}\left( r(1+r^{2})^{-1/2} \frac{\partial}{\partial t}-i(1+r^{2})^{1/2} \frac{\partial}{\partial r}-r^{-1}(1+r^{2})^{1/2} \frac{\partial}{\partial \phi} \right) \\
\xi _{0} & =\frac{1}{2}\left( \frac{\partial}{\partial t}-\frac{\partial}{\partial \phi} \right) \\
\xi _{-1} & =\frac{1}{2}e^{-i(t-\phi)}\left( r(1+r^{2})^{-1/2} \frac{\partial}{\partial t}+i(1+r^{2})^{1/2} \frac{\partial}{\partial r}-r^{-1}(1+r^{2})^{1/2} \frac{\partial}{\partial \phi} \right) \\
\bar{\xi}_{1} & =\frac{1}{2}e^{i(t+\phi)}\left( r(1+r^{2})^{-1/2} \frac{\partial}{\partial t}-i(1+r^{2})^{1/2} \frac{\partial}{\partial r}+r^{-1}(1+r^{2})^{1/2} \frac{\partial}{\partial \phi} \right) \\
\bar{\xi}_{0} & =\frac{1}{2}\left( \frac{\partial}{\partial t}+\frac{\partial}{\partial \phi} \right) \\
\bar{\xi}_{-1} & =\frac{1}{2}e^{-i(t+\phi)}\left( r(1+r^{2})^{-1/2} \frac{\partial}{\partial t}+i(1+r^{2})^{1/2} \frac{\partial}{\partial r}+r^{-1}(1+r^{2})^{1/2} \frac{\partial}{\partial \phi} \right)
\end{align}$$

which satisfy the commutation relations

$$\begin{align}
[\xi_{0},\xi_{1}] & =i\xi_{1} \\
[\xi_{0},\xi _{-1}] & =-i\xi _{-1} \\
[\xi _{1},\xi _{-1}] & =-2i\xi _{0} \\
[\bar{\xi}_{0},\bar{\xi}_{1}] & =i\bar{\xi}_{1} \\
[\bar{\xi}_{0},\bar{\xi}_{-1}] & =-i\bar{\xi}_{-1} \\
[\bar{\xi}_{1},\bar{\xi}_{-1}] & =-2i\bar{\xi}_{0}
\end{align}$$

generally, the Casimir operator of a Lie algebra can be constructed from the generators and the Killing metric of the Lie algebra as

$$\begin{align}
C & =g^{ab}T_{a}T_{b}
\end{align}$$

in the case of $\displaystyle{\mathrm{SL}(2,\mathbb{R})}$, the Killing metric is given by

$$\begin{align}
g_{ab} & = \frac{1}{2}f^{c}_{~ad}f^{d}_{~bc} \\
 & =2\delta ^{0}_{a}\delta ^{0}_{b}-\left(\delta ^{1}_{a}\delta ^{-1}_{b}+\delta ^{-1}_{a}\delta ^{1}_{a}\right)
\end{align}$$

then we can write down the Casimir operator explicitly

$$\begin{align}
\mathcal{C} & =\mathcal{L}_{\xi_{0}}^{2}-\frac{1}{2}\left(\mathcal{L}_{\xi _{1}}\mathcal{L}_{\xi _{-1}}+\mathcal{L}_{\xi _{-1}}\mathcal{L}_{\xi_{1}}\right) \\
\bar{\mathcal{C}} & =\mathcal{L}_{\bar{\xi}_{0}}^{2}-\frac{1}{2}\left(\mathcal{L}_{\bar{\xi}_{1}}\mathcal{L}_{\bar{\xi}_{-1}}+\mathcal{L}_{\bar{\xi}_{-1}}\mathcal{L}_{\bar{\xi}_{1}}\right) \\
 & [C,\mathcal{L}_{\xi}]=[\mathcal{\bar{C}},\mathcal{L}_{\xi}]=[\mathcal{C},\mathcal{\bar{C}}]=0
\end{align}$$

we reorganize the Casimirs to

$$\begin{align}
(\mathcal{C}+\mathcal{\bar{C}})A^{\mu} & =-\frac{1}{2}\nabla ^{2} A^{\mu}-A^{\mu} \\
(\mathcal{C}-\mathcal{\bar{C}})^{2}A^{\mu} & =\nabla^{2}A^{\mu}-\nabla _{\nu}\nabla ^{\mu}A^{\nu}
\end{align}$$

the eom can be written as

$$\begin{align}
\nabla _{\mu}F^{\mu \nu} & =\mu ^{2}A^{\nu} \\
\implies &  \begin{cases}
\nabla _{\mu}A^{\mu} =0 \\
\nabla ^{2}A^{\mu}-(\mu ^{2}-2)A^{\mu}=0
\end{cases}
\end{align}$$

then

$$\begin{align}
(\mathcal{C}+\mathcal{\bar{C}}) & =-\frac{1}{2}\mu ^{2} \\
(\mathcal{C}-\mathcal{\bar{C}})^{2} & =\mu ^{2} \\
\implies  & \begin{cases}
\mathcal{C} =-\frac{1}{4}\mu ^{2}-\frac{1}{2}\mu \\
\mathcal{\bar{C}}=-\frac{1}{4}\mu ^{2}+\frac{1}{2}\mu
\end{cases} \text{ or } \begin{cases}
\mathcal{C}=-\frac{1}{4}\mu ^{2}+\frac{1}{2}\mu \\
\mathcal{\bar{C}}=-\frac{1}{4}\mu ^{2}-\frac{1}{2}\mu
\end{cases}
\end{align}$$

$$\tag{.}\begin{align}
{f^{+}_{l,0,0}}^{\mu} & =\sqrt{ \frac{\mu+1}{\pi \mu} }e^{-i(\mu+2)t}(1+r^{2})^{-(\mu+2)/2}\xi _{1}^{\mu} \\
{f^{+}_{r,0,0}}^{\mu} & =\sqrt{ \frac{\mu+1}{\pi \mu} }e^{-i(\mu+2)t}(1+r^{2})^{-(\mu+2)/2}\tilde{\xi}_{1}^{\mu}
\end{align}$$

---

as for massive free scalar

$$\begin{align}
(\mathcal{C}+\mathcal{\bar{C}})\phi & =-\frac{1}{2}\nabla ^{2}\phi \\
 & =-\frac{1}{2}\mu^{2}\phi \\
(\mathcal{C}-\mathcal{\bar{C}})\phi & =0 \\
\implies \mathcal{C}=\mathcal{\bar{C}} & =-\frac{1}{4}\mu^{2}
\end{align}$$

$$\begin{align}
\phi _{0,0} & =\sqrt{ \frac{1}{2\pi} }e^{-i\Delta t}(1+r^{2})^{-\Delta /2} \\
\Delta  & =1+\sqrt{1+\mu ^{2}} \\
\phi _{n,\bar{n}} & =\sqrt{ \frac{1}{n!\bar{n}!(\Delta)_{n}(\Delta)_{\bar{n}}} }\mathcal{L}_{\xi _{-1}}^{n}\mathcal{L}_{\bar{\xi}_{-1}}^{\bar{n}}\phi _{0,0}
\end{align}$$

by induction we have

$$\begin{align}
\omega[\phi _{n_{1},\bar{n}_{1}},\phi _{n_{2},\bar{n}_{2}}^{*}]=-i\delta _{n_{1}n_{2}}\delta _{\bar{n}_{1}\bar{n}_{2}}
\end{align}$$

here we use

$$\begin{align}
\mathcal{L}_{\xi _{-1}}\phi _{n,\bar{n}} & =\sqrt{ (n+1)(\Delta+n) }\phi _{n+1,\bar{n}} & \mathcal{L}_{\xi _{-1}}\phi _{n,\bar{n}}^{*} & =-\sqrt{ n(\Delta+n-1) }\phi _{n-1,\bar{n}}^{*} \\
\mathcal{L}_{\xi_{0}}\phi _{n,\bar{n}} & =-i\frac{\Delta+2n}{2}\phi _{n,\bar{n}} & \mathcal{L}_{\xi_{0}}\phi _{n,\bar{n}}^{*} & =i\frac{\Delta+2n}{2}\phi _{n,\bar{n}}^{*} \\
\mathcal{L}_{\xi _{1}}\phi _{n,\bar{n}} & =-\sqrt{ n(\Delta+n-1) }\phi _{n-1,\bar{n}} & \mathcal{L}_{\xi _{1}}\phi _{n,\bar{n}}^{*} & =\sqrt{ (n+1)(\Delta+n) }\phi _{n+1,\bar{n}}^{*} \\
\mathcal{L}_{\bar{\xi}_{-1}}\phi _{n,\bar{n}} & =\sqrt{ (\bar{n}+1)(\Delta+\bar{n}) }\phi _{n,\bar{n}+1} & \mathcal{L}_{\bar{\xi}_{-1}}\phi _{n,\bar{n}}^{*} & =-\sqrt{ \bar{n}(\Delta+\bar{n}-1) }\phi _{n,\bar{n}-1}^{*} \\
\mathcal{L}_{\bar{\xi}_{0}}\phi _{n,\bar{n}} & =-i\frac{\Delta+2\bar{n}}{2}\phi _{n,\bar{n}} & \mathcal{L}_{\bar{\xi}_{0}}\phi _{n,\bar{n}}^{*} & =i\frac{\Delta+2\bar{n}}{2}\phi _{n,\bar{n}}^{*} \\
\mathcal{L}_{\bar{\xi}_{1}}\phi _{n,\bar{n}} & =-\sqrt{ \bar{n}(\Delta+\bar{n}-1) }\phi _{n,\bar{n}-1} & \mathcal{L}_{\bar{\xi}_{1}}\phi _{n,\bar{n}}^{*} & =\sqrt{ (\bar{n}+1)(\Delta+\bar{n}) }\phi _{n,\bar{n}+1}^{*}
\end{align}$$

