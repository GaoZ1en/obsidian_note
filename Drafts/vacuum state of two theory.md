we first consider two harmonic oscillators with frequencies $\displaystyle{\omega}$ and $\displaystyle{\tilde{\omega}}$ satisfying

$$\begin{align}
\tilde{\omega}=e^{-2\theta}\omega
\end{align}$$

the wave function of state $\displaystyle{\ket{n}}$ is

$$\begin{align}
\psi _{n}(x) & =\braket{ x|n } \\
 & = \frac{1}{\sqrt{ 2^{n}n! }} \left( \frac{m\omega }{\pi   } \right)^{1/4}e^{-\frac{m\omega x^{2}}{2  }}H_{n}\left( \sqrt{\frac{m\omega }{  }}x \right) \\
\psi _{\tilde{n}}(x) & = \braket{ x|\tilde{n} }  \\
 & = \frac{1}{\sqrt{ 2^{\tilde{n}}\tilde{n}! }} \left( \frac{m\tilde{\omega} }{\pi   } \right)^{1/4}e^{-\frac{m\tilde{\omega} x^{2}}{2  }}H_{\tilde{n}}\left( \sqrt{\frac{m\tilde{\omega} }{  }}x \right)
\end{align}$$

the vacuum amplitude is given by

$$\begin{align}
\braket{ 0|\tilde{0} }  & =\left(\frac{m\omega}{\pi  }e^{-\theta}\right)^{1/2}\int _{-\infty}^{+\infty} \mathrm{d}x e^{-\frac{m\omega ^{2}x^{2}}{2}(1+e^{-2\theta})} \\
 & =\left(\frac{m\omega}{\pi}e^{-\theta}\right)^{1/2} \left( \frac{2\pi}{m\omega(1+e^{-2\theta})} \right)^{1/2} \\
 & =\frac{1}{\sqrt{ \cosh \theta }}
\end{align}$$

---

now we will consider the vacuum state of two scalar field theories with masses $\displaystyle{\mu}$ and $\displaystyle{\tilde{\mu}}$ defined in $\displaystyle{\mathbb{R}_{1}\times S^{1}}$, where $\displaystyle{S^{1}}$ is a circle with circumference $\displaystyle{L}$. eom of the scalar field is given by

$$\begin{align}
\nabla ^{2}\phi-\mu^{2}\phi & =0
\end{align}$$

the general solution can be expanded as the Fourier modes

$$\begin{align}
\phi _{n} & =C_{n}e^{i\omega _{n} t}e^{ik_{n}x} \\
k _{n} & =\frac{2\pi n}{L} ,\quad n\in \mathbb{Z} \\
\omega _{n} & =\sqrt{ k _{n}^{2}+\mu ^{2} }
\end{align}$$

the field operator can be expressed as

$$\begin{align}
\phi(t,x) & =\sum _{n=-\infty}^{+\infty} \frac{1}{\sqrt{ 2L\omega _{n} }}\left( a _{n}e^{-i\omega _{n} t}e^{ik_{n}x}+a _{n}^{\dagger}e^{i\omega _{n} t}e^{-ik_{n}x} \right)
\end{align}$$

the vacuum state $\displaystyle{\ket{0}}$ is defined by

$$\begin{align}
a _{n}\ket{0} & =0 ,\quad \forall n\in \mathbb{Z}
\end{align}$$

how to compute the vacuum amplitude $\displaystyle{\braket{0|\tilde{0}}}$ between two theories with masses $\displaystyle{\mu}$ and $\displaystyle{\tilde{\mu}}$? we can express the field operator of the second theory as

$$\begin{align}
\tilde{\phi}(t,x) & =\sum _{n=-\infty}^{+\infty} \frac{1}{\sqrt{ 2L\tilde{\omega} _{n} }}\left( \tilde{a} _{n}e^{-i\tilde{\omega} _{n} t}e^{ik_{n}x}+\tilde{a} _{n}^{\dagger}e^{i\tilde{\omega} _{n} t}e^{-ik_{n}x} \right)
\end{align}$$

then we can expand each normalized positive-frequency mode of the second theory in terms of the normalized modes of the first theory. write

$$\begin{align}
u _{n}(t,x) & =\frac{1}{\sqrt{ 2L\omega _{n} }}e^{-i\omega _{n}t}e^{ik_{n}x}, \\
\tilde{u}_{n}(t,x) & =\frac{1}{\sqrt{ 2L\tilde{\omega} _{n} }}e^{-i\tilde{\omega} _{n}t}e^{ik_{n}x}.
\end{align}$$

Since $\displaystyle{u_{-n}^{*}}$ has the same spatial dependence as $\displaystyle{\tilde{u}_{n}}$, the mode matching is

$$\begin{align}
\tilde{u}_{n} & =\alpha _{n}u _{n}-\beta _{n}u_{-n}^{*},
\end{align}$$

where

$$\begin{align}
\alpha _{n} & =\frac{1}{2}\left( \sqrt{\frac{\tilde{\omega} _{n}}{\omega _{n}}}+\sqrt{\frac{\omega _{n}}{\tilde{\omega} _{n}}} \right), \\
\beta _{n} & =\frac{1}{2}\left( \sqrt{\frac{\tilde{\omega} _{n}}{\omega _{n}}}-\sqrt{\frac{\omega _{n}}{\tilde{\omega} _{n}}} \right).
\end{align}$$

it is convenient to write $\displaystyle{\tilde{\omega} _{n}=\omega _{n}e^{-2\theta _{n}}}$, then

$$\begin{align}
\alpha _{n} & =\cosh \theta _{n}, \\
\beta _{n} & =-\sinh \theta _{n}.
\end{align}$$

The momentum label in the mixing term is important. With the above convention, the creation and annihilation operators are related by

$$\begin{align}
\tilde{a} _{n} & =\alpha _{n}a _{n}+\beta _{n}^{*}a _{-n}^{\dagger}, \\
\tilde{a} _{n}^{\dagger} & =\alpha _{n}^{*}a _{n}^{\dagger}+\beta _{n}a _{-n}.
\end{align}$$

This preserves the canonical commutator because

$$\begin{align}
|\alpha _{n}|^{2}-|\beta _{n}|^{2} & =1.
\end{align}$$

the vacuum amplitude can be computed as

$$\begin{align}
\braket{0|\tilde{0}} & =\prod _{n=-\infty}^{+\infty} \frac{1}{\sqrt{ \cosh \theta _{n} }} \\
 & =\prod ^{+\infty}_{n=-\infty} \left( \frac{1}{2}\left( \sqrt{\frac{\tilde{\omega} _{n}}{\omega _{n}}}+\sqrt{\frac{\omega _{n}}{\tilde{\omega} _{n}}} \right) \right)^{-1/2} \\
 & =\prod ^{+\infty}_{n=-\infty} \left( \frac{1}{2}\left( \sqrt{\frac{\sqrt{\left( \frac{2\pi n}{L} \right)^{2}+\tilde{\mu} ^{2}}}{\sqrt{\left( \frac{2\pi n}{L} \right)^{2}+\mu ^{2}}}}+\sqrt{\frac{\sqrt{\left( \frac{2\pi n}{L} \right)^{2}+\mu ^{2}}}{\sqrt{\left( \frac{2\pi n}{L} \right)^{2}+\tilde{\mu} ^{2}}}} \right) \right)^{-1/2} \\
 & =\left( \frac{1}{2}\left( \sqrt{ \frac{\tilde{\mu}}{\mu} }+\sqrt{ \frac{\mu}{\tilde{\mu}} } \right) \right)^{-1/2} \prod ^{\infty}_{n=1} \left( \frac{1}{2}\left( \sqrt{\frac{\sqrt{\left( \frac{2\pi n}{L} \right)^{2}+\tilde{\mu} ^{2}}}{\sqrt{\left( \frac{2\pi n}{L} \right)^{2}+\mu ^{2}}}}+\sqrt{\frac{\sqrt{\left( \frac{2\pi n}{L} \right)^{2}+\mu ^{2}}}{\sqrt{\left( \frac{2\pi n}{L} \right)^{2}+\tilde{\mu} ^{2}}}} \right) \right)^{-1} \\
 & =\left( \frac{1}{2}\left( \sqrt{ \frac{\tilde{\mu}}{\mu} }+\sqrt{ \frac{\mu}{\tilde{\mu}} } \right) \right)^{-1/2}\prod ^{\infty}_{n=1} \left( \frac{1}{2}\left( \left( \frac{1+\left( \frac{\tilde{\mu}L}{2\pi n} \right)^{2}}{1+\left( \frac{\mu L}{2\pi n} \right)^{2}} \right)^{1/4}+ \left( \frac{1+\left( \frac{L\mu}{2\pi n} \right)^{2}}{1+\left( \frac{L\tilde{\mu}}{2\pi n} \right)^{2}} \right)^{1/4} \right) \right)^{-1} \\
\end{align}$$

---

# Dirichlet and Neumann vacua on a finite interval

consider the action

$$\begin{align}
S & =-\dfrac{1}{2}\int _{t_{i}}^{t_{f}}\mathrm{d}t\int _{0}^{L}\mathrm{d}x\left(-\dot{\phi}^{2}+\phi'^{2}+\mu ^{2}\phi ^{2}\right)
\end{align}$$

with two types of boundary conditions
- Dirichlet condition: $\displaystyle{\phi(x=0)=\phi(x=L)=0}$, and $\displaystyle{\delta \phi(x=0)=\delta \phi(x=L)=0}$.
- Neumann condition $\displaystyle{\phi'(x=0)=\phi'(x=L)=0}$

take a variation of the action

$$\begin{align}
\delta S & =-\int _{t_{i}}^{t_{f}}\mathrm{d}t\int _{0}^{L}\mathrm{d}x\left(-\dot{\phi}\delta \dot{\phi}+\phi'\delta \phi'+\mu ^{2}\phi \delta \phi\right) \\
 & =\int _{t_{i}}^{t_{f}}\mathrm{d}t\int _{0}^{L}\mathrm{d}x\left(-\ddot{\phi}+\phi''-\mu ^{2}\phi\right)\delta \phi +\int _{0}^{L}\mathrm{d}x \dot{\phi}\delta \phi|^{t_{f}}_{t_{i}} -\int _{t_{i}}^{t_{f}}\mathrm{d}t\,\phi'\delta\phi|_{0}^{L}.
\end{align}$$

The term supported on the spatial boundary vanishes for the Dirichlet condition because $\displaystyle{\delta\phi|_{\partial\Sigma}=0}$, and for the Neumann condition because $\displaystyle{\phi'|_{\partial\Sigma}=0}$. The symplectic form is given by

$$\begin{align}
\omega & =\int _{0}^{L}\mathrm{d}x\delta \dot{\phi}\wedge \delta \phi
\end{align}$$

## solving modes

the general solution to the eom

$$\begin{align}
-\ddot{\phi}+\phi''-\mu ^{2}\phi =0
\end{align}$$

is

$$\begin{align}
\phi & =ce^{-i\omega t+ikx}
\end{align}$$

with

$$\begin{align}
\omega ^{2} & =k^{2}+\mu ^{2}
\end{align}$$

for Dirichlet boundary condition, we should take a linear combination

$$\begin{align}
\phi & =c_{1}e^{-i\omega t+ikx}+c_{2}e^{-i\omega t-ikx} \\
 & \phi(x=0)=\phi(x=L)=0 \\
\implies \phi _{n} & = C_{n}e^{-i\omega _{n} t} \sin\left( \dfrac{n\pi x}{L} \right), & n\in \mathbb{N}^{+}, \omega ^{2}_{n}=\mu ^{2}+\left( \dfrac{n\pi}{L} \right)^{2}
\end{align}$$

the normalization constant is determined by the symplectic form

$$\begin{align}
\Omega[\phi _{n},\phi _{n}^{*}] & =-i \\
\implies C_{n} & =\dfrac{1}{\sqrt{ \omega _{n}L }}, & \phi ^{D} _{n}=\sqrt{ \dfrac{1}{\omega _{n}L} }e^{-i\omega _{n}t}\sin \dfrac{n\pi x}{L}
\end{align}$$

for Neumann boundary condition, we have

$$\begin{align}
\phi ^{N} _{0} & =\dfrac{1}{\sqrt{2\mu L}}e^{-i\mu t}, \\
\phi ^{N} _{n} & =\dfrac{1}{\sqrt{ \omega _{n}L }}e^{-i\omega _{n}t}\cos \dfrac{n\pi x}{L}, & n\in \mathbb{N}^{+}.
\end{align}$$

The constant Neumann mode has to be written separately because $\displaystyle{\int_{0}^{L}\mathrm{d}x=L}$, whereas $\displaystyle{\int_{0}^{L}\mathrm{d}x\,\sin ^{2}(n\pi x/L)=\int_{0}^{L}\mathrm{d}x\,\cos ^{2}(n\pi x/L)=L/2}$ for $\displaystyle{n\geq1}$. The assumption $\displaystyle{\mu>0}$ makes this zero-spatial-momentum mode an ordinary oscillator of frequency $\displaystyle{\mu}$.

expand

$$\begin{align}
\phi ^{(D/N)} & =\sum _{n}(a^{(D/N)}_{n}\phi _{n}^{(D/N)}+a^{(D/N)\dagger}_{n}\phi _{n}^{(D/N)*})
\end{align}$$

we have

$$\begin{align}
\omega ^{(D/N)} & =i\sum _{n}\delta a^{(D/N)\dagger}_{n}\wedge \delta a^{(D/N)}_{n}
\end{align}$$

and the standard Poisson brackets

$$\begin{align}
\left\{a^{(D/N)}_{n},a^{(D/N)\dagger}_{m}\right\} & =-i\delta _{nm}
\end{align}$$

## quantization

upon quantization, we promote the fields to operators and replace the Poisson brackets by commutators

$$\begin{align}
[a^{(D/N)}_{n},a^{(D/N)\dagger}_{m}] & =\delta _{nm}
\end{align}$$

the vacuum state $\displaystyle{\ket{0}_{(D/N)}}$ is defined as

$$\begin{align}
a^{(D/N)}_{n}\ket{0} _{(D/N)} & =0,  & \forall n
\end{align}$$

## vacuum wave functionals

the vacuum wave functional satisfies

$$\begin{align}
a^{(D/N)}_{n}\Psi_{(D/N)}[\phi] & =\int _{0}^{L} \mathrm{d}x \phi _{n}^{(D/N)}(0,x)\left(\omega _{n}^{(D/B)}\phi(x)+ \dfrac{\delta}{\delta \phi}(x)\right)\Psi_{(D/N)}[\phi] \\
 & =0 \quad \forall n \\
\implies \Psi_{(D/N)}[\phi] & =\mathcal{N}_{(D/N)}\exp\left(-\dfrac{1}{2}\int _{0}^{L}\mathrm{d}x \int _{0}^{L}\mathrm{d}y \phi(x)\Omega _{(D/N)}(x,y)\phi(y)\right), \\
\Omega _{(D/N)} & =\sqrt{ -\partial _{x}^{2}+\mu ^{2} } \\
 & =2\sum _{n}\omega _{n}^{(D/N)2} \phi _{n}^{(D/N)}(0,x)\phi _{n}^{(D/N)}(0,y) \\
\implies
\end{align}$$

## inner product between vacuum states

The abstract Fock spaces $\displaystyle{\mathcal{H}_{D}}$ and $\displaystyle{\mathcal{H}_{N}}$ are not naturally two subspaces of a third Hilbert space. Therefore the expression $\displaystyle{\braket{0_{D}|0_{N}}}$ only becomes meaningful after specifying how the equal-time bulk field and momentum are identified. We use the natural identification in which the same $\displaystyle{\phi(x)}$ and $\displaystyle{\pi(x)}$ are expanded in the two sets of normalized modes already constructed above.

Define the overlap matrix

$$\begin{align}
M_{rn} & :=2\sqrt{\omega _{r}^{N}\omega _{n}^{D}} \int_{0}^{L}\mathrm{d}x\, \phi _{r}^{N}(0,x)\phi _{n}^{D}(0,x).
\end{align}$$

Matching both the field and its canonical momentum gives the Bogoliubov transformation

$$\begin{align}
a_{r}^{N} & =\sum_{n=1}^{\infty} \left( \alpha _{rn}a_{n}^{D} +\beta _{rn}a_{n}^{D\dagger} \right), \\
\alpha _{rn} & =\dfrac{M_{rn}}{2} \left( \sqrt{\dfrac{\omega _{r}^{N}}{\omega _{n}^{D}}} +\sqrt{\dfrac{\omega _{n}^{D}}{\omega _{r}^{N}}} \right), \\
\beta _{rn} & =\dfrac{M_{rn}}{2} \left( \sqrt{\dfrac{\omega _{r}^{N}}{\omega _{n}^{D}}} -\sqrt{\dfrac{\omega _{n}^{D}}{\omega _{r}^{N}}} \right),
\end{align}$$

where $\displaystyle{\omega _{0}^{N}=\mu}$ and

$$\begin{align}
\omega _{n}^{D} & =\omega _{n}^{N} =\sqrt{\mu ^{2}+\left(\dfrac{n\pi}{L}\right)^{2}}, \qquad n\geq1.
\end{align}$$

The spatial overlap matrix is

$$\begin{align}
M_{0n} & =\dfrac{\sqrt{2}\left(1-(-1)^{n}\right)}{n\pi}, \\
M_{rn} & =\dfrac{2n\left(1-(-1)^{n+r}\right)} {\pi(n^{2}-r^{2})}, \qquad r\geq1,\quad n\neq r, \\
M_{rr} & =0.
\end{align}$$

Already the mixing of the Neumann constant mode with the odd Dirichlet modes is enough to diagnose the continuum limit. For odd $\displaystyle{n}$,

$$\begin{align}
|\beta _{0n}|^{2} & =\dfrac{2}{n^{2}\pi ^{2}} \left( \sqrt{\dfrac{\mu}{\omega _{n}^{D}}} -\sqrt{\dfrac{\omega _{n}^{D}}{\mu}} \right)^{2} \\
& =\dfrac{2}{\pi\mu L}\dfrac{1}{n} +O\left(\dfrac{1}{n^{2}}\right).
\end{align}$$

Hence

$$\begin{align}
\sum_{r,n}|\beta _{rn}|^{2} & =\infty.
\end{align}$$

which implies

$$\begin{align}
\left|\braket{ 0_{D}|0_{N} } \right| & =\det(1+\beta ^{\dagger}\beta)^{-1/4}=0
\end{align}$$

## lattice realization

Divide the interval into $\displaystyle{N}$ cells and choose the cell-centred points

$$\begin{align}
x_{j} & =\left(j-\dfrac{1}{2}\right)\dfrac{L}{N}, \qquad j=1,\ldots ,N,
\end{align}$$

and canonical variables

$$\begin{align}
\Phi _{j} & =\sqrt{\dfrac{L}{N}}\,\phi(x_{j}), & \Pi _{j} & =\sqrt{\dfrac{L}{N}}\,\pi(x_{j}), & [\Phi _{j},\Pi _{k}] & =i\delta _{jk}.
\end{align}$$

Both boundary conditions now define quadratic Hamiltonians on the same finite-dimensional Hilbert space $\displaystyle{L^{2}(\mathbb{R}^{N},\mathrm{d}^{N}\Phi)}$:

$$\begin{align}
H_{B}^{[N]} & =\dfrac{1}{2}\Pi ^{T}\Pi +\dfrac{1}{2}\Phi ^{T}K_{B}\Phi, \qquad B\in\{D,N\}.
\end{align}$$

The Neumann matrix is

$$\begin{align}
K_{N} & =\mu ^{2}\mathbf{1} +\left(\dfrac{N}{L}\right)^{2}
\begin{pmatrix}
1 & -1 &  &  &  \\
-1 & 2 & -1 &  &  \\
 & \ddots & \ddots & \ddots &  \\
 &  & -1 & 2 & -1 \\
 &  &  & -1 & 1
\end{pmatrix},
\end{align}$$

and the cell-centred Dirichlet matrix is

$$\begin{align}
K_{D} & =K_{N} +2\left(\dfrac{N}{L}\right)^{2} \left(e_{1}e_{1}^{T}+e_{N}e_{N}^{T}\right).
\end{align}$$

Thus strict Dirichlet does not remove two endpoint variables from the comparison. It pins the same regulated variables that occur in the Neumann theory, so the two wave functions can be integrated using the same measure. Let

$$\begin{align}
\Omega _{B} & :=K_{B}^{1/2}.
\end{align}$$

The exact lattice vacuum wave function is

$$\begin{align}
\Psi _{B}^{[N]}(\Phi) & =\left(\det\dfrac{\Omega _{B}}{\pi}\right)^{1/4} \exp\left(-\dfrac{1}{2}\Phi ^{T}\Omega _{B}\Phi\right).
\end{align}$$

The finite-cutoff vacuum overlap is therefore the ordinary Gaussian integral

$$\begin{align}
\mathcal{F}_{DN}^{[N]} & :=\braket{0_{D}^{[N]}|0_{N}^{[N]}} \\
& =\int_{\mathbb{R}^{N}}\mathrm{d}^{N}\Phi\, \Psi _{D}^{[N]}(\Phi)\Psi _{N}^{[N]}(\Phi) \\
& =\dfrac{ \det(\Omega _{D})^{1/4}\det(\Omega _{N})^{1/4}
}{ \det\left(\dfrac{\Omega _{D}+\Omega _{N}}{2}\right)^{1/2}
}.
\end{align}$$

Since $\displaystyle{\mu>0}$, all matrices are positive and

$$\begin{align}
0<\mathcal{F}_{DN}^{[N]}\leq1
\end{align}$$

for every finite $\displaystyle{N}$. Nevertheless, when both endpoints are changed from Neumann to Dirichlet,

$$\begin{align}
\mathcal{F}_{DN}^{[N]} & \sim C(\mu L)N^{-1/8}, \qquad N\to\infty.
\end{align}$$

The coefficient $\displaystyle{C(\mu L)}$ depends on the regulator, but the exponent $\displaystyle{1/8}$ is universal. If the boundary condition is changed at only one endpoint, the exponent is $\displaystyle{1/16}$. These exponents apply to the overlap amplitude; the squared fidelity has twice the exponent.

The Euclidean interpretation makes the exponent transparent. At $\displaystyle{\tau=0}$, the boundary condition changes from Neumann to Dirichlet at each spatial endpoint. In the short-distance free-boson boundary CFT, each such boundary-condition-changing operator has conformal weight

$$\begin{align}
h_{ND} & =\dfrac{1}{16}.
\end{align}$$

Two endpoints therefore give the cutoff power $\displaystyle{N^{-2h_{ND}}=N^{-1/8}}$. The mass affects the finite crossover function $\displaystyle{C(\mu L)}$ but not this UV exponent.

This is what is meant here by a boundary orthogonality catastrophe: the overlap is positive at every finite resolution, but it vanishes when infinitely many boundary-sensitive UV modes are included. It does not mean that every local bulk observable distinguishes the two vacua, or that the two formal wave functionals have no pointwise overlap.
