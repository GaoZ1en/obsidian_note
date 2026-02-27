
import sympy as sp

# Define coordinates
t, r, phi = sp.symbols('t r phi', real=True)
coords = [t, r, phi]

# Metric
g_down = sp.diag(-(1+r**2), 1/(1+r**2), r**2)
g_up = g_down.inv()

# Common factors
f1 = sp.sqrt(1+r**2)
# Using user's notation for xi_1 and bar_xi_1
# xi_1 = 1/2 * e^{i(t-phi)} * ( ... )
phase_xi1 = sp.exp(sp.I*(t-phi))
xi1_vec = sp.Matrix([
    0.5 * phase_xi1 * r / f1,
    0.5 * phase_xi1 * (-sp.I * f1),
    0.5 * phase_xi1 * (-f1 / r)
])

# bar_xi_1 = 1/2 * e^{i(t+phi)} * ( ... )
phase_bar_xi1 = sp.exp(sp.I*(t+phi))
bar_xi1_vec = sp.Matrix([
    0.5 * phase_bar_xi1 * r / f1,
    0.5 * phase_bar_xi1 * (-sp.I * f1),
    0.5 * phase_bar_xi1 * (f1 / r)
])

# Vector field Ansatz A_{L,0}^mu = e^{-2it}/(1+r^2) * xi_1^mu (Using xi_1 as per text)
# Wait, user used xi_1 for A_L_0?
# Text says: A_{L,0} ~ xi_1. Let's check L_xi0 A_{L,0}.
# xi_0 = 1/2 (dt - dphi)
xi0_vec = sp.Matrix([0.5, 0, -0.5])
# bar_xi_0 = 1/2 (dt + dphi)
bar_xi0_vec = sp.Matrix([0.5, 0, 0.5])

# Ansatz
factor = sp.exp(-2*sp.I*t) / (1+r**2)
A_vec = factor * xi1_vec

def lie_derivative_vector(vector_to_diff, vector_field, coords):
    dim = len(coords)
    result = sp.zeros(dim, 1)
    # L_X Y = [X, Y] = X^nu d_nu Y^mu - Y^nu d_nu X^mu
    for mu in range(dim):
        term1 = 0
        term2 = 0
        for nu in range(dim):
            term1 += vector_field[nu] * sp.diff(vector_to_diff[mu], coords[nu])
            term2 += vector_to_diff[nu] * sp.diff(vector_field[mu], coords[nu])
        result[mu] = term1 - term2
    return result

# Check weights
# L_xi0 A = ?
L_xi0_A = lie_derivative_vector(A_vec, xi0_vec, coords)
# We expect L_xi0 A = -i h A ? Or -i A ?
# If A has weight h, L_L0 A = -h A (in some conventions, usually L0 ~ -i L_xi0)
# Let's just calculate the factor.
print("Checking L_xi0 A / A ...")
ratio = sp.simplify(L_xi0_A[0] / A_vec[0])
print(f"Ratio 0: {ratio}")

L_bar_xi0_A = lie_derivative_vector(A_vec, bar_xi0_vec, coords)
print("Checking L_bar_xi0 A / A ...")
ratio_bar = sp.simplify(L_bar_xi0_A[0] / A_vec[0])
print(f"Ratio bar 0: {ratio_bar}")

# Check Graviton Ansatz
# h_L = A * A
h_up = A_vec * A_vec.T

def lie_derivative(tensor_up, vector_up, coords):
    dim = len(coords)
    result = sp.zeros(dim, dim)
    for mu in range(dim):
        for nu in range(dim):
            term1 = 0
            for rho in range(dim):
                term1 += vector_up[rho] * sp.diff(tensor_up[mu, nu], coords[rho])
            term2 = 0
            for rho in range(dim):
                term2 += tensor_up[rho, nu] * sp.diff(vector_up[mu], coords[rho])
            term3 = 0
            for rho in range(dim):
                term3 += tensor_up[mu, rho] * sp.diff(vector_up[nu], coords[rho])
            result[mu, nu] = term1 - term2 - term3
    return result

L_xi0_h = lie_derivative(h_up, xi0_vec, coords)
print("Checking L_xi0 h / h ...")
ratio_h = sp.simplify(L_xi0_h[0,0] / h_up[0,0])
print(f"Ratio h 00: {ratio_h}")

L_bar_xi0_h = lie_derivative(h_up, bar_xi0_vec, coords)
print("Checking L_bar_xi0 h / h ...")
ratio_h_bar = sp.simplify(L_bar_xi0_h[0,0] / h_up[0,0])
print(f"Ratio h bar 00: {ratio_h_bar}")
