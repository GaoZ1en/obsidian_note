# De Donder Gauge Accessibility

This note proves de Donder accessibility for the scalar-sourced response $q_{\mu\nu}=(k_\phi)_{\mu\nu}$. The vacuum construction for $h_{\mu\nu}$ is in [accessibility](../accessibility.md). The order of the argument is the same: take radial gauge near the boundary, solve the asymptotic gauge equation, and correct the remaining error on the entire spatial disk.

The equations are

$$\begin{align}
(\Box_0-m^2)\phi^{(0)}&=0,& m^2&=\Delta(\Delta-2),\\
\mathcal E^{(1)}_{\mu\nu}[q]&=\frac12T_{(0)\mu\nu}[\phi^{(0)}].
\end{align}$$

We use unit-radius global AdS3, with $R^{(0)}_{\mu\nu}=-2g^{(0)}_{\mu\nu}$, a smooth center, a fixed boundary cylinder, and the standard source-free scalar boundary condition. The field and action conventions are those of [gravitation scalar interaction](gravitation%20scalar%20interaction.md). All derivatives and traces below use the background metric.

**Result.** For $\Delta>1$ and $\Delta\ne(1+\sqrt5)/2$, the construction gives a smooth, log-free de Donder representative on each finite global-time interval, under the differentiable asymptotic expansion and reflecting-wave assumptions specified below. It preserves the Brown–Henneaux boundary conditions and charges.

Here “log-free” permits noninteger powers of $r$. The source response is assumed to have a complete log-free asymptotic power expansion, with differentiated remainder estimates. Smoothness and a leading big-$O$ bound alone are not this assumption. Finite superpositions of standard scalar modes have the required scalar expansion.

## The Gauge Equation

Write $q=g^{(0)\mu\nu}q_{\mu\nu}$ for the trace. Define

$$\begin{align}
C_\nu[q]&=\nabla^{(0)\mu}q_{\mu\nu} -\frac12\nabla^{(0)}_\nu q,\\
Q\xi_\nu&=(\Box_0-2)\xi_\nu.
\end{align}$$

A linear gauge transformation obeys

$$\begin{align}
q'_{\mu\nu}&=q_{\mu\nu} +\nabla^{(0)}_\mu\xi_\nu+\nabla^{(0)}_\nu\xi_\mu,\\
C_\nu[q']&=C_\nu[q]+Q\xi_\nu.
\end{align}$$

Therefore imposing de Donder gauge means solving $Q\xi=-C[q]$. At this perturbative order the leading scalar source is fixed, and the transformation preserves the sourced linear Einstein equation.

We require proper gauge vectors:

$$\begin{align}
\xi^r=O(r^{-1}),\qquad \xi^t,\xi^\varphi=O(r^{-4}),
\end{align}$$

with differentiated falloffs. These transformations leave boundary gravitons and their Brown–Henneaux charges in the physical data.

## Radial Gauge Near the Boundary

Set $f=1+r^2$ and $x=(t,\varphi)$. In a sufficiently large-$r$ collar define

$$\begin{align}
\eta^r(r,x)&=\frac{\sqrt{f(r)}}2 \int_r^\infty ds\,\sqrt{f(s)}\,q_{rr}(s,x),\\
\eta^a(r,x)&=\int_r^\infty ds\,g^{(0)ab}(s) \left[q_{rb}(s,x)+\frac{\partial_b\eta^r(s,x)}{f(s)}\right], \qquad a,b=t,\varphi .
\end{align}$$

The tensor component in the second integral is $q_{rb}$ evaluated at radial coordinate $s$; $s$ is only the integration variable. BH falloffs give $\eta^r=O(r^{-1})$ and $\eta^a=O(r^{-4})$. Direct differentiation gives

$$\begin{align}
(q+\mathcal L_\eta g^{(0)})_{rr} =(q+\mathcal L_\eta g^{(0)})_{ra}=0.
\end{align}$$

Multiply $\eta$ by a smooth cutoff equal to one near infinity and zero near the center. Continue to call the resulting global vector $\eta$, and set $q_{\mathrm c}=q+\mathcal L_\eta g^{(0)}$. It is smooth and on shell everywhere. Radial gauge is required only in the boundary collar.

The difference from the vacuum calculation appears in the expansion:

$$\begin{align}
(q_{\mathrm c})_{ab} &\sim b_{ab}(t,\varphi) +\sum_{n\ge1}r^{-2n}b^{[n]}_{ab}(t,\varphi) +\sum_{n\ge0}r^{2-2\Delta-2n}d^{[n]}_{ab}(t,\varphi).
\end{align}$$

The first two terms are the vacuum powers. The last sum is the scalar-sourced part: $\phi^{(0)}\sim r^{-\Delta}$, so its quadratic source generates the shifted powers $r^{2-2\Delta-2n}$. The coefficients $d^{[n]}_{ab}$ are tensor coefficients, not derivatives. If powers coincide, add their coefficients before solving the recursion.

The source falls off as

$$\begin{align}
T_{(0)rr}=O(r^{-2\Delta-2}),\qquad T_{(0)ra}=O(r^{-2\Delta-1}).
\end{align}$$

For $\Delta>1$, it does not enter the leading radial constraints. Thus the same boundary relations as in the vacuum problem hold:

$$\begin{align}
b_{tt}&=b_{\varphi\varphi},& \partial_t b_{\varphi\varphi}&=\partial_\varphi b_{t\varphi},& \partial_t b_{t\varphi}&=\partial_\varphi b_{tt}.
\end{align}$$

In particular,

$$\begin{align}
[C_t[q_{\mathrm c}]]_{r^{-2}} &=\partial_\varphi b_{t\varphi} -\frac12\partial_t(b_{tt}+b_{\varphi\varphi})=0,\\
[C_\varphi[q_{\mathrm c}]]_{r^{-2}} &=\frac12\partial_\varphi(b_{tt}+b_{\varphi\varphi}) -\partial_t b_{t\varphi}=0,\\
[C_r[q_{\mathrm c}]]_{r^{-3}}&=0.
\end{align}$$

These cancellations remove the leading obstruction to a proper gauge transformation. The remaining gauge source has powers

$$\begin{align}
-C_a[q_{\mathrm c}]&\sim\sum_{s\in\mathcal S}F_{a,s}r^{-s},& -C_r[q_{\mathrm c}]&\sim\sum_{s\in\mathcal S}F_{r,s}r^{-s-1},\\
\mathcal S&=\{4+2n:n\ge0\}\cup\{2\Delta+2n:n\ge0\}.
\end{align}$$

Thus the matter source changes the powers to be solved for, but it does not restore the already excluded $s=2$ term.

## Solve Each Asymptotic Order

For a term $\xi_a=a_{a,s}r^{-s}$, $\xi_r=a_{r,s}r^{-s-1}$, the leading action of the gauge operator is

$$\begin{align}
[Q\xi]_r\big|_{r^{-s-1}} &=(s^2-2s-4)a_{r,s}+\text{known lower-order terms},\\
[Q\xi]_a\big|_{r^{-s}} &=(s^2-4)a_{a,s}+2\partial_a a_{r,s} +\text{known lower-order terms}.
\end{align}$$

Order the exponents in $\mathcal S$ increasingly. At each step, subtract contributions from the coefficients already found; call the remaining source coefficients $\widehat F_{\nu,s}$. Then

$$\begin{align}
a_{r,s}&=\frac{\widehat F_{r,s}}{s^2-2s-4},\\
a_{a,s}&=\frac{\widehat F_{a,s}-2\partial_a a_{r,s}}{s^2-4}.
\end{align}$$

This solves the radial component first, followed by the tangential components. The hats matter: beyond the first order the numerators include the subtraction of earlier terms, not just the original coefficients $F_{\nu,s}$.

The two positive resonant exponents are

$$\begin{align}
s=2,\qquad s=1+\sqrt5.
\end{align}$$

Every exponent in $\mathcal S$ exceeds two. The second resonance can occur only if $2\Delta+2n=1+\sqrt5$. For $\Delta>1$, this requires $n=0$ and

$$\begin{align}
\Delta=\Delta_*=\frac{1+\sqrt5}{2}.
\end{align}$$

Away from this value the recursion determines a log-free formal gauge vector to every order. This is the additional mass restriction absent from the vacuum proof.

## Complete the Solution on the Whole Disk

Realize the formal coefficients by a smooth asymptotic lift $\xi_{\mathrm{as}}$, cut off near the center. An asymptotic Borel construction provides such a lift without assuming convergence of the formal power series. Then

$$\begin{align}
F_\nu=-C_\nu[q_{\mathrm c}]-Q\xi_{\mathrm{as},\nu}
\end{align}$$

is smooth and decays, with its derivatives, faster than any inverse power of $r$. It need not have compact support. We still have to solve the exact global equation $Q\zeta=F$.

Use the same massive vector and scalar reduction as in the vacuum proof:

$$\begin{align}
(\mathcal P v)_\nu &=\nabla^{(0)\mu} (\nabla^{(0)}_\mu v_\nu-\nabla^{(0)}_\nu v_\mu)-4v_\nu,\\
Qv&=\mathcal P v+\nabla^{(0)}(\nabla^{(0)}\cdot v),\\
\nabla^{(0)}\cdot(\mathcal P v)&=-4\nabla^{(0)}\cdot v,\qquad Q\nabla^{(0)}u=\nabla^{(0)}(\Box_0-4)u.
\end{align}$$

Solve

$$\begin{align}
\mathcal P v=F,\qquad (\Box_0-4)u=\nabla^{(0)}\cdot F.
\end{align}$$

Taking the divergence of the first equation gives $\nabla^{(0)}\cdot v=-\frac14\nabla^{(0)}\cdot F$. Consequently,

$$\begin{align}
\boxed{\zeta=v+\frac14\nabla^{(0)}u,\qquad Q\zeta=F.}
\end{align}$$

The analytic input is the smooth finite-time solution of these positive-mass equations on the spatial disk, with regular center and normalizable reflecting boundary conditions. Extend the forcing smoothly to an earlier time, switched off before the initial surface, so zero initial data are compatible there. Only its agreement with $F$ on the time interval of interest is needed.

Use the positive-energy (Friedrichs) reflecting realization. For the massive vector, the source-free energy after eliminating its time component is

$$\begin{align}
H_{\mathcal P} =\frac12\int_\Sigma N\sqrt\gamma \left[e_i e^i+\frac12f_{ij}f^{ij}+4v_i v^i +\frac14(D_i e^i)^2\right], \qquad f_{ij}=D_i v_j-D_j v_i.
\end{align}$$

Here $N=\sqrt{1+r^2}$, $\gamma$ is the spatial metric, and $e^i$ is the electric momentum per unit spatial volume. The associated positive spatial operator and Duhamel evolution provide the finite-time energy solution; smooth compatible data are taken in the smooth reflecting domain. The scalar uses the analogous mass-squared-four realization. This is the analytic boundary problem underlying the construction, in the [Ishibashi–Wald framework](https://arxiv.org/abs/gr-qc/0305012).

The rapidly decaying forcing leaves the normalizable homogeneous branches at the boundary: the vector tangential covector components begin at $r^{-2}$, and the scalar fast exponent is $1+\sqrt5$. Their fast-branch recursions have no further indicial resonance. In this smooth asymptotic domain, they give log-free fields and the required proper gauge falloffs. Spatial compact support of the evolved fields is not needed.

Combining all three transformations,

$$\begin{align}
\boxed{ q^{\mathrm{dD}} =q+\mathcal L_{\eta+\xi_{\mathrm{as}}+\zeta}g^{(0)}.
}
\end{align}$$

Indeed,

$$\begin{align}
C[q^{\mathrm{dD}}] =C[q_{\mathrm c}]+Q\xi_{\mathrm{as}}+F=0
\end{align}$$

everywhere. The result is global in space on the chosen finite time interval. Two such choices differ by a proper residual transformation satisfying $Q\xi_{\mathrm{res}}=0$. Neither a uniform infinite-time bound nor preservation of a monochromatic ansatz is asserted.

## The Exceptional Mass and the Sourced Trace

At $\Delta_*$, a zero denominator signals a compatibility question. The trace equation shows that a generic nonzero scalar source really does obstruct a log-free representative.

In de Donder gauge the sourced Einstein equation is

$$\begin{align}
-\frac12(\Box_0+2)q^{\mathrm{dD}}_{\mu\nu} +\frac14g^{(0)}_{\mu\nu}\Box_0q^{\mathrm{dD}} &=\frac12T_{(0)\mu\nu},\\
(\Box_0-4)q^{\mathrm{dD}}&=2T_{(0)}.
\end{align}$$

Here $T_{(0)}=g^{(0)\mu\nu}T_{(0)\mu\nu}$. For $\phi^{(0)}=r^{-\Delta}\beta(t,\varphi)+\cdots$,

$$\begin{align}
T_{(0)} &=-\frac12(\nabla^{(0)}\phi^{(0)})^2 -\frac32m^2(\phi^{(0)})^2\\
&=-\Delta(2\Delta-3)\beta^2r^{-2\Delta}+\cdots.
\end{align}$$

The leading action of $\Box_0-4$ on $r^{-s}$ is $[s(s-2)-4]r^{-s}$. At $\Delta_*$,

$$\begin{align}
2\Delta_*&=1+\sqrt5,\qquad (2\Delta_*)(2\Delta_*-2)-4=0,\\
-\Delta_*(2\Delta_*-3)&=\frac{\sqrt5-3}{2}\ne0.
\end{align}$$

Thus a nonzero $\beta$ produces a source at the resonant power. A pure-power trace cannot match it. Slower allowed powers cannot compensate: their nonzero leading coefficients in the homogeneous equation force them to vanish before this order. A logarithmic term is required.

The lowest-mode polar-areal response in the interaction note remains smooth and log-free at this mass. The obstruction concerns its de Donder representative, not the existence of the original response. A source with vanishing resonant coefficient must be checked separately; this calculation does not rule out every special source at $\Delta_*$. Finite spectral coefficients alone do not establish a log-free gauge limit.

## Local Accessibility and the Off-Shell Boundary Obstruction

Locally, without imposing the AdS boundary conditions, $Q$ is normally hyperbolic. Solve $Q\xi=-C[q]$ with zero Cauchy data in a globally hyperbolic neighborhood. The usual Cauchy theorem gives local accessibility for arbitrary smooth off-shell fields; see [Bär–Ginoux–Pfäffle, Theorem 3.2.11](https://arxiv.org/pdf/0806.1036#page=91). This local statement does not solve the AdS boundary problem.

For an explicit smooth, log-free off-shell BH field, take

$$\begin{align}
q_{t\varphi}=q_{\varphi t} =A(t)\frac{r^4}{(1+r^2)^2},\qquad A'\not\equiv0,
\end{align}$$

with all other components zero. It is already in radial gauge. Its only nonzero de Donder component is

$$\begin{align}
C_\varphi[q]=-\frac{A'(t)r^4}{(1+r^2)^3}.
\end{align}$$

Average a proposed gauge vector over $\varphi$, and write $a(t,r)=\langle\xi_\varphi\rangle$. Its equation is

$$\begin{align}
(1+r^2)a_{rr}+\left(r-\frac1r\right)a_r -\frac{a_{tt}}{1+r^2}-4a =\frac{A'(t)r^4}{(1+r^2)^3}.
\end{align}$$

The proper leading term $a_2(t)r^{-2}$ cannot generate the required $A'(t)r^{-2}$ source. Matching it forces $a=-\frac14A'(t)r^{-2}\log r+\cdots$, which in turn gives

$$\begin{align}
(\mathcal L_\xi g^{(0)})_{r\varphi} =a_r-\frac{2a}{r} =A'(t)r^{-3}\log r-\frac14A'(t)r^{-3}+\cdots.
\end{align}$$

This violates the BH $O(r^{-3})$ bound. The on-shell boundary constraints in the main proof exclude exactly this kind of leading source. A residual gauge transformation cannot bypass the obstruction: adding a solution of $Q\xi_{\mathrm{res}}=0$ leaves the same inhomogeneous equation for the total gauge vector.

## Verification and Use

**Verified:** the gauge identity, leading radial constraints, indicial recursion, Proca reduction, axial obstruction, and exceptional trace coefficients were checked with xAct/xTras and component calculations. The underlying checks are in [the accessibility script](scripts/de_donder_accessibility_checks.wl) and [the on-shell response script](scripts/de_donder_onshell_response_checks.wl). The explicit radial profile in the off-shell example was also checked directly.

**Assumptions:** the stated sourced linear equation, standard scalar quantization with $\Delta>1$, a smooth center, fixed boundary clock, differentiated BH falloffs, the displayed log-free asymptotic expansion, and the smooth normalizable reflecting domain for the auxiliary wave equations.

**Not verified by the symbolic checks:** the analytic global wave existence and asymptotic regularity input. Those enter through the stated reflecting realization. General asymptotic classes, infinite-time bounds, and a generic log-free limit at $\Delta_*$ are not claimed.

The finite scalar-source response and its homogeneous-data prescription are described in [Einstein scalar response prescription](Einstein%20scalar%20response%20prescription.md); the bilinear response setup is in [Einstein response in de Donder gauge](Einstein%20response%20in%20de%20Donder%20gauge.md).
