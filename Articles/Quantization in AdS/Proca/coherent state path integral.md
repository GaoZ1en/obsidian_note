# harmonic oscillator

we start from a harmonic oscillator.

$$
\tag{1.0}\begin{align}
S & =\int ^{t_{f}}_{t_{i}}\left(\frac{1}{2}\dot{x}^{2}-\frac{1}{2}\omega ^{2}x^{2}\right)
\end{align}
$$

## CPS formalism and canonical quantization

take a variation, we get the eom and symplectic potential

$$
\tag{1.1}\begin{align}
\delta S & =\int ^{t_{f}}_{t_{i}}E\delta x+\theta|_{t_{f}}-\theta|_{t_{i}} \\
E & =-\ddot{x}-\omega ^{2}x \\
\theta & =\dot{x}\delta x
\end{align}
$$

take a further variation of the symplectic potential, we get the symplectic form

$$
\tag{1.2}\begin{align}
\omega & =\delta \dot{x}\wedge \delta x
\end{align}
$$

the general solution of the eom reads

$$
\tag{1.3}\begin{align}
x & =\frac{1}{\sqrt{ 2\omega }}\left(ae^{-i\omega t}+a^{\dagger}e^{i\omega t}\right)
\end{align}
$$

under this parametrization, the symplectic form becomes

$$
\tag{1.4}\begin{align}
\omega & =i\delta a^{\dagger}\wedge \delta a
\end{align}
$$

which gives the standard Poisson bracket

$$
\tag{1.5}\begin{align}
\left\{a^{\dagger},a\right\} & =-i
\end{align}
$$

this system has a time translation symmetry

$$
\tag{1.6}\begin{align}
X_{H} & =\int \mathrm{d}t \dot{x} \frac{\delta}{\delta x}
\end{align}
$$

act this symmetry on the action

$$
\tag{1.7}\begin{align}
X_{H}\cdot \delta S & =\alpha _{H}|_{t_{f}}-\alpha _{H}|_{t_{i}} \\
\alpha _{H} & =\frac{1}{2}\left(\dot{x}^{2}-\omega ^{2}x^{2}\right)
\end{align}
$$

then the corresponding Noether charge (we identify it as Hamiltonian) is given by

$$
\tag{1.8}\begin{align}
H & =X_{H}\cdot \theta-\alpha \\
 & =\frac{1}{2}\dot{x}^{2}+\frac{1}{2}\omega ^{2}x^{2} \\
 & =\omega\left(a^{\dagger}a+\frac{1}{2}\right)
\end{align}
$$

we lift $\displaystyle{a}$ and $\displaystyle{a^{\dagger}}$ to operators and the commutation relation is given by

$$
\tag{1.9}\begin{align}
[a^{\dagger},a] & =i\left\{a^{\dagger},a\right\}=1
\end{align}
$$

vaccum state $\displaystyle{\ket{0}}$ is defined as

$$
\tag{1.10}\begin{align}
a\ket{0} =0
\end{align}
$$

and by iteratively acting $\displaystyle{a^{\dagger}}$ on $\displaystyle{\ket{0}}$, we get the excited states

$$
\tag{1.11}\begin{align}
\ket{n}  & =\frac{(a^{\dagger})^{n}}{\sqrt{ n! }}\ket{0}
\end{align}
$$

the Hilbert space is then spanned by $\displaystyle{\{\ket{n}\}}$. in the derivation of path integral, we will impose normal ordering on the hamiltonian operator.

## coherent state representation

now we want to transfer to coherent state representation. we define the coherent state $\displaystyle{\ket{z}}$ as the eigenstate of $\displaystyle{a}$

$$
\tag{1.12}\begin{align}
a\ket{z}  & =z\ket{z} \\
\implies \ket{z} & =e^{-\frac{|z|^{2}}{2}}\sum ^{\infty}_{n=0}\frac{z^{n}}{\sqrt{ n! }}\ket{n}
\end{align}
$$

the inner product between two coherent states is given by

$$
\tag{1.13}\begin{align}
\braket{ z_{1}|z_{2} }  & =e^{z_{1}^{*}z_{2}-(|z_{1}|^{2}+|z_{2}|^{2})/2}
\end{align}
$$

the completeness relation reads

$$
\tag{1.14}\begin{align}
1 & =\int \frac{\mathrm{d}^{2}z}{\pi}\ket{z} \bra{z}
\end{align}
$$

## path integral formalism

now we will derive path integral representation of the transition amplitude between two coherent states

$$
\tag{1.15}\begin{align}
\braket{ z_{f}|e^{-iHT}|z_{i} }  & =\int \prod ^{N-1}_{k=1} \frac{\mathrm{d}^{2}z_{k}}{\pi}\braket{ z_{N}|e^{-iH\Delta T}|z_{N-1} }\dots\braket{ z_{1}|e^{-iH\Delta T}|z_{0} }
\end{align}
$$

where $\displaystyle{z_{0}=z_{i},z_{N}=z_{f}}$. for small $\displaystyle{\Delta T}$, we have

$$
\tag{1.16}\begin{align}
\braket{ z_{n+1}|e^{-iH\Delta T}|z_{n} }  & =\braket{ z_{n+1}|e^{-i\omega a^{\dagger}a\Delta T}|z_{n} }  \\
 & =\braket{ z_{n+1}|z_{n}e^{-i\omega \Delta T} }  \\
 & =e^{z_{n+1}^{*}z_{n}e^{-i\omega \Delta T}-(|z_{n+1}|^{2}+|z_{n}|^{2})/2}
\end{align}
$$

here we notice that

$$\begin{align}
e^{-i\omega a^{\dagger}a\Delta T}\ket{z}  & =e^{-i\omega a^{\dagger}a\Delta T}e^{-|z|^{2}/2}\sum ^{\infty}_{n=0} \frac{z^{n}}{\sqrt{ n! }}\ket{n}  \\
 & =e^{-|z|^{2}/2}\sum ^{\infty}_{n=0}\frac{z^{n}}{\sqrt{ n! }}e^{-i\omega n\Delta T}\ket{n}  \\
 & =\ket{z e^{-i\omega \Delta T}}
\end{align}$$

then

$$
\tag{1.17}\begin{align}
\braket{ z_{f}|e^{-iHT}|z_{i} } & =\lim_{ N \to \infty } \int \prod ^{N-1}_{k=1} \frac{\mathrm{d}^{2}z_{k}}{\pi} \exp\left(\sum ^{N-1}_{n=0}\left(z^{*}_{n+1}z_{n}e^{-i\omega \Delta T}-\frac{1}{2}|z_{n+1}|^{2}-\frac{1}{2}|z_{n}|^{2}\right)\right) \\
 & =\lim_{ N \to \infty } \int \prod ^{N-1}_{k=1}\frac{\mathrm{d}^{2}z_{k}}{\pi} \exp\left(\sum ^{N-1}_{n=0}\left(-\frac{1}{2}|z_{n+1}-z_{n}|^{2}+\frac{1}{2}(z^{*}_{n+1}z_{n}-z_{n}^{*}z_{n+1})-i\omega \Delta Tz_{n+1}^{*}z_{n}\right)\right) \\
 & =\lim_{ N \to \infty } \int \prod ^{N-1}_{k=1}\frac{\mathrm{d}^{2}z_{k}}{\pi} \exp\left(i\Delta T\sum ^{N-1}_{n=0}\left(-\frac{i}{2}\left( \frac{z_{n+1}^{*}-z_{n}^{*}}{\Delta T}z_{n}-\frac{i}{2}z_{n}^{*}\frac{z_{n+1}-z_{n}}{\Delta T} \right)-\omega z^{*}_{n}z_{n}+\mathcal{O}(\Delta T)\right)\right) \\
 & =\int _{z=z(t_{i})}^{z=z(t_{f})} \mathcal{D}^{2}z \exp\left(iS[z,z^{*}]\right)
\end{align}
$$

where

$$
\tag{1.18}\begin{align}
S[z,z^{*}] & =\int ^{t_{f}}_{t_{i}}\frac{i}{2}\left(z^{*}\dot{z}-\dot{z}^{*}z\right)-\omega z^{*}z
\end{align}
$$

the path integral measure is given by

$$
\tag{1.19}\begin{align}
\mathcal{D}^{2}z & =\lim_{ N \to \infty } \prod ^{N-1}_{k=1}\frac{\mathrm{d}^{2}z_{k}}{\pi}
\end{align}
$$

## partition function

we want to calculate the partition function to verify the correctness of the path integral formalism

$$
\tag{1.20}\begin{align}
Z(\beta) & =\int _{z=z(0)}^{z=z(\beta)} \mathcal{D}^{2}z \exp\left(-S_{E}[z,z^{*}]\right)
\end{align}
$$

where the Euclidean action reads

$$
\tag{1.21}\begin{align}
S_{E}[z,z^{*}] & =\int ^{\beta}_{0}\mathrm{d}\tau \frac{1}{2}\left(z^{*}\dot{z}-\dot{z}^{*}z\right)+\omega z^{*}z
\end{align}
$$

discretize the time interval into $\displaystyle{N}$ slices with $\displaystyle{\Delta \tau=\frac{\beta}{N}}$, label $\displaystyle{z_{k}=z(k\Delta \tau)}$, and impose the periodic boundary condition $\displaystyle{z_{0}=z_{N}}$. then the partition function with normal ordering in the discrete form reads

$$\begin{align}
Z[\beta] & =\int \prod ^{N-1}_{k=0} \frac{\mathrm{d}^{2}z_{k}}{\pi}\exp\left(-\sum ^{N-1}_{k=0}\left( \frac{1}{2}z^{*}_{k}(z_{k+1}-z_{k})-\frac{1}{2}(z^{*}_{k+1}-z_{k}^{*})z_{k}+\Delta \tau \omega \bar{z}_{k}z_{k} \right)\right)
\end{align}$$

define the Fourier transformed variables

$$\begin{align}
z_{k} & =\frac{1}{\sqrt{ N }}\sum ^{N-1}_{n=0}z_{n}e^{i\frac{2\pi n}{N}k} \\
\implies z_{n} & =\frac{1}{\sqrt{ N }}\sum ^{N-1}_{k=0}z_{k}e^{-i\frac{2\pi n}{N}k}
\end{align}$$

then the Jacobian of this transformation is $\displaystyle{1}$. then

$$\begin{align}
Z[\beta] & =\int \prod ^{N-1}_{n=0} \frac{\mathrm{d}^{2}z_{n}}{\pi}\exp\left(-\sum ^{N-1}_{k=0}\left( \frac{1}{2} \frac{1}{N}\sum ^{N-1}_{n,n'=0}z_{n}^{*}z_{n'}e^{-i \frac{2\pi (n-n')}{N}k}\left(e^{i \frac{2\pi n'}{N}}-1 \right)-\frac{1}{2} \frac{1}{N}\sum ^{N-1}_{n,n'=0}z_{n}^{*}z_{n'}e^{-i \frac{2\pi(n'-n)}{N}k}\left( e^{-i \frac{2\pi n'}{N} }-1 \right)+\frac{1}{N}\Delta \tau \omega \sum ^{N-1}_{n,n'=0}z_{n}^{*}z_{n'}e^{-i \frac{2\pi(n'-n)}{N}k} \right)\right) \\
 & =\int \prod ^{N-1}_{n=0} \frac{\mathrm{d}^{2}z_{n}}{\pi}\exp\left(-\sum ^{N-1}_{n=0}z^{*}_{n}(1-e^{-\Delta \tau \omega}e^{2\pi i n/N})z_{n}\right) \\
 & =\prod ^{N-1}_{n=0} \frac{1}{1-e^{-\Delta \tau \omega}e^{2\pi i n/N}} \\
 & =\frac{1}{1-e^{-N\Delta \tau \omega}} \\
 & =\frac{1}{1-e^{-\beta \omega}}
\end{align}$$

this is exactly the correct partition function of a harmonic oscillator.

$$\begin{align}
\lim_{ N \to \infty } \prod ^{N-1}_{n=1} \frac{1-e^{2\pi in/N}}{1-e^{-\Delta \tau \omega}e^{2\pi in/N}} & \overset{?}{=} \prod _{n\neq 0} \frac{i\omega _{n}}{i\omega _{n}+\omega}, \quad \omega _{n}=\frac{2\pi n}{\beta},\Delta \tau=\frac{\beta}{N} \\
 & =e^{\beta \omega/2} \prod _{n\neq 0} \frac{i\omega _{n}}{i\omega _{n}+\omega} \\
 & =e^{\beta \omega/2} \frac{\beta \omega/2}{\sinh \beta \omega/2} \\
 & =\frac{\beta \omega}{1-e^{-\beta \omega}} \\
\lim_{ N \to \infty } \frac{1}{1-e^{-\Delta \tau \omega}}\prod ^{N-1}_{n=1} \frac{1}{1-e^{2\pi in/N}} & =\lim_{ N \to \infty } \frac{N}{\beta \omega} \frac{1}{N}=\frac{1}{\beta \omega}
\end{align}$$

have no idea.

## twisted boundary condition

now we want to calculate $\displaystyle{\mathrm{Tr}e^{-\beta H}e^{i\alpha N}}$, where $\displaystyle{N=a^{\dagger}a}$ is the number operator. since $\displaystyle{[H,N]=0}$, we have

$$\begin{align}
Z[\beta,\alpha] & =\int _{z=z(0)}^{z=z(\beta)}\mathcal{D}^{2}z\exp\left(-S_{E}[z,z^{*}]\right)
\end{align}$$

with twisted boundary condition

$$\begin{align}
z(\beta) & =e^{i\alpha}z(0)
\end{align}$$

the Euclidean action remains the same. discretize the time interval into $\displaystyle{N}$ slices with $\displaystyle{\Delta \tau=\frac{\beta}{N}}$, label $\displaystyle{z_{k}=z(k\Delta \tau)}$, and impose the twisted boundary condition $\displaystyle{z_{N}=e^{i\alpha}z_{0}}$. then the partition function with normal ordering in the discrete form reads

$$\begin{align}
Z[\beta,\alpha] & =\int \prod ^{N-1}_{k=0} \frac{\mathrm{d}^{2}z_{k}}{\pi}\exp\left(-\sum ^{N-1}_{k=0}\left( \frac{1}{2}z^{*}_{k}(z_{k+1}-z_{k})-\frac{1}{2}(z^{*}_{k+1}-z_{k}^{*})z_{k}+\Delta \tau \omega z^{*}_{k}z_{k} \right)\right)
\end{align}$$

define the Fourier transformed variables

$$\begin{align}
z_{k} & =\frac{1}{\sqrt{ N }}\sum ^{N-1}_{n=0}z_{n}e^{i\frac{2\pi n+\alpha}{N}k} \\
\implies z_{n} & =\frac{1}{\sqrt{ N }}\sum ^{N-1}_{k=0}z_{k}e^{-i\frac{2\pi n+\alpha}{N}k}
\end{align}$$

the Jacobian of this transformation is still $\displaystyle{1}$. then

$$\begin{align}
Z[\beta,\alpha] & =\int \prod ^{N-1}_{k=0} \frac{\mathrm{d}^{2}z_{n}}{\pi}\exp\left(-\sum ^{N-1}_{k=0}\left( \frac{1}{2} \frac{1}{N}\sum ^{N-1}_{n,n'=0}z_{n}^{*}z_{n'}e^{-i \frac{2\pi (n-n')}{N}k}\left(e^{i \frac{2\pi n'+\alpha}{N}}-1 \right)-\frac{1}{2} \frac{1}{N}\sum ^{N-1}_{n,n'=0}z_{n}^{*}z_{n'}e^{-i \frac{2\pi(n'-n) }{N}k}\left( e^{-i \frac{2\pi n'+\alpha}{N} }-1 \right)+\frac{1}{N}\Delta \tau \omega \sum ^{N-1}_{n,n'=0}z_{n}^{*}z_{n'}e^{-i \frac{2\pi(n'-n) }{N}k} \right)\right) \\
 & =\int \prod ^{N-1}_{k=0} \frac{\mathrm{d}^{2}z_{n}}{\pi}\exp\left(-\sum ^{N-1}_{n=0}z^{*}_{n}(1-e^{-\Delta \tau \omega}e^{i(2\pi n+\alpha)/N})z_{n}\right) \\
 & =\prod ^{N-1}_{k=0} \frac{1}{1-e^{-\Delta \tau \omega}e^{i(2\pi n+\alpha)/N}} \\
 & =\frac{1}{1-e^{-N\Delta \tau \omega}e^{i\alpha}} \\
 & =\frac{1}{1-e^{-\beta \omega}e^{i\alpha}}
\end{align}$$

which is the correct partition function with twisted boundary condition...

# free scalar in $\mathrm{AdS}_{3}$

we consider a free scalar in $\mathrm{AdS}_{3}$

$$\begin{align}
S & =-\frac{1}{2}\int \mathrm{d}^{3}x\sqrt{ -g }\left(\nabla _{\mu}\varphi \nabla ^{\mu}\varphi+\mu ^{2}\varphi ^{2}\right)
\end{align}$$

where

$$\begin{align}
\mathrm{d}s^{2} & =-(1+r^{2})\mathrm{d}t^{2}+\frac{\mathrm{d}r^{2}}{1+r^{2}}+r^{2}\mathrm{d}\phi ^{2}
\end{align}$$

## CPS formalism and canonical quantization

take a variation of the action, we get the eom and presymplectic potential

$$\begin{align}
\delta S & =\int _{M} \mathrm{d}^{3}x\sqrt{ -g }E\delta \varphi +\theta|_{t_{f}}-\theta|_{t_{i}} \\
E & =\nabla ^{2}\varphi -\mu ^{2}\varphi \\
\theta & =\int _{\Sigma}\mathrm{d}^{2}x\sqrt{ \sigma }\tau ^{\mu}\nabla _{\mu}\varphi \delta \varphi
\end{align}$$

take a further variation of the presymplectic potential, we get the presymplectic form

$$\begin{align}
\omega & =\int _{\Sigma}\mathrm{d}^{2}x\sqrt{ \sigma }\tau ^{\mu}\nabla _{\mu}\delta \varphi \wedge \delta \varphi
\end{align}$$

the general solution of the eom is given by

$$\begin{align}
\varphi & =\sum ^{\infty}_{n,\bar{n}=0}\left(a_{n,\bar{n}}\varphi _{n,\bar{n}}(x)+a^{\dagger}_{n,\bar{n}}\varphi _{n,\bar{n}}(x)\right) \\
\varphi _{n,\bar{n}}(x) & =\sqrt{ \frac{1}{n!\bar{n}!(\Delta)_{n}(\Delta)_{\bar{n}}} }\mathcal{L}_{\xi _{-1}}^{n}\mathcal{L}_{\bar{\xi}_{-1}}^{\bar{n}}\varphi _{00}(x) \\
\varphi _{0,0}(x) & =\sqrt{ \frac{1}{2\pi} }e^{-i\Delta t}(1+r^{2})^{-\frac{\Delta}{2}} \\
\Delta & =1+\sqrt{ 1+\mu ^{2} }
\end{align}$$

under this parametrization, the presymplectic form becomes

$$\begin{align}
\omega & =i\sum ^{\infty}_{n,\bar{n}=0}\delta a_{n,\bar{n}}^{\dagger}\wedge \delta a_{n,\bar{n}}
\end{align}$$

which gives the standard Poisson brackets

$$\begin{align}
\left\{a_{n_{1},\bar{n}_{1}}^{\dagger},a_{n_{2},\bar{n}_{2}}\right\} & =-i\delta _{n_{1},n_{2}}\delta _{\bar{n}_{1},\bar{n}_{2}}
\end{align}$$

$\mathrm{AdS}_{3}$ has 6 Killing vectors

$$\begin{align}
\xi _{1} & =\frac{1}{2}e^{i(t-\phi)}\left( r(1+r^{2})^{-1/2} \frac{\partial}{\partial t}-i(1+r^{2})^{1/2} \frac{\partial}{\partial r}-r^{-1}(1+r^{2})^{1/2} \frac{\partial}{\partial \phi} \right) \\
\xi _{0} & =\frac{1}{2}\left( \frac{\partial}{\partial t}-\frac{\partial}{\partial \phi} \right) \\
\xi _{-1} & =\frac{1}{2}e^{-i(t-\phi)}\left( r(1+r^{2})^{-1/2} \frac{\partial}{\partial t}+i(1+r^{2})^{1/2} \frac{\partial}{\partial r}-r^{-1}(1+r^{2})^{1/2} \frac{\partial}{\partial \phi} \right) \\
\bar{\xi}_{1} & =\frac{1}{2}e^{i(t+\phi)}\left( r(1+r^{2})^{-1/2} \frac{\partial}{\partial t}-i(1+r^{2})^{1/2} \frac{\partial}{\partial r}+r^{-1}(1+r^{2})^{1/2} \frac{\partial}{\partial \phi} \right) \\
\bar{\xi}_{0} & =\frac{1}{2}\left( \frac{\partial}{\partial t}+\frac{\partial}{\partial \phi} \right) \\
\bar{\xi}_{-1} & =\frac{1}{2}e^{-i(t+\phi)}\left( r(1+r^{2})^{-1/2} \frac{\partial}{\partial t}+i(1+r^{2})^{1/2} \frac{\partial}{\partial r}+r^{-1}(1+r^{2})^{1/2} \frac{\partial}{\partial \phi} \right)
\end{align}$$

the Noether charge corresponding to $\displaystyle{\xi}$ is given by

$$\begin{align}
H_{\xi} & =-\frac{1}{2}\omega[\mathcal{L}_{\xi}\varphi ,\varphi]
\end{align}$$

which gives

$$\begin{align}
H_{\xi_{0}} & =\frac{1}{2}\sum ^{\infty}_{n,\bar{n}=0}\left(\frac{\Delta}{2}+n\right)\left(a_{n,\bar{n}}a^{\dagger}_{n,\bar{n}}+a^{\dagger}_{n,\bar{n}}a_{n,\bar{n}}\right) \\
H_{\bar{\xi}_{0}} & =\frac{1}{2}\sum ^{\infty}_{n,\bar{n}=0}\left(\frac{\Delta}{2}+\bar{n}\right)(a_{n,\bar{n}}a^{\dagger}_{n,\bar{n}}+a^{\dagger}_{n,\bar{n}}a_{n,\bar{n}})
\end{align}$$

here we use

$$\begin{align}
\mathcal{L}_{\xi _{-1}}\phi _{n,\bar{n}} & =\sqrt{ (n+1)(\Delta+n) }\phi _{n+1,\bar{n}} & \mathcal{L}_{\xi _{-1}}\phi _{n,\bar{n}}^{*} & =-\sqrt{ n(\Delta+n-1) }\phi _{n-1,\bar{n}}^{*} \\
\mathcal{L}_{\xi_{0}}\phi _{n,\bar{n}} & =-i\frac{\Delta+2n}{2}\phi _{n,\bar{n}} & \mathcal{L}_{\xi_{0}}\phi _{n,\bar{n}}^{*} & =i\frac{\Delta+2n}{2}\phi _{n,\bar{n}}^{*} \\
\mathcal{L}_{\xi _{1}}\phi _{n,\bar{n}} & =-\sqrt{ n(\Delta+n-1) }\phi _{n-1,\bar{n}} & \mathcal{L}_{\xi _{1}}\phi _{n,\bar{n}}^{*} & =\sqrt{ (n+1)(\Delta+n) }\phi _{n+1,\bar{n}}^{*} \\
\mathcal{L}_{\bar{\xi}_{-1}}\phi _{n,\bar{n}} & =\sqrt{ (\bar{n}+1)(\Delta+\bar{n}) }\phi _{n,\bar{n}+1} & \mathcal{L}_{\bar{\xi}_{-1}}\phi _{n,\bar{n}}^{*} & =-\sqrt{ \bar{n}(\Delta+\bar{n}-1) }\phi _{n,\bar{n}-1}^{*} \\
\mathcal{L}_{\bar{\xi}_{0}}\phi _{n,\bar{n}} & =-i\frac{\Delta+2\bar{n}}{2}\phi _{n,\bar{n}} & \mathcal{L}_{\bar{\xi}_{0}}\phi _{n,\bar{n}}^{*} & =i\frac{\Delta+2\bar{n}}{2}\phi _{n,\bar{n}}^{*} \\
\mathcal{L}_{\bar{\xi}_{1}}\phi _{n,\bar{n}} & =-\sqrt{ \bar{n}(\Delta+\bar{n}-1) }\phi _{n,\bar{n}-1} & \mathcal{L}_{\bar{\xi}_{1}}\phi _{n,\bar{n}}^{*} & =\sqrt{ (\bar{n}+1)(\Delta+\bar{n}) }\phi _{n,\bar{n}+1}^{*}
\end{align}$$

rearrange $\displaystyle{H_{\xi_{0}}}$ and $\displaystyle{H_{\bar{\xi}_{0}}}$, we identify Hamiltonian and angular momentum

$$\begin{align}
H & =H_{\xi_{0}}+H_{\bar{\xi}_{0}} \\
 & =\frac{1}{2}\sum ^{\infty}_{n,\bar{n}=0}\left(\Delta+n+\bar{n}\right)\left(a_{n,\bar{n}}a^{\dagger}_{n,\bar{n}}+a^{\dagger}_{n,\bar{n}}a_{n,\bar{n}}\right) \\
J & =H_{\bar{\xi}_{0}}-H_{\xi_{0}} \\
 & =\frac{1}{2}\sum ^{\infty}_{n,\bar{n}=0}(\bar{n}-n)\left(a_{n,\bar{n}}a_{n,\bar{n}}^{\dagger}+a^{\dagger}_{n,\bar{n}}a_{n,\bar{n}}\right)
\end{align}$$

finally we lift $\displaystyle{a_{n,\bar{n}}}$ and $\displaystyle{a^{\dagger}_{n,\bar{n}}}$ to operators and the commutation relation is given by

$$\begin{align}
[a_{n_{1},\bar{n}_{1}}^{\dagger},a_{n_{2},\bar{n}_{2}}] & =\delta _{n_{1},n_{2}}\delta _{\bar{n}_{1},\bar{n}_{2}}
\end{align}$$

vacuum state $\displaystyle{\ket{0}}$ is defined as

$$\begin{align}
a_{n,\bar{n}}\ket{0} =0
\end{align}$$

and by iteratively acting $\displaystyle{a^{\dagger}_{n,\bar{n}}}$ on $\displaystyle{\ket{0}}$, we get the excitation states $\displaystyle{\prod _{n,\bar{n}=0}^{\infty}\frac{(a^{\dagger}_{n,\bar{n}})^{N_{n,\bar{n}}}}{\sqrt{ N_{n,\bar{n}}! }}\ket{0}}$, and the Hilbert space is then spanned by $\displaystyle{\left\{\prod _{n,\bar{n}=0}^{\infty}\frac{(a^{\dagger}_{n,\bar{n}})^{N_{n,\bar{n}}}}{\sqrt{ N_{n,\bar{n}}! }}\ket{0}\right\}}$.

in the quantum level, normal ordering is needed to calculate the Hamiltonian and angular momentum.

## coherent state representation

for each $\displaystyle{\varphi _{n,\bar{n}}}$ mode, define

$$\begin{align}
a_{n,\bar{n}}\ket{z_{n,\bar{n}}}  & =z_{n,\bar{n}}\ket{z_{n,\bar{n}}}
\end{align}$$

and the whole coherent state is given by

$$\begin{align}
\ket{\boldsymbol{z}} =\bigotimes ^{\infty}_{n,\bar{n}=0}\ket{z_{n,\bar{n}}}
\end{align}$$

the inner product between two coherent states is given by

$$\begin{align}
\braket{ \boldsymbol{z}_{1}|\boldsymbol{z}_{2} }  & =\prod ^{\infty}_{n,\bar{n}=0}e^{z_{1,n,\bar{n}}^{*}z_{2,n,\bar{n}}-(|z_{1,n,\bar{n}}|^{2}+|z_{2,n,\bar{n}}|^{2})/2} \\
 & =\prod ^{\infty}_{n,\bar{n}=0}\exp\left(z^{*}_{1,n,\bar{n}}z_{2,n,\bar{n}}-\frac{1}{2}|z_{1,n,\bar{n}}|^{2}-\frac{1}{2}|z_{2,n,\bar{n}}|^{2}\right)
\end{align}$$

and the completeness relation reads

$$\begin{align}
1 & =\int \prod ^{\infty}_{n,\bar{n}=0} \frac{\mathrm{d}^{2}z_{n,\bar{n}}}{\pi} \ket{\boldsymbol{z}} \bra{\boldsymbol{z}}
\end{align}$$

## path integral formalism

path integral formalism here is quite similar to the harmonic oscillator case. we write down the final results without derivation

$$\begin{align}
\braket{ \boldsymbol{z}_{f}|e^{-iHT}|\boldsymbol{z}_{i} }  & =\int _{\boldsymbol{z}=\boldsymbol{z}(t_{i})}^{\boldsymbol{z}=\boldsymbol{z}(t_{f})} \mathcal{D}^{2}\boldsymbol{z}\exp\left(iS[\boldsymbol{z},\boldsymbol{z}^{*}]\right)
\end{align}$$

where the integral measure and the action read

$$\begin{align}
\mathcal{D}^{2}\boldsymbol{z} & =\lim_{ N \to \infty } \prod ^{N-1}_{k=1}\prod ^{\infty}_{n,\bar{n}=0}\frac{\mathrm{d}^{2}z_{k,n,\bar{n}}}{\pi} \\
S[\boldsymbol{z},\boldsymbol{z}^{*}] & =\int ^{t_{f}}_{t_{i}}\sum ^{\infty}_{n,\bar{n}=0}\left(\frac{1}{2}(z^{*}_{n,\bar{n}}\dot{z}_{n,\bar{n}}-\dot{z}^{*}_{n,\bar{n}}z_{n,\bar{n}})-\omega _{n,\bar{n}}|z_{n,\bar{n}}|^{2}\right) \\
\omega _{n,\bar{n}} & =\Delta+n+\bar{n}
\end{align}$$

## partition function

$$\begin{align}
Z[\beta] & =\mathrm{Tr}e^{-\beta H} \\
 & =\int _{\boldsymbol{z}=\boldsymbol{z}(0)}^{\boldsymbol{z}=\boldsymbol{z}(\beta)} \mathcal{D}^{2}\boldsymbol{z}\exp\left(-S_{E}[\boldsymbol{z},\boldsymbol{z}^{*}]\right)
\end{align}$$

where the Euclidean action reads

$$\begin{align}
S_{E}[\boldsymbol{z},\boldsymbol{z}^{*}] & =\int ^{\beta}_{0}\mathrm{d}\tau \sum ^{\infty}_{n,\bar{n}=0}\left(\frac{1}{2}(z^{*}_{n,\bar{n}}\dot{z}_{n,\bar{n}}-\dot{z}^{*}_{n,\bar{n}}z_{n,\bar{n}})+\omega _{n,\bar{n}}|z_{n,\bar{n}}|^{2}\right)
\end{align}$$

and the periodic boundary condition is imposed

$$\begin{align}
z_{n,\bar{n}}(\beta)=z_{n,\bar{n}}(0)
\end{align}$$

by experience from the harmonic oscillator case, we directly write down the final result of the partition function

$$\begin{align}
Z(\beta) & =\prod ^{\infty}_{n,\bar{n}=0}\frac{1}{1-q^{\omega _{n,\bar{n}}}}
\end{align}$$

where $\displaystyle{q=e^{-\beta}}$. this result matches the operator formalism result.

$\displaystyle{\mathrm{Tr}e^{-\beta H}e^{i\alpha J}}$. the Euclidean action remains the same. for each mode $\displaystyle{z_{n,\bar{n}}}$ the periodic boundary condition gets twisted

$$\begin{align}
z_{n,\bar{n}}(\beta)=e^{i\alpha j_{n,\bar{n}}}z_{n,\bar{n}}(0)
\end{align}$$

where $\displaystyle{j_{n,\bar{n}}=\bar{n}-n}$. by experience from the harmonic oscillator case, we directly write down the final result of the partition function

$$\begin{align}
Z[\beta,\alpha] & =\prod ^{\infty}_{n,\bar{n}=0} \frac{1}{1-z^{j_{n,\bar{n}}}q^{\omega _{n,\bar{n}}}}
\end{align}$$

where $\displaystyle{z=e^{i\alpha}}$. this result also matches the operator formalism result.

# Proca field in $\mathrm{AdS}_{3}$

we consider a Proca vector field in $\mathrm{AdS}_{3}$

$$\begin{align}
S & =\int \mathrm{d}^{3}x\sqrt{ -g }\left(-\frac{1}{4}F_{\mu \nu}F^{\mu \nu}-\frac{1}{2}\mu ^{2}A_{\mu}A^{\mu}\right)
\end{align}$$

where

$$\begin{align}
\mathrm{d}s^{2} & =-(1+r^{2})\mathrm{d}t^{2}+\frac{\mathrm{d}r^{2}}{1+r^{2}}+r^{2}\mathrm{d}\phi ^{2}
\end{align}$$

## CPS formalism and quantization

take a variation of the action, we get the eom and presymplectic potential

$$\begin{align}
\delta S & =\int _{M} \mathrm{d}^{3}x\sqrt{ -g }E^{\nu}\delta A_{\nu} +\theta|_{t_{f}}-\theta|_{t_{i}} \\
E^{\nu} & =\nabla _{\mu}F^{\mu \nu}-\mu ^{2}A^{\nu} \\
\theta & =\int _{\Sigma}\mathrm{d}^{2}x\sqrt{ \sigma }\tau _{\mu}F^{\mu \nu}\delta A_{\nu}
\end{align}$$

take a further variation of the presymplectic potential, we get the presymplectic form

$$\begin{align}
\omega & =\int _{\Sigma}\mathrm{d}^{2}x\sqrt{ \sigma }\tau _{\mu}\delta F^{\mu \nu}\wedge \delta A_{\nu}
\end{align}$$

the general solution of the eom is given by

$$\begin{align}
A^{\mu} & =\sum ^{\infty}_{n,\bar{n}=0}\left(a_{l,n,\bar{n}}{f^{(+)}_{l,n,\bar{n}}}^{\mu}+a_{r,n,\bar{n}}{f^{(+)}_{r,n,\bar{n}}}^{\mu}+a^{\dagger}_{l,n,\bar{n}}{f^{(-)}_{l,n,\bar{n}}}^{\mu}+a^{\dagger}_{r,n,\bar{n}}{f^{(-)}_{r,n,\bar{n}}}^{\mu}\right) \\
{f^{(+)}_{l,n,\bar{n}}}^{\mu} & =\sqrt{ \frac{1}{n!\bar{n}!\,(\mu)_{n}(\mu+2)_{\bar{n}}} }\mathcal{L}_{\xi _{-1}}^{n}\mathcal{L}_{\bar{\xi}_{-1}}^{\bar{n}}{f^{(+)}_{l,0,0}}^{\mu} \\
{f^{(+)}_{l,0,0}}^{\mu} & =\sqrt{ \frac{\mu+1}{\pi \mu} } \frac{e^{-i(\mu+2)t}}{(1+r^{2})^{(\mu+2)/2}}\xi _{1}^{\mu} \\
{f^{(+)}_{r,n,\bar{n}}}^{\mu} & =\sqrt{ \frac{1}{n!\bar{n}!(\mu+2)_{n}\,(\mu)_{\bar{n}}} }\mathcal{L}_{\xi _{-1}}^{n}\mathcal{L}_{\bar{\xi}_{-1}}^{\bar{n}}{f^{(+)}_{r,0,0}}^{\mu} \\
{f^{(+)}_{r,0,0}}^{\mu} & =\sqrt{ \frac{\mu+1}{\pi \mu} } \frac{e^{-i(\mu+2)t}}{(1+r^{2})^{(\mu+2)/2}}\bar{\xi}^{\mu}_{1}
\end{align}$$

under this parametrization, the symplectic form becomes

$$\begin{align}
\omega & =i\sum ^{\infty}_{n,\bar{n}=0}\delta a^{\dagger}_{l,n,\bar{n}}\wedge \delta a_{l,n,\bar{n}}+\delta a^{\dagger}_{r,n,\bar{n}}\wedge \delta a_{r,n,\bar{n}}
\end{align}$$

the Noether charge corresponding to $\displaystyle{\xi_{0}}$ and $\displaystyle{\bar{\xi}_{0}}$ is

$$\begin{align}
H_{\xi_{0}} & =\frac{1}{2}\sum ^{\infty}_{n,\bar{n}=0}\left(\frac{\mu}{2}+n\right)\left(a_{l,n,\bar{n}}a^{\dagger}_{l,n,\bar{n}}+a^{\dagger}_{l,n,\bar{n}}a_{l,n,\bar{n}}\right)+\left(\frac{\mu+2}{2}+n\right)\left(a_{r,n,\bar{n}}a^{\dagger}_{r,n,\bar{n}}+a^{\dagger}_{r,n,\bar{n}}a_{r,n,\bar{n}}\right) \\
H_{\bar{\xi}_{0}} & =\frac{1}{2}\sum ^{\infty}_{n,\bar{n}=0}\left(\frac{\mu+2}{2}+\bar{n}\right)\left(a_{l,n,\bar{n}}a^{\dagger}_{l,n,\bar{n}}+a^{\dagger}_{l,n,\bar{n}}a_{l,n,\bar{n}}\right)+\left(\frac{\mu}{2}+\bar{n}\right)\left(a_{r,n,\bar{n}}a^{\dagger}_{r,n,\bar{n}}+a^{\dagger}_{r,n,\bar{n}}a_{r,n,\bar{n}}\right) \\
\end{align}$$

and we get the Hamiltonian and angular momentum

$$\begin{align}
H & =\frac{1}{2}\sum ^{\infty}_{n,\bar{n}=0}(\mu+1+n+\bar{n})\left(a_{l,n,\bar{n}}a^{\dagger}_{l,n,\bar{n}}+a^{\dagger}_{l,n,\bar{n}}a_{l,n,\bar{n}}+a_{r,n,\bar{n}}a^{\dagger}_{r,n,\bar{n}}+a^{\dagger}_{r,n,\bar{n}}a_{r,n,\bar{n}}\right) \\
J & =\frac{1}{2}\sum ^{\infty}_{n,\bar{n}=0}\left(\bar{n}-n+1\right)(a_{l,n,\bar{n}}a^{\dagger}_{l,n,\bar{n}}+a^{\dagger}_{l,n,\bar{n}}a_{l,n,\bar{n}})+(\bar{n}-n-1)\left(a_{r,n,\bar{n}}a^{\dagger}_{r,n,\bar{n}}+a^{\dagger}_{r,n,\bar{n}}a_{r,n,\bar{n}}\right)
\end{align}$$

lift $\displaystyle{a_{l/r,n,\bar{n}}}$ and $\displaystyle{a^{\dagger}_{l/r,n,\bar{n}}}$ to quantum operators. vacuum state $\displaystyle{\ket{0}}$ is defined as

$$\begin{align}
a_{l/r,n,\bar{n}}\ket{0} =0
\end{align}$$

excitation states

$$\begin{align}
\prod ^{\infty}_{n,\bar{n}=0}\frac{(a^{\dagger}_{l,n,\bar{n}})^{N_{l,n,\bar{n}}}(a^{\dagger}_{r,n,\bar{n}})^{N_{r,n,\bar{n}}}}{\sqrt{ N_{l,n,\bar{n}}!N_{r,n,\bar{n}}! }}\ket{0}
\end{align}$$

and Hilbert space $\displaystyle{\left\{\prod ^{\infty}_{n,\bar{n}=0}\frac{(a^{\dagger}_{l,n,\bar{n}})^{N_{l,n,\bar{n}}}(a^{\dagger}_{r,n,\bar{n}})^{N_{r,n,\bar{n}}}}{\sqrt{ N_{l,n,\bar{n}}!N_{r,n,\bar{n}}! }}\ket{0} \right\}}$. normal ordering is proposed to the Hamiltonian and angular momentum

$$\begin{align}
H & =\sum ^{\infty}_{n,\bar{n}=0}(\mu+1+n+\bar{n})\left(a^{\dagger}_{l,n,\bar{n}}a_{l,n,\bar{n}}+a^{\dagger}_{r,n,\bar{n}}a_{r,n,\bar{n}}\right) \\
J & =\sum ^{\infty}_{n,\bar{n}=0}\left(\bar{n}-n+1\right)a^{\dagger}_{l,n,\bar{n}}a_{l,n,\bar{n}}+\left(\bar{n}-n-1\right)a^{\dagger}_{r,n,\bar{n}}a_{r,n,\bar{n}}
\end{align}$$

## coherent state representation

define

$$\begin{align}
a_{l/r,n,\bar{n}}\ket{z_{l/r,n,\bar{n}}}  & =z_{l/r,n,\bar{n}}\ket{z_{l/r,n,\bar{n}}}
\end{align}$$

and

$$\begin{align}
\ket{\boldsymbol{z}_{l},\boldsymbol{z}_{r}} & =\bigotimes^{\infty}_{n,\bar{n}=0}\ket{z_{l,n,\bar{n}}}\otimes \ket{z_{r,n,\bar{n}}}
\end{align}$$

inner product

$$\begin{align}
\braket{ \boldsymbol{z}_{1,l},\boldsymbol{z}_{1,r}|\boldsymbol{z}_{2,l},\boldsymbol{z}_{2,r} }  & =\prod ^{\infty}_{n,\bar{n}=0}\exp\left(z^{*}_{1,l,n,\bar{n}}z_{2,l,n,\bar{n}}-\frac{1}{2}|z_{1,l,n,\bar{n}}|^{2}-\frac{1}{2}|z_{2,l,n,\bar{n}}|^{2}\right) \\
 & \quad \times \prod ^{\infty}_{n,\bar{n}=0}\exp\left(z^{*}_{1,r,n,\bar{n}}z_{2,r,n,\bar{n}}-\frac{1}{2}|z_{1,r,n,\bar{n}}|^{2}-\frac{1}{2}|z_{2,r,n,\bar{n}}|^{2}\right)
\end{align}$$

and completeness relation

$$\begin{align}
\boldsymbol{1} & =\int \prod ^{\infty}_{n,\bar{n}=0} \frac{\mathrm{d}^{2}z_{l,n,\bar{n}}}{\pi} \frac{\mathrm{d}^{2}z_{r,n,\bar{n}}}{\pi} \ket{\boldsymbol{z}_{l},\boldsymbol{z}_{r}} \bra{\boldsymbol{z}_{l},\boldsymbol{z}_{r}}
\end{align}$$

## path integral formalism

$$\begin{align}
\braket{ \boldsymbol{z}_{f,l},\boldsymbol{z}_{f,r}|e^{-iHT}|\boldsymbol{z}_{i,l},\boldsymbol{z}_{i,r} }  & =\int _{\boldsymbol{z}_{l}=\boldsymbol{z}_{i,l}}^{\boldsymbol{z}_{l}=\boldsymbol{z}_{f,l}}\int _{\boldsymbol{z}_{r}=\boldsymbol{z}_{i,r}}^{\boldsymbol{z}_{r}=\boldsymbol{z}_{f,r}} \mathcal{D}^{2}\boldsymbol{z}_{l}\mathcal{D}^{2}\boldsymbol{z}_{r}\exp\left(iS[\boldsymbol{z}_{l},\boldsymbol{z}^{*}_{l},\boldsymbol{z}_{r},\boldsymbol{z}^{*}_{r}]\right)
\end{align}$$

where

$$\begin{align}
\mathcal{D}^{2}\boldsymbol{z}_{l/r} & =\lim_{ N \to \infty } \prod ^{N-1}_{k=1}\prod ^{\infty}_{n,\bar{n}=0}\frac{\mathrm{d}^{2}z_{l/r,k,n,\bar{n}}}{\pi} \\
S[\boldsymbol{z}_{l},\boldsymbol{z}^{*}_{l},\boldsymbol{z}_{r},\boldsymbol{z}^{*}_{r}] & =\int ^{t_{f}}_{t_{i}}\mathrm{d}t \sum ^{\infty}_{n,\bar{n}=0}\left(\frac{1}{2}(z^{*}_{l,n,\bar{n}}\dot{z}_{l,n,\bar{n}}-\dot{z}^{*}_{l,n,\bar{n}}z_{l,n,\bar{n}})-\omega _{n,\bar{n}}|z_{l,n,\bar{n}}|^{2}\right) \\
 & \quad +\int ^{t_{f}}_{t_{i}}\mathrm{d}t \sum ^{\infty}_{n,\bar{n}=0}\left(\frac{1}{2}(z^{*}_{r,n,\bar{n}}\dot{z}_{r,n,\bar{n}}-\dot{z}^{*}_{r,n,\bar{n}}z_{r,n,\bar{n}})-\omega _{n,\bar{n}}|z_{r,n,\bar{n}}|^{2}\right)
\end{align}$$

## partition function

$$\begin{align}
Z(\beta,\alpha) & =\mathrm{Tr}e^{-\beta H}e^{ i\alpha J } \\
 & =\int _{\boldsymbol{z}_{l}=\boldsymbol{z}_{l}(0)}^{\boldsymbol{z}_{l}=\boldsymbol{z}_{l}(\beta)}\int _{\boldsymbol{z}_{r}=\boldsymbol{z}_{r}(0)}^{\boldsymbol{z}_{r}=\boldsymbol{z}_{r}(\beta)} \mathcal{D}^{2}\boldsymbol{z}_{l}\mathcal{D}^{2}\boldsymbol{z}_{r}\exp\left(-S_{E}[\boldsymbol{z}_{l},\boldsymbol{z}^{*}_{l},\boldsymbol{z}_{r},\boldsymbol{z}^{*}_{r}]\right)
\end{align}$$

where

$$\begin{align}
S_{E}[\boldsymbol{z}_{l},\boldsymbol{z}^{*}_{l},\boldsymbol{z}_{r},\boldsymbol{z}^{*}_{r}] & =\int ^{\beta}_{0}\mathrm{d}\tau \sum ^{\infty}_{n,\bar{n}=0}\left(\frac{1}{2}(z^{*}_{l,n,\bar{n}}\dot{z}_{l,n,\bar{n}}-\dot{z}^{*}_{l,n,\bar{n}}z_{l,n,\bar{n}})+\omega _{n,\bar{n}}|z_{l,n,\bar{n}}|^{2}\right) \\
 & \quad +\int ^{\beta}_{0}\mathrm{d}\tau \sum ^{\infty}_{n,\bar{n}=0}\left(\frac{1}{2}(z^{*}_{r,n,\bar{n}}\dot{z}_{r,n,\bar{n}}-\dot{z}^{*}_{r,n,\bar{n}}z_{r,n,\bar{n}})+\omega _{n,\bar{n}}|z_{r,n,\bar{n}}|^{2}\right) \\
\end{align}$$

twisted periodic condition

$$\begin{align}
z_{l/r,n,\bar{n}}(\beta) & =e^{\beta \Omega\, j_{l/r,n,\bar{n}}}z_{l/r,n,\bar{n}}(0) \\
\end{align}$$

where $\displaystyle{j_{l,n,\bar{n}}=\bar{n}-n+1}$ and $\displaystyle{j_{r,n,\bar{n}}=\bar{n}-n-1}$. then the partition function becomes

$$\begin{align}
Z[\beta,\alpha] & =\prod ^{\infty}_{n,\bar{n}=0} \frac{1}{1-q^{\mu/2+1+n}\bar{q}^{\mu/2+\bar{n}}} \frac{1}{1-q^{\mu/2+n}\bar{q}^{\mu/2+1+\bar{n}}}
\end{align}$$

where $\displaystyle{q=e^{-\beta+i\alpha}}$. this result matches the operator formalism result.

# electric field in $\displaystyle{4d}$ Minkowski spacetime

$$\begin{align}
S & =\int \mathrm{d}^{4}x\left( -\frac{1}{4}F_{\mu \nu}F^{\mu \nu}\right)
\end{align}$$

take a variation

$$\begin{align}
\delta S & =\int \mathrm{d}^{4}xE^{\nu}\delta A_{\nu}+\theta|_{\Sigma _{f}-\Sigma _{i}} \\
E^{\nu} & =\nabla _{\mu}F^{\mu \nu} \\
\theta & =\int \mathrm{d}^{3}xF^{0\nu}\delta A_{\nu} \\
\omega & =\delta \theta=\int \mathrm{d}^{3}x\delta F^{0\nu}\wedge \delta A_{\nu}
\end{align}$$

we adopt the temporal gauge $\displaystyle{A^{0}=0}$ and Coulomb gauge $\displaystyle{\vec{\nabla}\cdot \vec{A}=0}$. the general solution to the eom is

$$\begin{align}
A^{i} & =\sum _{\sigma=\pm}\varepsilon ^{i}_{\vec{k},\sigma}\int \mathrm{d}^{3}\vec{k}\left(a_{\vec{k},\sigma}\varphi _{\vec{k}}(x)+a^{\dagger}_{\vec{k},\sigma}\varphi _{\vec{k}}^{*}(x)\right) \\
\varphi _{\vec{k}}(x) & =\frac{1}{(2\pi)^{3/2}\sqrt{ 2\omega _{\vec{k}} }}e^{ip\cdot x}
\end{align}$$

where the polarization vector $\displaystyle{\varepsilon ^{\mu}_{\vec{k},\sigma}}$ satisfies

$$\begin{align}
\vec{k}\cdot\vec{\varepsilon}_{\vec{k},\sigma} & =0 \\
\sum _{\sigma=\pm}\varepsilon ^{i}_{\vec{k},\sigma}\varepsilon ^{j}_{\vec{k},\sigma} & =\delta ^{ij}-\frac{k^{i}k^{j}}{|\vec{k}|^{2}}
\end{align}$$

the symplectic form under this parameterization becomes

$$\begin{align}
\omega & =i\sum _{\sigma}\int \mathrm{d}^{3}\vec{k}\delta a^{\dagger}_{\vec{k},\sigma}\wedge \delta a_{\vec{k},\sigma}
\end{align}$$

vacuum state $\displaystyle{\ket{0}}$ is defined as

$$\begin{align}
a_{\vec{k},\sigma}\ket{0}  & =0, & \forall \vec{k}\in \mathbb{R}^{3},\sigma=\pm
\end{align}$$

excitation states are defined by iteratively acting $\displaystyle{a^{\dagger}_{\vec{k},\sigma}}$ on the vaccum states

$$\begin{align}
\prod _{\sigma=\pm}\prod _{\vec{k}}\frac{(a_{\vec{k},\sigma}^{\dagger})^{N_{\vec{k},\sigma}}}{\sqrt{ N_{\vec{k},\sigma}! }}\ket{0}
\end{align}$$

Hilbert space are spanned by vacuum and such excitation states.

the Hamiltonian becomes

$$\begin{align}
H & =:\sum _{\sigma=\pm}\frac{1}{2}\int \mathrm{d}^{3}\vec{k}\omega _{\vec{k}}\left(a^{\dagger}_{\vec{k},\sigma}a_{\vec{k},\sigma}+a_{\vec{k},\sigma}a^{\dagger}_{\vec{k},\sigma}\right): \\
 & =\sum _{\sigma=\pm} \int \mathrm{d}^{3}\vec{k}\omega _{\vec{k}}a^{\dagger}_{\vec{k},\sigma}a_{\vec{k},\sigma}
\end{align}$$

here we adopt normal ordering.

define the coherent state to mode $\displaystyle{\vec{k},\sigma}$ as

$$\begin{align}
a_{\vec{k},\sigma}\ket{z_{\vec{k},\sigma}} =z_{\vec{k},\sigma}\ket{z_{\vec{k},\sigma}}
\end{align}$$

the total coherent state is then

$$\begin{align}
\ket{\boldsymbol{z}}  & =\bigotimes_{\sigma,\vec{k}}\ket{z_{\vec{k},\sigma}}
\end{align}$$

via standard derivation, the transition amplitude is

$$\begin{align}
\braket{ \boldsymbol{z}_{f}|e^{-iHT}|\boldsymbol{z}_{i}}  & =\int _{\boldsymbol{z}=\boldsymbol{z}_{i}}^{\boldsymbol{z}=\boldsymbol{z}_{f}}\mathcal{D}^{2}\boldsymbol{z}\exp\left(iS[\boldsymbol{z},\boldsymbol{z}^{*}]\right)
\end{align}$$

where the measure $\displaystyle{\mathcal{D^{2}}\boldsymbol{z}}$ and action $\displaystyle{S[\boldsymbol{z},\boldsymbol{z}^{*}]}$ is

$$\begin{align}
\mathcal{D}^{2}\boldsymbol{z} & =\lim_{ N \to \infty } \prod _{\sigma=\pm}\prod ^{N-1}_{k=1}\int \mathrm{d}^{3}\vec{k}\frac{\mathrm{d}^{2}z_{\vec{k},\sigma,k}}{\pi} \\
S[\boldsymbol{z},\boldsymbol{z}^{*}] & =\sum _{\sigma=\pm}\int ^{t_{f}}_{t_{i}}\mathrm{d}t\int \mathrm{d}^{3}\vec{k}\left(\frac{1}{2}(z_{\vec{k},\sigma}^{*}\dot{z}_{\vec{k},\sigma}-\dot{z}_{\vec{k},\sigma}^{*}z_{\vec{k},\sigma})-\omega _{\vec{k}}|z_{\vec{k},\sigma}|^{2}\right)
\end{align}$$

the partition function

$$\begin{align}
Z(\beta) & =\mathrm{Tr}e^{-\beta H} \\
 & =\int _{\boldsymbol{z}(0)}^{\boldsymbol{z}(\beta)}\mathcal{D}^{2}\boldsymbol{z}\exp(-S_{E}[\boldsymbol{z},\boldsymbol{z}^{*}])
\end{align}$$

where the Euclidean action reads

$$\begin{align}
S_{E}[\boldsymbol{z},\boldsymbol{z}^{*}] & =\sum _{\sigma=\pm}\int ^{\beta}_{0}\mathrm{d}\tau \int \mathrm{d}^{3}\vec{k} \left(\frac{1}{2}(z^{*}_{\vec{k},\sigma}\dot{z}_{\vec{k},\sigma}-\dot{z}^{*}_{\vec{k},\sigma}z_{\vec{k},\sigma})+\omega _{\vec{k}}|z_{\vec{k},\sigma}|^{2}\right)
\end{align}$$

and $\displaystyle{z_{\vec{k},\sigma}}$ satisfies the periodic boundary condition $\displaystyle{z_{\vec{k},\sigma}(\beta)=z_{\vec{k},\sigma}(0)}$. we can expand $\displaystyle{z_{\vec{k}}}$ in Matsubara modes

$$\begin{align}
z_{\vec{k},\sigma}(\tau) & =\frac{1}{\sqrt{ \beta }}\sum ^{\infty}_{m=-\infty}z_{\vec{k},\sigma}(i\omega _{m})e^{-i\omega _{m}\tau} \\
\omega _{m} & =\frac{2\pi m}{\beta}
\end{align}$$

then the Euclidean action becomes

$$\begin{align}
S_{E}[\boldsymbol{z},\boldsymbol{z}^{*}] & =\sum _{\sigma=\pm}\int \mathrm{d}^{3}\vec{k}\sum ^{\infty}_{m=-\infty}z^{*}_{\vec{k},\sigma}(i\omega _{m})\left(-i\omega _{m}+\omega _{\vec{k}}\right)z_{\vec{k},\sigma}(i\omega _{m})
\end{align}$$

thus

$$\begin{align}
Z(\beta)
&= \prod_{\sigma=\pm}\prod_{\vec{k}}\prod_{m\in\mathbb{Z}} \int \frac{\mathrm{d}^{2}z_{\vec{k},\sigma}(i\omega _{m})}{\pi}\,\exp\Big(-z^{*}_{\vec{k},\sigma}(i\omega _{m})\big(-i\omega _{m}+\omega _{\vec{k}}\big)z_{\vec{k},\sigma}(i\omega _{m})\Big) \\
&= \prod_{\sigma=\pm}\prod_{\vec{k}}\prod_{m\in\mathbb{Z}} \frac{1}{-i\omega _{m}+\omega _{\vec{k}}} \\
 & =\prod_{\vec{k}} \frac{1}{(1-e^{-\beta\,\omega _{\vec{k}}})^{2}}
\end{align}$$

formally, with discrete momenta (finite box), this is the standard bosonic oscillator product with two transverse polarizations. In the continuum limit one writes

$$\begin{align}
\frac{1}{V}\,\log Z(\beta) = -\,2\int \frac{\mathrm{d}^{3}\vec{k}}{(2\pi)^3}\,\log\big(1-e^{-\beta |\vec{k}|}\big)
\end{align}$$

where $\omega_{\vec{k}}=|\vec{k}|$ and the factor $2$ counts physical polarizations. then the inner energy is

$$\begin{align}
E & =-\frac{\partial}{\partial \beta}\ln Z \\
 & =\frac{V}{\pi ^{2}}\int _{0}^{\infty} \mathrm{d}\omega \frac{\omega ^{3}}{e^{\beta \omega}-1}
\end{align}$$

---

here is a trick called "zeta function regularization" to evaluate the infinite product

$$\begin{align}
S^{-1} & =\prod _{n}  (i\omega _{n}+\omega) \\
 & =\omega \prod ^{\infty}_{n=1} \left( \omega ^{2}+\left( \frac{2\pi n}{\beta} \right)^{2} \right) \\
 & =\omega \prod ^{\infty}_{n=1} \left( \frac{2\pi}{\beta} \right)^{2} n^{2} \left( 1+\left( \frac{\beta \omega}{2} \right)^{2} \frac{1}{\pi ^{2}n^{2}} \right)
\end{align}$$

where

$$\begin{align}
\prod ^{\infty}_{n=1}\left( \frac{2\pi}{\beta} \right)^{2} & =\left( \frac{2\pi}{\beta} \right)^{2\sum ^{\infty}_{n=1}1}=\left( \frac{2\pi}{\beta} \right)^{2\zeta _{\mathbb{R}}(0)} \\
\prod ^{\infty}_{n=1}n^{2} & =\exp\left(-2\zeta _{\mathbb{R}}'(0)\right) \\
\prod ^{\infty}_{n=1}\left( 1+\left( \frac{\beta \omega}{2} \right)^{2} \frac{1}{\pi ^{2}n^{2}} \right) & =\frac{\sinh(\beta \omega/2)}{\beta \omega/2}
\end{align}$$

here $\displaystyle{\zeta _{\mathbb{R}}(z)}$ is the usual zeta function defined as

$$\begin{align}
\zeta _{\mathbb{R}}(z) & =\sum ^{\infty}_{n=1} \frac{1}{n^{z}}, & \mathrm{Re}(z)>1
\end{align}$$

then by analytic continuation, we have $\displaystyle{\zeta _{\mathbb{R}}(0)=-\frac{1}{2}}$ and $\displaystyle{\zeta _{\mathbb{R}}'(0)=-\frac{1}{2}\ln(2\pi)}$. substitute them back, we get

$$\begin{align}
S^{-1} & =\omega \left( \frac{2\pi}{\beta} \right)^{2\zeta _{\mathbb{R}}(0)}\exp\left(-2\zeta _{\mathbb{R}}'(0)\right)\frac{\sinh(\beta \omega/2)}{\beta \omega/2} \\
 & =2\sinh(\beta \omega/2)
\end{align}$$

OK now we have another breakthrough so we have no need to introduce any regularization here.
