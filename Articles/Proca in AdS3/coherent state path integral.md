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
\left\{a_{n_{1},\bar{n}_{1}}^{\dagger},a_{n_{2},\bar{n}_{2}}\right\} & =-1
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
J & =H_{\xi_{0}}-H_{\bar{\xi}_{0}} \\
 & =\frac{1}{2}\sum ^{\infty}_{n,\bar{n}=0}(n-\bar{n})\left(a_{n,\bar{n}}a_{n,\bar{n}}^{\dagger}+a^{\dagger}_{n,\bar{n}}a_{n,\bar{n}}\right)
\end{align}$$

finally we lift $\displaystyle{a_{n,\bar{n}}}$ and $\displaystyle{a^{\dagger}_{n,\bar{n}}}$ to operators and the commutation relation is given by

$$\begin{align}
[a_{n_{1},\bar{n}_{1}}^{\dagger},a_{n_{2},\bar{n}_{2}}] & =\delta _{n_{1},n_{2}}\delta _{\bar{n}_{1},\bar{n}_{2}}
\end{align}$$

vaccum state $\displaystyle{\ket{0}}$ is defined as

$$\begin{align}
a_{n,\bar{n}}\ket{0} =0
\end{align}$$

and by iteratively acting $\displaystyle{a^{\dagger}_{n,\bar{n}}}$ on $\displaystyle{\ket{0}}$, we get the excited states $\displaystyle{\prod _{n,\bar{n}=0}^{\infty}\frac{(a^{\dagger}_{n,\bar{n}})^{N_{n,\bar{n}}}}{\sqrt{ N_{n,\bar{n}}! }}\ket{0}}$, and the Hilbert space is then spanned by $\displaystyle{\left\{\prod _{n,\bar{n}=0}^{\infty}\frac{(a^{\dagger}_{n,\bar{n}})^{N_{n,\bar{n}}}}{\sqrt{ N_{n,\bar{n}}! }}\ket{0}\right\}}$.

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
\mathcal{D}^{2}\boldsymbol{z} & =\lim_{ N \to \infty } \prod ^{N-1}_{k=1}\prod ^{\infty}_{n,\bar{n}=0}\frac{\mathrm{d}^{2}z_{k,n,\bar{n}}}{\pi}e^{-i\omega _{n,\bar{n}}T/2} \\
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

and $\displaystyle{z_{n,\bar{n}}}$ satisfies the periodic boundary condition $\displaystyle{z_{n,\bar{n}}(\beta)=z_{n,\bar{n}}(0)}$. we can expand $\displaystyle{z_{n,\bar{n}}}$ in Matsubara modes

$$\begin{align}
z_{n,\bar{n}}(\tau) & =\frac{1}{\sqrt{ \beta }}\sum ^{\infty}_{m=-\infty}z_{n,\bar{n}}(i\omega _{m})e^{-i\omega _{m}\tau} \\
\omega _{m} & =\frac{2\pi m}{\beta}
\end{align}$$

then the Euclidean action becomes

$$\begin{align}
S_{E}[\boldsymbol{z},\boldsymbol{z}^{*}] & =\sum ^{\infty}_{n,\bar{n}=0}\sum ^{\infty}_{m=-\infty}z^{*}_{n,\bar{n}}(i\omega _{m})\left(-i\omega _{m}+\omega _{n,\bar{n}}\right)z_{n,\bar{n}}(i\omega _{m})
\end{align}$$

thus

$$\begin{align}
Z(\beta) & =\int \prod ^{\infty}_{n,\bar{n}=0}\prod ^{\infty}_{m=-\infty}\frac{\mathrm{d}^{2}z_{n,\bar{n}}(i\omega _{m})}{\pi}e^{-\beta \omega _{n,\bar{n}}/2}\exp\left(-\sum ^{\infty}_{n,\bar{n}=0}\sum ^{\infty}_{m=-\infty}z^{*}_{n,\bar{n}}(i\omega _{m})\left(-i\omega _{m}+\omega _{n,\bar{n}}\right)z_{n,\bar{n}}(i\omega _{m})\right) \\
 & =\prod ^{\infty}_{n,\bar{n}=0}e^{-\beta \omega _{n,\bar{n}}/2}\prod ^{\infty}_{m=-\infty}\int \frac{\mathrm{d}^{2}z_{n,\bar{n}}(i\omega _{m})}{\pi}\exp\left(-z^{*}_{n,\bar{n}}(i\omega _{m})\left(-i\omega _{m}+\omega _{n,\bar{n}}\right)z_{n,\bar{n}}(i\omega _{m})\right) \\
 & =\prod ^{\infty}_{n,\bar{n}=0}e^{-\beta \omega _{n,\bar{n}}/2}\prod ^{\infty}_{m=-\infty}\frac{1}{-i\omega _{m}+\omega _{n,\bar{n}}} \\
 & =\prod ^{\infty}_{n,\bar{n}=0}e^{-\beta \omega _{n,\bar{n}}/2}\prod ^{\infty}_{m=1}\frac{1}{(2\pi m/\beta)^{2}+\omega _{n,\bar{n}}^{2}} \\
 & =\prod ^{\infty}_{n,\bar{n}=0} \frac{1}{1-q^{\omega _{n,\bar{n}}}}
\end{align}$$

where $\displaystyle{q=e^{-\beta}}$ ...


您的推导在最后一步不完整。正确的完整计算应该是：

$$Z(\beta) = \prod_{n,\bar{n}=0}^{\infty} e^{-\beta\omega_{n,\bar{n}}/2} \prod_{m=1}^{\infty} \frac{1}{(2\pi m/\beta)^2 + \omega_{n,\bar{n}}^2}$$

使用恒等式 $$\prod_{m=1}^{\infty} \frac{1}{1+(2\pi m/\beta\omega)^2} = \frac{\beta\omega}{2\sinh(\beta\omega/2)}$$，得到：

$$\boxed{Z(\beta) = \prod_{n,\bar{n}=0}^{\infty} \frac{1}{2\sinh(\beta\omega_{n,\bar{n}}/2)}}$$

其中 $$\omega_{n,\bar{n}} = \Delta + n + \bar{n}$$，$$\Delta = 1 + \sqrt{1+\mu^2}$$。

## 物理意义验证

### AdS/CFT 对应检验
在 AdS₃/CFT₂ 对应中，边界 CFT₂ 的配分函数应该匹配：

$$Z_{\text{CFT}}(\beta) = \prod_{n,\bar{n}=0}^{\infty} \frac{1}{1-q^{\Delta+n+\bar{n}}}$$

其中 $$q = e^{-\beta}$$。这确实与您得到的形式一致（当 $$\beta \to 0$$ 时）。

### 高温极限
当 $$\beta \to 0$$ 时：
$$\frac{1}{2\sinh(\beta\omega/2)} \approx \frac{1}{\beta\omega} \approx \frac{1}{1-e^{-\beta\omega}}$$

这恢复了标准的玻色统计形式。

## 技术细节补充

### 正规化问题
您的计算中隐含假设了适当的 [[Zeta Function Regularization]]。对于无穷乘积：
$$\prod_{n,\bar{n}=0}^{\infty} f(n,\bar{n})$$
通常需要引入 UV 截断或使用解析延拓。

### 边界条件
对于 AdS₃ 中的标量场，需要指定边界处的行为。标准选择是 [[Dirichlet Boundary Conditions]]：
$$\lim_{r \to \infty} r^{\Delta-d}\varphi(r,t,\phi) = \phi_0(t,\phi)$$

## 开放问题

1. **[[Holographic Renormalization]]**: 您的计算是否考虑了全息重整化的贡献？
2. **[[Conformal Weight]]**: $$\Delta$$ 的选择是否对应于 unitary 表示？
3. **[[BTZ Black Hole]]**: 如何推广到 BTZ 黑洞背景？

## 总结

您的计算在**技术层面基本正确**，特别是相干态方法的应用很标准。主要需要：
1. 完成最后的乘积计算
2. 讨论物理解释和 AdS/CFT 对应
3. 考虑正规化问题

建议参考：^cite{Witten1998} 关于 AdS₃ 引力的经典工作，以及 ^cite{Maloney2007} 关于 AdS₃ 中标量场的详细分析。