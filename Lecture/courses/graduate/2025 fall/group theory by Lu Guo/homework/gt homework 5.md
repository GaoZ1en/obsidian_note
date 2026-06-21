# problem 1

calculate the Euler angles of the following rotation transformation matrix $\displaystyle{R}$:

$$\begin{align}
R(\alpha,\beta,\gamma) & =\frac{1}{4}\begin{pmatrix}
-\sqrt{ 3 }-2 & \sqrt{ 3 }-2 & -\sqrt{ 2 } \\
\sqrt{ 3 }-2 & -\sqrt{ 3 }-2 & \sqrt{ 2 } \\
-\sqrt{ 2 } & \sqrt{ 2 } & 2\sqrt{ 3 }
\end{pmatrix}
\end{align}$$

*sol*. notice that

$$\begin{align}
R(\alpha,\beta,\gamma) & =R(\vec{e}_{3},\alpha)R(\vec{e}_{2},\beta)R(\vec{e}_{3},\gamma) \\
 & =\begin{pmatrix}
\cos \alpha \cos \beta \cos \gamma-\sin \alpha \sin \gamma & -\cos \alpha \cos \beta \sin \gamma-\sin \alpha \cos \gamma & \cos \alpha \sin \beta \\
\sin \alpha \cos \beta \cos \gamma+\cos \alpha \sin \gamma & -\sin \alpha \cos \beta \sin \gamma+\cos \alpha \cos \gamma & \sin \alpha \sin \beta \\
-\sin \beta \cos \gamma & \sin \beta \sin \gamma & \cos \beta
\end{pmatrix}
\end{align}$$

we solve out the Euler angles as follows:

$$\begin{align}
\alpha & = \frac{3\pi}{4}\\
\beta & = \frac{\pi}{6}\\
\gamma & =\frac{\pi}{4}
\end{align}$$

# problem 2

calculate the Euler angles of the following rotation transformation $\displaystyle{R(\vec{n},\omega)=R\left[ \frac{\vec{e}_{1}+\vec{e}_{2}+\vec{e}_{3}}{\sqrt{ 3 }},\frac{2\pi}{3} \right]}$

*sol*. remembering the Rodrigues' rotation formula

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

then we have

$$\begin{align}
R(\vec{n},\omega) & =\begin{pmatrix}
0 & 0 & 1 \\
1 & 0 & 0 \\
0 & 1 & 0
\end{pmatrix}
\end{align}$$

and the Euler angles are

$$\begin{align}
\alpha & = 0\\
\beta & = \frac{\pi}{2} \\
\gamma & =\frac{\pi}{2}
\end{align}$$

# problem 3

using the representation matrices $\displaystyle{D^{j}(\vec{e}_{3},\omega)}$ and $\displaystyle{d^{j}(\omega)}$ of the $\displaystyle{\mathrm{SU}(2)}$ group, express the representation matrix $\displaystyle{D^{j}(\hat{n},\omega)}$ for the element corresponding to a rotation by angle $\displaystyle{\omega}$ about the $\displaystyle{\hat{n}}$ direction.

*sol*.

suppose the direction cosines of $\displaystyle{\hat{n}}$ are $\displaystyle{n_{x},n_{y},_{z}}$, then we can find $\displaystyle{\alpha}$ and $\displaystyle{\beta}$ such that

$$\begin{align}
n_{x} & =\sin \beta \cos \alpha \\
n_{y} & =\sin \beta \sin \alpha \\
n_{z} & =\cos \beta
\end{align}$$

we express the rotation long $\displaystyle{\hat{n}}$ by first rotating $\displaystyle{\hat{n}}$ to $\displaystyle{\vec{e}_{3}}$ direction, then rotate along $\displaystyle{\vec{e}_{3}}$ direction by angle $\displaystyle{\omega}$, finally rotate back. thus we have

$$\begin{align}
D^{j}(\hat{n},\omega) & =D^{j}(\vec{e}_{3},\alpha)D^{j}(\vec{e}_{2},\beta)D^{j}(\vec{e}_{3},\omega)D^{j}(\vec{e}_{2},-\beta)D^{j}(\vec{e}_{3},-\alpha) \\
 & =D^{j}(\vec{e}_{3},\alpha)d^{j}(\beta)D^{j}(\vec{e}_{3},\omega)d^{j}(-\beta)D^{j}(\vec{e}_{3},-\alpha)
\end{align}$$

# problem 4

prove that the generators of adjoint representation $\displaystyle{(I_{A}^{\mathrm{ad}})_{BD}=iC_{AD}^{~~~~B}}$ satisfy the commutation relation

$$\begin{align}
I^{\text{ad}}_{A}I^{\text{ad}}_{B}-I^{\text{ad}}_{B}I^{\text{ad}}_{A} & =iC_{AB}^{~~~~D}I^{\text{ad}}_{D}
\end{align}$$

*sol*.

we have

$$\begin{align}
(I^{\text{ad}}_{A}I^{\text{ad}}_{B}-I^{\text{ad}}_{B}I^{\text{ad}}_{A})_{CD} & =(I^{\text{ad}}_{A})_{CE}(I^{\text{ad}}_{B})_{ED}-(I^{\text{ad}}_{B})_{CE}(I^{\text{ad}}_{A})_{ED} \\
 & =iC_{AD}^{~~~~E}iC_{BE}^{~~~~C}-iC_{BD}^{~~~~E}iC_{AE}^{~~~~C} \\
 & =-C_{AD}^{~~~~E}C_{BE}^{~~~~C}+C_{BD}^{~~~~E}C_{AE}^{~~~~C} \\
 & = -C_{AB}^{~~~~E}C_{ED}^{~~~C} \\
 & =iC_{AB}^{~~~~E}(I^{\text{ad}}_{E})_{CD}
\end{align}$$

in the second final step we use the Jacobi identity.

# problem 5

let $\displaystyle{\psi _{m}^{\ell}(x)}$ be functions belonging to the $\displaystyle{m}$-th row of the irreducible representation $\displaystyle{D^{\ell}}$ of the $\displaystyle{\mathrm{SO}(3)}$ group. construct, by linear combination of $\displaystyle{\psi _{m}^{\ell*}(x)}$, the function whose eigenvalue of the orbital angular momentum along the $\displaystyle{\vec{e}_{2}}$ direction is $\displaystyle{m}$.

*sol*.

we have

$$\begin{align}
\psi ^{\ell'}_{m}(x) & =\sum ^{\ell}_{m'=-\ell} D^{\ell}_{m'm}\left( \vec{e}_{1},-\frac{\pi}{2} \right)\psi ^{\ell}_{m'}(x)
\end{align}$$

# problem 6

calculate $\displaystyle{\left\{d^{\ell}(\theta)(I^{\ell}_{3})^{2}d^{\ell}(\theta)^{-1}\right\}_{mm}}$, where $\displaystyle{d^{\ell}(\theta)}$ is the representation matrix of rotation group, and $\displaystyle{I^{\ell}_{3}}$ is the third generator of this representation.

*sol*.

we have

$$\begin{align}
\left\{d^{\ell}(\theta)(I^{\ell}_{3})^{2}d^{\ell}(\theta)^{-1}\right\}_{mm'} & = \braket{ \ell,m|(d^{\ell}(\theta)J_{z}d^{\ell}(\theta)^{-1})^{2}|\ell,m' } \\
 & = \braket{ \ell,m|(J_{z}\cos \theta+J_{x}\sin \theta)^{2}|\ell,m' } \\
 & =m^{2}\cos ^{2}\theta \delta _{mm'}+\sin ^{2}\theta\braket{ \ell,m|J_{x}^{2}|\ell,m' } +\sin \theta \cos \theta\braket{ \ell,m|J_{z}J_{x}+J_{x}J_{z}|\ell,m' }  \\
 & =m^{2}\cos ^{2}\theta \delta _{mm'}+\frac{1}{2}(\ell(\ell+1)-m^{2})\sin ^{2}\theta \delta _{mm'} \\
 & +\frac{1}{2}(m+m')\sin \theta \cos \theta (\sqrt{ (\ell-m)(\ell+m+1) }\delta _{m,m'+1}+\sqrt{ (\ell+m)(\ell-m+1) }\delta _{m,m'-1})
\end{align}$$
