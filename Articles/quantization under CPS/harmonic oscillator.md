$$\tag{1.1}
\begin{align}
S & =\int _{t_{i}}^{t_{f}} \left( \frac{1}{2}\dot{x}^{2}-\frac{1}{2}\omega ^{2}x^{2} \right)\mathrm{d}t
\end{align}
$$

make a variation

$$\tag{1.2}
\begin{align}
\delta S & =-\int _{t_{i}}^{t_{f}}(\ddot{x}+\omega ^{2}x)\delta x\mathrm{d}t+\int _{t_{i}}^{t_{f}}\mathrm{d}(\dot{x}\dot{x}) \\
 & =\int _{t_{i}}^{t_{f}}E\delta x+\theta|_{t_{i}}^{t_{f}}
\end{align}
$$

the equation of motion and the symplectic potential is

$$\tag{1.3}
\begin{align}
E & =-(\ddot{x}+\omega ^{2}x)\delta x \\
\theta & =\dot{x}\delta x
\end{align}
$$

we parameterize the general solution as

$$\tag{1.4}
\begin{align}
x(t)=x_{0}\cos(\omega t)+p_{0}\sin (\omega t)
\end{align}
$$

by applying the general solution to the symplectic potential and the symplectic form, we have

$$\tag{1.5}
\begin{align}
\theta & =p_{0}\delta x_{0} \\
\omega & =\delta p_{0}\wedge \delta x_{0}
\end{align}
$$
so $\displaystyle{(x_{0},p_{0})}$ is a set of Darboux coordinates.

observables $\displaystyle{f(x,p)}$ are functions of $\displaystyle{x}$ and $\displaystyle{p}$, can be further written as functions of $\displaystyle{x_{0}}$ and $\displaystyle{p_{0}}$ as $\displaystyle{f(x_{0},p_{0})}$. we want to study its evolution.

the Hamilton vector corresponding to $\displaystyle{f(x_{0},p_{0})}$ is

$$\tag{1.6}
\begin{align}
X_{f} =& \omega ^{-1}df=\frac{\delta f}{\delta p_{0}} \frac{\delta}{\delta x_{0}}- \frac{\delta f}{\delta x_{0}} \frac{\delta}{\delta p_{0}}
\end{align}
$$

as special cases, we have

$$\tag{1.7}
\begin{align}
X_{x_{0}} & =-\frac{\delta}{\delta p_{0}} \\
X_{p_{0}} & = \frac{\delta}{\delta x_{0}} \\
X_{H} & = p_{0} \frac{\delta}{\delta x_{0}}
\end{align}
$$

the Poisson bracket between $\displaystyle{f}$ and $\displaystyle{g}$ are defined as

$$\tag{1.8}
\begin{align}
\left\{f,g\right\} & =X_{f}\cdot X_{g}\cdot \omega
\end{align}
$$

and in particular, we have

$$\tag{1.9}
\begin{align}
\left\{x_{0},p_{0}\right\}=1
\end{align}
$$

