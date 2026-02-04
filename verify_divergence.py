
import sympy
from sympy import symbols, diff, log, series, oo

r = symbols('r', real=True, positive=True)
omega, m = symbols('omega m')
Ct, Cp, Cr = symbols('C_t C_phi C_r') # Coefficients for Log terms or leading terms

# Metric
g_tt = -(1 + r**2)
g_rr = 1 / (1 + r**2)
g_pp = r**2
sqrt_g = r # approx

# Inverse
inv_g_tt = 1/g_tt
inv_g_rr = 1/g_rr
inv_g_pp = 1/g_pp

# Ansatz with Logs
# Note implies A^t ~ r^-2 log r could be the divergent cause.
# Let's parameterize: A^t = - C_t * r**(-2) * log(r)  (So A_t ~ C_t log r)
# A^phi = C_phi * r**(-2) * log(r) (So A_phi ~ C_phi log r)
# A^r = O(r^-1 log r) -> doesn't contribute to leading div as checked before?

# Let's do exact substitution
At_up = -Ct * r**(-2) * log(r)
Ap_up = Cp * r**(-2) * log(r) 
Ar_up = Cr * r**(-1) * log(r)

# Covariant
At_dn = g_tt * At_up
Ap_dn = g_pp * Ap_up
Ar_dn = g_rr * Ar_up

# Field Strength (only r-derivatives dominate for div check)
# F_tr = - dA_t/dr - i w A_r 
# F_rp = dA_p/dr - i m A_r
# F_tp = - i w A_p - i m A_t

dAt_dr = diff(At_dn, r)
dAp_dr = diff(Ap_dn, r)

# F_tr approx -dAt/dr
# F_rp approx dAp/dr
# F_tp approx const

F_tr = -dAt_dr - 1j * omega * Ar_dn
F_rp = dAp_dr - 1j * m * Ar_dn
F_tp = -1j * omega * Ap_dn - 1j * m * At_dn

# Contraction F^2
# term_tr = |F_tr|^2 g^tt g^rr ~ |F_tr|^2 * (-1)
# term_rp = |F_rp|^2 g^rr g^pp ~ |F_rp|^2 * (1)
# term_tp = |F_tp|^2 g^tt g^pp ~ |Const|^2 * r^-4 -> small

F_sq_density = sqrt_g * (
    2 * inv_g_tt * inv_g_rr * F_tr * sympy.conjugate(F_tr) +
    2 * inv_g_tt * inv_g_pp * F_tp * sympy.conjugate(F_tp) + 
    2 * inv_g_rr * inv_g_pp * F_rp * sympy.conjugate(F_rp)
)

print("Leading term of Density:")
try:
    s = series(F_sq_density, r, oo, n=4)
    print(s)
except:
    print("Series failed")

print("Manual leading term check:")
# F_tr ~ dAt_dr ~ -Ct/r * (-2 log r + 1) approx Ct * 2 log r / r ?
# At_up = -Ct * r**(-2) * log(r).
# At_dn = -(1+r^2) * (-Ct r^-2 log r) ~ Ct log r.
# dAt/dr ~ Ct/r.

# F_rp ~ dAp/dr.
# Ap_dn ~ Cp log r.
# dAp/dr ~ Cp/r.

# F^2 ~ -|Ct/r|^2 + |Cp/r|^2 = (-|Ct|^2 + |Cp|^2)/r^2
# Density ~ r * F^2 ~ (-|Ct|^2 + |Cp|^2)/r.

pass
leading = series(F_sq_density, r, oo, n=1).removeO()
print("Leading coefficient expression:")
print(leading)
