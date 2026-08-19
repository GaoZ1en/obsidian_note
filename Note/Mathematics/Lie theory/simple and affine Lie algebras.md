# Chevalley-Serre Relations

The main purpose of this chapter is the classification of the finite-dimensional simple Lie algebras over $\displaystyle{\mathbb{C}}$, that yields immediately also the classification of the reductive Lie algebras over $\displaystyle{\mathbb{C}}$.

In order to classify finite-dimensional simple Lie algebras up to isomorphism, we only have to classify the possible Cartan subalgebras and root systems.

Note that in the Chevalley basis of a semi simple Lie algebra $\displaystyle{\mathfrak{g}}$ contains $\displaystyle{3r}$ generators $\displaystyle{\left\{E^{i}_{\pm},H^{i}|i=1,2,\dots,r\right\}}$. The Chevalley-Serre relations are given by

1. $\displaystyle{[H^{i},H^{j}]=0}$
1. $\displaystyle{[H^{i},E^{j}_{\pm}]=\pm A^{ji}E^{j}_{\pm},[E^{i}_{+},E^{j}_{-}]=\delta _{ij}H^{i}}$
1. $\displaystyle{(\mathrm{ad}_{E^{i}_{\pm}})^{1-A^{ji}}E^{j}_{\pm}=0}$

# Cartan Matrix

The only free parameters occurring in the Chevalley-Serre relations are the entries of the Cartan matrix, and the classification of simple Lie algebras therefore amounts to the classification of their Cartan matrices. Here we list some properties of Cartan matrices of simple Lie algebras

1. $\displaystyle{A^{ii}=2}$
1. $\displaystyle{A^{ij}=0\implies A^{ji}=0}$
1. $\displaystyle{A^{ij}=(\alpha ^{(i)},{\alpha ^{(j)}}^{\vee})\in \mathbb{Z}}$
1. $\displaystyle{A^{ij}=(\alpha ^{(i)},\alpha ^{(j)})\leqslant0\quad\forall i\neq j}$
1. $\displaystyle{\det A\neq0}$

In terms of the root system $\displaystyle{\Phi}$, the splitting of a semisimple Lie algebra $\displaystyle{\mathfrak{g}=\mathfrak{g}_{(1)}\oplus\dots \oplus \mathfrak{g}_{(n)}}$ into its simple summands $\displaystyle{\mathfrak{g}_{(p)}}$ is expressed through the fact that $\displaystyle{\Phi}$ can be written as the sum of irreducible subsystems $\displaystyle{\Phi _{(p)}}$. This restriction from semisimple to simple Lie algebras thus means that the Cartan matrix must be indecomposable in the sense that there is no renumbering of the simple roots which would bring $\displaystyle{A}$ to the block diagonal form. This implies $\displaystyle{\det A\neq0}$ can be strengthened to $\displaystyle{\det A>0}$.

# Dynkin Diagrams

The enumeration of all possible solutions to condition 1-5 listed above is a purely combinatorial procedure.

in order to describe the final result, it is convenient to introduce the notion of a Dynkin diagram: to each Cartan matrix one associates a diagram consisting of vertives and lines connecting them. rach vertex of the diagram representa a simple root; the vertices for $\displaystyle{\alpha ^{(i)}}$ and $\displaystyle{\alpha ^{(j)}}$ ($\displaystyle{i\neq j}$) are connected by $\displaystyle{\max\left\{|A^{ij}|,|A^{ji}|\right\}}$ lines (in particular, when the weight space is euclidean, which is precisely the case if $\displaystyle{\mathfrak{g}}$ is finite-dimensional and semisimple, then vertices connected by a single, double or triple bond correspond to simple roots spanning an angle of $\displaystyle{\frac{2}{3}\pi}$, $\displaystyle{\frac{3}{4}\pi}$ and $\displaystyle{\frac{5}{6}\pi}$, resp, while simple roots not connected by a line are mutually orthogonal). furthermore, and arrowhead is added to the lines from the $\displaystyle{i}$th to the $\displaystyle{j}$th node if $\displaystyle{A^{ij}\neq0}$ and $\displaystyle{|A^{ij}|>|A^{ji}|}$ (which is equivalent to $\displaystyle{(\alpha ^{(i)},\alpha ^{(i)})>(\alpha ^{(j)},\alpha ^{(j)})}$). alternatively, one may specify long roots by open dots and short roots by filled dots.

# Simple Lie Algebras

By utilizing the Dynkin diagram, simple Lie algebras can be classified into four infinite series

$$
\tag{4.1}
\begin{align}
A_{r}\,(r\geqslant1),\quad B_{r}\,(r\geqslant 3),\quad C_{r}\,(r\geqslant 2),\quad D_{r}\,(r\geqslant 4)
\end{align}
$$

and five isolated cases

$$
\tag{4.2}
\begin{align}
E_{6},\quad E_{7},\quad E_{8},\quad G_{2},\quad F_{4}
\end{align}
$$

![[Attachments/Pasted image 20250722110033.png]]

The algebras in the infinite series of simple Lie algebras are called the classical Lie algebras, and they are isomorphic to the matrix algebras that

$$
\tag{4.3}
\begin{align}
A_{r} & \cong \mathfrak{sl}(r+1,\mathbb{C}) \\
B_{r} & \cong \mathfrak{so}(2r+1,\mathbb{C}) \\
C_{r} & \cong \mathfrak{sp}(r,\mathbb{C}) \\
D_{r} & \cong \mathfrak{so}(2r,\mathbb{C})
\end{align}
$$

and the five isolated cases are referred to as the exceptional Lie algebras. The restrictions on the rank $\displaystyle{r}$ of the classical algebras are imposed to avoid double counting. In fact we have

$$
\tag{4.4}
\begin{align}
A_{1}\cong B_{1}\cong C_{1}\cong D_{1} \\
B_{2}\cong C_{2} \\
D_{2}\cong A_{1}\oplus A_{1} \\
D_{3}\cong A_{3}
\end{align}
$$

![[Attachments/Pasted image 20250722110849.png]]
