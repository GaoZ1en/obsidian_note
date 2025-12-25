# question

heat kernel method is an important mathematical tool primarily used to study the spectral properties of elliptic differential operators on Riemannian manifolds. the heat kernel $\displaystyle{K(t,x,y)}$ is the fundamental solution to the heat equation and intial condition

$$\begin{align}
\partial _{t}u=\Delta u \\
u(0,x)=\delta(x-y)
\end{align}$$

for a given elliptic operator $\displaystyle{\Delta}$. on the other hand, suppose the elliptic operator has the following eigenvalue problem

$$\begin{align}
\Delta \phi _{n} & =-\lambda _{n}\phi _{n}
\end{align}$$

with eigenvalues $\displaystyle{\lambda _{n}}$ and orthonormal eigenfunctions $\displaystyle{\phi _{n}}$. then the heat kernel can be expressed as

$$\begin{align}
K(t,x,y) & =\sum _{n}e^{-\lambda _{n}t}\phi _{n}(x)\phi ^{*} _{n}(y)
\end{align}$$

this method is widely used in (Euclidean) quantum field theory. for example, the partition function may be written as

$$\begin{align}
\ln Z[\beta] & =\frac{1}{2}\int ^{\infty}_{0} \frac{\mathrm{d}t}{t} \mathrm{Tr}K^{\mathcal{M}/\mathbb{Z}}
\end{align}$$

where $\displaystyle{K^{\mathcal{M}/\mathbb{Z}}}$ is the heat kernel on the manifold $\displaystyle{\mathcal{M}}$ with periodic time $\displaystyle{\tau \sim \tau +\beta}$, which is given by

$$\begin{align}
K^{\mathcal{M}/\mathbb{Z}}(t,x,y) & =\sum _{n=-\infty}^{\infty}K^{\mathcal{M}}(t,x,\gamma ^{n}y) \\
\gamma & :\tau \to \tau +\beta
\end{align}$$

consider a simple system of a harmonic oscillator $\displaystyle{x}$ coupled to an auxiliary field $\displaystyle{\phi}$ via the interaction term $\displaystyle{-\lambda \dot{x}\phi}$. the action is given by

$$\begin{align}
S & =\int \mathrm{d}t\left( \frac{1}{2}m\dot{x}^{2}-\frac{1}{2}kx^{2}-\lambda \dot{x}\phi+\frac{1}{2}\phi ^{2} \right)
\end{align}$$

take a Wick rotation $\displaystyle{t\to -i\tau}$, the euclidean action becomes

$$\begin{align}
S_{E} & =\int \mathrm{d}\tau \left( \frac{1}{2}m\dot{x}^{2}+\frac{1}{2}kx^{2}+i\lambda \dot{x}\phi+\frac{1}{2}\phi ^{2} \right)
\end{align}$$

the problem is:
- calculate the partition function $\displaystyle{\ln Z[\beta]}$ using the heat kernel method. 
	- hint: you may turn to the basis $\displaystyle{(x,\phi +i\lambda \dot{x})}$ to diagonalize the system first, then turn back to the original basis
	- hint: you may drop out non-physical infinite constants in the partition function
	- hint: the final answer should be in terms of $\displaystyle{\Omega =\sqrt{ \frac{k}{m-\lambda ^{2}} }}$ and $\displaystyle{M=m-\lambda ^{2}> 0}$

# answer

the partition function is given by

$$\begin{align}
\ln Z[\beta] & =-\frac{1}{2}\beta \Omega-\ln(1-e^{-\beta \Omega}) + \Delta \ln Z \\
\Delta \ln Z & = -\frac{\lambda ^{2}}{6}\beta \Omega ^{3} +\frac{\lambda ^{2}}{M} \sum _{n=1}^{\infty} \int _{0}^{\infty} \frac{\mathrm{d}t}{t} \left( \frac{n^{2}\beta ^{2}}{4Mt^{2}} - \frac{1}{2t} \right) \frac{\beta}{\sqrt{ 4\pi Mt }} e^{-kt-\frac{n^{2}\beta ^{2}}{4Mt}}
\end{align}$$

the extra term $\displaystyle{\Delta \ln Z}$ comes from the quantum fluctuation of $\displaystyle{\phi}$ field.

# solution

we rewrite the Euclidean action as

$$\begin{align}
S_{E} & =\int \mathrm{d}\tau \left( \frac{1}{2}m\dot{x}^{2}+\frac{1}{2}kx^{2}+i\lambda \dot{x}\phi+\frac{1}{2}\phi ^{2} \right) \\
 & =\int \mathrm{d}\tau\left(-\frac{1}{2}X^{T}DX\right)
\end{align}$$

$$\begin{align}
\frac{1}{2}(\phi+i\lambda \dot{x})^{2}-\frac{1}{2}\lambda ^{2}\dot{x}^{2}
\end{align}$$

where

$$\begin{align}
D & =\begin{pmatrix}
-m\partial _{\tau}^{2}+k & -i\lambda \partial _{\tau} \\
i\lambda \partial _{\tau} & 1
\end{pmatrix} \\
X & =\begin{pmatrix}
x \\ \phi \end{pmatrix}
\end{align}$$

the heat kernel satisfies

$$\begin{align}
D_{\tau}K(t,\tau,\tau') & =-\partial _{t}K(t,\tau,\tau') \\
K(0,\tau,\tau') & =\delta (\tau-\tau')I_{2}
\end{align}$$

by turn to $\displaystyle{(x,\phi+i\lambda \dot{x})}$ basis, the heat kernel becomes diagonal

$$\begin{align}
K(t,\tau,\tau') & =\begin{pmatrix}
K_{x} & 0 \\
0 & K_{\tilde{\phi}} \end{pmatrix} \\
K_{x} & =\frac{1}{\sqrt{4\pi (m-\lambda ^{2})t}}e^{-kt}e^{-\frac{(\tau-\tau')^{2}}{4(m-\lambda ^{2})t}} \\
K_{\tilde{\phi}} & =e^{-t}\delta (\tau-\tau')
\end{align}$$

then turn back to $\displaystyle{(x,\phi)}$ basis, we have

$$\begin{align}
K(t,\tau,\tau') & =\begin{pmatrix}
K_{x} & -i\lambda \partial _{\tau'}K_{x} \\
-i\lambda \partial _{\tau}K_{x} & K_{\tilde{\phi}}-\lambda ^{2}\partial _{\tau}\partial _{\tau'}K_{x}\end{pmatrix}
\end{align}$$

notice that the $\displaystyle{K_{\tilde{\phi}}}$ term contributes a infinite constant to the partition function, we can ignore it in the calculation of partition function. thus we have

$$\begin{align}
\ln Z[\beta] & =\frac{1}{2}\int ^{\infty}_{0} \frac{\mathrm{d}t}{t} \mathrm{Tr}K \\
 & =\frac{1}{2}\int ^{\infty}_{0} \frac{\mathrm{d}t}{t} \int _{0}^{\beta}\mathrm{d}\tau \sum _{n=-\infty}^{\infty} (K_{x}(t,\tau,\tau'+n\beta)-\lambda ^{2}\partial _{\tau}\partial _{\tau'}K_{x}(t,\tau,\tau'+n\beta))|_{\tau'=\tau} \\
 & =\frac{1}{2}\int ^{\infty}_{0} \frac{\mathrm{d}t}{t}\sum ^{\infty}_{n=-\infty}\frac{\beta}{\sqrt{ 4\pi(m-\lambda ^{2})t }}\left( 1-\lambda ^{2}\left( \frac{1}{2(m-\lambda ^{2})t}+\frac{n^{2}\beta ^{2}}{4(m-\lambda ^{2})^{2}t^{2}} \right) \right)e^{-kt}e^{-\frac{n^{2}\beta ^{2}}{4(m-\lambda ^{2})t}} \\
 & =-\frac{1}{2}\beta \Omega-\ln(1-e^{-\beta \Omega}) -\frac{\lambda ^{2}}{6}\beta \Omega ^{3} + \Delta \ln Z \\
\Delta \ln Z & = \frac{\lambda ^{2}}{M} \sum _{n=1}^{\infty} \int _{0}^{\infty} \frac{\mathrm{d}t}{t} \left( \frac{n^{2}\beta ^{2}}{4Mt^{2}} - \frac{1}{2t} \right) \frac{\beta}{\sqrt{ 4\pi Mt }} e^{-kt-\frac{n^{2}\beta ^{2}}{4Mt}}
\end{align}$$

