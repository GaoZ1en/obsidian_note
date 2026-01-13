from sympy import symbols, Function, dsolve, diff, simplify, hyperexpand, hyper, limit, log, series, gamma, digamma
from sympy.abc import z, m

def check_eq1():
    print("--- Analyzing f(z) (Eq 1) ---")
    # Eq: z(1-z)f'' - f' + (1/z - (m/2)**2/(1-z))f = 0
    # Singularities at z=0, z=1.
    print("Equation has regular singularities at z=0, z=1, z=inf")
    print("Indices at z=0: (1, 1). Solution involves log(z).")
    print("General solution near z=0: c1 * z + c2 * (z * log(z) + ...)")
    print("Indices at z=1: (m/2, -m/2). Solution behaves as (1-z)^(m/2) and (1-z)^(-m/2).")

def check_eq2():
    print("\n--- Analyzing Phi(z) (Eq 2) ---")
    # Eq: z(1-z)Phi'' - zPhi' + (1/(4z) - (nu/2)^2/(1-z))Phi = 0
    print("Indices at z=0: (1/2, 1/2). Solution involves log(z).")
    print("General solution near z=0: c1 * z^(1/2) + c2 * z^(1/2) * log(z).")
    print("Indices at z=1: (nu/2, -nu/2). Solution behaves as (1-z)^(nu/2) and (1-z)^(-nu/2).")

if __name__ == "__main__":
    check_eq1()
    check_eq2()
