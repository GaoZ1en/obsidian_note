## AdS/CFT

4d $\displaystyle{\mathcal{N}=4}$ SYM $\displaystyle{\leftrightarrow}$ IIB string in $\displaystyle{\mathrm{AdS}_{5}\times S^{5}}$, with dictionary $\displaystyle{g^{2}_{\mathrm{YM}}=4\pi g_{s},\left( \frac{R}{\ell} \right)^{4}=\lambda=g_{\mathrm{YM}}^{2}N}$

in this lecture we take the planar limit with $\displaystyle{N\to \infty,\lambda}$ fixed.

correlation function in the CFT side corresponds to scattering amplitude (of boundary operators) in the AdS side.

very difficult for **diagrammatic methods**
1. infinitely many particles
2. complicated interactions
3. difficult diagrams in curved spacetime

we adopt **bootstrap method** to simplify the calculation (from consistent conditions and symmetries, not Lagrangian)

*references*
1. Bissi, Sinha, XZ, 2202.08475

# conformal symmetry (euclidean spacetime)

generators
1. $\displaystyle{P_{\mu},M_{\mu \nu}}$, translation and rotation 
2. $\displaystyle{K_{\mu}}$, special conformal transformation
	1. $\displaystyle{K_{\mu}=i(2x_{\mu}x^{\nu}\partial _{\nu}-x^{2}\partial _{\mu})}$
3. $\displaystyle{D}$, dilatation

which is isomorphic to $\displaystyle{SO(d+1,1)}$. go to embedding space $\displaystyle{\mathbb{R}^{d+1,1}}$, we write the coordinates as

$$\tag{1.1}
\begin{align}
P^{A} & =(P^{-1},P^{0},\dots,P^{d}) \\
\eta ^{AB} & =\mathrm{diag}(-,+,\dots,+) \\
P^{\pm} & =P^{-1}\pm P^{0}
\end{align}
$$

we have

$$\tag{1.2}
\begin{align}
L_{\mu \nu} & =M_{\mu \nu}, \\
L^{\mu+} & =P^{\mu}, \\
L^{\mu-} & =K^{\mu} \\
L^{\pm} & =D
\end{align}
$$

and we identify $\displaystyle{x^{\mu}}$ with a null ray in $\displaystyle{\mathbb{R}^{d+1,1}}$ with $\displaystyle{P^{2}=0\implies P \sim \lambda P,\lambda\neq0}$ (some kind of gauge). we pick a gauge with $\displaystyle{P^{+}=0}$, then we have

$$\tag{1.3}
\begin{align}
P^{A} & =\left(\frac{1+x^{2}}{2},\frac{1-x^{2}}{2},x^{\mu}\right)
\end{align}
$$

the operators $\displaystyle{\mathcal{O}_{\Delta}}$ should satisfy the following scaling property

$$\tag{1.4}
\begin{align}
\mathcal{O}_{\Delta}(\lambda P) & =\lambda ^{-\Delta}\mathcal{O}_{\Delta}(P)
\end{align}
$$

and

$$\tag{1.5}
\begin{align}
\mathcal{O}_{\Delta}(P)|_{P^{+}=1} & =\mathcal{O}_{\Delta}(x^{\mu})
\end{align}
$$

in particular, we have

$$\tag{1.6}
\begin{align}
-2P_{i}\cdot P_{j} & =x_{ij}^{2}
\end{align}
$$

## correlation function

for 2pt, we have

$$\tag{1.7}
\begin{align}
\braket{ \mathcal{O}_{\Delta_{1}}(P_{1})\mathcal{O}_{\Delta_{2}}(P_{2}) } = \frac{\delta _{\Delta_{1}\Delta_{2}}}{(-2P_{1}\cdot P_{2})^{\Delta_{1}}}= \frac{\delta _{\Delta_{1}\Delta_{2}}}{x_{12}^{2}}
\end{align}
$$

for 3pt, we have

$$\tag{1.8}
\begin{align}
\braket{ \mathcal{O}_{\Delta_{1}}(P_{1})\mathcal{O}_{\Delta_{2}}(P_{2})\mathcal{O}_{\Delta_{3}}(P_{3}) }  & =\frac{C_{\Delta_{1}\Delta_{2}\Delta_{3}}}{(-2P_{1}\cdot P_{2})^{(\Delta_{1}+\Delta_{2}-\Delta_{3})/2}\dots}
\end{align}
$$

well known in the ordinary CFT lectures/books.

for 4pt, define the cross ratio

$$\tag{1.9}
\begin{align}
U & =\frac{(-2P_{1}\cdot P_{2})(-2P_{3}\cdot P_{4})}{()}
\end{align}
$$