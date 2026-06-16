# Thermal AdS4 heat-kernel computation of scalar, vector and TT-tensor characters

This note computes the thermal one-loop partition functions on Euclidean thermal AdS4 and extracts the one-particle traces

$$
Z_1(\beta,\alpha)=\mathrm{Tr}_{\mathcal H_1}\,e^{-\beta H+i\alpha J_3}.
$$

The convention is AdS radius $L=1$,

$$
q=e^{-\beta},\qquad y=e^{i\alpha},
$$

and

$$
D(q,y)=(1-q)(1-qy)(1-qy^{-1}).
$$

The spin-$S$ $SO(3)$ character is

$$
\chi_S(y)=\sum_{m=-S}^{S}y^m
=\frac{\sin\big((S+\tfrac12)\alpha\big)}{\sin(\alpha/2)}.
$$

Explicitly,

$$
\chi_0=1,
\qquad
\chi_1=y+1+y^{-1},
\qquad
\chi_2=y^2+y+1+y^{-1}+y^{-2}.
$$

The heat-kernel computation below gives the thermal, $\beta$-dependent part. The $n=0$ image is the usual AdS-volume divergence / vacuum Casimir term and is dropped. Thus no Casimir-energy prefactor is included.

---

## 1. Thermal quotient and traced heat kernel

Euclidean thermal AdS4 is the quotient of $H^4$ by

$$
(t_E,\phi)\sim (t_E+\beta,\phi+\alpha).
$$

For a symmetric transverse traceless spin-$S$ field, the traced heat kernel on the quotient, with the identity image omitted, can be written as

$$
K_S(t;\beta,\alpha)
=
\frac{\beta}{\sqrt{\pi t}}
\sum_{n=1}^{\infty}
\frac{
 e^{-\frac{n^2\beta^2}{4t}}
 e^{-t(S+\frac94)}
 e^{-\frac32 n\beta}
 \chi_S(y^n)
}{
(1-q^n)(1-q^ny^n)(1-q^ny^{-n})
}.
$$

At zero angular potential this reduces to the common AdS4 expression

$$
K_S(t;\beta,0)
=
\frac{\beta(2S+1)}{8\sqrt{\pi t}}
\sum_{n=1}^{\infty}
\frac{
 e^{-\frac{n^2\beta^2}{4t}}
 e^{-t(S+\frac94)}
}{\sinh^3(n\beta/2)}.
$$

Indeed,

$$
\frac{e^{-\frac32 n\beta}}{(1-e^{-n\beta})^3}
=
\frac{1}{8\sinh^3(n\beta/2)}.
$$

For a bosonic determinant

$$\begin{align}
Z_{S,M}^{\mathrm{bos}} & =ig[\det(-\nabla ^{2}+M^{2})_{S}]^{-1/2} \\
\end{align}$$

we use

$$
\log Z_{S,M}^{\rm bos}
=\frac12\int_0^\infty \frac{dt}{t}\,K_S(t;\beta,\alpha)e^{-tM^2}.
$$

The proper-time integral needed is

$$
\int_0^\infty dt\,t^{-3/2}
\exp\left[-\frac{n^2\beta^2}{4t}-a^2t\right]
=
\frac{2\sqrt\pi}{n\beta}e^{-n\beta a}.
$$

Hence, if

$$
a=\sqrt{M^2+S+\frac94},
\qquad
\Delta=\frac32+a,
$$

then

$$
\boxed{
\log Z^{\rm long}_{\Delta,S}(\beta,\alpha)
=
\sum_{n=1}^{\infty}\frac1n
g_{\Delta,S}(n\beta,n\alpha)
}
$$

with one-particle trace

$$
\boxed{
 g_{\Delta,S}(\beta,\alpha)
=
\frac{q^\Delta\chi_S(y)}{D(q,y)}.
}
$$

This is the heat-kernel derivation of the positive-energy highest-weight character of the long module $\mathcal V(\Delta,S)$.

---

## 2. Scalar

For a scalar,

$$
O_0=-\nabla^2+\mu^2,
\qquad
M^2=\mu^2,
$$

and

$$
\Delta=\frac32+\sqrt{\frac94+\mu^2},
\qquad
\mu^2=\Delta(\Delta-3).
$$

Therefore the massive scalar one-particle trace is

$$
\boxed{
Z_{1,\phi}^{\rm massive}(\beta,\alpha)
=
\frac{q^\Delta}{D(q,y)}.
}
$$

The thermal one-loop partition function is

$$
\boxed{
\log Z_{\phi}^{\rm massive}
=
\sum_{n=1}^{\infty}\frac1n
\frac{q^{n\Delta}}{(1-q^n)(1-q^ny^n)(1-q^ny^{-n})}.
}
$$

For a massless scalar with standard normalizable boundary condition,

$$
\mu^2=0,
\qquad
\Delta=3.
$$

Thus

$$
\boxed{
Z_{1,\phi}^{\rm massless,std}
=
\frac{q^3}{D(q,y)},
}
$$

and

$$
\boxed{
\log Z_{\phi}^{\rm massless,std}
=
\sum_{n=1}^{\infty}\frac1n
\frac{q^{3n}}{(1-q^n)(1-q^ny^n)(1-q^ny^{-n})}.
}
$$

The other formal root $\Delta=0$ is the non-normalizable source branch for the standard scalar problem and is not included in the normalizable Hilbert space.

---

## 3. Vector

### 3.1 Massive Proca / transverse spin-one module

For the transverse vector sector,

$$
O_1^T=-\nabla^2-3+\mu^2,
\qquad
M^2=\mu^2-3.
$$

The Proca mass and highest weight obey

$$
\mu^2=(\Delta-1)(\Delta-2),
\qquad
\Delta=\frac32+\sqrt{\frac14+\mu^2}.
$$

Then

$$
M^2+1+\frac94
=\mu^2+\frac14
=\left(\Delta-\frac32\right)^2.
$$

Therefore

$$
\boxed{
Z_{1,A}^{\rm massive}(\beta,\alpha)
=
\frac{q^\Delta\chi_1(y)}{D(q,y)}
=
\frac{q^\Delta(y+1+y^{-1})}{D(q,y)}.
}
$$

and

$$
\boxed{
\log Z_A^{\rm massive}
=
\sum_{n=1}^{\infty}\frac1n
\frac{q^{n\Delta}\chi_1(y^n)}{(1-q^n)(1-q^ny^n)(1-q^ny^{-n})}.
}
$$

### 3.2 Massless Maxwell field

The transverse Maxwell operator is

$$
O_1^{T,\rm Max}=-\nabla^2-3,
$$

which corresponds to

$$
S=1,
\qquad
M^2=-3,
\qquad
\Delta=2.
$$

The gauge/longitudinal quotient contributes a scalar ghost/Jacobian determinant with operator

$$
O_0^{\rm gh}=-\nabla^2,
\qquad
\Delta_{\rm gh}=3,
\qquad
S_{\rm gh}=0.
$$

Thus the physical Maxwell module is the short representation

$$
\mathcal H_{\rm Max}=\mathcal V(2,1)/\mathcal V(3,0),
$$

and the one-particle trace is

$$
\boxed{
Z_{1,A}^{\rm Max}(\beta,\alpha)
=
\frac{q^2\chi_1(y)-q^3\chi_0(y)}{D(q,y)}
=
\frac{q^2(y+1+y^{-1})-q^3}{D(q,y)}.
}
$$

The full thermal one-loop answer is the plethystic exponential:

$$
\boxed{
\log Z_A^{\rm Max}
=
\sum_{n=1}^{\infty}\frac1n
\frac{q^{2n}\chi_1(y^n)-q^{3n}}{(1-q^n)(1-q^ny^n)(1-q^ny^{-n})}.
}
$$

Equivalently,

$$
\log Z_A^{\rm Max}
=
\log Z^{\rm long}_{\Delta=2,S=1}
-
\log Z^{\rm long}_{\Delta=3,S=0}.
$$

This subtraction is the heat-kernel version of the gauge quotient. It is not the $\Delta=1$ residual-gauge/source branch.

---

## 4. Symmetric TT tensor

### 4.1 Massive TT tensor / massive spin two

The transverse-traceless spin-two equation is

$$
(\nabla^2+2-\mu^2)h_{\mu\nu}=0,
\qquad
\nabla^\mu h_{\mu\nu}=0,
\qquad
h^\mu{}_{\mu}=0.
$$

The TT determinant uses

$$
O_2^{TT}=-\nabla^2-2+\mu^2,
\qquad
M^2=\mu^2-2.
$$

The highest-weight relation is

$$
\mu^2=\Delta(\Delta-3),
\qquad
\Delta=\frac32+\sqrt{\frac94+\mu^2}.
$$

Then

$$
M^2+2+\frac94
=\mu^2+\frac94
=\left(\Delta-\frac32\right)^2.
$$

So the massive TT tensor one-particle trace is

$$
\boxed{
Z_{1,h}^{\rm massive}(\beta,\alpha)
=
\frac{q^\Delta\chi_2(y)}{D(q,y)}
=
\frac{q^\Delta(y^2+y+1+y^{-1}+y^{-2})}{D(q,y)}.
}
$$

and

$$
\boxed{
\log Z_h^{\rm massive}
=
\sum_{n=1}^{\infty}\frac1n
\frac{q^{n\Delta}\chi_2(y^n)}{(1-q^n)(1-q^ny^n)(1-q^ny^{-n})}.
}
$$

### 4.2 Massless graviton / massless TT tensor

The raw massless TT branch has

$$
O_2^{TT,\rm grav}=-\nabla^2-2,
\qquad
S=2,
\qquad
M^2=-2,
\qquad
\Delta=3.
$$

Before gauge quotient, it contributes

$$
Z_{1,h}^{\rm raw\ TT}
=
\frac{q^3\chi_2(y)}{D(q,y)}.
$$

The linearized diffeomorphism ghost is a transverse vector with operator

$$
O_1^{T,\rm gh}=-\nabla^2+3,
\qquad
S=1,
\qquad
M^2=3,
\qquad
\Delta_{\rm gh}=4.
$$

Therefore the physical massless graviton module is

$$
\mathcal H_{\rm grav}=\mathcal V(3,2)/\mathcal V(4,1),
$$

and the one-particle trace is

$$
\boxed{
Z_{1,h}^{\rm grav}(\beta,\alpha)
=
\frac{q^3\chi_2(y)-q^4\chi_1(y)}{D(q,y)}.
}
$$

Explicitly,

$$
\boxed{
Z_{1,h}^{\rm grav}(\beta,\alpha)
=
\frac{
q^3(y^2+y+1+y^{-1}+y^{-2})
-q^4(y+1+y^{-1})
}{D(q,y)}.
}
$$

The thermal one-loop partition function is

$$
\boxed{
\log Z_h^{\rm grav}
=
\sum_{n=1}^{\infty}\frac1n
\frac{q^{3n}\chi_2(y^n)-q^{4n}\chi_1(y^n)}{(1-q^n)(1-q^ny^n)(1-q^ny^{-n})}.
}
$$

This is the heat-kernel form of the short-module quotient. The subtracted module is the level-one spin-one null/gauge submodule $\mathcal V(4,1)$, not any three components of the level-zero spin-two quintet.

---

## 5. Summary table

Let

$$
D_n=(1-q^n)(1-q^ny^n)(1-q^ny^{-n}).
$$

| field | one-particle trace $Z_1(\beta,\alpha)$ | one-loop thermal $\log Z$ |
|---|---:|---:|
| massive scalar | $\dfrac{q^\Delta}{D(q,y)}$ | $\sum_{n\ge1}\dfrac1n\dfrac{q^{n\Delta}}{D_n}$ |
| massless scalar, standard | $\dfrac{q^3}{D(q,y)}$ | $\sum_{n\ge1}\dfrac1n\dfrac{q^{3n}}{D_n}$ |
| massive vector | $\dfrac{q^\Delta\chi_1(y)}{D(q,y)}$ | $\sum_{n\ge1}\dfrac1n\dfrac{q^{n\Delta}\chi_1(y^n)}{D_n}$ |
| Maxwell | $\dfrac{q^2\chi_1(y)-q^3}{D(q,y)}$ | $\sum_{n\ge1}\dfrac1n\dfrac{q^{2n}\chi_1(y^n)-q^{3n}}{D_n}$ |
| massive TT spin two | $\dfrac{q^\Delta\chi_2(y)}{D(q,y)}$ | $\sum_{n\ge1}\dfrac1n\dfrac{q^{n\Delta}\chi_2(y^n)}{D_n}$ |
| massless graviton | $\dfrac{q^3\chi_2(y)-q^4\chi_1(y)}{D(q,y)}$ | $\sum_{n\ge1}\dfrac1n\dfrac{q^{3n}\chi_2(y^n)-q^{4n}\chi_1(y^n)}{D_n}$ |

---

## 6. Unrefined check $\alpha=0$

At $y=1$,

$$
D(q,1)=(1-q)^3,
\qquad
\chi_0(1)=1,
\qquad
\chi_1(1)=3,
\qquad
\chi_2(1)=5.
$$

Thus

$$
Z_{1,\phi}^{\rm massive}(q)=\frac{q^\Delta}{(1-q)^3},
$$

$$
Z_{1,A}^{\rm massive}(q)=\frac{3q^\Delta}{(1-q)^3},
\qquad
Z_{1,A}^{\rm Max}(q)=\frac{3q^2-q^3}{(1-q)^3},
$$

$$
Z_{1,h}^{\rm massive}(q)=\frac{5q^\Delta}{(1-q)^3},
\qquad
Z_{1,h}^{\rm grav}(q)=\frac{5q^3-3q^4}{(1-q)^3}.
$$

The high-energy numerator counts are

$$
3-1=2
\quad\text{for Maxwell},
\qquad
5-3=2
\quad\text{for the massless graviton}.
$$

This matches the flat-space helicity count in the high-energy/short-wavelength limit.

---

## 7. SymPy verification

The following SymPy script checks the proper-time integral, the unrefined heat-kernel denominator identity, the mass-$\Delta$ relations, and the unrefined Maxwell/graviton reductions.

```python
import sympy as sp

# Proper-time identity
# Integral: ∫_0^∞ dt t^{-3/2} exp[-b^2/(4t)-a^2 t]
t, a, b = sp.symbols('t a b', positive=True)
I = sp.integrate(
    t**(-sp.Rational(3, 2))*sp.exp(-b**2/(4*t) - a**2*t),
    (t, 0, sp.oo)
)
proper_time_check = sp.simplify(I - 2*sp.sqrt(sp.pi)/b*sp.exp(-a*b))

# Denominator identity at alpha=0
beta = sp.symbols('beta', positive=True)
den_check = sp.simplify(
    sp.exp(-sp.Rational(3, 2)*beta)/(1-sp.exp(-beta))**3
    - 1/(8*sp.sinh(beta/2)**3)
)

# Characters and denominators
q, y = sp.symbols('q y')
D = (1-q)*(1-q*y)*(1-q/y)
chi1 = y + 1 + 1/y
chi2 = y**2 + y + 1 + 1/y + 1/y**2

Z_Max = (q**2*chi1 - q**3)/D
Z_grav = (q**3*chi2 - q**4*chi1)/D

maxwell_unrefined_check = sp.simplify(
    Z_Max.subs(y, 1) - (3*q**2 - q**3)/(1-q)**3
)
gravity_unrefined_check = sp.simplify(
    Z_grav.subs(y, 1) - (5*q**3 - 3*q**4)/(1-q)**3
)

# Mass-Delta relations
Delta = sp.symbols('Delta')
scalar_relation = sp.expand(
    (Delta-sp.Rational(3,2))**2
    - (Delta*(Delta-3)+sp.Rational(9,4))
)
vector_relation = sp.expand(
    (Delta-sp.Rational(3,2))**2
    - ((Delta-1)*(Delta-2)+sp.Rational(1,4))
)
tensor_relation = sp.expand(
    (Delta-sp.Rational(3,2))**2
    - (Delta*(Delta-3)+sp.Rational(9,4))
)

print('proper_time_check =', proper_time_check)
print('den_check =', den_check)
print('scalar_relation =', scalar_relation)
print('vector_relation =', vector_relation)
print('tensor_relation =', tensor_relation)
print('maxwell_unrefined_check =', maxwell_unrefined_check)
print('gravity_unrefined_check =', gravity_unrefined_check)
print('Z_Max series =', sp.series(Z_Max.subs(y,1), q, 0, 9))
print('Z_grav series =', sp.series(Z_grav.subs(y,1), q, 0, 9))
```

Output:

```text
proper_time_check = 0
den_check = 0
scalar_relation = 0
vector_relation = 0
tensor_relation = 0
maxwell_unrefined_check = 0
gravity_unrefined_check = 0
Z_Max series = 3*q**2 + 8*q**3 + 15*q**4 + 24*q**5 + 35*q**6 + 48*q**7 + 63*q**8 + O(q**9)
Z_grav series = 5*q**3 + 12*q**4 + 21*q**5 + 32*q**6 + 45*q**7 + 60*q**8 + O(q**9)
```

---

## 8. References used for conventions

- S. Giombi, A. Maloney, X. Yin, *One-loop Partition Functions of 3D Gravity*, arXiv:0804.1773. This is the heat-kernel/method-of-images style reference.
- R. Gopakumar, R. K. Gupta, S. Lal, *The Heat Kernel on AdS*, arXiv:1103.3627. This generalizes the heat-kernel machinery to thermal AdS backgrounds and arbitrary spin.
- S. Shahidi et al., *Modified gravity one-loop partition function*, EPJC 78, 2018. Section 4 gives the unrefined AdS4 traced heat-kernel expression used here as the $\alpha=0$ check.
- The highest-weight module and mass-$\Delta$ relations are taken from the uploaded note `Killing algebra.pdf`.
