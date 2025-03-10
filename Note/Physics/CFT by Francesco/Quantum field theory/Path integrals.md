## system with one degree of freedom

suppose we have the Hamiltonian

$$\tag{1.1.1}
\begin{align}
H & =K+V(x),\quad K=\frac{p^{2}}{2m},\quad[x,p]=i
\end{align}
$$

we introduce the time evolution operator $\displaystyle{U(t)}$ which is defined as

$$\tag{1.1.2}
\begin{align}
U(t)=e^{-iHt}
\end{align}
$$

we first calculate the matrix elements of $\displaystyle{U(\delta t)}$ in the basis $\displaystyle{\left\{|x\rangle\right\}}$ of position eigenstates, where $\displaystyle{\delta t}$ is an infinitesimal time interval.

$$\tag{1.1.3}
\begin{align}
\langle x|e^{-i(K+V)\delta t}|x'\rangle & \approx \int \frac{\mathrm{d}p}{2\pi}\langle x|e^{-iK\delta t}|p\rangle\langle p|e^{-iV\delta t}|x'\rangle \\
 & =\int \frac{\mathrm{d}p}{2\pi}\exp\left(-i\left(\frac{p^{2}}{2m}+V(x')\right)\delta t+ip(x-x')\right) \\
 & =\sqrt{ \frac{m}{2\pi i\delta t} }\exp\left(i\delta t\left(\frac{1}{2}m \frac{(x-x')^{2}}{\delta t^{2}}-V(x')\right)\right)
\end{align}
$$

here we use the Baker-Campbell-Hausdorff formula

$$\tag{1.1.4}
\begin{align}
e^{\varepsilon(A+B)}=e^{\varepsilon A}e^{\varepsilon B}e^{O(\varepsilon^{2})}\approx e^{\varepsilon A}e^{\varepsilon B}
\end{align}
$$

we recognize that the factor in the exponential is exactly the action corresponding to the Hamiltonian

$$\tag{1.1.5}
\begin{align}
\langle x|U(\delta t)|x'\rangle & =\sqrt{ \frac{m}{2\pi i\delta t} }e^{iS(x',x;\delta t)}
\end{align}
$$

then we consider $\displaystyle{\langle x|U(t)|x'\rangle}$, which is also called the propagator. we divide the interval of time $\displaystyle{t}$ in $\displaystyle{N}$ sub-intervals $\displaystyle{\frac{t}{N}}$ and insert completeness relations

$$\tag{1.1.6}
\begin{align}
\langle x_{f}|U(t)|x_{i}\rangle & =\lim_{ N \to \infty } \left(\frac{mN}{2\pi it}\right)^{N/2}\int \prod^{N-1}_{j=1}\mathrm{d}x_{j}\langle x_{f}|U(t/N)|x_{N-1}\rangle \\
 & \langle x_{N-1}|U(t/N)|x_{N-2}\rangle\dots \langle x_{i}|U(t/N)|x_{i}\rangle \\
 & =\lim_{ N \to \infty } \left(\frac{mN}{2\pi it}\right)^{N/2}\int \prod^{N-1}_{j=1}\mathrm{d}x_{j}\exp iS \\
 & =\int^{(x_{f},t)}_{(x_{i},0)}\mathcal{D}xe^{iS}
\end{align}
$$

here we introduce the notation 

$$\tag{1.1.7}
\begin{align}
\mathcal{D}x & =\lim_{ N \to \infty } \left( \frac{mN}{2\pi it} \right)^{N/2}\prod^{N-1}_{j=1}\mathrm{d}x_{j} \\
S[x] & =\int \mathrm{d}t\left(\frac{1}{2}m \dot{x}^{2}-V(x)\right)
\end{align}
$$

the propagator may also be used to express the probability amplitude for a state $\displaystyle{|\psi_{i}\rangle}$ to evolve, after a time $\displaystyle{t}$, toward another state $\displaystyle{|\psi_{f}\rangle}$

$$\tag{1.1.8}
\begin{align}
\langle \psi_{f}|U(t_{f}-t_{i})|\psi_{i}\rangle & =\int \mathrm{d}x_{i}\mathrm{d}x_{f}\langle \psi_{f}|x_{f}\rangle\langle x_{f}|U(t_{f}-t_{i})|x_{i}\rangle\langle x_{i}|\psi_{i}\rangle \\
 & =\int \mathrm{d}x_{i}\mathrm{d}x_{f}\psi_{f}^{*}(x_{f})\psi_{i}(x_{i})\langle x_{f}|U(t_{f}-t_{i})|x_{i}\rangle
\end{align}
$$

where $\displaystyle{\psi_{i,f}=\langle x_{i,f}|\psi_{i,f}\rangle}$ is the wave function associated with $\displaystyle{|\psi_{i,f}\rangle}$.

## path integration for quantum fields

the probability amplitude for the transition between bosonic configurations $\displaystyle{\varphi_{i}(x,t_{i})}$ and $\displaystyle{\varphi_{f}(x,t_{f})}$ can be written as

$$\tag{1.2.1}
\begin{align}
\langle\varphi_{f}(x,t_{f})|\varphi_{i}(x,t_{i})\rangle & =\int \mathcal{D}\varphi(x,t)e^{iS[\varphi]}
\end{align}
$$

which is a direct generalization of point particle path integral. for fermions, we need to handle it carefully. we must work in $\displaystyle{\mathcal{V}\otimes \Lambda}$, where $\displaystyle{\mathcal{V}}$ is the Hilbert space and $\displaystyle{\Lambda}$ is the Grassmann algebra, we introduce an overcomplete basis of states $\displaystyle{|\xi \rangle=|\xi_{1},\dots,\xi_{n}\rangle}$ defined by

$$\tag{1.2.2}
\begin{align}
|\xi \rangle & =e^{\psi^{\dagger}T\xi}|0\rangle
\end{align}
$$

where $\displaystyle{\xi_{i}}$ is a complex Grassmann number. these are called **coherent states** (well known in oscillators) and satisfy the following important properties:

$$\tag{1.2.3}
\begin{align}
\psi_{i}|\xi \rangle & =\xi_{i}|\xi \rangle \\
1 & =(\det T)^{-1}\int \mathrm{d}\bar{\xi}\mathrm{d}\xi|\xi \rangle \exp(-\xi ^{\dagger}T\xi)\langle\xi| \\
\langle\xi|\xi'\rangle & =\exp(-\xi ^{\dagger}T\xi)
\end{align}
$$

given any state $\displaystyle{|\Psi\rangle}$, we define its wave function as $\displaystyle{\Psi(\xi)=\langle\xi|\Psi\rangle}$. the time evolution of this wave function is then given by

$$\tag{1.2.4}
\begin{align}
\Psi(\xi,t) & =\langle\xi|e^{-iHt}|\Psi\rangle \\
 & =(\det T)^{-1}\int \mathrm{d}\bar{\xi}'\mathrm{d}\xi'\langle\xi|e^{-iHt}|\xi'\rangle \exp(-\xi'^{\dagger}T\xi')\langle\xi'|\Psi\rangle \\
 & =\int \mathrm{d}\bar{\xi}'\mathrm{d}\xi'K(t,\xi,\xi')\Psi(\xi',0)
\end{align}
$$

where we have defined the propagator

$$\tag{1.2.5}
\begin{align}
K(t,\xi,\xi') & =(\det T)^{-1}\langle\xi|e^{-iHt}|\xi'\rangle \exp(-\xi'^{\dagger}T\xi')
\end{align}
$$

which is the kernel of the evolution operator for wave functions.

$$\tag{1.2.6}
\begin{align}
\langle\xi|e^{-iV\delta t}|\xi'\rangle & \approx\langle\xi|(1-i\delta t V(\psi ^{\dagger},\psi))|\xi'\rangle \\
 & =(1-i\delta tV(\bar{\xi},\xi'))\langle\xi|\xi'\rangle \\
 & \approx e^{-i\delta tV(\bar{\xi},\xi')}e^{-\xi ^{\dagger}T\xi'} \\
K(\delta,\xi,\xi') & =(\det T)^{-1}\langle\xi|e^{-H\delta t}|\xi'\rangle \exp(-\xi'^{\dagger}T\xi') \\
 & =(\det T)^{-1}\exp\left(-\xi ^{\dagger}T\xi'-\xi'^{\dagger}T\xi'-i\delta tV(\bar{\xi},\xi')\right) \\
 & =(\det T)^{-1}\exp\left(i\delta t\left(-\frac{i(\xi-\xi')^{\dagger}}{\delta t}T\xi'-V(\bar{\xi},\xi')\right)\right) \\
 & =(\det T)^{-1}\exp iS(\bar{\xi},\xi;\delta t)
\end{align}
$$

where $\displaystyle{S(\bar{\xi},\xi;\delta t)}$ is the infinitesimal action for a trajectory in the classical Grassmann configuration space going from $\displaystyle{\xi}$ to $\displaystyle{\xi'}$ in a time $\displaystyle{\delta t}$. as the time slices $\displaystyle{\delta t}$ and the lattice spacing go to zero, the path integration measure is written as

$$\tag{1.2.7}
\begin{align}
(\det T)^{-1}\prod_{i}\mathrm{d}\bar{\xi}\mathrm{d}\xi\to \mathcal{D}\bar{\xi}\mathcal{D}\xi
\end{align}
$$

then fermionic transition amplitude between the classical field configurations $\displaystyle{\psi_{i}(x,t_{i})}$ and $\displaystyle{\psi_{f}(x,t_{f})}$ is then written as

$$\tag{1.2.8}
\begin{align}
\langle \psi_{f}(x,t_{f})|\psi_{i}(x,t_{i})\rangle & =\int \mathcal{D}\bar{\psi}\mathcal{D}\psi e^{iS[\bar{\psi},\psi]}
\end{align}
$$