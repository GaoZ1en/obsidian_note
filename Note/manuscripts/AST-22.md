# Coupled Matter and Loop Geometry: A Regulated Quantum Model

**AST-22 — DRAFT; bounded review recorded.**

A tensor product of a geometry space and a matter space does not specify their dynamics. We construct both spaces, their operator domains, and a positive coupled Hamiltonian for one loop and two neutral canonical matter modes. Its normal modes and normalized energy eigenstates are explicit. An initially unentangled state develops calculable geometry–matter entanglement under unitary evolution. A bounded Wilson-trace perturbation can also change the geometry label. All these statements concern a declared regulated model with external time, not the Hamiltonian constraint of general relativity.

The physical spacetime convention remains four-dimensional and Lorentzian with signature $(-,+,+,+)$. The compact group below describes internal spatial frame rotations on a chosen slice; it is neither an extra spacetime dimension nor an electroweak gauge group. We use $c=1$ but restore $\hbar$ explicitly, with

$$\begin{align}
\kappa=8\pi G>0,\qquad \gamma\in\mathbb R\setminus\{0\},\qquad \ell_P^2=G\hbar,\qquad a_0=\kappa|\gamma|\hbar=8\pi|\gamma|\ell_P^2.
\end{align}$$

Thus $a_0$ has area units, consistently with [the finite loop-geometry chapter](<AST-20.md>). The group/class coordinates and the configuration coordinates introduced below are auxiliary variables, not additional physical spacetime coordinates.

## 1. A Gauge-Invariant Loop Hilbert Space

Take one oriented closed edge with one vertex. Its holonomy is $g\in SU(2)$, and an internal gauge change at the vertex acts by $g\mapsto hgh^{-1}$. The Gauss-invariant space is therefore the space of square-integrable class functions,

$$\begin{align}
\mathcal H_g=L^2(SU(2),d\mu_H)^{\mathrm{Ad}}, \qquad\int_{SU(2)}d\mu_H=1.
\end{align}$$

Here a class function is unchanged by conjugation. A group element is conjugate to $\operatorname{diag}(e^{i\theta},e^{-i\theta})$, with $0\le\theta\le\pi$. For a class function the Haar integral becomes

$$\begin{align}
\langle f_1,f_2\rangle_g =\frac2\pi\int_0^\pi\sin^2\theta\, \overline{f_1(\theta)}f_2(\theta)\,d\theta.
\end{align}$$

The irreducible characters are

$$\begin{align}
\chi_j(\theta)=\frac{\sin((2j+1)\theta)}{\sin\theta}, \qquad j=0,\tfrac12,1,\ldots, \qquad |j\rangle:=\chi_j.
\end{align}$$

Their endpoint values are the continuous limits. Multiplication by the Haar weight cancels the denominator in their inner product, leaving the ordinary sine orthogonality integral. Hence $\langle j|k\rangle=\delta_{jk}$. Completeness follows from completeness of the sine functions after the unitary map

$$\begin{align}
(\mathcal Uf)(\theta)=\sqrt{\frac2\pi}\sin\theta\,f(\theta), \qquad \mathcal U:\mathcal H_g\longrightarrow L^2((0,\pi),d\theta).
\end{align}$$

Indeed $\mathcal U\chi_j=\sqrt{2/\pi}\sin((2j+1)\theta)$ includes every positive integer sine frequency. Thus a state is an actual convergent expansion $f=\sum_j c_j\chi_j$ with $\sum_j|c_j|^2<\infty$.

This reduction changes multiplicities. On the full space $L^2(SU(2))$, Peter–Weyl gives one block $V_j\otimes V_j^*$ of dimension $(2j+1)^2$. Conjugation invariance selects the identity intertwiner in each irreducible block, by Schur's lemma, leaving **one character per j**. The representation dimension, the full matrix-element multiplicity, and the class-space multiplicity are different numbers.

## 2. Casimir, Puncture Area and Wilson Trace

Define the nonnegative dimensionless Casimir spectrally by

$$\begin{align}
\widehat C|j\rangle=c_j|j\rangle, \qquad c_j=j(j+1), \qquad D(C)=\left\{\sum_jd_j|j\rangle:
 \sum_j c_j^2|d_j|^2<\infty\right\}.
\end{align}$$

The coefficients $d_j$ are state amplitudes, whereas $c_j$ are the displayed eigenvalues. This real diagonal operator is self-adjoint, with the finite character span as a core. Its radial differential expression is

$$\begin{align}
\widehat C f=-\frac1{4\sin^2\theta} \frac{d}{d\theta}\left(\sin^2\theta\frac{df}{d\theta}\right), \qquad \mathcal U\widehat C\mathcal U^{-1} =\frac14\left(-\frac{d^2}{d\theta^2}-1\right).
\end{align}$$

The self-adjoint realization on the right has domain $H^2(0,\pi)\cap H_0^1(0,\pi)$: two square-integrable weak derivatives and zero endpoint trace. This is a boundary condition on $\mathcal Uf$, not the assertion $f(0)=f(\pi)=0$. For example the constant character maps to a sine and belongs to this realization. Stating only a singular-looking differential expression would not have specified the operator domain.

Choose an auxiliary surface patch meeting the edge once, transversely, in its interior and away from the vertex. The Casimir puncture-area prescription is

$$\begin{align}
\widehat{\mathcal A}=a_0\sqrt{\widehat C}, \qquad \mathcal A_j=a_0\sqrt{j(j+1)}, \qquad D(\mathcal A)=\left\{\sum_jd_j|j\rangle:
 \sum_jj(j+1)|d_j|^2<\infty\right\}.
\end{align}$$

It is a kinematical area associated with that probe surface, not an area enclosed by the one-dimensional loop. Its class-space multiplicity is one. Tangencies, vertices and multiple crossings require other prescriptions; spatial diffeomorphism invariance and relational identification of the surface have not been imposed.

A one-loop vertex has only two incident edge germs. The usual three-dimensional loop-volume construction needs triples of independent incident tangent directions; those triples vanish here. Consequently its standard node volume is zero and has no ordinary inverse; a separate regularized prescription would be additional input, not a volume reconstructed here. Area data alone do not provide a spatial metric, a cell size or coefficients of a continuum matter Hamiltonian. None will be inferred below.

Define the Wilson trace without dividing by two:

$$\begin{align}
(\widehat Wf)(g)=\operatorname{tr}_{1/2}(g)f(g), \qquad W(\theta)=2\cos\theta, \qquad \widehat W|j\rangle=|j+\tfrac12\rangle+|j-\tfrac12\rangle,
\end{align}$$

where $|-\tfrac12\rangle=0$. The last identity follows either from $\chi_{1/2}\chi_j=\chi_{j+1/2}+\chi_{j-1/2}$ or the sine addition rule. W is bounded self-adjoint on all of $\mathcal H_g$, with norm 2. Its multiplication spectrum is $[-2,2]$; no level set has positive Haar class measure, so it has no normalizable eigenvector. Discrete Casimir/area spectra do not make every geometry operator discrete.

On the finite character core,

$$\begin{align}
[C,W]|j\rangle =(j+\tfrac34)|j+\tfrac12\rangle -(j+\tfrac14)|j-\tfrac12\rangle.
\end{align}$$

The coefficients are simply differences of the adjacent Casimir eigenvalues. In particular a Wilson operation need not preserve area.

## 3. What a Finite Spin Cutoff Changes

Write $n=2j$, denote $|n\rangle:=|j=n/2\rangle$ in this section, and let $P_N$ project onto $0\le n\le N$. On the full half-line define $S|n\rangle=|n+1\rangle$, so $W=S+S^\dagger$. Its lower endpoint gives $S^\dagger S=I$ but $SS^\dagger=I-|0\rangle\langle0|$.

At a finite cutoff use $S_N=P_NSP_N$ and $W_N=S_N+S_N^\dagger$. There is now also a top endpoint:

$$\begin{aligned}
 S_N^\dagger S_N&=I_N-|N\rangle\langle N|,\\
 S_NS_N^\dagger&=I_N-|0\rangle\langle0|,\\
 [S_N,S_N^\dagger]&=|N\rangle\langle N|-|0\rangle\langle0|.
\end{aligned}$$

Here $I_N$ is the identity on the cutoff space. The formulas include $N=0$, where both shifts vanish. Compression is not multiplication:

$$\begin{align}
P_NW^2P_N-W_N^2=|N\rangle\langle N|.
\end{align}$$

A path in spin-label space can leave the cutoff through N, reach N+1 and return in two Wilson steps. Squaring the compressed operator omits exactly that contribution. Thus the infinite character ladder is not exactly realized by pretending that the highest character has no successor while retaining all multiplication identities.

The finite tridiagonal matrix is nevertheless solved explicitly:

$$\begin{aligned}
 w_r&=2\cos\frac{r\pi}{N+2},\qquad 1\le r\le N+1,\\
 v_n^{(r)}&=\sqrt{\frac2{N+2}}
      \sin\frac{(n+1)r\pi}{N+2},\qquad 0\le n\le N.
\end{aligned}$$

Insertion into $v_{n-1}+v_{n+1}=w_rv_n$, with both exterior components zero, proves the eigen-equation; the finite sine sum gives unit norm. Its characteristic polynomial is $U_{N+1}(w/2)$, with $U_k$ the Chebyshev polynomial of the second kind. A finite Wilson spectrum is a property of this compression, not a new proof of a physical maximum spin or a discrete spectrum for the uncompressed W.

## 4. Two Neutral Canonical Matter Modes

Let the matter space be $\mathcal H_m=L^2(\mathbb R^2,dq_1dq_2)$. The two real amplitudes are internal-gauge singlets and are not assigned to two spatial cells with an inferred separation. At the loop vertex the internal Gauss action is trivial on them, so the reduced model has

$$\begin{align}
\mathcal H=\mathcal H_g\otimes\mathcal H_m, \qquad \hat q_r=q_r,\quad\hat p_r=-i\hbar\partial_{q_r}, \qquad [\hat q_r,\hat p_s]=i\hbar\delta_{rs}.
\end{align}$$

Take the maximal multiplication and weak-derivative domains

$$\begin{align}
D(q_r)=\{\psi:q_r\psi\in L^2(\mathbb R^2)\}, \qquad D(p_r)=\{\psi:\partial_{q_r}\psi\in L^2(\mathbb R^2)\}.
\end{align}$$

These specify the standard self-adjoint canonical operators. The Schwartz space is a common core, and the commutators hold there. There is no configuration-space wall or finite occupation cutoff. Charged or spinorial matter would require the simultaneous Gauss action and invariant tensors, not necessarily a tensor product of separately invariant factors. The factorization here is valid because these specific modes are neutral.

Use a prescribed external time T. Take $m_*>0$, $\omega_0>0$, $\nu>0$, $\zeta\ge0$ and $E_g>0$. The mass parameter fixes the normalization of the amplitudes. They can be assigned length units, momenta then have momentum units, and frequencies have inverse-time units. The dimensionless coupling is zeta; neither it nor the frequencies are obtained from a volume of the loop.

For a fixed nonnegative c the finite classical matter Lagrangian is

$$\begin{align}
L_c=\frac{m_*}{2}(\dot q_1^2+\dot q_2^2) -\frac{m_*\omega_0^2}{2}(q_1^2+q_2^2) -\frac{m_*\nu^2}{2}(1+\zeta c)(q_1-q_2)^2.
\end{align}$$

Thus $p_r=m_*\dot q_r$. Define the joint quantum Hamiltonian by promoting c to C and adding a chosen geometry energy:

$$\begin{align}
\widehat H_0=E_g C\otimes I+ \frac{p_1^2+p_2^2}{2m_*} +\frac{m_*\omega_0^2}{2}(q_1^2+q_2^2) +\frac{m_*\nu^2}{2}(1+\zeta C)(q_1-q_2)^2.
\end{align}$$

Products carry the implicit geometry/matter tensor factors. This is a declared positive regulated interaction, not a derived gravitational Hamiltonian. The function $1+\zeta C$ is a specified dimensionless function of the quantum geometry label, equivalently $1+\zeta(\mathcal A/a_0)^2$. It is not inverse volume. Classically free scalar-field terminology would not remove such dependence on dynamical geometry.

## 5. Exact Normal Modes, Normalized States and Domains

Make the canonical orthogonal transformation

$$\begin{align}
Q_\pm=\frac{q_1\pm q_2}{\sqrt2}, \qquad P_\pm=\frac{p_1\pm p_2}{\sqrt2}.
\end{align}$$

It preserves the canonical brackets and Lebesgue measure. Since $(q_1-q_2)^2=2Q_-^2$, the j block is

$$\begin{align}
H_j=E_gc_j+h_{\omega_0}(Q_+,P_+)+h_{\Omega_j}(Q_-,P_-), \quad h_\omega=\frac{P^2}{2m_*}+\frac{m_*\omega^2Q^2}{2}, \quad \Omega_j^2=\omega_0^2+2\nu^2(1+\zeta c_j).
\end{align}$$

Both frequencies are positive; the normal coordinates do not depend on j. The geometry dependence remains in the relative-mode frequency rather than disappearing under diagonalization.

For $n\ge0$ the normalized Hermite function is

$$\begin{align}
u_n^\omega(Q)= \left(\frac{m_*\omega}{\pi\hbar}\right)^{1/4} \frac{H_n(\sqrt{m_*\omega/\hbar}\,Q)}{\sqrt{2^n n!}} e^{-m_*\omega Q^2/(2\hbar)}.
\end{align}$$

Hermite orthogonality gives unit norm; its polynomial differential equation gives $h_\omega u_n^\omega=\hbar\omega(n+1/2)u_n^\omega$. Combining the two oscillators with the Haar characters gives the complete orthonormal joint eigenbasis

$$\begin{aligned}
\Psi_{j,n_+,n_-}(g,q_1,q_2) &=\chi_j(g)u_{n_+}^{\omega_0}(Q_+)u_{n_-}^{\Omega_j}(Q_-),\\
E_{j,n_+,n_-} &=E_gc_j+\hbar\omega_0(n_++\tfrac12) +\hbar\Omega_j(n_-+\tfrac12).
\end{aligned}$$

For different j, character orthogonality applies even though oscillator functions of different frequencies overlap. Within one j, ordinary oscillator completeness applies. All branches are therefore represented in one specified tensor-product Hilbert space, not in unspecified background-dependent spaces.

Define $H_0$ as the self-adjoint diagonal operator in this basis, with

$$\begin{align}
D(H_0)=\left\{\sum_{j,n_+,n_-}d_{j,n_+,n_-}\Psi_{j,n_+,n_-}:
 \sum_{j,n_+,n_-}E_{j,n_+,n_-}^2|d_{j,n_+,n_-}|^2<\infty\right\}.
\end{align}$$

The finite eigenbasis span is a core. Equivalently it is the direct sum of the self-adjoint two-oscillator blocks. The algebraic finite character span tensored with $\mathcal S(\mathbb R^2)$ is a common invariant core for the displayed polynomial operators. This construction resolves the domain of the unbounded geometry-dependent coefficient; merely writing its formal product would not suffice.

The spectral phases $e^{-iE_{j,n_+,n_-}T/\hbar}$ define unitary evolution on the whole Hilbert space and solve the strong Schrödinger equation on $D(H_0)$. Here $C$ commutes with $H_0$: the geometry label is conserved, but a superposition can still become entangled with matter. This is external-clock unitarity of the selected Hamiltonian, not a physical inner product obtained by solving gravitational constraints.

## 6. Entanglement Generated from an Actual Product State

Take $\zeta>0$ and set $\omega=\Omega_0$, $\Omega=\Omega_{1/2}$, so $\Omega^2-\omega^2=3\nu^2\zeta/2>0$. Prepare

$$\begin{align}
\Psi(0)=\frac{|0\rangle+|\tfrac12\rangle}{\sqrt2} \otimes u_0^{\omega_0}(Q_+)u_0^\omega(Q_-).
\end{align}$$

This is a normalized product between geometry and matter. The plus oscillator evolves by a common ground-state phase. In the j=0 branch the relative oscillator remains its ground state, $\phi_0(Q,T)=e^{-i\omega T/2}u_0^\omega(Q)$. In the j=1/2 branch it undergoes a frequency quench. An exact normalized solution is

$$\begin{aligned}
D(T)&=\cos\Omega T+i\frac\omega\Omega\sin\Omega T,\\
B(T)&=\frac{\omega\cos\Omega T+i\Omega\sin\Omega T}{D(T)},\\
\phi_1(Q,T)&=\left(\frac{m_*\omega}{\pi\hbar}\right)^{1/4} D(T)^{-1/2}\exp\left[-\frac{m_*B(T)Q^2}{2\hbar}\right].
\end{aligned}$$

The square root is continued from $D(0)=1$, not reset to its principal branch each period. Positive frequencies imply $D(T)\ne0$. Direct differentiation gives $\dot D/D=iB$ and $\dot B=i(\Omega^2-B^2)$; substituting these identities verifies $i\hbar\partial_T\phi_1=h_\Omega\phi_1$. Moreover $\operatorname{Re}B=\omega/|D|^2>0$, so its Gaussian integral is exactly one for every T.

The relative-mode branch overlap is a Gaussian integral:

$$\begin{align}
z(T):=\langle\phi_0(T),\phi_1(T)\rangle =e^{i\omega T/2} \left[\cos\Omega T+ i\frac{\Omega^2+\omega^2}{2\omega\Omega}\sin\Omega T\right]^{-1/2}.
\end{align}$$

Its root has the corresponding continuous phase. Tracing matter out gives a two-by-two geometry density matrix with diagonal entries $1/2$ and off-diagonal magnitude $|z|/2$. The additional phases from $E_g C$ do not affect its eigenvalues or purity:

$$\begin{aligned}
|z(T)|^2&=\left[1+ \frac{(\Omega^2-\omega^2)^2}{4\omega^2\Omega^2} \sin^2\Omega T\right]^{-1/2},\\
\lambda_\pm&=\frac{1\pm|z|}{2},\qquad \operatorname{Tr}\rho_g^2=\frac{1+|z|^2}{2}.
\end{aligned}$$

At T=0 the purity is one. At $T=\pi/(2\Omega)$ it is $(1+2\omega\Omega/(\omega^2+\Omega^2))/2<1$. A subsystem of a pure bipartite state is mixed precisely when the state is entangled. Thus this is actual dynamical entanglement without a change of j. It revives to product-state purity when $\sin\Omega T=0$; no irreversible thermalization is claimed. The entropy $-\sum_\pm\lambda_\pm\log\lambda_\pm$ is the entanglement entropy of these chosen factors, not a black-hole or continuum entropy.

## 7. Finite Canonical Squeezing and a Holonomy Interaction

Different conditional oscillator bases are related within the same regular one-mode representation. Define

$$\begin{align}
a_\omega=\sqrt{\frac{m_*\omega}{2\hbar}}Q +\frac{iP}{\sqrt{2m_*\hbar\omega}}, \qquad r=\frac12\log(\Omega/\omega), \qquad a_\Omega=\cosh r\,a_\omega+\sinh r\,a_\omega^\dagger.
\end{align}$$

The commutator is preserved because $\cosh^2r-\sinh^2r=1$. An explicit unitary implementer is the dilation

$$\begin{align}
(S_rf)(Q)=e^{r/2}f(e^rQ).
\end{align}$$

A change of integration variable proves norm preservation and $S_r^{-1}=S_{-r}$. It gives $S_rQS_r^\dagger=e^rQ$, $S_rPS_r^\dagger=e^{-r}P$ and maps $u_0^\omega$ to $u_0^\Omega$. This relates canonical representations/bases, not equal Hamiltonian spectra: the two oscillator level spacings still differ.

The direct sum of such unitaries, controlled by j, is also unitary: each geometry component keeps its norm. Even unbounded values of the conditional squeeze parameter do not obstruct this finite-mode direct-sum map. That is different from an infinite tensor product of matter modes. In an infinite field, implementability requires an additional Hilbert–Schmidt/Bogoliubov condition; in the diagonal mode case the relevant sum is $\sum_k|\beta_k|^2$. A finite-mode squeeze calculation does not establish its convergence or generic equivalence of infinite-field Fock representations.

A simple extension introduces genuine changes of geometry label:

$$\begin{align}
H_\epsilon=H_0+\epsilon W\otimes I, \qquad\epsilon\in\mathbb R.
\end{align}$$

The bounded-perturbation theorem makes this self-adjoint on $D(H_0)$, since W has norm 2. With $E_{\min}=\hbar(\omega_0+\Omega_0)/2$, it obeys $H_\epsilon\ge E_{\min}-2|\epsilon|$. One may impose $2|\epsilon|<E_{\min}$ to keep strict positivity. Its unitary external-time evolution is therefore defined, although the preceding simple energy diagonalization is for $\epsilon=0$, not a claimed exact spectrum of this extension.

Let $|j;00\rangle$ denote its unperturbed conditional ground basis. A Wilson matrix element is

$$\begin{align}
\langle k;00|W\otimes I|j;00\rangle =\bigl(\delta_{k,j+1/2}+\delta_{k,j-1/2}\bigr) \sqrt{\frac{2\sqrt{\Omega_k\Omega_j}}{\Omega_k+\Omega_j}}.
\end{align}$$

The extra factor is the integral of two normalized ground Gaussians. W acts trivially on matter in the original tensor product; the overlap appears because its conditional energy basis uses different matter widths. On the common finite-character/Schwartz core, $[C,H_\epsilon]=\epsilon[C,W]$ is nonzero. Thus the bounded perturbation can exchange geometry labels, rather than merely assigning a classical background to each oscillator.

A finite spin computation must replace W by $W_N$ and retain the upper-boundary correction from Section 3. The canonical oscillators here still have all occupation numbers: “two modes” is not an occupation cutoff. Finite oscillator matrices could not satisfy an exact canonical commutator, since a matrix commutator has zero trace.

## 8. Representation and Physical-State Choices Remain Input

The matter quantization above is regular Schrödinger quantization, not a silent assertion that every scalar must use the same representation as the loop. In the regular representation $e^{i\mu q}$ is strongly continuous in its real parameter and has q as a self-adjoint generator.

For contrast, a Bohr-type scalar representation has orthonormal states labelled by real lambda and a shift action

$$\begin{align}
\langle\lambda|\lambda'\rangle=\delta_{\lambda\lambda'}, \qquad U_\mu|\lambda\rangle=|\lambda+\mu\rangle, \qquad\langle\lambda|U_\mu|\lambda\rangle=\delta_{\mu0}.
\end{align}$$

Here the last delta is Kronecker, not a distribution. The matrix element is discontinuous at zero, so this family has no self-adjoint q generator. One cannot retain the exact $q^2$ oscillator Hamiltonian above while merely replacing its Hilbert-space name by the Bohr space. A polymer Hamiltonian would require a separate regulated prescription and domain; none is claimed solved here.

Finally, the Gauss condition solved by class functions is not the gravitational spatial-diffeomorphism or Hamiltonian constraint. The fixed graph, probe surface, external clock, geometry energy and matter coupling are model data. A scalar-clock physical Hilbert space such as the [controlled cosmological construction](<EC-08.md>) requires a different constraint and inner product; it is not supplied by this tensor product. General charged/fermionic matter further changes Gauss action, canonical reduction, statistics, interactions and possible anomalies. No standard-model spectrum, complete Dirac-fermion reduction, continuum chirality result or full constraint-algebra representation follows here.

## 9. What Has Actually Been Constructed

The construction gives an infinite one-loop class Hilbert space with self-adjoint Casimir/area, a bounded Wilson trace and its exact character ladder; an explicitly corrected finite spin compression; two regular canonical matter modes with a positive geometry-dependent coupling; normalized complete joint energy eigenstates and an actual self-adjoint domain; and an exact product-state quench with calculable entanglement. A bounded holonomy term extends the Hamiltonian with explicit transition matrix elements. These are regulated quantum-mechanical results, not formal partition functions.

The coupling is not reconstructed from a loop volume, the external clock is not a solved gravitational clock, and the gauge-invariant class space is not a full physical quantum-gravity state space. Refinement, continuum fields, global spacetime reconstruction, quantum constraints and covariant amplitudes need further constructions. Finite checks calibrate the stated algebra and examples; they do not replace the named spectral/functional-analytic inputs or establish those missing limits.

## References and Theorem Inputs

B. C. Hall, *Quantum Theory for Mathematicians* (Springer, 2013): compact-group harmonic analysis, canonical quantum mechanics and harmonic-oscillator tools. Sine/Hermite completeness and Schur's lemma are the inputs used here.

M. Reed and B. Simon, *Methods of Modern Mathematical Physics I: Functional Analysis*: the spectral theorem, direct sums of self-adjoint operators and bounded self-adjoint perturbations. Their hypotheses are specified through the concrete bases/domains above.

G. B. Folland, *Harmonic Analysis in Phase Space* (Princeton University Press, 1989): finite-dimensional canonical transformations and their unitary implementation. Infinite-field Fock implementability is a separate condition, not inferred from the two-mode example.
