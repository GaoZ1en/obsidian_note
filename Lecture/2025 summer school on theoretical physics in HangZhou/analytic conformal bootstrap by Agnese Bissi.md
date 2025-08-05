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

so $\displaystyle{P_{\mu}}$ and $\displaystyle{K_{\mu}}$ act as raising 