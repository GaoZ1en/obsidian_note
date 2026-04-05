Bäcklund transformation is a method to construct new solutions of a given differential equation from a known solution.

## general approach

assume the origin solution $\displaystyle{u}$ and the new solution $\displaystyle{v}$ are related by a set of equations

$$\tag{1.1}
\begin{align}
v_{x} & =F(u,v,a) \\
u_{y} & =G(u,v,a)
\end{align}
$$

where $\displaystyle{a}$ is a free parameter, and $\displaystyle{F,G}$ are functions waiting to be determined. require that $\displaystyle{v_{xy}=v_{yx}}$, we have

$$\tag{1.2}
\begin{align}
F_{y}(u,v,a)=G_{x}(u,v,a)
\end{align}
$$

by solving (1.2), we can determine $\displaystyle{F,G}$ and thus the Bäcklund transformation.

the parameter $\displaystyle{a}$ can be used to generate a sequence of solutions. different $\displaystyle{a}$ corresponds to different solutions.

1. Lax pair
2. bilinear formalism (Hirota method)

## examples 1: sine-Gordon equations

consider the sine-Gordon equations

$$\tag{2.1}
\begin{align}
u_{xt}=\sin u
\end{align}
$$

assume the Bäcklund transformation is

$$\tag{2.2}
\begin{align}
v_{x} & =u_{x}+2a\sin\left( \frac{v+u}{2} \right) \\
v_{t} & =-u_{t}+\frac{2}{a}\sin\left( \frac{v-u}{2} \right)
\end{align}
$$

then

$$\tag{2.3}
\begin{align}
v_{xt} & =u_{xt}+2a\cos\left( \frac{v+u}{2} \right) \frac{v_{t}+u_{t}}{2} \\
v_{xt} & =-u_{xt}+\frac{2}{a}\cos\left( \frac{v-u}{2} \right) \frac{v_{x}-u_{x}}{2}
\end{align}
$$
it is easy to verify that $\displaystyle{v_{xt}=v_{tx}}$. thus the Bäcklund transformation is valid. then we will see how the Bäcklund transformation generates a sequence of solutions.

we have a trivial solution $\displaystyle{u=0}$ for the sine-Gordon equation. then the Bäcklund transformation gives

$$\tag{2.4}
\begin{align}
u_{1x} & =2a_{1}\sin\left( \frac{u_{1}}{2} \right) \\
u_{1t} & =\frac{2}{a_{1}}\sin\left( \frac{u_{1}}{2} \right)
\end{align}
$$

by solving (2.4), we have $\displaystyle{u_{1}=4\arctan(e^{a_{1}x-t/a_{1}+c_{1}})}$, where $\displaystyle{c_{1}}$ is a integration constant corresponding to the initial position of a soliton.

then perform the Bäcklund transformation again, using the Bianchi identity (this means that the order of the Bäcklund transformation is not important)

$$\tag{2.5}
\begin{align}
\tan\left( \frac{u_{12}-u_{0}}{4} \right) & =\frac{a_{1}+a_{2}}{a_{1}-a_{2}}\tan\left( \frac{u_{1}-u_{2}}{4} \right)
\end{align}
$$

we have

$$\tag{2.6}
\begin{align}
u_{12} & =4\arctan\left( \frac{a_{1}+a_{2}}{a_{1}-a_{2}} \left( \frac{\sinh\left( \frac{a_{1}x-t/a_{1}-a_{2}x+t/a_{2}}{2} \right)}{\cosh\left( \frac{a_{1}x-t/a_{1}+a_{2}x-t/a_{2}}{2} \right)} \right) \right)
\end{align}
$$

## Hirota bilinear formalism

consider the KdV equation

$$\tag{3.1}
\begin{align}
u_{t}+6uu_{x}+u_{xxx}=0
\end{align}
$$

introduce new function $\displaystyle{\tau}$ which satisfies

$$\tag{3.2}
\begin{align}
u & =2 \partial _{x}^{2}\ln \tau
\end{align}
$$
  
  then the KdV equation becomes

$$\tag{3.3}
\begin{align}
(D_{x}D_{t}+D_{x}^{4})\tau \cdot \tau=0
\end{align}
$$

where the Hirota derivatives $\displaystyle{D_{x}, D_{t}}$ are defined as

$$\tag{3.4}
\begin{align}
D_{x}^{n}D_{t}^{m}f\cdot g & =(\partial _{x}-\partial _{x'})^{n}(\partial _{t}-\partial _{t'})^{m}f(x,t)\cdot g(x',t')
\end{align}
$$

suppose

$$\tag{3.5}
\begin{align}
\tau=1+e^{\eta_{1}}, \eta_{1}=k_{1}x-\omega _{1}t+\delta_{1}
\end{align}
$$

where $\displaystyle{\omega_{1}=k_{1}^{3}}$ (determined by dispersion relation). we can verify that (3.5) automatically satisfies (3.3), then we have the classic single-soliton solution.

$$\tag{3.6}
\begin{align}
u & =\frac{k_{1}^{2}}{2}\mathrm{sech}^{2}\left( \frac{\eta_{1}}{2} \right)
\end{align}
$$

generalized to $\displaystyle{N}$-soliton solution

$$\tag{3.7}
\begin{align}
\tau =\sum _{\mu=0,1}\exp\left( \sum ^{N}_{i=1}\mu _{i}\eta _{i}+\sum _{i\leqslant i<j\leqslant N}\mu _{i}\mu _{j}\ln A_{ij} \right)
\end{align}
$$

where $\displaystyle{\mu _{i}\in\left\{0,1\right\}}$ and coefficients $\displaystyle{A_{ij}}$ are determined by interaction of each other.
