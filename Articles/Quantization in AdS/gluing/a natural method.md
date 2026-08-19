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

All fixed-source fibers have the same abstract tangent CCR algebra: changing $\displaystyle{q_i}$ only gives the c-number displacement displayed above. We may therefore form the abstract direct-sum regional Cauchy algebra generated by $\displaystyle{(C_{i,n},V_{i,n})}$ before choosing a particular source-dependent representation. Formally, quantum gluing consists of selecting the domain of the uncut spatial operator and evolving this Cauchy algebra with the uncut Hamiltonian. Wherever the boundary traces exist, $\displaystyle{q(t)}$ is then reconstructed as their common value.

We now give the spectral form of this construction. The change of basis below acts on the Cauchy CCR algebra only after the glued operator domain has been selected. By itself, an $\displaystyle{L^2}$ change of basis does not impose boundary traces.

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
\mathsf O_{r,in} &=\int_0^L\mathrm{d}y\,e_r^{(i)}(y)u_n(y).
\end{align}$$

Explicitly,

$$\begin{align}
\mathsf O_{2p,1n} &=\dfrac{1}{\sqrt2}\delta_{pn}, & \mathsf O_{2p,2n} &=-\dfrac{1}{\sqrt2}\delta_{pn}, &p&\in\mathbb N^+, \\
\mathsf O_{2p+1,1n} &=\mathsf O_{2p+1,2n} \\
&=\dfrac{\sqrt2(-1)^{p+n}n} {\pi\left[(p+\frac12)^2-n^2\right]}, & p&\in\mathbb N,\quad n\in\mathbb N^+.
\end{align}$$

By completeness of the two bases, we formally have

$$\begin{align}
\sum_{i=1}^{2}\sum_{n=1}^{\infty} \mathsf O_{r,in}\mathsf O_{s,in} &=\delta_{rs}, \\
\sum_{r=1}^{\infty} \mathsf O_{r,in}\mathsf O_{r,jm} &=\delta_{ij}\delta_{nm}.
\end{align}$$

The global canonical mode operators at the reference time are therefore

$$\begin{align}
Q_r &=\sum_{i=1}^{2}\sum_{n=1}^{\infty} \mathsf O_{r,in}C_{i,n}, \\
P_r &=\sum_{i=1}^{2}\sum_{n=1}^{\infty} \mathsf O_{r,in}V_{i,n}.
\end{align}$$

Formally,

$$\begin{align}
\sum_{i=1}^{2}\sum_{n=1}^{\infty} \delta V_{i,n}\wedge\delta C_{i,n} &=\sum_{r=1}^{\infty} \delta P_r\wedge\delta Q_r, \\
\left[Q_r,P_s\right] &=i\delta_{rs}.
\end{align}$$

Thus the overlap transformation is symplectic and preserves the CCR. The interface conditions are encoded in the global spatial operator and its domain: after gluing, the time evolution is generated by the uncut Hamiltonian rather than by the sum of the two homogeneous-Dirichlet regional Hamiltonians.

Define

$$\begin{align}
\Omega_r&=\sqrt{m^2+\dfrac{r^2\pi^2}{4L^2}}, \\
a_r &=\sqrt{\dfrac{\Omega_r}{2}}\,Q_r +\dfrac{i}{\sqrt{2\Omega_r}}\,P_r.
\end{align}$$

Substitution gives the formal Bogoliubov transformation

$$\begin{align}
a_r =\sum_{i=1}^{2}\sum_{n=1}^{\infty} \mathsf O_{r,in} \left( \mathsf A_{rn}b_{i,n} +\mathsf B_{rn}b_{i,n}^{\dagger} \right),
\end{align}$$

where

$$\begin{align}
\mathsf A_{rn} &=\dfrac12\left( \sqrt{\dfrac{\Omega_r}{\omega_n}} +\sqrt{\dfrac{\omega_n}{\Omega_r}} \right), \\
\mathsf B_{rn} &=\dfrac12\left( \sqrt{\dfrac{\Omega_r}{\omega_n}} -\sqrt{\dfrac{\omega_n}{\Omega_r}} \right).
\end{align}$$

Indeed,

$$\begin{align}
\mathsf A_{rn}\mathsf A_{sn}-\mathsf B_{rn}\mathsf B_{sn} &=\dfrac{\Omega_r+\Omega_s}{2\sqrt{\Omega_r\Omega_s}}, \\
\mathsf A_{rn}\mathsf B_{sn}-\mathsf B_{rn}\mathsf A_{sn} &=\dfrac{\Omega_s-\Omega_r}{2\sqrt{\Omega_r\Omega_s}},
\end{align}$$

and both right-hand sides are independent of $\displaystyle{n}$. The formal orthogonality of $\displaystyle{\mathsf O}$ therefore implies

$$\begin{align}
\left[a_r,a_s^{\dagger}\right]&=\delta_{rs}, & \left[a_r,a_s\right]&=0.
\end{align}$$

The two spectral sectors are especially transparent. Define

$$\begin{align}
b_{\pm,n} &=\dfrac{b_{1,n}\pm b_{2,n}}{\sqrt2}.
\end{align}$$

For the even global modes, $\displaystyle{\Omega_{2n}=\omega_n}$, so there is no creation-annihilation mixing:

$$\begin{align}
\boxed{a_{2n}=b_{-,n}.}
\end{align}$$

These are the modes with vanishing interface value. For the odd global modes, write

$$\begin{align}
\bar\omega_p &=\Omega_{2p+1} =\sqrt{m^2+\dfrac{(p+\frac12)^2\pi^2}{L^2}}, \\
\mathsf R_{pn} &=\dfrac{2(-1)^{p+n}n} {\pi\left[(p+\frac12)^2-n^2\right]}.
\end{align}$$

Then

$$\begin{align}
\boxed{ a_{2p+1} =\sum_{n=1}^{\infty}\mathsf R_{pn} \left[ \dfrac12\left( \sqrt{\dfrac{\bar\omega_p}{\omega_n}} +\sqrt{\dfrac{\omega_n}{\bar\omega_p}} \right)b_{+,n} +\dfrac12\left( \sqrt{\dfrac{\bar\omega_p}{\omega_n}} -\sqrt{\dfrac{\omega_n}{\bar\omega_p}} \right)b_{+,n}^{\dagger} \right].
}
\end{align}$$

These are precisely the modes whose common interface value is nonzero. Thus quantum gluing leaves the relative channel unchanged and turns the common regional channel into the odd global channel through an infinite Bogoliubov transformation.

The glued Hamiltonian is

$$\begin{align}
H_{\mathrm{glued}} &=\sum_{r=1}^{\infty} \Omega_r\left(a_r^{\dagger}a_r+\dfrac12\right).
\end{align}$$

When rewritten in terms of $\displaystyle{b_{i,n}}$, it is a quadratic Hamiltonian containing both regional mixing and pair-creation terms. For comparison, the regional complex structures chosen at $\displaystyle{t_i}$ define the reference decoupled quadratic operator

$$\begin{align}
H_{\mathrm D} &=\sum_{i=1}^{2}\sum_{n=1}^{\infty} \omega_n\left(b_{i,n}^{\dagger}b_{i,n}+\dfrac12\right).
\end{align}$$

For nonconstant prescribed $\displaystyle{q_i(t)}$, $\displaystyle{H_{\mathrm D}}$ is not a conserved Hamiltonian of the driven fixed-source theory. The fact that $\displaystyle{H_{\mathrm{glued}}\neq H_{\mathrm D}}$ records the change of dynamics produced by making the common boundary value dynamical and imposing flux matching.

Finally, let $\displaystyle{\ket{0_{\mathrm D};q_1,q_2}}$ be the reference product Gaussian state at $\displaystyle{t_i}$ annihilated by all $\displaystyle{b_{i,n}}$, and let $\displaystyle{\ket{0_{\mathrm{global}}}}$ obey

$$\begin{align}
a_r\ket{0_{\mathrm{global}}}=0.
\end{align}$$

The even/relative sector of the two vacua agrees, but the odd/common sector is formally squeezed. If $\displaystyle{\boldsymbol\alpha}$ and $\displaystyle{\boldsymbol\beta}$ denote the odd-sector matrices multiplying $\displaystyle{b_+}$ and $\displaystyle{b_+^{\dagger}}$, then

$$\begin{align}
\ket{0_{\mathrm{global}}} &=\mathcal N \exp\left[ -\dfrac12
\sum_{n,m=1}^{\infty} \left(\boldsymbol\alpha^{-1}\boldsymbol\beta\right)_{nm} b_{+,n}^{\dagger}b_{+,m}^{\dagger} \right]\ket{0_{\mathrm D};q_1,q_2}
\end{align}$$

formally solves the annihilation conditions. For nonconstant prescribed sources, $\displaystyle{\ket{0_{\mathrm D};q_1,q_2}}$ is only a source-dependent reference state; it is not a time-translation-invariant regional vacuum. Equivalently, one may write a formal gluing operator $\displaystyle{U_{\mathrm{glue}}}$ satisfying

$$\begin{align}
a_r &=U_{\mathrm{glue}}b_r U_{\mathrm{glue}}^{-1}
\end{align}$$

after collecting the regional labels into one sequence. At this stage, $\displaystyle{U_{\mathrm{glue}}}$ is only formal: we have not checked the Shale--Stinespring condition, the normalization $\displaystyle{\mathcal N}$, the domains of the boundary traces, or convergence of any infinite sum.

The resulting global Heisenberg field is

$$\begin{align}
\phi(t,x) &=\sum_{r=1}^{\infty} \left( a_r\Phi_r(t,x) +a_r^{\dagger}\Phi_r^*(t,x) \right),
\end{align}$$

and its two regional restrictions satisfy

$$\begin{align}
\phi_1|_{\Gamma}&=\phi_2|_{\Gamma}, \\
\left.(\phi_1'+\phi_2')\right|_{\Gamma}&=0
\end{align}$$

mode by mode. Hence, at the level of formal CCR algebras,

$$\begin{align}
\boxed{ \text{quantize the regional fibers and then glue}
\ \simeq\ \text{glue first and then quantize}.
}
\end{align}$$

This is not yet a statement of unitary equivalence between the completed continuum Fock spaces. Establishing that stronger statement requires the convergence and implementability analysis that has been deliberately postponed here.

### Gluing the quantized subregions

The quantum gluing conditions are imposed as operator identities

$$\begin{align}
\phi _{1}(t,L) & =\phi _{2}(t,L)=q(t) \\
(\phi _{1}'+\phi _{2}')|_{\Gamma} & =0
\end{align}$$

the latter gluing condition gives

$$\begin{align}
0 & =\dfrac{2q}{L}-\sum ^{\infty}_{n=1}A_{n}k _{n}^{2}(c_{1,n}(t;q)+c_{2,n}(t;q))
\end{align}$$

Using

$$\begin{align}
u_n'(L)&=-A_nk_n^2,
\end{align}$$

the two oriented regional fluxes at the interface are

$$\begin{align}
\phi_i'(t,L)
&=\dfrac{q(t)}{L}-\sum_{n=1}^{\infty}A_nk_n^2c_{i,n}(t;q).
\end{align}$$

After identifying $\displaystyle{q_1=q_2=q}$, the operator-valued gluing equation is therefore

$$\begin{align}
0
&=\dfrac{2q(t)}{L}
-\sum_{n=1}^{\infty}A_nk_n^2
\left[c_{1,n}(t;q)+c_{2,n}(t;q)\right].
\end{align}$$

Using the operator solution for $\displaystyle{c_{i,n}(t;q_i)}$ obtained above, define

$$\begin{align}
d_{\pm,n}
&=\dfrac{d_{1,n}\pm d_{2,n}}{\sqrt2}.
\end{align}$$

The gluing equation becomes

$$\begin{align}
0={}&\dfrac{2q(t)}{L}
-\sum_{n=1}^{\infty}\dfrac{A_nk_n^2}{\sqrt{\omega_n}}
\left[
d_{+,n}e^{-i\omega_n(t-t_i)}
+d_{+,n}^{\dagger}e^{i\omega_n(t-t_i)}
\right] \\
&+2\sum_{n=1}^{\infty}\dfrac{A_n^2k_n^2}{\omega_n}
\int_{t_i}^{t}\mathrm dt'\,
\sin[\omega_n(t-t')]
\left[\ddot q(t')+m^2q(t')\right].
\end{align}$$

Thus $d_{-,n}$ does not enter the interface equation, while the common operators $d_{+,n}$ determine the operator-valued history $\displaystyle{q(t)}$. Substituting that solution back into the preceding expression for $\displaystyle{c_{i,n}(t;q)}$ gives the glued regional fields.

The spectrum is determined by the homogeneous frequency-space response. Take $\displaystyle{q(t)=q e^{-i\Omega t}}$, define $\displaystyle{k^2=\Omega^2-m^2}$, and first assume $\displaystyle{k\neq k_n}$. The regional equations give

$$\begin{align}
c_{1,n}(t;q)=c_{2,n}(t;q)
&=A_n\dfrac{k^2}{k_n^2-k^2}q e^{-i\Omega t}.
\end{align}$$

The flux from either side is $\displaystyle{D(\Omega)q e^{-i\Omega t}}$, where

$$\begin{align}
D(\Omega)
&=\dfrac{1}{L}
+(m^2-\Omega^2)
\sum_{n=1}^{\infty}
\dfrac{A_n^2k_n^2}{\omega_n^2-\Omega^2} \\
&=\dfrac{1}{L}
-\dfrac{2k^2}{L}
\sum_{n=1}^{\infty}\dfrac{1}{k_n^2-k^2} \\
&=k\cot(kL).
\end{align}$$

Consequently the nonzero-interface sector obeys

$$\begin{align}
2D(\Omega)q=0,\qquad q\neq0
&\quad\Longrightarrow\quad
\cos(kL)=0, \\
k&=\dfrac{(2p+1)\pi}{2L},\qquad p\in\mathbb N.
\end{align}$$

The assumption $\displaystyle{k\neq k_n}$ excludes the poles of $\displaystyle{D(\Omega)}$. They must be restored directly from the original gluing equations. At

$$\begin{align}
k=k_n=\dfrac{n\pi}{L},\qquad q=0,
\end{align}$$

the flux condition requires the relative combination

$$\begin{align}
c_{1,n}=-c_{2,n}.
\end{align}$$

Therefore the feedback spectrum is the union of the zeros and poles of the Dirichlet-to-Neumann response:

$$\begin{align}
\left\{\dfrac{(2p+1)\pi}{2L}\right\}_{p\in\mathbb N}
\cup
\left\{\dfrac{n\pi}{L}\right\}_{n\in\mathbb N^+}
&=
\left\{\dfrac{r\pi}{2L}\right\}_{r\in\mathbb N^+}.
\end{align}$$

Equivalently, the glued spatial modes satisfy

$$\begin{align}
f_i(0)&=0, &
f_1(L)&=f_2(L), &
f_1'(L)+f_2'(L)&=0.
\end{align}$$

The relative eigenmodes give $\displaystyle{a_{2n}=b_{-,n}}$, while the common eigenmodes give the half-integer frequencies $\displaystyle{\bar\omega_p}$ and the matrix $\displaystyle{\mathsf R_{pn}}$ appearing in the odd-sector Bogoliubov transformation. The logical order is therefore

$$\begin{align}
\text{operator gluing condition}
\longrightarrow D(\Omega)
\longrightarrow \left\{\Omega_r,e_r\right\}
\longrightarrow \text{Bogoliubov transformation}.
\end{align}$$

At this formal $\displaystyle{N=\infty}$ stage, the feedback equation identifies where the gluing conditions enter and how they determine the spectrum. It does not yet establish the boundary-trace domains, the reduced symplectic form after solving for $\displaystyle{q}$, or unitary implementability on the completed regional Fock space.
