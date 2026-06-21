## Rindler space

2d Rindler space is a patch of Minkowski space. the metric is

$$
\tag{2.1}
\begin{align}
\mathrm{d}s^{2}=\mathrm{d}R^{2}-R^{2}\mathrm{d}\eta ^{2}, \text{with }R>0, \eta \in \mathbb{R}
\end{align}
$$

notice the similarity to polar coordinates on $\displaystyle{\mathbb{R}^{2}}$. define

$$
\tag{2.2}
\begin{align}
x & =R\cosh \eta \\
t & =R\sinh \eta
\end{align}
$$

then

$$
\tag{2.2}
\begin{align}
\mathrm{d}s^{2} & =-\mathrm{d}t^{2}+\mathrm{d}x^{2}
\end{align}
$$

we see that the Rindler coordinates only cover the patch of Minkowski space with

$$
\tag{2.3}
\begin{align}
x>0,|t|<x
\end{align}
$$

this one quarter of the Penrose diagram. actually, a Rindler observer is a uniformaly accelarating observer in Minkowski space.

#### exercise: Rindler time translations are Minkowski boosts

show that $\displaystyle{\partial _{\eta}}$ is exactly the generator of a Lorentz boost.

$$
\tag{2.4}
\begin{align}
\partial _{\eta} & =\frac{\partial x}{\partial \eta}\partial _{x}+\frac{\partial t}{\partial \eta}\partial _{t} \\
 & =t\partial _{x}+x\partial _{t}=K
\end{align}
$$

## Near the black hole horizon

black holes have an approximate Rindler region near the horizon. for example, start with the Schwarzschild solution

$$
\tag{2.5}
\begin{align}
\mathrm{d}s^{2} & =-f(r)\mathrm{d}t^{2}+\frac{\mathrm{d}r^{2}}{f(r)}+r^{2}\mathrm{d}\Omega ^{2}_{2}, & \text{with }f(r)=1-\frac{2M}{r}
\end{align}
$$

near the horizon we expand

$$
\tag{2.6}
\begin{align}
r=2M(1+\varepsilon ^{2})\implies f(r)=1-\frac{2M}{2M(1+\varepsilon ^{2})}\approx \varepsilon ^{2}
\end{align}
$$

and the metric becomes

$$
\tag{2.7}
\begin{align}
\mathrm{d}s^{2}\approx-\varepsilon ^{2}\mathrm{d}t^{2}+16M^{2}\mathrm{d}\varepsilon ^{2}+4M^{2}\mathrm{d}\Omega ^{2}_{2}
\end{align}
$$

## periodicity trick for Hawking temperature

quantum field theory at finite temperature is periodic in imaginary time with periodicity

$$
\tag{2.8}
\begin{align}
t\sim t+i\beta,\text{with }\beta=\frac{1}{T}
\end{align}
$$

this can be argue by thermal Green function. consider a bosonic Green function

$$
\tag{2.9}
\begin{align}
G_{\beta}(\tau,x) & \equiv -\frac{1}{Z}\mathrm{Tr}e^{-\beta H} T_{E}[O(\tau,x)O(0,0)]
\end{align}
$$

where $\displaystyle{T_{E}}$ is the Euclidean time ordering, and $\displaystyle{\tau=it}$ is the imagindary time. suppose $\displaystyle{\tau<0<\beta}$, we have

$$
\tag{2.10}
\begin{align}
G_{\beta}(\tau-\beta,x) & =-\frac{1}{Z}\mathrm{Tr}e^{-\beta H}T_{E}[O(\tau-\beta,x)O(0,0)] \\
 & =-\frac{1}{Z}\mathrm{Tr}e^{-\beta H}O(0,0)O(\tau-\beta,x) \\
 & =-\frac{1}{Z}\mathrm{Tr}e^{-\beta H}O(0,0)e^{(\tau-\beta)H}O(0,x)e^{-(\tau-\beta)H} \\
 & =-\frac{1}{Z}\mathrm{Tr}e^{-\beta H}O(0,x)e^{-\tau H}O(0,0)e^{\tau H} \\
 & =-\frac{1}{Z}\mathrm{Tr}e^{-\beta H}O(0,x)O(\tau,0) \\
 & =G_{\beta}(\tau,x)
\end{align}
$$

fermionic Green functions can be obtained in similar way. now returning back to black holes. since Rindler space is related to polar coordiantes, then the $\displaystyle{\eta}$ coordinate is periodic in the imaginary direction (Unrah effect)

$$
\tag{2.11}
\begin{align}
\eta \sim \eta+2\pi i
\end{align}
$$

which implies that the Schwarzschild coordinate $\displaystyle{t}$ has an imaginary periodicity

$$
\tag{2.12}
\begin{align}
t\sim t+i\beta,\text{with }\beta=8\pi M\implies T= \frac{1}{8\pi M}
\end{align}
$$

which is exactly the Hawking temperature.

#### exercise: Kerr periodicity

field theory at finite temperature and angular potential is periodic in imaginary time and angular coordinate

$$
\tag{2.13}
\begin{align}
(t,\phi)\sim(t+i\beta,\phi-i\beta \Omega)
\end{align}
$$

derive (2.13) by an argument similar to (2.10)

$$
\tag{2.14}
\begin{align}
G(\tau,\phi) & =-\frac{1}{Z}\mathrm{Tr}e^{-\beta (H-\Omega J)}T_{E}O(\tau,\phi)O(0,0) \\
 & =-\frac{1}{Z}\mathrm{Tr}O(0,0)e^{-\beta(H-\Omega J)}O(\tau,\phi) \\
 & =-\frac{1}{Z}\mathrm{Tr}O(0,0)e^{-\beta(H-\Omega J)}e^{\tau H-\phi \Omega J}O(0,0)e^{-\tau H+\phi \Omega J} \\
 & =-\frac{1}{Z}\mathrm{Tr}e^{-\beta (H-\Omega J)}O(\tau-\beta,\phi+\beta \Omega)O(0,0) \\
 & =G(\tau-\beta,\phi+\beta \Omega)
\end{align}
$$

???

then start from the Kerr metric (1.15). derive the corresponding periodicity condition.

here we set $\displaystyle{\theta=\frac{\pi}{2}}$.

$$
\tag{2.15}
\begin{align}
\mathrm{d}s^{2} & =-\frac{(r-r_{+})(r-r_{-})}{r ^{2}}(\mathrm{d}t-a \mathrm{d}\phi)^{2}+\frac{r ^{2}}{(r-r_{+})(r-r_{-})}\mathrm{d}r^{2}+\frac{1}{r ^{2}}(a\mathrm{d}t-(r^{2}+a^{2})\mathrm{d}\phi)^{2}
\end{align}
$$

plug in $\displaystyle{r=r_{+}(1+\varepsilon ^{2})}$, we have

$$
\tag{2.16}
\begin{align}
\mathrm{d}s^{2} & =-\frac{\varepsilon ^{2}(r_{+}-r_{-})}{r_{+}}(\mathrm{d}t-a\mathrm{d}\phi)^{2}+\frac{4r_{+}^{3}\mathrm{d}\varepsilon ^{2}}{(r_{+}-r_{-})}+\frac{1}{r_{+}^{2}(1+2\varepsilon ^{2})}(a\mathrm{d}t-(r_{+}^{2}+a^{2})\mathrm{d}\phi)^{2} \\
 & =\left( \frac{a}{r_{+}}\mathrm{d}t-\left( r_{+}+\frac{a^{2}}{r_{+}} \right)\mathrm{d}\phi \right)^{2}+\frac{4r_{+}^{2}}{1-\frac{r_{-}}{r_{+}}}\mathrm{d}\varepsilon ^{2}-\varepsilon ^{2}\left( 1-\frac{r_{-}}{r_{+}} \right)(\mathrm{d}t-a\mathrm{d}\phi)^{2}-2\varepsilon ^{2}\left( \frac{a}{r_{+}}\mathrm{d}t-\left( r_{+}+\frac{a^{2}}{r_{+}} \right)\mathrm{d}\phi \right)^{2} \\
 & =a\mathrm{d}\varepsilon ^{2}+(b\mathrm{d}\phi-c\mathrm{d}t)^{2}+\varepsilon ^{2}(e\mathrm{d}\phi+f\mathrm{d}t+\dots)
\end{align}
$$

$$\begin{align}
 & -\left( 1-\frac{r_{-}}{r_{+}} \right)(\mathrm{d}t^{2}+a^{2}\mathrm{d}\phi ^{2}-2a\mathrm{d}t\mathrm{d}\phi)-2\left( \frac{a^{2}}{r_{+}^{2}}\mathrm{d}t^{2}+\left( r_{+}+\frac{a^{2}}{r_{+}} \right)^{2}\mathrm{d}\phi ^{2}-2a\left( 1+\frac{a^{2}}{r_{+}^{2}} \right)\mathrm{d}t\mathrm{d}\phi \right)\dots \\
= & -\left( 1-\frac{r_{-}}{r_{+}}+\frac{2a^{2}}{r_{+}^{2}} \right)\mathrm{d}t^{2}-\left( a^{2}\left( 1-\frac{r_{-}}{r_{+}} \right)+2\left( r_{+}+\frac{a^{2}}{r_{+}} \right)^{2} \right)\mathrm{d}\phi ^{2}+2\left( a\left( 1-\frac{r_{-}}{r_{+}} \right)+2a\left( 1+\frac{a^{2}}{r_{+}^{2}} \right) \right)\mathrm{d}t\mathrm{d}\phi
\end{align}$$

then define the corotating angular coordinate $\displaystyle{\tilde{\phi}=\left( 1+\frac{a^{2}}{r_{+}^{2}} \right)\phi-\frac{a}{r_{+}^{2}}t}$. then when keep $\displaystyle{\tilde{\phi}}$ fixed, we have

$$
\tag{2.17}
\begin{align}
T & =\frac{\sqrt{ M^{2}-a^{2} }}{4\pi M(M+\sqrt{ M^{2}-a^{2} })} \\
\Omega & =\frac{a}{2M(M+\sqrt{ M^{2}-a^{2} })}
\end{align}
$$

we return the result of (1.23)...

## Unrah radiation

Unrah radiation states that an observer in a uniform acceleration $\displaystyle{a}$ will see a thermal bath of radiation with temperature $\displaystyle{T=\frac{a}{2\pi}}$, which means a Minkowski vacuum is actually a thermal state in Rindler coordinates.

## Hawking radiation
