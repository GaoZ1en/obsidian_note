## Rindler space

2d Rindler space is a patch of Minkowski space. the metric is

$$\tag{2.1}
\begin{align}
\mathrm{d}s^{2}=\mathrm{d}R^{2}-R^{2}\mathrm{d}\eta ^{2}, \text{with }R>0, \eta \in \mathbb{R}
\end{align}
$$

notice the similarity to polar coordinates on $\displaystyle{\mathbb{R}^{2}}$. define

$$\tag{2.2}
\begin{align}
x & =R\cosh \eta \\
t & =R\sinh \eta
\end{align}
$$

then

$$\tag{2.2}
\begin{align}
\mathrm{d}s^{2} & =-\mathrm{d}t^{2}+\mathrm{d}x^{2}
\end{align}
$$

we see that the Rindler coordinates only cover the patch of Minkowski space with

$$\tag{2.3}
\begin{align}
x>0,|t|<x
\end{align}
$$

this one quarter of the Penrose diagram. actually, a Rindler observer is a uniformaly accelarating observer in Minkowski space.

#### exercise: Rindler time translations are Minkowski boosts

show that $\displaystyle{\partial _{\eta}}$ is exactly the generator of a Lorentz boost.

$$\tag{2.4}
\begin{align}
\partial _{\eta} & =\frac{\partial x}{\partial \eta}\partial _{x}+\frac{\partial t}{\partial \eta}\partial _{t} \\
 & =t\partial _{x}+x\partial _{t}=K
\end{align}
$$

## Near the black hole horizon

black holes have an approximate Rindler region near the horizon. for example, start with the Schwarzschild solution

$$\tag{2.5}
\begin{align}
\mathrm{d}s^{2} & =-f(r)\mathrm{d}t^{2}+\frac{\mathrm{d}r^{2}}{f(r)}+r^{2}\mathrm{d}\Omega ^{2}_{2}, & \text{with }f(r)=1-\frac{2M}{r}
\end{align}
$$

near the horizon we expand

$$\tag{2.6}
\begin{align}
r=2M(1+\varepsilon ^{2})\implies f(r)=1-\frac{2M}{2M(1+\varepsilon ^{2})}\approx \varepsilon ^{2}
\end{align}
$$

and the metric becomes

$$\tag{2.7}
\begin{align}
\mathrm{d}s^{2}\approx-\varepsilon ^{2}\mathrm{d}t^{2}+16M^{2}\mathrm{d}\varepsilon ^{2}+4M^{2}\mathrm{d}\Omega ^{2}_{2}
\end{align}
$$


## periodicity trick for Hawking temperature

quantum field theory at finite temperature is periodic in imaginary time with periodicity

$$\tag{2.8}
\begin{align}
t\sim t+i\beta,\text{with }\beta=\frac{1}{T}
\end{align}
$$

this can be argue by thermal Green function. consider a bosonic Green function

$$\tag{2.9}
\begin{align}
G_{\beta}(\tau,x) & \equiv -\frac{1}{Z}\mathrm{Tr}e^{-\beta H} T_{E}[O(\tau,x)O(0,0)]
\end{align}
$$

where $\displaystyle{T_{E}}$ is the Euclidean time ordering, and $\displaystyle{\tau=it}$ is the imagindary time.

