# Locality of the first scalar reconstruction: a circle integral and an exact mixed correlator

## 1. Result and the two meanings of the locality test

The first-order scalar reconstruction passes the bulk spacelike-commutator test in the following precise senses.

1. For a **common compact local interaction switch**, the formal Yang–Feldman field has a causal commutator through first order. A cancellation removes the common-past contributions, leaving only two retarded chains.
2. For the **stationary one-vertex vacuum coefficient** used in the [all-channel Wightman calculation](</Users/koishi/Documents/Note/Articles/extrapolate dictionary/half_bps_wightman.md>), the full finite-radius three-point function has an explicit angular representation. Its adjacent-ordering difference vanishes for bulk spacelike separation. In particular, the one-bulk/two-boundary coefficient is exactly

$$
\boxed{
\langle U(z,x)\mathcal O(y)\mathcal O(v)\rangle_{c,\mathrm{tree}}
=-\frac{g}{2SAB},\qquad
A=z^2+(x-y)^2,\quad B=z^2+(x-v)^2,\quad S=(y-v)^2.}
\tag{1.1}
$$

Here and below the Lorentzian squares are spacelike-positive, with a joint ordered complex-time boundary value. The isolated free lift and quadratic correction contain an additional pole at $AB=z^2S$; their sum cancels it identically. That locus can occur when all physical pairs are spacelike.

These are not interchangeable statements about an exact interacting Hilbert space. The first is a locally switched formal operator calculation. The second is a stationary vacuum three-point calculation with the already specified perturbative contour prescription. No general switching-limit theorem, full IIB dressing, or higher-order interacting operator construction is inferred.

## 2. Conventions inherited from the bulk insertion construction

Use the [reference source formalism](</Users/koishi/Documents/Note/Articles/extrapolate dictionary/extrapolate.pdf>) and the [BF/IIB normalization](</Users/koishi/Documents/Note/Articles/extrapolate dictionary/half_bps.md>). The finite-radius field is a radially mollified bulk insertion followed by the thin-layer limit, not an independent wall field. The vacuum has no BF logarithmic branch. In the fixed scalar coordinates and gauge of those reports,

$$
U^I=\sqrt{2\pi^2/\ell}\,(z/\ell)^{-2}\phi^I,
\qquad
\mathcal D=\partial_z^2+z^{-1}\partial_z+\square_\eta,
\qquad \eta=(-,+,+,+),
$$

$$
\mathcal D U^I=g_{IJK}U^JU^K+\cdots,
\qquad g_{IJK}=\frac{4\sqrt2}{N}d_{IJK},\qquad
c_{IJK}=-\frac{g_{IJK}}2.
\tag{2.1}
$$

The boundary primary is oriented as $-\widehat Q$. Couplings and structure constants are retained at the same leading order in $1/N$. Suppress species for a fixed scalar cubic channel, writing $g$ and $c$. The corresponding fixed-background scalar model is used when stating an operator identity; the actual IIB field also has gauge/gravitational bilinears.

With $C_0=2\pi^2$, the BF-boundary-completed scalar action is

$$
S_L=-\frac1{2C_0}\int z\,dz\,d^4x
\left[(\partial_z U)^2+\eta^{ij}\partial_iU\partial_jU+\frac{2g}{3}U^3\right].
\tag{2.2}
$$

The unit free covariance has Fourier density

$$
\widetilde W_0(p;z,w)=2\pi^3\mathbf1_{V_+}(p)
J_0(z\sqrt{s(p)})J_0(w\sqrt{s(p)}),
\qquad s(p)=(p^0)^2-|\mathbf p|^2,
\tag{2.3}
$$

with phase $e^{-ip^0t+i\mathbf p\cdot\mathbf x}$. All vertex integrals below use $d\mu(V)=u\,du\,d^4v$. Thus the retarded inverse is the inverse with measure $u\,du$, not the fixed-boundary radial Volterra kernel with measure $du$.

## 3. A six-dimensional integral identity, not additional bulk degrees of freedom

### 3.1 Circle representation of the free covariance

Introduce an auxiliary two-plane and set

$$
\widehat X(\theta)=(x,z\cos\theta,z\sin\theta),\qquad
\langle f\rangle_\theta=\frac1{2\pi}\int_0^{2\pi}f\,d\theta.
$$

The operator $\mathcal D$ is the flat six-dimensional wave operator on functions independent of the auxiliary angle. In Euclidean signature the normalized covariance is

$$
\boxed{
C_E(X,Y)=\left\langle
\frac1{[|x-y|^2+z^2+w^2-2zw\cos\theta]^2}
\right\rangle_\theta.}
\tag{3.1}
$$

Indeed the four-dimensional Fourier transform of $(|x|^2+a^2)^{-2}$ is $2\pi^2K_0(|k|a)$, and the circular addition theorem gives

$$
\widetilde C_E(k;z,w)=C_0I_0(|k|z_<)K_0(|k|z_>),
$$

exactly the insertion covariance already established. For Euclidean $A_0=|x-y|^2+z^2+w^2>2zw$,

$$
C_E(X,Y)=\frac{A_0}{[A_0^2-4z^2w^2]^{3/2}},
\qquad C_E(X;(0,y))=\frac1{[z^2+|x-y|^2]^2}.
\tag{3.2}
$$

The angular formula, rather than an unspecified branch of the radical, defines the Lorentzian continuation.

This construction is an integral identity for the radial kernels. It does **not** identify the interacting IIB scalar with the angular average of a full six-dimensional quantum field: nonzero angular modes would contribute to composite operators and loops in that different theory. No extra physical oscillators are introduced.

### 3.2 The complete one-vertex three-point function

The Euclidean insertion diagram, with all radii finite, is

$$
T_E(X_1,X_2,X_3)=-\frac{2g}{C_0}\int d\mu(V)
\prod_{i=1}^3 C_E(X_i,V).
\tag{3.3}
$$

Use a separate external angle for each covariance and restore the vertex angle. Since $d^6\widehat V=u\,du\,d\theta_V\,d^4v$ and a common auxiliary rotation leaves the integrand invariant,

$$
T_E=-\frac{g}{2\pi^3}
\left\langle\int_{\mathbb R^6}d^6\widehat V
\prod_{i=1}^3|\widehat V-\widehat X_i(\theta_i)|^{-4}
\right\rangle_{\theta_1\theta_2\theta_3}.
\tag{3.4}
$$

For distinct Euclidean endpoints the integral converges: near any endpoint its radial behavior is $r\,dr$, and at infinity it is $R^{-7}dR$. The six-dimensional uniqueness integral is

$$
\int d^6V\prod_{i=1}^3|V-X_i|^{-4}
=\frac{\pi^3}{|X_1-X_2|^2|X_2-X_3|^2|X_3-X_1|^2}.
\tag{3.5}
$$

For completeness, Feynman parameters reduce its ratio to $\pi^3$ to

$$
2\int_{\alpha_i\ge0,\,\sum\alpha_i=1}
\frac{\alpha_1\alpha_2\alpha_3\,d\alpha_1d\alpha_2}
{[\alpha_1\alpha_2q_{12}+\alpha_1\alpha_3q_{13}+\alpha_2\alpha_3q_{23}]^3}.
$$

Set $\alpha_1=a$, $\alpha_2=(1-a)t$, $\alpha_3=(1-a)(1-t)$. The $a$ integral uses $\int_0^1a[C+a(B-C)]^{-3}da=(2B^2C)^{-1}$, with $B=tq_{12}+(1-t)q_{13}$, $C=t(1-t)q_{23}$. The remaining integral is $q_{23}^{-1}\int_0^1B^{-2}dt=(q_{12}q_{13}q_{23})^{-1}$. This proves the normalization in (3.5), including degenerate equal-distance cases by continuity.

Consequently

$$
\boxed{
T_E=-\frac g2\left\langle\frac1{Q_{12}Q_{13}Q_{23}}
\right\rangle_{\theta_1\theta_2\theta_3},\qquad
Q_{ij}=|x_i-x_j|^2+z_i^2+z_j^2-2z_iz_j\cos(\theta_i-\theta_j).}
\tag{3.6}
$$

One common rotation removes one angular integral. Thus a full radial vertex integration has become a compact two-angle integral. When $z_2=z_3=0$, no angle remains and (3.6) immediately gives (1.1). When all radii vanish it gives the protected boundary coefficient $c=-g/2$.

The equation of motion also checks the result directly. In six dimensions,

$$
\Delta_{X_1}\frac1{Q_{12}Q_{13}Q_{23}}
=-\frac4{Q_{12}^2Q_{13}^2}.
$$

After angular averaging, the angular derivative integrates to zero and the right side factorizes into two covariances, giving $\mathcal D_{E,1}T_E=2gC_E(X_1,X_2)C_E(X_1,X_3)$ away from coincident singularities.

## 4. Ordered continuation and stationary three-point locality

For the order $U(X_1)U(X_2)U(X_3)$ take $t_i\mapsto t_i-i\epsilon_i$ with $\epsilon_1>\epsilon_2>\epsilon_3$ before any boundary value. In (3.6) replace

$$
Q_{ij}\longmapsto Q_{ij}^{\epsilon}
=|\mathbf x_i-\mathbf x_j|^2+z_i^2+z_j^2-2z_iz_j\cos(\theta_i-\theta_j)
-[t_i-t_j-i(\epsilon_i-\epsilon_j)]^2.
\tag{4.1}
$$

This is the ordered Euclidean-vacuum boundary value of the same insertion diagram, under the perturbative vacuum-contour prescription explicitly adopted in the preceding report. It is not an inference from normalization alone. The previously proved all-channel tempered-distribution theorem supplies the fixed-radius and boundary distributional setting. At coincident light cones the joint ordered boundary value, not an arbitrary product of separate singular prescriptions, is retained.

For physically bulk-spacelike $X_1,X_2$,

$$
|\mathbf x_1-\mathbf x_2|^2+(z_1-z_2)^2-(t_1-t_2)^2>0.
\tag{4.2}
$$

Every $Q_{12}$ is then positive with a uniform angular gap on compact subsets. Exchanging the adjacent order of 1 and 2 changes no spectator-pair ordering and encounters no singularity in $Q_{12}^{-1}$. This remains true at spectator light-cone intersections: after the smooth $Q_{12}^{-1}$ multiplier is removed, the two remaining factors are boundary-value distributions in the independent differences $x_1-x_3$ and $x_2-x_3$. Their tensor product is unchanged by either adjacent ordering. Their parameter families are continuous down to zero auxiliary separation; this follows from $\partial_{a^2}(a^2+x_{i0}^2)^{-1}=-(a^2+x_{i0}^2)^{-2}$ and the bounded free multiplier $J_0(a\sqrt s)$ of the latter kernel. Compact angular averaging preserves the equality. The two boundary values therefore agree:

$$
\boxed{\langle[U(X_1),U(X_2)]U(X_3)\rangle_{\mathrm{tree}}=0}
\quad\text{on the strict bulk-spacelike open set.}
\tag{4.3}
$$

The same holds with the spectator on the left. This tests a nonzero cubic coefficient, unlike the identically vanishing first-order Gaussian matrix element with two free spectators.

In fact, the stationary three-point ordering difference is supported only where some $Q_{12}=0$, hence within the closed shell

$$
|\Delta\mathbf x|^2+(z_1-z_2)^2
\le(\Delta t)^2\le
|\Delta\mathbf x|^2+(z_1+z_2)^2.
\tag{4.4}
$$

Outside the shell on the deep-timelike side, $Q_{12}$ is uniformly negative rather than positive; the same smooth-multiplier and spectator tensor-product argument applies. This stronger property belongs to this special stationary tree coefficient. It is not claimed for arbitrary interactions, switching functions, higher-point functions, or gravitationally dressed observables.

### 4.1 The mixed commutator

For one bulk insertion $X=(z,x)$ and two boundary insertions $y,v$, (1.1) gives, away from intersections with the other light cones,

$$
\boxed{
\langle[U(X),\mathcal O(y)]\mathcal O(v)\rangle_{\mathrm{tree}}
=\frac{i\pi g\,\operatorname{sgn}(t_x-t_y)\delta(A)}
{S_{yv}B_{Xv}}.}
\tag{4.5}
$$

The sign follows from $(q+i0)^{-1}-(q-i0)^{-1}=-2\pi i\delta(q)$. The two spectator denominators carry their inherited ordering. At simultaneous light-cone intersections, (4.5) is shorthand for the difference of the full joint boundary values, not a license to multiply undefined distributions. Its support is the bulk–boundary null surface $A=0$; in particular the coefficient vanishes for $A>0$.

The strict spacelike gap also makes the conclusion stable when an outer finite radius is taken to zero. This uses the interacting boundary trace, not a replacement by an uncorrected Gaussian in-field.

## 5. How the double-trace term removes a nonlocal pole

Put $P=AB-z^2S$. The radial solution with exact boundary three-point coefficient $c$ has the following local analytic decomposition:

$$
F_{\rm lift}=\frac{c}{SP},\qquad
F_{\rm quad}=\frac{gz^2}{2ABP}.
\tag{5.1}
$$

The first term is the free radial lift of the **non-Gaussian exact** boundary three-point data. The second is the Wick contraction of the scalar quadratic Volterra correction with two leading boundary fields. They satisfy

$$
\mathcal D F_{\rm lift}=0,\qquad
\mathcal D F_{\rm quad}=\frac{2g}{A^2B^2},\qquad
F_{\rm quad}=\frac{gz^2}{2[(x-y)^2]^2[(x-v)^2]^2}+O(z^4).
\tag{5.2}
$$

The logfree analytic radial germ and its prescribed finite boundary coefficient fix these solutions near $z=0$ away from singularities. Their rational formulas provide meromorphic continuations. They need not separately define global tempered Wightman distributions: that would contradict the isolated $I_0$-growth obstruction established in the [reconstruction report](</Users/koishi/Documents/Note/Articles/extrapolate dictionary/half_bps_reconstruction.md>).

Their sum is

$$
F_{\rm lift}+F_{\rm quad}
=\frac{c+g/2}{SP}-\frac{g}{2SAB}.
\tag{5.3}
$$

Thus the protected relation $c=-g/2$ removes the entire spurious $P=0$ pole, just as it removed the growing spacelike-transfer mode. Within this specified reconstruction, cancellation is not optional: a nonzero residue would leave a singularity unrelated to any physical pairwise bulk null separation.

### 5.1 An all-spacelike pole configuration

Use a fixed length unit and choose

$$
z=1,\quad x=(t_x=1/2,\mathbf0),\quad y=(0,\mathbf0),
\quad v=(-1/2,\mathbf e_1).
$$

Then

$$
A=\frac34,\qquad B=1,\qquad S=\frac34,\qquad P=0.
\tag{5.4}
$$

All three physical pairs are spacelike. Varying $t_x$ gives a simple pole, since at this point

$$
(\partial_{t_x}P,\partial_{t_y}P,\partial_{t_v}P)=(-5/2,2,1/2).
$$

The ordered regulator ray $(\epsilon_x,\epsilon_y,\epsilon_v)=(2,1,0)\epsilon$ gives $\operatorname{Im}P=3\epsilon+O(\epsilon^2)$; the exchanged ray $(1,2,0)\epsilon$ gives $-3\epsilon/2+O(\epsilon^2)$. On these specified local approaches the isolated lift would contribute $-2\pi i c\,\delta(P)/S$ to the ordering difference. The quadratic term supplies its exact opposite when $c=-g/2$. The full value is regular and tends to $-8g/9$ on both approaches.

This is a diagnostic of the unphysical pole, **not** a claim that the isolated lift has a globally well-defined commutator. Other middle-insertion approach ratios can change its pole prescription, and its meromorphic expression can have poles inside an ordered tube. The physical sum must be combined before taking the distributional boundary value.

## 6. A separate formal operator proof with compact switching

### 6.1 Free causal support

Write $\mathscr C(X,Y)=[U_0(X),U_0(Y)]$. The circle representation gives

$$
\mathscr C(X,Y)=2\pi i\,\operatorname{sgn}(t_x-t_y)
\left\langle\delta'(Q_{XY})\right\rangle_\theta,
\tag{6.1}
$$

as an ordered distribution. Its support is the shell (4.4). The mathematical retarded inverse is

$$
\mathscr R(X,Y)=-\frac i{C_0}\theta(t_x-t_y)\mathscr C(X,Y),
\qquad
\mathscr C=iC_0(\mathscr R-\mathscr R^T),
\qquad \mathcal D\mathscr R=\delta_\mu.
\tag{6.2}
$$

The canonical jump is $\partial_{t_x}\mathscr C|_{t_x=t_y}=-iC_0\delta^3(\mathbf x-\mathbf y)\delta(z-w)/z$, fixing the normalization and inverse sign.

### 6.2 Cancellation into causal chains

For a real common switch $f\in C_c^\infty((0,\infty)\times\mathbb R^{1,3})$, define the scalar formal field

$$
U_f(X)=U_0(X)+g\int d\mu(V)\,f(V)\mathscr R(X,V):U_0(V)^2:+O(g^2).
\tag{6.3}
$$

External fields are smeared; Wick ordering is with respect to the free vacuum. The algebra gives

$$
\begin{aligned}
[U_f(X),U_f(Y)]={}&\mathscr C(X,Y)\\
&+2g\int d\mu(V)f(V)
[\mathscr R(X,V)\mathscr C(V,Y)+\mathscr R(Y,V)\mathscr C(X,V)]U_0(V)+O(g^2).
\end{aligned}
$$

Substituting (6.2), the common-past terms cancel before integration:

$$
\boxed{
[U_f(X),U_f(Y)]=\mathscr C(X,Y)
+4i\pi^2g\int d\mu(V)f(V)
[\mathscr R(X,V)\mathscr R(V,Y)-\mathscr R(Y,V)\mathscr R(V,X)]U_0(V)
+O(g^2).}
\tag{6.4}
$$

The two chains require $X\succeq V\succeq Y$ or $Y\succeq V\succeq X$. Neither is possible for strict bulk spacelike separation. This proves the first-order formal operator statement for the switched fixed-background scalar theory. A right free spectator replaces $U_0(V)$ in (6.4) by $W_0(V,A)$; arbitrary finite Gaussian spectator products give their corresponding Wick sums. The spectator-leg contribution to the explicit three-point function cancels when $X,Y$ are exchanged.

This is locality through order $g$, not exact locality of the polynomial $U_0+gU_1$. At the next order, $[U_1,U_1]$ must be combined with the $U_2$ terms.

### 6.3 Why the exact boundary trace and a common prescription matter

If the boundary trace exists, the same strict-gap argument gives $[U_f(X),\mathcal O_f(y)]=O(g^2)$ for $|\mathbf x-\mathbf y|^2+z^2>(t_x-t_y)^2$, where $\mathcal O_f=\lim U_f$. Replacing this by $\mathcal O_0$ removes the second chain-producing correction. For a switch supported in the common past it leaves

$$
-2igC_0\int d\mu(V)f(V)\mathscr R(X,V)\mathscr R((0,y),V)U_0(V),
\tag{6.5}
$$

which need not vanish. The uncorrected in-field boundary operator is not the boundary trace of the interacting field. In the CFT reconstruction the corresponding data are encoded in the non-Gaussian exact primary.

Similarly, damping only the retarded kernels by $e^{-\epsilon(t_X-t_V)}$ while leaving the free commutator unchanged breaks (6.2). The common-past remainder is proportional to

$$
\mathscr R(X,V)\mathscr R(Y,V)
[e^{-\epsilon(t_Y-t_V)}-e^{-\epsilon(t_X-t_V)}].
$$

It is not identically zero at finite $\epsilon$. A distributional switching limit, if established, preserves the switched spacelike zero, but its existence and equivalence to a stationary prescription cannot be assumed. The independent angular proof in §4 establishes the stationary vacuum three-point result without making that assumption.

### 6.4 Spacelike locality is weaker than the special shell property

Compact local switching can fill the free deep-timelike gap. Take $z_X=z_Y=1$, $\mathbf x=\mathbf y=0$, $t_Y=0$, $t_X=5$, and a nonnegative switch concentrated near $u_V=2,t_V=5/2,\mathbf v=0$. The free commutator vanishes because $25>4$. Both retarded legs in the forward chain, however, lie strictly inside their shells, since $1<25/4<9$.

Inside a shell let $a=(\Delta t)^2-|\Delta\mathbf x|^2-z^2-w^2$ and $b=2zw$. Then

$$
\mathscr R=-\frac{\theta(\Delta t)\,a}{\pi^2(b^2-a^2)^{3/2}}.
$$

At the two indicated legs $a=5/4$, $b=4$, so the integrand coefficient $4\pi^2\mathscr R(X,V)\mathscr R(V,Y)=25600/(\pi^2 231^3)>0$. A free coherent-state mean nonzero with fixed sign near $V$ gives a nonzero first-order commutator matrix element. This counterexample concerns **compact switching only**. It does not contradict the stronger shell support of the stationary vacuum three-point coefficient proved in §4.

## 7. Verification, assumptions and the next unresolved issue

[Reproducible Wolfram checks](</Users/koishi/Documents/Note/Articles/extrapolate dictionary/half_bps_locality_checks.wl>) and [complete output](</Users/koishi/Documents/Note/Articles/extrapolate dictionary/half_bps_locality_checks_results.txt>) accompany the proof. The final complete run has 19 labelled exact groups containing 24 zero scalar residuals and no messages. Checks include the circle covariance and free equation, the uniqueness-integral normalization and parameter Jacobian, all three mixed radial equations, the boundary coefficient, the pole residue and cancellation, the retarded-chain algebra, and the compact-switch timelike example.

Three circle quadratures and three Feynman-parameter samples check the integral formulas. Two angular three-point examples use periodic meshes of sizes 16, 32 and 64; in the nonconstant example the last mesh difference is below $2\times10^{-31}$. Three regulator sizes in both orderings exhibit large opposite isolated-pole terms and a finite combined result. These are numerical diagnostics; neither mesh agreement nor finite-regulator samples replace the analytic distributional arguments.

Independent fresh derivations checked the causal-chain identity and its switching/boundary qualifications, and the mixed rational coefficient, source equation, six-dimensional normalization and spurious-pole example. Two additional fresh manuscript reviews independently checked the angular normalization, joint boundary values at spectator intersections, causal-chain algebra, compact-switch counterexample and scope of the operator claims.

**Verified:** stationary scalar tree three-point locality at arbitrary radii for the stated vacuum-contour prescription; the explicit mixed null-supported commutator; cancellation of the nonphysical reconstruction pole; and first-order formal operator locality for a commonly switched local scalar model.

**Assumptions:** the same logfree BF domain, classical large-$N$ scalar channel, source and field normalization, and perturbative vacuum-contour identification as the preceding reports. The operator proof additionally uses a compatible local Wick definition, a common compact switch and external smearing. Limits are invoked only where established or explicitly conditional.

**Not established:** a stationary interacting operator construction on a common domain, higher-order causal reconstruction, generic four-point comparison, or the gauge-invariant IIB observable algebra. The auxiliary circle is not a full quantum dual theory, and the scalar three-point result is not a claim that gravitationally dressed bulk observables commute at spacelike separation.

The next substantive question is the first order at which non-scalar IIB exchange and constraints enter an independently observable quantity. A four-scalar tree at order $1/N^2$ contains scalar, vector and graviton exchange together with contact terms; it cannot be inferred by squaring this scalar correction. Identifying that coupled contribution and its boundary Ward/OPE data is necessary before advancing from the present local scalar channel to the interacting IIB algebra.
