the simpliest example of a fermionic system

$$\tag{0.1}
\begin{align}
S & =\int \mathrm{d}t\left(\frac{i}{2}\psi ^{\dagger}\dot{\psi}-\frac{i}{2}\dot{\psi}^{\dagger}\psi- V[\psi ^{\dagger},\psi]\right)
\end{align}
$$

---

first we do canonical quantization. canonical momentums

$$\tag{1.1}
\begin{align}
\pi _{\psi} & = \frac{\delta S}{\delta \dot{\psi}}=\frac{i}{2}\psi ^{\dagger} \\
\pi _{\psi ^{\dagger}} & = \frac{\delta S}{\delta \dot{\psi}^{\dagger}}=-\frac{i}{2}\psi
\end{align}
$$

then we have two primary constraints $\displaystyle{\varphi _{1}=\pi _{\psi}-\frac{i}{2}\psi ^{\dagger}\approx0,\varphi _{2}=\pi _{\psi ^{\dagger}}+\frac{i}{2}\psi \approx 0}$. then we have the Hamiltonian

$$\tag{1.2}
\begin{align}
H & =\int \mathrm{d}t\left(\pi _{\psi}\dot{\psi}+\dot{\psi}^{\dagger}\pi _{\psi ^{\dagger}}-\mathcal{L}+\lambda_{1} \varphi _{1}+\lambda_{2}\varphi _{2}\right) \\
 & =\int \mathrm{d}t\left(\frac{i}{2}\psi ^{\dagger}\dot{\psi}-\frac{i}{2}\dot{\psi}^{\dagger}\psi-\frac{i}{2}\psi ^{\dagger}\dot{\psi}+\frac{i}{2}\dot{\psi}^{\dagger}\psi+V[\psi ^{\dagger},\psi]+\lambda_{1}\varphi _{1}+\lambda_{2}\varphi_{2}\right) \\
 & =\int \mathrm{d}t\left( V[\psi ^{\dagger},\psi]+\lambda_{1}\left(\pi _{\psi}-\frac{i}{2}\psi ^{\dagger}\right)+\lambda_{2}\left( \pi _{\psi ^{\dagger}}+\frac{i}{2}\psi \right) \right)
\end{align}
$$

for example, we consider the following potential

$$\tag{1.3}
\begin{align}
V[\psi ^{\dagger},\psi] & =\frac{1}{2}\left\{\psi,\psi ^{\dagger}\right\}
\end{align}
$$

and require the time evolution of $\displaystyle{\varphi _{1},\varphi _{2}}$ to be zero, we have $\displaystyle{\lambda_{1}=\lambda_{2}=0}$, then we have the Hamiltonian

$$\tag{1.4}
\begin{align}
H & =\int \mathrm{d}t \frac{1}{2}\left\{\psi,\psi ^{\dagger}\right\}
\end{align}
$$

in order to quantize the system, we need to impose the Dirac bracket. we first write the Poisson bracket between $\displaystyle{\varphi _{1}}$ and $\displaystyle{\varphi _{2}}$:

$$\tag{1.5}
\begin{align}
\left\{\varphi _{1},\varphi _{2}\right\} & =\left\{\pi _{\psi}-\frac{i}{2}\psi ^{\dagger}, \pi _{\psi ^{\dagger}}+\frac{i}{2}\psi\right\} =-i
\end{align}
$$

then we have the Diract bracket

$$\tag{1.6}
\begin{align}
\left\{A,B\right\}_{D}=\left\{A,B\right\}+\left\{A,\varphi _{a}\right\}(C^{-1})^{ab}\left\{\varphi _{b},B\right\}
\end{align}
$$

where $\displaystyle{C_{ab}=\left\{\varphi _{a},\varphi _{b}\right\}=\begin{pmatrix}0 & -i \\ i & 0\end{pmatrix}}$, and $\displaystyle{(C^{-1})^{ab}=\begin{pmatrix}0&i \\ -i&0\end{pmatrix}}$. then we have the Dirac bracket between $\displaystyle{\psi}$ and $\displaystyle{\psi ^{\dagger}}$

$$\tag{1.7}
\begin{align}
\left\{\psi,\psi\right\}_{D} & =\left\{\psi,\psi\right\}+\left\{\psi,\varphi _{1}\right\}(C^{-1})^{12}\left\{\varphi _{2},\psi\right\}+\left\{\psi,\varphi _{2}\right\}(C^{-1})^{21}\left\{\varphi _{1},\psi\right\} \\
 & =
\end{align}
$$

---
introduce supersymmetry, we have

$$\tag{0.2}
\begin{align}
S=\int \mathrm{d}t\left(\frac{1}{2}\dot{x}^{2}+\frac{i}{2}\psi ^{\dagger}\dot{\psi}-\frac{i}{2}\dot{\psi}^{\dagger}\psi-\frac{1}{2}W'^{2}-\frac{1}{2}W''\left\{\psi,\psi ^{\dagger}\right\}\right)
\end{align}
$$

where $\displaystyle{W[x]}$ is called the superpotential. 


$$\tag{.}
\begin{align}
S=\int \mathrm{d}t\left(\frac{1}{2}\dot{x}^{2}+\frac{i}{2}\psi ^{\dagger}\dot{\psi}-\frac{i}{2}\dot{\psi}^{\dagger}\psi-\frac{1}{2}\omega ^{2}x^{2}-\omega ^{2}\psi ^{\dagger}\psi\right)
\end{align}
$$

---

for a Majorana fermion, we have