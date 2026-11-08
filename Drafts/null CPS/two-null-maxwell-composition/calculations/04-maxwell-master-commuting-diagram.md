# Maxwell/Master Commuting Diagram

This finite-cross dictionary is theorem L-C. Calculation 13 applies the same
literal coefficient map to the nonlocal global fixed-point range.

## 1. Imported lemma boundary

The read-only file
`../../null-characteristic-cps/calculations/06-s2-harmonic-master-reduction.md`
derives two gauge-invariant scalar masters from the unfixed Maxwell action.
The read-only file
`../../null-characteristic-cps/calculations/07-characteristic-mode-reconstruction.md`
proves the matched-$H^1$ Bessel/Riemann Goursat theorem for each master.

This calculation does not modify or strengthen those lemmas.  Its new task is
to prove that the full Maxwell compatibility data used here map exactly to the
matched master profiles, including both parities, shared corner values,
potential reconstruction, proper gauge, and the fixed $Q_E=n=0$ policy.

## 2. Harmonic conventions

For $\ell\geq1$, let

$$
-D^2Y_{\ell m}=\lambda_\ell Y_{\ell m},
\qquad s_\ell=\sqrt{\lambda_\ell},
$$

$$
\mathbb E_A^{\ell m}=\frac{D_AY_{\ell m}}{s_\ell},
\qquad
\mathbb B_A^{\ell m}=\frac{(*_SdY_{\ell m})_A}{s_\ell}.
$$

Then

$$
D^A\mathbb E_A=-s_\ell Y,
\qquad D^A\mathbb B_A=0,
$$

$$
2D_{[A}\mathbb E_{B]}=0,
\qquad
2D_{[A}\mathbb B_{B]}=-s_\ell Y\epsilon_{AB}.
\tag{2.1}
$$

Decompose

$$
r_A=r^E\mathbb E_A+r^B\mathbb B_A,
\qquad
p_A=p^E\mathbb E_A+p^B\mathbb B_A.
\tag{2.2}
$$

Let

$$
B_0=\frac12\epsilon^{AB}b^0_{AB}.
$$

## 3. Exact field-strength/master maps

For the electric master $\Phi^E$,

$$
F_{uv}^E=-s_\ell\Phi^E Y,
\quad
F_{uA}^E=(\partial_u\Phi^E)\mathbb E_A,
\quad
F_{vA}^E=-(\partial_v\Phi^E)\mathbb E_A,
\quad
F_{AB}^E=0.
\tag{3.1}
$$

For the magnetic master $\Phi^B$,

$$
F_{uv}^B=0,
\quad
F_{uA}^B=(\partial_u\Phi^B)\mathbb B_A,
\quad
F_{vA}^B=(\partial_v\Phi^B)\mathbb B_A,
$$

$$
F_{AB}^B=-s_\ell\Phi^B Y\epsilon_{AB}.
\tag{3.2}
$$

Both masters obey

$$
(2\partial_u\partial_v+\lambda_\ell)\Phi^P=0.
\tag{3.3}
$$

Conversely, the harmonic Maxwell equations recover (3.3) and (3.1)--(3.2), so
the map is bijective in every $\ell\geq1$ field-strength sector.

## 4. Characteristic dictionary

Let

$$
f^P(u)=\Phi^P(u,0),
\qquad
g^P(v)=\Phi^P(0,v),
\qquad
c^P=f^P(0)=g^P(0).
$$

Equations (3.1)--(3.2) give

$$
c^E=-\frac{E_{0,\ell m}}{s_\ell},
\qquad
f^E(u)=c^E+\int_0^u p^E(s)\,ds,
\qquad
g^E(v)=c^E-\int_0^v r^E(t)\,dt,
\tag{4.1}
$$

$$
c^B=-\frac{B_{0,\ell m}}{s_\ell},
\qquad
f^B(u)=c^B+\int_0^u p^B(s)\,ds,
\qquad
g^B(v)=c^B+\int_0^v r^B(t)\,dt.
\tag{4.2}
$$

The inverse is literal:

$$
E_{0,\ell m}=-s_\ell c^E,
\quad p^E=\partial_uf^E,
\quad r^E=-\partial_vg^E,
\tag{4.3}
$$

$$
B_{0,\ell m}=-s_\ell c^B,
\quad p^B=\partial_uf^B,
\quad r^B=\partial_vg^B.
\tag{4.4}
$$

Therefore

$$
\boxed{
(r,p;E_0,b^0)_{\ell m}
\longleftrightarrow
(f^E,g^E;c^E)\oplus(f^B,g^B;c^B)}
\tag{4.5}
$$

is a continuous linear bijection at finite cutoff and on the rapid
matched-$H^1$ core.
The common corner values are part of each matched profile; they are not added
again as oscillators.

## 5. Compatibility equivalence

Before matching, allow two electric corner coefficients
$E_{0,+},E_{0,-}$ and two magnetic coefficients
$B_{0,+},B_{0,-}$.  Under (4.3)--(4.4),

$$
E_{0,+}-E_{0,-}
=-s_\ell(c^E_+-c^E_-),
\tag{5.1}
$$

$$
B_{0,+}-B_{0,-}
=-s_\ell(c^B_+-c^B_-).
\tag{5.2}
$$

Since $s_\ell>0$, Maxwell electric/magnetic matching is equivalent to the
two matched-master corner equations.  The sheet transport equations are
equivalent to differentiating (4.1)--(4.2).  The potential connection equation
then removes only the split-frame/representative mismatch; with the outer
anchor it fixes $\lambda_{\mathrm{rel}}$ and adds no master datum.

Thus full Maxwell compatibility is equivalent to matched master data plus the
declared proper-gauge representative policy.  Electric matching remains the
moment map; magnetic and connection matching do not become that moment map
under this dictionary.

## 6. Potential lift and proper gauge

For the magnetic sector, a representative is

$$
A_A^B=\Phi^B\mathbb B_A,
\qquad A_u^B=A_v^B=0.
\tag{6.1}
$$

For the electric sector, define the invariant two-dimensional fields

$$
e=F_{tz}=-s_\ell\Phi^E,
\qquad
X_t=-\partial_z\Phi^E,
\qquad
X_z=-\partial_t\Phi^E.
\tag{6.2}
$$

A potential representative is obtained after choosing the exact angular
coefficient $q_E$:

$$
a_a=\frac{\partial_aq_E-X_a}{s_\ell}.
\tag{6.3}
$$

Two such choices differ by a smooth $U(1)$ gauge transformation.  Under the
main endpoint policy the proper parameters vanish at the two relevant ends;
the remaining common cut value is the diagonal direction already reduced in
calculation 03.  The exact outer anchor selects one continuous representative
without changing $F$.  Calculation 05 constructs this representative
explicitly and proves the rapid-core potential quotient.  The shifted
potential Sobolev quotient remains `conditional`.

## 7. Commuting diagram

On the finite harmonic or rapid matched-$H^1$ core, the diagram is

$$
\begin{CD}
\operatorname{Sol}_{\mathrm{Max}}^{\mathrm{rad}}/
\mathcal G_{\mathrm{proper}}
@>{R_X^{\mathrm{Max}}}>>
\mathcal C_{X,\mathrm{anch}}^{\mathrm{ext}}/
(\mathcal G_{+,\mathrm{proper}}\times
\mathcal G_{-,\mathrm{proper}}\times\mathcal G_{\mathrm{diag}})
\\
@V{\mathfrak M}V{\simeq}V
@V{\mathfrak D_X}V{\simeq}V
\\
\displaystyle\bigoplus_{P,E/B,\ell m}\operatorname{Sol}_{\ell m}^{P}
@>{R_X^{\mathrm{master}}}>>
\displaystyle\bigoplus_{P,E/B,\ell m}
\mathcal G_{\ell m}^{P,\mathrm{matched}}.
\end{CD}
\tag{7.1}
$$

Here $\mathfrak M$ is (3.1)--(3.2) and $\mathfrak D_X$ is
(4.1)--(4.4) together with the anchored representative.  Equality of the two
paths follows coefficient by coefficient from the displayed formulas.

The top horizontal bijection is L-D and is `proved` on the anchored rapid
matched-$H^1$ core in calculation 05.  The vertical maps and the lower
characteristic dictionary are `proved`; the shifted Sobolev/graph completion
remains `conditional`.

## 8. Finite symbolic verification

`scripts/maxwell_master_commuting_checks.wl` verifies:

- the projected Maxwell/Bianchi transport identities for both parities;
- the mixed equations reduce exactly to (3.3);
- the anchored relation (4.3) of calculation 03;
- full rank of a finite matched master symplectic block;
- the signs in (4.1)--(4.4).

`scripts/finite_harmonic_reduction.py` verifies the exact jet-dictionary ranks
and (5.1)--(5.2) for several harmonic cutoffs.

**Status: proved.** The analytic finite-sector dictionary is given by explicit
inverse formulas.  The scripts are independent regression evidence, not the
proof of a continuum Goursat theorem.
