# a simple example

consider the following system

$$\begin{align}
S & =\int _{t_{i}}^{t_{f}} \frac{1}{2}(q_{1}-\dot{q}_{2})^{2}
\end{align}$$

the canonical momentums are

$$\begin{align}
\pi_{1} & =0 \\
\pi_{2} & =\dot{q}_{2}-q_{1}
\end{align}$$

which gives the primary constraint $\displaystyle{\chi_{1}=\pi_{1}}$. the Hamiltonian is given by

$$\begin{align}
H & =\pi_{2}\dot{q}_{2}-L+\lambda \pi_{1} \\
 & =\frac{1}{2}\pi_{2}^{2}+\pi_{2}q_{1}+\lambda \pi_{1}
\end{align}$$

the primary constraint should hold along the time evolution, we have

$$\begin{align}
\left\{H,\chi_{1}\right\} & =\pi_{2}\approx 0
\end{align}$$

then we get a secondary constraint $\displaystyle{\chi _{2}=\pi_{2}}$

$$\begin{align}
\left\{H,\chi_{2}\right\} & =0
\end{align}$$

so no more secondary constraints. consider the constraint matrix $\displaystyle{C_{\alpha \beta}=\left\{\chi _{\alpha},\chi _{\beta}\right\}}$, we have

$$\begin{align}
C_{\alpha \beta} & =0
\end{align}$$

so this system is of first class, i.e., a gauge system.

## BRST complex

introduce the ghost $c$, anti-ghost $\bar{c}$, and the Nakanishi-Lautrup field $B$. their ghost numbers are

$$\begin{align}
\operatorname{gh}(c) & =1, & \operatorname{gh}(\bar{c}) & =-1, & \operatorname{gh}(B) & =0.
\end{align}$$

the Lagrangian BRST differential is

$$\begin{align}
sq_{1} & =\dot{c}, &sq_{2} & =c, &sc & =0, \\
s\bar{c} & =B, &sB & =0.
\end{align}$$

it is nilpotent:

$$\begin{align}
s^{2}q_{1} & =0, &s^{2}q_{2} & =0, &s^{2}\bar{c} & =0.
\end{align}$$

also

$$\begin{align}
sF & =s(q_{1}-\dot{q}_{2})=0,
\end{align}$$

so the original action is BRST invariant.

## Gauge fixing

a simple gauge choice is

$$\begin{align}
\chi & =q_{2}=0.
\end{align}$$

choose the gauge fixing fermion

$$\begin{align}
\Psi & =\int _{t_{i}}^{t_{f}}\mathrm{d}t\,\bar{c}\left(q_{2}+\frac{\xi}{2}B\right).
\end{align}$$

the gauge-fixed action is

$$\begin{align}
S_{\mathrm{BRST}} & =S+\int _{t_{i}}^{t_{f}}\mathrm{d}t\,s\left[\bar{c}\left(q_{2}+\frac{\xi}{2}B\right)\right] \\
 & =\int _{t_{i}}^{t_{f}}\mathrm{d}t\left[\frac{1}{2}(q_{1}-\dot{q}_{2})^{2}{}+Bq_{2}+\frac{\xi}{2}B^{2}-\bar{c}c\right].
\end{align}$$

after integrating out $B$, one obtains

$$\begin{align}
S_{\mathrm{BRST}} & =\int _{t_{i}}^{t_{f}}\mathrm{d}t\left[\frac{1}{2}(q_{1}-\dot{q}_{2})^{2}-\frac{1}{2\xi}q_{2}^{2}-\bar{c}c\right].
\end{align}$$

in the Landau gauge $\xi\to 0$, this imposes $q_{2}=0$. then the remaining bosonic action is

$$\begin{align}
S_{\mathrm{gf}} & =\int _{t_{i}}^{t_{f}}\mathrm{d}t\,\frac{1}{2}q_{1}^{2},
\end{align}$$

whose equation of motion sets $q_{1}=0$. therefore the gauge-fixed theory also has no propagating bosonic mode.

the ghost term is algebraic for this gauge choice because

$$\begin{align}
s\chi & =sq_{2}=c.
\end{align}$$

equivalently, the Faddeev-Popov operator for the gauge condition $q_{2}=0$ is the identity.

## BRST charge

in the Hamiltonian BFV language, one may introduce canonical ghost pairs for the first-class constraints. since the constraint algebra is abelian, the minimal BRST charge is

$$\begin{align}
Q_{\mathrm{BFV}} & =c^{1}p_{1}+c^{2}p_{2},
\end{align}$$

with

$$\begin{align}
\{Q_{\mathrm{BFV}},Q_{\mathrm{BFV}}\} & =0.
\end{align}$$

the Lagrangian ghost $c$ packages the gauge parameter and its time derivative. schematically,

$$\begin{align}
c^{1} & \sim \dot{c}, & c^{2} & \sim c,
\end{align}$$

so that

$$\begin{align}
sq_{1} & =\{q_{1},Q_{\mathrm{BFV}}\}\sim \dot{c}, & sq_{2} & =\{q_{2},Q_{\mathrm{BFV}}\}\sim c.
\end{align}$$

the physical Hilbert space is the ghost-number-zero BRST cohomology,

$$\begin{align}
\mathcal{H}_{\mathrm{phys}} & =H^{0}(Q_{\mathrm{BRST}},\mathcal{H}).
\end{align}$$

for this model the cohomology contains only the vacuum sector, because the two first-class constraints remove the two canonical phase space variables.

## Thermal partition function from heat kernels

the useful lesson from the heat-kernel computation in [arXiv:0804.1773](https://arxiv.org/abs/0804.1773) is that a gauge theory one-loop partition function should be computed as a ratio of determinants. gauge-fixed bosonic determinants must be combined with ghost determinants before extracting the physical answer. in the present finite-dimensional model this mechanism is completely explicit.

work in Euclidean time

$$\begin{align}
\tau & \sim \tau+\beta.
\end{align}$$

all fields are periodic on the thermal circle, while the ghosts are also periodic because they are Faddeev-Popov ghosts rather than thermal matter fermions. choose the Euclidean gauge-fixed action

$$\begin{align}
S_{E} & =\int _{0}^{\beta}\mathrm{d}\tau\left[ \frac{1}{2}(q_{1}-\partial_{\tau}q_{2})^{2} +\frac{1}{2\xi}q_{2}^{2} +\bar{c}c \right].
\end{align}$$

this corresponds to the gauge condition

$$\begin{align}
\chi & =q_{2}=0
\end{align}$$

and to the Faddeev-Popov operator

$$\begin{align}
M & =\frac{\delta \chi}{\delta \epsilon}=1.
\end{align}$$

therefore the ghost determinant is

$$\begin{align}
Z_{\mathrm{gh}} & =\det M=\det 1.
\end{align}$$

the bosonic quadratic form is

$$\begin{align}
S_{E,\mathrm{bos}} & =\frac{1}{2}\int _{0}^{\beta}\mathrm{d}\tau
\begin{pmatrix}
q_{1} & q_{2}
\end{pmatrix}
K_{\xi}
\begin{pmatrix}
q_{1} \\
q_{2}
\end{pmatrix},
\end{align}$$

with

$$\begin{align}
K_{\xi} & =\begin{pmatrix}
1 & -\partial_{\tau} \\
\partial_{\tau} & -\partial_{\tau}^{2}+\xi^{-1}
\end{pmatrix}.
\end{align}$$

expand in thermal Fourier modes

$$\begin{align}
q_{i}(\tau) & =\sum _{n\in \mathbb{Z}}q_{i,n}e^{i\omega _{n}\tau}, & \omega _{n} & =\frac{2\pi n}{\beta}.
\end{align}$$

on the $n$-th mode,

$$\begin{align}
K_{\xi,n} & =\begin{pmatrix}
1 & -i\omega _{n} \\
i\omega _{n} & \omega _{n}^{2}+\xi^{-1}
\end{pmatrix},
\end{align}$$

so

$$\begin{align}
\det K_{\xi,n} & =\xi^{-1}.
\end{align}$$

all $\omega _{n}$ dependence cancels. this is the finite-dimensional analogue of the cancellation between gauge and ghost sectors in the Maxwell and gravity determinant formulas.

the one-loop determinant is

$$\begin{align}
Z_{\mathrm{1-loop}}(\beta) & =\frac{\det M}{\sqrt{\det K_{\xi}}} \\
 & =\exp\left[-\frac{1}{2}\sum _{n\in \mathbb{Z}}\log \xi^{-1}+\sum _{n\in \mathbb{Z}}\log 1\right]. \\
 & =1
\end{align}$$

by some zeta-function/heat kernel regularization. this result agree with the statistical result

$$\begin{align}
Z_{\text{phys}}(\beta) & =\mathrm{Tr}_{\mathcal{H}_{\text{phys}}}e^{-\beta H}=1
\end{align}$$

because the BRST cohomology contains only one vacuum state and the physical Hamiltonian vanishes on it.

# Parameterized harmonic oscillator

to get a less trivial finite-dimensional gauge system, consider the parameterized harmonic oscillator. start with the ordinary harmonic oscillator Hamiltonian

$$\begin{align}
H_{\mathrm{osc}} & =\frac{p^{2}}{2m}+\frac{1}{2}m\omega ^{2}q^{2}.
\end{align}$$

make the Newtonian time $t$ into a dynamical variable. the reparametrization-invariant action is

$$\begin{align}
S & =\int \mathrm{d}\tau\left[p\dot{q}+p_{t}\dot{t}-N C\right],&C & =p_{t}+H_{\mathrm{osc}}
\end{align}$$

here $N$ is the lapse. the gauge transformation generated by $C$ is

$$\begin{align}
X_{\epsilon} & =\int \mathrm{d}\tau \left( \epsilon \frac{\delta}{\delta t} + \frac{\epsilon p}{m} \frac{\delta}{\delta q} -\epsilon m\omega ^{2}q \frac{\delta}{\delta p}+\dot{\epsilon} \frac{\delta}{\delta N} \right)
\end{align}$$

## BRST quantization of the parameterized oscillator

the minimal BRST charge is

$$\begin{align}
Q & =cC,
\end{align}$$

where $c$ is the reparametrization ghost. since the constraint algebra is abelian,

$$\begin{align}
\{Q,Q\} & =0.
\end{align}$$

the corresponding BRST transformations are

$$\begin{align}
st & =c, &sq & =c\frac{p}{m}, \\
sp & =-cm\omega ^{2}q, &sp_{t} & =0, \\
sN & =\dot{c}, &sc & =0.
\end{align}$$

introduce the anti-ghost $\bar{c}$ and the Nakanishi-Lautrup field $B$,

$$\begin{align}
s\bar{c} & =B, & sB & =0.
\end{align}$$

choose the clock gauge

$$\begin{align}
\chi & =t-\tau=0.
\end{align}$$

a convenient gauge fixing fermion is

$$\begin{align}
\Psi & =\int \mathrm{d}\tau\,\bar{c}\left(t-\tau+\frac{\xi}{2}B\right).
\end{align}$$

then

$$\begin{align}
S_{\mathrm{BRST}} & =\int \mathrm{d}\tau\left[p\dot{q}+p_{t}\dot{t}-NC+B(t-\tau)+\frac{\xi}{2}B^{2}-\bar{c}c\right].
\end{align}$$

integrating out $\displaystyle{B}$, the gauge-fixed action reduces to

$$\begin{align}
S_{\text{BRST}} & =\int \mathrm{d}\tau\left(p\dot{q}+p_{t}\dot{t}-NC-\frac{1}{2\xi}(t-\tau)^{2}-\bar{c}c\right)
\end{align}$$

further integrating out $\displaystyle{t}$, we have

$$\begin{align}
S_{\text{BRST}} & =\int \mathrm{d}\tau\left(p\dot{q}-H_{\text{osc}}-\bar{c}c\right)
\end{align}$$

## Thermal partition function of the parameterized oscillator

write the BRST thermal path integral schematically as

$$\begin{align}
Z_{\mathrm{BRST}}(\beta) & =Z_{\mathrm{osc}}(\beta)\,Z_{\mathrm{gh}}(\beta).
\end{align}$$

the thermal circle is the Euclidean time circle of the oscillator. the ghost contribution is

$$\begin{align}
Z_{\mathrm{gh}}(\beta) & =\int \mathcal{D}\bar{c}\mathcal{D}c\,\exp\left[-\int _{0}^{\beta}\mathrm{d}\tau\,\bar{c}c\right] \\
 & =\det M_{\mathrm{clock}}=\det 1. \\
 & =1
\end{align}$$

the oscillator part gives simply

$$\begin{align}
Z_{\mathrm{osc}}(\beta) & =\left[\det(-\partial_{\tau}^{2}+\omega ^{2})\right]^{-1/2} \\
 & = \frac{1}{2\sinh\left( \frac{\beta \omega}{2} \right)}
\end{align}$$

equivalently,

$$\begin{align}
Z_{\mathrm{phys}}(\beta) & =\operatorname{Tr}e^{-\beta H_{\mathrm{osc}}} \\
 & =\sum _{n=0}^{\infty}e^{-\beta\omega(n+1/2)} \\
 & =\frac{1}{2\sinh(\beta\omega/2)}.
\end{align}$$

## Proper-time gauge and dynamical ghosts

the clock gauge above is useful for reducing the system, but it makes the Faddeev-Popov operator algebraic. if we want an example closer to the Maxwell or gravity heat-kernel calculation, we should instead choose the lapse gauge

$$\begin{align}
\chi & =N-1=0.
\end{align}$$

the gauge fixing fermion is

$$\begin{align}
\Psi & =\int \mathrm{d}\tau\,\bar{c}\left(N-1+\frac{\xi}{2}B\right).
\end{align}$$

since the BRST transformation of the lapse is

$$\begin{align}
sN & =\dot{c},
\end{align}$$

we get

$$\begin{align}
s\Psi & =\int \mathrm{d}\tau\left[ B(N-1)+\frac{\xi}{2}B^{2}-\bar{c}\dot{c} \right].
\end{align}$$

therefore the gauge-fixed action is

$$\begin{align}
S_{\mathrm{BRST}} & =\int \mathrm{d}\tau\left[ p\dot{q}+p_{t}\dot{t}-NC {}+B(N-1)+\frac{\xi}{2}B^{2}-\bar{c}\dot{c} \right].
\end{align}$$

now the ghost is dynamical:

$$\begin{align}
S_{\mathrm{gh}} & =-\int \mathrm{d}\tau\,\bar{c}\partial_{\tau}c.
\end{align}$$

on the thermal circle the ghosts are periodic Faddeev-Popov ghosts,

$$\begin{align}
c(\tau) & =\sum _{n\in \mathbb{Z}}c_{n}e^{i\omega _{n}\tau}, & \omega _{n} & =\frac{2\pi n}{\beta}.
\end{align}$$

the Faddeev-Popov determinant is

$$\begin{align}
Z_{\mathrm{gh}} & =\det{}'\partial_{\tau} =\prod _{n\in \mathbb{Z},\,n\neq 0}i\omega _{n}.
\end{align}$$

the prime removes the constant ghost zero mode. this zero mode is the residual constant reparametrization left unfixed by $N=1$.

equivalently, the absolute value of the ghost determinant is controlled by the second-order heat kernel

$$\begin{align}
|Z_{\mathrm{gh}}|^{2} & =\det{}'(-\partial_{\tau}^{2}),
\end{align}$$

with

$$\begin{align}
\operatorname{Tr}'e^{s\partial_{\tau}^{2}} & = \sum _{n\in \mathbb{Z},\,n\neq 0} \exp\left[-s\left(\frac{2\pi n}{\beta}\right)^{2}\right].
\end{align}$$

zeta regularization gives the standard circle result

$$\begin{align}
\det{}'(-\partial_{\tau}^{2}) & =\beta^{2}, & |Z_{\mathrm{gh}}| & =\beta,
\end{align}$$

up to a phase convention for the first-order operator $\partial_{\tau}$. this $\beta$ factor is not a physical oscillator state-counting factor. it belongs to the gauge sector and is canceled by the residual reparametrization volume or, equivalently, by the normalization of the clock sector. after this BRST normalization, the physical thermal partition function is still

$$\begin{align}
Z_{\mathrm{phys}}(\beta) & = \frac{1}{2\sinh(\beta\omega/2)}.
\end{align}$$

the proper-time gauge is therefore a better toy model for the heat-kernel logic: the ghost has a genuine kinetic operator, but the BRST cohomology still leaves only the ordinary harmonic oscillator as the physical sector.
