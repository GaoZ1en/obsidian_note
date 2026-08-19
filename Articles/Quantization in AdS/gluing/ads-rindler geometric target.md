# AdS--Rindler Geometric Target

The left and right AdS--Rindler exteriors are not a two-piece Lorentzian cover of global AdS. The gluing target must therefore be fixed before any boundary-feedback or quantum construction is attempted.

## 1. Wedges and the missing regions

Embed unit-radius $\mathrm{AdS}_3$ in $\mathbb R^{2,2}$:

$$\begin{align}
-X_{-1}^2-X_0^2+X_1^2+X_2^2&=-1.
\end{align}$$

The right and left exteriors are

$$\begin{align}
W_R&:\ X_2>|X_0|, &
W_L&:\ X_2<-|X_0|.
\end{align}$$

They omit the future and past regions $|X_0|>|X_2|$. A horizon of $W_R$ borders a future or past quadrant, not $W_L$. Therefore equality of two exterior fields on a purported shared Killing horizon is not a global Lorentzian gluing prescription.

A characteristic formulation on the null horizons would require four regions $(W_R,W_L,F,P)$ and corner-compatible null data. That is not the construction pursued here.

## 2. Chosen target: matched global Cauchy data

The precise target is the global $t=0$ Cauchy slice. The two wedge time-zero slices are its complementary halves. With a signed coordinate $Y$,

$$\begin{align}
ds_\Sigma^2&=dY^2+\cosh^2Y\,d\chi^2,\\
\Sigma_R&:\ Y\ge0, &
\Sigma_L&:\ Y\le0, &
B&:\ Y=0.
\end{align}$$

The bifurcation geodesic $B$ is an ordinary codimension-one cut of the spatial Cauchy slice. The reconstruction problem is

$$\begin{align}
\text{matched data on }\Sigma_R\oplus\Sigma_L
\longrightarrow\text{one datum on }\Sigma
\longrightarrow\text{global AdS evolution}.
\end{align}$$

The second arrow fills the future and past regions. It is essential and cannot be replaced by evolution in the two exteriors alone.

## 3. Boundary and matching conditions

For a scalar with

$$\begin{align}
m^2&=\Delta(\Delta-2), & \Delta&>1,
\end{align}$$

use the standard normalizable boundary condition at conformal infinity. On $B$, smooth classical data obey

$$\begin{align}
\Phi_R|_B&=\Phi_L|_B,\\
n_R\cdot\nabla\Phi_R+n_L\cdot\nabla\Phi_L&=0,\\
\pi_R|_B&=\pi_L|_B.
\end{align}$$

The first two are configuration-domain matching; the third matches independent momentum data. For finite-energy data, pointwise traces need not exist. The invariant condition is that the two halves define a single element of the global energy phase space.

In active boundary-feedback language, first hold the two traces $q_A(\chi)=\Phi_A|_B$ fixed, so allowed regional variations vanish at the cut. Gluing identifies $q_R=q_L=q$ and then allows the common $q$ to vary. Stationarity gives the oriented normal-derivative condition. The momentum data are then matched on the Cauchy slice. No independent oscillator is assigned to $q$.

## 4. Symplectic identification

At $t=\tau_A=0$, the embedding gives

$$\begin{align}
\partial_{\tau_A}&=\dfrac{\tanh y_A}{\cosh\chi}\partial_t.
\end{align}$$

The Rindler momentum density is

$$\begin{align}
\pi_A^{\mathrm{Rin}}
&=\coth y_A\,\partial_{\tau_A}\Phi_A
=\dfrac1{\cosh\chi}\partial_t\Phi_A.
\end{align}$$

Consequently

$$\begin{align}
\omega_R+\omega_L
&=\sum_{A=R,L}\int_0^\infty dy_A\int_{-\infty}^{\infty}d\chi\,
\coth y_A\,
\delta\partial_{\tau_A}\Phi_A\wedge\delta\Phi_A\\
&=\omega_{\mathrm{global}}.
\end{align}$$

The apparent $\coth y$ singularity is harmless on smooth global data because $\partial_{\tau_A}\Phi_A=O(y_A)$ near $B$.

## 5. Optional regulator: a global-time timelike cut

A finite self-adjoint defect regulator can be defined by extending the two spatial halves along global time. Their common cut is a timelike $\mathrm{AdS}_2$ plane, not a Rindler horizon. A common/relative Robin regulator on this plane is exactly separable in the $\mathrm{AdS}_2$ slicing and approaches smooth global matching when its defect is removed.

This regulator is useful for spectral convergence, but it answers a different finite-cutoff problem from intrinsic wedge quantization. Its preserved calculation is rerun by `numerics/ads_rindler_wedge.wl`: at $\Delta=2$ it verifies the transverse Gegenbauer equation, the common and relative Robin spectra, recovery of the global towers, and response-matched fixed-window convergence through $N=64$.

## 6. Claim boundary

Verified: the geometric target, well-posed global Cauchy-data reconstruction, scalar matching conditions and equality of the wedge-slice and global symplectic forms.

Assumptions: standard normalizable AdS boundary conditions and free scalar evolution on global $\mathrm{AdS}_3$.

Not claimed: a direct two-exterior horizon action, coverage of the future/past quadrants by exterior evolution, or a null four-region variational principle.
