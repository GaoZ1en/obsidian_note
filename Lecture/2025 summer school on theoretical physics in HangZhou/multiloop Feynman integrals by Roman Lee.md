# references

- textbooks
	- Feynman Integrals: A Comprehensive Treatment for Students and Researchers by Weinzierl
		- 2201.03593
	- Linear differential equations in the complex domain by Haraoka
		- https://link.springer.com/content/pdf/10.1007/978-3-030-54663-2.pdf
- papers
	- Chetyrkin, K. G. and Tkachov, F. V. (1981). Integration by parts: The algorithm to calculate β-functions in 4 loops, Nucl. Phys. B 192: 159.
	- Kotikov, A. V. (1991). Differential equations method: New technique for massive Feynman diagrams calculation, Phys. Lett. B254: 158–164.
	- Remiddi, E. (1997). Differential equations for Feynman graph amplitudes, Nuovo Cim. A110: 1435–1452.
	- Tarasov, O. V. (1996). Connection between Feynman integrals having different values of the space-time dimension, Phys. Rev. D 54: 6479.
	- Baikov, P. A. (1997). Explicit solutions of the multiloop integral recurrence relations and its application., NIM in Phys. Res. A 389: 347.
	- Beneke, M. and Smirnov, V. A. (1998). Asymptotic expansion of Feynman integrals near threshold, Nucl. Phys. B 522: 321–344.
	- Laporta, S. (2000). High precision calculation of multiloop Feynman integrals by difference equations., Int. J. Mod. Phys. A 15: 5087.
	- Henn, J. M. (2013). Multiloop integrals in dimensional regularization made simple, Phys.Rev.Lett. 110(25): 251601.
	- Lee, R. N. (2015). Reducing differential equations for multiloop master integrals, JHEP 04 (2015) 108.
	- Lee, R. N. (2021). Libra: A package for transformation of differential systems for multiloop integrals, Comput. Phys. Commun. 267: 108058.

---

we write the Lagrangian as

$$\tag{1.1}
\begin{align}
\mathcal{L} & =\mathcal{L}_{\text{free}}+\mathcal{L}_{\text{int}}
\end{align}
$$

the Feynman rules can be read from the Lagrangian. it is useful to introduce the following parametrization

$$\tag{.}
\begin{align}
\frac{1}{\prod _{k}A^{n_{k}}_{k}} & =\frac{\Gamma\left( \sum _{k}n_{k} \right)}{\prod _{k}\Gamma(n_{k})}\int \prod _{k}\mathrm{d}x_{k} \frac{x_{k}^{n_{k}-1}}{\left( \sum _{k}A_{k}x_{k} \right)^{\sum n_{k}}}\delta\left( 1-\sum x_{k} \right)
\end{align}
$$

for example

$$\tag{.}
\begin{align}
\frac{1}{(p'-\ell)^{2}-m^{2}} \frac{1}{\ell ^{2}} \frac{1}{(p-\ell)^{2}-m^{2}} & =2\int \mathrm{d}z\mathrm{d}x  \frac{1}{(\ell ^{2}-2\ell(zp+\bar{z}p'))^{3}}
\end{align}
$$