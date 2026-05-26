# problem 4

the Lagrangian of a free massive vector is

$$\begin{align}
\mathcal{L}_{0} & =-\frac{1}{4}F_{\mu \nu}F^{\mu \nu}+\frac{1}{2}(m^{2}-i\varepsilon)A_{\mu}A^{\mu}
\end{align}$$

prove that the generating functional is

$$\begin{align}
Z[J] & =Z[0]\exp\left(-\frac{1}{2}\iint \mathrm{d}^{4}x\mathrm{d}^{4}y J_{\mu}(x)D_{F}^{\mu \nu}(x-y)J_{\nu}(y)\right)
\end{align}$$

## problem

the generating functional is defined as

$$\begin{align}
Z[J] & =\int \mathcal{D}A_{\mu}\exp\left(i\int \mathrm{d}^{4}x\left[-\frac{1}{4}F_{\mu \nu}F^{\mu \nu}+\frac{1}{2}(m^{2}-i\varepsilon)A_{\mu}A^{\mu}+J_{\mu}A^{\mu}\right]\right) \\
 & =\int \mathcal{D}A_{\mu}\exp\left(i \int \mathrm{d}^{4}x\left(\frac{1}{2}A_{\mu}\left(\eta ^{\mu \nu}\partial ^{2}-\partial ^{\mu}\partial ^{\nu}+(m^{2}-i\varepsilon)\eta ^{\mu \nu}\right)A_{\nu}+J_{\mu}A^{\mu}\right)\right) \\
 & =Z[0]\exp\left(-\frac{1}{2}\iint \mathrm{d}^{4}x\mathrm{d}^{4}y J_{\mu}(x)D_{F}^{\mu \nu}(x-y)J_{\nu}(y)\right)
\end{align}$$

where $\displaystyle{D_{F}^{\mu \nu}(x-y)}$ satisfies the following equation:

$$\begin{align}
\left(\eta ^{\mu \nu}\partial ^{2}-\partial ^{\mu}\partial ^{\nu}+(m^{2}-i\varepsilon)\eta ^{\mu \nu}\right)D_{F}^{\nu \rho}(x-y) & =i\delta^{\mu \rho}\delta^{(4)}(x-y)
\end{align}$$

take a Fourier transformation, we have

$$\begin{align}
\left((-k^{2}+m^{2}-i\varepsilon)\eta ^{\mu \nu}+k^{\mu}k^{\nu}\right)\tilde{D}_{F}^{\nu \rho}(k) & =i\delta^{\mu \rho} \\
\implies \tilde{D}_{F}^{\mu \nu}(k) & =\frac{-i}{k^{2}-m^{2}+i\varepsilon}\left(\eta ^{\mu \nu}-\frac{k^{\mu}k^{\nu}}{m^{2}-i\varepsilon}\right) \\
\implies D_{F}^{\mu \nu}(x-y) & =\int \frac{\mathrm{d}^{4}k}{(2\pi)^{4}}\frac{-i}{k^{2}-m^{2}+i\varepsilon}\left(\eta ^{\mu \nu}-\frac{k^{\mu}k^{\nu}}{m^{2}-i\varepsilon}\right)e^{-ik(x-y)}
\end{align}$$

# problem 2

prove that for a real scalar field, the 4-point connected Green function satisfies

$$\begin{align}
G_{c}^{(4)}(x_{1},x_{2},x_{3},x_{4}) & =\int \mathrm{d}^{4}z\mathrm{d}^{4}w\mathrm{d}^{4}v\mathrm{d}^{4}uG_{c}^{(2)}(x_{1},z)G_{c}^{(2)}(x_{2},w)(i\Gamma ^{(4)}(z,w,v,u))G_{c}^{(2)}(v,x_{3})G_{c}^{(2)}(u,x_{4}) \\
 & +\int \mathrm{d}^{4}z\mathrm{d}^{4}w\mathrm{d}^{4}v\mathrm{d}^{4}u\mathrm{d}^{4}s\mathrm{d}^{4}t\left(G_{c}^{(2)}(x_{1},z)G_{c}^{(2)}(x_{2},w)(i\Gamma ^{(3)}(z,w,s))G_{c}^{(2)}(s,t)(i\Gamma ^{(3)}(t,v,u))G_{c}^{(2)}(v,x_{3})G_{c}^{(2)}(u,x_{4})\right. \\
 & +G_{c}^{(2)}(x_{1},z)(i\Gamma ^{(3)}(z,v,s))G_{c}^{(2)}(v,x_{3})G_{c}^{(2)}(s,t)(i\Gamma ^{(3)}(t,w,u))G_{c}^{(2)}(x_{2},w)G_{c}^{(2)}(u,x_{4}) \\
 & \left.+G_{c}^{(2)}(x_{1},z)(i\Gamma ^{(3)}(z,u,s))G_{c}^{(2)}(u,x_{4})G_{c}^{(2)}(s,t)(i\Gamma ^{(3)}(t,w,v))G_{c}^{(2)}(x_{2},w)G_{c}^{(2)}(v,x_{3})\right)
\end{align}$$

## solution

the generating functional of connected Green functions is defined as

$$\begin{align}
W[J] & =-i\ln Z[J]
\end{align}$$

we define the classical field $\displaystyle{\phi _{c}(x)}$ as the 1pt connected Green function as

$$\begin{align}
\phi _{c}(x) & =\frac{\delta W[J]}{\delta J(x)}=G_{c}^{(1)}(x)
\end{align}$$

the 1PI effective action $\displaystyle{\Gamma[\phi _{c}]}$ is given by the Legendre transform of $\displaystyle{W[J]}$

$$\begin{align}
\Gamma[\phi _{c}] & =W[J]-\int \mathrm{d}^{4}xJ(x)\phi _{c}(x)
\end{align}$$

taking the functional variation with respect to $\displaystyle{\phi _{c}(x)}$, we get $\displaystyle{\frac{\delta \Gamma[\phi _{c}]}{\delta \phi _{c}(x)}=-J(x)}$

the $\displaystyle{n}$pt connected Green function is

$$\begin{align}
G_{c}^{(n)}(x_{1},\dots,x_{n}) & =\frac{\delta ^{n} W[J]}{\delta J(x_{1})\cdots \delta J(x_{n})}
\end{align}$$

and the $\displaystyle{n}$pt 1PI vertex function is defined as

$$\begin{align}
\Gamma ^{(n)}(x_{1},\dots,x_{n}) & =\frac{\delta ^{n}\Gamma[\phi _{c}]}{\delta \phi _{c}(x_{1})\cdots \delta \phi _{c}(x_{n})}
\end{align}$$

in particular for 2pt, we have

$$\begin{align}
G_{c}^{(2)}(x,y) & =\frac{\delta ^{2} W[J]}{\delta J(x)\delta J(y)}=\frac{\delta \phi _{c}(x)}{\delta J(y)} \\
\Gamma ^{(2)}(x,y) & =\frac{\delta ^{2}\Gamma[\phi _{c}]}{\delta \phi _{c}(x)\delta \phi _{c}(y)}=-\frac{\delta J(x)}{\delta \phi _{c}(y)} \\
\int \mathrm{d}^{4}z \Gamma ^{(2)}(x,z)G^{(2)}_{c}(z,y) & =-\delta ^{(4)}(x-y)
\end{align}$$

notice that

$$\begin{align}
\frac{\delta}{\delta J(u)}=\int \mathrm{d}^{4}s \frac{\delta \phi _{c}(s)}{\delta J(u)} \frac{\delta}{\delta \phi _{c}(s)}=\int \mathrm{d}^{4}sG_{c}^{(2)}(s,u) \frac{\delta}{\delta \phi _{c}(s)}
\end{align}$$

act this operator on the relation $\int \mathrm{d}^{4}z \Gamma ^{(2)}(x,z)G^{(2)}_{c}(z,y)=-\delta ^{(4)}(x-y)$, we have

$$\begin{align}
 & \int \mathrm{d}^{4}z\left( \frac{\delta \Gamma ^{(2)}(x,z)}{\delta J(w)}G_{c}^{(2)}(z,y)+\Gamma ^{(2)}(x,z) \frac{\delta G_{c}^{(2)}(z,y)}{\delta J(w)}\right)=0 \\
\implies  & \int \mathrm{d}^{4}z\mathrm{d}^{4}sG_{c}^{(2)}(s,w)\Gamma ^{(3)}(x,z,s) G_{c}^{(2)}(z,y)+\int \mathrm{d}^{4}z\Gamma ^{(2)}(x,z)G_{c}^{(3)}(z,y,w)=0
\end{align}$$

multiply by $\displaystyle{G_{c}^{(2)}(v,x)}$ and integrate over $\displaystyle{x}$, we have

$$\begin{align}
G_{c}^{(3)}(v,y,w) & =\int \mathrm{d}^{4}x\mathrm{d}^{4}z\mathrm{d}^{4}s G_{c}^{(2)}(v,x)G_{c}^{(2)}(y,z)G_{c}^{(2)}(w,s)\Gamma ^{(3)}(x,z,s)
\end{align}$$

act $\displaystyle{\frac{\delta}{\delta J(x_{4})}}$ on $G_{c}^{(3)}(x_{1},x_{2},x_{3})$. The derivative can act either on the 1PI three-point vertex or on one of the three external propagators. Hence

$$\begin{align}
G_{c}^{(4)}(x_{1},x_{2},x_{3},x_{4}) & =\int \mathrm{d}^{4}z\mathrm{d}^{4}w\mathrm{d}^{4}v\mathrm{d}^{4}uG_{c}^{(2)}(x_{1},z)G_{c}^{(2)}(x_{2},w)\Gamma ^{(4)}(z,w,v,u)G_{c}^{(2)}(v,x_{3})G_{c}^{(2)}(u,x_{4}) \\
 & +\int \mathrm{d}^{4}z\mathrm{d}^{4}w\mathrm{d}^{4}v\mathrm{d}^{4}u\mathrm{d}^{4}s\mathrm{d}^{4}t\left(G_{c}^{(2)}(x_{1},z)G_{c}^{(2)}(x_{2},w)\Gamma ^{(3)}(z,w,s)G_{c}^{(2)}(s,t)\Gamma ^{(3)}(t,v,u)G_{c}^{(2)}(v,x_{3})G_{c}^{(2)}(u,x_{4})\right. \\
 & +G_{c}^{(2)}(x_{1},z)\Gamma ^{(3)}(z,v,s)G_{c}^{(2)}(v,x_{3})G_{c}^{(2)}(s,t)\Gamma ^{(3)}(t,w,u)G_{c}^{(2)}(x_{2},w)G_{c}^{(2)}(u,x_{4}) \\
 & \left.+G_{c}^{(2)}(x_{1},z)\Gamma ^{(3)}(z,u,s)G_{c}^{(2)}(u,x_{4})G_{c}^{(2)}(s,t)\Gamma ^{(3)}(t,w,v)G_{c}^{(2)}(x_{2},w)G_{c}^{(2)}(v,x_{3})\right).
\end{align}$$

With the diagrammatic convention used in the problem statement, each $\displaystyle{\Gamma ^{(n)}}$ in this last equation is written as $\displaystyle{i\Gamma ^{(n)}}$. We can also get the expansion for higher-point connected Green functions by acting $\displaystyle{\frac{\delta}{\delta J(x)}}$ on lower-point connected Green functions as

$$\begin{align}
G^{(n)}_{c}(x_{1},\dots,x_{n}) & =\int \mathrm{d}^{4}z\mathrm{d}^{4}w\mathrm{d}^{4}v\mathrm{d}^{4}u\cdots \mathrm{d}^{4}s\mathrm{d}^{4}t G_{c}^{(2)}(x_{1},z)G_{c}^{(2)}(x_{2},w)G_{c}^{(2)}(x_{3},v)G_{c}^{(2)}(x_{4},u)\cdots G_{c}^{(2)}(x_{n-1},s)G_{c}^{(2)}(x_{n},t) \\
 & (i\Gamma ^{(n)}(z,w,v,u,\dots,s,t)+\text{all possible contractions of lower-point 1PI vertex functions})
\end{align}$$

# problem 3

prove that the Gaussian integral

$$\begin{align}
\int \mathrm{d}\xi ^{*}\mathrm{d}\xi \exp\left(-\xi ^{*}\cdot A\cdot \xi+\eta ^{*}\cdot \xi+\xi ^{*}\cdot \eta\right) & =\det A\exp\left(\eta ^{*}\cdot A^{-1}\cdot \eta\right)
\end{align}$$

## solution

take a shift of the independent Grassmann variables $\displaystyle{\xi \to \xi + A^{-1}\cdot \eta}$ and $\displaystyle{\xi ^{*}\to \xi ^{*}+\eta ^{*}\cdot A^{-1}}$, we have

$$\begin{align}
\int \mathrm{d}\xi ^{*}\mathrm{d}\xi \exp\left(-\xi ^{*}\cdot A\cdot \xi+\eta ^{*}\cdot \xi+\xi ^{*}\cdot \eta\right) & =\int \mathrm{d}\xi ^{*}\mathrm{d}\xi \exp\left(-(\xi ^{*}+\eta ^{*}\cdot A^{-1})\cdot A\cdot (\xi +A^{-1}\cdot \eta)+\eta ^{*}\cdot (\xi + A^{-1}\cdot \eta)+(\xi ^{*}+\eta ^{*}\cdot A^{-1})\cdot \eta\right) \\
 & =\int \mathrm{d}\xi ^{*}\mathrm{d}\xi \exp\left(-\xi ^{*}\cdot A\cdot \xi+\eta ^{*}\cdot A^{-1}\cdot \eta\right) \\
 & =\det A\exp\left(\eta ^{*}\cdot A^{-1}\cdot \eta\right)
\end{align}$$

thus we have $\displaystyle{\det A=\int \mathrm{d}\xi ^{*}\mathrm{d}\xi \exp\left(-\xi ^{*}\cdot A\cdot \xi\right)}$

# problem 4

consider a Yukawa theory, which Lagrangian is given by

$$\begin{align}
\mathcal{L} & =\mathcal{L}_{\text{Dirac}}+\mathcal{L}_{\text{K. G.}} \\
 & =\bar{\psi}(i\displaystyle{\not} {\partial }-m_{\psi})\psi+\frac{1}{2}\partial ^{\mu}\phi\partial_{\mu}\phi -\frac{1}{2}m_{\phi}^{2}\phi ^{2}-g\bar{\psi}\psi\phi
\end{align}$$

we define its generating functional as

$$\begin{align}
Z[\bar{\eta},\eta,J] & =\int \mathcal{D}\bar{\psi}\mathcal{D}\psi\mathcal{D}\phi \exp\left(i\int \mathrm{d}^{4}x\ (\mathcal{L}+\bar{\eta}\psi+\bar{\psi}\eta+J\phi)\right) .
\end{align}$$

