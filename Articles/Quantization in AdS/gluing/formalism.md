Consider a massive real scalar on the interval $\displaystyle{\Sigma=[-L,L]}$, and introduce an artificial cut at $\displaystyle{\Gamma=\left\{x=0\right\}}$ which separate $\displaystyle{[-L,L]}$ to two subintervals $\displaystyle{\Sigma_{1}=[-L,0]}$ and $\displaystyle{\Sigma _{2}=[0,L]}$. For future convenience, introduce

$$\begin{align}
y_{1} & =x+L, & y_{2} & =L-x
\end{align}$$

so that the interface locates at $\displaystyle{y_{i}=L}$.

The action is given by

$$\begin{align}
S & =\dfrac{1}{2} \int ^{t_{f}}_{t_{i}} \mathrm{d}t \int _{-L}^{L} \mathrm{d}x\left(\dot{\phi}^{2}-\phi'^{2}-m^{2}\phi ^{2}\right), & m> 0 \\
 & =\dfrac{1}{2} \sum _{i}\int _{t_{i}}^{t_{f}} \mathrm{d}t \int _{0}^{L}\mathrm{d}y\left(\dot{\phi}^{2}_{i}-\phi'^{2}_{i}-m^{2}\phi_{i}^{2}\right)
\end{align}$$

at the physical outer endpoints we impose Dirichlet conditions

$$\begin{align}
\phi _{i}(t,y=0) & =0, & i=1,2
\end{align}$$

take a variation of the action

$$\begin{align}
\delta S & =\sum _{i}\int ^{t_{f}}_{t_{i}}\mathrm{d}t\int _{0}^{L}\mathrm{d}y\left(-\ddot{\phi}_{i}+\phi''_{i}-m^{2}\phi _{i}\right)\delta \phi _{i} \\
 & +\sum _{i} \int _{0}^{L}\mathrm{d}y\dot{\phi}_{i}\delta \phi _{i}|^{t_{f}}_{t_{i}} -\int _{t_{i}}^{t_{f}}\mathrm{d}t \left.(\phi _{1}'\delta \phi_{1}+\phi_{2}'\delta \phi_{2})\right|_{\Gamma}
\end{align}$$

we read out the eoms

$$\begin{align}
-\ddot{\phi}_{i}+\phi''_{i}-m^{2}\phi _{i} & =0, & i=1,2
\end{align}$$

and the symplectic potentials then the symplectic forms

$$\begin{align}
\theta _{i} & = \int _{0}^{L} \mathrm{d}y\dot{\phi}_{i}\delta \phi _{i} \\
\implies \omega _{i} & = \int _{0}^{L} \mathrm{d}y\delta \dot{\phi}_{i}\wedge \delta \phi _{i}
\end{align}$$

at $\displaystyle{\Gamma}$ we introduce the Dirichlet boundary condition that

$$\begin{align}
\phi _{i}(t,y)|_{\Gamma} & =q_{i}(t)
\end{align}$$

here $\displaystyle{q_{i}(t)}$ are arbitrary functions. For given $\displaystyle{q_{i}(t)}$, the phase space $\displaystyle{\mathcal{P}_{i}[q_{i}]}$ is defined as the set of solutions of eom that satisfies boundary conditions

$$\begin{align}
\mathcal{P}_{i}[q_{i}] & =\left\{\phi _{i} \in L^{2}(\Sigma _{i})|-\ddot{\phi}_{i}+\phi''_{i}+m^{2}\phi _{i}=0,\phi _{i}|_{\Gamma}=q_{i}(t),\phi _{i}|_{y=0}=0\right\}
\end{align}$$

## Glue First, Then Quantize

When performing gluing, we only need to identify the two interface values,

$$\begin{align}
q_1(t)&=q_2(t)=q(t), &\delta q_1(t)&=\delta q_2(t)=\delta q(t).
\end{align}$$

This gives the continuity condition

$$\begin{align}
\left.\phi_1\right|_{\Gamma} &=\left.\phi_2\right|_{\Gamma}=q.
\end{align}$$

After this identification, the interface contribution to the variation of the summed regional action is

$$\begin{align}
\left.\delta(S_1+S_2)\right|_{\Gamma} &=-\int_{t_i}^{t_f}\mathrm{d}t(\phi_{1}'+\phi_{2}')\delta q|_{\Gamma}
\end{align}$$

The common interface value is dynamical, so $\delta q(t)$ is arbitrary. The variational principle therefore requires

$$\begin{align}
(\phi_{1}'+\phi_{2}')|_{\Gamma}=0
\end{align}$$

### Recovering the Physical Spectrum

To recover the normal modes of the connected interval, take a harmonic solution

$$\begin{align}
\phi_i(t,y_i)&=e^{-i\Omega t}f_i(y_i), &q(t)&=q\,e^{-i\Omega t}, &\Omega^2&=m^2+k^2.
\end{align}$$

The outer Dirichlet condition gives, for $k>0$,

$$\begin{align}
f_i(y_i)&=B_i\sin(ky_i).
\end{align}$$

It is important to retain the three amplitudes $\left(B_1,B_2,q\right)$ without first dividing by $\sin(kL)$. Continuity and derivative matching give the homogeneous linear system

$$\begin{align}
B_1\sin(kL)-q&=0,\\
B_2\sin(kL)-q&=0,\\
k\cos(kL)(B_1+B_2)&=0,
\end{align}$$

or

$$\begin{align}
\begin{pmatrix} \sin(kL)&0&-1\\
0&\sin(kL)&-1\\
k\cos(kL)&k\cos(kL)&0 \end{pmatrix} \begin{pmatrix} B_1\\
B_2\\
q \end{pmatrix} &=0.
\end{align}$$

A nonzero connected mode exists when

$$\begin{align}
0 &=\det \begin{pmatrix} \sin(kL)&0&-1\\
0&\sin(kL)&-1\\
k\cos(kL)&k\cos(kL)&0 \end{pmatrix}\\
&=2k\sin(kL)\cos(kL) =k\sin(2kL).
\end{align}$$

For $\displaystyle{k=0}$, we have $\displaystyle{B_{1}=B_{2}=q=0}$, so there is no nonzero $\displaystyle{k=0}$ mode. For $\displaystyle{k> 0}$, the spectrum splits into two branches.

For the first branch

$$\begin{align}
\cos(kL) & =0, & k & =\dfrac{(2p+1)\pi}{2L}, & p \in \mathbb{N} \\
\implies B_{1} & =B_{2}, & q & =B_{1}\sin(kL)\neq 0
\end{align}$$

for the second branch

$$\begin{align}
\sin(kL) & =0, & k & =\dfrac{n\pi}{L}, & n\in \mathbb{N}^{+} \\
\implies B_{1} & =-B_{2}, & q & =0
\end{align}$$

combining the two branches gives every Dirichlet momentum of the uncut interval

$$\begin{align}
k _{r} & =\dfrac{r\pi}{2L}, & \Omega _{r}^{2} & =m^{2}+\dfrac{r^{2}\pi ^{2}}{4L^{2}}, & r\in \mathbb{N}^{+}
\end{align}$$

then the normalized positive-frequency modes are

$$\begin{align}
\Phi _{r}(t,x) & = \dfrac{e^{-i\Omega _{r}t}}{\sqrt{ 2\Omega _{r}L }} \sin\left[ \dfrac{r\pi(x+L)}{2L} \right]
\end{align}$$

expand

$$\begin{align}
\phi(t,x) & =\sum ^{\infty}_{r=1}(a_{r}\Phi _{r}+a^{\dagger}_{r}\Phi _{r}^{*}), \\
\implies \omega & =i \sum ^{\infty}_{r=1} \delta a^{\dagger}_{r}\wedge \delta a_{r}
\end{align}$$

## Quantize First, Then Glue

### Principles

We do not allow $\displaystyle{q_{i}(t)}$ to variation when quantizing subregions, otherwise we would
- break the variational principle
- transform between different phase spaces $\displaystyle{\mathcal{P}_{i}[q_{i}]}$ and $\displaystyle{\mathcal{P}_{i}[q_{i}+\delta q_{i}]}$

In this case, the symplectic form is conserved:

$$\begin{align}
\omega _{i}|_{t_{f}}-\omega _{i}|_{t_{i}} & =\int ^{t_{f}}_{t_{i}}\mathrm{d}t\delta \phi _{i}'\wedge\delta q_{i}|_{\Gamma}=0
\end{align}$$

but the subsystem is not time-translation invariant: define the vector

$$\begin{align}
X_{i,t} & =\int \mathrm{d}y \dot{\phi}_{i} \dfrac{\delta}{\delta \phi _{i}}
\end{align}$$

act on the action

$$\begin{align}
X_{i,t}\cdot \delta S_{i} & = \alpha _{i}|^{t_{f}}_{i_{i}} \\
\alpha _{i} & =\dfrac{1}{2}\int _{0}^{L}\mathrm{d}y\left(\dot{\phi}_{i}^{2}-\phi' ^{2}_{i}-m^{2}\phi _{i}^{2}\right)
\end{align}$$

the naïvely defined Noether charge

$$\begin{align}
H_{i} & =X_{i,t}\cdot \theta _{i}-\alpha _{i} \\
 & =\dfrac{1}{2}\int _{0}^{L}\mathrm{d}y\left(\dot{\phi}_{i}^{2}+\phi _{i}'^{2}+m^{2}\phi _{i}^{2}\right)
\end{align}$$

is not conserved onshell. Instead, it satisfies the following balance law

$$\begin{align}
H_{i}|_{t_{f}}-H_{i}|_{t_{i}} & =\dfrac{1}{2}\int _{t_{i}}^{t_{f}} \mathrm{d}t \dfrac{\mathrm{d}}{\mathrm{d}t}\int _{0}^{L}\mathrm{d}y\left(\dot{\phi} _{i}^{2}+\phi _{i}'^{2}+m^{2}\phi _{i}^{2}\right) \\
 & =\int _{t_{i}}^{t_{f}}\mathrm{d}t \int _{0}^{L}\mathrm{d}y \left(\dot{\phi}_{i}(\ddot{\phi}_{i}-\phi _{i}''+m^{2}\phi _{i})+(\phi _{i}'\dot{\phi} _{i})'\right) \\
 & \approx \int _{t_{i}}^{t_{f}}\mathrm{d}t \phi _{i}'\dot{\phi}_{i}|_{\Gamma}\neq 0
\end{align}$$

### Quantizing Subregions

We first solving the eom at each subinterval.  Decompose

$$\begin{align}
\phi _{i}(t,y) & =\psi _{i}(t,y)+q_{i}(t) \dfrac{y}{L}
\end{align}$$

where $\displaystyle{\psi _{i}(t,y)}$ satisfies

$$\begin{align}
\psi _{i}(t,y=L) & =0
\end{align}$$

expand

$$\begin{align}
\psi _{i}(x) & =\sum ^{\infty}_{n=1} c_{i,n}(t)u_{n}(y) \\
u_{n}(y) & =\sqrt{ \dfrac{2}{L} }\sin k _{n}y, & k _{n}=\dfrac{n\pi}{L},\quad n\in \mathbb{N}^{+} \\
\dfrac{y}{L} & =\sum ^{\infty}_{n=1}A_{n}u_{n}(y) \\
A_{n} & =(-1)^{n+1} \dfrac{\sqrt{ 2L }}{n\pi}
\end{align}$$

substitute into the eom gives

$$\begin{align}
\ddot{c} _{i,n}+\omega ^{2}_{n}c_{i,n} & =-A_{n}(\ddot{q}_{i}+m^{2}q_{i}), & \omega_n^2&=k_n^2+m^2
\end{align}$$

again we expand the initial data

$$\begin{align}
c_{i,n}^{(0)} & =\int _{0}^{L}\mathrm{d}y u_{n}(y)\left[ \phi _{i}(t_{i},y)-\dfrac{y}{L}q_{i}(t_{i}) \right] \\
v_{i,n}^{(0)} & =\int _{0}^{L}\mathrm{d}y u_{n}(y)\left[ \dot{\phi}_{i}(t_{i},y)-\dfrac{y}{L}\dot{q}_{i}(t_{i}) \right]
\end{align}$$

the exact retarded solution is

$$\begin{align}
c_{i,n}(t) & =c_{i,n}^{(0)}\cos \omega _{n}(t-t_{i})+\dfrac{v^{(0)}_{i,n}}{\omega _{n}}\sin \omega _{n}(t-t_{i}) \\
 & -A_{n}\int _{t_{i}}^{t} \mathrm{d}t' \dfrac{\sin[\omega _{n}(t-t')]}{\omega _{n}}[\ddot{q}_{i}(t')+m^{2}q_{i}(t')]
\end{align}$$

hence

$$\begin{align}
\phi _{i}(t,y) & =\dfrac{y}{L}q_{i}(t)+\sum ^{\infty}_{n=1} c_{i,n}(t) \sqrt{ \dfrac{2}{L} } \sin \dfrac{n\pi y}{L}
\end{align}$$

plug back into the symplectic form $\displaystyle{\omega _{i}}$, we have

$$\begin{align}
\omega _{i} & = \int _{0}^{L} \mathrm{d}y\delta \dot{\phi}_{i}\wedge \delta \phi _{i} \\
 & =\sum ^{\infty}_{n=1}\delta v^{(0)}_{i,n}\wedge \delta c^{(0)}_{i,n}
\end{align}$$

upon quantization, we promote $\displaystyle{v_{i,n}^{(0)}}$ and $\displaystyle{c_{i,n}^{(0)}}$ to operators,

$$\begin{align}
[c^{(0)}_{i,n},v^{(0)}_{j,m}] & =i\delta _{ij}\delta _{nm}
\end{align}$$

defin creation and annihilation operators

$$\begin{align}
d_{i,n} & =\sqrt{ \dfrac{\omega _{n}}{2} }c^{(0)}_{i,n}+\dfrac{i}{\sqrt{ 2\omega _{n} }}v^{(0)}_{i,n} \\
\implies [d_{i,n},d ^{\dagger}_{j,m}] & =\delta _{ij}\delta _{nm}
\end{align}$$

the vacuum $\displaystyle{\ket{\Omega _{i}}}$ is defined as

$$\begin{align}
d_{i,n}\ket{\Omega _{i}} & =0, & i=1,2,\quad n\in \mathbb{N}^{+}
\end{align}$$

and the Fock space is spanned by usual construction.

The source history changes time-evolution. In the Heisenberg picture, we have

$$\begin{align}
c_{i,n}(t;q_{i}) & =\dfrac{1}{\sqrt{ 2\omega _{n} }}(d_{i,n}e^{-i\omega _{n}(t-t_{i})}+d_{i,n}^{\dagger}e^{i\omega _{n}(t-t_{i})}) \\
 & -\dfrac{A_{n}}{\omega _{n}}\int _{t_{i}}^{t}\mathrm{d}t' \sin[\omega _{n}(t-t')](\ddot{q}_{i}(t')+m^{2}q_{i}(t'))\mathbf{1}
\end{align}$$

for gluing it is useful to introduce

$$\begin{align}
C_{i,n} &=\int _{0}^{L}\mathrm{d}yu_{n}(y)\phi _{i}(t_{i},y) =c_{i,n}^{(0)}+A_{n}q_{i}(t_{i})\mathbf{1} \\
V_{i,n} & =\int _{0}^{L}\mathrm{d}yu_{n}(y)\dot{\phi}_{i}(t_{i},y)=v_{i,n}^{(0)}+A_{n}\dot{q}_{i}(t_{i})\mathbf{1}
\end{align}$$

so

$$\begin{align}
[C_{i,n},V_{j,m}] & =i\delta _{ij}\delta _{nm}
\end{align}$$

define the corresponding creation and annihilation operators

$$\begin{align}
b_{i,n} & =\sqrt{ \dfrac{\omega _{n}}{2} }C_{i,n}+\dfrac{i}{\sqrt{ 2\omega _{n} }}V_{i,n} \\
 & =d_{i,n}+A_{n}\left(\sqrt{ \dfrac{\omega _{n}}{2} }q_{i}(t_{i})+\dfrac{i}{\sqrt{ 2\omega _{n} }}\dot{q}_{i}(t_{i})\right)\mathbf{1}
\end{align}$$

which also satisfy

$$\begin{align}
[b_{i,n},b^{\dagger}_{j,m}] & =\delta _{ij}\delta _{nm}
\end{align}$$

### Gluing the Quantized Subregions

The quantum gluing conditions are imposed as operator identities

$$\begin{align}
\phi _{1}(t,L) & =\phi _{2}(t,L)=q(t) \\
(\phi _{1}'+\phi _{2}')|_{\Gamma} & =0
\end{align}$$

the latter gluing condition gives

$$\begin{align}
0 & =\dfrac{2q}{L}-\sum ^{\infty}_{n=1}A_{n}k _{n}^{2}(c_{1,n}(t;q)+c_{2,n}(t;q))
\end{align}$$

we introduce

$$\begin{align}
d_{\pm,n} & =\dfrac{d_{1,n}\pm d_{2,n}}{\sqrt{ 2 }}
\end{align}$$

the gluing condition becomes

$$\begin{align}
0 & =\dfrac{2q(t)}{L}-\sum ^{\infty}_{n=1} \dfrac{A_{n}k _{n}^{2}}{\sqrt{ \omega _{n} }}[d_{+,n}e^{-i\omega _{n}(t-t_{i})}+d ^{\dagger}_{+,n} e^{i\omega _{n}(t-t_{i})}] \\
 & +2\sum ^{\infty}_{n=1} \dfrac{A_{n}^{2}k _{n}^{2}}{\omega _{n}} \int ^{t}_{t_{i}}\mathrm{d}t' \sin[\omega _{n}(t-t')][\ddot{q}(t')+m^{2}q(t')]
\end{align}$$

thus $\displaystyle{d_{-,n}}$ does not enter the interface equation, while the $\displaystyle{d_{+,n}}$ determine the operator-valued history $\displaystyle{q(t)}$. take a the ansatz $\displaystyle{q(t)=qe^{-i\Omega t}}$ and $\displaystyle{c_{i,n}(t;q)=c_{i,n}e^{-i\Omega t}}$ with $\displaystyle{k^{2}=\Omega ^{2}-m^{2}\geqslant 0}$ and $\displaystyle{k^{2}\neq k _{n}^{2}}$. substituting the ansatz into the eom gives

$$\begin{align}
(\omega _{n}^{2}-\Omega ^{2})c_{i,n} & =-A_{n}(m^{2}-\Omega ^{2})q \\
\implies c_{i,n}(t,q) & =\dfrac{A_{n}k ^{2}}{k^{2}_{n}-k^{2}}q e^{-i\Omega t}
\end{align}$$

therefore

$$\begin{align}
\phi _{i}'(t,L) & =\dfrac{q(t)}{L}+\sum ^{\infty}_{n=1}c_{i,n}(t;q)u'_{n}(L) \\
 & =qe^{-i\Omega t}\left(\dfrac{1}{L}-k^{2}\sum ^{\infty}_{n=1} \dfrac{A_{n}^{2}k _{n}^{2}}{k _{n}^{2}-k^{2}}\right) \\
 & =k\cot (kL) qe^{-i\Omega t}=0
\end{align}$$

consequently the nonzero-interface sector (relates to $\displaystyle{d_{+,n}}$ sector) with $\displaystyle{q\neq 0}$ obeys

$$\begin{align}
k\cot(kL)=0\implies k=0 \text{ or } \dfrac{(2p+1)\pi}{2L}, & p \in \mathbb{N}
\end{align}$$

the $\displaystyle{k=0}$ corresponds to the trivial solution $\displaystyle{c_{1,n}=c_{2,n}=q=0}$. as for $\displaystyle{d_{-,n}}$ sector with $\displaystyle{q=0}$, they are unaffected with spectrum

$$\begin{align}
k _{n}=\dfrac{n\pi}{L}
\end{align}$$

then the total spectrum is the union

$$\begin{align}
\left\{\dfrac{(2p+1)\pi}{2L}\right\}_{p \in \mathbb{N}}\cup\left\{\dfrac{n\pi}{L}\right\}_{n\in \mathbb{N}^{+}}=\left\{\dfrac{r\pi}{2L}\right\}_{r\in \mathbb{N}^{+}}
\end{align}$$

### Bogoliubov transformation

Introduce the real orthonormal spatial modes of the uncut interval,

$$\begin{align}
e_r(x) &=\dfrac{1}{\sqrt L}\sin\left[\dfrac{r\pi(x+L)}{2L}\right], &r&\in\mathbb N^+.
\end{align}$$

Their restrictions to the two half intervals are

$$\begin{align}
e_r^{(1)}(y) &=\dfrac{1}{\sqrt L}\sin\left(\dfrac{r\pi y}{2L}\right), \\
e_r^{(2)}(y) &=(-1)^{r+1}\dfrac{1}{\sqrt L} \sin\left(\dfrac{r\pi y}{2L}\right).
\end{align}$$

Define the overlap matrix between the global basis and the direct sum of the two regional sine bases,

$$\begin{align}
O_{r,in} &=\int_0^L\mathrm{d}y\,e_r^{(i)}(y)u_n(y).
\end{align}$$

Explicitly,

$$\begin{align}
O_{2p,1n}=-O_{2p,2n} & =\dfrac{1}{\sqrt{ 2 }}\delta _{p,n}, & p \in \mathbb{N}^{+} \\
O_{2p+1,1n}=O_{2p+1,2n} & =\dfrac{\sqrt{ 2 }(-1)^{p+n}n}{\pi\left[ \left( p+\frac{1}{2} \right)^{2}-n^{2} \right]}, & p \in \mathbb{N},n\in \mathbb{N}^{+}
\end{align}$$

and we have the following orthonormal and completeness conditions

$$\begin{align}
\sum ^{2}_{i=1}\sum ^{\infty}_{n=1}O_{r,in}O_{s,1n} & =\delta _{rs} \\
\sum ^{\infty}_{r=1}O_{r,1n}O_{r,jm} & =\delta _{ij}\delta _{nm}
\end{align}$$

performin the Bogoliubov transformation

$$\begin{align}
a_{r} & =\sum ^{2}_{i=1}\sum ^{\infty}_{n=1} O_{r,in}(A_{rn}b_{i,n}+B_{rn}b^{\dagger}_{i,n})
\end{align}$$

where

$$\begin{align}
A_{rn} & =\dfrac{1}{2}\left(\sqrt{ \dfrac{\Omega _{r}}{\omega _{n}} }+\sqrt{ \dfrac{\omega _{n}}{\Omega _{r}} }\right) \\
B_{rn} & =\dfrac{1}{2}\left(\sqrt{ \dfrac{\Omega _{r}}{\omega _{n}} }-\sqrt{ \dfrac{\omega _{n}}{\Omega _{r}} }\right)
\end{align}$$

therefore we have

$$\begin{align}
[a_{r},a^{\dagger}_{s}] & =\delta _{r,s}, & [a_{r},a_{s}] & =0
\end{align}$$

the global vacuum $\displaystyle{\ket{\Omega}}$ is defined as

$$\begin{align}
a_{r}\ket{\Omega}  & =0, & r\in \mathbb{N}^{+}
\end{align}$$

and the global Fock space is constructed as usual.
