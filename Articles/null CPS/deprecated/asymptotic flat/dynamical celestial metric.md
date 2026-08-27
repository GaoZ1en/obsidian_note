# Varying the celestial metric and generalized BMS

## 0. Verdict

Allowing

$$\begin{align}
\delta q_{AB}\neq0
\end{align}$$

does not define a unique theory。There are at least three inequivalent variational problems：

| Role of $q_{AB}$ | Is $\delta q$ allowed in functional differentiation? | Is $\delta q$ tangent to one CPS phase space? | Is $\operatorname{Diff}(S^2)$ automatically canonical? |
|---|---:|---:|---:|
| External source | Yes | No | No；it maps different source fibers |
| Boundary configuration variable | Yes | Yes | Only after a finite conjugate momentum/corner sector is supplied |
| Edge/frame field | Yes | Yes，in an enlarged space | The cotangent lift is canonical，but gluing to bulk gravity is extra dynamics |

There is also a sharp negative result：

> On the enlarged metric space，the Einstein--Hilbert symplectic current has an $\Omega^{-1}\delta q^{AB}\wedge\delta N_{AB}$ divergence。No ambiguity that is simultaneously local and covariant in the physical bulk fields removes it。

Thus a canonical smooth $\operatorname{Diff}(S^2)$ action requires at least one of：

1. fixed conformal frame/foliation and noncovariant counterterms；
2. nonlocal sphere/end-point variables；
3. new edge fields；
4. stronger restrictions on radiation。

This is the precise content of the “local-covariant obstruction”；it is not caused by polyhomogeneous radial logs。

P4 follow-up sharpens the Campiglia--Peraza entry。Their sphere two-form does have an explicit field-space primitive，but this primitive is nonlocal after $T_{AB}$ and the endpoint Goldstone potentials are eliminated。Section 11 proves that no finite-jet local primitive exists in the original-field category，and constructs a local first-order parent action after adjoining the corresponding elliptic auxiliary fields。

---

## 1. What “external source” means

Let

$$\begin{align}
S_{\rm ren} = S_{\rm ren} \left[ \Phi;q \right]
\end{align}$$

be a renormalized functional。Treating $q_{AB}$ as an external source means：

- $q_{AB}$ is an argument of $S_{\rm ren}$；
- one may vary it to define a response；
- the path integral or classical variational problem does not integrate over $q_{AB}$；
- no Euler--Lagrange equation is imposed on $q_{AB}$；
- for a fixed-source CPS fiber，tangent vectors obey $\delta q_{AB}=0$。

The first variation has the schematic form

$$\begin{align}
\delta S_{\rm ren} = \int_M E_\Phi\delta\Phi +\Theta_{\rm rad} +\frac12 \int_{\mathscr I} du\,d^2x\sqrt q\, \mathcal T_q^{AB}\delta q_{AB} +\Theta_{\rm cuts}.
\end{align}$$

The response is

$$\begin{align}
\mathcal T_q^{AB} := \frac{2}{\sqrt q} \frac{\delta S_{\rm ren}}{\delta q_{AB}}.
\end{align}$$

It is analogous to a holographic stress tensor。Its existence does not make $q_{AB}$ dynamical。

For every fixed source，there is a phase space

$$\begin{align}
\mathcal S_q.
\end{align}$$

A sphere diffeomorphism generally acts as

$$\begin{align}
\mathcal S_q \longrightarrow \mathcal S_{\varphi^*q}.
\end{align}$$

This is covariance of a bundle of theories，not a Hamiltonian symmetry acting inside a single fiber。

---

## 2. Finite-slab model with general $q_{AB}$

Retain：

- four-dimensional vacuum Einstein gravity；
- $\Omega=1/r$ fixed；
- finite $u$-slab；
- Bondi determinant gauge；
- first radial-log sector and its all-finite-$N$ completion；
- smooth metrics $q_{AB}(x)$ on $S^2$；
- $\partial_uq_{AB}=0$ in the BMSW sector。

The exact angular metric remains

$$\begin{align}
\gamma_{AB} = r^2q_{AB} \sqrt{ 1+\frac{[\mathcal C\mathcal C]_q}{2r^2}
} +r\mathcal C_{AB}, \qquad q^{AB}\mathcal C_{AB}=0.
\end{align}$$

All contractions、$D_A$ and $R[q]$ now depend on $q_{AB}$。Variations preserve the determinant parametrization，so

$$\begin{align}
\delta \left( q^{AB}\mathcal C_{AB} \right) =0
\end{align}$$

rather than separately imposing

$$\begin{align}
q^{AB}\delta\mathcal C_{AB}=0
\end{align}$$

when $\delta q\neq0$。

### 2.1 Two leading source sectors

The BMSW boundary conditions used by Freidel--Riello are

$$\begin{align}
b=0, \qquad F=0, \qquad U^A=0,
\end{align}$$

which imply

$$\begin{align}
\partial_uq_{AB}=0.
\end{align}$$

Within BMSW：

- BMSW allows an independent Weyl parameter；
- generalized BMS fixes the area form；
- ordinary BMS additionally fixes a chosen round $q_{AB}$。

The generalized-BMS tangent condition is

$$\begin{align}
\delta\sqrt q=0,
\end{align}$$

so only the tracefree part of $\delta q_{AB}$ is active。

---

## 3. Radial renormalization with $\delta q\neq0$

GLZ find on a large constant-time surface a linearly divergent symplectic form

$$\begin{align}
\boxed{ \Omega_{\rm div} = \frac1{16\pi G} \int_{\mathscr I} du\,d^2x\, \frac12 \delta \left( \sqrt q\,q^{AB} \right) \wedge \delta N_{AB}, }
\end{align}$$

up to their overall convention，where

$$\begin{align}
N_{AB}=\partial_uC_{AB}.
\end{align}$$

Because

$$\begin{align}
\partial_uq_{AB}=0,
\end{align}$$

the integrand is a retarded-time descent：

$$\begin{align}
\boxed{ \delta \left( \sqrt q\,q^{AB} \right) \wedge \delta N_{AB} = \partial_u \left[ \delta \left( \sqrt q\,q^{AB} \right) \wedge \delta C_{AB} \right].
}
\end{align}$$

It is therefore removable on a finite slab by a cut/corner ambiguity。Mathematica returned zero for the difference of the two sides with $q_{AB}$ taken $u$-independent。

This subtraction is distinct from imposing $\delta q=0$。It retains a finite $q$-sector canonical pairing。

### 3.1 Why this does not yet contradict the no-go theorem

The subtraction uses：

- a Bondi/conformal frame；
- the preferred foliation by $u$；
- the split into cuts；
- explicit boundary data at $\Omega=0$。

It is therefore not an ambiguity constructed solely as a local covariant form of the physical metric。This is precisely one of the loopholes left open by the local-covariant theorem。

---

## 4. The finite canonical pairs

Freidel--Riello give a finite renormalized potential on their accessible conformal off-shell space。Suppressing the common gravitational normalization and orientation sign，their general $d=4$ Bondi expression is

$$\begin{aligned}
\Theta_R^{\Omega} \big|_{\mathscr I} = & \sqrt q\,e^b \left[ -\frac12 \mathring N_{0\langle A}{}^{B\rangle} \delta C_B{}^A +\Pi_{0A} \delta \left( e^{-b}\Upsilon_1^A \right) \right]
\\
& +\sqrt q\,e^b \left[ -\frac12
\mathring N_{1\langle A}{}^{B\rangle}
\delta q_{\langle B}{}^{A\rangle} \right.
\\
& \left.
{}- \left( \frac12\mathring N_1-\widehat N_1 \right)
\delta\ln\sqrt q +\mathring N_1\delta b +\Pi_{1A}
\delta \left( e^{-b}U^A \right) \right].
\end{aligned}
\end{aligned}$$

The pairs are therefore：

| Configuration variation | Conjugate response |
|---|---|
| $\delta C_A{}^B$ | radiation aspect $\mathring N_{0A}{}^B$ |
| $\delta q_{\langle A}{}^{B\rangle}$ | $\mathring N_{1\langle A}{}^{B\rangle}$，containing the Coulombic/log-anomaly datum in the general frame |
| $\delta\ln\sqrt q$ | mass-type combination $\frac12\mathring N_1-\widehat N_1$ |
| $\delta b$ | $\mathring N_1$ |
| $\delta U^A$ | angular-momentum aspect $\Pi_{1A}$ |

After the BMSW conditions

$$\begin{align}
b=F=U^A=0
\end{align}$$

are imposed，this simplifies to

$$
\boxed{
\begin{aligned}
\Theta_R^\Omega
\big|_{\mathscr I}
=
-\sqrt q
\bigg[
&
\frac14
\left(
\partial_uC_A{}^B
\right)
\delta C_B{}^A
\\
&
+\frac18
\left(
2R[q]-\Delta
\right)
C_A{}^B
\delta q_B{}^A
\\
&
+\left(
M+\frac14D_AD_BC^{AB}
\right)
\delta\ln\sqrt q
\bigg].
\end{aligned}
}
$$

For generalized BMS，

$$\begin{align}
\delta\ln\sqrt q=0,
\end{align}$$

so the active new pair is the tracefree celestial metric and its response

$$\begin{align}
\delta q_{\langle B}{}^{A\rangle} \quad\longleftrightarrow\quad \frac18 \left( 2R[q]-\Delta \right)
C_A{}^B,
\end{align}$$

up to the common normalization and finite canonical transformations。

The first radial-log tensors do not create an additional bulk radiative pair in this BMSW subspace。In the fully general Carrollian frame，the Coulombic anomaly enters the response conjugate to $q_{AB}$。

---

## 5. GLZ finite form and the $D_{AB}$ endpoint mode

Before fixing the area form，the GLZ finite two-form is，again suppressing only the common Einstein--Hilbert factor，

$$\begin{aligned}
\Omega_{\rm GLZ} = \int_{\mathscr I} \bigg\{ & \frac12 \delta \left( \sqrt q\,N_{AB} \right) \wedge \delta C^{AB}
\\
& -\frac14
\delta \left( \sqrt q\,R[q]C_{AB} \right) \wedge \delta q^{AB}
\\
& -\frac12
\delta \left( \sqrt q\,q^{AB} \right) \wedge \delta \left( D_AD^CC_{BC} \right)
\\
& -2\delta\sqrt q \wedge \delta \left( \mathcal M +\frac3{32}\partial_u[CC] +\frac14D_AD_BC^{AB} \right)
\\
& +\frac12\partial_u \left[ \delta \left( \sqrt q \left( uC_{AB}-D_{AB} \right) \right) \wedge \delta q^{AB} \right]
\bigg\}.
\end{aligned}$$

This formula makes three facts explicit：

1. varying $q_{AB}$ adds genuine finite canonical pairs；
2. the non-peeling datum $D_{AB}$ occurs in a cut term；
3. for fixed $q_{AB}$ all new terms disappear and the Ashtekar--Streubel form remains。

At finite $u_\pm$，the $D_{AB}$ term is a legitimate corner sector。Whether it remains finite when $u_\pm\to\pm\infty$ is a Stage 7 question。

### 5.1 Common-domain action dictionary and the GLZ pullback

There are three logically distinct objects which should not be denoted by the same symbol：

$$\begin{align}
\mathcal F_{\rm D}^{\rm off}, \qquad \mathcal F_{\rm FR}^{\rm acc}, \qquad \mathcal S_{\rm GLZ}.
\end{align}$$

The first is the broad Bondi off-shell domain of `4d nonlinear gravity.md`。The second is the Freidel--Riello accessible off-shell space，which imposes Pbc1--3 and

$$\begin{align}
\widetilde E_{\rm div}=0.
\end{align}$$

The third is the GLZ solution space：their construction first solves the vacuum hypersurface and evolution equations in the chosen polyhomogeneous expansion and only then evaluates the Einstein--Hilbert potential。Thus

$$\begin{align}
\boxed{ \mathcal S_{\rm GLZ}
\xhookrightarrow{\ \iota\ } \mathcal F_{\rm FR}^{\rm acc} \subset \mathcal F_{\rm D}^{\rm off}, }
\end{align}$$

after imposing the common BMSW frame and compatible log caps。There is no GLZ off-shell Lagrangian on the right-hand space in the cited construction。

#### Exact field dictionary

With

$$\begin{align}
\Omega=\frac1r,
\end{align}$$

the two exact physical Bondi metrics agree under

$$\begin{align}
\boxed{ b_{\rm FR}=2\beta, \qquad \Upsilon^A_{\rm FR}=U^A, \qquad \Phi_{\rm FR}=-\frac{V}{2r^2}, }
\end{align}$$

and

$$\begin{align}
\boxed{ \gamma_{AB}^{\rm FR} = \Omega^2\widetilde\gamma_{AB} = q_{AB} \sqrt{ 1+\frac{\Omega^2[\mathcal C\mathcal C]_q}{2}
} + \Omega\mathcal C_{AB}.
}
\end{align}$$

The first box follows by comparing

$$\begin{align}
-2e^{b_{\rm FR}}du \left( dr+r\Phi_{\rm FR}du \right)
\end{align}$$

with the physical Bondi $(u,r)$ block。On the BMSW solution locus，

$$
\boxed{
\begin{aligned}
\gamma_{1AB}^{\rm FR}&=C_{AB},
&
\Theta_{0AB}^{\rm FR}&=\frac12C_{AB},
\\
\Theta_{1AB}^{\rm FR}&=D_{AB},
&
\Pi_{0A}^{\rm FR}&=\frac12D^BC_{AB},
\\
\Phi_1^{\rm FR}&=\frac14R[q],
&
\Phi_2^{\rm FR}&=-M.
\end{aligned}
}
$$

For logarithmic tracefree coefficients，

$$\begin{align}
\left( \gamma_{(n,m)AB}^{\rm FR} \right)^{\rm TF} = (-1)^m \left( \gamma_{(n,m)AB}^{\rm GLZ} \right)^{\rm TF},
\end{align}$$

because $\log r=-\log\Omega$；in particular the first GLZ $E_{AB}^{1,m}$ block sits at conformal order $\Omega^3(\log\Omega)^m$。

#### Relative action dictionary on the common off-shell domain

Restore the standard Einstein--Hilbert normalization。Let

$$\begin{align}
\boldsymbol B_{\rm D}
\end{align}$$

denote the oriented GHY/null/joint Dirichlet completion used in `4d nonlinear gravity.md`，and let $\boldsymbol C_{\rm D}$ denote its relative corner potential。Freidel--Riello's two radial counterterm steps are

$$\begin{align}
\boldsymbol\ell_{\rm FR} = \frac1{8\pi G} \left( \boldsymbol\ell_1+\boldsymbol\ell_2 \right), \qquad \boldsymbol\vartheta_{\rm FR} = \frac1{8\pi G} \left( \boldsymbol\vartheta_1+\boldsymbol\vartheta_2 \right),
\end{align}$$

where

$$\begin{align}
\ell_1^\Omega = \sqrt g \left( \nu-\Omega\widehat{\mathcal N} \right), \qquad \vartheta_1^{\Omega i} = -\frac12\sqrt g\,\delta V^i,
\end{align}$$

and，in $d=4$，

$$\begin{aligned}
\ell_2^\Omega =& -\Omega^{-1} \left[ L_{\rm can} \right]_0 + \log\Omega \left[ L_{\rm can} \right]_1
\\
& + \left( \Omega\log\Omega-\Omega \right) \left[ L_{\rm can} \right]_{(2,1)}, \\
\vartheta_2^{\Omega i} =& -\Omega^{-1} \left[ \theta_{\rm can}^i \right]_0 + \log\Omega \left[ \theta_{\rm can}^i \right]_1
\\
& + \left( \Omega\log\Omega-\Omega \right) \left[ \theta_{\rm can}^i \right]_{(2,1)}.
\end{aligned}$$

These expressions are local on $\mathcal F_{\rm FR}^{\rm acc}$；the use of Pbc and $E_{\rm div}=0$ is part of that statement。

Writing the Dirichlet representative distributionally as

$$\begin{align}
\boldsymbol L_{\rm D} = \boldsymbol L_{\rm EH} + d\boldsymbol B_{\rm D},
\end{align}$$

the exact common-domain dictionary is

$$\begin{align}
\boxed{ \boldsymbol L_{\rm FR,R}
- \boldsymbol L_{\rm D} = -d \left( \boldsymbol\ell_{\rm FR} + \boldsymbol B_{\rm D} \right), }
\end{align}$$

and

$$\begin{align}
\boxed{ \boldsymbol\Theta_{\rm FR,R}
- \boldsymbol\Theta_{\rm D} = -\delta \left( \boldsymbol\ell_{\rm FR} + \boldsymbol B_{\rm D} \right) + d_\partial \left( \boldsymbol\vartheta_{\rm FR}
- \boldsymbol C_{\rm D} \right).
}
\end{align}$$

This compares the same regulated Einstein--Hilbert action、the same orientation and the same accessible off-shell fields。It is an exact relative-action identity，not an equality imposed after the Einstein equations。

For the physical outer orientation，which is opposite to increasing $\Omega$，the BMSW limit is

$$
\boxed{
\begin{aligned}
\Theta_{\rm FR,out}^{\rm BMSW}
=
\frac1{8\pi G}
\int_{\mathscr I}
du\,d^2x\sqrt q
\bigg[
&
\frac14\dot C_A{}^B\delta C_B{}^A
\\
&
+
\frac18
\left(
2R[q]-\Delta
\right)
C_A{}^B\delta q_B{}^A
\\
&
+
\left(
M+\frac14D_AD_BC^{AB}
\right)
\delta\ln\sqrt q
\bigg].
\end{aligned}
}
$$

At fixed $q$ this immediately gives the standard

$$\begin{align}
\frac1{32\pi G}
\int_{\mathscr I} \sqrt q\, \delta\dot C^{AB} \wedge \delta C_{AB}.
\end{align}$$

#### What GLZ adds and what it cannot determine

On $\mathcal S_{\rm GLZ}$，their Cauchy-slice prescription gives the exact corner relation

$$\begin{align}
\boxed{ \Omega_{\rm GLZ} = \frac1{16\pi G} \int_{\mathscr I} \delta\theta_{0,\rm GLZ}^r
- \frac1{32\pi G}
\int_{\mathscr I}
\partial_u \left[ \delta q^{AB} \wedge \delta \left( \sqrt q\,uC_{AB} \right) \right].
}
\end{align}$$

Their finite representative contains the more informative non-peeling corner one-form

$$\begin{align}
\boxed{ Y_{\rm GLZ} = \frac1{32\pi G} \int_{S^2} \sqrt q \left( uC_{AB}-D_{AB} \right) \delta q^{AB}, }
\end{align}$$

whose field-space derivative gives the last $u$-descent in $\Omega_{\rm GLZ}$。The remaining difference from the FR canonical polarization consists of the explicitly displayed GLZ field-space-exact term

$$\begin{align}
\frac1{16\pi G}
\delta \left[ 2\sqrt q\,\mathcal M
- \frac3{16}\sqrt q\,\partial_u[CC] + u\sqrt q \left( R[q]-2 \right) \right]
\end{align}$$

and a closed-sphere angular divergence。This is the action/canonical/corner dictionary available on the solution locus。

It cannot be promoted to a three-way off-shell equality by “matching coefficients”。A two-form on $\mathcal S_{\rm GLZ}$ determines neither a unique potential

$$\begin{align}
\Theta \sim \Theta+\delta B+dY
\end{align}$$

nor any off-shell Lagrangian or boundary equations。Constructing a GLZ-labelled $L_{\rm ren}$ on $\mathcal F_{\rm FR}^{\rm acc}$ would therefore be a new extension，not information contained in the GLZ solution-space calculation。

The precise verdict is：

$$
\boxed{
\begin{gathered}
\text{Dirichlet}\leftrightarrow\text{FR is an exact off-shell relative-action map；}
\\
\text{FR}\longrightarrow\text{GLZ is only the pullback }\iota^*
\text{ plus the displayed corner polarization。}
\end{gathered}
}
$$

Thus the originally requested “same off-shell GLZ action dictionary” does not exist as a comparison of the cited constructions；the missing datum is a GLZ off-shell action itself。

---

## 6. The local-covariant obstruction

Flanagan--Prabhu--Shehzad work in the conformal completion

$$\begin{align}
g_{ab} = \Omega^2\widetilde g_{ab}.
\end{align}$$

Take one ordinary radiative perturbation

$$\begin{align}
\gamma_{1ab} := \delta_1g_{ab} = \Omega\tau_{1ab},
\end{align}$$

and one extended perturbation

$$\begin{align}
\gamma_{2ab} := \delta_2g_{ab} = \mathcal O(1)
\end{align}$$

that changes the universal metric at $\mathscr I$。For the Einstein--Hilbert symplectic current

$$\begin{align}
\omega_{abc} = \frac1{16\pi G} \varepsilon_{dabc}w^d,
\end{align}$$

they derive

$$\begin{align}
\boxed{ \Omega\,n_aw^a = \frac12 \gamma_2^{AB} \delta_1N_{AB} +\mathcal O(\Omega).
}
\end{align}$$

Therefore

$$\begin{align}
n_aw^a \sim \frac1{2\Omega} \gamma_2^{AB} \delta_1N_{AB}
\end{align}$$

for generic radiation。It is finite only if：

- $\gamma_{2AB}|_{\mathscr I}=0$，which returns to ordinary BMS；or
- $\delta_1N_{AB}=0$，which removes radiation。

### 6.1 Why an ordinary action counterterm cannot cure it

Adding a boundary Lagrangian changes the potential by a field-space exact term and leaves the symplectic current unchanged：

$$\begin{align}
\delta_1\delta_2B -\delta_2\delta_1B =0.
\end{align}$$

The remaining ambiguity is

$$\begin{align}
\theta
\longmapsto
\theta+dY,
\end{align}$$

so

$$\begin{align}
\omega
\longmapsto
\omega +d \left[ Z(\delta_1,\delta_2) -Z(\delta_2,\delta_1) \right],
\end{align}$$

where

$$\begin{align}
Z(\delta_1,\delta_2) = \delta_1Y(\delta_2)
\end{align}$$

must obey the integrability condition

$$\begin{align}
\delta_3Z(\delta_1,\delta_2) -\delta_1Z(\delta_3,\delta_2) =0.
\end{align}$$

Locality、covariance and scaling leave only two possible $\Omega^{-2}$ tensor structures for the required leading $Z$。Neither satisfies this integrability condition when $\delta_3g_{AB}|_{\mathscr I}\neq0$。Hence no local covariant $Y$ removes the divergence。

This theorem does not rule out：

- frame-dependent counterterms；
- nonlocal sphere functionals；
- a current that is noncovariant while its integral is covariant；
- additional edge fields。

### 6.2 All-order no-go for the strict intrinsic/conformal category

Define $\mathfrak C_{\rm strict,conf}$ by the following simultaneous requirements：

1. the off-shell domain contains arbitrary smooth $\delta q_{AB}$ and independent radiative $\delta N_{AB}$；
2. boundary and corner densities are local finite-jet functionals of the physical metric and its intrinsic conformal-boundary data；
3. no preferred Bondi cut、defining function、explicit cutoff、normal-frame spurion、inverse tangential operator or edge field is available；
4. the renormalized potential is a local spacetime-covariant current，not merely a frame-dependent current with a covariant integral；
5. $S_{\rm ren}$ and its first two variations are finite on the same domain。

### Theorem 6.1

There is no all-order renormalization scheme in $\mathfrak C_{\rm strict,conf}$。

#### Proof

Suppose such a $C^2$ scheme existed。At the first radiative weight its symplectic current would have to remove

$$\begin{align}
\boxed{ \omega_{\rm div} \sim \frac{1}{32\pi G\,\Omega} \boldsymbol\epsilon_{\mathscr I}\, \delta q^{AB} \wedge \delta N_{AB}.
}
\end{align}$$

An action counterterm changes $\theta$ by $\delta B$ and hence cannot change $\omega$。The only remaining action-compatible ambiguity is

$$\begin{align}
\theta\mapsto\theta+dY, \qquad \omega\mapsto\omega+d\,\delta Y.
\end{align}$$

Flanagan--Prabhu--Shehzad classify the local covariant tensors with the required conformal weight。The two possible leading structures fail the field-space integrability condition for $Y$ when $\delta q_{AB}$ and $\delta N_{AB}$ are independent。Therefore no $Y$ in $\mathfrak C_{\rm strict,conf}$ cancels the displayed class。

This obstruction occurs at order $\Omega^{-1}$。Terms at deeper polyhomogeneous order have strictly larger radial weight，so no higher-order or all-order completion can first repair it。This contradicts the assumed finite $\Omega_{\rm ren}$ and therefore the assumed common $C^2$ action scheme。$\square$

The theorem is stronger than “we have not classified every counterterm”：it supplies a nontrivial leading divergence class。It also explains precisely why the existing positive schemes lie outside the category：

- the fixed-$q$ action has $\delta q_{AB}=0$；
- the GLZ cut subtraction uses a preferred Bondi $u$-foliation；
- Freidel--Riello keep $\delta\Omega=0$ as background structure，impose the Penrose conditions and $E_{\rm div}=0$ on the accessible off-shell space，and obtain a current with a conformal/diffeomorphism anomaly；
- Campiglia--Peraza use nonlocal sphere and endpoint variables；
- a cotangent edge completion changes the field content。

Thus the maximal positive statement is category-dependent：strict intrinsic and fully physical conformal covariance are obstructed，whereas local boundary-diffeomorphism covariance relative to a fixed conformal completion remains possible。

---

## 7. Smooth generalized BMS transformations

Let

$$\begin{align}
\alpha_Y := \frac12D_AY^A.
\end{align}$$

For generalized BMS with fixed area form，

$$\begin{align}
\boxed{ \delta_Yq_{AB} = \mathcal L_Yq_{AB} -2\alpha_Yq_{AB}
}
\end{align}$$

and

$$\begin{align}
\boxed{ \delta_YC_{AB} = \mathcal L_YC_{AB} +\alpha_Yu\partial_uC_{AB} -\alpha_YC_{AB}.
}
\end{align}$$

The metric variation is tracefree：

$$\begin{align}
q^{AB}\delta_Yq_{AB} = 2D_AY^A -4\alpha_Y =0,
\end{align}$$

so

$$\begin{align}
\delta_Y\sqrt q=0.
\end{align}$$

Mathematica returned zero for both trace and area residuals。

For ordinary BMS，one further requires

$$\begin{align}
D_{\langle A}Y_{B\rangle}=0,
\end{align}$$

so $\delta_Yq_{AB}=0$ and $Y^A$ is a global conformal Killing field of the chosen round metric。

Smooth generalized BMS has no punctures。Punctures arise in the different extended-BMS choice where local meromorphic conformal Killing fields are allowed；then the punctures act as additional codimension-two boundaries。Section 13 constructs the corresponding counterterm、defect-action、residue and sewing data and proves that the completion is not unique。

---

## 8. Three completions

### 8.1 External-source bundle

Define

$$\begin{align}
\mathfrak S_{\rm source} = \bigsqcup_q \mathcal S_q.
\end{align}$$

Each fiber has

$$\begin{align}
\Omega_q = \frac1{32\pi G} \int_{\mathscr I} du\,d^2x\sqrt q\, \delta N^{AB} \wedge \delta C_{AB}, \qquad \delta q=0.
\end{align}$$

$\operatorname{Diff}(S^2)$ acts on the total bundle but is not generated by a Hamiltonian inside a fixed fiber。This is the cleanest choice if the project remains action-first and symmetry is only a diagnostic。

### 8.2 Campiglia--Peraza nonlocal completion

Campiglia--Peraza take

$$\begin{align}
\Gamma = \bigcup_{ q:\sqrt q=\sqrt{\mathring q}
}
\Gamma_q
\end{align}$$

and add a sphere/corner two-form

$$\begin{align}
\Omega^{S^2} = \int_{S^2}\sqrt q \left( \delta p^{AB}\wedge\delta q_{AB} +\delta\Pi^{AB}\wedge\delta T_{AB}[q] \right).
\end{align}$$

The full form

$$\begin{align}
\Omega = \Omega^{\mathscr I} +\Omega^{S^2}
\end{align}$$

makes smooth $\operatorname{Diff}(S^2)$ canonical and reproduces the generalized-BMS algebra。

It evades the local-covariant obstruction because：

- $T_{AB}[q]$ is nonlocal in $q_{AB}$；
- endpoint Goldstone potentials are nonlocal in $C_{AB}^{\pm}$；
- the construction is not derived from a local spacetime symplectic current；
- it assumes

$$\begin{align}
\partial_uC_{AB} = \mathcal O \left( |u|^{-2-\epsilon} \right), \qquad \epsilon>0.
\end{align}$$

The last assumption excludes the generic $|u|^{-2}$ tail relevant to logarithmic soft scattering。Thus this is a consistent canonical completion，but not yet the generic polyhomogeneous scattering phase space sought here。

### 8.3 Local edge-field completion

Introduce an independent fixed-area metric variable and its tracefree momentum

$$\begin{align}
\left( q_{AB}, p^{AB} \right), \qquad q_{AB}p^{AB}=0,
\end{align}$$

with

$$\begin{align}
\boxed{ \Omega_{\rm edge} = \int_{S^2} \delta p^{AB} \wedge \delta q_{AB}.
}
\end{align}$$

The cotangent lift of $\operatorname{Diff}(S^2)$ is automatically Hamiltonian。Its kinematical moment map is

$$\begin{align}
\boxed{ H_Y^{\rm edge} = \int_{S^2} p^{AB} \left( \mathcal L_Yq_{AB} -2\alpha_Yq_{AB} \right).
}
\end{align}$$

Adding the radiative contribution gives a canonical generalized-BMS action on the enlarged product space。

This construction does not by itself identify

$$\begin{align}
p^{AB}
\end{align}$$

with the bulk gravitational response。Section 12 derives that identification from a single bulk-plus-edge action。In the Freidel--Riello bulk representative with the GLZ Cauchy-corner polarization，the interface equation is

$$\begin{align}
P_{\rm ren}^{AB} + p_{\rm grav}^{AB} =0,
\end{align}$$

up to the chosen outward-orientation sign。At finite cutoff，an edge transgression supplies the opposite of the Flanagan--Prabhu--Shehzad divergent two-form；after absorbing this affine divergent shift into $P_{\rm ren}^{AB}$，the displayed finite equation follows。The construction is action-derived but remains renormalization-scheme dependent，as every finite corner canonical transformation shifts both momenta by equal and opposite amounts。

---

## 9. Stage 5 theorem

### Theorem 9.1：category-dependent generalized BMS verdict

On the finite-$u$ polyhomogeneous vacuum class：

1. $q_{AB}$ may be varied consistently as an external source，and the renormalized action defines its finite response；
2. the radial $\delta q$ divergence is a cut descent once $\partial_uq_{AB}=0$；
3. Freidel--Riello's accessible conformal space carries the finite canonical pairs of section 4；
4. the Dirichlet and Freidel--Riello representatives obey the exact common-domain relative-action dictionary of section 5.1；
5. GLZ is an on-shell pullback with an explicit Cauchy/corner polarization，not a third off-shell action；
6. no local covariant ambiguity of the physical Einstein--Hilbert current makes arbitrary $\delta q$ radiative variations finite；
7. smooth generalized BMS is therefore not a canonical symmetry of the fixed-source phase space；
8. it is canonical on the Campiglia--Peraza nonlocal completion and on the action-derived cotangent edge completion of section 12；
9. the Campiglia--Peraza sector has a nonlocal transgression action and a local auxiliary-field parent action，but no local finite-jet action in the original $(q_{AB},C_{AB})$ variables；generic logarithmic $u$ tails remain outside its domain；
10. in the explicit Freidel--Riello plus GLZ-corner scheme，a cotangent-edge collar gives an action-derived momentum gluing equation，while an edge Wess--Zumino transgression cancels the leading local-covariant obstruction by changing the field category；
11. meromorphic extended BMS is canonical only after excision and the addition of specified puncture defect sectors；finite pole strata admit local Laurent counterterms，but the full algebra requires a direct limit and no universal defect orbit or finite counterterm list exists。

In addition，Theorem 6.1 rules out an all-order strict-intrinsic、physical-spacetime-covariant completion already at the leading $\Omega^{-1}\delta q\wedge\delta N$ weight。

Thus Stage 5 has a definite obstruction rather than a unique preferred enlargement。

### Decision table

| Requirement | External source | FR accessible space | Campiglia--Peraza | Local edge extension |
|---|---:|---:|---:|---:|
| Action-derived | Yes | Yes | Nonlocal transgression；local only with auxiliaries | Yes on the section 12 finite-slab gluing scheme |
| Local spacetime current | Fiberwise | Conformal/frame-dependent renormalized current | No | Edge-local relative to a fixed conformal frame |
| Full physical covariance | Fiberwise covariance | Conformal covariance with PBC/$E_{\rm div}$ assumptions | Integrated $\operatorname{Diff}(S^2)$ covariance | Depends on edge action |
| Smooth Diff$(S^2)$ canonical | No within one fiber | Reduction not fully completed | Yes | Yes after the regulated anomaly-inflow gluing |
| Generic $|u|^{-2}$ tails | Radial stage only | Endpoint stage open | No | Not yet analyzed |
| First radial logs | Allowed | Allowed | Not included in generic form | Can be added |

---

## 10. Sources and verification

Sources：

- Éanna Flanagan，Kartik Prabhu and Ibrahim Shehzad，[Extensions of the asymptotic symmetry algebra of general relativity](https://arxiv.org/abs/1910.04557)。
- Miguel Campiglia and Javier Peraza，[Generalized BMS charge algebra](https://arxiv.org/abs/2002.06691)。
- Laurent Freidel and Aldo Riello，[Renormalization of conformal infinity as a stretched horizon](https://arxiv.org/abs/2402.03097)。
- Marc Geiller，Alok Laddha and Céline Zwikel，[Symmetries of the gravitational scattering in the absence of peeling](https://arxiv.org/abs/2407.07978)。
- Geoffrey Compère，Adrien Fiorucci and Romain Ruzziconi，[Superboost transitions, refraction memory and super-Lorentz charge algebra](https://arxiv.org/abs/1810.00377)。

Verified：

- the exact source TeX was inspected for the Freidel--Riello general and BMSW potentials；
- the Freidel--Riello source was inspected for both radial Lagrangian counterterms、both corner-potential counterterms、the Pbc/$E_{\rm div}$ domain and the statement that the conformal factor is background structure；
- the exact source TeX was inspected for the Flanagan--Prabhu--Shehzad $\Omega^{-1}$ obstruction and ambiguity argument；
- the exact source TeX was inspected for the Campiglia--Peraza extended two-form、nonlocality statement and $u$ falloffs；
- the exact GLZ source TeX was inspected for the prior solution-space construction、the Einstein--Hilbert potential components、the divergent and finite general-$q$ symplectic forms and the Cauchy-slice corner relation；
- Mathematica verified the finite-$u$ endpoint descent and the generalized-BMS fixed-area trace identity。
- Mathematica returned zero for the exact Bondi metric map

$$\begin{align}
b_{\rm FR}=2\beta, \qquad \Phi_{\rm FR}=-\frac{V}{2r^2},
\end{align}$$

  for the coefficient map $\Phi_1=R[q]/4,\Phi_2=-M$，and for $\log r=-\log\Omega$ through log degree five。

Assumptions：

- smooth $q_{AB}$ and smooth $Y^A$；
- finite $u$-slab until Stage 7；
- fixed area form for generalized BMS；
- Freidel--Riello formulae retain their PBC and $E_{\rm div}$ accessible-space assumptions；
- overall signs in cross-paper symplectic potentials depend on boundary orientation，and common gravitational normalizations were suppressed where stated。

Not verified：

- an independently defined GLZ off-shell action；this object is absent from the cited construction and cannot be reconstructed uniquely from its solution-space two-form；
- finiteness under generic $u\to\pm\infty$ logarithmic tails；
- a derivation of the puncture orbit、holonomy and central coupling from the Einstein--Hilbert action。

---

## 11. Campiglia--Peraza sphere action：original-field no-go and local parent

### 11.1 Exact source object

Campiglia--Peraza work in units $32\pi G=1$。Their extended two-form is

$$\begin{align}
\Omega_{\rm CP} = \Omega^{\mathscr I} + \Omega^{S^2},
\end{align}$$

with

$$\begin{align}
\Omega^{\mathscr I} = \int_{\mathscr I}du\,d^2x\sqrt q\, \delta\partial_uC^{AB} \wedge \delta C_{AB}.
\end{align}$$

Contrary to a possible reading of the earlier status table，the paper explicitly gives a sphere primitive

$$\begin{align}
\boxed{ \Theta_{\rm CP}^{S^2} = \Theta_{\rm soft} + \Theta_{\partial\mathscr I}
}
\end{align}$$

where

$$\begin{align}
\Theta_{\rm soft}(\delta) = \int_{S^2}d^2x\sqrt q\, {}^1N^{AB}\, {}^1\mathsf S_{AB}(\delta),
\end{align}$$

$$\begin{align}
{}^1\mathsf S_{AB}(\delta) := \left[ 2\delta T_{AB} + D_{(A}D^C\delta q_{B)C}
- \frac R2\delta q_{AB} \right]^{\rm TF},
\end{align}$$

and

$$\begin{align}
\Theta_{\partial\mathscr I}(\delta) = -\frac12
\sum_{\sigma=\pm}\sigma \int_{S^2}d^2x\sqrt q\, C_\sigma^{AB} \left[ \delta\,{}^0\mathsf S_{c_\sigma,AB}
- {}^0\mathsf S_{\delta c_\sigma,AB}
- c_\sigma\,{}^1\mathsf S_{AB}(\delta) \right].
\end{align}$$

Here

$$\begin{align}
{}^0\mathsf S_{f,AB} := -2 \left( \overline D_A\overline D_Bf \right)^{\rm TF},
\end{align}$$

$$\begin{align}
{}^1N_{AB} := \int_{-\infty}^{+\infty}du\, u\,\partial_uC_{AB},
\end{align}$$

and

$$\begin{align}
C^\sigma_{AB} = {}^0\mathsf S_{c_\sigma,AB}.
\end{align}$$

The symbol

$$\begin{align}
\int_{\partial\mathscr I} = \int_{\mathscr I^+_+}
- \int_{\mathscr I^+_-}
\end{align}$$

accounts for the factor $\sigma$。The covariant derivative $\overline D$ is local in $(q,\psi)$，but $\psi$ is the superboost/uniformization potential。

The field-space exterior derivative is

$$\begin{align}
\boxed{ \delta\Theta_{\rm CP}^{S^2} = \Omega_{\rm CP}^{S^2}
}.
\end{align}$$

After sphere integration by parts，the same pair is

$$\begin{align}
\Theta_{\rm CP}^{S^2} = \int_{S^2}d^2x\sqrt q \left( p^{AB}\delta q_{AB} + \Pi^{AB}\delta T_{AB} \right),
\end{align}$$

$$\begin{align}
\boxed{ \Omega_{\rm CP}^{S^2} = \int_{S^2}d^2x\sqrt q \left( \delta p^{AB}\wedge\delta q_{AB} + \delta\Pi^{AB}\wedge\delta T_{AB} \right)
}.
\end{align}$$

Thus the missing object was not a field-space primitive。The issue is its angular locality and its relation to a bulk action。

### 11.2 The two inverse angular operators

First consider the endpoint Goldstone。On the round sphere，

$$\begin{align}
\mathcal Kf_{AB} := -2 \left( D_AD_Bf \right)^{\rm TF}.
\end{align}$$

The exact identity

$$\begin{align}
D^AD^B \left( D_AD_Bf \right)^{\rm TF} = \frac12 D^2(D^2+2)f
\end{align}$$

gives

$$\begin{align}
\boxed{ c_\sigma = - \left[ D^2(D^2+2) \right]^{-1} D^AD^BC^\sigma_{AB}
}
\end{align}$$

on the $\ell\geq2$ subspace。The $\ell=0,1$ kernel is the ordinary translation ambiguity and must be either projected out or treated as

$$\begin{align}
c_\sigma \sim c_\sigma+a_\sigma+b_{\sigma i}n^i.
\end{align}$$

For a spherical harmonic with

$$\begin{align}
D^2Y_{\ell m} = -\lambda_\ell Y_{\ell m}, \qquad \lambda_\ell=\ell(\ell+1),
\end{align}$$

the inverse contains

$$\begin{align}
\frac1{\lambda_\ell(\lambda_\ell-2)}.
\end{align}$$

Second，$T_{AB}$ is nonlocal in $q_{AB}$。Introducing $\psi$，

$$\begin{align}
T_{AB} = 2 \left( D_A\psi D_B\psi + D_AD_B\psi \right)^{\rm TF},
\end{align}$$

$$\begin{align}
R[q] = 2 \left( e^{-2\psi}
- D^2\psi \right).
\end{align}$$

Linearization at the unit round sphere gives

$$\begin{align}
\boxed{ \delta\psi = -\frac12 (D^2+2)^{-1} \delta R
}.
\end{align}$$

The $\ell=1$ kernel is the conformal-isometry ambiguity fixed in Campiglia--Peraza by a reference round metric。Consequently $\delta T/\delta q$ contains the Green operator $(D^2+2)^{-1}$。

These are genuine inverses，not shorthand for a finite derivative expansion。They also identify the exact zero-mode projectors needed to define the CP phase space。

### 11.3 Original-field local no-go

Define $\mathfrak C_{\rm CP}^{\rm orig}$ to consist of sphere one-forms built only from

$$\begin{align}
q_{AB}, \qquad C_{AB}(u), \qquad C^\pm_{AB}, \qquad {}^1N_{AB},
\end{align}$$

the fixed area form，and finitely many $D_A$ derivatives at the same angular point。No Green operator、reference-frame field、new auxiliary field or puncture datum is allowed。

Suppose

$$\begin{align}
\Theta_{\rm loc}\in\mathfrak C_{\rm CP}^{\rm orig}
\end{align}$$

satisfied

$$\begin{align}
\delta\Theta_{\rm loc} = \Omega_{\rm CP}^{S^2}.
\end{align}$$

The linearization of $\delta\Theta_{\rm loc}$ about a round metric is a finite-order differential operator。On spherical harmonics its eigenvalues are polynomial in $\lambda_\ell$，up to the fixed tensor-harmonic factors。

However $\Theta_{\partial\mathscr I}$ contains the nonzero term

$$\begin{align}
\frac12 \sum_{\sigma=\pm}\sigma \int_{S^2}\sqrt q\, C_\sigma^{AB}c_\sigma\, {}^1\mathsf S_{AB}(\delta q).
\end{align}$$

At a generic nonzero electric endpoint shear，its mixed

$$\begin{align}
\delta C^\sigma_{AB} \wedge \delta q_{CD}
\end{align}$$

part contains

$$\begin{align}
\left[ D^2(D^2+2) \right]^{-1}.
\end{align}$$

No polynomial in $\lambda_\ell$ equals

$$\begin{align}
\frac1{\lambda_\ell(\lambda_\ell-2)}
\end{align}$$

for every $\ell\geq2$。Independently，the soft term contains $(D^2+2)^{-1}$ through $\delta T[q]$。Since the field-space exterior derivative of a finite-jet local one-form remains finite-jet local，the assumed equality is impossible。

Therefore

$$\begin{align}
\boxed{ \text{There is no }
\Theta_{\rm loc} \in \mathfrak C_{\rm CP}^{\rm orig} \text{ with } \delta\Theta_{\rm loc} = \Omega_{\rm CP}^{S^2}.
}
\end{align}$$

This is an angular-locality no-go。It is distinct from the Flanagan--Prabhu--Shehzad spacetime-current obstruction，although the two are compatible。

### 11.4 Local auxiliary-field parent action

The no-go disappears if the inverse variables are retained rather than eliminated。Introduce on

$$\begin{align}
\mathcal B_{\rm aux} = [\tau_-,\tau_+]\times S^2
\end{align}$$

the fields

$$\begin{align}
q_{AB}, \quad \psi, \quad T_{AB}, \quad c_\pm, \quad C^\pm_{AB}, \quad {}^1N_{AB},
\end{align}$$

where $\tau$ is an auxiliary edge-evolution coordinate，not Bondi retarded time。Define the local constraints

$$\begin{align}
\mathcal U := R[q]
- 2 \left( e^{-2\psi}
- D^2\psi \right) =0,
\end{align}$$

$$\begin{align}
\mathcal T_{AB} := T_{AB}
- 2 \left( D_A\psi D_B\psi + D_AD_B\psi \right)^{\rm TF} =0,
\end{align}$$

$$\begin{align}
\mathcal M^\sigma_{AB} := C^\sigma_{AB}
- {}^0\mathsf S_{c_\sigma,AB} =0.
\end{align}$$

Let $\Theta_{\rm CP}^{\rm loc}(z;\dot z)$ be the expressions of section 11.1 with

$$\begin{align}
\delta \longrightarrow
\partial_\tau.
\end{align}$$

Because $(q,\psi,T,c_\pm)$ are now independent，this density contains only finitely many sphere derivatives。A local first-order parent action is

$$\begin{align}
\boxed{ S_{\rm CP}^{\rm parent} = \int_{\tau_-}^{\tau_+}d\tau \left\{ \Theta_{\rm CP}^{\rm loc}(z;\dot z) + \int_{S^2}d^2x\sqrt q \left[ \lambda\,\mathcal U + \lambda_T^{AB}\mathcal T_{AB} + \sum_{\sigma=\pm} \mu_\sigma^{AB}\mathcal M^\sigma_{AB} \right] \right\}.
}
\end{align}$$

The multipliers carry no $\tau$ derivatives，so they do not alter the symplectic two-form。Their equations impose the elliptic constraints。Solving those constraints with the $\ell=0,1$ projectors and reference-frame convention，then substituting back，reproduces the nonlocal CP primitive。

The remaining $u$ moment can also be localized。Introduce $\chi_{AB}(u,x)$ and impose

$$\begin{align}
\partial_u\chi_{AB} = u\,\partial_uC_{AB}, \qquad \chi_{AB}(u_-)=0, \qquad {}^1N_{AB} = \chi_{AB}(u_+).
\end{align}$$

A multiplier term

$$\begin{align}
S_{\rm moment} = \int_{\mathscr I}du\,d^2x\sqrt q\, \Lambda^{AB} \left( \partial_u\chi_{AB}
- u\partial_uC_{AB} \right)
\end{align}$$

together with endpoint multipliers makes this gluing local in $u$。Likewise

$$\begin{align}
C^\sigma_{AB} = \iota_\sigma^*C_{AB}
\end{align}$$

is imposed by a local endpoint multiplier。Thus every inverse/integral in the reduced CP formula has an explicit local parent variable and constraint。

### 11.5 Exterior derivative and variation of the parent action

For arbitrary field-space vectors $\delta_1,\delta_2$，

$$\begin{align}
\delta\Theta_{\rm CP}^{\rm loc}
(\delta_1,\delta_2) = \delta_1\Theta_{\rm CP}^{\rm loc}(\delta_2)
- \delta_2\Theta_{\rm CP}^{\rm loc}(\delta_1)
- \Theta_{\rm CP}^{\rm loc}
([\delta_1,\delta_2]).
\end{align}$$

On

$$\begin{align}
\mathcal U = \mathcal T_{AB} = \mathcal M^\sigma_{AB} =0,
\end{align}$$

this is exactly the CP definition of

$$\begin{align}
\Omega_{\rm soft} + \Omega_{\partial\mathscr I}.
\end{align}$$

Equivalently，

$$\begin{align}
\delta
\int_{S^2}\sqrt q \left( p^{AB}\delta q_{AB} + \Pi^{AB}\delta T_{AB} \right) = \int_{S^2}\sqrt q \left( \delta p^{AB}\wedge\delta q_{AB} + \delta\Pi^{AB}\wedge\delta T_{AB} \right),
\end{align}$$

where fixed-area variations remove the variation of $\sqrt q$。Therefore

$$\begin{align}
\boxed{ \left.
\delta\Theta_{\rm CP}^{\rm loc} \right|_{\rm constraints} = \Omega_{\rm CP}^{S^2}.
}
\end{align}$$

Variation of the transgression action gives

$$\begin{align}
\delta S_{\rm CP}^{\rm parent} = \left[ \Theta_{\rm CP}^{\rm loc}(\delta) \right]_{\tau_-}^{\tau_+} + \int_{\tau_-}^{\tau_+}d\tau\, \Omega_{\rm CP}^{S^2} (\delta,\partial_\tau) + \text{constraint equations}.
\end{align}$$

This is a genuine local boundary/edge action on the enlarged field space。It is not a local action of the original bulk fields alone。

### 11.6 Bulk gluing

Let the action-derived renormalized bulk potential at the gluing sphere be

$$\begin{align}
\Theta_{\rm bulk}^{S^2} = \int_{S^2}d^2x\sqrt q\, \pi_{\rm bulk}^{AB}\delta q_{AB} + \cdots.
\end{align}$$

On the reduced CP constraint surface，

$$\begin{align}
\Theta_{\rm CP}^{S^2} = \int_{S^2}d^2x\sqrt q \left[ p^{AB} + \left[ \left( \mathcal D_qT \right)^*\Pi \right]^{AB} \right] \delta q_{AB},
\end{align}$$

where $\mathcal D_qT$ is the linearization of the nonlocal map $q\mapsto T[q]$，its formal adjoint includes the integrations by parts，and the endpoint contributions are already contained in $p^{AB}$。Thus stationarity of

$$\begin{align}
S_{\rm tot} = S_{\rm bulk}^{\rm ren} + S_{\rm CP}^{\rm parent} + S_{\rm trace} + S_{\rm moment}
\end{align}$$

gives the orientation-dependent momentum gluing equation

$$\begin{align}
\boxed{ \pi_{\rm bulk}^{AB} + \sigma \left[ p^{AB} + \left( \mathcal D_qT \right)^*\Pi^{AB} \right] =0.
}
\end{align}$$

In the local parent formulation，the same nonlocal adjoint is represented by the local $\psi,T$ multiplier equations；one never inserts a Green operator into the action。Variations of the trace and moment multipliers give

$$\begin{align}
C^\sigma_{AB} = \iota_\sigma^*C_{AB}, \qquad {}^1N_{AB} = \int du\,u\partial_uC_{AB},
\end{align}$$

and the variations of the bulk traces give the equal-and-opposite endpoint momenta。Hence the sphere action does glue to the bulk，provided the bulk response $\pi_{\rm bulk}^{AB}$ is taken from the same renormalized action。Section 12 performs that identification for the independent cotangent edge momentum。

### 11.7 Covariance and domain

There are three distinct covariance statements：

1. the reduced CP action is nonlocal but invariant under integrated smooth fixed-area $\operatorname{Diff}(S^2)$；
2. the parent action is sphere-local and fixed-area $\operatorname{Diff}(S^2)$ covariant if

$$\begin{align}
\delta_Y\psi = \mathcal L_Y\psi-\alpha_Y, \qquad \delta_Yc_\pm = \mathcal L_Yc_\pm-\alpha_Yc_\pm,
\end{align}$$

   and the multipliers transform in the dual representations；
3. neither statement makes the action a local covariant functional of the four-dimensional physical metric。The reference uniformization frame and the $\ell=0,1$ projectors remain part of the definition。

The CP endpoint domain also retains

$$\begin{align}
\partial_uC_{AB} = O(|u|^{-2-\epsilon}), \qquad \epsilon>0.
\end{align}$$

For the generic $|u|^{-2}$ tail，${}^1N_{AB}$ has the logarithmic anomaly analyzed in `spatial infinity and endpoints.md`；the action above requires the corresponding tail-corner renormalization and is not silently extended to that sector。

### Theorem 11.1

The Campiglia--Peraza sphere sector has：

1. an explicit nonlocal primitive $\Theta_{\rm CP}^{S^2}$；
2. no finite-jet local primitive in the original $(q_{AB},C_{AB})$ field category；
3. a local fixed-area $\operatorname{Diff}(S^2)$-covariant auxiliary-field parent action；
4. exact reduction to $\delta\Theta_{\rm CP}^{S^2}=\Omega_{\rm CP}^{S^2}$ after imposing the uniformization、Geroch and endpoint-potential constraints；
5. local trace/moment gluing to the bulk and the momentum equation of section 11.6。

What remains nonlocal after eliminating auxiliaries is not an algebraic accident；it is forced by the inverse eigenvalues

$$\begin{align}
\frac1{\lambda_\ell-2}, \qquad \frac1{\lambda_\ell(\lambda_\ell-2)}.
\end{align}$$

### 11.8 Verification boundary

Source-derived：

- Campiglia--Peraza eqs. (5.18)、(5.22)--(5.23) give the field-space exterior derivative convention and the two pieces of $\Theta_{\rm CP}^{S^2}$；
- their eqs. (5.29)--(5.34) give the canonical rewriting in $(q,p;T,\Pi)$；
- their eqs. (3.7)、(A.20) and (B.4)--(B.6) give the $\psi$、$T[q]$ and Geroch relations；
- their eqs. (3.25)--(3.26) give the endpoint electric-potential constraint；
- the paragraph below eq. (5.34) explicitly states that $T[q]$ and $c_\pm[C^\pm_{AB}]$ make the construction nonlocal and that a covariant-phase-space origin was left open。

Verified：

- Mathematica computed the unit-sphere Levi-Civita connection and verified

$$\begin{align}
D^AD^B(D_AD_Bf)^{\rm TF} = \frac12D^2(D^2+2)f
\end{align}$$

  on $Y_{\ell0}$ for $\ell=0,\ldots,6$；the all-$\ell$ identity follows analytically by commuting the two covariant derivatives；
- Mathematica returned zero for the linearized Liouville residual after substituting

$$\begin{align}
\delta\psi = -\frac12(D^2+2)^{-1}\delta R；
\end{align}$$

- Mathematica returned zero for the finite-dimensional exterior-derivative identity

$$\begin{align}
\delta(p\,\delta q+\Pi\,\delta T)
  - (\delta p\wedge\delta q+\delta\Pi\wedge\delta T) =0.
\end{align}$$

Assumptions：

- smooth fixed-area metrics in the finite $\operatorname{Diff}(S^2)$ orbit of a reference round metric；
- the $\ell=0,1$ endpoint-potential kernel and the $\ell=1$ uniformization kernel are fixed by the stated projectors/reference frame；
- CP's $O(|u|^{-2-\epsilon})$ news falloff；
- the local parent action is allowed to enlarge the boundary field content and to use an auxiliary $\tau$ collar。

Not verified：

- a four-dimensional local-covariant bulk Lagrangian whose direct boundary reduction equals the reduced nonlocal CP action；
- extension of this parent action to the generic logarithmic $|u|^{-2}$ tail without the Stage 7 anomaly/corner sector。

---

## 12. Action-derived cotangent-edge momentum

### 12.1 The gravitational response in one fixed scheme

The gluing equation is meaningful only after fixing the representative of the renormalized potential。Use：

1. the Freidel--Riello BMSW renormalized potential on their accessible off-shell space；
2. fixed area，

$$\begin{align}
\delta\sqrt q=0；
\end{align}$$

3. the GLZ finite Cauchy-corner polarization after pullback to their polyhomogeneous solution space；
4. a finite retarded-time slab

$$\begin{align}
I=[u_-,u_+]；
\end{align}$$

5. the outward orientation used in the source formulae。

Restoring the Freidel--Riello normalization，the part of their potential conjugate to $q_{AB}$ is

$$\begin{align}
\Theta_{\rm FR}^{(q)} = \int_Idu\int_{S^2}d^2x\sqrt q\, \left[ -\frac1{64\pi G} \left( 2R[q]-\Delta \right) C^{AB} \right] \delta q_{AB}.
\end{align}$$

The coefficient follows because their full boundary potential carries $1/(8\pi G)$ and the BMSW $q$ term has coefficient $-1/8$。The GLZ endpoint term，with the standard Einstein--Hilbert normalization restored，is

$$\begin{align}
\Theta_{\rm GLZ}^{\rm corner} = \frac1{32\pi G} \left[ \int_{S^2}d^2x\sqrt q\, \left( uC_{AB}-D_{AB} \right) \delta q^{AB} \right]_{u_-}^{u_+}.
\end{align}$$

To realize this polarization by an action rather than merely append a phase-space one-form，introduce a corner collar with endpoint extensions

$$\begin{align}
\left( Q_{AB}, \mathcal C^\sigma_{AB}, \mathcal D^\sigma_{AB} \right)_{\tau=1} = \left( q_{AB}, C^\sigma_{AB}, D^\sigma_{AB} \right), \qquad \sigma=\pm,
\end{align}$$

and fixed reference data at $\tau=0$。The first-order transgression

$$\begin{align}
\boxed{ S_{\rm GLZ}^{\rm tr} = \frac1{32\pi G} \int_0^1d\tau
\sum_{\sigma=\pm}\sigma \int_{S^2}d^2x\sqrt Q\, \left( u_\sigma\mathcal C^\sigma_{AB} -\mathcal D^\sigma_{AB} \right) \partial_\tau Q^{AB}
}
\end{align}$$

has precisely $\Theta_{\rm GLZ}^{\rm corner}$ as its $\tau=1$ endpoint potential。The equality with the GLZ corner is asserted only after an endpoint multiplier imposes the GLZ solution-space pullback。Thus：

- the Freidel--Riello contribution is derived directly from the four-dimensional renormalized off-shell action；
- the GLZ shift is derived from an explicit first-order corner action on an enlarged collar；
- without that collar，the GLZ formula remains only a solution-space polarization and is not silently promoted to an off-shell scalar counterterm。

Since fixed-area variations obey

$$\begin{align}
\delta q^{AB} = -q^{AC}q^{BD}\delta q_{CD},
\end{align}$$

write

$$\begin{align}
S_{\rm grav}^{\rm scheme} := S_{\rm FR}^{\rm ren} + S_{\rm GLZ}^{\rm tr} + S_{\rm GLZ}^{\rm endpoint\ glue}.
\end{align}$$

the total finite gravity response defined by

$$\begin{align}
\left.
\delta S_{\rm grav}^{\rm scheme} \right|_{\delta q} = \int_{S^2}d^2x\sqrt q\, p_{\rm grav}^{AB}[I]\, \delta q_{AB}
\end{align}$$

is

$$\begin{align}
\boxed{ p_{\rm grav}^{AB}[I] = -\frac1{64\pi G} \int_{u_-}^{u_+}du\, \left( 2R[q]-\Delta \right) C^{AB} -\frac1{32\pi G} \left[ uC^{AB}-D^{AB} \right]_{u_-}^{u_+}.
}
\end{align}$$

All tensors in this equation are tracefree。The first term is genuinely off shell on the Freidel--Riello accessible space。The second is action-derived from $S_{\rm GLZ}^{\rm tr}$ only in the enlarged corner category and agrees with GLZ only on their solution-space pullback；it is not a new four-dimensional GLZ off-shell action。

If a finite corner functional $F[q,C,D]$ changes the polarization，then

$$\begin{align}
p_{\rm grav}^{AB}
\longmapsto
p_{\rm grav}^{AB} + \frac1{\sqrt q} \frac{\delta F}{\delta q_{AB}}.
\end{align}$$

Thus $p_{\rm grav}^{AB}$ is a scheme-dependent response，not an absolute observable。

### 12.2 Edge collar and the interface variation

Introduce an auxiliary collar

$$\begin{align}
\mathcal E = [0,1]_\tau\times S^2
\end{align}$$

with a fixed-area metric $Q_{AB}(\tau,x)$ and tracefree momentum $P^{AB}(\tau,x)$。The reference endpoint $Q_{AB}(0,x)$ is fixed。Take

$$\begin{align}
\boxed{ S_{\rm edge} = \int_0^1d\tau \int_{S^2}d^2x\sqrt Q\, P^{AB}\partial_\tau Q_{AB}
}
\end{align}$$

and impose the interface identification by a tracefree multiplier：

$$\begin{align}
\boxed{ S_{\rm glue} = \int_{S^2}d^2x\sqrt q\, \Lambda^{AB} \left[ Q_{AB}(1)-q_{AB} \right].
}
\end{align}$$

Because every allowed variation is tracefree，$\delta\sqrt Q=0$。The independent variations give

$$\begin{align}
\delta P^{AB}： \qquad \partial_\tau Q_{AB}=0,
\end{align}$$

$$\begin{align}
\delta Q_{AB}\ \text{in the collar}： \qquad \partial_\tau P^{AB}=0,
\end{align}$$

$$\begin{align}
\delta Q_{AB}(1)： \qquad P^{AB}(1)+\Lambda^{AB}=0,
\end{align}$$

and

$$\begin{align}
\delta q_{AB}： \qquad p_{\rm grav}^{AB}-\Lambda^{AB}=0.
\end{align}$$

Eliminating $\Lambda^{AB}$ yields the action-derived gluing equation

$$\begin{align}
\boxed{ P^{AB}(1) + p_{\rm grav}^{AB}[I] =0.
}
\end{align}$$

The sign reverses if the interface orientation is reversed。It is not imposed as a definition of $P^{AB}$；it is the endpoint Euler--Lagrange equation of

$$\begin{align}
S_{\rm tot} = S_{\rm grav}^{\rm scheme} + S_{\rm edge} + S_{\rm glue}.
\end{align}$$

On the gluing surface，

$$\begin{align}
Q_{AB}(1)=q_{AB}, \qquad P^{AB}(1)=-p_{\rm grav}^{AB},
\end{align}$$

and hence

$$\begin{align}
\boxed{ \left. \left( \Omega_{\rm grav}^{(q)} + \Omega_{\rm edge} \right) \right|_{\rm glue} = \delta p_{\rm grav}^{AB}\wedge\delta q_{AB} + \delta P^{AB}\wedge\delta Q_{AB} =0.
}
\end{align}$$

This cancellation is the expected statement for a closed internal interface。If $q_{AB}$ is instead intended to carry independent boundary dynamics，one must add an edge Hamiltonian or another boundary response；the pure gluing action deliberately removes the doubled interface pair。

### 12.3 Regulated cancellation of the local-covariant obstruction

The preceding finite equation does not by itself cancel the Flanagan--Prabhu--Shehzad class。At a conformal cutoff

$$\begin{align}
\Omega=\epsilon,
\end{align}$$

the leading bulk divergence is

$$\begin{align}
\Omega_{\rm bulk,div}^{\epsilon} = \frac1{32\pi G\,\epsilon} \int_{\mathscr I} \boldsymbol\epsilon_{\mathscr I}\, \delta q^{AB} \wedge \delta N_{AB}.
\end{align}$$

There is no local spacetime-covariant $Y$ built only from the physical metric whose $d\delta Y$ removes this term。Instead enlarge the collar by an independent tracefree extension

$$\begin{align}
\mathcal N_{AB}(\tau,u,x), \qquad \left( Q_{AB},\mathcal N_{AB} \right)_{\tau=1} = \left( q_{AB},N_{AB} \right),
\end{align}$$

and hold the $\tau=0$ reference endpoint fixed。The leading edge Wess--Zumino transgression is

$$\begin{align}
\boxed{ S_{\rm WZ}^{\epsilon} = \frac1{32\pi G\,\epsilon} \int_0^1d\tau \int_{\mathscr I} \boldsymbol\epsilon_{\mathscr I}[Q]\, \mathcal N_{AB}\, \partial_\tau Q^{AB}.
}
\end{align}$$

Trace constraints are imposed by local multipliers。Its endpoint potential is

$$\begin{align}
\Theta_{\rm WZ}^{\epsilon} = \frac1{32\pi G\,\epsilon} \int_{\mathscr I} \boldsymbol\epsilon_{\mathscr I}\, N_{AB}\delta q^{AB},
\end{align}$$

so

$$\begin{align}
\boxed{ \left.
\Omega_{\rm WZ}^{\epsilon} \right|_{\rm glue} = -\frac1{32\pi G\,\epsilon} \int_{\mathscr I} \boldsymbol\epsilon_{\mathscr I}\, \delta q^{AB}\wedge\delta N_{AB} = -\Omega_{\rm bulk,div}^{\epsilon}.
}
\end{align}$$

The equality is for the leading divergent class；variations of the measure and of the trace projector contribute at different tensor structures and are incorporated in the full regulated bulk transgression。Equivalently，if

$$\begin{align}
p_{\rm bulk}^{AB,\epsilon} = p_{\rm bulk,div}^{AB,\epsilon} + p_{\rm grav}^{AB} + o(1),
\end{align}$$

then the Wess--Zumino term shifts the bare edge momentum by the opposite divergent response。Defining

$$\begin{align}
\boxed{ P_{\rm ren}^{AB} := P_{\rm bare}^{AB} + p_{\rm bulk,div}^{AB,\epsilon}
}
\end{align}$$

turns the regulated interface equation

$$\begin{align}
P_{\rm bare}^{AB} + p_{\rm bulk}^{AB,\epsilon} =0
\end{align}$$

into

$$\begin{align}
\boxed{ P_{\rm ren}^{AB} + p_{\rm grav}^{AB} =0
}
\end{align}$$

as $\epsilon\to0$。

This does not contradict Theorem 6.1。The new term：

- uses independent edge extensions $(Q,\mathcal N)$；
- uses an auxiliary collar and a fixed reference endpoint；
- is local only relative to the chosen conformal/Bondi frame；
- is not an ambiguity $\delta B+d\delta Y$ in the finite-jet category of the physical metric alone。

It is anomaly inflow from a changed field category，not a counterexample to the original-field no-go。

### 12.4 Smooth $\operatorname{Diff}(S^2)$ and finite scheme changes

The cotangent-lift generator on the edge is

$$\begin{align}
H_Y^{\rm edge} = \int_{S^2}d^2x\sqrt q\, P_{\rm ren}^{AB} \left( \mathcal L_Yq_{AB} -2\alpha_Yq_{AB} \right).
\end{align}$$

The regulated Wess--Zumino block supplies precisely the opposite divergent contraction of the bulk two-form。Consequently the combined moment-map equation has a finite limit on the gluing constraint。A finite corner canonical transformation

$$\begin{align}
\Theta_{\rm grav}\mapsto\Theta_{\rm grav}+\delta F
\end{align}$$

must be accompanied by

$$\begin{align}
P_{\rm ren}^{AB}
\longmapsto
P_{\rm ren}^{AB}
- \frac1{\sqrt q} \frac{\delta F}{\delta q_{AB}},
\end{align}$$

which leaves

$$\begin{align}
P_{\rm ren}^{AB}+p_{\rm grav}^{AB}=0
\end{align}$$

invariant。Thus the interface constraint，rather than either momentum separately，is scheme independent。

This argument establishes cancellation of the leading divergent obstruction and the canonical smooth-$\operatorname{Diff}(S^2)$ interface pairing。It does not establish a unique finite edge Hamiltonian，a punctured meromorphic action，or the $u_\pm\to\pm\infty$ tail completion。

### Theorem 12.1

On the finite-$u$，fixed-area Freidel--Riello accessible space，with the GLZ Cauchy-corner polarization used only after solution-space pullback：

1. the specified bulk-plus-corner action determines the explicit response $p_{\rm grav}^{AB}[I]$ of section 12.1；
2. the first-order cotangent-edge collar and interface multiplier give

$$\begin{align}
P_{\rm ren}^{AB}+p_{\rm grav}^{AB}=0
\end{align}$$

   as an endpoint Euler--Lagrange equation；
3. the pullback of the bulk-plus-edge interface two-form vanishes；
4. at finite conformal cutoff，the edge Wess--Zumino transgression gives the negative of the leading

$$\begin{align}
\epsilon^{-1}\delta q^{AB}\wedge\delta N_{AB}
\end{align}$$

   class；
5. the construction evades，rather than violates，the Flanagan--Prabhu--Shehzad theorem because it adds edge fields and fixed-frame transgression data；
6. finite corner canonical transformations shift the two momenta oppositely and preserve the gluing constraint。

Therefore the cotangent edge momentum is fixed by gravity once a renormalization and corner polarization are chosen。What is not fixed is a universal scheme-independent representative for either momentum separately。

### 12.5 Verification boundary

Source-derived：

- Freidel--Riello eq. (329) gives the BMSW potential and hence the coefficient

$$\begin{align}
-\frac1{64\pi G}(2R-\Delta)C^{AB}
\end{align}$$

  conjugate to $\delta q_{AB}$；
- GLZ eqs. (3.6) and (3.9) give the finite total-$u$-derivative potential/two-form containing

$$\begin{align}
\frac1{32\pi G} \left[ \sqrt q(uC_{AB}-D_{AB})\delta q^{AB} \right]_{u_-}^{u_+}；
\end{align}$$

- Flanagan--Prabhu--Shehzad give the leading

$$\begin{align}
(32\pi G\Omega)^{-1}
  \delta q^{AB}\wedge\delta N_{AB}
\end{align}$$

  class and the original-field local-covariant ambiguity obstruction。

Verified：

- Mathematica returned zero for the endpoint gluing residual after eliminating $\Lambda^{AB}$；
- Mathematica returned zero for

$$\begin{align}
\left. \left( \delta p_{\rm grav}\wedge\delta q + \delta P\wedge\delta Q \right) \right|_{Q=q,\;P=-p_{\rm grav}}；
\end{align}$$

- direct field-space differentiation of

$$\begin{align}
N_{AB}\delta q^{AB}
\end{align}$$

  gives

$$\begin{align}
-\delta q^{AB}\wedge\delta N_{AB},
\end{align}$$

  which is the displayed leading anomaly-inflow sign。

Assumptions：

- finite $u$-slab and fixed area；
- Freidel--Riello PBC/$E_{\rm div}$ accessible-space restrictions；
- standard $1/(16\pi G)$ Einstein--Hilbert normalization；
- the stated outward orientation；
- GLZ $D_{AB}$ is used only on its solution-space pullback；
- edge fields and a fixed conformal/Bondi frame are admitted。

Not verified：

- an all-orders regulated edge transgression in a fully physical-spacetime-covariant category；Theorem 6.1 excludes it without changing the field/background category；
- a unique finite edge Hamiltonian or scheme-independent $P_{\rm ren}^{AB}$；
- the generic $u_\pm\to\pm\infty$ logarithmic-tail limit；
- a bulk derivation selecting a unique puncture orbit、holonomy and cocycle coefficient。

---

## 13. Meromorphic extended BMS as a puncture/defect theory

### 13.1 Precise verdict

A meromorphic superrotation is not a symmetry of the smooth-sphere phase space。There is also no single finite-pole、finite-counterterm enlargement on which the full meromorphic algebra acts。The maximal action-first statement is instead：

$$
\boxed{
\begin{gathered}
\text{excise the poles，use a Laurent-polyhomogeneous direct-limit domain，}
\\
\text{renormalize every finite pole stratum，and add a defect phase space on each circle。}
\end{gathered}
}
$$

This gives a differentiable finite action、finite-part charges、residue brackets and sewing rules。It is a family of defect completions，not a unique consequence of vacuum Einstein gravity。The extra defining data are：

$$\begin{align}
\left( P,\, w_i,\, \mathfrak p_i,\, b_i,\, c_i,\, \text{monodromy},\, \text{finite-part scheme} \right),
\end{align}$$

where $P=\{z_i\}$ is the puncture set，$w_i$ are local coordinates，$\mathfrak p_i$ are projective structures，$b_i$ are coadjoint-orbit data and $c_i$ are optional Gelfand--Fuchs couplings。

The minimal classical completion sets

$$\begin{align}
c_i=0
\end{align}$$

unless a bulk/defect anomaly calculation supplies a nonzero value。No known four-dimensional Einstein--Hilbert reduction fixes $c_i$ or the Nguyen--Salzer coupling $t$。

### 13.2 Pole algebra and the stable field domain

Fix a finite puncture set $P$ and local coordinates

$$\begin{align}
w_i=z-z_i = \rho_i e^{i\phi_i}.
\end{align}$$

The chiral meromorphic algebra consists of

$$\begin{align}
Y^{w_i} = \sum_{r=-n_i}^{\infty} y_{i,r}w_i^r, \qquad n_i<\infty
\end{align}$$

for each individual generator，with poles only in $P$。For the monomials

$$\begin{align}
Y_m = w^{-m}\partial_w,
\end{align}$$

one has

$$\begin{align}
\boxed{ [Y_m,Y_n] = (m-n) w^{-m-n-1}\partial_w.
}
\end{align}$$

Thus any pole-order cap is unstable：commutators generate arbitrarily high pole order。The only finite-dimensional pole-free closed sector is the global

$$\begin{align}
\mathfrak{sl}(2,\mathbb C)
\end{align}$$

Lorentz algebra。

The infinitesimal shear transformation contains the inhomogeneous term

$$\begin{align}
\delta_YC_{ww} \supset -uD_w^3Y^w.
\end{align}$$

For

$$\begin{align}
Y^w=O(w^{-n}),
\end{align}$$

this obeys

$$\begin{align}
\boxed{ D_w^3Y^w = O(w^{-n-3}).
}
\end{align}$$

Hence even the first action on a smooth shear leaves the smooth domain。A stable puncture class must allow Laurent principal parts in every Bondi coefficient reached by the radial and evolution hierarchy。

At puncture $i$ define the finite stratum $\mathcal F_{\mathbf N_i}$ by expansions of the form

$$\begin{align}
\Phi \sim
\sum_{\substack{a\geq-N_i\\
b\geq-\overline N_i}}
\sum_{k=0}^{K_{ab}} \Phi_{abk}(u,\Omega) w_i^a\bar w_i^b \left( \log\rho_i \right)^k,
\end{align}$$

where each $\Phi_{abk}$ retains the radial polyhomogeneous expansion already used in the bulk construction。At any fixed $\mathbf N_i$ there are only finitely many negative angular weights。The full meromorphic domain is the strict direct limit

$$\begin{align}
\boxed{ \mathcal F_P^{\rm mer} := \varinjlim_{\mathbf N} \mathcal F_{\mathbf N}.
}
\end{align}$$

A generator with finite pole order maps one finite stratum continuously into another finite stratum，and the union is algebraically invariant。It is not one Fréchet manifold；it is an LF/direct-limit configuration space。Using a formal Laurent completion instead is possible，but then the action and charges are only formal series。

### 13.3 Excision and the universal small-circle counterterms

Define

$$\begin{align}
\Sigma_{\epsilon,P} := S^2 \setminus \bigcup_i D_\epsilon(z_i),
\end{align}$$

$$\begin{align}
\mathscr I_{\epsilon,I} = I_u\times\Sigma_{\epsilon,P}, \qquad \mathcal C_i^\epsilon = I_u\times\partial D_\epsilon(z_i).
\end{align}$$

At fixed $\epsilon>0$ all meromorphic generators and fields are smooth on the regulated manifold。After radial renormalization，let any local angular action density near $z_i$ have the finite-stratum expansion

$$\begin{align}
\ell_i \sim \sum_{\alpha,k,m} \ell_{i;\alpha km}(u) \rho_i^\alpha \left( \log\rho_i \right)^k e^{im\phi_i} d\rho_i\wedge d\phi_i\wedge du.
\end{align}$$

Only the angular zero mode $m=0$ contributes a power or logarithmic divergence。For $\alpha\neq-1$ define

$$\begin{align}
\boxed{ \mathcal P_{\alpha k}(\epsilon) := \epsilon^{\alpha+1}
\sum_{j=0}^k \frac{ (-1)^j k!
}{ (k-j)!(\alpha+1)^{j+1}
} \left( \log\epsilon \right)^{k-j}, }
\end{align}$$

while at the resonant weight

$$\begin{align}
\boxed{ \mathcal P_{-1,k}(\epsilon) := \frac{ \left( \log\epsilon \right)^{k+1}
}{ k+1
}.
}
\end{align}$$

They obey

$$\begin{align}
\partial_\epsilon \mathcal P_{\alpha k}(\epsilon) = \epsilon^\alpha \left( \log\epsilon \right)^k.
\end{align}$$

Since the regulated radial integral is from $\rho_i=\epsilon$ outward，its divergent piece is $-\mathcal P_{\alpha k}(\epsilon)$。The minimal small-circle counterterm is therefore

$$\begin{align}
\boxed{ S_{{\rm ct},i}^\epsilon = 2\pi \int_Idu \left[ \sum_{\alpha<-1,k} \ell_{i;\alpha k0} \mathcal P_{\alpha k}(\epsilon) + \sum_k \ell_{i;-1,k,0} \mathcal P_{-1,k}(\epsilon) \right].
}
\end{align}$$

The coefficient extraction is local in the puncture Laurent jet but depends on $(w_i,\rho_i)$。For a fixed finite stratum，the sum is finite。No finite list works uniformly on the direct limit because the meromorphic algebra generates unbounded pole order。

If radial and puncture regulators are removed together，the admissible domain must be jointly polyhomogeneous in

$$\begin{align}
\left( \Omega,\rho_i \right).
\end{align}$$

Mixed divergences live at

$$\begin{align}
\Omega=0=\rho_i
\end{align}$$

and are removed by the same incidence-relative corner descent used for the $\left(\Omega,\rho\right)$ endpoint problem。At each finite Laurent/radial window，the normal homotopies terminate and give a finite bulk/face/corner counterterm complex。This construction is local relative to the Bondi frame and the puncture coordinates，not in the strict physical-metric covariant category。

Finite counterterms remain：

$$\begin{align}
S_{{\rm ct},i}^{\rm fin} = \int_Idu \oint_{C_i} \mathcal L_i^{\rm fin}.
\end{align}$$

They shift the finite defect momentum and residue charges。Thus finiteness does not imply a unique normalization。

### 13.4 Differentiable small-circle action

Let

$$\begin{align}
\Theta_{{\rm bulk},i}^{\epsilon,\rm ren}
\end{align}$$

be the renormalized bulk potential leaking through $\mathcal C_i^\epsilon$。Introduce an auxiliary collar coordinate $\tau\in[0,1]$，extend all induced Laurent jets to $Z_i(\tau)$，fix $Z_i(0)$，and glue $Z_i(1)$ to the bulk pullback。The inflow action

$$\begin{align}
\boxed{ S_{{\rm inflow},i}^{\epsilon} = -\int_0^1d\tau\, \Theta_{{\rm bulk},i}^{\epsilon,\rm ren} \left( Z_i;\partial_\tau Z_i \right)
}
\end{align}$$

has endpoint potential

$$\begin{align}
-\Theta_{{\rm bulk},i}^{\epsilon,\rm ren}
\end{align}$$

and cancels the small-circle failure of differentiability。As in section 12，this is a transgression on an enlarged field space，not a scalar counterterm of the original bulk metric。

The puncture still needs its own physical edge phase space。Let $f_i(\tau,u,w_i)$ be a meromorphic reparametrization germ，let $b_i(\tau,u,w_i)dw_i^2$ be its coadjoint momentum and write

$$\begin{align}
v_i := \frac{\partial_\tau f_i}{f_i'}.
\end{align}$$

The local first-order defect-collar action is

$$
\boxed{
\begin{aligned}
S_{{\rm Vir},i}
=
\int_0^1d\tau
\int_Idu
\bigg[
&
\frac1{2\pi i}
\oint_{C_i}
b_i\,v_i\,dw_i
\\
&
+
\frac{c_i}{48\pi i}
\oint_{C_i}
\frac{\partial_\tau f_i}{f_i'}
d
\left(
\frac{f_i''}{f_i'}
\right)
-H_i
\bigg]
+
\text{c.c.}
\end{aligned}
}
$$

Here prime means $\partial_{w_i}$ and

$$\begin{align}
d \left( \frac{f_i''}{f_i'} \right) = \partial_{w_i} \left( \frac{f_i''}{f_i'} \right) dw_i.
\end{align}$$

The first line is the cotangent/coadjoint-orbit kinetic term。The second line is the optional Gelfand--Fuchs Wess--Zumino term；$H_i$ specifies auxiliary-collar dynamics and may consistently be set to zero for pure gluing。The $\tau=0$ orbit data are fixed。

Let $F_i^{\rm bulk}$ denote the induced meromorphic frame and let $\mathcal J_{{\rm bulk},i}^{\rm ren}$ be the momentum obtained by varying the same renormalized bulk-plus-inflow action。With $\lambda_i$ in the dual Laurent representation，take

$$\begin{align}
\boxed{ S_{{\rm glue},i} = \frac1{2\pi i} \int_Idu \oint_{C_i} \lambda_i \left[ f_i(1)-F_i^{\rm bulk} \right] dw_i + \text{c.c.}
}
\end{align}$$

The $\lambda_i$ equation imposes

$$\begin{align}
f_i(1)=F_i^{\rm bulk}.
\end{align}$$

The endpoint variations of $f_i(1)$ and $F_i^{\rm bulk}$ give equal multiplier responses；eliminating $\lambda_i$ yields

$$\begin{align}
\boxed{ \mathcal T_i + \mathcal J_{{\rm bulk},i}^{\rm ren} =0
}
\end{align}$$

up to orientation，where $\mathcal T_i$ is the affine coadjoint momentum defined in section 13.5。This is the puncture analogue of the edge gluing equation in section 12；it is an endpoint Euler--Lagrange equation，not an imposed momentum constraint。

The complete regulated action is therefore

$$
\boxed{
\begin{aligned}
S_P^{\rm ren}
:=
\operatorname*{FP}_{\epsilon\to0}
\bigg[
&
S_{\rm grav}^{\rm scheme}
\left[
M_{\epsilon,P}
\right]
\\
&
+
\sum_i
\left(
S_{{\rm ct},i}^{\epsilon}
+
S_{{\rm inflow},i}^{\epsilon}
+
S_{{\rm Vir},i}
+
S_{{\rm glue},i}
\right)
\bigg].
\end{aligned}
}
$$

For every finite Laurent/radial stratum，$S_P^{\rm ren}$ and its first two variations are finite provided the displayed joint expansion is uniform under two tangent variations。

### 13.5 Finite charges as residues

The coadjoint stress tensor at puncture $i$ is

$$\begin{align}
\boxed{ \mathcal T_i(w_i) = \left( f_i' \right)^2 b_i \left( f_i \right) -\frac{c_i}{12} \left\{ f_i;w_i \right\}, }
\end{align}$$

where

$$\begin{align}
\left\{ f;w \right\} := \frac{f'''}{f'} -\frac32 \left( \frac{f''}{f'} \right)^2.
\end{align}$$

For a meromorphic generator $Y$，the differentiable cut charge is

$$\begin{align}
\boxed{ H_Y^{\rm ren} = \operatorname*{FP}_{\epsilon\to0} H_{Y,{\rm bulk}}^\epsilon + \sum_i \operatorname{Res}_{w_i=0} \left[ Y^{w_i} \mathcal T_i(w_i) dw_i \right] + \text{c.c.}
}
\end{align}$$

The first term contains the renormalized hard/radiative contribution。The contour residues are the small-circle charges required by integrations by parts。This formula is finite on each finite stratum even when the unrenormalized two-dimensional density is not absolutely integrable。

For the local finite map

$$\begin{align}
f_i(w_i)=w_i^{a_i},
\end{align}$$

Mathematica verifies

$$\begin{align}
\boxed{ \left\{ w_i^{a_i};w_i \right\} = \frac{ 1-a_i^2
}{ 2w_i^2
}.
}
\end{align}$$

Thus a ramification、conical or cosmic-string defect is encoded by a double-pole coadjoint datum。For $b_i=0$，

$$\begin{align}
\mathcal T_i = \frac{ c_i(a_i^2-1)
}{ 24w_i^2
}.
\end{align}$$

The value of $a_i$ or the corresponding holonomy is defect data；it is not determined by the smooth asymptotic metric away from $z_i$。

### 13.6 Residue cocycle and algebra

Choose a projective connection $\mathfrak p_i$ and let

$$\begin{align}
\mathcal D_{\mathfrak p_i}^3Y := Y''' + 2\mathfrak p_iY' + \mathfrak p_i'Y.
\end{align}$$

Then

$$\begin{align}
\left( \mathcal D_{\mathfrak p_i}^3Y \right)
Z\,dw_i
\end{align}$$

is the coordinate-covariant meromorphic one-form entering the Gelfand--Fuchs cocycle。The puncture contribution is

$$\begin{align}
\boxed{ K_i(Y,Z) = \frac{c_i}{48\pi i} \oint_{C_i} \left[ \left( \mathcal D_{\mathfrak p_i}^3Y \right) Z
- \left( \mathcal D_{\mathfrak p_i}^3Z \right)
Y \right]
dw_i.
}
\end{align}$$

For $\mathfrak p_i=0$ this is equivalently

$$\begin{align}
K_i(Y,Z) = \frac{c_i}{24\pi i} \oint_{C_i} Y'''Z\,dw_i.
\end{align}$$

With

$$\begin{align}
L_m = -w^{m+1}\partial_w,
\end{align}$$

one obtains

$$\begin{align}
\boxed{ K_i(L_m,L_n) = \frac{c_i}{12} \left( m^3-m \right) \delta_{m+n,0}.
}
\end{align}$$

Mathematica verifies the Witt cocycle Jacobi identity。The full renormalized bracket is

$$\begin{align}
\boxed{ \left\{ H_Y^{\rm ren}, H_Z^{\rm ren} \right\} = H_{[Y,Z]}^{\rm ren} + K_{\rm bulk}^{\rm ren}(Y,Z) + \sum_iK_i(Y,Z).
}
\end{align}$$

$K_{\rm bulk}^{\rm ren}$ includes any field-dependent Barnich--Troessaert extension inherited from the chosen gravitational phase space。The constants $c_i$ are independent defect Wess--Zumino couplings。The Nguyen--Salzer action shows how an Alekseev--Shatashvili coefficient generates such a sector，but their derivation does not fix that coefficient from the Einstein--Hilbert action。Consequently one must not identify $c_i$ with a universal multiple of $1/G$ without an additional bulk reduction。

Finite puncture counterterms change the representative of

$$\begin{align}
K_{\rm bulk}^{\rm ren} + \sum_iK_i
\end{align}$$

by a Lie-algebra coboundary。The cohomology class and the chosen defect $c_i$ are the scheme-independent parts。

### 13.7 Sewing rules

Let two puncture circles be glued by an orientation-reversing map

$$\begin{align}
\varphi：
C_i \longrightarrow
C_j.
\end{align}$$

A differentiable sewing requires：

1. matching of the induced bulk Laurent jets，

$$\begin{align}
Z_i = \varphi^*Z_j；
\end{align}$$

2. matching of the meromorphic frames，

$$\begin{align}
f_i = \varphi^*f_j；
\end{align}$$

3. opposite momentum flow，

$$\begin{align}
\mathcal T_i + \varphi^*\mathcal T_j = 0；
\end{align}$$

4. the same Gelfand--Fuchs level and compatible projective structures，

$$\begin{align}
c_i=c_j, \qquad \mathfrak p_i(w_i) = \left( \varphi'(w_i) \right)^2 \mathfrak p_j \left( \varphi(w_i) \right) + \left\{ \varphi;w_i \right\}；
\end{align}$$

5. cancellation of the two Laurent counterterm jets under the reversed boundary orientation。

The sewing multiplier action gives the first three equations as endpoint Euler--Lagrange equations。Under conditions 4--5，the two circle potentials and cocycles cancel。Equivalently，the sum of residues of the resulting global meromorphic one-form vanishes：

$$\begin{align}
\sum_i \operatorname{Res}_{z_i} \left[ \left( \mathcal D_{\mathfrak p}^3Y \right)
Z\,dz \right] =0.
\end{align}$$

If the levels、projective structures or momenta fail to match，the seam carries a genuine defect insertion rather than disappearing。Moving、creating or annihilating punctures similarly changes the defect stratum and is not generated inside a fixed-$P$ phase space unless puncture positions and their conjugate momenta are added。

### 13.8 Why the completion is not unique

There are three independent no-go statements：

1. **No fixed pole cap.**

$$\begin{align}
[w^{-m}\partial_w,w^{-n}\partial_w] \propto w^{-m-n-1}\partial_w
\end{align}$$

   rules out a finite-order phase space for the full meromorphic algebra。
2. **No uniform finite counterterm list.**
   Products of unbounded Laurent principal parts generate arbitrarily negative angular weights，so the counterterm sum grows with the stratum。
3. **No bulk determination of the defect orbit.**
   The smooth exterior action fixes the momentum leakage to be glued，but it does not fix $(a_i,b_i,c_i,\mathfrak p_i)$ or the puncture holonomy。Different choices describe cosmic-string defects、branched/multivalued boundary maps or other celestial defects。

The Alekseev--Shatashvili density of Nguyen--Salzer is

$$
\boxed{
\begin{aligned}
S_{\rm AS}[\Pi]
=
&
\frac{t}{16\pi}
\int_{S^2}d^2z\,
\frac{
\partial_z\partial_{\bar z}\Pi\,
\partial_z^2\Pi
}{
\left(
\partial_z\Pi
\right)^2
}
\\
&
+
\frac{\bar t}{16\pi}
\int_{S^2}d^2z\,
\frac{
\partial_{\bar z}\partial_z\bar\Pi\,
\partial_{\bar z}^2\bar\Pi
}{
\left(
\partial_{\bar z}\bar\Pi
\right)^2
}.
\end{aligned}
}
$$

For holomorphic $\Pi$ it vanishes pointwise away from punctures，so the missing information is precisely the distributional/holonomy sector at the excised circles。Nguyen--Salzer explicitly leave generic puncture holonomies and the value of $t$ open。Their action is therefore a compatible defect model，not a unique completion of the four-dimensional scattering action。

### Theorem 13.1

Fix a finite puncture set、local coordinates and projective structures，a finite $u$-slab，and one finite radial/Laurent window。Then：

1. the excised bulk action plus the counterterms of section 13.3 has a finite value and finite first two variations；
2. the inflow transgression cancels the small-circle non-differentiability；
3. the coadjoint-orbit action supplies finite defect momenta and residue charges；
4. the charge algebra is the meromorphic bracket plus the bulk extension and the displayed Gelfand--Fuchs residue cocycles；
5. orientation-reversed sewing is differentiable exactly when Laurent jets、momenta、levels and projective structures obey section 13.7；
6. the direct limit over pole order is algebraically stable，but no fixed finite stratum or uniform finite counterterm list supports the full meromorphic algebra；
7. vacuum Einstein gravity does not by itself select the defect orbit、holonomy、central coupling or finite-part scheme。

Thus meromorphic extended BMS can be made canonical only as a specified puncture/defect theory。There is no unique “extended-BMS phase space” obtained by merely allowing poles in the ordinary smooth BMS generators。

### 13.9 Sources and verification boundary

Sources：

- Glenn Barnich and Cédric Troessaert，[Supertranslations call for superrotations](https://arxiv.org/abs/1102.4632)。
- Andrew Strominger and Alexander Zhiboedov，[Superrotations and Black Hole Pair Creation](https://arxiv.org/abs/1610.00639)。
- Eugene Adjei，William Donnelly，Victor Py and Antony Speranza，[Cosmic footballs from superrotations](https://arxiv.org/abs/1910.05435)。
- Kévin Nguyen and Jakob Salzer，[The Effective Action of Superrotation Modes](https://arxiv.org/abs/2008.03321)。

Source-derived：

- local conformal superrotations give the two Witt sectors of extended BMS；
- finite superrotations may describe isolated cosmic-string defects or multivalued/non-surjective maps whose celestial metric is singular，and the Bondi large-$r$ expansion breaks down where the relevant surfaces meet the singularity；
- Nguyen--Salzer derive the displayed Alekseev--Shatashvili action，the Schwarzian charge and the $\operatorname{PSL}(2,\mathbb C)$ redundancy；
- their source explicitly states that generic puncture holonomies need a better phase-space analysis and that the coupling $t$ was not derived from the Einstein--Hilbert action。

Verified：

- Mathematica returned zero for

$$\begin{align}
[w^{-m}\partial_w,w^{-n}\partial_w]
  - (m-n)w^{-m-n-1}\partial_w；
\end{align}$$

- Mathematica returned zero for

$$\begin{align}
\partial_w^3w^{-n} + n(n+1)(n+2)w^{-n-3}；
\end{align}$$

- Mathematica verified the Schwarzian identity for $w^a$；
- Mathematica verified

$$\begin{align}
\partial_\epsilon\mathcal P_{\alpha k} = \epsilon^\alpha(\log\epsilon)^k
\end{align}$$

  for $k=0,\ldots,4$ at both resonant and nonresonant weights；
- Mathematica returned zero for the Gelfand--Fuchs cocycle Jacobi polynomial on

$$\begin{align}
m+n+\ell=0.
\end{align}$$

- Mathematica verified that

$$\begin{align}
\partial_w^3+2\mathfrak p\,\partial_w+\mathfrak p'
\end{align}$$

  transforms from vector fields to quadratic differentials when

$$\begin{align}
\mathfrak p_w = (\varphi')^2 \mathfrak p_\varphi + \{\varphi;w\}；
\end{align}$$

- Mathematica verified that the contour of $Y'''Z$ on

$$\begin{align}
L_m=-w^{m+1}\partial_w
\end{align}$$

  gives $(m^3-m)\delta_{m+n,0}$ and hence the displayed $c_i/12$ normalization。

Assumptions：

- finite $u$-slab；
- a finite radial/Laurent window before taking the strict direct limit；
- joint polyhomogeneity in $(\Omega,\rho_i)$；
- fixed puncture positions，local coordinates and projective structures；
- admitted edge/coadjoint-orbit fields and auxiliary collars；
- a chosen Hadamard finite-part scheme。

Not verified：

- an actual nonlinear four-dimensional Einstein solution theorem realizing arbitrary prescribed puncture Laurent data；
- a derivation of $(b_i,c_i,\mathfrak p_i)$ or the defect holonomies from the Einstein--Hilbert action；
- a uniform analytic action on the completed infinite-pole space；
- compatibility with generic $u\to\pm\infty$ logarithmic tails、$i^0$ matching and quantum BRST/IR sectors。
