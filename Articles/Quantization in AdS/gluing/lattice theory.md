Take $\displaystyle{N=N_{1}+N_{2}}$ lattice sites with spacing $\displaystyle{\varepsilon}$. Set $\displaystyle{C=N\varepsilon}$. The periodic lattice Hamiltonian is given by

$$\begin{align}
H_{P}^{(\varepsilon)} & =\dfrac{1}{2}\sum ^{N}_{j=1} \left[p_{j}^{2}+m^{2}q_{j}^{2}+\dfrac{(q_{j+1}-q_{j})^{2}}{\varepsilon ^{2}}\right],  & q_{N+1}=q_{1}
\end{align}$$

separate the sites into two chains. The Dirichlet reference Hamiltonian for the $\displaystyle{i}$-th chain is given by

$$\begin{align}
H_{D,i}^{(\varepsilon)}=\dfrac{1}{2}\sum ^{N_{i}}_{a=1}(p_{i,a}^{2}+m^{2}q_{i,a}^{2})+\dfrac{1}{2\varepsilon ^{2}}\left[q_{i,1}^{2}+\sum _{a=1}^{N_{i}-1} (q_{i,a+1}-q_{i,a})^{2}+q_{i,N_{i}}^{2}\right]
\end{align}$$

the endpoint pinning terms are equivalent to adding ghost sites $q_{i,0}=0$ and $q_{i,N_{i}+1}=0$. Therefore

$$\begin{align}
H_{P}^{(\varepsilon)} & =H_{D,1}^{(\varepsilon)}+H_{D,2}^{(\varepsilon)}+V_{\mathrm{glue}}^{(\varepsilon)} \\
V_{\mathrm{glue}}^{(\varepsilon)} & =-\dfrac{1}{\varepsilon ^{2}}(q_{1,N_{1}}q_{2,1}+q_{2,N_{2}}q_{1,1})
\end{align}$$

we should exactly diagonalize $\displaystyle{H_{D,1}^{(\varepsilon)}+H_{D,2}^{(\varepsilon)}}$ together with $\displaystyle{V_{\mathrm{glue}}^{(\varepsilon)}}$.

Introduce

$$\begin{align}
u_{i,n}(a) & =\sqrt{ \dfrac{2}{N_{i}+1} } \sin\left( \dfrac{\pi na}{N_{i}+1} \right) \\
(\omega _{i,n}^{D})^{2} & =m^{2}+\dfrac{4}{\varepsilon ^{2}}\sin ^{2}\left(\dfrac{\pi n}{2(N_{i}+1)}\right), & n=1,\dots,N_{i}, \\
q_{i,a} & =\sum ^{N_{i}}_{n=1} \dfrac{u_{i,n}(a)}{\sqrt{ 2\omega _{i,n}^{D} }}(a_{i,n}+a_{i,n}^{\dagger}), \\
p_{i,a} & =-i\sum ^{N_{i}}_{n=1} u_{i,n}(a)\sqrt{ \dfrac{\omega _{i,n}^{D}}{2} }(a_{i,n}-a_{i,n}^{\dagger})
\end{align}$$

The orthonormality of the $u_{i,n}$ then gives $[a_{i,n},a_{j,m}^{\dagger}]=\delta _{ij}\delta _{nm}$.

We have

$$\begin{align}
H_{D,i}^{(\varepsilon)} & =\sum ^{N_{i}}_{n=1}\omega _{i,n}^{D}\left( a^{\dagger}_{i,n}a_{i,n}+\dfrac{1}{2} \right) \\
V_{\mathrm{glue}}^{(\varepsilon)} & =-\dfrac{1}{2\varepsilon ^{2}}\sum ^{N_{1}}_{n=1}\sum ^{N_{2}}_{m=1} \dfrac{C_{nm}}{\sqrt{ \omega _{1,n}^{D}\omega _{2,m}^{D} }}(a_{1,n}+a_{1,n}^{\dagger})(a_{2,m}+a^{\dagger}_{2,m}) \\
C_{nm} & =u_{1,n}(N_{1})u_{2,m}(1)+u_{1,n}(1)u_{2,m}(N_{2})
\end{align}$$

## Proof of the Bogoliubov Diagonalization

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

---

## Gluing Two Neumann Pieces into the Periodic Theory

If we separate the theory into two pieces with Neumann boundary condition, the same construction works, with one systematic change: the endpoint pinning terms are replaced by mirror (free-end) conditions, and the glue becomes a positive quadratic form containing both diagonal and cross terms.

### Neumann Reference Hamiltonian

For the $\displaystyle{i}$-th chain, impose the mirror boundary conditions on the ghost sites

$$\begin{align}
q_{i,0}=q_{i,1}, \qquad q_{i,N_{i}+1}=q_{i,N_{i}},
\end{align}$$

and take the reference Hamiltonian

$$\begin{align}
H_{N,i}^{(\varepsilon)} & =\dfrac{1}{2}\sum ^{N_{i}}_{a=1}\left(p_{i,a}^{2}+m^{2}q_{i,a}^{2}\right)+\dfrac{1}{2\varepsilon ^{2}}\sum ^{N_{i}}_{a=0}(q_{i,a+1}-q_{i,a})^{2}\\
 & =\dfrac{1}{2}\sum ^{N_{i}}_{a=1}\left(p_{i,a}^{2}+m^{2}q_{i,a}^{2}\right)+\dfrac{1}{2\varepsilon ^{2}}\sum ^{N_{i}-1}_{a=1}(q_{i,a+1}-q_{i,a})^{2}.
\end{align}$$

The Neumann walls sit at the endpoint sites themselves (equivalently, the mirror planes are half a lattice spacing outside the endpoints), so the regulated interval length is $\displaystyle{N_{i}\varepsilon}$; the Dirichlet convention placed the walls one lattice spacing outside and gave $\displaystyle{(N_{i}+1)\varepsilon}$. Adding back the two missing cross-cut bonds, the exact identity is

$$\begin{align}
H_{P}^{(\varepsilon)} & =H_{N,1}^{(\varepsilon)}+H_{N,2}^{(\varepsilon)}+V_{\mathrm{glue}}^{N(\varepsilon)},\\
V_{\mathrm{glue}}^{N(\varepsilon)} & =\dfrac{1}{2\varepsilon ^{2}}\left[(q_{2,1}-q_{1,N_{1}})^{2}+(q_{1,1}-q_{2,N_{2}})^{2}\right].
\end{align}$$

Unlike the Dirichlet glue, which was a pure cross term, this glue is a positive-semidefinite quadratic form: diagonal entry $\displaystyle{+\varepsilon^{-2}}$ on each endpoint site (with multiplicity, so a single-site chain receives $\displaystyle{+2\varepsilon^{-2}}$ at its one site) and off-diagonal entry $\displaystyle{-\varepsilon^{-2}}$ on the two bonds. In the Dirichlet decomposition the endpoint pinning in $\displaystyle{H_{D,i}}$ had already supplied the diagonal pieces of the missing bonds; in the Neumann decomposition there is no pinning, so the glue carries them.

### Neumann Modes and the Glue in Mode Space

The $\displaystyle{i}$-th free chain has the discrete cosine modes

$$\begin{align}
u_{i,0}(a) & =\dfrac{1}{\sqrt{ N_{i} }},\\
u_{i,n}(a) & =\sqrt{ \dfrac{2}{N_{i}} }\cos\left( \dfrac{\pi n(a-\tfrac{1}{2})}{N_{i}} \right), & n=1,\dots,N_{i}-1,\\
(\omega _{i,n}^{N})^{2} & =m^{2}+\dfrac{4}{\varepsilon ^{2}}\sin ^{2}\left( \dfrac{\pi n}{2N_{i}} \right), & n=0,\dots,N_{i}-1,
\end{align}$$

and the mode expansion

$$\begin{align}
q_{i,a} & =\sum ^{N_{i}-1}_{n=0}\dfrac{u_{i,n}(a)}{\sqrt{ 2\omega _{i,n}^{N} }}(a_{i,n}+a_{i,n}^{\dagger}),\\
p_{i,a} & =-i\sum ^{N_{i}-1}_{n=0}u_{i,n}(a)\sqrt{ \dfrac{\omega _{i,n}^{N}}{2} }(a_{i,n}-a_{i,n}^{\dagger}).
\end{align}$$

Orthonormality of the $\displaystyle{u_{i,n}}$ gives $\displaystyle{[a_{i,n},a_{j,m}^{\dagger}]=\delta _{ij}\delta _{nm}}$, and

$$\begin{align}
H_{N,i}^{(\varepsilon)} & =\sum ^{N_{i}-1}_{n=0}\omega _{i,n}^{N}\left( a_{i,n}^{\dagger}a_{i,n}+\dfrac{1}{2} \right).
\end{align}$$

Set $\displaystyle{X_{i,n}=a_{i,n}+a_{i,n}^{\dagger}}$. The glue in mode space is

$$\begin{align}
V_{\mathrm{glue}}^{N(\varepsilon)} & =\dfrac{1}{2\varepsilon ^{2}}\left[\sum ^{N_{1}-1}_{n,m=0}G^{11}_{nm}X_{1,n}X_{1,m}+\sum ^{N_{2}-1}_{n,m=0}G^{22}_{nm}X_{2,n}X_{2,m}-2\sum ^{N_{1}-1}_{n=0}\sum ^{N_{2}-1}_{m=0}G^{12}_{nm}X_{1,n}X_{2,m}\right],
\end{align}$$

with

$$\begin{align}
G^{11}_{nm} & =\dfrac{u_{1,n}(N_{1})u_{1,m}(N_{1})+u_{1,n}(1)u_{1,m}(1)}{2\sqrt{ \omega _{1,n}^{N}\omega _{1,m}^{N} }},\\
G^{22}_{nm} & =\dfrac{u_{2,n}(1)u_{2,m}(1)+u_{2,n}(N_{2})u_{2,m}(N_{2})}{2\sqrt{ \omega _{2,n}^{N}\omega _{2,m}^{N} }},\\
G^{12}_{nm} & =\dfrac{u_{1,n}(N_{1})u_{2,m}(1)+u_{1,n}(1)u_{2,m}(N_{2})}{2\sqrt{ \omega _{1,n}^{N}\omega _{2,m}^{N} }}.
\end{align}$$

The intra-chain blocks $\displaystyle{G^{11},G^{22}}$ are new compared with the Dirichlet case: because the Neumann reference has no endpoint pinning, the two bonds also renormalize the endpoint oscillators of each chain, not only the inter-chain coupling. For equal chains $\displaystyle{N_{1}=N_{2}=M}$ the endpoint values satisfy

$$\begin{align}
u_{n}(M)=(-1)^{n}u_{n}(1), & n=0,\dots,M-1,
\end{align}$$

so the parity sign is $\displaystyle{(-1)^{n}}$ rather than the Dirichlet $\displaystyle{(-1)^{n+1}}$.

### Exact Diagonalization

The quadratic form of $\displaystyle{H_{N,1}^{(\varepsilon)}+H_{N,2}^{(\varepsilon)}+V_{\mathrm{glue}}^{N(\varepsilon)}}$ is again exactly $\displaystyle{K_{P}^{(\varepsilon)}}$, the same periodic stiffness matrix as before. The proof of the Bogoliubov diagonalization therefore carries over verbatim, with the Neumann mode matrix $\displaystyle{E_{N}}$ (block-diagonal columns $\displaystyle{u_{i,n}}$) replacing the Dirichlet $\displaystyle{E_{D}}$. At finite $\displaystyle{\varepsilon}$ the exact answer is again

$$\begin{align}
H_{P}^{(\varepsilon)} & =\sum ^{N-1}_{r=0}\omega _{r}^{P}\left( b_{r}^{\dagger}b_{r}+\dfrac{1}{2} \right),\\
(\omega _{r}^{P})^{2} & =m^{2}+\dfrac{4}{\varepsilon ^{2}}\sin ^{2}\left( \dfrac{\pi r}{N} \right).
\end{align}$$

One structural difference is visible already at finite $\displaystyle{N}$: the periodic constant mode is exactly the symmetric combination of the two chain zero modes,

$$\begin{align}
\sqrt{ \dfrac{N_{1}}{N} }e_{1,0}+\sqrt{ \dfrac{N_{2}}{N} }e_{2,0}=f_{0},
\end{align}$$

and both sides have frequency $\displaystyle{m}$, so this mode has $\displaystyle{\alpha=1}$, $\displaystyle{\beta=0}$ in the Bogoliubov transformation, with no squeezing. In the Dirichlet product the constant profile is not one of the reference modes: every strict Dirichlet mode vanishes at the interfaces, so the constant mode could only be approached through odd high-frequency modes, with a divergent amount of squeezing. That is precisely the difference that survives in the continuum limit below. The orthogonal combination of the two zero modes participates in the remaining high-frequency lattice modes.

### Non-Equal Lattice Example: $\displaystyle{N_{1}=2,\ N_{2}=3}$

The decoupled Neumann squared frequencies are

$$\begin{align}
\varepsilon ^{2}\left[(\omega _{1,n}^{N})^{2}-m^{2}\right] & \in\{0,2\},\\
\varepsilon ^{2}\left[(\omega _{2,n}^{N})^{2}-m^{2}\right] & \in\{0,1,3\}.
\end{align}$$

The glue is

$$\begin{align}
V_{\mathrm{glue}}^{N(\varepsilon)} & =\dfrac{1}{2\varepsilon ^{2}}\left[(q_{2,1}-q_{1,2})^{2}+(q_{1,1}-q_{2,3})^{2}\right],
\end{align}$$

and because the full quadratic form is again $\displaystyle{K_{P}^{(\varepsilon)}}$ on five sites, the characteristic polynomial is the same factorization as in the Dirichlet split:

$$\begin{align}
\det[\lambda \mathbf{1}-K_{P}^{(\varepsilon)}] & =(\lambda-m^{2})\left[ \lambda-m^{2}-\dfrac{5-\sqrt{ 5 }}{2\varepsilon ^{2}} \right]^{2}\left[ \lambda-m^{2}-\dfrac{5+\sqrt{ 5 }}{2\varepsilon ^{2}} \right]^{2}.
\end{align}$$

The two Neumann zero modes play the role that the two missing Dirichlet endpoints played: their symmetric combination is the periodic constant mode, and the orthogonal combination is reorganized together with the four nonconstant modes into the two doublets.

### Continuum Remarks: Neumann-to-Dirichlet Gluing and the Fock Sector

Classically, the Neumann pieces are glued through their outward normal fluxes. Given flux data $\displaystyle{s_{A}=-\phi'(0)}$, $\displaystyle{s_{B}=\phi'(L)}$, the interval solution is

$$\begin{align}
u(x)=\dfrac{-s_{A}\cos(k(L-x))-s_{B}\cos(kx)}{k\sin(kL)},
\end{align}$$

and the endpoint values are $\displaystyle{v=N^{L}(k)s}$ with the Neumann-to-Dirichlet map

$$\begin{align}
N^{L}(k)=\dfrac{1}{k\sin(kL)}\begin{pmatrix}-\cos(kL)&-1\\
-1&-\cos(kL)\end{pmatrix}=\left[M_{L}(k)\right]^{-1}.
\end{align}$$

Value continuity and flux cancellation across the two cuts reduce to the interface equation

$$\begin{align}
\left[N^{L_{1}}(k)+N^{L_{2}}(k)\right]s=0,
\end{align}$$

whose determinant

$$\begin{align}
\det\left[N^{L_{1}}(k)+N^{L_{2}}(k)\right]=-\dfrac{4\sin^{2}\left( \frac{k(L_{1}+L_{2})}{2} \right)}{k^{2}\sin(kL_{1})\sin(kL_{2})}
\end{align}$$

has the same zeros $\displaystyle{k=2\pi r/(L_{1}+L_{2})}$ as the DtN condition, i.e. the same periodic spectrum (away from the individual poles; a periodic eigenvalue sitting on a pole must again be read off from the original continuity/flux equations, exactly as in the Dirichlet case). At $\displaystyle{k=0}$ the interface equations admit exactly the constant mode: $\displaystyle{k^{2}N^{L}(k)\to-(1/L)(1\ 1;\ 1\ 1)}$, and the flux kernel $\displaystyle{s=(1,-1)^{T}}$ corresponds to the linear profile $\displaystyle{u(x)=a-x}$, whose slope is then forced to vanish by value matching across both cuts. This is the classical shadow of the statement that the Neumann product Fock space contains the periodic constant mode exactly, whereas the strict Dirichlet product cannot.

For equal halves $\displaystyle{L_{1}=L_{2}=L}$, $\displaystyle{C=2L}$, the sector statement is sharper. The periodic cosine modes are exactly the normalized combinations

$$\begin{align}
f_{r}^{\cos}=\dfrac{1}{\sqrt{ 2 }}\left(e^{(1)}_{r}+(-1)^{r}e^{(2)}_{r}\right), & r=0,1,2,\dots,
\end{align}$$

of the chain Neumann modes $\displaystyle{e^{(i)}_{0}=1/\sqrt{ L }}$, $\displaystyle{e^{(i)}_{r}(x_{i})=\sqrt{ 2/L }\cos(\pi rx_{i}/L)}$, and the frequencies coincide, $\displaystyle{\omega _{r}^{P}=\omega _{i,r}^{N}}$. Hence the whole cosine sector, including the constant mode, is realized in the product Neumann Fock space with vanishing Bogoliubov $\displaystyle{\beta}$. The periodic sine modes, by contrast, have the expansion coefficients

$$\begin{align}
O_{s,(1,n)}=c_{sn}, & O_{s,(2,n)}=(-1)^{s}c_{sn},\\
c_{sn}=\dfrac{\sqrt{ 2 }}{2\pi}\left[ \dfrac{1-(-1)^{s+n}}{s+n}+\dfrac{1-(-1)^{s-n}}{s-n} \right],
\end{align}$$

so for odd $\displaystyle{s-n}$ the corresponding Bogoliubov coefficient satisfies

$$\begin{align}
|\beta _{s,in}|^{2}\underset{s\to\infty}{\sim}\dfrac{2}{\pi ^{2}sn},
\end{align}$$

and $\displaystyle{\sum_{s}|\beta_{s,in}|^{2}}$ diverges logarithmically for every fixed $\displaystyle{n}$. The continuum Neumann product therefore has the same verdict as the Dirichlet product: the finite-lattice Hamiltonian is exact, but the continuum periodic Fock representation is not unitarily equivalent to the product of two Neumann Fock representations. The two boundary conditions are mirror images: Dirichlet pieces realize the sine sector exactly and lose the constant mode, while Neumann pieces realize the cosine sector (constant included) exactly and lose the sine sector. For $\displaystyle{m=0}$ the constant mode is again a free-particle sector and needs the separate treatment of the massless case.

Companion check: `gluing_neumann_to_periodic_checks.wl`.
