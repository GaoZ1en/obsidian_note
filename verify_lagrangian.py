
import sympy
from sympy import symbols, Function, diff, sqrt, series, limit, oo, log, expand

t, r, phi = symbols('t r phi')
omega, m = symbols('omega m')

g_tt = -(1 + r**2)
g_rr = 1 / (1 + r**2)
g_pp = r**2
sqrt_g = r

inv_g_tt = 1/g_tt
inv_g_rr = 1/g_rr
inv_g_pp = 1/g_pp

# Case 1
c_t, c_r, c_p = symbols('c_t c_r c_p')
At_up = c_t * r**(-2)
Ar_up = c_r * r**(-1) * log(r)
Ap_up = c_p * r**(-2)

At_dn = g_tt * At_up
Ar_dn = g_rr * Ar_up
Ap_dn = g_pp * Ap_up

dAt_dr = diff(At_dn, r)
dAr_dr = diff(Ar_dn, r)
dAp_dr = diff(Ap_dn, r)

F_tr_term = -1j * omega * Ar_dn - dAt_dr
F_tp_term = -1j * omega * Ap_dn - 1j * m * At_dn
F_rp_term = dAp_dr - 1j * m * Ar_dn

term1 = inv_g_tt * inv_g_rr * F_tr_term * sympy.conjugate(F_tr_term)
term2 = inv_g_tt * inv_g_pp * F_tp_term * sympy.conjugate(F_tp_term)
term3 = inv_g_rr * inv_g_pp * F_rp_term * sympy.conjugate(F_rp_term)

Lagrangian = term1 * 2 + term2 * 2 + term3 * 2
ActionDensity = sqrt_g * Lagrangian

print("Case 1 (Power Law A^t ~ r^-2):")
try:
    print(series(ActionDensity, r, oo, n=4))
except:
    print("Expansion failed")

# Case 2: Log
c_t_log, c_p_log = symbols('c_t_log c_p_log')
# Assume log term in covariant A_t
At_dn_log = c_t_log * log(r)
Ap_dn_log = c_p_log * log(r)
Ar_dn_log = c_r * r**(-3) * log(r)

dAt_dr_log = diff(At_dn_log, r)
dAp_dr_log = diff(Ap_dn_log, r)
dAr_dr_log = diff(Ar_dn_log, r) 

F_tr_log = -1j * omega * Ar_dn_log - dAt_dr_log
F_tp_log = -1j * omega * Ap_dn_log - 1j * m * At_dn_log
F_rp_log = dAp_dr_log - 1j * m * Ar_dn_log

term1_log = inv_g_tt * inv_g_rr * F_tr_log * sympy.conjugate(F_tr_log)
term2_log = inv_g_tt * inv_g_pp * F_tp_log * sympy.conjugate(F_tp_log)
term3_log = inv_g_rr * inv_g_pp * F_rp_log * sympy.conjugate(F_rp_log)

print("\nCase 2 (Log r):")
print("Term 1 (tr) * sqrt(g):", series(sqrt_g * 2 * term1_log, r, oo, n=4))
print("Term 2 (tp) * sqrt(g):", series(sqrt_g * 2 * term2_log, r, oo, n=4))
print("Term 3 (rp) * sqrt(g):", series(sqrt_g * 2 * term3_log, r, oo, n=4))
