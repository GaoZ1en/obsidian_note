# reference

- 2202.08475
- 1805.04405
- 1703.00278

abissi@ictp.it

the aim is to understand the properties of CFT without referring to specific Langrangian or microscopic realization of the theory.

# generalities

consider CFT on flat Euclidean or Lorentzian space with coordinates $\displaystyle{x^{\mu}}$ and metric $\displaystyle{\delta _{\mu \nu}/\eta _{\mu \nu}}$. 

conformal transformations are diffeomorphism $\displaystyle{x\to x'}$ that $\displaystyle{\frac{\partial x'^{\mu}}{\partial x^{\nu}}=\Omega(x)\Lambda ^{\mu}_{~\nu}(x)}$ and $\displaystyle{\eta _{\rho \sigma}\Lambda ^{\rho}_{~\mu}\Lambda ^{\sigma}_{~\nu}=\eta _{\mu \nu}}$.

denote $\displaystyle{d}$ the dimension of spacetime. when $\displaystyle{d\geqslant 3}$, any conformal transformation can be obtained by compositing 4 types of basic transformations

1. translations, $\displaystyle{\Omega=1}$
2. rotations, $\displaystyle{\Omega=1}$
3. dilatations, $\displaystyle{x'^{\mu}=\Omega x^{\mu}}$
4. inversions, $\displaystyle{x'^{\mu}= \frac{x^{\mu}}{x^{2}}}$

all conformal transformations form a Lie group of $\displaystyle{\frac{(d+1)(d+2)}{2}}$ dimensions, with its Lie algebra isomorphic to the Lie algebra $\displaystyle{\mathfrak{so}(d+1,1)}$ for Euclidean space and $\displaystyle{\mathfrak{so}(d,2)}$ for Lorentzian space. the generators are $\displaystyle{P_{\mu},M_{\mu \nu},K_{\mu},D}$, shared by the following non-zero commutation relations

$$\tag{.}
\begin{align}
[D,P_{\mu}] & =P_{\mu}, & [D,K_{\mu}] & =-K_{\mu}, \\
[K_{\mu},P_{\nu}] & =2\eta _{\mu \nu}D-2M_{\mu \nu},
\end{align}
$$

so $\displaystyle{P_{\mu}}$ and $\displaystyle{K_{\mu}}$ act as raising and lowering operators. we will study what happens to operators inserted at a position $\displaystyle{x=0}$ then move them by translations

$$\tag{.}
\begin{align}
\mathcal{O}(x) & =e^{x^{\mu}P_{\mu}}\mathcal{O}(x)e^{-x^{\mu}P_{\mu}}+(\text{ commutation relations })
\end{align}
$$

we need to study the action of the stabiliser of the conformal group at the origin. the stabiliser is $\displaystyle{M_{\mu \nu},K_{\mu}}$ and $\displaystyle{D}$.

$$\tag{.}
\begin{align}
\mathcal{O}(0) & =\mathcal{O}^{i}_{\Delta,r}(0)
\end{align}
$$

$\displaystyle{\mathcal{O}^{i}_{\Delta,r}(0)}$ forms a finite dimensional irreducible representation, and it is characterized by

$$\tag{.}
\begin{align}
[D,\mathcal{O}^{i}_{\Delta,r}(0)] & =\Delta \mathcal{O}^{i}_{\Delta,r}(0) \\
[M_{\mu \nu},\mathcal{O}^{i}_{\Delta,r}(0)] & =(R_{\mu \nu})^{i}_{~j}\mathcal{O}^{j}_{\Delta,r}(0)
\end{align}
$$

where $\displaystyle{\Delta}$ is the conformal dimension and $\displaystyle{(R_{\mu \nu})^{i}_{~j}}$ is the generator of the representation $\displaystyle{r}$ of $\displaystyle{SO(d)}$.

in physically interesting cases, the spectrum of the dilatation generator is real and bounded from below, so the conformal multiplet must contain an operator with lowest possible conformal dimension. assume $\displaystyle{\mathcal{O}(0)}$ is the lowest dimensional operator, then

$$\tag{.}
\begin{align}
[K_{\mu},\mathcal{O}^{i}_{\Delta,r}(0)] & =0
\end{align}
$$

we call such $\displaystyle{\mathcal{O}^{i}_{\Delta,r}(0)}$ as primary operators, and the other operators in the multiplet are called descendants. descendants are obtained by acting $\displaystyle{n\geqslant 1}$ times with $\displaystyle{P_{\mu}}$ on the primaries

$$\tag{.}
\begin{align}
[P_{\mu},\mathcal{O}^{i}_{\Delta,r}(0)]=\partial _{\mu}\mathcal{O}^{i}_{\Delta,r}(0)
\end{align}
$$

the aim is to compute the correlators of primary operators. we have

1. conformal symmetries (Ward identities of conformal transformations), which fixes the spacetime dependence of 2 and 3 point functions.
	1. $\displaystyle{\braket{ \mathcal{O}_{\Delta_{1}}(x_{1})\mathcal{O}_{\Delta_{2}}(x_{2}) }=\frac{C\delta _{\Delta_{1}\Delta_{2}}}{x_{12}^{2\Delta _{1}}}}$, where $\displaystyle{x_{12}=|x_{1}-x_{2}|}$
	2. $\displaystyle{\braket{ \mathcal{O}_{\Delta_{1}}(x_{1})\mathcal{O}_{\Delta_{2}}(x_{2})\mathcal{O}_{\Delta_{3}}(x_{3}) }=\frac{f_{123}}{x_{12}^{\Delta_{1}+\Delta_{2}-\Delta_{3}}x_{23}^{\Delta_{2}+\Delta_{3}-\Delta_{1}}x_{31}^{\Delta_{3}+\Delta_{1}-\Delta_{2}}}}$
2. unitarity
	1. imposes contraints on the spectrum
		1. $\displaystyle{\Delta\geqslant \frac{d-2}{2}}$ for scalars
		2. $\displaystyle{\Delta\geqslant d+\ell-2}$ for operators of spin $\displaystyle{\ell\geqslant 1}$ traceless symmetric representations of Lorentz group $\displaystyle{(2\ell,2\ell)}$.
		3. $\displaystyle{f_{123}\in \mathbb{R}}$.

for 4 point functions, we have

$$\tag{.}
\begin{align}
\braket{ \mathcal{O}_{\Delta_{1}}(x_{1})\mathcal{O}_{\Delta_{2}}(x_{2})\mathcal{O}_{\Delta_{3}}(x_{3})\mathcal{O}_{\Delta_{4}}(x_{4}) }  & = \frac{g(u,v)}{(x_{12}^{2})^{\Delta_{1}+\Delta_{2}}(x_{34}^{2})^{\Delta_{3}+\Delta_{4}}}\left( \frac{x_{24}^{2}}{x_{12}^{2}} \right)^{\Delta_{12}/2}\left( \frac{x_{14}^{2}}{x_{13}^{2}} \right)^{\Delta_{34}/2}
\end{align}
$$

where $\displaystyle{\Delta _{ij}=\Delta _{i}-\Delta _{j}}$ and cross ratios $\displaystyle{u=\frac{x_{12}^{2}x_{34}^{2}}{x_{13}^{2}x_{24}^{2}}}$ and $\displaystyle{v=\frac{x_{14}^{2}x_{23}^{2}}{x_{13}^{2}x_{24}^{2}}}$. $\displaystyle{g}$ is a function of $\displaystyle{u}$ and $\displaystyle{v}$, which is a sum of conformal blocks

OPE

$$\tag{.}
\begin{align}
\mathcal{O}_{i}(x_{1})\mathcal{O}_{j}(x_{2}) & =\sum _{k}\lambda _{ijk}(x_{1},x_{2},y,\partial _{y})\mathcal{O}_{k}(y)
\end{align}
$$

write

$$\tag{.}
\begin{align}
\lambda _{ijk}(x_{1},x_{2},y,\partial _{y}) & =f_{ijk}\hat{\lambda}_{ijk}(x_{1},x_{2},y,\partial _{y})
\end{align}
$$

where $\displaystyle{f_{ijk}}$ is the structure constant, and $\displaystyle{\hat{\lambda}_{ijk}}$ is a function that fully fixed by conformal symmetry. OPE in CFTs has a finite radius of convergence, which is determined by the distance to the next operator insertion