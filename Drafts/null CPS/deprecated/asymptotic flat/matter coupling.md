# Matter coupling on a finite null collar

## 0. Scope and verdict

This note completes the radial-local part of Stage 6。The regulated spacetime is

$$\begin{align}
M_{R,[u_-,u_+]} = \left\{ R_0\leq r\leq R,\quad u_-\leq u\leq u_+ \right\},
\end{align}$$

with fixed

$$\begin{align}
\Omega=\frac1r, \qquad q_{AB}=q_{AB}^{\rm round},
\end{align}$$

and the standard gravitational caps of `all-order radial hierarchy.md`。The matter model is

$$\begin{aligned}
S =& S_{\rm EH} +S_{\rm GHY/null/joint}
\\
& -\frac12
\int_M
d^4x\sqrt{-g} \left[ (\nabla\phi)^2+m^2\phi^2 \right] -\frac14
\int_M
d^4x\sqrt{-g}\, F_{\mu\nu}F^{\mu\nu}.
\end{aligned}$$

The conclusions are：

1. A massless scalar with leading coefficient

$$\begin{align}
\phi=\frac{\varphi(u,x)}r+O(r^{-2}L^K)
\end{align}$$

   requires one logarithmic endpoint/corner counterterm for the off-shell action，but its radiative symplectic form is finite。

2. Four-dimensional Maxwell theory with

$$\begin{align}
A_A=a_A(u,x)+O(r^{-1}L^K), \qquad A_u=O(r^{-1}L^K), \qquad A_r=0
\end{align}$$

   requires no radial counterterm at the divergent weights and has the standard finite radiative pair。

3. A logarithm in either leading radiative coefficient,

$$\begin{align}
\phi=\frac{\varphi_0+L\varphi_1}{r}+\cdots, \qquad A_A=a_A^{(0)}+La_A^{(1)}+\cdots,
\end{align}$$

   produces an $L_R^2$ symplectic divergence。In the same local finite-jet/no-edge category used for gravity，this is a genuine obstruction，not an action counterterm ambiguity。

4. Minimal coupling to the standard gravitational class creates no new divergent radial weight。Consequently no mixed gravity--matter counterterm is needed on a finite $u$-slab。

5. A massive field may be included off shell with a separate weighted class，but a pure inverse-power/log solution of

$$\begin{align}
(\Box-m^2)\phi=0
\end{align}$$

   is identically zero near null infinity。The nonzero scattering data are oscillatory $\tau^{-3/2}e^{\pm im\tau}$ data at timelike infinity，so the massive sector cannot be completed without Stage 7。

The theorem below is an action-domain theorem。It does not assert that arbitrary formal Bondi coefficients are produced by generic Cauchy or characteristic data。

---

## 1. Abstract variation before gauge fixing

Write

$$\begin{align}
L_{\rm mat} = -\frac12 \boldsymbol\epsilon \left[ \nabla_\mu\phi\nabla^\mu\phi+m^2\phi^2 \right] -\frac14 \boldsymbol\epsilon F_{\mu\nu}F^{\mu\nu}.
\end{align}$$

Its first variation is

$$\begin{align}
\delta L_{\rm mat} = \boldsymbol\epsilon \left[ (\Box-m^2)\phi\,\delta\phi +(\nabla_\mu F^{\mu\nu})\delta A_\nu -\frac12T^{\mu\nu}\delta g_{\mu\nu} \right] +d\theta_{\rm mat},
\end{align}$$

where

$$\begin{align}
\theta_{\rm mat}^{\mu} = -\sqrt{-g}\, \nabla^\mu\phi\,\delta\phi -\sqrt{-g}\, F^{\mu\nu}\delta A_\nu.
\end{align}$$

The associated current is

$$\begin{align}
\omega_{\rm mat} = \delta\theta_{\rm mat}.
\end{align}$$

No matter equation or Einstein equation has been used。The metric variation is retained because it is precisely the source of all possible mixed terms。

For the minimally coupled real scalar and Maxwell field，

$$\begin{aligned}
T_{\mu\nu}^{\phi} &= \nabla_\mu\phi\nabla_\nu\phi -\frac12g_{\mu\nu} \left[ (\nabla\phi)^2+m^2\phi^2 \right], \\
T_{\mu\nu}^{\rm M} &= F_{\mu\rho}F_\nu{}^\rho -\frac14g_{\mu\nu}F_{\rho\sigma}F^{\rho\sigma}.
\end{aligned}$$

Gauge fixing and asymptotic expansions are introduced only after this relative variation has been fixed。

---

## 2. Coupled off-shell index family

### 2.1 Gravity

Use the standard fixed-frame family

$$\begin{align}
\mathcal F_{{\rm grav},N}
\end{align}$$

of `all-order radial hierarchy.md`，including

$$\begin{align}
K_0^{\mathcal C} = K_1^\beta = K_2^\beta = K_2^U = K_0^{\mathcal V} =0.
\end{align}$$

In particular，

$$\begin{aligned}
\gamma_{AB} &= r^2q_{AB}+rC_{AB}+O(L^K), \\
\beta &= O(r^{-2}L^K), \\
U^A &= O(r^{-2}L^K), \\
\frac Vr &= -1+O(r^{-1}L^K).
\end{aligned}$$

### 2.2 Massless scalar

For every finite $N$ take

$$\begin{align}
\boxed{ \phi = \frac{\varphi(u,x)}r + \sum_{n=2}^{N} r^{-n}
\sum_{k=0}^{K_n^\phi} \phi_{n,k}(u,x)L^k + \mathcal R_{\phi,N}.
}
\end{align}$$

The leading cap is

$$\begin{align}
K_1^\phi=0.
\end{align}$$

All coefficients are independent off shell。The remainder is conormal in the same truncated topology as the gravitational remainder。

### 2.3 Maxwell

First use the gauge-saturated parent class。The equation

$$\begin{align}
\partial_r\lambda=-A_r
\end{align}$$

then reaches radial gauge locally in the collar exactly as in the three-dimensional pilot。After gauge fixing，

$$
\boxed{
\begin{aligned}
A_r&=0,
\\
A_A
&=
a_A(u,x)
+
\sum_{n=1}^{N}
r^{-n}
\sum_{k=0}^{K_{A,n}}
A_{A;n,k}(u,x)L^k
+
\mathcal R_{A,N},
\\
A_u
&=
\sum_{n=1}^{N}
r^{-n}
\sum_{k=0}^{K_{u,n}}
A_{u;n,k}(u,x)L^k
+
\mathcal R_{u,N}.
\end{aligned}
}
$$

The leading angular cap is

$$\begin{align}
K_{A,0}=0.
\end{align}$$

The residual gauge parameter satisfies

$$\begin{align}
\partial_r\lambda=0.
\end{align}$$

Its proper/large reduction belongs to Stage 8；nothing in the radial renormalization assumes the answer。

### 2.4 Massive scalar

The null-collar off-shell class is kept separate：

$$\begin{align}
\phi_m \in r^{-p} \mathcal A_{\rm phg}, \qquad p\geq1.
\end{align}$$

For $p<1$ the outer current contains

$$\begin{align}
r^{2-2p}
\delta\dot a\wedge\delta a
\end{align}$$

and diverges。Thus $p=1$ is the obstruction boundary in the local/no-edge category。For $p\geq1$ the action divergences are field-space exact and can be subtracted as described below。

### 2.5 Product completion

Let $\mathcal E_\phi$ and $\mathcal E_A$ denote the matter index sets。The coupled family is not merely their union，but the finite-order additive hull

$$\begin{align}
\mathcal E_{\rm coupled} = \operatorname{Hull}_N \left( \mathcal E_{\rm grav} \cup \mathcal E_\phi \cup \mathcal E_A \cup (\mathcal E_\phi+\mathcal E_\phi) \cup (\mathcal E_A+\mathcal E_A) \right).
\end{align}$$

Here addition acts on radial weights and log degrees。This is the minimal hull containing the stress tensors。At every fixed $N$ it is finite and is closed under the finite number of products and derivatives appearing in the coupled equations。

This definition does not use any coefficient relation from the coupled EOM。

---

## 3. Massless scalar: exact flat-space ledger

The leading divergent weights are unchanged by the allowed gravitational corrections，so they can be computed in the retarded Minkowski metric

$$\begin{align}
ds^2 = -du^2-2du\,dr+r^2q_{AB}dx^Adx^B.
\end{align}$$

Its inverse and volume element give

$$\begin{align}
(\nabla\phi)^2 = -2\partial_u\phi\,\partial_r\phi +(\partial_r\phi)^2 +\frac1{r^2}D_A\phi D^A\phi,
\end{align}$$

$$\begin{align}
\sqrt{-g}=r^2\sqrt q.
\end{align}$$

Thus

$$\begin{align}
\mathcal L_\phi = \sqrt q \left[ r^2\dot\phi\,\partial_r\phi -\frac12r^2(\partial_r\phi)^2 -\frac12D_A\phi D^A\phi \right].
\end{align}$$

For

$$\begin{align}
\phi=\frac{\varphi}{r}+O(r^{-2}L^K),
\end{align}$$

the only radial logarithm in the action is

$$\begin{align}
\mathcal L_\phi = -\frac{\sqrt q}{r}\, \varphi\dot\varphi +O(r^{-2}L^K).
\end{align}$$

Therefore

$$\begin{align}
\boxed{ S_{\phi,{\rm div}} = -\frac{L_R}{2} \left[ \int_{S^2}d^2x\sqrt q\,\varphi^2 \right]_{u_-}^{u_+}.
}
\end{align}$$

It is pure endpoint descent。The counterterm is the cut functional

$$\begin{align}
\boxed{ S_{\phi,{\rm ct}} = +\frac{L_R}{2} \left[ \int_{C_u}d^2x\sqrt q\,\varphi^2 \right]_{u_-}^{u_+}.
}
\end{align}$$

The notation means that the coefficient $\varphi$ is extracted by the finite normal-jet projector of `all-order radial hierarchy.md`。Equivalently，at this weight one may use

$$\begin{align}
\varphi = -r^2\partial_r\phi+O(r^{-1}L^K).
\end{align}$$

Hence the subtraction belongs to the declared fixed-frame extended category。

### 3.1 First and second variations

The pullback of the scalar potential to $r=R$ is

$$\begin{align}
\Theta_R^\phi = -\int_{\mathcal B_R} du\,d^2x\, \sqrt{-g}\, \nabla^r\phi\,\delta\phi.
\end{align}$$

Since

$$\begin{align}
\nabla^r\phi = -\dot\phi+\partial_r\phi
\end{align}$$

at leading order，

$$\begin{align}
\boxed{ \Theta_{\mathscr I}^{\phi} = \int_{\mathscr I} du\,d^2x\sqrt q\, \dot\varphi\,\delta\varphi.
}
\end{align}$$

Consequently，

$$\begin{align}
\boxed{ \Omega_{\mathscr I}^{\phi} = \int_{\mathscr I} du\,d^2x\sqrt q\, \delta\dot\varphi\wedge\delta\varphi.
}
\end{align}$$

The endpoint subtraction changes $\Theta$ by a field-space exact cut term and does not change this two-form。The limiting functional is therefore $C^2$ in the finite-order weighted topology。

### 3.2 Leading-log obstruction

Now enlarge the class to

$$\begin{align}
\phi = \frac{\varphi_0+L\varphi_1}{r}+\cdots.
\end{align}$$

The outer current contains

$$\begin{aligned}
\omega_R^\phi &= \delta \left( \dot\varphi_0+L_R\dot\varphi_1 \right) \wedge \delta \left( \varphi_0+L_R\varphi_1 \right) +O(R^{-1}L^K)
\\
&= L_R^2 \delta\dot\varphi_1\wedge\delta\varphi_1 +O(L_R).
\end{aligned}$$

This is not the field-space variation of a cut scalar and is not a $u$-endpoint descent for arbitrary off-shell histories。A local action counterterm changes $\Theta$ by $\delta B+dC$ and therefore cannot remove this bulk-in-$u$ two-form without changing the boundary field content or polarization。

Hence

$$\begin{align}
\boxed{K_1^\phi=0}
\end{align}$$

is sharp in the current category。

### 3.3 Massless scalar equation

Only after renormalization impose

$$\begin{align}
\Box\phi=0.
\end{align}$$

For

$$\begin{align}
\phi = \sum_{n\geq1}r^{-n}a_n(u,x)
\end{align}$$

one obtains

$$\begin{align}
\boxed{ 2n\,\dot a_{n+1} + \left[ \Delta+n(n-1) \right]a_n =0, \qquad n\geq1.
}
\end{align}$$

The leading datum

$$\begin{align}
a_1=\varphi
\end{align}$$

is unconstrained by the radial hierarchy。The recursion determines the $u$-evolution of deeper coefficients up to integration data。The radiative scalar pair above agrees with the standard null-infinity CPS description；see [Simić](https://arxiv.org/abs/2309.06148) for a Hamiltonian/CPS analysis。

---

## 4. Maxwell: exact flat-space ledger

In radial gauge define

$$\begin{aligned}
F_{ur}&=-\partial_rA_u, \\
F_{uA}&=\dot A_A-D_AA_u, \\
F_{rA}&=\partial_rA_A, \\
F_{AB}&=2D_{[A}A_{B]}.
\end{aligned}$$

Direct inversion of the retarded metric gives

$$
\boxed{
\begin{aligned}
-\frac14\sqrt{-g}F_{\mu\nu}F^{\mu\nu}
=
\sqrt q
\bigg[
&
\frac12r^2F_{ur}^2
+F_{uA}F_r{}^A
-\frac12F_{rA}F_r{}^A
\\
&
-\frac1{4r^2}F_{AB}F^{AB}
\bigg].
\end{aligned}
}
$$

Sphere indices in this formula are raised with $q^{AB}$。

For the standard caps，

$$\begin{aligned}
F_{ur}&=O(r^{-2}L^K), \\
F_{uA}&= \dot a_A+O(r^{-1}L^K), \\
F_{rA}&=O(r^{-2}L^K), \\
F_{AB}&=2D_{[A}a_{B]}+O(r^{-1}L^K).
\end{aligned}$$

Every term in the radial action density is $O(r^{-2}L^K)$。Thus

$$\begin{align}
\boxed{ S_{{\rm M},{\rm div}}=0
}
\end{align}$$

at null infinity。

This is also consistent with conformal invariance of Maxwell theory in four dimensions，but the displayed result follows by direct weight counting and does not rely on a conformal argument。

### 4.1 Maxwell radiative pair

The outer potential is

$$\begin{align}
\Theta_R^{\rm M} = -\int_{\mathcal B_R} du\,d^2x\, \sqrt{-g}\, F^{r\nu}\delta A_\nu.
\end{align}$$

Using

$$\begin{align}
\sqrt{-g}F^{rA} = \sqrt q \left( -F_u{}^A+F_r{}^A \right),
\end{align}$$

one obtains

$$\begin{align}
\boxed{ \Theta_{\mathscr I}^{\rm M} = \int_{\mathscr I} du\,d^2x\sqrt q\, F_u^{A(0)}\delta a_A, }
\end{align}$$

where

$$\begin{align}
F_{uA}^{(0)} = \dot a_A
\end{align}$$

in a representative with no leading $A_u$。Thus

$$\begin{align}
\boxed{ \Omega_{\mathscr I}^{\rm M} = \int_{\mathscr I} du\,d^2x\sqrt q\, \delta F_u^{A(0)} \wedge \delta a_A.
}
\end{align}$$

The Coulomb coefficient

$$\begin{align}
F_{ur} = \frac{Q(u,x)}{r^2}+\cdots
\end{align}$$

enters the constraint/cut sector rather than a new local radiative pair。

### 4.2 Leading-log obstruction

For

$$\begin{align}
A_A = a_A^{(0)}+La_A^{(1)}+\cdots,
\end{align}$$

the outer current contains

$$\begin{align}
\omega_R^{\rm M} = L_R^2 \sqrt q\, \delta\dot a_A^{(1)} \wedge \delta a^{A(1)} +O(L_R).
\end{align}$$

Therefore

$$\begin{align}
\boxed{K_{A,0}=0}
\end{align}$$

is again the obstruction boundary。This is the spin-one analogue of both the leading-log scalar and leading-log gravitational shear obstruction。

### 4.3 Enlarged-category verdict：counterterms do not remove the class

The three leading-log problems have the same universal form。Let

$$\begin{align}
X = \varphi_1, \qquad a_A^{(1)}, \qquad C_{AB}^{(1)}
\end{align}$$

for spin $0,1,2$ respectively，and define

$$\begin{align}
c_X = 1, \qquad 1, \qquad \frac1{32\pi G}.
\end{align}$$

Modulo field-space-exact and $u$-endpoint terms，their divergent outer potential and two-form are

$$\begin{align}
\boxed{ \Theta_{{\rm div},R}[X] = c_XL_R^2 \int du\, \langle\dot X,\delta X\rangle, }
\end{align}$$

$$\begin{align}
\boxed{ \Omega_{{\rm div},R}[X] = c_XL_R^2 \int du\, \langle\delta\dot X\wedge\delta X\rangle.
}
\end{align}$$

The bracket includes $\int_{S^2}\sqrt q$ and the natural scalar、vector or symmetric-tracefree-tensor contraction。

This class remains nonzero even when nonlocal action counterterms are allowed。Indeed，for any genuine $C^2$ functional $B_R[X]$，local or nonlocal in $u$ and angles，

$$\begin{align}
\Delta_B\Theta=\delta B_R, \qquad \Delta_B\Omega=\delta^2B_R=0.
\end{align}$$

A corner ambiguity $d_uY_R$ changes the current by $d_u\delta Y_R$，whose integral vanishes on tangent variations supported away from $u_\pm$。The class itself is nonzero on that tangent subspace。For one normalized angular polarization and $u\in[0,1]$，take

$$\begin{align}
\delta_1X=u(1-u), \qquad \delta_2X=u^2(1-u).
\end{align}$$

Both variations vanish at the endpoints，but

$$\begin{align}
\int_0^1du\, \left( \partial_u\delta_1X\,\delta_2X
- \partial_u\delta_2X\,\delta_1X \right) = -\frac1{30}.
\end{align}$$

Therefore $\Omega_{{\rm div},R}$ is a nontrivial relative field-space/horizontal class，not merely a failure to guess a sufficiently complicated counterterm。

The same test survives the addition of any edge space $\mathcal F_{\rm edge}$ with a jointly $C^2$ action whenever the enlarged off-shell domain contains the product tangent directions

$$\begin{align}
(\delta X,\delta e=0).
\end{align}$$

Restricting the putative cancellation to these directions reduces every edge coupling to an ordinary $C^2$ functional of $X$ at fixed $e$，while horizontal-exact terms still vanish for interior-supported variations。Thus a finite action-derived edge sector cannot cancel the class while retaining all original off-shell $X(u,x)$ variations。

There are only two apparent loopholes，and both change the problem：

1. impose a kinematical gluing graph that removes the directions $(\delta X,0)$；
2. add an independent anomaly-inflow sector whose own symplectic form diverges with the opposite coefficient。

The minimal inflow diagnostic makes the tradeoff explicit。Extend $X$ to a field

$$\begin{align}
Y(\rho,u,x), \qquad \rho\in[0,1], \qquad Y(1,u,x)=X(u,x),
\end{align}$$

and consider the auxiliary-collar Wess--Zumino action

$$\begin{align}
\boxed{ S_{{\rm WZ},R}[Y] = -c_XL_R^2 \int_0^1d\rho \int du\, \left\langle \partial_\rho Y, \partial_uY \right\rangle.
}
\end{align}$$

Its variation is

$$\begin{aligned}
\delta S_{{\rm WZ},R} =& -c_XL_R^2
\int_{\rho=1}du\, \langle\dot X,\delta X\rangle
\\
& + c_XL_R^2 \int_{\rho=0}du\, \langle\partial_uY,\delta Y\rangle
\\
& + 2c_XL_R^2
\int_0^1d\rho\int du\, \left\langle
\delta Y, \partial_\rho\partial_uY \right\rangle
\\
& - c_XL_R^2 \left[ \int_0^1d\rho\, \langle\partial_\rho Y,\delta Y\rangle \right]_{u_-}^{u_+}.
\end{aligned}$$

The first line cancels $\Theta_{{\rm div},R}$。Taking $\rho$ as the auxiliary radial evolution variable，the new canonical pair is

$$\begin{align}
\boxed{ \Pi_Y = -c_XL_R^2\partial_uY, \qquad \Omega_{\rho}^{\rm edge} = \int du\, \langle\delta\Pi_Y\wedge\delta Y\rangle.
}
\end{align}$$

At $\rho=1$ the momentum gluing equation is

$$\begin{align}
\boxed{ \Pi_X^{\rm div}+\Pi_Y=0, \qquad \Pi_X^{\rm div}=c_XL_R^2\dot X, }
\end{align}$$

and the two divergent symplectic forms cancel。

This is not yet a generic off-shell completion。The collar Euler--Lagrange equation is

$$\begin{align}
\partial_\rho\partial_uY=0.
\end{align}$$

If the inner edge is fixed，

$$\begin{align}
Y(0,u,x)=0,
\end{align}$$

then this equation implies

$$\begin{align}
\dot X=0.
\end{align}$$

Moreover，away from this equation the interior term in $\delta S_{{\rm WZ},R}$ itself grows as $L_R^2$，so the enlarged action is not $C^2$ finite on arbitrary independent collar profiles。If instead

$$\begin{align}
Y(0,u,x)=Z(u,x)
\end{align}$$

is dynamical，the equation gives $\dot X=\dot Z$ and the second line carries precisely the same anomaly to the inner edge。The inflow sector therefore either derives the familiar restriction $\dot X=0$ as a boundary equation or transports the obstruction to another boundary；it does not create a sink-free radiative leading-log pair。

Hence the action-first verdict is：

$$
\boxed{
\begin{gathered}
\text{arbitrary nonlocal action counterterms do not help,}
\\
\text{and a finite }C^2\text{ edge extension cannot retain generic }X(u,x).
\end{gathered}
}
$$

On the reduced fixed-inner-edge branch，

$$\begin{align}
\dot X=0, \qquad \Omega_{\rm div}^{\rm bulk} + \Omega_{\rm div}^{\rm edge} =0,
\end{align}$$

and the reduced finite form is the standard no-leading-log radiative form plus a time-independent soft datum $X(x)$ with no WZ conjugate。Choosing a nonlocal corner one-form by hand can also subtract the class，but then $\Omega$ is no longer derived from a single $C^2$ renormalized action；that option lies outside the chain studied here。

---

## 5. Massive scalar: null infinity is not its scattering boundary

### 5.1 Off-shell action weights

Take a leading monomial

$$\begin{align}
\phi_m=r^{-p}a(u,x).
\end{align}$$

The mass term contributes

$$\begin{align}
S_{m^2} \sim -\frac{m^2}{2} \int^{R}dr\,r^{2-2p} \int du\,d^2x\sqrt q\,a^2.
\end{align}$$

It is finite without subtraction iff

$$\begin{align}
p>\frac32.
\end{align}$$

For $p\neq3/2$ the divergence is removed by

$$\begin{align}
S_{m,{\rm ct}} = \frac{m^2}{2(3-2p)} \int_{\mathcal B_R} du\,d^2x\sqrt q\, R^3\phi_m^2,
\end{align}$$

and at $p=3/2$ by its resonant version

$$\begin{align}
S_{m,{\rm ct}}^{\rm res} = \frac{m^2L_R}{2} \int_{\mathcal B_R} du\,d^2x\sqrt q\, R^3\phi_m^2.
\end{align}$$

For a finite index family the cross terms are treated weight by weight using the finite normal-jet projectors。These counterterms are fixed-frame and explicitly cutoff dependent。

The outer two-form scales as

$$\begin{align}
\omega_R^{m} \sim R^{2-2p} \delta\dot a\wedge\delta a.
\end{align}$$

It is finite for $p\geq1$ and divergent for $p<1$。At $p=1$ the kinetic action also has the endpoint logarithm of section 3，which is removed by the same cut subtraction。

### 5.2 On-shell vanishing of a pure polyhomogeneous hierarchy

Suppose

$$\begin{align}
\phi_m \sim \sum_{(p,k)} r^{-p}L^k\phi_{p,k}(u,x)
\end{align}$$

has a lowest nonzero radial weight $p_0$。In

$$\begin{align}
(\Box-m^2)\phi_m=0,
\end{align}$$

the term

$$\begin{align}
-m^2r^{-p_0}L^{k_0}\phi_{p_0,k_0}
\end{align}$$

occurs at weight $p_0$，whereas every derivative contribution has strictly larger radial weight。The highest log coefficient at the lowest weight must therefore vanish。Descending in log degree and then inducting in radial weight gives

$$\begin{align}
\boxed{ \phi_{p,k}=0 \quad \text{for every coefficient of a pure inverse-power/log hierarchy}.
}
\end{align}$$

This is not a claim that a massive field vanishes in spacetime。It says that its physical asymptotics are not represented by the null polyhomogeneous ansatz。

Near future timelike infinity，with proper time $\tau$ and hyperbolic coordinate $y\in H^3$，one instead has

$$\begin{align}
\boxed{ \phi_m \sim \tau^{-3/2} \left[ b(y)e^{-im\tau} +\overline{b(y)}e^{im\tau} \right] +\cdots.
}
\end{align}$$

The universal $\tau^{-3/2}$ decay and hyperboloid data are described explicitly by [Liu--Long](https://arxiv.org/abs/2508.15619)。The action and symplectic gluing of this $i^+$ sector is therefore a Stage 7 problem。

---

## 6. Mixed gravity--matter divergence ledger

### 6.1 Metric corrections cannot raise a matter term to a new divergent weight

In standard Bondi gauge，

$$\begin{align}
\sqrt{-g} = r^2\sqrt q \left[ 1+O(r^{-2}L^K) \right].
\end{align}$$

Relative to the retarded Minkowski inverse metric，

$$\begin{aligned}
\delta g^{rr}&=O(r^{-1}L^K), \\
\delta g^{rA}&=O(r^{-2}L^K), \\
\delta g^{AB}&=O(r^{-3}L^K).
\end{aligned}$$

Consequently：

- the scalar $r^{-1}\varphi\dot\varphi$ endpoint density receives only integrable corrections；
- every Maxwell density remains $O(r^{-2}L^K)$ or smaller；
- terms obtained by varying the matter action with respect to the metric have the same or lower radial degree；
- the matter stress tensors first modify gravitational coefficients at weights deeper than the gravitational divergent support proved in Stage 4。

Thus the complete divergent ledger is

| Sector | Divergence | Subtraction | New two-form obstruction? |
|---|---|---|---|
| Gravity | Stage 3 list | Stage 3 boundary/joint terms | only leading-log shear |
| Massless scalar | $-\frac12L_R[\int\varphi^2]_-^+$ | scalar cut term | only leading-log $\varphi_1$ |
| Maxwell | none | none | only leading-log $a_A^{(1)}$ |
| Massive scalar, $p\geq1$ | mass power/log and possibly $p=1$ cut log | outer mass CT plus cut CT | none for $p\geq1$ |
| Mixed terms | none at divergent weights | none | none |

### 6.2 Why “none” is an all-finite-order statement

The Einstein--Hilbert action has the exact radial support theorem of Stage 4。The matter Lagrangians contain at most two matter factors and one inverse metric。Once their leading weights have been checked，each deeper matter coefficient or deeper gravitational correction lowers the radial degree。The finite normal-jet extraction theorem then separates all coefficients at every fixed truncation order $N$。

Therefore adding the $N+1$ layer cannot create a new term with radial primitive

$$\begin{align}
R^\alpha L_R^k, \qquad \alpha\geq0,
\end{align}$$

except from a forbidden leading logarithm or from the explicitly listed massive potential weights。

---

## 7. Coupled renormalized action and CPS

Define

$$\begin{aligned}
S_{\rm ren}^{\rm coupled} = \lim_{R\to\infty} \bigg( & S_{\rm grav} +S_{{\rm grav},{\rm ct}}
\\
& +S_\phi +S_{\phi,{\rm ct}}
\\
& +S_{\rm M}
\\
& +S_m +S_{m,{\rm ct}}
\bigg).
\end{aligned}$$

For the declared finite-order log-free-leading class，

$$\begin{align}
S_{\rm ren}^{\rm coupled} \in C^2_{\rm loc} \left( \mathcal F_{{\rm coupled},N} \right).
\end{align}$$

On the massless null sector its radiative two-form is

$$
\boxed{
\begin{aligned}
\Omega_{\mathscr I}^{\rm coupled}
=
\int_{\mathscr I}
du\,d^2x\sqrt q
\bigg[
&
\frac1{32\pi G}
\delta N^{AB}\wedge\delta C_{AB}
\\
&
+\delta\dot\varphi\wedge\delta\varphi
\\
&
+\delta F_u^{A(0)}
\wedge\delta a_A
\bigg]
+\Omega_{\rm cut}.
\end{aligned}
}
$$

The coefficient of the gravitational term follows the convention of `4d nonlinear gravity.md`。The cut sector contains Coulombic/gravitational constraint data and endpoint polarizations。

Closedness is immediate from

$$\begin{align}
\Omega_{\rm ren}^{\rm coupled} = \delta\Theta_{\rm ren}^{\rm coupled}.
\end{align}$$

Finiteness follows from the separate ledgers above。No matter EOM has been used in either statement。

---

## 8. Coupled equations and backreaction

Now impose

$$\begin{aligned}
G_{\mu\nu} &= 8\pi G \left( T_{\mu\nu}^{\phi} +T_{\mu\nu}^{\rm M} +T_{\mu\nu}^{m} \right), \\
(\Box-m^2)\phi&=0, \\
\nabla_\mu F^{\mu\nu}&=0.
\end{aligned}$$

### 8.1 Leading radiative stress

For the massless scalar，

$$\begin{align}
T_{uu}^{\phi} = \frac{\dot\varphi^2}{r^2} +O(r^{-3}L^K), \qquad T_{rr}^{\phi} = \frac{\varphi^2}{r^4} +O(r^{-5}L^K).
\end{align}$$

For Maxwell，

$$\begin{align}
T_{uu}^{\rm M} = \frac{q^{AB}F_{uA}^{(0)}F_{uB}^{(0)}}{r^2} +O(r^{-3}L^K).
\end{align}$$

In the Bondi normalization of this project the mass-aspect equation becomes

$$\begin{align}
\boxed{ \dot M = \frac14D_AD_BN^{AB} -\frac18N_{AB}N^{AB} -4\pi G \left[ \dot\varphi^2 +q^{AB}F_{uA}^{(0)}F_{uB}^{(0)} \right].
}
\end{align}$$

Angular total divergences drop after integration over the round sphere。The numerical coefficients assume

$$\begin{align}
N_{AB}=\dot C_{AB}, \qquad G_{\mu\nu}=8\pi GT_{\mu\nu},
\end{align}$$

and the scalar/Maxwell action normalization in section 0。

### 8.2 Constraint propagation

The contracted Bianchi identity gives

$$\begin{align}
\nabla^\mu G_{\mu\nu}=0.
\end{align}$$

The matter equations imply

$$\begin{align}
\nabla^\mu T_{\mu\nu}=0.
\end{align}$$

Therefore，once the radial and evolution equations hold，the remaining Bondi constraints obey a homogeneous propagation system。This establishes formal constraint propagation order by order。It does not replace a global existence theorem。

### 8.3 Log completion

Quadratic products of the leading massless fields have weights already present in

$$\begin{align}
\mathcal E_{\rm grav}
\star \mathcal E_{\rm matter}.
\end{align}$$

They may populate deeper logarithmic coefficients，but they do not force a logarithm into

$$\begin{align}
C_{AB}, \qquad \varphi, \qquad a_A
\end{align}$$

at their leading radiative weights on a finite $u$-slab。The finite-order hull therefore closes formally under the coupled radial hierarchy。

### 8.4 Vacuum consistent truncation

Setting

$$\begin{align}
\phi=0, \qquad F_{\mu\nu}=0
\end{align}$$

solves the matter equations and removes the stress tensor identically。The coupled action，counterterms，symplectic form and equations reduce exactly to the vacuum construction。Thus the vacuum sector is a consistent truncation。

---

## 9. Actual-solution gate

### 9.1 The gate is stratified，not one global map

The original formulation hid three analytically different limits。The correct diagram is

$$
\begin{tikzcd}[column sep=large]
\mathfrak D_{\rm ml}
\arrow[r,"\mathcal S_{\rm ml}^{\rm harm/Lor}"]
&
\mathfrak X_{\rm ml}
\arrow[r,"\mathcal B_N"]
&
\mathcal F_{{\rm coupled},N}^{[u_-,u_+]}
\\
\mathfrak D_m
\arrow[r,"\mathcal S_m^{\rm wave}"]
&
\mathfrak X_m
\arrow[r,"\mathcal B_N\times\mathcal T_m"]
&
\mathcal F_{{\rm grav},N}^{[u_-,u_+]}
\times\mathfrak P_m(H^3_\pm).
\end{tikzcd}
$$

Here：

- $\mathcal S$ is the nonlinear Cauchy/characteristic solution map；
- $\mathcal B_N$ is the finite-order harmonic-to-Bondi map；
- $\mathcal T_m$ extracts the massive modified-scattering profile on $H^3_\pm$；
- the superscript $[u_-,u_+]$ is essential：a finite null slab，the $i^0$ corner and the $i^\pm$ corners carry different norms。

There is no map

$$\begin{align}
\mathfrak D_{\rm ml}\times\mathfrak D_m \longrightarrow
\text{one pure-null polyhomogeneous coefficient space}
\end{align}$$

because the massive field has zero pure-null jet but nonzero timelike data。Nor does any cited PDE theorem prove surjectivity onto arbitrary formal Bondi coefficients。The actual-solution statement below is therefore an embedding of an actual class，not a realization theorem for the whole formal phase space。

### 9.2 Massless Cauchy class and global existence

Fix $k\gg1$ and a standard asymptotically Euclidean end。Let

$$\begin{align}
d_{\rm ml} = (\bar g_{ij},K_{ij}; \phi_0,\phi_1; A_i,E^i)
\end{align}$$

be constraint-satisfying initial data with：

1. small weighted Sobolev norm $H^k_\delta\times H^{k-1}_{\delta-1}$，including the corresponding matter weights；
2. a fixed ADM frame and the generalized harmonic gauge constraints；
3. Lorenz gauge and Gauss constraint for Maxwell；
4. enough weighted derivatives to reach the desired finite Bondi order $N$，namely $k\geq k_\ast(N)$。

There are two source theorems：

- [Lindblad--Rodnianski](https://arxiv.org/abs/math/0411109) give global causally geodesically complete small-data solutions for Einstein vacuum and Einstein--massless-scalar in harmonic gauge；
- [Kauffman--Lindblad](https://arxiv.org/abs/2109.03270) give global small-data solutions for the **massless** Einstein--Maxwell--Klein--Gordon system in generalized wave coordinates。At zero electromagnetic coupling，its real neutral subspace is precisely Einstein gravity coupled to an independent real massless scalar and Maxwell field。

Thus a nonempty global actual class

$$\begin{align}
\mathfrak X_{\rm ml} = \mathcal S_{\rm ml}^{\rm harm/Lor} (\mathfrak D_{\rm ml})
\end{align}$$

exists。Standard hyperbolic uniqueness and the difference estimates used in the small-data proof give，after lowering a fixed number of derivatives，local Lipschitz dependence of the solution on $d_{\rm ml}$ on every finite spacetime slab。This statement gives weighted conormal control；by itself it does **not** give an all-order polyhomogeneous expansion at every corner。

### 9.3 The $i^0$ polyhomogeneous subcategory

For the corner adjacent to spatial infinity，replace the unrestricted Cauchy class by a smaller mixed characteristic class

$$\begin{align}
\mathfrak D_{{\rm ml},i^0}^{k,\mathcal E}
\end{align}$$

whose data on an ingoing null cone and on $\mathscr I^-$ are small，conormal and polyhomogeneous with index family $\mathcal E$。The reduced harmonic--Lorenz equations have the schematic form

$$\begin{aligned}
\widetilde\Box_g h_{\mu\nu} &= Q_{\mu\nu}(\partial h,\partial h) +16\pi G\,\partial_\mu\phi\,\partial_\nu\phi +16\pi G\,T_{\mu\nu}^{\rm M} +\text{cubic terms}, \\
\Box_g\phi&=0, \\
\Box_gA_\nu &= R_\nu{}^\mu A_\mu ,
\end{aligned}$$

supplemented by homogeneous wave equations for the harmonic and Lorenz constraints。The general framework in [Kádár--Kehrberger](https://arxiv.org/abs/2501.09814) is stated to extend componentwise to systems，but their complete Einstein application is vacuum。To invoke it for the present matter system，the exceptional weak-null source must first be put into the approximate solution。For matter this source is

$$\begin{align}
rT_{\underline L\underline L}^{(2)} = \frac1r \left[ (\partial_u(r\phi))^2 +q^{AB}F_{uA}^{(0)}F_{uB}^{(0)} \right] +O(r^{-2}L^K).
\end{align}$$

It is not a strictly short-range error。Exactly as for the vacuum
$F_{\underline L\underline L}[h_{\mathcal{UT}}]$ term，one first inserts its primitive into the bad metric component：

$$\begin{align}
r h_{\underline L\underline L}^{\rm app} \supset \log\rho_0\, \mathcal I_{\rm mat}, \qquad \partial_v\mathcal I_{\rm mat} = \left. r^2T_{\underline L\underline L}^{(2)} \right|_{\mathscr I^-}.
\end{align}$$

After subtraction，every remaining matter term gains a positive corner weight：

| Equation | principal perturbation | exceptional term | remainder |
|---|---|---|---|
| $h_{\mathcal{TU}}$ | common $g^{\mu\nu}\partial_\mu\partial_\nu$ | none | strictly admissible |
| $h_{\underline L\underline L}$ | same | $(\partial_u(r\phi))^2+(F_{uA}^{(0)})^2$ | strictly admissible after the displayed primitive |
| $\phi$ | same metric perturbation | none | homogeneous admissible wave equation |
| $A_\nu$ | same metric perturbation | $R_\nu{}^\mu A_\mu$ | cubic after using Einstein's equation，hence admissible |

Products saturate the finite index family by extended union。The table proves closure of the formal asymptotic system and identifies the only new leading ansatz。It does not，by itself，reproduce the tame estimates，constraint propagation and Nash--Moser step of the vacuum proof。Consequently the precise conditional corollary is：provided those estimates remain valid after the displayed matter subtraction and an actual small initial slab is supplied by local well-posedness or by the global class of section 9.2，the Kádár--Kehrberger limiting construction gives an actual semiglobal solution near $i^0$ and

$$\begin{align}
\mathcal S_{{\rm ml},i^0}:
\mathfrak D_{{\rm ml},i^0}^{k,\mathcal E} \longrightarrow
\mathfrak X_{{\rm ml},i^0}^{k-\ell,\overline{\mathcal E}}
\end{align}$$

continuously at every fixed finite order。The missing evidence is therefore no longer “find the right asymptotic ansatz”；it is the coupled tame estimate for the remainder system。No separately stated Einstein--matter corollary in the cited paper supplies it。

### 9.4 Actual harmonic-to-Bondi map including matter

The geometric construction in `4d nonlinear gravity.md` Theorem 12.3 uses only the metric，the no-caustic estimate and finite-order conormal bounds。It therefore applies unchanged to the massless coupled metric。The scalar is pulled back as a scalar。For Maxwell，after pullback to $(U,R,X^A)$，set

$$\begin{align}
\lambda(U,R,X) = \lambda_\ast(U,X) -\int_{R_\ast}^{R}A_R(U,R',X)\,dR',
\end{align}$$

so that

$$\begin{align}
A'_R=A_R+\partial_R\lambda=0.
\end{align}$$

The homogeneous datum $\lambda_\ast$ fixes the residual large-gauge representative。The primitive of a polyhomogeneous monomial is again polyhomogeneous，with the resonant logarithm already included by saturation of the index set。

For every fixed $N$ and $k\geq k_\ast(N)$ there are finite derivative losses $\ell_N$ and a neighbourhood of each sufficiently small actual solution such that

$$\begin{align}
\boxed{ \| \mathcal B_N(z)-\mathcal B_N(z')
\|_{\mathcal F_{{\rm coupled},N}} \leq C_N
\|
z-z'
\|_{H_{\rm b}^{k}}
}
\end{align}$$

on a finite $u$-slab。The proof is the composition of：

1. the eikonal difference estimate；
2. the null-generator flow estimate；
3. the determinant-root estimate defining luminosity radius；
4. the displayed radial gauge primitive。

All four operations are smooth maps between the fixed finite-order conormal Banach spaces。Thus the actual class maps continuously into，but not onto，

$$\begin{align}
\mathcal F_{{\rm coupled},N}.
\end{align}$$

The Bondi constraints and the matter backreaction are then the equations of section 8，not extra kinematical restrictions on the off-shell action domain。

### 9.5 Endpoint-tail stratum

At either end of a complete null boundary write

$$\begin{align}
s=\frac1{|u|}.
\end{align}$$

The tail class relevant for the fundamental action is

$$\begin{aligned}
C_{AB} &= C_{AB}^{\pm} +\frac{C_{AB}^{(1)\pm}}u +\sum_{j=2}^{N_u} s^j
\sum_{k=0}^{K_j^C} C_{AB}^{(j,k)\pm}(\log s)^k +\mathcal R_C, \\
\varphi &= \varphi^\pm +\frac{\varphi^{(1)\pm}}u +O(s^2\log^K s), \\
a_A &= a_A^\pm +\frac{a_A^{(1)\pm}}u +O(s^2\log^K s).
\end{aligned}$$

A convenient finite-order norm is generated by

$$\begin{align}
\sup_{|u|\geq u_0} \langle u\rangle^{1+j} (\log\langle u\rangle)^{-K} \left| \partial_u^j \left( X-X^\pm-\frac{X^{(1)\pm}}u \right) \right|,
\end{align}$$

together with angular and radial $b$-derivatives。This definition permits the generic $1/u$ tail but excludes a slower tail。

It gives

$$\begin{align}
N_{AB} = -\frac{C_{AB}^{(1)\pm}}{u^2} +O(u^{-3}\log^K|u|),
\end{align}$$

and similarly

$$\begin{align}
\dot\varphi=O(u^{-2}), \qquad F_{uA}^{(0)}=O(u^{-2}).
\end{align}$$

Hence all three fundamental radiative terms in $\Omega_{\mathscr I}^{\rm coupled}$ are $L^1(du)$。The mass equation fixes the first backreacted endpoint coefficient：

$$\begin{align}
\boxed{ M = M^\pm +\frac1{4u} D_AD_BC^{(1)\pm\,AB} +O(u^{-2}\log^K|u|) +O_{\rm flux}(u^{-3}).
}
\end{align}$$

The $u^{-1}$ term comes from the angular-divergence part of the news；the quadratic gravitational，scalar and Maxwell fluxes begin at $u^{-4}$ and integrate to $u^{-3}$。By contrast，

$$\begin{align}
\int^Udu\,uN_{AB} = -C_{AB}^{(1)\pm}\log|U|+O(1),
\end{align}$$

so this actual tail topology is sufficient for the action and fundamental CPS，but not for an unrenormalized superrotation soft moment。

Actual realization has two different statuses：

1. at the $i^0$ end，including $(1,0)$ in the input index family of section 9.3 produces this tail by polyhomogeneity propagation；
2. at the $i^\pm$ end，the global massless stability theorems give weighted decay，but do not prove that the full nonlinear scattering map preserves an arbitrarily prescribed endpoint index family。Backward scattering results for semilinear null/weak-null models realize such radiation fields，but they are not a theorem for the full Einstein--Maxwell--scalar system。

Therefore “generic” here means generic inside the declared conormal tail stratum，not generic in the entire small weighted-Sobolev data ball。A two-sided，full nonlinear endpoint realization theorem remains an analytic open problem；it cannot be silently supplied by a radial recursion。

### 9.6 Massive actual class

Let

$$\begin{align}
d_m = (\bar g_{ij},K_{ij};\psi_0,\psi_1)
\in\mathfrak D_m^{k,\sigma}
\end{align}$$

be small，smooth，localized Einstein--massive-Klein--Gordon Cauchy data in wave coordinates。[Ionescu--Pausader](https://arxiv.org/abs/1911.10652) prove global regularity，quantitative null/timelike estimates，Bondi and ADM energy identities and modified nonlinear scattering；[LeFloch--Ma](https://arxiv.org/abs/1507.02715) give an independent hyperboloidal global-stability construction。

The actual asymptotic output is a pair

$$\begin{align}
\mathcal S_m(d_m)
\longmapsto \left( g_{\rm rad}|_{\mathscr I^+}, V_\infty^\psi \right),
\end{align}$$

not a nonzero null Klein--Gordon coefficient。In the notation of Ionescu--Pausader，the timelike leading term is obtained by stationary phase at

$$\begin{align}
\nu_{\rm kg} = \frac{x}{\sqrt{t^2-r^2}}
\end{align}$$

and has the schematic form

$$\begin{align}
\psi \sim \tau^{-3/2} \left[ e^{-im\tau+i\Theta_{\rm kg}(\nu_{\rm kg},t)} b_+(\nu_{\rm kg}) +e^{im\tau-i\Theta_{\rm kg}(\nu_{\rm kg},t)} b_-(\nu_{\rm kg}) \right], \qquad \tau=\sqrt{t^2-r^2}.
\end{align}$$

The nonlinear phase $\Theta_{\rm kg}$ is part of the modified scattering profile and is not replaced here by an invented universal constant。For smooth localized profiles，the phase

$$\begin{align}
x\cdot\xi-t\sqrt{m^2+|\xi|^2}
\end{align}$$

has no finite critical point on $t-r=u$ with fixed $u$，because

$$\begin{align}
\left| \frac{\xi}{\sqrt{m^2+|\xi|^2}} \right|<1.
\end{align}$$

Low and bounded frequencies in the **leading modified-scattering profile** can therefore be integrated by parts to arbitrary fixed order，while its high-frequency part is controlled by weighted derivatives of the profile。Thus the profile contribution obeys，for every fixed $N$ in the smooth localized subcategory，

$$\begin{align}
\psi_{\rm profile}=O_N(r^{-N})
\end{align}$$

on compact $u$-intervals。The published nonlinear theorem controls the remaining error in weighted norms，but does not state an all-orders $O(r^{-\infty})$ estimate for that error。Consequently the source-supported conclusion is：

$$
\boxed{
\begin{gathered}
\text{the leading actual massive scattering profile has zero null jet,}
\\
\text{and if the complete solution admits a pure polyhomogeneous null expansion,}
\\
\text{section 5.2 forces every coefficient of that expansion to vanish.}
\end{gathered}
}
$$

An all-orders conormal remainder theorem for the complete nonlinear field would be additional PDE input。Even the profile estimate is not uniform as $u\to+\infty$，where the critical point runs to infinite momentum and the timelike expansion takes over。That transition is precisely why the $H^3_+$ profile and its corner action cannot be discarded。

No source cited above proves a single global theorem for the simultaneous model

$$\begin{align}
\text{Einstein} +\text{massless scalar} +\text{Maxwell} +\text{massive scalar}
\end{align}$$

with the full two-face polyhomogeneous output。The massless and massive actual classes are separately nonempty，and their perturbative coupling has the expected wave--wave--Klein--Gordon structure，but promoting their product to one global theorem is new PDE work。The action theorem of sections 1--8 does not depend on pretending otherwise。

### 9.7 Backreaction and continuous vacuum truncation

For every actual massless solution in the domain of $\mathcal B_N$，the Bondi coefficients obey

$$\begin{align}
\dot M = \frac14D_AD_BN^{AB} -\frac18N_{AB}N^{AB} -4\pi G \left[ \dot\varphi^2 +F_{uA}^{(0)}F_u^{A(0)} \right].
\end{align}$$

For the massive class，there is no direct massive null flux at fixed $u$；its energy remains in the timelike profile，while the gravitational radiation it generates is already contained in $N_{AB}$。

Let

$$\begin{align}
\iota_{\rm vac}(d) = (d;0,0)
\end{align}$$

denote inclusion of vacuum data into either matter data class。Uniqueness of the reduced hyperbolic problem，constraint propagation and uniqueness of the Bondi gauge construction give the commuting relations

$$\begin{align}
\boxed{ \mathcal S_{\rm matter}\circ\iota_{\rm vac} = \iota_{\rm vac}\circ\mathcal S_{\rm vac}, \qquad \mathcal B_N\circ\iota_{\rm vac} = \iota_{\rm vac}\circ\mathcal B_N^{\rm vac}.
}
\end{align}$$

The same difference estimates used above make both arrows continuous。Thus the previously constructed vacuum actual class is not merely a formal truncation；it is a closed，continuously embedded solution subspace。

### Proposition 9.1：precise actual-solution verdict

For every fixed $N$：

1. **Proved from published global theorems plus the geometric Bondi map**：the massless and massive small-data actual classes are nonempty；on every compact $u$-slab the solutions with the required finite conormal control map continuously to the corresponding finite-order Bondi action domain；the leading massive modified-scattering profile has zero null jet and its nonzero data map to $H^3_\pm$。
2. **Conditional semiglobal $i^0$ corollary with its missing estimate isolated**：the matter weak-null source requires exactly the logarithmic approximate solution in section 9.3；after its subtraction the formal weights are admissible，but the coupled tame/Nash--Moser estimate has not been proved here or in the cited source。
3. **Not proved，and not implied by any radial hierarchy**：that coupled tame estimate；an all-orders null remainder theorem for the complete nonlinear massive field；surjectivity onto arbitrary formal coefficients；one global theorem for simultaneous massless and massive matter；or preservation of a prescribed generic polyhomogeneous tail at both $i^0$ and $i^\pm$ for the full nonlinear coupled system。

This is the maximal source-supported actual-solution gate used below。The last line is a precise open PDE problem，not an omitted algebraic step。

---

## 10. Stage 6 theorem

### Theorem 10.1

Fix：

1. a finite $u$-slab；
2. fixed round $q_{AB}$ and fixed $\Omega=1/r$；
3. the standard finite-order gravitational family with no leading-log shear；
4. the massless scalar and Maxwell families of section 2 with no logarithm in their leading radiative coefficients；
5. the fixed-frame local finite-tangential/normal-jet counterterm category without inverse operators or new edge fields。

Then，for every fixed radial truncation order $N$：

$$\begin{align}
\boxed{ S_{\rm ren}^{\rm coupled}, \qquad \Theta_{\rm ren}^{\rm coupled}, \qquad \Omega_{\rm ren}^{\rm coupled}
}
\end{align}$$

exist and are finite，with $S_{\rm ren}^{\rm coupled}$ locally $C^2$ in the declared topology。The only new massless-matter subtraction is the scalar endpoint/corner term

$$\begin{align}
\frac{L_R}{2} \left[ \int_{S^2}\sqrt q\,\varphi^2 \right]_{u_-}^{u_+}.
\end{align}$$

No mixed gravity--matter counterterm occurs at a divergent radial weight。

After imposing the coupled EOM，the radiative symplectic form is the direct sum of the gravitational，scalar and Maxwell pairs，the mass loss receives the expected positive matter flux，constraints propagate formally，and vacuum gravity is a consistent truncation。

If a logarithm is admitted in a leading massless radiative coefficient，the corresponding $L_R^2$ two-form is an obstruction in this category。If $m\neq0$，a nonzero pure null polyhomogeneous on-shell hierarchy does not exist；the massive scattering sector lives at $i^\pm$。

Section 4.3 strengthens the first statement：allowing arbitrary nonlocal action counterterms does not change it，and an action-derived edge extension either imposes $\dot X=0$ or transfers the same class to a second edge。

### Assumptions

- Minimal two-derivative matter coupling；
- finite polyhomogeneous log caps at every fixed radial order；
- finite $u$-slab；
- fixed conformal frame；
- luminosity-radius Bondi gauge；
- no nonlocal counterterms and no new edge fields。

### Not proved

- A convergent $N\to\infty$ expansion；
- actual realization of arbitrary formal coefficient data；
- generic large-data scattering；
- uniform estimates at $u\to\pm\infty$；
- a joint null/timelike variational principle for massive data；
- $i^0$ matching and global charges。

Those items are precisely Stage 7。

---

## 11. Machine checks

The following identities were checked independently in Mathematica：

1. The scalar radial recursion

$$\begin{align}
2n\dot a_{n+1} + [\Delta+n(n-1)]a_n=0
\end{align}$$

   through five arbitrary orders；all coefficient residuals vanished。

2. For $\phi=\varphi/r$，the $r^{-1}$ scalar action density is

$$\begin{align}
-\varphi\dot\varphi/r
\end{align}$$

   exactly。

3. Direct matrix inversion of the retarded metric gives the Maxwell density in section 4；the tensor-contraction residual vanished。

4. The $L_R^2$ coefficients in both scalar and Maxwell leading-log currents are

$$\begin{align}
\delta\dot f_1\wedge\delta f_1.
\end{align}$$

5. Mathematica verified that the auxiliary-collar density in section 4.3 has

$$\begin{align}
\Pi_Y = -c_XL_R^2\partial_uY, \qquad E_Y = 2c_XL_R^2\partial_\rho\partial_uY,
\end{align}$$

   and that its outer symplectic coefficient cancels the bulk coefficient exactly。It also evaluated the compact-support polynomial test and returned $-1/30$。

6. For a massive leading weight $p$，

$$\begin{align}
\int dr\,r^{2-2p} = \frac{r^{3-2p}}{3-2p}
\end{align}$$

   away from the resonance $p=3/2$，and the outer two-form has weight $r^{2-2p}$。

7. For $C=C^\pm+C^{(1)\pm}/u$，Mathematica returned

$$\begin{align}
N=-\frac{C^{(1)\pm}}{u^2}, \qquad \partial_u \left( M^\pm+\frac{D_AD_BC^{(1)\pm\,AB}}{4u} \right) = \frac14D_AD_BN^{AB}.
\end{align}$$

   It also returned

$$\begin{align}
\int du\,uN=-C^{(1)\pm}\log|u|, \qquad \int du\,u^{-4}=-\frac1{3u^3}.
\end{align}$$

8. The Maxwell radial-gauge primitive in section 9.4 gives $A_R+\partial_R\lambda=0$ identically。For $m>0$ and $k\geq0$，Mathematica verified the positive velocity gap identity

$$\begin{align}
1-\frac{k}{\sqrt{m^2+k^2}} = \frac{m^2}{ \sqrt{m^2+k^2} \left( \sqrt{m^2+k^2}+k \right)
   }.
\end{align}$$

The PDE realization statements in section 9 were source-audited rather than machine-verified。In particular，the coupled Kádár--Kehrberger tame estimate and the full nonlinear massive all-order null remainder are explicitly retained as missing evidence。
