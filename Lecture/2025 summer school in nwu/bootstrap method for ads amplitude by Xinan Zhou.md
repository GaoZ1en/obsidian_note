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

# preliminary (CFT in Euclidean spacetime)

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
U & =\frac{(-2P_{1}\cdot P_{2})(-2P_{3}\cdot P_{4})}{(-2P_{1}\cdot P_{3})(-2P_{2}\cdot P_{4})} \\
V & =\frac{(-2P_{1}\cdot P_{4})(-2P_{2}\cdot P_{3})}{(-2P_{1}\cdot P_{3})(-2P_{2}\cdot P_{4})}
\end{align}
$$

and we have

$$\tag{1.10}
\begin{align}
\braket{ \phi ^{4} } & = \frac{1}{(-2P_{1}\cdot P_{2})^{\Delta _{\phi}}(-2P_{3}\cdot P_{4})^{\Delta _{\phi}}} \mathcal{G}(U,V)
\end{align}
$$

where $\displaystyle{\mathcal{G}(U,V)}$ is an arbitrary function of $\displaystyle{U,V}$.

## OPE

$$\tag{1.11}
\begin{align}
\mathcal{O}_{1}(x_{1})\mathcal{O}_{2}(x_{2}) & =\sum _{k}C_{12k}\mathbb{D}_{12k}(x_{12},\partial _{2})\mathcal{O}_{k}(x_{2})
\end{align}
$$

where $\displaystyle{C_{12k}}$ is the coupling constant and $\displaystyle{\mathbb{D}_{12k}}$ is determined completely by conformal symmetry

## conformal block

a conformal block $\displaystyle{g_{\Delta,\ell}}$ defined as

$$\langle \phi_1(z_1) \phi_2(z_2) \phi_3(z_3) \phi_4(z_4) \rangle = \sum_{\mathcal{O}} C_{12\mathcal{O}} C_{34\mathcal{O}} g_{\Delta,\ell}(z,\bar{z})$$

which is also completely determined by conformal symmetry.

or we have a more elegant understanding of the conformal block as eigenfunction of Casimir operator...

# perturbation theory in $\mathrm{AdS}$ & Witten diagrams

we consider $\displaystyle{\mathrm{AdS}_{d+1}}$ and its embedding space. 

$$\tag{2.1}
\begin{align}
\mathcal{Z}^{A} & \in \mathbb{R}^{d+1,1} \\
\mathcal{Z}\cdot \mathcal{Z} & =-R^{2}
\end{align}
$$

we set $\displaystyle{R=1}$. we have the Poincare coordinates $\displaystyle{z_{0},\vec{z}}$, with metric

$$\tag{2.2}
\begin{align}
\mathrm{d}s^{2} & =\frac{1}{z_{0}^{2}}(\mathrm{d}z_{0}^{2}+\mathrm{d}\vec{z}^{2}) & z_{0}\geqslant0
\end{align}
$$

we have

$$\tag{2.3}
\begin{align}
\mathcal{Z}^{A} & =\frac{1}{z_{0}}\left( \frac{1+z_{0}^{2}+\vec{z}^{2}}{2},\frac{1-z_{0}^{2}-\vec{z}^{2}}{2},\vec{z} \right)
\end{align}
$$

this is quite similar to the previous $\displaystyle{P^{A}}$. in fact, we can identify $\displaystyle{P^{A}=\lim_{ z_{0} \to 0 }z_{0}\mathcal{Z}^{A}}$.

in AdS/CFT, we have two kinds of propagators: bulk-to-bulk propagator and boundary-to-bulk propagator.

in general, we have

$$\tag{2.4}
\begin{align}
G_{BB}^{\Delta} & \propto (2u^{-1})^{\Delta}{}_{2}F_{1}\left( \Delta,\Delta-\frac{d}{2}+\frac{1}{2},2\Delta-d+1;-2u^{-1} \right) \\
 u & =-\mathcal{Z}\cdot \mathcal{W}-1=\frac{(z_{0}-w_{0})^{2}+|\vec{z}-\vec{w}|^{2}}{2z_{0}w_{0}}
\end{align}
$$

which satisfies the Green function

$$\tag{2.5}
\begin{align}
(\square-m^{2})G^{\Delta}_{BB}(\mathcal{Z},\mathcal{W}) & =\delta(\mathcal{Z}-\mathcal{W})
\end{align}
$$

what about boundary-to-bulk propagator?
## contact Witten diagrams

$$\tag{2.6}
\begin{align}
\mathcal{D}_{\Delta_{1}\dots \Delta _{n}} & =\int \frac{\mathrm{d}z_{0}\mathrm{d}^{d}\vec{z}}{z_{0}^{d+1}}\prod ^{n}_{i=1} \left( \frac{z_{0}}{z_{0}^{2}+(\vec{z}-\vec{x}_{i})^{2}} \right)^{\Delta _{i}}
\end{align}
$$

a useful method is Schwinger parametrization:

$$\tag{2.7}
\begin{align}
\frac{1}{A^{\Delta}} & =\frac{1}{\Gamma(\Delta)}\int ^{\infty}_{0} \mathrm{d}t t^{\Delta-1}e^{-tA}
\end{align}
$$

then (2.6) becomes

$$\tag{2.8}
\begin{align}
\mathcal{D}_{\Delta_{1}\dots \Delta _{n}} & =\frac{\pi ^{d/2}\Gamma\left( \frac{1}{2}\Sigma _{\Delta}-\frac{d}{2} \right)\Gamma\left( \frac{1}{2}\Sigma _{\Delta} \right)}{2\prod _{i}\Gamma(\Delta _{i})}\int \prod _{i} \mathrm{d}\alpha _{i}\alpha _{i}^{\Delta _{i}-1} \frac{\delta(\Sigma _{j}\alpha _{j}-1)}{\left( \sum _{k<\ell}\alpha _{k}\alpha _{\ell}x_{k\ell}^{2} \right)^{\Sigma _{\Delta}/2}}
\end{align}
$$

where $\displaystyle{\Sigma _{\Delta}=\sum ^{n}_{i=1}\Delta _{i}}$. we have the following properties

$$\tag{2.9}
\begin{align}
\partial _{x_{ij}^{2}}D_{\Delta_{1}\dots \Delta _{i}\dots \Delta _{j}\dots \Delta _{n}} & =\frac{2\Delta _{i}\Delta _{j}}{d-\Sigma _{\Delta}}\mathcal{D}_{\Delta_{1}\dots \Delta _{i}+1\dots \Delta _{j}+1\dots \Delta _{n}}
\end{align}
$$



$$\tag{.}
\begin{align}
\mathcal{D}_{\Delta_{1}\dots \Delta _{n}} & \propto \int _{\mathbb{R}^{D}} \mathrm{d}^{D}x \prod ^{n}_{i=1} 1
\end{align}
$$