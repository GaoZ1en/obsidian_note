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

then perform the Bäcklund transformation again, using the Bianchi identity (this means that the )

$$\tag{2.5}
\begin{align}
\tan\left( \frac{u_{12}-u_{0}}{4} \right) & =\frac{a_{1}+a_{2}}{a_{1}-a_{2}}\tan\left( \frac{u_{1}-u_{2}}{4} \right)
\end{align}
$$



## Hirota bilinear formalism

consider the KdV equation

$$\tag{3.1}
\begin{align}
u_{t}+6uu_{x}+u_{xxx}=0
\end{align}
$$

assume the Bäcklund transformation is

$$\tag{3.2}
\begin{align}
v_{x} & =u_{x}+2a\frac{D_{x}u}{D_{x}v} \\
v_{t} & =-u_{t}+\frac{2}{a}\frac{D_{t}u}{D_{t}v}
\end{align}
$$

where $\displaystyle{D_{x},D_{t}}$ are Hirota's bilinear operators. then

$$\tag{3.3}
\begin{align}
v_{t}+6vv_{x}+v_{xxx}=0
\end{align}
$$

is satisfied. the Bäcklund transformation is valid.

what is Hirota's bibilinear operator? it is defined as

$$\tag{3.4}
\begin{align}
D_{x}^{n}f\cdot g & =\left( \frac{\partial }{\partial x}-\frac{\partial }{\partial x'} \right)^{n}f(x)g(x')|_{x=x'} \\
D_{t}^{n}f\cdot g & =\left( \frac{\partial }{\partial t}-\frac{\partial }{\partial t'} \right)^{n}f(t)g(t')|_{t=t'}
\end{align}
$$
