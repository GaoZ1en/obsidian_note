# Independent relative-CPS analysis

## Result and scope

**The bulk potential relation alone does not imply symplectic equivalence.** Its exact obstruction, with the specified integrated convention, is a field-space two-form supported at the Cauchy corner. Vanishing of that obstruction, a genuine global equivalence of the full proper-gauge orbit spaces, and an appropriate symmetry dictionary imply a reduced symplectomorphism preserving every corresponding globally Hamiltonian charge up to a constant on each connected component. Neither quantum equivalence nor completeness of a restricted charge list follows.

This is an independent derivation from the stated setup, not a review of a candidate theorem. The convention was checked against [formalism:15–25](</Users/koishi/Documents/Note/Articles/Quantization in AdS/perturbation/formalism.md#L15-L25>). No parent reports were read. The present file was newly created by explicit authorization; no existing files were edited.

## 1. Objects, degrees, and assumptions

Let \(\mathcal P_i\) be the spaces of solutions of the two theories satisfying their respective boundary conditions. Initially, all identities are understood on allowed tangent variations to \(\mathcal P_i\), not as off-shell identities on unrestricted configurations.

The spacetime is the same oriented \(n\)-manifold \(M\), with timelike boundary \(\Gamma\). The fixed Cauchy hypersurface \(\Sigma\) has closed corner \(S=\partial\Sigma\), with its induced orientation. We use

\[
d\delta=\delta d,\qquad
\delta L_i=E_i\delta\phi_i+d\theta_i,\qquad
\theta_i|_\Gamma+\delta\ell_i=dC_i,
\]

\[
\Theta_i=\int_\Sigma\theta_i-\int_S C_i,
\qquad \Omega_i=\delta\Theta_i,
\qquad \iota_{X_i}\Omega_i=-\delta H_i.
\]

The form degrees, written as (spacetime degree, field-space degree), are

\[
L_i:(n,0),\quad \theta_i:(n-1,1),\quad
\ell_i:(n-1,0),\quad C_i:(n-2,1).
\]

All integrals must converge, or be defined with a consistently fixed renormalization prescription. Boundary sources and couplings are fixed under the allowed variations. Further corners, moving hypersurfaces, and field-dependent spacetime identifications are not included without additional terms.

Let \(F:\mathcal P_1\to\mathcal P_2\) be smooth, respect the fixed spacetime and boundary identification, and map allowed tangent variations to allowed tangent variations. Pullback by \(F\) commutes with \(d\) and \(\delta\). Assume

\[
\Delta\theta:=F^*\theta_2-\theta_1=\delta B+dY,
\]

where \(B:(n-1,0)\) and \(Y:(n-2,1)\). Define

\[
\Delta\ell=F^*\ell_2-\ell_1,\qquad
\Delta C=F^*C_2-C_1,
\]

\[
A=B|_\Gamma+\Delta\ell,\qquad
K=\Delta C-Y|_\Gamma.
\]

## 2. Necessary boundary and bulk relations

Subtracting the two boundary variational identities gives

\[
\delta B|_\Gamma+dY|_\Gamma+\delta\Delta\ell=d\Delta C.
\]

Therefore the necessary boundary relation is

\[
\boxed{\delta A=dK.} \tag{2.1}
\]

Applying \(\delta\), using the stated commuting convention, gives

\[
\boxed{d\delta K=0.} \tag{2.2}
\]

This is a closed-current statement on \(\Gamma\); it is not the vanishing of the current or of its periods.

On shell, \(\delta L_i=d\theta_i\), so

\[
\delta(F^*L_2-L_1)=d\Delta\theta=\delta dB,
\]

and hence

\[
\boxed{\delta(F^*L_2-L_1-dB)=0.} \tag{2.3}
\]

The expression in (2.3) is constant along connected solution families. It may depend on the spacetime point, fixed backgrounds, or disconnected sectors. Neither this equation nor the original potential identity proves off-shell Lagrangian equivalence, equivalence of all equations of motion, or equivalence of all boundary conditions. Those are separate questions about the correspondence.

## 3. Exact necessary-and-sufficient integrated obstruction

Stokes' theorem and the integrated corner sign give

\[
\begin{aligned}
F^*\Theta_2-\Theta_1
&=\int_\Sigma(\delta B+dY)-\int_S\Delta C\\
&=\delta\int_\Sigma B-\int_S K.
\end{aligned}
\]

Taking \(\delta\),

\[
\boxed{
\mathcal O_\Sigma:=F^*\Omega_2-\Omega_1
=-\int_S\delta K
=\int_S\delta\bigl(Y|_\Gamma-\Delta C\bigr).
} \tag{3.1}
\]

Thus, on the specified solution spaces and allowed variations,

\[
\boxed{
F^*\Omega_2=\Omega_1
\quad\Longleftrightarrow\quad
\delta\int_S K=0.
} \tag{3.2}
\]

This is equality as a field-space two-form: it must hold on every pair of allowed tangent variations. With \(\kappa=Y|_\Gamma-\Delta C\) and tangent vector fields \(u,v\), the obstruction is explicitly

\[
\mathcal O_\Sigma(u,v)
=\int_S\left[u\kappa(v)-v\kappa(u)-\kappa([u,v])\right].
\]

For commuting extensions of the variations, the final term vanishes.

Equation (2.2) makes \(\mathcal O_\Sigma\) independent of homologous cuts of \(\Gamma\), subject to the convergence conditions. It does not make it zero. Only the periods over the actually relevant corners are required to vanish; pointwise vanishing of \(\delta K\) is stronger.

### A useful stronger matching condition

A convenient sufficient condition is the existence of

\[
D:(n-2,0),\qquad Z:(n-3,1),\qquad \delta a=0,
\]

such that

\[
\boxed{
\Delta\ell=-B|_\Gamma+dD+a,
\qquad
\Delta C=Y|_\Gamma+\delta D+dZ.
} \tag{3.3}
\]

For \(n=2\), omit \(Z\). Then (2.1) holds and

\[
F^*\Theta_2-\Theta_1
=\delta\left(\int_\Sigma B-\int_S D\right),
\qquad F^*\Omega_2=\Omega_1.
\]

The \(dZ\) term disappears only because \(\partial S=0\). If there are further corners, their descent terms must be retained.

**Condition (3.3) is sufficient, not generally necessary.** The exact criterion is (3.2). Even when \(\int_S K\) is closed in field space, it need not be globally exact. In a contractible field-space chart it has a local functional primitive, but that need not come from a local jet density \(D\), and need not extend to a global primitive. Classical symplectic equality therefore need not be exact symplectic equality of the integrated potentials.

### Global representatives and relative cohomology

If \(B,Y\) exist only patchwise in spacetime or field space, their overlap/descent contributions must be included when integrating. A merely patchwise identity cannot be integrated as though its representatives were globally defined. The invariant global object is \(F^*\Omega_2-\Omega_1\).

Writing \(\omega_i=\delta\theta_i\), the equations of motion and boundary identities imply

\[
d\omega_i=0,\qquad \omega_i|_\Gamma=d\delta C_i.
\]

Thus \((\omega_i,\delta C_i)\) is a closed relative form. After subtracting the relative differential generated by \(\delta Y\), its difference is represented by the boundary term \((0,\delta K)\). Pairing with \((\Sigma,S)\) gives \(-\int_S\delta K\). This expresses why an absolutely exact bulk difference need not be relatively exact after the boundary data are specified.

## 4. Separate global hypotheses for symplectic reduction

The term *proper gauge* names transformations declared physical redundancies. It does not itself assert that their action is proper in the topological sense. Both the physical gauge identification and the mathematical quotient regularity must be specified.

A precise sufficient setting is as follows.

### 4.1 Smooth regular quotient

Each \(\mathcal P_i\) is a smooth manifold carrying a closed, constant-rank two-form \(\Omega_i\). The full group \(\mathcal G_i^{\mathrm{prop}}\), including disconnected/large transformations declared redundancies, acts smoothly, freely, and properly after removing ineffective stabilizers or restricting to a regular stratum.

In finite dimensions this gives a smooth Hausdorff principal quotient

\[
q_i:\mathcal P_i\longrightarrow
\mathcal R_i:=\mathcal P_i/\mathcal G_i^{\mathrm{prop}}.
\]

In Banach or tame-Fréchet settings, explicitly assume the corresponding smooth principal quotient/local-slice structure and that \(q_i\) is a surjective submersion. One must not assume a general Fréchet rank theorem or automatic slice theorem. Singular/reducible strata require a stratified or stack-level statement rather than this smooth-manifold theorem.

### 4.2 Basicness and exact identification of degeneracies

Every component of \(\mathcal G_i^{\mathrm{prop}}\) preserves \(\Omega_i\), and

\[
\ker\Omega_i=\ker dq_i
=T(\mathcal G_i^{\mathrm{prop}}\text{-orbit}). \tag{4.1}
\]

These assumptions imply

\[
\Omega_i=q_i^*\omega_i
\]

for a unique closed nondegenerate two-form \(\omega_i\) on \(\mathcal R_i\). In infinite dimensions this means weak nondegeneracy unless strong nondegeneracy is separately assumed.

Infinitesimal nullness does not establish invariance under disconnected transformations, nor does the kernel determine the discrete part of the gauge group.

### 4.3 Smooth equivalence of the full orbit spaces

The map \(F\) must respect the full gauge equivalence relation, not just infinitesimal generators or connected gauge orbits. A noncircular sufficient hypothesis is the existence of a smooth orbit-respecting map

\[
G:\mathcal P_2\to\mathcal P_1
\]

such that

\[
GF(x)\sim_1x,\qquad FG(y)\sim_2y.
\]

Then \(F,G\) descend to mutually inverse smooth maps. A simpler sufficient special case is that \(F\) is a diffeomorphism of solution spaces and

\[
x\sim_1x'\quad\Longleftrightarrow\quad F(x)\sim_2F(x').
\]

In finite equal reduced dimension, orbit-bijectivity together with form preservation gives a bijective local symplectomorphism and hence a diffeomorphism. This finite-dimensional shortcut must not be silently applied in general Fréchet spaces.

### 4.4 Vanishing obstruction and proof

Finally, impose \(\mathcal O_\Sigma=0\). Let \(f:\mathcal R_1\to\mathcal R_2\) be the reduced diffeomorphism, so \(q_2F=fq_1\). Then

\[
q_1^*(f^*\omega_2-\omega_1)
=F^*\Omega_2-\Omega_1=0.
\]

Pullback by a surjective submersion is injective, so

\[
\boxed{f^*\omega_2=\omega_1.}
\]

Conversely, once the quotients and descended map exist, reduced symplectic equality implies \(\mathcal O_\Sigma=0\).

Thus the local/relative-CPS obstruction and the global orbit equivalence are distinct requirements. Without global invertibility, form preservation may give only an immersion, embedding, or covering.

## 5. Charge preservation and its precise scope

Let \(X_i\) be projectable symmetry vector fields related modulo proper-gauge directions:

\[
dF(X_1)-X_2\circ F\in\ker\Omega_2.
\]

Assume globally defined Hamiltonians \(H_i\) obey

\[
\iota_{X_i}\Omega_i=-\delta H_i,
\]

and are invariant under the full proper-gauge groups, not only their identity components. If \(\mathcal O_\Sigma=0\), then

\[
\begin{aligned}
\delta(F^*H_2-H_1)
&=-F^*(\iota_{X_2}\Omega_2)+\iota_{X_1}\Omega_1\\
&=0.
\end{aligned}
\]

Therefore

\[
\boxed{F^*H_2=H_1+c}
\]

on each connected component. A common reference configuration fixes \(c\). For a Lie algebra of fixed-label symmetries, additive constants can change a central cocycle by a coboundary; absolute normalizations are not fixed automatically.

The symmetry dictionary is essential. The symplectomorphism

\[
(q,p)\mapsto(2q,p/2)
\]

preserves \(dp\wedge dq\), but does not preserve the charge \(p\) assigned on both sides to the same unrescaled vector \(\partial_q\).

Global Hamiltonian existence is also extra. On \(T^2\) with \(\Omega=dp\wedge dq\) and angular \(p\), the vector \(X=\partial_q\) satisfies

\[
\iota_X\Omega=-dp.
\]

This one-form is closed but not exact, so the local expression \(H=p\) is not a global real-valued Hamiltonian. Similarly, infinitesimal gauge invariance of \(H\) leaves open constant shifts under disconnected gauge transformations.

### Field-dependent symmetry parameters

The proof applies directly to honest field-space vector fields \(X_i\) and honest global Hamiltonians satisfying \(\iota_{X_i}\Omega_i=-\delta H_i\). It does **not** justify replacing a fixed symmetry label by a field-dependent label inside a charge formula without correction.

Suppose \(\xi\mapsto H_\xi\) is linear and the Hamiltonian identity holds with \(\xi\) fixed. For a field-dependent \(\xi(\phi)\),

\[
\delta H_{\xi(\phi)}
=\left.\delta H_\xi\right|_{\xi\ \mathrm{fixed}}+H_{\delta\xi}
=-\iota_{X_{\xi(\phi)}}\Omega+H_{\delta\xi}.
\]

Thus

\[
\iota_{X_{\xi(\phi)}}\Omega
=-\delta H_{\xi(\phi)}+H_{\delta\xi},
\]

and the composite expression \(H_{\xi(\phi)}\) need not be the Hamiltonian of the field-dependent vector field. One must use the appropriate fixed-label/adjusted charge variation and establish its integrability, or construct the actual Hamiltonian explicitly. Symmetry-algebra comparisons also require the corresponding adjusted bracket.

A simple exact example is \(\Omega=dp\wedge dq\). The fixed translation \(X_\varepsilon=\varepsilon\partial_q\) has \(H_\varepsilon=\varepsilon p\). Substituting \(\varepsilon=p\) gives \(X=p\partial_q\), whose actual Hamiltonian is \(p^2/2\), not the naively substituted \(p^2\).

Moreover, fixed-label constants \(c_\xi\) need not remain field-space constants after a field-dependent substitution: \(c_{\xi(\phi)}\) can vary with \(\phi\).

## 6. What charge completeness can and cannot establish

For an already specified symmetry dictionary, define

\[
D=f^*\omega_2-\omega_1.
\]

Equality of corresponding Hamiltonians up to constants gives

\[
\iota_{X_\xi}D=0
\]

for every matched generator. Hence charge preservation implies \(D=0\) if these vector fields span every tangent space. Dense spanning also suffices when a topology is specified and \(D\) is continuous.

On a finite-dimensional symplectic manifold with moment map \(\mu\),

\[
d\mu_x(v)(\xi)=-\omega_x(X_\xi,v).
\]

Nondegeneracy therefore implies

\[
d\mu_x\text{ injective}
\quad\Longleftrightarrow\quad
\operatorname{span}\{X_\xi(x)\}=T_x\mathcal R.
\]

This is a **local differential condition**. Global injectivity of \(\mu\) is instead a **state-separation condition**. Tangent-spanning does not imply global injectivity, and local charge data do not supply a smooth global orbit equivalence.

Neither tangent-spanning nor moment-map injectivity is needed when symplectic equality is already proved directly by (3.1). They are requirements of particular charge-based reconstruction arguments, not additional requirements of the direct relative-CPS criterion.

## 7. Counterexamples

### 7.1 Missing corner matching

Take \(n=2\), \(M=\mathbb R_t\times[0,1]\), any common spectator bulk gauge theory, and a first-order boundary pair \(q,p\) on one component of \(\Gamma\):

\[
\ell_i=k_i p\dot q\,dt,
\qquad C_i=k_i p\delta q,
\qquad k_1=1,\quad k_2=2.
\]

Both nonzero coefficients give the same boundary solution equations

\[
\dot q=\dot p=0.
\]

The off-shell boundary variation is

\[
\delta\ell_i
=k_i(\dot q\,\delta p-\dot p\,\delta q)dt+d(k_i p\delta q).
\]

On allowed boundary solution variations, \(\delta\ell_i=dC_i\), with no source/flux. The bulk theories and \(\theta_i\) agree, so \(F=\mathrm{id}\), \(B=Y=0\) obey the assumed bulk relation. Nevertheless, for the selected positively oriented corner,

\[
\Theta_i^{\mathrm{edge}}=-k_i p\delta q,
\qquad
F^*\Omega_2-\Omega_1=-\delta p\wedge\delta q\ne0.
\]

Reversing orientation flips both signs but does not remove the failure. The other boundary carries no such sector. Identical solution sets and identical bulk currents thus do not eliminate genuine corner symplectic data.

### 7.2 Missing full global gauge data

On \(\mathcal P=\mathbb R^2_{(q,p)}\), \(\Omega=dp\wedge dq\), compare

\[
\mathcal G_1=\{e\},\qquad
\mathcal G_2=2\pi\mathbb Z:\ q\mapsto q+2\pi m.
\]

Both actions are smooth, free, and proper; they have the same zero infinitesimal gauge algebra and the same zero kernel. The identity map preserves all presymplectic data. Yet

\[
\mathcal R_1=\mathbb R^2,
\qquad \mathcal R_2=T^*S^1
\]

have different fundamental groups, and the induced map is only a covering.

This is realized by the holonomy zero mode of local Maxwell theory with gauge group \(\mathbb R\) versus \(U(1)\), for example on \(\mathbb R_t\times[0,1]\times S^1\) with reflecting/Neumann conditions admitting the mode. The local action and infinitesimal gauge transformations agree, but \(U(1)\) identifies \(\oint A\) modulo \(2\pi\), while \(\mathbb R\) does not.

### 7.3 Missing tangent-spanning

On \(\mathbb R^4_{(q_1,p_1,q_2,p_2)}\), let

\[
\omega_1=dp_1\wedge dq_1+dp_2\wedge dq_2,
\qquad
\omega_2=dp_1\wedge dq_1+2dp_2\wedge dq_2.
\]

For \(F=\mathrm{id}\) and the common symmetry algebra generated by \(X=\partial_{q_1}\), both Hamiltonians are \(H=p_1\), with

\[
\iota_X\omega_i=-dp_1.
\]

Every charge of this selected algebra agrees, while

\[
\omega_2-\omega_1=dp_2\wedge dq_2\ne0.
\]

The spectator sector is invisible to the selected moment map. This is not a counterexample involving all Hamiltonian observables; it precisely demonstrates the danger of treating a restricted charge list as complete.

### 7.4 Tangent-spanning without global moment-map injectivity

Compare \(\mathbb R^2_{(q,p)}\) and \(T^*S^1\), both with \(dp\wedge dq\), and charges

\[
H_0=p,\qquad H_1=\cos q,\qquad H_2=\sin q.
\]

Their Hamiltonian vector fields are

\[
\partial_q,\qquad \sin q\,\partial_p,\qquad -\cos q\,\partial_p,
\]

which span everywhere. The moment map

\[
\mu=(p,\cos q,\sin q)
\]

has injective differential everywhere but is periodic on \(\mathbb R^2\):

\[
\mu(q+2\pi,p)=\mu(q,p).
\]

The covering

\[
F(q,p)=(q\bmod 2\pi,p)
\]

preserves \(\Omega\) and all three charges but is not a global equivalence, and these charges cannot distinguish sheets. These are genuine Hamiltonian symmetries of the zero-Hamiltonian first-order system \(L=p\dot q\), so the example has a local Lagrangian realization.

### 7.5 Missing smooth/proper quotient hypotheses

On \(T^3\), let

\[
\Omega=(dx+\alpha dy)\wedge dz,
\qquad \alpha\notin\mathbb Q.
\]

Its kernel is

\[
\operatorname{span}\{\partial_y-\alpha\partial_x\}.
\]

The corresponding null \(\mathbb R\)-action has dense orbits in each \((x,y)\)-torus. The orbit space is not Hausdorff. Quotienting infinitesimal null directions does not automatically produce a symplectic manifold.

### 7.6 Missing quantum quantization data

The identical classical system

\[
T^*S^1,\qquad \Omega=dp\wedge dq,
\qquad H=\frac{p^2}{2I},\qquad q\sim q+2\pi
\]

admits flat prequantum twists labelled by \(e^{i\alpha}\). Corresponding coordinate quantizations have

\[
\psi(q+2\pi)=e^{i\alpha}\psi(q),
\qquad
\operatorname{spec}(p)=\hbar\left(\mathbb Z+\frac{\alpha}{2\pi}\right).
\]

For \(\alpha=0\) and \(\alpha=\pi\), respectively, the ground energies are

\[
0,\qquad \frac{\hbar^2}{8I}.
\]

The classical symplectic form, Hamiltonian, and classical charges agree, but there is no unitary equivalence preserving these named observables. The missing datum is the flat holonomy of the prequantum connection. More generally, a closed nonexact difference of integrated potentials is harmless for classical \(\Omega\), but can change such holonomies.

Even if prequantization is fixed, infinite-dimensional Fock representations add implementability conditions. The modewise transformation

\[
a'_k=\cosh(r)a_k+\sinh(r)a_k^\dagger,
\qquad r\ne0\text{ fixed},
\]

is symplectic but has non-Hilbert-Schmidt \(\beta=\sinh(r)I\). It has no unitary implementer in the original Fock representation. Thus a classical symplectomorphism is not automatically a quantum equivalence.

## 8. Local versus global inputs, and verification

### Genuinely local/on-shell conclusions

- The compatibility equation \(\delta A=dK\).
- The closed-current identity \(d\delta K=0\).
- The restricted bulk identity \(\delta(F^*L_2-L_1-dB)=0\).
- The differential contraction argument for corresponding Hamiltonian vector fields.

### Global inputs or conclusions requiring global data

- Global representatives or coherent descent/gluing for \(B,Y,\ell,C\).
- Existence and convergence of the integrals, boundary periods, and topological sectors.
- The exact integrated obstruction (3.1) and its vanishing on the relevant cycles.
- The actual full proper-gauge group, including disconnected transformations.
- A regular Hausdorff quotient and a smooth global orbit inverse.
- Global Hamiltonian existence, full gauge invariance, and normalization on connected components.
- For quantum equivalence: \(\hbar\), prequantum bundle and connection including flat holonomies, polarization/representation and implementability, operator domains/ordering, possible anomalies, and state data.

The theorem is conditional on these explicit smoothness, domain, and global hypotheses. It does not establish them for a particular field theory. Its obstruction formula is exact within the stated on-shell fixed-boundary setting; the examples are counterexamples to specified omitted assumptions, not a classification of all failures.

### Exact machine checks

A single fresh Sage/SymPy batch verified six finite-dimensional statements:

1. Both contraction signs in §7.3: \(\iota_{\partial_{q_1}}\omega_i=-dp_1\).
2. The nonzero rank-two defect in §7.3 annihilates the selected generator.
3. The minus sign of the corner defect in §7.1.
4. The complete boundary identity \(\delta\ell-dC=E_p\delta p+E_q\delta q\).
5. The everywhere injective differential in §7.4, via \(\det[(d\mu)^T d\mu]=1\).
6. The \(2\pi\)-periodicity of that same moment map.

All six checks passed. They verify the signs and the decisive finite examples. The general result rests on the analytic variation, Stokes, and quotient arguments above, not on those finite checks. No claim of an additional independent reviewer is made inside this independent derivation.
