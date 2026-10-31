# Independent investigation: global Virasoro extensions, the PSL splitting, and dual square roots

## Result

**Every real relative central charge in the question integrates to a genuine smooth U(1) central extension of the actual circle diffeomorphism group, with a splitting over the actual PSL(2,R).** An explicit global cocycle is given below. However, that assertion does **not** hold with the usual Bott extension's flat global choice held fixed.

Normalize the real central generator T by exp(2πT)=1, and take the real Lie algebra cocycle to be ω_c=iσ_c. With the rotation and composition conventions specified below, the global extension data are

\[
(c,q),\qquad c\in\mathbb R,\quad q\in U(1),
\]

where q is the endpoint of the positive 2π rotation lifted using the **cubic-normalized** rotation generator. The necessary and sufficient condition for the relative PSL splitting is

\[
\boxed{q\,e^{2\pi i c/24}=1.}\tag{1}
\]

Consequently:

- Allowing a flat global extension: every real c is allowed; the required flat datum is uniquely q=exp(−2πic/24).
- Keeping the usual Bott datum q=1: the relative PSL splitting exists exactly for c∈24Z.
- Among extensions with the specified PSL splitting, every extension has a unique dual square-root **class**, with
  \[
  d=-c/2,\qquad r=e^{\pi i c/24}.
  \]
- Requiring both the original extension and its relative dual square root to remain in the usual Bott family q=r=1: c∈48Z is necessary and sufficient.
- A weight-one line cannot have an equivariant dual square root under the **same acting central U(1) extension**: that would require central weight −1/2. The extension-level square root replaces the acting extension by a double cover. These are different questions.

For c=−26, the PSL-split global datum is q=e^{iπ/6}. Its relative dual half has c=13 and r=e^{11πi/12}. The other square root r=e^{−iπ/12} of q^{-1} fails the PSL condition: its lifted positive 2π PSL loop ends at −1.

This report is independent: no parent report, other review, or old project candidate was inspected. No existing project source was edited. The proofs are self-contained and do not invoke an unexamined literature integration theorem.

## 1. Conventions, including the real structure and composition

Let x have period 2π and X_f=f(x)∂_x. The bracket in the question is the ordinary vector-field bracket

\[
[X_f,X_g]=X_{fg'-gf'},\qquad
l_m=i e^{imx}\partial_x,\qquad
[l_m,l_n]=(m-n)l_{m+n},
\]

with \(\overline{l_m}=-l_{-m}\) and \(\partial_x=-i l_0\).

To make this the **left** Lie bracket while keeping exp(t∂_x)=R_t, where R_t(x)=x+t, calculations below use application-order multiplication

\[
F\star G=G\circ F.
\]

This is a group of actual circle diffeomorphisms, not a replacement by their universal cover. It is isomorphic to the ordinary-composition group by inversion. Equivalently, use ordinary composition and the **right** Lie algebra convention for both the diffeomorphism group and its central extension. In that convention the explicit formulas below have their two arguments reversed. In particular, the ordinary-composition Bott formula is

\[
B_c^{\mathrm{ord}}(F,G)
=-\frac{c}{48\pi}\int_0^{2\pi}\log(F'\circ G)\,d\log G'.
\]

It gives precisely the stated vector-field cocycle in the right-Lie convention. Thus the positive geometric rotation, the i factors, and the phases in (1) are fixed, rather than silently changed. If one instead transports everything by inversion and uses standard left Lie algebras, the geometric rotation orientation reverses and the corresponding holonomy phases are inverted; the lattice and existence statements are unchanged.

Let T be the real Lie algebra generator of the central circle, so its exponential is e^{it}. Put C=iT in the complexified algebra. Then

\[
\overline C=-C,\qquad
[l_m,l_n]_{\widehat{\mathfrak g}}
=(m-n)l_{m+n}+\sigma_c(l_m,l_n)C
=(m-n)l_{m+n}+i\sigma_c(l_m,l_n)T.
\]

The real scalar cocycle is therefore

\[
\omega_c(X_f,X_g)
=\frac{c}{24\pi}\int_0^{2\pi}(f'''+f')g\,dx,
\qquad
\omega_c(l_m,l_n)=i\frac c{12}m(m^2-1)\delta_{m+n,0}.
\tag{2}
\]

This is real-valued on real vector fields when c is real. The numerical σ in the question is not by itself the complexification of a real scalar-valued cocycle: the factor i and the anti-real central element C are essential. Under these fixed conventions, a genuinely nonreal c is not a real U(1) extension parameter.

The cubic representative and the subtracting cochain are

\[
\omega_c^B(X_f,X_g)=\frac{c}{24\pi}\int f'''g\,dx,
\qquad
\beta_c(X_f)=\frac{c}{48\pi}\int f\,dx.
\]

With d_CE β(X,Y)=−β([X,Y]),

\[
\omega_c=\omega_c^B+d_{\rm CE}\beta_c,
\qquad
\beta_c(\partial_x)=\frac c{24}.
\tag{3}
\]

Thus the unique Lie algebra splitting of sl₂ in the cubic extension is

\[
X\longmapsto(X,\beta_c(X)),\qquad X\in\mathfrak h.
\tag{4}
\]

In particular the relative rotation generator is the cubic rotation generator plus (c/24)T. This statement specifies the direction of the usual vacuum subtraction.

### Representation and associated-line signs

This paragraph records a post-report convention clarification requested after the independent group calculation; it does not modify that calculation. For a representation π of the extension with integer central weight ε,

\[
\pi(e^{it})=e^{i\varepsilon t}I,\qquad
 d\pi(T)=i\varepsilon I,
\]

the operators \(L_m=d\pi(\widehat l_m)\), with \(\widehat l_m=(l_m,0)\) in relative coordinates, obey

\[
[L_m,L_n]=(m-n)L_{m+n}-\varepsilon\,
\frac c{12}m(m^2-1)\delta_{m+n,0}I.
\]

Thus **central weight −1**, namely dπ(T)=−iI, identifies the quantum central charge with the parameter c in this report. Central weight +1 instead gives quantum central charge −c. This is a conditional representation-sign statement, not an existence claim for a positive-energy representation.

For clarity, form the principal circle bundle P=E/s(H) over G/H and let a be the central component of the left Maurer–Cartan form. It descends to P because ω(h,g)=0 and H is connected; it satisfies a(T)=1. On horizontal vectors at the base point,

\[
 da(X,Y)=-\omega_c(X,Y).
\]

Use the explicit associated-line convention

\[
(pz,v)\sim(p,z^{\varepsilon}v).
\]

The center then acts on the line with weight ε. Its connection and curvature are

\[
\nabla=d+i\varepsilon a,\qquad
F_{\nabla}=i\varepsilon\,da=-i\varepsilon\omega_c
=\varepsilon\sigma_c
\quad\text{at the base point.}
\]

In particular, the weight −1 line giving positive quantum σ_c has

\[
\boxed{F_{\nabla}=+i\omega_c=-\sigma_c.}
\]

To compare with a convention
\(\Omega_C(e_m,e_{-m})=-iC\,w_m/12\), where \(e_m=[l_m]\) for |m|≥2 and \(w_m=m(m^2-1)\), set the **numerical** coefficient C=c. Then Ω_C=−ω_c and

\[
F_{\nabla}=-i\Omega_C.
\]

The C in this last comparison denotes a numerical coefficient, not the central basis element C=iT defined above. The weight +1 convention used for the illustrative homogeneous line in Section 6.3 instead has F=−iω_c=+σ_c and the opposite quantum-charge mapping.

## 2. Explicit global group cocycles

### 2.1 The lift group is used for formulas, not confused with G

Write

\[
\widetilde G=\{F\in C^\infty(\mathbb R,\mathbb R):F'>0,
\ F(x+2\pi)=F(x)+2\pi\}.
\]

The deck transformation is T_nF=F+2πn. The underlying space of \(\widetilde G\) is convex: interpolate F with x. It is therefore contractible and is the universal covering group of G. Its central deck subgroup is generated by R_{2π}.

For F,G in this lift group define

\[
B_c(F,G)
=-\frac{c}{48\pi}\int_0^{2\pi}
\log G'(F(x))\,\frac{F''(x)}{F'(x)}\,dx.
\tag{5}
\]

All logarithms here are logarithms of positive real derivatives. This formula is independent of the lifts of both arguments, so B_c is already a smooth real-valued cocycle on the actual group G. It is normalized at the identity and vanishes when either argument is a rigid rotation.

For completeness, let L_F=log F'. The chain rule gives

\[
L_{G\circ F}=L_G\circ F+L_F.
\]

Substitution in (5), followed by the change of variable y=F(x), gives

\[
B_c(F,G)+B_c(G\circ F,H)
=B_c(G,H)+B_c(F,H\circ G).
\]

Periodicity makes the changed integration interval immaterial. This verifies associativity of the extension directly. Antisymmetrizing the mixed derivative at F=x+tf, G=x+sg gives precisely \(\omega_c^B\) in the application-order convention.

### 2.2 A globally defined vacuum-subtracted cocycle

Define the mean displacement and the generally multivalued cochain

\[
\mu(F)=\frac1{2\pi}\int_0^{2\pi}(F(x)-x)\,dx,
\qquad A_c(F)=\frac c{24}\mu(F).
\]

It changes under deck translation by

\[
A_c(T_nF)=A_c(F)+2\pi n\frac c{24}.
\tag{6}
\]

Although A_c need not descend to G, its group coboundary does:

\[
b_c(F,G)=B_c(F,G)+A_c(F)+A_c(G)-A_c(G\circ F).
\tag{7}
\]

For example, translating F by 2πn translates G∘F by the same amount, so the two changes cancel. The cancellation also holds for an independent deck translation of G. In explicit lift-independent form,

\[
\begin{split}
b_c(F,G)={}&-\frac{c}{48\pi}\int_0^{2\pi}
\log(G'\circ F)\,d\log F'\\
&+\frac{c}{48\pi}\int_0^{2\pi}
\big(F(x)+G(x)-G(F(x))-x\big)\,dx.
\end{split}
\tag{8}
\]

The second integrand is periodic. The cocycle identity follows from that of B and δ²A=0 on the lift group; lift independence then proves it on G. Smoothness follows in local lift charts from smooth composition, positive-derivative logarithms, and integration. No formal Lie algebra integration assumption remains.

For every real c, the product

\[
(g,z)\,(h,w)=\big(g\star h,zw\,e^{i b_c(g,h)}\big)
\tag{9}
\]

on G×U(1) is consequently a genuine smooth, locally trivial central extension of the actual group. Its Lie algebra cocycle is (2), by (3).

The crucial distinction is that (7) is not in general a globally single-valued U(1) gauge change of the usual Bott extension. Such a gauge would be e^{iA_c(F)}, which descends exactly when c/24 is an integer. Otherwise (7) changes the flat global extension datum.

## 3. Exact PSL splitting: a Möbius calculation

In fact,

\[
\boxed{b_c(h,k)=0\quad\text{for all }h,k\in H.}\tag{10}
\]

Here is an exact calculation, stronger than merely checking the infinitesimal cocycle on sl₂.

Represent a disk automorphism by

\[
M_F(z)=\frac{\alpha_F z+\beta_F}{\bar\beta_F z+\bar\alpha_F},
\qquad |\alpha_F|^2-|\beta_F|^2=1,
\]

with the two matrices ±M identified. On a lift, choose the continuous argument of α_F. Put r_F=\(\bar\beta_F/\bar\alpha_F\), so |r_F|<1. The boundary lift and its derivative obey

\[
F(x)-x=2\arg\alpha_F-2\operatorname{Im}\log(1+r_Fe^{ix}),
\qquad
L_F=-2\log|\alpha_F|-2\operatorname{Re}\log(1+r_Fe^{ix}).
\]

The holomorphic logarithm has zero average, giving

\[
A_c(F)=\frac c{12}\arg\alpha_F.
\tag{11}
\]

Let P=G∘F. Its matrix entries are

\[
\alpha_P=\alpha_G\alpha_F+\beta_G\bar\beta_F,
\qquad
\beta_P=\alpha_G\beta_F+\beta_G\bar\alpha_F.
\]

Since \(L_G\circ F=L_P-L_F\), the Bott integral is

\[
B_c(F,G)=-\frac{c}{48\pi}\int L_P L_F'\,dx.
\]

Expanding the absolutely convergent logarithmic Fourier series gives

\[
\int_0^{2\pi}L_P L_F'\,dx
=4\pi\operatorname{Arg}(1-r_F\bar r_P).
\tag{12}
\]

The elementary denominator identity is

\[
1-r_F\bar r_P=\frac{\alpha_G}{\bar\alpha_F\alpha_P}.
\tag{13}
\]

Its continuously chosen argument equals
\(\arg\alpha_F+\arg\alpha_G-\arg\alpha_P\). There is no hidden 2π ambiguity: the left-hand side lies in the open right half-plane, and equality holds at the identity and continues on the connected lifted group. Equivalently, the product formula writes α_P/(α_Gα_F) as 1+w with |w|<1.

Equations (11)–(13) show

\[
B_c(F,G)=-A_c(F)-A_c(G)+A_c(G\circ F),
\]

which proves (10). Therefore

\[
s:H\longrightarrow E_c^{\rm rel},\qquad s(h)=(h,1)
\tag{14}
\]

is an actual group homomorphism splitting the extension. It is defined on PSL itself, including its noncontractible rotation loop.

## 4. The global datum and the concrete loop obstruction

### 4.1 A useful parametrization

For q∈U(1), start with the Bott product on \(\widetilde G\times U(1)\), then impose

\[
[F+2\pi n,z]=[F,q^n z].
\tag{15}
\]

The deck elements commute with everything and have zero Bott cocycle, so this is a well-defined smooth central extension E_{c,q} of G. The usual Bott extension is E_{c,1}.

The cubic-normalized rotation lift is t↦[R_t,1]. Its endpoint at 2π is [id,q]. Equation (4) instead gives the forced relative sl₂ rotation lift

\[
t\longmapsto[R_t,e^{it c/24}].
\]

At t=2π its endpoint is

\[
[id,q\,e^{2\pi i c/24}].
\tag{16}
\]

A homomorphism from the actual H must send this identity element of H to the identity of E. This proves necessity of (1). It is a concrete loop obstruction, not a curvature-period heuristic.

Sufficiency is explicit: if (1) holds, then

\[
s(h)=[F,e^{iA_c(F)}]
\tag{17}
\]

is independent of the lift F of h by (6) and (15), and is multiplicative by the Möbius calculation. More generally,

\[
E_c^{\rm rel}\longrightarrow E_{c,e^{-2\pi ic/24}},
\qquad(g,z)\longmapsto[F,z e^{iA_c(F)}]
\tag{18}
\]

is an isomorphism over G, preserving the center and the H splitting.

There is no contradiction between the closed rotation section (R_t,1) in the relative model (9) and a nontrivial q: in relative coordinates the **cubic** rotation generator is (∂_x,−c/24), so its endpoint is exactly e^{−2πic/24}.

### 4.2 Why these are the global data relevant here

The following argument concerns smooth, locally trivial central extensions with the specified infinitesimal class, not arbitrary discontinuous group cohomology.

The difference, under Baer sum, of two such extensions has split Lie algebra. A Lie algebra splitting defines a flat principal U(1) connection. Horizontal lifting along paths gives its pullback to the simply connected lift group as the product extension; homotopy invariance leaves precisely a character

\[
\pi_1(G)\longrightarrow U(1).
\]

Since \(\widetilde G\) is contractible, \(\pi_1(G)=\mathbb Z\), and this character is specified by one q. This path-lifting argument only uses ordinary U(1) differential equations in bundle charts; no infinite-dimensional integration of a proposed nonflat Lie algebra cocycle is being assumed. The nonflat extension was already constructed explicitly in (5).

The possible ambiguity from changing the Lie algebra splitting or a character of the connected lift group is absent. Indeed the vector-field Lie algebra is perfect: if f=a+u' with u periodic, then

\[
X_f=[\partial_x,X_u]-a[\sin x\,\partial_x,\cos x\,\partial_x].
\]

Hence a smooth group character on the connected lift group has zero differential and is trivial. Similarly, H is connected with perfect Lie algebra sl₂, so it has no nontrivial smooth U(1) character. Whenever the H splitting exists, it is unique.

Thus, within the specified infinitesimal family, the relative extension classes form the graph

\[
\{(c,e^{-2\pi ic/24}):c\in\mathbb R\}\cong\mathbb R.
\tag{19}
\]

Different c really are different Lie algebra classes: comparing a putative coboundary on (l_1,l_{−1}) and (l_2,l_{−2}) already rules out changing a nonzero c by a coboundary.

### 4.3 PSL is not its universal cover

For the physical boundary rotation R_t, an SU(1,1) representative is diag(e^{it/2},e^{−it/2}). At t=2π it equals −I, which is the identity in PSU(1,1)≅PSL(2,R). This is one generator of π₁(H), and its image is one generator of π₁(G).

The universal covering group of H has no such closing relation, so (4) always integrates there. That is not a proof of descent to H. On the double cover SL(2,R), the closing rotation is the physical 4π rotation. For the fixed usual Bott extension its splitting condition is c∈12Z, whereas descent to actual PSL still requires c∈24Z. Confusing these covers loses a factor of two.

For a fixed arbitrary q_0, the allowed relative charges are exactly

\[
\{c\in\mathbb R:q_0e^{2\pi ic/24}=1\},
\]

a translate of 24Z. The assertion “any c integrates” is true if the Bott-referenced flat datum can be chosen as a function of c, not if that datum has been frozen independently.

The word “fixed” must specify a reference. In **relative** normalization the rotation datum is instead χ=q exp(2πic/24), and the PSL condition is simply χ=1. Keeping χ=1 for every c is exactly the whole vacuum-subtracted family, with no quantization. It is not the same family as keeping the **Bott-referenced** q=1. Flat extension data form a torsor until a reference extension has been chosen; the comparison between these two references is (18).

## 5. Contractibility and why it is not an equivariance argument

There is an explicit contractible model for G/H. Fix three cyclically ordered points p₀,p₁,p₂. A disk Möbius transformation uniquely sends any positively ordered triple to this triple. With application-order multiplication, each right H coset therefore has a unique representative fixing these three points. Choose its lift with F(p₀)=p₀. The set

\[
F'>0,\quad F(x+2\pi)=F(x)+2\pi,\quad F(p_j)=p_j
\]

is convex. Interpolation with the identity stays in it. The normalizing Möbius transformation depends smoothly on the triple, so this is also a global section of the quotient. Thus G/H is contractible, not merely known to have a few vanishing homotopy groups. For the ordinary-composition quotient, inversion gives the equivalent description.

It follows that ordinary smooth line bundles on G/H have no topological Chern-class obstruction to square roots. The relative two-form defined by (2) likewise has no nonzero sphere periods there. Also π₂(G)=0. None of these statements removes the lifted **group** loop (16).

A genuine G-equivariant line on G/H is determined by a character of H. Since H has no nontrivial smooth characters, such a line is equivariantly trivial. A nonzero central charge refers instead to a projective G action, or equivalently an action of a specified central extension preserving the relevant structure. Saying only “the base is contractible, hence the equivariant root exists” omits precisely that datum.

## 6. Three different square-root questions

### 6.1 Square root of the relative central extension

Baer sum has the simple law

\[
(c,q)+(d,r)=(c+d,qr),
\]

and duality sends (c,q) to (−c,q^{-1}). An extension square root of the dual must obey

\[
2d=-c,\qquad r^2=q^{-1}.
\tag{20}
\]

Without an H splitting there are two global root classes, distinguished by r→−r. If the original is relatively split, q=e^{−2πic/24}, the relative root must have

\[
d=-c/2,\qquad r=e^{-2\pi id/24}=e^{\pi ic/24}.
\tag{21}
\]

This always satisfies (20), and the other root does not satisfy the relative PSL condition. Therefore the relative dual square-root class exists and is unique for every real c. In the explicit cocycle model, b is linear in c, so

\[
2b_{-c/2}=-b_c
\]

proves the square-root identity at the group-cocycle level, including the chosen splitting.

The map

\[
E_{-c/2}^{\rm rel}\longrightarrow (E_c^{\rm rel})^{\vee},
\qquad(g,z)\longmapsto(g,z^2)
\tag{22}
\]

is a central double cover preserving the H splittings. Its kernel is {±1}.

### 6.2 Roots with a frozen flat convention

For the usual Bott convention q=1, the original relative extension requires c=24k. Its Bott dual half has charge −12k and admits the PSL splitting precisely when k is even. Hence c∈48Z.

A simple counterexample to ignoring this condition is c=24. The original Bott extension has the PSL splitting, but its Bott dual half c=−12 has relative rotation endpoint −1. A flat twist r=−1 repairs it; the twist cannot be silently omitted.

An arbitrary prescribed root flat datum r₀ must satisfy both equations

\[
r_0^2=q^{-1},\qquad r_0e^{-\pi ic/24}=1.
\]

Fixing the original extension does not prohibit all roots: it leaves two possible root flat data, exactly one of which is relatively split. Prohibiting a change of the root's global datum is the extra restriction.

Even for c not in 24Z, the ordinary Bott extension has an **absolute**, non-relative dual root given by the Bott extension at −c/2. What fails is the requested PSL splitting, not the absolute square-root equation.

### 6.3 Root of a line under a fixed acting group

Given an H-split extension E, its natural homogeneous line is obtained from E/(s(H)) using the standard central character. The center acts on this line with weight one. If a line M under the **same E action** satisfied

\[
M^{\otimes2}\cong L^{\vee}
\]

equivariantly, its restriction to the central circle would be a character z↦z^n with 2n=−1. No such integer n exists. Equivalently, the identity rotation θ=2π in the central circle would act by −1 on a proposed half-weight fiber.

Thus the extension-level root in (21) should not be advertised as a root for the original acting E. It gives a root for the replacement extension in (22); the squared line then descends through the kernel {±1}. With the weight −1 convention needed for positive quantum σ_c in Section 1, the same obstruction is 2n=+1 instead; the conclusion is identical. More generally an odd central weight cannot have a dual square root under the same E, while for even integer central weight under a fixed H-split E this particular obstruction disappears.

If “equivariant” means honest G-equivariance with no anomalous lift at all, the line classification is instead the trivial one in Section 5. These meanings must not be interchanged.

## 7. Only now specialize to −26 and 13

With all normalizations above, the data are as follows. These c labels also equal the quantum central charges when the associated line/representation has central weight −1; a weight +1 convention negates the quantum labels, as derived in Section 1.

| Object | c | Relative PSL rotation factor in the ordinary Bott model | Flat datum required for actual PSL splitting |
|---|---:|---|---|
| Proposed determinant extension | −26 | e^{−iπ/6} | e^{iπ/6} |
| Its proposed dual half | 13 | e^{13πi/12} | e^{11πi/12} |

Neither c=−26 nor c=13 admits the desired PSL splitting in the unmodified usual Bott extension q=1. Both admit it in the explicit vacuum-subtracted extension (9).

For the PSL-split c=−26 extension,

\[
q^{-1}=e^{-i\pi/6},\qquad
r_{\rm good}=e^{11\pi i/12},\qquad
r_{\rm other}=e^{-i\pi/12}.
\]

Both r's square to q^{-1}; only the first is relatively split. The concrete failure of the second is

\[
r_{\rm other}e^{2\pi i(13)/24}
=e^{-i\pi/12}e^{13i\pi/12}=-1.
\tag{23}
\]

Thus a naive principal square root of the flat phase selects the wrong relative root in this example.

The coefficient −26 alone does not identify the flat datum of an actual analytically constructed determinant line. One must compute its lifted 2π rotation, or exhibit its PSL splitting, to identify it with the model above. No determinant construction was supplied here, so that identification is not asserted.

## 8. Verification record and limits

**Proved analytically:** the explicit cocycle identities; lift independence; the real and Fourier normalization; exact vanishing of b on H×H; the rotation obstruction and sufficiency; the flat-data classification within the specified smooth infinitesimal family; contractibility by a global normalized-three-point slice; the relative extension square root and the fixed-group central-weight obstruction.

**Machine checked:** the finite-mode normalization for all m,n from −4 to 4; horizontality against modes −5 through 5; the general Jacobi polynomial after imposing m+n+k=0; the Möbius denominator identity; a non-Möbius numerical group-cocycle test and a deck-invariance test; a numerical Möbius splitting test at irrational c=√2; and the phase −1 in (23). The numerical tests used 45-digit working precision and tolerance 10^{−25}; all passed. These support the analytic proofs, not a replacement for them. The kernel reported no messages and no failed or unevaluated calculations.

The reproducible input is [verification.wl](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent-global-virasoro.mv1Bzo/verification.wl>). Complete outputs are [the readable CAS record](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent-global-virasoro.mv1Bzo/cas.6wosC3/preview.txt>) and [the exact WXF artifact](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent-global-virasoro.mv1Bzo/cas.6wosC3/result.wxf>).

The supplementary representation/curvature sign calculation and both odd-weight root obstructions were checked separately using [sign-check.wl](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent-global-virasoro.mv1Bzo/sign-check.wl>); see [the sign-check output](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent-global-virasoro.mv1Bzo/sign-cas.NLf9ng/preview.txt>) and [its exact artifact](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent-global-virasoro.mv1Bzo/sign-cas.NLf9ng/result.wxf>). All sign residuals are exactly zero; neither 2n=−1 nor 2n=+1 has an integer solution. **Verified:** the sign mapping above. **Assumptions:** left-Lie application-order convention, the stated associated-bundle equivalence, and a representation of central weight ε when discussing quantum operators. **Not verified:** existence of a particular representation or identification with a specific determinant connection.

**Not established or not requested:** identification with a particular determinant/Quillen construction; its canonical choice of flat phase, metric, or connection; holomorphic square roots for an additional complex structure; positive-energy unitary representations. A central extension and a homogeneous line do not by themselves prove any of those additional structures exist. No literature PDFs were used, so there is no unverified source-hypothesis transfer. No further agent delegation was available at this session depth; this report itself is the fresh independent investigation requested.
