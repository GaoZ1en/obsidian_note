# Matching the mode sum and the BTZ image Green function

Date: 2026-07-12

## 0. Direct verdict

For the standard $\Delta=2$ scalar, the Euclidean continuation of the CPS-normalized real-frequency mode sum equals the BTZ quotient image Green function.

The equality follows analytically from uniqueness of the Euclidean Dirichlet problem. A direct truncated calculation at three noncoincident point pairs agrees at relative error of order $10^{-5}$.

## 1. Euclidean mode representation

For $0\le\Delta\tau\le\beta_H$, the right-exterior HHI two-point function continues to

$$\begin{align}
G_E^{\rm mode} =\frac1{2\pi}
\sum_{m\in\mathbb Z} e^{im\Delta\varphi} \int_0^\infty d\omega\, R_{\omega m}(r)R_{\omega m}(r') \frac{ \cosh\!\left[ \omega\left(\frac{\beta_H}{2}-\Delta\tau\right) \right]
}{ \sinh(\beta_H\omega/2)
}.
\end{align}$$

This follows from

$$\begin{align}
(1+n_\beta)e^{-\omega\Delta\tau} +n_\beta e^{+\omega\Delta\tau} = \frac{ \cosh[\omega(\beta_H/2-\Delta\tau)]
}{ \sinh(\beta_H\omega/2)
}.
\end{align}$$

The equal-time singular normalization is fixed by the continuous completeness relation, so this kernel has the correct Euclidean delta source.

## 2. Image representation

For the non-rotating BTZ quotient, define

$$\begin{align}
Z_n = \frac{rr'}{r_+^2} \cosh\left[ \frac{r_+}{\ell} (\Delta\varphi+2\pi n) \right]
- \frac{ \sqrt{r^2-r_+^2}\sqrt{r'^2-r_+^2}
}{r_+^2}
\cos\left( \frac{r_+}{\ell^2}\Delta\tau \right).
\end{align}$$

For $\Delta=2$,

$$\begin{align}
G_2^{\mathbb H^3}(Z) =\frac1{4\pi\ell} \left( \frac{Z}{\sqrt{Z^2-1}}-1 \right),
\end{align}$$

and

$$\begin{align}
G_E^{\rm image}(X,X') =\sum_{n\in\mathbb Z} G_2^{\mathbb H^3}(Z_n).
\end{align}$$

The identity image supplies the local singularity. The nonzero images are smooth at coincidence for $r>0$.

## 3. Analytic equality

Both kernels satisfy

$$\begin{align}
(-\nabla_E^2+\mu^2)G_E =\frac{\delta^{(3)}(X-X')}{\sqrt g}
\end{align}$$

with:

1. period $\beta_H$ in Euclidean time;
2. regularity at the Euclidean tip;
3. standard source-free AdS falloff;
4. the same delta normalization.

For the primary model $\mu^2=0$. Let

$$\begin{align}
D(X,X') =G_E^{\rm mode}(X,X')-G_E^{\rm image}(X,X').
\end{align}$$

For fixed $X'$, $D$ is smooth and homogeneous. Integration by parts gives

$$\begin{align}
0 =\int d^3X\sqrt g\, D(-\nabla_E^2)D =\int d^3X\sqrt g\,|\nabla D|^2.
\end{align}$$

The boundary and tip terms vanish by standard falloff and regularity. Hence $D$ is constant. The source-free AdS condition excludes a nonzero constant, so

$$\begin{align}
\boxed{ G_E^{\rm mode}=G_E^{\rm image}
}.
\end{align}$$

This argument upgrades the comparison from numerical evidence to equality of the two representations.

## 4. Numerical comparison

Set

$$\begin{align}
\ell=r_+=1, \qquad \beta_H=2\pi, \qquad x=-r_*, \qquad r=\coth x.
\end{align}$$

At the half-period separation

$$\begin{align}
\Delta\tau=\pi,
\end{align}$$

the thermal factor reduces to

$$\begin{align}
\frac1{\sinh(\pi\omega)}.
\end{align}$$

The numerical mode representation used

$$\begin{align}
|m|\le12, \qquad 10^{-5}\le\omega\le12.
\end{align}$$

The image representation used $|n|\le8$; increasing this cutoff did not change the displayed digits.

| $x$ | $x'$ | $\Delta\varphi$ | mode sum | image sum | relative error |
|---:|---:|---:|---:|---:|---:|
| $1.0$ | $1.5$ | $0.35$ | $0.013288181979$ | $0.013288329457$ | $1.11\times10^{-5}$ |
| $0.8$ | $2.0$ | $1.10$ | $0.005135665048$ | $0.005135735801$ | $1.38\times10^{-5}$ |
| $1.2$ | $1.2$ | $0.70$ | $0.009306283709$ | $0.009306386566$ | $1.11\times10^{-5}$ |

For the first point pair, the angular partial sums were

| $m_{\max}$ | mode partial sum |
|---:|---:|
| $2$ | $0.012882165625$ |
| $4$ | $0.013319053419$ |
| $6$ | $0.013295683747$ |
| $8$ | $0.013288978156$ |
| $10$ | $0.013288231140$ |
| $12$ | $0.013288181979$ |

The remaining discrepancy is consistent with the omitted angular tail.

## 5. Direct regulated Lorentzian comparison

For the Wightman boundary value, use

$$\begin{align}
\Delta\tau=\epsilon+i\Delta t, \qquad 0<\epsilon<\beta_H.
\end{align}$$

The mode integral becomes

$$\begin{align}
W_{\epsilon}^{\rm mode} =\frac1{2\pi} \sum_m e^{im\Delta\varphi} \int_0^\infty d\omega\, R_{\omega m}(r)R_{\omega m}(r') \left[ (1+n_\beta)e^{-i\omega\Delta t-\epsilon\omega} +n_\beta e^{+i\omega\Delta t+\epsilon\omega} \right].
\end{align}$$

The corresponding image invariant is

$$\begin{align}
Z_n^\epsilon =rr'\cosh(\Delta\varphi+2\pi n) -\sqrt{r^2-1}\sqrt{r'^2-1} \cosh(\Delta t-i\epsilon)
\end{align}$$

in the benchmark units.

At

$$\begin{align}
(x,x',\Delta\varphi,\Delta t,\epsilon) =(1,1.5,0.35,0.4,0.2),
\end{align}$$

the image result is

$$\begin{align}
W_\epsilon^{\rm image} =0.094646858912-0.020027955507\,i.
\end{align}$$

With $\omega\le45$, the angular partial sums give

| $m_{\max}$ | $W_\epsilon^{\rm mode}$ | relative error |
|---:|---:|---:|
| $16$ | $0.095222765977-0.018641538220\,i$ | $1.55\times10^{-2}$ |
| $20$ | $0.094444404702-0.020040330035\,i$ | $2.10\times10^{-3}$ |
| $24$ | $0.094418247366-0.020093734237\,i$ | $2.46\times10^{-3}$ |
| $28$ | $0.094637970596-0.020045064355\,i$ | $1.99\times10^{-4}$ |

The nonmonotone intermediate error is the expected oscillatory angular truncation. The final regulated Lorentzian comparison directly checks the Wightman branch and its $i\epsilon$ prescription.

## 6. Consequences

The matching checks all normalization-sensitive links:

$$\begin{align}
\Omega \longrightarrow
R_{\omega m} \longrightarrow
[a_{\omega m},a_{\omega'm'}^\dagger] \longrightarrow
W_{\rm HHI} \longrightarrow
G_E^{\rm BTZ}.
\end{align}$$

It also establishes that the quotient image kernel is not an independent normalization convention. It is the closed-form representation of the same state constructed from CPS-normalized modes.

## 7. Verification status

Verified:

1. Mathematica checked the Bose-factor continuation identity.
2. The completeness calculation supplies the delta normalization of the mode kernel.
3. The difference of the two kernels vanishes by uniqueness of the positive Euclidean Dirichlet problem.
4. Three Euclidean truncated comparisons agree at relative error below $1.4\times10^{-5}$.
5. A direct regulated Lorentzian comparison agrees at relative error $1.99\times10^{-4}$.
6. The image series, angular partial sums, and Lorentzian frequency integral were separately checked for convergence.

Assumptions:

1. The analytic proof is for the primary standard-quantized $\Delta=2$ scalar.
2. The numerical comparison uses half-period Euclidean separation to obtain a rapidly convergent frequency integral.
3. The Lorentzian equality is the boundary value of this Euclidean identity with the HHI prescription; the direct test keeps $\epsilon=0.2$ finite.

Not verified:

1. No claim is made that the displayed finite cutoffs give uniform accuracy arbitrarily close to coincidence or to a null-related configuration.
2. The numerical Lorentzian test does not extrapolate $\epsilon$ to zero; the boundary limit is controlled by the analytic-continuation argument.
3. Other AdS scalar boundary conditions require replacing both kernels before repeating the uniqueness argument.
