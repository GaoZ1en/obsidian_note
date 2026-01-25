*basic notations*. metric

$$\begin{align}
\mathrm{d}s^{2} & =g_{\mu \nu}\mathrm{d}x^{\mu}\mathrm{d}x^{\nu}
\end{align}$$

Christoffel symbols

$$\begin{align}
\Gamma ^{\rho}_{~\mu \nu} & =\frac{1}{2}g^{\rho \sigma}\left(\partial _{\mu}g_{\sigma \nu}+\partial _{\nu}g_{\mu \sigma}-\partial _{\sigma}g_{\mu \nu}\right)
\end{align}$$

a simple method to calculate the Christoffel symbols:

$$\begin{align}
\Gamma ^{\rho}_{\mu \nu}\mathrm{d}x^{\mu}\mathrm{d}x^{\nu} & =g^{\rho \sigma}\mathrm{d}g_{\sigma \nu}\mathrm{d}x^{\nu}-\frac{1}{2}g^{\rho \sigma}\partial _{\sigma}\mathrm{d}s^{2}
\end{align}$$

the covariant derivative is defined as

$$\begin{align}
\nabla _{\mu}V^{\nu} & =\partial _{\mu}V^{\nu}+\Gamma ^{\nu}_{~\mu \rho}V^{\rho} \\
\nabla _{\mu}V_{\nu} & =\partial _{\mu}V_{\nu}-\Gamma ^{\rho}_{~\mu \nu}V_{\rho}
\end{align}$$

curvature tensor

$$\begin{align}
R^{\rho}_{~\sigma \mu \nu} & =\partial _{\mu}\Gamma ^{\rho}_{~\sigma \nu}-\partial _{\nu}\Gamma ^{\rho}_{~\mu \sigma}+\Gamma ^{\rho}_{~\mu \lambda}\Gamma ^{\lambda}_{~\sigma \nu}-\Gamma ^{\rho}_{~\lambda \nu}\Gamma ^{\lambda}_{~\mu \sigma}
\end{align}$$

and we have

$$\begin{align}
[\nabla _{\mu},\nabla _{\nu}]V^{\rho} & =R^{\rho}_{~\sigma \mu \nu}V^{\sigma} \\
{}[\nabla _{\mu},\nabla _{\nu}]V_{\rho} & =-R^{\sigma}_{~\rho \mu \nu}V_{\sigma}
\end{align}$$

the curvature tensor satisfies the following Bianchi identities

$$\begin{align}
R^{\rho}_{~\sigma \mu \nu}+R^{\rho}_{~\mu \nu \sigma}+R^{\rho}_{~\nu \sigma \mu} & =0 \\
\nabla _{\lambda}R^{\rho}_{~\sigma \mu \nu}+\nabla _{\mu}R^{\rho}_{~\sigma \nu \lambda}+\nabla _{\nu}R^{\rho}_{~\sigma \lambda \mu} & =0\iff \nabla _{\mu}\left( R^{\mu \nu}-\frac{1}{2}Rg^{\mu \nu} \right)=0
\end{align}$$

moving frame method to calculate the curvature tensor

$$\begin{align}
\Gamma ^{\rho}_{~\mu} & = \Gamma ^{\rho}_{~\mu \nu}\mathrm{d}x^{\nu} \\
\frac{1}{2!}R^{\rho}_{~\sigma \mu \nu}\mathrm{d}x^{\mu}\wedge \mathrm{d}x^{\nu} & =\mathrm{d}\Gamma ^{\rho}_{~\sigma}+\Gamma ^{\rho}_{~\lambda}\wedge \Gamma ^{\lambda}_{~\sigma} \\
R^{\rho}_{~\sigma \mu \nu} & = \braket{ \mathrm{d}\Gamma ^{\rho}_{~\sigma}+\Gamma ^{\rho}_{~\lambda}\wedge \Gamma ^{\lambda}_{~\sigma},\partial _{\mu}\otimes \partial _{\nu} }
\end{align}$$

and use

$$\begin{align}
\braket{ \mathrm{d}x^{\mu}\wedge \mathrm{d}x^{\nu},\partial _{\rho}\otimes \partial _{\sigma} }  & = \delta ^{\mu}_{\rho}\delta ^{\nu}_{\sigma}-\delta ^{\mu}_{\sigma}\delta ^{\nu}_{\rho} 
\end{align}$$

to get the final answer.

Ricci tensor and scalar

$$\begin{align}
R_{\mu \nu} & =R^{\lambda}_{~\mu \lambda \nu} \\
R & =g^{\mu \nu}R_{\mu \nu}
\end{align}$$

*hypersurface and extrinsic curvature*. suppose $\displaystyle{n^{\mu}}$ is the unit normal vector of a hypersurface, which satisfies

$$\begin{align}
g_{\mu \nu}n^{\mu}n^{\nu} & =\varepsilon
\end{align}$$

where $\displaystyle{\varepsilon=-1}$ for spacelike hypersurface and $\displaystyle{\varepsilon=1}$ for timelike hypersurface. the induced metric is defined as

$$\begin{align}
\gamma _{\mu \nu} & =g_{\mu \nu}-\varepsilon n_{\mu}n_{\nu}
\end{align}$$

and the induced covariant derivative is defined as

$$\begin{align}
D_{\mu}V_{\nu} & =\gamma ^{\rho}_{\mu}\gamma ^{\sigma}_{\nu}\nabla _{\rho}V_{\sigma}
\end{align}$$

the extrinsic curvature (second fundamental form) is defined as

$$\begin{align}
K_{\mu \nu} & =\gamma ^{\rho}_{\mu}\gamma ^{\sigma}_{\nu}\nabla _{\rho}n_{\sigma}
\end{align}$$

it is symmetric, i.e.,

$$\begin{align}
K_{\mu \nu}-K_{\nu \mu} & =\gamma ^{\rho}_{\mu}\gamma^{\sigma}_{\nu}\left(\nabla _{\rho}n_{\sigma}-\nabla _{\sigma}n_{\rho}\right) \\
 & =0
\end{align}$$

since $\displaystyle{n_{\mu}}$ is a normal to a hypersurface, by Frobenius theorem it is hypersurface orthogonal ($\displaystyle{n_{[\mu}\nabla _{\nu}n_{\rho]}=0}$).

for a **null hypersurface** with normal (and tangent) null vector $n^{\mu}$, the induced metric $\gamma_{\mu\nu}$ is degenerate. We introduce an auxiliary null vector $l^{\mu}$ such that $g_{\mu \nu}n^{\mu}l^{\nu}=-1$ to define the transverse metric:

$$\begin{align}
\gamma _{\mu \nu} & =g_{\mu \nu}+n_{\mu}l_{\nu}+l_{\mu}n_{\nu}
\end{align}$$

the extrinsic curvature is $K_{\mu \nu} = \gamma ^{\rho}_{\mu}\gamma ^{\sigma}_{\nu}\nabla _{\rho}n_{\sigma}$. For null surfaces, $K_{\mu\nu}$ is often related to the expansion and shear of the null generators.

*geodesic congruence and Raychaudhuri equation*

consider a congruence of geodesics with tangent vector field $\displaystyle{U^{\mu}}$ (normalized $\displaystyle{g_{\mu \nu}U^{\mu}U^{\nu}=-1}$ for timelike, and $\displaystyle{g_{\mu \nu}U^{\mu}U^{\nu}=0}$ for null). 

for timelike geodesic congruence, define the projection tensor $\displaystyle{h_{\mu \nu}=g_{\mu \nu}+U_{\mu}U_{\nu}}$ (it is actually the induced metric for the hypersurface orthogonal to $\displaystyle{U^{\mu}}$, if the congruence is hypersurface orthogonal). the tensor $\displaystyle{B_{\mu \nu}=\nabla _{\nu}U_{\mu}}$ can be decomposed as

$$\begin{align}
B_{\mu \nu} & =\frac{1}{3}\theta h_{\mu \nu}+\sigma _{\mu \nu}+\omega _{\mu \nu}
\end{align}$$

where the expansion $\displaystyle{\theta=\nabla _{\mu}U^{\mu}}$, the shear $\displaystyle{\sigma _{\mu \nu}=B_{(\mu \nu)}-\frac{1}{3}\theta h_{\mu \nu}}$, and the twist $\displaystyle{\omega _{\mu \nu}=B_{[\mu \nu]}}$. the Raychaudhuri equation for timelike congruence is given by

$$\begin{align}
\frac{\mathrm{d}\theta}{\mathrm{d}\tau} & = U^{\mu}\nabla _{\mu}\nabla _{\nu}U^{\nu} \\
  & =U^{\mu}\nabla _{\nu}\nabla _{\mu}U^{\nu}-R_{\mu \nu}U^{\mu}U^{\nu} \\
 & =U^{\mu}\nabla _{\nu}B^{\nu}_{~\mu}-R_{\mu \nu}U^{\mu}U^{\nu} \\
 & =B^{\nu}_{~\mu}B^{\mu}_{~\nu}-R_{\mu \nu}U^{\mu}U^{\nu} \\
 & =-\frac{1}{3}\theta ^{2}-\sigma _{\mu \nu}\sigma ^{\mu \nu}+\omega _{\mu \nu}\omega ^{\mu \nu}-R_{\mu \nu}U^{\mu}U^{\nu}
\end{align}$$

if the SEC holds, i.e., $\displaystyle{R_{\mu \nu}U^{\mu}U^{\nu}\geq 0}$, and the twist $\displaystyle{\omega =0}$ (hypersurface orthogonal congruence), then we have

$$\begin{align}
\frac{\mathrm{d}\theta}{\mathrm{d}\tau}  & \leqslant -\frac{1}{3}\theta ^{2}\implies \frac{\mathrm{d}}{\mathrm{d}\tau}\left(\frac{1}{\theta}\right)\geqslant \frac{1}{3}\implies \frac{1}{\theta (\tau)}\geqslant \frac{1}{\theta _{0}}+\frac{\tau}{3}
\end{align}$$

which shows that if $\displaystyle{\theta _{0}<0}$ at some initial proper time $\displaystyle{\tau =0}$, then $\displaystyle{\theta \to -\infty}$ within a proper time $\displaystyle{\tau \leqslant 3/|\theta _{0}|}$, indicating the formation of caustics/singularity (focusing theorem).

for null congruence with tangent vector $\displaystyle{k^{\mu}}$, we introduce a auxiliary $\displaystyle{l^{\mu}}$ which satisfies $\displaystyle{g_{\mu \nu}k^{\mu}l^{\nu}=-1}$ to define the transverse metric $\displaystyle{\gamma _{\mu \nu}=g_{\mu \nu}+k_{\mu}l_{\nu}+l_{\mu}k_{\nu}}$. the tensor $\displaystyle{\hat{B}_{\mu \nu}=\gamma ^{\rho}_{\mu}\gamma ^{\sigma}_{\nu}\nabla _{\sigma}k_{\rho}}$ can be decomposed as

$$\begin{align}
\hat{B}_{\mu \nu} & =\frac{1}{2}\theta \gamma _{\mu \nu}+\sigma _{\mu \nu}+\omega _{\mu \nu}
\end{align}$$

where the expansion $\displaystyle{\theta=\nabla _{\mu}k^{\mu}}$, the shear $\displaystyle{\sigma _{\mu \nu}=\hat{B}_{(\mu \nu)}-\frac{1}{2}\theta \gamma _{\mu \nu}}$, and the twist $\displaystyle{\omega _{\mu \nu}=\hat{B}_{[\mu \nu]}}$. the Raychaudhuri equation for null congruence is given by

$$\begin{align}
\frac{\mathrm{d}\theta}{\mathrm{d}\lambda} & =k^{\mu}\nabla _{\mu}\nabla _{\nu}k^{\nu} \\
 & =k^{\mu}\nabla _{\nu}\nabla _{\mu}k^{\nu}-R_{\mu \nu}k^{\mu}k^{\nu} \\
 & =k^{\mu}\nabla _{\nu}\hat{B}^{\nu}_{~\mu}-R_{\mu \nu}k^{\mu}k^{\nu} \\
 & =\hat{B}^{\nu}_{~\mu}\hat{B}^{\mu}_{~\nu}-R_{\mu \nu}k^{\mu}k^{\nu} \\
 & =-\frac{1}{2}\theta ^{2}-\sigma _{\mu \nu}\sigma ^{\mu \nu}+\omega _{\mu \nu}\omega ^{\mu \nu}-R_{\mu \nu}k^{\mu}k^{\nu}
\end{align}$$

which implies that if the NEC holds, i.e., $\displaystyle{R_{\mu \nu}k^{\mu}k^{\nu}\geqslant 0}$, and $\displaystyle{\omega=0}$, then

$$\begin{align}
\frac{\mathrm{d}\theta}{\mathrm{d}\lambda} & \leqslant -\frac{1}{2}\theta ^{2}\implies \frac{\mathrm{d}}{\mathrm{d}\lambda}\left(\frac{1}{\theta}\right)\geqslant \frac{1}{2}\implies \frac{1}{\theta (\lambda)}\geqslant \frac{1}{\theta _{0}}+\frac{\lambda}{2}
\end{align}$$

which shows that if $\displaystyle{\theta _{0}<0}$ at some initial affine parameter $\displaystyle{\lambda =0}$, then $\displaystyle{\theta \to -\infty}$ within an affine parameter $\displaystyle{\lambda \leqslant 2/|\theta _{0}|}$, indicating the formation of caustics/singularity (focusing theorem).

*energy conditions*. in the former Raychaudhuri equations, we have used the strong energy condition (SEC) for timelike congruence and the null energy condition (NEC) for null congruence. here are some common energy conditions used in general relativity:

- **Null Energy Condition (NEC)**: $T_{\mu \nu} k^{\mu} k^{\nu} \geq 0$ for all null vectors $k^{\mu}$.
- **Weak Energy Condition (WEC)**: $T_{\mu \nu} V^{\mu} V^{\nu} \geq 0$ for all timelike vectors $V^{\mu}$.
- **Strong Energy Condition (SEC)**: $\left(T_{\mu \nu} - \frac{1}{2} T g_{\mu \nu}\right) V^{\mu} V^{\nu} \geq 0$ for all timelike vectors $V^{\mu}$.
- **Dominant Energy Condition (DEC)**: $T_{\mu \nu} V^{\mu} V^{\nu} \geq 0$ and $T^{\mu}_{~\nu} V^{\nu}$ is a non-spacelike vector for all timelike vectors $V^{\mu}$

*ADM formalism*

suppose the spacetime is foliated by a set of spacelike hypersurfaces, which is given by

$$\begin{align}
x^{\mu} & =X^{\mu}(x^{a},t)
\end{align}$$

the vector connecting the points of two hypersurfaces is given by $\displaystyle{\partial _{t}}$

$$\begin{align}
\frac{\partial}{\partial t} & =\frac{\mathrm{d}X^{\mu}}{\mathrm{d}t} \frac{\partial}{\partial x^{\mu}}=\tau ^{\mu}\frac{\partial}{\partial x^{\mu}}
\end{align}$$

where the vector $\displaystyle{\tau ^{\mu}}$ can be decomposed into its projection on the hypersurface and its normal

$$\begin{align}
\tau ^{\mu} & =Nn^{\mu}+N^{a}e^{\mu}_{a}
\end{align}$$

where $\displaystyle{e^{\mu}_{a}=\partial _{a}X^{\mu}}$ is the tangent vectors to the hypersurface, and $\displaystyle{n^{\mu}}$ is the unit normal vector that satisfies

$$\begin{align}
g_{\mu \nu}e^{\mu}_{a}n^{\nu} & =0, g_{\mu \nu}n^{\mu}n^{\nu}=-1
\end{align}$$

thus we have $\displaystyle{\tau _{\mu}=-Nn_{\mu}+N_{a}e^{a}_{\mu}}$. then in the basis $\displaystyle{\{\tau ^{\mu},e^{\mu}_{a}\}}$ we have

$$\begin{align}
g_{00} & =g_{\mu \nu}\tau ^{\mu}\tau ^{\nu} \\
 & =-N^{2}+\sigma _{ab}N^{a}N^{b} \\
g_{0a} & =g_{\mu \nu}\tau ^{\mu}e^{\nu}_{a} \\
 & =\sigma _{ab}N^{b}=N_{a} \\
g_{ab} & =g_{\mu \nu}e^{\mu}_{a}e^{\nu}_{b} \\
 & := \sigma _{ab}
\end{align}$$

and

$$\begin{align}
\mathrm{d}s^{2} & =-N^{2}\mathrm{d}t^{2}+\sigma _{ab}(\mathrm{d}x^{a}+N^{a}\mathrm{d}t)(\mathrm{d}x^{b}+N^{b}\mathrm{d}t) \\
g_{\mu \nu} & =(-N^{2}+\sigma _{ab}N^{a}N^{b})n_{\mu}n_{\nu}+\sigma _{ab}N^{a}(n_{\mu}e^{b}_{\nu}+n_{\nu}e^{b}_{\mu})+\sigma _{ab}e^{a}_{\mu}e^{b}_{\nu} \\
\implies g^{\mu \nu} & =-\frac{1}{N}n^{\mu}n^{\nu}+\frac{N^{a}}{N^{2}}(n^{\mu}e^{\nu}_{a}+n^{\nu}e^{\mu}_{a})+\left( \sigma ^{ab}-\frac{N^{a}N^{b}}{N^{2}} \right)e^{\mu}_{a}e^{\nu}_{b} \\
\sqrt{ -g } & =N\sqrt{ \sigma }
\end{align}$$

the curvature scalar can be decomposed as

$$\begin{align}
R & =\tilde{R}-K_{ab}K^{ab}+K^{2}-2R_{\mu \nu}n^{\mu}n^{\nu} \\
 & =\tilde{R}-K_{ab}K^{ab}+K^{2}-2(K^{2}-K_{ab}K^{ab})+(\text{boundary terms}) \\
 & =\tilde{R}+K_{ab}K^{ab}-K^{2}+(\text{boundary terms})
\end{align}$$

we get the ADM action

$$\begin{align}
S & =\int _{M}\mathrm{d}^{d}x\sqrt{ -g }R \\
 & =\int _{M}\mathrm{d}t\mathrm{d}^{d-1}xN\sqrt{ \sigma }(\tilde{R}+K_{ab}K^{ab}-K^{2})
\end{align}$$

we choose the dynamical variables as $\displaystyle{N,N_{a},\sigma _{ab}}$, the corresponding conjugate momenta are

$$\begin{align}
\pi _{N} =\frac{\delta S}{\delta \dot{N}} & =0 \\
\pi _{N^{a}}=\frac{\delta S}{\delta \dot{N}^{a}} & =0 \\
\pi ^{ab}:=\pi _{\sigma _{ab}} =\frac{\delta S}{\delta \dot{\sigma}_{ab}} & =2N\sqrt{ \sigma }\left(K^{cd} \frac{\delta K_{cd}}{\delta \dot{\sigma}_{ab}}-K\frac{\delta K}{\delta \dot{\sigma}_{ab}}\right) \\
 & =2N\sqrt{ \sigma }\left(K^{cd} \frac{1}{2N}\delta ^{(a}_{c}\delta ^{b)}_{d}-K\sigma ^{cd} \frac{1}{2N}\delta ^{(a}_{c}\delta ^{b)}_{d}\right) \\
 & =\sqrt{ \sigma }\left(K^{ab}-K\sigma ^{ab}\right)
\end{align}$$

here we use

$$\begin{align}
\dot{\sigma}_{ab} & =2NK_{ab}+D_{a}N_{b}+D_{b}N_{a} \\
\implies \frac{\delta K_{cd}}{\delta \dot{\sigma}_{ab}} & =\frac{1}{2N}\delta ^{(a}_{c}\delta ^{b)}_{d}
\end{align}$$

thus $\displaystyle{N}$ and $\displaystyle{N^{a}}$ are Lagrange multipliers. then we have

$$\begin{align}
\pi:= \sigma ^{ab}\pi _{ab} & =\sqrt{ \sigma }(K-(d-1)K)=(2-d)\sqrt{ \sigma }K \\
\implies K & = \frac{1}{2-d} \frac{\pi}{\sqrt{ \sigma }} \\
\implies K_{ab} & = \frac{1}{\sqrt{ \sigma }}\left( \pi _{ab}-\frac{1}{d-2}\pi \sigma _{ab} \right) \\
\implies \dot{\sigma}_{ab} & = \frac{2N}{\sqrt{ \sigma }}\left( \pi _{ab}-\frac{1}{d-2}\pi \sigma _{ab} \right)+D_{a}N_{b}+D_{b}N_{a}
\end{align}$$

thus the Hamiltonian is given by

$$\begin{align}
\mathcal{H} & =\pi ^{ab}\dot{\sigma}_{ab}-\mathcal{L} \\
 & =\frac{2N}{\sqrt{ \sigma }}\pi ^{ab}\left(\pi _{ab}-\frac{1}{d-2}\pi \sigma _{ab}\right)+2\pi ^{ab}D_{a}N_{b}-N\sqrt{ \sigma }\left( \tilde{R}+\frac{1}{\sigma}\left(\pi _{ab}\pi ^{ab}+\frac{1}{2-d}\pi ^{2}\right) \right) \\
 & =N\sqrt{ \sigma }\left(-\tilde{R}+\frac{1}{\sigma}\left( \pi _{ab}\pi ^{ab}+\frac{1}{2-d}\pi ^{2} \right)\right)+2\pi ^{ab}D_{a}N_{b} \\
H & =\int _{\Sigma}\mathrm{d}^{d-1}x\mathcal{H} \\
 & =\int _{\Sigma}\mathrm{d}^{d-1}x\sqrt{ \sigma }\left(NC+N_{b}C^{b}\right)
\end{align}$$

where $\displaystyle{C=-\tilde{R}+\frac{1}{\sqrt{ \sigma }}\left(\pi _{ab}\pi ^{ab}+\frac{1}{2-d}\pi ^{2}\right),C^{b}=-2D_{a}\left(\frac{1}{\sqrt{ \sigma }}\pi ^{ab}\right)}$. the Hamiltonian and momentum constraints are given by

$$\begin{align}
C & =0 \\
C^{b} & =0
\end{align}$$

and the secondary constraints are given by Poisson brackets between $\displaystyle{\pi _{N},\pi _{N^{a}}}$ and the Hamiltonian $H$, that vanishes onshell

$$\begin{align}
\left\{\pi _{N},H\right\}\propto \frac{\delta H}{\delta N}=\sqrt{ \sigma }C & =0 \\
\left\{\pi _{N^{a}},H\right\}\propto \frac{\delta H}{\delta N^{a}}=\sqrt{ \sigma }C^{a} & =0
\end{align}$$

which are in fact the same as the Hamiltonian and momentum constraints.

*linearized gravity*

consider a small perturbation $h_{\mu\nu}$ around a background metric $g_{\mu\nu}^{(0)}$ (for simplicity, we omit the superscript (0) in the following discussion). we have

$$\begin{align}
R_{\mu \nu} & =R^{(0)}_{\mu \nu}+\frac{1}{2}(h_{\nu}^{~\alpha}R_{\mu \alpha}^{(0)}+h_{\mu}^{~\alpha}R^{(0)}_{\nu \alpha}-2h^{\alpha \beta}R^{(0)}_{\mu \alpha \nu \beta}-\nabla^{(0)}_{\alpha}\nabla^{(0)\alpha}h_{\mu \nu}+\nabla_{\mu}^{(0)}\nabla^{(0)}_{\alpha}h_{\nu}^{~\alpha}+\nabla^{(0)}_{\nu}\nabla^{(0)}_{\alpha}h_{\mu}^{~\alpha}-\nabla_{\nu}^{(0)}\nabla_{\mu}^{(0)}h) \\
 & +\frac{1}{4}(-2h^{\beta \gamma}h_{\nu}^{~\alpha}R_{\mu \beta \alpha \gamma}^{(0)}+4h_{\alpha}^{~\gamma}h^{\alpha \beta}R^{(0)}_{\mu \beta \nu \gamma}-2h^{\beta \gamma}h_{\mu}^{~\alpha}R^{(0)}_{\nu \beta \alpha \gamma}-\nabla^{(0)}_{\alpha}h\nabla^{(0)\alpha}h_{\mu \nu}+2\nabla^{(0)\alpha}h_{\mu \nu}\nabla^{(0)}_{\beta}h_{\alpha}^{~\beta}+2h^{\alpha \beta}\nabla^{(0)}_{\beta}\nabla^{(0)}_{\alpha}h_{\mu \nu} \\
 & -2\nabla^{(0)}_{\alpha}h_{\nu \beta}\nabla^{(0)\beta}h_{\mu}^{~\alpha}+2\nabla^{(0)}_{\beta}h_{\nu \alpha}\nabla^{(0)\beta}h_{\mu}^{~\alpha}+\nabla^{(0)}_{\alpha}h\nabla^{(0)}_{\mu}h_{\nu}^{~\alpha}-2\nabla^{(0)}_{\beta}h_{\alpha}^{~\beta}\nabla^{(0)}_{\mu}h_{\nu}^{~\alpha}-2h^{\alpha \beta}\nabla^{(0)}_{\mu}\nabla^{(0)}_{\beta}h_{\nu \alpha}+\nabla^{(0)}_{\mu}h^{\alpha \beta}\nabla^{(0)}_{\nu}h_{\alpha \beta} \\
 & +\nabla^{(0)}_{\alpha}h\nabla^{(0)}_{\nu}h_{\mu}^{\alpha}-2\nabla^{(0)}_{\beta}h_{\alpha}^{\beta}\nabla^{(0)}_{\nu}h_{\mu}^{~\alpha}-2h^{\alpha \beta}\nabla^{(0)}_{\nu}\nabla^{(0)}_{\beta}h_{\mu \alpha}+2h^{\alpha \beta}\nabla^{(0)}_{\nu}\nabla^{(0)}_{\mu}h_{\mu \nu})+\mathcal{O}(h^{3})
\end{align}$$



and the linearized eom is given by



*Linearized Gravity in $d$-dimensional Background with $\Lambda$*

Assume the background $g_{\mu\nu}^{(0)}$ satisfies $G_{\mu\nu}^{(0)} + \Lambda g_{\mu\nu}^{(0)} = 0$.
*   **Background Curvature**: 
    $$\begin{align}
    R^{(0)} = \frac{2d}{d-2} \Lambda, \quad R_{\mu\nu}^{(0)} = \frac{2}{d-2} \Lambda g_{\mu\nu}^{(0)}
    \end{align}$$

**1. Second-Order Action**:
Expanded to $O(h^2)$ around an Einstein manifold background (indices raised/lowered by $g^{(0)}$):
$$\begin{align}
\mathcal{L}^{(2)} = \frac{\sqrt{-g^{(0)}}}{16\pi G} & \left[ -\frac{1}{2} \nabla_\rho h_{\mu\nu} \nabla^\rho h^{\mu\nu} + \nabla_\mu h^{\mu\nu} \nabla_\nu h - \nabla_\mu h^{\mu\nu} \nabla_\rho h^\rho_{~\nu} \right. \\
& \left. + \frac{1}{2} \nabla_\mu h \nabla^\mu h + R^{(0)}_{\mu\rho\nu\sigma} h^{\mu\nu} h^{\rho\sigma} + \frac{2}{d-2}\Lambda \left( h_{\mu\nu} h^{\mu\nu} - \frac{1}{2} h^2 \right) + \Lambda \left( \frac{1}{2} h_{\mu\nu} h^{\mu\nu} - \frac{1}{4} h^2 \right) \right]
\end{align}$$
*(The last terms combine the linearized Ricci/Scalar contribution and the cosmological constant volume expansion).*

**2. Wave Equation in Generalized Lorenz Gauge**:
In the generalized Lorenz gauge $\nabla^\mu \bar{h}_{\mu\nu} = 0$:
$$\begin{align}
\nabla_\rho \nabla^\rho \bar{h}_{\mu\nu} + 2 R^{(0)}_{\mu\rho\nu\sigma} \bar{h}^{\rho\sigma} - \frac{4}{d-2} \Lambda \bar{h}_{\mu\nu} = 0
\end{align}$$
*   **Dimensional scaling**: For $d=4$, the mass-like term is $-2\Lambda \bar{h}_{\mu\nu}$. For $d=3$, it becomes $-4\Lambda \bar{h}_{\mu\nu}$.

---

## 5. Important Solutions
### Schwarzschild (Static, Spherically Symmetric, Vacuum)
$$ ds^2 = -\left(1 - \frac{2GM}{r}\right)dt^2 + \left(1 - \frac{2GM}{r}\right)^{-1}dr^2 + r^2 d\Omega^2 $$
*   **Event Horizon**: $r_s = 2GM$.
*   **Geodesics**:
    *   Conserved quantities: $E = -(1-2M/r)\dot{t}$, $L = r^2 \sin^2\theta \dot{\phi}$.
    *   Equation: $\epsilon = - E^2 + \dot{r}^2 + V_{eff}(r)$.

### FLRW (Cosmology)
$$ ds^2 = -dt^2 + a^2(t) \left[ \frac{dr^2}{1-kr^2} + r^2 d\Omega^2 \right] $$
*   $k = +1, 0, -1$ (Closed, Flat, Open).
*   **Friedmann Equations**:
    1.  $(\frac{\dot{a}}{a})^2 = \frac{8\pi G}{3}\rho - \frac{k}{a^2} + \frac{\Lambda}{3}$.
    2.  $\frac{\ddot{a}}{a} = -\frac{4\pi G}{3}(\rho + 3p) + \frac{\Lambda}{3}$.

## 7. Black Hole Thermodynamics
*   **Surface Gravity $\kappa$**: $T_H = \frac{\kappa}{2\pi}$. For Schwarzschild: $\kappa = \frac{1}{4GM}$.
*   **Area Law**: $dS \ge 0$. Entropy $S_{BH} = \frac{A}{4G}$.
