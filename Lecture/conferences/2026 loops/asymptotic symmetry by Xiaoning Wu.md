for a general spacetime, we can find a set of complex tetrad $\displaystyle{(l,n,m,\bar{m})}$ that satifies

$$\begin{align}
l\cdot n & =-1 \\
m\cdot \bar{m} & =1
\end{align}$$

we denote $\displaystyle{D=\nabla _{l},D'=\nabla _{n},\delta=\nabla _{m},\bar{\delta}=\nabla _{\bar{m}}}$, we define the complex connection coefficients as

$$\begin{align}
\begin{matrix} & \braket{ m,\nabla l }  & \braket{ n,\nabla l }  & \braket{ \bar{m},\nabla m }  & \braket{ \bar{m},\nabla n }  \\
D & -\kappa & -(\varepsilon+\bar{\varepsilon}) & \varepsilon-\bar{\varepsilon} & \pi \\
D' & -\tau & -(\gamma+\bar{\gamma}) & \gamma-\bar{\gamma} & \nu \\
\delta & -\sigma & -(\bar{\alpha}+\beta) & -\bar{\alpha}+\beta & \mu \\
\bar{\delta} & -\rho & -(\alpha+\bar{\beta}) & \alpha-\bar{\beta} & \lambda
\end{matrix}
\end{align}$$

we call these 12 complex connection coefficients as Newman-Penrose coefficients. their geometrical meaning... they satisfies the Newman-Penrose equations (Cartan structure equation)

$$\begin{align}
\dots
\end{align}$$

the Bianchi identities

$$\begin{align}
\dots
\end{align}$$

and the torsion free condition

$$\begin{align}
\dots
\end{align}$$

in total we have 33 equations. by introducing suitable gauge choice ...

---

Petrov characterization of Weyl curvature.
- I:
- II:
- D:
- III:
- N:
- O:

Petrov type I is called algebraically trivial(?), and other types are called algebraically special(?). a

theorem. (how to determine the Petrov type)

---

asymptotic flatness

definition...

we will focus on the properties of null infinities. consider the Minkowski spacetime with metric

$$\begin{align}
\mathrm{d}s^{2} & =-\mathrm{d}t^{2}+\mathrm{d}r^{2}+r^{2}\mathrm{d}\Omega _{2}^{2} \\
\overset{u=t+r,v=t-r}{\implies} & =-\mathrm{d}u\mathrm{d}v+\frac{(v-u)^{2}}{4}\mathrm{d}\Omega _{2}^{2} \\
\overset{U=\arctan u,V=\arctan v}{\implies} \\
\overset{T=V+U,R=V-U}{\implies} & =\frac{1}{4\cos ^{2}U\cos ^{2}V}(-\mathrm{d}T^{2}+\mathrm{d}R^{2}+\sin R^{2}\mathrm{d}\Omega _{2}^{2})
\end{align}$$

consider the Schwarzschild black hole

$$\begin{align}
\mathrm{d}s^{2} & =-\left( 1-\frac{2M}{r} \right)\mathrm{d}t^{2}+\frac{\mathrm{d}r^{2}}{1-\frac{2M}{r}}+r^{2}\mathrm{d}\Omega _{2}^{2} \\
\implies & =\dots
\end{align}$$

in general the conformal factor $\displaystyle{\Omega \sim r^{-1}}$, and $\displaystyle{R}$ is the affine parameter of outgoing null geodesics. questions we want to answer are
- are there any asymptotic flat spacetimes
- dofs in the asymptotic region
- asymptotic symmetries and the connection with Poincare algebra
- asymptotic symmetries and Noether theorem

methods
- solve the conformal Einstein equation
- Eddington like coordinate, in this lecture we will adopt this approach

$$\begin{align}
\mathrm{d}s^{2} & =-\mathrm{d}u^{2}+2\mathrm{d}u\mathrm{d}r+r^{2}\mathrm{d}\Omega _{2}^{2}+\mathcal{O}(r^{-1})
\end{align}$$

---

Newman-Unti gauge. coordinate $\displaystyle{(\tilde{u},\tilde{r},\tilde{\theta},\tilde{\phi})}$ and null frame $\displaystyle{(\tilde{l},\tilde{n},\tilde{e}_{A})}$ satisfy

$$\begin{align}
\tilde{g}(\tilde{l},\tilde{n}) & =-1, & \tilde{g}(\tilde{l},\tilde{l}) & =\tilde{g}(\tilde{n},\tilde{n})=0, & \tilde{g}(\tilde{l},\tilde{e}_{A}) & =\tilde{g}(\tilde{n},\tilde{e}_{A})=0, & \tilde{g}(\tilde{e}_{A},\tilde{e}_{B})=\delta _{AB}
\end{align}$$

which gives the inverse metric

$$\begin{align}
\implies gtil^{ab} & =-\tilde{l}^{a}\tilde{n}^{b}-\tilde{n}^{a}\tilde{l}^{b}+\delta ^{AB}\tilde{e}^{a}_{A}\tilde{e}^{b}_{B} \\
 & =-\tilde{l}^{a}\tilde{n}^{b}-\tilde{n}^{a}\tilde{l}^{b}+\delta ^{AB}\tilde{m}^{a}_{A}\bar{\tilde{m}}^{b}_{B} \\
\tilde{m} & =\frac{1}{\sqrt{ 2 }}(\tilde{e}_{1}+i\tilde{e}_{2})
\end{align}$$

connection with physical coordinates and tetrads.

$$\begin{align}
\tilde{g}^{ab} & =\frac{1}{\Omega ^{2}}g^{ab}, & \tilde{q}^{ab} & =\frac{1}{\Omega ^{2}}q^{ab} \\
\tilde{r} & =\frac{1}{r}, & \tilde{u} & =u, & \tilde{\theta} & =\theta, & \tilde{\varphi}=\varphi \\
\tilde{l}^{a} & =\frac{1}{\Omega ^{2}}l^{a} & \tilde{n}^{a} & =n^{a}, & \tilde{e}^{a}_{A} & =\frac{1}{\Omega}e^{a}_{A} \\
\Omega & \sim\frac{1}{r}
\end{align}$$

introduce the NP frame

$$\begin{align}
m^{a} & =\frac{1}{\sqrt{ 2 }}(e^{a}_{1}+ie^{a}_{2})
\end{align}$$

therefore under the coordinate $\displaystyle{(u,r,\theta,\varphi)}$, the null frame can be written as

$$\begin{align}
l^{a} & =\dots,
\end{align}$$

here $\displaystyle{U,X,\omega,\xi ^{A}}$ are unknown functions that satisfies the gauge condition

$$\begin{align}
\kappa=\epsilon=\pi & =0,  & \mathrm{Im}(\rho) & =0,  & \tau=\bar{\alpha}+\beta
\end{align}$$

the ...(torsion free?) condition are simplified to

$$\begin{align}
DU & =\tau \bar{\omega}+\bar{\tau}\omega-\gamma-\bar{\gamma} \\
D\omega & =\rho \omega+\sigma \bar{\omega}-\bar{\alpha}-\beta \\
\Delta \omega-\delta U & =\bar{\nu}-(\mu-\gamma+\bar{\gamma})\omega-\bar{\lambda}\bar{\omega} \\
\delta \bar{\omega}-\bar{\delta}\omega & =\mu-\bar{\mu}+(\bar{\beta}-\alpha)\omega+(\bar{\alpha}-\beta)\bar{\omega} \\
DX^{2} & =\bar{\tau}\xi ^{2}+\tau \bar{\xi}^{2} \\
D\xi ^{2} & =\rho \xi ^{2}+\sigma \bar{\xi}^{2} \\
\delta X^{2}-\Delta \xi ^{2} & =(\mu-\gamma+\bar{\gamma})\xi ^{2}+\bar{\lambda}\bar{\xi}^{2} \\
\delta \bar{\xi}^{2}-\bar{\delta}\xi ^{2} & =(\bar{\beta}-\alpha)\xi ^{2}+(\bar{\alpha}-\beta)\bar{\xi}^{2} \\
DX^{3} & =\bar{\tau}\xi ^{3}+\tau \bar{\xi}^{3} \\
D\xi ^{3} & =\rho \xi ^{3}+\sigma \bar{\xi}^{3} \\
\delta X^{3}-\Delta \xi ^{3} & =(\mu-\gamma+\bar{\gamma})\xi ^{3}+\bar{\lambda}\bar{\xi}^{4} \\
\delta \bar{\xi}^{3}-\bar{\delta}\xi ^{3} & =(\bar{\beta}-\alpha)\xi ^{3}+(\bar{\alpha}-\beta)\bar{\xi}^{4}
\end{align}$$

the NP equations are simplified to

$$\begin{align}
\dots
\end{align}$$

and the Bianchi identity

$$\begin{align}
\dots
\end{align}$$

Penrose peeling-off. Weyl curvature

$$\begin{align}
\Psi_{n}\sim O(r^{n-5}), n=0,\dots,4
\end{align}$$

---

assume all the NP quantities are analytic around $\displaystyle{r=\infty}$, which means, they can be expanded as series of $\displaystyle{r^{-1}}$. we solve out

$$\begin{align}
U & =-\frac{1}{2}+\mathcal{O}(r^{-1}), &  X & \to 0, & \omega & \to 0,  & \xi ^{1} & \to \mathcal{O}(r^{-2}), & \xi ^{2} & =\frac{1+|z|^{2}}{\sqrt{ 2 }r}+\mathcal{O}(r^{-2}) \\
\rho & =-\frac{1}{r}+\mathcal{O}(r^{-3}), & \mu & =-\frac{1}{2r}+\mathcal{O}(r^{-2}), & \alpha,-\beta & =\frac{\alpha_{0}}{r}+\mathcal{O}(r^{-2}) \\
z & =\cot \frac{\theta}{2}e^{i\varphi}, & \alpha_{0} & =-\frac{\cot \theta}{2\sqrt{ 2 }}
\end{align}$$

we will start from these asymptotic behaviors to determine the exact asymptotic behavior of NP quantities. start from $\displaystyle{\sigma}$,

$$\begin{align}
\partial _{r}\rho & =\rho ^{2}+|\sigma|^{2} \\
\partial _{r}\sigma & =2\rho \sigma+\Psi_{0}
\end{align}$$

(actually this is the Raychaudhuri equation for the $\displaystyle{l}$ direction). the solution is

$$\begin{align}
\rho & =-\frac{1}{r}-\frac{|\sigma ^{0}|^{2}}{r^{3}}+\mathcal{O}(r^{-5}) \\
\sigma & =\frac{\sigma ^{0}}{r^{2}}+\left( \sigma ^{0}|\sigma ^{0}|^{2}-\frac{\Psi_{0}^{0}}{2} \right)r^{-4}+\mathcal{O}(r^{-5})
\end{align}$$

and

$$\begin{align}
\partial _{r}\alpha & =\alpha \rho + \beta \sigma \\
\partial _{e}\beta & =\rho \beta+\alpha \sigma+\Psi_{1} \\
\implies \alpha & =\frac{\alpha_{0}}{r}+\frac{\bar{\sigma} ^{0}\alpha _{0}}{r^{2}}+\frac{|\sigma ^{0}|^{2}\alpha _{0}}{r^{3}}+\mathcal{O}(r^{-4}) \\
\beta & =-\frac{\alpha_{0}}{r}-\frac{\bar{\sigma}^{0}\alpha _{0}}{r^{2}}-\left( |\sigma ^{0}|^{2}\alpha_{0}+\frac{1}{2}\Psi^{0}_{1} \right)r^{-3}+\mathcal{O}(r^{-4}) \\
\tau & =-\frac{\Psi_{1}^{0}}{2}r^{-3}+\mathcal{O}(r^{-4})
\end{align}$$

here we have used the gauge condition $\displaystyle{\tau=\bar{\alpha}+\beta}$.

$$\begin{align}
\partial _{r}\gamma & =\tau \alpha+\bar{\tau}\beta+\Psi_{2} \\
\implies \gamma & =-\frac{\Psi_{2}^{0}}{2r^{2}}+\mathcal{O}(r^{-3}) \\
\partial _{r}\nu & =\tau \lambda+\bar{\tau}\mu+\Psi_{3} \\
\implies \nu & =-\frac{\Psi_{3}^{0}}{r}+\mathcal{O}(r^{-2})
\end{align}$$

and

$$\begin{align}
\partial _{r}\lambda & =\rho \lambda+\mu \bar{\sigma} \\
\partial _{r}\mu & =\mu \rho +\lambda \sigma+\Psi_{2} \\
D'\lambda-\bar{\delta}\nu & =-(\mu+\bar{\mu})\lambda-(3\gamma-\bar{\gamma})\lambda+2\alpha \nu-\Psi_{4} \\
\delta \tau-D'\sigma & =\mu \sigma+\bar{\lambda}\rho+(\tau+\beta-\bar{\alpha})\tau-(3\gamma-\bar{\gamma})\sigma \\
\implies \lambda & =\frac{\dot{\bar{\sigma}}}{r}+\frac{\bar{\sigma}^{0}}{r^{2}}+\left( |\sigma ^{0}|^{2}\dot{\bar{\sigma}}^{0}+\frac{\bar{\sigma}^{0}\Psi_{2}^{0}}{2} \right)r^{-3}+\mathcal{O}(r^{-4}) \\
\mu & =-\frac{1}{2r}-(\sigma ^{0}\dot{\bar{\sigma}}^{0}+\Psi^{0}_{2})r^{-2}+\frac{|\sigma ^{0}|^{2}-\Psi^{4}_{2}/2}{r^{3}}+\mathcal{O}(r^{-4}) \\
\implies \nu & =-\frac{\Psi_{3}^{0}}{r}-\frac{\Psi_{3}^{3}}{r^{2}}+\mathcal{O}(r^{-3})
\end{align}$$

$$\begin{align}
\dots & ? \\
\implies \omega & =\bar{\underline{\partial}}\dots \\
-D\xi ^{1} & =-\sigma \bar{\xi}^{2}-\rho \xi ^{1} \\
-D\xi ^{2} & =-\sigma \bar{\xi}^{1}-\rho \xi ^{2} \\
\implies \xi ^{1} & =-\frac{z(1+|z|^{2})}{\bar{z}\sqrt{ 2 }} \frac{\sigma ^{0}}{r^{2}}+\mathcal{O}(r^{-3}) \\
\xi ^{2} & =\frac{1+|z|^{2}}{\sqrt{ 2 }} \frac{1}{r}+\mathcal{O}(r^{-2})
\end{align}$$

Bianchi identities give more precise restrictions...

finally, all the tetrad components, connection coefficients, Weyl curvature can be determined by $\displaystyle{\sigma ^{0}(u,\theta,\varphi), \mathrm{Re}(\Psi^{0}_{2}(0,\theta,\varphi)), \Psi^{0}_{1}(0,\theta,\varphi),\Psi^{k}_{0}(0,\theta,\varphi)}$. this is called the Newman-Unti gauge.

---

asymptotic Killing vector

$$\begin{align}
g_{00} & =1-\frac{2U_{1}}{r}+\dots \\
g_{01} & =1 \\
g_{02} & =-\frac{\omega_{1}+\bar{\omega}_{1}}{\sqrt{ 2 }}+\dots \\
g_{03} & =-\frac{i(\omega_{1}-\bar{\omega}_{1})}{\sqrt{ 2 }}\sin \theta+\dots \\
\dots
\end{align}$$

assume the asymptotic Killing vector

$$\begin{align}
\xi ^{u} & =\xi_{0}^{u}+\frac{\xi_{1}^{u}}{r}+\frac{\xi_{2}^{u}}{r^{2}}+\dots \\
\xi ^{r} & =\xi _{-1}^{r}r+\xi_{0}^{r}+\frac{\xi_{1}^{r}}{r}+\dots \\
\xi ^{\theta} & =\xi_{0}^{\theta}+\dots \\
\xi ^{\varphi} & =\xi_{0}^{\varphi}+\dots
\end{align}$$

here $\displaystyle{\xi_{i}^{\mu}=\xi _{i,0}^{\mu}(u,\theta,\varphi)+\xi _{i,0}^{\mu}(u,\theta,\varphi)\ln r}$. diffeomorphism generated by the asymptotic Killing vector keeps the form of metric invariant, we have

$$\begin{align}
\xi ^{u} & =f(\theta,\phi)+\frac{1}{2}D_{A}Y^{A}u+\dots \\
\xi ^{r} & =-\frac{1}{2}D_{A}Y^{A}\tau+\dots \\
\xi ^{\theta} & =Y^{\theta}+\dots \\
\xi ^{\varphi} & =Y^{\varphi}+\dots
\end{align}$$

here $\displaystyle{D_{A}Y^{A}=\partial _{\theta}Y^{\theta}+\cot \theta Y^{\theta}+\partial _{\varphi}Y^{\varphi}}$, and $\displaystyle{Y^{A}}$ satisfies the conformal Killing equation

$$\begin{align}
\mathcal{L}_{Y}q_{AB} & =\frac{1}{2}D_{C}Y^{C}q_{AB}
\end{align}$$

equivalent classes of $\displaystyle{\xi ^{\mu}}$ forms the BMS algebra

$$\begin{align}
\mathcal{BMS} & =L^{2}(S^{0})\otimes _{S}\mathcal{L}_{p}
\end{align}$$

where $\displaystyle{\mathcal{L}_{p}}$ is the conformal algebra on $\displaystyle{S^{0}}$ which is isomorphic to the Lorentz algebra. the commutation ideal of $\displaystyle{\mathcal{BMS}}$, generated by $\displaystyle{f(\theta,\phi)}$, is called the super-translation subalgebra. expand

$$\begin{align}
f(\theta,\phi) & =\sum _{l,m}a_{lm}Y_{lm}
\end{align}$$

the 4d subalgebra $\displaystyle{\mathrm{span}\left\{Y_{00},Y_{1m}\right\}}$ is invariant under the Lorentz action, and is called the translation subalgebra.

in principle we can use Wald formalism

$$\begin{align}
M_{\mathrm{B}} & =-\frac{1}{8\pi}\int _{S_{\infty}}\left(\Psi_{2}^{0}+\sigma ^{0}\dot{\bar{\sigma}}^{0}+\text{c.c.}\right) \\
\frac{\mathrm{d}M_{\mathrm{B}}}{\mathrm{d}u} & =-\frac{1}{4\pi}\int _{S_{\infty}}|\ddot{\sigma}|^{2} \\
J(Y) & =\frac{1}{18\pi}\int _{S_{\infty}}\left(\Psi^{0}_{1}Y^{\bar{m}}+\bar{\Psi}^{0}_{1}Y^{m}\right)
\end{align}$$

the definition of the angular momentum $\displaystyle{J(Y)}$ is not unique due to .... see Yau's new definition 2102.03235.

*memory effect*.

for mass. from the Bianchi identity

$$\begin{align}
\frac{\mathrm{d}}{\mathrm{d}u}(\Psi_{2}^{0}+\sigma ^{0}\dot{\bar{\sigma}}^{0}) & =\dots \\
 & =-\underline{\partial}^{2}\dot{\bar{\sigma}}^{0}+|\dot{\sigma}^{0}|^{2} \\
 \implies \underline{\partial}^{2}\int _{-\infty}^{+\infty}\lambda \mathrm{d}u & =-(\Psi_{2}^{0}+\sigma ^{0}\dot{\bar{\sigma}}^{0})|^{+\infty}_{-\infty}+\int ^{+\infty}_{-\infty}|\dot{\sigma}^{0}|^{2}\mathrm{d}u
\end{align}$$

for angular momentum. ...

*outlook*.
- non-analyticity
- give out the Peeling properties.
- ...
