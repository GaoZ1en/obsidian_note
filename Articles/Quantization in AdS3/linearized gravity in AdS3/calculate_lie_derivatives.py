
import sympy as sp

# Define coordinates
t, r, phi = sp.symbols('t r phi', real=True)
coords = [t, r, phi]

# Metric: ds^2 = -(1+r^2)dt^2 + dr^2/(1+r^2) + r^2 dphi^2
g_down = sp.diag(-(1+r**2), 1/(1+r**2), r**2)
g_up = g_down.inv()

# Define general symmetric tensor h^{mu nu}
# Components: h_tt, h_tr, h_tphi, h_rr, h_rphi, h_phiphi
# We use upper indices as requested: h^{mu nu}
h_tt = sp.Function('h^{tt}')(t, r, phi)
h_tr = sp.Function('h^{tr}')(t, r, phi)
h_tphi = sp.Function('h^{tphi}')(t, r, phi)
h_rr = sp.Function('h^{rr}')(t, r, phi)
h_rphi = sp.Function('h^{rphi}')(t, r, phi)
h_phiphi = sp.Function('h^{phiphi}')(t, r, phi)

h_up = sp.Matrix([
    [h_tt, h_tr, h_tphi],
    [h_tr, h_rr, h_rphi],
    [h_tphi, h_rphi, h_phiphi]
])

# Define Killing vectors
# xi_1
# xi_1 = 1/2 * e^{i(t-phi)} * ( r(1+r^2)^{-1/2} dt - i(1+r^2)^{1/2} dr - r^{-1}(1+r^2)^{1/2} dphi )
# Note: The expression in the file is for vector components, likely in coordinate basis partial_t, partial_r, partial_phi.
# Let's verify the basis from the text:
# xi_1 = 1/2 * e^{i(t-phi)} * ( r(1+r^2)^{-1/2} \partial_t - i(1+r^2)^{1/2} \partial_r - r^{-1}(1+r^2)^{1/2} \partial_\phi )

# Common factors
f1 = sp.sqrt(1+r**2)
phase = sp.exp(sp.I*(t-phi))
xi1_vec = sp.Matrix([
    0.5 * phase * r / f1,      # t component
    0.5 * phase * (-sp.I * f1), # r component
    0.5 * phase * (-f1 / r)    # phi component
])

# xi_0 = 1/2 (partial_t - partial_phi)
xi0_vec = sp.Matrix([0.5, 0, -0.5])

# xi_-1 = 1/2 * e^{-i(t-phi)} * ...
phase_minus = sp.exp(-sp.I*(t-phi))
xi_minus1_vec = sp.Matrix([
    0.5 * phase_minus * r / f1,
    0.5 * phase_minus * (sp.I * f1),
    0.5 * phase_minus * (-f1 / r)
])

# bar_xi_1
# bar_xi_1 = 1/2 * e^{i(t+phi)} * ( r(1+r^2)^{-1/2} \partial_t - i(1+r^2)^{1/2} \partial_r + r^{-1}(1+r^2)^{1/2} \partial_\phi )
bar_phase = sp.exp(sp.I*(t+phi))
bar_xi1_vec = sp.Matrix([
    0.5 * bar_phase * r / f1,
    0.5 * bar_phase * (-sp.I * f1),
    0.5 * bar_phase * (f1 / r)
])

# bar_xi_0 = 1/2 (partial_t + partial_phi)
bar_xi0_vec = sp.Matrix([0.5, 0, 0.5])

# bar_xi_-1
bar_phase_minus = sp.exp(-sp.I*(t+phi))
bar_xi_minus1_vec = sp.Matrix([
    0.5 * bar_phase_minus * r / f1,
    0.5 * bar_phase_minus * (sp.I * f1),
    0.5 * bar_phase_minus * (f1 / r)
])


def lie_derivative(tensor_up, vector_up, coords):
    """
    Computes Lie derivative of a rank-2 upper tensor h^{mu nu} along vector X^rho.
    (L_X h)^{mu nu} = X^rho \partial_rho h^{mu nu} - h^{rho nu} \partial_rho X^mu - h^{mu rho} \partial_rho X^nu
    """
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

# Calculate Lie derivatives
L_xi1_h = lie_derivative(h_up, xi1_vec, coords)
L_xi0_h = lie_derivative(h_up, xi0_vec, coords)
L_bar_xi1_h = lie_derivative(h_up, bar_xi1_vec, coords)
L_bar_xi0_h = lie_derivative(h_up, bar_xi0_vec, coords)

print("Calculating Lie derivatives...")

print("\n--- Lie_xi0 h ---")
# Simplify the expressions
for i in range(3):
    for j in range(i, 3):
        expr = sp.simplify(L_xi0_h[i,j])
        print(f"Component ({i},{j}):")
        print(expr)


print("\n--- Lie_bar_xi0 h ---")
for i in range(3):
    for j in range(i, 3):
        expr = sp.simplify(L_bar_xi0_h[i,j])
        print(f"Component ({i},{j}):")
        print(expr)
        
print("\n--- Lie_xi1 h ---")
for i in range(3):
    for j in range(i, 3):
        expr = sp.simplify(L_xi1_h[i,j])
        print(f"Component ({i},{j}):")
        print(expr)

print("\n--- Lie_bar_xi1 h ---")
for i in range(3):
    for j in range(i, 3):
        expr = sp.simplify(L_bar_xi1_h[i,j])
        print(f"Component ({i},{j}):")
        print(expr)
