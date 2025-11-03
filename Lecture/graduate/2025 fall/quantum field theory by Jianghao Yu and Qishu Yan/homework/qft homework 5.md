# problem 1

define little group generator for massless particles

$$\begin{align}
A & =K_{1}+J_{2}  \\
B & =K_{2}-J_{1} \\
J_{3} & =J_{3}
\end{align}$$

show that they satisfy the commutation relations

$$\begin{align}
[J_{3},A] & =iB \\
[J_{3},B] & =-iA \\
[A,B] & =0
\end{align}$$

*sol*.

it is straightforward to check the commutation relations using the known commutation relations of the Lorentz generators:

$$\begin{align}
[J_{3},A] & =[J_{3},K_{1}]+[J_{3},J_{2}] \\
 & =iK_{2}+iJ_{1} \\
 & =iB \\
[J_{3},B] & =[J_{3},K_{2}]-[J_{3},J_{1}] \\
 & =-iK_{1}+iJ_{2} \\
 & =-iA \\
[A,B] & =[K_{1},K_{2}]-[K_{1},J_{1}]+[J_{2},K_{2}]-[J_{2},J_{1}] \\
 & =-iJ_{3}+iK_{2}+iK_{1}+iJ_{3} \\
 & =0
\end{align}$$

# problem 2

construct right-handed spinor from left-handed spinor

*sol*. we have known that the transformation laws of left-handed and right-handed spinors are respectively given by

$$\begin{align}
\psi _{L} & \mapsto \exp\left(-\frac{i}{2}(\vec{\theta}-i\vec{\beta})\cdot \vec{\sigma}\right)\psi _{L} \\
\psi _{R} & \mapsto \exp\left(-\frac{i}{2}(\vec{\theta}+i\vec{\beta})\cdot \vec{\sigma}\right)\psi _{R}
\end{align}$$

under Lorentz transformations. and we have the identity

$$\begin{align}
-\vec{\sigma} & \sigma ^{2}=\sigma ^{2}\vec{\sigma}^{*}
\end{align}$$

we can then deduce the transformation law of $\sigma ^{2}\psi _{L}^{*}$ as

$$\begin{align}
\sigma ^{2}\psi _{L}^{*} & \mapsto \sigma ^{2}\exp\left(\frac{i}{2}(\vec{\theta}+i\vec{\beta})\cdot \vec{\sigma}^{*}\right)\psi _{L}^{*} \\
 & =\exp\left(-\frac{i}{2}\left(\vec{\theta}-i\vec{\beta}\right)\cdot \vec{\sigma}\right)\sigma ^{2}\psi _{L}^{*}
\end{align}$$

which is exactly the transformation law of a right-handed spinor. therefore, $\sigma ^{2}\psi _{L}^{*}$ is indeed a right-handed spinor.

# problem 3

completeness relation

*sol*. using

$$\begin{align}
\sum _{s=1,2}\xi ^{s}\xi ^{s\dagger} & =\hat{1}_{2\times2} \\
(p\cdot \sigma)(p\cdot \bar{\sigma}) & =p^{2}=m^{2}
\end{align}$$

we have

$$\begin{align}
\sum _{s}u^{s}(p)\bar{u}^{s}(p) & =\sum _{s}\begin{pmatrix}
\sqrt{ p\cdot \sigma }\xi ^{s} \\
\sqrt{ p\cdot \bar{\sigma} }\xi ^{s}
\end{pmatrix}\begin{pmatrix}
\sqrt{ p\cdot \bar{\sigma} }\xi ^{s\dagger} & \sqrt{ p\cdot \sigma }\xi ^{s}
\end{pmatrix} \\
 & =\begin{pmatrix}
-m & p\cdot \sigma \\
p\cdot \bar{\sigma} & -m
\end{pmatrix}=\gamma \cdot p-m
\end{align}$$

# problem 4

prove the Gordon identity

$$\begin{align}
\bar{u}(p')\gamma ^{\mu}u(p) & =\bar{u}(p')\left(\frac{p'^{\mu}+p^{\mu}}{2m}+\frac{i\sigma ^{\mu \nu}q_{\nu}}{2m}\right)u(p)
\end{align}$$

*sol*. we start from the Dirac equations satisfied by $u(p)$ and $\bar{u}(p')$:

$$\begin{align}
(\gamma \cdot p-m)u(p) & =0 \\
\bar{u}(p')(\gamma \cdot p'-m) & =0
\end{align}$$

by multiplying the first equation by $\bar{u}(p')\gamma ^{\mu}$ from the left and the second equation by $\gamma ^{\mu}u(p)$ from the right, and then adding the two resulting equations, we obtain

$$\begin{align}
\bar{u}(p')\gamma ^{\mu}(\gamma \cdot p-m)u(p) & =  \\
\bar{u}(p')(\gamma \cdot p'-m)\gamma ^{\mu}u(p) & =0
\end{align}$$

$$\begin{align}
2m \bar{u}(p')\gamma ^{\mu}u(p) & =\bar{u}(p')(\gamma ^{\mu}\gamma ^{\nu}p_{\nu}+\gamma ^{\nu}\gamma ^{\mu}p'_{\nu})u(p) \\
 & =\bar{u}(p')\left[\left(\frac{1}{2}\{\gamma ^{\mu},\gamma ^{\nu}\}+\frac{1}{2}[\gamma ^{\mu},\gamma ^{\nu}]\right)p_{\nu}+\left(\frac{1}{2}\{\gamma ^{\nu},\gamma ^{\mu}\}+\frac{1}{2}[\gamma ^{\nu},\gamma ^{\mu}]\right)p'_{\nu}\right]u(p) \\
 & =\bar{u}(p')\left[g^{\mu \nu}(p_{\nu}+p'_{\nu})\right]u(p)-\frac{1}{2}\bar{u}(p')\left([\gamma ^{\mu},\gamma ^{\nu}](p'_{\nu}-p_{\nu})\right)u(p) \\
 & =\bar{u}(p')(p'^{\mu}+p^{\mu})u(p)+i\bar{u}(p')\left(\sigma ^{\mu \nu}q_{\nu}\right)u(p)
\end{align}$$

which leads to the desired Gordon identity after dividing both sides by $2m$.

