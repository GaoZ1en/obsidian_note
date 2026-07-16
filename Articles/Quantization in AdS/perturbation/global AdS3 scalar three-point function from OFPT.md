# Global AdS3 scalar three-point function from OFPT

Date: 2026-07-15

Source comparison: A. L. Fitzpatrick, E. Katz, D. Poland, and D. Simmons-Duffin, *Effective Conformal Theory and the Flat-Space Limit of AdS*, arXiv:1007.2412, especially Eqs. (2.19)-(2.21), (3.16), and (4.3)-(4.5).

## 0. Direct verdict

The directly OFPT-computable three-point object is the cubic Hamiltonian matrix element

$$\begin{align}
\mathcal V_{mn}:={}_\chi\!\langle m,0|V|n,0\rangle_2,
\end{align}$$

between one $\chi$ particle and the scalar two-$\phi$ primary state. Under standard quantization, AdS radius one, the Fitzpatrick et al. state normalization, and

$$\begin{align}
V(t)=\frac{\mu^{3/2}}{2}\int_{\Sigma_t}d^2x\,N\sqrt h\,\phi^2\chi,
\end{align}$$

the AdS$_3$ result is

$$\begin{align}
\boxed{ \mathcal V_{mn} =\frac{\mu^{3/2}}{4\sqrt{\pi}} \frac{\left(\frac{\Delta_\chi-E_n+2}{2}\right)_m} {\left(\frac{\Delta_\chi+E_n-2}{2}\right)_{m+1}}, \qquad E_n=2\Delta+2n.
}
\end{align}$$

This is exactly the $d=2$ specialization of Eq. (4.5) of arXiv:1007.2412. It is a three-state Hamiltonian coefficient and the vertex entering OFPT. It is not, by itself, the canonically normalized position-space boundary correlator coefficient $C_{\phi\phi\chi}$; that additional identification requires a fixed bulk-to-boundary extrapolate normalization.

## 1. Model and conventions

Use global AdS$_3$ coordinates $(t,r,\varphi)$,

$$\begin{align}
ds^2=-(1+r^2)dt^2+\frac{dr^2}{1+r^2}+r^2d\varphi^2, \qquad r\in[0,\infty), \qquad \varphi\sim\varphi+2\pi.
\end{align}$$

For comparison with the paper, set $r=\tan\rho$. Then

$$\begin{align}
ds^2=\frac{1}{\cos^2\rho}\left(-dt^2+d\rho^2+\sin^2\rho\,d\varphi^2\right), \qquad N\sqrt h\,dr\,d\varphi=r\,dr\,d\varphi =\frac{\sin\rho}{\cos^3\rho}\,d\rho\,d\varphi.
\end{align}$$

Let $\phi$ and $\chi$ be standard-quantized real scalars with

$$\begin{align}
m_\phi^2&=\Delta(\Delta-2), & m_\chi^2&=\Delta_\chi(\Delta_\chi-2), & \Delta,\Delta_\chi&>1.
\end{align}$$

The interaction is the $d=2$ specialization of Eq. (4.1) of Fitzpatrick et al.,

$$\begin{align}
V(t) =\frac{\mu^{3/2}}{2} \int_0^\infty r\,dr\int_0^{2\pi}d\varphi\,\phi(t,r,\varphi)^2\chi(t,r,\varphi).
\end{align}$$

The factor $1/2$ compensates the two identical $\phi$ fields. At this first-order cubic matrix element there is no loop integral. The composite $\phi^2$ is understood in the same normal-ordering or renormalized-composite prescription used to define the external two-particle state.

## 2. CPS-normalized states

The scalar two-particle primary state and the one-$\chi$-particle scalar descendant have free energies

$$\begin{align}
H_0|n,0\rangle_2&=E_n|n,0\rangle_2, & E_n&=2\Delta+2n,\\
H_0|\chi;m,0\rangle&=E_m^\chi|\chi;m,0\rangle, & E_m^\chi&=\Delta_\chi+2m.
\end{align}$$

The $d=2$, $l=0$ specialization of the one-particle mode normalization in Eqs. (2.19)-(2.21) gives

$$\begin{align}
N_{\Delta_\chi,m,0}=(-1)^m.
\end{align}$$

At $t=0$, the corresponding matrix element is

$$\begin{align}
{}_\chi\!\langle m,0|\chi(0,\rho,\varphi)|0\rangle =\frac{(-1)^m}{\sqrt{2\pi}} (\cos\rho)^{\Delta_\chi} {}_2F_1\!\left(-m,\Delta_\chi+m;1;\sin^2\rho\right).
\end{align}$$

Equation (3.16) of the paper gives the normalized scalar-primary wavefunction

$$\begin{align}
\langle0|\phi^2(0,\rho,\varphi)|n,0\rangle_2 =\frac{1}{\sqrt{2}\,\pi}(\cos\rho)^{E_n}.
\end{align}$$

In $r$ coordinates these are obtained by

$$\begin{align}
\cos\rho=(1+r^2)^{-1/2}, \qquad \sin^2\rho=\frac{r^2}{1+r^2}.
\end{align}$$

## 3. Cubic Hamiltonian matrix element

Substituting the two wavefunctions into $V(0)$ and performing the angular integral gives

$$\begin{align}
2\pi\left(\frac{1}{\sqrt{2\pi}}\right) \left(\frac{1}{\sqrt{2}\,\pi}\right) =\frac{1}{\sqrt{\pi}},
\end{align}$$

and hence

$$\begin{align}
\mathcal V_{mn} =\frac{\mu^{3/2}}{2\sqrt{\pi}}(-1)^m \int_0^{\pi/2}d\rho\, \sin\rho\,(\cos\rho)^{\Delta_\chi+E_n-3} {}_2F_1\!\left(-m,\Delta_\chi+m;1;\sin^2\rho\right).
\end{align}$$

Define the two combinations that label the terminating radial integral,

$$\begin{align}
A_n:=\frac{\Delta_\chi-E_n+2}{2}, \qquad B_n:=\frac{\Delta_\chi+E_n-2}{2}.
\end{align}$$

With $x=\sin^2\rho$, the radial integral is

$$\begin{align}
&\int_0^{\pi/2}d\rho\, \sin\rho\,(\cos\rho)^{\Delta_\chi+E_n-3}
{}_2F_1\!\left(-m,\Delta_\chi+m;1;\sin^2\rho\right)\\
&\qquad =\frac12\int_0^1dx\,(1-x)^{B_n-1} {}_2F_1(-m,\Delta_\chi+m;1;x)\\
&\qquad =\frac{(-1)^m}{2}\frac{(A_n)_m}{(B_n)_{m+1}}.
\end{align}$$

The $(-1)^m$ produced by the terminating hypergeometric integral cancels the mode phase $N_{\Delta_\chi,m,0}^{-1}=(-1)^m$. Therefore

$$\begin{align}
\mathcal V_{mn} &=\frac{\mu^{3/2}}{4\sqrt{\pi}}\frac{(A_n)_m}{(B_n)_{m+1}}\\
&=\frac{\mu^{3/2}}{4\sqrt{\pi}} \frac{ \Gamma\!\left(\frac{\Delta_\chi+E_n-2}{2}\right) \Gamma\!\left(\frac{\Delta_\chi+2m-E_n+2}{2}\right)
}{ \Gamma\!\left(\frac{\Delta_\chi-E_n+2}{2}\right)
\Gamma\!\left(\frac{\Delta_\chi+2m+E_n}{2}\right)
}.
\end{align}$$

The original terminating integral is the primary definition at exceptional parameter values where individual Gamma functions have poles. The Gamma ratio is then understood by analytic continuation or by taking the combined limit. Standard quantization gives absolute radial convergence because $\operatorname{Re}(\Delta_\chi+E_n)>2$.

### 3.1 Lowest $\chi$ intermediate mode

For $m=0$,

$$\begin{align}
\mathcal V_{0n} =\frac{\mu^{3/2}}{2\sqrt{\pi}(\Delta_\chi+E_n-2)} =\frac{\mu^{3/2}}{2\sqrt{\pi}(\Delta_\chi+2\Delta+2n-2)}.
\end{align}$$

This also follows directly in $r$ coordinates,

$$\begin{align}
\mathcal V_{0n} =\frac{\mu^{3/2}}{2\sqrt{\pi}} \int_0^\infty r\,dr\,(1+r^2)^{-(\Delta_\chi+E_n)/2} =\frac{\mu^{3/2}}{2\sqrt{\pi}(\Delta_\chi+E_n-2)}.
\end{align}$$

## 4. Bulk time-ordered three-point function

With the Hamiltonian convention $U_I=T\exp[-i\int dt\,V_I(t)]$, the connected bulk three-point function at first order is

$$\begin{align}
&\langle0|T\phi(X_1)\phi(X_2)\chi(X_3)|0\rangle_{\rm conn}^{(1)}\\
&\qquad =-i\mu^{3/2}\int_{\mathrm{AdS}_3}d^3X\sqrt{-g(X)}\, G_F^\phi(X_1,X)G_F^\phi(X_2,X)G_F^\chi(X_3,X).
\end{align}$$

The factor of two from contracting the two identical fields at the vertex cancels the $1/2$ in $V$. Expanding each $G_F$ into CPS-normalized positive- and negative-frequency modes splits this covariant integral into its global-time orderings. The spatial coefficient connecting a two-$\phi$ primary to a one-$\chi$ state is precisely $\mathcal V_{mn}$ derived above.

Thus the covariant Witten integral and the OFPT mode sum are two representations of the same first-order bulk correlator. The comparison with Fitzpatrick et al. is made at the level of the normalized Hamiltonian coefficient $\mathcal V_{mn}$ because that is the object entering their spectral energy-denominator expansion.

## 5. Finite-time three-point transition amplitude

The interaction-picture matrix element is

$$\begin{align}
{}_\chi\!\langle m,0|V_I(t)|n,0\rangle_2 =e^{i(E_m^\chi-E_n)t}\mathcal V_{mn}.
\end{align}$$

For a constant interaction on the symmetric interval $[-T/2,T/2]$, the first-order transition amplitude is

$$\begin{align}
\mathcal A_{mn}^{(1)}(T) &=-i\int_{-T/2}^{T/2}dt\, {}_\chi\!\langle m,0|V_I(t)|n,0\rangle_2\\
&=-2i\mathcal V_{mn} \frac{\sin[(E_m^\chi-E_n)T/2]}{E_m^\chi-E_n}.
\end{align}$$

At exact resonance $E_m^\chi=E_n$,

$$\begin{align}
\mathcal A_{mn}^{(1)}(T)=-iT\mathcal V_{mn}.
\end{align}$$

This secular growth signals mixing between the one-$\chi$ and two-$\phi$ sectors. The correct long-time object is the effective Hamiltonian on the resonant subspace, not the truncated linear-in-$T$ amplitude.

## 6. Fitzpatrick et al. comparison

The general result in Eq. (4.5) of arXiv:1007.2412 reduces at $d=2$ as follows:

1. the interaction coefficient becomes $\mu^{(5-d)/2}=\mu^{3/2}$;
2. Eq. (3.16) gives $N_{n,0}^{\phi^2}=\sqrt{2}\,\pi$;
3. the square-root Gamma normalization in Eq. (4.5) reduces to $\sqrt{\pi/8}$;
4. $[N_{n,0}^{\phi^2}]^{-1}\sqrt{\pi/8}=1/(4\sqrt{\pi})$;
5. the remaining Gamma ratio is exactly the expression in Section 3.

Thus

$$\begin{align}
\boxed{ \mathcal V_{mn}^{\rm here} =\left.{}_\chi\!\langle m,0|V|n,0\rangle_2^{\rm Fitzpatrick\ et\ al.} \right|_{d=2}.
}
\end{align}$$

Their second-order s-channel anomalous dimension includes the ordinary and time-reversed intermediate sectors. With

$$\begin{align}
\frac{1}{E_n-E_m^\chi} +\frac{1}{-E_n-E_m^\chi} =\frac{2E_m^\chi}{E_n^2-(E_m^\chi)^2},
\end{align}$$

the OFPT result is

$$\begin{align}
\gamma_s(n,0) =\sum_{m=0}^{\infty}|\mathcal V_{mn}|^2 \frac{2E_m^\chi}{E_n^2-(E_m^\chi)^2},
\end{align}$$

which is Eq. (4.4) of the paper. For $E_n<E_m^\chi$, the contribution is negative, as expected from second-order level repulsion. At $E_n=E_m^\chi$, nondegenerate OFPT fails and the resonant sectors must be diagonalized together.

## 7. Relation to the boundary scalar three-point function

Conformal symmetry fixes the boundary position dependence to

$$\begin{align}
\langle\mathcal O_\phi(x_1)\mathcal O_\phi(x_2)\mathcal O_\chi(x_3)\rangle =\frac{C_{\phi\phi\chi}} {|x_{12}|^{2\Delta-\Delta_\chi}
|x_{13}|^{\Delta_\chi}
|x_{23}|^{\Delta_\chi}}.
\end{align}$$

The coefficient $\mathcal V_{mn}$ computed above is a global-Hamiltonian three-state matrix element. It determines the OFPT transition and exchange sums after the bulk states have been CPS normalized. It is not numerically identical to $C_{\phi\phi\chi}$ until the normalization of each boundary extrapolate map is specified. Equation (4.5) of Fitzpatrick et al. is a comparison for $\mathcal V_{mn}$, not a direct formula for the canonically normalized boundary OPE coefficient.

## 8. Verification status

Verified:

1. The PDF pages containing Eqs. (2.19)-(2.21), (3.16), and (4.1)-(4.5) were rendered and visually inspected; the square root in Eq. (4.5) covers only the first Gamma normalization factor.
2. Mathematica reduced the $d=2$ specialization of Eq. (4.5) to the Pochhammer form above with zero residual.
3. Mathematica evaluated the $m=0$ radial integral and found

$$\begin{align}
\int_0^{\pi/2}d\rho\, \sin\rho\,(\cos\rho)^{\Delta_\chi+E_n-3} =\frac{1}{\Delta_\chi+E_n-2}.
\end{align}$$

4. The terminating-hypergeometric integral was checked symbolically for $m=0,\ldots,6$; every residual vanished.
5. For $\Delta=2$, $\Delta_\chi=5/2$, $n=1$, $m=2$, and $\mu=1$, a 50-digit numerical radial integral and the closed expression both gave

$$\begin{align}
\mathcal V_{21}=-0.00036469914902893101935881024664561900\ldots.
\end{align}$$

6. Mathematica verified the time-ordering identity leading to Eq. (4.4) with zero residual.

Assumptions:

1. AdS radius $L=1$ and standard quantization with $\Delta,\Delta_\chi>1$.
2. The paper's mode phases and unit-normalized states are used.
3. The cubic composite is defined in a scheme compatible with the stated external-state normalization.
4. The calculation is away from exact one-$\chi$/two-$\phi$ degeneracy unless a degenerate effective Hamiltonian is introduced.

Not verified:

1. The infinite $m$ sum for the full second-order anomalous dimension was not resummed to the paper's generalized hypergeometric expression.
2. The boundary extrapolate normalizations needed to turn $\mathcal V_{mn}$ into a convention-specific $C_{\phi\phi\chi}$ were not fixed.
3. No loop or finite-width resummation at the scalar resonance was performed.

## 9. References and local framework

1. [Effective Conformal Theory and the Flat-Space Limit of AdS](https://arxiv.org/abs/1007.2412)
2. [CPS-normalized OFPT framework](cps-paqft-formalism/cps_old_fashioned_perturbation_theory.md)
3. [Practical CPS canonical/Wick pipeline](<cps canonical quantization to loop corrections.md>)
