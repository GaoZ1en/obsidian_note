# Loop Quantum Geometry: A Calculated Quantum Tetrahedron

Status: DRAFT — bounded review recorded.

A four-valent node can carry a quantum state of tetrahedral shape, not merely four area labels. We construct its classical phase space, reconstruct one nondegenerate tetrahedron, and quantize two competing shape measurements. For four spin-one-half faces the invariant space is two-dimensional: the oriented volume-squared variable has opposite eigenvalues, the positive volume is nonzero on both states, and different dihedral-angle operators do not commute. These statements concern a specified finite kinematical model.

The canonical gravitational variables and action reduction are inputs from [EC-07](<EC-07.md>), not rederived here. Physical spacetime remains four-dimensional with signature $(-,+,+,+)$. A spacelike slice has a positive induced metric; the Euclidean polyhedra below model cells of that spatial geometry, not a change to Euclidean spacetime. Set $c=1$, retain $\hbar$, and write

$$\begin{align}
\kappa=8\pi G>0,\qquad \alpha=\kappa\gamma,\qquad a_0=|\alpha|\hbar=8\pi|\gamma|\ell_P^2,\qquad \ell_P^2=G\hbar, \tag{1}
\end{align}$$

where $\gamma$ is a constant nonzero real Barbero–Immirzi parameter. Thus $a_0$ has area units. Spatial frame indices $i,j,k$ run from $1$ to $3$, with $\epsilon_{123}=+1$. The $SU(2)$ used here covers spatial frame rotations; it is not the electroweak gauge group. No matter multiplet or gravitational dynamics is inferred from its representation dimensions.

## 1. One Link: the Cotangent Phase Space with Its Signs Fixed

The continuum input is a real spatial connection $A_a{}^i$ and geometric densitized triad $E^a{}_i$, normalized by

$$\begin{align}
\{A_a{}^i(x),E^b{}_j(y)\} =\alpha\,\delta_a^b\delta^i_j\delta^{(3)}(x-y). \tag{2}
\end{align}$$

Choose anti-Hermitian matrices $\tau_i=-i\sigma_i/2$, where $\sigma_i$ are Pauli matrices. They satisfy $[\tau_i,\tau_j]=\epsilon_{ij}{}^k\tau_k$ and $-2\operatorname{tr}(\tau_i\tau_j)=\delta_{ij}$. For an oriented edge from $s$ to $t$, use the actual parallel transporter

$$\begin{align}
h_e=\mathcal P\exp\left(-\int_e A^i\tau_i\right),\qquad h_e\longmapsto g_t h_e g_s^{-1}. \tag{3}
\end{align}$$

For example, split a single transverse interior crossing of an oriented surface $S$ as $e=e_2\circ e_1$. Varying the transporter gives

$$\begin{align}
\frac{\delta h_e}{\delta A_a{}^i(x)} =-\int_e ds\,\dot e^a(s)\delta^{(3)}(x-e(s)) h_{e_2(s)}\tau_i h_{e_1(s)}. \tag{4}
\end{align}$$

Combining this minus sign with $\{E,A\}=-\alpha$ yields the positive insertion

$$\begin{align}
\{E_i(S),h_e\}=\alpha\,\sigma(e,S)\, h_{e_2}\tau_i h_{e_1},\qquad E_i(S)=\int_S n_a E^a{}_i\,d^2u. \tag{5}
\end{align}$$

Here $n_a$ is the oriented surface covector density and $\sigma(e,S)=\pm1$ is the intersection sign. Tangencies and endpoints require a separate regulator; we do not assign them the interior formula without qualification.

A link phase space needs fluxes referred to its endpoint frames. Transporting and reducing flux data gives a gauge-covariant discrete flux, not just the undressed integral in (5). Bare continuum fluxes depending only on $E$ mutually commute; the discrete moment maps below need not. We take the finite model to be $T^*SU(2)$, the cotangent bundle whose base is the holonomy group and whose fibers are conjugate momenta. Write $h=h_e$, let $\mathbf N_s$ be its source-frame outward area vector, and identify vectors with $N_s^i\tau_i$ using the trace pairing above. Define the cotangent potential and symplectic form by

$$\begin{align}
\theta=-\frac1\alpha\,\mathbf N_s\cdot(h^{-1}dh), \qquad \omega=-d\theta. \tag{6}
\end{align}$$

This notation pairs $\mathbf N_s$ with the three coefficients of the Lie-algebra-valued one-form. It fixes a trivialization of the cotangent bundle, including a sign. For any local group coordinates $q^A$, write $h^{-1}dh=\tau_i\lambda^i{}_A dq^A$ and define the actual canonical momenta $p_A=-N_s^i\lambda^i{}_A/\alpha$. Then $\theta=p_A dq^A$ and $\omega=dq^A\wedge dp_A$. Although near $h=\exp(-a^i\tau_i)$ the potential equals $N_s^i da^i/\alpha$ at the identity, differentiating its first-order Maurer–Cartan correction contributes to $\omega$ there for nonzero $\mathbf N_s$; the flux components themselves are not canonical momenta in these coordinates. We use $i_{X_H}\omega=dH$, $\{q,p\}=+1$, so $X_H f=\{f,H\}$ and $[X_f,X_g]=-X_{\{f,g\}}$.

The Maurer–Cartan identity $d\lambda^i=-\epsilon^i{}_{jk}\lambda^j\wedge\lambda^k/2$, for $\lambda=h^{-1}dh$, determines the nonabelian correction away from the identity. If a tangent vector has components $(\boldsymbol\xi,\delta\mathbf N)$ with $h^{-1}\delta h=\xi^i\tau_i$, then

$$\begin{align}
\omega((\xi_1,\delta N_1),(\xi_2,\delta N_2)) =\frac1\alpha\left[ \delta N_1\cdot\xi_2-\delta N_2\cdot\xi_1 -\mathbf N_s\cdot(\xi_1\times\xi_2)\right]. \tag{7}
\end{align}$$

For $H=N_s^i$, comparison with $dH=\delta N^i$ gives $\xi_H=-\alpha\mathbf e_i$ and $\delta N_H=-\alpha\mathbf N_s\times\mathbf e_i$. Therefore

$$\begin{align}
\{N_s^i,N_s^j\}=\alpha\epsilon^{ij}{}_kN_s^k, \qquad \{N_s^i,h\}=\alpha h\tau_i, \qquad \{h_{AB},h_{CD}\}=0. \tag{8}
\end{align}$$

Define the target outward vector by transport and reversal of orientation:

$$\begin{align}
N_t^i\tau_i=-h(N_s^i\tau_i)h^{-1}. \tag{9}
\end{align}$$

It follows that $|\mathbf N_t|=|\mathbf N_s|$, while

$$\begin{align}
\{N_t^i,N_t^j\}=\alpha\epsilon^{ij}{}_kN_t^k, \qquad \{N_t^i,h\}=-\alpha\tau_i h, \qquad \{N_s^i,N_t^j\}=0. \tag{10}
\end{align}$$

For example, $H_s=\boldsymbol\lambda_s\cdot\mathbf N_s/\alpha$ generates $\delta h=-h\lambda_s^i\tau_i$ and $\delta\mathbf N_s=\boldsymbol\lambda_s\times\mathbf N_s$. The target generator gives $\delta h=\lambda_t^i\tau_i h$. These are precisely the two endpoint transformations in (3), not a competing plus-holonomy convention.

An explicit coordinate realization makes (6) usable without guessing its brackets. Put

$$\begin{align}
h=e^{u\tau_3}e^{v\tau_2}e^{w\tau_3},\qquad \mathbf N_s=(x,y,z),\qquad \sin v\ne0. \tag{11}
\end{align}$$

Then

$$
\begin{aligned}
\lambda^1&=-\sin v\cos w\,du+\sin w\,dv,\\
\lambda^2&=\sin v\sin w\,du+\cos w\,dv,\\
\lambda^3&=\cos v\,du+dw.
\end{aligned}
\tag{12}
$$

Thus the coefficients of $\theta$ along $(du,dv,dw)$ are

$$\begin{align}
\frac1\alpha\left( x\sin v\cos w-y\sin v\sin w-z\cos v, -x\sin w-y\cos w,-z\right).
\tag{13}
\end{align}$$

In coordinates $(u,v,w,x,y,z)$, the determinant of the antisymmetric matrix of $\omega$ is $\sin^2v/\alpha^6$. It is invertible on this chart. If that matrix is $W$, our Poisson matrix is $-W^{-1}$, not $W^{-1}$: contraction $i_X\omega=dH$ reads $W^{\mathsf T}X=dH$. Inverting it yields (8)–(10). The poles $\sin v=0$ are Euler-coordinate failures, not missing points of $T^*SU(2)$.

## 2. Closure Reconstructs a Polyhedron Only on the Right Domain

On a graph, take one copy of this cotangent system per link. At a node $v$, collect outward vectors from all incident ends in the same frame. An incoming end contributes $\mathbf N_t$, not an unconverted copy of $\mathbf N_s$. The discrete Gauss constraint is

$$\begin{align}
\mathbf C_v=\sum_{f\ni v}\mathbf N_f=0, \qquad \{C_v^i,C_v^j\}=\alpha\epsilon^{ij}{}_k C_v^k. \tag{14}
\end{align}$$

Its generator $\boldsymbol\lambda\cdot\mathbf C_v/\alpha$ rotates every face vector simultaneously. Restricting to $\mathbf C_v=0$ and identifying simultaneous rotations removes the internal frame, not spatial position or gravitational time evolution.

For a flat Euclidean cell with planar faces, write $\mathbf N_f=A_f\mathbf n_f$, where $A_f>0$ is area and $\mathbf n_f$ is a unit outward normal. The divergence theorem applied to any constant vector $\mathbf b$ gives

$$\begin{align}
\mathbf b\cdot\sum_f A_f\mathbf n_f =\int_{\partial P}\mathbf b\cdot\mathbf n\,dA =\int_P\operatorname{div}\mathbf b\,d^3x=0. \tag{15}
\end{align}$$

This proves closure for such a cell. It does not prove the converse without hypotheses. The three-dimensional Minkowski reconstruction theorem supplies that converse: distinct unit normals spanning $\mathbb R^3$, positive assigned areas and $\sum_f A_f\mathbf n_f=0$ determine a bounded full-dimensional convex polyhedron with exactly these face data, unique up to translation. Repeated coincident normals must first be merged. With positive areas and spanning, closure excludes containment in a closed hemisphere: dotting with its supporting direction would force all normals into a plane. We use the theorem as an existence/uniqueness input; a finite determinant computation is not its proof. See [Bianchi, Doná and Speziale](<https://arxiv.org/abs/1009.3402>) for this polyhedral interpretation.

Closure alone fails even with four positive lengths. The vectors

$$\begin{align}
(1,0,0),\quad(-1,0,0),\quad(0,1,0),\quad(0,-1,0)
\tag{16}
\end{align}$$

sum to zero but span only a plane. Their triple products vanish, and they cannot be the complete face-area vectors of a full-dimensional bounded three-polyhedron. The nondegenerate sector is an actual restriction.

The brackets in (8) also explain why fixed face areas leave shape variables. Each $|\mathbf N_f|^2$ is a Poisson Casimir: its bracket with $N_f^i$ vanishes by antisymmetry. A fixed positive length restricts $\mathbf N_f$ to a two-sphere, a two-dimensional symplectic leaf. For four faces, four spheres give eight dimensions; closure removes three, and the rotation quotient removes three more. On the regular locus, with nonempty constraint surface and no continuous stabilizer, the shape space is therefore two-dimensional. Collinear or other singular configurations do not obey this naive regular dimension count.

Two convenient rotation invariants are $S_{12}=\mathbf N_1\cdot\mathbf N_2$ and $S_{13}=\mathbf N_1\cdot\mathbf N_3$. Only their derivatives with respect to $\mathbf N_1$ contribute to their mutual bracket:

$$\begin{align}
\{S_{12},S_{13}\} =\alpha\epsilon_{ijk}N_1^kN_2^iN_3^j =\alpha Q,\qquad Q=\mathbf N_1\cdot(\mathbf N_2\times\mathbf N_3). \tag{17}
\end{align}$$

Since these scalars commute with the Gauss generator, their brackets restrict to the reduced shape space. Nonzero volume will be precisely what makes these two shape measurements incompatible after quantization.

## 3. A Reconstructed Tetrahedron and Its Volume Coefficient

Take vertices $0,\mathbf e_1,\mathbf e_2,\mathbf e_3$, with positive oriented determinant $D=\det(\mathbf e_1,\mathbf e_2,\mathbf e_3)>0$. The three faces meeting the origin have outward area vectors

$$\begin{align}
\mathbf N_1=-\frac12\mathbf e_2\times\mathbf e_3,\qquad \mathbf N_2=-\frac12\mathbf e_3\times\mathbf e_1,\qquad \mathbf N_3=-\frac12\mathbf e_1\times\mathbf e_2, \qquad \mathbf N_4=-\sum_{r=1}^3\mathbf N_r. \tag{18}
\end{align}$$

The minus signs point away from the interior; the factor $1/2$ is the triangle area factor. The cofactor identity for the edge matrix gives

$$\begin{align}
\det\left(\mathbf e_2\times\mathbf e_3, \mathbf e_3\times\mathbf e_1, \mathbf e_1\times\mathbf e_2\right)=D^2. \tag{19}
\end{align}$$

Consequently $Q=-D^2/8$, while elementary tetrahedral volume is $V=D/6$. Eliminating $D$ gives the normalized geometrical relation

$$\begin{align}
V^2=\frac29|Q|,\qquad V=\frac{\sqrt2}{3}\sqrt{|Q|}. \tag{20}
\end{align}$$

Changing the ordered face triple changes its orientation sign, not the positive volume. The quantity $Q$ has length-to-the-sixth units; it is an oriented volume-squared variable, not volume itself.

For an evaluated example set $\mathbf e_1=(2,0,0)$, $\mathbf e_2=(0,3,0)$, $\mathbf e_3=(0,0,4)$ in a chosen length unit. Then

$$
\begin{aligned}
\mathbf N_1&=(-6,0,0),&A_1&=6,\\
\mathbf N_2&=(0,-4,0),&A_2&=4,\\
\mathbf N_3&=(0,0,-3),&A_3&=3,\\
\mathbf N_4&=(6,4,3),&A_4&=\sqrt{61}.
\end{aligned}
\tag{21}
$$

The normals $\mathbf n_f=\mathbf N_f/A_f$ are distinct and span three dimensions; all areas are positive and closure holds. Hence this example satisfies the reconstruction theorem's domain. Directly $Q=(-6)(-4)(-3)=-72$, and (20) gives $V=4$, in agreement with $2\cdot3\cdot4/6$.

The outward-normal angle $\phi_{fg}$ and the interior dihedral angle $\vartheta_{fg}$ of a convex tetrahedron differ by a supplement:

$$\begin{align}
\cos\phi_{fg}=\frac{\mathbf N_f\cdot\mathbf N_g}{A_fA_g}, \qquad \vartheta_{fg}=\pi-\phi_{fg},\qquad \cos\vartheta_{fg}=-\frac{\mathbf N_f\cdot\mathbf N_g}{A_fA_g}. \tag{22}
\end{align}$$

For (21), $\vartheta_{12}=\pi/2$ and $\vartheta_{14}=\arccos(6/\sqrt{61})=0.6947382762\ldots$ radians. This fixes which angle is meant before introducing its quantum operator.

For four nondegenerate outward face vectors, closure also gives an explicit inverse to (18), up to translation and orientation. In the orientation used above, write $R=\sqrt{8|Q|}=D$. Cross-multiplying the cofactor columns gives

$$\begin{align}
\mathbf e_1=\frac4R\,\mathbf N_2\times\mathbf N_3,\qquad \mathbf e_2=\frac4R\,\mathbf N_3\times\mathbf N_1,\qquad \mathbf e_3=\frac4R\,\mathbf N_1\times\mathbf N_2. \tag{23}
\end{align}$$

For (21), $R=24$ and these are $(2,0,0),(0,3,0),(0,0,4)$. Formula (23) requires $Q<0$ in this ordered outward convention; if the chosen triple has $Q>0$, first reverse the face ordering. It is singular at $Q=0$, exactly where nondegenerate reconstruction fails.

A graph's link matching (9) equates face areas and rotates normals. It does not equate the complete intrinsic metric of a shared face. For example, right triangles with legs $(2,1)$ and $(\sqrt2,\sqrt2)$ both have area $1$, but their unordered side lengths are $(1,2,\sqrt5)$ and $(\sqrt2,\sqrt2,2)$. They cannot be identified by a face isometry. Polyhedra with these shared-face data need additional shape matching to define a piecewise-flat Regge metric. Area-matched but shape-mismatched data belong to a broader discrete phase space, often called twisted geometry; see [Freidel and Speziale](<https://arxiv.org/abs/1001.2748>). Even shape matching is not a gravitational equation of motion.

## 4. Quantization: Four Faces and a Two-Dimensional Invariant Space

On one link take $L^2(SU(2),dh)$ with normalized Haar measure. Let

$$\begin{align}
L_i f(h)=\left.\frac{d}{ds}f(he^{s\tau_i})\right|_{s=0}, \qquad \widehat N_s^i=i\alpha\hbar L_i. \tag{24}
\end{align}$$

On smooth functions, $L_i$ is anti-symmetric in the Haar inner product, and $[L_i,L_j]=\epsilon_{ij}{}^kL_k$. Multiplication by $h$ therefore obeys $[\widehat N_s^i,h]=i\hbar\alpha h\tau_i$, the quantization of (8), with the positive insertion sign of (5). Integration and endpoint conventions remain those already specified; this formula is a cotangent-link operator, not an endpoint regulator prescription for every continuum surface.

Peter–Weyl decomposition supplies finite-dimensional spin-$j$ factors. At a node, choose the incident representation or its dual appropriate to each oriented end. The invariant antisymmetric tensor identifies the fundamental dual with a fundamental representation, so we may describe four outward spin-one-half legs using four copies of $\mathbb C^2$. On them write

$$\begin{align}
\widehat{\mathbf N}_f=\alpha\hbar\mathbf J_f,\qquad [J_f^i,J_g^j]=i\delta_{fg}\epsilon^{ij}{}_kJ_f^k,\qquad \mathbf J_f^2=j_f(j_f+1)I. \tag{25}
\end{align}$$

These endpoint identifications do not drop the outward orientation in (9). For $\gamma<0$, the signed flux scale in (25) reverses, while its norm does not. The Casimir face-area prescription is

$$\begin{align}
\widehat A_f=a_0\sqrt{j_f(j_f+1)}\,I. \tag{26}
\end{align}$$

This is also the simple transverse puncture area of the standard holonomy–flux representation, excluding genuine vertices and tangential intersections of the measured surface. In the polyhedral model it assigns area to one face; an arbitrary curved continuum face need not have area equal to the norm of its single integrated flux. For $j_f=1/2$, every face has area $a_0\sqrt3/2$.

Gauss invariance requires $\sum_f\mathbf J_f|\psi\rangle=0$. We now derive the same normalized basis as [EC-07, Section 7.1](<EC-07.md#71-four-spin-one-half-legs>), rather than assigning new normalization to its labels. In one pair define

$$\begin{align}
|s\rangle=\frac{|\uparrow\downarrow\rangle-|\downarrow\uparrow\rangle}{\sqrt2}, \quad |t_+\rangle=|\uparrow\uparrow\rangle, \quad |t_0\rangle=\frac{|\uparrow\downarrow\rangle+|\downarrow\uparrow\rangle}{\sqrt2}, \quad |t_-\rangle=|\downarrow\downarrow\rangle. \tag{27}
\end{align}$$

The singlet has zero total pair spin; the triplets have spin one. To couple two triplets to a total singlet, zero magnetic weight restricts a candidate to $a|t_+t_-\rangle+b|t_0t_0\rangle+c|t_-t_+\rangle$. The total raising operator gives $a+b=b+c=0$, since raising $t_0$ or $t_-$ has coefficient $\sqrt2$. Normalization then fixes $(a,b,c)=(1,-1,1)/\sqrt3$, up to a common phase. Thus

$$\begin{align}
|I_0\rangle=|s\rangle_{12}|s\rangle_{34},\qquad |I_1\rangle=\frac{|t_+t_-\rangle-|t_0t_0\rangle+|t_-t_+\rangle}{\sqrt3}. \tag{28}
\end{align}$$

They are orthogonal because the first pair has spin zero in $I_0$ and spin one in $I_1$. They are complete: $(V_0\oplus V_1)\otimes(V_0\oplus V_1)$ contains a singlet once from $0\otimes0$ and once from $1\otimes1$, and none from $0\otimes1$ or $1\otimes0$. This uses the finite $SU(2)$ angular-momentum coupling rule; equivalently direct evaluation of the $16\times16$ total Casimir has characteristic polynomial $\lambda^2(\lambda-2)^9(\lambda-6)^5$ and common Gauss kernel dimension two.

## 5. Shape Matrices and Genuinely Noncommuting Dihedral Angles

Define dimensionless gauge-invariant shape operators $D_{fg}=\mathbf J_f\cdot\mathbf J_g$ for different faces. For $D_{12}$, pair angular momentum immediately gives

$$
D_{12}=\frac12\left[(\mathbf J_1+\mathbf J_2)^2-\frac32I\right]
=\begin{pmatrix}-3/4&0\\0&1/4\end{pmatrix}_{(I_0,I_1)}.
\tag{29}
$$

To compute a different pairing without assuming it is diagonal in this basis, use the spin-one-half swap operator $P_{13}$. On the two-spin singlet/triplet sectors its eigenvalues are $-1,+1$, so $D_{13}=P_{13}/2-I/4$. For an explicit overlap, expand

$$
\begin{aligned}
I_0={}&\frac12\left(
 |\uparrow\downarrow\uparrow\downarrow\rangle
 -|\uparrow\downarrow\downarrow\uparrow\rangle
 -|\downarrow\uparrow\uparrow\downarrow\rangle
 +|\downarrow\uparrow\downarrow\uparrow\rangle\right),\\
I_1={}&\frac1{\sqrt3}\left(
 |\uparrow\uparrow\downarrow\downarrow\rangle
 +|\downarrow\downarrow\uparrow\uparrow\rangle
 -\frac12\left[
 |\uparrow\downarrow\uparrow\downarrow\rangle
 +|\uparrow\downarrow\downarrow\uparrow\rangle
 +|\downarrow\uparrow\uparrow\downarrow\rangle
 +|\downarrow\uparrow\downarrow\uparrow\rangle\right]\right).
\end{aligned}
\tag{30}
$$

Swapping entries one and three gives $\langle I_0|P_{13}|I_0\rangle=1/2$ and $\langle I_1|P_{13}|I_0\rangle=-3/(2\sqrt3)=-\sqrt3/2$. The remaining overlaps give

$$
P_{13}\big|_{\mathrm{Inv}}=
\begin{pmatrix}1/2&-\sqrt3/2\\-\sqrt3/2&-1/2\end{pmatrix},\qquad
D_{13}=\begin{pmatrix}0&-\sqrt3/4\\-\sqrt3/4&-1/2\end{pmatrix}.
\tag{31}
$$

This restriction is an invariant subspace, not a projection that discards leakage: both $D_{12}$ and $D_{13}$ commute with total spin and preserve the singlet space.

The dimensionless triple operator and its relation to the shape commutator are

$$\begin{align}
q=\epsilon_{ijk}J_1^iJ_2^jJ_3^k,\qquad [D_{12},D_{13}] =\sum_{i,j}J_2^iJ_3^j[J_1^i,J_1^j]=iq. \tag{32}
\end{align}$$

Different legs commute, so $q$ is Hermitian without an ordering ambiguity within this triple. Using (29) and (31),

$$
q=\frac{\sqrt3}{4}
\begin{pmatrix}0&-i\\i&0\end{pmatrix},\qquad
q^2=\frac3{16}I,\qquad
|\pm\rangle=\frac{|I_0\rangle\pm i|I_1\rangle}{\sqrt2},\quad
q|\pm\rangle=\pm\frac{\sqrt3}{4}|\pm\rangle.
\tag{33}
$$

The signed physical triple is $\widehat Q=(\alpha\hbar)^3q$, and $\widehat S_{fg}=(\alpha\hbar)^2D_{fg}$. Their commutator is exactly $[\widehat S_{12},\widehat S_{13}]=i\hbar\alpha\widehat Q$, reproducing (17) with all scales retained.

Because the face Casimirs are fixed and nonzero, define the outward-normal cosine operators by $C_{fg}=D_{fg}/\sqrt{j_f(j_f+1)j_g(j_g+1)}$. In this example,

$$
C_{12}=\begin{pmatrix}-1&0\\0&1/3\end{pmatrix},\qquad
C_{13}=\begin{pmatrix}0&-1/\sqrt3\\-1/\sqrt3&-2/3\end{pmatrix},\qquad
[C_{12},C_{13}]=\frac{16i}{9}q\ne0.
\tag{34}
$$

Their eigenvalues are $-1$ and $1/3$, both within the cosine domain. To obtain actual interior dihedral-angle operators, use spectral functional calculus, not $\arccos$ of a mean value:

$$\begin{align}
\Theta_{fg}=\arccos(-C_{fg}),\qquad \vartheta_* =\arccos(-1/3). \tag{35}
\end{align}$$

On the two-point spectrum, this function equals the affine function $3\vartheta_*(C+I)/4$. It follows that

$$
\Theta_{12}=\vartheta_*\begin{pmatrix}0&0\\0&1\end{pmatrix},\qquad
\Theta_{13}=\vartheta_*\begin{pmatrix}3/4&-\sqrt3/4\\-\sqrt3/4&1/4\end{pmatrix},
\qquad [\Theta_{12},\Theta_{13}]=i\vartheta_*^2q.
\tag{36}
$$

Thus not even Gauss-invariant angle measurements are all simultaneously sharp. For the oriented state $|+\rangle$, $\langle C_{12}\rangle=\langle C_{13}\rangle=-1/3$ but both variances are $4/9$. These mean cosines agree with regular-tetrahedron outward-normal cosines; the large fluctuations prevent identifying this small-spin state with a single sharp regular tetrahedron. The zero angle in the spectrum is also not a proof that the state simultaneously describes a classical collapsed tetrahedron: the other shapes are incompatible observables.

## 6. A Chosen Volume Quantization, Not a Universal Volume Operator

We quantize the specific tetrahedral function (20) by the positive spectral prescription

$$\begin{align}
\widehat V_{\mathrm{tet}}= \frac{\sqrt2}{3}\sqrt{|\widehat Q|},\qquad |\widehat Q|=\sqrt{\widehat Q^{\,2}}. \tag{37}
\end{align}$$

In a fixed finite spin sector these are ordinary Hermitian matrices and their positive square roots. Equations (33) and (37) give the complete volume matrix on this invariant space:

$$\begin{align}
\widehat V_{\mathrm{tet}} =a_0^{3/2}\sqrt{\frac{\sqrt3}{18}}\,I =a_0^{3/2}\frac{\sqrt2\,3^{1/4}}6\,I. \tag{38}
\end{align}$$

Both orientations have the same positive volume; the signed $\widehat Q$ distinguishes them, with its eigenvalue assignment reversed when $\gamma<0$. All four area eigenvalues are $a_0\sqrt3/2$, independently of the shape state. Hence area labels alone do not select shape, and even adding this volume does not distinguish the two-dimensional singlet space. The angle matrices do.

Nonlinearity matters already for $I_0$: $\langle I_0|q|I_0\rangle=0$, but its volume expectation equals the positive value in (38). Replacing $\langle\sqrt{|q|}\rangle$ by $\sqrt{|\langle q\rangle|}$ would incorrectly predict zero. A vanishing oriented mean can express a superposition of orientations, not a vanishing positive volume.

The coefficient in (38) comes from triangle areas, the determinant identity and the explicit prescription (37). It is not borrowed from an unspecified graph-volume formula. Standard full loop-gravity volume constructions involve regulated sums of triples of incident edges, signs of embedded tangent triples, and a chosen normalization; distinct prescriptions require an explicit comparison. Nothing here proves that every such operator restricts to exactly (37), or that a higher-valent polyhedron has volume determined by one triple. The elementary theorem that $\mathbf N_f$ reconstruct a generic convex polyhedron is also not a prescription uniquely selecting its quantum volume operator.

## 7. What Has and Has Not Been Reduced

The two-dimensional space above solves the internal Gauss condition at one specified four-valent node. It supplies exact finite matrices for kinematical areas, shapes and a tetrahedral volume prescription. Rotation invariance makes these quantities independent of the internal frame; it does not make an embedded surface or cell a physical gravitational observable.

Spatial diffeomorphisms move the graph and surfaces. The Hamiltonian constraint concerns dynamics and requires its own operator, domain, regularization and physical-state construction. A relational observable must say which matter or geometric reference identifies the surface or region and must act on a specified physical state space. Neither a Haar projector nor diagonalizing (38) solves those problems. On a single link the subdivision map $f(h)\mapsto f(h_2h_1)$ is Haar-isometric, since integrating over $h_2$ at fixed $h_1$ is a translated Haar integral; this fact alone does not make a cell-volume prescription consistent under every refinement or supply a unique continuum limit.

Our reconstruction assumes convex flat spatial cells, positive face areas and nondegenerate normal data. Gluing further requires face-shape matching. Large-spin semiclassical control, curved-cell reconstruction, refinement of the operators, the remaining constraints and physical spectra lie beyond the calculation. The [controlled cosmological models in EC-08](<EC-08.md>) introduce additional dynamical assumptions; no bounce follows from the node count or the volume eigenvalue here. Likewise no matter gauge group, generation number or solution of quantum gravity follows from this finite $SU(2)$ model.

## Further Reading and Inputs

[EC-07](<EC-07.md>) supplies the reduced gravitational canonical variables, the minus-holonomy/positive-insertion convention and the normalized four-spin singlets. We reused and explicitly reconstructed that finite basis, not its entire canonical or covariant overview.

E. Bianchi, P. Doná and S. Speziale, [“Polyhedra in loop quantum gravity”](<https://arxiv.org/abs/1009.3402>), *Physical Review D* **83** (2011), 044035: Minkowski reconstruction and the interpretation of intertwiners as quantum polyhedra. The general theorem remains an input; the tetrahedral determinant and matrices used here were derived explicitly.

L. Freidel and S. Speziale, [“Twisted geometries: A geometric parametrisation of $SU(2)$ phase space”](<https://arxiv.org/abs/1001.2748>), *Physical Review D* **82** (2010), 084040: the distinction between area/normal link data and consistently glued Regge geometry. No spinor matching reduction or equivalence of quantization prescriptions is assumed in this chapter.
