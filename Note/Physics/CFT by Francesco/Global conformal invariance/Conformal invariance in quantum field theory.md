## correlation functions

in this section we consider two and three point correlation functions of quasi-primary fields.

$$\tag{3.3.1}
\begin{align}
\langle \phi_{1}(x_{1})\phi_{2}(x_{2})\rangle & =\frac{1}{Z}\int \mathcal{D}\Phi \phi_{1}(x_{1})\phi_{2}(x_{2})e^{-S[\Phi]}
\end{align}
$$

where $\displaystyle{\phi_{1},\phi_{2}}$ are quasi-primary fields, remark: in CFT, when one speaks of a field, it does not necessarily mean that the field is a fundamental field, it could be a composite field, such as $\displaystyle{\partial_{\mu}\phi,T_{\mu \nu}}$ etc. 

the assumed conformal invariance of the action and the measure implies that the correlation function has the following transformation properties

$$\tag{3.3.2}
\begin{align}
\langle \phi_{1}(x_{1})\phi_{2}(x_{2})\rangle=\left|\frac{\partial x'}{\partial x}\right|^{\Delta_{1}/d}_{x=x_{1}} \left| \frac{\partial x'}{\partial x}\right|^{\Delta_{2}/d}_{x=x_{2}}\langle \phi_{1}(x_{1}')\phi_{2}(x_{2}')\rangle
\end{align}
$$

where $\displaystyle{\Delta_{1},\Delta_{2}}$ are the scaling dimensions of $\displaystyle{\phi_{1},\phi_{2}}$ respectively. if we specialize to a scale transformation $\displaystyle{x\to \lambda x}$, have

$$\tag{3.3.3}
\begin{align}
\langle \phi_{1}(x_{1})\phi_{2}(x_{2})\rangle & =\lambda^{\Delta_{1}+\Delta_{2}}\langle \phi_{1}(\lambda x_{1})\phi_{2}(\lambda x_{2})\rangle
\end{align}
$$

rotation and translation invariance require that $\displaystyle{\langle \phi_{1}(x_{1})\phi_{2}(x_{2})\rangle=f(|x_{1}-x_{2}|)}$. then we have

$$\tag{3.3.4}
\begin{align}
\langle \phi_{1}(x_{1})\phi_{2}(x_{2})\rangle & =\frac{C_{12}}{|x_{1}-x_{2}|^{\Delta_{1}+\Delta_{2}}}
\end{align}
$$

where $\displaystyle{C_{12}}$ is a conformal coefficients. if we specialize to a SCT

$$\tag{3.3.5}
\begin{align}
\left| \frac{\partial x'}{\partial x}\right|=\frac{1}{(1-2b\cdot x+b^{2}x^{2})^{d}}
\end{align}
$$

(2.3.2) becomes

$$\tag{3.3.6}
\begin{align}
\frac{C_{12}}{|x_{1}-x_{2}|^{\Delta_{1}+\Delta_{2}}} & =\frac{C_{12}(\gamma_{1}\gamma_{2})^{(\Delta_{1}+\Delta_{2})/2}}{\gamma_{1}^{\Delta_{1}}\gamma_{2}^{\Delta_{2}}|x_{1}-x_{2}|^{\Delta_{1}+\Delta_{2}}}
\end{align}
$$

with $\displaystyle{\gamma_{i}=(1-2b\cdot x_{i}+b^{2}x_{i}^{2}),i=1,2}$. this constraint is satisfied only if $\displaystyle{\Delta_{1}=\Delta_{2}}$. in other words, we have

$$\tag{3.3.7}
\begin{align}
\langle \phi_{1}(x_{1})\phi_{2}(x_{2})\rangle & =\begin{cases}
\displaystyle{\frac{C_{12}}{|x_{1}-x_{2}|^{2\Delta_{1}}}} & \text{if }\Delta_{1}=\Delta_{2} \\
0 & \text{if }\Delta_{1}\neq \Delta_{2}
\end{cases}
\end{align}
$$

a similar analysis mat be performed on three-point functions. the result is

$$\tag{3.3.8}
\begin{align}
\langle \phi_{1}(x_{1})\phi_{2}(x_{2})\phi_{3}(x_{3})\rangle & =\frac{C_{123}}{x_{12}^{\Delta_{1}+\Delta_{2}-\Delta_{3}}x_{23}^{\Delta_{2}+\Delta_{3}-\Delta_{1}}x_{31}^{\Delta_{3}+\Delta_{1}-\Delta_{2}}}
\end{align}
$$

higher-point functions cannot be fully determined by conformal covariance. they may have an arbitrary (really?) dependence on cross-ratios defined in the former subsection. for instance, the four-point function mat take the following form

$$\tag{3.3.9}
\begin{align}
\langle \phi_{1}(x_{1})\dots \phi_{4}(x_{4})\rangle & =f\left( \frac{x_{12}x_{34}}{x_{13}x_{24}}, \frac{x_{12}x_{34}}{x_{14}x_{23}} \right)\prod^{4}_{i<j}x_{ij}^{\Delta/3-\Delta_{i}\Delta_{j}}
\end{align}
$$

where $\displaystyle{\Delta=\sum^{4}_{i=1}\Delta_{i}}$.

## Ward identity

in this subsection we will consider the Ward identity associated with the conformal invariance using (1.4.12)

$$\tag{1.4.12}
\begin{align}
\frac{\partial}{\partial x^{\mu}}\langle j^{\mu}_{a}(x)\Phi(x_{1})\dots \Phi(x_{n})\rangle=-i\sum^{n}_{i=1}\delta(x-x_{i})\langle \Phi(x_{1})\dots G_{a}\Phi(x_{i})\dots \Phi(x_{n})\rangle
\end{align}
$$

Ward identity associated with translation invariance gives that

$$\tag{3.3.10}
\begin{align}
\partial_{\mu}\langle T^{\mu}_{~\nu}X\rangle & =-\sum_{i}\delta(x-x_{i})\partial_{i,\nu}\langle X\rangle
\end{align}
$$

where $\displaystyle{T^{\mu \nu}}$ is the energy-momentum tensor, (2.3.10) holds even after a modification of the energy-momentum tensor as (1.5.1). then the ward identity associated with Lorentz invariance gives that 

$$\tag{3.3.11}
\begin{align}
\partial_{\mu}\langle(T^{\mu \nu}x^{\rho}-T^{\nu \rho}x^{\nu})X\rangle & =\sum_{i}\delta(x-x_{i})[(x_{i}^{\nu}\partial_{i}^{\rho}-x_{i}^{\rho}\partial_{i}^{\nu})\langle X\rangle-iS_{i}^{\nu \rho}\langle X\rangle] \\
\implies\langle(T^{\rho \nu}-T^{\nu \rho})X\rangle & =-i\sum_{i}\delta(x-x_{i})S_{i}^{\nu \rho}\langle X\rangle
\end{align}
$$

(2.3.11) states that the energy-momentum tensor is symmetric within correlation functions, except at the position of other fields of the correlator. finally we consider the ward identity associated with scale invariance.

$$\tag{3.3.12}
\begin{align}
\partial_{\mu}\langle T^{\mu}_{~\nu}x^{\nu}X\rangle & =-\sum_{i}\delta(x-x_{i})\left[x_{i}^{\mu}\partial_{i,\mu}\langle X\rangle+\Delta_{i}\langle X\rangle\right] \\
\implies \langle T^{\mu}_{~\nu}X\rangle & =-\sum_{i}\delta(x-x_{i})\Delta_{i}\langle X\rangle
\end{align}
$$

as a summary, we have

$$\tag{3.3.13}
\begin{align}
\partial_{\mu}\langle T^{\mu}_{~\nu}X\rangle & =-\sum_{i}\delta(x-x_{i})\partial_{i,\nu}\langle X\rangle \\
\langle(T^{\mu \nu}-T^{\nu \mu})X\rangle & =i\sum_{i}\delta(x-x_{i})S_{i}^{\mu \nu}\langle X\rangle \\
\langle T^{\mu}_{~\mu}X\rangle & =-\sum_{i}\delta(x-x_{i})\Delta_{i}\langle X\rangle
\end{align}
$$

## tracelessness of $\displaystyle{T_{\mu \nu}}$ in two dimensions

in this subsection we will prove that the vacuum expectation value of the trace of the energy momentum tensor vanishes in two-dimensions if the theory has scale, rotation and translation invariance (no need for conformal invariance).

consider the two-point function of energy-momentum tensor (called the Schwinger function)

$$\tag{3.3.14}
\begin{align}
S_{\mu \nu \rho \sigma}(x) & =\langle T_{\mu \nu}(x)T_{\rho \sigma}(0)\rangle \\
\implies S_{\mu \nu \rho \sigma} & =S_{\nu \mu \rho \sigma}=S_{\mu \nu \sigma \rho}=S_{\nu \mu \sigma \rho}
\end{align}
$$

translation, parity and scale invariance imply respectively that

$$\tag{3.3.15}
\begin{align}
S_{\mu \nu \rho \sigma}(x) & =\langle T_{\mu \nu}(0)T_{\rho \sigma}(-x)\rangle \\
 & =\langle T_{\rho \sigma}(-x)T_{\mu \nu}(0)\rangle \\
 & =S_{\rho \sigma \mu \nu}(-x) \\
S_{\mu \nu \rho \sigma}(x) & =S_{\rho \sigma \mu \nu}(x) \\
S_{\mu \nu \rho \sigma}(\lambda x) & =\lambda^{-4}S_{\mu \nu \rho \sigma}(x)
\end{align}
$$

all these constraints restrict the most general form that $\displaystyle{S_{\mu \nu \rho \sigma}}$ can take

$$\tag{3.3.16}
\begin{align}
S_{\mu \nu \rho \sigma}(x)=(x^{2})^{-4}\left(A_{1}g_{\mu \nu}g_{\rho \sigma}(x^{2})^{2}+A_{2}(g_{\mu \rho}g_{\nu \sigma}+g_{\mu \sigma}g_{\nu \rho})(x^{2})^{2}+A_{3}(g_{\mu \nu}x_{\rho}x_{\sigma}+g_{\rho \sigma}x_{\mu}x_{\nu})x^{2}+A_{4}x_{\mu}x_{\nu}x_{\rho}x_{\sigma}\right)
\end{align}
$$

using $\displaystyle{\partial^{\mu}T_{\mu \nu}=0}$, we have

$$\tag{3.3.17}
\begin{align}
S_{\mu \nu \rho \sigma}(x) & = \frac{A}{(x^{2})^{2}}\left((3g_{\mu \nu}g_{\rho \sigma}-g_{\mu \rho}g_{\nu \sigma}-g_{\mu \sigma}g_{\nu \rho})(x^{2})^{2}-4x^{2}(g_{\mu \nu}x_{\rho}x_{\sigma}+g_{\rho \sigma}x_{\mu}x_{\nu})+8x_{\mu}x_{\nu}x_{\rho}x_{\sigma}\right)
\end{align}
$$

then it is straightforward to show that the trace

$$\tag{3.3.18}
\begin{align}
S^{\mu~\rho}_{~\mu~\rho}(x) & =\langle T^{\mu}_{~\mu}(x)T^{\rho}_{~\rho}(0)\rangle
\end{align}
$$

vanishes everywhere.
