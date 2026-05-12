the action is

$$\begin{align}
S & =\int _{M} \mathrm{d}^{3}x\sqrt{ -g }\left( -\frac{1}{4}F_{\mu \nu}F^{\mu \nu}+\frac{k}{4\pi}\varepsilon ^{\mu \nu \rho}A_{\mu}\nabla _{\nu}A_{\rho} \right)
\end{align}$$

the asymptotic behavior of field components are chosen to be

$$\begin{align}
A^{t} & =\mathcal{O}(r^{-2}), & A^{r} & =\mathcal{O}(r^{-1}), & A^{\phi} & =\mathcal{O}(r^{-2})
\end{align}$$

take a variation of the action, we have

$$\begin{align}
\delta S & =\int _{M}\mathrm{d}^{3}x\sqrt{ -g }E^{\mu}\delta A_{\mu}+\theta|_{\Sigma _{f}}-\theta|_{\Sigma _{i}}+B|_{\Gamma} \\
E^{\mu} & =\nabla _{\nu}F^{\nu \mu}+\frac{k}{2\pi}\varepsilon ^{\nu \rho \mu}\nabla _{\nu}A_{\rho} \\
\theta & =\int _{\Sigma}\mathrm{d}^{2}x\sqrt{ \sigma }\tau _{\mu}\left(F^{\mu \rho}+\frac{k}{4\pi} \varepsilon ^{\mu \nu \rho}A_{\nu}\right)\delta A_{\rho} \\
B & =-\int _{\Gamma}\mathrm{d}^{2}x\sqrt{ -\gamma }n_{\mu}\left(F^{\mu \rho}+\frac{k}{4\pi}\varepsilon ^{\mu \nu \rho}A_{\nu}\right)\delta A_{\rho} \\
\implies \omega & =\int _{\Sigma}\mathrm{d}^{2}x\sqrt{ \sigma }\tau _{\mu}\left(\delta F^{\mu \rho}+\frac{k}{4\pi}\varepsilon ^{\mu \nu \rho}\delta A_{\nu}\right)\wedge \delta A_{\rho}
\end{align}$$

for simplicity, we will assume $\displaystyle{k>0}$ in the following discussion.

## solutions

define the operator

$$\begin{align}
\mathcal{D}_{\mu}^{~\nu}A_{\nu} & =\varepsilon _{\mu}^{~\nu \rho}\nabla _{\nu}A_{\rho}
\end{align}$$

and the eom can be decomposed into

$$\begin{align}
\mathcal{D}\left( \mathcal{D}+\frac{k}{2\pi} \right)A & =0 \\
\implies \mathcal{D}A=0\text{ or }\left( \mathcal{D}+\frac{k}{2\pi} \right)A & =0
\end{align}$$

therefore we have four branches of solutions

1. $\displaystyle{(h,\bar{h})=(0,0)}$, $\displaystyle{\psi ^{\mu}_{(0,0)}=0}$, trivial vacuum.
2. $\displaystyle{(h,\bar{h})=(1,0)}$, $\displaystyle{\psi _{(1,0)}^{\mu}=C_{(1,0)} \frac{e^{-2it}}{1+r^{2}}\bar{\xi}^{\mu}_{1}}$ with desendants $\displaystyle{\psi _{n}^{\mu}=C_{n}\mathcal{L}_{\xi _{-1}}^{n}\psi _{(1,0)}^{\mu}}$
3. $\displaystyle{(h,\bar{h})=(0,1)}$, $\displaystyle{\psi ^{\mu}_{(0,1)}=C_{(0,1)} \frac{e^{-2it}}{1+r^{2}}\xi _{1}^{\mu}}$ with descendants $\displaystyle{\psi _{\bar{n}}^{\mu}=C_{\bar{n}}\mathcal{L}_{\bar{\xi}_{-1}}^{\bar{n}}\psi _{(0,1)}^{\mu}}$
4. $\displaystyle{(h,\bar{h})=\left(\frac{k}{4\pi},1+\frac{k}{4\pi}\right)}$, $\displaystyle{\psi ^{\mu}_{\text{bulk}}= C_{\text{bulk}} \frac{e^{-i(2+k/2\pi)t}}{(1+r^{2})^{1+k/4\pi}}\xi_{1}^{\mu}}$ with descendants $\displaystyle{\psi _{n\bar{n}}^{\mu}=C_{n\bar{n}}\mathcal{L}_{\xi_{-1}}^{n}\mathcal{L}_{\bar{\xi}_{-1}}^{\bar{n}}\psi _{\text{bulk}}^{\mu}}$

the normalization constants are determined by the symplectic form as

$$\begin{align}
\omega[A,A^{*}] & =-i
\end{align}$$

which gives

$$\begin{align}
C_{(1,0)} & =\frac{2}{\sqrt{ k }} & C_{n} & = \sqrt{\frac{1}{n!(n+1)!}} \\
C_{\text{bulk}} & =\sqrt{\frac{2(k+2\pi)}{\pi k}} & C_{n\bar{n}} & =\sqrt{ \frac{1}{n!\left( \frac{k}{2\pi} \right)_{n}\bar{n}!\left( 2+\frac{k}{2\pi} \right)_{\bar{n}}} }
\end{align}$$

and when $\displaystyle{k>0}$, the $\displaystyle{(0,1)}$ branch are not normalizable. 

## boundary condition

by the same logic as [[Articles/Quantization in AdS3/Chern-Simons/U(1) formalism|U(1) formalism]], we impose the boundary action

$$\begin{align}
S_{\text{bdy}} & =\frac{k}{4\pi}\int _{\Gamma}\mathrm{d}^{2}xA_{+}A_{-}
\end{align}$$

to ensure the well-definedness of variational principle, and neglect the $\displaystyle{(0,1)}$ branch.

## quantization

we write

$$\begin{align}
A^{\mu} & =\sum _{n=0}^{\infty} \left(a_{n}\psi _{n}^{\mu}+a^{\dagger}_{n}\psi _{n}^{*\mu}\right)+\sum _{n,\bar{n}=0}^{\infty}\left(a_{n\bar{n}}\psi _{n\bar{n}}^{\mu}+a^{\dagger}_{n\bar{n}}\psi _{n\bar{n}}^{*\mu}\right)
\end{align}$$

the symplectic form becomes

$$\begin{align}
\omega & =-i\sum ^{\infty}_{n=0} \delta a_{n}\wedge \delta a^{\dagger}_{n}-i\sum ^{\infty}_{n,\bar{n}=0} \delta a_{n\bar{n}}\wedge \delta a^{\dagger}_{n\bar{n}}
\end{align}$$

by the same logic as [[Articles/Quantization in AdS3/Chern-Simons/U(1) formalism|U(1) formalism]], we recover the $\displaystyle{\mathrm{U}(1)}$ Kac-Moody algebra at the boundary as

$$\begin{align}
\left\{\tilde{H}_{m},\tilde{H}_{n}\right\} & =km\delta _{m+n,0}
\end{align}$$

