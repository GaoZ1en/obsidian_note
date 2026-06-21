---
title: "Dirac field in curved spacetime"
date: 2026-04-06
summary: "Derives the Dirac action in a general curved spacetime; obtains equations of motion and the symplectic potential; constructs the canonical inner product and mode expansion and discusses quantization and Noether charges (Kosmann derivative)."
---

the action for the Dirac field in a general curved spacetime is

$$\begin{align}
S & =\int _{M}\mathrm{d}^{d}x\sqrt{ -g }\left( \frac{i}{2}\bar{\psi}\gamma ^{\mu}\nabla _{\mu}\psi-\frac{i}{2}\bar{\psi}\gamma ^{\mu}\overleftarrow{\nabla}_{\mu}\psi -m\bar{\psi}\psi \right).
\end{align}$$

here

$$\begin{align}
\gamma ^{\mu} & =e^{\mu}{}_{a}\gamma ^{a}, \\
\nabla _{\mu}\psi & =\partial _{\mu}\psi+\frac{1}{4}\omega _{\mu ab}\gamma ^{ab}\psi, \\
\bar{\psi}\overleftarrow{\nabla}_{\mu} & =\partial _{\mu}\bar{\psi}-\frac{1}{4}\omega _{\mu ab}\bar{\psi}\gamma ^{ab}.
\end{align}$$

## formalism

take a variation of the action, we have

$$\begin{align}
\delta S & =\int _{M}\mathrm{d}^{d}x\sqrt{ -g }\left(\delta \bar{\psi}\left(i\gamma ^{\mu}\nabla _{\mu}-m\right)\psi-\bar{\psi}(i\overleftarrow{\nabla}_{\mu}\gamma ^{\mu}+m)\delta \psi\right) \\
 & +\int _{\Sigma _{f}-\Sigma _{i}} \mathrm{d}^{d-1}x\sqrt{ \sigma }\tau _{\mu} \frac{i}{2}\left(\bar{\psi}\gamma ^{\mu}\delta \psi-\delta \bar{\psi}\gamma ^{\mu}\psi\right)
\end{align}$$

therefore the eoms are

$$\begin{align}
(i\gamma ^{\mu}\nabla _{\mu}-m)\psi & =0 \\
\bar{\psi}(i\overleftarrow{\nabla}_{\mu}\gamma ^{\mu}+m) & =0
\end{align}$$

and the symplectic potential is

$$\begin{align}
\theta & =\int _{\Sigma}\mathrm{d}^{d-1}x\sqrt{ \sigma }\tau _{\mu} \frac{i}{2}\left(\bar{\psi}\gamma ^{\mu}\delta \psi-\delta \bar{\psi}\gamma ^{\mu}\psi\right)
\end{align}$$

where $\displaystyle{\tau _{\mu}}$ is the unit future-directed normal to $\displaystyle{\Sigma}$ and $\displaystyle{\sigma}$ is the determinant of the induced metric on $\displaystyle{\Sigma}$.

the pre-phase space is the space of solutions of the eoms that satisfy some asymptotic behavior on the spatial boundary $\displaystyle{\Gamma}$. since the Dirac field is Grassmann odd, this phase space is naturally graded. the symplectic form is

$$\begin{align}
\omega & =i \int _{\Sigma}\mathrm{d}^{d-1}x\sqrt{ \sigma }\tau _{\mu}\delta \bar{\psi}\gamma ^{\mu}\wedge \delta \psi
\end{align}$$

## quantization

for an onshell configuration $\displaystyle{(\psi _{1},\bar{\psi}_{1})}$, we can define a vector of the configuration space as

$$\begin{align}
X_{\psi_{1}} & =\int _{M}\mathrm{d}^{d}x\sqrt{ -g }  \psi _{1} \frac{\delta}{\delta \psi}
\end{align}$$

and its conjugation

$$\begin{align}
X_{\bar{\psi}_{1}}=\int _{M}\mathrm{d}^{d}x\sqrt{ -g } \overleftarrow{\frac{\delta}{\delta \bar{\psi}}}\bar{\psi}_{1}
\end{align}$$

the contraction of such vectors and the symplectic form induces an inner product

$$\begin{align}
\left(\psi _{1},\psi _{2}\right)_{\text{D}} & := iX_{\bar{\psi}_{2}}\cdot X_{\psi _{1}}\cdot \omega \\
 & =\int _{\Sigma}\mathrm{d}^{d-1}x\sqrt{ \sigma }\tau _{\mu}\bar{\psi}_{2}\gamma ^{\mu}\psi _{1}
\end{align}$$

choose a complete set of positive-frequency solutions $\displaystyle{u_{N}(x)}$ and negative-frequency solutions $\displaystyle{v_{N}(x)}$ of the eom, normalized by the above inner product as

$$\begin{align}
(u_{M},u_{N})_{\text{D}} & =\delta _{MN}, &  (v_{M},v_{N})_{\text{D}} & =\delta _{MN}, & (u_{M},v_{N})_{\text{D}}=0
\end{align}$$

then we can expand the field as

$$\begin{align}
\psi(x)|_{\widetilde{\mathcal{P}}} & =\sum _{N}(u_{N}(x)b_{N}+v_{N}(x)d_{N}^{*}) \\
\bar{\psi}(x)|_{\widetilde{\mathcal{P}}} & =\sum _{N}(\bar{u}_{N}(x)b_{N}^{*}+\bar{v}_{N}(x)d_{N})
\end{align}$$

where $\displaystyle{b_{N}}$ and $\displaystyle{d_{N}}$ are Grassmann-odd mode coefficients. substituting this expansion into the symplectic form, we have

$$\begin{align}
\omega & =i\sum _{N}\delta b_{N}^{*}\wedge \delta b_{N}+\delta d_{N}^{*}\wedge \delta d_{N}
\end{align}$$

which gives the Poisson brackets between the mode coefficients

$$\begin{align}
\left\{b_{M},b_{N}^{*}\right\}_{\text{P}} & =-i\delta _{MN}, & \left\{d_{M},d_{N}^{*}\right\}_{\text{P}} & =-i\delta _{MN}
\end{align}$$

upon quantization, one promotes the mode coefficients to operators, and promotes the Poisson brackets to canonical (anti)commutators

$$\begin{align}
\left\{b_{M},b^{\dagger}_{N}\right\} & =\delta _{MN}, & \left\{d_{M},d_{N}^{\dagger}\right\} & =\delta _{MN}
\end{align}$$

the vacuum state $\displaystyle{\ket{0}}$ is defined as

$$\begin{align}
b_{N}\ket{0}  & =d_{N}\ket{0}=0,  & \forall N
\end{align}$$

excited states are obtained by acting with the creation operators $\displaystyle{b_{N}^{\dagger}}$ and $\displaystyle{d_{N}^{\dagger}}$.

## Noether charges

The action is diffeomorphism invariant. For spinors, the infinitesimal action of a vector field $\xi$ is given by the Kosmann derivative. we therefore define the corresponding vector field on configuration space by

$$\begin{align}
X_{\xi} & =\int \mathrm{d}^{d}x\sqrt{ -g }\left(\mathcal{L}_{\xi}\psi  \frac{\delta}{\delta \psi}+\overleftarrow{\frac{\delta}{\delta \bar{\psi}}}\mathcal{L}_{\xi}\bar{\psi}\right)
\end{align}$$

where

$$\begin{align}
\mathcal{L}_{\xi}\psi & =\xi ^{\mu}\nabla _{\mu}\psi+\frac{1}{4}\nabla _{\mu}\xi _{\nu}\gamma ^{\mu \nu}\psi, \\
\mathcal{L}_{\xi}\bar{\psi} & =\xi ^{\mu}\nabla _{\mu}\bar{\psi}-\frac{1}{4}\nabla _{\mu}\xi _{\nu}\bar{\psi}\gamma ^{\mu \nu}.
\end{align}$$

these transformations induce the ordinary tensorial Lie derivative on spinor bilinears. In particular,

$$\begin{align}
\mathcal{L}_{\xi}(\bar{\psi}\psi) & =\xi ^{\mu}\nabla _{\mu}(\bar{\psi}\psi) \\
\mathcal{L}_{\xi}(\bar{\psi}\gamma ^{\mu}\psi) & =\xi ^{\nu}\nabla _{\nu}(\bar{\psi}\gamma ^{\mu}\psi)-(\bar{\psi}\gamma ^{\nu}\psi)\nabla _{\nu}\xi ^{\mu}.
\end{align}$$

acting with $X_{\xi}$ on the action gives

$$\begin{align}
X_{\xi}\cdot \delta S & = \alpha _{\xi}|_{\Sigma _{f}-\Sigma _{i}} \\
\alpha _{\xi} & =\int _{\Sigma}\mathrm{d}^{d-1}x\sqrt{ \sigma }\tau _{\mu}\xi ^{\mu}\mathcal{L}
\end{align}$$

where

$$\begin{align}
\mathcal{L} & =\frac{i}{2}\bar{\psi}\gamma ^{\rho}\nabla _{\rho}\psi-\frac{i}{2}\bar{\psi}\gamma ^{\rho}\overleftarrow{\nabla}_{\rho}\psi-m\bar{\psi}\psi
\end{align}$$

the corresponding Noether charge is therefore

$$\begin{align}
H_{\xi} & =X_{\xi}\cdot \theta-\alpha _{\xi} \\
 & =\int _{\Sigma}\mathrm{d}^{d-1}x\sqrt{ \sigma }\tau _{\mu}\xi _{\nu}T^{\mu \nu} \\
T^{\mu \nu} & =\frac{i}{4}\bar{\psi}\gamma ^{(\mu}\overleftrightarrow{\nabla}{}^{\nu)}\psi
\end{align}$$
