# Supersymmetric Geometry: Odd Coordinates, Chiral Fields, and Multiplets

DRAFT — bounded review recorded.

Supersymmetric geometry uses anticommuting coordinates and graded differential operators. Its physical application adds a representation of spacetime symmetry, a reality condition, an action, and eventually a positive Hilbert space. These are distinct steps. This chapter constructs the local odd calculus and a Berezin change of variables, realizes flat super-Poincare symmetry with fixed energy signs, and derives an off-shell chiral Wess–Zumino action. Finite unitary oscillator examples then show what multiplet counting and a central-charge bound actually say.

## 1. Functions with Nilpotent Directions

A supercommutative algebra has a parity $|f|\in\{0,1\}$ for homogeneous elements and obeys $fg=(-1)^{|f||g|}gf$. Over characteristic zero an odd generator squares to zero. For two generators,

$$\begin{align}
\xi_1\xi_2=-\xi_2\xi_1,\qquad f=f_0+\xi_1f_1+\xi_2f_2+\xi_1\xi_2f_{12}.
\end{align}$$

The coefficients can be ordinary smooth functions of even coordinates. When they themselves belong to a graded algebra, their parity also participates in every interchange. In particular, fermionic component fields below anticommute with the coordinate generators; treating them as commuting coefficients gives wrong component signs.

A smooth supermanifold is a locally ringed space $(M,\mathcal O_M)$ whose functions are locally of the form $C^\infty(U)\otimes\Lambda(\mathbb R^q)^*$. The underlying body M has ordinary dimension p; the notation $p|q$ records the number of even and odd local coordinates. The nilpotent ideal $\mathcal J$ satisfies $\mathcal O_M/\mathcal J=C^\infty_M$. Odd coordinates are therefore formal directions in a function sheaf, not additional ordinary points at which a real measuring apparatus can be placed.

The word local also has algebraic content. A function is invertible near a body point exactly when its body value is nonzero there. If $f=f_0+n$ with nilpotent n and nonzero $f_0$, its inverse is the finite geometric series $f_0^{-1}\sum_k(-n/f_0)^k$. The functions with vanishing body value form the unique maximal ideal in the stalk.

Local product form is not a canonical global product. For a paracompact smooth real body, the Batchelor splitting theorem gives a noncanonical exterior-bundle description [1,2]. Holomorphic supermanifolds need not globally split. We use a specified globally split flat superspace later, not a theorem that every holomorphic supermanifold has those global coordinates.

### Left Differentiation and Berezin Integration

All odd derivatives are left derivatives:

$$\begin{align}
\partial^L_{\xi_i}(fg)=(\partial^L_{\xi_i}f)g +(-1)^{|f|}f\partial^L_{\xi_i}g.
\end{align}$$

Thus $\partial^L_{\xi_1}(\xi_1\xi_2)=\xi_2$, while $\partial^L_{\xi_2}(\xi_1\xi_2)=-\xi_1$. Multiplication and differentiation satisfy $\{\partial^L_{\xi_i},\xi_j\}=\delta_{ij}$. The graded bracket is $[X,Y]_{\rm gr}=XY-(-1)^{|X||Y|}YX$; two odd operators use an anticommutator, not an ordinary commutator.

The elementary integral is coefficient extraction:

$$\begin{align}
\int d\xi\,1=0,\qquad \int d\xi\,\xi=1,\qquad \int d\xi_2d\xi_1\,\xi_1\xi_2=1.
\end{align}$$

For an invertible even matrix R, the top monomial in $\eta=R\xi$ gains $\det R$, so the odd measure gains its inverse. This is why an ordinary determinant is not the general super-volume factor.

For an even supermatrix $J=\left(\begin{smallmatrix}A&B\\C&D\end{smallmatrix}\right)$, with even diagonal blocks and odd off-diagonal blocks, the Berezinian is

$$\begin{align}
\operatorname{Ber}J=\frac{\det(A-BD^{-1}C)}{\det D}
\end{align}$$

when D is invertible. Block elimination gives the even Schur complement in the numerator; the odd linear change contributes the reciprocal determinant. Matrix entries retain their written order. For a coordinate Jacobian one must additionally specify where the odd increments and their coefficients are placed.

Consider the actual $1|2$ change

$$\begin{align}
y=x+b(x)\xi_1\xi_2,\qquad \eta_i=a(x)\xi_i,\qquad a(x)\ne0.
\end{align}$$

Using an even variation and putting coefficients to the left of coordinate increments gives

$$
J=\begin{pmatrix}
1+b'\xi_1\xi_2&-b\xi_2&b\xi_1\\
a'\xi_1&a&0\\a'\xi_2&0&a
\end{pmatrix},\qquad
\operatorname{Ber}J=\frac1{a^2}
\left[1+\left(b'-\frac{2ba'}a\right)\xi_1\xi_2\right].
$$

For example $\delta(\xi_1\xi_2)=-\xi_2\delta\xi_1+\xi_1\delta\xi_2$ in this coefficient order. This fixes the otherwise easily missed top-right signs. The exact inverse is $x=y-b(y)\eta_1\eta_2/a(y)^2$, $\xi_i=\eta_i/a(y)$; higher corrections vanish by degree.

For $F(y,\eta)=u(y)+\eta_1\eta_2v(y)$, direct substitution and coefficient extraction give

$$\begin{align}
\int d\xi_2d\xi_1\,\operatorname{Ber}J\,F(y,\eta) =v(x)+\frac d{dx}\left(\frac{b(x)u(x)}{a(x)^2}\right).
\end{align}$$

The full even-and-odd integrals agree when that boundary term vanishes, for example with compact support. They need not agree pointwise as functions of x. The nilpotent inverse, Berezinian and boundary identity have each been checked in the exact exterior algebra.

## 2. The Physical Spinor and Energy Dictionary

Use $\eta=\operatorname{diag}(-,+,+,+)$ and the fixed Pauli identification $X(v)=v^0I+v^i\sigma_i$. The underlying spinor convention is [AST-07](<AST-07.md#L174-L212>) and [AST-13](<AST-13.md#L219-L274>):

$$\begin{align}
\rho(A)=\operatorname{diag}((A^\dagger)^{-1},A),\qquad \gamma_5=\operatorname{diag}(-I,+I),\qquad A\in SL(2,\mathbb C).
\end{align}$$

The unprimed upper space, transforming by A, is the positive-gamma-five block. We do not silently rename it the negative-chirality left block. Take $\epsilon_{01}=1$ and the ordinary inverse $\epsilon^{01}=-1$ for raising. The two concrete Pauli systems used below are

$$\begin{align}
s^\mu=(I,\sigma_i),\qquad t^\mu=(I,-\sigma_i),\qquad s^\mu t^\nu+s^\nu t^\mu=-2\eta^{\mu\nu}I.
\end{align}$$

The spatial sign reversal in t is not entrywise complex conjugation of the Pauli matrices.

On a positive-frequency wave $e^{-iEt+i\mathbf p\cdot\mathbf x}$ define

$$\begin{align}
H=i\partial_t,\qquad P_i=-i\partial_i,\qquad P_0=-H=-i\partial_t,\qquad P_\mu=-i\partial_\mu.
\end{align}$$

For one supersymmetry, the odd charges are an unprimed upper pair and its conjugate. Our normalization is

$$\begin{align}
\{Q^A,\overline Q^{A'}\} =2(HI+P_i\sigma_i)^{AA'} =-2(t^\mu)^{AA'}P_\mu,\qquad \{Q^A,Q^B\}=\{\overline Q^{A'},\overline Q^{B'}\}=0.
\end{align}$$

Translations commute with the charges. The even Poincare group acts on momentum through $X(p)\mapsto AX(p)A^\dagger$, on Q by A, and on its conjugate by $\overline A$. These rules, with the usual even Poincare brackets, specify the super-Poincare algebra used here. N counts copies of this minimal four-real-charge structure; one copy already includes its conjugate charges.

In a positive Hilbert representation $\overline Q$ is the Hilbert adjoint, with the unbounded-charge statements taken on a common invariant dense domain. In a fixed-momentum representation fibre the matrix $X(p)=EI+\mathbf p\cdot\boldsymbol\sigma$ must then be positive semidefinite, since every charge combination has a nonnegative anticommutator norm. Its eigenvalues are $E\pm|\mathbf p|$, so

$$\begin{align}
E\ge|\mathbf p|\ge0.
\end{align}$$

This does not determine a particle mass. It also does not restrict the formal off-shell momenta used to represent differential operators on superfunctions.

## 3. Flat Superspace and Its Actual Operators

Use two complex odd coordinates $\theta_A$ and $\overline\theta_{A'}$ with $\theta_A^\dagger=\overline\theta_{A'}$. Conjugation is antilinear and reverses order: $(fg)^\dagger=g^\dagger f^\dagger$. Its real form has four real odd directions over real Minkowski space, hence dimension $4|4$; in the complexified calculation the four complex odd generators are independent. The Lorentz action on coordinates is $\theta\mapsto A^{-T}\theta$, $\overline\theta\mapsto\overline A^{-T}\overline\theta$, with the usual action on X.

Write $T^{AA'}=(t^\mu)^{AA'}\partial_\mu$. Acting on superfunctions, choose

$$\begin{aligned}
Q^A&=i\partial^L_{\theta_A}-\overline\theta_{A'}T^{AA'},& \overline Q^{A'}&=-i\partial^L_{\overline\theta_{A'}}+\theta_AT^{AA'},\\
D^A&=i\partial^L_{\theta_A}+\overline\theta_{A'}T^{AA'},& \overline D^{A'}&=-i\partial^L_{\overline\theta_{A'}}-\theta_AT^{AA'}.
\end{aligned}$$

The factors i in the odd derivative terms are part of the convention, not optional decorations. The two cross terms give

$$\begin{align}
\{Q^A,\overline Q^{A'}\}=2iT^{AA'},\qquad \{D^A,\overline D^{A'}\}=-2iT^{AA'},\qquad \{Q,D\}=\{Q,\overline D\}=\{\overline Q,D\}=\{\overline Q,\overline D\}=0,
\end{align}$$

and the same-type charge and derivative brackets vanish. Substituting the energy definitions reproduces exactly the positive matrix in Section 2.

For odd constant parameters, the even real variation is

$$\begin{align}
\delta=-i(\varepsilon_AQ^A-\overline\varepsilon_{A'}\overline Q^{A'}),\qquad \delta\theta=\varepsilon,\quad\delta\overline\theta=\overline\varepsilon,\quad \delta x^\mu=i(\varepsilon t^\mu\overline\theta-\theta t^\mu\overline\varepsilon).
\end{align}$$

Order reversal under conjugation makes the last expression real. Its commutator is the translation

$$\begin{align}
[\delta_1,\delta_2] =-2i(\varepsilon_1t^\mu\overline\varepsilon_2- \varepsilon_2t^\mu\overline\varepsilon_1)\partial_\mu.
\end{align}$$

No field equation was used.

At fixed formal momentum the exterior algebra in the four coordinates has dimension sixteen. Left multiplication and left differentiation give explicit sixteen-by-sixteen matrices for these operators. They satisfy all the displayed brackets for arbitrary off-shell E,p. This is a module of formal superfunctions, not automatically a particle Hilbert space. For example E=0, pz=1 gives $X(p)=\operatorname{diag}(1,-1)$, so a positive-matrix adjoint identification would be impossible. The actual formal matrices still close, and their barred matrix is not the ordinary adjoint in that example. There is no contradiction: physical unitarity is an additional representation condition.

The nonzero graded derivative bracket is often called a superspace torsion component. It is a structure coefficient of a graded frame. On the ordinary body of this same example, the Minkowski Levi-Civita connection has zero spacetime torsion. Thus superspace odd-index torsion is not automatically ordinary Einstein–Cartan torsion.

## 4. A Chiral Superfield off Shell

Define normalized spinor monomials and measures by

$$\begin{align}
\theta^2=2\theta_0\theta_1,\qquad \overline\theta^2=(\theta^2)^\dagger=-2\overline\theta_{0'}\overline\theta_{1'}, \qquad \int d^2\theta\,\theta^2= \int d^2\overline\theta\,\overline\theta^2=1.
\end{align}$$

In terms of the elementary coefficient extraction in Section 1, these measures contain factors one half and minus one half respectively. Therefore $\int d^4\theta$ extracts minus one quarter of the ordered coefficient of $\theta_0\theta_1\overline\theta_{0'}\overline\theta_{1'}$. Fixing these factors before expanding is essential.

The chiral coordinates and field are

$$\begin{align}
y^\mu=x^\mu-i\theta_A(t^\mu)^{AA'}\overline\theta_{A'},\qquad \overline D^{A'}y^\mu=0,\qquad \Phi(y,\theta)=A(y)+\sqrt2\theta_A\psi^A(y)+\theta^2F(y).
\end{align}$$

Here A and F are even complex fields, while the two components of psi are odd coefficients in an independent Grassmann algebra. Chiral means $\overline D\Phi=0$ in this convention; its fermion is in the positive-gamma-five fundamental block, not an implicitly relabelled left block.

The chiral shift is finite in odd degree. On a Fourier component it multiplies the theta polynomial by

$$\begin{align}
\exp[-\theta X(p)\overline\theta] =1-\theta X(p)\overline\theta+\tfrac12(\theta X(p)\overline\theta)^2.
\end{align}$$

The cube vanishes. Direct application of the barred derivative kills this factor times each of $1,\theta_0,\theta_1,\theta_0\theta_1$. This constructs four independent chiral coefficient slots without a mass-shell assumption.

With $\varepsilon^A=\epsilon^{AB}\varepsilon_B$, the induced component variations are

$$\begin{aligned}
\delta A&=\sqrt2\varepsilon_A\psi^A,\\
\delta\psi^A&=-\sqrt2\varepsilon^AF -i\sqrt2(t^\mu)^{AA'}\overline\varepsilon_{A'}\partial_\mu A,\\
\delta F&=i\sqrt2\epsilon_{AB}(t^\mu)^{AA'} \overline\varepsilon_{A'}\partial_\mu\psi^B.
\end{aligned}$$

For example the F terms in the two spinor components are $+\sqrt2\varepsilon_1F$ and $-\sqrt2\varepsilon_0F$: they follow directly by left differentiation of $2\theta_0\theta_1$. These signs are not copied from a convention using different raised parameters. The superfield algebra makes the variations close on A, psi and F without equations of motion. Keeping F independent is what off shell means here.

In natural units the odd coordinate and parameter have length dimension one half. Hence Q and D have inverse-square-root-length dimension. For a canonical scalar superfield, A has inverse-length, psi inverse-length-to-the-three-halves and F inverse-length-squared units. The measures $d^2\theta$ and $d^4\theta$ have inverse-length and inverse-length-squared units.

## 5. Deriving the Wess–Zumino Action

Choose the actual model

$$\begin{align}
W(\Phi)=\frac m2\Phi^2+\frac g3\Phi^3,\qquad S=\int d^4x\left[ \int d^4\theta\,\Phi^\dagger\Phi +\int d^2\theta\,W(\Phi) +\int d^2\overline\theta\,\overline W(\Phi^\dagger)\right].
\end{align}$$

The mass m and dimensionless coupling g are inputs. W has inverse-length-cubed units. Use sufficient field falloff and compactly supported variations so all displayed spacetime divergence terms have vanishing integrals; with boundaries their fluxes must instead be retained.

Put $B^\mu=\theta t^\mu\overline\theta$. Direct exterior multiplication gives

$$\begin{align}
B^\mu B^\nu=-\tfrac12\eta^{\mu\nu}\theta^2\overline\theta^2.
\end{align}$$

Taylor expansion in $y=x-iB$ and its conjugate therefore stops at second order for A and first order for the fermion term. Extracting the normalized top coefficient gives

$$\begin{aligned}
\mathcal L_D={}&F^*F+\tfrac14(A^*\Box A+A\Box A^*) -\tfrac12\partial_\mu A^*\partial^\mu A\\
&+\tfrac i2\left[\psi^\dagger s^\mu\partial_\mu\psi -(\partial_\mu\psi^\dagger)s^\mu\psi\right].
\end{aligned}$$

This full four-dimensional coefficient, including the fermionic order, is obtained by exact Grassmann multiplication. Its difference from the canonical expression is $\partial_\mu J^\mu$, with

$$\begin{align}
J^\mu=\tfrac14(A^*\partial^\mu A+A\partial^\mu A^*) -\tfrac i2\psi^\dagger s^\mu\psi.
\end{align}$$

Integrating that divergence away under the stated boundary conditions gives

$$\begin{align}
\mathcal L_D\simeq-\partial_\mu A^*\partial^\mu A +i\psi^\dagger(\partial_t+\sigma_i\partial_i)\psi+F^*F.
\end{align}$$

The symbol here means equality up to a spacetime divergence under the stated boundary conditions. The scalar time kinetic term is positive. The fermion equation is in the same right-block matrix system as AST-13.

Define the ordered bilinears

$$\begin{align}
\psi\psi=2\psi^0\psi^1,\qquad \overline\psi\,\overline\psi=(\psi\psi)^\dagger =-2\overline\psi^{0'}\overline\psi^{1'}.
\end{align}$$

For example $(\sqrt2\theta_A\psi^A)^2=-\theta^2\psi\psi$. Consequently the actual chiral integrals give

$$\begin{align}
\mathcal L_W=F W'(A)-\tfrac12W''(A)\psi\psi+\text{conjugate}, \qquad W'(A)=mA+gA^2,\quad W''(A)=m+2gA.
\end{align}$$

Thus the off-shell component Lagrangian is the preceding kinetic expression plus this auxiliary/Yukawa part. The minus one half and the conjugate signs follow from the ordered measures, not an ordinary commuting binomial expansion.

### Auxiliary Elimination, Signs, and Invariance

Vary F and its conjugate independently before imposing conjugation. Their algebraic equations and square completion are

$$\begin{align}
F=-\overline{W'(A)},\qquad F^*F+FW'+F^*\overline{W'} =|F+\overline{W'}|^2-|W'|^2.
\end{align}$$

There is no kinetic term for F. Eliminating it gives the component action

$$\begin{align}
\mathcal L=-\partial_\mu A^*\partial^\mu A +i\psi^\dagger s^\mu\partial_\mu\psi
-|mA+gA^2|^2 -\tfrac12(m+2gA)\psi\psi+\text{conjugate Yukawa term}.
\end{align}$$

The potential is nonnegative in this global model, and the bosonic Hamiltonian is $|\dot A|^2+|\boldsymbol\nabla A|^2+|W'|^2$. For g=0 the scalar equation is $(\Box-|m|^2)A=0$. Defining the conjugate lower-primed column $\chi=-\epsilon\overline\psi$, the free fermion equations take the fixed form

$$\begin{align}
i(\partial_t+\boldsymbol\sigma\cdot\boldsymbol\nabla)\psi =\overline m\chi,\qquad i(\partial_t-\boldsymbol\sigma\cdot\boldsymbol\nabla)\chi=m\psi.
\end{align}$$

Their Fourier determinant is $(E^2-|\mathbf p|^2-|m|^2)^2$, so the mass shell has the required sign. The phase in the definition of chi is stated rather than assumed. Eliminating F preserves the action but the component algebra then closes only with the appropriate equations of motion.

Supercharges anticommute with the chirality derivatives, so they preserve the space of allowed fields. The full superspace variation is an odd-coordinate derivative plus a spacetime divergence, and the chiral variation has the same integrated property. This proves invariance of the displayed action with its stated boundary conditions. It is not pointwise invariance of a Berezin integral at fixed x. For example, for $K=\theta_0\theta_1\overline\theta_{1'}f(x)$, direct coefficient extraction gives

$$\begin{align}
\int d^4\theta\,Q^0K=\tfrac14(\partial_t-\partial_z)f,
\end{align}$$

which need not vanish locally. An additional odd coefficient can be included when an even test integrand is wanted. Only the full spacetime integral removes the derivative under the boundary hypothesis.

Off shell the complex A and F give four real even components and the two-component psi four real odd components. These are function-field components, not a count of physical single-particle states. The following Hilbert-space count is a different construction.

## 6. Positive Hilbert Multiplets and a Central Charge

For a massive N=1 momentum choose the rest frame, with M>0. Then

$$\begin{align}
\{Q_a,Q_b^\dagger\}=2M\delta_{ab},\qquad a_a=Q_a/\sqrt{2M},\qquad \{a_a,a_b^\dagger\}=\delta_{ab}.
\end{align}$$

Here a,b enumerate two rest-frame spin components, not a change of Lorentzian chirality. For a spin-zero Clifford vacuum the four states are

$$\begin{align}
|0\rangle,\quad a_0^\dagger|0\rangle,\quad a_1^\dagger|0\rangle,\quad a_0^\dagger a_1^\dagger|0\rangle.
\end{align}$$

The empty and doubly occupied states are even spin singlets; the singly occupied pair is an odd spin doublet. This gives two scalar states and two spin-one-half states. Explicit matrices are $a_0=c\otimes I$, $a_1=\sigma_3\otimes c$ with $c=\left(\begin{smallmatrix}0&1\\0&0\end{smallmatrix}\right)$ and parity $\sigma_3\otimes\sigma_3$. Their ordinary positive-matrix adjoints do satisfy the physical algebra.

For a massless future momentum along positive z, the charge matrix is $2X(p)=\operatorname{diag}(4E,0)$. A zero anticommutator norm makes the second charge vanish in a unitary representation; the first is one oscillator after division by $\sqrt{4E}$. There are two states with helicities differing by one half. The CPT-complete chiral field content supplies two scalar states and helicities $+1/2,-1/2$. The finite Clifford construction is at fixed momentum; it is not the full many-particle field Fock space.

### A Massive N=2 Bound with Its Shortening Count

Now add a second minimal charge pair and assume a complex scalar central charge Z. In a massive rest-frame sector use the matrix $\left(\begin{smallmatrix}0&1\\-1&0\end{smallmatrix}\right)$ on spin labels $a,b=0,1$ and the same numerical matrix on internal labels $I,J=1,2$: respectively $e_{01}=1$ and $e_{12}=1$. The algebra is

$$\begin{align}
\{Q^I_a,(Q^J_b)^\dagger\}=2M\delta^{IJ}\delta_{ab},\qquad \{Q^I_a,Q^J_b\}=2e_{ab}e_{IJ}Z,\qquad I,J=1,2.
\end{align}$$

The two antisymmetries make the second right-hand side symmetric under exchange of the whole charge labels. This e is a declared rest-frame numerical matrix, not a hidden change of the spinor raising convention.

Write $Z=re^{i\varphi}$ with $r=|Z|$; for Z=0 choose any phase. Set

$$\begin{align}
C_a=e^{i\varphi}e_{ab}(Q^2_b)^\dagger,\qquad R_{\pm a}=\frac{Q^1_a\pm C_a}{\sqrt2}.
\end{align}$$

Direct anticommutation gives

$$\begin{align}
\{R_{\pm a},R_{\pm b}^\dagger\}=2(M\pm r)\delta_{ab},\qquad \{R_{+a},R_{-b}^\dagger\}=0.
\end{align}$$

The R-to-R anticommutators also vanish. Positivity therefore requires M at least r. For $M>r$, four complex oscillators give sixteen states per spin-zero Clifford vacuum: eight even and eight odd. At $M=r>0$, both minus charges have zero norm and vanish; two oscillators remain, giving four states, two of each parity. The proof uses a massive rest frame; the case M=0 must not be obtained by dividing these operators by zero.

There are actual finite matrix realizations of both cases. In energy units one, take four ordinary fermion oscillators $a_0,\ldots,a_3$, put $Q^1_a=2a_a+a_{a+2}$ and $C_a=2a_a-a_{a+2}$, and recover $Q^2$ from the definition of C with zero phase. Their exact algebra has $M=5/2$, $Z=3/2$ and sixteen states. With two oscillators, $Q^1_a=a_a$, $Q^2_a=-e_{ab}a_b^\dagger$ gives $M=Z=1/2$ and the four-state short representation. All adjoints here are ordinary Hilbert adjoints, unlike a generic formal odd-coordinate module.

If a short charged irrep is not self-conjugate, CPT completion requires an additional conjugate multiplet. Extra spin, flavour and charge degeneracies are not included in these per-vacuum counts. In particular, neither unbroken N=2 hypermatter nor its shortening arithmetic derives chiral Standard Model representations, a gauge group, generations or a breaking pattern.

## 7. What Has and Has Not Been Constructed

The geometric input was a specified split flat real superspace with its complexified odd calculus. The action input was one canonical chiral multiplet and a chosen polynomial superpotential. The off-shell algebra, component signs, auxiliary elimination and sample unitary representation counts were derived for those choices.

A general curved background does not acquire rigid supersymmetry merely by adjoining odd coordinates. Background spinors, connections and integrability conditions must be supplied. Local supergravity adds further gauge fields and torsion constraints; neither a complete off-shell supergravity theory nor its dynamics has been constructed here. The smooth noncanonical splitting theorem also gives no general holomorphic splitting result.

Grassmann-valued classical coefficients are not already quantum operators. Formal nilpotent combinations are not ordinary measured momenta. Finite boson/fermion pairing does not compute renormalized vacuum stress, a cosmological constant, a symmetry-breaking sector or quantum gravity. Those require additional physical models, boundary data and quantization choices.

## References

[1] V. S. Varadarajan, Supersymmetry for Mathematicians: An Introduction, American Mathematical Society, 2004. Locally ringed supermanifolds, graded calculus and Berezinian integration; conventions for odd derivatives and real structures must be compared explicitly.

[2] M. Batchelor, The structure of supermanifolds, Transactions of the American Mathematical Society 253 (1979), 329–338. The noncanonical smooth splitting theorem under the paracompact smooth hypotheses, not a holomorphic splitting theorem.

[3] J. Wess and J. Bagger, Supersymmetry and Supergravity, second edition, Princeton University Press, 1992. Chiral multiplets, superspace actions and representations. The Pauli, chirality, derivative, measure and phase conventions used in this chapter are fixed and checked independently rather than imported by name.

[4] P. West, Introduction to Supersymmetry and Supergravity, second edition, World Scientific, 1990. Super-Poincare representations, central charges and their positivity bounds; the finite oscillator constructions above specify the tested cases.
