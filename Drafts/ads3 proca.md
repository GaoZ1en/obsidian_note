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
\omega ^{2}R^{t}+\partial _{\rho}^{2}R^{t}+\left( 2\tan \rho+\frac{1}{\sin \rho \cos \rho} \right)\partial _{\rho}R^{t}+\left( \frac{4-\mu ^{2}}{\cos ^{2}\rho}-\frac{m^{2}}{\sin ^{2}\rho} \right)R^{t} & =-2i \omega\tan \rho R^{\rho} \\
\omega ^{2}R^{\rho}+\partial _{\rho}^{2}R^{\rho}+\left( 2\tan \rho +\frac{1}{\sin \rho \cos \rho} \right)\partial _{\rho}R^{t}+\left( \frac{4-\mu ^{2}}{\cos ^{2}\rho}-\frac{m^{2}}{\sin ^{2}\rho}-\frac{1}{\sin ^{2}\rho \cos ^{2}\rho} \right)R^{\rho} & =-2i \omega\tan \rho R^{t}+\frac{2im}{\sin \rho \cos \rho}R^{\theta} \\
\omega ^{2}R^{\theta}+\partial _{\rho}^{2}R^{\theta}+\frac{3}{\sin \rho \cos \rho} \partial _{\rho}R^{\theta}+\left( \frac{4-\mu ^{2}}{\cos ^{2}\rho}-\frac{m^{2}}{\sin ^{2}\rho} \right)R^{\theta} & =-\frac{2im}{\sin ^{3}\rho \cos \rho}R^{\rho} \\
-i \omega R^{t}+\partial _{\rho}R^{\rho}+imR^{\theta}+\left( 2\tan \rho +\frac{1}{\sin \rho \cos \rho} \right)R^{\rho} & =0
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
\omega ^{2}R^{t}+4z(1-z)\partial _{z}^{2}R^{t}-4\partial _{z}R^{t}+\left( \frac{4-\mu ^{2}}{z}-\frac{m^{2}}{1-z} \right)R^{t} & =-2i \omega \sqrt{ \frac{1-z}{z} }R^{\rho} \\
\omega ^{2}R^{\rho}+4z(1-z)\partial _{z}^{2}R^{\rho}-4\partial _{z}R^{\rho}+\left( \frac{4-\mu ^{2}}{z}-\frac{m^{2}}{1-z}-\frac{1}{z(1-z)} \right)R^{\rho} & =-2i \omega \sqrt{ \frac{1-z}{z} }R^{t}+\frac{2im}{\sqrt{ z(1-z) }}R^{\theta} \\
\omega ^{2}R^{\theta}+4z(1-z)\partial _{z}^{2}R^{\theta}-4(1+z)\partial _{z}R^{\theta}+\left( \frac{4-\mu ^{2}}{z}-\frac{m^{2}}{1-z} \right)R^{\theta} & =-\frac{2im}{\sqrt{ z(1-z)^{3} }}R^{\rho} \\
-i \omega R^{t}-2\sqrt{ z(1-z) }\partial _{z}R^{\rho}+imR^{\theta}+\left( 2\sqrt{ \frac{1-z}{z} } +\frac{1}{\sqrt{ z(1-z) }} \right)R^{\rho} & =0
\end{align}
$$

by taking $\displaystyle{z\approx0}$, we get the asymptotic behavior

$$\tag{.}
\begin{align}
R^{t},R^{\theta} & \sim z^{(\mu+2)/2} \\
R^{\rho} & \sim z^{(\mu+3)/2}
\end{align}
$$

and by taking $\displaystyle{z\approx 1}$, we get the asymptotic behavior

$$\tag{.}
\begin{align}
R^{t} & \sim (1-z)^{|m|/2} \\
R^{\rho} & \sim (1-z)^{\sqrt{ 1+m^{2} }/2} \\
R^{\theta} & \sim (1-z)^{(1+\sqrt{ 1+m^{2} })/2}
\end{align}
$$

$$\tag{.}
\begin{align}
4z\partial _{z}^{2}R^{t}+4\partial _{z}R^{t}+\left( -\frac{m^{2}}{z} \right)R^{t} & =-2i \omega \sqrt{ z }R^{\rho} \\
4z\partial _{z}^{2}R^{\rho}+4\partial _{z}R^{\rho}+\left( -\frac{m^{2}+1}{z}\right)R^{\rho} & =-2i \omega \sqrt{ 1-z }R^{t}+\frac{2im}{\sqrt{ z }}R^{\theta} \\
4z\partial _{z}^{2}R^{\theta}+8\partial _{z}R^{\theta}+\left( -\frac{m^{2}}{z} \right)R^{\theta} & =-\frac{2im}{\sqrt{ z^{3} }}R^{\rho} \\
\end{align}
$$

$$\tag{.}
\begin{align}
(4\alpha ^{2}-m^{2}) \\
(4\beta ^{2}-m^{2}-1) \\
(4\gamma ^{2}+4\gamma-m^{2})
\end{align}
$$

$$\tag{.}
\begin{align}
\alpha & =\frac{|m|}{2} \\
\beta & =\frac{|m|-3}{2} \\

\end{align}
$$