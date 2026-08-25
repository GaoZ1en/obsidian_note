Consider a massive real scalar on the interval $\displaystyle{\Sigma=[-L,L]}$, and introduce an artificial cut at $\displaystyle{\Gamma=\left\{x=0\right\}}$ which separates $\displaystyle{[-L,L]}$ into two subintervals $\displaystyle{\Sigma_{1}=[-L,0]}$ and $\displaystyle{\Sigma _{2}=[0,L]}$. For future convenience, introduce

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

here $\displaystyle{q_{i}(t)}$ are prescribed admissible histories. *For the explicit strong retarded formulas below, take $q_i\in H^2_{\mathrm{loc}}$ in time and require $\phi_i-hq_i\in C(H_0^1)\cap C^1(L^2)$, with the equation understood in the corresponding weak sense. Pointwise normal derivatives require the stronger spatial graph core.* For given $\displaystyle{q_{i}(t)}$, the phase space $\displaystyle{\mathcal{P}_{i}[q_{i}]}$ is defined as the set of solutions of eom that satisfies boundary conditions

$$\begin{align}
\mathcal{P}_{i}[q_{i}] & =\left\{\phi _{i} \text{ sufficiently regular functions}|-\ddot{\phi}_{i}+\phi''_{i}-m^{2}\phi _{i}=0,\phi _{i}|_{\Gamma}=q_{i}(t),\phi _{i}|_{y=0}=0\right\}
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

Continuity and derivative matching give the homogeneous linear system

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

We do not allow $\displaystyle{q_{i}(t)}$ to vary when quantizing subregions, otherwise we would
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
X_{i,t}\cdot \delta S_{i} & = \alpha _{i}|^{t_{f}}_{t_{i}} \\
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

We first solve the eom at each subinterval.  Decompose

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

define creation and annihilation operators

$$\begin{align}
d_{i,n} & =\sqrt{ \dfrac{\omega _{n}}{2} }c^{(0)}_{i,n}+\dfrac{i}{\sqrt{ 2\omega _{n} }}v^{(0)}_{i,n} \\
\implies [d_{i,n},d ^{\dagger}_{j,m}] & =\delta _{ij}\delta _{nm}
\end{align}$$

the reference Gaussian state $\displaystyle{\ket{\Omega _{i}}}$ is defined as

$$\begin{align}
d_{i,n}\ket{\Omega _{i}} & =0, & i=1,2,\quad n\in \mathbb{N}^{+}
\end{align}$$

and the Fock space is spanned by usual construction. For nonconstant prescribed $\displaystyle{q_{i}(t)}$ this is not a stationary regional vacuum.

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

At finite regulator, or on the continuum graph core where the traces exist, the quantum gluing conditions are

$$\begin{align}
\phi _{1}(t,L) & =\phi _{2}(t,L)=q(t) \\
(\phi _{1}'+\phi _{2}')|_{\Gamma} & =0
\end{align}$$

we should notice that upon gluing, $\displaystyle{q(t)}$ becomes dynamical and enters to the symplctic form/commutators. The latter gluing condition gives the following strong-core mode representation

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

thus $\displaystyle{d_{-,n}}$ does not enter the interface equation. *At finite $N$, the $\displaystyle{d_{+,n}}$ together with the compatible initial port data $q_N(t_i)$ and $\pi_{q,N}(t_i)$ determine the regulated history. In the continuum energy theory, $q(t)$ is instead defined as the trace of the unique connected weak solution arising from global Cauchy data; it is not determined by $d_+$ alone.* Take the ansatz $\displaystyle{q(t)=qe^{-i\Omega t}}$ and $\displaystyle{c_{i,n}(t;q)=c_{i,n}e^{-i\Omega t}}$ with $\displaystyle{k^{2}=\Omega ^{2}-m^{2}\geqslant 0}$ and $\displaystyle{k^{2}\neq k _{n}^{2}}$. Substituting the ansatz into the eom gives

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
k\cot(kL)=0\implies k=\dfrac{(2p+1)\pi}{2L},\quad p \in \mathbb{N}
\end{align}$$

as for $\displaystyle{d_{-,n}}$ sector with $\displaystyle{q=0}$, they are unaffected with spectrum

$$\begin{align}
k _{n}=\dfrac{n\pi}{L}
\end{align}$$

then the total spectrum is the union

$$\begin{align}
\left\{\dfrac{(2p+1)\pi}{2L}\right\}_{p \in \mathbb{N}}\cup\left\{\dfrac{n\pi}{L}\right\}_{n\in \mathbb{N}^{+}}=\left\{\dfrac{r\pi}{2L}\right\}_{r\in \mathbb{N}^{+}}
\end{align}$$

### Finite Truncation

At finite $\displaystyle{N}$, we use the Galerkin method and expand

$$\begin{align}
\phi _{i}(t,y) & =\sum ^{N}_{n=1}c_{i,n}(t)u_{n}(y)+h(y)q(t)
\end{align}$$

into the summed regional action before varying. Define

$$\begin{align}
d & =(A,A)^{T}, & g & =(A_{1}k_{1}^{2},\dots,A_{N}k^{2}_{N},A_{1}k^{2}_{1},\dots,A_{N}k^{2}_{N})^{T} \\
\rho _{N} & =\dfrac{2L}{3}-d^{T}d>0 , & \mathcal{F}_{N} & =\dfrac{2q}{L}-g^{T}c \\
D & =\mathrm{diag}(\omega ^{2}_{1},\dots,\omega _{N}^{2},\omega _{1}^{2},\dots,\omega _{N}^{2})
\end{align}$$

the Lagrangian can be expanded as

$$\begin{align}
L_{N} & =\dfrac{1}{2}\left( \dot{c} ^{T}\dot{c}+2\dot{q}d^{T}\dot{c}+\dfrac{2L}{3}\dot{q}^{2} \right)-\dfrac{1}{2}\left( c^{T}Dc+2m^{2}qd^{T}c+\left(\dfrac{2}{L}+\dfrac{2m^{2}L}{3}\right)q^{2} \right)
\end{align}$$

the eom for $\displaystyle{c}$ are exactly the forced regional equations above:

$$\begin{align}
\ddot{c} _{i,n}+\omega ^{2}_{n}c_{i,n} & =-A_{n}(\ddot{q}_{i}+m^{2}q_{i}), & i & =1,2,\quad n=1,\dots,N
\end{align}$$

and the eom for $\displaystyle{q}$ is

$$\begin{align}
d^{T} \ddot{c}+\dfrac{2L}{3} \ddot{q}+m^{2}d^{T}c+\left(\dfrac{2}{L}+\dfrac{2m^{2}L}{3}\right)q & =0
\end{align}$$

eliminating $\displaystyle{c}$ gives

$$\begin{align}
\rho _{N}(\ddot{q}+m^{2}q)+\mathcal{F}_{N}=0
\end{align}$$

introduce

$$\begin{align}
C & =c+dq, & V & =\dot{C}
\end{align}$$

they give the finite-$\displaystyle{N}$ symplectic form

$$\begin{align}
\omega _{N} & =\delta V\wedge \delta C+\rho _{N}\delta \dot{q}\wedge \delta q
\end{align}$$

hence the relations $\displaystyle{[C_{a},V_{b}]=i\delta _{ab}}$ remain valid after $\displaystyle{q}$ becomes dynamical. By contrast

$$\begin{align}
[c_{a},v_{b}] & =i\delta _{ab}+\dfrac{id_{a}d_{b}}{\rho _{N}}
\end{align}$$

so the fixed-source brackets of $(c,\dot c)$ cannot be retained.

Let $\displaystyle{z_{\alpha,N}}$ be an $\displaystyle{M_{N}}$-orthonormal generalized eigenbasis of $\displaystyle{M_{N}}$ and $\displaystyle{K_{N}}$, which means

$$\begin{align}
(K_{N}-\Omega ^{2}M_{N})z & =0
\end{align}$$

and normalized as

$$\begin{align}
z^{T}_{\alpha,N}M_{N}z_{\beta,N} & =\delta _{\alpha \beta}
\end{align}$$

The reconstructed Galerkin modes

$$\begin{align}
E_{\alpha,N}(x) & =f_{N}(x)^{T}z_{\alpha,N}
\end{align}$$

give

$$\begin{align}
Q_{\alpha,N} & =\braket{ E_{\alpha,N},\phi _{N} } =z^{T}_{\alpha,N}M_{N}x \\
P_{\alpha,N} & =\braket{ E_{\alpha,N},\dot{\phi}_{N} } =z_{\alpha,N}^{T}M_{N}\dot{x}
\end{align}$$

these variables obet $\displaystyle{[Q_{\alpha,N},P_{\beta,N}]=i\delta _{\alpha \beta}}$ and diagonalize the Hamiltonian. Therefore

$$\begin{align}
a_{\alpha,N} & =\sqrt{ \dfrac{\Omega _{\alpha,N}}{2} }Q_{\alpha,N}+\dfrac{i}{\sqrt{ 2\Omega _{\alpha,N} }}P_{\alpha,N}
\end{align}$$

are the annihilation operators, which contain additional terms linear in $\displaystyle{q}$ and $\displaystyle{\dot{q}}$. The detailed historical bridge is [[Articles/Quantization in AdS/gluing/archived/feedback-port-canonical-bridge|feedback-port-canonical-bridge]], with its regression in `numerics/feedback_port_canonical_bridge_checks.wl`.

### Finite Reduced State and Open-System Closure

The finite glued ground state, its distinct interior and port-complete regional reductions, the covariance/Williamson formulas, and the exact elimination of region 2 are worked out in [[Articles/Quantization in AdS/gluing/reduced-state-open-system-scalar|reduced-state-open-system-scalar]]. At finite $N$, ordinary partial traces exist for the declared canonical factors. They must be distinguished from the algebra generated by fixed bulk smearings of the reconstructed field and from the operator-level memory equation.

For an isolated region-2 KMS reference state, the finite noise and retarded kernels obey the discrete fluctuation--dissipation relation. The actual glued vacuum is initially correlated across the chosen factorization, so its reduction does not by itself define a product-environment channel on arbitrary regional density matrices. In the continuum, the proved target is the connected vacuum restricted to the region-1 bulk-smeared algebra, not a trace-class limit of finite reduced density matrices or an independent port oscillator.

---

This section uses quadratic forms, Mosco convergence, strong resolvent convergence, and functional calculus to prove that the port Galerkin truncations have the correct, well-defined $N\to\infty$ limit in the energy-space topology and at the level of spatially smeared correlation functions. It does not claim mode-by-mode convergence of all finite-truncation point variables and modal variables, or convergence of the corresponding Fock representations. See [[Articles/Quantization in AdS/gluing/functional analysis proof of well-definedness of finite truncation|functional analysis proof of well-definedness of finite truncation]] for details.

### Continuum Closure

Let

$$\begin{align}
H&=L^2([-L,L]), & V&=H_0^1([-L,L]),\\
\mathfrak a[\phi]&=\int_{-L}^{L}\mathrm dx\left(|\partial_x\phi|^2+m^2|\phi|^2\right).
\end{align}$$

The port spaces $W_{\mathrm{port},N}$ are nested conforming subspaces of $V$, and their union is dense in the form norm. The restrictions of $\mathfrak a$ to these spaces therefore Mosco-converge to $\mathfrak a$. Equivalently, their embedded Galerkin resolvents converge strongly to the connected Dirichlet resolvent.

For any finite-energy Cauchy datum $(\phi_0,\pi_0)\in V\oplus H$ and Galerkin initial data converging in that norm, the reconstructed solutions obey, for every finite $T$,

$$\begin{align}
\sup_{|t|\leq T}\left( \|\phi_N(t)-\phi(t)\|_{V} +\|\dot\phi_N(t)-\dot\phi(t)\|_{H} \right)&\longrightarrow0.
\end{align}$$

Consequently the equal-time symplectic forms converge. Since point evaluation is continuous on $H_0^1$ in one spatial dimension,

$$\begin{align}
q_N(t)=\phi_N(t,0)&\longrightarrow \phi(t,0)=q(t)
\end{align}$$

uniformly on compact time intervals. The velocity component belongs only to $L^2$, so $\dot q$ and $\pi_q=\rho_N\dot q$ do not define an independent continuum point observable. On the graph core $H^2\cap H_0^1$, integration by parts recovers the pointwise oriented flux condition; on the full energy space it is the corresponding weak interface identity.

For $L^2$ smearings $f,g$, strong functional calculus also gives convergence of the finite Galerkin vacuum two-point functions,

$$\begin{align}
\frac12\left(P_Nf,A_N^{-1/2}e^{-i\tau A_N^{1/2}}P_Ng\right) &\longrightarrow
\frac12\left(f,A^{-1/2}e^{-i\tau A^{1/2}}g\right).
\end{align}$$

Thus the classical energy dynamics, interface trace, symplectic form, and intrinsic smeared Gaussian state all have the required continuum limit. The proof, domain statements, and regional correlator formulas are in [[Articles/Quantization in AdS/gluing/functional analysis proof of well-definedness of finite truncation|functional analysis proof of well-definedness of finite truncation]]. The corresponding finite partial-trace-to-continuum-state-restriction statement is in [[Articles/Quantization in AdS/gluing/reduced-state-open-system-scalar|reduced-state-open-system-scalar]].

---
