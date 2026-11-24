# Ordinary AdS3

## Setup

Consider the following regulated action

$$\begin{align}
S_{R} & =\dfrac{1}{16\pi G}\int _{M_{R}}\mathrm{d}^{3}x\sqrt{ -g }\left(R+2\right)+\dfrac{1}{32\pi G\mu}\int _{M_{R}}\mathrm{d}^{3}x\sqrt{ -g }R ^{\lambda \mu \nu}\left(\Gamma ^{\rho}_{~\lambda \sigma}\partial _{\mu}\Gamma ^{\sigma}_{~\nu \rho}+\dfrac{2}{3}\Gamma ^{\rho}_{~\lambda \sigma}\Gamma ^{\sigma}_{~\mu \kappa}\Gamma ^{\kappa}_{~\nu \rho}\right) \\
 & +\dfrac{1}{8\pi G}\int _{\Gamma _{R}}\mathrm{d}^{2}x\sqrt{ -\gamma }\left( K^{\Gamma}-1\right)-\dfrac{1}{8\pi G}\int _{\Sigma _{f,R}-\Sigma _{i,R}}\mathrm{d}^{2}x\sqrt{ \sigma }K^{\Sigma}-\dfrac{1}{32\pi G\mu}\int _{\Gamma _{R}}R\gamma _{ac} \tilde{\Gamma}^{c}_{~bd}\gamma ^{de}g_{re}\mathrm{d}x^{a}\wedge \mathrm{d}x^{b} \\
 & +\dfrac{1}{8\pi G}\int _{\partial \Sigma _{f,R}-\partial \Sigma _{i,R}}\mathrm{d}x\sqrt{ h }\eta+\dfrac{3\log R}{32\pi G\mu}\int _{\partial \Sigma _{f,R}-\partial \Sigma _{i,R}}\mathrm{d}\varphi Rg_{r\varphi}
\end{align}$$

we take the same spacetime setup as [[Articles/Noether charge/Einstein-Scalar|Einstein-Scalar]]. The asymptotic boundary condition are chosen to be

$$\begin{align}
g_{rr} & =\dfrac{1}{r^{2}}+\mathcal{O}(r^{-4}), & g_{ra} & =\mathcal{O}(r^{-1}), & g_{ab} & =r^{2}g^{(0)}_{ab}+\mathcal{O}(r^{0}), & a & \in(t,\varphi)
\end{align}$$

allowed variations satisfy

$$\begin{align}
\delta g_{rr} & =\mathcal{O}(r^{-4}), & \delta g_{ra} & =\mathcal{O}(r^{-1}), & \delta g_{ab} & =\mathcal{O}(r^{0}), & \delta g^{(0)}_{ab} & =0
\end{align}$$

with the asymptotic boundary conditions specified above, the off-shell action is finite and the variational principle is well defined.

## CPS Analysis

Taking a variation of the action, we obtain

$$\begin{align}
\delta S_{R} & =\int _{M_{R}}\mathrm{d}^{3}x\sqrt{ -g }E^{\mu \nu}\delta g_{\mu \nu}+\theta|_{\Sigma _{f,R}}-\theta|_{\Sigma _{i,R}}
\end{align}$$

where

$$\begin{align}
E^{\mu \nu} & =-\dfrac{1}{16\pi G}\left( G^{\mu \nu}-g^{\mu \nu}+\dfrac{1}{\mu}C^{\mu \nu} \right) \\
\theta|_{\Sigma _{R}} & =\dfrac{1}{16\pi G}\int _{\Sigma _{R}}\mathrm{d}^{2}x\sqrt{ \sigma }(K^{\Sigma ij}-K^{\Sigma}\sigma ^{ij})\delta \sigma _{ij}+\dfrac{1}{8\pi G}\int _{\partial \Sigma _{R}}\mathrm{d}\varphi \eta \delta \sqrt{ h } \\
 & +\dfrac{1}{32\pi G\mu}\int _{\Sigma _{R}}\mathrm{d}^{2}x\sqrt{ \sigma }R ^{ij}_{\Sigma}(2g^{\rho \sigma}R_{i\rho}\delta g_{j\sigma}-\Gamma ^{\rho}_{~i\lambda}\delta \Gamma ^{\lambda}_{~j\rho}) \\
 & +\dfrac{3R\log R}{32\pi G\mu}\int _{\partial \Sigma _{R}}\mathrm{d}\varphi \delta g_{r\varphi}+\dfrac{R}{32\pi G\mu}\int _{\partial \Sigma _{R}}\mathrm{d}\varphi \delta g_{r\varphi}
\end{align}$$

from the bulk terms, we read off the bulk eoms

$$\begin{align}
G^{\mu \nu}-g^{\mu \nu}+\dfrac{1}{\mu}C^{\mu \nu} & =0
\end{align}$$

the pre-phase space $\displaystyle{\tilde{\mathcal{P}}}$ is defined as the set of smooth field configurations satisfying the asymptotic conditions and the bulk eoms. The presymplectic form is obtained by taking another variation of the presymplectic potential $\displaystyle{\theta}$, and restricting to the pre-phase space

$$\begin{align}
\Omega|_{\Sigma _{R}} & =\delta \theta|_{\Sigma _{R},\mathcal{\tilde{P}}}
\end{align}$$

## Asymptotic Symmetries

As in [[Articles/Noether charge/Einstein-Scalar|Einstein-Scalar]], act with $\displaystyle{X_{\xi}}$ on the action, we obtain

$$\begin{align}
\delta _{\xi}S & =\alpha _{\xi}|_{\Sigma _{f}}-\alpha _{\xi}|_{\Sigma _{i}}+\beta _{\xi}|_{\Gamma}
\end{align}$$

where

$$\begin{align}
\alpha _{\xi}|_{\Sigma} & =\alpha _{\xi}^{\mathrm{EH}}|_{\Sigma}+\alpha _{\xi}^{\mathrm{CS}}|_{\Sigma} \\
\alpha _{\xi}^{\mathrm{EH}}|_{\Sigma _{R}} & =-\int _{\Sigma _{R}}\mathrm{d}^{2}x\sqrt{ \sigma }\tau _{\mu}\xi ^{\mu}\mathcal{L}^{\mathrm{EH}}-\int _{\partial \Sigma _{R}}\mathrm{d}x\sqrt{ h }\tau ^{(1)}_{a}\mu _{\xi}^{a}+X_{\xi}\cdot \delta B_{\Sigma,R} \\
\mu ^{a}_{\xi} & =\dfrac{1}{8\pi G}((K^{\Gamma}-1)\xi _{\parallel}^{a}-D^{a}(n_{\mu}\xi ^{\mu})) \\
B_{\Sigma,R} & =-\dfrac{1}{8\pi G}\int _{\Sigma _{R}}\mathrm{d}^{2}x\sqrt{ \sigma }K^{\Sigma}+\dfrac{1}{8\pi G}\int _{\partial \Sigma _{R}}\mathrm{d}x\sqrt{ h }\eta \\
\alpha _{\xi}^{\mathrm{CS}}|_{\Sigma} & = \dfrac{1}{32\pi G\mu}\int _{\Sigma _{R}}\mathrm{d}r\mathrm{d}\varphi\left(\xi ^{t}\mathcal{L}^{\mathrm{CS}}+\partial _{\rho}\xi ^{\sigma}(\partial _{r}\Gamma ^{\rho}_{~\varphi \sigma}-\partial _{\varphi}\Gamma ^{\rho}_{~r\sigma})\right)+\dfrac{3R\log R}{32\pi G\mu}\int _{\partial \Sigma _{R}}\mathrm{d}\varphi \mathcal{L}_{\xi}g_{r\varphi}-\int _{\partial \Sigma _{R}}\mathrm{d}\varphi\mu ^{\mathrm{CS}}_{\xi,\varphi} \\
32\pi G\mu\mu ^{\mathrm{CS}}_{\xi,a} & =\xi ^{(0)b}(\partial _{c}\Gamma ^{(0)}{^{c}_{~ab}-\partial _{a}\Gamma ^{(0)}{}^{c}_{~cb}})+\dfrac{1}{2}D_{b}^{(0)}\xi ^{(0)b}(\Gamma ^{(0)}{}^{c}_{~ca}-g^{(0)}_{ac}g^{(0)ce}\Gamma ^{(0)}{}^{d}_{~ce}) \\
 & +\lim_{ r \to \infty } r\left[-g_{ra}D^{(0)}_{b}\xi ^{(0)b}+g^{(0)}_{ac}g^{(0)bd}g_{rd}\partial _{b}\xi ^{(0)c}+\xi ^{(0)b}g^{(0)cd}g_{rd}(\partial _{b}g^{(0)}_{ab}-\partial _{a}g^{(0)}_{bc})\right] \\
\beta _{\xi}|_{\Gamma} & =\beta _{\xi}^{\mathrm{EH}}|_{\Gamma _{R}}+\beta _{\xi}^{\mathrm{CS}}|_{\Gamma _{R}} \\
\beta ^{\mathrm{EH}}_{\xi}|_{\Gamma} & =\dfrac{1}{16\pi G}\int _{\Gamma _{R}}\mathrm{d}^{2}x\sqrt{ -\gamma }n_{\mu}\xi ^{\mu}(\tilde{R}^{\Gamma}+(K^{\Gamma}-2)^{2}-(K^{\Gamma}_{ab}-\gamma _{ab})(K^{\Gamma ab}-\gamma ^{ab})) \\
\beta _{\xi}^{\mathrm{CS}}|_{\Gamma} & =\dfrac{1}{64\pi G\mu}\int _{\Gamma _{r}}\left(-\xi ^{(0)d}(\partial _{c}\partial _{a}\Gamma ^{(0)}{}^{c}_{~bd}-\partial _{c}\partial _{b}\Gamma ^{(0)}{}^{c}_{~ad})\right. \\
 & \left.-\dfrac{1}{2}D^{(0)}_{d}\xi ^{(0)d}(\partial _{a}(\Gamma ^{(0)}{}^{c}_{~cb}-g^{(0)}_{be}g^{(0)cf}\Gamma ^{(0)}{}^{e}_{~cf})-\partial _{b}(\Gamma ^{(0)}{}^{c}_{~ca}-g^{(0)}_{ae}g^{(0)cf}\Gamma ^{(0)}{}^{e}_{~cf}))\right)\mathrm{d}x^{a}\wedge \mathrm{d}x^{b}
\end{align}$$

the boundary term $\displaystyle{\beta _{\xi}|_{\Gamma}}$ is independent from configurations, and therefore $\displaystyle{X_{\xi}}$ is indeed an symmetry. The corresponding Noether charge is then defined as

$$\begin{align}
H_{\xi}|_{\Sigma,\tilde{\mathcal{P}}} & =(X_{\xi}\cdot \theta-\alpha _{\xi})|_{\Sigma,\tilde{\mathcal{P}}} \\
 & =\lim_{ R \to \infty } \int _{\partial \Sigma _{R}}\mathrm{d}x\sqrt{ h }\tau ^{(1)a}\xi _{\parallel}^{b}\mathcal{T}_{ab} \\
 & +\dfrac{1}{32\pi G\mu}\int _{\partial \Sigma}\mathrm{d}\varphi\left(4\xi ^{(0)b}(\gamma _{\varphi b}-K^{\Gamma}_{\varphi b})+\Gamma ^{(0)}{}^{c}_{~\varphi b}D^{(0)}_{c}\xi ^{(0)b}\right. \\
 & \left.+\xi ^{(0)b}(\partial _{c}\Gamma ^{(0)}{}^{c}_{~\varphi b}-\partial _{\varphi}\Gamma ^{(0)}{}^{c}_{~cb})-\dfrac{1}{2}D^{(0)}_{b}\xi ^{(0)b}g^{(0)}_{\varphi d}g^{(0)ce}\Gamma ^{(0)}{}^{d}_{~ce}\right)
\end{align}$$

and the Poisson bracket between Noether charges

$$\begin{align}
\left\{H_{\xi},H_{\zeta}\right\}|_{\Sigma,\tilde{\mathcal{P}}} & =H_{[\xi,\zeta]}|_{\Sigma,\tilde{\mathcal{P}}}+K(\xi,\zeta) \\
K(\xi,\zeta) & =\oint _{\partial \Sigma}[\zeta ^{(0)}\cdot(\nu _{\xi}+\mathrm{d}b_{\xi})+j_{\xi}(D^{(0)}_{a}D^{(0)}_{b}\sigma _{\zeta})+b_{[\xi,\zeta]}] \\
\sigma _{\zeta} & =\dfrac{1}{2}D^{(0)}_{c}\zeta ^{(0)c}
\end{align}$$

# warped AdS3
