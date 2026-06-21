# basic notations

*metric*

$$\begin{align}
\mathrm{d}s^{2} & =g_{\mu \nu}\mathrm{d}x^{\mu}\mathrm{d}x^{\nu}
\end{align}$$

*Christoffel symbols*

$$\begin{align}
\Gamma ^{\rho}_{~\mu \nu} & =\frac{1}{2}g^{\rho \sigma}\left(\partial _{\mu}g_{\sigma \nu}+\partial _{\nu}g_{\mu \sigma}-\partial _{\sigma}g_{\mu \nu}\right)
\end{align}$$

A simple method to calculate the Christoffel symbols via the action/Lagrangian:

$$\begin{align}
\Gamma ^{\rho}_{\mu \nu}\mathrm{d}x^{\mu}\mathrm{d}x^{\nu} & =g^{\rho \sigma}\mathrm{d}g_{\sigma \nu}\mathrm{d}x^{\nu}-\frac{1}{2}g^{\rho \sigma}\partial _{\sigma}\mathrm{d}s^{2}
\end{align}$$

*covariant derivative*

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

*Ricci tensor, Ricci scalar*

$$\begin{align}
R_{\mu \nu} & =R^{\lambda}_{~\mu \lambda \nu} \\
R & =g^{\mu \nu}R_{\mu \nu}
\end{align}$$

in $\displaystyle{d}$ dimensions, the curvature tensor can be decomposes as

$$\begin{align}
R_{\mu \nu \rho \sigma} & =W_{\mu \nu \rho \sigma}+\frac{2}{d-2}(R_{\mu[\rho}R_{\sigma]\nu}-g_{\nu[\rho}R_{\sigma]\mu})-\frac{2}{(d-1)(d-2)}Rg_{\mu[\rho}g_{\sigma]\nu}
\end{align}$$

where the Weyl tensor $\displaystyle{W_{\mu \nu \rho \sigma}}$ is the totally trace-free part, which physical meaning is the tidal force and gravitational waves.

# hypersurface and extrinsic curvature

suppose $\displaystyle{n^{\mu}}$ is the unit normal vector of a hypersurface, which satisfies

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

# geodesic congruence and Raychaudhuri equation

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

## energy conditions

in the former Raychaudhuri equations, we have used the strong energy condition (SEC) for timelike congruence and the null energy condition (NEC) for null congruence. Here are some common energy conditions used in general relativity:

- **Null Energy Condition (NEC)**: $T_{\mu \nu} k^{\mu} k^{\nu} \geq 0$ for all null vectors $k^{\mu}$.
- **Weak Energy Condition (WEC)**: $T_{\mu \nu} V^{\mu} V^{\nu} \geq 0$ for all timelike vectors $V^{\mu}$.
- **Strong Energy Condition (SEC)**: $\left(T_{\mu \nu} - \frac{1}{2} T g_{\mu \nu}\right) V^{\mu} V^{\nu} \geq 0$ for all timelike vectors $V^{\mu}$.
- **Dominant Energy Condition (DEC)**: $T_{\mu \nu} V^{\mu} V^{\nu} \geq 0$ and $T^{\mu}_{~\nu} V^{\nu}$ is a non-spacelike vector for all timelike vectors $V^{\mu}$

# Electromagnetism

Maxwell's equations in curved spacetime:

$$\begin{align}
\nabla_\mu F^{\mu\nu} &= J^\nu \\
\nabla_{[\mu} F_{\nu\rho]} &= 0 \implies \partial_{[\mu} F_{\nu\rho]} = 0
\end{align}$$

where $F_{\mu\nu} = \partial_\mu A_\nu - \partial_\nu A_\mu$.
**Energy-Momentum Tensor**:

$$\begin{align}
T_{\mu\nu}^{EM} = \frac{1}{4\pi} \left( F_{\mu\alpha}F_\nu^{~\alpha} - \frac{1}{4}g_{\mu\nu}F_{\alpha\beta}F^{\alpha\beta} \right)
\end{align}$$

Trace $T = 0$ (conformally invariant).
**Observer Decomposition**: For an observer with 4-velocity $Z^\mu$:
-   Electric field $E^\mu = F^{\mu\nu}Z_\nu$.
-   Magnetic field $B^\mu = \frac{1}{2}\epsilon^{\mu\nu\rho\sigma}F_{\nu\rho}Z_\sigma$ (duality).
-   **DEC**: Electromagnetic field satisfies Dominant Energy Condition.

# Conserved Quantities

**Conserved Current**: If $\xi^\mu$ is a Killing vector ($\nabla_{(\mu}\xi_{\nu)}=0$), and $\nabla_\mu T^{\mu\nu}=0$, then $J^\mu = T^{\mu\nu}\xi_\nu$ is conserved:

$$\begin{align}
\nabla_\mu J^\mu = (\nabla_\mu T^{\mu\nu})\xi_\nu + T^{\mu\nu}(\nabla_\mu \xi_\nu) = 0
\end{align}$$

since $T^{\mu\nu}$ is symmetric and $\nabla_\mu \xi_\nu$ is antisymmetric.

**Komar Mass/Angular Momentum**:
For a stationary spacetime with timelike Killing vector $\xi^\mu_{(t)}$:

$$\begin{align}
M_K &= -\frac{1}{8\pi G} \int_{\partial \Sigma} \nabla^\alpha \xi^\beta_{(t)} \mathrm{d}S_{\alpha\beta}
\end{align}$$

For rotational Killing vector $\xi^\mu_{(\phi)}$:

$$\begin{align}
J_K &= \frac{1}{16\pi G} \int_{\partial \Sigma} \nabla^\alpha \xi^\beta_{(\phi)} \mathrm{d}S_{\alpha\beta}
\end{align}$$

# ADM formalism

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

consider a small perturbation $h_{\mu\nu}$ around a background metric $g_{\mu\nu}^{(0)}$ (for simplicity, we omit the superscript (0) in the following discussion). the linearized eom is given by

$$\begin{align}
0 = &-\frac{1}{2}\nabla ^{2}h_{\mu \nu}+\nabla _{(\mu}\nabla _{|\alpha|}h_{\nu)}^{~\alpha}-\frac{1}{2}\nabla _{\mu}\nabla _{\nu}h+\frac{1}{2}g_{\mu \nu}(\nabla ^{2}h - \nabla _{\alpha}\nabla _{\beta}h^{\alpha \beta}) \\
 & +\frac{2}{d-2}\Lambda h_{\mu \nu}+\frac{1}{d-2}\Lambda hg_{\mu \nu}-h^{\alpha \beta}R_{\mu \alpha \nu \beta}^{(0)}
\end{align}$$

after choosing the gauge

$$\begin{align}
\nabla _{\mu}h^{\mu \nu}-\frac{1}{2}\nabla ^{\nu}h=0 \\
\implies \nabla _{\mu}h^{\mu \nu}=0, h=0
\end{align}$$

the eom can be simplified as

$$\begin{align}
\nabla ^{2}h_{\mu \nu}+2h^{\rho \sigma}R_{\mu \rho \nu \sigma}-\frac{4}{d-2}\Lambda h_{\mu \nu} & =0
\end{align}$$

in 4D flat background, it reduces to the simple wave equation

$$\begin{align}
\partial^{2}h_{\mu \nu}=0
\end{align}$$

the solution is plane wave with two physical polarization states.

$$\begin{align}
\varepsilon _{\mu \nu}^{1} & =\begin{pmatrix}
0 & 0 & 0 & 0 \\
0 & 1 & 0 & 0 \\
0 & 0 & -1 & 0 \\
0 & 0 & 0 & 0
\end{pmatrix}, \varepsilon _{\mu \nu}^{2}=\begin{pmatrix}
0 & 0 & 0 & 0 \\
0 & 0 & 1 & 0 \\
0 & 1 & 0 & 0 \\
0 & 0 & 0 & 0
\end{pmatrix}
\end{align}$$

or in circular polarization basis

$$\begin{align}
\varepsilon _{\mu \nu}^{\pm} & =\frac{1}{\sqrt{2}}\left( \varepsilon _{\mu \nu}^{1}\pm i\varepsilon _{\mu \nu}^{2} \right)=\frac{1}{\sqrt{2}}\begin{pmatrix}
0 & 0 & 0 & 0 \\
0 & 1 & \pm i & 0 \\
0 & \pm i & -1 & 0 \\
0 & 0 & 0 & 0
\end{pmatrix}
\end{align}$$

# non-perturbative solutions

## Schwarzschild

in $\displaystyle{d}$ dimensions with cosmological constant $\displaystyle{\Lambda}$, the Schwarzschild-(A)dS metric is given by

$$\begin{align}
\mathrm{d}s^{2} & =-f(r)\mathrm{d}t^{2}+\frac{\mathrm{d}r^{2}}{f(r)}+r^{2}\mathrm{d}\Omega ^{2}_{d-2} \\
f(r) & =1-\frac{16\pi M}{(d-2)\Omega _{d-2}r^{d-3}}-\frac{2\Lambda r^{2}}{(d-1)(d-2)}
\end{align}$$

where $\displaystyle{\Omega _{d-2}}$ is the volume of the unit $\displaystyle{S_{d-2}}$ sphere

$$\begin{align}
\Omega _{d-2} & =\frac{2\pi ^{(d-1)/2}}{\Gamma\left( \frac{d-1}{2} \right)}
\end{align}$$

### penrose diagram and causal structure

to study the causal structure, we focus on the $\displaystyle{(t,r)}$ coordinates and take the example of 4d Schwarzschild with cosmological constant $\displaystyle{\Lambda =0}$. change to the tortoise coordinate

$$\begin{align}
\mathrm{d}r^{*} & =\frac{\mathrm{d}r}{f(r)}
\end{align}$$

and define the null coordinates $\displaystyle{u=t-r^{*}, v=t+r^{*}}$, we have

$$\begin{align}
\mathrm{d}s^{2} & =-f(r)\mathrm{d}u\mathrm{d}v+r^{2}\mathrm{d}\Omega _{2}^{2}
\end{align}$$

then define the Kruskal coordinates to eliminate singularity at horizon. let $\displaystyle{\kappa=\frac{1}{2}f'(r_{h})}$ (surface gravity), and define

$$\begin{align}
U & =-e^{-\kappa u} \\
V & =e^{\kappa v}
\end{align}$$

at horizon, $\displaystyle{r=r_{h}\implies UV=0}$, and the metric becomes

$$\begin{align}
\mathrm{d}s^{2} & =-\frac{f(r)}{\kappa ^{2}e^{2\kappa r^{*}}}\mathrm{d}U\mathrm{d}V+r^{2}\mathrm{d}\Omega _{2}^{2}
\end{align}$$

which is regular at $\displaystyle{r=r_{h}}$. finally, we can compactify the coordinates to bring infinity to finite distance, e.g.,

$$\begin{align}
\mathcal{U} & =\arctan U \\
\mathcal{V} & =\arctan V
\end{align}$$

and finally we can draw the Penrose diagram, where light cones are at $45^{\circ}$ angles. the boundary lines are
- $\displaystyle{i^{0}}$: spacelike infinity.
- $\displaystyle{i^{\pm}}$: future/past timelike infinity.
- $\displaystyle{\mathscr{I}^{\pm}}$: future/past null infinity.
- event horizon: $\displaystyle{r=r_{h}\implies UV=0}$.
- singularity: $\displaystyle{r=0\implies UV=1}$
- regions: $\displaystyle{UV<0}$ (outside horizon), $\displaystyle{UV>0}$ (inside horizon).
- black hole: future event horizon.
- white hole: past event horizon.
- wormhole: Einstein-Rosen bridge connecting two asymptotically flat regions.

we will use this procedure to draw Penrose diagrams for other spacetimes as well.

#### flat spacetime

$$\begin{align}
\mathrm{d}s^{2} & =-\mathrm{d}t^{2}+\mathrm{d}r^{2}+r^{2}\mathrm{d}\Omega _{2}^{2}
\end{align}$$

it is easy since we have no need to eliminate singularity here. define

$$\begin{align}
u & =t-r \\
v & =t+r \\
U & =\arctan u \\
V & =\arctan v
\end{align}$$

then we can see
- $\displaystyle{r=0\implies U=V}$ (origin).
- $\displaystyle{r\to \infty \implies U=-\frac{\pi}{2}, V=\frac{\pi}{2}}$ (infinity).
- regions: $\displaystyle{V>U}$ (physical spacetime), $\displaystyle{V<U}$ (unphysical).
- boundaries: $\displaystyle{i^{0}}$ (spacelike infinity), $\displaystyle{i^{\pm}}$ (future/past timelike infinity), $\displaystyle{\mathscr{I}^{\pm}}$ (future/past null infinity).
- the Penrose diagram is a diamond shape.

#### Rindler Spacetime (Uniform Acceleration)

Flat spacetime seen by observer with proper acceleration $\alpha$:

$$\begin{align}
\mathrm{d}s^2 &= -(\alpha x)^2 \mathrm{d}t^2 + \mathrm{d}x^2 + \mathrm{d}y^2 + \mathrm{d}z^2
\end{align}$$

-   **Horizon**: $x=0$ (Rindler horizon).
-   **Unruh Effect**: Observer sees vacuum as thermal state with $T = \frac{\alpha}{2\pi}$.
-   **Geodesics**: Light rays $x = \pm e^{\alpha t}$. Massive particles $x^2 - t^2 = 1/\alpha^2$ (hyperbolas).

#### Schwarzschild black hole with negative mass

$$\begin{align}
\mathrm{d}s^{2} & =-f(r)\mathrm{d}t^{2}+\frac{\mathrm{d}r^{2}}{f(r)}+r^{2}\mathrm{d}\Omega ^{2} \\
f(r) & =1+\frac{2\mathcal{M}}{r},\quad \mathcal{M}=-M>0
\end{align}$$

there is no horizon since $\displaystyle{f(r)>0 \,\forall r> 0}$, and there is a naked singularity at $\displaystyle{r=0}$. define

$$\begin{align}
\mathrm{d}r^{*} & =\frac{\mathrm{d}r}{f(r)} \\
\implies r^{*} & =r-\mathcal{M}\ln \left(1+\frac{r}{2\mathcal{M}}\right)
\end{align}$$

and define null coordinates

$$\begin{align}
u & =t-r^{*} \\
v & =t+r^{*}
\end{align}$$

then we have

$$\begin{align}
\mathrm{d}s^{2} & =-f(r)\mathrm{d}u\mathrm{d}v+r^{2}\mathrm{d}\Omega _{2}^{2}
\end{align}$$

there is no need to define Kruskal coordinates since there is no horizon. finally, compactify the coordinates

$$\begin{align}
U & =\arctan u \\
V & =\arctan v
\end{align}$$

then we have
- $\displaystyle{r=0\implies U=V}$, timelike singularity.
- other parts are the same as half of flat spacetime Penrose diagram.

#### AdS spacetime

$$\begin{align}
\mathrm{d}s^{2} & =-f(r)\mathrm{d}t^{2}+\frac{\mathrm{d}r^{2}}{f(r)}+r^{2}\mathrm{d}\Omega _{d-2}^{2} \\
f(r) & =1+r^{2}
\end{align}$$

here we set the AdS radius $\displaystyle{\ell =1}$. define

$$\begin{align}
\mathrm{d}r^{*} & =\frac{\mathrm{d}r}{f(r)} \\
\implies r^{*} & =\arctan r
\end{align}$$

and define null coordinates

$$\begin{align}
u & =t-r^{*} \\
v & =t+r^{*}
\end{align}$$

then we have

$$\begin{align}
\mathrm{d}s^{2} & =-f(r)\mathrm{d}u\mathrm{d}v+r^{2}\mathrm{d}\Omega _{d-2}^{2}
\end{align}$$

finally, compactify the coordinates

$$\begin{align}
U & =\arctan u \\
V & =\arctan v
\end{align}$$

then we have
- $\displaystyle{r=0\implies U=V}$, timelike origin.
- $\displaystyle{r\to \infty \implies r^{*}\to \frac{\pi}{2}\implies v-u=\pi}$, timelike infinity.
- regions: $\displaystyle{V>U}$ (physical spacetime), $\displaystyle{V<U}$ (unphysical).
- boundaries: $\displaystyle{i^{\pm}}$ (future/past timelike infinity), $\displaystyle{\mathscr{I}^{\pm}}$ (future/past null infinity).
- the Penrose diagram is an infinite strip.

#### Reissener-Nordstrøm blackhole

$$\begin{align}
\mathrm{d}s^{2} & =-f(r)\mathrm{d}t^{2}+\frac{\mathrm{d}r^{2}}{f(r)}+r^{2}\mathrm{d}\Omega _{2}^{2} \\
f(r) & =1-\frac{2M}{r}+\frac{Q^{2}}{r^{2}}
\end{align}$$

there are two horizons at $\displaystyle{r_{\pm}=M\pm \sqrt{M^{2}-Q^{2}}}$ for $\displaystyle{M>|Q|}$ which we assume in the following. define

$$\begin{align}
\mathrm{d}r^{*} & =\frac{\mathrm{d}r}{f(r)} \\
\implies r^{*} & =r+\frac{r_{+}^{2}}{r_{+}-r_{-}}\ln |r-r_{+}|-\frac{r_{-}^{2}}{r_{+}-r_{-}}\ln |r-r_{-}|
\end{align}$$

and define null coordinates

$$\begin{align}
u & =t-r^{*} \\
v & =t+r^{*}
\end{align}$$

then we have

$$\begin{align}
\mathrm{d}s^{2} & =-f(r)\mathrm{d}u\mathrm{d}v+r^{2}\mathrm{d}\Omega _{2}^{2}
\end{align}$$

to eliminate singularity at horizons, define Kruskal coordinates in different regions:

- region I ($r>r_{+}$):

$$\begin{align}
U & =-e^{-\kappa _{+}u} \\
V & =e^{\kappa _{+}v}
\end{align}$$

- region II ($r_{-}<r<r_{+}$):

$$\begin{align}
U & =-e^{-\kappa _{+}u} \\
V & =-e^{\kappa _{+}v}
\end{align}$$

- region III ($r<r_{-}$):

$$\begin{align}
U & =e^{-\kappa _{-}u} \\
V & =-e^{\kappa _{-}v}
\end{align}$$

where $\displaystyle{\kappa _{\pm}=\frac{r_{+}-r_{-}}{2r_{\pm}^{2}}}$ are the surface gravities at the two horizons. finally, compactify the coordinates

$$\begin{align}
\mathcal{U} & =\arctan U \\
\mathcal{V} & =\arctan V
\end{align}$$

then we have
- $\displaystyle{r=r_{+}\implies UV=0}$, outer horizon.
- $\displaystyle{r=r_{-}\implies UV=1}$, inner horizon.
- $\displaystyle{r=0\implies UV=\frac{M^{2}}{M^{2}-Q^{2}}}$, timelike singularity.
- regions: $\displaystyle{UV<0}$ (outside outer horizon), $\displaystyle{0<UV<1}$ (between horizons), $\displaystyle{UV>1}$ (inside inner horizon).
- the Penrose diagram is an infinite tower of diamond shapes, between two shapes is the wormhole connecting two asymptotically flat regions.

![[Attachments/Pasted image 20260126180911.png]]

#### Kerr Metric

Rotating black hole in Boyer-Lindquist coordinates:

$$\begin{align}
\mathrm{d}s^2 &= -\left(1-\frac{2Mr}{\Sigma}\right)\mathrm{d}t^2 - \frac{4Mra\sin^2\theta}{\Sigma}\mathrm{d}t\mathrm{d}\phi + \frac{\Sigma}{\Delta}\mathrm{d}r^2 + \Sigma\mathrm{d}\theta^2 + \left(r^2+a^2+\frac{2Mra^2\sin^2\theta}{\Sigma}\right)\sin^2\theta\mathrm{d}\phi^2
\end{align}$$

where $\Sigma = r^2 + a^2\cos^2\theta$, $\Delta = r^2 - 2Mr + a^2$.
-   **Horizons**: $\Delta(r_\pm) = 0 \implies r_\pm = M \pm \sqrt{M^2-a^2}$.
-   **Ergosphere**: region where $g_{tt} > 0$ (timelike K.V. becomes spacelike). $r_+ < r < M + \sqrt{M^2-a^2\cos^2\theta}$.
-   **Angular Velocity of Horizon**: $\Omega_H = \frac{a}{r_+^2+a^2}$.
-   **Singularity**: Ring singularity at $r=0, \theta=\pi/2$ (i.e. $\Sigma=0$).

# Black Hole Thermodynamics

## The Four Laws

- **Zeroth Law**: Surface gravity $\kappa$ is constant on the horizon.
- **First Law**: $dM = \frac{\kappa}{8\pi G} dA + \Omega_H dJ + \Phi_H dQ$.
- **Second Law**: $\delta A \ge 0$ (weak cosmic censorship holds).
- **Third Law**: Impossible to reach extremality ($\kappa=0$) in finite steps.

## Hawking Radiation

- **Temperature**: $T_H = \frac{\kappa}{2\pi}$.
- **Entropy**: $S = \frac{A}{4G}$.
- **Evaporation**: Power $P \propto 1/M^2$. Lifetime $\tau \propto M^3$.

## Penrose Process

Extraction of energy from a rotating black hole.
- Particle enters ergosphere ($E_1$), splits into $E_2$ (falls in) and $E_3$ (escapes).
- Inside ergosphere, negative energy states exist relative to infinity ($E = -p_\mu \xi^\mu_{(t)} < 0$) because $\xi^\mu_{(t)}$ is spacelike.
- If $E_2 < 0$, then $E_3 > E_1$.
- **Irreducible Mass**: $M^2 = M_{irr}^2 + \frac{J^2}{4M_{irr}^2}$. $M_{irr} = \sqrt{\frac{A}{16\pi}}$. Process is limited by $\delta M_{irr} \ge 0$.

#### Gravitational collapse (Oppenheimer-Snyder)

For a star collapsing into a black hole, the spacetime is patched by a star interior (FRW uniform density dust) and an exterior Schwarzschild metric.
- The diagram starts with a smooth origin (like Minkowski) in the past.
- The surface of the star follows a timelike trajectory, crossing the horizon $r=2M$ at some finite proper time.
- The singularity $r=0$ forms in the future.
- **Key difference**: No white hole, no "parallel universe" region. The causal past is modified compared to eternal Schwarzschild.

#### FLRW Cosmology

Metric in conformal time $\eta$:

$$\begin{align}
\mathrm{d}s^2 = a^2(\eta) [-\mathrm{d}\eta^2 + \mathrm{d}\chi^2 + S_k^2(\chi)\mathrm{d}\Omega^2]
\end{align}$$

The causal structure depends on the range of $\eta$ and $k$:
1.  **Matter/Radiation Dominated ($k=0$)**: $\eta \in (0, \infty)$. Diagram is a triangle (singular Big Bang at $\eta=0$).
1.  **Dark Energy Dominated (de Sitter)**: $\eta \in (-\infty, 0)$. Diagram is a square (infinite past to infinite future).
    -   Has a cosmological event horizon for any observer.
1.  **Minkowski**: $a=1$, $\eta \in (-\infty, \infty)$. Diamond.

# Stellar Structure

**TOV Equation** (Tolman-Oppenheimer-Volkoff) for static spherically symmetric stars:

$$\begin{align}
\frac{\mathrm{d}p}{\mathrm{d}r} &= - \frac{(\rho+p)(m + 4\pi r^3 p)}{r(r-2m)} \\
\frac{\mathrm{d}m}{\mathrm{d}r} &= 4\pi r^2 \rho
\end{align}$$

Combined with Equation of State $p=p(\rho)$.
-   **Buchdahl Limit**: For a stable static sphere, $M < \frac{4}{9}R$. If $R < \frac{9}{4}M$, it must collapse.

# Cosmology

**Friedmann Equations** for FLRW metric:

$$\begin{align}
\left( \frac{\dot{a}}{a} \right)^2 &= \frac{8\pi G}{3}\rho - \frac{k}{a^2} + \frac{\Lambda}{3} \\
\frac{\ddot{a}}{a} &= -\frac{4\pi G}{3}(\rho + 3p) + \frac{\Lambda}{3}
\end{align}$$

**Conservation**: $\dot{\rho} + 3H(\rho+p) = 0$.
**Parameters**:
-   Critical density $\rho_c = \frac{3H^2}{8\pi G}$.
-   Density parameter $\Omega = \rho/\rho_c$.
-   Deceleration parameter $q = -\frac{a\ddot{a}}{\dot{a}^2}$.
**Redshift**: $1+z = \frac{a(t_{obs})}{a(t_{emit})}$.
**Hubble's Law**: $v = H d$.
**Inflation**: Solves Horizon and Flatness problems by $a(t) \sim e^{Ht}$ phase ($\ddot{a}>0$).

# Metric Compatibility

$\nabla_\rho g_{\mu\nu} = 0$. This uniquely determines the Christoffel symbols (Levi-Civita connection).
