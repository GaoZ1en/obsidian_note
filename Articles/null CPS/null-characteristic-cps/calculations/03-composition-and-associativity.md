# Composition and Associativity

## 1. The Naive Reduction Is False as Written

The formula

$$
P_X\stackrel{?}{\simeq}(P_{N_+}\times P_{N_-})//G(S_0)
\tag{1.1}
$$

omits corner configuration compatibility. The moment-map equation enforces electric matching, but it does not by itself enforce

$$
F^+_{AB}|_{S_0}=F^-_{AB}|_{S_0}
\tag{1.2}
$$

or

$$
\bar a_-^0-\bar a_+^0+d_S\lambda_{\mathrm{rel}}=0.
\tag{1.3}
$$

Therefore (1.1) contains pairs of null data that cannot be restrictions of one smooth bulk connection.

## 2. Corrected Symplectic Relation

Let $P_{N_\pm}^{\mathrm{ext}}$ denote the two sheet prephase spaces with their endpoint frames. Define the compatibility locus

$$
\mathcal C_{S_0}=
\left\{
\begin{array}{l|l}
(x_+,x_-,\lambda)
&E_+^0=E_-^0,\\
&b_+^0=b_-^0,\\
&\bar a_-^0-\bar a_+^0+d_S\lambda=0
\end{array}
\right\}.
\tag{2.1}
$$

For a local contractible cut and regular Abelian action,

$$
\boxed{
P_X\simeq\mathcal C_{S_0}/G_{\mathrm{diag}}(S_0).}
\tag{2.2}
$$

Equivalently, electric matching may be imposed as Marsden--Weinstein reduction and the remaining equations as a fiber-product restriction:

$$
P_X\simeq
\left[
(P_{N_+}^{\mathrm{ext}}\times P_{N_-}^{\mathrm{ext}})//_{0}G_{\mathrm{diag}}(S_0)
\right]_{\mathrm{magnetic/connection\ compatible}}.
\tag{2.3}
$$

This is a symplectic relation because not every independently chosen pair of sheet data lies in its domain.

## 3. Why Magnetic Matching Is Not the Same Moment Map

The diagonal scalar gauge action shifts the two corner frames. Its Hamiltonian contraction sees electric flux because the Maxwell symplectic potential pairs longitudinal gauge variation with $*F|_S$. Magnetic matching instead states that two connection representatives define the same curvature on the shared cut. Without enlarging the symmetry group by an independent dual potential, it is not the moment map of the same $G(S_0)$ action.

Thus the claim “the moment map is oriented electric-flux matching” is correct, but the claim “that moment map alone completes composition” is false.

## 4. Three-Segment Composition

Consider three characteristic pieces with corner frames $\chi_1,\chi_2,\chi_3$. Define

$$
\lambda_{12}=\chi_2-\chi_1,
\qquad
\lambda_{23}=\chi_3-\chi_2.
\tag{4.1}
$$

Then

$$
\boxed{\lambda_{13}=\chi_3-\chi_1=\lambda_{12}+\lambda_{23}.}
\tag{4.2}
$$

Electric matching is transitive:

$$
E_1=E_2,\qquad E_2=E_3
\quad\Longrightarrow\quad
E_1=E_3.
\tag{4.3}
$$

Connection compatibility is also transitive:

$$
\bar a_2-\bar a_1+d\lambda_{12}=0,
\qquad
\bar a_3-\bar a_2+d\lambda_{23}=0
$$

implies

$$
\bar a_3-\bar a_1+d\lambda_{13}=0.
\tag{4.4}
$$

## 5. Associativity Proposition

For Abelian $U(1)$, smooth regular constraint levels and compatible endpoint policies,

$$
(P_1\circ P_2)\circ P_3\simeq P_1\circ(P_2\circ P_3).
\tag{5.1}
$$

**Proof.** The two internal diagonal gauge actions commute. Their moment maps are the two adjacent flux differences. Imposing both zero levels gives the same common-flux locus in either order. Quotienting by the product of commuting gauge groups is order independent. Equations (4.2)--(4.4) show that the surviving relational frame and connection compatibility agree. $\square$

This is a formal smooth associativity theorem. It does not establish that infinite-dimensional quotients are Hausdorff, that constraint ranges are closed in a chosen Sobolev completion, or that non-Abelian stabilizer strata associate without derived corrections.

## 6. Orientation Check

If a segment is viewed from the opposite side of a cut, both its oriented electric flux and its endpoint contribution change sign. The matching equation is therefore more invariantly

$$
E_{\perp,1}+E_{\perp,2}=0
\tag{6.1}
$$

with outward normals, and $E_1=E_2$ in the common double-null coordinate convention. Mixing these two statements is the main source of false sign disagreements.

## 7. Failure Modes

- Reducing the unrestricted product without (1.2)--(1.3) admits non-reconstructible data.
- Dropping future endpoint terms while retaining the initial corner pair changes the symplectic form.
- Quotienting the relative frame after already fixing $E$ may erase a chosen superselection label; the phase-space policy must be stated first.
- For $H^1(S)\neq0$, the scalar composition law misses harmonic transition data.
