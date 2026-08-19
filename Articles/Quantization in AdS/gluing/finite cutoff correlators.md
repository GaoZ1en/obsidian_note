# Finite-Cutoff Glued Correlators

This note computes the interval-scalar two-point functions in the global vacuum of the reduced $2N$-mode feedback regulator. It keeps the global vacuum distinct from the product regional reference Gaussian state. Every formula below is a fixed-cutoff statement unless a distributional limit is explicitly mentioned.

## 1. Field-evaluation rows

Let

$$\begin{align}
\boldsymbol c_{\mathrm{lr}}&=C_N\boldsymbol Q, &
\boldsymbol Q&=(Q_1,\ldots,Q_{2N})^{\mathrm T},
\end{align}$$

where $C_N$ is the configuration map of `finite cutoff Gaussian vacuum.md`. To avoid confusing the interface value with the global coordinate vector, write the former as $q_\Gamma$. Define

$$\begin{align}
\boldsymbol u(y)&=(u_1(y),\ldots,u_N(y))^{\mathrm T},\\
\ell_\Gamma^{\mathrm T}&=\dfrac1{\sqrt2}
(\boldsymbol h^{\mathrm T},\boldsymbol h^{\mathrm T}),\\
\ell_1(y)^{\mathrm T}&=(\boldsymbol u(y)^{\mathrm T},0)
+\dfrac yL\ell_\Gamma^{\mathrm T},\\
\ell_2(y)^{\mathrm T}&=(0,\boldsymbol u(y)^{\mathrm T})
+\dfrac yL\ell_\Gamma^{\mathrm T}.
\end{align}$$

The rows acting on global normal coordinates are

$$\begin{align}
F_i^{(N)}(y)&=\ell_i(y)^{\mathrm T}C_N, &
F_\Gamma^{(N)}&=\ell_\Gamma^{\mathrm T}C_N.
\end{align}$$

Thus

$$\begin{align}
\phi_i^{(N)}(t,y)&=\sum_{r=1}^{2N}F_{i,r}^{(N)}(y)Q_r(t), &
q_\Gamma(t)&=\sum_{r=1}^{2N}F_{\Gamma,r}^{(N)}Q_r(t).
\end{align}$$

The antisymmetric pole modes have $F_{\Gamma,2n}^{(N)}=0$ but remain present in $F_{1,2}^{(N)}$.

## 2. Wightman functions from normalized global modes

In the global vacuum $a_r\ket{0_{\mathrm g}^{(N)}}=0$,

$$\begin{align}
Q_r(t)&=\dfrac1{\sqrt{2\Omega_{r,N}}}
\left(a_re^{-i\Omega_{r,N}t}+a_r^\dagger e^{i\Omega_{r,N}t}\right).
\end{align}$$

The regional Wightman functions are therefore

$$\begin{align}
W_{ij}^{(N)}(t,y;t',y')
&=\braket{\phi_i^{(N)}(t,y)\phi_j^{(N)}(t',y')}\\
&=\sum_{r=1}^{2N}\dfrac{F_{i,r}^{(N)}(y)
F_{j,r}^{(N)}(y')}{2\Omega_{r,N}}
e^{-i\Omega_{r,N}(t-t')}.
\end{align}$$

This includes the cross-region correlator $W_{12}^{(N)}$. The interface and mixed correlators follow from the same expression:

$$\begin{align}
W_{\Gamma\Gamma}^{(N)}(t,t')
&=\sum_r\dfrac{(F_{\Gamma,r}^{(N)})^2}{2\Omega_{r,N}}
e^{-i\Omega_{r,N}(t-t')},\\
W_{\Gamma i}^{(N)}(t;t',y')
&=\sum_r\dfrac{F_{\Gamma,r}^{(N)}F_{i,r}^{(N)}(y')}
{2\Omega_{r,N}}e^{-i\Omega_{r,N}(t-t')}.
\end{align}$$

These are global-vacuum correlators. Replacing the global covariance by the product regional reference covariance gives a different state and hence different two-point functions.

## 3. Independent covariance propagation

Let $\boldsymbol z_{\mathrm g}=(\boldsymbol Q,\boldsymbol P)^{\mathrm T}$ and

$$\begin{align}
G_{\mathrm g}^{(N)}(0,0)
&=\braket{\boldsymbol z_{\mathrm g}\boldsymbol z_{\mathrm g}^{\mathrm T}}
=\Sigma_{\mathrm g}+\dfrac i2J.
\end{align}$$

For $\Omega_N=\operatorname{diag}(\Omega_{r,N})$, harmonic evolution is

$$\begin{align}
E_N(t)&=
\begin{pmatrix}
\cos\Omega_Nt&\Omega_N^{-1}\sin\Omega_Nt\\
-\Omega_N\sin\Omega_Nt&\cos\Omega_Nt
\end{pmatrix}.
\end{align}$$

If $\widehat F_i(y)=(F_i(y),0)$, then

$$\begin{align}
W_{ij}^{(N)}(t,y;t',y')
=\widehat F_i(y)E_N(t)
\left(\Sigma_{\mathrm g}+\dfrac i2J\right)
E_N(t')^{\mathrm T}\widehat F_j(y')^{\mathrm T}.
\end{align}$$

The verification script evaluates all of $W_{11}$, $W_{12}$, $W_{\Gamma\Gamma}$, $W_{\Gamma1}$ and $W_{\Gamma2}$ by both formulas. They agree at $N=1,2,4,8$ with 80-digit arithmetic.

For example, at $L=m=1$, $t=0.37$, $t'=-0.21$, $y=0.23$ and $y'=0.71$, the $N=4$ calculation gives

| correlator | value |
|---|---:|
| $W_{12}(t,y;t',y')$ | $-0.0361042542+0.0750267050i$ |
| $W_{\Gamma\Gamma}(t,t')$ | $0.0402239457-0.0900642738i$ |
| $W_{\Gamma1}(t;t',y)$ | $0.0199279692-0.0316112199i$ |
| $W_{\Gamma2}(t;t',y')$ | $0.0388150693-0.0835769530i$ |

These numbers are regression values for the stated regulator, not continuum estimates.

## 4. Commutator, retarded and time-ordered functions

The state-independent commutator kernel is

$$\begin{align}
\mathcal C_{ij}^{(N)}(x,x')
&=[\phi_i^{(N)}(x),\phi_j^{(N)}(x')]\\
&=W_{ij}^{(N)}(x,x')-W_{ji}^{(N)}(x',x)\\
&=-i\sum_r\dfrac{F_{i,r}^{(N)}(y)F_{j,r}^{(N)}(y')}
{\Omega_{r,N}}\sin[\Omega_{r,N}(t-t')].
\end{align}$$

With the convention for which $(\partial_t^2+\Omega^2)G_{\mathrm R}=\delta$ mode by mode,

$$\begin{align}
G_{\mathrm R,ij}^{(N)}(x,x')&=
i\theta(t-t')\mathcal C_{ij}^{(N)}(x,x'),\\
G_{\mathrm F,ij}^{(N)}(x,x')&=
\theta(t-t')W_{ij}^{(N)}(x,x')
+\theta(t'-t)W_{ji}^{(N)}(x',x).
\end{align}$$

No new state choice enters these constructions: the commutator is fixed by the CCR, while the retarded and time-ordered functions are obtained from the same Wightman data.

## 5. Equations and matching conditions

For each global frequency, let $c_{i,r}$ and $q_r$ be its reconstructed regional and interface amplitudes, and set $W_{\mathrm D}=m^2\mathbf1+D$. The finite feedback modes obey

$$\begin{align}
(W_{\mathrm D}-\Omega_{r,N}^2\mathbf1)c_{i,r}
+\boldsymbol A(m^2-\Omega_{r,N}^2)q_r&=0.
\end{align}$$

This is exactly the Galerkin projection of the bulk Klein--Gordon equation onto the first $N$ strict-Dirichlet regional modes. Consequently every two-point function satisfies the projected field equation in either argument. It would be incorrect to claim a pointwise continuum field equation for the truncated reconstruction.

The field-evaluation rows also give, exactly at every $N$,

$$\begin{align}
F_i^{(N)}(0)&=0,\\
F_1^{(N)}(L)&=F_2^{(N)}(L)=F_\Gamma^{(N)},\\
\partial_yF_1^{(N)}(L)+\partial_yF_2^{(N)}(L)&=0.
\end{align}$$

Therefore the Wightman, commutator, retarded and time-ordered correlators inherit the outer Dirichlet condition, interface continuity and oriented flux matching in either spatial argument.

## 6. Equal-time CCR and its regulator meaning

The exact finite-dimensional canonical statement is

$$\begin{align}
[c_{\mathrm{lr},A},p_{\mathrm{lr},B}]&=i\delta_{AB},\\
[\phi_i^{(N)}(y),p_{\mathrm{lr},B}]&=i\ell_{i,B}(y),\\
[\phi_i^{(N)}(t,y),\phi_j^{(N)}(t,y')]&=0.
\end{align}$$

Equivalently, in global normal coordinates,

$$\begin{align}
[\phi_i^{(N)}(y),P_r]&=iF_{i,r}^{(N)}(y).
\end{align}$$

The field--velocity commutator is the finite-rank kernel

$$\begin{align}
[\phi_i^{(N)}(t,y),\dot\phi_j^{(N)}(t,y')]
&=iK_{ij}^{(N)}(y,y'),\\
K_{ij}^{(N)}(y,y')&=\sum_{r=1}^{2N}
F_{i,r}^{(N)}(y)F_{j,r}^{(N)}(y').
\end{align}$$

Because the feedback regulator's canonical metric is not the ordinary regional $L^2$ Gram matrix at finite $N$, $K_{ij}^{(N)}$ is not an ordinary truncated Dirichlet delta kernel. The reduced coordinate--momentum CCR above is the exact statement. A local $\delta$ distribution requires a canonical dual test-function construction and a controlled continuum limit; it must not be imposed on this finite regulator by inspection.

## 7. Coincident and interface limits

At fixed $N$, all displayed sums are finite. The following operations are not automatically finite or regulator independent as $N\to\infty$:

- coincident-point limits $W_{ii}(x,x)$ and derivatives used in composite operators;
- stress-tensor point splitting and equal-time derivatives of Wightman functions;
- interface traces such as $W_{\Gamma\Gamma}$ and normal derivatives at the sharp cut;
- the finite-rank kernel $K_{ij}^{(N)}$ interpreted as a distribution;
- sharp-interface entanglement quantities.

They require smearing, point splitting, subtraction, or another declared regulator before the cutoff is removed. Once the regulated two-point function is fixed, higher global-vacuum correlators follow from Wick's theorem; Wick factorization does not remove these ultraviolet qualifications.

## 8. Verification and claim boundary

The script `numerics/finite_cutoff_correlators.wl` checks $N=1,2,4,8$ with 80-digit arithmetic. It verifies:

- equality of the global-mode and covariance-propagation Wightman functions;
- Wightman Hermiticity;
- the projected regional field equation for every reconstructed global mode;
- outer Dirichlet conditions, interface continuity and oriented flux matching;
- preservation of the reduced left--right symplectic form and its coordinate--momentum CCR;
- the equal-time field--field commutator.

Verified: all finite-$N$ two-point functions stated above and their finite-regulator equations and matching conditions.

Assumptions: the state is the zero-mean global vacuum of the reduced feedback regulator; a prescribed classical mean would add the corresponding product of one-point functions.

Not verified: pointwise continuum Klein--Gordon equations for the truncated field, an unsmeared coincident/interface continuum limit, or a regulator-independent local stress tensor.
