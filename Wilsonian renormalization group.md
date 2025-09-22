consider a single scalar in 4d with action

$$\begin{align}
S[\phi] & =\int \mathrm{d}^{D}x\left(-\frac{1}{2}\partial _{\mu}\phi \partial ^{\mu}\phi-\frac{1}{2}m^{2}\phi ^{2}-\frac{\lambda}{4!}\phi ^{4}\right)
\end{align}$$

first consider 2-point function. the connected 2-point function is given byddd

$$\begin{align}
G^{(2)}_{\mathrm{con}}(x_{1},x_{2}) & = \frac{\delta}{i\delta J(x_{1})} \frac{\delta}{i\delta J(x_{2})} iW[J]|_{J=0} \\
 & =\left( \frac{\delta}{i\delta \varphi(x_{1})} \frac{\delta}{i\delta \varphi(x_{2})}i\Gamma[\varphi]|_{\varphi=0}\right)^{-1}
\end{align}$$

at tree level we have

$$\begin{align}
\Gamma ^{(2)}_{\text{tree}}(p) & =-i(p^{2}+m^{2})
\end{align}$$

and total 1PI 2-point function is then given by

$$\begin{align}
\Gamma ^{(2)}(p) & =-i(p^{2}+m^{2})+\Gamma ^{(2)}_{\text{loops}}(p) \\
\implies G^{(2)}_{\text{con}}(x_{1},x_{2}) & =\frac{-i}{p^{2}+m^{2}+i\Gamma ^{(2)}_{\text{loops}}(p)}
\end{align}$$

at 1-loop

$$\begin{align}
\Gamma ^{(2)}_{\text{1-loop}} & =(\text{ tadpole diagram }) \\
 & =-\frac{\lambda}{2}\int \frac{\mathrm{d}^{D}k}{(2\pi)^{D}} \frac{1}{k^{2}+m^{2}-i\varepsilon} \\
 & =-\frac{i\lambda}{4} \int \frac{\mathrm{d}^{d}k}{(2\pi)^{d}}  \frac{1}{\sqrt{ \vec{k}^{2}+m^{2} }}
\end{align}$$

when $\displaystyle{d>2}$, the integration diverges, since the integrand has the following asymptotic behavior $\displaystyle{k^{d-2}}$. one way to handle this is cutoff UV degrees of freedom at some scale $\displaystyle{\Lambda _{0}}$, as

$$\begin{align}
\frac{i\lambda}{4}\int _{|k|<\Lambda_{0}} \frac{\mathrm{d}^{d}k}{(2\pi)^{d}} \frac{1}{\sqrt{ \vec{k}^{2}+m^{2} }}
\end{align}$$

but the method here breaks the Lorentz invariance. Wick rotation fix this. define

$$\begin{align}
k _{D} & =-ik_{0}
x_{D}=\tau & =it
\end{align}$$

and cutoff $\displaystyle{|k _{\text{E}}|<\Lambda_{0}}$, where $\displaystyle{k _{\text{E}}}$ is the Euclidean momentum. as a summary, our procudeure is as follows

1. Wick rotate to Euclidean space
2. impose $\displaystyle{|k _{\mathrm{E}}|<\Lambda _{0}}$ to perform integrals
3. Wick rotate back to Minkowski spacetime

# integrating out UV modes

let us consider the case when our momenta of interest $\displaystyle{p}$ are far below the cutoff $\displaystyle{|p|\ll \Lambda _{0}}$, and there must be a cutoff $\displaystyle{\Lambda}$ that, despite being smaller than $\displaystyle{\Lambda_{0}}$ it still satisfies $\displaystyle{|p|\ll \Lambda}$. with this in mind, we split our field into two components: the useless UV modes $\displaystyle{\phi ^{+}}$, that

$$\begin{align}
\tilde{\phi}^{+}(p) & =\begin{cases}
0 & |p|>\Lambda_{0} \\
\tilde{\phi}(p) & \Lambda< |p|<\Lambda_{0} \\
0 & |p|<\Lambda
\end{cases}
\end{align}$$

and useful IR modes $\displaystyle{\phi ^{-}}$, that

$$\begin{align}
\tilde{\phi}^{-}(p) & =\begin{cases}
0 & |p|>\Lambda \\
\tilde{\phi}(p) & |p|<\Lambda
\end{cases}
\end{align}$$

and also split the sources in the same way to get $\displaystyle{J^{\pm}}$, since $\displaystyle{\phi ^{+}}$ cannot appear in the external correlators we set $\displaystyle{J^{+}=0}$. the generating functional

$$\begin{align}
Z & =\int \mathcal{D}\phi ^{-}\mathcal{D}\phi ^{+}e^{-S_{\Lambda_{0}}[\phi ^{+}+\phi ^{-}]-\int J^{-}\phi ^{-}}
\end{align}$$

to do this we define the low-energy effective action as

$$\begin{align}
e^{-S_{\Lambda}[\phi ^{-}]} & =\int \mathcal{D}\phi ^{+}e^{-S_{\Lambda_{0}}[\phi ^{+}+\phi ^{-}]}
\end{align}$$

in momentum space

$$\begin{align}
S[\tilde{\phi}] & =\int \frac{\mathrm{d}^{D}\phi}{(2\pi)^{D}} \frac{1}{2}\tilde{\phi}(-p)(p^{2}+m_{0}^{2})\tilde{\phi}(p)+\frac{\lambda_{0}}{4!}\int \prod ^{4}_{i=1}\left( \frac{d^{D}p_{i}}{(2\pi)^{D}}\tilde{\phi}(p_{i}) \right)\delta ^{(D)}\left(\sum ^{4}_{i=1}p_{i}\right)
\end{align}$$

$$\begin{align}
S_{\Lambda_{0}}[\phi ^{+}+\phi ^{-}] & =S_{\mathrm{free}}[\phi ^{+}]+S_{\mathrm{free}}[\phi ^{-}]+S_{\mathrm{int}}[\phi ^{+},\phi ^{-}] \\
S_{\mathrm{free}}[\phi] & =\int \mathrm{d}^{D}x \frac{1}{2}\left((\nabla \phi)^{2}+m_{0}^{2}\phi ^{2}\right) \\
S_{\mathrm{int}}[\phi ^{+},\phi ^{-}] & =\int \mathrm{d}^{D}x \frac{\lambda_{0}}{4!}(\phi ^{+}+\phi ^{-})^{4}
\end{align}$$

$$\begin{align}
e^{-\Delta S_{\Lambda}(\phi ^{-})} & =\int \mathcal{D}\phi ^{+}e^{-S_{\mathrm{free}}[\phi ^{+}]-S_{\mathrm{int}}[\phi ^{+},\phi ^{-}]}
\end{align}$$

and after doing this path integral, we have the effective action

$$\begin{align}
S_{\Lambda}[\phi ^{-}] & =\int \mathrm{d}^{D}x\left(\frac{1}{2}Z'_{\phi}(\nabla \phi ^{-})^{2}+\frac{1}{2}m'^{2}(\phi ^{-})^{2}+\frac{\lambda'}{4!}(\phi ^{-})^{4}+\dots\right)
\end{align}$$

and rescale

$$\begin{align}
x\to x' & =\frac{\Lambda}{\Lambda_{0}}x \\
p\to p' & =\frac{\Lambda_{0}}{\Lambda}p \\
\phi'(x') & =\sqrt{ Z_{\phi} }\phi ^{-}(x) \\
Z_{\phi} & =\left( \frac{\Lambda_{0}}{\Lambda} \right)^{D-2}Z_{\phi}'
\end{align}$$

then the final action is

$$\begin{align}
S_{\Lambda}[\phi'] & =\int \mathrm{d}^{D}x'\left(\frac{1}{2}(\nabla'\phi')^{2}+\frac{1}{2}m^{2}(\Lambda)\phi'^{2}+\frac{\lambda _{4}(\Lambda)}{4!}\phi'^{4}+\dots\right)
\end{align}$$

this whole procedure is called the renormalization group. as a summarize

1. integrate out the high energy degrees of freedom
2. fix spacetime integral by rescaling the spacetime variables
3. fix the normalization of fields

renormalization group generates a flow in the space of theory, and two theory on the same flowline are actually the same theory

$$\begin{align}
Z(\Lambda_{0},g_{0,a}) & =Z(\Lambda,g_{a}(\Lambda))
\end{align}$$

# Callan-Symanzik equations

what we wrote above is the integral version of the RG flow, and we can also write differential equations that describe the same process. take a differential

$$\begin{align}
\Lambda\frac{\mathrm{d}Z(\Lambda,g_{a}(\Lambda))}{\mathrm{d}\Lambda} & =\left( \Lambda \frac{\partial}{\partial \Lambda}+\beta _{a} \frac{\partial}{\partial g_{a}} \right)Z(\Lambda,g_{a}(\Lambda))=0
\end{align}$$

where we substituted $\displaystyle{\beta _{a}=\Lambda \frac{\partial g_{a}}{\partial \Lambda}}$, called the $\displaystyle{\beta}$-function of the coupling $\displaystyle{g_{a}}$. to figure out what happens for correlators we introduce sources

$$\begin{align}
G^{(n)}(\Lambda_{0};x_{1},\dots,x_{n}) & =\prod ^{n}_{j=1}\left(\frac{\delta}{i\delta J^{-}(x_{j})}\right)Z[J^{-};\Lambda_{0},g_{0,a}]\Big|_{J^{-}=0} \\
 & =\prod ^{n}_{j=1}\left(\frac{\delta}{i\delta J^{-}(x_{j})}\right)\int \mathcal{D}\phi ^{-}e^{-S_{\Lambda}[\phi ^{-}]-\int \mathrm{d}^{D}xJ^{-}\phi ^{-}}\Big|_{J^{-}=0} \\
 & =\prod ^{n}_{j=1}\left(\frac{\delta}{i\delta J^{-}(x_{j})}\right)\int \mathcal{D}\phi ^{-}e^{-S_{\Lambda}[\phi ^{-}]-\int \mathrm{d}^{D}xJ^{-} Z_{\phi}^{-1/2}\phi'\left( \frac{\Lambda}{\Lambda_{0}}x \right)}\Big|_{J^{-}=0} \\
 & =\int \mathcal{D}\phi ^{-}e^{-S_{\Lambda}[\phi ^{-}]}Z_{\phi}^{-n/2}\prod ^{n}_{j=1}\phi'\left(\frac{\Lambda}{\Lambda_{0}}x_{j}\right) \\
 & =Z_{\phi}^{-n/2}G^{(n)}(\Lambda;x_{1}',\dots x_{n}')
\end{align}$$

then take a differential of $\displaystyle{\Lambda}$, we have the Callan-Symanzik equation

$$\begin{align}
\left( \Lambda \frac{\partial}{\partial \Lambda}+\beta _{a} \frac{\partial}{\partial g_{a}}+n\gamma _{\phi} \right)G^{(n)}\left(\Lambda;\frac{x_{1}}{\Lambda},\dots,\frac{x_{n}}{\Lambda}\right) & =0
\end{align}$$

where

$$\begin{align}
\gamma _{\phi} & =-\frac{1}{2}\Lambda \frac{\partial \log Z_{\phi}(\Lambda)}{\partial \Lambda}
\end{align}$$

is a sort of $\displaystyle{\beta}$-function for the field rescaling, also called the anomalous dimension.

# computing RG flows

$$\begin{align}
S_{\Lambda}[\phi ^{-}] & =\int _{|p|<\Lambda} \frac{\mathrm{d}^{D}p}{(2\pi)^{D}} \frac{1}{2}\tilde{\phi}^{-}(-p)(p^{2}+m_{0}^{2})\tilde{\phi}^{-}(p) \\
 & =\int _{|p'|<\Lambda_{0}} \frac{\mathrm{d}^{D}p'}{(2\pi)^{D}} \frac{1}{2}\tilde{\phi}^{-}(-p)\left( \left( \frac{\Lambda}{\Lambda_{0}} \right)^{2}p'^{2}+m_{0}^{2} \right)\tilde{\phi}^{-}(p) \\
S_{\Lambda}[\phi'] & =\int _{|p'|<\Lambda_{0}} \frac{\mathrm{d}^{D}p'}{(2\pi)^{D}} \frac{1}{2}\tilde{\phi}'(-p')\left(p'^{2}+\left( \frac{\Lambda_{0}}{\Lambda} \right)^{2}m_{0}^{2}\right)\tilde{\phi}'(p') \\
\implies \beta _{m^{2}} & =\Lambda \frac{\mathrm{d}m^{2}(\Lambda)}{\mathrm{d}\Lambda} \\
 & =-2m^{2}(\Lambda)
\end{align}$$

this means $\displaystyle{m^{2}}$ increases in the IR as we lower the cutoff. and $\displaystyle{m^{2}=0}$ this whole procedure has no effect. we say that this is a fixed point. this particular one is called the Gaussian fixed point.

add interactions. consider a generic interactions with $\displaystyle{n}$ powers of the field and $\displaystyle{r}$ derivatives

$$\begin{align}
\int \prod ^{n}_{j=1} \left(\frac{\mathrm{d}^{D}p_{j}}{(2\pi)^{D}} p_{j}^{r_{j}}\tilde{\phi}(p_{j})\right)\lambda _{0,n,j}\delta ^{(D)}\left(\sum ^{n}_{i=1}p_{i}\right)
\end{align}$$

such that $\displaystyle{\sum _{i}r_{i}=r}$. then

$$\begin{align}
\int \prod ^{n}_{j=1} \left(\frac{\mathrm{d}^{D}p_{j}}{(2\pi)^{D}} p_{j}^{r_{j}}\tilde{\phi}(p_{j})\right)\lambda _{0,n,j}\delta ^{(D)}\left(\sum ^{n}_{i=1}p_{i}\right) & =\int \prod ^{n}_{j=1}\left(\left(\frac{\Lambda}{\Lambda_{0}}\right)^{D}\frac{\mathrm{d}^{D}p_{j}'}{(2\pi)^{D}}\left(\frac{\Lambda}{\Lambda_{0}}\right)^{r_{j}}p'^{r_{j}}_{j}\left(\frac{\Lambda_{0}}{\Lambda}\right)^{(D+2)/2}\tilde{\phi}(p_{j}')\right)\lambda _{0,n,j}\left(\frac{\Lambda_{0}}{\Lambda}\right)^{D}\delta ^{(D)}\left(\sum ^{n}_{i=1}p_{i}'\right) \\
 & =\int \prod ^{n}_{j=1}\left(\frac{\mathrm{d}^{D}p_{j}'}{(2\pi)^{D}}p'^{r_{j}}_{j}\tilde{\phi}(p_{j}')\right)\lambda _{n,j}(\Lambda)\delta ^{(D)}\left(\sum ^{n}_{i=1}p_{i}'\right) \\
\implies\lambda _{n,j}(\Lambda) & =\left( \frac{\Lambda}{\Lambda_{0}} \right)^{(n/2-1)D+r-n}\lambda _{0,n,r} \\
\implies \beta _{\lambda _{n,r}} & =-\left( \left( 1-\frac{n}{2} \right)D+n-r \right)\lambda _{n,r}
\end{align}$$

here $\displaystyle{[\lambda _{n,r}]=\left( 1-\frac{n}{2} \right)D+n-r}$ is the mass dimension of coupling constant...

![[Attachments/Pasted image 20250922152737.png]]

we can see that for high dimensions all interactions shrink in the IR. this suggests they are not very important. we call couplings which shrink in the IR irrelevant.

for low dimensions, we can still add enough derivatives to make any interaction irrelevant, but there is an infinite number of interactions which grow in the IR. we cannot get rid of these interactions using RG so we call them relevant.

and for 3- and 4-dimensional cases we have few relevant interactions, infinitely many irrelevant interactions, and few which appear to not change under RG, which we call marginal relevant. and this is why we spent so long with $\displaystyle{\phi ^{4}}$ theory. for 4 dimensions it is actually the most generic theory at low energies.

at an arbitrary fixed point RG flow does not do anything so the $\displaystyle{\beta}$-function vanish. around this point, whey will generically be non-zero but we can linearize them and them diagonalize in the space of all couplings to arrive at

$$\begin{align}
\beta _{a} & =-\Delta _{a}g_{a}
\end{align}$$

in the vicinity of this other fixed point we can still talk of marginal, relevant and irrelevant couplings classifying if deforming in that direction will bring us away or back towards our fixed point of origin. more explicitly

1. $\displaystyle{\beta _{a}>0\iff \Delta _{a}<0}$: irrelevant deformation
2. $\displaystyle{\beta _{a}<0\iff \Delta _{a}>0}$: relevant deformation
3. $\displaystyle{\beta _{a}=0\iff \Delta _{a}=0}$: marginal deformation

quite importantly, it is fairly generic that there will be an infinite number of irrelevant operators and only a handful of marginal or relevant operators.

the difference between the scaling dimension $\displaystyle{\Delta _{a}}$ and the ordinary mass dimension is often called the anomalous dimension. 

# $\displaystyle{\phi ^{4}}$ theory

in this part we will compute $\displaystyle{\beta}$ function for $\displaystyle{m^{2}(\Lambda)}$ and $\displaystyle{\lambda(\Lambda)}$.

$$\begin{align}
(\text{ tadpole diagram }) & =-\frac{\lambda_{0}}{2}\int _{\Lambda}^{\Lambda_{0}} \frac{\mathrm{d}^{4}k}{(2\pi)^{4}} \frac{1}{k^{2}+m_{0}^{2}} \\
 & =-\frac{\lambda_{0}\mathrm{Vol}(S^{3})}{2(2\pi)^{4}}\int _{\Lambda}^{\Lambda_{0}}\mathrm{d}k \frac{k^{3}}{k^{2}+m_{0}^{2}} \\
 & =-\frac{\lambda_{0} \pi ^{2}}{2(2\pi)^{4}} \int _{\Lambda}^{\Lambda_{0}} \mathrm{d}k^{2} \left( 1-\frac{m_{0}^{2}}{k^{2}+m_{0}^{2}} \right) \\
 & =-\frac{\lambda_{0}}{32\pi ^{2}}\left(\Lambda ^{2}_{0}-\Lambda ^{2}-m_{0}^{2}\ln \frac{\Lambda_{0}^{2}+m_{0}^{2}}{\Lambda ^{2}+m_{0}^{2}}\right) \\
\implies m'^{2}(\Lambda) & =m_{0}^{2}+\frac{\lambda_{0}}{32\pi ^{2}}\left(\Lambda_{0}^{2}-\Lambda ^{2}+m_{0}^{2}\ln \frac{\Lambda ^{2}+m_{0}^{2}}{\Lambda_{0}^{2}+m_{0}^{2}}\right)
\end{align}$$

knowing that $\displaystyle{g_{2}=\Lambda ^{-2}m'^{2}}$

$$\begin{align}
\beta _{2} & =\Lambda \frac{\partial g_{2}}{\partial \Lambda} \\
 & =-2\Lambda ^{-2}m_{0}^{2}+\frac{\lambda_{0}}{32\pi ^{2}}\Lambda\frac{\partial}{\partial \Lambda}\left(\frac{\Lambda_{0}^{2}}{\Lambda ^{2}}-1+\frac{m_{0}^{2}}{\Lambda ^{2}}\ln \frac{\Lambda ^{2}+m_{0}^{2}}{\Lambda_{0}^{2}+m_{0}^{2}}\right) \\
 & =-2\Lambda ^{-2}m_{0}^{2}+\frac{\lambda_{0}}{16\pi ^{2}}\left(\frac{m_{0}^{2}}{\Lambda ^{2}+m_{0}^{2}}-\frac{\Lambda_{0}^{2}}{\Lambda ^{2}}-\frac{m_{0}^{2}}{\Lambda ^{2}}\ln \frac{\Lambda ^{2}+m_{0}^{2}}{\Lambda_{0}^{2}+m_{0}^{2}}\right) \\
 & =-2g_{2}-\frac{\lambda_{0}}{16\pi ^{2}} \frac{1}{1+\Lambda ^{-2}m_{0}^{2}} \\
 & \approx-2g_{2}- \frac{1}{16\pi ^{2}} \frac{g_{4}}{1+g_{2}}
\end{align}$$

here we keep the leading order, and subtitute $\displaystyle{g_{4}=\lambda_{0},g_{2}=\Lambda ^{-2}m_{0}^{2}}$. 

then we consider the 1-loop vertex

$$\begin{align}
(\text{ 1-loop vertex })= & -\lambda_{0}+\frac{\lambda_{0}^{2}}{2}\int _{\Lambda}^{\Lambda_{0}} \frac{\mathrm{d}^{4}k}{(2\pi)^{4}}\left( \frac{1}{k^{2}+m_{0}^{2}} \frac{1}{(k+p_{1}+p_{2})^{2}+m_{0}^{2}}+\frac{1}{k^{2}+m_{0}^{2}} \frac{1}{(k+p_{1}+p_{3})^{2}+m_{0}^{2}}+ \frac{1}{k^{2}+m_{0}^{2}} \frac{1}{(k+p_{1}+p_{4})^{2}+m_{0}^{2}}\right) \\
\approx & -\lambda_{0}+\frac{3\lambda_{0}^{2}}{2}\int _{\Lambda}^{\Lambda_{0}} \frac{\mathrm{d}^{4}k}{(2\pi)^{4}} \frac{1}{(k^{2}+m_{0}^{2})^{2}} \\
= & -\lambda_{0}+\frac{3\lambda_{0}^{2}}{32\pi ^{2}}\int _{\Lambda ^{2}}^{\Lambda ^{2}_{0}} \mathrm{d}x \frac{x}{(x+m_{0}^{2})^{2}} \\
= & -\lambda_{0}+\frac{3\lambda_{0}^{2}}{32\pi ^{2}}\left(-\frac{m_{0}^{2}}{\Lambda ^{2}+m_{0}^{2}}+\frac{m_{0}^{2}}{\Lambda_{0}^{2}+m_{0}^{2}}+\log \frac{\Lambda_{0}^{2}+m_{0}^{2}}{\Lambda ^{2}+m_{0}^{2}}\right) \\
\implies \lambda' & =\lambda_{0}\left(1-\frac{3\lambda_{0}}{32\pi ^{2}}\left(\frac{m_{0}^{2}}{\Lambda_{0}^{2}+m_{0}^{2}}-\frac{m_{0}^{2}}{\Lambda ^{2}+m_{0}^{2}}+\log \frac{\Lambda_{0}^{2}+m_{0}^{2}}{\Lambda ^{2}+m_{0}^{2}}\right)\right) \\
\implies \beta _{4} & =\Lambda \frac{\mathrm{d}\lambda'}{\mathrm{d}\Lambda} \\
 & =\frac{3\lambda_{0}^{2}}{16\pi ^{2}}\frac{\Lambda ^{4}}{(\Lambda ^{2}+m_{0}^{2})^{2}} \\
 & =\frac{3g_{4}^{2}}{16\pi ^{2}(1+g_{2})^{2}}
\end{align}$$

