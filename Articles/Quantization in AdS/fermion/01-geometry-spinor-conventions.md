# 01. Geometry and Spinor Conventions

## 1. Background and Regulated Region

Let

$$\begin{align}
f(r) & =1+r^{2} & \mathrm{d}s^{2} & =-(1+r^{2})\mathrm{d}t^{2}+\dfrac{\mathrm{d}r^{2}}{1+r^{2}}+r^{2}(\mathrm{d}\vartheta ^{2}+\sin ^{2}\vartheta \mathrm{d}\varphi ^{2})
\end{align}$$

the regulated spacetime region is

$$\begin{align}
M_{R} & =\left\{t_{i}\leqslant t\leqslant t_{f},0\leqslant r\leqslant R\right\}
\end{align}$$

Its boundary consists of $\Sigma_{f,R}$, $-\Sigma_{i,R}$, and the timelike cylinder $\Gamma_R$. The future unit normal to a constant-time slice and the outward unit normal to $\Gamma_R$ are

$$\begin{align}
\tau ^{\mu} & =(1+r^{2})^{-1/2}(\partial _{t})^{\mu}, & n^{\mu} & =(1+r^{2})^{1/2}(\partial _{r})^{\mu}
\end{align}$$

At the corner $\displaystyle{\partial \Sigma _{R}=\Sigma _{R}\cap \Gamma _{R}}$, these normals are orthogonal. The induced measures are

$$\begin{align}
\sqrt{ -g } & =r^{2}\sin \vartheta, & \sqrt{ \sigma } & =r^{2}(1+r^{2})^{-1/2}\sin \vartheta, & \sqrt{ -\gamma } & =r^{2}(1+r^{2})^{1/2}\sin \vartheta, & \sqrt{ h }=r^{2}\sin \vartheta
\end{align}$$

## 2. Orthonormal Frame

Use the coframe

$$\begin{align}
e^{\hat{t}} & =(1+r^{2})^{1/2}\mathrm{d}t, & e^{\hat{r}} & =(1+r^{2})^{-1/2}\mathrm{d}r, & e^{\hat{\vartheta}} & =r\mathrm{d}\vartheta, & e^{\hat{\varphi}} & =r\sin \vartheta \mathrm{d}\varphi
\end{align}$$

the nonzero connection 1-forms needed below can be chosen as

$$\begin{align}
\omega ^{\hat{t}}_{~\hat{r}} & =r\mathrm{d}t, & \omega ^{\hat{\vartheta}}_{~\hat{r}} & =(1+r^{2})^{1/2}\mathrm{d}\vartheta, & \omega ^{\hat{\varphi}}_{~\hat{r}} & =(1+r^{2})^{1/2}\sin \vartheta \mathrm{d}\varphi, & \omega ^{\hat{\varphi}}_{~\hat{\vartheta}} & =\cos \vartheta \mathrm{d}\varphi
\end{align}$$

with the remaining components fixed by $\displaystyle{\omega _{\hat{a}\hat{b}}=-\omega _{\hat{b}\hat{a}}}$. They solve $\displaystyle{\mathrm{d}e^{\hat{a}}+\omega ^{\hat{a}}_{~\hat{b}}\wedge e^{\hat{b}}}$.

## 3. Gamma Matrices and Conjugation

Flat gamma matrices obey

$$\begin{align}
\left\{\gamma ^{\hat{a}},\gamma ^{\hat{b}}\right\} & =2\eta ^{\hat{a}\hat{b}}, & \eta _{\hat{a}\hat{b}} & =\mathrm{diag}(-1,1,1,1), & \gamma ^{\hat{a}\hat{b}} & =\dfrac{1}{2}[\gamma ^{\hat{a}},\gamma ^{\hat{b}}]
\end{align}$$

An explicit representation is

$$\begin{align}
\gamma ^{\hat{t}} & =\begin{pmatrix}
-i\mathbf{1}_{2} & 0 \\
0 & i\mathbf{1}_{2}
\end{pmatrix}, & \gamma ^{\hat{k}} & =\begin{pmatrix}
0 & -i\sigma ^{k} \\
i\sigma ^{k} & 0
\end{pmatrix}
\end{align}$$

so

$$\begin{align}
(\gamma ^{\hat{t}}) & =-\gamma ^{\hat{t}}, & (\gamma ^{\hat{k}})^{\dagger} & =\gamma ^{\hat{k}}
\end{align}$$

The Dirac conjugate is

$$\begin{align}
\bar{\psi} & =\psi ^{\dagger}\gamma ^{\hat{t}}
\end{align}$$

In the classical variational problem $\psi$ and $\bar\psi$ are independent Grassmann-odd fields. The conjugation relation selects the Lorentzian real slice after variation. The positive one-particle product is

$$\begin{align}
(u,v)_{\Sigma} & =\int _{\Sigma}\mathrm{d}^{3}x\sqrt{ \sigma }\bar{u}\tau _{\mu}\gamma ^{\mu}v=\int _{\Sigma}\mathrm{d}^{3}x\sqrt{ \sigma }u^{\dagger}v
\end{align}$$

this should be reproduced via later discussed covariant phase space formalism.

## 4. Spin Derivative and Dirac Operator

Our spin derivative is

$$\begin{align}
\nabla _{\mu}\psi & =\partial _{\mu}\psi+\dfrac{1}{4}\omega _{\mu \hat{a}\hat{b}}\gamma ^{\hat{a}\hat{b}}\psi \\
\nabla _{\mu}\bar{\psi} & =\partial _{\mu}\bar{\psi}-\dfrac{1}{4}\omega _{\mu \hat{a}\hat{b}}\bar{\psi}\gamma ^{\hat{a}\hat{b}}
\end{align}$$

Direct contraction gives

$$\begin{align}
\gamma ^{\mu}\nabla _{\mu} & =\gamma ^{\hat{t}}(1+r^{2})^{-1/2}\partial _{t}+\gamma ^{\hat{r}}\left((1+r^{2})^{1/2}\partial _{r}+r^{-1}(1+r^{2})^{1/2}+\dfrac{1}{2}r(1+r^{2})^{-1/2}\right) \\
 & +\dfrac{\gamma ^{\hat{\vartheta}}}{r}\left( \partial _{\vartheta}+\dfrac{1}{2}\cot \vartheta \right)+\dfrac{\gamma ^{\hat{\varphi}}}{r\sin \vartheta}\partial _{\varphi}
\end{align}$$

The field equations are

$$\begin{align}
(\gamma ^{\mu}\nabla _{\mu}-m)\psi & =0, & \bar{\psi}(\gamma ^{\mu}\overleftarrow{\nabla}_{\mu}+m) & =0
\end{align}$$

At large $r$,

$$\begin{align}
\gamma ^{\mu}\nabla _{\mu} & =\gamma ^{\hat{r}}\left(r\partial _{r}+\dfrac{3}{2}\right)+\dfrac{1}{r}\gamma ^{\mu}D_{\mu,\mathbb{R}\times S^{2}}+\mathcal{O}(r^{-3})
\end{align}$$

where

$$\begin{align}
\gamma ^{\mu}D_{\mu,\mathbb{R}\times S^{2}} & =\gamma ^{\hat{t}}\partial _{t}+\gamma ^{\hat{\vartheta}}\left( \partial _{\vartheta}+\dfrac{1}{2}\cot \vartheta \right)+\dfrac{\gamma ^{\hat{\varphi}}}{\sin \vartheta}\partial _{\varphi}
\end{align}$$

## 5. Conformal Radial Coordinate and Projector Warning

Set $r=\tan\rho$, $0\leq\rho<\pi/2$, and $x=\pi/2-\rho$. Then

$$\begin{align}
ds^2=\sec^2\rho\left(-dt^2+d\rho^2+\sin^2\rho\,d\Omega_2^2\right).
\end{align}$$

The defining function $\Omega=\cos\rho\sim r^{-1}$ increases inward. Hence $\widetilde n=d\Omega$ used in conformal-completion literature is inward, while $n\propto\partial_r$ here is outward. Therefore

$$\begin{align}
\widetilde\gamma^{\hat n}=-\gamma^{\hat r}
\end{align}$$

at the boundary. Every comparison of $P_\pm$ labels must include this minus sign.

## Verification

- **Verified:** `verification/geometry-and-asymptotics.wl` computes the Christoffel symbols and spin connection from the tetrad, verifies antisymmetry, contracts the spin connection into the displayed Dirac operator, and checks the explicit Clifford and Hermiticity relations. All residuals vanish.
