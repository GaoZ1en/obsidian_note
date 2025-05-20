reference: Gedanken experiments to destroy a black hole. II. Kerr-Newman black holes cannot be overcharged or overspun

---

for simplicity, we drop terms supporting on the space boundary $\displaystyle{\Gamma}$ (including $\displaystyle{\partial \Sigma}$). 

$$\tag{1.1}
\begin{align}
\delta \mathbf{L}[\phi] & =\mathbf{E}[\phi]\delta \phi+\mathrm{d}\Theta[\phi,\delta \phi]
\end{align}
$$

here $\displaystyle{\phi=\left(\psi,g_{\mu \nu}\right)}$. the symplectic form is

$$\tag{1.2}
\begin{align}
\omega & =\int _{\Sigma}\delta \Theta
\end{align}
$$

which satisfies

$$\tag{1.3}
\begin{align}
\mathrm{d}\omega=0
\end{align}
$$

consider the following symmetry vector

$$\tag{1.4}
\begin{align}
X_{\xi} & =\int \varepsilon\mathcal{L}_{\xi}\phi \frac{\delta}{\delta \phi}
\end{align}
$$

act on the Lagrangian

$$\tag{1.5}
\begin{align}
X_{\xi}\cdot \delta \mathbf{L}=\mathrm{d}(\xi \cdot \mathbf{L})
\end{align}
$$

(here we assume that the Lagrangian $\displaystyle{L}$ is covariant) then we have the Noether charge

$$\tag{1.6}
\begin{align}
H_{\xi} & =\int _{\Sigma}(X_{\xi}\cdot \Theta-\xi \cdot \mathbf{L})
\end{align}
$$

we have the Noether theorem

$$\tag{1.7}
\begin{align}
\delta H_{\xi} & =-X_{\xi}\cdot \omega
\end{align}
$$

on the other hand

$$\tag{1.8}
\begin{align}
\delta H_{\xi} & =\int _{\Sigma}\delta(X_{\xi}\cdot \Theta-\xi \cdot \mathbf{L}) \\
  & =\int _{\Sigma}(\delta (X_{\xi}\cdot \Theta)-\xi \cdot \delta \mathbf{L}) \\
 & =\int _{\Sigma}(\delta(X_{\xi}\cdot \Theta)-(\xi \cdot\mathbf{E})\delta \phi-\xi \cdot \mathrm{d}\Theta) \\
 & =\int _{\Sigma}\left(-(\xi \cdot \mathbf{E})\delta \phi+\mathcal{L}_{X_{\xi}}\Theta-X_{\xi}\cdot \delta\Theta-\xi \cdot \mathrm{d}\Theta\right) \\
 & =\int _{\Sigma}\left(-(\xi \cdot \mathbf{E})\delta \phi-X_{\xi}\cdot \delta \Theta+\mathcal{L}_{\xi}\Theta-\xi \cdot \mathrm{d}\Theta\right) \\
 & =\int _{\Sigma}\left(-(\xi \cdot \mathbf{E})\delta \phi-X_{\xi}\cdot \delta \Theta+\mathrm{d}(\xi \cdot \Theta)\right) \\
 & =-X_{\xi}\cdot \omega-\int _{\Sigma}(\xi \cdot \mathbf{E})\delta \phi
\end{align}
$$

here we use

$$\tag{1.9}
\begin{align}
\mathcal{L}_{X_{\xi}}\Theta = \mathcal{L}_{\xi}\Theta+X_{\delta \xi}\cdot \Theta
\end{align}
$$

and assume that $\displaystyle{\xi}$ does not depend on $\displaystyle{\phi}$. then pull back to the pre-phase space $\displaystyle{\tilde{\mathcal{P}}}$, we return to (1.7). we can veryfy that

$$\tag{1.10}
\begin{align}
H_{\xi} & =\int _{\Sigma}(X_{\xi}\cdot \Theta-\xi \cdot \mathbf{L}) \\
 & =\int _{\Sigma}(\mathrm{d}Q_{\xi}+\tilde{\mathbf{C}}_{\xi})
\end{align}
$$

where $\displaystyle{\tilde{\mathbf{C}}}$s are the constraints of the theory (and at least for $\displaystyle{\mathrm{AdS}_{3}}$, $\displaystyle{\tilde{\mathbf{C}_{\xi}}}$ is proportional to $\displaystyle{\mathbf{E}}$). make a variation on (1.10) and then compare it to (1.8), we have

$$\tag{1.11}
\begin{align}
\int _{\Sigma}(\mathrm{d}\delta Q_{\xi}+\delta \tilde{\mathbf{C}}_{\xi}) & =\int _{\Sigma}(-X_{\xi}\cdot \delta\Theta-(\xi \cdot \mathbf{E})\delta \phi+\mathrm{d}(\xi \cdot \Theta)) \\
\implies \int _{\Sigma}\mathrm{d}(\delta Q_{\xi}-\xi \cdot \Theta) & =\int _{\Sigma}(-X_{\xi}\cdot \delta \Theta-\delta \tilde{\mathbf{C}}_{\xi}-(\xi \cdot \mathbf{E})\delta \phi)
\end{align}
$$

then pull back to the pre-phase space $\displaystyle{\tilde{\mathcal{P}}}$, we have

$$\tag{1.12}
\begin{align}
\delta H_{\xi}|_{\tilde{\mathcal{P}}} & =\int _{\partial \Sigma}(\delta Q_{\xi}-\xi \cdot \Theta)
\end{align}
$$

if we choose $\displaystyle{\xi ^{a}=t^{a}+\Omega _{H}\varphi ^{a}}$ as the horizon Killing vector, where $\displaystyle{t^{a}}$ is the timelike Killing field, $\displaystyle{\varphi ^{a}}$ is the axial Killing field, and $\displaystyle{\Omega _{H}}$ is the angular velocity of the horizon.

---

A horizon Killing field is a special Killing vector field in the context of black hole spacetimes that:
1. Becomes null exactly at the event horizon
2. Is tangent to the null generators of the horizon
3. Represents the symmetry associated with the horizon geometry

---

