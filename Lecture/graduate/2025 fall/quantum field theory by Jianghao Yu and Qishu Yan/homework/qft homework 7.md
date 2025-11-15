# problem 1

suppose $\displaystyle{k}$ is a future-directed null vector. define the projection operation along the $\displaystyle{k}$ direction as

$$\begin{align}
L^{\mu}_{~\nu} & =\frac{k^{\mu}k _{\nu}}{k^{2}}
\end{align}$$

and the projection operation orthogonal to $\displaystyle{k}$ as

$$\begin{align}
\Delta ^{\mu}_{~\nu} & =\delta ^{\mu}_{~\nu}-\frac{k^{\mu}k _{\nu}}{k^{2}}
\end{align}$$

1. verift that $\displaystyle{L}$ and $\displaystyle{\Delta}$ are projection operators and that they are orthogonal to each other.
*sol*. we have

$$\begin{align}
L^{\mu}_{~\alpha}L^{\alpha}_{~\nu} & =\frac{k^{\mu}k _{\alpha}}{k^{2}} \frac{k^{\alpha}k _{\nu}}{k^{2}} \\
 & =\frac{k^{\mu}k _{\nu}}{k^{2}} \frac{k^{2}}{k^{2}}=L^{\mu}_{~\nu}
\end{align}$$

$$\begin{align}
\Delta ^{\mu}_{~\alpha}\Delta ^{\alpha}_{~\nu} & =(\delta ^{\mu}_{~\alpha}-L^{\mu}_{~\alpha})(\delta ^{\alpha}_{~\nu}-L^{\alpha}_{~\nu}) \\
 & =\delta ^{\mu}_{~\nu}-L^{\mu}_{~\nu}-L^{\mu}_{~\nu}+L^{\mu}_{~\nu} \\
 & =\delta ^{\mu}_{~\nu}-L^{\mu}_{~\nu}=\Delta ^{\mu}_{~\nu}
\end{align}$$

$$\begin{align}
\Delta ^{\mu}_{~\alpha}L^{\alpha}_{~\nu} & =(\delta ^{\mu}_{~\alpha}-L^{\mu}_{~\alpha})L^{\alpha}_{~\nu} \\
 & =L^{\mu}_{~\nu}-L^{\mu}_{~\nu}=0
\end{align}$$

2. calculate the propagator of the vector field.

we have known that the propagator $\displaystyle{G_{\mu \nu}}$ of the vector field satisfies

$$\begin{align}
[k^{2}g^{\mu \alpha}-(1-\lambda)k^{\mu}k^{\alpha}]G_{\alpha \nu} & =\delta ^{\mu}_{~\nu} \\
\implies k^{2} \left( \Delta ^{\mu \alpha}+\lambda L^{\mu \alpha} \right)G_{\alpha \nu} & =\delta ^{\mu}_{~\nu}
\end{align}$$

we can decompose $\displaystyle{G_{\alpha \nu}}$ into parts along $\displaystyle{L}$ and $\displaystyle{\Delta}$ directions as

$$\begin{align}
G_{\alpha \nu} & =A \Delta _{\alpha \nu}+B L_{\alpha \nu}
\end{align}$$

and

$$\begin{align}
k^{2}(\Delta ^{\mu \alpha}+\lambda L^{\mu \alpha})(A\Delta _{\alpha \nu}+BL_{\alpha \nu}) & =k^{2}(A\Delta ^{\mu}_{~\nu}+B\lambda L^{\mu}_{~\nu}) \\
 & =\delta ^{\mu}_{~\nu} \\
\implies A & =\frac{1}{k^{2}}, B=\frac{1}{\lambda k^{2}} \\
\implies G_{\alpha \nu} & =\frac{1}{k^{2}}\Delta _{\alpha \nu}+\frac{1}{\lambda k^{2}}L_{\alpha \nu} \\
 & =\frac{1}{k^{2}}\left( g_{\alpha \nu}-\left( 1-\frac{1}{\lambda} \right)\frac{k _{\alpha}k _{\nu}}{k^{2}} \right)
\end{align}$$

# Peskin 3.7

## subproblem 1

let $\displaystyle{\phi(x)}$ be a complex-valued KG field. find unitary P,C and T operators that give the following transformations of the KG field:

$$\begin{align}
P\phi(t,\vec{x})P & =\phi(t,-\vec{x}) \\
T\phi(t,\vec{x})T & =\phi(-t,\vec{x}) \\
C\phi(t,\vec{x})C & =\phi ^{\dagger}(t,\vec{x})
\end{align}$$

find the transformation properties of the current

$$\begin{align}
J^{\mu} & =i\left( \phi ^{\dagger}\partial ^{\mu}\phi -\phi \partial ^{\mu}\phi ^{\dagger} \right)
\end{align}$$

under $\displaystyle{P}$, $\displaystyle{C}$ and $\displaystyle{T}$

*sol*.

we only need to give the action of the operators on the creation and annihilation operators. we have

$$\begin{align}
P a_{\vec{p}}P & =a_{-\vec{p}} \\
P b_{\vec{p}}P & =b_{-\vec{p}} \\
T a_{\vec{p}}T & =a_{-\vec{p}} \\
T b_{\vec{p}}T & =b_{-\vec{p}} \\
C a_{\vec{p}}C & =b_{\vec{p}} \\
C b_{\vec{p}}C & =a_{\vec{p}}
\end{align}$$

then we can calculate the transformation properties of the current:

$$\begin{align}
P J^{\mu}(t,\vec{x})P & =i\left( \phi ^{\dagger}(t,-\vec{x})\partial ^{\mu}\phi (t,-\vec{x})-\phi (t,-\vec{x})\partial ^{\mu}\phi ^{\dagger}(t,-\vec{x}) \right) \\
 & =\begin{cases}
J^{0}(t,-\vec{x}) & \mu =0 \\
-J^{i}(t,-\vec{x}) & \mu =i
\end{cases} \\
C J^{\mu}(t,\vec{x})C & =i\left( \phi (t,\vec{x})\partial ^{\mu}\phi ^{\dagger}(t,\vec{x})-\phi ^{\dagger}(t,\vec{x})\partial ^{\mu}\phi (t,\vec{x}) \right) \\
 & =-J^{\mu}(t,\vec{x}) \\
T J^{\mu}(t,\vec{x})T & =i\left( \phi ^{\dagger}(-t,\vec{x})\partial ^{\mu}\phi (-t,\vec{x})-\phi (-t,\vec{x})\partial ^{\mu}\phi ^{\dagger}(-t,\vec{x}) \right) \\
 & =\begin{cases}
J^{0}(-t,\vec{x}) & \mu =0 \\
-J^{i}(-t,\vec{x}) & \mu =i
\end{cases}
\end{align}$$

## subproblem 2

show that any Hermitian Lorentz-scalar local operator built from $\displaystyle{\psi(x)}$, $\displaystyle{\phi(x)}$ and their conjugates has $\displaystyle{CPT=+1}$.

*sol*.

we note that under $\displaystyle{CPT}$, the fields transform as

$$\begin{align}
CPT \phi (x) CPT & =\phi ^{\dagger}(-x) \\
CPT \phi ^{\dagger}(x) CPT & =\phi (-x)
\end{align}$$

and the bilinears transform as

$$\begin{align}
CPT \bar{\psi}(x)\psi (x) CPT & =\bar{\psi}(-x)\psi (-x) \\
CPT\bar{\psi}(x)\gamma ^{\mu}\psi (x) CPT & =-\bar{\psi}(-x)\gamma ^{\mu}\psi (-x) \\
CPT \bar{\psi}(x)\sigma ^{\mu \nu}\psi(x)CPT & =\bar{\psi}(-x)\sigma ^{\mu \nu}\psi (-x) \\
CPT \bar{\psi}(x)\gamma ^{\mu}\gamma ^{5}\psi (x) CPT & =-\bar{\psi}(-x)\gamma ^{\mu}\gamma ^{5}\psi (-x) \\
CPT \bar{\psi}(x)\gamma ^{5}\psi (x) CPT & =-\bar{\psi}(-x)\gamma ^{5}\psi (-x)
\end{align}$$

for a Hermitian Lorentz-scalar local operator $\displaystyle{\mathcal{O}(x)}$ constructed from $\displaystyle{\psi(x)}$ and $\displaystyle{\phi (x)}$, it can be expressed as a linear combination of terms like

$$\begin{align}
\mathcal{O}(x) & \sim \left( \phi ^{\dagger}(x) \right)^{n}\phi ^{m}(x)\left( \bar{\psi}(x)\Gamma \psi (x) \right)^{l}
\end{align}$$

where $\displaystyle{\Gamma}$ represents one of the bilinears above. under $\displaystyle{CPT}$, we have

$$\begin{align}
CPT \mathcal{O}(x) CPT & \sim \left( \phi ( -x ) \right)^{n}\left( \phi ^{\dagger}(-x) \right)^{m}\left( \bar{\psi}(-x)\Gamma \psi (-x) \right)^{l} \\
 & =\mathcal{O}(-x)
\end{align}$$

possible minus signs from the bilinears cancel out since $\displaystyle{\mathcal{O}(x)}$ is Hermitian. thus we have proved that $\displaystyle{CPT \mathcal{O}(x) CPT=\mathcal{O}(-x)}$, i.e., $\displaystyle{CPT=+1}$.