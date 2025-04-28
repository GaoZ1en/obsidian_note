$$\tag{1.1}
\begin{align}
L & =\frac{1}{2}m\dot{x}^{2}-\lambda \dot{x}\phi+\frac{1}{2}\phi ^{2}-\frac{1}{2}kx^{2}
\end{align}
$$

make a variation

$$\tag{1.2}
\begin{align}
\delta L & =-(m\ddot{x}+kx-\lambda \dot{\phi})\delta x+(\phi-\lambda \dot{x}) \delta \phi+\frac{\mathrm{d}}{\mathrm{d}t}(m\dot{x}\delta x-\lambda \phi \delta x)
\end{align}
$$

integrate out $\displaystyle{\phi}$, we have

$$\tag{1.3}
\begin{align}
\delta L & =-((m+\lambda ^{2})\ddot{x}+kx)\delta x + \frac{\mathrm{d}}{\mathrm{d}t}((m+\lambda ^{2})\dot{x}\delta x) \\
 & =E\delta x+\frac{\mathrm{d}}{\mathrm{d}t}\theta
\end{align}
$$

then the symplectic form is

$$\tag{1.4}
\begin{align}
\omega=\delta \theta & =(m+\lambda ^{2})\delta \dot{x}\wedge \delta x
\end{align}
$$

make the following mode expansion

$$\tag{1.5}
\begin{align}
x= \frac{1}{\sqrt{ 2m'\omega }}e^{-i\omega t}a+ \frac{1}{\sqrt{ 2m'\omega }}e^{i\omega t}a^{\dagger}
\end{align}
$$

where $\displaystyle{m'=m+\lambda ^{2},\omega=\sqrt{ \frac{k}{m'} }}$. then the symplectic form becomes

$$\tag{1.5}
\begin{align}
\omega & =\frac{-i\omega}{2\omega}(e^{-i \omega t}\delta a- e^{i\omega t}\delta a^{\dagger})\wedge(e^{-i \omega t}\delta a+e^{i \omega t}\delta a^{\dagger}) \\
 & =i\delta a^{\dagger}\wedge \delta a
\end{align}
$$

then

$$\tag{1.6}
\begin{align}
X_{x(t)} & =-\frac{i}{\sqrt{ 2m'\omega }}\left( e^{-i \omega t} \frac{\delta}{\delta a^{\dagger}} -e^{i \omega t} \frac{\delta}{\delta a}\right)
\end{align}
$$

then the commutator

$$\tag{1.7}
\begin{align}
[x(t),x(t')] & =iX_{x(t)}\cdot X_{x(t')}\cdot \omega \\
 & = \frac{1}{2m'\omega} \left( e^{-i \omega t} \frac{\delta}{\delta a^{\dagger}}-e^{i \omega t} \frac{\delta}{\delta a} \right)\cdot\left( e^{-i \omega t'} \frac{\delta}{\delta a^{\dagger}}-e^{i \omega t'} \frac{\delta}{\delta a} \right)\cdot \delta a^{\dagger}\wedge \delta a \\
 & = \frac{1}{2m'\omega}(e^{i \omega(t-t')}-e^{-i\omega(t-t')})=\frac{i}{m'\omega}\sin \omega(t-t')
\end{align}
$$

and the time-ordered correlation function

$$\tag{1.8}
\begin{align}
\braket{ 0|\mathcal{T}x(t)x(t')|0 } & =\theta(t-t') \braket{ 0|x(t)x(t')|0 }+\theta(t'-t) \braket{ 0|x(t')x(t)|0 } \\
 & = \theta(t-t') \frac{1}{2m'\omega} \braket{ 0|\left( e^{-i\omega t} a+e^{i \omega t}a^{\dagger} \right)(e^{-i \omega t'}a+e^{i \omega t'}a^{\dagger})|0 } \\
 & +\theta(t'-t) \frac{1}{2m'\omega} \braket{ 0|\left( e^{-i\omega t'} a+e^{i \omega t'}a^{\dagger} \right)(e^{-i \omega t}a+e^{i \omega t}a^{\dagger})|0 } \\
 & = \frac{1}{2m'\omega}(\theta(t-t')  e^{-i\omega(t-t')}+\theta(t'-t)e^{i\omega(t-t')}) \\
 & =\frac{1}{2m'\omega}e^{-i \omega|t-t'|}
\end{align}
$$

$$\tag{1.9}
\begin{align}
X_{\phi(t)} & = -\lambda \sqrt{ \frac{\omega}{2m'} }\left(e^{-i\omega t} \frac{\delta}{\delta a^{\dagger}}+ e^{i \omega t} \frac{\delta}{\delta a}\right)
\end{align}
$$

$$\tag{1.9}
\begin{align}
[\phi(t),\phi(t')] & =iX_{\phi(t)}\cdot X_{\phi(t')}\cdot \omega \\
 & =-\frac{\lambda ^{2}\omega}{2m'}\left( e^{-i \omega t} \frac{\delta}{\delta a^{\dagger}}+e^{i \omega t} \frac{\delta}{\delta a} \right)\cdot\left( e^{-i \omega t'} \frac{\delta}{\delta a^{\dagger}}+e^{i \omega t'} \frac{\delta}{\delta a} \right)\cdot \delta a^{\dagger}\wedge \delta a \\
 & =-\frac{\lambda ^{2}\omega}{2m'}(e^{i \omega(t-t')}-e^{-i \omega(t-t')})=-\frac{\lambda ^{2}\omega}{m'}\cos \omega(t-t')
\end{align}
$$

$$\tag{1.10}
\begin{align}
\braket{ 0|\mathcal{T}\phi(t)\phi(t')|0 } & =\theta(t-t') \braket{ 0|\phi(t)\phi(t')|0 }+\theta(t'-t) \braket{ 0|\phi(t')\phi(t)|0 } \\
 & =-\frac{\lambda ^{2}\omega}{2m'}\theta(t-t')\braket{ 0|(e^{-i\omega t}a-e^{i \omega t}a^{\dagger})(e^{-i\omega t'}a-e^{i \omega t'}a^{\dagger})|0 } \\
 & -\frac{\lambda ^{2}\omega}{2m'}\theta(t-t')\braket{ 0|(e^{-i\omega t'}a-e^{i \omega t'}a^{\dagger})(e^{-i\omega t}a-e^{i \omega t}a^{\dagger})|0 } \\
 & =\frac{\lambda ^{2}\omega}{2m'}(\theta(t-t')e^{-i \omega(t-t')}+\theta(t'-t)e^{i \omega(t-t')}) \\
 & =\frac{\lambda ^{2}\omega}{2m'}
\end{align}
$$


$$\tag{1.5}
\begin{align}
x & =\frac{1}{\sqrt{ 2m'\omega }}e^{-i\omega t}a+ \frac{1}{\sqrt{ 2m'\omega }}e^{i\omega t}a^{\dagger} \\
\phi=\lambda \dot{x} & = \frac{-i\omega \lambda}{\sqrt{ 2m'\omega }} e^{-i \omega t}a+\frac{i\omega \lambda}{\sqrt{ 2m'\omega }} e^{i\omega t}a^{\dagger} \\
 & =-i\lambda \sqrt{ \frac{\omega}{2m'} }(e^{-i \omega t}a-e^{i\omega t}a^{\dagger}) \\
X_{\phi} & =-\lambda \sqrt{ \frac{\omega}{2m'} } \left( e^{-i \omega t} \frac{\delta}{\delta a^{\dagger}}+e^{i \omega t} \frac{\delta}{\delta a} \right)
\end{align}
$$
