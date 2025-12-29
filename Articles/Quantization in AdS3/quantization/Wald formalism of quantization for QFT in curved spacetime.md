# quantum mechanics

consider a system with action

$$\tag{1.1}
\begin{align}
S & =\int _{t_{i}}^{t_{f}}L[q(t)]\mathrm{d}t
\end{align}
$$

take a variation, we have eom and symplectic potential

$$\tag{1.2}
\begin{align}
\delta S & =\int ^{t_{f}}_{t_{i}}E\delta q\mathrm{d}t+\theta|^{t_{f}}_{t_{i}} \\
E & =\frac{\delta L}{\delta q}-\frac{\mathrm{d}}{\mathrm{d}t} \frac{\delta L}{\delta \dot{q}} \\
\theta & =\frac{\delta L}{\delta\dot{q}}\delta q
\end{align}
$$

the symplectic form is obtained by taking a variation of the symplectic potential

$$\tag{1.3}
\begin{align}
\omega & =\delta \theta \\
 & =\delta\left( \frac{\delta L}{\delta \dot{q}} \right)\wedge \delta q
\end{align}
$$

suppose $\displaystyle{q(t)=q[a,a^{\dagger}]}$ solves the complexified eom and the symplectic form can be written as

$$\tag{1.4}
\begin{align}
\omega & =i\delta a^{\dagger}\wedge \delta a
\end{align}
$$

suppose $\displaystyle{\frac{\partial}{\partial \tau}}$ generates a symmetry of the action, i.e., there is a vector field $\displaystyle{X_{\tau}}$ corresponding to $\displaystyle{\frac{\partial}{\partial \tau}}$

$$\tag{1.5}
\begin{align}
X_{\tau} & =\int \mathrm{d}\tau \delta _{\tau}q \frac{\delta}{\delta q}
\end{align}
$$

and satisfies

$$\tag{1.6}
\begin{align}
X_{\tau}\cdot S & =\alpha _{\tau}|_{t_{f}-t_{i}}
\end{align}
$$

then the Noether charge (we call it a Hamiltonian if $\displaystyle{\frac{\partial}{\partial \tau}}$ is the time translation generator) corresponding to $\displaystyle{\frac{\partial}{\partial \tau}}$ is given by

$$\tag{1.7}
\begin{align}
H_{\tau} & =X_{\tau}\cdot \theta-\alpha _{\tau}
\end{align}
$$

for an operator $\displaystyle{\mathcal{O}[q]}$, the corresponding Hamiltonian flow under the coordinates $\displaystyle{(a,a^{\dagger})}$ is given by

$$\tag{1.8}
\begin{align}
X_{\mathcal{O}} & =-i\int \mathrm{d}\tau\left(\frac{\delta \mathcal{O}}{\delta a^{\dagger}} \frac{\delta}{\delta a}-\frac{\delta \mathcal{O}}{\delta a} \frac{\delta}{\delta a^{\dagger}}\right)
\end{align}
$$

then the Poisson bracket between $\displaystyle{\mathcal{O}_{1}}$ and $\displaystyle{\mathcal{O}_{2}}$ is defined as

$$\tag{1.9}
\begin{align}
\left\{\mathcal{O}_{1},\mathcal{O}_{2}\right\} & =X_{\mathcal{O}_{1}}\cdot X_{\mathcal{O}_{2}}\cdot \omega
\end{align}
$$

in particular, we have

$$\tag{1.10}
\begin{align}
\left\{a,a^{\dagger}\right\} & =-i
\end{align}
$$

now we will turn to quantum side. the quantum commutator is obtained by simply adding an $\displaystyle{i}$ to the Poisson bracket

$$\tag{1.11}
\begin{align}
[\mathcal{O}_{1},\mathcal{O}_{2}] & =i\left\{\mathcal{O}_{1},\mathcal{O}_{2}\right\} \\
 & =iX_{\mathcal{O}_{1}}\cdot X_{\mathcal{O}_{2}}\cdot \omega
\end{align}
$$

define

$$\tag{1.12}
\begin{align}
W_{\mathcal{O}} & =\exp\left(iX_{\mathcal{O}}\right)
\end{align}
$$

then (1.11) can be rewritten by BCH formula as

$$\tag{1.13}
\begin{align}
W_{\mathcal{O}_{1}}W_{\mathcal{O}_{2}} & =\exp\left(iX_{\mathcal{O}_{1}}\right)\exp\left(iX_{\mathcal{O}_{2}}\right) \\
 & = \exp\left( iX_{\mathcal{O}_{1}} + iX_{\mathcal{O}_{2}} - \frac{i}{2}\left\{\mathcal{O}_{1},\mathcal{O}_{2}\right\} + \frac{i^4}{12}\left([\mathcal{O}_{1},[\mathcal{O}_{1},\mathcal{O}_{2}]] + [\mathcal{O}_{2},[\mathcal{O}_{2},\mathcal{O}_{1}]]\right) + \ldots  \right)
\end{align}
$$

then we will consider $\displaystyle{\mathcal{P}^{\mathbb{C}}}$, the complexified covariant phase space $\displaystyle{\mathcal{P}}$. then the Poisson bracket naturally gives a map $\displaystyle{(\cdot,\cdot):\mathcal{P}^{\mathbb{C}}\times \mathcal{P}^{\mathbb{C}}\to \mathbb{C}}$ defined by

$$\tag{Klein-Gordon inner product}
\begin{align}
\left(\phi_{1},\phi_{2}\right) & =i\{\bar{\phi}_{1},\phi _{2}\}
\end{align}
$$

$\displaystyle{\left(\cdot,\cdot\right)}$ satisfies all the properties of an inner product on $\displaystyle{\mathcal{P}^{\mathbb{C}}}$, except that it fails to be positive definite. let $\displaystyle{\mathcal{H}}$ be the subspace only the positive frequency modes are included, it is easy to verify that $\displaystyle{\left(\cdot,\cdot\right)}$ is positive definite on $\displaystyle{\mathcal{H}}$, thus $\displaystyle{\mathcal{H}}$ is a Hilbert space.

let $\displaystyle{\mathcal{\bar{H}}}$ denote the complex conjugate space of $\displaystyle{\mathcal{H}}$, i.e., the subspace of $\displaystyle{\mathcal{P}^{\mathbb{C}}}$ that only the negative frequency modes are included. it follows that every $\displaystyle{\phi \in \mathcal{P}^{\mathbb{C}}}$ can be expressed as $\displaystyle{\phi=\phi ^{+}+\phi ^{-}}$, with $\displaystyle{\phi ^{+}\in \mathcal{H}}$ and $\displaystyle{\phi ^{-}\in \mathcal{H}^{-}}$. this fact allows us to project any $\displaystyle{\phi \in \mathcal{P}^{\mathbb{C}}}$ onto $\displaystyle{\mathcal{H}}$. the projection operator $\displaystyle{K}$ is defined by extracting the positive frequency modes from $\displaystyle{\phi}$. $\displaystyle{K}$ is actually a bijective. 

$$\tag{1.14}
\begin{align}
X_{\phi} & =-i\int \mathrm{d}\tau\left(\frac{\delta \phi}{\delta a^{\dagger}} \frac{\delta}{\delta a}-\frac{\delta \phi}{\delta a} \frac{\delta}{\delta a^{\dagger}}\right)
\end{align}
$$

---

I can't understand the importance of $\displaystyle{\mu}$... 

