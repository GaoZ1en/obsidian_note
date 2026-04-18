---
title: "Drafts"
date: 2026-04-13
summary: ""
---

# action

by defining

$$\begin{align}
\mathcal{D}_{\mu}^{~\nu}A_{\nu} & =\varepsilon _{\mu}^{~\nu \rho}\nabla _{\nu}A_{\rho}
\end{align}$$

then we can write

$$\begin{align}
S & =\int _{M}\mathrm{d}^{3}x\sqrt{ -g }\left(-\frac{1}{4}F_{\mu \nu}F^{\mu \nu}-\frac{1}{2}\mu ^{2}A_{\mu}A^{\mu}+\frac{k}{4\pi}\varepsilon ^{\mu \nu \rho}A_{\mu}\nabla _{\nu}A_{\rho}\right) \\
 & =\int _{M}\mathrm{d}^{3}x\sqrt{ -g }\left(\frac{1}{2}\mathcal{D}_{\mu}^{~\nu}A_{\nu}D^{\mu \rho}A_{\rho}-\frac{1}{2}\mu ^{2}A_{\mu}A^{\mu}+\frac{k}{4\pi}A_{\mu}\mathcal{D}^{\mu \nu}A_{\nu}\right)
\end{align}$$

take a variation

$$\begin{align}
\delta S & =\int _{M}\mathrm{d}^{3}x\sqrt{ -g }\left(\mathcal{D}_{\mu}^{~\nu}A_{\nu}\mathcal{D}^{\mu \rho}\delta A_{\rho}-\mu ^{2}A^{\mu}\delta A_{\mu}+\frac{k}{4\pi}\delta A_{\mu}\mathcal{D}^{\mu \nu}A_{\nu}+\frac{k}{4\pi}A_{\mu}\mathcal{D}^{\mu \nu}\delta A_{\nu}\right) \\
 & =\int _{M}\mathrm{d}^{3}x\sqrt{ -g }\left(\left( \mathcal{D}^{\rho \mu}\mathcal{D}_{\rho}^{~\nu}A_{\nu}-\mu ^{2}A^{\mu}+\frac{k}{2\pi}\mathcal{D}^{\mu \nu}A_{\nu} \right)\delta A_{\mu}\right) \\
 & +\int _{\Sigma _{f}-\Sigma _{i}}\mathrm{d}^{2}x\sqrt{ \sigma }\tau _{\mu}\varepsilon ^{\mu \nu \rho}\left(\mathcal{D}_{\nu}^{~\sigma}+\frac{k}{4\pi}\delta _{\nu}^{~\sigma}\right)A_{\sigma}\delta A_{\rho}
\end{align}$$

and then the symplectic form

$$\begin{align}
\omega & =\delta \theta \\
 & =\int _{\Sigma}\mathrm{d}^{2}x\sqrt{ \sigma }\tau _{\mu}\varepsilon ^{\mu \nu \rho}\left( \mathcal{D}_{\nu}^{~\sigma}+\frac{k}{4\pi}\delta _{\nu}^{~\sigma} \right)\delta A_{\sigma}\wedge \delta A_{\rho}
\end{align}$$

we first consider the Noether charge defined in the Proca theore, which is the special case of our Proca-Chern-Simons theory with $k=0$. the Noether charge is defined as

# Noether charge

$$\begin{align}
H_{\xi} & =X_{\xi}\cdot \theta-\alpha _{\xi} \\
 & =\int _{\Sigma}\mathrm{d}^{2}x\sqrt{ \sigma }\tau _{\mu}\left(F^{\mu \nu}(\xi ^{\rho}\nabla _{\rho}A_{\nu}+A_{\rho}\nabla _{\nu}\xi ^{\rho})-\frac{1}{4}\xi ^{\mu}F_{\rho \sigma}F^{\rho \sigma}-\frac{1}{2}\mu ^{2}g^{\mu \nu}A_{\rho}A^{\rho}\right) \\
 & =\int _{\Sigma}\mathrm{d}^{2}x\sqrt{ \sigma }\tau _{\mu}\xi _{\nu}\left(F^{\mu \rho}F^{\nu}_{~\rho}-\frac{1}{4}g^{\mu \nu}F_{\rho \sigma}F^{\rho \sigma}+\mu ^{2}A^{\mu}A^{\nu}-\frac{1}{2}\mu ^{2}g^{\mu \nu}A_{\rho}A^{\rho}\right) \\
 & +\int _{\Sigma}\mathrm{d}^{2}x\sqrt{ \sigma }\tau _{\mu}(\nabla _{\nu}(F^{\mu \nu}A_{\rho}\xi ^{\rho})+(\nabla _{\nu}F^{\nu \mu}-\mu ^{2}A^{\mu})A_{\rho}\xi ^{\rho})
\end{align}$$

the first term in the last line is a total derivative by

$$\begin{align}
\tau _{\nu}\nabla _{\mu}S^{\mu \nu} & =D_{\alpha}(\sigma ^{\alpha}_{~\mu}\tau _{\nu}S^{\mu \nu})
\end{align}$$

and the second term vanishes by the eom. now consider the general case with  $\displaystyle{k\neq 0}$.

$$\begin{align}
H_{\xi} & =X_{\xi}\cdot \theta-\alpha _{\xi} \\
 & =\int _{\Sigma}\mathrm{d}^{2}x\sqrt{ \sigma }\tau _{\mu}\left(F^{\mu \nu}(\xi ^{\rho}\nabla _{\rho}A_{\nu}+A_{\rho}\nabla _{\nu}\xi ^{\rho})+\frac{k}{4\pi}\varepsilon ^{\mu \nu \rho}A_{\nu}\mathcal{L}_{\xi}A_{\rho}-\frac{1}{4}g^{\mu \nu}F_{\rho \sigma}F^{\rho \sigma}-\frac{1}{2}\mu ^{2}g^{\mu \nu}A_{\rho}A^{\rho}-\frac{k}{4\pi}\xi _{\nu}g^{\mu \nu}\varepsilon ^{\alpha \beta \lambda}A_{\alpha}\nabla _{\beta}A_{\lambda}\right) \\
 & =\int _{\Sigma}\mathrm{d}^{2}x\sqrt{ \sigma }\tau _{\mu}\xi _{\nu}\left(F^{\mu \rho}F^{\nu}_{~\rho}-\frac{1}{4}g^{\mu \nu}F_{\rho \sigma}F^{\rho \sigma}+\mu ^{2}A^{\mu}A^{\nu}-\frac{1}{2}\mu ^{2}g^{\mu \nu}A_{\rho}A^{\rho}\right) \\
 & +\int _{\Sigma}\mathrm{d}^{2}x\sqrt{ \sigma }\tau _{\mu}\left(\nabla _{\nu}\left( F^{\mu \nu}A_{\rho}\xi ^{\rho}-\frac{k}{4\pi}\varepsilon ^{\mu \nu \rho}A_{\rho}A_{\sigma}\xi ^{\sigma}\right)+\left( \nabla _{\nu}F^{\nu \mu}-\mu ^{2}A^{\mu}+\frac{k}{2\pi}\varepsilon ^{\mu \rho \sigma}\nabla _{\rho}A_{\sigma} \right)A_{\rho}\xi ^{\rho}\right)
\end{align}$$

# Noether theorem check

$$\begin{align}
X_{\xi}\cdot \Omega & =\int _{\Sigma}\mathrm{d}^{2}x\sqrt{ \sigma }\tau _{\mu}\left((X_{\xi}\cdot \delta F^{\mu \nu})\delta A_{\nu}-(X_{\xi}\cdot \delta A_{\nu})\delta F^{\mu \nu}\right) \\
 & +\int _{\Sigma}\mathrm{d}^{2}x\sqrt{ \sigma }\tau _{\mu} \frac{k}{4\pi}\varepsilon ^{\mu \nu \rho}[(X_{\xi}\cdot \delta A_{\nu})\delta A_{\rho}-(X_{\xi}\cdot \delta A_{\rho})\delta A_{\nu}] \\
 & =-\int _{\Sigma}\mathrm{d}^{2}x\sqrt{ \sigma }\tau _{\mu}\xi _{\nu}\left(\delta F^{\mu \rho}F^{\nu}_{~\rho}+F^{\mu \rho}\delta F_{\nu}^{~\rho}-\frac{1}{2}g^{\mu \nu}F_{\rho \sigma}\delta F^{\rho \sigma}+\mu ^{2}\delta A^{\mu}A^{\nu}+\mu ^{2}A^{\mu}\delta A^{\nu}-\mu ^{2}g^{\mu \nu}A_{\rho}\delta A^{\rho}\right. \\
 & +\tau _{\mu}\nabla _{\nu}\left(\delta F^{\mu \nu}\xi ^{\rho}A_{\rho}+F^{\mu \nu}\xi _{\rho}\delta A^{\rho}+F^{\nu \rho}\xi ^{\mu}\delta A^{\rho}-F^{\mu \rho}\xi ^{\nu}\delta A^{\rho}-\frac{k}{4\pi}\varepsilon ^{\mu \nu \rho}\delta A_{\rho}A_{\sigma}\xi ^{\sigma}-\frac{k}{4\pi}\varepsilon ^{\mu \nu \rho}A_{\rho}\delta A_{\sigma}\xi ^{\sigma}\right) \\
 & +\tau ^{\mu}\nabla _{\rho}\xi ^{\rho}F_{\mu \nu}\delta A^{\nu}-\tau _{\mu}F_{\rho \nu}(\nabla ^{\mu}\xi ^{\rho}+\nabla ^{\rho}\xi ^{\mu})\delta A^{\nu}-\tau ^{\mu}F_{\mu \rho}(\nabla ^{\nu}\xi ^{\rho}+\nabla ^{\rho}\xi ^{\nu})\delta A_{\nu}+\tau ^{\mu}\delta F_{\mu \nu}A_{\rho}(\nabla ^{\rho}\xi ^{\nu}+\nabla ^{\nu}\xi _{\rho}) \\
 & -\tau ^{\mu}\xi _{\mu}\left( \nabla ^{\rho}F_{\rho \nu}-\mu ^{2}A_{\nu}+\frac{k}{2\pi}\varepsilon _{\nu \rho \sigma}\nabla ^{\rho}A^{\sigma} \right)\delta A^{\nu}+\tau ^{\mu}\xi _{\nu}\left( \nabla ^{\rho}F_{\rho \mu}-\mu ^{2}A_{\mu}+\frac{k}{2\pi}\varepsilon _{\mu \rho \sigma}\nabla ^{\rho}A^{\sigma} \right)\delta A^{\nu} \\
 & \left.\left. +\tau ^{\mu}\left( \nabla ^{\nu}\delta F_{\nu \mu}-\mu ^{2}\delta A_{\mu}+\frac{k}{2\pi}\varepsilon _{\mu \sigma \lambda}\nabla ^{\sigma}\delta A^{\lambda} \right)A^{\rho}\xi _{\rho} \right)\right|_{\widehat{\mathcal{P}}} \\
 & =-\left.\delta \left( \int _{\Sigma}\mathrm{d}^{2}x\sqrt{ \sigma }\tau _{\mu}\xi _{\nu}\left(F^{\mu \rho}F^{\nu}_{~\rho}-\frac{1}{4}g^{\mu \nu}F_{\rho \sigma}F^{\rho \sigma}+\mu ^{2}A^{\mu}A^{\nu}-\frac{1}{2}\mu ^{2}g^{\mu \nu}A_{\rho}A^{\sigma}\right)-\int _{\Sigma}\mathrm{d}^{2}x\sqrt{ \sigma }\tau _{\mu}\nabla _{\nu}\left(\frac{k}{4\pi}\varepsilon ^{\mu \nu \rho}A_{\rho}A_{\sigma}\xi ^{\sigma}\right) \right)\right|_{\widehat{\mathcal{P}}} \\
 & =-\delta H_{\xi}
\end{align}$$

# detailed derivation of $H_{\xi}$ and $X_{\xi}\cdot \Omega$

The formulas above are the compressed versions used in the main text. Here we record the intermediate steps in a form that can be imported directly into the manuscript if needed.

We first collect a few geometric identities. For a Killing field $\xi ^{\mu}$,

$$\begin{align}
\nabla _{\mu}\xi _{\nu}+\nabla _{\nu}\xi _{\mu} & =0, &
\nabla _{\rho}\xi ^{\rho} & =0, &
\nabla _{\lambda}\varepsilon ^{\mu \nu \rho} & =0 .
\end{align}$$

The induced action on the fields is

$$\begin{align}
X_{\xi}\cdot \delta A^{\mu} & =\mathcal{L}_{\xi}A^{\mu}=\xi ^{\rho}\nabla _{\rho}A^{\mu}-A^{\rho}\nabla _{\rho}\xi ^{\mu},
\end{align}$$

and after lowering the index,

$$\begin{align}
X_{\xi}\cdot \delta A_{\mu} & =g_{\mu \nu}X_{\xi}\cdot \delta A^{\nu} \\
 & =g_{\mu \nu}\left( \xi ^{\rho}\nabla _{\rho}A^{\nu}-A^{\rho}\nabla _{\rho}\xi ^{\nu} \right) \\
 & =\xi ^{\rho}\nabla _{\rho}A_{\mu}+A_{\rho}\nabla _{\mu}\xi ^{\rho}-A^{\rho}\left( \nabla _{\rho}\xi _{\mu}+\nabla _{\mu}\xi _{\rho} \right) \\
 & =\xi ^{\rho}\nabla _{\rho}A_{\mu}+A_{\rho}\nabla _{\mu}\xi ^{\rho} \\
 & =\mathcal{L}_{\xi}A_{\mu}.
\end{align}$$

The action on the field strength is

$$\begin{align}
X_{\xi}\cdot \delta F_{\mu \nu} & =\nabla _{\mu}(X_{\xi}\cdot \delta A_{\nu})-\nabla _{\nu}(X_{\xi}\cdot \delta A_{\mu}) \\
 & =\nabla _{\mu}(\xi ^{\rho}\nabla _{\rho}A_{\nu}+A_{\rho}\nabla _{\nu}\xi ^{\rho})-\nabla _{\nu}(\xi ^{\rho}\nabla _{\rho}A_{\mu}+A_{\rho}\nabla _{\mu}\xi ^{\rho}) \\
 & =\xi ^{\rho}\nabla _{\rho}(\nabla _{\mu}A_{\nu}-\nabla _{\nu}A_{\mu})+\nabla _{\mu}\xi ^{\rho}(\nabla _{\rho}A_{\nu}-\nabla _{\nu}A_{\rho})+\nabla _{\nu}\xi ^{\rho}(\nabla _{\mu}A_{\rho}-\nabla _{\rho}A_{\mu}) \\
 & \quad +\xi ^{\rho}[\nabla _{\mu},\nabla _{\rho}]A_{\nu}-\xi ^{\rho}[\nabla _{\nu},\nabla _{\rho}]A_{\mu}+A_{\rho}[\nabla _{\mu},\nabla _{\nu}]\xi ^{\rho} \\
 & =\xi ^{\rho}\nabla _{\rho}F_{\mu \nu}+\nabla _{\mu}\xi ^{\rho}F_{\rho \nu}+\nabla _{\nu}\xi ^{\rho}F_{\mu \rho}+\xi ^{\rho}R_{\mu \rho \nu \sigma}A^{\sigma}-\xi ^{\rho}R_{\nu \rho \mu \sigma}A^{\sigma}+A^{\rho}R_{\mu \nu \rho \sigma}\xi ^{\sigma} \\
 & =\mathcal{L}_{\xi}F_{\mu \nu},
\end{align}$$

and therefore

$$\begin{align}
X_{\xi}\cdot \delta F^{\mu \nu} & =g^{\mu \rho}g^{\nu \sigma}X_{\xi}\cdot \delta F_{\rho \sigma} \\
 & =g^{\mu \rho}g^{\nu \sigma}\left( \xi ^{\lambda}\nabla _{\lambda}F_{\rho \sigma}+\nabla _{\rho}\xi ^{\lambda}F_{\lambda \sigma}+\nabla _{\sigma}\xi ^{\lambda}F_{\rho \lambda} \right) \\
 & =\xi ^{\rho}\nabla _{\rho}F^{\mu \nu}-F^{\rho \nu}\nabla _{\rho}\xi ^{\mu}-F^{\mu \rho}\nabla _{\rho}\xi ^{\nu}+F_{\rho}^{~\nu}\left( \nabla ^{\mu}\xi ^{\rho}+\nabla ^{\rho}\xi ^{\mu} \right)+F^{\mu}_{~\rho}\left( \nabla ^{\nu}\xi ^{\rho}+\nabla ^{\rho}\xi ^{\nu} \right) \\
 & =\mathcal{L}_{\xi}F^{\mu \nu}.
\end{align}$$

## detailed derivation of $H_{\xi}$

Starting from

$$\begin{align}
\theta[A,\delta A] & =\int _{\Sigma}\mathrm{d}^{2}x\sqrt{ \sigma }\tau _{\mu}\left( F^{\mu \nu}\delta A_{\nu}+\frac{k}{4\pi}\varepsilon ^{\mu \nu \rho}A_{\nu}\delta A_{\rho} \right),
\end{align}$$

and

$$\begin{align}
\alpha _{\xi} & =\int _{\Sigma}\mathrm{d}^{2}x\sqrt{ \sigma }\tau _{\rho}\xi ^{\rho}\left( \frac{1}{4}F_{\mu \nu}F^{\mu \nu}+\frac{1}{2}\mu ^{2}A_{\mu}A^{\mu}-\frac{k}{4\pi}\varepsilon ^{\mu \nu \lambda}A_{\mu}\nabla _{\nu}A_{\lambda} \right),
\end{align}$$

we obtain

$$\begin{align}
H_{\xi} & =X_{\xi}\cdot \theta-\alpha _{\xi} \\
 & =\int _{\Sigma}\mathrm{d}^{2}x\sqrt{ \sigma }\tau _{\mu}\Bigg[ F^{\mu \nu}\left( \xi ^{\rho}\nabla _{\rho}A_{\nu}+A_{\rho}\nabla _{\nu}\xi ^{\rho} \right)+\frac{k}{4\pi}\varepsilon ^{\mu \nu \rho}A_{\nu}\left( \xi ^{\sigma}\nabla _{\sigma}A_{\rho}+A_{\sigma}\nabla _{\rho}\xi ^{\sigma} \right) \\
 & \qquad \qquad \qquad \qquad -\xi ^{\mu}\left( \frac{1}{4}F_{\rho \sigma}F^{\rho \sigma}+\frac{1}{2}\mu ^{2}A_{\rho}A^{\rho}-\frac{k}{4\pi}\varepsilon ^{\alpha \beta \lambda}A_{\alpha}\nabla _{\beta}A_{\lambda} \right)\Bigg].
\end{align}$$

We first reorganize the Maxwell term:

$$\begin{align}
F^{\mu \nu}\left( \xi ^{\rho}\nabla _{\rho}A_{\nu}+A_{\rho}\nabla _{\nu}\xi ^{\rho} \right) & =\xi ^{\rho}F^{\mu \nu}\nabla _{\rho}A_{\nu}+F^{\mu \nu}A_{\rho}\nabla _{\nu}\xi ^{\rho} \\
 & =\xi ^{\rho}F^{\mu \nu}(F_{\rho \nu}+\nabla _{\nu}A_{\rho})+F^{\mu \nu}A_{\rho}\nabla _{\nu}\xi ^{\rho} \\
 & =\xi _{\nu}F^{\mu \rho}F^{\nu}_{~\rho}+F^{\mu \nu}\nabla _{\nu}(A_{\rho}\xi ^{\rho}) \\
 & =\xi _{\nu}F^{\mu \rho}F^{\nu}_{~\rho}+\nabla _{\nu}(F^{\mu \nu}A_{\rho}\xi ^{\rho})-(\nabla _{\nu}F^{\mu \nu})A_{\rho}\xi ^{\rho} \\
 & =\xi _{\nu}F^{\mu \rho}F^{\nu}_{~\rho}+\nabla _{\nu}(F^{\mu \nu}A_{\rho}\xi ^{\rho})+(\nabla _{\nu}F^{\nu \mu})A_{\rho}\xi ^{\rho}.
\end{align}$$

For the Proca term we add and subtract the same piece:

$$\begin{align}
-\frac{1}{2}\mu ^{2}\xi ^{\mu}A_{\rho}A^{\rho} & =\xi _{\nu}\left( \mu ^{2}A^{\mu}A^{\nu}-\frac{1}{2}\mu ^{2}g^{\mu \nu}A_{\rho}A^{\rho} \right)-\mu ^{2}A^{\mu}A_{\rho}\xi ^{\rho}.
\end{align}$$

For the Chern-Simons terms we use $\nabla _{\nu}\varepsilon ^{\mu \nu \rho}=0$ and the cyclic identity

$$\begin{align}
-\xi _{\mu}\varepsilon _{\nu \rho \sigma}+\xi _{\nu}\varepsilon _{\rho \sigma \mu}-\xi _{\rho}\varepsilon _{\sigma \mu \nu}+\xi _{\sigma}\varepsilon _{\mu \nu \rho} & =0,
\end{align}$$

to rewrite

$$\begin{align}
\varepsilon ^{\mu \nu \rho}A_{\nu}\left( \xi ^{\sigma}\nabla _{\sigma}A_{\rho}+A_{\sigma}\nabla _{\rho}\xi ^{\sigma} \right)+\xi ^{\mu}\varepsilon ^{\alpha \beta \lambda}A_{\alpha}\nabla _{\beta}A_{\lambda} & =-\nabla _{\nu}\left( \varepsilon ^{\mu \nu \rho}A_{\rho}A_{\sigma}\xi ^{\sigma} \right)+2\varepsilon ^{\mu \rho \sigma}\nabla _{\rho}A_{\sigma}A_{\lambda}\xi ^{\lambda}.
\end{align}$$

Substituting these three rearrangements gives

$$\begin{align}
H_{\xi} & =\int _{\Sigma}\mathrm{d}^{2}x\sqrt{ \sigma }\tau _{\mu}\xi _{\nu}\left( F^{\mu \rho}F^{\nu}_{~\rho}-\frac{1}{4}g^{\mu \nu}F_{\rho \sigma}F^{\rho \sigma}+\mu ^{2}A^{\mu}A^{\nu}-\frac{1}{2}\mu ^{2}g^{\mu \nu}A_{\rho}A^{\rho} \right) \\
 & \quad +\int _{\Sigma}\mathrm{d}^{2}x\sqrt{ \sigma }\tau _{\mu}\Bigg[ \nabla _{\nu}\left( F^{\mu \nu}A_{\rho}\xi ^{\rho}-\frac{k}{4\pi}\varepsilon ^{\mu \nu \rho}A_{\rho}A_{\sigma}\xi ^{\sigma} \right) \\
 & \qquad \qquad \qquad \qquad +\left( \nabla _{\nu}F^{\nu \mu}-\mu ^{2}A^{\mu}+\frac{k}{2\pi}\varepsilon ^{\mu \rho \sigma}\nabla _{\rho}A_{\sigma} \right)A_{\rho}\xi ^{\rho}\Bigg].
\end{align}$$

The last line is precisely the equation of motion:

$$\begin{align}
E^{\mu} & =\nabla _{\nu}F^{\nu \mu}-\mu ^{2}A^{\mu}+\frac{k}{2\pi}\varepsilon ^{\mu \rho \sigma}\nabla _{\rho}A_{\sigma}.
\end{align}$$

Hence on $\widetilde{\mathcal{P}}$ only the total derivative survives:

$$\begin{align}
H_{\xi}\big|_{\widetilde{\mathcal{P}}} & =\int _{\Sigma}\mathrm{d}^{2}x\sqrt{ \sigma }\tau _{\mu}\xi _{\nu}\left( F^{\mu \rho}F^{\nu}_{~\rho}-\frac{1}{4}g^{\mu \nu}F_{\rho \sigma}F^{\rho \sigma}+\mu ^{2}A^{\mu}A^{\nu}-\frac{1}{2}\mu ^{2}g^{\mu \nu}A_{\rho}A^{\rho} \right) \\
 & \quad +\int _{\Sigma}\mathrm{d}^{2}x\sqrt{ \sigma }\tau _{\mu}\nabla _{\nu}\left( F^{\mu \nu}A_{\rho}\xi ^{\rho}-\frac{k}{4\pi}\varepsilon ^{\mu \nu \rho}A_{\rho}A_{\sigma}\xi ^{\sigma} \right).
\end{align}$$

For an antisymmetric tensor $S^{\mu \nu}=-S^{\nu \mu}$ one has

$$\begin{align}
\tau _{\mu}\nabla _{\nu}S^{\mu \nu} & =-D_{\alpha}\left( \sigma ^{\alpha}_{~\mu}\tau _{\nu}S^{\mu \nu} \right).
\end{align}$$

Therefore the second line becomes a boundary term on $\partial \Sigma$. Under the asymptotic boundary conditions used in the paper, this boundary term vanishes, and we finally obtain

$$\begin{align}
H_{\xi}\big|_{\widetilde{\mathcal{P}}} & =\int _{\Sigma}\mathrm{d}^{2}x\sqrt{ \sigma }\tau _{\mu}\xi _{\nu}\left( F^{\mu \rho}F^{\nu}_{~\rho}-\frac{1}{4}g^{\mu \nu}F_{\rho \sigma}F^{\rho \sigma}+\mu ^{2}A^{\mu}A^{\nu}-\frac{1}{2}\mu ^{2}g^{\mu \nu}A_{\rho}A^{\rho} \right).
\end{align}$$

## detailed derivation of $X_{\xi}\cdot \Omega =-\delta H_{\xi}$

We start from

$$\begin{align}
X_{\xi}\cdot \Omega & =\int _{\Sigma}\mathrm{d}^{2}x\sqrt{ \sigma }\tau _{\mu}\left( (X_{\xi}\cdot \delta F^{\mu \nu})\delta A_{\nu}-(X_{\xi}\cdot \delta A_{\nu})\delta F^{\mu \nu} \right) \\
 & \quad +\int _{\Sigma}\mathrm{d}^{2}x\sqrt{ \sigma }\tau _{\mu}\frac{k}{4\pi}\varepsilon ^{\mu \nu \rho}\left( (X_{\xi}\cdot \delta A_{\nu})\delta A_{\rho}-(X_{\xi}\cdot \delta A_{\rho})\delta A_{\nu} \right).
\end{align}$$

Substituting the explicit Lie-derivative formulas and repeatedly integrating by parts on $\Sigma$ gives

$$\begin{align}
X_{\xi}\cdot \Omega & =-\int _{\Sigma}\mathrm{d}^{2}x\sqrt{ \sigma }\Bigg[\tau _{\mu}\xi _{\nu}\left( \delta F^{\mu \rho}F^{\nu}_{~\rho}+F^{\mu \rho}\delta F^{\nu}_{~\rho}-\frac{1}{2}g^{\mu \nu}F_{\rho \sigma}\delta F^{\rho \sigma}+\mu ^{2}\delta A^{\mu}A^{\nu}+\mu ^{2}A^{\mu}\delta A^{\nu}-\mu ^{2}g^{\mu \nu}A_{\rho}\delta A^{\rho} \right) \\
 & \qquad +\tau _{\mu}\nabla _{\nu}\left( \delta F^{\mu \nu}\xi ^{\rho}A_{\rho}+F^{\mu \nu}\xi _{\rho}\delta A^{\rho}+F^{\nu \rho}\xi ^{\mu}\delta A^{\rho}-F^{\mu \rho}\xi ^{\nu}\delta A^{\rho}-\frac{k}{4\pi}\varepsilon ^{\mu \nu \rho}\delta A_{\rho}A_{\sigma}\xi ^{\sigma}-\frac{k}{4\pi}\varepsilon ^{\mu \nu \rho}A_{\rho}\delta A_{\sigma}\xi ^{\sigma} \right) \\
 & \qquad +\tau ^{\mu}\nabla _{\rho}\xi ^{\rho}F_{\mu \nu}\delta A^{\nu}-\tau _{\mu}F_{\rho \nu}\left( \nabla ^{\mu}\xi ^{\rho}+\nabla ^{\rho}\xi ^{\mu} \right)\delta A^{\nu}-\tau ^{\mu}F_{\mu \rho}\left( \nabla ^{\nu}\xi ^{\rho}+\nabla ^{\rho}\xi ^{\nu} \right)\delta A_{\nu} \\
 & \qquad +\tau ^{\mu}\delta F_{\mu \nu}A_{\rho}\left( \nabla ^{\rho}\xi ^{\nu}+\nabla ^{\nu}\xi _{\rho} \right)-\tau ^{\mu}\xi _{\mu}\left( \nabla ^{\rho}F_{\rho \nu}-\mu ^{2}A_{\nu}+\frac{k}{2\pi}\varepsilon _{\nu \rho \sigma}\nabla ^{\rho}A^{\sigma} \right)\delta A^{\nu} \\
 & \qquad +\tau ^{\mu}\xi _{\nu}\left( \nabla ^{\rho}F_{\rho \mu}-\mu ^{2}A_{\mu}+\frac{k}{2\pi}\varepsilon _{\mu \rho \sigma}\nabla ^{\rho}A^{\sigma} \right)\delta A^{\nu} \\
 & \qquad +\tau ^{\mu}\left( \nabla ^{\nu}\delta F_{\nu \mu}-\mu ^{2}\delta A_{\mu}+\frac{k}{2\pi}\varepsilon _{\mu \sigma \lambda}\nabla ^{\sigma}\delta A^{\lambda} \right)A^{\rho}\xi _{\rho}\Bigg].
\end{align}$$

It is useful to separate this long expression into four groups.

The first line is exactly the variation of the stress-tensor-like density:

$$\begin{align}
\delta \left[ \tau _{\mu}\xi _{\nu}\left( F^{\mu \rho}F^{\nu}_{~\rho}-\frac{1}{4}g^{\mu \nu}F_{\rho \sigma}F^{\rho \sigma}+\mu ^{2}A^{\mu}A^{\nu}-\frac{1}{2}\mu ^{2}g^{\mu \nu}A_{\rho}A^{\rho} \right) \right] \\
 =\tau _{\mu}\xi _{\nu}\left( \delta F^{\mu \rho}F^{\nu}_{~\rho}+F^{\mu \rho}\delta F^{\nu}_{~\rho}-\frac{1}{2}g^{\mu \nu}F_{\rho \sigma}\delta F^{\rho \sigma}+\mu ^{2}\delta A^{\mu}A^{\nu}+\mu ^{2}A^{\mu}\delta A^{\nu}-\mu ^{2}g^{\mu \nu}A_{\rho}\delta A^{\rho} \right).
\end{align}$$

The second line is a total derivative on $\Sigma$. Defining

$$\begin{align}
\mathcal{S}^{\mu \nu} & =\delta F^{\mu \nu}\xi ^{\rho}A_{\rho}+F^{\mu \nu}\xi _{\rho}\delta A^{\rho}+F^{\nu \rho}\xi ^{\mu}\delta A^{\rho}-F^{\mu \rho}\xi ^{\nu}\delta A^{\rho}-\frac{k}{4\pi}\varepsilon ^{\mu \nu \rho}\delta A_{\rho}A_{\sigma}\xi ^{\sigma}-\frac{k}{4\pi}\varepsilon ^{\mu \nu \rho}A_{\rho}\delta A_{\sigma}\xi ^{\sigma},
\end{align}$$

which is antisymmetric in $(\mu ,\nu)$, we have

$$\begin{align}
\tau _{\mu}\nabla _{\nu}\mathcal{S}^{\mu \nu} & =-D_{\alpha}\left( \sigma ^{\alpha}_{~\mu}\tau _{\nu}\mathcal{S}^{\mu \nu} \right).
\end{align}$$

Hence this part also reduces to a boundary term at $\partial \Sigma$, and vanishes under the asymptotic boundary conditions.

The third line is proportional to the Killing equation:

$$\begin{align}
\nabla _{\rho}\xi ^{\rho} & =0, &
\nabla ^{\mu}\xi ^{\rho}+\nabla ^{\rho}\xi ^{\mu} & =0, &
\nabla ^{\nu}\xi ^{\rho}+\nabla ^{\rho}\xi ^{\nu} & =0,
\end{align}$$

so it vanishes identically.

The last two lines are proportional to the equations of motion and the linearized equations of motion:

$$\begin{align}
E_{\mu} & =\nabla ^{\rho}F_{\rho \mu}-\mu ^{2}A_{\mu}+\frac{k}{2\pi}\varepsilon _{\mu \rho \sigma}\nabla ^{\rho}A^{\sigma}, \\
\delta E_{\mu} & =\nabla ^{\rho}\delta F_{\rho \mu}-\mu ^{2}\delta A_{\mu}+\frac{k}{2\pi}\varepsilon _{\mu \sigma \lambda}\nabla ^{\sigma}\delta A^{\lambda}.
\end{align}$$

Since $A^{\mu}\in \widetilde{\mathcal{P}}$ and $\delta A^{\mu}$ is tangent to $\widetilde{\mathcal{P}}$, both $E_{\mu}=0$ and $\delta E_{\mu}=0$. Therefore these terms vanish on $\widetilde{\mathcal{P}}$.

Putting everything together, we obtain

$$\begin{align}
X_{\xi}\cdot \Omega \big|_{\widetilde{\mathcal{P}}} & =-\delta \left( \int _{\Sigma}\mathrm{d}^{2}x\sqrt{ \sigma }\tau _{\mu}\xi _{\nu}\left( F^{\mu \rho}F^{\nu}_{~\rho}-\frac{1}{4}g^{\mu \nu}F_{\rho \sigma}F^{\rho \sigma}+\mu ^{2}A^{\mu}A^{\nu}-\frac{1}{2}\mu ^{2}g^{\mu \nu}A_{\rho}A^{\rho} \right) \right) \\
 & =-\delta H_{\xi}.
\end{align}$$

This is the Hamiltonian equation for the Killing flow generated by $X_{\xi}$.

# "Casimir" operator

$$\begin{align}
\mathcal{D}_{\mu}^{~\nu}\mathcal{D}_{\nu}^{~\rho}A_{\rho} & =\varepsilon _{\mu}^{~\alpha \nu}\nabla _{\alpha}\varepsilon _{\nu}^{~\beta \rho}\nabla _{\beta}A_{\rho} \\
 & =\varepsilon _{~\mu}^{\nu~\alpha}\varepsilon _{\nu}^{~\beta \rho}\nabla _{\alpha}\nabla _{\beta}A_{\rho} \\
 & =-(\delta _{\mu}^{\beta}g^{\alpha \rho}-\delta _{\mu}^{\rho}g^{\alpha \beta})\nabla _{\alpha}\nabla _{\beta}A_{\rho} \\
 & =-\nabla ^{\rho}\nabla _{\mu}A_{\rho}+\nabla ^{2}A_{\mu} \\
 & =\nabla ^{2}A_{\mu}-[\nabla ^{\rho},\nabla _{\mu}]A_{\rho} \\
 & =\nabla ^{2}A_{\mu}-R_{\mu \nu}A^{\nu} \\
 & =\nabla ^{2}A_{\mu}+2A_{\mu}
\end{align}$$

# 2d conformal transformation

$$\begin{align}
 & \frac{1}{2\pi i}\oint _{c}\mathrm{d}z[T(z)\varepsilon(z),\phi(w,\bar{w})]+\frac{1}{2\pi i}\oint _{c}\mathrm{d}\bar{z}[\bar{T}(\bar{z})\bar{\varepsilon}(\bar{z}),\phi(w,\bar{w})] \\
= & \frac{1}{2\pi i}\oint _{c}\mathrm{d}z\varepsilon(z)\left(\frac{\partial _{w}}{z-w}+\frac{h}{(z-w)^{2}}\right)\phi(w,\bar{w})+\frac{1}{2\pi i}\oint _{c}\mathrm{d}\bar{z}\bar{\varepsilon}(\bar{z})\left(\frac{\partial _{\bar{w}}}{\bar{z}-\bar{w}}+\frac{\bar{h}}{(\bar{z}-\bar{w})^{2}}\right)\phi(w,\bar{w}) \\
= & \varepsilon(w)\partial _{w}\phi(w,\bar{w})+h\partial _{w}\varepsilon(w)\phi(w,\bar{w})+\bar{\varepsilon}(\bar{w})\partial _{\bar{w}}\phi(w,\bar{w})+\bar{h}\partial _{\bar{w}}\bar{\varepsilon}(\bar{w})\phi(w,\bar{w}) \\
= & \delta _{\varepsilon,\bar{\varepsilon}}\phi(w,\bar{w})
\end{align}$$

here we have used the operator product expansion

$$\begin{align}
T(z)\phi(w,\bar{w}) & \sim \frac{h}{(z-w)^{2}}\phi(w,\bar{w})+\frac{1}{z-w}\partial _{w}\phi(w,\bar{w}) \\
\bar{T}(\bar{z})\phi(w,\bar{w}) & \sim \frac{\bar{h}}{(\bar{z}-\bar{w})^{2}}\phi(w,\bar{w})+\frac{1}{\bar{z}-\bar{w}}\partial _{\bar{w}}\phi(w,\bar{w})
\end{align}$$

# reconsider the Noether charge

$$\begin{align}
S_{\text{CS}} & =\frac{k}{4\pi}\int _{M}A\wedge \mathrm{d}A \\
\delta S_{\text{CS}} & =\frac{k}{4\pi}\int _{M}\delta A\wedge \mathrm{d}A+A\wedge \mathrm{d}\delta A \\
 & =\frac{k}{4\pi}\int _{M} 2\delta A\wedge \mathrm{d}A+\mathrm{d}(A\wedge \delta A) \\
 & =\frac{k}{2\pi}\int _{M}\delta A\wedge \mathrm{d}A+\frac{k}{4\pi}\int _{\Sigma _{f}-\Sigma _{i}} A\wedge \delta A
\end{align}$$

$$\begin{align}
X_{\xi}\cdot \delta S & =\frac{k}{4\pi}\int _{M} \mathcal{L}_{\xi}(A\wedge \mathrm{d}A) \\
 & =\frac{k}{4\pi}\int _{\Sigma _{f}-\Sigma _{i}}i_{\xi}\left(A\wedge \mathrm{d}A\right) \\
 & =\frac{k}{4\pi} \int _{\Sigma _{f}-\Sigma _{i}}\mathrm{d}^{2}x\sqrt{ \sigma }\tau _{\rho}\xi ^{\rho}\left( -\frac{k}{4\pi}\varepsilon ^{\mu \nu \lambda}A_{\mu}\nabla _{\nu}A_{\lambda} \right)
\end{align}$$

then

$$\begin{align}
H_{\xi}|_{\widetilde{\mathcal{P}}} & =\frac{k}{4\pi}\int _{\Sigma}A\wedge \mathcal{L}_{\xi}A-i_{\xi}\left(A\wedge \mathrm{d}A\right) \\
 & =\frac{k}{4\pi}\int _{\Sigma}A\wedge(\mathrm{d}(i_{\xi}A)+i_{\xi}F)-i_{\xi}\left(A\wedge F\right) \\
 & =\frac{k}{4\pi}\int _{\Sigma} 2A\wedge i_{\xi}F-\mathrm{d}((i_{\xi}A)A) \\
 & =-\frac{k}{4\pi}\int _{\partial \Sigma} i_{\xi}AA
\end{align}$$

$$\begin{align}
H_{\xi}|_{\widetilde{\mathcal{P}}} & =(X_{\xi}\cdot \theta-\alpha _{\xi})|_{\widetilde{\mathcal{P}}} \\
 & =\int _{\Sigma}\mathrm{d}^{2}x\sqrt{ \sigma }\tau _{\mu}\xi _{\nu}\left( F^{\mu \rho}F^{\nu}_{~\rho}-\frac{1}{4}g^{\mu \nu}F_{\rho \sigma}F^{\rho \sigma}+\mu ^{2}A^{\mu}A^{\nu}-\frac{1}{2}\mu ^{2}g^{\mu \nu}A_{\rho}A^{\rho} \right) \\
 & +\left.\int _{\Sigma}\mathrm{d}^{2}x\sqrt{ \sigma }\tau _{\mu}\left[ \nabla _{\nu}\left( F^{\mu \nu}A_{\rho}\xi ^{\rho}-\frac{k}{4\pi}\varepsilon ^{\mu \nu \rho}A_{\rho}A_{\sigma}\xi ^{\sigma} \right)+\left( \nabla _{\nu}F^{\nu \mu}-\mu ^{2}A^{\mu}+\frac{k}{4\pi}\varepsilon ^{\mu \rho \sigma}\nabla _{\rho}A_{\sigma} \right)A_{\rho}\xi ^{\rho} \right] \right|_{\widetilde{\mathcal{P}}} \\
 & =\left.\int _{\Sigma}\mathrm{d}^{2}x\sqrt{ \sigma }\tau _{\mu}\xi _{\nu}\left( F^{\mu \rho}F^{\nu}_{\rho}-\frac{1}{4}g^{\mu \nu}F_{\rho \sigma}F^{\rho \sigma}+\mu ^{2}A^{\mu}A^{\nu}-\frac{1}{2}\mu ^{2}g^{\mu \nu}A_{\rho}A^{\rho}\right)\right|_{\widetilde{\mathcal{P}}} \\
 & +\int _{\Sigma _{r}}\mathrm{d}^{2}x\sqrt{ \sigma }D_{\alpha}\left( \sigma ^{\alpha}_{~\mu}\tau _{\nu}\frac{k}{4\pi}\varepsilon ^{\mu \nu \rho}A_{\rho} A_{\sigma}\xi ^{\sigma} \right)
\end{align}$$

---

$$\begin{align}
\mathcal{D}_{\mu}^{~\nu}A_{\nu} & =\varepsilon _{\mu}^{~\nu \rho}\nabla _{\nu}A_{\rho} \\
\mathcal{D}^{2}A_{\mu} & =\nabla ^{2}A_{\mu}+2A_{\mu}
\end{align}$$
