$$\begin{align}\tag{1.3}
\cot \rho(\partial_{\rho}A_{\theta}- \partial_{\theta}A_{\rho}) & =-\mu A_{t} \\
-\cot \rho(\partial_{\theta}A_{t}-\partial_{t}A_{\theta}) & =-\mu A_{\rho} \\
-\sin \rho \cos \rho(\partial _{t}A_{\rho}-\partial _{\rho}A_{t}) & =-\mu A_{\theta}
\end{align}$$

make the following ansatz

$$\tag{1.4}
\begin{align}
A_{\mu} & =e^{-i \omega t}e^{im\theta}R_{\mu}(\rho)
\end{align}
$$

$$\tag{.}
\begin{align}
\cot \rho\left( \partial _{\rho}R_{\theta}+\frac{m}{\mu}\cot \rho(mR_{t}+\omega R_{\theta}) \right) & =-\mu R_{t} \\
\sin \rho \cos \rho\left( - \frac{\omega}{\mu}\cot \rho(mR_{t}+\omega R_{\theta})+\partial _{\rho}R_{t} \right) & =-\mu R_{\theta} \\
\frac{i}{\mu}\cot \rho(mR_{t}+\omega R_{\theta}) & =R_{\rho} \\
\end{align}
$$



$$\tag{.}
\begin{align}
 \left( \frac{m^{2}}{\mu}z+(1-z)\mu \right) R_{t}+\left( \frac{m\omega}{\mu}z-2z(1-z)\partial _{z} \right)R_{\theta}  & =0 \\
\left( \frac{m\omega }{\mu} z +2z(1-z)\partial _{z} \right)R_{t}+\left( \frac{\omega ^{2}}{\mu}z-\mu \right) R_{\theta} & =0 \\
\end{align}
$$

for the case $\displaystyle{m=0}$
$$\tag{.}
\begin{align}
R_{\theta}\propto (\cos \rho)^{\mu+2}{}_{2}F_{1}\left( \frac{\mu+2-\omega}{2},\frac{\mu+2+\omega}{2};\mu+1;\cos ^{2}\rho \right)
\end{align}
$$
?

$$\tag{.}
\begin{align}
\mu R_{t}= 2z\partial _{z} R_{\theta}  &  \\
 2z(1-z)\partial _{z} (2z\partial _{z}R_{\theta})+\left( \omega ^{2}z-\mu ^{2} \right) R_{\theta} & =0 \\
 4z^{2}(1-z)R''_{\theta}+4z(1-z)R_{\theta}+(\omega ^{2}z-\mu ^{2})R_{\theta} & =0\\
\end{align}
$$
$$\tag{.}
\begin{align}
 4z^{2}(1-z)R''_{\theta}+4z(1-z)R_{\theta}+(\omega ^{2}z-\mu ^{2})R_{\theta} & =0
\end{align}
$$

$$\tag{.}
\begin{align}
4z^{2}(1-z)R''_{\theta}
\end{align}
$$
$$\tag{.}
\begin{align}
r=\frac{\omega ^{2}-\mu ^{2}}{4}
\end{align}
$$

$$\tag{.}
\begin{align}
4z^{2}r(r-1)z^{r-2}+4zrz^{r-1}-\mu ^{2}z^{r}=0\implies r=\frac{\mu}{2}
\end{align}
$$

$\displaystyle{R_{\theta}=z^{\mu/2}F}$

$$\tag{.}
\begin{align}
R'_{\theta} & =\frac{\mu}{2}z^{\mu/2-1}F+z^{\mu/2}F' \\
R''_{\theta} & =\frac{\mu}{2}\left( \frac{\mu}{2}-1 \right)z^{\mu/2-2}F+\mu z^{\mu/2-1}F'+z^{\mu/2}F''
\end{align}
$$
$$\tag{.}
\begin{align}
 4z^{2}(1-z)R''_{\theta}+4z(1-z)R_{\theta}+(\omega ^{2}z-\mu ^{2})R_{\theta} & =0 \\
z(1-z)\left( \frac{\mu}{2}\left( \frac{\mu}{2}-1 \right)z^{-2}F+\mu z^{-1}F'+F'' \right)+(1-z)\left( \frac{\mu}{2}z^{-1}F+F' \right)+\frac{1}{4}\left( \omega ^{2}-\frac{\mu ^{2}}{z} \right)F & =0
\end{align}
$$

$$\tag{.}
\begin{align}
F'' & :z(1-z) \\
F' & :\mu(1-z)+ (1-z)=\mu+1-(\mu+1)z \\
F & : \frac{\mu(\mu-2)(1-z)}{4z}+\frac{2\mu(1-z)}{4z}+ \frac{1}{4}\omega ^{2}-\frac{\mu ^{2}}{4z} \\
 & =\frac{1}{4}(\omega ^{2}-\mu ^{2})
\end{align}
$$
$$\tag{.}
\begin{align}
z(1-z)F''+(\mu+1-(\mu+1)z)F'+\frac{1}{4}(\omega ^{2}-\mu ^{2})F=0
\end{align}
$$

$$\tag{.}
\begin{align}
\omega ^{2}R^{t}+\partial _{\rho}^{2}R^{t}+\left( 2\tan \rho+\frac{1}{\sin \rho \cos \rho} \right)\partial _{\rho}R^{t}+\left( \frac{4-\mu ^{2}}{\cos ^{2}\rho}-\frac{m^{2}}{\sin ^{2}\rho} \right)R^{t} & =-2i \omega\tan \rho R^{t} \\
\omega ^{2}R^{\rho}+\partial _{\rho}^{2}R^{\rho}+\left( 2\tan \rho +\frac{1}{\sin \rho \cos \rho} \right)\partial _{\rho}R^{t}+\left( \frac{4-\mu ^{2}}{\cos ^{2}\rho}-\frac{m^{2}}{\sin ^{2}\rho}-\frac{1}{\sin ^{2}\rho \cos ^{2}\rho} \right)R^{\rho} & =-2i \omega\tan \rho R^{t}+\frac{2im}{\sin \rho \cos \rho}R^{\theta} \\
\omega ^{2}R^{\theta}+\partial _{\rho}^{2}R^{\theta}+\frac{3}{\sin \rho \cos \rho} \partial _{\rho}R^{\theta}+\left( \frac{4-\mu ^{2}}{\cos ^{2}\rho}-\frac{m^{2}}{\sin ^{2}\rho} \right)R^{\theta} & =-\frac{2im}{\sin ^{3}\rho \cos \rho}R^{\rho} \\
-i \omega R^{t}+\partial _{\rho}R^{\rho}+imR^{\theta}+\left( 2\tan \rho +\frac{1}{\sin \rho \cos \rho} \right)R^{\rho} & =0
\end{align}
$$

we first consider the case $\displaystyle{m=0}$. $\displaystyle{R^{\theta}}$ decouples from the other two equations.

$$\tag{.}
\begin{align}
\partial _{\rho}^{2}R^{\theta}+\frac{3}{\sin \rho \cos \rho} \partial _{\rho}R^{\theta}+\left( \omega ^{2}+\frac{4-\mu ^{2}}{\cos ^{2}\rho} \right)R^{\theta} & =0
\end{align}
$$

let $\displaystyle{z=\cos ^{2}\rho}$, 

$$\tag{.}
\begin{align}
\sin \rho \cos \rho & =\sqrt{ z(1-z) } \\
\partial _{\rho} & =\frac{\mathrm{d}z}{\mathrm{d}\rho} \frac{\mathrm{d}}{\mathrm{d}z} \\
 & =-2\sqrt{ z(1-z) } \partial _{z} \\
\partial _{\rho}^{2} & =4\sqrt{ z(1-z) }\partial _{z}(\sqrt{ z(1-z)}\partial _{z} ) \\
 & =4z(1-z)\partial _{z}^{2}+2(1-2z)\partial _{z}
\end{align}
$$

$$\tag{.}
\begin{align}
z(1-z)\Theta''-\left( 1+\frac{z}{2} \right)\Theta'+\frac{1}{4}\left( \omega ^{2}+\frac{4-\mu ^{2}}{z} \right)\Theta & =0
\end{align}
$$

let $\displaystyle{\Theta=z^{1+ \mu/2}F}$

$$\tag{.}
\begin{align}
\Theta' & =\left( 1+\frac{\mu}{2} \right)z^{-1}F+F' \\
\Theta'' & =\left( 1+\frac{\mu}{2} \right) \frac{\mu}{2}z^{-2}F+(2+\mu) z^{-1}F'+F''
\end{align}
$$

$$\tag{.}
\begin{align}
z(1-z)\left( F''+(2+\mu)z^{-1}F'+\left( 1+\frac{\mu}{2} \right) \frac{\mu}{2}z^{-2}F \right)-\left( 1+\frac{z}{2} \right)\left( \left( 1+\frac{\mu}{2} \right)z^{-1}F+F' \right)+\frac{1}{4}\left( \omega ^{2}+\frac{4-\mu ^{2}}{z} \right)F=0
\end{align}
$$

$$\tag{.}
\begin{align}
F'' & :z(1-z) \\
F' & :(2+\mu)(1-z)-\left( 1+\frac{z}{2} \right) \\
 & =\mu+1-z\left( \mu+\frac{1}{2}+1 \right) \\
F & =\frac{(\mu ^{2}+2\mu)(1-z)}{z}-\frac{4+2z}{4z}+\frac{4-\mu ^{2}}{4z}+\frac{1}{4}\omega ^{2} \\
 & =
\end{align}
$$

