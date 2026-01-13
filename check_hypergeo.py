from sympy import symbols, Function, diff, simplify
from sympy.abc import z, m

# Define generic variables
F = Function('F')(z)

# Eq 1
# z(1-z)f'' - f' + (1/z - (m/2)**2/(1-z))f = 0
# Ansatz f = z * (1-z)**(m/2) * F
mu = m/2
f_ansatz = z * (1-z)**mu * F
eq1_lhs = z*(1-z)*diff(f_ansatz, z, 2) - diff(f_ansatz, z) + (1/z - mu**2/(1-z))*f_ansatz
# We want to see if eq1_lhs / (prefactor) is hypergeometric equation
# Prefactor is z * (1-z)**mu
norm1 = simplify(eq1_lhs / (z * (1-z)**mu))
print("Eq 1 reduced:")
print(norm1)

# Eq 2
# z(1-z)Phi'' - zPhi' + (1/(4*z) - (nu/2)**2/(1-z))Phi = 0
# Ansatz Phi = z**(1/2) * (1-z)**(nu/2) * F
nu = symbols('nu') # m_pm
Phi_ansatz = z**(1/2) * (1-z)**(nu/2) * F
eq2_lhs = z*(1-z)*diff(Phi_ansatz, z, 2) - z*diff(Phi_ansatz, z) + (1/(4*z) - (nu/2)**2/(1-z))*Phi_ansatz
norm2 = simplify(eq2_lhs / (z**(1/2) * (1-z)**(nu/2)))
print("\nEq 2 reduced:")
print(norm2)
