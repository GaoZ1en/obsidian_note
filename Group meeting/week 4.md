# Anomaly by Weizhen Jia

ways to 理解 anomaly
1. violation of conservation law. continuous symmetry
2. obstruction to gauging. global symmetry
3. projective representation. seems most important.
4. TQFT in d+1 dimension (anomaly inflow)

### chiral anomaly in 2d (ABJ anomaly)

Dirac fermion 

$$\tag{1.1}
\begin{align}
\mathcal{L} & =i\bar{\psi}\gamma^{\mu}\partial_{\mu}\psi
\end{align}
$$

with Clifford algebra

$$\tag{1.2}
\begin{align}
\left\{\gamma^{\mu},\gamma^{\nu}\right\} & =2\eta^{\mu \nu} \\ \\
\gamma_{5}=\gamma ^{\dagger}_{5} & ,\gamma_{5}^{2}=1 \\
\left\{\gamma_{5},\gamma^{\mu}\right\} & =0
\end{align}
$$

define chiral operator $\displaystyle{P_{\pm}=\frac{1\pm \gamma_{5}}{2}}$, we have $\displaystyle{P_{\pm}\psi=\psi_{L/R}}$, then

$$\tag{1.3}
\begin{align}
\mathcal{L} & =i\bar{\psi}\gamma^{\mu}\partial_{\mu}\psi \\
 & =i\bar{\psi}_{L}\gamma^{\mu}\partial_{\mu}\psi_{L}+i\bar{\psi}_{R}\gamma^{\mu}\partial_{\mu}\psi_{R}
\end{align}
$$

we have two $\displaystyle{\mathrm{U}(1)}$ symmetries

$$\tag{1.4}
\begin{align}
\mathrm{U}(1)_{L}:\psi_{L}\to e^{i\alpha}\psi_{L} \\
\mathrm{U}(1)_{R}:\psi_{R}\to e^{i\beta}\psi_{R} \\
\end{align}
$$

or after mixed we have

$$\tag{1.5}
\begin{align}
\mathrm{U}(1)_{V}:\psi_{L}\to e^{i\alpha}\psi_{L},\psi_{R}\to e^{i\alpha}\psi_{R} \\
\mathrm{U}(1)_{R}:\psi_{L}\to e^{i\alpha}\psi_{L},\psi_{R}\to e^{-i\alpha}\psi_{R} \\
\end{align}
$$

the corresponding current are

$$\tag{1.6}
\begin{align}
J_{V}^{\mu} & =\bar{\psi}\gamma^{\mu}\psi \\
J_{A}^{\mu} & =\bar{\psi}\gamma^{\mu}\gamma^{5}\psi
\end{align}
$$

classically we have Noether theorem $\displaystyle{\partial_{\mu}J^{\mu}_{V/A}=0}$

here is a trick that introduce a background field $\displaystyle{A_{\mu}}$(gauging global symmetry)

$$\tag{1.7}
\begin{align}
\mathcal{L} & =i\bar{\psi}\gamma^{\mu}D_{\mu}\psi=\mathcal{L}_{0}+A^{\mu}J_{\mu}
\end{align}
$$

quantum the Noether theorem becomes Ward identity

$$\tag{1.8}
\begin{align}
\partial_{\mu}\langle J^{\mu}_{V}\rangle & =0 \\
\partial_{\mu}\langle J^{\mu}_{A}\rangle & =\frac{e}{\pi}\varepsilon^{\mu \nu}F_{\mu \nu}
\end{align}
$$

(up to coefficients) violation of classical conservation law.

methods (see the big anomaly book)
1. 1-loop diagram
2. point splitting
3. Fujikawa method

### t'Hooft anomaly

action $\displaystyle{S}$ is invariant under $\displaystyle{G}$. turn on background field for $\displaystyle{G}$

$$\tag{1.9}
\begin{align}
Z[A]=\int \mathcal{D}\phi e^{iS[\phi]+i \int A^{\mu}J_{\mu}}
\end{align}
$$

after gauge transformation $\displaystyle{A'=A+\mathrm{d}\Lambda}$

$$\tag{1.10}
\begin{align}
Z[A']=Z[A]e^{i \int \mathrm{d}^{d}x\omega(\Lambda,A)}
\end{align}
$$

where $\displaystyle{\omega}$ is the anomaly density.

adjust $\displaystyle{Z[A]}$ by some local counter term to $\displaystyle{Z[A]e^{i \int \mathrm{d}^{d}xf(x)}}$. if the anomaly density $\displaystyle{\omega}$ cannot be canceled by local counter term $\displaystyle{f(x)}$, then there is a t'Hooft anomaly.

classified by cohomology...?

### bosonic anomaly in 2d

Lattinger liquid

$$\tag{1.11}
\begin{align}
\mathcal{L} & =\frac{1}{2\pi}\partial_{t}\phi \partial_{x}\theta-\frac{1}{4\pi}\left( \frac{1}{R^{2}}(\partial_{x}\theta)^{2}+R^{2}(\partial_{x}\phi)^{2} \right) \\
\phi & \sim \phi+2\pi,\theta\sim \theta+2\pi
\end{align}
$$

integrate $\displaystyle{\theta}$(somehow write $\displaystyle{\theta}$ in terms of $\displaystyle{\phi}$ via equation of motions, and then insert into the origin Lagrangian), we have the $\displaystyle{c=1}$ periodic boson

$$\tag{1.12}
\begin{align}
\mathcal{L} & =\frac{R^{2}}{4\pi}\partial_{\mu}\phi \partial^{\mu}\phi
\end{align}
$$

integrate $\displaystyle{\phi}$, we have another the $\displaystyle{c=1}$ periodic boson

$$\tag{1.13}
\begin{align}
\mathcal{L}=\frac{1}{4\pi R^{2}}\partial_{\mu}\theta \partial^{\mu}\theta
\end{align}
$$

these two theory have a T-duality

symmetry (see some bosonic string)

$$\tag{1.14}
\begin{align}
\mathrm{U(1)}\text{ momentum}: & \phi\to \phi+\alpha \\
\mathrm{U(1)}\text{ winding}: & \theta\to \theta+\alpha \\
\end{align}
$$

these two symmetry change into the other under T-duality. the corresponding current in (1.12) theory are

$$\tag{1.15}
\begin{align}
J^{\mu}_{m} & =\frac{R^{2}}{2\pi}\partial^{\mu}\phi \\
J^{\mu}_{w} & =\frac{i}{2\pi}\varepsilon^{\mu \nu}\partial_{\nu}\phi
\end{align}
$$

introduce background symmetry

$$\tag{1.16}
\begin{align}
S[A^{m},A^{w}] & =\int \mathrm{d}^{2}x\left(\frac{R^{2}}{2\pi}(\partial_{\mu}\phi+A_{\mu}^{m})^{2}+\frac{i}{2\pi}\varepsilon^{\mu \nu}(\partial_{\mu}\phi+A^{m}_{\mu})A^{w}_{\nu}\right)
\end{align}
$$

with gauge transformation

$$\tag{1.17}
\begin{align}
\mathrm{U}(1)_{m}:\phi\to \phi+\alpha,A^{m}_{\mu}\to A^{m}_{\mu}-\partial_{\mu}\alpha \\
\mathrm{U}(1)_{w}:A^{w}_{\mu}\to A^{w}_{\mu}+\partial_{\mu}\beta
\end{align}
$$

### bosonization

one way to connect chiral anomaly and bosonic anomaly

in Lattinger liquid model, when $\displaystyle{R=\frac{1}{\sqrt{2}}}$, we have the dictionary

$$\tag{1.18}
\begin{align}
\psi_{R} & \leftrightarrow \frac{1}{\sqrt{ 2\pi }}e^{i\phi_{R}} \\
\psi_{L} & \leftrightarrow \frac{1}{\sqrt{ 2\pi }}e^{i\phi_{L}} \\
\bar{\psi}\psi & \leftrightarrow \frac{1}{2\pi}(:e^{-i\phi}+e^{i\phi}:) \\
\bar{\psi}\gamma_{5\psi} & \leftrightarrow \frac{i}{\pi}\sin \phi \\
J^{\mu}_{V} & \leftrightarrow -\frac{1}{2\pi}\varepsilon^{\mu \nu}\partial_{\mu}\phi=-J^{\mu}_{w} \\
J^{\mu}_{A} & \leftrightarrow -\frac{1}{2\pi}\partial_{\mu}\phi=-J^{\mu}_{m}
\end{align}
$$

where $\displaystyle{\phi(t,x)=\phi_{L}(t-x)+\phi_{R}(t+x)}$, and $\displaystyle{\theta(t,x)=R^{2}(\phi_{L}-\phi_{R})}$. 

cannot understand

sine-Gordon theory<->Thirring model

$$\tag{1.19}
\begin{align}
\mathcal{L}=\frac{R^{2}}{4\pi}\partial_{\mu}\phi \partial^{\mu}\phi+\frac{m}{\pi}\cos \phi\leftrightarrow \mathcal{L}=i\bar{\psi}\gamma^{\mu}\partial_{\mu}\psi+m\bar{\psi}\psi+g\bar{\psi}\gamma^{\mu}\psi \bar{\psi}\gamma_{\mu}\psi
\end{align}
$$

## Weyl anomaly by Zhe Feng

see Polyakov... basically Fadeev-Popov formalism (BRST formalism)

