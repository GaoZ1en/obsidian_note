# 4d flat \(\phi^3/\phi^4\) 对 CPS-pAQFT formalism 的首轮检验

日期：2026-07-09

## 0. Direct verdict

The CPS-pAQFT formalism passes the first 4d flat scalar check under standard perturbative assumptions:

1. CPS free symplectic form fixes the causal propagator \(E\) and hence the CCR.
2. The pAQFT Bogoliubov map \(R_V(F)\) has a classical \(\hbar^0\) limit equal to the retarded tree solution.
3. The same \(S(V)\) gives the standard tree-level \(2\to2\) amplitude in \(\phi^3+\phi^4\):
   \[
   \mathcal M_4^{\rm tree}
   =
   -g_4
   -g_3^2
   \left(
   \frac{1}{s-m^2}
   +\frac{1}{t-m^2}
   +\frac{1}{u-m^2}
   \right),
   \]
   with the usual \(i\epsilon\) prescription.
4. One-loop terms appear from \(\star\)- and \(T\)-contractions, not from the classical tree solution.

The check forces three refinements to the formalism:

- one must distinguish the sign of the interaction functional \(V\) from the sign convention in the EOM;
- \(\Omega\) fixes \(E\), but it does not by itself fix the Hadamard two-point function \(H\);
- scattering requires an adiabatic limit or a clear compact-support/cutoff interpretation.

## 1. Model and sign convention

Take Minkowski signature \((-+++)\) and

\[
S[\phi]=S_0[\phi]+V[\phi],
\]

where

\[
S_0[\phi]
=\int d^4x\,
\left[
-\frac12\partial_\mu\phi\partial^\mu\phi
-\frac12m^2\phi^2
\right],
\]

\[
V[\phi]
=-\int d^4x\,\chi(x)
\left[
\frac{g_3}{3!}\phi^3
+\frac{g_4}{4!}\phi^4
\right].
\]

Here \(\chi\) is a compact support switching function. The adiabatic scattering limit is \(\chi\to1\), if it exists.

The Euler-Lagrange equation in the interaction region is

\[
(\Box-m^2)\phi
-\frac{g_3}{2}\phi^2
-\frac{g_4}{3!}\phi^3=0.
\]

Equivalently,

\[
K\phi
=\frac{g_3}{2}\phi^2+\frac{g_4}{3!}\phi^3,
\qquad K:=\Box-m^2.
\]

Thus the classical retarded solution is

\[
\phi(x)=\phi_0(x)
+\int d^4z\,G_R(x-z)
\left[
\frac{g_3}{2}\phi(z)^2
+\frac{g_4}{3!}\phi(z)^3
\right].
\]

This matches the sign convention in the previous classical tree notes.

## 2. Free CPS and CCR

The free symplectic form is

\[
\Omega_0
=\int_{\Sigma_t}d^3\mathbf x\,
\delta\dot\phi\wedge\delta\phi.
\]

Its inverse is the causal propagator

\[
E=E_R-E_A.
\]

For smeared fields

\[
\Phi(f)=\int d^4x\,f(x)\phi(x),
\]

the Peierls bracket is

\[
\{\Phi(f),\Phi(g)\}=E(f,g).
\]

Quantization gives

\[
[\hat\Phi(f),\hat\Phi(g)]
=i\hbar E(f,g).
\]

This is where CPS enters concretely. It fixes the antisymmetric part of the two-point structure and the canonical normalization of asymptotic one-particle states.

To define Wick products, choose a Poincare-invariant Hadamard two-point function \(H\) with

\[
H(x,y)-H(y,x)=iE(x,y).
\]

For scattering, the corresponding Feynman distribution is

\[
\Delta_F(p)=\frac{i}{p^2+m^2-i\epsilon}
\]

in \((-+++)\) convention, or equivalently \(i/(p_{\rm mostly-minus}^2-m^2+i\epsilon)\) in the more common \((+---)\) convention. The amplitude formula below is written in the usual Mandelstam convention:

\[
\mathcal M_4^{\rm tree}
=-g_4-g_3^2\left[(s-m^2)^{-1}+(t-m^2)^{-1}+(u-m^2)^{-1}\right].
\]

## 3. Bogoliubov interacting field and classical limit

Define

\[
S(V)=\exp_T\left(\frac{i}{\hbar}V\right).
\]

The interacting observable is

\[
R_V(F)
=\frac{\hbar}{i}
\left.
\frac{d}{d\lambda}
\left[
S(V)^{-1}_{\star}\star S(V+\lambda F)
\right]
\right|_{\lambda=0}.
\]

For \(F=\Phi(f)\), the classical limit is

\[
R_V(\Phi(f))\big|_{\hbar^0}
=\int d^4x\,f(x)\phi_{\rm ret}(x),
\]

where \(\phi_{\rm ret}\) solves the retarded nonlinear equation above.

At first order, using

\[
\frac{\delta V}{\delta\phi(z)}
=-\chi(z)
\left[
\frac{g_3}{2}\phi(z)^2
+\frac{g_4}{3!}\phi(z)^3
\right],
\]

the classical retarded correction is

\[
\phi_{\rm ret}(x)
=\phi_0(x)
-\int d^4z\,E_R(x,z)
\frac{\delta V}{\delta\phi(z)}
+O(V^2).
\]

Thus

\[
\phi_{\rm ret}(x)
=\phi_0(x)
+\int d^4z\,E_R(x,z)\chi(z)
\left[
\frac{g_3}{2}\phi_0(z)^2
+\frac{g_4}{3!}\phi_0(z)^3
\right]
+O(g^2),
\]

which is exactly the earlier classical rooted-tree result. This verifies:

\[
R_V(F)\big|_{\hbar^0}
=F\circ r_V.
\]

## 4. Four-point scattering amplitude

The \(S\)-matrix expansion is

\[
S(V)
=1+\frac{i}{\hbar}V
+\frac{1}{2!}\left(\frac{i}{\hbar}\right)^2T(V,V)+\cdots.
\]

For external on-shell particles, LSZ amputation of the connected time-ordered four-point function gives the usual invariant amplitude.

### 4.1 Contact \(\phi^4\) contribution

The \(\phi^4\) term contributes

\[
\frac{i}{\hbar}
\left[
-\int d^4z\,\frac{g_4}{4!}\phi(z)^4
\right].
\]

Contracting four external fields with the four fields at \(z\) gives the vertex factor

\[
-ig_4.
\]

Therefore

\[
i\mathcal M_{4,\rm contact}=-ig_4,
\qquad
\mathcal M_{4,\rm contact}=-g_4.
\]

### 4.2 Exchange \(\phi^3\) contribution

At second order in \(g_3\),

\[
\frac{1}{2}
\left(\frac{i}{\hbar}\right)^2
T(V_3,V_3)
\]

contains two cubic vertices. The \(1/2!\) cancels the permutation of the two vertices, and the \(1/3!\) factors cancel the contractions at each cubic vertex.

For the \(s\)-channel:

\[
i\mathcal M_s
=(-ig_3)^2
\frac{i}{s-m^2+i\epsilon}
=-i\frac{g_3^2}{s-m^2+i\epsilon}.
\]

Thus

\[
\mathcal M_s
=-\frac{g_3^2}{s-m^2+i\epsilon}.
\]

Similarly,

\[
\mathcal M_t
=-\frac{g_3^2}{t-m^2+i\epsilon},
\qquad
\mathcal M_u
=-\frac{g_3^2}{u-m^2+i\epsilon}.
\]

The full tree amplitude is

\[
\boxed{
\mathcal M_4^{\rm tree}
=
-g_4
-g_3^2
\left[
\frac{1}{s-m^2+i\epsilon}
+\frac{1}{t-m^2+i\epsilon}
+\frac{1}{u-m^2+i\epsilon}
\right].
}
\]

This is the standard result. The CPS ingredient is not a new vertex rule; it is the normalization and causal bracket that underlie the propagator and LSZ normalization.

## 5. Correlator check: where loops enter

Consider the connected two-point function. The classical tree map alone cannot produce loop self-energy corrections. In pAQFT they arise from contractions in \(T_n\).

### 5.1 \(\phi^4\) tadpole

At first order in \(g_4\), the time-ordered product with

\[
V_4=-\int d^4z\,\frac{g_4}{4!}\phi(z)^4
\]

has a connected contribution where two fields at \(z\) contract with the two external fields and the remaining two contract with each other:

\[
G_2^{(1),\phi^4}(x,y)
\sim
(-ig_4)\frac{1}{2}
\int d^4z\,
\Delta_F(x-z)\Delta_F(z-y)\Delta_F(z,z).
\]

\(\Delta_F(z,z)\) is divergent and requires renormalization. This is a one-loop tadpole. It is absent from the classical retarded tree expansion.

### 5.2 \(\phi^3\) bubble

At second order in \(g_3\), the connected two-point function contains

\[
G_2^{(2),\phi^3}(x,y)
\sim
\frac{(-ig_3)^2}{2}
\int d^4z\,d^4w\,
\Delta_F(x-z)\Delta_F(y-w)
\Delta_F(z,w)^2.
\]

This is the one-loop bubble self-energy. Again it comes from time-ordered contractions, not from the classical solution map.

Thus the expansion has the expected structure:

\[
\text{classical rooted trees}
\subset
\hbar^0,
\qquad
\text{loops}
\subset
\hbar^{\ge1}.
\]

## 6. Ward identity check for spacetime translations

For spacetime translations, the free CPS charge is generated by

\[
\delta_\xi\phi=\xi^\mu\partial_\mu\phi.
\]

The classical stress tensor gives

\[
\delta P_\xi=\iota_{X_\xi}\Omega.
\]

In the quantum interacting theory one should write

\[
T_{V}^{\mu\nu}
=R_V(T^{\mu\nu})+T_{\rm ct}^{\mu\nu}.
\]

The Ward identity is

\[
\partial_\mu T_{V}^{\mu\nu}=0
\]

after removing the switching function or including the explicit breaking term from \(\partial_\mu\chi\). With compact support switching,

\[
\partial_\mu T_{V,\chi}^{\mu\nu}
\sim
-(\partial^\nu\chi)\mathcal L_{\rm int}
\]

plus renormalized contact terms. Therefore exact translation invariance is recovered only in the adiabatic limit \(\chi\to1\), if that limit exists.

This confirms a formalism requirement:

> Ward identities must be stated either with compact-support breaking terms or after a controlled adiabatic limit.

## 7. What this check modifies in the formalism

The first version of the CPS-pAQFT formalism already contained the right architecture, but this check makes four points mandatory rather than optional.

### 7.1 Interaction sign convention

The pAQFT interaction functional \(V\) enters

\[
S(V)=\exp_T(iV/\hbar).
\]

For the usual scalar action

\[
S=S_0-\int
\left(
\frac{g_3}{3!}\phi^3+\frac{g_4}{4!}\phi^4
\right),
\]

one must take

\[
V=-\int
\left(
\frac{g_3}{3!}\phi^3+\frac{g_4}{4!}\phi^4
\right).
\]

This simultaneously gives the correct retarded EOM sign and the standard \(-ig\) Feynman vertex.

### 7.2 CPS does not replace \(H\)

\(\Omega\) fixes \(E\), hence

\[
[\Phi(f),\Phi(g)]=i\hbar E(f,g).
\]

But the Wick algebra also needs a Hadamard function \(H\). Thus the correct dependency is

\[
\Omega\Rightarrow E,
\qquad
(E,H)\Rightarrow \star_H.
\]

### 7.3 Classical trees are not all trees in QFT diagrams

Classical rooted trees are the \(\hbar^0\) part of \(R_V(F)\). Feynman tree amplitudes are also tree graphs, but they live in the time-ordered/LSZ layer. The two agree in classical limits but should not be identified as the same object without specifying the map.

### 7.4 The switching function matters

With compact support \(\chi\), exact spacetime translation symmetry is explicitly broken by \(\partial\chi\). Scattering amplitudes require an adiabatic limit. In AdS or finite volume, an analogous issue becomes boundary-condition and long-time evolution dependence.

## 8. Status of the program after this check

The program is consistent at this level:

\[
\text{CPS}
\Rightarrow E
\Rightarrow \star_H
\Rightarrow S(V)
\Rightarrow R_V(F).
\]

The 4d flat scalar check confirms:

1. classical retarded trees reappear as \(\hbar^0\);
2. standard tree amplitudes are reproduced by \(S(V)\);
3. loop corrections are genuinely quantum contractions;
4. CPS has a real role through \(E\), CCR, external normalization, and boundary/phase-space admissibility.

Remaining work before calling the formalism complete:

1. write a precise BV-BRST extension for gauge theory/gravity；
2. treat renormalized stress tensor/current counterterms systematically；
3. formulate AdS boundary-compatible time-ordered products；
4. test a nontrivial Ward identity or anomaly。

## 9. References

- K. Fredenhagen and K. Rejzner, *Perturbative algebraic quantum field theory*, arXiv:1208.1428, https://arxiv.org/abs/1208.1428
- M. Duetsch and K. Fredenhagen, *Causal perturbation theory in terms of retarded products, and a proof of the Action Ward Identity*, Rev. Math. Phys. 16 (2004) 1291-1348, https://doi.org/10.1142/S0129055X04002266
- R. Brunetti, M. Duetsch and K. Fredenhagen, *Perturbative algebraic quantum field theory and the renormalization groups*, Adv. Theor. Math. Phys. 13 (2009) 1541-1599, https://projecteuclid.org/journals/advances-in-theoretical-and-mathematical-physics/volume-13/issue-5/Perturbative-algebraic-quantum-field-theory-and-the-renormalization-groups/atmp/1282054101
