here we follow the logic of the first section of [[Articles/Noether charge/Brackets|Brackets]]. we introduce the Virasoro generators

$$\tag{1.1}
\begin{align}
L_{n} & =\frac{1}{2}Q_{A_{n}}+\frac{1}{2}Q_{B_{n}}+\frac{i}{2}Q_{C_{n}}-\frac{i}{2}Q_{D_{n}}+\frac{1}{16G}\delta_{n,0} \\
\bar{L}_{n} & =\frac{1}{2}Q_{A_{n}}-\frac{1}{2}Q_{B_{n}}+\frac{i}{2}Q_{C_{n}}+\frac{i}{2}Q_{D_{n}}+\frac{1}{16G}\delta_{n,0}
\end{align}
$$

we will verify that $\displaystyle{L_{n}}$ and $\displaystyle{\bar{L}_{n}}$ satisfy the Virasoro algebra

$$\tag{1.2}
\begin{align}
\left\{L_{m},L_{n}\right\} & =-i(m-n)L_{m+n}+\frac{1}{8G}m(m^{2}-1)\delta_{m,-n} \\
\left\{\bar{L}_{m},\bar{L}_{n}\right\} & =-i(m-n)\bar{L}_{m+n}+\frac{1}{8G}m(m^{2}-1)\delta_{m,-n} \\
\left\{L_{m},\bar{L}_{n}\right\} & =0
\end{align}
$$

$$\tag{1.3}
\begin{align}
\left\{L_{m},L_{n}\right\} & =\left\{\frac{1}{2}Q_{A_{m}}+\frac{1}{2}Q_{B_{m}}+\frac{i}{2}Q_{C_{m}}-\frac{i}{2}Q_{D_{m}}+\frac{1}{16G}\delta_{n,0}, \frac{1}{2}Q_{A_{n}}+\frac{1}{2}Q_{B_{n}}+\frac{i}{2}Q_{C_{n}}-\frac{i}{2}Q_{D_{n}}+\frac{1}{16G}\delta_{n,0}\right\} \\
 & =\frac{1}{4}\left\{Q_{A_{m}},Q_{A_{n}}\right\}+\frac{1}{4}\left\{Q_{A_{m}},Q_{B_{n}}\right\}+\frac{i}{4}\left\{Q_{A_{m}},Q_{C_{n}}\right\}-\frac{i}{4}\left\{Q_{A_{m}},Q_{D_{n}}\right\} \\
 & +\frac{1}{4}\left\{Q_{B_{m}},Q_{A_{n}}\right\}+\frac{1}{4}\left\{Q_{B_{m}},Q_{B_{n}}\right\}+\frac{i}{4}\left\{Q_{B_{m}},Q_{C_{n}}\right\}-\frac{i}{4}\left\{Q_{B_{m}},Q_{D_{n}}\right\} \\
 & +\frac{i}{4}\left\{Q_{C_{m}},Q_{A_{n}}\right\}+\frac{i}{4}\left\{Q_{C_{m}},Q_{B_{n}}\right\}-\frac{1}{4}\left\{Q_{C_{m}},Q_{C_{n}}\right\}+\frac{1}{4}\left\{Q_{C_{m}},Q_{D_{n}}\right\} \\
 & -\frac{i}{4}\left\{Q_{D_{m}},Q_{A_{n}}\right\}-\frac{i}{4}\left\{Q_{D_{m}},Q_{B_{n}}\right\}+\frac{1}{4}\left\{Q_{D_{m}},Q_{C_{n}}\right\}-\frac{1}{4}\left\{Q_{D_{m}},Q_{D_{n}}\right\} \\
 & =\frac{1}{8}(m-n)Q_{A_{m+n}}+\frac{1}{8}(m-n)Q_{A_{m-n}}-\frac{1}{8}(m-n)Q_{B_{m+n}}-\frac{1}{8}(m+n)Q_{B_{m-n}} \\
 & -\frac{i}{8}(m-n)Q_{A_{m+n}}+\frac{i}{8}(m+n)Q_{A_{m-n}}+\frac{i}{32G}(\delta_{m,n}-\delta_{m,-n})-\frac{i}{8}(m-n)Q_{B_{m+n}}+\frac{i}{8}(m+n)Q_{B_{m-n}} \\
 & -\frac{1}{8}(m-n)Q_{D_{m+n}}-\frac{1}{8}(m+n)Q_{D_{m-n}}+\frac{1}{8}(m-n)Q_{C_{m+n}}+\frac{1}{8}(m+n)Q_{C_{m-n}} \\
 & -\frac{i}{8}(m-n)Q_{B_{m+n}}+\frac{i}{8}(m+n)Q_{B_{m-n}}-\frac{i}{8}(m-n)Q_{A_{m+n}}+\frac{i}{8}(m+n)Q_{A_{m-n}}+\frac{i}{32G}m^{3}(\delta_{m,n}-\delta_{m,-n}) \\
 & -\frac{i}{8}(m-n)Q_{A_{m+n}}-\frac{i}{8}(m+n)Q_{A_{m-n}}-\frac{i}{32G}m^{3}(\delta_{m,n}+\delta_{m,-n})-\frac{i}{8}(m-n)Q_{B_{m+n}}-\frac{i}{8}(m+n)Q_{B_{m-n}} \\
 & +\frac{1}{8}(m-n)Q_{C_{m+n}}-\frac{1}{8}(m+n)Q_{C_{m-n}}-\frac{1}{8}(m-n)Q_{D_{m+n}}+\frac{1}{8}(m+n)Q_{D_{m-n}} \\
 & -\frac{i}{8}(m-n)Q_{B_{m+n}}-\frac{i}{8}(m+n)Q_{B_{m-n}}-\frac{i}{8}(m-n)Q_{A_{m+n}}-\frac{i}{8}(m+n)Q_{A_{m-n}}-\frac{i}{32G}m^{3}(\delta_{m+n}+\delta_{m,-n}) \\
 & -\frac{1}{8}(m-n)Q_{D_{m+n}}+\frac{1}{8}(m+n)Q_{D_{m-n}}+\frac{1}{8}(m-n)Q_{C_{m+n}}-\frac{1}{8}(m-n)Q_{C_{m-n}} \\
 & =-i(m-n)L_{m+n}-\frac{i}{8}m(m^{2}-1)\delta_{m,-n}
\end{align}
$$

after a similar calculation, we have

$$\tag{1.4}
\begin{align}
\left\{\bar{L}_{m},\bar{L}_{n}\right\} & =-i(m-n)\bar{L}_{m+n}-\frac{i}{8}m(m^{2}-1)\delta_{m,-n} \\
\left\{L_{m},\bar{L}_{n}\right\} & =0
\end{align}
$$

here we present some topic of CFT for better understanding the above calculation.


