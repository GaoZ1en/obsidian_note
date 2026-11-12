# Independent derivation: the first-order $T\bar T$ Ising Hamiltonian and operator dynamics

This calculation was made independently of the main project notes or candidate results. Only the applicable repository rules and the canonical-quantization / finite-time perturbation sections of [the formalism note](</Users/koishi/Documents/Note/Articles/Quantization in AdS/perturbation/formalism.md#L132-L204>) were consulted. This is a new review note, not an edit of an existing derivation.

## Result and status

For the deformation normalization specified below, the **local first-order perturbation** is

$$
\boxed{
H_\lambda=H_0+\lambda V_1+O(\lambda^2),\qquad
V_1=-\frac{16\pi^2}{L^3}
\sum_{n\in\mathbb Z}
\left(L_n-\frac{c}{24}\delta_{n0}\right)
\left(\bar L_n-\frac{c}{24}\delta_{n0}\right),\quad c=\frac12.
}
$$

The equal indices are important: the two chiral stress tensors have opposite spatial Fourier conventions. The $n\ne0$ terms create or annihilate paired descendants. They cannot be omitted if the operators are held fixed in the undeformed CFT representation.

The formula is a renormalized-CFT local-field insertion / perturbative quadratic form, with a regulator needed for its action on states. In particular, its formal first-order vacuum correction has divergent Hilbert-space norm as the cutoff is removed. This obstructs a differentiable vacuum vector in this particular undeformed representation; **it does not prove that the deformed theory does not exist**. Genuine second-order terms and UV counterterms are required before taking higher-order continuum limits.

The exact finite-volume energy formula fixes energy eigenvalues, not the local Hamiltonian matrix, the operator identification, or all counterterms. The fixed-operator correlator exhibited below is therefore explicitly tied to a stated operator prescription.

## 1. Conventions and normalization

Set $\hbar=v=1$, take $x\sim x+L$, and use Minkowski signature $(-,+)$. Here $c_L=c_R=c=1/2$; the symbol $c$ is not $c_L+c_R$. The dimensionless Virasoro modes obey

$$
[L_m,L_n]=(m-n)L_{m+n}
 +\frac{c}{12}m(m^2-1)\delta_{m+n,0},\qquad
L_n^\dagger=L_{-n},\qquad [L_m,\bar L_n]=0,
$$

with the same algebra in the barred sector. Write

$$
k=\frac{2\pi}{L},\qquad
A_n=L_n-\frac{c}{24}\delta_{n0},\qquad
B_n=\bar L_n-\frac{c}{24}\delta_{n0}.
$$

These are cylinder stress modes, so that

$$
[A_m,A_n]=(m-n)A_{m+n}+\frac{c}{12}m^3\delta_{m+n,0}.
$$

At $t=0$, define the right- and left-moving **physical chiral energy densities** by

$$
t_R(x)=\frac{2\pi}{L^2}\sum_n A_n e^{+iknx},\qquad
t_L(x)=\frac{2\pi}{L^2}\sum_n B_n e^{-iknx}.
$$

For example, the corresponding Euclidean coordinates can be chosen as $w_R=\tau-i x$ and $w_L=\tau+i x$; their cylinder stress tensors are $T_R=2\pi t_R$ and $T_L=2\pi t_L$. This specifies the orientation instead of relying on a naming convention for “holomorphic.” Free evolution gives $t_R(t,x)=t_R(0,x-t)$ and $t_L(t,x)=t_L(0,x+t)$.

With the symmetric physical stress tensor,

$$
T^{00}_0=T^{11}_0=t_R+t_L,\qquad T^{01}_0=t_R-t_L,
$$

and hence

$$
H_0=k(A_0+B_0),\qquad
P=k(A_0-B_0)=k(L_0-\bar L_0).
$$

The normalization to be matched is

$$
E_\lambda=
\frac{L}{2\lambda}
\left[
\sqrt{1+\frac{4\lambda E_0}{L}
        +\frac{4\lambda^2P^2}{L^2}}-1
\right],
$$

on the branch continuous at $\lambda=0$. Thus

$$
E_\lambda=E_0+
\lambda\frac{P^2-E_0^2}{L}
+\lambda^2\frac{2E_0(E_0^2-P^2)}{L^2}
+O(\lambda^3).
$$

The dimensions are $[\lambda]=L^2$, $[t_R]=[t_L]=L^{-2}$, $[H_0]=L^{-1}$, $[V_1]=L^{-3}$, and $[V_2]=L^{-5}$ when $H_\lambda=H_0+\lambda V_1+\lambda^2 V_2+\cdots$.

## 2. Local stress product, not just a diagonal spectral function

At the CFT point,

$$
(T^{00}_0)^2-(T^{01}_0)^2=4t_Rt_L.
$$

The left-right product has no singular mixed chiral OPE. It defines the usual CFT $T\bar T$ insertion, retaining the cylinder Casimir terms. Its normalization and sign required by the preceding energy formula are

$$
V_1=-4\int_0^L dx\,t_R(x)t_L(x)
=-\frac1{\pi^2}\int_0^L dx\,T_R(x)T_L(x).
$$

The spatial integral sets the two mode indices equal:

$$
V_1=-g\left[
A_0B_0+
\sum_{n\ge1}(L_n\bar L_n+L_{-n}\bar L_{-n})
\right],\qquad g=\frac{16\pi^2}{L^3}.
$$

This is Hermitian after any symmetric finite-mode cutoff. Products here mean the CFT composite-field prescription or finite-energy matrix elements; they do not automatically define an everywhere-defined Hilbert-space operator.

For a simultaneous $L_0,\bar L_0$ eigenvector with eigenvalues $a,b$ (including descendant levels), only $n=0$ contributes to its diagonal matrix element:

$$
\langle V_1\rangle=-g(a-c/24)(b-c/24)
=\frac{P^2-E_0^2}{L}.
$$

Moreover,

$$
[H_0,L_n\bar L_n]=-2knL_n\bar L_n,\qquad
[P,L_n\bar L_n]=0.
$$

Every $n\ne0$ term changes the total energy by $-2kn$ but leaves momentum invariant. In a degenerate fixed-$(E_0,P)$ eigenspace, $V_1$ is a scalar at first order: there are no resonant $n\ne0$ matrix elements there. This statement does not eliminate mixing with different energies.

For comparison, the diagonal operator

$$
H_{\rm spec}(\lambda)=\frac{L}{2\lambda}
\left[\sqrt{1+\frac{4\lambda H_0}{L}
+\frac{4\lambda^2P^2}{L^2}}-1\right]
$$

has the prescribed spectrum where its branch is meaningful, but its first-order perturbation contains **only** $-gA_0B_0$. It is not the local stress-product Hamiltonian in the fixed CFT operator frame.

At a formal regulated first order, their relation is explicit. Define the anti-Hermitian generator

$$
S=-\frac{4\pi}{L^2}\sum_{n\ne0}\frac1n L_n\bar L_n,
\qquad S^\dagger=-S.
$$

Then

$$
[S,H_0]=-g\sum_{n\ne0}L_n\bar L_n,
\qquad
H_\lambda=e^{\lambda S}
\left[H_0+\frac{\lambda}{L}(P^2-H_0^2)\right]
e^{-\lambda S}+O(\lambda^2).
$$

Operators must be conjugated as well if this diagonal frame is used. The existence of the regulated $S$ is not a proof that its infinite-cutoff exponential is a unitary on the original CFT Hilbert space.

## 3. Actual first-order operator dynamics

In the fixed CFT operator prescription, the Heisenberg equations already differ from those of a diagonal function of $H_0,P$. The cylinder algebra gives

$$
\boxed{
\frac{dA_m}{dt}=-ikmA_m
-i\lambda g\left[
\sum_{n\in\mathbb Z}(n-m)A_{n+m}B_n
-\frac{c}{12}m^3B_{-m}
\right]+O(\lambda^2).
}
$$

Similarly,

$$
\frac{dB_m}{dt}=-ikmB_m
-i\lambda g\left[
\sum_{n\in\mathbb Z}(n-m)A_nB_{n+m}
-\frac{c}{12}m^3A_{-m}
\right]+O(\lambda^2).
$$

The terms nonlinear in the stress modes couple the two chiral sectors; the last terms are their central contributions. At finite truncation one must compute the commutator of the projected Hamiltonian and projected observable. Naively projecting this full-algebra identity can miss cutoff-boundary terms.

These $A_m,B_m$ are the CFT operators held fixed as the coupling varies. They should not be called the holomorphic modes of the deformed stress tensor: chirality is lost, and the deformed stress tensor itself has coupling-dependent composite-operator corrections.

## 4. Vacuum and primary-state mixing

The CFT vacuum obeys $L_n|0\rangle=\bar L_n|0\rangle=0$ for $n\ge-1$. Define

$$
C_n=\langle0|L_nL_{-n}|0\rangle
=\frac{c}{12}n(n^2-1),\qquad n\ge2.
$$

Then

$$
V_1|0\rangle=-g\left[
\left(\frac{c}{24}\right)^2|0\rangle
+\sum_{n\ge2}L_{-n}\bar L_{-n}|0\rangle
\right].
$$

The normalized paired state is

$$
|n\rangle=\frac1{C_n}L_{-n}\bar L_{-n}|0\rangle,
\qquad E_n^{(0)}-E_{\rm vac}^{(0)}=2kn.
$$

At finite cutoff, with the first-order correction orthogonal to $|0\rangle$,

$$
|\Omega_\lambda\rangle=|0\rangle
+\lambda\frac{4\pi}{L^2}
\sum_{n=2}^{N}\frac1n L_{-n}\bar L_{-n}|0\rangle
+O(\lambda^2).
$$

In the normalized basis its coefficients are

$$
\lambda\frac{4\pi C_n}{nL^2}
=\lambda\frac{\pi c}{3L^2}(n^2-1)
=\lambda\frac{\pi}{6L^2}(n^2-1)
\quad(c=1/2).
$$

The positive sign follows from a negative matrix element divided by a negative energy denominator.

For an initial primary $|h,\bar h\rangle$, replace $n\ge2$ by $n\ge1$ and use

$$
|h,\bar h\rangle_\lambda=
|h,\bar h\rangle+
\lambda\frac{4\pi}{L^2}\sum_{n\ge1}\frac1n
L_{-n}\bar L_{-n}|h,\bar h\rangle+O(\lambda^2),
$$

with zero-norm vectors omitted in the irreducible module. The one-chiral-sector descendant norm is

$$
C_n(h)=2nh+\frac{c}{12}n(n^2-1).
$$

For the bosonic Ising spin state, $h=\bar h=1/16$, the normalized $n=1$ pair therefore has coefficient $\lambda\pi/(2L^2)$. This is an explicit excited-state mixing example, not merely a shifted energy.

The finite-time Dyson transition from the undeformed vacuum is also nonzero. With an interaction switched on at $t=0$ and $U_I$ in the free interaction picture,

$$
\langle n|U_I(t,0)|0\rangle
=\lambda\frac{4\pi C_n}{nL^2}
\left(e^{i4\pi nt/L}-1\right)+O(\lambda^2).
$$

This is a finite-time quench amplitude. It is distinct from adiabatic ground-state mixing and is not an infinite-time S-matrix claim.

## 5. A fixed-mode correlator that detects the off-diagonal terms

Hold the undeformed CFT mode operators fixed and use the regulated deformed ground state above. For $m\ge2$,

$$
\langle\Omega_\lambda|L_m\bar L_m|\Omega_\lambda\rangle
=\lambda\frac{4\pi}{mL^2}C_m^2+O(\lambda^2).
$$

Only the ket correction contributes: $L_m\bar L_m$ annihilates the unperturbed vacuum. The conjugate expectation of $L_{-m}\bar L_{-m}$ is equal and real.

In particular, since $C_2=c/2=1/4$,

$$
\boxed{
\left.\frac{d}{d\lambda}
\langle L_2\bar L_2\rangle_\lambda\right|_0
=\frac{\pi}{8L^2}.
}
$$

Equivalently, for Hermitian modes $X_2=L_2+L_{-2}$ and $Y_2=\bar L_2+\bar L_{-2}$,

$$
\langle X_2Y_2\rangle_{\lambda,c}
=\lambda\frac{\pi}{4L^2}+O(\lambda^2).
$$

These first derivatives are independent of a larger cutoff once the level-$(2,2)$ state is included. A Hamiltonian equal only to $H_{\rm spec}(\lambda)$ with these operators left unchanged would give zero instead. A conjugated operator prescription can, of course, recover the same result in a diagonal frame.

The expression is **not** claimed to be a universal renormalized deformed-stress correlator: adding a coupling-dependent operator redefinition changes that question. It is a nontrivial, fully specified fixed-CFT-operator observable.

## 6. Vacuum energy, pressure, and current

For Ising,

$$
E_{\rm vac}^{(0)}=-\frac{\pi}{12L},\qquad
\langle0|V_1|0\rangle=-\frac{\pi^2}{144L^3}.
$$

Thus the first-order sign and normalization agree with the exact spectral branch,

$$
E_{\rm vac}(\lambda)
=\frac{L}{2\lambda}
\left[\sqrt{1-\frac{\pi\lambda}{3L^2}}-1\right]
=-\frac{\pi}{12L}
-\lambda\frac{\pi^2}{144L^3}
-\lambda^2\frac{\pi^3}{864L^5}+\cdots.
$$

At fixed coupling, the vacuum pressure is $p_{\rm vac}=-\partial_LE_{\rm vac}$. With $s=\sqrt{1-\pi\lambda/(3L^2)}$,

$$
\rho_{\rm vac}=\frac{s-1}{2\lambda},\qquad
p_{\rm vac}=\frac{1-s^{-1}}{2\lambda},
$$

so

$$
p_{\rm vac}=-\frac{\pi}{12L^2}
-\lambda\frac{\pi^2}{48L^4}+O(\lambda^2),\qquad
p_{\rm vac}-\rho_{\rm vac}
=-\lambda\frac{\pi^2}{72L^4}+O(\lambda^2).
$$

Translation invariance gives zero vacuum momentum/current. More generally, if the deformed stress remains symmetric and translations are normalized as above, its homogeneous energy-current expectation is $P/L$, while its pressure is $-\partial_LE$ at fixed quantum numbers. Spectral knowledge controls these integrated/one-point responses; it does not control the preceding off-diagonal correlator by itself.

## 7. Sharp mode cutoff: divergent vacuum derivative and second-order energy

Here $N$ means a cutoff on transferred mode number in $V_1$. The same expressions arise for a vacuum calculation with a total descendant-level cutoff $K$ and $N=\lfloor K/2\rfloor$.

The norm of the first vacuum derivative is

$$
\left\|\left.\partial_\lambda
|\Omega_\lambda\rangle\right|_0\right\|_N^2
=\frac{16\pi^2}{L^4}
\sum_{n=2}^{N}\frac{C_n^2}{n^2}
=\frac{\pi^2c^2}{9L^4}
\sum_{n=2}^{N}(n^2-1)^2.
$$

For $c=1/2$ this grows as $\pi^2N^5/(180L^4)$. Likewise, $V_1|0\rangle$ itself has an infinite norm in the unregulated CFT Hilbert space, since its squared creation coefficients scale as $\sum n^6$.

This is stronger than an energy-counterterm issue: adding $\lambda^2V_2$ cannot repair the first vacuum derivative in the fixed Hilbert norm. More precisely, suppose a normalized vacuum family is Hilbert-norm differentiable at zero and its eigenvalue equation can be differentiated weakly against every finite-energy paired descendant, with derivative insertion exactly $V_1$ above. The weak eigenvalue equation forces all the displayed vacuum-derivative coefficients. Their nonsummability contradicts Bessel's inequality. These assumptions therefore cannot all hold in the fixed CFT representation.

A differentiable unitary vacuum flow implementing this particular first-order insertion is consequently not supplied by the formal series. The result still permits renormalized matrix-element/correlation-function perturbation theory, a cutoff theory, different representations, and theories whose vacuum depends nonanalytically or non-differentiably on the coupling. No nonexistence theorem for $T\bar T$ Ising follows.

The iterated-$V_1$ contribution to the second-order vacuum energy is

$$
E^{(2)}_{{\rm vac},\,\mathrm{mix}}(N)
=\sum_{n=2}^{N}
\frac{|\langle n|V_1|0\rangle|^2}
{E^{(0)}_{\rm vac}-E_n^{(0)}}
=-\frac{64\pi^3}{L^5}
\sum_{n=2}^{N}\frac{C_n^2}{n}.
$$

For Ising this becomes

$$
\boxed{
E^{(2)}_{{\rm vac},\,\mathrm{mix}}(N)
=-\frac{\pi^3}{9L^5}\,S_N,
\qquad
S_N=\sum_{n=1}^{N}n(n^2-1)^2
=\frac{(N-1)N(N+1)(N+2)(2N^2+2N-3)}{12}.
}
$$

In particular $S_N=N^6/6+N^5/2-N^4/12-N^3-N^2/12+N/2$. The leading divergence is $-\pi^3N^6/(54L^5)$. This is not the finite exact coefficient $-\pi^3/(864L^5)$.

Writing $H_\lambda=H_0+\lambda V_1+\lambda^2V_2(N)+\cdots$, matching the specified exact vacuum energy requires

$$
\boxed{
\langle0|V_2(N)|0\rangle
=\frac{\pi^3}{9L^5}S_N
-\frac{\pi^3}{864L^5}
}
$$

in this regulator and matching convention. This is a necessary diagonal matching condition, **not a derivation of a unique local $V_2$ operator**. $V_2$ includes the genuine next term of the deformation and regulator-dependent counterterms; their split is convention-dependent. Dropping $V_2$ is inconsistent with the exact spectrum already in the vacuum.

## 8. State-dependent UV structures and what counterterms must accomplish

For a normalized primary $|h,\bar h\rangle$, the same mode cutoff gives

$$
E^{(2)}_{h,\bar h,\,\mathrm{mix}}(N)
=-\frac{64\pi^3}{L^5}
\sum_{n=1}^{N}\frac{C_n(h)C_n(\bar h)}n.
$$

Define the actual cutoff sums

$$
S_N=\sum n(n^2-1)^2,\qquad
R_N=\sum n(n^2-1)=\frac{(N-1)N(N+1)(N+2)}4,\qquad
Q_N=\sum n=\frac{N(N+1)}2.
$$

Then

$$
E^{(2)}_{h,\bar h,\,\mathrm{mix}}(N)
=-\frac{64\pi^3}{L^5}
\left[\frac{c^2}{144}S_N+\frac{c}{6}(h+\bar h)R_N+4h\bar h\,Q_N\right].
$$

Thus a vacuum-energy subtraction alone does not renormalize all states. In this noncovariant sharp mode regulator there are $N^6$, $(h+\bar h)N^4$, and $h\bar hN^2$ divergences. Their leading diagonal structures are those of an identity term, a stress/energy renormalization, and a stress-product renormalization. Written with a physical cutoff $\Lambda\sim2\pi N/L$, their dimensional forms are schematically

$$
V_{2,\mathrm{ct}}\sim\int dx\,
\bigl(\Lambda^6\mathbf1+\Lambda^4\,\text{stress}
+\Lambda^2\,\text{stress}^2+\text{dimension-six local terms}\bigr),
$$

with regulator-dependent coefficients and possible derivative/contact terms. This is a structural interpretation of diagonal divergences, not a complete off-diagonal counterterm classification. A Lorentz-covariant spacetime regulator can organize the power divergences differently; for example, angular selection rules matter. One must not copy these sharp-mode coefficients directly into a covariant action.

For any state of finite descendant level, sufficiently large $n$ annihilates it in each positive chiral mode. The high-$n$ commutator then gives the same $C_n(L_0)$ and $C_n(\bar L_0)$ polynomials. Consequently the displayed divergent diagonal structures extend beyond primaries, while finitely many lower-$n$ contributions depend on the specific descendant.

The spectrum imposes

$$
\langle A|V_2(N)|A\rangle+
E^{(2)}_{A,\mathrm{mix}}(N)
\longrightarrow
\frac{2E_A^{(0)}[(E_A^{(0)})^2-P_A^2]}{L^2},
$$

with degenerate subspaces treated by effective-Hamiltonian perturbation theory. It does not fix all off-diagonal matrix elements, contact terms, or the operator renormalization scheme. Deriving them requires a definition of the local deformation beyond its spectrum.

## 9. What finite truncation does and does not establish

Take the physical irreducible Ising modules, quotienting null vectors, and an orthogonal descendant-level cutoff projector $\Pi_K$ onto finitely many states, commuting with $H_0,P$ and the sector projectors. Then

$$
H_K=\Pi_KH_0\Pi_K+\lambda\Pi_KV_1\Pi_K
$$

is a finite Hermitian matrix, conserves momentum, and preserves each left-right Virasoro sector. Its first-order energy shifts agree exactly with the prescribed formula for all retained CFT energy states. Its eigenvectors display the paired-descendant mixing above. These are finite-dimensional facts, not claims about an unrenormalized continuum limit.

Important qualifications:

- For a total-energy cutoff, form the matrix elements of the full product before projecting. Inserting separate intermediate projections can change the Hamiltonian unless the cutoff factorizes appropriately.
- Projected Virasoro generators do not satisfy the full infinite-dimensional algebra at the cutoff boundary. Use the projected commutator for finite-matrix dynamics.
- Increasing $K$ with only $H_0+\lambda V_1$ does not furnish cutoff-independent second-order energies. The explicit $N^6$ vacuum sum is a counterexample.
- For $\lambda>0$, the first-order diagonal correction eventually dominates negatively at high conformal level, although the specified exact spectral branch has very different high-energy behavior. This is breakdown of the perturbative truncation, not by itself an instability theorem for the exact theory.
- The expansion parameter for an individual high-energy eigenvalue is $\lambda E_0/L$. State-vector perturbation has a stronger UV accumulation: the vacuum correction has norm squared $\sim\lambda^2N^5/L^4$. A small error in low energies alone is therefore not a bound on the full vacuum vector.
- The exact Ising vacuum square root is real on the positive-coupling branch only for $\lambda\le3L^2/\pi$. At negative coupling sufficiently high energies encounter a branch obstruction. These spectral restrictions and perturbative state-vector issues are different statements.

## 10. Bosonic Ising versus a spin Majorana theory

The diagonal bosonic Ising Hilbert space is

$$
\mathcal H_{\mathrm{Ising}}=
(\mathcal V_0\otimes\bar{\mathcal V}_0)
\oplus(\mathcal V_{1/2}\otimes\bar{\mathcal V}_{1/2})
\oplus(\mathcal V_{1/16}\otimes\bar{\mathcal V}_{1/16}),
$$

where the $c=1/2$ modules are irreducible. The stress perturbation preserves each of these summands.

A free Majorana fermion with a chosen spin structure is not automatically this bosonic theory. A fixed NS spin-theory Hilbert space before parity projection has independent even/odd chiral sectors and can include mixed $(0,1/2)$ and $(1/2,0)$ modules. Ramond quantization has fermion zero modes and parity subtleties. Bosonic Ising is obtained through the appropriate fermion-parity projection and inclusion of the twisted/Ramond sector, not by blindly using one Majorana Fock space or doubling the $\sigma$ sector.

The local stress/Virasoro calculation above applies sector by sector, but the allowed states, degeneracies, fermionic operators, spin-field insertions, and thermal/spatial boundary conditions depend on which theory is meant. The bosonic Ising spin field changes fermionic boundary conditions; stress insertions do not. A CAR implementation must therefore state its NS/R sector and projection before claiming to represent the full bosonic Ising Hamiltonian.

## 11. Verification and remaining scope

**Verified analytically:** stress normalization and Casimir shifts; diagonal first-order spectrum; energy/momentum selection rules; first-order vacuum and primary mixing; mode commutators; the fixed-mode correlator; the explicit UV sums and their interpretation as an obstruction to a norm-differentiable vacuum in the fixed representation.

**Verified with Mathematica, fresh kernels and no reported messages:**

1. The energy square root expands with coefficients $(P^2-E_0^2)/L$ and $2E_0(E_0^2-P^2)/L^2$.
2. The exact polynomial formulas for $S_N,R_N,Q_N$ and the general-$c$ second-order vacuum summand agree.
3. An independently formed normalized two-state matrix on $|0\rangle,|2\rangle$ gives $\partial_\lambda\langle L_2\bar L_2\rangle|_0=\pi/(8L^2)$ from its ground-state spectral projector.
4. The same two-state matrix has iterated-$V_1$ vacuum energy coefficient $-2\pi^3/L^5$, exactly the $N=2$ term of the full sum. It does not equal the exact deformed vacuum coefficient; this is a concrete finite-truncation warning.

For that two-state check, the matrix used was

$$
H_{2\times2}=
\begin{pmatrix}E_v&0\\0&E_v+8\pi/L\end{pmatrix}
-\lambda\frac{16\pi^2}{L^3}
\begin{pmatrix}(1/48)^2&1/4\\1/4&(2-1/48)^2\end{pmatrix},
\qquad
L_2\bar L_2\big|_{2\times2}=
\begin{pmatrix}0&1/4\\0&0\end{pmatrix}.
$$

**Assumptions:** undeformed Ising CFT composite-field prescription; the coupling normalization in section 1; periodic bosonic cylinder or an explicitly selected compatible fermionic sector; symmetric sharp mode cutoff for the UV sums; no coupling-dependent redefinition of the CFT modes in the displayed correlator.

**Not established here:** a unique renormalized second-order local Hamiltonian, all off-diagonal counterterms, an exact self-adjoint continuum Hamiltonian in the undeformed CFT representation, the full finite-coupling operator map/correlators, or an independent second researcher’s verification of this review. The delegation depth allowed a direct independent derivation but no further nested reviewer. None of these missing results is supplied by the exact spectral square root alone.
