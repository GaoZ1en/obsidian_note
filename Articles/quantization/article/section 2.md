in this section we will consider several examples using the above framework. 

## a system with second class constraints

we first consider a system with the following Lagrangian

$$\tag{1.1}
\begin{align}
L & =\frac{1}{2}m\dot{x}^{2}-\frac{1}{2}kx^{2}-\lambda \dot{x}\phi+\frac{1}{2}\phi ^{2}
\end{align}
$$

we take a variation of the Lagrangian as

$$\tag{1.2}
\begin{align}
\delta L & =E_{x}\delta x+ E_{\phi}\delta \phi+ \frac{\mathrm{d}}{\mathrm{d}t}\theta
\end{align}
$$

with

$$\tag{1.3}
\begin{align}
E_{x} & =-(m\ddot{x}+kx-\lambda \dot{\phi}) \\
E_{\phi} & =\phi-\lambda \dot{x} \\
\theta & =m\dot{x}\delta x-\lambda \phi \delta x
\end{align}
$$

then the symplectic potential is given by

$$\tag{1.4}
\begin{align}
\omega & =m\delta \dot{x}\wedge \delta x-\lambda \delta \phi \wedge \delta x
\end{align}
$$

a general solution of the equations of motion $\displaystyle{E_{x}=E_{\phi}=0}$ is given by

$$\tag{1.5}
\begin{align}
x(t) & =\frac{1}{\sqrt{ 2m'\omega }}(ae^{-i \omega t}+a^{\dagger}e^{i \omega t}) \\
\phi(t) & =\frac{i\lambda \omega}{\sqrt{ 2m'\omega }}(-ae^{-i \omega t}+a^{\dagger}e^{i\omega t})
\end{align}
$$

where $\displaystyle{m'=m-\lambda ^{2},\omega=\sqrt{ k/m' }}$. then the symplectic form becomes

$$\tag{1.6}
\begin{align}
\omega & =i\delta a^{\dagger}\wedge \delta a
\end{align}
$$

then the Hamiltonian flow corresponding to $\displaystyle{x(t)}$ and $\displaystyle{\phi(t)}$ is given by

$$\tag{1.7}
\begin{align}
X_{x(t)} & =i\left( \frac{\delta x(t)}{\delta a^{\dagger}} \frac{\delta}{\delta a}-\frac{\delta x(t)}{\delta a} \frac{\delta}{\delta a^{\dagger}} \right) \\
 & =-\frac{i}{\sqrt{ 2m'\omega }}\left(e^{-i \omega t} \frac{\delta}{\delta a^{\dagger}}-e^{i \omega t} \frac{\delta}{\delta a}\right) \\
X_{\phi(t)} & =i\left( \frac{\delta \phi(t)}{\delta a^{\dagger}} \frac{\delta}{\delta a}-\frac{\delta \phi(t)}{\delta a} \frac{\delta}{\delta a^{\dagger}} \right) \\
 & =- \frac{\lambda \omega}{\sqrt{ 2m'\omega }}\left(e^{i \omega t} \frac{\delta}{\delta a}+e^{-i \omega t} \frac{\delta}{\delta a^{\dagger}}\right)
\end{align}
$$

the commutators between $\displaystyle{x(t)}$ and $\displaystyle{\phi(t)}$ are then 

$$\tag{1.8}
\begin{align}
[x(t),x(t')] & =iX_{x(t)}\cdot X_{x(t')}\cdot \omega \\
 & =\frac{i}{m'\omega}\sin \omega(t-t') \\
[x(t),\phi(t')] & =iX_{x(t)}\cdot X_{\phi(t')}\cdot \omega \\
  & = \frac{i\lambda}{m'}\cos \omega(t-t')\\
[\phi(t),\phi(t')] & =iX_{\phi(t)}\cdot X_{\phi(t')}\cdot \omega \\
 & = \frac{i\lambda ^{2}\omega}{m'}\sin(t-t')
\end{align}
$$

and the 2-point time ordered correlation functions are given by

$$\tag{1.9}
\begin{align}
\braket{ 0|\mathcal{T}x(t)x(t)|0 } & = \theta(t-t')\braket{ 0|x(t)x(t')|0 } +\theta(t'-t)\braket{ 0|x(t')x(t)|0 }  \\
 & =\frac{1}{2m'\omega}(\theta(t))
\end{align}
$$