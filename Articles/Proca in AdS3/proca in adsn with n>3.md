the metric is defined as

$$\tag{1.1}
\begin{align}
\mathrm{d}s^{2} & =\frac{1}{\cos ^{2}\rho}\left(-\mathrm{d}t^{2}+\mathrm{d}\rho ^{2}+\sin ^{2}\rho \mathrm{d}\Omega ^{2}_{n-2}\right)
\end{align}
$$

where $\displaystyle{\mathrm{d}\Omega ^{2}_{n-2}}$ is the metric for unit sphere $\displaystyle{S^{n-2}}$. the spacetime $(\mathrm{AdS_{n}},g_{\mu \nu})$ is factorized to $\displaystyle{(\mathcal{N},g_{ab},\tilde{\nabla} _{a})\otimes(S^{n-2},g_{ij},\tilde{\nabla} _{i})}$ with Christoffel symbol

$$\tag{1.2}
\begin{align}
\Gamma ^{t}_{~t\rho} =\Gamma ^{\rho}_{~tt}=\Gamma ^{\rho}_{~\rho \rho}& =\tan \rho \\
\Gamma ^{\rho}_{ij} & =-\tan \rho \tilde{g}_{ij} \\
\Gamma ^{i}_{~\rho j} & =\frac{1}{\sin \rho \cos \rho}\delta ^{i}_{j} \\
\Gamma ^{i}_{jk} & =\tilde{\Gamma}^{i}_{~jk}
\end{align}
$$

the equation of motion and the constraints can be written as

$$\tag{1.3}
\begin{align} \\
-\cos ^{2}\rho \partial _{t}^{2}A^{\mu}+\cos ^{2}\rho \partial _{\rho}^{2}A^{\mu}+\frac{n-2}{\tan \rho}\partial _{\rho}A^{\mu}+\cot ^{2}\rho \Delta _{S^{n-2}}A^{\mu}-(m^{2}-n+1)A^{\mu} & =-g^{\rho \sigma}(\partial _{\rho}\Gamma ^{\nu}_{~\sigma \tau}+\Gamma ^{\nu}_{~\rho \lambda}\Gamma ^{\lambda}_{~\sigma \tau}-\Gamma ^{\lambda}_{~\rho \sigma}\Gamma ^{\nu}_{~\lambda \tau})A^{\tau}-2g^{\rho \sigma}\Gamma ^{\nu}_{~\sigma \lambda}\partial _{\rho}A^{\lambda} \\
\partial _{t}A^{t}+\partial _{\rho}A^{\rho}+2\tan \rho A^{\rho}+\frac{n-2}{\sin \rho \cos \rho}A^{\rho}+\tilde{\nabla} _{i}A^{j} & =0
\end{align}
$$

$$\tag{.}
\begin{align}
-\cos ^{2}\rho \partial _{t}^{2}A^{t}+\cos ^{2}\rho \partial _{\rho}^{2}A^{t}+\frac{n-2}{\tan \rho}\partial _{\rho}A^{t}+\cot ^{2}\rho \Delta _{S^{n-2}}A^{t}-(m^{2}-n+1)A^{t} & =-A^{t}+\sin 2\rho \partial _{t}A^{\rho}-\sin 2\rho \partial _{\rho}A^{t} \\
-\cos ^{2}\rho \partial _{t}A^{\rho}+\cos ^{2}\rho \partial _{\rho}^{2}A^{\rho}+\frac{n-2}{\tan \rho}\partial _{\rho}A^{\rho}+\cot ^{2}\rho \Delta _{S^{n-2}}A^{\rho}-(m^{2}-n+1)A^{\rho} & =-A^{\rho}+\frac{n-2}{\sin ^{2}\rho}A^{\rho}+2\cot \rho \tilde{\nabla} _{j}A^{j}+\sin2\rho \partial _{t}A^{t}-\sin 2\rho \partial _{\rho}A^{\rho} \\
\end{align}
$$

$$\tag{.}
\begin{align}
g^{\mu \nu}(\partial _{\mu}\Gamma ^{i}_{~\nu \tau}+\Gamma ^{i}_{~\mu \lambda}\Gamma ^{\lambda}_{~\nu \tau}-\Gamma ^{\lambda}_{~\mu \nu}\Gamma ^{i}_{~\lambda \tau})A^{\tau}+2g^{\mu \nu}\Gamma ^{i}_{~\mu \lambda}\partial _{\nu}A^{\lambda}
\end{align}
$$

$$\tag{.}
\begin{align}
g^{\mu \nu}\partial _{\mu}\Gamma ^{i}_{\nu \tau}A^{\tau} & =g^{\rho\rho}\partial _{\rho}\Gamma ^{i}_{j\rho}A^{j}+g^{l j}\partial _{l}\Gamma ^{i}_{jk}A^{k} \\
 & =A^{i}-\frac{\cos ^{2}\rho}{\sin ^{2}\rho}A^{i}+\frac{\cos ^{2}\rho}{\sin ^{2}\rho}g^{jj}\partial _{j}\tilde{\Gamma}^{i}_{j j}A^{j} \\
g^{\mu \nu}\Gamma ^{i}_{\mu \lambda}\Gamma ^{\lambda}_{\nu \tau}A^{\tau} & =g^{j\nu}\Gamma ^{i}_{jk}\Gamma ^{k}_{\nu \tau}A^{\tau}+g^{j\nu}\Gamma ^{i}_{j\rho}\Gamma ^{\rho}_{\nu \tau}A^{\tau}+g^{\rho \nu}\Gamma ^{i}_{j\rho}\Gamma ^{\rho}_{\nu \tau}A^{\tau} \\
 & =g^{jl}\Gamma ^{i}_{j k}\Gamma ^{k}_{lm}A^{m}+g^{jl}\Gamma ^{i}_{j k}\Gamma ^{k}_{l\rho}A^{\rho}+g^{jl}\Gamma ^{i}_{j\rho}\Gamma ^{\rho}_{lm}A^{m}+g^{\rho \rho}\Gamma ^{i}_{j\rho}\Gamma ^{\rho}_{\rho \rho}A^{\rho} \\
 & =\frac{\cos ^{2}\rho}{\sin ^{2}\rho}\tilde{g}^{jl}\tilde{\Gamma}^{i}_{j k}\tilde{\Gamma} ^{k}_{lm}A^{m}-\frac{\cos\rho}{\sin\rho}\tilde{g}^{jk}\tilde{\Gamma}^{i}_{j k}A^{\rho}-\frac{1}{\sin ^{2}\rho}A^{i} \\
-g^{\mu \nu}\Gamma ^{\lambda}_{\mu \nu}\Gamma ^{i}_{\lambda \tau}A^{\tau} & =-g^{kl}\Gamma ^{\rho}_{kl}\Gamma ^{i}_{j\rho}A^{j}-g^{kl}\Gamma ^{j}_{kl}\Gamma ^{i}_{j\rho}A^{\rho}-g^{ml}\Gamma ^{j}_{ml}\Gamma ^{i}_{jk}A^{k} \\
 & =\frac{n-2}{\sin ^{2}\rho} A^{i}-\frac{\cos \rho}{\sin ^{3}\rho}\tilde{g}^{kl}\tilde{\Gamma}^{i}_{kl} A^{\rho}-\frac{\cos ^{2}\rho}{\sin ^{2}\rho}\tilde{g}^{ml}\tilde{\Gamma}^{j}_{ml}\tilde{\Gamma}^{i}_{jk}A^{k} \\
2g^{\mu \nu}\Gamma ^{i}_{\mu \lambda}\partial _{\nu}A^{\lambda} & =2g^{\mu j}\Gamma ^{i}_{jk}\partial _{\nu}A^{k}+2g^{\mu \rho}\Gamma ^{i}_{j\rho}\partial _{\nu}A^{j}+2g^{\mu j}\Gamma ^{i}_{j\rho}\partial _{\nu}A^{\rho} \\
 & =2g^{jl}\Gamma ^{i}_{j k}\partial _{l}A^{k}+2g^{\rho \rho}\Gamma ^{i}_{j\rho}\partial _{\rho}A^{j}+2g^{jk}\Gamma ^{i}_{j\rho}\partial _{k}A^{\rho} \\
 & =2\frac{\cos ^{2}\rho}{\sin ^{2}\rho}\tilde{g}^{jl}\tilde{\Gamma}^{i}_{jk}\partial _{l}A^{k}+2\cot\rho \partial _{\rho}A^{j}+2\frac{\cos \rho}{\sin ^{3}\rho}\partial ^{i}A^{\rho}
\end{align}
$$

$$\tag{.}
\begin{align}
 & -A^{i}+\frac{\cos ^{2}\rho}{\sin ^{2}\rho}A^{i}-\frac{\cos ^{2}\rho}{\sin ^{2}\rho}g^{jl}\Gamma ^{i}_{jk}\Gamma ^{k}_{lm}A^{m}+\frac{\cos \rho}{\sin \rho}g^{jk}\Gamma ^{i}_{jk}A^{\rho}+\frac{1}{\sin ^{2}\rho}A^{i}-\frac{n-2}{\sin ^{2}\rho}A^{i}+\frac{\cos \rho}{\sin ^{3}\rho}g^{kl}\Gamma ^{i}_{kl}A^{\rho}+\frac{\cos ^{2}\rho}{\sin ^{2}\rho}g^{ml}\Gamma ^{j}_{ml}\Gamma ^{i}_{jk}A^{k} \\
 & -2\frac{\cos ^{2}\rho}{\sin ^{2}\rho}g^{jl}\Gamma ^{i}_{jk}\partial _{l}A^{k}-2\cot \rho \partial _{\rho}A^{j}-2\frac{\cos \rho}{\sin ^{3}\rho}\partial ^{i}A^{\rho}
\end{align}
$$

$$\tag{.}
\begin{align}
g^{jk}\Gamma ^{i}_{jk} & =\frac{1}{2}g^{jk}g^{il}(2\partial _{j}g_{lk}-\partial _{l}g_{jk}) \\
 & =-\frac{1}{2}g^{jj}g^{ii}\partial _{i}g_{jj}
\end{align}
$$

$$\tag{.}
\begin{align}
g^{jl}\Gamma ^{i}_{jk} & =\frac{1}{2}g^{jl}g^{im}(\partial _{j}g_{mk}+\partial _{k}g_{mj}-\partial _{m}g_{jk}) \\
 & =
\end{align}
$$
$$\tag{.}
\begin{align}

\end{align}
$$

$$\tag{1.2}
\begin{align}
\Gamma ^{t}_{~t\rho} =\Gamma ^{\rho}_{~tt}=\Gamma ^{\rho}_{~\rho \rho}& =\tan \rho \\
\Gamma ^{\rho}_{ij} & =-\tan \rho \tilde{g}_{ij} \\
\Gamma ^{i}_{~\rho j} & =\frac{1}{\sin \rho \cos \rho}\delta ^{i}_{j} \\
\Gamma ^{i}_{jk} & =\tilde{\Gamma}^{i}_{~jk}
\end{align}
$$



make the following ansatz

$$\tag{1.4}
\begin{align}
A^{a} & =\psi ^{a}_{\ell}Y_{\ell \mathbf{m}}(\Omega _{n-2}) \\
A^{\Omega} & =\left(\phi _{\ell}\mathbf{Y}_{\ell \mathbf{m}}^{(e)}(\Omega _{n-2})+\chi _{\ell}\mathbf{Y}_{\ell \mathbf{m}}^{(m)}(\Omega _{n-2})\right)
\end{align}
$$

$$\tag{.}
\begin{align}

\end{align}
$$

$$\tag{.}

$$
$$\tag{.}
\begin{align}
\varepsilon _{a}^{~bc}\nabla _{b}A_{c}=-\mu A_{a}
\end{align}
$$
$$\tag{.}
\begin{align}
\mathrm{d}s^{2} & =\frac{1}{\cos ^{2}\rho}\left(-\mathrm{d}t^{2}+\mathrm{d}\rho ^{2}+\sin ^{2}\rho \mathrm{d}\theta ^{2}\right)
\end{align}
$$

$$\tag{.}
\begin{align}
\varepsilon _{t}^{~bc}\nabla _{b}A_{c} & =-\mu A_{t}
\end{align}
$$

# Proca Field Equation in 3D Manifold and AdS₃ Analysis

## Verification of the Equation

The equation your supervisor provided:

$$\varepsilon_{a}^{~bc}\nabla_{b}A_{c}=-\mu A_{a}$$

This is indeed a valid equation of motion, but with an important clarification: this is not the standard Proca equation but rather the equation for a **topologically massive vector field** in 3D. 

The standard Proca equation in any dimension would be:

$$\nabla_\mu F^{\mu\nu} + m^2 A^\nu = 0$$

where $F^{\mu\nu} = \nabla^\mu A^\nu - \nabla^\nu A^\mu$.

However, in 3D spacetimes, we can have topological mass terms arising from Chern-Simons actions, leading to first-order differential equations like the one your supervisor provided. This equation is characteristic of topologically massive gauge theories in 3D ^cite{Deser1982}.

## Calculation in AdS₃

The given AdS₃ metric is:

$$\mathrm{d}s^{2} = \frac{1}{\cos^{2}\rho}(-\mathrm{d}t^{2}+\mathrm{d}\rho^{2}+\sin^{2}\rho \mathrm{d}\theta^{2})$$

Let's denote the coordinates as $(t,\rho,\theta)=(x^0,x^1,x^2)$. To find the explicit form of the equation in this metric, we need:

1. The Christoffel symbols
2. The components of $\varepsilon_{a}^{~bc}$ in this curved spacetime
3. The covariant derivatives $\nabla_b A_c$

### Step 1: Metric components and determinant

$$g_{00} = -\frac{1}{\cos^2\rho}, \quad g_{11} = \frac{1}{\cos^2\rho}, \quad g_{22} = \frac{\sin^2\rho}{\cos^2\rho}$$

The determinant is:
$$\det(g) = -\frac{\sin^2\rho}{\cos^6\rho}$$

### Step 2: Christoffel symbols

The non-zero Christoffel symbols for this metric are:

$$\begin{align}
\Gamma^0_{01} &= \Gamma^0_{10} = \tan\rho \\
\Gamma^1_{00} &= \sin\rho\cos\rho \\
\Gamma^1_{11} &= \tan\rho \\
\Gamma^1_{22} &= -\sin\rho\cos\rho \\
\Gamma^2_{12} &= \Gamma^2_{21} = \cot\rho
\end{align}$$

### Step 3: Components of the equation

For each component $a$ in our equation $\varepsilon_{a}^{~bc}\nabla_{b}A_{c}=-\mu A_{a}$, we have:

#### For $a=0$ (time component):

$$\varepsilon_{0}^{~bc}\nabla_{b}A_{c} = \varepsilon_{0}^{~12}(\nabla_{1}A_{2} - \nabla_{2}A_{1}) = -\mu A_0$$

Expanding the covariant derivatives:

$$\varepsilon_{0}^{~12}[(\partial_1 A_2 - \Gamma^c_{12}A_c) - (\partial_2 A_1 - \Gamma^c_{21}A_c)] = -\mu A_0$$

The component $\varepsilon_{0}^{~12} = \frac{\cos^3\rho}{\sin\rho}$, giving us:

$$\frac{\cos^3\rho}{\sin\rho}[(\partial_\rho A_\theta - \cot\rho A_\theta) - (\partial_\theta A_\rho - \cot\rho A_\rho)] = -\mu A_t$$

#### For $a=1$ (radial component):

$$\varepsilon_{1}^{~bc}\nabla_{b}A_{c} = \varepsilon_{1}^{~02}(\nabla_{0}A_{2} - \nabla_{2}A_{0}) = -\mu A_1$$

Similar expansions give:

$$\frac{\cos^3\rho}{\sin\rho}[(\partial_t A_\theta - \Gamma^c_{02}A_c) - (\partial_\theta A_t - \Gamma^c_{20}A_c)] = -\mu A_\rho$$

#### For $a=2$ (angular component):

$$\varepsilon_{2}^{~bc}\nabla_{b}A_{c} = \varepsilon_{2}^{~01}(\nabla_{0}A_{1} - \nabla_{1}A_{0}) = -\mu A_2$$

Expanding:

$$\cos^3\rho[(\partial_t A_\rho - \Gamma^c_{01}A_c) - (\partial_\rho A_t - \Gamma^c_{10}A_c)] = -\mu A_\theta$$

## Complete System of Equations

The full system is a set of coupled first-order partial differential equations:

$$\begin{align}
\frac{\cos^3\rho}{\sin\rho}[(\partial_\rho A_\theta - \cot\rho A_\theta) - \partial_\theta A_\rho] &= -\mu A_t \\
\frac{\cos^3\rho}{\sin\rho}[\partial_t A_\theta - \partial_\theta A_t] &= -\mu A_\rho \\
\cos^3\rho[\partial_t A_\rho - (\partial_\rho A_t - \tan\rho A_t)] &= -\mu A_\theta
\end{align}$$

This system describes the dynamics of a topologically massive vector field in AdS₃ spacetime.

## Physical Interpretation

This field equation corresponds to a vector field with topological mass $\mu$ in AdS₃. Solutions to this equation are important in AdS₃/CFT₂ correspondence, where bulk massive vector fields correspond to conserved currents with conformal dimension $\Delta = 1 + \sqrt{1 + m^2L^2}$ in the boundary CFT.

The equation combines aspects of both massive gauge fields and topological effects unique to 3D gravity theories.