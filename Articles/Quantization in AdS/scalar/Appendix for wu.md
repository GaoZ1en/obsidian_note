## Inspiring Some Regularizations of the Model

We suggest that the Lagrangian formalism can inspire some regularizations of the model. To do this, we truncate the off-shell mode expansions of the dynamical fields, substitute the truncated expansions into the action, and vary the remaining time-dependent coefficients. For example, we take the model in Section 7.4.1, set $\displaystyle{d=2}$ and consider the following three regularizations. The details are given in Appendix E.

First, consider $\displaystyle{0<\Delta<1}$. For each angular momentum $\displaystyle{m}$, we add one slow-falloff function $\displaystyle{s_{m}}$ to $\displaystyle{N_{m}}$ fast-falloff modes $\displaystyle{f_{nm}}$:

$$\begin{align}
\phi _{N}(x) & =\sum _{m \in \mathbb{Z}}\dfrac{e^{im\varphi}}{\sqrt{ 2\pi }}\left[ q_{s,m}(t)s_{m}(r)+\sum ^{N_{m}-1}_{n=0}q_{n,m}(t)f_{nm}(r) \right]
\end{align}$$

substitution into the action produces a quadratic action

$$\begin{align}
S_{N} & = \dfrac{1}{2}\int _{t_{i}}^{t_{f}} \mathrm{d}t \sum _{m \in \mathbb{Z}}(\dot{q}^{\dagger}_{m}G_{m,N_{m}}\dot{q}_{m}-q^{\dagger}_{m}K_{m,N_{m}}q_{m})
\end{align}$$

with $\displaystyle{q_{m} =(q_{s,m},q_{0,m},\dots,q_{N_{m}-1,m})^{T}}$. the matrices $\displaystyle{G_{m,N_{m}}}$ and $\displaystyle{K_{m,N_{m}}}$ are given in Appendix E. for each $\displaystyle{m}$, the generalized eigenvalues $\displaystyle{\omega ^{2}}$ determined by $\displaystyle{K_{m,N_{m}}v=\omega ^{2}G_{m,N_{m}}v}$ converge to $\displaystyle{(\Delta+|m|+2n)^{2}}$ with $\displaystyle{n=0,1,\dots}$ as $\displaystyle{N_{m}\to \infty}$

Next, we expand the field using only slow-falloff modes,

$$\begin{align}
\phi _{N}(x) & =\sum _{m\in \mathbb{Z}}\dfrac{e^{im\varphi}}{\sqrt{ 2\pi }}\sum ^{N_{m}}_{n=0}q_{n,m}(t)s_{nm}(r)
\end{align}$$

and impose the constraint

$$\begin{align}
\lim_{ r \to \infty } r^{\Delta}\phi _{N} & =0,
\end{align}$$

substitution into the same action gives

$$\begin{align}
S_{N} & =\dfrac{1}{2}\int _{t_{i}}^{t_{f}}\mathrm{d}t\sum _{m \in \mathbb{Z}}\sum ^{N_{m}}_{n=0}\left[|\dot{q}_{n,m}|^{2}-(\Delta+|m|+2n)^{2}|q_{n,m}|^{2}\right]
\end{align}$$

varying the coefficients subject to the constraint gives a system of coupled oscillators. for each $\displaystyle{m}$, their squared frequencies $\displaystyle{\omega ^{2}}$ converge to $\displaystyle{(2-\Delta+|m|+2n)^{2}}$, with $\displaystyle{n=0,1,\dots}$, as $\displaystyle{N_{m}\to \infty}$.

Finally, we expand the field in fast-falloff modes of a reference mass $\displaystyle{\mu _{0}}$,

$$\begin{align}
\phi _{N}(x) & =\sum _{m\in \mathbb{Z}} \dfrac{e^{im\varphi}}{\sqrt{ 2\pi }}\sum ^{N_{m}-1}_{n=0}q_{n,m}(t)f^{(0)}_{nm}(r)
\end{align}$$

where $\displaystyle{\Delta _{0}=1+\sqrt{ 1+\mu _{0}^{2} }}$. Substitution into the action with mass $\displaystyle{\mu}$ gives

$$\begin{align}
S_{N} & =\dfrac{1}{2}\int _{t_{i}}^{t_{f}} \mathrm{d}t\sum _{m\in \mathbb{Z}}[\dot{q}^{\dagger}_{m}\dot{q}_{m}-q^{\dagger}_{m}\Omega ^{2}_{m,N_{m}}q_{m}]
\end{align}$$

with $\displaystyle{q_{m}=(q_{0,m},\dots,q_{N_{m}-1,m})^{T}}$ and

$$\begin{align}
(\Omega ^{2}_{m,N_{m}})_{ij} & =(\Delta _{0}+|m|+2i)^{2}\delta _{ij}+(\mu ^{2}-\mu _{0}^{2})\int _{0}^{\infty}\mathrm{d}r rf^{(0)}_{im}(r)f^{(0)}_{jm}(r)
\end{align}$$

for $\displaystyle{\mu ^{2},\mu _{0}^{2}>-1}$ and each $\displaystyle{m}$, the eigenvalues of $\displaystyle{\Omega ^{2}_{m,N_{m}}}$ converge to $\displaystyle{(\Delta+|m|+2n)^{2}}$, with $\displaystyle{\Delta=1+\sqrt{ 1+\mu ^{2} }}$ and $\displaystyle{n=0,1,\dots}$, as $\displaystyle{N_{m}\to \infty}$. These examples illustrate how truncating the off-shell field space at the level of the action can yield regularized systems whose spectra approach those of the corresponding continuum theories as the mode cutoffs are removed.

# Finite-Mode Regularizations in Global $\displaystyle{\mathrm{AdS}_{3}}$

For $\displaystyle{0<\Delta<1}$, the fast- and slow-falloff modes used in Section 7.4.2 are

$$\begin{align}
f_{nm}(r) & = \mathcal{N}_{nm} (2-\Delta) r^{|m|}(1+r^{2})^{-(2-\Delta+|m|)/2}P_{n}^{(1-\Delta,|m|)}\left( \dfrac{r^{2}-1}{r^{2}+1} \right) \\
s_{nm}(r) & =\mathcal{N}_{nm}(\Delta) r^{|m|}(1+r^{2})^{-(\Delta+|m|)/2}P_{n}^{(\Delta-1,|m|)}\left(\dfrac{r^{2}-1}{r^{2}+1}\right)
\end{align}$$

where $\displaystyle{n=0,1,\dots}$, $\displaystyle{m\in \mathbb{Z}}$, and

$$\begin{align}
\mathcal{N}_{nm}(a) & =\sqrt{ 2(2n+a+|m|) \dfrac{(n+a)_{|m|}}{(n+1)_{|m|}} }
\end{align}$$

here $\displaystyle{P_{n}^{(\alpha,\beta)}}$ is a Jacobi polynomial and $\displaystyle{(x)_{k}}$ is the rising Pochhammer symbol.

## Fast Modes with One Slow-Falloff Function

For the first regularization in Section 7.4.2, the matrices in the action have entries

$$\begin{align}
G_{ss} & =\int _{0}^{\infty}\mathrm{d}r \dfrac{r}{1+r^{2}}s_{m}^{2}, \\
G_{sn}=G_{ns} & =\int _{0}^{\infty} \mathrm{d}r \dfrac{r}{1+r^{2}}s_{m}f_{nm}, \\
G_{nn'} & =\delta _{nn'}, \\
K_{ss} & =\lim_{ R \to \infty }\left\{\int _{0}^{R}\mathrm{d}r\left[r(1+r^{2})(s'_{m})^{2}+\left( \dfrac{m^{2}}{r}+\mu ^{2}r \right)s_{m}^{2}\right]+\Delta R\sqrt{ 1+R^{2} }s_{m}(R)^{2}\right\}, \\
K_{sn}=K_{ns} & =\lim_{ R \to \infty } \left\{\int _{0}^{R}\mathrm{d}r\left[r(1+r^{2})s'_{m}f'_{nm}+\left(\dfrac{m^{2}}{r}+\mu ^{2}r\right)s_{m}f_{nm}\right]+\Delta R\sqrt{ 1+R^{2} }s_{m}(R)f_{nm}(R)\right\}, \\
K_{nn'} & =(2-\Delta+|m|+2n)^{2}\delta _{nn'}
\end{align}$$

here the labels $\displaystyle{m}$ and $\displaystyle{N_{m}}$ on $\displaystyle{G}$ and $\displaystyle{K}$ are suppressed, and $\displaystyle{n,n'=0,\dots,N_{m}-1}$. for simplicity, we choose $\displaystyle{s_{m}(r)=r^{|m|}(1+r^{2})^{-(\Delta+|m|)/2}}$ (footnote). for this choice, the remaining matrix entries are

$$\begin{align}
G_{ss} & =\dfrac{\Gamma(\Delta)\Gamma(|m|+1)}{2\Gamma(\Delta+|m|+1)}, \\
G_{sn} & =\dfrac{\mathcal{N}_{nm}(2-\Delta)(1-\Delta)_{n}}{2n!(n+|m|+1)}, \\
K_{ss} & =(\Delta+|m|)^{2}G_{ss}, \\
K_{sn} & =(\Delta+|m|)^{2}G_{sn}.
\end{align}$$

Here $\displaystyle{\mathcal{N}_{nm}}$ is the normalization factor defined in (reference).

Varying the coefficients in $\displaystyle{S_{N}}$ gives the equations of motion

$$\begin{align}
G_{m,N_{m}}\ddot{q}_{m}+K_{m,N_{m}}q_{m} & =0.
\end{align}$$

Setting $\displaystyle{q_{m}(t)=ve^{-i\omega t}}$, we obtain the generalized eigenvalue problem

$$\begin{align}
K_{m,N_{m}}v & =\omega ^{2}G_{m,N_{m}}v
\end{align}$$

using the matrix entries above, the characteristic determinant becomes

$$\begin{align}
\det(K-\omega ^{2}G) & =[(\Delta+|m|)^{2}-\omega ^{2}] \\
 & \times\left\{G_{ss}\prod ^{N_{m}-1}_{n=0}[(2-\Delta+|m|+2n)^{2}-\omega ^{2}]\right. \\
 & \left.-[(\Delta+|m|)^{2}-\omega ^{2}]\sum ^{N_{m}-1}_{n=0}G_{sn}^{2}\prod ^{N_{m}-1}_{j=0,j\neq n}[(2-\Delta+|m|+2j)^{2}-\omega ^{2}]\right\}.
\end{align}$$

thus one eigenvalue is exactly $\displaystyle{(\Delta+|m|)^{2}}$, while the remaining eigenvalues satisfy

$$\begin{align}
G_{ss} & =[(\Delta+|m|)^{2}-\omega ^{2}]\sum ^{N_{m}-1}_{n=0} \dfrac{G_{sn}^{2}}{(2-\Delta+|m|+2n)^{2}-\omega ^{2}}
\end{align}$$

as $\displaystyle{N_{m}\to \infty}$, the remaining eigenvalues converge to $\displaystyle{(\Delta+|m|+2n)^{2}}$, $\displaystyle{n=1,2,\dots}$, recovering the slow-falloff spectrum together with the exact lowest eigenvalue.

## Slow Modes with a Constraint

For the second regularization in Section 7.4.2, the constraint becomes

$$\begin{align}
\sum ^{N_{m}}_{n=0} \dfrac{\mathcal{N}_{nm}(\Delta)(\Delta)_{n}}{n!}q_{n,m}(t) & =0
\end{align}$$

introducing a Lagrange multiplier $\displaystyle{b_{m}(t)}$, variation of the action gives the equations of motion

$$\begin{align}
\ddot{q}_{n,m}+(\Delta+|m|+2n)^{2}q_{n,m}+\dfrac{\mathcal{N}_{nm}(\Delta)(\Delta)_{n}}{n!}b_{m} & =0
\end{align}$$

setting $\displaystyle{q_{n,m}(t)=v_{n}e^{-i\omega t}}$ and $\displaystyle{b_{m}(t)=be^{-i\omega t}}$, the equations of motion become

$$\begin{align}
[(\Delta+|m|+2n)^{2}-\omega ^{2}]v_{n}+\dfrac{\mathcal{N}_{nm}(\Delta)(\Delta)_{n}}{n!}b & =0
\end{align}$$

and hence

$$\begin{align}
v_{n} & =-\dfrac{\mathcal{N}_{nm}(\Delta)(\Delta)_{n}}{n![(\Delta+|m|+2n)^{2}-\omega ^{2}]}b
\end{align}$$

substituting this into the constraint, we obtain

$$\begin{align}
-b\sum ^{N_{m}}_{n=0} \dfrac{\mathcal{N}_{nm}(\Delta)^{2}(\Delta _{n})^{2}}{(n!)^{2}[(\Delta+|m|+2n)^{2}-\omega ^{2}]} & =0
\end{align}$$

for a nonzero mode, $\displaystyle{b\neq 0}$, so the sum must vanish, determining the $\displaystyle{N_{m}}$ eigenvalues of the constrained system. as $\displaystyle{N_{m}\to \infty}$, they converge to $\displaystyle{(2-\Delta+|m|+2n)^{2}}$, $\displaystyle{n=0,1,\dots}$, recovering the fast-falloff spectrum.

## Modes of a Reference Mass

For the third regularization in Section 7.4.2, the reference modes are

$$\begin{align}
f^{(0)}_{nm}(r) & =\mathcal{N}_{nm}(\Delta _{0})r^{|m|}(1+r^{2})^{-(\Delta _{0}+|m|)/2}P_{n}^{(\Delta _{0}-1,|m|)}\left(\dfrac{r^{2}-1}{r^{2}+1}\right)
\end{align}$$

where $\displaystyle{\Delta _{0}=1+\sqrt{ 1+\mu _{0}^{2} }}$. The integral in the matrix $\displaystyle{\Omega ^{2}_{m,N_{m}}}$ is

$$\begin{align}
\int _{0}^{\infty}\mathrm{d}rrf^{(0)}_{im}(r)f^{(0)}_{jm}(r) & =\dfrac{\mathcal{N}_{im}(\Delta _{0})\mathcal{N}_{jm}(\Delta _{0})(\Delta _{0})_{i}}{2i!} \dfrac{\Gamma(\Delta _{0}-1)\Gamma(j+|m|+1)}{\Gamma(\Delta _{0}+j+|m|)}, & i\leqslant j
\end{align}$$

varying the coefficients in $\displaystyle{S_{N}}$ gives

$$\begin{align}
\ddot{q}_{m}+\Omega ^{2}_{m,N_{m}}q_{m} & =0
\end{align}$$

setting $\displaystyle{q_{m}(t)=ve^{-i\omega t}}$, we obtain

$$\begin{align}
(\Omega ^{2}_{m,N_{m}}-\omega ^{2}I)v & =0
\end{align}$$

for $\displaystyle{\mu ^{2},\mu _{0}^{2}> -1}$, the eigenvalues converge to $\displaystyle{(\Delta+|m|+2n)^{2}}$, $\displaystyle{n=0,1,\dots}$, as $\displaystyle{N_{m}\to \infty}$, where $\displaystyle{\Delta=1+\sqrt{ 1+\mu ^{2} }}$. thus the regularization recovers the fast-falloff spectrum at the target mass.
