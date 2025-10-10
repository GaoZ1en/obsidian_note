# harmonic oscillator

we start from a harmonic ocsillator.

$$\begin{align}
S & =\int ^{t_{f}}_{t_{i}}\left(\frac{1}{2}\dot{x}^{2}-\frac{1}{2}\omega ^{2}x^{2}\right)
\end{align}$$

# CPS formalism and canonical quantization

take a variation, we get the eom and symplectic potential

$$\begin{align}
\delta S & =\int ^{t_{f}}_{t_{i}}E\delta x+\theta|_{t_{f}}-\theta|_{t_{i}} \\
E & =-\ddot{x}-\omega ^{2}x \\
\theta & =\dot{x}\delta x
\end{align}$$

take a further variation of the symplectic potential, we get the symplectic form

$$\begin{align}
\omega & =\delta \dot{x}\wedge \delta x
\end{align}$$

the general solution of the eom reads

$$\begin{align}
x & =\frac{1}{\sqrt{ 2\omega }}\left(ae^{-i\omega t}+a^{\dagger}e^{i\omega t}\right)
\end{align}$$

under this parametrization, the symplectic form becomes

$$\begin{align}
\omega & =i\delta a^{\dagger}\wedge \delta a
\end{align}$$

which gives the standard Poisson bracket

$$\begin{align}
\left\{a^{\dagger},a\right\} & =-i
\end{align}$$

this system has a time translation symmetry

$$\begin{align}
X_{H} & =\int \mathrm{d}t \dot{x} \frac{\delta}{\delta x}
\end{align}$$

act this symmetry on the action

$$\begin{align}
X_{H}\cdot \delta S & =\alpha _{H}|_{t_{f}}-\alpha _{H}|_{t_{i}} \\
\alpha _{H} & =\frac{1}{2}\left(\dot{x}^{2}-\omega ^{2}x\right)
\end{align}$$

then the corresponding Noether charge (we identify it as Hamiltonian) is given by

$$\begin{align}
H & =X_{H}\cdot \theta-\alpha \\
 & =\frac{1}{2}\dot{x}^{2}+\frac{1}{2}\omega ^{2}x^{2} \\
 & =\omega\left(a^{\dagger}a+aa^{\dagger}\right)
\end{align}$$

we lift $\displaystyle{a}$ and $\displaystyle{a^{\dagger}}$ to operators and the commutation relation is given by

$$\begin{align}
[a^{\dagger},a] & =i\left\{a^{\dagger},a\right\}=1
\end{align}$$

vaccum state $\displaystyle{\ket{0}}$ is defined as

$$\begin{align}
a\ket{0} =0
\end{align}$$

and by iteratively acting $\displaystyle{a^{\dagger}}$ on $\displaystyle{\ket{0}}$, we get the excited states

$$\begin{align}
\ket{n}  & =\frac{(a^{\dagger})^{n}}{\sqrt{ n! }}\ket{0}
\end{align}$$

the Hilbert space is then spanned by $\displaystyle{\{\ket{n}\}}$. 

## coherent state representation

now we want to transfer to coherent state representation. we define the coherent state $\displaystyle{\ket{z}}$ as the eigenstate of $\displaystyle{a}$

$$\begin{align}
a\ket{z}  & =z\ket{z} \\
\implies \ket{z}  & =e^{za^{\dagger}}\ket{0} \\
 & =e^{-\frac{|z|^{2}}{2}}\sum ^{\infty}_{n=0}\frac{z^{n}}{\sqrt{ n! }}\ket{n}
\end{align}$$

the inner product between two coherent states is given by

$$\begin{align}
\braket{ z_{1}|z_{2} }  & =e^{z_{1}^{*}z_{2}-(|z_{1}|^{2}+|z_{2}|^{2})/2}
\end{align}$$

the completeness relation reads

$$\begin{align}
1 & =\int \frac{\mathrm{d}^{2}z}{\pi}\ket{z} \bra{z}
\end{align}$$

## path integral formalism

now we will derive path integral representation of the transition amplitude between two coherent states

$$\begin{align}
\braket{ z_{f}|e^{-iHT}|z_{i} }  & =\int \prod ^{N-1}_{k=1} \frac{\mathrm{d}^{2}z_{k}}{\pi}\braket{ z_{N}|e^{-iH\Delta T}|z_{N-1} }\dots\braket{ z_{1}|e^{-iH\Delta T}|z_{0} } 
\end{align}$$

where $\displaystyle{z_{0}=z_{i},z_{N}=z_{f}}$. for small $\displaystyle{\Delta T}$, we have

$$\begin{align}
\braket{ z_{n+1}|e^{-iH\Delta T}|z_{n} }  & = e^{-i\omega \Delta T/2}\braket{ z_{n+1}|e^{-i\omega a^{\dagger}a\Delta T}|z_{n} }  \\
 & =e^{-i\omega \Delta T/2}\braket{ z_{n+1}|z_{n}e^{-i\omega \Delta T} }  \\
 & =e^{-i\omega \Delta T/2}e^{z_{n+1}^{*}z_{n}e^{-i\omega \Delta T}-(|z_{n+1}|^{2}+|z_{n}|^{2})/2}
\end{align}$$

here we notice that

$$\begin{align}
e^{-i\omega a^{\dagger}a\Delta T}\ket{z}  & =e^{-i\omega a^{\dagger}a\Delta T}e^{-|z|^{2}/2}\sum ^{\infty}_{n=0} \frac{z^{n}}{\sqrt{ n! }}\ket{n}  \\
 & =e^{-|z|^{2}/2}\sum ^{\infty}_{n=0}\frac{z^{n}}{\sqrt{ n! }}e^{-i\omega n\Delta T}\ket{n}  \\
 & =\ket{z e^{-i\omega \Delta T}} 
\end{align}$$

then

$$\begin{align}
\braket{ z_{f}|e^{-iHT}|z_{i} } & =\lim_{ N \to \infty } \int \prod ^{N-1}_{k=1} \frac{\mathrm{d}^{2}z_{k}}{\pi}e^{-i\omega T/2}\exp\left(\sum ^{N-1}_{n=0}\left(z^{*}_{n+1}z_{n}e^{-i\omega \Delta T}-\frac{1}{2}|z_{n+1}|^{2}-\frac{1}{2}|z_{n}|^{2}\right)\right) \\
 & =\lim_{ N \to \infty } \int \prod ^{N-1}_{k=1}\frac{\mathrm{d}^{2}z_{k}}{\pi}e^{-i\omega T/2}\exp\left(\sum ^{N-1}_{n=0}\left(-\frac{1}{2}|z_{n+1}-z_{n}|^{2}+\frac{1}{2}(z^{*}_{n+1}z_{n}-z_{n}^{*}z_{n+1})-i\omega \Delta Tz_{n+1}^{*}z_{n}\right)\right) \\
 & =\lim_{ N \to \infty } \int \prod ^{N-1}_{k=1}\frac{\mathrm{d}^{2}z_{k}}{\pi}e^{-i\omega T/2}\exp\left(i\Delta T\sum ^{N-1}_{n=0}\left(-\frac{i}{2}\left( \frac{z_{n+1}^{*}-z_{n}^{*}}{\Delta T}z_{n}-\frac{i}{2}z_{n}^{*}\frac{z_{n+1}-z_{n}}{\Delta T} \right)-\omega z^{*}_{n}z_{n}+\mathcal{O}(\Delta T)\right)\right) \\
 & =\int _{z=z(t_{i})}^{z=z(t_{f})} \mathcal{D}^{2}z \exp\left(iS[z,z^{*}]\right)
\end{align}$$

where

$$\begin{align}
S[z,z^{*}] & =\int ^{t_{f}}_{t_{i}}\frac{i}{2}\left(z^{*}\dot{z}-\dot{z}^{*}z\right)-\omega z^{*}z
\end{align}$$

the path integral measure is given by

$$\begin{align}
\mathcal{D}^{2}z & =\lim_{ N \to \infty } \prod ^{N-1}_{k=1}\frac{\mathrm{d}^{2}z_{k}}{\pi}e^{-i\omega T/2}
\end{align}$$

## partition function

we want to calculate the partition function to verify the correctness of the path integral formalism

$$\begin{align}
Z(\beta) & =\int _{z=z(0)}^{z=z(\beta)} \mathcal{D}^{2}z \exp\left(-S_{E}[z,z^{*}]\right)
\end{align}$$

where the Euclidean action reads

$$\begin{align}
S_{E}[z,z^{*}] & =\int ^{\beta}_{0}\mathrm{d}\tau \frac{1}{2}\left(z^{*}\dot{z}-\dot{z}^{*}z\right)+\omega z^{*}z
\end{align}$$

and $\displaystyle{z}$ satisfies the periodic boundary condition $\displaystyle{z(\beta)=z(0)}$. we can expand $\displaystyle{z}$ in Matsubara modes

$$\begin{align}
z(\tau) & =\frac{1}{\sqrt{ \beta }}\sum ^{\infty}_{n=-\infty}z(i\omega _{n})e^{-i\omega _{n}\tau} \\
\omega _{n} & =\frac{2\pi n}{\beta}
\end{align}$$

then the Euclidean action becomes

$$\begin{align}
S_{E}[z,z^{*}] & =\int ^{\beta}_{0}\mathrm{d}\tau\left(\frac{1}{2}\left( \frac{-i\omega _{n}}{\beta}\sum ^{\infty}_{n=-\infty}z^{*}(i\omega _{n})e^{i\omega _{n}\tau}\sum ^{\infty}_{n'=-\infty}z(i\omega _{n'}) e^{-i\omega _{n}\tau}\right)+\frac{\omega}{\beta} \sum ^{\infty}_{n=-\infty}z^{*}(i\omega _{n})e^{i\omega _{n}\tau}\sum ^{\infty}_{n'=-\infty}z(i\omega _{n'})e^{-i\omega _{n}\tau}\right) \\
 & =\sum ^{\infty}_{n=-\infty}z^{*}(i\omega _{n})\left(-i\omega _{n}+\omega\right)z(i\omega _{n})
\end{align}$$

thus

$$\begin{align}
Z(\beta) & =\int \prod ^{\infty}_{n=-\infty}\frac{\mathrm{d}^{2}z(i\omega _{n})}{\pi}e^{-\beta \omega /2}\exp\left(-\sum ^{\infty}_{n=-\infty}z^{*}(i\omega _{n})\left(-i\omega _{n}+\omega\right)z(i\omega _{n})\right) \\
 & =e^{-\beta \omega /2}\prod ^{\infty}_{n=-\infty}\int \frac{\mathrm{d}^{2}z(i\omega _{n})}{\pi}\exp\left(-z^{*}(i\omega _{n})\left(-i\omega _{n}+\omega\right)z(i\omega _{n})\right) \\
 & =e^{-\beta \omega /2}\prod ^{\infty}_{n=-\infty}\frac{1}{-i\omega _{n}+\omega} \\
 & =e^{-\beta \omega /2}\prod ^{\infty}_{n=1}\frac{1}{(2\pi n/\beta)^{2}+\omega ^{2}} \\
 & =e^{-\beta \omega /2}\frac{1}{\omega}\prod ^{\infty}_{n=1}\frac{1}{1+(2\pi n/\beta \omega)^{2}} \\
 & =e^{-\beta \omega /2}\frac{1}{\omega}\frac{\beta \omega}{2\sinh(\beta \omega/2)} \\
 & =\frac{1}{2\sinh(\beta \omega/2)}
\end{align}$$

which is the correct partition function of a harmonic oscillator.

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
\theta & =\int _{\Sigma}\mathrm{d}^{2}x\sqrt{ \sigma }\tau ^{\mu}\nabla _{\mu}\phi \delta \phi
\end{align}$$

take a further variation of the presymplectic potential, we get the presymplectic form

$$\begin{align}
\omega & =\int _{\Sigma}\mathrm{d}^{2}x\sqrt{ \sigma }\tau ^{\mu}\nabla _{\mu}\delta \phi \wedge \delta \phi
\end{align}$$

the general solution of the eom is given by

$$\begin{align}
\phi & =\sum ^{\infty}_{n,\bar{n}=0}\left(a_{n,\bar{n}}\varphi _{n,\bar{n}}(x)+a^{\dagger}_{n,\bar{n}}\varphi _{n,\bar{n}}(x)\right) \\
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
\left\{a^{\dagger}_{m_{1}n_{1}},a_{m_{2}n_{2}}\right\} & =-i\delta _{m_{1}m_{2}}\delta _{n_{1}n_{2}}
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
H_{\xi} & =X_{\xi}\cdot \theta-\int _{\Sigma}\xi \cdot \mathbf{L} \\
 & =\int _{\Sigma}\mathrm{d}^{2}x\sqrt{ \sigma }\tau ^{\mu}\xi ^{\nu}\left( \nabla _{\mu}\phi \nabla _{\nu}\phi-\frac{1}{2}g_{\mu \nu}\nabla _{\rho}\phi \nabla ^{\rho}\phi \right)
\end{align}$$

