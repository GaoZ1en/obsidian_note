for simplicity, we first consider the non-rotating BTZ black hole, with metric

$$\begin{align}
\mathrm{d}s^{2} & =-f(r)\mathrm{d}t^{2}+\frac{\mathrm{d}r^{2}}{f(r)}+r^{2}\mathrm{d}\phi ^{2}, & f(r) & =r^{2}-r_{+}^{2}
\end{align}$$

we consider a $\displaystyle{\mathrm{U}(1)}$ Chern-Simons theory defined in the finite spacetime region $\displaystyle{M}$. the bulk action is given by

$$\begin{align}
S_{\text{bulk}} & =\frac{k}{4\pi}\int _{M}\mathrm{d}^{3}x\sqrt{ -g }\varepsilon ^{\mu \nu \rho}A_{\mu}\nabla _{\nu}A_{\rho}
\end{align}$$

we will assume $\displaystyle{k>0}$ for simplicity. where the spacetime region $\displaystyle{M}$ is sandwiched by the initial and final Cauchy surfaces $\displaystyle{\Sigma _{i}}$ and $\displaystyle{\Sigma _{f}}$, and the radial interval is $\displaystyle{[r_{+},R]}$, where $\displaystyle{R}$ is a cut-off. the radial boundary has two components

$$\begin{align}
\Gamma & =\Gamma _{R}\cup \Gamma _{+}, & \Gamma _{R} & =\{r=R\}, & \Gamma _{+} & =\{r=r_{+}\}.
\end{align}$$

the outward normal $\displaystyle{n_{\mu}}$ is always defined with respect to $\displaystyle{M}$, so it points toward larger $\displaystyle{r}$ on $\displaystyle{\Gamma _{R}}$ and toward smaller $\displaystyle{r}$ on $\displaystyle{\Gamma _{+}}$. take a variation of the action, we have

$$\begin{align}
\delta S & =\int _{M} \mathrm{d}^{3}x\sqrt{ -g }E_{\mu}\delta A^{\mu}+\int _{\Sigma _{f}-\Sigma _{i}}\mathrm{d}^{2}x\sqrt{ \sigma }\tau _{\mu}\theta ^{\mu}-\int _{\Gamma _{R}}\mathrm{d}^{2}x\sqrt{ -\gamma }n_{\mu}\theta ^{\mu}-\int _{\Gamma _{+}}\mathrm{d}^{2}x\sqrt{ -\gamma }n_{\mu}\theta ^{\mu} \\
E_{\mu} & =\frac{k}{2\pi}\varepsilon _{\mu}^{~\nu \rho}\nabla _{\nu}A_{\rho}\\
\theta ^{\mu} & = \frac{k}{4\pi}\varepsilon ^{\mu \nu \rho}A_{\nu}\delta A_{\rho} \\
\implies \omega & =\frac{k}{4\pi}\int _{\Sigma}\mathrm{d}^{2}x\sqrt{ \sigma }\tau _{\mu}\varepsilon ^{\mu \nu \rho}\delta A_{\nu}\wedge \delta A_{\rho}
\end{align}$$

here $\displaystyle{\Gamma _{R}}$ is the outer spatial boundary and $\displaystyle{\Gamma _{+}}$ is the horizon. since the horizon itself is null boundary, here $\displaystyle{\Gamma _{+}}$ should be understand as taking the limit $\displaystyle{r\to r_{+}}$.

## boundary action and boundary condition

by similar argument to [[Articles/Quantization in AdS3/Chern-Simons/U(1) formalism|U(1) formalism]], we have to introduce boundary action

$$\begin{align}
S_{\text{bdy}} & =\frac{k}{4\pi}\int _{\Gamma _{R}}\mathrm{d}^{2}x A_{+}A_{-}-\frac{k}{4\pi}\int _{\Gamma _{+}}\mathrm{d}^{2}x A_{+}A_{-}
\end{align}$$

where

$$\begin{align}
A_{\pm} & =A_{t}\pm A_{\phi}
\end{align}$$

is evaluated on each boundary component. equivalently, in terms of contravariant components on the boundary, the no-source condition below is $\displaystyle{A^{-}=0}$. the relative minus sign between $\displaystyle{\Gamma _{R}}$ and $\displaystyle{\Gamma _{+}}$ comes from the opposite orientations of the outer boundary and the horizon boundary. with this boundary action, the boundary variation becomes

$$\begin{align}
\delta S_{\text{total}}|_{\Gamma} & =\frac{k}{2\pi}\int _{\Gamma _{R}}\mathrm{d}^{2}x A_{-}\delta A_{+}-\frac{k}{2\pi}\int _{\Gamma _{+}}\mathrm{d}^{2}x A_{-}\delta A_{+}.
\end{align}$$

therefore, for $\displaystyle{k>0}$, the variational principle is well-defined by fixing $\displaystyle{A_{+}}$ on both the inner and outer boundaries,

$$\begin{align}
\delta A_{+}|_{\Gamma _{R}} & =0, & \delta A_{+}|_{\Gamma _{+}} & =0.
\end{align}$$

in the no-source chiral sector, we further impose

$$\begin{align}
A_{+}|_{\Gamma _{R}} & =0, & A_{+}|_{\Gamma _{+}} & =0.
\end{align}$$

## solutions of eom

now we will find the solutions of the eom. the general solution is given by

$$\begin{align}
A & =A_{\text{rad}}+A_{\text{ang}}+A_{\text{lg}} \\
A_{\text{rad}} & =q_{r}\mathrm{d}\chi=\frac{q_{r}}{R-r_{+}}\mathrm{d}r, \\
A_{\text{ang}} & =q_{\phi}(\mathrm{d}\phi-\mathrm{d}t), \\
A_{\text{lg}} & =\mathrm{d}\Lambda.
\end{align}$$

where

$$\begin{align}
\chi(r) & =\frac{r-r_{+}}{R-r_{+}}
\end{align}$$


the two constants $\displaystyle{q_{r}}$ and $\displaystyle{q_{\phi}}$ are topological zero modes. they are measured by

$$\begin{align}
\int _{r_{+}}^{R}A_{\text{rad}} & =q_{r}, &
\oint _{S^{1}}A_{\text{ang}} & =2\pi q_{\phi}.
\end{align}$$

to isolate the large gauge transformations associated with the two boundary components, we can use the two radial profiles

$$\begin{align}
\chi _{R}(r) & =\chi(r), & \chi _{+}(r) & =1-\chi(r),
\end{align}$$

so that $\displaystyle{\chi _{R}}$ has unit boundary value on $\displaystyle{\Gamma _{R}}$ and vanishes on $\displaystyle{\Gamma _{+}}$, while $\displaystyle{\chi _{+}}$ has unit boundary value on $\displaystyle{\Gamma _{+}}$ and vanishes on $\displaystyle{\Gamma _{R}}$. for the $\displaystyle{k>0}$ chiral sector, a convenient annihilation-mode Fourier basis is

$$\begin{align}
\Lambda _{R,n} & =C_{R,n}\chi _{R}(r)e^{-in(t-\phi)}, \\
\Lambda _{+,n} & =C_{+,n}\chi _{+}(r)e^{in(t-\phi)}, & n & >0.
\end{align}$$

the corresponding large gauge modes are

$$\begin{align}
A_{R,n} & =\mathrm{d}\Lambda _{R,n}, \\
A_{+,n} & =\mathrm{d}\Lambda _{+,n}.
\end{align}$$

here the normalization constants $\displaystyle{C_{R,n}}$ and $\displaystyle{C_{+,n}}$ are determined by the symplectic form

$$\begin{align}
\omega[A,A^{*}] & =-i.
\end{align}$$

which gives

$$\begin{align}
C_{R,n} & =\frac{1}{\sqrt{ kn }}, & n & >0, \\
C_{+,n} & =\frac{1}{\sqrt{ kn }}, & n & >0.
\end{align}$$

equivalently, if the horizon modes are written with the same phase convention $\displaystyle{e^{-in(t-\phi)}}$ as the outer-boundary modes, then the annihilation modes have $\displaystyle{n<0}$ and $\displaystyle{C_{+,n}=1/\sqrt{-kn}}$.

thus the flat connection can be written as

$$\begin{align}
A & =q_{r}\mathrm{d}\chi+q_{\phi}(\mathrm{d}\phi-\mathrm{d}t)+\sum _{n=1}^{\infty}\left(a_{R,n}\mathrm{d}\Lambda _{R,n}+a_{+,n}\mathrm{d}\Lambda _{+,n}+a^{\dagger}_{R,n}\mathrm{d}\Lambda ^{*}_{R,n}+a^{\dagger}_{+,n}\mathrm{d}\Lambda _{+,n}^{*}\right),
\end{align}$$

here we have ignored pure gauge redundancy that vanishes on both $\displaystyle{\Gamma _{R}}$ and $\displaystyle{\Gamma _{+}}$. 

---

for compact $\displaystyle{\mathrm{U}(1)}$, the angular zero mode is defined modulo large gauge transformations around the circle,

$$\begin{align}
q_{\phi} & \sim q_{\phi}+m, & m & \in \mathbb{Z},
\end{align}$$

so the gauge-invariant datum is the holonomy $\displaystyle{\exp(2\pi i q_{\phi})}$. the radial zero mode is unchanged by small gauge transformations vanishing on both boundary components; if large gauge transformations with different integer boundary values are also identified, then $\displaystyle{q_{r}}$ is identified by the corresponding integer shifts.

---

## symplectic form and Poisson brackets

insert the flat connection into the symplectic form, we obtain

$$\begin{align}
\Omega & =k\,\delta q_{r}\wedge \delta q_{\phi}-i\sum _{n=1}^{\infty}\left(\delta a_{R,n}\wedge \delta a_{R,n}^{\dagger}+\delta a_{+,n}\wedge \delta a_{+,n}^{\dagger}\right).
\end{align}$$

from which we can read out the Poisson brackets

$$\begin{align}
\{q_{r},q_{\phi}\} & =-\frac{1}{k}, \\
\{a_{R,n},a_{R,m}^{\dagger}\} & =-i\delta _{nm}, \\
\{a_{+,n},a_{+,m}^{\dagger}\} & =-i\delta _{nm}.
\end{align}$$

all other Poisson brackets vanish. equivalently, $\displaystyle{\{q_{\phi},kq_{r}\}=1}$. this is the braiding algebra between the radial Wilson line $\displaystyle{q_{r}}$ and the angular Wilson loop $\displaystyle{q_{\phi}}$

$$\begin{align}
\left[\hat{q}_{r},\hat{q}_{\phi}\right] & =-\frac{i}{k}.
\end{align}$$

the $\displaystyle{\mathrm{U}(1)}$ Kac-Moody algebras on the horizon and the outer boundary are obtained by defining, for $\displaystyle{n>0}$,

$$\begin{align}
J_{R,n} & =\sqrt{ kn }\,a_{R,n}, & J_{R,-n} & =\sqrt{ kn }\,a_{R,n}^{\dagger}, \\
J_{+,n} & =\sqrt{ kn }\,a_{+,n}, & J_{+,-n} & =\sqrt{ kn }\,a_{+,n}^{\dagger}.
\end{align}$$

then

$$\begin{align}
\{J_{R,n},J_{R,m}\} & =-ikn\delta _{n+m,0}, \\
\{J_{+,n},J_{+,m}\} & =-ikn\delta _{n+m,0}, \\
\{J_{R,n},J_{+,m}\} & =0.
\end{align}$$
