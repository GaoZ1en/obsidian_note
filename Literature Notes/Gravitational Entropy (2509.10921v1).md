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

act on the action

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
 & =\int _{\Sigma}\mathrm{d}(\delta F_{\xi}-\xi \cdot \theta-F)
\end{align}$$