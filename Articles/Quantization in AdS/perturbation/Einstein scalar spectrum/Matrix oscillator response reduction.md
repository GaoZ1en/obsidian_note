# Matrix Oscillator Response Reduction

This note treats the multi-component model with independent kinetic and potential matrices $\displaystyle{G,K,H,T}$, generally unequal free-mode energies, and arbitrary mixed couplings $\displaystyle{\lambda_{aij}=\lambda_{aji}}$. It extends [the single-oscillator prototype](<Articles/Quantization in AdS/perturbation/Einstein scalar spectrum/Oscillator response reduction.md>) without assuming that the coupling matrices can be diagonalized simultaneously. The conventions are those of [the CPS formalism](<Articles/Quantization in AdS/perturbation/formalism.md>): $\displaystyle{\Omega=\delta\theta}$ and $\displaystyle{\iota_{X_H}\Omega=-\delta H}$.

The leading response is written $\displaystyle{y^a=gk^a(x,p)}$. With the original negative interaction sign, the result is

$$\begin{align}
\boxed{\displaystyle \ell_4=-\frac12k^aJ_a,\qquad \mathcal K_4=+\frac12k^aJ_a,\qquad J_a=\lambda_{aij}x^ix^j.}
\end{align}$$

Here $\displaystyle{\ell_4}$ is the endpoint-adjusted action coefficient on free histories, while $\displaystyle{\mathcal K_4}$ is the Hamiltonian coefficient after the symplectic form has been restored to canonical form. Both multiply $\displaystyle{g^2}$. The construction and its domain are explicit below.

## 1. The Model and Its Gauge Directions

Let $\displaystyle{x \in \mathbb{R}^{n},y\in \mathbb{R}^{m}}$, with action

$$\begin{align}
S & =\int ^{t_{f}}_{t_{i}}\left(\dfrac{1}{2}G_{ij}\dot{x}^{i}\dot{x}^{j}-\dfrac{1}{2}K_{ij}x^{i}x^{j}+\dfrac{1}{2}H_{ab}\dot{y}^{a}\dot{y}^{b}-\dfrac{1}{2}T_{ab}y^{a}y^{b}-gJ_{a}y^{a}\right) \\
J_{a} & =\dfrac{1}{2}\lambda _{aij}x^{i}x^{j}
\end{align}$$

all matrices and couplings are real and constant. We assume that the matrices satisfies

$$\begin{align}
G & =G^{T}>0, & K & =K^{T}>0, \\
H & =H^{T}\geqslant 0, & T & =T^{T}\geqslant 0, & \mathrm{ker}H & =\mathrm{ker}T=N
\end{align}$$

thus the physical free oscillators have positive, generally unequal frequencies. We impose the source nonresonance condition speficied in Section 3. The parameter $\displaystyle{g}$ records the perturbation order. In addition to $\displaystyle{Hn=Tn=0}$, require

$$\begin{align}
n^{a}\lambda _{aij} & =0, & \forall n\in N
\end{align}$$

then $\displaystyle{y\mapsto y+n^{A}\epsilon _{A}(t)}$ gauge redundancies for arbitrary time-dependent $\displaystyle{\epsilon _{A}}$. And we can impose the gauge condition $\displaystyle{n^{A}_{a}y^{a}=0}$.

---

Taking $\displaystyle{G>0}$ keeps all $\displaystyle{x}$ coordinates physical and puts any gauge redundancy only in $\displaystyle{y}$. In addition to $\displaystyle{Hn=Tn=0}$, require

$$\begin{align}
n^a\lambda_{aij}=0\qquad\text{for every }n\in N.
\end{align}$$

Then $\displaystyle{y\mapsto y+n_A\epsilon^A(t)}$ is a symmetry for arbitrary time-dependent $\displaystyle{\epsilon^A}$. The momentum constraints $\displaystyle{n_A^aP_a=0}$ are first class; the Hamiltonian has no dependence on the corresponding $\displaystyle{y}$ coordinates. There is no secondary constraint in these directions. Choosing $\displaystyle{n_A\cdot y=0}$ pairs these constraints with gauge conditions and removes only this redundancy.

This classification does not follow from semidefiniteness alone. If $\displaystyle{Hn=Tn=0}$ but $\displaystyle{n^aJ_a\ne0}$, varying the null coordinate would impose $\displaystyle{n^aJ_a(x)=0}$ on the retained variables. If $\displaystyle{Hn=0}$ but $\displaystyle{Tn\ne0}$, the direction is not this shift gauge; genuine auxiliary directions are treated separately in Section 9.

To make all inverse matrices below unambiguous, choose an orthonormal matrix $\displaystyle{E}$ whose columns span $\displaystyle{N^\perp}$ and set

$$\begin{align}
y=E\widehat y+n_A\chi^A,\qquad \widehat H=E^THE>0,\qquad \widehat T=E^TTE>0,\qquad \widehat\lambda_{Aij}=E^a{}_A\lambda_{aij}.
\end{align}$$

Quotient the $\displaystyle{\chi}$ directions and drop the hats. From this point on, $\displaystyle{H,T}$ act on the physical quotient and $\displaystyle{H^{-1}}$ is its ordinary kinetic inverse. The original variables are recovered using the displayed embedding and a chosen gauge. No inverse of a singular original matrix is assumed.

---

## 2. Variation and the Free Scalar Flow

Take a variation of the action

$$\begin{align}
S & =\int ^{t_{f}}_{t_{i}}\left(\dfrac{1}{2}G_{ij}\dot{x}^{i}\dot{x}^{j}-\dfrac{1}{2}K_{ij}x^{i}x^{j}+\dfrac{1}{2}H_{ab}\dot{y}^{a}\dot{y}^{b}-\dfrac{1}{2}T_{ab}y^{a}y^{b}-gJ_{a}y^{a}\right) \\
J_{a} & =\dfrac{1}{2}\lambda _{aij}x^{i}x^{j}
\end{align}$$

$$\begin{align}
\delta S & =\int ^{t_{f}}_{t_{i}}\left(-E_{i}\delta x^{i}-E_{a}\delta y^{a}\right)+\theta|_{t_{f}}-\theta|_{t_{i}} \\
E_{i} & =G_{ij}\ddot{x}^{j}+K_{ij}x^{j}+gy^{a}\partial _{i}J_{a} \\
E_{a} & =H_{ab}\ddot{y}^{b}+T_{ab}y^{b}+gJ_{a} \\
\theta & =G_{ij}\dot{x}^{i}\delta x^{j}+H_{ab}\dot{y}^{a}\delta y^{b} \\
\implies \Omega & =\delta \theta=G_{ij}\delta \dot{x}^{i}\wedge \delta x^{j}+H_{ab}\delta \dot{y}^{a}\wedge \delta y^{b} \\
\implies H & =X_{t}\cdot \theta-\alpha _{t} \\
 & =\dfrac{1}{2}G_{ij}\dot{x}^{i}\dot{x}^{j}+\dfrac{1}{2}K_{ij}x^{i}x^{j}+\dfrac{1}{2}H_{ab}\dot{y}^{a}\dot{y}^{b}+\dfrac{1}{2}T_{ab}y^{a}y^{b}+gy^{a}J_{a}
\end{align}$$

we separate out the free $\displaystyle{x}$-sector contribution $\displaystyle{H_{0}}$ to the Hamiltonian and denote its Hamiltonian vector field by $\displaystyle{X_{0}}$, which is the $\displaystyle{x}$-part of $\displaystyle{X_{t}}$:

$$\begin{align}
X_{0} & =\int \mathrm{d}t \dot{x}(t) \dfrac{\delta}{\delta x(t)}
\end{align}$$

and the restriction of $\displaystyle{\Omega}$ to the free $\displaystyle{x}$-sector:

$$\begin{align}
\Omega _{0} & =G_{ij}\delta \dot{x}^{i}\wedge \delta x^{j}
\end{align}$$

## 3. The Response with General Mode Frequencies

Seek a response

$$\begin{align}
y^{a}[x](t) & =gk^{a}[x](t)+\mathcal{O}(g^{2})
\end{align}$$

and we have

$$\begin{align}
H_{ab} \dfrac{\mathrm{d}^{2}k^{b}[x]}{\mathrm{d}t^{2}}+T_{ab}k^{b}[x] & =-J_{a}[x]
\end{align}$$

choose real normal-mode matrices $\displaystyle{S_{x},S_{y}}$ such that

$$\begin{align}
x & =S_{x}\xi, & S^{T}_{x}GS_{x} & =1, & S^{T}_{x}KS_{x} & =\mathrm{diag}(\omega ^{2}_{i}) \\
y & =S_{y}\eta, & S^{T}_{y}HS_{y} & =1, & S^{T}_{y}TS_{y} & =\mathrm{diag}(\nu ^{2}_{A}) \\
 &  &  &  & \tilde{\lambda}_{Aij} & =(S_{y})^{a}_{~A}\lambda _{ak\ell}(S_{x})^{k}_{~i}(S_{x})^{\ell}_{~j}
\end{align}$$

thus $\displaystyle{\omega _{i}^{2}}$ and $\displaystyle{\nu _{A}^{2}}$ are the generalized eigenvalues of $\displaystyle{(K,G)}$ and $\displaystyle{(T,H)}$. We assume that

$$\begin{align}
\nu _{A} & \neq |\omega _{i}+\omega _{j}|, & \nu _{A} & \neq |\omega _{i}-\omega _{j}|, & \forall A,i,j
\end{align}$$

now $\displaystyle{X_{0}}$ becomes

$$\begin{align}
X_{0} & =\int \mathrm{d}t \dot{\xi}_{i}(t) \dfrac{\delta}{\delta \xi _{i}(t)}
\end{align}$$

and

$$\begin{align}
\tilde{J}_{A} & =\dfrac{1}{2}\tilde{\lambda}_{Aij}\xi _{i}\xi _{j}
\end{align}$$

the solution to the $\displaystyle{k^{a}}$ with $\displaystyle{k=S_{y}\tilde{k}}$ is

$$\begin{align}
\tilde{k}^{A} & =-\dfrac{1}{2} \sum _{i,j} \tilde{\lambda}_{Aij} \dfrac{(\nu _{A}^{2}-\omega ^{2}_{i}-\omega _{j}^{2})\xi _{i}\xi _{j}-2\dot{\xi}_{i}\dot{\xi}_{j}}{(\nu ^{2}_{A}-(\omega _{i}+\omega _{j})^{2})(\nu _{A}^{2}-(\omega _{i}-\omega _{j})^{2})}
\end{align}$$

## 4. Stationary Substitution in the Action

Evaluate the order-$\displaystyle{g^{2}}$ coefficient on a free $\displaystyle{x}$ history and its selected response. It is

$$\begin{align}
g^{2}L_{4}+\mathcal{O}(g^{3}) & =\dfrac{1}{2}H_{ab}\dot{y}^{a}\dot{y}^{b}-\dfrac{1}{2}T_{ab}y^{a}y^{b}-gy^{a}J_{a} \\
 & =g^{2}\left(\dfrac{1}{2}H_{ab}\dot{k}^{a}\dot{k}^{b}-\dfrac{1}{2}T_{ab}k^{a}k^{b}-k^{a}J_{a}\right) \\
 & =g^{2}\left(-\dfrac{1}{2}k^{a}J_{a}+\dfrac{1}{2} \dfrac{\mathrm{d}}{\mathrm{d}t}\left(H_{ab}\dot{k}^{a}k^{b}\right)\right) \\
\implies S^{(4)}_{\mathrm{red}} & =-\dfrac{g^{2}}{2}\int _{t_{i}}^{t_{f}}\mathrm{d}t k^{a}J_{a}+\mathcal{O}(g^{3})+(\text{endpoint terms})
\end{align}$$

## 5. Phase-Space Reduction and the Canonical Quartic

The response embedding pulls back the Hamiltonian and symplectic potential and symplectic form to

$$\begin{align}
H_{\mathrm{red}} & =H_{0}+g^{2}H_{2}, & g^{2}H_{2} & =\dfrac{1}{2}H_{ab}\dot{y}^{a}\dot{y}^{b}+\dfrac{1}{2}T_{ab}y^{a}y^{b}+gy^{a}J_{a} \\
\theta _{\mathrm{red}} & =\theta _{0}+g^{2}\theta _{2} & g^{2}\theta _{2} & =H_{ab}\dot{y}^{a}\delta y^{b} \\
\Omega _{\mathrm{red}} & =\Omega _{0}+g^{2}\Omega _{2}, & g^{2}\Omega _{2} & =H_{ab}\delta \dot{y}^{a}\wedge \delta y^{b}
\end{align}$$

We retain the original action $\displaystyle{S}$ and its original symplectic potential throughout. In particular, no endpoint term is subtracted from $\displaystyle{S}$. Use the source normalization of Sections 1--4, $\displaystyle{J_a=\frac12\lambda_{aij}x^ix^j}$, and introduce Cauchy coordinates

$$\begin{align}
p_i&=G_{ij}\dot x^j, & P_a&=H_{ab}\dot y^b, & z&=(x,p),\\
\theta_0&=p_i\delta x^i, & \Omega_0&=\delta p_i\wedge\delta x^i, & H_0&=\frac12p^TG^{-1}p+\frac12x^TKx,\\
X_0&=(G^{-1}p)^i\frac{\partial}{\partial x^i}-(Kx)_i\frac{\partial}{\partial p_i}.
\end{align}$$

All mediator matrices and inverses act on the physical quotient specified in Section 1. The quadratic response in Section 3 is evaluated on free Cauchy data; no independent homogeneous mediator oscillator is added. Define its momentum response by

$$\begin{align}
v&=HX_0k, & X_0v&=-Tk-J, & y&=gk(z), & P&=gv(z).
\end{align}$$

The pullbacks above consequently have the coefficients

$$\begin{align}
H_2&=\frac12v^TH^{-1}v+\frac12k^TTk+k^TJ,\\
\theta_2&=v_a\delta k^a, & \Omega_2&=\delta v_a\wedge\delta k^a.
\end{align}$$

Here $\displaystyle{\theta_2}$ remains the original, unsymmetrized potential coefficient. For comparison with Section 4, set $\displaystyle{b=\frac12k^av_a}$. The response equations give

$$\begin{align}
X_0b&=\frac12\left(v^TH^{-1}v-k^TTk-k^TJ\right),\\
L_4&=\frac12v^TH^{-1}v-\frac12k^TTk-k^TJ =-\frac12k^TJ+X_0b.
\end{align}$$

Thus the original free-history action contains $\displaystyle{g^2[b]_{t_i}^{t_f}}$. This term is retained, not removed by a change of endpoint polarization.

### The Response Reproduces the Required Scalar Dynamics

The response equations imply the one-form identity

$$\begin{align}
\delta H_2+\iota_{X_0}\Omega_2=k^a\delta J_a.
\end{align}$$

Expanding Hamilton's equation for the explicit graph gives

$$\begin{align}
X_{\mathrm{red}}&=X_0+g^2X_2+O(g^4),\\
\iota_{X_2}\Omega_0&=-k^a\delta J_a, & X_2x^i&=0, & X_2p_i&=-k^a\partial_iJ_a.
\end{align}$$

This is the order-$\displaystyle{g^2}$ scalar force of the full system after $\displaystyle{y=gk}$. The mediator tangency residual starts at $\displaystyle{g^3}$. Accordingly, the graph suffices for the quartic coefficient; it is not asserted to be an exact invariant manifold. All $\displaystyle{O(g^4)}$ statements below concern the expansion of this explicit graph and its coordinate pullback, not an all-orders solution of the response equations.

### Darboux Coordinates with the Original Potential

On a fixed compact set, $\displaystyle{\Omega_{\mathrm{red}}}$ is nondegenerate for sufficiently small $\displaystyle{|g|}$. Let $\displaystyle{f(z)}$ be a real, time-independent homogeneous quartic polynomial and choose the cubic vector field $\displaystyle{Z_f}$ by

$$\begin{align}
\boxed{\iota_{Z_f}\Omega_0=-\theta_2+\delta f.}
\end{align}$$

The exact term $\displaystyle{\delta f}$ specifies a coordinate choice; it does not replace $\displaystyle{\theta_{\mathrm{red}}}$ or change the action. Explicitly,

$$\begin{align}
Z_f^{x^i}&=v_a\frac{\partial k^a}{\partial p_i}-\frac{\partial f}{\partial p_i},\\
Z_f^{p_i}&=-v_a\frac{\partial k^a}{\partial x^i}+\frac{\partial f}{\partial x^i}.
\end{align}$$

Write the old coordinates as functions of new coordinates $\displaystyle{w=(q,\pi)}$:

$$\begin{align}
z&=\mathscr F_f(w)=w+g^2Z_f(w)+O(g^4).
\end{align}$$

Cartan's identity, applied to the original potential, gives

$$\begin{align}
\mathscr F_f^*\Omega_{\mathrm{red}}&=\Omega_0+O(g^4),\\
\mathscr F_f^*\theta_{\mathrm{red}}&=\theta_0+g^2\delta B_f+O(g^4), & B_f&=\theta_0(Z_f)+f,\\
\mathscr F_f^*H_{\mathrm{red}}&=H_0+g^2\mathcal K_{4,f}+O(g^4), & \mathcal K_{4,f}&=H_2+Z_fH_0.
\end{align}$$

Here $\displaystyle{\theta_0=\pi_i\delta q^i}$ on the new coordinate space, and coefficient functions on the right are evaluated at $\displaystyle{w}$. The potential is canonical up to the displayed exact term, which must still be retained in the action. The sign convention $\displaystyle{\iota_{X_0}\Omega_0=-\delta H_0}$ implies

$$\begin{align}
Z_fH_0&=-\theta_2(X_0)+X_0f, & \theta_2(X_0)&=v^TH^{-1}v.
\end{align}$$

Therefore

$$\begin{align}
\boxed{\mathcal K_{4,f}=-L_4+X_0f.}
\end{align}$$

This is the fixed-action relation before any time averaging. Two useful coordinate choices are:

1. For $\displaystyle{f=0}$, the original potential directly fixes the Darboux correction, and $\displaystyle{\mathcal K_{4,0}=-L_4}$.
2. For $\displaystyle{f=b=\frac12k^av_a}$, the same original action gives

$$\begin{align}
\iota_{Z_b}\Omega_0&=-\frac12\left(v_a\delta k^a-k^a\delta v_a\right), & B_b&=\theta_0(Z_b)+\frac12k^av_a,\\
\mathcal K_{4,b}&=-L_4+X_0b=\frac12k^aJ_a.
\end{align}$$

The symmetric one-form in the equation for $\displaystyle{Z_b}$ is only a device for selecting coordinates. The physical potential is still $\displaystyle{\theta_0+g^2v_a\delta k^a}$. In this second chart, $\displaystyle{\mathcal K_4=\mathcal K_{4,b}}$ is the desired compact quartic representative. It is generally not $\displaystyle{-L_4}$ pointwise in the same chart; the difference is $\displaystyle{X_0b}$.

## 6. The Unchanged Action and Its Endpoint Data

The first-order Legendre formulation of the original action is

$$\begin{align}
I[x,p,y,P]&=\int_{t_i}^{t_f}\mathrm dt\,\left(p_i\dot x^i+P_a\dot y^a-H_{\mathrm{full}}\right),\\
H_{\mathrm{full}}&=H_0+\frac12P^TH^{-1}P+\frac12y^TTy+gy^TJ.
\end{align}$$

Eliminating $\displaystyle{p,P}$ by their algebraic equations recovers exactly $\displaystyle{S}$, with no endpoint addition or subtraction. On an arbitrary phase-space path $\displaystyle{z(t)}$, pull this first-order action back to the explicit response graph:

$$\begin{align}
I_0[z]&=\int_{t_i}^{t_f}\mathrm dt\,\left[\theta_0(\dot z)-H_0\right],\\
I_{\mathrm{pb}}[z]&=I_0[z]+g^2\int_{t_i}^{t_f}\mathrm dt\,\left[\theta_2(\dot z)-H_2\right].
\end{align}$$

For any of the coordinate choices above, the fixed-action quartic relation yields the exact identity on this graph

$$\begin{align}
I_{\mathrm{pb}}[z] &=I_0[z]-g^2\int_{t_i}^{t_f}\mathrm dt\,\mathcal K_{4,f} +g^2\int_{t_i}^{t_f}\mathrm dt\,(\theta_2-\delta f)(\dot z-X_0) +g^2[f]_{t_i}^{t_f}.
\end{align}$$

No free equation has been imposed on $\displaystyle{z(t)}$. The term proportional to $\displaystyle{\dot z-X_0}$ vanishes on free histories but cannot be dropped before variation. Instead, the change of the free action under $\displaystyle{z=\mathscr F_f(w)}$ is

$$\begin{align}
I_0[\mathscr F_f(w)]-I_0[w] &=-g^2\int_{t_i}^{t_f}\mathrm dt\,(\theta_2-\delta f)(\dot w-X_0) +g^2[\theta_0(Z_f)]_{t_i}^{t_f}+O(g^4).
\end{align}$$

The extra bulk terms cancel, leaving

$$\begin{align}
\boxed{I_{\mathrm{pb}}[\mathscr F_f(w)] =\int_{t_i}^{t_f}\mathrm dt\,\left[\pi_i\dot q^i-H_0-g^2\mathcal K_{4,f}\right] +g^2[B_f]_{t_i}^{t_f}+O(g^4).}
\end{align}$$

This is a coordinate reexpression of the original graph action, not a replacement of it by the displayed bulk integral alone. In particular, the choice $\displaystyle{f=b}$ retains $\displaystyle{g^2[\theta_0(Z_b)+k^av_a/2]_{t_i}^{t_f}}$ while giving $\displaystyle{\mathcal K_{4,b}=k^aJ_a/2}$.

The endpoint term also does not shift the autonomous Noether energy: it contributes $\displaystyle{g^2\delta B_f}$ to the potential and $\displaystyle{g^2\mathrm dB_f/\mathrm dt}$ to the time-translation endpoint quantity $\displaystyle{\alpha_t}$. These contributions cancel in $\displaystyle{X_t\cdot\theta-\alpha_t}$. This cancellation is not a deletion of $\displaystyle{[B_f]_{t_i}^{t_f}}$ from the action.

### Endpoint Conditions and the Off-Shell Scope

Original configuration Dirichlet data induce, on the response graph, $\displaystyle{\delta x=0}$ and $\displaystyle{\delta k=0}$ at each endpoint. Their image under $\displaystyle{\mathscr F_f}$ must be retained. It is generally not the condition $\displaystyle{\delta q=0}$, and the endpoint variation of $\displaystyle{B_f}$ cannot be discarded separately. The physical scalar coordinate is

$$\begin{align}
x^i=q^i+g^2Z_f^{x^i}(q,\pi)+O(g^4).
\end{align}$$

Arbitrary prescribed mediator endpoint values need not be compatible with the selected no-independent-homogeneous response. The proof concerns this response sector with its inherited endpoint data, not every Dirichlet boundary-value problem of the full system.

There is also a distinction between an arbitrary path on the phase-space graph and unrestricted second-order configuration substitution. For $\displaystyle{z(t)=(x(t),p(t))}$ and $\displaystyle{\dot k=\mathrm dk(z(t))/\mathrm dt}$, completing the momentum squares gives

$$\begin{align}
S[x,gk(z)]-I_{\mathrm{pb}}[z] &=\frac12\int_{t_i}^{t_f}\mathrm dt\,(\dot x-G^{-1}p)^TG(\dot x-G^{-1}p)\\
&\quad+\frac{g^2}{2}\int_{t_i}^{t_f}\mathrm dt\,(\dot k-H^{-1}v)^TH(\dot k-H^{-1}v).
\end{align}$$

These terms vanish on free histories and are higher order on smooth perturbative branch histories, but not on arbitrary off-shell paths. The graph-action decomposition and the square-completion formula are exact off-shell identities for the explicit graph. The Darboux reexpression and the match to the full dynamics are established through order $\displaystyle{g^2}$. They do not turn $\displaystyle{L_4}$ evaluated on free histories into an exact local action for arbitrary original $\displaystyle{x(t)}$, nor establish an all-orders response manifold.

## 7. The Coordinate-Independent Resonant Result

Define the resonant projection by the free-flow Cesaro average, without assuming a common period:

$$\begin{align}
[A]_{\mathrm{res}}(z) &=\lim_{\mathcal T\to\infty}\frac1{\mathcal T}\int_0^{\mathcal T}\mathrm dt\,A(\Phi_t^{(0)}z),
\end{align}$$

where $\displaystyle{\Phi_t^{(0)}}$ is the flow of $\displaystyle{X_0}$. With finitely many positive-frequency free oscillators, the quartic polynomials here are bounded quasiperiodic functions on each free orbit. Their averages exist, and

$$\begin{align}
[X_0f]_{\mathrm{res}} &=\lim_{\mathcal T\to\infty}\frac{f(\Phi_{\mathcal T}^{(0)}z)-f(z)}{\mathcal T}=0.
\end{align}$$

Consequently every autonomous quartic choice above gives

$$\begin{align}
\boxed{[\mathcal K_{4,f}]_{\mathrm{res}} =-[L_4]_{\mathrm{res}} =\frac12[k^aJ_a]_{\mathrm{res}}.}
\end{align}$$

This is independent of the Darboux choice, while the unaveraged representative and its endpoint primitive must be specified together. At finite endpoints there is no general permission to discard the total derivative.

For a simple nonresonant check, take $\displaystyle{G=H=K=1}$, $\displaystyle{T=9}$, and $\displaystyle{J=x^2/2}$. The response is

$$\begin{align}
k&=-\frac{7x^2}{90}+\frac{p^2}{45}, & v&=-\frac{xp}{5}.
\end{align}$$

At $\displaystyle{(x,p)=(0,1)}$, the original coefficient is $\displaystyle{L_4=-1/450}$, whereas $\displaystyle{kJ/2=0}$. Correspondingly $\displaystyle{\mathcal K_{4,0}=1/450}$ and $\displaystyle{\mathcal K_{4,b}=0}$: their difference is exactly $\displaystyle{X_0b=-1/450}$. This illustrates why preserving the original action does not imply a chart-independent pointwise equality. The fixed-action formula, including its endpoint, and the resonant equality are the statements proved here. $\square$
