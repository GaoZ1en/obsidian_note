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

$$\tag{.}
\begin{align}
\mathcal{D}_{\Delta_{1}\dots \Delta _{n}} & =\int \frac{\mathrm{d}z_{0}\mathrm{d}^{d}\vec{z}}{z_{0}^{d+1}} \prod ^{n}_{i=1}z_{0}^{\Delta _{i}} \frac{1}{\Gamma(\Delta _{i})}\int _{0}^{\infty} \mathrm{d}\alpha _{i}\alpha _{i}^{\Delta _{i}-1}e^{-\alpha _{i}(z_{0}^{2}+(\vec{z}-\vec{x}_{i})^{2})} \\
 & = \frac{1}{\prod \Gamma(\Delta _{i})}\int \prod ^{n}_{i=1}\mathrm{d}\alpha _{i}\int \mathrm{d}z_{0} z_{0}^{\Sigma _{\Delta}-d-1}\prod ^{n}_{i=1}e^{-\alpha _{i}z_{0}^{2}}\int \mathrm{d}^{d}\vec{z} \prod ^{n}_{i=1}e^{-\alpha _{i}(\vec{z}-\vec{x}_{i})^{2}} \\
 & =
\end{align}
$$

then (2.6) becomes

$$\tag{2.8}
\begin{align}
\mathcal{D}_{\Delta_{1}\dots \Delta _{n}} & =\frac{\pi ^{d/2}\Gamma\left( \frac{1}{2}\Sigma _{\Delta}-\frac{d}{2} \right)\Gamma\left( \frac{1}{2}\Sigma _{\Delta} \right)}{2\prod _{i}\Gamma(\Delta _{i})}\int \prod _{i} \mathrm{d}\alpha _{i}\alpha _{i}^{\Delta _{i}-1} \frac{\delta(x_{j}\alpha _{j}-1)}{\left( \sum _{k<\ell}\alpha _{k}\alpha _{\ell}x_{k\ell}^{2} \right)^{\Sigma _{\Delta}/2}}
\end{align}
$$

where $\displaystyle{\Sigma _{\Delta}=\sum ^{n}_{i=1}\Delta _{i}}$. we have the following properties

$$\tag{2.9}
\begin{align}
\partial _{x_{ij}^{2}}D_{\Delta_{1}\dots \Delta _{i}\dots \Delta _{j}\dots \Delta _{n}} & =\frac{2\Delta _{i}\Delta _{j}}{d-\Sigma _{\Delta}}\mathcal{D}_{\Delta_{1}\dots \Delta _{i}+1\dots \Delta _{j}+1\dots \Delta _{n}}
\end{align}
$$

actually the $\displaystyle{\mathcal{D}}$ function is related to 1-loop amplitude in flat spacetime, as

$$\tag{2.10}
\begin{align}
\mathcal{D}_{\Delta_{1}\dots \Delta _{n}} & \propto \int _{\mathbb{R}^{D}} \mathrm{d}^{D}x \prod ^{n}_{i=1} \frac{1}{(x-x_{i})^{2\Delta _{ij}}}
\end{align}
$$

where $\displaystyle{D=\sum _{i}\Delta _{i}}$

## exchange Witten diagrams

for simplicity, we consider scalar field exchanges.

$$\tag{2.11}
\begin{align}
\mathcal{A}(P_{1},P_{2},\mathcal{Z}) &= \int \mathrm{d}\mathcal{Z}'\mathcal{G}^{\Delta}_{BB}(z',z)\mathcal{G}^{\Delta}_{B\partial}(z',P_{1})\mathcal{G}^{\Delta}_{B\partial}(z',P_{2})
\end{align}
$$

where $\displaystyle{G^{\Delta}_{B\partial}}$ is the boundary-to-bulk propagator. we have a "cross ratio"

$$\tag{2.12}
\begin{align}
\gamma & =\frac{-2P_{1}\cdot P_{2}}{(-2P_{1}\cdot \mathcal{Z})(-2P_{2}\cdot \mathcal{Z})} \\
& = \frac{(x_{1}-x_{2})^{2}z_{0}^{2}}{(z_{0}^{2}+(\vec{z}-\vec{x}_{1})^{2})(z_{0}^{2}+(\vec{z}-\vec{x}_{2})^{2})}
\end{align}
$$

then the 3-pt function can be written as function of $\displaystyle{\gamma}$

$$\tag{2.13}
\begin{align}
\mathcal{A} & =\frac{(-2P_{1}\cdot P_{2})^{-\Delta _{2}}}{(-2P_{1}\cdot \mathcal{Z})^{\Delta _{1}-\Delta _{2}}}f(\gamma)
\end{align}
$$

the conformal symmetry $\displaystyle{\mathrm{SO}(d+1,1)}$ is exactly the isometry of $\displaystyle{\mathrm{AdS}_{d+1}}$. we have

$$\tag{2.13}
\begin{align}
(L_{AB}^{(1)}+L_{AB}^{(2)}+\mathcal{L}_{AB})\mathcal{A} & =0 \\
\implies-\frac{1}{2}(L_{AB}^{(1)}+L_{AB}^{(2)})(L^{(1)AB}+L^{(2)AB})\mathcal{A} & =-\frac{1}{2}\mathcal{L}_{AB}\mathcal{L}^{AB}\mathcal{A} \\
 & =\square _{\mathrm{AdS}_{d+1}} \mathcal{A}
\end{align}
$$

$$\tag{2.14}
\begin{align}
(\mathrm{Cas}^{12}-m^{2})\mathcal{A} & = \frac{1}{(-2P_{1}\cdot \mathcal{Z})^{\Delta_{1}}(-2P_{2}\cdot \mathcal{Z})^{\Delta _{2}}}
\end{align}
$$

then the $\displaystyle{f(\gamma)}$ satisfies the folllowing equation and boundary conditions

$$\tag{2.15}
\begin{align}
\mathcal{D}f(\gamma) & =\gamma ^{\Delta _{2}} \\
f(\gamma) & \to \gamma ^{(\Delta-\Delta_{1}+\Delta_{2})/2},\gamma\to0 \text{ from OPE }\\
f(\gamma) & \text{ regular },\gamma\to 1
\end{align}
$$

in general, $\displaystyle{f(\gamma)\propto {}_{3}F_{2}(\dots)+{}_{2}F_{1}(\dots)}$. and for special cases of $\displaystyle{\Delta_{1},\Delta_{2},\Delta}$, $\displaystyle{f(\gamma)}$ truncates to a polynomial. assume

$$\tag{2.16}
\begin{align}
f(\gamma) & =\sum ^{n}_{k=1}a_{k}\gamma ^{k}
\end{align}
$$

plug into (2.15), we get recursion relation for $\displaystyle{a_{k}}$

$$\tag{2.17}
\begin{align}
a_{k-1} & =\frac{\left(k-\frac{\Delta}{2}+\frac{\Delta _{12}}{2}\right)\left( k-\frac{d}{2}+\frac{\Delta}{2}+\frac{\Delta _{12}}{2} \right)}{(k-1)(k-1+\Delta _{12})}a_{k}
\end{align}
$$

where $\displaystyle{\Delta _{12}=\Delta _{1}-\Delta _{2}}$. since the non-homogeneous term $\displaystyle{\gamma ^{\Delta _{2}}}$, we have $\displaystyle{k _{\mathrm{max}}=\Delta _{2}-1,a_{\Delta _{2}-1}= \frac{1}{4(\Delta _{1}-1)(\Delta _{2}-1)}}$. **if $\displaystyle{\Delta_{1}+\Delta_{2}-\Delta \in2\mathbb{Z}_{+}}$, we have $\displaystyle{k _{\mathrm{min}}=\frac{\Delta-\Delta _{12}}{2}}$.**

consider a term in $\displaystyle{\mathcal{A}}$:

$$\tag{2.18}
\begin{align}
\frac{(-2P_{1}\cdot P_{2})^{-\Delta _{2}}}{(-2P_{1}\cdot \mathcal{Z})^{\Delta _{1}-\Delta _{2}}}\gamma ^{k} & =\frac{(-2P_{1}\cdot P_{2})^{-\Delta _{2}+k}}{(-2P_{1}\cdot \mathcal{Z})^{\Delta_{1}-\Delta_{2}+k}(-2P_{2}\cdot \mathcal{Z})^{k}}
\end{align}
$$

so when $\displaystyle{\Delta_{1}+\Delta_{2}-\Delta \in 2\mathbb{Z}_{+}}$, 4pt exchange Witten diagrams can be factorized into a sum of contact Witten diagrams:

$$\tag{2.19}
\begin{align}
\int \mathrm{d}\mathcal{Z}\mathrm{d}\mathcal{Z}'(\text{ exchange Witten diagram }) & =\sum _{k}a_{k}(x_{12}^{2})\int \mathrm{d}\mathcal{Z}(\text{ contact Witten diagram }) \\
 & =\sum _{k}a_{k}(x_{12}^{2}) \mathcal{D}_{k,\Delta _{1}-\Delta _{2}+k,\Delta _{3},\Delta _{4}}
\end{align}
$$

equation of motion?

$$\tag{2.20}
\begin{align}
(\mathrm{Cas}^{12}-m^{2})W_{\Delta,0} & =D_{\Delta_{1},\Delta_{2},\Delta_{3},\Delta_{4}}
\end{align}
$$

## geodesic Witten diagram

the propagator is restricted to the geodesic connecting $\displaystyle{P_{1},P_{2}}$ and the geodesic connecting $\displaystyle{P_{3},P_{4}}$. we still have conformal symmetry. now we have

$$\tag{2.21}
\begin{align}
(\mathrm{Cas}^{12}-m^{2})\mathcal{A} & =0,\text{ since } Z' \text{ is restricted to the geodesic }
\end{align}
$$

...

finally we have the conclusion

$$\tag{2.21}
\begin{align}
W^{\mathrm{geo}}_{\Delta,\ell} & =g_{\Delta,\ell}
\end{align}
$$

## conformal block decomposition

consider a s-channel Witten diagram

$$\tag{2.22}
\begin{align}
W^{(s)}_{\Delta,\ell} & =g^{(s)}_{\Delta,\ell}+\sum a_{n}g^{(s)}_{\Delta_{1}+\Delta_{2}+2 n+\ell_{1}\ell}+\sum b_{n}g^{(s)}_{\Delta_{3}+\Delta_{4}+2 n+\ell_{2}\ell} \\
 & =\sum c_{n}g^{(t)}_{\Delta_{1}+\Delta_{4}+2 n+\ell \ell}+\sum d_{n}g^{(t)}_{\Delta _{2}+\Delta _{3}+2 n+\ell \ell} \\
W_{\mathrm{con}} & =\sum \bar{a}_{n}g^{(s)}_{\Delta_{1}+\Delta_{2}+2 n+\ell_{1}\ell}+\sum \bar{b}_{n}g^{(s)}_{\Delta_{3}+\Delta_{4}+2 n+\ell \ell}
\end{align}
$$

the $\displaystyle{g^{(s)}_{\Delta,\ell}}$ is called single-trace. when acting $\displaystyle{(\mathrm{Cas}^{12}-m^{2})}$, we have

$$\tag{2.23}
\begin{align}
a_{n} =\frac{\bar{a}_{n}}{C_{n,\ell}^{12}-m^{2}}, & b_{n}=\frac{\bar{b}_{n}}{C^{12}_{n,\ell}-m^{2}}
\end{align}
$$

# Mellin space formalism

Mellin space is somehow a generalization of momentum space to $\displaystyle{\mathrm{AdS}}$ space. we need a Mellin transformation instead of a Fourier transformation

$$\tag{3.1}
\begin{align}
\mathcal{D}_{\Delta_{1}\dots \Delta _{n}} & =(\text{ const })\int[\mathrm{d}\delta _{ij}]\prod _{i<j}(x_{ij}^{2})^{-\delta _{ij}}\Gamma(\delta _{ij})
\end{align}
$$

for an arbitrary correlation function, we can expand

$$\tag{3.2}
\begin{align}
\braket{ \mathcal{O}_{1}\dots \mathcal{O}_{n} } & =\int[\mathrm{d}\delta _{ij}]\prod _{i<j}(x_{ij}^{2})^{-\delta _{ij}}\Gamma(\delta _{ij})\mathcal{M}(\delta _{ij})
\end{align}
$$

where $\displaystyle{\delta _{ij}}$ are not independent, but satisfy the following constraint

$$\tag{3.3}
\begin{align} \\
\delta _{ij} & =\delta _{ji} \\
\delta _{ij} & =-\Delta _{i} \\
\sum _{j}\delta _{ij} & =0
\end{align}
$$

and the number of independent dofs is $\displaystyle{\frac{n(n-3)}{2}}$ (exactly the number of independent Mandelstam variables in $\displaystyle{d\geqslant4}$). we have $\displaystyle{\delta _{ij}=\vec{p}_{i}\cdot \vec{p}_{j}}$, where $\displaystyle{\vec{p}_{i}}$ onshell $\displaystyle{\implies \vec{p}_{i}^{2}=-\Delta _{i},\sum \vec{p}_{i}=0}$. $\displaystyle{\mathcal{M}(\delta _{ij})}$ is called the **Mellin amplitude**.

we first consider 4-pt function, we have $\displaystyle{\delta _{ij}}$ variables

$$\tag{3.4}
\begin{align}
\delta _{12} & = \frac{\Delta_{1}+\Delta_{2}-s}{2},\delta _{34}=\frac{\Delta_{3}+\Delta_{4}-s}{2} \\
\delta _{13} & = \frac{\Delta_{1}+\Delta_{3}-t}{2},\delta _{24}=\frac{\Delta_{2}+\Delta_{4}-t}{2} \\
\delta _{14} & = \frac{\Delta_{1}+\Delta_{4}-u}{2},\delta _{23}=\frac{\Delta_{2}+\Delta_{3}-u}{2} \\
\implies s+t+u & =\Delta_{1}+\Delta_{2}+\Delta_{3}+\Delta_{4}
\end{align}
$$

make a analytic continuation, $\displaystyle{(s,t,u)\to i(s,t,u)}$

$$\tag{3.5}
\begin{align}
\lim_{ s,t \to \infty } \prod _{i<j}\Gamma(\delta _{ij})\sim e^{-\pi(|s|+|t|+|u|)/2}
\end{align}
$$

so the integral (3.2) converges if the Mellin amplitude $\displaystyle{\mathcal{M}(\delta _{ij})}$ increases slower than $\displaystyle{e^{\pi(|s|+|t|+|u|)/2}}$.

---

after Mellin transform, $\displaystyle{(x_{ij}^2)^{-\delta _{ij}+\sharp}\to \frac{1}{\delta _{ij}-\sharp}}$.

---

suppose in the s-channel we commute the operator with $\displaystyle{\Delta}$ and $\displaystyle{\ell}$, there is a pole at $\displaystyle{s=(\Delta-\ell)+2m}$, where $\displaystyle{(\Delta-\ell)}$ corresponds to conformal primary operator, and $\displaystyle{m\in \mathbb{Z}_{+}}$ corresponds to the conformal descendant operator.

what is single trace what is double trace?

## Witten diagrams in Mellin space

$$\tag{3.6}
\begin{align}
\mathcal{D}_{\Delta_{1}\dots \Delta _{4}} \implies \text{ Constant Mellin Amplitude }
\end{align}
$$

a useful formula

$$\tag{3.7}
\begin{align}
\nabla ^{\mu}G^{\Delta _{1}}_{B\partial}\nabla _{\mu}G^{\Delta _{2}}_{B\partial} & =\Delta_{1}\Delta_{2}(G^{\Delta_{1}}_{B\partial}G^{\Delta_{2}}_{B\partial}-2x^{2}_{12}G^{\Delta_{1}+1}_{B\partial}G^{\Delta_{2}+1}_{B\partial})
\end{align}
$$

consider a 4-pt contact Witten diagram with two derivatives, we have

$$\tag{3.8}
\begin{align}
(\text{ Witten diagram })\propto \mathcal{D}_{\Delta_{1}\Delta_{2}\Delta_{3}\Delta_{4}}+Ax^{2}_{12}\mathcal{D}_{\Delta_{1}+1,\Delta_{2}+1,\Delta_{3}\Delta_{4}}
\end{align}
$$

where the second term gives a linear contribution in the Mellin amplitude. more generally, if we have $\displaystyle{2L}$ derivatvies, we got a polynomial in the Mellin amplitude.

consider a 4-pt exchange Witten diagram, we can expect the Mellin amplitude has a pole structure

$$\tag{3.9}
\begin{align}
\mathcal{M}_{\Delta,\ell} & =\sum ^{\infty}_{m=0} \frac{Q_{\ell,m}(t)}{s-(\Delta-\ell)-2m}+P_{\ell-1}(s,t)
\end{align}
$$

we know that

$$\tag{3.10}
\begin{align}
(\mathrm{Cas}-m^{2})W_{\Delta,\ell} & =W_{\text{cont}}
\end{align}
$$

then take a Mellin transform, we will get a difference equation

$$\tag{3.11}
\begin{align}
\text{ EOM }\circ \mathcal{M}_{\Delta,\ell} & =\mathcal{M}_{\text{cont}} \\
\end{align}
$$

the EOM will give a recursion relation for $\displaystyle{Q_{\ell,m}(t)}$. when $\displaystyle{\Delta_{1}+\Delta_{2}-\Delta+\ell \in2\mathbb{Z}_{+}}$, the recursion will truncate and we will have a finite number of $\displaystyle{\mathcal{D}}$ functions.

for simplicity, we consider $\displaystyle{\braket{ \phi \phi \phi \phi }}$

$$\tag{3.12}
\begin{align}
\mathcal{G} & =\int \frac{\mathrm{d}s\mathrm{d}t}{(4\pi i)^{2}}U^{s/2}V^{t/2-\Delta _{\phi}}\Gamma ^{2}\left( \Delta _{\phi}-\frac{s}{2} \right)\Gamma ^{2}\left( \Delta _{\phi}-\frac{t}{2} \right)\Gamma ^{2}\left( \Delta _{\phi}-\frac{u}{2} \right)\mathcal{M}(s,t) 
\end{align}
$$

when

$$\tag{3.13}
\begin{align}
\begin{cases}
U\partial _{U}\mathcal{G}\implies\frac{s}{2}\times\dots \\
V\partial _{V}\mathcal{G}\implies\frac{t}{2}\times\dots \\
U^{m}V^{n}\implies s\to s-2m,t\to t-2m
\end{cases}
\end{align}
$$

# bootstrap methods for holographic correlators

## susy

we will consider 4d $\displaystyle{\mathcal{N=4}}$ SYM, but the method is applicable to other CFTs (with susy?).

### superconformal kinematics

the superconformal algebra contains
1. usual conformal algebra $\displaystyle{D,P_{\mu},K_{\mu},M_{\mu \nu}}$, $\displaystyle{SO(4,2)}$ $\mathrm{AdS}_{5}$ isometry
2. super charge $\displaystyle{\mathcal{Q}}$, and superconformal charge $\displaystyle{\mathcal{S}}$, 
3. $\displaystyle{R}$ symmetry, $\displaystyle{SO(6)}$, $\displaystyle{S^{5}}$ isometry

superconformal multiplets are representations of superconformal algebra
- protected
- unprotected

superconformal primary satisfies $\displaystyle{K,\mathcal{S}\ket{\text{ scf primary }}=0}$. protected scf primary satisfies $\displaystyle{\mathcal{Q}\ket{\text{ scf primary }=0}}$. consider the supercommutator $\displaystyle{\left\{\mathcal{Q},\mathcal{S}\right\}\propto AR+BM+CD}$, and act on protected scf primary, we have

$$\tag{4.1}
\begin{align}
\braket{ \quad|\left\{\mathcal{Q},\mathcal{S}\right\}| \quad} =\dots=0
\end{align}
$$

so called **protection condition**.

### $\displaystyle{\mathcal{N}=4}$ SYM

consider the SUGRA limit $\displaystyle{N\to \infty,\lambda}$ fixed. the degree of freedom is KK modes of 10d SUGRA fields, which is half-BPS multiplets.

in the field theory picture, we have the following operators
1. $\displaystyle{\mathcal{O}_{k}^{I_{1}\dots I_{k}}=\mathrm{Tr}(X^{\left\{I_{1}\right.}\dots X^{\left.I_{k}\right\}})}$, corresponds to $\displaystyle{S_{k}}$ (scalar field) in the gravity side, with $\displaystyle{\Delta=k}$, and $\displaystyle{[0,k,0]}$ representation of $\displaystyle{SO(6)\cong SU(4)}$
	1. $\displaystyle{S_{k}\overset{\mathcal{Q}}{\rightarrow}A_{k,\mu}\overset{\mathcal{Q}}{\rightarrow}\varphi _{k,\mu \nu}\dots}$???

introduce

$$\tag{4.2}
\begin{align}
\mathcal{O}_{k}(x,t) & =\mathcal{O}^{I_{1}\dots I_{k}}_{k}(x)t_{I_{1}}\dots t_{I_{k}}
\end{align}
$$

where $\displaystyle{t_{I}\cdot t_{I}=0}$. consider a 4-pt function

$$\tag{4.3}
\begin{align}
G_{k_{1}\dots k_{4}}(x_{i},t_{i}) & = \braket{ \mathcal{O}_{k_{1}}\dots \mathcal{O}_{k_{4}} } 
\end{align}
$$

$\displaystyle{R}$ symmetry requires $\displaystyle{G}$ is proportional to $\displaystyle{\prod _{i<j}(t_{ij})^{a_{ij}}}$, $\displaystyle{a_{ij}\geqslant0}$, with $\displaystyle{t_{ij}=t_{i}\cdot t_{j}}$, and $\displaystyle{\sum _{j}a_{ij}=k_{i}}$. this can be done by Wick contraction...?

$$\tag{4.4}
\begin{align}
G_{k_{i}=k} & =\frac{(t_{12}t_{34})^{k}}{(x_{12}x_{34})^{k}}\mathcal{G}(u,v;\sigma,\tau)
\end{align}
$$

where $\displaystyle{u=\frac{x_{12}^{2}x_{34}^{2}}{x_{13}^{2}x_{24}^{2}},v=\frac{x_{14}^{2}x_{23}^{2}}{x_{13}^{2}x_{24}^{2}},\sigma=\frac{t_{13}t_{24}}{t_{12}t_{34}},\tau=\frac{t_{14}t_{23}}{t_{12}t_{34}}}$. fermionic generator gives scf Ward identity

$$\tag{4.5}
\begin{align}
(z\partial _{z}-\alpha \partial _{\alpha})\mathcal{G}(z,\bar{z};\alpha,\bar{\alpha})|_{\alpha=\frac{1}{z}}=0 \\
(z\leftrightarrow \bar{z},\alpha\leftrightarrow \bar{\alpha})
\end{align}
$$

traditional method needs cubic and quadratic vertices and calculates all the Witten diagrams. there are many difficults:
1. infinitely many particles
2. complicated vertices
3. proliferation of diagrams

just like offshell amplitudes in flat space.

## position space method

1. ansatz. assume the 4-pt function has the following form 
$$\tag{4.6}
\begin{align}
\mathcal{A} & =\sum _{X}\lambda _{X}Y_{R_{X}}(\sigma,\tau)(\text{ exchange Witten diagram })+(\text{ }t\text{-channel })+(\text{ }u\text{-channel })+\sum _{\text{ all possible R-symmetry }}\text{ contact Witten diagram }
\end{align}
$$

- $\displaystyle{R}$-symmetry selection rule
	- ?
- cut off?
	- for $\displaystyle{\tau}$

2. evaluate ansatz.

- $\displaystyle{R}$-symmetry polynomial???

all $\displaystyle{\mathcal{D}}$ functions can be expanded by $\displaystyle{\left\{\Phi(z,\bar{z}),\log U,\log V,1\right\}}$ as

$$\tag{.}
\begin{align}
\mathcal{A} & =R_{\Phi}\Phi+R_{U}\log U+R_{V}\log V+R_{1}
\end{align}
$$

where $\displaystyle{\Phi(z,\bar{z})}$ is defined as and satisfies

$$\tag{4.6}
\begin{align}
\phi(z,\bar{z}) & =\frac{1}{z-\bar{z}}\left( 2\mathrm{Li}_{2}(Z)-2\mathrm{Li}_{2}(\bar{z})+\log z\bar{z}\log \frac{1-z}{1-\bar{z}} \right) \\
\partial _{z}\Phi(z,\bar{z}) & =\frac{\Phi}{z-\bar{z}}+\frac{\log U}{(z-1)(z-\bar{z})}-\frac{\log V}{z(z-\bar{z})}
\end{align}
$$

3. use scf Ward identity

$$\tag{4.7}
\begin{align}
(z\partial _{z}-\alpha \partial _{\alpha})\mathcal{A}|_{\alpha=\frac{1}{z}} & =0
\end{align}
$$

to constrain the coefficients $\displaystyle{R_{\Phi},R_{U},R_{V},R_{1}}$.

## Mellin space method

the idea is quite similar.

let

$$\tag{4.8}
\begin{align}
\mathbb{I}_{1} & =(z\partial _{z}-\alpha \partial _{\alpha})\mathcal{G}|_{\alpha=\frac{1}{z}} \\
\mathbb{I}_{2} & =(\bar{z}\partial _{\bar{z}}-\alpha \partial _{\alpha})\mathcal{G}|_{\alpha=\frac{1}{\bar{z}}}
\end{align}
$$

consider a composition

$$\tag{4.9}
\begin{align}
\mathbb{I}_{1}+\mathbb{I}_{2}, \frac{\mathbb{I}_{1}-\mathbb{I}_{2}}{z-\bar{z}}
\end{align}
$$

corresponding to\frac{k _{s}}{}

$$\tag{4.10}
\begin{align}
z^{n}+\bar{z}^{n},\frac{z^{n}-\bar{z}^{n}}{z-\bar{z}}
\end{align}
$$

respectively.

1. ansatz ??

## algebraic method

$$\tag{4.11}
\begin{align}
G & = G_{\text{free}}+\mathcal{R}H
\end{align}
$$

where $\displaystyle{\mathcal{R}}$

$$\tag{4.12}
\begin{align}
\mathcal{R} & =(1-z\alpha)(1-z\bar{\alpha})(1-\bar{z}\alpha)(1-\bar{z}\bar{\alpha})t_{12}^{2}t_{23}^{2}x_{13}^{2}x_{24}^{2}
\end{align}
$$

translation to Mellin space

$$\tag{4.13}
\begin{align}
G & \to \mathcal{M} \\
G_{\text{free}} & \to 0 \\
H & \to \tilde{\mathcal{M}}
\end{align}
$$

1. scf symmetry

$$\tag{4.14}
\begin{align}
\mathcal{M} & =\tilde{\mathcal{R}}\circ \tilde{\mathcal{M}}
\end{align}
$$

2. Bose symmetry
3. analytic property. $\displaystyle{\mathcal{M}}$ has simple pole with polynomial residues.
4. asymptotic behavior of $\displaystyle{\mathcal{M}}$. $\displaystyle{\lim_{ \beta \to \infty }\mathcal{M}(\beta s,\beta t)}$ grows linearly, comes from scattering amplitude in flat spacetime.

$$\tag{4.15}
\begin{align}
\tilde{\mathcal{M}} & =\sum _{i+j+k=\varepsilon-2,0\leqslant i,j,k\leqslant\varepsilon-2} \frac{a_{ijk}\sigma ^{i}\tau ^{j}}{(s-s_{M}+2k)(t-t_{M}+2j)(\tilde{u}-u_{M}+2i)} \\
\implies a_{ijk} & =\frac{2\sqrt{ k_{1}k_{2}k_{3}k_{4} }}{i!j!k!\left(i+\frac{k _{u}}{2}\right)!\left( j+\frac{k_{t}}{2} \right)!\left( k+\frac{k _{s}}{2} \right)!}
\end{align}
$$

these three methods can be generalized to other CFTs with maximal susy, like AdS_4xS^7, AdS_7xS^4 and half maximal susy like AdS_d+1xS^3, and higher point functions, on and on.

# loop level

## unitary methods

just like unitary cut in the flat space. leading logarithmic singularity?

