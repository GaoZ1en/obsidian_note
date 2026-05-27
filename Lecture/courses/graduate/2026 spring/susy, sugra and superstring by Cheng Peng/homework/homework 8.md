# problem 8

write

$$\begin{align}
X^{\mu}(z,\bar{z}) & =x^{\mu}-\frac{i\alpha'}{2}p^{\mu}\ln|z|^{2}+i\sqrt{ \frac{\alpha'}{2} }\sum _{n\neq 0} \frac{1}{n}(\alpha _{n}^{\mu}z^{-n}+\tilde{\alpha}^{\mu}_{n}\bar{z}^{-n})
\end{align}$$

prove that

$$\begin{align}
\braket{ \partial X^{\mu}(z)\partial X^{\nu}(w) }  & =-\frac{\alpha'}{2}\frac{\eta ^{\mu \nu}}{(z-w)^{2}}
\end{align}$$

## solution

we have

$$\begin{align}
\partial X^{\mu}(z) & =-i\sqrt{ \frac{\alpha'}{2} } \sum _{n\in \mathbb{Z}} \alpha ^{\mu}_{n}z^{-n-1}
\end{align}$$

using the commutation relation

$$\begin{align}
[\alpha ^{\mu}_{n},\alpha ^{\nu}_{m}] & =n\eta ^{\mu \nu}\delta_{n+m,0}
\end{align}$$

then

$$\begin{align}
\braket{ \partial X^{\mu}(z)\partial X^{\nu}(w) }  & =-\frac{\alpha'}{2} \sum _{n,m\in \mathbb{Z}}\braket{ \alpha ^{\mu}_{n}z^{-n-1}\alpha ^{\nu}_{m}w^{-m-1} }  \\
 & =-\frac{\alpha'}{2}\sum _{n>0,m\in \mathbb{Z}} \frac{1}{z^{n+1}w^{m+1}}n \eta^{\mu \nu} \delta_{n+m,0} \\
 & =-\frac{\alpha'}{2}\eta^{\mu \nu}\sum _{n>0} \frac{n}{z^{n+1}w^{-n+1}}  \\
 & =-\frac{\alpha'}{2}\eta^{\mu \nu} \frac{1}{z^{2}}\sum _{n>0} n\left( \frac{w}{z} \right)^{n-1} \\
 & =-\frac{\alpha'}{2} \eta ^{\mu \nu} \frac{1}{z^{2}} \frac{1}{\left( 1-\frac{w}{z} \right)^{2}} \\
 & =-\frac{\alpha'}{2} \frac{\eta ^{\mu \nu}}{(z-w)^{2}}
\end{align}$$
