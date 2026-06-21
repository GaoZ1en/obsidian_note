# problem 1

consider an infinitesimal conformal transformation of the holomorphic sector

$$\begin{align}
z\mapsto z+\varepsilon(z)
\end{align}$$

the free boson field $\displaystyle{X^{\mu}}$ transforms as worldsheet scalar, its stress tensor is chosen to be

$$\begin{align}
T(z) & =-\frac{1}{\alpha'}:\partial X\cdot \partial X:(z)
\end{align}$$

calculate

$$\begin{align}
\delta _{\varepsilon}(\partial X^{\mu}),  & \quad \delta _{\varepsilon}T
\end{align}$$

## solution

we have

$$\begin{align}
\delta _{\varepsilon}(\partial X^{\mu}) & =\partial\left(\delta _{\varepsilon} X^{\mu}\right) \\
 & =\partial\left[-\varepsilon\partial X^{\mu}\right] \\
 & =-\varepsilon \partial ^{2}X^{\mu}-\partial \varepsilon \partial X^{\mu}
\end{align}$$

and

$$\begin{align}
\delta _{\varepsilon}T & =\frac{2}{\alpha'}:\partial X\cdot \left[\varepsilon \partial ^{2}X+\partial \varepsilon \partial X\right]:(z) \\
 & =\frac{2}{\alpha'}\varepsilon:\partial X \cdot\partial ^{2}X:(z)+\partial \varepsilon \frac{2}{\alpha'}:\partial X\cdot\partial X:(z) \\
 & =-\varepsilon \partial T-2\partial \varepsilon T(z)
\end{align}$$

# problem 2

calculate

$$\begin{align}
\delta(\partial ^{n}X^{\mu})
\end{align}$$

in the holomorphic sector. argue that why $\displaystyle{\partial ^{n}X^{\mu}}$ is descendant of $\displaystyle{\partial X^{\mu}}$ instead of a conformal primary when $\displaystyle{n>1}$.

## solution

we have

$$\begin{align}
\delta _{\varepsilon}(\partial ^{n}X^{\mu}) & =\partial ^{n}(\delta _{\varepsilon}X^{\mu}) \\
 & =-\partial ^{n}(\varepsilon \partial X^{\mu}) \\
 & =-\sum_{k=0}^{n}\binom{n}{k}\partial ^{k}\varepsilon \partial ^{n+1-k}X^{\mu} \\
 & =-\varepsilon\partial(\partial^n X^\mu)-n\partial\varepsilon\partial^n X^\mu-\sum_{k=2}^{n}\binom{n}{k}\partial ^{k}\varepsilon \partial ^{n+1-k}X^{\mu}
\end{align}$$

For $n=1$, this is the transformation of a primary field of weight $1$. For $n>1$, the terms with $k\geq 2$ contain higher derivatives of the conformal parameter. Thus $\displaystyle{\partial ^{n}X^{\mu}}$ is not a conformal primary but a descendant of $\displaystyle{\partial X^{\mu}}$.

# problem 3

consider a conformal primary $\displaystyle{\mathcal{A}(z,\bar{z})}$ with weight $\displaystyle{(h,\bar{h})}$:

$$\begin{align}
\delta \mathcal{A} & =-(\varepsilon \partial+h\partial \varepsilon+\bar{\varepsilon}\bar{\partial}+\bar{h}\bar{\partial}\bar{\varepsilon})\mathcal{A}
\end{align}$$

prove that

$$\begin{align}
\mathcal{A}'(z',\bar{z}') & =\left(\frac{\partial z'}{\partial z}\right)^{-h}\left( \frac{\partial \bar{z}'}{\partial \bar{z}} \right)^{-\bar{h}}\mathcal{A}(z,\bar{z})
\end{align}$$

## solution

introduce a parameter $\displaystyle{t\in[0,1]}$, and let

$$\begin{align}
z_{t} & =z_{t}(t), & \bar{z}_{t} & =\bar{z}_{t}(t)
\end{align}$$

that satisfies the equation

$$\begin{align}
\frac{\mathrm{d}z_{t}}{\mathrm{d}t} & =\varepsilon(z_{t}),  & \frac{\mathrm{d}\bar{z}_{t}}{\mathrm{d}t} & =\bar{\varepsilon}(\bar{z}_{t})
\end{align}$$

which satisfies the initial and final conditions

$$\begin{align}
z_{0} & =z, & z_{1} & =z' \\
\bar{z}_{0} & =\bar{z}, & \bar{z}_{1} & =\bar{z}'
\end{align}$$

define

$$\begin{align}
\mathcal{A}_{t}(z_{t},\bar{z}_{t})
\end{align}$$

and

$$\begin{align}
\frac{\mathrm{d}}{\mathrm{d}t}\mathcal{A}_{t}(z_{t},\bar{z}_{t}) & =\partial _{t}\mathcal{A}_{t}+ \frac{\mathrm{d}z_{t}}{\mathrm{d}t}\partial \mathcal{A}_{t}+ \frac{\mathrm{d}\bar{z}_{t}}{\mathrm{d}t}\bar{\partial}\mathcal{A}_{t} \\
 & =-(h\partial \varepsilon+\bar{h}\bar{\partial}\bar{\varepsilon})\mathcal{A}_{t}(z_{t},\bar{z}_{t}) \\
\implies \mathcal{A}_{t}(z_{t},\bar{z}_{t}) & =\exp\left[-h\int _{0}^{t}\mathrm{d}t\partial \varepsilon-\bar{h}\int ^{t}_{0}\mathrm{d}t\bar{\partial}\bar{\varepsilon}\right]\mathcal{A}_{0}(z_{0},\bar{z}_{0}) \\
\implies \mathcal{A}'(z',\bar{z}') & =\left(\frac{\partial z'}{\partial z}\right)^{-h}\left( \frac{\partial \bar{z}'}{\partial \bar{z}} \right)^{-\bar{h}}\mathcal{A}(z,\bar{z})
\end{align}$$

# problem 4

use the OPE

$$\begin{align}
\partial X^{\mu}(z)\partial X^{\nu}(w)\sim -\frac{\alpha'}{2} \frac{\eta ^{\mu \nu}}{(z-w)^{2}}
\end{align}$$

and the stress tensor

$$\begin{align}
T(z) & =-\frac{1}{\alpha'}:\partial X\cdot \partial X:(z)
\end{align}$$

calculate the OPEs

$$\begin{align}
T(z)\partial X^{\mu}(w),\quad T(z)T(w)
\end{align}$$

## solution

we have

$$\begin{align}
T(z)\partial X^{\mu}(w) & =-\frac{1}{\alpha'}:\partial X\cdot \partial X:(z)\partial X^{\mu}(w)\\
 & =-\frac{1}{\alpha'}\eta _{\rho \sigma}:\partial X^{\rho}(z)\partial X^{\sigma}(z):\partial X^{\mu}(w) \\
 & \sim -\frac{1}{\alpha'}\eta _{\rho \sigma}\left(\partial X^{\rho}(z)\left(  -\frac{\alpha'}{2} \right) \frac{\eta ^{\sigma \mu}}{(z-w)^{2}}+\partial X^{\sigma}(z) \left( -\frac{\alpha'}{2} \right) \frac{\eta ^{\rho \mu}}{(z-w)^{2}}\right) \\
 & =\frac{\partial X^{\mu}(z)}{(z-w)^{2}} \\
 & \sim\frac{\partial X^{\mu}(w)}{(z-w)^{2}}+\frac{\partial ^{2}X^{\mu}(w)}{z-w}
\end{align}$$

and

$$\begin{align}
T(z)T(w) & =\frac{1}{\alpha'^{2}}\eta _{\mu \nu}\eta _{\rho \sigma}:\partial X^{\mu}(z)\partial X^{\nu}(z)::\partial X^{\rho}(w)\partial X^{\sigma}(w): \\
 & \sim \frac{1}{\alpha'^2}\eta_{\mu\nu}\eta_{\rho\sigma}\left[ 4\left(-\frac{\alpha'}{2}\right)\frac{\eta^{\mu\rho}}{(z-w)^2}:\partial X^\nu(z)\partial X^\sigma(w): +2\left(\frac{\alpha'^2}{4}\right)\frac{\eta^{\mu\rho}\eta^{\nu\sigma}}{(z-w)^4} \right] \\
 & =-\frac{2}{\alpha'}\frac{:\partial X(z)\cdot\partial X(w):}{(z-w)^2}+\frac{D}{2(z-w)^4} \\
 & \sim \frac{D}{2(z-w)^4}+\frac{2T(w)}{(z-w)^2}+\frac{\partial T(w)}{z-w}
\end{align}$$
