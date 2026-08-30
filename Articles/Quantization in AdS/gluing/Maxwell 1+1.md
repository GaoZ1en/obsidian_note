## Setup

Cut the interval $\displaystyle{[-L,L]}$ at $\displaystyle{x=0}$ and use

$$\begin{align}
y_{1} & =x+L, & y_{2} & =L-x
\end{align}$$

write

$$\begin{align}
A_{i} & =A_{t,i}\mathrm{d}t+A_{y,i}\mathrm{d}y_{i}, & E_{i} & =F_{ty_{i}}=\dot{A}_{y,i}-\partial _{y_{i}}A_{t,i}
\end{align}$$

the action is given by

$$\begin{align}
S_{i} & =-\dfrac{1}{4}\int _{t_{i}}^{t_{f}}\mathrm{d}t\int _{0}^{L}\mathrm{d}y_{i} F_{i,\mu \nu}F^{i,\mu \nu} \\
 & =\dfrac{1}{2}\int _{t_{i}}^{t_{f}}\mathrm{d}t\int _{0}^{L}\mathrm{d}y_{i} E_{i}^{2}
\end{align}$$

at the physical endpoint we fix $\displaystyle{A_{t,i}(t,0)=0}$, and at the artificial endpoint prescribe

$$\begin{align}
A_{t,i}(t,L) & =\alpha _{i}(t), & \delta \alpha _{i}(t)=0
\end{align}$$

## CPS Analysis

Take a variation of the action

$$\begin{align}
\delta S_{i} & = \int _{t_{i}}^{t_{f}} \mathrm{d}t \int _{0}^{L}\mathrm{d}y_{i} E_{i}(\delta \dot{A}_{y,i}-\partial _{y_{i}}\delta A_{t,i}) \\
 & =\int \mathrm{d}t \int _{0}^{L}\mathrm{d}y_{i}\left(-\dot{E}_{i}\delta A_{y,i}+\partial _{y_{i}}E_{i}\delta A_{t,i}\right) \\
 & +\left.\int _{0}^{L}\mathrm{d}y_{i} E_{i}\delta A_{y,i}\right|_{t_{i}}^{t_{f}}-\int _{t_{i}}^{t_{f}}\mathrm{d}tE_{i}(t,L)\delta \alpha _{i}(t)
\end{align}$$

we read out the eoms

$$\begin{align}
\dot{E}_{i} & =0 \\
\partial _{y_{i}}E_{i} & =0
\end{align}$$

and the symplectic potential

$$\begin{align}
\theta & =\int _{0}^{L}\mathrm{d}y_{i}E_{i}\delta A_{y,i} \\
\implies \omega & =\int _{0}^{L}\mathrm{d}y_{i}\delta E_{i}\wedge \delta A_{y,i}
\end{align}$$

when quantizing subregions, we require $\displaystyle{\delta \alpha _{i}(t)=0}$. Gauge transformations that are identity at both endpoints remove the $y_i$-dependent part of $A_{y,i}$, leaving only the "zero mode"

$$\begin{align}
a_{i}(t) & =\int _{0}^{L}\mathrm{d}y_{i}A_{y,i}(t,y_{i})
\end{align}$$

which is compact (due to the compact gauge group $\displaystyle{\mathrm{U}(1)}$) with period $\displaystyle{2\pi}$

$$\begin{align}
a_{i}\sim a_{i}+2\pi w, & w\in \mathbb{Z}
\end{align}$$

integrating the definition of $\displaystyle{E_{i}}$ along the interval gives

$$\begin{align}
E_{i} & =\dfrac{\dot{a}_{i}-\alpha _{i}}{L}
\end{align}$$

and the exact reduced regional action is therefore

$$\begin{align}
S_{i}[a_{i};\alpha _{i}] & = \dfrac{1}{2L}\int _{t_{i}}^{t_{f}} \mathrm{d}t(\dot{a}_{i}-\alpha _{i})^{2}
\end{align}$$

## Quantize Subregions

We can do usual CPS analysis for the reduced regional action. Take a variation of the action

$$\begin{align}
\delta S_{i} & =\dfrac{1}{L} \int _{t_{i}}^{t_{f}} \mathrm{d}t(\dot{a}_{i}-\alpha _{i})\delta \dot{a}_{i} \\
 & =-\dfrac{1}{L} \int _{t_{i}}^{t_{f}} \mathrm{d}t(\ddot{a}_{i}-\dot{\alpha}_{i})\delta a_{i}+E_{i}\delta a_{i}|^{t_{f}}_{t_{i}} \\
\implies \mathcal{E}_{i} & =-\dfrac{1}{L}(\ddot{a}_{i}-\dot{\alpha}_{i}) \\
\theta & =E_{i}\delta a_{i} \\
\omega & =\delta E_{i}\wedge \delta a_{i}
\end{align}$$

the regional Hilbert space is then $\displaystyle{L^{2}\left( \mathrm{U}\left( 1 \right), \mathrm{d}a_{i} \right)}$, a complete orthonormal basis is

$$\begin{align}
\psi _{i,n} & =\dfrac{e^{ina_{i}}}{\sqrt{ 2\pi }}, & E_{i}\psi _{i,n} & =n\psi _{i,n}, & n\in \mathbb{Z}
\end{align}$$

for a prescribed history $\displaystyle{\alpha _{i}(t)}$, we have

$$\begin{align}
\psi _{i,n}(t) & =\exp\left(-i \dfrac{Ln^{2}}{2}(t-t_{i})-in\int _{t_{i}}^{t}\mathrm{d}t'\alpha _{i}(t')\right)\psi _{i,n}(t_{i})
\end{align}$$

the corresponding states are denoted as $\displaystyle{\ket{n}_{i}}$, satisfying

$$\begin{align}
E_{i}\ket{n} _{i}=n\ket{n} _{i}
\end{align}$$

consider time translation

$$\begin{align}
X_{t} & =\int \mathrm{d}t \dot{a}_{i} \dfrac{\delta}{\delta a_{i}}
\end{align}$$

act on the action

$$\begin{align}
\delta S_{i} & =\dfrac{1}{L} \int _{t_{i}}^{t_{f}} \mathrm{d}t(\dot{a}_{i}-\alpha _{i}) \dfrac{\mathrm{d}}{\mathrm{d}t}
\end{align}$$

## Gluing Quantized Regions

Identify the two prescribed histories up to a gauge redundancy

$$\begin{align}
\alpha _{1}(t) & = \alpha(t), & \alpha _{2}(t) & =\alpha(t)+\dot{\varphi}(t)
\end{align}$$

here $\displaystyle{\varphi(t)}$ should not vary. the glued system satisfies the following gauge symmetry

$$\begin{align}
a_{i}\mapsto &  a_{i}+\lambda _{i,\Gamma} \\
\alpha _{i}\mapsto & \alpha _{i}+\dot{\lambda}_{i,\Gamma} \\
\varphi\mapsto & \varphi+\lambda _{2,\Gamma}-\lambda _{1,\Gamma}
\end{align}$$

the interface part of the variation is then

$$\begin{align}
\delta(S_{1}+S_{2})|_{\Gamma} & =- \int _{t_{i}}^{t_{f}} \mathrm{d}t(E_{1}+E_{2})\delta \alpha
\end{align}$$

which gives the gluing condition

$$\begin{align}
E_{1}+E_{2}=0
\end{align}$$

upon quantization, this condition should be promoted to operator equality

$$\begin{align}
(E_{1}+E_{2})\ket{\text{phys}} =0
\end{align}$$

which gives

$$\begin{align}
\mathcal{H}_{\mathrm{phys}} & =\mathrm{span}\left\{\ket{n} _{1}\otimes \ket{-n} _{2},n\in \mathbb{Z}\right\}
\end{align}$$

the total symplectic form is then

$$\begin{align}
\omega & =\sum _{i}\delta E_{i}\wedge \delta a_{i} \\
 & =\delta E\wedge \delta a
\end{align}$$

here we choose $\displaystyle{E=E_{1}=-E_{2}}$, and

$$\begin{align}
a & =a_{1}-a_{2}+\varphi \\
 & =\int _{-L}^{L} \mathrm{d}xA_{x}(t,x)+\varphi
\end{align}$$
