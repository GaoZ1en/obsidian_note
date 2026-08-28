# Extended Sheet Prephase Spaces

This note describes the Layer-L finite-cross polarization. The anchored and
unanchored constructions are different open-region phase spaces; neither is
used to define the global energy topology of $X_\infty$.

## 1. Raw sheet variables

The raw potential variables on each sheet are

$$
(A_v,a_A;E,r_A)\quad\text{on }N_+,
\qquad
(A_u,a_A;E,p_A)\quad\text{on }N_-.
$$

They obey the Maxwell/Bianchi transport constraints but are not gauge reduced.
The incoming two-forms obtained from calculation 01 are

$$
\Omega_{N_+}
=\int_{N_+}\left(\delta E\wedge\delta A_v
+\delta r^A\wedge\delta A_A\right),
\tag{1.1}
$$

$$
\Omega_{N_-}
=\int_{N_-}\left(-\delta E\wedge\delta A_u
+\delta p^A\wedge\delta A_A\right).
\tag{1.2}
$$

These are prephase forms.  Their kernels are meaningful only after the allowed
endpoints, constraints, and gauge parameters are declared.

To keep the later quotient notation unambiguous, write

$$
\widetilde{\mathcal P}_{N_\pm}^{\mathrm{ext}}
$$

for these raw sheet prephase spaces and define

$$
\mathcal P_{N_\pm}^{\mathrm{ext}}
:=\widetilde{\mathcal P}_{N_\pm}^{\mathrm{ext}}/
\mathcal G_{\pm,\mathrm{proper}}.
\tag{1.3}
$$

Thus the displayed kernel theorem is proved on the raw compatibility locus,
whereas the compact formula

$$
\mathcal C_X^{\mathrm{ext}}//\mathcal G_{\mathrm{diag}}
\simeq\mathcal X_F^{\mathrm{comp}}
$$

uses the sheet-proper-reduced product
$\mathcal P_{N_+}^{\mathrm{ext}}\times
\mathcal P_{N_-}^{\mathrm{ext}}$.  No proper-gauge dimension is counted twice.

## 2. Dressed sheet variables

Use

$$
A_v=\partial_v\alpha_+,
\qquad \bar a_+=a-d_S\alpha_+,
\qquad \partial_v\bar a_+=r,
\tag{2.1}
$$

$$
A_u=\partial_u\alpha_-,
\qquad \bar a_-=a-d_S\alpha_-,
\qquad \partial_u\bar a_-=p.
\tag{2.2}
$$

The extended sheet data retain

$$
(r,E_+,b_+;\bar a_+,\alpha_+)
\quad\text{and}\quad
(p,E_-,b_-;\bar a_-,\alpha_-),
\tag{2.3}
$$

with outer endpoint policy fixed as in calculation 00.  This is not an
autonomous null-sheet phase space: it is a presentation of characteristic
data with endpoint frames.

## 3. Corner variables and compatibility

At $S_0$, define

$$
\chi_\pm=\alpha_\pm|_{S_0},
\qquad
\lambda_{\mathrm{rel}}=\chi_--\chi_+.
$$

The full corner compatibility locus imposes

$$
E_+^0-E_-^0=0,
\tag{3.1}
$$

$$
b_+^0-b_-^0=0,
\tag{3.2}
$$

$$
\bar a_-^0-\bar a_+^0+d_S\lambda_{\mathrm{rel}}=0,
\tag{3.3}
$$

$$
d_S\bar a_\pm^0=b_\pm^0.
\tag{3.4}
$$

Only (3.1) is the moment-map equation of the displayed diagonal scalar-frame
action.  Equations (3.2)--(3.4) define the remaining fiber product.

On $S^2$, (3.3)--(3.4) imply (3.2).  Keeping (3.2) as a separate row is useful
for auditing magnetic matching, but it does not increase the constraint rank.
For a cut with $H^1(S)\neq0$, (3.3) would require additional harmonic/holonomy
data and the present simplification would fail.

## 4. Diagonal action and relative frame

The diagonal action is

$$
\chi_+\mapsto\chi_++\eta,
\qquad
\chi_-\mapsto\chi_-+\eta.
\tag{4.1}
$$

From the corner potential

$$
\Theta_{S_0}
=-\int E_+^0\,\delta\chi_+
+\int E_-^0\,\delta\chi_-,
$$

one obtains

$$
\iota_{X_\eta}\Omega_{S_0}
=\delta\int_{S_0}\eta(E_+^0-E_-^0).
\tag{4.2}
$$

Thus $\mu=E_+^0-E_-^0$.  On $\mu=0$, quotienting the common frame leaves

$$
\Theta_{S_0}^{\mathrm{red}}
=\int_{S_0}E_0\,\delta\lambda_{\mathrm{rel}},
\qquad
\Omega_{S_0}^{\mathrm{red}}
=\int_{S_0}\delta E_0\wedge\delta\lambda_{\mathrm{rel}}.
\tag{4.3}
$$

Equation (4.3) does not decide whether $\lambda_{\mathrm{rel}}$ is independent.
That is fixed by the outer endpoint and connection policy.

## 5. Anchored versus unanchored prephase spaces

### 5.1 Anchored intrinsic presentation

Fix the outer exact parts of $\bar a_+(V)$ and $\bar a_-(U)$.  Then integration
of (2.1)--(2.2) determines both exact corner coefficients from $r^E,p^E$, and
(3.3) determines $\lambda_{\mathrm{rel}}$ by (5.2) of calculation 00.  The
remaining common frame is precisely (4.1).  After diagonal reduction no frame
coordinate remains beyond $\mathcal X_F$.

The pullback of (4.3) becomes a field-strength expression

$$
\Omega_{S_0}^{\mathrm{red}}
=\sum_{\ell m}\delta E_{0,\ell m}\wedge
\delta\left[
\frac{\int p^E_{\ell m}-\int r^E_{\ell m}}
{\sqrt{\lambda_\ell}}
\right].
\tag{5.1}
$$

It is a polarization term inside the same physical data, not an extra
oscillator.

### 5.2 Unanchored extended presentation

If the two outer exact anchors are variables, (3.3) determines only a
combination of their difference and $\lambda_{\mathrm{rel}}$.  The reduced
space retains charged boundary coordinates.  The forgetful map to
$\mathcal X_F$ has nontrivial fibers.  On variable-flux sectors these fibers
are not presymplectic kernels because of (4.3).

Therefore

$$
\left(\mathcal C_X^{\mathrm{ext}}//G_{\mathrm{diag}}\right)
\simeq\mathcal X_F^{\mathrm{comp}}
$$

is `false` for the unanchored space and `proved` at finite cutoff for the
anchored space.

## 6. Kernel statement

Let $\iota_{\mathcal C}$ denote inclusion of the anchored compatibility locus.
The kernel claim concerns
$\iota_{\mathcal C}^*\Omega_{N_+\times N_-}^{\mathrm{ext}}$, not the unrestricted
ambient product.  At finite harmonic and generator cutoff,

$$
\boxed{
\ker\iota_{\mathcal C}^*\Omega_{\mathrm{ext}}
=\mathfrak g_{+,\mathrm{proper}}
\oplus\mathfrak g_{-,\mathrm{proper}}
\oplus\mathfrak g_{\mathrm{diag}}.}
\tag{6.1}
$$

The proof is the direct-sum decomposition into a full-rank matched (E/B)
master block and the three declared gauge blocks.  Calculation 03 gives the
finite matrix and calculation 04 proves that the physical block is precisely
the Maxwell field-strength block.

The rapid-core analogue is `proved` in calculation 05: the compatibility
operator is continuous, its kernel is closed, and the canonical Maxwell lift
gives a continuous complement to the closed proper-plus-diagonal gauge image.
