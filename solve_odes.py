from sympy import symbols, Function, dsolve, diff, simplify, hyper
from sympy.abc import z, a, b, c, m

# Define functions
f = Function('f')(z)
Phi = Function('Phi')(z)

# Equation 1
# 4z(1-z)f'' - 4f' + (4/z - m**2/(1-z))f = 0
# Divide by 4: z(1-z)f'' - f' + (1/z - (m/2)**2/(1-z))f = 0
eq1 = z*(1-z)*diff(f, z, 2) - diff(f, z) + (1/z - (m/2)**2/(1-z))*f

# Equation 2
# 4z(1-z)Phi'' - 4zPhi' + (1/z - m_pm**2/(1-z))Phi = 0
# Let m_pm be denoted by nu * 2 for simplicity or just another symbol
mu = symbols('mu') # representing m_pm
# Divide by 4: z(1-z)Phi'' - zPhi' + (1/(4*z) - (mu/2)**2/(1-z))Phi = 0
eq2 = z*(1-z)*diff(Phi, z, 2) - z*diff(Phi, z) + (1/(4*z) - (mu/2)**2/(1-z))*Phi

print("Solving Eq 1...")
# We expect solutions of form z^alpha (1-z)^beta 2F1(...)
try:
    sol1 = dsolve(eq1, f)
    print("Solution 1 found:")
    print(sol1)
except Exception as e:
    print(f"Eq 1 failed: {e}")

print("\nSolving Eq 2...")
try:
    sol2 = dsolve(eq2, Phi)
    print("Solution 2 found:")
    print(sol2)
except Exception as e:
    print(f"Eq 2 failed: {e}")
