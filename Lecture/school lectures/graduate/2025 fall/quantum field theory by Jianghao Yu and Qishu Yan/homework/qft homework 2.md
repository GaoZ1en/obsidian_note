the content of homework 1 has been included in Problem 1 of homework 2.

# problem 1

from

$$\begin{align}
[J_{\mu \nu},J_{\nu \rho}] & =i(\eta ^{\mu \rho}J^{\nu \sigma}+\eta ^{\nu \sigma}J^{\mu \rho}-\eta ^{\mu \sigma}J^{\nu \rho}-\eta ^{\nu \rho}J^{\mu \sigma}) \\
[P^{\mu},J^{\rho \sigma}] & =i(\eta ^{\mu \sigma}P^{\rho}-\eta ^{\mu \rho}P^{\sigma}) \\
[P^{\mu},P^{\rho}] & =0
\end{align}$$

derive

$$\begin{align}
[J_{i},J_{j}] & =i\varepsilon _{ijk}J_{k} \\
[J_{i},K_{j}] & =i\varepsilon _{ijk}K_{k} \\
[K_{i},K_{j}] & =-i\varepsilon _{ijk}J_{k} \\
[J_{i},P_{j}] & =i\varepsilon _{ijk}P_{k} \\
[K_{i},P_{j}] & =iH\delta _{ij} \\
[J_{i},H] & =[P_{i},H]=[H,H]=0 \\
[K_{i},H] & =iP_{i}
\end{align}$$

where $\displaystyle{J_{i}=\frac{1}{2}\varepsilon _{ijk}J^{jk}}$ or $\displaystyle{J^{ij}=\varepsilon _{ijk}J_{k}}$, $\displaystyle{K_{i}=J^{i0}}$ and $\displaystyle{H=P^{0}}$.

*sol.*

$$\begin{align}
[J_{i},J_{j}] & =\frac{1}{4}\varepsilon _{ikl}\varepsilon _{jmn}[J^{kl},J^{mn}] \\
 & =\frac{1}{4}i\varepsilon _{ikl}\varepsilon _{jmn}(\delta ^{km}J^{ln}+\delta ^{ln}J^{km}-\delta ^{lm}J^{kn}-\delta ^{kn}J^{lm}) \\
 & =i\varepsilon _{mli}\varepsilon _{mnj}J^{ln} \\
 & =i(\delta _{ln}\delta _{ij}-\delta _{lj}\delta _{in})J^{ln} \\
 & =iJ^{ij}=i\varepsilon _{ijk}J_{k}
\end{align}$$

$$\begin{align}
[J_{i},K_{j}] & =\frac{1}{2}\varepsilon _{ikl}[J^{kl},J^{j0}] \\
 & =\frac{i}{2}\varepsilon _{ikl}(\delta ^{kj}J^{l0}-\delta ^{lj}J^{k0}) \\
 & =i\varepsilon _{ijl}J^{l 0}=i\varepsilon _{ijk}K_{k}
\end{align}$$

$$\begin{align}
[K_{i},K_{j}] & =[J^{i0},J^{j 0}] \\
 & =i\eta ^{00}J^{ij} \\
 & =-i\varepsilon _{ijk}J_{k}
\end{align}$$

$$\begin{align}
[J_{i},P_{j}] & =\frac{1}{2}\varepsilon _{ikl}[J^{kl},P^{j}] \\
 & =\frac{i}{2}\varepsilon _{ikl}(\delta ^{jk}P^{l}-\delta ^{jl}P^{k}) \\
 & =i\varepsilon _{ijk}P_{k}
\end{align}$$

$$\begin{align}
[K_{i},P_{j}] & =[J^{i0},P^{j}] \\
 & =i\delta ^{ji}P^{0}=i\delta _{ij}H
\end{align}$$

$$\begin{align}
[J_{i},H] & =\frac{1}{2}\varepsilon _{ikl}[J^{kl},P^{0}] \\
 & =0
\end{align}$$

$$\begin{align}
[P^{\mu},H] & =[P^{\mu},P^{0}]=0 \\
\implies[P_{i},H] & =[H,H]=0
\end{align}$$

$$\begin{align}
[K_{i},H] & =[J^{i0},P^{0}] \\
 & =-i\eta ^{00}P^{i} \\
 & =iP_{i}
\end{align}$$

# problem 2

define

$$\begin{align}
L_{i} & =\frac{1}{2}(J_{i}+iK_{i}) \\
R_{i} & =\frac{1}{2}(J_{i}-iK_{i})
\end{align}$$

show $\displaystyle{L_{i}}$ and $\displaystyle{R_{i}}$ form two $\displaystyle{\mathrm{SU}(2)}$ algebra, i.e.

$$\begin{align}
[L_{i},L_{j}] & =i\varepsilon _{ijk}L_{k} \\
[R_{i},R_{j}] & =i\varepsilon _{ijk}R_{k} \\
[L_{i},R_{j}] & =0
\end{align}$$

*sol.*

$$\begin{align}
[L_{i},L_{j}] & =\frac{1}{4}[J_{i}+iK_{i},J_{j}+iK_{j}] \\
 & =\frac{1}{4}i\varepsilon _{ijk}J_{k}-\frac{1}{4}\varepsilon _{ijk}K_{k}+\frac{1}{4}\varepsilon _{jik}K_{k}+\frac{1}{4}i\varepsilon _{ijk}J_{k} \\
 & =\frac{i}{2}\varepsilon _{ijk}(J_{k}+iK_{k}) \\
 & =i\varepsilon _{ijk}L_{k} \\
[R_{i},R_{j}] & =\frac{1}{4}[J_{i}-iK_{i},J_{j}-iK_{j}] \\
 & =\frac{1}{4}i\varepsilon _{ijk}J_{k}+\frac{1}{4}\varepsilon _{ijk}K_{k}-\frac{1}{4}\varepsilon _{jik}K_{k}+\frac{1}{4}i\varepsilon _{ijk}J_{k} \\
 & =\frac{i}{2}\varepsilon _{ijk}(J_{k}-iK_{k}) \\
 & =i\varepsilon _{ijk}R_{k} \\
[L_{i},R_{j}] & =\frac{1}{4}[J_{i}+iK_{i},J_{j}-iK_{j}] \\
 & =\frac{1}{4}i\varepsilon _{ijk}J_{k}+\frac{1}{4}\varepsilon _{ijk}K_{k}+\frac{1}{4}\varepsilon _{jik}K_{k}-\frac{1}{4}i\varepsilon _{ijk}J_{k} \\
 & =0
\end{align}$$
