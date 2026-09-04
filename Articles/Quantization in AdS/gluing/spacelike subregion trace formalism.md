# Spacelike-Subregion State Restriction and Finite Partial Trace in the Gluing Formalism

> **Status.** This note supplies the missing bridge between the finite duplicate-port reduction in [[Articles/Quantization in AdS/gluing/gluing formalism|gluing formalism]] and the post-sewing reduced-state construction in [[Articles/Quantization in AdS/gluing/reduced-state-open-system-scalar|reduced-state-open-system-scalar]]. The abstract finite commuting statement is proved only under the split-adapted port hypothesis below. The centered bounded scalar satisfies that hypothesis and is worked out explicitly. The continuum endpoint is algebraic state restriction on fixed bulk-smeared observables, not a partial trace of a continuum density matrix.
>
> [[Articles/Quantization in AdS/gluing/ads2-rindler regulated partial trace|ads2-rindler regulated partial trace]] is an independent factorizing-global-regulator benchmark: it verifies the same finite-partial-trace to continuum-state-restriction logic, but it is not a duplicate-port sewing construction.

The direct verdict is

$$\begin{align}
\boxed{ \text{there is no generic theorem }T\circ R_\Gamma\simeq R_\Gamma\circ T.
}
\end{align}$$

Partial trace is not classical sewing, coisotropic reduction, or second-class reduction. What is true in the finite split-adapted setting is a more precise pair of statements:

$$\begin{align}
\mathcal D_2\mathcal R_\Gamma(\mathfrak A^{\mathrm{dup}}) &=\mathcal R_\Gamma\mathcal D_2(\mathfrak A^{\mathrm{dup}}) =\mathfrak A_{1\Gamma}, \tag{0.1}\\
\omega_{1\Gamma} &=\omega_{\mathrm{gl}}|_{\mathfrak A_{1\Gamma}}, \tag{0.2}
\end{align}$$

where $\mathcal D_2$ is retained-subalgebra selection, not a state map. Only in a chosen finite regular Type-I representation does (0.2) become

$$\begin{align}
\rho_{1\Gamma}=\operatorname{Tr}_2\rho_{\mathrm{gl}}. \tag{0.3}
\end{align}$$

The density-kernel version says that the right-bulk trace cap and the port sewing kernels are two different kernel compositions which may be reordered under finite split-adapted Gaussian hypotheses. It does not identify the cap with the sewing relation.

Here “spacelike subregion” means a subsystem of the canonical data on one Cauchy slice. The artificial spatial cut on that slice sweeps out the timelike interface history used by covariant sewing. State restriction at one time and covariant history sewing are therefore different layers even when they refer to the same geometric cut.

## 1. The Layers That Must Be Kept Separate

The notation and logical order follow [[Articles/Quantization in AdS/gluing/gluing formalism|gluing formalism]]. In particular, covariant sewing, its equal-time realization, Weyl quantization, and the state/representation layer are not interchangeable descriptions of one operation.

### 1.1 Covariant Sewing and Equal-Time Reduction

For a cotangent-polarized artificial interface, the covariant full-trace sewing relation is

$$\begin{align}
L_{\mathrm{sew}} =N^*\Delta =\{q_1=q_2,\ \Pi_1^{\mathrm{out}}+\Pi_2^{\mathrm{out}}=0\}
\subset \overline{\mathcal Z_1}\times\mathcal Z_2. \tag{1.1}
\end{align}$$

This is a history-space Lagrangian relation. In a finite equal-time Hamiltonian realization, one instead begins from the holonomic continuity constraint

$$\begin{align}
\chi=Ax=0, \tag{1.2}
\end{align}$$

and Hamiltonian preservation gives

$$\begin{align}
\psi=AM^{-1}p=A\dot x=0. \tag{1.3}
\end{align}$$

Equation (1.3) is velocity tangency to $\ker A$. It is not the spatial conormal-flux equation renamed as a second primary constraint. The summed-flux equation is instead the Euler--Lagrange equation obtained by varying the surviving shared port. For the centered scalar it is

$$\begin{align}
\rho_N(\ddot q+m^2q)+\mathcal F_N=0, \tag{1.4}
\end{align}$$

not $\mathcal F_N=0$ at finite $N$.

The symbol $R_\Gamma$ will mean the appropriate sewing reduction at the layer under discussion:

- covariantly, composition with $L_{\mathrm{sew}}$ followed by reconstruction under the stated PDE and regularity hypotheses;
- at finite equal time, the canonical coisotropic quotient or its $M$-dependent regular second-class slice;
- quantum algebraically, the corresponding physical Weyl algebra selected inside the finite duplicate-port parent.

### 1.2 Quantization, Observables, States, and Dynamics

The following objects are distinct.

| object | definition | intrinsic status | dependence and nonclaims |
|---|---|---|---|
| sewing/reduction $R_\Gamma$ | covariant canonical-relation composition, or finite coisotropic/second-class reduction | intrinsic relative to the declared variational sewing data; the embedded second-class slice also depends on the kinetic form $M$ | not a state map and not information loss |
| Weyl quantization $Q$ | $(\mathcal S,\sigma)\mapsto\mathfrak W(\mathcal S,\sigma)$ | algebraic and representation-free | chooses no state, complex structure, or Hilbert factorization |
| retained-algebra inclusion $\iota_{1\Gamma}$ | $\mathfrak A_{1\Gamma}\hookrightarrow\mathfrak A_{\mathrm{gl}}$ | intrinsic once a retained observable class has been declared | the subsystem choice need not be canonical for an arbitrary regulator |
| algebraic discard $\mathcal D_2$ | select the commutant of the right exclusive-bulk algebra inside the ambient algebra | an observable-selection operation | not a state map, trace, conditional expectation, or dynamical elimination |
| state restriction | $\operatorname{res}_{1\Gamma}(\omega)=\omega\circ\iota_{1\Gamma}$ | intrinsic after the state and inclusion are given | needs no density matrix or tensor factorization |
| finite partial trace | $\rho_{1\Gamma}=\operatorname{Tr}_2\rho_{\mathrm{gl}}$ | a density-matrix realization of state restriction | requires a chosen Type-I representation and exact complementary Hilbert factors |
| operator elimination | solve the right Heisenberg equations and substitute the solution into the retained equations | a dynamics- and split-dependent operator identity | gives memory/noise equations; it is neither state restriction nor partial trace |
| CPTP open-system channel | $\Phi_t(\rho_S)=\operatorname{Tr}_E[U_t\mathcal E(\rho_S)U_t^\dagger]$ | representation-, assignment-, and state dependent | a correlated global state alone does not define a state-independent channel on all $\rho_S$ |

Thus the intrinsic finite regional state is always first defined as a restriction. Partial trace is invoked only after its representation-theoretic hypotheses have been stated.

## 2. Finite Split-Adapted Duplicate-Port Hypothesis

### 2.1 Hypothesis

Fix a finite linear regulator. For each region require a nondegenerate symplectic direct sum

$$\begin{align}
\boxed{ \mathcal S_i^{\mathrm{ext}} =\mathcal B_i\oplus^\sigma\mathcal Z_i, } \tag{2.1}
\end{align}$$

where

- $\mathcal B_i$ is the exclusive bulk/interior sector of region $i$;
- $\mathcal Z_i$ is the incidence-port sector;
- $\sigma(\mathcal B_i,\mathcal Z_i)=0$;
- the continuity map and its regular second-class normal directions act only on $\bigoplus_i\mathcal Z_i$.

For two regions this gives

$$\begin{align}
\mathcal S^{\mathrm{dup}} =\mathcal B_1\oplus^\sigma\mathcal B_2 \oplus^\sigma\mathcal Z_1\oplus^\sigma\mathcal Z_2. \tag{2.2}
\end{align}$$

Require in addition a canonical port transformation

$$\begin{align}
\mathcal Z_1\oplus^\sigma\mathcal Z_2 &=\mathcal Z_\Delta\oplus^\sigma\mathcal N_\Gamma, \tag{2.3}
\end{align}$$

such that the second-class constraint surface sets the relative normal sector $\mathcal N_\Gamma$ to zero and leaves the diagonal/common port sector $\mathcal Z_\Delta$. Then

$$\begin{align}
\boxed{ \mathcal S^{\mathrm{dup}} =\mathcal B_1\oplus^\sigma\mathcal B_2 \oplus^\sigma\mathcal Z_\Delta\oplus^\sigma\mathcal N_\Gamma, } \tag{2.4}\\
\boxed{ \mathcal S^{\mathrm{gl}} =\mathcal B_1\oplus^\sigma\mathcal B_2 \oplus^\sigma\mathcal Z_\Delta.
} \tag{2.5}
\end{align}$$

The nontrivial compatibility condition is

$$\begin{align}
\sigma(\mathcal B_2,\mathcal N_\Gamma)=0, \tag{2.6}
\end{align}$$

and likewise on the left. It ensures that removing the right exclusive bulk does not remove or deform the sewing normal data.

### 2.2 Why This Is Not Automatic

Suppose regional configuration variables are naively written as $(c_i,q_i)$ with kinetic matrix

$$\begin{align}
M_i=
\begin{pmatrix}
M_{B,i}&E_i\\
E_i^{\mathrm T}&M_{Z,i}
\end{pmatrix}. \tag{2.7}
\end{align}$$

Then $p_{q_i}$ contains bulk velocities. In the naive variables, $q_i$ and $p_{q_i}$ do not define a symplectic port factor orthogonal to $(c_i,p_{c_i})$, and the secondary condition $AM^{-1}p=0$ can mix bulk and port momenta. A positive finite matrix may admit the canonical Schur shear

$$\begin{align}
C_i&=c_i+M_{B,i}^{-1}E_iq_i,\\
\pi_i&=p_{q_i}-E_i^{\mathrm T}M_{B,i}^{-1}p_{c_i}, \tag{2.8}\\
R_i&=M_{Z,i}-E_i^{\mathrm T}M_{B,i}^{-1}E_i>0,
\end{align}$$

but an arbitrary regulator must still prove that this transformation preserves the intended incidence locality, that all sewing rows act only on the resulting $q_i$, and that the exclusive-bulk interpretation is compatible across regions. Singular kinetic blocks, additional constraints, cross-regional kinetic terms, or a nonlocal canonicalization can obstruct this conclusion.

Stiffness/Hamiltonian cross terms between $\mathcal B_i$ and $\mathcal Z_i$ are allowed. They mean that the unconstrained parent dynamics and its ground state need not factorize across (2.1). The split-adapted hypothesis is kinematic and reduction-theoretic; it does not assert a block-diagonal parent Hamiltonian.

## 3. Centered Scalar Benchmark

This section proves the split-adapted hypothesis for the centered finite scalar regulator used in [[Articles/Quantization in AdS/gluing/formalism|formalism]] and [[Articles/Quantization in AdS/gluing/reduced-state-open-system-scalar|reduced-state-open-system-scalar]]. It is a benchmark, not a theorem for arbitrary port regulators.

### 3.1 Duplicate Regional Variables and the Port Schur Complement

On each half interval $y\in[0,L]$, take

$$\begin{align}
h(y)&=\frac yL,& u_n(y)&=\sqrt{\frac2L}\sin\frac{n\pi y}{L},\\
A_n&=(-1)^{n+1}\frac{\sqrt{2L}}{n\pi},& k_n&=\frac{n\pi}{L}. \tag{3.1}
\end{align}$$

Let $\boldsymbol A=(A_1,\ldots,A_N)^{\mathrm T}$. Before sewing, region $i$ has independent variables $(\boldsymbol c_i,q_i)$ and kinetic matrix

$$\begin{align}
M_i=
\begin{pmatrix}
\mathbf1_N&\boldsymbol A\\
\boldsymbol A^{\mathrm T}&L/3
\end{pmatrix}. \tag{3.2}
\end{align}$$

The port Schur complement is

$$\begin{align}
r_N &:=\frac L3-\boldsymbol A^{\mathrm T}\boldsymbol A\\
&=\frac{2L}{\pi^2}\sum_{n>N}\frac1{n^2} =\frac{\rho_N}{2}>0, \tag{3.3}\\
\rho_N&=\frac{4L}{\pi^2}\sum_{n>N}\frac1{n^2}. \tag{3.4}
\end{align}$$

The equality uses $\sum_{n\ge1}A_n^2=L/3$. Positivity of $r_N$ proves that every finite regional mass matrix is nondegenerate.

### 3.2 Region-Wise Canonical Shear

Define, before imposing $q_1=q_2$,

$$\begin{align}
\boldsymbol C_i&=\boldsymbol c_i+\boldsymbol A q_i,& \boldsymbol V_i&=p_{\boldsymbol c_i},\\
\pi_i&=p_{q_i}-\boldsymbol A^{\mathrm T}p_{\boldsymbol c_i}. \tag{3.5}
\end{align}$$

The original momenta obey

$$\begin{align}
p_{\boldsymbol c_i} &=\dot{\boldsymbol c}_i+\boldsymbol A\dot q_i =\dot{\boldsymbol C}_i=\boldsymbol V_i,\\
p_{q_i} &=\boldsymbol A^{\mathrm T}\dot{\boldsymbol c}_i+\frac L3\dot q_i =\boldsymbol A^{\mathrm T}\boldsymbol V_i+r_N\dot q_i,\\
&\boxed{\pi_i=r_N\dot q_i.} \tag{3.6}
\end{align}$$

The kinetic congruence is exact:

$$\begin{align}
\begin{pmatrix}
\mathbf1&0\\
-\boldsymbol A^{\mathrm T}&1
\end{pmatrix}
M_i
\begin{pmatrix}
\mathbf1&-\boldsymbol A\\
0&1
\end{pmatrix}
=
\begin{pmatrix}
\mathbf1&0\\
0&r_N
\end{pmatrix}. \tag{3.7}
\end{align}$$

More importantly, the canonical one-form is preserved:

$$\begin{align}
p_{\boldsymbol c_i}^{\mathrm T}\delta\boldsymbol c_i +p_{q_i}\delta q_i =\boldsymbol V_i^{\mathrm T}\delta\boldsymbol C_i +\pi_i\delta q_i. \tag{3.8}
\end{align}$$

Therefore

$$\begin{align}
\mathcal B_{i,N} &:=\operatorname{span}(\boldsymbol C_i,\boldsymbol V_i),& \mathcal Z_{i,N} &:=\operatorname{span}(q_i,\pi_i),\\
\mathcal S_{i,N}^{\mathrm{ext}} &=\mathcal B_{i,N}\oplus^\sigma\mathcal Z_{i,N}. \tag{3.9}
\end{align}$$

The regional Hamiltonian still contains a stiffness coupling. With

$$\begin{align}
b_n&=A_nk_n^2,& D_0&=\operatorname{diag}(k_n^2+m^2),\\
\kappa_{R,N}&=\frac{2N+1}{L}+m^2r_N,
\end{align}$$

one has

$$\begin{align}
H_i =\frac12\boldsymbol V_i^{\mathrm T}\boldsymbol V_i +\frac{\pi_i^2}{2r_N} +\frac12\boldsymbol C_i^{\mathrm T}D_0\boldsymbol C_i -q_i\boldsymbol b^{\mathrm T}\boldsymbol C_i +\frac12\kappa_{R,N}q_i^2. \tag{3.10}
\end{align}$$

Thus (3.9) is an exact symplectic factorization while the parent dynamics generally couples its factors. This is precisely why no parent-ground-state factorization follows from the kinematics.

### 3.3 Common and Relative Port Variables

Define

$$\begin{align}
q&=\frac{q_1+q_2}{2},& \xi&=q_1-q_2,\\
\pi&=\pi_1+\pi_2,& \eta&=\frac{\pi_1-\pi_2}{2}. \tag{3.11}
\end{align}$$

The inverse transformation is

$$\begin{align}
q_1&=q+\frac\xi2,&q_2&=q-\frac\xi2,\\
\pi_1&=\frac\pi2+\eta,&\pi_2&=\frac\pi2-\eta.
\end{align}$$

It is canonical because

$$\begin{align}
\boxed{ \pi_1\delta q_1+\pi_2\delta q_2 =\pi\delta q+\eta\delta\xi.
} \tag{3.12}
\end{align}$$

The parent stiffness coupling in these variables contains

$$\begin{align}
-q_1\boldsymbol b^{\mathrm T}\boldsymbol C_1 -q_2\boldsymbol b^{\mathrm T}\boldsymbol C_2 =-q\,\boldsymbol b^{\mathrm T}(\boldsymbol C_1+\boldsymbol C_2) -\frac\xi2\boldsymbol b^{\mathrm T}(\boldsymbol C_1-\boldsymbol C_2). \tag{3.13}
\end{align}$$

Thus the normal coordinate $\xi$ is kinematically orthogonal to the physical sector but is coupled by the unconstrained parent Hamiltonian to the relative bulk combination. This exhibits directly why the kinematic factorization does not imply parent-dynamical or parent-ground-state factorization.

Continuity and its Hamiltonian preservation are

$$\begin{align}
\chi&=\xi=0,\\
\psi&=\dot q_1-\dot q_2 =\frac{\pi_1-\pi_2}{r_N} =\frac{2\eta}{r_N}=0. \tag{3.14}
\end{align}$$

Consequently $\psi=0$ is equivalent to $\eta=0$, and

$$\begin{align}
\{\chi,\psi\}=\frac{2}{r_N}=\frac4{\rho_N}. \tag{3.15}
\end{align}$$

The exact common and normal sectors are therefore

$$\begin{align}
\mathcal Z_{\Delta,N}&=\operatorname{span}(q,\pi),\\
\boxed{\mathcal N_{\Gamma,N}=\operatorname{span}(\xi,\eta).} \tag{3.16}
\end{align}$$

The full parent and reduced spaces take the split-adapted form

$$\begin{align}
\mathcal S_N^{\mathrm{dup}} &=\mathcal B_{1,N}\oplus^\sigma\mathcal B_{2,N} \oplus^\sigma\mathcal Z_{\Delta,N} \oplus^\sigma\mathcal N_{\Gamma,N}, \tag{3.17}\\
\mathcal S_N^{\mathrm{gl}} &=\mathcal B_{1,N}\oplus^\sigma\mathcal B_{2,N} \oplus^\sigma\mathcal Z_{\Delta,N}. \tag{3.18}
\end{align}$$

On the constraint surface, $q_1=q_2=q$ and $\pi_1=\pi_2=r_N\dot q$. Hence the surviving common-port momentum is

$$\begin{align}
\boxed{ \pi=\pi_1+\pi_2=2r_N\dot q=\rho_N\dot q.
} \tag{3.19}
\end{align}$$

This is exactly the $(q,\pi_q)$ pair used by the conforming Hamiltonian and the reduced-state note. It is not an additional continuum oscillator.

### 3.4 Benchmark Boundary

Equations (3.3), (3.7), (3.8), (3.12), (3.15), and (3.19) are exact finite identities. They establish the split-adapted hypothesis for this centered scalar regulator. They do not establish it for noncentral or nonconforming regulators, field-valued ports, constrained systems, gauge theory, gravity, or interactions.

## 4. Algebraic Discard and the Finite Commuting Square

### 4.1 Physical and Retained Algebras

Let

$$\begin{align}
\mathfrak A^{\mathrm{dup}} &:=\mathfrak W(\mathcal S^{\mathrm{dup}}),\\
\mathfrak B_i &:=\mathfrak W(\mathcal B_i),\\
\mathfrak Z_\Delta &:=\mathfrak W(\mathcal Z_\Delta),\\
\mathfrak N_\Gamma &:=\mathfrak W(\mathcal N_\Gamma). \tag{4.1}
\end{align}$$

All commutants in this section are taken inside the displayed universal finite parent Weyl algebra. By the nondegenerate symplectic direct sum (2.4),

$$\begin{align}
\mathfrak A^{\mathrm{dup}} \simeq \mathfrak B_1\otimes_{\min}\mathfrak B_2 \otimes_{\min}\mathfrak Z_\Delta \otimes_{\min}\mathfrak N_\Gamma. \tag{4.2}
\end{align}$$

For every ambient subalgebra $\mathfrak A\subseteq\mathfrak A^{\mathrm{dup}}$ occurring below, define the finite second-class physical selection by

$$\begin{align}
\boxed{ \mathcal R_\Gamma(\mathfrak A) :=\mathfrak N_\Gamma'\cap\mathfrak A.
} \tag{4.3}
\end{align}$$

In particular,

$$\begin{align}
\mathcal R_\Gamma(\mathfrak A^{\mathrm{dup}}) =\mathfrak W(\mathcal S^{\mathrm{gl}}). \tag{4.3a}
\end{align}$$

This is the embedded physical Weyl factor of `gluing formalism.md`. It is canonically isomorphic to the Weyl algebra obtained by first reducing the classical phase space. The physical dynamics is the reduced/Dirac-projected dynamics; the unconstrained parent flow need not preserve (4.3a).

Define discard of the right exclusive bulk as the retained-observable selection

$$\begin{align}
\boxed{ \mathcal D_2(\mathfrak A) :=\mathfrak B_2'\cap\mathfrak A, } \tag{4.4}
\end{align}$$

for each ambient subalgebra $\mathfrak A\subseteq\mathfrak A^{\mathrm{dup}}$ occurring below. This is not a state map. It keeps all parent observables which are symplectically independent of the right exclusive bulk.

### 4.2 The Theorem

**Theorem (finite discard--sewing algebraic square).** Under the finite split-adapted hypothesis,

$$\begin{align}
\boxed{ \mathcal D_2\mathcal R_\Gamma(\mathfrak A^{\mathrm{dup}}) =\mathcal R_\Gamma\mathcal D_2(\mathfrak A^{\mathrm{dup}}) =\mathfrak A_{1\Gamma}, } \tag{4.5}
\end{align}$$

where

$$\begin{align}
\boxed{ \mathfrak A_{1\Gamma} :=\mathfrak W(\mathcal B_1\oplus^\sigma\mathcal Z_\Delta) =\mathfrak B_2'\cap\mathfrak W(\mathcal S^{\mathrm{gl}}).
} \tag{4.6}
\end{align}$$

**Proof.** Equation (4.2) identifies the two relative commutants exactly. Hence

$$\begin{align}
\mathcal D_2\mathcal R_\Gamma(\mathfrak A^{\mathrm{dup}}) &=\mathfrak B_2'\cap\mathfrak N_\Gamma'\cap\mathfrak A^{\mathrm{dup}}\\
&=\mathfrak N_\Gamma'\cap\mathfrak B_2'\cap\mathfrak A^{\mathrm{dup}}\\
&=\mathcal R_\Gamma\mathcal D_2(\mathfrak A^{\mathrm{dup}})\\
&=\mathfrak W(\mathcal B_1\oplus^\sigma\mathcal Z_\Delta).
\end{align}$$

The formal interchange of intersections is elementary. The substantive content is the split-adapted identification of their common target with exactly $\mathcal B_1\oplus^\sigma\mathcal Z_\Delta$, rather than a smaller or mixed sector. $\square$

Before sewing,

$$\begin{align}
\mathcal D_2(\mathfrak A^{\mathrm{dup}}) =\mathfrak W( \mathcal B_1\oplus^\sigma \mathcal Z_1\oplus^\sigma\mathcal Z_2), \tag{4.7}
\end{align}$$

because $\mathcal Z_1\oplus^\sigma\mathcal Z_2=\mathcal Z_\Delta\oplus^\sigma\mathcal N_\Gamma$. Thus “discard the right side before sewing” means discard only $\mathcal B_2$ and retain both incidence ports. If one discards $\mathcal Z_2$ as well, $q_1-q_2=0$ can no longer be imposed: the required sewing datum has been deleted and the second route is not defined.

Equation (4.5) is not a theorem that states commute, that ground states commute with reduction, or that time evolution commutes with discard. It is a finite observable-algebra selection theorem.

## 5. Regional States and Finite Partial Trace

### 5.1 Intrinsic Definition

Let $\iota_{1\Gamma}:\mathfrak A_{1\Gamma}\hookrightarrow\mathfrak A_{\mathrm{gl}}$ denote the inclusion. For any glued state $\omega_{\mathrm{gl}}$ define

$$\begin{align}
\boxed{ \omega_{1\Gamma} :=\operatorname{res}_{1\Gamma}(\omega_{\mathrm{gl}}) =\omega_{\mathrm{gl}}\circ\iota_{1\Gamma} =\omega_{\mathrm{gl}}|_{\mathfrak A_{1\Gamma}}.
} \tag{5.1}
\end{align}$$

This definition uses only the algebra inclusion. It remains meaningful when no density matrix or Hilbert tensor product exists.

### 5.2 Finite Regular Type-I Realization

Only now choose the finite regular Schrödinger representation. Stone--von Neumann uniqueness and (2.5) give

$$\begin{align}
\mathcal H_{\mathrm{gl}} &\simeq \mathcal H_1^{\mathrm{int}} \otimes\mathcal H_2^{\mathrm{int}} \otimes\mathcal H_\Gamma, \tag{5.2}\\
\pi(\mathfrak A_{1\Gamma})'' &=B(\mathcal H_1^{\mathrm{int}})
\,\bar\otimes\,\mathbf1_2
\,\bar\otimes\,B(\mathcal H_\Gamma). \tag{5.3}
\end{align}$$

If $\omega_{\mathrm{gl}}$ is normal with density matrix $\rho_{\mathrm{gl}}$, (5.1) is represented by

$$\begin{align}
\boxed{ \rho_{1\Gamma}=\operatorname{Tr}_{\mathcal H_2^{\mathrm{int}}}\rho_{\mathrm{gl}}.
} \tag{5.4}
\end{align}$$

This is exactly the port-complete finite reduction in `reduced-state-open-system-scalar.md`.

It does not assign ownership of the common port to region 1. Define similarly

$$\begin{align}
\mathfrak A_{2\Gamma} &=\mathfrak W(\mathcal B_2\oplus^\sigma\mathcal Z_\Delta),\\
\mathfrak A_\Gamma &=\mathfrak W(\mathcal Z_\Delta). \tag{5.5}
\end{align}$$

Then in the finite regular representation

$$\begin{align}
\mathfrak A_{1\Gamma}\cap\mathfrak A_{2\Gamma} =\mathfrak A_\Gamma. \tag{5.6}
\end{align}$$

The port-complete regional algebras overlap and generally do not commute because $[q,\pi]=\mathrm i$. The common interface algebra belongs to the overlap, not exclusively to either region.

There is a distinct subsystem choice after sewing:

$$\begin{align}
\boxed{ \rho_1^{\mathrm{int}} =\operatorname{Tr}_{2,\Gamma}\rho_{\mathrm{gl}}.
} \tag{5.7}
\end{align}$$

It represents restriction to $\mathfrak W(\mathcal B_1)$ and corresponds to the complementary split $1\,|\,(2+\Gamma)$. It is not the same subsystem as $(1+\Gamma)\,|\,2$, and it should not be described as assigning the interface to region 2 before sewing.

### 5.3 Partial Trace, Elimination, and a Channel

For a Gaussian state, (5.4) selects the principal covariance block for $(\mathcal B_1,\mathcal Z_\Delta)$. It is not a Schur complement. A Schur complement arises in conditioning or operator elimination.

Solving the $\mathcal B_2$ Heisenberg equations and substituting them gives the memory/noise system derived in `reduced-state-open-system-scalar.md`. That identity can be stated on a common Schwartz core or in integrated Weyl form and does not depend on a later state choice.

A CPTP map on arbitrary retained density matrices requires an assignment $\mathcal E(\rho_S)$ with $\operatorname{Tr}_E\mathcal E(\rho_S)=\rho_S$. A product assignment gives one channel. The correlated glued ground state supplies one global state and its trajectory; without an assignment or compatibility domain it does not define a state-independent channel on all regional states.

## 6. A Parent Normal Factor Is Not the Definition of Reduction

In the finite regular parent representation, (2.4) may also be realized as

$$\begin{align}
\mathcal H_{\mathrm{dup}} \simeq \mathcal H_1^{\mathrm{int}} \otimes\mathcal H_2^{\mathrm{int}} \otimes\mathcal H_\Gamma \otimes\mathcal H_{\mathcal N}. \tag{6.1}
\end{align}$$

For a chosen parent state extension $\widetilde\rho$ whose physical marginal is $\rho_{\mathrm{gl}}$,

$$\begin{align}
\operatorname{Tr}_{\mathcal N}\widetilde\rho &=\rho_{\mathrm{gl}},\\
\rho_{1\Gamma} &=\operatorname{Tr}_{2,\mathcal N}\widetilde\rho =\operatorname{Tr}_2\operatorname{Tr}_{\mathcal N}\widetilde\rho =\operatorname{Tr}_{\mathcal N}\operatorname{Tr}_2\widetilde\rho. \tag{6.2}
\end{align}$$

Equation (6.2) is only the representation-level realization of restrictions from one common parent state. It does not define second-class reduction as a partial trace. The parent extension is not canonical: for example, $\rho_{\mathrm{gl}}\otimes\tau_{\mathcal N}$ gives one extension for every normal state $\tau_{\mathcal N}$, and correlated extensions can have the same physical marginal.

Nor may one assume that the unconstrained parent ground state reduces to the glued ground state. That conclusion holds only if the parent Hamiltonian preserves the symplectic physical/normal splitting, equivalently if its quadratic Hamiltonian is block diagonal between $\mathcal S^{\mathrm{gl}}$ and $\mathcal N_\Gamma$. In the centered scalar, (3.10) contains bulk--port stiffness couplings, so the required parent block diagonalization is not automatic. The unconstrained parent ground state may be correlated across the physical and normal factors, and its physical marginal need not be the ground state of the reduced Hamiltonian.

The physical algebra is therefore defined by the relative commutant (4.3), or equivalently by the reduced Weyl algebra. A conditional expectation onto it requires a choice of normal state and is not part of the reduction theorem.

## 7. Doubled Density Kernels: Trace Cap Versus Sewing Kernel

### 7.1 The Two Kernels

Choose the finite regular Schrödinger configuration polarization. Let $b_i^\pm$ denote the region-$i$ exclusive-bulk configuration variables on the ket/bra branches and let $q_i^\pm$ denote duplicated port variables. A finite density kernel has the form

$$\begin{align}
\widetilde\rho^{\mathrm{dup}}
(b_1^+,b_2^+,q_1^+,q_2^+;
b_1^-,b_2^-,q_1^-,q_2^-). \tag{7.1}
\end{align}$$

The right-bulk partial trace is the diagonal cap

$$\begin{align}
K_{\mathrm{cap},2}(b_2^+,b_2^-) =\delta^{(d_2)}(b_2^+-b_2^-)
|\mathrm db_2^+|^{1/2}|\mathrm db_2^-|^{1/2}, \tag{7.2}
\end{align}$$

so that

$$\begin{align}
(\operatorname{Cap}_2\rho)(b_1^+,q^+;b_1^-,q^-) =\int\mathrm d^{d_2}b_2\, \rho(b_1^+,b_2,q^+;b_1^-,b_2,q^-). \tag{7.3}
\end{align}$$

Spatial sewing on each branch is instead the diagonal/conormal kernel

$$\begin{align}
K_{\mathrm{sew}}(q_2,q_1) =\delta(q_2-q_1)
|\mathrm dq_2|^{1/2}|\mathrm dq_1|^{1/2}. \tag{7.4}
\end{align}$$

Its conormal relation is $q_1=q_2$ with oppositely oriented port covectors. On the doubled kernel one inserts one copy on the $+$ branch and the conjugate copy on the $-$ branch.

For time-sliced finite quadratic dynamics, (7.4) is used with the same normalized Faddeev--Senjanović/coarea half-density as in `gluing formalism.md`. At each branch and internal time slice,

$$\begin{align}
(2\pi\mathrm i\varepsilon)^{r/2} \sqrt{\det G}\,\delta(Ax) =\nu_\varepsilon\delta_{A,I}(x), \tag{7.5}
\end{align}$$

where $G=AM^{-1}A^{\mathrm T}$. The bra branch carries the conjugate Lorentzian factor; in Euclidean time both square roots are chosen positive. For the centered scalar,

$$\begin{align}
\delta_{A,I}(x)&=\delta(q_1-q_2),\\
G_N&=\frac4{\rho_N},\\
\nu_{\varepsilon,N} &=2\left(\frac{2\pi\mathrm i\varepsilon}{\rho_N}\right)^{1/2}. \tag{7.6}
\end{align}$$

The cap (7.2) has unit identity-kernel normalization. It introduces no Faddeev--Senjanović determinant because it is not a constraint reduction.

### 7.2 Finite Gaussian Interchange Theorem

**Theorem (trace-cap and sewing-kernel interchange).** Assume:

1. the finite duplicate-port regulator is split-adapted;
2. the sewing kernels act only on the duplicated port variables and the cap acts only on the right exclusive-bulk variables;
3. the doubled kernel is trace class and Gaussian, or is obtained from a positive Euclidean finite Gaussian time slicing for which the integrand after the normalized insertions is absolutely integrable;
4. all Faddeev--Senjanović/coarea factors and half-density branches are fixed before either composition.

Then

$$\begin{align}
\boxed{ \operatorname{Cap}_2\circ (\operatorname{Sew}_\Gamma^+\otimes\overline{\operatorname{Sew}_\Gamma^-}) = (\operatorname{Sew}_\Gamma^+\otimes\overline{\operatorname{Sew}_\Gamma^-}) \circ\operatorname{Cap}_2
} \tag{7.7}
\end{align}$$

on this finite Gaussian kernel class. Both sides yield the port-complete regional density kernel.

**Proof.** In the centered one-port notation, both sides reduce to the same expression

$$\begin{align}
\mathcal N_{\mathrm{FS}}^+ \overline{\mathcal N_{\mathrm{FS}}^-}
\int\mathrm d^{d_2}b_2\, \widetilde\rho^{\mathrm{dup}}
(&b_1^+,b_2,q^+,q^+;\\
 &b_1^-,b_2,q^-,q^-), \tag{7.8}
\end{align}$$

where $\mathcal N_{\mathrm{FS}}^\pm$ denotes the product of the already fixed branchwise factors (7.5) over the relevant slices. If the cap is composed first, the $b_2^+=b_2^-$ delta is integrated before the port deltas. If sewing is composed first, $q_1^\pm=q_2^\pm=q^\pm$ is imposed before the $b_2$ integral. Absolute integrability gives finite-dimensional Tonelli/Fubini, and the determinant/half-density factors are identical constants in the two orders. Equivalently, the cap conormal and sewing conormals are transverse because they involve disjoint split-adapted coordinate sectors. $\square$

For finite Lorentzian positive quadratic kernels, (7.7) may be obtained from the Euclidean Gaussian identity by the same analytic continuation and metaplectic/Maslov branch convention already used for the sewn propagator, away from caustics and distributionally across them. This does not prove an interchange theorem for arbitrary oscillatory kernels, singular canonical relations, nonlinear interactions, or infinite-dimensional history measures.

Equation (7.7) is the kernel-composition realization of the algebraic square (4.5) plus the finite state restriction (5.4). Spatial sewing composes the two regional port branches; partial trace caps the bra/ket copies of the right bulk. They are different relations on different doubled variables.

## 8. Continuum Endpoint

### 8.1 The Finite Port Does Not Become a Continuum Tensor Factor

For the centered scalar, the reconstructed regional field is

$$\begin{align}
\phi_{1,N}(y) =\sum_{n=1}^NC_{1,n}u_n(y)+q\,e_N(y), \tag{8.1}
\end{align}$$

with

$$\begin{align}
e_N&=h-P_N^0h,& 2\|e_N\|_{L^2(0,L)}^2&=\rho_N\longrightarrow0. \tag{8.2}
\end{align}$$

For every fixed $L^2$ bulk smearing $f$, $(f,e_N)\to0$. The regulator-dependent residual direction can isolate $(q,\pi)$ at each finite $N$, but it does not converge to a continuum point oscillator or a normal boundary tensor factor. The point-field variance at the cut is ultraviolet divergent, and the continuum velocity has no point trace on the full energy space.

### 8.2 The Durable Continuum Object

Under the Mosco/strong-resolvent/functional-calculus and fixed-label hypotheses already proved in the existing scalar notes, the finite regional expectations converge on each fixed finite family of bulk/Weyl labels to

$$\begin{align}
\boxed{ \omega_1 =\omega_{\mathrm{conn}}|_{\mathfrak A_1^{\mathrm{bulk}}}.
} \tag{8.3}
\end{align}$$

This is algebraic state restriction. The finite density matrix is only a convenient representative at each cutoff. No claim is made of

$$\begin{align}
\rho_{1,N}\to\rho_1 \quad\text{in trace norm}, \tag{8.4}
\end{align}$$

or of a sharp factorization

$$\begin{align}
\mathcal H_{\mathrm{conn}} \simeq\mathcal H_1\otimes\mathcal H_2, \tag{8.5}
\end{align}$$

or of a generic continuum map $\operatorname{Tr}_2$.

The AdS$_2$--Rindler regulated partial-trace note reaches the analogous endpoint from a different finite regulator:

$$\begin{align}
\rho_R^{(\Lambda)} =\operatorname{Tr}_L\rho_G^{(\Lambda)} \quad\longrightarrow\quad \omega_G|_{\mathfrak A(R)} \tag{8.6}
\end{align}$$

on fixed smooth right-wedge observables. Its lattice factorization is a global-Cauchy regulator statement and contains no duplicate-port sewing reduction. This independent example confirms the separation between finite Type-I partial trace and continuum algebraic restriction.

The present notes do not prove a Type-III classification. Type-III local-algebra issues belong to the continuum representation problem and are compatible with the absence of a density matrix, but they must not be used as a substitute for a model-specific algebra theorem.

## 9. Claim and Theorem Audit

| layer | statement | status | assumptions/evidence | excluded inference |
|---|---|---|---|---|
| abstract finite | split-adapted decomposition (2.4)--(2.5) implies the discard--sewing square (4.5) | **Proved under the displayed hypothesis** | finite nondegenerate symplectic direct sums; sewing normal sector acts only on ports; Weyl relative-commutant factorization | not a theorem for arbitrary regulators or dynamics |
| abstract finite | $\mathcal D_2$ is retained-observable selection and keeps both incidence ports before sewing | **Proved under the displayed hypothesis** | (4.4)--(4.7) | not a partial trace or conditional expectation |
| centered scalar | region-wise canonical split, $r_N=\rho_N/2$, common/relative transformation, $\mathcal N_{\Gamma,N}=\operatorname{span}(\xi,\eta)$, and $\pi=\rho_N\dot q$ | **Proved analytically; checked symbolically** | equations (3.3)--(3.19); finite $N$, centered cut, common lifting $h=y/L$, outer Dirichlet data | benchmark does not prove generic split-adaptedness |
| centered scalar | unconstrained parent Hamiltonian preserves physical/normal factors | **Not proved and generally false without extra block diagonality** | bulk--port stiffness coupling remains in (3.10) | no automatic parent-ground-state factorization or correct glued marginal |
| finite Type I | algebraic restriction to $\mathfrak A_{1\Gamma}$ is represented by $\rho_{1\Gamma}=\operatorname{Tr}_2\rho_{\mathrm{gl}}$ | **Proved** | finite regular Schrödinger representation and exact factorization (5.2) | no ownership of the common port and no continuum trace map |
| finite Type I | $\rho_1^{\mathrm{int}}=\operatorname{Tr}_{2,\Gamma}\rho_{\mathrm{gl}}$ | **Proved as a different subsystem choice** | complementary split $1\,|\,(2+\Gamma)$ | not equivalent to the port-complete reduction |
| parent extension | tracing $\mathcal H_{\mathcal N}$ realizes restriction to the physical factor for a chosen parent extension | **Proved at representation level** | one declared $\widetilde\rho$ satisfying (6.2) | not the definition of reduction; extension not canonical |
| doubled kernel | right-bulk cap and branchwise port sewing may be interchanged | **Proved for the displayed finite Gaussian class** | split variables, trace-class/Euclidean positive Gaussian integrability, fixed Faddeev--Senjanović and half-density normalization | not an identification of cap with sewing; not an arbitrary Lorentzian/infinite-dimensional theorem |
| continuum centered scalar | finite regional restrictions converge on fixed bulk/Weyl labels to $\omega_{\mathrm{conn}}|_{\mathfrak A_1^{\mathrm{bulk}}}$ | **Inherited proved theorem under the existing hypotheses** | existing Mosco, strong-resolvent, functional-calculus, and fixed-label state theorems | no trace-norm density-matrix limit, point oscillator, or Hilbert tensor factor |
| continuum AdS$_2$--Rindler | finite lattice partial trace converges on fixed wedge labels to $\omega_G|_{\mathfrak A(R)}$ | **Inherited proved theorem under that note's hypotheses** | factorizing global Cauchy lattice and fixed-label form convergence | not a port-gluing theorem and not a continuum partial trace |
| open/general | noncentral/nonconforming and field-valued-port regulators | **Open in this split/discard formulation** | must construct a compatible $\mathcal B_i\oplus^\sigma\mathcal Z_i$ and control both UV scales | centered parity benchmark is insufficient |
| open/general | gauge theory and gravity | **Open** | first solve constraints, proper gauge quotient/edge completion, boundary charges, admissible IBVP, and reconstruction | do not transplant the scalar relative commutant or add edge oscillators by dimension counting |
| open/general | interactions and nonlinear canonical relations | **Open** | require composition/domain and state-control theorems beyond finite Gaussian Fubini | no generic $T\circ R\simeq R\circ T$ |
| open/general | continuum local-algebra type and modular theory | **Open here** | model-specific von Neumann/GNS analysis required | no Type-III classification follows from entropy growth or failed tensor factorization alone |

## 10. Logical Chain and Cross-Checks

The rigorous chain is

$$
\begin{gathered}
\text{regional actions and covariant full-trace sewing relation}\\
\Downarrow\ \text{finite split-adapted duplicate-port realization}\\
\mathcal S^{\mathrm{dup}}
=\mathcal B_1\oplus^\sigma\mathcal B_2
\oplus^\sigma\mathcal Z_\Delta\oplus^\sigma\mathcal N_\Gamma\\
\Downarrow\ R_\Gamma\\
\mathfrak A_{\mathrm{gl}}
=\mathfrak W(\mathcal B_1\oplus^\sigma\mathcal B_2\oplus^\sigma\mathcal Z_\Delta)\\
\Downarrow\ \mathcal D_2\\
\mathfrak A_{1\Gamma}
=\mathfrak W(\mathcal B_1\oplus^\sigma\mathcal Z_\Delta)\\
\Downarrow\ \operatorname{res}_{1\Gamma}\\
\omega_{1\Gamma}
=\omega_{\mathrm{gl}}|_{\mathfrak A_{1\Gamma}}\\
\Downarrow\ \text{finite regular Type I only}\\
\rho_{1\Gamma}=\operatorname{Tr}_2\rho_{\mathrm{gl}}\\
\Downarrow\ N\to\infty\ \text{on fixed bulk labels only}\\
\omega_{\mathrm{conn}}|_{\mathfrak A_1^{\mathrm{bulk}}}.
\end{gathered} \tag{10.1}
$$

Cross-checks used in this note:

- `gluing formalism.md`, Parts IV--V: covariant relation versus equal-time constraints, finite coisotropic/second-class reduction, physical Weyl relative commutant, parent normal-factor caution, and normalized sewing kernels;
- `reduced-state-open-system-scalar.md`: exact post-sewing Darboux split, overlapping shared-port algebras, finite partial traces, operator elimination, CPTP distinction, and fixed-bulk-label continuum restriction;
- `ads2-rindler regulated partial trace.md`: factorizing finite global regulator, partial trace as principal covariance block, and continuum wedge state restriction without trace-norm or sharp Hilbert-factor claims;
- `formalism.md`: action-derived centered scalar sign conventions, the conforming $(2N+1)$-pair regulator, and the $\rho_N$ shared-port equation.

Verified: a fresh Wolfram calculation returns true for the regional mass Schur shear, the regional canonical one-form, the common/relative canonical one-form, $r_N=\rho_N/2$, the constraint bracket $2/r_N=4/\rho_N$, the sewn momentum $\pi=\rho_N\dot q$, and the sheared regional stiffness matrix.

Assumptions: finite centered bounded massive scalar; $L,m>0$; physical outer Dirichlet conditions; one common cutoff $N$ and lift $h(y)=y/L$; regular finite CCR representation only where a density matrix or partial trace is written; positive/trace-class Gaussian hypotheses for the doubled-kernel theorem.

Not verified: split-adaptedness for arbitrary regulators; a state-level gluing functor on independently chosen regional states; trace-norm convergence of reduced density matrices; a sharp continuum Hilbert tensor factor or partial-trace operator; continuum point-port observables; a general interacting, gauge-theoretic, gravitational, or Type-III theorem.
