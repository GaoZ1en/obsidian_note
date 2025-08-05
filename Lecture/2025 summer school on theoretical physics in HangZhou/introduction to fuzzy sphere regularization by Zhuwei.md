phase transition, critical phenomena and universality

---

fuzzy sphere regularization is a method to explore the 3d conformal symmetry developed in past few years

1. motivation from CFT
2. Landau level on the sphere geometry $\displaystyle{S^{2}\times \mathbb{R}}$
3. example: 3D ising transition (scaling dimension, OPE, CFT data...)
4. more applications

# motivation from CFT

generators $\displaystyle{P_{\mu},M_{\mu \nu},K_{\mu},D}$ with commutator

$$\tag{1.1}
\begin{align}
[D,P_{\mu}] & =P_{\mu}, & [D,K_{\mu}] & =-K_{\mu}
\end{align}
$$

for an operator $\displaystyle{\mathcal{O}(x)}$, we can define a state corresponding to it

$$\tag{.}
\begin{align}
\ket{\mathcal{O}}  & \equiv\lim_{ x \to 0 } \mathcal{O}(x)\ket{0} 
\end{align}
$$

then

$$\tag{.}
\begin{align}
D\ket{\mathcal{O}}  & =\Delta _{\mathcal{O}}\ket{\mathcal{O}} 
\end{align}
$$

where $\displaystyle{\Delta _{\mathcal{O}}}$ is the conformal dimension of $\displaystyle{\mathcal{O}}$. for primary operator $\displaystyle{\mathcal{O}}$, we have $\displaystyle{[K_{\mu},\mathcal{O}]=0}$, and thus $\displaystyle{K_{\mu}\ket{\mathcal{O}}=0}$. by iteratly acting $\displaystyle{P_{\mu}}$, we get a series of decendant operators...

correlators. by suitable normalization, we have

$$\tag{.}
\begin{align}
\braket{ \mathcal{O}(x_{1})\mathcal{O}(x_{2}) }  & =\frac{1}{x_{12}^{2\Delta _{\phi}}} \\
\braket{ \mathcal{O}_{1}(x_{1})\mathcal{O}_{2}(x_{2})\mathcal{O}_{3}(x_{3}) }  & =\frac{f_{123}}{\dots}
\end{align}
$$

CFT data is the collection of $\displaystyle{\left\{\Delta _{\mathcal{O}},f_{ijk}\right\}}$.

phase transition, critical exponents.

$$\tag{.}
\begin{align}
C_{V}\sim t^{-\alpha},M\sim t^{\beta},M\sim h^{1/\delta},\chi \sim t^{\gamma}
\end{align}
$$

we have the following relation

$$\tag{.}
\begin{align}
\eta & =2\Delta _{\sigma}-(d-2) \\
\nu & =\frac{1}{d-\Delta _{\varepsilon}} \\
\beta & =\frac{\nu}{2}(d-2+\eta) \\
\gamma & =\nu(2-\eta) \\
\delta & =\frac{d+2-\eta}{d+2+\eta}
\end{align}
$$

$\displaystyle{\Delta _{\sigma}}$ and $\displaystyle{\Delta _{\varepsilon}}$ are conformal dimension of $\displaystyle{\sigma}$ and $\displaystyle{\varepsilon}$ operators. in Langau-Ginzberg model, $\displaystyle{\varepsilon \sim \phi ^{2}}$ and $\displaystyle{\sigma \sim \phi}$. 

near the RG fixed point (CFT), we write

$$\tag{.}
\begin{align}
H & =H_{\mathrm{CFT}}+\sum _{k}g_{k}\int \mathrm{d}^{d}x \phi _{k}(x)
\end{align}
$$

and the RG equation is

$$\tag{.}
\begin{align}
\frac{\mathrm{d}g_{k}}{\mathrm{d}\ell} & =(\Delta _{k}-d)g_{k}+\sum _{ij}f_{ijk}g_{i}g_{j}+\dots
\end{align}
$$

so that is the reason that why is the CFT data $\displaystyle{\left\{\Delta,f_{ijk}\right\}}$ important for him.

radial quantization... make a conformal transformation $\displaystyle{\tau=R\ln r}$ and turn to cylinder geometry $\displaystyle{S^{d-1}\times \mathbb{R}}$. then $\displaystyle{D}$ becomes a time translation operator---Hamiltonian. this is the oestate-operator correspondence?



