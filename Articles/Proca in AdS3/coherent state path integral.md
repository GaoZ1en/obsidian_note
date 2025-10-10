we start from a harmonic ocsillator.

$$\begin{align}
S & =\int ^{t_{f}}_{t_{i}}\left(\frac{1}{2}\dot{x}^{2}-\frac{1}{2}\omega ^{2}x^{2}\right)
\end{align}$$

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

the Hilbert space is then spanned by $\displaystyle{\{\ket{n}\}}$. now we want to transfer to coherent state representation. we define the coherent state $\displaystyle{\ket{z}}$ as the eigenstate of $\displaystyle{a}$

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
 & =\lim_{ N \to 0 } \int \prod ^{N-1}_{k=1}\frac{\mathrm{d}^{2}z_{k}}{\pi}e^{-i\omega T/2}\exp\left(\sum ^{N-1}_{n=0}\left(-\frac{1}{2}|z_{n+1}-z_{n}|^{2}+\frac{1}{2}(z^{*}_{n+1}z_{n}-z_{n}^{*}z_{n+1})-i\omega \Delta Tz_{n+1}^{*}z_{n}\right)\right)
\end{align}$$

$$\tag{.}\begin{align}

\end{align}$$