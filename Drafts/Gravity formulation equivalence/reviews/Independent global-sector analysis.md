# Independent global-sector analysis

## Results and scope

The Hill-equation classification and the global connection statements are different theorems. They must not be conflated.

1. For the Hill equation \(\psi''-L\psi=0\), the constants \(L=-n^2/4\), \(n\in\mathbb N_{>0}\), have matrix monodromy \((-1)^nI\), trivial projective monodromy, and projective developing degree \(n\). Their stabilizers all have Lie algebra \(\mathfrak{sl}_2\), but their finite stabilizers are different covers of \(PSL(2,\mathbb R)\).
2. The exact map
   \[
   f\longmapsto L_f=-\frac14(f')^2-\frac12\{f,\phi\}
   \]
   is a bijection, modulo postcomposition by projective circle transformations, onto the smooth real periodic Hill potentials with trivial projective monodromy and developing degree one. Equivalently, the image has Hill monodromy \(-I\) **and** degree one. Central monodromy alone is insufficient.
3. Among the constant, nonrotating representatives, only \(n=1\) has a smooth nondegenerate degree-one vacuum filling with angular period \(2\pi\). The representatives \(n>1\) have cone angle \(2\pi n\), despite their central Hill monodromy.
4. A genuinely smooth flat principal \(SL(2,\mathbb R)\) connection on a disk cannot have holonomy \(-I\) around a contractible loop. Its genuine holonomy is \(I\). A raw coefficient transport \(-I\) in an antiperiodically lifted polar frame is not the same object: its closing frame transition contributes another \(-I\).
5. Global AdS admits explicit smooth flat \(SL(2,\mathbb R)\times SL(2,\mathbb R)\) representatives with a nondegenerate triad. Consequently, nonsingularity of the metric by itself does not force the CS group to be \(PSL(2,\mathbb R)\times PSL(2,\mathbb R)\). A fixed periodic polar-matrix boundary presentation is additional data.
6. None of these statements, by itself, identifies the complete metric and CS reduced phase spaces. Global filling, gauge-group, invertibility, relative-framing, boundary-action and symplectic statements remain separate obligations.

The Hill, contractible-holonomy and cone arguments were obtained independently before consulting the Cotler–Jensen argument. The later comparison below uses the exact local source. No pre-existing research note was edited. This review and its two verification files were created subsequently with express authorization.

## 1. Conventions

The Hill coordinate is \(\phi\sim\phi+2\pi\). A prime denotes \(d/d\phi\), and
\[
\{f,\phi\}=\frac{f'''}{f'}-\frac32\left(\frac{f''}{f'}\right)^2.
\]
All Hill potentials and reparameterizations are smooth and real. Reparameterizations satisfy
\[
f'>0,\qquad f(\phi+2\pi)=f(\phi)+2\pi.
\]
When discussing circle diffeomorphisms, lifts differing by \(2\pi\mathbb Z\) represent the same element of \(\operatorname{Diff}^+(S^1)\).

For matrix connections the convention is
\[
D=d+A,\qquad F=dA+A\wedge A,\qquad
A^k=k^{-1}Ak+k^{-1}dk.
\]
Thus \(A=G^{-1}dG\) is flat, and horizontal components obey \(dv=-Av\). The Hill companion system below instead obeys \(dv=a_Lv\), corresponding to \(A_H=-a_Ld\phi\). For central monodromy the sign convention does not change \(\pm I\).

In the explicit AdS construction, \(\ell=1\), signature is \((-++)\), and
\[
e=\frac{A-\bar A}{2},\qquad \omega=\frac{A+\bar A}{2},\qquad
g_{\mu\nu}=2\operatorname{tr}(e_\mu e_\nu).
\]
The matrix basis is
\[
J=\begin{pmatrix}0&-1\\1&0\end{pmatrix},\quad
\sigma_3=\begin{pmatrix}1&0\\0&-1\end{pmatrix},\quad
\sigma_1=\begin{pmatrix}0&1\\1&0\end{pmatrix}.
\]
In particular \(2\operatorname{tr}[(J/2)^2]=-1\), while \(2\operatorname{tr}[(\sigma_i/2)^2]=1\).

The spacetime is \(\mathbb R_t\times D\), with unwrapped time. Its interior can be represented by \((t,x,y)\in\mathbb R^3\), where \(r=\sqrt{x^2+y^2}\) is unbounded and the asymptotic boundary is the conformal end. Smoothness is required at the axis, not just on the punctured disk. For an oriented and time-oriented Lorentz group, the precise adjoint group is \(SO_0(2,1)\simeq PSL(2,\mathbb R)\).

## 2. Constant Hill potentials: monodromy and developing degree

Write
\[
\frac d{d\phi}\binom{\psi}{\psi'}
=a_L\binom{\psi}{\psi'},\qquad
 a_L=\begin{pmatrix}0&1\\L&0\end{pmatrix}.
\]
For \(L_n=-n^2/4\),
\[
a_n^2=-\frac{n^2}{4}I,
\qquad e^{2\pi a_n}=(-1)^nI.
\]
A Wronskian-one solution basis is
\[
\psi_1=\sqrt{\frac2n}\cos\frac{n\phi}{2},\qquad
\psi_2=\sqrt{\frac2n}\sin\frac{n\phi}{2},\qquad
\psi_1\psi_2'-\psi_1'\psi_2=1.
\]
Its projective developing map is
\[
p_n(\phi)=[\psi_1(\phi):\psi_2(\phi)]
=[\cos(n\phi/2):\sin(n\phi/2)]\in\mathbb{RP}^1.
\]
The projective angle is periodic modulo \(\pi\), so \(p_n\) has positive degree \(n\). In an affine chart it is \(\tan(n\phi/2)\). The poles of this affine coordinate are not singularities of the projective map.

Therefore:

- in \(SL(2,\mathbb R)\), the monodromy remembers only the parity of \(n\);
- in \(PSL(2,\mathbb R)\), every one of these monodromies is the identity;
- the projective developing degree remembers the full positive integer \(n\).

The concrete counterexample \(L=-9/4\) has the same \(-I\) Hill monodromy as the vacuum \(L=-1/4\), but developing degree three rather than one. The constant \(L=-1\), with \(n=2\), already provides a counterexample if only projective identity holonomy is imposed.

### 2.1 Stabilizers

The infinitesimal reparameterization law in these conventions is
\[
\delta_\xi L=\xi L'+2\xi'L-\frac12\xi'''.
\]
At \(L_n\), its kernel is
\[
\xi'''+n^2\xi'=0,
\qquad
\xi=a+b\cos(n\phi)+c\sin(n\phi).
\]
Thus every positive integer \(n\) has a three-dimensional stabilizer Lie algebra isomorphic to \(\mathfrak{sl}_2\). The dimension of the stabilizer does not select the vacuum.

The finite stabilizer consists of the lifts through \(p_n\) of projective transformations:
\[
p_n\circ f=M\circ p_n,\qquad M\in PSL(2,\mathbb R).
\]
It fits into
\[
1\longrightarrow\mathbb Z_n\longrightarrow\operatorname{Stab}(L_n)
\longrightarrow PSL(2,\mathbb R)\longrightarrow1,
\]
where the kernel consists of rotations \(\phi\mapsto\phi+2\pi k/n\). This is the connected \(n\)-fold cover of \(PSL(2,\mathbb R)\) embedded in \(\operatorname{Diff}^+(S^1)\). For \(n=1\) it is the usual projective subgroup; for \(n=2\) it is its double cover.

## 3. The exact vacuum map

### 3.1 Direct construction

If \(\chi''(u)-L_0(u)\chi(u)=0\), then
\[
\psi_f(\phi)=(f'(\phi))^{-1/2}\chi(f(\phi))
\]
satisfies
\[
\psi_f''-\left((f')^2L_0\circ f-\frac12\{f,\phi\}\right)\psi_f=0.
\]
For \(L_0=-1/4\), choose
\[
\psi_{1,f}=\sqrt{\frac2{f'}}\cos\frac f2,
\qquad
\psi_{2,f}=\sqrt{\frac2{f'}}\sin\frac f2.
\]
Their Wronskian is one, both are antiperiodic, and they solve the equation with potential \(L_f\). Hence the Hill monodromy is \(-I\). Their projective map is
\[
[\cos(f/2):\sin(f/2)],
\]
a degree-one orientation-preserving diffeomorphism of the projective circle.

Equivalently, in an affine chart,
\[
\{\tan(f/2),\phi\}=\{f,\phi\}+\frac12(f')^2,
\qquad L_f=-\frac12\{\tan(f/2),\phi\}.
\]

### 3.2 Exact fibers

Suppose \(L_f=L_g\). The two Wronskian-one solution bases are related by a constant determinant-one matrix. Their projective maps therefore differ by a constant element of \(PSL(2,\mathbb R)\). Thus
\[
g=h\circ f
\]
as circle maps, for a projective circle transformation \(h\). Conversely, projective postcomposition leaves the Schwarzian of the developing map unchanged, so it leaves \(L_f\) unchanged.

This proves exact injectivity modulo projective postcomposition, not merely a local or perturbative statement.

There are two bookkeeping qualifications:

1. With ordinary composition notation the literal quotient is \(PSL\backslash\operatorname{Diff}^+(S^1)\). The common notation \(\operatorname{Diff}/PSL\) uses the orbit-action convention or an inverse parameterization. The actual equivalence relation should be stated.
2. If real lifts \(f\), rather than circle diffeomorphisms, are the objects, then all lifts of the projective group must be included. The fiber group is the full lifted \(\widetilde{PSL}(2,\mathbb R)\), including \(f\mapsto f+2\pi k\). A bare \(PSL\) action on real lifts is not single-valued without a lift convention.

### 3.3 Exact image and the missing integer

Let \(L\) be a smooth real periodic potential with central monodromy. Choose a real Wronskian-one basis \((\psi_1,\psi_2)\). The two functions never vanish simultaneously. On the real line write
\[
\psi_1+i\psi_2=R e^{i\vartheta},\qquad R>0.
\]
The Wronskian condition gives
\[
\vartheta'=\frac1{R^2}>0.
\]
Central monodromy implies
\[
\vartheta(\phi+2\pi)-\vartheta(\phi)=n\pi
\]
for a positive integer \(n\), and its sign is \((-1)^nI\). This \(n\) is precisely the projective developing degree.

If \(n=1\), set \(f=2\vartheta\). Then \(f'>0\), \(f(\phi+2\pi)=f(\phi)+2\pi\), and \(R^2=2/f'\). Substitution reproduces the solution basis above and yields \(L=L_f\).

More generally, setting \(f=2\vartheta/n\) proves
\[
L=-\frac{n^2}{4}(f')^2-\frac12\{f,\phi\}.
\]
Thus all smooth central-monodromy potentials are partitioned into these exceptional reparameterization orbits, indexed by positive developing degree. The vacuum image is exactly the degree-one member of this classification.

This is a theorem about Hill/projective structures. It has not assumed an identification with metric or CS phase space.

## 4. Which constant representatives have a smooth filling?

Use standard Bañados light-cone coordinates \(x^\pm=t/\ell\pm\phi\). For equal constants \(L_+=L_-=-n^2/4\), the metric can be written
\[
 ds^2=\ell^2d\rho^2
 -\left(e^\rho+\frac{n^2}{4}e^{-\rho}\right)^2dt^2
 +\ell^2\left(e^\rho-\frac{n^2}{4}e^{-\rho}\right)^2d\phi^2.
\]
On the exterior-to-axis branch, define
\[
r=\ell\left(e^\rho-\frac{n^2}{4}e^{-\rho}\right)\geq0.
\]
Then
\[
ds^2=-\left(\frac{r^2}{\ell^2}+n^2\right)dt^2
+\frac{dr^2}{r^2/\ell^2+n^2}+r^2d\phi^2.
\]
Near the axis, with \(R=r/n\) and \(T=nt\),
\[
ds^2=-dT^2+dR^2+n^2R^2d\phi^2+O(R^2dT^2,R^2dR^2).
\]
The circumference-to-proper-radius ratio tends to \(2\pi n\). Smoothness with \(\phi\sim\phi+2\pi\) therefore requires \(n=1\).

Indeed the exact substitution \(T=nt\), \(R=r/n\), \(\Theta=n\phi\) gives the usual global-AdS metric locally, but \(\Theta\) has period \(2\pi n\). For \(n>1\) this is an angular multiple cover with a branched/singular axis, not a smooth degree-one disk filling. Changing the angular period to remove the excess changes the boundary identification and is not an allowed degree-one reparameterization.

For unequal constant chiral values, the standard metric has
\[
g_{t\phi}=\ell(L_+-L_-).
\]
A regular axis of the closed \(\partial_\phi\) circles requires this to vanish there. Within this constant stationary branch, \(L_+=L_-\) is therefore necessary; positive integer labels then agree, and regularity selects \((n_+,n_-)=(1,1)\). A nonzero time component cannot be added to the contractible closed circle when time is unwrapped.

This explicit regularity calculation is stronger than a central-holonomy test. Extending the conclusion to every possible smooth locally AdS filling requires a global developing-map/filling theorem with its completeness and causal hypotheses stated; that theorem is not supplied merely by Brown–Henneaux asymptotics.

## 5. Genuine holonomy, polar coefficients and relative framing

### 5.1 Flat connections on a disk

For any smooth flat principal connection on a simply connected disk, parallel transport is path-independent. Fixing a point and a fiber gives a global horizontal trivialization. Consequently every contractible-loop holonomy is exactly the identity element of the actual structure group.

For \(SL(2,\mathbb R)\), this identity is \(I\), not the set \(\{I,-I\}\). No spin-structure terminology changes this theorem. The disk has no nontrivial flat \(\mathbb Z_2\) local system that would turn \(-I\) into genuine contractible holonomy.

### 5.2 An antiperiodic frame is not a periodic trivialization

Let a smooth global connection be represented by \(A=0\). On a cut annular polar chart choose
\[
h(\phi)=e^{\phi J/2},\qquad h(2\pi)=-h(0).
\]
The local polar coefficients are
\[
A_{\rm pol}=h^{-1}dh=\frac J2d\phi.
\]
Their horizontal-component transport is \(U_{\rm pol}=e^{-\pi J}=-I\). But the polar frame itself closes with transition \(z=-I\). Returning to the initial geometric frame gives
\[
\operatorname{Hol}=zU_{\rm pol}=(-I)(-I)=I.
\]
If instead one declares the displayed matrix coefficients to live in a genuinely periodic \(SL\) frame, there is no \(z\), the holonomy is genuinely \(-I\), and that particular annular connection does not extend to a smooth flat disk connection. These are different global connection data, even though the local coefficient matrices look identical.

In \(PSL\), the same \(h\) is single-valued on the annulus, but winds once. It does not extend through the axis as a gauge map. The regular description uses an interior frame and an annular transition. Quotienting the center does not magically make a polar frame a smooth Cartesian frame.

### 5.3 Identity holonomy is not the whole relative-framing test

If a boundary frame is fixed and required to extend over the disk, a smooth flat matrix connection is globally pure gauge by a map \(G:D\to G_{\rm gauge}\). Its boundary pure-gauge loop must be null-homotopic.

For the constant Hill connection, the \(PSL\) transport loop has winding \(n\), up to a common orientation convention. For even \(n=2m\), its closed \(SL\) transport loop has winding \(m\). Hence even when raw holonomy is \(I\), that boundary matrix one-form cannot be the restriction of a smooth globally flat matrix one-form in an extending trivialization.

This is a **relative-framing** obstruction, not a claim that no unframed smooth flat connection can be described using those annular coefficients. A nonextendible annular frame can shift the relative winding. The conventional polar framing of a smooth degree-one gravitational disk supplies a particular such class. A global smooth representative has null-homotopic boundary pure-gauge map; the polar representative need not.

## 6. Explicit smooth SL representatives and the Cotler–Jensen argument

The source is [Cotler–Jensen, arXiv:1808.03263v3](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/sources/Cotler-Jensen-1808.03263v3.pdf>). The relevant formulas were visually checked on PDF pages 19–20, printed pages 18–19, equations (3.7)–(3.13). Their later imposed winding-one sector was visually checked on PDF page 22, printed page 21, preceding (3.23).

They use \(x^+=t+\theta\), \(x^-=-t+\theta\), \(\ell=1\). Relative to the standard coordinates in the previous section, their \(x^-\) is the negative of the standard \(x^-\); this is a convention change, not a change of the constant-sector geometry.

Their polar dreibein (3.7) contains \(r\,d\theta\) and \(dr/\sqrt{1+r^2}\). Those individual frame components are not a smooth coframe at the axis, although the metric is smooth. Their displayed local pure-gauge matrices can be written
\[
g_{\rm pol}=R((t+\theta)/2)D,\qquad
\bar g_{\rm pol}=R((-t+\theta)/2)D^{-1},
\]
where
\[
R(\alpha)=e^{\alpha J},\qquad
D=\operatorname{diag}(\rho,\rho^{-1}),\qquad
\rho=\sqrt{\sqrt{1+r^2}+r}=e^{\frac12\operatorname{arsinh}r}.
\]
Both change sign under \(\theta\mapsto\theta+2\pi\). Their coefficient transport \(-I\), equation (3.13), is therefore correct in a periodic \(SL\) interpretation of those coefficients. Such an annular connection cannot extend as a smooth flat \(SL\) connection with that same periodic-frame interpretation.

The stronger inference that global AdS is singular for every cover of \(PSL\), or that metric nonsingularity uniquely fixes the group to \(PSL\times PSL\), is not an invariant conclusion. The omitted frame/transition data matter.

### 6.1 A global smooth lift

On a cut polar patch let
\[
h(\theta)=R(\theta/2),\qquad
G=g_{\rm pol}h^{-1},\qquad \bar G=\bar g_{\rm pol}h^{-1}.
\]
Put
\[
x=r\cos\theta,\quad y=r\sin\theta,\quad
c=\sqrt{\frac{\sqrt{1+x^2+y^2}+1}{2}}.
\]
Then the matrices are explicitly
\[
\boxed{G=R(t/2)\left(cI+\frac{x\sigma_3+y\sigma_1}{2c}\right)},
\qquad
\boxed{\bar G=R(-t/2)\left(cI-\frac{x\sigma_3+y\sigma_1}{2c}\right)}.
\]
These are smooth single-valued \(SL(2,\mathbb R)\)-valued maps on the entire solid cylinder. In fact \(c>0\),
\[
(x\sigma_3+y\sigma_1)^2=(x^2+y^2)I,
\qquad c^2-\frac{x^2+y^2}{4c^2}=1,
\]
so the two bracketed factors have determinant one and are mutual inverses.

Define
\[
A_{\rm reg}=G^{-1}dG,\qquad
\bar A_{\rm reg}=\bar G^{-1}d\bar G.
\]
These are genuinely smooth flat \(SL\) connections, and every contractible-loop holonomy is \(I\).

With the connection convention stated above,
\[
A_{\rm reg}=hA_{\rm pol}h^{-1}+h\,dh^{-1},
\qquad
\bar A_{\rm reg}=h\bar A_{\rm pol}h^{-1}+h\,dh^{-1}.
\]
This is the usual transformation formula with gauge parameter \(k=h^{-1}\), **locally**. Since \(h(\theta+2\pi)=-h(\theta)\), it is not an allowed single-valued \(SL\) gauge transformation on the periodic annulus. Rather, it encodes the transition between a global smooth spin frame and the non-global polar spin frame. It also does not die off at the boundary. Thus this construction does not identify two different fixed-boundary-frame CS configurations by a proper gauge transformation.

### 6.2 Explicit connection and metric check

Let
\[
r=\sinh(2u),\quad
S(\theta)=\cos\theta\,\sigma_3+\sin\theta\,\sigma_1,
\quad S_\theta=-\sin\theta\,\sigma_3+\cos\theta\,\sigma_1.
\]
In coordinates \((t,u,\theta)\), direct differentiation gives
\[
\begin{aligned}
A_t&=\tfrac12(\cosh(2u)J+\sinh(2u)S_\theta),&
\bar A_t&=\tfrac12(-\cosh(2u)J+\sinh(2u)S_\theta),\\
A_u&=S,&\bar A_u&=-S,\\
A_\theta&=\cosh u\sinh u\,S_\theta+\sinh^2u\,J,&
\bar A_\theta&=-\cosh u\sinh u\,S_\theta+\sinh^2u\,J.
\end{aligned}
\]
Consequently
\[
e_t=\frac{\cosh(2u)}2J,\qquad e_u=S,
\qquad e_\theta=\frac{\sinh(2u)}2S_\theta,
\]
and
\[
2\operatorname{tr}(e_\mu e_\nu)
=\operatorname{diag}(-\cosh^2(2u),4,\sinh^2(2u)).
\]
Changing back to \(r\) gives exactly
\[
ds^2=-(1+r^2)dt^2+\frac{dr^2}{1+r^2}+r^2d\theta^2.
\]

The polar coordinate degeneration is removed by \((x,y)\). At the axis,
\[
\boxed{e_t=\frac J2,
\qquad e_x=\frac{\sigma_3}{2},
\qquad e_y=\frac{\sigma_1}{2}}.
\]
In particular the time component is \(J/2\), not \(J\) and not \(-J/2\), with the stated \(R(t/2)\) convention. The axis metric is \(\operatorname{diag}(-1,1,1)\), and the triad is nondegenerate.

For a manifestly regular expression away from and at the axis, set \(q=\sqrt{1+x^2+y^2}\). The same forms are
\[
\begin{aligned}
e={}&\frac q2J\,dt+\frac12(\sigma_3dx+\sigma_1dy)
-\frac{(x\sigma_3+y\sigma_1)(x\,dx+y\,dy)}{2q(q+1)},\\
\omega={}&\frac{-y\sigma_3+x\sigma_1}{2}\,dt
+\frac{J(x\,dy-y\,dx)}{2(q+1)}.
\end{aligned}
\]
All denominators are positive. The polar metric determinant is \(-r^2\), and the Cartesian metric determinant is \(-1\). Thus nondegeneracy is global, not only an axis test.

### 6.3 What the source argument does and does not establish

The source correctly detects that its periodically interpreted \(SL\) polar coefficient connection is nonextendible. Passing to \(PSL\) permits the polar annular transition to be single-valued. But a smooth flat \(PSL\) connection on a contractible base always has a smooth flat lift to a covering group; the explicit matrices above realize such a lift here.

The source's later requirement that boundary \(g,\bar g\) wind once is important extra sector/framing data. It is not a consequence of flatness alone, and its raw winding cannot be an invariant statement about an arbitrary global pure-gauge trivialization on the disk. A smooth global map from the disk has null-homotopic boundary loop. The degree-one polar representative and the null-homotopic regular representative are compatible only when the relative framing is tracked.

This criticism does not by itself invalidate a boundary-graviton reduction formulated consistently in the specified polar \(PSL\) presentation. It invalidates using that presentation alone to rule out every smooth \(SL\) formulation or to identify unrestricted metric and CS phase spaces.

## 7. Proper gauge transformations are not all boundary symmetries

Brown–Henneaux reparameterizations generally change \(L\) by
\[
\delta_\xi L=\xi L'+2\xi'L-\frac12\xi'''.
\]
They are physical boundary symmetries when their generators are nontrivial, not proper gauge transformations to be divided out wholesale. The precise proper-gauge subgroup depends on the allowed fields, boundary conditions and boundary generators; transformations that vanish appropriately at the boundary are the standard proper examples.

The projective quotient in the vacuum parameterization is an isotropy redundancy of the reference vacuum: postcomposition does not change the resulting \(L_f\). It does not mean that every projective asymptotic transformation is a proper gauge transformation on the whole phase space. Likewise, a generator stabilizing one state need not be a null direction with identically vanishing generator on all states.

There is also a global CS issue. Arbitrary periodic loop-group transformations need not extend smoothly through the disk. For the constant companion systems, transformations relating different central-monodromy winding sectors have nonzero relative winding. Calling such a boundary transformation a bulk gauge redundancy without checking extendibility loses precisely the global datum that distinguishes the sectors.

## 8. Separate obligations for full metric–CS phase-space equivalence

The algebraic field redefinition
\[
A=\omega+e/\ell,\qquad \bar A=\omega-e/\ell
\]
turns \(F[A]=F[\bar A]=0\) into torsionlessness and constant-curvature equations. It yields the Einstein equations only in the nondegenerate-triad sector. This local observation is not a global reduced-phase-space theorem.

The following points require separate proofs or explicit restrictions:

1. **Global geometric sector.** Specify invertibility, orientation, time orientation, bundle and spin data, the contractible cycle and its relative framing, smooth axis, degree-one boundary identification, and the exclusion of defects or internal boundaries. Brown–Henneaux asymptotics alone are not all these conditions.
2. **Existence of fillings.** Prove that each pair of degree-one vacuum projective structures has a smooth global metric representative with the desired boundary conditions. Extending a boundary diffeomorphism and pulling back global AdS is a plausible geometric route; a near-boundary Bañados chart need not itself be a nonsingular global coordinate chart.
3. **Uniqueness and exhaustiveness.** Prove that every admissible metric lies in this sector and that equal boundary data imply equality modulo proper diffeomorphisms and frame rotations. Completeness, global developing-map properties and causal assumptions must be stated. Local constant curvature does not prove these global assertions.
4. **Gauge equivalence.** Match the actual proper groups, including global extendibility and any discrete identifications. On an invertible flat configuration, \(D_A(i_\xi A)=\mathcal L_\xi A\); hence infinitesimal CS gauge parameters can locally be decomposed into a diffeomorphism plus a common Lorentz rotation. This does not prove the corresponding finite global statement.
5. **Nonmetric CS configurations.** The full independent CS gauge action does not preserve invertibility of \(e\). At an interior point \(p\), choose compactly supported \(k,\bar k\) with \(k(p)=\bar k(p)=I\), \(dk|_p=-A|_p\), \(d\bar k|_p=-\bar A|_p\). Then \(A^k(p)=\bar A^{\bar k}(p)=0\), so \(e(p)=0\), while flatness and all boundary data are unchanged. This does not alone prove an extra reduced point; it proves that a naive quotient of the geometric subset by the unrestricted CS action is not automatically well-defined.
6. **Symplectic forms and boundary generators.** Equality of sets or orbit coordinates is weaker than a symplectomorphism. The boundary Lagrangian and integrated corner terms must be retained, proper-gauge degeneracies matched, and the pullback of the two symplectic forms and generators explicitly compared. The convention for such a comparison should be the one in [formalism.md](</Users/koishi/Documents/Note/Articles/Quantization in AdS/perturbation/formalism.md#L5-L52>); no such full comparison was carried out here.
7. **Global group and quantum data.** \(SL\), \(PSL\), and other covers can differ in allowed bundles, lifts, boundary framings and line operators. Those distinctions cannot be decided from the local metric equations alone. A claim of quantum equivalence additionally requires a measure, integration domain and treatment of nongeometric configurations; it is not implied by the Hill orbit theorem.

The explicit flat-pair example above proves the existence of the smooth geometric \(SL\) sector. It does not establish a symplectic or quantum equivalence of unrestricted formulations.

## 9. Verification record

The analytic proofs are the primary evidence for the global statements: path independence on a simply connected disk, developing-map degree, regularity of the explicit Cartesian matrices, and the cone-angle test. CAS cannot replace these topological and global arguments.

The runnable exact Wolfram script is [smooth_sl_lift.wl](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/verification/smooth_sl_lift.wl>). The actual machine-exported report is [smooth_sl_lift.results.json](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/verification/smooth_sl_lift.results.json>). The report was copied byte-for-byte from a new private kernel-export directory and compared with the source; it was not manually reconstructed.

The final saved script was executed successfully in a fresh Mathematica 14.3 kernel. All thirteen labeled checks passed, all displayed residuals vanished exactly, and the message list was empty:

- equality of the polar-to-regular pure-gauge matrices;
- determinant one;
- explicit connection components;
- all three independent curvature components for each connection;
- metric in \((t,u,\theta)\) and in \((t,r,\theta)\);
- real radical branches for \(r\geq0\);
- the Cartesian axis triad with its time-component sign and factor;
- integer Hill monodromy;
- the exact half-density Hill transformation and Wronskian;
- the exceptional stabilizer ODE.

The hyperbolic substitution \(r=\sinh(2u)\), \(u\geq0\), was used to make the radical branch identities transparent. An earlier direct radical simplification left some equivalent matrix entries unsimplified; that was not counted as a successful identity check. The saved final script resolves the identities exactly with the stated substitution.

**Not established here:** a complete global classification of every Brown–Henneaux Einstein filling, equality of full proper-gauge quotients, equality of the complete boundary/corner symplectic structures, or quantum equivalence. These are substantive additional questions, not consequences of central holonomy.
