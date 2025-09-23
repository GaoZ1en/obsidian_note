---
paper id: 2509.10921v1
title: "Gravitational Entropy"
authors: Sangmin Choi, Malcolm J. Perry
publication date: 2025-09-13T17:40:48Z
abstract: "We formulate the classical gravitational entropy of a horizon as a Noether charge that does not require the notion of a temperature, and which is applicable to horizons that are not necessarily associated with black holes. This introduces a correction to the covariant phase space formalism that accounts for the configuration-dependence of the generating vector field conjugate to the charge. The vector field is related to the proposal of Bousso that the gravitational entropy of a region is determined by the lightsheet at its boundary. We test the formula on various black hole and cosmological horizons."
comments: "23 pages"
pdf: "[[Attachments/Assets/Gravitational Entropy (2509.10921v1).pdf]]"
url: https://arxiv.org/abs/2509.10921v1
tags: []
---
# covariant phase space

$$\begin{align}
S & =\int _{M} L[\phi] \\
\delta S & =\int _{M} (E[\phi]\delta \phi+\mathrm{d}\theta[\phi,\delta \phi]) \\
\omega & =\int _{\Sigma}\delta \theta
\end{align}$$

consider the following symmetry transformation

$$\begin{align}
X_{\xi} & =\int _{M}\mathrm{d}^{d}x \delta _{\xi}\phi \frac{\delta}{\delta \phi}
\end{align}$$

(here we donnot assume $\displaystyle{\xi}$ is independent from field $\displaystyle{\phi}$)act on the action

$$\begin{align}
X_{\xi}\cdot \delta S & =\int _{M} \mathrm{d}\mu _{\xi}
\end{align}$$

we point out that if $\displaystyle{\xi}$ is a Killing vector, we have $\displaystyle{\mu _{\xi}=\xi \cdot L}$.then the corresponding Noether charge reads

$$\begin{align}
H_{\xi} & =\int _{\Sigma}(X_{\xi}\cdot \theta-\mu _{\xi})
\end{align}$$

which satisfies

$$\begin{align}
X_{\xi}\cdot \omega & =-\delta H_{\xi}
\end{align}$$

notice that

$$\begin{align}
\omega|_{\Sigma _{f}}-\omega|_{\Sigma _{i}} & =\delta \int _{\Sigma _{f}-\Sigma _{i}}\theta \\
 & =\delta \int _{M}\mathrm{d}\theta \\
 & =\delta\left(\delta S-\int _{M}E_{\phi}\delta \phi\right) \\
 & \approx 0
\end{align}$$

here $\displaystyle{\approx}$ means evaluation on the prephase space $\displaystyle{\tilde{\mathcal{P}}}$. and

$$\begin{align}
H_{\xi}|_{\Sigma _{f}}-H_{\xi}|_{\Sigma _{i}} & =\int _{\Sigma _{f}-\Sigma _{i}}X_{\xi}\cdot \theta-\mu _{\xi} \\
 & =-\int _{M}E(X_{\xi}\cdot \delta \phi ) \\
 & \approx0
\end{align}$$

then $\displaystyle{J_{\xi}=X_{\xi}\cdot \theta-\mu _{\xi}}$ is closed. by Poincare lemma, we can write

$$\begin{align}
J_{\xi} & =\mathrm{d}F_{\xi}
\end{align}$$

$$\begin{align}
\delta J_{\xi} & =\delta(X_{\xi}\cdot \theta)-\delta \mu _{\xi} \\
 & =\mathcal{L}_{X_{\xi}}\theta-X_{\xi}\cdot \delta\theta-\delta \mu _{\xi} \\
 & =\mathcal{L}_{\xi}\theta+X_{\delta \xi}\cdot \theta-X_{\xi}\cdot \delta \theta-\delta \mu _{\xi} \\
 & =\mathrm{d}(\xi \cdot \theta)+\xi \cdot \mathrm{d}\theta+X_{\delta \xi}\cdot \theta-X_{\xi}\cdot \delta \theta-\delta \mu _{\xi}
\end{align}$$

for $\displaystyle{\xi}$ a Killing vector

$$\begin{align}
\delta J_{\xi} & =\mathrm{d}(\xi \cdot \theta)+(\xi \cdot E)\delta \phi+X_{\delta \xi}\cdot \theta-X_{\xi}\cdot \delta \theta-\delta \xi \cdot L \\
 & \approx -X_{\xi}\cdot \delta \theta+X_{\delta \xi}\cdot \theta+\mathrm{d}(\xi \cdot \theta)-\delta \xi \cdot L \\
\implies -X_{\xi}\cdot \delta \theta & =\delta J_{\xi}-\mathrm{d}(\xi \cdot \theta)-J_{\delta \xi}
\end{align}$$

here we use

$$\begin{align}
\mathcal{L}_{X_{\xi}}\vartheta & =\mathcal{L}_{\xi}\vartheta+X_{\delta \xi}\cdot \vartheta
\end{align}$$

for 1-form $\displaystyle{\theta}$. then

$$\begin{align}
\delta H_{\xi} & =-\int _{\Sigma}X_{\xi}\cdot \delta\theta \\
 & =\int _{\Sigma}(\delta J_{\xi}-\mathrm{d}(\xi \cdot \theta)-J_{\delta \xi}) \\
 & =\int _{\Sigma}\mathrm{d}(\delta F_{\xi}-\xi \cdot \theta-F_{\delta \xi}) \\
 & =\int _{\partial \Sigma}(\delta F_{\xi}-\xi \cdot \theta-F_{\delta \xi})
\end{align}$$

since the LHS is a $\displaystyle{\delta}$-closed form, the RHS should be a $\displaystyle{\delta}$-total derivatice as

$$\begin{align}
\xi \cdot \theta-F_{\delta \xi} & =\delta C
\end{align}$$

add boundary Lagrangian...

$$\begin{align}

\end{align}$$

---

gravitational charges

$$\begin{align}
S & =\frac{1}{16\pi G}\int _{M}\mathrm{d}^{4}x\sqrt{ -g }(R-2\Lambda)
\end{align}$$

take a variation

$$\begin{align}
\delta S & = \frac{1}{16\pi G}\int _{M}\mathrm{d}^{4}x\sqrt{ -g }\left(-R^{\mu \nu}+\frac{1}{2}Rg^{\mu \nu}-\Lambda g^{\mu \nu}\right)\delta g_{\mu \nu} \\
 & +\frac{1}{16\pi G}\int _{\Sigma _{f}-\Sigma _{i}}\mathrm{d}^{3}x\sqrt{ \sigma }\tau_{\mu}(g^{\mu \rho}\nabla ^{\nu}\delta g_{\nu \rho}-g^{\nu \rho}\nabla ^{\mu}\delta g_{\nu \rho})
\end{align}$$

which gives eom and symplectic potential as

$$\begin{align}
R^{\mu \nu}-\frac{1}{2}Rg^{\mu \nu}+\Lambda g^{\mu \nu}=0  \\
\implies R^{\mu \nu} =\Lambda g^{\mu \nu}\\
\theta=\frac{1}{16\pi G}\int _{\Sigma}\mathrm{d}^{3}x\sqrt{ \sigma }\tau _{\mu}(g^{\mu \rho}\nabla ^{\nu}\delta g_{\nu \rho}-g^{\nu \rho}\nabla ^{\mu}\delta g_{\nu \rho})
\end{align}$$

and the linearized eom for $\displaystyle{\delta g_{\mu \nu}}$

$$\tag{.}\begin{align}
\square \delta g_{\mu \nu}+g^{\rho \sigma}\nabla _{\mu}\nabla _{\nu}\delta g_{\rho \sigma}-\nabla _{\mu}\nabla _{\rho}\delta g^{\rho}_{~\nu}-\nabla _{\nu}\nabla _{\rho}\delta g^{\rho}_{~\mu}+2R_{\mu \rho \nu \sigma}\delta g^{\rho \sigma} & =0
\end{align}$$

the Noether current is given by

$$\begin{align}
J_{\xi} & =X_{\xi}\cdot \Theta-\xi \cdot L \\
 & =\frac{1}{16\pi G} \mathrm{d}^{3}x\sqrt{ \sigma }\tau _{\mu}(g^{\mu \rho}\nabla ^{\nu}(\nabla _{\nu}\xi _{\rho}+\nabla _{\rho}\xi _{\nu})-g^{\nu \rho}\nabla ^{\mu}(\nabla _{\nu}\xi _{\rho}+\nabla _{\rho}\xi _{\nu})) \\
 & -\frac{1}{16\pi G}\mathrm{d}^{3}x\sqrt{ \sigma }\tau _{\mu}\xi ^{\mu} (R-2\Lambda) \\
 & =\frac{1}{16\pi G}\mathrm{d}^{3}x\sqrt{ \sigma }\tau _{\mu}(\nabla _{\rho}\nabla ^{\rho} \xi ^{\mu}-\nabla ^{\mu}(\nabla _{\nu}\xi ^{\nu})+R^{\mu \nu}\xi _{\nu}-\xi ^{\mu}(R-2\Lambda)) \\
 & \approx \frac{1}{16\pi G}\mathrm{d}^{3}x\sqrt{ \sigma }\tau _{\mu}\left(\nabla _{\rho}\nabla ^{\rho}\xi ^{\mu}-\nabla ^{\mu}(\nabla _{\nu}\xi ^{\nu})-R^{\mu \nu}\xi _{\nu}\right) \\
 & =\frac{1}{16\pi G}\mathrm{d}^{3}x\sqrt{ \sigma }\tau _{\mu}(\nabla _{\rho}\nabla ^{\rho}\xi ^{\mu}-\nabla _{\nu}\nabla ^{\mu}\xi ^{\nu}) \\
 & =\frac{1}{16\pi G}\mathrm{d}^{3}x\sqrt{ \sigma }\tau _{\mu}\nabla _{\nu}(\nabla ^{\nu}\xi ^{\mu}-\nabla ^{\mu}\xi ^{\nu})
\end{align}$$

# Schwarzschild case

$$\begin{align}
\mathrm{d}s^{2} & =-f(r)\mathrm{d}t^{2}+\frac{\mathrm{d}r^{2}}{f(r)}+r^{2}(\mathrm{d}\theta ^{2}+\sin ^{2}\theta \mathrm{d}\phi ^{2}) \\
f(r) & =1-\frac{2M}{r}
\end{align}$$

introduce ingoing Edditon-Finkelstein coordinates with $\displaystyle{v=t+r^{*},\mathrm{d}r^{*}=\frac{\mathrm{d}r}{f(r)}}$, then the metric becomes

$$\begin{align}
\mathrm{d}s^{2} & =-f(r)(\mathrm{d}v-\mathrm{d}r^{*})^{2}+f(r)\mathrm{d}r^{*2}+r^{2}\left(\mathrm{d}\theta ^{2}+\sin ^{2}\theta \mathrm{d}\phi ^{2}\right) \\
 & =-f(r)\mathrm{d}v^{2}+2\mathrm{d}v\mathrm{d}r+r^{2}(\mathrm{d}\theta ^{2}+\sin ^{2}\theta \mathrm{d}\phi ^{2})
\end{align}$$

the spacetime is static and so $\displaystyle{\frac{\partial}{\partial v}=k^{a} \frac{\partial}{\partial x^{a}}}$ is a Killing vector. the surface gravity on the horizon $\displaystyle{\kappa}$ is defined as

$$\begin{align}
k^{a}\nabla _{a}k^{b} & =\kappa k^{b} \\
\implies \kappa & =
\end{align}$$

$$\tag{.}\begin{align}
k^{a}\nabla _{a}k^{b} & =k^{a}\partial _{a}k^{b}+k^{a}\Gamma ^{b}_{~ac}k^{c}
\end{align}$$

$$\tag{.}\begin{align}
\frac{\partial}{\partial v} & =\frac{\partial}{\partial t}+f(r) \frac{\partial}{\partial r}
\end{align}$$

nonzero Christoffel symbols are

$$\begin{align}
\Gamma ^{t}_{~tr} & = \frac{f'(r)}{2f(r)} \\
\Gamma ^{r}_{~tt} & =-\frac{1}{2}f(r)f'(r) \\
\Gamma ^{r}_{~rr} & =-\frac{f'(r)}{2f(r)} \\
\Gamma ^{r}_{~\theta \theta} & =-rf(r) \\
\Gamma ^{r}_{~\phi \phi} & =-rf(r)\sin ^{2}\theta \\
\Gamma ^{\theta}_{~r\theta} & =\frac{1}{r} \\
\Gamma ^{\theta}_{~\phi \phi} & =-\sin \theta \cos \theta \\
\Gamma ^{\phi}_{~r\phi} & =\frac{1}{r} \\
\Gamma ^{\phi}_{~\theta \phi} & =\frac{\cos \theta}{\sin \theta}
\end{align}$$
