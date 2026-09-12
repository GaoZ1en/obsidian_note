# de Donder Gauge Accessibility

## Scope of the On-Shell Claim

For the gravity–scalar calculation, the required statement is accessibility **on the perturbative solution space**, rather than on every off-shell metric perturbation. The relevant on-shell conditions are

$$\begin{align}
(\Box_0-m^2)\phi^{(0)}&=0,&
\mathcal E^{(1)}[q]&=\frac12T_{(0)}[\phi^{(0)}],&
q_{\mu\nu}&=(k_\phi)_{\mu\nu}.
\end{align}$$

Here the AdS radius is one, $R^{(0)}_{\mu\nu}=-2g^{(0)}_{\mu\nu}$, and the center is smooth. Keep the fixed boundary cylinder, standard source-free scalar condition, and Brown–Henneaux falloffs of [gravitation scalar interaction](gravitation%20scalar%20interaction.md). All allowed metric representatives and proper gauge transformations must have asymptotic expansions without logarithmic terms; noninteger powers are allowed.

**Current working regime:** first treat generic, nonresonant $\Delta>1$, keeping both the metric and allowed proper gauge transformations free of logarithmic terms. Construct the generic sourced response and establish on-shell gauge accessibility in that regime. Only after obtaining the generic solution should one examine the limit toward exceptional parameter values, including $\Delta_*=(1+\sqrt5)/2$.

**Result:** on-shell accessibility is established below on finite global-time intervals for the specified differentiable asymptotic expansion class, at $\Delta>1$ with $\Delta\ne(1+\sqrt5)/2$, using the normalizable reflecting realization of the auxiliary gauge equations. This is a linear, global-in-space statement. It does not assert bounded or monochromatic gauge representatives for arbitrarily long times.

Proper gauge vectors obey $\xi^r=O(r^{-1})$ and $\xi^t,\xi^\varphi=O(r^{-4})$, with the corresponding differentiated falloffs. Boundary gravitons carrying Brown–Henneaux charges remain physical data.

## Local Accessibility for Arbitrary Smooth Configurations

Define the linear gauge functional and gauge transformation by

$$\begin{align}
C_\nu[q]&=\nabla^\mu q_{\mu\nu}-\frac12\nabla_\nu q,&
q&=g^{\mu\nu}q_{\mu\nu},\\
q'_{\mu\nu}&=q_{\mu\nu}+2\nabla_{(\mu}\xi_{\nu)},&
C_\nu[q']&=C_\nu[q]+\Box\xi_\nu+R_\nu{}^\rho\xi_\rho.
\end{align}$$

This identity holds on a general smooth background and does not use a field equation for $q$. The operator $Q_\nu{}^\rho=\Box\delta_\nu{}^\rho+R_\nu{}^\rho$ is normally hyperbolic. On a globally hyperbolic region without a timelike boundary, solve

$$\begin{align}
Q\xi&=-C[q],&
\xi|_{\Sigma}&=0,&
\nabla_n\xi|_{\Sigma}&=0.
\end{align}$$

The Cauchy theorem gives a unique smooth solution and hence $C[q']=0$. For compactly supported source and initial data this follows from [Bär–Ginoux–Pfäffle, Theorem 3.2.11, printed p. 85](https://arxiv.org/pdf/0806.1036#page=91). Arbitrary smooth data are handled locally by cutoffs on compact causal domains; uniqueness makes the local solutions agree on overlaps. In particular every smooth $q$ is locally accessible.

This proof does not impose a final-time condition on $\xi$, and it does not establish accessibility while preserving an AdS asymptotic class. Global AdS has a timelike conformal boundary, so that boundary problem requires a separate argument.

## Why the Off-Shell Boundary Claim Is False Without Logarithms

Let $F(t)$ be a smooth function with $F'\not\equiv0$, and let $\chi(r)$ vanish near the center and equal one for sufficiently large $r$. Set

$$\begin{align}
q_{t\varphi}&=F(t)\chi(r),&
q_{\mu\nu}&=0\quad\text{for the other independent components}.
\end{align}$$

This configuration is smooth, has no logarithmic terms, and satisfies Brown–Henneaux falloffs. Its only nonzero gauge functional is

$$\begin{align}
C_\varphi[q]&=-\frac{F'(t)\chi(r)}{1+r^2}.
\end{align}$$

Average any proposed gauge vector over $\varphi$. Its axial covector component $a(t,r)=\langle\xi_\varphi\rangle$ must satisfy, for large $r$,

$$\begin{align}
(1+r^2)\partial_r^2a+
\left(r-\frac1r\right)\partial_ra
-\frac{\partial_t^2a}{1+r^2}-4a
&=\frac{F'(t)}{1+r^2}.
\end{align}$$

For an allowed proper vector, $a=O(r^{-2})$. In a logarithm-free asymptotic expansion its possible leading term $a_2(t)r^{-2}$ has zero $r^{-2}$ coefficient under the operator on the left: the radial indicial coefficient is $s^2-4$ on $r^{-s}$. All faster powers contribute at faster orders, and the time derivative is suppressed by two radial powers. The right side has nonzero coefficient $F'(t)$ at $r^{-2}$. This contradiction proves failure within the stated asymptotic class. No logarithmic gauge transformation is admitted or used as a solution.

This example is off shell. The next argument shows how the on-shell radial constraints remove precisely its leading obstruction.

## On-Shell Accessibility for Generic Scalar Mass

**Proposition (global in space, on a finite global-time interval).** Let $\phi^{(0)}$ be a smooth free scalar in standard quantization with $\Delta>1$, and let $q$ be a smooth solution of $\mathcal E^{(1)}[q]=T_{(0)}/2$ with the stated center and boundary conditions. Assume complete differentiable asymptotic power expansions, with remainders controlled after any finite number of derivatives. For

$$\begin{align}
\Delta&\ne\frac{1+\sqrt5}{2},
\end{align}$$

there is a smooth, logarithm-free proper gauge vector $\xi$ such that $C[q+\mathcal L_\xi g^{(0)}]=0$. The auxiliary wave equations use the reflecting finite-energy realization described below. The construction need not preserve a monochromatic time dependence, and does not assert a bound uniform in infinite global time.

Finite superpositions of the free scalar modes have the required scalar expansion. The proposition concerns on-shell metrics with the stated full expansion, not every smooth tensor satisfying only a leading big-$O$ estimate.

### 1. Put Only the Boundary Collar in Radial Gauge

Write $f=1+r^2$. In a sufficiently large-$r$ collar define a contravariant vector $\eta$ by

$$\begin{align}
\eta^r(r,x)&=\frac{\sqrt{f(r)}}2
\int_r^\infty ds\,\sqrt{f(s)}\,q_{rr}(s,x),\\
\eta^a(r,x)&=\int_r^\infty ds\,g^{(0)ab}(s)
\left[q_{sb}(s,x)+\frac1{f(s)}\partial_b\eta^r(s,x)\right],
\qquad a,b=t,\varphi .
\end{align}$$

Then $(q+\mathcal L_\eta g^{(0)})_{rr}=(q+\mathcal L_\eta g^{(0)})_{ra}=0$ in the collar. The integrals give $\eta^r=O(r^{-1})$, $\eta^a=O(r^{-4})$ without logarithms. Extend $\eta$ smoothly with a cutoff that vanishes near the center. This does not require a radial coordinate gauge covering the center.

Call the resulting tensor $q_{\mathrm c}$. Gauge invariance of the linear Einstein operator preserves its sourced equation.

### 2. The On-Shell Constraints Remove the Leading Obstruction

In this collar,

$$\begin{align}
(q_{\mathrm c})_{ab}&=b_{ab}(t,\varphi)
+\sum_{n\ge1}r^{-2n}b^{[n]}_{ab}
+\sum_{n\ge0}r^{2-2\Delta-2n}d^{[n]}_{ab}.
\end{align}$$

Coincident powers are combined. This is the radial Einstein expansion for a standard scalar source: its vacuum powers are even, and the matter powers are shifted by $2\Delta-2$. Its radial recursion has no matter resonance at the vacuum leading powers for $\Delta>1$.

The source has $T_{rr}=O(r^{-2\Delta-2})$ and $T_{ra}=O(r^{-2\Delta-1})$. The leading radial Einstein equations therefore imply

$$\begin{align}
b_{tt}&=b_{\varphi\varphi},&
\partial_t b_{\varphi\varphi}&=\partial_\varphi b_{t\varphi},&
\partial_t b_{t\varphi}&=\partial_\varphi b_{tt}.
\end{align}$$

Thus the boundary tensor is traceless and conserved on the fixed flat cylinder. Explicitly, the coefficients of $r^{-2}$ in $C_t,C_\varphi$ are

$$\begin{align}
[C_t]_{r^{-2}}&=\partial_\varphi b_{t\varphi}
-\frac12\partial_t(b_{tt}+b_{\varphi\varphi}),\\
[C_\varphi]_{r^{-2}}&=\frac12\partial_\varphi(b_{tt}+b_{\varphi\varphi})
-\partial_t b_{t\varphi},
\end{align}$$

and both vanish. Also $[C_r]_{r^{-3}}=0$ in this radial collar. Consequently the remaining source for the gauge equation has exponents

$$\begin{align}
-C_a[q_{\mathrm c}]&\sim\sum_{s\in\mathcal S}F_{a,s}r^{-s},&
-C_r[q_{\mathrm c}]&\sim\sum_{s\in\mathcal S}F_{r,s}r^{-s-1},\\
\mathcal S&=\{4+2n:n\ge0\}\cup\{2\Delta+2n:n\ge0\}.
\end{align}$$

This is precisely where on-shellness is needed.

### 3. Solve the Asymptotic Gauge Equation Without Logarithms

For a covector coefficient $\xi_a=a_a r^{-s}$, $\xi_r=a_r r^{-s-1}$, the indicial action of $Q=\Box_0-2$ is

$$\begin{align}
[Q\xi]_a&=r^{-s}\left[(s^2-4)a_a+2\partial_a a_r\right]+\cdots,\\
[Q\xi]_r&=r^{-s-1}(s^2-2s-4)a_r+\cdots .
\end{align}$$

At each order, lower-order coefficients contribute known terms to the right side. First solve for $a_r$, then for $a_t,a_\varphi$. The positive indicial roots are $s=2$ and $s=1+\sqrt5$. The first is absent from $\mathcal S$. The second belongs to $\mathcal S$ only when $\Delta=(1+\sqrt5)/2$. Thus every particular coefficient is determined without a logarithmic term in the stated generic regime.

Realize this formal expansion by a smooth asymptotic lift $\xi_{\mathrm{as}}$, extended away from the boundary by a cutoff. The asymptotic Borel construction permits the remainder

$$\begin{align}
F&=-C[q_{\mathrm c}]-Q\xi_{\mathrm{as}}
\end{align}$$

to vanish faster than every power of $r^{-1}$, including differentiated remainders. The formal series is not assumed to converge. The lift is proper, since every forced exponent has $s>2$.

### 4. Correct the Remainder by a Reflecting Wave Problem

For a one-form $A$, let

$$\begin{align}
(\mathcal P A)_\nu
&=\nabla^\mu(\nabla_\mu A_\nu-\nabla_\nu A_\mu)-4A_\nu .
\end{align}$$

This is the Proca operator with positive squared mass $4$. The exact identities

$$\begin{align}
QA&=\mathcal P A+\nabla(\nabla\cdot A),\\
\nabla\cdot(\mathcal P A)&=-4\nabla\cdot A,\\
Q\nabla u&=\nabla(\Box_0-4)u
\end{align}$$

give the following right inverse on smooth rapidly decaying forcing:

$$\begin{align}
G_QF&=G_{\mathcal P}F+\frac14\nabla G_4(\nabla\cdot F),&
QG_QF&=F.
\end{align}$$

Here $G_4$ and $G_{\mathcal P}$ use the same causal initial prescription and the normalizable reflecting boundary realization. A smooth extension of $F$ to an earlier time, vanishing before that time, supplies compatible initial data. Only its agreement with $F$ on the interval of interest is required.

For completeness, this realization is fixed by the positive energy form. On the spatial hyperbolic disk, with lapse $N=\sqrt f$, spatial metric $\gamma$, and electric momentum $e^i$, the source-free Proca energy after eliminating $A_t$ is

$$\begin{align}
H_{\mathcal P}
=\frac12\int_\Sigma N\sqrt\gamma\,
\left[e_i e^i+\frac12F_{ij}F^{ij}
+4A_iA^i+\frac14(D_i e^i)^2\right].
\end{align}$$

Start from smooth compactly supported spatial data and take the positive Friedrichs realization. In canonical variables its quadratic form has positive kinetic and potential operators $B,C$; the transformation $a=B^{-1/2}A$ puts the evolution in the form $\ddot a+\mathsf A a=\text{source}$, with $\mathsf A$ the positive realization of $B^{1/2}CB^{1/2}$. Spectral calculus and Duhamel's formula give finite-time energy solutions. Smooth compatible data give smooth solutions; the center condition is imposed in regular Cartesian coordinates. The scalar operator with squared mass $4$ is treated in the same way. This uses the positive-extension construction for static backgrounds, rather than treating AdS as globally hyperbolic without a boundary; see [Ishibashi–Wald's framework](https://arxiv.org/abs/gr-qc/0305012).

For rapidly decaying forcing the admitted homogeneous boundary branches are the fast Proca branch and the fast scalar branch. The Proca tangential covector components begin at $r^{-2}$; the scalar has exponent $1+\sqrt5$. Their fast-branch recursions have no further indicial resonance, so these solutions have no logarithmic terms. Their covariant gradients and metric Lie derivatives have the required proper-gauge falloffs.

Finally set

$$\begin{align}
\xi&=\eta+\xi_{\mathrm{as}}+G_QF,&
q_{\mathrm{dD}}&=q+\mathcal L_\xi g^{(0)}.
\end{align}$$

Linearity and the defining equations give $C[q_{\mathrm{dD}}]=0$ exactly. Each vector is smooth at the center and proper at infinity, so the construction preserves the boundary charges. Different choices of lift or initial data differ by a proper residual solution $Q\xi_{\mathrm{res}}=0$. This proves the proposition within the stated expansion and reflecting-domain assumptions.

For a general conserved source, the same argument applies when its collar expansion induces an exponent set $\mathcal S\subset(2,\infty)$, closed under adding $2$, that avoids $1+\sqrt5$. Conservation alone is not a replacement for these boundary hypotheses.


## Deferred Check of the Resonant Limit

This section records a limit to check after the generic-$\Delta$ construction. It does not replace that construction with a study of the exceptional point.

For a sourced solution in de Donder gauge, the equations and their trace are

$$\begin{align}
-\frac12(\Box_0+2)q_{\mu\nu}
+\frac14g^{(0)}_{\mu\nu}\Box_0q&=\frac12T_{(0)\mu\nu},\\
(\Box_0-4)q&=2T_{(0)}.
\end{align}$$

If $\phi^{(0)}=r^{-\Delta}\beta(t,\varphi)+\cdots$ is a real free scalar with $m^2=\Delta(\Delta-2)$, its stress trace has leading coefficient

$$\begin{align}
T_{(0)}
&=-\frac12(\nabla\phi^{(0)})^2-\frac32m^2(\phi^{(0)})^2\\
&=-\Delta(2\Delta-3)\beta^2r^{-2\Delta}+\cdots.
\end{align}$$

The trace operator has radial indicial coefficient $s(s-2)-4$ on $r^{-s}$. At

$$\begin{align}
\Delta_*&=\frac{1+\sqrt5}{2},&
m_*^2&=\frac{1-\sqrt5}{2},&
2\Delta_*&=1+\sqrt5,
\end{align}$$

the source exponent is a root, while its coefficient $-\Delta_*(2\Delta_*-3)=(\sqrt5-3)/2$ is nonzero. A logarithm-free trace cannot match this source when $\beta\not\equiv0$. Slower terms allowed by Brown–Henneaux cannot repair the mismatch: their nonzero indicial coefficients force their coefficients to vanish before the source order is reached.

The explicit lowest-mode polar-areal response in the interaction note is smooth, on shell at the retained order, and has no logarithms also at $\Delta_*$. It therefore supplies an on-shell configuration without a logarithm-free de Donder representative. This is an obstruction to that gauge representative, not an inconsistency of the original Einstein–scalar solution.

Consequently, the generic on-shell accessibility result does not automatically extend to this mass/source case. Examine the generic response and allowed homogeneous additions before taking $\Delta\to\Delta_*$. A finite logarithm-free limit is not assumed.

## Status and Next Proof Obligation

- **Proved in the stated domain:** local accessibility for arbitrary smooth configurations; on-shell accessibility on finite global-time intervals for the stated differentiable expansion class and generic scalar mass, with the specified reflecting auxiliary wave realization; the off-shell boundary counterexample and the displayed resonant trace obstruction.
- **Verified:** the gauge identity, AdS Einstein operator and trace/divergence identities, the axial counterexample, and the resonance coefficients have been checked with xAct/xTras, xCoba, and Mathematica. See [the checks](scripts/de_donder_accessibility_checks.wl). The Cauchy theorem was checked in the rendered source; it is an analytic input, not a symbolic-computation result.
- **Assumptions:** linear gauge transformations at the retained perturbative order; smooth center; the stated Brown–Henneaux and differentiated falloffs; logarithm-free asymptotic power expansions.
- **Verified:** the new radial-constraint, vector-indicial, and Proca-reduction checks are in [the on-shell response script](scripts/de_donder_onshell_response_checks.wl).
- **Not proved:** accessibility for arbitrary asymptotic classes beyond the stated one, boundedness uniform in infinite time, or a logarithm-free limit at the excluded scalar mass. The auxiliary energy-domain and asymptotic arguments are analytic parts of the proof, not consequences of finite symbolic checks.

The generic-$\Delta$ construction is now given above; the exceptional-parameter limit remains deferred. The bilinear response kernel, homogeneous-data convention, and proposed free-energy cutoff are described in [Einstein response in de Donder gauge](Einstein%20response%20in%20de%20Donder%20gauge.md).
