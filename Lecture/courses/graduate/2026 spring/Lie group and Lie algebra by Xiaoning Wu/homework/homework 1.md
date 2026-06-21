# problem 1

construct a homomorphism between $\displaystyle{S_{3}}$ and $\displaystyle{C_{2}}$.

## solution

$\displaystyle{S_{3}=\left\{e,(12),(23),(13),(123),(132)\right\}}$, $\displaystyle{C_{2}=\left\{E,c_{2}\right\}}$. consider the following map

$$\begin{align}
f: & S_{3}\to C_{2} \\
f(e) & =f(123)=f(132)=E \\
f(12) & =f(23)=f(31)=c_{2}
\end{align}$$

then it is easy to check that $\displaystyle{f}$ is the required homomorphism.

# problem 2

show that

$$\begin{align}
ST_{3}S^{-1} & =\vec{n}\cdot \vec{T}
\end{align}$$

where

$$\begin{align}
S =\begin{pmatrix}
\cos \phi \cos \theta & -\sin \phi & \cos \phi \sin \theta \\
\sin \phi \cos \theta & \cos \phi & \sin \phi \sin \theta \\
-\sin \theta & 0 & \cos \theta
\end{pmatrix}\quad \vec{n} =\begin{pmatrix}
\cos \phi \sin \theta \\
\sin \phi \sin \theta \\
\cos \theta
\end{pmatrix} \\
T_{1}=\begin{pmatrix}
0 & 0 & 0 \\
0 & 0 & -i \\
0 & i & 0
\end{pmatrix}\quad T_{2} =\begin{pmatrix}
0 & 0 & i \\
0 & 0 & 0 \\
-i & 0 & 0
\end{pmatrix}\quad T_{3}=\begin{pmatrix}
0 & -i & 0 \\
i & 0 & 0 \\
0 & 0 & 0
\end{pmatrix}
\end{align}$$

## solution

notice that

$$\begin{align}
S & =R_{3}(\phi)R_{2}(\theta)
\end{align}$$

then obviously we have

$$\begin{align}
ST_{3}S^{-1} & =R_{3}(\phi)R_{2}(\theta)T_{3}R_{2}^{-1}(\theta)R^{-1}_{3}(\phi) \\
 & =R_{3}(\phi)\left(T_{3}\cos \theta+T_{1}\sin \theta\right)R_{3}^{-1}(\phi) \\
 & =(T_{3}\cos \theta+T_{1}\cos \phi \sin \theta+T_{3}\sin \phi \sin \theta) \\
 & =\vec{n}\cdot \vec{T}
\end{align}$$
