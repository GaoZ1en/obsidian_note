take $\displaystyle{N=N_{1}+N_{2}}$ lattice sites with spacing $\displaystyle{\varepsilon}$. set $\displaystyle{C=N\varepsilon}$. the periodic lattice Hamiltonian is given by

$$\begin{align}
H_{P}^{(\varepsilon)} & =\dfrac{1}{2}\sum ^{N}_{j=1} \left[p_{j}^{2}+m^{2}q_{j}^{2}+\dfrac{(q_{j+1}-q_{j})^{2}}{\varepsilon ^{2}}\right],  & q_{N+1}=q_{1}
\end{align}$$

separate the sites into two chains. the Dirichlet reference Hamiltonian for the $\displaystyle{i}$-th chain is given by

$$\begin{align}
H_{D,i}^{(\varepsilon)}=\dfrac{1}{2}\sum ^{N_{i}}_{a=1}(p_{i,a}^{2}+m^{2}q_{i,a}^{2})+\dfrac{1}{2\varepsilon ^{2}}\left[q_{i,1}^{2}+\sum _{a=1}^{N_{i}-1} (q_{i,a+1}-q_{i,a})^{2}+q_{i,N_{i}}^{2}\right]
\end{align}$$

the endpoint pinning terms are equivalent to adding ghost sites $q_{i,0}=0$ and $q_{i,N_{i}+1}=0$. therefore

$$\begin{align}
H_{P}^{(\varepsilon)} & =H_{D,1}^{(\varepsilon)}+H_{D,2}^{(\varepsilon)}+V_{\mathrm{glue}}^{(\varepsilon)} \\
V_{\mathrm{glue}}^{(\varepsilon)} & =-\dfrac{1}{\varepsilon ^{2}}(q_{1,N_{1}}q_{2,1}+q_{2,N_{2}}q_{1,1})
\end{align}$$

we should exactly diagonalize $\displaystyle{H_{D,1}^{(\varepsilon)}+H_{D,2}^{(\varepsilon)}}$ together with $\displaystyle{V_{\mathrm{glue}}^{(\varepsilon)}}$.

introduce

$$\begin{align}
u_{i,n}(a) & =\sqrt{ \dfrac{2}{N_{i}+1} } \sin\left( \dfrac{\pi na}{N_{i}+1} \right) \\
(\omega _{i,n}^{D})^{2} & =m^{2}+\dfrac{4}{\varepsilon ^{2}}\sin ^{2}\left(\dfrac{\pi n}{2(N_{i}+1)}\right), & n=1,\dots,N_{i}, \\
q_{i,a} & =\sum ^{N_{i}}_{n=1} \dfrac{u_{i,n}(a)}{\sqrt{ 2\omega _{i,n}^{D} }}(a_{i,n}+a_{i,n}^{\dagger}), \\
p_{i,a} & =-i\sum ^{N_{i}}_{n=1} u_{i,n}(a)\sqrt{ \dfrac{\omega _{i,n}^{D}}{2} }(a_{i,n}-a_{i,n}^{\dagger})
\end{align}$$

The orthonormality of the $u_{i,n}$ then gives $[a_{i,n},a_{j,m}^{\dagger}]=\delta _{ij}\delta _{nm}$.

we have

$$\begin{align}
H_{D,i}^{(\varepsilon)} & =\sum ^{N_{i}}_{n=1}\omega _{i,n}^{D}\left( a^{\dagger}_{i,n}a_{i,n}+\dfrac{1}{2} \right) \\
V_{\mathrm{glue}}^{(\varepsilon)} & =-\dfrac{1}{2\varepsilon ^{2}}\sum ^{N_{1}}_{n=1}\sum ^{N_{2}}_{m=1} \dfrac{C_{nm}}{\sqrt{ \omega _{1,n}^{D}\omega _{2,m}^{D} }}(a_{1,n}+a_{1,n}^{\dagger})(a_{2,m}+a^{\dagger}_{2,m}) \\
C_{nm} & =u_{1,n}(N_{1})u_{2,m}(1)+u_{1,n}(1)u_{2,m}(N_{2})
\end{align}$$

## Proof of the Bogoliubov diagonalization

Assume $m>0$, so every normal mode has positive frequency. Order the full lattice coordinates as

$$\begin{align}
\boldsymbol{q} &=(q_{1,1},\ldots,q_{1,N_{1}},q_{2,1},\ldots,q_{2,N_{2}})^{T},\\
\boldsymbol{p} &=(p_{1,1},\ldots,p_{1,N_{1}},p_{2,1},\ldots,p_{2,N_{2}})^{T}.
\end{align}$$

They satisfy $[q_{j},p_{k}]=i\delta _{jk}$, with all other equal-time commutators vanishing.

The exact identity $H_{P}^{(\varepsilon)}=H_{D,1}^{(\varepsilon)}+H_{D,2}^{(\varepsilon)}+V_{\mathrm{glue}}^{(\varepsilon)}$ means that the full quadratic form is

$$\begin{align}
H_{P}^{(\varepsilon)} &=\dfrac{1}{2}\left[ \boldsymbol{p}^{T}\boldsymbol{p} +\boldsymbol{q}^{T}K_{P}^{(\varepsilon)}\boldsymbol{q} \right],\\
(K_{P}^{(\varepsilon)})_{jk} &=m^{2}\delta _{jk} +\dfrac{1}{\varepsilon ^{2}} \left(2\delta _{jk}-\delta _{j,k+1}-\delta _{j,k-1}\right),
\end{align}$$

where the site indices in the second line are understood modulo $N$. The complex Fourier vectors

$$\begin{align}
w_{r}(j)=\dfrac{1}{\sqrt{N}} \exp\left(\dfrac{2\pi i r(j-1)}{N}\right), \qquad r=0,\ldots,N-1,
\end{align}$$

satisfy

$$\begin{align}
K_{P}^{(\varepsilon)}w_{r} &=(\omega _{r}^{P})^{2}w_{r},\\
(\omega _{r}^{P})^{2} &=m^{2}+\dfrac{1}{\varepsilon ^{2}} \left(2-e^{2\pi i r/N}-e^{-2\pi i r/N}\right)\\
&=m^{2}+\dfrac{4}{\varepsilon ^{2}} \sin ^{2}\left(\dfrac{\pi r}{N}\right).
\end{align}$$

Take the constant mode, the real and imaginary parts of $w_{r}$, and, for even $N$, the $r=N/2$ mode. After normalization these vectors form a real orthonormal periodic basis. Label the two real vectors in each degenerate pair by $r$ and $N-r$, and order the columns accordingly. Let $V$ be the orthogonal matrix whose columns are this basis, and define

$$\begin{align}
\boldsymbol{\omega}_{P} &=\operatorname{diag}(\omega _{0}^{P},\ldots,\omega _{N-1}^{P}),\\
V^{T}V&=\boldsymbol{1}, & V^{T}K_{P}^{(\varepsilon)}V&=\boldsymbol{\omega}_{P}^{2}.
\end{align}$$

Within each degenerate pair $r$ and $N-r$, exchanging the cosine and sine vectors is immaterial because $\omega _{N-r}^{P}=\omega _{r}^{P}$. Now extend every Dirichlet mode $u_{i,n}$ by zero outside the $i$-th chain. Denote the resulting $N$ real orthonormal vectors by $e_{\alpha}$, where $\alpha=(i,n)$, and let $E$ be the matrix with columns $e_{\alpha}$. Then

$$\begin{align}
E^{T}E&=\boldsymbol{1},\\
\boldsymbol{\omega}_{D} &=\operatorname{diag}\left( \omega _{1,1}^{D},\ldots,\omega _{1,N_{1}}^{D}, \omega _{2,1}^{D},\ldots,\omega _{2,N_{2}}^{D} \right).
\end{align}$$

The overlap matrix between the periodic and Dirichlet bases is

$$\begin{align}
O:=V^{T}E, \qquad O_{r\alpha}=\sum_{j=1}^{N}V_{jr}e_{\alpha}(j), \qquad OO^{T}=O^{T}O=\boldsymbol{1}.
\end{align}$$

Introduce Dirichlet normal coordinates and periodic normal coordinates by

$$\begin{align}
\boldsymbol{x}&=E^{T}\boldsymbol{q}, & \boldsymbol{\pi}&=E^{T}\boldsymbol{p},\\
\boldsymbol{X}&=V^{T}\boldsymbol{q}=O\boldsymbol{x}, & \boldsymbol{\Pi}&=V^{T}\boldsymbol{p}=O\boldsymbol{\pi}.
\end{align}$$

Because $O$ is orthogonal, this is a canonical transformation. Moreover,

$$\begin{align}
H_{P}^{(\varepsilon)} &=\dfrac{1}{2}\left[ \boldsymbol{\Pi}^{T}\boldsymbol{\Pi} +\boldsymbol{X}^{T}\boldsymbol{\omega}_{P}^{2}\boldsymbol{X} \right].
\end{align}$$

Thus the position-momentum transformation has already diagonalized the exact quadratic form. The Bogoliubov transformation appears because the Dirichlet and periodic annihilation operators use different frequency matrices:

$$\begin{align}
\boldsymbol{a} &=\dfrac{1}{\sqrt{2}} \left( \boldsymbol{\omega}_{D}^{1/2}\boldsymbol{x} +i\boldsymbol{\omega}_{D}^{-1/2}\boldsymbol{\pi} \right),\\
\boldsymbol{b} &=\dfrac{1}{\sqrt{2}} \left( \boldsymbol{\omega}_{P}^{1/2}\boldsymbol{X} +i\boldsymbol{\omega}_{P}^{-1/2}\boldsymbol{\Pi} \right)\\
&=\mathsf{A}\boldsymbol{a}+\mathsf{B}\boldsymbol{a}^{\dagger},
\end{align}$$

where

$$\begin{align}
\mathsf{A} &=\dfrac{1}{2}\left( \boldsymbol{\omega}_{P}^{1/2}O\boldsymbol{\omega}_{D}^{-1/2} +\boldsymbol{\omega}_{P}^{-1/2}O\boldsymbol{\omega}_{D}^{1/2} \right),\\
\mathsf{B} &=\dfrac{1}{2}\left( \boldsymbol{\omega}_{P}^{1/2}O\boldsymbol{\omega}_{D}^{-1/2} -\boldsymbol{\omega}_{P}^{-1/2}O\boldsymbol{\omega}_{D}^{1/2} \right).
\end{align}$$

Equivalently, the mode-by-mode coefficients are

$$\begin{align}
\alpha _{r\alpha} &=\dfrac{\omega _{r}^{P}+\omega _{\alpha}^{D}} {2\sqrt{\omega _{r}^{P}\omega _{\alpha}^{D}}} O_{r\alpha},\\
\beta _{r\alpha} &=\dfrac{\omega _{r}^{P}-\omega _{\alpha}^{D}} {2\sqrt{\omega _{r}^{P}\omega _{\alpha}^{D}}} O_{r\alpha}.
\end{align}$$

It remains to prove that this change of creation and annihilation operators is canonical. Set

$$\begin{align}
R&=\boldsymbol{\omega}_{P}^{1/2}O\boldsymbol{\omega}_{D}^{-1/2}, & S&=\boldsymbol{\omega}_{P}^{-1/2}O\boldsymbol{\omega}_{D}^{1/2}.
\end{align}$$

Since $O$ is orthogonal,

$$\begin{align}
RS^{T}=SR^{T}=R^{T}S=S^{T}R=\boldsymbol{1}.
\end{align}$$

Using $\mathsf{A}=(R+S)/2$ and $\mathsf{B}=(R-S)/2$ therefore gives

$$\begin{align}
\mathsf{A}\mathsf{A}^{T}-\mathsf{B}\mathsf{B}^{T} &=\boldsymbol{1},\\
\mathsf{A}\mathsf{B}^{T}-\mathsf{B}\mathsf{A}^{T} &=0.
\end{align}$$

These are precisely $[b_{r},b_{s}^{\dagger}]=\delta _{rs}$ and $[b_{r},b_{s}]=0$. Substituting the inverse oscillator relations gives, mode by mode,

$$\begin{align}
\dfrac{1}{2}\left[\Pi _{r}^{2}+(\omega _{r}^{P})^{2}X_{r}^{2}\right] =\omega _{r}^{P}\left(b_{r}^{\dagger}b_{r}+\dfrac{1}{2}\right),
\end{align}$$

and consequently

$$\begin{align}
H^{(\varepsilon)}_{P} & =\sum ^{N-1}_{r=0}\omega _{r}^{P}\left(b_{r}^{\dagger}b_{r}+\dfrac{1}{2}\right) \\
(\omega _{r}^{P})^{2} & =m^{2}+\dfrac{4}{\varepsilon ^{2}}\sin ^{2}\left( \dfrac{\pi r}{N} \right)
\end{align}$$

---

The following non-equal split illustrates the general proof. Consider $\displaystyle{N_{1}=2}$ and $\displaystyle{N_{2}=3}$. Then

$$\begin{align}
\varepsilon ^{2}[(\omega _{1,n}^{D})^{2}-m^{2}] & \in\left\{1,3\right\} \\
\varepsilon ^{2}[(\omega _{2,n}^{D})^{2}-m^{2}] & \in\left\{2-\sqrt{ 2 },2,2+\sqrt{ 2 }\right\}
\end{align}$$

add interactions

$$\begin{align}
V^{(\varepsilon)}_{\mathrm{glue}} & =-\dfrac{1}{\varepsilon ^{2}}(q_{1,2}q_{2,1}+q_{2,3}q_{1,1})
\end{align}$$

and we have

$$\begin{align}
\det[\lambda \mathbf{1}-K_{P}^{(\varepsilon)}] & =(\lambda-m^{2})\left[ \lambda-m^{2}-\dfrac{5-\sqrt{ 5 }}{2\varepsilon ^{2}} \right]^{2}\left[ \lambda-m^{2}-\dfrac{5+\sqrt{ 5 }}{2\varepsilon ^{2}} \right]^{2}
\end{align}$$

which is exactly the required

$$\begin{align}
(\omega _{0}^{P})^{2} & =m^{2} \\
(\omega _{1,4}^{P})^{2} & =m^{2}+\dfrac{5-\sqrt{ 5 }}{2\varepsilon ^{2}} \\
(\omega _{2,3}^{P})^{2} & =m^{2}+\dfrac{5+\sqrt{ 5 }}{2\varepsilon ^{2}}
\end{align}$$
