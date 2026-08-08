Consider a particle whose configuration space is a $\displaystyle{d}$-dimensional Riemannian manifold $\displaystyle{(\mathcal{M},g)}$, with Euclidean action. Throughout this note, set $\hbar=1$.

$$\begin{align}
S_{E}[x] & =\int _{-\beta}^{0}\mathrm{d}t\left(\dfrac{1}{2}g_{ij}(x)\dot{x}^{i}\dot{x}^{j}+V(x)+V_{\mathrm{ct}}(x)\right)
\end{align}$$

the classical Hamiltonian is

$$\begin{align}
H_{\mathrm{cl}}(x,p) & =\dfrac{1}{2}g^{ij}(x)p_{i}p_{j}+V(x)
\end{align}$$

turn to quantum mechanics, the Hilbert space and the Hamiltonian are chosen to be

$$\begin{align}
\mathcal{H} & =L^{2}(\mathcal{M},\mathrm{d}^{d}x\sqrt{ g }) \\
H_{0} & =-\dfrac{1}{2}\Delta _{g}+V(x)
\end{align}$$

here $\displaystyle{\Delta _{g}=\dfrac{1}{\sqrt{ g }}\partial _{i}(\sqrt{ g }g^{ij}\partial _{j})}$ is the Laplace-Beltrami operator. Consider the formal covariantly normalized position states $\displaystyle{\ket{x}}$, which satisfy

$$\begin{align}
\mathbf{1} & =\int \mathrm{d}^{d}x\sqrt{ g(x) }\ket{x} \bra{x}  \\
\braket{ x|y }  & =\dfrac{\delta ^{(d)}(x-y)}{\sqrt{ g(x) }}
\end{align}$$

define the flat-normalized position states and the half-density wave functions by

$$\begin{align}
\ket{x}_{\mathrm{flat}} & =g(x)^{1/4}\ket{x}, & \tilde{\psi}(x) & ={}_{\mathrm{flat}}\!\braket{x|\psi}=g(x)^{1/4}\psi(x).
\end{align}$$

Then $\displaystyle{{}_{\mathrm{flat}}\!\braket{x|y}_{\mathrm{flat}}=\delta^{(d)}(x-y)}$, and the half-density inner product uses the flat coordinate measure. In this representation,

$$\begin{align}
\tilde{H}_{0} & =g^{1/4}H_0g^{-1/4} \\
&=\dfrac{1}{2}g^{-1/4}(x)p_{i}g^{1/2}(x)g^{ij}p_{j}g^{-1/4}(x)+V(x), & p_{i}&=-i\partial _{i}
\end{align}$$

the half-density transition kernel is

$$\begin{align}
\tilde{K}(x_{f},x_{i};\beta) & ={}_{\mathrm{flat}}\!\braket{x_{f}|e^{-\beta \tilde{H}_{0}}|x_{i}}_{\mathrm{flat}}
\end{align}$$

with

$$\begin{align}
-\partial _{\beta}\tilde{K} & =\tilde{H}_{0,x_{f}}\tilde{K}, \\
\lim_{ \beta \to 0^{+} } \tilde{K}(x_{f},x_{i};\beta) & =\delta ^{(d)}(x_{f}-x_{i}).
\end{align}$$

The corresponding scalar kernel is

$$\begin{align}
K(x_f,x_i;\beta) &=g(x_f)^{-1/4}\tilde K(x_f,x_i;\beta)g(x_i)^{-1/4}, \\
-\partial_\beta K&=H_{0,x_f}K, \\
\lim_{\beta\to0^+}K(x_f,x_i;\beta) &=\frac{\delta^{(d)}(x_f-x_i)}{\sqrt{g(x_i)}}.
\end{align}$$

The path integral must reproduce these results. These two conditions, rather than a formal continuum Lagrangian, fix the required finite local terms. And there are three equivalent approaches:

## Time Slicing Method

Set $\displaystyle{\beta=N\varepsilon}$ and insert $\displaystyle{N-1}$ position resolutions and $\displaystyle{N}$ momentum resolutions into $\displaystyle{e^{-\beta \tilde{H}_{0}}}$. Here we choose Weyl-ordered Hamiltonian, then the one-step kernel is

$$\begin{align}
\tilde{K}_{\varepsilon}(x_{k+1},x_{k}) & =\int \dfrac{\mathrm{d}^{d}p_{k}}{(2\pi)^{d}}\exp\left(ip_{ki}\Delta x_{k}^{i}-\varepsilon H_{W}(p_{k},\bar{x}_{k})\right)+\mathcal{O}(\varepsilon ^{2})
\end{align}$$

where

$$\begin{align}
\Delta x_{k}^{i} & =x_{k+1}^{i}-x_{k}^{i}, & \bar{x}^{i}_{k} & =\dfrac{x_{k+1}^{i}+x_{k}^{i}}{2}
\end{align}$$

where

$$\begin{align}
H_{W}(x,p) & =\dfrac{1}{2}g^{ij}(x)p_{i}p_{j}+V(x)+\dfrac{1}{8}(R+g^{ij}\Gamma ^{l}_{~ik}\Gamma ^{k}_{~jl})
\end{align}$$

and the last term $\displaystyle{V_{\mathrm{TS}}(x)=\dfrac{1}{8}(R+g^{ij}\Gamma ^{l}_{~ik}\Gamma ^{k}_{~jl})}$ is the time-slicing counterterm.

The $\displaystyle{p_{k}}$ integrals are finite-dimensional Gaussians. Integrating out momenta gives the half-density kernel

$$\begin{align}
\tilde{K}_{N}(x_{f},x_{i};\beta) & =\int \prod ^{N-1}_{k=1} \mathrm{d}^{d}x_{k} \prod ^{N-1}_{k=0} \sqrt{ \dfrac{g(\bar{x}_{k})}{(2\pi \varepsilon)^{d}} } \\
 & \times \exp\left(-\sum ^{N-1}_{k=0}\left(\dfrac{1}{2\varepsilon}g_{ij}(\bar{x}_{k})\Delta x_{k}^{i}\Delta x_{k}^{j}+\varepsilon(V(\bar{x}_{k})+V_{\mathrm{TS}}(\bar{x}_{k}))\right)\right)
\end{align}$$

the scalar kernel is recovered through

$$\begin{align}
K_{N}(x_{f},x_{i};\beta) & =g(x_{f})^{-1/4}\tilde{K}_{N}(x_{f},x_{i};\beta)g(x_{i})^{-1/4}
\end{align}$$

the continuum limit is defined by $\displaystyle{N\to \infty}$ at fixed $\displaystyle{\beta}$.

### Time-Slicing Contact Rules

The time lattice fixes equal-time products before the continuum limit is taken. To state the rule on the dimensionless interval $\displaystyle{-1\leq\tau\leq0}$, divide it into $\displaystyle{N}$ slices of width $\displaystyle{\epsilon _{\tau}=1/N}$. Continuum integrals and delta functions are the shorthand

$$\begin{align}
\int_{-1}^{0}\mathrm{d}\tau & \longleftrightarrow \epsilon _{\tau}\sum_{n=1}^{N}, & \delta(\tau_{n}-\tau_{m}) & \longleftrightarrow \frac{\delta _{nm}}{\epsilon _{\tau}}.
\end{align}$$

The midpoint prescription inherited from Weyl ordering gives the lattice step function

$$\begin{align}
\theta _{nm} & =
\begin{cases}
1, & n>m, \\
\dfrac{1}{2}, & n=m, \\
0, & n<m.
\end{cases}
\end{align}$$

In particular, $\displaystyle{\theta(0)=1/2}$. Therefore the time-slicing prescription assigns

$$\begin{aligned}
I_{\mathrm{TS}} &=\int_{-1}^{0}\mathrm{d}\tau\,\mathrm{d}\sigma\, \delta(\tau-\sigma)\theta(\tau-\sigma)\theta(\sigma-\tau) \\
&\longleftrightarrow \epsilon _{\tau}^{2}\sum_{n,m=1}^{N} \frac{\delta _{nm}}{\epsilon _{\tau}}\theta _{nm}\theta _{mn} \\
&=\epsilon _{\tau}\sum_{n=1}^{N}\left(\frac{1}{2}\right)^{2} =\frac{1}{4}.
\end{aligned}$$

This value cannot be obtained by treating the integrand as a product of ordinary continuum functions. For example, using $\displaystyle{\delta(x)=\mathrm{d}\theta(x)/\mathrm{d}x}$ and $\displaystyle{\theta(-x)=1-\theta(x)}$ before specifying a regulator would instead assign the contact factor

$$\begin{align}
\int\mathrm{d}x\,\delta(x)\theta(x)\theta(-x) &\longrightarrow\int_{0}^{1}\mathrm{d}u\,u(1-u)=\frac{1}{6}.
\end{align}$$

This manipulation defines a different extension of the singular product, not the time-slicing prescription. In time slicing one first evaluates the finite lattice sums and only then takes $\displaystyle{N\to\infty}$.

These contact products appear in perturbation theory because the differentiated coordinate propagator contains a delta function:

$$\begin{align}
\partial _{\tau}\partial _{\sigma}\Delta(\tau,\sigma) &=1-\delta(\tau-\sigma).
\end{align}$$

When derivative vertices and measure-ghost contractions are combined, products such as $\displaystyle{\delta\theta\theta}$ occur. The rules above are the continuum diagrammatic notation for the original finite lattice definition; they are not an additional physical assumption or a new counterterm.

## Configuration-Space Measure and Measure Ghosts, Background Expansion.

To define mode/dimensional regularization or to do continuum Feynman diagrams of time-slicing, we introduce the following contents.

The momentum integration produces one factor of $\displaystyle{\sqrt{ g }}$ per time slice. Formally, by introducing a commuting field $\displaystyle{a^{i}}$ and anticommuting Lee-Yang ghost fields $\displaystyle{b^{i},c^{i}}$, we have

$$\begin{align}
\prod _{t}\sqrt{ g(x(t)) } & =\prod _{t}\mathrm{d}a^{i}\mathrm{d}b^{i}\mathrm{d}c^{i}\exp\left(-S_{\mathrm{gh}}[x,a,b,c]\right) \\
S_{\mathrm{gh}} & =\dfrac{1}{2}\int \mathrm{d}tg_{ij}(x)(a^{i}a^{j}+b^{i}c^{j})
\end{align}$$

the local propagators of Lee-Yang ghosts cancel the ultraviolet contact terms that arise when two derivatives in $g_{ij}(x)\dot x^i\dot x^j$ are contracted.

Rescale physical Euclidean time as

$$\begin{align}
t & =\beta \tau, & -1\leqslant\tau\leqslant 0
\end{align}$$

let

$$\begin{align}
\xi ^{i} & =x_{i}^{i}-x^{i}_{f}, & x^{i}_{\mathrm{bg}}(\tau) & =x_{f}^{i}-\xi ^{i}\tau, & x^{i}(\tau)=x^{i}_{\mathrm{bg}}(\tau)+q^{i}(\tau)
\end{align}$$

with

$$\begin{align}
q^{i}(-1) & =q^{i}(0)=0
\end{align}$$

after the rescaling, the action becomes

$$\begin{align}
S_{E}[x,a,b,c] & =\dfrac{1}{2\beta}\int _{-1}^{0}\mathrm{d}\tau g_{ij}(x)(x'^{i}x'^{j}+a^{i}a^{j}+b^{i}c^{j})+\beta \int _{-1}^{0}\mathrm{d}\tau(V(x)+V_{\mathrm{ct}}(x))
\end{align}$$

expanding the metric about $\displaystyle{x_{f}}$ gives

$$\begin{align}
S_{E} & =S_{2}+S_{3}+S_{4}+\dots \\
S_{2} & =\dfrac{1}{2\beta}\int _{-1}^{0}\mathrm{d}\tau g_{ij}(\xi ^{i}\xi ^{j}+q'^{i}q'^{j}+a^{i}a^{j}+b^{i}c^{j}) \\
S_{3} & =\dfrac{1}{2\beta}\int _{-1}^{0}\mathrm{d}\tau \partial _{k}g_{ij}(q^{k}-\xi ^{k}\tau)(\xi ^{i}\xi ^{j}+q'^{i}q'^{j}+a^{i}a^{j}+b^{i}c^{j}-2q'^{i}\xi ^{j}) \\
S_{4} & =\dfrac{1}{4\beta}\int _{-1}^{0}\mathrm{d}\tau \partial _{k}\partial _{l}g_{ij}(q^{k}q^{l}+\xi ^{k}\xi ^{l}\tau ^{2}-2q^{k}\xi ^{l}\tau)(\xi ^{i}\xi ^{j}+q'^{i}q'^{j}+a^{i}a^{j}+b^{i}c^{j}-2q'^{i}\xi ^{j})
\end{align}$$

the propagators following from $\displaystyle{S_{2}}$ is

$$\begin{align}
\braket{ q^{i}(\tau)q^{j}(\sigma) } _{0} & =-\beta g^{ij}\Delta(\tau,\sigma) \\
\braket{ a^{i}(\tau)a^{j}(\sigma) } _{0} & =\beta g^{ij}\Delta _{\mathrm{gh}}(\tau,\sigma) \\
\braket{ b^{i}(\tau)c^{j}(\sigma) } _{0} & =-2\beta ^{ij}\Delta _{\mathrm{gh}}(\tau,\sigma)
\end{align}$$

with

$$\begin{align}
\Delta(\tau,\sigma) & =\tau(\sigma+1)\theta(\tau-\sigma)+\sigma(\tau+1)\theta(\sigma-\tau)
\end{align}$$

and the meaning of $\displaystyle{\Delta _{\mathrm{gh}}}$ and of derivatives of $\displaystyle{\Delta}$ depends on the regulator. At 2-loop order the relevant expansion is schematically

$$\begin{align}
\braket{ e^{-(S_{3}+S_{4}+\dots)} }_{0} & =1-\braket{ S_{3} } _{0}-\braket{ S_{4} } _{0}+\dfrac{1}{2}\braket{ S^{2}_{3} } _{0}+\dots
\end{align}$$

Odd Gaussian contractions set $\langle S_3\rangle_0=0$ when the endpoint displacement is zero, but $S_3$ contributes through $\langle S_3^2\rangle_0$. The ambiguity in the continuum diagrams is entirely in the regulated values of integrals containing derivatives of $\Delta$ and $\Delta_{\mathrm{gh}}$.

## Mode Regularization

Expand every fluctuation field in Dirichlet sine modes

$$\begin{align}
q^{i}(\tau) & =\sum ^{M}_{m=1}q^{i}_{m}\sin(\pi m\tau) \\
a^{i}(\tau) & =\sum ^{M}_{m=1}a^{i}_{m}\sin(\pi m\tau) \\
b^{i}(\tau) & =\sum ^{M}_{m=1}b^{i}_{m}\sin(\pi m\tau) \\
c^{i}(\tau) & =\sum ^{M}_{m=1}c^{i}_{m}\sin(\pi m\tau)
\end{align}$$

the regulated propagators are

$$\begin{align}
\Delta _{M}(\tau,\sigma) & =-2\sum ^{M}_{m=1} \dfrac{\sin(\pi m\tau)\sin(\pi m\sigma)}{\pi ^{2}m^{2}} \\
\Delta _{\mathrm{gh},M}(\tau,\sigma) & =2\sum ^{M}_{m=1} \sin(\pi m\tau)\sin(\pi m\sigma)
\end{align}$$

every Wick contraction and integration by parts is performed at finite $\displaystyle{M}$, and only after all terms have been combined is the limit $\displaystyle{M\to \infty}$ taken.

### Determining the MR Counterterm

Mode regularization is fixed by requiring that its short-time transition kernel generate the chosen Schrödinger equation. Let $K_M$ denote the kernel computed from the naive metric action and measure ghosts. Its action on an arbitrary scalar wave function is

$$\begin{align}
\Psi(x_f,t_f) =\int\mathrm{d}^dx_i\sqrt{g(x_i)}\, K_M(x_f,x_i;\beta)\Psi(x_i,t_i).
\end{align}$$

Since $\xi^i=x_i^i-x_f^i$ is of order $\sqrt\beta$, expand $\Psi(x_i)$, $\sqrt{g(x_i)}$, and the two-loop kernel through order $\beta$. The result has the form

$$\begin{align}
-\partial_\beta\Psi =\left[-\frac{1}{2}\Delta_g+\Delta V_{\mathrm{eff}}^{\mathrm{MR}}\right]\Psi,
\end{align}$$

where the naive MR path integral produces

$$\begin{align}
\Delta V_{\mathrm{eff}}^{\mathrm{MR}} =-\frac{1}{8}R +\frac{1}{24}g^{ij}g^{kl}g_{mn}\Gamma_{ik}{}^m\Gamma_{jl}{}^n.
\end{align}$$

To recover $H_0=-\Delta_g/2$, add the negative of this mismatch to the Euclidean action:

$$\begin{align}
V_{\mathrm{MR}} & =\dfrac{1}{8}R-\dfrac{1}{24}g^{ij}g^{kl}g_{mn}\Gamma ^{m}_{~ik}\Gamma ^{n}_{~jl}
\end{align}$$

The matching uses the complete order-$\beta$ contribution from $-\langle S_4\rangle_0+\langle S_3^2\rangle_0/2$, including measure-ghost diagrams and endpoint-measure terms.

## Dimensional Regularization on a Finite Interval

Keep the finite-interval prescription $\displaystyle{\tau \in[-1,0]}$ and adds $\displaystyle{D}$ non-compact auxiliary coordinates

$$\begin{align}
\vec{t} & =(t^{1},\dots,t^{D})\in \mathbb{R}^{D}
\end{align}$$

the total temporary dimension is $\displaystyle{D+1}$. Let $\displaystyle{T^{\mu}=(\tau,\vec{t})}$. Keeping the same rescaled-time factors as in the common background expansion, the regulated action

$$\begin{align}
S_{D}[x,a,b,c] & =\dfrac{1}{2\beta}\int \mathrm{d}\tau \mathrm{d}^{d}\vec{t}g_{ij}(x)(\partial _{\mu}x^{i}\partial ^{\mu}x^{j}+a^{i}a^{j}+b^{i}c^{j})+\beta \int \mathrm{d}\tau \mathrm{d}^{D}\vec{t}(V(x)+V_{\mathrm{DR}}(x))
\end{align}$$

the coordinate propagator is

$$\begin{align}
\Delta _{D}(T,S) & =\int \dfrac{\mathrm{d}^{D}\vec{k}}{(2\pi)^{D}}\sum ^{\infty}_{n=1} -\dfrac{2\sin(\pi n\tau)\sin(\pi n\sigma)e^{i\vec{k}\cdot(\vec{t}-\vec{s})}}{\pi ^{2}n^{2}+\vec{k}^{2}}
\end{align}$$

which satisfies

$$\begin{align}
\partial ^{2}\Delta _{D}(T,S) & =\delta(\tau-\sigma)\delta ^{(D)}(\vec{t}-\vec{s})
\end{align}$$

The mode sum is handled as in finite-temperature field theory, while the continuous $\mathbf k$ integrals and index contractions are treated by ordinary dimensional regularization. Integration by parts is performed in $D+1$ dimensions before analytically continuing to $D\to0$.

### Representative Two-Loop Integrals

The different schemes disagree on a small set of integrals containing three differentiated propagators. Write $\partial^T_\mu$ and $\partial^S_\nu$ for derivatives with respect to the first and second propagator arguments. Two representative integrals are

$$\begin{align}
B_3&=\int\mathrm{d}^{D+1}T\,\mathrm{d}^{D+1}S\,\Delta \left[(\partial^T_\mu\partial^S_\nu\Delta)(\partial^T_\mu\partial^S_\nu\Delta) -(\partial_T^2\Delta)(\partial_S^2\Delta)\right], \\
B_4&=\int\mathrm{d}^{D+1}T\,\mathrm{d}^{D+1}S\, (\partial^T_\mu\Delta)(\partial^S_\nu\Delta)(\partial^T_\mu\partial^S_\nu\Delta).
\end{align}$$

Their values in finite-interval DR are

$$\begin{align}
B_4^{\mathrm{DR}}&=-\frac1{24}, \\
B_3^{\mathrm{DR}}&=\frac18.
\end{align}$$

For comparison, the corresponding regulated values are

$$
\begin{array}{c|ccc}
&\mathrm{TS}&\mathrm{MR}&\mathrm{DR}\\ \hline
B_3&\frac14&\frac14&\frac18\\
B_4&-\frac16&-\frac1{12}&-\frac1{24}
\end{array}
$$

As an example, dimensional integration by parts gives

$$\begin{aligned}
B_4^{\mathrm{DR}} &=\int\mathrm{d}^{D+1}T\,\mathrm{d}^{D+1}S\, (\partial^T_\mu\Delta)(\partial^S_\nu\Delta)(\partial^T_\mu\partial^S_\nu\Delta) \\
&=-\frac12\int\mathrm{d}^{D+1}T\,\mathrm{d}^{D+1}S\, (\partial_T^2\Delta)(\partial^S_\nu\Delta)^2 \\
&=-\frac12\int\mathrm{d}^{D+1}T\,(\partial^S_\nu\Delta)^2\big|_{S=T} =-\frac1{24}.
\end{aligned}$$

The same formal integration by parts cannot be transplanted into TS or MR after the regulator has been removed; their regulated distribution products have different values.

### Determining the DR Counterterm

The complete two-loop kernel is obtained by multiplying each regulated integral by its metric tensor structure and including the measure ghosts. Finite-interval DR preserves target-space covariance, so no noncovariant $\Gamma\Gamma$ counterterm is required. Matching the resulting kernel to the same Laplace--Beltrami Hamiltonian fixes the remaining covariant local term:

$$\begin{align}
\boxed{V_{\mathrm{DR}}=\frac{1}{8}R}.
\end{align}$$

The fact that DR has no noncovariant counterterm does not mean that its individual diagrams agree with TS or MR. The table above shows that they do not. Only the sum of all diagrams and the scheme-specific counterterm agrees.

## Unified Interpretation of the Counterterms

For a regulator $\mathcal R$, let the naive regulated path integral generate

$$\begin{align}
-\partial_\beta\Psi =\left(-\frac{1}{2}\Delta_g+\Delta V_{\mathcal R}\right)\Psi.
\end{align}$$

Then the counterterm targeting the pure Laplace--Beltrami Hamiltonian is

$$\begin{align}
V_{\mathrm{ct},\mathcal R}=-\Delta V_{\mathcal R}.
\end{align}$$

TS obtains this information directly from the Weyl symbol of the operator. MR obtains it from the short-time Schrödinger matching. DR obtains it from the covariantly regulated two-loop kernel. Equivalently, one may impose the heat equation, the semigroup composition law, biscalar covariance of the kernel, and the known short-time heat-kernel coefficients.

The result is

$$
\begin{array}{c|c|c|c}
\text{scheme}&\text{regulated object}&\text{cutoff removal}&V_{\mathrm{ct}}\\ \hline
\mathrm{TS}&\text{time lattice and midpoint kernel}&N\to\infty&
\dfrac{1}{8}\left(R+g^{ij}\Gamma_{ik}{}^l\Gamma_{jl}{}^k\right)\\[3mm]
\mathrm{MR}&\text{Dirichlet mode sum }1\leq m\leq M&M\to\infty&
\dfrac{1}{8}R-\dfrac{1}{24}g^{ij}g^{kl}g_{mn}\Gamma_{ik}{}^m\Gamma_{jl}{}^n\\[3mm]
\mathrm{DR}&D\text{ auxiliary noncompact dimensions}&D\to0&
\dfrac{1}{8}R
\end{array}
$$

The noncovariant terms are allowed because TS and MR do not preserve target-space covariance term by term. Their role is to restore the covariance of the final kernel. They are not new physical couplings. By contrast, changing the common coefficient $\xi$ in $\widehat H_\xi$ changes the quantum theory.

In the present $\hbar=1$ convention, these are finite two-loop counterterms. They encode the combined effect of operator ordering and the extension of singular products; they are not merely subtractions of a logarithmic divergence as in an ordinary renormalizable field theory.

## Correlators and the Continuum Limit

For any of the three schemes, a regulated correlator has the form

$$\begin{align}
\left\langle\mathcal T_\tau\mathcal O_1(\tau_1)\cdots\mathcal O_n(\tau_n)\right\rangle_{\mathcal R} =\frac1{Z_{\mathcal R}} \int_{\mathcal R}\mathcal D x\,\mathcal D a\,\mathcal D b\,\mathcal D c\, \mathcal O_1\cdots\mathcal O_n\, e^{-(S_{\mathrm{metric}}+S_{\mathrm{gh}}+\int V_{\mathrm{ct},\mathcal R})}.
\end{align}$$

The finite regulator must be retained until all diagrams at a fixed perturbative order have been added. The limit is then

$$\begin{align}
N\to\infty\quad\text{or}\quad M\to\infty\quad\text{or}\quad D\to0.
\end{align}$$

Separated-point correlators of the same operator agree between schemes. Coincident products and composite operators can require additional local operator renormalization; their scheme-dependent contact terms should not be confused with a disagreement in the underlying Hamiltonian.

At finite $N$, a time-sliced correlator is already an ordinary finite-dimensional integral. For lattice sites $k_1,\ldots,k_n$,

$$\begin{align}
\left\langle x^{i_1}_{k_1}\cdots x^{i_n}_{k_n}\right\rangle_N =\frac1{Z_N}\int\prod_{k=0}^{N-1}\mathrm{d}^dx_k\, x^{i_1}_{k_1}\cdots x^{i_n}_{k_n}
\prod_{k=0}^{N-1}\widetilde K_\epsilon(x_{k+1},x_k),
\end{align}$$

with periodic identification for a thermal trace. Thus the lattice correlator can be calculated directly by quadrature, transfer-matrix methods, or Monte Carlo before taking the continuum limit.

## One-Dimensional Target Space

Let

$$\begin{align}
g_{xx}(x)=G(x)>0.
\end{align}$$

Then

$$\begin{align}
g^{xx}=\frac1G, \qquad \Gamma^x{}_{xx}=\frac{G'}{2G}, \qquad R\equiv0.
\end{align}$$

The three counterterms reduce to

$$\begin{align}
\boxed{ V_{\mathrm{TS}}=\frac{(G')^2}{32G^3}, \qquad V_{\mathrm{MR}}=-\frac{(G')^2}{96G^3}, \qquad V_{\mathrm{DR}}=0
}.
\end{align}$$

They are different because the regulated derivative contractions are different. The total kernel is nevertheless the same.

There is also an exact coordinate check. Define

$$\begin{align}
\frac{\mathrm{d}y}{\mathrm{d}x}=\sqrt{\frac{G(x)}{m}}.
\end{align}$$

Then

$$\begin{align}
\frac12G(x)\dot x^2=\frac12m\dot y^2,
\end{align}$$

and the Laplace--Beltrami Hamiltonian becomes a flat kinetic operator in $y$. The scheme-dependent $x$-coordinate measure, contact rules, and counterterm must reproduce this flat-coordinate theory after the potential and observables are transformed.

For the benchmark

$$\begin{align}
G(x)=m+\frac\lambda2x^2, \qquad G'(x)=\lambda x,
\end{align}$$

one finds

$$\begin{align}
V_{\mathrm{TS}} &=\frac{\lambda^2x^2}{32\left(m+\lambda x^2/2\right)^3}, \\
V_{\mathrm{MR}} &=-\frac{\lambda^2x^2}{96\left(m+\lambda x^2/2\right)^3}, \\
V_{\mathrm{DR}}&=0.
\end{align}$$

Thus no explicit scheme counterterm contributes at $O(\lambda)$. The first explicit difference appears at $O(\lambda^2)$, where it must be combined with the two-loop derivative-interaction and measure-ghost diagrams. The absence of an $O(\lambda)$ counterterm does not permit one to omit the position-dependent measure or its contact contractions at that order.

## What Is and Is Not Regulator Dependence

The following quantities may depend on the regulator:

- individual diagrams;
- the value assigned to a coincident distribution product;
- the explicit noncovariant part of $V_{\mathrm{ct}}$;
- local contact terms in composite-operator correlators.

The following quantities do not depend on the regulator after matching the same Hamiltonian and observables:

- the transition kernel;
- the spectrum;
- separated-point correlators;
- coordinate-invariant anomalies and heat-kernel coefficients.

Ordering dependence is different. Replacing $\widehat H_0$ by $\widehat H_\xi$ changes a finite covariant $R$ coupling in every scheme and therefore defines a different quantum theory.

## References

- F. Bastianelli, K. Schalm and P. van Nieuwenhuizen, [Mode regularization, time slicing, Weyl ordering and phase space path integrals for quantum mechanical nonlinear sigma models](https://arxiv.org/abs/hep-th/9801105).
- F. Bastianelli and O. Corradini, [On Mode Regularization of the Configuration Space Path Integral in Curved Space](https://arxiv.org/abs/hep-th/9810119).
- F. Bastianelli, O. Corradini and P. van Nieuwenhuizen, [Dimensional regularization of nonlinear sigma models on a finite time interval](https://arxiv.org/abs/hep-th/0008045).
