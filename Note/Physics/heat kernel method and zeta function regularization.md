# Heat Kernel Method

Let $\displaystyle{\Delta}$ be a Hermitian, positive, semi-definite operator with a well-posed eigenvalue problem

$$\begin{align}
\Delta \varphi _{n}(x) & =\lambda _{n} \varphi _{n}(x)
\end{align}$$

the eigen functions $\displaystyle{\left\{\varphi _{n}(x)\right\}}$ are orthonormal and complete

$$\begin{align}
\int \mathrm{d}x\varphi ^{*}_{n}(x)\varphi _{m}(x) & =\delta _{nm} \\
\sum _{m}\varphi _{n}(x)\varphi _{n}^{*}(x) & =\delta(x-y)
\end{align}$$

and the eigenvalues $\displaystyle{\lambda _{n}}$ are real. Define $\displaystyle{f(\Delta)}$ as

$$\begin{align}
f(\Delta) & =\frac{1}{2\pi i}\int _{C} \frac{f(\lambda)}{\lambda-\Delta}\mathrm{d}\lambda
\end{align}$$

where the contour $\displaystyle{C}$ in the complex $\displaystyle{\lambda}$-plane encloses all eigenvalues $\displaystyle{\left\{\lambda _{n}\right\}}$ and origin. Specifically, we have

$$\begin{align}
e^{-\tau \Delta} & =\frac{1}{2\pi i}\int \frac{e^{-\tau \lambda}}{\lambda-\Delta}\mathrm{d}\lambda
\end{align}$$

take some squared integrable function $\displaystyle{\varphi(x)\in L^{2}}$, then

$$\begin{align}
e^{-\tau \Delta}\varphi(x) & =\int \mathrm{d}ye^{-\tau \Delta}\sum _{n}\varphi _{n}(x)\varphi ^{*}_{n}(y)\varphi(y) \\
 & =\int \mathrm{d}y\sum _{n}\lambda _{n}\varphi _{n}(x)\varphi _{n}^{*}(y)\varphi(y) \\
 & =\int \mathrm{d}yG_{\Delta}(x,y;\tau)\varphi(y)
\end{align}$$

the operator $\displaystyle{e^{-\tau \Delta}}$ has the heat kernel

$$\begin{align}
G_{\Delta}(x,y;\tau) & =\sum _{n}e^{-\tau \lambda _{n}}\varphi _{n}(x)\varphi _{n}^{*}(y)
\end{align}$$

which satisfies the heat equation

$$\begin{align}
\Delta G_{\Delta}(x,y;\tau) & =-\frac{\partial}{\partial \tau}G_{\Delta}(x,y;\tau)
\end{align}$$

with the initial condition

$$\begin{align}
\lim _{\tau \to 0} G_{\Delta}(x,y;\tau) & =\delta (x-y)
\end{align}$$

in Euclidean space, assume the operator has the form

$$\begin{align}
\Delta & =-D^{2}+X, & D_{\mu} & =\partial _{\mu}+A_{\mu}
\end{align}$$

and $\displaystyle{X}$ some matrix valued $\displaystyle{C^{\infty}}$ function, which is positive Hermitian. The heat kernel has the asymptotic expansion

$$\begin{align}
G_{\Delta}(x,y;\tau) & \overset{\tau\to 0}{=}G_{-\partial ^{2}}(x,y,\tau)\sum _{n}a_{n}(x,y)\tau ^{n} \\
G_{-\partial ^{2}}(x,y,\tau) & =\frac{1}{(4\pi \tau)^{d/2}}\exp\left( -\frac{(x-y)^{2}}{4\tau} \right)
\end{align}$$

here $\displaystyle{a_{n}(x,y)}$ are called the Seeley-DeWitt coefficients, which satisfy the following relations

$$\begin{align}
a_{0}(x,x) & =1 \\
a_{n}^{\dagger}(x,y) & =a_{n}(y,x)
\end{align}$$

and the recursion relation

$$\begin{align}
-\Delta a_{n-1}(x,x) & =na_{n}(x,x)
\end{align}$$

*example*

Consider

$$\begin{align}
-\ln J[\beta] & =2i \int \mathrm{d}x\beta(x)\sum _{n}\varphi _{n}^{\dagger}(x)\gamma_{5}\varphi _{n}(x) \\
 & =\lim_{ \tau \to 0 } 2i \int \mathrm{d}x\beta(x)\sum _{n}\varphi _{n}^{\dagger}(x)\gamma _{5}e^{-\lambda _{n}\tau}\varphi _{n}(x) \\
 & =\lim _{\tau \to 0}2i \int \mathrm{d}x\beta(x)\mathrm{tr}\left[ \gamma _{5}G_{\Delta}(x,x;\tau) \right] \\
 & =\lim_{ \tau \to 0 } 2i \mathrm{Tr}\beta \gamma _{5}G_{\Delta}(\tau)
\end{align}$$

where $\displaystyle{\Delta=D\!\!\!\!/^{2}}$. In 2d, the trace is dominated by $\displaystyle{a_{1}(x,x)}$ term, then

$$\begin{align}
-\ln J[\beta] & =2i \int \mathrm{d}x \beta(x) \frac{1}{4\pi}\mathrm{tr}\gamma _{5}a_{1}(x,x)
\end{align}$$

notice that

$$\begin{align}
a_{1}(x,x) & =-\Delta a_{0}(x,x)=-D\!\!\!\!/\ ^{2} \\
 & =-D^{2}+\frac{i}{4}[\gamma ^{\mu},\gamma ^{\nu}]F_{\mu \nu}
\end{align}$$

and

$$\begin{align}
\mathrm{tr}\gamma _{5}\gamma _{\mu}\gamma _{\nu} & =-2\varepsilon _{\mu \nu}
\end{align}$$

then

$$\begin{align}
-\ln J[\beta] & =\int \mathrm{d}x\beta(x)\frac{1}{2\pi}\varepsilon ^{\mu \nu}F_{\mu \nu}
\end{align}$$

which is exactly the chiral anomaly in 2d.

# Zeta Function Regularization

Consider the determinant of some Hermitian, positive, semi-definite operator $\displaystyle{\Delta}$ with eigenvalues $\displaystyle{\left\{\lambda _{n}\right\}}$. Formally we have

$$\begin{align}
\det \Delta & =\prod _{n}\lambda _{n}
\end{align}$$

define the zeta function associated with $\displaystyle{\Delta}$ as

$$\begin{align}
\zeta _{\Delta}(s) & =\sum _{n} \frac{1}{\lambda _{n}^{s}}
\end{align}$$

and annalytically continue it to the complex $\displaystyle{s}$-plane. We have

$$\begin{align}
-\zeta'_{\Delta}(0) & =\sum _{n}\ln \lambda _{n}=\ln \det \Delta
\end{align}$$

then

$$\begin{align}
Z[\beta] & =\int \mathcal{D}\phi e^{-S_{E}[\phi]} \\
 & =\left( \det \Delta \right)^{-1/2} \\
 & =\exp\left( \frac{1}{2}\zeta'_{\Delta}(0) \right)
\end{align}$$

moreover, we have the relation

$$\begin{align}
\zeta _{\Delta}(s) & =\sum _{n} \frac{1}{\lambda _{n}^{s}} \\
 & =\sum _{n} \frac{1}{\Gamma(s)}\int ^{\infty}_{0}\mathrm{d}\tau \tau ^{s-1}e^{-\lambda _{n}\tau} \\
 & =\frac{1}{\Gamma(s)}\int ^{\infty}_{0}\mathrm{d}\tau \tau ^{s-1}\sum _{n}e^{-\lambda _{n}\tau} \\
 & =\frac{1}{\Gamma(s)}\int ^{\infty}_{0}\mathrm{d}\tau \tau ^{s-1}\mathrm{Tr}e^{-\tau \Delta} \\
 & =\frac{1}{\Gamma(s)}\int ^{\infty}_{0}\mathrm{d}\tau \tau ^{s-1}\int \mathrm{d}xG_{\Delta}(x,x;\tau)
\end{align}$$

here we use

$$\begin{align}
\frac{1}{\lambda ^{s}} & =\frac{1}{\Gamma(s)}\int ^{\infty}_{0}\mathrm{d}\tau \tau ^{s-1}e^{-\lambda \tau} \\
\mathrm{Tr}e^{-\tau \Delta} & =\int \mathrm{d}x \braket{ x|e^{-\tau \Delta}|x }  \\
 & =\sum _{n}\int \mathrm{d}x |\braket{ x|n } | ^{2}e^{-\lambda _{n}\tau} \\
 & =\int \mathrm{d}x\sum _{n}e^{-\lambda _{n}\tau}\varphi _{n}(x)\varphi _{n}^{*}(x) \\
 & =\int \mathrm{d}xG_{\Delta}(x,x;\tau)
\end{align}$$

on the other hand, we can write $\displaystyle{\zeta _{\Delta}(s)}$ in term of the trace of $\displaystyle{\Delta}$ operator as

$$\begin{align}
\zeta _{\Delta}(s) & =\mathrm{Tr}\Delta ^{-s}
\end{align}$$

*example*

Consider the thermal function of a harmonic oscillator with frequency $\displaystyle{\omega}$. The Euclidean action is

$$\begin{align}
S_{E} & =\int ^{\beta}_{0}\mathrm{d}\tau \left( \frac{1}{2}m\dot{x}^{2}+\frac{1}{2}m\omega ^{2}x^{2} \right)
\end{align}$$

the operator is

$$\begin{align}
\Delta & =-m\frac{\mathrm{d}^{2}}{\mathrm{d}\tau ^{2}}+m\omega ^{2}
\end{align}$$

with eigenvalues

$$\begin{align}
\lambda _{n} & =m\left( \omega ^{2}+\left( \frac{2\pi n}{\beta} \right)^{2} \right), & n & \in \mathbb{Z}
\end{align}$$

then the thermal partition function is

$$\begin{align}
Z(\beta) & =\left( \det \Delta \right)^{-1/2} \\
 & =\exp\left( \frac{1}{2}\zeta'_{\Delta}(0) \right)
\end{align}$$

where

$$\begin{align}
\zeta _{\Delta}(s) & =\sum _{n=-\infty}^{\infty}\frac{1}{\left[ m\left( \omega ^{2}+\left( \frac{2\pi n}{\beta} \right)^{2} \right) \right]^{s}} \\
 & =m^{-s}\left( \frac{\beta}{2\pi} \right)^{2s}\sum _{n=-\infty}^{\infty}\frac{1}{\left( n^{2}+\left( \frac{\beta \omega}{2\pi} \right)^{2} \right)^{s}} \\
 & =m^{-s}\left( \frac{\beta}{2\pi} \right)^{2s}\left[ \left( \frac{\beta \omega}{2\pi} \right)^{-2s}+2\sum _{n=1}^{\infty}\frac{1}{\left( n^{2}+\left( \frac{\beta \omega}{2\pi} \right)^{2} \right)^{s}} \right] \\
 & =m^{-s}\left( \frac{\beta}{2\pi} \right)^{2s}\left[ \left( \frac{\beta \omega}{2\pi} \right)^{-2s}+\frac{\sqrt{\pi}\Gamma(s-1/2)}{\Gamma(s)}\left( \frac{\beta \omega}{2\pi} \right)^{1-2s}+ \right. \\
 & \left. +\frac{4\pi ^{s}}{\Gamma(s)}\left( \frac{\beta \omega}{2\pi} \right)^{1/2-s}\sum _{n=1}^{\infty}n^{s-1/2}K_{s-1/2}(n\beta \omega) \right] \\
 & =\frac{1}{2}\left( \frac{\beta \omega}{2\pi} \right)^{-2s}+m^{-s}\left( \frac{\beta}{2\pi} \right)^{2s}\frac{\sqrt{\pi}\Gamma(s-1/2)}{\Gamma(s)}\left( \frac{\beta \omega}{2\pi} \right)^{1-2s}+ \\
 & +\frac{4\pi ^{s}}{\Gamma(s)}m^{-s}\left( \frac{\beta}{2\pi} \right)^{2s}\left( \frac{\beta \omega}{2\pi} \right)^{1/2-s}\sum _{n=1}^{\infty}n^{s-1/2}K_{s-1/2}(n\beta \omega)
\end{align}$$

then

$$\begin{align}
\zeta'_{\Delta}(0) & =-2\ln\left( 2\sinh \frac{\beta \omega}{2} \right) \\
\implies Z(\beta) & =\left( \det \Delta \right)^{-1/2}=\frac{1}{2\sinh \frac{\beta \omega}{2}}
\end{align}$$

which gives the correct thermal partition function of a harmonic oscillator.
