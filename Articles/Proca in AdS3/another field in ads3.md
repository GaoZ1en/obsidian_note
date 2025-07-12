inspired by 2401.13030, consider the following metric

$$\tag{1.1}
\begin{align}
\mathrm{d}s^{2} & =-(1+\rho^{2})\mathrm{d}t^{2}+\frac{\mathrm{d}\rho ^{2}}{1+\rho ^{2}}+\rho ^{2}\mathrm{d}\theta ^{2}
\end{align}
$$

the components of the eom $\displaystyle{\varepsilon _{a}^{~bc}\nabla _{b}A_{c}=-\mu A_{a}}$ are

$$\tag{1.2}
\begin{align}
\frac{1+\rho ^{2}}{\rho}(\partial _{\rho}A_{\theta}-\partial _{\theta}A_{\rho}) & =-\mu A_{t} \\
-\frac{1}{\rho(1+\rho ^{2})}\varepsilon _{\rho}^{~\theta t}(\partial _{\theta}A_{t}-\partial _{t}A_{\theta}) & =-\mu A_{\rho} \\
-\rho(\partial _{t}A_{\rho}-\partial _{\rho}A_{t}) & =-\mu A_{\theta}
\end{align}
$$

make the following ansatz

$$\tag{1.3}
\begin{align}
A_{t} & =\psi(\rho)e^{-i \omega t+im\theta} \\
A_{\rho} & =\phi(t,\rho)e^{-i \omega t+im\theta} \\
A_{\theta} & =im\chi(t,\rho)e^{-i \omega t+im\theta}
\end{align}
$$

insert (1.3) into (1.2), we have

$$\tag{1.4}
\begin{align}
-im\frac{1+\rho ^{2}}{\rho }(\phi-\partial _{\rho}\chi) & =-\mu \psi \\
-\frac{im}{\rho(1+\rho ^{2})}(\psi+i \omega \chi) & =-\mu \phi \\
 \rho(i \omega \phi+\partial _{\rho}\psi)& =-im\mu \chi
\end{align}
$$

$$\tag{.}
\begin{align}
\psi & =\frac{im}{\mu} \frac{1+\rho ^{2}}{\rho}(\phi-\partial _{\rho}\chi) \\
\phi & =\frac{im}{\mu} \frac{1}{\rho(1+\rho ^{2})}(\psi+i \omega \chi) \\
\chi & =\frac{\rho}{-im\mu}(i \omega \phi+\partial _{\rho}\psi)
\end{align}
$$

$$\tag{.}
\begin{align}
\left( 1+\frac{m^{2}}{\mu ^{2}\rho ^{2}} \right)\psi & =-\frac{i \omega m^{2}}{\mu ^{2}\rho ^{2}}\chi-\frac{im}{\mu}\frac{1+\rho ^{2}}{\rho}\partial _{\rho}\chi \\
 \left( 1-\frac{\omega ^{2}}{\mu ^{2}(1+\rho ^{2})} \right)\chi& =-\frac{i\omega}{\mu ^{2}(1+\rho ^{2})}\psi +\frac{i\rho}{m\mu}\partial _{\rho}\psi
\end{align}
$$

$$\tag{.}
\begin{align}
\psi & =\left( 1+\frac{m^{2}}{\mu ^{2}\rho ^{2}} \right)^{-1}\left( -\frac{i\omega m^{2}}{\mu ^{2}\rho ^{2}}\chi-\frac{im(1+\rho ^{2})}{\mu \rho}\partial _{\rho}\chi \right) \\
\left( 1+\frac{m^{2}}{\mu ^{2}\rho ^{2}} \right)\left( 1-\frac{\omega ^{2}}{\mu ^{2}(1+\rho ^{2})} \right)\chi & =-\frac{i\omega}{\mu ^{2}(1+\rho ^{2})}\left( -\frac{i\omega m^{2}}{\mu ^{2}\rho ^{2}}\chi-\frac{im(1+\rho ^{2})}{\mu \rho}\partial _{\rho}\chi \right)+\frac{i\rho}{m\mu}\left( 1+\frac{m^{2}}{\mu ^{2}\rho ^{2}} \right)\partial _{\rho}\left( \left( 1+\frac{m^{2}}{\mu ^{2}\rho ^{2}} \right)^{-1}\left( -\frac{i\omega m^{2}}{\mu ^{2}\rho ^{2}}\chi-\frac{im(1+\rho ^{2})}{\mu \rho}\partial _{\rho}\chi \right) \right)
\end{align}
$$