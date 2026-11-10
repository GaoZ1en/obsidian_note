# Twistor Geometry: Incidence, Reality, and Massless Fields

DRAFT — bounded review recorded.

Twistor geometry replaces spacetime point geometry by the geometry of families of complex projective lines. In the flat construction a spacetime point becomes a line, null separation becomes line intersection, and certain holomorphic overlap functions produce massless fields by a contour integral. Each statement needs a domain and a reality condition. A complex three-dimensional twistor space is not a six-real-dimensional spacetime, and a contour representation is not a quantum state.

This chapter constructs the flat correspondence explicitly, then separates its real contact geometry from additional holomorphic contact data. The evaluated contour examples are a scalar wave and a definite-helicity Maxwell wave. Curved generalizations are stated only under their analytic, torsion-free and Weyl-chirality hypotheses.

## 1. A Fixed Spinor and Scale Dictionary

Use Lorentzian signature $(-,+,+,+)$, orientation $dt\wedge dx\wedge dy\wedge dz$, and the Pauli matrices $\sigma_i$. As in [spin geometry](<AST-07.md#L39-L74>) and [two-component spinors](<AST-13.md#L64-L139>),

$$
X(x)^{AA'}=tI+x\sigma_1+y\sigma_2+z\sigma_3
=\begin{pmatrix}t+z&x-iy\\x+iy&t-z\end{pmatrix},
\qquad \det X=t^2-x^2-y^2-z^2=-\eta(x,x).
$$

Unprimed upper spinors transform by $A\in SL(2,\mathbb C)$, primed upper spinors by $\overline A$, and real vectors by $X\mapsto AXA^\dagger$. Use

$$
\epsilon_{AB}=\begin{pmatrix}0&1\\-1&0\end{pmatrix},\qquad
\epsilon^{AB}=\begin{pmatrix}0&-1\\1&0\end{pmatrix},
$$

with identical matrices in the primed space. The second matrix is the ordinary inverse; raising a lower-index column $(p_0,p_1)^T$ gives $(-p_1,p_0)^T$. On complexified spacetime the two spin spaces are independent; Lorentzian reality subsequently relates them by conjugation.

A reference length $L_0>0$ makes the incidence coordinates dimensionless:

$$\begin{align}
Y=X^T/L_0.
\end{align}$$

The transpose is intentional. We use the **dual, unprimed-covector twistor convention**

$$
Z=\begin{pmatrix}\omega^{A'}\\\pi_A\end{pmatrix}\in\mathbb C^4,
\qquad \omega=iY\pi.
$$

Consequently

$$\begin{align}
\pi\mapsto A^{-T}\pi,\qquad \omega\mapsto\overline A\omega,\qquad Y\mapsto\overline AYA^T.
\end{align}$$

The frequently used alternative has components $(\omega^A,\pi_{A'})$ and incidence $\omega=i(X/L_0)\pi$. It is the opposite dual choice; transferring a helicity label from it without translating the spin spaces would change the dictionary.

In particular, the fixed four-component representation is $\rho(A)=\operatorname{diag}((A^\dagger)^{-1},A)$ with Clifford relation $\{\gamma^a,\gamma^b\}=-2\eta^{ab}$. Its lower, positive-$\gamma_5$ block is the unprimed upper space. Our $\pi_A$ is that space's dual, not the other chirality. Our $\omega^{A'}$ is in the conjugate upper space, identified by epsilon with the upper Dirac block's lower-primed representation. These slots are representation spaces, not a normalized Dirac wavefunction with an assigned field-theory mass dimension.

## 2. Constructing the Complex Correspondence

Let $M_{\mathbb C}=\operatorname{Mat}(2,\mathbb C)$, with coordinate $Y$ and complexified conformal quadratic form proportional to $-\det(dY)$. Define

$$\begin{align}
\mathbb{PT}^{\circ}=\{[\omega,\pi]\in\mathbb{CP}^3:\pi\ne0\}, \qquad \mathcal F=M_{\mathbb C}\times\mathbb{CP}^1.
\end{align}$$

The double correspondence is

$$\begin{align}
M_{\mathbb C}\ \xleftarrow{\ \rho\ }\ \mathcal F
\ \xrightarrow{\ q\ }\ \mathbb{PT}^{\circ}, \qquad q(Y,[\pi])=[iY\pi,\pi].
\end{align}$$

Their complex dimensions are four, five and three. The fibres of rho are projective lines. The fibres of q are two-complex-dimensional affine planes, not projective-line fibres over spacetime. There is no projection of the three-dimensional twistor space onto four-dimensional spacetime with these lines as fibres.

For fixed Y, its image is the embedded projective line

$$
L_Y=\mathbb P(E_Y),\qquad
E_Y=\left\{\begin{pmatrix}iY\pi\\\pi\end{pmatrix}:\pi\in\mathbb C^2\right\}.
$$

The two columns of $G_Y=\left(\begin{smallmatrix}iY\\I\end{smallmatrix}\right)$ give a concrete basis for $E_Y$. Conversely, a two-plane whose projection onto the pi coordinates is invertible is uniquely of this graph form. Such planes form an open chart of $\operatorname{Gr}(2,4)$, the complex conformal compactification in this construction. The omitted locus contains planes meeting the chosen infinity line $I_\infty=\{\pi=0\}$.

### Overlaps, the Normal Bundle, and Deformations

On $\pi_0\ne0$ use

$$\begin{align}
\zeta=\pi_1/\pi_0,\qquad w=\omega/\pi_0.
\end{align}$$

On $\pi_1\ne0$ use $\widetilde\zeta=1/\zeta$, $\widetilde w=\omega/\pi_1$. On the overlap,

$$\begin{align}
\widetilde w=\zeta^{-1}w.
\end{align}$$

This is the actual fibre-coordinate gluing for $\mathcal O(1)\oplus\mathcal O(1)$ over $\mathbb{CP}^1$. Thus $\mathbb{PT}^{\circ}$ is the total space of that rank-two bundle. The line $L_Y$ is the graph of its section

$$
w(\zeta)=iY\begin{pmatrix}1\\\zeta\end{pmatrix}.
$$

Subtracting this section from the fibre coordinate identifies nearby graphs with graphs near the zero section. The quotient of the tangent bundle by the tangent line is then the vertical bundle. Therefore

$$\begin{align}
N_{L_Y/\mathbb{PT}^{\circ}}\simeq\mathcal O(1)\oplus\mathcal O(1).
\end{align}$$

A normal displacement has two components, each affine-linear in zeta, so its four coefficients are exactly the entries of $i\delta Y$. The standard projective-line cohomology theorem gives $h^0(N)=4$ and $H^1(N)=0$ [1,3]. Kodaira's deformation theorem says that an embedded compact curve with this vanishing obstruction group has a local complete holomorphic family with a smooth complex parameter space of the indicated dimension [4]. It is not a proof that every spacetime metric or affine connection has such a family.

### Null Separation and Totally Null Planes

Two distinct lines $L_Y,L_V$ meet precisely when

$$\begin{align}
(Y-V)\pi=0\quad\text{for some }\pi\ne0, \qquad\text{equivalently}\qquad \det(Y-V)=0.
\end{align}$$

A nonzero rank-one difference gives one projective solution. Equal matrices give the same whole line. For real spacetime points this determinant criterion is exactly Lorentzian null separation. Directly,

$$\begin{align}
\det[G_Y,G_V]=-\det(Y-V).
\end{align}$$

The determinant sign depends on the displayed column order, but its zero set does not. One can also form six minors $p^{\alpha\beta}$ of a basis for $E_Y$; they satisfy

$$\begin{align}
p^{12}p^{34}-p^{13}p^{24}+p^{14}p^{23}=0.
\end{align}$$

This is the Klein quadric description of decomposable two-planes. Here a point of the quadric represents a projective line in twistor space; it is not itself a line in the quadric merely because the incidence object was called a line.

For fixed $[\omega,\pi]$, the equation $Y\pi=-i\omega$ imposes two complex linear conditions. If $\pi=(1,\zeta)^T$, its tangent solutions are

$$
\delta Y=a\begin{pmatrix}-\zeta&1\end{pmatrix},\qquad a\in\mathbb C^2.
$$

Every such matrix, and every linear combination of two of them, has zero determinant. The corresponding affine two-plane is therefore totally null for the complexified metric. After transposition, the unprimed upper factor $(-\zeta,1)^T$ is fixed and the primed factor varies. We call these beta planes here; names vary, so the fixed spinor factor, not the name, determines the chirality in Section 7.

## 3. Lorentzian Reality, Null Rays, and Conformal Matrices

Choose the Hermitian form

$$
\mathcal H=\begin{pmatrix}0&I\\I&0\end{pmatrix},\qquad
\langle Z,Z\rangle=Z^\dagger\mathcal H Z
=\omega^\dagger\pi+\pi^\dagger\omega.
$$

Its complex Hermitian signature is $(2,2)$: in the variables $(\omega+\pi)/\sqrt2,(\omega-\pi)/\sqrt2$ it is $\operatorname{diag}(I,-I)$. It is not the four-real-dimensional spacetime metric. If Y is Hermitian, every point on $L_Y$ is null for this form, since $\omega=iY\pi$ gives

$$\begin{align}
G_Y^\dagger\mathcal H G_Y=i(Y-Y^\dagger)=0.
\end{align}$$

Conversely, a null Z with $\pi\ne0$ has a real incidence locus. To see its dimension and direction rather than only count equations, choose a spin frame with $\pi=(1,0)^T$. Nullness says $\omega=(ia,b)^T$ with a real and b complex. All Hermitian solutions are

$$
Y=\begin{pmatrix}a&i\overline b\\-ib&s\end{pmatrix},\qquad s\in\mathbb R.
$$

This is a real affine null line. In general put $\lambda=\epsilon^{-1}\pi$ and define K by

$$\begin{align}
K=\lambda\lambda^\dagger=X(k),\qquad k^0=\tfrac12\lambda^\dagger\lambda>0.
\end{align}$$

Then $\det K=0$ and $K^T\pi=0$. Consequently $x(\tau)=x_0+\tau k$ satisfies the same incidence relation for every real tau. The parameter tau has length units; its normalization is arbitrary. Projective rescaling $Z\mapsto cZ$ multiplies k by $|c|^2$, leaving the oriented unparametrized ray unchanged. Null twistors with $\pi=0$ do not meet this affine Minkowski chart; they belong to its conformal boundary description.

The condition $Z^\dagger\mathcal H Z=0$ here identifies real null incidence. It is not the helicity label of the contour field in Section 6. Relating a twistor phase-space moment map to particle helicity requires additional dynamical and quantization choices.

### Explicit Conformal Transformations

The complex group $SL(4,\mathbb C)$ acts on two-planes and preserves their incidence. For a block matrix $g=\left(\begin{smallmatrix}a&b\\c&d\end{smallmatrix}\right)$, set $M=iY$. On the patch where $cM+d$ is invertible,

$$\begin{align}
M'=(aM+b)(cM+d)^{-1},\qquad Y'=-iM'.
\end{align}$$

The real subgroup preserving H is $SU(2,2)$. Its projective action supplies the connected conformal transformations of the Lorentzian compactification, with projective scalar centres acting trivially [1,2]. The following generators make the action concrete. For Hermitian dimensionless B,C and positive r,

$$\begin{aligned}
T(B)&=\begin{pmatrix}I&iB\\
0&I\end{pmatrix},& Y'&=Y+B,\\
L(A)&=\begin{pmatrix}\overline A&0\\
0&A^{-T}\end{pmatrix},&Y'&=\overline AYA^T,\\
D(r)&=\begin{pmatrix}r^{1/2}I&0\\
0&r^{-1/2}I\end{pmatrix},&Y'&=rY,\\
K(C)&=\begin{pmatrix}I&0\\
iC&I\end{pmatrix},&Y'&=Y(I-CY)^{-1}.
\end{aligned}$$

Each displayed matrix obeys $g^\dagger\mathcal H g=\mathcal H$ and determinant one. The physical translation in X is $L_0B^T$. The Lorentz row is exactly the fixed action $X'=AXA^\dagger$, not a replacement of it by a different Pauli convention. For example $A=e^{-i\theta\sigma_3/2}$ gives the positive rotation about z, and $A=e^{\chi\sigma_1/2}$ gives $t'=t\cosh\chi+x\sinh\chi$, $x'=x\cosh\chi+t\sinh\chi$.

For the last row define $D=I-CY$. Differentiating gives

$$\begin{align}
dY'=(I-YC)^{-1}\,dY\,(I-CY)^{-1},\qquad \det(dY')=\frac{\det(dY)}{\det(I-CY)^2}.
\end{align}$$

The two denominator determinants agree. For Hermitian Y,C the determinant is real; where it is nonzero the real metric is multiplied by a positive inverse square. This verifies conformality, rather than inferring it from a group dimension. The zero denominator marks the boundary of this affine chart, not a curvature singularity of flat conformal geometry.

## 4. Real Contact Geometry Is Not Holomorphic Contact Geometry

The projective null set

$$\begin{align}
\mathcal N=\{[Z]\in\mathbb{CP}^3:Z^\dagger\mathcal H Z=0\}
\end{align}$$

is a smooth real five-manifold: a real hypersurface in a complex three-manifold. Its affine-ray part has $\pi\ne0$. Choose a positive Hermitian norm $Z^\dagger Z$ only to set the scale of the real one-form

$$\begin{align}
\alpha=\frac{\operatorname{Im}(Z^\dagger\mathcal H\,dZ)}{Z^\dagger Z}\Big|_{\mathcal N}.
\end{align}$$

It is well defined projectively. Under $Z\mapsto cZ$, the extra derivative term contains $Z^\dagger\mathcal H Z=0$, and the remaining numerator and denominator acquire the same $|c|^2$. A different positive norm rescales alpha positively. Thus the hyperplane distribution $\ker\alpha$, rather than that chosen scale, is conformally natural.

Its complex tangencies form a CR structure of complex dimension two. At a null line, their linear model is $Z^{\perp_{\mathcal H}}/\mathbb CZ$, on which H has nondegenerate signature $(1,1)$. This is the Levi form; its nondegeneracy gives a real contact distribution of rank four.

For a direct local check, diagonalize H and use the projective representative $(1,z,w,u)$, with $z=x+iy$, $u=a+ib$ and

$$\begin{align}
w=e^{is}\sqrt{1+|z|^2-|u|^2}.
\end{align}$$

Near the reference point $z=u=s=0$, alpha satisfies

$$\begin{align}
\alpha=-\tfrac12ds,\qquad d\alpha=dx\wedge dy-da\wedge db \quad\text{at that point},\qquad \alpha\wedge(d\alpha)^2=ds\wedge dx\wedge dy\wedge da\wedge db\ne0.
\end{align}$$

For a real spacetime point, its sky $L_Y$ satisfies $\alpha|_{L_Y}=0$, directly because $G_Y^\dagger\mathcal H G_Y=0$ and Y is fixed along the line. It is therefore a Legendrian two-surface: a real surface tangent to the contact planes with their maximal possible surface dimension. This is a real contact/CR structure on the five-dimensional null set, not a holomorphic contact form on all of $\mathbb{CP}^3$.

### Extra Infinity-Twistor Data for a Holomorphic Contact Form

Choose an additional complex skew form and a dimensionless parameter $\beta\in\mathbb C$. In our chosen twistor basis consider

$$\begin{align}
I_\beta=\operatorname{diag}(\beta\epsilon,\epsilon),\qquad \tau_\beta=Z^TI_\beta\,dZ =\beta(\omega_0d\omega_1-\omega_1d\omega_0) +\pi_0d\pi_1-\pi_1d\pi_0.
\end{align}$$

Subscripts on these explicit coordinate entries enumerate components; they do not lower an additional spinor index. The form is horizontal for the projective Euler direction and has homogeneous weight two. It therefore defines an $\mathcal O(2)$-valued holomorphic one-form on projective space, not a global ordinary scalar-valued one-form.

On $\pi_0=1$, write $a=\omega_0$, $b=\omega_1$, $\zeta=\pi_1$. Then

$$\begin{align}
\tau_\beta=d\zeta+\beta(a\,db-b\,da),\qquad \tau_\beta\wedge d\tau_\beta =2\beta\,d\zeta\wedge da\wedge db.
\end{align}$$

For $\beta\ne0$, I is nondegenerate. At every projective point the skew form induced on $Z^{\perp_I}/\mathbb CZ$ is nondegenerate, so the contact condition is global, not an inference from just one chart's value. It is not canonically invariant under the whole conformal group. For example $T(B)^TI_\beta T(B)$ is generically not proportional to $I_\beta$ even for $B=bI$; choosing I has reduced the symmetry.

For $\beta=0$, the rank-two flat infinity twistor has kernel $I_\infty=\{\pi=0\}$. It selects the projection to $[\pi]$ and the affine flat-scale framework, but $\tau_0\wedge d\tau_0=0$: it does not give a holomorphic contact structure. Its projective scale and the numerical reference length $L_0$ are different choices. The Hermitian form H, the rank-two flat infinity twistor, and a nondegenerate complex skew form must not be identified merely because all can be written as four-by-four matrices. No physical cosmological constant is assigned to this parameter.

## 5. A Contour Construction on an Open Twistor Domain

Let $V_0=\{\pi_0\ne0\}$ and $V_1=\{\pi_1\ne0\}$ inside $\mathbb{PT}^{\circ}$. A degree-k overlap function represents a Cech one-cochain for $\mathcal O(k)$: replacing it by a difference of functions holomorphic on the individual patches changes its representative. The domain is not compact $\mathbb{CP}^3$; each patch is $\mathbb C^3$ and the overlap is $\mathbb C^2\times\mathbb C^*$.

For $2h$ a nonnegative integer, take a homogeneous overlap representative f of degree $-2h-2$ and define

$$\begin{align}
\phi_{A_1\cdots A_{2h}}(x) =\frac1{2\pi i}\oint_{\Gamma_x} \pi_{A_1}\cdots\pi_{A_{2h}}\, f(iY(x)\pi,\pi)\,D\pi, \qquad D\pi=\pi_0d\pi_1-\pi_1d\pi_0.
\end{align}$$

The pi factors have weight $2h$, the measure weight two, and f weight $-2h-2$; the integrand is projectively well defined. The measure's explicit sign fixes the contour normalization. Assume the representative is holomorphic on the overlap, the contour separates the two patch regions on each line, and the contour can be transported through the spacetime region without crossing a singularity. Then differentiating under the integral is legitimate.

Differentiating incidence introduces a factor $\pi_A$; raising the derivative's unprimed index and contracting with a field index gives $\pi^A\pi_A=0$. For $h>0$ this gives the flat zero-rest-mass equation $\partial^{AA'}\phi_{AA_2\cdots A_{2h}}=0$, with the inverse-soldering derivative normalization fixed in the spinor chapter. For $h=0$, two derivatives contract the same alternating pi pair and give the scalar wave equation. These are forward constructions; no claim of a global isomorphism onto every field or a Hilbert-space completion is needed here.

A patch coboundary gives zero contour: its first piece extends holomorphically across the interior patch, and its second across the exterior including infinity, so Cauchy's theorem applies on both sides. This explains why the construction depends on the overlap class. Standard Stein acyclicity supplies the usual holomorphic-sheaf interpretation of this two-patch description [1,5].

## 6. Evaluated Scalar and Maxwell Plane Waves

Choose a dimensionless real $\nu>0$. On the overlap use

$$\begin{align}
f_h(Z)=\frac{\exp(-\nu\omega_0/\pi_0)}{\pi_0^{2h+1}\pi_1}, \qquad h=0\ \text{or}\ 1.
\end{align}$$

It has degree $-2h-2$. It is holomorphic on the overlap, but it need not extend through either excluded coordinate divisor; its exponential has essential behaviour at the other patch boundary. Such nonextension is allowed for an overlap cocycle. On $\pi=(1,\zeta)^T$,

$$\begin{align}
\omega_0=\frac{i}{L_0}\big(t+z+(x+iy)\zeta\big),\qquad f_h|_{L_Y}=\frac{\exp[-i\nu(t+z+(x+iy)\zeta)/L_0]}{\zeta}.
\end{align}$$

Use the positively oriented circle $|\zeta|=r$ for any fixed finite $r>0$. There is only the pole at zero inside this patch. No pole crosses the contour as x varies, and the resulting fields are entire on complexified flat spacetime.

For $h=0$, the residue gives

$$\begin{align}
\phi(x)=e^{-i\nu(t+z)/L_0},\qquad (-\partial_t^2+\partial_x^2+\partial_y^2+\partial_z^2)\phi=0.
\end{align}$$

For $h=1$, the factors $(1,\zeta)_A(1,\zeta)_B$ give the evaluated residues

$$
\phi_{AB}=\begin{pmatrix}e^{-i\nu(t+z)/L_0}&0\\0&0\end{pmatrix}.
$$

The off-diagonal and lower-diagonal residues vanish. To reconstruct a complex two-form with exactly the spinor normalization already fixed, set

$$\begin{align}
F_{\mu\nu}=(s_\mu)^{AA'}(s_\nu)^{BB'}
\epsilon_{A'B'}\phi_{AB},\qquad s_\mu=(I,\sigma_1,\sigma_2,\sigma_3), \qquad F=\tfrac12F_{\mu\nu}dx^\mu\wedge dx^\nu.
\end{align}$$

Direct multiplication gives

$$\begin{align}
F=e^{-i\nu(t+z)/L_0}(dt+dz)\wedge(dx-i\,dy),\qquad *F=+iF,\qquad dF=0,\qquad \partial_\mu F^{\mu\nu}=0.
\end{align}$$

The spinor equation also holds with $\partial^{AA'}=(I\partial_t-\sigma_i\partial_i)^{AA'}/2$. No factor of square root two has been inserted into the Pauli soldering map. These contour outputs are dimensionless profiles. For the standard four-dimensional free-field normalization, a physical scalar amplitude has inverse-length units and a physical Maxwell-component amplitude has inverse-length-squared units. Multiplying by such independent amplitudes restores those dimensions; the contour geometry chooses neither their values nor an interaction coupling.

The positive-frequency phase has physical wavevector $\mathbf k=-(\nu/L_0)\widehat z$. A rotation by theta about that momentum direction acts on $dx-i\,dy$ by $e^{-i\theta}$. Defining helicity h through the active phase $e^{-ih\theta}$ gives **helicity $+1$**, consistent with the explicitly checked $+i$ Hodge sector in this dictionary. In the opposite primed-covector twistor convention the conjugate sector occurs; its label cannot be imported without translating the representation and orientation.

A real Lorentzian electromagnetic field is obtained by adding the complex conjugate. That conjugate lies in the opposite Hodge sector and has the conjugate frequency. Reality does not mean requiring a holomorphic single-helicity representative itself to be real. The scalar has helicity zero. Neither construction selects particle statistics, a vacuum or a quantum state.

The nonzero residues also prove these overlap classes are not coboundaries. In contrast, the standard projective-space cohomology theorem says $H^1(\mathbb{CP}^3,\mathcal O(k))=0$ for every integer k [3]. Generic Minkowski wave classes must not be placed in that group on the full compact space. The open domain and its cocycles are essential parts of this example, not dispensable technical decorations.

## 7. What a Curved Correspondence Would Require

Consider a complex-analytic conformal spin four-manifold with nondegenerate holomorphic metric representatives and their torsion-free Levi-Civita connections. On its projective unprimed spin bundle, lift the totally null planes whose unprimed factor is fixed. The rank-two horizontal distribution is the curved version of the beta-plane directions used above.

The nonlinear-graviton integrability theorem states that this distribution is Frobenius integrable precisely when the unprimed Weyl spinor $\Psi_{ABCD}$ vanishes [1,2]. This specifies the chirality without importing a convention-dependent self-dual name: it is the Weyl block acting on the unprimed, $+i$ two-form sector in the fixed dictionary. Ricci curvature is not required to vanish for this conformal statement. On a sufficiently small region with a smooth holomorphic leaf space, the quotient has complex dimension three. Extending it to a global Hausdorff twistor space, and controlling the full projective-line family, require additional geometric hypotheses.

The normal-bundle condition $\mathcal O(1)\oplus\mathcal O(1)$ and Kodaira's theorem explain why four-complex-dimensional curve deformations enter the curved construction. They do not replace its Frobenius/Weyl condition. We use these as precisely scoped standard theorem inputs, not as consequences of the finite matrix tests or of a rank count.

For a real Lorentzian metric the primed Weyl spinor is the complex conjugate of the unprimed one. Vanishing of one therefore forces both to vanish: the real metric is locally conformally flat. Nontrivial one-chirality curved twistor constructions generally use complex geometry or different Euclidean/split-signature reality conditions, not the Lorentzian Hermitian condition silently unchanged.

A general Riemann–Cartan or metric-affine connection has extra torsion/nonmetricity and different curvature identities; a general nonmetric connection need not have the ordinary spin lift at all. It does not automatically yield the above involutive distribution or a standard complex threefold. No assertion that torsion can always be absorbed into a twistor equation or that every affine background preserves a twistor contact structure is made here.

Incidence and projective deformation encode classical conformal geometry. The contact structures specify their own extra data. Contours construct particular classical massless solutions. None of these operations derives a Standard Model group, a particle mass spectrum, an interacting gravitational dynamics or a preferred quantum representation.

## References

[1] R. S. Ward and R. O. Wells, Twistor Geometry and Field Theory, Cambridge University Press, 1990. Flat correspondence, cohomological massless fields and the analytic curved correspondence. The dual twistor and helicity dictionary used here is stated explicitly rather than inferred from names.

[2] R. Penrose and W. Rindler, Spinors and Space-Time, Vol. 2, Cambridge University Press, 1986. Spinor/twistor conformal geometry and nonlinear-graviton integrability; compare alternating-form and Hodge conventions before using component formulas.

[3] R. Hartshorne, Algebraic Geometry, Springer, 1977, Chapter III, projective-space cohomology. Used as theorem input for the projective-line dimensions and vanishing of intermediate cohomology on projective three-space, not as a computational claim that a finite Laurent count proves those theorems.

[4] K. Kodaira, Complex Manifolds and Deformation of Complex Structures, Springer, 1986. Local deformation theorem for an embedded compact complex submanifold with vanishing first normal-bundle cohomology; no global spacetime existence theorem is inferred.

[5] R. C. Gunning and H. Rossi, Analytic Functions of Several Complex Variables, Prentice-Hall, 1965. Cartan–Stein acyclicity for coherent holomorphic sheaves; applied here only to the stated affine patches and their overlap.
