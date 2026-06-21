1. check eqs. (4.3) and (4.5) explicitly.
for a infinitesimal conformal transformation, we have

$$
\tag{3.4.1}
\begin{align}
g_{\mu \nu}\to g_{\mu \nu}-f(x)g_{\mu \nu}
\end{align}
$$

the requirement that the transformation

$$
\tag{3.4.2}
\begin{align}
g_{\mu \nu}\to g_{\mu \nu}-(\partial_{\mu}\varepsilon_{\nu}+\partial_{\nu}\varepsilon_{\mu})
\end{align}
$$

to be conformal implies that

$$
\tag{3.4.3}
\begin{align}
\partial_{\mu}\varepsilon_{\nu}+\partial_{\nu}\varepsilon_{\mu} & =f(x)g_{\mu \nu}
\end{align}
$$

apply an extra derivative $\displaystyle{\partial_{\rho}}$ on (3.4.3)

$$
\tag{3.4.4}
\begin{align}
\partial_{\rho}\partial_{\mu}\varepsilon_{\nu}+\partial_{\nu}\partial_{\rho}\varepsilon_{\mu}=\partial_{\rho}f\eta_{\mu \nu}
\end{align}
$$

permuting the indices

$$
\tag{3.4.5}
\begin{align}
\partial_{\mu}\partial_{\nu}\varepsilon_{\rho}+\partial_{\rho}\partial_{\mu}\varepsilon_{\nu}=\partial_{\mu}f\eta_{\nu \rho} \\
\partial_{\nu}\partial_{\rho}\varepsilon_{\mu}+\partial_{\mu}\partial_{\nu}\varepsilon_{\rho}=\partial_{\nu}f\eta_{\rho \mu}
\end{align}
$$

and the take a linear combination

$$
\tag{3.4.6}
\begin{align}
2\partial_{\mu}\partial_{\nu}\varepsilon_{\rho} & =\partial_{\mu}f\eta_{\nu \rho}+\partial_{\nu}f\eta_{\rho \mu}-\partial_{\rho}f\eta_{\mu \nu}
\end{align}
$$

1. demonstrate that the metric scale factor produced by a special conformal transformation is given by eqs. (4.16)

...

1. check eqs. (4.22) explicitly

under special conformal transformation, the distance separating two points $\displaystyle{x_{i}}$ and $\displaystyle{x_{j}}$ becomes

$$
\tag{3.4.7}
\begin{align}
\left|x_{i}^{'\mu}-x_{j}^{'\mu}\right| & =\left|\frac{x_{i}^{\mu}-b^{\mu}x_{i}^{2}}{1-2b\cdot x_{i}+b^{2}x_{i}^{2}}-\frac{x_{j}^{\mu}-b^{\mu}x_{j}^{2}}{1-2b\cdot x_{j}+b^{2}x_{j}^{2}}\right| \\
 & =\frac{|(1-2b\cdot x_{j}+b^{2}x_{j}^{2})(x_{i}^{\mu}-b^{\mu}x_{i}^{2})-(1-2b\cdot x_{i}+b^{2}x_{i}^{2})(x_{j}^{\mu}-b^{\mu}x_{j}^{2})|}{(1-2b\cdot x_{i}+b^{2}x_{i}^{2})^{1/2}(1-2b\cdot x_{j}+b^{2}x_{j}^{2})^{1/2} } \\
 & =\frac{|x_{i}^{\mu}-x_{j}^{\mu}|}{(1-2b\cdot x_{i}+b^{2}x_{i}^{2})^{1/2}(1-2b\cdot x_{j}+b^{2}x_{j}^{2})^{1/2}}
\end{align}
$$

1.
	1. show that the expression (4.62) for the four-point function is conformally covariant
	1. show that there are only two independent cross-ratios of the form (4.23) can be built out of four point, except in dimension two, where the two cross-ratios are related.

conformal covariance requires the four-point function transforms as

$$
\tag{3.4.8}
\begin{align}
\langle \phi_{1}(x_{1})\dots \phi_{4}(x_{4})\rangle & =\prod^{4}_{i=1} \left| \frac{\partial x'_{i}}{\partial x_{i}} \right|^{\Delta_{i}/d}\langle \phi_{1}(x_{1}')\dots \phi_{4}(x'_{4})\rangle
\end{align}
$$

now we will show that

$$
\tag{3.4.9}
\begin{align}
\langle \phi_{1}(x_{1})\dots \phi_{4}(x_{4})\rangle & =f\left( \frac{x_{12}x_{34}}{x_{13}x_{24}}, \frac{x_{12}x_{34}}{x_{23}x_{14}} \right)\prod^{4}_{i<j}x_{ij}^{\Delta/3-\Delta_{i}-\Delta_{j}}
\end{align}
$$

is conformal covariance.

$$
\tag{3.4.10}
\begin{align}
\langle \phi_{1}(x_{1}')\dots \phi_{4}(x_{4}')\rangle & =f\left( \frac{x'_{12}x'_{34}}{x'_{13}x'_{24}}, \frac{x'_{12}x'_{34}}{x'_{23}x'_{14}}\right)\prod^{4}_{i<j}x_{ij}^{'\Delta/3-\Delta_{i}-\Delta_{j}} \\
 & =f\left( \frac{x_{12}x_{34}}{x_{13}x_{24}}, \frac{x_{12}x_{34}}{x_{23}x_{14}} \right)\prod^{4}_{i<j} x_{ij}^{\Delta/3-\Delta_{i}-\Delta_{j}}\prod^{4}_{k} (1-2b\cdot x_{k}+b^{2}x_{k}^{2})^{\Delta_{i}} \\
 & =\prod^{4}_{i=1}\left| \frac{\partial x_{i}}{\partial x_{i}'} \right|^{\Delta_{i}/d}\langle \phi_{1}(x_{1})\dots \phi_{4}(x_{4})\rangle
\end{align}
$$

we will show that $\displaystyle{ \frac{x_{12}x_{34}}{x_{13}x_{24}}, \frac{x_{12}x_{34}}{x_{23}x_{14}}}$ are independent except in two dimensions for four points.

in two dimension,

1. scale invariance in momentum space

in momentum space, a correlation function of a set $\displaystyle{X}$ of $\displaystyle{n}$ fields $\displaystyle{\phi_{i}(x_{i})}$ is represented by its Fourier transform $\displaystyle{\Gamma_{X}(k_{1},\dots ,k_{n})}$ defined as

$$
\tag{3.4.11}
\begin{align}
\langle \phi_{1}(x_{1})\dots \phi_{n}(x_{n})\rangle & =\int \prod^{n-1}_{i=1} \frac{\mathrm{d}k_{i}}{(2\pi)^{d}}\Gamma_{X}(k_{1},\dots,k_{n}) e^{i(k_{1}\cdot x_{1}+\dots+k_{n}\cdot x_{n})}
\end{align}
$$

where $\displaystyle{-k_{n}=k_{1}+\dots+k_{n-1}}$ is fixed by momentum conservation (translation invariance). show that

1. the scale invariance imposes the following constraint on $\displaystyle{\Gamma_{X}}$:

$$
\tag{3.4.12}
\begin{align}
\Gamma_{X}(k_{1},\dots ,k_{n})=s^{(n-1)d-\Delta_{1}-\dots-\Delta_{n}}\Gamma_{X}(sk_{1},\dots,sk_{n})
\end{align}
$$

where $\displaystyle{\Delta_{i}}$ is the scaling dimension of the field $\displaystyle{\phi_{i}}$

1. show that the two-point function $\displaystyle{\Gamma_{2}(X)}$ of a scale-invariant theory is of the form

$$
\tag{3.4.13}
\begin{align}
\Gamma_{2}(k)\sim \frac{1}{k^{2-\eta}}
\end{align}
$$

where $\displaystyle{\eta}$ is the critical exponent defined as $\displaystyle{\Gamma(x)\sim \frac{1}{x^{d-2+\eta}}}$.

1. in dimension two, show that the two-point function in coordinate space must accordingly be

$$
\tag{3.4.14}
\begin{align}
G(r) & =\int^{\infty}_{\frac{1}{L}} \frac{\mathrm{d}k}{k^{1-\eta}}J_{0}(kr)
\end{align}
$$

where $\displaystyle{r=|x_{1}-x_{2}|}$, $\displaystyle{J_{0}}$ is the zeroth-order Bessel function and $\displaystyle{L^{-1}}$ is a low-momentum cutoff
