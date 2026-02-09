
import sympy
from sympy import jacobi, symbols, simplify, gamma, hyper
from sympy.abc import x, beta

def verify():
    print("Verifying Jacobi Polynomials P_n^(-k, beta)(x) for n < k")
    
    # Test case 1: n = 1, k = 2 => alpha = -2
    # n < k is satisfied (1 < 2)
    n1 = 1
    k1 = 2
    alpha1 = -2
    
    print(f"\nCase 1: n={n1}, alpha={alpha1} (k={k1})")
    try:
        p1 = jacobi(n1, alpha1, beta, x)
        print(f"Sympy jacobi({n1}, {alpha1}, beta, x) = {p1}")
        print(f"Simplified: {simplify(p1)}")
    except Exception as e:
        print(f"Sympy raised error: {e}")

    # Manual Hypergeometric construction
    # P_n^(alpha, beta)(x) = (alpha+1)_n / n! * 2F1(-n, n+alpha+beta+1; alpha+1; (1-x)/2)
    # (alpha+1)_n = gamma(alpha+1+n)/gamma(alpha+1)
    
    # Using explicit product for Pochhammer to avoid gamma limit issues if any
    def pochhammer_prod(a, n_val):
        res = 1
        for i in range(n_val):
            res *= (a + i)
        return res

    poch = pochhammer_prod(alpha1 + 1, n1)
    print(f"Pochhammer(alpha+1, n) = {poch}")
    
    # Hypergeometric sum
    # sum_{j=0}^n ...
    def hyper_sum(n_val, alpha_val, beta_val, x_sym):
        val = 0
        z = (1 - x_sym) / 2
        for j in range(n_val + 1):
            term = (pochhammer_prod(-n_val, j) * pochhammer_prod(n_val + alpha_val + beta_val + 1, j)) / \
                   (pochhammer_prod(alpha_val + 1, j) * sympy.factorial(j)) * z**j
            val += term
        return val

    try:
        manual_p1 = (poch / sympy.factorial(n1)) * hyper_sum(n1, alpha1, beta, x)
        print(f"Manual polynomial construction: {simplify(manual_p1)}")
    except Exception as e:
        print(f"Manual construction error: {e}")

    # Test case 2: n = 2, k = 4 => alpha = -4
    # n < k (2 < 4)
    n2 = 2
    alpha2 = -4
    print(f"\nCase 2: n={n2}, alpha={alpha2}")
    try:
        p2 = jacobi(n2, alpha2, beta, x)
        print(f"Sympy jacobi: {simplify(p2)}")
    except Exception as e:
        print(f"Error: {e}")

if __name__ == "__main__":
    verify()
