# CPS canonical quantum perturbation test of Brown--Henneaux one-loop central charge

> [!archive]
> Detailed verification record. Its exact/local-formal free-$H_0$ result and Wick-reference conclusion are integrated into the active main note; this file preserves the full regulator and claim-boundary analysis.

## 1. Binary verdict

**Reduced-Hamiltonian kill test: YES.** On the selected smooth global-AdS$_3$ Brown--Henneaux vacuum orbit, the vacuum-subtracted metric Brown--York/CPS time-translation charge is exactly quadratic in a local $U(1)$-equivariant Darboux coordinate system:

$$
\boxed{
H_0^D=\sum_{N\geq2}N b_N^\dagger b_N
}
$$

for one chirality. The barred chirality gives an identical commuting sum. The additive constant is zero by the same global-AdS vacuum subtraction used in the classical charge. This is an exact local/formal statement on the selected vacuum orbit and an exact statement at every finite mode truncation. It is not a claim of a global convergent Darboux chart on every AdS$_3$ gravity sector.

The already derived radial-homotopy map satisfies, explicitly,

$$
\boxed{H_{0,1}^D=0,\qquad H_{0,2}^D=0,}
$$

so there are no reduced cubic or quartic interaction vertices. Branch A therefore applies: there are no genuine interaction-loop corrections to the propagator inside this reduced sector. The relevant quantum effects are Wick contractions and finite renormalizations of the nonlinear Virasoro charge insertions.

**Final derivability verdict: B.** The user's free-CPS vacuum plus Wick prescription supplies a natural reference composite-charge prescription. In that reference prescription the bare one-loop identity terms for $p=2$ and $p=3$ both vanish, for both a hard finite cutoff and energy damping. This does **not** derive a physical zero shift. A finite Hermitian linear renormalization of each composite charge remains allowed by the reduced oscillator data, and Virasoro closure reduces it to one common central-cocycle parameter without fixing that parameter.

The present local pAQFT notes do not close this gap: they correctly identify current counterterms, Ward normalization, and genuine anomalies, but they explicitly defer the BV--BRST and boundary-Ward classification needed for gravity. Therefore no numerical one-loop central correction is internally derived here.

## 2. Exact conventions and source notes used

The calculation uses the following project conventions.

1. The AdS radius is $\ell=1$, the signature is $(-,+,+)$, and

   $$
   \kappa^2=16\pi G.
   $$

2. The renormalized variational problem is

   $$
   S_{\rm ren}[g]
   =\frac1{\kappa^2}\int_M\!\mathrm d^3x\sqrt{-g}\,(R+2)
   +\frac2{\kappa^2}\int_\Gamma\!\mathrm d^2x\sqrt{-\gamma}\,(K-1),
   $$

   together with the integrated Harlow--Wu corner contribution. The reduced symplectic form is the pullback of this full bulk-plus-boundary-plus-corner form, not of a bare bulk potential.

3. The vacuum-subtracted metric charge is

   $$
   H_\xi
   =-\frac2{\kappa^2}\int_{\partial\Sigma}\!\mathrm dx\sqrt h\,
   \tau^\alpha\xi^\beta
   \left(-K_{\alpha\beta}+K\gamma_{\alpha\beta}-\gamma_{\alpha\beta}\right),
   \qquad H_\xi[g^{(0)}]=0.
   $$

4. The selected nonlinear metric family is

   $$
   g[a]=e^{\kappa\mathcal L_{\zeta[a]}}g^{(0)},
   $$

   with every multimode cross term retained. It is the fixed-generator chart already used in the project, not a substituted coadjoint-orbit action.

5. In one chirality,

   $$
   \zeta=\sum_{|n|\geq2}z_n\xi_n,
   \qquad
   z_{-N}=q_Na_N,
   \qquad
   z_N=q_N^*a_N^\dagger,
   $$

   $$
   q_N=-\frac{(-i)^{N-1}}{\sqrt{D_N}},
   \qquad
   D_N=2\pi N(N^2-1).
   $$

   The modes $-1,0,1$ are the $PSL(2,\mathbb R)$ vacuum stabilizer and are not oscillators.

6. The leading reduced form and quantum convention are

   $$
   \Omega_0=i\sum_{N\geq2}\delta a_N^\dagger\wedge\delta a_N,
   \qquad
   \{a_N^\dagger,a_M\}=i\delta_{NM},
   \qquad
   [a_N,a_M^\dagger]=\delta_{NM}.
   $$

7. The vacuum and adjoint are

   $$
   a_N|0\rangle=0,
   \qquad
   H_p^\dagger=H_{-p}.
   $$

The principal local sources inspected and reconciled were:

- `higher perturbations of linearized gravity modes.md`;
- `CPS one-loop central charge from next-order perturbation.md`;
- `internal CPS one-loop central-charge audit.md`;
- `../perturbation/formalism.md`;
- `../perturbation/cps canonical quantization to loop corrections.md`;
- as a final consistency backend only, `../perturbation/cps-paqft-formalism/cps_paqft_quantum_perturbation_formalism.md`, `cps_paqft_complete_formalism_v1.md`, `flat4_complex_phi4_u1_current_check.md`, and `flat4_abj_anomaly_cps_paqft_check.md`.

The numerical central shift assumed in the old quantization section, its Chern--Simons/WZW route, determinant route, vacuum-energy route, and the scripts conditional on a chosen quantum central charge were quarantined. None is used as input below.

## 3. Why the previous classical-symbol-map calculation was insufficient

The previous next-order calculation correctly completed the classical chain

$$
h^{[2]}\longrightarrow\Omega_2\longrightarrow Y_2\longrightarrow H_{p,1}^D.
$$

It also correctly showed that applying different symbol maps to the same commuting cubic polynomial can produce different linear quantum terms. What it did not decide was whether the reduced dynamics itself has interaction vertices. Consequently it did not cleanly separate

1. nonlinear classical moment maps;
2. the change from non-Darboux $a$ coordinates to Darboux $b$ coordinates;
3. Wick renormalization of a nonlinear charge insertion;
4. genuine interaction vertices in the reduced Hamiltonian;
5. finite quantum-current or quantum-moment-map normalization.

The decisive first question is therefore the structure of $H_0$, not a comparison of normal and Weyl symbols. Once $H_0$ is shown to be exactly quadratic, classes involving reduced bulk interaction insertions are absent. The remaining problem is entirely a composite-charge/Ward-normalization problem.

## 4. Reduced $H_0$ kill test

### 4.1 Exact metric/CPS definition of $H_0$ on the exponential chart

The full renormalized CPS pairing at the global-AdS vacuum is

$$
B(\xi_m,\xi_n)
:=\kappa^2\Omega_{g^{(0)}}(X_{\xi_m},X_{\xi_n})
=iD_m\delta_{m+n,0}.
$$

For the fixed-generator exponential chart, define

$$
\Theta
=\frac{1-e^{-\kappa\operatorname{ad}_\zeta}}
{\kappa\operatorname{ad}_\zeta}\,\delta\zeta.
$$

The exact pullback of the same metric CPS form is

$$
\Omega_\zeta(u,v)=B(P_>\Theta(u),P_>\Theta(v)),
$$

where $P_>$ removes only the final $-1,0,1$ component. No boundary orbit action has been introduced.

The global generator $\xi_0$ stabilizes $g^{(0)}$. Hence its left action on the metric family can be moved to the right as a stabilizer action:

$$
e^{s\xi_0}e^{\kappa\zeta}g^{(0)}
=e^{s\xi_0}e^{\kappa\zeta}e^{-s\xi_0}g^{(0)}
=e^{\kappa\operatorname{Ad}_{e^{s\xi_0}}\zeta}g^{(0)}.
$$

Using $[\xi_0,\xi_k]=ik\xi_k$, the induced reduced vector field is therefore exactly linear:

$$
\boxed{X_0z_k=ikz_k.}
$$

In particular,

$$
X_0a_N=-iNa_N,
\qquad
X_0a_N^\dagger=iNa_N^\dagger.
$$

The same vacuum-subtracted Brown--York/CPS charge is determined on the chart by

$$
\delta H_0=-\iota_{X_0}\Omega,
\qquad
H_0[0]=0.
$$

Equivalently, along the radial path $s\zeta$,

$$
\boxed{
H_0[g[a]]
=-\int_0^1\!\mathrm ds\,
\Omega_{s\zeta}\bigl(X_0(s\zeta),\zeta\bigr).
}
$$

This is an exact computation of $H_0$ from the same metric charge and CPS form: it is the radial integral of the exact Hamiltonian one-form with the same vacuum normalization.

### 4.2 Explicit expansion through quartic order

Write

$$
\Omega=\Omega_0+\kappa\Omega_1+\kappa^2\Omega_2+O(\kappa^3),
$$

$$
H_0=H_{0,0}+\kappa H_{0,1}+\kappa^2H_{0,2}+O(\kappa^3).
$$

Let

$$
\mathcal E=\sum_{|k|\geq2}z_k\frac{\partial}{\partial z_k}
$$

be the radial vector field. Since $\Omega_j$ has coefficient degree $j$, radial integration gives

$$
\boxed{
H_{0,j}=-\frac1{j+2}\iota_{\mathcal E}\iota_{X_0}\Omega_j,
\qquad j=0,1,2.
}
$$

The quadratic term is

$$
\boxed{
H_{0,0}=\sum_{N\geq2}N a_N^\dagger a_N
=\sum_{N\geq2}ND_Nz_{-N}z_N.
}
$$

The cubic term obtained from this formula is exactly the $p=0$ specialization of the existing metric charge:

$$
H_{0,1}
=-\frac{i}{6}
\sum_{\substack{|k|,|l|,|m|\geq2\\k+l+m=0}}
z_kz_lz_mD_k\,m(l-m).
$$

The quartic term is explicitly fixed by

$$
H_{0,2}=-\frac14\iota_{\mathcal E}\iota_{X_0}\Omega_2,
$$

with the already derived metric/CPS coefficient

$$
\begin{aligned}
\Omega_2(u,v)
={}&\frac16B([\zeta,[\zeta,u]],v)
+\frac16B(u,[\zeta,[\zeta,v]])\\
&+\frac14B([\zeta,u],[\zeta,v]).
\end{aligned}
$$

Thus no new action, boundary theory, or external charge formula is needed to fix the quartic $H_0$ coefficient.

### 4.3 The same radial Darboux map is $U(1)$-equivariant

The existing direct-coordinate map is

$$
a=b+\kappa Y_1(b)+\kappa^2Y_2(b)+O(\kappa^3).
$$

The exact form $\Omega$ is $U(1)$ invariant, and the radial vector field $\mathcal E$ commutes with $X_0$. Therefore every radial primitive used in the Moser construction is $U(1)$ invariant. Since $\Omega_0$ is invariant and nondegenerate after quotienting proper gauge, each $Y_j$ can be and, in the existing radial prescription, is chosen equivariantly:

$$
[X_0,Y_j]=0.
$$

Substitution gives

$$
H_{0,1}^D
=H_{0,1}+\mathrm dH_{0,0}[Y_1]=0,
$$

and

$$
\boxed{
\begin{aligned}
H_{0,2}^D
={}&H_{0,2}+\mathrm dH_{0,1}[Y_1]
+\mathrm dH_{0,0}[Y_2]\\
&+\frac12\mathrm d^2H_{0,0}[Y_1,Y_1]=0.
\end{aligned}
}
$$

Both cancellations were checked as exact polynomial identities at $N_{\max}=4,5,6,7,8$, over every retained mode combination, not only at sampled numerical amplitudes.

### 4.4 Analytic exactness statement

At finite cutoff the reduced space is finite dimensional, $U(1)$ is compact, and the vacuum is a fixed point. The equivariant Darboux theorem states that a symplectic action of a compact group near a fixed point admits a group-equivariant Darboux chart identifying the action with its linear isotropy representation. For a Hamiltonian action, the moment map in that chart is its quadratic linear-model moment map plus a constant:

$$
H_0^D(v)=-\frac12\Omega_0(X_0v,v)+H_0(0).
$$

Here this is exactly $\sum N b_N^\dagger b_N$, and $H_0(0)=0$. The radial Moser construction above is an explicit realization through $Y_2$ and can be continued equivariantly order by order. Therefore sampled zeroes are not being promoted to an exact proof; the theorem and the exact $U(1)$ action supply the analytic reason.

For infinitely many modes, the conclusion is a local formal-power-series statement on finite-support configurations. Convergence of the all-order Darboux map in a specified infinite-dimensional topology is not established.

## 5. Free CPS quantum algebra and propagator in Brown--Henneaux mode space

For each chirality $A=L,R$, let

$$
u_{A,N,\mu\nu}(x)
=\left(\mathcal L_{\zeta_{A,N-2}}g^{(0)}\right)_{\mu\nu},
\qquad N\geq2,
$$

with the normalization already fixed by the full renormalized CPS form. In Darboux variables,

$$
\widehat h^{[0]}_{\mu\nu}(x)
=\sum_{A=L,R}\sum_{N\geq2}
\left(
b_{A,N}u_{A,N,\mu\nu}(x)
+b_{A,N}^\dagger u^*_{A,N,\mu\nu}(x)
\right),
$$

$$
[b_{A,N},b_{B,M}^\dagger]
=\delta_{AB}\delta_{NM},
\qquad
b_{A,N}|0\rangle=0.
$$

The reduced positive-frequency kernel is

$$
W^+_{\mu\nu\mid\rho\sigma}(x,y)
=\sum_{A=L,R}\sum_{N\geq2}
u_{A,N,\mu\nu}(x)u^*_{A,N,\rho\sigma}(y),
$$

and the reduced Feynman kernel is

$$
G_F(x,y)
=\theta(t_x-t_y)W^+(x,y)
+\theta(t_y-t_x)W^+(y,x)^{\rm op},
$$

where the second term exchanges the tensor slots and spacetime arguments. The commutator kernel is the antisymmetric part of $W^+$ and is the inverse of the reduced CPS form.

The reduced Hamiltonian is

$$
H_{\rm time}^D
=\sum_{A=L,R}\sum_{N\geq2}N b_{A,N}^\dagger b_{A,N}.
$$

Consequently the practical reduced action is free. The nonlinear relation between $b$ and the metric does not create a reduced interaction vertex; it only makes the Virasoro charges nonlinear composite observables.

## 6. Complete $\kappa$/loop-order ledger for the one-loop charge algebra

For one chirality write

$$
H_p=\kappa^{-1}A_p+B_p+\kappa C_p+\kappa^2D_p+\cdots,
$$

where $A_p,B_p,C_p,D_p$ have oscillator degrees $1,2,3,4$ before composite renormalization.

The commutator ledger is

| Order | Terms | Role |
|---|---|---|
| $\kappa^{-2}$ | $[A_p,A_q]$ | classical Brown--Henneaux central term |
| $\kappa^{-1}$ | $[A_p,B_q]+[B_p,A_q]$ | classical Witt action |
| $\kappa^0$ | $[A_p,C_q]+[C_p,A_q]+[B_p,B_q]$ | one-loop/composite identity term and quadratic operator closure |
| $\kappa^1$ | $[A_p,D_q]+[D_p,A_q]+[B_p,C_q]+[C_p,B_q]$ | next order |

Thus $D_p$ cannot contribute to the $O(\kappa^0)$ identity term merely by undergoing more contractions: contractions change loop number and oscillator degree, not the explicit power of $\kappa$.

Because $H_0^D$ is exactly quadratic, the reduced interaction action contains no $S_3$ or $S_4$. Therefore the Branch B classes

$$
(AB+BA)S_3,
\qquad
AA S_4,
\qquad
AA S_3S_3
$$

are absent in this reduced sector. This statement does not concern off-orbit bulk, ghost, topology-changing, or other monodromy sectors.

## 7. Branch A calculation: free dynamics and nonlinear charge insertions

Rephase the Darboux oscillators as in the preceding audit,

$$
\beta_N=i(-i)^{N-1}b_N,
\qquad
[\beta_N,\beta_M^\dagger]=\delta_{NM}.
$$

Then, for $p\geq2$,

$$
A_p=\sqrt{D_p}\,\beta_p.
$$

For $p=2,3$, the quadratic charge is

$$
B_p=Q_p
=\sum_{r=2}^{\infty}u_r^{(p)}\beta_r^\dagger\beta_{r+p},
\qquad
u_r^{(p)}=(r+2p)\sqrt{\frac{D_r}{D_{r+p}}},
$$

with $Q_{-p}=Q_p^\dagger$. There are no pair-creation or pair-annihilation terms for $p=2,3$ because two physical positive mode numbers cannot sum to $2$ or $3$.

The practical canonical/Wick prescription is defined as follows.

1. The free CPS vacuum fixes the contraction $W^+$.
2. Products inside each nonlinear charge insertion are defined by Wick subtraction with respect to that vacuum.
3. A regulator is retained until all mode sums are meaningful.
4. Every finite local/current counterterm compatible with the same theory must still be classified and normalized.

Accordingly, write the renormalized cubic insertion as

$$
C_p^{\rm ren}=:C_p^{(3)}:_{W^+}+r_p^{\rm ren}\beta_p.
$$

This is not a choice between an abstract normal and Weyl symbol. The first term is the reference Wick composite defined by the selected free state. The second term records the finite composite-current freedom that Wick subtraction alone does not fix.

For a hard cutoff,

$$
Q_p^{(N_{\max})}
=\sum_{r=2}^{N_{\max}-p}u_r^{(p)}\beta_r^\dagger\beta_{r+p},
$$

and exactly

$$
[Q_p^{(N_{\max})},Q_{-p}^{(N_{\max})}]
=\sum_{r=2}^{N_{\max}-p}(u_r^{(p)})^2(n_r-n_{r+p}).
$$

It contains no identity operator.

For a smooth energy damping, define

$$
Q_{p,\epsilon}
=\sum_{r=2}^{\infty}
e^{-\epsilon(r+p/2)}u_r^{(p)}\beta_r^\dagger\beta_{r+p},
\qquad \epsilon>0.
$$

Then the exact regulated expression is

$$
\boxed{
[Q_{p,\epsilon},Q_{-p,\epsilon}]
=\sum_{r=2}^{\infty}
e^{-2\epsilon(r+p/2)}(u_r^{(p)})^2(n_r-n_{r+p}),
}
$$

again with no identity term. On the finite-particle domain this has a pointwise $\epsilon\to0^+$ limit for every fixed occupation vector, although a separate operator-topology convergence statement is not proved.

Finally, Wick's theorem gives

$$
\langle0|[A_p,:C_{-p}^{(3)}:_{W^+}]
+[:C_p^{(3)}:_{W^+},A_{-p}]|0\rangle=0.
$$

One field can contract across a Wick cubic insertion only once; the remaining Wick quadratic has zero vacuum expectation. Therefore the reference bare result is

$$
K_{p,{\rm Wick}}^{(1),{\rm bare}}=0,
\qquad p=2,3,
$$

for both regulators. The finite linear term changes this to

$$
\boxed{
K_p^{(1)}
:=\langle0|[H_p,H_{-p}]|0\rangle_{\text{one-loop}}
=2\sqrt{D_p}\,\operatorname{Re}r_p^{\rm ren}.
}
$$

## 8. Explicit $p=2$ result

Since

$$
D_2=12\pi,
$$

the hard-cutoff and energy-damped Wick reference prescriptions both give

$$
K_{2,{\rm Wick}}^{(1),{\rm bare}}=0.
$$

After the most general finite linear composite renormalization retained above,

$$
K_2^{(1)}=2\sqrt{12\pi}\,\operatorname{Re}r_2^{\rm ren},
$$

and hence

$$
\boxed{
\Delta c_2
=\frac{12K_2^{(1)}}{2(2^2-1)}
=4\sqrt{12\pi}\,\operatorname{Re}r_2^{\rm ren}.
}
$$

Thus the reference Wick representative has $\Delta c_2^{\rm bare}=0$, but the renormalized value is not fixed until $r_2^{\rm ren}$ is fixed by an additional quantum normalization principle.

## 9. Explicit $p=3$ result

Since

$$
D_3=48\pi,
$$

the two reference regulators give

$$
K_{3,{\rm Wick}}^{(1),{\rm bare}}=0.
$$

In general,

$$
K_3^{(1)}=2\sqrt{48\pi}\,\operatorname{Re}r_3^{\rm ren},
$$

so

$$
\boxed{
\Delta c_3
=\frac{12K_3^{(1)}}{3(3^2-1)}
=\sqrt{48\pi}\,\operatorname{Re}r_3^{\rm ren}.
}
$$

The necessary $p=2$/$p=3$ agreement condition is

$$
\boxed{
\Delta c_2=\Delta c_3
\quad\Longleftrightarrow\quad
\operatorname{Re}r_3^{\rm ren}=2\operatorname{Re}r_2^{\rm ren}.
}
$$

Both reference bare values agree, but this agreement selects only the reference $r_p=0$ representative. It does not prove that the same theory forbids a finite common cocycle renormalization.

## 10. Mixed commutator and high-mode Jacobi/closure check

The quadratic part of the mixed commutator is

$$
\begin{aligned}
[Q_2^{(N_{\max})},Q_{-3}^{(N_{\max})}]
=\sum_{j=2}^{N_{\max}-1}\Big[&
\mathbf1_{j\leq N_{\max}-3}u_{j+1}^{(2)}u_j^{(3)}\\
&-\mathbf1_{j\geq4}u_{j-2}^{(2)}u_{j-2}^{(3)}
\Big]\beta_{j+1}^\dagger\beta_j.
\end{aligned}
$$

It is a pure bilinear and has no identity component. The finite linear counterterms $r_2\beta_2$ and $r_3\beta_3$ also cannot create a mixed identity term because the oscillator grades differ.

The full $O(\kappa^0)$ mixed Ward relation would require

$$
[H_2,H_{-3}]_{O(\kappa^0)}=5H_{-1,O(\kappa^0)}
$$

after combining $BB$, $AC$, and $CA$ and renormalizing all composite insertions consistently. The classical polynomial relation follows from the checked metric moment-map identity. A regulator-preserving quantum operator relation is not established by the current notes: a hard upper cutoff breaks Witt symmetry, and the gravity pAQFT/BV Ward normalization needed to remove every non-Virasoro operator residue has not been constructed. This required closure check is therefore an obstruction, not a passed test that can be used to select a number.

For the high-mode triple $(H_2,H_3,H_{-5})$, a central one-loop coefficient must satisfy

$$
\boxed{
8K_2^{(1)}-7K_3^{(1)}+K_5^{(1)}=0.
}
$$

The general Virasoro-compatible family

$$
K_p^{(1)}=\frac{\Delta c}{12}p(p^2-1)
$$

satisfies this identity for every real $\Delta c$. Hence Jacobi constrains the mode dependence but not the coefficient.

As a regulator diagnostic, the previously recorded raw Weyl/hard-cutoff contractions at $N_{\max}=8$ give a nonzero projected residual. The exact finite oscillator algebra still obeys associative Jacobi; the projected failure is compensated by cutoff-edge/non-Virasoro operator terms. That result is not used as a competing value. It only confirms that a hard cutoff plus an arbitrary composite representative is not a symmetry-preserving renormalization.

## 11. Regulator comparison and renormalization analysis

### 11.1 What the two regulators establish

For $p=2,3$:

- the hard finite cutoff gives an exact zero identity coefficient in $[B_p,B_{-p}]$;
- energy damping gives an exact zero identity coefficient for every $\epsilon>0$;
- the reference Wick $AC+CA$ vacuum contribution is exactly zero;
- therefore there is no divergent identity piece to subtract in this particular reference Wick representative.

This regulator agreement is useful but insufficient. Composite Wick products are defined only after a finite normalization condition is supplied. A zero reference value is not itself such a physical condition.

### 11.2 Finite freedom allowed by the reduced data

Among finite order-$\kappa$ renormalizations, the only term that can alter the diagonal identity coefficient through its commutator with the linear charge has the form

$$
\delta C_p^{\rm fin}=r_p^{\rm fin}\beta_p,
\qquad
\delta C_{-p}^{\rm fin}=(\delta C_p^{\rm fin})^\dagger.
$$

Demanding one Virasoro central shift for every mode reduces the real parts to

$$
\boxed{
r_p^{\rm fin}
=\frac{\Delta c}{48\pi}\sqrt{D_p}.
}
$$

Equivalently, in signed variables,

$$
\delta H_{p,1}^{\rm fin}=-i\gamma_p^{\rm fin}z_{-p},
\qquad
\gamma_p^{\rm fin}=\frac{\Delta c}{24}p(p^2-1).
$$

This is one real parameter. Vacuum subtraction, Hermiticity, the $p=2$/$p=3$ comparison, the mixed commutator's absence of a central term, and Jacobi do not determine it.

### 11.3 What must decide whether this is a counterterm or an anomaly

The reduced oscillator calculation alone cannot decide whether the displayed freedom is

1. a legitimate finite renormalization of the composite asymptotic current, to be fixed by a quantum normalization condition; or
2. the coefficient of a nontrivial boundary/gravitational Ward anomaly, in which case finite trivial current improvements cannot change it and its coefficient must be computed from the quantum measure and regulator.

The local pAQFT backend states the correct general distinction: two admissible composite prescriptions differ by local finite-renormalization maps; Ward-preserving current normalization must be imposed; cohomologically trivial terms can be moved by current counterterms, while a genuine anomaly cannot be removed. It also explicitly states that gravity requires BV--BRST, boundary/corner charges, and the corresponding quantum master/Ward identities. Those gravity ingredients have not been implemented in the supporting notes.

Therefore the missing quantum principle is precise:

$$
\boxed{
\text{a metric-derived, boundary-compatible BV--BRST/Ward renormalization}
\text{ including its measure, regulator, and finite current normalization.}
}
$$

It must either fix the composite-current normalization or compute the nontrivial anomaly coefficient. Choosing a finite part to reproduce an external answer is not permitted and has not been done.

## 12. Symbolic verification record

Two new minimal scripts accompany this note.

### `Articles/Quantization in AdS/linearized gravity/archived/verification-scripts/cps_h0_kill_test.py`

This script reuses the exact signed-mode $\Omega_0,\Omega_1,\Omega_2,Y_1,Y_2$ implementation in `Articles/Quantization in AdS/linearized gravity/archived/verification-scripts/cps_one_loop_next_order_checks.py`. With exact SymPy arithmetic under Sage Python, it checked $N_{\max}=4,5,6,7,8$ and returned `True` for every item below:

- $H_{0,0}=\sum_{N=2}^{N_{\max}}N a_N^\dagger a_N$;
- the Hamiltonian residuals for $H_{0,0}$, $H_{0,1}$, and $H_{0,2}$;
- equality of $H_{0,1}$ with the existing $p=0$ cubic metric-charge formula;
- $[X_0,Y_1]=[X_0,Y_2]=0$;
- the first and second Darboux residual matrices;
- $H_{0,1}^D=0$ and $H_{0,2}^D=0$.

The command was

```text
sage -python 'Articles/Quantization in AdS/linearized gravity/archived/verification-scripts/cps_h0_kill_test.py' --cutoffs 4 5 6 7 8
```

### `Articles/Quantization in AdS/linearized gravity/archived/verification-scripts/cps_wick_charge_kill_test.py`

For $N_{\max}=6,8,10,12$, the script checked $p=2,3$ with exact arithmetic. For each cutoff it found:

- zero identity coefficient and zero one-particle trace for the hard-cutoff $BB$ commutator;
- zero identity coefficient for energy damping parameters $q=e^{-\epsilon/2}=1/2,3/4,9/10$;
- a purely bilinear mixed $[Q_2,Q_{-3}]$ with no identity component;
- the exact symbolic central-cocycle Jacobi residual $8K_2-7K_3+K_5=0$ for arbitrary $\Delta c$.

The command was

```text
sage -python 'Articles/Quantization in AdS/linearized gravity/archived/verification-scripts/cps_wick_charge_kill_test.py' --cutoffs 6 8 10 12
```

The existing `Articles/Quantization in AdS/linearized gravity/archived/verification-scripts/cps_one_loop_next_order_checks.py` was also rerun at $N_{\max}=6,8$. Its exact Darboux and interior Hamiltonian residuals still vanish, while the raw hard-cutoff non-symmetry diagnostics remain nonzero. Those raw values are regulator diagnostics only and are not used to fix a finite coefficient.

Assumptions:

- the exact renormalized metric CPS pairing and Hamiltonian identity used in the project are valid on the selected smooth vacuum orbit;
- proper gauge has already been quotiented in the physical $N\geq2$ mode space;
- formal finite-support power series are used before an infinite-mode limit;
- the free positive-frequency split defines the Wick contraction and adjoint.

Not verified:

- convergence of the all-order infinite-dimensional equivariant Darboux chart;
- a common dense domain for every infinite normal-ordered charge;
- a metric BV--BRST construction of renormalized asymptotic currents;
- a boundary Ward/cohomology calculation deciding whether the central cocycle is finite composite freedom or a genuine anomaly;
- removal of every non-Virasoro operator residue by a uniquely specified symmetry-preserving regulator.

## 13. Final binary conclusion and precise remaining obstruction

The structural question has a definite answer:

$$
\boxed{
\text{The reduced global-AdS$_3$ Brown--Henneaux }H_0
\text{ is exactly quadratic in suitable CPS-Darboux coordinates.}
}
$$

The cubic and quartic reduced interactions vanish, both analytically and in exact finite-mode checks. Branch A is therefore the correct reduced quantum calculation. The free CPS/Wick reference prescription gives

$$
\Delta c_2^{\rm bare}=\Delta c_3^{\rm bare}=0,
$$

but this is a reference composite normalization, not a uniquely renormalized prediction.

The final result is criterion **B**:

$$
\boxed{
\text{CPS plus canonical Wick perturbation, as presently specified, leaves one finite}
\text{ central-cocycle/composite-charge parameter undetermined.}
}
$$

To reach criterion A without importing an answer, the project must add a boundary-compatible gravitational BV--BRST/Ward renormalization derived from the same metric Einstein--Hilbert plus Gibbons--Hawking, counterterm, and corner variational problem. That construction must fix the finite current normalization or calculate the nontrivial anomaly coefficient, and it must establish regulator-independent mixed/Jacobi closure on a stated operator domain.
