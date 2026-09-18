# A direct OFPT determination of the all-index Einstein–scalar spectrum

This note reviews [OFPT two particle energy shifts](OFPT%20two%20particle%20energy%20shifts.md) at repository commit `5124189dd99f80478b8ad489ed44604fea241e49` and removes the external high-spin input used in its sections 9.5–9.6. The source's canonical Hamiltonian, mass prescription, primary branch, and boundary conditions are retained.

**Result.** A direct canonical calculation of one *family* of product-state matrix elements determines the entire initial row $l=0$ of the crossed spectrum. The internal Einstein–Casimir recurrence then determines every off-diagonal coefficient by induction. No Lorentzian inversion theorem, Regge assumption, Ward-normalized stress block, Wilson-line spectrum, or prescribed high-spin tail is used.

The initial row is a row in the **two chiral representation labels**, not an additional spacetime boundary condition. A single matrix element at a single level would not suffice; the calculation below evaluates a parameterized integral for every nonnegative integer angular momentum.

## 1. Review verdict and conventions

The fresh implementation accompanying this note reproduces all 25 source coefficients through $n+|\ell|\le8$ as exact rational functions of $\Delta$. It also reproduces 64 coefficients through level 14 at each of four rational masses, with all reconstruction off-diagonal residuals zero. No discrepancy was found in the checked constraint-reduced tree-level coefficients.

Three distinctions in the source are correct and should be kept:

1. The reduction is at fixed canonical momentum, not fixed scalar velocity. Its quartic term is a first-order OFPT insertion after solving constraints; a second copy of the same exchange must not be added.
2. A matrix of circular external states is a compression, not a closed physical block. Primary reconstruction rather than ordinary diagonalization is necessary.
3. This is the connected, fixed-physical-mass scalar-primary branch. It is not an explicit summation and diagonalization of the entire unreduced scalar–boundary-graviton Hilbert space.

The claim that the *existing* all-index proof uses an external high-spin input is accurate. The implication that such an input is intrinsically needed is not: sections 2–5 below provide the missing internal determination.

Use

$$
 L_{\rm AdS}=1,\qquad \kappa^2=16\pi G,\qquad
 f=1+r^2,\qquad \mu=m^2=\Delta(\Delta-2),\qquad\Delta>1.
$$

Keep a regular center, Brown–Henneaux falloffs, fixed boundary time, standard source-free scalar falloff and the original boundary Hamiltonian. No independent order-$G$ scalar contact interaction or homogeneous vacuum mass is added. $\Delta$ is the physical one-particle gap, as in the source.

Temporarily distinguish the two equal-mass real scalars. This isolates the crossed contraction channel already used in source section 9.3. Its primary labels are $(k,l)$, and write

$$
 x_{kl}:=\frac{\gamma^{\mathrm x}_{\min(k,l),\,k-l}}G.
 \tag{1.1}
$$

It is parity symmetric, $x_{kl}=x_{lk}$. The auxiliary distinguishable problem includes odd spins. Restricting its crossed interaction to the symmetric tensor product gives the real-scalar crossed term with the original Fock normalization; the real-scalar annihilation channel is added separately in section 6.

## 2. A direct noncircular diagonal matrix element for arbitrary angular momentum

### 2.1 The states and their static diagonal sources

Let particle 1 occupy $u_{00}$, and particle 2 occupy the mode with no radial excitation and angular momentum $J\ge0$:

$$
 u_{0J}(t,r,\varphi)
 =R_J(r)e^{-i(\Delta+J)t+iJ\varphi},\qquad
 R_J(r)=c_J r^J f^{-(\Delta+J)/2},\qquad
 c_J^2=\frac{(\Delta)_J}{2\pi J!}.
 \tag{2.1}
$$

These are the source's KG/CPS-normalized modes. Define the *product-state diagonal*, not yet a primary eigenvalue,

$$
 \mathscr D_J
 :=\frac1G\langle u_{00}^{(1)}u_{0J}^{(2)}|
              \delta H^{\mathrm x}
              |u_{00}^{(1)}u_{0J}^{(2)}\rangle.
 \tag{2.2}
$$

The two diagonal source bilinears are stationary and axisymmetric. A real rotating mode has additional non-axisymmetric pair-creation bilinears, but they do not contribute to this distinct-species $b_1^\dagger b_1 b_2^\dagger b_2$ coefficient. We are not assuming that the complete real-field configuration is circular.

At fixed canonical momentum put

$$
 \mathsf K_J=R_J'^2+\frac{(\Delta+J)^2}{f^2}R_J^2,
 \qquad
 \mathsf V_J=\left(\frac{J^2}{r^2}+\mu\right)R_J^2,
 \qquad \mathsf e_J=f\mathsf K_J+\mathsf V_J.
 \tag{2.3}
$$

Normal ordering in a one-particle state gives a factor two in each quadratic field expression. Thus the leading mass and lapse functions **per particle** obey

$$
 M_J'(r)=r\mathsf e_J(r),\quad M_J(0)=0,
 \qquad D_J'(r)=-r\mathsf K_J(r),\quad D_J(\infty)=0.
 \tag{2.4}
$$

In particular the ground-particle constraint solution is

$$
 M_0(r)=\frac{\Delta}{2\pi}(1-f^{1-\Delta}),
 \qquad D_0(r)=\frac{\Delta}{4\pi}f^{-\Delta}.
 \tag{2.5}
$$

These are twice the functions in the source's response to the *polarized tensor* $T[u_{00},u_{00}^*]$. The factor is required because the one-particle stress expectation is $2T[u_{00},u_{00}^*]$.

### 2.2 Read the mixed coefficient from the canonical boundary energy

The source derives

$$
 H=2\pi M_\infty,
 \qquad H_4=-\pi\int_0^\infty r\,dr\,X(r)M^{(0)}(r),
 \qquad H=H_0+\kappa^2H_4+\cdots.
$$

For the diagonal sources in (2.2), the angular-gradient energy is included in $\mathsf V_J$. In the axisymmetric ADM constraint there is also a term quadratic in the angular-momentum constraint data. Its mixed contribution here is zero: the ground-particle source has no angular momentum. This is why no rotating-source inverse is needed for this particular family of matrix elements.

Extracting the mixed number-operator coefficient, with $X_J=2\mathsf K_J$, gives

$$
 \mathscr D_J=-32\pi^2\int_0^\infty r\,dr\,
             (\mathsf K_0M_J+\mathsf K_JM_0).
 \tag{2.6}
$$

This keeps both source/response placements and their Fock factors. Using (2.4), integrate the first term by parts:

$$
 \int_0^\infty r\,dr\,\mathsf K_0M_J
 =\int_0^\infty r\,dr\,D_0\mathsf e_J.
$$

The endpoint term $[D_0M_J]_0^\infty$ vanishes: $M_J(0)=0$, $M_J(\infty)=(\Delta+J)/(2\pi)$ is finite, and $D_0(\infty)=0$. Hence

$$
 \boxed{
 \mathscr D_J=-32\pi^2\int_0^\infty r\,dr\,
               (D_0\mathsf e_J+M_0\mathsf K_J).
 }
 \tag{2.7}
$$

Everything on the right is explicit from a ground-source constraint solution and a free mode. This is an exact tree-level diagonal element, not a heavy-source approximation or an assumption that the product state is an eigenstate.

There is also a derivation avoiding any rotating-source constraint reduction.
On the static ground-source metric $F=f-\kappa^2M_0$,
$d=\kappa^2D_0$, the second scalar's canonical momentum density per unit angle is
$\pi_2=r e^d F^{-1}\partial_t\phi_2$. Its exact Hamiltonian is

$$
 H_2[F,d]=\frac12\int dr\,d\varphi\,e^{-d}
 \left[
 F\left(\frac{\pi_2^2}{r}+r(\partial_r\phi_2)^2\right)
 +\frac{(\partial_\varphi\phi_2)^2}{r}+r\mu\phi_2^2
 \right].
$$

Varying at fixed $(\phi_2,\pi_2)$ and taking its one-particle diagonal
matrix element immediately gives
$-2\pi\kappa^2\int r\,dr\,(M_0\mathsf K_J+D_0\mathsf e_J)$,
which is $G\mathscr D_J$ in (2.7). In the full reduced quadratic
interaction, the two reciprocal source placements and the one-half from
quadratic elimination give this same mixed term, not twice this term.
This is the diagonal tree exchange factorization of two distinct species;
it does not replace the normalized two-body state by a localized classical
particle, discard recoil from an energy eigenproblem, or assume that
particle 2's gravitational response is absent.

For comparison only, the same integrand is the perturbation of the second particle's canonical Hamiltonian in the ground particle's static metric. If $p$ denotes the original polarized metric response,

$$
 p_{tt}=\frac{\Delta}{4\pi},\qquad
 p_{rr}=\frac{\Delta}{4\pi f^2}(1-f^{1-\Delta}),
 \qquad \mathcal E^{(1)}p=\frac12T[u_{00},u_{00}^*],
$$

then (2.7) equals $-2\kappa^2/G$ times the $p:T[u_{0J},u_{0J}^*]$ pairing. This equality follows from the canonical calculation above; it is not an appeal to an unknown Einstein response kernel.

### 2.3 Evaluate the integral, without a spin expansion

Two elementary identities give the complete radial simplification:

$$
 \frac{\mathsf K_J}{R_J^2}
 =\frac{\Delta^2}{f}+\frac{J^2}{r^2f},
 \qquad
 \frac{\mathsf e_J}{R_J^2}
 =2\Delta(\Delta-1)+\frac{2J^2}{r^2}.
 \tag{2.8}
$$

Equivalently, the polarized stress has

$$
 T_{rr}=\frac\Delta fR_J^2,\qquad
 T_{tt}=f\left[\Delta(\Delta-1)+\frac{J^2}{r^2}\right]R_J^2.
$$

Set $x=1/f$. Then $r\,dr=-dx/(2x^2)$ and
$R_J^2=c_J^2x^\Delta(1-x)^J$. Substitution gives the beta integrals

$$
 \mathscr D_J=-8\pi\Delta c_J^2
 \left[
 \Delta^2 B(\Delta,J+1)
 +J^2 B(\Delta+1,J)
 -\Delta B(2\Delta-1,J+1)
 \right].
 \tag{2.9}
$$

For $J=0$ the second term is absent; it is not evaluated as $0$ times an undefined beta integral. For $J>0$,

$$
 J^2B(\Delta+1,J)=\Delta J B(\Delta,J+1),
 \qquad 2\pi(\Delta+J)c_J^2B(\Delta,J+1)=1.
$$

The remaining beta ratio yields, for **every** integer $J\ge0$,

$$
 \boxed{
 \mathscr D_J
 =-4\Delta^2+
 \frac{4\Delta^2}{2\Delta-1}\frac{(\Delta)_J}{(2\Delta)_J}.
 }
 \tag{2.10}
$$

For example at $\Delta=2$, the first three diagonals are
$-32/3,\;-40/3,\;-72/5$. They are not all $-16$: primary projection is essential.

## 3. Extract the entire initial row by free representation theory

The state in (2.2) has total chiral levels $(J,0)$. The right sector is already the lowest tensor-product representation. On the left, decompose into the descendants of primaries $(k,0)$, $0\le k\le J$. In the notation of source (7.1)–(7.2),

$$
 \mathscr D_J=\sum_{k=0}^J w_{Jk}x_{k0},
 \qquad w_{Jk}=|U^{(J)}_{0k}|^2.
 \tag{3.1}
$$

These are representation coefficients, with no interaction data. Only three identities are needed:

$$
 \sum_{k=0}^Jw_{Jk}=1,\qquad
 w_{J0}=\frac{(\Delta)_J}{(2\Delta)_J},\qquad
 w_{JJ}=\frac{(\Delta)_J}{(2\Delta+J-1)_J}>0.
 \tag{3.2}
$$

The first is completeness of the orthonormal chiral basis. The second follows by expanding the normalized $J$th total raising of the lowest primary. The third is the squared endpoint coefficient of the normalized level-$J$ primary, from the lowering recursion. None uses a spectral shift.

At $J=0$, (2.10) fixes

$$
 x_{00}=-4\Delta^2\frac{2\Delta-2}{2\Delta-1}.
$$

Suppose $x_{k0}=-4\Delta^2$ for $1\le k<J$. Equations (3.1)–(3.2) and (2.10) give

$$
 w_{JJ}\big(x_{J0}+4\Delta^2\big)=0.
$$

Since $w_{JJ}$ is nonzero, induction proves

$$
 \boxed{
 x_{00}=-4\Delta^2\frac{2\Delta-2}{2\Delta-1},
 \qquad x_{k0}=-4\Delta^2\quad(k\ge1).
 }
 \tag{3.3}
$$

This is the missing initial information, obtained from direct canonical integrals for all $J$. In particular the high-spin $n=0$ result has now been calculated, not imported.

## 4. The internal recurrence and its source support

For clarity, this section states exactly which part of source sections 9.3–9.4 is used. It is independent of their subsequent Lorentzian inversion step.

The off-shell Einstein–Casimir identity is

$$
 \mathcal E^{(1)}[q]
 =-\mathcal P(\mathcal C-2)q
   +\mathcal P\nabla_{(\mu}C_{\nu)}[q],
$$

$$
 \mathcal Pq=q-\frac12g\operatorname{tr}q,\qquad
 C_\nu[q]=\nabla^\mu q_{\mu\nu}-\frac12\nabla_\nu\operatorname{tr}q,
 \qquad
 \mathcal Cq=\frac12(\Box+6)q-g\operatorname{tr}q.
 \tag{4.1}
$$

Apply this identity on the response leg of the crossed interaction. Conservation, the stated center and boundary conditions and the reciprocal resonant pairing remove the gradient and Green boundary terms. The result is a local contact contraction,

$$
 (\mathcal C_{\rm cross}-2)\mathcal X
 =\kappa^2\langle\mathcal K\rangle_{\rm res},\qquad
 \mathcal K=T[a,c]\!:\!T[b,d]
             -\operatorname{tr}T[a,c]\operatorname{tr}T[b,d].
 \tag{4.2}
$$

Here $a,b,c,d$ denote four scalar mode functions. Setting
$F=ab$, $J=a\,db-b\,da$ and the corresponding tilded outgoing expressions, the local source can be written

$$
 \mathcal K=
 \frac12K_FK_{\widetilde F}
 -\frac1{16}dJ\!:\!d\widetilde J
 -\frac\mu4(dF\cdot d\widetilde F+J\cdot\widetilde J)
 -\frac{3\mu^2}{2}F\widetilde F,
 \qquad K_F=\frac{\Box-2\mu}{2}F.
 \tag{4.3}
$$

The last equality for $K_F$ uses the free KG equations. Its local scalar primary form factor is supported at spin zero, and the vector form factor at spin one. One way to see this without a spectral input is to use analyticity at the regular center: the two lowest-weight equations determine a primary tensor from its center fiber value, whose rotational spin is at most its tensor rank. Thus the RHS of (4.2) vanishes for $|k-l|\ge2$. This is a selection rule for a **local source**, not a prescribed high-spin value of the interaction.

After primary projection the operator in source (9.13) is

$$
 (L_k+L_l-2)x_{kl}=S_{kl},\qquad
 (Lf)_n=a_nf_{n+1}+b_nf_n+c_nf_{n-1},
 \tag{4.4}
$$

$$
 a_n=\frac{(n+1)(\Delta+n)(2\Delta+n-1)}{2(2\Delta+2n-1)},\qquad
 c_n=\frac{n(\Delta+n-1)(2\Delta+n-2)}{2(2\Delta+2n-1)},\qquad
 b_n=-a_n-c_n.
 \tag{4.5}
$$

In particular $a_n>0$ and $c_0=0$ for $\Delta>1$. These coefficients follow from the three-term action of the crossed chiral Casimir on the free preparation blocks, divided by their free normalization coefficients. The generic hypergeometric coefficient identity and its first two endpoints were independently checked symbolically. This use of free representation theory is not a Lorentzian inversion or a stress-block assumption.

To spell out the representation step, let

$$
 \mathsf k_h(z)=z^h{}_2F_1(h,h;2h;z),\qquad
 p_k=\frac{(\Delta)_k^2}{k!(2\Delta+k-1)_k}.
$$

The crossed Casimir on these free preparation functions is

$$
 D_t=z(1-z)^2\partial_z^2
 +(z-1)(2\Delta+z-1)\partial_z+\frac{\Delta^2}{z}-\Delta,
$$

$$
 D_t\mathsf k_h=(\Delta-h)^2\mathsf k_{h-1}
 +\frac{\mu-h(h-1)}2\mathsf k_h
 +\frac{h^2(\Delta+h-1)^2}{4(2h-1)(2h+1)}\mathsf k_{h+1}.
$$

The finite-time secular term is $-\tau e^{-E\tau}\delta E$.
Writing $z\bar z=e^{-2\tau}$ identifies its logarithmic coefficient as
$\tfrac G2p_kp_lx_{kl}\mathsf k_{\Delta+k}(z)
\mathsf k_{\Delta+l}(\bar z)\log(z\bar z)$.
Derivatives of the logarithm produce nonlogarithmic terms; the logarithmic
coefficients give (4.4), for example
$a_k=(k+1)^2p_{k+1}/p_k$.
Here the blocks package free AdS representation matrix elements. This step
requires neither an assumed holographic dual nor a Lorentzian inversion formula.

For reference, the only nonzero source bands are, with $h=\Delta+n$, $C=h(h-1)$,

$$
 S_{nn}=\frac{4(C-\mu)(2C+\mu)}{2h-1},\qquad
 S_{n+1,n}=S_{n,n+1}
 =\frac{4h(n+1)(2\Delta+n-1)(2h^2-\mu)}{(2h-1)(2h+1)}.
 \tag{4.6}
$$

The high-spin derivation below needs only $S_{kl}=0$ off these bands. The precise amplitudes (4.6) enter the subsequent low-spin reconstruction.

## 5. All radial levels and all nonzero crossed spins by induction

### 5.1 Off-diagonal constancy propagates row by row

Equation (3.3) establishes $x_{k0}=u_0=-4\Delta^2$ for every $k>0$. Assume that row $n$ is constant above the diagonal,

$$
 x_{kn}=u_n\qquad(k\ge n+1),
$$

and the preceding row has the same property. For any $k\ge n+2$, the equation at $(k,n)$ has $S_{kn}=0$. Both neighbors $k-1,k+1$ in this row are still above the diagonal, so $L_k$ annihilates this constant row value. Equation (4.4) reduces to

$$
 a_n x_{k,n+1}+(b_n-2)u_n+c_nu_{n-1}=0.
$$

Hence the next row is again constant at every point above its diagonal:

$$
 \boxed{\begin{aligned}
 x_{k,n+1}&=u_{n+1}\qquad(k\ge n+2),\\
 a_nu_{n+1}+(b_n-2)u_n+c_nu_{n-1}&=0.
 \end{aligned}}
 \tag{5.1}
$$

At $n=0$ there is no $u_{-1}$ term because $c_0=0$. Thus this recursion is uniquely determined by the single value $u_0$, after the all-spin initial row has been directly established. No diagonal coefficient or unknown boundary value at infinite spin was used in this step.

### 5.2 Solve the one-dimensional recurrence

Let $C_n=(\Delta+n)(\Delta+n-1)$. Direct algebra in (4.5) gives

$$
 L1=0,\qquad LC_n=2C_n-\mu.
$$

It follows that $4\mu-8C_n$ solves (5.1), and its value at $n=0$ is $-4\Delta^2$. Uniqueness of the forward recurrence therefore gives

$$
 \boxed{
 u_n=4\mu-8C_n
 =-4\left[\Delta^2+2n(2\Delta+n-1)\right],
 \qquad x_{kl}=u_{\min(k,l)}\quad(k\ne l).
 }
 \tag{5.2}
$$

This explains the exact absence of dependence on nonzero crossed spin: it propagates from the directly computed first row through the source-free part of the *bulk-derived* recurrence. It was not assumed from a high-spin limit.

For an alternative uniqueness proof, regard (4.4) as an equation for successive complete rows:

$$
 a_l x_{k,l+1}
 =S_{kl}-(b_k+b_l-2)x_{kl}-a_kx_{k+1,l}-c_kx_{k-1,l}-c_lx_{k,l-1}.
 \tag{5.3}
$$

A difference of two solutions with the same $l=0$ row has every row zero by induction. This proof works without any growth condition at infinity. It replaces the finite-band uniqueness argument which previously presupposed the full high-spin tail.

### 5.3 The diagonal is then a calculation, not new input

Parity and (5.2) reduce the diagonal equation to

$$
 (2b_n-2)x_{nn}=S_{nn}-2a_nu_n-2c_nu_{n-1}.
$$

Its coefficient is nonzero. Substitution of the locally computed source yields

$$
 \boxed{x_{nn}=u_n\frac{2h-2}{2h-1}.}
 \tag{5.4}
$$

The adjacent-band equation with $S_{n+1,n}$ is then an independent consistency identity. The verification script checks the diagonal, adjacent and arbitrary-gap identities symbolically, not merely at finitely many labels.

## 6. The physical real-scalar result

The annihilation channel has a local stress-tensor source. Its primary form factor vanishes for spin greater than two, by the rank-two version of the selection argument above. Therefore for any $n\ge0$ and allowed even $|\ell|\ge4$,

$$
 \boxed{
 \gamma_{n\ell}
 =G u_n
 =-4G\left[\Delta^2+2n(2\Delta+n-1)\right].
 }
 \tag{6.1}
$$

This is an exact coefficient at order $G$ for every such finite label, not an asymptotic expansion in $1/|\ell|$.

Keeping the source's internally calculated annihilation terms gives all the low-spin coefficients as well:

$$
\begin{aligned}
\gamma_{n0}&=Gu_n\frac{2h-2}{2h-1}
 -\frac{2G(C+\mu)^2}{(2h-3)(2h-1)(2h+1)},\\
\gamma_{n,\pm2}&=Gu_n+
 \frac{G(n+1)(n+2)(2\Delta+n-1)(2\Delta+n)}
 {(2h-1)(2h+1)(2h+3)}.
\end{aligned}
\tag{6.2}
$$

The apparent pole at $n=0,\;\Delta=3/2$ is removable and gives $\gamma_{00}/G=-9/2$. No pole occurs in the new beta integral or row recursion for $\Delta>1$. This finiteness does not by itself establish any separate logarithm-free de Donder representative at its exceptional mass.

The physical primary and global-descendant gaps remain

$$
 E_{n\ell;r_Lr_R}
 =2\Delta+2n+|\ell|+r_L+r_R+\gamma_{n|\ell|}+O(G^2)
$$

on the source's specified branch. Free generators need not commute with the unmodified bare interaction: the argument is about the resonant intertwiner after the source's symmetry/dressing prescription. Independent boundary-graviton states and exceptional particle-number collisions remain outside the claimed diagonalization.

## 7. What this changes in the original proof

The logical dependence is now

$$
\boxed{\begin{gathered}
\text{canonical constraints and fixed-time boundary Hamiltonian}\\
\downarrow\\
\text{arbitrary-}J\text{ beta integral (2.10)}\\
\downarrow\\
\text{free primary projection: initial row (3.3)}\\
\downarrow\\
\text{bulk Einstein--Casimir recurrence and local-source selection}\\
\downarrow\\
\text{all nonzero crossed spins (5.2), then (5.4) and annihilation.}
\end{gathered}}
$$

Source sections 9.5–9.6 can therefore be replaced by sections 2–5 of this note. Their inversion discussion may remain as an external comparison, but is no longer an input to the result. The old two-by-two finite-band uniqueness determinant is also unnecessary for this proof.

This is not advertised as a term-by-term symbolic summation of the original Jacobi–Hahn double sum. It is an **independent direct Hamiltonian calculation of the missing data plus a proved all-index recurrence**. In particular it removes the external spectral input rather than relabelling the same input as an assumption.

The retained physical dependencies are precisely the original action and boundary/regularity prescription, physical one-particle mass, canonical connected vertex, and global-AdS-covariant scalar-primary branch. The recurrence uses the reciprocal conservative exchange and the vanishing boundary terms stated in the original note. It still does not replace a full unreduced resonant mixing calculation. The perturbative remainder is not claimed to be uniform when particle energies scale to infinity at fixed $G$.

## 8. Executed verification

Run the new self-contained script from this directory:

```sh
python scripts/ofpt_direct_boundary_row_checks.py --out scripts/ofpt_direct_boundary_row_results.json
```

Dependencies: Python 3, SymPy and mpmath. Default options are `--symbolic-level 8 --radial-level 14 --axis-level 24 --recurrence-level 120`. No previous radial implementation, source coefficient table, response kernel, or high-spin formula is loaded. The comparison function is called only **after** the canonical reconstruction has produced its coefficients.

Full audit run recorded in [the bundled results](scripts/ofpt_direct_boundary_row_results.json):

| Test | Result |
|---|---|
| Fresh polynomial-moment Hamiltonian over the rational-function field $\mathbb Q(\Delta)$ | All 25 primary shifts at $N\le8$ agree identically; 9 circular matrices, 85 entries, 60 off-diagonal reconstruction residuals. |
| Independent exact rational Hamiltonian runs at $\Delta=3/2,2,7/3,5/2$ | 64 primary shifts through $N=14$ per mass, all agree. Each run includes 15 matrices, 344 entries and 280 reconstruction off-diagonal checks. |
| Lowering/raising construction versus Hahn coefficients | Orthogonality, exchange parity, endpoint nonvanishing and independently raised coefficients pass through $N=14$ at all four masses. |
| Initial-row extraction from direct diagonals | Primary coefficients at $J=0,\ldots,24$ are recovered by triangular inversion, without assigning the nonzero-spin values in advance. |
| Row propagation without using the closed spectrum | All 7,381 points $k+l\le120$ per mass agree; symmetry is recovered as a check, not imposed in the solver. This is a recurrence check, not 7,381 fresh bulk integrals. |
| Arbitrary-index symbolic identities | 34 zero residuals: seed KG/stress/constraints, canonical pairing, beta reduction, the crossed recurrence, generic hypergeometric coefficient and endpoints, annihilation normalization, fixed-momentum probe Hamiltonian, reciprocal cross factor and Dyson sign. |
| Fresh quadrature of the original radial canonical integrand | 24 integrals at $J=0,1,2,5,12,40$, using four masses including $\Delta=1+\sqrt2$, at 60-digit precision. Maximum absolute discrepancy with (2.10): approximately $2.49\times10^{-60}$. |

These are newly executed Python/SymPy checks. The original Mathematica/xAct and Sage runs were inspected through their source, not claimed to have been rerun here. The arbitrary-index proof is the beta identities and inductions above; agreement at finite cutoffs is not used as its replacement.

### Source map

- [OFPT two particle energy shifts](OFPT%20two%20particle%20energy%20shifts.md), sections 1–3: action, fixed-momentum reduction, boundary energy and branch.
- The same note, sections 6–7: canonical finite moments and free primary reconstruction, reimplemented independently in Python.
- The same note, sections 9.1–9.4: local sources, annihilation response and the internal Einstein–Casimir recurrence. The new proof does not use sections 9.5's external high-spin input.
- [ofpt_two_particle_checks.wl](scripts/ofpt_two_particle_checks.wl), [ofpt_primary_basis_checks.sage](scripts/ofpt_primary_basis_checks.sage), [ofpt_all_index_checks.wl](scripts/ofpt_all_index_checks.wl): source algorithms and identities reviewed at the pinned commit.
- [New verifier](scripts/ofpt_direct_boundary_row_checks.py): independent arithmetic implementation and new direct-seed calculation.

### PR integration check

The full report above is preserved from the preceding audit. While packaging this PR on top of `e05b4cc02bfb847a460c8d79975d6de4bd19178b`, the unchanged verifier was run again with `--symbolic-level 4` and the other default levels (`14`, `24`, `120`). All four exact-rational radial runs, basis checks, initial-row extractions, 7,381-point recurrences per mass, 34 symbolic identities and 24 original radial quadratures passed again; the reduced generic-mass run checked nine primary coefficients. The default generic-mass level-eight rerun did not finish within the local time limit, so its 25-coefficient record above remains the preceding audit's result, not a new PR-time run. No Wolfram/xAct or Sage rerun is claimed.

The script is byte-identical to the supplied audit package (SHA-256 `93546275c23ba09aa720d9a6aafbcf34ed226b399853d98325459928f00e7245`); the preserved full report has SHA-256 `6ab5c313ff008dcc2f11bbfbbdbf9cd080445d06ac06435c9be6e16dfe60c0d1`. Repository integration only relocates that report under `scripts/` and updates this note's command and provenance wording. The earlier OFPT note's inversion-based completion and its verification logs are retained unchanged for comparison; this note supplies the replacement proof without that external spectral input.
