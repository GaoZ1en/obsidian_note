## system with one degree of freedom

for a point particle, the $\displaystyle{n}$-point correlation function is defined as

$$\tag{1.3.1}
\begin{align}
\langle x(t_{1})x(t_{2})\dots x(t_{n})\rangle & =\langle_{0}|\mathcal{T}(x(t_{1})x(t_{2})\dots x(t_{n}))|0\rangle
\end{align}
$$

where $\displaystyle{|0\rangle}$ is the ground state and $\displaystyle{\mathcal{T}}$ is the time ordering operator, which sorts the factors that follow in chronological order from right to left

$$\tag{1.3.2}
\begin{align}
\mathcal{T}(x(t_{1})\dots x(t_{n})) & =x(t_{1})\dots x(t_{n}),\qquad \text{if }t_{1}>t_{2}>\dots>t_{n}
\end{align}
$$

correlation functions can be calculated by path integration as follows (due to Gell-Mann-Low theorem or some Heisenberg picture argument)

$$\tag{1.3.3}
\begin{align}
\langle x(t_{1})\dots x(t_{n})\rangle & =\lim_{ \varepsilon \to 0 } \frac{\displaystyle{\int \mathcal{D}x x(t_{1})\dots x(t_{n})e^{iS_{\varepsilon}[x(t)]}}}{\displaystyle{\int \mathcal{D}x e^{iS_{\varepsilon}[x(t)]}}}
\end{align}
$$

where $\displaystyle{S_{\varepsilon}}$ is the action obtained by replacing $\displaystyle{t}$ by $\displaystyle{t-i\varepsilon}$ and where the functional integral is taken with bounds at $\displaystyle{t\to \pm \infty}$

let us consider a general ratio of the type

$$\tag{1.3.4}
\begin{align}
\frac{\langle0|\mathcal{O}_{1}|0\rangle}{\langle0|\mathcal{O}_{2}|0\rangle} & =\lim_{ T_{i},T_{f} \to \infty } \frac{\langle \psi_{f}|e^{-iT_{f}H(1-i\varepsilon)}\mathcal{O}_{1}e^{-iT_{i}H(1-i\varepsilon)}|\psi_{i}\rangle}{\langle \psi_{f}|e^{-iT_{f}H(1-i\varepsilon)}\mathcal{O}_{2}e^{-iT_{1}H(1-i\varepsilon)}|\psi_{i}\rangle}
\end{align}
$$

suppose $\displaystyle{|n\rangle}$ is the energy eigenstate with energy $\displaystyle{E_{n}}$, we have

$$\tag{1.3.5}
\begin{align}
e^{-iT_{i}H(1-i\varepsilon)}|\psi_{i}\rangle & =\sum_{n}e^{-iT_{i}H(1-i\varepsilon)}|n\rangle\langle n|\psi_{i}\rangle \\
 & =\sum_{n}e^{-iT_{i}E_{n}(1-i\varepsilon)}|n\rangle\langle n|\psi_{i}\rangle \\
 & \to e^{-iT_{i}E_{0}(1-i\varepsilon)}|0\rangle\langle0|\psi_{i}\rangle, \text{if }\varepsilon\to0, T_{i}\to \infty
\end{align}
$$

this strictly holds only if the vacuum is nondegenerate and if there is an energy gap between the vacuum and the first excited state. then RHS the correlation function becomes

$$\tag{1.3.6}
\begin{align}
\lim_{ T_{i},T_{f} \to \infty,\varepsilon\to0 } \frac{\langle \psi_{f}|e^{-iHT_{f}(1-i\varepsilon)}xe^{-iH(t_1-t_{2})(1-i\varepsilon)}x\dots xe^{-iHT_{i}(1-i\varepsilon)}|\psi_{i}\rangle}{\langle \psi_{f}|e^{-iH(T_{f}+T_{i}+t_{1}-t_{n})(1-i\varepsilon)}|\psi_{i}\rangle} 
\end{align}
$$

by inserting completeness relations, we have

$$\tag{1.3.7}
\begin{align}
\int^{x_{f}}_{x_{i}}\mathcal{D}x\psi_{f}^{*}\psi_{i}x(t_{1})\dots x(t_{n})e^{iS_{\varepsilon}[x]}
\end{align}
$$

since the wave function $\displaystyle{\psi_{f}(x_{f})}$ and $\displaystyle{\psi_{i}(x_{i})}$ are arbitrary, one may choose $\displaystyle{\psi_{i}(x_{i})=\psi_{f}(x_{f})=1}$, which concludes (1.3.3)

## the Euclidean formalism

with the assumption that the correlation functions can be analytically continued from imaginary time to real time, we have the Euclidean formalism. (1.3.3) for the correlation functions then becomes

$$\tag{1.3.8}
\begin{align}
\langle x(t_{1})\dots x(t_{n})\rangle & = \frac{\displaystyle{\int \mathcal{D}x x(\tau_{1})\dots x(\tau_{n})e^{-S_{E}[x(\tau)]}}}{\displaystyle{\int \mathcal{D}x e^{-S_{E}[x(\tau)]}}}
\end{align}
$$

where $\displaystyle{S_{E}}$ is the Euclidean action

$$\tag{1.3.9}
\begin{align}
iS_{E}[x(\tau)]=S[x(t\to-i\tau)]
\end{align}
$$

and the Euclidean action is the integral over imaginary time of the Euclidean Lagrangian $\displaystyle{L_{E}}$

$$\tag{1.3.10}
\begin{align}
L_{E}[x(\tau)] & =-L[x(t\to-i\tau)]
\end{align}
$$

Unless indicated, we shall from now on work within the Euclidean formalism, and we will drop the subscript $\displaystyle{E}$ and replace $\displaystyle{\tau}$ with $\displaystyle{t}$. 