---
title: "Homework 4"
date: 2026-04-07
summary: "Finds Euler angles for specified rotation matrices and rotation axes; uses matrix decomposition and Rodrigues' rotation formula to derive solutions."
---

# problem 1

find the Euler angles of the following rotation transformation $\displaystyle{R}$:

1. 
$$\begin{align}
R(\alpha,\beta,\gamma) & =\frac{1}{4}\begin{pmatrix}
-\sqrt{ 3 }-2 & \sqrt{ 3 }-2 & -\sqrt{ 2 } \\
\sqrt{ 3 }-2 & -\sqrt{ 3 }-2 & \sqrt{ 2 } \\
-\sqrt{ 2 } & \sqrt{ 2 } & 2\sqrt{ 3 }
\end{pmatrix}
\end{align}$$

2. 
$$\begin{align}
R(\alpha,\beta,\gamma) & =\frac{1}{8}\begin{pmatrix}
\sqrt{ 6 }+2\sqrt{ 3 } & 3\sqrt{ 2 }-2 & 2\sqrt{ 6 } \\
\sqrt{ 2 }-6 & \sqrt{ 6 }+2\sqrt{ 3 } & 2\sqrt{ 2 } \\
-2\sqrt{ 2 } & -2\sqrt{ 6 } & 4\sqrt{ 2 }
\end{pmatrix}
\end{align}$$

## solution

notice that

$$\begin{align}
R(\alpha,\beta,\gamma) & =R(\vec{e}_{3},\alpha)R(\vec{e}_{2},\beta)R(\vec{e}_{3},\gamma) \\
 & =\begin{pmatrix}
\cos \alpha \cos \beta \cos \gamma-\sin \alpha \sin \gamma & -\cos \alpha \cos \beta \sin \gamma-\sin \alpha \cos \gamma & \cos \alpha \sin \beta \\
\sin \alpha \cos \beta \cos \gamma+\cos \alpha \sin \gamma & -\sin \alpha \cos \beta \sin \gamma+\cos \alpha \cos \gamma & \sin \alpha \sin \beta \\
-\sin \beta \cos \gamma & \sin \beta \sin \gamma & \cos \beta
\end{pmatrix}
\end{align}$$

we solve out the Euler angles as follows:

1. $\displaystyle{\alpha=\frac{3\pi}{4},\beta=\frac{\pi}{6},\gamma=\frac{\pi}{4}}$
2. $\displaystyle{\alpha=\frac{\pi}{6},\beta=\frac{\pi}{4},\gamma=-\frac{\pi}{3}}$

# problem 2

find the Euler angles of the following rotation transformation $\displaystyle{R(\vec{n},\omega)}$:

1. $\displaystyle{R(\vec{e}_{1}\sin \theta+\vec{e}_{3}\cos \theta,\pi)}$
2. $\displaystyle{R\left[ \frac{\vec{e}_{1}+\vec{e}_{2}+\vec{e}_{3}}{\sqrt{ 3 }},\frac{2\pi}{3} \right]}$

## solution

remembering the Rodrigues' rotation formula

$$\begin{align}
R(\vec{n},\omega) & =I+( \sin \omega )N+(1-\cos \omega )N^{2}
\end{align}$$

where $\displaystyle{N}$ is the cross product matrix of $\displaystyle{\vec{n}}$, which is

$$\begin{align}
N & =\begin{pmatrix}
0 & -n _{z} & n_{y} \\
n_{z} & 0 & -n_{x} \\
-n_{y} & n_{x} & 0
\end{pmatrix}
\end{align}$$

we have

1. 
$$\begin{align}
R(\vec{e}_{1}\sin \theta+\vec{e}_{3}\cos \theta,\pi) & =\begin{pmatrix}
-\cos 2\theta & 0 & \sin 2\theta \\
0 & -1 & 0 \\
\sin 2\theta & 0 & \cos 2\theta
\end{pmatrix} \\
\implies \beta & =2\theta,\alpha=0,\gamma=\pi
\end{align}$$

2. 
$$\begin{align}
R\left[ \frac{\vec{e}_{1}+\vec{e}_{2}+\vec{e}_{3}}{\sqrt{ 3 }},\frac{2\pi}{3} \right] & =\begin{pmatrix}
0 & 0 & 1 \\
1 & 0 & 0 \\
0 & 1 & 0
\end{pmatrix} \\
\implies \beta & =\frac{\pi}{2},\alpha=0,\gamma=\frac{\pi}{2}
\end{align}$$

