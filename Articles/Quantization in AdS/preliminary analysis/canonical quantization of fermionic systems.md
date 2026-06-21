the simpliest example of a fermionic system

$$
\tag{0.1}
\begin{align}
S & =\int \mathrm{d}t\left(\frac{i}{2}\psi ^{\dagger}\dot{\psi}-\frac{i}{2}\dot{\psi}^{\dagger}\psi- V[\psi ^{\dagger},\psi]\right)
\end{align}
$$

---

first we do canonical quantization. canonical momentums

$$
\tag{1.1}
\begin{align}
\pi _{\psi} & = \frac{\delta S}{\delta \dot{\psi}}=\frac{i}{2}\psi ^{\dagger} \\
\pi _{\psi ^{\dagger}} & = \frac{\delta S}{\delta \dot{\psi}^{\dagger}}=-\frac{i}{2}\psi
\end{align}
$$

then we have two primary constraints $\displaystyle{\varphi _{1}=\pi _{\psi}-\frac{i}{2}\psi ^{\dagger}\approx0,\varphi _{2}=\pi _{\psi ^{\dagger}}+\frac{i}{2}\psi \approx 0}$. then we have the Hamiltonian

$$
\tag{1.2}
\begin{align}
H & =\int \mathrm{d}t\left(\pi _{\psi}\dot{\psi}+\dot{\psi}^{\dagger}\pi _{\psi ^{\dagger}}-\mathcal{L}+\lambda_{1} \varphi _{1}+\lambda_{2}\varphi _{2}\right) \\
 & =\int \mathrm{d}t\left(\frac{i}{2}\psi ^{\dagger}\dot{\psi}-\frac{i}{2}\dot{\psi}^{\dagger}\psi-\frac{i}{2}\psi ^{\dagger}\dot{\psi}+\frac{i}{2}\dot{\psi}^{\dagger}\psi+V[\psi ^{\dagger},\psi]+\lambda_{1}\varphi _{1}+\lambda_{2}\varphi_{2}\right) \\
 & =\int \mathrm{d}t\left( V[\psi ^{\dagger},\psi]+\lambda_{1}\left(\pi _{\psi}-\frac{i}{2}\psi ^{\dagger}\right)+\lambda_{2}\left( \pi _{\psi ^{\dagger}}+\frac{i}{2}\psi \right) \right)
\end{align}
$$

for example, we consider the following potential

$$
\tag{1.3}
\begin{align}
V[\psi ^{\dagger},\psi] & =\frac{1}{2}\left\{\psi,\psi ^{\dagger}\right\}
\end{align}
$$

and require the time evolution of $\displaystyle{\varphi _{1},\varphi _{2}}$ to be zero, we have $\displaystyle{\lambda_{1}=\lambda_{2}=0}$, then we have the Hamiltonian

$$
\tag{1.4}
\begin{align}
H & =\int \mathrm{d}t \frac{1}{2}\left\{\psi,\psi ^{\dagger}\right\}
\end{align}
$$

in order to quantize the system, we need to impose the Dirac bracket. we first write the Poisson bracket between $\displaystyle{\varphi _{1}}$ and $\displaystyle{\varphi _{2}}$:

$$
\tag{1.5}
\begin{align}
\left\{\varphi _{1},\varphi _{2}\right\}_{\mathrm{P}} & =\left\{\pi _{\psi}-\frac{i}{2}\psi ^{\dagger}, \pi _{\psi ^{\dagger}}+\frac{i}{2}\psi\right\}_{\mathrm{P}} =-i
\end{align}
$$

then we have the Diract bracket

$$
\tag{1.6}
\begin{align}
\left\{A,B\right\}_{\mathrm{D}}=\left\{A,B\right\}_{\mathrm{P}}-\left\{A,\varphi _{a}\right\}_{\mathrm{P}}(C^{-1})^{ab}\left\{\varphi _{b},B\right\}_{\mathrm{P}}
\end{align}
$$

where $\displaystyle{C_{ab}=\left\{\varphi _{a},\varphi _{b}\right\}_{\mathrm{P}}=\begin{pmatrix}0 & i \\ -i & 0\end{pmatrix}}$, and $\displaystyle{(C^{-1})^{ab}=\begin{pmatrix}0&i \\ -i&0\end{pmatrix}}$. then we have the Dirac bracket between $\displaystyle{\psi}$ and $\displaystyle{\psi ^{\dagger}}$

$$
\tag{1.7}
\begin{align}
\left\{\psi,\psi\right\}_{D} & =\left\{\psi,\psi\right\}_{\mathrm{P}}-\left\{\psi,\varphi _{1}\right\}_{\mathrm{P}}(C^{-1})^{12}\left\{\varphi _{2},\psi\right\}_{\mathrm{P}}-\left\{\psi,\varphi _{2}\right\}_{\mathrm{P}}(C^{-1})^{21}\left\{\varphi _{1},\psi\right\}_{\mathrm{P}} \\
 & \approx0 \\
\left\{\psi ^{\dagger},\psi ^{\dagger}\right\}_{D} & \approx0 \\
\left\{\psi,\psi ^{\dagger}\right\}_{D} & =\left\{\psi,\psi ^{\dagger}\right\}_{\mathrm{P}}-\left\{\psi,\varphi _{1}\right\}_{\mathrm{P}}(C^{-1})^{12}\left\{\varphi _{2},\psi ^{\dagger}\right\}_{\mathrm{P}}-\left\{\psi,\varphi _{2}\right\}_{\mathrm{P}}(C^{-1})^{21}\left\{\varphi _{1},\psi ^{\dagger}\right\}_{\mathrm{P}} \\
 & =-\left\{\psi,\pi _{\psi}-\frac{i}{2}\psi ^{\dagger}\right\}_{\mathrm{P}}i\left\{\pi _{\psi ^{\dagger}}+\frac{i}{2}\psi,\psi ^{\dagger}\right\}_{\mathrm{P}} \\
 & =-i
\end{align}
$$

after canonical quantization,

$$
\tag{.}
\begin{align}
\left\{\psi,\psi\right\} & =\left\{\psi ^{\dagger},\psi ^{\dagger}\right\}=0 \\
\left\{\psi,\psi ^{\dagger}\right\} & =i\left\{\psi,\psi ^{\dagger}\right\}_{\mathrm{D}}=1
\end{align}
$$

the Hilbert space is spanned by the vacuum state $\displaystyle{\ket{0}}$ and the one-particle state $\displaystyle{\psi ^{\dagger}\ket{0}}$, with energy $\displaystyle{E_{0}=0}$ and $\displaystyle{E=\omega}$.

---

then we do canonical quantization in the framework of covariant phase space formalism. we start with the action

$$
\tag{0.1}
\begin{align}
S & =\int \mathrm{d}t\left(\frac{i}{2}\psi ^{\dagger}\dot{\psi}-\frac{i}{2}\dot{\psi}^{\dagger}\psi- \frac{1}{2}\omega\left\{\psi,\psi ^{\dagger}\right\}\right)
\end{align}
$$

make a variation

$$
\tag{2.1}
\begin{align}
\delta S & =\int \mathrm{d}t\left(\frac{i}{2}\delta \psi ^{\dagger}\dot{\psi}+\frac{i}{2}\psi ^{\dagger} \frac{\mathrm{d}}{\mathrm{d}t}\delta \psi-\frac{i}{2} \frac{\mathrm{d}}{\mathrm{d}t}\delta\psi ^{\dagger}\psi-\frac{i}{2}\dot{\psi}^{\dagger}\delta \psi-\omega(\delta \psi ^{\dagger}\psi+\psi ^{\dagger}\delta\psi)\right) \\
 & =\int \mathrm{d}t\left(\delta \psi ^{\dagger}\left(i\dot{\psi}-\omega \psi\right)+(-i\dot{\psi}^{\dagger}-\omega \psi ^{\dagger})\delta \psi+\frac{\mathrm{d}}{\mathrm{d}t}\left(\frac{i}{2}\psi ^{\dagger}\delta \psi-\frac{i}{2}\delta \psi ^{\dagger}\psi\right)\right) \\
 & =\int \mathrm{d}t\left(E_{\psi}\delta \psi+\delta \psi ^{\dagger}E_{\psi ^{\dagger}}\right)+\theta|_{t_{f}-t_{i}} \\
E_{\psi} & =-i\dot{\psi}^{\dagger}-\omega \psi ^{\dagger} \\
E_{\psi ^{\dagger}} & =i\dot{\psi}-\omega \psi \\
\theta & =\frac{i}{2}\psi ^{\dagger}\delta \psi-\frac{i}{2}\delta \psi ^{\dagger}\psi
\end{align}
$$

and the symplectic potential

$$
\tag{2.2}
\begin{align}
\omega=\delta \theta & =i\delta \psi ^{\dagger}\wedge \delta \psi
\end{align}
$$

equation of motion gives

$$
\tag{2.3}
\begin{align}
\psi & =\psi_{0}e^{-i \omega t} \\
\psi ^{\dagger} & =\psi_{0}^{\dagger}e^{i \omega t}
\end{align}
$$

then the symplectic potential becomes

$$
\tag{2.4}
\begin{align}
\omega=i\delta \psi_{0} ^{\dagger}\wedge \delta \psi_{0}
\end{align}
$$

the Hamiltonian flow corresponding to $\displaystyle{\psi}$ and $\displaystyle{\psi ^{\dagger}}$ is given by

$$
\tag{2.5}
\begin{align}
X_{\psi} & =-i\frac{\delta}{\delta \psi _{0}^{\dagger}}e^{-i \omega t} \\
X_{\psi ^{\dagger}} & =i \frac{\delta}{\delta \psi _{0}}e^{i \omega t}
\end{align}
$$

and the Poisson bracket between $\displaystyle{\psi}$ and $\displaystyle{\psi ^{\dagger}}$ is

$$
\tag{2.6}
\begin{align}
\left\{\psi,\psi ^{\dagger}\right\}_{\mathrm{P}} & =X_{\psi}\cdot X_{\psi ^{\dagger}}\cdot \omega \\
 & =i \frac{\delta}{\delta \psi _{0}^{\dagger}}\cdot \frac{\delta}{\delta \psi_{0}}\cdot\delta \psi_{0}^{\dagger}\wedge \delta \psi_{0} \\
 & =-i
\end{align}
$$

after canonical quantization, we have

$$
\tag{2.7}
\begin{align}
\left\{\psi,\psi ^{\dagger}\right\} & =i\left\{\psi,\psi ^{\dagger}\right\}_{\mathrm{P}}=1 \\
\left\{\psi,\psi\right\} & =\left\{\psi ^{\dagger},\psi ^{\dagger}\right\}=0
\end{align}
$$

and

$$
\tag{2.8}
\begin{align}
\left\{\psi(t_{1}),\psi(t_{2})\right\} & =\left\{\psi ^{\dagger}(t_{1}),\psi ^{\dagger}(t_{2})\right\}=0 \\
\left\{\psi(t_{1}),\psi ^{\dagger}(t_{2})\right\} & =e^{i\omega(t_{2}-t_{1})}
\end{align}
$$

finnaly the time-ordered correlation function

$$
\tag{2.9}
\begin{align}
\braket{ \psi(t_{1})\psi ^{\dagger}(t_{2}) }  & = \braket{ 0|\mathcal{T}\psi(t_{1})\psi ^{\dagger}(t_{2})|0 }  \\
 & =\theta(t_{1}-t_{2})\braket{ 0|\psi(t_{1})\psi ^{\dagger}(t_{2})|0 } -(t_{1}\leftrightarrow t_{2}) \\
 & =\theta(t_{1}-t_{2})e^{i \omega(t_{2}-t_{1})}-(t_{1}\leftrightarrow t_{2})
\end{align}
$$

---
introduce supersymmetry, we have

$$
\tag{0.2}
\begin{align}
S=\int \mathrm{d}t\left(\frac{1}{2}\dot{x}^{2}+\frac{i}{2}\psi ^{\dagger}\dot{\psi}-\frac{i}{2}\dot{\psi}^{\dagger}\psi-\frac{1}{2}W'^{2}-\frac{1}{2}W''\left\{\psi,\psi ^{\dagger}\right\}\right)
\end{align}
$$

where $\displaystyle{W[x]}$ is called the superpotential.

$$
\tag{.}
\begin{align}
S=\int \mathrm{d}t\left(\frac{1}{2}\dot{x}^{2}+\frac{i}{2}\psi ^{\dagger}\dot{\psi}-\frac{i}{2}\dot{\psi}^{\dagger}\psi-\frac{1}{2}\omega ^{2}x^{2}-\omega ^{2}\psi ^{\dagger}\psi\right)
\end{align}
$$

---

for a Majorana fermion, we have $\displaystyle{\psi ^{\dagger}=\psi=\chi}$...
