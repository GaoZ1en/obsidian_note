# problem 1

calculate the integral under dimensional regularization

$$\begin{align}
J(a,\Delta) & = \int \frac{\mathrm{d}^{4}l}{(2\pi)^{4}} \frac{l^{2}}{(l^{2}-\Delta+i\varepsilon)^{a}},\quad a\leqslant 3
\end{align}$$

## solution

Continue the integral to $d=4-2\epsilon$ dimensions and insert the usual scale $\mu$:

$$\begin{align}
J(a,\Delta) & = \mu ^{2\epsilon}\int \frac{\mathrm{d}^{d}l}{(2\pi )^{d}} \frac{l^{2}}{(l^{2}-\Delta+i\varepsilon)^{a}}.
\end{align}$$

By Lorentz invariance,

$$\begin{align}
\int \frac{\mathrm{d}^{d}l}{(2\pi )^{d}} \frac{l^{\mu}l^{\nu}}{(l^{2}-\Delta+i\varepsilon)^{a}} & = \frac{g^{\mu \nu}}{d}
\int \frac{\mathrm{d}^{d}l}{(2\pi )^{d}} \frac{l^{2}}{(l^{2}-\Delta+i\varepsilon)^{a}}.
\end{align}$$

Using the standard dimensional-regularization formula,

$$\begin{align}
\int \frac{\mathrm{d}^{d}l}{(2\pi )^{d}} \frac{l^{2}}{(l^{2}-\Delta+i\varepsilon)^{a}} & = \frac{i(-1)^{a-1}}{(4\pi )^{d/2}} \frac{d}{2}\frac{\Gamma \left(a-\frac{d}{2}-1\right)}{\Gamma(a)}
(\Delta-i\varepsilon)^{\frac{d}{2}+1-a}.
\end{align}$$

Therefore

$$\begin{align}
J(a,\Delta) & = \frac{i(-1)^{a-1}\mu ^{2\epsilon}}{(4\pi )^{2-\epsilon}} \frac{2-\epsilon}{\Gamma(a)}
\Gamma (a-3+\epsilon)
(\Delta-i\varepsilon)^{3-a-\epsilon}.
\end{align}$$

For the three cases $a\leqslant 3$ that contain divergences,

$$\begin{align}
J(1,\Delta)_{\mathrm{div}} & = \frac{i}{(4\pi )^{2}}\frac{\Delta ^{2}}{\epsilon}, \\
J(2,\Delta)_{\mathrm{div}} & = \frac{i}{(4\pi )^{2}}\frac{2\Delta}{\epsilon}, \\
J(3,\Delta)_{\mathrm{div}} & = \frac{i}{(4\pi )^{2}}\frac{1}{\epsilon}.
\end{align}$$

The omitted terms are finite after the $\overline{MS}$ subtraction.

# problem 2

consider a theory with Lagrangian

$$\begin{align}
\mathcal{L} & =\frac{1}{2}(\partial _{\mu}\phi _{0})^{2}-\frac{1}{2}m_{0}^{2}\phi _{0}^{2}+\bar{\psi}_{0}(i\gamma \cdot \partial-m_{f_{0}})\psi_{0}-\lambda_{0}\phi_{0}\bar{\psi}_{0}\psi_{0}
\end{align}$$

at one-loop level
1. calculate the self-energy 1PI functions for both the scalar and the fermion;
1. under dimensional regularization, discuss the 1-loop renormalization of mass and wave function

## solution

The Feynman rules are

$$\begin{align}
\text{scalar propagator:}\qquad & \frac{i}{p^{2}-m_{0}^{2}+i\varepsilon}, \\
\text{fermion propagator:}\qquad & \frac{i(\hat{p}+m_{f0})}{p^{2}-m_{f0}^{2}+i\varepsilon}, \\
\text{Yukawa vertex:}\qquad & -i\lambda _{0}.
\end{align}$$

The scalar self-energy comes from the closed fermion loop:

$$\begin{align}
i\Pi _{\phi}(p^{2}) & = -(-i\lambda _{0})^{2}
\int \frac{\mathrm{d}^{d}k}{(2\pi )^{d}} \operatorname{tr}\left[ \frac{i(\hat{k}+m_{f0})}{k^{2}-m_{f0}^{2}} \frac{i(\hat{k}+\hat{p}+m_{f0})}{(k+p)^{2}-m_{f0}^{2}} \right] \\
& = -4\lambda _{0}^{2}\int _{0}^{1}\mathrm{d}x
\int \frac{\mathrm{d}^{d}l}{(2\pi )^{d}} \frac{l^{2}+m_{f0}^{2}-x(1-x)p^{2}}
{\left[l^{2}-\Delta _{f}+i\varepsilon\right]^{2}},
\end{align}$$

where

$$\begin{align}
l & =k+xp, & \Delta _{f} & =m_{f0}^{2}-x(1-x)p^{2}.
\end{align}$$

Using the result of problem 1,

$$\begin{align}
i\Pi _{\phi}(p^{2})_{\mathrm{div}} & = -4\lambda _{0}^{2}\frac{i}{(4\pi )^{2}}\frac{1}{\epsilon}
\int _{0}^{1}\mathrm{d}x\,3\left[m_{f0}^{2}-x(1-x)p^{2}\right] \\
& = \frac{i\lambda _{0}^{2}}{(4\pi )^{2}}\frac{1}{\epsilon} \left(2p^{2}-12m_{f0}^{2}\right).
\end{align}$$

Equivalently,

$$\begin{align}
\Pi _{\phi}(p^{2})_{\mathrm{div}} & = \frac{\lambda _{0}^{2}}{8\pi ^{2}}\frac{p^{2}}{\epsilon} -\frac{3\lambda _{0}^{2}}{4\pi ^{2}}\frac{m_{f0}^{2}}{\epsilon}.
\end{align}$$

The fermion self-energy comes from a scalar and a fermion in the loop:

$$\begin{align}
-i\Sigma _{f}(\hat{p}) & = (-i\lambda _{0})^{2}
\int \frac{\mathrm{d}^{d}k}{(2\pi )^{d}} \frac{i(\hat{p}-\hat{k}+m_{f0})}{(p-k)^{2}-m_{f0}^{2}} \frac{i}{k^{2}-m_{0}^{2}} \\
& = \lambda _{0}^{2}\int _{0}^{1}\mathrm{d}x
\int \frac{\mathrm{d}^{d}l}{(2\pi )^{d}} \frac{(1-x)\hat{p}+m_{f0}}
{\left[l^{2}-\Delta _{\psi}+i\varepsilon\right]^{2}},
\end{align}$$

with

$$\begin{align}
\Delta _{\psi} & = xm_{f0}^{2}+(1-x)m_{0}^{2}-x(1-x)p^{2}.
\end{align}$$

Thus

$$\begin{align}
-i\Sigma _{f}(\hat{p})_{\mathrm{div}} & = \frac{i\lambda _{0}^{2}}{(4\pi )^{2}}\frac{1}{\epsilon}
\int _{0}^{1}\mathrm{d}x\left[(1-x)\hat{p}+m_{f0}\right] \\
& = \frac{i\lambda _{0}^{2}}{(4\pi )^{2}}\frac{1}{\epsilon} \left(\frac{1}{2}\hat{p}+m_{f0}\right).
\end{align}$$

Now introduce renormalized fields and masses by

$$\begin{align}
\phi _{0} & =Z_{\phi}^{1/2}\phi, & \psi _{0} & =Z_{\psi}^{1/2}\psi, \\
m_{0}^{2} & =m^{2}+\delta m_{\phi}^{2}, & m_{f0} & =m_{f}+\delta m_{f}.
\end{align}$$

The quadratic counterterm Lagrangian is

$$\begin{align}
\delta \mathcal{L}_{2} & = \frac{1}{2}\delta Z_{\phi}(\partial _{\mu}\phi)^{2} -\frac{1}{2}\delta m_{\phi}^{2}\phi ^{2} +\delta Z_{\psi}\bar{\psi}i\hat{\partial}\psi -\delta m_{f}\bar{\psi}\psi.
\end{align}$$

With this convention the counterterm insertions are

$$\begin{align}
\text{scalar:}\qquad & i(\delta Z_{\phi}p^{2}-\delta m_{\phi}^{2}), \\
\text{fermion:}\qquad & i(\delta Z_{\psi}\hat{p}-\delta m_{f}).
\end{align}$$

In the $\overline{MS}$ scheme, the pole parts are canceled by

$$\begin{align}
\delta Z_{\phi} & = -\frac{\lambda ^{2}}{8\pi ^{2}}\frac{1}{\epsilon}, & \delta m_{\phi}^{2} & = -\frac{3\lambda ^{2}m_{f}^{2}}{4\pi ^{2}}\frac{1}{\epsilon}, \\
\delta Z_{\psi} & = -\frac{\lambda ^{2}}{32\pi ^{2}}\frac{1}{\epsilon}, & \delta m_{f} & = \frac{\lambda ^{2}m_{f}}{16\pi ^{2}}\frac{1}{\epsilon}.
\end{align}$$

Only the pole terms are displayed; the finite parts depend on the renormalization scheme.

# problem 3

if $\displaystyle{4m_{f0}> m_{0}> 2m_{f 0}}$, the scalar will decay into an fermion-antifermion pair.
1. discuss the imaginary part of scalar self-energy
1. calculate the decay width at tree level, and verify the opitcal theorem.

## solution

Let $s=p^{2}$. The scalar two-point function has a branch cut for

$$\begin{align}
s & >4m_{f}^{2},
\end{align}$$

because the internal fermion and antifermion can go on shell. With the convention that the dressed scalar propagator is

$$\begin{align}
D(p) & = \frac{i}{p^{2}-m_{0}^{2}+\Pi _{\phi}(p^{2})+i\varepsilon},
\end{align}$$

the imaginary part above threshold is

$$\begin{align}
\operatorname{Im}\Pi _{\phi}(s) & = -\frac{\lambda ^{2}}{8\pi }s \left(1-\frac{4m_{f}^{2}}{s}\right)^{3/2}
\theta(s-4m_{f}^{2}).
\end{align}$$

The minus sign is the sign required by a positive decay width in this propagator convention.

At tree level, the decay amplitude is

$$\begin{align}
i\mathcal{M}(\phi \to f\bar{f}) & = -i\lambda \bar{u}(p_{1})v(p_{2}).
\end{align}$$

After summing over final fermion spins,

$$\begin{align}
\sum _{\mathrm{spins}}|\mathcal{M}|^{2} & = \lambda ^{2}\operatorname{tr}\left[ (\hat{p}_{1}+m_{f})(\hat{p}_{2}-m_{f}) \right] \\
& = 4\lambda ^{2}(p_{1}\cdot p_{2}-m_{f}^{2}) \\
& = 2\lambda ^{2}(m_{0}^{2}-4m_{f}^{2}),
\end{align}$$

where $p_{1}+p_{2}=p$ and $p^{2}=m_{0}^{2}$. The two-body phase space gives

$$\begin{align}
\Gamma(\phi \to f\bar{f}) & = \frac{1}{2m_{0}}
\int \mathrm{d}\Phi _{2}\sum _{\mathrm{spins}}|\mathcal{M}|^{2} \\
& = \frac{\lambda ^{2}m_{0}}{8\pi} \left(1-\frac{4m_{f}^{2}}{m_{0}^{2}}\right)^{3/2}.
\end{align}$$

Evaluating the imaginary part of the self-energy on shell,

$$\begin{align}
-\operatorname{Im}\Pi _{\phi}(m_{0}^{2}) & = \frac{\lambda ^{2}m_{0}^{2}}{8\pi} \left(1-\frac{4m_{f}^{2}}{m_{0}^{2}}\right)^{3/2} \\
& = m_{0}\Gamma(\phi \to f\bar{f}).
\end{align}$$

This is the optical theorem for the scalar two-point function: the absorptive part of the one-loop self-energy equals the total on-shell decay probability into the open fermion-antifermion channel.
