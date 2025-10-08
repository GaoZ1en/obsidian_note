# problem 1

*find a matrix $\displaystyle{M}$ such that*

$$\begin{align}
M^{-1}\begin{pmatrix}
0 & -\cos \theta & \sin \theta \sin \varphi \\
\cos \theta & 0 & -\sin \theta \cos \varphi \\
-\sin \theta \sin \varphi & \sin \theta \cos \varphi & 0
\end{pmatrix}M=\begin{pmatrix}
0 & -1 & 0 \\
1 & 0 & 0 \\
0 & 0 & 0
\end{pmatrix}
\end{align}$$

denote $\displaystyle{A=\begin{pmatrix}0&-\cos \theta&\sin \theta \sin \varphi\\\cos \theta&0&-\sin \theta \cos \varphi\\-\sin \theta \sin \varphi&\sin \theta \cos \varphi&0\end{pmatrix},B=\begin{pmatrix}0&-1&0\\1&0&0\\0&0&0\end{pmatrix}}$. the rotation axis of $\displaystyle{A}$ is $\displaystyle{\vec{n}_{A}=\begin{pmatrix}\sin \theta \cos \varphi\\\sin \theta \sin \varphi\\\cos \theta\end{pmatrix}}$, and the rotation axis of $\displaystyle{B}$ is $\displaystyle{\vec{n}_{B}=\begin{pmatrix}0\\0\\1\end{pmatrix}}$. and $\displaystyle{M}$ is a rotation matrix that rotates $\displaystyle{\vec{n}_{A}}$ to $\displaystyle{\vec{n}_{B}}$. the rotation axis of $\displaystyle{M}$ is $\displaystyle{\vec{n}_{M}=\frac{\vec{n}_{A}\times \vec{n}_{B}}{|\vec{n}_{A}\times \vec{n}_{B}|}=\begin{pmatrix}\sin \varphi\\-\cos \varphi\\0\end{pmatrix}}$, and the rotation angle is $\displaystyle{\alpha=\arccos(\vec{n}_{A}\cdot \vec{n}_{B})=\theta}$. thus

$$\begin{align}
M & =\exp(\alpha \hat{n}_{M}\cdot \vec{J}) \\
 & =\begin{pmatrix}
\cos \theta \cos \varphi & \cos \theta \sin \varphi & -\sin \theta \\
-\sin \varphi & \cos \varphi & 0 \\
\sin \theta \cos \varphi & \sin \theta \sin \varphi & \cos \theta
\end{pmatrix}
\end{align}$$

# problem 2

*suppose $\displaystyle{R=\begin{pmatrix}1 & 0\\0&-1\end{pmatrix},S=\frac{1}{2}\begin{pmatrix}-1&-\sqrt{ 3 }\\\sqrt{ 3 }&-1\end{pmatrix}}$. find a matrix $\displaystyle{X}$ such that*

$$\begin{align}
X^{-1}(R\otimes R)X & =\begin{pmatrix}
1 & 0 & 0 & 0 \\
0 & -1 & 0 & 0 \\
0 & 0 & 1 & 0 \\
0 & 0 & 0 & -1
\end{pmatrix}, & X^{-1}(S\otimes S)X=\frac{1}{2}\begin{pmatrix}
2 & 0 & 0 & 0 \\
0 & 2 & 0 & 0 \\
0 & 0 & -1 & -\sqrt{ 3 } \\
0 & 0 & \sqrt{ 3 } & -1
\end{pmatrix}
\end{align}$$

notice that $\displaystyle{R}$ can be viewed as a rotation of $\displaystyle{\pi}$ around $\displaystyle{x}$ axis, amd $\displaystyle{S}$ can be viewed as a rotation of $\displaystyle{\frac{2\pi}{3}}$ around