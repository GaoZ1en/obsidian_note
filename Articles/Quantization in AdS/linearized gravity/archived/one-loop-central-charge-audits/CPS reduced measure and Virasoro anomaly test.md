# CPS reduced measure and Virasoro anomaly test

> [!archive]
> Detailed reduced-measure/Fujikawa stress test. The zero reference cocycle is conditional on the displayed reduced construction and is not a unique scheme-independent physical theorem.

## 1. Binary verdict

**Criterion B.** On the selected smooth global-AdS$_3$ Brown--Henneaux vacuum orbit, the measure calculation available from the present metric CPS project is either exactly trivial or not defined uniquely enough to fix the remaining one-loop quantum-moment-map parameter:

$$
\boxed{
\Delta c_{\mathrm{CPS\ Liouville/Fujikawa}}=0
}
$$

for the reference reduced Liouville measure, with the statement understood as a result for the central two-cocycle rather than for every regulated divergence one-cochain. More precisely:

1. at every finite mode cutoff, the actual project Darboux map gives

   $$
   \operatorname{Pf}\Omega_N(a(b))\det\frac{\partial a}{\partial b}
   =\operatorname{Pf}\Omega_{0,N}+O(\kappa^3)
   $$

   by direct exact algebra through the available $\Omega_2,Y_2$ order;
2. a common energy damping does not leave a regulator-independent finite remainder in this identity;
3. the existing classical proper-gauge quotient does not specify the metric field-space measure, gauge-fixing operator, ghost boundary conditions, or boundary-condition Jacobian needed to define a nontrivial $J_{\rm red}$;
4. the energy-regulated divergence of the derived Virasoro vector fields has only cutoff-edge one-cochain terms in Darboux variables, while its Wess--Zumino two-cocycle vanishes exactly for $(2,-2)$, $(3,-3)$, $(2,-3)$, and the tested high-mode relation.

Therefore the reduced CPS Liouville/Fujikawa route does **not** fix the remaining finite parameter. The precise missing input is a metric-derived quantum reduction measure: a choice of metric field-space density together with a boundary-compatible FP/BV gauge fixing, proper-ghost and Brown--Henneaux boundary conditions, regulator, and finite boundary-current/Ward normalization. The present calculation neither derives nor excludes a nonzero coefficient from that additional structure.

## 2. Conventions and prior results taken as input

The calculation preserves the conventions of `higher perturbations of linearized gravity modes.md`, `CPS one-loop central charge from next-order perturbation.md`, `CPS canonical quantum perturbation test of Brown-Henneaux one-loop central charge.md`, and `internal CPS one-loop central-charge audit.md`:

$$
\ell_{\rm AdS}=1,
\qquad
\kappa^2=16\pi G,
\qquad
D_n=2\pi n(n^2-1).
$$

The action, symplectic potential, and charge use the full renormalized bulk plus Gibbons--Hawking plus AdS counterterm plus Harlow--Wu corner data, with the same global-AdS vacuum subtraction. One chirality is written explicitly; the barred chirality is an identical commuting copy. Signed coordinates are

$$
\zeta=\sum_{|n|\geq2}z_n\xi_n,
\qquad
z_{-N}=q_Na_N,
\qquad
z_N=q_N^*a_N^\dagger,
$$

with physical $N\geq2$. The $-1,0,1$ directions are the $PSL(2,\mathbb R)$ vacuum stabilizer and are not included as oscillators. Proper gauge has already been quotiented in the reduced phase space.

The full pulled-back CPS form is

$$
\Omega_\zeta(u,v)
=B\!\left(P_>\Theta(u),P_>\Theta(v)\right),
\qquad
\Theta=\frac{1-e^{-\kappa\operatorname{ad}_\zeta}}
{\kappa\operatorname{ad}_\zeta}\,\delta\zeta,
$$

$$
B(\xi_m,\xi_n)=iD_m\delta_{m+n,0},
\qquad
\Omega=\Omega_0+\kappa\Omega_1+\kappa^2\Omega_2+O(\kappa^3).
$$

The direct radial-homotopy Darboux map is

$$
a=b+\kappa Y_1(b)+\kappa^2Y_2(b)+O(\kappa^3),
\qquad
\Phi_\kappa^*\Omega=\Omega_0+O(\kappa^3),
$$

where

$$
\Omega_0=i\sum_{N\geq2}\delta b_N^\dagger\wedge\delta b_N.
$$

The prior reduced-Hamiltonian kill test is taken as established:

$$
H_0^D=\sum_{N\geq2}N b_N^\dagger b_N,
\qquad
H_{0,1}^D=H_{0,2}^D=0.
$$

Thus no $S_3/S_4$ reduced interaction loops are reconsidered here. The reference free-vacuum Wick prescription gives a bare zero, but permits

$$
C_p^{\rm ren}=:C_p^{(3)}:+r_p^{\rm ren}\beta_p,
\qquad
r_p^{\rm fin}=\frac{\Delta c}{48\pi}\sqrt{D_p},
$$

with one real $\Delta c$ not fixed by the reduced oscillator algebra.

## 3. Why the remaining problem is a measure/quantum-moment-map problem

The five logically distinct objects are:

1. finite-dimensional Liouville invariance under $a\mapsto b$;
2. a possible infinite-dimensional regularization anomaly of that coordinate map;
3. a Jacobian from reducing metric histories by proper diffeomorphisms, Brown--Henneaux boundary conditions, and the vacuum stabilizer;
4. a possible regulated divergence anomaly of the Virasoro action on the reduced measure;
5. finite renormalization of the composite quantum moment map.

The first and fourth can be tested from the existing reduced formulas. The third cannot be reconstructed from a symplectic form on the already reduced solution space: a symplectic form fixes the Liouville density on a finite-dimensional reduced phase space but does not fix a measure on the unreduced metric histories or the Jacobian transverse to gauge or boundary constraints. The fifth remains unless the third or fourth produces a nontrivial, regulator-independent Ward cohomology class.

## 4. Phase I: finite-$N$ and regulated Pfaffian times Darboux-Jacobian test

### 4.1 Finite-mode definition

For

$$
\mathcal I_N=\{-N,\ldots,-2,2,\ldots,N\},
$$

treat $z_k$ and $z_{-k}$ as independent complexified coordinates during the determinant calculation and impose $z_k^*=z_{-k}$ afterward. The reduced finite-mode measure is

$$
\mathrm d\mu_N(a)=\operatorname{Pf}\Omega_N(a)\prod_{k\in\mathcal I_N}\mathrm dz_k.
$$

Let

$$
J=\frac{\partial a}{\partial b}
=\mathbf1+\kappa J_1+\kappa^2J_2+O(\kappa^3),
\qquad
J_j=\partial Y_j.
$$

After substituting $a(b)$,

$$
\Omega(a(b))
=\Omega_0+\kappa\widetilde\Omega_1
+\kappa^2\widetilde\Omega_2+O(\kappa^3),
$$

where

$$
\widetilde\Omega_1=\Omega_1,
\qquad
\widetilde\Omega_2=\Omega_2+(Y_1\cdot\partial)\Omega_1.
$$

The actual project formulas obeyed, entry by entry,

$$
\widetilde\Omega_1+J_1^T\Omega_0+\Omega_0J_1=0,
$$

and

$$
\widetilde\Omega_2+J_1^T\Omega_1+\Omega_1J_1
+J_1^T\Omega_0J_1+J_2^T\Omega_0+\Omega_0J_2=0.
$$

This checks the actual $\Omega_1,\Omega_2,Y_1,Y_2$ rather than only citing finite-dimensional symplectic geometry.

### 4.2 Direct measure coefficients

Put

$$
P_1=\Omega_0^{-1}\widetilde\Omega_1,
\qquad
P_2=\Omega_0^{-1}\widetilde\Omega_2.
$$

Using $\log\operatorname{Pf}\Omega=\frac12\operatorname{Tr}\log\Omega$, the first two coefficients of the logarithm of the complete measure factor are

$$
L_1=\frac12\operatorname{Tr}P_1+\operatorname{Tr}J_1,
$$

$$
L_2=\frac12\operatorname{Tr}\!\left(P_2-\frac12P_1^2\right)
+\operatorname{Tr}\!\left(J_2-\frac12J_1^2\right).
$$

Exact symbolic evaluation at $N=4,5,6,7,8,9,10$ gives

$$
\boxed{L_1=0,\qquad L_2=0.}
$$

Consequently

$$
\boxed{
\operatorname{Pf}\Omega_N(a(b))\det J
=\operatorname{Pf}\Omega_{0,N}+O(\kappa^3).
}
$$

This is the first order at which a one-loop finite local remainder could have arisen from the available nonlinear measure data, and none occurs.

### 4.3 Smooth energy regulator

Let

$$
q=e^{-\epsilon},
\qquad
R_\epsilon\,\partial_{z_k}=q^{|k|}\partial_{z_k},
\qquad
\operatorname{Tr}_\epsilon M
=\sum_{k\in\mathcal I_N}q^{|k|}M_{kk}.
$$

Both signed directions are included with the same weight; this preserves the real structure and Hermiticity. A coherent finite-$N$ regularization of the full identity

$$
J^T\Omega(a(b))J=\Omega_0+O(\kappa^3)
$$

leaves the Pfaffian-Jacobian cancellation exact before the limit. If instead $R_\epsilon$ is inserted separately into the two logarithmic traces, the first coefficient still vanishes, but a field-dependent second coefficient can occur. For example,

$$
L_{2,\epsilon}^{N=4}
=-\frac{3}{20}q^2(q^2-1)z_2z_{-2}.
$$

For every tested finite $N$, the exact expression contains an overall $(q-1)$ and therefore

$$
\lim_{\epsilon\to0^+}L_{2,\epsilon}^{N}=0.
$$

The split-trace expression is not a coordinate-covariant determinant: moving the same spectral operator through the field-dependent Jacobian changes it because the regulated trace is not cyclic. Taking $N\to\infty$ before $\epsilon\to0$ can consequently produce a nonuniform, prescription-dependent local functional. Since the project supplies no rule selecting this split determinant over the regulated determinant of the complete pulled-back form, such a term is a finite measure-scheme ambiguity, not an internally determined anomaly.

The Phase-I verdict is therefore

$$
\boxed{
\text{naive CPS Liouville measure does not generate the central shift.}
}
$$

## 5. Phase II: reduction Jacobian analysis

### 5.1 What the reduction would have to mean

Let $\mathcal C_{\rm BH}$ denote metric histories satisfying the renormalized Brown--Henneaux variational problem and let $\mathcal G_{\rm proper}$ denote diffeomorphisms with vanishing asymptotic charge. Locally on the global-AdS vacuum orbit, the desired reduction would have the schematic form

$$
\frac{Dg\big|_{\mathcal C_{\rm BH}}}
{\operatorname{Vol}(\mathcal G_{\rm proper})\operatorname{Vol}(PSL(2,\mathbb R))}
\longrightarrow
J_{\rm red}[b]\,\mathrm d\mu_{\rm Liouville}[b].
$$

Here $J_{\rm red}$ could contain four conceptually different factors:

$$
J_{\rm red}
=J_{\rm FP/BV}\,J_{\rm BH}\,J_{\rm slice}\,J_{PSL}^{-1}.
$$

$J_{\rm FP/BV}$ is a graded determinant for proper-gauge directions; $J_{\rm BH}$ is the Jacobian associated with imposing the boundary conditions on metric histories; $J_{\rm slice}$ is the Jacobian from the chosen metric coordinates to the orbit slice; and $J_{PSL}$ is the stabilizer orbit volume after its three zero modes are removed.

### 5.2 What the existing construction fixes

The project fixes:

- the nonlinear slice $g[a]=e^{\kappa\mathcal L_{\zeta[a]}}g^{(0)}$ on the selected orbit;
- which variations are proper gauge;
- the reduced symplectic form after quotienting its gauge degeneracies;
- the removal of the $-1,0,1$ stabilizer modes;
- the physical Hamiltonian spectrum $N\geq2$.

It does **not** fix:

- a density $Dg$ on the space of metric histories;
- a gauge condition $\chi[g]=0$ and hence the operator $\delta\chi[g^\eta]/\delta\eta$;
- proper-ghost boundary conditions compatible with Brown--Henneaux falloffs and the boundary/corner variational problem;
- the BV odd symplectic density or quantum master operator;
- a normalization of the $PSL(2,\mathbb R)$ Haar volume;
- a determinant prescription tying bulk, ghost, boundary, counterterm, and corner sectors together.

The classical statement that a proper-gauge perturbation can be set to zero identifies the quotient but does not compute its quantum Jacobian. Similarly, deleting $-1,0,1$ from the oscillator list implements the stabilizer quotient on the reduced tangent space but does not derive a metric path-integral determinant. With a fixed local Haar normalization the finite-dimensional stabilizer factor is only a constant and cannot by itself generate a mode-dependent Virasoro cocycle.

### 5.3 Precise obstruction

A direct $J_{\rm red}$ calculation becomes impossible exactly when one asks for the derivative of the gauge-fixing map along a proper metric diffeomorphism:

$$
\mathcal M_{\rm FP}[g]
=\left.\frac{\delta\chi[g^{\eta}]}{\delta\eta}\right|_{\eta=0}.
$$

Neither $\chi$, the metric density, nor the domain and boundary conditions of $\mathcal M_{\rm FP}$ are defined in the present reduced notes. Inserting a textbook bulk de Donder determinant would add data not implied by the project and would omit the boundary/corner compatibility that is central to the chosen CPS prescription.

No candidate finite term is therefore derived in Phase II. In particular, no determinant normalization or subtraction is chosen by matching any external central charge.

## 6. Phase III: Fujikawa-style Virasoro divergence and cocycle

### 6.1 Operator and grading inside the trace

The derived signed-coordinate vector field is

$$
X_p=\kappa^{-1}X_{p,-1}+X_{p,0}+\kappa X_{p,1}+O(\kappa^2),
$$

$$
X_{p,-1}z_k=\delta_{k,p},
\qquad
X_{p,0}z_k=-\frac{i}{2}(2p-k)z_{k-p},
$$

with $X_{p,1}$ including both the quadratic Witt term and the compensating $PSL(2,\mathbb R)$ section term already derived in the project. This is the complete order needed for a one-loop linear divergence.

It must be transformed together with the direct Darboux map. If

$$
J=\mathbf1+\kappa J_1+\kappa^2J_2+O(\kappa^3),
$$

then

$$
X^D_{p,-1}=X_{p,-1},
$$

$$
X^D_{p,0}=X_{p,0}-J_1X_{p,-1},
$$

$$
X^D_{p,1}
=X_{p,1}+(\partial X_{p,0})Y_1-J_1X_{p,0}
+(J_1^2-J_2)X_{p,-1}.
$$

The regulated real divergence at cutoff $N$ is

$$
\mathcal A_p^{(N)}(\epsilon)
=\sum_{k\in\mathcal I_N}e^{-\epsilon|k|}
\frac{\partial (X_p^D)^k}{\partial z_k}.
$$

This is a trace of the tangent map $\mathrm dX_p^D$ with $R_\epsilon=e^{-\epsilon H_0}$, where $H_0$ acts on both $z_k$ and $z_{-k}$ with energy $|k|$. It is not a Fock-space trace. Including both signed directions is required by the real metric measure; tracing annihilation directions alone would define a different, complex-polarized measure.

The constant and linear pieces give no diagonal trace for $p\neq0$. The one-loop candidate is the coefficient of $\kappa$ in $\mathcal A_p$.

### 6.2 Exact cutoff results and removal of edge terms

The nonzero finite-$N$ divergences are upper-edge effects caused by truncating a Witt action that does not preserve the finite mode set. At $N=8$, exact algebra gives

$$
\mathcal A_2^{(8)}
=-\kappa\frac{q^7(9q+10)}{28}z_{-2},
\qquad
\mathcal A_{-2}^{(8)}
=-\kappa\frac{q^7(9q+10)}{28}z_2,
$$

$$
\mathcal A_3^{(8)}
=-\kappa\frac{q^6(95q^2+102q+108)}{84}z_{-3},
\qquad
\mathcal A_{-3}^{(8)}
=-\kappa\frac{q^6(95q^2+102q+108)}{84}z_3.
$$

At $N=10$,

$$
\mathcal A_2^{(10)}
=-\kappa\frac{q^9(32q+35)}{120}z_{-2},
$$

$$
\mathcal A_3^{(10)}
=-\kappa\frac{q^8(4508q^2+4851q+5225)}{4620}z_{-3},
$$

$$
\mathcal A_5^{(10)}
=-\kappa\frac{q^6(3500q^4+3542q^3+3465q^2+3135q+2244)}{924}z_{-5},
$$

with identical coefficients for the conjugate negative modes. For every fixed $0<q<1$, these upper-edge factors move to arbitrarily high energy as $N\to\infty$ and vanish. The reason is structural rather than a numerical extrapolation: the unregulated Darboux-Liouville divergence cancels pairwise in the interior, while a fixed-$p$ truncated Witt shift can fail only when at least one mode label lies within $O(|p|)$ of the upper edge. The remaining coefficients grow at most polynomially in $N$, whereas the heat weight is $q^{N-O(|p|)}$; exponential damping therefore wins for every fixed $0<q<1$. Hence the symmetry-compatible order of limits gives

$$
\boxed{
\lim_{\epsilon\to0^+}\lim_{N\to\infty}
\mathcal A_p^{(N)}(\epsilon)=0,
\qquad p=2,3,5.
}
$$

Taking $q\to1$ at fixed $N$ instead retains the known hard-cutoff edge defect and is not an infinite-mode Virasoro regulator.

### 6.3 Wess--Zumino two-cocycle

At the one-loop identity order, the diagonal candidate is

$$
\mathcal K_{p,-p}^{(N)}
=X_{p,-1}\mathcal A_{-p,1}^{(N)}
-X_{-p,-1}\mathcal A_{p,1}^{(N)}.
$$

Because

$$
\mathcal A_p^{(N)}=\kappa c_{p,N}(q)z_{-p},
\qquad
\mathcal A_{-p}^{(N)}=\kappa c_{p,N}(q)z_p,
$$

the two derivatives cancel before either regulator limit:

$$
\boxed{
\mathcal K_{p,-p}^{(N)}(\epsilon)=0
}
$$

for $p=2,3,5$, every tested $N$, and symbolic $q$. Thus the possibly nonzero regulated divergence is a one-cochain/edge term, not a central two-cocycle.

## 7. Explicit $p=2$ result

For $N=4,5,\ldots,10$, exact symbolic evaluation gives

$$
\boxed{\mathcal K_{2,-2}^{(N)}(\epsilon)=0.}
$$

The individual $\mathcal A_{\pm2}^{(N)}$ are equal under conjugation and are exponentially supported at the upper cutoff in Darboux coordinates. No finite coefficient multiplying

$$
2(2^2-1)=6
$$

survives. Therefore

$$
\Delta c_2^{\rm measure}=0
$$

for the reference reduced measure.

## 8. Explicit $p=3$ result

For the same cutoffs and regulator,

$$
\boxed{\mathcal K_{3,-3}^{(N)}(\epsilon)=0.}
$$

Again the conjugate divergence coefficients agree exactly, so no finite coefficient multiplying

$$
3(3^2-1)=24
$$

survives. Hence

$$
\Delta c_3^{\rm measure}=0=\Delta c_2^{\rm measure}.
$$

This agreement is an internal zero-cocycle result. It is not a normalization condition imposed from an external answer.

## 9. Mixed/high-mode consistency check

The mixed pair has different oscillator grade, and the exact regulated derivatives give

$$
\boxed{\mathcal K_{2,-3}^{(N)}(\epsilon)=0.}
$$

For the diagonal high-mode Jacobi combination, the exact symbolic result is

$$
\boxed{
8\mathcal K_{2,-2}^{(N)}
-7\mathcal K_{3,-3}^{(N)}
+\mathcal K_{5,-5}^{(N)}=0.
}
$$

It is compatible with the Virasoro form

$$
\alpha p(p^2-1)\delta_{p+q,0}
$$

only with $\alpha=0$ for this reduced reference measure. The test does not constrain a separate finite quantum-moment-map counterterm not generated by the measure.

## 10. Regulator dependence and finite-renormalization classification

The calculation distinguishes three outcomes.

1. **Coherent reduced Liouville determinant.** Regulating the full pulled-back two-form and its coordinate transformation together preserves the finite-$N$ Pfaffian identity and yields no anomaly.
2. **Split regulated traces.** Inserting $R_\epsilon$ separately into $\operatorname{Tr}\log\Omega$ and $\operatorname{Tr}\log J$ can leave a field-dependent local term because the regulated trace is not cyclic. Its value depends on how the regulator is transported through the nonlinear coordinate map; the current project does not select that transport. The associated central two-cocycle computed here is still zero.
3. **Hard upper cutoff.** It breaks the Witt action at the upper edge. Nonzero divergences at $q=1$ and fixed $N$ are precisely this edge defect and cannot be interpreted as a central anomaly.

A regulator that weights $z_N$ and $z_{-N}$ differently could make the two derivatives in $\mathcal K_{N,-N}$ unequal, but it would violate the real metric measure/Hermiticity condition used throughout the project. It is not an admissible way to select a central coefficient.

The surviving independent freedom is still

$$
\delta H_{p,1}^{\rm fin}
=-i\gamma_p^{\rm fin}z_{-p},
\qquad
\gamma_p^{\rm fin}=\frac{\Delta c}{24}p(p^2-1),
$$

or equivalently

$$
r_p^{\rm fin}=\frac{\Delta c}{48\pi}\sqrt{D_p}.
$$

This is item (e), finite quantum-moment-map normalization. It is not generated or fixed by items (a)--(d) in the present reduced theory.

## 11. Symbolic verification record

The new script `Articles/Quantization in AdS/linearized gravity/archived/verification-scripts/cps_reduced_measure_anomaly_checks.py` imports the exact signed-mode $\Omega_0,\Omega_1,\Omega_2,Y_1,Y_2$ and $X_{p,-1},X_{p,0},X_{p,1}$ implementation from `Articles/Quantization in AdS/linearized gravity/archived/verification-scripts/cps_one_loop_next_order_checks.py`.

The exact command was

```text
sage -python 'Articles/Quantization in AdS/linearized gravity/archived/verification-scripts/cps_reduced_measure_anomaly_checks.py' --summary --cutoffs 4 5 6 7 8 9 10
```

It returned, for every cutoff:

- `darboux_order_1: True` and `darboux_order_2: True`;
- `log_measure_order_1: 0` and `log_measure_order_2: 0`;
- zero regulated measure coefficient at $q=1$;
- exact zero diagonal cocycles for $p=2,3,5$;
- exact zero mixed $(2,-3)$ cocycle;
- exact zero $8K_2-7K_3+K_5$ residual.

As an independent high-precision decay check, the absolute coefficients of $z_{-2}$ and $z_{-3}$ in $\mathcal A_2/\kappa$ and $\mathcal A_3/\kappa$ at $\epsilon=0.2$ were

| $N$ | $|\mathcal A_2/(\kappa z_{-2})|$ | $|\mathcal A_3/(\kappa z_{-3})|$ |
|---:|---:|---:|
| 6 | $0.28602343329202988338$ | $1.3597548350817928929$ |
| 8 | $0.15296565362028440878$ | $0.91502421926254703442$ |
| 10 | $0.084301584594392791508$ | $0.53395360825013870599$ |

The analytic $q^{N-O(1)}$ edge factors, rather than this short numerical table, establish the fixed-$\epsilon$ limit. Exact zeros were recorded before decimal evaluation.

Verified:

- finite-$N$ Darboux and Pfaffian-Jacobian cancellation through $O(\kappa^2)$ for $N=4,\ldots,10$;
- consistent signed-mode heat-kernel grading;
- Darboux transformation of the vector fields through the one-loop-relevant $X_{p,1}^D$ coefficient;
- exact $p=2,p=3,p=5$, mixed, and high-mode cocycle zeroes.

Assumptions:

- the metric CPS pullback and nonlinear vector fields derived in the source notes are valid on the selected smooth global-AdS vacuum orbit;
- formal finite-support configurations are used before the infinite-mode limit;
- the energy regulator acts symmetrically on the two real/signed directions;
- the one-loop central candidate is exhausted by the derived $X_{p,1}^D$ divergence order.

Not verified:

- convergence of an all-order infinite-dimensional Darboux chart;
- an unreduced metric path-integral density;
- a boundary-compatible FP/BV determinant or quantum master equation;
- ghost, boundary-condition, counterterm, and corner determinant cancellation;
- an all-order operator-domain construction of the nonlinear quantum charges.

## 12. Final conclusion and remaining assumptions

The internal measure test gives a rigorous negative result at the available order:

$$
\boxed{
\text{The naive CPS Liouville measure and its symmetric Fujikawa divergence}
\text{ do not generate a Virasoro central shift.}
}
$$

The metric-to-orbit reduction measure is not computable from the present notes because the classical CPS quotient does not define $Dg$, a gauge-fixing functional, the proper-ghost boundary problem, or their finite Ward normalization. Thus the remaining parameter is still unfixed:

$$
\boxed{
\Delta c\ \text{remains one real finite quantum-moment-map parameter.}
}
$$

To decide it internally, the project must supply either:

1. a full metric FP/BV reduction measure compatible with the renormalized Brown--Henneaux bulk, boundary, counterterm, and corner problem, including a symmetry-preserving regulator; or
2. an equivalent boundary Ward-cohomology prescription that fixes the finite normalization of the asymptotic quantum moment map.

Until one of these is constructed, assigning a nonzero number from a split determinant or hard-cutoff edge term would be a regulator/normalization choice rather than a derivation.
