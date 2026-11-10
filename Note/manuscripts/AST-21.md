# Matter-Field Bundles and a Monopole-Twisted Dirac Model

DRAFT — bounded review recorded.

A matter field is a section of a specified bundle, not a list of components that can be compared in every frame. Its spacetime and internal transformations determine the bundle; compatible connections determine how it is differentiated. This chapter constructs charged spinor bundles and their curvature, then evaluates an auxiliary round-sphere example in which a line bundle changes the Dirac kernel. The example includes transition functions, curvature normalization, globally regular zero modes, and their actual normalization. Bundle kinematics and an index do not by themselves specify a four-dimensional particle theory.

## 1. What Is Being Combined

For physical spacetime let $M$ be a smooth oriented, time-oriented four-manifold with Lorentzian metric $g$ of signature $(-,+,+,+)$. The first lower connection slot is the derivative slot:

$$\begin{align}
\nabla_\mu V^\rho=\partial_\mu V^\rho+\Gamma^\rho{}_{\mu\nu}V^\nu, \qquad T^\rho{}_{\mu\nu}=\Gamma^\rho{}_{\mu\nu}-\Gamma^\rho{}_{\nu\mu}, \qquad Q_{\lambda\mu\nu}=-\nabla_\lambda g_{\mu\nu}. \tag{1}
\end{align}$$

The spinor convention is $\{\gamma^a,\gamma^b\}=-2\eta^{ab}I$, $\gamma^{ab}=[\gamma^a,\gamma^b]/2$, $\bar\psi=\psi^\dagger\gamma^0$, and $\Omega=-\omega_{ab}\gamma^{ab}/4$, as in [the spin chapter](<AST-07.md>) and [classical matter](<EC-02.md>). No global coframe is assumed.

The orthonormal frame bundle has structure group $SO^+(1,3)$. A spin structure is a principal $\operatorname{Spin}(1,3)$ bundle $Q_S$ with an equivariant double-cover map to that frame bundle. It exists only when $w_2(TM)=0$; choosing a Lorentzian metric does not remove this obstruction. The four-component spinor bundle is $S=Q_S\times_{\rho_S}\mathbb C^4$.

Independently choose a principal bundle $P_G\to M$ for a compact internal group $G$ and a finite-dimensional unitary representation $\rho:G\to U(V)$. Its associated bundle is $W=P_G\times_\rho V$. For a right principal action our quotient convention is $[p g,v]=[p,\rho(g)v]$. A section is specified by local functions related by the representation's transition matrices. Its rank is an off-shell component count, not a count of physical polarizations.

The fibre product

$$\begin{align}
Q_S\times_M P_G=\{(q,p):\pi_S(q)=\pi_G(p)\} \tag{2}
\end{align}$$

is principal for $\operatorname{Spin}(1,3)\times G$, and its product representation gives the charged spinor bundle $S\otimes W$. This is a **tensor product** of vector bundles, not the direct sum $S\oplus W$. A charged scalar is a section of $W$; a charged covector is a section of $T^*M\otimes W$. A gauge potential is instead a connection on $P_G$. Its local matrices are not the components of a globally defined ordinary one-form unless a global trivialization exists.

For example take $G=U(1)$ with angle $\chi$ of period $2\pi$. The one-dimensional representation is $e^{i\chi}\mapsto e^{iq\chi}$, with integer weight $q$. Its associated line is $L^{\otimes q}$ for $q>0$, the appropriate dual power for $q<0$, and the trivial representation for $q=0$. The bundle with weight $q$ is an input. Integrality here is a property of this chosen compact group and normalization, not a derivation of the observed charge spectrum.

### 1.1 A Product Spin Structure Is Not Always Available

When $M$ is not spin, writing $S\otimes W$ with an ordinary spin bundle is not legitimate. A spin$^c$ structure is a different lift, with group

$$\begin{align}
\operatorname{Spin}^c(1,3) =\big(\operatorname{Spin}(1,3)\times U(1)\big)/\langle(-1,-1)\rangle. \tag{3}
\end{align}$$

Its determinant line $K_{\mathrm{det}}$ must obey $c_1(K_{\mathrm{det}})\bmod2=w_2(TM)$, and the lift and a determinant-line connection must actually be supplied. Spinors have weight one under the displayed $U(1)$, whereas the determinant character has weight two. The determinant curvature therefore enters their connection with one-half its weight; it is not an arbitrary additional globally defined charge-one line on a nonspin manifold.

More generally a central order-two element $z\in G$ allows a group $(\operatorname{Spin}\times G)/\langle(-1,z)\rangle$. A representation descends only if $\rho_S(-1)\otimes\rho(z)=I$. One still needs a compatible global lift of the frame and quotient-gauge data. This algebraic condition alone does not prove such a lift exists. In (3), a spinor of $U(1)$ weight $q$ descends precisely for odd $q$, since $(-1)(-1)^q=1$. The example below uses a genuine spin sphere and an independent line bundle, so no nonspin lift is being assumed.

## 2. Connections, Compatibility, and Curvature

Choose local spin and gauge frames on an open cover. Write local matter components as $\psi_i=U_{ij}\psi_j$, with $U_{ij}=\rho_S(s_{ij})\otimes\rho(g_{ij})$. A connection differentiates a section while respecting this overlap rule. For

$$\begin{align}
\nabla^{S\otimes W}=\nabla^S\otimes I+I\otimes\nabla^W, \qquad \nabla_\mu=\partial_\mu+B_\mu, \qquad B_\mu=\Omega_\mu\otimes I+I\otimes A_\mu, \tag{4}
\end{align}$$

the necessary overlap law is

$$\begin{align}
B_i=U_{ij}B_jU_{ij}^{-1}-(\mathrm dU_{ij})U_{ij}^{-1}. \tag{5}
\end{align}$$

Indeed $(\mathrm d+B_i)(U_{ij}\psi_j)=U_{ij}(\mathrm d+B_j)\psi_j$; the derivative of the transition matrix is canceled by the last term. The same formula applies to each factor. This also shows why a connection, unlike its curvature, does not transform tensorially.

The internal metric is preserved when $A_\mu^\dagger=-A_\mu$. In a real basis one may write $A=-i a^I t_I$ with Hermitian $t_I$ and real one-forms $a^I$; coupling constants can be included in $a^I$. Do not mix this convention with a Hermitian connection matrix in $\mathrm d+A$. For $U(1)$, $\nabla^{(q)}=\mathrm d-iq a$ with real $a$, and its curvature is $F^{(q)}=-iq\,\mathrm da$. The first Chern form in our convention is

$$\begin{align}
c_1(L)=\left[\frac{iF^L}{2\pi}\right]. \tag{6}
\end{align}$$

For a higher-rank unitary bundle the corresponding first Chern form uses $i\operatorname{tr}F/(2\pi)$.

The Lorentzian spin representation is not a finite-dimensional unitary representation for a positive spinor metric. It preserves the Dirac pairing instead. Internal unitarity consequently makes the pairing with $\gamma^0\otimes I$ and the usual conjugate field well defined; it does not turn $\bar\psi\psi$ into a positive norm. A real matter representation requires an antilinear map $J_W$ with $J_W^2=1$ commuting with the group and connection. A single nonzero-charge $U(1)$ line has no such equivariant real structure: complex conjugation changes $q$ to $-q$. A real or Majorana condition on charged components cannot be imposed without checking the representation and the chosen reality structure.

Let $F^S=\mathrm d\Omega+\Omega\wedge\Omega$ and $F^W=\mathrm dA+A\wedge A$. The curvature of (4) is

$$\begin{align}
F^{S\otimes W}=F^S\otimes I+I\otimes F^W. \tag{7}
\end{align}$$

The consequential cancellation is

$$\begin{align}
[\Omega_\mu\otimes I,I\otimes A_\nu]=0, \qquad [B_\mu,B_\nu]=[\Omega_\mu,\Omega_\nu]\otimes I +I\otimes[A_\mu,A_\nu].
\end{align}$$

Thus these tensor factors produce no mixed curvature commutator. This is a tensor-sum identity, not generally a block-diagonal matrix decomposition. It also does not say that an action or its equations decouple: a Dirac square contracts the gauge curvature with Clifford matrices, and a matter action depends on both connections and on the metric.

### 2.1 Which Affine Connection Can Act on Ordinary Spinors?

For a metric-compatible tangent connection, its real orthonormal connection lifts to $\nabla^S=\mathrm d+\Omega$ with the stated Clifford convention. Clifford compatibility means that differentiating Clifford multiplication agrees with differentiating its tangent argument. Differentiating

$$\begin{align}
c(v)c(w)+c(w)c(v)=-2g(v,w)I
\end{align}$$

then shows that a compatible spinor connection covering a tangent connection must have $\nabla g=0$. The left and right Leibniz rules would otherwise disagree by $-2(\nabla g)(v,w)I$. An arbitrary $GL(4)$ connection with nonzero $Q$ therefore has no automatic ordinary Clifford-compatible spin lift. Projecting a connection to a Lorentz part, or using the Levi-Civita spin connection alongside an independent affine connection, is an additional coupling choice, not a universal matter prescription. Metric-compatible torsion also changes Dirac-square formulas; the worked model below is explicitly torsion free.

For instance, on a torsion-free spin Lorentzian background the gauge-coupled free equation can be chosen as

$$\begin{align}
\left[i(\gamma^\mu\otimes I) \left(\partial_\mu+\bar\Omega_\mu\otimes I+I\otimes A_\mu\right)-m\right]\psi=0. \tag{8}
\end{align}$$

Here $\bar\Omega$ is the Levi-Civita spin connection. The expression is the local form of (4), with one ordinary derivative, and respects (5) together with the spin-frame transformation of Clifford multiplication. The flat uncharged limit has $p^2=-m^2$. With $c=\hbar=1$, $m$ and orthonormal connection components have units length$^{-1}$, and curvature components have units length$^{-2}$.

The same representation data decide whether proposed interactions are global scalars. A term $\bar\psi_L\phi\psi_R$ requires a gauge-invariant contraction $\overline W_L\otimes W_\phi\otimes W_R\to\mathbb C$. For $U(1)$ this demands $-q_L+q_\phi+q_R=0$. Existence of this contraction does not select a Yukawa coefficient or require that the term be present in an action.

## 3. An Auxiliary Sphere with a Nontrivial Line Bundle

Now change setting explicitly: $S^2_r$ is a compact **Riemannian two-dimensional auxiliary geometry**, not the Lorentzian spacetime $M$. Give it radius $r>0$, outward orientation, and metric

$$\begin{align}
h=r^2(\mathrm d\theta^2+\sin^2\theta\,\mathrm d\phi^2),\qquad \mathrm dV_h=r^2\sin\theta\,\mathrm d\theta\wedge\mathrm d\phi, \qquad R=2/r^2. \tag{9}
\end{align}$$

On the polar patch $0<\theta<\pi$, use the ordered orthonormal coframe $e^1=r\,\mathrm d\theta$, $e^2=r\sin\theta\,\mathrm d\phi$. The spin convention of [AST-07](<AST-07.md>) is

$$\begin{align}
c_1=i\sigma_1,\qquad c_2=i\sigma_2,\qquad \Omega_\theta=0,\qquad\Omega_\phi=-\frac i2\cos\theta\,\sigma_3. \tag{10}
\end{align}$$

The Pauli matrices obey $\sigma_a\sigma_b=\delta_{ab}I+i\epsilon_{abc}\sigma_c$, so $c_1c_2=-i\sigma_3$. The even-dimensional chirality rule $i^{d/2}c_1\cdots c_d$, which in four Riemannian dimensions gives the AST-07 choice $-c_1c_2c_3c_4$, gives here

$$\begin{align}
\Gamma_h=i c_1c_2=\sigma_3,\qquad S^+=\ker(\Gamma_h-I),\quad S^-=\ker(\Gamma_h+I). \tag{11}
\end{align}$$

Upper components have positive chirality. This orientation and chirality choice will fix the index sign. The sphere is spin because its tangent Euler number is two and hence $w_2=0$; its spin structure is unique since $H^1(S^2;\mathbb Z/2)=0$.

Use the monopole normalization of [the bundle chapter](<AST-08.md>), now to construct a twisted spinor operator. Cover the sphere by $U_N=S^2\setminus\{\text{south pole}\}$ and $U_S=S^2\setminus\{\text{north pole}\}$. For integer $k$, define a unitary line bundle $L_k$ by local component transition $f_N=e^{ik\phi}f_S$ on the overlap and connections

$$\begin{align}
A_N=-\frac{ik}{2}(1-\cos\theta)\,\mathrm d\phi, \qquad A_S=\frac{ik}{2}(1+\cos\theta)\,\mathrm d\phi. \tag{12}
\end{align}$$

They satisfy $A_N=A_S-(\mathrm d e^{ik\phi})e^{-ik\phi}$. The transition is single-valued precisely for integer $k$. The north potential is regular at the north pole: $(1-\cos\theta)\mathrm d\phi$ is a smooth multiple of $x\,\mathrm dy-y\,\mathrm dx$ in local Cartesian coordinates there. The analogous statement holds at the south pole for $A_S$. Neither potential is a single global potential for nonzero flux.

Both patches have curvature

$$\begin{align}
F^{L_k}=-\frac{ik}{2}\sin\theta\,\mathrm d\theta\wedge\mathrm d\phi, \qquad \frac{i}{2\pi}\int_{S^2}F^{L_k}=k. \tag{13}
\end{align}$$

Equivalently, Stokes' theorem uses the north-minus-south equatorial boundary integral of $A_N-A_S=-ik\,\mathrm d\phi$; its multiplication by $i/(2\pi)$ gives $k$. This checks the sign rather than inferring it from the word monopole. Weight $q$ matter couples to $L_k^{\otimes q}$ with degree $qk$.

## 4. Twisting the Dirac Operator Changes Its Kernel

On $S\otimes L_k$, the operator in a polar spin frame and line frame $N$ or $S$ is

$$\begin{align}
D_k=\frac1r\left[ i\sigma_1\left(\partial_\theta+\frac12\cot\theta\right) +i\sigma_2\csc\theta\left(\partial_\phi+A_{N/S,\phi}\right)\right]. \tag{14}
\end{align}$$

The line transitions give $D_{k,N}(e^{ik\phi}\psi_S)=e^{ik\phi}D_{k,S}\psi_S$. Polar spin components themselves are antiperiodic under $\phi\mapsto\phi+2\pi$, as in AST-07; this is not an extra boundary of the sphere. Globally $D_k$ is self-adjoint on $H^1(S^2,S\otimes L_k)$ in the positive $L^2$ inner product, with $D_k^2$ on $H^2$. Smoothness in regular pole frames, not arbitrary endpoint conditions on a cylinder, specifies the geometric domain. Elliptic self-adjointness and regularity on a smooth closed manifold are standard analytical inputs [1,2].

### 4.1 The Gauge-Curvature Term and Its Sign

For a Levi-Civita spin connection and a unitary twisting connection, the twisted Lichnerowicz identity is

$$\begin{align}
D_k^2=\nabla^{k*}\nabla^k+\frac R4I +\frac12\sum_{a,b}c_a c_b F^{L_k}_{ab}. \tag{15}
\end{align}$$

Its origin is the decomposition of two Clifford derivatives into the symmetric Hessian and one-half the curvature commutator. The spin curvature contraction gives $R/4$; (7) adds the line curvature rather than replacing that term. In two dimensions $F_{12}=-ik/(2r^2)$ and $F_{21}=-F_{12}$, so the last term is $c_1c_2F_{12}$, not half of it. Consequently

$$\begin{align}
\boxed{D_k^2=\nabla^{k*}\nabla^k+\frac1{2r^2}I-\frac{k}{2r^2}\Gamma_h.} \tag{16}
\end{align}$$

The product of the two factors $-i$ in $c_1c_2F_{12}$ is negative. Reversing this sign would reverse the zero-mode chirality. Directly squaring (14) on an arbitrary two-component function gives (16) with

$$\begin{align}
\nabla^{k*}\nabla^k=-\frac1{r^2}\left[ \partial_\theta^2+\cot\theta\,\partial_\theta +\csc^2\theta(\partial_\phi+\Omega_\phi+A_{N,\phi}I)^2\right]. \tag{17}
\end{align}$$

This supplies a local operator comparison including every derivative coefficient, not just a constant-curvature estimate.

If $k>0$, the zeroth-order term on negative chirality is $(1+k)/(2r^2)>0$. Taking the global inner product of (16) with a negative-chirality zero mode gives a sum of a nonnegative derivative norm and a strictly positive multiple of its norm. Thus no such mode exists. On positive chirality the potential is $(1-k)/(2r^2)$, so the untwisted positive-curvature vanishing argument no longer rules out zero modes.

### 4.2 A Normalized Mode at Nonzero Flux

At $k=1$, choose polar-frame components

$$
\psi_N^{\mathrm{polar}}=\frac{e^{i\phi/2}}{\sqrt{4\pi r^2}}\begin{pmatrix}1\\0\end{pmatrix},
 \qquad
 \psi_S^{\mathrm{polar}}=\frac{e^{-i\phi/2}}{\sqrt{4\pi r^2}}\begin{pmatrix}1\\0\end{pmatrix}.
 \tag{18}
$$

They obey the line transition $\psi_N=e^{i\phi}\psi_S$ and the polar spin sign. The northern total $\phi$ connection on an upper component is $-i\cos\theta/2-i(1-\cos\theta)/2=-i/2$. It cancels $\partial_\phi e^{i\phi/2}$, while the $\theta$ covariant derivative vanishes. Hence $\nabla^1\psi=0$ and $D_1\psi=0$, not merely an index-predicted candidate. Its norm is $(4\pi r^2)^{-1}\int\mathrm dV_h=1$.

Pole regularity can be made explicit. Convert polar to regular spin components by

$$\begin{align}
H_N=e^{-i\phi\sigma_3/2},\qquad H_S=e^{i\phi\sigma_3/2},\qquad \psi_{N/S}^{\mathrm{reg}}=H_{N/S}\psi_{N/S}^{\mathrm{polar}}. \tag{19}
\end{align}$$

The spin connections become $\Omega_N^{\mathrm{reg}}=i(1-\cos\theta)\sigma_3\,\mathrm d\phi/2$ and $\Omega_S^{\mathrm{reg}}=-i(1+\cos\theta)\sigma_3\,\mathrm d\phi/2$, regular at their respective poles. The combined transition is

$$
\psi_N^{\mathrm{reg}}=e^{ik\phi}e^{-i\phi\sigma_3}\psi_S^{\mathrm{reg}}
 =\begin{pmatrix}e^{i(k-1)\phi}&0\\0&e^{i(k+1)\phi}\end{pmatrix}\psi_S^{\mathrm{reg}}.
 \tag{20}
$$

At $k=1$, (18) is the same constant upper vector in both regular frames and is smooth through both poles. Its positive-chirality connection is exactly zero in these frames. Notice also that $S^+$ itself has degree $-1$: the upper entry of $\Omega_N^{\mathrm{reg}}$ has curvature $+i\sin\theta\,\mathrm d\theta\wedge\mathrm d\phi/2$, so (6) integrates to $-1$. Thus $S^+\otimes L_k$ has degree $k-1$, in agreement with (20).

### 4.3 All Zero Modes, Not All Eigenvalues

For integer $k>0$, solve the upper zero-mode equation from (14). Put an upper polar component equal to $e^{im\phi}F(\theta)$, with half-integer $m$ from the spin sign. The lower component of $D_k\psi=0$ gives

$$\begin{align}
\frac{F'}F=(m-k/2)\csc\theta+\frac{k-1}{2}\cot\theta.
\end{align}$$

Taking $m=j+1/2$ gives smooth global candidates

$$
\psi_{j,N}^{\mathrm{polar}}
 =C_j e^{i(j+1/2)\phi}\sin^j(\theta/2)\cos^{k-1-j}(\theta/2)
 \begin{pmatrix}1\\0\end{pmatrix},\qquad j=0,\ldots,k-1,
 \tag{21}
$$

with southern polar components $e^{-ik\phi}\psi_{j,N}^{\mathrm{polar}}$.

To prove regularity and completeness of the zero-mode ansatz, set $z=\tan(\theta/2)e^{i\phi}$ on $U_N$ and $w=1/z$ on $U_S$. In regular northern frames the positive-to-negative chiral operator is

$$\begin{align}
D_k^+f_N=\frac i r\left[(1+|z|^2)\partial_{\bar z} +\frac{k-1}{2}z\right]f_N. \tag{22}
\end{align}$$

This follows from $\partial_\theta+i\csc\theta\,\partial_\phi=(1+|z|^2)e^{-i\phi}\partial_{\bar z}$ and (19). Its kernel has

$$\begin{align}
f_N=(1+|z|^2)^{-(k-1)/2}p(z),\qquad \partial_{\bar z}p=0.
\end{align}$$

The southern expression is $(1+|w|^2)^{-(k-1)/2}p_S(w)$, where $p_S(w)=w^{k-1}p(1/w)$. Regularity at both poles forces $p$ to be an entire polynomial of degree at most $k-1$. Here we use the elementary complex-analysis theorem that an entire holomorphic function with polynomial growth is a polynomial, together with elliptic regularity for weak zero modes. Thus $p=z^j$ gives every upper zero mode, not just a finite collection. Near either pole the displayed regular components are smooth powers of the corresponding complex coordinate times a smooth positive denominator. The negative-chirality vanishing argument already supplies the other half of the kernel calculation.

The normalization is evaluated rather than inferred from dimension:

$$\begin{align}
C_j=\left[\frac{k!}{4\pi r^2j!(k-1-j)!}\right]^{1/2}, \qquad \|\psi_j\|^2=4\pi r^2C_j^2
 \int_0^1 x^j(1-x)^{k-1-j}\,\mathrm dx=1, \tag{23}
\end{align}$$

where $x=\sin^2(\theta/2)$ and the beta integral equals $j!(k-1-j)!/k!$. Distinct $j$ are orthogonal because their azimuthal phases integrate to zero. For $k=2$, the two modes have $C_0=C_1=(2\pi r^2)^{-1/2}$ and factors $e^{i\phi/2}\cos(\theta/2)$ and $e^{3i\phi/2}\sin(\theta/2)$ in the northern polar frame. Each has unit norm. These internal normalized wavefunctions have units length$^{-1}$; they are not already four-dimensional matter fields.

The antiunitary map $J=i\sigma_2$ followed by complex conjugation changes $L_k$ to $L_{-k}$, intertwines $D_k$ and $D_{-k}$, and reverses $\Gamma_h$. This follows by conjugating each actual differential coefficient of (14); $J^2=-I$. It carries the positive-flux modes to negative-chirality modes of opposite flux, not a real condition on one fixed nonzero-flux bundle or a four-dimensional Majorana involution. For $k=0$, (16) has a strictly positive curvature term in both chiralities, so no zero modes exist. Altogether

$$\begin{align}
\dim\ker D_k^+=\max(k,0),\qquad \dim\ker D_k^-=\max(-k,0),\qquad \operatorname{ind}D_k^+=k. \tag{24}
\end{align}$$

This is a complete zero-mode result for the stated model, not a derivation of its entire nonzero spectrum.

The closed spin Dirac index theorem gives an independent consistency relation,

$$\begin{align}
\operatorname{ind}D_k^+ =\int_{S^2}\widehat A(TS^2)\operatorname{ch}(L_k) =\int_{S^2}c_1(L_k)=k. \tag{25}
\end{align}$$

Only the degree-two part is integrated, and $\widehat A$ has no degree-two term. The theorem is a global analytical input [1,3], not proved by a finite flux table. On this already spin sphere, viewing the twist as a spin$^c$ construction would use determinant line $L_k^{\otimes2}$ of degree $2k$, not degree $k$. Its half-determinant contribution gives the same sign and index.

## 5. Where Four-Dimensional Dynamics Would Begin

The auxiliary sphere and the Lorentzian four-manifold are not the same geometry. To interpret internal zero modes as four-dimensional fields one would have to specify a higher-dimensional spacetime or compactification, its product or warped metric, spin structure and gauge bundle, a full action, a mode expansion and normalization, constraints and reality conditions, and which modes remain in the effective theory. None is implied by the integer in (24). It is not a number of physical generations or a selection of a Standard Model gauge group.

Even in four dimensions the product bundle does not fix gravitational feedback. For a specified matter action with independent variables $(g,\Gamma,A,\chi)$ one may define its currents by

$$\begin{align}
\delta I_m=\int_M\sqrt{-g}\left[ -\frac12T_{\mu\nu}\delta g^{\mu\nu} +\mathcal H_\rho{}^{\mu\nu}\delta\Gamma^\rho{}_{\mu\nu} +J_I{}^\mu\delta a^I_\mu+\mathcal E_\chi\delta\chi\right]\mathrm d^4x +\int_{\partial M}\vartheta_m. \tag{26}
\end{align}$$

This equation defines the displayed normalizations, with $\chi$ including independent conjugate fields where appropriate. The connection derivative depends on which variables and spinor coupling are held fixed; its Lorentz-antisymmetric part is related to a spin current when a tetrad formulation is used. The boundary term and admissible variations cannot be silently discarded. Hilbert stress, canonical Noether stress, and spin or more general connection currents are different constructions until an action and the required improvement identities relate them.

One then varies a chosen gravitational action as well; its connection equation may be algebraic or differential depending on its terms. The bundle construction does not give a universal algebraic solution for torsion or nonmetricity, and an identity involving curvature and $Q$ is not a unique external-curvature source law. Classical actions and their specific metric-affine choices are treated in [EC-02](<EC-02.md>) and [MAG-01](<MAG-01.md>), rather than assumed from (7). Quantum expectation values or fluid averaging would additionally require a state and a justified averaging prescription. No such state or closure is specified here.

The constructive result is narrower and usable: choose the global lift and representation, build compatible connections, check their transition law, and solve the resulting matter operator with its actual global domain. In the sphere model those steps exhibit a normalized nonzero-flux zero mode, determine its chirality, and account for all zero modes without treating topology as an unexplained particle prediction.

## References and Theorem Inputs

[1] H. B. Lawson and M.-L. Michelsohn, *Spin Geometry*, Princeton University Press, 1989. Spin lifts, twisted spin Dirac operators, and index theory. Clifford and chirality signs in this chapter are fixed explicitly by (10)–(11), not imported without conversion.

[2] N. Berline, E. Getzler, and M. Vergne, *Heat Kernels and Dirac Operators*, Springer, 1992. Closed-manifold elliptic self-adjointness, regularity, and twisted Weitzenböck identities.

[3] M. F. Atiyah and I. M. Singer, “The index of elliptic operators: I,” *Annals of Mathematics* **87** (1968), 484–530. The general index theorem used in the closed spin specialization (25).

[4] S. Kobayashi and K. Nomizu, *Foundations of Differential Geometry*, Vol. I, Interscience, 1963. Principal and associated bundles, connection transformations, and curvature. The elementary beta integral and the entire-function polynomial-growth theorem are the additional classical analysis inputs in (23) and the zero-mode completeness argument.
