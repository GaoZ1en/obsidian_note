---
title: Laplacian Eigenfunctions in Thermal Euclidean AdS3
date: 2026-06-20
summary: "Derives scalar Laplacian eigenfunctions on thermal Euclidean AdS3, including Matsubara labels, radial hypergeometric modes, continuum normalization, and the Wronskian-flux form of the normalization."
---

# Setup

Thermal Euclidean AdS3 is the quotient of Euclidean global AdS3 with metric

$$\begin{align}
ds_E^2 &=(1+r^2)d\tau^2+\frac{dr^2}{1+r^2}+r^2d\phi^2
\end{align}$$

by

$$\begin{align}
(\tau,\phi)&\sim(\tau+\beta,\phi+\theta),& \phi&\sim\phi+2\pi .
\end{align}$$

The scalar Laplacian is

$$\begin{align}
\nabla_E^2&=\frac{1}{r}\partial_r\left(r(1+r^2)\partial_r\right)+\frac{1}{1+r^2}\partial_\tau^2+\frac{1}{r^2}\partial_\phi^2 .
\end{align}$$

We diagonalize $-\nabla_E^2$:

$$\begin{align}
-\nabla_E^2\Psi_{\ell m p}&=\lambda_p\Psi_{\ell m p}.
\end{align}$$

The quotient condition gives the Matsubara labels

$$\begin{align}
\Psi_{\ell m p}(\tau,\phi,r)&=e^{i\nu_{\ell m}\tau}e^{im\phi}R_{\nu_{\ell m}mp}(r),&
\nu_{\ell m}\beta+m\theta&=2\pi\ell ,
\end{align}$$

where $\ell,m\in\mathbb Z$. In the untwisted case $\theta=0$, $\nu_{\ell m}=2\pi\ell/\beta$.

# Radial Equation

The radial equation is

$$\begin{align}
(1+r^2)R''+\left(\frac{1}{r}+3r\right)R'+\left(\lambda_p-\frac{\nu^2}{1+r^2}-\frac{m^2}{r^2}\right)R&=0 .
\end{align}$$

The endpoint $r=0$ is regular, and regularity imposes $R\sim r^{|m|}$. The asymptotic endpoint $r=\infty$ is non-compact, so the radial spectrum is continuous. Write

$$\begin{align}
\lambda_p&=1+p^2,& p&>0 .
\end{align}$$

Set

$$\begin{align}
a&=|m|,& s&=-r^2,& R(r)&=r^a(1+r^2)^{i\nu/2}F(s).
\end{align}$$

Then the radial equation becomes the hypergeometric equation

$$\begin{align}
s(1-s)F''+\left(c-(A+B+1)s\right)F'-ABF&=0,\\
A&=\frac{1+a+i\nu+ip}{2},&
B&=\frac{1+a+i\nu-ip}{2},&
c&=1+a .
\end{align}$$

The mode regular at $r=0$ is therefore

$$\begin{align}
R_{\nu m p}^{\mathrm{reg}}(r)
&=r^{|m|}(1+r^2)^{i\nu/2}{}_2F_1\left(\frac{1+|m|+i\nu+ip}{2},\frac{1+|m|+i\nu-ip}{2};1+|m|;-r^2\right).
\end{align}$$

For a massive scalar operator,

$$\begin{align}
(-\nabla_E^2+\mu^2)\Psi_{\ell m p}&=(p^2+1+\mu^2)\Psi_{\ell m p}.
\end{align}$$

With the AdS3 convention $\Delta=1+\sqrt{1+\mu^2}$, this eigenvalue is $p^2+(\Delta-1)^2$.

# Continuum Normalization

The Euclidean spectral normalization uses the $L^2$ measure on a fundamental domain,

$$\begin{align}
\langle \Psi,\Psi'\rangle_E
&=\int_0^\beta d\tau\int_0^{2\pi}d\phi\int_0^\infty dr\,r\,\Psi^*(\tau,\phi,r)\Psi'(\tau,\phi,r).
\end{align}$$

The hypergeometric connection formula gives the large-$r$ behavior

$$\begin{align}
R_{\nu m p}^{\mathrm{reg}}(r)
&=C_+(p,\nu,m)r^{-1+ip}+C_-(p,\nu,m)r^{-1-ip}+O(r^{-3+ip})+O(r^{-3-ip}),\\
C_+(p,\nu,m)
&=\frac{\Gamma(1+|m|)\Gamma(ip)}
{\Gamma\left(\frac{1+|m|+i\nu+ip}{2}\right)\Gamma\left(\frac{1+|m|-i\nu+ip}{2}\right)},\\
C_-(p,\nu,m)
&=\frac{\Gamma(1+|m|)\Gamma(-ip)}
{\Gamma\left(\frac{1+|m|+i\nu-ip}{2}\right)\Gamma\left(\frac{1+|m|-i\nu-ip}{2}\right)} .
\end{align}$$

Choose the radial normalization

$$\begin{align}
\widehat R_{\nu m p}(r)&=\mathcal N_{\nu m p}R_{\nu m p}^{\mathrm{reg}}(r),\\
\mathcal N_{\nu m p}
&=\frac{\Gamma\left(\frac{1+|m|+i\nu+ip}{2}\right)\Gamma\left(\frac{1+|m|-i\nu+ip}{2}\right)}
{\sqrt{2\pi}\,\Gamma(1+|m|)\Gamma(ip)} .
\end{align}$$

This phase convention sets the outgoing coefficient to $1/\sqrt{2\pi}$:

$$\begin{align}
\widehat R_{\nu m p}(r)
&=\frac{1}{\sqrt{2\pi}}r^{-1+ip}+\frac{S_{\nu m}(p)}{\sqrt{2\pi}}r^{-1-ip}+O(r^{-3+ip})+O(r^{-3-ip}),\\
S_{\nu m}(p)
&=\frac{\Gamma(-ip)}{\Gamma(ip)}
\frac{\Gamma\left(\frac{1+|m|+i\nu+ip}{2}\right)\Gamma\left(\frac{1+|m|-i\nu+ip}{2}\right)}
{\Gamma\left(\frac{1+|m|+i\nu-ip}{2}\right)\Gamma\left(\frac{1+|m|-i\nu-ip}{2}\right)} .
\end{align}$$

For real $\nu$ and $p$, $|S_{\nu m}(p)|=1$, and the generalized radial normalization is

$$\begin{align}
\int_0^\infty dr\,r\,\widehat R_{\nu m p}^*(r)\widehat R_{\nu m p'}(r)&=\delta(p-p').
\end{align}$$

The fully normalized modes are

$$\begin{align}
\Psi_{\ell m p}(\tau,\phi,r)
&=\frac{1}{\sqrt{2\pi\beta}}e^{i\nu_{\ell m}\tau}e^{im\phi}\widehat R_{\nu_{\ell m}mp}(r),
\end{align}$$

and obey

$$\begin{align}
\int_0^\beta d\tau\int_0^{2\pi}d\phi\int_0^\infty dr\,r\,\Psi_{\ell m p}^*\Psi_{\ell' m' p'}
&=\delta_{\ell\ell'}\delta_{mm'}\delta(p-p').
\end{align}$$

# Wronskian Form of the Normalization

The radial equation is a Sturm-Liouville problem:

$$\begin{align}
\partial_r\left(r(1+r^2)\partial_r R\right)+r\left(\lambda_p-\frac{\nu^2}{1+r^2}-\frac{m^2}{r^2}\right)R&=0 .
\end{align}$$

For two radial modes with the same $\nu,m$ but different spectral labels $p,p'$, Green's identity gives

$$\begin{align}
(\lambda_{p'}-\lambda_p)\int_0^R dr\,r\,R_p^*R_{p'}
&=\left[r(1+r^2)\left((\partial_rR_p^*)R_{p'}-R_p^*\partial_rR_{p'}\right)\right]_{0}^{R}.
\end{align}$$

The lower endpoint vanishes for the regular modes. The upper endpoint is fixed by the plane-wave asymptotics in $\log r$ and gives the same $\delta(p-p')$ normalization as above.

This Wronskian bilinear is the Euclidean analog of a flux or symplectic-current computation. It is not the Lorentzian covariant phase space symplectic form used to normalize canonical modes on a constant Lorentzian time slice. The Lorentzian CPS form normalizes the discrete global-AdS modes with $\omega=\Delta+2n+|m|$, while the Euclidean Laplacian basis has discrete Matsubara labels $\ell,m$ and continuous radial label $p$.

# Spectral Kernel

With the normalized basis, the spectral representation of the massive heat kernel on the quotient is

$$\begin{align}
K_{\beta,\theta}(s;x,x')
&=\sum_{\ell\in\mathbb Z}\sum_{m\in\mathbb Z}\int_0^\infty dp\,
\Psi_{\ell m p}(x)\Psi_{\ell m p}^*(x')e^{-s(p^2+1+\mu^2)} .
\end{align}$$

Poisson resumming the Matsubara label gives the image-sum representation on $\mathbb H^3/\mathbb Z$. The image sum and the Matsubara spectral sum are therefore equivalent representations of the same Euclidean determinant, even though their individual labels are different from the Lorentzian canonical normal-mode labels.
