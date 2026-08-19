# AdS--Rindler Scalar Quantization

This note quantizes a free scalar intrinsically in each AdS--Rindler wedge and states how the global vacuum is selected. The wedge oscillators are not glued by equating horizon field operators. They are paired by global analyticity, equivalently by the Unruh/KMS relation, after the classical Cauchy-data target of `ads-rindler geometric target.md` has been fixed.

## 1. Intrinsic wedge modes

With $\rho=\cosh y>1$,

$$\begin{align}
ds^2&=-(\rho^2-1)d\tau_A^2
+\dfrac{d\rho^2}{\rho^2-1}+\rho^2d\chi^2.
\end{align}$$

For $\omega>0$ and $k\in\mathbb R$, choose

$$\begin{align}
u_{A,\omega k}&=\mathcal N_{\omega k}
e^{-i\omega\tau_A+ik\chi}f_{\omega k}(\rho),\\
f_{\omega k}(\rho)&=\rho^{-\Delta}(1-\rho^{-2})^{-i\omega/2}
{}_2F_1\left(
\dfrac{\Delta-i\omega+ik}{2},
\dfrac{\Delta-i\omega-ik}{2};
\Delta;\rho^{-2}\right).
\end{align}$$

This is standard normalizable at the AdS boundary. If $z=1-\rho^{-2}$, its horizon expansion is

$$\begin{align}
f_{\omega k}&=A_{\omega k}z^{-i\omega/2}
+A_{\omega k}^*z^{i\omega/2}+O(z),\\
A_{\omega k}&=\dfrac{\Gamma(\Delta)\Gamma(i\omega)}
{\Gamma[\frac{\Delta+i(\omega-k)}2]
\Gamma[\frac{\Delta+i(\omega+k)}2]}.
\end{align}$$

Both horizon branches are required. They form the real-frequency standing-wave basis of a self-adjoint canonical problem. Keeping only the ingoing branch would define a retarded or quasinormal problem, not a complete oscillator basis.

## 2. CPS normalization

The wedge symplectic form is

$$\begin{align}
\omega_A&=\int_1^\infty d\rho\int_{-\infty}^{\infty}d\chi\,
\dfrac{\rho}{\rho^2-1}
\delta\partial_{\tau_A}\Phi_A\wedge\delta\Phi_A.
\end{align}$$

The horizon standing wave fixes

$$\begin{align}
8\pi^2\omega|\mathcal N_{\omega k}A_{\omega k}|^2&=1,
\end{align}$$

so

$$\begin{align}
\mathcal N_{\omega k}
=\dfrac{\sqrt{\sinh\pi\omega}}
{2\sqrt2\,\pi^{3/2}\Gamma(\Delta)}
\left|\Gamma\left(\dfrac{\Delta+i(\omega-k)}2\right)
\Gamma\left(\dfrac{\Delta+i(\omega+k)}2\right)\right|.
\end{align}$$

Then

$$\begin{align}
(u_{A,\omega k},u_{B,\omega'k'})
&=\delta_{AB}\delta(\omega-\omega')\delta(k-k'),\\
[b_{A,\omega k},b_{B,\omega'k'}^\dagger]
&=\delta_{AB}\delta(\omega-\omega')\delta(k-k').
\end{align}$$

The two wedge oscillator families are independent before a state is chosen.

## 3. Opposite boost orientations

The global boost Killing field restricts as

$$\begin{align}
\zeta|_{W_R}&=\partial_{\tau_R}, &
\zeta|_{W_L}&=-\partial_{\tau_L}.
\end{align}$$

Both $\partial_{\tau_A}$ are future directed in their own wedges. Therefore

$$\begin{align}
K_A&=\int_0^\infty d\omega\int_{-\infty}^{\infty}dk\,
\omega b_{A,\omega k}^\dagger b_{A,\omega k},\\
H_\zeta&=K_R-K_L.
\end{align}$$

Writing $K_R+K_L$ for the global boost would lose the left-wedge time orientation.

## 4. Horizon-analytic modes and the global vacuum

After a compatible reflection/CPT phase choice, define

$$\begin{align}
v_{1,\omega k}&=\dfrac{u_{R,\omega k}
+e^{-\pi\omega}u_{L,\omega,-k}^*}
{\sqrt{1-e^{-2\pi\omega}}},\\
v_{2,\omega k}&=\dfrac{u_{L,\omega k}
+e^{-\pi\omega}u_{R,\omega,-k}^*}
{\sqrt{1-e^{-2\pi\omega}}}.
\end{align}$$

The two terms denote analytic continuation across the Kruskal quadrants, not zero-extended spacetime solutions. Their annihilators are

$$\begin{align}
d_{1,\omega k}&=\dfrac{b_{R,\omega k}
-e^{-\pi\omega}b_{L,\omega,-k}^\dagger}
{\sqrt{1-e^{-2\pi\omega}}},\\
d_{2,\omega k}&=\dfrac{b_{L,\omega k}
-e^{-\pi\omega}b_{R,\omega,-k}^\dagger}
{\sqrt{1-e^{-2\pi\omega}}}.
\end{align}$$

The identity

$$\begin{align}
\dfrac1{1-e^{-2\pi\omega}}
-\dfrac{e^{-2\pi\omega}}{1-e^{-2\pi\omega}}&=1
\end{align}$$

gives canonical commutators. The global invariant vacuum is characterized by $d_1|\Omega_G\rangle=d_2|\Omega_G\rangle=0$.

## 5. Wightman and KMS data

Restricted to the right wedge,

$$\begin{align}
W_G(x,x')={}&\int_0^\infty d\omega\int_{-\infty}^{\infty}dk
\left[(1+n_\omega)u_{R,\omega k}(x)u_{R,\omega k}^*(x')\right.\\
&\left.+n_\omega u_{R,\omega k}^*(x)u_{R,\omega k}(x')\right],\\
n_\omega&=\dfrac1{e^{2\pi\omega}-1}.
\end{align}$$

It obeys the boost-time KMS relation at inverse temperature $2\pi$. The Rindler vacuum has $n_\omega=0$ and is not smooth across the global horizons.

For normalized global Jacobi modes $U_{n\ell}$, the split-Cauchy-data Bogoliubov kernels satisfy

$$\begin{align}
\beta^R_{n\ell;\omega k}
&=(-1)^\ell e^{-\pi\omega}
\alpha^{R*}_{n\ell;\omega k},\\
\alpha^L_{n\ell;\omega k}
&=(-1)^\ell\alpha^R_{n,-\ell;\omega k},\\
\beta^L_{n\ell;\omega k}
&=(-1)^\ell\beta^R_{n,-\ell;\omega k}.
\end{align}$$

These relations reconstruct both field and momentum components of global Cauchy data. Global evolution then determines the future and past regions. The global-time Hamiltonian is the Bogoliubov pullback of

$$\begin{align}
H_{\partial_t}&=\sum_{n,\ell}
(\Delta+2n+|\ell|)c_{n\ell}^\dagger c_{n\ell},
\end{align}$$

and is not $K_R+K_L$.

## 6. Regulated verification

The active script `numerics/ads_rindler_wedge.wl` reruns the preserved Mathematica checks and verifies:

- the radial hypergeometric equation and two-branch horizon expansion;
- CPS delta normalization and global Jacobi-mode normalization;
- the closed global/Rindler Fourier kernel;
- the $e^{-\pi\omega}$ Bogoliubov factor and Unruh commutator;
- the $\beta=2\pi$ thermal occupation identity.

Verified: free scalar wedge quantization, boost orientation, global Cauchy-data kernels and the Unruh/KMS characterization of the global vacuum.

Not claimed: equality of sharp horizon operators, a literal continuum tensor product $\mathcal H_R\otimes\mathcal H_L$, or unitary equivalence of sharp global and wedge Fock representations.
