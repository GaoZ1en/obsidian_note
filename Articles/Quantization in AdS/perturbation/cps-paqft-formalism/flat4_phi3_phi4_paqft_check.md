# 4d flat \(\phi^3/\phi^4\) 对 CPS-pAQFT formalism 的首轮检验

日期：2026-07-09

## 0. Direct verdict

This benchmark checks the pAQFT backend against the first 4d flat scalar example under standard perturbative assumptions. Actual diagram calculations use the canonical/Wick pipeline. Concrete formulas use $\hbar=1$; explicit powers of $\hbar$ below are retained only as formal tree/loop grading.

1. CPS free symplectic form fixes the causal propagator \(E\) and hence the CCR.
2. The pAQFT Bogoliubov map \(R_V(F)\) has a classical \(\hbar^0\) limit equal to the retarded tree solution.
3. The same \(S(V)\) gives the standard tree-level \(2\to2\) amplitude in \(\phi^3+\phi^4\):

$$\begin{align}
\mathcal M_4^{\rm tree} = -g_4 -g_3^2 \left( \frac{1}{s-m^2} +\frac{1}{t-m^2} +\frac{1}{u-m^2} \right),
\end{align}$$

   with the usual \(i\epsilon\) prescription.
4. One-loop terms appear from \(\star\)- and \(T\)-contractions, not from the classical tree solution.

The check forces three refinements to the formalism:

- one must distinguish the sign of the interaction functional \(V\) from the sign convention in the EOM;
- \(\Omega\) fixes \(E\), but it does not by itself fix the Hadamard two-point function \(H\);
- scattering requires an adiabatic limit or a clear compact-support/cutoff interpretation.

## 1. Model and sign convention

Take Minkowski signature \((-+++)\) and

$$\begin{align}
S[\phi]=S_0[\phi]+V[\phi],
\end{align}$$

where

$$\begin{align}
S_0[\phi] =\int d^4x\, \left[ -\frac12\partial_\mu\phi\partial^\mu\phi -\frac12m^2\phi^2 \right],
\end{align}$$

$$\begin{align}
V[\phi] =-\int d^4x\,\chi(x) \left[ \frac{g_3}{3!}\phi^3 +\frac{g_4}{4!}\phi^4 \right].
\end{align}$$

Here \(\chi\) is a compact support switching function. The adiabatic scattering limit is \(\chi\to1\), if it exists.

The Euler-Lagrange equation in the interaction region is

$$\begin{align}
(\Box-m^2)\phi -\frac{g_3}{2}\phi^2 -\frac{g_4}{3!}\phi^3=0.
\end{align}$$

Equivalently,

$$\begin{align}
K\phi =\frac{g_3}{2}\phi^2+\frac{g_4}{3!}\phi^3, \qquad K:=\Box-m^2.
\end{align}$$

Thus the classical retarded solution is

$$\begin{align}
\phi(x)=\phi_0(x) +\int d^4z\,G_R(x-z) \left[ \frac{g_3}{2}\phi(z)^2 +\frac{g_4}{3!}\phi(z)^3 \right].
\end{align}$$

This matches the sign convention in the previous classical tree notes.

## 2. Free CPS and CCR

The free symplectic form is

$$\begin{align}
\Omega_0 =\int_{\Sigma_t}d^3\mathbf x\, \delta\dot\phi\wedge\delta\phi.
\end{align}$$

Its inverse is the causal propagator

$$\begin{align}
E=E_R-E_A.
\end{align}$$

For smeared fields

$$\begin{align}
\Phi(f)=\int d^4x\,f(x)\phi(x),
\end{align}$$

the Peierls bracket is

$$\begin{align}
\{\Phi(f),\Phi(g)\}=E(f,g).
\end{align}$$

Quantization gives

$$\begin{align}
[\hat\Phi(f),\hat\Phi(g)] =i\hbar E(f,g).
\end{align}$$

This is where CPS enters concretely. It fixes the antisymmetric part of the two-point structure and the canonical normalization of asymptotic one-particle states.

To define Wick products, choose a Poincare-invariant Hadamard two-point function \(H\) with

$$\begin{align}
H(x,y)-H(y,x)=iE(x,y).
\end{align}$$

For scattering, the corresponding Feynman distribution is

$$\begin{align}
\Delta_F(p)=\frac{i}{p^2+m^2-i\epsilon}
\end{align}$$

in \((-+++)\) convention, or equivalently \(i/(p_{\rm mostly-minus}^2-m^2+i\epsilon)\) in the more common \((+---)\) convention. The amplitude formula below is written in the usual Mandelstam convention:

$$\begin{align}
\mathcal M_4^{\rm tree} =-g_4-g_3^2\left[(s-m^2)^{-1}+(t-m^2)^{-1}+(u-m^2)^{-1}\right].
\end{align}$$

## 3. Bogoliubov interacting field and classical limit

Define

$$\begin{align}
S(V)=\exp_T\left(\frac{i}{\hbar}V\right).
\end{align}$$

The interacting observable is

$$\begin{align}
R_V(F) =\frac{\hbar}{i} \left. \frac{d}{d\lambda} \left[ S(V)^{-1}_{\star}\star S(V+\lambda F) \right] \right|_{\lambda=0}.
\end{align}$$

For \(F=\Phi(f)\), the classical limit is

$$\begin{align}
R_V(\Phi(f))\big|_{\hbar^0} =\int d^4x\,f(x)\phi_{\rm ret}(x),
\end{align}$$

where \(\phi_{\rm ret}\) solves the retarded nonlinear equation above.

At first order, using

$$\begin{align}
\frac{\delta V}{\delta\phi(z)} =-\chi(z) \left[ \frac{g_3}{2}\phi(z)^2 +\frac{g_4}{3!}\phi(z)^3 \right],
\end{align}$$

the classical retarded correction is

$$\begin{align}
\phi_{\rm ret}(x) =\phi_0(x) -\int d^4z\,E_R(x,z) \frac{\delta V}{\delta\phi(z)} +O(V^2).
\end{align}$$

Thus

$$\begin{align}
\phi_{\rm ret}(x) =\phi_0(x) +\int d^4z\,E_R(x,z)\chi(z) \left[ \frac{g_3}{2}\phi_0(z)^2 +\frac{g_4}{3!}\phi_0(z)^3 \right] +O(g^2),
\end{align}$$

which is exactly the earlier classical rooted-tree result. This verifies:

$$\begin{align}
R_V(F)\big|_{\hbar^0} =F\circ r_V.
\end{align}$$

## 4. Four-point scattering amplitude

The \(S\)-matrix expansion is

$$\begin{align}
S(V) =1+\frac{i}{\hbar}V +\frac{1}{2!}\left(\frac{i}{\hbar}\right)^2T(V,V)+\cdots.
\end{align}$$

For external on-shell particles, LSZ amputation of the connected time-ordered four-point function gives the usual invariant amplitude.

### 4.1 Contact \(\phi^4\) contribution

The \(\phi^4\) term contributes

$$\begin{align}
\frac{i}{\hbar} \left[ -\int d^4z\,\frac{g_4}{4!}\phi(z)^4 \right].
\end{align}$$

Contracting four external fields with the four fields at \(z\) gives the vertex factor

$$\begin{align}
-ig_4.
\end{align}$$

Therefore

$$\begin{align}
i\mathcal M_{4,\rm contact}=-ig_4, \qquad \mathcal M_{4,\rm contact}=-g_4.
\end{align}$$

### 4.2 Exchange \(\phi^3\) contribution

At second order in \(g_3\),

$$\begin{align}
\frac{1}{2} \left(\frac{i}{\hbar}\right)^2
T(V_3,V_3)
\end{align}$$

contains two cubic vertices. The \(1/2!\) cancels the permutation of the two vertices, and the \(1/3!\) factors cancel the contractions at each cubic vertex.

For the \(s\)-channel:

$$\begin{align}
i\mathcal M_s =(-ig_3)^2 \frac{i}{s-m^2+i\epsilon} =-i\frac{g_3^2}{s-m^2+i\epsilon}.
\end{align}$$

Thus

$$\begin{align}
\mathcal M_s =-\frac{g_3^2}{s-m^2+i\epsilon}.
\end{align}$$

Similarly,

$$\begin{align}
\mathcal M_t =-\frac{g_3^2}{t-m^2+i\epsilon}, \qquad \mathcal M_u =-\frac{g_3^2}{u-m^2+i\epsilon}.
\end{align}$$

The full tree amplitude is

$$\begin{align}
\boxed{ \mathcal M_4^{\rm tree} = -g_4 -g_3^2 \left[ \frac{1}{s-m^2+i\epsilon} +\frac{1}{t-m^2+i\epsilon} +\frac{1}{u-m^2+i\epsilon} \right].
}
\end{align}$$

This is the standard result. The CPS ingredient is not a new vertex rule; it is the normalization and causal bracket that underlie the propagator and LSZ normalization.

## 5. Correlator check: where loops enter

Consider the connected two-point function. The classical tree map alone cannot produce loop self-energy corrections. In pAQFT they arise from contractions in \(T_n\).

### 5.1 \(\phi^4\) tadpole

At first order in \(g_4\), the time-ordered product with

$$\begin{align}
V_4=-\int d^4z\,\frac{g_4}{4!}\phi(z)^4
\end{align}$$

has a connected contribution where two fields at \(z\) contract with the two external fields and the remaining two contract with each other:

$$\begin{align}
G_2^{(1),\phi^4}(x,y) \sim (-ig_4)\frac{1}{2} \int d^4z\, \Delta_F(x-z)\Delta_F(z-y)\Delta_F(z,z).
\end{align}$$

\(\Delta_F(z,z)\) is divergent and requires renormalization. This is a one-loop tadpole. It is absent from the classical retarded tree expansion.

### 5.2 \(\phi^3\) bubble

At second order in \(g_3\), the connected two-point function contains

$$\begin{align}
G_2^{(2),\phi^3}(x,y) \sim \frac{(-ig_3)^2}{2} \int d^4z\,d^4w\, \Delta_F(x-z)\Delta_F(y-w) \Delta_F(z,w)^2.
\end{align}$$

This is the one-loop bubble self-energy. Again it comes from time-ordered contractions, not from the classical solution map.

Thus the expansion has the expected structure:

$$\begin{align}
\text{classical rooted trees} \subset \hbar^0, \qquad \text{loops}
\subset \hbar^{\ge1}.
\end{align}$$

## 6. Ward identity check for spacetime translations

For spacetime translations, the free CPS charge is generated by

$$\begin{align}
\delta_\xi\phi=\xi^\mu\partial_\mu\phi.
\end{align}$$

The classical stress tensor gives

$$\begin{align}
\delta P_\xi=\iota_{X_\xi}\Omega.
\end{align}$$

In the quantum interacting theory one should write

$$\begin{align}
T_{V}^{\mu\nu} =R_V(T^{\mu\nu})+T_{\rm ct}^{\mu\nu}.
\end{align}$$

The Ward identity is

$$\begin{align}
\partial_\mu T_{V}^{\mu\nu}=0
\end{align}$$

after removing the switching function or including the explicit breaking term from \(\partial_\mu\chi\). With compact support switching,

$$\begin{align}
\partial_\mu T_{V,\chi}^{\mu\nu} \sim -(\partial^\nu\chi)\mathcal L_{\rm int}
\end{align}$$

plus renormalized contact terms. Therefore exact translation invariance is recovered only in the adiabatic limit \(\chi\to1\), if that limit exists.

This confirms a formalism requirement:

> Ward identities must be stated either with compact-support breaking terms or after a controlled adiabatic limit.

## 7. What this check modifies in the formalism

The first version of the CPS-pAQFT formalism already contained the right architecture, but this check makes four points mandatory rather than optional.

### 7.1 Interaction sign convention

The pAQFT interaction functional \(V\) enters

$$\begin{align}
S(V)=\exp_T(iV/\hbar).
\end{align}$$

For the usual scalar action

$$\begin{align}
S=S_0-\int \left( \frac{g_3}{3!}\phi^3+\frac{g_4}{4!}\phi^4 \right),
\end{align}$$

one must take

$$\begin{align}
V=-\int \left( \frac{g_3}{3!}\phi^3+\frac{g_4}{4!}\phi^4 \right).
\end{align}$$

This simultaneously gives the correct retarded EOM sign and the standard \(-ig\) Feynman vertex.

### 7.2 CPS does not replace \(H\)

\(\Omega\) fixes \(E\), hence

$$\begin{align}
[\Phi(f),\Phi(g)]=i\hbar E(f,g).
\end{align}$$

But the Wick algebra also needs a Hadamard function \(H\). Thus the correct dependency is

$$\begin{align}
\Omega\Rightarrow E, \qquad (E,H)\Rightarrow \star_H.
\end{align}$$

### 7.3 Classical trees are not all trees in QFT diagrams

Classical rooted trees are the \(\hbar^0\) part of \(R_V(F)\). Feynman tree amplitudes are also tree graphs, but they live in the time-ordered/LSZ layer. The two agree in classical limits but should not be identified as the same object without specifying the map.

### 7.4 The switching function matters

With compact support \(\chi\), exact spacetime translation symmetry is explicitly broken by \(\partial\chi\). Scattering amplitudes require an adiabatic limit. In AdS or finite volume, an analogous issue becomes boundary-condition and long-time evolution dependence.

## 8. Status of the program after this check

The program is consistent at this level:

$$\begin{align}
\text{CPS}
\Rightarrow E
\Rightarrow \star_H
\Rightarrow S(V)
\Rightarrow R_V(F).
\end{align}$$

The 4d flat scalar check confirms:

1. classical retarded trees reappear as \(\hbar^0\);
2. standard tree amplitudes are reproduced by \(S(V)\);
3. loop corrections are genuinely quantum contractions;
4. CPS has a real role through \(E\), CCR, external normalization, and boundary/phase-space admissibility.

Remaining in-scope work for the scalar backend:

1. treat renormalized stress-tensor/current counterterms systematically and separate local Ward identities from global-charge existence；
2. formulate AdS scalar boundary-compatible time-ordered products；
3. test PPA/split independence in a curved-space mass-resummation example。

Gauge theory, BV-BRST, and gravity are outside the present scope.

## 9. References

- K. Fredenhagen and K. Rejzner, *Perturbative algebraic quantum field theory*, arXiv:1208.1428, https://arxiv.org/abs/1208.1428
- M. Duetsch and K. Fredenhagen, *Causal perturbation theory in terms of retarded products, and a proof of the Action Ward Identity*, Rev. Math. Phys. 16 (2004) 1291-1348, https://doi.org/10.1142/S0129055X04002266
- R. Brunetti, M. Duetsch and K. Fredenhagen, *Perturbative algebraic quantum field theory and the renormalization groups*, Adv. Theor. Math. Phys. 13 (2009) 1541-1599, https://projecteuclid.org/journals/advances-in-theoretical-and-mathematical-physics/volume-13/issue-5/Perturbative-algebraic-quantum-field-theory-and-the-renormalization-groups/atmp/1282054101
