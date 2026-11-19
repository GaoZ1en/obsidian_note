# Warped AdS₃ in eleven dimensions: three families and their charges

There are diagonal, homogeneous deformations with **eight real Killing spinors** for a spacelike or timelike AdS fibre and **four generically** for a null AdS fibre. In the latter case the spheres need not remain round. The two sphere fibre/base ratios are forced to agree by Bianchi and Einstein equations **in the flux ansatz specified below**. The two curvature radii are independent subject to one relation with the AdS radius. A useful distinction is that the null solution can change an electric Maxwell flux without changing the conserved M2 Page charge.

All statements about spinors and Lie algebras are local, or on the simply connected cover. The construction is an orbit of the classical eleven-dimensional three-isometry deformation; it is not a claim of priority or a classification of all solutions with these isometries.

## 1. Conventions and seed

Use mostly plus signature. Write $x,y$ for orthonormal length coordinates on $\mathbb R^2$, and $V_0,V_+,V_-$ for the oriented **physical** round volume forms on $\widetilde{\mathrm{AdS}}_3(L), S^3(R_+), S^3(R_-)$. Orient eleven dimensions by $V_0 V_+ V_-\,dx\,dy$; juxtaposition of differential forms means wedge product. For a $p$-form, $|A|^2=A_{a_1\cdots a_p}A^{a_1\cdots a_p}/p!$ is signed. Our bosonic equations are

$$dF=0,\qquad d\star F+\tfrac12 F F=0,\qquad R_{ab}=\tfrac12\langle\iota_aF,\iota_bF\rangle-\tfrac16g_{ab}|F|^2.$$

Set $R_0=L$, and choose positive $q_i=2/R_i$ in the indicated orientations. The product metric $g_0$ and

$$F_0=(q_0V_0+q_+V_++q_-V_-)dx,\qquad q_0^2=q_+^2+q_-^2 \tag{1}$$

solve these equations: $F_0^2$ as a wedge square and $|F_0|^2$ both vanish, and the three Ricci eigenvalues are $(-q_0^2,q_+^2,q_-^2)/2$. For instance $(L,R_+,R_-)=(1,5/3,5/4)$ works with unequal radii. Our real spinor equation, with $\not A=A_{a_1\ldots a_p}\Gamma^{a_1\ldots a_p}/p!$, is

$$D_a\epsilon=\nabla_a\epsilon+\tfrac1{12}\Gamma_a\not F\epsilon-\tfrac14\not{(\iota_a F)}\epsilon=0. \tag{2}$$

On the seed the three volume Clifford elements anticommute, and $N=\sum q_i\not V_i$ is nonzero with $N^2=0$ and rank 16 (its anticommutator with $\not V_0$ is an invertible scalar). A mixed group-fibre/$y$ supercurvature component in (2) forces $N\epsilon=0$. The two $\Gamma^x$ eigenspaces in that kernel each give eight solutions: on each group factor the remaining equation is the flat group-manifold spinor connection of one handedness. Equivalently, use the connection calculation in [the spinor appendix](<nonnull-spinors.md>) at $k=1$. This gives the two seed $\mathfrak d(2,1;\alpha)$ sectors, denoted $L,R$ below; the labels refer to the action on spinors, not to a particular Euler-angle convention.

## 2. Metric and supporting four-form

Let $H_+,H_-$ be unit Hopf Killing vectors, one per sphere, with metric duals $\eta_+,\eta_-$. Thus $B_i=\iota_{H_i}V_i$, $V_i=B_i\eta_i$, $d\eta_i=\pm q_i B_i$ for the spheres. Choose a constant-norm AdS Killing field $A$ of squared norm $r$, and put

$$a=A^\flat,\quad W=A+c\partial_y,\quad w=a+c\,dy,\quad P=r+c^2,\quad D=1+\gamma^2P,\quad G=D^{-1},\quad U=w\eta_+\eta_-.$$

A flat or sharp in these definitions uses $g_0$. Keep $D>0$. In the metric formulas a square is a symmetric tensor square, not a wedge. The solutions are

$$\boxed{\begin{aligned}
 g&=D^{1/3}\big[g_0-\gamma^2G\{w^2+P(\eta_+^2+\eta_-^2)\}\big],\\
 F&=F_0+\gamma G\,dU-\gamma c q_0 B_+B_- .
\end{aligned}} \tag{3}$$

Here is one construction of (3). In the classical torus reduction of eleven-dimensional supergravity to eight dimensions, use the commuting directions $(W,H_+,H_-)$. For orthogonal legs of nonzero determinant $P$, the triangular $SL(2,\mathbb R)$ transformation with parameter $\gamma$ acts on the fibre volume and the axion $C_{123}$ (initially zero). In the spacelike case it acts as $\tau\mapsto\tau/(1+\gamma\tau)$, $\tau=i\sqrt P$. Lifting gives the transverse metric multiplier $D^{1/3}$ and the parallel multiplier $D^{-2/3}$. With no double torus-leg contraction of the seed $F_0$, the transformed four-form is $F_0+\gamma\,\iota_{H_-}\iota_{H_+}\iota_W\star_0 F_0+\gamma\,d(GU)$. Indeed

$$\star_0F_0=(-q_0V_+V_--q_+V_0V_-+q_-V_0V_+)dy.$$

Only the $c\partial_y$ part contributes to the triple contraction. Dropping this term gives a wrong Maxwell equation and a wrong electric charge. This derivation uses the local symmetry of the reduced equations, not a requirement to compactify time or the AdS orbit. The component derivation in §3 also covers negative determinant directly. Equations (3) are regular as $P\to0$, without division by a null length.

- **Spacelike and timelike.** Set $c=0$, take a unit AdS Hopf field with $r=s=+1$ or $-1$, and take the three selected subgroups in the **same** seed sector. Write $a=s\theta_0$, $\theta_\pm=\eta_\pm$. In addition to the common overall scale, all three fibre metric coefficients acquire the factor $G=1/(1+s\gamma^2)$. The spatial fibration has Lorentzian $\mathrm{AdS}_2$ base; the timelike one has Riemannian hyperbolic base. The spheres have round $S^2$ bases. In the timelike branch $|\gamma|<1$, and the timelike fibre is not periodically identified. In these conventions $F=F_0+s\gamma G\,d(\theta_0\theta_+\theta_-)$. The parameter $G$ is a **squared** fibre/base length ratio relative to the round metric.
- **Lightlike.** Take $A=n\ne0$ parabolic in the AdS factor, $r=0$, the two Hopf fields in the same sector, and $n$ in the **opposite** sector. Write $p=n^\flat$. The only apparent mixing is a $p\,dy$ term. Pull the fields back by the AdS isometry $\exp(\gamma^2Gc\,y\,n)$ depending on $y$. It leaves $p$ unchanged and adds $2\gamma^2Gc\,p\,dy$ to $g_{\rm AdS}$. In this local frame the metric inside the overall $D^{1/3}$ is

$$g_{\rm AdS}-\gamma^2G p^2 +\sum_{i=+,-}(g_{B_i}+G\eta_i^2)+dx^2+Gdy^2. \tag{4}$$

The flux in (3) is in the **unsheared** frame; pull it back as a form if using (4). The wave is not a coordinate artifact: for $g_{\rm AdS}-t p^2$ the Ricci tensor differs from $-q_0^2(g_{\rm AdS}-tp^2)/2$ by $q_0^2t p^2$. For $\gamma c\ne0$ both spheres are squashed; at $c=0$ the null wave remains but the spheres are round. The undeformed limit of all three branches is $\gamma=0$.

## 3. Why the two squashings must agree

A solution-generating transformation **by itself** only proves that equal squashings work. To obtain necessity, allow independent fibre sizes $k_i$ before imposing the field equations. First consider a non-null block. After an allowed constant homothety $(g,F)\mapsto(h^2g,h^3F)$, take physical orthonormal vertical coframes $f_i$, horizontal unit area forms $B_i$, $df_i=a_i B_i$. Let $\delta_i=(-1,1,1)_i$ be the block determinant signs, $\varepsilon_i=(s,1,1)_i$ the fibre signs, and $\delta_i b_i^2$ the base Gaussian curvatures. Thus $k_i^2=a_i^2/b_i^2$; at $k_i=1$ the round three-dimensional radii are $2/b_i$. The most general flux in the following component ansatz is

$$F=\sum_i u_i B_i f_i\,dx+\sum_{(i,j,l)\,{\rm cyclic}}v_i B_i f_j f_l . \tag{5}$$

Here $x,y$ are physical orthonormal flat coordinates in this normalization. Closure requires $v_i a_j=v_j a_i$, so the second sum is $m\,d(f_0 f_+ f_-)$: one cannot choose its three coefficients independently. The two horizontal Ricci eigenvalues in block $i$ are $\delta_i(b_i^2-a_i^2/2)$ and its vertical eigenvalue is $\delta_i a_i^2/2$ (Koszul's formula, or the circle-bundle Ricci formula). Since $y$ does not enter $F$, the $yy$ and $xx$ equations first give $|F|^2=0$, $\sum\delta_i u_i^2=0$. For $m\ne0$ it follows that $\sum\delta_i a_i^2=0$. The vertical and horizontal equations, respectively, now read

$$ a_i^2=u_i^2-sm^2a_i^2,\qquad 2b_i^2-a_i^2=u_i^2+sm^2a_i^2.$$

Consequently $u_i^2=b_i^2$, $b_0^2=b_+^2+b_-^2$, and **every** $k_i^2=1/(1+sm^2)$. The $m=0$ equations give the round limit. Equation (5) has $F F=0$; $d\star F$ has just the condition $m\sum\delta_i a_i^2=0$. All off-diagonal stresses vanish because distinct four-form components never have three common indices. This proves necessity and sufficiency up to the flux orientation choices for supersymmetry. In (3), after removing the overall scale from the metric **and** applying the corresponding scaling to $F$, the physical coframe $f_i=\sqrt G\,\theta_i$ gives $b_i=q_i$ and $m=s\gamma$ with the displayed orientations.

There is a separate argument for the null branch; one cannot divide the preceding equations by the norm of $n$. Consider the component ansatz (3)–(4) in which the two sphere fibre lengths and the flux coefficients are initially independent, but all positive powers of the AdS null deformation are built covariantly from $n$ (and its derivative), without an independently chosen opposite null vector. An AdS Cartan boosts $n\mapsto e^{-b}n$. Taking $b\to\infty$ in the field equations therefore gives necessary equations on the metric with the wave removed, with **unchanged** sphere sizes. In this limit the allowed flux components, in physical frames, are

$$F=(u_0V_0+u_+ B_+f_+ +u_- B_-f_-)dx + M B_+B_- +dy\,(v_+ B_+ f_- - v_- f_+ B_-).$$

Bianchi gives $v_+a_-=v_-a_+$. Write $S=-u_0^2+u_+^2+u_-^2$, $V=v_+^2+v_-^2$. The two flat Einstein equations give $3S=3V=|F|^2=S+V+M^2$, hence $M^2=V$. In either sphere the difference of horizontal and vertical Einstein equations reads $2(b_i^2-a_i^2)=M^2+v_i^2-v_j^2=2v_i^2$. Thus $b_i^2=a_i^2+v_i^2$ and the two $a_i^2/b_i^2$ agree. The remaining wave equations are solved by (3), not by arbitrary independent additions to the wave flux. Writing $\lambda=v_+/a_+=v_-/a_-$, the common value is $1/(1+\lambda^2)$. Matching to the explicit solution (3) identifies $\lambda^2=\gamma^2c^2$ and gives $G$.

This argument excludes neither mixed metric terms between the spheres nor other invariant four-form ansätze. For example, deformation on the three commuting directions $(A,uH_++vH_-,\partial_y)$ compresses the *single* sphere combination $u\eta_++v\eta_-$; its square contains a mixed term. For a unit non-null $A$ the relative metric coefficients induced on the separate sphere fibres are $1-\gamma^2s u^2/[1+\gamma^2s(u^2+v^2)]$ and the expression with $v^2$ instead. They differ for $|u|\ne|v|$. This is not a product of two diagonal Berger metrics: it illustrates precisely why the necessity statement needs its ansatz.

## 4. Magnetic fluxes and the conserved electric charge

There is **no compact four- or seven-cycle supporting these charges on the stated universal-cover background with $\mathbb R^2$**. One can give densities per unit coordinate length, or quotient $x,y$ by translations with periods $\ell_x,\ell_y$ in the original, unsheared coordinates of (3). We do the latter and orient the cycles by the order of the factors below. Periods are seed coordinate periods, not the deformed proper circumferences. Let $v_i=2\pi^2 R_i^3$ for either sphere and let $\ell_p$ be the eleven-dimensional Planck length. The nonzero independent brane charges, in the Page gauge specified below, are

$$\boxed{N_5^i=\frac{q_i v_i\ell_x}{(2\pi\ell_p)^3},\qquad N_2=-\frac{q_0 v_+v_-\ell_y}{(2\pi\ell_p)^6}.} \tag{6}$$

Reversing the electric cycle orientation changes the sign of $N_2$. Both charges are independent of $\gamma,c$ at fixed seed data and periods. If quantization is imposed, these expressions restrict radii and periods. In particular $N_5^+/N_5^-=R_+^2/R_-^2$. Neither equality of the two magnetic charges nor equality of the radii is required.

**Magnetic cycles.** Integrate $F$ on $S_i^3\times S_x^1$. The last term in (3) is exact on the *total spaces* of the Hopf bundles, not necessarily on their bases: if $t_+ B_+=d\eta_+$, then $B_+B_-=d(\eta_+ B_-/t_+)$. Hence neither correction to $F_0$ changes any magnetic period. The periods on $S_i^3\times S_y^1$ are zero.

**Electric cycle.** For $dC=F$, the closed form is $J_7=\star F+C F/2$, not in general $\star F$. On $\Sigma=S_+^3\times S_-^3\times S_y^1$ at fixed AdS point and $x$, choose a seed potential with zero pullback (no flat $C$ periods on this slice). Add the globally defined change

$$C-C_0=\gamma G U-\gamma c q_0\,\eta_+ B_-/t_+.$$

Then in units of $V_+V_-dy$ the two integrand coefficients are

| pullback to $\Sigma$ | coefficient |
|---|---:|
| $\star F$ | $-q_0G(1+\gamma^2 r)$ |
| $C F/2$ | $-q_0 G\gamma^2 c^2$ |
| $J_7$ | $-q_0$ |

For the Hodge term, the inverse of the metric inside the brackets in (3) is $g_0^{-1}+\gamma^2(W\otimes W+P H_+\otimes H_+ +P H_-\otimes H_-)$; including the overall scale gives $\sqrt{|g|}/\sqrt{|g_0|}=D^{1/3}$. Raising the three AdS indices and $x$ therefore gives the factor $G(1+\gamma^2r)$. For the potential term, $U|_\Sigma=c\,dy\,\eta_+\eta_-$; the two cross terms of the displayed potential with its derivative each contribute $-q_0 G\gamma^2 c^2 V_+V_-dy$ to $C F$. The sum gives (6). In the null branch $\int_\Sigma\star F$ alone is a factor $G$ times its seed value. The other electric period on $S_+^3\times S_-^3\times S_x^1$ is zero in the seed gauge continued with this potential (one can use a cut in $x$ for $C_0$). Page charges, unlike magnetic periods, require a gauge convention: flat three-form shifts with nonzero periods can shift a Page integral in the presence of magnetic flux. A circle quotient in the sheared coordinates of (4) must specify its actual identification; one must not substitute its proper length for $\ell_y$ in (6).

## 5. How many spinors survive?

**Spacelike and timelike.** In a group frame the matrices in (2) are constant. The [spinor calculation](<nonnull-spinors.md#two-supercurvature-obstructions>) gives two independent *necessary* conditions even on spinors that depend on every group coordinate. In the constant rescaling of §3, put $k=\sqrt G$, $b=s\gamma k$, $X=\Gamma^x$, and $K$ the ordered triple of fibre gamma matrices. The conditions are

$$N\epsilon=0,\qquad (-X+bK)\epsilon=k\epsilon.$$

The first cuts $32$ to $16$. On that kernel $(-X+bK)^2=k^2$ and $\Gamma^y$ exchanges its eigenspaces. The second therefore cuts $16$ to $8$ for $\gamma\ne0$. All eight extend: $\sqrt{(1+k)/2}\,[1+bK/(1+k)]$ takes the eight seed spinors with $X=-1$ into solutions of the deformed **differential** equations. This rules out both hidden coordinate-dependent spinors and accidental enhancement inside the regular non-null branches.

**Null branch: lower bound.** Write the eight real odd generators of either seed sector as $({\bf2},{\bf2},{\bf2})$ under its $\mathfrak{sl}(2,\mathbb R)\oplus\mathfrak{su}(2)_+\oplus\mathfrak{su}(2)_-$ (the two sphere doublets together have a real structure). Choose the sphere Hopfs in $R$ and $n$ in $L$. Neither Hopf has a zero weight on its own sphere doublet; this eliminates the $R$ spinors from the **common invariant** subspace. In $L$, $\mathcal L_n$ is a rank-one nilpotent on the AdS doublet. Thus its kernel gives $1\times4=4$ real spinors. Here $\mathcal L$ denotes the spinorial Lie derivative, not a coordinate partial derivative. The seed spinors are independent of $y$.

For $c\ne0$ the three reduction directions are spacelike as a subspace. Common invariant spinors reduce to supersymmetries of the eight-dimensional fields; the $SL(2,\mathbb R)$ action on them has the compensating local $SO(2)$ spin rotation. They lift to spinors of (3). More explicitly, in the orthonormal frame obtained by scaling the three-leg projector by $1/\sqrt D$, the spinor matrix, up to a constant scalar, is

$$1+\frac{\gamma}{1+\sqrt D}\,\not w\,\not\eta_+\,\not\eta_- . \tag{7}$$

The slashes on the right use the seed frame. This is the half-angle formula, since the square of its triple is $-c^2$. The coframe change and (7) extend to $c=0$: the would-be singular coefficient $(1/\sqrt{1+\gamma^2 c^2}-1)/c^2$ has a finite limit. The resulting four spinors remain independent. There is also a direct eleven-dimensional check. In the indexed frame of the next paragraph the rank-four seed projector is

$$P_0=\tfrac18(1+\Gamma^9)(1+\Gamma^{01})\left[1-\Gamma^{012}(q_+\Gamma^{345}+q_-\Gamma^{678})/q_0\right].$$

On its image the seed connection is flat. Put $S$ equal to (7), let $E'_a=M^b{}_a E_b$ be the hatted orthonormal frame relative to the seed frame, and let $T_a,T^0_b$ denote the corresponding connection matrices. The identity $(T_a S-S M^b{}_a T^0_b)P_0=0$ in all eleven directions proves that $S\epsilon_0$ solves (2). The checker verifies this identity over the parameter family as described below. Neither way of constructing these spinors is an upper bound on their number.

**Null branch: an upper bound on an open dense set.** In a homogeneous frame $E_a$, let $[E_a,E_b]=C^d{}_{ab}E_d$ and write (2) as $D_a=E_a+T_a$. Any local solution must be annihilated by every $\mathcal R_{ab}=[T_a,T_b]-C^d{}_{ab}T_d$ at a point. The following exact minor certifies that this is a real restriction beyond the seed projection. Choose seed coframes numbered $0,\ldots,10$, with $0$ timelike, $x=9$, $y=10$ as index labels. Take $V_0=e^{012},V_+=e^{345},V_-=e^{678}$, $(q_0,q_+,q_-)=(10,6,8)$, $C_{012}=-10,C_{345}=6,C_{678}=8$ (all indices lowered, each block alternating), $n=-E_0+E_1$, $H_+=E_5,H_-=E_8$, $c=3/4$, $\gamma=1$. In the Clifford representation in [the offline checker](<check_null.py>), stack rows $0,\ldots,23$ of $\mathcal R_{01}$ and rows $0,2,4,6$ of $\mathcal R_{02}$, retaining columns $0,\ldots,23,24,26,28,30$. Its determinant is **140 modulo 257**, with $i\mapsto16$. This proves that the complex minor is nonzero, hence that the real Majorana kernel has dimension at most four. The checker also constructs a real projector of rank four on which the connection restricts to a flat connection at this point in parameter space.

After a smooth frame choice, the minor is real analytic (in a complex basis, take its absolute square) in the radii constrained by (1), $c$ and $\gamma$. The radius domain is connected and the frame extends across $c=0$, so the minor cannot vanish on an open set. Combined with the lower bound, the count is **exactly four generically**. This argument need not identify the full exceptional zero set of this minor: a vanishing minor is not itself proof of enhancement. At $\gamma=0$ the whole seed returns. Changing the handedness of a Hopf choice changes the spinor problem even when the metric looks the same.

## 6. Killing superalgebras

We distinguish the algebra generated by the spinors from the algebra enlarged by **all** continuous flux-preserving Killing vectors. We do not append central generators for gauge transformations of the three-form. Use the convention for the real form of $\mathfrak d(2,1;\alpha)$ in which the three coefficients in the odd bracket have ratios $(-(1+\alpha),1,\alpha)$, ordered as AdS, $+$, $-$. Here

$$\alpha=\frac{q_-^2}{q_+^2}=\frac{R_+^2}{R_-^2}>0.$$

To see the ratio, write $W_i=\not V_i$ and $L_i=W_0 W_i$ for the spheres. The $L_i$ are anticommuting involutions. The seed constraint makes $P_*=[1-(q_+L_++q_-L_-)/q_0]/2$ the projector onto $\ker N$, with $P_*L_iP_*=-(q_i/q_0)P_*$. This is an orthogonal projector for the pairing $B(\cdot,W_0\cdot)$ built from the Majorana bilinear $B$: each $L_i$ is skew-adjoint for $B$ and anticommutes with $W_0$. For a group axis set $J_a=\Gamma_a W_i$; it commutes with $P_*$. In AdS, $\Gamma_a=W_0J_a$, whereas on sphere $i$, $\Gamma_a=-W_0L_iJ_a$. The sphere current thus has the factor $q_i/q_0$ relative to the AdS current for the same spin-generator normalization. Converting physical unit vectors to generators normalized to radius-independent Lie brackets supplies a second factor $L/R_i$. Thus the two positive coefficients, relative to unit AdS coefficient, are $L^2/R_i^2$, and (1) is exactly the odd Jacobi relation that their sum is one. Equivalently the three absolute coefficients are proportional to $q_i^2$. Interchanging the sphere labels replaces $\alpha$ by $1/\alpha$; another common convention uses $L^2/R_+^2=1/(1+\alpha)$ as its parameter.

**Non-null branches.** Each three-dimensional space keeps one whole group of translations and the commuting one-dimensional fibre subgroup on its other side. The surviving eight spinors transform under the three whole groups as in the seed. Their polarized vector bilinears are unchanged in a coordinate basis, up to one common spinor normalization ([explicit intertwiner and current](<nonnull-spinors.md#odd-brackets>)); neither $x$ nor $y$ appears in an odd bracket. Consequently the odd-generated superalgebra is precisely one $\mathfrak d(2,1;\alpha)$. For nonzero deformation the full connected Killing superalgebra is, as a **Lie algebra**,

$$\mathfrak d(2,1;\alpha)\ \oplus\ \mathbb R^5.$$

The five spectators are the three selected one-parameter fibre groups and the two flat translations. Writing $\mathbb R$ here does not identify their global groups: sphere Hopfs are circles; in particular an AdS time identification is not implicit.

**Null branch, at a generic point with $c\gamma\ne0$.** The unbroken AdS groups are $SL(2,\mathbb R)_R$ and the line generated by $n$ in the other copy. Each Berger sphere contributes $SU(2)_{i,L}\times U(1)_{i,R}$ locally. These give all factor isometries: for a non-round Berger block the horizontal and fibre Ricci eigenvalues differ; for the null AdS block the extra Ricci term in §2 fixes $p\otimes p$, so the broken side reduces to the centralizer of $n$. The curved factors have no parallel directions to mix with the flat plane; a continuous rotation of that plane does not preserve the $V_0dx$ flux component. These arguments also give the isometry list for the non-null case (there the AdS Ricci eigenspaces distinguish its fibre).

There are four odd generators $Q_I$ transforming as the real $({\bf2},{\bf2})$ of the two full sphere groups. They satisfy $\not p\,\epsilon=0$: in the AdS doublet this selects the invariant nilpotent line, and the triple in (7) anticommutes with $\not p$. Also $n$ is orthogonal to all three deformation directions, so its Clifford action is still the one specified by $p$ up to an overall scale. The causal Majorana current of such a nonzero spinor is nonzero, is orthogonal to $n$, and hence is parallel to $n$. Its coefficient along $n$ is constant: if $f n$ is Killing, then $df\otimes p+p\otimes df=0$ forces $df=0$. Polarization and the unique invariant symmetric inner product of $({\bf2},{\bf2})$ give, after normalization,

$$\{Q_I,Q_J\}=\delta_{IJ}\,n,\qquad [n,Q_I]=0.$$

Thus the odd-generated algebra is the supertranslation algebra $\mathfrak t^{1|4}=\mathbb R n\oplus\Pi\mathbb R^4$ with that bracket, **not** a second exceptional factor and not a translation along $n+c\partial_y$. The full connected superalgebra is

$$\big[(\mathfrak{su}(2)_{+,L}\oplus\mathfrak{su}(2)_{-,L})\ltimes\mathfrak t^{1|4}\big]\ \oplus\ \mathfrak{sl}(2,\mathbb R)_R\ \oplus\ \mathbb R^4,$$

where the final four commuting generators are the two selected Hopfs and the flat translations, expressed in the unsheared coordinates. All spectator actions on the four spinors vanish: the selected Hopfs and $W$ annihilate the invariant seed spinors, $\partial_y$ acts trivially, and the opposite AdS group acts trivially. The spinor transformation is equivariant for these actions.

## Checks and limits of the result

- **Verified:** the non-null field equations and spinor count by the reductions above; the null equations by the reduced-field transformation and a separate eleven-dimensional computation. Run `python3 -B Drafts/test_1/check_null.py --family` from the vault root. The check first reproduces the nonzero curvature minor and the undeformed control. For the all-parameter bosonic equations and the eleven spinor intertwining identities, use a boost to set $c=1$ for $c>0$ with rescaled $\gamma$, put $t=\gamma/(1+\sqrt D)$ and $(q_0,q_+,q_-)=k(1+z^2,1-z^2,2z)$. After clearing denominators, the residual polynomials have bidegrees at most $(28,4)$ and $(15,4)$ in $(t,z)$ respectively: connection and flux are each linear in $q_i$, and their common denominator is $(1+t^2)^3(1-t^2)^4$. Exact vanishing on the $29\times5$ interpolation grid proves the identities. Analytic continuation covers $c\le0$. This use of interpolation to prove **identities** is distinct from the use of one **nonzero minor** to obtain the generic upper bound. The checker needs only ordinary Python.
- **Assumptions:** classical two-derivative supergravity; finite positive radii; real $\gamma,c$; $D>0$; handedness and orientations as specified; local or universal-cover spinors. The compact charge formulas presume the specified cycles and Page gauge. The translation quotient with periodic spin structure on the two flat directions retains the spinors constructed in the unsheared variables.
- **Not established or specified:** uniqueness outside the flux/metric ansatz, novelty with respect to the literature, a classification of exceptional null loci, or masses and angular momenta of quotients with a prescribed asymptotic phase space. No horizon, asymptotic subtraction or gravitational boundary conditions were supplied; the conserved charges (6) are the eleven-dimensional brane charges, not an assignment of an ADM mass to the unquotiented homogeneous space.
