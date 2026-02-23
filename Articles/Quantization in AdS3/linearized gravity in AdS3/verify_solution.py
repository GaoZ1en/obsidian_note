
import sympy as sp

# Define coordinates
t, r, phi = sp.symbols('t r phi', real=True)
coords = [t, r, phi]

# Metric: ds^2 = -(1+r^2)dt^2 + dr^2/(1+r^2) + r^2 dphi^2
# Diagonal metric
g_tt = -(1 + r**2)
g_rr = 1 / (1 + r**2)
g_pp = r**2

g_down = sp.diag(g_tt, g_rr, g_pp)
g_up = g_down.inv()

# Common terms
f1 = sp.sqrt(1 + r**2)
exp_iu = sp.exp(-sp.I * (t - phi)) # e^{-iu} for Left moving (t-phi)
exp_minus_2it = sp.exp(-2 * sp.I * t)
exp_i_t_plus_phi = sp.exp(sp.I * (t + phi))

# Vectors
# xi_1 (Right lowering?) - For checking annihilation of h_L
# xi_1 = 1/2 * e^i(t-phi) * ( r/f1 dt - i*f1 dr - f1/r dphi )
phase_xi1 = sp.exp(sp.I * (t - phi))
xi1_vec = sp.Matrix([
    0.5 * phase_xi1 * r / f1,
    0.5 * phase_xi1 * (-sp.I * f1),
    0.5 * phase_xi1 * (-f1 / r)
])

# bar_xi_1 (Left lowering?) - Used to construct h_L
# bar_xi_1 = 1/2 * e^i(t+phi) * ( r/f1 dt - i*f1 dr + f1/r dphi )
phase_bar_xi1 = sp.exp(sp.I * (t + phi))
bar_xi1_vec = sp.Matrix([
    0.5 * phase_bar_xi1 * r / f1,
    0.5 * phase_bar_xi1 * (-sp.I * f1),
    0.5 * phase_bar_xi1 * (f1 / r)
])

# xi_0 = 1/2 (dt - dphi)
xi0_vec = sp.Matrix([0.5, 0, -0.5])

# bar_xi_0 = 1/2 (dt + dphi)
bar_xi0_vec = sp.Matrix([0.5, 0, 0.5])


# Construct Primary State Ansatz h_L
# Based on Product of Vector states
# psi_L = (e^{-2it} / (1+r^2)) * bar_xi_1
psi_factor = exp_minus_2it / (1 + r**2)
psi_L_vec = psi_factor * bar_xi1_vec

# h_L_up = psi_L * psi_L.T (Outer product)
h_L_up = psi_L_vec * psi_L_vec.T

# Lie Derivative Function
def lie_derivative(tensor_up, vector_up, coords):
    dim = len(coords)
    result = sp.zeros(dim, dim)
    
    for mu in range(dim):
        for nu in range(dim):
            # Term 1: X^rho \partial_rho h^{mu nu}
            term1 = 0
            for rho in range(dim):
                term1 += vector_up[rho] * sp.diff(tensor_up[mu, nu], coords[rho])
            
            # Term 2: - h^{rho nu} \partial_rho X^mu
            term2 = 0
            for rho in range(dim):
                term2 += tensor_up[rho, nu] * sp.diff(vector_up[mu], coords[rho])
            
            # Term 3: - h^{mu rho} \partial_rho X^nu
            term3 = 0
            for rho in range(dim):
                term3 += tensor_up[mu, rho] * sp.diff(vector_up[nu], coords[rho])
                
            result[mu, nu] = term1 - term2 - term3
            
    return result

# Calculate Christoffel Symbols
print("Calculating Christoffel Symbols...")
dim = 3
Gamma = sp.MutableDenseNDimArray.zeros(3, 3, 3) # Gamma^rho_mu_nu
for rho in range(dim):
    for mu in range(dim):
        for nu in range(dim):
            sum_term = 0
            for sigma in range(dim):
                # 0.5 * g^rho_sigma * (d g_sigma_nu / d mu + d g_mu_sigma / d nu - d g_mu_nu / d sigma)
                term = sp.diff(g_down[sigma, nu], coords[mu]) + \
                       sp.diff(g_down[mu, sigma], coords[nu]) - \
                       sp.diff(g_down[mu, nu], coords[sigma])
                sum_term += 0.5 * g_up[rho, sigma] * term
            Gamma[rho, mu, nu] = sum_term

# Calculation Tasks

# 1. Verify Annihilation by xi_1 (L_xi1 h_L = 0)
print("\nVerifying L_xi1 h_L = 0...")
L_xi1_h = lie_derivative(h_L_up, xi1_vec, coords)
L_xi1_h_simp = sp.simplify(L_xi1_h)
if L_xi1_h_simp == sp.zeros(3,3):
    print(" Verified: L_xi1 h_L is ZERO.")
else:
    print(" Failed: L_xi1 h_L is NOT zero.")
    sp.pprint(L_xi1_h_simp)

# 2. Verify Left Weight (L_xi0 h_L = -2i h_L)
print("\nVerifying L_xi0 h_L = -2i h_L...")
L_xi0_h = lie_derivative(h_L_up, xi0_vec, coords)
diff_weight = sp.simplify(L_xi0_h - (-2 * sp.I * h_L_up))
if diff_weight == sp.zeros(3,3):
    print(" Verified: L_xi0 h_L = -2i h_L.")
else:
    print(" Failed: L_xi0 h_L != -2i h_L.")
    sp.pprint(diff_weight)

# 3. Verify Right Singlet (L_bar_xi0 h_L = 0, L_bar_xi1 h_L = 0)
print("\nVerifying L_bar_xi0 h_L = 0...")
L_bar_xi0_h = lie_derivative(h_L_up, bar_xi0_vec, coords)
if sp.simplify(L_bar_xi0_h) == sp.zeros(3,3):
    print(" Verified: L_bar_xi0 h_L is ZERO.")
else:
    print(" Failed.")

print("\nVerifying L_bar_xi1 h_L = 0...")
L_bar_xi1_h = lie_derivative(h_L_up, bar_xi1_vec, coords)
if sp.simplify(L_bar_xi1_h) == sp.zeros(3,3):
    print(" Verified: L_bar_xi1 h_L is ZERO.")
else:
    print(" Failed.")

# 4. Verify Trace (g_mn h^mn = 0)
print("\nVerifying Trace = 0...")
trace = 0
for mu in range(dim):
    for nu in range(dim):
        trace += g_down[mu, nu] * h_L_up[mu, nu]
if sp.simplify(trace) == 0:
    print(" Verified: Trace is ZERO.")
else:
    print(f" Failed: Trace is {sp.simplify(trace)}")

# 5. Verify Divergence (nabla_nu h^mu nu = 0)
print("\nVerifying Divergence = 0...")
div_vec = sp.zeros(3, 1)
for mu in range(dim):
    # nabla_nu h^mu nu = partial_nu h^mu nu + Gamma^mu_sig_nu h^sig nu + Gamma^nu_sig_nu h^mu sig
    val = 0
    for nu in range(dim):
        # partial
        val += sp.diff(h_L_up[mu, nu], coords[nu])
        # connection terms
        for sigma in range(dim):
            val += Gamma[mu, sigma, nu] * h_L_up[sigma, nu]
            val += Gamma[nu, sigma, nu] * h_L_up[mu, sigma]
    div_vec[mu] = sp.simplify(val)

if div_vec == sp.zeros(3, 1):
    print(" Verified: Divergence is ZERO.")
else:
    print(" Failed: Divergence is NOT zero.")
    sp.pprint(div_vec)

# 6. Print Components
print("\n--- Components of h_L (Upper) ---")
h_L_simp = sp.simplify(h_L_up)
for i in range(3):
    for j in range(i, 3):
        print(f"h^{i}{j} = {h_L_simp[i,j]}")

print("\n--- Components of h_L (Lower) ---")
# h_lower = g h_up g
h_L_down = g_down * h_L_up * g_down
h_L_down_simp = sp.simplify(h_L_down)
for i in range(3):
    for j in range(i, 3):
        print(f"h_{i}{j} = {h_L_down_simp[i,j]}")

