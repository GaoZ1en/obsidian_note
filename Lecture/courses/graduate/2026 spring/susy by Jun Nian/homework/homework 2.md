# problem 1

prove in 4D $\displaystyle{\mathcal{N}=1}$ superspace that

$$\begin{align}
\int \mathrm{d}^{2}\theta \theta ^{2} & =1
\end{align}$$

where $\displaystyle{\mathrm{d}\theta ^{2}\equiv -\frac{1}{4}\mathrm{d}\theta ^{\alpha}\mathrm{d}\theta ^{\beta}\epsilon _{\alpha \beta}}$.

## solutiom

we have

$$\begin{align}
\int \mathrm{d}^{2}\theta \theta ^{2} & =-\frac{1}{4}\int \mathrm{d}\theta ^{\alpha}\mathrm{d}\theta ^{\beta}\theta ^{\gamma}\theta ^{\sigma}\epsilon _{\alpha \beta}\epsilon _{\gamma \sigma} \\
 & =-\int \mathrm{d}\theta ^{1}\mathrm{d}\theta ^{2}\theta ^{1}\theta ^{2} \\
 & =1
\end{align}$$

# problem 2

prove in 4D $\displaystyle{\mathcal{N}=1}$ superspace that

$$\begin{align}
\int \mathrm{d}^{2}\theta(\chi \theta)(\psi \theta) & =-\frac{1}{2}(\chi \psi)
\end{align}$$

where $\displaystyle{\chi}$ and $\displaystyle{\psi}$ are 2-component spinors

## solution

$$\begin{align}
\int \mathrm{d}^{2}\theta(\chi \theta)(\psi \theta) & =-\frac{1}{4}\int \mathrm{d}\theta ^{\alpha}\mathrm{d}\theta ^{\beta}\varepsilon _{\alpha \beta}\left(\chi _{\gamma}\theta ^{\gamma}\right)(\psi _{\delta}\theta ^{\delta}) \\
 & =-\frac{1}{2}\int \mathrm{d}\theta ^{1}\mathrm{d}\theta ^{2}(\chi_{1}\theta ^{1}+\chi_{2}\theta ^{2})(\psi_{1}\theta ^{1}+\psi_{2}\theta ^{2}) \\
 & =-\frac{1}{2}\int \mathrm{d}\theta ^{1}\mathrm{d}\theta ^{2}(\chi_{1}\theta ^{1})(\psi_{2}\theta ^{2})+\frac{1}{2}\int \mathrm{d}\theta ^{2}\mathrm{d}\theta ^{1}(\chi_{2}\theta ^{2})(\psi_{1}\theta ^{1}) \\
 & =-\frac{1}{2}(\chi_{1}\psi_{2}-\chi_{2}\psi_{1})=-\frac{1}{2}(\chi \psi)
\end{align}$$

# problem 3

for the superpotential

$$\begin{align}
W(\Phi) & =\frac{1}{2}m\Phi ^{2}+\frac{1}{3}g\Phi ^{3}
\end{align}$$

write down the explicit form of the interaction terms in components, where $\displaystyle{\Phi}$ is a chiral superfield

## solution

we have

$$\begin{align}
\mathcal{L}_{W} & =\int \mathrm{d}^{2}\theta W(\Phi)+\mathrm{h.c.} \\
 & =FW'(\phi)-\frac{1}{2}W''(\phi)\psi \psi+\mathrm{h.c.} \\
 & =F(m\phi +g\phi ^{2})-\frac{1}{2}(m+2g\phi)\psi \psi+\mathrm{h.c.} \\
 & =-\frac{m}{2}(\psi \psi+\bar{\psi }\bar{\psi})-g(\phi \psi \psi+\phi ^{*}\bar{\psi }\bar{\psi})+F(m\phi+g\phi ^{2})+F^{*}(m\phi ^{*}+g\phi ^{*2})
\end{align}$$

integrate out the auxiliary field $\displaystyle{F}$ in the Lagrangian that contains $\displaystyle{F}$.

$$\begin{align}
\mathcal{L}_{F} & =F^{*}F+FW'(\phi)+F^{*}W'(\phi)^{*}
\end{align}$$

we obtain

$$\begin{align}
\mathcal{L}_{F} & =-|W'(\phi)|^{2}=-|m\phi+g\phi ^{2}|^{2}
\end{align}$$

therefore the interaction Lagrangian is given by

$$\begin{align}
\mathcal{L}_{\text{on-shell,int}} & =-g(\phi \psi \psi+\phi ^{*}\bar{\psi}\bar{\psi})-g^{2}|\phi ^{2}|^{2}-mg(\phi \phi ^{*2}+\phi ^{*}\phi ^{2})
\end{align}$$

# problem 4

the ISS model has the following superpotential

$$\begin{align}
W & =h\operatorname{Tr}\bar{q}\Phi q-h\mu ^{2}\operatorname{Tr}\Phi \\
& =h \bar{q}^{i}_{a}\Phi ^{j}_{~i}q^{a}_{j}-h\mu ^{2}\Phi ^{i}_{~i} 
\end{align}$$

here $\displaystyle{h}$ and $\displaystyle{\mu}$ are two constant parameters, while $\displaystyle{q,\bar{q}}$ and $\displaystyle{\Phi}$ are three chiral superfields with the color index $\displaystyle{a=1,\dots,N_{c}}$ and the flavor indices $\displaystyle{i,j=1,\dots,N_{f}}$. these color and flavor indices label the components of superfields, and different components can be viewed as independent fields. derive the scalar potential in this case, and discuss if SUSY is spontaneously broken for $\displaystyle{N_{c}<N_{f}}$.

## solution

write

$$\begin{align}
F^{*}_{\Phi ^{i}_{~j}} & =-\frac{\partial W}{\partial \Phi ^{i}_{~j}}=-h(\bar{q}^{j}_{a}q^{a}_{i}-\mu ^{2}\delta ^{j}_{i}) \\
F^{*}_{q^{a}_{i}} & =-\frac{\partial W}{\partial q^{a}_{i}}=h\bar{q}^{i}_{b}\Phi ^{b}_{~a} \\
F^{*}_{\bar{q}^{i}_{a}} & =-\frac{\partial W}{\partial \bar{q}^{i}_{a}}=-h\Phi ^{a}_{~i}q^{i}_{b}
\end{align}$$

then the scalar potential is given by

$$\begin{align}
V & =\sum _{i,j}|F_{\Phi ^{i}_{~j}}|^{2}+\sum _{a,i}|F_{q^{a}_{i}}|^{2}+\sum _{a,i}|F_{\bar{q}^{i}_{a}}|^{2}+V_{D} \\
 & =|h|^{2}\mathrm{Tr}[(\bar{q}q-\mu ^{2}\mathbb{I}_{N_{f}})(\bar{q}q-\mu ^{2}\mathbb{I}_{N_{f}})]+|h|^{2}\mathrm{Tr}[(\bar{q}\Phi)^{\dagger}(\bar{q}\Phi)]+|h|^{2}\mathrm{Tr}[(\Phi q)^{\dagger}(\Phi q)]
\end{align}$$

non-SSB SUSY requires $\displaystyle{F}$-terms vanishes. in particular, $\displaystyle{F_{\Phi}}$ vanishing requires

$$\begin{align}
\bar{q}q=\mu ^{2}\mathbb{I}_{N_{f}}
\end{align}$$

since $\displaystyle{\mathrm{rank}\bar{q}q\leqslant N_{c}}$. if $\displaystyle{\mu ^{2}\neq 0}$, the rank of RHS is $\displaystyle{N_{f}}$. so when $\displaystyle{N_{c}<N_{f}}$, the above eq don't hold. thus we must have SSB SUSY. 