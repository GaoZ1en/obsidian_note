---
title: "problem 1"
date: 2026-04-10
summary: ""
---

# problem 1

under the conformal gauge, the mode expansion for open string is given by

$$\begin{align}
X^{\mu}(\tau,\sigma) & =x^{\mu}+\frac{2\pi \alpha'}{\ell}p^{\mu}\tau+i\sqrt{ 2\alpha' }\sum _{n\neq 0} \frac{1}{n}\alpha _{n}^{\mu}e^{-in\pi \tau/\ell}\cosh\left(\frac{n\pi \sigma}{\ell}\right)
\end{align}$$

the corresponding conjugate momentum is

$$\begin{align}
Pi_{\mu} & =\frac{1}{\ell \sqrt{ 2\alpha' }}\sum _{n\in \mathbb{Z}}\alpha _{n\mu}e^{-in\pi \tau/\ell}\cos\left(\frac{n\pi \sigma}{\ell}\right)
\end{align}$$

and the equal-time commutation relation is

$$\begin{align}
[X^{\mu}(\tau,\sigma),\Pi_{\nu}(\tau,\sigma')] & =i\delta ^{\mu}_{\nu}\delta(\sigma-\sigma')
\end{align}$$

prove that the commutation relation for the modes is

$$\begin{align}
[x^{\mu},p^{\mu}] & =i\eta ^{\mu \nu}, & [\alpha _{m}^{\mu},\alpha _{n}^{\nu}] & =m\eta ^{\mu \nu}\delta _{m+n,0}
\end{align}$$

## solution

we have

$$\begin{align}
[X^{\mu}(\tau,\sigma),\Pi_{\nu}(\tau,\sigma')] & =\left[x^{\mu}+\frac{2\pi \alpha'}{\ell}p^{\mu}\tau+i\sqrt{ 2\alpha' }\sum _{n\neq 0} \frac{1}{n}\alpha _{n}^{\mu}e^{-in\pi \tau/\ell}\cosh\left(\frac{n\pi \sigma}{\ell}\right),\frac{1}{\ell \sqrt{ 2\alpha' }}\sum _{m\in \mathbb{Z}}\alpha _{m\nu}e^{-im\pi \tau/\ell}\cos\left(\frac{m\pi \sigma'}{\ell}\right)\right] \\
 & =[x^{\mu},\frac{1}{\ell \sqrt{ 2\alpha' }}\sum _{m\in \mathbb{Z}}\alpha _{m\nu}e^{-im\pi \tau/\ell}\cos\left(\frac{m\pi \sigma'}{\ell}\right)]+\left[\frac{2\pi \alpha'}{\ell}p^{\mu}\tau,\frac{1}{\ell \sqrt{ 2\alpha' }}\sum _{m\in \mathbb{Z}}\alpha _{m\nu}e^{-im\pi \tau/\ell}\cos\left(\frac{m\pi \sigma'}{\ell}\right)\right] \\
 & +\left[i\sqrt{ 2\alpha' }\sum _{n\neq 0} \frac{1}{n}\alpha _{n}^{\mu}e^{-in\pi \tau/\ell}\cosh\left(\frac{n\pi \sigma}{\ell}\right),\frac{1}{\ell \sqrt{ 2\alpha' }}\sum _{m\in \mathbb{Z}}\alpha _{m\nu}e^{-im\pi \tau/\ell}\cos\left(\frac{m\pi \sigma'}{\ell}\right)\right] \\
 & =\frac{1}{\ell \sqrt{ 2\alpha' }}\sum _{m\in \mathbb{Z}}[x^{\mu},\alpha _{m\nu}]e^{-im\pi \tau/\ell}\cos\left(\frac{m\pi \sigma'}{\ell}\right)+\frac{\pi \sqrt{ 2\alpha' }}{\ell ^{2}}\sum _{m\in \mathbb{Z}}[p^{\mu},\alpha _{m\nu}]\tau e^{-im\pi \tau/\ell}\cos\left(\frac{m\pi \sigma'}{\ell}\right) \\
 & +\frac{i}{\ell}\sum _{n\neq 0}\sum _{m\in \mathbb{Z}}\frac{1}{n}[\alpha _{n}^{\mu},\alpha _{m\nu}]e^{-i(n+m)\pi \tau/\ell}\cosh\left(\frac{n\pi \sigma}{\ell}\right)\cos\left(\frac{m\pi \sigma'}{\ell}\right) \\
 & =i\delta ^{\mu}_{~\nu}\delta(\sigma-\sigma')
\end{align}$$

expand the delta function in cosine series, we have

$$\begin{align}
\delta(\sigma-\sigma') & =\sum _{n=0}^{\infty}a_{n}\cos\left(\frac{n\pi \sigma}{\ell}\right)\cos\left(\frac{n\pi \sigma'}{\ell}\right) \\
 & =\frac{1}{2\ell}+\frac{1}{\ell}\sum _{n=1}^{\infty}\cos\left(\frac{n\pi \sigma}{\ell}\right)\cos\left(\frac{n\pi \sigma'}{\ell}\right)
\end{align}$$

by comparing the coefficients of $e^{-im\pi \tau/\ell}\cos\left(\frac{m\pi \sigma'}{\ell}\right)$, we have

$$\begin{align}
[x^{\mu},\alpha _{m\nu}] & =i\sqrt{ \frac{\alpha'}{2} }\delta _{m,0}\delta ^{\mu}_{~\nu}\implies [x^{\mu},p^{\nu}]=i\eta ^{\mu \nu} \\
[\alpha _{n}^{\mu},\alpha _{m,\nu}] & =n\delta _{m+n,0}\delta ^{\mu}_{\nu}
\end{align}$$

all other commutators vanish. notice that

$$\begin{align}
[\alpha _{-n}^{\mu},\alpha _{n}^{\nu}] & =-n\eta ^{\mu \nu}
\end{align}$$

this is consistent with the hermitian conjugation condition $\alpha _{n}^{\mu \dagger}=\alpha _{-n}^{\mu}$, which is required by the reality condition of $X^{\mu}(\tau,\sigma)$.

# problem 2

for the closed string, the mode expansion is given by

$$\begin{align}
X^{\mu}(\tau,\sigma) & =x^{\mu}+\frac{2\pi \alpha'}{\ell}p^{\mu}\tau+i\sqrt{ \frac{\alpha'}{2} }\sum _{n\neq 0} \frac{1}{n}\left(\alpha _{n}^{\mu}e^{-2in\pi (\tau-\sigma)/\ell}+\tilde{\alpha} _{n}^{\mu}e^{-2in\pi (\tau+\sigma)/\ell}\right) \\
\Pi_{\mu}(\tau,\sigma) & =\frac{1}{\ell \sqrt{ 2\alpha' }}\sum _{n\in \mathbb{Z}}\left(\alpha _{n\mu}e^{-2in\pi(\tau-\sigma)/\ell}+\tilde{\alpha}_{n\mu}e^{-2in\pi(\tau+\sigma)/\ell}\right)
\end{align}$$

prove that the commutation relation for the modes is

$$\begin{align}
[x^{\mu},p^{\nu}] & =i\eta ^{\mu \nu} & [\alpha _{m}^{\mu},\alpha ^{\nu}_{n}] & =m\eta ^{\mu \nu}\delta _{m+n,0} & [\tilde{\alpha}^{\mu}_{m},\tilde{\alpha}^{\nu}_{n}] & =m\eta ^{\mu \nu}\delta _{m+n,0}
\end{align}$$

## solution

the proof is similar to the open string case, we have

$$\begin{align}
[X^{\mu}(\tau,\sigma),\Pi^{\nu}(\tau,\sigma')] & =\frac{1}{\ell \sqrt{ 2\alpha' }}\sum _{n\in \mathbb{Z}}[x^{\mu},\alpha _{n}^{\nu}]e^{-2in\pi(\tau-\sigma)/\ell}+[x^{\mu},\tilde{\alpha}_{n}^{\mu}]e^{-2in\pi(\tau+\sigma)\ell} \\
 & + \frac{\pi \sqrt{ 2\alpha' }}{\ell ^{2}}\sum _{n\in \mathbb{Z}}[p^{\mu},\alpha _{n}^{\nu}]\tau e^{-2in\pi(\tau-\sigma)/\ell}+[p^{\mu},\tilde{\alpha}_{n}^{\nu}]\tau e^{-2in\pi(\tau+\sigma)/\ell} \\
 & +\frac{i}{2\ell}\sum _{n\neq 0}\sum _{m\in \mathbb{Z}} \frac{1}{n}[\alpha _{n}^{\mu},\alpha _{m}^{\nu}]e^{-2i(n+m)\pi \tau/\ell}e^{-2i\pi(n\sigma+m\sigma')/\ell}+ \frac{i}{2\ell}\sum _{n\neq 0}\sum _{m\in \mathbb{Z}} \frac{1}{n}[\tilde{\alpha} _{n}^{\mu},\tilde{\alpha} _{m}^{\nu}]e^{-2i(n+m)\pi \tau/\ell}e^{2i\pi(n\sigma+m\sigma')/\ell} \\
 & +\frac{i}{2\ell}\sum _{n\neq 0}\sum _{m\in \mathbb{Z}} \frac{1}{n}[\alpha _{n}^{\mu},\tilde{\alpha} _{m}^{\nu}]e^{-2i(n+m)\pi \tau/\ell}e^{-2i\pi(n\sigma-m\sigma')/\ell}+\frac{i}{2\ell}\sum _{n\neq 0}\sum _{m\in \mathbb{Z}} \frac{1}{n}[\tilde{\alpha} _{n}^{\mu},\alpha _{m}^{\nu}]e^{-2i(n+m)\pi \tau/\ell}e^{2i\pi(n\sigma-m\sigma')/\ell} \\
 & =i\delta ^{\mu}_{~\nu}\delta(\sigma-\sigma')
\end{align}$$

expand the delta function in Fourier series, we have

$$\begin{align}
\delta(\sigma-\sigma') & =\frac{1}{\ell}\sum _{n=-\infty}^{\infty}e^{2in\pi(\sigma-\sigma')/\ell}
\end{align}$$

by comparing the coefficients of $e^{-2im\pi(\tau-\sigma)/\ell}$ and $e^{-2im\pi(\tau+\sigma)/\ell}$, we have

$$\begin{align}
\frac{1}{\ell \sqrt{ 2\alpha' }}[x^{\mu},\alpha ^{\nu}_{n}]=[x^{\mu},\tilde{\alpha}^{\nu}_{n}] & =\frac{i}{2}\delta _{n,0}\delta ^{\mu}_{\nu} \\
\implies[x^{\mu},p^{\nu}] & =i\eta ^{\mu \nu} \\
[p^{\mu},\tilde{\alpha}^{\nu}_{n}] & =0 \\
[\alpha ^{\mu}_{n},\alpha ^{\nu}_{m}] & =n\delta _{n+m,0}\delta ^{\mu}_{\nu} \\
[\tilde{\alpha}^{\mu}_{n},\tilde{\alpha}^{\nu}_{m}] & =n\delta _{n+m,0}\delta ^{\mu}_{\nu} \\
[\alpha ^{\mu}_{n},\tilde{\alpha}^{\nu}_{m}] & =0
\end{align}$$
