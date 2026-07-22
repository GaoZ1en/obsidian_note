# Global AdS3 two-particle primary states

Date: 2026-07-22

Source comparison: A. L. Fitzpatrick, E. Katz, D. Poland, and D. Simmons-Duffin, *Effective Conformal Theory and the Flat-Space Limit of AdS*, [arXiv:1007.2412](https://arxiv.org/abs/1007.2412).

## 0. Direct verdict

For one standard-quantized real scalar on global AdS$_3$, the entire free two-particle primary spectrum can be constructed inside the CPS-normalized Fock space. The missing step between the one-particle modes and OFPT is the lowest-weight decomposition

$$\begin{align}
\operatorname{Sym}^{2}\mathcal H_{1} &=\bigoplus_{\substack{p,q\geq 0\\
p+q\ \mathrm{even}}} \mathcal V_{\Delta+p,\Delta+q}.
\end{align}$$

Here $\mathcal H_{1}=\mathcal V_{\Delta/2}\otimes\overline{\mathcal V}_{\Delta/2}$ is the one-particle Hilbert space. The primary in the $(p,q)$ summand has

$$\begin{align}
E_{p,q}&=2\Delta+p+q, & \ell_{p,q}&=q-p.
\end{align}$$

Equivalently, all identical-boson two-particle primaries are labelled by

$$\begin{align}
n&\in\mathbb Z_{\geq0}, & \ell&\in2\mathbb Z, & E_{n,\ell}&=2\Delta+2n+|\ell|.
\end{align}$$

The explicit normalized oscillator formula is given in Section 5. The even-spin condition is Bose symmetry, not an extra dynamical assumption.

## 1. Global AdS$_3$ and the one-particle convention

Set the AdS radius to one and use

$$\begin{align}
ds^{2} &=-(1+r^{2})dt^{2}+\frac{dr^{2}}{1+r^{2}}+r^{2}d\varphi^{2}, & r&\in[0,\infty), & \varphi&\sim\varphi+2\pi.
\end{align}$$

Consider a real scalar with

$$\begin{align}
m^{2}=\Delta(\Delta-2),\qquad \Delta>1,
\end{align}$$

in standard quantization. Positive-frequency modes follow the convention of `formalism.md`:

$$\begin{align}
\Phi(t,r,\varphi)\propto e^{-iEt},\qquad E>0,
\end{align}$$

and the Klein--Gordon inner product is

$$\begin{align}
(\Phi_{1},\Phi_{2})_{\mathrm{KG}} &=i\int_{0}^{\infty}\frac{r\,dr}{1+r^{2}} \int_{0}^{2\pi}d\varphi\, \Phi_{1}^{*}\overleftrightarrow{\partial_{t}}\Phi_{2}.
\end{align}$$

The normalized lowest mode is

$$\begin{align}
\Phi_{0,0}(t,r,\varphi) &=\frac{1}{\sqrt{2\pi}}e^{-i\Delta t}(1+r^{2})^{-\Delta/2}.
\end{align}$$

It obeys the Klein--Gordon equation and has unit KG norm.

## 2. $L_{-1,0,+1}$ in $(t,r,\varphi)$ coordinates

Write $s(r)=\sqrt{1+r^{2}}$. Use $\ell_{a}$ and $\bar\ell_{a}$ for the differential action on one-particle mode functions, reserving $L_{a}$ and $\bar L_{a}$ for the corresponding second-quantized Fock-space charges. The unbarred generators are

$$\begin{align}
\ell_{0} &=\frac{i}{2}(\partial_{t}+\partial_{\varphi}),\\
\ell_{+1} &=\frac{i e^{i(t+\varphi)}}{2s(r)} \left[-r\partial_{t}+i(1+r^{2})\partial_{r} -\frac{1+r^{2}}{r}\partial_{\varphi}\right],\\
\ell_{-1} &=\frac{i e^{-i(t+\varphi)}}{2s(r)} \left[-r\partial_{t}-i(1+r^{2})\partial_{r} -\frac{1+r^{2}}{r}\partial_{\varphi}\right].
\end{align}$$

Thus, on the free Fock space,

$$\begin{align}
L_{a}&=d\Gamma(\ell_{a}), & \bar L_{a}&=d\Gamma(\bar\ell_{a}).
\end{align}$$

The apparent $1/r$ terms in the differential representatives are regular on smooth modes with the corresponding angular behavior at $r=0$.

The barred generators are

$$\begin{align}
\bar\ell_{0} &=\frac{i}{2}(\partial_{t}-\partial_{\varphi}),\\
\bar\ell_{+1} &=\frac{i e^{i(t-\varphi)}}{2s(r)} \left[-r\partial_{t}+i(1+r^{2})\partial_{r} +\frac{1+r^{2}}{r}\partial_{\varphi}\right],\\
\bar\ell_{-1} &=\frac{i e^{-i(t-\varphi)}}{2s(r)} \left[-r\partial_{t}-i(1+r^{2})\partial_{r} +\frac{1+r^{2}}{r}\partial_{\varphi}\right].
\end{align}$$

They satisfy

$$\begin{align}
[\ell_{0},\ell_{\pm1}]&=\mp\ell_{\pm1}, & [\ell_{+1},\ell_{-1}]&=2\ell_{0},\\
[\bar\ell_{0},\bar\ell_{\pm1}]&=\mp\bar\ell_{\pm1}, & [\bar\ell_{+1},\bar\ell_{-1}]&=2\bar\ell_{0},\\
[\ell_{a},\bar\ell_{b}]&=0.
\end{align}$$

The one-particle energy and angular-momentum operators are

$$\begin{align}
h&:=\ell_{0}+\bar\ell_{0}=i\partial_{t}, & j&:=\bar\ell_{0}-\ell_{0}=-i\partial_{\varphi}.
\end{align}$$

Therefore a mode proportional to $e^{-iEt+i\ell\varphi}$ has energy $E$ and signed spin $\ell$. The lowest mode obeys

$$\begin{align}
\ell_{0}\Phi_{0,0} &=\frac{\Delta}{2}\Phi_{0,0}, & \bar\ell_{0}\Phi_{0,0} &=\frac{\Delta}{2}\Phi_{0,0},\\
\ell_{+1}\Phi_{0,0}&=0, & \bar\ell_{+1}\Phi_{0,0}&=0.
\end{align}$$

Thus $\Phi_{0,0}$ is a lowest-weight mode in our positive-frequency convention. Relative to arXiv:1007.2412, this amounts to $t_{\mathrm{here}}=-t_{\mathrm{paper}}$.

## 3. Normalized one-particle descendant basis

Define

$$\begin{align}
\Phi_{m,\bar m} &:=\frac{\ell_{-1}^{m}\bar\ell_{-1}^{\bar m}} {\sqrt{m!(\Delta)_{m}\,\bar m!(\Delta)_{\bar m}}}\Phi_{0,0}, & m,\bar m&\in\mathbb Z_{\geq0},
\end{align}$$

where $(a)_{m}$ is the rising Pochhammer symbol. Choose oscillators so that

$$\begin{align}
|m,\bar m\rangle_{1} &:=a_{m,\bar m}^{\dagger}|0\rangle, & [a_{m,\bar m},a_{m',\bar m'}^{\dagger}] &=\delta_{mm'}\delta_{\bar m\bar m'}.
\end{align}$$

The one-particle charge action is

$$\begin{align}
L_{0}|m,\bar m\rangle_{1} &=\left(\frac{\Delta}{2}+m\right)|m,\bar m\rangle_{1},\\
L_{-1}|m,\bar m\rangle_{1} &=\sqrt{(m+1)(\Delta+m)}\,|m+1,\bar m\rangle_{1},\\
L_{+1}|m,\bar m\rangle_{1} &=\sqrt{m(\Delta+m-1)}\,|m-1,\bar m\rangle_{1},
\end{align}$$

with identical barred formulas acting on $\bar m$. Hence

$$\begin{align}
E_{m,\bar m}&=\Delta+m+\bar m, & \ell_{m,\bar m}&=\bar m-m.
\end{align}$$

The field expansion is

$$\begin{align}
\phi(x) &=\sum_{m,\bar m\geq0} \left[a_{m,\bar m}\Phi_{m,\bar m}(x) +a_{m,\bar m}^{\dagger}\Phi_{m,\bar m}^{*}(x)\right].
\end{align}$$

For a mode with nonnegative signed spin $\ell$, the usual radial/angular labels are related by

$$\begin{align}
m=n,\qquad \bar m=n+\ell,qquad E=\Delta+2n+\ell.
\end{align}$$

For negative spin, interchange $m$ and $\bar m$.

## 4. The chiral two-particle lowest-weight vector

First keep the two particles artificially labelled. At fixed total unbarred descendant level $p$, write

$$\begin{align}
|p\rangle_{L}^{(12)} &=\sum_{k=0}^{p}c_{k}^{(p)}
|k\rangle_{L}^{(1)}\otimes|p-k\rangle_{L}^{(2)}.
\end{align}$$

The condition

$$\begin{align}
\left(L_{+1}^{(1)}+L_{+1}^{(2)}\right)|p\rangle_{L}^{(12)}=0
\end{align}$$

gives the recurrence

$$\begin{align}
c_{k+1}^{(p)}\sqrt{(k+1)(\Delta+k)} +c_{k}^{(p)}\sqrt{(p-k)(\Delta+p-k-1)}=0.
\end{align}$$

Choose $c_{0}^{(p)}>0$. The normalized solution is

$$\begin{align}
c_{k}^{(p)} &=(-1)^{k} \sqrt{ \binom{p}{k} \frac{(\Delta)_{p}^{2}} {(2\Delta+p-1)_{p}(\Delta)_{k}(\Delta)_{p-k}}
}.
\end{align}$$

It obeys

$$\begin{align}
\sum_{k=0}^{p}\left|c_{k}^{(p)}\right|^{2}&=1, & c_{p-k}^{(p)}&=(-1)^{p}c_{k}^{(p)}.
\end{align}$$

Thus the chiral lowest-weight vector has particle-exchange parity $(-1)^{p}$. Repeating the construction in the barred sector gives coefficients $c_{\bar k}^{(q)}$ and exchange parity $(-1)^{q}$.

## 5. All normalized identical-boson two-particle primaries

Let

$$\begin{align}
p&=n+\max(-\ell,0), & q&=n+\max(\ell,0).
\end{align}$$

Then $q-p=\ell$ and $\min(p,q)=n$. For $p+q$ even, equivalently $\ell\in2\mathbb Z$, define

$$\begin{align}
|n,\ell\rangle_{2} &=\frac{(-1)^{n}}{\sqrt{2}}
\sum_{k=0}^{p}\sum_{\bar k=0}^{q} c_{k}^{(p)}c_{\bar k}^{(q)} a_{k,\bar k}^{\dagger} a_{p-k,q-\bar k}^{\dagger}|0\rangle.
\end{align}$$

The overall phase $(-1)^{n}$ is chosen so that the scalar-primary wavefunction in Section 7 is positive at $r=0$. These states satisfy

$$\begin{align}
L_{+1}|n,\ell\rangle_{2}&=0, & \bar L_{+1}|n,\ell\rangle_{2}&=0,\\
L_{0}|n,\ell\rangle_{2} &=(\Delta+p)|n,\ell\rangle_{2}, & \bar L_{0}|n,\ell\rangle_{2} &=(\Delta+q)|n,\ell\rangle_{2},\\
H_{0}|n,\ell\rangle_{2} &=(2\Delta+2n+|\ell|)|n,\ell\rangle_{2}, & J|n,\ell\rangle_{2} &=\ell|n,\ell\rangle_{2},\\
{}_{2}\langle n,\ell|n',\ell'\rangle_{2} &=\delta_{nn'}\delta_{\ell\ell'}.
\end{align}$$

If $p+q$ is odd, the coefficient matrix is antisymmetric under particle exchange and its bosonic Fock-space projection vanishes. This is why one identical real scalar has only even-spin double-trace primaries. For two distinguishable scalar species, this restriction is absent.

### 5.1 Completeness

The one-particle character is

$$\begin{align}
\chi_{1}(x,y) &=\frac{x^{\Delta/2}y^{\Delta/2}}{(1-x)(1-y)}.
\end{align}$$

The symmetric-square character is

$$\begin{align}
\chi_{\operatorname{Sym}^{2}\mathcal H_{1}}(x,y) &=\frac{1}{2} \left[\chi_{1}(x,y)^{2}+\chi_{1}(x^{2},y^{2})\right]\\
&=\sum_{\substack{p,q\geq0\\
p+q\ \mathrm{even}}} \frac{x^{\Delta+p}y^{\Delta+q}}{(1-x)(1-y)}.
\end{align}$$

Each summand is the character of the full descendant module generated from one $|p,q\rangle_{2}$. Therefore the construction above contains every identical-boson two-particle primary exactly once.

## 6. Lowest examples

The scalar ground primary is

$$\begin{align}
|0,0\rangle_{2} &=\frac{1}{\sqrt{2}}\left(a_{0,0}^{\dagger}\right)^{2}|0\rangle.
\end{align}$$

For $p=q=1$, the phase convention of Section 5 gives

$$\begin{align}
|1,0\rangle_{2} &=\frac{1}{\sqrt{2}} \left( a_{0,1}^{\dagger}a_{1,0}^{\dagger} -a_{0,0}^{\dagger}a_{1,1}^{\dagger} \right)|0\rangle.
\end{align}$$

For $(p,q)=(0,2)$,

$$\begin{align}
|0,+2\rangle_{2} &=\sqrt{\frac{\Delta}{2\Delta+1}} a_{0,0}^{\dagger}a_{0,2}^{\dagger}|0\rangle -\sqrt{\frac{\Delta+1}{2(2\Delta+1)}} \left(a_{0,1}^{\dagger}\right)^{2}|0\rangle.
\end{align}$$

The opposite-spin state is

$$\begin{align}
|0,-2\rangle_{2} &=\sqrt{\frac{\Delta}{2\Delta+1}} a_{0,0}^{\dagger}a_{2,0}^{\dagger}|0\rangle -\sqrt{\frac{\Delta+1}{2(2\Delta+1)}} \left(a_{1,0}^{\dagger}\right)^{2}|0\rangle.
\end{align}$$

## 7. Scalar two-particle primary wavefunction

To compare directly with Eq. (3.16) of arXiv:1007.2412, restrict here to the spin-zero primaries. A local scalar field at generic $r$ can have a nonzero matrix element with a spinning state; it is specifically at the rotation-fixed center $r=0$ that only $\ell=0$ survives. Define

$$\begin{align}
F_{n}(x) &:=\langle0|\phi^{2}(x)|n,0\rangle_{2}.
\end{align}$$

Lowest-weight covariance fixes its spacetime dependence. In the present convention,

$$\begin{align}
F_{n}(t,r,\varphi) &=C_{n}\,e^{-i(2\Delta+2n)t}(1+r^{2})^{-\Delta-n}.
\end{align}$$

At the center, only the spin-zero one-particle modes contribute. With the ladder phases above,

$$\begin{align}
\Phi_{k,k}(t,0) &=\frac{(-1)^{k}}{\sqrt{2\pi}}e^{-i(\Delta+2k)t}.
\end{align}$$

Using $\sum_{k}|c_{k}^{(n)}|^{2}=1$ and the overall $(-1)^{n}$ phase in $|n,0\rangle_{2}$ gives

$$\begin{align}
F_{n}(t,0) &=(-1)^{n}\sqrt{2}
\sum_{k=0}^{n}\left(c_{k}^{(n)}\right)^{2} \Phi_{k,k}(t,0)\Phi_{n-k,n-k}(t,0).
\end{align}$$

Therefore

$$\begin{align}
C_{n}&=\frac{1}{\sqrt{2}\,\pi}, \\
\boxed{ \langle0|\phi^{2}(t,r,\varphi)|n,0\rangle_{2} =\frac{1}{\sqrt{2}\,\pi} e^{-i(2\Delta+2n)t}(1+r^{2})^{-\Delta-n}}.
\end{align}$$

Under $r=\tan\rho$, this becomes

$$\begin{align}
\langle0|\phi^{2}(t,\rho,\varphi)|n,0\rangle_{2} &=\frac{1}{\sqrt{2}\,\pi} \left(e^{-it}\cos\rho\right)^{2\Delta+2n}.
\end{align}$$

This is the complex conjugate, or equivalently the $t_{\mathrm{here}}=-t_{\mathrm{paper}}$ translation, of Eq. (3.16) in arXiv:1007.2412.

## 8. Relation to the perturbative formalism

The state construction supplies the step that `formalism.md` previously assumed:

$$\begin{align}
\text{CPS one-particle modes} \longrightarrow \operatorname{Sym}^{2}\mathcal H_{1} \longrightarrow
|n,\ell\rangle_{2} \longrightarrow
{}_{2}\langle n,\ell|V|n',\ell'\rangle_{2} \longrightarrow
\delta E_{n,\ell}.
\end{align}$$

The first three arrows are free representation theory. The final arrows are the existing OFPT calculation. Only after fixing the AdS/CFT normalization should one identify the vacuum-subtracted energy shift with an anomalous dimension.

## 9. Verification status

### Verified

1. Mathematica checked that all six differential generators are Killing, that the two $\mathfrak{sl}(2)$ algebras close with zero residual, and that all barred--unbarred commutators vanish.
2. Mathematica checked the Klein--Gordon equation and unit KG norm of $\Phi_{0,0}$.
3. Mathematica returned zero for the general coefficient recurrence and evaluated the symbolic normalization sum to one for arbitrary integer $p\geq0$ and $\Delta>0$.
4. Sage independently checked the recurrence and normalization through $p=8$ and verified the exact rational character identity with zero residual.
5. Mathematica constructed the oscillator states explicitly for $n=0,1,2$ and found zero residual against the boxed scalar-primary wavefunction.

### Assumptions

1. One identical real scalar, standard quantization, $\Delta>1$, AdS radius one, and reflecting boundary conditions.
2. The free one-particle representation has no extra null states and the generators are adjoint with respect to the stated KG product.
3. The two-particle construction is the free or generalized-free-field sector; interactions are added only after this basis is fixed.

### Not verified here

1. Interaction-induced deformations of $L_{a}$ and $\bar L_{a}$.
2. Composite-operator renormalization beyond the free normal-ordered $\phi^{2}$ matrix element.
3. Alternative quantization, distinguishable particles, gauge constraints, or full Virasoro descendants.
4. Boundary extrapolate normalization and the conversion of a bulk matrix element into a convention-specific boundary OPE coefficient.
