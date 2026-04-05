force is doomed in modern physics
1. gravity is kind of the manifestation of curved spacetime in GR
2. when gravity is included, S-matrix is the only observable for asymptotically flat spacetime

# in states, out states and S-matrix

(need to be rewritten in our framework)

from the free field Hamiltonian $\displaystyle{H_{0}}$, we have constructed the Fock space $\displaystyle{\mathcal{F}}$. add interaction $\displaystyle{H=H_{0}+V}$, the corresponding Fock space is denoted as $\displaystyle{\mathcal{I}}$. in and out states $\displaystyle{\psi ^{\pm}_{\alpha}\in \mathcal{I}}$, where the $\displaystyle{\alpha}$ means that we add or reduce the interaction $\displaystyle{V}$ adiabatically, $\displaystyle{\psi _{\alpha}\in \mathcal{F}}$ will evolve to $\displaystyle{\psi _{\alpha}^{+}\in \mathcal{I}}$ and $\displaystyle{\psi _{\alpha}^{-}\in \mathcal{I}}$ will evolve to $\displaystyle{\psi _{\alpha}\in \mathcal{F}}$. more precisely in the Heisenberg picture we have

$$\begin{align}
e^{-iHt}\psi ^{+}_{\alpha} & =e^{-iH_{0}t}\psi _{\alpha}, & t\to-\infty \\
e^{-iHt}\psi ^{-}_{\alpha} & =e^{-iH_{0}t}\psi _{\alpha}, & t\to+\infty
\end{align}$$

let

$$\begin{align}
\Lambda(t) & =e^{-i(H-H_{0})t} \\
\Lambda(-\infty) & =\Lambda _{\mathrm{in}} \\
\Lambda(+\infty) & =\Lambda _{\mathrm{out}}
\end{align}$$

and the S-matrix is defined as

$$\begin{align}
S _{\beta \alpha} & =(\psi ^{-}_{\beta},\psi ^{+}_{\alpha})_{\mathcal{I}} \\
 & =(\Lambda _{\mathrm{out}}^{-1}\psi _{\beta},\Lambda _{\mathrm{in}}^{-1}\psi _{\alpha})_{\mathcal{I}} \\
 & =(\psi _{\beta},\Lambda _{\mathrm{out}}\Lambda ^{-1}_{\mathrm{in}}\psi _{\alpha})_{\mathcal{F}} \\
 & =(\psi _{\beta},S\psi _{\alpha})_{\mathrm{\mathcal{F}}}
\end{align}$$

$\displaystyle{S=\Lambda _{\mathrm{out}}\Lambda _{\mathrm{in}}^{-1}}$ is called the S-operator. for an operator $\displaystyle{\mathcal{O}:\mathcal{F}\to \mathcal{F}}$, we have two methods to induce it to $\displaystyle{\mathcal{I}}$:

$$\begin{align}
\Lambda ^{-1}_{\mathrm{out}}\mathcal{O}\Lambda _{\mathrm{out}} \\
\Lambda ^{-1}_\mathrm{in}\mathcal{O}\Lambda _{\mathrm{in}}
\end{align}$$

we want the definition to be unique, then we let $\displaystyle{\Lambda ^{-1}_{\mathrm{out}}\mathcal{O}\Lambda _{\mathrm{out}}=\Lambda _{\mathrm{in}}^{-1}\mathcal{O}\Lambda _{\mathrm{in}}\implies[S,\mathcal{O}]=0}$, then $\displaystyle{\mathcal{O}}$ is called a conserved quantity.

# Lippmann-Schwinger equation and old fashioned perturbation theory

since

$$\begin{align}
e^{-iHt}\psi ^{+}_{\alpha} & =e^{-iH_{0}t}\psi _{\alpha}, & t\to-\infty \\
e^{-iHt}\psi ^{-}_{\alpha} & =e^{-iH_{0}t}\psi _{\alpha}, & t\to+\infty
\end{align}$$

we have

$$\begin{align}
\psi _{g} ^{\pm}(\mp \infty) & =\psi _{g}(\mp \infty) \\
\phi _{g}(t) & =\int \mathrm{d}\alpha e^{-iE_{\alpha}t}g(\alpha)\phi _{\alpha}
\end{align}$$

assume

$$\begin{align}
\psi _{\alpha}^{\pm} & =\psi _{\alpha}+\phi
\end{align}$$

then act $\displaystyle{E_{\alpha}-H_{0}\pm i\varepsilon}$ on both side

$$\begin{align}
(E_{\alpha}-H_{0})\psi _{\alpha}^{\pm} & =(E_{\alpha}-H_{0}\pm i\varepsilon)\phi \\
\implies(E_{\alpha}-H+V)\psi _{\alpha}^{\pm} & =(E_{\alpha}-H_{0}\pm i\varepsilon)\phi \\
\implies \phi & =\frac{1}{E_{\alpha}-H_{0}\pm i\varepsilon}V\psi _{\alpha}^{\pm}
\end{align}$$

and then the Lippmann-Schwinger equation

$$\begin{align}
\psi _{\alpha}^{\pm} & =\psi _{\alpha}+\frac{1}{E_{\alpha}-H_{0}\pm i\varepsilon}V\psi _{\alpha}^{\pm} \\
 & =\psi _{\alpha}+\int\frac{\mathrm{d}\beta T_{\beta \alpha}^{\pm}}{E_{\alpha}-E_{\beta}\pm i\varepsilon}\psi _{\beta} \\
T_{\beta \alpha}^{\pm} & =(\psi _{\beta},V\psi _{\alpha}^{\pm})
\end{align}$$

or

$$\begin{align}
\psi _{g}^{\pm}(t) & =\psi _{g}(t)+\int \mathrm{d}\alpha \mathrm{d}\beta  \frac{g(\alpha)e^{-iE_{\alpha}t}T_{\beta \alpha}^{\pm}}{E_{\alpha}-E_{\beta}\pm i\varepsilon}\psi _{\beta}
\end{align}$$

this form also explain the signal of $\displaystyle{i\varepsilon}$. consider

$$\begin{align}
\psi _{g}^{\pm}(\pm \infty) & =\psi _{g}(\pm \infty)+\int \mathrm{d}\alpha \mathrm{d}\beta \frac{g(\alpha) e^{-iE_{\alpha}t}T_{\beta \alpha}^{\pm}}{E_{\alpha}-E_{\beta}\pm i\varepsilon}\psi _{\beta}
\end{align}$$

then

$$\begin{align}
\psi _{g}^{+}(+\infty) & =\psi _{g}^{-}(+\infty)+\int \mathrm{d}\alpha \mathrm{d}\beta \frac{g(\alpha)e^{-iE_{\alpha}t}T_{\beta \alpha}^{+}}{E_{\alpha}-E_{\beta}+i\varepsilon} \\
\psi _{g}^{+}(\infty) & =\int \mathrm{d}\alpha g(\alpha)e^{-iE_{\alpha}t}\psi _{\alpha}^{+} \\
 & =\int \mathrm{d}\alpha g(\alpha)e^{-iE_{\alpha}t}\int \mathrm{d}\beta S_{\beta \alpha}\psi _{\beta}^{-} \\
\psi _{g}^{-}(\infty) & =\int \mathrm{d}\alpha g(\alpha)e^{-iE_{\alpha}t}\int \mathrm{d}\beta \delta(\beta-\alpha)\psi _{\beta}^{-} \\
\int \mathrm{d}\alpha g(\alpha)e^{-iE_{\alpha}t} \int \mathrm{d}\beta \frac{\psi _{\beta}T_{\beta \alpha}^{+}}{E_{\alpha}-E_{\beta}+i\varepsilon} & =-2\pi i\int \mathrm{d}\alpha g(\alpha)e^{-iE_{\alpha}t}\int \mathrm{d}\beta \delta(E_{\alpha}-E_{\beta})\psi _{\beta}T_{\beta \alpha}^{+} \\
 & =-2\pi i \int \mathrm{d}\alpha g(\alpha)e^{-iE_{\beta}t}\int \mathrm{d}\beta \delta(E_{\alpha}-E_{\beta})\psi _{\beta}^{-}T_{\beta \alpha}^{+} \\
\implies S_{\beta \alpha} & =\delta(\alpha-\beta)-2\pi i\delta(E_{\alpha}-E_{\beta})T_{\beta \alpha}^{+}
\end{align}$$

similarly

$$\begin{align}
\psi _{g}^{-}(-\infty) & =\psi _{g}^{+}(-\infty)+\int \mathrm{d}\alpha \mathrm{d}\beta \frac{g(\alpha)e^{-iE_{\alpha}t}T_{\beta \alpha}^{-}}{E_{\alpha}-E_{\beta}-i\varepsilon}\psi _{\beta} \\
\psi _{g}^{-}(-\infty) & =\int \mathrm{d}\alpha g(\alpha)e^{-iE_{\alpha}t}\psi _{\alpha}^{-} \\
 & =\int \mathrm{d}\alpha g(\alpha)e^{-iE_{\alpha}t}\int \mathrm{d}\beta \psi _{\beta}^{+}\bar{S}_{\beta \alpha} \\
\psi _{g}^{+}(-\infty) & =\int \mathrm{d}\alpha g(\alpha)e^{-iE_{\alpha}t}\int \mathrm{d}\beta \psi _{\beta}^{+}\delta(\alpha-\beta) \\
\int \mathrm{d}\alpha \mathrm{d}\beta \frac{g(\alpha)e^{-iE_{\alpha}t}T^{-}_{\beta \alpha}}{E_{\alpha}-E_{\beta}-i\varepsilon}\psi _{\beta} & =2\pi i \int \mathrm{d}\alpha g(\alpha)e^{-iE_{\alpha}t}\int \mathrm{d}\beta \delta(E_{\alpha}-E_{\beta})\psi _{\beta}^{+}T^{-}_{\beta \alpha} \\
\implies \bar{S}_{\alpha \beta} & =\delta(\alpha-\beta)+2\pi i\delta(E_{\alpha}-E_{\beta})T^{-}_{\beta \alpha}
\end{align}$$

so if $\displaystyle{E_{\alpha}=E_{\beta}}$, $\displaystyle{T^{+}_{\beta \alpha}=\bar{T}_{\alpha \beta}^{-}}$. we will use Lippmann-Schwinger equation to give another proof. we want

$$\begin{align}
(\psi _{\beta},V\psi _{\alpha}^{+}) & =\overline{(\psi _{\alpha},V\psi _{\beta}^{-})} \\
 & =(V\psi _{\beta}^{-},\psi _{\alpha})
\end{align}$$

and

$$\begin{align}
\psi ^{\pm}_{\alpha} & =\psi _{\alpha}+\frac{1}{E_{\alpha}-H_{0}\pm i\varepsilon}V\psi _{\alpha}^{\pm} \\
\implies \psi _{\alpha} & =\psi _{\alpha}^{\pm}-\frac{1}{E_{\alpha}-H_{0}\pm i\varepsilon}V\psi _{\alpha}^{\pm} \\
\implies(\psi _{\beta},V\psi _{\alpha}^{+}) & =\left( \psi _{\beta}^{-}-\frac{1}{E_{\beta}-H_{0}-i\varepsilon}V\psi _{\beta}^{-},V\psi _{\alpha}^{+} \right) \\
(V\psi _{\beta}^{-},\psi _{\alpha}) & =\left( V\psi _{\beta}^{-},\psi ^{+}_{\alpha}-\frac{1}{E_{\alpha}-H_{0}+i\varepsilon}V\psi _{\alpha}^{+} \right) \\
\implies(\psi _{\beta},V\psi _{\alpha}^{+}) & =(V\psi _{\beta}^{-},\psi _{\alpha})\checkmark
\end{align}$$

using Lippman-Schwinger equation, we have

$$\begin{align}
S_{\alpha \beta} & =\delta(\alpha-\beta)-2\pi i\delta(E_{\alpha}-E_{\beta})T_{\alpha \beta}^{+} \\
T_{\alpha \beta}^{+} & =(\psi _{\beta},V\psi _{\alpha}^{+}) \\
 & =(\psi _{\beta},V\psi _{\alpha})+\left( \psi _{\beta},V \frac{1}{E_{\alpha}-H_{0}+i\varepsilon}V\psi _{\alpha} \right)+\left(\psi _{\beta},V \frac{1}{E_{\alpha}-H_{0}+i\varepsilon}V \frac{1}{E_{\alpha}-H_{0}+i\varepsilon}V\psi _{\alpha}\right)+\dots
\end{align}$$

this is the old-fashioned perturbation theory. 

# time dependent perturbation theory and Dyson series

notice that

$$\begin{align}
\Lambda(t) & =e^{-i(H-H_{0})t} \\
\Lambda(+\infty) & =\Lambda _{\mathrm{out}} \\
\Lambda(-\infty) & =\Lambda _{\mathrm{in}}
\end{align}$$

we pick interaction picture. states evolves as

$$\begin{align}
i\partial _{t}\ket{\psi}_{I} & =V_{I}(t)\ket{\psi}_{I}
\end{align}$$

while operators evolves as

$$\begin{align}
\partial _{t}\mathcal{O}_{I} & =i[H_{0},\mathcal{O}_{I}] \\
\implies \mathcal{O}_{I}(t) & =e^{iH_{0}t}\mathcal{O}_{I}(0)e^{-iH_{0}t}
\end{align}$$

define time evolution operator $\displaystyle{U(t,t')}$ as

$$\begin{align}
U(t,t') & =e^{-iH_{0}t}e^{-iH(t-t')}e^{-iH_{0}t'}
\end{align}$$

we have several properties
1. $\displaystyle{U(t,t)=I}$
2. $\displaystyle{U(t,0)=\Lambda(t)}$
3. $\displaystyle{U(t,t')U(t',t'')=U(t,t'')}$
4. $\displaystyle{U(\infty,-\infty)=S}$
5. $\displaystyle{i\partial _{t}U(t,t')=V_{I}(t)U(t,t')}$

from 5 and 1, we have the following perturabtion expansion

$$\begin{align}
U(t,t') & =I-i \int _{t'}^{t}\mathrm{d}\tau V_{I}(\tau)+(-i)^{2}\int _{t'}^{t}\mathrm{d}\tau_{1}\int ^{\tau_{1}} _{t'}\mathrm{d}\tau_{2}V_{I}(\tau_{1})V_{I}(\tau_{2})+\dots \\
 & =T\exp\left(-i \int _{t'}^{t}\mathrm{d}\tau V_{I}(\tau)\right)
\end{align}$$

and then

$$\begin{align}
S & =U(\infty,-\infty) \\
 & =T\exp\left(-i \int _{-\infty}^{+\infty}\mathrm{d}tV(t)\right) \\
 & =T\exp\left(-i \int \mathrm{d}^{d}x\mathcal{V}(x)\right)
\end{align}$$

if we have $\displaystyle{[\mathcal{V}(x),\mathcal{V}(x')]=0}$ for spacelike separation, the S-matrix is naturally Poincare (diffeomorphism) invariant. there are still several problems here

1. definition of $\displaystyle{\mathcal{V}[\hat{\phi}]}$
2. IR divergence of $\displaystyle{\int \mathrm{d}^{d}x\dots}$
3. convergence of the Dyson series $\displaystyle{T\exp\left(-i \int \mathrm{d}^{d}x\mathcal{V}(x)\right)}$

consider

$$\begin{align}
\braket{ \beta|U(\infty,-\infty)|\alpha } & = \braket{ \beta|\alpha }-i\braket{ \beta|\int _{-\infty}^{+\infty}e^{iH_{0}t}Ve^{-iH_{0}t}|\alpha }+\dots \\
 & =\delta(\beta-\alpha)-i \int _{-\infty}^{+\infty}e^{i(E_{\beta}-E_{\alpha})t}\braket{ \beta|V|\alpha}+\dots \\
 & =\delta(\beta-\alpha)-2\pi i\delta(E_{\beta}-E_{\alpha})\braket{ \beta|V|\alpha }+\dots
\end{align}$$

the third term

$$\begin{align}
(-i)^{2}\int _{-\infty}^{+\infty}\mathrm{d}\tau_{1}\int _{-\infty}^{\tau_{1}} \mathrm{d}\tau_{2}\braket{ \beta|V(\tau_{1})V(\tau_{2})|\alpha } & =(-i)^{2}\int _{-\infty}^{+\infty}\mathrm{d}\tau_{1}\int ^{\tau_{1}}_{-\infty}\mathrm{d}\tau_{2} \int \mathrm{d}\gamma \braket{ \beta|V|\gamma } \braket{ \gamma|V|\alpha } e^{i(E_{\beta}-E_{\alpha})t}e^{iE_{\gamma}(\tau_{1}-\tau_{2})} \\
 & =-2\pi i\delta(E_{\beta}-E_{\alpha})\int \mathrm{d}\gamma \frac{\braket{ \beta|V|\gamma } \braket{ \gamma|V|\alpha }}{E_{\alpha}-E_{\gamma}+i\varepsilon} \\
 & =-2\pi i\delta(E_{\beta}-E_{\alpha})\braket{ \beta|V \frac{1}{E_{\alpha}-H_{0}+i\varepsilon}V|\alpha } 
\end{align}$$

# Lehmann-Symanzik-Zimmermann reduction formula and time ordered correlation functions

LSZ reduction formula provide a relation between S matrix and time-ordered correlation functions, and reduce the problem to time-ordered correlation functions.

we first define n-point retarded correlation functions

$$\begin{align}
G^{\mathrm{R}}(x,x') & =\theta(x^{0}-x'^{0})\braket{ 0|[\phi(x),\phi(x')]|0 }
\end{align}$$

notice that

$$\begin{align}
T\phi(x)\phi(x') & =\theta(x^{0}-x'^{0})\phi(x)\phi(x')+\theta(x'^{0}-x^{0})\phi(x')\phi(x) \\
\bar{T}\phi(x)\phi(x') & =\theta(x^{0}-x'^{0})\phi(x')\phi(x)+\theta(x'^{0}-x^{0})\phi(x)\phi(x') \\
\implies (T-\bar{T})\phi(x)\phi(x') & =\theta(x^{0}-x'^{0})[\phi(x),\phi(x')]-\theta(x'^{0}-x^{0})[\phi(x),\phi(x')] \\
 & =G^{\mathrm{R}}(x,x')-G^{\mathrm{A}}(x,x')
\end{align}$$

remind that the time evolution operator in the interaction picture is defined as

$$\begin{align}
U(t,t') & =e^{iHt}e^{-iH_{0}(t-t')}e^{-iHt'} \\
\implies S & =U(\infty,-\infty)
\end{align}$$

define $\displaystyle{\Lambda(t)=e^{iH_{0}t}e^{-iHt}}$, we have

$$\begin{align}
\phi _{0}(x)=\Lambda(t)\phi(x)\Lambda ^{-1}(t)
\end{align}$$

where $\displaystyle{\phi(x)}$ is in the interaction picture, then $\displaystyle{\phi_{0}(x)}$ satisfies the Heisenberg equation

$$\begin{align}
[H_{0},\phi_{0}(x)]=-i\dot{\phi}_{0}(x)
\end{align}$$

take a mode expansion in the Minkowskian spacetime

$$\begin{align}
\phi_{0}(x) & =\int \frac{\mathrm{d}^{3}\vec{k}}{(2\pi)^{3/2}\sqrt{ 2\omega _{k} }}\left(a_{k}e^{-ik\cdot x}+a^{\dagger}_{k}e^{ikx}\right) \\
\implies\phi(x) & =\Lambda ^{-1}(t)\int \mathrm{d}^{3}\vec{k}(a_{k}\mathcal{K}(x)+a^{\dagger}_{k}\mathcal{\bar{K}}(x))\Lambda(t) \\
 & =\int \mathrm{d}^{3}\vec{k}(a_{k}(t)\mathcal{K}(x)+a^{\dagger}_{k}(t)\mathcal{\bar{K}}(x))
\end{align}$$

where $\displaystyle{a_{k}(t)=\Lambda ^{-1}(t)a_{k}\Lambda(t)}$ and similar for $\displaystyle{a_{k}^{\dagger}(t)}$. consider

$$\begin{align}
\int \mathrm{d}^{4}x\mathcal{K}(x)(\nabla _{\mu}\nabla ^{\mu}+m^{2})\phi(x) & =\int \mathrm{d}^{4}x\nabla _{\mu}(\mathcal{K}(x)\nabla ^{\mu}\phi(x)-\nabla ^{\mu}\mathcal{K}(x)\phi(x))+\int \mathrm{d}^{4}x\phi(x)\left(\nabla _{\mu}\nabla ^{\mu}+m^{2}\right)\mathcal{K}(x) \\
 & = \int \mathrm{d}^{4}x\nabla _{\mu}(\mathcal{K}(x)\nabla ^{\mu}\phi(x)-\nabla ^{\mu}\mathcal{K}(x)\phi(x)) \\
 & =\int \mathrm{d}t\partial _{t}\int \mathrm{d}^{3}x(\mathcal{K}(x)\dot{\phi}(x)-\mathcal{\dot{K}}(x)\phi(x)) \\
 & =i \int _{-\infty}^{+\infty}\mathrm{d}t \partial _{t}(\phi ^{\dagger},\mathcal{K})_{t}
\end{align}$$

assume that the interaction occurs within the finite time period. so

$$\begin{align}
i \int _{-\infty}^{+\infty}\mathrm{d}t \partial _{t}(\phi ^{\dagger},\mathcal{K})_{t} & =-i[(\phi ^{\dagger},\mathcal{K})_{\infty}-(\phi ^{\dagger},\mathcal{K})_{-\infty}] \\
 & =i(a_{k}(\infty)-a_{k}(-\infty))
\end{align}$$

consider

$$\begin{align}
a^{\dagger}_{k}(\mp \infty)\ket{0} ^{\pm} & =\Lambda ^{-1}(\mp \infty)a^{\dagger}_{k}\Lambda(\mp \infty)\ket{0} ^{\pm} \\
 & =\Lambda ^{-1}(\mp \infty)a^{\dagger}_{k}\ket{0}  \\
 & =\Lambda ^{-1}(\mp \infty)\ket{k}  \\
 & =\ket{k} ^{\pm}
\end{align}$$

consider the following scattering amplitude

$$\begin{align}
\braket{ \beta|S|\alpha }  & = \braket{ 0|a_{k' _{1}}a_{k'_{2}}\dots a_{k'_{j}}Sa^{\dagger}_{k_{1}}a^{\dagger}_{k_{2}}\dots a^{\dagger}_{k _{i}}|0 } \\
 & =\braket{ 0|a_{k' _{1}}a_{k'_{2}}\dots a_{k'_{j}}\Lambda(\infty)\Lambda ^{-1}(-\infty)a^{\dagger}_{k_{1}}a^{\dagger}_{k_{2}}\dots a^{\dagger}_{k _{i}}|0 } \\
 & = \braket{ 0|\Lambda(\infty)\Lambda ^{-1}(\infty)a_{k'_{1}}\Lambda(\infty)\dots \Lambda ^{-1}(\infty)a_{k'_{j}}\Lambda(\infty)\Lambda ^{-1}(-\infty)a^{\dagger}_{k_{1}}\Lambda(-\infty)\dots \Lambda ^{-1}(-\infty)a^{\dagger}_{k_{i}}\Lambda(-\infty)\Lambda ^{-1}(-\infty)|0 } \\
 & = {}^{-}\braket{ 0|T(a_{k'_{1}}(\infty)\dots a_{k'_{j}}(\infty)a^{\dagger}_{k_{1}}(-\infty)\dots a^{\dagger}_{k _{i}}(-\infty))|0 } ^{+} \\
 & = {}^{-}\braket{ 0|T((a_{k'_{1}}(\infty)-a_{k'_{1}}(-\infty))\dots(a_{k'_{j}}(\infty)-a_{k'_{j}}(-\infty))(a^{\dagger}_{k_{1}}(-\infty)-a^{\dagger}_{k_{1}}(\infty))\dots(a^{\dagger}_{k _{i}}(-\infty)-a^{\dagger}_{k _{i}}(\infty)))|0 }^{+} \\
 & = {}^{-}\bra{0}|T\left(-i \int \mathrm{d}^{4}x'_{1}\mathcal{k}'_{1}(x)(\nabla_{1} '^{2}+m^{2})\phi(x'_{1})\dots -i \int \mathrm{d}^{4}x'_{j}k'_{j}(x)(\nabla'^{2}_{j}+m^{2})\phi(x'_{j})\right. \\
 & \left.-i \int \mathrm{d}^{4}x_{1}\bar{k}_{1}(x)(\nabla _{1}^{2}+m^{2})\phi(x_{1})\dots-i \int \mathrm{d}^{4}x_{i}\bar{k}_{i}(x)(\nabla _{i}^{2}+m^{2})\phi(x_{i})\right)\ket{0} ^{+} \\
 & =(-i)^{i+j}\int \prod ^{j}_{n'=1} \mathrm{d}^{4}x_{n'}k(x_{n'})(\nabla ^{2}_{n'}+m^{2})\int\prod ^{i}_{n=1}\mathrm{d}^{4}x_{n}\bar{k}(x_{n})(\nabla ^{2}_{n}+m^{2}){}^{-}\braket{ 0|T\left( \prod ^{j}_{n'=1}\phi(x_{n'})\prod ^{i}_{n=1}\phi(x_{n}) \right)|0 } ^{+}
\end{align}$$

that is the LSZ reduction formula, which gives the following properties of S-matrix

1. permutation symmetry
2. momentum-energy conservation
3. unitary

there are still some inconvenients here...
