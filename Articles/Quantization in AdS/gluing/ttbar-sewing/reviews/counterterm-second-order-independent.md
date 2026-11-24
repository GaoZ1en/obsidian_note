# Independent second-order counterterm audit: Ising, Virasoro/CAR, and cutoff dependence

## Result and scope

**The full second-order energy-diagonal block admits a local dimension-six completion; this does not uniquely fix the off-diagonal Hamiltonian or fixed-operator dynamics.** A mixed-derivative counterterm has a logarithmically divergent coefficient in an explicit off-diagonal effective-Hamiltonian calculation and an arbitrary finite, spectrum-invisible coefficient. A sharp mode-transfer cutoff also produces an endpoint term with a nonlocal absolute-mode kernel. It must not be silently identified with a local point-splitting scheme.

The conclusions below separate:

1. exact identities of the Virasoro algebra and local cylinder normal products;
2. a local representative with the correct complete energy-diagonal block;
3. a specified Hermitian Löwdin effective-Hamiltonian calculation, including a genuine off-diagonal UV test;
4. assumptions still needed to identify that representative with a fully defined quantum local stress-tensor flow.

The calculation began independently, without reading the main or future second-order candidates and without external sources. The final explicit exponential-regulator finite part was subsequently cross-checked against a result supplied by the lead researcher; that last check is not claimed as a blind independent prediction. The applicable rules and the free-mode/OFPT conventions in [the formalism note](</Users/koishi/Documents/Note/Articles/Quantization in AdS/perturbation/formalism.md>) were read. Only this new review is authorized for writing.

## 1. Conventions and normalization

Each chiral central charge is denoted by $c$, with $c=1/2$ for Ising; it is not the sum of the two central charges. Define

$$
A_n=L_n-\frac c{24}\delta_{n0},\qquad
B_n=\bar L_n-\frac c{24}\delta_{n0}.
$$

Then

$$
[A_m,A_n]=(m-n)A_{m+n}+\frac c{12}m^3\delta_{m+n,0},
\quad [A_m,B_n]=0,
\quad A_n^\dagger=A_{-n},
$$

and similarly for $B$. On a dimensionless cylinder $w=\tau+i\theta$, $\bar w=\tau-i\theta$, with $\theta\sim\theta+2\pi$, use

$$
A(w)=\sum_n A_n e^{-nw},\qquad B(\bar w)=\sum_n B_n e^{-n\bar w}.
$$

All spatial integrals below mean $\oint=\int_0^{2\pi}d\theta/(2\pi)$. Define

$$
H=\frac{2\pi}{L}\bigl(H_0+gW_1+g^2W_2+O(g^3)\bigr),
\quad g=\frac{8\pi\lambda}{L^2},
$$

$$
H_0=A_0+B_0,\qquad W_1=-\sum_{n\in\mathbb Z}A_nB_n.
$$

Thus the coefficient of physical $\lambda^2$ is $128\pi^3 W_2/L^5$. The momentum is $(2\pi/L)(A_0-B_0)$. If $a,b$ are the chiral cylinder energies of a simultaneous energy/momentum block, the external spectral prediction becomes

$$
E_{2,\mathrm{dimless}}=\frac12ab(a+b).
$$

Indeed restoring units gives

$$
\frac{128\pi^3}{L^5}\frac12ab(a+b)
=\frac{2E_0(E_0^2-P^2)}{L^2}.
$$

Periodic spatial boundary conditions are used for the stress tensor. Both NS and Ramond fermionic sectors can be considered; the explicit finite CAR matrix check below uses NS modes. No scattering or infinite-time in/out assumption is made.

## 2. Exact UV commutator and the complete energy-diagonal block

Let $X_n=A_nB_n$, so $[H_0,X_n]=-2nX_n$. For $n>0$, set

$$
C_n(A_0)=2nA_0+\frac c{12}n^3.
$$

The algebra gives exactly

$$
[X_n,X_{-n}]
=C_n(A_0)B_{-n}B_n+C_n(B_0)A_{-n}A_n
+C_n(A_0)C_n(B_0).
$$

Consequently the second-order mixing block with a mode-transfer cutoff is

$$
\mathcal M_M=-\sum_{n=1}^M\frac{[X_n,X_{-n}]}{2n}.
$$

Writing

$$
S_j(A)=\sum_{n>0}n^jA_{-n}A_n,
$$

and taking $M$ above the levels of the fixed external states, this becomes

$$
\boxed{\begin{aligned}
\mathcal M_M={}&-aS_0(B)-bS_0(A)
-\frac c{24}\bigl[S_2(A)+S_2(B)\bigr]\\
&-2ab\sum_{n=1}^M n
-\frac{c(a+b)}{12}\sum_{n=1}^M n^3
-\frac{c^2}{288}\sum_{n=1}^M n^5 .
\end{aligned}}
$$

Here $a,b$ can either denote the fixed eigenvalues in a block or the commuting zero-mode operators. This formula holds as a matrix identity within each simultaneous $(H_0,P)$ block. In particular it includes off-diagonal matrix elements among degenerate descendants. It is stronger than checking primary expectation values.

The first line is finite on fixed finite-level states but need not be proportional to the identity within a degenerate block. A vacuum-energy subtraction cannot remove it. Even the power divergences in the second line depend on the state through $ab$ and $a+b$.

For a highest-weight state, $a=h-c/24$, write

$$
C_n^{\rm hw}(h):=C_n(a)=2nh+\frac c{12}n(n^2-1).
$$

The physical primary mixing term is therefore

$$
E_{2,\rm mix}=-\frac{64\pi^3}{L^5}
\sum_{n>0}\frac{C_n^{\rm hw}(h)C_n^{\rm hw}(\bar h)}n.
$$

For the Ising vacuum, $a=b=-1/48$, this reduces to

$$
E_{2,\rm mix}(M)=-\frac{\pi^3}{9L^5}
\sum_{n=1}^M n(n^2-1)^2,
$$

which checks the normalization against both supplied baselines.

## 3. Local point splitting and Bernoulli finite parts

For a highest-weight state $|a\rangle$, the separated chiral cylinder product has contraction

$$
\langle a|A(\epsilon)A(0)|a\rangle
=a^2+2a\sum_{n>0}ne^{-n\epsilon}
+\frac c{12}\sum_{n>0}n^3e^{-n\epsilon}.
$$

The exact Laurent expansions are

$$
\sum ne^{-n\epsilon}=\epsilon^{-2}-\frac1{12}
+\frac{\epsilon^2}{240}+O(\epsilon^4),
$$

$$
\sum n^3e^{-n\epsilon}=6\epsilon^{-4}+\frac1{120}
-\frac{\epsilon^2}{504}+O(\epsilon^4),
$$

$$
\sum n^5e^{-n\epsilon}=120\epsilon^{-6}-\frac1{252}
+O(\epsilon^2).
$$

Subtracting the local Virasoro OPE singularities, rather than the entire global cylinder contraction, gives the zero mode

$$
\boxed{Q_{4,A,0}=a^2+2S_0(A)-\frac a6+\frac c{1440}.}
$$

It is equivalently

$$
2\sum_{n>0}L_{-n}L_n+L_0^2-\frac{c+2}{12}L_0
+\frac{c(5c+22)}{2880}.
$$

The coefficient of $\epsilon^2$ in the contraction is $a/120-c/6048$. Differentiating both separated points and converting from the holomorphic derivative to the spatial derivative gives

$$
\boxed{D_{x,A,0}=2S_2(A)+\frac a{60}-\frac c{3024},
\qquad D_{x,A}=:(\partial_\theta A)^2:.}
$$

The sign conversion matters: $\partial_\theta A=i\partial_wA$, whereas $\partial_\theta B=-i\partial_{\bar w}B$.

These finite terms follow from the cylinder OPE. Assigning zeta values to a divergent numerical sum is not, by itself, a definition of every local operator or of its nonzero Fourier modes.

### OPE origin of the structures

At the undeformed point the identity-family operator $O=T\bar T$ obeys, among its dimension-six terms,

$$
O(z,\bar z)O(0)\supset
\frac2{z^2}T:\bar T\bar T:
+\frac2{\bar z^2}:TT:\bar T
+\frac1{z\bar z}\partial T\,\bar\partial\bar T.
$$

Central contractions with higher terms in the chiral regular product also produce chiral dimension-six derivative structures. Their cylinder zero-mode content is displayed explicitly by the $cS_2/24$ term in the exact commutator above. Thus the mixed cubic, chiral derivative, and mixed derivative sectors are not arbitrary additions inferred from a vacuum fit.

The mixed scalar logarithmic term is $\partial\bar\partial(T\bar T)$ at the undeformed point. It is a spacetime total derivative in an action calculation without temporal boundary contributions. This does not justify dropping its boundary/state effect in finite-time Hamiltonian dynamics with fixed external states and operators.

## 4. Local block completion, not just a diagonal spectral fit

Define

$$
K=\oint\bigl(Q_{4,A}B+A Q_{4,B}\bigr),
\qquad D_{\rm ch}=\oint(D_{x,A}+D_{x,B}).
$$

The energy-diagonal projection of the first operator is

$$
\mathcal P_{\rm diag}K=bQ_{4,A,0}+aQ_{4,B,0}.
$$

The exact commutator decomposition and the local normal-product identities imply

$$
\boxed{W_2^{\rm loc}=\frac12K+\frac c{48}D_{\rm ch}}
$$

obeys

$$
\boxed{\mathcal P_{\rm diag}(W_2^{\rm loc}+\mathcal M_{\rm Abel})
=\frac12ab(a+b)\,\mathbf1.}
$$

Here $\mathcal M_{\rm Abel}$ means the finite part obtained from the previous Laurent expansions. Explicitly,

$$
\begin{aligned}
\mathcal M_{\rm Abel}={}&-aS_0(B)-bS_0(A)
-\frac c{24}(S_2(A)+S_2(B))\\
&+\frac{ab}{6}-\frac{c(a+b)}{1440}+\frac{c^2}{72576}.
\end{aligned}
$$

The cancellation includes the nontrivial descendant matrices $S_0$ and $S_2$, all lower-degree terms, and the constant. Its polynomial residual is exactly zero for arbitrary $a,b,c,S_0(A),S_0(B),S_2(A),S_2(B)$. Thus it verifies the whole degenerate block, not merely its diagonal entries or a handful of primaries.

This establishes a local representative and independently recovers the supplied spectral coefficient. It is not yet a derivation that a fully specified nonlinear quantum stress-tensor flow must select all nonzero modes of this particular representative.

## 5. Dimension-six basis in Ising and null identities

The following basis statement assumes:

- the counterterm belongs to the identity-family OPE closure of stress-tensor insertions;
- it is parity even and Hermitian;
- it is a local polynomial density, modulo spatial total derivatives;
- the equal-time Hamiltonian is being classified, not a manifestly Lorentz-scalar action density;
- derivatives are reduced using undeformed chirality on the free physical phase space; this is not an off-shell action-operator classification.

The identity-family restriction matters. It is not an enumeration of arbitrary descendants in the Ising energy or spin families. Those families are not generated by repeated identity-family stress-tensor OPEs.

At weight six the Ising vacuum null is

$$
\boxed{(64L_{-2}^3+93L_{-3}^2-264L_{-4}L_{-2}-108L_{-6})|0\rangle=0.}
$$

Also

$$
L_{-1}^2L_{-2}^2|0\rangle
=(4L_{-4}L_{-2}+2L_{-3}^2+4L_{-6})|0\rangle.
$$

Adding 66 times this derivative state to the null gives the representative

$$
(64L_{-2}^3+225L_{-3}^2+156L_{-6})|0\rangle
\equiv0\pmod{L_{-1}\mathcal V_5}.
$$

This is a congruence modulo derivative states, not a second exact null-state equation. Since $L_{-6}|0\rangle$ is also a derivative, for the nesting $:T(TT):$,

$$
64\oint:T(TT):+225\oint:(\partial_wT)^2:=0.
$$

Equivalently the sign of the derivative term reverses when it is written with $\partial_\theta$. Associativity/nesting of chiral normal products must be specified before quoting this coefficient. A differently nested cubic can differ by derivative normal products.

The chiral dimension-six quotient by total derivatives is one-dimensional. Mixed weight $(4,2)$ and $(2,4)$ operators give $K$, plus derivative improvements; the $(3,3)$ sector gives

$$
D_{\rm mix}=\oint\partial_\theta A\,\partial_\theta B
=\sum_n n^2A_nB_n.
$$

Thus an integrated parity-even identity-family basis can be taken as

$$
\boxed{K,\qquad D_{\rm ch},\qquad D_{\rm mix}.}
$$

The chiral cubic is not an additional Ising basis element. Away from Ising the level-six null is absent and the chiral quotient generally has more than one element. Coefficients assigned to a basis change must therefore not be extrapolated without checking the relevant module relations.

### CAR check of the chiral derivative operator

With $\{\psi_r,\psi_s\}=\delta_{r+s,0}$, $N_r=\psi_{-r}\psi_r$, the local chiral identity is

$$
D_{x,0}=\frac4{15}\sum_{r>0}r^5N_r-\frac{31}{60480}
\quad\text{in NS},
$$

and its Ramond vacuum constant is $1/1890$. For a single NS fermion of energy $r$,

$$
\sum_{n=1}^{r-1/2}n^2(r-n/2)^2
=\frac2{15}r^5-\frac r{120},
$$

which accounts for the $a/60$ term above. There is also a short operator-level argument: a nonzero normally ordered four-fermion monomial requires four distinct derivative orders, at least $0,1,2,3$, and therefore has dimension at least eight. At dimension six an even local chiral fermion operator is bilinear, modulo derivatives; its integrated charge is proportional to the fifth fermionic moment. The one-fermion calculation fixes that proportionality and the vacuum value fixes the constant. Thus the formula is not merely a one-particle spectral fit.

As an additional check, the identity was verified as a complete exact CAR matrix on every NS state of chiral energy at most six: 18 states, including the threefold energy-six degeneracy. The matrix residual was zero. This finite matrix check supports the operator argument; it is not used as a substitute for it.

## 6. Spectrum-invisible local rotations and an exact low-level test

Let

$$
R=\sum_n nA_nB_n=i\oint\partial_\theta A\,B,
\qquad R^\dagger=-R.
$$

The summed operators and exponentials here are perturbative regulated/renormalized expressions. No assertion of a convergent nonperturbative unitary operator on the full continuum Hilbert space is needed. Then

$$
\boxed{D_{\rm mix}=\frac12[R,H_0],\qquad
\mathcal P_{\rm diag}D_{\rm mix}=0.}
$$

Under $U=e^{g^2\alpha R}$,

$$
W_2\longmapsto W_2+2\alpha D_{\rm mix},\qquad
O\longmapsto O+g^2\alpha[R,O]+O(g^3).
$$

Transforming the Hamiltonian and every state/operator together preserves physics. Transforming only the Hamiltonian while insisting that the old CAR/Virasoro operators remain the measured observables changes fixed-operator transition amplitudes. The spectrum cannot distinguish these choices.

A point-splitting example makes this concrete. Define the asymmetric local square by subtracting the Virasoro singularities in $A(w+\epsilon)A(w)$. Its centered symmetric counterpart obeys

$$
Q_4^{\rm sym}=Q_4^{\rm asym}-\frac14\partial_w^2A.
$$

Thus

$$
W_2^{\rm sym}-W_2^{\rm asym}=-\frac14D_{\rm mix}.
$$

For normalized

$$
|v\rangle=\frac2cL_{-2}\bar L_{-2}|0\rangle,
$$

one obtains

$$
\langle v|D_{\rm mix}|0\rangle=2c,
$$

$$
\langle v|W_2^{\rm asym}|0\rangle=\frac{c(10-c)}{24},
\qquad
\langle v|W_2^{\rm sym}|0\rangle=-\frac{c(c+2)}{24}.
$$

For Ising these are, respectively,

$$
\boxed{1,\qquad \frac{19}{96},\qquad-\frac5{96}.}
$$

The two Hamiltonian representatives have identical complete energy-diagonal blocks but differ in this fixed-basis matrix element by $-1/4$. This is an exact off-diagonal test, not numerical spectral fitting.

## 7. Hard mode-transfer cutoff versus Abel/local point splitting

For the hard sums,

$$
\sum_{n=1}^Mn=\frac{M(M+1)}2,\quad
\sum_{n=1}^Mn^3=\frac{M^2(M+1)^2}4,
$$

$$
\sum_{n=1}^Mn^5=\frac{M^2(M+1)^2(2M^2+2M-1)}{12}.
$$

Subtracting only their positive powers of $M$ leaves zero constants. Abel/local cylinder subtraction instead leaves $\zeta(-1),\zeta(-3),\zeta(-5)$. To obtain the same energy block as the local representative above, a hard-transfer-cutoff Hamiltonian needs

$$
\boxed{\begin{aligned}
\delta W_{2,M}={}&2[\Sigma_Mn-\zeta(-1)]\,O_4\\
&+\frac c{12}[\Sigma_Mn^3-\zeta(-3)]H_0\\
&+\frac{c^2}{288}[\Sigma_Mn^5-\zeta(-5)]\mathbf1,
\end{aligned}}
$$

where $O_4=\oint AB$ has energy-diagonal block $ab$. This formula fixes a local extension of the required block counterterms, not every off-diagonal ultraviolet condition. At fixed circle size the coefficients are dimensionless powers of the mode cutoff; interpreting them as a regulator of a Lorentz-covariant theory also requires relating $M$ to a physical ultraviolet scale.

### An explicit non-diagonal sharp-cutoff warning

Consider the Hermitian Löwdin second-order high-state kernel

$$
\mathcal K_{ij}^{(2)}=\frac12\sum_{q\in Q}
(W_1)_{iq}(W_1)_{qj}
\left[\frac1{E_i-E_q}+\frac1{E_j-E_q}\right].
$$

This defines the effective-Hamiltonian/state convention used in this subsection. Let $i=0$ be the vacuum and

$$
|v_k\rangle=\frac1{N_k}L_{-k}\bar L_{-k}|0\rangle,
\quad N_k=\frac{ck(k^2-1)}{12},\quad k\ge2.
$$

For high intermediate chiral level $n>k$, the Virasoro reduction is

$$
L_{n-k}L_{-n}|0\rangle=(2n-k)L_{-k}|0\rangle.
$$

Completeness within the intermediate level therefore gives the exact contribution

$$
\boxed{-\frac{N_k(2n-k)^3}{4n(n-k)}
=N_k\left[-2n+k-\frac{k^2}{4}\left(\frac1n+\frac1{n-k}\right)\right].}
$$

If each transfer is sharply restricted by $|m|\le M$, the high-state range is $k<n\le M$. Its sum is

$$
N_k\left[-M^2+(k-1)M+k
-\frac{k^2}{4}(H_M+H_{M-k}-H_k)\right].
$$

After adding the leading $O_4$ counterterm determined by diagonal blocks, the remainder is

$$
\boxed{N_k\left[kM-\frac{k^2}{2}\log M+O(1)\right].}
$$

The logarithm is the local mixed-derivative sector: $\langle v_k|D_{\rm mix}|0\rangle=k^2N_k$, requiring $+\tfrac12\log M\,D_{\rm mix}$ in this convention. The finite coefficient remains free.

The $kM$ term has an absolute-mode extension $\sum_n|n|A_nB_n$. A finite polynomial of local derivatives does not have that Fourier symbol. It can be produced by a nonlocal cutoff-dependent rotation generated by $\sum_n\operatorname{sgn}(n)A_nB_n$, or be avoided by a different, centered smoothing prescription. It must not be presented as an ordinary local dimension-six counterterm inferred from the diagonal spectrum.

This is a warning about the sharp regulator and the specified effective-Hamiltonian/state convention. It does not prove that the underlying physical deformation is nonlocal. Other resolvent or state conventions change off-diagonal kernels; comparing them requires the associated operator/state maps.

### Total-level cutoff

A projection by total level is a different regulator. If an external state has descendant level $s$, upward transfer by $n$ is retained only when $s+2n\le N$, whereas the transfer cutoff uses $n\le M$ independently of $s$. In primary sectors a cutoff on absolute conformal energy also changes the endpoint with the primary weights. Floors and sector offsets must be specified.

As a result, replacing $M$ by $N/2$ in a vacuum formula does not determine the counterterms for all external states. The shifted endpoint generates external-energy-dependent power terms. An effective-Hamiltonian treatment must track the projector, its high-state boundary, and any energy-dependent or rotational matching explicitly. The off-diagonal vacuum example alone is already enough to show why agreement of diagonal subtractions is insufficient. A full all-state total-level-cutoff counterterm construction has not been performed here.

## 8. Centered exponential regulator: logarithm and the exact finite part 11/12

Take vertex transfer weights

$$
f_\epsilon(m)=e^{-\epsilon|m|/2}.
$$

For the high-state transition above the product of the two vertex weights is

$$
e^{-\epsilon(|n|+|n-k|)/2}
=e^{-\epsilon(n-k/2)},\qquad n>k.
$$

It centers the ultraviolet sum at the average external energy. The leading polynomial part is a sum of $(n-k/2)e^{-\epsilon(n-k/2)}$, which has no $1/\epsilon$ term. This removes the sharp-endpoint linear artifact when the local counterterm insertion is defined as a local operator on the fixed external states, rather than arbitrarily attaching another nonanalytic external-transfer form factor to it.

The remaining universal logarithmic coefficient in this convention is

$$
\boxed{+\frac12\log(1/\epsilon)D_{\rm mix}.}
$$

Its generator is $+\tfrac14\log(1/\epsilon)R$. The statement includes the convention for conjugating the Hamiltonian used in Section 6; reversing the convention for the unitary map reverses the generator sign.

For Ising and $k=2$, let the retained space be $P=\operatorname{span}\{|0\rangle,|v_2\rangle\}$, so the high-state kernel contains $n\ge3$. Put $t=n-1$. The exact normalized mixed-loop kernel is

$$
\mathcal K_\epsilon
=-\frac12\sum_{t=2}^\infty\frac{t^3}{t^2-1}e^{-\epsilon t}.
$$

Using $t^3/(t^2-1)=t+\tfrac12[(t-1)^{-1}+(t+1)^{-1}]$, it has the closed form

$$
\begin{aligned}
\mathcal K_\epsilon={}&-\frac12\left[
\frac{e^{-\epsilon}}{(1-e^{-\epsilon})^2}-e^{-\epsilon}\right]\\
&+\frac12\cosh\epsilon\log(1-e^{-\epsilon})
+\frac14+\frac18e^{-\epsilon}.
\end{aligned}
$$

Hence

$$
\boxed{\mathcal K_\epsilon
=-\frac1{2\epsilon^2}+\frac12\log\epsilon+\frac{11}{12}
+O(\epsilon).}
$$

Since $\langle v_2|O_4|0\rangle=1/4$ and $\langle v_2|D_{\rm mix}|0\rangle=1$,

$$
\boxed{\lim_{\epsilon\to0^+}\left[
\mathcal K_\epsilon+\frac1{2\epsilon^2}
+\frac12\log(1/\epsilon)\right]=\frac{11}{12}.}
$$

The power insertion here is $(2/\epsilon^2)O_4$. This number is the finite **high-state loop kernel**, not the bare local $W_2$ matrix element and not a uniquely defined observable. The finite local representative, a finite $D_{\rm mix}$ rotation, a rescaling of the subtraction parameter, or a different retained-space/state convention changes the corresponding full effective-Hamiltonian matrix element. It would be incorrect to use $11/12$ as a scheme-independent off-diagonal matching condition without these specifications.

## 9. What is and is not fixed by local flow

Within the explicitly stated parity-even identity-family dimension-six basis, the exact energy-block decomposition singles out $K/2+cD_{\rm ch}/48$ in the cylinder point-splitting scheme, while leaving the finite $D_{\rm mix}$ coefficient unconstrained. The ultraviolet off-diagonal example additionally determines a divergent logarithmic coefficient once the regulator and effective-Hamiltonian convention have been fixed.

**Locality plus the exact spectrum does not select a unique fixed-operator Hamiltonian.** A quantum local-flow claim additionally needs:

- the definition of the composite deformation and local stress tensor, including finite subtractions;
- the metric dependence needed if the stress tensor is defined by metric variation;
- allowed improvements and spacetime total-derivative/boundary terms;
- a regulator prescription, not merely a numerical finite-part assignment;
- the map to a fixed canonical Virasoro/CAR representation;
- the rule for transporting external states and observables along that map.

A fully specified construction may fix a representative. That construction has not been derived here. In particular the all-block identity above should not be promoted into a proof that a unique nonlinear local Hamiltonian flow, with the old operator identifications held fixed, has been obtained.

## 10. Verification record and reproducible algebra

**Verified:** exact commutator reduction; agreement with the supplied vacuum and primary baselines; Bernoulli finite parts; arbitrary-variable energy-block residual zero; the Ising level-six null; complete CAR derivative-operator matrix through chiral energy six; exact high-mode reduction and finite off-diagonal sums; the centered-regulator closed form and finite part $11/12$.

**Assumptions:** local cylinder OPE subtraction; the identity-family/parity/Hermiticity restrictions for the stated basis; the specified Löwdin effective-Hamiltonian convention for off-diagonal kernels; no untracked changes of canonical state/operator identification.

**Not verified:** a complete metric-defined nonlinear quantum local-flow construction; a unique finite off-diagonal counterterm prescription; full all-state total-level-cutoff matching; a complete finite-time transition-amplitude calculation with every endpoint/operator insertion included.

The following core checks reproduce the algebra without project scripts or generated data files. They use SageMath and, for Laurent expansions only, its bundled SymPy. The representation-theory and CAR checks used exact rationals.

```python
from sage.all import *
R = PolynomialRing(QQ, 'a,b,sa,sb,da,db,c')
a,b,sa,sb,da,db,c = R.gens()
q4a = a*a + 2*sa - a/6 + c/1440
q4b = b*b + 2*sb - b/6 + c/1440
dxa = 2*da + a/60 - c/3024
dxb = 2*db + b/60 - c/3024
mix = -a*sb-b*sa-c*(da+db)/24+a*b/6-c*(a+b)/1440+c*c/72576
w2 = (b*q4a+a*q4b)/2+c*(dxa+dxb)/48
assert w2+mix-a*b*(a+b)/2 == 0

for k in [2,3,4]:
    for M in [k+1,k+4,20]:
        direct = sum(-QQ(2*n-k)**3/(4*n*(n-k))
                     for n in range(k+1,M+1))
        H = lambda j: sum(QQ(1)/r for r in range(1,j+1))
        closed = -M*M+(k-1)*M+k-QQ(k*k)/4*(H(M)+H(M-k)-H(k))
        assert direct == closed
```

```python
# Exact Laurent/finite-part check. Symbols have no extra assumptions:
# Sage/SymPy coercions can otherwise drop assumptions in mixed arithmetic.
import sympy as sp
x = sp.symbols('x')
z = sp.exp(-x)
s1 = z/(1-z)**2
s3 = z*(1+4*z+z*z)/(1-z)**4
s5 = z*(1+26*z+66*z*z+26*z**3+z**4)/(1-z)**6
print(sp.series(s1,x,0,5))
print(sp.series(s3,x,0,3))
print(sp.series(s5,x,0,1))
loop = -(s1-z)/2+sp.cosh(x)*sp.log(1-z)/2+sp.Rational(1,4)+z/8
assert sp.limit(loop+1/(2*x*x)-sp.log(x)/2,x,0,dir='+') == sp.Rational(11,12)
```

The exact CAR matrix test can be reproduced with the following finite-energy construction. Positive Virasoro modes lower energy, so using all NS states below the stated energy ceiling introduces no boundary error into $L_{-n}L_n$ on those states.

```python
from sage.all import *
from itertools import combinations
Emax = QQ(6)
modes = [QQ(j)/2 for j in range(1,12,2)]
basis = []
for length in range(len(modes)+1):
    for occupation in combinations(modes,length):
        if sum(occupation) <= Emax:
            basis.append(occupation)
basis.sort(key=lambda t:(sum(t),t))
index = {t:i for i,t in enumerate(basis)}

def psi(s,t):
    r = abs(s)
    present = r in t
    position = sum(1 for u in t if u < r)
    if (s>0 and not present) or (s<0 and present):
        return None,0
    out = tuple(u for u in t if u != r) if s>0 else tuple(sorted(t+(r,)))
    return out,(-1)**position

def Lpositive(n):
    result = matrix(QQ,len(basis))
    for column,t in enumerate(basis):
        for r in modes+[-v for v in modes]:
            if abs(r+n) not in modes:
                continue
            u,s1 = psi(r+n,t)
            if not s1:
                continue
            v,s2 = psi(-r,u)
            if s2 and v in index:
                result[index[v],column] += (r+QQ(n)/2)*s1*s2/2
    return result

I = identity_matrix(QQ,len(basis))
L0 = diagonal_matrix(QQ,[sum(t) for t in basis])
S2 = zero_matrix(QQ,len(basis))
for n in range(1,7):
    Ln = Lpositive(n)
    S2 += n*n*Ln.transpose()*Ln
D = 2*S2+(L0-I/48)/60-I/6048
F = diagonal_matrix(QQ,[QQ(4)/15*sum(r**5 for r in t)-QQ(31)/60480
                        for t in basis])
assert len(basis) == 18
assert D == F
```

For the finite-part closed form, an additional 500-term numerical sum differed from the analytic expression by approximately $4.6\times10^{-52}$ at $\epsilon=1/4$ and $4.7\times10^{-19}$ at $\epsilon=1/10$, consistent with the omitted exponentially small tails. These numerical checks support, but are not needed for, the exact Laurent/limit computation.
