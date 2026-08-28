# Global Maxwell Characteristic Restriction

## 1. Direct verdict

**G-A is proved** for the gauge-invariant finite-energy radiative Maxwell
space and the intrinsic target (4.4) of calculation 12.

**G-B is proved** for the fixed-asymptotic-frame smooth Schwartz potential
core. An energy-completed potential quotient remains `conditional` because no
independent potential Sobolev topology and asymptotic trace theorem have been
selected.

## 2. Full-Maxwell/master map

For every $\ell\geq1$, the action-derived electric and magnetic maps are

$$
\begin{aligned}
F_{uv}^E&=-s_\ell\Phi^E Y,&
F_{uA}^E&=(\partial_u\Phi^E)\mathbb E_A,&
F_{vA}^E&=-(\partial_v\Phi^E)\mathbb E_A,& F_{AB}^E&=0,\\
F_{uv}^B&=0,&
F_{uA}^B&=(\partial_u\Phi^B)\mathbb B_A,&
F_{vA}^B&=(\partial_v\Phi^B)\mathbb B_A,&
F_{AB}^B&=-s_\ell\Phi^B Y\epsilon_{AB}.
\end{aligned}
\tag{2.1}
$$

Both masters satisfy

$$
(2\partial_u\partial_v+\lambda_\ell)\Phi^P=0.
\tag{2.2}
$$

The inverse is the harmonic exact/coexact decomposition together with
$\Phi^E=-F_{uv}/s_\ell$ and
$\Phi^B=-\epsilon^{AB}F_{AB}/(2s_\ell)$. Hence (2.1) is a bijection in every
radiative field-strength sector; it is not merely a mode count.

Restricting (2.1) to $H_L^+$ and $H_R^+$ gives exactly the full dictionary
(4.3)--(4.5) of calculation 12, including the shared $E_0,B_0$.

## 3. Definition of the restriction map

Let $\operatorname{Sol}^{F,\rm rad}_{\rm Max,E}$ be the gauge-invariant
Maxwell field-strength solution space obtained from the independently
specified Cauchy-energy sum (2.5). Equivalently, the notation

$$
\operatorname{Sol}_{\rm Max,E}^{\rm rad}/\mathcal G_{\rm proper,\infty}
\tag{3.1}
$$

means solution classes labelled by the same field strength; it does not
silently assert a completed potential topology. Define

$$
R_\infty F=(F_{vA}|_{H_R^+},F_{uA}|_{H_L^+};
F_{uv}|_{S_0},F_{AB}|_{S_0}).
\tag{3.2}
$$

The trace estimate in the read-only global-completion lemma gives two
$H^1(\mathbb R_+)$ master profiles for every energy solution. The derivative
dictionary (2.1) then gives $(r,p)$ and the common $H^1$ corner traces give
$E_0,b^0$. Thus (3.2) lands continuously in the intrinsic space (4.4).

## 4. Reconstruction and both inverse composites

Given $x=(r,p;E_0,b^0)\in\mathcal X_\infty^{\rm Max}$:

1. apply the literal angular dictionary (4.3) to obtain $(f^P,g^P)$;
2. use the intrinsic fixed-point condition and set
   $a^P=T_{s_\ell}(f^P,g^P)$;
3. synthesize the unique global masters by (2.4) of calculation 12;
4. reconstruct $F$ by (2.1) and sum in the energy direct sum.

Call this map $G_\infty$. The closed analysis--synthesis identity gives

$$
R_\infty G_\infty x=x.
\tag{4.1}
$$

Conversely, for a bulk energy solution the same coefficient $a^P$ appears on
both sheets, so $T_{s_\ell}R_\infty\Phi^P=a^P$ and

$$
G_\infty R_\infty F=F.
\tag{4.2}
$$

Direct-sum Plancherel and the explicit $s_\ell$ weights give continuity of
both maps. Therefore

$$
\boxed{
R_\infty:
\operatorname{Sol}^{F,\rm rad}_{\rm Max,E}
\xrightarrow{\ \simeq\ }
\mathcal X_\infty^{\rm Max}}
\tag{4.3}
$$

is a continuous bijection. This proves G-A without defining the target as the
range of $R_\infty$.

## 5. Global asymptotic-frame theorem

The primary theorem (4.3) is gauge invariant and needs no potential at
infinity. For the secondary potential corollary, restrict to the smooth core
whose stationary coefficients and reconstructed potential coefficients are
Schwartz. Fix one global trivialization and the two asymptotic frames at
$z\to\pm\infty$, including their relative constant. Proper gauge parameters
satisfy

$$
\varepsilon(t,z,\cdot)\longrightarrow0
\quad (z\to\pm\infty)
\tag{5.1}
$$

in the smooth topology.

The massive null-direction estimate implies that the exact dressed-connection
coefficients and all differentiated radiative coefficients tend to their fixed
frame limits along both ends of $X_\infty$. Thus the finite endpoint sections
have a natural limit on this Schwartz core; no outer value is “fixed to zero”
by fiat.

If two admitted potentials have the same $F$, their difference is closed. As

$$
H^1_{\rm dR}(\mathbb R^{1,1}\times S^2)=0,
\tag{5.2}
$$

it is $d\varepsilon$. Equality of both asymptotic frames selects the primitive
obeying (5.1). Conversely, proper $d\varepsilon$ leaves $F$ unchanged. Hence

$$
\boxed{
\mathcal A^{\rm rad}_{\rm Sch}/\mathcal G_{0,\rm Sch}
\simeq \operatorname{Sol}^{F,\rm rad}_{\rm Max,Sch}
\simeq \mathcal X^{\rm Max}_{\infty,\rm Sch}.}
\tag{5.3}
$$

This proves G-B on the stated core.

## 6. Why the unanchored theory remains different

If independent nonzero asymptotic gauge limits or frame variations are
allowed, they are not proper. In split-frame polarization the finite corner
term contains the derived pair

$$
\delta E_0\wedge\delta\lambda_{\rm rel}.
\tag{6.1}
$$

Under fixed flux, one global trivialization, and fixed asymptotic frames,
$\lambda_{\rm rel}$ is fixed/derived and adds no independent radiative
coordinate. Without that policy the charged-frame theory is a different phase
space; it cannot be identified with the intrinsic field-strength space by
forgetting (6.1).

## 7. Evidence boundary

**Verified:** literal full-Maxwell/master inverse, both global inverse
composites, angular derivative weights, shared corner data, and the Schwartz
fixed-frame quotient.

**Assumptions:** trivial bundle, $Q_E=n=0$, $\ell\geq1$, round $S^2_R$,
finite energy for G-A, and Schwartz potential/gauge coefficients for G-B.

**Conditional:** an energy-completed potential quotient, independent
asymptotic gauge limits, charged frames, and nontrivial topology.
