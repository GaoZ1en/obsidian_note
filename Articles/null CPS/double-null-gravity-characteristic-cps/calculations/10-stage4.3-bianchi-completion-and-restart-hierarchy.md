# 10 - Stage 4.3: Bianchi completion and the reduced restart hierarchy

**Stage 4.4 cleanup:** the row incidence is now audited in
`verification/SOURCE_ROW_LEDGER.md`.  Section 3.1 below substitutes the
five plus-sheet rows directly into A.36--A.39, independently of the
mirror derivation, including the lapse, $D\log c$, $O_4$ and raw-component
terms.  This closes the two Stage-4.3 audit gaps; it does not supply the
bulk subsidiary theorem attempted in calculation 11.

## 0. Verdict, domains and provenance

**Proved here:** initial-sheet Bianchi compatibility on both sheets,
including the opposite extremes constructed by transport; compatibility
with the complementary reduced frame/connection/copy equations; constrained
initial completion in the incoming **free-slot norm** with sufficient loss
five, and a fully filled initial-cross estimate with sufficient loss six.
Both maps have bounded differentials and quadratic remainders at these
respective losses. Sections 5--6 prove a pure-generator exact-solution
difference hierarchy with loss $2r+1$, and a local **reduced**, not
Einstein, restart theorem at a deliberately nonoptimal finite index.

**Not proved:** propagation of the full Einstein/copy/metricity constraints
in the two-dimensional bulk, the full project affine reset, or
$P_{\rm cell}^k$. The first unfinished reset calculation is the
refoliated opposite normal and normal-connection estimate in Section 7.3.
In addition, using a reduced output as geometric vacuum data needs the
bulk Einstein-identification gate, not just initial compatibility.
$P_{\rm rect}^{s,r}$ remains conditional. No finite grid or quantization.
$\Omega_{\rm char}^{\rm intr}$ is not enlarged by auxiliary ports.

**Known from literature:** the literal source equations and reduced local
existence theorem are Cabet--Chruściel--Tagne Wafo,
[arXiv:1406.3009v2](https://arxiv.org/pdf/1406.3009v2), Theorem 3.9,
(3.34), (3.66)--(3.74), (3.88)--(3.102), (5.3), Appendix A.
PDF pages 60--61 and 67 were visually checked against the downloaded TeX.
The complete permutation in 09.(1.4), including every RHS occurrence and
the Weyl extractor, is retained. We do not identify the incompatible
literal printed allocation and Appendix allocation off the copy diagonal.

**Re-derived here:** all initial identities and estimates below. Symbolic
checks V65--V72 are regressions, not subsidiary/PDE proofs. All comparisons
use the *same* fixed reference bundle, atlas and trivialization of 09.2.
There is no subtraction of components in independently chosen dyads.

## 1. Generator/connection commutators, without suppressed terms

On $N_-$, let $X=\chi$, $H=\underline\chi$,
$\theta=\operatorname{tr}X$, $T=\operatorname{tr}H$.
Here $H$ is not the energy symmetrizer. The derivative dot is
$\partial_\xi=\not\nabla_3$ on parallel cut components. Source
$g_{34}=-2$, $\epsilon_{12}=1$, ${}^\star v_a=\epsilon_a{}^b v_b$.
All formulas initially hold for smooth data; the finite-order versions
follow by the explicit estimates and approximation, not an assumed bulk
Einstein solution.

In transported coordinates,
$$
 \dot q_{AB}=2H_{AB},\quad
 \dot q^{AB}=-2H^{AB},\quad
 \partial_\xi\epsilon_{AB}=T\epsilon_{AB},\quad
 \partial_\xi\epsilon^{AB}=-T\epsilon^{AB}.
 \tag{1.1}
$$
In particular
$\partial_\xi\epsilon_A{}^B=T\epsilon_A{}^B-2\epsilon_{AC}H^{CB}$;
one cannot keep the coordinate mixed-index star operator fixed while
varying the metric.
Differentiate $D_Aq_{BC}=0$ and the torsion-free identity:
$$
 \dot\Gamma^C_{AB}
 =D_AH_B{}^C+D_BH_A{}^C-D^CH_{AB}=:\mathcal K^C_{AB}.
 \tag{1.2}
$$
Indeed, metric compatibility gives
$2D_AH_{BC}=\mathcal K_{CAB}+\mathcal K_{BAC}$;
add its $A,B$ permutation and subtract its $C$ permutation to obtain
(1.2). Thus, for coordinate components,
$$
 [\partial_\xi,D_A]f=0,\quad
 [\partial_\xi,D_A]\tau_B=-\mathcal K^C_{AB}\tau_C,\quad
 [\partial_\xi,D_A]V^B=\mathcal K^B_{AC}V^C.
 \tag{1.3}
$$
Each lower tensor index contributes a minus $\mathcal K$, each upper
index a plus $\mathcal K$. Derivatives of raised contractions must also
include $\dot q^{-1}$ in (1.1).

For the parallel orthonormal frame $e_a=E_a{}^A\partial_A$,
$\dot E_a{}^A=-H_a{}^bE_b{}^A$. Set
$$
 C_{ab}{}^c=D^cH_{ab}-D_bH_a{}^c.
$$
Converting (1.3), including the deformation of *the derivative index*,
gives
$$
\begin{split}
 [\partial_\xi,D_a]f&=-H_a{}^cD_cf,\\
 [\partial_\xi,D_a]\tau_b&=-H_a{}^cD_c\tau_b+C_{ab}{}^c\tau_c,\\
 [\partial_\xi,D_a]V^b&=-H_a{}^cD_cV^b-C_{ac}{}^bV^c,\\
 [\partial_\xi,D_a]S_{bc}&=-H_a{}^dD_dS_{bc}
                 +C_{ab}{}^dS_{dc}+C_{ac}{}^dS_{bd}.
\end{split}\tag{1.4}
$$
For example the covector coefficient is
$-\mathcal K^c_{ab}+D_aH_b{}^c=C_{ab}{}^c$.
The frame metric and epsilon are constant; this is the cancellation of,
not an omission of, their coordinate variations.

Here is also the rotation/lapse version needed to interpret the mirror.
Let $n=c\partial_\eta$, $w=D\log c$, with second form $X$.
Write $O^a{}_b=\Gamma_n{}^a{}_b$, $O^T=-O$.
On covariant frame tensors $\not\nabla_n=n-\mathscr O$, where
$\mathscr O$ acts on each index by $O^c{}_b$.
For a covector the commutator, treating $D_a\tau_b$ as a two-tensor, is
$$
 [\not\nabla_n,D_a]\tau_b
 =-X_a{}^cD_c\tau_b-w_a\not\nabla_n\tau_b
 +(D^cX_{ab}-D_bX_a{}^c+w_bX_a{}^c-w^cX_{ab})\tau_c.
 \tag{1.5}
$$
For a scalar omit the last term; for a tensor add that term on each
covariant slot and its negative on each contravariant slot.
This follows from
$$
 c\partial_\eta\Gamma^C_{AB}
 =D_AX_B{}^C+D_BX_A{}^C-D^CX_{AB}
   -w_AX_B{}^C-w_BX_A{}^C+w^CX_{AB}.
$$
If raw frame-component derivatives $n$, rather than
$\not\nabla_n$, are used, add
$\mathscr O_{DT}(DT)-D(\mathscr O_TT)$ to (1.5).
For a covector this is
$O^c{}_aD_c\tau_b-(D_aO^c{}_b)\tau_c$.
This displays the rotation and its derivative explicitly.
The source has $O_3=0$, but generally $O_4\ne0$.

## 2. The missing minus-sheet vector identity

Use the Gauss and normal-curvature definitions and the actual Codazzi
expressions, not independent curvature histories:
$$
\begin{split}
 G&=K_q+\rho+\tfrac12(T\theta-H:X),\\
 \sigma&=\epsilon^{ab}D_a\zeta_b
                     +\tfrac12\epsilon^{ab}X_{ac}H_b{}^c,\\
 \beta&=D\theta-\operatorname{div}X+(\theta I-X)\zeta,\\
 u:=\underline\beta&=\operatorname{div}H-DT+(TI-H)\zeta.
\end{split}\tag{2.1}
$$
In this section retain $G$ temporarily; the actual data have $G=0$.
The mixed and Damour equations are
$$
 V:=\dot X=D\zeta+(D\zeta)^T+2\zeta\otimes\zeta
                       +\rho I-\tfrac12(HX+XH),\qquad
 \dot\zeta=-u-2H\zeta.
 \tag{2.2}
$$
Thus no $\dot H$, scalar Bianchi equation, or opposite extreme is
needed for this particular vector identity. The scalar equations already
proved in 09.5 remain part of the full hierarchy; using them here would
add unnecessary dependencies.

For a symmetric two-tensor $S$, define the completely expanded
divergence commutator
$$
 J_b(S)=-H^{ac}D_cS_{ab}
           +C_{aa}{}^cS_{cb}+C_{ab}{}^cS_{ac}.
 \tag{2.3}
$$
Differentiation of Codazzi is exactly
$$
 \dot\beta_b
 =D_b\operatorname{tr}V-D^aV_{ab}
  -H_b{}^cD_c\theta-J_b(X)
  +(\operatorname{tr}V\,I-V)_b{}^c\zeta_c
  +(\theta I-X)_b{}^c(-u_c-2H_c{}^d\zeta_d).
 \tag{2.4}
$$
There are no hidden differentiated connections in (2.4).

For clarity the two-dimensional reduction can be done as follows.
Use
$$
\begin{gathered}
 [D_a,D_b]\zeta_c
       =K_q(\delta_{ac}\zeta_b-\delta_{bc}\zeta_a),\\
 \epsilon_{ac}\epsilon_{bd}
       =\delta_{ab}\delta_{cd}-\delta_{ad}\delta_{bc},\\
 H^2-TH+\det(H)I=0,\qquad
 HX+XH-TX-\theta H+(T\theta-H:X)I=0.
\end{gathered}\tag{2.5}
$$
In particular, if $S_{ab}=D_a\zeta_b+D_b\zeta_a$ and
$f=\epsilon^{ab}D_a\zeta_b$,
$$
 D\operatorname{tr}S-\operatorname{div}S-{}^\star Df=-2K_q\zeta.
 \tag{2.6}
$$
This accounts for *both* curvature commutations.

To exhibit the rest of the cancellation, choose an oriented orthonormal
frame at the evaluation point and write
$$
 X=\begin{pmatrix}x&y\\y&z\end{pmatrix},\quad
 H=\begin{pmatrix}h&i\\i&j\end{pmatrix},\quad \zeta=(p,q).
$$
In (2.4), insert (2.2), subtract the four RHS terms of 09.(5.4),
and expand $D_a(X_{bc}H_{de})$ by the product rule.
The coefficients of each of $D_aX_{bc},D_aH_{bc},D_a\zeta_b,D_a\rho$
cancel. After (2.6), the remaining two components are
$$
 \mathcal E_{\beta,-}
 =-\{2K_q+2\rho+jx-2iy+hz\}(p,q)
 =-2G\zeta.
 \tag{2.7}
$$
For example $jx-2iy+hz=T\theta-H:X$; the anticommutator identity in
(2.5) eliminates the other matrix products. Equations (2.3)--(2.7)
give a pointwise tensor proof for arbitrary jets, not a selected metric
profile. Since $G=0$, the residual in 09.(5.4) vanishes identically.
V66 independently expands these same unrestricted first jets, with
$D_aD_b\zeta_c=D_{(a}D_{b)}\zeta_c+
K_q(\delta_{ac}\zeta_b-\delta_{bc}\zeta_a)/2$.

The own-vector row also closes. Let $A=\underline\alpha$,
$\dot H=-H^2-A=:B$, with $\operatorname{tr}A=0$ by Raychaudhuri.
Directly from (1.4),
$$
 \dot u=\operatorname{div}B-D\operatorname{tr}B+HDT+J(H)
       +(\operatorname{tr}B\,I-B)\zeta+(TI-H)(-u-2H\zeta).
$$
Expanding $D(H^2)$, using $D\det H=(TI-H):DH$ and (2.5), leaves
$$
 \dot u+2Tu+\operatorname{div}A-A\zeta=0.
 \tag{2.8}
$$
This is A.36b at $\nu=0,\eta=\zeta,\underline\xi=0$;
V67 checks the unrestricted $DH,DA$ calculation.

The remaining $e_3$ extreme is constructed, not prescribed:
$$
 \dot\alpha+\tfrac12T\alpha
 =D\widehat\otimes\beta
   -3(\widehat X\rho+{}^\star\widehat X\sigma)
   +5\zeta\widehat\otimes\beta .
 \tag{2.9}
$$
Here $(v\widehat\otimes w)_{ab}
=v_aw_b+v_bw_a-\delta_{ab}v\cdot w$, with no factor $1/2$;
the same definition applies to $D\widehat\otimes\beta$.
The initial $\alpha_0$ is fixed by the *plus* own-sheet optical
curvature. All sources in (2.9) are already known and tracefree.
This is a linear ODE for the opposite extreme, not freedom to alter a
Codazzi/Gauss curvature to force compatibility.
Together (2.7)--(2.9) and 09.(5.1)--(5.3) exhaust the five $e_3$
Bianchi transports (eight real components).

## 3. The mirror, including lapse, rotation and the plus rows

On $N_+$, the original framing is $e_4=c\partial_\eta$,
$c=2e^{m(x)}$, $b=0$, $\partial_\eta c=0$.
Put $w=D\log c$ and $t=\underline\eta=-\zeta-w=\omega^{(+)}$.
For the calculation only, interchange and boost the normals:
$$
 e'_3=c^{-1}e_4,\quad e'_4=ce_3,\quad
 H'=c^{-1}X,\quad X'=cH,\quad \zeta'=t,
$$
$$
 \beta'=-c\underline\beta,\quad
 \underline\beta'=-c^{-1}\beta,\quad
 \rho'=\rho,\quad \sigma'=-\sigma,\quad
 \underline\alpha'=c^{-2}\alpha,\quad \alpha'=c^2\underline\alpha.
 \tag{3.1}
$$
The cut orientation is unchanged. The signs follow directly from the
antisymmetry of $d_{a334}/2,d_{a434}/2$ and the normal-curvature
formula; the powers of $c$ count the null frame factors.
For example the primed Codazzi expression is
$$
 D(cT)-\operatorname{div}(cH)+c(TI-H)t
 =c[-(\operatorname{div}H-DT)+(TI-H)(w+t)]
 =-c\underline\beta.
$$
There is no assumption $D c=0$.

The primed own metric, Damour and mixed transports are precisely
(2.1)--(2.2), with generator $\partial_\eta$: the factors $c,c^{-1}$
cancel in the mixed quadratic terms, and $dt=-d\zeta$.
Rotate the dyad parallel for this calculation, then convert back using
$\not\nabla_4$, not a raw component derivative.
The result is the complete plus set:
$$
\begin{split}
 \not\nabla_4\underline\beta+\theta\underline\beta
    +D\rho-{}^\star D\sigma
    -2\widehat H\beta+3(t\rho-{}^\star t\sigma)&=0,\\
 e_4\rho+\tfrac32\theta\rho-\operatorname{div}\beta
             +\tfrac12\widehat H:\alpha-(\zeta+2t)\cdot\beta&=0,\\
 e_4\sigma+\tfrac32\theta\sigma+\operatorname{div}{}^\star\beta
             -\tfrac12H:{}^\star\alpha+(\zeta+2t)\cdot{}^\star\beta&=0,\\
 \not\nabla_4\beta+2\theta\beta-\operatorname{div}\alpha
                                      -\alpha(t+2\zeta)&=0,\\
 \not\nabla_4\underline\alpha+\tfrac12\theta\underline\alpha
  &=-D\widehat\otimes\underline\beta
    -3(\widehat H\rho-{}^\star\widehat H\sigma)
    -(4t-\zeta)\widehat\otimes\underline\beta .
\end{split}\tag{3.2}
$$
For the last coefficient $w+5t=4t-\zeta$; for the scalar coefficient
$w-t=-\zeta-2t$. These are the lapse terms easily lost in a bare
underlining rule. The last equation constructs the opposite extreme from
the *minus* optical value at the corner. The first four are identities.

Check against Appendix A.36--A.39: in the source gauge
$$
 \xi=\underline\xi=0,\quad \eta=\zeta,\quad
 \underline\zeta=-\zeta,\quad
 \omega=\underline\upsilon=0,\quad
 \upsilon=\nu,\quad\underline\omega=-\nu.
 \tag{3.3}
$$
On $N_-$, $\nu=0$; on $N_+$ it is **not** set to zero.
The $e_4$ rows use $\omega=\underline\upsilon=0$, so contain no
$\nu$. In general the $e_3$ own-vector RHS has $2\nu\underline\beta$,
the middle-vector RHS has $-2\nu\beta$, and the opposite-extreme
RHS has $-4\nu\alpha$. Dropping them off the affine minus sheet
would be wrong. This paper's $\sigma$ is Weyl curvature, not shear.

### 3.1 Direct plus-sheet substitution, without using the mirror

The mirror above is not used in this subsection.  Start instead with the
literal source rows A.36a, A.37a, A.38a--b and A.39a, set $J=0$, and
substitute only
$$
 \xi=\underline\xi=0,\quad \eta=\zeta,\quad
 \underline\zeta=-\zeta,\quad
 \omega=\underline\upsilon=0,\quad \underline\eta=t.
 \tag{3.4}
$$
The five right sides become, in source order,
$$
\begin{array}{c|l}
\text{row}&\text{directly substituted right side}\\ \hline
\mathrm{A.36a}&
 -D\widehat\otimes\underline\beta
 -3(\widehat H\rho-{}^\star\widehat H\sigma)
 -(4t-\zeta)\widehat\otimes\underline\beta,\\
\mathrm{A.37a}&
 -D\rho+{}^\star D\sigma+2\widehat H\beta
 +3(-t\rho+{}^\star t\sigma),\\
\mathrm{A.38a}&
 \operatorname{div}\beta-\tfrac12\widehat H:\alpha
 +(\zeta+2t)\cdot\beta,\\
\mathrm{A.38b}&
 -\operatorname{div}{}^\star\beta+\tfrac12H:{}^\star\alpha
 -(\zeta+2t)\cdot{}^\star\beta,\\
\mathrm{A.39a}&
 \operatorname{div}\alpha+\alpha(t+2\zeta).
\end{array}\tag{3.5}
$$
These are exactly the five covariant equations in (3.2), including the
opposite-extreme row A.36a.  No interchange of $e_3,e_4$, curvature
components or underlines has entered this check.

To expose every term which (3.5) packages covariantly, put
$$
 w=D\log c,\qquad t=-\zeta-w,qquad
 O^a{}_b=\Gamma_4{}^a{}_b,qquad e_4=c\partial_\eta.
 \tag{3.6}
$$
For a covector and a symmetric two-tensor,
$$
 (\not\nabla_4v)_a=c\partial_\eta v_a-O^b{}_av_b,qquad
 (\not\nabla_4S)_{ab}=c\partial_\eta S_{ab}
 -O^c{}_aS_{cb}-O^c{}_bS_{ac}.
 \tag{3.7}
$$
Thus the two vector rows and the opposite-extreme row contain respectively
the raw rotation terms $-O\underline\beta$, $-O\beta$ and
$-O_a{}^c\underline\alpha_{cb}-O_b{}^c\underline\alpha_{ac}$.
The three lapse-sensitive coefficients are, without suppression,
$$
 \zeta+2t=-\zeta-2w,qquad
 t+2\zeta=\zeta-w,qquad
 4t-\zeta=-5\zeta-4w.
 \tag{3.8}
$$
Dividing a row by $c$ replaces every $e_4$ derivative by
$\partial_\eta$ and every other displayed term by $c^{-1}$ times that
term; $c$ is positive and $e_4c=0$ on $N_+$.  The cut $D$ and
$\operatorname{div}$ in (3.5) are the covariant cut operators.  If they
are expanded in a rotating dyad, their intrinsic connection terms must be
kept in addition to (3.7); there is no legitimate raw derivative formula
which drops either contribution.

Equations (3.4)--(3.8) give a second, direct source-row derivation of all
five plus equations.  The substitutions agree with (3.2).  V73--V74
regress the coefficient and raw/covariant conversion algebra only; the
row proof is the displayed substitution itself.

## 4. Actual initial completion and its subsidiary system

### 4.1 The remaining frame/connection equations

The following specifies every still-needed complementary slot. Write
$O^a{}_b=\Gamma_4{}^a{}_b$, and
$\gamma_a{}^b{}_c$ for the intrinsic cut connection.
Metric compatibility and the source gauge give
$$
\begin{array}{ll}
 \nabla_a e_b=D_a e_b+\tfrac12X_{ab}e_3+\tfrac12H_{ab}e_4,&
 \nabla_a e_3=H_a{}^be_b+\zeta_ae_3,\\
 \nabla_a e_4=X_a{}^be_b-\zeta_ae_4,&
 \nabla_3e_a=\zeta_ae_3,\\
 \nabla_3e_3=2\nu e_3,\quad \nabla_3e_4=2\zeta^ae_a-2\nu e_4,&
 \nabla_4e_3=2t^ae_a,\quad \nabla_4e_4=0,\\
 \nabla_4e_a=O^b{}_ae_b+t_ae_4.&
\end{array}\tag{4.1}
$$
On $N_-$, take $c=c_0(x),\nu=0,t=-\zeta-D\log c$,
and solve the frame/rotation ODEs
$$
\begin{split}
 \dot E&=-HE,\qquad
 \dot b^A=2(\zeta-t)^aE_a{}^A,\quad b_0=0,\\
 \dot O&=2\sigma\epsilon
       +2(\zeta-t)^a\gamma_a
       +2(t\otimes\zeta-\zeta\otimes t),\quad O_0=O_4|_{S_0}.
\end{split}\tag{4.2}
$$
The value $O_0$ comes from the chosen plus dyad, not a new datum.
In a nonaffine comparison (4.2) additionally has
$\dot c=-2\nu c$, $-2\nu b$, and $-2\nu O$, respectively.
The required $e_3t$ source row is
$$
 \dot t=\underline\beta+H(\zeta-t).
 \tag{4.3}
$$
It follows from the *defined* $t$: (1.4) gives
$\partial_\xi D\log c=-H D\log c$, and Damour gives (4.3).
Thus there is no independently assigned torsion history.

On $N_+$, $E[q]$, $c=2e^m$, $b=0$, and $O_4$ are the
prescribed algebraic dyad and its rotation. The source has two apparent
equations for the same $\zeta$, from $e_4\Gamma_a{}^3{}_3$ and
$e_4\Gamma_3{}^a{}_4/2$. Both reduce to
$$
 \not\nabla_4\zeta=-\beta+X(t-\zeta).
 \tag{4.4}
$$
The geometric definition $\zeta=-t-w$ gives exactly this:
$\not\nabla_4t=\beta-2Xt$, $\not\nabla_4w=-Xw$.
The last scalar connection component is determined by
$$
 e_4\nu=-\rho+2t\cdot\zeta-|\zeta|^2,\qquad \nu_0=0.
 \tag{4.5}
$$
It is not set to zero on the plus sheet.

To check these equations directly, in (5.3b) use
$$
 d^a{}_{3,34}=2\underline\beta_a,\quad
 d^a{}_{b,34}=2\sigma\epsilon_{ab},\quad
 d^3{}_{3,4a}=-\beta_a,\quad d^3{}_{3,43}=-2\rho.
$$
For instance the lower-order terms for $e_3(2t_a)$ are
$2H_{ab}(\zeta-t)^b-4\nu t_a+4\nu t_a$;
those for $e_4(2\nu)$ are $2(t-\zeta)\cdot\zeta+2t\cdot\zeta$.
For the two $\zeta$ rows the raw-component result is in both cases
$-\beta+X(t-\zeta)-O\zeta$; adding $O\zeta$ gives (4.4).
These substitutions fix also the signs in (4.2).

For the intrinsic rotation row, (1.4) gives explicitly
$$
 \partial_\xi\gamma_a{}^b{}_c
 =-H_a{}^d\gamma_d{}^b{}_c+D_cH_a{}^b-D^bH_{ac}.
$$
The curvature term in that source row is
$d^b{}_{c,3a}=D_cH_a{}^b-D^bH_{ac}
 +\zeta^bH_{ac}-H_a{}^b\zeta_c$, by the uncontracted
$H$-Codazzi equation. The two extra connection products are
$-\zeta^bH_{ac}+H_a{}^b\zeta_c$; they cancel exactly.
The primed calculation (3.1) gives the plus version, including the
lapse corrections in (1.5).

The independent *tangential* Cartan constraints are exhausted as follows.
This table concerns pullback to a sheet, not unprescribed transverse jets
of a bulk metric.

The exhaustive source-row incidence, including raw component counts,
free/complementary status on both sheets, corner values and check status,
is `verification/SOURCE_ROW_LEDGER.md`.  Its checksum is 7 frame rows,
18 connection rows and 16 doubled-Bianchi rows, for all 41 evolved scalar
component rows of the gauge-fixed source system.  Gauge identities and the
six A.35 copy equalities are listed separately because they are constraints,
not additional evolved slots.

| Equation type | Minus-sheet realization | Plus-sheet realization |
|---|---|---|
| Tangential torsion, $a,b$ | $D[q]$, symmetric $X,H$ | same |
| Tangential torsion, generator/$a$ | $\dot E=-HE,\eta=\zeta$ | $e_4E=(O^T-X)E,\ t+\zeta=-D\log c$ |
| Curvature $a,b$, internal tangent pair | Gauss (09.3.1) | same |
| Curvature $a,b$, one internal null index | both uncontracted Codazzi equations | same |
| Curvature $a,b$, internal normal pair | normal Ricci (09.3.1) | same |
| Curvature generator/$a$, own second form | $\dot H=-H^2-\underline\alpha$ | $\not\nabla_4X=-X^2-\alpha$ |
| Curvature generator/$a$, opposite second form | 09.(3.2)--(3.3) | 09.(3.5) with antisymmetric normal Ricci |
| Curvature generator/$a$, normal connection | Damour (09.5.3) | (4.4), or the primed Damour equation |
| Curvature generator/$a$, intrinsic rotation | (1.2)--(1.4) and the $H$-Codazzi identity | (1.5) and the $X$-Codazzi identity |
| Additional complementary $3,4$ rows | (4.3), rotation (4.2) | duplicate (4.4), scalar (4.5) |
| Complementary Weyl rows/copies | (2.7)--(2.9), 09.(5.1)--(5.3) | (3.2) |

In two dimensions a skew pair $a,b$ has one component; its Codazzi
contraction determines the full uncontracted tensor. The tangent
curvature pair has just Gaussian curvature. Thus the table does not
discard uncontracted equations. The intrinsic-rotation row is precisely
the connection variation (1.2), with its normal-connection contributions
in (4.1); its skew part is the same Codazzi equation, not an independent
curvature assignment.

### 4.2 A homogeneous initial subsidiary system with all corners fixed

Let $F_{\rm geo}$ denote this explicit initial-cross construction:
09's prepared geometric fields, (2.9)/(3.2) for the two opposite
extremes, and (4.2)/(4.5) for the remaining gauge slots. The construction
uses only ODEs along a sheet, with prescribed corner values; it does not
invoke an Einstein development.

Let $F_{\rm red}$ solve the complementary source transports with the
same free data. On $N_-$, the unknown is $\phi$, and its angular
diagonal vanishes. On $N_+$, the unknown is $\psi$, and its angular
diagonal is $b^A=0$ in the *free* plus data. Thus both are ODEs, with
angular derivatives only of supplied free fields. Set $Q_s$ equal to
the complementary-slot difference. The preceding row verification gives
$$
 \partial_{\lambda_s}Q_s=M_sQ_s,\quad Q_s(0)=0,\qquad
 M_s=\int_0^1D_{\rm comp}\mathcal F_s
             (F_{\rm geo}+\tau Q_s,D F_{\rm free})\,d\tau.
 \tag{4.6}
$$
On the plus sheet divide the source RHS by the prescribed positive $c$.
Local Lipschitz continuity and the finite coefficient bounds give ODE
uniqueness and $Q_s=0$ on the entire supplied segment.

For an explicit residual vector, include $Q_s,D^0Q_s$ as well as
the requested physical residuals:
$$
 R_{\rm init}
 =(Q_s,D^0Q_s,R_{\rm torsion},R_{\rm Gauss},R_{\rm Codazzi},
   R_{\rm Ricci},R_{\rm Bianchi},R_{\rm copy},R_{\rm gauge}).
 \tag{4.7}
$$
After using the complementary evolution equations, every physical
residual is first order in angular fields and vanishes at $F_{\rm geo}$.
The exact fundamental theorem of calculus therefore expresses it as
$R=NQ_s+N^aD_a^0Q_s$. In particular
$$
 \partial_\lambda\binom{Q}{D_a^0Q}
 =\begin{pmatrix}M&0\\D_a^0M&M\end{pmatrix}
      \binom{Q}{D_a^0Q},\qquad
 \partial_\lambda R=
 [\dot N+NM+N^aD_a^0M]Q+[\dot N^a+N^aM]D_a^0Q.
 \tag{4.8}
$$
This is a homogeneous triangular first-order subsidiary system.
Higher angular jets use the binomial derivatives of $MQ$.
Generator jets are obtained by differentiating (4.6).
There is no claim of a closed equation for $R_{\rm copy}$ *alone*.

All corner residuals vanish: common $q,X,H,\zeta$ determine Gauss,
normal Ricci and both Codazzi curvatures once; each own extreme is used
as the other sheet's opposite-extreme initial value; the plus dyad fixes
$O_0$; $b_0=\nu_0=0,c_0=2e^m$. No equality of the two extremes
or the two second forms is required. The same corner identities and
(4.6) fix all generator derivatives that exist at the selected order.

### 4.3 Norms, the actual losses, differential and remainder

Distinguish two target norms:

* $I^k$ is exactly 08.(2.2), on the incoming **free** slots.
  Its constrained subset requires the compatibility just proved.
* $J^k$ is the sum of $\mathfrak H^k$ norms of **all** filled
  initial-sheet slots, in the fixed reference bundle.

The maps are $C_{\rm init}(d)=F_{\rm free}$ into the constrained
subset of $I^k$, and $\widetilde C_{\rm init}(d)=F_{\rm geo}$
into $J^k$. They must not be confused when quoting a loss.
Here $k\ge7$ is sufficient for the reduced theorem, with all 06/09
positive margins and $s\ge\max(12,k+6)$ for the full construction.

The additional operations have this dependency count:

| Output | Operation after 09 | Sufficient input order for $J^k$ |
|---|---|---|
| $X,H$, free curvatures | already 09.3--4 | $k+5$ |
| $t,c,E,b$ | $D\log c$, products, frame/label ODE | at most $k+5$ |
| $\nu,O_4$ | $\rho,\sigma,\gamma_a$, algebra, linear ODE | at most $k+5$ |
| opposite extreme | one angular derivative of $\beta$ or $\underline\beta$ | $k+6$ |

Apply 09.(4.3) at index $k+1$ for the last row.
For $x'=Lx+f$, differentiate along the generator:
$$
 \partial_\lambda^{r+1}x
 =\sum_{p=0}^r {r\choose p}(\partial_\lambda^pL)
                  \partial_\lambda^{r-p}x+\partial_\lambda^rf.
 \tag{4.9}
$$
Gronwall at $H^k$, then (4.9) at $H^{k-r-1}$, proves the
$\mathfrak H^k$ bound. All newly added ODEs are linear/affine in
their own unknown, with prescribed positive $c$; fixed finite length
causes finite exponential growth, not a new derivative loss.
The half-order corner norms are covered by the spare derivatives shown
in the table.

Since compatibility changes no free slot, the actual bounds are
$$
\begin{split}
 \|\Delta C_{\rm init}\|_{I^k}&\le C\|\Delta d\|_{\mathcal D^{k+5}},\\
 \|\Delta\widetilde C_{\rm init}\|_{J^k}
                         &\le C\|\Delta d\|_{\mathcal D^{k+6}}.
\end{split}\tag{4.10}
$$
The first bound extends to $s\ge\max(12,k+5)$: run the compatibility
construction at order $k-1$ and use 09.(4.3) for the free slots.
Then the complementary transports and first-order constraints are
classical at the needed order; the target norm is still only $I^k$.
This is not a claim that all complementary slots have $J^k$ regularity
from $k+5$ derivatives.

Define the differential of every newly added ODE by
$$
 (\delta x)'=L\delta x+\delta L\,x+\delta f,\qquad
 \delta x(0)=\delta x_0.
 \tag{4.11}
$$
The second variation has source
$\delta_1L\,\delta_2x+\delta_2L\,\delta_1x+
\delta_{12}L\,x+\delta_{12}f$.
The same product/inverse estimates and (4.9) give bounded first and
second derivatives, at losses five for $I^k$ and six for $J^k$.
Taylor's integral formula in the constrained project chart gives
$$
 \|C_{\rm init}(d+h)-C_{\rm init}(d)-DC_{\rm init}[d]h\|_{I^k}
 \le C\|h\|_{\mathcal D^{k+5}}^2,
 \tag{4.12}
$$
and the analogous $J^k,\mathcal D^{k+6}$ statement.
The differentiated identities (4.6)--(4.8) place these variations in
the constrained incoming tangent class. This proves neither existence
of a linearized *Einstein bulk metric* nor a nonlinear evolution remainder.

## 5. Pure-generator hierarchy for exact reduced solutions

### 5.1 Exact differentiated systems and their source orders

Use exactly 09.(6.1), including its reference terms:
$$
 p_\xi=U=g(F)-K^AD_A^0q,\qquad
 q_\eta=V=h(F)-v^AD_A^0q-L^AD_A^0p.
 \tag{5.1}
$$
Here $p,q$ are field blocks, not the cut metric, and $K^A,L^A$
are matrices. All coefficient derivatives below are total derivatives.
Define $z_r=\partial_\eta^rp$, $y_r=\partial_\xi^rq$.
The eliminated own jets are defined recursively, without an estimate:
$$
 q_{\eta^r}=\partial_\eta^{r-1}V,\qquad
 p_{\xi^r}=\partial_\xi^{r-1}U.
 \tag{5.2}
$$
In the first expression, replace every positive pure $\eta$ derivative
of $q$ recursively using the lower instances of (5.2); do the opposite
for the second expression. $D^0$ is independent of both null coordinates.

For a coefficient $a(F,\xi,\eta,x)$, the exact differentiation rule is
$$
 \partial_\eta^r a
 =a_F[\partial_\eta^rF]+\mathcal B_r(a;F,\ldots,\partial_\eta^{r-1}F),
 \tag{5.3}
$$
where $\mathcal B_r$ is the sum over all ordered partitions
$r=r_0+r_1+\cdots+r_j$, $r_i\ge1$ for $i>0$, of
$$
 \frac{r!}{r_0!\,r_1!\cdots r_j!\,j!}\,
 \partial_{\eta,\mathrm{exp}}^{r_0}D_F^ja
       [\partial_\eta^{r_1}F,\ldots,\partial_\eta^{r_j}F],
$$
omitting the term $j=1,r_0=0,r_1=r$;
include $j=0,r_0=r$. This also fixes explicit-coordinate derivatives.
The $\xi$ formula is identical. This rule and the binomial product rule
specify every lower term, not just a schematic highest symbol.

After (5.2), the exact equations are
$$
 \partial_\xi z_r=B_z z_r+f_{z,r},\qquad
 (\partial_\eta+v^AD_A^0)y_r=B_y y_r+f_{y,r},
 \tag{5.4}
$$
with the same $B_z,B_y$ as 09.(6.3), for every $r\ge1$.
For example, an explicit recursive definition of the first source is
$$
 f_{z,r}=\mathcal E_\eta\left[
  \partial_\eta^rg-\sum_{j=0}^r{r\choose j}
       (\partial_\eta^jK^A)D_A^0\partial_\eta^{r-j}q
                  \right]-B_z z_r ,
 \tag{5.5}
$$
where $\mathcal E_\eta$ is precisely the finite elimination (5.2).
For $f_{y,r}$, differentiate $V$ $r$ times in $\xi$, apply
$\mathcal E_\xi$, add $v^AD_A^0y_r$, and subtract $B_yy_r$.
These definitions are finite, exact differential expressions.

Here is the order induction behind the estimate. For $r\ge2$,
the highest lower-jet angular terms are
$$
 f_{z,r}=K^AL^BD_A^0D_B^0z_{r-1}+\text{other lower jets},
 \qquad
 f_{y,r}=L^AK^BD_A^0D_B^0y_{r-1}+\text{other lower jets}.
 \tag{5.6}
$$
No $D^0z_r,D^0y_r$ remains except the displayed $vD^0y_r$
on the left. Indeed $q_{\eta^r}$ starts with
$-L^AD_A^0z_{r-1}$; differentiating $U$ adds one angular
derivative. The same argument with $U,V$ exchanged gives the second
formula. Recursively expanding earlier own jets adds at most
$r-j+1$ angular derivatives to $z_j,y_j$, $j\le r-2$, and at
most $r+1$ to $F$. Coefficient products contain only lower jets.
Applying the product rule to such an expression either raises a lower
generator index by one or differentiates one of the eliminated own jets;
these two operations reproduce precisely these bounds at the next order.
Angular sorting adds only fixed-reference curvature terms.

For two exact solutions in the *same* reference bundle, put
$Z_r=z_{r,1}-z_{r,2}$, $Y_r=y_{r,1}-y_{r,2}$.
The exact difference equations are
$$
\begin{split}
 \partial_\xi Z_r&=B_{z,1}Z_r+\Delta B_z z_{r,2}+\Delta f_{z,r},\\
 (\partial_\eta+v_1D^0)Y_r
 &=B_{y,1}Y_r+\Delta B_y y_{r,2}+\Delta f_{y,r}
                                      -\Delta vD^0y_{r,2}.
\end{split}\tag{5.7}
$$
In particular the last term is not declared zeroth order without a
bound for the background derivative of $y_{r,2}$.

### 5.2 Induction theorem and the loss law

Fix $R\ge1$ and $N\ge2R+3$. Assume two smooth exact reduced solutions
on the same finite cell satisfy 08.(3.1) with $k=N$, the conversion
margins of 09.2, and bounded incoming $I^N$ norms.
Constants may depend on these uniform bounds, $N,R$, the cell-length
upper bounds, and fixed reference geometry; not on their difference.

First prove single-solution bounds inductively:
$$
 \sup_Q(\|z_{r,i}\|_{H^{N-2r}}+\|y_{r,i}\|_{H^{N-2r}})\le C,
 \qquad 1\le r\le R.
 \tag{5.8}
$$
The initial $r$-jets are controlled by $I^N$ at the stronger order
$N-r$. At step $r$, (5.6) needs the previous jet at order
$(N-2r)+2=N-2(r-1)$, already proved; lower jets and $F$ have the
orders listed after (5.6). At angular order at least two, the cut
$H^m$ algebra estimate controls products. All factors in each product
have the needed $H^m$ bound; this is not a claim that their derivative
orders must sum to $m$. The coefficient transport commutator is bounded
with the spare $H^{m+2}$ coefficient bound, exactly as in 09.(7.4).
ODE/transport energy and Gronwall prove (5.8).

For the difference, 09.(7.2) supplies the base
$\sup_Q\|W\|_{H^{N-1}}\le C\|\Delta d\|_{I^N}$.
Set $m_r=N-2r-1\ge2$. Telescope each product in (5.5);
differentiate smooth coefficients using their integral first variation.
The highest difference term is $D^{0,2}Z_{r-1}$ or
$D^{0,2}Y_{r-1}$, at exactly $H^{m_r}$.
The background term $\Delta vD^0y_{r,2}$ is controlled by (5.8),
which is one order stronger than the desired difference bound.
The remaining sources obey
$$
 \|\Delta B_z z_{r,2}+\Delta f_{z,r}\|_{m_r}
 +\|\Delta B_y y_{r,2}+\Delta f_{y,r}-\Delta vD^0y_{r,2}\|_{m_r}
 \le C\|\Delta d\|_{I^N}.
 \tag{5.9}
$$
The commutators are those of 09.(7.4), with $Z,Y$ replaced by
$Z_r,Y_r$. Integration by parts on the closed cut and Gronwall give
$$
 \boxed{\displaystyle
 \sum_{r=1}^{R}\sup_Q
   \big(\|\partial_\eta^rW_\phi\|_{H^{N-2r-1}}
        +\|\partial_\xi^rW_\psi\|_{H^{N-2r-1}}\big)
 \le C\|\Delta d\|_{I^N}.}
 \tag{5.10}
$$
The actual sufficient recurrence is
$$
 d_0=1,\quad d_1=3,\quad
 d_r=\max\{d_{r-1}+2,\ d_j+r-j+1\ (0\le j\le r-2),\ r+2\}
       =2r+1 .
 \tag{5.11}
$$
No optimality is claimed. This is a pure-generator hierarchy for the
special normalized source system (5.1), not a theorem for arbitrary
mixed null jets of a generic quasilinear hyperbolic system.
The eliminated own jets also satisfy
$\|\Delta q_{\eta^r}\|_{H^{N-2r}}+
\|\Delta p_{\xi^r}\|_{H^{N-2r}}\le C\|\Delta d\|_{I^N}$.

### 5.3 What the comparison with Cabet does and does not say

Source (3.34), (3.66)--(3.74) control a first transverse derivative in
the iteration at $H^{k_{\rm source}-3}$. Source (3.92)--(3.95)
adjoins *all* first derivatives and iterates a general system,
giving $k_{\rm source}-3i$. In Theorem 3.9,
$k_{\rm source}=\ell-1$, not the free incoming index $\ell$.
The sharper pure-jet count (5.11) is derived from (5.5)--(5.6);
it is not obtained by renaming a source index or assuming the iterative
sequence satisfies an exact-solution difference equation.

The required outgoing class (3.99) at index $k$ has every free
generator derivative $0\le r\le k$, continuous at angular order
$H^{k-r}$. It needs $k$ generator jets, not just $r=1$.
The next section uses one additional jet to prove all endpoint traces.

## 6. Traces and a local bounded reduced restart map

For every Hilbert space $H^j(S)$, an $H^1([0,L];H^j)$ function
has the absolutely continuous representative
$f(t)=f(t_0)+\int_{t_0}^tf'(s)\,ds$.
Choose $t_0$ with norm at most the $L^2$ average, then
$$
 \sup_{[0,L]}\|f\|_j^2
 \le \frac2L\|f\|_{L^2H^j}^2+2L\|f'\|_{L^2H^j}^2.
 \tag{6.1}
$$
This proves both endpoint traces; an $L^\infty$ angular norm alone
does not give them.

Take $R=k+1$, $N=2k+5$ in (5.10).
On $\xi=a$, put $f=\partial_\eta^rW_\phi$, $0\le r\le k$;
its generator derivative is $Z_{r+1}$. Both are bounded at least in
$H^{k-r}$. On $\eta=b$ use $Y_r,Y_{r+1}$.
The equations (5.4) also bound the complementary null derivative of
each jet, so restriction to $\xi=a$ or $\eta=b$ is legitimate,
not evaluation of an arbitrary $L^\infty(Q)$ equivalence class.
Hence
$$
 \|\Delta d_{\rm out}\|_{I^k}
 \le C\|\Delta d_{\rm in}\|_{I^{2k+5}}
 \tag{6.2}
$$
under the existing-solution/background hypotheses of (5.10).
Each free $r$-jet has continuous generator endpoints in $H^{k-r}$;
there is no assertion of a continuous pointwise function on $S$ when
$k-r\le1$. Length-uniform upper bounds follow from (5.10);
the factor $L^{-1}$ in the auxiliary trace proof is not used to claim
uniformity as a segment shrinks.

The proof also applies to finite-regularity limits. Approximate incoming
data in the stated characteristic norm, retain a common regular coefficient
neighborhood and existence width, and apply (5.10) to the smooth
solutions. The differences are Cauchy in the indicated uniform jet norms.
Distributional derivatives identify the limits; (6.1) fixes their endpoint
representatives. This supplies the traces rather than assuming them.

Here is a genuine local **reduced-source** version. Let $k\ge7$ and
$$
 \ell=2k+8,\qquad N=\ell-3=2k+5.
 \tag{6.3}
$$
Take a bounded neighborhood in the reduced incoming class $I^\ell$
whose complementary initial transports exist on the prescribed segments
with uniform regular margins and bounds. Use the common local width from
the reduced Theorem 3.9 and its proof. Its estimates supply
$\sup_Q\|F\|_{H^{\ell-2}}=\sup_Q\|F\|_{H^{N+1}}$
and the full $W^{1,\infty}$ background bounds needed by 08.(3.1).
Only this reduced existence/regularity assertion is imported here.
Combining uniqueness, (6.2), and $I^\ell\to I^N$ gives a local
Lipschitz map
$$
 \boxed{R_{\rm out,reduced}: \mathcal U\subset I_{\rm in}^{\,2k+8}
                         \longrightarrow I_{\rm out}^{\,k}.}
 \tag{6.4}
$$
The output complementary solution is the restriction of this same
reduced solution; the eliminated own jets show it has the required
lower regularity. Constant reversal of the marked generator intervals
at the future corner costs no Sobolev derivatives; if used, reflect
the reduced equations as well as their data.

This is a sufficient *one-cell reduced* index, not an optimal loss,
not a global regularity threshold, and not finite-grid continuation.
The physical Einstein/copy constraints on that output have **not** been
deduced from initial compatibility. In particular (6.4) is not
$\mathcal D_{\rm project}\to\mathcal D_{\rm project}$.

## 7. Gauge reset: quantitative pieces and the exact remaining gate

### 7.1 Label flow, inverse and positive margins

This subsection concerns supplied geometric coefficients, or kinematic
coefficients of an existing source solution; it does not identify a
reduced connection with the Levi-Civita connection of a vacuum metric.
Let $v\in C_tH^j(S)$, $j\ge4$, on a compact closed cut, and let
$\Phi_t$ solve $\dot\Phi_t=v(t,\Phi_t)$, $\Phi_0=\mathrm{id}$.
In local coordinates, with consistent reference-chart bounds,
$$
 \dot J=(Dv)\circ\Phi\,J,\qquad
 \partial_tJ^{-1}=-J^{-1}(Dv)\circ\Phi,\qquad
 \det J=\exp\!\int_0^t(\operatorname{div}v)\circ\Phi_s\,ds
 \tag{7.1}
$$
for the coordinate determinant; a reference density contributes its
usual smooth density ratio. In particular both singular values are bounded
between $\exp(-\int\|Dv\|_\infty)$ and
$\exp(\int\|Dv\|_\infty)$. Existence backwards in time supplies a
global inverse flow. Uniqueness of trajectories supplies injectivity;
a nonzero determinant alone would not do so.

Differentiate the flow equation $j$ times in labels. The top term is
$(Dv)\circ\Phi\,D^j\Phi$; the remaining chain-rule terms have one
factor $D^av\circ\Phi$ and products of lower derivatives of $\Phi$.
Change of variables using (7.1), the Sobolev product inequality and
induction give finite $C_tH^j$ bounds for flow and inverse.
For differences, the equation for
$\Phi_1-\Phi_2$ contains $v_2\circ\Phi_1-v_2\circ\Phi_2$.
The integral first variation costs one derivative of $v_2$;
the resulting guaranteed Lipschitz bound is in $C_tH^{j-1}$,
with high individual $H^j$ bounds. No loss-zero differentiability
claim for the Sobolev diffeomorphism group is made.

### 7.2 Affine factor, length and scalar normalization

Pull coefficients back along $\Phi$. The system is
$$
 \dot{\log a}=-\kappa\circ\Phi,\qquad
 \dot\lambda=a^{-1},\quad
 a(0)=a_0>0,\quad \lambda(0)=0.
 \tag{7.2}
$$
At fixed labels, bounded $\kappa\circ\Phi$ in $C_tH^j$,
bounded $a_0^{\pm1}$ in $H^j$, and $j\ge2$, give $C_tH^j$
bounds for $a^{\pm1},\lambda$, by the algebra estimate and the
integral/exponential formulas. Pointwise,
$$
 a_{\min}\ge(a_0)_{\min}e^{-T\|\kappa\|_\infty},\quad
 a_{\max}\le(a_0)_{\max}e^{T\|\kappa\|_\infty},\quad
 T/a_{\max}\le L(x)=\lambda(T,x)\le T/a_{\min}.
 \tag{7.3}
$$
Differences have the same fixed-label scalar estimate, with the one
derivative needed for a moving label composition counted as in 7.1.
In the actual source gauge
$\kappa_- =2\nu$, whereas
$\kappa_+=-n_+\log c$ for $n_+=c^{-1}e_4$;
along the plus label flow $a_+=a_{+0}c/c_0$.
The source $e_4$ itself is already affine.

If permitted by the framing policy, set
$\lambda_*=L_*\lambda/L(x)$ and
$\ell_*=(L/L_*)\ell$. Bounds for $L^{-1}$ and $D L$
follow from (7.3) and the scalar Sobolev estimate. This changes the
corner normalization; it cannot simultaneously preserve the old
normalizations and both fixed affine lengths without an extra condition.

### 7.3 Refoliation is not only the boost in 09.(9.3)

At a common fixed cut, the boost formulas 09.(9.3) are valid, with
$B_\pm\mapsto a_\pm B_\pm$, hence
$\theta_\pm,\sigma^\pm\mapsto a_\pm(\theta_\pm,\sigma^\pm)$.
Changing from equal source time to equal affine time also changes the
cuts. After label transport, a new cut is a graph $t=f(x)$.
For $g(n,\bar n)=-2$, its tangent and normalized opposite null normal are
$$
 E'_A=E_A+f_A n,\qquad
 \bar n'=\bar n+2(Df)^\sharp+|Df|_q^2 n.
 \tag{7.4}
$$
Direct inner products give $g(\bar n',E'_A)=0$,
$g(\bar n',\bar n')=0$, $g(n,\bar n')=-2$.
Thus keeping the old opposite normal would be wrong when $Df\ne0$.
In the convention
$\zeta_A=-\tfrac12g(\nabla_{E_A}n,\bar n)$ and
$\nabla_n n=\kappa n$, this gives
$$
 \zeta'_A=(\zeta_A-H_A{}^BD_Bf+\kappa D_Af)|_{t=f(x)}.
 \tag{7.5}
$$
Here $H_{AB}=\tfrac12\mathcal L_nq_{AB}$ is the second form of the
generator being reset: it is the source $H$ on the minus sheet and
$X/c$ for the coordinate-speed generator on the plus sheet.
An additional $n\mapsto an,\bar n'\mapsto a^{-1}\bar n'$ adds
$D_{\rm new}\log a$. At the shared original corner, which is not
refoliated, $m,\omega^{(\pm)},\widehat\omega$ transform by 09.(9.3).
These formulas distinguish the source curvature $\sigma$ from shear.

The first quantitative estimate **not completed here** is the full
anisotropic moving-cut composition estimate for (7.5), its label/inverse
pullbacks and the normalized graph $f(\lambda_*,x)$, simultaneously
for all output generator jets and their corner values:
$$
 \big\|(\zeta-H Df+\kappa Df)\circ(f,\Phi)
          +D_{\rm new}\log a\big\|_{\mathfrak H^{\,k-\ell_{\rm reset}}}
 \quad\hbox{and its difference bound in the same fixed project chart}.
 \tag{7.6}
$$
In particular the top differentiated trace is not controlled merely by
$\sup_t\|\partial_t^rF(t)\|_{L^2_x}$:
evaluation at $t=f(x)$ needs a genuine moving-graph estimate.
For a fixed scalar graph a useful starting inequality is
$$
 \int_S|g(f(x),x)|^2\,d\nu_0
 \le \int_S\sup_{t\in[0,T]}|g(t,x)|^2\,d\nu_0
 \le C_T\|g\|_{H_t^1L_x^2}^2.
 \tag{7.7}
$$
The last inequality follows pointwise in $x$ from the one-dimensional
fundamental theorem, then Fubini. It shows exactly the additional
generator derivative needed in that step. It is not by itself the
nonlinear, tensorial, inverse-graph and all-jets estimate (7.6).
No counterexample to a suitably lossy estimate is claimed; no finite
$\ell_{\rm reset}$ is assigned before that estimate is proved.

There is a separate typing gate: the input of a *geometric* reset must
satisfy the full outgoing metricity/Einstein constraints. A generic
element in the range of the **reduced** map (6.4) has not yet been proved
to do so. Initial-sheet (4.8) is not a bulk subsidiary theorem.
Consequently no map
$G_{\rm reset}:I_{\rm out}^k\to\mathcal D_{\rm out,project}^{k-\ell}$
is asserted here.

## 8. Stop line and the nine required verdicts

1. $C_{\rm Bianchi}$: **closed on both initial sheets**, in the
   precise sense of (2.7)--(3.2): dependent vector/scalar identities,
   plus opposite-extreme ODEs with fixed corner values.
2. Initial subsidiary system: **yes**, the augmented homogeneous
   triangular system (4.7)--(4.8), with all corner residuals zero.
   This is not a bulk or copy-only subsidiary theorem.
3. $C_{\rm init}$: **constructed**. Sufficient loss is five in the
   actual free-slot $I^k$ norm, six for the full filled-cross $J^k$
   norm. Neither is claimed optimal.
4. $DC_{\rm init}$ and completion quadratic remainder: **proved**,
   with the corresponding losses five/six, (4.11)--(4.12).
5. Pure-generator hierarchy: **proved as an exact reduced-solution
   estimate**, loss $d_r=2r+1$ under 5.2's background hypotheses.
   This does not claim the same law for all mixed jets.
6. Reduced restart: **yes locally**, (6.4), with sufficient input index
   $2k+8$, on the regular source neighborhood specified there.
   No Einstein output identification is included.
7. Full project affine reset: **not proved**. Flow/inverse and scalar
   affine estimates are available; (7.6) and the geometric-input gate
   remain. No full reset loss is declared.
8. $P_{\rm cell}^k$: **not proved**. First unfinished reset lemma is
   (7.6). The independent first Einstein-identification lemma must show
   that the torsion/curvature/copy/gauge residuals of the reduced bulk
   solution propagate from the completed incoming constraints.
   For the next step choose a **direct finite-regularity bulk subsidiary
   theorem**; do not replace it with reduced uniqueness. A quantitative
   metric-comparison route would be a different theorem.
9. $P_{\rm rect}^{s,r}$: **conditional and unchanged**.

The user-imposed ordering stops the quadratic *evolution* remainder audit
at these reset/Einstein gates. No linearized Einstein existence for every
project tangent or estimate of every term of 08.(5.2) is asserted.
The completion's quadratic remainder is not the evolution's remainder.

**Verified:** six xAct commutator residuals, fourteen unrestricted-jet,
mirror and connection-row Wolfram checks, and seventeen subsidiary-product,
higher-principal-prototype and affine/null-rotation checks; see RUN_LOG.

**Assumptions:** fixed source/copy convention, oriented closed cuts, the
specified regular framed project chart, bounded finite segments with
positive geometric/coordinate margins; high background assumptions for
the exact-solution estimates and the separate reduced existence theorem
for (6.4).

**Not verified:** the full reset estimate, bulk Einstein identification,
Einstein tangent surjectivity, one-cell $C^1$, or any rectangle theorem.
