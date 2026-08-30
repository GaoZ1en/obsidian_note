# 01. Geometry and spinor conventions

## 1. Background and regulated region

Let

$$
f(r)=1+r^2,
\qquad
ds^2=-fdt^2+\frac{dr^2}{f}+r^2(d\vartheta^2+\sin^2\vartheta\,d\varphi^2).
$$

The regulated time slab is

$$
M_R=\{t_i\leq t\leq t_f,\ 0\leq r\leq R\}.
$$

Its boundary consists of $\Sigma_{f,R}$, $-\Sigma_{i,R}$, and the timelike cylinder $\Gamma_R$. The future unit normal to a constant-time slice and the outward unit normal to $\Gamma_R$ are

$$
\tau^\mu=f^{-1/2}(\partial_t)^\mu,
\qquad
n^\mu=f^{1/2}(\partial_r)^\mu.
$$

At the corner $S_R^2=\Sigma_R\cap\Gamma_R$, these normals are orthogonal. The induced measures are

$$
\sqrt{-g}=r^2\sin\vartheta,
\qquad
\sqrt\sigma=\frac{r^2\sin\vartheta}{\sqrt f},
\qquad
\sqrt{-\gamma}=r^2\sqrt f\sin\vartheta,
\qquad
\sqrt h=r^2\sin\vartheta.
$$

## 2. Orthonormal frame

Use the coframe

$$
e^{\hat0}=\sqrt f\,dt,
\qquad
e^{\hat r}=\frac{dr}{\sqrt f},
\qquad
e^{\hat\vartheta}=r\,d\vartheta,
\qquad
e^{\hat\varphi}=r\sin\vartheta\,d\varphi.
$$

The nonzero connection one-forms needed below can be chosen as

$$
\omega^{\hat0}{}_{\hat r}=r\,dt,
\qquad
\omega^{\hat\vartheta}{}_{\hat r}=\sqrt f\,d\vartheta,
\qquad
\omega^{\hat\varphi}{}_{\hat r}=\sqrt f\sin\vartheta\,d\varphi,
\qquad
\omega^{\hat\varphi}{}_{\hat\vartheta}=\cos\vartheta\,d\varphi,
$$

with the remaining components fixed by $\omega_{\hat a\hat b}=-\omega_{\hat b\hat a}$. They solve $de^{\hat a}+\omega^{\hat a}{}_{\hat b}\wedge e^{\hat b}=0$.

## 3. Gamma matrices and conjugation

Flat gamma matrices obey

$$
\{\gamma^{\hat a},\gamma^{\hat b}\}=2\eta^{\hat a\hat b},
\qquad
\eta_{\hat a\hat b}=\operatorname{diag}(-1,1,1,1),
\qquad
\gamma^{\hat a\hat b}=\frac12[\gamma^{\hat a},\gamma^{\hat b}].
$$

An explicit representation is

$$
\gamma^{\hat0}=\begin{pmatrix}-i\mathbf1_2&0\\0&i\mathbf1_2\end{pmatrix},
\qquad
\gamma^{\hat k}=\begin{pmatrix}0&-i\sigma^k\\i\sigma^k&0\end{pmatrix},
$$

so

$$
(\gamma^{\hat0})^\dagger=-\gamma^{\hat0},
\qquad
(\gamma^{\hat k})^\dagger=\gamma^{\hat k}.
$$

The Dirac conjugate is

$$
\bar\psi=\psi^\dagger\gamma^{\hat0}.
$$

In the classical variational problem $\psi$ and $\bar\psi$ are independent Grassmann-odd fields. The conjugation relation selects the Lorentzian real slice after variation. The positive one-particle product is

$$
(u,v)_\Sigma=\int_\Sigma d^3x\sqrt\sigma\,\bar u\,\tau_\mu\gamma^\mu v
=\int_\Sigma d^3x\sqrt\sigma\,u^\dagger v.
$$

## 4. Spin derivative and Dirac operator

Our spin derivative is

$$
\nabla_\mu\psi=\partial_\mu\psi+\frac14\omega_{\mu\hat a\hat b}\gamma^{\hat a\hat b}\psi,
\qquad
\nabla_\mu\bar\psi=\partial_\mu\bar\psi-\frac14\omega_{\mu\hat a\hat b}\bar\psi\gamma^{\hat a\hat b}.
$$

Direct contraction gives

$$
\boxed{
\not\!\nabla
=\frac{\gamma^{\hat0}}{\sqrt f}\partial_t
+\gamma^{\hat r}\left(\sqrt f\,\partial_r+\frac{\sqrt f}{r}+\frac{r}{2\sqrt f}\right)
+\frac{\gamma^{\hat\vartheta}}{r}\left(\partial_\vartheta+\frac12\cot\vartheta\right)
+\frac{\gamma^{\hat\varphi}}{r\sin\vartheta}\partial_\varphi .
}
$$

The field equations are

$$
(\not\!\nabla-m)\psi=0,
\qquad
\bar\psi(\overleftarrow{\not\!\nabla}+m)=0.
$$

At large $r$,

$$
\not\!\nabla
=\gamma^{\hat r}\left(r\partial_r+\frac32\right)
+\frac1r\not\!D_{\mathbb R\times S^2}+O(r^{-2}\partial_r)+O(r^{-3}),
$$

where

$$
\not\!D_{\mathbb R\times S^2}
=\gamma^{\hat0}\partial_t
+\gamma^{\hat\vartheta}\left(\partial_\vartheta+\frac12\cot\vartheta\right)
+\frac{\gamma^{\hat\varphi}}{\sin\vartheta}\partial_\varphi.
$$

## 5. Conformal radial coordinate and projector warning

Set $r=\tan\rho$, $0\leq\rho<\pi/2$, and $x=\pi/2-\rho$. Then

$$
ds^2=\sec^2\rho\left(-dt^2+d\rho^2+\sin^2\rho\,d\Omega_2^2\right).
$$

The defining function $\Omega=\cos\rho\sim r^{-1}$ increases inward. Hence $\widetilde n=d\Omega$ used in conformal-completion literature is inward, while $n\propto\partial_r$ here is outward. Therefore

$$
\widetilde\gamma^{\hat n}=-\gamma^{\hat r}
$$

at the boundary. Every comparison of $P_\pm$ labels must include this minus sign.

## Verification

- **Verified:** `verification/geometry-and-asymptotics.wl` computes the Christoffel symbols and spin connection from the tetrad, verifies antisymmetry, contracts the spin connection into the displayed Dirac operator, and checks the explicit Clifford and Hermiticity relations. All residuals vanish.
- **Assumptions:** the diagonal tetrad patch excludes the usual coordinate singularities of spherical coordinates; spinors are glued across those patches with the standard spin structure on $S^2$.
- **Not verified:** no claim about fluctuating vierbeins or torsion is made.
