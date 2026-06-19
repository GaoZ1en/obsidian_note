consider the following 0+1 dim model

$$\begin{align}
L & =\dfrac{1}{2}B_{ij}\dot{x}^{i}\dot{x}^{j}-\dfrac{1}{2}C_{ij}x^{i}x^{j}+\dfrac{1}{2}D_{ab}y^{a}y^{b}+E_{i,a}\dot{x}^{i}y^{a}
\end{align}$$

Assume that $B_{ij}$, $C_{ij}$, and $D_{ab}$ are symmetric and that $B_{ij}$ is non-degenerate. The canonical momenta are

$$\begin{align}
p_{i}&=B_{ij}\dot{x}^{j}+E_{i,a}y^{a},&
\pi_{a}&=0.
\end{align}$$

Thus the primary constraints are

$$\begin{align}
\phi_{a}&:=\pi_{a}\approx 0.
\end{align}$$

Writing $(B^{-1})^{ij}$ for the inverse matrix of $B_{ij}$, the canonical Hamiltonian is

$$\begin{align}
H_{c}&=\frac{1}{2}\left(p_{i}-E_{i,a}y^{a}\right)(B^{-1})^{ij}\left(p_{j}-E_{j,b}y^{b}\right)+\frac{1}{2}C_{ij}x^{i}x^{j}-\frac{1}{2}D_{ab}y^{a}y^{b}.
\end{align}$$

The total Hamiltonian is $H_{T}=H_{c}+u^{a}\phi_{a}$. Preservation of the primary constraints gives the secondary constraints

$$\begin{align}
\dot{\phi}_{a}=\{\phi_{a},H_{T}\}&=E_{i,a}(B^{-1})^{ij}\left(p_{j}-E_{j,b}y^{b}\right)+D_{ab}y^{b}\approx 0,\\
\chi_{a}&:=E_{i,a}(B^{-1})^{ij}p_{j}+\left(D_{ab}-E_{i,a}(B^{-1})^{ij}E_{j,b}\right)y^{b}\approx 0.
\end{align}$$

Define

$$\begin{align}
K_{ab}&:=D_{ab}-E_{i,a}(B^{-1})^{ij}E_{j,b}.
\end{align}$$

With the canonical Poisson brackets $\{x^{i},p_{j}\}=\delta^{i}_{j}$ and $\{y^{a},\pi_{b}\}=\delta^{a}_{b}$, the constraint brackets are

$$\begin{align}
\{\phi_{a},\phi_{b}\}&=0,&
\{\phi_{a},\chi_{b}\}&=-K_{ab},&
\{\chi_{a},\chi_{b}\}&=0.
\end{align}$$

Therefore the constraint matrix for $(\phi_{a},\chi_{a})$ is

$$\begin{align}
\mathcal{C}_{AB}&=
\begin{pmatrix}
0&-K\\
K&0
\end{pmatrix}.
\end{align}$$

The next consistency condition is

$$\begin{align}
\dot{\chi}_{a}=\{\chi_{a},H_{T}\}&=-E_{i,a}(B^{-1})^{ij}C_{jk}x^{k}+K_{ab}u^{b}\approx 0.
\end{align}$$

If $K$ is non-degenerate, the constraints $\phi_{a}$ and $\chi_{a}$ are second-class and this equation fixes all multipliers $u^{a}$. The constraint matrix is degenerate precisely when $K$ has a nonzero null vector $v^{a}$, equivalently $\det K=0$ in finite dimension:

$$\begin{align}
K_{ab}v^{b}&=0,
\end{align}$$

then the combinations

$$\begin{align}
\phi_{v}&:=v^{a}\phi_{a},&
\chi_{v}&:=v^{a}\chi_{a}
\end{align}$$

commute with all $\phi_{a}$ and $\chi_{a}$. In this null direction,

$$\begin{align}
\chi_{v}&=v^{a}E_{i,a}(B^{-1})^{ij}p_{j}=R^{i}p_{i},&
R^{i}&:=(B^{-1})^{ij}E_{j,a}v^{a}.
\end{align}$$

Preservation of $\chi_{v}$ gives

$$\begin{align}
\dot{\chi}_{v}=\{\chi_{v},H_{T}\}&=-R^{i}C_{ij}x^{j}.
\end{align}$$

Thus the null direction gives a first-class gauge chain precisely when

$$\begin{align}
K_{ab}v^{b}&=0,&
C_{ij}R^{j}&=0,&
R^{i}&=(B^{-1})^{ij}E_{j,a}v^{a}.
\end{align}$$

If $K_{ab}v^{b}=0$ but $C_{ij}R^{j}\neq 0$, preservation of $\chi_{v}$ produces an additional constraint instead of a gauge redundancy. Hence the theory becomes a gauge theory only along null directions of $K$ whose induced $x$-direction is also a zero mode of the potential.

For every vector $v^{a}$ obeying these conditions, the corresponding gauge generator is

$$\begin{align}
G[\epsilon]&=\epsilon(t)\chi_{v}-\dot{\epsilon}(t)\phi_{v}.
\end{align}$$

It generates

$$\begin{align}
\delta_{\epsilon}x^{i}&=\{x^{i},G[\epsilon]\}=\epsilon(t)R^{i},&
\delta_{\epsilon}y^{a}&=\{y^{a},G[\epsilon]\}=-\dot{\epsilon}(t)v^{a},\\
\delta_{\epsilon}p_{i}&=\{p_{i},G[\epsilon]\}=0,&
\delta_{\epsilon}\pi_{a}&=\{\pi_{a},G[\epsilon]\}=-\epsilon(t)K_{ab}v^{b}=0.
\end{align}$$

---

## Minimal gauge model with one physical mode

consider a model with two $x$ variables and one $y$ variable:

$$\begin{align}
L&=\frac{1}{2}\left(\dot{x}_{1}^{2}+\dot{x}_{2}^{2}\right)+y\left(\dot{x}_{1}+\dot{x}_{2}\right)+y^{2}-\frac{\Omega^{2}}{4}\left(x_{2}-x_{1}\right)^{2}.
\end{align}$$

The canonical momenta are

$$\begin{align}
p_{1}&=\dot{x}_{1}+y,&
p_{2}&=\dot{x}_{2}+y,&
\pi&=0.
\end{align}$$

The primary constraint is

$$\begin{align}
\phi&:=\pi\approx 0.
\end{align}$$

The canonical Hamiltonian is

$$\begin{align}
H_{c}&=\frac{1}{2}\left(p_{1}^{2}+p_{2}^{2}\right)-y\left(p_{1}+p_{2}\right)+\frac{\Omega^{2}}{4}\left(x_{2}-x_{1}\right)^{2}.
\end{align}$$

Preservation of the primary constraint gives the secondary constraint

$$\begin{align}
\dot{\phi}=\{\phi,H_{T}\}&=p_{1}+p_{2}\approx 0,&
\chi&:=p_{1}+p_{2}\approx 0.
\end{align}$$

The constraint brackets are

$$\begin{align}
\{\phi,\phi\}&=0,&
\{\phi,\chi\}&=0,&
\{\chi,\chi\}&=0,
\end{align}$$

and the secondary constraint is preserved automatically:

$$\begin{align}
\dot{\chi}=\{\chi,H_{T}\}&=0.
\end{align}$$

Thus $\phi$ and $\chi$ are first-class constraints. The gauge generator is

$$\begin{align}
G[\epsilon]&=\epsilon(t)\chi-\dot{\epsilon}(t)\phi=\epsilon(t)(p_{1}+p_{2})-\dot{\epsilon}(t)\pi.
\end{align}$$

It gives

$$\begin{align}
\delta_{\epsilon}x_{1}&=\epsilon(t),&
\delta_{\epsilon}x_{2}&=\epsilon(t),&
\delta_{\epsilon}y&=-\dot{\epsilon}(t),\\
\delta_{\epsilon}p_{1}&=0,&
\delta_{\epsilon}p_{2}&=0,&
\delta_{\epsilon}\pi&=0.
\end{align}$$

## Partition function check

Use Euclidean time $\tau\sim \tau+\beta$ and take the real Euclidean action

$$\begin{align}
S_{E}&=\int_{0}^{\beta}\mathrm{d}\tau\left[\frac{1}{2}\left(\dot{x}_{1}^{2}+\dot{x}_{2}^{2}\right)+y\left(\dot{x}_{1}+\dot{x}_{2}\right)+y^{2}+\frac{\Omega^{2}}{4}\left(x_{2}-x_{1}\right)^{2}\right],
\end{align}$$

where the dot now denotes $\mathrm{d}/\mathrm{d}\tau$. The Euclidean gauge transformation is

$$\begin{align}
\delta_{\epsilon}x_{1}&=\epsilon,&
\delta_{\epsilon}x_{2}&=\epsilon,&
\delta_{\epsilon}y&=-\dot{\epsilon}.
\end{align}$$

Choose the gauge condition

$$\begin{align}
F&:=\frac{x_{1}+x_{2}}{2}=0.
\end{align}$$

Since $\delta_{\epsilon}F=\epsilon$, the Faddeev-Popov determinant is field independent:

$$\begin{align}
\Delta_{\mathrm{FP}}&=\det\left(\frac{\delta F}{\delta \epsilon}\right)=\det(1).
\end{align}$$

Thus the gauge-fixed Faddeev-Popov partition function is

$$\begin{align}
Z_{\mathrm{FP}}&=\frac{1}{\operatorname{Vol}\mathcal{G}}\int \mathcal{D}x_{1}\mathcal{D}x_{2}\mathcal{D}y\,\Delta_{\mathrm{FP}}\delta\left(\frac{x_{1}+x_{2}}{2}\right)e^{-S_{E}}\\
&=\mathcal{N}_{y}\int \mathcal{D}x_{1}\exp\left[-\int_{0}^{\beta}\mathrm{d}\tau\left(\dot{x}_{1}^{2}+\Omega^{2}x_{1}^{2}\right)\right],
\end{align}$$

where $\mathcal{N}_{y}$ is the field-independent Gaussian factor from the auxiliary field $y$.

Now compute the same object from the canonical constrained system. Use the first-class constraints

$$\begin{align}
\phi&=\pi\approx 0,&
\chi&=p_{1}+p_{2}\approx 0,
\end{align}$$

and fix them by

$$\begin{align}
\gamma_{1}&:=y=0,&
\gamma_{2}&:=\frac{x_{1}+x_{2}}{2}=0.
\end{align}$$

For the ordered set $(\phi,\chi,\gamma_{1},\gamma_{2})$, the constraint matrix is

$$\begin{align}
\mathcal{M}_{AB}&=\{\Psi_{A},\Psi_{B}\}=
\begin{pmatrix}
0&0&-1&0\\
0&0&0&-1\\
1&0&0&0\\
0&1&0&0
\end{pmatrix},&
\det\mathcal{M}&=1.
\end{align}$$

The corresponding Dirac bracket on the gauge slice gives

$$\begin{align}
\{x_{1},p_{1}\}_{D}&=\frac{1}{2},&
\{x_{1},x_{1}\}_{D}&=0,&
\{p_{1},p_{1}\}_{D}&=0.
\end{align}$$

The reduced Hamiltonian in these original variables is $H=p_{1}^{2}+\Omega^{2}x_{1}^{2}$. With $[x_{1},p_{1}]=i/2$, this Hamiltonian has spectrum $E_{n}=\Omega(n+\frac{1}{2})$, hence the canonical trace is

$$\begin{align}
Z_{\mathrm{can}}^{\mathrm{op}}&=\operatorname{Tr}e^{-\beta H}=\frac{1}{2\sinh\left(\frac{\beta\Omega}{2}\right)}.
\end{align}$$

The Faddeev-Senjanovic phase-space partition function is therefore

$$\begin{align}
Z_{\mathrm{can}}&=\int \mathcal{D}x_{1}\mathcal{D}x_{2}\mathcal{D}y\mathcal{D}p_{1}\mathcal{D}p_{2}\mathcal{D}\pi\,\delta(\phi)\delta(\chi)\delta(\gamma_{1})\delta(\gamma_{2})\sqrt{\det\mathcal{M}}\\
&\quad\times\exp\left[\int_{0}^{\beta}\mathrm{d}\tau\left(i p_{1}\dot{x}_{1}+i p_{2}\dot{x}_{2}+i\pi\dot{y}-H_{c}\right)\right].
\end{align}$$

The delta functions impose

$$\begin{align}
\pi&=0,&
y&=0,&
p_{2}&=-p_{1},&
x_{2}&=-x_{1}.
\end{align}$$

On this slice,

$$\begin{align}
p_{1}\dot{x}_{1}+p_{2}\dot{x}_{2}&=2p_{1}\dot{x}_{1},&
H_{c}&=p_{1}^{2}+\Omega^{2}x_{1}^{2}.
\end{align}$$

Hence

$$\begin{align}
Z_{\mathrm{can}}&=\int \mathcal{D}x_{1}\mathcal{D}p_{1}\exp\left[\int_{0}^{\beta}\mathrm{d}\tau\left(2i p_{1}\dot{x}_{1}-p_{1}^{2}-\Omega^{2}x_{1}^{2}\right)\right]\\
&=\mathcal{N}_{p}\int \mathcal{D}x_{1}\exp\left[-\int_{0}^{\beta}\mathrm{d}\tau\left(\dot{x}_{1}^{2}+\Omega^{2}x_{1}^{2}\right)\right].
\end{align}$$

The nontrivial $\beta$ and $\Omega$ dependence is therefore identical:

$$\begin{align}
Z_{\mathrm{FP}}&\propto Z_{\mathrm{can}}\propto \left[\det\nolimits_{\mathrm{P}}\left(-\partial_{\tau}^{2}+\Omega^{2}\right)\right]^{-1/2}
=\frac{1}{2\sinh\left(\frac{\beta\Omega}{2}\right)}.
\end{align}$$

Thus Faddeev-Popov quantization and canonical constrained quantization give the same partition function for this model. The proportionality constants $\mathcal{N}_{y}$ and $\mathcal{N}_{p}$ are field-independent normalization factors fixed by the same choice of functional measure.
