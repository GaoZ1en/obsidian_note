# Independent local algebraic and Euler–Lagrange audit of real Lorentzian Plebanski theory

## Results and scope

**The nondegenerate real simplicity equation has exactly the branches**
\[
B^{IJ}=s\,e^I\wedge e^J,
\qquad
B^{IJ}=s\,\star(e\wedge e)^{IJ},
\qquad s\in\{+1,-1\}.
\]
Here the coframe is real, its orientation is not silently restricted, the four displayed labels are mutually disjoint, and a fixed labeled solution determines the coframe precisely up to \(e\mapsto-e\). Allowing both coframe orientations gives **eight connected components**, not four connected components. Restricting to positively oriented coframes retains four of them, with the sign of \(\nu_B\) selecting which duality type is available.

**Only the dual branch gives vacuum Einstein equations.** With the curvature convention below,
\[
\begin{array}{c|c|c|c}
B&\nu_B&\phi_{IJKL}&\text{metric restriction}\\ \hline
s(e\wedge e)&\operatorname{vol}_e&\frac{s}{2}R_{IJKL}&\text{none}\\
s\star(e\wedge e)&-\operatorname{vol}_e&-\frac{s}{2}(R\star)_{IJKL}&\operatorname{Ric}_{IJ}=0
\end{array}
\]
In particular, a nondegenerate nondual solution can have a genuinely non-Einstein metric, not merely a nonzero cosmological constant. An explicit such family is given in Section 5.

**The simplicity differential has rank 20 everywhere on this nondegenerate locus.** Its kernel is exactly the 16-dimensional coframe tangent image. Consequently, restricting the action to one complete regular coframe branch, while varying the coframe and connection independently, is locally equivalent to the full multiplier equations. This is proved by a normal-space argument; it is not inferred from the act of substitution alone.

All classification and reconstruction claims here are pointwise or on a sufficiently small smooth patch. No global coframe lift in a prescribed bundle, boundary/CPS equivalence, or canonical Dirac analysis is claimed. The local derivations and CAS checks were completed independently from the specified action and conventions, without consulting parent reports or project synthesis. Subsequent coordination about scope and separate global questions does not enter these proofs. The computational checks support, but do not replace, the proofs.

## 1. Conventions and exact field equations

Let \(W=T_p^*M\) be a real four-dimensional cotangent space and let the fixed internal space have
\[
\eta_{IJ}=\operatorname{diag}(-1,1,1,1),\qquad
\epsilon_{0123}=+1,\qquad \epsilon^{0123}=-1.
\]
All internal index raising and lowering uses \(\eta\); in particular, \(\epsilon^{0123}\) is not reset to the numerical symbol \(+1\). All antisymmetric index pairs in tensor formulas are **full sums**. The internal star is
\[
(\star X)^{IJ}=\frac12\epsilon^{IJ}{}_{KL}X^{KL},
\qquad \star^2=-1.
\]
The independent fields are real two-forms \(B^{IJ}=-B^{JI}\), a Lorentz connection \(\omega\), and a multiplier satisfying
\[
\phi_{IJKL}=\phi_{[IJ][KL]}=\phi_{KLIJ},
\qquad \epsilon^{IJKL}\phi_{IJKL}=0.
\]
The multiplier space has dimension \(21-1=20\). The action density and volume form are
\[
L=\frac{1}{2\kappa}\left(B_{IJ}\wedge F^{IJ}
-\frac12\phi_{IJKL}B^{IJ}\wedge B^{KL}\right),
\quad \kappa=8\pi G>0,
\quad
\nu_B=\frac1{24}\epsilon_{IJKL}B^{IJ}\wedge B^{KL}.
\]
Use compactly supported variations on the local patch, so the integration-by-parts boundary term does not enter the Euler–Lagrange problem. No gauge fixing is imposed. The equations are
\[
DB^{IJ}=0,\qquad
F_{IJ}=\phi_{IJKL}B^{KL},\qquad
\boxed{B^{IJ}\wedge B^{KL}=-\nu_B\epsilon^{IJKL}.}
\tag{1}
\]

To derive the last equation, put \(Q^{IJKL}=B^{IJ}\wedge B^{KL}\). Two-forms commute under the wedge product, so \(Q\) is pair-symmetric. Its pairing with every epsilon-tracefree multiplier variation vanishes if and only if
\(Q^{IJKL}=c\epsilon^{IJKL}\). Since
\(\epsilon_{IJKL}\epsilon^{IJKL}=-24\), contraction gives \(c=-\nu_B\). There is no further factor of two in (1).

For later use, define
\[
\Sigma^{IJ}=e^I\wedge e^J,\qquad
\operatorname{vol}_e=e^0\wedge e^1\wedge e^2\wedge e^3.
\]
The exact identities are
\[
\Sigma^{IJ}\wedge\Sigma^{KL}=-\epsilon^{IJKL}\operatorname{vol}_e,
\qquad
(\star\Sigma)^{IJ}\wedge(\star\Sigma)^{KL}
=+\epsilon^{IJKL}\operatorname{vol}_e.
\tag{2}
\]
Thus \(\nu_{s\Sigma}=\operatorname{vol}_e\) and \(\nu_{s\star\Sigma}=-\operatorname{vol}_e\). The sign \(s\) does not change either volume because it occurs quadratically.

### 1.1 Independent-pair matrices and invertibility

Choose an arbitrary reference coframe \(\theta\), with \(v_0=\theta^0\wedge\theta^1\wedge\theta^2\wedge\theta^3\). In the pair order
\[
(01,02,03,12,13,23)
\]
write
\[
B^a=M^a{}_b\theta^b,\qquad \nu_B=n v_0,
\qquad K_{(IJ)(KL)}=\epsilon_{IJKL}\quad(I<J,\ K<L).
\]
These are independent-pair matrices, with each pair included once. The wedge form has signature \((3,3)\), \(K^2=1\), and (1) becomes
\[
MKM^T=nK,\qquad
n=\frac16\operatorname{tr}(KMKM^T).
\tag{3}
\]
Consequently, **simplicity plus \(\nu_B\ne0\)** forces \(M\) invertible and hence the six two-forms \(B^{IJ}\), \(I<J\), form a basis of \(\Lambda^2W\).

The qualification “simplicity plus” matters. Merely taking
\[
B^{01}=\theta^0\wedge\theta^1,\qquad
B^{23}=\theta^2\wedge\theta^3,
\qquad \text{all other independent components zero}
\]
gives \(\nu_B=v_0/3\ne0\) but \(\operatorname{rank}M=2\); this field does not satisfy simplicity. Conversely, on the simplicity locus \(n=0\) makes the image totally wedge-null, so its dimension is at most three. No degenerate-locus classification is attempted below.

## 2. Constructive proof of the full real classification

### 2.1 An elementary wedge-null three-plane lemma

A three-dimensional subspace \(N\subset\Lambda^2W\) whose elements wedge to zero with one another has exactly one of the forms
\[
\alpha_\ell=\ell\wedge W\quad(\dim\ell=1),
\qquad
\beta_H=\Lambda^2H\quad(\dim H=3).
\tag{4}
\]
These two types are disjoint.

**Proof.** In dimension four, \(x\wedge x=0\) for a two-form if and only if it is decomposable; this is the elementary rank/Pfaffian criterion for a skew matrix. Choose two independent elements of \(N\). Their associated two-planes intersect in a line, so after choosing covectors \(u,v,w,z\) they are \(u\wedge v\) and \(u\wedge w\). Wedge orthogonality to both forces any other element to have the form
\[
x=A\,u\wedge v+B\,u\wedge w+C\,u\wedge z+D\,v\wedge w.
\]
Its self-wedge vanishes precisely when \(CD=0\). Since \(N\) is a linear space and the product of these two linear coordinate functions vanishes identically on it, either \(C\) vanishes identically or \(D\) does. If both vanished identically, the dimension would be at most two. Hence \(N=\Lambda^2\operatorname{span}(u,v,w)\) or \(N=u\wedge W\), respectively. This also proves disjointness. \(\square\)

Two three-planes of the same type in (4) cannot be transverse: distinct alpha-planes intersect in \(\ell\wedge\ell'\), and distinct beta-planes intersect in \(\Lambda^2(H\cap H')\), each of dimension one. Therefore transverse maximal wedge-null three-planes have opposite types.

### 2.2 Reconstruction when the electric three-plane is alpha-type

By (3), the two spaces
\[
N=\operatorname{span}(B^{01},B^{02},B^{03}),\qquad
N'=\operatorname{span}(B^{23},B^{31},B^{12})
\]
are transverse wedge-null three-planes. Suppose first that \(N\) is alpha-type. Choose \(u,v_1,v_2,v_3\) with
\[
B^{0i}=u\wedge v_i,\qquad
V=u\wedge v_1\wedge v_2\wedge v_3\ne0,
\qquad \rho=\nu_B/V\ne0.
\]
The remaining simplicity equations force
\[
\begin{aligned}
B^{12}&=\rho\,v_1\wedge v_2+u\wedge(a v_1+b v_2),\\
B^{13}&=\rho\,v_1\wedge v_3+u\wedge(d v_1+b v_3),\\
B^{23}&=\rho\,v_2\wedge v_3+u\wedge(d v_2-a v_3).
\end{aligned}
\tag{5}
\]
For completeness, wedging \(B^{12}\) with \(B^{01}\) and \(B^{02}\) removes its \(v_2\wedge v_3\) and \(v_1\wedge v_3\) coefficients. The complementary wedge fixes its \(v_1\wedge v_2\) coefficient to \(\rho\). Its self-wedge then removes the \(u\wedge v_3\) term. The same argument applies to \(B^{13},B^{23}\). Their three mutual zero-wedge equations give precisely the shared coefficients displayed in (5).

Set \(s=\operatorname{sign}\rho\), \(r=\sqrt{|\rho|}>0\), and define
\[
\begin{aligned}
e^0&=\frac{s}{r}u,\\
e^1&=r\left(v_1+\frac b\rho u\right),\\
e^2&=r\left(v_2-\frac a\rho u\right),\\
e^3&=r\left(v_3-\frac d\rho u\right).
\end{aligned}
\tag{6}
\]
Direct wedge multiplication gives \(B^{IJ}=s e^I\wedge e^J\), and
\[
\operatorname{vol}_e=s r^2V=\rho V=\nu_B.
\]
This is a real coframe even for \(\rho<0\); no imaginary rescaling or orientation assumption has been inserted.

### 2.3 Reconstruction when the electric three-plane is beta-type

If \(N\) is beta-type, its transverse complement \(N'\) is alpha-type by the lemma. In the stated Lorentz convention,
\[
(\star B)^{01}=-B^{23},\qquad
(\star B)^{02}=-B^{31},\qquad
(\star B)^{03}=-B^{12}.
\]
Thus the electric three-plane of \(\star B\) is alpha-type. Moreover,
\(\nu_{\star B}=-\nu_B\), and \(\star B\) satisfies the same simplicity equation with its own volume. Applying (6) to \(\star B\) gives \(\star B=s'\Sigma(e)\), hence
\[
B=-s'\star\Sigma(e).
\]
Relabeling the sign proves the second family. This exhausts all possibilities by the lemma. In particular, no extra real nondegenerate branch was assumed away.

### 2.4 Disjoint labels, finite ambiguity, and orientation

Let \(e^I=E^I{}_{\mu}\theta^\mu\). The upper-pair star matrix is
\[
J=HK,\qquad H=\operatorname{diag}(-1,-1,-1,1,1,1),
\qquad J^2=-1,\quad \det J=1,\quad JKJ^T=-K.
\]
Equation (3) gives \(\det M=\pm n^3\). The invariant
\[
\boxed{\chi_B=\frac{\det M}{n^3}\in\{+1,-1\}}
\tag{7}
\]
is independent of the chosen reference coframe: both numerator and denominator acquire the same factor under its change. Since
\(\det(\Lambda^2E)=(\det E)^3\),
\[
\begin{array}{c|c|c|c}
B&M&n&\chi_B\\ \hline
s\Sigma(e)&s\Lambda^2E&\det E&+1\\
s\star\Sigma(e)&sJ\Lambda^2E&-\det E&-1.
\end{array}
\tag{8}
\]
Thus the dual and nondual labels are disjoint.

Within one duality type, if two representations use coframes \(e,f\), cancellation gives
\(\Lambda^2A=\pm1\) for the real relative map \(A=f e^{-1}\). Such a map preserves every two-plane and therefore every line, each line being an intersection of two-planes. A linear map preserving every line is scalar: \(A=\lambda1\). The equation becomes \(\lambda^2=\pm1\). Over the reals the minus sign is impossible and the plus sign gives \(A=\pm1\). Consequently:

- The two overall signs \(s\) are disjoint, even when orientation-reversing coframes are admitted.
- For a fixed \(B\), the duality label and \(s\) are unique.
- The coframe ambiguity is exactly \(e\leftrightarrow-e\), not an additional arbitrary Lorentz transformation at fixed internal components of \(B\).
- Since the dimension is four, \(e\) and \(-e\) have the same coframe orientation. Merely fixing orientation does not remove this twofold ambiguity. A compatible time-orientation restriction can distinguish the two local lifts.

Fix now a reference orientation of \(W\), and write \(o_e=\operatorname{sign}(\operatorname{vol}_e/v_0)\). Then
\[
\operatorname{sign}n=o_e\quad\text{on }s\Sigma,
\qquad
\operatorname{sign}n=-o_e\quad\text{on }s\star\Sigma.
\tag{9}
\]
With positively oriented coframes only, \(n>0\) permits only \(\pm\Sigma\), and \(n<0\) permits only \(\pm\star\Sigma\). With arbitrary coframes, either sign of \(n\) permits all four labels, but the coframe orientation is forced by (9).

As a real pointwise manifold, each fixed \((s,\text{duality},o_e)\) component is parametrized by the corresponding component of \(GL(4,\mathbb R)/\{\pm1\}\). The two components of \(GL(4,\mathbb R)\) are connected, and the discrete labels cannot vary continuously without leaving the nondegenerate locus. Thus the unrestricted locus has **eight connected components**. The familiar “four sectors” can correctly name the four \((s,\text{duality})\) families, but each family then contains two coframe orientations. Alternatively, an orientation-restricted convention really has four components. These statements concern the raw field space, not a quotient by additional disconnected internal/frame transformations.

### 2.5 Smooth local reconstruction, not a global lifting theorem

For a smooth nondegenerate field, \(\chi_B\), \(s\), and \(o_e\) are locally constant. On an alpha-type patch the common-factor line is
\[
\ell=\{u\in W:\ u\wedge B^{01}=u\wedge B^{02}=u\wedge B^{03}=0\}.
\]
It is a smooth constant-rank line subbundle. Choose a local nonzero section \(u\), a smooth vector \(Z\) with \(u(Z)=1\), and take \(v_i=\iota_Z B^{0i}\). Then \(u\wedge v_i=B^{0i}\), the coefficients in (5) are smooth, and (6) is smooth because \(\rho\ne0\). On a beta-type patch first apply \(\star\). This proves smooth local reconstruction constructively.

Two smooth lifts of the same labeled \(B\) differ by a locally constant sign. On larger regions these signs can form a \(\mathbb Z_2\) cocycle; no vanishing of that cocycle or existence of a global coframe in a prescribed bundle is asserted. The metric \(g=\eta_{IJ}e^I\otimes e^J\) is unchanged by the sign ambiguity. All conclusions below can be applied on these local lifts.

## 3. The connection equation eliminates torsion in both branches

Let
\[
T^I=De^I=de^I+\omega^I{}_J\wedge e^J.
\]
Since the connection is Lorentz, it preserves the internal star. Thus both branches reduce \(DB=0\) to
\[
D\Sigma^{IJ}=T^I\wedge e^J-T^J\wedge e^I=0.
\tag{10}
\]
Here is a direct four-dimensional injectivity proof. With \(\iota_I\) contraction by the frame dual to \(e^I\), set \(t=\sum_J\iota_JT^J\). Contracting (10) with \(\sum_J\iota_J\) gives
\[
2T^I-(t\wedge e^I+T^I)=0,
\quad\text{hence}\quad T^I=t\wedge e^I.
\]
Contracting again yields \(t=-3t\), so \(t=T^I=0\). Therefore \(\omega\) is the unique metric-compatible torsion-free connection of the reconstructed coframe. This argument specifically uses dimension four.

Define its curvature by
\[
F^{IJ}=d\omega^{IJ}+\omega^I{}_K\wedge\omega^{KJ},\qquad
F_{IJ}=\frac12R_{IJKL}e^K\wedge e^L.
\tag{11}
\]
Then
\[
R_{IJKL}=R_{[IJ][KL]}=R_{KLIJ},\qquad
R_{IJKL}+R_{IKLJ}+R_{ILJK}=0,
\]
\[
\operatorname{Ric}_{JL}=\eta^{IK}R_{IJKL},\qquad
R=\eta^{JL}\operatorname{Ric}_{JL}.
\]
The last equality in the first line is the **algebraic** Bianchi identity. No Einstein condition has been used to obtain these Riemann symmetries.

## 4. Unique multiplier and exact metric equations

### 4.1 Nondual branch: arbitrary Lorentz metrics

For \(B=s\Sigma\), comparing (11) with \(F_{IJ}=s\phi_{IJKL}\Sigma^{KL}\) gives
\[
\boxed{\phi_{IJKL}=\frac{s}{2}R_{IJKL}.}
\tag{12}
\]
The factor \(1/2\) comes from the full curvature sum in (11); it cannot be dropped. Pair symmetry is automatic for Levi–Civita curvature, and
\[
\epsilon^{IJKL}\phi_{IJKL}
=\frac s2\epsilon^{IJKL}R_{IJKL}=0
\]
is precisely the algebraic Bianchi trace. The ordinary metric trace of the multiplier is instead
\[
\eta^{IK}\eta^{JL}\phi_{IJKL}=\frac s2 R,
\]
and is not constrained to vanish by the multiplier definition.

It follows in both directions that **every smooth local real Lorentz metric**, with any local coframe, defines a solution in either nondual sign branch by choosing its Levi–Civita connection and (12). There is no residual equation requiring an Einstein metric, scalar flatness, or Ricci flatness.

### 4.2 Dual branch: pair symmetry gives Einstein, epsilon trace gives zero scalar

For a lower-pair curvature tensor, define the right and left stars explicitly by
\[
(R\star)_{IJKL}=\frac12R_{IJMN}\epsilon^{MN}{}_{KL},\qquad
(\star R)_{IJKL}=\frac12\epsilon_{IJ}{}^{MN}R_{MNKL}.
\tag{13}
\]
For \(B=s\star\Sigma\), the curvature equation reads
\[
R=2s\,\phi\star,
\qquad\text{hence}\qquad
\boxed{\phi=-\frac s2R\star.}
\tag{14}
\]
The minus sign is the real Lorentzian \(\star^2=-1\), not a convention that can be omitted while retaining (13).

Because the undualized Riemann tensor is pair-symmetric, \((R\star)^T=\star R\). Thus pair symmetry of \(\phi\) is equivalent to
\[
R\star=\star R.
\tag{15}
\]
Let \(S_{IJ}=\operatorname{Ric}_{IJ}-\frac14R\eta_{IJ}\). The Lorentzian double-dual identity is
\[
(\star R\star)_{IJKL}=-R_{IJKL}
+\eta_{IK}S_{JL}-\eta_{IL}S_{JK}
-\eta_{JK}S_{IL}+\eta_{JL}S_{IK}.
\tag{16}
\]
It follows by expanding the two epsilon tensors using
\(\epsilon^{ABCD}\epsilon_{EFGH}=-\delta^{ABCD}_{EFGH}\), where the generalized delta is the determinant of Kronecker deltas, and using the algebraic Bianchi identity. Equivalently, the correction to \(-R\) is \(\eta\wedge\operatorname{Ric}-(R/2)(\eta_{IK}\eta_{JL}-\eta_{IL}\eta_{JK})=\eta\wedge S\). The exact general-20-parameter check in Section 7 verifies (16), not just a list of special tensors.

Multiplying (15) by the right star gives \(\star R\star=-R\). Equation (16) then says \(\eta\wedge S=0\); contraction with \(\eta^{IK}\) gives \(2S_{JL}=0\). Conversely, \(S=0\) in (16), followed by another right star, gives (15). Therefore pair symmetry is **exactly** the pointwise Einstein condition
\[
\operatorname{Ric}_{IJ}=\frac14R\eta_{IJ}.
\tag{17}
\]

The remaining multiplier trace is different from the Bianchi trace. With full sums,
\[
\epsilon^{IJKL}(R\star)_{IJKL}=-2R,
\qquad
\boxed{\epsilon^{IJKL}\phi_{IJKL}=sR.}
\tag{18}
\]
For example, the first identity follows immediately from
\[
\epsilon^{IJKL}\epsilon^{MN}{}_{KL}
=-2(\eta^{IM}\eta^{JN}-\eta^{IN}\eta^{JM}).
\]
Thus the required epsilon trace of \(\phi\) sets \(R=0\); with (17) this is exactly \(\operatorname{Ric}_{IJ}=0\). Conversely, every local Ricci-flat metric supplies an allowed multiplier (14), so there are no further local curvature equations. In this branch the ordinary metric trace of \(\phi\) vanishes by the algebraic Bianchi identity; the roles of the two scalar traces have been exchanged by the star.

### 4.3 Special cases and action normalization

For constant curvature \(R_{IJKL}=K(\eta_{IK}\eta_{JL}-\eta_{IL}\eta_{JK})\), one has \(R=12K\). The nondual branch allows every real \(K\). In the dual branch \(\phi=-(sK/2)\epsilon\) and its epsilon trace is \(12sK\), so only \(K=0\) survives at the specified \(\Lambda=0\). Flat metrics give \(\phi=0\) in all four labels.

On the simplicity locus the multiplier term vanishes identically, because its epsilon trace vanishes. The restricted first-order actions are
\[
L_{s,0}=\frac{s}{2\kappa}\,e_I\wedge e_J\wedge F^{IJ},
\tag{19}
\]
\[
L_{s,1}=\frac{s}{4\kappa}\epsilon_{IJKL}e^I\wedge e^J\wedge F^{KL}.
\tag{20}
\]
For the torsion-free connection,
\[
\Sigma_{IJ}\wedge F^{IJ}=0,\qquad
(\star\Sigma)_{IJ}\wedge F^{IJ}=R\operatorname{vol}_e.
\]
Hence (20) becomes \(sR\operatorname{vol}_e/(2\kappa)\), with the standard Einstein–Hilbert magnitude. If \(\operatorname{vol}_g\) denotes the metric volume chosen positive in a separately fixed spacetime orientation, then \(\operatorname{vol}_e=o_e\operatorname{vol}_g\), and its overall sign relative to that convention is \(s o_e\). The field equations are unaffected by this overall sign.

## 5. Explicit genuinely non-Einstein solution in the nondual branch

Take a coordinate patch \((t,x,y,z)\), a real constant \(k\ne0\), and
\[
e^0=dt,\qquad e^1=dx,\qquad e^2=e^{kx}dy,\qquad e^3=dz.
\]
Then
\[
g=-dt^2+dx^2+e^{2kx}dy^2+dz^2,
\quad
\omega^{12}=-k e^2,
\]
with all other independent connection components zero. Directly,
\[
T^I=0,\qquad F^{12}=-k^2 e^1\wedge e^2,
\]
and all other independent curvature two-forms vanish. In the coframe basis,
\[
\operatorname{Ric}_{IJ}=\operatorname{diag}(0,-k^2,-k^2,0),\qquad R=-2k^2.
\]
The zero time-time component would force the Einstein proportionality constant to vanish, while the spatial curvature is nonzero; this is therefore not an Einstein metric for \(k\ne0\).

For either \(s=\pm1\), set
\[
B^{IJ}=s e^I\wedge e^J,\qquad
\phi_{1212}=-\frac{s k^2}{2},
\]
with the other entries fixed by pair antisymmetries/pair symmetry and all remaining independent entries zero. Its epsilon trace vanishes. The full-pair curvature equation in its only nonzero component is
\[
\phi_{12KL}B^{KL}=2\phi_{1212}B^{12}
=-k^2 e^1\wedge e^2=F_{12}.
\]
Thus this is an explicit solution of all three full Euler–Lagrange equations. Its \(k\to0\) limit is the flat solution. Both torsion and curvature, as well as an independent coordinate-Christoffel computation of its Ricci tensor, were checked exactly.

## 6. Tangent rank and why full constrained substitution is valid here

### 6.1 Rank 20 at every nondegenerate point

Define \(Q(M)=MKM^T\) and the projection
\[
\Pi(S)=S-\frac16\operatorname{tr}(KS)K
\]
from symmetric matrices to the 20-dimensional subspace \(\operatorname{tr}(KS)=0\). Simplicity is \(C(M)=\Pi(Q(M))=0\). At an invertible \(M\),
\[
dQ_M(\delta M)=\delta M K M^T+MK\delta M^T
\]
is onto all 21 symmetric matrices: for any symmetric \(S\), choose
\[
\delta M=\frac12 S M^{-T}K.
\]
Then \(dQ_M(\delta M)=S\). It follows that
\[
\boxed{\operatorname{rank}dC_M=20,\qquad \dim\ker dC_M=16.}
\tag{21}
\]
This is a proof for every nondegenerate point, not an extrapolation from representative CAS ranks.

For either fixed branch,
\[
\delta B=s\,\delta\Sigma
\quad\text{or}\quad
\delta B=s\star\delta\Sigma,
\qquad
\delta\Sigma^{IJ}=\delta e^I\wedge e^J+e^I\wedge\delta e^J.
\]
The differential of \(e\mapsto\Lambda^2e\) is injective: in an invertible frame, an endomorphism acting trivially on every two-fold wedge has zero off-diagonal entries and diagonal entries obeying \(a_I+a_J=0\) for every \(I\ne J\), hence all entries vanish. Therefore the coframe tangent image has dimension 16. It lies in \(\ker dC\), so by (21) it equals that kernel. Restricting coframe orientation does not reduce this tangent space, since an orientation component is open.

### 6.2 Normal-space theorem with the exact multiplier factors

Pair the 36-dimensional \(\delta B\) space with two-form-valued internal antisymmetric tensors by
\[
\langle\delta B,H\rangle=\delta B^{IJ}\wedge H_{IJ}.
\]
After identifying four-forms with scalars by a reference volume, this is a nondegenerate pairing. For an allowed multiplier \(\phi\), differentiation of the simplicity equation gives
\[
\phi_{IJKL}\,\delta B^{IJ}\wedge B^{KL}=0
\qquad\text{for every tangent }\delta B.
\]
Thus the map
\[
\phi\longmapsto H_{IJ}=\phi_{IJKL}B^{KL}
\tag{22}
\]
takes the 20-dimensional multiplier space into the conormal space. It is injective because the six \(B^{KL}\), with independent pairs, form a basis. The conormal space has dimension 20 by (21), so (22) is an isomorphism onto it.

The Euler–Lagrange equation of the constrained action in the coframe directions says exactly that
\(\delta B^{IJ}\wedge F_{IJ}=0\) for every tangent \(\delta B\). The conormal result then supplies a **unique allowed multiplier** satisfying the full equation \(F_{IJ}=\phi_{IJKL}B^{KL}\). Its smoothness follows from the smooth invertible basis \(B\). The independent connection variation is unchanged and gives \(DB=0\). Conversely, the full equations clearly imply constrained stationarity.

In independent-pair matrices this uniqueness and its normalization are especially transparent. If \(B=M\theta^{(2)}\), \(F=N\theta^{(2)}\), and \(P\) is the independent-pair matrix of \(\phi\), then
\[
N=2PM,\qquad P=\frac12 NM^{-1}.
\tag{23}
\]
The factor two in (23) is the full sum over \(KL\). Constrained stationarity is precisely the requirement that this uniquely reconstructed \(P\) be symmetric and epsilon-tracefree.

This establishes local equivalence of solution sets after restoring the unique multiplier, provided one:

1. stays on a fixed nondegenerate regular branch;
2. retains all sixteen coframe variations, not a partially gauge-fixed or overly restricted ansatz;
3. varies the connection independently in the first-order restricted action;
4. uses compactly supported variations or appropriate, separately specified boundary conditions.

The warning about substitution is therefore substantive but does **not** produce a missing bulk equation in this regular problem. A substitution that fails to span the full tangent space, a degenerate branch, or further elimination without checking its own hypotheses would need a new argument.

### 6.3 Direct consistency with the restricted coframe equations

Equation (19) gives the coframe equation
\[
e_J\wedge F^{IJ}=0.
\]
Once \(T^I=0\), this is the first Bianchi identity \(DT^I=F^I{}_J\wedge e^J=0\); it supplies no metric dynamics, exactly as (12) predicts.

Equation (20) gives
\[
\epsilon_{IJKL}e^J\wedge F^{KL}=0,
\]
which with the torsion-free connection is the vacuum Einstein equation, including its scalar trace. This agrees with the combination of multiplier pair symmetry and epsilon trace in (15)–(18), rather than discarding the latter.

## 7. Exact computational evidence and limits

The self-contained Wolfram script is [checks.wl](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent-plebanski-20261031T0044-a6f2/checks.wl>). The actual kernel result is preserved as both [readable output](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent-plebanski-20261031T0044-a6f2/actual-output.txt>) and [native WXF output](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent-plebanski-20261031T0044-a6f2/actual-output.wxf>). The math-computation skill was loaded before invoking the kernel. Wolfram Engine 14.3.0 returned **28 checks passed, no diagnostic messages**.

The checks include:

- real Lorentz \(\star^2=-1\), \(\det\star=1\), and wedge anti-isometry;
- the full algebraic Bianchi identity on a general 20-parameter algebraic Riemann tensor;
- the general double-dual identity (16), with no Einstein restriction built into the parameterization;
- the exact full-sum scalar relation \(\epsilon(R\star)=-2R\);
- rank 9 for the dual pair-symmetry restrictions and rank 10 after including its epsilon trace, leaving the expected ten-dimensional algebraic Weyl space;
- the \(1/2\) and \(-1/2\) multiplier factors;
- simplicity Jacobian rank 20 at the four signed standard representatives;
- rank 16 for both coframe tangent maps and exact inclusion in the corresponding constraint kernels;
- an orientation-reversing nontrivial coframe, the determinant invariant \(\chi_B\), and the rank-two counterexample to invertibility without simplicity;
- exact torsion, full-pair \(F=\phi B\), multiplier trace, scalar curvature, and non-Einstein Ricci tensor for Section 5.

**Theorem versus check.** Sections 1–6 supply analytic proofs of the local classification, smooth reconstruction, field-equation characterization, and rank/equivalence statements. General symbolic curvature checks verify polynomial identities on the entire 20-dimensional algebraic-curvature space. Representative Jacobian and coframe tests are finite checks only; global rank on the nondegenerate locus follows from the explicit surjectivity proof (21). The explicit metric is a counterexample to an Einstein claim for the nondual branch, not a substitute for the all-metrics result proved in Section 4.1.

**Assumptions retained.** Real four-dimensional Lorentzian fields, the stated epsilon/index conventions, full antisymmetric sums, \(\Lambda=0\), nonzero \(\nu_B\) together with simplicity, smooth local coframe reconstruction, and independent first-order variations. No statement here depends on a self-dual complexification, Euclidean continuation, or choice of canonical variables.

**Not established here.** A global tetrad lift in a specified bundle; the structure or regularity of degenerate simplicity strata; boundary symplectic equivalence or boundary charges; global solution-space quotients; or a complete canonical constraint analysis. No parent file was modified.
