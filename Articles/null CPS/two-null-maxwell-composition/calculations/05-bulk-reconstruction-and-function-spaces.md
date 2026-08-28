# Bulk Reconstruction and Function Spaces

## 1. Direct verdict

**Status: proved** on the rapid-angular matched-$H^1$ Fréchet core, and hence
on its smooth-generator subcore, for the trivial $U(1)$ bundle, $Q_E=n=0$,
$\ell\geq1$, and the fixed outer-frame/exact-anchor policy.  The restriction
map

$$
R_X:\operatorname{Sol}_{\mathrm{Max},\mathrm{anch}}^{\mathrm{rap}}(D)/
\mathcal G_{\mathrm{anch}}^{\mathrm{rap}}
\longrightarrow \mathcal X_{F,\mathrm{rap}}^{1,\mathrm{comp}}
\tag{1.1}
$$

is a continuous linear bijection with continuous inverse.

This is not a same-order Sobolev theorem.  The shifted Sobolev/graph
completion remains `conditional` for the reason stated in Section 9.

## 2. Independently specified data spaces

Let $\mathcal X_{F,\mathrm{rap}}^1$ contain
$(r_A,p_A;E_0,b^0_{AB})$ with $r,p$ square integrable along their finite
generators, vanishing $\ell=0$ electric and magnetic coefficients, and rapid
angular decay.  Its seminorms are built directly from the tensor components.
A representative shifted family is

$$
\begin{aligned}
q_N^{F}:={}&
\|r\|_{L^2_vH^N(S^2)}
+\|p\|_{L^2_uH^N(S^2)}\\
&+\|E_0\|_{H^{N-1}(S^2)}
+\|B_0\|_{H^{N-1}(S^2)},
\qquad N\geq1,
\end{aligned}
\tag{2.1}
$$

where $B_0=\frac12\epsilon^{AB}b^0_{AB}$.  Using every $N$ gives the same
rapid Fréchet topology as the unshifted family, while (2.1) records the actual
one-angular-derivative relation between tangential radiative data and normal
electric/magnetic fields.  Requiring the analogous seminorms after every
generator derivative defines the dense smooth-generator subcore.

Independently, let $\mathcal G_{\mathrm{rap}}^{\mathrm{matched}}$ be the
direct sum of electric and magnetic matched profile pairs

$$
(f^P_{\ell m},g^P_{\ell m})\in
H^1(0,U)\oplus H^1(0,V),
\qquad f^P_{\ell m}(0)=g^P_{\ell m}(0),
\tag{2.2}
$$

whose $H^1$ norms decrease faster than every power of $1+\lambda_\ell$.
Neither (2.1) nor (2.2) is defined using the desired bulk inverse.

## 3. Characteristic data to matched masters

Calculation 04 gives the coefficientwise bijection

$$
\begin{aligned}
c^E&=-E_0/s_\ell,&
f^E&=c^E+\int_0^u p^E,&
g^E&=c^E-\int_0^v r^E,\\
c^B&=-B_0/s_\ell,&
f^B&=c^B+\int_0^u p^B,&
g^B&=c^B+\int_0^v r^B,
\end{aligned}
\tag{3.1}
$$

where $s_\ell=\sqrt{\lambda_\ell}>0$.  Hodge projection on $S^2$ is
continuous, integration on a finite generator interval is continuous, and
multiplication or division by $s_\ell$ changes only one adjacent angular
seminorm.  Thus

$$
\mathfrak D_X:\mathcal X_{F,\mathrm{rap}}^{1,\mathrm{comp}}
\xrightarrow{\ \simeq\ }
\mathcal G_{\mathrm{rap}}^{\mathrm{matched}}
\tag{3.2}
$$

is a Fréchet isomorphism.  Its inverse is literal differentiation together
with $E_0=-s_\ell c^E$ and $B_0=-s_\ell c^B$.

## 4. Master Goursat inverse and rapid summation

For each $(\ell,m,P)$ the read-only theorem in
`../../null-characteristic-cps/calculations/07-characteristic-mode-reconstruction.md`
proves that the matched-$H^1$ restriction map has inverse

$$
\begin{aligned}
\Phi^P_{\ell m}(u,v)={}&
c^P_{\ell m}J_0\!\left(\sqrt{2\lambda_\ell uv}\right)\\
&+\int_0^u f_{\ell m}^{P\prime}(s)
J_0\!\left(\sqrt{2\lambda_\ell(u-s)v}\right)ds\\
&+\int_0^v g_{\ell m}^{P\prime}(t)
J_0\!\left(\sqrt{2\lambda_\ell u(v-t)}\right)dt.
\end{aligned}
\tag{4.1}
$$

It satisfies

$$
(2\partial_u\partial_v+\lambda_\ell)\Phi^P_{\ell m}=0
\tag{4.2}
$$

and has the prescribed two traces.  At every fixed bulk derivative order the
estimates for (4.1) lose only a finite polynomial power of $\lambda_\ell$.
The rapid angular seminorm family absorbs this loss by increasing $N$ a finite
amount.  Therefore the harmonic sum converges continuously in the matched
$H^1$ solution graph; every differentiated sum converges on the
smooth-generator subcore.

## 5. Explicit Maxwell field and potential lift

The field strength is reconstructed by

$$
\begin{aligned}
F_{uv}^E&=-s_\ell\Phi^E Y,&
F_{uA}^E&=\partial_u\Phi^E\,\mathbb E_A,&
F_{vA}^E&=-\partial_v\Phi^E\,\mathbb E_A,\\
F_{uv}^B&=0,&
F_{uA}^B&=\partial_u\Phi^B\,\mathbb B_A,&
F_{vA}^B&=\partial_v\Phi^B\,\mathbb B_A,\\
&&F_{AB}^B&=-s_\ell\Phi^B Y\epsilon_{AB}.
\end{aligned}
\tag{5.1}
$$

For the electric polarization choose the global canonical representative

$$
A_u^E=-\frac{\partial_u\Phi^E}{s_\ell}Y,
\qquad
A_v^E=\frac{\partial_v\Phi^E}{s_\ell}Y,
\qquad
A_A^E=0.
\tag{5.2}
$$

For the magnetic polarization choose

$$
A_A^B=\Phi^B\mathbb B_A,
\qquad A_u^B=A_v^B=0.
\tag{5.3}
$$

Literal differentiation of (5.2)--(5.3), using (4.2), gives (5.1).
The construction is continuous in the rapid matched-$H^1$ graph topology and
is performed only after the gauge-invariant action/master reduction.

## 6. Outer frames and connection compatibility

On the two sheets define the electric generator primitives

$$
\alpha_+^E(v)=\frac{g^E(v)-g^E(V)}{s_\ell}Y,
\qquad
\alpha_-^E(u)=\frac{f^E(U)-f^E(u)}{s_\ell}Y.
\tag{6.1}
$$

They obey $A_v=\partial_v\alpha_+$, $A_u=\partial_u\alpha_-$ and
$\alpha_+(V)=\alpha_-(U)=0$.  The exact dressed-connection coefficients are

$$
\bar q_+^E(v)=g^E(V)-g^E(v),
\qquad
\bar q_-^E(u)=f^E(u)-f^E(U),
\tag{6.2}
$$

so both outer exact anchors vanish.  At $S_0$,

$$
\chi_+=\frac{c^E-g^E(V)}{s_\ell}Y,
\qquad
\chi_-=\frac{f^E(U)-c^E}{s_\ell}Y,
\tag{6.3}
$$

and hence

$$
\lambda_{\mathrm{rel},\ell m}
=\frac{f^E(U)+g^E(V)-2c^E}{s_\ell}
=\frac{1}{s_\ell}\left(\int_0^Up^E-\int_0^Vr^E\right).
\tag{6.4}
$$

Equations (6.2)--(6.4) give
$\bar a_-^0-\bar a_+^0+d_S\lambda_{\mathrm{rel}}=0$ identically.  The
magnetic representative has zero generator frame and equal coexact corner
connections because $f^B(0)=g^B(0)$.

## 7. Injectivity modulo the declared gauge group

Begin with rapid smooth bulk gauge functions and complete them in the anchored
gauge graph seminorms

$$
q_N^{\mathcal G}(\epsilon)
=q_N^A(d\epsilon)
+\|\epsilon|_{N_+}\|_{H^1_vH^N_S}
+\|\epsilon|_{N_-}\|_{H^1_uH^N_S}.
\tag{7.1}
$$

The endpoint evaluations are continuous in the one-dimensional $H^1$
factors.  Define $\mathcal G_{\mathrm{anch}}^{\mathrm{rap}}$ as the closed
subspace whose values vanish on the two outer cuts $S_+$ and $S_-$.  Its
common value at $S_0$ is allowed: in the split-sheet presentation it is the
diagonal direction, while the remainder on each sheet is sheet-proper.  This
gauge graph is specified independently of the characteristic inverse.

If two anchored potentials have the same characteristic data, (3.2) and the
modewise Goursat uniqueness theorem give the same two masters and hence the
same $F$.  Their difference is a closed one-form.  Since

$$
H^1([0,U]\times[0,V]\times S^2)=H^1(S^2)=0,
\tag{7.2}
$$

the difference is $d\epsilon$.  Equality of the fixed outer frames places
$\epsilon$ in $\mathcal G_{\mathrm{anch}}^{\mathrm{rap}}$.  Conversely every
such $d\epsilon$ leaves $F$ and the reduced characteristic data unchanged.
This proves injectivity of (1.1).

## 8. Closed compatibility, closed gauge image, and Hausdorff quotient

The electric, magnetic, curvature, and connection mismatches define a
continuous linear map between the declared rapid Fréchet spaces.  The full
compatibility locus is its kernel and is therefore closed.

The canonical lift (5.2)--(6.3) gives a continuous projection

$$
\Pi_{\mathrm{can}}(A)=A_{\mathrm{can}}[dA].
\tag{8.1}
$$

For an anchored solution, $A-\Pi_{\mathrm{can}}A=d\epsilon$.  On exact
one-forms the primitive with fixed outer-frame values is recovered by path
integration.  Exactness makes it path independent, while the fixed values
remove the additive constant.  The generator $H^1$ trace terms in (7.1),
together with Poincaré along the two sheets and path integration of the exact
bulk one-form, control the primitive by $d\epsilon$ and its fixed zero outer
traces.  On the smooth subcore the corresponding $C^k$ estimates hold.  Both
estimates persist after angular weighting.  Hence the gauge image is closed
and continuously complemented by the canonical slice.

It follows that the anchored rapid quotient is Hausdorff and continuously
isomorphic to the canonical slice.  Combining this splitting with weak
nondegeneracy of every matched master block proves

$$
\ker\Omega_{\mathcal C}^{\mathrm{rap}}
=\mathfrak g_{+,\mathrm{proper}}^{\mathrm{rap}}
\oplus\mathfrak g_{-,\mathrm{proper}}^{\mathrm{rap}}
\oplus\mathfrak g_{\mathrm{diag}}^{\mathrm{rap}}.
\tag{8.2}
$$

To see that no full-tower kernel is hidden, test a putative kernel vector
against rapid variations supported in one harmonic.  Weak nondegeneracy of
that matched master sector forces every physical harmonic coefficient to
vanish.

## 9. Shifted Sobolev/graph boundary

The intrinsic data norm suggested by (2.1) places $r,p$ at angular order
$H^s$ and $E_0,B_0$ at $H^{s-1}$.  Formula (3.1) maps this to matched master
profiles at angular order $H^s$.  However the elementary bulk estimate for
first generator derivatives contains a factor $\lambda_\ell$, so an
intrinsically characterized bulk graph space must record a further finite
angular shift.

No trace theorem proving that the natural shifted bulk graph is exactly the
range of (4.1) has been supplied here.  Therefore the Hilbert-level
reconstruction and quotient remain `conditional`; the rapid theorem above is
not promoted by defining a graph norm from the desired inverse.

## 10. Theorem T-D

Under the assumptions of Section 1, the composition

$$
\mathcal X_{F,\mathrm{rap}}^{1,\mathrm{comp}}
\xrightarrow{\mathfrak D_X}
\mathcal G_{\mathrm{rap}}^{\mathrm{matched}}
\xrightarrow{\oplus\mathcal R_{\ell;U,V}}
\bigoplus\operatorname{Sol}_{\ell m}^{E/B}
\xrightarrow{(5.1)}F
\xrightarrow{(5.2)-(5.3)}[A]
\tag{10.1}
$$

is the continuous inverse of $R_X$.  Thus T-D is `proved` on the
rapid-angular matched-$H^1$ core and remains `conditional` only for stronger
same-order or shifted Hilbert completions beyond this declared graph.

## Verified

- the Riemann kernel equation and traces;
- the electric and magnetic Maxwell lifts;
- both outer generator frames and exact dressed-connection anchors;
- the relative-frame formula and exact connection compatibility.

## Assumptions

- finite $U,V$, round $S^2_R$, trivial bundle, $Q_E=n=0$, $\ell\geq1$;
- rapid-angular matched-$H^1$ data and the fixed outer-frame/exact-anchor
  policy;
- the matched-$H^1$ Goursat theorem from the read-only lemma bank.

## Not verified

- the shifted Sobolev/graph range characterization;
- $\ell=0$, nontrivial bundle, or $H^1(S)\neq0$ sectors.
